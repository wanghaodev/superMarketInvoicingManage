package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 商品属性维护表
 * @time 2017年08月09日 18:58:21
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsPropertyEntity extends BaseEntity {
  
    
    /**
     * 
     */
    private Long id;
    /**
     * 属性名称
     */
    private String propertyName;
    
    /**
     * 商品分类
     */
    private String categoryName;
    /**
     * 属性类型：1表示销售属性  2辅助属性
     */
    private Integer propertyType;
    /**
     * 所属类目
     */
    private Long categoryId;
    /**
     * 类目类型,1服务类，2实物类
     */
    private Integer categoryType;
    /**
     * 排序号
     */
    private Integer orderNumber;
    /**
     * 属性状态0，停用，1启用（默认）
     */
    private Integer status;
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
     * 扩展字段1
     */
    private String remark1;
    /**
     * 扩展字段2
     */
    private String remark2;

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
	 * 设置属性名称
	 */
    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }
    /**
     * 获取属性名称
     */
    public String getPropertyName() {
        return this.propertyName;
    }
	/**
	 * 设置属性类型：1表示销售属性  2辅助属性
	 */
    public void setPropertyType(Integer propertyType) {
        this.propertyType = propertyType;
    }
    /**
     * 获取属性类型：1表示销售属性  2辅助属性
     */
    public Integer getPropertyType() {
        return this.propertyType;
    }
	/**
	 * 设置所属类目
	 */
    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }
    /**
     * 获取所属类目
     */
    public Long getCategoryId() {
        return this.categoryId;
    }
	/**
	 * 设置类目类型,1服务类，2实物类
	 */
    public void setCategoryType(Integer categoryType) {
        this.categoryType = categoryType;
    }
    /**
     * 获取类目类型,1服务类，2实物类
     */
    public Integer getCategoryType() {
        return this.categoryType;
    }
	/**
	 * 设置排序号
	 */
    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }
    /**
     * 获取排序号
     */
    public Integer getOrderNumber() {
        return this.orderNumber;
    }
	/**
	 * 设置属性状态0，停用，1启用（默认）
	 */
    public void setStatus(Integer status) {
        this.status = status;
    }
    /**
     * 获取属性状态0，停用，1启用（默认）
     */
    public Integer getStatus() {
        return this.status;
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
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
    
    

}