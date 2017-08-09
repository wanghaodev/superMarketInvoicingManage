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
public class GoodsBrandRequestEntity extends BaseRequestEntity{
	
	/**
     * 品牌中文名
     */
    private String brandName;
    /**
     * 品牌英文名
     */
    private String brandEnglishName;
    /**
     * 品牌首字母
     */
    private String brandInitial;
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandEnglishName() {
		return brandEnglishName;
	}
	public void setBrandEnglishName(String brandEnglishName) {
		this.brandEnglishName = brandEnglishName;
	}
	public String getBrandInitial() {
		return brandInitial;
	}
	public void setBrandInitial(String brandInitial) {
		this.brandInitial = brandInitial;
	}
    
    
}
