/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoshouxiangmuliucheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoshouxiangmuliucheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoshouxiangmuliucheng`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-03 15:02:06'),(18,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-03 15:02:06'),(19,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-03 15:02:06'),(20,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-03 15:02:06'),(21,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-03 15:02:06'),(22,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-03 15:02:06'),(23,'xiansuo_dengji_types','线索等级',1,'一级',NULL,NULL,'2023-05-03 15:02:07'),(24,'xiansuo_dengji_types','线索等级',2,'二级',NULL,NULL,'2023-05-03 15:02:07'),(25,'xiansuo_dengji_types','线索等级',3,'三级',NULL,NULL,'2023-05-03 15:02:07'),(26,'xiansuo_types','线索类型',1,'线索类型1',NULL,NULL,'2023-05-03 15:02:07'),(27,'xiansuo_types','线索类型',2,'线索类型2',NULL,NULL,'2023-05-03 15:02:07'),(28,'xiansuo_types','线索类型',3,'线索类型3',NULL,NULL,'2023-05-03 15:02:07'),(29,'xiansuo_types','线索类型',4,'线索类型4',NULL,NULL,'2023-05-03 15:02:07'),(30,'xiansuo_genjin_types','线索跟进类型',1,'线索跟进类型1',NULL,NULL,'2023-05-03 15:02:07'),(31,'xiansuo_genjin_types','线索跟进类型',2,'线索跟进类型2',NULL,NULL,'2023-05-03 15:02:07'),(32,'xiansuo_genjin_types','线索跟进类型',3,'线索跟进类型3',NULL,NULL,'2023-05-03 15:02:07'),(33,'xiansuo_genjin_types','线索跟进类型',4,'线索跟进类型4',NULL,NULL,'2023-05-03 15:02:07'),(34,'xiansuo_zhuanhua_types','线索转化类型',1,'线索转化类型1',NULL,NULL,'2023-05-03 15:02:07'),(35,'xiansuo_zhuanhua_types','线索转化类型',2,'线索转化类型2',NULL,NULL,'2023-05-03 15:02:07'),(36,'xiansuo_zhuanhua_types','线索转化类型',3,'线索转化类型3',NULL,NULL,'2023-05-03 15:02:07'),(37,'xiansuo_zhuanhua_types','线索转化类型',4,'线索转化类型4',NULL,NULL,'2023-05-03 15:02:07'),(38,'shangji_dengji_types','商机等级',1,'一级',NULL,NULL,'2023-05-03 15:02:07'),(39,'shangji_dengji_types','商机等级',2,'二级',NULL,NULL,'2023-05-03 15:02:07'),(40,'shangji_dengji_types','商机等级',3,'三级',NULL,NULL,'2023-05-03 15:02:07'),(41,'shangji_types','商机类型',1,'商机类型1',NULL,NULL,'2023-05-03 15:02:07'),(42,'shangji_types','商机类型',2,'商机类型2',NULL,NULL,'2023-05-03 15:02:07'),(43,'shangji_types','商机类型',3,'商机类型3',NULL,NULL,'2023-05-03 15:02:07'),(44,'shangji_types','商机类型',4,'商机类型4',NULL,NULL,'2023-05-03 15:02:07'),(45,'shangji_genjin_types','商机跟进类型',1,'商机跟进类型1',NULL,NULL,'2023-05-03 15:02:07'),(46,'shangji_genjin_types','商机跟进类型',2,'商机跟进类型2',NULL,NULL,'2023-05-03 15:02:07'),(47,'shangji_genjin_types','商机跟进类型',3,'商机跟进类型3',NULL,NULL,'2023-05-03 15:02:07'),(48,'shangji_genjin_types','商机跟进类型',4,'商机跟进类型4',NULL,NULL,'2023-05-03 15:02:07'),(49,'shangji_zhuanhua_types','商机转化类型',1,'商机转化类型1',NULL,NULL,'2023-05-03 15:02:07'),(50,'shangji_zhuanhua_types','商机转化类型',2,'商机转化类型2',NULL,NULL,'2023-05-03 15:02:07'),(51,'shangji_zhuanhua_types','商机转化类型',3,'商机转化类型3',NULL,NULL,'2023-05-03 15:02:07'),(52,'shangji_zhuanhua_types','商机转化类型',4,'商机转化类型4',NULL,NULL,'2023-05-03 15:02:07'),(53,'lixiang_yesno_types','立项状态',1,'待审核',NULL,NULL,'2023-05-03 15:02:07'),(54,'lixiang_yesno_types','立项状态',2,'同意立项',NULL,NULL,'2023-05-03 15:02:07'),(55,'lixiang_yesno_types','立项状态',3,'拒绝立项',NULL,NULL,'2023-05-03 15:02:07'),(56,'lixiang_types','项目类型',1,'项目类型1',NULL,NULL,'2023-05-03 15:02:07'),(57,'lixiang_types','项目类型',2,'项目类型2',NULL,NULL,'2023-05-03 15:02:07'),(58,'lixiang_types','项目类型',3,'项目类型3',NULL,NULL,'2023-05-03 15:02:07'),(59,'lixiang_types','项目类型',4,'项目类型4',NULL,NULL,'2023-05-03 15:02:08'),(60,'lixiang_pingshen_yesno_types','项目评审状态',1,'待审核',NULL,NULL,'2023-05-03 15:02:08'),(61,'lixiang_pingshen_yesno_types','项目评审状态',2,'通过评审',NULL,NULL,'2023-05-03 15:02:08'),(62,'lixiang_pingshen_yesno_types','项目评审状态',3,'拒绝评审',NULL,NULL,'2023-05-03 15:02:08'),(63,'lixiang_pingshen_types','项目评审类型',1,'项目评审类型1',NULL,NULL,'2023-05-03 15:02:08'),(64,'lixiang_pingshen_types','项目评审类型',2,'项目评审类型2',NULL,NULL,'2023-05-03 15:02:08'),(65,'lixiang_pingshen_types','项目评审类型',3,'项目评审类型3',NULL,NULL,'2023-05-03 15:02:08'),(66,'lixiang_pingshen_types','项目评审类型',4,'项目评审类型4',NULL,NULL,'2023-05-03 15:02:08'),(67,'zhaobiao_types','招标类型',1,'招标类型1',NULL,NULL,'2023-05-03 15:02:08'),(68,'zhaobiao_types','招标类型',2,'招标类型2',NULL,NULL,'2023-05-03 15:02:08'),(69,'zhaobiao_types','招标类型',3,'招标类型3',NULL,NULL,'2023-05-03 15:02:08'),(70,'zhaobiao_types','招标类型',4,'招标类型4',NULL,NULL,'2023-05-03 15:02:08'),(71,'zhaobiao_toubiao_yesno_types','投标状态',1,'待上传',NULL,NULL,'2023-05-03 15:02:08'),(72,'zhaobiao_toubiao_yesno_types','投标状态',2,'通过竞标',NULL,NULL,'2023-05-03 15:02:08'),(73,'zhaobiao_toubiao_yesno_types','投标状态',3,'没通过竞标',NULL,NULL,'2023-05-03 15:02:08'),(74,'hetongqianshu_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-05-03 15:02:08'),(75,'hetongqianshu_yesno_types','审核状态',2,'同意',NULL,NULL,'2023-05-03 15:02:08'),(76,'hetongqianshu_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-05-03 15:02:08'),(77,'lixiangyanshou_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-05-03 15:02:08'),(78,'lixiangyanshou_yesno_types','审核状态',2,'同意',NULL,NULL,'2023-05-03 15:02:08'),(79,'lixiangyanshou_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-05-03 15:02:08'),(80,'zhaobiao_types','招标类型',5,'招标类型5',NULL,'','2023-05-03 15:22:38');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-03 15:02:15','公告详情1','2023-05-03 15:02:15'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-03 15:02:15','公告详情2','2023-05-03 15:02:15'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-03 15:02:15','公告详情3','2023-05-03 15:02:15'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-05-03 15:02:15','公告详情4','2023-05-03 15:02:15'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-03 15:02:15','公告详情5','2023-05-03 15:02:15'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-03 15:02:15','公告详情6','2023-05-03 15:02:15'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-05-03 15:02:15','公告详情7','2023-05-03 15:02:15'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-03 15:02:15','公告详情8','2023-05-03 15:02:15'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-05-03 15:02:15','公告详情9','2023-05-03 15:02:15'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-05-03 15:02:15','公告详情10','2023-05-03 15:02:15'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-05-03 15:02:15','公告详情11','2023-05-03 15:02:15'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-05-03 15:02:15','公告详情12','2023-05-03 15:02:15'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-05-03 15:02:15','公告详情13','2023-05-03 15:02:15'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-03 15:02:15','公告详情14','2023-05-03 15:02:15');

/*Table structure for table `hetongqianshu` */

DROP TABLE IF EXISTS `hetongqianshu`;

CREATE TABLE `hetongqianshu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `hetongqianshu_uuid_number` varchar(200) DEFAULT NULL COMMENT '合同签署编号',
  `hetongqianshu_jiafang` varchar(200) DEFAULT NULL COMMENT '甲方',
  `hetongqianshu_jiafang_address` varchar(200) DEFAULT NULL COMMENT '甲方地址',
  `hetongqianshu_yifang` varchar(200) DEFAULT NULL COMMENT '乙方',
  `hetongqianshu_yifang_address` varchar(200) DEFAULT NULL COMMENT '乙方地址',
  `hetongqianshu_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `hetongqianshu_time` timestamp NULL DEFAULT NULL COMMENT '签署时间',
  `hetongqianshu_jine` decimal(10,2) DEFAULT NULL COMMENT '合同金额(万)',
  `hetongqianshu_weiyue_jine` decimal(10,2) DEFAULT NULL COMMENT '违约金(万)',
  `hetongqianshu_content` longtext COMMENT '合同签署备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `hetongqianshu_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `hetongqianshu_yesno_text` longtext COMMENT '审核回复',
  `hetongqianshu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='合同签署';

/*Data for the table `hetongqianshu` */

insert  into `hetongqianshu`(`id`,`yonghu_id`,`hetongqianshu_uuid_number`,`hetongqianshu_jiafang`,`hetongqianshu_jiafang_address`,`hetongqianshu_yifang`,`hetongqianshu_yifang_address`,`hetongqianshu_file`,`hetongqianshu_time`,`hetongqianshu_jine`,`hetongqianshu_weiyue_jine`,`hetongqianshu_content`,`insert_time`,`hetongqianshu_yesno_types`,`hetongqianshu_yesno_text`,`hetongqianshu_shenhe_time`,`create_time`) values (1,2,'1683097335039','甲方1','甲方地址1','乙方1','乙方地址1','upload/file.rar','2023-05-03 15:02:15','114.45','566.47','合同签署备注1','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(2,3,'1683097335034','甲方2','甲方地址2','乙方2','乙方地址2','upload/file.rar','2023-05-03 15:02:15','895.73','78.15','合同签署备注2','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(3,2,'1683097335060','甲方3','甲方地址3','乙方3','乙方地址3','upload/file.rar','2023-05-03 15:02:15','147.59','219.05','合同签署备注3','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(4,2,'1683097335023','甲方4','甲方地址4','乙方4','乙方地址4','upload/file.rar','2023-05-03 15:02:15','79.70','556.96','合同签署备注4','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(5,3,'1683097335017','甲方5','甲方地址5','乙方5','乙方地址5','upload/file.rar','2023-05-03 15:02:15','781.50','747.90','合同签署备注5','2023-05-03 15:02:15',2,'好几家','2023-05-03 15:16:30','2023-05-03 15:02:15'),(6,1,'1683097335032','甲方6','甲方地址6','乙方6','乙方地址6','upload/file.rar','2023-05-03 15:02:15','685.52','683.50','合同签署备注6','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(7,1,'1683097335082','甲方7','甲方地址7','乙方7','乙方地址7','upload/file.rar','2023-05-03 15:02:15','182.46','218.32','合同签署备注7','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(8,2,'1683097335095','甲方8','甲方地址8','乙方8','乙方地址8','upload/file.rar','2023-05-03 15:02:15','247.82','503.71','合同签署备注8','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(9,3,'1683097335037','甲方9','甲方地址9','乙方9','乙方地址9','upload/file.rar','2023-05-03 15:02:15','777.79','626.04','合同签署备注9','2023-05-03 15:02:15',2,'哈哈哈','2023-05-03 15:16:25','2023-05-03 15:02:15'),(10,2,'1683097335111','甲方10','甲方地址10','乙方10','乙方地址10','upload/file.rar','2023-05-03 15:02:15','614.15','291.29','合同签署备注10','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(11,2,'1683097335032','甲方11','甲方地址11','乙方11','乙方地址11','upload/file.rar','2023-05-03 15:02:15','816.05','969.50','合同签署备注11','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(12,2,'1683097335028','甲方12','甲方地址12','乙方12','乙方地址12','upload/file.rar','2023-05-03 15:02:15','809.56','895.44','合同签署备注12','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(13,1,'1683097335060','甲方13','甲方地址13','乙方13','乙方地址13','upload/file.rar','2023-05-03 15:02:15','375.44','886.14','合同签署备注13','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(14,1,'1683097335065','甲方14','甲方地址14','乙方14','乙方地址14','upload/file.rar','2023-05-03 15:02:15','307.68','521.75','合同签署备注14','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(15,3,'1683098312849','甲方11111','位置222广东省格式','意昂1','广东省是的很多时候','/upload/1683098324794.doc','2023-05-03 15:18:46','33.00','55.00','<p>个第三个十多个第三个</p>','2023-05-03 15:18:53',1,'',NULL,'2023-05-03 15:18:53');

/*Table structure for table `lixiang` */

DROP TABLE IF EXISTS `lixiang`;

CREATE TABLE `lixiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lixiang_uuid_number` varchar(200) DEFAULT NULL COMMENT '立项编号',
  `lixiang_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `lixiang_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `lixiang_address` varchar(200) DEFAULT NULL COMMENT '项目地址  Search111 ',
  `lixiang_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `lixiang_content` longtext COMMENT '立项内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '立项时间',
  `lixiang_yesno_types` int(11) DEFAULT NULL COMMENT '立项状态 Search111',
  `lixiang_yesno_text` longtext COMMENT '审核意见',
  `lixiang_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='项目立项';

/*Data for the table `lixiang` */

insert  into `lixiang`(`id`,`yonghu_id`,`lixiang_uuid_number`,`lixiang_name`,`lixiang_types`,`lixiang_address`,`lixiang_file`,`lixiang_content`,`insert_time`,`lixiang_yesno_types`,`lixiang_yesno_text`,`lixiang_shenhe_time`,`create_time`) values (1,3,'1683097335086','项目名称1',3,'项目地址1','upload/file.rar','立项内容1','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(2,1,'1683097335075','项目名称2',1,'项目地址2','upload/file.rar','立项内容2','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(3,2,'1683097335095','项目名称3',3,'项目地址3','upload/file.rar','立项内容3','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(4,3,'1683097335117','项目名称4',2,'项目地址4','upload/file.rar','立项内容4','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(5,2,'1683097335022','项目名称5',2,'项目地址5','upload/file.rar','立项内容5','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(6,3,'1683097335104','项目名称6',3,'项目地址6','upload/file.rar','立项内容6','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(7,2,'1683097335034','项目名称7',4,'项目地址7','upload/file.rar','立项内容7','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(8,2,'1683097335034','项目名称8',2,'项目地址8','upload/file.rar','立项内容8','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(9,2,'1683097335023','项目名称9',4,'项目地址9','upload/file.rar','立项内容9','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(10,3,'1683097335096','项目名称10',2,'项目地址10','upload/file.rar','立项内容10','2023-05-03 15:02:15',3,'公益诉讼的','2023-05-03 15:16:15','2023-05-03 15:02:15'),(11,2,'1683097335024','项目名称11',4,'项目地址11','upload/file.rar','立项内容11','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(12,3,'1683097335093','项目名称12',4,'项目地址12','upload/file.rar','立项内容12','2023-05-03 15:02:15',2,'京津冀看看','2023-05-03 15:16:10','2023-05-03 15:02:15'),(13,3,'1683097335031','项目名称13',1,'项目地址13','upload/file.rar','立项内容13','2023-05-03 15:02:15',2,'法国萨','2023-05-03 15:16:02','2023-05-03 15:02:15'),(14,1,'1683097335117','项目名称14',3,'项目地址14','upload/file.rar','立项内容14','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(15,3,'1683098296566','项目1111',4,'地址111','/upload/1683098305293.doc','<p>好地方个梵蒂冈</p>','2023-05-03 15:18:27',1,'',NULL,'2023-05-03 15:18:27');

/*Table structure for table `lixiang_genjin` */

DROP TABLE IF EXISTS `lixiang_genjin`;

CREATE TABLE `lixiang_genjin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `lixiang_id` int(11) DEFAULT NULL COMMENT '立项项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lixiang_genjin_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目跟进编号',
  `lixiang_genjin_name` varchar(200) DEFAULT NULL COMMENT '跟进标题  Search111 ',
  `lixiang_genjin_file` varchar(200) DEFAULT NULL COMMENT '项目跟进附件',
  `lixiang_genjin_address` varchar(200) DEFAULT NULL COMMENT '跟进地点  Search111 ',
  `lixiang_genjin_time` timestamp NULL DEFAULT NULL COMMENT '跟进时间',
  `lixiang_genjin_content` longtext COMMENT '跟进内容 ',
  `lixiang_genjin_jieguo` varchar(200) DEFAULT NULL COMMENT '跟定结果  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='项目跟进';

