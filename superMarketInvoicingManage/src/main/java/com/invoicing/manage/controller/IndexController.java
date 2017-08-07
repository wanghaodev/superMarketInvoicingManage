package com.invoicing.manage.controller; 

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.invoicing.manage.entity.SystemAuthorityEntity;
import com.invoicing.manage.request.UserRequestEntity;
import com.invoicing.manage.respose.UserResponse;
import com.invoicing.manage.service.SystemAuthorityService;
import com.invoicing.manage.service.SystemUserService;
import com.invoicing.manage.util.StringUtil;
 
/** 
 * 类名: SystemUserController   
 * 类描述: TODO.  用户管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing")
public class IndexController {
	private static Logger logger=LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private SystemUserService systemUserService;
	@Autowired
	private SystemAuthorityService systemAuthorityService;
	
	
	/**
	 * toLogin 跳转到登录页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView toLogin(){
		String url="/login";
		return new ModelAndView(url);
	}
		
	/**
	 * login 登录方法
	 * @param userRequestEntity
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(HttpServletRequest request, HttpSession session,ModelMap modelMap) {
		String defaultLoginName="admin";
		String defaultPassWord="1";
		String loginName=request.getParameter("loginName");
		String password=request.getParameter("password");
		if(null==loginName||null==password){
			logger.info("请输入用户或密码");
			modelMap.put("info", "登录名不存在");
			return new ModelAndView("/login");
		}else{
			//查询用户登录信息
			Map<String,Object> queryMap=new HashMap<String,Object>();
			queryMap.put("loginName", loginName);
			UserResponse userInfo = systemUserService.getUserByLoginName(queryMap);
			//判断用户是否存在
			if(StringUtil.isNull(userInfo)){
				logger.info("登录名不存在。");
				modelMap.put("info", "登录名不存在");
				return new ModelAndView("/login");
			}
			//登录密码验证
			if(!defaultPassWord.equals(password)){
				modelMap.put("info", "密码错误");
				return new ModelAndView("/login");
			}
			
			//权限分配
			UserResponse userLoginInfo=new UserResponse();
			userLoginInfo.setUserName(userInfo.getUserName());
			userLoginInfo.setRoleName(userInfo.getRoleName());
			userLoginInfo.setRoleId(userInfo.getRoleId());
			modelMap.put("userLoginInfo", userLoginInfo);
			session.setAttribute("userLoginInfo", userLoginInfo);
			if(StringUtil.isNotEmpty(userLoginInfo.getUserName())){
				logger.info("当前登录用户："+userLoginInfo.getUserName());
				return new ModelAndView("/index");
			}else{
				logger.info("用户未登录");
				modelMap.put("info", "用户未登录");
				return new ModelAndView("/login");
			}
			
		}
		
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	 public ModelAndView logOut(UserRequestEntity userRequestEntity,HttpSession session){
		logger.info("method [logOut],退出系统，并将当前用户信息从session中删除。");
		session.removeAttribute("userLoginInfo");
		logger.info("method [removeAttribute],移除后查询session结果：[]",session.getAttribute("userLoginInfo"));
		return new ModelAndView("/login");
		
	}
	
	/**
	 * loadMenuList 加载菜单方法
	 * @param menuList
	 * @return 返回类型为 List<SystemAuthorityEntity>
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/loadMenuList", method = RequestMethod.POST)
	@ResponseBody
	private Object loadMenuList(HttpSession session){
		UserResponse userLoginInfo=(UserResponse) session.getAttribute("userLoginInfo");
		logger.info("从session中获取登录信息 ，{}",JSON.toJSON(userLoginInfo));
		//logger.info("获取角色ID："+roleId);
		//加载菜单...
		List<SystemAuthorityEntity> queryMenuRestult=systemAuthorityService.getAuthMenuList(Long.valueOf(userLoginInfo.getRoleId()));
		List<SystemAuthorityEntity> mainMenuList=new ArrayList<SystemAuthorityEntity>();
		List<SystemAuthorityEntity> sonMenuList=new ArrayList<SystemAuthorityEntity>();
		logger.info(queryMenuRestult.size()+"");
		for(SystemAuthorityEntity aut:queryMenuRestult){
			
			if(String.valueOf(aut.getpId()).equals("0")){
				SystemAuthorityEntity menu=new SystemAuthorityEntity();
				menu.setId(aut.getId());
				menu.setpId(aut.getpId());
				menu.setName(aut.getName());
				menu.setUrl(aut.getUrl());
				menu.setIconClass(aut.getIconClass());
				mainMenuList.add(menu);
			}else{
				SystemAuthorityEntity sonMenu=new SystemAuthorityEntity();
				sonMenu.setId(aut.getId());
				sonMenu.setpId(aut.getpId());
				sonMenu.setName(aut.getName());
				sonMenu.setUrl(aut.getUrl());
				sonMenu.setIconClass(aut.getIconClass());
				sonMenuList.add(sonMenu);
			}
		}
		JSONObject jsonObject=new JSONObject();
		if(queryMenuRestult.size()>0){
			jsonObject.put("mainMenuList", mainMenuList);
			jsonObject.put("sonMenuList", sonMenuList);
			jsonObject.put("code", 1);
		}else{
			jsonObject.put("code", 1);
		}
		logger.info("菜单加载,"+jsonObject);
		return jsonObject;
		
	}
	
	

}
