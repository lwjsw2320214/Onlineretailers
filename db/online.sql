/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-31 23:03:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `imges` varchar(200) DEFAULT NULL COMMENT '简介图片',
  `brief_introduction` varchar(500) DEFAULT NULL COMMENT '简介',
  `content` longtext COMMENT '内容',
  `news_type` int(11) DEFAULT NULL COMMENT '文章类别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remarks` varchar(200) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('47adb97e4aa0420c8cf0b48acf3e2554', '储蓄额cse', 'http://106.14.30.163:8080/gasfile/2016-12-31/45be775511644ed08ff1d0145c29f390.jpg', '储蓄额cse储蓄额cse储蓄额cse储蓄额cse', '<p>储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse储蓄额cse<br></p>', '1', '2016-12-31 19:10:36', null, '0');
INSERT INTO `article` VALUES ('7516dec6e21b46e7988601bcbe8f5036', '测试测试测试测试测试测试', 'http://106.14.30.163:8080/gasfile/2016-12-31/3ea0face5437453dbf85f4191ccb54af.jpg', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '<p>储蓄额储蓄额储蓄额储蓄额而微软微软fdwsef sefwserwe</p><p>qwerwerwerwerwaertgszdfgsdfg</p><p>储蓄额储蓄额储蓄额储蓄额而微软微软fdwsef sefwserwe</p><p>qwerwerwerwerwaertgszdfgsdfg</p><p>储蓄额储蓄额储蓄额储蓄额而微软微软fdwsef sefwserwe</p><p>qwerwerwerwerwaertgszdfgsdfg</p>', '1', '2016-12-31 00:00:00', null, '0');
INSERT INTO `article` VALUES ('e2c54942561549c4924c7c994f5e77c8', '用气须知  ', 'http://106.14.30.163:8080/gasfile/2016-12-31/a5b52564883a4870b67710e17189534d.jpg', '用气须知  用气须知  用气须知  ', '用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;<div>用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;<br></div><div><br></div><div>用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;用气须知 &nbsp;<br></div>', '2', '2016-12-31 20:03:59', null, '1');
INSERT INTO `article` VALUES ('f6fe5aae96084f30b9e759e7545bb89e', '测试2测试2测试2测试2测试2测试2', 'http://106.14.30.163:8080/gasfile/2016-12-31/071a9e48c9be4d1685662d27c88f27a7.jpg', '测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2', '<p>测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2<br></p><p><br></p><p>测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2<br></p><p>测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2<br></p>', '2', '2016-12-31 20:06:52', null, '0');

-- ----------------------------
-- Table structure for gas
-- ----------------------------
DROP TABLE IF EXISTS `gas`;
CREATE TABLE `gas` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `gas_number` varchar(64) DEFAULT NULL COMMENT '煤气表编号',
  `user_id` varchar(64) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas
