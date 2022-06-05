-- MySQL dump 10.13  Distrib 5.7.35-38, for Linux (x86_64)
--
-- Host: localhost    Database: friend
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
-- Current Database: `friend`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `friend` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `friend`;

--
-- Table structure for table `friend_club`
--

DROP TABLE IF EXISTS `friend_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_club` (
  `no` smallint(6) NOT NULL,
  `name` varchar(5) NOT NULL,
  `sex` char(1) NOT NULL,
  `age` varchar(10) NOT NULL,
  `star_signs` varchar(3) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `career` varchar(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_club`
--

LOCK TABLES `friend_club` WRITE;
/*!40000 ALTER TABLE `friend_club` DISABLE KEYS */;
INSERT INTO `friend_club` VALUES (1,'孫小美','女','15 ~ 20','雙魚座','165 ~ 170','50 ~ 55','學生'),(2,'小燕子','女','20 ~ 25','牡羊座','155 ~ 160','45 ~ 50','上班族'),(3,'雲翔','男','20 ~ 25','天蠍座','175 ~ 180','65 ~ 70','SOHO 族'),(4,'莫召奴','男','25 ~ 30','天秤座','175 ~ 180','65 ~ 70','上班族'),(5,'葉小釵','男','30 ~ 35','魔羯座','165 ~ 170','60 ~ 65','老師'),(6,'流川楓','男','15 ~ 20','射手座','180 ~ 185','65 ~ 70','上班族'),(7,'林阿土','男','25 ~ 30','牡羊座','170 ~ 175','65 ~ 70','老師'),(8,'趙冰冰','女','20 ~ 25','處女座','155 ~ 160','45 ~ 50','學生'),(9,'嘟嘟','男','15 ~ 20','獅子座','165 ~ 170','55 ~ 60','學生'),(10,'晴子','女','15 ~ 20','雙子座','160 ~ 165','45 ~ 50','學生'),(11,'小蘭','女','25 ~ 30','巨蟹座','165 ~ 170','50 ~ 55','上班族'),(12,'凱蒂','女','20 ~ 25','雙魚座','160 ~ 165','45 ~ 50','公務員'),(13,'櫻桃子','女','25 ~ 30','天秤座','155 ~ 160','55 ~ 60','SOHO 族'),(14,'亮亮','女','25 ~ 30','射手座','165 ~ 170','50 ~ 55','公務員'),(15,'小齊','男','25 ~ 30','水瓶座','170 ~ 175','55 ~ 60','上班族'),(16,'安琪','女','15 ~ 20','獅子座','165 ~ 170','50 ~ 55','學生'),(17,'林達','女','20 ~ 25','雙魚座','165 ~ 170','50 ~ 55','公務員'),(18,'陳小東','男','25 ~ 30','魔羯座','175 ~ 180','65 ~ 70','上班族'),(19,'CoCo','女','20 ~ 25','獅子座','170 ~ 175','55 ~ 60','上班族'),(20,'安室','女','30 ~ 35','處女座','155 ~ 160','45 ~ 50','老師');
/*!40000 ALTER TABLE `friend_club` ENABLE KEYS */;
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
