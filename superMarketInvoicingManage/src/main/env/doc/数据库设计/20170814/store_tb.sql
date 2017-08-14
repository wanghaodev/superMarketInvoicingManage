/*
Navicat MySQL Data Transfer

Source Server         : 10.16.31.199-dev
Source Server Version : 50629
Source Host           : 10.16.31.199:3306
Source Database       : merchant_db

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2017-08-14 09:18:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for store_tb
-- ----------------------------
DROP TABLE IF EXISTS `store_tb`;
CREATE TABLE `store_tb` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `store_name` varchar(255) DEFAULT NULL COMMENT '门店名称',
  `store_abbreviation` varchar(255) DEFAULT NULL COMMENT '门店简称',
  `type` int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  `format_type` int(1) DEFAULT NULL COMMENT '业态类型：1、便利店，2、超市，3、百货，4、大卖场，5、线上商城，6、餐饮店',
  `status` int(1) DEFAULT NULL COMMENT '门店状态，1启用，0停用',
  `org_id` bigint(32) DEFAULT NULL COMMENT '机构id',
  `hierarchy_id` varchar(255) DEFAULT NULL COMMENT '门店层级id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `contact_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `province` varchar(50) DEFAULT NULL COMMENT '所在省',
  `city` varchar(255) DEFAULT NULL COMMENT '所在市',
  `district` varchar(255) DEFAULT NULL COMMENT '所在区',
  `address` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `creator_id` bigint(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(32) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT NULL COMMENT '扩展字段1，堂食模式：1 就餐后买单，2 先买单后就餐',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='店铺表';
