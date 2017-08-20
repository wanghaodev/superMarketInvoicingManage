package com.invoicing.manage.respose;

public class StatisticResponseEntity {
	
	/**
	 * 机构id
	 */
	private  Long orgId;
	
	/**
	 * 机构名称
	 */
	private  String orgName;
	
	/**
	 * 上级机构名称
	 */
	private  String ParentOrgName;
	
	
	/**
	 * 门店id
	 */
	private  Long storeId;
	
	/**
	 * 门店名称
	 */
	private  String storeName;
	
	 /**
     * 商品名称
     */
    private String goodsName;
    
    /**
     * SPU
     */
    private String goodsSpu;
    
    
    /**
     * 支付方式（1现金，2银行卡，3微信，4支付宝，5,预付卡（会员卡））
     */
    private Integer payMethod;
    
    /**
     * 现金收银
     */
    private Long cashPay;
    
    /**
     * 银行卡收银
     */
    private Long bankPay;
    
    /**
     * 支付宝收银
     */
    private Long zhifubaoPay;
    
    /**
     * 微信收银
     */
    private Long weinxinPay;
    
    /**
     * 会员卡收银
     */
    private Long rePayCardPay;
    
    /**
     * 销售数量
     */
    private Integer saleNum;
    
    /**
     * 销售总额
     */
    private Long totalAmount;
    
    /**
     * 销售额
     */
    private Long saleAmount;
    
    /**
     * 单个商品所占销售总额的比例
     */
    private Double goodsScale;

	public Long getOrgId() {
		return orgId;
	}

	public void setOrgId(Long orgId) {
		this.orgId = orgId;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsSpu() {
		return goodsSpu;
	}

	public void setGoodsSpu(String goodsSpu) {
		this.goodsSpu = goodsSpu;
	}

	public Integer getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(Integer payMethod) {
		this.payMethod = payMethod;
	}

	public Long getCashPay() {
		return cashPay;
	}

	public void setCashPay(Long cashPay) {
		this.cashPay = cashPay;
	}

	public Long getBankPay() {
		return bankPay;
	}

	public void setBankPay(Long bankPay) {
		this.bankPay = bankPay;
	}

	public Long getZhifubaoPay() {
		return zhifubaoPay;
	}

	public void setZhifubaoPay(Long zhifubaoPay) {
		this.zhifubaoPay = zhifubaoPay;
	}

	public Long getWeinxinPay() {
		return weinxinPay;
	}

	public void setWeinxinPay(Long weinxinPay) {
		this.weinxinPay = weinxinPay;
	}

	public Long getRePayCardPay() {
		return rePayCardPay;
	}

	public void setRePayCardPay(Long rePayCardPay) {
		this.rePayCardPay = rePayCardPay;
	}

	public Integer getSaleNum() {
		return saleNum;
	}

	public void setSaleNum(Integer saleNum) {
		this.saleNum = saleNum;
	}

	public Long getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Long totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Double getGoodsScale() {
		return goodsScale;
	}

	public void setGoodsScale(Double goodsScale) {
		this.goodsScale = goodsScale;
	}

	public String getParentOrgName() {
		return ParentOrgName;
	}

	public void setParentOrgName(String parentOrgName) {
		ParentOrgName = parentOrgName;
	}

	public Long getSaleAmount() {
		return saleAmount;
	}

	public void setSaleAmount(Long saleAmount) {
		this.saleAmount = saleAmount;
	}
    
    
    

}
