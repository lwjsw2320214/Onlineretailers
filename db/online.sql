/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-12-01 17:26:49
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
  `menu_name` varbinary(50) DEFAULT NULL COMMENT '菜单名称',
  `url_path` varchar(200) DEFAULT NULL COMMENT '菜单路径',
  `ioc` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `pid` varchar(64) DEFAULT NULL COMMENT '上级菜单',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `show_flag` char(1) DEFAULT NULL COMMENT '是否显示',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of menu
-- ----------------------------

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
