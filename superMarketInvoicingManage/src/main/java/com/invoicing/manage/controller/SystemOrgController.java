package com.invoicing.manage.controller; 

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.invoicing.manage.comment.entity.ErrorResponseEntity;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.SystemOrgEntity;
import com.invoicing.manage.request.OrgRequestEntity;
import com.invoicing.manage.service.SystemOrgService;
import com.snailf.platforms.common.entity.PageInfo;
 
/** 
 * 类名: SystemOrgController   
 * 类描述: TODO.  机构管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/system/org")
public class SystemOrgController {
	private static Logger logger=LoggerFactory.getLogger(SystemOrgController.class);
	
	@Autowired
	private SystemOrgService systemAuthorityService;
	
	
	/**
	 * goToUserList 机构列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView goToUserList(){
		String url="/system/org/org_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getSystemOrgEntityList 获取机构列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getSystemOrgList(OrgRequestEntity orgRequestEntity){
		logger.debug("method [getSystemOrgEntityList] 查询机构列表，请求参数："+JSON.toJSONString(orgRequestEntity));
		PageInfo<SystemOrgEntity> pageInfo=new PageInfo<SystemOrgEntity>();
		pageInfo.setPageNo(orgRequestEntity.getPageNo());
		pageInfo.setPageSize(orgRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<SystemOrgEntity> authorityList = systemAuthorityService.getList(pageInfo, params);
		logger.debug("method [getSystemOrgEntityList] 查询机构列表，返回结果为："+JSON.toJSONString(authorityList));
		return new SuccessResponseEntity(authorityList);
		
	}
	
	
	
	/**
	 * addSystemOrgEntity 新建机构
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addSystemOrg(SystemOrgEntity systemAuthorityEntity){
		try {
			logger.debug("新建机构，传入参数为："+JSON.toJSONString(systemAuthorityEntity));
			int insertRest=systemAuthorityService.insertSelective(systemAuthorityEntity);
			logger.debug("新建机构，返回结果为："+JSON.toJSONString(insertRest));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("插入菜单异常，"+e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	/**
	 * updateSystemOrgEntity 修改机构
	 * @param SystemOrgEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateSystemOrg(SystemOrgEntity systemAuthorityEntity){
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
	 * delSystemOrgEntity 删除机构
	 * @param SystemOrgEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity delSystemOrg(@RequestParam Long id){
		try {
			SystemOrgEntity systemAuthorityEntity=new SystemOrgEntity ();
			systemAuthorityEntity.setId(id);
			systemAuthorityEntity.setValid(0);
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
	
	
	
	
	
	
	

}
