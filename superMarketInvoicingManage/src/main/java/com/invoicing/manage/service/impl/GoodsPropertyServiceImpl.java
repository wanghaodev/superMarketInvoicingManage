package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsPropertyEntity;
import com.invoicing.manage.service.GoodsPropertyService;
import com.invoicing.manage.mapper.GoodsPropertyMapper;
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
 * @time 2017年08月09日 18:58:21
 * @version 1.0
 *
 **/
@Service("goodsPropertyService")
public class GoodsPropertyServiceImpl  implements GoodsPropertyService{

	@Autowired
	private GoodsPropertyMapper goodsPropertyMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsPropertyMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsPropertyEntity record){
		return goodsPropertyMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsPropertyEntity selectByPrimaryKey(Long id){
		return goodsPropertyMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsPropertyEntity record){
		return goodsPropertyMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsPropertyEntity>
	 */
	public List<GoodsPropertyEntity> getList(Map<String,Object> params){
		return  goodsPropertyMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsPropertyEntity>
	 */
	public PageInfo<GoodsPropertyEntity> getList(PageInfo<GoodsPropertyEntity> pageInfo,Map<String,Object> params){
		List<GoodsPropertyEntity> list = goodsPropertyMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsPropertyMapper.getListCount(params);
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
		return  goodsPropertyMapper.getListCount(params);
	}

}