package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 店铺表
 * @time 2017年08月14日 10:06:57
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemStoreEntity extends BaseEntity {
  
    
    /**
     * 门店名称
     */
    private String storeName;
    /**
     * 门店简称
     */
    private String storeAbbreviation;
    /**
     * 门店类型：1门店，2网店，3 DC
     */
    private Integer type;
    /**
     * 业态类型：1、便利店，2、超市，3、百货，4、大卖场，5、线上商城，6、餐饮店
     */
    private Integer formatType;
    /**
     * 门店状态，1启用，0停用
     */
    private Integer status;
    
    /**
     * 机构id
     */
    private Long orgId;
    
    /**
     * 门店名称
     */
    private String orgName;
    /**
     * 门店层级id
     */
    private String hierarchyId;
    /**
     * 用户名称
     */
    private String userName;
    /**
     * 联系人
     */
    private String contactName;
    /**
     * 联系电话
     */
    private String contactPhone;
    /**
     * 所在省
     */
    private String province;
    /**
     * 所在市
     */
    private String city;
    /**
     * 所在区
     */
    private String district;
    /**
     * 详细地址
     */
    private String address;
    /**
     * 备注
     */
    private String remark;
    /**
     * 数据有效性，1有效，0无效
     */
    private Integer valid;
    /**
     * 扩展字段1，堂食模式：1 就餐后买单，2 先买单后就餐
     */
    private String remark1;
    /**
     * 扩展字段2
     */
    private String remark2;

	/**
	 * 设置门店名称
	 */
    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }
    /**
     * 获取门店名称
     */
    public String getStoreName() {
        return this.storeName;
    }
	/**
	 * 设置门店简称
	 */
    public void setStoreAbbreviation(String storeAbbreviation) {
        this.storeAbbreviation = storeAbbreviation;
    }
    /**
     * 获取门店简称
     */
    public String getStoreAbbreviation() {
        return this.storeAbbreviation;
    }
	/**
	 * 设置门店类型：1门店，2网店，3 DC
	 */
    public void setType(Integer type) {
        this.type = type;
    }
    /**
     * 获取门店类型：1门店，2网店，3 DC
     */
    public Integer getType() {
        return this.type;
    }
	/**
	 * 设置业态类型：1、便利店，2、超市，3、百货，4、大卖场，5、线上商城，6、餐饮店
	 */
    public void setFormatType(Integer formatType) {
        this.formatType = formatType;
    }
    /**
     * 获取业态类型：1、便利店，2、超市，3、百货，4、大卖场，5、线上商城，6、餐饮店
     */
    public Integer getFormatType() {
        return this.formatType;
    }
	/**
	 * 设置门店状态，1启用，0停用
	 */
    public void setStatus(Integer status) {
        this.status = status;
    }
    /**
     * 获取门店状态，1启用，0停用
     */
    public Integer getStatus() {
        return this.status;
    }
	/**
	 * 设置机构id
	 */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }
    /**
     * 获取机构id
     */
    public Long getOrgId() {
        return this.orgId;
    }
	/**
	 * 设置门店层级id
	 */
    public void setHierarchyId(String hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取门店层级id
     */
    public String getHierarchyId() {
        return this.hierarchyId;
    }
	/**
	 * 设置用户名称
	 */
    public void setUserName(String userName) {
        this.userName = userName;
    }
    /**
     * 获取用户名称
     */
    public String getUserName() {
        return this.userName;
    }
	/**
	 * 设置联系人
	 */
    public void setContactName(String contactName) {
        this.contactName = contactName;
    }
    /**
     * 获取联系人
     */
    public String getContactName() {
        return this.contactName;
    }
	/**
	 * 设置联系电话
	 */
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }
    /**
     * 获取联系电话
     */
    public String getContactPhone() {
        return this.contactPhone;
    }
	/**
	 * 设置所在省
	 */
    public void setProvince(String province) {
        this.province = province;
    }
    /**
     * 获取所在省
     */
    public String getProvince() {
        return this.province;
    }
	/**
	 * 设置所在市
	 */
    public void setCity(String city) {
        this.city = city;
    }
    /**
     * 获取所在市
     */
    public String getCity() {
        return this.city;
    }
	/**
	 * 设置所在区
	 */
    public void setDistrict(String district) {
        this.district = district;
    }
    /**
     * 获取所在区
     */
    public String getDistrict() {
        return this.district;
    }
	/**
	 * 设置详细地址
	 */
    public void setAddress(String address) {
        this.address = address;
    }
    /**
     * 获取详细地址
     */
    public String getAddress() {
        return this.address;
    }
	/**
	 * 设置备注
	 */
    public void setRemark(String remark) {
        this.remark = remark;
    }
    /**
     * 获取备注
     */
    public String getRemark() {
        return this.remark;
    }
	/**
	 * 设置数据有效性，1有效，0无效
	 */
    public void setValid(Integer valid) {
        this.valid = valid;
    }
    /**
     * 获取数据有效性，1有效，0无效
     */
    public Integer getValid() {
        return this.valid;
    }
	/**
	 * 设置扩展字段1，堂食模式：1 就餐后买单，2 先买单后就餐
	 */
    public void setRemark1(String remark1) {
        this.remark1 = remark1;
    }
    /**
     * 获取扩展字段1，堂食模式：1 就餐后买单，2 先买单后就餐
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
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
    
    

}