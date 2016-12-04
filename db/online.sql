/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-04 23:29:32
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
INSERT INTO `manage_login` VALUES ('1', 'admin', 'gnzLDuqKcGxMNKFokfhOew==', '刘维军', null, null, null, null, null, null, null, null, null);

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
INSERT INTO `menu` VALUES ('1', '系统设置', null, 'fa fa-gears', '0', null, '2', '系统设置', '1', '0');
INSERT INTO `menu` VALUES ('2', '用户管理', '/user', 'fa fa-user', '1', null, '1', '用户管理', '1', '0');
INSERT INTO `menu` VALUES ('3', '菜单管理', '/menu', 'fa fa-bars', '1', null, '2', '菜单管理', '1', '0');
INSERT INTO `menu` VALUES ('4', '用户组管理', '/userGroup', 'fa fa-users', '1', '', '3', '用户组管理', '1', '0');
INSERT INTO `menu` VALUES ('5', '部门管理', '/office', 'fa fa-university', '1', null, '4', '部门管理', '1', '0');
INSERT INTO `menu` VALUES ('6', '字典管理', '/dictionary', 'fa fa-book', '1', null, '5', '字典管理', '1', '0');
INSERT INTO `menu` VALUES ('8', '首页', '/index', 'fa fa-home', '0', null, '1', '首页', '1', '0');

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
SET FOREIGN_KEY_CHECKS=1;
