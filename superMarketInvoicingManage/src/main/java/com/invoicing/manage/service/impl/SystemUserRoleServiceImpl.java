package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemUserRoleEntity;
import com.invoicing.manage.service.SystemUserRoleService;
import com.invoicing.manage.mapper.SystemUserRoleMapper;
import java.util.Map;
import java.util.List;
import com.invoicing.manage.comment.entity.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.apache.ibatis.session.RowBounds;
/**
 *
 * @time 2017年08月08日 01:23:45
 * @version 1.0
 *
 **/
@Service("systemUserRoleService")
public class SystemUserRoleServiceImpl  implements SystemUserRoleService{

	@Autowired
	private SystemUserRoleMapper systemUserRoleMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemUserRoleMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemUserRoleEntity record){
		return systemUserRoleMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemUserRoleEntity getUserRole(Map<String,Object> map){
		return systemUserRoleMapper.selectByPrimaryKey(map);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemUserRoleEntity record){
		return systemUserRoleMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemUserRoleEntity>
	 */
	public List<SystemUserRoleEntity> getList(Map<String,Object> params){
		return  systemUserRoleMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemUserRoleEntity>
	 */
	public PageInfo<SystemUserRoleEntity> getList(PageInfo<SystemUserRoleEntity> pageInfo,Map<String,Object> params){
		List<SystemUserRoleEntity> list = systemUserRoleMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemUserRoleMapper.getListCount(params);
		pageInfo.setRows(list);
		pageInfo.setTotal(total);
		return pageInfo;
	}
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	public int getListCount(Map<String,Object> params){
		return  systemUserRoleMapper.getListCount(params);
	}

}