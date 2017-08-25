package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.CashsSettlementEntity;
import com.invoicing.manage.service.CashsSettlementService;
import com.invoicing.manage.mapper.CashsSettlementMapper;
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
 * @time 2017年08月10日 14:40:27
 * @version 1.0
 *
 **/
@Service("cashsSettlementService")
public class CashsSettlementServiceImpl  implements CashsSettlementService{

	@Autowired
	private CashsSettlementMapper cashsSettlementMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteByPrimaryKey(Long id){
		return	cashsSettlementMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSelective(CashsSettlementEntity record){
		return cashsSettlementMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public CashsSettlementEntity selectByPrimaryKey(Long id){
		return cashsSettlementMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateByPrimaryKeySelective(CashsSettlementEntity record){
		return cashsSettlementMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<CashsSettlementEntity>
	 */
	public List<CashsSettlementEntity> getList(Map<String,Object> params){
		return  cashsSettlementMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<CashsSettlementEntity>
	 */
	public PageInfo<CashsSettlementEntity> getList(PageInfo<CashsSettlementEntity> pageInfo,Map<String,Object> params){
		List<CashsSettlementEntity> list = cashsSettlementMapper.getList(params,
				new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = cashsSettlementMapper.getListCount(params);
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
		return  cashsSettlementMapper.getListCount(params);
	}

}