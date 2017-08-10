package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 价格表
 * @time 2017年08月09日 23:20:52
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsNormalPriceEntity extends BaseEntity {
    
    /**
     * 主键
     */
    private Long id;
    /**
     * 售价(单位分)
     */
    private Long salePrice;
    /**
     * 市场价(单位分)
     */
    private Long marketPrice;
    /**
     * 采购价(单位分)
     */
    private Long purchasePrice;
    /**
     * 商品主表ID
     */
    private Long goodsId;
    /**
     * 商品销售id
     */
    private Long goodsSaleId;
    
    /**
     * 商品名称
     */
    private String goodsName;
    /**
     * 门店业务id
     */
    private Long storeId;
    /**
     * 门店类型：1门店，2网店，3 DC
     */
    private Integer storeType;
    /**
     * 门店名称
     */
    private String storeName;
    /**
     * 商品状态
     */
    private Integer goodsState;
    /**
     * 是否删除(0，否;1，是,默认值0)
     */
    private Integer isDelete;
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
	 * 设置主键
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取主键
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置售价(单位分)
	 */
    public void setSalePrice(Long salePrice) {
        this.salePrice = salePrice;
    }
    /**
     * 获取售价(单位分)
     */
    public Long getSalePrice() {
        return this.salePrice;
    }
	/**
	 * 设置市场价(单位分)
	 */
    public void setMarketPrice(Long marketPrice) {
        this.marketPrice = marketPrice;
    }
    /**
     * 获取市场价(单位分)
     */
    public Long getMarketPrice() {
        return this.marketPrice;
    }
	/**
	 * 设置采购价(单位分)
	 */
    public void setPurchasePrice(Long purchasePrice) {
        this.purchasePrice = purchasePrice;
    }
    /**
     * 获取采购价(单位分)
     */
    public Long getPurchasePrice() {
        return this.purchasePrice;
    }
	/**
	 * 设置商品主表ID
	 */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }
    /**
     * 获取商品主表ID
     */
    public Long getGoodsId() {
        return this.goodsId;
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
	 * 设置门店业务id
	 */
    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }
    /**
     * 获取门店业务id
     */
    public Long getStoreId() {
        return this.storeId;
    }
	/**
	 * 设置门店类型：1门店，2网店，3 DC
	 */
    public void setStoreType(Integer storeType) {
        this.storeType = storeType;
    }
    /**
     * 获取门店类型：1门店，2网店，3 DC
     */
    public Integer getStoreType() {
        return this.storeType;
    }
	/**
	 * 设置门店名称
	 */
    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }
    /**
     * 获取门店名称
     */
    public String getStoreName() {
        return this.storeName;
    }
	/**
	 * 设置商品状态
	 */
    public void setGoodsState(Integer goodsState) {
        this.goodsState = goodsState;
    }
    /**
     * 获取商品状态
     */
    public Integer getGoodsState() {
        return this.goodsState;
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
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

}