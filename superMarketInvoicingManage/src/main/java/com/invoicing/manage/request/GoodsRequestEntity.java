package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

public class GoodsRequestEntity extends BaseRequestEntity{
	/**
     * 服务商品名称
     */
    private String goodsName;
    /**
     * 商品简称
     */
    private String goodsShortName;
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsShortName() {
		return goodsShortName;
	}
	public void setGoodsShortName(String goodsShortName) {
		this.goodsShortName = goodsShortName;
	}
    
}
