/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : xx-shop

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 10/12/2021 16:14:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '分类ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '卖家ID',
  `banner_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `banner_price` double(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `banner_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  `banner_number` int(11) NULL DEFAULT NULL COMMENT '库存',
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sell_status` tinyint(4) NULL DEFAULT NULL COMMENT '是否卖出',
  `created` date NULL DEFAULT NULL,
  `updated` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 1, 1, '小米电视 4C 全新', 699.00, '人工智能系统', 3, '/assets/xximg/lunbotu3.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `banner` VALUES (2, 1, 1, 'aa', 88.00, 'aa', 3, '/assets/xximg/lunbotu3.jpg', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物车ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '卖家ID',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品ID',
  `buy_count` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `goods_price` double NULL DEFAULT NULL COMMENT '商品价格',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `用户ID`(`user_id`) USING BTREE,
  INDEX `商品ID`(`goods_id`) USING BTREE,
  CONSTRAINT `商品ID` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `用户ID` FOREIGN KEY (`user_id`) REFERENCES `xx_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 24, 1, 11, 1, 98, 'Java核心技术 卷I 基础知识（原书第11版）', '/assets/xximg/book11.jpg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `category_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '二手手机');
INSERT INTO `category` VALUES (2, '数码');
INSERT INTO `category` VALUES (3, '二手图书');
INSERT INTO `category` VALUES (4, '家用电器');
INSERT INTO `category` VALUES (5, '服装');
INSERT INTO `category` VALUES (6, '生活百货');
INSERT INTO `category` VALUES (7, '运动户外');
INSERT INTO `category` VALUES (8, '整车/车品');
INSERT INTO `category` VALUES (10, '美妆');

-- ----------------------------
-- Table structure for category_two
-- ----------------------------
DROP TABLE IF EXISTS `category_two`;
CREATE TABLE `category_two`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `two_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `主分类ID`(`category_id`) USING BTREE,
  CONSTRAINT `主分类ID` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_two
-- ----------------------------
INSERT INTO `category_two` VALUES (1, 1, 'iphone');
INSERT INTO `category_two` VALUES (2, 1, '小米');
INSERT INTO `category_two` VALUES (3, 1, '华为');
INSERT INTO `category_two` VALUES (4, 1, '魅族');
INSERT INTO `category_two` VALUES (5, 1, '一加');
INSERT INTO `category_two` VALUES (7, 1, '努比亚');
INSERT INTO `category_two` VALUES (8, 5, '女装');
INSERT INTO `category_two` VALUES (9, 5, '男装');
INSERT INTO `category_two` VALUES (10, 2, '索尼照相机');
INSERT INTO `category_two` VALUES (11, 2, '华为平板');
INSERT INTO `category_two` VALUES (12, 4, '小米电视');
INSERT INTO `category_two` VALUES (13, 4, '华为电子秤');

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '快递ID',
  `express_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `express_price` double NULL DEFAULT NULL COMMENT '快递价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of express
