/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-12-20 16:24:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `manage_login`
-- ----------------------------
DROP TABLE IF EXISTS `manage_login`;
CREATE TABLE `manage_login` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `login_name` varchar(50) DEFAULT NULL COMMENT '登录名称',
  `login_password` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `real_name` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `office_id` varchar(64) DEFAULT NULL COMMENT '部门',
  `position` varchar(64) DEFAULT NULL COMMENT '职位',
  `email` varchar(200) DEFAULT NULL COMMENT '邮件',
  `phone` varchar(15) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机',
  `user_type` varchar(64) DEFAULT NULL COMMENT '用户类型',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `login_flag` char(1) DEFAULT NULL COMMENT '是否允许登录',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_login
-- ----------------------------
INSERT INTO `manage_login` VALUES ('1', 'admin', 'gnzLDuqKcGxMNKFokfhOew==', '刘维军', null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `manage_office`
-- ----------------------------
DROP TABLE IF EXISTS `manage_office`;
CREATE TABLE `manage_office` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `office_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `pid` varchar(64) DEFAULT NULL COMMENT '上级部门',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司部门';

-- ----------------------------
-- Records of manage_office
-- ----------------------------
INSERT INTO `manage_office` VALUES ('01d361bb5b5543c19cb383610c90c00f', '总裁办', '0', '总裁办', '0');
INSERT INTO `manage_office` VALUES ('2184eb2dcee34db090d5bbaf697ed5b8', '测试部门', '0', null, '0');
INSERT INTO `manage_office` VALUES ('39ce7d8dbe3f4b3c955da014a4a33123', 'IOS研发部', '6d195583e49c4b03a23f876af24137a0', null, '0');
INSERT INTO `manage_office` VALUES ('40625eef89d241aaa0b74f7d8e3af6b2', '总裁部', '01d361bb5b5543c19cb383610c90c00f', '总裁部', '0');
INSERT INTO `manage_office` VALUES ('48de587f2a784412836bb179817aea49', 'HR部门', 'de3fe1e1b75f41cfa6ffc52210d3470a', null, '0');
INSERT INTO `manage_office` VALUES ('5951acd104614faa9dda7334eb820bec', '广告销售部', 'f915bda1c326491d90548ada44a0bdc4', null, '0');
INSERT INTO `manage_office` VALUES ('6d195583e49c4b03a23f876af24137a0', '研发部门', '0', null, '0');
INSERT INTO `manage_office` VALUES ('7cd902d55f2b457ca7acf3aa8a3df0c0', '线上系统测试', '2184eb2dcee34db090d5bbaf697ed5b8', null, '0');
INSERT INTO `manage_office` VALUES ('88c2e2fdfd664f6082c99525dbd6538a', 'Android研发部', '6d195583e49c4b03a23f876af24137a0', null, '0');
INSERT INTO `manage_office` VALUES ('8bbead9bbea54702869cde6a406ae67d', '系统销售部', 'f915bda1c326491d90548ada44a0bdc4', null, '0');
INSERT INTO `manage_office` VALUES ('974cd808b86e46859067010d13f6ea96', '内部追踪系统测试', '2184eb2dcee34db090d5bbaf697ed5b8', null, '0');
INSERT INTO `manage_office` VALUES ('d0bb693aae3b41b88071366f0ee080ab', '总裁部', '01d361bb5b5543c19cb383610c90c00f', '总裁部', '1');
INSERT INTO `manage_office` VALUES ('de3fe1e1b75f41cfa6ffc52210d3470a', '行政部门', '0', null, '0');
INSERT INTO `manage_office` VALUES ('f141909f5425416e823a8711e182d6ab', '财务部', 'de3fe1e1b75f41cfa6ffc52210d3470a', null, '0');
INSERT INTO `manage_office` VALUES ('f915bda1c326491d90548ada44a0bdc4', '销售部门', '0', null, '0');
INSERT INTO `manage_office` VALUES ('fd3a74d58e7e431189e73c23dd504a46', 'WEB研发部', '6d195583e49c4b03a23f876af24137a0', null, '0');

-- ----------------------------
-- Table structure for `manage_position`
-- ----------------------------
DROP TABLE IF EXISTS `manage_position`;
CREATE TABLE `manage_position` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `position` varchar(50) DEFAULT NULL COMMENT '职位名称',
  `pid` varchar(64) DEFAULT NULL COMMENT '上级职位',
  `office_id` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门职位';

-- ----------------------------
-- Records of manage_position
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `menu_name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `url_path` varchar(200) DEFAULT NULL COMMENT '菜单路径',
  `ioc` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `pid` varchar(64) DEFAULT NULL COMMENT '上级菜单',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `sort` int(255) DEFAULT NULL COMMENT '排序',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `show_flag` char(1) DEFAULT NULL COMMENT '是否显示',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0fa93d719b39470baebab00d96a2d0fc', '产品管理', '/product', 'fa fa-suitcase', '0', '', '3', '', '1', '0');
INSERT INTO `menu` VALUES ('1', '系统设置', '', 'fa fa-gears', '0', '', '4', '系统设置', '1', '0');
INSERT INTO `menu` VALUES ('2', '用户管理', '/user', 'fa fa-user', '1', null, '1', '用户管理', '1', '0');
INSERT INTO `menu` VALUES ('3', '菜单管理', '/menu', 'fa fa-bars', '1', null, '2', '菜单管理', '1', '0');
INSERT INTO `menu` VALUES ('3cca2bfd41df4902a4f150b15a16209f', '新闻管理', '', 'fa fa-calendar-o', '0', '', '5', '', '1', '0');
INSERT INTO `menu` VALUES ('4', '用户组管理', '/userGroup', 'fa fa-users', '1', '', '3', '用户组管理', '1', '0');
INSERT INTO `menu` VALUES ('5', '部门管理', '/office', 'fa fa-university', '1', null, '4', '部门管理', '1', '0');
INSERT INTO `menu` VALUES ('6', '字典管理', '/dictionary', 'fa fa-book', '1', null, '5', '字典管理', '1', '0');
INSERT INTO `menu` VALUES ('731eca6fc36c4b6588d5c34858255ba0', '新闻管理', '', 'fa fa-calendar-o', '0', '', '6', '', '1', '1');
INSERT INTO `menu` VALUES ('7bcff0bca2c14540a3b516eb89b7b856', '公司新闻', '', 'fa fa-globe', '3cca2bfd41df4902a4f150b15a16209f', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('8', '首页', '/index', 'fa fa-home', '0', null, '1', '首页', '1', '0');
INSERT INTO `menu` VALUES ('ea85aed490e3436189cd1f973118611f', '衣服', '/product', 'fa fa-laptop', '0fa93d719b39470baebab00d96a2d0fc', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('ede902c6fa97470b8e1f946a0c4e7473', '消息管理', '', 'fa fa-comments-o', '0', '', '2', '', '1', '0');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `role_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('3123dc2436cb4eb896a84bc60ef8f93c', '产品推广', '产品推广', '0');
INSERT INTO `role` VALUES ('3c34dedb889147c787c20653904bbdbf', '产品编辑', '产品编辑', '1');
INSERT INTO `role` VALUES ('3e22131bbdd0486799dbc7240db0ce66', '测试', '', '1');
INSERT INTO `role` VALUES ('4a2c9cfca72c4d33a3f75ca9120e81a7', '项目经理', '项目经理', '0');
INSERT INTO `role` VALUES ('52363f2748e4403da5bc5b78d4fdfa07', '成为', '', '1');
INSERT INTO `role` VALUES ('cc5f37cd6f1a4da9a54810a24898ff7a', '超级管理员', '超级管理员', '0');
INSERT INTO `role` VALUES ('d06a24d42cda425bb99b904b5acc695f', '产品经理', '测试2', '1');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `role_id` varchar(64) DEFAULT NULL COMMENT '权限id',
  `menu_id` varchar(64) DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限菜单对应表';

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('0431c73db5e94b13aacc53f5f11d5c6a', '3123dc2436cb4eb896a84bc60ef8f93c', '7bcff0bca2c14540a3b516eb89b7b856');
INSERT INTO `role_menu` VALUES ('0f3daedd291348b3917e195073c00900', '3123dc2436cb4eb896a84bc60ef8f93c', '1');
INSERT INTO `role_menu` VALUES ('32a568ab09c94789b1c61f2462b2598c', '4a2c9cfca72c4d33a3f75ca9120e81a7', 'ea85aed490e3436189cd1f973118611f');
INSERT INTO `role_menu` VALUES ('3698c3fc9a1c4a808e0d8a6412055746', '4a2c9cfca72c4d33a3f75ca9120e81a7', '1');
INSERT INTO `role_menu` VALUES ('4e07049a486a4c47bfc79ead987ebef8', '4a2c9cfca72c4d33a3f75ca9120e81a7', '7bcff0bca2c14540a3b516eb89b7b856');
INSERT INTO `role_menu` VALUES ('4ecc0fb7d0cd423e9623d1a225c110c6', '3123dc2436cb4eb896a84bc60ef8f93c', '5');
INSERT INTO `role_menu` VALUES ('5ea4da7e9f1144a68bac4f09f17027e5', '3123dc2436cb4eb896a84bc60ef8f93c', 'ea85aed490e3436189cd1f973118611f');
INSERT INTO `role_menu` VALUES ('65818a1d467a485b94914e4c580905a6', '3123dc2436cb4eb896a84bc60ef8f93c', '2');
INSERT INTO `role_menu` VALUES ('66fcff56e5b44f22a864c790827fce2a', '4a2c9cfca72c4d33a3f75ca9120e81a7', '2');
INSERT INTO `role_menu` VALUES ('6f3597f6401842df98e8ee30ee240e57', '4a2c9cfca72c4d33a3f75ca9120e81a7', '4');
INSERT INTO `role_menu` VALUES ('709fcdcb41a14f9e986f5fff2cb9d0c7', '4a2c9cfca72c4d33a3f75ca9120e81a7', '0fa93d719b39470baebab00d96a2d0fc');
INSERT INTO `role_menu` VALUES ('72d9e3d83b8f4ece9f95e9514d608516', '3123dc2436cb4eb896a84bc60ef8f93c', '8');
INSERT INTO `role_menu` VALUES ('9dab2a4dec844e81ba81581ced02fbaa', '3123dc2436cb4eb896a84bc60ef8f93c', '6');
INSERT INTO `role_menu` VALUES ('9e18dc1d13a040988ea2d868a1668370', '3123dc2436cb4eb896a84bc60ef8f93c', 'ede902c6fa97470b8e1f946a0c4e7473');
INSERT INTO `role_menu` VALUES ('a912dad3fa3d47c79cd323a9b28b4110', '3123dc2436cb4eb896a84bc60ef8f93c', '3');
INSERT INTO `role_menu` VALUES ('c762ad56c10c4aea86290f6f34f8aca0', '3123dc2436cb4eb896a84bc60ef8f93c', '0fa93d719b39470baebab00d96a2d0fc');
INSERT INTO `role_menu` VALUES ('cd485cc620b2424fb33dd774a8bd5664', '4a2c9cfca72c4d33a3f75ca9120e81a7', '3cca2bfd41df4902a4f150b15a16209f');
INSERT INTO `role_menu` VALUES ('f05f8088bc6746eda530ce7375f6976c', '3123dc2436cb4eb896a84bc60ef8f93c', '3cca2bfd41df4902a4f150b15a16209f');
INSERT INTO `role_menu` VALUES ('f21c6581cf9042049f41de20a212434f', '3123dc2436cb4eb896a84bc60ef8f93c', '4');
