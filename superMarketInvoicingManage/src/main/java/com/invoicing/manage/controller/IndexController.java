package com.invoicing.manage.controller; 

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.invoicing.manage.request.UserRequestEntity;
import com.invoicing.manage.service.SystemUserService;
 
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
@RequestMapping("/invoicing/manager/")
public class IndexController {
	private static Logger logger=LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private SystemUserService systemUserService;
	
	
	/**
	 * toLogin 跳转到登录页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/to/login", method = RequestMethod.GET)
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
	public ModelAndView loginPost(HttpServletRequest req,ModelMap modelMap) {
		String defaultLoginName="admin";
		String defaultPassWord="1";
		String loginName=req.getParameter("loginName");
		String password=req.getParameter("password");
		if(null!=loginName||null!=password){
			logger.info("请输入用户或密码");
			modelMap.put("info", "登录名不存在");
			return new ModelAndView("/login");
		}else{
			//登录账号验证	
			if(!defaultLoginName.equals(loginName)){
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
			return new ModelAndView("/index");
		}
		
	}
	
	@RequestMapping(value = "/logOut", method = RequestMethod.POST)
	 public ModelAndView logOut(UserRequestEntity userRequestEntity){
		String url="/login";
		return new ModelAndView(url);
		
	}
	
	

}
