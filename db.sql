/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootw307l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootw307l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootw307l`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408139034 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-26 11:29:37',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-26 11:29:37',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-26 11:29:37',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-26 11:29:37',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-26 11:29:37',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-26 11:29:37',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619408031453,'2021-04-26 11:33:50',1619408001419,'梅州市梅县区人民政府','张已','13696969696','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619408139033,'2021-04-26 11:35:38',1619408001419,'高汉烤鱼','胡','13596969696','否');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yunpimianfen' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootw307l/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootw307l/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootw307l/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussyunpimianfen` */

DROP TABLE IF EXISTS `discussyunpimianfen`;

CREATE TABLE `discussyunpimianfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='云匹面粉评论表';

/*Data for the table `discussyunpimianfen` */

insert  into `discussyunpimianfen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-26 11:29:37',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyunpimianfen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-26 11:29:37',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyunpimianfen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-26 11:29:37',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyunpimianfen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-26 11:29:37',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyunpimianfen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-26 11:29:37',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyunpimianfen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-26 11:29:37',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszhongzhijidi` */

DROP TABLE IF EXISTS `discusszhongzhijidi`;

CREATE TABLE `discusszhongzhijidi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='种植基地评论表';

/*Data for the table `discusszhongzhijidi` */

insert  into `discusszhongzhijidi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-26 11:29:37',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusszhongzhijidi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-26 11:29:37',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusszhongzhijidi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-26 11:29:37',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusszhongzhijidi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-26 11:29:37',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusszhongzhijidi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-26 11:29:37',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusszhongzhijidi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-26 11:29:37',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-04-26 11:29:37',1,'用户名1','留言内容1','可以购买的 请放心购买。');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-04-26 11:29:37',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-04-26 11:29:37',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-04-26 11:29:37',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-04-26 11:29:37',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `mianfenfenlei` */

DROP TABLE IF EXISTS `mianfenfenlei`;

CREATE TABLE `mianfenfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408406508 DEFAULT CHARSET=utf8 COMMENT='面粉分类';

/*Data for the table `mianfenfenlei` */

