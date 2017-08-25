package com.invoicing.manage.service;

import com.invoicing.manage.entity.SystemUserRoleEntity;

import java.util.Map;
import java.util.List;

import com.invoicing.manage.comment.entity.PageInfo;
/**
 *
 * @time 2017年08月08日 01:23:45
 * @version 1.0
 *
 **/

public interface SystemUserRoleService  {
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Long id);
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	int insertSelective(SystemUserRoleEntity record);
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	SystemUserRoleEntity getUserRole(Map<String,Object> queryMap);
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	int updateByPrimaryKeySelective(SystemUserRoleEntity record);
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemUserRoleEntity>
	 */
	List<SystemUserRoleEntity> getList(Map<String,Object> params);
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemUserRoleEntity>
	 */
	PageInfo<SystemUserRoleEntity> getList(PageInfo<SystemUserRoleEntity> pageInfo,Map<String,Object> params);
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	int getListCount(Map<String,Object> params);

}