package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 库存表
 * @time 2017年08月10日 14:44:40
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class StockEntity extends BaseEntity {
  
    
    /**
     * 主键id
     */
    private Long id;
    /**
     * 店铺id
     */
    private Long storeId;
    /**
     * 库存地id
     */
    private Long stockGroundId;
    /**
     * 商品销售id
     */
    private Long goodsSaleId;
    /**
     * 
     */
    private Long goodsId;
    /**
     * 库存数量
     */
    private Long stockNum;
    /**
     * 创建人直属机构id
     */
    private Long directlyOrgId;
    /**
     * 创建人层级id
     */
    private String hierarchyId;
    /**
     * 是否删除(0，否;1，是,默认值0)
     */
    private Integer isDelete;
    /**
     * 创建人id
     */
    private Long creatorId;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新人id
     */
    private Long updatorId;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 扩展字段1
     */
    private String remark1;
    /**
     * 扩展字段2
     */
    private String remark2;

	/**
	 * 设置主键id
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取主键id
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置店铺id
	 */
    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }
    /**
     * 获取店铺id
     */
    public Long getStoreId() {
        return this.storeId;
    }
	/**
	 * 设置库存地id
	 */
    public void setStockGroundId(Long stockGroundId) {
        this.stockGroundId = stockGroundId;
    }
    /**
     * 获取库存地id
     */
    public Long getStockGroundId() {
        return this.stockGroundId;
    }
	/**
	 * 设置商品销售id
	 */
    public void setGoodsSaleId(Long goodsSaleId) {
        this.goodsSaleId = goodsSaleId;
    }
    /**
     * 获取商品销售id
     */
    public Long getGoodsSaleId() {
        return this.goodsSaleId;
    }
	/**
	 * 设置
	 */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }
    /**
     * 获取
     */
    public Long getGoodsId() {
        return this.goodsId;
    }
	/**
	 * 设置库存数量
	 */
    public void setStockNum(Long stockNum) {
        this.stockNum = stockNum;
    }
    /**
     * 获取库存数量
     */
    public Long getStockNum() {
        return this.stockNum;
    }
	/**
	 * 设置创建人直属机构id
	 */
    public void setDirectlyOrgId(Long directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取创建人直属机构id
     */
    public Long getDirectlyOrgId() {
        return this.directlyOrgId;
    }
	/**
	 * 设置创建人层级id
	 */
    public void setHierarchyId(String hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取创建人层级id
     */
    public String getHierarchyId() {
        return this.hierarchyId;
    }
	/**
	 * 设置是否删除(0，否;1，是,默认值0)
	 */
    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }
    /**
     * 获取是否删除(0，否;1，是,默认值0)
     */
    public Integer getIsDelete() {
        return this.isDelete;
    }
	/**
	 * 设置创建人id
	 */
    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }
    /**
     * 获取创建人id
     */
    public Long getCreatorId() {
        return this.creatorId;
    }
	/**
	 * 设置创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    /**
     * 获取创建时间
     */
    public Date getCreateTime() {
        return this.createTime;
    }
	/**
	 * 设置更新人id
	 */
    public void setUpdatorId(Long updatorId) {
        this.updatorId = updatorId;
    }
    /**
     * 获取更新人id
     */
    public Long getUpdatorId() {
        return this.updatorId;
    }
	/**
	 * 设置更新时间
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取更新时间
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置扩展字段1
	 */
    public void setRemark1(String remark1) {
        this.remark1 = remark1;
    }
    /**
     * 获取扩展字段1
     */
    public String getRemark1() {
        return this.remark1;
    }
	/**
	 * 设置扩展字段2
	 */
    public void setRemark2(String remark2) {
        this.remark2 = remark2;
    }
    /**
     * 获取扩展字段2
     */
    public String getRemark2() {
        return this.remark2;
    }

}