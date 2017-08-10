package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 进货退货表
 * @time 2017年08月10日 14:40:43
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class PurchasesRefundEntity extends BaseEntity {
  
    
    /**
     * 主键
     */
    private Long id;
    /**
     * 商品ID
     */
    private Long goodsId;
    /**
     * 进货订单号
     */
    private String purchaseOrderNo;
    /**
     * 采购价
     */
    private Long purchasePrice;
    /**
     * 采购数量
     */
    private Integer purchaseNumber;
    /**
     * 商品总额
     */
    private Long totalAmount;
    /**
     * 是否删除(0，否;1，是)
     */
    private Integer supplierId;
    /**
     * 订单类型(1：进货，2：退货)
     */
    private Integer orderType;
    /**
     * 订单状态（1：进行中，2：已完成，3：下单失败，4：撤销订单）
     */
    private String orderStatus;
    /**
     * 层级ID
     */
    private Long hierarchyId;
    /**
     * 直属机构ID
     */
    private String directlyOrgId;
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
	 * 设置商品ID
	 */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }
    /**
     * 获取商品ID
     */
    public Long getGoodsId() {
        return this.goodsId;
    }
	/**
	 * 设置进货订单号
	 */
    public void setPurchaseOrderNo(String purchaseOrderNo) {
        this.purchaseOrderNo = purchaseOrderNo;
    }
    /**
     * 获取进货订单号
     */
    public String getPurchaseOrderNo() {
        return this.purchaseOrderNo;
    }
	/**
	 * 设置采购价
	 */
    public void setPurchasePrice(Long purchasePrice) {
        this.purchasePrice = purchasePrice;
    }
    /**
     * 获取采购价
     */
    public Long getPurchasePrice() {
        return this.purchasePrice;
    }
	/**
	 * 设置采购数量
	 */
    public void setPurchaseNumber(Integer purchaseNumber) {
        this.purchaseNumber = purchaseNumber;
    }
    /**
     * 获取采购数量
     */
    public Integer getPurchaseNumber() {
        return this.purchaseNumber;
    }
	/**
	 * 设置商品总额
	 */
    public void setTotalAmount(Long totalAmount) {
        this.totalAmount = totalAmount;
    }
    /**
     * 获取商品总额
     */
    public Long getTotalAmount() {
        return this.totalAmount;
    }
	/**
	 * 设置是否删除(0，否;1，是)
	 */
    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }
    /**
     * 获取是否删除(0，否;1，是)
     */
    public Integer getSupplierId() {
        return this.supplierId;
    }
	/**
	 * 设置订单类型(1：进货，2：退货)
	 */
    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }
    /**
     * 获取订单类型(1：进货，2：退货)
     */
    public Integer getOrderType() {
        return this.orderType;
    }
	/**
	 * 设置订单状态（1：进行中，2：已完成，3：下单失败，4：撤销订单）
	 */
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
    /**
     * 获取订单状态（1：进行中，2：已完成，3：下单失败，4：撤销订单）
     */
    public String getOrderStatus() {
        return this.orderStatus;
    }
	/**
	 * 设置层级ID
	 */
    public void setHierarchyId(Long hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取层级ID
     */
    public Long getHierarchyId() {
        return this.hierarchyId;
    }
	/**
	 * 设置直属机构ID
	 */
    public void setDirectlyOrgId(String directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取直属机构ID
     */
    public String getDirectlyOrgId() {
        return this.directlyOrgId;
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