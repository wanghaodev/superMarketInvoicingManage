
CREATE TABLE `goods_supplier_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supplier_name` varchar(256) DEFAULT NULL COMMENT '供应商名称',
  `supplier_short_name` varchar(128) DEFAULT NULL COMMENT '供应商简称',
  `supplier_english_name` varchar(128) DEFAULT NULL COMMENT '供应商英文名',
  `linkman_name` varchar(64) DEFAULT NULL COMMENT '联系人姓名',
  `linkman_sex` int(11) DEFAULT NULL COMMENT '联系人性别',
  `linkman_age` int(11) DEFAULT NULL COMMENT '联系人年龄',
  `supplier_address` varchar(512) DEFAULT NULL COMMENT '供应商所在地（省市县（区））',
  `business_scope` bigint(20) DEFAULT NULL COMMENT '营业范围',
  `linkman_phone` varchar(32) DEFAULT NULL COMMENT '联系人手机号',
  `link_email` varchar(64) DEFAULT NULL COMMENT '联系邮箱',
  `business_type` bigint(20) DEFAULT NULL COMMENT '行业类型',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '修改人ID',
  `updator` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
