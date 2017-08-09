package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsCategoryEntity;
import com.invoicing.manage.service.GoodsCategoryService;
import com.invoicing.manage.mapper.GoodsCategoryMapper;
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
 * @time 2017年08月09日 18:50:54
 * @version 1.0
 *
 **/
@Service("goodsCategoryService")
public class GoodsCategoryServiceImpl  implements GoodsCategoryService{

	@Autowired
	private GoodsCategoryMapper goodsCategoryMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsCategoryMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsCategoryEntity record){
		return goodsCategoryMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsCategoryEntity selectByPrimaryKey(Long id){
		return goodsCategoryMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsCategoryEntity record){
		return goodsCategoryMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsCategoryEntity>
	 */
	public List<GoodsCategoryEntity> getList(Map<String,Object> params){
		return  goodsCategoryMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsCategoryEntity>
	 */
	public PageInfo<GoodsCategoryEntity> getList(PageInfo<GoodsCategoryEntity> pageInfo,Map<String,Object> params){
		List<GoodsCategoryEntity> list = goodsCategoryMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsCategoryMapper.getListCount(params);
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
		return  goodsCategoryMapper.getListCount(params);
	}

}