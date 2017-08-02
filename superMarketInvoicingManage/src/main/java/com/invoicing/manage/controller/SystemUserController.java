package com.invoicing.manage.controller; 

import java.util.HashMap;
import java.util.Map;

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
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.SystemUserEntity;
import com.invoicing.manage.request.UserRequestEntity;
import com.invoicing.manage.service.SystemUserService;
import com.snailf.platforms.common.entity.PageInfo;
 
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
	public ResponseEntity addSystemUser(SystemUserEntity SystemUserEntity){
		logger.debug("新建用户，传入参数为："+JSON.toJSONString(SystemUserEntity));
		ResponseEntity result = null;
		logger.debug("新建用户，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-1){
			result.setCode(0);
		}
		return result;
		
	}
	
	/**
	 * goToUserUpdate 用户编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToUserUpdate(){
		String url="/system/user/user_update";
		return new ModelAndView(url);
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
	public ResponseEntity updateSystemUser(SystemUserEntity SystemUserEntity){
		logger.debug("编辑用户，传入参数为："+JSON.toJSONString(SystemUserEntity));
		ResponseEntity result = null;
		logger.debug("编辑用户，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-1){
			result.setCode(0);
		}
		if(result.getCode()==-2){
			result.setCode(0);
		}
		return result;
		
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
	public ResponseEntity delSystemUser(SystemUserEntity SystemUserEntity){
		logger.debug("删除用户，传入参数为："+JSON.toJSONString(SystemUserEntity));
		ResponseEntity result = null;
		logger.debug("删除用户，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-2){
			result.setCode(0);
		}
		return result;
	}

}
