-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm7wina
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baozhang`
--

DROP TABLE IF EXISTS `baozhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baozhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baozhangbianhao` varchar(200) DEFAULT NULL COMMENT '报障编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `guzhangyuanyin` longtext COMMENT '故障原因',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `baozhangriqi` date DEFAULT NULL COMMENT '报障日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baozhangbianhao` (`baozhangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766570535 DEFAULT CHARSET=utf8 COMMENT='报障';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baozhang`
--

LOCK TABLES `baozhang` WRITE;
/*!40000 ALTER TABLE `baozhang` DISABLE KEYS */;
INSERT INTO `baozhang` VALUES (101,'2021-03-26 13:34:52','报障编号1','房屋名称1','小区1','详细地址1','故障原因1','账号1','姓名1','2021-03-26','是',''),(102,'2021-03-26 13:34:52','报障编号2','房屋名称2','小区2','详细地址2','故障原因2','账号2','姓名2','2021-03-26','是',''),(103,'2021-03-26 13:34:52','报障编号3','房屋名称3','小区3','详细地址3','故障原因3','账号3','姓名3','2021-03-26','是',''),(104,'2021-03-26 13:34:52','报障编号4','房屋名称4','小区4','详细地址4','故障原因4','账号4','姓名4','2021-03-26','是',''),(105,'2021-03-26 13:34:52','报障编号5','房屋名称5','小区5','详细地址5','故障原因5','账号5','姓名5','2021-03-26','是',''),(106,'2021-03-26 13:34:52','报障编号6','房屋名称6','小区6','详细地址6','故障原因6','账号6','姓名6','2021-03-26','是',''),(1616766570534,'2021-03-26 13:49:30','1616766563535','公寓房','北京小区','北京市','马桶漏水','001','住一','2021-03-03','是','安排维修');
/*!40000 ALTER TABLE `baozhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm7wina/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7wina/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7wina/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangdong`
--

DROP TABLE IF EXISTS `fangdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) NOT NULL COMMENT '房东账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdongzhanghao` (`fangdongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616765984582 DEFAULT CHARSET=utf8 COMMENT='房东';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangdong`
--

LOCK TABLES `fangdong` WRITE;
/*!40000 ALTER TABLE `fangdong` DISABLE KEYS */;
INSERT INTO `fangdong` VALUES (21,'2021-03-26 13:34:52','房东1','123456','房东姓名1','男','http://localhost:8080/ssm7wina/upload/fangdong_touxiang1.jpg','13823888881','440300199101010001'),(22,'2021-03-26 13:34:52','房东2','123456','房东姓名2','男','http://localhost:8080/ssm7wina/upload/fangdong_touxiang2.jpg','13823888882','440300199202020002'),(23,'2021-03-26 13:34:52','房东3','123456','房东姓名3','男','http://localhost:8080/ssm7wina/upload/fangdong_touxiang3.jpg','13823888883','440300199303030003'),(24,'2021-03-26 13:34:52','房东4','123456','房东姓名4','男','http://localhost:8080/ssm7wina/upload/fangdong_touxiang4.jpg','13823888884','440300199404040004'),(25,'2021-03-26 13:34:52','房东5','123456','房东姓名5','男','http://localhost:8080/ssm7wina/upload/fangdong_touxiang5.jpg','13823888885','440300199505050005'),(26,'2021-03-26 13:34:52','房东6','123456','房东姓名6','男','http://localhost:8080/ssm7wina/upload/fangdong_touxiang6.jpg','13823888886','440300199606060006'),(1616765984581,'2021-03-26 13:39:44','900','900','房一','女','http://localhost:8080/ssm7wina/upload/1616766293786.jpg','13852369852','658963258963258963');
/*!40000 ALTER TABLE `fangdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuleixing`
--

DROP TABLE IF EXISTS `fangwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766142793 DEFAULT CHARSET=utf8 COMMENT='房屋类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuleixing`
--

LOCK TABLES `fangwuleixing` WRITE;
/*!40000 ALTER TABLE `fangwuleixing` DISABLE KEYS */;
INSERT INTO `fangwuleixing` VALUES (41,'2021-03-26 13:34:52','类型1'),(42,'2021-03-26 13:34:52','类型2'),(43,'2021-03-26 13:34:52','类型3'),(44,'2021-03-26 13:34:52','类型4'),(45,'2021-03-26 13:34:52','类型5'),(46,'2021-03-26 13:34:52','类型6'),(1616766142792,'2021-03-26 13:42:21','公寓');
/*!40000 ALTER TABLE `fangwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) NOT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `meiyuezujin` int(11) DEFAULT NULL COMMENT '每月租金',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `fangwusheshi` varchar(200) DEFAULT NULL COMMENT '房屋设施',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fangwuxiangqing` longtext COMMENT '房屋详情',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwubianhao` (`fangwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766223701 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (31,'2021-03-26 13:34:52','房屋编号1','房屋名称1','房屋类型1','http://localhost:8080/ssm7wina/upload/fangwuxinxi_xiangguantupian1.jpg','面积1','小区1','详细地址1',1,1,'房屋设施1','2021-03-26','房屋详情1',1),(32,'2021-03-26 13:34:52','房屋编号2','房屋名称2','房屋类型2','http://localhost:8080/ssm7wina/upload/fangwuxinxi_xiangguantupian2.jpg','面积2','小区2','详细地址2',2,2,'房屋设施2','2021-03-26','房屋详情2',2),(33,'2021-03-26 13:34:52','房屋编号3','房屋名称3','房屋类型3','http://localhost:8080/ssm7wina/upload/fangwuxinxi_xiangguantupian3.jpg','面积3','小区3','详细地址3',3,3,'房屋设施3','2021-03-26','房屋详情3',3),(34,'2021-03-26 13:34:52','房屋编号4','房屋名称4','房屋类型4','http://localhost:8080/ssm7wina/upload/fangwuxinxi_xiangguantupian4.jpg','面积4','小区4','详细地址4',4,4,'房屋设施4','2021-03-26','房屋详情4',4),(35,'2021-03-26 13:34:52','房屋编号5','房屋名称5','房屋类型5','http://localhost:8080/ssm7wina/upload/fangwuxinxi_xiangguantupian5.jpg','168','小区59','详细地址5',5,5,'房屋设施5','2021-03-26','<p>房屋详情5</p>',7),(1616766223700,'2021-03-26 13:43:43','2021006','公寓房','公寓','http://localhost:8080/ssm7wina/upload/1616766172607.jpg','80','北京小区','北京市',600,500,'电脑，WiFi','2021-03-01','<p>北京小区公寓房</p><p><img src=\"http://localhost:8080/ssm7wina/upload/1616766221740.jpg\"></p>',3);
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuyuding`
--

DROP TABLE IF EXISTS `fangwuyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `meiyuezujin` varchar(200) DEFAULT NULL COMMENT '每月租金',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `yudingriqi` date DEFAULT NULL COMMENT '预订日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwubianhao` (`fangwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766399715 DEFAULT CHARSET=utf8 COMMENT='房屋预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuyuding`
--

LOCK TABLES `fangwuyuding` WRITE;
/*!40000 ALTER TABLE `fangwuyuding` DISABLE KEYS */;
INSERT INTO `fangwuyuding` VALUES (51,'2021-03-26 13:34:52','房屋编号1','房屋名称1','房屋类型1','http://localhost:8080/ssm7wina/upload/fangwuyuding_xiangguantupian1.jpg','面积1','小区1','详细地址1','每月租金1','押金1','2021-03-26','账号1','姓名1','是',''),(52,'2021-03-26 13:34:52','房屋编号2','房屋名称2','房屋类型2','http://localhost:8080/ssm7wina/upload/fangwuyuding_xiangguantupian2.jpg','面积2','小区2','详细地址2','每月租金2','押金2','2021-03-26','账号2','姓名2','是',''),(53,'2021-03-26 13:34:52','房屋编号3','房屋名称3','房屋类型3','http://localhost:8080/ssm7wina/upload/fangwuyuding_xiangguantupian3.jpg','面积3','小区3','详细地址3','每月租金3','押金3','2021-03-26','账号3','姓名3','是',''),(54,'2021-03-26 13:34:52','房屋编号4','房屋名称4','房屋类型4','http://localhost:8080/ssm7wina/upload/fangwuyuding_xiangguantupian4.jpg','面积4','小区4','详细地址4','每月租金4','押金4','2021-03-26','账号4','姓名4','是',''),(55,'2021-03-26 13:34:52','房屋编号5','房屋名称5','房屋类型5','http://localhost:8080/ssm7wina/upload/fangwuyuding_xiangguantupian5.jpg','面积5','小区5','详细地址5','每月租金5','押金5','2021-03-26','账号5','姓名5','是',''),(56,'2021-03-26 13:34:52','房屋编号6','房屋名称6','房屋类型6','http://localhost:8080/ssm7wina/upload/fangwuyuding_xiangguantupian6.jpg','面积6','小区6','详细地址6','每月租金6','押金6','2021-03-26','账号6','姓名6','是',''),(1616766399714,'2021-03-26 13:46:39','2021006','公寓房','公寓','http://localhost:8080/ssm7wina/upload/1616766172607.jpg','80','北京小区','北京市','600','500','2021-03-01','001','住一','是','空房可以租');
/*!40000 ALTER TABLE `fangwuyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetongzhongzhi`
--

DROP TABLE IF EXISTS `hetongzhongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetongzhongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) NOT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `meiyuezujin` varchar(200) DEFAULT NULL COMMENT '每月租金',
  `yajin` varchar(200) NOT NULL COMMENT '押金',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhongzhishijian` date DEFAULT NULL COMMENT '终止时间',
  `zhongzhiliyou` longtext COMMENT '终止理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766709560 DEFAULT CHARSET=utf8 COMMENT='合同终止';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetongzhongzhi`
--

LOCK TABLES `hetongzhongzhi` WRITE;
/*!40000 ALTER TABLE `hetongzhongzhi` DISABLE KEYS */;
INSERT INTO `hetongzhongzhi` VALUES (91,'2021-03-26 13:34:52','合同编号1','房屋名称1','房屋类型1','面积1','小区1','详细地址1','账号1','每月租金1','押金1','姓名1','手机1','身份证1','备注1','2021-03-26','终止理由1','是',''),(92,'2021-03-26 13:34:52','合同编号2','房屋名称2','房屋类型2','面积2','小区2','详细地址2','账号2','每月租金2','押金2','姓名2','手机2','身份证2','备注2','2021-03-26','终止理由2','是',''),(93,'2021-03-26 13:34:52','合同编号3','房屋名称3','房屋类型3','面积3','小区3','详细地址3','账号3','每月租金3','押金3','姓名3','手机3','身份证3','备注3','2021-03-26','终止理由3','是',''),(94,'2021-03-26 13:34:52','合同编号4','房屋名称4','房屋类型4','面积4','小区4','详细地址4','账号4','每月租金4','押金4','姓名4','手机4','身份证4','备注4','2021-03-26','终止理由4','是',''),(95,'2021-03-26 13:34:52','合同编号5','房屋名称5','房屋类型5','面积5','小区5','详细地址5','账号5','每月租金5','押金5','姓名5','手机5','身份证5','备注5','2021-03-26','终止理由5','是',''),(96,'2021-03-26 13:34:52','合同编号6','房屋名称6','房屋类型6','面积6','小区6','详细地址6','账号6','每月租金6','押金6','姓名6','手机6','身份证6','备注6','2021-03-26','终止理由6','是',''),(1616766709559,'2021-03-26 13:51:48','1616766552860','公寓房','公寓','80','北京小区','北京市','001','600','500','住一','15236985236','523698523698523698','','2021-03-04','马桶漏水没修好','是','同意终止');
/*!40000 ALTER TABLE `hetongzhongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766326056 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2021-03-26 13:34:52','标题1','简介1','http://localhost:8080/ssm7wina/upload/news_picture1.jpg','内容1'),(122,'2021-03-26 13:34:52','标题2','简介2','http://localhost:8080/ssm7wina/upload/news_picture2.jpg','内容2'),(123,'2021-03-26 13:34:52','标题3','简介3','http://localhost:8080/ssm7wina/upload/news_picture3.jpg','内容3'),(124,'2021-03-26 13:34:52','标题4','简介4','http://localhost:8080/ssm7wina/upload/news_picture4.jpg','内容4'),(125,'2021-03-26 13:34:52','标题5','简介5','http://localhost:8080/ssm7wina/upload/news_picture5.jpg','内容5'),(126,'2021-03-26 13:34:52','标题6','简介6','http://localhost:8080/ssm7wina/upload/news_picture6.jpg','内容6'),(1616766326055,'2021-03-26 13:45:25','北京小区公寓房','北京小区公寓房','http://localhost:8080/ssm7wina/upload/1616766315822.jpg','<p>北京小区公寓房</p><p><img src=\"http://localhost:8080/ssm7wina/upload/1616766324330.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richeng`
--

DROP TABLE IF EXISTS `richeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `richeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `richengneirong` longtext COMMENT '日程内容',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `meiyuezujin` varchar(200) DEFAULT NULL COMMENT '每月租金',
  `jiaofufangshi` varchar(200) DEFAULT NULL COMMENT '交付方式',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766647151 DEFAULT CHARSET=utf8 COMMENT='日程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richeng`
--

LOCK TABLES `richeng` WRITE;
/*!40000 ALTER TABLE `richeng` DISABLE KEYS */;
INSERT INTO `richeng` VALUES (111,'2021-03-26 13:34:52','编号1','日程内容1','房屋名称1','房屋类型1','详细地址1','每月租金1','交付方式1','2021-03-26','姓名1'),(112,'2021-03-26 13:34:52','编号2','日程内容2','房屋名称2','房屋类型2','详细地址2','每月租金2','交付方式2','2021-03-26','姓名2'),(113,'2021-03-26 13:34:52','编号3','日程内容3','房屋名称3','房屋类型3','详细地址3','每月租金3','交付方式3','2021-03-26','姓名3'),(114,'2021-03-26 13:34:52','编号4','日程内容4','房屋名称4','房屋类型4','详细地址4','每月租金4','交付方式4','2021-03-26','姓名4'),(115,'2021-03-26 13:34:52','编号5','日程内容5','房屋名称5','房屋类型5','详细地址5','每月租金5','交付方式5','2021-03-26','姓名5'),(116,'2021-03-26 13:34:52','编号6','日程内容6','房屋名称6','房屋类型6','详细地址6','每月租金6','交付方式6','2021-03-26','姓名6'),(1616766647150,'2021-03-26 13:50:47','1616766625385','北京小区公寓房收租','公寓房','公寓','北京市','600','押一付三','2021-03-02','住一');
/*!40000 ALTER TABLE `richeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1616765984581,'900','fangdong','房东','4rgf9lvpgfjluy05z9xdagcjq0142ay7','2021-03-26 13:39:57','2021-03-26 14:53:08'),(2,1,'abo','users','管理员','j9qq736vs6qt1iq6rof9fza0pxxw9f9u','2021-03-26 13:44:27','2021-03-26 14:44:27'),(3,1616765961659,'001','yonghu','用户','rgpn9bvrpw7ihqpt5qtavrq2pm00u4is','2021-03-26 13:45:38','2021-03-26 14:52:20');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-26 13:34:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616765961660 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-26 13:34:52','用户1','123456','姓名1','男','13823888881','440300199101010001','http://localhost:8080/ssm7wina/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-26 13:34:52','用户2','123456','姓名2','男','13823888882','440300199202020002','http://localhost:8080/ssm7wina/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-26 13:34:52','用户3','123456','姓名3','男','13823888883','440300199303030003','http://localhost:8080/ssm7wina/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-26 13:34:52','用户4','123456','姓名4','男','13823888884','440300199404040004','http://localhost:8080/ssm7wina/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-26 13:34:52','用户5','123456','姓名5','男','13823888885','440300199505050005','http://localhost:8080/ssm7wina/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-26 13:34:52','用户6','123456','姓名6','男','13823888886','440300199606060006','http://localhost:8080/ssm7wina/upload/yonghu_zhaopian6.jpg'),(1616765961659,'2021-03-26 13:39:21','001','001','住一','男','15236985236','523698523698523698','http://localhost:8080/ssm7wina/upload/1616766281097.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zujinjiaofu`
--

DROP TABLE IF EXISTS `zujinjiaofu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zujinjiaofu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofuleixing` varchar(200) DEFAULT NULL COMMENT '交付类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766478922 DEFAULT CHARSET=utf8 COMMENT='租金交付';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zujinjiaofu`
--

LOCK TABLES `zujinjiaofu` WRITE;
/*!40000 ALTER TABLE `zujinjiaofu` DISABLE KEYS */;
INSERT INTO `zujinjiaofu` VALUES (71,'2021-03-26 13:34:52','交付类型1'),(72,'2021-03-26 13:34:52','交付类型2'),(73,'2021-03-26 13:34:52','交付类型3'),(74,'2021-03-26 13:34:52','交付类型4'),(75,'2021-03-26 13:34:52','交付类型5'),(76,'2021-03-26 13:34:52','交付类型6'),(1616766478921,'2021-03-26 13:47:58','押一付三');
/*!40000 ALTER TABLE `zujinjiaofu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zujinjiesuan`
--

DROP TABLE IF EXISTS `zujinjiesuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zujinjiesuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiesuanbianhao` varchar(200) NOT NULL COMMENT '结算编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `meiyuezujin` int(11) DEFAULT NULL COMMENT '每月租金',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaofufangshi` varchar(200) DEFAULT NULL COMMENT '交付方式',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiesuanbianhao` (`jiesuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766496726 DEFAULT CHARSET=utf8 COMMENT='租金结算';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zujinjiesuan`
--

LOCK TABLES `zujinjiesuan` WRITE;
/*!40000 ALTER TABLE `zujinjiesuan` DISABLE KEYS */;
INSERT INTO `zujinjiesuan` VALUES (61,'2021-03-26 13:34:52','结算编号1','房屋名称1','房屋类型1','详细地址1',1,'姓名1','交付方式1','2021-03-26','备注1','是','','未支付'),(62,'2021-03-26 13:34:52','结算编号2','房屋名称2','房屋类型2','详细地址2',2,'姓名2','交付方式2','2021-03-26','备注2','是','','未支付'),(63,'2021-03-26 13:34:52','结算编号3','房屋名称3','房屋类型3','详细地址3',3,'姓名3','交付方式3','2021-03-26','备注3','是','','未支付'),(64,'2021-03-26 13:34:52','结算编号4','房屋名称4','房屋类型4','详细地址4',4,'姓名4','交付方式4','2021-03-26','备注4','是','','未支付'),(65,'2021-03-26 13:34:52','结算编号5','房屋名称5','房屋类型5','详细地址5',5,'姓名5','交付方式5','2021-03-26','备注5','是','','未支付'),(66,'2021-03-26 13:34:52','结算编号6','房屋名称6','房屋类型6','详细地址6',6,'姓名6','交付方式6','2021-03-26','备注6','是','','未支付'),(1616766496725,'2021-03-26 13:48:16','1616766491175','公寓房','公寓','北京市',600,'住一','押一付三','2021-03-02','','是','','已支付');
/*!40000 ALTER TABLE `zujinjiesuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulinhetong`
--

DROP TABLE IF EXISTS `zulinhetong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zulinhetong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) NOT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `meiyuezujin` varchar(200) DEFAULT NULL COMMENT '每月租金',
  `yajin` varchar(200) NOT NULL COMMENT '押金',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `qiandingshijian` date DEFAULT NULL COMMENT '签订时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616766559312 DEFAULT CHARSET=utf8 COMMENT='租赁合同';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulinhetong`
--

LOCK TABLES `zulinhetong` WRITE;
/*!40000 ALTER TABLE `zulinhetong` DISABLE KEYS */;
INSERT INTO `zulinhetong` VALUES (81,'2021-03-26 13:34:52','合同编号1','房屋名称1','房屋类型1','面积1','小区1','详细地址1','每月租金1','押金1','2021-03-26','2021-03-26','账号1','姓名1','手机1','身份证1','备注1','是',''),(82,'2021-03-26 13:34:52','合同编号2','房屋名称2','房屋类型2','面积2','小区2','详细地址2','每月租金2','押金2','2021-03-26','2021-03-26','账号2','姓名2','手机2','身份证2','备注2','是',''),(83,'2021-03-26 13:34:52','合同编号3','房屋名称3','房屋类型3','面积3','小区3','详细地址3','每月租金3','押金3','2021-03-26','2021-03-26','账号3','姓名3','手机3','身份证3','备注3','是',''),(84,'2021-03-26 13:34:52','合同编号4','房屋名称4','房屋类型4','面积4','小区4','详细地址4','每月租金4','押金4','2021-03-26','2021-03-26','账号4','姓名4','手机4','身份证4','备注4','是',''),(85,'2021-03-26 13:34:52','合同编号5','房屋名称5','房屋类型5','面积5','小区5','详细地址5','每月租金5','押金5','2021-03-26','2021-03-26','账号5','姓名5','手机5','身份证5','备注5','是',''),(86,'2021-03-26 13:34:52','合同编号6','房屋名称6','房屋类型6','面积6','小区6','详细地址6','每月租金6','押金6','2021-03-26','2021-03-26','账号6','姓名6','手机6','身份证6','备注6','是',''),(1616766559311,'2021-03-26 13:49:18','1616766552860','公寓房','公寓','80','北京小区','北京市','600','500','2021-03-02','2021-03-02','001','住一','15236985236','523698523698523698','','是','已签订');
/*!40000 ALTER TABLE `zulinhetong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-27 10:02:14
