/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmff5gk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmff5gk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmff5gk`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904732085 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (21,'2021-04-20 15:40:51','班级1'),(22,'2021-04-20 15:40:51','班级2'),(23,'2021-04-20 15:40:51','班级3'),(24,'2021-04-20 15:40:51','班级4'),(25,'2021-04-20 15:40:51','班级5'),(26,'2021-04-20 15:40:51','班级6'),(1618904732084,'2021-04-20 15:45:32','生工1902班');

/*Table structure for table `baoxiuchuli` */

DROP TABLE IF EXISTS `baoxiuchuli`;

CREATE TABLE `baoxiuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) DEFAULT NULL COMMENT '报修设备',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiuriqi` varchar(200) DEFAULT NULL COMMENT '报修日期',
  `weixiufankui` varchar(200) DEFAULT NULL COMMENT '维修反馈',
  `weixiujindu` varchar(200) DEFAULT NULL COMMENT '维修进度',
  `gengxinriqi` datetime DEFAULT NULL COMMENT '更新日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904990701 DEFAULT CHARSET=utf8 COMMENT='报修处理';

/*Data for the table `baoxiuchuli` */

insert  into `baoxiuchuli`(`id`,`addtime`,`baoxiushebei`,`leixing`,`tupian`,`baoxiuriqi`,`weixiufankui`,`weixiujindu`,`gengxinriqi`,`xuehao`,`xueshengxingming`,`sushehao`,`banji`,`userid`) values (101,'2021-04-20 15:40:51','报修设备1','类型1','http://localhost:8080/ssmff5gk/upload/baoxiuchuli_tupian1.jpg','报修日期1','维修反馈1','维修中','2021-04-20 15:40:51','学号1','学生姓名1','宿舍号1','班级1',1),(102,'2021-04-20 15:40:51','报修设备2','类型2','http://localhost:8080/ssmff5gk/upload/baoxiuchuli_tupian2.jpg','报修日期2','维修反馈2','维修中','2021-04-20 15:40:51','学号2','学生姓名2','宿舍号2','班级2',2),(103,'2021-04-20 15:40:51','报修设备3','类型3','http://localhost:8080/ssmff5gk/upload/baoxiuchuli_tupian3.jpg','报修日期3','维修反馈3','维修中','2021-04-20 15:40:51','学号3','学生姓名3','宿舍号3','班级3',3),(104,'2021-04-20 15:40:51','报修设备4','类型4','http://localhost:8080/ssmff5gk/upload/baoxiuchuli_tupian4.jpg','报修日期4','维修反馈4','维修中','2021-04-20 15:40:51','学号4','学生姓名4','宿舍号4','班级4',4),(105,'2021-04-20 15:40:51','报修设备5','类型5','http://localhost:8080/ssmff5gk/upload/baoxiuchuli_tupian5.jpg','报修日期5','维修反馈5','维修中','2021-04-20 15:40:51','学号5','学生姓名5','宿舍号5','班级5',5),(106,'2021-04-20 15:40:51','报修设备6','类型6','http://localhost:8080/ssmff5gk/upload/baoxiuchuli_tupian6.jpg','报修日期6','维修反馈6','维修中','2021-04-20 15:40:51','学号6','学生姓名6','宿舍号6','班级6',6),(1618904990700,'2021-04-20 15:49:50','水龙头','水工','http://localhost:8080/ssmff5gk/upload/1618904948372.jpg','2021-04-20','DGDFYGTF','已完成','2021-04-20 20:49:38','3','张一','5栋604','生工1902班',1618904766690);

/*Table structure for table `baoxiuxinxi` */

DROP TABLE IF EXISTS `baoxiuxinxi`;

CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) NOT NULL COMMENT '报修设备',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904958888 DEFAULT CHARSET=utf8 COMMENT='报修信息';

/*Data for the table `baoxiuxinxi` */

insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiushebei`,`leixing`,`tupian`,`baoxiuneirong`,`baoxiuriqi`,`xuehao`,`xueshengxingming`,`banji`,`sushehao`,`shouji`,`sfsh`,`shhf`,`userid`) values (91,'2021-04-20 15:40:51','报修设备1','水工','http://localhost:8080/ssmff5gk/upload/baoxiuxinxi_tupian1.jpg','报修内容1','2021-04-20','学号1','学生姓名1','班级1','宿舍号1','手机1','是','',1),(92,'2021-04-20 15:40:51','报修设备2','水工','http://localhost:8080/ssmff5gk/upload/baoxiuxinxi_tupian2.jpg','报修内容2','2021-04-20','学号2','学生姓名2','班级2','宿舍号2','手机2','是','',2),(93,'2021-04-20 15:40:51','报修设备3','水工','http://localhost:8080/ssmff5gk/upload/baoxiuxinxi_tupian3.jpg','报修内容3','2021-04-20','学号3','学生姓名3','班级3','宿舍号3','手机3','是','',3),(94,'2021-04-20 15:40:51','报修设备4','水工','http://localhost:8080/ssmff5gk/upload/baoxiuxinxi_tupian4.jpg','报修内容4','2021-04-20','学号4','学生姓名4','班级4','宿舍号4','手机4','是','',4),(95,'2021-04-20 15:40:51','报修设备5','水工','http://localhost:8080/ssmff5gk/upload/baoxiuxinxi_tupian5.jpg','报修内容5','2021-04-20','学号5','学生姓名5','班级5','宿舍号5','手机5','是','',5),(96,'2021-04-20 15:40:51','报修设备6','水工','http://localhost:8080/ssmff5gk/upload/baoxiuxinxi_tupian6.jpg','报修内容6','2021-04-20','学号6','学生姓名6','班级6','宿舍号6','手机6','是','',6),(1618904958887,'2021-04-20 15:49:18','水龙头','水工','http://localhost:8080/ssmff5gk/upload/1618904948372.jpg','水龙头损坏，需要维修','2021-04-20','3','张一','生工1902班','5栋604','12312312345','是','今晚八点维修',1618904766690);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmff5gk/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmff5gk/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmff5gk/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussgonggaoxinxi` */

DROP TABLE IF EXISTS `discussgonggaoxinxi`;

CREATE TABLE `discussgonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';

