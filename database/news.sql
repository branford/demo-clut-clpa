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
INSERT INTO `message` VALUES (38,'May','海底總動員2','這次將以健忘的多莉為主軸，故事發生在尼莫返家後的六個月，一向什麼都記不起來的她突然受到記憶的衝擊，想起自己過往，所以多莉決定啟程尋找自己的家人，憑著僅存的記憶找到回家的路。','2019-12-17 02:16:10'),(37,'小東','名偵探柯南','名偵探柯南是日本漫畫家青山剛昌的著名推理漫畫作品及所有相關之出版物、電影等，劇中描述高中生偵探工藤新一因遭到灌藥導致身體縮小後，試圖調查黑暗組織與破獲各案件的故事。','2019-12-17 02:15:37'),(36,'阿寶','臥虎藏龍開啟武俠電影新紀元','國際知名導演李安的作品 \"臥虎藏龍\" 是第一部好萊塢投資的中國武俠電影，在台甫一推出便創下票房佳績。','2019-12-17 02:14:45'),(35,'Marie','秋天的童話','秋天的童話是一個美麗純樸的少女、一個期待真愛的富家子弟、一個真心相待的青梅竹馬交織而成的美麗秋天童話，播出時間為 8 月 31 日起星期一到五晚間 10:00。','2019-12-17 02:14:16'),(34,'Jerry','天搖地動','\"天搖地動\" 電影描述的是漁船安麗雅號為了增加漁獲量，於是開往弗萊明角，未料當地氣象預告超級颶風葛瑞斯正在接近中，安麗雅號與其它船隻即將面臨前所未有的危機。','2019-12-17 02:13:10'),(32,'小倩','AKB48姊妹團體','AKB48獲得成功後，秋元康以類似模式於日本其它都市與海外成立SKE48、SDN48、NMB48、HKT48、NGT48、JKT48、SNH48等姊妹團體，朝向不同市場發展。','2019-12-17 02:11:59'),(33,'小明','猜猜小叮噹的身高','您知道小叮噹的身高和體重是一樣的數字嗎? 這是我在電視節目上看到的，答案是129.3喔。','2019-12-17 02:12:31'),(31,'小倩','AKB48','AKB48是日本大型女子偶像團體，成立於2005年12月8日，其團名取自東京的秋葉原，在秋葉原擁有專屬表演劇場，以「可以面對面的偶像」為理念，幾乎每天在劇場進行公演。','2019-12-17 02:11:33'),(30,'Jerry','冰雪奇緣','冰雪奇緣是由迪士尼電影公司發行，取材自安徒生童話故事《冰雪女王》，該片連續贏得第71屆金球獎最佳動畫片、第41屆安妮奬最佳動畫電影、第67屆英國電影學院獎最佳動畫電影，以及第86屆奧斯卡金像獎最佳動畫長片和最佳原創歌曲。','2019-12-17 02:11:03'),(29,'Grace','動物方城市','動物方城市是迪士尼影業所發行的3D動畫電影，故事的背景設定在一個哺乳動物所居住的大城市，主角兔子女警和街頭行騙高手狐狸合作解開一樁肉食動物失蹤案，並揭發背後的陰謀。','2019-12-17 02:10:35'),(28,'小丸子','六月天演唱會免費聽','知名的六月天樂團將於 1/31 舉行新歌免費聽演唱會，一張專輯可以換一張票，北中南各限量 1000 張，有沒有人要一起去排隊？','2019-12-17 02:10:03');
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
INSERT INTO `reply_message` VALUES (10,'Marie','一起去排隊','我要一起去排隊, 時間和地點呢?','2019-12-17 02:25:56',28),(11,'小丸子','時間和地點','12/25中午12:00在西門町紅樓門口','2019-12-17 02:27:55',28);
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
