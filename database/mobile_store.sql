-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2016 at 04:39 AM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_store`
--
CREATE DATABASE IF NOT EXISTS `mobile_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mobile_store`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `book_id` int(11) NOT NULL,
  `image_name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`book_id`, `image_name`, `description`) VALUES
(1, 'ACL037300.jpg', '價格：350　書號：ACL037300<br />網頁開發人員升級至 HTML5 的最佳利器！'),
(2, 'ACL046300.jpg', '價格：540　書號：ACL046300<br/>★超值加碼！使用 PhoneGap Build 將行動網站建置為跨平台 App！'),
(3, 'AEB003500.jpg', '價格：560　書號：AEB003500<br />訪察多所院校之資電科系、理工科系教師意見編寫而成，內容兼顧深度與廣度，涵括最新資訊科學的核心內容，並將研究所入學考試題型融合至內文、隨堂練習與學習評量，為學生將來升學與就業提早做準備。'),
(4, 'AEB003400.jpg', '價格：520　書號：AEB003400<br />針對資訊科學教育所設計，廣泛且精要地探討資訊科學相關主題，內容涵蓋資訊科學的核心知識與實務應用。'),
(5, 'AEN003400.jpg', '價格：550　書號：AEN003400<br />完全針對網路概論、資料通訊所設計，廣泛且精要地探討網路與資料通訊相關主題，並納入最新之技術訊息與發展趨勢。');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`book_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
