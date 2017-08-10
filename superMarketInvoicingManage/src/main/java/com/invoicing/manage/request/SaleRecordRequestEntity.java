package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

@SuppressWarnings("serial")
public class SaleRecordRequestEntity extends BaseRequestEntity{
	
	 /**
     * 支付方式
     */
    private Integer payMethod;
    
    /**
     * 收银员姓名
     */
    private String cashierName;
    
    /**
     * 商品名称
     */
    private String goodsName;

	public Integer getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(Integer payMethod) {
		this.payMethod = payMethod;
	}

	public String getCashierName() {
		return cashierName;
	}

	public void setCashierName(String cashierName) {
		this.cashierName = cashierName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
    
    

}
