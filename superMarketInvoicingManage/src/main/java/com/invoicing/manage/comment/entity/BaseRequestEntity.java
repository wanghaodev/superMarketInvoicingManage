/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:BaseRequestEntity.java 
 * 包名:com.invoicing.manage.request 
 * 创建日期:2017年7月28日上午11:35:26 
 * 
 */

package com.invoicing.manage.comment.entity;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.JSON;

/**
 * 类名: BaseRequestEntity 类描述: TODO. 基础请求实体 创建人: WangHao. 创建日期: 2017年7月28日
 * 上午11:35:26 修改备注：
 * 
 * @author WangHao
 * @version V1.0.0
 * @since JDK 1.7
 * @see
 */
@SuppressWarnings("serial")
public class BaseRequestEntity implements Serializable{
	

	/**
	 *页码 
	 */
	private int pageNo = 1;

	/**
	 * 每页显示条数
	 */
	private int pageSize = 10;

	/**
	 * 请求时间
	 */
	private Date reqTime;

	
	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String toString() {
		return JSON.toJSONString(this);
	}

	public Date getReqTime() {
		return reqTime;
	}

	public void setReqTime(Date reqTime) {
		this.reqTime = reqTime;
	}
	
	

}
