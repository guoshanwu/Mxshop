/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : mxshop

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/03/2020 17:04:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissions_group_id_b120cbf9`(`group_id`) USING BTREE,
  INDEX `auth_group_permissions_permission_id_84c5c92e`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  INDEX `auth_permission_content_type_id_2f476e4b`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 短信验证', 6, 'add_verifycode');
INSERT INTO `auth_permission` VALUES (22, 'Can change 短信验证', 6, 'change_verifycode');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 短信验证', 6, 'delete_verifycode');
INSERT INTO `auth_permission` VALUES (24, 'Can view 短信验证', 6, 'view_verifycode');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户信息', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户信息', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户信息', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户信息', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (29, 'Can add 商品信息', 8, 'add_goods');
INSERT INTO `auth_permission` VALUES (30, 'Can change 商品信息', 8, 'change_goods');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 商品信息', 8, 'delete_goods');
INSERT INTO `auth_permission` VALUES (32, 'Can view 商品信息', 8, 'view_goods');
INSERT INTO `auth_permission` VALUES (33, 'Can add 商品类别', 9, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (34, 'Can change 商品类别', 9, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 商品类别', 9, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (36, 'Can view 商品类别', 9, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (37, 'Can add 热搜排行', 10, 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES (38, 'Can change 热搜排行', 10, 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 热搜排行', 10, 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES (40, 'Can view 热搜排行', 10, 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES (41, 'Can add 首页广告', 11, 'add_indexad');
INSERT INTO `auth_permission` VALUES (42, 'Can change 首页广告', 11, 'change_indexad');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 首页广告', 11, 'delete_indexad');
INSERT INTO `auth_permission` VALUES (44, 'Can view 首页广告', 11, 'view_indexad');
INSERT INTO `auth_permission` VALUES (45, 'Can add 商品轮播', 12, 'add_goodsimage');
INSERT INTO `auth_permission` VALUES (46, 'Can change 商品轮播', 12, 'change_goodsimage');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 商品轮播', 12, 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES (48, 'Can view 商品轮播', 12, 'view_goodsimage');
INSERT INTO `auth_permission` VALUES (49, 'Can add 宣传品牌', 13, 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (50, 'Can change 宣传品牌', 13, 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 宣传品牌', 13, 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (52, 'Can view 宣传品牌', 13, 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (53, 'Can add 首页轮播', 14, 'add_banner');
INSERT INTO `auth_permission` VALUES (54, 'Can change 首页轮播', 14, 'change_banner');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 首页轮播', 14, 'delete_banner');
INSERT INTO `auth_permission` VALUES (56, 'Can view 首页轮播', 14, 'view_banner');
INSERT INTO `auth_permission` VALUES (57, 'Can add 订单商品', 15, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (58, 'Can change 订单商品', 15, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 订单商品', 15, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (60, 'Can view 订单商品', 15, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (61, 'Can add 订单信息', 16, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (62, 'Can change 订单信息', 16, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 订单信息', 16, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (64, 'Can view 订单信息', 16, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (65, 'Can add 购物车喵', 17, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (66, 'Can change 购物车喵', 17, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 购物车喵', 17, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (68, 'Can view 购物车喵', 17, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (69, 'Can add 收货地址', 18, 'add_useraddress');
INSERT INTO `auth_permission` VALUES (70, 'Can change 收货地址', 18, 'change_useraddress');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 收货地址', 18, 'delete_useraddress');
INSERT INTO `auth_permission` VALUES (72, 'Can view 收货地址', 18, 'view_useraddress');
INSERT INTO `auth_permission` VALUES (73, 'Can add 用户收藏', 19, 'add_userfav');
INSERT INTO `auth_permission` VALUES (74, 'Can change 用户收藏', 19, 'change_userfav');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 用户收藏', 19, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用户收藏', 19, 'view_userfav');
INSERT INTO `auth_permission` VALUES (77, 'Can add 用户留言', 20, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (78, 'Can change 用户留言', 20, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 用户留言', 20, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (80, 'Can view 用户留言', 20, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (81, 'Can add Bookmark', 21, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (82, 'Can change Bookmark', 21, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Bookmark', 21, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can view Bookmark', 21, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can add log entry', 24, 'add_log');
INSERT INTO `auth_permission` VALUES (94, 'Can change log entry', 24, 'change_log');
INSERT INTO `auth_permission` VALUES (95, 'Can delete log entry', 24, 'delete_log');
INSERT INTO `auth_permission` VALUES (96, 'Can view log entry', 24, 'view_log');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (8, 'goods', 'goods');
INSERT INTO `django_content_type` VALUES (9, 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES (10, 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES (11, 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES (12, 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES (13, 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES (14, 'goods', 'banner');
INSERT INTO `django_content_type` VALUES (15, 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES (16, 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES (17, 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES (18, 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES (19, 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES (20, 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'log');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-02-18 00:06:11.150237');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-02-18 00:06:11.245242');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-02-18 00:06:11.289245');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-02-18 00:06:11.336247');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-02-18 00:06:11.343248');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-02-18 00:06:11.350248');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-02-18 00:06:11.357248');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-02-18 00:06:11.358248');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-02-18 00:06:11.365249');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-02-18 00:06:11.372249');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-02-18 00:06:11.380250');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-02-18 00:06:11.390250');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-02-18 00:06:11.397251');
INSERT INTO `django_migrations` VALUES (14, 'users', '0001_initial', '2020-02-18 00:06:11.447254');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2020-02-18 00:06:11.506257');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2020-02-18 00:06:11.534259');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-18 00:06:11.544259');
INSERT INTO `django_migrations` VALUES (18, 'goods', '0001_initial', '2020-02-18 00:06:11.699268');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2020-02-18 00:06:11.758271');
INSERT INTO `django_migrations` VALUES (20, 'trade', '0001_initial', '2020-02-18 00:06:11.796274');
INSERT INTO `django_migrations` VALUES (21, 'trade', '0002_auto_20200218_0001', '2020-02-18 00:06:11.922281');
INSERT INTO `django_migrations` VALUES (22, 'user_operation', '0001_initial', '2020-02-18 00:06:11.964283');
INSERT INTO `django_migrations` VALUES (23, 'user_operation', '0002_auto_20200218_0001', '2020-02-18 00:06:12.091290');
INSERT INTO `django_migrations` VALUES (24, 'xadmin', '0001_initial', '2020-02-18 14:53:22.972707');
INSERT INTO `django_migrations` VALUES (25, 'xadmin', '0002_log', '2020-02-18 14:53:23.095714');
INSERT INTO `django_migrations` VALUES (26, 'xadmin', '0003_auto_20160715_0100', '2020-02-18 14:53:23.141717');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('h77qt6k2ykr9w6j9f03obvl74dmw46nn', 'NjY1OGU4MTRiZjc2OWZmN2Y2OTY1MDQ5ZDExMzJkZjYzOTFmZmI3MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjIwN2RiODY2NDRmZmFiMGJkZTk0NDI4MWJhM2YyZDhmNzQ2ZThkIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2020-03-06 17:32:39.544599');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_banner_goods_id_99e23129`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goods_category_id_da3507dd`(`category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES (1, '', '新鲜水果甜蜜香脆单果约800克', 0, 0, 0, 0, 232, 156, '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/1_P_1449024889889.jpg', 0, 0, '2020-02-20 13:12:49.637169', 20);
INSERT INTO `goods_goods` VALUES (2, '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', 0, 0, 0, 0, 106, 88, '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/2_P_1448945810202.jpg', 0, 0, '2020-02-20 13:12:49.692172', 7);
INSERT INTO `goods_goods` VALUES (3, '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', 0, 0, 0, 0, 286, 238, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/7_P_1448945104883.jpg', 0, 0, '2020-02-20 13:12:49.696172', 15);
INSERT INTO `goods_goods` VALUES (4, '', '日本蒜蓉粉丝扇贝270克6只装', 0, 0, 0, 0, 156, 108, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/47_P_1448946213263.jpg', 0, 0, '2020-02-20 13:12:49.699172', 20);
INSERT INTO `goods_goods` VALUES (5, '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', 0, 0, 0, 0, 106, 88, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/10_P_1448944572085.jpg', 0, 0, '2020-02-20 13:12:49.704173', 7);
INSERT INTO `goods_goods` VALUES (6, '', '乌拉圭进口牛肉卷特级肥牛卷', 0, 0, 0, 0, 90, 75, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/4_P_1448945381985.jpg', 0, 0, '2020-02-20 13:12:49.708173', 21);
INSERT INTO `goods_goods` VALUES (7, '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', 0, 0, 0, 0, 150, 125, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/8_P_1448945032810.jpg', 0, 0, '2020-02-20 13:12:49.711173', 23);
INSERT INTO `goods_goods` VALUES (8, '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/11_P_1448944388277.jpg', 0, 0, '2020-02-20 13:12:49.715173', 7);
INSERT INTO `goods_goods` VALUES (9, '', '潮香村澳洲进口牛排家庭团购套餐20片', 0, 0, 0, 0, 239, 199, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/6_P_1448945167279.jpg', 0, 0, '2020-02-20 13:12:49.720174', 22);
INSERT INTO `goods_goods` VALUES (10, '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', 0, 0, 0, 0, 202, 168, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/9_P_1448944791617.jpg', 0, 0, '2020-02-20 13:12:49.723174', 20);
INSERT INTO `goods_goods` VALUES (11, '', '澳洲进口牛尾巴300g新鲜肥牛肉', 0, 0, 0, 0, 306, 255, '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/3_P_1448945490837.jpg', 0, 0, '2020-02-20 13:12:49.728174', 2);
INSERT INTO `goods_goods` VALUES (12, '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', 0, 0, 0, 0, 126, 88, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/48_P_1448943988970.jpg', 0, 0, '2020-02-20 13:12:49.730174', 7);
INSERT INTO `goods_goods` VALUES (13, '', '澳洲进口安格斯牛切片上脑牛排1000g', 0, 0, 0, 0, 144, 120, '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/5_P_1448945270390.jpg', 0, 0, '2020-02-20 13:12:49.734174', 12);
INSERT INTO `goods_goods` VALUES (14, '', '帐篷出租', 0, 0, 0, 0, 120, 100, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'images/201705/goods_img/53_P_1495068879687.jpg', 0, 0, '2020-02-20 13:12:49.737175', 21);
INSERT INTO `goods_goods` VALUES (15, '', '52度茅台集团国隆双喜酒500mlx6', 0, 0, 0, 0, 23, 19, '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/16_P_1448947194687.jpg', 0, 0, '2020-02-20 13:12:49.740175', 37);
INSERT INTO `goods_goods` VALUES (16, '', '52度水井坊臻酿八號500ml', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/14_P_1448947354031.jpg', 0, 0, '2020-02-20 13:12:49.742175', 36);
INSERT INTO `goods_goods` VALUES (17, '', '53度茅台仁酒500ml', 0, 0, 0, 0, 190, 158, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/12_P_1448947547989.jpg', 0, 0, '2020-02-20 13:12:49.745175', 32);
INSERT INTO `goods_goods` VALUES (18, '', '双响炮洋酒JimBeamwhiskey美国白占边', 0, 0, 0, 0, 38, 28, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/46_P_1448946598711.jpg', 0, 0, '2020-02-20 13:12:49.747175', 29);
INSERT INTO `goods_goods` VALUES (19, '', '西夫拉姆进口洋酒小酒版', 0, 0, 0, 0, 55, 46, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/21_P_1448946793276.jpg', 0, 0, '2020-02-20 13:12:49.750175', 36);
INSERT INTO `goods_goods` VALUES (20, '', '茅台53度飞天茅台500ml', 0, 0, 0, 0, 22, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/15_P_1448947257324.jpg', 0, 0, '2020-02-20 13:12:49.753176', 30);
INSERT INTO `goods_goods` VALUES (21, '', '52度兰陵·紫气东来1600mL山东名酒', 0, 0, 0, 0, 42, 35, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/13_P_1448947460386.jpg', 0, 0, '2020-02-20 13:12:49.755176', 29);
INSERT INTO `goods_goods` VALUES (22, '', 'JohnnieWalker尊尼获加黑牌威士忌', 0, 0, 0, 0, 24, 20, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/50_P_1448946543091.jpg', 0, 0, '2020-02-20 13:12:49.759176', 36);
INSERT INTO `goods_goods` VALUES (23, '', '人头马CLUB特优香槟干邑350ml', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/51_P_1448946466595.jpg', 0, 0, '2020-02-20 13:12:49.762176', 30);
INSERT INTO `goods_goods` VALUES (24, '', '张裕干红葡萄酒750ml*6支', 0, 0, 0, 0, 54, 45, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/17_P_1448947102246.jpg', 0, 0, '2020-02-20 13:12:49.764176', 31);
INSERT INTO `goods_goods` VALUES (25, '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', 0, 0, 0, 0, 46, 38, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/20_P_1448946850602.jpg', 0, 0, '2020-02-20 13:12:49.767176', 29);
INSERT INTO `goods_goods` VALUES (26, '', '法国原装进口圣贝克干红葡萄酒750ml', 0, 0, 0, 0, 82, 68, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/19_P_1448946951581.jpg', 0, 0, '2020-02-20 13:12:49.769176', 25);
INSERT INTO `goods_goods` VALUES (27, '', '法国百利威干红葡萄酒AOP级6支装', 0, 0, 0, 0, 67, 56, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/18_P_1448947011435.jpg', 0, 0, '2020-02-20 13:12:49.772177', 25);
INSERT INTO `goods_goods` VALUES (28, '', '芝华士12年苏格兰威士忌700ml', 0, 0, 0, 0, 71, 59, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/22_P_1448946729629.jpg', 0, 0, '2020-02-20 13:12:49.774177', 30);
INSERT INTO `goods_goods` VALUES (29, '', '深蓝伏特加巴维兰利口酒送预调酒', 0, 0, 0, 0, 31, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/45_P_1448946661303.jpg', 0, 0, '2020-02-20 13:12:49.776177', 36);
INSERT INTO `goods_goods` VALUES (30, '', '赣南脐橙特级果10斤装', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/32_P_1448948525620.jpg', 0, 0, '2020-02-20 13:12:49.778177', 62);
INSERT INTO `goods_goods` VALUES (31, '', '泰国菠萝蜜16-18斤1个装', 0, 0, 0, 0, 11, 9, '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/30_P_1448948663450.jpg', 0, 0, '2020-02-20 13:12:49.781177', 66);
INSERT INTO `goods_goods` VALUES (32, '', '四川双流草莓新鲜水果礼盒2盒', 0, 0, 0, 0, 22, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/31_P_1448948598947.jpg', 0, 0, '2020-02-20 13:12:49.784177', 70);
INSERT INTO `goods_goods` VALUES (33, '', '新鲜头茬非洲冰草冰菜', 0, 0, 0, 0, 67, 56, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/35_P_1448948333610.jpg', 0, 0, '2020-02-20 13:12:49.787178', 58);
INSERT INTO `goods_goods` VALUES (34, '', '仿真蔬菜水果果蔬菜模型', 0, 0, 0, 0, 6, 5, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/36_P_1448948234405.jpg', 0, 0, '2020-02-20 13:12:49.790178', 58);
INSERT INTO `goods_goods` VALUES (35, '', '现摘芭乐番石榴台湾珍珠芭乐', 0, 0, 0, 0, 28, 23, '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/33_P_1448948479966.jpg', 0, 0, '2020-02-20 13:12:49.793178', 62);
INSERT INTO `goods_goods` VALUES (36, '', '潍坊萝卜5斤/箱礼盒', 0, 0, 0, 0, 46, 38, '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/34_P_1448948399009.jpg', 0, 0, '2020-02-20 13:12:49.796178', 70);
INSERT INTO `goods_goods` VALUES (37, '', '休闲零食膨化食品焦糖/奶油/椒麻味', 0, 0, 0, 0, 154, 99, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/43_P_1448948762645.jpg', 0, 0, '2020-02-20 13:12:49.799178', 74);
INSERT INTO `goods_goods` VALUES (38, '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', 0, 0, 0, 0, 84, 70, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/38_P_1448949220255.jpg', 0, 0, '2020-02-20 13:12:49.801178', 105);
INSERT INTO `goods_goods` VALUES (39, '', '蒙牛特仑苏有机奶250ml×12盒', 0, 0, 0, 0, 70, 32, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/44_P_1448948850187.jpg', 0, 0, '2020-02-20 13:12:49.803178', 103);
INSERT INTO `goods_goods` VALUES (40, '', '1元支付测试商品', 0, 0, 0, 0, 1, 1, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'images/201511/goods_img/49_P_1448162819889.jpg', 0, 0, '2020-02-20 13:12:49.806179', 102);
INSERT INTO `goods_goods` VALUES (41, '', '德运全脂新鲜纯牛奶1L*10盒装整箱', 0, 0, 0, 0, 70, 58, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/40_P_1448949038702.jpg', 0, 0, '2020-02-20 13:12:49.809179', 103);
INSERT INTO `goods_goods` VALUES (42, '', '木糖醇红枣早餐奶即食豆奶粉538g', 0, 0, 0, 0, 38, 32, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/39_P_1448949115481.jpg', 0, 0, '2020-02-20 13:12:49.811179', 106);
INSERT INTO `goods_goods` VALUES (43, '', '高钙液体奶200ml*24盒', 0, 0, 0, 0, 26, 22, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/41_P_1448948980358.jpg', 0, 0, '2020-02-20 13:12:49.813179', 107);
INSERT INTO `goods_goods` VALUES (44, '', '新西兰进口全脂奶粉900g', 0, 0, 0, 0, 720, 600, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/37_P_1448949284365.jpg', 0, 0, '2020-02-20 13:12:49.815179', 104);
INSERT INTO `goods_goods` VALUES (45, '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/42_P_1448948895193.jpg', 0, 0, '2020-02-20 13:12:49.817179', 103);
INSERT INTO `goods_goods` VALUES (46, '', '维纳斯橄榄菜籽油5L/桶', 0, 0, 0, 0, 187, 156, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/27_P_1448947771805.jpg', 0, 0, '2020-02-20 13:12:49.819179', 51);
INSERT INTO `goods_goods` VALUES (47, '', '糙米450gx3包粮油米面', 0, 0, 0, 0, 18, 15, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/23_P_1448948070348.jpg', 0, 0, '2020-02-20 13:12:49.821179', 41);
INSERT INTO `goods_goods` VALUES (48, '', '精炼一级大豆油5L色拉油粮油食用油', 0, 0, 0, 0, 54, 45, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/26_P_1448947825754.jpg', 0, 0, '2020-02-20 13:12:49.824180', 56);
INSERT INTO `goods_goods` VALUES (49, '', '橄榄玉米油5L*2桶', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/28_P_1448947699948.jpg', 0, 0, '2020-02-20 13:12:49.826180', 54);
INSERT INTO `goods_goods` VALUES (50, '', '山西黑米农家黑米4斤', 0, 0, 0, 0, 11, 9, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/24_P_1448948023823.jpg', 0, 0, '2020-02-20 13:12:49.828180', 55);
INSERT INTO `goods_goods` VALUES (51, '', '稻园牌稻米油粮油米糠油绿色植物油', 0, 0, 0, 0, 14, 12, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/25_P_1448947875346.jpg', 0, 0, '2020-02-20 13:12:49.831180', 47);
INSERT INTO `goods_goods` VALUES (52, '', '融氏纯玉米胚芽油5l桶', 0, 0, 0, 0, 14, 12, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/29_P_1448947631994.jpg', 0, 0, '2020-02-20 13:12:49.833180', 41);

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsbrand_category_id_6fc84a73`(`category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodscategory_parent_category_id_ccec2509`(`parent_category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES (1, '生鲜食品', 'sxsp', '', 1, 0, '2020-02-20 13:07:32.939055', NULL);
INSERT INTO `goods_goodscategory` VALUES (2, '精品肉类', 'jprl', '', 2, 0, '2020-02-20 13:07:33.095064', 1);
INSERT INTO `goods_goodscategory` VALUES (3, '羊肉', 'yr', '', 3, 0, '2020-02-20 13:07:33.097064', 2);
INSERT INTO `goods_goodscategory` VALUES (4, '禽类', 'ql', '', 3, 0, '2020-02-20 13:07:33.098064', 2);
INSERT INTO `goods_goodscategory` VALUES (5, '猪肉', 'zr', '', 3, 0, '2020-02-20 13:07:33.099064', 2);
INSERT INTO `goods_goodscategory` VALUES (6, '牛肉', 'nr', '', 3, 0, '2020-02-20 13:07:33.101064', 2);
INSERT INTO `goods_goodscategory` VALUES (7, '海鲜水产', 'hxsc', '', 2, 0, '2020-02-20 13:07:33.102064', 1);
INSERT INTO `goods_goodscategory` VALUES (8, '参鲍', 'cb', '', 3, 0, '2020-02-20 13:07:33.103064', 7);
INSERT INTO `goods_goodscategory` VALUES (9, '鱼', 'yu', '', 3, 0, '2020-02-20 13:07:33.105064', 7);
INSERT INTO `goods_goodscategory` VALUES (10, '虾', 'xia', '', 3, 0, '2020-02-20 13:07:33.106064', 7);
INSERT INTO `goods_goodscategory` VALUES (11, '蟹/贝', 'xb', '', 3, 0, '2020-02-20 13:07:33.107064', 7);
INSERT INTO `goods_goodscategory` VALUES (12, '蛋制品', 'dzp', '', 2, 0, '2020-02-20 13:07:33.108065', 1);
INSERT INTO `goods_goodscategory` VALUES (13, '松花蛋/咸鸭蛋', 'xhd_xyd', '', 3, 0, '2020-02-20 13:07:33.110065', 12);
INSERT INTO `goods_goodscategory` VALUES (14, '鸡蛋', 'jd', '', 3, 0, '2020-02-20 13:07:33.111065', 12);
INSERT INTO `goods_goodscategory` VALUES (15, '叶菜类', 'ycl', '', 2, 0, '2020-02-20 13:07:33.112065', 1);
INSERT INTO `goods_goodscategory` VALUES (16, '生菜', 'sc', '', 3, 0, '2020-02-20 13:07:33.113065', 15);
INSERT INTO `goods_goodscategory` VALUES (17, '菠菜', 'bc', '', 3, 0, '2020-02-20 13:07:33.114065', 15);
INSERT INTO `goods_goodscategory` VALUES (18, '圆椒', 'yj', '', 3, 0, '2020-02-20 13:07:33.116065', 15);
INSERT INTO `goods_goodscategory` VALUES (19, '西兰花', 'xlh', '', 3, 0, '2020-02-20 13:07:33.117065', 15);
INSERT INTO `goods_goodscategory` VALUES (20, '根茎类', 'gjl', '', 2, 0, '2020-02-20 13:07:33.118065', 1);
INSERT INTO `goods_goodscategory` VALUES (21, '茄果类', 'qgl', '', 2, 0, '2020-02-20 13:07:33.119065', 1);
INSERT INTO `goods_goodscategory` VALUES (22, '菌菇类', 'jgl', '', 2, 0, '2020-02-20 13:07:33.120065', 1);
INSERT INTO `goods_goodscategory` VALUES (23, '进口生鲜', 'jksx', '', 2, 0, '2020-02-20 13:07:33.121065', 1);
INSERT INTO `goods_goodscategory` VALUES (24, '酒水饮料', 'jsyl', '', 1, 0, '2020-02-20 13:07:33.122065', NULL);
INSERT INTO `goods_goodscategory` VALUES (25, '白酒', 'bk', '', 2, 0, '2020-02-20 13:07:33.123065', 24);
INSERT INTO `goods_goodscategory` VALUES (26, '五粮液', 'wly', '', 3, 0, '2020-02-20 13:07:33.124065', 25);
INSERT INTO `goods_goodscategory` VALUES (27, '泸州老窖', 'lzlj', '', 3, 0, '2020-02-20 13:07:33.125065', 25);
INSERT INTO `goods_goodscategory` VALUES (28, '茅台', 'mt', '', 3, 0, '2020-02-20 13:07:33.126066', 25);
INSERT INTO `goods_goodscategory` VALUES (29, '葡萄酒', 'ptj', '', 2, 0, '2020-02-20 13:07:33.127066', 24);
INSERT INTO `goods_goodscategory` VALUES (30, '洋酒', 'yj', '', 2, 0, '2020-02-20 13:07:33.128066', 24);
INSERT INTO `goods_goodscategory` VALUES (31, '啤酒', 'pj', '', 2, 0, '2020-02-20 13:07:33.129066', 24);
INSERT INTO `goods_goodscategory` VALUES (32, '其他酒品', 'qtjp', '', 2, 0, '2020-02-20 13:07:33.130066', 24);
INSERT INTO `goods_goodscategory` VALUES (33, '其他品牌', 'qtpp', '', 3, 0, '2020-02-20 13:07:33.131066', 32);
INSERT INTO `goods_goodscategory` VALUES (34, '黄酒', 'hj', '', 3, 0, '2020-02-20 13:07:33.132066', 32);
INSERT INTO `goods_goodscategory` VALUES (35, '养生酒', 'ysj', '', 3, 0, '2020-02-20 13:07:33.133066', 32);
INSERT INTO `goods_goodscategory` VALUES (36, '饮料/水', 'yls', '', 2, 0, '2020-02-20 13:07:33.135066', 24);
INSERT INTO `goods_goodscategory` VALUES (37, '红酒', 'hj', '', 2, 0, '2020-02-20 13:07:33.136066', 24);
INSERT INTO `goods_goodscategory` VALUES (38, '白兰地', 'bld', '', 3, 0, '2020-02-20 13:07:33.137066', 37);
INSERT INTO `goods_goodscategory` VALUES (39, '威士忌', 'wsj', '', 3, 0, '2020-02-20 13:07:33.138066', 37);
INSERT INTO `goods_goodscategory` VALUES (40, '粮油副食', '粮油副食', '', 1, 0, '2020-02-20 13:07:33.138066', NULL);
INSERT INTO `goods_goodscategory` VALUES (41, '食用油', '食用油', '', 2, 0, '2020-02-20 13:07:33.139066', 40);
INSERT INTO `goods_goodscategory` VALUES (42, '其他食用油', '其他食用油', '', 3, 0, '2020-02-20 13:07:33.140066', 41);
INSERT INTO `goods_goodscategory` VALUES (43, '菜仔油', '菜仔油', '', 3, 0, '2020-02-20 13:07:33.140066', 41);
INSERT INTO `goods_goodscategory` VALUES (44, '花生油', '花生油', '', 3, 0, '2020-02-20 13:07:33.141066', 41);
INSERT INTO `goods_goodscategory` VALUES (45, '橄榄油', '橄榄油', '', 3, 0, '2020-02-20 13:07:33.142066', 41);
INSERT INTO `goods_goodscategory` VALUES (46, '礼盒', '礼盒', '', 3, 0, '2020-02-20 13:07:33.142066', 41);
INSERT INTO `goods_goodscategory` VALUES (47, '米面杂粮', '米面杂粮', '', 2, 0, '2020-02-20 13:07:33.143067', 40);
INSERT INTO `goods_goodscategory` VALUES (48, '面粉/面条', '面粉/面条', '', 3, 0, '2020-02-20 13:07:33.143067', 47);
INSERT INTO `goods_goodscategory` VALUES (49, '大米', '大米', '', 3, 0, '2020-02-20 13:07:33.144067', 47);
INSERT INTO `goods_goodscategory` VALUES (50, '意大利面', '意大利面', '', 3, 0, '2020-02-20 13:07:33.145067', 47);
INSERT INTO `goods_goodscategory` VALUES (51, '厨房调料', '厨房调料', '', 2, 0, '2020-02-20 13:07:33.145067', 40);
INSERT INTO `goods_goodscategory` VALUES (52, '调味油/汁', '调味油/汁', '', 3, 0, '2020-02-20 13:07:33.146067', 51);
INSERT INTO `goods_goodscategory` VALUES (53, '酱油/醋', '酱油/醋', '', 3, 0, '2020-02-20 13:07:33.146067', 51);
INSERT INTO `goods_goodscategory` VALUES (54, '南北干货', '南北干货', '', 2, 0, '2020-02-20 13:07:33.147067', 40);
INSERT INTO `goods_goodscategory` VALUES (55, '方便速食', '方便速食', '', 2, 0, '2020-02-20 13:07:33.148067', 40);
INSERT INTO `goods_goodscategory` VALUES (56, '调味品', '调味品', '', 2, 0, '2020-02-20 13:07:33.148067', 40);
INSERT INTO `goods_goodscategory` VALUES (57, '蔬菜水果', '蔬菜水果', '', 1, 0, '2020-02-20 13:07:33.149067', NULL);
INSERT INTO `goods_goodscategory` VALUES (58, '有机蔬菜', '有机蔬菜', '', 2, 0, '2020-02-20 13:07:33.150067', 57);
INSERT INTO `goods_goodscategory` VALUES (59, '西红柿', '西红柿', '', 3, 0, '2020-02-20 13:07:33.150067', 58);
INSERT INTO `goods_goodscategory` VALUES (60, '韭菜', '韭菜', '', 3, 0, '2020-02-20 13:07:33.151067', 58);
INSERT INTO `goods_goodscategory` VALUES (61, '青菜', '青菜', '', 3, 0, '2020-02-20 13:07:33.152067', 58);
INSERT INTO `goods_goodscategory` VALUES (62, '精选蔬菜', '精选蔬菜', '', 2, 0, '2020-02-20 13:07:33.152067', 57);
INSERT INTO `goods_goodscategory` VALUES (63, '甘蓝', '甘蓝', '', 3, 0, '2020-02-20 13:07:33.153067', 62);
INSERT INTO `goods_goodscategory` VALUES (64, '胡萝卜', '胡萝卜', '', 3, 0, '2020-02-20 13:07:33.154067', 62);
INSERT INTO `goods_goodscategory` VALUES (65, '黄瓜', '黄瓜', '', 3, 0, '2020-02-20 13:07:33.155067', 62);
INSERT INTO `goods_goodscategory` VALUES (66, '进口水果', '进口水果', '', 2, 0, '2020-02-20 13:07:33.155067', 57);
INSERT INTO `goods_goodscategory` VALUES (67, '火龙果', '火龙果', '', 3, 0, '2020-02-20 13:07:33.156067', 66);
INSERT INTO `goods_goodscategory` VALUES (68, '菠萝蜜', '菠萝蜜', '', 3, 0, '2020-02-20 13:07:33.157067', 66);
INSERT INTO `goods_goodscategory` VALUES (69, '奇异果', '奇异果', '', 3, 0, '2020-02-20 13:07:33.158067', 66);
INSERT INTO `goods_goodscategory` VALUES (70, '国产水果', '国产水果', '', 2, 0, '2020-02-20 13:07:33.159067', 57);
INSERT INTO `goods_goodscategory` VALUES (71, '水果礼盒', '水果礼盒', '', 3, 0, '2020-02-20 13:07:33.159067', 70);
INSERT INTO `goods_goodscategory` VALUES (72, '苹果', '苹果', '', 3, 0, '2020-02-20 13:07:33.160067', 70);
INSERT INTO `goods_goodscategory` VALUES (73, '雪梨', '雪梨', '', 3, 0, '2020-02-20 13:07:33.161068', 70);
INSERT INTO `goods_goodscategory` VALUES (74, '休闲食品', '休闲食品', '', 1, 0, '2020-02-20 13:07:33.162068', NULL);
INSERT INTO `goods_goodscategory` VALUES (75, '休闲零食', '休闲零食', '', 2, 0, '2020-02-20 13:07:33.162068', 74);
INSERT INTO `goods_goodscategory` VALUES (76, '果冻', '果冻', '', 3, 0, '2020-02-20 13:07:33.163068', 75);
INSERT INTO `goods_goodscategory` VALUES (77, '枣类', '枣类', '', 3, 0, '2020-02-20 13:07:33.163068', 75);
INSERT INTO `goods_goodscategory` VALUES (78, '蜜饯', '蜜饯', '', 3, 0, '2020-02-20 13:07:33.164068', 75);
INSERT INTO `goods_goodscategory` VALUES (79, '肉类零食', '肉类零食', '', 3, 0, '2020-02-20 13:07:33.165068', 75);
INSERT INTO `goods_goodscategory` VALUES (80, '坚果炒货', '坚果炒货', '', 3, 0, '2020-02-20 13:07:33.165068', 75);
INSERT INTO `goods_goodscategory` VALUES (81, '糖果', '糖果', '', 2, 0, '2020-02-20 13:07:33.166068', 74);
INSERT INTO `goods_goodscategory` VALUES (82, '创意喜糖', '创意喜糖', '', 3, 0, '2020-02-20 13:07:33.167068', 81);
INSERT INTO `goods_goodscategory` VALUES (83, '口香糖', '口香糖', '', 3, 0, '2020-02-20 13:07:33.167068', 81);
INSERT INTO `goods_goodscategory` VALUES (84, '软糖', '软糖', '', 3, 0, '2020-02-20 13:07:33.168068', 81);
INSERT INTO `goods_goodscategory` VALUES (85, '棒棒糖', '棒棒糖', '', 3, 0, '2020-02-20 13:07:33.168068', 81);
INSERT INTO `goods_goodscategory` VALUES (86, '巧克力', '巧克力', '', 2, 0, '2020-02-20 13:07:33.169068', 74);
INSERT INTO `goods_goodscategory` VALUES (87, '夹心巧克力', '夹心巧克力', '', 3, 0, '2020-02-20 13:07:33.169068', 86);
INSERT INTO `goods_goodscategory` VALUES (88, '白巧克力', '白巧克力', '', 3, 0, '2020-02-20 13:07:33.170068', 86);
INSERT INTO `goods_goodscategory` VALUES (89, '松露巧克力', '松露巧克力', '', 3, 0, '2020-02-20 13:07:33.170068', 86);
INSERT INTO `goods_goodscategory` VALUES (90, '黑巧克力', '黑巧克力', '', 3, 0, '2020-02-20 13:07:33.171068', 86);
INSERT INTO `goods_goodscategory` VALUES (91, '肉干肉脯/豆干', '肉干肉脯/豆干', '', 2, 0, '2020-02-20 13:07:33.171068', 74);
INSERT INTO `goods_goodscategory` VALUES (92, '牛肉干', '牛肉干', '', 3, 0, '2020-02-20 13:07:33.172068', 91);
INSERT INTO `goods_goodscategory` VALUES (93, '猪肉脯', '猪肉脯', '', 3, 0, '2020-02-20 13:07:33.173068', 91);
INSERT INTO `goods_goodscategory` VALUES (94, '牛肉粒', '牛肉粒', '', 3, 0, '2020-02-20 13:07:33.173068', 91);
INSERT INTO `goods_goodscategory` VALUES (95, '猪肉干', '猪肉干', '', 3, 0, '2020-02-20 13:07:33.174068', 91);
INSERT INTO `goods_goodscategory` VALUES (96, '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', 2, 0, '2020-02-20 13:07:33.174068', 74);
INSERT INTO `goods_goodscategory` VALUES (97, '鱿鱼足', '鱿鱼足', '', 3, 0, '2020-02-20 13:07:33.175068', 96);
INSERT INTO `goods_goodscategory` VALUES (98, '鱿鱼丝', '鱿鱼丝', '', 3, 0, '2020-02-20 13:07:33.175068', 96);
INSERT INTO `goods_goodscategory` VALUES (99, '墨鱼/乌贼', '墨鱼/乌贼', '', 3, 0, '2020-02-20 13:07:33.176068', 96);
INSERT INTO `goods_goodscategory` VALUES (100, '鱿鱼仔', '鱿鱼仔', '', 3, 0, '2020-02-20 13:07:33.176068', 96);
INSERT INTO `goods_goodscategory` VALUES (101, '鱿鱼片', '鱿鱼片', '', 3, 0, '2020-02-20 13:07:33.177068', 96);
INSERT INTO `goods_goodscategory` VALUES (102, '奶类食品', '奶类食品', '', 1, 0, '2020-02-20 13:07:33.177068', NULL);
INSERT INTO `goods_goodscategory` VALUES (103, '进口奶品', '进口奶品', '', 2, 0, '2020-02-20 13:07:33.178069', 102);
INSERT INTO `goods_goodscategory` VALUES (104, '国产奶品', '国产奶品', '', 2, 0, '2020-02-20 13:07:33.178069', 102);
INSERT INTO `goods_goodscategory` VALUES (105, '奶粉', '奶粉', '', 2, 0, '2020-02-20 13:07:33.179069', 102);
INSERT INTO `goods_goodscategory` VALUES (106, '有机奶', '有机奶', '', 2, 0, '2020-02-20 13:07:33.179069', 102);
INSERT INTO `goods_goodscategory` VALUES (107, '原料奶', '原料奶', '', 2, 0, '2020-02-20 13:07:33.180069', 102);
INSERT INTO `goods_goodscategory` VALUES (108, '天然干货', '天然干货', '', 1, 0, '2020-02-20 13:07:33.180069', NULL);
INSERT INTO `goods_goodscategory` VALUES (109, '菌菇类', '菌菇类', '', 2, 0, '2020-02-20 13:07:33.181069', 108);
INSERT INTO `goods_goodscategory` VALUES (110, '腌干海产', '腌干海产', '', 2, 0, '2020-02-20 13:07:33.181069', 108);
INSERT INTO `goods_goodscategory` VALUES (111, '汤料', '汤料', '', 2, 0, '2020-02-20 13:07:33.182069', 108);
INSERT INTO `goods_goodscategory` VALUES (112, '豆类', '豆类', '', 2, 0, '2020-02-20 13:07:33.182069', 108);
INSERT INTO `goods_goodscategory` VALUES (113, '干菜/菜干', '干菜/菜干', '', 2, 0, '2020-02-20 13:07:33.183069', 108);
INSERT INTO `goods_goodscategory` VALUES (114, '干果/果干', '干果/果干', '', 2, 0, '2020-02-20 13:07:33.183069', 108);
INSERT INTO `goods_goodscategory` VALUES (115, '豆制品', '豆制品', '', 2, 0, '2020-02-20 13:07:33.184069', 108);
INSERT INTO `goods_goodscategory` VALUES (116, '腊味', '腊味', '', 2, 0, '2020-02-20 13:07:33.185069', 108);
INSERT INTO `goods_goodscategory` VALUES (117, '精选茗茶', '精选茗茶', '', 1, 0, '2020-02-20 13:07:33.185069', NULL);
INSERT INTO `goods_goodscategory` VALUES (118, '白茶', '白茶', '', 2, 0, '2020-02-20 13:07:33.186069', 117);
INSERT INTO `goods_goodscategory` VALUES (119, '红茶', '红茶', '', 2, 0, '2020-02-20 13:07:33.186069', 117);
INSERT INTO `goods_goodscategory` VALUES (120, '绿茶', '绿茶', '', 2, 0, '2020-02-20 13:07:33.187069', 117);

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsimage_goods_id_08cb23b1`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES (1, 'goods/images/1_P_1449024889889.jpg', '2020-02-20 13:12:49.687172', 1);
INSERT INTO `goods_goodsimage` VALUES (2, 'goods/images/1_P_1449024889264.jpg', '2020-02-20 13:12:49.688172', 1);
INSERT INTO `goods_goodsimage` VALUES (3, 'goods/images/1_P_1449024889726.jpg', '2020-02-20 13:12:49.689172', 1);
INSERT INTO `goods_goodsimage` VALUES (4, 'goods/images/1_P_1449024889018.jpg', '2020-02-20 13:12:49.690172', 1);
INSERT INTO `goods_goodsimage` VALUES (5, 'goods/images/1_P_1449024889287.jpg', '2020-02-20 13:12:49.691172', 1);
INSERT INTO `goods_goodsimage` VALUES (6, 'goods/images/2_P_1448945810202.jpg', '2020-02-20 13:12:49.694172', 2);
INSERT INTO `goods_goodsimage` VALUES (7, 'goods/images/2_P_1448945810814.jpg', '2020-02-20 13:12:49.695172', 2);
INSERT INTO `goods_goodsimage` VALUES (8, 'goods/images/7_P_1448945104883.jpg', '2020-02-20 13:12:49.698172', 3);
INSERT INTO `goods_goodsimage` VALUES (9, 'goods/images/7_P_1448945104734.jpg', '2020-02-20 13:12:49.699172', 3);
INSERT INTO `goods_goodsimage` VALUES (10, 'goods/images/47_P_1448946213263.jpg', '2020-02-20 13:12:49.702173', 4);
INSERT INTO `goods_goodsimage` VALUES (11, 'goods/images/47_P_1448946213157.jpg', '2020-02-20 13:12:49.703173', 4);
INSERT INTO `goods_goodsimage` VALUES (12, 'goods/images/10_P_1448944572085.jpg', '2020-02-20 13:12:49.706173', 5);
INSERT INTO `goods_goodsimage` VALUES (13, 'goods/images/10_P_1448944572532.jpg', '2020-02-20 13:12:49.707173', 5);
INSERT INTO `goods_goodsimage` VALUES (14, 'goods/images/10_P_1448944572872.jpg', '2020-02-20 13:12:49.707173', 5);
INSERT INTO `goods_goodsimage` VALUES (15, 'goods/images/4_P_1448945381985.jpg', '2020-02-20 13:12:49.710173', 6);
INSERT INTO `goods_goodsimage` VALUES (16, 'goods/images/4_P_1448945381013.jpg', '2020-02-20 13:12:49.711173', 6);
INSERT INTO `goods_goodsimage` VALUES (17, 'goods/images/8_P_1448945032810.jpg', '2020-02-20 13:12:49.714173', 7);
INSERT INTO `goods_goodsimage` VALUES (18, 'goods/images/8_P_1448945032646.jpg', '2020-02-20 13:12:49.714173', 7);
INSERT INTO `goods_goodsimage` VALUES (19, 'goods/images/11_P_1448944388277.jpg', '2020-02-20 13:12:49.718174', 8);
INSERT INTO `goods_goodsimage` VALUES (20, 'goods/images/11_P_1448944388034.jpg', '2020-02-20 13:12:49.718174', 8);
INSERT INTO `goods_goodsimage` VALUES (21, 'goods/images/11_P_1448944388201.jpg', '2020-02-20 13:12:49.719174', 8);
INSERT INTO `goods_goodsimage` VALUES (22, 'goods/images/6_P_1448945167279.jpg', '2020-02-20 13:12:49.722174', 9);
INSERT INTO `goods_goodsimage` VALUES (23, 'goods/images/6_P_1448945167015.jpg', '2020-02-20 13:12:49.722174', 9);
INSERT INTO `goods_goodsimage` VALUES (24, 'goods/images/9_P_1448944791617.jpg', '2020-02-20 13:12:49.725174', 10);
INSERT INTO `goods_goodsimage` VALUES (25, 'goods/images/9_P_1448944791129.jpg', '2020-02-20 13:12:49.726174', 10);
INSERT INTO `goods_goodsimage` VALUES (26, 'goods/images/9_P_1448944791077.jpg', '2020-02-20 13:12:49.726174', 10);
INSERT INTO `goods_goodsimage` VALUES (27, 'goods/images/9_P_1448944791229.jpg', '2020-02-20 13:12:49.727174', 10);
INSERT INTO `goods_goodsimage` VALUES (28, 'goods/images/3_P_1448945490837.jpg', '2020-02-20 13:12:49.729174', 11);
INSERT INTO `goods_goodsimage` VALUES (29, 'goods/images/3_P_1448945490084.jpg', '2020-02-20 13:12:49.730174', 11);
INSERT INTO `goods_goodsimage` VALUES (30, 'goods/images/48_P_1448943988970.jpg', '2020-02-20 13:12:49.732174', 12);
INSERT INTO `goods_goodsimage` VALUES (31, 'goods/images/48_P_1448943988898.jpg', '2020-02-20 13:12:49.733174', 12);
INSERT INTO `goods_goodsimage` VALUES (32, 'goods/images/48_P_1448943988439.jpg', '2020-02-20 13:12:49.733174', 12);
INSERT INTO `goods_goodsimage` VALUES (33, 'goods/images/5_P_1448945270390.jpg', '2020-02-20 13:12:49.736175', 13);
INSERT INTO `goods_goodsimage` VALUES (34, 'goods/images/5_P_1448945270067.jpg', '2020-02-20 13:12:49.736175', 13);
INSERT INTO `goods_goodsimage` VALUES (35, 'goods/images/5_P_1448945270432.jpg', '2020-02-20 13:12:49.737175', 13);
INSERT INTO `goods_goodsimage` VALUES (36, 'images/201705/goods_img/53_P_1495068879687.jpg', '2020-02-20 13:12:49.739175', 14);
INSERT INTO `goods_goodsimage` VALUES (37, 'goods/images/16_P_1448947194687.jpg', '2020-02-20 13:12:49.741175', 15);
INSERT INTO `goods_goodsimage` VALUES (38, 'goods/images/14_P_1448947354031.jpg', '2020-02-20 13:12:49.744175', 16);
INSERT INTO `goods_goodsimage` VALUES (39, 'goods/images/14_P_1448947354433.jpg', '2020-02-20 13:12:49.744175', 16);
INSERT INTO `goods_goodsimage` VALUES (40, 'goods/images/12_P_1448947547989.jpg', '2020-02-20 13:12:49.747175', 17);
INSERT INTO `goods_goodsimage` VALUES (41, 'goods/images/46_P_1448946598711.jpg', '2020-02-20 13:12:49.749175', 18);
INSERT INTO `goods_goodsimage` VALUES (42, 'goods/images/46_P_1448946598301.jpg', '2020-02-20 13:12:49.749175', 18);
INSERT INTO `goods_goodsimage` VALUES (43, 'goods/images/21_P_1448946793276.jpg', '2020-02-20 13:12:49.752176', 19);
INSERT INTO `goods_goodsimage` VALUES (44, 'goods/images/21_P_1448946793153.jpg', '2020-02-20 13:12:49.752176', 19);
INSERT INTO `goods_goodsimage` VALUES (45, 'goods/images/15_P_1448947257324.jpg', '2020-02-20 13:12:49.754176', 20);
INSERT INTO `goods_goodsimage` VALUES (46, 'goods/images/15_P_1448947257580.jpg', '2020-02-20 13:12:49.755176', 20);
INSERT INTO `goods_goodsimage` VALUES (47, 'goods/images/13_P_1448947460386.jpg', '2020-02-20 13:12:49.757176', 21);
INSERT INTO `goods_goodsimage` VALUES (48, 'goods/images/13_P_1448947460276.jpg', '2020-02-20 13:12:49.758176', 21);
INSERT INTO `goods_goodsimage` VALUES (49, 'goods/images/13_P_1448947460353.jpg', '2020-02-20 13:12:49.758176', 21);
INSERT INTO `goods_goodsimage` VALUES (50, 'goods/images/50_P_1448946543091.jpg', '2020-02-20 13:12:49.761176', 22);
INSERT INTO `goods_goodsimage` VALUES (51, 'goods/images/50_P_1448946542182.jpg', '2020-02-20 13:12:49.761176', 22);
INSERT INTO `goods_goodsimage` VALUES (52, 'goods/images/51_P_1448946466595.jpg', '2020-02-20 13:12:49.763176', 23);
INSERT INTO `goods_goodsimage` VALUES (53, 'goods/images/51_P_1448946466208.jpg', '2020-02-20 13:12:49.764176', 23);
INSERT INTO `goods_goodsimage` VALUES (54, 'goods/images/17_P_1448947102246.jpg', '2020-02-20 13:12:49.766176', 24);
INSERT INTO `goods_goodsimage` VALUES (55, 'goods/images/20_P_1448946850602.jpg', '2020-02-20 13:12:49.769176', 25);
INSERT INTO `goods_goodsimage` VALUES (56, 'goods/images/19_P_1448946951581.jpg', '2020-02-20 13:12:49.771177', 26);
INSERT INTO `goods_goodsimage` VALUES (57, 'goods/images/19_P_1448946951726.jpg', '2020-02-20 13:12:49.771177', 26);
INSERT INTO `goods_goodsimage` VALUES (58, 'goods/images/18_P_1448947011435.jpg', '2020-02-20 13:12:49.773177', 27);
INSERT INTO `goods_goodsimage` VALUES (59, 'goods/images/22_P_1448946729629.jpg', '2020-02-20 13:12:49.776177', 28);
INSERT INTO `goods_goodsimage` VALUES (60, 'goods/images/45_P_1448946661303.jpg', '2020-02-20 13:12:49.778177', 29);
INSERT INTO `goods_goodsimage` VALUES (61, 'goods/images/32_P_1448948525620.jpg', '2020-02-20 13:12:49.780177', 30);
INSERT INTO `goods_goodsimage` VALUES (62, 'goods/images/30_P_1448948663450.jpg', '2020-02-20 13:12:49.782177', 31);
INSERT INTO `goods_goodsimage` VALUES (63, 'goods/images/30_P_1448948662571.jpg', '2020-02-20 13:12:49.783177', 31);
INSERT INTO `goods_goodsimage` VALUES (64, 'goods/images/30_P_1448948663221.jpg', '2020-02-20 13:12:49.783177', 31);
INSERT INTO `goods_goodsimage` VALUES (65, 'goods/images/31_P_1448948598947.jpg', '2020-02-20 13:12:49.786177', 32);
INSERT INTO `goods_goodsimage` VALUES (66, 'goods/images/31_P_1448948598475.jpg', '2020-02-20 13:12:49.786177', 32);
INSERT INTO `goods_goodsimage` VALUES (67, 'goods/images/35_P_1448948333610.jpg', '2020-02-20 13:12:49.789178', 33);
INSERT INTO `goods_goodsimage` VALUES (68, 'goods/images/35_P_1448948333313.jpg', '2020-02-20 13:12:49.789178', 33);
INSERT INTO `goods_goodsimage` VALUES (69, 'goods/images/36_P_1448948234405.jpg', '2020-02-20 13:12:49.792178', 34);
INSERT INTO `goods_goodsimage` VALUES (70, 'goods/images/36_P_1448948234250.jpg', '2020-02-20 13:12:49.793178', 34);
INSERT INTO `goods_goodsimage` VALUES (71, 'goods/images/33_P_1448948479966.jpg', '2020-02-20 13:12:49.795178', 35);
INSERT INTO `goods_goodsimage` VALUES (72, 'goods/images/33_P_1448948479886.jpg', '2020-02-20 13:12:49.796178', 35);
INSERT INTO `goods_goodsimage` VALUES (73, 'goods/images/34_P_1448948399009.jpg', '2020-02-20 13:12:49.798178', 36);
INSERT INTO `goods_goodsimage` VALUES (74, 'goods/images/43_P_1448948762645.jpg', '2020-02-20 13:12:49.800178', 37);
INSERT INTO `goods_goodsimage` VALUES (75, 'goods/images/38_P_1448949220255.jpg', '2020-02-20 13:12:49.803178', 38);
INSERT INTO `goods_goodsimage` VALUES (76, 'goods/images/44_P_1448948850187.jpg', '2020-02-20 13:12:49.805179', 39);
INSERT INTO `goods_goodsimage` VALUES (77, 'images/201511/goods_img/49_P_1448162819889.jpg', '2020-02-20 13:12:49.808179', 40);
INSERT INTO `goods_goodsimage` VALUES (78, 'goods/images/40_P_1448949038702.jpg', '2020-02-20 13:12:49.810179', 41);
INSERT INTO `goods_goodsimage` VALUES (79, 'goods/images/39_P_1448949115481.jpg', '2020-02-20 13:12:49.812179', 42);
INSERT INTO `goods_goodsimage` VALUES (80, 'goods/images/41_P_1448948980358.jpg', '2020-02-20 13:12:49.814179', 43);
INSERT INTO `goods_goodsimage` VALUES (81, 'goods/images/37_P_1448949284365.jpg', '2020-02-20 13:12:49.816179', 44);
INSERT INTO `goods_goodsimage` VALUES (82, 'goods/images/42_P_1448948895193.jpg', '2020-02-20 13:12:49.819179', 45);
INSERT INTO `goods_goodsimage` VALUES (83, 'goods/images/27_P_1448947771805.jpg', '2020-02-20 13:12:49.821179', 46);
INSERT INTO `goods_goodsimage` VALUES (84, 'goods/images/23_P_1448948070348.jpg', '2020-02-20 13:12:49.823180', 47);
INSERT INTO `goods_goodsimage` VALUES (85, 'goods/images/26_P_1448947825754.jpg', '2020-02-20 13:12:49.825180', 48);
INSERT INTO `goods_goodsimage` VALUES (86, 'goods/images/28_P_1448947699948.jpg', '2020-02-20 13:12:49.827180', 49);
INSERT INTO `goods_goodsimage` VALUES (87, 'goods/images/28_P_1448947699777.jpg', '2020-02-20 13:12:49.828180', 49);
INSERT INTO `goods_goodsimage` VALUES (88, 'goods/images/24_P_1448948023823.jpg', '2020-02-20 13:12:49.830180', 50);
INSERT INTO `goods_goodsimage` VALUES (89, 'goods/images/24_P_1448948023977.jpg', '2020-02-20 13:12:49.830180', 50);
INSERT INTO `goods_goodsimage` VALUES (90, 'goods/images/25_P_1448947875346.jpg', '2020-02-20 13:12:49.832180', 51);
INSERT INTO `goods_goodsimage` VALUES (91, 'goods/images/29_P_1448947631994.jpg', '2020-02-20 13:12:49.835180', 52);

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_indexad_category_id_cf834e34`(`category_id`) USING BTREE,
  INDEX `goods_indexad_goods_id_e1361e4f`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_ordergoods_goods_id_e77dc520`(`goods_id`) USING BTREE,
  INDEX `trade_ordergoods_order_id_e046f633`(`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nonce_str` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trade_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pay_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_script` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `signer_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `singer_mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_sn`(`order_sn`) USING BTREE,
  UNIQUE INDEX `nonce_str`(`nonce_str`) USING BTREE,
  UNIQUE INDEX `trade_no`(`trade_no`) USING BTREE,
  INDEX `trade_orderinfo_user_id_08ffa22c`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trade_shoppingcart_user_id_goods_id_92225e66_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `trade_shoppingcart_goods_id_8b0f3cb4`(`goods_id`) USING BTREE,
  INDEX `trade_shoppingcart_user_id_da423c9c`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `signer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `signer_mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_useraddress_user_id_fe128593`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_operation_userfav_user_id_goods_id_2dbadda7_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `user_operation_userfav_goods_id_57fc554f`(`goods_id`) USING BTREE,
  INDEX `user_operation_userfav_user_id_4e4de070`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_userleavingmessage_user_id_70d909d6`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$180000$8aK4Wpnl2SIq$Qc0densT8KOZ3gUSkyWnJNQng8/fqdd++atfQiflQho=', '2020-02-19 13:48:23.417882', 1, 'test', '', '', 1, 1, '2020-02-18 15:32:06.120584', NULL, NULL, 'female', NULL, 'test@qq.com');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_userprofile_id_a4496a80`(`userprofile_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_user_permissions_userprofile_id_34544737`(`userprofile_id`) USING BTREE,
  INDEX `users_userprofile_user_permissions_permission_id_393136b6`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
