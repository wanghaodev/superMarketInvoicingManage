package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsUnitEntity;
import com.invoicing.manage.service.GoodsUnitService;
import com.invoicing.manage.mapper.GoodsUnitMapper;
import java.util.Map;
import java.util.List;
import com.invoicing.manage.comment.entity.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.apache.ibatis.session.RowBounds;
/**
 *
 * @time 2017年08月09日 01:12:31
 * @version 1.0
 *
 **/
@Service("goodsUnitService")
public class GoodsUnitServiceImpl  implements GoodsUnitService{

	@Autowired
	private GoodsUnitMapper goodsUnitMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsUnitMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsUnitEntity record){
		return goodsUnitMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsUnitEntity selectByPrimaryKey(Long id){
		return goodsUnitMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsUnitEntity record){
		return goodsUnitMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsUnitEntity>
	 */
	public List<GoodsUnitEntity> getList(Map<String,Object> params){
		return  goodsUnitMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsUnitEntity>
	 */
	public PageInfo<GoodsUnitEntity> getList(PageInfo<GoodsUnitEntity> pageInfo,Map<String,Object> params){
		List<GoodsUnitEntity> list = goodsUnitMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsUnitMapper.getListCount(params);
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
		return  goodsUnitMapper.getListCount(params);
	}

}