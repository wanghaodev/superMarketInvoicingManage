package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 机构表
 * @time 2017年08月10日 15:02:15
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemOrgEntity extends BaseEntity {
  
    
    /**
     * 主键id
     */
    private Long id;
    /**
     * 机构编号
     */
    private String orgNum;
    
    /**
     * 上级机构
     */
    private String parentOrgName;
    
    /**
     * 机构名称
     */
    private String orgName;
    /**
     * 机构简称
     */
    private String orgAbbreviation;
    /**
     * 机构状态: 0待审核 1审核通过(正常)  2审核不通过 3停用
     */
    private Integer status;
    /**
     * 管理机构(上级机构id)
     */
    private Long pid;
    /**
     * 机构层级id
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
    private String area;
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
     * 创建人id
     */
    private Long creatorId;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新人id
     */
    private Long updatorId;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 扩展字段1：存储所属业务id
     */
    private String remark1;
    /**
     * 扩展字段2：存储职位id集合
     */
    private String remark2;

	/**
	 * 设置主键id
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取主键id
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置机构编号
	 */
    public void setOrgNum(String orgNum) {
        this.orgNum = orgNum;
    }
    /**
     * 获取机构编号
     */
    public String getOrgNum() {
        return this.orgNum;
    }
	/**
	 * 设置机构名称
	 */
    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }
    /**
     * 获取机构名称
     */
    public String getOrgName() {
        return this.orgName;
    }
	/**
	 * 设置机构简称
	 */
    public void setOrgAbbreviation(String orgAbbreviation) {
        this.orgAbbreviation = orgAbbreviation;
    }
    /**
     * 获取机构简称
     */
    public String getOrgAbbreviation() {
        return this.orgAbbreviation;
    }
	/**
	 * 设置机构状态: 0待审核 1审核通过(正常)  2审核不通过 3停用
	 */
    public void setStatus(Integer status) {
        this.status = status;
    }
    /**
     * 获取机构状态: 0待审核 1审核通过(正常)  2审核不通过 3停用
     */
    public Integer getStatus() {
        return this.status;
    }
	/**
	 * 设置管理机构(上级机构id)
	 */
    public void setPid(Long pid) {
        this.pid = pid;
    }
    /**
     * 获取管理机构(上级机构id)
     */
    public Long getPid() {
        return this.pid;
    }
	/**
	 * 设置机构层级id
	 */
    public void setHierarchyId(String hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取机构层级id
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
    public void setArea(String area) {
        this.area = area;
    }
    /**
     * 获取所在区
     */
    public String getArea() {
        return this.area;
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
	 * 设置创建人id
	 */
    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }
    /**
     * 获取创建人id
     */
    public Long getCreatorId() {
        return this.creatorId;
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
	 * 设置更新人id
	 */
    public void setUpdatorId(Long updatorId) {
        this.updatorId = updatorId;
    }
    /**
     * 获取更新人id
     */
    public Long getUpdatorId() {
        return this.updatorId;
    }
	/**
	 * 设置更新时间
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取更新时间
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置扩展字段1：存储所属业务id
	 */
    public void setRemark1(String remark1) {
        this.remark1 = remark1;
    }
    /**
     * 获取扩展字段1：存储所属业务id
     */
    public String getRemark1() {
        return this.remark1;
    }
	/**
	 * 设置扩展字段2：存储职位id集合
	 */
    public void setRemark2(String remark2) {
        this.remark2 = remark2;
    }
    /**
     * 获取扩展字段2：存储职位id集合
     */
    public String getRemark2() {
        return this.remark2;
    }
	public String getParentOrgName() {
		return parentOrgName;
	}
	public void setParentOrgName(String parentOrgName) {
		this.parentOrgName = parentOrgName;
	}
    
    

}