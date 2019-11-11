/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : vfs_louyu

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 11/11/2019 10:18:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vfs_activity
-- ----------------------------
DROP TABLE IF EXISTS `vfs_activity`;
CREATE TABLE `vfs_activity`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动标题',
  `pictures` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动banner图片',
  `discription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动详情',
  `rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动规则',
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动开始时间',
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动结束时间',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动地址',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '活动发布时间',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '活动状态(0为活动中，1为截止)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_admin
-- ----------------------------
DROP TABLE IF EXISTS `vfs_admin`;
CREATE TABLE `vfs_admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员手机号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1正常',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `login_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `login_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_admin
-- ----------------------------
INSERT INTO `vfs_admin` VALUES (1, 1, 'admin', '13520425481', '0c5752ad3310cb0975ef6dd0b050ac8d', 1, 0, 1571021627, 1571021627, '');
INSERT INTO `vfs_admin` VALUES (4, 23, 'mengzhen', '15812345678', '0c5752ad3310cb0975ef6dd0b050ac8d', 1, 1568259475, 1568944302, 1568278492, '');
INSERT INTO `vfs_admin` VALUES (7, 1, 'username1', '15812345678', '123456', 1, 1568274382, 1568274382, 0, '');
INSERT INTO `vfs_admin` VALUES (8, 1, 'vfs', '17725535168', '0c5752ad3310cb0975ef6dd0b050ac8d', 1, 1568274382, 1573176294, 1573176294, '');

-- ----------------------------
-- Table structure for vfs_adv
-- ----------------------------
DROP TABLE IF EXISTS `vfs_adv`;
CREATE TABLE `vfs_adv`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `img_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `href` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_adv
-- ----------------------------
INSERT INTO `vfs_adv` VALUES (1, 1, '轮播图', '16', 'http://www.qiyezhan.com/', 0, 1, 1568600345, 1568600345);
INSERT INTO `vfs_adv` VALUES (3, 1, '轮播图', '69', 'http://www.qiyezhan.com/', 1, 1, 1569395021, 1569395021);
INSERT INTO `vfs_adv` VALUES (4, 3, '图片1', '74', 'http://www.qiyezhan.com/', 1, 1, 1569460206, 1569460206);
INSERT INTO `vfs_adv` VALUES (5, 3, '图片2', '75', 'http://www.qiyezhan.com/', 1, 1, 1569460230, 1569460230);
INSERT INTO `vfs_adv` VALUES (6, 3, '图片3', '76', 'http://www.qiyezhan.com/', 1, 1, 1569460249, 1569460249);
INSERT INTO `vfs_adv` VALUES (7, 4, '中部广告图', '77', '1', 1, 1, 1569462282, 1569462282);
INSERT INTO `vfs_adv` VALUES (8, 5, '服务领域1', '79', 'http://www.qiyezhan.com/', 0, 1, 1569653257, 1569653316);
INSERT INTO `vfs_adv` VALUES (9, 5, '服务领域2', '80', 'http://www.qiyezhan.com/', 0, 1, 1569653290, 1569653310);
INSERT INTO `vfs_adv` VALUES (10, 5, '服务领域3', '81', 'http://www.qiyezhan.com/', 0, 1, 1569653339, 1569653365);
INSERT INTO `vfs_adv` VALUES (11, 5, '服务领域4', '82', 'http://www.qiyezhan.com/', 0, 1, 1569653386, 1569653386);
INSERT INTO `vfs_adv` VALUES (12, 5, '服务领域5', '83', 'http://www.qiyezhan.com/', 0, 1, 1569653408, 1569653408);
INSERT INTO `vfs_adv` VALUES (13, 5, '服务领域6', '84', 'http://www.qiyezhan.com/', 0, 1, 1569653428, 1569653428);

-- ----------------------------
-- Table structure for vfs_adv_position
-- ----------------------------
DROP TABLE IF EXISTS `vfs_adv_position`;
CREATE TABLE `vfs_adv_position`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告位置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_adv_position
-- ----------------------------
INSERT INTO `vfs_adv_position` VALUES (1, '首页轮播图', '首页轮播图', 0, 1, 1568596877, 1568596877);
INSERT INTO `vfs_adv_position` VALUES (2, '推荐活动图', '推荐活动图', 0, 1, 1568597250, 1568597250);
INSERT INTO `vfs_adv_position` VALUES (3, '关于我们图片', '关于我们图片', 0, 1, 1569460165, 1569460165);
INSERT INTO `vfs_adv_position` VALUES (4, '中部广告图', '中部广告图', 0, 1, 1569462239, 1569462239);
INSERT INTO `vfs_adv_position` VALUES (5, '服务领域', '服务领域宣传图', 0, 1, 1569653185, 1569653185);

