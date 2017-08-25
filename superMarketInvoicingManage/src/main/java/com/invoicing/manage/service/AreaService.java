package com.invoicing.manage.service;

import com.invoicing.manage.comment.entity.PageInfo;
import com.invoicing.manage.entity.AreaEntity;

import java.util.Map;
import java.util.List;
/**
 *
 * @time 2017年07月27日 19:41:57
 * @version 1.0
 *
 **/

public interface AreaService  {
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
	int insertSelective(AreaEntity record);
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	AreaEntity selectByPrimaryKey(Long id);
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	int updateByPrimaryKeySelective(AreaEntity record);
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<AreaEntity>
	 */
	List<AreaEntity> getList(Map<String,Object> params);
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<AreaEntity>
	 */
	PageInfo<AreaEntity> getList(PageInfo<AreaEntity> pageInfo,Map<String,Object> params);
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	int getListCount(Map<String,Object> params);

}