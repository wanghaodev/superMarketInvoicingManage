package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

@SuppressWarnings("serial")
public class PurchasesRequestEntity extends BaseRequestEntity{
    /**
     * 进货订单号
     */
    private String purchaseOrderNo;
    
    /**
     * 订单类型(1：进货，2：退货)
     */
    private Integer orderType;
    
    /**
     * 订单状态（1：进行中，2：已完成，3：下单失败，4：撤销订单）
     */
    private String orderStatus;

	public String getPurchaseOrderNo() {
		return purchaseOrderNo;
	}

	public void setPurchaseOrderNo(String purchaseOrderNo) {
		this.purchaseOrderNo = purchaseOrderNo;
	}

	public Integer getOrderType() {
		return orderType;
	}

	public void setOrderType(Integer orderType) {
		this.orderType = orderType;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

    
    
    
}
