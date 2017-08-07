package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
/**
 *
 * @类介绍 商户角色权限中间表
 * @time 2017年08月08日 00:19:07
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemRoleAuthorityEntity extends BaseEntity {
  
    
    /**
     * 
     */
    private Long id;
    /**
     * 商户角色id
     */
    private Long roleId;
    /**
     * 商户权限id
     */
    private Long authId;

	/**
	 * 设置
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置商户角色id
	 */
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
    /**
     * 获取商户角色id
     */
    public Long getRoleId() {
        return this.roleId;
    }
	/**
	 * 设置商户权限id
	 */
    public void setAuthId(Long authId) {
        this.authId = authId;
    }
    /**
     * 获取商户权限id
     */
    public Long getAuthId() {
        return this.authId;
    }

}