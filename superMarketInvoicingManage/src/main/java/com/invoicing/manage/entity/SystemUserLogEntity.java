package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 
 * @time 2017年07月27日 20:20:17
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class SystemUserLogEntity extends BaseEntity {
  
    
    /**
     * 
     */
    private Long id;
    /**
     * 商户用户id
     */
    private Long mergeUserId;
    /**
     * 
     */
    private String ip;
    /**
     * 动作描述
     */
    private String descrption;
    /**
     * 数据是否有效，1有效，0无效
     */
    private Integer valid;
    /**
     * 
     */
    private Date createTime;
    /**
     * 
     */
    private Date updateTime;
    /**
     * 事件类型：1签到  2签退  3登录  4退出
     */
    private Integer typeId;

	/**
	 * 设置
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置商户用户id
	 */
    public void setMergeUserId(Long mergeUserId) {
        this.mergeUserId = mergeUserId;
    }
    /**
     * 获取商户用户id
     */
    public Long getMergeUserId() {
        return this.mergeUserId;
    }
	/**
	 * 设置
	 */
    public void setIp(String ip) {
        this.ip = ip;
    }
    /**
     * 获取
     */
    public String getIp() {
        return this.ip;
    }
	/**
	 * 设置动作描述
	 */
    public void setDescrption(String descrption) {
        this.descrption = descrption;
    }
    /**
     * 获取动作描述
     */
    public String getDescrption() {
        return this.descrption;
    }
	/**
	 * 设置数据是否有效，1有效，0无效
	 */
    public void setValid(Integer valid) {
        this.valid = valid;
    }
    /**
     * 获取数据是否有效，1有效，0无效
     */
    public Integer getValid() {
        return this.valid;
    }
	/**
	 * 设置
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    /**
     * 获取
     */
    public Date getCreateTime() {
        return this.createTime;
    }
	/**
	 * 设置
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置事件类型：1签到  2签退  3登录  4退出
	 */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
    /**
     * 获取事件类型：1签到  2签退  3登录  4退出
     */
    public Integer getTypeId() {
        return this.typeId;
    }

}