package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;


/**
 *
 * @类介绍 商户角色表
 * @time 2017年07月27日 20:20:28
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemRoleEntity extends BaseEntity {
  
	/**
	 * 角色ID
	 */
	private Long roleId;
	
	/**
	 * 权限ID
	 */
	private Long authId;
    /**
     * 角色名称
     */
    private String roleName;
    /**
     * 角色描述
     */
    private String roleDesc;
    /**
     * 是否有效 -1停用 0失效 1有效 2管理员角色
     */
    private String hasvalid;
    /**
     * 直属机构id
     */
    private String directlyOrgId;
    /**
     * 层级机构id
     */
    private String hierarchyOrgId;

	/**
	 * 设置角色名称
	 */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    /**
     * 获取角色名称
     */
    public String getRoleName() {
        return this.roleName;
    }
	/**
	 * 设置角色描述
	 */
    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }
    /**
     * 获取角色描述
     */
    public String getRoleDesc() {
        return this.roleDesc;
    }
	/**
	 * 设置是否有效 -1停用 0失效 1有效 2管理员角色
	 */
    public void setHasvalid(String hasvalid) {
        this.hasvalid = hasvalid;
    }
    /**
     * 获取是否有效 -1停用 0失效 1有效 2管理员角色
     */
    public String getHasvalid() {
        return this.hasvalid;
    }
	/**
	 * 设置直属机构id
	 */
    public void setDirectlyOrgId(String directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取直属机构id
     */
    public String getDirectlyOrgId() {
        return this.directlyOrgId;
    }
	/**
	 * 设置层级机构id
	 */
    public void setHierarchyOrgId(String hierarchyOrgId) {
        this.hierarchyOrgId = hierarchyOrgId;
    }
    /**
     * 获取层级机构id
     */
    public String getHierarchyOrgId() {
        return this.hierarchyOrgId;
    }
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public Long getAuthId() {
		return authId;
	}
	public void setAuthId(Long authId) {
		this.authId = authId;
	}

}