-- ----------------------------
INSERT INTO `gas` VALUES ('11', '2205256356425345', '7d77f61524614ca09e03a69312b7e100', '', '0');
INSERT INTO `gas` VALUES ('222', '2', '7d77f61524614ca09e03a69312b7e100', null, '0');
INSERT INTO `gas` VALUES ('2222', '3', '7d77f61524614ca09e03a69312b7e101', null, '0');

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
INSERT INTO `manage_login` VALUES ('1', 'admin', 'gnzLDuqKcGxMNKFokfhOew==', '刘维军', 'fd3a74d58e7e431189e73c23dd504a46', null, '', '', '', 'cc5f37cd6f1a4da9a54810a24898ff7a', '', '0', '0');

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
INSERT INTO `menu` VALUES ('0fa93d719b39470baebab00d96a2d0fc', '产品管理', '/product', 'fa fa-suitcase', '0', '', '3', '', '1', '1');
INSERT INTO `menu` VALUES ('1', '系统设置', '', 'fa fa-gears', '0', '', '10', '系统设置', '1', '0');
INSERT INTO `menu` VALUES ('2', '用户管理', '/user', 'fa fa-user', '1', null, '1', '用户管理', '1', '0');
INSERT INTO `menu` VALUES ('2797953490ab4e2dbc60e6c723a43fd1', '缴费管理', '/order', 'fa fa-building-o', '0', '', '4', '', '1', '0');
INSERT INTO `menu` VALUES ('3', '菜单管理', '/menu', 'fa fa-bars', '1', null, '2', '菜单管理', '1', '0');
INSERT INTO `menu` VALUES ('3cca2bfd41df4902a4f150b15a16209f', '新闻管理', '', 'fa fa-calendar-o', '0', '', '5', '', '1', '0');
INSERT INTO `menu` VALUES ('4', '用户组管理', '/userGroup', 'fa fa-users', '1', '', '3', '用户组管理', '1', '0');
INSERT INTO `menu` VALUES ('4885d9418d614abcac26f16c57c5c57e', '价格设置', '/settingPrice', 'fa fa-pencil-square-o', '1', '', '4', '', '1', '0');
INSERT INTO `menu` VALUES ('5', '部门管理', '/office', 'fa fa-university', '1', null, '4', '部门管理', '1', '0');
INSERT INTO `menu` VALUES ('6', '字典管理', '/dictionary', 'fa fa-book', '1', null, '5', '字典管理', '1', '0');
INSERT INTO `menu` VALUES ('731eca6fc36c4b6588d5c34858255ba0', '新闻管理', '', 'fa fa-calendar-o', '0', '', '6', '', '1', '1');
INSERT INTO `menu` VALUES ('7bcff0bca2c14540a3b516eb89b7b856', '行业新闻', '/article/news', 'fa fa-globe', '3cca2bfd41df4902a4f150b15a16209f', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('8', '首页', '/index', 'fa fa-home', '0', null, '1', '首页', '1', '0');
INSERT INTO `menu` VALUES ('aeaf6f108ab74c2ebe27838c39139169', '煤气表管理', '/gas', 'fa fa-dashboard', '0', '', '3', '', '1', '0');
INSERT INTO `menu` VALUES ('ea85aed490e3436189cd1f973118611f', '衣服', '/product', 'fa fa-laptop', '0fa93d719b39470baebab00d96a2d0fc', '', '1', '', '1', '0');
INSERT INTO `menu` VALUES ('ede902c6fa97470b8e1f946a0c4e7473', '会员管理', '/member', 'fa fa-users', '0', '', '2', '', '1', '0');
INSERT INTO `menu` VALUES ('f2e5b394020d4056931fc580b61cb715', '用气须知', '/article/notice', 'fa fa-globe', '3cca2bfd41df4902a4f150b15a16209f', '', '2', '', '1', '0');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `gas_number` varchar(64) DEFAULT NULL COMMENT '燃气表编号',
  `order_number` varchar(64) DEFAULT NULL COMMENT '订单号',
  `first_scale` int(11) DEFAULT NULL COMMENT '开始度数',
  `last_scale` int(11) DEFAULT NULL COMMENT '结束度数',
  `total` int(11) DEFAULT NULL COMMENT '总用度数',
  `unit_price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `payment_amount` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `first_time` datetime DEFAULT NULL COMMENT '度数开始时间',
  `create_time` datetime DEFAULT NULL COMMENT '添加订单时间，度数结束时间',
  `payment_state` int(11) DEFAULT NULL COMMENT '支付状态',
  `payment_type` int(11) DEFAULT NULL COMMENT '支付方式',
  `payment_account` varchar(200) DEFAULT NULL COMMENT '支付账号',
  `actual_payment` decimal(2,0) DEFAULT '0' COMMENT '实际支付金额',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `remarks` varchar(500) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('111', '2205256356425345', '22052563564253451612', '123', '234', '111', '2.50', '277.50', '2016-12-14 14:57:08', '2016-12-28 14:57:13', '0', null, null, null, null, null, '0');
INSERT INTO `order` VALUES ('222', '2205256356425345', '22052563564253451611', '123', '234', '111', '2.50', '277.50', '2016-10-20 11:45:38', '2016-12-14 11:45:45', '0', null, null, null, null, null, '0');
INSERT INTO `order` VALUES ('29952d444038497087c220908d0072e8', '2205256356425345', '2205256356425345201612', '234', '5000', '4766', '2.45', '11676.70', '2016-12-28 14:57:13', '2016-12-30 13:56:49', '0', null, null, null, null, null, '0');
INSERT INTO `order` VALUES ('bbda095e862046f38ea827041c6704bb', '2205256356425346', '2205256356425346201612', '5000', '5000', '0', '2.45', '0.00', '2016-12-30 13:59:22', '2016-12-30 13:59:22', '0', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for protection
-- ----------------------------
DROP TABLE IF EXISTS `protection`;
CREATE TABLE `protection` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `content` varchar(500) DEFAULT NULL COMMENT '密保问题',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protection
-- ----------------------------

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
INSERT INTO `role` VALUES ('3123dc2436cb4eb896a84bc60ef8f93c', '产品推广', '产品推广', '0');
INSERT INTO `role` VALUES ('3c34dedb889147c787c20653904bbdbf', '产品编辑', '产品编辑', '1');
INSERT INTO `role` VALUES ('3e22131bbdd0486799dbc7240db0ce66', '测试', '', '1');
INSERT INTO `role` VALUES ('4a2c9cfca72c4d33a3f75ca9120e81a7', '项目经理', '项目经理', '0');
INSERT INTO `role` VALUES ('52363f2748e4403da5bc5b78d4fdfa07', '成为', '', '1');
INSERT INTO `role` VALUES ('cc5f37cd6f1a4da9a54810a24898ff7a', '超级管理员', '超级管理员', '0');
INSERT INTO `role` VALUES ('d06a24d42cda425bb99b904b5acc695f', '产品经理', '测试2', '1');

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

-- ----------------------------
-- Table structure for setting_price
-- ----------------------------
DROP TABLE IF EXISTS `setting_price`;
CREATE TABLE `setting_price` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `remarks` varchar(500) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting_price
-- ----------------------------
INSERT INTO `setting_price` VALUES ('96b4818ef2564106a86e1aabdbd6bc73', '2.45', '测试价格', '0');

-- ----------------------------
-- Table structure for user_member
-- ----------------------------
DROP TABLE IF EXISTS `user_member`;
CREATE TABLE `user_member` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `login_name` varchar(64) DEFAULT NULL COMMENT '登录用户名',
  `login_password` varchar(64) DEFAULT NULL COMMENT '登录密码',
  `protection_id` varchar(64) DEFAULT NULL COMMENT '找回密码问题id',
  `protection_answer` varchar(64) DEFAULT NULL COMMENT '找回密码问题答案',
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_member
-- ----------------------------
INSERT INTO `user_member` VALUES ('111', '111', 'aY1RoZ2KEhzlgUmde3AWaA==', '111', '11', '11', '1');
INSERT INTO `user_member` VALUES ('7d77f61524614ca09e03a69312b7e100', '15680030013', 'sLrunSedNPod/XGq25CMPw==', '11111', '11111', null, '0');
