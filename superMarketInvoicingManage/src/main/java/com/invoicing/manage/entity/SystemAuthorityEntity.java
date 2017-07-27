package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 商户权限表
 * @time 2017年07月27日 20:20:48
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemAuthorityEntity extends BaseEntity {
  
    
    /**
     * 权限id
     */
    private Long id;
    /**
     * 权限名称
     */
    private String name;
    /**
     * 功能url
     */
    private String url;
    /**
     * 
     */
    private Date createTime;
    /**
     * 
     */
    private String creator;
    /**
     * 
     */
    private Long creatorId;
    /**
     * 是否有子菜单
     */
    private String hassub;
    /**
     * 是否有效
     */
    private String hasvalid;
    /**
     * 
     */
    private Date updateTime;
    /**
     * 层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）
     */
    private String hierarchical;
    /**
     * 权限排序
     */
    private Integer orderbyId;
    /**
     * 父权限id
     */
    private Long pid;
    /**
     * true表示显示菜单，false表示界面不显示菜单
     */
    private String showMenu;
    /**
     * menu表示菜单，button表示操作按钮
     */
    private String showType;
    /**
     * 菜单图标样式
     */
    private String iconClass;
    /**
     * 权限
     */
    private String access;

	/**
	 * 设置权限id
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取权限id
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置权限名称
	 */
    public void setName(String name) {
        this.name = name;
    }
    /**
     * 获取权限名称
     */
    public String getName() {
        return this.name;
    }
	/**
	 * 设置功能url
	 */
    public void setUrl(String url) {
        this.url = url;
    }
    /**
     * 获取功能url
     */
    public String getUrl() {
        return this.url;
    }
	/**
	 * 设置
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    /**
     * 获取
     */
    public Date getCreateTime() {
        return this.createTime;
    }
	/**
	 * 设置
	 */
    public void setCreator(String creator) {
        this.creator = creator;
    }
    /**
     * 获取
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
	 * 设置是否有子菜单
	 */
    public void setHassub(String hassub) {
        this.hassub = hassub;
    }
    /**
     * 获取是否有子菜单
     */
    public String getHassub() {
        return this.hassub;
    }
	/**
	 * 设置是否有效
	 */
    public void setHasvalid(String hasvalid) {
        this.hasvalid = hasvalid;
    }
    /**
     * 获取是否有效
     */
    public String getHasvalid() {
        return this.hasvalid;
    }
	/**
	 * 设置
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）
	 */
    public void setHierarchical(String hierarchical) {
        this.hierarchical = hierarchical;
    }
    /**
     * 获取层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）
     */
    public String getHierarchical() {
        return this.hierarchical;
    }
	/**
	 * 设置权限排序
	 */
    public void setOrderbyId(Integer orderbyId) {
        this.orderbyId = orderbyId;
    }
    /**
     * 获取权限排序
     */
    public Integer getOrderbyId() {
        return this.orderbyId;
    }
	/**
	 * 设置父权限id
	 */
    public void setPid(Long pid) {
        this.pid = pid;
    }
    /**
     * 获取父权限id
     */
    public Long getPid() {
        return this.pid;
    }
	/**
	 * 设置true表示显示菜单，false表示界面不显示菜单
	 */
    public void setShowMenu(String showMenu) {
        this.showMenu = showMenu;
    }
    /**
     * 获取true表示显示菜单，false表示界面不显示菜单
     */
    public String getShowMenu() {
        return this.showMenu;
    }
	/**
	 * 设置menu表示菜单，button表示操作按钮
	 */
    public void setShowType(String showType) {
        this.showType = showType;
    }
    /**
     * 获取menu表示菜单，button表示操作按钮
     */
    public String getShowType() {
        return this.showType;
    }
	/**
	 * 设置菜单图标样式
	 */
    public void setIconClass(String iconClass) {
        this.iconClass = iconClass;
    }
    /**
     * 获取菜单图标样式
     */
    public String getIconClass() {
        return this.iconClass;
    }
	/**
	 * 设置权限
	 */
    public void setAccess(String access) {
        this.access = access;
    }
    /**
     * 获取权限
     */
    public String getAccess() {
        return this.access;
    }

}