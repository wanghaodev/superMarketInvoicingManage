package com.invoicing.manage.service;

import com.invoicing.manage.entity.GoodsPropertyEntity;
import java.util.Map;
import java.util.List;
import com.invoicing.manage.comment.entity.PageInfo;
/**
 *
 * @time 2017年08月09日 18:58:21
 * @version 1.0
 *
 **/

public interface GoodsPropertyService  {
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
	int insertSelective(GoodsPropertyEntity record);
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	GoodsPropertyEntity selectByPrimaryKey(Long id);
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	int updateByPrimaryKeySelective(GoodsPropertyEntity record);
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<GoodsPropertyEntity>
	 */
	List<GoodsPropertyEntity> getList(Map<String,Object> params);
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<GoodsPropertyEntity>
	 */
	PageInfo<GoodsPropertyEntity> getList(PageInfo<GoodsPropertyEntity> pageInfo,Map<String,Object> params);
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	int getListCount(Map<String,Object> params);

}