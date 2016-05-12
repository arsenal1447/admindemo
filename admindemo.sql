/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : admindemo

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-12 18:04:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('乙级', '1', '1463045149');
INSERT INTO `auth_assignment` VALUES ('甲级', '1', '1463043134');
INSERT INTO `auth_assignment` VALUES ('角色1', '1', '1463040979');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1463039350', '1463039350');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1463039350', '1463039350');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1463039350', '1463039350');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1463039351', '1463039351');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1463039352', '1463039352');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1463039353', '1463039353');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1463039354', '1463039354');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1463039355', '1463039355');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1463039356', '1463039356');
INSERT INTO `auth_item` VALUES ('/test/*', '2', null, null, null, '1463040085', '1463040085');
INSERT INTO `auth_item` VALUES ('/test/create', '2', null, null, null, '1463042975', '1463042975');
INSERT INTO `auth_item` VALUES ('/test/delete', '2', null, null, null, '1463040085', '1463040085');
INSERT INTO `auth_item` VALUES ('/test/index', '2', null, null, null, '1463040084', '1463040084');
INSERT INTO `auth_item` VALUES ('/test/update', '2', null, null, null, '1463042975', '1463042975');
INSERT INTO `auth_item` VALUES ('/test/view', '2', null, null, null, '1463040085', '1463040085');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1463040797', '1463040797');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1463040797', '1463040797');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1463040797', '1463040797');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1463040797', '1463040797');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1463040797', '1463040797');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1463040797', '1463040797');
INSERT INTO `auth_item` VALUES ('乙级', '1', '乙级', null, null, '1463045104', '1463045104');
INSERT INTO `auth_item` VALUES ('测试管理', '2', '测试管理', null, null, '1463044965', '1463044965');
INSERT INTO `auth_item` VALUES ('用户管理', '2', '用户管理', null, null, '1463040838', '1463040838');
INSERT INTO `auth_item` VALUES ('甲级', '1', '甲级', null, null, '1463043067', '1463043067');
INSERT INTO `auth_item` VALUES ('给点权限', '2', '给点权限', null, null, '1463046735', '1463046735');
INSERT INTO `auth_item` VALUES ('角色1', '1', '角色1', null, null, '1463040922', '1463040922');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('给点权限', '/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/site/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/site/error');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/site/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/site/login');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('测试管理', '/test/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/test/*');
INSERT INTO `auth_item_child` VALUES ('测试管理', '/test/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/test/create');
INSERT INTO `auth_item_child` VALUES ('测试管理', '/test/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/test/delete');
INSERT INTO `auth_item_child` VALUES ('测试管理', '/test/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/test/index');
INSERT INTO `auth_item_child` VALUES ('测试管理', '/test/update');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/test/update');
INSERT INTO `auth_item_child` VALUES ('测试管理', '/test/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/test/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/user/*');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/user/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/user/create');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/user/create');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/user/index');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/user/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/user/update');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/user/update');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/user/view');
INSERT INTO `auth_item_child` VALUES ('给点权限', '/user/view');
INSERT INTO `auth_item_child` VALUES ('乙级', '测试管理');
INSERT INTO `auth_item_child` VALUES ('给点权限', '测试管理');
INSERT INTO `auth_item_child` VALUES ('乙级', '用户管理');
INSERT INTO `auth_item_child` VALUES ('甲级', '用户管理');
INSERT INTO `auth_item_child` VALUES ('给点权限', '用户管理');
INSERT INTO `auth_item_child` VALUES ('角色1', '用户管理');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '权限控制', null, '/user/index', '1', 0x64646464);
INSERT INTO `menu` VALUES ('2', '权限管理', null, '/admin/assignment/index', '1', null);
INSERT INTO `menu` VALUES ('3', '后台用户管理', '2', '/user/index', '2', 0x7B2269636F6E223A202266612066612D75736572222C202276697369626C65223A2066616C73657D);
INSERT INTO `menu` VALUES ('4', '测试菜单', '2', '/admin/menu/index', '2', null);
INSERT INTO `menu` VALUES ('5', '系统设置', null, '/user/index', '1', null);
INSERT INTO `menu` VALUES ('6', '菜单设置', null, '/admin/menu/index', '1', null);
INSERT INTO `menu` VALUES ('7', '用户管理', '2', '/user/index', '2', null);
INSERT INTO `menu` VALUES ('8', '测试菜单2', null, null, '1', null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '11');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zxx123', 'hymt7fn7joEI8skhxWuEsR9USZfdXMtB', '$2y$13$bgU.26z9qHxXoK.P.t0NFO7zDikDtB3JX6IOIH4NWzhKduE98VKJu', null, 'zxx123@qq.com', '10', '10', '1463030662', '1463030662');
