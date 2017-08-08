package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemRoleAuthorityEntity;
import com.invoicing.manage.service.SystemRoleAuthorityService;
import com.invoicing.manage.mapper.SystemRoleAuthorityMapper;
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
 * @time 2017年08月08日 00:19:07
 * @version 1.0
 *
 **/
@Service("systemRoleAuthorityService")
public class SystemRoleAuthorityServiceImpl  implements SystemRoleAuthorityService{

	@Autowired
	private SystemRoleAuthorityMapper systemRoleAuthorityMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemRoleAuthorityMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemRoleAuthorityEntity record){
		return systemRoleAuthorityMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemRoleAuthorityEntity getRoleAuthority(Map<String,Object> map){
		return systemRoleAuthorityMapper.selectByPrimaryKey(map);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemRoleAuthorityEntity record){
		return systemRoleAuthorityMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemRoleAuthorityEntity>
	 */
	public List<SystemRoleAuthorityEntity> getList(Map<String,Object> params){
		return  systemRoleAuthorityMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemRoleAuthorityEntity>
	 */
	public PageInfo<SystemRoleAuthorityEntity> getList(PageInfo<SystemRoleAuthorityEntity> pageInfo,Map<String,Object> params){
		List<SystemRoleAuthorityEntity> list = systemRoleAuthorityMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemRoleAuthorityMapper.getListCount(params);
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
		return  systemRoleAuthorityMapper.getListCount(params);
	}

}