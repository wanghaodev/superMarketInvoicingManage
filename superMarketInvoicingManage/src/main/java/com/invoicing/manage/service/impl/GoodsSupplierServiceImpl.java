package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsSupplierEntity;
import com.invoicing.manage.service.GoodsSupplierService;
import com.invoicing.manage.mapper.GoodsSupplierMapper;
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
 * @time 2017年08月09日 09:27:24
 * @version 1.0
 *
 **/
@Service("goodsSupplierService")
public class GoodsSupplierServiceImpl  implements GoodsSupplierService{

	@Autowired
	private GoodsSupplierMapper goodsSupplierMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsSupplierMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsSupplierEntity record){
		return goodsSupplierMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsSupplierEntity selectByPrimaryKey(Long id){
		return goodsSupplierMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsSupplierEntity record){
		return goodsSupplierMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsSupplierEntity>
	 */
	public List<GoodsSupplierEntity> getList(Map<String,Object> params){
		return  goodsSupplierMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsSupplierEntity>
	 */
	public PageInfo<GoodsSupplierEntity> getList(PageInfo<GoodsSupplierEntity> pageInfo,Map<String,Object> params){
		List<GoodsSupplierEntity> list = goodsSupplierMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsSupplierMapper.getListCount(params);
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
		return  goodsSupplierMapper.getListCount(params);
	}

}