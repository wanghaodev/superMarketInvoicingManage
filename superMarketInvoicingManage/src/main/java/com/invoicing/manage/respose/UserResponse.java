/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:UserInfoResponse.java 
 * 包名:com.invoicing.manage.respose 
 * 创建日期:2017年8月2日上午10:23:17 
 * 
*/  
  
package com.invoicing.manage.respose; 

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
public class UserResponse extends BaseEntity{
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
    
    

}
