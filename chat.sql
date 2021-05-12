/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : chat

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-05-11 18:05:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for multi_messages
-- ----------------------------
DROP TABLE IF EXISTS `multi_messages`;
CREATE TABLE `multi_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multi_messages
-- ----------------------------
INSERT INTO `multi_messages` VALUES ('1', '2', 'rsj', '22', '2021-05-11 08:45:38', '2021-05-11 08:45:38');
INSERT INTO `multi_messages` VALUES ('2', '2', 'rsj', '22', '2021-05-11 08:48:36', '2021-05-11 08:48:36');
INSERT INTO `multi_messages` VALUES ('3', '2', 'rsj', '22', '2021-05-11 08:49:11', '2021-05-11 08:49:11');
INSERT INTO `multi_messages` VALUES ('4', '2', 'rsj', '22111', '2021-05-11 08:50:26', '2021-05-11 08:50:26');
INSERT INTO `multi_messages` VALUES ('5', '2', 'rsj', '22', '2021-05-11 08:56:21', '2021-05-11 08:56:21');
INSERT INTO `multi_messages` VALUES ('6', '2', 'rsj', '22', '2021-05-11 08:56:22', '2021-05-11 08:56:22');
INSERT INTO `multi_messages` VALUES ('7', '2', 'rsj', '22', '2021-05-11 08:56:27', '2021-05-11 08:56:27');
INSERT INTO `multi_messages` VALUES ('8', '2', 'rsj', '2333', '2021-05-11 09:21:47', '2021-05-11 09:21:47');
INSERT INTO `multi_messages` VALUES ('9', '2', 'rsj', null, '2021-05-11 09:21:57', '2021-05-11 09:21:57');
INSERT INTO `multi_messages` VALUES ('10', '2', 'rsj', '你好啊', '2021-05-11 09:22:14', '2021-05-11 09:22:14');
INSERT INTO `multi_messages` VALUES ('11', '2', 'rsj', null, '2021-05-11 09:22:14', '2021-05-11 09:22:14');
INSERT INTO `multi_messages` VALUES ('12', '1', '1', '发发发', '2021-05-11 09:25:25', '2021-05-11 09:25:25');
INSERT INTO `multi_messages` VALUES ('13', '1', '1', '发发发', '2021-05-11 09:25:30', '2021-05-11 09:25:30');
INSERT INTO `multi_messages` VALUES ('14', '1', '1', 'UUu', '2021-05-11 09:26:28', '2021-05-11 09:26:28');
INSERT INTO `multi_messages` VALUES ('15', '1', '1', '333', '2021-05-11 09:27:56', '2021-05-11 09:27:56');
INSERT INTO `multi_messages` VALUES ('16', '2', 'rsj', '444', '2021-05-11 09:28:18', '2021-05-11 09:28:18');
INSERT INTO `multi_messages` VALUES ('17', '2', 'rsj', '222', '2021-05-11 09:34:01', '2021-05-11 09:34:01');
INSERT INTO `multi_messages` VALUES ('18', '2', 'rsj', '88', '2021-05-11 09:35:05', '2021-05-11 09:35:05');
INSERT INTO `multi_messages` VALUES ('19', '1', '1', '888888', '2021-05-11 09:35:35', '2021-05-11 09:35:35');
INSERT INTO `multi_messages` VALUES ('20', '1', '1', '777', '2021-05-11 09:36:08', '2021-05-11 09:36:08');
INSERT INTO `multi_messages` VALUES ('21', '2', 'rsj', '333', '2021-05-11 09:48:53', '2021-05-11 09:48:53');
INSERT INTO `multi_messages` VALUES ('22', '2', 'rsj', '333', '2021-05-11 09:48:54', '2021-05-11 09:48:54');
INSERT INTO `multi_messages` VALUES ('23', '2', 'rsj', '333[鼓掌]', '2021-05-11 09:50:03', '2021-05-11 09:50:03');
INSERT INTO `multi_messages` VALUES ('24', '2', 'rsj', '[泪]', '2021-05-11 09:50:21', '2021-05-11 09:50:21');
INSERT INTO `multi_messages` VALUES ('25', '2', 'rsj', '[哈哈]  哈哈哈', '2021-05-11 09:51:11', '2021-05-11 09:51:11');

-- ----------------------------
-- Table structure for single_messages
-- ----------------------------
DROP TABLE IF EXISTS `single_messages`;
CREATE TABLE `single_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of single_messages
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1');
INSERT INTO `users` VALUES ('2', 'rsj', '123456');
INSERT INTO `users` VALUES ('3', '阮胜军', '123456');
