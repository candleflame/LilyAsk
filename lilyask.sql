/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : lilyask

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2016-10-11 23:23:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answerinfo
-- ----------------------------
DROP TABLE IF EXISTS `answerinfo`;
CREATE TABLE `answerinfo` (
  `pid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` date NOT NULL,
  `up` int(11) NOT NULL,
  `down` int(11) NOT NULL,
  `anonymous` tinyint(1) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category` varchar(15) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for problemlist
-- ----------------------------
DROP TABLE IF EXISTS `problemlist`;
CREATE TABLE `problemlist` (
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(15) NOT NULL,
  `uid` char(9) NOT NULL,
  `password` char(20) NOT NULL,
  `intro` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `uid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `attitude` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
