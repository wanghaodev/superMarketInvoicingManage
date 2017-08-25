package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 入库主表
 * @time 2017年08月10日 14:46:15
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class StockInEntity extends BaseEntity {
  
    
    /**
     * 主键id
     */
    private Long id;
    /**
     * 凭证号
     */
    private String voucherNum;
    /**
     * 凭证类型：1采购入库
     */
    private Integer voucherType;
    /**
     * 调出单位id
     */
    private Long outUnitId;
    /**
     * 调出单位
     */
    private String outUnit;
    /**
     * 调出库存地
     */
    private Long outStockGroundId;
    /**
     * 调出库存地
     */
    private String outStockGround;
    /**
     * 调入单位id
     */
    private Long inUnitId;
    /**
     * 调入单位
     */
    private String inUnit;
    /**
     * 调入库存地id
     */
    private Long inStockGroundId;
    /**
     * 调入库存地
     */
    private String inStockGround;
    /**
     * 商品总数
     */
    private Long goodsNums;
    /**
     * 商品总额
     */
    private Long goodsAmount;
    /**
     * 商品分类总数：多少个SPU
     */
    private Long goodsSorts;
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
	 * 设置凭证号
	 */
    public void setVoucherNum(String voucherNum) {
        this.voucherNum = voucherNum;
    }
    /**
     * 获取凭证号
     */
    public String getVoucherNum() {
        return this.voucherNum;
    }
	/**
	 * 设置凭证类型：1采购入库
	 */
    public void setVoucherType(Integer voucherType) {
        this.voucherType = voucherType;
    }
    /**
     * 获取凭证类型：1采购入库
     */
    public Integer getVoucherType() {
        return this.voucherType;
    }
	/**
	 * 设置调出单位id
	 */
    public void setOutUnitId(Long outUnitId) {
        this.outUnitId = outUnitId;
    }
    /**
     * 获取调出单位id
     */
    public Long getOutUnitId() {
        return this.outUnitId;
    }
	/**
	 * 设置调出单位
	 */
    public void setOutUnit(String outUnit) {
        this.outUnit = outUnit;
    }
    /**
     * 获取调出单位
     */
    public String getOutUnit() {
        return this.outUnit;
    }
	/**
	 * 设置调出库存地
	 */
    public void setOutStockGroundId(Long outStockGroundId) {
        this.outStockGroundId = outStockGroundId;
    }
    /**
     * 获取调出库存地
     */
    public Long getOutStockGroundId() {
        return this.outStockGroundId;
    }
	/**
	 * 设置调出库存地
	 */
    public void setOutStockGround(String outStockGround) {
        this.outStockGround = outStockGround;
    }
    /**
     * 获取调出库存地
     */
    public String getOutStockGround() {
        return this.outStockGround;
    }
	/**
	 * 设置调入单位id
	 */
    public void setInUnitId(Long inUnitId) {
        this.inUnitId = inUnitId;
    }
    /**
     * 获取调入单位id
     */
    public Long getInUnitId() {
        return this.inUnitId;
    }
	/**
	 * 设置调入单位
	 */
    public void setInUnit(String inUnit) {
        this.inUnit = inUnit;
    }
    /**
     * 获取调入单位
     */
    public String getInUnit() {
        return this.inUnit;
    }
	/**
	 * 设置调入库存地id
	 */
    public void setInStockGroundId(Long inStockGroundId) {
        this.inStockGroundId = inStockGroundId;
    }
    /**
     * 获取调入库存地id
     */
    public Long getInStockGroundId() {
        return this.inStockGroundId;
    }
	/**
	 * 设置调入库存地
	 */
    public void setInStockGround(String inStockGround) {
        this.inStockGround = inStockGround;
    }
    /**
     * 获取调入库存地
     */
    public String getInStockGround() {
        return this.inStockGround;
    }
	/**
	 * 设置商品总数
	 */
    public void setGoodsNums(Long goodsNums) {
        this.goodsNums = goodsNums;
    }
    /**
     * 获取商品总数
     */
    public Long getGoodsNums() {
        return this.goodsNums;
    }
	/**
	 * 设置商品总额
	 */
    public void setGoodsAmount(Long goodsAmount) {
        this.goodsAmount = goodsAmount;
    }
    /**
     * 获取商品总额
     */
    public Long getGoodsAmount() {
        return this.goodsAmount;
    }
	/**
	 * 设置商品分类总数：多少个SPU
	 */
    public void setGoodsSorts(Long goodsSorts) {
        this.goodsSorts = goodsSorts;
    }
    /**
     * 获取商品分类总数：多少个SPU
     */
    public Long getGoodsSorts() {
        return this.goodsSorts;
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