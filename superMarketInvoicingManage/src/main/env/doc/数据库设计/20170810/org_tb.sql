/*
Navicat MySQL Data Transfer

Source Server         : 10.16.31.199-dev
Source Server Version : 50629
Source Host           : 10.16.31.199:3306
Source Database       : merchant_db

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2017-08-10 14:51:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for org_tb
-- ----------------------------
DROP TABLE IF EXISTS `org_tb`;
CREATE TABLE `org_tb` (
  `id` bigint(32) NOT NULL COMMENT '主键id',
  `org_num` varchar(255) DEFAULT NULL COMMENT '机构编号',
  `org_name` varchar(255) DEFAULT NULL COMMENT '机构名称',
  `org_abbreviation` varchar(255) DEFAULT NULL COMMENT '机构简称',
  `status` int(1) DEFAULT NULL COMMENT '机构状态: 0待审核 1审核通过(正常)  2审核不通过 3停用',
  `pid` bigint(32) DEFAULT NULL COMMENT '管理机构(上级机构id)',
  `hierarchy_id` varchar(255) DEFAULT NULL COMMENT '机构层级id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `contact_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `province` varchar(50) DEFAULT NULL COMMENT '所在省',
  `city` varchar(255) DEFAULT NULL COMMENT '所在市',
  `area` varchar(255) DEFAULT NULL COMMENT '所在区',
  `address` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `valid` int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updator_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark1` varchar(2000) DEFAULT '' COMMENT '扩展字段1：存储所属业务id',
  `remark2` varchar(2000) DEFAULT NULL COMMENT '扩展字段2：存储职位id集合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构表';
