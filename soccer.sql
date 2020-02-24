/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : soccer

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-02-24 22:54:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `seat_code`
-- ----------------------------
DROP TABLE IF EXISTS `seat_code`;
CREATE TABLE `seat_code` (
  `seat_id` int(50) NOT NULL,
  `seat_code` varchar(50) DEFAULT NULL,
  `row` int(50) DEFAULT NULL,
  `number` int(50) DEFAULT NULL,
  `price` int(50) DEFAULT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seat_code
-- ----------------------------

-- ----------------------------
-- Table structure for `seat_detail`
-- ----------------------------
DROP TABLE IF EXISTS `seat_detail`;
CREATE TABLE `seat_detail` (
  `seat_id_zone` int(50) NOT NULL,
  `seat_row` int(50) DEFAULT NULL,
  `seat_code` int(50) DEFAULT NULL,
  `seat_id` int(50) DEFAULT NULL,
  `seat_number` int(50) DEFAULT NULL,
  `seat_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`seat_id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seat_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `team_config`
-- ----------------------------
DROP TABLE IF EXISTS `team_config`;
CREATE TABLE `team_config` (
  `team_id` int(50) NOT NULL,
  `team_home` varchar(256) DEFAULT NULL,
  `team_away` varchar(256) DEFAULT NULL,
  `team_cup` varchar(255) DEFAULT NULL,
  `team_match` varchar(255) DEFAULT NULL,
  `team_stat` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_config
-- ----------------------------

-- ----------------------------
-- Table structure for `ticket`
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `zone_price` varchar(255) DEFAULT NULL,
  `type_price` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `user_type` int(10) NOT NULL,
  `authorize` int(10) NOT NULL,
  `token` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `zone_config`
-- ----------------------------
DROP TABLE IF EXISTS `zone_config`;
CREATE TABLE `zone_config` (
  `zone_id` int(11) NOT NULL,
  `zone_type` int(11) NOT NULL,
  `zone_config` int(11) DEFAULT NULL,
  `zone_color` varchar(255) DEFAULT NULL,
  `zone_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zone_id`,`zone_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zone_config
-- ----------------------------
