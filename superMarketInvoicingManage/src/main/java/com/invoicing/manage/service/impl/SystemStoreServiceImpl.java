package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SystemStoreEntity;
import com.invoicing.manage.service.SystemStoreService;
import com.invoicing.manage.mapper.SystemStoreMapper;
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
 * @time 2017年08月14日 10:06:57
 * @version 1.0
 *
 **/
@Service("systemStoreService")
public class SystemStoreServiceImpl  implements SystemStoreService{

	@Autowired
	private SystemStoreMapper systemStoreMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	systemStoreMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(SystemStoreEntity record){
		return systemStoreMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemStoreEntity selectByPrimaryKey(Long id){
		return systemStoreMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(SystemStoreEntity record){
		return systemStoreMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemStoreEntity>
	 */
	public List<SystemStoreEntity> getList(Map<String,Object> params){
		return  systemStoreMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemStoreEntity>
	 */
	public PageInfo<SystemStoreEntity> getList(PageInfo<SystemStoreEntity> pageInfo,Map<String,Object> params){
		List<SystemStoreEntity> list = systemStoreMapper.getPageList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemStoreMapper.getListCount(params);
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
		return  systemStoreMapper.getListCount(params);
	}

}