insert  into `mianfenfenlei`(`id`,`addtime`,`fenlei`) values (51,'2021-04-26 11:29:37','分类1');
insert  into `mianfenfenlei`(`id`,`addtime`,`fenlei`) values (52,'2021-04-26 11:29:37','分类2');
insert  into `mianfenfenlei`(`id`,`addtime`,`fenlei`) values (53,'2021-04-26 11:29:37','分类3');
insert  into `mianfenfenlei`(`id`,`addtime`,`fenlei`) values (56,'2021-04-26 11:29:37','高筋面粉');
insert  into `mianfenfenlei`(`id`,`addtime`,`fenlei`) values (1619408406507,'2021-04-26 11:40:06','低筋面粉');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yunpimianfen' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408144592 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619408098578,'2021-04-26 11:34:57','202142611345760749183','yunpimianfen',1619408001419,61,'名称1','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已发货','梅州市梅县区人民政府','13696969696','张已');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619408144591,'2021-04-26 11:35:44','20214261135448659135','yunpimianfen',1619408001419,62,'名称2','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已发货','高汉烤鱼','13596969696','胡');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619408001419,'1','yonghuxinxi','用户信息','25smpulettw9jfhoypx2gydn2iu3pt4v','2021-04-26 11:33:27','2021-04-26 12:34:11');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','w2216kod0z1rqu7zt09plsas0uqpivsj','2021-04-26 11:36:16','2021-04-26 12:36:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-26 11:29:37');

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408209716 DEFAULT CHARSET=utf8 COMMENT='用户信息';

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (11,'2021-04-26 11:29:37','用户信息1','123456','姓名1','男','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/springbootw307l/upload/yonghuxinxi_touxiang1.jpg',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (12,'2021-04-26 11:29:37','用户信息2','123456','姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/springbootw307l/upload/yonghuxinxi_touxiang2.jpg',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (13,'2021-04-26 11:29:37','3','3','李珍','女','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/springbootw307l/upload/yonghuxinxi_touxiang3.jpg',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (15,'2021-04-26 11:29:37','用户信息5','123456','姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/springbootw307l/upload/yonghuxinxi_touxiang5.jpg',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (16,'2021-04-26 11:29:37','用户信息6','123456','姓名6','男','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/springbootw307l/upload/yonghuxinxi_touxiang6.jpg',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (1619408001419,'2021-04-26 11:33:21','1','1','1','男',NULL,NULL,NULL,NULL,300.2);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`touxiang`,`money`) values (1619408209715,'2021-04-26 11:36:49','2','2','刘真','女','13696968989','441426199905153636','13696968989@139.com','http://localhost:8080/springbootw307l/upload/1619408209038.jpg',0);

/*Table structure for table `yunpimianfen` */

DROP TABLE IF EXISTS `yunpimianfen`;

CREATE TABLE `yunpimianfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yuanliao` varchar(200) NOT NULL COMMENT '原料',
  `peiliao` varchar(200) NOT NULL COMMENT '配料',
  `zhongzhijidi` varchar(200) DEFAULT NULL COMMENT '种植基地',
  `jinghanliang` varchar(200) DEFAULT NULL COMMENT '净含量',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `chucunfangfa` varchar(200) DEFAULT NULL COMMENT '储存方法',
  `shiyong` varchar(200) DEFAULT NULL COMMENT '适用',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shengchanriqi` datetime DEFAULT NULL COMMENT '生产日期',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408507412 DEFAULT CHARSET=utf8 COMMENT='云匹面粉';

/*Data for the table `yunpimianfen` */

insert  into `yunpimianfen`(`id`,`addtime`,`mingcheng`,`yuanliao`,`peiliao`,`zhongzhijidi`,`jinghanliang`,`baozhiqi`,`chucunfangfa`,`shiyong`,`xiangqing`,`tupian`,`shengchanriqi`,`fenlei`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (61,'2021-04-26 11:29:37','名称1','原料1','配料1','种植基地1','净含量1','保质期1','储存方法1','适用1','详情1','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian1.jpg','2021-04-26 11:29:37','分类1',1,1,'2021-04-26 11:35:00',99.9);
insert  into `yunpimianfen`(`id`,`addtime`,`mingcheng`,`yuanliao`,`peiliao`,`zhongzhijidi`,`jinghanliang`,`baozhiqi`,`chucunfangfa`,`shiyong`,`xiangqing`,`tupian`,`shengchanriqi`,`fenlei`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (63,'2021-04-26 11:29:37','名称3','原料3','配料3','种植基地3','净含量3','保质期3','储存方法3','适用3','详情3','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian3.jpg','2021-04-26 11:29:37','分类3',3,3,'2021-04-26 11:42:52',99.9);
insert  into `yunpimianfen`(`id`,`addtime`,`mingcheng`,`yuanliao`,`peiliao`,`zhongzhijidi`,`jinghanliang`,`baozhiqi`,`chucunfangfa`,`shiyong`,`xiangqing`,`tupian`,`shengchanriqi`,`fenlei`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (64,'2021-04-26 11:29:37','云匹低筋面粉','小麦','小麦粉','山东基地','20kg','一年','干燥 低温储存','包子面点','<p>测试</p>','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian4.jpg','2021-04-25 11:29:37','低筋面粉',4,4,'2021-04-26 11:41:52',99.9);
insert  into `yunpimianfen`(`id`,`addtime`,`mingcheng`,`yuanliao`,`peiliao`,`zhongzhijidi`,`jinghanliang`,`baozhiqi`,`chucunfangfa`,`shiyong`,`xiangqing`,`tupian`,`shengchanriqi`,`fenlei`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (65,'2021-04-26 11:29:37','名称5','原料5','配料5','种植基地5','净含量5','保质期5','储存方法5','适用5','详情5','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian5.jpg','2021-04-26 11:29:37','分类5',5,5,'2021-04-26 11:29:37',99.9);
insert  into `yunpimianfen`(`id`,`addtime`,`mingcheng`,`yuanliao`,`peiliao`,`zhongzhijidi`,`jinghanliang`,`baozhiqi`,`chucunfangfa`,`shiyong`,`xiangqing`,`tupian`,`shengchanriqi`,`fenlei`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (66,'2021-04-26 11:29:37','名称6','原料6','配料6','种植基地6','净含量6','保质期6','储存方法6','适用6','详情6','http://localhost:8080/springbootw307l/upload/yunpimianfen_tupian6.jpg','2021-04-26 11:29:37','分类6',6,6,'2021-04-26 11:29:37',99.9);
insert  into `yunpimianfen`(`id`,`addtime`,`mingcheng`,`yuanliao`,`peiliao`,`zhongzhijidi`,`jinghanliang`,`baozhiqi`,`chucunfangfa`,`shiyong`,`xiangqing`,`tupian`,`shengchanriqi`,`fenlei`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (1619408507411,'2021-04-26 11:41:46','云匹高筋面粉','小麦','小麦粉','山东基地','50KG','1年','干燥低温储存','包子 面包','<p>详情可以填写</p>','http://localhost:8080/springbootw307l/upload/1619408484045.jpg','2021-04-17 00:00:00','高筋面粉',0,0,'2021-04-26 11:42:48',200);

/*Table structure for table `yunpimianfenjiagong` */

DROP TABLE IF EXISTS `yunpimianfenjiagong`;

CREATE TABLE `yunpimianfenjiagong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mianfenzhizuo` longtext NOT NULL COMMENT '面粉制作',
  `zhongzhijidi` varchar(200) NOT NULL COMMENT '种植基地',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408367292 DEFAULT CHARSET=utf8 COMMENT='云匹面粉加工';

/*Data for the table `yunpimianfenjiagong` */

insert  into `yunpimianfenjiagong`(`id`,`addtime`,`mianfenzhizuo`,`zhongzhijidi`,`tupian`,`beizhu`) values (41,'2021-04-26 11:29:37','面粉制作1','种植基地1','http://localhost:8080/springbootw307l/upload/yunpimianfenjiagong_tupian1.jpg','备注1');
insert  into `yunpimianfenjiagong`(`id`,`addtime`,`mianfenzhizuo`,`zhongzhijidi`,`tupian`,`beizhu`) values (43,'2021-04-26 11:29:37','面粉制作3','种植基地3','http://localhost:8080/springbootw307l/upload/yunpimianfenjiagong_tupian3.jpg','备注3');
insert  into `yunpimianfenjiagong`(`id`,`addtime`,`mianfenzhizuo`,`zhongzhijidi`,`tupian`,`beizhu`) values (44,'2021-04-26 11:29:37','面粉制作4','种植基地4','http://localhost:8080/springbootw307l/upload/yunpimianfenjiagong_tupian4.jpg','备注4');
insert  into `yunpimianfenjiagong`(`id`,`addtime`,`mianfenzhizuo`,`zhongzhijidi`,`tupian`,`beizhu`) values (45,'2021-04-26 11:29:37','面粉制作5','种植基地5','http://localhost:8080/springbootw307l/upload/yunpimianfenjiagong_tupian5.jpg','备注5');
insert  into `yunpimianfenjiagong`(`id`,`addtime`,`mianfenzhizuo`,`zhongzhijidi`,`tupian`,`beizhu`) values (46,'2021-04-26 11:29:37','<p>沈阳基地面粉现场加工情况加图片</p>','沈阳基地','http://localhost:8080/springbootw307l/upload/yunpimianfenjiagong_tupian6.jpg','备注6');
insert  into `yunpimianfenjiagong`(`id`,`addtime`,`mianfenzhizuo`,`zhongzhijidi`,`tupian`,`beizhu`) values (1619408367291,'2021-04-26 11:39:26','<p>山东基地面粉现场加工情况</p>','山东基地','http://localhost:8080/springbootw307l/upload/1619408354098.png',NULL);

/*Table structure for table `yunpixiaomaicaishou` */

DROP TABLE IF EXISTS `yunpixiaomaicaishou`;

CREATE TABLE `yunpixiaomaicaishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongzhijidi` varchar(200) NOT NULL COMMENT '种植基地',
  `caishouxianchang` longtext NOT NULL COMMENT '采收现场',
  `caishoutupian` varchar(200) NOT NULL COMMENT '采收图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408319748 DEFAULT CHARSET=utf8 COMMENT='云匹小麦采收';

/*Data for the table `yunpixiaomaicaishou` */

insert  into `yunpixiaomaicaishou`(`id`,`addtime`,`zhongzhijidi`,`caishouxianchang`,`caishoutupian`) values (31,'2021-04-26 11:29:37','种植基地1','采收现场1','http://localhost:8080/springbootw307l/upload/yunpixiaomaicaishou_caishoutupian1.jpg');
insert  into `yunpixiaomaicaishou`(`id`,`addtime`,`zhongzhijidi`,`caishouxianchang`,`caishoutupian`) values (33,'2021-04-26 11:29:37','种植基地3','采收现场3','http://localhost:8080/springbootw307l/upload/yunpixiaomaicaishou_caishoutupian3.jpg');
insert  into `yunpixiaomaicaishou`(`id`,`addtime`,`zhongzhijidi`,`caishouxianchang`,`caishoutupian`) values (34,'2021-04-26 11:29:37','种植基地4','采收现场4','http://localhost:8080/springbootw307l/upload/yunpixiaomaicaishou_caishoutupian4.jpg');
insert  into `yunpixiaomaicaishou`(`id`,`addtime`,`zhongzhijidi`,`caishouxianchang`,`caishoutupian`) values (35,'2021-04-26 11:29:37','沈阳基地','<p>沈阳基地采收现场5</p>','http://localhost:8080/springbootw307l/upload/yunpixiaomaicaishou_caishoutupian5.jpg');
insert  into `yunpixiaomaicaishou`(`id`,`addtime`,`zhongzhijidi`,`caishouxianchang`,`caishoutupian`) values (36,'2021-04-26 11:29:37','种植基地6','采收现场6','http://localhost:8080/springbootw307l/upload/yunpixiaomaicaishou_caishoutupian6.jpg');
insert  into `yunpixiaomaicaishou`(`id`,`addtime`,`zhongzhijidi`,`caishouxianchang`,`caishoutupian`) values (1619408319747,'2021-04-26 11:38:39','山东基地','<p>采收现场情况</p>','http://localhost:8080/springbootw307l/upload/1619408311245.png');

/*Table structure for table `zhongzhijidi` */

DROP TABLE IF EXISTS `zhongzhijidi`;

CREATE TABLE `zhongzhijidi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongzhijidi` varchar(200) NOT NULL COMMENT '种植基地',
  `jidijieshao` longtext NOT NULL COMMENT '基地介绍',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619408259598 DEFAULT CHARSET=utf8 COMMENT='种植基地';

/*Data for the table `zhongzhijidi` */

insert  into `zhongzhijidi`(`id`,`addtime`,`zhongzhijidi`,`jidijieshao`,`dizhi`,`tupian`,`thumbsupnum`,`crazilynum`) values (21,'2021-04-26 11:29:37','种植基地1','基地介绍1','地址1','http://localhost:8080/springbootw307l/upload/zhongzhijidi_tupian1.jpg',1,1);
insert  into `zhongzhijidi`(`id`,`addtime`,`zhongzhijidi`,`jidijieshao`,`dizhi`,`tupian`,`thumbsupnum`,`crazilynum`) values (23,'2021-04-26 11:29:37','种植基地3','基地介绍3','地址3','http://localhost:8080/springbootw307l/upload/zhongzhijidi_tupian3.jpg',3,3);
insert  into `zhongzhijidi`(`id`,`addtime`,`zhongzhijidi`,`jidijieshao`,`dizhi`,`tupian`,`thumbsupnum`,`crazilynum`) values (24,'2021-04-26 11:29:37','种植基地4','基地介绍4','地址4','http://localhost:8080/springbootw307l/upload/zhongzhijidi_tupian4.jpg',4,4);
insert  into `zhongzhijidi`(`id`,`addtime`,`zhongzhijidi`,`jidijieshao`,`dizhi`,`tupian`,`thumbsupnum`,`crazilynum`) values (25,'2021-04-26 11:29:37','种植基地5','基地介绍5','地址5','http://localhost:8080/springbootw307l/upload/zhongzhijidi_tupian5.jpg',5,5);
insert  into `zhongzhijidi`(`id`,`addtime`,`zhongzhijidi`,`jidijieshao`,`dizhi`,`tupian`,`thumbsupnum`,`crazilynum`) values (26,'2021-04-26 11:29:37','山东基地','<p>测试</p>','山东XXX','http://localhost:8080/springbootw307l/upload/zhongzhijidi_tupian6.jpg',6,6);
insert  into `zhongzhijidi`(`id`,`addtime`,`zhongzhijidi`,`jidijieshao`,`dizhi`,`tupian`,`thumbsupnum`,`crazilynum`) values (1619408259597,'2021-04-26 11:37:39','沈阳基地','<p>测试</p>','沈阳XXX','http://localhost:8080/springbootw307l/upload/1619408254653.png',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
