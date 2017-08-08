package com.invoicing.manage.controller; 

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		PageInfo<SystemAuthorityEntity> authorityList = systemAuthorityService.getList(pageInfo, params);
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
	public ModelAndView goToUserAdd(ModelMap modelMap){
		Map<String,Object> queryMap=new HashMap<String, Object>();
		queryMap.put("pId", 0);
		List<SystemAuthorityEntity> queryAuthListRestult=systemAuthorityService.getZTree(queryMap);
		String url="/system/authority/authority_add";
		if(queryAuthListRestult.size()>0){
			modelMap.put("pAuthList", JSON.toJSON(queryAuthListRestult));
		}
		return new ModelAndView(url,modelMap);
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
	public ResponseEntity addSystemAuthority(SystemAuthorityEntity systemAuthorityEntity){
		try {
			logger.debug("新建权限菜单，传入参数为："+JSON.toJSONString(systemAuthorityEntity));
			int insertRest=systemAuthorityService.insertSelective(systemAuthorityEntity);
			logger.debug("新建权限菜单，返回结果为："+JSON.toJSONString(insertRest));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("插入菜单异常，"+e);
			return new ErrorResponseEntity();
		}
	}
	
	/**
	 * goToUserUpdate 权限菜单编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView goToUserUpdate(@RequestParam Long id,ModelMap modelMap){
		//查询上级菜单
		Map<String,Object> queryMap=new HashMap<String, Object>();
		queryMap.put("pId", 0);
		List<SystemAuthorityEntity> queryAuthListRestult=systemAuthorityService.getZTree(queryMap);
		//查询详情
		SystemAuthorityEntity systemAuthorityEntity=systemAuthorityService.selectByPrimaryKey(id);
		if(null!=systemAuthorityEntity){
			modelMap.put("auth", systemAuthorityEntity);
		}
		if(null!=queryAuthListRestult){
			modelMap.put("authList", JSON.toJSON(queryAuthListRestult));
		}
		String url="/system/authority/authority_update";
		return new ModelAndView(url,modelMap);
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
	public ResponseEntity updateSystemAuthority(SystemAuthorityEntity systemAuthorityEntity){
		try {
			logger.debug("编辑菜单，传入参数为："+JSON.toJSONString(systemAuthorityEntity));
			int insertRest=systemAuthorityService.updateByPrimaryKeySelective(systemAuthorityEntity);
			logger.debug("编辑菜单，返回结果为："+JSON.toJSONString(insertRest));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("编辑异常，"+e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delSystemAuthorityEntity 删除权限菜单
	 * @param SystemAuthorityEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity delSystemAuthority(@RequestParam Long id){
		try {
			SystemAuthorityEntity systemAuthorityEntity=new SystemAuthorityEntity ();
			systemAuthorityEntity.setId(id);
			systemAuthorityEntity.setHasvalid(String.valueOf(0));
			systemAuthorityEntity.setUpdateTime(new Date());
			logger.debug("删除菜单，传入参数为："+JSON.toJSONString(systemAuthorityEntity));
			int insertRest=systemAuthorityService.updateByPrimaryKeySelective(systemAuthorityEntity);
			logger.debug("删除菜单，返回结果为："+JSON.toJSONString(insertRest));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("删除异常，"+e);
			return new ErrorResponseEntity();
		}
	}
	
	/**
	 * loadZtree 属性菜单加载方法
	 * @param SystemAuthorityEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "load/ztree", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity loadZtree(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<SystemAuthorityEntity> getList=systemAuthorityService.getZTree(queryMap);
		logger.debug("删除权限菜单，返回结果为："+JSON.toJSONString(getList));
		return new SuccessResponseEntity(getList);
	}
	
	
	
	
	

}
