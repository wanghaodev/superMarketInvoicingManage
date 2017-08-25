package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.GoodsBrandEntity;
import com.invoicing.manage.service.GoodsBrandService;
import com.invoicing.manage.mapper.GoodsBrandMapper;
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
 * @time 2017年08月09日 01:13:02
 * @version 1.0
 *
 **/
@Service("goodsBrandService")
public class GoodsBrandServiceImpl  implements GoodsBrandService{

	@Autowired
	private GoodsBrandMapper goodsBrandMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	goodsBrandMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(GoodsBrandEntity record){
		return goodsBrandMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public GoodsBrandEntity selectByPrimaryKey(Long id){
		return goodsBrandMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(GoodsBrandEntity record){
		return goodsBrandMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsBrandEntity>
	 */
	public List<GoodsBrandEntity> getList(Map<String,Object> params){
		return  goodsBrandMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsBrandEntity>
	 */
	public PageInfo<GoodsBrandEntity> getList(PageInfo<GoodsBrandEntity> pageInfo,Map<String,Object> params){
		List<GoodsBrandEntity> list = goodsBrandMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = goodsBrandMapper.getListCount(params);
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
		return  goodsBrandMapper.getListCount(params);
	}

}