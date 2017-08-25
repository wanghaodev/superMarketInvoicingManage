package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsPropertyValueEntity;
import com.invoicing.manage.service.GoodsPropertyValueService;
import com.invoicing.manage.mapper.GoodsPropertyValueMapper;
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
 * @time 2017年08月09日 18:58:38
 * @version 1.0
 *
 **/
@Service("goodsPropertyValueService")
public class GoodsPropertyValueServiceImpl  implements GoodsPropertyValueService{

	@Autowired
	private GoodsPropertyValueMapper goodsPropertyValueMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsPropertyValueMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsPropertyValueEntity record){
		return goodsPropertyValueMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsPropertyValueEntity selectByPrimaryKey(Long id){
		return goodsPropertyValueMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsPropertyValueEntity record){
		return goodsPropertyValueMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsPropertyValueEntity>
	 */
	public List<GoodsPropertyValueEntity> getList(Map<String,Object> params){
		return  goodsPropertyValueMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsPropertyValueEntity>
	 */
	public PageInfo<GoodsPropertyValueEntity> getList(PageInfo<GoodsPropertyValueEntity> pageInfo,Map<String,Object> params){
		List<GoodsPropertyValueEntity> list = goodsPropertyValueMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsPropertyValueMapper.getListCount(params);
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
		return  goodsPropertyValueMapper.getListCount(params);
	}

}