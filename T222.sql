/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t222`;
CREATE DATABASE IF NOT EXISTS `t222` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t222`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(4, 2, '收货人4', '17703786904', '地址4', 2, '2022-04-07 06:46:12', '2022-04-07 07:51:57', '2022-04-07 06:46:12'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `haixian_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/wangluohaixianshicang/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/wangluohaixianshicang/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/wangluohaixianshicang/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-04-07 06:46:00'),
	(2, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-04-07 06:46:00'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-07 06:46:00'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-07 06:46:00'),
	(5, 'haixian_types', '商品类型', 1, '干品海鲜', NULL, NULL, '2022-04-07 06:46:00'),
	(6, 'haixian_types', '商品类型', 2, '鲜品海鲜', NULL, NULL, '2022-04-07 06:46:00'),
	(7, 'haixian_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-04-07 06:46:01'),
	(8, 'haixian_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-04-07 06:46:01'),
	(9, 'haixian_order_types', '订单类型', 3, '已发货', NULL, NULL, '2022-04-07 06:46:01'),
	(10, 'haixian_order_types', '订单类型', 4, '已收货', NULL, NULL, '2022-04-07 06:46:01'),
	(11, 'haixian_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-04-07 06:46:01'),
	(12, 'haixian_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-04-07 06:46:01'),
	(13, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-07 06:46:01'),
	(14, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-07 06:46:01'),
	(15, 'news_types', '资讯类型', 1, '资讯类型1', NULL, NULL, '2022-04-07 06:46:01'),
	(16, 'news_types', '资讯类型', 2, '资讯类型2', NULL, NULL, '2022-04-07 06:46:01'),
	(17, 'news_types', '资讯类型', 3, '资讯类型3', NULL, NULL, '2022-04-07 06:46:01'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-07 06:46:01'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-07 06:46:01');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(2, '帖子标题2', 3, NULL, '发布内容2', NULL, 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(3, '帖子标题3', 3, NULL, '发布内容3', NULL, 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(4, '帖子标题4', 3, NULL, '发布内容4', NULL, 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(5, '帖子标题5', 3, NULL, '发布内容5', NULL, 1, '2022-04-07 06:46:12', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(6, NULL, 2, NULL, '用户评论112233', 5, 2, '2022-04-07 07:52:56', NULL, '2022-04-07 07:52:56'),
	(7, NULL, NULL, 1, '管理评论123', 5, 2, '2022-04-07 07:53:12', NULL, '2022-04-07 07:53:12');

DROP TABLE IF EXISTS `haixian`;
CREATE TABLE IF NOT EXISTS `haixian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `haixian_name` varchar(200) DEFAULT NULL COMMENT '商品名称 Search111',
  `haixian_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `haixian_video` varchar(200) DEFAULT NULL COMMENT '视频演示',
  `haixian_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `haixian_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `haixian_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `haixian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `haixian_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `haixian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `haixian_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `haixian`;
INSERT INTO `haixian` (`id`, `haixian_name`, `haixian_photo`, `haixian_video`, `haixian_types`, `haixian_kucun_number`, `haixian_old_money`, `haixian_new_money`, `haixian_clicknum`, `shangxia_types`, `haixian_delete`, `haixian_content`, `create_time`) VALUES
	(1, '商品名称1', 'http://localhost:8080/wangluohaixianshicang/upload/1649315320439.jpg', 'http://localhost:8080/wangluohaixianshicang/upload/video.mp4', 1, 100, 882.24, 406.72, 350, 1, 1, '<p>商品简介1</p>', '2022-04-07 06:46:12'),
	(2, '商品名称2', 'http://localhost:8080/wangluohaixianshicang/upload/1649315306956.jpg', 'http://localhost:8080/wangluohaixianshicang/upload/video.mp4', 2, 100, 657.49, 111.41, 231, 1, 1, '<p>商品简介2</p>', '2022-04-07 06:46:12'),
	(3, '商品名称3', 'http://localhost:8080/wangluohaixianshicang/upload/1649315294480.jpg', 'http://localhost:8080/wangluohaixianshicang/upload/video.mp4', 1, 100, 976.55, 308.59, 54, 1, 1, '<p>商品简介3</p>', '2022-04-07 06:46:12'),
	(4, '商品名称4', 'http://localhost:8080/wangluohaixianshicang/upload/1649314488385.jpg', 'http://localhost:8080/wangluohaixianshicang/upload/video.mp4', 2, 99, 688.68, 188.64, 358, 1, 1, '<p>商品简介4</p>', '2022-04-07 06:46:12'),
	(5, '商品名称5', 'http://localhost:8080/wangluohaixianshicang/upload/1649314480214.jpg', 'http://localhost:8080/wangluohaixianshicang/upload/video.mp4', 2, 93, 549.22, 372.65, 357, 1, 1, '<p>商品简介5</p>', '2022-04-07 06:46:12'),
	(6, '商品名称55', '', NULL, 2, 10, 549.22, 372.65, 0, 1, 2, '', '2022-04-07 07:48:07'),
	(7, '商品名称44', '', NULL, 2, 20, 688.68, 188.64, 0, 1, 2, '', '2022-04-07 07:48:07'),
	(8, '商品名称33', '', NULL, 1, 30, 976.55, 308.59, 0, 1, 2, '', '2022-04-07 07:48:07'),
	(9, '商品名称22', '', NULL, 2, 40, 657.49, 111.41, 0, 1, 2, '', '2022-04-07 07:48:07'),
	(10, '商品名称11', '', NULL, 2, 50, 882.24, 406.72, 0, 1, 2, '', '2022-04-07 07:48:07'),
	(11, '商品名称55', '', NULL, 2, 10, 549.22, 372.65, 0, 1, 2, '', '2022-04-07 07:55:54'),
	(12, '商品名称44', '', NULL, 2, 20, 688.68, 188.64, 0, 1, 2, '', '2022-04-07 07:55:54'),
	(13, '商品名称33', '', NULL, 1, 30, 976.55, 308.59, 0, 1, 2, '', '2022-04-07 07:55:54'),
	(14, '商品名称22', '', NULL, 2, 40, 657.49, 111.41, 0, 1, 2, '', '2022-04-07 07:55:54'),
	(15, '商品名称11', '', NULL, 2, 50, 882.24, 406.72, 0, 1, 2, '', '2022-04-07 07:55:54');

DROP TABLE IF EXISTS `haixian_commentback`;
CREATE TABLE IF NOT EXISTS `haixian_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `haixian_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `haixian_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `haixian_commentback`;
INSERT INTO `haixian_commentback` (`id`, `haixian_id`, `yonghu_id`, `haixian_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2022-04-07 06:46:12', '回复信息1', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(2, 2, 1, '评价内容2', '2022-04-07 06:46:12', '回复信息2', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(3, 3, 2, '评价内容3', '2022-04-07 06:46:12', '回复信息3', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(4, 4, 2, '评价内容4', '2022-04-07 06:46:12', '回复信息4', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(5, 5, 2, '评价内容5', '2022-04-07 06:46:12', '回复信息5', '2022-04-07 06:46:12', '2022-04-07 06:46:12'),
	(6, 5, 2, '购买完成后可评价 ', '2022-04-07 07:58:21', '管理评论123', '2022-04-07 07:58:47', '2022-04-07 07:58:21');

DROP TABLE IF EXISTS `haixian_order`;
CREATE TABLE IF NOT EXISTS `haixian_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `haixian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `haixian_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `haixian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `haixian_order_types` int DEFAULT NULL COMMENT '订单类型',
  `haixian_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `haixian_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `haixian_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `haixian_order`;
INSERT INTO `haixian_order` (`id`, `haixian_order_uuid_number`, `address_id`, `haixian_id`, `yonghu_id`, `buy_number`, `haixian_order_true_price`, `haixian_order_types`, `haixian_order_courier_name`, `haixian_order_courier_number`, `haixian_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1649316225304', 3, 1, 1, 1, 406.72, 1, NULL, NULL, 1, '2022-04-06 07:23:45', '2022-04-07 07:23:45'),
	(2, '1649316225304', 3, 2, 1, 2, 222.82, 1, NULL, NULL, 1, '2022-04-08 07:23:45', '2022-04-07 07:23:45'),
	(3, '1649316225304', 3, 3, 1, 3, 925.77, 1, NULL, NULL, 1, '2022-04-07 07:23:45', '2022-04-07 07:23:45'),
	(4, '1649316225304', 3, 4, 1, 4, 754.56, 1, NULL, NULL, 1, '2022-04-07 07:23:45', '2022-04-07 07:23:45'),
	(5, '1649316225304', 3, 5, 1, 5, 1863.25, 1, NULL, NULL, 1, '2022-04-07 07:23:45', '2022-04-07 07:23:45'),
	(6, '1649317936503', 4, 3, 2, 1, 308.59, 2, NULL, NULL, 1, '2022-04-07 07:52:17', '2022-04-07 07:52:17'),
	(7, '1649317936503', 4, 5, 2, 4, 1490.60, 5, '京东', 'JD:112244556687984321', 1, '2022-04-07 07:52:17', '2022-04-07 07:52:17'),
	(8, '1717935126801', 3, 4, 1, 1, 188.64, 1, NULL, NULL, 1, '2024-06-09 12:12:07', '2024-06-09 12:12:07'),
	(9, '1717935126801', 3, 5, 1, 3, 1117.95, 1, NULL, NULL, 1, '2024-06-09 12:12:07', '2024-06-09 12:12:07');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '资讯标题1', 3, 'http://localhost:8080/wangluohaixianshicang/upload/news1.jpg', '2022-04-07 06:46:12', '资讯详情1', '2022-04-07 06:46:12'),
	(2, '资讯标题2', 3, 'http://localhost:8080/wangluohaixianshicang/upload/news2.jpg', '2022-04-07 06:46:12', '资讯详情2', '2022-04-07 06:46:12'),
	(3, '资讯标题3', 1, 'http://localhost:8080/wangluohaixianshicang/upload/news3.jpg', '2022-04-07 06:46:12', '资讯详情3', '2022-04-07 06:46:12'),
	(4, '资讯标题4', 2, 'http://localhost:8080/wangluohaixianshicang/upload/news4.jpg', '2022-04-07 06:46:12', '资讯详情4', '2022-04-07 06:46:12'),
	(5, '资讯标题5', 2, 'http://localhost:8080/wangluohaixianshicang/upload/news5.jpg', '2022-04-07 06:46:12', '资讯详情5', '2022-04-07 06:46:12');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(3, 1, 'admin', 'users', '管理员', '8edpko4awlm1x9frvdu57yq2lykfjl7i', '2022-04-07 06:54:17', '2024-06-09 13:09:48'),
	(4, 1, 'a1', 'yonghu', '用户', 'gje6yodlmnvdao1r3wyj95rvqy8q8m5v', '2022-04-07 07:09:00', '2024-06-09 13:11:16'),
	(5, 2, 'a2', 'yonghu', '用户', 'z4hsao094lz95pp7ze3sqbsxlxlmquw9', '2022-04-07 07:49:36', '2022-04-07 08:57:57');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/wangluohaixianshicang/upload/yonghu1.jpg', 1, '1@qq.com', 4223.82, '2022-04-07 06:46:12'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/wangluohaixianshicang/upload/yonghu2.jpg', 2, '2@qq.com', 8909.27, '2022-04-07 06:46:12'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/wangluohaixianshicang/upload/yonghu3.jpg', 2, '3@qq.com', 712.84, '2022-04-07 06:46:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
