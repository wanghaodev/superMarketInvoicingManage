package com.invoicing.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.invoicing.manage.comment.entity.PageInfo;
import com.invoicing.manage.entity.AreaEntity;
import com.invoicing.manage.mapper.AreaMapper;
import com.invoicing.manage.service.AreaService;
/**
 *
 * @time 2017年07月27日 19:41:57
 * @version 1.0
 *
 **/
@Service("areaService")
public class AreaServiceImpl  implements AreaService{

	@Autowired
	private AreaMapper areaMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	areaMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(AreaEntity record){
		return areaMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public AreaEntity selectByPrimaryKey(Long id){
		return areaMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(AreaEntity record){
		return areaMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<AreaEntity>
	 */
	public List<AreaEntity> getList(Map<String,Object> params){
		return  areaMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<AreaEntity>
	 */
	public PageInfo<AreaEntity> getList(PageInfo<AreaEntity> pageInfo,Map<String,Object> params){
		List<AreaEntity> list = areaMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = areaMapper.getListCount(params);
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
		return  areaMapper.getListCount(params);
	}

}