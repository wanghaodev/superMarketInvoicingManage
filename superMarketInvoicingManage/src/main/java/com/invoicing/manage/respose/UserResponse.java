/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:UserInfoResponse.java 
 * 包名:com.invoicing.manage.respose 
 * 创建日期:2017年8月2日上午10:23:17 
 * 
*/  
  
package com.invoicing.manage.respose; 

import java.util.Date;

import com.invoicing.manage.comment.entity.BaseEntity;
 
/** 
 * 类名: UserInfoResponse   
 * 类描述: TODO.   
 * 创建人: WangHao.   
 * 创建日期: 2017年8月2日 上午10:23:17   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@SuppressWarnings("serial")
public class UserResponse extends BaseEntity{
	 /**
	  * 用户ID	
	  */
	 private Long userId;
	 
	 /**
	  * 测试ID
	  */
	 private Long roleId; 
	
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
     * 角色名称
     */
    private String roleName;
    
    
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return super.getId();
	}
	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		super.setId(id);
	}
	@Override
	public Integer getValid() {
		// TODO Auto-generated method stub
		return super.getValid();
	}
	@Override
	public void setValid(Integer valid) {
		// TODO Auto-generated method stub
		super.setValid(valid);
	}
	@Override
	public Date getCreateTime() {
		// TODO Auto-generated method stub
		return super.getCreateTime();
	}
	@Override
	public void setCreateTime(Date createTime) {
		// TODO Auto-generated method stub
		super.setCreateTime(createTime);
	}
	@Override
	public Date getUpdateTime() {
		// TODO Auto-generated method stub
		return super.getUpdateTime();
	}
	@Override
	public void setUpdateTime(Date updateTime) {
		// TODO Auto-generated method stub
		super.setUpdateTime(updateTime);
	}
	@Override
	public String getCreator() {
		// TODO Auto-generated method stub
		return super.getCreator();
	}
	@Override
	public void setCreator(String creator) {
		// TODO Auto-generated method stub
		super.setCreator(creator);
	}
	@Override
	public Long getCreatorId() {
		// TODO Auto-generated method stub
		return super.getCreatorId();
	}
	@Override
	public void setCreatorId(Long creatorId) {
		// TODO Auto-generated method stub
		super.setCreatorId(creatorId);
	}
	@Override
	public String getUpdator() {
		// TODO Auto-generated method stub
		return super.getUpdator();
	}
	@Override
	public void setUpdator(String updator) {
		// TODO Auto-generated method stub
		super.setUpdator(updator);
	}
	@Override
	public Long getUpdatorId() {
		// TODO Auto-generated method stub
		return super.getUpdatorId();
	}
	@Override
	public void setUpdatorId(Long updatorId) {
		// TODO Auto-generated method stub
		super.setUpdatorId(updatorId);
	}
	@Override
	public String getUpdateTimeStr() {
		// TODO Auto-generated method stub
		return super.getUpdateTimeStr();
	}
	@Override
	public void setUpdateTimeStr(String updateTimeStr) {
		// TODO Auto-generated method stub
		super.setUpdateTimeStr(updateTimeStr);
	}
	@Override
	public String getCreateTimeStr() {
		// TODO Auto-generated method stub
		return super.getCreateTimeStr();
	}
	@Override
	public void setCreateTimeStr(String createTimeStr) {
		// TODO Auto-generated method stub
		super.setCreateTimeStr(createTimeStr);
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
    
    

}
