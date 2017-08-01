/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:UserRequestEntity.java 
 * 包名:com.invoicing.manage.request 
 * 创建日期:2017年7月28日上午11:39:42 
 * 
*/  
  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;
 
/** 
 * 类名: UserRequestEntity   
 * 类描述: TODO. 用户请求实体  
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午11:39:42   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@SuppressWarnings("serial")
public class UserRequestEntity extends BaseRequestEntity{
	/**
	 * 用户姓名
	 */
	private String userName;
	
	/**
	 * 登录名
	 */
	private String loginName;
	
	/**
	 * 登录密码
	 */
	private String password;
	
	/**
	 * 机构名称
	 */
	private String orgName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
