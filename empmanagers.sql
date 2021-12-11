/*
Navicat MySQL Data Transfer

Source Server         : 毕业设计
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : empmanagers

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-04-24 21:44:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `supcompany` varchar(20) DEFAULT NULL,
  `cnet` varchar(20) NOT NULL,
  `ctelephone` varchar(20) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `type` int(2) DEFAULT NULL,
  `ctype` varchar(20) NOT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '淘宝', '马云', '阿里巴巴', 'www.taobao.com', '15689799789', '杭州', '1', '店铺管理', '0');
INSERT INTO `company` VALUES ('2', '支付宝', '马云', '蚂蚁金服', 'www.zifubao.com', '15645679874', '上海', '1', '理财产品', '0');
INSERT INTO `company` VALUES ('3', '万达影城', '王建林', '万达集团', 'www.wanda.com', '15626453965', '北京', '1', '电影院管理', '0');
INSERT INTO `company` VALUES ('4', '微信', '马化腾', '腾讯集团', 'www.weixin.com', '15689345679', '深圳', '1', '社交工具', '0');
INSERT INTO `company` VALUES ('5', 'QQ', '小马', '阿里巴巴', 'www.taobao.com', '15689799789', '深圳', '1', '社交工具、办公工具', '0');
INSERT INTO `company` VALUES ('6', '新浪微博', '曹国伟', '新浪集团', 'www.xinlang.com', '15689799789', '北京', '1', '社交工具', '0');
INSERT INTO `company` VALUES ('53', '中国核工业', '张三', '中国核工业集团公司', 'www.hegongye.com', '12345678946', '北京', '1', '研究生毕业', '0');
INSERT INTO `company` VALUES ('54', '金恒科技', '黄一新', '南京钢铁联合有限公司', 'www.nangang.com', '12345678', '江苏南京', '0', '本科毕业，精通Java开发', '0');
INSERT INTO `company` VALUES ('55', '中国电信陕西分公司', '王晓初', '中国电信集团公司', 'www.dianxin.com', '10000', '陕西西安', '0', '985,211院校毕业', '0');
INSERT INTO `company` VALUES ('56', '大唐科技', '陈进行', '中国大唐集团公司', 'www.dangtang.com', '456789134569', '上海', '0', '985,211院校毕业，研究生优先考虑', '0');
INSERT INTO `company` VALUES ('57', '东风汽车', '何光明', '东风汽车公司', 'www.kanopian.com', '12134564654', '安康', '0', '汽车智能制造', '0');
INSERT INTO `company` VALUES ('58', '中国葛洲坝集团公司', '刘硕', '中国葛洲坝集团公司', 'www.gezhouba.com', '123126456468', '眉县', '0', '全日制二批本科毕业', '0');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `did` int(10) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) NOT NULL,
  `dtype` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '人事部', '人员招募，调配', '0');
INSERT INTO `dept` VALUES ('2', '财务部', '财务管理', '0');
INSERT INTO `dept` VALUES ('3', '市场部', '市场调研', '0');
INSERT INTO `dept` VALUES ('10', '业务部', '业务处理是', '0');
INSERT INTO `dept` VALUES ('13', '战略运营部', '主要把握公司发展方向和战略', '0');
INSERT INTO `dept` VALUES ('14', '组织部', '主要负责主要、组织公司各类活动的组织', '0');
INSERT INTO `dept` VALUES ('15', '研发部', '产品研发', '0');
INSERT INTO `dept` VALUES ('16', '销售部', '负责产品营销', '0');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) NOT NULL,
  `epassword` varchar(20) NOT NULL,
  `age` date DEFAULT NULL,
  `stype` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  `ephone` varchar(20) NOT NULL,
  `sex` varchar(4) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `cid` (`cid`),
  KEY `rid` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('3', '小敏', '2341234', '2009-12-30', '会计', '23423@asa.com', '0', '0', '36546567', '男');
INSERT INTO `emp` VALUES ('4', '张三', '1243325', '1983-03-11', '人员招聘', 'qwerqw@QQ.com', '1', '1', '12134325', '男');
INSERT INTO `emp` VALUES ('5', '小敏', '2341234', '2009-12-30', 'hr', '23423@asa.com', '2', '1', '36546567', '女');
INSERT INTO `emp` VALUES ('27', '小李', 'sdgfsdg23456345', '2018-05-09', '软件开发', '', '54', '15', '4234645', '男');
INSERT INTO `emp` VALUES ('29', '小泽', 'sdfg2354', '2018-05-10', 'HR人事管理', '', '0', '0', '132496465', '男');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `createTime` date NOT NULL,
  `content` varchar(100) NOT NULL,
  `nstatus` int(2) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('3', '例会', '2020-08-08', '下午开会123', '0');
INSERT INTO `notice` VALUES ('5', '招聘开发', '2020-05-24', '1、java开发\r\n2、软件开发\r\n3、前端工程师\r\n4、liunx运维', '0');
INSERT INTO `notice` VALUES ('6', '招聘开发人员', '2020-06-01', '招聘要求：\r\n1、精通JAVA\r\n2、熟悉MySQL\r\n3、熟练使用myeclipse开发工具', '1');
INSERT INTO `notice` VALUES ('7', '活动安排', '2020-05-31', '经党委决定下月组织春游，请各部门提前安排好值班人员和参加活动人员名单', '1');
INSERT INTO `notice` VALUES ('8', '任命通知', '2020-06-08', '经董事会决定：任命刘硕同志为总经理', '1');
INSERT INTO `notice` VALUES ('9', '任命通知书', '2020-05-24', '经215五大董事决定，任命刘要山同志为215宿舍社长', '1');
INSERT INTO `notice` VALUES ('10', '处罚通知', '2020-06-07', '经党委决定，陈玉泽同志在任职期间，生活不检点，给予开除党籍，剥夺终身政治权利', '1');
INSERT INTO `notice` VALUES ('11', '招聘公告', '2020-06-03', '找平要求：\r\n1、初中文化程度\r\n2、上体健康\r\n3、无不良嗜好\r\n4、年龄在20至40之间', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upassword` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'lbj123456');
