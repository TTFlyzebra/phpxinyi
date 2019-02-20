-- MySQL dump 10.13  Distrib 5.5.42, for Win32 (x86)
--
-- Host: localhost    Database: xinyi
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `fz_access`
--

DROP TABLE IF EXISTS `fz_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_access`
--

LOCK TABLES `fz_access` WRITE;
/*!40000 ALTER TABLE `fz_access` DISABLE KEYS */;
INSERT INTO `fz_access` VALUES (19,123,1,NULL),(19,122,1,NULL),(19,121,1,NULL),(19,120,1,NULL),(19,119,1,NULL),(19,118,1,NULL),(19,117,1,NULL),(19,116,1,NULL),(19,124,1,NULL),(19,114,1,NULL),(19,113,1,NULL),(19,112,1,NULL),(19,111,1,NULL),(19,110,1,NULL),(19,109,1,NULL),(19,108,1,NULL),(19,107,1,NULL),(19,106,1,NULL),(19,105,1,NULL),(19,104,1,NULL),(19,103,1,NULL),(19,102,1,NULL),(19,101,1,NULL),(19,100,1,NULL),(19,99,1,NULL),(19,98,1,NULL),(19,97,1,NULL),(19,96,1,NULL),(19,95,1,NULL),(20,93,1,NULL),(20,94,1,NULL),(20,95,1,NULL),(20,109,1,NULL),(20,110,1,NULL),(20,111,1,NULL),(20,116,1,NULL),(20,117,1,NULL),(20,118,1,NULL),(20,119,1,NULL),(20,120,1,NULL),(20,121,1,NULL),(20,122,1,NULL),(20,123,1,NULL),(21,114,1,NULL),(21,113,1,NULL),(21,112,1,NULL),(21,95,1,NULL),(21,94,1,NULL),(21,93,1,NULL),(21,124,1,NULL),(19,94,1,NULL),(19,93,1,NULL);
/*!40000 ALTER TABLE `fz_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_node`
--

DROP TABLE IF EXISTS `fz_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_node`
--

LOCK TABLES `fz_node` WRITE;
/*!40000 ALTER TABLE `fz_node` DISABLE KEYS */;
INSERT INTO `fz_node` VALUES (93,'Admin',NULL,1,'后台应用',NULL,0,1),(94,'Index',NULL,1,'后台主页',NULL,93,2),(95,'index',NULL,1,'后台主页页面',NULL,94,3),(96,'Role',NULL,1,'角色管理',NULL,93,2),(97,'index',NULL,1,'角色管理页面',NULL,96,3),(98,'add',NULL,1,'添加管理角色',NULL,96,3),(99,'del',NULL,1,'删除管理角色',NULL,96,3),(100,'status',NULL,1,'改变角色状态',NULL,96,3),(101,'Node',NULL,1,'节点管理',NULL,93,2),(102,'index',NULL,1,'节点管理页面',NULL,101,3),(103,'add',NULL,1,'添加网站节点',NULL,101,3),(104,'del',NULL,1,'删除网站节点',NULL,101,3),(105,'edit',NULL,1,'修改网站节点',NULL,101,3),(106,'Access',NULL,1,'权限设置',NULL,93,2),(107,'index',NULL,1,'权限设置页面',NULL,106,3),(108,'setAccess',NULL,1,'设置角色权限',NULL,106,3),(109,'Verify',NULL,1,'申述用户权限',NULL,93,2),(110,'index',NULL,1,'申核用户权限页面',NULL,109,3),(111,'verify',NULL,1,'申核用户权限',NULL,109,3),(112,'Product',NULL,1,'商品管理',NULL,93,2),(113,'index',NULL,1,'商品管理页面',NULL,112,3),(114,'add',NULL,1,'添加商品',NULL,112,3),(116,'Attr',NULL,1,'商品属性',NULL,93,2),(117,'index',NULL,1,'商品属性页面',NULL,116,3),(118,'add',NULL,1,'添加商品属性',NULL,116,3),(119,'del',NULL,1,'删除商品属性',NULL,116,3),(120,'Type',NULL,1,'商品分类',NULL,93,2),(121,'index',NULL,1,'商品分类页面',NULL,120,3),(122,'add',NULL,1,'添加商品分类',NULL,120,3),(123,'del',NULL,1,'删除商品分类',NULL,120,3),(124,'find',NULL,1,'查找商品',NULL,112,3),(125,'Home',NULL,1,'前台应用',NULL,0,1);
/*!40000 ALTER TABLE `fz_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_pattr`
--

DROP TABLE IF EXISTS `fz_pattr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_pattr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_pattr`
--

LOCK TABLES `fz_pattr` WRITE;
/*!40000 ALTER TABLE `fz_pattr` DISABLE KEYS */;
INSERT INTO `fz_pattr` VALUES (47,'热销','#FF0000'),(48,'包邮','#2F9F00'),(49,'7天退货','#0000FF'),(51,'8折','#FF00FF');
/*!40000 ALTER TABLE `fz_pattr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_product`
--

DROP TABLE IF EXISTS `fz_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ptype_id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `describe` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `shopcount` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `shopname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_product`
--

LOCK TABLES `fz_product` WRITE;
/*!40000 ALTER TABLE `fz_product` DISABLE KEYS */;
INSERT INTO `fz_product` VALUES (57,28,'宏碁V5-552G笔记本',2988,'宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑',1462902306,NULL,NULL,'华翔宏基专卖店'),(58,29,'宏基超薄显示器',1088,'宏基超薄显示器',1462902496,NULL,NULL,'华翔宏基专卖店'),(59,26,'华硕P8H61PLUS',279,'Asus/华硕P8H61PLUS电脑主板LGA1155主板拼H61M H67 全国包邮 ',1463146784,NULL,NULL,'华翔宏基专卖店'),(60,26,'技嘉 B85M-D3V-A',429,'Gigabyte/技嘉 B85M-D3V-A台式机B85电脑主板支持I3 4170 I5 4590 ',1463149497,NULL,NULL,'华翔宏基专卖店'),(61,26,'技嘉 GA-F2A78M-DS2 FM2',379,'Gigabyte/技嘉 GA-F2A78M-DS2 FM2+主板 全固态电容 支持FM2 FM2+ ',1463149609,NULL,NULL,'华翔宏基专卖店'),(62,26,'七彩虹 C.H81M V23',259,'Colorful/七彩虹 C.H81M V23 升级为V24 全固态小主板 支持G3260 全日系 固态电容\r\n',1463149744,NULL,NULL,'华翔宏基专卖店'),(63,26,'华擎科技 Z170 Pro4S 1151',699,'ASROCK/华擎科技 Z170 Pro4S 1151主板 6400T非K版超频 十项供电 顺丰包邮 数字供 电，大板 双卡交火\r\n',1463149857,NULL,NULL,'华翔宏基专卖店'),(64,27,'精影 GTX650 1G',388,'精影 GTX650 1G高端电脑显卡D5高频比R7-350 HD6850强 促销抢购! 高频高性能 稳定低功耗 高性价比\r\n',1463150057,NULL,NULL,'华翔宏基专卖店');
/*!40000 ALTER TABLE `fz_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_product_imgurl`
--

DROP TABLE IF EXISTS `fz_product_imgurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_product_imgurl` (
  `product_id` int(11) NOT NULL,
  `imgurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_product_imgurl`
--

LOCK TABLES `fz_product_imgurl` WRITE;
/*!40000 ALTER TABLE `fz_product_imgurl` DISABLE KEYS */;
INSERT INTO `fz_product_imgurl` VALUES (52,'/UpLoads/product/images/2016-05-05/572a4eb87c6b7.jpg'),(53,'/UpLoads/product/images/2016-05-05/572a50593da2c.jpg'),(54,'/UpLoads/product/images/2016-05-05/572b1172825e0.jpg'),(55,'/UpLoads/product/images/2016-05-05/572b1b8b3e74e.jpg'),(56,'/UpLoads/product/images/2016-05-05/572b1bcbf30c5.jpg'),(57,'/UpLoads/product/images/2016-05-11/57321e2280412.jpg'),(58,'/UpLoads/product/images/2016-05-11/57321ee01f896.jpg'),(59,'/UpLoads/product/images/2016-05-13/5735d9208ec5d.png'),(60,'/UpLoads/product/images/2016-05-13/5735e3b9cfb9a.jpg'),(61,'/UpLoads/product/images/2016-05-13/5735e4296426e.jpg'),(62,'/UpLoads/product/images/2016-05-13/5735e4b016716.jpg'),(63,'/UpLoads/product/images/2016-05-13/5735e521489b5.jpg'),(64,'/UpLoads/product/images/2016-05-13/5735e5e96ecce.jpg');
/*!40000 ALTER TABLE `fz_product_imgurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_product_pattr`
--

DROP TABLE IF EXISTS `fz_product_pattr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_product_pattr` (
  `product_id` int(11) DEFAULT NULL,
  `pattr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_product_pattr`
--

LOCK TABLES `fz_product_pattr` WRITE;
/*!40000 ALTER TABLE `fz_product_pattr` DISABLE KEYS */;
INSERT INTO `fz_product_pattr` VALUES (57,49),(57,47),(58,47),(58,48),(58,49),(58,51),(65,49),(59,47),(59,48),(59,51),(60,48),(60,51),(61,47),(61,49),(62,47),(62,48),(62,49),(63,47),(63,48),(63,51),(64,47),(64,48);
/*!40000 ALTER TABLE `fz_product_pattr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_product_shop`
--

DROP TABLE IF EXISTS `fz_product_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_product_shop` (
  `product_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_product_shop`
--

LOCK TABLES `fz_product_shop` WRITE;
/*!40000 ALTER TABLE `fz_product_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `fz_product_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_ptype`
--

DROP TABLE IF EXISTS `fz_ptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_ptype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `ptype_name` varchar(20) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_ptype`
--

LOCK TABLES `fz_ptype` WRITE;
/*!40000 ALTER TABLE `fz_ptype` DISABLE KEYS */;
INSERT INTO `fz_ptype` VALUES (26,0,'主板',100),(27,0,'显卡',100),(28,0,'笔记本',100),(29,0,'显示器',100),(30,0,'内存条',100),(31,0,'网络设备',100);
/*!40000 ALTER TABLE `fz_ptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_role`
--

DROP TABLE IF EXISTS `fz_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_role`
--

LOCK TABLES `fz_role` WRITE;
/*!40000 ALTER TABLE `fz_role` DISABLE KEYS */;
INSERT INTO `fz_role` VALUES (19,'admin',NULL,1,'超级管理员'),(20,'HQ',NULL,1,'总店管理员'),(21,'ST',NULL,1,'分店管理员');
/*!40000 ALTER TABLE `fz_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_role_user`
--

DROP TABLE IF EXISTS `fz_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_role_user`
--

LOCK TABLES `fz_role_user` WRITE;
/*!40000 ALTER TABLE `fz_role_user` DISABLE KEYS */;
INSERT INTO `fz_role_user` VALUES (20,'18'),(19,'19'),(20,'20'),(21,'21'),(21,'24'),(21,'22'),(21,'25'),(21,'26'),(21,'27'),(21,'28'),(21,'29'),(21,'30');
/*!40000 ALTER TABLE `fz_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_shop`
--

DROP TABLE IF EXISTS `fz_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shopname` varchar(255) NOT NULL,
  `peoplename` varchar(20) NOT NULL,
  `loginword` varchar(255) NOT NULL,
  `peoplephone` varchar(11) NOT NULL,
  `shopphone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL,
  `regIP` varchar(255) NOT NULL,
  `countshop` bigint(11) DEFAULT NULL,
  `countmoney` bigint(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `describe` text NOT NULL,
  `lock` tinyint(1) DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_shop`
--

LOCK TABLES `fz_shop` WRITE;
/*!40000 ALTER TABLE `fz_shop` DISABLE KEYS */;
INSERT INTO `fz_shop` VALUES (18,'flyzebra','flyzebra','10e208ffd957f5488f795e555f483af8','13520989725','13520989725','广西桂林资源县',1462386990,'192.168.1.88',NULL,NULL,NULL,NULL,'总店管理号。',1,0),(19,'admin','admin','10e208ffd957f5488f795e555f483af8','13520989725','13520989725','1',1462388077,'192.168.1.88',NULL,NULL,NULL,NULL,'1',1,0),(20,'hq','hq','10e208ffd957f5488f795e555f483af8','13520989725','13520989725','hq',1462388281,'192.168.1.88',NULL,NULL,NULL,NULL,'hq',1,0),(21,'st','st','10e208ffd957f5488f795e555f483af8','13520989725','13520989725','st',1462388307,'192.168.1.88',NULL,NULL,NULL,NULL,'st',1,0),(26,'华翔宏基专卖店','张三','10e208ffd957f5488f795e555f483af8','13912345678','13912345678','1391234567813912345678139123456781391234567813912',1462814854,'192.168.1.88',NULL,NULL,NULL,NULL,'139123456781391234567813912345678139123456781391234',1,1),(27,'卓越联想品牌店','李四','10e208ffd957f5488f795e555f483af8','13912345678','13912345678','13912345678139123456781391234567813912345678139123',1462814942,'192.168.1.88',NULL,NULL,NULL,NULL,'1391234567813912345678139123456781391234567813',1,1),(28,'联想笔记本专卖店','王五','10e208ffd957f5488f795e555f483af8','13812345678','13812345678','1381234567813812345678138123456781381234567813812345678',1462817151,'192.168.1.88',NULL,NULL,NULL,NULL,'138123456781381234567813812345678138123456',1,1),(29,'新艺华硕专卖店旗舰店','赵六','10e208ffd957f5488f795e555f483af8','13512345678','13512345678','1351234567813512345678135123456781351234567813512345678',1462871674,'192.168.1.88',NULL,NULL,NULL,NULL,'13512345678135123456781351234567813512345678135123456781351234567813512345678',1,1),(30,'飞马Dell专卖店','飞马','10e208ffd957f5488f795e555f483af8','13612345678','13612345678','13612345678136123456781361234567813612345678',1462871887,'192.168.1.88',NULL,NULL,NULL,NULL,'13612345678136123456781361234567813612345678136123456781361234567813612345678',1,1);
/*!40000 ALTER TABLE `fz_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_shop_home`
--

DROP TABLE IF EXISTS `fz_shop_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_shop_home` (
  `shop_id` int(10) unsigned NOT NULL,
  `show` tinyint(1) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_shop_home`
--

LOCK TABLES `fz_shop_home` WRITE;
/*!40000 ALTER TABLE `fz_shop_home` DISABLE KEYS */;
INSERT INTO `fz_shop_home` VALUES (26,1),(27,1),(28,1),(29,1),(30,1);
/*!40000 ALTER TABLE `fz_shop_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_shop_imgurl`
--

DROP TABLE IF EXISTS `fz_shop_imgurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_shop_imgurl` (
  `shop_id` int(11) NOT NULL,
  `imgurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_shop_imgurl`
--

LOCK TABLES `fz_shop_imgurl` WRITE;
/*!40000 ALTER TABLE `fz_shop_imgurl` DISABLE KEYS */;
INSERT INTO `fz_shop_imgurl` VALUES (26,'/UpLoads/shop/images/2016-05-10/5730c886e6755.jpg'),(27,'/UpLoads/shop/images/2016-05-10/5730c8dec92b0.jpg'),(28,'/UpLoads/shop/images/2016-05-10/5730d17fd3fee.jpg'),(29,'/UpLoads/shop/images/2016-05-10/5731a67a6e31e.jpg'),(30,'/UpLoads/shop/images/2016-05-10/5731a74f58058.jpg');
/*!40000 ALTER TABLE `fz_shop_imgurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_shop_log`
--

DROP TABLE IF EXISTS `fz_shop_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_shop_log` (
  `shop_id` int(11) NOT NULL,
  `loginIP` varchar(32) NOT NULL,
  `logintime` int(11) NOT NULL DEFAULT '0',
  `gps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_shop_log`
--

LOCK TABLES `fz_shop_log` WRITE;
/*!40000 ALTER TABLE `fz_shop_log` DISABLE KEYS */;
INSERT INTO `fz_shop_log` VALUES (18,'192.168.1.88',1462855612,NULL),(18,'192.168.1.88',1462870725,NULL),(18,'192.168.1.88',1462871038,NULL),(18,'192.168.1.88',1462871164,NULL),(18,'192.168.1.88',1462871165,NULL),(26,'192.168.1.88',1462899294,NULL),(26,'192.168.1.88',1462899305,NULL),(18,'192.168.1.88',1462899314,NULL),(26,'192.168.1.88',1462899355,NULL),(26,'192.168.1.88',1462900958,NULL),(18,'192.168.1.88',1462901013,NULL),(26,'192.168.1.88',1462902179,NULL),(18,'192.168.1.88',1462902416,NULL),(26,'192.168.1.88',1462902432,NULL),(26,'192.168.1.88',1463039178,NULL),(26,'192.168.1.88',1463062535,NULL),(18,'192.168.1.88',1463063644,NULL),(18,'192.168.1.88',1463120986,NULL),(18,'192.168.1.88',1463127837,NULL),(26,'192.168.1.88',1463146379,NULL);
/*!40000 ALTER TABLE `fz_shop_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_user`
--

DROP TABLE IF EXISTS `fz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `loginname` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  `loginword` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `loginwith` varchar(10) DEFAULT NULL,
  `pictureurl` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `logincount` int(11) NOT NULL,
  `regtime` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `lock` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_user`
--

LOCK TABLES `fz_user` WRITE;
/*!40000 ALTER TABLE `fz_user` DISABLE KEYS */;
INSERT INTO `fz_user` VALUES (112,'flyzebra','flyzebra','10e208ffd957f5488f795e555f483af8',NULL,NULL,NULL,NULL,NULL,10,54,1462379129,NULL,1),(113,'flyzebraa','flyzebraa','10e208ffd957f5488f795e555f483af8',NULL,NULL,NULL,NULL,NULL,1,1,1462384698,NULL,1),(114,NULL,'FlyZebra',NULL,NULL,'7DDCD68540AA1B4D3C02FF65D8A0935F','QQ','http://q.qlogo.cn/qqapp/1105211644/7DDCD68540AA1B4D3C02FF65D8A0935F/100',NULL,10,57,1462392826,NULL,1),(115,NULL,'尋找紅葉',NULL,NULL,'252027078','BAIDU','http://himg.bdimg.com/sys/portraitn/item/5a70e5b08be689bee7b485e89189214f.jpg',NULL,12,81,1462392844,NULL,1),(116,'ff','ff','83be264eb452fcf0a1c322f2c7cbf987',NULL,NULL,NULL,NULL,NULL,3,6,1462642658,NULL,1),(117,NULL,'宇翔科技','d41d8cd98f00b204e9800998ecf8427e',NULL,'2035EB7D382C45688D1AB390F199F9D2','QQ','http://q.qlogo.cn/qqapp/1105211644/2035EB7D382C45688D1AB390F199F9D2/100',NULL,9,46,1462644768,NULL,1),(118,'tsy','tsy','b5d2099e49bdb07b8176dff5e23b3c14',NULL,NULL,NULL,NULL,NULL,11,73,1463055990,NULL,1),(119,'tyty','tyty','b5d2099e49bdb07b8176dff5e23b3c14',NULL,NULL,NULL,NULL,NULL,8,33,1463227403,NULL,1);
/*!40000 ALTER TABLE `fz_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_user_log`
--

DROP TABLE IF EXISTS `fz_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_user_log` (
  `user_id` int(11) NOT NULL,
  `loginIP` varchar(32) NOT NULL,
  `logintime` int(11) NOT NULL,
  `gps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_user_log`
--

LOCK TABLES `fz_user_log` WRITE;
/*!40000 ALTER TABLE `fz_user_log` DISABLE KEYS */;
INSERT INTO `fz_user_log` VALUES (112,'192.168.1.88',1462379129,NULL),(112,'192.168.1.88',1462381561,NULL),(112,'192.168.1.88',1462381873,NULL),(112,'192.168.1.88',1462382000,NULL),(112,'192.168.1.88',1462382067,NULL),(112,'192.168.1.88',1462382107,NULL),(112,'192.168.1.88',1462382116,NULL),(112,'192.168.1.88',1462382250,NULL),(112,'192.168.1.88',1462383068,NULL),(112,'192.168.1.88',1462383080,NULL),(112,'192.168.1.88',1462383203,NULL),(112,'192.168.1.88',1462383208,NULL),(112,'192.168.1.88',1462383275,NULL),(112,'192.168.1.88',1462383310,NULL),(112,'192.168.1.88',1462383404,NULL),(112,'192.168.1.88',1462384471,NULL),(113,'192.168.1.88',1462384698,NULL),(112,'192.168.1.88',1462436330,NULL),(115,'192.168.1.105',1462636116,NULL),(115,'192.168.1.105',1462636569,NULL),(115,'192.168.1.105',1462638400,NULL),(115,'192.168.1.105',1462638415,NULL),(115,'192.168.1.105',1462638437,NULL),(115,'192.168.1.105',1462638547,NULL),(115,'192.168.1.105',1462638591,NULL),(115,'192.168.1.105',1462638608,NULL),(115,'192.168.1.105',1462639984,NULL),(115,'192.168.1.105',1462642638,NULL),(116,'192.168.1.105',1462642658,NULL),(116,'192.168.1.105',1462643677,NULL),(114,'192.168.1.105',1462643687,NULL),(114,'192.168.1.105',1462643707,NULL),(116,'192.168.1.105',1462643722,NULL),(116,'192.168.1.105',1462643882,NULL),(114,'192.168.1.105',1462643923,NULL),(114,'192.168.1.105',1462643929,NULL),(114,'192.168.1.105',1462644574,NULL),(114,'192.168.1.105',1462644638,NULL),(114,'192.168.1.105',1462644647,NULL),(114,'192.168.1.105',1462644674,NULL),(114,'192.168.1.105',1462644710,NULL),(115,'192.168.1.105',1462644738,NULL),(115,'192.168.1.105',1462644749,NULL),(115,'192.168.1.105',1462644754,NULL),(117,'192.168.1.105',1462644768,NULL),(116,'192.168.1.105',1462644872,NULL),(116,'192.168.1.105',1462645351,NULL),(117,'192.168.1.105',1462645363,NULL),(117,'192.168.1.105',1462645375,NULL),(117,'192.168.1.105',1462645592,NULL),(117,'192.168.1.105',1462653702,NULL),(117,'192.168.1.105',1462683891,NULL),(117,'192.168.1.105',1462691821,NULL),(117,'192.168.1.105',1462701610,NULL),(117,'192.168.1.105',1462701881,NULL),(117,'192.168.1.105',1462702014,NULL),(117,'192.168.1.105',1462702854,NULL),(117,'192.168.1.105',1462703582,NULL),(117,'192.168.1.105',1462703609,NULL),(117,'192.168.1.105',1462703928,NULL),(117,'192.168.1.105',1462703965,NULL),(117,'192.168.1.105',1462704003,NULL),(117,'192.168.1.105',1462704062,NULL),(117,'192.168.1.105',1462705214,NULL),(117,'192.168.1.105',1462705455,NULL),(117,'192.168.1.105',1462716437,NULL),(117,'192.168.1.105',1462717249,NULL),(117,'192.168.1.105',1462718674,NULL),(117,'192.168.1.105',1462718720,NULL),(117,'192.168.1.105',1462718919,NULL),(117,'192.168.1.105',1462719153,NULL),(117,'192.168.1.105',1462719513,NULL),(117,'192.168.1.105',1462725445,NULL),(117,'192.168.1.105',1462783214,NULL),(117,'192.168.1.105',1462793501,NULL),(117,'192.168.1.105',1462794686,NULL),(117,'192.168.1.105',1462794711,NULL),(117,'192.168.1.105',1462795640,NULL),(117,'192.168.1.105',1462798778,NULL),(117,'192.168.1.105',1462812393,NULL),(117,'192.168.1.105',1462812596,NULL),(117,'192.168.1.105',1462812800,NULL),(117,'192.168.1.105',1462812918,NULL),(117,'192.168.1.105',1462813635,NULL),(115,'192.168.1.105',1462813694,NULL),(115,'192.168.1.105',1462859183,NULL),(115,'192.168.1.105',1462873631,NULL),(115,'192.168.1.105',1462874227,NULL),(115,'192.168.1.105',1462874791,NULL),(115,'192.168.1.105',1462875466,NULL),(115,'192.168.1.105',1462875511,NULL),(115,'192.168.1.105',1462875530,NULL),(115,'192.168.1.105',1462875666,NULL),(115,'192.168.1.105',1462875926,NULL),(115,'192.168.1.105',1462876170,NULL),(115,'192.168.1.105',1462876216,NULL),(117,'192.168.1.105',1463055885,NULL),(117,'192.168.1.105',1463055961,NULL),(118,'192.168.1.105',1463055990,NULL),(118,'192.168.1.105',1463057803,NULL),(118,'192.168.1.105',1463059265,NULL),(118,'192.168.1.105',1463059426,NULL),(118,'192.168.1.105',1463059824,NULL),(118,'192.168.1.105',1463059917,NULL),(118,'192.168.1.105',1463061938,NULL),(118,'192.168.1.105',1463062255,NULL),(118,'192.168.1.105',1463062366,NULL),(118,'192.168.1.105',1463062466,NULL),(118,'192.168.1.105',1463062693,NULL),(118,'192.168.1.105',1463062799,NULL),(118,'192.168.1.105',1463063003,NULL),(118,'192.168.1.105',1463063218,NULL),(118,'192.168.1.105',1463063319,NULL),(118,'192.168.1.105',1463063506,NULL),(118,'192.168.1.105',1463063789,NULL),(118,'192.168.1.105',1463063937,NULL),(118,'192.168.1.105',1463063991,NULL),(118,'192.168.1.105',1463064050,NULL),(118,'192.168.1.105',1463064474,NULL),(118,'192.168.1.105',1463065025,NULL),(118,'192.168.1.105',1463065466,NULL),(118,'192.168.1.105',1463065489,NULL),(118,'192.168.1.105',1463065948,NULL),(118,'192.168.1.105',1463065962,NULL),(118,'192.168.1.105',1463065977,NULL),(118,'192.168.1.105',1463066003,NULL),(118,'192.168.1.105',1463067759,NULL),(118,'192.168.1.105',1463069517,NULL),(118,'192.168.1.105',1463071182,NULL),(118,'192.168.1.105',1463073300,NULL),(118,'192.168.1.105',1463117814,NULL),(118,'192.168.1.105',1463118837,NULL),(118,'192.168.1.105',1463118877,NULL),(118,'192.168.1.105',1463119907,NULL),(118,'192.168.1.105',1463121048,NULL),(118,'192.168.1.105',1463121450,NULL),(118,'192.168.1.105',1463122154,NULL),(118,'192.168.1.105',1463124426,NULL),(118,'192.168.1.105',1463124497,NULL),(118,'192.168.1.105',1463124703,NULL),(118,'192.168.1.105',1463125825,NULL),(118,'192.168.1.105',1463127486,NULL),(118,'192.168.1.105',1463127552,NULL),(118,'192.168.1.105',1463127578,NULL),(118,'192.168.1.105',1463127744,NULL),(118,'192.168.1.105',1463127910,NULL),(118,'192.168.1.105',1463127992,NULL),(118,'192.168.1.105',1463128150,NULL),(118,'192.168.1.105',1463129210,NULL),(118,'192.168.1.105',1463129379,NULL),(118,'192.168.1.105',1463129478,NULL),(118,'192.168.1.105',1463129581,NULL),(118,'192.168.1.105',1463129761,NULL),(118,'192.168.1.105',1463130136,NULL),(118,'192.168.1.105',1463130164,NULL),(118,'192.168.1.105',1463130341,NULL),(118,'192.168.1.105',1463130600,NULL),(118,'192.168.1.105',1463130707,NULL),(118,'192.168.1.105',1463131024,NULL),(118,'192.168.1.105',1463131152,NULL),(118,'192.168.1.105',1463131217,NULL),(118,'192.168.1.105',1463131529,NULL),(118,'192.168.1.105',1463131780,NULL),(118,'192.168.1.105',1463131843,NULL),(118,'192.168.1.105',1463132001,NULL),(118,'192.168.1.105',1463132032,NULL),(118,'192.168.1.105',1463132103,NULL),(118,'192.168.1.105',1463132268,NULL),(118,'192.168.1.105',1463132370,NULL),(118,'192.168.1.105',1463132503,NULL),(118,'192.168.1.105',1463132633,NULL),(117,'192.168.1.105',1463158561,NULL),(117,'192.168.1.105',1463158580,NULL),(117,'192.168.1.105',1463158597,NULL),(117,'192.168.1.105',1463158930,NULL),(117,'192.168.1.105',1463158999,NULL),(115,'192.168.1.105',1463159089,NULL),(115,'192.168.1.105',1463159114,NULL),(115,'192.168.1.105',1463159375,NULL),(115,'192.168.1.105',1463159537,NULL),(115,'192.168.1.105',1463159709,NULL),(115,'192.168.1.105',1463159761,NULL),(115,'192.168.1.105',1463160048,NULL),(115,'192.168.1.105',1463160394,NULL),(115,'192.168.1.105',1463160654,NULL),(115,'192.168.1.105',1463160844,NULL),(115,'192.168.1.105',1463161449,NULL),(115,'192.168.1.105',1463161518,NULL),(115,'192.168.1.105',1463161584,NULL),(115,'192.168.1.105',1463161687,NULL),(115,'192.168.1.105',1463162601,NULL),(115,'192.168.1.105',1463168996,NULL),(115,'192.168.1.105',1463169033,NULL),(115,'192.168.1.105',1463197217,NULL),(115,'192.168.1.105',1463197277,NULL),(115,'192.168.1.105',1463197468,NULL),(115,'192.168.1.105',1463202042,NULL),(115,'192.168.1.105',1463202707,NULL),(115,'192.168.1.105',1463203925,NULL),(115,'192.168.1.105',1463206311,NULL),(115,'192.168.1.105',1463208996,NULL),(115,'192.168.1.105',1463218119,NULL),(115,'192.168.1.105',1463218128,NULL),(115,'192.168.1.105',1463218676,NULL),(115,'192.168.1.105',1463218797,NULL),(115,'192.168.1.105',1463218873,NULL),(115,'192.168.1.105',1463219009,NULL),(115,'192.168.1.105',1463219063,NULL),(115,'192.168.1.105',1463219653,NULL),(115,'192.168.1.105',1463220188,NULL),(115,'192.168.1.105',1463220338,NULL),(115,'192.168.1.105',1463220482,NULL),(115,'192.168.1.105',1463220571,NULL),(115,'192.168.1.105',1463223075,NULL),(115,'192.168.1.105',1463223375,NULL),(115,'192.168.1.105',1463223410,NULL),(115,'192.168.1.105',1463223439,NULL),(115,'192.168.1.105',1463223774,NULL),(115,'192.168.1.105',1463223997,NULL),(115,'192.168.1.105',1463224435,NULL),(115,'192.168.1.105',1463225079,NULL),(115,'192.168.1.105',1463226578,NULL),(115,'192.168.1.105',1463226824,NULL),(115,'192.168.1.105',1463226832,NULL),(115,'192.168.1.105',1463226853,NULL),(115,'192.168.1.105',1463227153,NULL),(115,'192.168.1.105',1463227171,NULL),(117,'192.168.1.105',1463227184,NULL),(112,'192.168.1.105',1463227238,NULL),(112,'192.168.1.105',1463227263,NULL),(112,'192.168.1.105',1463227305,NULL),(112,'192.168.1.105',1463227328,NULL),(112,'192.168.1.105',1463227360,NULL),(112,'192.168.1.105',1463227380,NULL),(119,'192.168.1.105',1463227403,NULL),(119,'192.168.1.105',1463227422,NULL),(119,'192.168.1.105',1463228161,NULL),(119,'192.168.1.105',1463228196,NULL),(119,'192.168.1.105',1463228228,NULL),(119,'192.168.1.105',1463228299,NULL),(119,'192.168.1.105',1463228330,NULL),(119,'192.168.1.105',1463228631,NULL),(119,'192.168.1.105',1463229157,NULL),(119,'192.168.1.105',1463230653,NULL),(119,'192.168.1.105',1463230964,NULL),(119,'192.168.1.105',1463230984,NULL),(119,'192.168.1.105',1463231412,NULL),(119,'192.168.1.105',1463231542,NULL),(119,'192.168.1.105',1463231781,NULL),(119,'192.168.1.105',1463232382,NULL),(119,'192.168.1.105',1463232521,NULL),(119,'192.168.1.105',1463232801,NULL),(119,'192.168.1.105',1463232885,NULL),(119,'192.168.1.105',1463232954,NULL),(119,'192.168.1.105',1463233126,NULL),(119,'192.168.1.105',1463233157,NULL),(119,'192.168.1.105',1463233255,NULL),(119,'192.168.1.105',1463233809,NULL),(119,'192.168.1.105',1463234504,NULL),(119,'192.168.1.105',1463234516,NULL),(119,'192.168.1.105',1463234570,NULL),(119,'192.168.1.105',1463235243,NULL),(119,'192.168.1.105',1463235995,NULL),(119,'192.168.1.105',1463236097,NULL),(119,'192.168.1.105',1463236165,NULL),(119,'192.168.1.105',1463236276,NULL),(119,'192.168.1.105',1463236533,NULL),(114,'192.168.1.105',1463236614,NULL),(114,'192.168.1.105',1463236937,NULL),(114,'192.168.1.105',1463242771,NULL),(112,'192.168.1.88',1463245811,NULL),(114,'192.168.1.105',1463245900,NULL),(112,'192.168.1.88',1463246030,NULL),(112,'192.168.1.88',1463246186,NULL),(112,'192.168.1.88',1463246213,NULL),(112,'192.168.1.88',1463246339,NULL),(114,'192.168.1.105',1463246351,NULL),(114,'192.168.1.105',1463246359,NULL),(112,'192.168.1.88',1463246381,NULL),(112,'192.168.1.88',1463246395,NULL),(112,'192.168.1.88',1463246449,NULL),(112,'192.168.1.88',1463246682,NULL),(112,'192.168.1.88',1463246775,NULL),(112,'192.168.1.88',1463246839,NULL),(112,'192.168.1.88',1463246965,NULL),(112,'192.168.1.88',1463246981,NULL),(112,'192.168.1.88',1463247004,NULL),(112,'192.168.1.88',1463247023,NULL),(112,'192.168.1.88',1463247046,NULL),(112,'192.168.1.88',1463247133,NULL),(112,'192.168.1.88',1463247214,NULL),(114,'192.168.1.105',1463247361,NULL),(114,'192.168.1.105',1463247371,NULL),(114,'192.168.1.105',1463250533,NULL),(114,'192.168.1.105',1463250723,NULL),(114,'192.168.1.105',1463250951,NULL),(114,'192.168.1.105',1463251027,NULL),(114,'192.168.1.105',1463251086,NULL),(114,'192.168.1.105',1463251144,NULL),(114,'192.168.1.105',1463277686,NULL),(114,'192.168.1.105',1463277753,NULL),(112,'192.168.1.88',1463279765,NULL),(112,'192.168.1.88',1463279912,NULL),(114,'192.168.1.105',1463279982,NULL),(114,'192.168.1.105',1463280067,NULL),(114,'192.168.1.105',1463280098,NULL),(114,'192.168.1.105',1463280492,NULL),(114,'192.168.1.105',1463280626,NULL),(112,'192.168.1.88',1463280704,NULL),(112,'192.168.1.88',1463281017,NULL),(112,'192.168.1.88',1463281074,NULL),(112,'192.168.1.88',1463281153,NULL),(114,'192.168.1.105',1463281243,NULL),(112,'192.168.1.88',1463281299,NULL),(114,'192.168.1.105',1463281311,NULL),(112,'192.168.1.88',1463281351,NULL),(114,'192.168.1.105',1463281526,NULL),(114,'192.168.1.105',1463281596,NULL),(112,'192.168.1.88',1463282162,NULL),(112,'192.168.1.88',1463282260,NULL),(112,'192.168.1.88',1463282512,NULL),(112,'192.168.1.88',1463282618,NULL),(112,'192.168.1.88',1463282697,NULL),(112,'192.168.1.88',1463282785,NULL),(114,'192.168.1.105',1463282844,NULL),(114,'192.168.1.105',1463284093,NULL),(114,'192.168.1.105',1463284251,NULL),(114,'192.168.1.105',1463284355,NULL),(114,'192.168.1.105',1463286034,NULL),(114,'192.168.1.105',1463286194,NULL),(114,'192.168.1.105',1463287077,NULL),(114,'192.168.1.105',1463287266,NULL),(114,'192.168.1.105',1463288123,NULL),(114,'192.168.1.105',1463288452,NULL),(114,'192.168.1.105',1463291157,NULL),(114,'192.168.1.105',1463292627,NULL),(114,'192.168.1.105',1463292656,NULL),(114,'192.168.1.105',1463301487,NULL),(114,'192.168.1.105',1463308124,NULL),(114,'192.168.1.105',1463312644,NULL),(114,'192.168.1.105',1463319647,NULL),(114,'192.168.1.105',1463322407,NULL);
/*!40000 ALTER TABLE `fz_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fz_welcome`
--

DROP TABLE IF EXISTS `fz_welcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fz_welcome` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imageurl` varchar(255) NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fz_welcome`
--

LOCK TABLES `fz_welcome` WRITE;
/*!40000 ALTER TABLE `fz_welcome` DISABLE KEYS */;
INSERT INTO `fz_welcome` VALUES (35,'/UpLoads/welcome/images/2016-05-10/5730befdbf790.jpg',1),(36,'/UpLoads/welcome/images/2016-05-10/5730bf15ca8cf.jpg',1),(37,'/UpLoads/welcome/images/2016-05-10/5730bf3d625df.jpg',1),(38,'/UpLoads/welcome/images/2016-05-10/5730bf4ba287f.jpg',1),(40,'/UpLoads/welcome/images/2016-05-10/5730bf8944e8b.jpg',1),(41,'/UpLoads/welcome/images/2016-05-10/573169d431643.jpg',1);
/*!40000 ALTER TABLE `fz_welcome` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-16  0:24:41