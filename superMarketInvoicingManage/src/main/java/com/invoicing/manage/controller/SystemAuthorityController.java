package com.invoicing.manage.controller; 

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.SystemAuthorityEntity;
import com.invoicing.manage.request.UserRequestEntity;
import com.invoicing.manage.service.SystemAuthorityService;
import com.snailf.platforms.common.entity.PageInfo;
 
/** 
 * 类名: SystemAuthorityController   
 * 类描述: TODO.  权限菜单管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/system/authority")
public class SystemAuthorityController {
	private static Logger logger=LoggerFactory.getLogger(SystemAuthorityController.class);
	
	@Autowired
	private SystemAuthorityService systemAuthorityService;
	
	
	/**
	 * goToUserList 权限菜单列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView goToUserList(){
		String url="/system/authority/authority_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getSystemAuthorityEntityList 获取权限菜单列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getSystemAuthorityList(UserRequestEntity authorityRequestEntity){
		logger.debug("method [getSystemAuthorityEntityList] 查询权限菜单列表，请求参数："+JSON.toJSONString(authorityRequestEntity));
		PageInfo<SystemAuthorityEntity> pageInfo=new PageInfo<SystemAuthorityEntity>();
		pageInfo.setPageNo(authorityRequestEntity.getPageNo());
		pageInfo.setPageSize(authorityRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<SystemAuthorityEntity> authorityList = null;
		logger.debug("method [getSystemAuthorityEntityList] 查询权限菜单列表，返回结果为："+JSON.toJSONString(authorityList));
		return new SuccessResponseEntity(authorityList);
		
	}
	
	/**
	 * goToUserAdd 权限菜单添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToUserAdd(){
		String url="/system/authority/authority_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addSystemAuthorityEntity 新建权限菜单
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addSystemAuthority(SystemAuthorityEntity SystemAuthorityEntity){
		logger.debug("新建权限菜单，传入参数为："+JSON.toJSONString(SystemAuthorityEntity));
		ResponseEntity result = null;
		logger.debug("新建权限菜单，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-1){
			result.setCode(0);
		}
		return result;
		
	}
	
	/**
	 * goToUserUpdate 权限菜单编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToUserUpdate(){
		String url="/system/authority/authority_update";
		return new ModelAndView(url);
	}
	
	/**
	 * updateSystemAuthorityEntity 修改权限菜单
	 * @param SystemAuthorityEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateSystemAuthority(SystemAuthorityEntity SystemAuthorityEntity){
		logger.debug("编辑权限菜单，传入参数为："+JSON.toJSONString(SystemAuthorityEntity));
		ResponseEntity result = null;
		logger.debug("编辑权限菜单，返回结果为："+JSON.toJSONString(result));
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
		String url="/system/authority/authority_detail";
		return new ModelAndView(url);
	}
	
	/**
	 * delSystemAuthorityEntity 删除权限菜单
	 * @param SystemAuthorityEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delSystemAuthority(SystemAuthorityEntity SystemAuthorityEntity){
		logger.debug("删除权限菜单，传入参数为："+JSON.toJSONString(SystemAuthorityEntity));
		ResponseEntity result = null;
		logger.debug("删除权限菜单，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-2){
			result.setCode(0);
		}
		return result;
	}

}
