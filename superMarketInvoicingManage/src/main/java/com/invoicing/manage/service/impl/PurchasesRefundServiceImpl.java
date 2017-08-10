package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.PurchasesRefundEntity;
import com.invoicing.manage.service.PurchasesRefundService;
import com.invoicing.manage.mapper.PurchasesRefundMapper;
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
 * @time 2017年08月10日 14:40:43
 * @version 1.0
 *
 **/
@Service("purchasesRefundService")
public class PurchasesRefundServiceImpl  implements PurchasesRefundService{

	@Autowired
	private PurchasesRefundMapper purchasesRefundMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	purchasesRefundMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(PurchasesRefundEntity record){
		return purchasesRefundMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public PurchasesRefundEntity selectByPrimaryKey(Long id){
		return purchasesRefundMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(PurchasesRefundEntity record){
		return purchasesRefundMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<PurchasesRefundEntity>
	 */
	public List<PurchasesRefundEntity> getList(Map<String,Object> params){
		return  purchasesRefundMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<PurchasesRefundEntity>
	 */
	public PageInfo<PurchasesRefundEntity> getList(PageInfo<PurchasesRefundEntity> pageInfo,Map<String,Object> params){
		List<PurchasesRefundEntity> list = purchasesRefundMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = purchasesRefundMapper.getListCount(params);
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
		return  purchasesRefundMapper.getListCount(params);
	}

}