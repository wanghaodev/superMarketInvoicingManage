package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsNormalPriceEntity;
import com.invoicing.manage.service.GoodsNormalPriceService;
import com.invoicing.manage.mapper.GoodsNormalPriceMapper;
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
 * @time 2017年08月09日 23:20:52
 * @version 1.0
 *
 **/
@Service("goodsNormalPriceService")
public class GoodsNormalPriceServiceImpl  implements GoodsNormalPriceService{

	@Autowired
	private GoodsNormalPriceMapper goodsNormalPriceMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsNormalPriceMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsNormalPriceEntity record){
		return goodsNormalPriceMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsNormalPriceEntity selectByPrimaryKey(Long id){
		return goodsNormalPriceMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsNormalPriceEntity record){
		return goodsNormalPriceMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsNormalPriceEntity>
	 */
	public List<GoodsNormalPriceEntity> getList(Map<String,Object> params){
		return  goodsNormalPriceMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsNormalPriceEntity>
	 */
	public PageInfo<GoodsNormalPriceEntity> getList(PageInfo<GoodsNormalPriceEntity> pageInfo,Map<String,Object> params){
		List<GoodsNormalPriceEntity> list = goodsNormalPriceMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsNormalPriceMapper.getListCount(params);
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
		return  goodsNormalPriceMapper.getListCount(params);
	}

}