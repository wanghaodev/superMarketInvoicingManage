package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 库存地
 * @time 2017年08月10日 14:45:24
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class StockGroundEntity extends BaseEntity {
  
    
    /**
     * 主键id
     */
    private Long id;
    /**
     * 库存地编号
     */
    private String number;
    /**
     * 库存地名称
     */
    private String name;
    /**
     * 库存地说明
     */
    private String instruction;
    /**
     * 数据是否初始化，1是，0否
     */
    private Integer isInitialise;
    /**
     * 数据有效性，1有效，0无效
     */
    private Integer valid;
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
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改人ID
     */
    private Long updatorId;
    /**
     * 修改时间
     */
    private Date updateTime;
    /**
     * 扩展字段1
     */
    private String remark1;
    /**
     * 扩展字段2
     */
    private String remark2;

	/**
	 * 设置主键id
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取主键id
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置库存地编号
	 */
    public void setNumber(String number) {
        this.number = number;
    }
    /**
     * 获取库存地编号
     */
    public String getNumber() {
        return this.number;
    }
	/**
	 * 设置库存地名称
	 */
    public void setName(String name) {
        this.name = name;
    }
    /**
     * 获取库存地名称
     */
    public String getName() {
        return this.name;
    }
	/**
	 * 设置库存地说明
	 */
    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }
    /**
     * 获取库存地说明
     */
    public String getInstruction() {
        return this.instruction;
    }
	/**
	 * 设置数据是否初始化，1是，0否
	 */
    public void setIsInitialise(Integer isInitialise) {
        this.isInitialise = isInitialise;
    }
    /**
     * 获取数据是否初始化，1是，0否
     */
    public Integer getIsInitialise() {
        return this.isInitialise;
    }
	/**
	 * 设置数据有效性，1有效，0无效
	 */
    public void setValid(Integer valid) {
        this.valid = valid;
    }
    /**
     * 获取数据有效性，1有效，0无效
     */
    public Integer getValid() {
        return this.valid;
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
	/**
	 * 设置扩展字段1
	 */
    public void setRemark1(String remark1) {
        this.remark1 = remark1;
    }
    /**
     * 获取扩展字段1
     */
    public String getRemark1() {
        return this.remark1;
    }
	/**
	 * 设置扩展字段2
	 */
    public void setRemark2(String remark2) {
        this.remark2 = remark2;
    }
    /**
     * 获取扩展字段2
     */
    public String getRemark2() {
        return this.remark2;
    }

}