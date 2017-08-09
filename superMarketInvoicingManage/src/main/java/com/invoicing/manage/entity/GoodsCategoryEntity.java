package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;
/**
 *
 * @类介绍 
 * @time 2017年08月09日 18:50:54
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsCategoryEntity extends BaseEntity {
  
    
    /**
     * 
     */
    private Long id;
    /**
     * 服务类目ID,规则一级类目：T+自增ID，二级类目：P+自增ID，三级类目：Q+自增ID，四级类目：S+自增ID

采销tree类目ID,规则一级类目：B+自增ID，二级类目：U+自增ID，三级类目：M+自增ID，四级类目：E+自增ID

            
            
     */
    private String categoryId;
    /**
     * 类目名称
     */
    private String categoryName;
    /**
     * 父类目id
     */
    private String parentId;
    /**
     * 类目类型,1服务类，2实物类，3餐饮类
     */
    private Integer categoryType;
    /**
     * 类目级别(1:一级，2：二级，3：三级，4：四级)
     */
    private Integer categoryLevel;
    /**
     * 进项税
     */
    private Integer inputTax;
    /**
     * 销项税
     */
    private Integer outputTax;
    /**
     * 消费税
     */
    private BigDecimal consumeTax;
    /**
     * 机构层级id
     */
    private String hierarchyId;
    /**
     * 直属机构id
     */
    private Long directlyOrgId;
    /**
     * 排序序号
     */
    private Integer orderNumber;
    /**
     * 状态，是否有效：0无效，1有效
     */
    private Integer status;
    /**
     * 是否删除(0，否;1，是,默认值0)
     */
    private Integer isDelete;
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
	 * 设置服务类目ID,规则一级类目：T+自增ID，二级类目：P+自增ID，三级类目：Q+自增ID，四级类目：S+自增ID

采销tree类目ID,规则一级类目：B+自增ID，二级类目：U+自增ID，三级类目：M+自增ID，四级类目：E+自增ID

            
            
	 */
    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
    /**
     * 获取服务类目ID,规则一级类目：T+自增ID，二级类目：P+自增ID，三级类目：Q+自增ID，四级类目：S+自增ID

采销tree类目ID,规则一级类目：B+自增ID，二级类目：U+自增ID，三级类目：M+自增ID，四级类目：E+自增ID

            
            
     */
    public String getCategoryId() {
        return this.categoryId;
    }
	/**
	 * 设置类目名称
	 */
    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
    /**
     * 获取类目名称
     */
    public String getCategoryName() {
        return this.categoryName;
    }
	/**
	 * 设置父类目id
	 */
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }
    /**
     * 获取父类目id
     */
    public String getParentId() {
        return this.parentId;
    }
	/**
	 * 设置类目类型,1服务类，2实物类，3餐饮类
	 */
    public void setCategoryType(Integer categoryType) {
        this.categoryType = categoryType;
    }
    /**
     * 获取类目类型,1服务类，2实物类，3餐饮类
     */
    public Integer getCategoryType() {
        return this.categoryType;
    }
	/**
	 * 设置类目级别(1:一级，2：二级，3：三级，4：四级)
	 */
    public void setCategoryLevel(Integer categoryLevel) {
        this.categoryLevel = categoryLevel;
    }
    /**
     * 获取类目级别(1:一级，2：二级，3：三级，4：四级)
     */
    public Integer getCategoryLevel() {
        return this.categoryLevel;
    }
	/**
	 * 设置进项税
	 */
    public void setInputTax(Integer inputTax) {
        this.inputTax = inputTax;
    }
    /**
     * 获取进项税
     */
    public Integer getInputTax() {
        return this.inputTax;
    }
	/**
	 * 设置销项税
	 */
    public void setOutputTax(Integer outputTax) {
        this.outputTax = outputTax;
    }
    /**
     * 获取销项税
     */
    public Integer getOutputTax() {
        return this.outputTax;
    }
	/**
	 * 设置消费税
	 */
    public void setConsumeTax(BigDecimal consumeTax) {
        this.consumeTax = consumeTax;
    }
    /**
     * 获取消费税
     */
    public BigDecimal getConsumeTax() {
        return this.consumeTax;
    }
	/**
	 * 设置机构层级id
	 */
    public void setHierarchyId(String hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取机构层级id
     */
    public String getHierarchyId() {
        return this.hierarchyId;
    }
	/**
	 * 设置直属机构id
	 */
    public void setDirectlyOrgId(Long directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取直属机构id
     */
    public Long getDirectlyOrgId() {
        return this.directlyOrgId;
    }
	/**
	 * 设置排序序号
	 */
    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }
    /**
     * 获取排序序号
     */
    public Integer getOrderNumber() {
        return this.orderNumber;
    }
	/**
	 * 设置状态，是否有效：0无效，1有效
	 */
    public void setStatus(Integer status) {
        this.status = status;
    }
    /**
     * 获取状态，是否有效：0无效，1有效
     */
    public Integer getStatus() {
        return this.status;
    }
	/**
	 * 设置是否删除(0，否;1，是,默认值0)
	 */
    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }
    /**
     * 获取是否删除(0，否;1，是,默认值0)
     */
    public Integer getIsDelete() {
        return this.isDelete;
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

}