package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 入库明细表
 * @time 2017年08月10日 14:46:37
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class StockInDetailEntity extends BaseEntity {
  
    
    /**
     * 主键id
     */
    private Long id;
    /**
     * 出入库记录id
     */
    private Long stockInId;
    /**
     * 商品saleId
     */
    private Long goodsSaleId;
    /**
     * 商品id
     */
    private Long goodsId;
    /**
     * 采购价
     */
    private Long purchasePrice;
    /**
     * 入库数量
     */
    private Integer storageNum;
    /**
     * 采购价小计
     */
    private Long totalPurchasePrice;
    /**
     * 入库单位id
     */
    private Long unitId;
    /**
     * 商品详情json格式
     */
    private String goodsDetails;
    /**
     * 创建人直属机构id
     */
    private Long directlyOrgId;
    /**
     * 创建人层级id
     */
    private String hierarchyId;
    /**
     * 数据有效性，1有效，0无效
     */
    private Integer valid;
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
	 * 设置出入库记录id
	 */
    public void setStockInId(Long stockInId) {
        this.stockInId = stockInId;
    }
    /**
     * 获取出入库记录id
     */
    public Long getStockInId() {
        return this.stockInId;
    }
	/**
	 * 设置商品saleId
	 */
    public void setGoodsSaleId(Long goodsSaleId) {
        this.goodsSaleId = goodsSaleId;
    }
    /**
     * 获取商品saleId
     */
    public Long getGoodsSaleId() {
        return this.goodsSaleId;
    }
	/**
	 * 设置商品id
	 */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }
    /**
     * 获取商品id
     */
    public Long getGoodsId() {
        return this.goodsId;
    }
	/**
	 * 设置采购价
	 */
    public void setPurchasePrice(Long purchasePrice) {
        this.purchasePrice = purchasePrice;
    }
    /**
     * 获取采购价
     */
    public Long getPurchasePrice() {
        return this.purchasePrice;
    }
	/**
	 * 设置入库数量
	 */
    public void setStorageNum(Integer storageNum) {
        this.storageNum = storageNum;
    }
    /**
     * 获取入库数量
     */
    public Integer getStorageNum() {
        return this.storageNum;
    }
	/**
	 * 设置采购价小计
	 */
    public void setTotalPurchasePrice(Long totalPurchasePrice) {
        this.totalPurchasePrice = totalPurchasePrice;
    }
    /**
     * 获取采购价小计
     */
    public Long getTotalPurchasePrice() {
        return this.totalPurchasePrice;
    }
	/**
	 * 设置入库单位id
	 */
    public void setUnitId(Long unitId) {
        this.unitId = unitId;
    }
    /**
     * 获取入库单位id
     */
    public Long getUnitId() {
        return this.unitId;
    }
	/**
	 * 设置商品详情json格式
	 */
    public void setGoodsDetails(String goodsDetails) {
        this.goodsDetails = goodsDetails;
    }
    /**
     * 获取商品详情json格式
     */
    public String getGoodsDetails() {
        return this.goodsDetails;
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
	 * 设置数据有效性，1有效，0无效
	 */
    public void setValid(Integer valid) {
        this.valid = valid;
    }
    /**
     * 获取数据有效性，1有效，0无效
     */
    public Integer getValid() {
        return this.valid;
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