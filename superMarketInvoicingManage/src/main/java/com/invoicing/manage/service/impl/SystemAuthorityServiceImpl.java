package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemAuthorityEntity;
import com.invoicing.manage.service.SystemAuthorityService;
import com.invoicing.manage.mapper.SystemAuthorityMapper;

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
 * @time 2017年07月27日 20:20:48
 * @version 1.0
 *
 **/
@Service("systemAuthorityService")
public class SystemAuthorityServiceImpl  implements SystemAuthorityService{

	@Autowired
	private SystemAuthorityMapper systemAuthorityMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemAuthorityMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemAuthorityEntity record){
		return systemAuthorityMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemAuthorityEntity selectByPrimaryKey(Long id){
		return systemAuthorityMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemAuthorityEntity record){
		return systemAuthorityMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemAuthorityEntity>
	 */
	public List<SystemAuthorityEntity> getList(Map<String,Object> params){
		return  systemAuthorityMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemAuthorityEntity>
	 */
	public PageInfo<SystemAuthorityEntity> getList(PageInfo<SystemAuthorityEntity> pageInfo,Map<String,Object> params){
		List<SystemAuthorityEntity> list = systemAuthorityMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemAuthorityMapper.getListCount(params);
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
		return  systemAuthorityMapper.getListCount(params);
	}
	@Override
	public List<SystemAuthorityEntity> getAuthMenuList(
			Long roleId) {
		return   systemAuthorityMapper.selectAuthMenuList(roleId);
	}

}