package com.invoicing.manage.mapper;

import com.invoicing.manage.entity.PurchasesRefundEntity;
import java.util.Map;
import java.util.List;
import org.apache.ibatis.session.RowBounds;
/**
 *
 * @time 2017年08月10日 14:40:43
 * @version 1.0
 *
 **/

public interface PurchasesRefundMapper  {
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
	int insertSelective(PurchasesRefundEntity record);
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	PurchasesRefundEntity selectByPrimaryKey(Long id);
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	int updateByPrimaryKeySelective(PurchasesRefundEntity record);
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<PurchasesRefundEntity>
	 */
	List<PurchasesRefundEntity> getList(Map<String,Object> params);
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return List<PurchasesRefundEntity>
	 */
	List<PurchasesRefundEntity> getList(Map<String,Object> params,RowBounds rowBounds);
	/**
	 * 通过map参数获取 总数
	 * @param params
	 * @return int
	 */
	int getListCount(Map<String,Object> params);

}