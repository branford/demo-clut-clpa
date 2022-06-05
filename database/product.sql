-- MySQL dump 10.13  Distrib 5.7.35-38, for Linux (x86_64)
--
-- Host: localhost    Database: product
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
-- Current Database: `product`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `product` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `product`;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(20) NOT NULL DEFAULT '',
  `brand` varchar(20) NOT NULL DEFAULT '',
  `specification` varchar(100) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,'主機板','華碩','P8B75-V',2850,'2020-01-24','tw.asus.com'),(2,'主機板','微星','H87M-E33',2450,'2020-01-24','tw.msi.com'),(3,'主機板','技嘉','Z87X-D3H',4650,'2020-01-24','www.gigabyte.tw'),(4,'主機板','華碩','P8H77-V',3550,'2020-01-24','tw.asus.com'),(5,'主機板','華碩','H61M-E',1750,'2020-01-24','tw.asus.com'),(6,'主機板','微星','Z87-GD65 GAMING',7950,'2020-01-24','tw.msi.com'),(7,'主機板','技嘉','B85M-D2V',1950,'2020-01-24','www.gigabyte.tw'),(8,'主機板','微星','H87M-G43',3050,'2020-01-24','tw.msi.com'),(9,'主機板','微星','B85-G43 GAMING',3150,'2020-01-24','tw.msi.com'),(10,'主機板','技嘉','H81M-DS2',1850,'2020-01-24','www.gigabyte.tw'),(11,'CPU','Intel','Core i7-4770K',10330,'2020-01-24','www.intel.com.tw'),(12,'CPU','Intel','Core i7-4770',9200,'2020-01-24','www.intel.com.tw'),(13,'CPU','Intel','Xeon E3-1230V3',7500,'2020-01-24','www.intel.com.tw'),(14,'CPU','AMD','Piledriver FX-8320',5000,'2020-01-24','www.amd.com/tw'),(15,'CPU','AMD','Piledriver FX-8350',5800,'2020-01-24','www.amd.com/tw'),(19,'記憶體','創見','DDR3 1600 8G',1900,'2020-01-24','tw.transcend-info.com'),(18,'記憶體','金士頓','DDR3 1600 4G',1000,'2020-01-24','www.kingston.com/tw'),(17,'記憶體','金士頓','DDR3 1600 8G',1900,'2020-01-24','www.kingston.com/tw'),(16,'記憶體','創見','DDR3 1333 8G',2100,'2020-01-24','tw.transcend-info.com'),(20,'記憶體','創見','JetRam DDR2 800 2G',850,'2020-01-24','tw.transcend-info.com'),(21,'顯示卡','微星','N780 3GD5',17500,'2020-01-24','tw.msi.com'),(22,'顯示卡','華碩','GTX650 DCT-1GD5',4000,'2020-01-24','tw.asus.com'),(23,'顯示卡','微星','N660-2GD5/OC',5500,'2020-01-24','tw.msi.com'),(25,'硬碟','WD','Blue 1TB 3.5 吋 7200 轉',1900,'2020-01-24','www.wdc.com/ch'),(24,'顯示卡','華碩','GTX760-DC2OC-2GD5',9500,'2020-01-24','tw.asus.com'),(26,'硬碟','Seagate','1TB 3.5 吋 7200 轉',1900,'2020-01-24','www.seagate.com'),(27,'硬碟','WD','Black 4TB 3.5 吋 7200 轉',7900,'2020-01-24','www.wdc.com/ch'),(28,'硬碟','WD','Black 500GB 3.5 吋 7200 轉',2100,'2020-01-24','www.wdc.com/ch'),(29,'硬碟','Seagate','2TB 3.5 吋 7200 轉',3800,'2020-01-24','www.seagate.com'),(30,'螢幕','DELL','UltraSharp U2413 24\"',17900,'2020-01-24','www.dell.com.tw'),(31,'螢幕','DELL','UltraSharp U3014 30\"',53500,'2020-01-24','www.dell.com.tw'),(32,'螢幕','EIZO','ColorEdge CX240 24\"',49500,'2020-01-24','www.eizo.com.tw'),(33,'螢幕','EIZO','FlexScan EV2316W 23\"',9800,'2020-01-24','www.eizo.com.tw'),(34,'螢幕','華碩','VS228NE 22\"',3400,'2020-01-24','tw.asus.com'),(35,'螢幕','華碩','MX279H 27\"',11200,'2020-01-24','tw.asus.com'),(36,'平板電腦','Apple','iPad 4G+Wi-Fi 128G',26800,'2020-01-24','www.apple.com/tw'),(37,'平板電腦','Apple','iPad mini 4G+Wi-Fi 64G',19800,'2020-01-24','www.apple.com/tw'),(38,'平板電腦','Apple','iPad Wi-Fi 32G',16800,'2020-01-24','www.apple.com/tw'),(39,'平板電腦','華碩','Transformer Pad ',15800,'2020-01-24','tw.asus.com'),(40,'平板電腦','華碩','ME102A 16GB Wi-Fi',8900,'2020-01-24','tw.asus.com');
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
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
