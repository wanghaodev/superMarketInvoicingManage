package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

public class GoodsNormalPriceRequestEntity extends BaseRequestEntity{
	
	private String categoryName;
	
	private String goodsName;

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	
	
}