-- ----------------------------
-- Table structure for vfs_area
-- ----------------------------
DROP TABLE IF EXISTS `vfs_area`;
CREATE TABLE `vfs_area`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '区域ID',
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域名称',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域负责人',
  `author_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域负责人电话',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级区域ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_article
-- ----------------------------
DROP TABLE IF EXISTS `vfs_article`;
CREATE TABLE `vfs_article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `view_number` int(11) NOT NULL DEFAULT 0 COMMENT '阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_article
-- ----------------------------
INSERT INTO `vfs_article` VALUES (1, 1, '行政处理', '', '行政处理', '<p>行政处理</p>', 0, 1, 1569637470, 1569637470, 0);
INSERT INTO `vfs_article` VALUES (2, 1, '行政复议', '', '行政复议', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">行政复议</span></p>', 0, 1, 1569637504, 1569637504, 0);
INSERT INTO `vfs_article` VALUES (3, 1, 'OA答复', '', 'OA答复', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">OA答复</span></p>', 0, 1, 1569637525, 1569637525, 0);
INSERT INTO `vfs_article` VALUES (4, 1, '复审代理', '', '复审代理', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">复审代理</span></p>', 0, 1, 1569637541, 1569637541, 0);
INSERT INTO `vfs_article` VALUES (5, 1, '专利检索', '', '专利检索', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">专利检索</span></p>', 0, 1, 1569637561, 1569637561, 0);
INSERT INTO `vfs_article` VALUES (6, 1, '无效代理', '', '无效代理', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">无效代理</span></p>', 0, 1, 1569637593, 1569637593, 0);
INSERT INTO `vfs_article` VALUES (7, 1, '侵权分析', '', '侵权分析', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">侵权分析</span></p>', 0, 1, 1569637618, 1569637618, 0);
INSERT INTO `vfs_article` VALUES (8, 1, '申请代理', '', '申请代理', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">申请代理</span></p>', 0, 1, 1569637641, 1569637641, 0);
INSERT INTO `vfs_article` VALUES (9, 1, '专利诉讼', '', '专利诉讼', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">专利诉讼</span></p>', 0, 1, 1569637665, 1569637665, 0);
INSERT INTO `vfs_article` VALUES (10, 2, '商标注册', '', '商标注册业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标注册业务</span></p>', 0, 1, 1569637718, 1569637718, 0);
INSERT INTO `vfs_article` VALUES (11, 2, '商标变更', '', '商标变更业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标变更业务</span></p>', 0, 1, 1569637752, 1569637752, 0);
INSERT INTO `vfs_article` VALUES (12, 2, '商标续展', '', '商标续展业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标续展业务</span></p>', 0, 1, 1569637770, 1569637770, 0);
INSERT INTO `vfs_article` VALUES (13, 2, '商标驳回复审', '', '商标驳回复审', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标驳回复审</span></p>', 0, 1, 1569637791, 1569637791, 0);
INSERT INTO `vfs_article` VALUES (14, 2, '商标无效', '', '商标无效业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标无效业务</span></p>', 0, 1, 1569637814, 1569637814, 0);
INSERT INTO `vfs_article` VALUES (15, 2, '商标答辩', '', '商标答辩业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标答辩业务</span></p>', 0, 1, 1569637828, 1569637828, 0);
INSERT INTO `vfs_article` VALUES (16, 2, '商标异议', '', '商标异议业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标异议业务</span></p>', 0, 1, 1569637852, 1569637852, 0);
INSERT INTO `vfs_article` VALUES (17, 2, '商标转让', '', '商标转让业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标转让业务</span></p>', 0, 1, 1569637869, 1569637869, 0);
INSERT INTO `vfs_article` VALUES (18, 2, '商标许可', '', '商标许可业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标许可业务</span></p>', 0, 1, 1569637884, 1569637884, 0);
INSERT INTO `vfs_article` VALUES (19, 2, '商标异议复审', '', '商标异议复审', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标异议复审</span></p>', 0, 1, 1569637902, 1569637902, 0);
INSERT INTO `vfs_article` VALUES (20, 2, '商标撤销', '', '商标撤销业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标撤销业务</span></p>', 0, 1, 1569637921, 1569637921, 0);
INSERT INTO `vfs_article` VALUES (21, 3, '文学作品', '', '文学作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">文学作品</span></p>', 0, 1, 1569637999, 1569637999, 0);
INSERT INTO `vfs_article` VALUES (22, 3, '摄影作品', '', '摄影作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">摄影作品</span></p>', 0, 1, 1569638015, 1569638015, 0);
INSERT INTO `vfs_article` VALUES (23, 3, '口述作品', '', '口述作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">口述作品</span></p>', 0, 1, 1569638032, 1569638032, 0);
INSERT INTO `vfs_article` VALUES (24, 3, '美术作品', '', '美术作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">美术作品</span></p>', 0, 1, 1569638125, 1569638125, 0);
INSERT INTO `vfs_article` VALUES (25, 3, '电影作品', '', '电影作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">电影作品</span></p>', 0, 1, 1569638193, 1569638193, 0);
INSERT INTO `vfs_article` VALUES (26, 3, '类似电影', '', '类似电影', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">类似电影</span></p>', 0, 1, 1569638206, 1569638206, 0);
INSERT INTO `vfs_article` VALUES (27, 6, '高新技术企业认定', '', '高新技术企业认定', '<h1>高新技术企业认定</h1><p><br/></p>', 0, 1, 1569638384, 1569638384, 0);
INSERT INTO `vfs_article` VALUES (28, 6, '专利无效', '', '专利无效', '<p>专利无效</p>', 0, 1, 1569650597, 1569650597, 0);

-- ----------------------------
-- Table structure for vfs_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `vfs_article_cate`;
CREATE TABLE `vfs_article_cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1图片, 2文章',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_article_cate
-- ----------------------------
INSERT INTO `vfs_article_cate` VALUES (1, 0, 0, '专利', '', 4, 1, 1569637331, 1569638660);
INSERT INTO `vfs_article_cate` VALUES (2, 0, 0, '商标', '', 3, 1, 1569637338, 1569638666);
INSERT INTO `vfs_article_cate` VALUES (3, 0, 0, '版权', '', 2, 1, 1569637354, 1569638672);
INSERT INTO `vfs_article_cate` VALUES (6, 0, 0, '其他业务', '', 1, 1, 1569637419, 1569638684);

-- ----------------------------
-- Table structure for vfs_excel
-- ----------------------------
DROP TABLE IF EXISTS `vfs_excel`;
CREATE TABLE `vfs_excel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号',
  `status` int(1) NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'excel导入' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_excel
-- ----------------------------
INSERT INTO `vfs_excel` VALUES (19, 1, '永生', '17633333333', 1, 1569290473, 1569290473);
INSERT INTO `vfs_excel` VALUES (30, 2, '小凡', '18333333333', 1, 1569396743, 1569396743);
INSERT INTO `vfs_excel` VALUES (29, 1, '永生', '17633333333', 1, 1569396743, 1569396743);
INSERT INTO `vfs_excel` VALUES (27, 1, '永生', '17633333333', 1, 1569292630, 1569292630);
INSERT INTO `vfs_excel` VALUES (28, 2, '小凡', '18333333333', 1, 1569292630, 1569292630);

-- ----------------------------
-- Table structure for vfs_family
-- ----------------------------
DROP TABLE IF EXISTS `vfs_family`;
CREATE TABLE `vfs_family`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '家庭ID',
  `u_id` int(11) UNSIGNED NOT NULL COMMENT '户主ID',
  `family_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭成员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_vill_id`(`u_id`) USING BTREE COMMENT '户主ID唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台家庭表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_feedback
-- ----------------------------
DROP TABLE IF EXISTS `vfs_feedback`;
CREATE TABLE `vfs_feedback`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `truename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言内容',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1已读',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_feedback
-- ----------------------------
INSERT INTO `vfs_feedback` VALUES (1, '17633333333', '小凡', '888888@.com', '哈哈哈', 1, 1567752925, 1568774103);
INSERT INTO `vfs_feedback` VALUES (2, '18333333333', 'boy', '666666@.com', '哈哈哈', 1, 1567792925, 1568778779);

-- ----------------------------
-- Table structure for vfs_gro
-- ----------------------------
DROP TABLE IF EXISTS `vfs_gro`;
CREATE TABLE `vfs_gro`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '村组ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '村组名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_fam_id`(`name`) USING BTREE COMMENT '家庭ID唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_gro_fam
-- ----------------------------
DROP TABLE IF EXISTS `vfs_gro_fam`;
CREATE TABLE `vfs_gro_fam`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '关联ID（村组家庭关系）',
  `gro_id` int(11) UNSIGNED NOT NULL COMMENT '村组ID',
  `fam_id` int(11) UNSIGNED NOT NULL COMMENT '家庭ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_fam_id`(`fam_id`) USING BTREE COMMENT '家庭唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村组家庭关系表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vfs_house
-- ----------------------------
DROP TABLE IF EXISTS `vfs_house`;
CREATE TABLE `vfs_house`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '房子ID',
  `man_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '建筑ID',
  `area_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '房子所属区域ID',
  `number` int(30) UNSIGNED NOT NULL COMMENT '昂子编号',
  `hou_owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房主名称',
  `hou_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房主电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间表or房子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_house_detail
-- ----------------------------
DROP TABLE IF EXISTS `vfs_house_detail`;
CREATE TABLE `vfs_house_detail`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '房子详情ID',
  `hou_id` int(11) UNSIGNED NOT NULL COMMENT '昂子ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房子名称',
  `square` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面积',
  `structure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房间结构（如一室一厅）',
  `rental` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '租金',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间详情描述',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租约信息',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间详情',
  `setting` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋配置（例：0，1，3，5）',
  `hou_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租房电话',
  `hou_per` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出租人姓名（可以为空，空代表房主本人）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_house_source
-- ----------------------------
DROP TABLE IF EXISTS `vfs_house_source`;
CREATE TABLE `vfs_house_source`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `hd_id` int(11) UNSIGNED NOT NULL COMMENT '房源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房源管理（官方房源or住宅信息）' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vfs_job
-- ----------------------------
DROP TABLE IF EXISTS `vfs_job`;
CREATE TABLE `vfs_job`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '职位名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1显示2不显示',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_job
-- ----------------------------
INSERT INTO `vfs_job` VALUES (6, '招聘1', '发送到发送到', '<p>发生的的方式是否对方水电费第三方撒大声地发的说说</p>', 1, 1569202461);
INSERT INTO `vfs_job` VALUES (7, '水电费发送到', '顺丰到付胜多负少', '<p>更好软件工具库太快了妖精可可发给你的GV</p>', 1, 1569202481);

-- ----------------------------
-- Table structure for vfs_link
-- ----------------------------
DROP TABLE IF EXISTS `vfs_link`;
CREATE TABLE `vfs_link`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `href` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_link
-- ----------------------------
INSERT INTO `vfs_link` VALUES (1, 0, '比克汽车', '70', 'http://vw.faw-vw.com/', 0, 1, 1569395467, 1569395467);
INSERT INTO `vfs_link` VALUES (2, 0, '百度', '90', 'https://www.baidu.com', 0, 1, 1569395645, 1569662248);
INSERT INTO `vfs_link` VALUES (3, 0, '郑州日产', '91', 'http://www.qiyezhan.com/', 0, 1, 1569664041, 1569664041);

-- ----------------------------
-- Table structure for vfs_mansion
-- ----------------------------
DROP TABLE IF EXISTS `vfs_mansion`;
CREATE TABLE `vfs_mansion`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '建筑ID',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建筑名称',
  `area_id` int(20) UNSIGNED NULL DEFAULT NULL COMMENT '大楼所属大区',
  `storey_nums` int(2) UNSIGNED NULL DEFAULT NULL COMMENT '楼层数',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '建筑表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_menu
-- ----------------------------
DROP TABLE IF EXISTS `vfs_menu`;
CREATE TABLE `vfs_menu`  (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `href` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `target` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `pid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_menu
-- ----------------------------
INSERT INTO `vfs_menu` VALUES (1, '关于智盈', 'http://love.ainqs.com', '关于智盈', '描述', '', 10, 1, 0);
INSERT INTO `vfs_menu` VALUES (2, '新闻资讯', 'http://love.ainqs.com', '新闻资讯', '新闻资讯', '', 9, 1, 0);
INSERT INTO `vfs_menu` VALUES (3, '业务领域', 'http://love.ainqs.com', '业务领域', '业务领域', '', 8, 1, 0);
INSERT INTO `vfs_menu` VALUES (4, '经典案例', 'http://love.ainqs.com', '经典案例', '经典案例', '', 7, 1, 0);
INSERT INTO `vfs_menu` VALUES (5, '知识产权交易', 'http://love.ainqs.com', '经典案例', '', '', 6, 1, 0);
INSERT INTO `vfs_menu` VALUES (6, '关于我们', 'http://love.ainqs.com', '关于我们', '描述', '', 1, 1, 1);

-- ----------------------------
-- Table structure for vfs_menu_content
-- ----------------------------
DROP TABLE IF EXISTS `vfs_menu_content`;
CREATE TABLE `vfs_menu_content`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_menu_content
-- ----------------------------
INSERT INTO `vfs_menu_content` VALUES (1, 6, '关于我们', '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><img src=\"/ueditor/php/upload/image/20190925/1569394421.jpg\" title=\"1569394421.jpg\" alt=\"aadf66ddb8d12e2216e62b4e660c3ba.jpg\"/><img src=\"/ueditor/php/upload/image/20190925/1569394425.jpg\" title=\"1569394425.jpg\" alt=\"aadf66ddb8d12e2216e62b4e660c3ba.jpg\"/></p>', '1', 1569394026, '67');
INSERT INTO `vfs_menu_content` VALUES (2, 6, '关于我们2', '简介简介简介简介简介简介简介简介简介', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span></p><p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\"><img src=\"/ueditor/php/upload/image/20190925/1569394331.jpg\" title=\"1569394331.jpg\" alt=\"aadf66ddb8d12e2216e62b4e660c3ba.jpg\"/></span></p>', '1', 1569394148, '68');

-- ----------------------------
-- Table structure for vfs_merchants_info
-- ----------------------------
DROP TABLE IF EXISTS `vfs_merchants_info`;
CREATE TABLE `vfs_merchants_info`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息ID',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '招商品牌',
  `pictures` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招商banner图片',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '招商电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商谈地址',
  `brand_synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌简介',
  `brand_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌描述',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招商信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_news
-- ----------------------------
DROP TABLE IF EXISTS `vfs_news`;
CREATE TABLE `vfs_news`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `view_number` int(11) NOT NULL DEFAULT 0 COMMENT '阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '新闻表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_news
-- ----------------------------
INSERT INTO `vfs_news` VALUES (1, 3, '标题', '72', '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介', '<p>打撒所多大撒</p>', 1, 1, 1569402092, 1569402275, 0);
INSERT INTO `vfs_news` VALUES (2, 3, '标题', '73', '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介', '<p>谁发的发生的的双方各</p>', 1, 1, 1569402298, 1569402298, 0);

-- ----------------------------
-- Table structure for vfs_news_cate
-- ----------------------------
DROP TABLE IF EXISTS `vfs_news_cate`;
CREATE TABLE `vfs_news_cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图标',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '新闻分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_news_cate
-- ----------------------------
INSERT INTO `vfs_news_cate` VALUES (1, 0, '智盈新闻', '', 1, 1, 1569400658, 1569400658);
INSERT INTO `vfs_news_cate` VALUES (2, 0, '行业动态', '', 2, 1, 1569400732, 1569400732);
INSERT INTO `vfs_news_cate` VALUES (3, 0, '政策咨询', '', 3, 1, 1569400753, 1569400753);
INSERT INTO `vfs_news_cate` VALUES (4, 0, '测试分类', '', 1, 1, 1569401856, 1569401856);

-- ----------------------------
-- Table structure for vfs_node
-- ----------------------------
DROP TABLE IF EXISTS `vfs_node`;
CREATE TABLE `vfs_node`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '位置',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `alias` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '别名',
  `icon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `params` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台权限节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_node
-- ----------------------------
INSERT INTO `vfs_node` VALUES (1, 'top', 0, '系统设置', 'topSystem', '', 'admin', '', '', '', 5, 1);
INSERT INTO `vfs_node` VALUES (2, 'top', 0, '内容管理', 'topContent', '', 'admin', '', '', '', 4, 1);
INSERT INTO `vfs_node` VALUES (3, 'top', 0, '产品中心', 'topProduct', '', 'admin', '', '', '', 3, 1);
INSERT INTO `vfs_node` VALUES (4, 'top', 0, '新闻中心', 'topNews', '', 'admin', '', '', '', 2, 1);
INSERT INTO `vfs_node` VALUES (5, 'top', 0, '招贤纳士', 'topEmploy', '', 'admin', '', '', '', 1, 1);
INSERT INTO `vfs_node` VALUES (6, 'left', 1, '网站设置', '', '', 'admin', 'sys_config', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (7, 'left', 1, '网站文章', '', '', 'admin', 'sys_article', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (8, 'left', 1, '角色列表', '', '', 'admin', 'role', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (9, 'left', 1, '管理员列表', '', '', 'admin', 'admin', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (11, 'left', 2, '广告列表', '', '', 'admin', 'adv', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (12, 'left', 2, '广告位列表', '', '', 'admin', 'advPosition', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (13, 'left', 2, '友情链接', '', '', 'admin', 'link', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (14, 'left', 2, '导航列表', '', '', 'admin', 'menu', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (15, 'left', 2, '反馈列表', '', '', 'admin', 'feedback', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (16, 'left', 3, '产品分类列表', '', '', 'admin', 'product_cate', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (17, 'left', 3, '产品列表', '', '', 'admin', 'product', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (18, 'left', 4, '新闻分类列表11', '', '', 'admin', 'news_cate', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (19, 'left', 4, '新闻列表', '', '', 'admin', 'news', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (21, 'left', 5, '招聘职位', '', '', 'admin', 'job', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (22, 'left', 2, '图文分类', '', '', 'admin', 'article_cate', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (23, 'left', 2, '图文列表', '', '', 'admin', 'article', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (24, 'top', 0, '公众号管理', '', '', '', '', '', '', 0, 1);
INSERT INTO `vfs_node` VALUES (25, 'left', 24, '自定义菜单', '', '', 'admin', 'wechat_menu', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (26, 'left', 24, '公众号设置', '', '', 'admin', 'wechat', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (27, 'left', 1, 'excel导入', '', '', 'admin', 'excel', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (28, 'top', 0, '导航内容管理', '', '', 'admin', '', '', '', 0, 1);
INSERT INTO `vfs_node` VALUES (29, 'left', 28, '内容列表', '', '', 'admin', 'menu_content', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (30, 'top', 0, '服务领域', '', '', 'admin', 'service', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (31, 'left', 30, '服务分类', '', '', 'admin', 'service_cate', 'index', '', 0, 1);
INSERT INTO `vfs_node` VALUES (32, 'left', 30, '服务列表', '', '', 'admin', 'service', 'index', '', 0, 1);

-- ----------------------------
-- Table structure for vfs_product
-- ----------------------------
DROP TABLE IF EXISTS `vfs_product`;
CREATE TABLE `vfs_product`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `banner` int(11) NOT NULL DEFAULT 0 COMMENT '缩略图',
  `carousel` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '轮播图,多张英文逗号隔开',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` decimal(12, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1正常',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `delete_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_product
-- ----------------------------
INSERT INTO `vfs_product` VALUES (12, '产品1', 4, 48, '51', '产品简介', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span></p>', 1254.00, 1, '备注', 2, 1568604306, 1568605932, NULL);
INSERT INTO `vfs_product` VALUES (13, '产品2', 2, 48, '49_51', '产品简介', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span></p>', 1254.00, 1, '备注', 1, 1568604306, 1568605569, NULL);
INSERT INTO `vfs_product` VALUES (14, '产品3', 2, 48, '49_51', '产品简介', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 14px; text-align: right;\">详情</span></p>', 1254.00, 1, '备注', 1, 1568604306, 1568605569, NULL);

-- ----------------------------
-- Table structure for vfs_product_cate
-- ----------------------------
DROP TABLE IF EXISTS `vfs_product_cate`;
CREATE TABLE `vfs_product_cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图标',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_product_cate
-- ----------------------------
INSERT INTO `vfs_product_cate` VALUES (1, 0, '产品分类1', '', 1, 1, 1568599554, 1568599554);
INSERT INTO `vfs_product_cate` VALUES (2, 0, '产品分类2', '', 2, 1, 1568599605, 1568600537);
INSERT INTO `vfs_product_cate` VALUES (4, 0, '产品分类3', '', 3, 1, 1568600573, 1568600573);

-- ----------------------------
-- Table structure for vfs_region
-- ----------------------------
DROP TABLE IF EXISTS `vfs_region`;
CREATE TABLE `vfs_region`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `pinyin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '省市区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_rent
-- ----------------------------
DROP TABLE IF EXISTS `vfs_rent`;
CREATE TABLE `vfs_rent`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_id` int(11) UNSIGNED NOT NULL COMMENT '用户ID',
  `need` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '求租需求',
  `status` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '求租状态(0未租，1为已租)',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_role
-- ----------------------------
DROP TABLE IF EXISTS `vfs_role`;
CREATE TABLE `vfs_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_role
-- ----------------------------
INSERT INTO `vfs_role` VALUES (1, '超级管理员', 0, 1565249081);
INSERT INTO `vfs_role` VALUES (2, '2级管理员', 0, 1568278459);
INSERT INTO `vfs_role` VALUES (3, '3级管理员', 0, 1568278291);
INSERT INTO `vfs_role` VALUES (23, '4级管理员', 1568277407, 1568944283);

-- ----------------------------
-- Table structure for vfs_role_node
-- ----------------------------
DROP TABLE IF EXISTS `vfs_role_node`;
CREATE TABLE `vfs_role_node`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `node_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` int(11) UNSIGNED NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限中间表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_role_node
-- ----------------------------
INSERT INTO `vfs_role_node` VALUES (187, 25, 1, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (188, 25, 10, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (189, 25, 9, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (190, 25, 8, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (191, 25, 7, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (192, 25, 6, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (193, 25, 2, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (194, 25, 23, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (195, 25, 22, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (196, 25, 15, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (197, 25, 14, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (198, 25, 13, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (199, 25, 12, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (200, 25, 11, 1568278281, 1568278281);
INSERT INTO `vfs_role_node` VALUES (201, 3, 1, 1568278291, 1568278291);
INSERT INTO `vfs_role_node` VALUES (202, 3, 10, 1568278291, 1568278291);
INSERT INTO `vfs_role_node` VALUES (203, 3, 9, 1568278291, 1568278291);
INSERT INTO `vfs_role_node` VALUES (204, 3, 8, 1568278291, 1568278291);
INSERT INTO `vfs_role_node` VALUES (205, 3, 7, 1568278291, 1568278291);
INSERT INTO `vfs_role_node` VALUES (206, 3, 6, 1568278291, 1568278291);
INSERT INTO `vfs_role_node` VALUES (230, 2, 1, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (231, 2, 10, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (232, 2, 9, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (233, 2, 8, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (234, 2, 7, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (235, 2, 6, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (236, 2, 2, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (237, 2, 23, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (238, 2, 22, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (239, 2, 15, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (240, 2, 14, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (241, 2, 13, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (242, 2, 12, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (243, 2, 11, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (244, 2, 3, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (245, 2, 17, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (246, 2, 16, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (247, 2, 4, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (248, 2, 19, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (249, 2, 18, 1568278459, 1568278459);
INSERT INTO `vfs_role_node` VALUES (250, 23, 2, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (251, 23, 23, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (252, 23, 22, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (253, 23, 15, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (254, 23, 14, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (255, 23, 13, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (256, 23, 12, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (257, 23, 11, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (258, 23, 3, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (259, 23, 17, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (260, 23, 16, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (261, 23, 4, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (262, 23, 19, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (263, 23, 18, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (264, 23, 5, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (265, 23, 21, 1568944283, 1568944283);
INSERT INTO `vfs_role_node` VALUES (266, 23, 20, 1568944283, 1568944283);

-- ----------------------------
-- Table structure for vfs_service
-- ----------------------------
DROP TABLE IF EXISTS `vfs_service`;
CREATE TABLE `vfs_service`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `view_number` int(11) NOT NULL DEFAULT 0 COMMENT '阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '服务领域表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_service
-- ----------------------------
INSERT INTO `vfs_service` VALUES (1, 1, '行政处理', '', '行政处理', '<p>行政处理</p>', 0, 1, 1569637470, 1569637470, 0);
INSERT INTO `vfs_service` VALUES (2, 1, '行政复议', '', '行政复议', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">行政复议</span></p>', 0, 1, 1569637504, 1569637504, 0);
INSERT INTO `vfs_service` VALUES (3, 1, 'OA答复', '', 'OA答复', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">OA答复</span></p>', 0, 1, 1569637525, 1569637525, 0);
INSERT INTO `vfs_service` VALUES (4, 1, '复审代理', '', '复审代理', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">复审代理</span></p>', 0, 1, 1569637541, 1569637541, 0);
INSERT INTO `vfs_service` VALUES (5, 1, '专利检索', '', '专利检索', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">专利检索</span></p>', 0, 1, 1569637561, 1569637561, 0);
INSERT INTO `vfs_service` VALUES (6, 1, '无效代理', '', '无效代理', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">无效代理</span></p>', 0, 1, 1569637593, 1569637593, 0);
INSERT INTO `vfs_service` VALUES (7, 1, '侵权分析', '', '侵权分析', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">侵权分析</span></p>', 0, 1, 1569637618, 1569637618, 0);
INSERT INTO `vfs_service` VALUES (8, 1, '申请代理', '', '申请代理', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">申请代理</span></p>', 0, 1, 1569637641, 1569637641, 0);
INSERT INTO `vfs_service` VALUES (9, 1, '专利诉讼', '', '专利诉讼', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">专利诉讼</span></p>', 0, 1, 1569637665, 1569637665, 0);
INSERT INTO `vfs_service` VALUES (10, 2, '商标注册', '', '商标注册业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标注册业务</span></p>', 0, 1, 1569637718, 1569637718, 0);
INSERT INTO `vfs_service` VALUES (11, 2, '商标变更', '', '商标变更业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标变更业务</span></p>', 0, 1, 1569637752, 1569637752, 0);
INSERT INTO `vfs_service` VALUES (12, 2, '商标续展', '', '商标续展业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标续展业务</span></p>', 0, 1, 1569637770, 1569637770, 0);
INSERT INTO `vfs_service` VALUES (13, 2, '商标驳回复审', '', '商标驳回复审', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标驳回复审</span></p>', 0, 1, 1569637791, 1569637791, 0);
INSERT INTO `vfs_service` VALUES (14, 2, '商标无效', '', '商标无效业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标无效业务</span></p>', 0, 1, 1569637814, 1569637814, 0);
INSERT INTO `vfs_service` VALUES (15, 2, '商标答辩', '', '商标答辩业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标答辩业务</span></p>', 0, 1, 1569637828, 1569637828, 0);
INSERT INTO `vfs_service` VALUES (16, 2, '商标异议', '', '商标异议业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标异议业务</span></p>', 0, 1, 1569637852, 1569637852, 0);
INSERT INTO `vfs_service` VALUES (17, 2, '商标转让', '', '商标转让业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标转让业务</span></p>', 0, 1, 1569637869, 1569637869, 0);
INSERT INTO `vfs_service` VALUES (18, 2, '商标许可', '', '商标许可业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标许可业务</span></p>', 0, 1, 1569637884, 1569637884, 0);
INSERT INTO `vfs_service` VALUES (19, 2, '商标异议复审', '', '商标异议复审', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标异议复审</span></p>', 0, 1, 1569637902, 1569637902, 0);
INSERT INTO `vfs_service` VALUES (20, 2, '商标撤销', '', '商标撤销业务', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">商标撤销业务</span></p>', 0, 1, 1569637921, 1569637921, 0);
INSERT INTO `vfs_service` VALUES (21, 3, '文学作品', '', '文学作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">文学作品</span></p>', 0, 1, 1569637999, 1569637999, 0);
INSERT INTO `vfs_service` VALUES (22, 3, '摄影作品', '', '摄影作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">摄影作品</span></p>', 0, 1, 1569638015, 1569638015, 0);
INSERT INTO `vfs_service` VALUES (23, 3, '口述作品', '', '口述作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">口述作品</span></p>', 0, 1, 1569638032, 1569638032, 0);
INSERT INTO `vfs_service` VALUES (24, 3, '美术作品', '', '美术作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">美术作品</span></p>', 0, 1, 1569638125, 1569638125, 0);
INSERT INTO `vfs_service` VALUES (25, 3, '电影作品', '', '电影作品', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">电影作品</span></p>', 0, 1, 1569638193, 1569638193, 0);
INSERT INTO `vfs_service` VALUES (26, 3, '类似电影', '', '类似电影', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">类似电影</span></p>', 0, 1, 1569638206, 1569638206, 0);
INSERT INTO `vfs_service` VALUES (27, 6, '高新技术企业认定', '', '高新技术企业认定', '<h1>高新技术企业认定</h1><p><br/></p>', 0, 1, 1569638384, 1569638384, 0);
INSERT INTO `vfs_service` VALUES (28, 6, '专利无效', '', '专利无效', '<p>专利无效</p>', 0, 1, 1569650597, 1569650597, 0);

-- ----------------------------
-- Table structure for vfs_service_cate
-- ----------------------------
DROP TABLE IF EXISTS `vfs_service_cate`;
CREATE TABLE `vfs_service_cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1图片, 2文章',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `orderby` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '越大越靠前',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1显示',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '服务领域分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_service_cate
-- ----------------------------
INSERT INTO `vfs_service_cate` VALUES (1, 0, 0, '专利', '86', 4, 1, 1569637331, 1569660144);
INSERT INTO `vfs_service_cate` VALUES (2, 0, 0, '商标', '87', 3, 1, 1569637338, 1569660285);
INSERT INTO `vfs_service_cate` VALUES (3, 0, 0, '版权', '88', 2, 1, 1569637354, 1569660296);
INSERT INTO `vfs_service_cate` VALUES (6, 0, 0, '其它业务', '89', 1, 1, 1569637419, 1569660312);

-- ----------------------------
-- Table structure for vfs_statistics_log
-- ----------------------------
DROP TABLE IF EXISTS `vfs_statistics_log`;
CREATE TABLE `vfs_statistics_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT 1,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_statistics_log
-- ----------------------------
INSERT INTO `vfs_statistics_log` VALUES (1, '127.0.0.1', 2, 1567304409);
INSERT INTO `vfs_statistics_log` VALUES (2, '127.0.0.1', 2, 1568946009);
INSERT INTO `vfs_statistics_log` VALUES (3, '127.0.0.1', 2, 1569032410);
INSERT INTO `vfs_statistics_log` VALUES (4, '127.0.0.1', 319, 1569376942);
INSERT INTO `vfs_statistics_log` VALUES (5, '127.0.0.1', 299, 1569460030);
INSERT INTO `vfs_statistics_log` VALUES (6, '127.0.0.1', 397, 1569633249);
INSERT INTO `vfs_statistics_log` VALUES (7, '127.0.0.1', 12, 1569719596);
INSERT INTO `vfs_statistics_log` VALUES (8, '127.0.0.1', 33, 1570497127);
INSERT INTO `vfs_statistics_log` VALUES (9, '127.0.0.1', 2, 1570842949);
INSERT INTO `vfs_statistics_log` VALUES (10, '127.0.0.1', 2, 1571105080);
INSERT INTO `vfs_statistics_log` VALUES (11, '127.0.0.1', 4, 1572935254);
INSERT INTO `vfs_statistics_log` VALUES (12, '127.0.0.1', 99, 1573106644);
INSERT INTO `vfs_statistics_log` VALUES (13, '127.0.0.1', 3, 1573176246);

-- ----------------------------
-- Table structure for vfs_sys_article
-- ----------------------------
DROP TABLE IF EXISTS `vfs_sys_article`;
CREATE TABLE `vfs_sys_article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_sys_article
-- ----------------------------
INSERT INTO `vfs_sys_article` VALUES (1, 0, '河南智盈公司简介', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国XXXX网是中国教育报刊社主办的以教育新闻为主的网络信息传播平台。它以向社会传播教育的声音，促进教育改革与发展为己任，在保持中国教育报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为教育信息网络传播中心。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 中国XXXX网的前身为中国教育报网络版，于2000年正式进入国际互联网，2006年，更名为中国教育新闻网。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 中国XXXX网目前设有新闻、资讯、资料和社区四大主体板块，设有教学、教育研究、高考、考研、就业、读书、图片等10余个频道, 近20种分类新闻，并提供教育资料、在线调查等多种信息服务。</p><p><br/></p>', 0, 1569460340);
INSERT INTO `vfs_sys_article` VALUES (2, 0, '招聘简章', '<p>招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章招聘简章</p>', 0, 1568951081);
INSERT INTO `vfs_sys_article` VALUES (3, 0, '团队简介', '<p style=\"white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp; 中国XXXX网是中国教育报刊社主办的以教育新闻为主的网络信息传播平台。它以向社会传播教育的声音，促进教育改革与发展为己任，在保持中国教育报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为教育信息网络传播中心。</p><p style=\"white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp; 中国XXXX网的前身为中国教育报网络版，于2000年正式进入国际互联网，2006年，更名为中国教育新闻网。</p><p style=\"white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp; 中国XXXX网目前设有新闻、资讯、资料和社区四大主体板块，设有教学、教育研究、高考、考研、就业、读书、图片等10余个频道, 近20种分类新闻，并提供教育资料、在线调查等多种信息服务。</p><p><br/></p>', 0, 1570497118);
INSERT INTO `vfs_sys_article` VALUES (4, 0, '生活旅行', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (5, 0, '常见问题', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (6, 0, '线下邮寄', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (7, 0, '上门自提', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (8, 0, '配送服务', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (9, 0, '配送标准', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (10, 0, '售后服务', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (11, 0, '价格保护', '', 0, 0);
INSERT INTO `vfs_sys_article` VALUES (12, 0, '退货保障1', '<p>sddsdsdsdsds</p>', 0, 1568613725);

-- ----------------------------
-- Table structure for vfs_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `vfs_sys_config`;
CREATE TABLE `vfs_sys_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0待定, 1系统',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'key值',
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'value值',
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_sys_config
-- ----------------------------
INSERT INTO `vfs_sys_config` VALUES (1, 1, '网址名称', 'site_name', '网址名称', 0, 1568944188);
INSERT INTO `vfs_sys_config` VALUES (2, 1, '关键字', 'site_keywords', '关键字', 0, 1568944178);
INSERT INTO `vfs_sys_config` VALUES (3, 1, '描述', 'site_description', '描述', 0, 1568944162);
INSERT INTO `vfs_sys_config` VALUES (4, 1, '开发者', 'site_auth', '微风尚', 0, 1568944153);
INSERT INTO `vfs_sys_config` VALUES (5, 1, '版权', 'copyright', 'copyright', 0, 1568944146);
INSERT INTO `vfs_sys_config` VALUES (6, 1, '公司地址', 'contact_address', '河南省郑州市金水区东风南路绿地之窗', 0, 1565142342);
INSERT INTO `vfs_sys_config` VALUES (7, 1, '企业订购热线', 'contact_telephone', '0371-8888888', 0, 1568944134);
INSERT INTO `vfs_sys_config` VALUES (8, 1, '联系人', 'contact_name', '王经理', 0, 1565142342);
INSERT INTO `vfs_sys_config` VALUES (9, 1, 'IPC备案号', 'icp_number', '豫', 0, 1568944120);
INSERT INTO `vfs_sys_config` VALUES (10, 1, '增值电信业务经营许可证编号', 'business_permit', '豫', 0, 1568944110);
INSERT INTO `vfs_sys_config` VALUES (11, 1, '在线客服', 'online_customer', '15515501956', 0, 0);
INSERT INTO `vfs_sys_config` VALUES (12, 1, '服务时间', 'service_time', '09:00-23:00', 0, 0);
INSERT INTO `vfs_sys_config` VALUES (13, 1, '联系我们地址', 'contact_us_address', '郑州市', 0, 1568944097);
INSERT INTO `vfs_sys_config` VALUES (14, 1, '公司名称', 'company_name', '测试公司', 0, 1568614384);

-- ----------------------------
-- Table structure for vfs_upload
-- ----------------------------
DROP TABLE IF EXISTS `vfs_upload`;
CREATE TABLE `vfs_upload`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `filepath` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '上传记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_upload
-- ----------------------------
INSERT INTO `vfs_upload` VALUES (1, '/uploads/default/20190916\\4d54da2c798b38f6c773b3607194a230.jpg', 1568597149, 1568597149);
INSERT INTO `vfs_upload` VALUES (2, '/uploads/default/20190916\\63aac321ec383c02aa6120bbc98b5dd8.jpg', 1568597534, 1568597534);
INSERT INTO `vfs_upload` VALUES (3, '/uploads/default/20190916\\71d4f96738332a87a5990b06651e3e22.jpg', 1568597703, 1568597703);
INSERT INTO `vfs_upload` VALUES (4, '/uploads/default/20190916\\d4d22d4947a83f449d7b72c47614cec2.jpg', 1568597711, 1568597711);
INSERT INTO `vfs_upload` VALUES (5, '/uploads/default/20190916\\a6bc5fb51e5f3f6cd747e96d8b7c2f4e.jpg', 1568598230, 1568598230);
INSERT INTO `vfs_upload` VALUES (6, '/uploads/default/20190916\\897a929e81eb61d782b4cda46e47b8a2.jpg', 1568598233, 1568598233);
INSERT INTO `vfs_upload` VALUES (7, '/uploads/adv/20190916\\face2d65e7b405917210fde93eba17e8.jpg', 1568599581, 1568599581);
INSERT INTO `vfs_upload` VALUES (8, '/uploads/adv/20190916\\2e9db48be95e8f8205564b26d307c732.jpg', 1568599601, 1568599601);
INSERT INTO `vfs_upload` VALUES (9, '/uploads/adv/20190916\\becfedaf4796cb102ed128350ac70652.jpg', 1568599820, 1568599820);
INSERT INTO `vfs_upload` VALUES (10, '/uploads/adv/20190916\\266597a055d6e2b9f2ee28c7e37db706.jpg', 1568599829, 1568599829);
INSERT INTO `vfs_upload` VALUES (11, '/uploads/adv/20190916\\0ee4c5ff147c4f310c8007a398a068df.jpg', 1568599909, 1568599909);
INSERT INTO `vfs_upload` VALUES (12, '/uploads/adv/20190916\\2ae781a066da901d31e7399755af93c7.jpg', 1568599956, 1568599956);
INSERT INTO `vfs_upload` VALUES (13, '/uploads/adv/20190916\\045ba34e2cf8772ca4fc281378a72463.jpg', 1568600161, 1568600161);
INSERT INTO `vfs_upload` VALUES (14, '/uploads/adv/20190916\\a4af112d69b58f1801fbb448e36afdbd.jpg', 1568600182, 1568600182);
INSERT INTO `vfs_upload` VALUES (15, '/uploads/adv/20190916\\e2777153c2952ef8121d50d090a292d7.jpg', 1568600228, 1568600228);
INSERT INTO `vfs_upload` VALUES (16, '/uploads/adv/20190916\\10c9cd583fa868c55adceefdc42ad1d7.jpg', 1568600324, 1568600324);
INSERT INTO `vfs_upload` VALUES (17, '/uploads/default/20190916\\2b016ea6ff4542f4de45ed27abac78e7.jpg', 1568601817, 1568601817);
INSERT INTO `vfs_upload` VALUES (18, '/uploads/default/20190916\\ad031d430ae1bae804b467f8f93ef6dd.jpg', 1568601824, 1568601824);
INSERT INTO `vfs_upload` VALUES (19, '/uploads/default/20190916\\74111ed5231cc9f02a11b7c26b592147.jpg', 1568601826, 1568601826);
INSERT INTO `vfs_upload` VALUES (20, '/uploads/default/20190916\\516689a0a460087dfe8ecc0e64f7d033.jpg', 1568601941, 1568601941);
INSERT INTO `vfs_upload` VALUES (21, '/uploads/default/20190916\\e73580fddfcac1ad7f7d00afcc625a84.jpg', 1568601945, 1568601945);
INSERT INTO `vfs_upload` VALUES (22, '/uploads/default/20190916\\e870cd52c7e1e7a8774b27672393971d.jpg', 1568601948, 1568601948);
INSERT INTO `vfs_upload` VALUES (23, '/uploads/default/20190916\\42e7702e8e6d59e9d5d93169036b59fd.jpg', 1568601947, 1568601947);
INSERT INTO `vfs_upload` VALUES (24, '/uploads/default/20190916\\f1b36767b24e9c818d90469b757b7e4e.jpg', 1568602000, 1568602000);
INSERT INTO `vfs_upload` VALUES (25, '/uploads/default/20190916\\b4d343ca636bf2d1a5191f328074c006.jpg', 1568602003, 1568602003);
INSERT INTO `vfs_upload` VALUES (26, '/uploads/default/20190916\\710d3bb45116d9a949e1d45aab8cee6f.jpg', 1568602006, 1568602006);
INSERT INTO `vfs_upload` VALUES (27, '/uploads/default/20190916\\dfaec84d1c3d11a1cb3204947f9f7b01.jpg', 1568603451, 1568603451);
INSERT INTO `vfs_upload` VALUES (28, '/uploads/default/20190916\\378d06fe828db72e023820533bb22544.jpg', 1568603455, 1568603455);
INSERT INTO `vfs_upload` VALUES (29, '/uploads/default/20190916\\1ac08e29f796b013e63d6e43f6acb468.jpg', 1568603459, 1568603459);
INSERT INTO `vfs_upload` VALUES (30, '/uploads/default/20190916\\e4301d09d7bbc422d1d934480f2d9a88.jpg', 1568603486, 1568603486);
INSERT INTO `vfs_upload` VALUES (31, '/uploads/default/20190916\\55809cbc6fdccaf9f506547125e4bc11.jpg', 1568603489, 1568603489);
INSERT INTO `vfs_upload` VALUES (32, '/uploads/default/20190916\\2f51be425a8e506a0a920eb3cca7f8cf.jpg', 1568603492, 1568603492);
INSERT INTO `vfs_upload` VALUES (33, '/uploads/default/20190916\\8c2468c37a77dc1c3926642f54bb69bf.jpg', 1568603565, 1568603565);
INSERT INTO `vfs_upload` VALUES (34, '/uploads/default/20190916\\44d0a25f0be39a6900368a5ded89adc3.jpg', 1568603567, 1568603567);
INSERT INTO `vfs_upload` VALUES (35, '/uploads/default/20190916\\8ce4cf49e5b2b28171055df15672a71f.jpg', 1568603731, 1568603731);
INSERT INTO `vfs_upload` VALUES (36, '/uploads/default/20190916\\8117bef976eb90cde57129b0e3f2307b.jpg', 1568603734, 1568603734);
INSERT INTO `vfs_upload` VALUES (37, '/uploads/default/20190916\\332a51b39a725c7d16d224b8d510ca23.jpg', 1568603830, 1568603830);
INSERT INTO `vfs_upload` VALUES (38, '/uploads/default/20190916\\7ecb9dbe37f534daa20afa93031f6451.jpg', 1568603835, 1568603835);
INSERT INTO `vfs_upload` VALUES (39, '/uploads/default/20190916\\41f41133c595d2e97278610ebe848c50.jpg', 1568604010, 1568604010);
INSERT INTO `vfs_upload` VALUES (40, '/uploads/default/20190916\\61e1bdc3a3450d55f311e67ec09d0b0c.jpg', 1568604014, 1568604014);
INSERT INTO `vfs_upload` VALUES (41, '/uploads/default/20190916\\1b3eb9d519622abf4f42a04befae8459.jpg', 1568604066, 1568604066);
INSERT INTO `vfs_upload` VALUES (42, '/uploads/default/20190916\\644a606652b9f14ea45d3735444eebb8.jpg', 1568604070, 1568604070);
INSERT INTO `vfs_upload` VALUES (43, '/uploads/default/20190916\\46a362a45cf805dc2718475f4b4e6fca.jpg', 1568604255, 1568604255);
INSERT INTO `vfs_upload` VALUES (44, '/uploads/default/20190916\\7c145b28dadb439aa42a278d7bdaf35f.jpg', 1568604259, 1568604259);
INSERT INTO `vfs_upload` VALUES (45, '/uploads/default/20190916\\7da2a37c913d3fd9d9d843907c69528c.jpg', 1568604291, 1568604291);
INSERT INTO `vfs_upload` VALUES (46, '/uploads/default/20190916\\f51a8bc3f9888c420fe9fa0191f57c27.jpg', 1568604297, 1568604297);
INSERT INTO `vfs_upload` VALUES (47, '/uploads/default/20190916\\ef4be13add723986043554d1a91e0334.jpg', 1568604299, 1568604299);
INSERT INTO `vfs_upload` VALUES (48, '/uploads/default/20190916\\2079d71a01f578bd1d2131534409581a.jpg', 1568605521, 1568605521);
INSERT INTO `vfs_upload` VALUES (49, '/uploads/default/20190916\\d3b341da2e54fc69cdcf59abf2078000.jpg', 1568605526, 1568605526);
INSERT INTO `vfs_upload` VALUES (50, '/uploads/default/20190916\\89c32df3821a58a4aa1442a29ceb7cd8.jpg', 1568605532, 1568605532);
INSERT INTO `vfs_upload` VALUES (51, '/uploads/default/20190916\\3cfcf29c26856d53dca11504069f662e.jpg', 1568605535, 1568605535);
INSERT INTO `vfs_upload` VALUES (52, '/uploads/default/20190916\\167b8b08527d0a4ec8421a95a3bb03c9.jpg', 1568605540, 1568605540);
INSERT INTO `vfs_upload` VALUES (53, '/uploads/default/20190916\\a4e806790961052b3dd3ca1ce64ddf1d.jpg', 1568605546, 1568605546);
INSERT INTO `vfs_upload` VALUES (54, '/uploads/default/20190916\\4c904912106c12e87e0b9875f5011a07.jpg', 1568605549, 1568605549);
INSERT INTO `vfs_upload` VALUES (55, '/uploads/adv/20190916\\bd0b7fc2e54dea09fccb143d85f764e0.jpg', 1568616700, 1568616700);
INSERT INTO `vfs_upload` VALUES (56, '/uploads/default/20190916\\1087aafdb90416e2ca665b66dae2ddd9.jpg', 1568618526, 1568618526);
INSERT INTO `vfs_upload` VALUES (57, '/uploads/default/20190918\\b971da2c2f334c8afa78121598722278.jpg', 1568775456, 1568775456);
INSERT INTO `vfs_upload` VALUES (58, '/uploads/default/20190918\\74eefde9319a6f2710862c312d4e63cf.jpg', 1568775561, 1568775561);
INSERT INTO `vfs_upload` VALUES (59, '/uploads/default/20190918\\2cf4223319214b26281a37706f27a9db.jpg', 1568775690, 1568775690);
INSERT INTO `vfs_upload` VALUES (60, '/uploads/default/20190918\\f1cbf615c801e693a6496086c3856159.jpg', 1568777647, 1568777647);
INSERT INTO `vfs_upload` VALUES (61, '/uploads/default/20190921\\436c77aa3f9067440356a1a9cb0d7ba1.png', 1569029192, 1569029192);
INSERT INTO `vfs_upload` VALUES (62, '/uploads/default/20190921/50ff87566497733a1318343517dc5cc1.png', 1569032749, 1569032749);
INSERT INTO `vfs_upload` VALUES (63, '/uploads/default/20190921/83bab9acf6ed6e1b1cc2afb9dc756d60.png', 1569032912, 1569032912);
INSERT INTO `vfs_upload` VALUES (64, '/uploads/default/20190921\\56d98b6508f7440750f67cb1cda6caab.png', 1569032958, 1569032958);
INSERT INTO `vfs_upload` VALUES (65, '/uploads/default/20190925\\d6522dfe336abc66b4e934d03233f211.jpg', 1569386879, 1569386879);
INSERT INTO `vfs_upload` VALUES (66, '/uploads/default/20190925\\5ef15e4207130625534e1e24e02a2955.jpg', 1569391688, 1569391688);
INSERT INTO `vfs_upload` VALUES (67, '/uploads/default/20190925\\af24d5466ffc90d040b16ccee6d82359.jpg', 1569394007, 1569394007);
INSERT INTO `vfs_upload` VALUES (68, '/uploads/default/20190925\\42d2c3e491beeeeae7bf936fa57cb1ad.jpg', 1569394128, 1569394128);
INSERT INTO `vfs_upload` VALUES (69, '/uploads/adv/20190925\\0898f500faef15b9f38a251d311a75f7.jpg', 1569395016, 1569395016);
INSERT INTO `vfs_upload` VALUES (70, '/uploads/default/20190925\\19c828f3b17805910c9f2e70a2843b92.png', 1569395383, 1569395383);
INSERT INTO `vfs_upload` VALUES (71, '/uploads/default/20190925\\214594ff504011c56070097bbf129521.jpg', 1569395618, 1569395618);
INSERT INTO `vfs_upload` VALUES (72, '/uploads/default/20190925\\12454be3dabd436be530488c5102a2d2.jpg', 1569402081, 1569402081);
INSERT INTO `vfs_upload` VALUES (73, '/uploads/default/20190925\\8161dc9c655ac1d88b0b2e82fe5690c4.jpg', 1569402291, 1569402291);
INSERT INTO `vfs_upload` VALUES (74, '/uploads/adv/20190926\\cf41ea84e56dc2049236db0d5fa94a15.jpg', 1569460202, 1569460202);
INSERT INTO `vfs_upload` VALUES (75, '/uploads/adv/20190926\\9c442fd353e2d0fc406a7fa0f18a13ae.jpg', 1569460227, 1569460227);
INSERT INTO `vfs_upload` VALUES (76, '/uploads/adv/20190926\\51951e57f54db8c4c46a5a95fe920b34.jpg', 1569460246, 1569460246);
INSERT INTO `vfs_upload` VALUES (77, '/uploads/adv/20190926\\63a4cecc58f4d18e448055c6dbf9b78a.jpg', 1569462278, 1569462278);
INSERT INTO `vfs_upload` VALUES (78, '/uploads/default/20190928\\7411d1af9c90d3355074daaf3a3104ef.jpg', 1569637155, 1569637155);
INSERT INTO `vfs_upload` VALUES (79, '/uploads/adv/20190928\\449d13fbc01917c699a53fc9fdb65810.png', 1569653254, 1569653254);
INSERT INTO `vfs_upload` VALUES (80, '/uploads/adv/20190928\\3cf35a771a9ffaa116df9794e8812f5c.png', 1569653284, 1569653284);
INSERT INTO `vfs_upload` VALUES (81, '/uploads/adv/20190928\\8074dad140e90b80d80da69cff8e3375.png', 1569653334, 1569653334);
INSERT INTO `vfs_upload` VALUES (82, '/uploads/adv/20190928\\000f4e68d5249e3a38ea3111766d6223.png', 1569653383, 1569653383);
INSERT INTO `vfs_upload` VALUES (83, '/uploads/adv/20190928\\c1ee3fd6d7293cbcc01e4efb095aa013.png', 1569653406, 1569653406);
INSERT INTO `vfs_upload` VALUES (84, '/uploads/adv/20190928\\2094cc2d8b4ed3b7fdd5023aefa037f5.png', 1569653425, 1569653425);
INSERT INTO `vfs_upload` VALUES (85, '/uploads/default/20190928\\8cf31a449bc59441fbce4e06fc322553.png', 1569658691, 1569658691);
INSERT INTO `vfs_upload` VALUES (86, '/uploads/default/20190928\\0387b2d1f68a569c7d667fbfba688b8d.png', 1569660140, 1569660140);
INSERT INTO `vfs_upload` VALUES (87, '/uploads/default/20190928\\d8171ddec970dfaea88da08c4fc37c5b.png', 1569660284, 1569660284);
INSERT INTO `vfs_upload` VALUES (88, '/uploads/default/20190928\\af9254005add2ef4745f25d77fbf8318.png', 1569660294, 1569660294);
INSERT INTO `vfs_upload` VALUES (89, '/uploads/default/20190928\\fefe8801e5c25e5958895ff034c8151b.png', 1569660310, 1569660310);
INSERT INTO `vfs_upload` VALUES (90, '/uploads/default/20190928\\e1a32549b54f3fdbde1d893e7ff10d16.png', 1569662247, 1569662247);
INSERT INTO `vfs_upload` VALUES (91, '/uploads/default/20190928\\4906d147a6c6e4c498530584a0aca0a0.png', 1569664026, 1569664026);

-- ----------------------------
-- Table structure for vfs_user
-- ----------------------------
DROP TABLE IF EXISTS `vfs_user`;
CREATE TABLE `vfs_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '村民ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '村民名称',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '村民电话',
  `sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '村民性别',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '村民出生年月',
  `age` int(3) NULL DEFAULT NULL COMMENT '年龄',
  `idcode` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `edu_green` enum('无','小学','初中','高中','大专','本科','研究生','硕士','博士','博士后','院士') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `marriage` enum('未婚','已婚') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未婚' COMMENT '婚姻状态',
  `move_in_time` timestamp(0) NULL DEFAULT NULL COMMENT '迁入户口时间',
  `move_out_time` timestamp(0) NULL DEFAULT NULL COMMENT '迁出户口时间',
  `u_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户状态(默认为0 普通用户,1 村民)',
  `status` enum('正常','失踪','过世','迁出') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '正常' COMMENT '人口状态',
  `gro_id` int(11) NULL DEFAULT NULL COMMENT '所属大队ID',
  `fam_id` int(11) NULL DEFAULT NULL COMMENT '所属家庭ID',
  `allocation_cate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分配类型',
  `allocation_start_time` timestamp(0) NULL DEFAULT NULL COMMENT '分配开始时间',
  `allocation_end_time` timestamp(0) NULL DEFAULT NULL COMMENT '分配结束时间',
  `family_move` tinyint(255) UNSIGNED NULL DEFAULT 0 COMMENT '是否迁出家庭(0:否,1:是)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_phone`(`phone`) USING BTREE COMMENT '电话唯一',
  UNIQUE INDEX `Unique_idcode`(`idcode`) USING BTREE COMMENT '身份证号唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村民表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_user
-- ----------------------------
INSERT INTO `vfs_user` VALUES (1, '张三', '4294967295', '男', '95-06', 25, '4101991995060603', '本科', '未婚', '2019-03-13 14:53:18', '2019-11-07 14:53:28', '0', '正常', NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for vfs_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `vfs_user_favorite`;
CREATE TABLE `vfs_user_favorite`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_id` bigint(11) UNSIGNED NOT NULL COMMENT '用户ID',
  `hour_id` bigint(11) UNSIGNED NOT NULL COMMENT '房子ID',
  `me_in_id` bigint(11) UNSIGNED NOT NULL COMMENT '招商信息ID',
  `news_id` bigint(11) UNSIGNED NOT NULL COMMENT '新闻ID',
  `art_id` bigint(11) UNSIGNED NOT NULL COMMENT '文章ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vfs_user_oauth
-- ----------------------------
DROP TABLE IF EXISTS `vfs_user_oauth`;
CREATE TABLE `vfs_user_oauth`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `platform` enum('wechat') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '平台类别',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户平台ID',
  `accesstoken` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '接口访问凭证',
  `refreshtoken` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '刷新凭证',
  `expiresin` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '访问凭证超时时间',
  `status` enum('bind','unbind') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'bind' COMMENT '状态',
  `addtime` timestamp(0) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `u_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_uid_uoplat_uooid`(`u_id`, `platform`, `openid`) USING BTREE,
  INDEX `Index_uoplat_uooid`(`platform`, `openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户登录授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_user_oauth_wechat
-- ----------------------------
DROP TABLE IF EXISTS `vfs_user_oauth_wechat`;
CREATE TABLE `vfs_user_oauth_wechat`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(3) UNSIGNED NULL DEFAULT NULL COMMENT '1:男,2:女',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `unionid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信全平台用户唯一标识',
  `updatetime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `uo_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户oauthID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `vfs_user_relation`;
CREATE TABLE `vfs_user_relation`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '村民关系id',
  `u_id` int(8) UNSIGNED NOT NULL COMMENT '关联人ID',
  `be_u_id` int(8) UNSIGNED NOT NULL COMMENT '被关联人ID',
  `relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关联关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村民关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vfs_wechat
-- ----------------------------
DROP TABLE IF EXISTS `vfs_wechat`;
CREATE TABLE `vfs_wechat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公众号名称',
  `img_id` int(11) NULL DEFAULT NULL COMMENT '图片',
  `appid` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `service_url` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'url地址',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '微信设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vfs_wechat
-- ----------------------------
INSERT INTO `vfs_wechat` VALUES (1, '噢斗k', 64, 'wx5509b7ccbff10e93', '88e416e3df23d7ed80d48dd8a515b6b0', 'http://qiyezhan.ainqs.com/api/wechat/valid', 'fan982674', 1, NULL, 1569719766);

-- ----------------------------
-- Table structure for vfs_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `vfs_wechat_menu`;
CREATE TABLE `vfs_wechat_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT 0,
  `pid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '父级菜单',
  `orderby` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` int(1) NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '微信菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vfs_wechat_menu
-- ----------------------------
INSERT INTO `vfs_wechat_menu` VALUES (1, 1, '0', 0, 1, 1569048155, 1569743547);
INSERT INTO `vfs_wechat_menu` VALUES (2, 2, '0', 0, 1, 1569049634, 1569049634);
INSERT INTO `vfs_wechat_menu` VALUES (3, 4, '0', 0, 1, 1569392212, 1569743379);
INSERT INTO `vfs_wechat_menu` VALUES (4, 2, '1', 0, 1, 1569392212, 1569392212);
INSERT INTO `vfs_wechat_menu` VALUES (9, 4, '3', 0, 1, 1569746511, 1569746511);
INSERT INTO `vfs_wechat_menu` VALUES (10, 2, '3', 0, 1, 1569746525, 1569746525);
INSERT INTO `vfs_wechat_menu` VALUES (11, 1, '3', 0, 1, 1569746531, 1569746531);

-- ----------------------------
-- Triggers structure for table vfs_user_oauth
-- ----------------------------
DROP TRIGGER IF EXISTS `T_user_oauth_b_ins`;
delimiter ;;
CREATE TRIGGER `T_user_oauth_b_ins` BEFORE INSERT ON `vfs_user_oauth` FOR EACH ROW BEGIN
	SET new.addtime=CURRENT_TIMESTAMP;
	END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
