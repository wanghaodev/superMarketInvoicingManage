package com.invoicing.manage.service;

import com.invoicing.manage.entity.SaleRecordEntity;
import java.util.Map;
import java.util.List;
import com.invoicing.manage.comment.entity.PageInfo;
/**
 *
 * @time 2017年08月10日 14:24:25
 * @version 1.0
 *
 **/

public interface SaleRecordService  {
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
	int insertSelective(SaleRecordEntity record);
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	SaleRecordEntity selectByPrimaryKey(Long id);
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	int updateByPrimaryKeySelective(SaleRecordEntity record);
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SaleRecordEntity>
	 */
	List<SaleRecordEntity> getList(Map<String,Object> params);
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SaleRecordEntity>
	 */
	PageInfo<SaleRecordEntity> getList(PageInfo<SaleRecordEntity> pageInfo,Map<String,Object> params);
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	int getListCount(Map<String,Object> params);

}