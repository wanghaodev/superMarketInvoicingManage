package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;
/**
 *
 * @类介绍 单位表
 * @time 2017年08月09日 01:12:31
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsUnitEntity extends BaseEntity {
    /**
     * 单位名称
     */
    private String unitName;
    /**
     * 英文名称
     */
    private String unitEnglishName;
    /**
     * 单位类型（1：销售单位，2：采购单位,3：餐饮单位）
     */
    private Integer unitType;
    /**
     * 最小包装单位类型（1：EA,2:克）
     */
    private Integer minimumUnitType;
    /**
     * 最小单位值
     */
    private Integer minimumUnitVal;
    /**
     * 状态(0：停用，1启用)
     */
    private Integer state;
    /**
     * 是否删除(0，否;1，是)
     */
    private Integer isDelete;
    /**
     * 直属机构ID
     */
    private Long directlyOrgId;
    /**
     * 机构层级ID
     */
    private String hierarchyId;

	/**
	 * 设置单位名称
	 */
    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }
    /**
     * 获取单位名称
     */
    public String getUnitName() {
        return this.unitName;
    }
	/**
	 * 设置英文名称
	 */
    public void setUnitEnglishName(String unitEnglishName) {
        this.unitEnglishName = unitEnglishName;
    }
    /**
     * 获取英文名称
     */
    public String getUnitEnglishName() {
        return this.unitEnglishName;
    }
	/**
	 * 设置单位类型（1：销售单位，2：采购单位,3：餐饮单位）
	 */
    public void setUnitType(Integer unitType) {
        this.unitType = unitType;
    }
    /**
     * 获取单位类型（1：销售单位，2：采购单位,3：餐饮单位）
     */
    public Integer getUnitType() {
        return this.unitType;
    }
	/**
	 * 设置最小包装单位类型（1：EA,2:克）
	 */
    public void setMinimumUnitType(Integer minimumUnitType) {
        this.minimumUnitType = minimumUnitType;
    }
    /**
     * 获取最小包装单位类型（1：EA,2:克）
     */
    public Integer getMinimumUnitType() {
        return this.minimumUnitType;
    }
	/**
	 * 设置最小单位值
	 */
    public void setMinimumUnitVal(Integer minimumUnitVal) {
        this.minimumUnitVal = minimumUnitVal;
    }
    /**
     * 获取最小单位值
     */
    public Integer getMinimumUnitVal() {
        return this.minimumUnitVal;
    }
	/**
	 * 设置状态(0：停用，1启用)
	 */
    public void setState(Integer state) {
        this.state = state;
    }
    /**
     * 获取状态(0：停用，1启用)
     */
    public Integer getState() {
        return this.state;
    }
	/**
	 * 设置是否删除(0，否;1，是)
	 */
    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }
    /**
     * 获取是否删除(0，否;1，是)
     */
    public Integer getIsDelete() {
        return this.isDelete;
    }
	/**
	 * 设置直属机构ID
	 */
    public void setDirectlyOrgId(Long directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取直属机构ID
     */
    public Long getDirectlyOrgId() {
        return this.directlyOrgId;
    }
	/**
	 * 设置机构层级ID
	 */
    public void setHierarchyId(String hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取机构层级ID
     */
    public String getHierarchyId() {
        return this.hierarchyId;
    }

}