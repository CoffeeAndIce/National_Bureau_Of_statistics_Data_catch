/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : code_spider

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-14 19:15:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `city_code` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------

-- ----------------------------
-- Table structure for `county`
-- ----------------------------
DROP TABLE IF EXISTS `county`;
CREATE TABLE `county` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `county_name` varchar(80) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `county_code` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county
-- ----------------------------

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------

-- ----------------------------
-- Table structure for `street`
-- ----------------------------
DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `town_id` bigint(20) DEFAULT NULL COMMENT '乡镇id',
  `street_code` varchar(30) DEFAULT NULL COMMENT '统计用区划代码',
  `street_category` varchar(10) DEFAULT NULL COMMENT '城乡分类号码',
  `street_name` varchar(50) DEFAULT NULL COMMENT '(街道、居委)名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of street
-- ----------------------------

-- ----------------------------
-- Table structure for `town`
-- ----------------------------
DROP TABLE IF EXISTS `town`;
CREATE TABLE `town` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `town_name` varchar(80) DEFAULT NULL,
  `county_id` bigint(20) DEFAULT NULL,
  `town_code` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of town
-- ----------------------------
