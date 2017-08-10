package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.StockGroundEntity;
import com.invoicing.manage.service.StockGroundService;
import com.invoicing.manage.mapper.StockGroundMapper;
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
 * @time 2017年08月10日 14:45:25
 * @version 1.0
 *
 **/
@Service("stockGroundService")
public class StockGroundServiceImpl  implements StockGroundService{

	@Autowired
	private StockGroundMapper stockGroundMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	stockGroundMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(StockGroundEntity record){
		return stockGroundMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public StockGroundEntity selectByPrimaryKey(Long id){
		return stockGroundMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(StockGroundEntity record){
		return stockGroundMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<StockGroundEntity>
	 */
	public List<StockGroundEntity> getList(Map<String,Object> params){
		return  stockGroundMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<StockGroundEntity>
	 */
	public PageInfo<StockGroundEntity> getList(PageInfo<StockGroundEntity> pageInfo,Map<String,Object> params){
		List<StockGroundEntity> list = stockGroundMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = stockGroundMapper.getListCount(params);
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
		return  stockGroundMapper.getListCount(params);
	}

}