package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemRoleEntity;
import com.invoicing.manage.service.SystemRoleService;
import com.invoicing.manage.mapper.SystemRoleMapper;
import java.util.Map;
import java.util.List;
import com.snailf.platforms.common.entity.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.apache.ibatis.session.RowBounds;
/**
 *
 * @time 2017年07月27日 20:20:28
 * @version 1.0
 *
 **/
@Service("systemRoleService")
public class SystemRoleServiceImpl  implements SystemRoleService{

	@Autowired
	private SystemRoleMapper systemRoleMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemRoleMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemRoleEntity record){
		return systemRoleMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemRoleEntity selectByPrimaryKey(Long id){
		return systemRoleMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemRoleEntity record){
		return systemRoleMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemRoleEntity>
	 */
	public List<SystemRoleEntity> getList(Map<String,Object> params){
		return  systemRoleMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemRoleEntity>
	 */
	public PageInfo<SystemRoleEntity> getList(PageInfo<SystemRoleEntity> pageInfo,Map<String,Object> params){
		List<SystemRoleEntity> list = systemRoleMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemRoleMapper.getListCount(params);
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
		return  systemRoleMapper.getListCount(params);
	}

}