/*Data for the table `discussgonggaoxinxi` */

insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-20 15:40:51',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-20 15:40:51',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-20 15:40:51',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-20 15:40:51',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-20 15:40:51',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-20 15:40:51',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`leixing`,`tupian`,`neirong`,`faburiqi`) values (11,'2021-04-20 15:40:51','公告标题1','类型1','http://localhost:8080/ssmff5gk/upload/gonggaoxinxi_tupian1.jpg','内容1','2021-04-20'),(12,'2021-04-20 15:40:51','公告标题2','类型2','http://localhost:8080/ssmff5gk/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-04-20'),(13,'2021-04-20 15:40:51','公告标题3','类型3','http://localhost:8080/ssmff5gk/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-04-20'),(14,'2021-04-20 15:40:51','公告标题4','类型4','http://localhost:8080/ssmff5gk/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-04-20'),(15,'2021-04-20 15:40:51','公告标题5','类型5','http://localhost:8080/ssmff5gk/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-04-20'),(16,'2021-04-20 15:40:51','关于宿舍安排通知','宿舍安排','http://localhost:8080/ssmff5gk/upload/1618904666100.jpg','<p>公告内容KJSSGKTYJHKTFH</p><p><img src=\"http://localhost:8080/ssmff5gk/upload/1618904662276.jpg\"></p>','2021-04-27');

/*Table structure for table `lisushenqing` */

DROP TABLE IF EXISTS `lisushenqing`;

