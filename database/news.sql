-- MySQL dump 10.13  Distrib 5.7.35-38, for Linux (x86_64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	5.7.35-38

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Current Database: `news`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `news` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `news`;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(10) NOT NULL DEFAULT '',
  `subject` tinytext NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (38,'May','???????????????2','??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????','2019-12-17 02:16:10'),(37,'??????','???????????????','??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????','2019-12-17 02:15:37'),(36,'??????','???????????????????????????????????????','????????????????????????????????? \"????????????\" ?????????????????????????????????????????????????????????????????????????????????????????????','2019-12-17 02:14:45'),(35,'Marie','???????????????','???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 8 ??? 31 ??????????????????????????? 10:00???','2019-12-17 02:14:16'),(34,'Jerry','????????????','\"????????????\" ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????','2019-12-17 02:13:10'),(32,'??????','AKB48????????????','AKB48??????????????????????????????????????????????????????????????????????????????SKE48???SDN48???NMB48???HKT48???NGT48???JKT48???SNH48?????????????????????????????????????????????','2019-12-17 02:11:59'),(33,'??????','????????????????????????','?????????????????????????????????????????????????????????? ????????????????????????????????????????????????129.3??????','2019-12-17 02:12:31'),(31,'??????','AKB48','AKB48?????????????????????????????????????????????2005???12???8??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????','2019-12-17 02:11:33'),(30,'Jerry','????????????','????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????71?????????????????????????????????41????????????????????????????????????67??????????????????????????????????????????????????????86???????????????????????????????????????????????????????????????','2019-12-17 02:11:03'),(29,'Grace','???????????????','?????????????????????????????????????????????3D???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????','2019-12-17 02:10:35'),(28,'?????????','???????????????????????????','?????????????????????????????? 1/31 ???????????????????????????????????????????????????????????????????????????????????? 1000 ???????????????????????????????????????','2019-12-17 02:10:03');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_message`
--

DROP TABLE IF EXISTS `reply_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(10) NOT NULL DEFAULT '',
  `subject` tinytext NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reply_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_message`
--

LOCK TABLES `reply_message` WRITE;
/*!40000 ALTER TABLE `reply_message` DISABLE KEYS */;
INSERT INTO `reply_message` VALUES (10,'Marie','???????????????','?????????????????????, ???????????????????','2019-12-17 02:25:56',28),(11,'?????????','???????????????','12/25??????12:00????????????????????????','2019-12-17 02:27:55',28);
/*!40000 ALTER TABLE `reply_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05  7:46:30
