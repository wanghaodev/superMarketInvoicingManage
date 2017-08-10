package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.StockInDetailEntity;
import com.invoicing.manage.service.StockInDetailService;
import com.invoicing.manage.mapper.StockInDetailMapper;
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
 * @time 2017年08月10日 14:46:37
 * @version 1.0
 *
 **/
@Service("stockInDetailService")
public class StockInDetailServiceImpl  implements StockInDetailService{

	@Autowired
	private StockInDetailMapper stockInDetailMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	stockInDetailMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(StockInDetailEntity record){
		return stockInDetailMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public StockInDetailEntity selectByPrimaryKey(Long id){
		return stockInDetailMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(StockInDetailEntity record){
		return stockInDetailMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<StockInDetailEntity>
	 */
	public List<StockInDetailEntity> getList(Map<String,Object> params){
		return  stockInDetailMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<StockInDetailEntity>
	 */
	public PageInfo<StockInDetailEntity> getList(PageInfo<StockInDetailEntity> pageInfo,Map<String,Object> params){
		List<StockInDetailEntity> list = stockInDetailMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = stockInDetailMapper.getListCount(params);
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
		return  stockInDetailMapper.getListCount(params);
	}

}