CREATE TABLE `lisushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `lisushijian` date NOT NULL COMMENT '离宿时间',
  `lisushenqing` longtext COMMENT '离宿申请',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904901422 DEFAULT CHARSET=utf8 COMMENT='离宿申请';

/*Data for the table `lisushenqing` */

insert  into `lisushenqing`(`id`,`addtime`,`sushehao`,`susheleixing`,`tupian`,`xuehao`,`xueshengxingming`,`banji`,`lisushijian`,`lisushenqing`,`shenqingriqi`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-20 15:40:51','宿舍号1','宿舍类型1','http://localhost:8080/ssmff5gk/upload/lisushenqing_tupian1.jpg','学号1','学生姓名1','班级1','2021-04-20','离宿申请1','2021-04-20','是','',1),(62,'2021-04-20 15:40:51','宿舍号2','宿舍类型2','http://localhost:8080/ssmff5gk/upload/lisushenqing_tupian2.jpg','学号2','学生姓名2','班级2','2021-04-20','离宿申请2','2021-04-20','是','',2),(63,'2021-04-20 15:40:51','宿舍号3','宿舍类型3','http://localhost:8080/ssmff5gk/upload/lisushenqing_tupian3.jpg','学号3','学生姓名3','班级3','2021-04-20','离宿申请3','2021-04-20','是','',3),(64,'2021-04-20 15:40:51','宿舍号4','宿舍类型4','http://localhost:8080/ssmff5gk/upload/lisushenqing_tupian4.jpg','学号4','学生姓名4','班级4','2021-04-20','离宿申请4','2021-04-20','是','',4),(65,'2021-04-20 15:40:51','宿舍号5','宿舍类型5','http://localhost:8080/ssmff5gk/upload/lisushenqing_tupian5.jpg','学号5','学生姓名5','班级5','2021-04-20','离宿申请5','2021-04-20','是','',5),(66,'2021-04-20 15:40:51','宿舍号6','宿舍类型6','http://localhost:8080/ssmff5gk/upload/lisushenqing_tupian6.jpg','学号6','学生姓名6','班级6','2021-04-20','离宿申请6','2021-04-20','是','',6),(1618904901421,'2021-04-20 15:48:21','5栋604','女生','http://localhost:8080/ssmff5gk/upload/1618904688589.jpg','3','张一','生工1902班','2021-05-21','家中有事','2021-05-20','','',1618904766690);

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
) ENGINE=InnoDB AUTO_INCREMENT=1618904866500 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `susheanpai` */

DROP TABLE IF EXISTS `susheanpai`;

CREATE TABLE `susheanpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` varchar(200) DEFAULT NULL COMMENT '可住人数',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `anpairiqi` date DEFAULT NULL COMMENT '安排日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904796186 DEFAULT CHARSET=utf8 COMMENT='宿舍安排';

/*Data for the table `susheanpai` */

insert  into `susheanpai`(`id`,`addtime`,`sushehao`,`susheleixing`,`tupian`,`loudong`,`weizhi`,`kezhurenshu`,`xuehao`,`xueshengxingming`,`banji`,`anpairiqi`,`userid`) values (51,'2021-04-20 15:40:51','宿舍号1','宿舍类型1','http://localhost:8080/ssmff5gk/upload/susheanpai_tupian1.jpg','楼栋1','位置1','可住人数1','学号1','学生姓名1','班级1','2021-04-20',1),(52,'2021-04-20 15:40:51','宿舍号2','宿舍类型2','http://localhost:8080/ssmff5gk/upload/susheanpai_tupian2.jpg','楼栋2','位置2','可住人数2','学号2','学生姓名2','班级2','2021-04-20',2),(53,'2021-04-20 15:40:51','宿舍号3','宿舍类型3','http://localhost:8080/ssmff5gk/upload/susheanpai_tupian3.jpg','楼栋3','位置3','可住人数3','学号3','学生姓名3','班级3','2021-04-20',3),(54,'2021-04-20 15:40:51','宿舍号4','宿舍类型4','http://localhost:8080/ssmff5gk/upload/susheanpai_tupian4.jpg','楼栋4','位置4','可住人数4','学号4','学生姓名4','班级4','2021-04-20',4),(55,'2021-04-20 15:40:51','宿舍号5','宿舍类型5','http://localhost:8080/ssmff5gk/upload/susheanpai_tupian5.jpg','楼栋5','位置5','可住人数5','学号5','学生姓名5','班级5','2021-04-20',5),(56,'2021-04-20 15:40:51','宿舍号6','宿舍类型6','http://localhost:8080/ssmff5gk/upload/susheanpai_tupian6.jpg','楼栋6','位置6','可住人数6','学号6','学生姓名6','班级6','2021-04-20',6),(1618904796185,'2021-04-20 15:46:35','5栋604','女生','http://localhost:8080/ssmff5gk/upload/1618904688589.jpg','5栋','南区','6','3','张一','生工1902班','2021-04-20',NULL);

/*Table structure for table `sushepingfen` */

DROP TABLE IF EXISTS `sushepingfen`;

CREATE TABLE `sushepingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jianchaneirong` varchar(200) DEFAULT NULL COMMENT '检查内容',
  `shifouzhengjie` varchar(200) DEFAULT NULL COMMENT '是否整洁',
  `shifouweigui` varchar(200) DEFAULT NULL COMMENT '是否违规',
  `pingfen` int(11) DEFAULT NULL COMMENT '评分',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `jianchariqi` date DEFAULT NULL COMMENT '检查日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904837969 DEFAULT CHARSET=utf8 COMMENT='宿舍评分';

/*Data for the table `sushepingfen` */

insert  into `sushepingfen`(`id`,`addtime`,`sushehao`,`susheleixing`,`tupian`,`loudong`,`xuehao`,`xueshengxingming`,`banji`,`jianchaneirong`,`shifouzhengjie`,`shifouweigui`,`pingfen`,`jianchajieguo`,`jianchariqi`,`userid`) values (71,'2021-04-20 15:40:51','宿舍号1','宿舍类型1','http://localhost:8080/ssmff5gk/upload/sushepingfen_tupian1.jpg','楼栋1','学号1','学生姓名1','班级1','检查内容1','是','是',1,'合格','2021-04-20',1),(72,'2021-04-20 15:40:51','宿舍号2','宿舍类型2','http://localhost:8080/ssmff5gk/upload/sushepingfen_tupian2.jpg','楼栋2','学号2','学生姓名2','班级2','检查内容2','是','是',2,'合格','2021-04-20',2),(73,'2021-04-20 15:40:51','宿舍号3','宿舍类型3','http://localhost:8080/ssmff5gk/upload/sushepingfen_tupian3.jpg','楼栋3','学号3','学生姓名3','班级3','检查内容3','是','是',3,'合格','2021-04-20',3),(74,'2021-04-20 15:40:51','宿舍号4','宿舍类型4','http://localhost:8080/ssmff5gk/upload/sushepingfen_tupian4.jpg','楼栋4','学号4','学生姓名4','班级4','检查内容4','是','是',4,'合格','2021-04-20',4),(75,'2021-04-20 15:40:51','宿舍号5','宿舍类型5','http://localhost:8080/ssmff5gk/upload/sushepingfen_tupian5.jpg','楼栋5','学号5','学生姓名5','班级5','检查内容5','是','是',5,'合格','2021-04-20',5),(76,'2021-04-20 15:40:51','宿舍号6','宿舍类型6','http://localhost:8080/ssmff5gk/upload/sushepingfen_tupian6.jpg','楼栋6','学号6','学生姓名6','班级6','检查内容6','是','是',6,'合格','2021-04-20',6),(1618904837968,'2021-04-20 15:47:17','5栋604','女生','http://localhost:8080/ssmff5gk/upload/1618904688589.jpg','5栋','3','张一','生工1902班','检查整洁性及是否存在违规','是','否',88,'合格','2021-04-20',NULL);

/*Table structure for table `sushexinxi` */

DROP TABLE IF EXISTS `sushexinxi`;

CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) NOT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` int(11) DEFAULT NULL COMMENT '可住人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904695161 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushexinxi` */

