package com.invoicing.manage.comment.entity;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.JSON;


/**
  * 类名称： ResponseEntity
  * 类描述：基础响应类
  * 创建日期: 2017年7月27日 下午7:39:32    
  * 创建人: WangHao
  * 修改时间：2017年7月27日 下午7:39:32
  * 修改备注：
  * @version  V1.0.0 
  *
 */
@SuppressWarnings("serial")
public class ResponseEntity implements Serializable {

	public ResponseEntity() {

	}

	public ResponseEntity(Integer code, String msg) {
		this.code = code;
		this.msg = msg;
	}

	public ResponseEntity(Integer code, String msg, Object data) {
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	private Integer code = 1;

	private String msg;

	private Object data;
	/**
	 * 相应时间
	 */
	private Date respTime;

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@SuppressWarnings("unchecked")
	public <T> T getData() {
		return (T) data;
	}
	@SuppressWarnings("unchecked")
	public <T> T getData( Class<?> clz) {
		return (T) JSON.parseObject(JSON.toJSONString(data), clz);
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String toString() {
		return JSON.toJSONString(this);
	}

	public Date getRespTime() {
		return respTime;
	}

	public void setRespTime(Date respTime) {
		this.respTime = respTime;
	}
}
