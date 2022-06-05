-- MySQL dump 10.13  Distrib 5.7.35-38, for Linux (x86_64)
--
-- Host: localhost    Database: guestbook
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
-- Current Database: `guestbook`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `guestbook` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `guestbook`;

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
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'陳小貞','實境真人秀','根據網路最新票選，網友心目中最想看到志凌姊姊參加實境真人秀節目，希望有一天真的可以看到志凌姊姊上陣。','2020-01-01 15:28:36'),(2,'阿榮','JJ發新片了','好消息告訴大家，JJ發新片了，裡面的歌曲首首動聽，建議大家可以用力聽聽看喔～！','2020-01-01 15:30:03'),(3,'小咪','小D和小K離婚了','好勁爆的消息喔，甫生子的小D才剛和小K結婚，未料又旋風似的離婚了，令人不禁感嘆現代人的婚姻真難維繫。','2020-01-01 15:32:34'),(4,'孫小美','好戲鹿鼎記上場','X視最近重播的鹿鼎記，不僅女主角們陣容堅強，美女如雲...，更維持了男主角一貫的搞笑風格，相當有看頭。','2020-01-01 15:35:54'),(5,'Amily','酷酷的阿鋒哥','記得日前阿鋒哥在記者會上，原本愉快的他，卻被記者問了 「如何當好繼父」的問題，因而神情不快並斥責記者無聊，身為歌迷的我們，希望記者不要再老是問這類的問題，多給歌手們一點私人空間。','2020-01-01 15:38:29'),(6,'皮皮','小東與小芝公佈戀情','繼天后與阿鋒哥公開戀情之後，又有一對俊男美女公開戀情，那就是小東和小芝，如果藝人們都勇於承認戀情，那麼狗仔隊可要失業了。','2020-01-01 15:40:55'),(7,'颺','阿棋出精選集了','療癒歌手阿棋重新出發，推出了個人第一張精選集，內有許多動人好歌，值得一聽再聽。','2020-01-01 15:43:24'),(8,'阿淵','Hero重播','曾經深受哈日族喜愛的Hero要重播了，這次是在東森綜合台，1 月 22 日 20:00 開始，喜歡木村的朋友們千萬不要錯過了。','2020-01-01 15:48:06'),(9,'阿淵','熟男還不結婚來了','阿部寬主演的熟男不結婚相隔十幾年推出續集－熟男還不結婚，大家趕快來看看熟男這次是否會終結單身生活。','2020-01-01 15:52:02'),(10,'哈日寶寶','惡作劇之吻要重播','由漫畫改編的惡作劇之吻是一齣有趣的校園喜劇，男主角柏原崇個性孤傲，女主角佐藤藍子熱情活潑，衛視中文台將於 1 月 2日 20:00 重播該劇。','2020-01-01 15:54:50'),(11,'哈日寶寶','AKB48','AKB48是日本大型女子偶像團體，成立於2005年12月8日，其團名取自東京的秋葉原，在秋葉原擁有專屬表演劇場，以「可以面對面的偶像」為理念，幾乎每天在劇場進行公演。','2020-01-01 15:58:59'),(12,'大餅','新益智節目','中視八點檔將於八月份推出新益智節目，取代傳統的連續劇，對於不喜歡收看連續劇的朋友，這是另一個選擇。','2020-01-01 16:01:06'),(13,'聽風在唱','雙陳飛車記','日前演出飛車追逐的雙陳召開記者會，說明兩人並無發生衝突，更無腳踹車門，拉扯第三者之激烈動作，希望就此平息此風波。','2020-01-01 16:03:45'),(14,'小倩','徐小萱代言遠傳電信','繼藝人陳阿東之後，徐小萱成為遠傳電信的第二位代言人，而且該廣告已經密集的在大各電視台播出，讓我們可以目睹徐小萱跳街舞的漫妙舞姿。','2020-01-01 16:05:47'),(15,'佩佩','名偵探柯南','名偵探柯南是日本漫畫家青山剛昌的著名推理漫畫作品及所有相關之出版物、電影等，劇中描述高中生偵探工藤新一因遭到灌藥導致身體縮小後，試圖調查黑暗組織與破獲各案件的故事。','2020-01-01 16:08:46'),(16,'小倩','AKB48姊妹團體','AKB48獲得成功後，秋元康以類似模式於日本其它都市與海外成立SKE48、SDN48、NMB48、HKT48、NGT48、JKT48、SNH48等姊妹團體，朝向不同市場發展。','2020-01-01 16:10:47'),(17,'小聰明','猜猜小叮噹的身高','您知道小叮噹的身高和體重是一樣的數字嗎? 這是我在電視節目上看到的，答案是129.3喔。','2020-01-01 16:13:51'),(18,'陳小貞','天搖地動','\"天搖地動\" 電影描述的是 漁船安麗雅號為了增加漁獲量，於是開往弗萊明角，未料當地氣象預告超級颶風葛瑞斯正在接近中，安麗雅號與其它船隻即將面臨前所未有的危機。','2020-01-01 16:17:50'),(19,'阿榮','秋天的童話','秋天的童話是一個美麗純樸的少女、一個期待真愛的富家子弟、一個真心相待的青梅竹馬交織而成的美麗秋天童話，播出時間為 1 月 31 日起星期一到五晚間 10:00。','2020-01-01 16:21:02'),(20,'阿淵','臥虎藏龍開啟武俠電影新紀元','國際知名導演李安的作品 \"臥虎藏龍\" 是第一部好萊塢投資的中國武俠電影，在台甫一推出便創下票房佳績。','2020-01-01 16:24:00'),(21,'Amily','海底總動員2','這次將以健忘的多莉為主軸，故事發生在尼莫返家後的六個月，一向什麼都記不起來的她突然受到記憶的衝擊，想起自己過往，所以多莉決定啟程尋找自己的家人，憑著僅存的記憶找到回家的路。','2020-01-01 16:28:31'),(22,'小瓜呆','冰雪奇緣','冰雪奇緣是由迪士尼電影公司發行，取材自安徒生童話故事《冰雪女王》，該片連續贏得第71屆金球獎最佳動畫片、第41屆安妮奬最佳動畫電影、第67屆英國電影學院獎最佳動畫電影，以及第86屆奧斯卡金像獎最佳動畫長片和最佳原創歌曲。','2020-01-01 17:48:19'),(23,'陳小貞','動物方城市','動物方城市是迪士尼影業所發行的3D動畫電影，故事的背景設定在一個哺乳動物所居住的大城市，主角兔子女警和街頭行騙高手狐狸合作解開一樁肉食動物失蹤案，並揭發背後的陰謀。','2020-01-01 18:00:47'),(24,'李寶釵','六月天演唱會免費聽','知名的六月天樂團將於 1/31 舉行新歌免費聽演唱會，一張專輯可以換一張票，北中南各限量 1000 張，有沒有人要一起去排隊？','2020-01-01 21:21:52'),(25,'小瓜呆','七夕的雨','昨天看到某娛樂節目，裡面有一個題目是七夕的雨是誰的眼淚，答案分別為 1. 織女  2. 牛郎  3. 喜鵲  4. 王母娘娘，未料答題的情侶竟然回答喜鵲，喔，我的老天爺啊，真是好神奇的答案。','2020-01-01 21:26:56'),(26,'小倩','一窩蜂的益智節目','回想在有線電視開放經營的時候，電視台一窩蜂的推出靈異節目，而現在，則是一窩蜂的推出益智節目，從星期一到星期五，幾乎天天都有，令人不禁感嘆，為何節目的製作人總是如此無創意，往往是互相抄襲，甚至很多節目是抄襲自日本，節目製作人請多多加油了。','2020-01-01 21:31:06'),(27,'童言','驚天動地 60 秒','這部電影是描述藍道為一名頂尖的偷車賊，其最高記錄是在 60 秒之內偷走一部車。由於不希望自己的弟弟步其後塵，藍道決定金盆洗手，未料數年後，弟弟闖下大禍，藍道必須在四天內偷走 50 部名車，才能幫助弟弟，就在藍道開始動手的時候，過去來不及逮捕藍道的警方亦盯上他，最後，藍道能否在 24 小時之內完成任務解救弟弟呢？請看電影結局。','2020-01-03 14:32:20');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
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