insert  into `sushexinxi`(`id`,`addtime`,`sushehao`,`susheleixing`,`tupian`,`loudong`,`weizhi`,`kezhurenshu`,`beizhu`) values (41,'2021-04-20 15:40:51','宿舍号1','男生','http://localhost:8080/ssmff5gk/upload/sushexinxi_tupian1.jpg','楼栋1','位置1',1,'备注1'),(42,'2021-04-20 15:40:51','宿舍号2','男生','http://localhost:8080/ssmff5gk/upload/sushexinxi_tupian2.jpg','楼栋2','位置2',2,'备注2'),(43,'2021-04-20 15:40:51','宿舍号3','男生','http://localhost:8080/ssmff5gk/upload/sushexinxi_tupian3.jpg','楼栋3','位置3',3,'备注3'),(45,'2021-04-20 15:40:51','宿舍号5','男生','http://localhost:8080/ssmff5gk/upload/sushexinxi_tupian5.jpg','楼栋5','位置5',5,'备注5'),(46,'2021-04-20 15:40:51','宿舍号6','男生','http://localhost:8080/ssmff5gk/upload/sushexinxi_tupian6.jpg','楼栋6','位置6',6,'备注6'),(1618904695160,'2021-04-20 15:44:54','5栋604','女生','http://localhost:8080/ssmff5gk/upload/1618904688589.jpg','5栋','南区',6,'');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','8uk60nczv83l99fkzqk46uil2f31r2uf','2021-04-20 15:43:54','2021-04-20 16:43:54'),(2,1618904766690,'3','xuesheng','学生','z8ezckkj888pvwsidwtn4doa32s279f0','2021-04-20 15:46:12','2021-04-20 16:46:13');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-20 15:40:51');

