/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:AreaEntityRequestEntity.java 
 * 包名:com.invoicing.manage.request 
 * 创建日期:2017年8月9日上午9:37:56 
 * 
*/  
  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;
 
/** 
 * 类名: AreaEntityRequestEntity   
 * 类描述: TODO.   
 * 创建人: WangHao.   
 * 创建日期: 2017年8月9日 上午9:37:56   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@SuppressWarnings("serial")
public class GoodsSupplierRequestEntity extends BaseRequestEntity{
	
	private String supplierName;

	/**
	 * 联系人姓名
	 */
	private String linkmanName;

	/**
	 * 营业范围
	 */
	private Long businessScope;

	/**
	 * 行业类型
	 */
	private Long businessType;

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getLinkmanName() {
		return linkmanName;
	}

	public void setLinkmanName(String linkmanName) {
		this.linkmanName = linkmanName;
	}

	public Long getBusinessScope() {
		return businessScope;
	}

	public void setBusinessScope(Long businessScope) {
		this.businessScope = businessScope;
	}

	public Long getBusinessType() {
		return businessType;
	}

	public void setBusinessType(Long businessType) {
		this.businessType = businessType;
	}
	
	
	 
    
}
