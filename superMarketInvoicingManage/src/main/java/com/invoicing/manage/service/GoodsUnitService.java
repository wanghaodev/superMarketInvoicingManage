package com.invoicing.manage.service;

import com.invoicing.manage.entity.GoodsUnitEntity;
import java.util.Map;
import java.util.List;
import com.invoicing.manage.comment.entity.PageInfo;
/**
 *
 * @time 2017年08月09日 01:12:31
 * @version 1.0
 *
 **/

public interface GoodsUnitService  {
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Long id);
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	int insertSelective(GoodsUnitEntity record);
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	GoodsUnitEntity selectByPrimaryKey(Long id);
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	int updateByPrimaryKeySelective(GoodsUnitEntity record);
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsUnitEntity>
	 */
	List<GoodsUnitEntity> getList(Map<String,Object> params);
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsUnitEntity>
	 */
	PageInfo<GoodsUnitEntity> getList(PageInfo<GoodsUnitEntity> pageInfo,Map<String,Object> params);
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	int getListCount(Map<String,Object> params);

}