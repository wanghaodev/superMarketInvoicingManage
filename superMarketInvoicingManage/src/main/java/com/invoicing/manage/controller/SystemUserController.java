package com.invoicing.manage.controller; 

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.invoicing.manage.comment.entity.ErrorResponseEntity;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.SystemUserEntity;
import com.invoicing.manage.entity.SystemUserRoleEntity;
import com.invoicing.manage.request.UserRequestEntity;
import com.invoicing.manage.service.SystemUserRoleService;
import com.invoicing.manage.service.SystemUserService;
import com.invoicing.manage.util.StringUtil;
import com.invoicing.manage.comment.entity.PageInfo;
 
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
@RequestMapping("/invoicing/system/user")
public class SystemUserController {
	private static Logger logger=LoggerFactory.getLogger(SystemUserController.class);
	
	@Autowired
	private SystemUserService systemUserService;
	
	@Autowired
	private SystemUserRoleService systemUserRoleService;
	
	
	/**
	 * goToUserList 用户列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView goToUserList(){
		String url="/system/user/user_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getSystemUserEntityList 获取用户列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getSystemUserList(UserRequestEntity userRequestEntity,ModelMap modelMap){
		logger.debug("method [getSystemUserEntityList] 查询用户列表，请求参数："+JSON.toJSONString(userRequestEntity));
		PageInfo<SystemUserEntity> pageInfo=new PageInfo<SystemUserEntity>();
		pageInfo.setPageNo(userRequestEntity.getPageNo());
		pageInfo.setPageSize(userRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		params.put("userName", userRequestEntity.getUserName());
		params.put("phone", userRequestEntity.getPhone());
		PageInfo<SystemUserEntity> userList = systemUserService.getSystemUserPageList(pageInfo, params);
		logger.debug("method [getSystemUserEntityList] 查询用户列表，返回结果为："+JSON.toJSONString(userList));
		ResponseEntity res=new ResponseEntity();
		res.setData(userList);
		return res;
		
	}
	
	/**
	 * goToUserAdd 用户添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToUserAdd(){
		String url="/system/user/user_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addSystemUserEntity 新建用户
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addSystemUser(SystemUserEntity systemUserEntity){
		logger.debug("新建用户，传入参数为："+JSON.toJSONString(systemUserEntity));
		try {
			int res= systemUserService.insertSystemUser(systemUserEntity);
			logger.debug("新建用户，返回结果为："+JSON.toJSONString(res));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("新建用户异常,{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	/**
	 * goToUserUpdate 用户编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToUserUpdate(@RequestParam Long userId,ModelMap modelMap){
		String url="/system/user/user_update";
		if(null!=userId.toString()){
			SystemUserEntity userEntity=systemUserService.getSystemUser(userId);
			modelMap.put("user", userEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateSystemUserEntity 修改用户
	 * @param SystemUserEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateSystemUser(SystemUserEntity systemUserEntity){
		try {
			int res= systemUserService.updateSystemUser(systemUserEntity);
			logger.debug("编辑用户，返回结果为："+JSON.toJSONString(res));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("编辑用户异常,{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView goToUserDetail(){
		String url="/system/user/user_detail";
		return new ModelAndView(url);
	}
	
	/**
	 * delSystemUserEntity 删除用户
	 * @param SystemUserEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delSystemUser(@RequestParam Long id){
		try {
			SystemUserEntity userEntity=new SystemUserEntity();
			userEntity.setId(id);
			userEntity.setState(0);
			int res= systemUserService.updateSystemUser(userEntity);
			logger.debug("删除用户，返回结果为："+JSON.toJSONString(res));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("删除用户异常,{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	/**
	 * goToUserRole 到用户角色维护页面
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value="/role",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView goToUserRole(Long userId,ModelMap modelMap){
		String url="/system/user/user_role";
		logger.info("method [goToUserRole],请求参数：{}",userId);
		SystemUserEntity userEntity=systemUserService.getSystemUser(userId);
		logger.info("method [goToUserRole],返回结果：{}",JSON.toJSON(userEntity));
		Map<String,Object> queryParam=new HashMap<String,Object>();
		queryParam.put("userId", userId);
		SystemUserRoleEntity userRole=systemUserRoleService.getUserRole(queryParam);
		modelMap.put("user", userEntity);
		if(null!=userRole){
			modelMap.put("roleId", userRole.getRoleId());
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * savaUserRole 保存用户角色配置方法
	 * @param param
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value="/role",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity savaUserRole(@RequestParam  Map<String,Object> param){
		try {
			logger.info("method [savaUserRole],请求参数：{}",param);
			if(null!=param.get("userId")&&null!=param.get("roleId")){
				//根据角色ID和用户ID查询用户角色关联表，若存在则做更新操作，若不存则做插入操作
				Map<String,Object> queryParam=new HashMap<String,Object>();
				queryParam.put("userId", param.get("userId"));
				SystemUserRoleEntity queryUserRoleResult=systemUserRoleService.getUserRole(queryParam);
				if(StringUtil.isNotNull(queryUserRoleResult)){
					SystemUserRoleEntity updateUserRole=new SystemUserRoleEntity();
					updateUserRole.setId(queryUserRoleResult.getId());
					updateUserRole.setUserId(Long.valueOf(param.get("userId").toString()));
					updateUserRole.setRoleId(Long.valueOf(param.get("roleId").toString()));
					systemUserRoleService.updateByPrimaryKeySelective(updateUserRole);
				}else{
					SystemUserRoleEntity insertUserRole=new SystemUserRoleEntity();
					insertUserRole.setUserId(Long.valueOf(param.get("userId").toString()));
					insertUserRole.setRoleId(Long.valueOf(param.get("roleId").toString()));
					systemUserRoleService.insertSelective(insertUserRole);
				}
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("用户角色插入异常！",e);
			return new ErrorResponseEntity("系统异常");
		}
	}

}
