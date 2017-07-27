/*
Navicat MySQL Data Transfer

Source Server         : jxc_db
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : jxc_db

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-07-27 16:41:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_tb
-- ----------------------------
DROP TABLE IF EXISTS `area_tb`;
CREATE TABLE `area_tb` (
  `id` bigint(20) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creator_id` varchar(255) DEFAULT NULL,
  `valid` varchar(1) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `updator` varchar(255) DEFAULT NULL,
  `updator_id` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `short_map_name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `spelling` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authority_tb
-- ----------------------------
DROP TABLE IF EXISTS `authority_tb`;
CREATE TABLE `authority_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `url` varchar(255) DEFAULT NULL COMMENT '功能url',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `hassub` varchar(255) DEFAULT NULL COMMENT '是否有子菜单',
  `hasvalid` varchar(1) DEFAULT NULL COMMENT '是否有效',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hierarchical` varchar(255) DEFAULT NULL COMMENT '层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）',
  `orderby_id` int(10) DEFAULT NULL COMMENT '权限排序',
  `pid` bigint(20) DEFAULT NULL COMMENT '父权限id',
  `show_menu` varchar(20) DEFAULT NULL COMMENT 'true表示显示菜单，false表示界面不显示菜单',
  `show_type` varchar(20) DEFAULT NULL COMMENT 'menu表示菜单，button表示操作按钮',
  `icon_class` varchar(255) DEFAULT NULL COMMENT '菜单图标样式',
  `access` varchar(255) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17060104 DEFAULT CHARSET=utf8mb4 COMMENT='商户权限表';

-- ----------------------------
-- Table structure for card_bin_category_tb
-- ----------------------------
DROP TABLE IF EXISTS `card_bin_category_tb`;
CREATE TABLE `card_bin_category_tb` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `card_bin` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '卡bin',
  `category_id` bigint(32) DEFAULT NULL COMMENT '类目id',
  `org_id` bigint(32) DEFAULT NULL COMMENT '机构id',
  `merchant_id` bigint(32) DEFAULT NULL COMMENT '商户id',
  `type` int(1) DEFAULT '0' COMMENT '类型',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11465 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for country_code_tb
-- ----------------------------
DROP TABLE IF EXISTS `country_code_tb`;
CREATE TABLE `country_code_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `continents` varchar(64) DEFAULT NULL COMMENT '所属州名',
  `country_code` varchar(64) DEFAULT NULL COMMENT '国别代码',
  `country_name` varchar(128) DEFAULT NULL COMMENT '中文名（简称）',
  `country_english_name` varchar(128) DEFAULT NULL COMMENT '英文名（简称）',
  `europtronic_rate` int(10) DEFAULT NULL COMMENT '优普税率',
  `state` int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='国别码表';

-- ----------------------------
-- Table structure for goods_attachment_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_attachment_tb`;
CREATE TABLE `goods_attachment_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) DEFAULT NULL COMMENT '附件名称',
  `content_type` varchar(200) DEFAULT NULL COMMENT '文件类型',
  `model_name` varchar(200) DEFAULT NULL COMMENT '标示名（关联表名）',
  `link_url` varchar(500) DEFAULT NULL COMMENT '附件链接地址',
  `relevance_id` varchar(200) DEFAULT NULL COMMENT '关联业务id',
  `link_type` int(11) DEFAULT NULL COMMENT '链接类型：0内链，1外链',
  `opposite_path` varchar(255) DEFAULT NULL COMMENT '相对路径',
  `absolute_path` varchar(255) DEFAULT NULL COMMENT '绝对路径',
  `valid` int(1) DEFAULT NULL COMMENT '是否有效：0无效，1有效',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人id',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `ext` varchar(500) DEFAULT NULL COMMENT '扩展字段,可用于为同一个页面中区分多组图片设置key',
  `ext2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Table structure for goods_brand_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand_tb`;
CREATE TABLE `goods_brand_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `brand_number` bigint(20) DEFAULT NULL COMMENT '品牌编号（暂定）',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌中文名',
  `brand_english_name` varchar(128) DEFAULT NULL COMMENT '品牌英文名',
  `brand_initial` varchar(64) DEFAULT NULL COMMENT '品牌首字母',
  `state` int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `extends_params` longblob COMMENT '扩展参数',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Table structure for goods_category_middel_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_category_middel_tb`;
CREATE TABLE `goods_category_middel_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` bigint(20) DEFAULT NULL COMMENT '类目id',
  `category_name` varchar(50) DEFAULT NULL COMMENT '类目名称',
  `category_level` int(2) DEFAULT NULL COMMENT '类目序号',
  `business_id` bigint(20) DEFAULT NULL COMMENT '业务id',
  `model_name` varchar(255) DEFAULT NULL COMMENT '表名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品类目中间表：（缓冲：业务与类目关联的【一级类目id，二级类目id等】）';

-- ----------------------------
-- Table structure for goods_category_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_category_tb`;
CREATE TABLE `goods_category_tb` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(200) DEFAULT NULL COMMENT '服务类目ID,规则一级类目：T+自增ID，二级类目：P+自增ID，三级类目：Q+自增ID，四级类目：S+自增ID\r\n\r\n采销tree类目ID,规则一级类目：B+自增ID，二级类目：U+自增ID，三级类目：M+自增ID，四级类目：E+自增ID\r\n\r\n            \r\n            ',
  `category_name` varchar(255) DEFAULT NULL COMMENT '类目名称',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父类目id',
  `category_type` int(1) DEFAULT NULL COMMENT '类目类型,1服务类，2实物类，3餐饮类',
  `category_level` int(1) DEFAULT NULL COMMENT '类目级别(1:一级，2：二级，3：三级，4：四级)',
  `input_tax` int(11) DEFAULT NULL COMMENT '进项税',
  `output_tax` int(11) DEFAULT NULL COMMENT '销项税',
  `consume_tax` decimal(11,2) DEFAULT NULL COMMENT '消费税',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级id',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构id',
  `order_number` int(5) DEFAULT NULL COMMENT '排序序号',
  `status` int(5) DEFAULT NULL COMMENT '状态，是否有效：0无效，1有效',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(150) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10690 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods_info_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_info_tb`;
CREATE TABLE `goods_info_tb` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表id',
  `goods_main_property_id` bigint(20) DEFAULT NULL COMMENT '商品搜索主属性ID',
  `assistant_property_map` longblob COMMENT '辅助属性结果集合',
  `goods_detail` longblob COMMENT '商品描述',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COMMENT='电商商品信息表';

-- ----------------------------
-- Table structure for goods_measurement_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_measurement_tb`;
CREATE TABLE `goods_measurement_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `length` int(8) DEFAULT NULL COMMENT '长',
  `width` int(8) DEFAULT NULL COMMENT '宽',
  `height` int(8) DEFAULT NULL COMMENT '高',
  `weight` int(8) DEFAULT NULL COMMENT '商品重量',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='尺寸参数表';

-- ----------------------------
-- Table structure for goods_normal_price_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_normal_price_tb`;
CREATE TABLE `goods_normal_price_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sale_price` bigint(20) DEFAULT NULL COMMENT '售价(单位分)',
  `market_price` bigint(20) DEFAULT NULL COMMENT '市场价(单位分)',
  `purchase_price` bigint(20) DEFAULT NULL COMMENT '采购价(单位分)',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '商品销售id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '门店业务id',
  `store_type` int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  `store_name` varchar(255) DEFAULT NULL COMMENT '门店名称',
  `goods_state` int(1) DEFAULT NULL COMMENT '商品状态',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '创建人层级id',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`),
  KEY `price_goods_sale_id` (`goods_sale_id`,`store_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23012 DEFAULT CHARSET=utf8 COMMENT='价格表';

-- ----------------------------
-- Table structure for goods_package_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_package_tb`;
CREATE TABLE `goods_package_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `specifications` int(1) DEFAULT NULL COMMENT '包装规格（1：无包装，2：有包装）',
  `number` int(8) DEFAULT NULL COMMENT '包装件数',
  `sale_volume` int(8) DEFAULT NULL COMMENT '起售量',
  `sale_unit_id` bigint(20) DEFAULT NULL COMMENT '销售单位id',
  `property` int(2) DEFAULT NULL COMMENT '包装属性(1:普通商品,2:易碎品,3:带包装液体,4:裸瓶液体)',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1（单位）等冗余字段',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COMMENT='包装参数表';

-- ----------------------------
-- Table structure for goods_price_record_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_price_record_tb`;
CREATE TABLE `goods_price_record_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `old_sale_price` bigint(20) DEFAULT NULL COMMENT '原售价',
  `old_market_price` bigint(20) DEFAULT NULL COMMENT '原市场价',
  `old_purchase_price` bigint(20) DEFAULT NULL COMMENT '原采购价',
  `sale_price` bigint(20) DEFAULT NULL COMMENT '售价',
  `market_price` bigint(20) DEFAULT NULL COMMENT '市场价',
  `purchase_price` bigint(20) DEFAULT NULL COMMENT '采购价',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '商品销售id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '门店业务id',
  `store_type` int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `goods_state` int(1) DEFAULT NULL COMMENT '商品状态',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  `hierarchy_id` varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=878 DEFAULT CHARSET=utf8 COMMENT='价格表记录表';

-- ----------------------------
-- Table structure for goods_product_area_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_product_area_tb`;
CREATE TABLE `goods_product_area_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `brand_id` bigint(20) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌中文名称',
  `country` varchar(255) DEFAULT NULL COMMENT '国别',
  `prov` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `is_quality_assurance` int(1) DEFAULT NULL COMMENT '是否有质保(1:有，2：无）',
  `quality_assurance_days` int(5) DEFAULT NULL COMMENT '质保天数',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='产地参数表';

-- ----------------------------
-- Table structure for goods_property_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_property_tb`;
CREATE TABLE `goods_property_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `property_type` int(1) DEFAULT NULL COMMENT '属性类型：1表示销售属性  2辅助属性',
  `category_id` bigint(20) DEFAULT NULL COMMENT '所属类目',
  `category_type` int(1) DEFAULT NULL COMMENT '类目类型,1服务类，2实物类',
  `order_number` int(3) DEFAULT NULL COMMENT '排序号',
  `status` int(1) DEFAULT NULL COMMENT '属性状态0，停用，1启用（默认）',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 COMMENT='商品属性维护表';

-- ----------------------------
-- Table structure for goods_property_value_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_property_value_tb`;
CREATE TABLE `goods_property_value_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_id` bigint(20) DEFAULT NULL COMMENT '属性id',
  `property_value` varchar(255) DEFAULT NULL COMMENT '属性值',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8 COMMENT='商品属性值维护表';

-- ----------------------------
-- Table structure for goods_putaway_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_putaway_tb`;
CREATE TABLE `goods_putaway_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '商品销售id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '门店id',
  `price_id` bigint(20) DEFAULT NULL COMMENT '价格id',
  `status` int(1) DEFAULT NULL COMMENT '上架状态：1上架    2下架',
  `promo_num` varchar(200) DEFAULT NULL COMMENT '促销号',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  `hierarchy_id` varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`),
  KEY `putaway_sale_store` (`goods_sale_id`,`store_id`,`status`,`valid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COMMENT='商品上下架表';

-- ----------------------------
-- Table structure for goods_sale_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_sale_tb`;
CREATE TABLE `goods_sale_tb` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `goods_sku` varchar(255) DEFAULT NULL COMMENT 'SKU',
  `barcode` varchar(32) DEFAULT NULL COMMENT '条码',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片url(仅上传一张图片)',
  `propertyids` varchar(1000) DEFAULT NULL COMMENT 'json销售属性值ID集合',
  `sale_property_list` varchar(2000) DEFAULT NULL COMMENT 'json销售属性结果集合',
  `manufacturer_no` varchar(255) DEFAULT NULL COMMENT '厂家货号',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级id',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构id',
  `is_deleted` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是，默认0)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark1` varchar(255) DEFAULT NULL COMMENT '备注字段1',
  `remark2` varchar(255) DEFAULT NULL COMMENT '备注字段2',
  PRIMARY KEY (`ID`),
  KEY `barcode` (`barcode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18145 DEFAULT CHARSET=utf8 COMMENT='商品销售属性表';

-- ----------------------------
-- Table structure for goods_service_mode_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_service_mode_tb`;
CREATE TABLE `goods_service_mode_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `is_to_door_service` varchar(128) DEFAULT NULL COMMENT '是否上门服务(0:非上门服务，1：上门服务）复选形式',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='服务方式表';

-- ----------------------------
-- Table structure for goods_suggest_price_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_suggest_price_tb`;
CREATE TABLE `goods_suggest_price_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `suggest_sale_price` bigint(20) DEFAULT NULL COMMENT '建议售价',
  `suggest_market_price` bigint(20) DEFAULT NULL COMMENT '建议市场价',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='建议价格表';

-- ----------------------------
-- Table structure for goods_supplier_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_supplier_tb`;
CREATE TABLE `goods_supplier_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  `supplier_id` bigint(20) DEFAULT NULL COMMENT '供应商id',
  `supplier_name` varchar(320) DEFAULT NULL COMMENT '供应商名称',
  `min_buy_num` int(8) DEFAULT NULL COMMENT '最小起订量',
  `buy_num` int(8) DEFAULT NULL COMMENT '采购数量',
  `unit_id` bigint(20) DEFAULT NULL COMMENT '单位id',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1（单位名称）等冗余字段',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='供应商参数表';

-- ----------------------------
-- Table structure for goods_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_tb`;
CREATE TABLE `goods_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '服务商品名称',
  `goods_short_name` varchar(64) DEFAULT NULL COMMENT '商品简称',
  `goods_spu` varchar(255) DEFAULT NULL COMMENT 'SPU',
  `goods_type` int(1) DEFAULT NULL COMMENT '商品类型,1实物类，2服务类,3餐饮类',
  `self_support` int(1) DEFAULT '1' COMMENT '是否为自营商品 1自营 ，0非自营',
  `goods_category_id` bigint(20) DEFAULT NULL COMMENT '类目id',
  `is_multi_properties` int(1) DEFAULT NULL COMMENT '是否显示销售属性:0否，1是（页面对应多销售属性）',
  `sku_nums` int(4) DEFAULT NULL COMMENT 'SKU个数',
  `sale_map` varchar(4000) DEFAULT NULL COMMENT 'json保存选择类目属性及属性值',
  `state` int(1) DEFAULT NULL COMMENT '状态：0试销商品，1可订货，可销售，2可订货，不可销售，3不可订货，可销售，4不可订货，不可销售5，快速出清6汰换品\n            ',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是,默认值0)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `extends_params` longblob COMMENT '扩展参数，冗余扩展表中的名值对',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17895 DEFAULT CHARSET=utf8 COMMENT='商品主表';

-- ----------------------------
-- Table structure for goods_unit_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_unit_tb`;
CREATE TABLE `goods_unit_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `unit_name` varchar(64) DEFAULT NULL COMMENT '单位名称',
  `unit_english_name` varchar(64) DEFAULT NULL COMMENT '英文名称',
  `unit_type` int(1) DEFAULT NULL COMMENT '单位类型（1：销售单位，2：采购单位,3：餐饮单位）',
  `minimum_unit_type` int(1) DEFAULT NULL COMMENT '最小包装单位类型（1：EA,2:克）',
  `minimum_unit_val` int(10) DEFAULT NULL COMMENT '最小单位值',
  `state` int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是)',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='单位表';

-- ----------------------------
-- Table structure for goods_value_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_value_tb`;
CREATE TABLE `goods_value_tb` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '销售属性id',
  `property_id` bigint(20) DEFAULT NULL COMMENT '属性id',
  `property_name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `property_value_id` bigint(20) DEFAULT NULL COMMENT '属性值id',
  `property_value` varchar(255) DEFAULT NULL COMMENT '属性值',
  `property_type` int(1) DEFAULT NULL COMMENT '类型：1销售属性，2辅助销售',
  `order_no` int(1) DEFAULT NULL COMMENT '排序',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级id',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构id',
  `remark1` varchar(255) DEFAULT NULL COMMENT '备注字段1',
  `remark2` varchar(255) DEFAULT NULL COMMENT '备注字段2',
  `is_deleted` int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是,默认0)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1667 DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- ----------------------------
-- Table structure for role_authority_tb
-- ----------------------------
DROP TABLE IF EXISTS `role_authority_tb`;
CREATE TABLE `role_authority_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '商户角色id',
  `auth_id` bigint(20) DEFAULT NULL COMMENT '商户权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16823 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色权限中间表';

-- ----------------------------
-- Table structure for role_tb
-- ----------------------------
DROP TABLE IF EXISTS `role_tb`;
CREATE TABLE `role_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键id',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(2000) DEFAULT NULL COMMENT '角色描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL,
  `hasvalid` varchar(1) DEFAULT NULL COMMENT '是否有效 -1停用 0失效 1有效 2管理员角色',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
  `updator` varchar(255) DEFAULT NULL COMMENT '更新人',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `directly_org_id` varchar(200) DEFAULT NULL COMMENT '直属机构id',
  `hierarchy_org_id` varchar(500) DEFAULT NULL COMMENT '层级机构id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色表';

-- ----------------------------
-- Table structure for stock_ground_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_ground_tb`;
CREATE TABLE `stock_ground_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `number` varchar(50) DEFAULT NULL COMMENT '库存地编号',
  `name` varchar(255) DEFAULT NULL COMMENT '库存地名称',
  `instruction` varchar(500) DEFAULT NULL COMMENT '库存地说明',
  `is_initialise` int(1) DEFAULT NULL COMMENT '数据是否初始化，1是，0否',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `remark1` varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='库存地表';

-- ----------------------------
-- Table structure for stock_in_detail_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_in_detail_tb`;
CREATE TABLE `stock_in_detail_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `stock_in_id` bigint(20) DEFAULT NULL COMMENT '出入库记录id',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '商品saleId',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `purchase_price` bigint(20) DEFAULT NULL COMMENT '采购价',
  `storage_num` int(10) DEFAULT NULL COMMENT '入库数量',
  `total_purchase_price` bigint(20) DEFAULT NULL COMMENT '采购价小计',
  `unit_id` bigint(20) DEFAULT NULL COMMENT '入库单位id',
  `goods_details` varchar(4000) DEFAULT NULL COMMENT '商品详情json格式',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  `hierarchy_id` varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=657 DEFAULT CHARSET=utf8 COMMENT='入库明细表';

-- ----------------------------
-- Table structure for stock_in_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_in_tb`;
CREATE TABLE `stock_in_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `voucher_num` varchar(255) DEFAULT NULL COMMENT '凭证号',
  `voucher_type` int(1) DEFAULT NULL COMMENT '凭证类型：1采购入库',
  `out_unit_id` bigint(20) DEFAULT NULL COMMENT '调出单位id',
  `out_unit` varchar(255) DEFAULT NULL COMMENT '调出单位',
  `out_stock_ground_id` bigint(20) DEFAULT NULL COMMENT '调出库存地',
  `out_stock_ground` varchar(255) DEFAULT NULL COMMENT '调出库存地',
  `in_unit_id` bigint(20) DEFAULT NULL COMMENT '调入单位id',
  `in_unit` varchar(255) DEFAULT NULL COMMENT '调入单位',
  `in_stock_ground_id` bigint(20) DEFAULT NULL COMMENT '调入库存地id',
  `in_stock_ground` varchar(255) DEFAULT NULL COMMENT '调入库存地',
  `goods_nums` bigint(20) DEFAULT NULL COMMENT '商品总数',
  `goods_amount` bigint(20) DEFAULT NULL COMMENT '商品总额',
  `goods_sorts` bigint(20) DEFAULT NULL COMMENT '商品分类总数：多少个SPU',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  `hierarchy_id` varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COMMENT='入库主表';

-- ----------------------------
-- Table structure for stock_modify_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_modify_tb`;
CREATE TABLE `stock_modify_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `stock_ground_id` bigint(20) DEFAULT NULL COMMENT '库存地id',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '商品销售id',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号id',
  `modify_num` int(11) DEFAULT NULL COMMENT '修改数量',
  `modify_type` int(2) DEFAULT NULL COMMENT '修改类型(1下单消减库存，2异常还原库存，3退单还原库存)',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=921 DEFAULT CHARSET=utf8 COMMENT='库存修改记录表';

-- ----------------------------
-- Table structure for stock_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_tb`;
CREATE TABLE `stock_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `stock_ground_id` bigint(20) DEFAULT NULL COMMENT '库存地id',
  `goods_sale_id` bigint(20) DEFAULT NULL COMMENT '商品销售id',
  `goods_id` bigint(20) DEFAULT NULL,
  `stock_num` bigint(20) DEFAULT NULL COMMENT '库存数量',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '创建人层级id',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`),
  KEY `store_sale_ground` (`store_id`,`goods_sale_id`,`stock_ground_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22493 DEFAULT CHARSET=utf8 COMMENT='库存表';

-- ----------------------------
-- Table structure for store_stock_ground_tb
-- ----------------------------
DROP TABLE IF EXISTS `store_stock_ground_tb`;
CREATE TABLE `store_stock_ground_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `stock_ground_id` bigint(20) DEFAULT NULL COMMENT '库存地id',
  `status` int(1) DEFAULT NULL COMMENT '库存地状态：1启用，0停用',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `directly_org_id` bigint(20) DEFAULT NULL COMMENT '门店直属机构ID',
  `hierarchy_id` varchar(500) DEFAULT NULL COMMENT '门店层级机构ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COMMENT='店铺库存地中间表';

-- ----------------------------
-- Table structure for user_log_tb
-- ----------------------------
DROP TABLE IF EXISTS `user_log_tb`;
CREATE TABLE `user_log_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merge_user_id` bigint(20) DEFAULT NULL COMMENT '商户用户id',
  `ip` varchar(50) DEFAULT NULL,
  `descrption` varchar(500) DEFAULT NULL COMMENT '动作描述',
  `valid` int(11) DEFAULT '1' COMMENT '数据是否有效，1有效，0无效',
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '事件类型：1签到  2签退  3登录  4退出',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7041 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_tb
-- ----------------------------
DROP TABLE IF EXISTS `user_tb`;
CREATE TABLE `user_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL COMMENT '登录用户名',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型：0 机构管理员   1机构普通用户  2门店管理员  3门店普通用户 4店长 5收银员 6机构管理者 7门店管理者',
  `state` int(11) DEFAULT NULL COMMENT '状态：0关闭    1开启  2临时用户',
  `creator_id` bigint(150) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL,
  `updator_id` bigint(150) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `directly_org_id` varchar(50) DEFAULT NULL COMMENT '直属机构id',
  `hierarchy_org_id` varchar(500) DEFAULT NULL COMMENT '层级机构id',
  `certificates_type` int(2) DEFAULT NULL COMMENT '用户证件类型:1身份证',
  `certificates_num` varchar(150) DEFAULT NULL COMMENT '证件号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2016111700000091 DEFAULT CHARSET=utf8mb4 COMMENT='商户用户表';
