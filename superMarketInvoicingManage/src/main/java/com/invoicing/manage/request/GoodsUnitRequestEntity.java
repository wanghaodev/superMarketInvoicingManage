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
public class GoodsUnitRequestEntity extends BaseRequestEntity{
	
	/**
     * 单位名称
     */
    private String unitName;
    /**
     * 英文名称
     */
    private String unitEnglishName;
    
    
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getUnitEnglishName() {
		return unitEnglishName;
	}
	public void setUnitEnglishName(String unitEnglishName) {
		this.unitEnglishName = unitEnglishName;
	}
    
    
    
}
