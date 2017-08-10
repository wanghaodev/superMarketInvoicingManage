package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 收银结算表
 * @time 2017年08月10日 14:40:26
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class CashsSettlementEntity extends BaseEntity {
  
    
    /**
     * 主键
     */
    private Long id;
    /**
     * 支付方式
     */
    private Integer payMethod;
    /**
     * 收银开始时间
     */
    private Date cashBeginTime;
    /**
     * 收银结束时间
     */
    private Date cashBeginEnd;
    /**
     * 收银总额
     */
    private Long totalAmount;
    /**
     * 核对结果（1：正确，2：错误，3，未核对）
     */
    private Integer checkUpResult;
    /**
     * 收银员姓名
     */
    private String cashierName;
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
     * 扩展字段3
     */
    private Long remark3;
    /**
     * 扩展字段4
     */
    private Long remark4;

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
	 * 设置支付方式
	 */
    public void setPayMethod(Integer payMethod) {
        this.payMethod = payMethod;
    }
    /**
     * 获取支付方式
     */
    public Integer getPayMethod() {
        return this.payMethod;
    }
	/**
	 * 设置收银开始时间
	 */
    public void setCashBeginTime(Date cashBeginTime) {
        this.cashBeginTime = cashBeginTime;
    }
    /**
     * 获取收银开始时间
     */
    public Date getCashBeginTime() {
        return this.cashBeginTime;
    }
	/**
	 * 设置收银结束时间
	 */
    public void setCashBeginEnd(Date cashBeginEnd) {
        this.cashBeginEnd = cashBeginEnd;
    }
    /**
     * 获取收银结束时间
     */
    public Date getCashBeginEnd() {
        return this.cashBeginEnd;
    }
	/**
	 * 设置收银总额
	 */
    public void setTotalAmount(Long totalAmount) {
        this.totalAmount = totalAmount;
    }
    /**
     * 获取收银总额
     */
    public Long getTotalAmount() {
        return this.totalAmount;
    }
	/**
	 * 设置核对结果（1：正确，2：错误，3，未核对）
	 */
    public void setCheckUpResult(Integer checkUpResult) {
        this.checkUpResult = checkUpResult;
    }
    /**
     * 获取核对结果（1：正确，2：错误，3，未核对）
     */
    public Integer getCheckUpResult() {
        return this.checkUpResult;
    }
	/**
	 * 设置收银员姓名
	 */
    public void setCashierName(String cashierName) {
        this.cashierName = cashierName;
    }
    /**
     * 获取收银员姓名
     */
    public String getCashierName() {
        return this.cashierName;
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
	/**
	 * 设置扩展字段3
	 */
    public void setRemark3(Long remark3) {
        this.remark3 = remark3;
    }
    /**
     * 获取扩展字段3
     */
    public Long getRemark3() {
        return this.remark3;
    }
	/**
	 * 设置扩展字段4
	 */
    public void setRemark4(Long remark4) {
        this.remark4 = remark4;
    }
    /**
     * 获取扩展字段4
     */
    public Long getRemark4() {
        return this.remark4;
    }

}