package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
/**
 *
 * @类介绍 区域实体类
 * @time 2017年07月27日 19:41:57
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class AreaEntity extends BaseEntity {
    /**
     * 父id
     */
    private String pid;
    /**
     *区域
     */
    private String shortMapName;
    /**
     * 简称
     */
    private String shortName;
    /**
     * 拼音
     */
    private String spelling;
    /**
     * 状态
     */
    private String state;
    /**
     * 类型
     */
    private String type;
    /**
     * 邮编
     */
    private String zip;
    /**
     * 名称
     */
    private String name;

	/**
	 * 设置
	 */
    public void setPid(String pid) {
        this.pid = pid;
    }
    /**
     * 获取
     */
    public String getPid() {
        return this.pid;
    }
	/**
	 * 设置
	 */
    public void setShortMapName(String shortMapName) {
        this.shortMapName = shortMapName;
    }
    /**
     * 获取
     */
    public String getShortMapName() {
        return this.shortMapName;
    }
	/**
	 * 设置
	 */
    public void setShortName(String shortName) {
        this.shortName = shortName;
    }
    /**
     * 获取
     */
    public String getShortName() {
        return this.shortName;
    }
	/**
	 * 设置
	 */
    public void setSpelling(String spelling) {
        this.spelling = spelling;
    }
    /**
     * 获取
     */
    public String getSpelling() {
        return this.spelling;
    }
	/**
	 * 设置
	 */
    public void setState(String state) {
        this.state = state;
    }
    /**
     * 获取
     */
    public String getState() {
        return this.state;
    }
	/**
	 * 设置
	 */
    public void setType(String type) {
        this.type = type;
    }
    /**
     * 获取
     */
    public String getType() {
        return this.type;
    }
	/**
	 * 设置
	 */
    public void setZip(String zip) {
        this.zip = zip;
    }
    /**
     * 获取
     */
    public String getZip() {
        return this.zip;
    }
	/**
	 * 设置
	 */
    public void setName(String name) {
        this.name = name;
    }
    /**
     * 获取
     */
    public String getName() {
        return this.name;
    }

}