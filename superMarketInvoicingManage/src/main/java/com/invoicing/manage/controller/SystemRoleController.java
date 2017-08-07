package com.invoicing.manage.controller; 

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.common.json.JSONArray;
import com.alibaba.fastjson.JSON;
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
import com.snailf.platforms.common.entity.ErrorResponseEntity;
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
	@RequestMapping(value = "/list", method = RequestMethod.GET)
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
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
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
	public ResponseEntity addSystemRole(SystemRoleEntity SystemRoleEntity){
		logger.debug("新建角色，传入参数为："+JSON.toJSONString(SystemRoleEntity));
		ResponseEntity result = null;
		logger.debug("新建角色，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-1){
			result.setCode(0);
		}
		return result;
		
	}
	
	/**
	 * goToUserUpdate 角色编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToUserUpdate(){
		String url="/system/Role/Role_update";
		return new ModelAndView(url);
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
	public ResponseEntity updateSystemRole(SystemRoleEntity SystemRoleEntity){
		logger.debug("编辑角色，传入参数为："+JSON.toJSONString(SystemRoleEntity));
		ResponseEntity result = null;
		logger.debug("编辑角色，返回结果为："+JSON.toJSONString(result));
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
	@ResponseBody
	public ResponseEntity goToUserDetail(Long roleId){
		ResponseEntity res=null;
		if(null!=roleId){
			SystemRoleEntity resRoleEntity=systemRoleService.selectByPrimaryKey(roleId);
			res.setData(resRoleEntity);
		}
		return res;
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.POST)
	public ModelAndView getRoleDetail(){
		String url="/system/Role/Role_detail";
		return new ModelAndView(url);
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
	public ResponseEntity delSystemRole(SystemRoleEntity SystemRoleEntity){
		logger.debug("删除角色，传入参数为："+JSON.toJSONString(SystemRoleEntity));
		ResponseEntity result = null;
		logger.debug("删除角色，返回结果为："+JSON.toJSONString(result));
		//若返回结果不等于1时，返回前台统一转为0，提示信息不变。
		if(result.getCode()==-2){
			result.setCode(0);
		}
		return result;
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
	 * roleoleAuthority 角色授权异步提交方法
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
				for (int i = 0; i < roleAuthEntity.getAuthIds().length; i++) {
					SystemRoleAuthorityEntity roleAuth=new SystemRoleAuthorityEntity();
					roleAuth.setRoleId(roleAuthEntity.getRoleId());
					roleAuth.setAuthId(roleAuthEntity.getAuthIds()[i]);
					systemRoleAuthorityService.insertSelective(roleAuth);
				}
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.error("菜单权限维护异常！",e);
			return null;
		}
	}
	

}
