/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-25 16:35:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for manage_login
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
INSERT INTO `manage_login` VALUES ('1', 'admin', 'gnzLDuqKcGxMNKFokfhOew==', '刘维军', 'a10457c0df97498ca61853dc646b5842', null, null, null, null, '36c56091f4c341e0bb8479b8fa00984c', null, '0', '0');
INSERT INTO `manage_login` VALUES ('409ed915eebb4d6fbf2faf2aa7deb447', 'admin21223', 'tZxnvxlqR1gZHkL3ZnDOug==', '刘维军', 'ea35b1a0c5a34b858a1591a86a6f49c5', null, 'sdfsdfs@live.cn', '028-52175421', '15680030013', '21b760e955d24e34915371c41fe386ff', '测试账号', '1', '0');
INSERT INTO `manage_login` VALUES ('5d7d419f9f0949f0b9d4fa2a1b9ba300', 'admin1', 'gnzLDuqKcGxMNKFokfhOew==', '刘维军', '930ecadd4d7e490ead448f94cdeefd33', null, 'lwjsw2320214@live.cn', '028-52175421', '15680030013', '40a353ddd15446e8b362b515335eebbf', '测试人员', '0', '0');
INSERT INTO `manage_login` VALUES ('b2628bbfd5ad456f84a7f0366498e024', 'admin2', 'Qpf0SxOVUjUkWySXOZ16kw==', '刘维军', 'ea35b1a0c5a34b858a1591a86a6f49c5', null, 'lwjsw2320214@live.cn', '028-52175421', '15680030013', '36c56091f4c341e0bb8479b8fa00984c', '123123', '0', '1');

-- ----------------------------
-- Table structure for manage_office
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
INSERT INTO `manage_office` VALUES ('930ecadd4d7e490ead448f94cdeefd33', '行政部', '0', '行政部', '0');
INSERT INTO `manage_office` VALUES ('a10457c0df97498ca61853dc646b5842', '技术部', '0', '技术部', '0');
INSERT INTO `manage_office` VALUES ('ea35b1a0c5a34b858a1591a86a6f49c5', '销售部', '0', '销售部', '0');

-- ----------------------------
-- Table structure for manage_position
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
-- Table structure for menu
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
INSERT INTO `menu` VALUES ('1', '系统设置', '', 'fa fa-gears', '0', '', '4', '系统设置', '1', '0');
INSERT INTO `menu` VALUES ('2', '用户管理', '/user', 'fa fa-user', '1', null, '1', '用户管理', '1', '0');
INSERT INTO `menu` VALUES ('2ba601224e8e4ee8baaf503d70d49bd7', '会员管理', '/member', 'fa fa-users', '0', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('3', '菜单管理', '/menu', 'fa fa-bars', '1', null, '2', '菜单管理', '1', '0');
INSERT INTO `menu` VALUES ('4', '用户组管理', '/userGroup', 'fa fa-users', '1', '', '3', '用户组管理', '1', '0');
INSERT INTO `menu` VALUES ('5', '部门管理', '/office', 'fa fa-university', '1', null, '4', '部门管理', '1', '0');
INSERT INTO `menu` VALUES ('6', '字典管理', '/dictionary', 'fa fa-book', '1', null, '5', '字典管理', '1', '0');
INSERT INTO `menu` VALUES ('68a3a1b43e42488e913cd872795fc059', '公司新闻', '/news', 'fa fa-pencil-square', '6beb0437ac1e49b7abc4f50308d3102a', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('6beb0437ac1e49b7abc4f50308d3102a', '新闻专栏', '', 'fa fa-desktop', '0', '', '2', '', '1', '0');
INSERT INTO `menu` VALUES ('8', '首页', '/index', 'fa fa-home', '0', null, '1', '首页', '1', '0');
INSERT INTO `menu` VALUES ('91157263d9774c90aeb4f4b40d19bc35', '问题设置', '/protection', 'fa fa-certificate', '9f17e2d9de214c85b92cd25a5271bf58', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('9f17e2d9de214c85b92cd25a5271bf58', '密保问题', '', 'fa fa-book', '0', '', '3', '', '1', '0');

-- ----------------------------
-- Table structure for protection
-- ----------------------------
DROP TABLE IF EXISTS `protection`;
CREATE TABLE `protection` (
  `id` varchar(64) NOT NULL,
  `content` varchar(500) DEFAULT NULL COMMENT '问题',
  `remarks` varchar(500) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protection
-- ----------------------------
INSERT INTO `protection` VALUES ('03718ca845a94abd82bf07bfd6153eb1', '测试问题2', '测试问题2', '0');
INSERT INTO `protection` VALUES ('d54c9caf1248441d97c102dd56a09d1c', '测试问题', '测试问题', '0');
INSERT INTO `protection` VALUES ('dbc95bdea8c1443590f8bc28d6708cb2', '测试问题223', '测试问题2', '0');

-- ----------------------------
-- Table structure for role
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
INSERT INTO `role` VALUES ('21b760e955d24e34915371c41fe386ff', '财务人员', '财务人员', '0');
INSERT INTO `role` VALUES ('36c56091f4c341e0bb8479b8fa00984c', '超级管理员', '超级管理员', '0');
INSERT INTO `role` VALUES ('40a353ddd15446e8b362b515335eebbf', '产品编辑', '产品编辑', '0');

-- ----------------------------
-- Table structure for role_menu
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

-- ----------------------------
-- Table structure for user_member
-- ----------------------------
DROP TABLE IF EXISTS `user_member`;
CREATE TABLE `user_member` (
  `id` varchar(64) NOT NULL,
  `login_name` varchar(64) DEFAULT NULL,
  `login_password` varchar(64) DEFAULT NULL,
  `protection_id` varchar(64) DEFAULT NULL,
  `protection_answer` varchar(500) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_member
-- ----------------------------
INSERT INTO `user_member` VALUES ('661db1771fce4d9f8e1e6fced1b68d79', '11111', 'sLrunSedNPod/XGq25CMPw==', 'd54c9caf1248441d97c102dd56a09d1c', 'sLrunSedNPod/XGq25CMPw==', null, '0');
