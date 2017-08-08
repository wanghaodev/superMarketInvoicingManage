package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 品牌表
 * @time 2017年08月09日 01:13:02
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsBrandEntity extends BaseEntity {
  
    
    /**
     * 主键
     */
    private Long id;
    /**
     * 品牌编号（暂定）
     */
    private Long brandNumber;
    /**
     * 品牌中文名
     */
    private String brandName;
    /**
     * 品牌英文名
     */
    private String brandEnglishName;
    /**
     * 品牌首字母
     */
    private String brandInitial;
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
     * 扩展参数
     */
    private String extendsParams;
    /**
     * 扩展字段1
     */
    private String remark1;
    /**
     * 扩展字段2
     */
    private String remark2;

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
	 * 设置品牌编号（暂定）
	 */
    public void setBrandNumber(Long brandNumber) {
        this.brandNumber = brandNumber;
    }
    /**
     * 获取品牌编号（暂定）
     */
    public Long getBrandNumber() {
        return this.brandNumber;
    }
	/**
	 * 设置品牌中文名
	 */
    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }
    /**
     * 获取品牌中文名
     */
    public String getBrandName() {
        return this.brandName;
    }
	/**
	 * 设置品牌英文名
	 */
    public void setBrandEnglishName(String brandEnglishName) {
        this.brandEnglishName = brandEnglishName;
    }
    /**
     * 获取品牌英文名
     */
    public String getBrandEnglishName() {
        return this.brandEnglishName;
    }
	/**
	 * 设置品牌首字母
	 */
    public void setBrandInitial(String brandInitial) {
        this.brandInitial = brandInitial;
    }
    /**
     * 获取品牌首字母
     */
    public String getBrandInitial() {
        return this.brandInitial;
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
	/**
	 * 设置扩展参数
	 */
    public void setExtendsParams(String extendsParams) {
        this.extendsParams = extendsParams;
    }
    /**
     * 获取扩展参数
     */
    public String getExtendsParams() {
        return this.extendsParams;
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