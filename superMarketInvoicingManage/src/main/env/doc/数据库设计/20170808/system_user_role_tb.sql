/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : jxc_db

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-08-08 01:26:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for system_user_role_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_role_tb`;
CREATE TABLE `system_user_role_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT '0' COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
