package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

@SuppressWarnings("serial")
public class GoodsCategoryRequestEntity extends BaseRequestEntity {
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
	
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public Integer getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(Integer categoryType) {
		this.categoryType = categoryType;
	}
	public Integer getCategoryLevel() {
		return categoryLevel;
	}
	public void setCategoryLevel(Integer categoryLevel) {
		this.categoryLevel = categoryLevel;
	}

}
