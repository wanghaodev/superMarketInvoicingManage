package com.invoicing.manage.service.impl;


import com.alibaba.fastjson.JSON;
import com.invoicing.manage.controller.SystemAuthorityController;
import com.invoicing.manage.entity.SystemUserEntity;
import com.invoicing.manage.respose.UserResponse;
import com.invoicing.manage.service.SystemUserService;
import com.invoicing.manage.mapper.SystemUserMapper;

import java.util.Date;
import java.util.Map;
import java.util.List;

import com.snailf.platforms.common.entity.PageInfo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.apache.ibatis.session.RowBounds;
/**
 *
 * @time 2017年07月27日 20:19:33
 * @version 1.0
 *
 **/
@Service("systemUserService")
public class SystemUserServiceImpl  implements SystemUserService{
	private static Logger logger=LoggerFactory.getLogger(SystemUserServiceImpl.class);

	@Autowired
	private SystemUserMapper systemUserMapper;
  	/**
	 * 通过主键id 删除
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int deleteSystemUser(Long id){
		return	systemUserMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 插入实体
	 * @param record
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int insertSystemUser(SystemUserEntity record){
		record.setCreateTime(new Date());
		record.setUpdateTime(new Date());
		return systemUserMapper.insertSelective(record);
	}
	/**
	 * 通过主键id 获取实体对象
	 * @param id
	 * @return
	 */
	public SystemUserEntity getSystemUser(Long id){
		return systemUserMapper.selectByPrimaryKey(id);
	}
	/**
	 * 通过主键id 更新实体
	 * @param record
	 * @return 1成功  其它失败
	 */
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
	public int updateSystemUser(SystemUserEntity record){
		return systemUserMapper.updateByPrimaryKeySelective(record);
	}
	/**
	 * 通过map参数获取列表
	 * @param params
	 * @return List<SystemUserEntity>
	 */
	public List<SystemUserEntity> getSystemUserList(Map<String,Object> params){
		return  systemUserMapper.getList(params);
	}
	/**
	 * 通过map参数获取列表 分页
	 * @param params
	 * @return PageInfo<SystemUserEntity>
	 */
	public PageInfo<SystemUserEntity> getSystemUserPageList(PageInfo<SystemUserEntity> pageInfo,Map<String,Object> params){
		List<SystemUserEntity> list = systemUserMapper.getList(params,new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
		Integer total = systemUserMapper.getListCount(params);
		pageInfo.setRows(list);
		pageInfo.setTotal(total);
		return pageInfo;
	}
	
	@Override
	public UserResponse getUserByLoginName(Map<String, Object> map) {
		logger.info("method [getUserByLoginName] 用户登录信息查询，请求参数,{}",JSON.toJSON(map));
		UserResponse userRes= systemUserMapper.selectUserByLoginName(map);
		logger.info("method [getUserByLoginName] 用户登录信息查询，返回结果,{}",JSON.toJSON(userRes));
		return userRes;
	}



}