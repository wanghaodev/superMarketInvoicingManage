/*
Navicat MySQL Data Transfer

Source Server         : jxc_db
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : jxc_db

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-08-09 09:24:12
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌表';
