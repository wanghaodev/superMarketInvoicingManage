package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemOrgEntity;
import com.invoicing.manage.service.SystemOrgService;
import com.invoicing.manage.mapper.SystemOrgMapper;
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
 * @time 2017年08月10日 15:02:15
 * @version 1.0
 *
 **/
@Service("systemOrgService")
public class SystemOrgServiceImpl  implements SystemOrgService{

	@Autowired
	private SystemOrgMapper systemOrgMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemOrgMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemOrgEntity record){
		return systemOrgMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemOrgEntity selectByPrimaryKey(Long id){
		return systemOrgMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemOrgEntity record){
		return systemOrgMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemOrgEntity>
	 */
	public List<SystemOrgEntity> getList(Map<String,Object> params){
		return  systemOrgMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemOrgEntity>
	 */
	public PageInfo<SystemOrgEntity> getList(PageInfo<SystemOrgEntity> pageInfo,Map<String,Object> params){
		List<SystemOrgEntity> list = systemOrgMapper.getPageList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemOrgMapper.getListCount(params);
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
		return  systemOrgMapper.getListCount(params);
	}

}