-- ----------------------------
INSERT INTO `express` VALUES (1, '顺丰快递', 30);
INSERT INTO `express` VALUES (2, '中通快递', 20);
INSERT INTO `express` VALUES (4, 'EMS快递', 15);
INSERT INTO `express` VALUES (5, '免运费', 0);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '分类ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '卖家ID',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price` double NULL DEFAULT NULL COMMENT '价格',
  `original_price` double NULL DEFAULT NULL COMMENT '原价格',
  `goods_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `goods_number` int(11) NULL DEFAULT NULL COMMENT '数量',
  `heat` int(11) NULL DEFAULT NULL COMMENT '热度',
  `picture1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片1',
  `picture2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片2',
  `picture3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片3',
  `picture4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片4',
  `picture5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片5',
  `jb_status` tinyint(4) NULL DEFAULT NULL COMMENT '精选1 白菜2',
  `sell_status` tinyint(4) NULL DEFAULT NULL COMMENT '售出0 还有1',
  `created` date NULL DEFAULT NULL COMMENT '上架时间',
  `updated` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `分类ID`(`category_id`) USING BTREE,
  INDEX `卖家ID`(`seller_id`) USING BTREE,
  INDEX `商品名`(`goods_name`) USING BTREE,
  CONSTRAINT `分类ID` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `卖家ID` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 1, 1, '华为 P30', 2380, 3099, '【二手95新】华为 P30 拍照游戏手机 全网通4G 双卡双待 亮黑色 8GB+128GB', 40, 80, '/assets/xximg/huawei301.jpg', '/assets/xximg/huawei302.jpg', '/assets/xximg/huawei303.jpg', '/assets/xximg/huawei304.jpg', '/assets/xximg/huawei305.jpg', 2, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (2, 1, 2, '小米9', 1899, 2999, '【二手95新】小米9 手机骁龙855水滴全面屏4800万三摄拍照游戏智能 4G全网通 双卡双待 幻彩蓝 8GB+128GB', 30, 70, '/assets/xximg/xiaomi91.png', '/assets/xximg/xiaomi92.jpg', '/assets/xximg/xiaomi93.jpg', '/assets/xximg/xiaomi94.jpg', '/assets/xximg/xiaomi95.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (3, 1, 1, '小米8 青春版', 849, 1599, '【二手9成新】小米8 青春版 手机 镜面渐变AI双摄 拍照游戏智能全面屏 4G全网通 深空灰 6GB+64GB', 20, 20, '/assets/xximg/xiaomi81.png', '/assets/xximg/xiaomi82.jpg', '/assets/xximg/xiaomi83.jpg', '/assets/xximg/xiaomi84.jpg', '/assets/xximg/xiaomi85.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (4, 1, 1, 'iPhone X ', 3599, 5299, '【二手95新】Apple iPhone X XR 苹果X 二手手机双卡双待 黑色 全网通 128G', 30, 70, '/assets/xximg/iPhoneX1.jpg', '/assets/xximg/iPhoneX2.jpg', '/assets/xximg/iPhoneX3.jpg', '/assets/xximg/iPhoneX4.jpg', '/assets/xximg/iPhoneX5.jpg', 2, 0, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (5, 1, 1, '一加7Pro', 2759, 3599, '【二手9成新】一加7Pro OnePlus 1+7pro二手安卓全面屏拍照游戏手机 骁龙855 星雾蓝 【赠WARP闪充套装】 8GB+256GB 全网通 在保', 15, 75, '/assets/xximg/1+71.jpg', '/assets/xximg/1+72.jpg', '/assets/xximg/1+73.jpg', '/assets/xximg/1+74.jpg', '/assets/xximg/1+75.jpg', 2, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (6, 1, 2, 'iPhone XR ', 3499, 4899, '【二手9成新】苹果XR 手机 Apple iPhone X xr 国行全网通 二手手机 双卡双待 珊瑚色 128G 全网通', 60, 80, '/assets/xximg/iphoneXR1.jpg', '/assets/xximg/iphoneXR2.jpg', '/assets/xximg/iphoneXR3.jpg', '/assets/xximg/iphoneXR4.jpg', '/assets/xximg/iphoneXR5.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (7, 1, 1, 'iPhone7', 1999, 3299, '【二手9成新】苹果7Plus手机 Apple iPhone7Plus 苹果7P 二手手机 磨砂黑 128G 全网通', 20, 60, '/assets/xximg/iPhone71.jpg', '/assets/xximg/iPhone72.jpg', '/assets/xximg/iPhone73.jpg', '/assets/xximg/iPhone74.jpg', '/assets/xximg/iPhone75.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (8, 4, 1, '小米电视4C', 699, 799, '人工智能系统  高清液晶屏  64位处理器  海量影视内容  立体声扬声器  1GB+4GB 内存', 5, 90, '/assets/xximg/xiaomiTV1.jpg', '/assets/xximg/xiaomiTV1.jpg', '/assets/xximg/xiaomiTV1.jpg', '/assets/xximg/xiaomiTV1.jpg', '/assets/xximg/xiaomiTV1.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (9, 2, 1, '佳能EOS 90D', 6899, 7599, '【二手99新】佳能（Canon）EOS 90D 单反相机 单反机身 EOS 90D 机身 国行在保', 2, 40, '/assets/xximg/camera1.jpg', '/assets/xximg/camera2.jpg', '/assets/xximg/camera3.jpg', '/assets/xximg/camera4.jpg', '/assets/xximg/camera5.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (10, 2, 1, '华为平板MatePad Pro', 2949, 3899, '【二手95新】华为平板MatePad Pro 10.8英寸麒麟990影音游戏办公全面屏学生平板电脑 夜阑灰 6G+128G wifi版', 3, 70, '/assets/xximg/hwPad1.jpg', '/assets/xximg/hwPad2.jpg', '/assets/xximg/hwPad2.jpg', '/assets/xximg/hwPad2.jpg', '/assets/xximg/hwPad2.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (11, 3, 1, 'Java核心技术 卷I 基础知识（原书第11版）', 98, 149, 'CoreJava第11版，Jolt大奖获奖作品，与Java编程思想、EffectiveJava、深入理解Java虚拟机堪称：Java四大名著', 50, 60, '/assets/xximg/book11.jpg', '/assets/xximg/book12.jpg', '/assets/xximg/book12.jpg', '/assets/xximg/book12.jpg', '/assets/xximg/book12.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (13, 3, 1, 'Java从入门到项目实战', 49, 99, '65小时全程视频教学，著名软件技术讲师20年Java经验集成之作，配套源代码、课件、自测题、面试题，赠Java工程师学习路线、职业规划、自我修养视频课', 50, 60, '/assets/xximg/book21.jpg', '/assets/xximg/book22.jpg', '/assets/xximg/book22.jpg', '/assets/xximg/book22.jpg', '/assets/xximg/book22.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (14, 3, 1, 'Effective Java中文版（原书第3版）', 78, 119, 'Java之父力荐；Jolt大奖作品升级；与Java核心技术、Java编程思想、深入理解Java虚拟机堪称Java四大名著。正版图书双色印刷，阅读体验更佳', 50, 60, '/assets/xximg/book31.jpg', '/assets/xximg/book32.jpg', '/assets/xximg/book32.jpg', '/assets/xximg/book32.jpg', '/assets/xximg/book32.jpg', 1, 1, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (15, 1, 1, 'aqazqzaz', 1111, 1111, '<p>dasds</p>', 11, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '2021-12-10', '2021-12-10');
INSERT INTO `goods` VALUES (16, 1, 1, 'aqazqzaz', 1111, 1111, '<p>dasds</p>', 11, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '2021-12-10', '2021-12-10');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单详情ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '卖家ID',
  `express_id` bigint(20) NULL DEFAULT NULL COMMENT '快递ID',
  `express_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `express_price` double NULL DEFAULT NULL COMMENT '快递价格',
  `goods_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buy_count` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `goods_price` double NULL DEFAULT NULL COMMENT '商品价格',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `订单ID`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162804767914639 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (159019932163231, 159019932163183, 6, 2, 4, 'EMS快递', 15, '/assets/xximg/iphoneXR1.jpg', 1, 3499, 'iPhone XR ');
INSERT INTO `order_detail` VALUES (159019934280332, 159019934280375, 6, 2, 5, '免运费', 0, '/assets/xximg/iphoneXR1.jpg', 1, 3499, 'iPhone XR ');
INSERT INTO `order_detail` VALUES (162804767914639, 162804767914231, 11, 1, 1, '顺丰快递', 30, '/assets/xximg/book11.jpg', 1, 98, 'Java核心技术 卷I 基础知识（原书第11版）');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '卖家ID',
  `seller_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖家名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `reputation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信誉程度',
  `created` date NULL DEFAULT NULL COMMENT '创建时间',
  `updated` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES (1, '闲大王', '111111', '123456@qq.com', '18959294361', '苏州', '良好', '2021-12-10', '2021-12-10');
INSERT INTO `seller` VALUES (2, '二蛋', '12412', '123456@qq.com', '18959294363', '苏州', '良好', '2021-12-10', '2021-12-10');
INSERT INTO `seller` VALUES (4, 'ZHIHUI JIN', '123123', NULL, '15370764634', '苏州', NULL, '2021-12-10', '2021-12-10');

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `express_id` bigint(20) NULL DEFAULT NULL COMMENT '快递ID',
  `order_price` double NULL DEFAULT NULL COMMENT '订单价格',
  `order_remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '1完成  2未完成',
  `created` date NULL DEFAULT NULL COMMENT '创建时间',
  `over_time` date NULL DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `用户的ID`(`user_id`) USING BTREE,
  INDEX `快递ID`(`express_id`) USING BTREE,
  CONSTRAINT `快递ID` FOREIGN KEY (`express_id`) REFERENCES `express` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `用户的ID` FOREIGN KEY (`user_id`) REFERENCES `xx_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 162804767914231 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES (159019932163183, 24, 4, 3514, NULL, 1, '2021-12-10', '2021-12-10');
INSERT INTO `shop_order` VALUES (159019934280375, 24, 5, 3499, NULL, 1, '2021-12-10', '2021-12-10');
INSERT INTO `shop_order` VALUES (162804767914231, 24, 1, 128, NULL, 2, '2021-12-10', '2021-12-10');

-- ----------------------------
-- Table structure for xx_user
-- ----------------------------
DROP TABLE IF EXISTS `xx_user`;
CREATE TABLE `xx_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `postcode` bigint(20) NULL DEFAULT NULL COMMENT '邮编',
  `created` date NULL DEFAULT NULL COMMENT '创建时间',
  `updated` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xx_user
-- ----------------------------
INSERT INTO `xx_user` VALUES (24, '张三', '123456', '张三', '123456@qq.com', '13566666666', '广东省深圳市', NULL, '2021-12-10', '2021-12-10');

SET FOREIGN_KEY_CHECKS = 1;
