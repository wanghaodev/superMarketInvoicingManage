package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;
/**
 *
 * @类介绍 
 * @time 2017年08月09日 09:27:24
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsSupplierEntity extends BaseEntity {
    /**
     * 供应商名称
     */
    private String supplierName;
    /**
     * 供应商简称
     */
    private String supplierShortName;
    /**
     * 供应商英文名
     */
    private String supplierEnglishName;
    /**
     * 联系人姓名
     */
    private String linkmanName;
    /**
     * 联系人性别
     */
    private Integer linkmanSex;
    /**
     * 联系人年龄
     */
    private Integer linkmanAge;
    /**
     * 供应商所在地（省市县（区））
     */
    private String supplierAddress;
    /**
     * 营业范围
     */
    private Long businessScope;
    /**
     * 联系人手机号
     */
    private String linkmanPhone;
    /**
     * 联系邮箱
     */
    private String linkEmail;
    /**
     * 行业类型
     */
    private Long businessType;
    /**
     * 状态(0：停用，1启用)
     */
    private Integer state;
    /**
     * 是否删除(0，否;1，是)
     */
    private Integer isDelete;
	/**
	 * 设置供应商名称
	 */
    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }
    /**
     * 获取供应商名称
     */
    public String getSupplierName() {
        return this.supplierName;
    }
	/**
	 * 设置供应商简称
	 */
    public void setSupplierShortName(String supplierShortName) {
        this.supplierShortName = supplierShortName;
    }
    /**
     * 获取供应商简称
     */
    public String getSupplierShortName() {
        return this.supplierShortName;
    }
	/**
	 * 设置供应商英文名
	 */
    public void setSupplierEnglishName(String supplierEnglishName) {
        this.supplierEnglishName = supplierEnglishName;
    }
    /**
     * 获取供应商英文名
     */
    public String getSupplierEnglishName() {
        return this.supplierEnglishName;
    }
	/**
	 * 设置联系人姓名
	 */
    public void setLinkmanName(String linkmanName) {
        this.linkmanName = linkmanName;
    }
    /**
     * 获取联系人姓名
     */
    public String getLinkmanName() {
        return this.linkmanName;
    }
	/**
	 * 设置联系人性别
	 */
    public void setLinkmanSex(Integer linkmanSex) {
        this.linkmanSex = linkmanSex;
    }
    /**
     * 获取联系人性别
     */
    public Integer getLinkmanSex() {
        return this.linkmanSex;
    }
	/**
	 * 设置联系人年龄
	 */
    public void setLinkmanAge(Integer linkmanAge) {
        this.linkmanAge = linkmanAge;
    }
    /**
     * 获取联系人年龄
     */
    public Integer getLinkmanAge() {
        return this.linkmanAge;
    }
	/**
	 * 设置供应商所在地（省市县（区））
	 */
    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }
    /**
     * 获取供应商所在地（省市县（区））
     */
    public String getSupplierAddress() {
        return this.supplierAddress;
    }
	/**
	 * 设置营业范围
	 */
    public void setBusinessScope(Long businessScope) {
        this.businessScope = businessScope;
    }
    /**
     * 获取营业范围
     */
    public Long getBusinessScope() {
        return this.businessScope;
    }
	/**
	 * 设置联系人手机号
	 */
    public void setLinkmanPhone(String linkmanPhone) {
        this.linkmanPhone = linkmanPhone;
    }
    /**
     * 获取联系人手机号
     */
    public String getLinkmanPhone() {
        return this.linkmanPhone;
    }
	/**
	 * 设置联系邮箱
	 */
    public void setLinkEmail(String linkEmail) {
        this.linkEmail = linkEmail;
    }
    /**
     * 获取联系邮箱
     */
    public String getLinkEmail() {
        return this.linkEmail;
    }
	/**
	 * 设置行业类型
	 */
    public void setBusinessType(Long businessType) {
        this.businessType = businessType;
    }
    /**
     * 获取行业类型
     */
    public Long getBusinessType() {
        return this.businessType;
    }
	/**
	 * 设置状态(0：停用，1启用)
	 */
    public void setState(Integer state) {
        this.state = state;
    }
    /**
     * 获取状态(0：停用，1启用)
     */
    public Integer getState() {
        return this.state;
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

    
}