package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemUserEntity;
import com.invoicing.manage.service.SystemUserService;
import com.invoicing.manage.mapper.SystemUserMapper;
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
 * @time 2017年07月27日 20:19:33
 * @version 1.0
 *
 **/
@Service("systemUserService")
public class SystemUserServiceImpl  implements SystemUserService{

	@Autowired
	private SystemUserMapper systemUserMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemUserMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemUserEntity record){
		return systemUserMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemUserEntity selectByPrimaryKey(Long id){
		return systemUserMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemUserEntity record){
		return systemUserMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemUserEntity>
	 */
	public List<SystemUserEntity> getList(Map<String,Object> params){
		return  systemUserMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemUserEntity>
	 */
	public PageInfo<SystemUserEntity> getList(PageInfo<SystemUserEntity> pageInfo,Map<String,Object> params){
		List<SystemUserEntity> list = systemUserMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemUserMapper.getListCount(params);
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
		return  systemUserMapper.getListCount(params);
	}

}