/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.31.9
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : 192.168.31.9:3306
 Source Schema         : luck_biz

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 30/10/2023 10:41:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for codepay_order
-- ----------------------------
DROP TABLE IF EXISTS `codepay_order`;
CREATE TABLE `codepay_order`  (
  `pay_tag` int(11) NULL DEFAULT NULL,
  `pay_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of codepay_order
-- ----------------------------
INSERT INTO `codepay_order` VALUES (1, '1111', '111', 1000, '2023-10-24 01:35:05');

-- ----------------------------
-- Table structure for luck_product
-- ----------------------------
DROP TABLE IF EXISTS `luck_product`;
CREATE TABLE `luck_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名',
  `weight` float NULL DEFAULT 0 COMMENT '概率',
  `flag` int(11) NULL DEFAULT 1 COMMENT '是否展示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_product
-- ----------------------------
INSERT INTO `luck_product` VALUES (1, '手机', 10, 1);
INSERT INTO `luck_product` VALUES (2, '电脑', 1, 1);
INSERT INTO `luck_product` VALUES (3, '行李箱', 1, 1);

-- ----------------------------
-- Table structure for luck_user
-- ----------------------------
DROP TABLE IF EXISTS `luck_user`;
CREATE TABLE `luck_user`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `luck_num` int(11) NULL DEFAULT 0 COMMENT '可抽奖次数',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_user
-- ----------------------------
INSERT INTO `luck_user` VALUES (1, '1111', '小张', '河北', '石家庄', '新华区', '13588888888', 11);

-- ----------------------------
-- Table structure for luck_user_product
-- ----------------------------
DROP TABLE IF EXISTS `luck_user_product`;
CREATE TABLE `luck_user_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` int(11) NULL DEFAULT 0,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `exchange` int(11) NULL DEFAULT 0 COMMENT '是否兑换 0未发货  1发货了',
  `ltime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2934 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_user_product
-- ----------------------------
INSERT INTO `luck_user_product` VALUES (1, '1111', 0, NULL, 0, '2023-10-23 19:19:22');
INSERT INTO `luck_user_product` VALUES (2918, '1111', 0, '电脑', 0, '2023-10-24 01:45:44');
INSERT INTO `luck_user_product` VALUES (2919, '1111', 0, '电脑', 0, '2023-10-24 01:45:59');
INSERT INTO `luck_user_product` VALUES (2920, '1111', 0, '电脑', 0, '2023-10-24 01:46:17');
INSERT INTO `luck_user_product` VALUES (2921, '1111', 0, '手机', 0, '2023-10-24 01:47:03');
INSERT INTO `luck_user_product` VALUES (2922, '1111', 0, '行李箱', 0, '2023-10-24 01:47:30');
INSERT INTO `luck_user_product` VALUES (2923, '1111', 0, '手机', 0, '2023-10-24 01:48:03');
INSERT INTO `luck_user_product` VALUES (2924, '1111', 0, '手机', 0, '2023-10-24 01:48:17');
INSERT INTO `luck_user_product` VALUES (2925, '1111', 0, '手机', 0, '2023-10-24 01:52:06');
INSERT INTO `luck_user_product` VALUES (2926, '1111', 0, '手机', 0, '2023-10-24 01:54:05');
INSERT INTO `luck_user_product` VALUES (2927, '1111', 0, '手机', 0, '2023-10-24 01:54:15');
INSERT INTO `luck_user_product` VALUES (2928, '1111', 0, '手机', 0, '2023-10-24 01:54:54');
INSERT INTO `luck_user_product` VALUES (2929, '1111', 0, '手机', 0, '2023-10-24 01:56:02');
INSERT INTO `luck_user_product` VALUES (2930, '1111', 0, '手机', 0, '2023-10-24 01:56:12');
INSERT INTO `luck_user_product` VALUES (2931, '1111', 0, '手机', 0, '2023-10-24 01:56:22');
INSERT INTO `luck_user_product` VALUES (2932, '1111', 0, '手机', 0, '2023-10-24 01:56:34');
INSERT INTO `luck_user_product` VALUES (2933, '1111', 0, '手机', 0, '2023-10-24 01:56:47');

SET FOREIGN_KEY_CHECKS = 1;
