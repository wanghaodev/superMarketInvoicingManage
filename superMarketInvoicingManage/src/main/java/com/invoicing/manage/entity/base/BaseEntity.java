package com.invoicing.manage.entity.base;

import java.io.Serializable;
import java.util.Date;

import com.invoicing.manage.util.DateUtil;
import com.invoicing.manage.util.StringUtil;


/**
 * 基础实体类
 *
 */
@SuppressWarnings("serial")
public class BaseEntity implements Serializable {


	/**
	 * 主键
	 */
	private Long id;

	/**
	 * 是否有效
	 */
	private Integer valid = 1;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;

	private String creator;

	private Long creatorId;

	private String updator;

	private Long updatorId;

	private String updateTimeStr;

	private String createTimeStr;


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getValid() {
		return valid;
	}

	public void setValid(Integer valid) {
		this.valid = valid;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Long getCreatorId() {
		return creatorId;
	}

	public void setCreatorId(Long creatorId) {
		this.creatorId = creatorId;
	}

	public String getUpdator() {
		return updator;
	}

	public void setUpdator(String updator) {
		this.updator = updator;
	}

	public Long getUpdatorId() {
		return updatorId;
	}

	public void setUpdatorId(Long updatorId) {
		this.updatorId = updatorId;
	}

	public String getUpdateTimeStr() {
		if (StringUtil.isNotNull(updateTime)) {
			this.updateTimeStr = DateUtil.DateToString(updateTime, DateUtil.DateStyle.YYYY_MM_DD_HH_MM_SS);
		}
		return updateTimeStr;
	}

	public void setUpdateTimeStr(String updateTimeStr) {
		this.updateTimeStr = updateTimeStr;
	}

	public String getCreateTimeStr() {
		if (StringUtil.isNotNull(createTime)) {
			createTimeStr =  DateUtil.DateToString(createTime, DateUtil.DateStyle.YYYY_MM_DD_HH_MM_SS);
		}
		return createTimeStr;
	}

	public void setCreateTimeStr(String createTimeStr) {
		this.createTimeStr = createTimeStr;
	}
}
