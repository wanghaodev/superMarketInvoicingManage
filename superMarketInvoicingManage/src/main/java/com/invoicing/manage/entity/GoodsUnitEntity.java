package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
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
     * 主键
     */
    private Long id;
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
     * 创建人ID
     */
    private Long creatorId;
    /**
     * 创建人
     */
    private String creator;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改人ID
     */
    private Long updatorId;
    /**
     * 修改人
     */
    private String updator;
    /**
     * 修改时间
     */
    private Date updateTime;

	/**
	 * 设置主键
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取主键
     */
    public Long getId() {
        return this.id;
    }
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
	/**
	 * 设置创建人ID
	 */
    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }
    /**
     * 获取创建人ID
     */
    public Long getCreatorId() {
        return this.creatorId;
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
	 * 设置修改人ID
	 */
    public void setUpdatorId(Long updatorId) {
        this.updatorId = updatorId;
    }
    /**
     * 获取修改人ID
     */
    public Long getUpdatorId() {
        return this.updatorId;
    }
	/**
	 * 设置修改人
	 */
    public void setUpdator(String updator) {
        this.updator = updator;
    }
    /**
     * 获取修改人
     */
    public String getUpdator() {
        return this.updator;
    }
	/**
	 * 设置修改时间
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取修改时间
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }

}