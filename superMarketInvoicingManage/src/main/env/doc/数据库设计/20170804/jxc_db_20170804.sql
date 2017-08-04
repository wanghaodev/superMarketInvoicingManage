/*
Navicat MySQL Data Transfer

Source Server         : jxc_db
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : jxc_db

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-08-04 18:05:19
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
-- Records of area_tb
-- ----------------------------
INSERT INTO `area_tb` VALUES ('1', null, null, null, '1', '2014-05-07 20:54:48', null, 'fcdeb812d0514e0daae7669732f553d7', '0', null, '', 'QuanBuShengFen', null, '1', '', '全部省份');
INSERT INTO `area_tb` VALUES ('110000', null, null, null, '1', '2014-05-21 11:28:24', null, 'fcdeb812d0514e0daae7669732f553d7', '1', null, 'bj', 'BeiJing   ', null, '2', '', '北京');
INSERT INTO `area_tb` VALUES ('110100', null, null, null, '1', null, null, null, '110000', null, 'bjs', 'BeiJingShi', null, '3', '100000', '北京市');
INSERT INTO `area_tb` VALUES ('110101', null, null, null, '1', null, null, null, '110100', null, 'dcq', 'DongChengQu   ', null, '4', '100010', '东城区');
INSERT INTO `area_tb` VALUES ('110102', null, null, null, '1', null, null, null, '110100', null, 'xcq', 'XiChengQu ', null, '4', '100032', '西城区');
INSERT INTO `area_tb` VALUES ('110103', null, null, null, '1', null, null, null, '110100', null, 'cwq', 'ChongWenQu', null, '4', '100061', '崇文区');
INSERT INTO `area_tb` VALUES ('110104', null, null, null, '1', null, null, null, '110100', null, 'xwq', 'XuanWuQu  ', null, '4', '100054', '宣武区');
INSERT INTO `area_tb` VALUES ('110105', null, null, null, '1', null, null, null, '110100', null, 'cyq', 'ChaoYangQu', null, '4', '100011', '朝阳区');
INSERT INTO `area_tb` VALUES ('110106', null, null, null, '1', null, null, null, '110100', null, 'ftq', 'FengTaiQu ', null, '4', '100071', '丰台区');
INSERT INTO `area_tb` VALUES ('110107', null, null, null, '1', null, null, null, '110100', null, 'sjsq', 'ShiJingShanQu ', null, '4', '100071', '石景山区');
INSERT INTO `area_tb` VALUES ('110108', null, null, null, '1', null, null, null, '110100', null, 'hdq', 'HaiDianQu ', null, '4', '100091', '海淀区');
INSERT INTO `area_tb` VALUES ('110109', null, null, null, '1', null, null, null, '110100', null, 'mtgq', 'MenTouGouQu   ', null, '4', '102300', '门头沟区');
INSERT INTO `area_tb` VALUES ('110111', null, null, null, '1', null, null, null, '110100', null, 'fsq', 'FangShanQu', null, '4', '102488', '房山区');
INSERT INTO `area_tb` VALUES ('110112', null, null, null, '1', null, null, null, '110100', null, 'tzq', 'TongZhouQu', null, '4', '101100', '通州区');
INSERT INTO `area_tb` VALUES ('110113', null, null, null, '1', null, null, null, '110100', null, 'syq', 'ShunYiQu  ', null, '4', '101300', '顺义区');
INSERT INTO `area_tb` VALUES ('110114', null, null, null, '1', null, null, null, '110100', null, 'cpq', 'ChangPingQu   ', null, '4', '102200', '昌平区');
INSERT INTO `area_tb` VALUES ('110115', null, null, null, '1', null, null, null, '110100', null, 'dxq', 'DaXingQu  ', null, '4', '102600', '大兴区');
INSERT INTO `area_tb` VALUES ('110116', null, null, null, '1', null, null, null, '110100', null, 'hrq', 'HuaiRouQu ', null, '4', '101400', '怀柔区');
INSERT INTO `area_tb` VALUES ('110117', null, null, null, '1', null, null, null, '110100', null, 'pgq', 'PingGuQu  ', null, '4', '101200', '平谷区');
INSERT INTO `area_tb` VALUES ('110228', null, null, null, '1', null, null, null, '110100', null, 'myx', 'MiYunXian ', null, '4', '101500', '密云县');
INSERT INTO `area_tb` VALUES ('110229', null, null, null, '1', null, null, null, '110100', null, 'yqx', 'YanQingXian   ', null, '4', '102100', '延庆县');
INSERT INTO `area_tb` VALUES ('110230', null, null, null, '1', null, null, null, '110100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('120000', null, null, null, '1', null, null, null, '1', null, 'tj', 'TianJin   ', null, '2', '', '天津');
INSERT INTO `area_tb` VALUES ('120100', null, null, null, '1', null, null, null, '120000', null, 'tjs', 'TianJinShi', null, '3', '300000', '天津市');
INSERT INTO `area_tb` VALUES ('120101', null, null, null, '1', null, null, null, '120100', null, 'hpq', 'HePingQu  ', null, '4', '300041', '和平区');
INSERT INTO `area_tb` VALUES ('120102', null, null, null, '1', null, null, null, '120100', null, 'hdq', 'HeDongQu  ', null, '4', '300171', '河东区');
INSERT INTO `area_tb` VALUES ('120103', null, null, null, '1', null, null, null, '120100', null, 'hxq', 'HeXiQu', null, '4', '300202', '河西区');
INSERT INTO `area_tb` VALUES ('120104', null, null, null, '1', null, null, null, '120100', null, 'nkq', 'NanKaiQu  ', null, '4', '300100', '南开区');
INSERT INTO `area_tb` VALUES ('120105', null, null, null, '1', null, null, null, '120100', null, 'hbq', 'HeBeiQu   ', null, '4', '300143', '河北区');
INSERT INTO `area_tb` VALUES ('120106', null, null, null, '1', null, null, null, '120100', null, 'hqq', 'HongQiaoQu', null, '4', '300131', '红桥区');
INSERT INTO `area_tb` VALUES ('120107', null, null, null, '1', null, null, null, '120100', null, 'tgq', 'TangGuQu  ', null, '4', '300450', '塘沽区');
INSERT INTO `area_tb` VALUES ('120108', null, null, null, '1', null, null, null, '120100', null, 'hgq', 'HanGuQu   ', null, '4', '300480', '汉沽区');
INSERT INTO `area_tb` VALUES ('120109', null, null, null, '1', null, null, null, '120100', null, 'dgq', 'DaGangQu  ', null, '4', '300270', '大港区');
INSERT INTO `area_tb` VALUES ('120110', null, null, null, '1', null, null, null, '120100', null, 'dlq', 'DongLiQu  ', null, '4', '300300', '东丽区');
INSERT INTO `area_tb` VALUES ('120111', null, null, null, '1', null, null, null, '120100', null, 'xqq', 'XiQingQu  ', null, '4', '300380', '西青区');
INSERT INTO `area_tb` VALUES ('120112', null, null, null, '1', null, null, null, '120100', null, 'jnq', 'JinNanQu  ', null, '4', '300350', '津南区');
INSERT INTO `area_tb` VALUES ('120113', null, null, null, '1', null, null, null, '120100', null, 'bcq', 'BeiChenQu ', null, '4', '300400', '北辰区');
INSERT INTO `area_tb` VALUES ('120114', null, null, null, '1', null, null, null, '120100', null, 'wqq', 'WuQingQu  ', null, '4', '301700', '武清区');
INSERT INTO `area_tb` VALUES ('120115', null, null, null, '1', null, null, null, '120100', null, 'bdq', 'BaoZuoQu  ', null, '4', '301800', '宝坻区');
INSERT INTO `area_tb` VALUES ('120221', null, null, null, '1', null, null, null, '120100', null, 'nhx', 'NingHeXian', null, '4', '301500', '宁河县');
INSERT INTO `area_tb` VALUES ('120223', null, null, null, '1', null, null, null, '120100', null, 'jhx', 'JingHaiXian   ', null, '4', '301600', '静海县');
INSERT INTO `area_tb` VALUES ('120225', null, null, null, '1', null, null, null, '120100', null, 'jx', 'JiXian', null, '4', '301900', '蓟县');
INSERT INTO `area_tb` VALUES ('120226', null, null, null, '1', null, null, null, '120100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130000', null, null, null, '1', null, null, null, '1', null, 'hbs', 'HeBeiSheng', null, '2', '', '河北省');
INSERT INTO `area_tb` VALUES ('130100', null, null, null, '1', null, null, null, '130000', null, 'sjzs', 'ShiJiaZhuangShi   ', null, '3', '050000', '石家庄市');
INSERT INTO `area_tb` VALUES ('130102', null, null, null, '1', null, null, null, '130100', null, 'caq', 'ChangAnQu ', null, '4', '050011', '长安区');
INSERT INTO `area_tb` VALUES ('130103', null, null, null, '1', null, null, null, '130100', null, 'qdq', 'QiaoDongQu', null, '4', '050011', '桥东区');
INSERT INTO `area_tb` VALUES ('130104', null, null, null, '1', null, null, null, '130100', null, 'qxq', 'QiaoXiQu  ', null, '4', '050051', '桥西区');
INSERT INTO `area_tb` VALUES ('130105', null, null, null, '1', null, null, null, '130100', null, 'xhq', 'XinHuaQu  ', null, '4', '050051', '新华区');
INSERT INTO `area_tb` VALUES ('130107', null, null, null, '1', null, null, null, '130100', null, 'jjkq', 'JingZuoKuangQu', null, '4', '050100', '井陉矿区');
INSERT INTO `area_tb` VALUES ('130108', null, null, null, '1', null, null, null, '130100', null, 'yhq', 'YuHuaQu   ', null, '4', '050081', '裕华区');
INSERT INTO `area_tb` VALUES ('130121', null, null, null, '1', null, null, null, '130100', null, 'jjx', 'JingZuoXian   ', null, '4', '050300', '井陉县');
INSERT INTO `area_tb` VALUES ('130123', null, null, null, '1', null, null, null, '130100', null, 'zdx', 'ZhengDingXian ', null, '4', '050800', '正定县');
INSERT INTO `area_tb` VALUES ('130124', null, null, null, '1', null, null, null, '130100', null, 'lcx', 'ZuoChengXian  ', null, '4', '051430', '栾城县');
INSERT INTO `area_tb` VALUES ('130125', null, null, null, '1', null, null, null, '130100', null, 'xtx', 'XingTangXian  ', null, '4', '050600', '行唐县');
INSERT INTO `area_tb` VALUES ('130126', null, null, null, '1', null, null, null, '130100', null, 'lsx', 'LingShouXian  ', null, '4', '050500', '灵寿县');
INSERT INTO `area_tb` VALUES ('130127', null, null, null, '1', null, null, null, '130100', null, 'gyx', 'GaoYiXian ', null, '4', '051330', '高邑县');
INSERT INTO `area_tb` VALUES ('130128', null, null, null, '1', null, null, null, '130100', null, 'szx', 'ShenZeXian', null, '4', '052560', '深泽县');
INSERT INTO `area_tb` VALUES ('130129', null, null, null, '1', null, null, null, '130100', null, 'zhx', 'ZanHuangXian  ', null, '4', '051230', '赞皇县');
INSERT INTO `area_tb` VALUES ('130130', null, null, null, '1', null, null, null, '130100', null, 'wjx', 'WuJiXian  ', null, '4', '052460', '无极县');
INSERT INTO `area_tb` VALUES ('130131', null, null, null, '1', null, null, null, '130100', null, 'psx', 'PingShanXian  ', null, '4', '050400', '平山县');
INSERT INTO `area_tb` VALUES ('130132', null, null, null, '1', null, null, null, '130100', null, 'ysx', 'YuanShiXian   ', null, '4', '051130', '元氏县');
INSERT INTO `area_tb` VALUES ('130133', null, null, null, '1', null, null, null, '130100', null, 'zx', 'ZhaoXian  ', null, '4', '051530', '赵县');
INSERT INTO `area_tb` VALUES ('130181', null, null, null, '1', null, null, null, '130100', null, 'xjs', 'XinJiShi  ', null, '4', '052360', '辛集市');
INSERT INTO `area_tb` VALUES ('130182', null, null, null, '1', null, null, null, '130100', null, 'gcs', 'ZuoChengShi   ', null, '4', '052160', '藁城市');
INSERT INTO `area_tb` VALUES ('130183', null, null, null, '1', null, null, null, '130100', null, 'jzs', 'JinZhouShi', null, '4', '052260', '晋州市');
INSERT INTO `area_tb` VALUES ('130184', null, null, null, '1', null, null, null, '130100', null, 'xls', 'XinLeShi  ', null, '4', '050700', '新乐市');
INSERT INTO `area_tb` VALUES ('130185', null, null, null, '1', null, null, null, '130100', null, 'lqs', 'LuQuanShi ', null, '4', '050200', '鹿泉市');
INSERT INTO `area_tb` VALUES ('130186', null, null, null, '1', null, null, null, '130100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130200', null, null, null, '1', null, null, null, '130000', null, 'tss', 'TangShanShi   ', null, '3', '063000', '唐山市');
INSERT INTO `area_tb` VALUES ('130202', null, null, null, '1', null, null, null, '130200', null, 'lnq', 'LuNanQu   ', null, '4', '063017', '路南区');
INSERT INTO `area_tb` VALUES ('130203', null, null, null, '1', null, null, null, '130200', null, 'lbq', 'LuBeiQu   ', null, '4', '063015', '路北区');
INSERT INTO `area_tb` VALUES ('130204', null, null, null, '1', null, null, null, '130200', null, 'gyq', 'GuYeQu', null, '4', '063104', '古冶区');
INSERT INTO `area_tb` VALUES ('130205', null, null, null, '1', null, null, null, '130200', null, 'kpq', 'KaiPingQu ', null, '4', '063021', '开平区');
INSERT INTO `area_tb` VALUES ('130207', null, null, null, '1', null, null, null, '130200', null, 'fnq', 'FengNanQu ', null, '4', '063300', '丰南区');
INSERT INTO `area_tb` VALUES ('130208', null, null, null, '1', null, null, null, '130200', null, 'frq', 'FengRunQu ', null, '4', '064000', '丰润区');
INSERT INTO `area_tb` VALUES ('130223', null, null, null, '1', null, null, null, '130200', null, 'lx', 'LuanXian  ', null, '4', '063700', '滦县');
INSERT INTO `area_tb` VALUES ('130224', null, null, null, '1', null, null, null, '130200', null, 'lnx', 'LuanNanXian   ', null, '4', '063500', '滦南县');
INSERT INTO `area_tb` VALUES ('130225', null, null, null, '1', null, null, null, '130200', null, 'ltx', 'LeTingXian', null, '4', '063600', '乐亭县');
INSERT INTO `area_tb` VALUES ('130227', null, null, null, '1', null, null, null, '130200', null, 'qxx', 'QianXiXian', null, '4', '064300', '迁西县');
INSERT INTO `area_tb` VALUES ('130229', null, null, null, '1', null, null, null, '130200', null, 'ytx', 'YuTianXian', null, '4', '064100', '玉田县');
INSERT INTO `area_tb` VALUES ('130230', null, null, null, '1', null, null, null, '130200', null, 'thx', 'TangHaiXian   ', null, '4', '063200', '唐海县');
INSERT INTO `area_tb` VALUES ('130281', null, null, null, '1', null, null, null, '130200', null, 'zhs', 'ZunHuaShi ', null, '4', '064200', '遵化市');
INSERT INTO `area_tb` VALUES ('130283', null, null, null, '1', null, null, null, '130200', null, 'qas', 'QianAnShi ', null, '4', '064400', '迁安市');
INSERT INTO `area_tb` VALUES ('130284', null, null, null, '1', null, null, null, '130200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130300', null, null, null, '1', null, null, null, '130000', null, 'qhds', 'QinHuangDaoShi', null, '3', '066000', '秦皇岛市');
INSERT INTO `area_tb` VALUES ('130302', null, null, null, '1', null, null, null, '130300', null, 'hgq', 'HaiGangQu ', null, '4', '066000', '海港区');
INSERT INTO `area_tb` VALUES ('130303', null, null, null, '1', null, null, null, '130300', null, 'shgq', 'ShanHaiGuanQu ', null, '4', '066200', '山海关区');
INSERT INTO `area_tb` VALUES ('130304', null, null, null, '1', null, null, null, '130300', null, 'bdhq', 'BeiDaiHeQu', null, '4', '066100', '北戴河区');
INSERT INTO `area_tb` VALUES ('130321', null, null, null, '1', null, null, null, '130300', null, 'qlmzzzx', 'QingLongManZuZiZhiXian', null, '4', '066500', '青龙满族自治县');
INSERT INTO `area_tb` VALUES ('130322', null, null, null, '1', null, null, null, '130300', null, 'clx', 'ChangLiXian   ', null, '4', '066600', '昌黎县');
INSERT INTO `area_tb` VALUES ('130323', null, null, null, '1', null, null, null, '130300', null, 'fnx', 'FuNingXian', null, '4', '066300', '抚宁县');
INSERT INTO `area_tb` VALUES ('130324', null, null, null, '1', null, null, null, '130300', null, 'llx', 'LuLongXian', null, '4', '066400', '卢龙县');
INSERT INTO `area_tb` VALUES ('130398', null, null, null, '1', null, null, null, '130300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130399', null, null, null, '1', null, null, null, '130300', null, 'jjjskfq', 'JingJiJiShuKaiFaQu', null, '4', '', '经济技术开发区');
INSERT INTO `area_tb` VALUES ('130400', null, null, null, '1', null, null, null, '130000', null, 'hds', 'HanDanShi ', null, '3', '056000', '邯郸市');
INSERT INTO `area_tb` VALUES ('130402', null, null, null, '1', null, null, null, '130400', null, 'hsq', 'HanShanQu ', null, '4', '056001', '邯山区');
INSERT INTO `area_tb` VALUES ('130403', null, null, null, '1', null, null, null, '130400', null, 'ctq', 'CongTaiQu ', null, '4', '056004', '丛台区');
INSERT INTO `area_tb` VALUES ('130404', null, null, null, '1', null, null, null, '130400', null, 'fxq', 'FuXingQu  ', null, '4', '056003', '复兴区');
INSERT INTO `area_tb` VALUES ('130406', null, null, null, '1', null, null, null, '130400', null, 'ffkq', 'FengFengKuangQu   ', null, '4', '056200', '峰峰矿区');
INSERT INTO `area_tb` VALUES ('130421', null, null, null, '1', null, null, null, '130400', null, 'hdx', 'HanDanXian', null, '4', '056105', '邯郸县');
INSERT INTO `area_tb` VALUES ('130423', null, null, null, '1', null, null, null, '130400', null, 'lzx', 'LinZhangXian  ', null, '4', '056600', '临漳县');
INSERT INTO `area_tb` VALUES ('130424', null, null, null, '1', null, null, null, '130400', null, 'cax', 'ChengAnXian   ', null, '4', '056700', '成安县');
INSERT INTO `area_tb` VALUES ('130425', null, null, null, '1', null, null, null, '130400', null, 'dmx', 'DaMingXian', null, '4', '056900', '大名县');
INSERT INTO `area_tb` VALUES ('130426', null, null, null, '1', null, null, null, '130400', null, 'sx', 'SheXian   ', null, '4', '056400', '涉县');
INSERT INTO `area_tb` VALUES ('130427', null, null, null, '1', null, null, null, '130400', null, 'cx', 'CiXian', null, '4', '056500', '磁县');
INSERT INTO `area_tb` VALUES ('130428', null, null, null, '1', null, null, null, '130400', null, 'fxx', 'FeiXiangXian  ', null, '4', '057550', '肥乡县');
INSERT INTO `area_tb` VALUES ('130429', null, null, null, '1', null, null, null, '130400', null, 'ynx', 'YongNianXian  ', null, '4', '057150', '永年县');
INSERT INTO `area_tb` VALUES ('130430', null, null, null, '1', null, null, null, '130400', null, 'qx', 'QiuXian   ', null, '4', '057450', '邱县');
INSERT INTO `area_tb` VALUES ('130431', null, null, null, '1', null, null, null, '130400', null, 'jzx', 'JiZeXian  ', null, '4', '057350', '鸡泽县');
INSERT INTO `area_tb` VALUES ('130432', null, null, null, '1', null, null, null, '130400', null, 'gpx', 'GuangPingXian ', null, '4', '057650', '广平县');
INSERT INTO `area_tb` VALUES ('130433', null, null, null, '1', null, null, null, '130400', null, 'gtx', 'GuanTaoXian   ', null, '4', '057750', '馆陶县');
INSERT INTO `area_tb` VALUES ('130434', null, null, null, '1', null, null, null, '130400', null, 'wx', 'WeiXian   ', null, '4', '056800', '魏县');
INSERT INTO `area_tb` VALUES ('130435', null, null, null, '1', null, null, null, '130400', null, 'qzx', 'QuZhouXian', null, '4', '057250', '曲周县');
INSERT INTO `area_tb` VALUES ('130481', null, null, null, '1', null, null, null, '130400', null, 'was', 'WuAnShi   ', null, '4', '056300', '武安市');
INSERT INTO `area_tb` VALUES ('130482', null, null, null, '1', null, null, null, '130400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130500', null, null, null, '1', null, null, null, '130000', null, 'xts', 'XingTaiShi', null, '3', '054000', '邢台市');
INSERT INTO `area_tb` VALUES ('130502', null, null, null, '1', null, null, null, '130500', null, 'qdq', 'QiaoDongQu', null, '4', '054001', '桥东区');
INSERT INTO `area_tb` VALUES ('130503', null, null, null, '1', null, null, null, '130500', null, 'qxq', 'QiaoXiQu  ', null, '4', '054000', '桥西区');
INSERT INTO `area_tb` VALUES ('130521', null, null, null, '1', null, null, null, '130500', null, 'xtx', 'XingTaiXian   ', null, '4', '054001', '邢台县');
INSERT INTO `area_tb` VALUES ('130522', null, null, null, '1', null, null, null, '130500', null, 'lcx', 'LinChengXian  ', null, '4', '054300', '临城县');
INSERT INTO `area_tb` VALUES ('130523', null, null, null, '1', null, null, null, '130500', null, 'nqx', 'NeiQiuXian', null, '4', '054200', '内丘县');
INSERT INTO `area_tb` VALUES ('130524', null, null, null, '1', null, null, null, '130500', null, 'bxx', 'BaiXiangXian  ', null, '4', '055450', '柏乡县');
INSERT INTO `area_tb` VALUES ('130525', null, null, null, '1', null, null, null, '130500', null, 'lyx', 'LongYaoXian   ', null, '4', '055350', '隆尧县');
INSERT INTO `area_tb` VALUES ('130526', null, null, null, '1', null, null, null, '130500', null, 'rx', 'RenXian   ', null, '4', '055150', '任县');
INSERT INTO `area_tb` VALUES ('130527', null, null, null, '1', null, null, null, '130500', null, 'nhx', 'NanHeXian ', null, '4', '054400', '南和县');
INSERT INTO `area_tb` VALUES ('130528', null, null, null, '1', null, null, null, '130500', null, 'njx', 'NingJinXian   ', null, '4', '055550', '宁晋县');
INSERT INTO `area_tb` VALUES ('130529', null, null, null, '1', null, null, null, '130500', null, 'jlx', 'JuLuXian  ', null, '4', '055250', '巨鹿县');
INSERT INTO `area_tb` VALUES ('130530', null, null, null, '1', null, null, null, '130500', null, 'xhx', 'XinHeXian ', null, '4', '055650', '新河县');
INSERT INTO `area_tb` VALUES ('130531', null, null, null, '1', null, null, null, '130500', null, 'gzx', 'GuangZongXian ', null, '4', '054600', '广宗县');
INSERT INTO `area_tb` VALUES ('130532', null, null, null, '1', null, null, null, '130500', null, 'pxx', 'PingXiangXian ', null, '4', '054500', '平乡县');
INSERT INTO `area_tb` VALUES ('130533', null, null, null, '1', null, null, null, '130500', null, 'wx', 'WeiXian   ', null, '4', '054700', '威县');
INSERT INTO `area_tb` VALUES ('130534', null, null, null, '1', null, null, null, '130500', null, 'qhx', 'QingHeXian', null, '4', '054800', '清河县');
INSERT INTO `area_tb` VALUES ('130535', null, null, null, '1', null, null, null, '130500', null, 'lxx', 'LinXiXian ', null, '4', '054900', '临西县');
INSERT INTO `area_tb` VALUES ('130581', null, null, null, '1', null, null, null, '130500', null, 'ngs', 'NanGongShi', null, '4', '055750', '南宫市');
INSERT INTO `area_tb` VALUES ('130582', null, null, null, '1', null, null, null, '130500', null, 'shs', 'ShaHeShi  ', null, '4', '054100', '沙河市');
INSERT INTO `area_tb` VALUES ('130583', null, null, null, '1', null, null, null, '130500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130600', null, null, null, '1', null, null, null, '130000', null, 'bds', 'BaoDingShi', null, '3', '071000', '保定市');
INSERT INTO `area_tb` VALUES ('130602', null, null, null, '1', null, null, null, '130600', null, 'xsq', 'XinShiQu  ', null, '4', '071052', '新市区');
INSERT INTO `area_tb` VALUES ('130603', null, null, null, '1', null, null, null, '130600', null, 'bsq', 'BeiShiQu  ', null, '4', '071000', '北市区');
INSERT INTO `area_tb` VALUES ('130604', null, null, null, '1', null, null, null, '130600', null, 'nsq', 'NanShiQu  ', null, '4', '071000', '南市区');
INSERT INTO `area_tb` VALUES ('130621', null, null, null, '1', null, null, null, '130600', null, 'mcx', 'ManChengXian  ', null, '4', '072150', '满城县');
INSERT INTO `area_tb` VALUES ('130622', null, null, null, '1', null, null, null, '130600', null, 'qyx', 'QingYuanXian  ', null, '4', '071100', '清苑县');
INSERT INTO `area_tb` VALUES ('130623', null, null, null, '1', null, null, null, '130600', null, 'lsx', 'ZuoShuiXian   ', null, '4', '074100', '涞水县');
INSERT INTO `area_tb` VALUES ('130624', null, null, null, '1', null, null, null, '130600', null, 'fpx', 'FuPingXian', null, '4', '073200', '阜平县');
INSERT INTO `area_tb` VALUES ('130625', null, null, null, '1', null, null, null, '130600', null, 'xsx', 'XuShuiXian', null, '4', '072550', '徐水县');
INSERT INTO `area_tb` VALUES ('130626', null, null, null, '1', null, null, null, '130600', null, 'dxx', 'DingXingXian  ', null, '4', '072650', '定兴县');
INSERT INTO `area_tb` VALUES ('130627', null, null, null, '1', null, null, null, '130600', null, 'tx', 'TangXian  ', null, '4', '072350', '唐县');
INSERT INTO `area_tb` VALUES ('130628', null, null, null, '1', null, null, null, '130600', null, 'gyx', 'GaoYangXian   ', null, '4', '071500', '高阳县');
INSERT INTO `area_tb` VALUES ('130629', null, null, null, '1', null, null, null, '130600', null, 'rcx', 'RongChengXian ', null, '4', '071700', '容城县');
INSERT INTO `area_tb` VALUES ('130630', null, null, null, '1', null, null, null, '130600', null, 'lyx', 'ZuoYuanXian   ', null, '4', '074300', '涞源县');
INSERT INTO `area_tb` VALUES ('130631', null, null, null, '1', null, null, null, '130600', null, 'wdx', 'WangDuXian', null, '4', '072450', '望都县');
INSERT INTO `area_tb` VALUES ('130632', null, null, null, '1', null, null, null, '130600', null, 'axx', 'AnXinXian ', null, '4', '071600', '安新县');
INSERT INTO `area_tb` VALUES ('130633', null, null, null, '1', null, null, null, '130600', null, 'yx', 'YiXian', null, '4', '074200', '易县');
INSERT INTO `area_tb` VALUES ('130634', null, null, null, '1', null, null, null, '130600', null, 'qyx', 'QuYangXian', null, '4', '073100', '曲阳县');
INSERT INTO `area_tb` VALUES ('130635', null, null, null, '1', null, null, null, '130600', null, 'lx', 'ZuoXian   ', null, '4', '071400', '蠡县');
INSERT INTO `area_tb` VALUES ('130636', null, null, null, '1', null, null, null, '130600', null, 'spx', 'ShunPingXian  ', null, '4', '072250', '顺平县');
INSERT INTO `area_tb` VALUES ('130637', null, null, null, '1', null, null, null, '130600', null, 'byx', 'BoYeXian  ', null, '4', '071300', '博野县');
INSERT INTO `area_tb` VALUES ('130638', null, null, null, '1', null, null, null, '130600', null, 'xx', 'XiongXian ', null, '4', '071800', '雄县');
INSERT INTO `area_tb` VALUES ('130681', null, null, null, '1', null, null, null, '130600', null, 'zzs', 'ZuoZhouShi', null, '4', '072750', '涿州市');
INSERT INTO `area_tb` VALUES ('130682', null, null, null, '1', null, null, null, '130600', null, 'dzs', 'DingZhouShi   ', null, '4', '073000', '定州市');
INSERT INTO `area_tb` VALUES ('130683', null, null, null, '1', null, null, null, '130600', null, 'ags', 'AnGuoShi  ', null, '4', '071200', '安国市');
INSERT INTO `area_tb` VALUES ('130684', null, null, null, '1', null, null, null, '130600', null, 'gbds', 'GaoBeiDianShi ', null, '4', '074000', '高碑店市');
INSERT INTO `area_tb` VALUES ('130698', null, null, null, '1', null, null, null, '130600', null, 'gkq', 'GaoKaiQu  ', null, '4', '', '高开区');
INSERT INTO `area_tb` VALUES ('130699', null, null, null, '1', null, null, null, '130600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130700', null, null, null, '1', null, null, null, '130000', null, 'zjks', 'ZhangJiaKouShi', null, '3', '075000', '张家口市');
INSERT INTO `area_tb` VALUES ('130702', null, null, null, '1', null, null, null, '130700', null, 'qdq', 'QiaoDongQu', null, '4', '075000', '桥东区');
INSERT INTO `area_tb` VALUES ('130703', null, null, null, '1', null, null, null, '130700', null, 'qxq', 'QiaoXiQu  ', null, '4', '075061', '桥西区');
INSERT INTO `area_tb` VALUES ('130705', null, null, null, '1', null, null, null, '130700', null, 'xhq', 'XuanHuaQu ', null, '4', '075100', '宣化区');
INSERT INTO `area_tb` VALUES ('130706', null, null, null, '1', null, null, null, '130700', null, 'xhyq', 'XiaHuaYuanQu  ', null, '4', '075300', '下花园区');
INSERT INTO `area_tb` VALUES ('130721', null, null, null, '1', null, null, null, '130700', null, 'xhx', 'XuanHuaXian   ', null, '4', '075100', '宣化县');
INSERT INTO `area_tb` VALUES ('130722', null, null, null, '1', null, null, null, '130700', null, 'zbx', 'ZhangBeiXian  ', null, '4', '076450', '张北县');
INSERT INTO `area_tb` VALUES ('130723', null, null, null, '1', null, null, null, '130700', null, 'kbx', 'KangBaoXian   ', null, '4', '076650', '康保县');
INSERT INTO `area_tb` VALUES ('130724', null, null, null, '1', null, null, null, '130700', null, 'gyx', 'GuYuanXian', null, '4', '076550', '沽源县');
INSERT INTO `area_tb` VALUES ('130725', null, null, null, '1', null, null, null, '130700', null, 'syx', 'ShangYiXian   ', null, '4', '076750', '尚义县');
INSERT INTO `area_tb` VALUES ('130726', null, null, null, '1', null, null, null, '130700', null, 'wx', 'WeiXian   ', null, '4', '075700', '蔚县');
INSERT INTO `area_tb` VALUES ('130727', null, null, null, '1', null, null, null, '130700', null, 'yyx', 'YangYuanXian  ', null, '4', '075800', '阳原县');
INSERT INTO `area_tb` VALUES ('130728', null, null, null, '1', null, null, null, '130700', null, 'hax', 'HuaiAnXian', null, '4', '076150', '怀安县');
INSERT INTO `area_tb` VALUES ('130729', null, null, null, '1', null, null, null, '130700', null, 'wqx', 'WanQuanXian   ', null, '4', '076250', '万全县');
INSERT INTO `area_tb` VALUES ('130730', null, null, null, '1', null, null, null, '130700', null, 'hlx', 'HuaiLaiXian   ', null, '4', '075400', '怀来县');
INSERT INTO `area_tb` VALUES ('130731', null, null, null, '1', null, null, null, '130700', null, 'zlx', 'ZuoLuXian ', null, '4', '075600', '涿鹿县');
INSERT INTO `area_tb` VALUES ('130732', null, null, null, '1', null, null, null, '130700', null, 'ccx', 'ChiChengXian  ', null, '4', '075500', '赤城县');
INSERT INTO `area_tb` VALUES ('130733', null, null, null, '1', null, null, null, '130700', null, 'clx', 'ChongLiXian   ', null, '4', '076350', '崇礼县');
INSERT INTO `area_tb` VALUES ('130734', null, null, null, '1', null, null, null, '130700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130800', null, null, null, '1', null, null, null, '130000', null, 'cds', 'ChengDeShi', null, '3', '067000', '承德市');
INSERT INTO `area_tb` VALUES ('130802', null, null, null, '1', null, null, null, '130800', null, 'sqq', 'ShuangQiaoQu  ', null, '4', '067000', '双桥区');
INSERT INTO `area_tb` VALUES ('130803', null, null, null, '1', null, null, null, '130800', null, 'slq', 'ShuangLuanQu  ', null, '4', '067000', '双滦区');
INSERT INTO `area_tb` VALUES ('130804', null, null, null, '1', null, null, null, '130800', null, 'ysyzkq', 'YingShouYingZiKuangQu ', null, '4', '067000', '鹰手营子矿区');
INSERT INTO `area_tb` VALUES ('130821', null, null, null, '1', null, null, null, '130800', null, 'cdx', 'ChengDeXian   ', null, '4', '067400', '承德县');
INSERT INTO `area_tb` VALUES ('130822', null, null, null, '1', null, null, null, '130800', null, 'xlx', 'XingLongXian  ', null, '4', '067300', '兴隆县');
INSERT INTO `area_tb` VALUES ('130823', null, null, null, '1', null, null, null, '130800', null, 'pqx', 'PingQuanXian  ', null, '4', '067500', '平泉县');
INSERT INTO `area_tb` VALUES ('130824', null, null, null, '1', null, null, null, '130800', null, 'lpx', 'LuanPingXian  ', null, '4', '068250', '滦平县');
INSERT INTO `area_tb` VALUES ('130825', null, null, null, '1', null, null, null, '130800', null, 'lhx', 'LongHuaXian   ', null, '4', '068150', '隆化县');
INSERT INTO `area_tb` VALUES ('130826', null, null, null, '1', null, null, null, '130800', null, 'fnmzzzx', 'FengNingManZuZiZhiXian', null, '4', '068350', '丰宁满族自治县');
INSERT INTO `area_tb` VALUES ('130827', null, null, null, '1', null, null, null, '130800', null, 'kcmzzzx', 'KuanChengManZuZiZhiXian   ', null, '4', '067600', '宽城满族自治县');
INSERT INTO `area_tb` VALUES ('130828', null, null, null, '1', null, null, null, '130800', null, 'wcmzmgzzzx', 'WeiChangManZuMengGuZuZiZhiXian', null, '4', '068450', '围场满族蒙古族自治县');
INSERT INTO `area_tb` VALUES ('130829', null, null, null, '1', null, null, null, '130800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('130900', null, null, null, '1', null, null, null, '130000', null, 'czs', 'CangZhouShi   ', null, '3', '061000', '沧州市');
INSERT INTO `area_tb` VALUES ('130902', null, null, null, '1', null, null, null, '130900', null, 'xhq', 'XinHuaQu  ', null, '4', '061000', '新华区');
INSERT INTO `area_tb` VALUES ('130903', null, null, null, '1', null, null, null, '130900', null, 'yhq', 'YunHeQu   ', null, '4', '061000', '运河区');
INSERT INTO `area_tb` VALUES ('130921', null, null, null, '1', null, null, null, '130900', null, 'cx', 'CangXian  ', null, '4', '061035', '沧县');
INSERT INTO `area_tb` VALUES ('130922', null, null, null, '1', null, null, null, '130900', null, 'qx', 'QingXian  ', null, '4', '062650', '青县');
INSERT INTO `area_tb` VALUES ('130923', null, null, null, '1', null, null, null, '130900', null, 'dgx', 'DongGuangXian ', null, '4', '061600', '东光县');
INSERT INTO `area_tb` VALUES ('130924', null, null, null, '1', null, null, null, '130900', null, 'hxx', 'HaiXingXian   ', null, '4', '061200', '海兴县');
INSERT INTO `area_tb` VALUES ('130925', null, null, null, '1', null, null, null, '130900', null, 'ysx', 'YanShanXian   ', null, '4', '061300', '盐山县');
INSERT INTO `area_tb` VALUES ('130926', null, null, null, '1', null, null, null, '130900', null, 'snx', 'SuNingXian', null, '4', '062350', '肃宁县');
INSERT INTO `area_tb` VALUES ('130927', null, null, null, '1', null, null, null, '130900', null, 'npx', 'NanPiXian ', null, '4', '061500', '南皮县');
INSERT INTO `area_tb` VALUES ('130928', null, null, null, '1', null, null, null, '130900', null, 'wqx', 'WuQiaoXian', null, '4', '061800', '吴桥县');
INSERT INTO `area_tb` VALUES ('130929', null, null, null, '1', null, null, null, '130900', null, 'xx', 'XianXian  ', null, '4', '062250', '献县');
INSERT INTO `area_tb` VALUES ('130930', null, null, null, '1', null, null, null, '130900', null, 'mchzzzx', 'MengCunHuiZuZiZhiXian ', null, '4', '061400', '孟村回族自治县');
INSERT INTO `area_tb` VALUES ('130981', null, null, null, '1', null, null, null, '130900', null, 'bts', 'BoTouShi  ', null, '4', '062150', '泊头市');
INSERT INTO `area_tb` VALUES ('130982', null, null, null, '1', null, null, null, '130900', null, 'rqs', 'RenQiuShi ', null, '4', '062550', '任丘市');
INSERT INTO `area_tb` VALUES ('130983', null, null, null, '1', null, null, null, '130900', null, 'hhs', 'HuangZuoShi   ', null, '4', '061100', '黄骅市');
INSERT INTO `area_tb` VALUES ('130984', null, null, null, '1', null, null, null, '130900', null, 'hjs', 'HeJianShi ', null, '4', '062450', '河间市');
INSERT INTO `area_tb` VALUES ('130985', null, null, null, '1', null, null, null, '130900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('131000', null, null, null, '1', null, null, null, '130000', null, 'lfs', 'LangFangShi   ', null, '3', '065000', '廊坊市');
INSERT INTO `area_tb` VALUES ('131002', null, null, null, '1', null, null, null, '131000', null, 'acq', 'AnCiQu', null, '4', '065000', '安次区');
INSERT INTO `area_tb` VALUES ('131003', null, null, null, '1', null, null, null, '131000', null, 'gyq', 'GuangYangQu   ', null, '4', '065000', '广阳区');
INSERT INTO `area_tb` VALUES ('131022', null, null, null, '1', null, null, null, '131000', null, 'gax', 'GuAnXian  ', null, '4', '065500', '固安县');
INSERT INTO `area_tb` VALUES ('131023', null, null, null, '1', null, null, null, '131000', null, 'yqx', 'YongQingXian  ', null, '4', '065600', '永清县');
INSERT INTO `area_tb` VALUES ('131024', null, null, null, '1', null, null, null, '131000', null, 'xhx', 'XiangHeXian   ', null, '4', '065400', '香河县');
INSERT INTO `area_tb` VALUES ('131025', null, null, null, '1', null, null, null, '131000', null, 'dcx', 'DaChengXian   ', null, '4', '065900', '大城县');
INSERT INTO `area_tb` VALUES ('131026', null, null, null, '1', null, null, null, '131000', null, 'wax', 'WenAnXian ', null, '4', '065800', '文安县');
INSERT INTO `area_tb` VALUES ('131028', null, null, null, '1', null, null, null, '131000', null, 'dchzzzx', 'DaChangHuiZuZiZhiXian ', null, '4', '065300', '大厂回族自治县');
INSERT INTO `area_tb` VALUES ('131051', null, null, null, '1', null, null, null, '131000', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('131052', null, null, null, '1', null, null, null, '131000', null, 'yjjjjskfq', 'YanJiaoJingJiJiShuKaiFaQu ', null, '4', '', '燕郊经济技术开发区');
INSERT INTO `area_tb` VALUES ('131081', null, null, null, '1', null, null, null, '131000', null, 'bzs', 'BaZhouShi ', null, '4', '065700', '霸州市');
INSERT INTO `area_tb` VALUES ('131082', null, null, null, '1', null, null, null, '131000', null, 'shs', 'SanHeShi  ', null, '4', '065200', '三河市');
INSERT INTO `area_tb` VALUES ('131083', null, null, null, '1', null, null, null, '131000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('131100', null, null, null, '1', null, null, null, '130000', null, 'hss', 'HengShuiShi   ', null, '3', '053000', '衡水市');
INSERT INTO `area_tb` VALUES ('131102', null, null, null, '1', null, null, null, '131100', null, 'tcq', 'TaoChengQu', null, '4', '053000', '桃城区');
INSERT INTO `area_tb` VALUES ('131121', null, null, null, '1', null, null, null, '131100', null, 'zqx', 'ZaoQiangXian  ', null, '4', '053100', '枣强县');
INSERT INTO `area_tb` VALUES ('131122', null, null, null, '1', null, null, null, '131100', null, 'wyx', 'WuYiXian  ', null, '4', '053400', '武邑县');
INSERT INTO `area_tb` VALUES ('131123', null, null, null, '1', null, null, null, '131100', null, 'wqx', 'WuQiangXian   ', null, '4', '053300', '武强县');
INSERT INTO `area_tb` VALUES ('131124', null, null, null, '1', null, null, null, '131100', null, 'ryx', 'RaoYangXian   ', null, '4', '053900', '饶阳县');
INSERT INTO `area_tb` VALUES ('131125', null, null, null, '1', null, null, null, '131100', null, 'apx', 'AnPingXian', null, '4', '053600', '安平县');
INSERT INTO `area_tb` VALUES ('131126', null, null, null, '1', null, null, null, '131100', null, 'gcx', 'GuChengXian   ', null, '4', '253800', '故城县');
INSERT INTO `area_tb` VALUES ('131127', null, null, null, '1', null, null, null, '131100', null, 'jx', 'JingXian  ', null, '4', '053500', '景县');
INSERT INTO `area_tb` VALUES ('131128', null, null, null, '1', null, null, null, '131100', null, 'fcx', 'FuChengXian   ', null, '4', '053700', '阜城县');
INSERT INTO `area_tb` VALUES ('131181', null, null, null, '1', null, null, null, '131100', null, 'jzs', 'JiZhouShi ', null, '4', '053200', '冀州市');
INSERT INTO `area_tb` VALUES ('131182', null, null, null, '1', null, null, null, '131100', null, 'szs', 'ShenZhouShi   ', null, '4', '053800', '深州市');
INSERT INTO `area_tb` VALUES ('131183', null, null, null, '1', null, null, null, '131100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140000', null, null, null, '1', null, null, null, '1', null, 'ssxs', 'ShanXiSheng   ', null, '2', '', '山西省');
INSERT INTO `area_tb` VALUES ('140100', null, null, null, '1', null, null, null, '140000', null, 'tys', 'TaiYuanShi', null, '3', '030000', '太原市');
INSERT INTO `area_tb` VALUES ('140105', null, null, null, '1', null, null, null, '140100', null, 'xdq', 'XiaoDianQu', null, '4', '030032', '小店区');
INSERT INTO `area_tb` VALUES ('140106', null, null, null, '1', null, null, null, '140100', null, 'yzq', 'YingZeQu  ', null, '4', '030024', '迎泽区');
INSERT INTO `area_tb` VALUES ('140107', null, null, null, '1', null, null, null, '140100', null, 'xhlq', 'XingHuaLingQu ', null, '4', '030001', '杏花岭区');
INSERT INTO `area_tb` VALUES ('140108', null, null, null, '1', null, null, null, '140100', null, 'jcpq', 'JianCaoPingQu ', null, '4', '030003', '尖草坪区');
INSERT INTO `area_tb` VALUES ('140109', null, null, null, '1', null, null, null, '140100', null, 'wblq', 'WanBaiLinQu   ', null, '4', '030027', '万柏林区');
INSERT INTO `area_tb` VALUES ('140110', null, null, null, '1', null, null, null, '140100', null, 'jyq', 'JinYuanQu ', null, '4', '030025', '晋源区');
INSERT INTO `area_tb` VALUES ('140121', null, null, null, '1', null, null, null, '140100', null, 'qxx', 'QingXuXian', null, '4', '030400', '清徐县');
INSERT INTO `area_tb` VALUES ('140122', null, null, null, '1', null, null, null, '140100', null, 'yqx', 'YangQuXian', null, '4', '030100', '阳曲县');
INSERT INTO `area_tb` VALUES ('140123', null, null, null, '1', null, null, null, '140100', null, 'lfx', 'LouFanXian', null, '4', '030300', '娄烦县');
INSERT INTO `area_tb` VALUES ('140181', null, null, null, '1', null, null, null, '140100', null, 'gjs', 'GuJiaoShi ', null, '4', '030200', '古交市');
INSERT INTO `area_tb` VALUES ('140182', null, null, null, '1', null, null, null, '140100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140200', null, null, null, '1', null, null, null, '140000', null, 'dts', 'DaTongShi ', null, '3', '037000', '大同市');
INSERT INTO `area_tb` VALUES ('140202', null, null, null, '1', null, null, null, '140200', null, 'cq', 'ChengQu   ', null, '4', '037008', '城区');
INSERT INTO `area_tb` VALUES ('140203', null, null, null, '1', null, null, null, '140200', null, 'kq', 'KuangQu   ', null, '4', '037001', '矿区');
INSERT INTO `area_tb` VALUES ('140211', null, null, null, '1', null, null, null, '140200', null, 'njq', 'NanJiaoQu ', null, '4', '037001', '南郊区');
INSERT INTO `area_tb` VALUES ('140212', null, null, null, '1', null, null, null, '140200', null, 'xrq', 'XinRongQu ', null, '4', '037002', '新荣区');
INSERT INTO `area_tb` VALUES ('140221', null, null, null, '1', null, null, null, '140200', null, 'ygx', 'YangGaoXian   ', null, '4', '038100', '阳高县');
INSERT INTO `area_tb` VALUES ('140222', null, null, null, '1', null, null, null, '140200', null, 'tzx', 'TianZhenXian  ', null, '4', '038200', '天镇县');
INSERT INTO `area_tb` VALUES ('140223', null, null, null, '1', null, null, null, '140200', null, 'glx', 'GuangLingXian ', null, '4', '037500', '广灵县');
INSERT INTO `area_tb` VALUES ('140224', null, null, null, '1', null, null, null, '140200', null, 'lqx', 'LingQiuXian   ', null, '4', '034400', '灵丘县');
INSERT INTO `area_tb` VALUES ('140225', null, null, null, '1', null, null, null, '140200', null, 'hyx', 'HunYuanXian   ', null, '4', '037400', '浑源县');
INSERT INTO `area_tb` VALUES ('140226', null, null, null, '1', null, null, null, '140200', null, 'zyx', 'ZuoYunXian', null, '4', '037100', '左云县');
INSERT INTO `area_tb` VALUES ('140227', null, null, null, '1', null, null, null, '140200', null, 'dtx', 'DaTongXian', null, '4', '037300', '大同县');
INSERT INTO `area_tb` VALUES ('140228', null, null, null, '1', null, null, null, '140200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140300', null, null, null, '1', null, null, null, '140000', null, 'yqs', 'YangQuanShi   ', null, '3', '045000', '阳泉市');
INSERT INTO `area_tb` VALUES ('140302', null, null, null, '1', null, null, null, '140300', null, 'cq', 'ChengQu   ', null, '4', '045000', '城区');
INSERT INTO `area_tb` VALUES ('140303', null, null, null, '1', null, null, null, '140300', null, 'kq', 'KuangQu   ', null, '4', '045000', '矿区');
INSERT INTO `area_tb` VALUES ('140311', null, null, null, '1', null, null, null, '140300', null, 'jq', 'JiaoQu', null, '4', '045011', '郊区');
INSERT INTO `area_tb` VALUES ('140321', null, null, null, '1', null, null, null, '140300', null, 'pdx', 'PingDingXian  ', null, '4', '045200', '平定县');
INSERT INTO `area_tb` VALUES ('140322', null, null, null, '1', null, null, null, '140300', null, 'yx', 'YuXian', null, '4', '045100', '盂县');
INSERT INTO `area_tb` VALUES ('140323', null, null, null, '1', null, null, null, '140300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140400', null, null, null, '1', null, null, null, '140000', null, 'czs', 'ChangZhiShi   ', null, '3', '046000', '长治市');
INSERT INTO `area_tb` VALUES ('140421', null, null, null, '1', null, null, null, '140400', null, 'czx', 'ChangZhiXian  ', null, '4', '047100', '长治县');
INSERT INTO `area_tb` VALUES ('140423', null, null, null, '1', null, null, null, '140400', null, 'xyx', 'XiangYuanXian ', null, '4', '046200', '襄垣县');
INSERT INTO `area_tb` VALUES ('140424', null, null, null, '1', null, null, null, '140400', null, 'tlx', 'TunLiuXian', null, '4', '046100', '屯留县');
INSERT INTO `area_tb` VALUES ('140425', null, null, null, '1', null, null, null, '140400', null, 'psx', 'PingShunXian  ', null, '4', '047400', '平顺县');
INSERT INTO `area_tb` VALUES ('140426', null, null, null, '1', null, null, null, '140400', null, 'lcx', 'LiChengXian   ', null, '4', '047600', '黎城县');
INSERT INTO `area_tb` VALUES ('140427', null, null, null, '1', null, null, null, '140400', null, 'hgx', 'HuGuanXian', null, '4', '047300', '壶关县');
INSERT INTO `area_tb` VALUES ('140428', null, null, null, '1', null, null, null, '140400', null, 'czx', 'ChangZiXian   ', null, '4', '046600', '长子县');
INSERT INTO `area_tb` VALUES ('140429', null, null, null, '1', null, null, null, '140400', null, 'wxx', 'WuXiangXian   ', null, '4', '046300', '武乡县');
INSERT INTO `area_tb` VALUES ('140430', null, null, null, '1', null, null, null, '140400', null, 'qx', 'QinXian   ', null, '4', '046400', '沁县');
INSERT INTO `area_tb` VALUES ('140431', null, null, null, '1', null, null, null, '140400', null, 'qyx', 'QinYuanXian   ', null, '4', '046500', '沁源县');
INSERT INTO `area_tb` VALUES ('140481', null, null, null, '1', null, null, null, '140400', null, 'lcs', 'LuChengShi', null, '4', '047500', '潞城市');
INSERT INTO `area_tb` VALUES ('140482', null, null, null, '1', null, null, null, '140400', null, 'cq', 'ChengQu   ', null, '4', '046011', '城区');
INSERT INTO `area_tb` VALUES ('140483', null, null, null, '1', null, null, null, '140400', null, 'jq', 'JiaoQu', null, '4', '046011', '郊区');
INSERT INTO `area_tb` VALUES ('140484', null, null, null, '1', null, null, null, '140400', null, 'gxq', 'GaoXinQu  ', null, '4', '', '高新区');
INSERT INTO `area_tb` VALUES ('140485', null, null, null, '1', null, null, null, '140400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140500', null, null, null, '1', null, null, null, '140000', null, 'jcs', 'JinChengShi   ', null, '3', '048000', '晋城市');
INSERT INTO `area_tb` VALUES ('140502', null, null, null, '1', null, null, null, '140500', null, 'cq', 'ChengQu   ', null, '4', '048000', '城区');
INSERT INTO `area_tb` VALUES ('140521', null, null, null, '1', null, null, null, '140500', null, 'qsx', 'QinShuiXian   ', null, '4', '048200', '沁水县');
INSERT INTO `area_tb` VALUES ('140522', null, null, null, '1', null, null, null, '140500', null, 'ycx', 'YangChengXian ', null, '4', '048100', '阳城县');
INSERT INTO `area_tb` VALUES ('140524', null, null, null, '1', null, null, null, '140500', null, 'lcx', 'LingChuanXian ', null, '4', '048300', '陵川县');
INSERT INTO `area_tb` VALUES ('140525', null, null, null, '1', null, null, null, '140500', null, 'zzx', 'ZeZhouXian', null, '4', '048012', '泽州县');
INSERT INTO `area_tb` VALUES ('140581', null, null, null, '1', null, null, null, '140500', null, 'gps', 'GaoPingShi', null, '4', '048400', '高平市');
INSERT INTO `area_tb` VALUES ('140582', null, null, null, '1', null, null, null, '140500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140600', null, null, null, '1', null, null, null, '140000', null, 'szs', 'ShuoZhouShi   ', null, '3', '036000', '朔州市');
INSERT INTO `area_tb` VALUES ('140602', null, null, null, '1', null, null, null, '140600', null, 'scq', 'ShuoChengQu   ', null, '4', '038500', '朔城区');
INSERT INTO `area_tb` VALUES ('140603', null, null, null, '1', null, null, null, '140600', null, 'plq', 'PingLuQu  ', null, '4', '038600', '平鲁区');
INSERT INTO `area_tb` VALUES ('140621', null, null, null, '1', null, null, null, '140600', null, 'syx', 'ShanYinXian   ', null, '4', '036900', '山阴县');
INSERT INTO `area_tb` VALUES ('140622', null, null, null, '1', null, null, null, '140600', null, 'yx', 'YingXian  ', null, '4', '037600', '应县');
INSERT INTO `area_tb` VALUES ('140623', null, null, null, '1', null, null, null, '140600', null, 'yyx', 'YouYuXian ', null, '4', '037200', '右玉县');
INSERT INTO `area_tb` VALUES ('140624', null, null, null, '1', null, null, null, '140600', null, 'hrx', 'HuaiRenXian   ', null, '4', '038300', '怀仁县');
INSERT INTO `area_tb` VALUES ('140625', null, null, null, '1', null, null, null, '140600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140700', null, null, null, '1', null, null, null, '140000', null, 'jzs', 'JinZhongShi   ', null, '3', '030600', '晋中市');
INSERT INTO `area_tb` VALUES ('140702', null, null, null, '1', null, null, null, '140700', null, 'ycq', 'YuCiQu', null, '4', '030600', '榆次区');
INSERT INTO `area_tb` VALUES ('140721', null, null, null, '1', null, null, null, '140700', null, 'ysx', 'YuSheXian ', null, '4', '031800', '榆社县');
INSERT INTO `area_tb` VALUES ('140722', null, null, null, '1', null, null, null, '140700', null, 'zqx', 'ZuoQuanXian   ', null, '4', '032600', '左权县');
INSERT INTO `area_tb` VALUES ('140723', null, null, null, '1', null, null, null, '140700', null, 'hsx', 'HeShunXian', null, '4', '032700', '和顺县');
INSERT INTO `area_tb` VALUES ('140724', null, null, null, '1', null, null, null, '140700', null, 'xyx', 'XiYangXian', null, '4', '045300', '昔阳县');
INSERT INTO `area_tb` VALUES ('140725', null, null, null, '1', null, null, null, '140700', null, 'syx', 'ShouYangXian  ', null, '4', '045400', '寿阳县');
INSERT INTO `area_tb` VALUES ('140726', null, null, null, '1', null, null, null, '140700', null, 'tgx', 'TaiGuXian ', null, '4', '030800', '太谷县');
INSERT INTO `area_tb` VALUES ('140727', null, null, null, '1', null, null, null, '140700', null, 'qx', 'QiXian', null, '4', '030900', '祁县');
INSERT INTO `area_tb` VALUES ('140728', null, null, null, '1', null, null, null, '140700', null, 'pyx', 'PingYaoXian   ', null, '4', '031100', '平遥县');
INSERT INTO `area_tb` VALUES ('140729', null, null, null, '1', null, null, null, '140700', null, 'lsx', 'LingShiXian   ', null, '4', '031300', '灵石县');
INSERT INTO `area_tb` VALUES ('140781', null, null, null, '1', null, null, null, '140700', null, 'jxs', 'JieXiuShi ', null, '4', '032000', '介休市');
INSERT INTO `area_tb` VALUES ('140782', null, null, null, '1', null, null, null, '140700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140800', null, null, null, '1', null, null, null, '140000', null, 'ycs', 'YunChengShi   ', null, '3', '044000', '运城市');
INSERT INTO `area_tb` VALUES ('140802', null, null, null, '1', null, null, null, '140800', null, 'yhq', 'YanHuQu   ', null, '4', '044300', '盐湖区');
INSERT INTO `area_tb` VALUES ('140821', null, null, null, '1', null, null, null, '140800', null, 'lyx', 'LinZuoXian', null, '4', '044100', '临猗县');
INSERT INTO `area_tb` VALUES ('140822', null, null, null, '1', null, null, null, '140800', null, 'wrx', 'WanRongXian   ', null, '4', '044200', '万荣县');
INSERT INTO `area_tb` VALUES ('140823', null, null, null, '1', null, null, null, '140800', null, 'wxx', 'WenXiXian ', null, '4', '043800', '闻喜县');
INSERT INTO `area_tb` VALUES ('140824', null, null, null, '1', null, null, null, '140800', null, 'jsx', 'ZuoShanXian   ', null, '4', '043200', '稷山县');
INSERT INTO `area_tb` VALUES ('140825', null, null, null, '1', null, null, null, '140800', null, 'xjx', 'XinZuoXian', null, '4', '043100', '新绛县');
INSERT INTO `area_tb` VALUES ('140826', null, null, null, '1', null, null, null, '140800', null, 'jx', 'ZuoXian   ', null, '4', '043600', '绛县');
INSERT INTO `area_tb` VALUES ('140827', null, null, null, '1', null, null, null, '140800', null, 'yqx', 'YuanQuXian', null, '4', '043700', '垣曲县');
INSERT INTO `area_tb` VALUES ('140828', null, null, null, '1', null, null, null, '140800', null, 'xx', 'XiaXian   ', null, '4', '044400', '夏县');
INSERT INTO `area_tb` VALUES ('140829', null, null, null, '1', null, null, null, '140800', null, 'plx', 'PingLuXian', null, '4', '044300', '平陆县');
INSERT INTO `area_tb` VALUES ('140830', null, null, null, '1', null, null, null, '140800', null, 'jcx', 'ZuoChengXian  ', null, '4', '044600', '芮城县');
INSERT INTO `area_tb` VALUES ('140881', null, null, null, '1', null, null, null, '140800', null, 'yjs', 'YongJiShi ', null, '4', '044500', '永济市');
INSERT INTO `area_tb` VALUES ('140882', null, null, null, '1', null, null, null, '140800', null, 'hjs', 'HeJinShi  ', null, '4', '043300', '河津市');
INSERT INTO `area_tb` VALUES ('140883', null, null, null, '1', null, null, null, '140800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('140900', null, null, null, '1', null, null, null, '140000', null, 'xzs', 'XinZhouShi', null, '3', '034000', '忻州市');
INSERT INTO `area_tb` VALUES ('140902', null, null, null, '1', null, null, null, '140900', null, 'xfq', 'XinFuQu   ', null, '4', '034000', '忻府区');
INSERT INTO `area_tb` VALUES ('140921', null, null, null, '1', null, null, null, '140900', null, 'dxx', 'DingXiangXian ', null, '4', '035400', '定襄县');
INSERT INTO `area_tb` VALUES ('140922', null, null, null, '1', null, null, null, '140900', null, 'wtx', 'WuTaiXian ', null, '4', '035500', '五台县');
INSERT INTO `area_tb` VALUES ('140923', null, null, null, '1', null, null, null, '140900', null, 'dx', 'DaiXian   ', null, '4', '034200', '代县');
INSERT INTO `area_tb` VALUES ('140924', null, null, null, '1', null, null, null, '140900', null, 'fzx', 'FanZhiXian', null, '4', '034300', '繁峙县');
INSERT INTO `area_tb` VALUES ('140925', null, null, null, '1', null, null, null, '140900', null, 'nwx', 'NingWuXian', null, '4', '036700', '宁武县');
INSERT INTO `area_tb` VALUES ('140926', null, null, null, '1', null, null, null, '140900', null, 'jlx', 'JingLeXian', null, '4', '035100', '静乐县');
INSERT INTO `area_tb` VALUES ('140927', null, null, null, '1', null, null, null, '140900', null, 'scx', 'ShenChiXian   ', null, '4', '036100', '神池县');
INSERT INTO `area_tb` VALUES ('140928', null, null, null, '1', null, null, null, '140900', null, 'wzx', 'WuZhaiXian', null, '4', '036100', '五寨县');
INSERT INTO `area_tb` VALUES ('140929', null, null, null, '1', null, null, null, '140900', null, 'klx', 'ZuoZuoXian', null, '4', '036300', '岢岚县');
INSERT INTO `area_tb` VALUES ('140930', null, null, null, '1', null, null, null, '140900', null, 'hqx', 'HeQuXian  ', null, '4', '036500', '河曲县');
INSERT INTO `area_tb` VALUES ('140931', null, null, null, '1', null, null, null, '140900', null, 'bdx', 'BaoDeXian ', null, '4', '036600', '保德县');
INSERT INTO `area_tb` VALUES ('140932', null, null, null, '1', null, null, null, '140900', null, 'pgx', 'PianGuanXian  ', null, '4', '036400', '偏关县');
INSERT INTO `area_tb` VALUES ('140981', null, null, null, '1', null, null, null, '140900', null, 'yps', 'YuanPingShi   ', null, '4', '034100', '原平市');
INSERT INTO `area_tb` VALUES ('140982', null, null, null, '1', null, null, null, '140900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('141000', null, null, null, '1', null, null, null, '140000', null, 'lfs', 'LinFenShi ', null, '3', '041000', '临汾市');
INSERT INTO `area_tb` VALUES ('141002', null, null, null, '1', null, null, null, '141000', null, 'ydq', 'YaoDuQu   ', null, '4', '041000', '尧都区');
INSERT INTO `area_tb` VALUES ('141021', null, null, null, '1', null, null, null, '141000', null, 'qwx', 'QuWoXian  ', null, '4', '043400', '曲沃县');
INSERT INTO `area_tb` VALUES ('141022', null, null, null, '1', null, null, null, '141000', null, 'ycx', 'YiChengXian   ', null, '4', '043500', '翼城县');
INSERT INTO `area_tb` VALUES ('141023', null, null, null, '1', null, null, null, '141000', null, 'xfx', 'XiangFenXian  ', null, '4', '041500', '襄汾县');
INSERT INTO `area_tb` VALUES ('141024', null, null, null, '1', null, null, null, '141000', null, 'hdx', 'HongDongXian  ', null, '4', '041600', '洪洞县');
INSERT INTO `area_tb` VALUES ('141025', null, null, null, '1', null, null, null, '141000', null, 'gx', 'GuXian', null, '4', '042400', '古县');
INSERT INTO `area_tb` VALUES ('141026', null, null, null, '1', null, null, null, '141000', null, 'azx', 'AnZeXian  ', null, '4', '042500', '安泽县');
INSERT INTO `area_tb` VALUES ('141027', null, null, null, '1', null, null, null, '141000', null, 'fsx', 'FuShanXian', null, '4', '042600', '浮山县');
INSERT INTO `area_tb` VALUES ('141028', null, null, null, '1', null, null, null, '141000', null, 'jx', 'JiXian', null, '4', '042200', '吉县');
INSERT INTO `area_tb` VALUES ('141029', null, null, null, '1', null, null, null, '141000', null, 'xnx', 'XiangNingXian ', null, '4', '042100', '乡宁县');
INSERT INTO `area_tb` VALUES ('141030', null, null, null, '1', null, null, null, '141000', null, 'dnx', 'DaNingXian', null, '4', '042300', '大宁县');
INSERT INTO `area_tb` VALUES ('141031', null, null, null, '1', null, null, null, '141000', null, 'xx', 'ZuoXian   ', null, '4', '041300', '隰县');
INSERT INTO `area_tb` VALUES ('141032', null, null, null, '1', null, null, null, '141000', null, 'yhx', 'YongHeXian', null, '4', '041400', '永和县');
INSERT INTO `area_tb` VALUES ('141033', null, null, null, '1', null, null, null, '141000', null, 'px', 'PuXian', null, '4', '041200', '蒲县');
INSERT INTO `area_tb` VALUES ('141034', null, null, null, '1', null, null, null, '141000', null, 'fxx', 'FenXiXian ', null, '4', '031500', '汾西县');
INSERT INTO `area_tb` VALUES ('141081', null, null, null, '1', null, null, null, '141000', null, 'hms', 'HouMaShi  ', null, '4', '043000', '侯马市');
INSERT INTO `area_tb` VALUES ('141082', null, null, null, '1', null, null, null, '141000', null, 'hzs', 'HuoZhouShi', null, '4', '031400', '霍州市');
INSERT INTO `area_tb` VALUES ('141083', null, null, null, '1', null, null, null, '141000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('141100', null, null, null, '1', null, null, null, '140000', null, 'lls', 'LvLiangShi', null, '3', '033000', '吕梁市');
INSERT INTO `area_tb` VALUES ('141102', null, null, null, '1', null, null, null, '141100', null, 'lsq', 'LiShiQu   ', null, '4', '033000', '离石区');
INSERT INTO `area_tb` VALUES ('141121', null, null, null, '1', null, null, null, '141100', null, 'wsx', 'WenShuiXian   ', null, '4', '032100', '文水县');
INSERT INTO `area_tb` VALUES ('141122', null, null, null, '1', null, null, null, '141100', null, 'jcx', 'JiaoChengXian ', null, '4', '030500', '交城县');
INSERT INTO `area_tb` VALUES ('141123', null, null, null, '1', null, null, null, '141100', null, 'xx', 'XingXian  ', null, '4', '033601', '兴县');
INSERT INTO `area_tb` VALUES ('141124', null, null, null, '1', null, null, null, '141100', null, 'lx', 'LinXian   ', null, '4', '033200', '临县');
INSERT INTO `area_tb` VALUES ('141125', null, null, null, '1', null, null, null, '141100', null, 'llx', 'LiuLinXian', null, '4', '033300', '柳林县');
INSERT INTO `area_tb` VALUES ('141126', null, null, null, '1', null, null, null, '141100', null, 'slx', 'ShiLouXian', null, '4', '032500', '石楼县');
INSERT INTO `area_tb` VALUES ('141127', null, null, null, '1', null, null, null, '141100', null, 'lx', 'ZuoXian   ', null, '4', '033500', '岚县');
INSERT INTO `area_tb` VALUES ('141128', null, null, null, '1', null, null, null, '141100', null, 'fsx', 'FangShanXian  ', null, '4', '033100', '方山县');
INSERT INTO `area_tb` VALUES ('141129', null, null, null, '1', null, null, null, '141100', null, 'zyx', 'ZhongYangXian ', null, '4', '033400', '中阳县');
INSERT INTO `area_tb` VALUES ('141130', null, null, null, '1', null, null, null, '141100', null, 'jkx', 'JiaoKouXian   ', null, '4', '032400', '交口县');
INSERT INTO `area_tb` VALUES ('141181', null, null, null, '1', null, null, null, '141100', null, 'xys', 'XiaoYiShi ', null, '4', '032208', '孝义市');
INSERT INTO `area_tb` VALUES ('141182', null, null, null, '1', null, null, null, '141100', null, 'fys', 'FenYangShi', null, '4', '032200', '汾阳市');
INSERT INTO `area_tb` VALUES ('141183', null, null, null, '1', null, null, null, '141100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150000', null, null, null, '1', null, null, null, '1', null, 'nmgzzq', 'NeiMengGuZiZhiQu  ', null, '2', '', '内蒙古自治区');
INSERT INTO `area_tb` VALUES ('150100', null, null, null, '1', null, null, null, '150000', null, 'hhhts', 'HuHeHaoTeShi  ', null, '3', '010000', '呼和浩特市');
INSERT INTO `area_tb` VALUES ('150102', null, null, null, '1', null, null, null, '150100', null, 'xcq', 'XinChengQu', null, '4', '010050', '新城区');
INSERT INTO `area_tb` VALUES ('150103', null, null, null, '1', null, null, null, '150100', null, 'hmq', 'HuiMinQu  ', null, '4', '010030', '回民区');
INSERT INTO `area_tb` VALUES ('150104', null, null, null, '1', null, null, null, '150100', null, 'yqq', 'YuQuanQu  ', null, '4', '010020', '玉泉区');
INSERT INTO `area_tb` VALUES ('150105', null, null, null, '1', null, null, null, '150100', null, 'shq', 'SaiHanQu  ', null, '4', '010020', '赛罕区');
INSERT INTO `area_tb` VALUES ('150121', null, null, null, '1', null, null, null, '150100', null, 'tmtzq', 'TuMoTeZuoQi   ', null, '4', '010100', '土默特左旗');
INSERT INTO `area_tb` VALUES ('150122', null, null, null, '1', null, null, null, '150100', null, 'tktx', 'TuoKeTuoXian  ', null, '4', '010200', '托克托县');
INSERT INTO `area_tb` VALUES ('150123', null, null, null, '1', null, null, null, '150100', null, 'hlgex', 'HeLinGeErXian ', null, '4', '011500', '和林格尔县');
INSERT INTO `area_tb` VALUES ('150124', null, null, null, '1', null, null, null, '150100', null, 'qshx', 'QingShuiHeXian', null, '4', '011600', '清水河县');
INSERT INTO `area_tb` VALUES ('150125', null, null, null, '1', null, null, null, '150100', null, 'wcx', 'WuChuanXian   ', null, '4', '011700', '武川县');
INSERT INTO `area_tb` VALUES ('150126', null, null, null, '1', null, null, null, '150100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150200', null, null, null, '1', null, null, null, '150000', null, 'bts', 'BaoTouShi ', null, '3', '014000', '包头市');
INSERT INTO `area_tb` VALUES ('150202', null, null, null, '1', null, null, null, '150200', null, 'dhq', 'DongHeQu  ', null, '4', '014040', '东河区');
INSERT INTO `area_tb` VALUES ('150203', null, null, null, '1', null, null, null, '150200', null, 'kdlq', 'KunDuLunQu', null, '4', '014010', '昆都仑区');
INSERT INTO `area_tb` VALUES ('150204', null, null, null, '1', null, null, null, '150200', null, 'qsq', 'QingShanQu', null, '4', '014030', '青山区');
INSERT INTO `area_tb` VALUES ('150205', null, null, null, '1', null, null, null, '150200', null, 'sgq', 'ShiGuaiQu ', null, '4', '014070', '石拐区');
INSERT INTO `area_tb` VALUES ('150206', null, null, null, '1', null, null, null, '150200', null, 'bykq', 'BaiYunKuangQu ', null, '4', '014080', '白云矿区');
INSERT INTO `area_tb` VALUES ('150207', null, null, null, '1', null, null, null, '150200', null, 'jyq', 'JiuYuanQu ', null, '4', '014060', '九原区');
INSERT INTO `area_tb` VALUES ('150221', null, null, null, '1', null, null, null, '150200', null, 'tmtyq', 'TuMoTeYouQi   ', null, '4', '014100', '土默特右旗');
INSERT INTO `area_tb` VALUES ('150222', null, null, null, '1', null, null, null, '150200', null, 'gyx', 'GuYangXian', null, '4', '014200', '固阳县');
INSERT INTO `area_tb` VALUES ('150223', null, null, null, '1', null, null, null, '150200', null, 'dehmmalhq', 'DaErHanMaoMingAnLianHeQi  ', null, '4', '014500', '达尔罕茂明安联合旗');
INSERT INTO `area_tb` VALUES ('150224', null, null, null, '1', null, null, null, '150200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150300', null, null, null, '1', null, null, null, '150000', null, 'whs', 'WuHaiShi  ', null, '3', '016000', '乌海市');
INSERT INTO `area_tb` VALUES ('150302', null, null, null, '1', null, null, null, '150300', null, 'hbwq', 'HaiBoWanQu', null, '4', '016000', '海勃湾区');
INSERT INTO `area_tb` VALUES ('150303', null, null, null, '1', null, null, null, '150300', null, 'hnq', 'HaiNanQu  ', null, '4', '016030', '海南区');
INSERT INTO `area_tb` VALUES ('150304', null, null, null, '1', null, null, null, '150300', null, 'wdq', 'WuDaQu', null, '4', '016040', '乌达区');
INSERT INTO `area_tb` VALUES ('150305', null, null, null, '1', null, null, null, '150300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150400', null, null, null, '1', null, null, null, '150000', null, 'cfs', 'ChiFengShi', null, '3', '024000', '赤峰市');
INSERT INTO `area_tb` VALUES ('150402', null, null, null, '1', null, null, null, '150400', null, 'hsq', 'HongShanQu', null, '4', '024020', '红山区');
INSERT INTO `area_tb` VALUES ('150403', null, null, null, '1', null, null, null, '150400', null, 'ybsq', 'YuanBaoShanQu ', null, '4', '024076', '元宝山区');
INSERT INTO `area_tb` VALUES ('150404', null, null, null, '1', null, null, null, '150400', null, 'ssq', 'SongShanQu', null, '4', '024005', '松山区');
INSERT INTO `area_tb` VALUES ('150421', null, null, null, '1', null, null, null, '150400', null, 'alkeqq', 'ALuKeErQinQi  ', null, '4', '025550', '阿鲁科尔沁旗');
INSERT INTO `area_tb` VALUES ('150422', null, null, null, '1', null, null, null, '150400', null, 'blzq', 'BaLinZuoQi', null, '4', '025450', '巴林左旗');
INSERT INTO `area_tb` VALUES ('150423', null, null, null, '1', null, null, null, '150400', null, 'blyq', 'BaLinYouQi', null, '4', '025150', '巴林右旗');
INSERT INTO `area_tb` VALUES ('150424', null, null, null, '1', null, null, null, '150400', null, 'lxx', 'LinXiXian ', null, '4', '025250', '林西县');
INSERT INTO `area_tb` VALUES ('150425', null, null, null, '1', null, null, null, '150400', null, 'ksktq', 'KeShiKeTengQi ', null, '4', '025350', '克什克腾旗');
INSERT INTO `area_tb` VALUES ('150426', null, null, null, '1', null, null, null, '150400', null, 'wntq', 'WengNiuTeQi   ', null, '4', '024500', '翁牛特旗');
INSERT INTO `area_tb` VALUES ('150428', null, null, null, '1', null, null, null, '150400', null, 'klqq', 'KaLaQinQi ', null, '4', '024400', '喀喇沁旗');
INSERT INTO `area_tb` VALUES ('150429', null, null, null, '1', null, null, null, '150400', null, 'ncx', 'NingChengXian ', null, '4', '024200', '宁城县');
INSERT INTO `area_tb` VALUES ('150430', null, null, null, '1', null, null, null, '150400', null, 'ahq', 'AoHanQi   ', null, '4', '024300', '敖汉旗');
INSERT INTO `area_tb` VALUES ('150431', null, null, null, '1', null, null, null, '150400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150500', null, null, null, '1', null, null, null, '150000', null, 'tls', 'TongLiaoShi   ', null, '3', '028000', '通辽市');
INSERT INTO `area_tb` VALUES ('150502', null, null, null, '1', null, null, null, '150500', null, 'keqq', 'KeErQinQu ', null, '4', '028000', '科尔沁区');
INSERT INTO `area_tb` VALUES ('150521', null, null, null, '1', null, null, null, '150500', null, 'keqzyzq', 'KeErQinZuoYiZhongQi   ', null, '4', '029300', '科尔沁左翼中旗');
INSERT INTO `area_tb` VALUES ('150522', null, null, null, '1', null, null, null, '150500', null, 'keqzyhq', 'KeErQinZuoYiHouQi ', null, '4', '028100', '科尔沁左翼后旗');
INSERT INTO `area_tb` VALUES ('150523', null, null, null, '1', null, null, null, '150500', null, 'klx', 'KaiLuXian ', null, '4', '028400', '开鲁县');
INSERT INTO `area_tb` VALUES ('150524', null, null, null, '1', null, null, null, '150500', null, 'klq', 'KuLunQi   ', null, '4', '028200', '库伦旗');
INSERT INTO `area_tb` VALUES ('150525', null, null, null, '1', null, null, null, '150500', null, 'nmq', 'NaiManQi  ', null, '4', '028300', '奈曼旗');
INSERT INTO `area_tb` VALUES ('150526', null, null, null, '1', null, null, null, '150500', null, 'zltq', 'ZhaLuTeQi ', null, '4', '029100', '扎鲁特旗');
INSERT INTO `area_tb` VALUES ('150581', null, null, null, '1', null, null, null, '150500', null, 'hlgls', 'HuoLinGuoLeShi', null, '4', '029200', '霍林郭勒市');
INSERT INTO `area_tb` VALUES ('150582', null, null, null, '1', null, null, null, '150500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150600', null, null, null, '1', null, null, null, '150000', null, 'eedss', 'EErDuoSiShi   ', null, '3', '017004', '鄂尔多斯市');
INSERT INTO `area_tb` VALUES ('150602', null, null, null, '1', null, null, null, '150600', null, 'dsq', 'DongShengQu   ', null, '4', '017000', '东胜区');
INSERT INTO `area_tb` VALUES ('150621', null, null, null, '1', null, null, null, '150600', null, 'dltq', 'DaLaTeQi  ', null, '4', '014300', '达拉特旗');
INSERT INTO `area_tb` VALUES ('150622', null, null, null, '1', null, null, null, '150600', null, 'zgeq', 'ZhunGeErQi', null, '4', '017100', '准格尔旗');
INSERT INTO `area_tb` VALUES ('150623', null, null, null, '1', null, null, null, '150600', null, 'etkqq', 'ETuoKeQianQi  ', null, '4', '016200', '鄂托克前旗');
INSERT INTO `area_tb` VALUES ('150624', null, null, null, '1', null, null, null, '150600', null, 'etkq', 'ETuoKeQi  ', null, '4', '016100', '鄂托克旗');
INSERT INTO `area_tb` VALUES ('150625', null, null, null, '1', null, null, null, '150600', null, 'hjq', 'HangJinQi ', null, '4', '017400', '杭锦旗');
INSERT INTO `area_tb` VALUES ('150626', null, null, null, '1', null, null, null, '150600', null, 'wsq', 'WuShenQi  ', null, '4', '017300', '乌审旗');
INSERT INTO `area_tb` VALUES ('150627', null, null, null, '1', null, null, null, '150600', null, 'yjhlq', 'YiJinHuoLuoQi ', null, '4', '017200', '伊金霍洛旗');
INSERT INTO `area_tb` VALUES ('150628', null, null, null, '1', null, null, null, '150600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150700', null, null, null, '1', null, null, null, '150000', null, 'hlbes', 'HuLunBeiErShi ', null, '3', '021008', '呼伦贝尔市');
INSERT INTO `area_tb` VALUES ('150702', null, null, null, '1', null, null, null, '150700', null, 'hleq', 'HaiLaErQu ', null, '4', '021000', '海拉尔区');
INSERT INTO `area_tb` VALUES ('150721', null, null, null, '1', null, null, null, '150700', null, 'arq', 'ARongQi   ', null, '4', '162750', '阿荣旗');
INSERT INTO `area_tb` VALUES ('150722', null, null, null, '1', null, null, null, '150700', null, 'mldwdwezzzq', 'MoLiDaWaDaWoErZuZiZhi ', null, '4', '162850', '莫力达瓦达斡尔族自治旗');
INSERT INTO `area_tb` VALUES ('150723', null, null, null, '1', null, null, null, '150700', null, 'elczzq', 'ELunChunZiZhiQi   ', null, '4', '165450', '鄂伦春自治旗');
INSERT INTO `area_tb` VALUES ('150724', null, null, null, '1', null, null, null, '150700', null, 'ewkzzzq', 'EWenKeZuZiZhiQi   ', null, '4', '021100', '鄂温克族自治旗');
INSERT INTO `area_tb` VALUES ('150725', null, null, null, '1', null, null, null, '150700', null, 'cbehq', 'ChenBaErHuQi  ', null, '4', '021500', '陈巴尔虎旗');
INSERT INTO `area_tb` VALUES ('150726', null, null, null, '1', null, null, null, '150700', null, 'xbehzq', 'XinBaErHuZuoQi', null, '4', '021200', '新巴尔虎左旗');
INSERT INTO `area_tb` VALUES ('150727', null, null, null, '1', null, null, null, '150700', null, 'xbehyq', 'XinBaErHuYouQi', null, '4', '021300', '新巴尔虎右旗');
INSERT INTO `area_tb` VALUES ('150781', null, null, null, '1', null, null, null, '150700', null, 'mzls', 'ManZhouLiShi  ', null, '4', '021400', '满洲里市');
INSERT INTO `area_tb` VALUES ('150782', null, null, null, '1', null, null, null, '150700', null, 'ykss', 'YaKeShiShi', null, '4', '162650', '牙克石市');
INSERT INTO `area_tb` VALUES ('150783', null, null, null, '1', null, null, null, '150700', null, 'zlts', 'ZhaLanTunShi  ', null, '4', '162650', '扎兰屯市');
INSERT INTO `area_tb` VALUES ('150784', null, null, null, '1', null, null, null, '150700', null, 'eegns', 'EErGuNaShi', null, '4', '022250', '额尔古纳市');
INSERT INTO `area_tb` VALUES ('150785', null, null, null, '1', null, null, null, '150700', null, 'ghs', 'GenHeShi  ', null, '4', '022350', '根河市');
INSERT INTO `area_tb` VALUES ('150786', null, null, null, '1', null, null, null, '150700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150800', null, null, null, '1', null, null, null, '150000', null, 'bynes', 'BaYanNaoErShi ', null, '3', '015001', '巴彦淖尔市');
INSERT INTO `area_tb` VALUES ('150802', null, null, null, '1', null, null, null, '150800', null, 'lhq', 'LinHeQu   ', null, '4', '015001', '临河区');
INSERT INTO `area_tb` VALUES ('150821', null, null, null, '1', null, null, null, '150800', null, 'wyx', 'WuYuanXian', null, '4', '015100', '五原县');
INSERT INTO `area_tb` VALUES ('150822', null, null, null, '1', null, null, null, '150800', null, 'dkx', 'ZuoKouXian', null, '4', '015200', '磴口县');
INSERT INTO `area_tb` VALUES ('150823', null, null, null, '1', null, null, null, '150800', null, 'wltqq', 'WuLaTeQianQi  ', null, '4', '015400', '乌拉特前旗');
INSERT INTO `area_tb` VALUES ('150824', null, null, null, '1', null, null, null, '150800', null, 'wltzq', 'WuLaTeZhongQi ', null, '4', '015300', '乌拉特中旗');
INSERT INTO `area_tb` VALUES ('150825', null, null, null, '1', null, null, null, '150800', null, 'wlthq', 'WuLaTeHouQi   ', null, '4', '015500', '乌拉特后旗');
INSERT INTO `area_tb` VALUES ('150826', null, null, null, '1', null, null, null, '150800', null, 'hjhq', 'HangJinHouQi  ', null, '4', '015400', '杭锦后旗');
INSERT INTO `area_tb` VALUES ('150827', null, null, null, '1', null, null, null, '150800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('150900', null, null, null, '1', null, null, null, '150000', null, 'wlcbs', 'WuLanChaBuShi ', null, '3', '012000', '乌兰察布市');
INSERT INTO `area_tb` VALUES ('150902', null, null, null, '1', null, null, null, '150900', null, 'jnq', 'JiNingQu  ', null, '4', '012000', '集宁区');
INSERT INTO `area_tb` VALUES ('150921', null, null, null, '1', null, null, null, '150900', null, 'zzx', 'ZhuoZiXian', null, '4', '012300', '卓资县');
INSERT INTO `area_tb` VALUES ('150922', null, null, null, '1', null, null, null, '150900', null, 'hdx', 'HuaDeXian ', null, '4', '013350', '化德县');
INSERT INTO `area_tb` VALUES ('150923', null, null, null, '1', null, null, null, '150900', null, 'sdx', 'ShangDuXian   ', null, '4', '013400', '商都县');
INSERT INTO `area_tb` VALUES ('150924', null, null, null, '1', null, null, null, '150900', null, 'xhx', 'XingHeXian', null, '4', '013650', '兴和县');
INSERT INTO `area_tb` VALUES ('150925', null, null, null, '1', null, null, null, '150900', null, 'lcx', 'LiangChengXian', null, '4', '013750', '凉城县');
INSERT INTO `area_tb` VALUES ('150926', null, null, null, '1', null, null, null, '150900', null, 'cheyyqq', 'ChaHaErYouYiQianQi', null, '4', '012200', '察哈尔右翼前旗');
INSERT INTO `area_tb` VALUES ('150927', null, null, null, '1', null, null, null, '150900', null, 'cheyyzq', 'ChaHaErYouYiZhongQi   ', null, '4', '013550', '察哈尔右翼中旗');
INSERT INTO `area_tb` VALUES ('150928', null, null, null, '1', null, null, null, '150900', null, 'cheyyhq', 'ChaHaErYouYiHouQi ', null, '4', '012400', '察哈尔右翼后旗');
INSERT INTO `area_tb` VALUES ('150929', null, null, null, '1', null, null, null, '150900', null, 'szwq', 'SiZiWangQi', null, '4', '011800', '四子王旗');
INSERT INTO `area_tb` VALUES ('150981', null, null, null, '1', null, null, null, '150900', null, 'fzs', 'FengZhenShi   ', null, '4', '012100', '丰镇市');
INSERT INTO `area_tb` VALUES ('150982', null, null, null, '1', null, null, null, '150900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('152200', null, null, null, '1', null, null, null, '150000', null, 'xam', 'XingAnMeng', null, '3', '137401', '兴安盟');
INSERT INTO `area_tb` VALUES ('152201', null, null, null, '1', null, null, null, '152200', null, 'wlhts', 'WuLanHaoTeShi ', null, '4', '137400', '乌兰浩特市');
INSERT INTO `area_tb` VALUES ('152202', null, null, null, '1', null, null, null, '152200', null, 'aess', 'AErShanShi', null, '4', '137800', '阿尔山市');
INSERT INTO `area_tb` VALUES ('152221', null, null, null, '1', null, null, null, '152200', null, 'keqyyqq', 'KeErQinYouYiQianQi', null, '4', '137400', '科尔沁右翼前旗');
INSERT INTO `area_tb` VALUES ('152222', null, null, null, '1', null, null, null, '152200', null, 'keqyyzq', 'KeErQinYouYiZhongQi   ', null, '4', '029400', '科尔沁右翼中旗');
INSERT INTO `area_tb` VALUES ('152223', null, null, null, '1', null, null, null, '152200', null, 'zltq', 'ZhaZuoTeQi', null, '4', '137600', '扎赉特旗');
INSERT INTO `area_tb` VALUES ('152224', null, null, null, '1', null, null, null, '152200', null, 'tqx', 'TuQuanXian', null, '4', '137500', '突泉县');
INSERT INTO `area_tb` VALUES ('152225', null, null, null, '1', null, null, null, '152200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('152500', null, null, null, '1', null, null, null, '150000', null, 'xlglm', 'XiLinGuoLeMeng', null, '3', '026021', '锡林郭勒盟');
INSERT INTO `area_tb` VALUES ('152501', null, null, null, '1', null, null, null, '152500', null, 'elhts', 'ErLianHaoTeShi', null, '4', '011100', '二连浩特市');
INSERT INTO `area_tb` VALUES ('152502', null, null, null, '1', null, null, null, '152500', null, 'xlhts', 'XiLinHaoTeShi ', null, '4', '026000', '锡林浩特市');
INSERT INTO `area_tb` VALUES ('152522', null, null, null, '1', null, null, null, '152500', null, 'abgq', 'ABaGaQi   ', null, '4', '011400', '阿巴嘎旗');
INSERT INTO `area_tb` VALUES ('152523', null, null, null, '1', null, null, null, '152500', null, 'sntzq', 'SuNiTeZuoQi   ', null, '4', '011300', '苏尼特左旗');
INSERT INTO `area_tb` VALUES ('152524', null, null, null, '1', null, null, null, '152500', null, 'sntyq', 'SuNiTeYouQi   ', null, '4', '011200', '苏尼特右旗');
INSERT INTO `area_tb` VALUES ('152525', null, null, null, '1', null, null, null, '152500', null, 'dwzmqq', 'DongWuZhuMuQinQi  ', null, '4', '026300', '东乌珠穆沁旗');
INSERT INTO `area_tb` VALUES ('152526', null, null, null, '1', null, null, null, '152500', null, 'xwzmqq', 'XiWuZhuMuQinQi', null, '4', '026200', '西乌珠穆沁旗');
INSERT INTO `area_tb` VALUES ('152527', null, null, null, '1', null, null, null, '152500', null, 'tpsq', 'TaiPuSiQi ', null, '4', '027000', '太仆寺旗');
INSERT INTO `area_tb` VALUES ('152528', null, null, null, '1', null, null, null, '152500', null, 'xhq', 'XiangHuangQi  ', null, '4', '013250', '镶黄旗');
INSERT INTO `area_tb` VALUES ('152529', null, null, null, '1', null, null, null, '152500', null, 'zxbq', 'ZhengXiangBaiQi   ', null, '4', '013800', '正镶白旗');
INSERT INTO `area_tb` VALUES ('152530', null, null, null, '1', null, null, null, '152500', null, 'zlq', 'ZhengLanQi', null, '4', '027200', '正蓝旗');
INSERT INTO `area_tb` VALUES ('152531', null, null, null, '1', null, null, null, '152500', null, 'dlx', 'DuoLunXian', null, '4', '027300', '多伦县');
INSERT INTO `area_tb` VALUES ('152532', null, null, null, '1', null, null, null, '152500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('152900', null, null, null, '1', null, null, null, '150000', null, 'alsm', 'ALaShanMeng   ', null, '3', '750306', '阿拉善盟');
INSERT INTO `area_tb` VALUES ('152921', null, null, null, '1', null, null, null, '152900', null, 'alszq', 'ALaShanZuoQi  ', null, '4', '750300', '阿拉善左旗');
INSERT INTO `area_tb` VALUES ('152922', null, null, null, '1', null, null, null, '152900', null, 'alsyq', 'ALaShanYouQi  ', null, '4', '737300', '阿拉善右旗');
INSERT INTO `area_tb` VALUES ('152923', null, null, null, '1', null, null, null, '152900', null, 'ejnq', 'EJiNaQi   ', null, '4', '735400', '额济纳旗');
INSERT INTO `area_tb` VALUES ('152924', null, null, null, '1', null, null, null, '152900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210000', null, null, null, '1', null, null, null, '1', null, 'lns', 'LiaoNingSheng ', null, '2', '', '辽宁省');
INSERT INTO `area_tb` VALUES ('210100', null, null, null, '1', null, null, null, '210000', null, 'sys', 'ShenYangShi   ', null, '3', '110000', '沈阳市');
INSERT INTO `area_tb` VALUES ('210102', null, null, null, '1', null, null, null, '210100', null, 'hpq', 'HePingQu  ', null, '4', '110002', '和平区');
INSERT INTO `area_tb` VALUES ('210103', null, null, null, '1', null, null, null, '210100', null, 'shq', 'ShenHeQu  ', null, '4', '110013', '沈河区');
INSERT INTO `area_tb` VALUES ('210104', null, null, null, '1', null, null, null, '210100', null, 'ddq', 'DaDongQu  ', null, '4', '110044', '大东区');
INSERT INTO `area_tb` VALUES ('210105', null, null, null, '1', null, null, null, '210100', null, 'hgq', 'HuangGuQu ', null, '4', '110031', '皇姑区');
INSERT INTO `area_tb` VALUES ('210106', null, null, null, '1', null, null, null, '210100', null, 'txq', 'TieXiQu   ', null, '4', '110023', '铁西区');
INSERT INTO `area_tb` VALUES ('210111', null, null, null, '1', null, null, null, '210100', null, 'sjtq', 'SuJiaTunQu', null, '4', '110102', '苏家屯区');
INSERT INTO `area_tb` VALUES ('210112', null, null, null, '1', null, null, null, '210100', null, 'dlq', 'DongLingQu', null, '4', '110015', '东陵区');
INSERT INTO `area_tb` VALUES ('210113', null, null, null, '1', null, null, null, '210100', null, 'xczq', 'XinChengZiQu  ', null, '4', '110121', '新城子区');
INSERT INTO `area_tb` VALUES ('210114', null, null, null, '1', null, null, null, '210100', null, 'yhq', 'YuHongQu  ', null, '4', '110024', '于洪区');
INSERT INTO `area_tb` VALUES ('210122', null, null, null, '1', null, null, null, '210100', null, 'lzx', 'LiaoZhongXian ', null, '4', '110200', '辽中县');
INSERT INTO `area_tb` VALUES ('210123', null, null, null, '1', null, null, null, '210100', null, 'kpx', 'KangPingXian  ', null, '4', '110500', '康平县');
INSERT INTO `area_tb` VALUES ('210124', null, null, null, '1', null, null, null, '210100', null, 'fkx', 'FaKuXian  ', null, '4', '110400', '法库县');
INSERT INTO `area_tb` VALUES ('210181', null, null, null, '1', null, null, null, '210100', null, 'xms', 'XinMinShi ', null, '4', '110300', '新民市');
INSERT INTO `area_tb` VALUES ('210182', null, null, null, '1', null, null, null, '210100', null, 'hnxq', 'HunNanXinQu   ', null, '4', '', '浑南新区');
INSERT INTO `area_tb` VALUES ('210183', null, null, null, '1', null, null, null, '210100', null, 'zskfq', 'ZhangShiKaiFaQu   ', null, '4', '', '张士开发区');
INSERT INTO `area_tb` VALUES ('210184', null, null, null, '1', null, null, null, '210100', null, 'sbxq', 'ShenBeiXinQu  ', null, '4', '', '沈北新区');
INSERT INTO `area_tb` VALUES ('210185', null, null, null, '1', null, null, null, '210100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210200', null, null, null, '1', null, null, null, '210000', null, 'dls', 'DaLianShi ', null, '3', '116000', '大连市');
INSERT INTO `area_tb` VALUES ('210202', null, null, null, '1', null, null, null, '210200', null, 'zsq', 'ZhongShanQu   ', null, '4', '116001', '中山区');
INSERT INTO `area_tb` VALUES ('210203', null, null, null, '1', null, null, null, '210200', null, 'xgq', 'XiGangQu  ', null, '4', '116011', '西岗区');
INSERT INTO `area_tb` VALUES ('210204', null, null, null, '1', null, null, null, '210200', null, 'shkq', 'ShaHeKouQu', null, '4', '116021', '沙河口区');
INSERT INTO `area_tb` VALUES ('210211', null, null, null, '1', null, null, null, '210200', null, 'gjzq', 'GanJingZiQu   ', null, '4', '116033', '甘井子区');
INSERT INTO `area_tb` VALUES ('210212', null, null, null, '1', null, null, null, '210200', null, 'lskq', 'LvShunKouQu   ', null, '4', '116041', '旅顺口区');
INSERT INTO `area_tb` VALUES ('210213', null, null, null, '1', null, null, null, '210200', null, 'jzq', 'JinZhouQu ', null, '4', '116100', '金州区');
INSERT INTO `area_tb` VALUES ('210224', null, null, null, '1', null, null, null, '210200', null, 'chx', 'ChangHaiXian  ', null, '4', '116500', '长海县');
INSERT INTO `area_tb` VALUES ('210251', null, null, null, '1', null, null, null, '210200', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('210281', null, null, null, '1', null, null, null, '210200', null, 'wfds', 'WaFangDianShi ', null, '4', '116300', '瓦房店市');
INSERT INTO `area_tb` VALUES ('210282', null, null, null, '1', null, null, null, '210200', null, 'plds', 'PuLanDianShi  ', null, '4', '116200', '普兰店市');
INSERT INTO `area_tb` VALUES ('210283', null, null, null, '1', null, null, null, '210200', null, 'zhs', 'ZhuangHeShi   ', null, '4', '116400', '庄河市');
INSERT INTO `area_tb` VALUES ('210297', null, null, null, '1', null, null, null, '210200', null, 'lqq', 'LingQianQu', null, '4', '', '岭前区');
INSERT INTO `area_tb` VALUES ('210298', null, null, null, '1', null, null, null, '210200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210300', null, null, null, '1', null, null, null, '210000', null, 'ass', 'AnShanShi ', null, '3', '114000', '鞍山市');
INSERT INTO `area_tb` VALUES ('210302', null, null, null, '1', null, null, null, '210300', null, 'tdq', 'TieDongQu ', null, '4', '114001', '铁东区');
INSERT INTO `area_tb` VALUES ('210303', null, null, null, '1', null, null, null, '210300', null, 'txq', 'TieXiQu   ', null, '4', '110023', '铁西区');
INSERT INTO `area_tb` VALUES ('210304', null, null, null, '1', null, null, null, '210300', null, 'lsq', 'LiShanQu  ', null, '4', '114031', '立山区');
INSERT INTO `area_tb` VALUES ('210311', null, null, null, '1', null, null, null, '210300', null, 'qsq', 'QianShanQu', null, '4', '114041', '千山区');
INSERT INTO `area_tb` VALUES ('210321', null, null, null, '1', null, null, null, '210300', null, 'tax', 'TaiAnXian ', null, '4', '114100', '台安县');
INSERT INTO `area_tb` VALUES ('210323', null, null, null, '1', null, null, null, '210300', null, 'xymzzzx', 'XiuYanManZuZiZhiXian  ', null, '4', '114300', '岫岩满族自治县');
INSERT INTO `area_tb` VALUES ('210351', null, null, null, '1', null, null, null, '210300', null, 'gxq', 'GaoXinQu  ', null, '4', '', '高新区');
INSERT INTO `area_tb` VALUES ('210381', null, null, null, '1', null, null, null, '210300', null, 'hcs', 'HaiChengShi   ', null, '4', '114200', '海城市');
INSERT INTO `area_tb` VALUES ('210382', null, null, null, '1', null, null, null, '210300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210400', null, null, null, '1', null, null, null, '210000', null, 'fss', 'FuShunShi ', null, '3', '113000', '抚顺市');
INSERT INTO `area_tb` VALUES ('210402', null, null, null, '1', null, null, null, '210400', null, 'xfq', 'XinFuQu   ', null, '4', '113006', '新抚区');
INSERT INTO `area_tb` VALUES ('210403', null, null, null, '1', null, null, null, '210400', null, 'dzq', 'DongZhouQu', null, '4', '113003', '东洲区');
INSERT INTO `area_tb` VALUES ('210404', null, null, null, '1', null, null, null, '210400', null, 'whq', 'WangHuaQu ', null, '4', '113001', '望花区');
INSERT INTO `area_tb` VALUES ('210411', null, null, null, '1', null, null, null, '210400', null, 'scq', 'ShunChengQu   ', null, '4', '113006', '顺城区');
INSERT INTO `area_tb` VALUES ('210421', null, null, null, '1', null, null, null, '210400', null, 'fsx', 'FuShunXian', null, '4', '113100', '抚顺县');
INSERT INTO `area_tb` VALUES ('210422', null, null, null, '1', null, null, null, '210400', null, 'xbmzzzx', 'XinBinManZuZiZhiXian  ', null, '4', '113200', '新宾满族自治县');
INSERT INTO `area_tb` VALUES ('210423', null, null, null, '1', null, null, null, '210400', null, 'qymzzzx', 'QingYuanManZuZiZhiXian', null, '4', '113300', '清原满族自治县');
INSERT INTO `area_tb` VALUES ('210424', null, null, null, '1', null, null, null, '210400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210500', null, null, null, '1', null, null, null, '210000', null, 'bxs', 'BenXiShi  ', null, '3', '117000', '本溪市');
INSERT INTO `area_tb` VALUES ('210502', null, null, null, '1', null, null, null, '210500', null, 'psq', 'PingShanQu', null, '4', '117000', '平山区');
INSERT INTO `area_tb` VALUES ('210503', null, null, null, '1', null, null, null, '210500', null, 'xhq', 'XiHuQu', null, '4', '117002', '溪湖区');
INSERT INTO `area_tb` VALUES ('210504', null, null, null, '1', null, null, null, '210500', null, 'msq', 'MingShanQu', null, '4', '117021', '明山区');
INSERT INTO `area_tb` VALUES ('210505', null, null, null, '1', null, null, null, '210500', null, 'nfq', 'NanFenQu  ', null, '4', '117014', '南芬区');
INSERT INTO `area_tb` VALUES ('210521', null, null, null, '1', null, null, null, '210500', null, 'bxmzzzx', 'BenXiManZuZiZhiXian   ', null, '4', '117100', '本溪满族自治县');
INSERT INTO `area_tb` VALUES ('210522', null, null, null, '1', null, null, null, '210500', null, 'hrmzzzx', 'HuanRenManZuZiZhiXian ', null, '4', '117200', '桓仁满族自治县');
INSERT INTO `area_tb` VALUES ('210523', null, null, null, '1', null, null, null, '210500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210600', null, null, null, '1', null, null, null, '210000', null, 'dds', 'DanDongShi', null, '3', '118000', '丹东市');
INSERT INTO `area_tb` VALUES ('210602', null, null, null, '1', null, null, null, '210600', null, 'ybq', 'YuanBaoQu ', null, '4', '118000', '元宝区');
INSERT INTO `area_tb` VALUES ('210603', null, null, null, '1', null, null, null, '210600', null, 'zxq', 'ZhenXingQu', null, '4', '118002', '振兴区');
INSERT INTO `area_tb` VALUES ('210604', null, null, null, '1', null, null, null, '210600', null, 'zaq', 'ZhenAnQu  ', null, '4', '118001', '振安区');
INSERT INTO `area_tb` VALUES ('210624', null, null, null, '1', null, null, null, '210600', null, 'kdmzzzx', 'KuanDianManZuZiZhiXian', null, '4', '118200', '宽甸满族自治县');
INSERT INTO `area_tb` VALUES ('210681', null, null, null, '1', null, null, null, '210600', null, 'dgs', 'DongGangShi   ', null, '4', '118300', '东港市');
INSERT INTO `area_tb` VALUES ('210682', null, null, null, '1', null, null, null, '210600', null, 'fcs', 'FengChengShi  ', null, '4', '118100', '凤城市');
INSERT INTO `area_tb` VALUES ('210683', null, null, null, '1', null, null, null, '210600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210700', null, null, null, '1', null, null, null, '210000', null, 'jzs', 'JinZhouShi', null, '3', '121000', '锦州市');
INSERT INTO `area_tb` VALUES ('210702', null, null, null, '1', null, null, null, '210700', null, 'gtq', 'GuTaQu', null, '4', '121001', '古塔区');
INSERT INTO `area_tb` VALUES ('210703', null, null, null, '1', null, null, null, '210700', null, 'lhq', 'LingHeQu  ', null, '4', '121000', '凌河区');
INSERT INTO `area_tb` VALUES ('210711', null, null, null, '1', null, null, null, '210700', null, 'thq', 'TaiHeQu   ', null, '4', '121011', '太和区');
INSERT INTO `area_tb` VALUES ('210726', null, null, null, '1', null, null, null, '210700', null, 'hsx', 'HeiShanXian   ', null, '4', '121400', '黑山县');
INSERT INTO `area_tb` VALUES ('210727', null, null, null, '1', null, null, null, '210700', null, 'yx', 'YiXian', null, '4', '121100', '义县');
INSERT INTO `area_tb` VALUES ('210781', null, null, null, '1', null, null, null, '210700', null, 'lhs', 'LingHaiShi', null, '4', '121200', '凌海市');
INSERT INTO `area_tb` VALUES ('210782', null, null, null, '1', null, null, null, '210700', null, 'bzs', 'BeiZhenShi', null, '4', '121300', '北镇市');
INSERT INTO `area_tb` VALUES ('210783', null, null, null, '1', null, null, null, '210700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210800', null, null, null, '1', null, null, null, '210000', null, 'yks', 'YingKouShi', null, '3', '115000', '营口市');
INSERT INTO `area_tb` VALUES ('210802', null, null, null, '1', null, null, null, '210800', null, 'zqq', 'ZhanQianQu', null, '4', '115002', '站前区');
INSERT INTO `area_tb` VALUES ('210803', null, null, null, '1', null, null, null, '210800', null, 'xsq', 'XiShiQu   ', null, '4', '115004', '西市区');
INSERT INTO `area_tb` VALUES ('210804', null, null, null, '1', null, null, null, '210800', null, 'byqq', 'ZuoYuQuanQu   ', null, '4', '115007', '鲅鱼圈区');
INSERT INTO `area_tb` VALUES ('210811', null, null, null, '1', null, null, null, '210800', null, 'lbq', 'LaoBianQu ', null, '4', '115005', '老边区');
INSERT INTO `area_tb` VALUES ('210881', null, null, null, '1', null, null, null, '210800', null, 'gzs', 'GaiZhouShi', null, '4', '115200', '盖州市');
INSERT INTO `area_tb` VALUES ('210882', null, null, null, '1', null, null, null, '210800', null, 'dsqs', 'DaShiQiaoShi  ', null, '4', '115100', '大石桥市');
INSERT INTO `area_tb` VALUES ('210883', null, null, null, '1', null, null, null, '210800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('210900', null, null, null, '1', null, null, null, '210000', null, 'fxs', 'FuXinShi  ', null, '3', '123000', '阜新市');
INSERT INTO `area_tb` VALUES ('210902', null, null, null, '1', null, null, null, '210900', null, 'hzq', 'HaiZhouQu ', null, '4', '123000', '海州区');
INSERT INTO `area_tb` VALUES ('210903', null, null, null, '1', null, null, null, '210900', null, 'xqq', 'XinQiuQu  ', null, '4', '123005', '新邱区');
INSERT INTO `area_tb` VALUES ('210904', null, null, null, '1', null, null, null, '210900', null, 'tpq', 'TaiPingQu ', null, '4', '123003', '太平区');
INSERT INTO `area_tb` VALUES ('210905', null, null, null, '1', null, null, null, '210900', null, 'qhmq', 'QingHeMenQu   ', null, '4', '123006', '清河门区');
INSERT INTO `area_tb` VALUES ('210911', null, null, null, '1', null, null, null, '210900', null, 'xhq', 'XiHeQu', null, '4', '123000', '细河区');
INSERT INTO `area_tb` VALUES ('210921', null, null, null, '1', null, null, null, '210900', null, 'fxmgzzzx', 'FuXinMengGuZuZiZhiXian', null, '4', '123100', '阜新蒙古族自治县');
INSERT INTO `area_tb` VALUES ('210922', null, null, null, '1', null, null, null, '210900', null, 'zwx', 'ZhangWuXian   ', null, '4', '123200', '彰武县');
INSERT INTO `area_tb` VALUES ('210923', null, null, null, '1', null, null, null, '210900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('211000', null, null, null, '1', null, null, null, '210000', null, 'lys', 'LiaoYangShi   ', null, '3', '111000', '辽阳市');
INSERT INTO `area_tb` VALUES ('211002', null, null, null, '1', null, null, null, '211000', null, 'btq', 'BaiTaQu   ', null, '4', '111000', '白塔区');
INSERT INTO `area_tb` VALUES ('211003', null, null, null, '1', null, null, null, '211000', null, 'wsq', 'WenShengQu', null, '4', '111000', '文圣区');
INSERT INTO `area_tb` VALUES ('211004', null, null, null, '1', null, null, null, '211000', null, 'hwq', 'HongWeiQu ', null, '4', '111003', '宏伟区');
INSERT INTO `area_tb` VALUES ('211005', null, null, null, '1', null, null, null, '211000', null, 'gclq', 'GongChangLingQu   ', null, '4', '111008', '弓长岭区');
INSERT INTO `area_tb` VALUES ('211011', null, null, null, '1', null, null, null, '211000', null, 'tzhq', 'TaiZiHeQu ', null, '4', '111000', '太子河区');
INSERT INTO `area_tb` VALUES ('211021', null, null, null, '1', null, null, null, '211000', null, 'lyx', 'LiaoYangXian  ', null, '4', '111200', '辽阳县');
INSERT INTO `area_tb` VALUES ('211081', null, null, null, '1', null, null, null, '211000', null, 'dts', 'DengTaShi ', null, '4', '111300', '灯塔市');
INSERT INTO `area_tb` VALUES ('211082', null, null, null, '1', null, null, null, '211000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('211100', null, null, null, '1', null, null, null, '210000', null, 'pjs', 'PanJinShi ', null, '3', '124000', '盘锦市');
INSERT INTO `area_tb` VALUES ('211102', null, null, null, '1', null, null, null, '211100', null, 'stzq', 'ShuangTaiZiQu ', null, '4', '124000', '双台子区');
INSERT INTO `area_tb` VALUES ('211103', null, null, null, '1', null, null, null, '211100', null, 'xltq', 'XingLongTaiQu ', null, '4', '124010', '兴隆台区');
INSERT INTO `area_tb` VALUES ('211121', null, null, null, '1', null, null, null, '211100', null, 'dwx', 'DaWaXian  ', null, '4', '124000', '大洼县');
INSERT INTO `area_tb` VALUES ('211122', null, null, null, '1', null, null, null, '211100', null, 'psx', 'PanShanXian   ', null, '4', '124100', '盘山县');
INSERT INTO `area_tb` VALUES ('211123', null, null, null, '1', null, null, null, '211100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('211200', null, null, null, '1', null, null, null, '210000', null, 'tls', 'TieLingShi', null, '3', '112000', '铁岭市');
INSERT INTO `area_tb` VALUES ('211202', null, null, null, '1', null, null, null, '211200', null, 'yzq', 'YinZhouQu ', null, '4', '112000', '银州区');
INSERT INTO `area_tb` VALUES ('211204', null, null, null, '1', null, null, null, '211200', null, 'qhq', 'QingHeQu  ', null, '4', '112003', '清河区');
INSERT INTO `area_tb` VALUES ('211221', null, null, null, '1', null, null, null, '211200', null, 'tlx', 'TieLingXian   ', null, '4', '112600', '铁岭县');
INSERT INTO `area_tb` VALUES ('211223', null, null, null, '1', null, null, null, '211200', null, 'xfx', 'XiFengXian', null, '4', '112400', '西丰县');
INSERT INTO `area_tb` VALUES ('211224', null, null, null, '1', null, null, null, '211200', null, 'ctx', 'ChangTuXian   ', null, '4', '112500', '昌图县');
INSERT INTO `area_tb` VALUES ('211281', null, null, null, '1', null, null, null, '211200', null, 'dbss', 'DiaoBingShanShi   ', null, '4', '112700', '调兵山市');
INSERT INTO `area_tb` VALUES ('211282', null, null, null, '1', null, null, null, '211200', null, 'kys', 'KaiYuanShi', null, '4', '112300', '开原市');
INSERT INTO `area_tb` VALUES ('211283', null, null, null, '1', null, null, null, '211200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('211300', null, null, null, '1', null, null, null, '210000', null, 'cys', 'ChaoYangShi   ', null, '3', '122000', '朝阳市');
INSERT INTO `area_tb` VALUES ('211302', null, null, null, '1', null, null, null, '211300', null, 'stq', 'ShuangTaQu', null, '4', '122000', '双塔区');
INSERT INTO `area_tb` VALUES ('211303', null, null, null, '1', null, null, null, '211300', null, 'lcq', 'LongChengQu   ', null, '4', '122000', '龙城区');
INSERT INTO `area_tb` VALUES ('211321', null, null, null, '1', null, null, null, '211300', null, 'cyx', 'ChaoYangXian  ', null, '4', '122000', '朝阳县');
INSERT INTO `area_tb` VALUES ('211322', null, null, null, '1', null, null, null, '211300', null, 'jpx', 'JianPingXian  ', null, '4', '122400', '建平县');
INSERT INTO `area_tb` VALUES ('211324', null, null, null, '1', null, null, null, '211300', null, 'klqzymgzzzx', 'KaLaQinZuoYiMengGuZuZiZhi ', null, '4', '122300', '喀喇沁左翼蒙古族自治县');
INSERT INTO `area_tb` VALUES ('211381', null, null, null, '1', null, null, null, '211300', null, 'bps', 'BeiPiaoShi', null, '4', '122100', '北票市');
INSERT INTO `area_tb` VALUES ('211382', null, null, null, '1', null, null, null, '211300', null, 'lys', 'LingYuanShi   ', null, '4', '122500', '凌源市');
INSERT INTO `area_tb` VALUES ('211383', null, null, null, '1', null, null, null, '211300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('211400', null, null, null, '1', null, null, null, '210000', null, 'hlds', 'HuLuDaoShi', null, '3', '125000', '葫芦岛市');
INSERT INTO `area_tb` VALUES ('211402', null, null, null, '1', null, null, null, '211400', null, 'lsq', 'LianShanQu', null, '4', '125001', '连山区');
INSERT INTO `area_tb` VALUES ('211403', null, null, null, '1', null, null, null, '211400', null, 'lgq', 'LongGangQu', null, '4', '125004', '龙港区');
INSERT INTO `area_tb` VALUES ('211404', null, null, null, '1', null, null, null, '211400', null, 'npq', 'NanPiaoQu ', null, '4', '125027', '南票区');
INSERT INTO `area_tb` VALUES ('211421', null, null, null, '1', null, null, null, '211400', null, 'szx', 'SuiZhongXian  ', null, '4', '125200', '绥中县');
INSERT INTO `area_tb` VALUES ('211422', null, null, null, '1', null, null, null, '211400', null, 'jcx', 'JianChangXian ', null, '4', '125300', '建昌县');
INSERT INTO `area_tb` VALUES ('211481', null, null, null, '1', null, null, null, '211400', null, 'xcs', 'XingChengShi  ', null, '4', '125100', '兴城市');
INSERT INTO `area_tb` VALUES ('211482', null, null, null, '1', null, null, null, '211400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220000', null, null, null, '1', null, null, null, '1', null, 'jls', 'JiLinSheng', null, '2', '', '吉林省');
INSERT INTO `area_tb` VALUES ('220100', null, null, null, '1', null, null, null, '220000', null, 'ccs', 'ChangChunShi  ', null, '3', '130000', '长春市');
INSERT INTO `area_tb` VALUES ('220102', null, null, null, '1', null, null, null, '220100', null, 'ngq', 'NanGuanQu ', null, '4', '130022', '南关区');
INSERT INTO `area_tb` VALUES ('220103', null, null, null, '1', null, null, null, '220100', null, 'kcq', 'KuanChengQu   ', null, '4', '130051', '宽城区');
INSERT INTO `area_tb` VALUES ('220104', null, null, null, '1', null, null, null, '220100', null, 'cyq', 'ChaoYangQu', null, '4', '130012', '朝阳区');
INSERT INTO `area_tb` VALUES ('220105', null, null, null, '1', null, null, null, '220100', null, 'edq', 'ErDaoQu   ', null, '4', '130031', '二道区');
INSERT INTO `area_tb` VALUES ('220106', null, null, null, '1', null, null, null, '220100', null, 'lyq', 'LvYuanQu  ', null, '4', '130062', '绿园区');
INSERT INTO `area_tb` VALUES ('220112', null, null, null, '1', null, null, null, '220100', null, 'syq', 'ShuangYangQu  ', null, '4', '130600', '双阳区');
INSERT INTO `area_tb` VALUES ('220122', null, null, null, '1', null, null, null, '220100', null, 'nax', 'NongAnXian', null, '4', '130200', '农安县');
INSERT INTO `area_tb` VALUES ('220181', null, null, null, '1', null, null, null, '220100', null, 'jts', 'JiuTaiShi ', null, '4', '130500', '九台市');
INSERT INTO `area_tb` VALUES ('220182', null, null, null, '1', null, null, null, '220100', null, 'yss', 'YuShuShi  ', null, '4', '130400', '榆树市');
INSERT INTO `area_tb` VALUES ('220183', null, null, null, '1', null, null, null, '220100', null, 'dhs', 'DeHuiShi  ', null, '4', '130300', '德惠市');
INSERT INTO `area_tb` VALUES ('220184', null, null, null, '1', null, null, null, '220100', null, 'gxjscykfq', 'GaoXinJiShuChanYeKaiFaQu  ', null, '4', '', '高新技术产业开发区');
INSERT INTO `area_tb` VALUES ('220185', null, null, null, '1', null, null, null, '220100', null, 'qccykfq', 'QiCheChanYeKaiFaQu', null, '4', '', '汽车产业开发区');
INSERT INTO `area_tb` VALUES ('220186', null, null, null, '1', null, null, null, '220100', null, 'jjjskfq', 'JingJiJiShuKaiFaQu', null, '4', '', '经济技术开发区');
INSERT INTO `area_tb` VALUES ('220187', null, null, null, '1', null, null, null, '220100', null, 'jylykfq', 'JingYueLvYouKaiFaQu   ', null, '4', '', '净月旅游开发区');
INSERT INTO `area_tb` VALUES ('220188', null, null, null, '1', null, null, null, '220100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220200', null, null, null, '1', null, null, null, '220000', null, 'jls', 'JiLinShi  ', null, '3', '132000', '吉林市');
INSERT INTO `area_tb` VALUES ('220202', null, null, null, '1', null, null, null, '220200', null, 'cyq', 'ChangYiQu ', null, '4', '132002', '昌邑区');
INSERT INTO `area_tb` VALUES ('220203', null, null, null, '1', null, null, null, '220200', null, 'ltq', 'LongTanQu ', null, '4', '132021', '龙潭区');
INSERT INTO `area_tb` VALUES ('220204', null, null, null, '1', null, null, null, '220200', null, 'cyq', 'ChuanYingQu   ', null, '4', '132011', '船营区');
INSERT INTO `area_tb` VALUES ('220211', null, null, null, '1', null, null, null, '220200', null, 'fmq', 'FengManQu ', null, '4', '132113', '丰满区');
INSERT INTO `area_tb` VALUES ('220221', null, null, null, '1', null, null, null, '220200', null, 'yjx', 'YongJiXian', null, '4', '132100', '永吉县');
INSERT INTO `area_tb` VALUES ('220281', null, null, null, '1', null, null, null, '220200', null, 'jhs', 'ZuoHeShi  ', null, '4', '132500', '蛟河市');
INSERT INTO `area_tb` VALUES ('220282', null, null, null, '1', null, null, null, '220200', null, 'hds', 'ZuoDianShi', null, '4', '132400', '桦甸市');
INSERT INTO `area_tb` VALUES ('220283', null, null, null, '1', null, null, null, '220200', null, 'sls', 'ShuLanShi ', null, '4', '132600', '舒兰市');
INSERT INTO `area_tb` VALUES ('220284', null, null, null, '1', null, null, null, '220200', null, 'pss', 'PanShiShi ', null, '4', '132300', '磐石市');
INSERT INTO `area_tb` VALUES ('220285', null, null, null, '1', null, null, null, '220200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220300', null, null, null, '1', null, null, null, '220000', null, 'sps', 'SiPingShi ', null, '3', '136000', '四平市');
INSERT INTO `area_tb` VALUES ('220302', null, null, null, '1', null, null, null, '220300', null, 'txq', 'TieXiQu   ', null, '4', '136000', '铁西区');
INSERT INTO `area_tb` VALUES ('220303', null, null, null, '1', null, null, null, '220300', null, 'tdq', 'TieDongQu ', null, '4', '136001', '铁东区');
INSERT INTO `area_tb` VALUES ('220322', null, null, null, '1', null, null, null, '220300', null, 'lsx', 'LiShuXian ', null, '4', '136500', '梨树县');
INSERT INTO `area_tb` VALUES ('220323', null, null, null, '1', null, null, null, '220300', null, 'ytmzzzx', 'YiTongManZuZiZhiXian  ', null, '4', '130700', '伊通满族自治县');
INSERT INTO `area_tb` VALUES ('220381', null, null, null, '1', null, null, null, '220300', null, 'gzls', 'GongZhuLingShi', null, '4', '136100', '公主岭市');
INSERT INTO `area_tb` VALUES ('220382', null, null, null, '1', null, null, null, '220300', null, 'sls', 'ShuangLiaoShi ', null, '4', '136400', '双辽市');
INSERT INTO `area_tb` VALUES ('220383', null, null, null, '1', null, null, null, '220300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220400', null, null, null, '1', null, null, null, '220000', null, 'lys', 'LiaoYuanShi   ', null, '3', '136200', '辽源市');
INSERT INTO `area_tb` VALUES ('220402', null, null, null, '1', null, null, null, '220400', null, 'lsq', 'LongShanQu', null, '4', '136200', '龙山区');
INSERT INTO `area_tb` VALUES ('220403', null, null, null, '1', null, null, null, '220400', null, 'xaq', 'XiAnQu', null, '4', '136201', '西安区');
INSERT INTO `area_tb` VALUES ('220421', null, null, null, '1', null, null, null, '220400', null, 'dfx', 'DongFengXian  ', null, '4', '136300', '东丰县');
INSERT INTO `area_tb` VALUES ('220422', null, null, null, '1', null, null, null, '220400', null, 'dlx', 'DongLiaoXian  ', null, '4', '136600', '东辽县');
INSERT INTO `area_tb` VALUES ('220423', null, null, null, '1', null, null, null, '220400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220500', null, null, null, '1', null, null, null, '220000', null, 'ths', 'TongHuaShi', null, '3', '134000', '通化市');
INSERT INTO `area_tb` VALUES ('220502', null, null, null, '1', null, null, null, '220500', null, 'dcq', 'DongChangQu   ', null, '4', '134001', '东昌区');
INSERT INTO `area_tb` VALUES ('220503', null, null, null, '1', null, null, null, '220500', null, 'edjq', 'ErDaoJiangQu  ', null, '4', '134303', '二道江区');
INSERT INTO `area_tb` VALUES ('220521', null, null, null, '1', null, null, null, '220500', null, 'thx', 'TongHuaXian   ', null, '4', '134100', '通化县');
INSERT INTO `area_tb` VALUES ('220523', null, null, null, '1', null, null, null, '220500', null, 'hnx', 'HuiNanXian', null, '4', '135100', '辉南县');
INSERT INTO `area_tb` VALUES ('220524', null, null, null, '1', null, null, null, '220500', null, 'lhx', 'LiuHeXian ', null, '4', '135300', '柳河县');
INSERT INTO `area_tb` VALUES ('220581', null, null, null, '1', null, null, null, '220500', null, 'mhks', 'MeiHeKouShi   ', null, '4', '135000', '梅河口市');
INSERT INTO `area_tb` VALUES ('220582', null, null, null, '1', null, null, null, '220500', null, 'jas', 'JiAnShi   ', null, '4', '134200', '集安市');
INSERT INTO `area_tb` VALUES ('220583', null, null, null, '1', null, null, null, '220500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220600', null, null, null, '1', null, null, null, '220000', null, 'bss', 'BaiShanShi', null, '3', '134300', '白山市');
INSERT INTO `area_tb` VALUES ('220602', null, null, null, '1', null, null, null, '220600', null, 'bdjq', 'BaDaoJiangQu  ', null, '4', '134300', '八道江区');
INSERT INTO `area_tb` VALUES ('220621', null, null, null, '1', null, null, null, '220600', null, 'fsx', 'FuSongXian', null, '4', '134500', '抚松县');
INSERT INTO `area_tb` VALUES ('220622', null, null, null, '1', null, null, null, '220600', null, 'jyx', 'JingYuXian', null, '4', '135200', '靖宇县');
INSERT INTO `area_tb` VALUES ('220623', null, null, null, '1', null, null, null, '220600', null, 'cbcxzzzx', 'ChangBaiChaoXianZuZiZhiXian   ', null, '4', '134400', '长白朝鲜族自治县');
INSERT INTO `area_tb` VALUES ('220625', null, null, null, '1', null, null, null, '220600', null, 'jyx', 'JiangYuanXian ', null, '4', '134700', '江源县');
INSERT INTO `area_tb` VALUES ('220681', null, null, null, '1', null, null, null, '220600', null, 'ljs', 'LinJiangShi   ', null, '4', '134600', '临江市');
INSERT INTO `area_tb` VALUES ('220682', null, null, null, '1', null, null, null, '220600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220700', null, null, null, '1', null, null, null, '220000', null, 'sys', 'SongYuanShi   ', null, '3', '138000', '松原市');
INSERT INTO `area_tb` VALUES ('220702', null, null, null, '1', null, null, null, '220700', null, 'njq', 'NingJiangQu   ', null, '4', '138000', '宁江区');
INSERT INTO `area_tb` VALUES ('220721', null, null, null, '1', null, null, null, '220700', null, 'qgelsmgzzzx', 'QianGuoErLuoSiMengGuZuZiZhi   ', null, '4', '131100', '前郭尔罗斯蒙古族自治县');
INSERT INTO `area_tb` VALUES ('220722', null, null, null, '1', null, null, null, '220700', null, 'clx', 'ChangLingXian ', null, '4', '131500', '长岭县');
INSERT INTO `area_tb` VALUES ('220723', null, null, null, '1', null, null, null, '220700', null, 'qax', 'QianAnXian', null, '4', '131400', '乾安县');
INSERT INTO `area_tb` VALUES ('220724', null, null, null, '1', null, null, null, '220700', null, 'fyx', 'FuYuXian  ', null, '4', '131200', '扶余县');
INSERT INTO `area_tb` VALUES ('220725', null, null, null, '1', null, null, null, '220700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('220800', null, null, null, '1', null, null, null, '220000', null, 'bcs', 'BaiChengShi   ', null, '3', '137000', '白城市');
INSERT INTO `area_tb` VALUES ('220802', null, null, null, '1', null, null, null, '220800', null, 'tbq', 'ZuoBeiQu  ', null, '4', '137000', '洮北区');
INSERT INTO `area_tb` VALUES ('220821', null, null, null, '1', null, null, null, '220800', null, 'zlx', 'ZhenZuoXian   ', null, '4', '137300', '镇赉县');
INSERT INTO `area_tb` VALUES ('220822', null, null, null, '1', null, null, null, '220800', null, 'tyx', 'TongYuXian', null, '4', '137200', '通榆县');
INSERT INTO `area_tb` VALUES ('220881', null, null, null, '1', null, null, null, '220800', null, 'tns', 'ZuoNanShi ', null, '4', '137100', '洮南市');
INSERT INTO `area_tb` VALUES ('220882', null, null, null, '1', null, null, null, '220800', null, 'das', 'DaAnShi   ', null, '4', '131300', '大安市');
INSERT INTO `area_tb` VALUES ('220883', null, null, null, '1', null, null, null, '220800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('222400', null, null, null, '1', null, null, null, '220000', null, 'ybcxzzzz', 'YanBianChaoXianZuZiZhiZhou', null, '3', '133000', '延边朝鲜族自治州');
INSERT INTO `area_tb` VALUES ('222401', null, null, null, '1', null, null, null, '222400', null, 'yjs', 'YanJiShi  ', null, '4', '133000', '延吉市');
INSERT INTO `area_tb` VALUES ('222402', null, null, null, '1', null, null, null, '222400', null, 'tms', 'TuMenShi  ', null, '4', '133100', '图们市');
INSERT INTO `area_tb` VALUES ('222403', null, null, null, '1', null, null, null, '222400', null, 'dhs', 'DunHuaShi ', null, '4', '133700', '敦化市');
INSERT INTO `area_tb` VALUES ('222404', null, null, null, '1', null, null, null, '222400', null, 'hcs', 'ZuoChunShi', null, '4', '133300', '珲春市');
INSERT INTO `area_tb` VALUES ('222405', null, null, null, '1', null, null, null, '222400', null, 'ljs', 'LongJingShi   ', null, '4', '133400', '龙井市');
INSERT INTO `area_tb` VALUES ('222406', null, null, null, '1', null, null, null, '222400', null, 'hls', 'HeLongShi ', null, '4', '133500', '和龙市');
INSERT INTO `area_tb` VALUES ('222424', null, null, null, '1', null, null, null, '222400', null, 'wqx', 'WangQingXian  ', null, '4', '133200', '汪清县');
INSERT INTO `area_tb` VALUES ('222426', null, null, null, '1', null, null, null, '222400', null, 'atx', 'AnTuXian  ', null, '4', '133600', '安图县');
INSERT INTO `area_tb` VALUES ('222427', null, null, null, '1', null, null, null, '222400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230000', null, null, null, '1', null, null, null, '1', null, 'hljs', 'HeiLongJiangSheng ', null, '2', '', '黑龙江省');
INSERT INTO `area_tb` VALUES ('230100', null, null, null, '1', null, null, null, '230000', null, 'hebs', 'HaErBinShi', null, '3', '150000', '哈尔滨市');
INSERT INTO `area_tb` VALUES ('230102', null, null, null, '1', null, null, null, '230100', null, 'dlq', 'DaoLiQu   ', null, '4', '150010', '道里区');
INSERT INTO `area_tb` VALUES ('230103', null, null, null, '1', null, null, null, '230100', null, 'ngq', 'NanGangQu ', null, '4', '150006', '南岗区');
INSERT INTO `area_tb` VALUES ('230104', null, null, null, '1', null, null, null, '230100', null, 'dwq', 'DaoWaiQu  ', null, '4', '150026', '道外区');
INSERT INTO `area_tb` VALUES ('230106', null, null, null, '1', null, null, null, '230100', null, 'xfq', 'XiangFangQu   ', null, '4', '150036', '香坊区');
INSERT INTO `area_tb` VALUES ('230107', null, null, null, '1', null, null, null, '230100', null, 'dlq', 'DongLiQu  ', null, '4', '150040', '动力区');
INSERT INTO `area_tb` VALUES ('230108', null, null, null, '1', null, null, null, '230100', null, 'pfq', 'PingFangQu', null, '4', '150060', '平房区');
INSERT INTO `area_tb` VALUES ('230109', null, null, null, '1', null, null, null, '230100', null, 'sbq', 'SongBeiQu ', null, '4', '150028', '松北区');
INSERT INTO `area_tb` VALUES ('230111', null, null, null, '1', null, null, null, '230100', null, 'hlq', 'HuLanQu   ', null, '4', '150500', '呼兰区');
INSERT INTO `area_tb` VALUES ('230123', null, null, null, '1', null, null, null, '230100', null, 'ylx', 'YiLanXian ', null, '4', '154800', '依兰县');
INSERT INTO `area_tb` VALUES ('230124', null, null, null, '1', null, null, null, '230100', null, 'fzx', 'FangZhengXian ', null, '4', '150800', '方正县');
INSERT INTO `area_tb` VALUES ('230125', null, null, null, '1', null, null, null, '230100', null, 'bx', 'BinXian   ', null, '4', '150400', '宾县');
INSERT INTO `area_tb` VALUES ('230126', null, null, null, '1', null, null, null, '230100', null, 'byx', 'BaYanXian ', null, '4', '151800', '巴彦县');
INSERT INTO `area_tb` VALUES ('230127', null, null, null, '1', null, null, null, '230100', null, 'mlx', 'MuLanXian ', null, '4', '151900', '木兰县');
INSERT INTO `area_tb` VALUES ('230128', null, null, null, '1', null, null, null, '230100', null, 'thx', 'TongHeXian', null, '4', '150900', '通河县');
INSERT INTO `area_tb` VALUES ('230129', null, null, null, '1', null, null, null, '230100', null, 'ysx', 'YanShouXian   ', null, '4', '150700', '延寿县');
INSERT INTO `area_tb` VALUES ('230181', null, null, null, '1', null, null, null, '230100', null, 'acs', 'AChengShi ', null, '4', '150300', '阿城市');
INSERT INTO `area_tb` VALUES ('230182', null, null, null, '1', null, null, null, '230100', null, 'scs', 'ShuangChengShi', null, '4', '150100', '双城市');
INSERT INTO `area_tb` VALUES ('230183', null, null, null, '1', null, null, null, '230100', null, 'szs', 'ShangZhiShi   ', null, '4', '150600', '尚志市');
INSERT INTO `area_tb` VALUES ('230184', null, null, null, '1', null, null, null, '230100', null, 'wcs', 'WuChangShi', null, '4', '150200', '五常市');
INSERT INTO `area_tb` VALUES ('230185', null, null, null, '1', null, null, null, '230100', null, 'acs', 'AChengShi ', null, '4', '150300', '阿城市');
INSERT INTO `area_tb` VALUES ('230186', null, null, null, '1', null, null, null, '230100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230200', null, null, null, '1', null, null, null, '230000', null, 'qqhes', 'QiQiHaErShi   ', null, '3', '161000', '齐齐哈尔市');
INSERT INTO `area_tb` VALUES ('230202', null, null, null, '1', null, null, null, '230200', null, 'lsq', 'LongShaQu ', null, '4', '161000', '龙沙区');
INSERT INTO `area_tb` VALUES ('230203', null, null, null, '1', null, null, null, '230200', null, 'jhq', 'JianHuaQu ', null, '4', '161006', '建华区');
INSERT INTO `area_tb` VALUES ('230204', null, null, null, '1', null, null, null, '230200', null, 'tfq', 'TieFengQu ', null, '4', '161000', '铁锋区');
INSERT INTO `area_tb` VALUES ('230205', null, null, null, '1', null, null, null, '230200', null, 'aaxq', 'AngAngXiQu', null, '4', '161031', '昂昂溪区');
INSERT INTO `area_tb` VALUES ('230206', null, null, null, '1', null, null, null, '230200', null, 'flejq', 'FuLaErJiQu', null, '4', '161041', '富拉尔基区');
INSERT INTO `area_tb` VALUES ('230207', null, null, null, '1', null, null, null, '230200', null, 'nzsq', 'NianZiShanQu  ', null, '4', '161046', '碾子山区');
INSERT INTO `area_tb` VALUES ('230208', null, null, null, '1', null, null, null, '230200', null, 'mlsdwezq', 'MeiLiSiDaWoErZuQu ', null, '4', '161021', '梅里斯达斡尔族区');
INSERT INTO `area_tb` VALUES ('230221', null, null, null, '1', null, null, null, '230200', null, 'ljx', 'LongJiangXian ', null, '4', '161100', '龙江县');
INSERT INTO `area_tb` VALUES ('230223', null, null, null, '1', null, null, null, '230200', null, 'yax', 'YiAnXian  ', null, '4', '161500', '依安县');
INSERT INTO `area_tb` VALUES ('230224', null, null, null, '1', null, null, null, '230200', null, 'tlx', 'TaiLaiXian', null, '4', '162400', '泰来县');
INSERT INTO `area_tb` VALUES ('230225', null, null, null, '1', null, null, null, '230200', null, 'gnx', 'GanNanXian', null, '4', '162100', '甘南县');
INSERT INTO `area_tb` VALUES ('230227', null, null, null, '1', null, null, null, '230200', null, 'fyx', 'FuYuXian  ', null, '4', '161200', '富裕县');
INSERT INTO `area_tb` VALUES ('230229', null, null, null, '1', null, null, null, '230200', null, 'ksx', 'KeShanXian', null, '4', '161600', '克山县');
INSERT INTO `area_tb` VALUES ('230230', null, null, null, '1', null, null, null, '230200', null, 'kdx', 'KeDongXian', null, '4', '164800', '克东县');
INSERT INTO `area_tb` VALUES ('230231', null, null, null, '1', null, null, null, '230200', null, 'bqx', 'BaiQuanXian   ', null, '4', '164700', '拜泉县');
INSERT INTO `area_tb` VALUES ('230281', null, null, null, '1', null, null, null, '230200', null, 'nhs', 'ZuoHeShi  ', null, '4', '161300', '讷河市');
INSERT INTO `area_tb` VALUES ('230282', null, null, null, '1', null, null, null, '230200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230300', null, null, null, '1', null, null, null, '230000', null, 'jxs', 'JiXiShi   ', null, '3', '158100', '鸡西市');
INSERT INTO `area_tb` VALUES ('230302', null, null, null, '1', null, null, null, '230300', null, 'jgq', 'JiGuanQu  ', null, '4', '158100', '鸡冠区');
INSERT INTO `area_tb` VALUES ('230303', null, null, null, '1', null, null, null, '230300', null, 'hsq', 'HengShanQu', null, '4', '158130', '恒山区');
INSERT INTO `area_tb` VALUES ('230304', null, null, null, '1', null, null, null, '230300', null, 'ddq', 'DiDaoQu   ', null, '4', '158150', '滴道区');
INSERT INTO `area_tb` VALUES ('230305', null, null, null, '1', null, null, null, '230300', null, 'lsq', 'LiShuQu   ', null, '4', '158160', '梨树区');
INSERT INTO `area_tb` VALUES ('230306', null, null, null, '1', null, null, null, '230300', null, 'czhq', 'ChengZiHeQu   ', null, '4', '158170', '城子河区');
INSERT INTO `area_tb` VALUES ('230307', null, null, null, '1', null, null, null, '230300', null, 'msq', 'MaShanQu  ', null, '4', '158180', '麻山区');
INSERT INTO `area_tb` VALUES ('230321', null, null, null, '1', null, null, null, '230300', null, 'jdx', 'JiDongXian', null, '4', '158200', '鸡东县');
INSERT INTO `area_tb` VALUES ('230381', null, null, null, '1', null, null, null, '230300', null, 'hls', 'HuLinShi  ', null, '4', '158400', '虎林市');
INSERT INTO `area_tb` VALUES ('230382', null, null, null, '1', null, null, null, '230300', null, 'mss', 'MiShanShi ', null, '4', '158300', '密山市');
INSERT INTO `area_tb` VALUES ('230383', null, null, null, '1', null, null, null, '230300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230400', null, null, null, '1', null, null, null, '230000', null, 'hgs', 'HeGangShi ', null, '3', '154100', '鹤岗市');
INSERT INTO `area_tb` VALUES ('230402', null, null, null, '1', null, null, null, '230400', null, 'xyq', 'XiangYangQu   ', null, '4', '154100', '向阳区');
INSERT INTO `area_tb` VALUES ('230403', null, null, null, '1', null, null, null, '230400', null, 'gnq', 'GongNongQu', null, '4', '154101', '工农区');
INSERT INTO `area_tb` VALUES ('230404', null, null, null, '1', null, null, null, '230400', null, 'nsq', 'NanShanQu ', null, '4', '154104', '南山区');
INSERT INTO `area_tb` VALUES ('230405', null, null, null, '1', null, null, null, '230400', null, 'xaq', 'XingAnQu  ', null, '4', '154102', '兴安区');
INSERT INTO `area_tb` VALUES ('230406', null, null, null, '1', null, null, null, '230400', null, 'dsq', 'DongShanQu', null, '4', '154106', '东山区');
INSERT INTO `area_tb` VALUES ('230407', null, null, null, '1', null, null, null, '230400', null, 'xsq', 'XingShanQu', null, '4', '154105', '兴山区');
INSERT INTO `area_tb` VALUES ('230421', null, null, null, '1', null, null, null, '230400', null, 'lbx', 'LuoBeiXian', null, '4', '154200', '萝北县');
INSERT INTO `area_tb` VALUES ('230422', null, null, null, '1', null, null, null, '230400', null, 'sbx', 'SuiBinXian', null, '4', '156200', '绥滨县');
INSERT INTO `area_tb` VALUES ('230423', null, null, null, '1', null, null, null, '230400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230500', null, null, null, '1', null, null, null, '230000', null, 'syss', 'ShuangYaShanShi   ', null, '3', '155100', '双鸭山市');
INSERT INTO `area_tb` VALUES ('230502', null, null, null, '1', null, null, null, '230500', null, 'jsq', 'JianShanQu', null, '4', '155100', '尖山区');
INSERT INTO `area_tb` VALUES ('230503', null, null, null, '1', null, null, null, '230500', null, 'ldq', 'LingDongQu', null, '4', '155120', '岭东区');
INSERT INTO `area_tb` VALUES ('230505', null, null, null, '1', null, null, null, '230500', null, 'sftq', 'SiFangTaiQu   ', null, '4', '155130', '四方台区');
INSERT INTO `area_tb` VALUES ('230506', null, null, null, '1', null, null, null, '230500', null, 'bsq', 'BaoShanQu ', null, '4', '155131', '宝山区');
INSERT INTO `area_tb` VALUES ('230521', null, null, null, '1', null, null, null, '230500', null, 'jxx', 'JiXianXian', null, '4', '155900', '集贤县');
INSERT INTO `area_tb` VALUES ('230522', null, null, null, '1', null, null, null, '230500', null, 'yyx', 'YouYiXian ', null, '4', '155800', '友谊县');
INSERT INTO `area_tb` VALUES ('230523', null, null, null, '1', null, null, null, '230500', null, 'bqx', 'BaoQingXian   ', null, '4', '155600', '宝清县');
INSERT INTO `area_tb` VALUES ('230524', null, null, null, '1', null, null, null, '230500', null, 'rhx', 'RaoHeXian ', null, '4', '155700', '饶河县');
INSERT INTO `area_tb` VALUES ('230525', null, null, null, '1', null, null, null, '230500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230600', null, null, null, '1', null, null, null, '230000', null, 'dqs', 'DaQingShi ', null, '3', '163000', '大庆市');
INSERT INTO `area_tb` VALUES ('230602', null, null, null, '1', null, null, null, '230600', null, 'setq', 'SaErTuQu  ', null, '4', '163311', '萨尔图区');
INSERT INTO `area_tb` VALUES ('230603', null, null, null, '1', null, null, null, '230600', null, 'lfq', 'LongFengQu', null, '4', '163711', '龙凤区');
INSERT INTO `area_tb` VALUES ('230604', null, null, null, '1', null, null, null, '230600', null, 'rhlq', 'RangHuLuQu', null, '4', '163453', '让胡路区');
INSERT INTO `area_tb` VALUES ('230605', null, null, null, '1', null, null, null, '230600', null, 'hgq', 'HongGangQu', null, '4', '163512', '红岗区');
INSERT INTO `area_tb` VALUES ('230606', null, null, null, '1', null, null, null, '230600', null, 'dtq', 'DaTongQu  ', null, '4', '163814', '大同区');
INSERT INTO `area_tb` VALUES ('230621', null, null, null, '1', null, null, null, '230600', null, 'zzx', 'ZhaoZhouXian  ', null, '4', '166400', '肇州县');
INSERT INTO `area_tb` VALUES ('230622', null, null, null, '1', null, null, null, '230600', null, 'zyx', 'ZhaoYuanXian  ', null, '4', '166500', '肇源县');
INSERT INTO `area_tb` VALUES ('230623', null, null, null, '1', null, null, null, '230600', null, 'ldx', 'LinDianXian   ', null, '4', '166300', '林甸县');
INSERT INTO `area_tb` VALUES ('230624', null, null, null, '1', null, null, null, '230600', null, 'debtmgzzzx', 'DuErBoTeMengGuZuZiZhiXian ', null, '4', '166200', '杜尔伯特蒙古族自治县');
INSERT INTO `area_tb` VALUES ('230625', null, null, null, '1', null, null, null, '230600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230700', null, null, null, '1', null, null, null, '230000', null, 'ycs', 'YiChunShi ', null, '3', '153000', '伊春市');
INSERT INTO `area_tb` VALUES ('230702', null, null, null, '1', null, null, null, '230700', null, 'ycq', 'YiChunQu  ', null, '4', '153000', '伊春区');
INSERT INTO `area_tb` VALUES ('230703', null, null, null, '1', null, null, null, '230700', null, 'ncq', 'NanChaQu  ', null, '4', '153100', '南岔区');
INSERT INTO `area_tb` VALUES ('230704', null, null, null, '1', null, null, null, '230700', null, 'yhq', 'YouHaoQu  ', null, '4', '153031', '友好区');
INSERT INTO `area_tb` VALUES ('230705', null, null, null, '1', null, null, null, '230700', null, 'xlq', 'XiLinQu   ', null, '4', '153025', '西林区');
INSERT INTO `area_tb` VALUES ('230706', null, null, null, '1', null, null, null, '230700', null, 'clq', 'CuiLuanQu ', null, '4', '153013', '翠峦区');
INSERT INTO `area_tb` VALUES ('230707', null, null, null, '1', null, null, null, '230700', null, 'xqq', 'XinQingQu ', null, '4', '153036', '新青区');
INSERT INTO `area_tb` VALUES ('230708', null, null, null, '1', null, null, null, '230700', null, 'mxq', 'MeiXiQu   ', null, '4', '153021', '美溪区');
INSERT INTO `area_tb` VALUES ('230709', null, null, null, '1', null, null, null, '230700', null, 'jstq', 'JinShanTunQu  ', null, '4', '152026', '金山屯区');
INSERT INTO `area_tb` VALUES ('230710', null, null, null, '1', null, null, null, '230700', null, 'wyq', 'WuYingQu  ', null, '4', '153033', '五营区');
INSERT INTO `area_tb` VALUES ('230711', null, null, null, '1', null, null, null, '230700', null, 'wmhq', 'WuMaHeQu  ', null, '4', '153011', '乌马河区');
INSERT INTO `area_tb` VALUES ('230712', null, null, null, '1', null, null, null, '230700', null, 'twhq', 'TangWangHeQu  ', null, '4', '153037', '汤旺河区');
INSERT INTO `area_tb` VALUES ('230713', null, null, null, '1', null, null, null, '230700', null, 'dlq', 'DaiLingQu ', null, '4', '153106', '带岭区');
INSERT INTO `area_tb` VALUES ('230714', null, null, null, '1', null, null, null, '230700', null, 'wylq', 'WuYiLingQu', null, '4', '153038', '乌伊岭区');
INSERT INTO `area_tb` VALUES ('230715', null, null, null, '1', null, null, null, '230700', null, 'hxq', 'HongXingQu', null, '4', '153035', '红星区');
INSERT INTO `area_tb` VALUES ('230716', null, null, null, '1', null, null, null, '230700', null, 'sglq', 'ShangGanLingQu', null, '4', '153032', '上甘岭区');
INSERT INTO `area_tb` VALUES ('230722', null, null, null, '1', null, null, null, '230700', null, 'jyx', 'JiaYinXian', null, '4', '153200', '嘉荫县');
INSERT INTO `area_tb` VALUES ('230781', null, null, null, '1', null, null, null, '230700', null, 'tls', 'TieLiShi  ', null, '4', '152500', '铁力市');
INSERT INTO `area_tb` VALUES ('230782', null, null, null, '1', null, null, null, '230700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230800', null, null, null, '1', null, null, null, '230000', null, 'jmss', 'JiaMuSiShi', null, '3', '154000', '佳木斯市');
INSERT INTO `area_tb` VALUES ('230802', null, null, null, '1', null, null, null, '230800', null, 'yhq', 'YongHongQu', null, '4', '154003', '永红区');
INSERT INTO `area_tb` VALUES ('230803', null, null, null, '1', null, null, null, '230800', null, 'xyq', 'XiangYangQu   ', null, '4', '154002', '向阳区');
INSERT INTO `area_tb` VALUES ('230804', null, null, null, '1', null, null, null, '230800', null, 'qjq', 'QianJinQu ', null, '4', '154002', '前进区');
INSERT INTO `area_tb` VALUES ('230805', null, null, null, '1', null, null, null, '230800', null, 'dfq', 'DongFengQu', null, '4', '154005', '东风区');
INSERT INTO `area_tb` VALUES ('230811', null, null, null, '1', null, null, null, '230800', null, 'jq', 'JiaoQu', null, '4', '154004', '郊区');
INSERT INTO `area_tb` VALUES ('230822', null, null, null, '1', null, null, null, '230800', null, 'hnx', 'ZuoNanXian', null, '4', '154400', '桦南县');
INSERT INTO `area_tb` VALUES ('230826', null, null, null, '1', null, null, null, '230800', null, 'hcx', 'ZuoChuanXian  ', null, '4', '154300', '桦川县');
INSERT INTO `area_tb` VALUES ('230828', null, null, null, '1', null, null, null, '230800', null, 'tyx', 'TangYuanXian  ', null, '4', '154700', '汤原县');
INSERT INTO `area_tb` VALUES ('230833', null, null, null, '1', null, null, null, '230800', null, 'fyx', 'FuYuanXian', null, '4', '156500', '抚远县');
INSERT INTO `area_tb` VALUES ('230881', null, null, null, '1', null, null, null, '230800', null, 'tjs', 'TongJiangShi  ', null, '4', '156400', '同江市');
INSERT INTO `area_tb` VALUES ('230882', null, null, null, '1', null, null, null, '230800', null, 'fjs', 'FuJinShi  ', null, '4', '156100', '富锦市');
INSERT INTO `area_tb` VALUES ('230883', null, null, null, '1', null, null, null, '230800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('230900', null, null, null, '1', null, null, null, '230000', null, 'qths', 'QiTaiHeShi', null, '3', '154600', '七台河市');
INSERT INTO `area_tb` VALUES ('230902', null, null, null, '1', null, null, null, '230900', null, 'xxq', 'XinXingQu ', null, '4', '154604', '新兴区');
INSERT INTO `area_tb` VALUES ('230903', null, null, null, '1', null, null, null, '230900', null, 'tsq', 'TaoShanQu ', null, '4', '154600', '桃山区');
INSERT INTO `area_tb` VALUES ('230904', null, null, null, '1', null, null, null, '230900', null, 'qzhq', 'QieZiHeQu ', null, '4', '154622', '茄子河区');
INSERT INTO `area_tb` VALUES ('230921', null, null, null, '1', null, null, null, '230900', null, 'blx', 'BoLiXian  ', null, '4', '154500', '勃利县');
INSERT INTO `area_tb` VALUES ('230922', null, null, null, '1', null, null, null, '230900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('231000', null, null, null, '1', null, null, null, '230000', null, 'mdjs', 'MuDanJiangShi ', null, '3', '157000', '牡丹江市');
INSERT INTO `area_tb` VALUES ('231002', null, null, null, '1', null, null, null, '231000', null, 'daq', 'DongAnQu  ', null, '4', '157000', '东安区');
INSERT INTO `area_tb` VALUES ('231003', null, null, null, '1', null, null, null, '231000', null, 'ymq', 'YangMingQu', null, '4', '157013', '阳明区');
INSERT INTO `area_tb` VALUES ('231004', null, null, null, '1', null, null, null, '231000', null, 'amq', 'AiMinQu   ', null, '4', '157009', '爱民区');
INSERT INTO `area_tb` VALUES ('231005', null, null, null, '1', null, null, null, '231000', null, 'xaq', 'XiAnQu', null, '4', '157000', '西安区');
INSERT INTO `area_tb` VALUES ('231024', null, null, null, '1', null, null, null, '231000', null, 'dnx', 'DongNingXian  ', null, '4', '157200', '东宁县');
INSERT INTO `area_tb` VALUES ('231025', null, null, null, '1', null, null, null, '231000', null, 'lkx', 'LinKouXian', null, '4', '157600', '林口县');
INSERT INTO `area_tb` VALUES ('231081', null, null, null, '1', null, null, null, '231000', null, 'sfhs', 'SuiFenHeShi   ', null, '4', '157300', '绥芬河市');
INSERT INTO `area_tb` VALUES ('231083', null, null, null, '1', null, null, null, '231000', null, 'hls', 'HaiLinShi ', null, '4', '157100', '海林市');
INSERT INTO `area_tb` VALUES ('231084', null, null, null, '1', null, null, null, '231000', null, 'nas', 'NingAnShi ', null, '4', '157400', '宁安市');
INSERT INTO `area_tb` VALUES ('231085', null, null, null, '1', null, null, null, '231000', null, 'mls', 'MuLengShi ', null, '4', '157500', '穆棱市');
INSERT INTO `area_tb` VALUES ('231086', null, null, null, '1', null, null, null, '231000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('231100', null, null, null, '1', null, null, null, '230000', null, 'hhs', 'HeiHeShi  ', null, '3', '164300', '黑河市');
INSERT INTO `area_tb` VALUES ('231102', null, null, null, '1', null, null, null, '231100', null, 'ahq', 'AiHuiQu   ', null, '4', '164300', '爱辉区');
INSERT INTO `area_tb` VALUES ('231121', null, null, null, '1', null, null, null, '231100', null, 'njx', 'NenJiangXian  ', null, '4', '161400', '嫩江县');
INSERT INTO `area_tb` VALUES ('231123', null, null, null, '1', null, null, null, '231100', null, 'xkx', 'XunKeXian ', null, '4', '164400', '逊克县');
INSERT INTO `area_tb` VALUES ('231124', null, null, null, '1', null, null, null, '231100', null, 'swx', 'SunWuXian ', null, '4', '164200', '孙吴县');
INSERT INTO `area_tb` VALUES ('231181', null, null, null, '1', null, null, null, '231100', null, 'bas', 'BeiAnShi  ', null, '4', '164000', '北安市');
INSERT INTO `area_tb` VALUES ('231182', null, null, null, '1', null, null, null, '231100', null, 'wdlcs', 'WuDaLianChiShi', null, '4', '164100', '五大连池市');
INSERT INTO `area_tb` VALUES ('231183', null, null, null, '1', null, null, null, '231100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('231200', null, null, null, '1', null, null, null, '230000', null, 'shs', 'SuiHuaShi ', null, '3', '152000', '绥化市');
INSERT INTO `area_tb` VALUES ('231202', null, null, null, '1', null, null, null, '231200', null, 'blq', 'BeiLinQu  ', null, '4', '152000', '北林区');
INSERT INTO `area_tb` VALUES ('231221', null, null, null, '1', null, null, null, '231200', null, 'wkx', 'WangKuiXian   ', null, '4', '152100', '望奎县');
INSERT INTO `area_tb` VALUES ('231222', null, null, null, '1', null, null, null, '231200', null, 'lxx', 'LanXiXian ', null, '4', '151500', '兰西县');
INSERT INTO `area_tb` VALUES ('231223', null, null, null, '1', null, null, null, '231200', null, 'qgx', 'QingGangXian  ', null, '4', '151600', '青冈县');
INSERT INTO `area_tb` VALUES ('231224', null, null, null, '1', null, null, null, '231200', null, 'qax', 'QingAnXian', null, '4', '152400', '庆安县');
INSERT INTO `area_tb` VALUES ('231225', null, null, null, '1', null, null, null, '231200', null, 'msx', 'MingShuiXian  ', null, '4', '151700', '明水县');
INSERT INTO `area_tb` VALUES ('231226', null, null, null, '1', null, null, null, '231200', null, 'slx', 'SuiLengXian   ', null, '4', '152200', '绥棱县');
INSERT INTO `area_tb` VALUES ('231281', null, null, null, '1', null, null, null, '231200', null, 'ads', 'AnDaShi   ', null, '4', '151400', '安达市');
INSERT INTO `area_tb` VALUES ('231282', null, null, null, '1', null, null, null, '231200', null, 'zds', 'ZhaoDongShi   ', null, '4', '151100', '肇东市');
INSERT INTO `area_tb` VALUES ('231283', null, null, null, '1', null, null, null, '231200', null, 'hls', 'HaiLunShi ', null, '4', '152300', '海伦市');
INSERT INTO `area_tb` VALUES ('231284', null, null, null, '1', null, null, null, '231200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('232700', null, null, null, '1', null, null, null, '230000', null, 'dxaldq', 'DaXingAnLingDiQu  ', null, '3', '165000', '大兴安岭地区');
INSERT INTO `area_tb` VALUES ('232721', null, null, null, '1', null, null, null, '232700', null, 'hmx', 'HuMaXian  ', null, '4', '165100', '呼玛县');
INSERT INTO `area_tb` VALUES ('232722', null, null, null, '1', null, null, null, '232700', null, 'thx', 'TaHeXian  ', null, '4', '165200', '塔河县');
INSERT INTO `area_tb` VALUES ('232723', null, null, null, '1', null, null, null, '232700', null, 'mhx', 'MoHeXian  ', null, '4', '165300', '漠河县');
INSERT INTO `area_tb` VALUES ('232724', null, null, null, '1', null, null, null, '232700', null, 'jgdqq', 'JiaGeDaQiQu   ', null, '4', '165300', '加格达奇区');
INSERT INTO `area_tb` VALUES ('232725', null, null, null, '1', null, null, null, '232700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('310000', null, null, null, '1', null, null, null, '1', null, 'sh', 'ShangHai  ', null, '2', '', '上海');
INSERT INTO `area_tb` VALUES ('310100', null, null, null, '1', null, null, null, '310000', null, 'shs', 'ShangHaiShi   ', null, '3', '200000', '上海市');
INSERT INTO `area_tb` VALUES ('310101', null, null, null, '1', null, null, null, '310100', null, 'hpq', 'HuangPuQu ', null, '4', '200001', '黄浦区');
INSERT INTO `area_tb` VALUES ('310103', null, null, null, '1', null, null, null, '310100', null, 'lwq', 'LuWanQu   ', null, '4', '200020', '卢湾区');
INSERT INTO `area_tb` VALUES ('310104', null, null, null, '1', null, null, null, '310100', null, 'xhq', 'XuHuiQu   ', null, '4', '200030', '徐汇区');
INSERT INTO `area_tb` VALUES ('310105', null, null, null, '1', null, null, null, '310100', null, 'cnq', 'ChangNingQu   ', null, '4', '200050', '长宁区');
INSERT INTO `area_tb` VALUES ('310106', null, null, null, '1', null, null, null, '310100', null, 'jaq', 'JingAnQu  ', null, '4', '200040', '静安区');
INSERT INTO `area_tb` VALUES ('310107', null, null, null, '1', null, null, null, '310100', null, 'ptq', 'PuTuoQu   ', null, '4', '200062', '普陀区');
INSERT INTO `area_tb` VALUES ('310108', null, null, null, '1', null, null, null, '310100', null, 'zbq', 'ZhaBeiQu  ', null, '4', '200070', '闸北区');
INSERT INTO `area_tb` VALUES ('310109', null, null, null, '1', null, null, null, '310100', null, 'hkq', 'HongKouQu ', null, '4', '200080', '虹口区');
INSERT INTO `area_tb` VALUES ('310110', null, null, null, '1', null, null, null, '310100', null, 'ypq', 'YangPuQu  ', null, '4', '200082', '杨浦区');
INSERT INTO `area_tb` VALUES ('310112', null, null, null, '1', null, null, null, '310100', null, 'mxq', 'ZuoXingQu ', null, '4', '201100', '闵行区');
INSERT INTO `area_tb` VALUES ('310113', null, null, null, '1', null, null, null, '310100', null, 'bsq', 'BaoShanQu ', null, '4', '201900', '宝山区');
INSERT INTO `area_tb` VALUES ('310114', null, null, null, '1', null, null, null, '310100', null, 'jdq', 'JiaDingQu ', null, '4', '201800', '嘉定区');
INSERT INTO `area_tb` VALUES ('310115', null, null, null, '1', null, null, null, '310100', null, 'pdxq', 'PuDongXinQu   ', null, '4', '200120', '浦东新区');
INSERT INTO `area_tb` VALUES ('310116', null, null, null, '1', null, null, null, '310100', null, 'jsq', 'JinShanQu ', null, '4', '201540', '金山区');
INSERT INTO `area_tb` VALUES ('310117', null, null, null, '1', null, null, null, '310100', null, 'sjq', 'SongJiangQu   ', null, '4', '201600', '松江区');
INSERT INTO `area_tb` VALUES ('310118', null, null, null, '1', null, null, null, '310100', null, 'qpq', 'QingPuQu  ', null, '4', '201700', '青浦区');
INSERT INTO `area_tb` VALUES ('310119', null, null, null, '1', null, null, null, '310100', null, 'nhq', 'NanHuiQu  ', null, '4', '201300', '南汇区');
INSERT INTO `area_tb` VALUES ('310120', null, null, null, '1', null, null, null, '310100', null, 'fxq', 'FengXianQu', null, '4', '201400', '奉贤区');
INSERT INTO `area_tb` VALUES ('310152', null, null, null, '1', null, null, null, '310100', null, 'csq', 'ChuanShaQu', null, '4', '', '川沙区');
INSERT INTO `area_tb` VALUES ('310230', null, null, null, '1', null, null, null, '310100', null, 'cmx', 'ChongMingXian ', null, '4', '202150', '崇明县');
INSERT INTO `area_tb` VALUES ('310231', null, null, null, '1', null, null, null, '310100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320000', null, null, null, '1', null, null, null, '1', null, 'jss', 'JiangSuSheng  ', null, '2', '', '江苏省');
INSERT INTO `area_tb` VALUES ('320100', null, null, null, '1', null, null, null, '320000', null, 'njs', 'NanJingShi', null, '3', '210000', '南京市');
INSERT INTO `area_tb` VALUES ('320102', null, null, null, '1', null, null, null, '320100', null, 'xwq', 'XuanWuQu  ', null, '4', '210018', '玄武区');
INSERT INTO `area_tb` VALUES ('320103', null, null, null, '1', null, null, null, '320100', null, 'bxq', 'BaiXiaQu  ', null, '4', '210002', '白下区');
INSERT INTO `area_tb` VALUES ('320104', null, null, null, '1', null, null, null, '320100', null, 'qhq', 'QinHuaiQu ', null, '4', '210001', '秦淮区');
INSERT INTO `area_tb` VALUES ('320105', null, null, null, '1', null, null, null, '320100', null, 'jyq', 'JianZuoQu ', null, '4', '210004', '建邺区');
INSERT INTO `area_tb` VALUES ('320106', null, null, null, '1', null, null, null, '320100', null, 'glq', 'GuLouQu   ', null, '4', '210009', '鼓楼区');
INSERT INTO `area_tb` VALUES ('320107', null, null, null, '1', null, null, null, '320100', null, 'xgq', 'XiaGuanQu ', null, '4', '210011', '下关区');
INSERT INTO `area_tb` VALUES ('320111', null, null, null, '1', null, null, null, '320100', null, 'pkq', 'PuKouQu   ', null, '4', '211800', '浦口区');
INSERT INTO `area_tb` VALUES ('320113', null, null, null, '1', null, null, null, '320100', null, 'qxq', 'QiXiaQu   ', null, '4', '210046', '栖霞区');
INSERT INTO `area_tb` VALUES ('320114', null, null, null, '1', null, null, null, '320100', null, 'yhtq', 'YuHuaTaiQu', null, '4', '210012', '雨花台区');
INSERT INTO `area_tb` VALUES ('320115', null, null, null, '1', null, null, null, '320100', null, 'jnq', 'JiangNingQu   ', null, '4', '211100', '江宁区');
INSERT INTO `area_tb` VALUES ('320116', null, null, null, '1', null, null, null, '320100', null, 'lhq', 'LiuHeQu   ', null, '4', '211500', '六合区');
INSERT INTO `area_tb` VALUES ('320124', null, null, null, '1', null, null, null, '320100', null, 'lsx', 'ZuoShuiXian   ', null, '4', '211200', '溧水县');
INSERT INTO `area_tb` VALUES ('320125', null, null, null, '1', null, null, null, '320100', null, 'gcx', 'GaoChunXian   ', null, '4', '211300', '高淳县');
INSERT INTO `area_tb` VALUES ('320126', null, null, null, '1', null, null, null, '320100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320200', null, null, null, '1', null, null, null, '320000', null, 'wxs', 'WuXiShi   ', null, '3', '214000', '无锡市');
INSERT INTO `area_tb` VALUES ('320202', null, null, null, '1', null, null, null, '320200', null, 'caq', 'ChongAnQu ', null, '4', '214002', '崇安区');
INSERT INTO `area_tb` VALUES ('320203', null, null, null, '1', null, null, null, '320200', null, 'ncq', 'NanChangQu', null, '4', '214021', '南长区');
INSERT INTO `area_tb` VALUES ('320204', null, null, null, '1', null, null, null, '320200', null, 'btq', 'BeiTangQu ', null, '4', '214044', '北塘区');
INSERT INTO `area_tb` VALUES ('320205', null, null, null, '1', null, null, null, '320200', null, 'xsq', 'XiShanQu  ', null, '4', '214101', '锡山区');
INSERT INTO `area_tb` VALUES ('320206', null, null, null, '1', null, null, null, '320200', null, 'hsq', 'HuiShanQu ', null, '4', '214187', '惠山区');
INSERT INTO `area_tb` VALUES ('320211', null, null, null, '1', null, null, null, '320200', null, 'bhq', 'BinHuQu   ', null, '4', '214062', '滨湖区');
INSERT INTO `area_tb` VALUES ('320281', null, null, null, '1', null, null, null, '320200', null, 'jys', 'JiangYinShi   ', null, '4', '214400', '江阴市');
INSERT INTO `area_tb` VALUES ('320282', null, null, null, '1', null, null, null, '320200', null, 'yxs', 'YiXingShi ', null, '4', '214200', '宜兴市');
INSERT INTO `area_tb` VALUES ('320296', null, null, null, '1', null, null, null, '320200', null, 'xq', 'XinQu ', null, '4', '', '新区');
INSERT INTO `area_tb` VALUES ('320297', null, null, null, '1', null, null, null, '320200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320300', null, null, null, '1', null, null, null, '320000', null, 'xzs', 'XuZhouShi ', null, '3', '221000', '徐州市');
INSERT INTO `area_tb` VALUES ('320302', null, null, null, '1', null, null, null, '320300', null, 'glq', 'GuLouQu   ', null, '4', '220005', '鼓楼区');
INSERT INTO `area_tb` VALUES ('320303', null, null, null, '1', null, null, null, '320300', null, 'ylq', 'YunLongQu ', null, '4', '220009', '云龙区');
INSERT INTO `area_tb` VALUES ('320304', null, null, null, '1', null, null, null, '320300', null, 'jlq', 'JiuLiQu   ', null, '4', '220040', '九里区');
INSERT INTO `area_tb` VALUES ('320305', null, null, null, '1', null, null, null, '320300', null, 'jwq', 'JiaWangQu ', null, '4', '220011', '贾汪区');
INSERT INTO `area_tb` VALUES ('320311', null, null, null, '1', null, null, null, '320300', null, 'qsq', 'QuanShanQu', null, '4', '220006', '泉山区');
INSERT INTO `area_tb` VALUES ('320321', null, null, null, '1', null, null, null, '320300', null, 'fx', 'FengXian  ', null, '4', '221700', '丰县');
INSERT INTO `area_tb` VALUES ('320322', null, null, null, '1', null, null, null, '320300', null, 'px', 'PeiXian   ', null, '4', '221600', '沛县');
INSERT INTO `area_tb` VALUES ('320323', null, null, null, '1', null, null, null, '320300', null, 'tsx', 'TongShanXian  ', null, '4', '221112', '铜山县');
INSERT INTO `area_tb` VALUES ('320324', null, null, null, '1', null, null, null, '320300', null, 'snx', 'ZuoNingXian   ', null, '4', '221200', '睢宁县');
INSERT INTO `area_tb` VALUES ('320381', null, null, null, '1', null, null, null, '320300', null, 'xys', 'XinYiShi  ', null, '4', '221400', '新沂市');
INSERT INTO `area_tb` VALUES ('320382', null, null, null, '1', null, null, null, '320300', null, 'pzs', 'ZuoZhouShi', null, '4', '221300', '邳州市');
INSERT INTO `area_tb` VALUES ('320383', null, null, null, '1', null, null, null, '320300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320400', null, null, null, '1', null, null, null, '320000', null, 'czs', 'ChangZhouShi  ', null, '3', '213000', '常州市');
INSERT INTO `area_tb` VALUES ('320402', null, null, null, '1', null, null, null, '320400', null, 'tnq', 'TianNingQu', null, '4', '213003', '天宁区');
INSERT INTO `area_tb` VALUES ('320404', null, null, null, '1', null, null, null, '320400', null, 'zlq', 'ZhongLouQu', null, '4', '213002', '钟楼区');
INSERT INTO `area_tb` VALUES ('320405', null, null, null, '1', null, null, null, '320400', null, 'qsyq', 'QiShuYanQu', null, '4', '213011', '戚墅堰区');
INSERT INTO `area_tb` VALUES ('320411', null, null, null, '1', null, null, null, '320400', null, 'xbq', 'XinBeiQu  ', null, '4', '213001', '新北区');
INSERT INTO `area_tb` VALUES ('320412', null, null, null, '1', null, null, null, '320400', null, 'wjq', 'WuJinQu   ', null, '4', '213161', '武进区');
INSERT INTO `area_tb` VALUES ('320481', null, null, null, '1', null, null, null, '320400', null, 'lys', 'ZuoYangShi', null, '4', '213300', '溧阳市');
INSERT INTO `area_tb` VALUES ('320482', null, null, null, '1', null, null, null, '320400', null, 'jts', 'JinTanShi ', null, '4', '213200', '金坛市');
INSERT INTO `area_tb` VALUES ('320483', null, null, null, '1', null, null, null, '320400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320500', null, null, null, '1', null, null, null, '320000', null, 'szs', 'SuZhouShi ', null, '3', '215000', '苏州市');
INSERT INTO `area_tb` VALUES ('320502', null, null, null, '1', null, null, null, '320500', null, 'clq', 'CangLangQu', null, '4', '215006', '沧浪区');
INSERT INTO `area_tb` VALUES ('320503', null, null, null, '1', null, null, null, '320500', null, 'pjq', 'PingJiangQu   ', null, '4', '215005', '平江区');
INSERT INTO `area_tb` VALUES ('320504', null, null, null, '1', null, null, null, '320500', null, 'jcq', 'JinZuoQu  ', null, '4', '215008', '金阊区');
INSERT INTO `area_tb` VALUES ('320505', null, null, null, '1', null, null, null, '320500', null, 'hqq', 'HuQiuQu   ', null, '4', '215004', '虎丘区');
INSERT INTO `area_tb` VALUES ('320506', null, null, null, '1', null, null, null, '320500', null, 'wzq', 'WuZhongQu ', null, '4', '215128', '吴中区');
INSERT INTO `area_tb` VALUES ('320507', null, null, null, '1', null, null, null, '320500', null, 'xcq', 'XiangChengQu  ', null, '4', '215131', '相城区');
INSERT INTO `area_tb` VALUES ('320581', null, null, null, '1', null, null, null, '320500', null, 'css', 'ChangShuShi   ', null, '4', '215500', '常熟市');
INSERT INTO `area_tb` VALUES ('320582', null, null, null, '1', null, null, null, '320500', null, 'zjgs', 'ZhangJiaGangShi   ', null, '4', '215600', '张家港市');
INSERT INTO `area_tb` VALUES ('320583', null, null, null, '1', null, null, null, '320500', null, 'kss', 'KunShanShi', null, '4', '215300', '昆山市');
INSERT INTO `area_tb` VALUES ('320584', null, null, null, '1', null, null, null, '320500', null, 'wjs', 'WuJiangShi', null, '4', '215200', '吴江市');
INSERT INTO `area_tb` VALUES ('320585', null, null, null, '1', null, null, null, '320500', null, 'tcs', 'TaiCangShi', null, '4', '215400', '太仓市');
INSERT INTO `area_tb` VALUES ('320594', null, null, null, '1', null, null, null, '320500', null, 'xq', 'XinQu ', null, '4', '', '新区');
INSERT INTO `area_tb` VALUES ('320595', null, null, null, '1', null, null, null, '320500', null, 'yq', 'YuanQu', null, '4', '', '园区');
INSERT INTO `area_tb` VALUES ('320596', null, null, null, '1', null, null, null, '320500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320600', null, null, null, '1', null, null, null, '320000', null, 'nts', 'NanTongShi', null, '3', '226000', '南通市');
INSERT INTO `area_tb` VALUES ('320602', null, null, null, '1', null, null, null, '320600', null, 'ccq', 'ChongChuanQu  ', null, '4', '226001', '崇川区');
INSERT INTO `area_tb` VALUES ('320611', null, null, null, '1', null, null, null, '320600', null, 'gzq', 'GangZhaQu ', null, '4', '226001', '港闸区');
INSERT INTO `area_tb` VALUES ('320621', null, null, null, '1', null, null, null, '320600', null, 'hax', 'HaiAnXian ', null, '4', '226600', '海安县');
INSERT INTO `area_tb` VALUES ('320623', null, null, null, '1', null, null, null, '320600', null, 'rdx', 'RuDongXian', null, '4', '226400', '如东县');
INSERT INTO `area_tb` VALUES ('320681', null, null, null, '1', null, null, null, '320600', null, 'qds', 'QiDongShi ', null, '4', '226200', '启东市');
INSERT INTO `area_tb` VALUES ('320682', null, null, null, '1', null, null, null, '320600', null, 'rgs', 'RuGaoShi  ', null, '4', '226500', '如皋市');
INSERT INTO `area_tb` VALUES ('320683', null, null, null, '1', null, null, null, '320600', null, 'tzs', 'TongZhouShi   ', null, '4', '226300', '通州市');
INSERT INTO `area_tb` VALUES ('320684', null, null, null, '1', null, null, null, '320600', null, 'hms', 'HaiMenShi ', null, '4', '226100', '海门市');
INSERT INTO `area_tb` VALUES ('320693', null, null, null, '1', null, null, null, '320600', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('320694', null, null, null, '1', null, null, null, '320600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320700', null, null, null, '1', null, null, null, '320000', null, 'lygs', 'LianYunGangShi', null, '3', '222000', '连云港市');
INSERT INTO `area_tb` VALUES ('320703', null, null, null, '1', null, null, null, '320700', null, 'lyq', 'LianYunQu ', null, '4', '222042', '连云区');
INSERT INTO `area_tb` VALUES ('320705', null, null, null, '1', null, null, null, '320700', null, 'xpq', 'XinPuQu   ', null, '4', '222003', '新浦区');
INSERT INTO `area_tb` VALUES ('320706', null, null, null, '1', null, null, null, '320700', null, 'hzq', 'HaiZhouQu ', null, '4', '222023', '海州区');
INSERT INTO `area_tb` VALUES ('320721', null, null, null, '1', null, null, null, '320700', null, 'gyx', 'GanYuXian ', null, '4', '222100', '赣榆县');
INSERT INTO `area_tb` VALUES ('320722', null, null, null, '1', null, null, null, '320700', null, 'dhx', 'DongHaiXian   ', null, '4', '222300', '东海县');
INSERT INTO `area_tb` VALUES ('320723', null, null, null, '1', null, null, null, '320700', null, 'gyx', 'GuanYunXian   ', null, '4', '222200', '灌云县');
INSERT INTO `area_tb` VALUES ('320724', null, null, null, '1', null, null, null, '320700', null, 'gnx', 'GuanNanXian   ', null, '4', '222500', '灌南县');
INSERT INTO `area_tb` VALUES ('320725', null, null, null, '1', null, null, null, '320700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320800', null, null, null, '1', null, null, null, '320000', null, 'has', 'HuaiAnShi ', null, '3', '223200', '淮安市');
INSERT INTO `area_tb` VALUES ('320802', null, null, null, '1', null, null, null, '320800', null, 'qhq', 'QingHeQu  ', null, '4', '223001', '清河区');
INSERT INTO `area_tb` VALUES ('320803', null, null, null, '1', null, null, null, '320800', null, 'czq', 'ChuZhouQu ', null, '4', '223200', '楚州区');
INSERT INTO `area_tb` VALUES ('320804', null, null, null, '1', null, null, null, '320800', null, 'hyq', 'HuaiYinQu ', null, '4', '223000', '淮阴区');
INSERT INTO `area_tb` VALUES ('320811', null, null, null, '1', null, null, null, '320800', null, 'qpq', 'QingPuQu  ', null, '4', '223002', '清浦区');
INSERT INTO `area_tb` VALUES ('320826', null, null, null, '1', null, null, null, '320800', null, 'lsx', 'LianShuiXian  ', null, '4', '223400', '涟水县');
INSERT INTO `area_tb` VALUES ('320829', null, null, null, '1', null, null, null, '320800', null, 'hzx', 'HongZeXian', null, '4', '223100', '洪泽县');
INSERT INTO `area_tb` VALUES ('320830', null, null, null, '1', null, null, null, '320800', null, 'xyx', 'ZuoZuoXian', null, '4', '211700', '盱眙县');
INSERT INTO `area_tb` VALUES ('320831', null, null, null, '1', null, null, null, '320800', null, 'jhx', 'JinHuXian ', null, '4', '211600', '金湖县');
INSERT INTO `area_tb` VALUES ('320832', null, null, null, '1', null, null, null, '320800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('320900', null, null, null, '1', null, null, null, '320000', null, 'ycs', 'YanChengShi   ', null, '3', '224000', '盐城市');
INSERT INTO `area_tb` VALUES ('320902', null, null, null, '1', null, null, null, '320900', null, 'thq', 'TingHuQu  ', null, '4', '224005', '亭湖区');
INSERT INTO `area_tb` VALUES ('320903', null, null, null, '1', null, null, null, '320900', null, 'ydq', 'YanDuQu   ', null, '4', '224055', '盐都区');
INSERT INTO `area_tb` VALUES ('320921', null, null, null, '1', null, null, null, '320900', null, 'xsx', 'XiangShuiXian ', null, '4', '224600', '响水县');
INSERT INTO `area_tb` VALUES ('320922', null, null, null, '1', null, null, null, '320900', null, 'bhx', 'BinHaiXian', null, '4', '224500', '滨海县');
INSERT INTO `area_tb` VALUES ('320923', null, null, null, '1', null, null, null, '320900', null, 'fnx', 'FuNingXian', null, '4', '224400', '阜宁县');
INSERT INTO `area_tb` VALUES ('320924', null, null, null, '1', null, null, null, '320900', null, 'syx', 'SheYangXian   ', null, '4', '224300', '射阳县');
INSERT INTO `area_tb` VALUES ('320925', null, null, null, '1', null, null, null, '320900', null, 'jhx', 'JianHuXian', null, '4', '224700', '建湖县');
INSERT INTO `area_tb` VALUES ('320981', null, null, null, '1', null, null, null, '320900', null, 'dts', 'DongTaiShi', null, '4', '224200', '东台市');
INSERT INTO `area_tb` VALUES ('320982', null, null, null, '1', null, null, null, '320900', null, 'dfs', 'DaFengShi ', null, '4', '224100', '大丰市');
INSERT INTO `area_tb` VALUES ('320983', null, null, null, '1', null, null, null, '320900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('321000', null, null, null, '1', null, null, null, '320000', null, 'yzs', 'YangZhouShi   ', null, '3', '225000', '扬州市');
INSERT INTO `area_tb` VALUES ('321002', null, null, null, '1', null, null, null, '321000', null, 'glq', 'GuangLingQu   ', null, '4', '225002', '广陵区');
INSERT INTO `area_tb` VALUES ('321003', null, null, null, '1', null, null, null, '321000', null, 'hjq', 'ZuoJiangQu', null, '4', '225100', ' 邗江区');
INSERT INTO `area_tb` VALUES ('321011', null, null, null, '1', null, null, null, '321000', null, 'wyq', 'WeiYangQu ', null, '4', '225002', '维扬区');
INSERT INTO `area_tb` VALUES ('321023', null, null, null, '1', null, null, null, '321000', null, 'byx', 'BaoYingXian   ', null, '4', '225800', '宝应县');
INSERT INTO `area_tb` VALUES ('321081', null, null, null, '1', null, null, null, '321000', null, 'yzs', 'YiZhengShi', null, '4', '211400', '仪征市');
INSERT INTO `area_tb` VALUES ('321084', null, null, null, '1', null, null, null, '321000', null, 'gys', 'GaoYouShi ', null, '4', '225600', '高邮市');
INSERT INTO `area_tb` VALUES ('321088', null, null, null, '1', null, null, null, '321000', null, 'jds', 'JiangDuShi', null, '4', '225200', '江都市');
INSERT INTO `area_tb` VALUES ('321092', null, null, null, '1', null, null, null, '321000', null, 'jjkfq', 'JingJiKaiFaQu ', null, '4', '', '经济开发区');
INSERT INTO `area_tb` VALUES ('321093', null, null, null, '1', null, null, null, '321000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('321100', null, null, null, '1', null, null, null, '320000', null, 'zjs', 'ZhenJiangShi  ', null, '3', '212000', '镇江市');
INSERT INTO `area_tb` VALUES ('321102', null, null, null, '1', null, null, null, '321100', null, 'jkq', 'JingKouQu ', null, '4', '212001', '京口区');
INSERT INTO `area_tb` VALUES ('321111', null, null, null, '1', null, null, null, '321100', null, 'rzq', 'RunZhouQu ', null, '4', '212004', '润州区');
INSERT INTO `area_tb` VALUES ('321112', null, null, null, '1', null, null, null, '321100', null, 'dtq', 'DanTuQu   ', null, '4', '212001', '丹徒区');
INSERT INTO `area_tb` VALUES ('321181', null, null, null, '1', null, null, null, '321100', null, 'dys', 'DanYangShi', null, '4', '212300', '丹阳市');
INSERT INTO `area_tb` VALUES ('321182', null, null, null, '1', null, null, null, '321100', null, 'yzs', 'YangZhongShi  ', null, '4', '212200', '扬中市');
INSERT INTO `area_tb` VALUES ('321183', null, null, null, '1', null, null, null, '321100', null, 'jrs', 'JuRongShi ', null, '4', '212400', '句容市');
INSERT INTO `area_tb` VALUES ('321184', null, null, null, '1', null, null, null, '321100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('321200', null, null, null, '1', null, null, null, '320000', null, 'tzs', 'TaiZhouShi', null, '3', '225300', '泰州市');
INSERT INTO `area_tb` VALUES ('321202', null, null, null, '1', null, null, null, '321200', null, 'hlq', 'HaiLingQu ', null, '4', '225300', '海陵区');
INSERT INTO `area_tb` VALUES ('321203', null, null, null, '1', null, null, null, '321200', null, 'ggq', 'GaoGangQu ', null, '4', '225321', '高港区');
INSERT INTO `area_tb` VALUES ('321281', null, null, null, '1', null, null, null, '321200', null, 'xhs', 'XingHuaShi', null, '4', '225700', '兴化市');
INSERT INTO `area_tb` VALUES ('321282', null, null, null, '1', null, null, null, '321200', null, 'jjs', 'JingJiangShi  ', null, '4', '214500', '靖江市');
INSERT INTO `area_tb` VALUES ('321283', null, null, null, '1', null, null, null, '321200', null, 'txs', 'TaiXingShi', null, '4', '225400', '泰兴市');
INSERT INTO `area_tb` VALUES ('321284', null, null, null, '1', null, null, null, '321200', null, 'jys', 'JiangYanShi   ', null, '4', '225500', '姜堰市');
INSERT INTO `area_tb` VALUES ('321285', null, null, null, '1', null, null, null, '321200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('321300', null, null, null, '1', null, null, null, '320000', null, 'sqs', 'SuQianShi ', null, '3', '223800', '宿迁市');
INSERT INTO `area_tb` VALUES ('321302', null, null, null, '1', null, null, null, '321300', null, 'scq', 'SuChengQu ', null, '4', '223800', '宿城区');
INSERT INTO `area_tb` VALUES ('321311', null, null, null, '1', null, null, null, '321300', null, 'syq', 'SuYuQu', null, '4', '223800', '宿豫区');
INSERT INTO `area_tb` VALUES ('321322', null, null, null, '1', null, null, null, '321300', null, 'syx', 'ZuoYangXian   ', null, '4', '223600', '沭阳县');
INSERT INTO `area_tb` VALUES ('321323', null, null, null, '1', null, null, null, '321300', null, 'syx', 'ZuoYangXian   ', null, '4', '223700', '泗阳县');
INSERT INTO `area_tb` VALUES ('321324', null, null, null, '1', null, null, null, '321300', null, 'shx', 'ZuoHongXian   ', null, '4', '223900', '泗洪县');
INSERT INTO `area_tb` VALUES ('321325', null, null, null, '1', null, null, null, '321300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330000', null, null, null, '1', null, null, null, '1', null, 'zjs', 'ZheJiangSheng ', null, '2', '', '浙江省');
INSERT INTO `area_tb` VALUES ('330100', null, null, null, '1', null, null, null, '330000', null, 'hzs', 'HangZhouShi   ', null, '3', '310000', '杭州市');
INSERT INTO `area_tb` VALUES ('330102', null, null, null, '1', null, null, null, '330100', null, 'scq', 'ShangChengQu  ', null, '4', '311500', '上城区');
INSERT INTO `area_tb` VALUES ('330103', null, null, null, '1', null, null, null, '330100', null, 'xcq', 'XiaChengQu', null, '4', '310006', '下城区');
INSERT INTO `area_tb` VALUES ('330104', null, null, null, '1', null, null, null, '330100', null, 'jgq', 'JiangGanQu', null, '4', '310002', '江干区');
INSERT INTO `area_tb` VALUES ('330105', null, null, null, '1', null, null, null, '330100', null, 'gsq', 'GongShuQu ', null, '4', '310011', '拱墅区');
INSERT INTO `area_tb` VALUES ('330106', null, null, null, '1', null, null, null, '330100', null, 'xhq', 'XiHuQu', null, '4', '310013', '西湖区');
INSERT INTO `area_tb` VALUES ('330108', null, null, null, '1', null, null, null, '330100', null, 'bjq', 'BinJiangQu', null, '4', '310051', '滨江区');
INSERT INTO `area_tb` VALUES ('330109', null, null, null, '1', null, null, null, '330100', null, 'xsq', 'XiaoShanQu', null, '4', '311200', '萧山区');
INSERT INTO `area_tb` VALUES ('330110', null, null, null, '1', null, null, null, '330100', null, 'yhq', 'YuHangQu  ', null, '4', '311100', '余杭区');
INSERT INTO `area_tb` VALUES ('330122', null, null, null, '1', null, null, null, '330100', null, 'tlx', 'TongLuXian', null, '4', '311500', '桐庐县');
INSERT INTO `area_tb` VALUES ('330127', null, null, null, '1', null, null, null, '330100', null, 'cax', 'ChunAnXian', null, '4', '311700', '淳安县');
INSERT INTO `area_tb` VALUES ('330182', null, null, null, '1', null, null, null, '330100', null, 'jds', 'JianDeShi ', null, '4', '311600', '建德市');
INSERT INTO `area_tb` VALUES ('330183', null, null, null, '1', null, null, null, '330100', null, 'fys', 'FuYangShi ', null, '4', '311400', '富阳市');
INSERT INTO `area_tb` VALUES ('330185', null, null, null, '1', null, null, null, '330100', null, 'las', 'LinAnShi  ', null, '4', '311300', '临安市');
INSERT INTO `area_tb` VALUES ('330186', null, null, null, '1', null, null, null, '330100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330200', null, null, null, '1', null, null, null, '330000', null, 'nbs', 'NingBoShi ', null, '3', '315000', '宁波市');
INSERT INTO `area_tb` VALUES ('330203', null, null, null, '1', null, null, null, '330200', null, 'hsq', 'HaiShuQu  ', null, '4', '315000', '海曙区');
INSERT INTO `area_tb` VALUES ('330204', null, null, null, '1', null, null, null, '330200', null, 'jdq', 'JiangDongQu   ', null, '4', '315040', '江东区');
INSERT INTO `area_tb` VALUES ('330205', null, null, null, '1', null, null, null, '330200', null, 'jbq', 'JiangBeiQu', null, '4', '315020', '江北区');
INSERT INTO `area_tb` VALUES ('330206', null, null, null, '1', null, null, null, '330200', null, 'blq', 'BeiLunQu  ', null, '4', '315800', '北仑区');
INSERT INTO `area_tb` VALUES ('330211', null, null, null, '1', null, null, null, '330200', null, 'zhq', 'ZhenHaiQu ', null, '4', '315200', '镇海区');
INSERT INTO `area_tb` VALUES ('330212', null, null, null, '1', null, null, null, '330200', null, 'yzq', 'ZuoZhouQu ', null, '4', '315100', '鄞州区');
INSERT INTO `area_tb` VALUES ('330225', null, null, null, '1', null, null, null, '330200', null, 'xsx', 'XiangShanXian ', null, '4', '315700', '象山县');
INSERT INTO `area_tb` VALUES ('330226', null, null, null, '1', null, null, null, '330200', null, 'nhx', 'NingHaiXian   ', null, '4', '315600', '宁海县');
INSERT INTO `area_tb` VALUES ('330281', null, null, null, '1', null, null, null, '330200', null, 'yys', 'YuYaoShi  ', null, '4', '315400', '余姚市');
INSERT INTO `area_tb` VALUES ('330282', null, null, null, '1', null, null, null, '330200', null, 'cxs', 'CiXiShi   ', null, '4', '315300', '慈溪市');
INSERT INTO `area_tb` VALUES ('330283', null, null, null, '1', null, null, null, '330200', null, 'fhs', 'FengHuaShi', null, '4', '315500', '奉化市');
INSERT INTO `area_tb` VALUES ('330284', null, null, null, '1', null, null, null, '330200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330300', null, null, null, '1', null, null, null, '330000', null, 'wzs', 'WenZhouShi', null, '3', '325000', '温州市');
INSERT INTO `area_tb` VALUES ('330302', null, null, null, '1', null, null, null, '330300', null, 'lcq', 'LuChengQu ', null, '4', '325000', '鹿城区');
INSERT INTO `area_tb` VALUES ('330303', null, null, null, '1', null, null, null, '330300', null, 'lwq', 'LongWanQu ', null, '4', '325024', '龙湾区');
INSERT INTO `area_tb` VALUES ('330304', null, null, null, '1', null, null, null, '330300', null, 'ohq', 'ZuoHaiQu  ', null, '4', '325005', '瓯海区');
INSERT INTO `area_tb` VALUES ('330322', null, null, null, '1', null, null, null, '330300', null, 'dtx', 'DongTouXian   ', null, '4', '325700', '洞头县');
INSERT INTO `area_tb` VALUES ('330324', null, null, null, '1', null, null, null, '330300', null, 'yjx', 'YongJiaXian   ', null, '4', '325100', '永嘉县');
INSERT INTO `area_tb` VALUES ('330326', null, null, null, '1', null, null, null, '330300', null, 'pyx', 'PingYangXian  ', null, '4', '325400', '平阳县');
INSERT INTO `area_tb` VALUES ('330327', null, null, null, '1', null, null, null, '330300', null, 'cnx', 'CangNanXian   ', null, '4', '325800', '苍南县');
INSERT INTO `area_tb` VALUES ('330328', null, null, null, '1', null, null, null, '330300', null, 'wcx', 'WenChengXian  ', null, '4', '325300', '文成县');
INSERT INTO `area_tb` VALUES ('330329', null, null, null, '1', null, null, null, '330300', null, 'tsx', 'TaiShunXian   ', null, '4', '325500', '泰顺县');
INSERT INTO `area_tb` VALUES ('330381', null, null, null, '1', null, null, null, '330300', null, 'ras', 'RuiAnShi  ', null, '4', '325200', '瑞安市');
INSERT INTO `area_tb` VALUES ('330382', null, null, null, '1', null, null, null, '330300', null, 'lqs', 'LeQingShi ', null, '4', '325600', '乐清市');
INSERT INTO `area_tb` VALUES ('330383', null, null, null, '1', null, null, null, '330300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330400', null, null, null, '1', null, null, null, '330000', null, 'jxs', 'JiaXingShi', null, '3', '314000', '嘉兴市');
INSERT INTO `area_tb` VALUES ('330402', null, null, null, '1', null, null, null, '330400', null, 'nhq', 'NanHuQu   ', null, '4', '314000', '南湖区');
INSERT INTO `area_tb` VALUES ('330411', null, null, null, '1', null, null, null, '330400', null, 'xzq', 'XiuZhouQu ', null, '4', '314001', '秀洲区');
INSERT INTO `area_tb` VALUES ('330421', null, null, null, '1', null, null, null, '330400', null, 'jsx', 'JiaShanXian   ', null, '4', '314100', '嘉善县');
INSERT INTO `area_tb` VALUES ('330424', null, null, null, '1', null, null, null, '330400', null, 'hyx', 'HaiYanXian', null, '4', '314300', '海盐县');
INSERT INTO `area_tb` VALUES ('330481', null, null, null, '1', null, null, null, '330400', null, 'hns', 'HaiNingShi', null, '4', '314400', '海宁市');
INSERT INTO `area_tb` VALUES ('330482', null, null, null, '1', null, null, null, '330400', null, 'phs', 'PingHuShi ', null, '4', '314200', '平湖市');
INSERT INTO `area_tb` VALUES ('330483', null, null, null, '1', null, null, null, '330400', null, 'txs', 'TongXiangShi  ', null, '4', '314500', '桐乡市');
INSERT INTO `area_tb` VALUES ('330484', null, null, null, '1', null, null, null, '330400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330500', null, null, null, '1', null, null, null, '330000', null, 'hzs', 'HuZhouShi ', null, '3', '313000', '湖州市');
INSERT INTO `area_tb` VALUES ('330502', null, null, null, '1', null, null, null, '330500', null, 'wxq', 'WuXingQu  ', null, '4', '313000', '吴兴区');
INSERT INTO `area_tb` VALUES ('330503', null, null, null, '1', null, null, null, '330500', null, 'nxq', 'NanZuoQu  ', null, '4', '313009', '南浔区');
INSERT INTO `area_tb` VALUES ('330521', null, null, null, '1', null, null, null, '330500', null, 'dqx', 'DeQingXian', null, '4', '313200', '德清县');
INSERT INTO `area_tb` VALUES ('330522', null, null, null, '1', null, null, null, '330500', null, 'cxx', 'ChangXingXian ', null, '4', '313100', '长兴县');
INSERT INTO `area_tb` VALUES ('330523', null, null, null, '1', null, null, null, '330500', null, 'ajx', 'AnJiXian  ', null, '4', '313300', '安吉县');
INSERT INTO `area_tb` VALUES ('330524', null, null, null, '1', null, null, null, '330500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330600', null, null, null, '1', null, null, null, '330000', null, 'sxs', 'ShaoXingShi   ', null, '3', '312000', '绍兴市');
INSERT INTO `area_tb` VALUES ('330602', null, null, null, '1', null, null, null, '330600', null, 'ycq', 'YueChengQu', null, '4', '312000', '越城区');
INSERT INTO `area_tb` VALUES ('330621', null, null, null, '1', null, null, null, '330600', null, 'sxx', 'ShaoXingXian  ', null, '4', '312000', '绍兴县');
INSERT INTO `area_tb` VALUES ('330624', null, null, null, '1', null, null, null, '330600', null, 'xcx', 'XinChangXian  ', null, '4', '312500', '新昌县');
INSERT INTO `area_tb` VALUES ('330681', null, null, null, '1', null, null, null, '330600', null, 'zjs', 'ZhuZuoShi ', null, '4', '311800', '诸暨市');
INSERT INTO `area_tb` VALUES ('330682', null, null, null, '1', null, null, null, '330600', null, 'sys', 'ShangYuShi', null, '4', '312300', '上虞市');
INSERT INTO `area_tb` VALUES ('330683', null, null, null, '1', null, null, null, '330600', null, 'szs', 'ZuoZhouShi', null, '4', '312400', '嵊州市');
INSERT INTO `area_tb` VALUES ('330684', null, null, null, '1', null, null, null, '330600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330700', null, null, null, '1', null, null, null, '330000', null, 'jhs', 'JinHuaShi ', null, '3', '321000', '金华市');
INSERT INTO `area_tb` VALUES ('330702', null, null, null, '1', null, null, null, '330700', null, 'wcq', 'ZuoChengQu', null, '4', '321051', '婺城区');
INSERT INTO `area_tb` VALUES ('330703', null, null, null, '1', null, null, null, '330700', null, 'jdq', 'JinDongQu ', null, '4', '321002', '金东区');
INSERT INTO `area_tb` VALUES ('330723', null, null, null, '1', null, null, null, '330700', null, 'wyx', 'WuYiXian  ', null, '4', '321200', '武义县');
INSERT INTO `area_tb` VALUES ('330726', null, null, null, '1', null, null, null, '330700', null, 'pjx', 'PuJiangXian   ', null, '4', '322200', '浦江县');
INSERT INTO `area_tb` VALUES ('330727', null, null, null, '1', null, null, null, '330700', null, 'pax', 'PanAnXian ', null, '4', '322300', '磐安县');
INSERT INTO `area_tb` VALUES ('330781', null, null, null, '1', null, null, null, '330700', null, 'lxs', 'LanXiShi  ', null, '4', '321100', '兰溪市');
INSERT INTO `area_tb` VALUES ('330782', null, null, null, '1', null, null, null, '330700', null, 'yws', 'YiWuShi   ', null, '4', '322000', '义乌市');
INSERT INTO `area_tb` VALUES ('330783', null, null, null, '1', null, null, null, '330700', null, 'dys', 'DongYangShi   ', null, '4', '322100', '东阳市');
INSERT INTO `area_tb` VALUES ('330784', null, null, null, '1', null, null, null, '330700', null, 'yks', 'YongKangShi   ', null, '4', '321300', '永康市');
INSERT INTO `area_tb` VALUES ('330785', null, null, null, '1', null, null, null, '330700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330800', null, null, null, '1', null, null, null, '330000', null, 'qzs', 'ZuoZhouShi', null, '3', '324000', '衢州市');
INSERT INTO `area_tb` VALUES ('330802', null, null, null, '1', null, null, null, '330800', null, 'kcq', 'KeChengQu ', null, '4', '324000', '柯城区');
INSERT INTO `area_tb` VALUES ('330803', null, null, null, '1', null, null, null, '330800', null, 'qjq', 'ZuoJiangQu', null, '4', '324000', '衢江区');
INSERT INTO `area_tb` VALUES ('330822', null, null, null, '1', null, null, null, '330800', null, 'csx', 'ChangShanXian ', null, '4', '324200', '常山县');
INSERT INTO `area_tb` VALUES ('330824', null, null, null, '1', null, null, null, '330800', null, 'khx', 'KaiHuaXian', null, '4', '324300', '开化县');
INSERT INTO `area_tb` VALUES ('330825', null, null, null, '1', null, null, null, '330800', null, 'lyx', 'LongYouXian   ', null, '4', '324400', '龙游县');
INSERT INTO `area_tb` VALUES ('330881', null, null, null, '1', null, null, null, '330800', null, 'jss', 'JiangShanShi  ', null, '4', '324100', '江山市');
INSERT INTO `area_tb` VALUES ('330882', null, null, null, '1', null, null, null, '330800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('330900', null, null, null, '1', null, null, null, '330000', null, 'zss', 'ZhouShanShi   ', null, '3', '316000', '舟山市');
INSERT INTO `area_tb` VALUES ('330902', null, null, null, '1', null, null, null, '330900', null, 'dhq', 'DingHaiQu ', null, '4', '316000', '定海区');
INSERT INTO `area_tb` VALUES ('330903', null, null, null, '1', null, null, null, '330900', null, 'ptq', 'PuTuoQu   ', null, '4', '316100', '普陀区');
INSERT INTO `area_tb` VALUES ('330921', null, null, null, '1', null, null, null, '330900', null, 'dsx', 'ZuoShanXian   ', null, '4', '316200', ' 岱山县');
INSERT INTO `area_tb` VALUES ('330922', null, null, null, '1', null, null, null, '330900', null, 'ssx', 'ZuoZuoXian', null, '4', '202400', '嵊泗县');
INSERT INTO `area_tb` VALUES ('330923', null, null, null, '1', null, null, null, '330900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('331000', null, null, null, '1', null, null, null, '330000', null, 'tzs', 'TaiZhouShi', null, '3', '318000', '台州市');
INSERT INTO `area_tb` VALUES ('331002', null, null, null, '1', null, null, null, '331000', null, 'jjq', 'JiaoJiangQu   ', null, '4', '318000', '椒江区');
INSERT INTO `area_tb` VALUES ('331003', null, null, null, '1', null, null, null, '331000', null, 'hyq', 'HuangYanQu', null, '4', '318020', '黄岩区');
INSERT INTO `area_tb` VALUES ('331004', null, null, null, '1', null, null, null, '331000', null, 'lqq', 'LuQiaoQu  ', null, '4', '318050', '路桥区');
INSERT INTO `area_tb` VALUES ('331021', null, null, null, '1', null, null, null, '331000', null, 'yhx', 'YuHuanXian', null, '4', '317600', '玉环县');
INSERT INTO `area_tb` VALUES ('331022', null, null, null, '1', null, null, null, '331000', null, 'smx', 'SanMenXian', null, '4', '317100', '三门县');
INSERT INTO `area_tb` VALUES ('331023', null, null, null, '1', null, null, null, '331000', null, 'ttx', 'TianTaiXian   ', null, '4', '317200', '天台县');
INSERT INTO `area_tb` VALUES ('331024', null, null, null, '1', null, null, null, '331000', null, 'xjx', 'XianJuXian', null, '4', '317300', '仙居县');
INSERT INTO `area_tb` VALUES ('331081', null, null, null, '1', null, null, null, '331000', null, 'wls', 'WenLingShi', null, '4', '317500', '温岭市');
INSERT INTO `area_tb` VALUES ('331082', null, null, null, '1', null, null, null, '331000', null, 'lhs', 'LinHaiShi ', null, '4', '317000', '临海市');
INSERT INTO `area_tb` VALUES ('331083', null, null, null, '1', null, null, null, '331000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('331100', null, null, null, '1', null, null, null, '330000', null, 'lss', 'LiShuiShi ', null, '3', '323000', '丽水市');
INSERT INTO `area_tb` VALUES ('331102', null, null, null, '1', null, null, null, '331100', null, 'ldq', 'LianDuQu  ', null, '4', '323000', '莲都区');
INSERT INTO `area_tb` VALUES ('331121', null, null, null, '1', null, null, null, '331100', null, 'qtx', 'QingTianXian  ', null, '4', '323900', '青田县');
INSERT INTO `area_tb` VALUES ('331122', null, null, null, '1', null, null, null, '331100', null, 'jyx', 'ZuoYunXian', null, '4', '321400', '缙云县');
INSERT INTO `area_tb` VALUES ('331123', null, null, null, '1', null, null, null, '331100', null, 'scx', 'SuiChangXian  ', null, '4', '323300', '遂昌县');
INSERT INTO `area_tb` VALUES ('331124', null, null, null, '1', null, null, null, '331100', null, 'syx', 'SongYangXian  ', null, '4', '323400', '松阳县');
INSERT INTO `area_tb` VALUES ('331125', null, null, null, '1', null, null, null, '331100', null, 'yhx', 'YunHeXian ', null, '4', '323600', '云和县');
INSERT INTO `area_tb` VALUES ('331126', null, null, null, '1', null, null, null, '331100', null, 'qyx', 'QingYuanXian  ', null, '4', '323800', '庆元县');
INSERT INTO `area_tb` VALUES ('331127', null, null, null, '1', null, null, null, '331100', null, 'jnszzzx', 'JingNingZuoZuZiZhiXian', null, '4', '323500', '景宁畲族自治县');
INSERT INTO `area_tb` VALUES ('331181', null, null, null, '1', null, null, null, '331100', null, 'lqs', 'LongQuanShi   ', null, '4', '323700', '龙泉市');
INSERT INTO `area_tb` VALUES ('331182', null, null, null, '1', null, null, null, '331100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340000', null, null, null, '1', null, null, null, '1', null, 'ahs', 'AnHuiSheng', null, '2', '', '安徽省');
INSERT INTO `area_tb` VALUES ('340100', null, null, null, '1', null, null, null, '340000', null, 'hfs', 'HeFeiShi  ', null, '3', '230000', '合肥市');
INSERT INTO `area_tb` VALUES ('340102', null, null, null, '1', null, null, null, '340100', null, 'yhq', 'YaoHaiQu  ', null, '4', '230011', '瑶海区');
INSERT INTO `area_tb` VALUES ('340103', null, null, null, '1', null, null, null, '340100', null, 'lyq', 'LuYangQu  ', null, '4', '230001', '庐阳区');
INSERT INTO `area_tb` VALUES ('340104', null, null, null, '1', null, null, null, '340100', null, 'ssq', 'ShuShanQu ', null, '4', '230061', '蜀山区');
INSERT INTO `area_tb` VALUES ('340111', null, null, null, '1', null, null, null, '340100', null, 'bhq', 'BaoHeQu   ', null, '4', '230041', '包河区');
INSERT INTO `area_tb` VALUES ('340121', null, null, null, '1', null, null, null, '340100', null, 'cfx', 'ChangFengXian ', null, '4', '231100', '长丰县');
INSERT INTO `area_tb` VALUES ('340122', null, null, null, '1', null, null, null, '340100', null, 'fdx', 'FeiDongXian   ', null, '4', '231600', '肥东县');
INSERT INTO `area_tb` VALUES ('340123', null, null, null, '1', null, null, null, '340100', null, 'fxx', 'FeiXiXian ', null, '4', '231200', '肥西县');
INSERT INTO `area_tb` VALUES ('340151', null, null, null, '1', null, null, null, '340100', null, 'gxq', 'GaoXinQu  ', null, '4', '', '高新区');
INSERT INTO `area_tb` VALUES ('340191', null, null, null, '1', null, null, null, '340100', null, 'zq', 'ZhongQu   ', null, '4', '', '中区');
INSERT INTO `area_tb` VALUES ('340192', null, null, null, '1', null, null, null, '340100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340200', null, null, null, '1', null, null, null, '340000', null, 'whs', 'WuHuShi   ', null, '3', '241000', '芜湖市');
INSERT INTO `area_tb` VALUES ('340202', null, null, null, '1', null, null, null, '340200', null, 'jhq', 'JingHuQu  ', null, '4', '241000', '镜湖区');
INSERT INTO `area_tb` VALUES ('340203', null, null, null, '1', null, null, null, '340200', null, 'yjq', 'ZuoJiangQu', null, '4', '241000', '弋江区');
INSERT INTO `area_tb` VALUES ('340207', null, null, null, '1', null, null, null, '340200', null, 'jjq', 'ZuoJiangQu', null, '4', '241000', '鸠江区');
INSERT INTO `area_tb` VALUES ('340208', null, null, null, '1', null, null, null, '340200', null, 'ssq', 'SanShanQu ', null, '4', '241000', '三山区');
INSERT INTO `area_tb` VALUES ('340221', null, null, null, '1', null, null, null, '340200', null, 'whx', 'WuHuXian  ', null, '4', '241100', '芜湖县');
INSERT INTO `area_tb` VALUES ('340222', null, null, null, '1', null, null, null, '340200', null, 'fcx', 'FanChangXian  ', null, '4', '241200', '繁昌县');
INSERT INTO `area_tb` VALUES ('340223', null, null, null, '1', null, null, null, '340200', null, 'nlx', 'NanLingXian   ', null, '4', '242400', '南陵县');
INSERT INTO `area_tb` VALUES ('340224', null, null, null, '1', null, null, null, '340200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340300', null, null, null, '1', null, null, null, '340000', null, 'bbs', 'BangBuShi ', null, '3', '233000', '蚌埠市');
INSERT INTO `area_tb` VALUES ('340302', null, null, null, '1', null, null, null, '340300', null, 'lzhq', 'LongZiHuQu', null, '4', '233000', '龙子湖区');
INSERT INTO `area_tb` VALUES ('340303', null, null, null, '1', null, null, null, '340300', null, 'bsq', 'BangShanQu', null, '4', '233000', '蚌山区');
INSERT INTO `area_tb` VALUES ('340304', null, null, null, '1', null, null, null, '340300', null, 'yhq', 'YuHuiQu   ', null, '4', '233010', '禹会区');
INSERT INTO `area_tb` VALUES ('340311', null, null, null, '1', null, null, null, '340300', null, 'hsq', 'HuaiShangQu   ', null, '4', '233002', '淮上区');
INSERT INTO `area_tb` VALUES ('340321', null, null, null, '1', null, null, null, '340300', null, 'hyx', 'HuaiYuanXian  ', null, '4', '233400', '怀远县');
INSERT INTO `area_tb` VALUES ('340322', null, null, null, '1', null, null, null, '340300', null, 'whx', 'WuHeXian  ', null, '4', '233300', '五河县');
INSERT INTO `area_tb` VALUES ('340323', null, null, null, '1', null, null, null, '340300', null, 'gzx', 'GuZhenXian', null, '4', '233200', '固镇县');
INSERT INTO `area_tb` VALUES ('340324', null, null, null, '1', null, null, null, '340300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340400', null, null, null, '1', null, null, null, '340000', null, 'hns', 'HuaiNanShi', null, '3', '232000', '淮南市');
INSERT INTO `area_tb` VALUES ('340402', null, null, null, '1', null, null, null, '340400', null, 'dtq', 'DaTongQu  ', null, '4', '232033', '大通区');
INSERT INTO `area_tb` VALUES ('340403', null, null, null, '1', null, null, null, '340400', null, 'tjaq', 'TianJiaZuoQu  ', null, '4', '232000', '田家庵区');
INSERT INTO `area_tb` VALUES ('340404', null, null, null, '1', null, null, null, '340400', null, 'xjjq', 'XieJiaJiQu', null, '4', '232052', '谢家集区');
INSERT INTO `area_tb` VALUES ('340405', null, null, null, '1', null, null, null, '340400', null, 'bgsq', 'BaGongShanQu  ', null, '4', '232072', '八公山区');
INSERT INTO `area_tb` VALUES ('340406', null, null, null, '1', null, null, null, '340400', null, 'pjq', 'PanJiQu   ', null, '4', '232082', '潘集区');
INSERT INTO `area_tb` VALUES ('340421', null, null, null, '1', null, null, null, '340400', null, 'ftx', 'FengTaiXian   ', null, '4', '232100', '凤台县');
INSERT INTO `area_tb` VALUES ('340422', null, null, null, '1', null, null, null, '340400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340500', null, null, null, '1', null, null, null, '340000', null, 'mass', 'MaAnShanShi   ', null, '3', '243000', '马鞍山市');
INSERT INTO `area_tb` VALUES ('340502', null, null, null, '1', null, null, null, '340500', null, 'jjzq', 'JinJiaZhuangQu', null, '4', '243021', '金家庄区');
INSERT INTO `area_tb` VALUES ('340503', null, null, null, '1', null, null, null, '340500', null, 'hsq', 'HuaShanQu ', null, '4', '243000', '花山区');
INSERT INTO `area_tb` VALUES ('340504', null, null, null, '1', null, null, null, '340500', null, 'ysq', 'YuShanQu  ', null, '4', '243071', '雨山区');
INSERT INTO `area_tb` VALUES ('340521', null, null, null, '1', null, null, null, '340500', null, 'dtx', 'DangTuXian', null, '4', '243100', '当涂县');
INSERT INTO `area_tb` VALUES ('340522', null, null, null, '1', null, null, null, '340500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340600', null, null, null, '1', null, null, null, '340000', null, 'hbs', 'HuaiBeiShi', null, '3', '235000', '淮北市');
INSERT INTO `area_tb` VALUES ('340602', null, null, null, '1', null, null, null, '340600', null, 'djq', 'DuJiQu', null, '4', '235047', '杜集区');
INSERT INTO `area_tb` VALUES ('340603', null, null, null, '1', null, null, null, '340600', null, 'xsq', 'XiangShanQu   ', null, '4', '235000', '相山区');
INSERT INTO `area_tb` VALUES ('340604', null, null, null, '1', null, null, null, '340600', null, 'lsq', 'LieShanQu ', null, '4', '235025', '烈山区');
INSERT INTO `area_tb` VALUES ('340621', null, null, null, '1', null, null, null, '340600', null, 'sxx', 'ZuoXiXian ', null, '4', '235100', '濉溪县');
INSERT INTO `area_tb` VALUES ('340622', null, null, null, '1', null, null, null, '340600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340700', null, null, null, '1', null, null, null, '340000', null, 'tls', 'TongLingShi   ', null, '3', '244000', '铜陵市');
INSERT INTO `area_tb` VALUES ('340702', null, null, null, '1', null, null, null, '340700', null, 'tgsq', 'TongGuanShanQu', null, '4', '244000', '铜官山区');
INSERT INTO `area_tb` VALUES ('340703', null, null, null, '1', null, null, null, '340700', null, 'szsq', 'ShiZiShanQu   ', null, '4', '244031', '狮子山区');
INSERT INTO `area_tb` VALUES ('340711', null, null, null, '1', null, null, null, '340700', null, 'jq', 'JiaoQu', null, '4', '244000', '郊区');
INSERT INTO `area_tb` VALUES ('340721', null, null, null, '1', null, null, null, '340700', null, 'tlx', 'TongLingXian  ', null, '4', '244100', '铜陵县');
INSERT INTO `area_tb` VALUES ('340722', null, null, null, '1', null, null, null, '340700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('340800', null, null, null, '1', null, null, null, '340000', null, 'aqs', 'AnQingShi ', null, '3', '246000', '安庆市');
INSERT INTO `area_tb` VALUES ('340802', null, null, null, '1', null, null, null, '340800', null, 'yjq', 'YingJiangQu   ', null, '4', '246003', '迎江区');
INSERT INTO `area_tb` VALUES ('340803', null, null, null, '1', null, null, null, '340800', null, 'dgq', 'DaGuanQu  ', null, '4', '246004', '大观区');
INSERT INTO `area_tb` VALUES ('340811', null, null, null, '1', null, null, null, '340800', null, 'yxq', 'YiXiuQu   ', null, '4', '246003', '宜秀区');
INSERT INTO `area_tb` VALUES ('340822', null, null, null, '1', null, null, null, '340800', null, 'hnx', 'HuaiNingXian  ', null, '4', '246100', '怀宁县');
INSERT INTO `area_tb` VALUES ('340823', null, null, null, '1', null, null, null, '340800', null, 'cyx', 'ZuoYangXian   ', null, '4', '246700', '枞阳县');
INSERT INTO `area_tb` VALUES ('340824', null, null, null, '1', null, null, null, '340800', null, 'qsx', 'QianShanXian  ', null, '4', '246300', '潜山县');
INSERT INTO `area_tb` VALUES ('340825', null, null, null, '1', null, null, null, '340800', null, 'thx', 'TaiHuXian ', null, '4', '246400', '太湖县');
INSERT INTO `area_tb` VALUES ('340826', null, null, null, '1', null, null, null, '340800', null, 'ssx', 'SuSongXian', null, '4', '246500', '宿松县');
INSERT INTO `area_tb` VALUES ('340827', null, null, null, '1', null, null, null, '340800', null, 'wjx', 'WangJiangXian ', null, '4', '246200', '望江县');
INSERT INTO `area_tb` VALUES ('340828', null, null, null, '1', null, null, null, '340800', null, 'yxx', 'YueXiXian ', null, '4', '246600', '岳西县');
INSERT INTO `area_tb` VALUES ('340881', null, null, null, '1', null, null, null, '340800', null, 'tcs', 'TongChengShi  ', null, '4', '231400', '桐城市');
INSERT INTO `area_tb` VALUES ('340882', null, null, null, '1', null, null, null, '340800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341000', null, null, null, '1', null, null, null, '340000', null, 'hss', 'HuangShanShi  ', null, '3', '245000', '黄山市');
INSERT INTO `area_tb` VALUES ('341002', null, null, null, '1', null, null, null, '341000', null, 'txq', 'TunXiQu   ', null, '4', '245000', '屯溪区');
INSERT INTO `area_tb` VALUES ('341003', null, null, null, '1', null, null, null, '341000', null, 'hsq', 'HuangShanQu   ', null, '4', '242700', '黄山区');
INSERT INTO `area_tb` VALUES ('341004', null, null, null, '1', null, null, null, '341000', null, 'hzq', 'HuiZhouQu ', null, '4', '245061', '徽州区');
INSERT INTO `area_tb` VALUES ('341021', null, null, null, '1', null, null, null, '341000', null, 'sx', 'ZuoXian   ', null, '4', '245200', '歙县');
INSERT INTO `area_tb` VALUES ('341022', null, null, null, '1', null, null, null, '341000', null, 'xnx', 'XiuNingXian   ', null, '4', '245400', '休宁县');
INSERT INTO `area_tb` VALUES ('341023', null, null, null, '1', null, null, null, '341000', null, 'yx', 'ZuoXian   ', null, '4', '245500', '黟县');
INSERT INTO `area_tb` VALUES ('341024', null, null, null, '1', null, null, null, '341000', null, 'qmx', 'QiMenXian ', null, '4', '245600', '祁门县');
INSERT INTO `area_tb` VALUES ('341025', null, null, null, '1', null, null, null, '341000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341100', null, null, null, '1', null, null, null, '340000', null, 'czs', 'ChuZhouShi', null, '3', '239000', '滁州市');
INSERT INTO `area_tb` VALUES ('341102', null, null, null, '1', null, null, null, '341100', null, 'lyq', 'LangZuoQu ', null, '4', '239000', '琅琊区');
INSERT INTO `area_tb` VALUES ('341103', null, null, null, '1', null, null, null, '341100', null, 'nqq', 'NanZuoQu  ', null, '4', '239000', '南谯区');
INSERT INTO `area_tb` VALUES ('341122', null, null, null, '1', null, null, null, '341100', null, 'lax', 'LaiAnXian ', null, '4', '239200', '来安县');
INSERT INTO `area_tb` VALUES ('341124', null, null, null, '1', null, null, null, '341100', null, 'qjx', 'QuanJiaoXian  ', null, '4', '239500', '全椒县');
INSERT INTO `area_tb` VALUES ('341125', null, null, null, '1', null, null, null, '341100', null, 'dyx', 'DingYuanXian  ', null, '4', '233200', '定远县');
INSERT INTO `area_tb` VALUES ('341126', null, null, null, '1', null, null, null, '341100', null, 'fyx', 'FengYangXian  ', null, '4', '233100', '凤阳县');
INSERT INTO `area_tb` VALUES ('341181', null, null, null, '1', null, null, null, '341100', null, 'tcs', 'TianChangShi  ', null, '4', '239300', '天长市');
INSERT INTO `area_tb` VALUES ('341182', null, null, null, '1', null, null, null, '341100', null, 'mgs', 'MingGuangShi  ', null, '4', '239400', '明光市');
INSERT INTO `area_tb` VALUES ('341183', null, null, null, '1', null, null, null, '341100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341200', null, null, null, '1', null, null, null, '340000', null, 'fys', 'FuYangShi ', null, '3', '236000', '阜阳市');
INSERT INTO `area_tb` VALUES ('341202', null, null, null, '1', null, null, null, '341200', null, 'yzq', 'ZuoZhouQu ', null, '4', '236001', '颍州区');
INSERT INTO `area_tb` VALUES ('341203', null, null, null, '1', null, null, null, '341200', null, 'ydq', 'ZuoDongQu ', null, '4', '236058', '颍东区');
INSERT INTO `area_tb` VALUES ('341204', null, null, null, '1', null, null, null, '341200', null, 'yqq', 'ZuoQuanQu ', null, '4', '236045', '颍泉区');
INSERT INTO `area_tb` VALUES ('341221', null, null, null, '1', null, null, null, '341200', null, 'lqx', 'LinQuanXian   ', null, '4', '236400', '临泉县');
INSERT INTO `area_tb` VALUES ('341222', null, null, null, '1', null, null, null, '341200', null, 'thx', 'TaiHeXian ', null, '4', '236600', '太和县');
INSERT INTO `area_tb` VALUES ('341225', null, null, null, '1', null, null, null, '341200', null, 'fnx', 'FuNanXian ', null, '4', '236300', '阜南县');
INSERT INTO `area_tb` VALUES ('341226', null, null, null, '1', null, null, null, '341200', null, 'ysx', 'ZuoShangXian  ', null, '4', '236200', '颍上县');
INSERT INTO `area_tb` VALUES ('341282', null, null, null, '1', null, null, null, '341200', null, 'jss', 'JieShouShi', null, '4', '236500', '界首市');
INSERT INTO `area_tb` VALUES ('341283', null, null, null, '1', null, null, null, '341200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341300', null, null, null, '1', null, null, null, '340000', null, 'szs', 'SuZhouShi ', null, '3', '234000', '宿州市');
INSERT INTO `area_tb` VALUES ('341302', null, null, null, '1', null, null, null, '341300', null, 'yqq', 'QiaoQu', null, '4', '234000', '埇桥区');
INSERT INTO `area_tb` VALUES ('341321', null, null, null, '1', null, null, null, '341300', null, 'dsx', 'ZuoShanXian   ', null, '4', '235300', '砀山县');
INSERT INTO `area_tb` VALUES ('341322', null, null, null, '1', null, null, null, '341300', null, 'xx', 'XiaoXian  ', null, '4', '235200', '萧县');
INSERT INTO `area_tb` VALUES ('341323', null, null, null, '1', null, null, null, '341300', null, 'lbx', 'LingZuoXian   ', null, '4', '234200', '灵璧县');
INSERT INTO `area_tb` VALUES ('341324', null, null, null, '1', null, null, null, '341300', null, 'sx', 'ZuoXian   ', null, '4', '234300', '泗县');
INSERT INTO `area_tb` VALUES ('341325', null, null, null, '1', null, null, null, '341300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341400', null, null, null, '1', null, null, null, '340000', null, 'chs', 'ChaoHuShi ', null, '3', '238000', '巢湖市');
INSERT INTO `area_tb` VALUES ('341402', null, null, null, '1', null, null, null, '341400', null, 'jcq', 'JuChaoQu  ', null, '4', '238000', '居巢区');
INSERT INTO `area_tb` VALUES ('341421', null, null, null, '1', null, null, null, '341400', null, 'ljx', 'LuJiangXian   ', null, '4', '231500', '庐江县');
INSERT INTO `area_tb` VALUES ('341422', null, null, null, '1', null, null, null, '341400', null, 'wwx', 'WuWeiXian ', null, '4', '238300', '无为县');
INSERT INTO `area_tb` VALUES ('341423', null, null, null, '1', null, null, null, '341400', null, 'hsx', 'HanShanXian   ', null, '4', '238100', '含山县');
INSERT INTO `area_tb` VALUES ('341424', null, null, null, '1', null, null, null, '341400', null, 'hx', 'HeXian', null, '4', '238200', '和县');
INSERT INTO `area_tb` VALUES ('341425', null, null, null, '1', null, null, null, '341400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341500', null, null, null, '1', null, null, null, '340000', null, 'las', 'LiuAnShi  ', null, '3', '237000', '六安市');
INSERT INTO `area_tb` VALUES ('341502', null, null, null, '1', null, null, null, '341500', null, 'jaq', 'JinAnQu   ', null, '4', '237005', '金安区');
INSERT INTO `area_tb` VALUES ('341503', null, null, null, '1', null, null, null, '341500', null, 'yaq', 'YuAnQu', null, '4', '237010', '裕安区');
INSERT INTO `area_tb` VALUES ('341521', null, null, null, '1', null, null, null, '341500', null, 'sx', 'ShouXian  ', null, '4', '232200', '寿县');
INSERT INTO `area_tb` VALUES ('341522', null, null, null, '1', null, null, null, '341500', null, 'hqx', 'HuoQiuXian', null, '4', '237400', '霍邱县');
INSERT INTO `area_tb` VALUES ('341523', null, null, null, '1', null, null, null, '341500', null, 'scx', 'ShuChengXian  ', null, '4', '231300', '舒城县');
INSERT INTO `area_tb` VALUES ('341524', null, null, null, '1', null, null, null, '341500', null, 'jzx', 'JinZhaiXian   ', null, '4', '237300', '金寨县');
INSERT INTO `area_tb` VALUES ('341525', null, null, null, '1', null, null, null, '341500', null, 'hsx', 'HuoShanXian   ', null, '4', '237200', '霍山县');
INSERT INTO `area_tb` VALUES ('341526', null, null, null, '1', null, null, null, '341500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341600', null, null, null, '1', null, null, null, '340000', null, 'bzs', 'ZuoZhouShi', null, '3', '236800', '亳州市');
INSERT INTO `area_tb` VALUES ('341602', null, null, null, '1', null, null, null, '341600', null, 'qcq', 'ZuoChengQu', null, '4', '236800', '谯城区');
INSERT INTO `area_tb` VALUES ('341621', null, null, null, '1', null, null, null, '341600', null, 'wyx', 'WoYangXian', null, '4', '233600', '涡阳县');
INSERT INTO `area_tb` VALUES ('341622', null, null, null, '1', null, null, null, '341600', null, 'mcx', 'MengChengXian ', null, '4', '233500', '蒙城县');
INSERT INTO `area_tb` VALUES ('341623', null, null, null, '1', null, null, null, '341600', null, 'lxx', 'LiXinXian ', null, '4', '236700', '利辛县');
INSERT INTO `area_tb` VALUES ('341624', null, null, null, '1', null, null, null, '341600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341700', null, null, null, '1', null, null, null, '340000', null, 'czs', 'ChiZhouShi', null, '3', '247000', '池州市');
INSERT INTO `area_tb` VALUES ('341702', null, null, null, '1', null, null, null, '341700', null, 'gcq', 'GuiChiQu  ', null, '4', '247100', '贵池区');
INSERT INTO `area_tb` VALUES ('341721', null, null, null, '1', null, null, null, '341700', null, 'dzx', 'DongZhiXian   ', null, '4', '247200', '东至县');
INSERT INTO `area_tb` VALUES ('341722', null, null, null, '1', null, null, null, '341700', null, 'stx', 'ShiTaiXian', null, '4', '245100', '石台县');
INSERT INTO `area_tb` VALUES ('341723', null, null, null, '1', null, null, null, '341700', null, 'qyx', 'QingYangXian  ', null, '4', '242800', '青阳县');
INSERT INTO `area_tb` VALUES ('341724', null, null, null, '1', null, null, null, '341700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('341800', null, null, null, '1', null, null, null, '340000', null, 'xcs', 'XuanChengShi  ', null, '3', '242000', '宣城市');
INSERT INTO `area_tb` VALUES ('341802', null, null, null, '1', null, null, null, '341800', null, 'xzq', 'XuanZhouQu', null, '4', '242000', '宣州区');
INSERT INTO `area_tb` VALUES ('341821', null, null, null, '1', null, null, null, '341800', null, 'lxx', 'LangXiXian', null, '4', '242100', '郎溪县');
INSERT INTO `area_tb` VALUES ('341822', null, null, null, '1', null, null, null, '341800', null, 'gdx', 'GuangDeXian   ', null, '4', '242200', '广德县');
INSERT INTO `area_tb` VALUES ('341823', null, null, null, '1', null, null, null, '341800', null, 'jx', 'ZuoXian   ', null, '4', '242500', '泾县');
INSERT INTO `area_tb` VALUES ('341824', null, null, null, '1', null, null, null, '341800', null, 'jxx', 'JiXiXian  ', null, '4', '245300', '绩溪县');
INSERT INTO `area_tb` VALUES ('341825', null, null, null, '1', null, null, null, '341800', null, 'jdx', 'ZuoDeXian ', null, '4', '242600', '旌德县');
INSERT INTO `area_tb` VALUES ('341881', null, null, null, '1', null, null, null, '341800', null, 'ngs', 'NingGuoShi', null, '4', '242300', '宁国市');
INSERT INTO `area_tb` VALUES ('341882', null, null, null, '1', null, null, null, '341800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350000', null, null, null, '1', null, null, null, '1', null, 'fjs', 'FuJianSheng   ', null, '2', '', '福建省');
INSERT INTO `area_tb` VALUES ('350100', null, null, null, '1', null, null, null, '350000', null, 'fzs', 'FuZhouShi ', null, '3', '350000', '福州市');
INSERT INTO `area_tb` VALUES ('350102', null, null, null, '1', null, null, null, '350100', null, 'glq', 'GuLouQu   ', null, '4', '350001', '鼓楼区');
INSERT INTO `area_tb` VALUES ('350103', null, null, null, '1', null, null, null, '350100', null, 'tjq', 'TaiJiangQu', null, '4', '350004', '台江区');
INSERT INTO `area_tb` VALUES ('350104', null, null, null, '1', null, null, null, '350100', null, 'csq', 'CangShanQu', null, '4', '350007', '仓山区');
INSERT INTO `area_tb` VALUES ('350105', null, null, null, '1', null, null, null, '350100', null, 'mwq', 'MaWeiQu   ', null, '4', '350015', '马尾区');
INSERT INTO `area_tb` VALUES ('350111', null, null, null, '1', null, null, null, '350100', null, 'jaq', 'JinAnQu   ', null, '4', '350011', '晋安区');
INSERT INTO `area_tb` VALUES ('350121', null, null, null, '1', null, null, null, '350100', null, 'mhx', 'MinHouXian', null, '4', '350100', '闽侯县');
INSERT INTO `area_tb` VALUES ('350122', null, null, null, '1', null, null, null, '350100', null, 'ljx', 'LianJiangXian ', null, '4', '350500', '连江县');
INSERT INTO `area_tb` VALUES ('350123', null, null, null, '1', null, null, null, '350100', null, 'lyx', 'LuoYuanXian   ', null, '4', '350600', '罗源县');
INSERT INTO `area_tb` VALUES ('350124', null, null, null, '1', null, null, null, '350100', null, 'mqx', 'MinQingXian   ', null, '4', '350800', '闽清县');
INSERT INTO `area_tb` VALUES ('350125', null, null, null, '1', null, null, null, '350100', null, 'ytx', 'YongTaiXian   ', null, '4', '350700', '永泰县');
INSERT INTO `area_tb` VALUES ('350128', null, null, null, '1', null, null, null, '350100', null, 'ptx', 'PingTanXian   ', null, '4', '350400', '平潭县');
INSERT INTO `area_tb` VALUES ('350181', null, null, null, '1', null, null, null, '350100', null, 'fqs', 'FuQingShi ', null, '4', '350300', '福清市');
INSERT INTO `area_tb` VALUES ('350182', null, null, null, '1', null, null, null, '350100', null, 'cls', 'ChangLeShi', null, '4', '350200', '长乐市');
INSERT INTO `area_tb` VALUES ('350183', null, null, null, '1', null, null, null, '350100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350200', null, null, null, '1', null, null, null, '350000', null, 'xms', 'XiaMenShi ', null, '3', '361000', '厦门市');
INSERT INTO `area_tb` VALUES ('350203', null, null, null, '1', null, null, null, '350200', null, 'smq', 'SiMingQu  ', null, '4', '361001', '思明区');
INSERT INTO `area_tb` VALUES ('350205', null, null, null, '1', null, null, null, '350200', null, 'hcq', 'HaiCangQu ', null, '4', '361026', '海沧区');
INSERT INTO `area_tb` VALUES ('350206', null, null, null, '1', null, null, null, '350200', null, 'hlq', 'HuLiQu', null, '4', '361006', '湖里区');
INSERT INTO `area_tb` VALUES ('350211', null, null, null, '1', null, null, null, '350200', null, 'jmq', 'JiMeiQu   ', null, '4', '361021', '集美区');
INSERT INTO `area_tb` VALUES ('350212', null, null, null, '1', null, null, null, '350200', null, 'taq', 'TongAnQu  ', null, '4', '361100', '同安区');
INSERT INTO `area_tb` VALUES ('350213', null, null, null, '1', null, null, null, '350200', null, 'xaq', 'XiangAnQu ', null, '4', '361101', '翔安区');
INSERT INTO `area_tb` VALUES ('350214', null, null, null, '1', null, null, null, '350200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350300', null, null, null, '1', null, null, null, '350000', null, 'pts', 'PuTianShi ', null, '3', '351100', '莆田市');
INSERT INTO `area_tb` VALUES ('350302', null, null, null, '1', null, null, null, '350300', null, 'cxq', 'ChengXiangQu  ', null, '4', '351100', '城厢区');
INSERT INTO `area_tb` VALUES ('350303', null, null, null, '1', null, null, null, '350300', null, 'hjq', 'HanJiangQu', null, '4', '351111', '涵江区');
INSERT INTO `area_tb` VALUES ('350304', null, null, null, '1', null, null, null, '350300', null, 'lcq', 'LiChengQu ', null, '4', '351100', '荔城区');
INSERT INTO `area_tb` VALUES ('350305', null, null, null, '1', null, null, null, '350300', null, 'xyq', 'XiuYuQu   ', null, '4', '351152', '秀屿区');
INSERT INTO `area_tb` VALUES ('350322', null, null, null, '1', null, null, null, '350300', null, 'xyx', 'XianYouXian   ', null, '4', '351200', '仙游县');
INSERT INTO `area_tb` VALUES ('350323', null, null, null, '1', null, null, null, '350300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350400', null, null, null, '1', null, null, null, '350000', null, 'sms', 'SanMingShi', null, '3', '365000', '三明市');
INSERT INTO `area_tb` VALUES ('350402', null, null, null, '1', null, null, null, '350400', null, 'mlq', 'MeiLieQu  ', null, '4', '365000', '梅列区');
INSERT INTO `area_tb` VALUES ('350403', null, null, null, '1', null, null, null, '350400', null, 'syq', 'SanYuanQu ', null, '4', '365001', '三元区');
INSERT INTO `area_tb` VALUES ('350421', null, null, null, '1', null, null, null, '350400', null, 'mxx', 'MingXiXian', null, '4', '365200', '明溪县');
INSERT INTO `area_tb` VALUES ('350423', null, null, null, '1', null, null, null, '350400', null, 'qlx', 'QingLiuXian   ', null, '4', '365300', '清流县');
INSERT INTO `area_tb` VALUES ('350424', null, null, null, '1', null, null, null, '350400', null, 'nhx', 'NingHuaXian   ', null, '4', '365400', '宁化县');
INSERT INTO `area_tb` VALUES ('350425', null, null, null, '1', null, null, null, '350400', null, 'dtx', 'DaTianXian', null, '4', '366100', '大田县');
INSERT INTO `area_tb` VALUES ('350426', null, null, null, '1', null, null, null, '350400', null, 'yxx', 'YouXiXian ', null, '4', '365100', '尤溪县');
INSERT INTO `area_tb` VALUES ('350427', null, null, null, '1', null, null, null, '350400', null, 'sx', 'ShaXian   ', null, '4', '365500', '沙县');
INSERT INTO `area_tb` VALUES ('350428', null, null, null, '1', null, null, null, '350400', null, 'jlx', 'JiangLeXian   ', null, '4', '353300', '将乐县');
INSERT INTO `area_tb` VALUES ('350429', null, null, null, '1', null, null, null, '350400', null, 'tnx', 'TaiNingXian   ', null, '4', '354400', '泰宁县');
INSERT INTO `area_tb` VALUES ('350430', null, null, null, '1', null, null, null, '350400', null, 'jnx', 'JianNingXian  ', null, '4', '354500', '建宁县');
INSERT INTO `area_tb` VALUES ('350481', null, null, null, '1', null, null, null, '350400', null, 'yas', 'YongAnShi ', null, '4', '366000', '永安市');
INSERT INTO `area_tb` VALUES ('350482', null, null, null, '1', null, null, null, '350400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350500', null, null, null, '1', null, null, null, '350000', null, 'qzs', 'QuanZhouShi   ', null, '3', '362000', '泉州市');
INSERT INTO `area_tb` VALUES ('350502', null, null, null, '1', null, null, null, '350500', null, 'lcq', 'LiChengQu ', null, '4', '362000', '鲤城区');
INSERT INTO `area_tb` VALUES ('350503', null, null, null, '1', null, null, null, '350500', null, 'fzq', 'FengZeQu  ', null, '4', '362000', '丰泽区');
INSERT INTO `area_tb` VALUES ('350504', null, null, null, '1', null, null, null, '350500', null, 'ljq', 'LuoJiangQu', null, '4', '362011', '洛江区');
INSERT INTO `area_tb` VALUES ('350505', null, null, null, '1', null, null, null, '350500', null, 'qgq', 'QuanGangQu', null, '4', '362801', '泉港区');
INSERT INTO `area_tb` VALUES ('350521', null, null, null, '1', null, null, null, '350500', null, 'hax', 'HuiAnXian ', null, '4', '362100', '惠安县');
INSERT INTO `area_tb` VALUES ('350524', null, null, null, '1', null, null, null, '350500', null, 'axx', 'AnXiXian  ', null, '4', '362400', '安溪县');
INSERT INTO `area_tb` VALUES ('350525', null, null, null, '1', null, null, null, '350500', null, 'ycx', 'YongChunXian  ', null, '4', '362600', '永春县');
INSERT INTO `area_tb` VALUES ('350526', null, null, null, '1', null, null, null, '350500', null, 'dhx', 'DeHuaXian ', null, '4', '362500', '德化县');
INSERT INTO `area_tb` VALUES ('350527', null, null, null, '1', null, null, null, '350500', null, 'jmx', 'JinMenXian', null, '4', '362000', '金门县');
INSERT INTO `area_tb` VALUES ('350581', null, null, null, '1', null, null, null, '350500', null, 'sss', 'ShiShiShi ', null, '4', '362700', '石狮市');
INSERT INTO `area_tb` VALUES ('350582', null, null, null, '1', null, null, null, '350500', null, 'jjs', 'JinJiangShi   ', null, '4', '362200', '晋江市');
INSERT INTO `area_tb` VALUES ('350583', null, null, null, '1', null, null, null, '350500', null, 'nas', 'NanAnShi  ', null, '4', '362300', '南安市');
INSERT INTO `area_tb` VALUES ('350584', null, null, null, '1', null, null, null, '350500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350600', null, null, null, '1', null, null, null, '350000', null, 'zzs', 'ZhangZhouShi  ', null, '3', '363000', '漳州市');
INSERT INTO `area_tb` VALUES ('350602', null, null, null, '1', null, null, null, '350600', null, 'xcq', 'ZuoChengQu', null, '4', '363000', '芗城区');
INSERT INTO `area_tb` VALUES ('350603', null, null, null, '1', null, null, null, '350600', null, 'lwq', 'LongWenQu ', null, '4', '363005', '龙文区');
INSERT INTO `area_tb` VALUES ('350622', null, null, null, '1', null, null, null, '350600', null, 'yxx', 'YunXiaoXian   ', null, '4', '363300', '云霄县');
INSERT INTO `area_tb` VALUES ('350623', null, null, null, '1', null, null, null, '350600', null, 'zpx', 'ZhangPuXian   ', null, '4', '363200', '漳浦县');
INSERT INTO `area_tb` VALUES ('350624', null, null, null, '1', null, null, null, '350600', null, 'zax', 'ZuoAnXian ', null, '4', '363500', '诏安县');
INSERT INTO `area_tb` VALUES ('350625', null, null, null, '1', null, null, null, '350600', null, 'ctx', 'ChangTaiXian  ', null, '4', '363900', '长泰县');
INSERT INTO `area_tb` VALUES ('350626', null, null, null, '1', null, null, null, '350600', null, 'dsx', 'DongShanXian  ', null, '4', '363400', '东山县');
INSERT INTO `area_tb` VALUES ('350627', null, null, null, '1', null, null, null, '350600', null, 'njx', 'NanJingXian   ', null, '4', '363600', '南靖县');
INSERT INTO `area_tb` VALUES ('350628', null, null, null, '1', null, null, null, '350600', null, 'phx', 'PingHeXian', null, '4', '363700', '平和县');
INSERT INTO `area_tb` VALUES ('350629', null, null, null, '1', null, null, null, '350600', null, 'hax', 'HuaAnXian ', null, '4', '363800', '华安县');
INSERT INTO `area_tb` VALUES ('350681', null, null, null, '1', null, null, null, '350600', null, 'lhs', 'LongHaiShi', null, '4', '363100', '龙海市');
INSERT INTO `area_tb` VALUES ('350682', null, null, null, '1', null, null, null, '350600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350700', null, null, null, '1', null, null, null, '350000', null, 'nps', 'NanPingShi', null, '3', '353000', '南平市');
INSERT INTO `area_tb` VALUES ('350702', null, null, null, '1', null, null, null, '350700', null, 'ypq', 'YanPingQu ', null, '4', '353000', '延平区');
INSERT INTO `area_tb` VALUES ('350721', null, null, null, '1', null, null, null, '350700', null, 'scx', 'ShunChangXian ', null, '4', '353200', '顺昌县');
INSERT INTO `area_tb` VALUES ('350722', null, null, null, '1', null, null, null, '350700', null, 'pcx', 'PuChengXian   ', null, '4', '353400', '浦城县');
INSERT INTO `area_tb` VALUES ('350723', null, null, null, '1', null, null, null, '350700', null, 'gzx', 'GuangZeXian   ', null, '4', '354100', '光泽县');
INSERT INTO `area_tb` VALUES ('350724', null, null, null, '1', null, null, null, '350700', null, 'sxx', 'SongXiXian', null, '4', '353500', '松溪县');
INSERT INTO `area_tb` VALUES ('350725', null, null, null, '1', null, null, null, '350700', null, 'zhx', 'ZhengHeXian   ', null, '4', '353600', '政和县');
INSERT INTO `area_tb` VALUES ('350781', null, null, null, '1', null, null, null, '350700', null, 'sws', 'ShaoWuShi ', null, '4', '354000', '邵武市');
INSERT INTO `area_tb` VALUES ('350782', null, null, null, '1', null, null, null, '350700', null, 'wyss', 'WuYiShanShi   ', null, '4', '354300', '武夷山市');
INSERT INTO `area_tb` VALUES ('350783', null, null, null, '1', null, null, null, '350700', null, 'jos', 'JianZuoShi', null, '4', '353100', '建瓯市');
INSERT INTO `area_tb` VALUES ('350784', null, null, null, '1', null, null, null, '350700', null, 'jys', 'JianYangShi   ', null, '4', '354200', '建阳市');
INSERT INTO `area_tb` VALUES ('350785', null, null, null, '1', null, null, null, '350700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350800', null, null, null, '1', null, null, null, '350000', null, 'lys', 'LongYanShi', null, '3', '364000', '龙岩市');
INSERT INTO `area_tb` VALUES ('350802', null, null, null, '1', null, null, null, '350800', null, 'xlq', 'XinLuoQu  ', null, '4', '364000', '新罗区');
INSERT INTO `area_tb` VALUES ('350821', null, null, null, '1', null, null, null, '350800', null, 'ctx', 'ChangTingXian ', null, '4', '366300', '长汀县');
INSERT INTO `area_tb` VALUES ('350822', null, null, null, '1', null, null, null, '350800', null, 'ydx', 'YongDingXian  ', null, '4', '364100', '永定县');
INSERT INTO `area_tb` VALUES ('350823', null, null, null, '1', null, null, null, '350800', null, 'shx', 'ShangHangXian ', null, '4', '364200', '上杭县');
INSERT INTO `area_tb` VALUES ('350824', null, null, null, '1', null, null, null, '350800', null, 'wpx', 'WuPingXian', null, '4', '364300', '武平县');
INSERT INTO `area_tb` VALUES ('350825', null, null, null, '1', null, null, null, '350800', null, 'lcx', 'LianChengXian ', null, '4', '366200', '连城县');
INSERT INTO `area_tb` VALUES ('350881', null, null, null, '1', null, null, null, '350800', null, 'zps', 'ZhangPingShi  ', null, '4', '364400', '漳平市');
INSERT INTO `area_tb` VALUES ('350882', null, null, null, '1', null, null, null, '350800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('350900', null, null, null, '1', null, null, null, '350000', null, 'nds', 'NingDeShi ', null, '3', '352100', '宁德市');
INSERT INTO `area_tb` VALUES ('350902', null, null, null, '1', null, null, null, '350900', null, 'jcq', 'JiaoChengQu   ', null, '4', '352100', '蕉城区');
INSERT INTO `area_tb` VALUES ('350921', null, null, null, '1', null, null, null, '350900', null, 'xpx', 'XiaPuXian ', null, '4', '355100', '霞浦县');
INSERT INTO `area_tb` VALUES ('350922', null, null, null, '1', null, null, null, '350900', null, 'gtx', 'GuTianXian', null, '4', '352200', '古田县');
INSERT INTO `area_tb` VALUES ('350923', null, null, null, '1', null, null, null, '350900', null, 'pnx', 'PingNanXian   ', null, '4', '352300', '屏南县');
INSERT INTO `area_tb` VALUES ('350924', null, null, null, '1', null, null, null, '350900', null, 'snx', 'ShouNingXian  ', null, '4', '355500', '寿宁县');
INSERT INTO `area_tb` VALUES ('350925', null, null, null, '1', null, null, null, '350900', null, 'znx', 'ZhouNingXian  ', null, '4', '355400', '周宁县');
INSERT INTO `area_tb` VALUES ('350926', null, null, null, '1', null, null, null, '350900', null, 'zrx', 'ZuoRongXian   ', null, '4', '355300', '柘荣县');
INSERT INTO `area_tb` VALUES ('350981', null, null, null, '1', null, null, null, '350900', null, 'fas', 'FuAnShi   ', null, '4', '355000', '福安市');
INSERT INTO `area_tb` VALUES ('350982', null, null, null, '1', null, null, null, '350900', null, 'fds', 'FuDingShi ', null, '4', '355200', '福鼎市');
INSERT INTO `area_tb` VALUES ('350983', null, null, null, '1', null, null, null, '350900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360000', null, null, null, '1', null, null, null, '1', null, 'jxs', 'JiangXiSheng  ', null, '2', '', '江西省');
INSERT INTO `area_tb` VALUES ('360100', null, null, null, '1', null, null, null, '360000', null, 'ncs', 'NanChangShi   ', null, '3', '330000', '南昌市');
INSERT INTO `area_tb` VALUES ('360102', null, null, null, '1', null, null, null, '360100', null, 'dhq', 'DongHuQu  ', null, '4', '330006', '东湖区');
INSERT INTO `area_tb` VALUES ('360103', null, null, null, '1', null, null, null, '360100', null, 'xhq', 'XiHuQu', null, '4', '330009', '西湖区');
INSERT INTO `area_tb` VALUES ('360104', null, null, null, '1', null, null, null, '360100', null, 'qypq', 'QingYunPuQu   ', null, '4', '330001', '青云谱区');
INSERT INTO `area_tb` VALUES ('360105', null, null, null, '1', null, null, null, '360100', null, 'wlq', 'WanLiQu   ', null, '4', '330004', '湾里区');
INSERT INTO `area_tb` VALUES ('360111', null, null, null, '1', null, null, null, '360100', null, 'qshq', 'QingShanHuQu  ', null, '4', '330006', '青山湖区');
INSERT INTO `area_tb` VALUES ('360121', null, null, null, '1', null, null, null, '360100', null, 'ncx', 'NanChangXian  ', null, '4', '330200', '南昌县');
INSERT INTO `area_tb` VALUES ('360122', null, null, null, '1', null, null, null, '360100', null, 'xjx', 'XinJianXian   ', null, '4', '330100', '新建县');
INSERT INTO `area_tb` VALUES ('360123', null, null, null, '1', null, null, null, '360100', null, 'ayx', 'AnYiXian  ', null, '4', '330500', '安义县');
INSERT INTO `area_tb` VALUES ('360124', null, null, null, '1', null, null, null, '360100', null, 'jxx', 'JinXianXian   ', null, '4', '331700', '进贤县');
INSERT INTO `area_tb` VALUES ('360125', null, null, null, '1', null, null, null, '360100', null, 'hgtxq', 'HongGuTanXinQu', null, '4', '', '红谷滩新区');
INSERT INTO `area_tb` VALUES ('360126', null, null, null, '1', null, null, null, '360100', null, 'jjjskfq', 'JingJiJiShuKaiFaQu', null, '4', '', '经济技术开发区');
INSERT INTO `area_tb` VALUES ('360127', null, null, null, '1', null, null, null, '360100', null, 'cbq', 'ChangBeiQu', null, '4', '', '昌北区');
INSERT INTO `area_tb` VALUES ('360128', null, null, null, '1', null, null, null, '360100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360200', null, null, null, '1', null, null, null, '360000', null, 'jdzs', 'JingDeZhenShi ', null, '3', '333000', '景德镇市');
INSERT INTO `area_tb` VALUES ('360202', null, null, null, '1', null, null, null, '360200', null, 'cjq', 'ChangJiangQu  ', null, '4', '333000', '昌江区');
INSERT INTO `area_tb` VALUES ('360203', null, null, null, '1', null, null, null, '360200', null, 'zsq', 'ZhuShanQu ', null, '4', '333000', '珠山区');
INSERT INTO `area_tb` VALUES ('360222', null, null, null, '1', null, null, null, '360200', null, 'flx', 'FuLiangXian   ', null, '4', '333400', '浮梁县');
INSERT INTO `area_tb` VALUES ('360281', null, null, null, '1', null, null, null, '360200', null, 'lps', 'LePingShi ', null, '4', '333300', '乐平市');
INSERT INTO `area_tb` VALUES ('360282', null, null, null, '1', null, null, null, '360200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360300', null, null, null, '1', null, null, null, '360000', null, 'pxs', 'PingXiangShi  ', null, '3', '337000', '萍乡市');
INSERT INTO `area_tb` VALUES ('360302', null, null, null, '1', null, null, null, '360300', null, 'ayq', 'AnYuanQu  ', null, '4', '337000', '安源区');
INSERT INTO `area_tb` VALUES ('360313', null, null, null, '1', null, null, null, '360300', null, 'xdq', 'XiangDongQu   ', null, '4', '337032', '湘东区');
INSERT INTO `area_tb` VALUES ('360321', null, null, null, '1', null, null, null, '360300', null, 'lhx', 'LianHuaXian   ', null, '4', '337100', '莲花县');
INSERT INTO `area_tb` VALUES ('360322', null, null, null, '1', null, null, null, '360300', null, 'slx', 'ShangLiXian   ', null, '4', '337009', '上栗县');
INSERT INTO `area_tb` VALUES ('360323', null, null, null, '1', null, null, null, '360300', null, 'lxx', 'LuXiXian  ', null, '4', '337200', '芦溪县');
INSERT INTO `area_tb` VALUES ('360324', null, null, null, '1', null, null, null, '360300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360400', null, null, null, '1', null, null, null, '360000', null, 'jjs', 'JiuJiangShi   ', null, '3', '332000', '九江市');
INSERT INTO `area_tb` VALUES ('360402', null, null, null, '1', null, null, null, '360400', null, 'lsq', 'LuShanQu  ', null, '4', '332005', '庐山区');
INSERT INTO `area_tb` VALUES ('360403', null, null, null, '1', null, null, null, '360400', null, 'xyq', 'ZuoYangQu ', null, '4', '332000', '浔阳区');
INSERT INTO `area_tb` VALUES ('360421', null, null, null, '1', null, null, null, '360400', null, 'jjx', 'JiuJiangXian  ', null, '4', '332100', '九江县');
INSERT INTO `area_tb` VALUES ('360423', null, null, null, '1', null, null, null, '360400', null, 'wnx', 'WuNingXian', null, '4', '332300', '武宁县');
INSERT INTO `area_tb` VALUES ('360424', null, null, null, '1', null, null, null, '360400', null, 'xsx', 'XiuShuiXian   ', null, '4', '332400', '修水县');
INSERT INTO `area_tb` VALUES ('360425', null, null, null, '1', null, null, null, '360400', null, 'yxx', 'YongXiuXian   ', null, '4', '330300', '永修县');
INSERT INTO `area_tb` VALUES ('360426', null, null, null, '1', null, null, null, '360400', null, 'dax', 'DeAnXian  ', null, '4', '330400', '德安县');
INSERT INTO `area_tb` VALUES ('360427', null, null, null, '1', null, null, null, '360400', null, 'xzx', 'XingZiXian', null, '4', '332800', '星子县');
INSERT INTO `area_tb` VALUES ('360428', null, null, null, '1', null, null, null, '360400', null, 'dcx', 'DuChangXian   ', null, '4', '332600', '都昌县');
INSERT INTO `area_tb` VALUES ('360429', null, null, null, '1', null, null, null, '360400', null, 'hkx', 'HuKouXian ', null, '4', '332500', '湖口县');
INSERT INTO `area_tb` VALUES ('360430', null, null, null, '1', null, null, null, '360400', null, 'pzx', 'PengZeXian', null, '4', '332700', '彭泽县');
INSERT INTO `area_tb` VALUES ('360481', null, null, null, '1', null, null, null, '360400', null, 'rcs', 'RuiChangShi   ', null, '4', '332200', '瑞昌市');
INSERT INTO `area_tb` VALUES ('360482', null, null, null, '1', null, null, null, '360400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360500', null, null, null, '1', null, null, null, '360000', null, 'xys', 'XinYuShi  ', null, '3', '338000', '新余市');
INSERT INTO `area_tb` VALUES ('360502', null, null, null, '1', null, null, null, '360500', null, 'ysq', 'YuShuiQu  ', null, '4', '338025', '渝水区');
INSERT INTO `area_tb` VALUES ('360521', null, null, null, '1', null, null, null, '360500', null, 'fyx', 'FenYiXian ', null, '4', '336600', '分宜县');
INSERT INTO `area_tb` VALUES ('360522', null, null, null, '1', null, null, null, '360500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360600', null, null, null, '1', null, null, null, '360000', null, 'yts', 'YingTanShi', null, '3', '335000', '鹰潭市');
INSERT INTO `area_tb` VALUES ('360602', null, null, null, '1', null, null, null, '360600', null, 'yhq', 'YueHuQu   ', null, '4', '335000', '月湖区');
INSERT INTO `area_tb` VALUES ('360622', null, null, null, '1', null, null, null, '360600', null, 'yjx', 'YuJiangXian   ', null, '4', '335200', '余江县');
INSERT INTO `area_tb` VALUES ('360681', null, null, null, '1', null, null, null, '360600', null, 'gxs', 'GuiXiShi  ', null, '4', '335400', '贵溪市');
INSERT INTO `area_tb` VALUES ('360682', null, null, null, '1', null, null, null, '360600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360700', null, null, null, '1', null, null, null, '360000', null, 'gzs', 'GanZhouShi', null, '3', '341000', '赣州市');
INSERT INTO `area_tb` VALUES ('360702', null, null, null, '1', null, null, null, '360700', null, 'zgq', 'ZhangGongQu   ', null, '4', '', '章贡区');
INSERT INTO `area_tb` VALUES ('360721', null, null, null, '1', null, null, null, '360700', null, 'gx', 'GanXian   ', null, '4', '341100', '赣县');
INSERT INTO `area_tb` VALUES ('360722', null, null, null, '1', null, null, null, '360700', null, 'xfx', 'XinFengXian   ', null, '4', '341600', '信丰县');
INSERT INTO `area_tb` VALUES ('360723', null, null, null, '1', null, null, null, '360700', null, 'dyx', 'DaYuXian  ', null, '4', '341500', '大余县');
INSERT INTO `area_tb` VALUES ('360724', null, null, null, '1', null, null, null, '360700', null, 'syx', 'ShangYouXian  ', null, '4', '341200', '上犹县');
INSERT INTO `area_tb` VALUES ('360725', null, null, null, '1', null, null, null, '360700', null, 'cyx', 'ChongYiXian   ', null, '4', '341300', '崇义县');
INSERT INTO `area_tb` VALUES ('360726', null, null, null, '1', null, null, null, '360700', null, 'ayx', 'AnYuanXian', null, '4', '342100', '安远县');
INSERT INTO `area_tb` VALUES ('360727', null, null, null, '1', null, null, null, '360700', null, 'lnx', 'LongNanXian   ', null, '4', '341700', '龙南县');
INSERT INTO `area_tb` VALUES ('360728', null, null, null, '1', null, null, null, '360700', null, 'dnx', 'DingNanXian   ', null, '4', '341900', '定南县');
INSERT INTO `area_tb` VALUES ('360729', null, null, null, '1', null, null, null, '360700', null, 'qnx', 'QuanNanXian   ', null, '4', '341800', '全南县');
INSERT INTO `area_tb` VALUES ('360730', null, null, null, '1', null, null, null, '360700', null, 'ndx', 'NingDuXian', null, '4', '342800', '宁都县');
INSERT INTO `area_tb` VALUES ('360731', null, null, null, '1', null, null, null, '360700', null, 'ydx', 'YuDuXian  ', null, '4', '342300', '于都县');
INSERT INTO `area_tb` VALUES ('360732', null, null, null, '1', null, null, null, '360700', null, 'xgx', 'XingGuoXian   ', null, '4', '342400', '兴国县');
INSERT INTO `area_tb` VALUES ('360733', null, null, null, '1', null, null, null, '360700', null, 'hcx', 'HuiChangXian  ', null, '4', '342600', '会昌县');
INSERT INTO `area_tb` VALUES ('360734', null, null, null, '1', null, null, null, '360700', null, 'xwx', 'XunWuXian ', null, '4', '342200', '寻乌县');
INSERT INTO `area_tb` VALUES ('360735', null, null, null, '1', null, null, null, '360700', null, 'scx', 'ShiChengXian  ', null, '4', '342700', '石城县');
INSERT INTO `area_tb` VALUES ('360751', null, null, null, '1', null, null, null, '360700', null, 'hjq', 'HuangJinQu', null, '4', '', '黄金区');
INSERT INTO `area_tb` VALUES ('360781', null, null, null, '1', null, null, null, '360700', null, 'rjs', 'RuiJinShi ', null, '4', '342500', '瑞金市');
INSERT INTO `area_tb` VALUES ('360782', null, null, null, '1', null, null, null, '360700', null, 'nks', 'NanKangShi', null, '4', '341400', '南康市');
INSERT INTO `area_tb` VALUES ('360783', null, null, null, '1', null, null, null, '360700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360800', null, null, null, '1', null, null, null, '360000', null, 'jas', 'JiAnShi   ', null, '3', '343000', '吉安市');
INSERT INTO `area_tb` VALUES ('360802', null, null, null, '1', null, null, null, '360800', null, 'jzq', 'JiZhouQu  ', null, '4', '343000', '吉州区');
INSERT INTO `area_tb` VALUES ('360803', null, null, null, '1', null, null, null, '360800', null, 'qyq', 'QingYuanQu', null, '4', '343009', '青原区');
INSERT INTO `area_tb` VALUES ('360821', null, null, null, '1', null, null, null, '360800', null, 'jax', 'JiAnXian  ', null, '4', '343100', '吉安县');
INSERT INTO `area_tb` VALUES ('360822', null, null, null, '1', null, null, null, '360800', null, 'jsx', 'JiShuiXian', null, '4', '331600', '吉水县');
INSERT INTO `area_tb` VALUES ('360823', null, null, null, '1', null, null, null, '360800', null, 'xjx', 'XiaJiangXian  ', null, '4', '331400', '峡江县');
INSERT INTO `area_tb` VALUES ('360824', null, null, null, '1', null, null, null, '360800', null, 'xgx', 'XinGanXian', null, '4', '331300', '新干县');
INSERT INTO `area_tb` VALUES ('360825', null, null, null, '1', null, null, null, '360800', null, 'yfx', 'YongFengXian  ', null, '4', '331500', '永丰县');
INSERT INTO `area_tb` VALUES ('360826', null, null, null, '1', null, null, null, '360800', null, 'thx', 'TaiHeXian ', null, '4', '343700', '泰和县');
INSERT INTO `area_tb` VALUES ('360827', null, null, null, '1', null, null, null, '360800', null, 'scx', 'SuiChuanXian  ', null, '4', '343900', '遂川县');
INSERT INTO `area_tb` VALUES ('360828', null, null, null, '1', null, null, null, '360800', null, 'wax', 'WanAnXian ', null, '4', '343800', '万安县');
INSERT INTO `area_tb` VALUES ('360829', null, null, null, '1', null, null, null, '360800', null, 'afx', 'AnFuXian  ', null, '4', '343200', '安福县');
INSERT INTO `area_tb` VALUES ('360830', null, null, null, '1', null, null, null, '360800', null, 'yxx', 'YongXinXian   ', null, '4', '343400', '永新县');
INSERT INTO `area_tb` VALUES ('360881', null, null, null, '1', null, null, null, '360800', null, 'jgss', 'JingGangShanShi   ', null, '4', '343600', '井冈山市');
INSERT INTO `area_tb` VALUES ('360882', null, null, null, '1', null, null, null, '360800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('360900', null, null, null, '1', null, null, null, '360000', null, 'ycs', 'YiChunShi ', null, '3', '336000', '宜春市');
INSERT INTO `area_tb` VALUES ('360902', null, null, null, '1', null, null, null, '360900', null, 'yzq', 'YuanZhouQu', null, '4', '336000', '袁州区');
INSERT INTO `area_tb` VALUES ('360921', null, null, null, '1', null, null, null, '360900', null, 'fxx', 'FengXinXian   ', null, '4', '330700', '奉新县');
INSERT INTO `area_tb` VALUES ('360922', null, null, null, '1', null, null, null, '360900', null, 'wzx', 'WanZaiXian', null, '4', '336100', '万载县');
INSERT INTO `area_tb` VALUES ('360923', null, null, null, '1', null, null, null, '360900', null, 'sgx', 'ShangGaoXian  ', null, '4', '336400', '上高县');
INSERT INTO `area_tb` VALUES ('360924', null, null, null, '1', null, null, null, '360900', null, 'yfx', 'YiFengXian', null, '4', '336300', '宜丰县');
INSERT INTO `area_tb` VALUES ('360925', null, null, null, '1', null, null, null, '360900', null, 'jax', 'JingAnXian', null, '4', '330600', '靖安县');
INSERT INTO `area_tb` VALUES ('360926', null, null, null, '1', null, null, null, '360900', null, 'tgx', 'TongGuXian', null, '4', '336200', '铜鼓县');
INSERT INTO `area_tb` VALUES ('360981', null, null, null, '1', null, null, null, '360900', null, 'fcs', 'FengChengShi  ', null, '4', '331100', '丰城市');
INSERT INTO `area_tb` VALUES ('360982', null, null, null, '1', null, null, null, '360900', null, 'zss', 'ZhangShuShi   ', null, '4', '331200', '樟树市');
INSERT INTO `area_tb` VALUES ('360983', null, null, null, '1', null, null, null, '360900', null, 'gas', 'GaoAnShi  ', null, '4', '330800', '高安市');
INSERT INTO `area_tb` VALUES ('360984', null, null, null, '1', null, null, null, '360900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('361000', null, null, null, '1', null, null, null, '360000', null, 'fzs', 'FuZhouShi ', null, '3', '344000', '抚州市');
INSERT INTO `area_tb` VALUES ('361002', null, null, null, '1', null, null, null, '361000', null, 'lcq', 'LinChuanQu', null, '4', '344100', '临川区');
INSERT INTO `area_tb` VALUES ('361021', null, null, null, '1', null, null, null, '361000', null, 'ncx', 'NanChengXian  ', null, '4', '344700', '南城县');
INSERT INTO `area_tb` VALUES ('361022', null, null, null, '1', null, null, null, '361000', null, 'lcx', 'LiChuanXian   ', null, '4', '344600', '黎川县');
INSERT INTO `area_tb` VALUES ('361023', null, null, null, '1', null, null, null, '361000', null, 'nfx', 'NanFengXian   ', null, '4', '344500', '南丰县');
INSERT INTO `area_tb` VALUES ('361024', null, null, null, '1', null, null, null, '361000', null, 'crx', 'ChongRenXian  ', null, '4', '344200', '崇仁县');
INSERT INTO `area_tb` VALUES ('361025', null, null, null, '1', null, null, null, '361000', null, 'lax', 'LeAnXian  ', null, '4', '344300', '乐安县');
INSERT INTO `area_tb` VALUES ('361026', null, null, null, '1', null, null, null, '361000', null, 'yhx', 'YiHuangXian   ', null, '4', '344400', '宜黄县');
INSERT INTO `area_tb` VALUES ('361027', null, null, null, '1', null, null, null, '361000', null, 'jxx', 'JinXiXian ', null, '4', '344800', '金溪县');
INSERT INTO `area_tb` VALUES ('361028', null, null, null, '1', null, null, null, '361000', null, 'zxx', 'ZiXiXian  ', null, '4', '335300', '资溪县');
INSERT INTO `area_tb` VALUES ('361029', null, null, null, '1', null, null, null, '361000', null, 'dxx', 'DongXiangXian ', null, '4', '331800', '东乡县');
INSERT INTO `area_tb` VALUES ('361030', null, null, null, '1', null, null, null, '361000', null, 'gcx', 'GuangChangXian', null, '4', '344900', '广昌县');
INSERT INTO `area_tb` VALUES ('361031', null, null, null, '1', null, null, null, '361000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('361100', null, null, null, '1', null, null, null, '360000', null, 'srs', 'ShangRaoShi   ', null, '3', '334000', '上饶市');
INSERT INTO `area_tb` VALUES ('361102', null, null, null, '1', null, null, null, '361100', null, 'xzq', 'XinZhouQu ', null, '4', '334000', '信州区');
INSERT INTO `area_tb` VALUES ('361121', null, null, null, '1', null, null, null, '361100', null, 'srx', 'ShangRaoXian  ', null, '4', '334100', '上饶县');
INSERT INTO `area_tb` VALUES ('361122', null, null, null, '1', null, null, null, '361100', null, 'gfx', 'GuangFengXian ', null, '4', '334600', '广丰县');
INSERT INTO `area_tb` VALUES ('361123', null, null, null, '1', null, null, null, '361100', null, 'ysx', 'YuShanXian', null, '4', '334700', '玉山县');
INSERT INTO `area_tb` VALUES ('361124', null, null, null, '1', null, null, null, '361100', null, 'qsx', 'QianShanXian  ', null, '4', '334500', '铅山县');
INSERT INTO `area_tb` VALUES ('361125', null, null, null, '1', null, null, null, '361100', null, 'hfx', 'HengFengXian  ', null, '4', '334300', '横峰县');
INSERT INTO `area_tb` VALUES ('361126', null, null, null, '1', null, null, null, '361100', null, 'yyx', 'ZuoYangXian   ', null, '4', '334400', '弋阳县');
INSERT INTO `area_tb` VALUES ('361127', null, null, null, '1', null, null, null, '361100', null, 'ygx', 'YuGanXian ', null, '4', '335100', '余干县');
INSERT INTO `area_tb` VALUES ('361128', null, null, null, '1', null, null, null, '361100', null, 'pyx', 'ZuoYangXian   ', null, '4', '333100', '鄱阳县');
INSERT INTO `area_tb` VALUES ('361129', null, null, null, '1', null, null, null, '361100', null, 'wnx', 'WanNianXian   ', null, '4', '335500', '万年县');
INSERT INTO `area_tb` VALUES ('361130', null, null, null, '1', null, null, null, '361100', null, 'wyx', 'ZuoYuanXian   ', null, '4', '333200', '婺源县');
INSERT INTO `area_tb` VALUES ('361181', null, null, null, '1', null, null, null, '361100', null, 'dxs', 'DeXingShi ', null, '4', '334200', '德兴市');
INSERT INTO `area_tb` VALUES ('361182', null, null, null, '1', null, null, null, '361100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370000', null, null, null, '1', null, null, null, '1', null, 'sds', 'ShanDongSheng ', null, '2', '', '山东省');
INSERT INTO `area_tb` VALUES ('370100', null, null, null, '1', null, null, null, '370000', null, 'jns', 'JiNanShi  ', null, '3', '250000', '济南市');
INSERT INTO `area_tb` VALUES ('370102', null, null, null, '1', null, null, null, '370100', null, 'lxq', 'LiXiaQu   ', null, '4', '250013', '历下区');
INSERT INTO `area_tb` VALUES ('370103', null, null, null, '1', null, null, null, '370100', null, 'szq', 'ShiZhongQu', null, '4', '250002', '市中区');
INSERT INTO `area_tb` VALUES ('370104', null, null, null, '1', null, null, null, '370100', null, 'hyq', 'HuaiYinQu ', null, '4', '250021', '槐荫区');
INSERT INTO `area_tb` VALUES ('370105', null, null, null, '1', null, null, null, '370100', null, 'tqq', 'TianQiaoQu', null, '4', '250031', '天桥区');
INSERT INTO `area_tb` VALUES ('370112', null, null, null, '1', null, null, null, '370100', null, 'lcq', 'LiChengQu ', null, '4', '250100', '历城区');
INSERT INTO `area_tb` VALUES ('370113', null, null, null, '1', null, null, null, '370100', null, 'cqq', 'ChangQingQu   ', null, '4', '250300', '长清区');
INSERT INTO `area_tb` VALUES ('370124', null, null, null, '1', null, null, null, '370100', null, 'pyx', 'PingYinXian   ', null, '4', '250400', '平阴县');
INSERT INTO `area_tb` VALUES ('370125', null, null, null, '1', null, null, null, '370100', null, 'jyx', 'JiYangXian', null, '4', '251400', '济阳县');
INSERT INTO `area_tb` VALUES ('370126', null, null, null, '1', null, null, null, '370100', null, 'shx', 'ShangHeXian   ', null, '4', '251600', '商河县');
INSERT INTO `area_tb` VALUES ('370181', null, null, null, '1', null, null, null, '370100', null, 'zqs', 'ZhangQiuShi   ', null, '4', '250200', '章丘市');
INSERT INTO `area_tb` VALUES ('370182', null, null, null, '1', null, null, null, '370100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370200', null, null, null, '1', null, null, null, '370000', null, 'qds', 'QingDaoShi', null, '3', '266000', '青岛市');
INSERT INTO `area_tb` VALUES ('370202', null, null, null, '1', null, null, null, '370200', null, 'snq', 'ShiNanQu  ', null, '4', '266001', '市南区');
INSERT INTO `area_tb` VALUES ('370203', null, null, null, '1', null, null, null, '370200', null, 'sbq', 'ShiBeiQu  ', null, '4', '266011', '市北区');
INSERT INTO `area_tb` VALUES ('370205', null, null, null, '1', null, null, null, '370200', null, 'sfq', 'SiFangQu  ', null, '4', '266031', '四方区');
INSERT INTO `area_tb` VALUES ('370211', null, null, null, '1', null, null, null, '370200', null, 'hdq', 'HuangDaoQu', null, '4', '266500', '黄岛区');
INSERT INTO `area_tb` VALUES ('370212', null, null, null, '1', null, null, null, '370200', null, 'lsq', 'ZuoShanQu ', null, '4', '266100', ' 崂山区');
INSERT INTO `area_tb` VALUES ('370213', null, null, null, '1', null, null, null, '370200', null, 'lcq', 'LiCangQu  ', null, '4', '266100', '李沧区');
INSERT INTO `area_tb` VALUES ('370214', null, null, null, '1', null, null, null, '370200', null, 'cyq', 'ChengYangQu   ', null, '4', '266041', '城阳区');
INSERT INTO `area_tb` VALUES ('370251', null, null, null, '1', null, null, null, '370200', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('370281', null, null, null, '1', null, null, null, '370200', null, 'jzs', 'JiaoZhouShi   ', null, '4', '266300', '胶州市');
INSERT INTO `area_tb` VALUES ('370282', null, null, null, '1', null, null, null, '370200', null, 'jms', 'JiMoShi   ', null, '4', '266200', '即墨市');
INSERT INTO `area_tb` VALUES ('370283', null, null, null, '1', null, null, null, '370200', null, 'pds', 'PingDuShi ', null, '4', '266700', '平度市');
INSERT INTO `area_tb` VALUES ('370284', null, null, null, '1', null, null, null, '370200', null, 'jns', 'JiaoNanShi', null, '4', '266400', '胶南市');
INSERT INTO `area_tb` VALUES ('370285', null, null, null, '1', null, null, null, '370200', null, 'lxs', 'LaiXiShi  ', null, '4', '266600', '莱西市');
INSERT INTO `area_tb` VALUES ('370286', null, null, null, '1', null, null, null, '370200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370300', null, null, null, '1', null, null, null, '370000', null, 'zbs', 'ZiBoShi   ', null, '3', '255000', '淄博市');
INSERT INTO `area_tb` VALUES ('370302', null, null, null, '1', null, null, null, '370300', null, 'zcq', 'ZiChuanQu ', null, '4', '255100', '淄川区');
INSERT INTO `area_tb` VALUES ('370303', null, null, null, '1', null, null, null, '370300', null, 'zdq', 'ZhangDianQu   ', null, '4', '255022', '张店区');
INSERT INTO `area_tb` VALUES ('370304', null, null, null, '1', null, null, null, '370300', null, 'bsq', 'BoShanQu  ', null, '4', '255200', '博山区');
INSERT INTO `area_tb` VALUES ('370305', null, null, null, '1', null, null, null, '370300', null, 'lzq', 'LinZiQu   ', null, '4', '255400', '临淄区');
INSERT INTO `area_tb` VALUES ('370306', null, null, null, '1', null, null, null, '370300', null, 'zcq', 'ZhouCunQu ', null, '4', '255300', '周村区');
INSERT INTO `area_tb` VALUES ('370321', null, null, null, '1', null, null, null, '370300', null, 'htx', 'HuanTaiXian   ', null, '4', '256400', '桓台县');
INSERT INTO `area_tb` VALUES ('370322', null, null, null, '1', null, null, null, '370300', null, 'gqx', 'GaoQingXian   ', null, '4', '256300', '高青县');
INSERT INTO `area_tb` VALUES ('370323', null, null, null, '1', null, null, null, '370300', null, 'yyx', 'YiYuanXian', null, '4', '256100', '沂源县');
INSERT INTO `area_tb` VALUES ('370324', null, null, null, '1', null, null, null, '370300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370400', null, null, null, '1', null, null, null, '370000', null, 'zzs', 'ZaoZhuangShi  ', null, '3', '277100', '枣庄市');
INSERT INTO `area_tb` VALUES ('370402', null, null, null, '1', null, null, null, '370400', null, 'szq', 'ShiZhongQu', null, '4', '277101', '市中区');
INSERT INTO `area_tb` VALUES ('370403', null, null, null, '1', null, null, null, '370400', null, 'xcq', 'XueChengQu', null, '4', '277000', '薛城区');
INSERT INTO `area_tb` VALUES ('370404', null, null, null, '1', null, null, null, '370400', null, 'ycq', 'ZuoChengQu', null, '4', '277300', '峄城区');
INSERT INTO `area_tb` VALUES ('370405', null, null, null, '1', null, null, null, '370400', null, 'tezq', 'TaiErZhuangQu ', null, '4', '277400', '台儿庄区');
INSERT INTO `area_tb` VALUES ('370406', null, null, null, '1', null, null, null, '370400', null, 'stq', 'ShanTingQu', null, '4', '277200', '山亭区');
INSERT INTO `area_tb` VALUES ('370481', null, null, null, '1', null, null, null, '370400', null, 'tzs', 'ZuoZhouShi', null, '4', '277500', '滕州市');
INSERT INTO `area_tb` VALUES ('370482', null, null, null, '1', null, null, null, '370400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370500', null, null, null, '1', null, null, null, '370000', null, 'dys', 'DongYingShi   ', null, '3', '257000', '东营市');
INSERT INTO `area_tb` VALUES ('370502', null, null, null, '1', null, null, null, '370500', null, 'dyq', 'DongYingQu', null, '4', '257029', '东营区');
INSERT INTO `area_tb` VALUES ('370503', null, null, null, '1', null, null, null, '370500', null, 'hkq', 'HeKouQu   ', null, '4', '257200', '河口区');
INSERT INTO `area_tb` VALUES ('370521', null, null, null, '1', null, null, null, '370500', null, 'klx', 'KenLiXian ', null, '4', '257500', '垦利县');
INSERT INTO `area_tb` VALUES ('370522', null, null, null, '1', null, null, null, '370500', null, 'ljx', 'LiJinXian ', null, '4', '257400', '利津县');
INSERT INTO `area_tb` VALUES ('370523', null, null, null, '1', null, null, null, '370500', null, 'grx', 'GuangRaoXian  ', null, '4', '257300', '广饶县');
INSERT INTO `area_tb` VALUES ('370589', null, null, null, '1', null, null, null, '370500', null, 'xcq', 'XiChengQu ', null, '4', '', '西城区');
INSERT INTO `area_tb` VALUES ('370590', null, null, null, '1', null, null, null, '370500', null, 'dcq', 'DongChengQu   ', null, '4', '', '东城区');
INSERT INTO `area_tb` VALUES ('370591', null, null, null, '1', null, null, null, '370500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370600', null, null, null, '1', null, null, null, '370000', null, 'yts', 'YanTaiShi ', null, '3', '264000', '烟台市');
INSERT INTO `area_tb` VALUES ('370602', null, null, null, '1', null, null, null, '370600', null, 'zfq', 'ZhiZuoQu  ', null, '4', '264001', '芝罘区');
INSERT INTO `area_tb` VALUES ('370611', null, null, null, '1', null, null, null, '370600', null, 'fsq', 'FuShanQu  ', null, '4', '265500', '福山区');
INSERT INTO `area_tb` VALUES ('370612', null, null, null, '1', null, null, null, '370600', null, 'mpq', 'MouPingQu ', null, '4', '264100', '牟平区');
INSERT INTO `area_tb` VALUES ('370613', null, null, null, '1', null, null, null, '370600', null, 'lsq', 'LaiShanQu ', null, '4', '264600', '莱山区');
INSERT INTO `area_tb` VALUES ('370634', null, null, null, '1', null, null, null, '370600', null, 'cdx', 'ChangDaoXian  ', null, '4', '265800', '长岛县');
INSERT INTO `area_tb` VALUES ('370681', null, null, null, '1', null, null, null, '370600', null, 'lks', 'LongKouShi', null, '4', '265700', '龙口市');
INSERT INTO `area_tb` VALUES ('370682', null, null, null, '1', null, null, null, '370600', null, 'lys', 'LaiYangShi', null, '4', '265200', '莱阳市');
INSERT INTO `area_tb` VALUES ('370683', null, null, null, '1', null, null, null, '370600', null, 'lzs', 'LaiZhouShi', null, '4', '261400', '莱州市');
INSERT INTO `area_tb` VALUES ('370684', null, null, null, '1', null, null, null, '370600', null, 'pls', 'PengLaiShi', null, '4', '265600', '蓬莱市');
INSERT INTO `area_tb` VALUES ('370685', null, null, null, '1', null, null, null, '370600', null, 'zys', 'ZhaoYuanShi   ', null, '4', '265400', '招远市');
INSERT INTO `area_tb` VALUES ('370686', null, null, null, '1', null, null, null, '370600', null, 'qxs', 'QiXiaShi  ', null, '4', '265300', '栖霞市');
INSERT INTO `area_tb` VALUES ('370687', null, null, null, '1', null, null, null, '370600', null, 'hys', 'HaiYangShi', null, '4', '265100', '海阳市');
INSERT INTO `area_tb` VALUES ('370688', null, null, null, '1', null, null, null, '370600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370700', null, null, null, '1', null, null, null, '370000', null, 'wfs', 'WeiFangShi', null, '3', '261000', '潍坊市');
INSERT INTO `area_tb` VALUES ('370702', null, null, null, '1', null, null, null, '370700', null, 'wcq', 'WeiChengQu', null, '4', '261021', '潍城区');
INSERT INTO `area_tb` VALUES ('370703', null, null, null, '1', null, null, null, '370700', null, 'htq', 'HanTingQu ', null, '4', '261100', '寒亭区');
INSERT INTO `area_tb` VALUES ('370704', null, null, null, '1', null, null, null, '370700', null, 'fzq', 'FangZiQu  ', null, '4', '261200', '坊子区');
INSERT INTO `area_tb` VALUES ('370705', null, null, null, '1', null, null, null, '370700', null, 'kwq', 'KuiWenQu  ', null, '4', '261041', '奎文区');
INSERT INTO `area_tb` VALUES ('370724', null, null, null, '1', null, null, null, '370700', null, 'lqx', 'LinZuoXian', null, '4', '262600', '临朐县');
INSERT INTO `area_tb` VALUES ('370725', null, null, null, '1', null, null, null, '370700', null, 'clx', 'ChangLeXian   ', null, '4', '262400', '昌乐县');
INSERT INTO `area_tb` VALUES ('370751', null, null, null, '1', null, null, null, '370700', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('370781', null, null, null, '1', null, null, null, '370700', null, 'qzs', 'QingZhouShi   ', null, '4', '262500', '青州市');
INSERT INTO `area_tb` VALUES ('370782', null, null, null, '1', null, null, null, '370700', null, 'zcs', 'ZhuChengShi   ', null, '4', '262200', '诸城市');
INSERT INTO `area_tb` VALUES ('370783', null, null, null, '1', null, null, null, '370700', null, 'sgs', 'ShouGuangShi  ', null, '4', '262700', '寿光市');
INSERT INTO `area_tb` VALUES ('370784', null, null, null, '1', null, null, null, '370700', null, 'aqs', 'AnQiuShi  ', null, '4', '262100', '安丘市');
INSERT INTO `area_tb` VALUES ('370785', null, null, null, '1', null, null, null, '370700', null, 'gms', 'GaoMiShi  ', null, '4', '261500', '高密市');
INSERT INTO `area_tb` VALUES ('370786', null, null, null, '1', null, null, null, '370700', null, 'cys', 'ChangYiShi', null, '4', '261300', '昌邑市');
INSERT INTO `area_tb` VALUES ('370787', null, null, null, '1', null, null, null, '370700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370800', null, null, null, '1', null, null, null, '370000', null, 'jns', 'JiNingShi ', null, '3', '272100', '济宁市');
INSERT INTO `area_tb` VALUES ('370802', null, null, null, '1', null, null, null, '370800', null, 'szq', 'ShiZhongQu', null, '4', '272133', '市中区');
INSERT INTO `area_tb` VALUES ('370811', null, null, null, '1', null, null, null, '370800', null, 'rcq', 'RenChengQu', null, '4', '272113', '任城区');
INSERT INTO `area_tb` VALUES ('370826', null, null, null, '1', null, null, null, '370800', null, 'wsx', 'WeiShanXian   ', null, '4', '277600', '微山县');
INSERT INTO `area_tb` VALUES ('370827', null, null, null, '1', null, null, null, '370800', null, 'ytx', 'YuTaiXian ', null, '4', '272300', '鱼台县');
INSERT INTO `area_tb` VALUES ('370828', null, null, null, '1', null, null, null, '370800', null, 'jxx', 'JinXiangXian  ', null, '4', '272200', '金乡县');
INSERT INTO `area_tb` VALUES ('370829', null, null, null, '1', null, null, null, '370800', null, 'jxx', 'JiaXiangXian  ', null, '4', '272400', '嘉祥县');
INSERT INTO `area_tb` VALUES ('370830', null, null, null, '1', null, null, null, '370800', null, 'wsx', 'ZuoShangXian  ', null, '4', '272501', '汶上县');
INSERT INTO `area_tb` VALUES ('370831', null, null, null, '1', null, null, null, '370800', null, 'ssx', 'ZuoShuiXian   ', null, '4', '273200', '泗水县');
INSERT INTO `area_tb` VALUES ('370832', null, null, null, '1', null, null, null, '370800', null, 'lsx', 'LiangShanXian ', null, '4', '272600', '梁山县');
INSERT INTO `area_tb` VALUES ('370881', null, null, null, '1', null, null, null, '370800', null, 'qfs', 'QuFuShi   ', null, '4', '273100', '曲阜市');
INSERT INTO `area_tb` VALUES ('370882', null, null, null, '1', null, null, null, '370800', null, 'yzs', 'ZuoZhouShi', null, '4', '272000', '兖州市');
INSERT INTO `area_tb` VALUES ('370883', null, null, null, '1', null, null, null, '370800', null, 'zcs', 'ZouChengShi   ', null, '4', '273500', '邹城市');
INSERT INTO `area_tb` VALUES ('370884', null, null, null, '1', null, null, null, '370800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('370900', null, null, null, '1', null, null, null, '370000', null, 'tas', 'TaiAnShi  ', null, '3', '271000', '泰安市');
INSERT INTO `area_tb` VALUES ('370902', null, null, null, '1', null, null, null, '370900', null, 'tsq', 'TaiShanQu ', null, '4', '271000', '泰山区');
INSERT INTO `area_tb` VALUES ('370903', null, null, null, '1', null, null, null, '370900', null, 'dyq', 'ZuoYueQu  ', null, '4', '271000', '岱岳区');
INSERT INTO `area_tb` VALUES ('370921', null, null, null, '1', null, null, null, '370900', null, 'nyx', 'NingYangXian  ', null, '4', '271400', '宁阳县');
INSERT INTO `area_tb` VALUES ('370923', null, null, null, '1', null, null, null, '370900', null, 'dpx', 'DongPingXian  ', null, '4', '271500', '东平县');
INSERT INTO `area_tb` VALUES ('370982', null, null, null, '1', null, null, null, '370900', null, 'xts', 'XinTaiShi ', null, '4', '271200', '新泰市');
INSERT INTO `area_tb` VALUES ('370983', null, null, null, '1', null, null, null, '370900', null, 'fcs', 'FeiChengShi   ', null, '4', '271600', '肥城市');
INSERT INTO `area_tb` VALUES ('370984', null, null, null, '1', null, null, null, '370900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371000', null, null, null, '1', null, null, null, '370000', null, 'whs', 'WeiHaiShi ', null, '3', '264200', '威海市');
INSERT INTO `area_tb` VALUES ('371002', null, null, null, '1', null, null, null, '371000', null, 'hcq', 'HuanCuiQu ', null, '4', '264200', '环翠区');
INSERT INTO `area_tb` VALUES ('371081', null, null, null, '1', null, null, null, '371000', null, 'wds', 'WenDengShi', null, '4', '264400', '文登市');
INSERT INTO `area_tb` VALUES ('371082', null, null, null, '1', null, null, null, '371000', null, 'rcs', 'RongChengShi  ', null, '4', '264300', '荣成市');
INSERT INTO `area_tb` VALUES ('371083', null, null, null, '1', null, null, null, '371000', null, 'rss', 'RuShanShi ', null, '4', '264500', '乳山市');
INSERT INTO `area_tb` VALUES ('371084', null, null, null, '1', null, null, null, '371000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371100', null, null, null, '1', null, null, null, '370000', null, 'rzs', 'RiZhaoShi ', null, '3', '276800', '日照市');
INSERT INTO `area_tb` VALUES ('371102', null, null, null, '1', null, null, null, '371100', null, 'dgq', 'DongGangQu', null, '4', '276800', '东港区');
INSERT INTO `area_tb` VALUES ('371103', null, null, null, '1', null, null, null, '371100', null, 'lsq', 'ZuoShanQu ', null, '4', '276808', ' 岚山区');
INSERT INTO `area_tb` VALUES ('371121', null, null, null, '1', null, null, null, '371100', null, 'wlx', 'WuLianXian', null, '4', '262300', '五莲县');
INSERT INTO `area_tb` VALUES ('371122', null, null, null, '1', null, null, null, '371100', null, 'jx', 'ZuoXian   ', null, '4', '276500', '莒县');
INSERT INTO `area_tb` VALUES ('371123', null, null, null, '1', null, null, null, '371100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371200', null, null, null, '1', null, null, null, '370000', null, 'lws', 'LaiWuShi  ', null, '3', '271100', '莱芜市');
INSERT INTO `area_tb` VALUES ('371202', null, null, null, '1', null, null, null, '371200', null, 'lcq', 'LaiChengQu', null, '4', '271100', '莱城区');
INSERT INTO `area_tb` VALUES ('371203', null, null, null, '1', null, null, null, '371200', null, 'gcq', 'GangChengQu   ', null, '4', '271100', '钢城区');
INSERT INTO `area_tb` VALUES ('371204', null, null, null, '1', null, null, null, '371200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371300', null, null, null, '1', null, null, null, '370000', null, 'lys', 'LinYiShi  ', null, '3', '276000', '临沂市');
INSERT INTO `area_tb` VALUES ('371302', null, null, null, '1', null, null, null, '371300', null, 'lsq', 'LanShanQu ', null, '4', '276002', '兰山区');
INSERT INTO `area_tb` VALUES ('371311', null, null, null, '1', null, null, null, '371300', null, 'lzq', 'LuoZhuangQu   ', null, '4', '276022', '罗庄区');
INSERT INTO `area_tb` VALUES ('371312', null, null, null, '1', null, null, null, '371300', null, 'hdq', 'HeDongQu  ', null, '4', '276034', '河东区');
INSERT INTO `area_tb` VALUES ('371321', null, null, null, '1', null, null, null, '371300', null, 'ynx', 'YiNanXian ', null, '4', '276300', '沂南县');
INSERT INTO `area_tb` VALUES ('371322', null, null, null, '1', null, null, null, '371300', null, 'tcx', 'ZuoChengXian  ', null, '4', '276100', '郯城县');
INSERT INTO `area_tb` VALUES ('371323', null, null, null, '1', null, null, null, '371300', null, 'ysx', 'YiShuiXian', null, '4', '276400', '沂水县');
INSERT INTO `area_tb` VALUES ('371324', null, null, null, '1', null, null, null, '371300', null, 'csx', 'CangShanXian  ', null, '4', '277700', '苍山县');
INSERT INTO `area_tb` VALUES ('371325', null, null, null, '1', null, null, null, '371300', null, 'fx', 'FeiXian   ', null, '4', '273400', '费县');
INSERT INTO `area_tb` VALUES ('371326', null, null, null, '1', null, null, null, '371300', null, 'pyx', 'PingYiXian', null, '4', '273300', '平邑县');
INSERT INTO `area_tb` VALUES ('371327', null, null, null, '1', null, null, null, '371300', null, 'jnx', 'ZuoNanXian', null, '4', '276600', '莒南县');
INSERT INTO `area_tb` VALUES ('371328', null, null, null, '1', null, null, null, '371300', null, 'myx', 'MengYinXian   ', null, '4', '276200', '蒙阴县');
INSERT INTO `area_tb` VALUES ('371329', null, null, null, '1', null, null, null, '371300', null, 'lsx', 'LinZuoXian', null, '4', '276700', '临沭县');
INSERT INTO `area_tb` VALUES ('371330', null, null, null, '1', null, null, null, '371300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371400', null, null, null, '1', null, null, null, '370000', null, 'dzs', 'DeZhouShi ', null, '3', '253000', '德州市');
INSERT INTO `area_tb` VALUES ('371402', null, null, null, '1', null, null, null, '371400', null, 'dcq', 'DeChengQu ', null, '4', '253011', '德城区');
INSERT INTO `area_tb` VALUES ('371421', null, null, null, '1', null, null, null, '371400', null, 'lx', 'LingXian  ', null, '4', '253500', '陵县');
INSERT INTO `area_tb` VALUES ('371422', null, null, null, '1', null, null, null, '371400', null, 'njx', 'NingJinXian   ', null, '4', '253400', '宁津县');
INSERT INTO `area_tb` VALUES ('371423', null, null, null, '1', null, null, null, '371400', null, 'qyx', 'QingYunXian   ', null, '4', '253700', '庆云县');
INSERT INTO `area_tb` VALUES ('371424', null, null, null, '1', null, null, null, '371400', null, 'lyx', 'LinYiXian ', null, '4', '251500', '临邑县');
INSERT INTO `area_tb` VALUES ('371425', null, null, null, '1', null, null, null, '371400', null, 'qhx', 'QiHeXian  ', null, '4', '251100', '齐河县');
INSERT INTO `area_tb` VALUES ('371426', null, null, null, '1', null, null, null, '371400', null, 'pyx', 'PingYuanXian  ', null, '4', '253121', '平原县');
INSERT INTO `area_tb` VALUES ('371427', null, null, null, '1', null, null, null, '371400', null, 'xjx', 'XiaJinXian', null, '4', '253200', '夏津县');
INSERT INTO `area_tb` VALUES ('371428', null, null, null, '1', null, null, null, '371400', null, 'wcx', 'WuChengXian   ', null, '4', '253300', '武城县');
INSERT INTO `area_tb` VALUES ('371451', null, null, null, '1', null, null, null, '371400', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('371481', null, null, null, '1', null, null, null, '371400', null, 'lls', 'LeLingShi ', null, '4', '253600', '乐陵市');
INSERT INTO `area_tb` VALUES ('371482', null, null, null, '1', null, null, null, '371400', null, 'ycs', 'YuChengShi', null, '4', '251200', '禹城市');
INSERT INTO `area_tb` VALUES ('371483', null, null, null, '1', null, null, null, '371400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371500', null, null, null, '1', null, null, null, '370000', null, 'lcs', 'LiaoChengShi  ', null, '3', '252000', '聊城市');
INSERT INTO `area_tb` VALUES ('371502', null, null, null, '1', null, null, null, '371500', null, 'dcfq', 'DongChangFuQu ', null, '4', '252000', '东昌府区');
INSERT INTO `area_tb` VALUES ('371521', null, null, null, '1', null, null, null, '371500', null, 'ygx', 'YangGuXian', null, '4', '252300', '阳谷县');
INSERT INTO `area_tb` VALUES ('371522', null, null, null, '1', null, null, null, '371500', null, 'sx', 'ZuoXian   ', null, '4', '252400', '莘县');
INSERT INTO `area_tb` VALUES ('371523', null, null, null, '1', null, null, null, '371500', null, 'cpx', 'ZuoPingXian   ', null, '4', '252100', '茌平县');
INSERT INTO `area_tb` VALUES ('371524', null, null, null, '1', null, null, null, '371500', null, 'dax', 'DongAXian ', null, '4', '252200', '东阿县');
INSERT INTO `area_tb` VALUES ('371525', null, null, null, '1', null, null, null, '371500', null, 'gx', 'GuanXian  ', null, '4', '252500', '冠县');
INSERT INTO `area_tb` VALUES ('371526', null, null, null, '1', null, null, null, '371500', null, 'gtx', 'GaoTangXian   ', null, '4', '252800', '高唐县');
INSERT INTO `area_tb` VALUES ('371581', null, null, null, '1', null, null, null, '371500', null, 'lqs', 'LinQingShi', null, '4', '252600', '临清市');
INSERT INTO `area_tb` VALUES ('371582', null, null, null, '1', null, null, null, '371500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371600', null, null, null, '1', null, null, null, '370000', null, 'bzs', 'BinZhouShi', null, '3', '256600', '滨州市');
INSERT INTO `area_tb` VALUES ('371602', null, null, null, '1', null, null, null, '371600', null, 'bcq', 'BinChengQu', null, '4', '256600', '滨城区');
INSERT INTO `area_tb` VALUES ('371621', null, null, null, '1', null, null, null, '371600', null, 'hmx', 'HuiMinXian', null, '4', '257100', '惠民县');
INSERT INTO `area_tb` VALUES ('371622', null, null, null, '1', null, null, null, '371600', null, 'yxx', 'YangXinXian   ', null, '4', '251800', '阳信县');
INSERT INTO `area_tb` VALUES ('371623', null, null, null, '1', null, null, null, '371600', null, 'wdx', 'WuZuoXian ', null, '4', '251900', '无棣县');
INSERT INTO `area_tb` VALUES ('371624', null, null, null, '1', null, null, null, '371600', null, 'zhx', 'ZhanHuaXian   ', null, '4', '256800', '沾化县');
INSERT INTO `area_tb` VALUES ('371625', null, null, null, '1', null, null, null, '371600', null, 'bxx', 'BoXingXian', null, '4', '256500', '博兴县');
INSERT INTO `area_tb` VALUES ('371626', null, null, null, '1', null, null, null, '371600', null, 'zpx', 'ZouPingXian   ', null, '4', '256200', '邹平县');
INSERT INTO `area_tb` VALUES ('371627', null, null, null, '1', null, null, null, '371600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('371700', null, null, null, '1', null, null, null, '370000', null, 'hzs', 'HeZeShi   ', null, '3', '274000', '菏泽市');
INSERT INTO `area_tb` VALUES ('371702', null, null, null, '1', null, null, null, '371700', null, 'mdq', 'MuDanQu   ', null, '4', '274009', '牡丹区');
INSERT INTO `area_tb` VALUES ('371721', null, null, null, '1', null, null, null, '371700', null, 'cx', 'CaoXian   ', null, '4', '274400', '曹县');
INSERT INTO `area_tb` VALUES ('371722', null, null, null, '1', null, null, null, '371700', null, 'dx', 'DanXian   ', null, '4', '274300', '单县');
INSERT INTO `area_tb` VALUES ('371723', null, null, null, '1', null, null, null, '371700', null, 'cwx', 'ChengWuXian   ', null, '4', '274200', '成武县');
INSERT INTO `area_tb` VALUES ('371724', null, null, null, '1', null, null, null, '371700', null, 'jyx', 'JuYeXian  ', null, '4', '274900', '巨野县');
INSERT INTO `area_tb` VALUES ('371725', null, null, null, '1', null, null, null, '371700', null, 'ycx', 'ZuoChengXian  ', null, '4', '274700', '郓城县');
INSERT INTO `area_tb` VALUES ('371726', null, null, null, '1', null, null, null, '371700', null, 'jcx', 'ZuoChengXian  ', null, '4', '274600', '鄄城县');
INSERT INTO `area_tb` VALUES ('371727', null, null, null, '1', null, null, null, '371700', null, 'dtx', 'DingTaoXian   ', null, '4', '274100', '定陶县');
INSERT INTO `area_tb` VALUES ('371728', null, null, null, '1', null, null, null, '371700', null, 'dmx', 'DongMingXian  ', null, '4', '274500', '东明县');
INSERT INTO `area_tb` VALUES ('371729', null, null, null, '1', null, null, null, '371700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410000', null, null, null, '1', null, null, null, '1', null, 'hns', 'HeNanSheng', null, '2', '', '河南省');
INSERT INTO `area_tb` VALUES ('410100', null, null, null, '1', null, null, null, '410000', null, 'zzs', 'ZhengZhouShi  ', null, '3', '450000', '郑州市');
INSERT INTO `area_tb` VALUES ('410102', null, null, null, '1', null, null, null, '410100', null, 'zyq', 'ZhongYuanQu   ', null, '4', '450007', '中原区');
INSERT INTO `area_tb` VALUES ('410103', null, null, null, '1', null, null, null, '410100', null, 'eqq', 'ErQiQu', null, '4', '450000', '二七区');
INSERT INTO `area_tb` VALUES ('410104', null, null, null, '1', null, null, null, '410100', null, 'gchzq', 'GuanChengHuiZuQu  ', null, '4', '450000', '管城回族区');
INSERT INTO `area_tb` VALUES ('410105', null, null, null, '1', null, null, null, '410100', null, 'jsq', 'JinShuiQu ', null, '4', '450003', '金水区');
INSERT INTO `area_tb` VALUES ('410106', null, null, null, '1', null, null, null, '410100', null, 'sjq', 'ShangJieQu', null, '4', '450041', '上街区');
INSERT INTO `area_tb` VALUES ('410108', null, null, null, '1', null, null, null, '410100', null, 'hjq', 'HuiJiQu   ', null, '4', '450053', '惠济区');
INSERT INTO `area_tb` VALUES ('410122', null, null, null, '1', null, null, null, '410100', null, 'zmx', 'ZhongMouXian  ', null, '4', '451450', '中牟县');
INSERT INTO `area_tb` VALUES ('410181', null, null, null, '1', null, null, null, '410100', null, 'gys', 'GongYiShi ', null, '4', '451200', '巩义市');
INSERT INTO `area_tb` VALUES ('410182', null, null, null, '1', null, null, null, '410100', null, 'xys', 'ZuoYangShi', null, '4', '450100', '荥阳市');
INSERT INTO `area_tb` VALUES ('410183', null, null, null, '1', null, null, null, '410100', null, 'xms', 'XinMiShi  ', null, '4', '452300', '新密市');
INSERT INTO `area_tb` VALUES ('410184', null, null, null, '1', null, null, null, '410100', null, 'xzs', 'XinZhengShi   ', null, '4', '451150', '新郑市');
INSERT INTO `area_tb` VALUES ('410185', null, null, null, '1', null, null, null, '410100', null, 'dfs', 'DengFengShi   ', null, '4', '452470', '登封市');
INSERT INTO `area_tb` VALUES ('410186', null, null, null, '1', null, null, null, '410100', null, 'zdxq', 'ZhengDongXinQu', null, '4', '', '郑东新区');
INSERT INTO `area_tb` VALUES ('410187', null, null, null, '1', null, null, null, '410100', null, 'gxq', 'GaoXinQu  ', null, '4', '', '高新区');
INSERT INTO `area_tb` VALUES ('410188', null, null, null, '1', null, null, null, '410100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410200', null, null, null, '1', null, null, null, '410000', null, 'kfs', 'KaiFengShi', null, '3', '475000', '开封市');
INSERT INTO `area_tb` VALUES ('410202', null, null, null, '1', null, null, null, '410200', null, 'ltq', 'LongTingQu', null, '4', '475100', '龙亭区');
INSERT INTO `area_tb` VALUES ('410203', null, null, null, '1', null, null, null, '410200', null, 'shhzq', 'ShunHeHuiZuQu ', null, '4', '475000', '顺河回族区');
INSERT INTO `area_tb` VALUES ('410204', null, null, null, '1', null, null, null, '410200', null, 'glq', 'GuLouQu   ', null, '4', '475000', '鼓楼区');
INSERT INTO `area_tb` VALUES ('410205', null, null, null, '1', null, null, null, '410200', null, 'ywtq', 'YuWangTaiQu   ', null, '4', '475003', '禹王台区');
INSERT INTO `area_tb` VALUES ('410211', null, null, null, '1', null, null, null, '410200', null, 'jmq', 'JinMingQu ', null, '4', '475002', '金明区');
INSERT INTO `area_tb` VALUES ('410221', null, null, null, '1', null, null, null, '410200', null, 'qx', 'ZuoXian   ', null, '4', '475200', ' 杞县');
INSERT INTO `area_tb` VALUES ('410222', null, null, null, '1', null, null, null, '410200', null, 'txx', 'TongXuXian', null, '4', '475400', '通许县');
INSERT INTO `area_tb` VALUES ('410223', null, null, null, '1', null, null, null, '410200', null, 'wsx', 'WeiShiXian', null, '4', '475500', '尉氏县');
INSERT INTO `area_tb` VALUES ('410224', null, null, null, '1', null, null, null, '410200', null, 'kfx', 'KaiFengXian   ', null, '4', '475100', '开封县');
INSERT INTO `area_tb` VALUES ('410225', null, null, null, '1', null, null, null, '410200', null, 'lkx', 'LanKaoXian', null, '4', '475300', '兰考县');
INSERT INTO `area_tb` VALUES ('410226', null, null, null, '1', null, null, null, '410200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410300', null, null, null, '1', null, null, null, '410000', null, 'lys', 'LuoYangShi', null, '3', '471000', '洛阳市');
INSERT INTO `area_tb` VALUES ('410302', null, null, null, '1', null, null, null, '410300', null, 'lcq', 'LaoChengQu', null, '4', '471002', '老城区');
INSERT INTO `area_tb` VALUES ('410303', null, null, null, '1', null, null, null, '410300', null, 'xgq', 'XiGongQu  ', null, '4', '471000', '西工区');
INSERT INTO `area_tb` VALUES ('410304', null, null, null, '1', null, null, null, '410300', null, 'chhzq', 'ZuoHeHuiZuQu  ', null, '4', '471002', '廛河回族区');
INSERT INTO `area_tb` VALUES ('410305', null, null, null, '1', null, null, null, '410300', null, 'jxq', 'JianXiQu  ', null, '4', '471003', '涧西区');
INSERT INTO `area_tb` VALUES ('410306', null, null, null, '1', null, null, null, '410300', null, 'jlq', 'JiLiQu', null, '4', '471012', '吉利区');
INSERT INTO `area_tb` VALUES ('410307', null, null, null, '1', null, null, null, '410300', null, 'llq', 'LuoLongQu ', null, '4', '471000', '洛龙区');
INSERT INTO `area_tb` VALUES ('410322', null, null, null, '1', null, null, null, '410300', null, 'mjx', 'MengJinXian   ', null, '4', '471100', '孟津县');
INSERT INTO `area_tb` VALUES ('410323', null, null, null, '1', null, null, null, '410300', null, 'xax', 'XinAnXian ', null, '4', '471800', '新安县');
INSERT INTO `area_tb` VALUES ('410324', null, null, null, '1', null, null, null, '410300', null, 'lcx', 'ZuoChuanXian  ', null, '4', '471500', '栾川县');
INSERT INTO `area_tb` VALUES ('410325', null, null, null, '1', null, null, null, '410300', null, 'sx', 'ZuoXian   ', null, '4', '471400', '嵩县');
INSERT INTO `area_tb` VALUES ('410326', null, null, null, '1', null, null, null, '410300', null, 'ryx', 'RuYangXian', null, '4', '471200', '汝阳县');
INSERT INTO `area_tb` VALUES ('410327', null, null, null, '1', null, null, null, '410300', null, 'yyx', 'YiYangXian', null, '4', '471600', '宜阳县');
INSERT INTO `area_tb` VALUES ('410328', null, null, null, '1', null, null, null, '410300', null, 'lnx', 'LuoNingXian   ', null, '4', '471700', '洛宁县');
INSERT INTO `area_tb` VALUES ('410329', null, null, null, '1', null, null, null, '410300', null, 'ycx', 'YiChuanXian   ', null, '4', '471300', '伊川县');
INSERT INTO `area_tb` VALUES ('410381', null, null, null, '1', null, null, null, '410300', null, 'yss', 'ZuoShiShi ', null, '4', '471900', '偃师市');
INSERT INTO `area_tb` VALUES ('410400', null, null, null, '1', null, null, null, '410000', null, 'pdss', 'PingDingShanShi   ', null, '3', '467000', '平顶山市');
INSERT INTO `area_tb` VALUES ('410402', null, null, null, '1', null, null, null, '410400', null, 'xhq', 'XinHuaQu  ', null, '4', '467002', '新华区');
INSERT INTO `area_tb` VALUES ('410403', null, null, null, '1', null, null, null, '410400', null, 'wdq', 'WeiDongQu ', null, '4', '467021', '卫东区');
INSERT INTO `area_tb` VALUES ('410404', null, null, null, '1', null, null, null, '410400', null, 'slq', 'ShiLongQu ', null, '4', '467045', '石龙区');
INSERT INTO `area_tb` VALUES ('410411', null, null, null, '1', null, null, null, '410400', null, 'zhq', 'ZhanHeQu  ', null, '4', '467000', '湛河区');
INSERT INTO `area_tb` VALUES ('410421', null, null, null, '1', null, null, null, '410400', null, 'bfx', 'BaoFengXian   ', null, '4', '467400', '宝丰县');
INSERT INTO `area_tb` VALUES ('410422', null, null, null, '1', null, null, null, '410400', null, 'yx', 'YeXian', null, '4', '467200', '叶县');
INSERT INTO `area_tb` VALUES ('410423', null, null, null, '1', null, null, null, '410400', null, 'lsx', 'LuShanXian', null, '4', '467300', '鲁山县');
INSERT INTO `area_tb` VALUES ('410425', null, null, null, '1', null, null, null, '410400', null, 'jx', 'ZuoXian   ', null, '4', '467100', '郏县');
INSERT INTO `area_tb` VALUES ('410481', null, null, null, '1', null, null, null, '410400', null, 'wgs', 'WuGangShi ', null, '4', '462500', '舞钢市');
INSERT INTO `area_tb` VALUES ('410482', null, null, null, '1', null, null, null, '410400', null, 'rzs', 'RuZhouShi ', null, '4', '467500', '汝州市');
INSERT INTO `area_tb` VALUES ('410483', null, null, null, '1', null, null, null, '410400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410500', null, null, null, '1', null, null, null, '410000', null, 'ays', 'AnYangShi ', null, '3', '455000', '安阳市');
INSERT INTO `area_tb` VALUES ('410502', null, null, null, '1', null, null, null, '410500', null, 'wfq', 'WenFengQu ', null, '4', '455000', '文峰区');
INSERT INTO `area_tb` VALUES ('410503', null, null, null, '1', null, null, null, '410500', null, 'bgq', 'BeiGuanQu ', null, '4', '455001', '北关区');
INSERT INTO `area_tb` VALUES ('410505', null, null, null, '1', null, null, null, '410500', null, 'ydq', 'YinDuQu   ', null, '4', '455004', '殷都区');
INSERT INTO `area_tb` VALUES ('410506', null, null, null, '1', null, null, null, '410500', null, 'laq', 'LongAnQu  ', null, '4', '455001', '龙安区');
INSERT INTO `area_tb` VALUES ('410522', null, null, null, '1', null, null, null, '410500', null, 'ayx', 'AnYangXian', null, '4', '455100', '安阳县');
INSERT INTO `area_tb` VALUES ('410523', null, null, null, '1', null, null, null, '410500', null, 'tyx', 'TangYinXian   ', null, '4', '456150', '汤阴县');
INSERT INTO `area_tb` VALUES ('410526', null, null, null, '1', null, null, null, '410500', null, 'hx', 'HuaXian   ', null, '4', '456400', '滑县');
INSERT INTO `area_tb` VALUES ('410527', null, null, null, '1', null, null, null, '410500', null, 'nhx', 'NeiHuangXian  ', null, '4', '456300', '内黄县');
INSERT INTO `area_tb` VALUES ('410581', null, null, null, '1', null, null, null, '410500', null, 'lzs', 'LinZhouShi', null, '4', '456500', '林州市');
INSERT INTO `area_tb` VALUES ('410582', null, null, null, '1', null, null, null, '410500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410600', null, null, null, '1', null, null, null, '410000', null, 'hbs', 'HeBiShi   ', null, '3', '458000', '鹤壁市');
INSERT INTO `area_tb` VALUES ('410602', null, null, null, '1', null, null, null, '410600', null, 'hsq', 'HeShanQu  ', null, '4', '458010', '鹤山区');
INSERT INTO `area_tb` VALUES ('410603', null, null, null, '1', null, null, null, '410600', null, 'scq', 'ShanChengQu   ', null, '4', '458000', '山城区');
INSERT INTO `area_tb` VALUES ('410611', null, null, null, '1', null, null, null, '410600', null, 'qbq', 'ZuoBinQu  ', null, '4', '458030', '淇滨区');
INSERT INTO `area_tb` VALUES ('410621', null, null, null, '1', null, null, null, '410600', null, 'jx', 'JunXian   ', null, '4', '456250', '浚县');
INSERT INTO `area_tb` VALUES ('410622', null, null, null, '1', null, null, null, '410600', null, 'qx', 'ZuoXian   ', null, '4', '456750', '淇县');
INSERT INTO `area_tb` VALUES ('410623', null, null, null, '1', null, null, null, '410600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410700', null, null, null, '1', null, null, null, '410000', null, 'xxs', 'XinXiangShi   ', null, '3', '453000', '新乡市');
INSERT INTO `area_tb` VALUES ('410702', null, null, null, '1', null, null, null, '410700', null, 'hqq', 'HongQiQu  ', null, '4', '453000', '红旗区');
INSERT INTO `area_tb` VALUES ('410703', null, null, null, '1', null, null, null, '410700', null, 'wbq', 'WeiBinQu  ', null, '4', '453000', '卫滨区');
INSERT INTO `area_tb` VALUES ('410704', null, null, null, '1', null, null, null, '410700', null, 'fqq', 'FengQuanQu', null, '4', '453011', '凤泉区');
INSERT INTO `area_tb` VALUES ('410711', null, null, null, '1', null, null, null, '410700', null, 'myq', 'MuYeQu', null, '4', '453002', '牧野区');
INSERT INTO `area_tb` VALUES ('410721', null, null, null, '1', null, null, null, '410700', null, 'xxx', 'XinXiangXian  ', null, '4', '453700', '新乡县');
INSERT INTO `area_tb` VALUES ('410724', null, null, null, '1', null, null, null, '410700', null, 'hjx', 'HuoJiaXian', null, '4', '453800', '获嘉县');
INSERT INTO `area_tb` VALUES ('410725', null, null, null, '1', null, null, null, '410700', null, 'yyx', 'YuanYangXian  ', null, '4', '453500', '原阳县');
INSERT INTO `area_tb` VALUES ('410726', null, null, null, '1', null, null, null, '410700', null, 'yjx', 'YanJinXian', null, '4', '453200', '延津县');
INSERT INTO `area_tb` VALUES ('410727', null, null, null, '1', null, null, null, '410700', null, 'fqx', 'FengQiuXian   ', null, '4', '453300', '封丘县');
INSERT INTO `area_tb` VALUES ('410728', null, null, null, '1', null, null, null, '410700', null, 'cyx', 'ChangYuanXian ', null, '4', '453400', '长垣县');
INSERT INTO `area_tb` VALUES ('410781', null, null, null, '1', null, null, null, '410700', null, 'whs', 'WeiHuiShi ', null, '4', '453100', '卫辉市');
INSERT INTO `area_tb` VALUES ('410782', null, null, null, '1', null, null, null, '410700', null, 'hxs', 'HuiXianShi', null, '4', '453600', '辉县市');
INSERT INTO `area_tb` VALUES ('410783', null, null, null, '1', null, null, null, '410700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410800', null, null, null, '1', null, null, null, '410000', null, 'jzs', 'JiaoZuoShi', null, '3', '454000', '焦作市');
INSERT INTO `area_tb` VALUES ('410802', null, null, null, '1', null, null, null, '410800', null, 'jfq', 'JieFangQu ', null, '4', '454000', '解放区');
INSERT INTO `area_tb` VALUES ('410803', null, null, null, '1', null, null, null, '410800', null, 'zzq', 'ZhongZhanQu   ', null, '4', '454191', '中站区');
INSERT INTO `area_tb` VALUES ('410804', null, null, null, '1', null, null, null, '410800', null, 'mcq', 'MaCunQu   ', null, '4', '454171', '马村区');
INSERT INTO `area_tb` VALUES ('410811', null, null, null, '1', null, null, null, '410800', null, 'syq', 'ShanYangQu', null, '4', '454002', '山阳区');
INSERT INTO `area_tb` VALUES ('410821', null, null, null, '1', null, null, null, '410800', null, 'xwx', 'XiuWuXian ', null, '4', '454350', '修武县');
INSERT INTO `area_tb` VALUES ('410822', null, null, null, '1', null, null, null, '410800', null, 'bax', 'BoAiXian  ', null, '4', '454450', '博爱县');
INSERT INTO `area_tb` VALUES ('410823', null, null, null, '1', null, null, null, '410800', null, 'wzx', 'WuZuoXian ', null, '4', '454950', '武陟县');
INSERT INTO `area_tb` VALUES ('410825', null, null, null, '1', null, null, null, '410800', null, 'wx', 'WenXian   ', null, '4', '454850', '温县');
INSERT INTO `area_tb` VALUES ('410881', null, null, null, '1', null, null, null, '410000', null, 'jys', 'JiYuanShi ', null, '4', '454650', '济源市');
INSERT INTO `area_tb` VALUES ('410882', null, null, null, '1', null, null, null, '410800', null, 'qys', 'QinYangShi', null, '4', '454550', '沁阳市');
INSERT INTO `area_tb` VALUES ('410883', null, null, null, '1', null, null, null, '410800', null, 'mzs', 'MengZhouShi   ', null, '4', '454750', '孟州市');
INSERT INTO `area_tb` VALUES ('410884', null, null, null, '1', null, null, null, '410800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('410900', null, null, null, '1', null, null, null, '410000', null, 'pys', 'ZuoYangShi', null, '3', '457000', '濮阳市');
INSERT INTO `area_tb` VALUES ('410902', null, null, null, '1', null, null, null, '410900', null, 'hlq', 'HuaLongQu ', null, '4', '457001', '华龙区');
INSERT INTO `area_tb` VALUES ('410922', null, null, null, '1', null, null, null, '410900', null, 'qfx', 'QingFengXian  ', null, '4', '457300', '清丰县');
INSERT INTO `area_tb` VALUES ('410923', null, null, null, '1', null, null, null, '410900', null, 'nlx', 'NanLeXian ', null, '4', '457400', '南乐县');
INSERT INTO `area_tb` VALUES ('410926', null, null, null, '1', null, null, null, '410900', null, 'fx', 'FanXian   ', null, '4', '457500', '范县');
INSERT INTO `area_tb` VALUES ('410927', null, null, null, '1', null, null, null, '410900', null, 'tqx', 'TaiQianXian   ', null, '4', '457600', '台前县');
INSERT INTO `area_tb` VALUES ('410928', null, null, null, '1', null, null, null, '410900', null, 'pyx', 'ZuoYangXian   ', null, '4', '457100', '濮阳县');
INSERT INTO `area_tb` VALUES ('410929', null, null, null, '1', null, null, null, '410900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411000', null, null, null, '1', null, null, null, '410000', null, 'xcs', 'XuChangShi', null, '3', '461000', '许昌市');
INSERT INTO `area_tb` VALUES ('411002', null, null, null, '1', null, null, null, '411000', null, 'wdq', 'WeiDuQu   ', null, '4', '461000', '魏都区');
INSERT INTO `area_tb` VALUES ('411023', null, null, null, '1', null, null, null, '411000', null, 'xcx', 'XuChangXian   ', null, '4', '461100', '许昌县');
INSERT INTO `area_tb` VALUES ('411024', null, null, null, '1', null, null, null, '411000', null, 'ylx', 'ZuoLingXian   ', null, '4', '461200', '鄢陵县');
INSERT INTO `area_tb` VALUES ('411025', null, null, null, '1', null, null, null, '411000', null, 'xcx', 'XiangChengXian', null, '4', '461700', '襄城县');
INSERT INTO `area_tb` VALUES ('411081', null, null, null, '1', null, null, null, '411000', null, 'yzs', 'YuZhouShi ', null, '4', '461670', '禹州市');
INSERT INTO `area_tb` VALUES ('411082', null, null, null, '1', null, null, null, '411000', null, 'cgs', 'ChangGeShi', null, '4', '461500', '长葛市');
INSERT INTO `area_tb` VALUES ('411083', null, null, null, '1', null, null, null, '411000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411100', null, null, null, '1', null, null, null, '410000', null, 'lhs', 'ZuoHeShi  ', null, '3', '462000', '漯河市');
INSERT INTO `area_tb` VALUES ('411102', null, null, null, '1', null, null, null, '411100', null, 'yhq', 'YuanHuiQu ', null, '4', '462000', '源汇区');
INSERT INTO `area_tb` VALUES ('411103', null, null, null, '1', null, null, null, '411100', null, 'ycq', 'ZuoChengQu', null, '4', '462300', '郾城区');
INSERT INTO `area_tb` VALUES ('411104', null, null, null, '1', null, null, null, '411100', null, 'zlq', 'ZhaoLingQu', null, '4', '462300', '召陵区');
INSERT INTO `area_tb` VALUES ('411121', null, null, null, '1', null, null, null, '411100', null, 'wyx', 'WuYangXian', null, '4', '462400', '舞阳县');
INSERT INTO `area_tb` VALUES ('411122', null, null, null, '1', null, null, null, '411100', null, 'lyx', 'LinZuoXian', null, '4', '462600', '临颍县');
INSERT INTO `area_tb` VALUES ('411123', null, null, null, '1', null, null, null, '411100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411200', null, null, null, '1', null, null, null, '410000', null, 'smxs', 'SanMenXiaShi  ', null, '3', '472000', '三门峡市');
INSERT INTO `area_tb` VALUES ('411202', null, null, null, '1', null, null, null, '411200', null, 'hbq', 'HuBinQu   ', null, '4', '472000', '湖滨区');
INSERT INTO `area_tb` VALUES ('411221', null, null, null, '1', null, null, null, '411200', null, 'mcx', 'ZuoChiXian', null, '4', '472400', '渑池县');
INSERT INTO `area_tb` VALUES ('411222', null, null, null, '1', null, null, null, '411200', null, 'sx', 'ShanXian  ', null, '4', '472100', '陕县');
INSERT INTO `area_tb` VALUES ('411224', null, null, null, '1', null, null, null, '411200', null, 'lsx', 'LuShiXian ', null, '4', '472200', '卢氏县');
INSERT INTO `area_tb` VALUES ('411281', null, null, null, '1', null, null, null, '411200', null, 'yms', 'YiMaShi   ', null, '4', '472300', '义马市');
INSERT INTO `area_tb` VALUES ('411282', null, null, null, '1', null, null, null, '411200', null, 'lbs', 'LingBaoShi', null, '4', '472500', '灵宝市');
INSERT INTO `area_tb` VALUES ('411283', null, null, null, '1', null, null, null, '411200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411300', null, null, null, '1', null, null, null, '410000', null, 'nys', 'NanYangShi', null, '3', '473000', '南阳市');
INSERT INTO `area_tb` VALUES ('411302', null, null, null, '1', null, null, null, '411300', null, 'wcq', 'WanChengQu', null, '4', '473001', '宛城区');
INSERT INTO `area_tb` VALUES ('411303', null, null, null, '1', null, null, null, '411300', null, 'wlq', 'WoLongQu  ', null, '4', '473003', '卧龙区');
INSERT INTO `area_tb` VALUES ('411321', null, null, null, '1', null, null, null, '411300', null, 'nzx', 'NanZhaoXian   ', null, '4', '474650', '南召县');
INSERT INTO `area_tb` VALUES ('411322', null, null, null, '1', null, null, null, '411300', null, 'fcx', 'FangChengXian ', null, '4', '473200', '方城县');
INSERT INTO `area_tb` VALUES ('411323', null, null, null, '1', null, null, null, '411300', null, 'xxx', 'XiXiaXian ', null, '4', '474550', '西峡县');
INSERT INTO `area_tb` VALUES ('411324', null, null, null, '1', null, null, null, '411300', null, 'zpx', 'ZhenPingXian  ', null, '4', '474250', '镇平县');
INSERT INTO `area_tb` VALUES ('411325', null, null, null, '1', null, null, null, '411300', null, 'nxx', 'NeiXiangXian  ', null, '4', '474350', '内乡县');
INSERT INTO `area_tb` VALUES ('411326', null, null, null, '1', null, null, null, '411300', null, 'xcx', 'ZuoChuanXian  ', null, '4', '474450', '淅川县');
INSERT INTO `area_tb` VALUES ('411327', null, null, null, '1', null, null, null, '411300', null, 'sqx', 'SheQiXian ', null, '4', '473300', '社旗县');
INSERT INTO `area_tb` VALUES ('411328', null, null, null, '1', null, null, null, '411300', null, 'thx', 'TangHeXian', null, '4', '473400', '唐河县');
INSERT INTO `area_tb` VALUES ('411329', null, null, null, '1', null, null, null, '411300', null, 'xyx', 'XinYeXian ', null, '4', '473500', '新野县');
INSERT INTO `area_tb` VALUES ('411330', null, null, null, '1', null, null, null, '411300', null, 'tbx', 'TongBaiXian   ', null, '4', '474750', '桐柏县');
INSERT INTO `area_tb` VALUES ('411381', null, null, null, '1', null, null, null, '411300', null, 'dzs', 'DengZhouShi   ', null, '4', '474150', '邓州市');
INSERT INTO `area_tb` VALUES ('411382', null, null, null, '1', null, null, null, '411300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411400', null, null, null, '1', null, null, null, '410000', null, 'sqs', 'ShangQiuShi   ', null, '3', '476000', '商丘市');
INSERT INTO `area_tb` VALUES ('411402', null, null, null, '1', null, null, null, '411400', null, 'lyq', 'LiangYuanQu   ', null, '4', '476000', '梁园区');
INSERT INTO `area_tb` VALUES ('411403', null, null, null, '1', null, null, null, '411400', null, 'syq', 'ZuoYangQu ', null, '4', '476100', '睢阳区');
INSERT INTO `area_tb` VALUES ('411421', null, null, null, '1', null, null, null, '411400', null, 'mqx', 'MinQuanXian   ', null, '4', '476800', '民权县');
INSERT INTO `area_tb` VALUES ('411422', null, null, null, '1', null, null, null, '411400', null, 'sx', 'ZuoXian   ', null, '4', '476900', '睢县');
INSERT INTO `area_tb` VALUES ('411423', null, null, null, '1', null, null, null, '411400', null, 'nlx', 'NingLingXian  ', null, '4', '476700', '宁陵县');
INSERT INTO `area_tb` VALUES ('411424', null, null, null, '1', null, null, null, '411400', null, 'zcx', 'ZuoChengXian  ', null, '4', '476200', '柘城县');
INSERT INTO `area_tb` VALUES ('411425', null, null, null, '1', null, null, null, '411400', null, 'ycx', 'YuChengXian   ', null, '4', '476300', '虞城县');
INSERT INTO `area_tb` VALUES ('411426', null, null, null, '1', null, null, null, '411400', null, 'xyx', 'XiaYiXian ', null, '4', '476400', '夏邑县');
INSERT INTO `area_tb` VALUES ('411481', null, null, null, '1', null, null, null, '411400', null, 'ycs', 'YongChengShi  ', null, '4', '476600', '永城市');
INSERT INTO `area_tb` VALUES ('411482', null, null, null, '1', null, null, null, '411400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411500', null, null, null, '1', null, null, null, '410000', null, 'xys', 'XinYangShi', null, '3', '464000', '信阳市');
INSERT INTO `area_tb` VALUES ('411502', null, null, null, '1', null, null, null, '411500', null, 'shq', 'HeQu  ', null, '4', '464000', '浉河区');
INSERT INTO `area_tb` VALUES ('411503', null, null, null, '1', null, null, null, '411500', null, 'pqq', 'PingQiaoQu', null, '4', '464100', '平桥区');
INSERT INTO `area_tb` VALUES ('411521', null, null, null, '1', null, null, null, '411500', null, 'lsx', 'LuoShanXian   ', null, '4', '464200', '罗山县');
INSERT INTO `area_tb` VALUES ('411522', null, null, null, '1', null, null, null, '411500', null, 'gsx', 'GuangShanXian ', null, '4', '465450', '光山县');
INSERT INTO `area_tb` VALUES ('411523', null, null, null, '1', null, null, null, '411500', null, 'xx', 'XinXian   ', null, '4', '465550', '新县');
INSERT INTO `area_tb` VALUES ('411524', null, null, null, '1', null, null, null, '411500', null, 'scx', 'ShangChengXian', null, '4', '465350', '商城县');
INSERT INTO `area_tb` VALUES ('411525', null, null, null, '1', null, null, null, '411500', null, 'gsx', 'GuShiXian ', null, '4', '465200', '固始县');
INSERT INTO `area_tb` VALUES ('411526', null, null, null, '1', null, null, null, '411500', null, 'hcx', 'ZuoChuanXian  ', null, '4', '465150', '潢川县');
INSERT INTO `area_tb` VALUES ('411527', null, null, null, '1', null, null, null, '411500', null, 'hbx', 'HuaiBinXian   ', null, '4', '464400', '淮滨县');
INSERT INTO `area_tb` VALUES ('411528', null, null, null, '1', null, null, null, '411500', null, 'xx', 'XiXian', null, '4', '464300', '息县');
INSERT INTO `area_tb` VALUES ('411529', null, null, null, '1', null, null, null, '411500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411600', null, null, null, '1', null, null, null, '410000', null, 'zks', 'ZhouKouShi', null, '3', '466000', '周口市');
INSERT INTO `area_tb` VALUES ('411602', null, null, null, '1', null, null, null, '411600', null, 'chq', 'ChuanHuiQu', null, '4', '466000', '川汇区');
INSERT INTO `area_tb` VALUES ('411621', null, null, null, '1', null, null, null, '411600', null, 'fgx', 'FuGouXian ', null, '4', '461300', '扶沟县');
INSERT INTO `area_tb` VALUES ('411622', null, null, null, '1', null, null, null, '411600', null, 'xhx', 'XiHuaXian ', null, '4', '466600', '西华县');
INSERT INTO `area_tb` VALUES ('411623', null, null, null, '1', null, null, null, '411600', null, 'ssx', 'ShangShuiXian ', null, '4', '466100', '商水县');
INSERT INTO `area_tb` VALUES ('411624', null, null, null, '1', null, null, null, '411600', null, 'sqx', 'ShenQiuXian   ', null, '4', '466300', '沈丘县');
INSERT INTO `area_tb` VALUES ('411625', null, null, null, '1', null, null, null, '411600', null, 'dcx', 'DanChengXian  ', null, '4', '477150', '郸城县');
INSERT INTO `area_tb` VALUES ('411626', null, null, null, '1', null, null, null, '411600', null, 'hyx', 'HuaiYangXian  ', null, '4', '466700', '淮阳县');
INSERT INTO `area_tb` VALUES ('411627', null, null, null, '1', null, null, null, '411600', null, 'tkx', 'TaiKangXian   ', null, '4', '475400', '太康县');
INSERT INTO `area_tb` VALUES ('411628', null, null, null, '1', null, null, null, '411600', null, 'lyx', 'LuYiXian  ', null, '4', '477200', '鹿邑县');
INSERT INTO `area_tb` VALUES ('411681', null, null, null, '1', null, null, null, '411600', null, 'xcs', 'XiangChengShi ', null, '4', '466200', '项城市');
INSERT INTO `area_tb` VALUES ('411682', null, null, null, '1', null, null, null, '411600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('411700', null, null, null, '1', null, null, null, '410000', null, 'zmds', 'ZhuMaDianShi  ', null, '3', '463000', '驻马店市');
INSERT INTO `area_tb` VALUES ('411702', null, null, null, '1', null, null, null, '411700', null, 'ycq', 'ZuoChengQu', null, '4', '463000', '驿城区');
INSERT INTO `area_tb` VALUES ('411721', null, null, null, '1', null, null, null, '411700', null, 'xpx', 'XiPingXian', null, '4', '463900', '西平县');
INSERT INTO `area_tb` VALUES ('411722', null, null, null, '1', null, null, null, '411700', null, 'scx', 'ShangCaiXian  ', null, '4', '463800', '上蔡县');
INSERT INTO `area_tb` VALUES ('411723', null, null, null, '1', null, null, null, '411700', null, 'pyx', 'PingYuXian', null, '4', '463400', '平舆县');
INSERT INTO `area_tb` VALUES ('411724', null, null, null, '1', null, null, null, '411700', null, 'zyx', 'ZhengYangXian ', null, '4', '463600', '正阳县');
INSERT INTO `area_tb` VALUES ('411725', null, null, null, '1', null, null, null, '411700', null, 'qsx', 'QueShanXian   ', null, '4', '463200', '确山县');
INSERT INTO `area_tb` VALUES ('411726', null, null, null, '1', null, null, null, '411700', null, 'myx', 'MiYangXian', null, '4', '463700', '泌阳县');
INSERT INTO `area_tb` VALUES ('411727', null, null, null, '1', null, null, null, '411700', null, 'rnx', 'RuNanXian ', null, '4', '463300', '汝南县');
INSERT INTO `area_tb` VALUES ('411728', null, null, null, '1', null, null, null, '411700', null, 'spx', 'SuiPingXian   ', null, '4', '463100', '遂平县');
INSERT INTO `area_tb` VALUES ('411729', null, null, null, '1', null, null, null, '411700', null, 'xcx', 'XinCaiXian', null, '4', '463500', '新蔡县');
INSERT INTO `area_tb` VALUES ('411730', null, null, null, '1', null, null, null, '411700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420000', null, null, null, '1', null, null, null, '1', null, 'hbs', 'HuBeiSheng', null, '2', '', '湖北省');
INSERT INTO `area_tb` VALUES ('420100', null, null, null, '1', null, null, null, '420000', null, 'whs', 'WuHanShi  ', null, '3', '430000', '武汉市');
INSERT INTO `area_tb` VALUES ('420102', null, null, null, '1', null, null, null, '420100', null, 'jaq', 'JiangAnQu ', null, '4', '430014', '江岸区');
INSERT INTO `area_tb` VALUES ('420103', null, null, null, '1', null, null, null, '420100', null, 'jhq', 'JiangHanQu', null, '4', '430015', '江汉区');
INSERT INTO `area_tb` VALUES ('420104', null, null, null, '1', null, null, null, '420100', null, 'ckq', 'ChangKouQu', null, '4', '430033', '硚口区');
INSERT INTO `area_tb` VALUES ('420105', null, null, null, '1', null, null, null, '420100', null, 'hyq', 'HanYangQu ', null, '4', '430050', '汉阳区');
INSERT INTO `area_tb` VALUES ('420106', null, null, null, '1', null, null, null, '420100', null, 'wcq', 'WuChangQu ', null, '4', '430061', '武昌区');
INSERT INTO `area_tb` VALUES ('420107', null, null, null, '1', null, null, null, '420100', null, 'qsq', 'QingShanQu', null, '4', '430080', '青山区');
INSERT INTO `area_tb` VALUES ('420111', null, null, null, '1', null, null, null, '420100', null, 'hsq', 'HongShanQu', null, '4', '430070', '洪山区');
INSERT INTO `area_tb` VALUES ('420112', null, null, null, '1', null, null, null, '420100', null, 'dxhq', 'DongXiHuQu', null, '4', '430040', '东西湖区');
INSERT INTO `area_tb` VALUES ('420113', null, null, null, '1', null, null, null, '420100', null, 'hnq', 'HanNanQu  ', null, '4', '430090', '汉南区');
INSERT INTO `area_tb` VALUES ('420114', null, null, null, '1', null, null, null, '420100', null, 'cdq', 'CaiDianQu ', null, '4', '430100', '蔡甸区');
INSERT INTO `area_tb` VALUES ('420115', null, null, null, '1', null, null, null, '420100', null, 'jxq', 'JiangXiaQu', null, '4', '430200', '江夏区');
INSERT INTO `area_tb` VALUES ('420116', null, null, null, '1', null, null, null, '420100', null, 'hbq', 'HuangZuoQu', null, '4', '430300', '黄陂区');
INSERT INTO `area_tb` VALUES ('420117', null, null, null, '1', null, null, null, '420100', null, 'xzq', 'XinZhouQu ', null, '4', '431400', '新洲区');
INSERT INTO `area_tb` VALUES ('420118', null, null, null, '1', null, null, null, '420100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420200', null, null, null, '1', null, null, null, '420000', null, 'hss', 'HuangShiShi   ', null, '3', '435000', '黄石市');
INSERT INTO `area_tb` VALUES ('420202', null, null, null, '1', null, null, null, '420200', null, 'hsgq', 'HuangShiGangQu', null, '4', '435002', '黄石港区');
INSERT INTO `area_tb` VALUES ('420203', null, null, null, '1', null, null, null, '420200', null, 'xssq', 'XiSaiShanQu   ', null, '4', '435001', '西塞山区');
INSERT INTO `area_tb` VALUES ('420204', null, null, null, '1', null, null, null, '420200', null, 'xlq', 'XiaLuQu   ', null, '4', '435004', '下陆区');
INSERT INTO `area_tb` VALUES ('420205', null, null, null, '1', null, null, null, '420200', null, 'tsq', 'TieShanQu ', null, '4', '435006', '铁山区');
INSERT INTO `area_tb` VALUES ('420222', null, null, null, '1', null, null, null, '420200', null, 'yxx', 'YangXinXian   ', null, '4', '435200', '阳新县');
INSERT INTO `area_tb` VALUES ('420281', null, null, null, '1', null, null, null, '420200', null, 'dys', 'DaYeShi   ', null, '4', '435100', '大冶市');
INSERT INTO `area_tb` VALUES ('420282', null, null, null, '1', null, null, null, '420200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420300', null, null, null, '1', null, null, null, '420000', null, 'sys', 'ShiYanShi ', null, '3', '442000', '十堰市');
INSERT INTO `area_tb` VALUES ('420302', null, null, null, '1', null, null, null, '420300', null, 'mjq', 'MaoJianQu ', null, '4', '442012', '茅箭区');
INSERT INTO `area_tb` VALUES ('420303', null, null, null, '1', null, null, null, '420300', null, 'zwq', 'ZhangWanQu', null, '4', '442001', '张湾区');
INSERT INTO `area_tb` VALUES ('420321', null, null, null, '1', null, null, null, '420300', null, 'yx', 'YunXian   ', null, '4', '442500', '郧县');
INSERT INTO `area_tb` VALUES ('420322', null, null, null, '1', null, null, null, '420300', null, 'yxx', 'YunXiXian ', null, '4', '442600', '郧西县');
INSERT INTO `area_tb` VALUES ('420323', null, null, null, '1', null, null, null, '420300', null, 'zsx', 'ZhuShanXian   ', null, '4', '442200', '竹山县');
INSERT INTO `area_tb` VALUES ('420324', null, null, null, '1', null, null, null, '420300', null, 'zxx', 'ZhuXiXian ', null, '4', '442300', '竹溪县');
INSERT INTO `area_tb` VALUES ('420325', null, null, null, '1', null, null, null, '420300', null, 'fx', 'FangXian  ', null, '4', '442100', '房县');
INSERT INTO `area_tb` VALUES ('420381', null, null, null, '1', null, null, null, '420300', null, 'djks', 'DanJiangKouShi', null, '4', '441900', '丹江口市');
INSERT INTO `area_tb` VALUES ('420382', null, null, null, '1', null, null, null, '420300', null, 'cq', 'ChengQu   ', null, '4', '', '城区');
INSERT INTO `area_tb` VALUES ('420383', null, null, null, '1', null, null, null, '420300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420500', null, null, null, '1', null, null, null, '420000', null, 'ycs', 'YiChangShi', null, '3', '443000', '宜昌市');
INSERT INTO `area_tb` VALUES ('420502', null, null, null, '1', null, null, null, '420500', null, 'xlq', 'XiLingQu  ', null, '4', '443000', '西陵区');
INSERT INTO `area_tb` VALUES ('420503', null, null, null, '1', null, null, null, '420500', null, 'wjgq', 'WuJiaGangQu   ', null, '4', '443001', '伍家岗区');
INSERT INTO `area_tb` VALUES ('420504', null, null, null, '1', null, null, null, '420500', null, 'djq', 'DianJunQu ', null, '4', '443006', '点军区');
INSERT INTO `area_tb` VALUES ('420505', null, null, null, '1', null, null, null, '420500', null, 'xtq', 'TingQu', null, '4', '443007', '猇亭区');
INSERT INTO `area_tb` VALUES ('420506', null, null, null, '1', null, null, null, '420500', null, 'ylq', 'YiLingQu  ', null, '4', '443100', '夷陵区');
INSERT INTO `area_tb` VALUES ('420525', null, null, null, '1', null, null, null, '420500', null, 'yax', 'YuanAnXian', null, '4', '444200', '远安县');
INSERT INTO `area_tb` VALUES ('420526', null, null, null, '1', null, null, null, '420500', null, 'xsx', 'XingShanXian  ', null, '4', '443700', '兴山县');
INSERT INTO `area_tb` VALUES ('420527', null, null, null, '1', null, null, null, '420500', null, 'zgx', 'ZuoGuiXian', null, '4', '443600', '秭归县');
INSERT INTO `area_tb` VALUES ('420528', null, null, null, '1', null, null, null, '420500', null, 'cytjzzzx', 'ChangYangTuJiaZuZiZhiXian ', null, '4', '443500', '长阳土家族自治县');
INSERT INTO `area_tb` VALUES ('420529', null, null, null, '1', null, null, null, '420500', null, 'wftjzzzx', 'WuFengTuJiaZuZiZhiXian', null, '4', '443400', '五峰土家族自治县');
INSERT INTO `area_tb` VALUES ('420551', null, null, null, '1', null, null, null, '420500', null, 'gzbq', 'GeZhouBaQu', null, '4', '', '葛洲坝区');
INSERT INTO `area_tb` VALUES ('420552', null, null, null, '1', null, null, null, '420500', null, 'kfq', 'KaiFaQu   ', null, '4', '', '开发区');
INSERT INTO `area_tb` VALUES ('420581', null, null, null, '1', null, null, null, '420500', null, 'yds', 'YiDuShi   ', null, '4', '443300', '宜都市');
INSERT INTO `area_tb` VALUES ('420582', null, null, null, '1', null, null, null, '420500', null, 'dys', 'DangYangShi   ', null, '4', '444100', '当阳市');
INSERT INTO `area_tb` VALUES ('420583', null, null, null, '1', null, null, null, '420500', null, 'zjs', 'ZhiJiangShi   ', null, '4', '443200', '枝江市');
INSERT INTO `area_tb` VALUES ('420584', null, null, null, '1', null, null, null, '420500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420600', null, null, null, '1', null, null, null, '420000', null, 'xfs', 'XiangFanShi   ', null, '3', '441000', '襄樊市');
INSERT INTO `area_tb` VALUES ('420602', null, null, null, '1', null, null, null, '420600', null, 'xcq', 'XiangChengQu  ', null, '4', '441021', '襄城区');
INSERT INTO `area_tb` VALUES ('420606', null, null, null, '1', null, null, null, '420600', null, 'fcq', 'FanChengQu', null, '4', '441001', '樊城区');
INSERT INTO `area_tb` VALUES ('420607', null, null, null, '1', null, null, null, '420600', null, 'xyq', 'XiangYangQu   ', null, '4', '441100', '襄阳区');
INSERT INTO `area_tb` VALUES ('420624', null, null, null, '1', null, null, null, '420600', null, 'nzx', 'NanZhangXian  ', null, '4', '441500', '南漳县');
INSERT INTO `area_tb` VALUES ('420625', null, null, null, '1', null, null, null, '420600', null, 'gcx', 'GuChengXian   ', null, '4', '441700', '谷城县');
INSERT INTO `area_tb` VALUES ('420626', null, null, null, '1', null, null, null, '420600', null, 'bkx', 'BaoKangXian   ', null, '4', '441600', '保康县');
INSERT INTO `area_tb` VALUES ('420682', null, null, null, '1', null, null, null, '420600', null, 'lhks', 'LaoHeKouShi   ', null, '4', '441800', '老河口市');
INSERT INTO `area_tb` VALUES ('420683', null, null, null, '1', null, null, null, '420600', null, 'zys', 'ZaoYangShi', null, '4', '441200', '枣阳市');
INSERT INTO `area_tb` VALUES ('420684', null, null, null, '1', null, null, null, '420600', null, 'ycs', 'YiChengShi', null, '4', '441400', '宜城市');
INSERT INTO `area_tb` VALUES ('420685', null, null, null, '1', null, null, null, '420600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420700', null, null, null, '1', null, null, null, '420000', null, 'ezs', 'EZhouShi  ', null, '3', '436000', '鄂州市');
INSERT INTO `area_tb` VALUES ('420702', null, null, null, '1', null, null, null, '420700', null, 'lzhq', 'LiangZiHuQu   ', null, '4', '436064', '梁子湖区');
INSERT INTO `area_tb` VALUES ('420703', null, null, null, '1', null, null, null, '420700', null, 'hrq', 'HuaRongQu ', null, '4', '436030', '华容区');
INSERT INTO `area_tb` VALUES ('420704', null, null, null, '1', null, null, null, '420700', null, 'ecq', 'EChengQu  ', null, '4', '436000', '鄂城区');
INSERT INTO `area_tb` VALUES ('420705', null, null, null, '1', null, null, null, '420700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420800', null, null, null, '1', null, null, null, '420000', null, 'jms', 'JingMenShi', null, '3', '448000', '荆门市');
INSERT INTO `area_tb` VALUES ('420802', null, null, null, '1', null, null, null, '420800', null, 'dbq', 'DongBaoQu ', null, '4', '448004', '东宝区');
INSERT INTO `area_tb` VALUES ('420804', null, null, null, '1', null, null, null, '420800', null, 'ddq', 'DuoDaoQu  ', null, '4', '448124', '掇刀区');
INSERT INTO `area_tb` VALUES ('420821', null, null, null, '1', null, null, null, '420800', null, 'jsx', 'JingShanXian  ', null, '4', '431800', '京山县');
INSERT INTO `area_tb` VALUES ('420822', null, null, null, '1', null, null, null, '420800', null, 'syx', 'ShaYangXian   ', null, '4', '448200', '沙洋县');
INSERT INTO `area_tb` VALUES ('420881', null, null, null, '1', null, null, null, '420800', null, 'zxs', 'ZhongXiangShi ', null, '4', '431900', '钟祥市');
INSERT INTO `area_tb` VALUES ('420882', null, null, null, '1', null, null, null, '420800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('420900', null, null, null, '1', null, null, null, '420000', null, 'xgs', 'XiaoGanShi', null, '3', '432000', '孝感市');
INSERT INTO `area_tb` VALUES ('420902', null, null, null, '1', null, null, null, '420900', null, 'xnq', 'XiaoNanQu ', null, '4', '432100', '孝南区');
INSERT INTO `area_tb` VALUES ('420921', null, null, null, '1', null, null, null, '420900', null, 'xcx', 'XiaoChangXian ', null, '4', '432900', '孝昌县');
INSERT INTO `area_tb` VALUES ('420922', null, null, null, '1', null, null, null, '420900', null, 'dwx', 'DaWuXian  ', null, '4', '432800', '大悟县');
INSERT INTO `area_tb` VALUES ('420923', null, null, null, '1', null, null, null, '420900', null, 'ymx', 'YunMengXian   ', null, '4', '432500', '云梦县');
INSERT INTO `area_tb` VALUES ('420981', null, null, null, '1', null, null, null, '420900', null, 'ycs', 'YingChengShi  ', null, '4', '432400', '应城市');
INSERT INTO `area_tb` VALUES ('420982', null, null, null, '1', null, null, null, '420900', null, 'als', 'AnLuShi   ', null, '4', '432600', '安陆市');
INSERT INTO `area_tb` VALUES ('420984', null, null, null, '1', null, null, null, '420900', null, 'hcs', 'HanChuanShi   ', null, '4', '431600', '汉川市');
INSERT INTO `area_tb` VALUES ('420985', null, null, null, '1', null, null, null, '420900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('421000', null, null, null, '1', null, null, null, '420000', null, 'jzs', 'JingZhouShi   ', null, '3', '434000', '荆州市');
INSERT INTO `area_tb` VALUES ('421002', null, null, null, '1', null, null, null, '421000', null, 'ssq', 'ShaShiQu  ', null, '4', '434000', '沙市区');
INSERT INTO `area_tb` VALUES ('421003', null, null, null, '1', null, null, null, '421000', null, 'jzq', 'JingZhouQu', null, '4', '434020', '荆州区');
INSERT INTO `area_tb` VALUES ('421022', null, null, null, '1', null, null, null, '421000', null, 'gax', 'GongAnXian', null, '4', '434300', '公安县');
INSERT INTO `area_tb` VALUES ('421023', null, null, null, '1', null, null, null, '421000', null, 'jlx', 'JianLiXian', null, '4', '433300', '监利县');
INSERT INTO `area_tb` VALUES ('421024', null, null, null, '1', null, null, null, '421000', null, 'jlx', 'JiangLingXian ', null, '4', '434100', '江陵县');
INSERT INTO `area_tb` VALUES ('421081', null, null, null, '1', null, null, null, '421000', null, 'sss', 'ShiShouShi', null, '4', '434400', '石首市');
INSERT INTO `area_tb` VALUES ('421083', null, null, null, '1', null, null, null, '421000', null, 'hhs', 'HongHuShi ', null, '4', '433200', '洪湖市');
INSERT INTO `area_tb` VALUES ('421087', null, null, null, '1', null, null, null, '421000', null, 'szs', 'SongZiShi ', null, '4', '434200', '松滋市');
INSERT INTO `area_tb` VALUES ('421088', null, null, null, '1', null, null, null, '421000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('421100', null, null, null, '1', null, null, null, '420000', null, 'hgs', 'HuangGangShi  ', null, '3', '438000', '黄冈市');
INSERT INTO `area_tb` VALUES ('421102', null, null, null, '1', null, null, null, '421100', null, 'hzq', 'HuangZhouQu   ', null, '4', '438000', '黄州区');
INSERT INTO `area_tb` VALUES ('421121', null, null, null, '1', null, null, null, '421100', null, 'tfx', 'TuanFengXian  ', null, '4', '438000', '团风县');
INSERT INTO `area_tb` VALUES ('421122', null, null, null, '1', null, null, null, '421100', null, 'hax', 'HongAnXian', null, '4', '431500', '红安县');
INSERT INTO `area_tb` VALUES ('421123', null, null, null, '1', null, null, null, '421100', null, 'ltx', 'LuoTianXian   ', null, '4', '438600', '罗田县');
INSERT INTO `area_tb` VALUES ('421124', null, null, null, '1', null, null, null, '421100', null, 'ysx', 'YingShanXian  ', null, '4', '438700', '英山县');
INSERT INTO `area_tb` VALUES ('421125', null, null, null, '1', null, null, null, '421100', null, 'xsx', 'ZuoShuiXian   ', null, '4', '438200', '浠水县');
INSERT INTO `area_tb` VALUES ('421126', null, null, null, '1', null, null, null, '421100', null, 'qcx', 'ZuoChunXian   ', null, '4', '436300', '蕲春县');
INSERT INTO `area_tb` VALUES ('421127', null, null, null, '1', null, null, null, '421100', null, 'hmx', 'HuangMeiXian  ', null, '4', '435500', '黄梅县');
INSERT INTO `area_tb` VALUES ('421181', null, null, null, '1', null, null, null, '421100', null, 'mcs', 'MaChengShi', null, '4', '438300', '麻城市');
INSERT INTO `area_tb` VALUES ('421182', null, null, null, '1', null, null, null, '421100', null, 'wxs', 'WuXueShi  ', null, '4', '435400', '武穴市');
INSERT INTO `area_tb` VALUES ('421183', null, null, null, '1', null, null, null, '421100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('421200', null, null, null, '1', null, null, null, '420000', null, 'xns', 'XianNingShi   ', null, '3', '437100', '咸宁市');
INSERT INTO `area_tb` VALUES ('421202', null, null, null, '1', null, null, null, '421200', null, 'xaq', 'XianAnQu  ', null, '4', '437000', '咸安区');
INSERT INTO `area_tb` VALUES ('421221', null, null, null, '1', null, null, null, '421200', null, 'jyx', 'JiaYuXian ', null, '4', '437200', '嘉鱼县');
INSERT INTO `area_tb` VALUES ('421222', null, null, null, '1', null, null, null, '421200', null, 'tcx', 'TongChengXian ', null, '4', '437400', '通城县');
INSERT INTO `area_tb` VALUES ('421223', null, null, null, '1', null, null, null, '421200', null, 'cyx', 'ChongYangXian ', null, '4', '437500', '崇阳县');
INSERT INTO `area_tb` VALUES ('421224', null, null, null, '1', null, null, null, '421200', null, 'tsx', 'TongShanXian  ', null, '4', '437600', '通山县');
INSERT INTO `area_tb` VALUES ('421281', null, null, null, '1', null, null, null, '421200', null, 'cbs', 'ChiBiShi  ', null, '4', '437300', '赤壁市');
INSERT INTO `area_tb` VALUES ('421282', null, null, null, '1', null, null, null, '421200', null, 'wqcq', 'WenQuanChengQu', null, '4', '', '温泉城区');
INSERT INTO `area_tb` VALUES ('421283', null, null, null, '1', null, null, null, '421200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('421300', null, null, null, '1', null, null, null, '420000', null, 'szs', 'SuiZhouShi', null, '3', '441300', '随州市');
INSERT INTO `area_tb` VALUES ('421302', null, null, null, '1', null, null, null, '421300', null, 'zdq', 'ZengDuQu  ', null, '4', '441300', '曾都区');
INSERT INTO `area_tb` VALUES ('421381', null, null, null, '1', null, null, null, '421300', null, 'gss', 'GuangShuiShi  ', null, '4', '432700', '广水市');
INSERT INTO `area_tb` VALUES ('421382', null, null, null, '1', null, null, null, '421300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('422800', null, null, null, '1', null, null, null, '420000', null, 'estjzmzzzz', 'EnShiTuJiaZuMiaoZuZiZhiZhou   ', null, '3', '', '恩施土家族苗族自治州');
INSERT INTO `area_tb` VALUES ('422801', null, null, null, '1', null, null, null, '422800', null, 'ess', 'EnShiShi  ', null, '4', '445000', '恩施市');
INSERT INTO `area_tb` VALUES ('422802', null, null, null, '1', null, null, null, '422800', null, 'lcs', 'LiChuanShi', null, '4', '445400', '利川市');
INSERT INTO `area_tb` VALUES ('422822', null, null, null, '1', null, null, null, '422800', null, 'jsx', 'JianShiXian   ', null, '4', '445300', '建始县');
INSERT INTO `area_tb` VALUES ('422823', null, null, null, '1', null, null, null, '422800', null, 'bdx', 'BaDongXian', null, '4', '444300', '巴东县');
INSERT INTO `area_tb` VALUES ('422825', null, null, null, '1', null, null, null, '422800', null, 'xex', 'XuanEnXian', null, '4', '445500', '宣恩县');
INSERT INTO `area_tb` VALUES ('422826', null, null, null, '1', null, null, null, '422800', null, 'xfx', 'XianFengXian  ', null, '4', '445600', '咸丰县');
INSERT INTO `area_tb` VALUES ('422827', null, null, null, '1', null, null, null, '422800', null, 'lfx', 'LaiFengXian   ', null, '4', '445700', '来凤县');
INSERT INTO `area_tb` VALUES ('422828', null, null, null, '1', null, null, null, '422800', null, 'hfx', 'HeFengXian', null, '4', '445800', '鹤峰县');
INSERT INTO `area_tb` VALUES ('422829', null, null, null, '1', null, null, null, '422800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('429004', null, null, null, '1', null, null, null, '420000', null, 'xts', 'XianTaoShi', null, '4', '433000', '仙桃市');
INSERT INTO `area_tb` VALUES ('429005', null, null, null, '1', null, null, null, '420000', null, 'qjs', 'QianJiangShi  ', null, '4', '433100', '潜江市');
INSERT INTO `area_tb` VALUES ('429006', null, null, null, '1', null, null, null, '420000', null, 'tms', 'TianMenShi', null, '4', '431700', '天门市');
INSERT INTO `area_tb` VALUES ('429021', null, null, null, '1', null, null, null, '420000', null, 'snjlq', 'ShenNongJiaLinQu  ', null, '4', '442400', '神农架林区');
INSERT INTO `area_tb` VALUES ('430000', null, null, null, '1', null, null, null, '1', null, 'hns', 'HuNanSheng', null, '2', '', '湖南省');
INSERT INTO `area_tb` VALUES ('430100', null, null, null, '1', null, null, null, '430000', null, 'css', 'ChangShaShi   ', null, '3', '410000', '长沙市');
INSERT INTO `area_tb` VALUES ('430102', null, null, null, '1', null, null, null, '430100', null, 'frq', 'ZuoRongQu ', null, '4', '410006', '芙蓉区');
INSERT INTO `area_tb` VALUES ('430103', null, null, null, '1', null, null, null, '430100', null, 'txq', 'TianXinQu ', null, '4', '410002', '天心区');
INSERT INTO `area_tb` VALUES ('430104', null, null, null, '1', null, null, null, '430100', null, 'ylq', 'YueLuQu   ', null, '4', '410006', '岳麓区');
INSERT INTO `area_tb` VALUES ('430105', null, null, null, '1', null, null, null, '430100', null, 'kfq', 'KaiFuQu   ', null, '4', '410005', '开福区');
INSERT INTO `area_tb` VALUES ('430111', null, null, null, '1', null, null, null, '430100', null, 'yhq', 'YuHuaQu   ', null, '4', '410007', '雨花区');
INSERT INTO `area_tb` VALUES ('430121', null, null, null, '1', null, null, null, '430100', null, 'csx', 'ChangShaXian  ', null, '4', '410100', '长沙县');
INSERT INTO `area_tb` VALUES ('430122', null, null, null, '1', null, null, null, '430100', null, 'wcx', 'WangChengXian ', null, '4', '410200', '望城县');
INSERT INTO `area_tb` VALUES ('430124', null, null, null, '1', null, null, null, '430100', null, 'nxx', 'NingXiangXian ', null, '4', '410600', '宁乡县');
INSERT INTO `area_tb` VALUES ('430181', null, null, null, '1', null, null, null, '430100', null, 'lys', 'ZuoYangShi', null, '4', '410300', '浏阳市');
INSERT INTO `area_tb` VALUES ('430182', null, null, null, '1', null, null, null, '430100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430200', null, null, null, '1', null, null, null, '430000', null, 'zzs', 'ZhuZhouShi', null, '3', '412000', '株洲市');
INSERT INTO `area_tb` VALUES ('430202', null, null, null, '1', null, null, null, '430200', null, 'htq', 'HeTangQu  ', null, '4', '412000', '荷塘区');
INSERT INTO `area_tb` VALUES ('430203', null, null, null, '1', null, null, null, '430200', null, 'lsq', 'LuZuoQu   ', null, '4', '412000', '芦淞区');
INSERT INTO `area_tb` VALUES ('430204', null, null, null, '1', null, null, null, '430200', null, 'sfq', 'ShiFengQu ', null, '4', '412005', '石峰区');
INSERT INTO `area_tb` VALUES ('430211', null, null, null, '1', null, null, null, '430200', null, 'tyq', 'TianYuanQu', null, '4', '412000', '天元区');
INSERT INTO `area_tb` VALUES ('430221', null, null, null, '1', null, null, null, '430200', null, 'zzx', 'ZhuZhouXian   ', null, '4', '412100', '株洲县');
INSERT INTO `area_tb` VALUES ('430223', null, null, null, '1', null, null, null, '430200', null, 'yx', 'ZuoXian   ', null, '4', '412300', '攸县');
INSERT INTO `area_tb` VALUES ('430224', null, null, null, '1', null, null, null, '430200', null, 'clx', 'ChaLingXian   ', null, '4', '412400', '茶陵县');
INSERT INTO `area_tb` VALUES ('430225', null, null, null, '1', null, null, null, '430200', null, 'ylx', 'YanLingXian   ', null, '4', '412500', '炎陵县');
INSERT INTO `area_tb` VALUES ('430281', null, null, null, '1', null, null, null, '430200', null, 'lls', 'ZuoLingShi', null, '4', '412200', '醴陵市');
INSERT INTO `area_tb` VALUES ('430282', null, null, null, '1', null, null, null, '430200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430300', null, null, null, '1', null, null, null, '430000', null, 'xts', 'XiangTanShi   ', null, '3', '411100', '湘潭市');
INSERT INTO `area_tb` VALUES ('430302', null, null, null, '1', null, null, null, '430300', null, 'yhq', 'YuHuQu', null, '4', '411100', '雨湖区');
INSERT INTO `area_tb` VALUES ('430304', null, null, null, '1', null, null, null, '430300', null, 'ytq', 'YueTangQu ', null, '4', '411101', '岳塘区');
INSERT INTO `area_tb` VALUES ('430321', null, null, null, '1', null, null, null, '430300', null, 'xtx', 'XiangTanXian  ', null, '4', '411200', '湘潭县');
INSERT INTO `area_tb` VALUES ('430381', null, null, null, '1', null, null, null, '430300', null, 'xxs', 'XiangXiangShi ', null, '4', '411400', '湘乡市');
INSERT INTO `area_tb` VALUES ('430382', null, null, null, '1', null, null, null, '430300', null, 'sss', 'ShaoShanShi   ', null, '4', '411300', '韶山市');
INSERT INTO `area_tb` VALUES ('430383', null, null, null, '1', null, null, null, '430300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430400', null, null, null, '1', null, null, null, '430000', null, 'hys', 'HengYangShi   ', null, '3', '421000', '衡阳市');
INSERT INTO `area_tb` VALUES ('430405', null, null, null, '1', null, null, null, '430400', null, 'zhq', 'ZhuZuoQu  ', null, '4', '421002', '珠晖区');
INSERT INTO `area_tb` VALUES ('430406', null, null, null, '1', null, null, null, '430400', null, 'yfq', 'YanFengQu ', null, '4', '421001', '雁峰区');
INSERT INTO `area_tb` VALUES ('430407', null, null, null, '1', null, null, null, '430400', null, 'sgq', 'ShiGuQu   ', null, '4', '421001', '石鼓区');
INSERT INTO `area_tb` VALUES ('430408', null, null, null, '1', null, null, null, '430400', null, 'zxq', 'ZhengXiangQu  ', null, '4', '421001', '蒸湘区');
INSERT INTO `area_tb` VALUES ('430412', null, null, null, '1', null, null, null, '430400', null, 'nyq', 'NanYueQu  ', null, '4', '421900', '南岳区');
INSERT INTO `area_tb` VALUES ('430421', null, null, null, '1', null, null, null, '430400', null, 'hyx', 'HengYangXian  ', null, '4', '421200', '衡阳县');
INSERT INTO `area_tb` VALUES ('430422', null, null, null, '1', null, null, null, '430400', null, 'hnx', 'HengNanXian   ', null, '4', '421100', '衡南县');
INSERT INTO `area_tb` VALUES ('430423', null, null, null, '1', null, null, null, '430400', null, 'hsx', 'HengShanXian  ', null, '4', '421300', '衡山县');
INSERT INTO `area_tb` VALUES ('430424', null, null, null, '1', null, null, null, '430400', null, 'hdx', 'HengDongXian  ', null, '4', '421400', '衡东县');
INSERT INTO `area_tb` VALUES ('430426', null, null, null, '1', null, null, null, '430400', null, 'qdx', 'QiDongXian', null, '4', '421600', '祁东县');
INSERT INTO `area_tb` VALUES ('430481', null, null, null, '1', null, null, null, '430400', null, 'lys', 'ZuoYangShi', null, '4', '421800', '耒阳市');
INSERT INTO `area_tb` VALUES ('430482', null, null, null, '1', null, null, null, '430400', null, 'cns', 'ChangNingShi  ', null, '4', '421500', '常宁市');
INSERT INTO `area_tb` VALUES ('430483', null, null, null, '1', null, null, null, '430400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430500', null, null, null, '1', null, null, null, '430000', null, 'sys', 'ShaoYangShi   ', null, '3', '422000', '邵阳市');
INSERT INTO `area_tb` VALUES ('430502', null, null, null, '1', null, null, null, '430500', null, 'sqq', 'ShuangQingQu  ', null, '4', '422001', '双清区');
INSERT INTO `area_tb` VALUES ('430503', null, null, null, '1', null, null, null, '430500', null, 'dxq', 'DaXiangQu ', null, '4', '422000', '大祥区');
INSERT INTO `area_tb` VALUES ('430511', null, null, null, '1', null, null, null, '430500', null, 'btq', 'BeiTaQu   ', null, '4', '422001', '北塔区');
INSERT INTO `area_tb` VALUES ('430521', null, null, null, '1', null, null, null, '430500', null, 'sdx', 'ShaoDongXian  ', null, '4', '422800', '邵东县');
INSERT INTO `area_tb` VALUES ('430522', null, null, null, '1', null, null, null, '430500', null, 'xsx', 'XinShaoXian   ', null, '4', '422900', '新邵县');
INSERT INTO `area_tb` VALUES ('430523', null, null, null, '1', null, null, null, '430500', null, 'syx', 'ShaoYangXian  ', null, '4', '422100', '邵阳县');
INSERT INTO `area_tb` VALUES ('430524', null, null, null, '1', null, null, null, '430500', null, 'lhx', 'LongHuiXian   ', null, '4', '422200', '隆回县');
INSERT INTO `area_tb` VALUES ('430525', null, null, null, '1', null, null, null, '430500', null, 'dkx', 'DongKouXian   ', null, '4', '422300', '洞口县');
INSERT INTO `area_tb` VALUES ('430527', null, null, null, '1', null, null, null, '430500', null, 'snx', 'SuiNingXian   ', null, '4', '422600', '绥宁县');
INSERT INTO `area_tb` VALUES ('430528', null, null, null, '1', null, null, null, '430500', null, 'xnx', 'XinNingXian   ', null, '4', '422700', '新宁县');
INSERT INTO `area_tb` VALUES ('430529', null, null, null, '1', null, null, null, '430500', null, 'cbmzzzx', 'ChengBuMiaoZuZiZhiXian', null, '4', '422500', '城步苗族自治县');
INSERT INTO `area_tb` VALUES ('430581', null, null, null, '1', null, null, null, '430500', null, 'wgs', 'WuGangShi ', null, '4', '422400', '武冈市');
INSERT INTO `area_tb` VALUES ('430582', null, null, null, '1', null, null, null, '430500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430600', null, null, null, '1', null, null, null, '430000', null, 'yys', 'YueYangShi', null, '3', '414000', '岳阳市');
INSERT INTO `area_tb` VALUES ('430602', null, null, null, '1', null, null, null, '430600', null, 'yylq', 'YueYangLouQu  ', null, '4', '414000', '岳阳楼区');
INSERT INTO `area_tb` VALUES ('430603', null, null, null, '1', null, null, null, '430600', null, 'yxq', 'YunXiQu   ', null, '4', '414003', '云溪区');
INSERT INTO `area_tb` VALUES ('430611', null, null, null, '1', null, null, null, '430600', null, 'jsq', 'JunShanQu ', null, '4', '414005', '君山区');
INSERT INTO `area_tb` VALUES ('430621', null, null, null, '1', null, null, null, '430600', null, 'yyx', 'YueYangXian   ', null, '4', '414100', '岳阳县');
INSERT INTO `area_tb` VALUES ('430623', null, null, null, '1', null, null, null, '430600', null, 'hrx', 'HuaRongXian   ', null, '4', '414200', '华容县');
INSERT INTO `area_tb` VALUES ('430624', null, null, null, '1', null, null, null, '430600', null, 'xyx', 'XiangYinXian  ', null, '4', '414600', '湘阴县');
INSERT INTO `area_tb` VALUES ('430626', null, null, null, '1', null, null, null, '430600', null, 'pjx', 'PingJiangXian ', null, '4', '410400', '平江县');
INSERT INTO `area_tb` VALUES ('430681', null, null, null, '1', null, null, null, '430600', null, 'mls', 'ZuoLuoShi ', null, '4', '414400', '汨罗市');
INSERT INTO `area_tb` VALUES ('430682', null, null, null, '1', null, null, null, '430600', null, 'lxs', 'LinXiangShi   ', null, '4', '414300', '临湘市');
INSERT INTO `area_tb` VALUES ('430683', null, null, null, '1', null, null, null, '430600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430700', null, null, null, '1', null, null, null, '430000', null, 'cds', 'ChangDeShi', null, '3', '415000', '常德市');
INSERT INTO `area_tb` VALUES ('430702', null, null, null, '1', null, null, null, '430700', null, 'wlq', 'WuLingQu  ', null, '4', '415000', '武陵区');
INSERT INTO `area_tb` VALUES ('430703', null, null, null, '1', null, null, null, '430700', null, 'dcq', 'DingChengQu   ', null, '4', '415100', '鼎城区');
INSERT INTO `area_tb` VALUES ('430721', null, null, null, '1', null, null, null, '430700', null, 'axx', 'AnXiangXian   ', null, '4', '415600', '安乡县');
INSERT INTO `area_tb` VALUES ('430722', null, null, null, '1', null, null, null, '430700', null, 'hsx', 'HanShouXian   ', null, '4', '415900', '汉寿县');
INSERT INTO `area_tb` VALUES ('430723', null, null, null, '1', null, null, null, '430700', null, 'lx', 'ZuoXian   ', null, '4', '415500', '澧县');
INSERT INTO `area_tb` VALUES ('430724', null, null, null, '1', null, null, null, '430700', null, 'llx', 'LinZuoXian', null, '4', '415200', '临澧县');
INSERT INTO `area_tb` VALUES ('430725', null, null, null, '1', null, null, null, '430700', null, 'tyx', 'TaoYuanXian   ', null, '4', '415700', '桃源县');
INSERT INTO `area_tb` VALUES ('430726', null, null, null, '1', null, null, null, '430700', null, 'smx', 'ShiMenXian', null, '4', '415300', '石门县');
INSERT INTO `area_tb` VALUES ('430781', null, null, null, '1', null, null, null, '430700', null, 'jss', 'JinShiShi ', null, '4', '415400', '津市市');
INSERT INTO `area_tb` VALUES ('430782', null, null, null, '1', null, null, null, '430700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430800', null, null, null, '1', null, null, null, '430000', null, 'zjjs', 'ZhangJiaJieShi', null, '3', '427000', '张家界市');
INSERT INTO `area_tb` VALUES ('430802', null, null, null, '1', null, null, null, '430800', null, 'ydq', 'YongDingQu', null, '4', '427000', '永定区');
INSERT INTO `area_tb` VALUES ('430811', null, null, null, '1', null, null, null, '430800', null, 'wlyq', 'WuLingYuanQu  ', null, '4', '427400', '武陵源区');
INSERT INTO `area_tb` VALUES ('430821', null, null, null, '1', null, null, null, '430800', null, 'clx', 'CiLiXian  ', null, '4', '427200', '慈利县');
INSERT INTO `area_tb` VALUES ('430822', null, null, null, '1', null, null, null, '430800', null, 'szx', 'SangZhiXian   ', null, '4', '427100', '桑植县');
INSERT INTO `area_tb` VALUES ('430823', null, null, null, '1', null, null, null, '430800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('430900', null, null, null, '1', null, null, null, '430000', null, 'yys', 'YiYangShi ', null, '3', '413000', '益阳市');
INSERT INTO `area_tb` VALUES ('430902', null, null, null, '1', null, null, null, '430900', null, 'zyq', 'ZiYangQu  ', null, '4', '413000', '资阳区');
INSERT INTO `area_tb` VALUES ('430903', null, null, null, '1', null, null, null, '430900', null, 'hsq', 'HeShanQu  ', null, '4', '413002', '赫山区');
INSERT INTO `area_tb` VALUES ('430921', null, null, null, '1', null, null, null, '430900', null, 'nx', 'NanXian   ', null, '4', '413200', '南县');
INSERT INTO `area_tb` VALUES ('430922', null, null, null, '1', null, null, null, '430900', null, 'tjx', 'TaoJiangXian  ', null, '4', '413400', '桃江县');
INSERT INTO `area_tb` VALUES ('430923', null, null, null, '1', null, null, null, '430900', null, 'ahx', 'AnHuaXian ', null, '4', '413500', '安化县');
INSERT INTO `area_tb` VALUES ('430981', null, null, null, '1', null, null, null, '430900', null, 'yjs', 'ZuoJiangShi   ', null, '4', '413100', ' 沅江市');
INSERT INTO `area_tb` VALUES ('430982', null, null, null, '1', null, null, null, '430900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('431000', null, null, null, '1', null, null, null, '430000', null, 'czs', 'ChenZhouShi   ', null, '3', '423000', '郴州市');
INSERT INTO `area_tb` VALUES ('431002', null, null, null, '1', null, null, null, '431000', null, 'bhq', 'BeiHuQu   ', null, '4', '423000', '北湖区');
INSERT INTO `area_tb` VALUES ('431003', null, null, null, '1', null, null, null, '431000', null, 'sxq', 'SuXianQu  ', null, '4', '423000', '苏仙区');
INSERT INTO `area_tb` VALUES ('431021', null, null, null, '1', null, null, null, '431000', null, 'gyx', 'GuiYangXian   ', null, '4', '424400', '桂阳县');
INSERT INTO `area_tb` VALUES ('431022', null, null, null, '1', null, null, null, '431000', null, 'yzx', 'YiZhangXian   ', null, '4', '424200', '宜章县');
INSERT INTO `area_tb` VALUES ('431023', null, null, null, '1', null, null, null, '431000', null, 'yxx', 'YongXingXian  ', null, '4', '423300', '永兴县');
INSERT INTO `area_tb` VALUES ('431024', null, null, null, '1', null, null, null, '431000', null, 'jhx', 'JiaHeXian ', null, '4', '424500', '嘉禾县');
INSERT INTO `area_tb` VALUES ('431025', null, null, null, '1', null, null, null, '431000', null, 'lwx', 'LinWuXian ', null, '4', '424300', '临武县');
INSERT INTO `area_tb` VALUES ('431026', null, null, null, '1', null, null, null, '431000', null, 'rcx', 'RuChengXian   ', null, '4', '424100', '汝城县');
INSERT INTO `area_tb` VALUES ('431027', null, null, null, '1', null, null, null, '431000', null, 'gdx', 'GuiDongXian   ', null, '4', '423500', '桂东县');
INSERT INTO `area_tb` VALUES ('431028', null, null, null, '1', null, null, null, '431000', null, 'arx', 'AnRenXian ', null, '4', '423600', '安仁县');
INSERT INTO `area_tb` VALUES ('431081', null, null, null, '1', null, null, null, '431000', null, 'zxs', 'ZiXingShi ', null, '4', '423400', '资兴市');
INSERT INTO `area_tb` VALUES ('431082', null, null, null, '1', null, null, null, '431000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('431100', null, null, null, '1', null, null, null, '430000', null, 'yzs', 'YongZhouShi   ', null, '3', '425000', '永州市');
INSERT INTO `area_tb` VALUES ('431102', null, null, null, '1', null, null, null, '431100', null, 'llq', 'LingLingQu', null, '4', '425007', '零陵区');
INSERT INTO `area_tb` VALUES ('431103', null, null, null, '1', null, null, null, '431100', null, 'lstq', 'LengShuiTanQu ', null, '4', '425000', '冷水滩区');
INSERT INTO `area_tb` VALUES ('431121', null, null, null, '1', null, null, null, '431100', null, 'qyx', 'QiYangXian', null, '4', '426100', '祁阳县');
INSERT INTO `area_tb` VALUES ('431122', null, null, null, '1', null, null, null, '431100', null, 'dax', 'DongAnXian', null, '4', '425900', '东安县');
INSERT INTO `area_tb` VALUES ('431123', null, null, null, '1', null, null, null, '431100', null, 'spx', 'ShuangPaiXian ', null, '4', '425200', '双牌县');
INSERT INTO `area_tb` VALUES ('431124', null, null, null, '1', null, null, null, '431100', null, 'dx', 'DaoXian   ', null, '4', '425300', '道县');
INSERT INTO `area_tb` VALUES ('431125', null, null, null, '1', null, null, null, '431100', null, 'jyx', 'JiangYongXian ', null, '4', '425400', '江永县');
INSERT INTO `area_tb` VALUES ('431126', null, null, null, '1', null, null, null, '431100', null, 'nyx', 'NingYuanXian  ', null, '4', '425600', '宁远县');
INSERT INTO `area_tb` VALUES ('431127', null, null, null, '1', null, null, null, '431100', null, 'lsx', 'LanShanXian   ', null, '4', '425800', '蓝山县');
INSERT INTO `area_tb` VALUES ('431128', null, null, null, '1', null, null, null, '431100', null, 'xtx', 'XinTianXian   ', null, '4', '425700', '新田县');
INSERT INTO `area_tb` VALUES ('431129', null, null, null, '1', null, null, null, '431100', null, 'jhyzzzx', 'JiangHuaYaoZuZiZhiXian', null, '4', '425500', '江华瑶族自治县');
INSERT INTO `area_tb` VALUES ('431130', null, null, null, '1', null, null, null, '431100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('431200', null, null, null, '1', null, null, null, '430000', null, 'hhs', 'HuaiHuaShi', null, '3', '418000', '怀化市');
INSERT INTO `area_tb` VALUES ('431202', null, null, null, '1', null, null, null, '431200', null, 'hcq', 'HeChengQu ', null, '4', '418000', '鹤城区');
INSERT INTO `area_tb` VALUES ('431221', null, null, null, '1', null, null, null, '431200', null, 'zfx', 'ZhongFangXian ', null, '4', '418005', '中方县');
INSERT INTO `area_tb` VALUES ('431222', null, null, null, '1', null, null, null, '431200', null, 'ylx', 'ZuoLingXian   ', null, '4', '419600', '沅陵县');
INSERT INTO `area_tb` VALUES ('431223', null, null, null, '1', null, null, null, '431200', null, 'cxx', 'ChenXiXian', null, '4', '419500', '辰溪县');
INSERT INTO `area_tb` VALUES ('431224', null, null, null, '1', null, null, null, '431200', null, 'xpx', 'ZuoPuXian ', null, '4', '419300', ' 溆浦县');
INSERT INTO `area_tb` VALUES ('431225', null, null, null, '1', null, null, null, '431200', null, 'htx', 'HuiTongXian   ', null, '4', '418300', '会同县');
INSERT INTO `area_tb` VALUES ('431226', null, null, null, '1', null, null, null, '431200', null, 'mymzzzx', 'MaYangMiaoZuZiZhiXian ', null, '4', '419400', '麻阳苗族自治县');
INSERT INTO `area_tb` VALUES ('431227', null, null, null, '1', null, null, null, '431200', null, 'xhdzzzx', 'XinHuangDongZuZiZhiXian   ', null, '4', '419200', '新晃侗族自治县');
INSERT INTO `area_tb` VALUES ('431228', null, null, null, '1', null, null, null, '431200', null, 'zjdzzzx', 'ZuoJiangDongZuZiZhiXian   ', null, '4', '419100', '芷江侗族自治县');
INSERT INTO `area_tb` VALUES ('431229', null, null, null, '1', null, null, null, '431200', null, 'jzmzdzzzx', 'JingZhouMiaoZuDongZuZiZhiXian ', null, '4', '418400', '靖州苗族侗族自治县');
INSERT INTO `area_tb` VALUES ('431230', null, null, null, '1', null, null, null, '431200', null, 'tddzzzx', 'TongDaoDongZuZiZhiXian', null, '4', '418500', '通道侗族自治县');
INSERT INTO `area_tb` VALUES ('431281', null, null, null, '1', null, null, null, '431200', null, 'hjs', 'HongJiangShi  ', null, '4', '418200', '洪江市');
INSERT INTO `area_tb` VALUES ('431282', null, null, null, '1', null, null, null, '431200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('431300', null, null, null, '1', null, null, null, '430000', null, 'lds', 'LouDiShi  ', null, '3', '417000', '娄底市');
INSERT INTO `area_tb` VALUES ('431302', null, null, null, '1', null, null, null, '431300', null, 'lxq', 'LouXingQu ', null, '4', '417000', '娄星区');
INSERT INTO `area_tb` VALUES ('431321', null, null, null, '1', null, null, null, '431300', null, 'sfx', 'ShuangFengXian', null, '4', '417700', '双峰县');
INSERT INTO `area_tb` VALUES ('431322', null, null, null, '1', null, null, null, '431300', null, 'xhx', 'XinHuaXian', null, '4', '417600', '新化县');
INSERT INTO `area_tb` VALUES ('431381', null, null, null, '1', null, null, null, '431300', null, 'lsjs', 'LengShuiJiangShi  ', null, '4', '417500', '冷水江市');
INSERT INTO `area_tb` VALUES ('431382', null, null, null, '1', null, null, null, '431300', null, 'lys', 'LianYuanShi   ', null, '4', '417100', '涟源市');
INSERT INTO `area_tb` VALUES ('431383', null, null, null, '1', null, null, null, '431300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('433100', null, null, null, '1', null, null, null, '430000', null, 'xxtjzmzzzz', 'XiangXiTuJiaZuMiaoZuZiZhiZhou ', null, '3', '416000', '湘西土家族苗族自治州');
INSERT INTO `area_tb` VALUES ('433101', null, null, null, '1', null, null, null, '433100', null, 'jss', 'JiShouShi ', null, '4', '416000', '吉首市');
INSERT INTO `area_tb` VALUES ('433122', null, null, null, '1', null, null, null, '433100', null, 'lxx', 'ZuoXiXian ', null, '4', '416100', '泸溪县');
INSERT INTO `area_tb` VALUES ('433123', null, null, null, '1', null, null, null, '433100', null, 'fhx', 'FengHuangXian ', null, '4', '416200', '凤凰县');
INSERT INTO `area_tb` VALUES ('433124', null, null, null, '1', null, null, null, '433100', null, 'hyx', 'HuaYuanXian   ', null, '4', '416400', '花垣县');
INSERT INTO `area_tb` VALUES ('433125', null, null, null, '1', null, null, null, '433100', null, 'bjx', 'BaoJingXian   ', null, '4', '416500', '保靖县');
INSERT INTO `area_tb` VALUES ('433126', null, null, null, '1', null, null, null, '433100', null, 'gzx', 'GuZhangXian   ', null, '4', '416300', '古丈县');
INSERT INTO `area_tb` VALUES ('433127', null, null, null, '1', null, null, null, '433100', null, 'ysx', 'YongShunXian  ', null, '4', '416700', '永顺县');
INSERT INTO `area_tb` VALUES ('433130', null, null, null, '1', null, null, null, '433100', null, 'lsx', 'LongShanXian  ', null, '4', '416800', '龙山县');
INSERT INTO `area_tb` VALUES ('433131', null, null, null, '1', null, null, null, '433100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440000', null, null, null, '1', null, null, null, '1', null, 'gds', 'GuangDongSheng', null, '2', '', '广东省');
INSERT INTO `area_tb` VALUES ('440100', null, null, null, '1', null, null, null, '440000', null, 'gzs', 'GuangZhouShi  ', null, '3', '510000', '广州市');
INSERT INTO `area_tb` VALUES ('440103', null, null, null, '1', null, null, null, '440100', null, 'lwq', 'LiWanQu   ', null, '4', '510145', '荔湾区');
INSERT INTO `area_tb` VALUES ('440104', null, null, null, '1', null, null, null, '440100', null, 'yxq', 'YueXiuQu  ', null, '4', '510180', '越秀区');
INSERT INTO `area_tb` VALUES ('440105', null, null, null, '1', null, null, null, '440100', null, 'hzq', 'HaiZhuQu  ', null, '4', '510220', '海珠区');
INSERT INTO `area_tb` VALUES ('440106', null, null, null, '1', null, null, null, '440100', null, 'thq', 'TianHeQu  ', null, '4', '510510', '天河区');
INSERT INTO `area_tb` VALUES ('440111', null, null, null, '1', null, null, null, '440100', null, 'byq', 'BaiYunQu  ', null, '4', '510440', '白云区');
INSERT INTO `area_tb` VALUES ('440112', null, null, null, '1', null, null, null, '440100', null, 'hpq', 'HuangPuQu ', null, '4', '510700', '黄埔区');
INSERT INTO `area_tb` VALUES ('440113', null, null, null, '1', null, null, null, '440100', null, 'fyq', 'FanZuoQu  ', null, '4', '511400', '番禺区');
INSERT INTO `area_tb` VALUES ('440114', null, null, null, '1', null, null, null, '440100', null, 'hdq', 'HuaDuQu   ', null, '4', '510800', '花都区');
INSERT INTO `area_tb` VALUES ('440115', null, null, null, '1', null, null, null, '440100', null, 'nsq', 'NanShaQu  ', null, '4', '', '南沙区');
INSERT INTO `area_tb` VALUES ('440116', null, null, null, '1', null, null, null, '440100', null, 'lgq', 'LuoGangQu ', null, '4', '', '萝岗区');
INSERT INTO `area_tb` VALUES ('440183', null, null, null, '1', null, null, null, '440100', null, 'zcs', 'ZengChengShi  ', null, '4', '511300', '增城市');
INSERT INTO `area_tb` VALUES ('440184', null, null, null, '1', null, null, null, '440100', null, 'chs', 'CongHuaShi', null, '4', '510900', '从化市');
INSERT INTO `area_tb` VALUES ('440188', null, null, null, '1', null, null, null, '440100', null, 'dsq', 'DongShanQu', null, '4', '', '东山区');
INSERT INTO `area_tb` VALUES ('440189', null, null, null, '1', null, null, null, '440100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440200', null, null, null, '1', null, null, null, '440000', null, 'sgs', 'ShaoGuanShi   ', null, '3', '512000', '韶关市');
INSERT INTO `area_tb` VALUES ('440203', null, null, null, '1', null, null, null, '440200', null, 'wjq', 'WuJiangQu ', null, '4', '512026', '武江区');
INSERT INTO `area_tb` VALUES ('440204', null, null, null, '1', null, null, null, '440200', null, 'zjq', 'ZuoJiangQu', null, '4', '512023', '浈江区');
INSERT INTO `area_tb` VALUES ('440205', null, null, null, '1', null, null, null, '440200', null, 'qjq', 'QuJiangQu ', null, '4', '512100', '曲江区');
INSERT INTO `area_tb` VALUES ('440222', null, null, null, '1', null, null, null, '440200', null, 'sxx', 'ShiXingXian   ', null, '4', '512500', '始兴县');
INSERT INTO `area_tb` VALUES ('440224', null, null, null, '1', null, null, null, '440200', null, 'rhx', 'RenHuaXian', null, '4', '512300', '仁化县');
INSERT INTO `area_tb` VALUES ('440229', null, null, null, '1', null, null, null, '440200', null, 'wyx', 'WengYuanXian  ', null, '4', '512600', '翁源县');
INSERT INTO `area_tb` VALUES ('440232', null, null, null, '1', null, null, null, '440200', null, 'ryyzzzx', 'RuYuanYaoZuZiZhiXian  ', null, '4', '512700', '乳源瑶族自治县');
INSERT INTO `area_tb` VALUES ('440233', null, null, null, '1', null, null, null, '440200', null, 'xfx', 'XinFengXian   ', null, '4', '511100', '新丰县');
INSERT INTO `area_tb` VALUES ('440281', null, null, null, '1', null, null, null, '440200', null, 'lcs', 'LeChangShi', null, '4', '512200', '乐昌市');
INSERT INTO `area_tb` VALUES ('440282', null, null, null, '1', null, null, null, '440200', null, 'nxs', 'NanXiongShi   ', null, '4', '512400', '南雄市');
INSERT INTO `area_tb` VALUES ('440283', null, null, null, '1', null, null, null, '440200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440300', null, null, null, '1', null, null, null, '440000', null, 'szs', 'ShenZhenShi   ', null, '3', '518000', '深圳市');
INSERT INTO `area_tb` VALUES ('440303', null, null, null, '1', null, null, null, '440300', null, 'lhq', 'LuoHuQu   ', null, '4', '518002', '罗湖区');
INSERT INTO `area_tb` VALUES ('440304', null, null, null, '1', null, null, null, '440300', null, 'ftq', 'FuTianQu  ', null, '4', '518031', '福田区');
INSERT INTO `area_tb` VALUES ('440305', null, null, null, '1', null, null, null, '440300', null, 'nsq', 'NanShanQu ', null, '4', '518052', '南山区');
INSERT INTO `area_tb` VALUES ('440306', null, null, null, '1', null, null, null, '440300', null, 'baq', 'BaoAnQu   ', null, '4', '518101', '宝安区');
INSERT INTO `area_tb` VALUES ('440307', null, null, null, '1', null, null, null, '440300', null, 'lgq', 'LongGangQu', null, '4', '518116', '龙岗区');
INSERT INTO `area_tb` VALUES ('440308', null, null, null, '1', null, null, null, '440300', null, 'ytq', 'YanTianQu ', null, '4', '518083', '盐田区');
INSERT INTO `area_tb` VALUES ('440309', null, null, null, '1', null, null, null, '440300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440400', null, null, null, '1', null, null, null, '440000', null, 'zhs', 'ZhuHaiShi ', null, '3', '519000', '珠海市');
INSERT INTO `area_tb` VALUES ('440402', null, null, null, '1', null, null, null, '440400', null, 'xzq', 'XiangZhouQu   ', null, '4', '519000', '香洲区');
INSERT INTO `area_tb` VALUES ('440403', null, null, null, '1', null, null, null, '440400', null, 'dmq', 'DouMenQu  ', null, '4', '519100', '斗门区');
INSERT INTO `area_tb` VALUES ('440404', null, null, null, '1', null, null, null, '440400', null, 'jwq', 'JinWanQu  ', null, '4', '519090', '金湾区');
INSERT INTO `area_tb` VALUES ('440486', null, null, null, '1', null, null, null, '440400', null, 'jtq', 'JinTangQu ', null, '4', '', '金唐区');
INSERT INTO `area_tb` VALUES ('440487', null, null, null, '1', null, null, null, '440400', null, 'nwq', 'NanWanQu  ', null, '4', '', '南湾区');
INSERT INTO `area_tb` VALUES ('440488', null, null, null, '1', null, null, null, '440400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440500', null, null, null, '1', null, null, null, '440000', null, 'sts', 'ShanTouShi', null, '3', '515000', '汕头市');
INSERT INTO `area_tb` VALUES ('440507', null, null, null, '1', null, null, null, '440500', null, 'lhq', 'LongHuQu  ', null, '4', '515041', '龙湖区');
INSERT INTO `area_tb` VALUES ('440511', null, null, null, '1', null, null, null, '440500', null, 'jpq', 'JinPingQu ', null, '4', '515041', '金平区');
INSERT INTO `area_tb` VALUES ('440512', null, null, null, '1', null, null, null, '440500', null, 'hjq', 'ZuoJiangQu', null, '4', '515071', '濠江区');
INSERT INTO `area_tb` VALUES ('440513', null, null, null, '1', null, null, null, '440500', null, 'cyq', 'ChaoYangQu', null, '4', '515100', '潮阳区');
INSERT INTO `area_tb` VALUES ('440514', null, null, null, '1', null, null, null, '440500', null, 'cnq', 'ChaoNanQu ', null, '4', '515144', '潮南区');
INSERT INTO `area_tb` VALUES ('440515', null, null, null, '1', null, null, null, '440500', null, 'chq', 'ChengHaiQu', null, '4', '515800', '澄海区');
INSERT INTO `area_tb` VALUES ('440523', null, null, null, '1', null, null, null, '440500', null, 'nax', 'NanAoXian ', null, '4', '515900', '南澳县');
INSERT INTO `area_tb` VALUES ('440524', null, null, null, '1', null, null, null, '440500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440600', null, null, null, '1', null, null, null, '440000', null, 'fss', 'FoShanShi ', null, '3', '528000', '佛山市');
INSERT INTO `area_tb` VALUES ('440604', null, null, null, '1', null, null, null, '440600', null, 'ccq', 'ZuoChengQu', null, '4', '528000', '禅城区');
INSERT INTO `area_tb` VALUES ('440605', null, null, null, '1', null, null, null, '440600', null, 'nhq', 'NanHaiQu  ', null, '4', '528200', '南海区');
INSERT INTO `area_tb` VALUES ('440606', null, null, null, '1', null, null, null, '440600', null, 'sdq', 'ShunDeQu  ', null, '4', '528300', '顺德区');
INSERT INTO `area_tb` VALUES ('440607', null, null, null, '1', null, null, null, '440600', null, 'ssq', 'SanShuiQu ', null, '4', '528100', '三水区');
INSERT INTO `area_tb` VALUES ('440608', null, null, null, '1', null, null, null, '440600', null, 'gmq', 'GaoMingQu ', null, '4', '528500', '高明区');
INSERT INTO `area_tb` VALUES ('440609', null, null, null, '1', null, null, null, '440600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440700', null, null, null, '1', null, null, null, '440000', null, 'jms', 'JiangMenShi   ', null, '3', '529000', '江门市');
INSERT INTO `area_tb` VALUES ('440703', null, null, null, '1', null, null, null, '440700', null, 'pjq', 'PengJiangQu   ', null, '4', '529051', '蓬江区');
INSERT INTO `area_tb` VALUES ('440704', null, null, null, '1', null, null, null, '440700', null, 'jhq', 'JiangHaiQu', null, '4', '529000', '江海区');
INSERT INTO `area_tb` VALUES ('440705', null, null, null, '1', null, null, null, '440700', null, 'xhq', 'XinHuiQu  ', null, '4', '529100', '新会区');
INSERT INTO `area_tb` VALUES ('440781', null, null, null, '1', null, null, null, '440700', null, 'tss', 'TaiShanShi', null, '4', '529200', '台山市');
INSERT INTO `area_tb` VALUES ('440783', null, null, null, '1', null, null, null, '440700', null, 'kps', 'KaiPingShi', null, '4', '529300', '开平市');
INSERT INTO `area_tb` VALUES ('440784', null, null, null, '1', null, null, null, '440700', null, 'hss', 'HeShanShi ', null, '4', '529700', '鹤山市');
INSERT INTO `area_tb` VALUES ('440785', null, null, null, '1', null, null, null, '440700', null, 'eps', 'EnPingShi ', null, '4', '529400', '恩平市');
INSERT INTO `area_tb` VALUES ('440786', null, null, null, '1', null, null, null, '440700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440800', null, null, null, '1', null, null, null, '440000', null, 'zjs', 'ZhanJiangShi  ', null, '3', '524000', '湛江市');
INSERT INTO `area_tb` VALUES ('440802', null, null, null, '1', null, null, null, '440800', null, 'ckq', 'ChiKanQu  ', null, '4', '524033', '赤坎区');
INSERT INTO `area_tb` VALUES ('440803', null, null, null, '1', null, null, null, '440800', null, 'xsq', 'XiaShanQu ', null, '4', '524002', '霞山区');
INSERT INTO `area_tb` VALUES ('440804', null, null, null, '1', null, null, null, '440800', null, 'ptq', 'PoTouQu   ', null, '4', '524057', '坡头区');
INSERT INTO `area_tb` VALUES ('440811', null, null, null, '1', null, null, null, '440800', null, 'mzq', 'MaZhangQu ', null, '4', '524003', '麻章区');
INSERT INTO `area_tb` VALUES ('440823', null, null, null, '1', null, null, null, '440800', null, 'sxx', 'SuiXiXian ', null, '4', '524300', '遂溪县');
INSERT INTO `area_tb` VALUES ('440825', null, null, null, '1', null, null, null, '440800', null, 'xwx', 'XuWenXian ', null, '4', '524100', '徐闻县');
INSERT INTO `area_tb` VALUES ('440881', null, null, null, '1', null, null, null, '440800', null, 'ljs', 'LianJiangShi  ', null, '4', '524400', '廉江市');
INSERT INTO `area_tb` VALUES ('440882', null, null, null, '1', null, null, null, '440800', null, 'lzs', 'LeiZhouShi', null, '4', '524200', '雷州市');
INSERT INTO `area_tb` VALUES ('440883', null, null, null, '1', null, null, null, '440800', null, 'wcs', 'WuChuanShi', null, '4', '524500', '吴川市');
INSERT INTO `area_tb` VALUES ('440884', null, null, null, '1', null, null, null, '440800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('440900', null, null, null, '1', null, null, null, '440000', null, 'mms', 'MaoMingShi', null, '3', '525000', '茂名市');
INSERT INTO `area_tb` VALUES ('440902', null, null, null, '1', null, null, null, '440900', null, 'mnq', 'MaoNanQu  ', null, '4', '525011', '茂南区');
INSERT INTO `area_tb` VALUES ('440903', null, null, null, '1', null, null, null, '440900', null, 'mgq', 'MaoGangQu ', null, '4', '525027', '茂港区');
INSERT INTO `area_tb` VALUES ('440923', null, null, null, '1', null, null, null, '440900', null, 'dbx', 'DianBaiXian   ', null, '4', '525400', '电白县');
INSERT INTO `area_tb` VALUES ('440981', null, null, null, '1', null, null, null, '440900', null, 'gzs', 'GaoZhouShi', null, '4', '525200', '高州市');
INSERT INTO `area_tb` VALUES ('440982', null, null, null, '1', null, null, null, '440900', null, 'hzs', 'HuaZhouShi', null, '4', '525100', '化州市');
INSERT INTO `area_tb` VALUES ('440983', null, null, null, '1', null, null, null, '440900', null, 'xys', 'XinYiShi  ', null, '4', '525300', '信宜市');
INSERT INTO `area_tb` VALUES ('440984', null, null, null, '1', null, null, null, '440900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441200', null, null, null, '1', null, null, null, '440000', null, 'zqs', 'ZhaoQingShi   ', null, '3', '526000', '肇庆市');
INSERT INTO `area_tb` VALUES ('441202', null, null, null, '1', null, null, null, '441200', null, 'dzq', 'DuanZhouQu', null, '4', '526040', '端州区');
INSERT INTO `area_tb` VALUES ('441203', null, null, null, '1', null, null, null, '441200', null, 'dhq', 'DingHuQu  ', null, '4', '526070', '鼎湖区');
INSERT INTO `area_tb` VALUES ('441223', null, null, null, '1', null, null, null, '441200', null, 'gnx', 'GuangNingXian ', null, '4', '526300', '广宁县');
INSERT INTO `area_tb` VALUES ('441224', null, null, null, '1', null, null, null, '441200', null, 'hjx', 'HuaiJiXian', null, '4', '526400', '怀集县');
INSERT INTO `area_tb` VALUES ('441225', null, null, null, '1', null, null, null, '441200', null, 'fkx', 'FengKaiXian   ', null, '4', '526500', '封开县');
INSERT INTO `area_tb` VALUES ('441226', null, null, null, '1', null, null, null, '441200', null, 'dqx', 'DeQingXian', null, '4', '526600', '德庆县');
INSERT INTO `area_tb` VALUES ('441283', null, null, null, '1', null, null, null, '441200', null, 'gys', 'GaoYaoShi ', null, '4', '526100', '高要市');
INSERT INTO `area_tb` VALUES ('441284', null, null, null, '1', null, null, null, '441200', null, 'shs', 'SiHuiShi  ', null, '4', '526200', '四会市');
INSERT INTO `area_tb` VALUES ('441285', null, null, null, '1', null, null, null, '441200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441300', null, null, null, '1', null, null, null, '440000', null, 'hzs', 'HuiZhouShi', null, '3', '516000', '惠州市');
INSERT INTO `area_tb` VALUES ('441302', null, null, null, '1', null, null, null, '441300', null, 'hcq', 'HuiChengQu', null, '4', '516001', '惠城区');
INSERT INTO `area_tb` VALUES ('441303', null, null, null, '1', null, null, null, '441300', null, 'hyq', 'HuiYangQu ', null, '4', '516200', '惠阳区');
INSERT INTO `area_tb` VALUES ('441322', null, null, null, '1', null, null, null, '441300', null, 'blx', 'BoLuoXian ', null, '4', '516100', '博罗县');
INSERT INTO `area_tb` VALUES ('441323', null, null, null, '1', null, null, null, '441300', null, 'hdx', 'HuiDongXian   ', null, '4', '516300', '惠东县');
INSERT INTO `area_tb` VALUES ('441324', null, null, null, '1', null, null, null, '441300', null, 'lmx', 'LongMenXian   ', null, '4', '516800', '龙门县');
INSERT INTO `area_tb` VALUES ('441325', null, null, null, '1', null, null, null, '441300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441400', null, null, null, '1', null, null, null, '440000', null, 'mzs', 'MeiZhouShi', null, '3', '514000', '梅州市');
INSERT INTO `area_tb` VALUES ('441402', null, null, null, '1', null, null, null, '441400', null, 'mjq', 'MeiJiangQu', null, '4', '514000', '梅江区');
INSERT INTO `area_tb` VALUES ('441421', null, null, null, '1', null, null, null, '441400', null, 'mx', 'MeiXian   ', null, '4', '514700', '梅县');
INSERT INTO `area_tb` VALUES ('441422', null, null, null, '1', null, null, null, '441400', null, 'dpx', 'DaPuXian  ', null, '4', '514200', '大埔县');
INSERT INTO `area_tb` VALUES ('441423', null, null, null, '1', null, null, null, '441400', null, 'fsx', 'FengShunXian  ', null, '4', '514300', '丰顺县');
INSERT INTO `area_tb` VALUES ('441424', null, null, null, '1', null, null, null, '441400', null, 'whx', 'WuHuaXian ', null, '4', '514400', '五华县');
INSERT INTO `area_tb` VALUES ('441426', null, null, null, '1', null, null, null, '441400', null, 'pyx', 'PingYuanXian  ', null, '4', '514600', '平远县');
INSERT INTO `area_tb` VALUES ('441427', null, null, null, '1', null, null, null, '441400', null, 'jlx', 'JiaoLingXian  ', null, '4', '514100', '蕉岭县');
INSERT INTO `area_tb` VALUES ('441481', null, null, null, '1', null, null, null, '441400', null, 'xns', 'XingNingShi   ', null, '4', '514500', '兴宁市');
INSERT INTO `area_tb` VALUES ('441482', null, null, null, '1', null, null, null, '441400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441500', null, null, null, '1', null, null, null, '440000', null, 'sws', 'ShanWeiShi', null, '3', '516600', '汕尾市');
INSERT INTO `area_tb` VALUES ('441502', null, null, null, '1', null, null, null, '441500', null, 'cq', 'ChengQu   ', null, '4', '516601', '城区');
INSERT INTO `area_tb` VALUES ('441521', null, null, null, '1', null, null, null, '441500', null, 'hfx', 'HaiFengXian   ', null, '4', '516400', '海丰县');
INSERT INTO `area_tb` VALUES ('441523', null, null, null, '1', null, null, null, '441500', null, 'lhx', 'LuHeXian  ', null, '4', '516700', '陆河县');
INSERT INTO `area_tb` VALUES ('441581', null, null, null, '1', null, null, null, '441500', null, 'lfs', 'LuFengShi ', null, '4', '516500', '陆丰市');
INSERT INTO `area_tb` VALUES ('441582', null, null, null, '1', null, null, null, '441500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441600', null, null, null, '1', null, null, null, '440000', null, 'hys', 'HeYuanShi ', null, '3', '517000', '河源市');
INSERT INTO `area_tb` VALUES ('441602', null, null, null, '1', null, null, null, '441600', null, 'ycq', 'YuanChengQu   ', null, '4', '517000', '源城区');
INSERT INTO `area_tb` VALUES ('441621', null, null, null, '1', null, null, null, '441600', null, 'zjx', 'ZiJinXian ', null, '4', '517400', '紫金县');
INSERT INTO `area_tb` VALUES ('441622', null, null, null, '1', null, null, null, '441600', null, 'lcx', 'LongChuanXian ', null, '4', '517300', '龙川县');
INSERT INTO `area_tb` VALUES ('441623', null, null, null, '1', null, null, null, '441600', null, 'lpx', 'LianPingXian  ', null, '4', '517100', '连平县');
INSERT INTO `area_tb` VALUES ('441624', null, null, null, '1', null, null, null, '441600', null, 'hpx', 'HePingXian', null, '4', '517200', '和平县');
INSERT INTO `area_tb` VALUES ('441625', null, null, null, '1', null, null, null, '441600', null, 'dyx', 'DongYuanXian  ', null, '4', '517500', '东源县');
INSERT INTO `area_tb` VALUES ('441626', null, null, null, '1', null, null, null, '441600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441700', null, null, null, '1', null, null, null, '440000', null, 'yjs', 'YangJiangShi  ', null, '3', '529500', '阳江市');
INSERT INTO `area_tb` VALUES ('441702', null, null, null, '1', null, null, null, '441700', null, 'jcq', 'JiangChengQu  ', null, '4', '529525', '江城区');
INSERT INTO `area_tb` VALUES ('441721', null, null, null, '1', null, null, null, '441700', null, 'yxx', 'YangXiXian', null, '4', '529800', '阳西县');
INSERT INTO `area_tb` VALUES ('441723', null, null, null, '1', null, null, null, '441700', null, 'ydx', 'YangDongXian  ', null, '4', '529931', '阳东县');
INSERT INTO `area_tb` VALUES ('441781', null, null, null, '1', null, null, null, '441700', null, 'ycs', 'YangChunShi   ', null, '4', '529600', '阳春市');
INSERT INTO `area_tb` VALUES ('441782', null, null, null, '1', null, null, null, '441700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441800', null, null, null, '1', null, null, null, '440000', null, 'qys', 'QingYuanShi   ', null, '3', '511500', '清远市');
INSERT INTO `area_tb` VALUES ('441802', null, null, null, '1', null, null, null, '441800', null, 'qcq', 'QingChengQu   ', null, '4', '511500', '清城区');
INSERT INTO `area_tb` VALUES ('441821', null, null, null, '1', null, null, null, '441800', null, 'fgx', 'FoGangXian', null, '4', '511600', '佛冈县');
INSERT INTO `area_tb` VALUES ('441823', null, null, null, '1', null, null, null, '441800', null, 'ysx', 'YangShanXian  ', null, '4', '513100', '阳山县');
INSERT INTO `area_tb` VALUES ('441825', null, null, null, '1', null, null, null, '441800', null, 'lszzyzzzx', 'LianShanZhuangZuYaoZuZiZhiXian', null, '4', '513200', '连山壮族瑶族自治县');
INSERT INTO `area_tb` VALUES ('441826', null, null, null, '1', null, null, null, '441800', null, 'lnyzzzx', 'LianNanYaoZuZiZhiXian ', null, '4', '513300', '连南瑶族自治县');
INSERT INTO `area_tb` VALUES ('441827', null, null, null, '1', null, null, null, '441800', null, 'qxx', 'QingXinXian   ', null, '4', '511800', '清新县');
INSERT INTO `area_tb` VALUES ('441881', null, null, null, '1', null, null, null, '441800', null, 'yds', 'YingDeShi ', null, '4', '513000', '英德市');
INSERT INTO `area_tb` VALUES ('441882', null, null, null, '1', null, null, null, '441800', null, 'lzs', 'LianZhouShi   ', null, '4', '513400', '连州市');
INSERT INTO `area_tb` VALUES ('441883', null, null, null, '1', null, null, null, '441800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('441900', null, null, null, '1', null, null, null, '440000', null, 'dgs', 'DongZuoShi', null, '3', '523000', '东莞市');
INSERT INTO `area_tb` VALUES ('442000', null, null, null, '1', null, null, null, '440000', null, 'zss', 'ZhongShanShi  ', null, '3', '528400', '中山市');
INSERT INTO `area_tb` VALUES ('445100', null, null, null, '1', null, null, null, '440000', null, 'czs', 'ChaoZhouShi   ', null, '3', '521000', '潮州市');
INSERT INTO `area_tb` VALUES ('445102', null, null, null, '1', null, null, null, '445100', null, 'xqq', 'XiangQiaoQu   ', null, '4', '521000', '湘桥区');
INSERT INTO `area_tb` VALUES ('445121', null, null, null, '1', null, null, null, '445100', null, 'cax', 'ChaoAnXian', null, '4', '515600', '潮安县');
INSERT INTO `area_tb` VALUES ('445122', null, null, null, '1', null, null, null, '445100', null, 'rpx', 'RaoPingXian   ', null, '4', '515700', '饶平县');
INSERT INTO `area_tb` VALUES ('445185', null, null, null, '1', null, null, null, '445100', null, 'fxq', 'FengXiQu  ', null, '4', '', '枫溪区');
INSERT INTO `area_tb` VALUES ('445186', null, null, null, '1', null, null, null, '445100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('445200', null, null, null, '1', null, null, null, '440000', null, 'jys', 'JieYangShi', null, '3', '522000', '揭阳市');
INSERT INTO `area_tb` VALUES ('445202', null, null, null, '1', null, null, null, '445200', null, 'rcq', 'ZuoChengQu', null, '4', '522095', '榕城区');
INSERT INTO `area_tb` VALUES ('445221', null, null, null, '1', null, null, null, '445200', null, 'jdx', 'JieDongXian   ', null, '4', '515500', '揭东县');
INSERT INTO `area_tb` VALUES ('445222', null, null, null, '1', null, null, null, '445200', null, 'jxx', 'JieXiXian ', null, '4', '515400', '揭西县');
INSERT INTO `area_tb` VALUES ('445224', null, null, null, '1', null, null, null, '445200', null, 'hlx', 'HuiLaiXian', null, '4', '515200', '惠来县');
INSERT INTO `area_tb` VALUES ('445281', null, null, null, '1', null, null, null, '445200', null, 'pns', 'PuNingShi ', null, '4', '515300', '普宁市');
INSERT INTO `area_tb` VALUES ('445284', null, null, null, '1', null, null, null, '445200', null, 'dsq', 'DongShanQu', null, '4', '', '东山区');
INSERT INTO `area_tb` VALUES ('445285', null, null, null, '1', null, null, null, '445200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('445300', null, null, null, '1', null, null, null, '440000', null, 'yfs', 'YunFuShi  ', null, '3', '527300', '云浮市');
INSERT INTO `area_tb` VALUES ('445302', null, null, null, '1', null, null, null, '445300', null, 'ycq', 'YunChengQu', null, '4', '527300', '云城区');
INSERT INTO `area_tb` VALUES ('445321', null, null, null, '1', null, null, null, '445300', null, 'xxx', 'XinXingXian   ', null, '4', '527400', '新兴县');
INSERT INTO `area_tb` VALUES ('445322', null, null, null, '1', null, null, null, '445300', null, 'ynx', 'YuNanXian ', null, '4', '527100', '郁南县');
INSERT INTO `area_tb` VALUES ('445323', null, null, null, '1', null, null, null, '445300', null, 'yax', 'YunAnXian ', null, '4', '527500', '云安县');
INSERT INTO `area_tb` VALUES ('445381', null, null, null, '1', null, null, null, '445300', null, 'lds', 'LuoDingShi', null, '4', '527200', '罗定市');
INSERT INTO `area_tb` VALUES ('445382', null, null, null, '1', null, null, null, '445300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450000', null, null, null, '1', null, null, null, '1', null, 'gxzzzzq', 'GuangXiZhuangZuZiZhiQu', null, '2', '', '广西壮族自治区');
INSERT INTO `area_tb` VALUES ('450100', null, null, null, '1', null, null, null, '450000', null, 'nns', 'NanNingShi', null, '3', '530000', '南宁市');
INSERT INTO `area_tb` VALUES ('450102', null, null, null, '1', null, null, null, '450100', null, 'xnq', 'XingNingQu', null, '4', '530012', '兴宁区');
INSERT INTO `area_tb` VALUES ('450103', null, null, null, '1', null, null, null, '450100', null, 'qxq', 'QingXiuQu ', null, '4', '530022', '青秀区');
INSERT INTO `area_tb` VALUES ('450105', null, null, null, '1', null, null, null, '450100', null, 'jnq', 'JiangNanQu', null, '4', '530031', '江南区');
INSERT INTO `area_tb` VALUES ('450107', null, null, null, '1', null, null, null, '450100', null, 'xxtq', 'XiXiangTangQu ', null, '4', '530001', '西乡塘区');
INSERT INTO `area_tb` VALUES ('450108', null, null, null, '1', null, null, null, '450100', null, 'lqq', 'LiangQingQu   ', null, '4', '530200', '良庆区');
INSERT INTO `area_tb` VALUES ('450109', null, null, null, '1', null, null, null, '450100', null, 'ynq', 'ZuoNingQu ', null, '4', '530200', '邕宁区');
INSERT INTO `area_tb` VALUES ('450122', null, null, null, '1', null, null, null, '450100', null, 'wmx', 'WuMingXian', null, '4', '530100', '武鸣县');
INSERT INTO `area_tb` VALUES ('450123', null, null, null, '1', null, null, null, '450100', null, 'lax', 'LongAnXian', null, '4', '532700', '隆安县');
INSERT INTO `area_tb` VALUES ('450124', null, null, null, '1', null, null, null, '450100', null, 'msx', 'MaShanXian', null, '4', '530600', '马山县');
INSERT INTO `area_tb` VALUES ('450125', null, null, null, '1', null, null, null, '450100', null, 'slx', 'ShangLinXian  ', null, '4', '530500', '上林县');
INSERT INTO `area_tb` VALUES ('450126', null, null, null, '1', null, null, null, '450100', null, 'byx', 'BinYangXian   ', null, '4', '530400', '宾阳县');
INSERT INTO `area_tb` VALUES ('450127', null, null, null, '1', null, null, null, '450100', null, 'hx', 'HengXian  ', null, '4', '530300', '横县');
INSERT INTO `area_tb` VALUES ('450128', null, null, null, '1', null, null, null, '450100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450200', null, null, null, '1', null, null, null, '450000', null, 'lzs', 'LiuZhouShi', null, '3', '545000', '柳州市');
INSERT INTO `area_tb` VALUES ('450202', null, null, null, '1', null, null, null, '450200', null, 'czq', 'ChengZhongQu  ', null, '4', '545001', '城中区');
INSERT INTO `area_tb` VALUES ('450203', null, null, null, '1', null, null, null, '450200', null, 'yfq', 'YuFengQu  ', null, '4', '545005', '鱼峰区');
INSERT INTO `area_tb` VALUES ('450204', null, null, null, '1', null, null, null, '450200', null, 'lnq', 'LiuNanQu  ', null, '4', '545005', '柳南区');
INSERT INTO `area_tb` VALUES ('450205', null, null, null, '1', null, null, null, '450200', null, 'lbq', 'LiuBeiQu  ', null, '4', '545001', '柳北区');
INSERT INTO `area_tb` VALUES ('450221', null, null, null, '1', null, null, null, '450200', null, 'ljx', 'LiuJiangXian  ', null, '4', '545100', '柳江县');
INSERT INTO `area_tb` VALUES ('450222', null, null, null, '1', null, null, null, '450200', null, 'lcx', 'LiuChengXian  ', null, '4', '545200', '柳城县');
INSERT INTO `area_tb` VALUES ('450223', null, null, null, '1', null, null, null, '450200', null, 'lzx', 'LuZhaiXian', null, '4', '545600', '鹿寨县');
INSERT INTO `area_tb` VALUES ('450224', null, null, null, '1', null, null, null, '450200', null, 'rax', 'RongAnXian', null, '4', '545400', '融安县');
INSERT INTO `area_tb` VALUES ('450225', null, null, null, '1', null, null, null, '450200', null, 'rsmzzzx', 'RongShuiMiaoZuZiZhiXian   ', null, '4', '545300', '融水苗族自治县');
INSERT INTO `area_tb` VALUES ('450226', null, null, null, '1', null, null, null, '450200', null, 'sjdzzzx', 'SanJiangDongZuZiZhiXian   ', null, '4', '545500', '三江侗族自治县');
INSERT INTO `area_tb` VALUES ('450227', null, null, null, '1', null, null, null, '450200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450300', null, null, null, '1', null, null, null, '450000', null, 'gls', 'GuiLinShi ', null, '3', '541000', '桂林市');
INSERT INTO `area_tb` VALUES ('450302', null, null, null, '1', null, null, null, '450300', null, 'xfq', 'XiuFengQu ', null, '4', '541001', '秀峰区');
INSERT INTO `area_tb` VALUES ('450303', null, null, null, '1', null, null, null, '450300', null, 'dcq', 'DieCaiQu  ', null, '4', '541001', '叠彩区');
INSERT INTO `area_tb` VALUES ('450304', null, null, null, '1', null, null, null, '450300', null, 'xsq', 'XiangShanQu   ', null, '4', '541002', '象山区');
INSERT INTO `area_tb` VALUES ('450305', null, null, null, '1', null, null, null, '450300', null, 'qxq', 'QiXingQu  ', null, '4', '541004', '七星区');
INSERT INTO `area_tb` VALUES ('450311', null, null, null, '1', null, null, null, '450300', null, 'ysq', 'YanShanQu ', null, '4', '541006', '雁山区');
INSERT INTO `area_tb` VALUES ('450321', null, null, null, '1', null, null, null, '450300', null, 'ysx', 'YangShuoXian  ', null, '4', '541900', '阳朔县');
INSERT INTO `area_tb` VALUES ('450322', null, null, null, '1', null, null, null, '450300', null, 'lgx', 'LinGuiXian', null, '4', '541100', '临桂县');
INSERT INTO `area_tb` VALUES ('450323', null, null, null, '1', null, null, null, '450300', null, 'lcx', 'LingChuanXian ', null, '4', '541200', '灵川县');
INSERT INTO `area_tb` VALUES ('450324', null, null, null, '1', null, null, null, '450300', null, 'qzx', 'QuanZhouXian  ', null, '4', '541500', '全州县');
INSERT INTO `area_tb` VALUES ('450325', null, null, null, '1', null, null, null, '450300', null, 'xax', 'XingAnXian', null, '4', '541300', '兴安县');
INSERT INTO `area_tb` VALUES ('450326', null, null, null, '1', null, null, null, '450300', null, 'yfx', 'YongFuXian', null, '4', '541800', '永福县');
INSERT INTO `area_tb` VALUES ('450327', null, null, null, '1', null, null, null, '450300', null, 'gyx', 'GuanYangXian  ', null, '4', '541600', '灌阳县');
INSERT INTO `area_tb` VALUES ('450328', null, null, null, '1', null, null, null, '450300', null, 'lsgzzzx', 'LongShengGeZuZiZhiXian', null, '4', '541700', '龙胜各族自治县');
INSERT INTO `area_tb` VALUES ('450329', null, null, null, '1', null, null, null, '450300', null, 'zyx', 'ZiYuanXian', null, '4', '541400', '资源县');
INSERT INTO `area_tb` VALUES ('450330', null, null, null, '1', null, null, null, '450300', null, 'plx', 'PingLeXian', null, '4', '542400', '平乐县');
INSERT INTO `area_tb` VALUES ('450331', null, null, null, '1', null, null, null, '450300', null, 'lpx', 'LiPuXian  ', null, '4', '546600', '荔浦县');
INSERT INTO `area_tb` VALUES ('450332', null, null, null, '1', null, null, null, '450300', null, 'gcyzzzx', 'GongChengYaoZuZiZhiXian   ', null, '4', '542500', '恭城瑶族自治县');
INSERT INTO `area_tb` VALUES ('450333', null, null, null, '1', null, null, null, '450300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450400', null, null, null, '1', null, null, null, '450000', null, 'wzs', 'WuZhouShi ', null, '3', '543000', '梧州市');
INSERT INTO `area_tb` VALUES ('450403', null, null, null, '1', null, null, null, '450400', null, 'wxq', 'WanXiuQu  ', null, '4', '543000', '万秀区');
INSERT INTO `area_tb` VALUES ('450404', null, null, null, '1', null, null, null, '450400', null, 'dsq', 'DieShanQu ', null, '4', '543002', '蝶山区');
INSERT INTO `area_tb` VALUES ('450405', null, null, null, '1', null, null, null, '450400', null, 'czq', 'ChangZhouQu   ', null, '4', '543002', '长洲区');
INSERT INTO `area_tb` VALUES ('450421', null, null, null, '1', null, null, null, '450400', null, 'cwx', 'CangWuXian', null, '4', '543100', '苍梧县');
INSERT INTO `area_tb` VALUES ('450422', null, null, null, '1', null, null, null, '450400', null, 'tx', 'TengXian  ', null, '4', '543300', '藤县');
INSERT INTO `area_tb` VALUES ('450423', null, null, null, '1', null, null, null, '450400', null, 'msx', 'MengShanXian  ', null, '4', '546700', '蒙山县');
INSERT INTO `area_tb` VALUES ('450481', null, null, null, '1', null, null, null, '450400', null, 'cxs', 'ZuoXiShi  ', null, '4', '543200', '岑溪市');
INSERT INTO `area_tb` VALUES ('450482', null, null, null, '1', null, null, null, '450400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450500', null, null, null, '1', null, null, null, '450000', null, 'bhs', 'BeiHaiShi ', null, '3', '536000', '北海市');
INSERT INTO `area_tb` VALUES ('450502', null, null, null, '1', null, null, null, '450500', null, 'hcq', 'HaiChengQu', null, '4', '536000', '海城区');
INSERT INTO `area_tb` VALUES ('450503', null, null, null, '1', null, null, null, '450500', null, 'yhq', 'YinHaiQu  ', null, '4', '536000', '银海区');
INSERT INTO `area_tb` VALUES ('450512', null, null, null, '1', null, null, null, '450500', null, 'tsgq', 'TieShanGangQu ', null, '4', '536017', '铁山港区');
INSERT INTO `area_tb` VALUES ('450521', null, null, null, '1', null, null, null, '450500', null, 'hpx', 'HePuXian  ', null, '4', '536100', '合浦县');
INSERT INTO `area_tb` VALUES ('450522', null, null, null, '1', null, null, null, '450500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450600', null, null, null, '1', null, null, null, '450000', null, 'fcgs', 'FangChengGangShi  ', null, '3', '538000', '防城港市');
INSERT INTO `area_tb` VALUES ('450602', null, null, null, '1', null, null, null, '450600', null, 'gkq', 'GangKouQu ', null, '4', '538001', '港口区');
INSERT INTO `area_tb` VALUES ('450603', null, null, null, '1', null, null, null, '450600', null, 'fcq', 'FangChengQu   ', null, '4', '538021', '防城区');
INSERT INTO `area_tb` VALUES ('450621', null, null, null, '1', null, null, null, '450600', null, 'ssx', 'ShangSiXian   ', null, '4', '535500', '上思县');
INSERT INTO `area_tb` VALUES ('450681', null, null, null, '1', null, null, null, '450600', null, 'dxs', 'DongXingShi   ', null, '4', '538100', '东兴市');
INSERT INTO `area_tb` VALUES ('450682', null, null, null, '1', null, null, null, '450600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450700', null, null, null, '1', null, null, null, '450000', null, 'qzs', 'QinZhouShi', null, '3', '535000', '钦州市');
INSERT INTO `area_tb` VALUES ('450702', null, null, null, '1', null, null, null, '450700', null, 'qnq', 'QinNanQu  ', null, '4', '535000', '钦南区');
INSERT INTO `area_tb` VALUES ('450703', null, null, null, '1', null, null, null, '450700', null, 'qbq', 'QinBeiQu  ', null, '4', '535000', '钦北区');
INSERT INTO `area_tb` VALUES ('450721', null, null, null, '1', null, null, null, '450700', null, 'lsx', 'LingShanXian  ', null, '4', '535400', '灵山县');
INSERT INTO `area_tb` VALUES ('450722', null, null, null, '1', null, null, null, '450700', null, 'pbx', 'PuBeiXian ', null, '4', '535300', '浦北县');
INSERT INTO `area_tb` VALUES ('450723', null, null, null, '1', null, null, null, '450700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450800', null, null, null, '1', null, null, null, '450000', null, 'ggs', 'GuiGangShi', null, '3', '537100', '贵港市');
INSERT INTO `area_tb` VALUES ('450802', null, null, null, '1', null, null, null, '450800', null, 'gbq', 'GangBeiQu ', null, '4', '537100', '港北区');
INSERT INTO `area_tb` VALUES ('450803', null, null, null, '1', null, null, null, '450800', null, 'gnq', 'GangNanQu ', null, '4', '537132', '港南区');
INSERT INTO `area_tb` VALUES ('450804', null, null, null, '1', null, null, null, '450800', null, 'ttq', 'ZuoTangQu ', null, '4', '537121', '覃塘区');
INSERT INTO `area_tb` VALUES ('450821', null, null, null, '1', null, null, null, '450800', null, 'pnx', 'PingNanXian   ', null, '4', '537300', '平南县');
INSERT INTO `area_tb` VALUES ('450881', null, null, null, '1', null, null, null, '450800', null, 'gps', 'GuiPingShi', null, '4', '537200', '桂平市');
INSERT INTO `area_tb` VALUES ('450882', null, null, null, '1', null, null, null, '450800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('450900', null, null, null, '1', null, null, null, '450000', null, 'yls', 'YuLinShi  ', null, '3', '537000', '玉林市');
INSERT INTO `area_tb` VALUES ('450902', null, null, null, '1', null, null, null, '450900', null, 'yzq', 'YuZhouQu  ', null, '4', '537000', '玉州区');
INSERT INTO `area_tb` VALUES ('450921', null, null, null, '1', null, null, null, '450900', null, 'rx', 'RongXian  ', null, '4', '537500', '容县');
INSERT INTO `area_tb` VALUES ('450922', null, null, null, '1', null, null, null, '450900', null, 'lcx', 'LuChuanXian   ', null, '4', '537700', '陆川县');
INSERT INTO `area_tb` VALUES ('450923', null, null, null, '1', null, null, null, '450900', null, 'bbx', 'BoBaiXian ', null, '4', '537600', '博白县');
INSERT INTO `area_tb` VALUES ('450924', null, null, null, '1', null, null, null, '450900', null, 'xyx', 'XingYeXian', null, '4', '537800', '兴业县');
INSERT INTO `area_tb` VALUES ('450981', null, null, null, '1', null, null, null, '450900', null, 'bls', 'BeiLiuShi ', null, '4', '537400', '北流市');
INSERT INTO `area_tb` VALUES ('450982', null, null, null, '1', null, null, null, '450900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('451000', null, null, null, '1', null, null, null, '450000', null, 'bss', 'BaiSeShi  ', null, '3', '533000', '百色市');
INSERT INTO `area_tb` VALUES ('451002', null, null, null, '1', null, null, null, '451000', null, 'yjq', 'YouJiangQu', null, '4', '533000', '右江区');
INSERT INTO `area_tb` VALUES ('451021', null, null, null, '1', null, null, null, '451000', null, 'tyx', 'TianYangXian  ', null, '4', '533600', '田阳县');
INSERT INTO `area_tb` VALUES ('451022', null, null, null, '1', null, null, null, '451000', null, 'tdx', 'TianDongXian  ', null, '4', '531500', '田东县');
INSERT INTO `area_tb` VALUES ('451023', null, null, null, '1', null, null, null, '451000', null, 'pgx', 'PingGuoXian   ', null, '4', '531400', '平果县');
INSERT INTO `area_tb` VALUES ('451024', null, null, null, '1', null, null, null, '451000', null, 'dbx', 'DeBaoXian ', null, '4', '533700', '德保县');
INSERT INTO `area_tb` VALUES ('451025', null, null, null, '1', null, null, null, '451000', null, 'jxx', 'JingXiXian', null, '4', '533800', '靖西县');
INSERT INTO `area_tb` VALUES ('451026', null, null, null, '1', null, null, null, '451000', null, 'npx', 'NaPoXian  ', null, '4', '533900', '那坡县');
INSERT INTO `area_tb` VALUES ('451027', null, null, null, '1', null, null, null, '451000', null, 'lyx', 'LingYunXian   ', null, '4', '533100', '凌云县');
INSERT INTO `area_tb` VALUES ('451028', null, null, null, '1', null, null, null, '451000', null, 'lyx', 'LeYeXian  ', null, '4', '533200', '乐业县');
INSERT INTO `area_tb` VALUES ('451029', null, null, null, '1', null, null, null, '451000', null, 'tlx', 'TianLinXian   ', null, '4', '533300', '田林县');
INSERT INTO `area_tb` VALUES ('451030', null, null, null, '1', null, null, null, '451000', null, 'xlx', 'XiLinXian ', null, '4', '533500', '西林县');
INSERT INTO `area_tb` VALUES ('451031', null, null, null, '1', null, null, null, '451000', null, 'llgzzzx', 'LongLinGeZuZiZhiXian  ', null, '4', '533400', '隆林各族自治县');
INSERT INTO `area_tb` VALUES ('451032', null, null, null, '1', null, null, null, '451000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('451100', null, null, null, '1', null, null, null, '450000', null, 'hzs', 'HeZhouShi ', null, '3', '542800', '贺州市');
INSERT INTO `area_tb` VALUES ('451102', null, null, null, '1', null, null, null, '451100', null, 'bbq', 'BaBuQu', null, '4', '542800', '八步区');
INSERT INTO `area_tb` VALUES ('451121', null, null, null, '1', null, null, null, '451100', null, 'zpx', 'ZhaoPingXian  ', null, '4', '546800', '昭平县');
INSERT INTO `area_tb` VALUES ('451122', null, null, null, '1', null, null, null, '451100', null, 'zsx', 'ZhongShanXian ', null, '4', '542600', '钟山县');
INSERT INTO `area_tb` VALUES ('451123', null, null, null, '1', null, null, null, '451100', null, 'fcyzzzx', 'FuChuanYaoZuZiZhiXian ', null, '4', '542700', '富川瑶族自治县');
INSERT INTO `area_tb` VALUES ('451124', null, null, null, '1', null, null, null, '451100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('451200', null, null, null, '1', null, null, null, '450000', null, 'hcs', 'HeChiShi  ', null, '3', '547000', '河池市');
INSERT INTO `area_tb` VALUES ('451202', null, null, null, '1', null, null, null, '451200', null, 'jcjq', 'JinChengJiangQu   ', null, '4', '547000', '金城江区');
INSERT INTO `area_tb` VALUES ('451221', null, null, null, '1', null, null, null, '451200', null, 'ndx', 'NanDanXian', null, '4', '547200', '南丹县');
INSERT INTO `area_tb` VALUES ('451222', null, null, null, '1', null, null, null, '451200', null, 'tex', 'TianEXian ', null, '4', '547300', '天峨县');
INSERT INTO `area_tb` VALUES ('451223', null, null, null, '1', null, null, null, '451200', null, 'fsx', 'FengShanXian  ', null, '4', '547600', '凤山县');
INSERT INTO `area_tb` VALUES ('451224', null, null, null, '1', null, null, null, '451200', null, 'dlx', 'DongLanXian   ', null, '4', '547400', '东兰县');
INSERT INTO `area_tb` VALUES ('451225', null, null, null, '1', null, null, null, '451200', null, 'lcmlzzzx', 'LuoChengZuoLaoZuZiZhiXian ', null, '4', '546400', '罗城仫佬族自治县');
INSERT INTO `area_tb` VALUES ('451226', null, null, null, '1', null, null, null, '451200', null, 'hjmnzzzx', 'HuanJiangMaoNanZuZiZhiXian', null, '4', '547100', '环江毛南族自治县');
INSERT INTO `area_tb` VALUES ('451227', null, null, null, '1', null, null, null, '451200', null, 'bmyzzzx', 'BaMaYaoZuZiZhiXian', null, '4', '547500', '巴马瑶族自治县');
INSERT INTO `area_tb` VALUES ('451228', null, null, null, '1', null, null, null, '451200', null, 'dayzzzx', 'DuAnYaoZuZiZhiXian', null, '4', '530700', '都安瑶族自治县');
INSERT INTO `area_tb` VALUES ('451229', null, null, null, '1', null, null, null, '451200', null, 'dhyzzzx', 'DaHuaYaoZuZiZhiXian   ', null, '4', '530800', '大化瑶族自治县');
INSERT INTO `area_tb` VALUES ('451281', null, null, null, '1', null, null, null, '451200', null, 'yzs', 'YiZhouShi ', null, '4', '546300', '宜州市');
INSERT INTO `area_tb` VALUES ('451282', null, null, null, '1', null, null, null, '451200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('451300', null, null, null, '1', null, null, null, '450000', null, 'lbs', 'LaiBinShi ', null, '3', '546100', '来宾市');
INSERT INTO `area_tb` VALUES ('451302', null, null, null, '1', null, null, null, '451300', null, 'xbq', 'XingBinQu ', null, '4', '546100', '兴宾区');
INSERT INTO `area_tb` VALUES ('451321', null, null, null, '1', null, null, null, '451300', null, 'xcx', 'XinChengXian  ', null, '4', '546200', '忻城县');
INSERT INTO `area_tb` VALUES ('451322', null, null, null, '1', null, null, null, '451300', null, 'xzx', 'XiangZhouXian ', null, '4', '545800', '象州县');
INSERT INTO `area_tb` VALUES ('451323', null, null, null, '1', null, null, null, '451300', null, 'wxx', 'WuXuanXian', null, '4', '545900', '武宣县');
INSERT INTO `area_tb` VALUES ('451324', null, null, null, '1', null, null, null, '451300', null, 'jxyzzzx', 'JinXiuYaoZuZiZhiXian  ', null, '4', '545700', '金秀瑶族自治县');
INSERT INTO `area_tb` VALUES ('451381', null, null, null, '1', null, null, null, '451300', null, 'hss', 'HeShanShi ', null, '4', '546500', '合山市');
INSERT INTO `area_tb` VALUES ('451382', null, null, null, '1', null, null, null, '451300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('451400', null, null, null, '1', null, null, null, '450000', null, 'czs', 'ChongZuoShi   ', null, '3', '532200', '崇左市');
INSERT INTO `area_tb` VALUES ('451402', null, null, null, '1', null, null, null, '451400', null, 'jzq', 'JiangZhouQu   ', null, '4', '532200', '江州区');
INSERT INTO `area_tb` VALUES ('451421', null, null, null, '1', null, null, null, '451400', null, 'fsx', 'FuSuiXian ', null, '4', '532100', '扶绥县');
INSERT INTO `area_tb` VALUES ('451422', null, null, null, '1', null, null, null, '451400', null, 'nmx', 'NingMingXian  ', null, '4', '532500', '宁明县');
INSERT INTO `area_tb` VALUES ('451423', null, null, null, '1', null, null, null, '451400', null, 'lzx', 'LongZhouXian  ', null, '4', '532400', '龙州县');
INSERT INTO `area_tb` VALUES ('451424', null, null, null, '1', null, null, null, '451400', null, 'dxx', 'DaXinXian ', null, '4', '532300', '大新县');
INSERT INTO `area_tb` VALUES ('451425', null, null, null, '1', null, null, null, '451400', null, 'tdx', 'TianDengXian  ', null, '4', '532800', '天等县');
INSERT INTO `area_tb` VALUES ('451481', null, null, null, '1', null, null, null, '451400', null, 'pxs', 'PingXiangShi  ', null, '4', '532600', '凭祥市');
INSERT INTO `area_tb` VALUES ('451482', null, null, null, '1', null, null, null, '451400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('460000', null, null, null, '1', null, null, null, '1', null, 'hns', 'HaiNanSheng   ', null, '2', '', '海南省');
INSERT INTO `area_tb` VALUES ('460100', null, null, null, '1', null, null, null, '460000', null, 'hks', 'HaiKouShi ', null, '3', '570000', '海口市');
INSERT INTO `area_tb` VALUES ('460105', null, null, null, '1', null, null, null, '460100', null, 'xyq', 'XiuYingQu ', null, '4', '570311', '秀英区');
INSERT INTO `area_tb` VALUES ('460106', null, null, null, '1', null, null, null, '460100', null, 'lhq', 'LongHuaQu ', null, '4', '570105', '龙华区');
INSERT INTO `area_tb` VALUES ('460107', null, null, null, '1', null, null, null, '460100', null, 'qsq', 'QiongShanQu   ', null, '4', '571100', '琼山区');
INSERT INTO `area_tb` VALUES ('460108', null, null, null, '1', null, null, null, '460100', null, 'mlq', 'MeiLanQu  ', null, '4', '570203', '美兰区');
INSERT INTO `area_tb` VALUES ('460109', null, null, null, '1', null, null, null, '460100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('460200', null, null, null, '1', null, null, null, '460000', null, 'sys', 'SanYaShi  ', null, '3', '572000', '三亚市');
INSERT INTO `area_tb` VALUES ('469001', null, null, null, '1', null, null, null, '460000', null, 'wzss', 'WuZhiShanShi  ', null, '4', '572200', '五指山市');
INSERT INTO `area_tb` VALUES ('469002', null, null, null, '1', null, null, null, '460000', null, 'qhs', 'QiongHaiShi   ', null, '4', '571400', '琼海市');
INSERT INTO `area_tb` VALUES ('469003', null, null, null, '1', null, null, null, '460000', null, 'dzs', 'ZuoZhouShi', null, '4', '571700', '儋州市');
INSERT INTO `area_tb` VALUES ('469005', null, null, null, '1', null, null, null, '460000', null, 'wcs', 'WenChangShi   ', null, '4', '571300', '文昌市');
INSERT INTO `area_tb` VALUES ('469006', null, null, null, '1', null, null, null, '460000', null, 'wns', 'WanNingShi', null, '4', '571500', '万宁市');
INSERT INTO `area_tb` VALUES ('469007', null, null, null, '1', null, null, null, '460000', null, 'dfs', 'DongFangShi   ', null, '4', '572600', '东方市');
INSERT INTO `area_tb` VALUES ('469025', null, null, null, '1', null, null, null, '460000', null, 'dax', 'DingAnXian', null, '4', '571200', '定安县');
INSERT INTO `area_tb` VALUES ('469026', null, null, null, '1', null, null, null, '460000', null, 'tcx', 'TunChangXian  ', null, '4', '571600', '屯昌县');
INSERT INTO `area_tb` VALUES ('469027', null, null, null, '1', null, null, null, '460000', null, 'cmx', 'ChengMaiXian  ', null, '4', '571900', '澄迈县');
INSERT INTO `area_tb` VALUES ('469028', null, null, null, '1', null, null, null, '460000', null, 'lgx', 'LinGaoXian', null, '4', '571800', '临高县');
INSERT INTO `area_tb` VALUES ('469030', null, null, null, '1', null, null, null, '460000', null, 'bslzzzx', 'BaiShaLiZuZiZhiXian   ', null, '4', '572800', '白沙黎族自治县');
INSERT INTO `area_tb` VALUES ('469031', null, null, null, '1', null, null, null, '460000', null, 'cjlzzzx', 'ChangJiangLiZuZiZhiXian   ', null, '4', '572700', '昌江黎族自治县');
INSERT INTO `area_tb` VALUES ('469033', null, null, null, '1', null, null, null, '460000', null, 'ldlzzzx', 'LeDongLiZuZiZhiXian   ', null, '4', '572500', '乐东黎族自治县');
INSERT INTO `area_tb` VALUES ('469034', null, null, null, '1', null, null, null, '460000', null, 'lslzzzx', 'LingShuiLiZuZiZhiXian ', null, '4', '572400', '陵水黎族自治县');
INSERT INTO `area_tb` VALUES ('469035', null, null, null, '1', null, null, null, '460000', null, 'btlzmzzzx', 'BaoTingLiZuMiaoZuZiZhiXian', null, '4', '572300', '保亭黎族苗族自治县');
INSERT INTO `area_tb` VALUES ('469036', null, null, null, '1', null, null, null, '460000', null, 'qzlzmzzzx', 'QiongZhongLiZuMiaoZuZiZhiXian ', null, '4', '572900', '琼中黎族苗族自治县');
INSERT INTO `area_tb` VALUES ('469037', null, null, null, '1', null, null, null, '460000', null, 'xsqd', 'XiShaQunDao   ', null, '4', '573100', '西沙群岛');
INSERT INTO `area_tb` VALUES ('469038', null, null, null, '1', null, null, null, '460000', null, 'nsqd', 'NanShaQunDao  ', null, '4', '573100', '南沙群岛');
INSERT INTO `area_tb` VALUES ('469039', null, null, null, '1', null, null, null, '460000', null, 'zsqdddjjqhy', 'ZhongShaQunDaoDeDaoJiaoJiQiHai', null, '4', '573100', '中沙群岛的岛礁及其海域');
INSERT INTO `area_tb` VALUES ('471004', null, null, null, '1', null, null, null, '410300', null, 'gxq', 'GaoXinQu  ', null, '4', '', '高新区');
INSERT INTO `area_tb` VALUES ('471005', null, null, null, '1', null, null, null, '410300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('500000', null, null, null, '1', null, null, null, '1', null, 'cq', 'ChongQing ', null, '2', '', '重庆');
INSERT INTO `area_tb` VALUES ('500100', null, null, null, '1', null, null, null, '500000', null, 'zqs', 'ZhongQingShi  ', null, '3', '400000', '重庆市');
INSERT INTO `area_tb` VALUES ('500101', null, null, null, '1', null, null, null, '500100', null, 'wzq', 'WanZhouQu ', null, '4', '404000', '万州区');
INSERT INTO `area_tb` VALUES ('500102', null, null, null, '1', null, null, null, '500100', null, 'flq', 'FuLingQu  ', null, '4', '408000', '涪陵区');
INSERT INTO `area_tb` VALUES ('500103', null, null, null, '1', null, null, null, '500100', null, 'yzq', 'YuZhongQu ', null, '4', '400012', '渝中区');
INSERT INTO `area_tb` VALUES ('500104', null, null, null, '1', null, null, null, '500100', null, 'ddkq', 'DaDuKouQu ', null, '4', '400084', '大渡口区');
INSERT INTO `area_tb` VALUES ('500105', null, null, null, '1', null, null, null, '500100', null, 'jbq', 'JiangBeiQu', null, '4', '400021', '江北区');
INSERT INTO `area_tb` VALUES ('500106', null, null, null, '1', null, null, null, '500100', null, 'spbq', 'ShaPingBaQu   ', null, '4', '400020', '沙坪坝区');
INSERT INTO `area_tb` VALUES ('500107', null, null, null, '1', null, null, null, '500100', null, 'jlpq', 'JiuLongPoQu   ', null, '4', '400039', '九龙坡区');
INSERT INTO `area_tb` VALUES ('500108', null, null, null, '1', null, null, null, '500100', null, 'naq', 'NanAnQu   ', null, '4', '400060', '南岸区');
INSERT INTO `area_tb` VALUES ('500109', null, null, null, '1', null, null, null, '500100', null, 'bbq', 'BeiZuoQu  ', null, '4', '400700', '北碚区');
INSERT INTO `area_tb` VALUES ('500110', null, null, null, '1', null, null, null, '500100', null, 'wsq', 'WanShengQu', null, '4', '400800', '万盛区');
INSERT INTO `area_tb` VALUES ('500111', null, null, null, '1', null, null, null, '500100', null, 'sqq', 'ShuangQiaoQu  ', null, '4', '400900', '双桥区');
INSERT INTO `area_tb` VALUES ('500112', null, null, null, '1', null, null, null, '500100', null, 'ybq', 'YuBeiQu   ', null, '4', '401120', '渝北区');
INSERT INTO `area_tb` VALUES ('500113', null, null, null, '1', null, null, null, '500100', null, 'bnq', 'BaNanQu   ', null, '4', '401320', '巴南区');
INSERT INTO `area_tb` VALUES ('500114', null, null, null, '1', null, null, null, '500100', null, 'qjq', 'QianJiangQu   ', null, '4', '409700', '黔江区');
INSERT INTO `area_tb` VALUES ('500115', null, null, null, '1', null, null, null, '500100', null, 'csq', 'ChangShouQu   ', null, '4', '401220', '长寿区');
INSERT INTO `area_tb` VALUES ('500222', null, null, null, '1', null, null, null, '500100', null, 'qjx', 'ZuoJiangXian  ', null, '4', '401420', '綦江县');
INSERT INTO `area_tb` VALUES ('500223', null, null, null, '1', null, null, null, '500100', null, 'tnx', 'ZuoNanXian', null, '4', '402660', '潼南县');
INSERT INTO `area_tb` VALUES ('500224', null, null, null, '1', null, null, null, '500100', null, 'tlx', 'TongLiangXian ', null, '4', '402560', '铜梁县');
INSERT INTO `area_tb` VALUES ('500225', null, null, null, '1', null, null, null, '500100', null, 'dzx', 'DaZuXian  ', null, '4', '402360', '大足县');
INSERT INTO `area_tb` VALUES ('500226', null, null, null, '1', null, null, null, '500100', null, 'rcx', 'RongChangXian ', null, '4', '402460', '荣昌县');
INSERT INTO `area_tb` VALUES ('500227', null, null, null, '1', null, null, null, '500100', null, 'bsx', 'ZuoShanXian   ', null, '4', '402760', '璧山县');
INSERT INTO `area_tb` VALUES ('500228', null, null, null, '1', null, null, null, '500100', null, 'lpx', 'LiangPingXian ', null, '4', '405200', '梁平县');
INSERT INTO `area_tb` VALUES ('500229', null, null, null, '1', null, null, null, '500100', null, 'ckx', 'ChengKouXian  ', null, '4', '405900', '城口县');
INSERT INTO `area_tb` VALUES ('500230', null, null, null, '1', null, null, null, '500100', null, 'fdx', 'FengDuXian', null, '4', '408200', '丰都县');
INSERT INTO `area_tb` VALUES ('500231', null, null, null, '1', null, null, null, '500100', null, 'djx', 'DianJiangXian ', null, '4', '408300', '垫江县');
INSERT INTO `area_tb` VALUES ('500232', null, null, null, '1', null, null, null, '500100', null, 'wlx', 'WuLongXian', null, '4', '408500', '武隆县');
INSERT INTO `area_tb` VALUES ('500233', null, null, null, '1', null, null, null, '500100', null, 'zx', 'ZhongXian ', null, '4', '404300', '忠县');
INSERT INTO `area_tb` VALUES ('500234', null, null, null, '1', null, null, null, '500100', null, 'kx', 'KaiXian   ', null, '4', '405400', '开县');
INSERT INTO `area_tb` VALUES ('500235', null, null, null, '1', null, null, null, '500100', null, 'yyx', 'YunYangXian   ', null, '4', '404500', '云阳县');
INSERT INTO `area_tb` VALUES ('500236', null, null, null, '1', null, null, null, '500100', null, 'fjx', 'FengJieXian   ', null, '4', '404600', '奉节县');
INSERT INTO `area_tb` VALUES ('500237', null, null, null, '1', null, null, null, '500100', null, 'wsx', 'WuShanXian', null, '4', '404700', '巫山县');
INSERT INTO `area_tb` VALUES ('500238', null, null, null, '1', null, null, null, '500100', null, 'wxx', 'WuXiXian  ', null, '4', '405800', '巫溪县');
INSERT INTO `area_tb` VALUES ('500240', null, null, null, '1', null, null, null, '500100', null, 'sztjzzzx', 'ShiZhuTuJiaZuZiZhiXian', null, '4', '409100', '石柱土家族自治县');
INSERT INTO `area_tb` VALUES ('500241', null, null, null, '1', null, null, null, '500100', null, 'xstjzmzzzx', 'XiuShanTuJiaZuMiaoZuZiZhiXian ', null, '4', '409900', '秀山土家族苗族自治县');
INSERT INTO `area_tb` VALUES ('500242', null, null, null, '1', null, null, null, '500100', null, 'yytjzmzzzx', 'YouYangTuJiaZuMiaoZuZiZhiXian ', null, '4', '409800', '酉阳土家族苗族自治县');
INSERT INTO `area_tb` VALUES ('500243', null, null, null, '1', null, null, null, '500100', null, 'psmztjzzzx', 'PengShuiMiaoZuTuJiaZuZiZhiXian', null, '4', '409600', '彭水苗族土家族自治县');
INSERT INTO `area_tb` VALUES ('500381', null, null, null, '1', null, null, null, '500100', null, 'jjq', 'JiangJinQu', null, '4', '402260', '江津区');
INSERT INTO `area_tb` VALUES ('500382', null, null, null, '1', null, null, null, '500100', null, 'hcq', 'HeChuanQu ', null, '4', '401520', '合川区');
INSERT INTO `area_tb` VALUES ('500383', null, null, null, '1', null, null, null, '500100', null, 'ycq', 'YongChuanQu   ', null, '4', '402160', '永川区');
INSERT INTO `area_tb` VALUES ('500384', null, null, null, '1', null, null, null, '500100', null, 'ncq', 'NanChuanQu', null, '4', '408400', '南川区');
INSERT INTO `area_tb` VALUES ('500385', null, null, null, '1', null, null, null, '500100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510000', null, null, null, '1', null, null, null, '1', null, 'scs', 'SiChuanSheng  ', null, '2', '', '四川省');
INSERT INTO `area_tb` VALUES ('510100', null, null, null, '1', null, null, null, '510000', null, 'cds', 'ChengDuShi', null, '3', '610000', '成都市');
INSERT INTO `area_tb` VALUES ('510104', null, null, null, '1', null, null, null, '510100', null, 'jjq', 'JinJiangQu', null, '4', '610011', '锦江区');
INSERT INTO `area_tb` VALUES ('510105', null, null, null, '1', null, null, null, '510100', null, 'qyq', 'QingYangQu', null, '4', '610031', '青羊区');
INSERT INTO `area_tb` VALUES ('510106', null, null, null, '1', null, null, null, '510100', null, 'jnq', 'JinNiuQu  ', null, '4', '610036', '金牛区');
INSERT INTO `area_tb` VALUES ('510107', null, null, null, '1', null, null, null, '510100', null, 'whq', 'WuHouQu   ', null, '4', '610041', '武侯区');
INSERT INTO `area_tb` VALUES ('510108', null, null, null, '1', null, null, null, '510100', null, 'chq', 'ChengHuaQu', null, '4', '610066', '成华区');
INSERT INTO `area_tb` VALUES ('510112', null, null, null, '1', null, null, null, '510100', null, 'lqyq', 'LongQuanZuoQu ', null, '4', '610100', '龙泉驿区');
INSERT INTO `area_tb` VALUES ('510113', null, null, null, '1', null, null, null, '510100', null, 'qbjq', 'QingBaiJiangQu', null, '4', '610300', '青白江区');
INSERT INTO `area_tb` VALUES ('510114', null, null, null, '1', null, null, null, '510100', null, 'xdq', 'XinDuQu   ', null, '4', '610500', '新都区');
INSERT INTO `area_tb` VALUES ('510115', null, null, null, '1', null, null, null, '510100', null, 'wjq', 'WenJiangQu', null, '4', '611130', '温江区');
INSERT INTO `area_tb` VALUES ('510121', null, null, null, '1', null, null, null, '510100', null, 'jtx', 'JinTangXian   ', null, '4', '610400', '金堂县');
INSERT INTO `area_tb` VALUES ('510122', null, null, null, '1', null, null, null, '510100', null, 'slx', 'ShuangLiuXian ', null, '4', '610200', '双流县');
INSERT INTO `area_tb` VALUES ('510124', null, null, null, '1', null, null, null, '510100', null, 'px', 'ZuoXian   ', null, '4', '611730', '郫县');
INSERT INTO `area_tb` VALUES ('510129', null, null, null, '1', null, null, null, '510100', null, 'dyx', 'DaYiXian  ', null, '4', '611330', '大邑县');
INSERT INTO `area_tb` VALUES ('510131', null, null, null, '1', null, null, null, '510100', null, 'pjx', 'PuJiangXian   ', null, '4', '611630', '蒲江县');
INSERT INTO `area_tb` VALUES ('510132', null, null, null, '1', null, null, null, '510100', null, 'xjx', 'XinJinXian', null, '4', '611430', '新津县');
INSERT INTO `area_tb` VALUES ('510181', null, null, null, '1', null, null, null, '510100', null, 'djys', 'DuJiangYanShi ', null, '4', '611830', '都江堰市');
INSERT INTO `area_tb` VALUES ('510182', null, null, null, '1', null, null, null, '510100', null, 'pzs', 'PengZhouShi   ', null, '4', '611930', '彭州市');
INSERT INTO `area_tb` VALUES ('510183', null, null, null, '1', null, null, null, '510100', null, 'qls', 'ZuoZuoShi ', null, '4', '611530', '邛崃市');
INSERT INTO `area_tb` VALUES ('510184', null, null, null, '1', null, null, null, '510100', null, 'czs', 'ChongZhouShi  ', null, '4', '611230', '崇州市');
INSERT INTO `area_tb` VALUES ('510185', null, null, null, '1', null, null, null, '510100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510300', null, null, null, '1', null, null, null, '510000', null, 'zgs', 'ZiGongShi ', null, '3', '643000', '自贡市');
INSERT INTO `area_tb` VALUES ('510302', null, null, null, '1', null, null, null, '510300', null, 'zljq', 'ZiLiuJingQu   ', null, '4', '643000', '自流井区');
INSERT INTO `area_tb` VALUES ('510303', null, null, null, '1', null, null, null, '510300', null, 'gjq', 'GongJingQu', null, '4', '643020', '贡井区');
INSERT INTO `area_tb` VALUES ('510304', null, null, null, '1', null, null, null, '510300', null, 'daq', 'DaAnQu', null, '4', '643010', '大安区');
INSERT INTO `area_tb` VALUES ('510311', null, null, null, '1', null, null, null, '510300', null, 'ytq', 'YanTanQu  ', null, '4', '643030', '沿滩区');
INSERT INTO `area_tb` VALUES ('510321', null, null, null, '1', null, null, null, '510300', null, 'rx', 'RongXian  ', null, '4', '643100', '荣县');
INSERT INTO `area_tb` VALUES ('510322', null, null, null, '1', null, null, null, '510300', null, 'fsx', 'FuShunXian', null, '4', '643200', '富顺县');
INSERT INTO `area_tb` VALUES ('510323', null, null, null, '1', null, null, null, '510300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510400', null, null, null, '1', null, null, null, '510000', null, 'pzhs', 'PanZhiHuaShi  ', null, '3', '617000', '攀枝花市');
INSERT INTO `area_tb` VALUES ('510402', null, null, null, '1', null, null, null, '510400', null, 'dq', 'DongQu', null, '4', '617067', '东区');
INSERT INTO `area_tb` VALUES ('510403', null, null, null, '1', null, null, null, '510400', null, 'xq', 'XiQu  ', null, '4', '617012', '西区');
INSERT INTO `area_tb` VALUES ('510411', null, null, null, '1', null, null, null, '510400', null, 'rhq', 'RenHeQu   ', null, '4', '617061', '仁和区');
INSERT INTO `area_tb` VALUES ('510421', null, null, null, '1', null, null, null, '510400', null, 'myx', 'MiYiXian  ', null, '4', '617200', '米易县');
INSERT INTO `area_tb` VALUES ('510422', null, null, null, '1', null, null, null, '510400', null, 'ybx', 'YanBianXian   ', null, '4', '617100', '盐边县');
INSERT INTO `area_tb` VALUES ('510423', null, null, null, '1', null, null, null, '510400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510500', null, null, null, '1', null, null, null, '510000', null, 'lzs', 'ZuoZhouShi', null, '3', '646000', '泸州市');
INSERT INTO `area_tb` VALUES ('510502', null, null, null, '1', null, null, null, '510500', null, 'jyq', 'JiangYangQu   ', null, '4', '646000', '江阳区');
INSERT INTO `area_tb` VALUES ('510503', null, null, null, '1', null, null, null, '510500', null, 'nxq', 'NaXiQu', null, '4', '646300', '纳溪区');
INSERT INTO `area_tb` VALUES ('510504', null, null, null, '1', null, null, null, '510500', null, 'lmtq', 'LongMaTanQu   ', null, '4', '646000', '龙马潭区');
INSERT INTO `area_tb` VALUES ('510521', null, null, null, '1', null, null, null, '510500', null, 'lx', 'ZuoXian   ', null, '4', '646100', '泸县');
INSERT INTO `area_tb` VALUES ('510522', null, null, null, '1', null, null, null, '510500', null, 'hjx', 'HeJiangXian   ', null, '4', '646200', '合江县');
INSERT INTO `area_tb` VALUES ('510524', null, null, null, '1', null, null, null, '510500', null, 'xyx', 'XuYongXian', null, '4', '646400', '叙永县');
INSERT INTO `area_tb` VALUES ('510525', null, null, null, '1', null, null, null, '510500', null, 'glx', 'GuZuoXian ', null, '4', '646500', '古蔺县');
INSERT INTO `area_tb` VALUES ('510526', null, null, null, '1', null, null, null, '510500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510600', null, null, null, '1', null, null, null, '510000', null, 'dys', 'DeYangShi ', null, '3', '618000', '德阳市');
INSERT INTO `area_tb` VALUES ('510603', null, null, null, '1', null, null, null, '510600', null, 'jyq', 'ZuoYangQu ', null, '4', '618000', '旌阳区');
INSERT INTO `area_tb` VALUES ('510623', null, null, null, '1', null, null, null, '510600', null, 'zjx', 'ZhongJiangXian', null, '4', '618300', '中江县');
INSERT INTO `area_tb` VALUES ('510626', null, null, null, '1', null, null, null, '510600', null, 'ljx', 'LuoJiangXian  ', null, '4', '618500', '罗江县');
INSERT INTO `area_tb` VALUES ('510681', null, null, null, '1', null, null, null, '510600', null, 'ghs', 'GuangHanShi   ', null, '4', '618300', '广汉市');
INSERT INTO `area_tb` VALUES ('510682', null, null, null, '1', null, null, null, '510600', null, 'sfs', 'ShiZuoShi ', null, '4', '618400', '什邡市');
INSERT INTO `area_tb` VALUES ('510683', null, null, null, '1', null, null, null, '510600', null, 'mzs', 'MianZhuShi', null, '4', '618200', '绵竹市');
INSERT INTO `area_tb` VALUES ('510684', null, null, null, '1', null, null, null, '510600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510700', null, null, null, '1', null, null, null, '510000', null, 'mys', 'MianYangShi   ', null, '3', '621000', '绵阳市');
INSERT INTO `area_tb` VALUES ('510703', null, null, null, '1', null, null, null, '510700', null, 'fcq', 'FuChengQu ', null, '4', '621000', '涪城区');
INSERT INTO `area_tb` VALUES ('510704', null, null, null, '1', null, null, null, '510700', null, 'yxq', 'YouXianQu ', null, '4', '621022', '游仙区');
INSERT INTO `area_tb` VALUES ('510722', null, null, null, '1', null, null, null, '510700', null, 'stx', 'SanTaiXian', null, '4', '621100', '三台县');
INSERT INTO `area_tb` VALUES ('510723', null, null, null, '1', null, null, null, '510700', null, 'ytx', 'YanTingXian   ', null, '4', '621600', '盐亭县');
INSERT INTO `area_tb` VALUES ('510724', null, null, null, '1', null, null, null, '510700', null, 'ax', 'AnXian', null, '4', '622650', '安县');
INSERT INTO `area_tb` VALUES ('510725', null, null, null, '1', null, null, null, '510700', null, 'ztx', 'ZuoZuoXian', null, '4', '622150', '梓潼县');
INSERT INTO `area_tb` VALUES ('510726', null, null, null, '1', null, null, null, '510700', null, 'bcqzzzx', 'BeiChuanQiangZuZiZhiXian  ', null, '4', '622750', '北川羌族自治县');
INSERT INTO `area_tb` VALUES ('510727', null, null, null, '1', null, null, null, '510700', null, 'pwx', 'PingWuXian', null, '4', '621550', '平武县');
INSERT INTO `area_tb` VALUES ('510751', null, null, null, '1', null, null, null, '510700', null, 'gxq', 'GaoXinQu  ', null, '4', '', '高新区');
INSERT INTO `area_tb` VALUES ('510781', null, null, null, '1', null, null, null, '510700', null, 'jys', 'JiangYouShi   ', null, '4', '621700', '江油市');
INSERT INTO `area_tb` VALUES ('510782', null, null, null, '1', null, null, null, '510700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510800', null, null, null, '1', null, null, null, '510000', null, 'gys', 'GuangYuanShi  ', null, '3', '628000', '广元市');
INSERT INTO `area_tb` VALUES ('510802', null, null, null, '1', null, null, null, '510800', null, 'lzq', 'LiZhouQu  ', null, '4', '628017', '利州区');
INSERT INTO `area_tb` VALUES ('510811', null, null, null, '1', null, null, null, '510800', null, 'ybq', 'YuanBaQu  ', null, '4', '628021', '元坝区');
INSERT INTO `area_tb` VALUES ('510812', null, null, null, '1', null, null, null, '510800', null, 'ctq', 'ChaoTianQu', null, '4', '628012', '朝天区');
INSERT INTO `area_tb` VALUES ('510821', null, null, null, '1', null, null, null, '510800', null, 'wcx', 'WangCangXian  ', null, '4', '628200', '旺苍县');
INSERT INTO `area_tb` VALUES ('510822', null, null, null, '1', null, null, null, '510800', null, 'qcx', 'QingChuanXian ', null, '4', '628100', '青川县');
INSERT INTO `area_tb` VALUES ('510823', null, null, null, '1', null, null, null, '510800', null, 'jgx', 'JianGeXian', null, '4', '628300', '剑阁县');
INSERT INTO `area_tb` VALUES ('510824', null, null, null, '1', null, null, null, '510800', null, 'cxx', 'CangXiXian', null, '4', '628400', '苍溪县');
INSERT INTO `area_tb` VALUES ('510825', null, null, null, '1', null, null, null, '510800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('510900', null, null, null, '1', null, null, null, '510000', null, 'sns', 'SuiNingShi', null, '3', '629000', '遂宁市');
INSERT INTO `area_tb` VALUES ('510903', null, null, null, '1', null, null, null, '510900', null, 'csq', 'ChuanShanQu   ', null, '4', '629000', '船山区');
INSERT INTO `area_tb` VALUES ('510904', null, null, null, '1', null, null, null, '510900', null, 'ajq', 'AnJuQu', null, '4', '629000', '安居区');
INSERT INTO `area_tb` VALUES ('510921', null, null, null, '1', null, null, null, '510900', null, 'pxx', 'PengXiXian', null, '4', '629100', '蓬溪县');
INSERT INTO `area_tb` VALUES ('510922', null, null, null, '1', null, null, null, '510900', null, 'shx', 'SheHongXian   ', null, '4', '629200', '射洪县');
INSERT INTO `area_tb` VALUES ('510923', null, null, null, '1', null, null, null, '510900', null, 'dyx', 'DaYingXian', null, '4', '629300', '大英县');
INSERT INTO `area_tb` VALUES ('510924', null, null, null, '1', null, null, null, '510900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511000', null, null, null, '1', null, null, null, '510000', null, 'njs', 'NeiJiangShi   ', null, '3', '641000', '内江市');
INSERT INTO `area_tb` VALUES ('511002', null, null, null, '1', null, null, null, '511000', null, 'szq', 'ShiZhongQu', null, '4', '641000', '市中区');
INSERT INTO `area_tb` VALUES ('511011', null, null, null, '1', null, null, null, '511000', null, 'dxq', 'DongXingQu', null, '4', '641100', '东兴区');
INSERT INTO `area_tb` VALUES ('511024', null, null, null, '1', null, null, null, '511000', null, 'wyx', 'WeiYuanXian   ', null, '4', '642450', '威远县');
INSERT INTO `area_tb` VALUES ('511025', null, null, null, '1', null, null, null, '511000', null, 'zzx', 'ZiZhongXian   ', null, '4', '641200', '资中县');
INSERT INTO `area_tb` VALUES ('511028', null, null, null, '1', null, null, null, '511000', null, 'lcx', 'LongChangXian ', null, '4', '642150', '隆昌县');
INSERT INTO `area_tb` VALUES ('511029', null, null, null, '1', null, null, null, '511000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511100', null, null, null, '1', null, null, null, '510000', null, 'lss', 'LeShanShi ', null, '3', '614000', '乐山市');
INSERT INTO `area_tb` VALUES ('511102', null, null, null, '1', null, null, null, '511100', null, 'szq', 'ShiZhongQu', null, '4', '614000', '市中区');
INSERT INTO `area_tb` VALUES ('511111', null, null, null, '1', null, null, null, '511100', null, 'swq', 'ShaWanQu  ', null, '4', '614900', '沙湾区');
INSERT INTO `area_tb` VALUES ('511112', null, null, null, '1', null, null, null, '511100', null, 'wtqq', 'WuTongQiaoQu  ', null, '4', '614800', '五通桥区');
INSERT INTO `area_tb` VALUES ('511113', null, null, null, '1', null, null, null, '511100', null, 'jkhq', 'JinKouHeQu', null, '4', '614700', '金口河区');
INSERT INTO `area_tb` VALUES ('511123', null, null, null, '1', null, null, null, '511100', null, 'jwx', 'ZuoWeiXian', null, '4', '614400', '犍为县');
INSERT INTO `area_tb` VALUES ('511124', null, null, null, '1', null, null, null, '511100', null, 'jyx', 'JingYanXian   ', null, '4', '613100', '井研县');
INSERT INTO `area_tb` VALUES ('511126', null, null, null, '1', null, null, null, '511100', null, 'jjx', 'JiaJiangXian  ', null, '4', '614100', '夹江县');
INSERT INTO `area_tb` VALUES ('511129', null, null, null, '1', null, null, null, '511100', null, 'mcx', 'ZuoChuanXian  ', null, '4', '614500', '沐川县');
INSERT INTO `area_tb` VALUES ('511132', null, null, null, '1', null, null, null, '511100', null, 'ebyzzzx', 'EBianYiZuZiZhiXian', null, '4', '614300', '峨边彝族自治县');
INSERT INTO `area_tb` VALUES ('511133', null, null, null, '1', null, null, null, '511100', null, 'mbyzzzx', 'MaBianYiZuZiZhiXian   ', null, '4', '614600', '马边彝族自治县');
INSERT INTO `area_tb` VALUES ('511181', null, null, null, '1', null, null, null, '511100', null, 'emss', 'EMeiShanShi   ', null, '4', '614200', '峨眉山市');
INSERT INTO `area_tb` VALUES ('511182', null, null, null, '1', null, null, null, '511100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511300', null, null, null, '1', null, null, null, '510000', null, 'ncs', 'NanChongShi   ', null, '3', '637000', '南充市');
INSERT INTO `area_tb` VALUES ('511302', null, null, null, '1', null, null, null, '511300', null, 'sqq', 'ShunQingQu', null, '4', '637500', '顺庆区');
INSERT INTO `area_tb` VALUES ('511303', null, null, null, '1', null, null, null, '511300', null, 'gpq', 'GaoPingQu ', null, '4', '637100', '高坪区');
INSERT INTO `area_tb` VALUES ('511304', null, null, null, '1', null, null, null, '511300', null, 'jlq', 'JiaLingQu ', null, '4', '637900', '嘉陵区');
INSERT INTO `area_tb` VALUES ('511321', null, null, null, '1', null, null, null, '511300', null, 'nbx', 'NanBuXian ', null, '4', '637300', '南部县');
INSERT INTO `area_tb` VALUES ('511322', null, null, null, '1', null, null, null, '511300', null, 'ysx', 'YingShanXian  ', null, '4', '638150', '营山县');
INSERT INTO `area_tb` VALUES ('511323', null, null, null, '1', null, null, null, '511300', null, 'pax', 'PengAnXian', null, '4', '638250', '蓬安县');
INSERT INTO `area_tb` VALUES ('511324', null, null, null, '1', null, null, null, '511300', null, 'ylx', 'YiLongXian', null, '4', '637600', '仪陇县');
INSERT INTO `area_tb` VALUES ('511325', null, null, null, '1', null, null, null, '511300', null, 'xcx', 'XiChongXian   ', null, '4', '637200', '西充县');
INSERT INTO `area_tb` VALUES ('511381', null, null, null, '1', null, null, null, '511300', null, 'lzs', 'ZuoZhongShi   ', null, '4', '637400', '阆中市');
INSERT INTO `area_tb` VALUES ('511382', null, null, null, '1', null, null, null, '511300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511400', null, null, null, '1', null, null, null, '510000', null, 'mss', 'MeiShanShi', null, '3', '620000', '眉山市');
INSERT INTO `area_tb` VALUES ('511402', null, null, null, '1', null, null, null, '511400', null, 'dpq', 'DongPoQu  ', null, '4', '620010', '东坡区');
INSERT INTO `area_tb` VALUES ('511421', null, null, null, '1', null, null, null, '511400', null, 'rsx', 'RenShouXian   ', null, '4', '620500', '仁寿县');
INSERT INTO `area_tb` VALUES ('511422', null, null, null, '1', null, null, null, '511400', null, 'psx', 'PengShanXian  ', null, '4', '620860', '彭山县');
INSERT INTO `area_tb` VALUES ('511423', null, null, null, '1', null, null, null, '511400', null, 'hyx', 'HongYaXian', null, '4', '620360', '洪雅县');
INSERT INTO `area_tb` VALUES ('511424', null, null, null, '1', null, null, null, '511400', null, 'dlx', 'DanLengXian   ', null, '4', '620200', '丹棱县');
INSERT INTO `area_tb` VALUES ('511425', null, null, null, '1', null, null, null, '511400', null, 'qsx', 'QingShenXian  ', null, '4', '620460', '青神县');
INSERT INTO `area_tb` VALUES ('511426', null, null, null, '1', null, null, null, '511400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511500', null, null, null, '1', null, null, null, '510000', null, 'ybs', 'YiBinShi  ', null, '3', '644000', '宜宾市');
INSERT INTO `area_tb` VALUES ('511502', null, null, null, '1', null, null, null, '511500', null, 'cpq', 'CuiPingQu ', null, '4', '644000', '翠屏区');
INSERT INTO `area_tb` VALUES ('511521', null, null, null, '1', null, null, null, '511500', null, 'ybx', 'YiBinXian ', null, '4', '644600', '宜宾县');
INSERT INTO `area_tb` VALUES ('511522', null, null, null, '1', null, null, null, '511500', null, 'nxx', 'NanXiXian ', null, '4', '644100', '南溪县');
INSERT INTO `area_tb` VALUES ('511523', null, null, null, '1', null, null, null, '511500', null, 'jax', 'JiangAnXian   ', null, '4', '644200', '江安县');
INSERT INTO `area_tb` VALUES ('511524', null, null, null, '1', null, null, null, '511500', null, 'cnx', 'ChangNingXian ', null, '4', '644300', '长宁县');
INSERT INTO `area_tb` VALUES ('511525', null, null, null, '1', null, null, null, '511500', null, 'gx', 'GaoXian   ', null, '4', '645150', '高县');
INSERT INTO `area_tb` VALUES ('511526', null, null, null, '1', null, null, null, '511500', null, 'gx', 'ZuoXian   ', null, '4', '644500', '珙县');
INSERT INTO `area_tb` VALUES ('511527', null, null, null, '1', null, null, null, '511500', null, 'ylx', 'ZuoLianXian   ', null, '4', '645250', '筠连县');
INSERT INTO `area_tb` VALUES ('511528', null, null, null, '1', null, null, null, '511500', null, 'xwx', 'XingWenXian   ', null, '4', '644400', '兴文县');
INSERT INTO `area_tb` VALUES ('511529', null, null, null, '1', null, null, null, '511500', null, 'psx', 'PingShanXian  ', null, '4', '645350', '屏山县');
INSERT INTO `area_tb` VALUES ('511530', null, null, null, '1', null, null, null, '511500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511600', null, null, null, '1', null, null, null, '510000', null, 'gas', 'GuangAnShi', null, '3', '638000', '广安市');
INSERT INTO `area_tb` VALUES ('511602', null, null, null, '1', null, null, null, '511600', null, 'gaq', 'GuangAnQu ', null, '4', '638550', '广安区');
INSERT INTO `area_tb` VALUES ('511621', null, null, null, '1', null, null, null, '511600', null, 'ycx', 'YueChiXian', null, '4', '638300', '岳池县');
INSERT INTO `area_tb` VALUES ('511622', null, null, null, '1', null, null, null, '511600', null, 'wsx', 'WuShengXian   ', null, '4', '638420', '武胜县');
INSERT INTO `area_tb` VALUES ('511623', null, null, null, '1', null, null, null, '511600', null, 'lsx', 'LinShuiXian   ', null, '4', '638520', '邻水县');
INSERT INTO `area_tb` VALUES ('511681', null, null, null, '1', null, null, null, '511600', null, 'hys', 'HuaZuoShi ', null, '4', '638650', '华蓥市');
INSERT INTO `area_tb` VALUES ('511682', null, null, null, '1', null, null, null, '511600', null, 'sxq', 'ShiXiaQu  ', null, '4', '', '市辖区');
INSERT INTO `area_tb` VALUES ('511683', null, null, null, '1', null, null, null, '511600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511700', null, null, null, '1', null, null, null, '510000', null, 'dzs', 'DaZhouShi ', null, '3', '635000', '达州市');
INSERT INTO `area_tb` VALUES ('511702', null, null, null, '1', null, null, null, '511700', null, 'tcq', 'TongChuanQu   ', null, '4', '635000', '通川区');
INSERT INTO `area_tb` VALUES ('511721', null, null, null, '1', null, null, null, '511700', null, 'dx', 'DaXian', null, '4', '635006', '达县');
INSERT INTO `area_tb` VALUES ('511722', null, null, null, '1', null, null, null, '511700', null, 'xhx', 'XuanHanXian   ', null, '4', '636150', '宣汉县');
INSERT INTO `area_tb` VALUES ('511723', null, null, null, '1', null, null, null, '511700', null, 'kjx', 'KaiJiangXian  ', null, '4', '636250', '开江县');
INSERT INTO `area_tb` VALUES ('511724', null, null, null, '1', null, null, null, '511700', null, 'dzx', 'DaZhuXian ', null, '4', '635100', '大竹县');
INSERT INTO `area_tb` VALUES ('511725', null, null, null, '1', null, null, null, '511700', null, 'qx', 'QuXian', null, '4', '635200', '渠县');
INSERT INTO `area_tb` VALUES ('511781', null, null, null, '1', null, null, null, '511700', null, 'wys', 'WanYuanShi', null, '4', '636350', '万源市');
INSERT INTO `area_tb` VALUES ('511782', null, null, null, '1', null, null, null, '511700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511800', null, null, null, '1', null, null, null, '510000', null, 'yas', 'YaAnShi   ', null, '3', '625000', '雅安市');
INSERT INTO `area_tb` VALUES ('511802', null, null, null, '1', null, null, null, '511800', null, 'ycq', 'YuChengQu ', null, '4', '625000', '雨城区');
INSERT INTO `area_tb` VALUES ('511821', null, null, null, '1', null, null, null, '511800', null, 'msx', 'MingShanXian  ', null, '4', '625100', '名山县');
INSERT INTO `area_tb` VALUES ('511822', null, null, null, '1', null, null, null, '511800', null, 'xjx', 'ZuoJingXian   ', null, '4', '625200', '荥经县');
INSERT INTO `area_tb` VALUES ('511823', null, null, null, '1', null, null, null, '511800', null, 'hyx', 'HanYuanXian   ', null, '4', '625300', '汉源县');
INSERT INTO `area_tb` VALUES ('511824', null, null, null, '1', null, null, null, '511800', null, 'smx', 'ShiMianXian   ', null, '4', '625400', '石棉县');
INSERT INTO `area_tb` VALUES ('511825', null, null, null, '1', null, null, null, '511800', null, 'tqx', 'TianQuanXian  ', null, '4', '625500', '天全县');
INSERT INTO `area_tb` VALUES ('511826', null, null, null, '1', null, null, null, '511800', null, 'lsx', 'LuShanXian', null, '4', '625600', '芦山县');
INSERT INTO `area_tb` VALUES ('511827', null, null, null, '1', null, null, null, '511800', null, 'bxx', 'BaoXingXian   ', null, '4', '625700', '宝兴县');
INSERT INTO `area_tb` VALUES ('511828', null, null, null, '1', null, null, null, '511800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('511900', null, null, null, '1', null, null, null, '510000', null, 'bzs', 'BaZhongShi', null, '3', '636000', '巴中市');
INSERT INTO `area_tb` VALUES ('511902', null, null, null, '1', null, null, null, '511900', null, 'bzq', 'BaZhouQu  ', null, '4', '636601', '巴州区');
INSERT INTO `area_tb` VALUES ('511921', null, null, null, '1', null, null, null, '511900', null, 'tjx', 'TongJiangXian ', null, '4', '636700', '通江县');
INSERT INTO `area_tb` VALUES ('511922', null, null, null, '1', null, null, null, '511900', null, 'njx', 'NanJiangXian  ', null, '4', '636600', '南江县');
INSERT INTO `area_tb` VALUES ('511923', null, null, null, '1', null, null, null, '511900', null, 'pcx', 'PingChangXian ', null, '4', '636400', '平昌县');
INSERT INTO `area_tb` VALUES ('511924', null, null, null, '1', null, null, null, '511900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('512000', null, null, null, '1', null, null, null, '510000', null, 'zys', 'ZiYangShi ', null, '3', '641300', '资阳市');
INSERT INTO `area_tb` VALUES ('512002', null, null, null, '1', null, null, null, '512000', null, 'yjq', 'YanJiangQu', null, '4', '641300', '雁江区');
INSERT INTO `area_tb` VALUES ('512021', null, null, null, '1', null, null, null, '512000', null, 'ayx', 'AnYueXian ', null, '4', '642350', '安岳县');
INSERT INTO `area_tb` VALUES ('512022', null, null, null, '1', null, null, null, '512000', null, 'lzx', 'LeZhiXian ', null, '4', '641500', '乐至县');
INSERT INTO `area_tb` VALUES ('512081', null, null, null, '1', null, null, null, '512000', null, 'jys', 'JianYangShi   ', null, '4', '641400', '简阳市');
INSERT INTO `area_tb` VALUES ('512082', null, null, null, '1', null, null, null, '512000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('513200', null, null, null, '1', null, null, null, '510000', null, 'abczqzzzz', 'ABaCangZuQiangZuZiZhiZhou ', null, '3', '', '阿坝藏族羌族自治州');
INSERT INTO `area_tb` VALUES ('513221', null, null, null, '1', null, null, null, '513200', null, 'wcx', 'ZuoChuanXian  ', null, '4', '623000', '汶川县');
INSERT INTO `area_tb` VALUES ('513222', null, null, null, '1', null, null, null, '513200', null, 'lx', 'LiXian', null, '4', '632100', '理县');
INSERT INTO `area_tb` VALUES ('513223', null, null, null, '1', null, null, null, '513200', null, 'mx', 'MaoXian   ', null, '4', '623200', '茂县');
INSERT INTO `area_tb` VALUES ('513224', null, null, null, '1', null, null, null, '513200', null, 'spx', 'SongPanXian   ', null, '4', '623300', '松潘县');
INSERT INTO `area_tb` VALUES ('513225', null, null, null, '1', null, null, null, '513200', null, 'jzgx', 'JiuZhaiGouXian', null, '4', '623400', '九寨沟县');
INSERT INTO `area_tb` VALUES ('513226', null, null, null, '1', null, null, null, '513200', null, 'jcx', 'JinChuanXian  ', null, '4', '624100', '金川县');
INSERT INTO `area_tb` VALUES ('513227', null, null, null, '1', null, null, null, '513200', null, 'xjx', 'XiaoJinXian   ', null, '4', '624200', '小金县');
INSERT INTO `area_tb` VALUES ('513228', null, null, null, '1', null, null, null, '513200', null, 'hsx', 'HeiShuiXian   ', null, '4', '623500', '黑水县');
INSERT INTO `area_tb` VALUES ('513229', null, null, null, '1', null, null, null, '513200', null, 'mekx', 'MaErKangXian  ', null, '4', '624000', '马尔康县');
INSERT INTO `area_tb` VALUES ('513230', null, null, null, '1', null, null, null, '513200', null, 'rtx', 'RangTangXian  ', null, '4', '624300', '壤塘县');
INSERT INTO `area_tb` VALUES ('513231', null, null, null, '1', null, null, null, '513200', null, 'abx', 'ABaXian   ', null, '4', '624600', '阿坝县');
INSERT INTO `area_tb` VALUES ('513232', null, null, null, '1', null, null, null, '513200', null, 'regx', 'RuoErGaiXian  ', null, '4', '624500', '若尔盖县');
INSERT INTO `area_tb` VALUES ('513233', null, null, null, '1', null, null, null, '513200', null, 'hyx', 'HongYuanXian  ', null, '4', '624400', '红原县');
INSERT INTO `area_tb` VALUES ('513234', null, null, null, '1', null, null, null, '513200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('513300', null, null, null, '1', null, null, null, '510000', null, 'gzczzzz', 'GanZiCangZuZiZhiZhou  ', null, '3', '', '甘孜藏族自治州');
INSERT INTO `area_tb` VALUES ('513321', null, null, null, '1', null, null, null, '513300', null, 'kdx', 'KangDingXian  ', null, '4', '626000', '康定县');
INSERT INTO `area_tb` VALUES ('513322', null, null, null, '1', null, null, null, '513300', null, 'ldx', 'ZuoDingXian   ', null, '4', '626100', '泸定县');
INSERT INTO `area_tb` VALUES ('513323', null, null, null, '1', null, null, null, '513300', null, 'dbx', 'DanBaXian ', null, '4', '626300', '丹巴县');
INSERT INTO `area_tb` VALUES ('513324', null, null, null, '1', null, null, null, '513300', null, 'jlx', 'JiuLongXian   ', null, '4', '626200', '九龙县');
INSERT INTO `area_tb` VALUES ('513325', null, null, null, '1', null, null, null, '513300', null, 'yjx', 'YaJiangXian   ', null, '4', '627450', '雅江县');
INSERT INTO `area_tb` VALUES ('513326', null, null, null, '1', null, null, null, '513300', null, 'dfx', 'DaoZuoXian', null, '4', '626400', '道孚县');
INSERT INTO `area_tb` VALUES ('513327', null, null, null, '1', null, null, null, '513300', null, 'lhx', 'LuHuoXian ', null, '4', '626500', '炉霍县');
INSERT INTO `area_tb` VALUES ('513328', null, null, null, '1', null, null, null, '513300', null, 'gzx', 'GanZiXian ', null, '4', '626700', '甘孜县');
INSERT INTO `area_tb` VALUES ('513329', null, null, null, '1', null, null, null, '513300', null, 'xlx', 'XinLongXian   ', null, '4', '626800', '新龙县');
INSERT INTO `area_tb` VALUES ('513330', null, null, null, '1', null, null, null, '513300', null, 'dgx', 'DeGeXian  ', null, '4', '627250', '德格县');
INSERT INTO `area_tb` VALUES ('513331', null, null, null, '1', null, null, null, '513300', null, 'byx', 'BaiYuXian ', null, '4', '627150', '白玉县');
INSERT INTO `area_tb` VALUES ('513332', null, null, null, '1', null, null, null, '513300', null, 'sqx', 'ShiQuXian ', null, '4', '627350', '石渠县');
INSERT INTO `area_tb` VALUES ('513333', null, null, null, '1', null, null, null, '513300', null, 'sdx', 'SeDaXian  ', null, '4', '626600', '色达县');
INSERT INTO `area_tb` VALUES ('513334', null, null, null, '1', null, null, null, '513300', null, 'ltx', 'LiTangXian', null, '4', '627550', '理塘县');
INSERT INTO `area_tb` VALUES ('513335', null, null, null, '1', null, null, null, '513300', null, 'btx', 'BaTangXian', null, '4', '627650', '巴塘县');
INSERT INTO `area_tb` VALUES ('513336', null, null, null, '1', null, null, null, '513300', null, 'xcx', 'XiangChengXian', null, '4', '627850', '乡城县');
INSERT INTO `area_tb` VALUES ('513337', null, null, null, '1', null, null, null, '513300', null, 'dcx', 'DaoChengXian  ', null, '4', '627750', '稻城县');
INSERT INTO `area_tb` VALUES ('513338', null, null, null, '1', null, null, null, '513300', null, 'drx', 'DeRongXian', null, '4', '627950', '得荣县');
INSERT INTO `area_tb` VALUES ('513339', null, null, null, '1', null, null, null, '513300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('513400', null, null, null, '1', null, null, null, '510000', null, 'lsyzzzz', 'LiangShanYiZuZiZhiZhou', null, '3', '', '凉山彝族自治州');
INSERT INTO `area_tb` VALUES ('513401', null, null, null, '1', null, null, null, '513400', null, 'xcs', 'XiChangShi', null, '4', '615000', '西昌市');
INSERT INTO `area_tb` VALUES ('513422', null, null, null, '1', null, null, null, '513400', null, 'mlczzzx', 'MuLiCangZuZiZhiXian   ', null, '4', '615800', '木里藏族自治县');
INSERT INTO `area_tb` VALUES ('513423', null, null, null, '1', null, null, null, '513400', null, 'yyx', 'YanYuanXian   ', null, '4', '615700', '盐源县');
INSERT INTO `area_tb` VALUES ('513424', null, null, null, '1', null, null, null, '513400', null, 'dcx', 'DeChangXian   ', null, '4', '615500', '德昌县');
INSERT INTO `area_tb` VALUES ('513425', null, null, null, '1', null, null, null, '513400', null, 'hlx', 'HuiLiXian ', null, '4', '615100', '会理县');
INSERT INTO `area_tb` VALUES ('513426', null, null, null, '1', null, null, null, '513400', null, 'hdx', 'HuiDongXian   ', null, '4', '615200', '会东县');
INSERT INTO `area_tb` VALUES ('513427', null, null, null, '1', null, null, null, '513400', null, 'nnx', 'NingNanXian   ', null, '4', '615400', '宁南县');
INSERT INTO `area_tb` VALUES ('513428', null, null, null, '1', null, null, null, '513400', null, 'pgx', 'PuGeXian  ', null, '4', '615300', '普格县');
INSERT INTO `area_tb` VALUES ('513429', null, null, null, '1', null, null, null, '513400', null, 'btx', 'BuTuoXian ', null, '4', '616350', '布拖县');
INSERT INTO `area_tb` VALUES ('513430', null, null, null, '1', null, null, null, '513400', null, 'jyx', 'JinYangXian   ', null, '4', '616250', '金阳县');
INSERT INTO `area_tb` VALUES ('513431', null, null, null, '1', null, null, null, '513400', null, 'zjx', 'ZhaoJueXian   ', null, '4', '616150', '昭觉县');
INSERT INTO `area_tb` VALUES ('513432', null, null, null, '1', null, null, null, '513400', null, 'xdx', 'XiDeXian  ', null, '4', '616750', '喜德县');
INSERT INTO `area_tb` VALUES ('513433', null, null, null, '1', null, null, null, '513400', null, 'mnx', 'MianNingXian  ', null, '4', '615600', '冕宁县');
INSERT INTO `area_tb` VALUES ('513434', null, null, null, '1', null, null, null, '513400', null, 'yxx', 'YueXiXian ', null, '4', '616650', '越西县');
INSERT INTO `area_tb` VALUES ('513435', null, null, null, '1', null, null, null, '513400', null, 'glx', 'GanLuoXian', null, '4', '616850', '甘洛县');
INSERT INTO `area_tb` VALUES ('513436', null, null, null, '1', null, null, null, '513400', null, 'mgx', 'MeiGuXian ', null, '4', '616450', '美姑县');
INSERT INTO `area_tb` VALUES ('513437', null, null, null, '1', null, null, null, '513400', null, 'lbx', 'LeiBoXian ', null, '4', '616550', '雷波县');
INSERT INTO `area_tb` VALUES ('513438', null, null, null, '1', null, null, null, '513400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('520000', null, null, null, '1', null, null, null, '1', null, 'gzs', 'GuiZhouSheng  ', null, '2', '', '贵州省');
INSERT INTO `area_tb` VALUES ('520100', null, null, null, '1', null, null, null, '520000', null, 'gys', 'GuiYangShi', null, '3', '550000', '贵阳市');
INSERT INTO `area_tb` VALUES ('520102', null, null, null, '1', null, null, null, '520100', null, 'nmq', 'NanMingQu ', null, '4', '550002', '南明区');
INSERT INTO `area_tb` VALUES ('520103', null, null, null, '1', null, null, null, '520100', null, 'yyq', 'YunYanQu  ', null, '4', '550001', '云岩区');
INSERT INTO `area_tb` VALUES ('520111', null, null, null, '1', null, null, null, '520100', null, 'hxq', 'HuaXiQu   ', null, '4', '550025', '花溪区');
INSERT INTO `area_tb` VALUES ('520112', null, null, null, '1', null, null, null, '520100', null, 'wdq', 'WuDangQu  ', null, '4', '550018', '乌当区');
INSERT INTO `area_tb` VALUES ('520113', null, null, null, '1', null, null, null, '520100', null, 'byq', 'BaiYunQu  ', null, '4', '550014', '白云区');
INSERT INTO `area_tb` VALUES ('520114', null, null, null, '1', null, null, null, '520100', null, 'xhq', 'XiaoHeQu  ', null, '4', '550009', '小河区');
INSERT INTO `area_tb` VALUES ('520121', null, null, null, '1', null, null, null, '520100', null, 'kyx', 'KaiYangXian   ', null, '4', '550300', '开阳县');
INSERT INTO `area_tb` VALUES ('520122', null, null, null, '1', null, null, null, '520100', null, 'xfx', 'XiFengXian', null, '4', '551100', '息烽县');
INSERT INTO `area_tb` VALUES ('520123', null, null, null, '1', null, null, null, '520100', null, 'xwx', 'XiuWenXian', null, '4', '550200', '修文县');
INSERT INTO `area_tb` VALUES ('520151', null, null, null, '1', null, null, null, '520100', null, 'jykfq', 'JinYangKaiFaQu', null, '4', '', '金阳开发区');
INSERT INTO `area_tb` VALUES ('520181', null, null, null, '1', null, null, null, '520100', null, 'qzs', 'QingZhenShi   ', null, '4', '551400', '清镇市');
INSERT INTO `area_tb` VALUES ('520182', null, null, null, '1', null, null, null, '520100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('520200', null, null, null, '1', null, null, null, '520000', null, 'lpss', 'LiuPanShuiShi ', null, '3', '553000', '六盘水市');
INSERT INTO `area_tb` VALUES ('520201', null, null, null, '1', null, null, null, '520200', null, 'zsq', 'ZhongShanQu   ', null, '4', '553000', '钟山区');
INSERT INTO `area_tb` VALUES ('520203', null, null, null, '1', null, null, null, '520200', null, 'lztq', 'LiuZhiTeQu', null, '4', '553400', '六枝特区');
INSERT INTO `area_tb` VALUES ('520221', null, null, null, '1', null, null, null, '520200', null, 'scx', 'ShuiChengXian ', null, '4', '553600', '水城县');
INSERT INTO `area_tb` VALUES ('520222', null, null, null, '1', null, null, null, '520200', null, 'px', 'PanXian   ', null, '4', '561601', '盘县');
INSERT INTO `area_tb` VALUES ('520223', null, null, null, '1', null, null, null, '520200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('520300', null, null, null, '1', null, null, null, '520000', null, 'zys', 'ZunYiShi  ', null, '3', '563000', '遵义市');
INSERT INTO `area_tb` VALUES ('520302', null, null, null, '1', null, null, null, '520300', null, 'hhgq', 'HongHuaGangQu ', null, '4', '563000', '红花岗区');
INSERT INTO `area_tb` VALUES ('520303', null, null, null, '1', null, null, null, '520300', null, 'hcq', 'HuiChuanQu', null, '4', '563000', '汇川区');
INSERT INTO `area_tb` VALUES ('520321', null, null, null, '1', null, null, null, '520300', null, 'zyx', 'ZunYiXian ', null, '4', '563100', '遵义县');
INSERT INTO `area_tb` VALUES ('520322', null, null, null, '1', null, null, null, '520300', null, 'tzx', 'TongZuoXian   ', null, '4', '563200', '桐梓县');
INSERT INTO `area_tb` VALUES ('520323', null, null, null, '1', null, null, null, '520300', null, 'syx', 'SuiYangXian   ', null, '4', '563300', '绥阳县');
INSERT INTO `area_tb` VALUES ('520324', null, null, null, '1', null, null, null, '520300', null, 'zax', 'ZhengAnXian   ', null, '4', '563400', '正安县');
INSERT INTO `area_tb` VALUES ('520325', null, null, null, '1', null, null, null, '520300', null, 'dzylzmzzzx', 'DaoZhenZuoLaoZuMiaoZuZiZhiXian', null, '4', '563500', '道真仡佬族苗族自治县');
INSERT INTO `area_tb` VALUES ('520326', null, null, null, '1', null, null, null, '520300', null, 'wcylzmzzzx', 'WuChuanZuoLaoZuMiaoZuZiZhiXian', null, '4', '564300', '务川仡佬族苗族自治县');
INSERT INTO `area_tb` VALUES ('520327', null, null, null, '1', null, null, null, '520300', null, 'fgx', 'FengGangXian  ', null, '4', '564200', '凤冈县');
INSERT INTO `area_tb` VALUES ('520328', null, null, null, '1', null, null, null, '520300', null, 'mtx', 'ZuoTanXian', null, '4', '564100', '湄潭县');
INSERT INTO `area_tb` VALUES ('520329', null, null, null, '1', null, null, null, '520300', null, 'yqx', 'YuQingXian', null, '4', '564400', '余庆县');
INSERT INTO `area_tb` VALUES ('520330', null, null, null, '1', null, null, null, '520300', null, 'xsx', 'XiShuiXian', null, '4', '564600', '习水县');
INSERT INTO `area_tb` VALUES ('520381', null, null, null, '1', null, null, null, '520300', null, 'css', 'ChiShuiShi', null, '4', '564700', '赤水市');
INSERT INTO `area_tb` VALUES ('520382', null, null, null, '1', null, null, null, '520300', null, 'rhs', 'RenHuaiShi', null, '4', '564500', '仁怀市');
INSERT INTO `area_tb` VALUES ('520383', null, null, null, '1', null, null, null, '520300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('520400', null, null, null, '1', null, null, null, '520000', null, 'ass', 'AnShunShi ', null, '3', '561000', '安顺市');
INSERT INTO `area_tb` VALUES ('520402', null, null, null, '1', null, null, null, '520400', null, 'xxq', 'XiXiuQu   ', null, '4', '561000', '西秀区');
INSERT INTO `area_tb` VALUES ('520421', null, null, null, '1', null, null, null, '520400', null, 'pbx', 'PingBaXian', null, '4', '561100', '平坝县');
INSERT INTO `area_tb` VALUES ('520422', null, null, null, '1', null, null, null, '520400', null, 'pdx', 'PuDingXian', null, '4', '562100', '普定县');
INSERT INTO `area_tb` VALUES ('520423', null, null, null, '1', null, null, null, '520400', null, 'znbyzmzzzx', 'ZhenNingBuYiZuMiaoZuZiZhiXian ', null, '4', '561200', '镇宁布依族苗族自治县');
INSERT INTO `area_tb` VALUES ('520424', null, null, null, '1', null, null, null, '520400', null, 'glbyzmzzzx', 'GuanLingBuYiZuMiaoZuZiZhiXian ', null, '4', '561300', '关岭布依族苗族自治县');
INSERT INTO `area_tb` VALUES ('520425', null, null, null, '1', null, null, null, '520400', null, 'zymzbyzzzx', 'ZiYunMiaoZuBuYiZuZiZhiXian', null, '4', '550800', '紫云苗族布依族自治县');
INSERT INTO `area_tb` VALUES ('520426', null, null, null, '1', null, null, null, '520400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('522200', null, null, null, '1', null, null, null, '520000', null, 'trdq', 'TongRenDiQu   ', null, '3', '', '铜仁地区');
INSERT INTO `area_tb` VALUES ('522201', null, null, null, '1', null, null, null, '522200', null, 'trs', 'TongRenShi', null, '4', '554300', '铜仁市');
INSERT INTO `area_tb` VALUES ('522222', null, null, null, '1', null, null, null, '522200', null, 'jkx', 'JiangKouXian  ', null, '4', '554400', '江口县');
INSERT INTO `area_tb` VALUES ('522223', null, null, null, '1', null, null, null, '522200', null, 'ypdzzzx', 'YuPingDongZuZiZhiXian ', null, '4', '554000', '玉屏侗族自治县');
INSERT INTO `area_tb` VALUES ('522224', null, null, null, '1', null, null, null, '522200', null, 'sqx', 'ShiZuoXian', null, '4', '555100', '石阡县');
INSERT INTO `area_tb` VALUES ('522225', null, null, null, '1', null, null, null, '522200', null, 'snx', 'SiNanXian ', null, '4', '565100', '思南县');
INSERT INTO `area_tb` VALUES ('522226', null, null, null, '1', null, null, null, '522200', null, 'yjtjzmzzzx', 'YinJiangTuJiaZuMiaoZuZiZhiXian', null, '4', '555200', '印江土家族苗族自治县');
INSERT INTO `area_tb` VALUES ('522227', null, null, null, '1', null, null, null, '522200', null, 'djx', 'DeJiangXian   ', null, '4', '565200', '德江县');
INSERT INTO `area_tb` VALUES ('522228', null, null, null, '1', null, null, null, '522200', null, 'yhtjzzzx', 'YanHeTuJiaZuZiZhiXian ', null, '4', '565300', '沿河土家族自治县');
INSERT INTO `area_tb` VALUES ('522229', null, null, null, '1', null, null, null, '522200', null, 'stmzzzx', 'SongTaoMiaoZuZiZhiXian', null, '4', '554100', '松桃苗族自治县');
INSERT INTO `area_tb` VALUES ('522230', null, null, null, '1', null, null, null, '522200', null, 'wstq', 'WanShanTeQu   ', null, '4', '554200', '万山特区');
INSERT INTO `area_tb` VALUES ('522231', null, null, null, '1', null, null, null, '522200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('522300', null, null, null, '1', null, null, null, '520000', null, 'qxnbyzmzzzz', 'QianXiNanBuYiZuMiaoZuZiZhi', null, '3', '', '黔西南布依族苗族自治州');
INSERT INTO `area_tb` VALUES ('522301', null, null, null, '1', null, null, null, '522300', null, 'xys', 'XingYiShi ', null, '4', '562400', '兴义市');
INSERT INTO `area_tb` VALUES ('522322', null, null, null, '1', null, null, null, '522300', null, 'xrx', 'XingRenXian   ', null, '4', '562300', '兴仁县');
INSERT INTO `area_tb` VALUES ('522323', null, null, null, '1', null, null, null, '522300', null, 'pax', 'PuAnXian  ', null, '4', '561500', '普安县');
INSERT INTO `area_tb` VALUES ('522324', null, null, null, '1', null, null, null, '522300', null, 'qlx', 'QingLongXian  ', null, '4', '561400', '晴隆县');
INSERT INTO `area_tb` VALUES ('522325', null, null, null, '1', null, null, null, '522300', null, 'zfx', 'ZhenFengXian  ', null, '4', '562200', '贞丰县');
INSERT INTO `area_tb` VALUES ('522326', null, null, null, '1', null, null, null, '522300', null, 'wmx', 'WangZuoXian   ', null, '4', '552300', '望谟县');
INSERT INTO `area_tb` VALUES ('522327', null, null, null, '1', null, null, null, '522300', null, 'chx', 'CeHengXian', null, '4', '552200', '册亨县');
INSERT INTO `area_tb` VALUES ('522328', null, null, null, '1', null, null, null, '522300', null, 'alx', 'AnLongXian', null, '4', '552400', '安龙县');
INSERT INTO `area_tb` VALUES ('522329', null, null, null, '1', null, null, null, '522300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('522400', null, null, null, '1', null, null, null, '520000', null, 'bjdq', 'BiJieDiQu ', null, '3', '', '毕节地区');
INSERT INTO `area_tb` VALUES ('522401', null, null, null, '1', null, null, null, '522400', null, 'bjs', 'BiJieShi  ', null, '4', '551700', '毕节市');
INSERT INTO `area_tb` VALUES ('522422', null, null, null, '1', null, null, null, '522400', null, 'dfx', 'DaFangXian', null, '4', '551600', '大方县');
INSERT INTO `area_tb` VALUES ('522423', null, null, null, '1', null, null, null, '522400', null, 'qxx', 'QianXiXian', null, '4', '551500', '黔西县');
INSERT INTO `area_tb` VALUES ('522424', null, null, null, '1', null, null, null, '522400', null, 'jsx', 'JinShaXian', null, '4', '551800', '金沙县');
INSERT INTO `area_tb` VALUES ('522425', null, null, null, '1', null, null, null, '522400', null, 'zjx', 'ZhiJinXian', null, '4', '552100', '织金县');
INSERT INTO `area_tb` VALUES ('522426', null, null, null, '1', null, null, null, '522400', null, 'nyx', 'NaYongXian', null, '4', '553300', '纳雍县');
INSERT INTO `area_tb` VALUES ('522427', null, null, null, '1', null, null, null, '522400', null, 'wnyzhzmzzzx', 'WeiNingYiZuHuiZuMiaoZuZiZhi   ', null, '4', '553100', '威宁彝族回族苗族自治县');
INSERT INTO `area_tb` VALUES ('522428', null, null, null, '1', null, null, null, '522400', null, 'hzx', 'HeZhangXian   ', null, '4', '553200', '赫章县');
INSERT INTO `area_tb` VALUES ('522429', null, null, null, '1', null, null, null, '522400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('522600', null, null, null, '1', null, null, null, '520000', null, 'qdnmzdzzzz', 'QianDongNanMiaoZuDongZuZiZhiZhou  ', null, '3', '', '黔东南苗族侗族自治州');
INSERT INTO `area_tb` VALUES ('522601', null, null, null, '1', null, null, null, '522600', null, 'kls', 'KaiLiShi  ', null, '4', '556000', '凯里市');
INSERT INTO `area_tb` VALUES ('522622', null, null, null, '1', null, null, null, '522600', null, 'hpx', 'HuangPingXian ', null, '4', '556100', '黄平县');
INSERT INTO `area_tb` VALUES ('522623', null, null, null, '1', null, null, null, '522600', null, 'sbx', 'ShiBingXian   ', null, '4', '556200', '施秉县');
INSERT INTO `area_tb` VALUES ('522624', null, null, null, '1', null, null, null, '522600', null, 'ssx', 'SanSuiXian', null, '4', '556500', '三穗县');
INSERT INTO `area_tb` VALUES ('522625', null, null, null, '1', null, null, null, '522600', null, 'zyx', 'ZhenYuanXian  ', null, '4', '557700', '镇远县');
INSERT INTO `area_tb` VALUES ('522626', null, null, null, '1', null, null, null, '522600', null, 'cgx', 'ZuoGongXian   ', null, '4', '557800', '岑巩县');
INSERT INTO `area_tb` VALUES ('522627', null, null, null, '1', null, null, null, '522600', null, 'tzx', 'TianZhuXian   ', null, '4', '556600', '天柱县');
INSERT INTO `area_tb` VALUES ('522628', null, null, null, '1', null, null, null, '522600', null, 'jpx', 'JinPingXian   ', null, '4', '556700', '锦屏县');
INSERT INTO `area_tb` VALUES ('522629', null, null, null, '1', null, null, null, '522600', null, 'jhx', 'JianHeXian', null, '4', '556400', '剑河县');
INSERT INTO `area_tb` VALUES ('522630', null, null, null, '1', null, null, null, '522600', null, 'tjx', 'TaiJiangXian  ', null, '4', '556300', '台江县');
INSERT INTO `area_tb` VALUES ('522631', null, null, null, '1', null, null, null, '522600', null, 'lpx', 'LiPingXian', null, '4', '557300', '黎平县');
INSERT INTO `area_tb` VALUES ('522632', null, null, null, '1', null, null, null, '522600', null, 'rjx', 'ZuoJiangXian  ', null, '4', '557200', '榕江县');
INSERT INTO `area_tb` VALUES ('522633', null, null, null, '1', null, null, null, '522600', null, 'cjx', 'CongJiangXian ', null, '4', '557400', '从江县');
INSERT INTO `area_tb` VALUES ('522634', null, null, null, '1', null, null, null, '522600', null, 'lsx', 'LeiShanXian   ', null, '4', '557100', '雷山县');
INSERT INTO `area_tb` VALUES ('522635', null, null, null, '1', null, null, null, '522600', null, 'mjx', 'MaJiangXian   ', null, '4', '557600', '麻江县');
INSERT INTO `area_tb` VALUES ('522636', null, null, null, '1', null, null, null, '522600', null, 'dzx', 'DanZhaiXian   ', null, '4', '557500', '丹寨县');
INSERT INTO `area_tb` VALUES ('522637', null, null, null, '1', null, null, null, '522600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('522700', null, null, null, '1', null, null, null, '520000', null, 'qnbyzmzzzz', 'QianNanBuYiZuMiaoZuZiZhiZhou  ', null, '3', '', '黔南布依族苗族自治州');
INSERT INTO `area_tb` VALUES ('522701', null, null, null, '1', null, null, null, '522700', null, 'dys', 'DuYunShi  ', null, '4', '558000', '都匀市');
INSERT INTO `area_tb` VALUES ('522702', null, null, null, '1', null, null, null, '522700', null, 'fqs', 'FuQuanShi ', null, '4', '550500', '福泉市');
INSERT INTO `area_tb` VALUES ('522722', null, null, null, '1', null, null, null, '522700', null, 'lbx', 'LiBoXian  ', null, '4', '558400', '荔波县');
INSERT INTO `area_tb` VALUES ('522723', null, null, null, '1', null, null, null, '522700', null, 'gdx', 'GuiDingXian   ', null, '4', '551300', '贵定县');
INSERT INTO `area_tb` VALUES ('522725', null, null, null, '1', null, null, null, '522700', null, 'wax', 'WengAnXian', null, '4', '550400', '瓮安县');
INSERT INTO `area_tb` VALUES ('522726', null, null, null, '1', null, null, null, '522700', null, 'dsx', 'DuShanXian', null, '4', '558200', '独山县');
INSERT INTO `area_tb` VALUES ('522727', null, null, null, '1', null, null, null, '522700', null, 'ptx', 'PingTangXian  ', null, '4', '558300', '平塘县');
INSERT INTO `area_tb` VALUES ('522728', null, null, null, '1', null, null, null, '522700', null, 'ldx', 'LuoDianXian   ', null, '4', '550100', '罗甸县');
INSERT INTO `area_tb` VALUES ('522729', null, null, null, '1', null, null, null, '522700', null, 'csx', 'ChangShunXian ', null, '4', '550700', '长顺县');
INSERT INTO `area_tb` VALUES ('522730', null, null, null, '1', null, null, null, '522700', null, 'llx', 'LongLiXian', null, '4', '551200', '龙里县');
INSERT INTO `area_tb` VALUES ('522731', null, null, null, '1', null, null, null, '522700', null, 'hsx', 'HuiShuiXian   ', null, '4', '550600', '惠水县');
INSERT INTO `area_tb` VALUES ('522732', null, null, null, '1', null, null, null, '522700', null, 'sdszzzx', 'SanDuShuiZuZiZhiXian  ', null, '4', '558100', '三都水族自治县');
INSERT INTO `area_tb` VALUES ('522733', null, null, null, '1', null, null, null, '522700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530000', null, null, null, '1', null, null, null, '1', null, 'yns', 'YunNanSheng   ', null, '2', '', '云南省');
INSERT INTO `area_tb` VALUES ('530100', null, null, null, '1', null, null, null, '530000', null, 'kms', 'KunMingShi', null, '3', '650000', '昆明市');
INSERT INTO `area_tb` VALUES ('530102', null, null, null, '1', null, null, null, '530100', null, 'whq', 'WuHuaQu   ', null, '4', '650032', '五华区');
INSERT INTO `area_tb` VALUES ('530103', null, null, null, '1', null, null, null, '530100', null, 'plq', 'PanLongQu ', null, '4', '650051', '盘龙区');
INSERT INTO `area_tb` VALUES ('530111', null, null, null, '1', null, null, null, '530100', null, 'gdq', 'GuanDuQu  ', null, '4', '650220', '官渡区');
INSERT INTO `area_tb` VALUES ('530112', null, null, null, '1', null, null, null, '530100', null, 'xsq', 'XiShanQu  ', null, '4', '650100', '西山区');
INSERT INTO `area_tb` VALUES ('530113', null, null, null, '1', null, null, null, '530100', null, 'dcq', 'DongChuanQu   ', null, '4', '654100', '东川区');
INSERT INTO `area_tb` VALUES ('530121', null, null, null, '1', null, null, null, '530100', null, 'cgx', 'ChengGongXian ', null, '4', '650500', '呈贡县');
INSERT INTO `area_tb` VALUES ('530122', null, null, null, '1', null, null, null, '530100', null, 'jnx', 'JinNingXian   ', null, '4', '650600', '晋宁县');
INSERT INTO `area_tb` VALUES ('530124', null, null, null, '1', null, null, null, '530100', null, 'fmx', 'FuMinXian ', null, '4', '650400', '富民县');
INSERT INTO `area_tb` VALUES ('530125', null, null, null, '1', null, null, null, '530100', null, 'ylx', 'YiLiangXian   ', null, '4', '652100', '宜良县');
INSERT INTO `area_tb` VALUES ('530126', null, null, null, '1', null, null, null, '530100', null, 'slyzzzx', 'ShiLinYiZuZiZhiXian   ', null, '4', '652200', '石林彝族自治县');
INSERT INTO `area_tb` VALUES ('530127', null, null, null, '1', null, null, null, '530100', null, 'smx', 'ZuoMingXian   ', null, '4', '651700', '嵩明县');
INSERT INTO `area_tb` VALUES ('530128', null, null, null, '1', null, null, null, '530100', null, 'lqyzmzzzx', 'LuQuanYiZuMiaoZuZiZhiXian ', null, '4', '651500', '禄劝彝族苗族自治县');
INSERT INTO `area_tb` VALUES ('530129', null, null, null, '1', null, null, null, '530100', null, 'xdhzyzzzx', 'XunDianHuiZuYiZuZiZhiXian ', null, '4', '655200', '寻甸回族彝族自治县');
INSERT INTO `area_tb` VALUES ('530181', null, null, null, '1', null, null, null, '530100', null, 'ans', 'AnNingShi ', null, '4', '650300', '安宁市');
INSERT INTO `area_tb` VALUES ('530182', null, null, null, '1', null, null, null, '530100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530300', null, null, null, '1', null, null, null, '530000', null, 'qjs', 'QuJingShi ', null, '3', '655000', '曲靖市');
INSERT INTO `area_tb` VALUES ('530302', null, null, null, '1', null, null, null, '530300', null, 'qlq', 'ZuoZuoQu  ', null, '4', '655000', '麒麟区');
INSERT INTO `area_tb` VALUES ('530321', null, null, null, '1', null, null, null, '530300', null, 'mlx', 'MaLongXian', null, '4', '655100', '马龙县');
INSERT INTO `area_tb` VALUES ('530322', null, null, null, '1', null, null, null, '530300', null, 'llx', 'LuLiangXian   ', null, '4', '655600', '陆良县');
INSERT INTO `area_tb` VALUES ('530323', null, null, null, '1', null, null, null, '530300', null, 'szx', 'ShiZongXian   ', null, '4', '655700', '师宗县');
INSERT INTO `area_tb` VALUES ('530324', null, null, null, '1', null, null, null, '530300', null, 'lpx', 'LuoPingXian   ', null, '4', '655800', '罗平县');
INSERT INTO `area_tb` VALUES ('530325', null, null, null, '1', null, null, null, '530300', null, 'fyx', 'FuYuanXian', null, '4', '655500', '富源县');
INSERT INTO `area_tb` VALUES ('530326', null, null, null, '1', null, null, null, '530300', null, 'hzx', 'HuiZeXian ', null, '4', '654200', '会泽县');
INSERT INTO `area_tb` VALUES ('530328', null, null, null, '1', null, null, null, '530300', null, 'zyx', 'ZhanYiXian', null, '4', '655331', '沾益县');
INSERT INTO `area_tb` VALUES ('530381', null, null, null, '1', null, null, null, '530300', null, 'xws', 'XuanWeiShi', null, '4', '655400', '宣威市');
INSERT INTO `area_tb` VALUES ('530382', null, null, null, '1', null, null, null, '530300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530400', null, null, null, '1', null, null, null, '530000', null, 'yxs', 'YuXiShi   ', null, '3', '', '玉溪市');
INSERT INTO `area_tb` VALUES ('530402', null, null, null, '1', null, null, null, '530400', null, 'htq', 'HongTaQu  ', null, '4', '653100', '红塔区');
INSERT INTO `area_tb` VALUES ('530421', null, null, null, '1', null, null, null, '530400', null, 'jcx', 'JiangChuanXian', null, '4', '652600', '江川县');
INSERT INTO `area_tb` VALUES ('530422', null, null, null, '1', null, null, null, '530400', null, 'cjx', 'ChengJiangXian', null, '4', '652500', '澄江县');
INSERT INTO `area_tb` VALUES ('530423', null, null, null, '1', null, null, null, '530400', null, 'thx', 'TongHaiXian   ', null, '4', '652700', '通海县');
INSERT INTO `area_tb` VALUES ('530424', null, null, null, '1', null, null, null, '530400', null, 'hnx', 'HuaNingXian   ', null, '4', '652800', '华宁县');
INSERT INTO `area_tb` VALUES ('530425', null, null, null, '1', null, null, null, '530400', null, 'ymx', 'YiMenXian ', null, '4', '651100', '易门县');
INSERT INTO `area_tb` VALUES ('530426', null, null, null, '1', null, null, null, '530400', null, 'esyzzzx', 'EShanYiZuZiZhiXian', null, '4', '653200', '峨山彝族自治县');
INSERT INTO `area_tb` VALUES ('530427', null, null, null, '1', null, null, null, '530400', null, 'xpyzdzzzx', 'XinPingYiZuDaiZuZiZhiXian ', null, '4', '653400', '新平彝族傣族自治县');
INSERT INTO `area_tb` VALUES ('530428', null, null, null, '1', null, null, null, '530400', null, 'yjhnzyzdzzzx', 'YuanJiangHaNiZuYiZuDaiZuZi', null, '4', '653300', '元江哈尼族彝族傣族自治县');
INSERT INTO `area_tb` VALUES ('530429', null, null, null, '1', null, null, null, '530400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530500', null, null, null, '1', null, null, null, '530000', null, 'bss', 'BaoShanShi', null, '3', '', '保山市');
INSERT INTO `area_tb` VALUES ('530502', null, null, null, '1', null, null, null, '530500', null, 'lyq', 'LongYangQu', null, '4', '678000', '隆阳区');
INSERT INTO `area_tb` VALUES ('530521', null, null, null, '1', null, null, null, '530500', null, 'sdx', 'ShiDianXian   ', null, '4', '678200', '施甸县');
INSERT INTO `area_tb` VALUES ('530522', null, null, null, '1', null, null, null, '530500', null, 'tcx', 'TengChongXian ', null, '4', '679100', '腾冲县');
INSERT INTO `area_tb` VALUES ('530523', null, null, null, '1', null, null, null, '530500', null, 'llx', 'LongLingXian  ', null, '4', '678300', '龙陵县');
INSERT INTO `area_tb` VALUES ('530524', null, null, null, '1', null, null, null, '530500', null, 'cnx', 'ChangNingXian ', null, '4', '678100', '昌宁县');
INSERT INTO `area_tb` VALUES ('530525', null, null, null, '1', null, null, null, '530500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530600', null, null, null, '1', null, null, null, '530000', null, 'zts', 'ZhaoTongShi   ', null, '3', '657000', '昭通市');
INSERT INTO `area_tb` VALUES ('530602', null, null, null, '1', null, null, null, '530600', null, 'zyq', 'ZhaoYangQu', null, '4', '657000', '昭阳区');
INSERT INTO `area_tb` VALUES ('530621', null, null, null, '1', null, null, null, '530600', null, 'ldx', 'LuDianXian', null, '4', '657100', '鲁甸县');
INSERT INTO `area_tb` VALUES ('530622', null, null, null, '1', null, null, null, '530600', null, 'qjx', 'QiaoJiaXian   ', null, '4', '654600', '巧家县');
INSERT INTO `area_tb` VALUES ('530623', null, null, null, '1', null, null, null, '530600', null, 'yjx', 'YanJinXian', null, '4', '657500', '盐津县');
INSERT INTO `area_tb` VALUES ('530624', null, null, null, '1', null, null, null, '530600', null, 'dgx', 'DaGuanXian', null, '4', '657400', '大关县');
INSERT INTO `area_tb` VALUES ('530625', null, null, null, '1', null, null, null, '530600', null, 'ysx', 'YongShanXian  ', null, '4', '657300', '永善县');
INSERT INTO `area_tb` VALUES ('530626', null, null, null, '1', null, null, null, '530600', null, 'sjx', 'SuiJiangXian  ', null, '4', '657700', '绥江县');
INSERT INTO `area_tb` VALUES ('530627', null, null, null, '1', null, null, null, '530600', null, 'zxx', 'ZhenXiongXian ', null, '4', '657200', '镇雄县');
INSERT INTO `area_tb` VALUES ('530628', null, null, null, '1', null, null, null, '530600', null, 'ylx', 'YiLiangXian   ', null, '4', '657600', '彝良县');
INSERT INTO `area_tb` VALUES ('530629', null, null, null, '1', null, null, null, '530600', null, 'wxx', 'WeiXinXian', null, '4', '657900', '威信县');
INSERT INTO `area_tb` VALUES ('530630', null, null, null, '1', null, null, null, '530600', null, 'sfx', 'ShuiFuXian', null, '4', '657800', '水富县');
INSERT INTO `area_tb` VALUES ('530631', null, null, null, '1', null, null, null, '530600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530700', null, null, null, '1', null, null, null, '530000', null, 'ljs', 'LiJiangShi', null, '3', '', '丽江市');
INSERT INTO `area_tb` VALUES ('530702', null, null, null, '1', null, null, null, '530700', null, 'gcq', 'GuChengQu ', null, '4', '674100', '古城区');
INSERT INTO `area_tb` VALUES ('530721', null, null, null, '1', null, null, null, '530700', null, 'ylnxzzzx', 'YuLongNaXiZuZiZhiXian ', null, '4', '674100', '玉龙纳西族自治县');
INSERT INTO `area_tb` VALUES ('530722', null, null, null, '1', null, null, null, '530700', null, 'ysx', 'YongShengXian ', null, '4', '674200', '永胜县');
INSERT INTO `area_tb` VALUES ('530723', null, null, null, '1', null, null, null, '530700', null, 'hpx', 'HuaPingXian   ', null, '4', '674800', '华坪县');
INSERT INTO `area_tb` VALUES ('530724', null, null, null, '1', null, null, null, '530700', null, 'nlyzzzx', 'NingZuoYiZuZiZhiXian  ', null, '4', '674300', '宁蒗彝族自治县');
INSERT INTO `area_tb` VALUES ('530725', null, null, null, '1', null, null, null, '530700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530800', null, null, null, '1', null, null, null, '530000', null, 'pes', 'PuErShi   ', null, '3', '665000', '普洱市');
INSERT INTO `area_tb` VALUES ('530802', null, null, null, '1', null, null, null, '530800', null, 'smq', 'SiMaoQu   ', null, '4', '665000', '思茅区');
INSERT INTO `area_tb` VALUES ('530821', null, null, null, '1', null, null, null, '530800', null, 'nehnzyzzzx', 'NingErHaNiZuYiZuZiZhiXian ', null, '4', '665100', '宁洱哈尼族彝族自治县');
INSERT INTO `area_tb` VALUES ('530822', null, null, null, '1', null, null, null, '530800', null, 'mjhnzzzx', 'MoJiangHaNiZuZiZhiXian', null, '4', '654800', '墨江哈尼族自治县');
INSERT INTO `area_tb` VALUES ('530823', null, null, null, '1', null, null, null, '530800', null, 'jdyzzzx', 'JingDongYiZuZiZhiXian ', null, '4', '676200', '景东彝族自治县');
INSERT INTO `area_tb` VALUES ('530824', null, null, null, '1', null, null, null, '530800', null, 'jgdzyzzzx', 'JingGuDaiZuYiZuZiZhiXian  ', null, '4', '666400', '景谷傣族彝族自治县');
INSERT INTO `area_tb` VALUES ('530825', null, null, null, '1', null, null, null, '530800', null, 'zyyzhnzlhzzzx', 'ZhenZuoYiZuHaNiZuLaZuoZu  ', null, '4', '666500', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `area_tb` VALUES ('530826', null, null, null, '1', null, null, null, '530800', null, 'jchnzyzzzx', 'JiangChengHaNiZuYiZuZiZhiXian ', null, '4', '665900', '江城哈尼族彝族自治县');
INSERT INTO `area_tb` VALUES ('530827', null, null, null, '1', null, null, null, '530800', null, 'mldzlhzwzzzx', 'MengLianDaiZuLaZuoZuZuoZuZi   ', null, '4', '665800', '孟连傣族拉祜族佤族自治县');
INSERT INTO `area_tb` VALUES ('530828', null, null, null, '1', null, null, null, '530800', null, 'lclhzzzx', 'LanCangLaZuoZuZiZhiXian   ', null, '4', '665600', '澜沧拉祜族自治县');
INSERT INTO `area_tb` VALUES ('530829', null, null, null, '1', null, null, null, '530800', null, 'xmwzzzx', 'XiMengZuoZuZiZhiXian  ', null, '4', '665700', '西盟佤族自治县');
INSERT INTO `area_tb` VALUES ('530830', null, null, null, '1', null, null, null, '530800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('530900', null, null, null, '1', null, null, null, '530000', null, 'lcs', 'LinCangShi', null, '3', '', '临沧市');
INSERT INTO `area_tb` VALUES ('530902', null, null, null, '1', null, null, null, '530900', null, 'lxq', 'LinXiangQu', null, '4', '677000', '临翔区');
INSERT INTO `area_tb` VALUES ('530921', null, null, null, '1', null, null, null, '530900', null, 'fqx', 'FengQingXian  ', null, '4', '675900', '凤庆县');
INSERT INTO `area_tb` VALUES ('530922', null, null, null, '1', null, null, null, '530900', null, 'yx', 'YunXian   ', null, '4', '675800', '云县');
INSERT INTO `area_tb` VALUES ('530923', null, null, null, '1', null, null, null, '530900', null, 'ydx', 'YongDeXian', null, '4', '677600', '永德县');
INSERT INTO `area_tb` VALUES ('530924', null, null, null, '1', null, null, null, '530900', null, 'zkx', 'ZhenKangXian  ', null, '4', '677700', '镇康县');
INSERT INTO `area_tb` VALUES ('530925', null, null, null, '1', null, null, null, '530900', null, 'sjlhzwzblzdzzzx', 'ShuangJiangLaZuoZuZuoZuBuLangZu   ', null, '4', '677300', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `area_tb` VALUES ('530926', null, null, null, '1', null, null, null, '530900', null, 'gmdzwzzzx', 'GengMaDaiZuZuoZuZiZhiXian ', null, '4', '677500', '耿马傣族佤族自治县');
INSERT INTO `area_tb` VALUES ('530927', null, null, null, '1', null, null, null, '530900', null, 'cywzzzx', 'CangYuanZuoZuZiZhiXian', null, '4', '677400', '沧源佤族自治县');
INSERT INTO `area_tb` VALUES ('530928', null, null, null, '1', null, null, null, '530900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('532300', null, null, null, '1', null, null, null, '530000', null, 'cxyzzzz', 'ChuXiongYiZuZiZhiZhou ', null, '3', '', '楚雄彝族自治州');
INSERT INTO `area_tb` VALUES ('532301', null, null, null, '1', null, null, null, '532300', null, 'cxs', 'ChuXiongShi   ', null, '4', '675000', '楚雄市');
INSERT INTO `area_tb` VALUES ('532322', null, null, null, '1', null, null, null, '532300', null, 'sbx', 'ShuangBaiXian ', null, '4', '675100', '双柏县');
INSERT INTO `area_tb` VALUES ('532323', null, null, null, '1', null, null, null, '532300', null, 'mdx', 'MouDingXian   ', null, '4', '675500', '牟定县');
INSERT INTO `area_tb` VALUES ('532324', null, null, null, '1', null, null, null, '532300', null, 'nhx', 'NanHuaXian', null, '4', '675200', '南华县');
INSERT INTO `area_tb` VALUES ('532325', null, null, null, '1', null, null, null, '532300', null, 'yax', 'YaoAnXian ', null, '4', '675300', '姚安县');
INSERT INTO `area_tb` VALUES ('532326', null, null, null, '1', null, null, null, '532300', null, 'dyx', 'DaYaoXian ', null, '4', '675400', '大姚县');
INSERT INTO `area_tb` VALUES ('532327', null, null, null, '1', null, null, null, '532300', null, 'yrx', 'YongRenXian   ', null, '4', '651400', '永仁县');
INSERT INTO `area_tb` VALUES ('532328', null, null, null, '1', null, null, null, '532300', null, 'ymx', 'YuanMouXian   ', null, '4', '651300', '元谋县');
INSERT INTO `area_tb` VALUES ('532329', null, null, null, '1', null, null, null, '532300', null, 'wdx', 'WuDingXian', null, '4', '651600', '武定县');
INSERT INTO `area_tb` VALUES ('532331', null, null, null, '1', null, null, null, '532300', null, 'lfx', 'LuFengXian', null, '4', '651200', '禄丰县');
INSERT INTO `area_tb` VALUES ('532332', null, null, null, '1', null, null, null, '532300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('532500', null, null, null, '1', null, null, null, '530000', null, 'hhhnzyzzzz', 'HongHeHaNiZuYiZuZiZhiZhou ', null, '3', '', '红河哈尼族彝族自治州');
INSERT INTO `area_tb` VALUES ('532501', null, null, null, '1', null, null, null, '532500', null, 'gjs', 'GeJiuShi  ', null, '4', '661000', '个旧市');
INSERT INTO `area_tb` VALUES ('532502', null, null, null, '1', null, null, null, '532500', null, 'kys', 'KaiYuanShi', null, '4', '661600', '开远市');
INSERT INTO `area_tb` VALUES ('532522', null, null, null, '1', null, null, null, '532500', null, 'mzx', 'MengZiXian', null, '4', '661100', '蒙自县');
INSERT INTO `area_tb` VALUES ('532523', null, null, null, '1', null, null, null, '532500', null, 'pbmzzzx', 'PingBianMiaoZuZiZhiXian   ', null, '4', '661200', '屏边苗族自治县');
INSERT INTO `area_tb` VALUES ('532524', null, null, null, '1', null, null, null, '532500', null, 'jsx', 'JianShuiXian  ', null, '4', '654300', '建水县');
INSERT INTO `area_tb` VALUES ('532525', null, null, null, '1', null, null, null, '532500', null, 'spx', 'ShiPingXian   ', null, '4', '662200', '石屏县');
INSERT INTO `area_tb` VALUES ('532526', null, null, null, '1', null, null, null, '532500', null, 'mlx', 'MiLeXian  ', null, '4', '652300', '弥勒县');
INSERT INTO `area_tb` VALUES ('532527', null, null, null, '1', null, null, null, '532500', null, 'lxx', 'ZuoXiXian ', null, '4', '652400', '泸西县');
INSERT INTO `area_tb` VALUES ('532528', null, null, null, '1', null, null, null, '532500', null, 'yyx', 'YuanYangXian  ', null, '4', '662400', '元阳县');
INSERT INTO `area_tb` VALUES ('532529', null, null, null, '1', null, null, null, '532500', null, 'hhx', 'HongHeXian', null, '4', '654400', '红河县');
INSERT INTO `area_tb` VALUES ('532530', null, null, null, '1', null, null, null, '532500', null, 'jpmzyzdzzzx', 'JinPingMiaoZuYaoZuDaiZuZiZhi  ', null, '4', '661500', '金平苗族瑶族傣族自治县');
INSERT INTO `area_tb` VALUES ('532531', null, null, null, '1', null, null, null, '532500', null, 'lcx', 'LvChunXian', null, '4', '662500', '绿春县');
INSERT INTO `area_tb` VALUES ('532532', null, null, null, '1', null, null, null, '532500', null, 'hkyzzzx', 'HeKouYaoZuZiZhiXian   ', null, '4', '661300', '河口瑶族自治县');
INSERT INTO `area_tb` VALUES ('532533', null, null, null, '1', null, null, null, '532500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('532600', null, null, null, '1', null, null, null, '530000', null, 'wszzmzzzz', 'WenShanZhuangZuMiaoZuZiZhiZhou', null, '3', '', '文山壮族苗族自治州');
INSERT INTO `area_tb` VALUES ('532621', null, null, null, '1', null, null, null, '532600', null, 'wsx', 'WenShanXian   ', null, '4', '663000', '文山县');
INSERT INTO `area_tb` VALUES ('532622', null, null, null, '1', null, null, null, '532600', null, 'ysx', 'YanShanXian   ', null, '4', '663100', '砚山县');
INSERT INTO `area_tb` VALUES ('532623', null, null, null, '1', null, null, null, '532600', null, 'xcx', 'XiChouXian', null, '4', '663500', '西畴县');
INSERT INTO `area_tb` VALUES ('532624', null, null, null, '1', null, null, null, '532600', null, 'mlpx', 'MaLiPoXian', null, '4', '663600', '麻栗坡县');
INSERT INTO `area_tb` VALUES ('532625', null, null, null, '1', null, null, null, '532600', null, 'mgx', 'MaGuanXian', null, '4', '663700', '马关县');
INSERT INTO `area_tb` VALUES ('532626', null, null, null, '1', null, null, null, '532600', null, 'qbx', 'QiuBeiXian', null, '4', '663200', '丘北县');
INSERT INTO `area_tb` VALUES ('532627', null, null, null, '1', null, null, null, '532600', null, 'gnx', 'GuangNanXian  ', null, '4', '663300', '广南县');
INSERT INTO `area_tb` VALUES ('532628', null, null, null, '1', null, null, null, '532600', null, 'fnx', 'FuNingXian', null, '4', '663400', '富宁县');
INSERT INTO `area_tb` VALUES ('532629', null, null, null, '1', null, null, null, '532600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('532800', null, null, null, '1', null, null, null, '530000', null, 'xsbndzzzz', 'XiShuangBanNaDaiZuZiZhiZhou   ', null, '3', '', '西双版纳傣族自治州');
INSERT INTO `area_tb` VALUES ('532801', null, null, null, '1', null, null, null, '532800', null, 'jhs', 'JingHongShi   ', null, '4', '666100', '景洪市');
INSERT INTO `area_tb` VALUES ('532822', null, null, null, '1', null, null, null, '532800', null, 'mhx', 'ZuoHaiXian', null, '4', '666200', '勐海县');
INSERT INTO `area_tb` VALUES ('532823', null, null, null, '1', null, null, null, '532800', null, 'mlx', 'ZuoLaXian ', null, '4', '666300', '勐腊县');
INSERT INTO `area_tb` VALUES ('532824', null, null, null, '1', null, null, null, '532800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('532900', null, null, null, '1', null, null, null, '530000', null, 'dlbzzzz', 'DaLiBaiZuZiZhiZhou', null, '3', '', '大理白族自治州');
INSERT INTO `area_tb` VALUES ('532901', null, null, null, '1', null, null, null, '532900', null, 'dls', 'DaLiShi   ', null, '4', '671000', '大理市');
INSERT INTO `area_tb` VALUES ('532922', null, null, null, '1', null, null, null, '532900', null, 'ybyzzzx', 'YangZuoYiZuZiZhiXian  ', null, '4', '672500', '漾濞彝族自治县');
INSERT INTO `area_tb` VALUES ('532923', null, null, null, '1', null, null, null, '532900', null, 'xyx', 'XiangYunXian  ', null, '4', '672100', '祥云县');
INSERT INTO `area_tb` VALUES ('532924', null, null, null, '1', null, null, null, '532900', null, 'bcx', 'BinChuanXian  ', null, '4', '671600', '宾川县');
INSERT INTO `area_tb` VALUES ('532925', null, null, null, '1', null, null, null, '532900', null, 'mdx', 'MiDuXian  ', null, '4', '675600', '弥渡县');
INSERT INTO `area_tb` VALUES ('532926', null, null, null, '1', null, null, null, '532900', null, 'njyzzzx', 'NanJianYiZuZiZhiXian  ', null, '4', '675700', '南涧彝族自治县');
INSERT INTO `area_tb` VALUES ('532927', null, null, null, '1', null, null, null, '532900', null, 'wsyzhzzzx', 'WeiShanYiZuHuiZuZiZhiXian ', null, '4', '672400', '巍山彝族回族自治县');
INSERT INTO `area_tb` VALUES ('532928', null, null, null, '1', null, null, null, '532900', null, 'ypx', 'YongPingXian  ', null, '4', '672600', '永平县');
INSERT INTO `area_tb` VALUES ('532929', null, null, null, '1', null, null, null, '532900', null, 'ylx', 'YunLongXian   ', null, '4', '672700', '云龙县');
INSERT INTO `area_tb` VALUES ('532930', null, null, null, '1', null, null, null, '532900', null, 'eyx', 'ErYuanXian', null, '4', '671200', '洱源县');
INSERT INTO `area_tb` VALUES ('532931', null, null, null, '1', null, null, null, '532900', null, 'jcx', 'JianChuanXian ', null, '4', '671300', '剑川县');
INSERT INTO `area_tb` VALUES ('532932', null, null, null, '1', null, null, null, '532900', null, 'hqx', 'HeQingXian', null, '4', '671500', '鹤庆县');
INSERT INTO `area_tb` VALUES ('532933', null, null, null, '1', null, null, null, '532900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('533100', null, null, null, '1', null, null, null, '530000', null, 'dhdzjpzzzz', 'DeHongDaiZuJingPoZuZiZhiZhou  ', null, '3', '', '德宏傣族景颇族自治州');
INSERT INTO `area_tb` VALUES ('533102', null, null, null, '1', null, null, null, '533100', null, 'rls', 'RuiLiShi  ', null, '4', '678600', '瑞丽市');
INSERT INTO `area_tb` VALUES ('533103', null, null, null, '1', null, null, null, '533100', null, 'lxs', 'LuXiShi   ', null, '4', '678400', '潞西市');
INSERT INTO `area_tb` VALUES ('533122', null, null, null, '1', null, null, null, '533100', null, 'lhx', 'LiangHeXian   ', null, '4', '679200', '梁河县');
INSERT INTO `area_tb` VALUES ('533123', null, null, null, '1', null, null, null, '533100', null, 'yjx', 'YingJiangXian ', null, '4', '679300', '盈江县');
INSERT INTO `area_tb` VALUES ('533124', null, null, null, '1', null, null, null, '533100', null, 'lcx', 'LongChuanXian ', null, '4', '678700', '陇川县');
INSERT INTO `area_tb` VALUES ('533125', null, null, null, '1', null, null, null, '533100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('533300', null, null, null, '1', null, null, null, '530000', null, 'njlszzzz', 'NuJiangLiSuZuZiZhiZhou', null, '3', '', '怒江傈僳族自治州');
INSERT INTO `area_tb` VALUES ('533321', null, null, null, '1', null, null, null, '533300', null, 'lsx', 'ZuoShuiXian   ', null, '4', '673100', '泸水县');
INSERT INTO `area_tb` VALUES ('533323', null, null, null, '1', null, null, null, '533300', null, 'fgx', 'FuGongXian', null, '4', '673400', '福贡县');
INSERT INTO `area_tb` VALUES ('533324', null, null, null, '1', null, null, null, '533300', null, 'gsdlznzzzx', 'GongShanDuLongZuNuZuZiZhiXian ', null, '4', '673500', '贡山独龙族怒族自治县');
INSERT INTO `area_tb` VALUES ('533325', null, null, null, '1', null, null, null, '533300', null, 'lpbzpmzzzx', 'LanPingBaiZuPuMiZuZiZhiXian   ', null, '4', '671400', '兰坪白族普米族自治县');
INSERT INTO `area_tb` VALUES ('533326', null, null, null, '1', null, null, null, '533300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('533400', null, null, null, '1', null, null, null, '530000', null, 'dqczzzz', 'DiQingCangZuZiZhiZhou ', null, '3', '', '迪庆藏族自治州');
INSERT INTO `area_tb` VALUES ('533421', null, null, null, '1', null, null, null, '533400', null, 'xgllx', 'XiangGeLiLaXian   ', null, '4', '674400', '香格里拉县');
INSERT INTO `area_tb` VALUES ('533422', null, null, null, '1', null, null, null, '533400', null, 'dqx', 'DeQinXian ', null, '4', '674500', '德钦县');
INSERT INTO `area_tb` VALUES ('533423', null, null, null, '1', null, null, null, '533400', null, 'wxlszzzx', 'WeiXiLiSuZuZiZhiXian  ', null, '4', '674600', '维西傈僳族自治县');
INSERT INTO `area_tb` VALUES ('533424', null, null, null, '1', null, null, null, '533400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('540000', null, null, null, '1', null, null, null, '1', null, 'xczzq', 'XiCangZiZhiQu ', null, '2', '', '西藏自治区');
INSERT INTO `area_tb` VALUES ('540100', null, null, null, '1', null, null, null, '540000', null, 'lss', 'LaSaShi   ', null, '3', '850000', '拉萨市');
INSERT INTO `area_tb` VALUES ('540102', null, null, null, '1', null, null, null, '540100', null, 'cgq', 'ChengGuanQu   ', null, '4', '850000', '城关区');
INSERT INTO `area_tb` VALUES ('540121', null, null, null, '1', null, null, null, '540100', null, 'lzx', 'LinZhouXian   ', null, '4', '851600', '林周县');
INSERT INTO `area_tb` VALUES ('540122', null, null, null, '1', null, null, null, '540100', null, 'dxx', 'DangXiongXian ', null, '4', '851500', '当雄县');
INSERT INTO `area_tb` VALUES ('540123', null, null, null, '1', null, null, null, '540100', null, 'nmx', 'NiMuXian  ', null, '4', '851300', '尼木县');
INSERT INTO `area_tb` VALUES ('540124', null, null, null, '1', null, null, null, '540100', null, 'qsx', 'QuShuiXian', null, '4', '850600', '曲水县');
INSERT INTO `area_tb` VALUES ('540125', null, null, null, '1', null, null, null, '540100', null, 'dldqx', 'DuiLongDeQingXian ', null, '4', '851400', '堆龙德庆县');
INSERT INTO `area_tb` VALUES ('540126', null, null, null, '1', null, null, null, '540100', null, 'dzx', 'DaZiXian  ', null, '4', '850100', '达孜县');
INSERT INTO `area_tb` VALUES ('540127', null, null, null, '1', null, null, null, '540100', null, 'mzgkx', 'MoZhuGongKaXian   ', null, '4', '850200', '墨竹工卡县');
INSERT INTO `area_tb` VALUES ('540128', null, null, null, '1', null, null, null, '540100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('542100', null, null, null, '1', null, null, null, '540000', null, 'cddq', 'ChangDuDiQu   ', null, '3', '', '昌都地区');
INSERT INTO `area_tb` VALUES ('542121', null, null, null, '1', null, null, null, '542100', null, 'cdx', 'ChangDuXian   ', null, '4', '854000', '昌都县');
INSERT INTO `area_tb` VALUES ('542122', null, null, null, '1', null, null, null, '542100', null, 'jdx', 'JiangDaXian   ', null, '4', '854100', '江达县');
INSERT INTO `area_tb` VALUES ('542123', null, null, null, '1', null, null, null, '542100', null, 'gjx', 'GongJueXian   ', null, '4', '854200', '贡觉县');
INSERT INTO `area_tb` VALUES ('542124', null, null, null, '1', null, null, null, '542100', null, 'lwqx', 'LeiWuQiXian   ', null, '4', '855600', '类乌齐县');
INSERT INTO `area_tb` VALUES ('542125', null, null, null, '1', null, null, null, '542100', null, 'dqx', 'DingQingXian  ', null, '4', '855700', '丁青县');
INSERT INTO `area_tb` VALUES ('542126', null, null, null, '1', null, null, null, '542100', null, 'cyx', 'ChaYaXian ', null, '4', '854300', '察雅县');
INSERT INTO `area_tb` VALUES ('542127', null, null, null, '1', null, null, null, '542100', null, 'bsx', 'BaSuXian  ', null, '4', '854600', '八宿县');
INSERT INTO `area_tb` VALUES ('542128', null, null, null, '1', null, null, null, '542100', null, 'zgx', 'ZuoGongXian   ', null, '4', '854400', '左贡县');
INSERT INTO `area_tb` VALUES ('542129', null, null, null, '1', null, null, null, '542100', null, 'mkx', 'MangKangXian  ', null, '4', '854500', '芒康县');
INSERT INTO `area_tb` VALUES ('542132', null, null, null, '1', null, null, null, '542100', null, 'llx', 'LuoLongXian   ', null, '4', '855400', '洛隆县');
INSERT INTO `area_tb` VALUES ('542133', null, null, null, '1', null, null, null, '542100', null, 'bbx', 'BianBaXian', null, '4', '855500', '边坝县');
INSERT INTO `area_tb` VALUES ('542134', null, null, null, '1', null, null, null, '542100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('542200', null, null, null, '1', null, null, null, '540000', null, 'sndq', 'ShanNanDiQu   ', null, '3', '', '山南地区');
INSERT INTO `area_tb` VALUES ('542221', null, null, null, '1', null, null, null, '542200', null, 'ndx', 'NaiDongXian   ', null, '4', '856100', '乃东县');
INSERT INTO `area_tb` VALUES ('542222', null, null, null, '1', null, null, null, '542200', null, 'znx', 'ZhaNangXian   ', null, '4', '850800', '扎囊县');
INSERT INTO `area_tb` VALUES ('542223', null, null, null, '1', null, null, null, '542200', null, 'ggx', 'GongGaXian', null, '4', '850700', '贡嘎县');
INSERT INTO `area_tb` VALUES ('542224', null, null, null, '1', null, null, null, '542200', null, 'srx', 'SangRiXian', null, '4', '856200', '桑日县');
INSERT INTO `area_tb` VALUES ('542225', null, null, null, '1', null, null, null, '542200', null, 'qjx', 'QiongJieXian  ', null, '4', '856800', '琼结县');
INSERT INTO `area_tb` VALUES ('542226', null, null, null, '1', null, null, null, '542200', null, 'qsx', 'QuSongXian', null, '4', '856300', '曲松县');
INSERT INTO `area_tb` VALUES ('542227', null, null, null, '1', null, null, null, '542200', null, 'cmx', 'CuoMeiXian', null, '4', '856900', '措美县');
INSERT INTO `area_tb` VALUES ('542228', null, null, null, '1', null, null, null, '542200', null, 'lzx', 'LuoZhaXian', null, '4', '851200', '洛扎县');
INSERT INTO `area_tb` VALUES ('542229', null, null, null, '1', null, null, null, '542200', null, 'jcx', 'JiaChaXian', null, '4', '856400', '加查县');
INSERT INTO `area_tb` VALUES ('542231', null, null, null, '1', null, null, null, '542200', null, 'lzx', 'LongZiXian', null, '4', '856600', '隆子县');
INSERT INTO `area_tb` VALUES ('542232', null, null, null, '1', null, null, null, '542200', null, 'cnx', 'CuoNaXian ', null, '4', '856700', '错那县');
INSERT INTO `area_tb` VALUES ('542233', null, null, null, '1', null, null, null, '542200', null, 'lkzx', 'LangKaZiXian  ', null, '4', '851100', '浪卡子县');
INSERT INTO `area_tb` VALUES ('542234', null, null, null, '1', null, null, null, '542200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('542300', null, null, null, '1', null, null, null, '540000', null, 'rkzdq', 'RiKaZeDiQu', null, '3', '', '日喀则地区');
INSERT INTO `area_tb` VALUES ('542301', null, null, null, '1', null, null, null, '542300', null, 'rkzs', 'RiKaZeShi ', null, '4', '857000', '日喀则市');
INSERT INTO `area_tb` VALUES ('542322', null, null, null, '1', null, null, null, '542300', null, 'nmlx', 'NanMuLinXian  ', null, '4', '857100', '南木林县');
INSERT INTO `area_tb` VALUES ('542323', null, null, null, '1', null, null, null, '542300', null, 'jzx', 'JiangZiXian   ', null, '4', '857400', '江孜县');
INSERT INTO `area_tb` VALUES ('542324', null, null, null, '1', null, null, null, '542300', null, 'drx', 'DingRiXian', null, '4', '858200', '定日县');
INSERT INTO `area_tb` VALUES ('542325', null, null, null, '1', null, null, null, '542300', null, 'sjx', 'SaZuoXian ', null, '4', '857800', '萨迦县');
INSERT INTO `area_tb` VALUES ('542326', null, null, null, '1', null, null, null, '542300', null, 'lzx', 'LaZiXian  ', null, '4', '858100', '拉孜县');
INSERT INTO `area_tb` VALUES ('542327', null, null, null, '1', null, null, null, '542300', null, 'arx', 'AngRenXian', null, '4', '858500', '昂仁县');
INSERT INTO `area_tb` VALUES ('542328', null, null, null, '1', null, null, null, '542300', null, 'xtmx', 'XieTongMenXian', null, '4', '858900', '谢通门县');
INSERT INTO `area_tb` VALUES ('542329', null, null, null, '1', null, null, null, '542300', null, 'blx', 'BaiLangXian   ', null, '4', '857300', '白朗县');
INSERT INTO `area_tb` VALUES ('542330', null, null, null, '1', null, null, null, '542300', null, 'rbx', 'RenBuXian ', null, '4', '857200', '仁布县');
INSERT INTO `area_tb` VALUES ('542331', null, null, null, '1', null, null, null, '542300', null, 'kmx', 'KangMaXian', null, '4', '857500', '康马县');
INSERT INTO `area_tb` VALUES ('542332', null, null, null, '1', null, null, null, '542300', null, 'djx', 'DingJieXian   ', null, '4', '857900', '定结县');
INSERT INTO `area_tb` VALUES ('542333', null, null, null, '1', null, null, null, '542300', null, 'zbx', 'ZhongBaXian   ', null, '4', '858800', '仲巴县');
INSERT INTO `area_tb` VALUES ('542334', null, null, null, '1', null, null, null, '542300', null, 'ydx', 'YaDongXian', null, '4', '857600', '亚东县');
INSERT INTO `area_tb` VALUES ('542335', null, null, null, '1', null, null, null, '542300', null, 'jlx', 'JiLongXian', null, '4', '858700', '吉隆县');
INSERT INTO `area_tb` VALUES ('542336', null, null, null, '1', null, null, null, '542300', null, 'nlmx', 'NieLaMuXian   ', null, '4', '858300', '聂拉木县');
INSERT INTO `area_tb` VALUES ('542337', null, null, null, '1', null, null, null, '542300', null, 'sgx', 'SaGaXian  ', null, '4', '858600', '萨嘎县');
INSERT INTO `area_tb` VALUES ('542338', null, null, null, '1', null, null, null, '542300', null, 'gbx', 'GangBaXian', null, '4', '857700', '岗巴县');
INSERT INTO `area_tb` VALUES ('542339', null, null, null, '1', null, null, null, '542300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('542400', null, null, null, '1', null, null, null, '540000', null, 'nqdq', 'NaQuDiQu  ', null, '3', '', '那曲地区');
INSERT INTO `area_tb` VALUES ('542421', null, null, null, '1', null, null, null, '542400', null, 'nqx', 'NaQuXian  ', null, '4', '852000', '那曲县');
INSERT INTO `area_tb` VALUES ('542422', null, null, null, '1', null, null, null, '542400', null, 'jlx', 'JiaLiXian ', null, '4', '852400', '嘉黎县');
INSERT INTO `area_tb` VALUES ('542423', null, null, null, '1', null, null, null, '542400', null, 'brx', 'BiRuXian  ', null, '4', '852300', '比如县');
INSERT INTO `area_tb` VALUES ('542424', null, null, null, '1', null, null, null, '542400', null, 'nrx', 'NieRongXian   ', null, '4', '853500', '聂荣县');
INSERT INTO `area_tb` VALUES ('542425', null, null, null, '1', null, null, null, '542400', null, 'adx', 'AnDuoXian ', null, '4', '853400', '安多县');
INSERT INTO `area_tb` VALUES ('542426', null, null, null, '1', null, null, null, '542400', null, 'szx', 'ShenZhaXian   ', null, '4', '853100', '申扎县');
INSERT INTO `area_tb` VALUES ('542427', null, null, null, '1', null, null, null, '542400', null, 'sx', 'SuoXian   ', null, '4', '852200', '索县');
INSERT INTO `area_tb` VALUES ('542428', null, null, null, '1', null, null, null, '542400', null, 'bgx', 'BanGeXian ', null, '4', '852500', '班戈县');
INSERT INTO `area_tb` VALUES ('542429', null, null, null, '1', null, null, null, '542400', null, 'bqx', 'BaQingXian', null, '4', '852100', '巴青县');
INSERT INTO `area_tb` VALUES ('542430', null, null, null, '1', null, null, null, '542400', null, 'nmx', 'NiMaXian  ', null, '4', '852600', '尼玛县');
INSERT INTO `area_tb` VALUES ('542431', null, null, null, '1', null, null, null, '542400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('542500', null, null, null, '1', null, null, null, '540000', null, 'aldq', 'ALiDiQu   ', null, '3', '', '阿里地区');
INSERT INTO `area_tb` VALUES ('542521', null, null, null, '1', null, null, null, '542500', null, 'plx', 'PuLanXian ', null, '4', '859500', '普兰县');
INSERT INTO `area_tb` VALUES ('542522', null, null, null, '1', null, null, null, '542500', null, 'zdx', 'ZhaDaXian ', null, '4', '859600', '札达县');
INSERT INTO `area_tb` VALUES ('542523', null, null, null, '1', null, null, null, '542500', null, 'gex', 'GaErXian  ', null, '4', '859400', '噶尔县');
INSERT INTO `area_tb` VALUES ('542524', null, null, null, '1', null, null, null, '542500', null, 'rtx', 'RiTuXian  ', null, '4', '859700', '日土县');
INSERT INTO `area_tb` VALUES ('542525', null, null, null, '1', null, null, null, '542500', null, 'gjx', 'GeJiXian  ', null, '4', '859100', '革吉县');
INSERT INTO `area_tb` VALUES ('542526', null, null, null, '1', null, null, null, '542500', null, 'gzx', 'GaiZeXian ', null, '4', '859200', '改则县');
INSERT INTO `area_tb` VALUES ('542527', null, null, null, '1', null, null, null, '542500', null, 'cqx', 'CuoQinXian', null, '4', '859300', '措勤县');
INSERT INTO `area_tb` VALUES ('542528', null, null, null, '1', null, null, null, '542500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('542600', null, null, null, '1', null, null, null, '540000', null, 'lzdq', 'LinZhiDiQu', null, '3', '', '林芝地区');
INSERT INTO `area_tb` VALUES ('542621', null, null, null, '1', null, null, null, '542600', null, 'lzx', 'LinZhiXian', null, '4', '860100', '林芝县');
INSERT INTO `area_tb` VALUES ('542622', null, null, null, '1', null, null, null, '542600', null, 'gbjdx', 'GongBuJiangDaXian ', null, '4', '860200', '工布江达县');
INSERT INTO `area_tb` VALUES ('542623', null, null, null, '1', null, null, null, '542600', null, 'mlx', 'MiLinXian ', null, '4', '860500', '米林县');
INSERT INTO `area_tb` VALUES ('542624', null, null, null, '1', null, null, null, '542600', null, 'mtx', 'MoTuoXian ', null, '4', '860700', '墨脱县');
INSERT INTO `area_tb` VALUES ('542625', null, null, null, '1', null, null, null, '542600', null, 'bmx', 'BoMiXian  ', null, '4', '860300', '波密县');
INSERT INTO `area_tb` VALUES ('542626', null, null, null, '1', null, null, null, '542600', null, 'cyx', 'ChaYuXian ', null, '4', '860600', '察隅县');
INSERT INTO `area_tb` VALUES ('542627', null, null, null, '1', null, null, null, '542600', null, 'lx', 'LangXian  ', null, '4', '860400', '朗县');
INSERT INTO `area_tb` VALUES ('542628', null, null, null, '1', null, null, null, '542600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610000', null, null, null, '1', null, null, null, '1', null, 'sxs', 'ShanXiSheng   ', null, '2', '', '陕西省');
INSERT INTO `area_tb` VALUES ('610100', null, null, null, '1', null, null, null, '610000', null, 'xas', 'XiAnShi   ', null, '3', '710000', '西安市');
INSERT INTO `area_tb` VALUES ('610102', null, null, null, '1', null, null, null, '610100', null, 'xcq', 'XinChengQu', null, '4', '710005', '新城区');
INSERT INTO `area_tb` VALUES ('610103', null, null, null, '1', null, null, null, '610100', null, 'blq', 'BeiLinQu  ', null, '4', '710001', '碑林区');
INSERT INTO `area_tb` VALUES ('610104', null, null, null, '1', null, null, null, '610100', null, 'lhq', 'LianHuQu  ', null, '4', '710003', '莲湖区');
INSERT INTO `area_tb` VALUES ('610111', null, null, null, '1', null, null, null, '610100', null, 'bqq', 'ZuoQiaoQu ', null, '4', '710038', '灞桥区');
INSERT INTO `area_tb` VALUES ('610112', null, null, null, '1', null, null, null, '610100', null, 'wyq', 'WeiYangQu ', null, '4', '710016', '未央区');
INSERT INTO `area_tb` VALUES ('610113', null, null, null, '1', null, null, null, '610100', null, 'ytq', 'YanTaQu   ', null, '4', '710061', '雁塔区');
INSERT INTO `area_tb` VALUES ('610114', null, null, null, '1', null, null, null, '610100', null, 'ylq', 'YanLiangQu', null, '4', '710089', '阎良区');
INSERT INTO `area_tb` VALUES ('610115', null, null, null, '1', null, null, null, '610100', null, 'ltq', 'LinZuoQu  ', null, '4', '710600', '临潼区');
INSERT INTO `area_tb` VALUES ('610116', null, null, null, '1', null, null, null, '610100', null, 'caq', 'ChangAnQu ', null, '4', '710100', '长安区');
INSERT INTO `area_tb` VALUES ('610122', null, null, null, '1', null, null, null, '610100', null, 'ltx', 'LanTianXian   ', null, '4', '710500', '蓝田县');
INSERT INTO `area_tb` VALUES ('610124', null, null, null, '1', null, null, null, '610100', null, 'zzx', 'ZhouZhiXian   ', null, '4', '710400', '周至县');
INSERT INTO `area_tb` VALUES ('610125', null, null, null, '1', null, null, null, '610100', null, 'hx', 'HuXian', null, '4', '710300', '户县');
INSERT INTO `area_tb` VALUES ('610126', null, null, null, '1', null, null, null, '610100', null, 'glx', 'GaoLingXian   ', null, '4', '710200', '高陵县');
INSERT INTO `area_tb` VALUES ('610127', null, null, null, '1', null, null, null, '610100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610200', null, null, null, '1', null, null, null, '610000', null, 'tcs', 'TongChuanShi  ', null, '3', '727000', '铜川市');
INSERT INTO `area_tb` VALUES ('610202', null, null, null, '1', null, null, null, '610200', null, 'wyq', 'WangYiQu  ', null, '4', '727000', '王益区');
INSERT INTO `area_tb` VALUES ('610203', null, null, null, '1', null, null, null, '610200', null, 'ytq', 'YinTaiQu  ', null, '4', '727007', '印台区');
INSERT INTO `area_tb` VALUES ('610204', null, null, null, '1', null, null, null, '610200', null, 'yzq', 'YaoZhouQu ', null, '4', '727100', '耀州区');
INSERT INTO `area_tb` VALUES ('610222', null, null, null, '1', null, null, null, '610200', null, 'yjx', 'YiJunXian ', null, '4', '727200', '宜君县');
INSERT INTO `area_tb` VALUES ('610223', null, null, null, '1', null, null, null, '610200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610300', null, null, null, '1', null, null, null, '610000', null, 'bjs', 'BaoJiShi  ', null, '3', '721000', '宝鸡市');
INSERT INTO `area_tb` VALUES ('610302', null, null, null, '1', null, null, null, '610300', null, 'wbq', 'WeiBinQu  ', null, '4', '721000', '渭滨区');
INSERT INTO `area_tb` VALUES ('610303', null, null, null, '1', null, null, null, '610300', null, 'jtq', 'JinTaiQu  ', null, '4', '721001', '金台区');
INSERT INTO `area_tb` VALUES ('610304', null, null, null, '1', null, null, null, '610300', null, 'ccq', 'ChenCangQu', null, '4', '721300', '陈仓区');
INSERT INTO `area_tb` VALUES ('610322', null, null, null, '1', null, null, null, '610300', null, 'fxx', 'FengXiangXian ', null, '4', '721400', '凤翔县');
INSERT INTO `area_tb` VALUES ('610323', null, null, null, '1', null, null, null, '610300', null, 'qsx', 'ZuoShanXian   ', null, '4', '722400', '岐山县');
INSERT INTO `area_tb` VALUES ('610324', null, null, null, '1', null, null, null, '610300', null, 'ffx', 'FuFengXian', null, '4', '722200', '扶风县');
INSERT INTO `area_tb` VALUES ('610326', null, null, null, '1', null, null, null, '610300', null, 'mx', 'MeiXian   ', null, '4', '722300', '眉县');
INSERT INTO `area_tb` VALUES ('610327', null, null, null, '1', null, null, null, '610300', null, 'lx', 'LongXian  ', null, '4', '721200', '陇县');
INSERT INTO `area_tb` VALUES ('610328', null, null, null, '1', null, null, null, '610300', null, 'qyx', 'QianYangXian  ', null, '4', '721100', '千阳县');
INSERT INTO `area_tb` VALUES ('610329', null, null, null, '1', null, null, null, '610300', null, 'lyx', 'ZuoYouXian', null, '4', '721500', '麟游县');
INSERT INTO `area_tb` VALUES ('610330', null, null, null, '1', null, null, null, '610300', null, 'fx', 'FengXian  ', null, '4', '721700', '凤县');
INSERT INTO `area_tb` VALUES ('610331', null, null, null, '1', null, null, null, '610300', null, 'tbx', 'TaiBaiXian', null, '4', '721600', '太白县');
INSERT INTO `area_tb` VALUES ('610332', null, null, null, '1', null, null, null, '610300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610400', null, null, null, '1', null, null, null, '610000', null, 'xys', 'XianYangShi   ', null, '3', '712000', '咸阳市');
INSERT INTO `area_tb` VALUES ('610402', null, null, null, '1', null, null, null, '610400', null, 'qdq', 'QinDuQu   ', null, '4', '712000', '秦都区');
INSERT INTO `area_tb` VALUES ('610403', null, null, null, '1', null, null, null, '610400', null, 'ylq', 'YangLingQu', null, '4', '712100', '杨凌区');
INSERT INTO `area_tb` VALUES ('610404', null, null, null, '1', null, null, null, '610400', null, 'wcq', 'WeiChengQu', null, '4', '712000', '渭城区');
INSERT INTO `area_tb` VALUES ('610422', null, null, null, '1', null, null, null, '610400', null, 'syx', 'SanYuanXian   ', null, '4', '713800', '三原县');
INSERT INTO `area_tb` VALUES ('610423', null, null, null, '1', null, null, null, '610400', null, 'jyx', 'ZuoYangXian   ', null, '4', '713700', '泾阳县');
INSERT INTO `area_tb` VALUES ('610424', null, null, null, '1', null, null, null, '610400', null, 'qx', 'QianXian  ', null, '4', '713300', '乾县');
INSERT INTO `area_tb` VALUES ('610425', null, null, null, '1', null, null, null, '610400', null, 'lqx', 'LiQuanXian', null, '4', '713200', '礼泉县');
INSERT INTO `area_tb` VALUES ('610426', null, null, null, '1', null, null, null, '610400', null, 'ysx', 'YongShouXian  ', null, '4', '713400', '永寿县');
INSERT INTO `area_tb` VALUES ('610427', null, null, null, '1', null, null, null, '610400', null, 'bx', 'BinXian   ', null, '4', '713500', '彬县');
INSERT INTO `area_tb` VALUES ('610428', null, null, null, '1', null, null, null, '610400', null, 'cwx', 'ChangWuXian   ', null, '4', '713600', '长武县');
INSERT INTO `area_tb` VALUES ('610429', null, null, null, '1', null, null, null, '610400', null, 'xyx', 'XunYiXian ', null, '4', '711300', '旬邑县');
INSERT INTO `area_tb` VALUES ('610430', null, null, null, '1', null, null, null, '610400', null, 'chx', 'ChunHuaXian   ', null, '4', '711200', '淳化县');
INSERT INTO `area_tb` VALUES ('610431', null, null, null, '1', null, null, null, '610400', null, 'wgx', 'WuGongXian', null, '4', '712200', '武功县');
INSERT INTO `area_tb` VALUES ('610481', null, null, null, '1', null, null, null, '610400', null, 'xps', 'XingPingShi   ', null, '4', '713100', '兴平市');
INSERT INTO `area_tb` VALUES ('610482', null, null, null, '1', null, null, null, '610400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610500', null, null, null, '1', null, null, null, '610000', null, 'wns', 'WeiNanShi ', null, '3', '714000', '渭南市');
INSERT INTO `area_tb` VALUES ('610502', null, null, null, '1', null, null, null, '610500', null, 'lwq', 'LinWeiQu  ', null, '4', '714000', '临渭区');
INSERT INTO `area_tb` VALUES ('610521', null, null, null, '1', null, null, null, '610500', null, 'hx', 'HuaXian   ', null, '4', '714100', '华县');
INSERT INTO `area_tb` VALUES ('610522', null, null, null, '1', null, null, null, '610500', null, 'tgx', 'ZuoGuanXian   ', null, '4', '714300', '潼关县');
INSERT INTO `area_tb` VALUES ('610523', null, null, null, '1', null, null, null, '610500', null, 'dlx', 'DaLiXian  ', null, '4', '715100', '大荔县');
INSERT INTO `area_tb` VALUES ('610524', null, null, null, '1', null, null, null, '610500', null, 'hyx', 'HeYangXian', null, '4', '715300', '合阳县');
INSERT INTO `area_tb` VALUES ('610525', null, null, null, '1', null, null, null, '610500', null, 'ccx', 'ChengChengXian', null, '4', '715200', '澄城县');
INSERT INTO `area_tb` VALUES ('610526', null, null, null, '1', null, null, null, '610500', null, 'pcx', 'PuChengXian   ', null, '4', '715500', '蒲城县');
INSERT INTO `area_tb` VALUES ('610527', null, null, null, '1', null, null, null, '610500', null, 'bsx', 'BaiShuiXian   ', null, '4', '715600', '白水县');
INSERT INTO `area_tb` VALUES ('610528', null, null, null, '1', null, null, null, '610500', null, 'fpx', 'FuPingXian', null, '4', '711700', '富平县');
INSERT INTO `area_tb` VALUES ('610581', null, null, null, '1', null, null, null, '610500', null, 'hcs', 'HanChengShi   ', null, '4', '715400', '韩城市');
INSERT INTO `area_tb` VALUES ('610582', null, null, null, '1', null, null, null, '610500', null, 'hys', 'HuaYinShi ', null, '4', '714200', '华阴市');
INSERT INTO `area_tb` VALUES ('610583', null, null, null, '1', null, null, null, '610500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610600', null, null, null, '1', null, null, null, '610000', null, 'yas', 'YanAnShi  ', null, '3', '716000', '延安市');
INSERT INTO `area_tb` VALUES ('610602', null, null, null, '1', null, null, null, '610600', null, 'btq', 'BaoTaQu   ', null, '4', '716000', '宝塔区');
INSERT INTO `area_tb` VALUES ('610621', null, null, null, '1', null, null, null, '610600', null, 'ycx', 'YanChangXian  ', null, '4', '717100', '延长县');
INSERT INTO `area_tb` VALUES ('610622', null, null, null, '1', null, null, null, '610600', null, 'ycx', 'YanChuanXian  ', null, '4', '717200', '延川县');
INSERT INTO `area_tb` VALUES ('610623', null, null, null, '1', null, null, null, '610600', null, 'zcx', 'ZiChangXian   ', null, '4', '717300', '子长县');
INSERT INTO `area_tb` VALUES ('610624', null, null, null, '1', null, null, null, '610600', null, 'asx', 'AnSaiXian ', null, '4', '717400', '安塞县');
INSERT INTO `area_tb` VALUES ('610625', null, null, null, '1', null, null, null, '610600', null, 'zdx', 'ZhiDanXian', null, '4', '717500', '志丹县');
INSERT INTO `area_tb` VALUES ('610626', null, null, null, '1', null, null, null, '610600', null, 'wqx', 'WuQiXian  ', null, '4', '717600', '吴起县');
INSERT INTO `area_tb` VALUES ('610627', null, null, null, '1', null, null, null, '610600', null, 'gqx', 'GanQuanXian   ', null, '4', '716100', '甘泉县');
INSERT INTO `area_tb` VALUES ('610628', null, null, null, '1', null, null, null, '610600', null, 'fx', 'FuXian', null, '4', '727500', '富县');
INSERT INTO `area_tb` VALUES ('610629', null, null, null, '1', null, null, null, '610600', null, 'lcx', 'LuoChuanXian  ', null, '4', '727400', '洛川县');
INSERT INTO `area_tb` VALUES ('610630', null, null, null, '1', null, null, null, '610600', null, 'ycx', 'YiChuanXian   ', null, '4', '716200', '宜川县');
INSERT INTO `area_tb` VALUES ('610631', null, null, null, '1', null, null, null, '610600', null, 'hlx', 'HuangLongXian ', null, '4', '715700', '黄龙县');
INSERT INTO `area_tb` VALUES ('610632', null, null, null, '1', null, null, null, '610600', null, 'hlx', 'HuangLingXian ', null, '4', '727300', '黄陵县');
INSERT INTO `area_tb` VALUES ('610633', null, null, null, '1', null, null, null, '610600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610700', null, null, null, '1', null, null, null, '610000', null, 'hzs', 'HanZhongShi   ', null, '3', '723000', '汉中市');
INSERT INTO `area_tb` VALUES ('610702', null, null, null, '1', null, null, null, '610700', null, 'htq', 'HanTaiQu  ', null, '4', '723000', '汉台区');
INSERT INTO `area_tb` VALUES ('610721', null, null, null, '1', null, null, null, '610700', null, 'nzx', 'NanZhengXian  ', null, '4', '723100', '南郑县');
INSERT INTO `area_tb` VALUES ('610722', null, null, null, '1', null, null, null, '610700', null, 'cgx', 'ChengGuXian   ', null, '4', '723200', '城固县');
INSERT INTO `area_tb` VALUES ('610723', null, null, null, '1', null, null, null, '610700', null, 'yx', 'YangXian  ', null, '4', '723300', '洋县');
INSERT INTO `area_tb` VALUES ('610724', null, null, null, '1', null, null, null, '610700', null, 'xxx', 'XiXiangXian   ', null, '4', '723500', '西乡县');
INSERT INTO `area_tb` VALUES ('610725', null, null, null, '1', null, null, null, '610700', null, 'mx', 'MianXian  ', null, '4', '724200', '勉县');
INSERT INTO `area_tb` VALUES ('610726', null, null, null, '1', null, null, null, '610700', null, 'nqx', 'NingQiangXian ', null, '4', '724400', '宁强县');
INSERT INTO `area_tb` VALUES ('610727', null, null, null, '1', null, null, null, '610700', null, 'lyx', 'LueYangXian   ', null, '4', '724300', '略阳县');
INSERT INTO `area_tb` VALUES ('610728', null, null, null, '1', null, null, null, '610700', null, 'zbx', 'ZhenBaXian', null, '4', '723600', '镇巴县');
INSERT INTO `area_tb` VALUES ('610729', null, null, null, '1', null, null, null, '610700', null, 'lbx', 'LiuBaXian ', null, '4', '724100', '留坝县');
INSERT INTO `area_tb` VALUES ('610730', null, null, null, '1', null, null, null, '610700', null, 'fpx', 'FoPingXian', null, '4', '723400', '佛坪县');
INSERT INTO `area_tb` VALUES ('610731', null, null, null, '1', null, null, null, '610700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610800', null, null, null, '1', null, null, null, '610000', null, 'yls', 'YuLinShi  ', null, '3', '719000', '榆林市');
INSERT INTO `area_tb` VALUES ('610802', null, null, null, '1', null, null, null, '610800', null, 'yyq', 'YuYangQu  ', null, '4', '719000', '榆阳区');
INSERT INTO `area_tb` VALUES ('610821', null, null, null, '1', null, null, null, '610800', null, 'smx', 'ShenMuXian', null, '4', '719300', '神木县');
INSERT INTO `area_tb` VALUES ('610822', null, null, null, '1', null, null, null, '610800', null, 'fgx', 'FuGuXian  ', null, '4', '719400', '府谷县');
INSERT INTO `area_tb` VALUES ('610823', null, null, null, '1', null, null, null, '610800', null, 'hsx', 'HengShanXian  ', null, '4', '719100', '横山县');
INSERT INTO `area_tb` VALUES ('610824', null, null, null, '1', null, null, null, '610800', null, 'jbx', 'JingBianXian  ', null, '4', '718500', '靖边县');
INSERT INTO `area_tb` VALUES ('610825', null, null, null, '1', null, null, null, '610800', null, 'dbx', 'DingBianXian  ', null, '4', '718600', '定边县');
INSERT INTO `area_tb` VALUES ('610826', null, null, null, '1', null, null, null, '610800', null, 'sdx', 'SuiDeXian ', null, '4', '718000', '绥德县');
INSERT INTO `area_tb` VALUES ('610827', null, null, null, '1', null, null, null, '610800', null, 'mzx', 'MiZhiXian ', null, '4', '718100', '米脂县');
INSERT INTO `area_tb` VALUES ('610828', null, null, null, '1', null, null, null, '610800', null, 'jx', 'JiaXian   ', null, '4', '719200', '佳县');
INSERT INTO `area_tb` VALUES ('610829', null, null, null, '1', null, null, null, '610800', null, 'wbx', 'WuBaoXian ', null, '4', '718200', '吴堡县');
INSERT INTO `area_tb` VALUES ('610830', null, null, null, '1', null, null, null, '610800', null, 'qjx', 'QingJianXian  ', null, '4', '718300', '清涧县');
INSERT INTO `area_tb` VALUES ('610831', null, null, null, '1', null, null, null, '610800', null, 'zzx', 'ZiZhouXian', null, '4', '718400', '子洲县');
INSERT INTO `area_tb` VALUES ('610832', null, null, null, '1', null, null, null, '610800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('610900', null, null, null, '1', null, null, null, '610000', null, 'aks', 'AnKangShi ', null, '3', '725000', '安康市');
INSERT INTO `area_tb` VALUES ('610902', null, null, null, '1', null, null, null, '610900', null, 'hbq', 'HanBinQu  ', null, '4', '725000', '汉滨区');
INSERT INTO `area_tb` VALUES ('610921', null, null, null, '1', null, null, null, '610900', null, 'hyx', 'HanYinXian', null, '4', '725100', '汉阴县');
INSERT INTO `area_tb` VALUES ('610922', null, null, null, '1', null, null, null, '610900', null, 'sqx', 'ShiQuanXian   ', null, '4', '725200', '石泉县');
INSERT INTO `area_tb` VALUES ('610923', null, null, null, '1', null, null, null, '610900', null, 'nsx', 'NingShanXian  ', null, '4', '711600', '宁陕县');
INSERT INTO `area_tb` VALUES ('610924', null, null, null, '1', null, null, null, '610900', null, 'zyx', 'ZiYangXian', null, '4', '725300', '紫阳县');
INSERT INTO `area_tb` VALUES ('610925', null, null, null, '1', null, null, null, '610900', null, 'lgx', 'ZuoGaoXian', null, '4', '725400', '岚皋县');
INSERT INTO `area_tb` VALUES ('610926', null, null, null, '1', null, null, null, '610900', null, 'plx', 'PingLiXian', null, '4', '725500', '平利县');
INSERT INTO `area_tb` VALUES ('610927', null, null, null, '1', null, null, null, '610900', null, 'zpx', 'ZhenPingXian  ', null, '4', '725600', '镇坪县');
INSERT INTO `area_tb` VALUES ('610928', null, null, null, '1', null, null, null, '610900', null, 'xyx', 'XunYangXian   ', null, '4', '725700', '旬阳县');
INSERT INTO `area_tb` VALUES ('610929', null, null, null, '1', null, null, null, '610900', null, 'bhx', 'BaiHeXian ', null, '4', '725800', '白河县');
INSERT INTO `area_tb` VALUES ('610930', null, null, null, '1', null, null, null, '610900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('611000', null, null, null, '1', null, null, null, '610000', null, 'sls', 'ShangLuoShi   ', null, '3', '726000', '商洛市');
INSERT INTO `area_tb` VALUES ('611002', null, null, null, '1', null, null, null, '611000', null, 'szq', 'ShangZhouQu   ', null, '4', '726000', '商州区');
INSERT INTO `area_tb` VALUES ('611021', null, null, null, '1', null, null, null, '611000', null, 'lnx', 'LuoNanXian', null, '4', '726100', '洛南县');
INSERT INTO `area_tb` VALUES ('611022', null, null, null, '1', null, null, null, '611000', null, 'dfx', 'DanFengXian   ', null, '4', '726200', '丹凤县');
INSERT INTO `area_tb` VALUES ('611023', null, null, null, '1', null, null, null, '611000', null, 'snx', 'ShangNanXian  ', null, '4', '726300', '商南县');
INSERT INTO `area_tb` VALUES ('611024', null, null, null, '1', null, null, null, '611000', null, 'syx', 'ShanYangXian  ', null, '4', '726400', '山阳县');
INSERT INTO `area_tb` VALUES ('611025', null, null, null, '1', null, null, null, '611000', null, 'zax', 'ZhenAnXian', null, '4', '711500', '镇安县');
INSERT INTO `area_tb` VALUES ('611026', null, null, null, '1', null, null, null, '611000', null, 'zsx', 'ZuoShuiXian   ', null, '4', '711400', '柞水县');
INSERT INTO `area_tb` VALUES ('611027', null, null, null, '1', null, null, null, '611000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620000', null, null, null, '1', null, null, null, '1', null, 'gss', 'GanSuSheng', null, '2', '', '甘肃省');
INSERT INTO `area_tb` VALUES ('620100', null, null, null, '1', null, null, null, '620000', null, 'lzs', 'LanZhouShi', null, '3', '730000', '兰州市');
INSERT INTO `area_tb` VALUES ('620102', null, null, null, '1', null, null, null, '620100', null, 'cgq', 'ChengGuanQu   ', null, '4', '730030', '城关区');
INSERT INTO `area_tb` VALUES ('620103', null, null, null, '1', null, null, null, '620100', null, 'qlhq', 'QiLiHeQu  ', null, '4', '730050', '七里河区');
INSERT INTO `area_tb` VALUES ('620104', null, null, null, '1', null, null, null, '620100', null, 'xgq', 'XiGuQu', null, '4', '730060', '西固区');
INSERT INTO `area_tb` VALUES ('620105', null, null, null, '1', null, null, null, '620100', null, 'anq', 'AnNingQu  ', null, '4', '730070', '安宁区');
INSERT INTO `area_tb` VALUES ('620111', null, null, null, '1', null, null, null, '620100', null, 'hgq', 'HongGuQu  ', null, '4', '730080', '红古区');
INSERT INTO `area_tb` VALUES ('620121', null, null, null, '1', null, null, null, '620100', null, 'ydx', 'YongDengXian  ', null, '4', '730300', '永登县');
INSERT INTO `area_tb` VALUES ('620122', null, null, null, '1', null, null, null, '620100', null, 'glx', 'GaoLanXian', null, '4', '730200', '皋兰县');
INSERT INTO `area_tb` VALUES ('620123', null, null, null, '1', null, null, null, '620100', null, 'yzx', 'YuZhongXian   ', null, '4', '730100', '榆中县');
INSERT INTO `area_tb` VALUES ('620124', null, null, null, '1', null, null, null, '620100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620200', null, null, null, '1', null, null, null, '620000', null, 'jygs', 'JiaYuGuanShi  ', null, '3', '735100', '嘉峪关市');
INSERT INTO `area_tb` VALUES ('620300', null, null, null, '1', null, null, null, '620000', null, 'jcs', 'JinChangShi   ', null, '3', '737100', '金昌市');
INSERT INTO `area_tb` VALUES ('620302', null, null, null, '1', null, null, null, '620300', null, 'jcq', 'JinChuanQu', null, '4', '737103', '金川区');
INSERT INTO `area_tb` VALUES ('620321', null, null, null, '1', null, null, null, '620300', null, 'ycx', 'YongChangXian ', null, '4', '737200', '永昌县');
INSERT INTO `area_tb` VALUES ('620322', null, null, null, '1', null, null, null, '620300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620400', null, null, null, '1', null, null, null, '620000', null, 'bys', 'BaiYinShi ', null, '3', '', '白银市');
INSERT INTO `area_tb` VALUES ('620402', null, null, null, '1', null, null, null, '620400', null, 'byq', 'BaiYinQu  ', null, '4', '730900', '白银区');
INSERT INTO `area_tb` VALUES ('620403', null, null, null, '1', null, null, null, '620400', null, 'pcq', 'PingChuanQu   ', null, '4', '730910', '平川区');
INSERT INTO `area_tb` VALUES ('620421', null, null, null, '1', null, null, null, '620400', null, 'jyx', 'JingYuanXian  ', null, '4', '730600', '靖远县');
INSERT INTO `area_tb` VALUES ('620422', null, null, null, '1', null, null, null, '620400', null, 'hnx', 'HuiNingXian   ', null, '4', '730700', '会宁县');
INSERT INTO `area_tb` VALUES ('620423', null, null, null, '1', null, null, null, '620400', null, 'jtx', 'JingTaiXian   ', null, '4', '730400', '景泰县');
INSERT INTO `area_tb` VALUES ('620424', null, null, null, '1', null, null, null, '620400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620500', null, null, null, '1', null, null, null, '620000', null, 'tss', 'TianShuiShi   ', null, '3', '', '天水市');
INSERT INTO `area_tb` VALUES ('620502', null, null, null, '1', null, null, null, '620500', null, 'qzq', 'QinZhouQu ', null, '4', '741000', '秦州区');
INSERT INTO `area_tb` VALUES ('620503', null, null, null, '1', null, null, null, '620500', null, 'mjq', 'MaiJiQu   ', null, '4', '741020', '麦积区');
INSERT INTO `area_tb` VALUES ('620521', null, null, null, '1', null, null, null, '620500', null, 'qsx', 'QingShuiXian  ', null, '4', '741400', '清水县');
INSERT INTO `area_tb` VALUES ('620522', null, null, null, '1', null, null, null, '620500', null, 'qax', 'QinAnXian ', null, '4', '741600', '秦安县');
INSERT INTO `area_tb` VALUES ('620523', null, null, null, '1', null, null, null, '620500', null, 'ggx', 'GanGuXian ', null, '4', '741200', '甘谷县');
INSERT INTO `area_tb` VALUES ('620524', null, null, null, '1', null, null, null, '620500', null, 'wsx', 'WuShanXian', null, '4', '741300', '武山县');
INSERT INTO `area_tb` VALUES ('620525', null, null, null, '1', null, null, null, '620500', null, 'zjchzzzx', 'ZhangJiaChuanHuiZuZiZhiXian   ', null, '4', '741500', '张家川回族自治县');
INSERT INTO `area_tb` VALUES ('620526', null, null, null, '1', null, null, null, '620500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620600', null, null, null, '1', null, null, null, '620000', null, 'wws', 'WuWeiShi  ', null, '3', '733000', '武威市');
INSERT INTO `area_tb` VALUES ('620602', null, null, null, '1', null, null, null, '620600', null, 'lzq', 'LiangZhouQu   ', null, '4', '733000', '凉州区');
INSERT INTO `area_tb` VALUES ('620621', null, null, null, '1', null, null, null, '620600', null, 'mqx', 'MinQinXian', null, '4', '733300', '民勤县');
INSERT INTO `area_tb` VALUES ('620622', null, null, null, '1', null, null, null, '620600', null, 'glx', 'GuLangXian', null, '4', '733100', '古浪县');
INSERT INTO `area_tb` VALUES ('620623', null, null, null, '1', null, null, null, '620600', null, 'tzczzzx', 'TianZhuCangZuZiZhiXian', null, '4', '733200', '天祝藏族自治县');
INSERT INTO `area_tb` VALUES ('620624', null, null, null, '1', null, null, null, '620600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620700', null, null, null, '1', null, null, null, '620000', null, 'zys', 'ZhangYeShi', null, '3', '734000', '张掖市');
INSERT INTO `area_tb` VALUES ('620702', null, null, null, '1', null, null, null, '620700', null, 'gzq', 'GanZhouQu ', null, '4', '734000', '甘州区');
INSERT INTO `area_tb` VALUES ('620721', null, null, null, '1', null, null, null, '620700', null, 'snygzzzx', 'SuNanYuGuZuZiZhiXian  ', null, '4', '734400', '肃南裕固族自治县');
INSERT INTO `area_tb` VALUES ('620722', null, null, null, '1', null, null, null, '620700', null, 'mlx', 'MinLeXian ', null, '4', '734500', '民乐县');
INSERT INTO `area_tb` VALUES ('620723', null, null, null, '1', null, null, null, '620700', null, 'lzx', 'LinZeXian ', null, '4', '734200', '临泽县');
INSERT INTO `area_tb` VALUES ('620724', null, null, null, '1', null, null, null, '620700', null, 'gtx', 'GaoTaiXian', null, '4', '734300', '高台县');
INSERT INTO `area_tb` VALUES ('620725', null, null, null, '1', null, null, null, '620700', null, 'sdx', 'ShanDanXian   ', null, '4', '734100', '山丹县');
INSERT INTO `area_tb` VALUES ('620726', null, null, null, '1', null, null, null, '620700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620800', null, null, null, '1', null, null, null, '620000', null, 'pls', 'PingLiangShi  ', null, '3', '744000', '平凉市');
INSERT INTO `area_tb` VALUES ('620802', null, null, null, '1', null, null, null, '620800', null, 'ktq', 'ZuoZuoQu  ', null, '4', '744000', '崆峒区');
INSERT INTO `area_tb` VALUES ('620821', null, null, null, '1', null, null, null, '620800', null, 'jcx', 'ZuoChuanXian  ', null, '4', '744300', '泾川县');
INSERT INTO `area_tb` VALUES ('620822', null, null, null, '1', null, null, null, '620800', null, 'ltx', 'LingTaiXian   ', null, '4', '744400', '灵台县');
INSERT INTO `area_tb` VALUES ('620823', null, null, null, '1', null, null, null, '620800', null, 'cxx', 'ChongXinXian  ', null, '4', '744200', '崇信县');
INSERT INTO `area_tb` VALUES ('620824', null, null, null, '1', null, null, null, '620800', null, 'htx', 'HuaTingXian   ', null, '4', '744100', '华亭县');
INSERT INTO `area_tb` VALUES ('620825', null, null, null, '1', null, null, null, '620800', null, 'zlx', 'ZhuangLangXian', null, '4', '744600', '庄浪县');
INSERT INTO `area_tb` VALUES ('620826', null, null, null, '1', null, null, null, '620800', null, 'jnx', 'JingNingXian  ', null, '4', '743400', '静宁县');
INSERT INTO `area_tb` VALUES ('620827', null, null, null, '1', null, null, null, '620800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('620900', null, null, null, '1', null, null, null, '620000', null, 'jqs', 'JiuQuanShi', null, '3', '735000', '酒泉市');
INSERT INTO `area_tb` VALUES ('620902', null, null, null, '1', null, null, null, '620900', null, 'szq', 'SuZhouQu  ', null, '4', '735000', '肃州区');
INSERT INTO `area_tb` VALUES ('620921', null, null, null, '1', null, null, null, '620900', null, 'jtx', 'JinTaXian ', null, '4', '735300', '金塔县');
INSERT INTO `area_tb` VALUES ('620922', null, null, null, '1', null, null, null, '620900', null, 'axx', 'AnXiXian  ', null, '4', '743000', '安西县');
INSERT INTO `area_tb` VALUES ('620923', null, null, null, '1', null, null, null, '620900', null, 'sbmgzzzx', 'SuBeiMengGuZuZiZhiXian', null, '4', '736300', '肃北蒙古族自治县');
INSERT INTO `area_tb` VALUES ('620924', null, null, null, '1', null, null, null, '620900', null, 'akshskzzzx', 'AKeSaiHaSaKeZuZiZhiXian   ', null, '4', '736400', '阿克塞哈萨克族自治县');
INSERT INTO `area_tb` VALUES ('620981', null, null, null, '1', null, null, null, '620900', null, 'yms', 'YuMenShi  ', null, '4', '735200', '玉门市');
INSERT INTO `area_tb` VALUES ('620982', null, null, null, '1', null, null, null, '620900', null, 'dhs', 'DunHuangShi   ', null, '4', '736200', '敦煌市');
INSERT INTO `area_tb` VALUES ('620983', null, null, null, '1', null, null, null, '620900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('621000', null, null, null, '1', null, null, null, '620000', null, 'qys', 'QingYangShi   ', null, '3', '', '庆阳市');
INSERT INTO `area_tb` VALUES ('621002', null, null, null, '1', null, null, null, '621000', null, 'xfq', 'XiFengQu  ', null, '4', '745000', '西峰区');
INSERT INTO `area_tb` VALUES ('621021', null, null, null, '1', null, null, null, '621000', null, 'qcx', 'QingChengXian ', null, '4', '745100', '庆城县');
INSERT INTO `area_tb` VALUES ('621022', null, null, null, '1', null, null, null, '621000', null, 'hx', 'HuanXian  ', null, '4', '745700', '环县');
INSERT INTO `area_tb` VALUES ('621023', null, null, null, '1', null, null, null, '621000', null, 'hcx', 'HuaChiXian', null, '4', '745600', '华池县');
INSERT INTO `area_tb` VALUES ('621024', null, null, null, '1', null, null, null, '621000', null, 'hsx', 'HeShuiXian', null, '4', '745400', '合水县');
INSERT INTO `area_tb` VALUES ('621025', null, null, null, '1', null, null, null, '621000', null, 'znx', 'ZhengNingXian ', null, '4', '745300', '正宁县');
INSERT INTO `area_tb` VALUES ('621026', null, null, null, '1', null, null, null, '621000', null, 'nx', 'NingXian  ', null, '4', '745200', '宁县');
INSERT INTO `area_tb` VALUES ('621027', null, null, null, '1', null, null, null, '621000', null, 'zyx', 'ZhenYuanXian  ', null, '4', '744500', '镇原县');
INSERT INTO `area_tb` VALUES ('621028', null, null, null, '1', null, null, null, '621000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('621100', null, null, null, '1', null, null, null, '620000', null, 'dxs', 'DingXiShi ', null, '3', '743000', '定西市');
INSERT INTO `area_tb` VALUES ('621102', null, null, null, '1', null, null, null, '621100', null, 'adq', 'AnDingQu  ', null, '4', '743000', '安定区');
INSERT INTO `area_tb` VALUES ('621121', null, null, null, '1', null, null, null, '621100', null, 'twx', 'TongWeiXian   ', null, '4', '743300', '通渭县');
INSERT INTO `area_tb` VALUES ('621122', null, null, null, '1', null, null, null, '621100', null, 'lxx', 'LongXiXian', null, '4', '748100', '陇西县');
INSERT INTO `area_tb` VALUES ('621123', null, null, null, '1', null, null, null, '621100', null, 'wyx', 'WeiYuanXian   ', null, '4', '748200', '渭源县');
INSERT INTO `area_tb` VALUES ('621124', null, null, null, '1', null, null, null, '621100', null, 'ltx', 'LinZuoXian', null, '4', '730500', '临洮县');
INSERT INTO `area_tb` VALUES ('621125', null, null, null, '1', null, null, null, '621100', null, 'zx', 'ZhangXian ', null, '4', '748300', '漳县');
INSERT INTO `area_tb` VALUES ('621126', null, null, null, '1', null, null, null, '621100', null, 'mx', 'ZuoXian   ', null, '4', '748400', '岷县');
INSERT INTO `area_tb` VALUES ('621127', null, null, null, '1', null, null, null, '621100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('621200', null, null, null, '1', null, null, null, '620000', null, 'lns', 'LongNanShi', null, '3', '', '陇南市');
INSERT INTO `area_tb` VALUES ('621202', null, null, null, '1', null, null, null, '621200', null, 'wdq', 'WuDuQu', null, '4', '746000', '武都区');
INSERT INTO `area_tb` VALUES ('621221', null, null, null, '1', null, null, null, '621200', null, 'cx', 'ChengXian ', null, '4', '742500', '成县');
INSERT INTO `area_tb` VALUES ('621222', null, null, null, '1', null, null, null, '621200', null, 'wx', 'WenXian   ', null, '4', '746400', '文县');
INSERT INTO `area_tb` VALUES ('621223', null, null, null, '1', null, null, null, '621200', null, 'dcx', 'ZuoChangXian  ', null, '4', '748500', '宕昌县');
INSERT INTO `area_tb` VALUES ('621224', null, null, null, '1', null, null, null, '621200', null, 'kx', 'KangXian  ', null, '4', '746500', '康县');
INSERT INTO `area_tb` VALUES ('621225', null, null, null, '1', null, null, null, '621200', null, 'xhx', 'XiHeXian  ', null, '4', '742100', '西和县');
INSERT INTO `area_tb` VALUES ('621226', null, null, null, '1', null, null, null, '621200', null, 'lx', 'LiXian', null, '4', '742200', '礼县');
INSERT INTO `area_tb` VALUES ('621227', null, null, null, '1', null, null, null, '621200', null, 'hx', 'HuiXian   ', null, '4', '742300', '徽县');
INSERT INTO `area_tb` VALUES ('621228', null, null, null, '1', null, null, null, '621200', null, 'ldx', 'LiangDangXian ', null, '4', '742400', '两当县');
INSERT INTO `area_tb` VALUES ('621229', null, null, null, '1', null, null, null, '621200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('622900', null, null, null, '1', null, null, null, '620000', null, 'lxhzzzz', 'LinXiaHuiZuZiZhiZhou  ', null, '3', '', '临夏回族自治州');
INSERT INTO `area_tb` VALUES ('622901', null, null, null, '1', null, null, null, '622900', null, 'lxs', 'LinXiaShi ', null, '4', '731100', '临夏市');
INSERT INTO `area_tb` VALUES ('622921', null, null, null, '1', null, null, null, '622900', null, 'lxx', 'LinXiaXian', null, '4', '731800', '临夏县');
INSERT INTO `area_tb` VALUES ('622922', null, null, null, '1', null, null, null, '622900', null, 'klx', 'KangLeXian', null, '4', '731500', '康乐县');
INSERT INTO `area_tb` VALUES ('622923', null, null, null, '1', null, null, null, '622900', null, 'yjx', 'YongJingXian  ', null, '4', '731600', '永靖县');
INSERT INTO `area_tb` VALUES ('622924', null, null, null, '1', null, null, null, '622900', null, 'ghx', 'GuangHeXian   ', null, '4', '731300', '广河县');
INSERT INTO `area_tb` VALUES ('622925', null, null, null, '1', null, null, null, '622900', null, 'hzx', 'HeZhengXian   ', null, '4', '731200', '和政县');
INSERT INTO `area_tb` VALUES ('622926', null, null, null, '1', null, null, null, '622900', null, 'dxzzzx', 'DongXiangZuZiZhiXian  ', null, '4', '731400', '东乡族自治县');
INSERT INTO `area_tb` VALUES ('622927', null, null, null, '1', null, null, null, '622900', null, 'jssbazdxzslzzzx', 'JiShiShanBaoAnZuDongXiangZuSa ', null, '4', '731700', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `area_tb` VALUES ('622928', null, null, null, '1', null, null, null, '622900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('623000', null, null, null, '1', null, null, null, '620000', null, 'gnczzzz', 'GanNanCangZuZiZhiZhou ', null, '3', '747000', '甘南藏族自治州');
INSERT INTO `area_tb` VALUES ('623001', null, null, null, '1', null, null, null, '623000', null, 'hzs', 'HeZuoShi  ', null, '4', '747000', '合作市');
INSERT INTO `area_tb` VALUES ('623021', null, null, null, '1', null, null, null, '623000', null, 'ltx', 'LinTanXian', null, '4', '747500', '临潭县');
INSERT INTO `area_tb` VALUES ('623022', null, null, null, '1', null, null, null, '623000', null, 'znx', 'ZhuoNiXian', null, '4', '747600', '卓尼县');
INSERT INTO `area_tb` VALUES ('623023', null, null, null, '1', null, null, null, '623000', null, 'zqx', 'ZhouQuXian', null, '4', '746300', '舟曲县');
INSERT INTO `area_tb` VALUES ('623024', null, null, null, '1', null, null, null, '623000', null, 'dbx', 'DieBuXian ', null, '4', '747400', '迭部县');
INSERT INTO `area_tb` VALUES ('623025', null, null, null, '1', null, null, null, '623000', null, 'mqx', 'MaQuXian  ', null, '4', '747300', '玛曲县');
INSERT INTO `area_tb` VALUES ('623026', null, null, null, '1', null, null, null, '623000', null, 'lqx', 'LuQuXian  ', null, '4', '747200', '碌曲县');
INSERT INTO `area_tb` VALUES ('623027', null, null, null, '1', null, null, null, '623000', null, 'xhx', 'XiaHeXian ', null, '4', '747100', '夏河县');
INSERT INTO `area_tb` VALUES ('623028', null, null, null, '1', null, null, null, '623000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('630000', null, null, null, '1', null, null, null, '1', null, 'qhs', 'QingHaiSheng  ', null, '2', '', '青海省');
INSERT INTO `area_tb` VALUES ('630100', null, null, null, '1', null, null, null, '630000', null, 'xns', 'XiNingShi ', null, '3', '810000', '西宁市');
INSERT INTO `area_tb` VALUES ('630102', null, null, null, '1', null, null, null, '630100', null, 'cdq', 'ChengDongQu   ', null, '4', '810000', '城东区');
INSERT INTO `area_tb` VALUES ('630103', null, null, null, '1', null, null, null, '630100', null, 'czq', 'ChengZhongQu  ', null, '4', '810000', '城中区');
INSERT INTO `area_tb` VALUES ('630104', null, null, null, '1', null, null, null, '630100', null, 'cxq', 'ChengXiQu ', null, '4', '810001', '城西区');
INSERT INTO `area_tb` VALUES ('630105', null, null, null, '1', null, null, null, '630100', null, 'cbq', 'ChengBeiQu', null, '4', '810001', '城北区');
INSERT INTO `area_tb` VALUES ('630121', null, null, null, '1', null, null, null, '630100', null, 'dthztzzzx', 'DaTongHuiZuTuZuZiZhiXian  ', null, '4', '810100', '大通回族土族自治县');
INSERT INTO `area_tb` VALUES ('630122', null, null, null, '1', null, null, null, '630100', null, 'hzx', 'ZuoZhongXian  ', null, '4', '811600', '湟中县');
INSERT INTO `area_tb` VALUES ('630123', null, null, null, '1', null, null, null, '630100', null, 'hyx', 'ZuoYuanXian   ', null, '4', '812100', '湟源县');
INSERT INTO `area_tb` VALUES ('630124', null, null, null, '1', null, null, null, '630100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632100', null, null, null, '1', null, null, null, '630000', null, 'hddq', 'HaiDongDiQu   ', null, '3', '', '海东地区');
INSERT INTO `area_tb` VALUES ('632121', null, null, null, '1', null, null, null, '632100', null, 'pax', 'PingAnXian', null, '4', '810600', '平安县');
INSERT INTO `area_tb` VALUES ('632122', null, null, null, '1', null, null, null, '632100', null, 'mhhztzzzx', 'MinHeHuiZuTuZuZiZhiXian   ', null, '4', '810800', '民和回族土族自治县');
INSERT INTO `area_tb` VALUES ('632123', null, null, null, '1', null, null, null, '632100', null, 'ldx', 'LeDuXian  ', null, '4', '810700', '乐都县');
INSERT INTO `area_tb` VALUES ('632126', null, null, null, '1', null, null, null, '632100', null, 'hztzzzx', 'HuZhuTuZuZiZhiXian', null, '4', '810500', '互助土族自治县');
INSERT INTO `area_tb` VALUES ('632127', null, null, null, '1', null, null, null, '632100', null, 'hlhzzzx', 'HuaLongHuiZuZiZhiXian ', null, '4', '810900', '化隆回族自治县');
INSERT INTO `area_tb` VALUES ('632128', null, null, null, '1', null, null, null, '632100', null, 'xhslzzzx', 'XunHuaSaLaZuZiZhiXian ', null, '4', '811100', '循化撒拉族自治县');
INSERT INTO `area_tb` VALUES ('632129', null, null, null, '1', null, null, null, '632100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632200', null, null, null, '1', null, null, null, '630000', null, 'hbczzzz', 'HaiBeiCangZuZiZhiZhou ', null, '3', '', '海北藏族自治州');
INSERT INTO `area_tb` VALUES ('632221', null, null, null, '1', null, null, null, '632200', null, 'myhzzzx', 'MenYuanHuiZuZiZhiXian ', null, '4', '810300', '门源回族自治县');
INSERT INTO `area_tb` VALUES ('632222', null, null, null, '1', null, null, null, '632200', null, 'qlx', 'QiLianXian', null, '4', '810400', '祁连县');
INSERT INTO `area_tb` VALUES ('632223', null, null, null, '1', null, null, null, '632200', null, 'hyx', 'HaiZuoXian', null, '4', '812200', '海晏县');
INSERT INTO `area_tb` VALUES ('632224', null, null, null, '1', null, null, null, '632200', null, 'gcx', 'GangChaXian   ', null, '4', '812300', '刚察县');
INSERT INTO `area_tb` VALUES ('632225', null, null, null, '1', null, null, null, '632200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632300', null, null, null, '1', null, null, null, '630000', null, 'hnczzzz', 'HuangNanCangZuZiZhiZhou   ', null, '3', '', '黄南藏族自治州');
INSERT INTO `area_tb` VALUES ('632321', null, null, null, '1', null, null, null, '632300', null, 'trx', 'TongRenXian   ', null, '4', '811300', '同仁县');
INSERT INTO `area_tb` VALUES ('632322', null, null, null, '1', null, null, null, '632300', null, 'jzx', 'JianZhaXian   ', null, '4', '811200', '尖扎县');
INSERT INTO `area_tb` VALUES ('632323', null, null, null, '1', null, null, null, '632300', null, 'zkx', 'ZeKuXian  ', null, '4', '811400', '泽库县');
INSERT INTO `area_tb` VALUES ('632324', null, null, null, '1', null, null, null, '632300', null, 'hnmgzzzx', 'HeNanMengGuZuZiZhiXian', null, '4', '811500', '河南蒙古族自治县');
INSERT INTO `area_tb` VALUES ('632325', null, null, null, '1', null, null, null, '632300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632500', null, null, null, '1', null, null, null, '630000', null, 'hnczzzz', 'HaiNanCangZuZiZhiZhou ', null, '3', '', '海南藏族自治州');
INSERT INTO `area_tb` VALUES ('632521', null, null, null, '1', null, null, null, '632500', null, 'ghx', 'GongHeXian', null, '4', '813000', '共和县');
INSERT INTO `area_tb` VALUES ('632522', null, null, null, '1', null, null, null, '632500', null, 'tdx', 'TongDeXian', null, '4', '813200', '同德县');
INSERT INTO `area_tb` VALUES ('632523', null, null, null, '1', null, null, null, '632500', null, 'gdx', 'GuiDeXian ', null, '4', '811700', '贵德县');
INSERT INTO `area_tb` VALUES ('632524', null, null, null, '1', null, null, null, '632500', null, 'xhx', 'XingHaiXian   ', null, '4', '813300', '兴海县');
INSERT INTO `area_tb` VALUES ('632525', null, null, null, '1', null, null, null, '632500', null, 'gnx', 'GuiNanXian', null, '4', '813100', '贵南县');
INSERT INTO `area_tb` VALUES ('632526', null, null, null, '1', null, null, null, '632500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632600', null, null, null, '1', null, null, null, '630000', null, 'glczzzz', 'GuoLuoCangZuZiZhiZhou ', null, '3', '', '果洛藏族自治州');
INSERT INTO `area_tb` VALUES ('632621', null, null, null, '1', null, null, null, '632600', null, 'mqx', 'MaQinXian ', null, '4', '814000', '玛沁县');
INSERT INTO `area_tb` VALUES ('632622', null, null, null, '1', null, null, null, '632600', null, 'bmx', 'BanMaXian ', null, '4', '814300', '班玛县');
INSERT INTO `area_tb` VALUES ('632623', null, null, null, '1', null, null, null, '632600', null, 'gdx', 'GanDeXian ', null, '4', '814100', '甘德县');
INSERT INTO `area_tb` VALUES ('632624', null, null, null, '1', null, null, null, '632600', null, 'drx', 'DaRiXian  ', null, '4', '814200', '达日县');
INSERT INTO `area_tb` VALUES ('632625', null, null, null, '1', null, null, null, '632600', null, 'jzx', 'JiuZhiXian', null, '4', '624700', '久治县');
INSERT INTO `area_tb` VALUES ('632626', null, null, null, '1', null, null, null, '632600', null, 'mdx', 'MaDuoXian ', null, '4', '813500', '玛多县');
INSERT INTO `area_tb` VALUES ('632627', null, null, null, '1', null, null, null, '632600', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632700', null, null, null, '1', null, null, null, '630000', null, 'ysczzzz', 'YuShuCangZuZiZhiZhou  ', null, '3', '', '玉树藏族自治州');
INSERT INTO `area_tb` VALUES ('632721', null, null, null, '1', null, null, null, '632700', null, 'ysx', 'YuShuXian ', null, '4', '815000', '玉树县');
INSERT INTO `area_tb` VALUES ('632722', null, null, null, '1', null, null, null, '632700', null, 'zdx', 'ZaDuoXian ', null, '4', '815300', '杂多县');
INSERT INTO `area_tb` VALUES ('632723', null, null, null, '1', null, null, null, '632700', null, 'cdx', 'ChengDuoXian  ', null, '4', '815100', '称多县');
INSERT INTO `area_tb` VALUES ('632724', null, null, null, '1', null, null, null, '632700', null, 'zdx', 'ZhiDuoXian', null, '4', '815400', '治多县');
INSERT INTO `area_tb` VALUES ('632725', null, null, null, '1', null, null, null, '632700', null, 'nqx', 'NangQianXian  ', null, '4', '815200', '囊谦县');
INSERT INTO `area_tb` VALUES ('632726', null, null, null, '1', null, null, null, '632700', null, 'qmlx', 'QuMaLaiXian   ', null, '4', '815500', '曲麻莱县');
INSERT INTO `area_tb` VALUES ('632727', null, null, null, '1', null, null, null, '632700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('632800', null, null, null, '1', null, null, null, '630000', null, 'hxmgzczzzz', 'HaiXiMengGuZuCangZuZiZhiZhou  ', null, '3', '', '海西蒙古族藏族自治州');
INSERT INTO `area_tb` VALUES ('632801', null, null, null, '1', null, null, null, '632800', null, 'gems', 'GeErMuShi ', null, '4', '816000', '格尔木市');
INSERT INTO `area_tb` VALUES ('632802', null, null, null, '1', null, null, null, '632800', null, 'dlhs', 'DeLingHaShi   ', null, '4', '817000', '德令哈市');
INSERT INTO `area_tb` VALUES ('632821', null, null, null, '1', null, null, null, '632800', null, 'wlx', 'WuLanXian ', null, '4', '817100', '乌兰县');
INSERT INTO `area_tb` VALUES ('632822', null, null, null, '1', null, null, null, '632800', null, 'dlx', 'DuLanXian ', null, '4', '816100', '都兰县');
INSERT INTO `area_tb` VALUES ('632823', null, null, null, '1', null, null, null, '632800', null, 'tjx', 'TianJunXian   ', null, '4', '817200', '天峻县');
INSERT INTO `area_tb` VALUES ('632824', null, null, null, '1', null, null, null, '632800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('640000', null, null, null, '1', null, null, null, '1', null, 'nxhzzzq', 'NingXiaHuiZuZiZhiQu   ', null, '2', '', '宁夏回族自治区');
INSERT INTO `area_tb` VALUES ('640100', null, null, null, '1', null, null, null, '640000', null, 'ycs', 'YinChuanShi   ', null, '3', '750000', '银川市');
INSERT INTO `area_tb` VALUES ('640104', null, null, null, '1', null, null, null, '640100', null, 'xqq', 'XingQingQu', null, '4', '750001', '兴庆区');
INSERT INTO `area_tb` VALUES ('640105', null, null, null, '1', null, null, null, '640100', null, 'xxq', 'XiXiaQu   ', null, '4', '750027', '西夏区');
INSERT INTO `area_tb` VALUES ('640106', null, null, null, '1', null, null, null, '640100', null, 'jfq', 'JinFengQu ', null, '4', '750011', '金凤区');
INSERT INTO `area_tb` VALUES ('640121', null, null, null, '1', null, null, null, '640100', null, 'ynx', 'YongNingXian  ', null, '4', '750100', '永宁县');
INSERT INTO `area_tb` VALUES ('640122', null, null, null, '1', null, null, null, '640100', null, 'hlx', 'HeLanXian ', null, '4', '750200', '贺兰县');
INSERT INTO `area_tb` VALUES ('640181', null, null, null, '1', null, null, null, '640100', null, 'lws', 'LingWuShi ', null, '4', '751400', '灵武市');
INSERT INTO `area_tb` VALUES ('640182', null, null, null, '1', null, null, null, '640100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('640200', null, null, null, '1', null, null, null, '640000', null, 'szss', 'ShiZuiShanShi ', null, '3', '', '石嘴山市');
INSERT INTO `area_tb` VALUES ('640202', null, null, null, '1', null, null, null, '640200', null, 'dwkq', 'DaWuKouQu ', null, '4', '753000', '大武口区');
INSERT INTO `area_tb` VALUES ('640205', null, null, null, '1', null, null, null, '640200', null, 'hnq', 'HuiNongQu ', null, '4', '753200', '惠农区');
INSERT INTO `area_tb` VALUES ('640221', null, null, null, '1', null, null, null, '640200', null, 'plx', 'PingLuoXian   ', null, '4', '753400', '平罗县');
INSERT INTO `area_tb` VALUES ('640222', null, null, null, '1', null, null, null, '640200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('640300', null, null, null, '1', null, null, null, '640000', null, 'wzs', 'WuZhongShi', null, '3', '751100', '吴忠市');
INSERT INTO `area_tb` VALUES ('640302', null, null, null, '1', null, null, null, '640300', null, 'ltq', 'LiTongQu  ', null, '4', '751100', '利通区');
INSERT INTO `area_tb` VALUES ('640323', null, null, null, '1', null, null, null, '640300', null, 'ycx', 'YanChiXian', null, '4', '751500', '盐池县');
INSERT INTO `area_tb` VALUES ('640324', null, null, null, '1', null, null, null, '640300', null, 'txx', 'TongXinXian   ', null, '4', '751300', '同心县');
INSERT INTO `area_tb` VALUES ('640381', null, null, null, '1', null, null, null, '640300', null, 'qtxs', 'QingTongXiaShi', null, '4', '751600', '青铜峡市');
INSERT INTO `area_tb` VALUES ('640382', null, null, null, '1', null, null, null, '640300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('640400', null, null, null, '1', null, null, null, '640000', null, 'gys', 'GuYuanShi ', null, '3', '756000', '固原市');
INSERT INTO `area_tb` VALUES ('640402', null, null, null, '1', null, null, null, '640400', null, 'yzq', 'YuanZhouQu', null, '4', '756000', '原州区');
INSERT INTO `area_tb` VALUES ('640422', null, null, null, '1', null, null, null, '640400', null, 'xjx', 'XiJiXian  ', null, '4', '756200', '西吉县');
INSERT INTO `area_tb` VALUES ('640423', null, null, null, '1', null, null, null, '640400', null, 'ldx', 'LongDeXian', null, '4', '756300', '隆德县');
INSERT INTO `area_tb` VALUES ('640424', null, null, null, '1', null, null, null, '640400', null, 'jyx', 'ZuoYuanXian   ', null, '4', '756400', '泾源县');
INSERT INTO `area_tb` VALUES ('640425', null, null, null, '1', null, null, null, '640400', null, 'pyx', 'PengYangXian  ', null, '4', '756500', '彭阳县');
INSERT INTO `area_tb` VALUES ('640426', null, null, null, '1', null, null, null, '640400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('640500', null, null, null, '1', null, null, null, '640000', null, 'zws', 'ZhongWeiShi   ', null, '3', '', '中卫市');
INSERT INTO `area_tb` VALUES ('640502', null, null, null, '1', null, null, null, '640500', null, 'sptq', 'ShaPoTouQu', null, '4', '751700', '沙坡头区');
INSERT INTO `area_tb` VALUES ('640521', null, null, null, '1', null, null, null, '640500', null, 'znx', 'ZhongNingXian ', null, '4', '751200', '中宁县');
INSERT INTO `area_tb` VALUES ('640522', null, null, null, '1', null, null, null, '640500', null, 'hyx', 'HaiYuanXian   ', null, '4', '756100', '海原县');
INSERT INTO `area_tb` VALUES ('640523', null, null, null, '1', null, null, null, '640500', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('650000', null, null, null, '1', null, null, null, '1', null, 'xjwwezzq', 'XinJiangWeiWuErZiZhiQu', null, '2', '', '新疆维吾尔自治区');
INSERT INTO `area_tb` VALUES ('650100', null, null, null, '1', null, null, null, '650000', null, 'wlmqs', 'WuLuMuQiShi   ', null, '3', '830000', '乌鲁木齐市');
INSERT INTO `area_tb` VALUES ('650102', null, null, null, '1', null, null, null, '650100', null, 'tsq', 'TianShanQu', null, '4', '830002', '天山区');
INSERT INTO `area_tb` VALUES ('650103', null, null, null, '1', null, null, null, '650100', null, 'sybkq', 'ShaYiBaKeQu   ', null, '4', '830000', '沙依巴克区');
INSERT INTO `area_tb` VALUES ('650104', null, null, null, '1', null, null, null, '650100', null, 'xsq', 'XinShiQu  ', null, '4', '830011', '新市区');
INSERT INTO `area_tb` VALUES ('650105', null, null, null, '1', null, null, null, '650100', null, 'smgq', 'ShuiMoGouQu   ', null, '4', '830017', '水磨沟区');
INSERT INTO `area_tb` VALUES ('650106', null, null, null, '1', null, null, null, '650100', null, 'tthq', 'TouTunHeQu', null, '4', '830023', '头屯河区');
INSERT INTO `area_tb` VALUES ('650107', null, null, null, '1', null, null, null, '650100', null, 'dbcq', 'DaZuoChengQu  ', null, '4', '830039', '达坂城区');
INSERT INTO `area_tb` VALUES ('650108', null, null, null, '1', null, null, null, '650100', null, 'dsq', 'DongShanQu', null, '4', '830019', '东山区');
INSERT INTO `area_tb` VALUES ('650109', null, null, null, '1', null, null, null, '650100', null, 'mdq', 'MiDongQu  ', null, '4', '831400', '米东区');
INSERT INTO `area_tb` VALUES ('650121', null, null, null, '1', null, null, null, '650100', null, 'wlmqx', 'WuLuMuQiXian  ', null, '4', '830063', '乌鲁木齐县');
INSERT INTO `area_tb` VALUES ('650122', null, null, null, '1', null, null, null, '650100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('650200', null, null, null, '1', null, null, null, '650000', null, 'klmys', 'KeLaMaYiShi   ', null, '3', '834000', '克拉玛依市');
INSERT INTO `area_tb` VALUES ('650202', null, null, null, '1', null, null, null, '650200', null, 'dszq', 'DuShanZiQu', null, '4', '838600', '独山子区');
INSERT INTO `area_tb` VALUES ('650203', null, null, null, '1', null, null, null, '650200', null, 'klmyq', 'KeLaMaYiQu', null, '4', '834000', '克拉玛依区');
INSERT INTO `area_tb` VALUES ('650204', null, null, null, '1', null, null, null, '650200', null, 'bjtq', 'BaiJianTanQu  ', null, '4', '834009', '白碱滩区');
INSERT INTO `area_tb` VALUES ('650205', null, null, null, '1', null, null, null, '650200', null, 'wehq', 'WuErHeQu  ', null, '4', '834014', '乌尔禾区');
INSERT INTO `area_tb` VALUES ('650206', null, null, null, '1', null, null, null, '650200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('652100', null, null, null, '1', null, null, null, '650000', null, 'tlfdq', 'TuLuFanDiQu   ', null, '3', '838000', '吐鲁番地区');
INSERT INTO `area_tb` VALUES ('652101', null, null, null, '1', null, null, null, '652100', null, 'tlfs', 'TuLuFanShi', null, '4', '838000', '吐鲁番市');
INSERT INTO `area_tb` VALUES ('652122', null, null, null, '1', null, null, null, '652100', null, 'ssx', 'ZuoShanXian   ', null, '4', '838200', '鄯善县');
INSERT INTO `area_tb` VALUES ('652123', null, null, null, '1', null, null, null, '652100', null, 'tkxx', 'TuoKeXunXian  ', null, '4', '838100', '托克逊县');
INSERT INTO `area_tb` VALUES ('652124', null, null, null, '1', null, null, null, '652100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('652200', null, null, null, '1', null, null, null, '650000', null, 'hmdq', 'HaMiDiQu  ', null, '3', '839000', '哈密地区');
INSERT INTO `area_tb` VALUES ('652201', null, null, null, '1', null, null, null, '652200', null, 'hms', 'HaMiShi   ', null, '4', '839000', '哈密市');
INSERT INTO `area_tb` VALUES ('652222', null, null, null, '1', null, null, null, '652200', null, 'blkhskzzx', 'BaLiKunHaSaKeZiZhiXian', null, '4', '839200', '巴里坤哈萨克自治县');
INSERT INTO `area_tb` VALUES ('652223', null, null, null, '1', null, null, null, '652200', null, 'ywx', 'YiWuXian  ', null, '4', '839300', '伊吾县');
INSERT INTO `area_tb` VALUES ('652224', null, null, null, '1', null, null, null, '652200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('652300', null, null, null, '1', null, null, null, '650000', null, 'cjhzzzz', 'ChangJiHuiZuZiZhiZhou ', null, '3', '831100', '昌吉回族自治州');
INSERT INTO `area_tb` VALUES ('652301', null, null, null, '1', null, null, null, '652300', null, 'cjs', 'ChangJiShi', null, '4', '831100', '昌吉市');
INSERT INTO `area_tb` VALUES ('652302', null, null, null, '1', null, null, null, '652300', null, 'fks', 'FuKangShi ', null, '4', '831500', '阜康市');
INSERT INTO `area_tb` VALUES ('652303', null, null, null, '1', null, null, null, '652300', null, 'mqs', 'MiQuanShi ', null, '4', '831400', '米泉市');
INSERT INTO `area_tb` VALUES ('652323', null, null, null, '1', null, null, null, '652300', null, 'htbx', 'HuTuBiXian', null, '4', '831200', '呼图壁县');
INSERT INTO `area_tb` VALUES ('652324', null, null, null, '1', null, null, null, '652300', null, 'mnsx', 'MaNaSiXian', null, '4', '832200', '玛纳斯县');
INSERT INTO `area_tb` VALUES ('652325', null, null, null, '1', null, null, null, '652300', null, 'qtx', 'QiTaiXian ', null, '4', '831800', '奇台县');
INSERT INTO `area_tb` VALUES ('652327', null, null, null, '1', null, null, null, '652300', null, 'jmsex', 'JiMuSaErXian  ', null, '4', '831700', '吉木萨尔县');
INSERT INTO `area_tb` VALUES ('652328', null, null, null, '1', null, null, null, '652300', null, 'mlhskzzx', 'MuLeiHaSaKeZiZhiXian  ', null, '4', '831900', '木垒哈萨克自治县');
INSERT INTO `area_tb` VALUES ('652329', null, null, null, '1', null, null, null, '652300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('652700', null, null, null, '1', null, null, null, '650000', null, 'betlmgzzz', 'BoErTaLaMengGuZiZhiZhou   ', null, '3', '833400', '博尔塔拉蒙古自治州');
INSERT INTO `area_tb` VALUES ('652701', null, null, null, '1', null, null, null, '652700', null, 'bls', 'BoLeShi   ', null, '4', '833400', '博乐市');
INSERT INTO `area_tb` VALUES ('652722', null, null, null, '1', null, null, null, '652700', null, 'jhx', 'JingHeXian', null, '4', '833300', '精河县');
INSERT INTO `area_tb` VALUES ('652723', null, null, null, '1', null, null, null, '652700', null, 'wqx', 'WenQuanXian   ', null, '4', '833500', '温泉县');
INSERT INTO `area_tb` VALUES ('652724', null, null, null, '1', null, null, null, '652700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('652800', null, null, null, '1', null, null, null, '650000', null, 'byglmgzzz', 'BaYinGuoLengMengGuZiZhiZhou   ', null, '3', '841000', '巴音郭楞蒙古自治州');
INSERT INTO `area_tb` VALUES ('652801', null, null, null, '1', null, null, null, '652800', null, 'kels', 'KuErLeShi ', null, '4', '841000', '库尔勒市');
INSERT INTO `area_tb` VALUES ('652822', null, null, null, '1', null, null, null, '652800', null, 'ltx', 'LunTaiXian', null, '4', '841600', '轮台县');
INSERT INTO `area_tb` VALUES ('652823', null, null, null, '1', null, null, null, '652800', null, 'wlx', 'WeiLiXian ', null, '4', '841500', '尉犁县');
INSERT INTO `area_tb` VALUES ('652824', null, null, null, '1', null, null, null, '652800', null, 'rqx', 'RuoQiangXian  ', null, '4', '841800', '若羌县');
INSERT INTO `area_tb` VALUES ('652825', null, null, null, '1', null, null, null, '652800', null, 'qmx', 'QieMoXian ', null, '4', '841900', '且末县');
INSERT INTO `area_tb` VALUES ('652826', null, null, null, '1', null, null, null, '652800', null, 'yqhzzzx', 'YanZuoHuiZuZiZhiXian  ', null, '4', '841100', '焉耆回族自治县');
INSERT INTO `area_tb` VALUES ('652827', null, null, null, '1', null, null, null, '652800', null, 'hjx', 'HeJingXian', null, '4', '841300', '和静县');
INSERT INTO `area_tb` VALUES ('652828', null, null, null, '1', null, null, null, '652800', null, 'hsx', 'HeShuoXian', null, '4', '841200', '和硕县');
INSERT INTO `area_tb` VALUES ('652829', null, null, null, '1', null, null, null, '652800', null, 'bhx', 'BoHuXian  ', null, '4', '841400', '博湖县');
INSERT INTO `area_tb` VALUES ('652830', null, null, null, '1', null, null, null, '652800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('652900', null, null, null, '1', null, null, null, '650000', null, 'aksdq', 'AKeSuDiQu ', null, '3', '843000', '阿克苏地区');
INSERT INTO `area_tb` VALUES ('652901', null, null, null, '1', null, null, null, '652900', null, 'akss', 'AKeSuShi  ', null, '4', '843000', '阿克苏市');
INSERT INTO `area_tb` VALUES ('652922', null, null, null, '1', null, null, null, '652900', null, 'wsx', 'WenSuXian ', null, '4', '843100', '温宿县');
INSERT INTO `area_tb` VALUES ('652923', null, null, null, '1', null, null, null, '652900', null, 'kcx', 'KuCheXian ', null, '4', '842000', '库车县');
INSERT INTO `area_tb` VALUES ('652924', null, null, null, '1', null, null, null, '652900', null, 'syx', 'ShaYaXian ', null, '4', '842200', '沙雅县');
INSERT INTO `area_tb` VALUES ('652925', null, null, null, '1', null, null, null, '652900', null, 'xhx', 'XinHeXian ', null, '4', '842100', '新和县');
INSERT INTO `area_tb` VALUES ('652926', null, null, null, '1', null, null, null, '652900', null, 'bcx', 'BaiChengXian  ', null, '4', '842300', '拜城县');
INSERT INTO `area_tb` VALUES ('652927', null, null, null, '1', null, null, null, '652900', null, 'wsx', 'WuShiXian ', null, '4', '843400', '乌什县');
INSERT INTO `area_tb` VALUES ('652928', null, null, null, '1', null, null, null, '652900', null, 'awtx', 'AWaTiXian ', null, '4', '843200', '阿瓦提县');
INSERT INTO `area_tb` VALUES ('652929', null, null, null, '1', null, null, null, '652900', null, 'kpx', 'KePingXian', null, '4', '843600', '柯坪县');
INSERT INTO `area_tb` VALUES ('652930', null, null, null, '1', null, null, null, '652900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('653000', null, null, null, '1', null, null, null, '650000', null, 'kzlskekzzzz', 'KeZiLeSuKeErKeZiZiZhi ', null, '3', '845350', '克孜勒苏柯尔克孜自治州');
INSERT INTO `area_tb` VALUES ('653001', null, null, null, '1', null, null, null, '653000', null, 'atss', 'ATuShiShi ', null, '4', '845350', '阿图什市');
INSERT INTO `area_tb` VALUES ('653022', null, null, null, '1', null, null, null, '653000', null, 'aktx', 'AKeTaoXian', null, '4', '845550', '阿克陶县');
INSERT INTO `area_tb` VALUES ('653023', null, null, null, '1', null, null, null, '653000', null, 'ahqx', 'AHeQiXian ', null, '4', '843500', '阿合奇县');
INSERT INTO `area_tb` VALUES ('653024', null, null, null, '1', null, null, null, '653000', null, 'wqx', 'WuQiaXian ', null, '4', '845450', '乌恰县');
INSERT INTO `area_tb` VALUES ('653025', null, null, null, '1', null, null, null, '653000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('653100', null, null, null, '1', null, null, null, '650000', null, 'ksdq', 'KaShiDiQu ', null, '3', '844000', '喀什地区');
INSERT INTO `area_tb` VALUES ('653101', null, null, null, '1', null, null, null, '653100', null, 'kss', 'KaShiShi  ', null, '4', '844000', '喀什市');
INSERT INTO `area_tb` VALUES ('653121', null, null, null, '1', null, null, null, '653100', null, 'sfx', 'ShuFuXian ', null, '4', '844100', '疏附县');
INSERT INTO `area_tb` VALUES ('653122', null, null, null, '1', null, null, null, '653100', null, 'slx', 'ShuLeXian ', null, '4', '844200', '疏勒县');
INSERT INTO `area_tb` VALUES ('653123', null, null, null, '1', null, null, null, '653100', null, 'yjsx', 'YingJiShaXian ', null, '4', '844500', '英吉沙县');
INSERT INTO `area_tb` VALUES ('653124', null, null, null, '1', null, null, null, '653100', null, 'zpx', 'ZePuXian  ', null, '4', '844800', '泽普县');
INSERT INTO `area_tb` VALUES ('653125', null, null, null, '1', null, null, null, '653100', null, 'scx', 'ShaCheXian', null, '4', '844700', '莎车县');
INSERT INTO `area_tb` VALUES ('653126', null, null, null, '1', null, null, null, '653100', null, 'ycx', 'YeChengXian   ', null, '4', '844900', '叶城县');
INSERT INTO `area_tb` VALUES ('653127', null, null, null, '1', null, null, null, '653100', null, 'mgtx', 'MaiGaiTiXian  ', null, '4', '844600', '麦盖提县');
INSERT INTO `area_tb` VALUES ('653128', null, null, null, '1', null, null, null, '653100', null, 'yphx', 'YuePuHuXian   ', null, '4', '844400', '岳普湖县');
INSERT INTO `area_tb` VALUES ('653129', null, null, null, '1', null, null, null, '653100', null, 'qsx', 'ZuoShiXian', null, '4', '844300', '伽师县');
INSERT INTO `area_tb` VALUES ('653130', null, null, null, '1', null, null, null, '653100', null, 'bcx', 'BaChuXian ', null, '4', '843800', '巴楚县');
INSERT INTO `area_tb` VALUES ('653131', null, null, null, '1', null, null, null, '653100', null, 'tskegtjkzzx', 'TaShiKuErGanTaJiKeZiZhi   ', null, '4', '845250', '塔什库尔干塔吉克自治县');
INSERT INTO `area_tb` VALUES ('653132', null, null, null, '1', null, null, null, '653100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('653200', null, null, null, '1', null, null, null, '650000', null, 'htdq', 'HeTianDiQu', null, '3', '848000', '和田地区');
INSERT INTO `area_tb` VALUES ('653201', null, null, null, '1', null, null, null, '653200', null, 'hts', 'HeTianShi ', null, '4', '848000', '和田市');
INSERT INTO `area_tb` VALUES ('653221', null, null, null, '1', null, null, null, '653200', null, 'htx', 'HeTianXian', null, '4', '848000', '和田县');
INSERT INTO `area_tb` VALUES ('653222', null, null, null, '1', null, null, null, '653200', null, 'myx', 'MoYuXian  ', null, '4', '848100', '墨玉县');
INSERT INTO `area_tb` VALUES ('653223', null, null, null, '1', null, null, null, '653200', null, 'psx', 'PiShanXian', null, '4', '845150', '皮山县');
INSERT INTO `area_tb` VALUES ('653224', null, null, null, '1', null, null, null, '653200', null, 'lpx', 'LuoPuXian ', null, '4', '848200', '洛浦县');
INSERT INTO `area_tb` VALUES ('653225', null, null, null, '1', null, null, null, '653200', null, 'clx', 'CeLeXian  ', null, '4', '848300', '策勒县');
INSERT INTO `area_tb` VALUES ('653226', null, null, null, '1', null, null, null, '653200', null, 'ytx', 'YuTianXian', null, '4', '848400', '于田县');
INSERT INTO `area_tb` VALUES ('653227', null, null, null, '1', null, null, null, '653200', null, 'mfx', 'MinFengXian   ', null, '4', '848500', '民丰县');
INSERT INTO `area_tb` VALUES ('653228', null, null, null, '1', null, null, null, '653200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('654000', null, null, null, '1', null, null, null, '650000', null, 'ylhskzzz', 'YiLiHaSaKeZiZhiZhou   ', null, '3', '835000', '伊犁哈萨克自治州');
INSERT INTO `area_tb` VALUES ('654002', null, null, null, '1', null, null, null, '654000', null, 'yns', 'YiNingShi ', null, '4', '835000', '伊宁市');
INSERT INTO `area_tb` VALUES ('654003', null, null, null, '1', null, null, null, '654000', null, 'kts', 'KuiTunShi ', null, '4', '833200', '奎屯市');
INSERT INTO `area_tb` VALUES ('654021', null, null, null, '1', null, null, null, '654000', null, 'ynx', 'YiNingXian', null, '4', '835100', '伊宁县');
INSERT INTO `area_tb` VALUES ('654022', null, null, null, '1', null, null, null, '654000', null, 'cbcexbzzx', 'ChaBuChaErXiBoZiZhiXian   ', null, '4', '835300', '察布查尔锡伯自治县');
INSERT INTO `area_tb` VALUES ('654023', null, null, null, '1', null, null, null, '654000', null, 'hcx', 'HuoChengXian  ', null, '4', '835200', '霍城县');
INSERT INTO `area_tb` VALUES ('654024', null, null, null, '1', null, null, null, '654000', null, 'glx', 'GongLiuXian   ', null, '4', '835400', '巩留县');
INSERT INTO `area_tb` VALUES ('654025', null, null, null, '1', null, null, null, '654000', null, 'xyx', 'XinYuanXian   ', null, '4', '835800', '新源县');
INSERT INTO `area_tb` VALUES ('654026', null, null, null, '1', null, null, null, '654000', null, 'zsx', 'ZhaoSuXian', null, '4', '835600', '昭苏县');
INSERT INTO `area_tb` VALUES ('654027', null, null, null, '1', null, null, null, '654000', null, 'tksx', 'TeKeSiXian', null, '4', '835500', '特克斯县');
INSERT INTO `area_tb` VALUES ('654028', null, null, null, '1', null, null, null, '654000', null, 'nlkx', 'NiLeKeXian', null, '4', '835700', '尼勒克县');
INSERT INTO `area_tb` VALUES ('654029', null, null, null, '1', null, null, null, '654000', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('654200', null, null, null, '1', null, null, null, '650000', null, 'tcdq', 'TaChengDiQu   ', null, '3', '834700', '塔城地区');
INSERT INTO `area_tb` VALUES ('654201', null, null, null, '1', null, null, null, '654200', null, 'tcs', 'TaChengShi', null, '4', '834700', '塔城市');
INSERT INTO `area_tb` VALUES ('654202', null, null, null, '1', null, null, null, '654200', null, 'wss', 'WuSuShi   ', null, '4', '833000', '乌苏市');
INSERT INTO `area_tb` VALUES ('654221', null, null, null, '1', null, null, null, '654200', null, 'emx', 'EMinXian  ', null, '4', '834600', '额敏县');
INSERT INTO `area_tb` VALUES ('654223', null, null, null, '1', null, null, null, '654200', null, 'swx', 'ShaWanXian', null, '4', '832100', '沙湾县');
INSERT INTO `area_tb` VALUES ('654224', null, null, null, '1', null, null, null, '654200', null, 'tlx', 'TuoLiXian ', null, '4', '834500', '托里县');
INSERT INTO `area_tb` VALUES ('654225', null, null, null, '1', null, null, null, '654200', null, 'ymx', 'YuMinXian ', null, '4', '834800', '裕民县');
INSERT INTO `area_tb` VALUES ('654226', null, null, null, '1', null, null, null, '654200', null, 'hbksemgzzx', 'HeBuKeSaiErMengGuZiZhiXian', null, '4', '834400', '和布克赛尔蒙古自治县');
INSERT INTO `area_tb` VALUES ('654227', null, null, null, '1', null, null, null, '654200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('654300', null, null, null, '1', null, null, null, '650000', null, 'altdq', 'ALeTaiDiQu', null, '3', '836500', '阿勒泰地区');
INSERT INTO `area_tb` VALUES ('654301', null, null, null, '1', null, null, null, '654300', null, 'alts', 'ALeTaiShi ', null, '4', '836500', '阿勒泰市');
INSERT INTO `area_tb` VALUES ('654321', null, null, null, '1', null, null, null, '654300', null, 'bejx', 'BuErJinXian   ', null, '4', '836600', '布尔津县');
INSERT INTO `area_tb` VALUES ('654322', null, null, null, '1', null, null, null, '654300', null, 'fyx', 'FuYunXian ', null, '4', '836100', '富蕴县');
INSERT INTO `area_tb` VALUES ('654323', null, null, null, '1', null, null, null, '654300', null, 'fhx', 'FuHaiXian ', null, '4', '836400', '福海县');
INSERT INTO `area_tb` VALUES ('654324', null, null, null, '1', null, null, null, '654300', null, 'hbhx', 'HaBaHeXian', null, '4', '836700', '哈巴河县');
INSERT INTO `area_tb` VALUES ('654325', null, null, null, '1', null, null, null, '654300', null, 'qhx', 'QingHeXian', null, '4', '836200', '青河县');
INSERT INTO `area_tb` VALUES ('654326', null, null, null, '1', null, null, null, '654300', null, 'jmnx', 'JiMuNaiXian   ', null, '4', '836800', '吉木乃县');
INSERT INTO `area_tb` VALUES ('654327', null, null, null, '1', null, null, null, '654300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('659001', null, null, null, '1', null, null, null, '650000', null, 'shzs', 'ShiHeZiShi', null, '4', '832000', '石河子市');
INSERT INTO `area_tb` VALUES ('659002', null, null, null, '1', null, null, null, '650000', null, 'ales', 'ALaErShi  ', null, '4', '843300', '阿拉尔市');
INSERT INTO `area_tb` VALUES ('659003', null, null, null, '1', null, null, null, '650000', null, 'tmsks', 'TuMuShuKeShi  ', null, '4', '843806', '图木舒克市');
INSERT INTO `area_tb` VALUES ('659004', null, null, null, '1', null, null, null, '650000', null, 'wjqs', 'WuJiaQuShi', null, '4', '831300', '五家渠市');
INSERT INTO `area_tb` VALUES ('710000', null, null, null, '1', null, null, null, '1', null, 'tws', 'TaiWanSheng   ', null, '2', '', '台湾省');
INSERT INTO `area_tb` VALUES ('710100', null, null, null, '1', null, null, null, '710000', null, 'tbs', 'TaiBeiShi ', null, '3', '', '台北市');
INSERT INTO `area_tb` VALUES ('710101', null, null, null, '1', null, null, null, '710100', null, 'zzq', 'ZhongZhengQu  ', null, '4', '100', '中正区');
INSERT INTO `area_tb` VALUES ('710102', null, null, null, '1', null, null, null, '710100', null, 'dtq', 'DaTongQu  ', null, '4', '103', '大同区');
INSERT INTO `area_tb` VALUES ('710103', null, null, null, '1', null, null, null, '710100', null, 'zsq', 'ZhongShanQu   ', null, '4', '104', '中山区');
INSERT INTO `area_tb` VALUES ('710104', null, null, null, '1', null, null, null, '710100', null, 'ssq', 'SongShanQu', null, '4', '105', '松山区');
INSERT INTO `area_tb` VALUES ('710105', null, null, null, '1', null, null, null, '710100', null, 'daq', 'DaAnQu', null, '4', '106', '大安区');
INSERT INTO `area_tb` VALUES ('710106', null, null, null, '1', null, null, null, '710100', null, 'whq', 'WanHuaQu  ', null, '4', '108', '万华区');
INSERT INTO `area_tb` VALUES ('710107', null, null, null, '1', null, null, null, '710100', null, 'xyq', 'XinYiQu   ', null, '4', '110', '信义区');
INSERT INTO `area_tb` VALUES ('710108', null, null, null, '1', null, null, null, '710100', null, 'slq', 'ShiLinQu  ', null, '4', '111', '士林区');
INSERT INTO `area_tb` VALUES ('710109', null, null, null, '1', null, null, null, '710100', null, 'btq', 'BeiTouQu  ', null, '4', '112', '北投区');
INSERT INTO `area_tb` VALUES ('710110', null, null, null, '1', null, null, null, '710100', null, 'nhq', 'NeiHuQu   ', null, '4', '114', '内湖区');
INSERT INTO `area_tb` VALUES ('710111', null, null, null, '1', null, null, null, '710100', null, 'ngq', 'NanGangQu ', null, '4', '115', '南港区');
INSERT INTO `area_tb` VALUES ('710112', null, null, null, '1', null, null, null, '710100', null, 'wsq', 'WenShanQu ', null, '4', '116', '文山区');
INSERT INTO `area_tb` VALUES ('710113', null, null, null, '1', null, null, null, '710100', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('710200', null, null, null, '1', null, null, null, '710000', null, 'gxs', 'GaoXiongShi   ', null, '3', '', '高雄市');
INSERT INTO `area_tb` VALUES ('710201', null, null, null, '1', null, null, null, '710200', null, 'xxq', 'XinXingQu ', null, '4', '800', '新兴区');
INSERT INTO `area_tb` VALUES ('710202', null, null, null, '1', null, null, null, '710200', null, 'qjq', 'QianJinQu ', null, '4', '801', '前金区');
INSERT INTO `area_tb` VALUES ('710203', null, null, null, '1', null, null, null, '710200', null, 'qyq', 'ZuoYaQu   ', null, '4', '802', '芩雅区');
INSERT INTO `area_tb` VALUES ('710204', null, null, null, '1', null, null, null, '710200', null, 'ycq', 'YanZuoQu  ', null, '4', '803', '盐埕区');
INSERT INTO `area_tb` VALUES ('710205', null, null, null, '1', null, null, null, '710200', null, 'gsq', 'GuShanQu  ', null, '4', '804', '鼓山区');
INSERT INTO `area_tb` VALUES ('710206', null, null, null, '1', null, null, null, '710200', null, 'qjq', 'QiJinQu   ', null, '4', '805', '旗津区');
INSERT INTO `area_tb` VALUES ('710207', null, null, null, '1', null, null, null, '710200', null, 'qzq', 'QianZhenQu', null, '4', '806', '前镇区');
INSERT INTO `area_tb` VALUES ('710208', null, null, null, '1', null, null, null, '710200', null, 'smq', 'SanMinQu  ', null, '4', '807', '三民区');
INSERT INTO `area_tb` VALUES ('710209', null, null, null, '1', null, null, null, '710200', null, 'zyq', 'ZuoYingQu ', null, '4', '813', '左营区');
INSERT INTO `area_tb` VALUES ('710210', null, null, null, '1', null, null, null, '710200', null, 'nzq', 'ZuoZuoQu  ', null, '4', '811', '楠梓区');
INSERT INTO `area_tb` VALUES ('710211', null, null, null, '1', null, null, null, '710200', null, 'xgq', 'XiaoGangQu', null, '4', '812', '小港区');
INSERT INTO `area_tb` VALUES ('710212', null, null, null, '1', null, null, null, '710200', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('710300', null, null, null, '1', null, null, null, '710000', null, 'tns', 'TaiNanShi ', null, '3', '', '台南市');
INSERT INTO `area_tb` VALUES ('710301', null, null, null, '1', null, null, null, '710300', null, 'zxq', 'ZhongXiQu ', null, '4', '703', '中西区');
INSERT INTO `area_tb` VALUES ('710302', null, null, null, '1', null, null, null, '710300', null, 'dq', 'DongQu', null, '4', '701', '东区');
INSERT INTO `area_tb` VALUES ('710303', null, null, null, '1', null, null, null, '710300', null, 'nq', 'NanQu ', null, '4', '702', '南区');
INSERT INTO `area_tb` VALUES ('710304', null, null, null, '1', null, null, null, '710300', null, 'bq', 'BeiQu ', null, '4', '704', '北区');
INSERT INTO `area_tb` VALUES ('710305', null, null, null, '1', null, null, null, '710300', null, 'apq', 'AnPingQu  ', null, '4', '708', '安平区');
INSERT INTO `area_tb` VALUES ('710306', null, null, null, '1', null, null, null, '710300', null, 'anq', 'AnNanQu   ', null, '4', '709', '安南区');
INSERT INTO `area_tb` VALUES ('710307', null, null, null, '1', null, null, null, '710300', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('710400', null, null, null, '1', null, null, null, '710000', null, 'tzs', 'TaiZhongShi   ', null, '3', '', '台中市');
INSERT INTO `area_tb` VALUES ('710401', null, null, null, '1', null, null, null, '710400', null, 'zq', 'ZhongQu   ', null, '4', '400', '中区');
INSERT INTO `area_tb` VALUES ('710402', null, null, null, '1', null, null, null, '710400', null, 'dq', 'DongQu', null, '4', '401', '东区');
INSERT INTO `area_tb` VALUES ('710403', null, null, null, '1', null, null, null, '710400', null, 'nq', 'NanQu ', null, '4', '402', '南区');
INSERT INTO `area_tb` VALUES ('710404', null, null, null, '1', null, null, null, '710400', null, 'xq', 'XiQu  ', null, '4', '403', '西区');
INSERT INTO `area_tb` VALUES ('710405', null, null, null, '1', null, null, null, '710400', null, 'bq', 'BeiQu ', null, '4', '404', '北区');
INSERT INTO `area_tb` VALUES ('710406', null, null, null, '1', null, null, null, '710400', null, 'btq', 'BeiTunQu  ', null, '4', '406', '北屯区');
INSERT INTO `area_tb` VALUES ('710407', null, null, null, '1', null, null, null, '710400', null, 'xtq', 'XiTunQu   ', null, '4', '407', '西屯区');
INSERT INTO `area_tb` VALUES ('710408', null, null, null, '1', null, null, null, '710400', null, 'ntq', 'NanTunQu  ', null, '4', '408', '南屯区');
INSERT INTO `area_tb` VALUES ('710409', null, null, null, '1', null, null, null, '710400', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('710500', null, null, null, '1', null, null, null, '710000', null, 'jmx', 'JinMenXian', null, '3', '', '金门县');
INSERT INTO `area_tb` VALUES ('710600', null, null, null, '1', null, null, null, '710000', null, 'ntx', 'NanTouXian', null, '3', '', '南投县');
INSERT INTO `area_tb` VALUES ('710700', null, null, null, '1', null, null, null, '710000', null, 'jls', 'JiLongShi ', null, '3', '', '基隆市');
INSERT INTO `area_tb` VALUES ('710701', null, null, null, '1', null, null, null, '710700', null, 'raq', 'RenAiQu   ', null, '4', '200', '仁爱区');
INSERT INTO `area_tb` VALUES ('710702', null, null, null, '1', null, null, null, '710700', null, 'xyq', 'XinYiQu   ', null, '4', '201', '信义区');
INSERT INTO `area_tb` VALUES ('710703', null, null, null, '1', null, null, null, '710700', null, 'zzq', 'ZhongZhengQu  ', null, '4', '202', '中正区');
INSERT INTO `area_tb` VALUES ('710704', null, null, null, '1', null, null, null, '710700', null, 'zsq', 'ZhongShanQu   ', null, '4', '203', '中山区');
INSERT INTO `area_tb` VALUES ('710705', null, null, null, '1', null, null, null, '710700', null, 'alq', 'AnLeQu', null, '4', '204', '安乐区');
INSERT INTO `area_tb` VALUES ('710706', null, null, null, '1', null, null, null, '710700', null, 'nnq', 'NuanNuanQu', null, '4', '205', '暖暖区');
INSERT INTO `area_tb` VALUES ('710707', null, null, null, '1', null, null, null, '710700', null, 'qdq', 'QiDuQu', null, '4', '206', '七堵区');
INSERT INTO `area_tb` VALUES ('710708', null, null, null, '1', null, null, null, '710700', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('710800', null, null, null, '1', null, null, null, '710000', null, 'xzs', 'XinZhuShi ', null, '3', '', '新竹市');
INSERT INTO `area_tb` VALUES ('710801', null, null, null, '1', null, null, null, '710800', null, 'dq', 'DongQu', null, '4', '', '东区');
INSERT INTO `area_tb` VALUES ('710802', null, null, null, '1', null, null, null, '710800', null, 'bq', 'BeiQu ', null, '4', '', '北区');
INSERT INTO `area_tb` VALUES ('710803', null, null, null, '1', null, null, null, '710800', null, 'xsq', 'XiangShanQu   ', null, '4', '', '香山区');
INSERT INTO `area_tb` VALUES ('710804', null, null, null, '1', null, null, null, '710800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('710900', null, null, null, '1', null, null, null, '710000', null, 'jys', 'JiaYiShi  ', null, '3', '', '嘉义市');
INSERT INTO `area_tb` VALUES ('710901', null, null, null, '1', null, null, null, '710900', null, 'dq', 'DongQu', null, '4', '', '东区');
INSERT INTO `area_tb` VALUES ('710902', null, null, null, '1', null, null, null, '710900', null, 'xq', 'XiQu  ', null, '4', '', '西区');
INSERT INTO `area_tb` VALUES ('710903', null, null, null, '1', null, null, null, '710900', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('711100', null, null, null, '1', null, null, null, '710000', null, 'tbx', 'TaiBeiXian', null, '4', '', '台北县');
INSERT INTO `area_tb` VALUES ('711200', null, null, null, '1', null, null, null, '710000', null, 'ylx', 'YiLanXian ', null, '4', '', '宜兰县');
INSERT INTO `area_tb` VALUES ('711300', null, null, null, '1', null, null, null, '710000', null, 'xzx', 'XinZhuXian', null, '4', '', '新竹县');
INSERT INTO `area_tb` VALUES ('711400', null, null, null, '1', null, null, null, '710000', null, 'tyx', 'TaoYuanXian   ', null, '4', '', '桃园县');
INSERT INTO `area_tb` VALUES ('711500', null, null, null, '1', null, null, null, '710000', null, 'mlx', 'MiaoLiXian', null, '4', '', '苗栗县');
INSERT INTO `area_tb` VALUES ('711600', null, null, null, '1', null, null, null, '710000', null, 'tzx', 'TaiZhongXian  ', null, '4', '', '台中县');
INSERT INTO `area_tb` VALUES ('711700', null, null, null, '1', null, null, null, '710000', null, 'zhx', 'ZhangHuaXian  ', null, '4', '', '彰化县');
INSERT INTO `area_tb` VALUES ('711900', null, null, null, '1', null, null, null, '710000', null, 'jyx', 'JiaYiXian ', null, '4', '', '嘉义县');
INSERT INTO `area_tb` VALUES ('712100', null, null, null, '1', null, null, null, '710000', null, 'ylx', 'YunLinXian', null, '4', '', '云林县');
INSERT INTO `area_tb` VALUES ('712200', null, null, null, '1', null, null, null, '710000', null, 'tnx', 'TaiNanXian', null, '4', '', '台南县');
INSERT INTO `area_tb` VALUES ('712300', null, null, null, '1', null, null, null, '710000', null, 'gxx', 'GaoXiongXian  ', null, '4', '', '高雄县');
INSERT INTO `area_tb` VALUES ('712400', null, null, null, '1', null, null, null, '710000', null, 'pdx', 'PingDongXian  ', null, '4', '', '屏东县');
INSERT INTO `area_tb` VALUES ('712500', null, null, null, '1', null, null, null, '710000', null, 'tdx', 'TaiDongXian   ', null, '4', '', '台东县');
INSERT INTO `area_tb` VALUES ('712600', null, null, null, '1', null, null, null, '710000', null, 'hlx', 'HuaLianXian   ', null, '4', '', '花莲县');
INSERT INTO `area_tb` VALUES ('712700', null, null, null, '1', null, null, null, '710000', null, 'phx', 'PengHuXian', null, '4', '', '澎湖县');
INSERT INTO `area_tb` VALUES ('810000', null, null, null, '1', null, null, null, '1', null, 'xgtbxzq', 'XiangGangTeBieXingZhengQu ', null, '2', '999077', '香港特别行政区');
INSERT INTO `area_tb` VALUES ('810100', null, null, null, '1', null, null, null, '810000', null, 'xgd', 'XiangGangDao  ', null, '3', '999077', '香港岛');
INSERT INTO `area_tb` VALUES ('810200', null, null, null, '1', null, null, null, '810000', null, 'jl', 'JiuLong   ', null, '3', '', '九龙');
INSERT INTO `area_tb` VALUES ('810300', null, null, null, '1', null, null, null, '810000', null, 'xj', 'XinJie', null, '3', '', '新界');
INSERT INTO `area_tb` VALUES ('820000', null, null, null, '1', null, null, null, '1', null, 'amtbxzq', 'AoMenTeBieXingZhengQu ', null, '2', '', '澳门特别行政区');
INSERT INTO `area_tb` VALUES ('820100', null, null, null, '1', null, null, null, '820000', null, 'ambd', 'AoMenBanDao   ', null, '3', '', '澳门半岛');
INSERT INTO `area_tb` VALUES ('820200', null, null, null, '1', null, null, null, '820000', null, 'ld', 'LiDao ', null, '3', '', '离岛');
INSERT INTO `area_tb` VALUES ('990000', null, null, null, '1', null, null, null, '1', null, 'hw', 'HaiWai', null, '2', '', '海外');
INSERT INTO `area_tb` VALUES ('990100', null, null, null, '1', null, null, null, '990000', null, 'hw', 'HaiWai', null, '3', '', '海外');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国别码表';

-- ----------------------------
-- Records of country_code_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of goods_attachment_tb
-- ----------------------------

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

-- ----------------------------
-- Records of goods_brand_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电商商品信息表';

-- ----------------------------
-- Records of goods_info_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尺寸参数表';

-- ----------------------------
-- Records of goods_measurement_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='价格表';

-- ----------------------------
-- Records of goods_normal_price_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='包装参数表';

-- ----------------------------
-- Records of goods_package_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='价格表记录表';

-- ----------------------------
-- Records of goods_price_record_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产地参数表';

-- ----------------------------
-- Records of goods_product_area_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性维护表';

-- ----------------------------
-- Records of goods_property_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性值维护表';

-- ----------------------------
-- Records of goods_property_value_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品上下架表';

-- ----------------------------
-- Records of goods_putaway_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品销售属性表';

-- ----------------------------
-- Records of goods_sale_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务方式表';

-- ----------------------------
-- Records of goods_service_mode_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议价格表';

-- ----------------------------
-- Records of goods_suggest_price_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商参数表';

-- ----------------------------
-- Records of goods_supplier_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品主表';

-- ----------------------------
-- Records of goods_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位表';

-- ----------------------------
-- Records of goods_unit_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存地表';

-- ----------------------------
-- Records of stock_ground_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库明细表';

-- ----------------------------
-- Records of stock_in_detail_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库主表';

-- ----------------------------
-- Records of stock_in_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存修改记录表';

-- ----------------------------
-- Records of stock_modify_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存表';

-- ----------------------------
-- Records of stock_tb
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺库存地中间表';

-- ----------------------------
-- Records of store_stock_ground_tb
-- ----------------------------

-- ----------------------------
-- Table structure for system_authority_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_authority_tb`;
CREATE TABLE `system_authority_tb` (
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='商户权限表';

-- ----------------------------
-- Records of system_authority_tb
-- ----------------------------
INSERT INTO `system_authority_tb` VALUES ('1', '系统管理', '', '2017-08-03 18:05:26', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-desktop', '');
INSERT INTO `system_authority_tb` VALUES ('2', '基础数据管理', '', '2017-08-03 18:33:49', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', ' icon-cogs', '');
INSERT INTO `system_authority_tb` VALUES ('3', '商品管理', '', '2017-08-03 18:33:27', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', ' icon-gift', '');
INSERT INTO `system_authority_tb` VALUES ('4', '采购管理', '', '2017-08-03 18:30:17', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', ' icon-credit-card', '');
INSERT INTO `system_authority_tb` VALUES ('5', '销售管理', '', '2017-08-03 18:36:31', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-dashboard', '');
INSERT INTO `system_authority_tb` VALUES ('6', '库存管理', '', '2017-08-03 18:31:51', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-comments-alt', '');
INSERT INTO `system_authority_tb` VALUES ('7', '报表统计', '', '2017-08-03 18:30:44', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-bar-chart', '');
INSERT INTO `system_authority_tb` VALUES ('10', '用户管理', '/invoicing/system/user/list', '2017-08-03 14:56:18', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('11', '角色管理', '/invoicing/system/role/list', '2017-08-04 11:14:08', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('12', '菜单管理', '/invoicing/system/authority/list', '2017-08-04 11:07:09', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('13', '权限管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('14', '权限管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('20', '单位管理', '', '2017-08-03 14:33:48', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '2', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('21', '供应商管理', '', '2017-08-03 14:33:48', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '2', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('22', '品牌管理', '', '2017-08-03 14:33:52', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '2', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('30', '分类管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('31', '商品管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('32', '价格管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('33', '属性管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('40', '进货订单管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('41', '退货订单管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('50', '收银管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '5', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('51', '畅销品管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '5', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('60', '库存管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '6', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('61', '报损管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '6', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('70', '销售额统计', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '7', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('71', '畅销品统计', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '7', 'true', 'menu', 'icon_retail', '');

-- ----------------------------
-- Table structure for system_role_authority_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_role_authority_tb`;
CREATE TABLE `system_role_authority_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '商户角色id',
  `auth_id` bigint(20) DEFAULT NULL COMMENT '商户权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色权限中间表';

-- ----------------------------
-- Records of system_role_authority_tb
-- ----------------------------
INSERT INTO `system_role_authority_tb` VALUES ('1', '1', '1');
INSERT INTO `system_role_authority_tb` VALUES ('2', '1', '2');
INSERT INTO `system_role_authority_tb` VALUES ('3', '1', '3');
INSERT INTO `system_role_authority_tb` VALUES ('4', '1', '4');
INSERT INTO `system_role_authority_tb` VALUES ('5', '1', '5');
INSERT INTO `system_role_authority_tb` VALUES ('6', '1', '6');
INSERT INTO `system_role_authority_tb` VALUES ('7', '1', '7');
INSERT INTO `system_role_authority_tb` VALUES ('8', '1', '10');
INSERT INTO `system_role_authority_tb` VALUES ('9', '1', '11');
INSERT INTO `system_role_authority_tb` VALUES ('10', '1', '12');
INSERT INTO `system_role_authority_tb` VALUES ('11', '1', '13');
INSERT INTO `system_role_authority_tb` VALUES ('12', '1', '14');
INSERT INTO `system_role_authority_tb` VALUES ('14', '1', '20');
INSERT INTO `system_role_authority_tb` VALUES ('15', '1', '21');
INSERT INTO `system_role_authority_tb` VALUES ('16', '1', '22');
INSERT INTO `system_role_authority_tb` VALUES ('18', '1', '30');
INSERT INTO `system_role_authority_tb` VALUES ('19', '1', '31');
INSERT INTO `system_role_authority_tb` VALUES ('20', '1', '32');
INSERT INTO `system_role_authority_tb` VALUES ('21', '1', '33');
INSERT INTO `system_role_authority_tb` VALUES ('23', '1', '40');
INSERT INTO `system_role_authority_tb` VALUES ('24', '1', '41');
INSERT INTO `system_role_authority_tb` VALUES ('26', '1', '51');
INSERT INTO `system_role_authority_tb` VALUES ('27', '1', '50');
INSERT INTO `system_role_authority_tb` VALUES ('29', '1', '60');
INSERT INTO `system_role_authority_tb` VALUES ('30', '1', '61');
INSERT INTO `system_role_authority_tb` VALUES ('32', '1', '70');
INSERT INTO `system_role_authority_tb` VALUES ('33', '1', '71');
INSERT INTO `system_role_authority_tb` VALUES ('34', '5', '4');
INSERT INTO `system_role_authority_tb` VALUES ('35', '5', '40');
INSERT INTO `system_role_authority_tb` VALUES ('36', '5', '41');

-- ----------------------------
-- Table structure for system_role_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_role_tb`;
CREATE TABLE `system_role_tb` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色表';

-- ----------------------------
-- Records of system_role_tb
-- ----------------------------
INSERT INTO `system_role_tb` VALUES ('1', '系统管理员', '系统管理员', '2017-08-04 10:47:56', '1', '1', '1', '2017-08-02 17:57:36', '1', '1', '0', '0');
INSERT INTO `system_role_tb` VALUES ('2', '超市总经理', '超市总经理', '2017-08-04 10:47:51', null, null, '1', '2017-08-04 10:47:47', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('3', '收银员', '收银员', '2017-08-04 10:48:26', null, null, '1', '2017-08-04 10:48:20', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('4', '库管员', '库管员', '2017-08-04 10:48:46', null, null, '1', '2017-08-04 10:48:46', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('5', '采购员', '采购员', '2017-08-04 10:49:22', null, null, null, '2017-08-04 10:49:22', null, null, null, null);

-- ----------------------------
-- Table structure for system_user_log_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_log_tb`;
CREATE TABLE `system_user_log_tb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merge_user_id` bigint(20) DEFAULT NULL COMMENT '商户用户id',
  `ip` varchar(50) DEFAULT NULL,
  `descrption` varchar(500) DEFAULT NULL COMMENT '动作描述',
  `valid` int(11) DEFAULT '1' COMMENT '数据是否有效，1有效，0无效',
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '事件类型：1签到  2签退  3登录  4退出',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of system_user_log_tb
-- ----------------------------

-- ----------------------------
-- Table structure for system_user_role_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_role_tb`;
CREATE TABLE `system_user_role_tb` (
  `id` int(11) DEFAULT NULL COMMENT '主键',
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色Id',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user_role_tb
-- ----------------------------
INSERT INTO `system_user_role_tb` VALUES ('1', '1', '1');
INSERT INTO `system_user_role_tb` VALUES ('1', '3', '5');

-- ----------------------------
-- Table structure for system_user_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_tb`;
CREATE TABLE `system_user_tb` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2016111700000025 DEFAULT CHARSET=utf8mb4 COMMENT='商户用户表';

-- ----------------------------
-- Records of system_user_tb
-- ----------------------------
INSERT INTO `system_user_tb` VALUES ('1', 'admin', '管理员', 'c7ec81d844fbd07b640710dc4417a1fa', '15829273203', '1', '1', '1', '2017-02-10 18:27:28', '1517021000000006', '2017-08-02 17:58:41', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('3', 'zhangqian', '张倩', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '15801366273', '1', '1', '1517021000000006', '2017-02-15 11:38:01', '1517021000000006', '2017-08-04 14:20:33', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('4', 'test3', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '', '2', '1', '1517021000000006', '2017-03-17 17:30:23', '1517021000000006', '2017-03-17 17:30:23', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('5', 'test4', '543', 'b6150d9369d7e82b3dc42d9994172a99', '', '1', '1', '1517021000000006', '2017-03-17 17:29:26', '1517021000000006', '2017-03-17 17:32:46', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('6', 'test5', 'wd', 'c7ec81d844fbd07b640710dc4417a1fa', '', '1', '1', '1', '2017-02-10 18:27:28', '1517021000000006', '2017-04-21 14:24:00', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('7', 'test6', 'wd222', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '', '0', '1', '1517021000000006', '2017-02-15 11:38:01', '1517021000000006', '2017-02-15 11:38:01', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('8', 'test7', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '', '2', '1', '1517021000000006', '2017-03-17 17:30:23', '1517021000000006', '2017-03-17 17:30:23', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('9', 'test8', '543', 'b6150d9369d7e82b3dc42d9994172a99', '', '1', '1', '1517021000000006', '2017-03-17 17:29:26', '1517021000000006', '2017-03-17 17:32:46', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('10', 'test9', 'wd', 'c7ec81d844fbd07b640710dc4417a1fa', '', '1', '1', '1', '2017-02-10 18:27:28', '1517021000000006', '2017-04-21 14:24:00', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('11', 'test10', 'wd222', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '', '0', '1', '1517021000000006', '2017-02-15 11:38:01', '1517021000000006', '2017-02-15 11:38:01', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('12', 'test11', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '', '2', '1', '1517021000000006', '2017-03-17 17:30:23', '1517021000000006', '2017-03-17 17:30:23', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('13', 'test12', '543', 'b6150d9369d7e82b3dc42d9994172a99', '', '1', '1', '1517021000000006', '2017-03-17 17:29:26', '1517021000000006', '2017-03-17 17:32:46', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
