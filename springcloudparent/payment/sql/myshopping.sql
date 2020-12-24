/*
 Navicat Premium Data Transfer

 Source Server         : MySQL8
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : myshopping

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 20/12/2020 10:19:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `aid` int(0) NOT NULL AUTO_INCREMENT,
  `uid` int(0) NOT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `is_default` bit(1) NOT NULL,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` bit(1) NOT NULL,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (6, 13, '张真人', '13991838733', '武汉', '黄鹤楼2号', b'1', NULL, b'1', NULL, 0);
INSERT INTO `address` VALUES (7, 23, '郭靖', '18991838733', '西安', '长安路20号', b'1', '2020-12-14 09:28:13', b'1', '2020-12-14 09:31:23', 1);
INSERT INTO `address` VALUES (8, 13, '张真人', '18991167109', '十堰', '武当山路20号', b'0', '2020-12-14 09:28:13', b'1', '2020-12-14 09:28:13', 0);
INSERT INTO `address` VALUES (9, 23, '郭靖', '18991167133', '宁波', '宁波桃花岛路33号', b'0', '2020-12-14 09:29:13', b'1', '2020-12-14 09:29:13', 0);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` tinyint(1) NULL DEFAULT 0,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(0) NULL DEFAULT NULL,
  `buy_count` int(0) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `discount` double NOT NULL,
  `is_free_post` bit(1) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `number` int(0) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `price` int(0) NOT NULL,
  `property` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shop_id` int(0) NOT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (7, '2019-10-12 11:32:03', 1, NULL, 0, 147, '温州', 1, b'0', '2017夏季新款女装韩版气质修身碎花裙子中长款印花雪纺连衣裙女夏', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_5.jpg', 168, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (8, '2019-10-12 11:33:21', 1, NULL, 0, 3578, '杭州', 1, b'0', '粉色无袖雪纺连衣裙中长款2017夏季新款女装韩版时尚修身裙子长裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_6.jpg', 148, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (9, '2019-10-12 11:47:36', 1, NULL, 0, 4766, '杭州', 1, b'0', '无袖娃娃裙大码女装棉麻韩版宽松高腰圆领背心裙亚麻连衣裙女夏季', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_7.jpg', 29, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (11, '2019-10-12 11:49:21', 1, NULL, 0, 1212, '宁波', 1, b'0', '2017夏季新款韩版女装雪纺无袖白色连衣裙夏修身显瘦打底a字裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_9.jpg', 89, '雪纺', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (12, '2019-10-12 11:50:10', 1, NULL, 0, 8736, '广州', 1, b'0', '夏季2017新款小清新露肩雪纺连衣裙夏女装韩版显瘦气质a字裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_10.jpg', 29, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (13, '2019-10-12 12:27:17', 1, NULL, 0, 3998, '杭州', 1, b'0', '2017新款女装夏季雪纺连衣裙韩版收腰显瘦气质荷叶边系带印花中裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_11.jpg', 138, '雪纺', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (14, '2019-10-12 12:48:18', 1, NULL, 0, 262, '深圳', 1, b'0', '水墨青华2017夏装新款女装气质时尚通勤短袖修身中长款印花连衣裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_1.jpg', 299, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (15, '2019-10-12 12:49:40', 1, NULL, 0, 5921, '深圳', 1, b'0', '歌兔连衣裙雪纺夏季长裙修身2017新款女装显瘦碎花小清新裙子夏女', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_12.jpg', 79, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (16, '2019-10-12 12:50:45', 1, NULL, 0, 2432, '东莞', 1, b'0', '长裙女夏季2017新款女装韩版大码收腰显瘦气质印花无袖雪纺连衣裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_13.jpg', 158, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (17, '2019-10-12 12:51:30', 1, NULL, 0, 1333, '东莞', 1, b'0', '新款莫代尔长裙夏季短袖大码女装宽松显瘦大摆连衣裙沙滩度假裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_14.jpg', 139, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (18, '2019-10-12 12:52:15', 1, NULL, 0, 877, '东莞', 1, b'0', '棉麻连衣裙女夏中长款短袖休闲夏天亚麻女装长裙修身显瘦夏季裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_15.jpg', 199, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (19, '2019-10-12 12:53:46', 1, NULL, 0, 2143, '青岛', 1, b'0', '改良旗袍连衣裙文艺范民族风刺绣2017夏季棉麻女装显瘦短袖中长款', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_16.jpg', 288, '雪纺', '山东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (20, '2019-10-12 12:54:29', 1, NULL, 0, 5433, '青岛', 1, b'0', '颜域品牌女装2017夏季新款显瘦娃娃领蝴蝶结系带短袖蕾丝连衣裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_17.jpg', 99, '雪纺', '山东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (21, '2019-10-12 12:55:43', 1, NULL, 0, 6158, '济南', 1, b'0', '天天特价2017夏季新款女装气质修身包臀裙女中长款显瘦蕾丝连衣裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_18.jpg', 110, '纯棉', '山东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (22, '2019-10-12 12:56:31', 1, NULL, 0, 58, '杭州', 1, b'0', '欧洲站2017夏季新款女装显瘦竖条纹拼接无袖a字裙中长款连衣裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_19.jpg', 139, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (23, '2019-10-12 12:57:10', 1, NULL, 0, 3611, '杭州', 1, b'0', '2017夏季新款女装娃娃裙子宽松圆领休闲显瘦a字无袖背心连衣裙女', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_20.jpg', 148, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (24, '2019-10-12 12:58:06', 1, NULL, 0, 789, '杭州', 1, b'0', '2017夏季新款韩版时尚高腰褶皱雪纺连衣裙圆领无袖中长款女装裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_21.jpg', 288, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (25, '2019-10-12 12:58:36', 1, NULL, 0, 7645, '杭州', 1, b'0', '连衣裙女夏2017新款潮韩版收腰显瘦夏季女装碎花雪纺气质百褶裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_22.jpg', 98, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (26, '2019-10-12 12:59:06', 1, NULL, 0, 296, '杭州', 1, b'0', '2017夏季女装潮新款韩版休闲短袖t恤吊带露肩连衣裙子中长款大码', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_23.jpg', 266, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (27, '2019-10-12 13:00:02', 1, NULL, 0, 589, '杭州', 1, b'0', '女装连衣裙夏季2017新款韩版无袖欧根纱小黑裙蓬蓬裙修身显瘦裙子', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_24.jpg', 138, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (28, '2019-10-12 13:01:01', 1, NULL, 0, 262, '杭州', 1, b'0', '水墨青华2017夏装新款女装气质时尚通勤短袖修身中长款印花连衣裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_25.jpg', 278, '纯棉', '浙江', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (29, '2019-10-12 13:01:45', 1, NULL, 0, 776, '广州', 1, b'0', '韩版修身显瘦中长款真丝连衣裙2017夏装新款桑蚕丝印花大摆沙滩裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_26.jpg', 195, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (30, '2019-10-12 13:02:29', 1, NULL, 0, 512, '广州', 1, b'0', '韩都衣舍2017夏新款韩版网纱小清新假两件中长款连衣裙女RW6789瑒', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_27.jpg', 466, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (31, '2019-10-12 13:02:55', 1, NULL, 0, 777, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_28.jpg', 128, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (32, '2019-10-12 13:03:29', 1, NULL, 0, 1588, '东莞', 1, b'0', '2017夏季新款女装韩版气质修身碎花裙子中长款印花雪纺连衣裙女夏', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_29.jpg', 299, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (33, '2019-10-12 13:03:55', 1, NULL, 0, 739, '东莞', 1, b'0', '粉色无袖雪纺连衣裙中长款2017夏季新款女装韩版时尚修身裙子长裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_30.jpg', 588, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (34, '2019-10-12 13:05:02', 1, NULL, 0, 1788, '东莞', 1, b'0', '无袖娃娃裙大码女装棉麻韩版宽松高腰圆领背心裙亚麻连衣裙女夏季', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_31.jpg', 689, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (35, '2019-10-12 13:05:30', 1, NULL, 0, 6882, '东莞', 1, b'0', '2017夏装新款裙子棉绸中老年女装印花连衣裙妈妈装加大码短袖长裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_32.jpg', 179, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (36, '2019-10-12 18:01:17', 1, NULL, 0, 6882, '东莞', 1, b'0', '2017夏装新款裙子棉绸中老年女装印花连衣裙妈妈装加大码短袖长裙', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_32.jpg', 179, '雪纺', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (57, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙1', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_1.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (58, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙2', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_2.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (59, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙3', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_3.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (60, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙4', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_4.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (61, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙5', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_5.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (62, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙6', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_6.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (63, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙7', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_7.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (64, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙8', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_8.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (65, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙9', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_9.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (66, '2019-10-14 09:45:55', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙10', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_10.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (67, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙1', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_1.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (68, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙2', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_2.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (69, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙3', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_3.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (70, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙4', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_4.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (71, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙5', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_5.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (72, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙6', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_6.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (73, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙7', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_7.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (74, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙8', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_8.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (75, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙9', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_9.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (76, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙10', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_10.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (77, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙11', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_11.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (78, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙12', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_12.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (79, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙13', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_13.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (80, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙14', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_14.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (81, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙15', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_15.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (82, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙16', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_16.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (83, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙17', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_17.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (84, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙18', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_18.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (85, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙19', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_19.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (86, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙20', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_20.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (87, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙21', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_21.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (88, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙22', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_22.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (89, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙23', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_23.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (90, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙24', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_24.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (91, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙25', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_25.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (92, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙26', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_26.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (93, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙27', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_27.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (94, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙28', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_28.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (95, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙29', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_29.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);
INSERT INTO `items` VALUES (96, '2019-10-14 09:48:00', 1, NULL, 0, 500, '广州', 1, b'0', '2017夏季新款女装韩版复古chic气质小黑裙子百褶中长款吊带连衣裙30', 1000, 'https://www.simoniu.com:8091/examdemo/images/api/goodList/pics_small/good_30.jpg', 299, '纯棉', '广东', 100, '韩都衣舍旗舰店', 1);

-- ----------------------------
-- Table structure for order_main
-- ----------------------------
DROP TABLE IF EXISTS `order_main`;
CREATE TABLE `order_main`  (
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` int(0) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `total_price` int(0) NOT NULL,
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` bit(1) NOT NULL,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_main
-- ----------------------------
INSERT INTO `order_main` VALUES ('2020121516234678943f474f484a8fb1f89b94f896467b', 13, '张三丰', '张真人', '武汉', NULL, '黄鹤楼2号', 3244, '2020-12-15 16:23:46', b'1', NULL, 0);
INSERT INTO `order_main` VALUES ('20201216081325f11bd8e7d20d47b7bae44bb1930c20cf', 23, '郭靖', '郭靖', '西安', NULL, '长安路20号', 3244, '2020-12-16 08:13:25', b'1', NULL, 0);

-- ----------------------------
-- Table structure for order_sub
-- ----------------------------
DROP TABLE IF EXISTS `order_sub`;
CREATE TABLE `order_sub`  (
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id` int(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `price` int(0) NOT NULL,
  `buy_count` int(0) NOT NULL,
  `sum` int(0) NOT NULL,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` bit(1) NOT NULL,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_sub
-- ----------------------------
INSERT INTO `order_sub` VALUES ('2020121516234678943f474f484a8fb1f89b94f896467b', 7, '2017夏季新款女装韩版气质修身碎花裙子中长款印花雪纺连衣裙女夏', 168, 10, 1680, '2020-12-15 16:23:46', b'1', NULL, 0);
INSERT INTO `order_sub` VALUES ('2020121516234678943f474f484a8fb1f89b94f896467b', 8, '粉色无袖雪纺连衣裙中长款2017夏季新款女装韩版时尚修身裙子长裙', 148, 9, 1332, '2020-12-15 16:23:46', b'1', NULL, 0);
INSERT INTO `order_sub` VALUES ('2020121516234678943f474f484a8fb1f89b94f896467b', 9, '无袖娃娃裙大码女装棉麻韩版宽松高腰圆领背心裙亚麻连衣裙女夏季', 29, 8, 232, '2020-12-15 16:23:46', b'1', NULL, 0);
INSERT INTO `order_sub` VALUES ('20201216081325f11bd8e7d20d47b7bae44bb1930c20cf', 7, '2017夏季新款女装韩版气质修身碎花裙子中长款印花雪纺连衣裙女夏', 168, 10, 1680, '2020-12-16 08:13:25', b'1', NULL, 0);
INSERT INTO `order_sub` VALUES ('20201216081325f11bd8e7d20d47b7bae44bb1930c20cf', 8, '粉色无袖雪纺连衣裙中长款2017夏季新款女装韩版时尚修身裙子长裙', 148, 9, 1332, '2020-12-16 08:13:25', b'1', NULL, 0);
INSERT INTO `order_sub` VALUES ('20201216081325f11bd8e7d20d47b7bae44bb1930c20cf', 9, '无袖娃娃裙大码女装棉麻韩版宽松高腰圆领背心裙亚麻连衣裙女夏季', 29, 8, 232, '2020-12-16 08:13:25', b'1', NULL, 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(0) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` bit(1) NOT NULL,
  `modify_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (12, 'admin', '123456', '2020-12-13', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (13, '张三丰', '888888', '2020-12-13', 1, NULL, NULL, b'1', '2020-12-17 15:34:38', 1);
INSERT INTO `users` VALUES (15, '黄药师', '888888', '1999-10-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (16, '洪七公', '111111', '2000-10-10', 1, NULL, NULL, b'1', NULL, 1);
INSERT INTO `users` VALUES (17, '欧阳锋', '888888', '1998-10-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (18, '南帝', '888888', '1999-12-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (19, '周伯通', '888888', '1998-10-23', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (20, '张无忌', '654321', '1999-12-13', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (21, '乔峰', '999999', '2002-10-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (22, '段誉', '444444', '2001-10-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (23, '郭靖', '888888', '2020-10-10', 1, NULL, NULL, b'1', '2020-12-17 15:34:40', 2);
INSERT INTO `users` VALUES (24, '黄蓉', '888888', '2001-10-10', 1, NULL, NULL, b'1', '2020-12-17 15:34:41', 1);
INSERT INTO `users` VALUES (27, '杨过', '888888', '1997-12-13', 1, NULL, NULL, b'1', '2020-12-17 15:34:41', 1);
INSERT INTO `users` VALUES (28, '小龙女', '888888', '1999-10-10', 1, NULL, NULL, b'1', '2020-12-17 15:34:42', 1);
INSERT INTO `users` VALUES (29, '金轮法王', '888888', '2000-10-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (30, '韦小宝', '888888', '1998-10-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (31, '李莫愁', '888888', '1999-12-10', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (32, '风清扬', '888888', '1998-10-23', 1, NULL, NULL, b'1', NULL, 0);
INSERT INTO `users` VALUES (33, 'zhangsan', '666888', NULL, 0, NULL, '2020-12-14 15:16:11', b'1', NULL, 0);
INSERT INTO `users` VALUES (34, 'lisi', '444444', NULL, 0, NULL, '2020-12-14 15:29:41', b'1', NULL, 0);
INSERT INTO `users` VALUES (35, '宋小宝', '555555', NULL, 0, NULL, '2020-12-14 15:30:18', b'1', NULL, 0);
INSERT INTO `users` VALUES (36, '小沈阳', '222222', NULL, 0, NULL, '2020-12-15 08:14:39', b'1', NULL, 0);
INSERT INTO `users` VALUES (37, '张飞', '444444', NULL, 0, NULL, '2020-12-17 15:30:23', b'1', NULL, 0);
INSERT INTO `users` VALUES (38, '张飞22', '444444', NULL, 0, NULL, '2020-12-17 15:31:10', b'1', NULL, 0);
INSERT INTO `users` VALUES (39, '赵云1', '33333', NULL, 0, NULL, '2020-12-17 15:31:53', b'1', NULL, 0);
INSERT INTO `users` VALUES (40, '赵云2', '33333', NULL, 0, NULL, '2020-12-17 15:31:56', b'1', NULL, 0);
INSERT INTO `users` VALUES (41, 'messi', '123456', NULL, 0, 'ebaf1da8-f2c4-4c03-8168-7d7b0b348c5b', '2020-12-18 15:24:12', b'1', NULL, 0);
INSERT INTO `users` VALUES (42, '张四丰', '123456', NULL, 0, '8d0012dc-301c-43f8-8697-e817e32fd098', '2020-12-18 15:28:06', b'1', NULL, 0);
INSERT INTO `users` VALUES (43, '管理员爷爷', '123456', NULL, 0, '0c4639cc-a2ed-485c-94c9-6aeaac7b7ef4', '2020-12-18 15:30:14', b'1', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
