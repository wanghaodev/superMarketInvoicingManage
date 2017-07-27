package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 商户用户表
 * @time 2017年07月27日 20:19:33
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemUserEntity extends BaseEntity {
  
    
    /**
     * 
     */
    private Long id;
    /**
     * 登录用户名
     */
    private String loginName;
    /**
     * 用户名称
     */
    private String userName;
    /**
     * 密码
     */
    private String password;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 用户类型：0 机构管理员   1机构普通用户  2门店管理员  3门店普通用户 4店长 5收银员 6机构管理者 7门店管理者
     */
    private Integer userType;
    /**
     * 状态：0关闭    1开启  2临时用户
     */
    private Integer state;
    /**
     * 创建人id
     */
    private Long creatorId;
    /**
     * 
     */
    private Date createTime;
    /**
     * 
     */
    private Long updatorId;
    /**
     * 
     */
    private Date updateTime;
    /**
     * 直属机构id
     */
    private String directlyOrgId;
    /**
     * 层级机构id
     */
    private String hierarchyOrgId;
    /**
     * 用户证件类型:1身份证
     */
    private Integer certificatesType;
    /**
     * 证件号码
     */
    private String certificatesNum;

	/**
	 * 设置
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置登录用户名
	 */
    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }
    /**
     * 获取登录用户名
     */
    public String getLoginName() {
        return this.loginName;
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
	 * 设置密码
	 */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
     * 获取密码
     */
    public String getPassword() {
        return this.password;
    }
	/**
	 * 设置手机号
	 */
    public void setPhone(String phone) {
        this.phone = phone;
    }
    /**
     * 获取手机号
     */
    public String getPhone() {
        return this.phone;
    }
	/**
	 * 设置用户类型：0 机构管理员   1机构普通用户  2门店管理员  3门店普通用户 4店长 5收银员 6机构管理者 7门店管理者
	 */
    public void setUserType(Integer userType) {
        this.userType = userType;
    }
    /**
     * 获取用户类型：0 机构管理员   1机构普通用户  2门店管理员  3门店普通用户 4店长 5收银员 6机构管理者 7门店管理者
     */
    public Integer getUserType() {
        return this.userType;
    }
	/**
	 * 设置状态：0关闭    1开启  2临时用户
	 */
    public void setState(Integer state) {
        this.state = state;
    }
    /**
     * 获取状态：0关闭    1开启  2临时用户
     */
    public Integer getState() {
        return this.state;
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
	 * 设置
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    /**
     * 获取
     */
    public Date getCreateTime() {
        return this.createTime;
    }
	/**
	 * 设置
	 */
    public void setUpdatorId(Long updatorId) {
        this.updatorId = updatorId;
    }
    /**
     * 获取
     */
    public Long getUpdatorId() {
        return this.updatorId;
    }
	/**
	 * 设置
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置直属机构id
	 */
    public void setDirectlyOrgId(String directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取直属机构id
     */
    public String getDirectlyOrgId() {
        return this.directlyOrgId;
    }
	/**
	 * 设置层级机构id
	 */
    public void setHierarchyOrgId(String hierarchyOrgId) {
        this.hierarchyOrgId = hierarchyOrgId;
    }
    /**
     * 获取层级机构id
     */
    public String getHierarchyOrgId() {
        return this.hierarchyOrgId;
    }
	/**
	 * 设置用户证件类型:1身份证
	 */
    public void setCertificatesType(Integer certificatesType) {
        this.certificatesType = certificatesType;
    }
    /**
     * 获取用户证件类型:1身份证
     */
    public Integer getCertificatesType() {
        return this.certificatesType;
    }
	/**
	 * 设置证件号码
	 */
    public void setCertificatesNum(String certificatesNum) {
        this.certificatesNum = certificatesNum;
    }
    /**
     * 获取证件号码
     */
    public String getCertificatesNum() {
        return this.certificatesNum;
    }

}