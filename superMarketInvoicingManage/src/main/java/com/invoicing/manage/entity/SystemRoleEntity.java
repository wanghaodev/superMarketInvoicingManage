package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
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
     * 角色主键id
     */
    private Long id;
    /**
     * 角色名称
     */
    private String roleName;
    /**
     * 角色描述
     */
    private String roleDesc;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 创建人
     */
    private String creator;
    /**
     * 
     */
    private Long creatorId;
    /**
     * 是否有效 -1停用 0失效 1有效 2管理员角色
     */
    private String hasvalid;
    /**
     * 更新日期
     */
    private Date updateTime;
    /**
     * 更新人
     */
    private String updator;
    /**
     * 更新人id
     */
    private Long updatorId;
    /**
     * 直属机构id
     */
    private String directlyOrgId;
    /**
     * 层级机构id
     */
    private String hierarchyOrgId;

	/**
	 * 设置角色主键id
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取角色主键id
     */
    public Long getId() {
        return this.id;
    }
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
	 * 设置创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    /**
     * 获取创建时间
     */
    public Date getCreateTime() {
        return this.createTime;
    }
	/**
	 * 设置创建人
	 */
    public void setCreator(String creator) {
        this.creator = creator;
    }
    /**
     * 获取创建人
     */
    public String getCreator() {
        return this.creator;
    }
	/**
	 * 设置
	 */
    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }
    /**
     * 获取
     */
    public Long getCreatorId() {
        return this.creatorId;
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
	 * 设置更新日期
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取更新日期
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置更新人
	 */
    public void setUpdator(String updator) {
        this.updator = updator;
    }
    /**
     * 获取更新人
     */
    public String getUpdator() {
        return this.updator;
    }
	/**
	 * 设置更新人id
	 */
    public void setUpdatorId(Long updatorId) {
        this.updatorId = updatorId;
    }
    /**
     * 获取更新人id
     */
    public Long getUpdatorId() {
        return this.updatorId;
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

}