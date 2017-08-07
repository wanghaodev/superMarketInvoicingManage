package com.invoicing.manage.entity;

import com.snailf.platforms.common.entity.BaseEntity;
import java.util.Date;
/**
 *
 * @类介绍 商品主表
 * @time 2017年07月30日 18:14:37
 * @version 1.0
 *
 **/

@SuppressWarnings("serial")
public class GoodsEntity extends BaseEntity {
  
    
    /**
     * 主键
     */
    private Long id;
    /**
     * 服务商品名称
     */
    private String goodsName;
    /**
     * 商品简称
     */
    private String goodsShortName;
    /**
     * SPU
     */
    private String goodsSpu;
    /**
     * 商品类型,1实物类，2服务类,3餐饮类
     */
    private Integer goodsType;
    /**
     * 是否为自营商品 1自营 ，0非自营
     */
    private Integer selfSupport;
    /**
     * 类目id
     */
    private Long goodsCategoryId;
    /**
     * 是否显示销售属性:0否，1是（页面对应多销售属性）
     */
    private Integer isMultiProperties;
    /**
     * SKU个数
     */
    private Integer skuNums;
    /**
     * json保存选择类目属性及属性值
     */
    private String saleMap;
    /**
     * 状态：0试销商品，1可订货，可销售，2可订货，不可销售，3不可订货，可销售，4不可订货，不可销售5，快速出清6汰换品
            
     */
    private Integer state;
    /**
     * 是否删除(0，否;1，是,默认值0)
     */
    private Integer isDelete;
    /**
     * 直属机构ID
     */
    private Long directlyOrgId;
    /**
     * 机构层级ID
     */
    private String hierarchyId;
    /**
     * 创建人ID
     */
    private Long creatorId;
    /**
     * 创建人
     */
    private String creator;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改人ID
     */
    private Long updatorId;
    /**
     * 修改人
     */
    private String updator;
    /**
     * 修改时间
     */
    private Date updateTime;
    /**
     * 扩展参数，冗余扩展表中的名值对
     */
    private String extendsParams;
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
	 * 设置服务商品名称
	 */
    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }
    /**
     * 获取服务商品名称
     */
    public String getGoodsName() {
        return this.goodsName;
    }
	/**
	 * 设置商品简称
	 */
    public void setGoodsShortName(String goodsShortName) {
        this.goodsShortName = goodsShortName;
    }
    /**
     * 获取商品简称
     */
    public String getGoodsShortName() {
        return this.goodsShortName;
    }
	/**
	 * 设置SPU
	 */
    public void setGoodsSpu(String goodsSpu) {
        this.goodsSpu = goodsSpu;
    }
    /**
     * 获取SPU
     */
    public String getGoodsSpu() {
        return this.goodsSpu;
    }
	/**
	 * 设置商品类型,1实物类，2服务类,3餐饮类
	 */
    public void setGoodsType(Integer goodsType) {
        this.goodsType = goodsType;
    }
    /**
     * 获取商品类型,1实物类，2服务类,3餐饮类
     */
    public Integer getGoodsType() {
        return this.goodsType;
    }
	/**
	 * 设置是否为自营商品 1自营 ，0非自营
	 */
    public void setSelfSupport(Integer selfSupport) {
        this.selfSupport = selfSupport;
    }
    /**
     * 获取是否为自营商品 1自营 ，0非自营
     */
    public Integer getSelfSupport() {
        return this.selfSupport;
    }
	/**
	 * 设置类目id
	 */
    public void setGoodsCategoryId(Long goodsCategoryId) {
        this.goodsCategoryId = goodsCategoryId;
    }
    /**
     * 获取类目id
     */
    public Long getGoodsCategoryId() {
        return this.goodsCategoryId;
    }
	/**
	 * 设置是否显示销售属性:0否，1是（页面对应多销售属性）
	 */
    public void setIsMultiProperties(Integer isMultiProperties) {
        this.isMultiProperties = isMultiProperties;
    }
    /**
     * 获取是否显示销售属性:0否，1是（页面对应多销售属性）
     */
    public Integer getIsMultiProperties() {
        return this.isMultiProperties;
    }
	/**
	 * 设置SKU个数
	 */
    public void setSkuNums(Integer skuNums) {
        this.skuNums = skuNums;
    }
    /**
     * 获取SKU个数
     */
    public Integer getSkuNums() {
        return this.skuNums;
    }
	/**
	 * 设置json保存选择类目属性及属性值
	 */
    public void setSaleMap(String saleMap) {
        this.saleMap = saleMap;
    }
    /**
     * 获取json保存选择类目属性及属性值
     */
    public String getSaleMap() {
        return this.saleMap;
    }
	/**
	 * 设置状态：0试销商品，1可订货，可销售，2可订货，不可销售，3不可订货，可销售，4不可订货，不可销售5，快速出清6汰换品
            
	 */
    public void setState(Integer state) {
        this.state = state;
    }
    /**
     * 获取状态：0试销商品，1可订货，可销售，2可订货，不可销售，3不可订货，可销售，4不可订货，不可销售5，快速出清6汰换品
            
     */
    public Integer getState() {
        return this.state;
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
	 * 设置直属机构ID
	 */
    public void setDirectlyOrgId(Long directlyOrgId) {
        this.directlyOrgId = directlyOrgId;
    }
    /**
     * 获取直属机构ID
     */
    public Long getDirectlyOrgId() {
        return this.directlyOrgId;
    }
	/**
	 * 设置机构层级ID
	 */
    public void setHierarchyId(String hierarchyId) {
        this.hierarchyId = hierarchyId;
    }
    /**
     * 获取机构层级ID
     */
    public String getHierarchyId() {
        return this.hierarchyId;
    }
	/**
	 * 设置创建人ID
	 */
    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }
    /**
     * 获取创建人ID
     */
    public Long getCreatorId() {
        return this.creatorId;
    }
	/**
	 * 设置创建人
	 */
    public void setCreator(String creator) {
        this.creator = creator;
    }
    /**
     * 获取创建人
     */
    public String getCreator() {
        return this.creator;
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
	 * 设置修改人ID
	 */
    public void setUpdatorId(Long updatorId) {
        this.updatorId = updatorId;
    }
    /**
     * 获取修改人ID
     */
    public Long getUpdatorId() {
        return this.updatorId;
    }
	/**
	 * 设置修改人
	 */
    public void setUpdator(String updator) {
        this.updator = updator;
    }
    /**
     * 获取修改人
     */
    public String getUpdator() {
        return this.updator;
    }
	/**
	 * 设置修改时间
	 */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
     * 获取修改时间
     */
    public Date getUpdateTime() {
        return this.updateTime;
    }
	/**
	 * 设置扩展参数，冗余扩展表中的名值对
	 */
    public void setExtendsParams(String extendsParams) {
        this.extendsParams = extendsParams;
    }
    /**
     * 获取扩展参数，冗余扩展表中的名值对
     */
    public String getExtendsParams() {
        return this.extendsParams;
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