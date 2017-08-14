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
 * 
  * 类名称： StoreRequestEntity
  * 类描述：门店请求参数实体
  * 创建日期: 2017年8月14日 上午10:10:26    
  * 创建人: WangHao
  * 修改时间：2017年8月14日 上午10:10:26
  * 修改备注：
  * @version  V1.0.0 
  *
 */
@SuppressWarnings("serial")
public class StoreRequestEntity extends BaseRequestEntity{
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
     * 业态类型：1、便利店，2、超市，3、百货，4、大卖场，5、线上商城
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
    
    
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreAbbreviation() {
		return storeAbbreviation;
	}
	public void setStoreAbbreviation(String storeAbbreviation) {
		this.storeAbbreviation = storeAbbreviation;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getFormatType() {
		return formatType;
	}
	public void setFormatType(Integer formatType) {
		this.formatType = formatType;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Long getOrgId() {
		return orgId;
	}
	public void setOrgId(Long orgId) {
		this.orgId = orgId;
	}
    
    
    
	

}
