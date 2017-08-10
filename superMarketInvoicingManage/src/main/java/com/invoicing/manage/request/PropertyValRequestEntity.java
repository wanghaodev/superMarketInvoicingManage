/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:PropertyValRequestEntity.java 
 * 包名:com.invoicing.manage.request 
 * 创建日期:2017年8月10日上午10:48:54 
 * 
*/  
  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;
 
/** 
 * 类名: PropertyValRequestEntity   
 * 类描述: TODO.   
 * 创建人: WangHao.   
 * 创建日期: 2017年8月10日 上午10:48:54   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@SuppressWarnings("serial")
public class PropertyValRequestEntity extends BaseRequestEntity{
	/**
	 * 属性ID
	 */
	private Long propertyId;
	
	/**
	 * 属性名
	 */
	private String propertyName;
	
	/**
	 * 属性值名
	 */
	private String propertyValue;

	public Long getPropertyId() {
		return propertyId;
	}

	public void setPropertyId(Long propertyId) {
		this.propertyId = propertyId;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public String getPropertyValue() {
		return propertyValue;
	}

	public void setPropertyValue(String propertyValue) {
		this.propertyValue = propertyValue;
	}
	
	
	

}
