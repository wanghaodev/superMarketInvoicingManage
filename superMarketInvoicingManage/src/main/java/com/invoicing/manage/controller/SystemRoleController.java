package com.invoicing.manage.controller; 

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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

import com.alibaba.dubbo.common.json.JSONArray;
import com.alibaba.fastjson.JSON;
import com.invoicing.manage.comment.entity.ErrorResponseEntity;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.SystemAuthorityEntity;
import com.invoicing.manage.entity.SystemRoleAuthorityEntity;
import com.invoicing.manage.entity.SystemRoleEntity;
import com.invoicing.manage.request.RoleAuthResquestEntity;
import com.invoicing.manage.request.UserRequestEntity;
import com.invoicing.manage.service.SystemAuthorityService;
import com.invoicing.manage.service.SystemRoleAuthorityService;
import com.invoicing.manage.service.SystemRoleService;
import com.invoicing.manage.util.StringUtil;
import com.snailf.platforms.common.entity.PageInfo;
 
/** 
 * 类名: SystemRoleController   
 * 类描述: TODO.  角色管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/system/role")
public class SystemRoleController {
	private static final List<SystemAuthorityEntity> JSONArray = null;

	private static Logger logger=LoggerFactory.getLogger(SystemRoleController.class);
	
	@Autowired
	private SystemRoleService systemRoleService;
	
	@Autowired
	private SystemAuthorityService systemAuthorityService;
	
	@Autowired
	private SystemRoleAuthorityService systemRoleAuthorityService;
	
	
	
	/**
	 * goToUserList 角色列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToUserList(){
		String url="/system/role/role_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getSystemRoleEntityList 获取角色列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getSystemRoleList(UserRequestEntity RoleRequestEntity){
		logger.debug("method [getSystemRoleEntityList] 查询角色列表，请求参数："+JSON.toJSONString(RoleRequestEntity));
		PageInfo<SystemRoleEntity> pageInfo=new PageInfo<SystemRoleEntity>();
		pageInfo.setPageNo(RoleRequestEntity.getPageNo());
		pageInfo.setPageSize(RoleRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<SystemRoleEntity> roleList = systemRoleService.getList(pageInfo, params);
		logger.debug("method [getSystemRoleEntityList] 查询角色列表，返回结果为："+JSON.toJSONString(roleList));
		return new SuccessResponseEntity(roleList);
		
	}
	
	/**
	 * goToUserAdd 角色添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToUserAdd(){
		String url="/system/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addSystemRoleEntity 新建角色
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addSystemRole(SystemRoleEntity roleEntity){
		try {
			logger.debug("新建角色，传入参数为："+JSON.toJSONString(roleEntity));
			int result = systemRoleService.insertSelective(roleEntity);
			logger.debug("新建角色，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("角色添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToUserUpdate 角色编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToUserUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/system/role/role_update";
		SystemRoleEntity roleEntity=systemRoleService.selectByPrimaryKey(id);
		if(null!=roleEntity){
			modelMap.put("role", roleEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateSystemRoleEntity 修改角色
	 * @param SystemRoleEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateSystemRole(SystemRoleEntity roleEntity){
		try {
			logger.debug("编辑角色，传入参数为："+JSON.toJSONString(roleEntity));
			int result = systemRoleService.updateByPrimaryKeySelective(roleEntity);
			logger.debug("编辑角色，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("角色编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delSystemRoleEntity 删除角色
	 * @param SystemRoleEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delSystemRole(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				SystemRoleEntity roleEntity=new SystemRoleEntity ();
				roleEntity.setId(id);
				roleEntity.setHasvalid(String.valueOf(3));
				roleEntity.setUpdateTime(new Date());
				logger.debug("删除角色，传入参数为："+JSON.toJSONString(roleEntity));
				int result = systemRoleService.updateByPrimaryKeySelective(roleEntity);
				logger.debug("删除角色，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("角色删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	/**
	 * roleoleAuthority 到角色授权页面
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/authority", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView roleAuthority(HttpServletRequest request,ModelMap modelMap){
		Long roleId=Long.valueOf(request.getParameter("roleId"));
		//根据角色ID查询角色信息
		SystemRoleEntity resRoleEntity=systemRoleService.selectByPrimaryKey(roleId);
		//根据角色Id查询角色权限信息
		List<SystemAuthorityEntity> roleAuthList=systemAuthorityService.getAuthMenuList(roleId);
		logger.info(JSON.toJSONString(roleAuthList));
		modelMap.put("role", resRoleEntity);
		modelMap.put("roleAuthList", JSON.toJSONString(roleAuthList));
		String url="/system/role/role_authority";
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * roleoleAuthority 保存角色授权
	 * @param SystemRoleEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/authority", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity roleAuthority(RoleAuthResquestEntity roleAuthEntity){
		try {
			logger.debug("角色权限维护，传入参数为：角色ID{},菜单ID{}",roleAuthEntity.getRoleId(),JSON.toJSONString(roleAuthEntity.getAuthIds()));
			if(null!=roleAuthEntity.getRoleId()&&null!=roleAuthEntity.getAuthIds()){
				//查询该角色下是否已分配相应权限，若分配则做先删除再插入操作。
				Map<String,Object> queryMap=new HashMap<String,Object>();
				queryMap.put("roleId", roleAuthEntity.getRoleId());
				List<SystemRoleAuthorityEntity>  roleAuthRes=systemRoleAuthorityService.getList(queryMap);
				if(StringUtil.isNotNull(roleAuthRes)){
					for(SystemRoleAuthorityEntity queryRoleAuthRest:roleAuthRes){
						logger.info("method [updateByPrimaryKeySelective]删除已配置的角色权限,请求参数{}",JSON.toJSON(queryRoleAuthRest));
						systemRoleAuthorityService.deleteByPrimaryKey(queryRoleAuthRest.getId());
					}
				}
				for (int i = 0; i < roleAuthEntity.getAuthIds().length; i++) {
					SystemRoleAuthorityEntity insertRoleAuth=new SystemRoleAuthorityEntity();
					insertRoleAuth.setRoleId(roleAuthEntity.getRoleId());
					insertRoleAuth.setAuthId(roleAuthEntity.getAuthIds()[i]);
					logger.info("method [updateByPrimaryKeySelective]新增,请求参数{}",JSON.toJSON(insertRoleAuth));
					systemRoleAuthorityService.insertSelective(insertRoleAuth);
				}
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("菜单权限维护异常！",e);
			return null;
		}
	}
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<SystemRoleEntity> roleList=systemRoleService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(roleList.size()>0){
			res.setData(roleList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