/*Table structure for table `wanguidengji` */

DROP TABLE IF EXISTS `wanguidengji`;

CREATE TABLE `wanguidengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `wanguiyuanyin` varchar(200) DEFAULT NULL COMMENT '晚归原因',
  `wanguishijian` datetime DEFAULT NULL COMMENT '晚归时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904855197 DEFAULT CHARSET=utf8 COMMENT='晚归登记';

/*Data for the table `wanguidengji` */

insert  into `wanguidengji`(`id`,`addtime`,`xuehao`,`xueshengxingming`,`touxiang`,`banji`,`sushehao`,`wanguiyuanyin`,`wanguishijian`,`beizhu`,`userid`) values (81,'2021-04-20 15:40:51','学号1','学生姓名1','http://localhost:8080/ssmff5gk/upload/wanguidengji_touxiang1.jpg','班级1','宿舍号1','晚归原因1','2021-04-20 15:40:51','备注1',1),(82,'2021-04-20 15:40:51','学号2','学生姓名2','http://localhost:8080/ssmff5gk/upload/wanguidengji_touxiang2.jpg','班级2','宿舍号2','晚归原因2','2021-04-20 15:40:51','备注2',2),(83,'2021-04-20 15:40:51','学号3','学生姓名3','http://localhost:8080/ssmff5gk/upload/wanguidengji_touxiang3.jpg','班级3','宿舍号3','晚归原因3','2021-04-20 15:40:51','备注3',3),(84,'2021-04-20 15:40:51','学号4','学生姓名4','http://localhost:8080/ssmff5gk/upload/wanguidengji_touxiang4.jpg','班级4','宿舍号4','晚归原因4','2021-04-20 15:40:51','备注4',4),(85,'2021-04-20 15:40:51','学号5','学生姓名5','http://localhost:8080/ssmff5gk/upload/wanguidengji_touxiang5.jpg','班级5','宿舍号5','晚归原因5','2021-04-20 15:40:51','备注5',5),(86,'2021-04-20 15:40:51','学号6','学生姓名6','http://localhost:8080/ssmff5gk/upload/wanguidengji_touxiang6.jpg','班级6','宿舍号6','晚归原因6','2021-04-20 15:40:51','备注6',6),(1618904855196,'2021-04-20 15:47:35','3','张一','http://localhost:8080/ssmff5gk/upload/1618904780896.jpg','生工1902班','5栋604','班级活动','2021-04-20 23:47:20','口头警告',NULL);

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618904766691 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`,`sushehao`) values (31,'2021-04-20 15:40:51','学生1','123456','学生姓名1','男','http://localhost:8080/ssmff5gk/upload/xuesheng_touxiang1.jpg','班级1','13823888881','773890001@qq.com','宿舍号1'),(32,'2021-04-20 15:40:51','学生2','123456','学生姓名2','男','http://localhost:8080/ssmff5gk/upload/xuesheng_touxiang2.jpg','班级2','13823888882','773890002@qq.com','宿舍号2'),(33,'2021-04-20 15:40:51','学生3','123456','学生姓名3','男','http://localhost:8080/ssmff5gk/upload/xuesheng_touxiang3.jpg','班级3','13823888883','773890003@qq.com','宿舍号3'),(34,'2021-04-20 15:40:51','学生4','123456','学生姓名4','男','http://localhost:8080/ssmff5gk/upload/xuesheng_touxiang4.jpg','班级4','13823888884','773890004@qq.com','宿舍号4'),(35,'2021-04-20 15:40:51','学生5','123456','学生姓名5','男','http://localhost:8080/ssmff5gk/upload/xuesheng_touxiang5.jpg','班级5','13823888885','773890005@qq.com','宿舍号5'),(36,'2021-04-20 15:40:51','学生6','123456','学生姓名6','男','http://localhost:8080/ssmff5gk/upload/xuesheng_touxiang6.jpg','班级6','13823888886','773890006@qq.com','宿舍号6'),(1618904766690,'2021-04-20 15:46:06','3','3','张一','女','http://localhost:8080/ssmff5gk/upload/1618904780896.jpg','生工1902班','12312312345','1236@qq.com','5栋604');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