/*Data for the table `lixiang_genjin` */

insert  into `lixiang_genjin`(`id`,`lixiang_id`,`yonghu_id`,`lixiang_genjin_uuid_number`,`lixiang_genjin_name`,`lixiang_genjin_file`,`lixiang_genjin_address`,`lixiang_genjin_time`,`lixiang_genjin_content`,`lixiang_genjin_jieguo`,`insert_time`,`create_time`) values (1,1,2,'1683097335110','跟进标题1','upload/file.rar','跟进地点1','2023-05-03 15:02:15','跟进内容1','跟定结果1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,2,3,'1683097335056','跟进标题2','upload/file.rar','跟进地点2','2023-05-03 15:02:15','跟进内容2','跟定结果2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,3,1,'1683097335056','跟进标题3','upload/file.rar','跟进地点3','2023-05-03 15:02:15','跟进内容3','跟定结果3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,4,3,'1683097335098','跟进标题4','upload/file.rar','跟进地点4','2023-05-03 15:02:15','跟进内容4','跟定结果4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,5,2,'1683097335054','跟进标题5','upload/file.rar','跟进地点5','2023-05-03 15:02:15','跟进内容5','跟定结果5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,6,3,'1683097335113','跟进标题6','upload/file.rar','跟进地点6','2023-05-03 15:02:15','跟进内容6','跟定结果6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,7,3,'1683097335041','跟进标题7','upload/file.rar','跟进地点7','2023-05-03 15:02:15','跟进内容7','跟定结果7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,8,2,'1683097335048','跟进标题8','upload/file.rar','跟进地点8','2023-05-03 15:02:15','跟进内容8','跟定结果8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,9,1,'1683097335075','跟进标题9','upload/file.rar','跟进地点9','2023-05-03 15:02:15','跟进内容9','跟定结果9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,10,3,'1683097335032','跟进标题10','upload/file.rar','跟进地点10','2023-05-03 15:02:15','跟进内容10','跟定结果10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,11,2,'1683097335062','跟进标题11','upload/file.rar','跟进地点11','2023-05-03 15:02:15','跟进内容11','跟定结果11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,12,1,'1683097335114','跟进标题12','upload/file.rar','跟进地点12','2023-05-03 15:02:15','跟进内容12','跟定结果12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,13,1,'1683097335046','跟进标题13','upload/file.rar','跟进地点13','2023-05-03 15:02:15','跟进内容13','跟定结果13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,14,1,'1683097335098','跟进标题14','upload/file.rar','跟进地点14','2023-05-03 15:02:15','跟进内容14','跟定结果14','2023-05-03 15:02:15','2023-05-03 15:02:15'),(15,12,3,'1683098337678','跟进1111','/upload/1683098345446.doc','位置1211','2023-05-03 15:19:08','<p>个大赛的圣诞树第三个</p>','挂号费哈哈哈','2023-05-03 15:19:12','2023-05-03 15:19:12');

/*Table structure for table `lixiang_pingshen` */

DROP TABLE IF EXISTS `lixiang_pingshen`;

CREATE TABLE `lixiang_pingshen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lixiang_id` int(11) DEFAULT NULL COMMENT '项目',
  `lixiang_pingshen_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目评审编号',
  `lixiang_pingshen_name` varchar(200) DEFAULT NULL COMMENT '项目评审标题  Search111 ',
  `lixiang_pingshen_types` int(11) DEFAULT NULL COMMENT '项目评审类型 Search111',
  `lixiang_pingshen_file` varchar(200) DEFAULT NULL COMMENT '评审附件',
  `lixiang_pingshen_content` longtext COMMENT '项目评审报告',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `lixiang_pingshen_yesno_types` int(11) DEFAULT NULL COMMENT '项目评审状态 Search111',
  `lixiang_pingshen_yesno_text` longtext COMMENT '审核意见',
  `lixiang_pingshen_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='项目评审';

/*Data for the table `lixiang_pingshen` */

insert  into `lixiang_pingshen`(`id`,`yonghu_id`,`lixiang_id`,`lixiang_pingshen_uuid_number`,`lixiang_pingshen_name`,`lixiang_pingshen_types`,`lixiang_pingshen_file`,`lixiang_pingshen_content`,`insert_time`,`lixiang_pingshen_yesno_types`,`lixiang_pingshen_yesno_text`,`lixiang_pingshen_shenhe_time`,`create_time`) values (1,3,1,'1683097335091','项目评审标题1',4,'upload/file.rar','项目评审报告1','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(2,2,2,'1683097335033','项目评审标题2',4,'upload/file.rar','项目评审报告2','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(3,3,3,'1683097335117','项目评审标题3',1,'upload/file.rar','项目评审报告3','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(4,2,4,'1683097335072','项目评审标题4',1,'upload/file.rar','项目评审报告4','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(5,3,5,'1683097335076','项目评审标题5',3,'upload/file.rar','项目评审报告5','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(6,3,6,'1683097335056','项目评审标题6',1,'upload/file.rar','项目评审报告6','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(7,3,7,'1683097335054','项目评审标题7',4,'upload/file.rar','项目评审报告7','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(8,1,8,'1683097335086','项目评审标题8',2,'upload/file.rar','项目评审报告8','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(9,2,9,'1683097335033','项目评审标题9',4,'upload/file.rar','项目评审报告9','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(10,1,10,'1683097335035','项目评审标题10',4,'upload/file.rar','项目评审报告10','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(11,3,11,'1683097335112','项目评审标题11',1,'upload/file.rar','项目评审报告11','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(12,1,12,'1683097335073','项目评审标题12',1,'upload/file.rar','项目评审报告12','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(13,3,13,'1683097335032','项目评审标题13',2,'upload/file.rar','项目评审报告13','2023-05-03 15:02:15',2,'海上风电发达杀手','2023-05-03 15:16:41','2023-05-03 15:02:15'),(14,1,14,'1683097335110','项目评审标题14',3,'upload/file.rar','项目评审报告14','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15');

/*Table structure for table `lixiangyanshou` */

DROP TABLE IF EXISTS `lixiangyanshou`;

CREATE TABLE `lixiangyanshou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `lixiang_id` int(11) DEFAULT NULL COMMENT '立项项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lixiangyanshou_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目验收编号',
  `lixiangyanshou_name` varchar(200) DEFAULT NULL COMMENT '验收标题  Search111 ',
  `lixiangyanshou_file` varchar(200) DEFAULT NULL COMMENT '项目验收附件',
  `lixiangyanshou_address` varchar(200) DEFAULT NULL COMMENT '验收地点  Search111 ',
  `lixiangyanshou_time` timestamp NULL DEFAULT NULL COMMENT '验收时间',
  `lixiangyanshou_content` longtext COMMENT '验收内容 ',
  `lixiangyanshou_jieguo` varchar(200) DEFAULT NULL COMMENT '验收结果  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `lixiangyanshou_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `lixiangyanshou_yesno_text` longtext COMMENT '审核意见',
  `lixiangyanshou_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='项目验收';

/*Data for the table `lixiangyanshou` */

insert  into `lixiangyanshou`(`id`,`lixiang_id`,`yonghu_id`,`lixiangyanshou_uuid_number`,`lixiangyanshou_name`,`lixiangyanshou_file`,`lixiangyanshou_address`,`lixiangyanshou_time`,`lixiangyanshou_content`,`lixiangyanshou_jieguo`,`insert_time`,`lixiangyanshou_yesno_types`,`lixiangyanshou_yesno_text`,`lixiangyanshou_shenhe_time`,`create_time`) values (1,1,2,'1683097335034','验收标题1','upload/file.rar','验收地点1','2023-05-03 15:02:15','验收内容1','验收结果1','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(2,2,3,'1683097335055','验收标题2','upload/file.rar','验收地点2','2023-05-03 15:02:15','验收内容2','验收结果2','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(3,3,1,'1683097335074','验收标题3','upload/file.rar','验收地点3','2023-05-03 15:02:15','验收内容3','验收结果3','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(4,4,2,'1683097335094','验收标题4','upload/file.rar','验收地点4','2023-05-03 15:02:15','验收内容4','验收结果4','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(5,5,2,'1683097335122','验收标题5','upload/file.rar','验收地点5','2023-05-03 15:02:15','验收内容5','验收结果5','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(6,6,1,'1683097335102','验收标题6','upload/file.rar','验收地点6','2023-05-03 15:02:15','验收内容6','验收结果6','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(7,7,1,'1683097335114','验收标题7','upload/file.rar','验收地点7','2023-05-03 15:02:15','验收内容7','验收结果7','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(8,8,3,'1683097335105','验收标题8','upload/file.rar','验收地点8','2023-05-03 15:02:15','验收内容8','验收结果8','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(9,9,3,'1683097335081','验收标题9','upload/file.rar','验收地点9','2023-05-03 15:02:15','验收内容9','验收结果9','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(10,10,1,'1683097335123','验收标题10','upload/file.rar','验收地点10','2023-05-03 15:02:15','验收内容10','验收结果10','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(11,11,3,'1683097335059','验收标题11','upload/file.rar','验收地点11','2023-05-03 15:02:15','验收内容11','验收结果11','2023-05-03 15:02:15',3,'HDFS读书','2023-05-03 15:16:48','2023-05-03 15:02:15'),(12,12,2,'1683097335091','验收标题12','upload/file.rar','验收地点12','2023-05-03 15:02:15','验收内容12','验收结果12','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(13,13,1,'1683097335033','验收标题13','upload/file.rar','验收地点13','2023-05-03 15:02:15','验收内容13','验收结果13','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(14,14,2,'1683097335119','验收标题14','upload/file.rar','验收地点14','2023-05-03 15:02:15','验收内容14','验收结果14','2023-05-03 15:02:15',1,NULL,NULL,'2023-05-03 15:02:15'),(15,12,3,'1683098427055','验收1111','/upload/1683098434342.doc','位置i1111','2023-05-03 15:20:37','<p>固定死是大概多少根深蒂固</p>','通过','2023-05-03 15:20:43',1,'',NULL,'2023-05-03 15:20:43');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `qiye_fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiye_logo_photo` varchar(200) DEFAULT NULL COMMENT '企业logo',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示',
  `qiye_content` longtext COMMENT '企业介绍 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`username`,`password`,`qiye_name`,`qiye_fuzeren`,`qiye_phone`,`qiye_email`,`qiye_logo_photo`,`qiye_photo`,`qiye_content`,`jinyong_types`,`create_time`) values (1,'a1','123456','企业名称1','负责人1','17703786901','1@qq.com','upload/qiye_logo1.jpg','upload/qiye1.jpg','企业介绍1',1,'2023-05-03 15:02:15'),(2,'a2','123456','企业名称2','负责人2','17703786902','2@qq.com','upload/qiye_logo2.jpg','upload/qiye2.jpg','企业介绍2',1,'2023-05-03 15:02:15'),(3,'a3','123456','企业名称3','负责人3','17703786903','3@qq.com','upload/qiye_logo3.jpg','upload/qiye3.jpg','企业介绍3',1,'2023-05-03 15:02:15');

/*Table structure for table `shangji` */

DROP TABLE IF EXISTS `shangji`;

CREATE TABLE `shangji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangji_uuid_number` varchar(200) DEFAULT NULL COMMENT '商机编号',
  `shangji_name` varchar(200) DEFAULT NULL COMMENT '商机标题  Search111 ',
  `shangji_address` varchar(200) DEFAULT NULL COMMENT '商机发现地址',
  `shangji_time` timestamp NULL DEFAULT NULL COMMENT '发现时间',
  `shangji_dengji_types` int(11) DEFAULT NULL COMMENT '商机等级 Search111',
  `shangji_types` int(11) DEFAULT NULL COMMENT '商机类型 Search111',
  `shangji_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `shangji_content` longtext COMMENT '商机内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商机';

/*Data for the table `shangji` */

insert  into `shangji`(`id`,`yonghu_id`,`shangji_uuid_number`,`shangji_name`,`shangji_address`,`shangji_time`,`shangji_dengji_types`,`shangji_types`,`shangji_file`,`shangji_content`,`insert_time`,`create_time`) values (1,1,'1683097335071','商机标题1','商机发现地址1','2023-05-03 15:02:15',3,1,'upload/file.rar','商机内容1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,1,'1683097335121','商机标题2','商机发现地址2','2023-05-03 15:02:15',1,2,'upload/file.rar','商机内容2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,2,'1683097335049','商机标题3','商机发现地址3','2023-05-03 15:02:15',2,4,'upload/file.rar','商机内容3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,3,'1683097335061','商机标题4','商机发现地址4','2023-05-03 15:02:15',1,3,'upload/file.rar','商机内容4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,3,'1683097335115','商机标题5','商机发现地址5','2023-05-03 15:02:15',2,2,'upload/file.rar','商机内容5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,2,'1683097335077','商机标题6','商机发现地址6','2023-05-03 15:02:15',2,4,'upload/file.rar','商机内容6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,2,'1683097335059','商机标题7','商机发现地址7','2023-05-03 15:02:15',3,3,'upload/file.rar','商机内容7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,2,'1683097335103','商机标题8','商机发现地址8','2023-05-03 15:02:15',2,1,'upload/file.rar','商机内容8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,3,'1683097335100','商机标题9','商机发现地址9','2023-05-03 15:02:15',3,3,'upload/file.rar','商机内容9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,3,'1683097335032','商机标题10','商机发现地址10','2023-05-03 15:02:15',2,2,'upload/file.rar','商机内容10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,1,'1683097335076','商机标题11','商机发现地址11','2023-05-03 15:02:15',3,4,'upload/file.rar','商机内容11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,3,'1683097335104','商机标题12','商机发现地址12','2023-05-03 15:02:15',3,3,'upload/file.rar','商机内容12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,3,'1683097335064','商机标题13','商机发现地址13','2023-05-03 15:02:15',3,4,'upload/file.rar','商机内容13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,3,'1683097335067','商机标题14','商机发现地址14','2023-05-03 15:02:15',2,3,'upload/file.rar','商机内容14','2023-05-03 15:02:15','2023-05-03 15:02:15'),(15,3,'1683098450399','商机11','儿子11','2023-05-03 15:20:59',2,2,'/upload/1683098464419.doc','<p>和是否都是水电费和</p>','2023-05-03 15:21:06','2023-05-03 15:21:06');

/*Table structure for table `shangji_genjin` */

DROP TABLE IF EXISTS `shangji_genjin`;

CREATE TABLE `shangji_genjin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangji_id` int(11) DEFAULT NULL COMMENT '商机',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangji_genjin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商机跟进编号',
  `shangji_genjin_name` varchar(200) DEFAULT NULL COMMENT '商机跟进标题  Search111 ',
  `shangji_genjin_time` timestamp NULL DEFAULT NULL COMMENT '跟进时间',
  `shangji_genjin_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `shangji_genjin_types` int(11) DEFAULT NULL COMMENT '商机跟进类型 Search111',
  `shangji_genjin_content` longtext COMMENT '商机跟进详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商机跟进';

/*Data for the table `shangji_genjin` */

insert  into `shangji_genjin`(`id`,`shangji_id`,`yonghu_id`,`shangji_genjin_uuid_number`,`shangji_genjin_name`,`shangji_genjin_time`,`shangji_genjin_file`,`shangji_genjin_types`,`shangji_genjin_content`,`insert_time`,`create_time`) values (1,1,1,'1683097335054','商机跟进标题1','2023-05-03 15:02:15','upload/file.rar',1,'商机跟进详情1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,2,3,'1683097335126','商机跟进标题2','2023-05-03 15:02:15','upload/file.rar',1,'商机跟进详情2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,3,1,'1683097335104','商机跟进标题3','2023-05-03 15:02:15','upload/file.rar',1,'商机跟进详情3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,4,3,'1683097335114','商机跟进标题4','2023-05-03 15:02:15','upload/file.rar',4,'商机跟进详情4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,5,2,'1683097335042','商机跟进标题5','2023-05-03 15:02:15','upload/file.rar',2,'商机跟进详情5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,6,1,'1683097335057','商机跟进标题6','2023-05-03 15:02:15','upload/file.rar',3,'商机跟进详情6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,7,1,'1683097335131','商机跟进标题7','2023-05-03 15:02:15','upload/file.rar',1,'商机跟进详情7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,8,2,'1683097335107','商机跟进标题8','2023-05-03 15:02:15','upload/file.rar',3,'商机跟进详情8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,9,1,'1683097335046','商机跟进标题9','2023-05-03 15:02:15','upload/file.rar',4,'商机跟进详情9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,10,3,'1683097335089','商机跟进标题10','2023-05-03 15:02:15','upload/file.rar',3,'商机跟进详情10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,11,1,'1683097335042','商机跟进标题11','2023-05-03 15:02:15','upload/file.rar',3,'商机跟进详情11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,12,2,'1683097335113','商机跟进标题12','2023-05-03 15:02:15','upload/file.rar',2,'商机跟进详情12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,13,3,'1683097335039','商机跟进标题13','2023-05-03 15:02:15','upload/file.rar',1,'商机跟进详情13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,14,2,'1683097335113','商机跟进标题14','2023-05-03 15:02:15','upload/file.rar',3,'商机跟进详情14','2023-05-03 15:02:15','2023-05-03 15:02:15'),(15,15,3,'1683098471047','跟进1111','2023-05-03 15:21:18','/upload/1683098481906.doc',1,'<p>回复收到货烦得很的</p>','2023-05-03 15:21:25','2023-05-03 15:21:25');

/*Table structure for table `shangji_zhuanhua` */

DROP TABLE IF EXISTS `shangji_zhuanhua`;

CREATE TABLE `shangji_zhuanhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangji_id` int(11) DEFAULT NULL COMMENT '商机',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangji_zhuanhua_uuid_number` varchar(200) DEFAULT NULL COMMENT '商机转化编号',
  `shangji_zhuanhua_name` varchar(200) DEFAULT NULL COMMENT '商机转化标题  Search111 ',
  `shangji_zhuanhua_time` timestamp NULL DEFAULT NULL COMMENT '转化时间',
  `shangji_zhuanhua_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `shangji_zhuanhua_types` int(11) DEFAULT NULL COMMENT '商机转化类型 Search111',
  `shangji_zhuanhua_content` longtext COMMENT '商机转化内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商机转化';

/*Data for the table `shangji_zhuanhua` */

insert  into `shangji_zhuanhua`(`id`,`shangji_id`,`yonghu_id`,`shangji_zhuanhua_uuid_number`,`shangji_zhuanhua_name`,`shangji_zhuanhua_time`,`shangji_zhuanhua_file`,`shangji_zhuanhua_types`,`shangji_zhuanhua_content`,`insert_time`,`create_time`) values (1,1,1,'1683097335067','商机转化标题1','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,2,1,'1683097335123','商机转化标题2','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,3,2,'1683097335102','商机转化标题3','2023-05-03 15:02:15','upload/file.rar',3,'商机转化内容3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,4,2,'1683097335064','商机转化标题4','2023-05-03 15:02:15','upload/file.rar',4,'商机转化内容4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,5,2,'1683097335073','商机转化标题5','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,6,3,'1683097335066','商机转化标题6','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,7,3,'1683097335097','商机转化标题7','2023-05-03 15:02:15','upload/file.rar',3,'商机转化内容7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,8,3,'1683097335070','商机转化标题8','2023-05-03 15:02:15','upload/file.rar',1,'商机转化内容8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,9,1,'1683097335041','商机转化标题9','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,10,1,'1683097335074','商机转化标题10','2023-05-03 15:02:15','upload/file.rar',3,'商机转化内容10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,11,1,'1683097335126','商机转化标题11','2023-05-03 15:02:15','upload/file.rar',1,'商机转化内容11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,12,2,'1683097335068','商机转化标题12','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,13,3,'1683097335053','商机转化标题13','2023-05-03 15:02:15','upload/file.rar',2,'商机转化内容13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,14,3,'1683097335049','商机转化标题14','2023-05-03 15:02:15','upload/file.rar',4,'商机转化内容14','2023-05-03 15:02:15','2023-05-03 15:02:15');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','qiye','企业','g5fc8yc14o5rbmqrjoref2okpjjsrbap','2023-05-03 15:06:30','2023-05-03 16:18:01'),(2,1,'admin','users','管理员','88557cgzak71dpc6xncoqzoxbfoeaqkd','2023-05-03 15:06:50','2023-05-03 16:25:46'),(3,3,'a3','yonghu','用户','6xs0wumq01h3regxbpyo24h92vggytwg','2023-05-03 15:10:33','2023-05-03 16:18:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-03 15:02:06');

/*Table structure for table `xiansuo` */

DROP TABLE IF EXISTS `xiansuo`;

CREATE TABLE `xiansuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiansuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '线索编号',
  `xiansuo_name` varchar(200) DEFAULT NULL COMMENT '线索标题  Search111 ',
  `xiansuo_address` varchar(200) DEFAULT NULL COMMENT '线索发现地址',
  `xiansuo_time` timestamp NULL DEFAULT NULL COMMENT '发现时间',
  `xiansuo_dengji_types` int(11) DEFAULT NULL COMMENT '线索等级 Search111',
  `xiansuo_types` int(11) DEFAULT NULL COMMENT '线索类型 Search111',
  `xiansuo_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `xiansuo_content` longtext COMMENT '线索内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='线索';

/*Data for the table `xiansuo` */

insert  into `xiansuo`(`id`,`yonghu_id`,`xiansuo_uuid_number`,`xiansuo_name`,`xiansuo_address`,`xiansuo_time`,`xiansuo_dengji_types`,`xiansuo_types`,`xiansuo_file`,`xiansuo_content`,`insert_time`,`create_time`) values (1,2,'1683097335127','线索标题1','线索发现地址1','2023-05-03 15:02:15',1,2,'upload/file.rar','线索内容1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,2,'1683097335050','线索标题2','线索发现地址2','2023-05-03 15:02:15',2,1,'upload/file.rar','线索内容2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,2,'1683097335122','线索标题3','线索发现地址3','2023-05-03 15:02:15',3,1,'upload/file.rar','线索内容3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,3,'1683097335075','线索标题4','线索发现地址4','2023-05-03 15:02:15',2,3,'upload/file.rar','线索内容4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,1,'1683097335083','线索标题5','线索发现地址5','2023-05-03 15:02:15',3,1,'upload/file.rar','线索内容5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,2,'1683097335085','线索标题6','线索发现地址6','2023-05-03 15:02:15',1,2,'upload/file.rar','线索内容6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,3,'1683097335111','线索标题7','线索发现地址7','2023-05-03 15:02:15',3,1,'upload/file.rar','线索内容7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,2,'1683097335113','线索标题8','线索发现地址8','2023-05-03 15:02:15',3,3,'upload/file.rar','线索内容8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,2,'1683097335089','线索标题9','线索发现地址9','2023-05-03 15:02:15',1,2,'upload/file.rar','线索内容9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,1,'1683097335037','线索标题10','线索发现地址10','2023-05-03 15:02:15',2,1,'upload/file.rar','线索内容10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,3,'1683097335075','线索标题11','线索发现地址11','2023-05-03 15:02:15',3,4,'upload/file.rar','线索内容11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,2,'1683097335079','线索标题12','线索发现地址12','2023-05-03 15:02:15',3,2,'upload/file.rar','线索内容12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,2,'1683097335058','线索标题13','线索发现地址13','2023-05-03 15:02:15',1,3,'upload/file.rar','线索内容13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,3,'1683097335074','线索标题14','线索发现地址14','2023-05-03 15:02:15',2,4,'upload/file.rar','线索内容14','2023-05-03 15:02:15','2023-05-03 15:02:15');

/*Table structure for table `xiansuo_genjin` */

DROP TABLE IF EXISTS `xiansuo_genjin`;

CREATE TABLE `xiansuo_genjin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiansuo_id` int(11) DEFAULT NULL COMMENT '线索',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiansuo_genjin_uuid_number` varchar(200) DEFAULT NULL COMMENT '线索跟进编号',
  `xiansuo_genjin_name` varchar(200) DEFAULT NULL COMMENT '线索跟进标题  Search111 ',
  `xiansuo_genjin_time` timestamp NULL DEFAULT NULL COMMENT '跟进时间',
  `xiansuo_genjin_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `xiansuo_genjin_types` int(11) DEFAULT NULL COMMENT '线索跟进类型 Search111',
  `xiansuo_genjin_content` longtext COMMENT '线索跟进详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='线索跟进';

/*Data for the table `xiansuo_genjin` */

insert  into `xiansuo_genjin`(`id`,`xiansuo_id`,`yonghu_id`,`xiansuo_genjin_uuid_number`,`xiansuo_genjin_name`,`xiansuo_genjin_time`,`xiansuo_genjin_file`,`xiansuo_genjin_types`,`xiansuo_genjin_content`,`insert_time`,`create_time`) values (1,1,2,'1683097335087','线索跟进标题1','2023-05-03 15:02:15','upload/file.rar',4,'线索跟进详情1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,2,3,'1683097335115','线索跟进标题2','2023-05-03 15:02:15','upload/file.rar',3,'线索跟进详情2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,3,1,'1683097335107','线索跟进标题3','2023-05-03 15:02:15','upload/file.rar',2,'线索跟进详情3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,4,1,'1683097335091','线索跟进标题4','2023-05-03 15:02:15','upload/file.rar',4,'线索跟进详情4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,5,1,'1683097335127','线索跟进标题5','2023-05-03 15:02:15','upload/file.rar',1,'线索跟进详情5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,6,2,'1683097335108','线索跟进标题6','2023-05-03 15:02:15','upload/file.rar',4,'线索跟进详情6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,7,3,'1683097335105','线索跟进标题7','2023-05-03 15:02:15','upload/file.rar',1,'线索跟进详情7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,8,1,'1683097335060','线索跟进标题8','2023-05-03 15:02:15','upload/file.rar',2,'线索跟进详情8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,9,1,'1683097335139','线索跟进标题9','2023-05-03 15:02:15','upload/file.rar',3,'线索跟进详情9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,10,3,'1683097335058','线索跟进标题10','2023-05-03 15:02:15','upload/file.rar',3,'线索跟进详情10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,11,2,'1683097335063','线索跟进标题11','2023-05-03 15:02:15','upload/file.rar',1,'线索跟进详情11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,12,1,'1683097335108','线索跟进标题12','2023-05-03 15:02:15','upload/file.rar',1,'线索跟进详情12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,13,2,'1683097335125','线索跟进标题13','2023-05-03 15:02:15','upload/file.rar',4,'线索跟进详情13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,14,1,'1683097335137','线索跟进标题14','2023-05-03 15:02:15','upload/file.rar',2,'线索跟进详情14','2023-05-03 15:02:15','2023-05-03 15:02:15');

/*Table structure for table `xiansuo_zhuanhua` */

DROP TABLE IF EXISTS `xiansuo_zhuanhua`;

CREATE TABLE `xiansuo_zhuanhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiansuo_id` int(11) DEFAULT NULL COMMENT '线索',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiansuo_zhuanhua_uuid_number` varchar(200) DEFAULT NULL COMMENT '线索转化编号',
  `xiansuo_zhuanhua_name` varchar(200) DEFAULT NULL COMMENT '线索转化标题  Search111 ',
  `xiansuo_zhuanhua_time` timestamp NULL DEFAULT NULL COMMENT '转化时间',
  `xiansuo_zhuanhua_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `xiansuo_zhuanhua_types` int(11) DEFAULT NULL COMMENT '线索转化类型 Search111',
  `xiansuo_zhuanhua_content` longtext COMMENT '线索转化内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='线索转化';

/*Data for the table `xiansuo_zhuanhua` */

insert  into `xiansuo_zhuanhua`(`id`,`xiansuo_id`,`yonghu_id`,`xiansuo_zhuanhua_uuid_number`,`xiansuo_zhuanhua_name`,`xiansuo_zhuanhua_time`,`xiansuo_zhuanhua_file`,`xiansuo_zhuanhua_types`,`xiansuo_zhuanhua_content`,`insert_time`,`create_time`) values (1,1,1,'1683097335058','线索转化标题1','2023-05-03 15:02:15','upload/file.rar',1,'线索转化内容1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,2,2,'1683097335097','线索转化标题2','2023-05-03 15:02:15','upload/file.rar',3,'线索转化内容2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,3,2,'1683097335045','线索转化标题3','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,4,1,'1683097335064','线索转化标题4','2023-05-03 15:02:15','upload/file.rar',2,'线索转化内容4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,5,3,'1683097335138','线索转化标题5','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,6,3,'1683097335119','线索转化标题6','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,7,2,'1683097335090','线索转化标题7','2023-05-03 15:02:15','upload/file.rar',2,'线索转化内容7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,8,1,'1683097335120','线索转化标题8','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,9,3,'1683097335059','线索转化标题9','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,10,3,'1683097335057','线索转化标题10','2023-05-03 15:02:15','upload/file.rar',2,'线索转化内容10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,11,3,'1683097335062','线索转化标题11','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,12,1,'1683097335138','线索转化标题12','2023-05-03 15:02:15','upload/file.rar',4,'线索转化内容12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,13,3,'1683097335140','线索转化标题13','2023-05-03 15:02:15','upload/file.rar',1,'线索转化内容13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,14,2,'1683097335097','线索转化标题14','2023-05-03 15:02:15','upload/file.rar',1,'线索转化内容14','2023-05-03 15:02:15','2023-05-03 15:02:15');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiye_id` int(11) DEFAULT NULL COMMENT '企业',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`qiye_id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,2,'a1','123456','1683097335059','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com',1,'2023-05-03 15:02:15'),(2,2,'a2','123456','1683097335087','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-05-03 15:02:15'),(3,1,'a3','123456','1683097335071','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-05-03 15:02:15');

/*Table structure for table `zhaobiao` */

DROP TABLE IF EXISTS `zhaobiao`;

CREATE TABLE `zhaobiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiye_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaobiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '招标编号',
  `zhaobiao_name` varchar(200) DEFAULT NULL COMMENT '招标标题  Search111 ',
  `zhaobiao_address` varchar(200) DEFAULT NULL COMMENT '招标地点',
  `zhaobiao_time` timestamp NULL DEFAULT NULL COMMENT '招标时间',
  `zhaobiao_types` int(11) DEFAULT NULL COMMENT '招标类型 Search111',
  `zhaobiao_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `zhaobiao_content` longtext COMMENT '招标介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='招标';

/*Data for the table `zhaobiao` */

insert  into `zhaobiao`(`id`,`qiye_id`,`zhaobiao_uuid_number`,`zhaobiao_name`,`zhaobiao_address`,`zhaobiao_time`,`zhaobiao_types`,`zhaobiao_file`,`zhaobiao_content`,`insert_time`,`create_time`) values (1,2,'1683097335044','招标标题1','招标地点1','2023-05-03 15:02:15',2,'upload/file.rar','招标介绍1','2023-05-03 15:02:15','2023-05-03 15:02:15'),(2,1,'1683097335075','招标标题2','招标地点2','2023-05-03 15:02:15',1,'upload/file.rar','招标介绍2','2023-05-03 15:02:15','2023-05-03 15:02:15'),(3,3,'1683097335114','招标标题3','招标地点3','2023-05-03 15:02:15',2,'upload/file.rar','招标介绍3','2023-05-03 15:02:15','2023-05-03 15:02:15'),(4,2,'1683097335129','招标标题4','招标地点4','2023-05-03 15:02:15',3,'upload/file.rar','招标介绍4','2023-05-03 15:02:15','2023-05-03 15:02:15'),(5,2,'1683097335108','招标标题5','招标地点5','2023-05-03 15:02:15',4,'upload/file.rar','招标介绍5','2023-05-03 15:02:15','2023-05-03 15:02:15'),(6,2,'1683097335060','招标标题6','招标地点6','2023-05-03 15:02:15',3,'upload/file.rar','招标介绍6','2023-05-03 15:02:15','2023-05-03 15:02:15'),(7,3,'1683097335056','招标标题7','招标地点7','2023-05-03 15:02:15',2,'upload/file.rar','招标介绍7','2023-05-03 15:02:15','2023-05-03 15:02:15'),(8,2,'1683097335137','招标标题8','招标地点8','2023-05-03 15:02:15',3,'upload/file.rar','招标介绍8','2023-05-03 15:02:15','2023-05-03 15:02:15'),(9,2,'1683097335133','招标标题9','招标地点9','2023-05-03 15:02:15',1,'upload/file.rar','招标介绍9','2023-05-03 15:02:15','2023-05-03 15:02:15'),(10,3,'1683097335114','招标标题10','招标地点10','2023-05-03 15:02:15',2,'upload/file.rar','招标介绍10','2023-05-03 15:02:15','2023-05-03 15:02:15'),(11,2,'1683097335143','招标标题11','招标地点11','2023-05-03 15:02:15',4,'upload/file.rar','招标介绍11','2023-05-03 15:02:15','2023-05-03 15:02:15'),(12,3,'1683097335076','招标标题12','招标地点12','2023-05-03 15:02:15',1,'upload/file.rar','招标介绍12','2023-05-03 15:02:15','2023-05-03 15:02:15'),(13,1,'1683097335056','招标标题13','招标地点13','2023-05-03 15:02:15',4,'upload/file.rar','招标介绍13','2023-05-03 15:02:15','2023-05-03 15:02:15'),(14,2,'1683097335101','招标标题14','招标地点14','2023-05-03 15:02:15',4,'upload/file.rar','招标介绍14','2023-05-03 15:02:15','2023-05-03 15:02:15'),(15,1,'1683098232415','招标1111','地点1111','2023-05-03 15:17:19',1,'/upload/1683098247121.doc','<p>还打算东方市公司的个</p>','2023-05-03 15:17:29','2023-05-03 15:17:29');

/*Table structure for table `zhaobiao_toubiao` */

DROP TABLE IF EXISTS `zhaobiao_toubiao`;

CREATE TABLE `zhaobiao_toubiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhaobiao_id` int(11) DEFAULT NULL COMMENT '招标',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaobiao_toubiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '投标编号',
  `zhaobiao_toubiao_file` varchar(200) DEFAULT NULL COMMENT '投标文件',
  `zhaobiao_toubiao_time` timestamp NULL DEFAULT NULL COMMENT '投标时间',
  `zhaobiao_toubiao_content` longtext COMMENT '投标备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `zhaobiao_toubiao_yesno_types` int(11) DEFAULT NULL COMMENT '投标状态 Search111',
  `zhaobiao_toubiao_pingfen` decimal(10,2) DEFAULT NULL COMMENT '投标评分',
  `zhaobiao_toubiao_yesno_text` longtext COMMENT '投标回复',
  `zhaobiao_toubiao_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='投标';

/*Data for the table `zhaobiao_toubiao` */

insert  into `zhaobiao_toubiao`(`id`,`zhaobiao_id`,`yonghu_id`,`zhaobiao_toubiao_uuid_number`,`zhaobiao_toubiao_file`,`zhaobiao_toubiao_time`,`zhaobiao_toubiao_content`,`insert_time`,`zhaobiao_toubiao_yesno_types`,`zhaobiao_toubiao_pingfen`,`zhaobiao_toubiao_yesno_text`,`zhaobiao_toubiao_shenhe_time`,`create_time`) values (1,1,3,'1683097335056','upload/file.rar','2023-05-03 15:02:15','投标备注1','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(2,2,1,'1683097335108','upload/file.rar','2023-05-03 15:02:15','投标备注2','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(3,3,2,'1683097335111','upload/file.rar','2023-05-03 15:02:15','投标备注3','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(4,4,3,'1683097335117','upload/file.rar','2023-05-03 15:02:15','投标备注4','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(5,5,1,'1683097335138','upload/file.rar','2023-05-03 15:02:15','投标备注5','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(6,6,3,'1683097335126','upload/file.rar','2023-05-03 15:02:15','投标备注6','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(7,7,1,'1683097335144','upload/file.rar','2023-05-03 15:02:15','投标备注7','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(8,8,3,'1683097335134','upload/file.rar','2023-05-03 15:02:15','投标备注8','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(9,9,2,'1683097335060','upload/file.rar','2023-05-03 15:02:15','投标备注9','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(10,10,2,'1683097335095','upload/file.rar','2023-05-03 15:02:15','投标备注10','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(11,11,1,'1683097335087','upload/file.rar','2023-05-03 15:02:15','投标备注11','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(12,12,3,'1683097335144','upload/file.rar','2023-05-03 15:02:15','投标备注12','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(13,13,1,'1683097335086','upload/file.rar','2023-05-03 15:02:15','投标备注13','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(14,14,1,'1683097335100','upload/file.rar','2023-05-03 15:02:15','投标备注14','2023-05-03 15:02:15',1,NULL,NULL,NULL,'2023-05-03 15:02:15'),(15,2,3,'1683097853463','/upload/1683097858867.doc','2023-05-03 15:11:00','<p>广东省是固定死个第三个十多个是的郭德纲</p>','2023-05-03 15:11:06',2,'99.00','回复人发挥地方','2023-05-03 15:17:40','2023-05-03 15:11:06'),(16,15,3,'1683098523680','/upload/1683098528647.doc','2023-05-03 15:22:10','<p>回复人发的发的好地方和</p>','2023-05-03 15:22:12',1,NULL,'',NULL,'2023-05-03 15:22:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
