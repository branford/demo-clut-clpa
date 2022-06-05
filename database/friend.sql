-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `friend`
--
CREATE DATABASE IF NOT EXISTS `friend` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `friend`;

-- --------------------------------------------------------

--
-- 資料表結構 `friend_club`
--

CREATE TABLE `friend_club` (
  `no` smallint(6) NOT NULL,
  `name` varchar(5) NOT NULL,
  `sex` char(1) NOT NULL,
  `age` varchar(10) NOT NULL,
  `star_signs` varchar(3) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `career` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `friend_club`
--

INSERT INTO `friend_club` (`no`, `name`, `sex`, `age`, `star_signs`, `height`, `weight`, `career`) VALUES
(1, '孫小美', '女', '15 ~ 20', '雙魚座', '165 ~ 170', '50 ~ 55', '學生'),
(2, '小燕子', '女', '20 ~ 25', '牡羊座', '155 ~ 160', '45 ~ 50', '上班族'),
(3, '雲翔', '男', '20 ~ 25', '天蠍座', '175 ~ 180', '65 ~ 70', 'SOHO 族'),
(4, '莫召奴', '男', '25 ~ 30', '天秤座', '175 ~ 180', '65 ~ 70', '上班族'),
(5, '葉小釵', '男', '30 ~ 35', '魔羯座', '165 ~ 170', '60 ~ 65', '老師'),
(6, '流川楓', '男', '15 ~ 20', '射手座', '180 ~ 185', '65 ~ 70', '上班族'),
(7, '林阿土', '男', '25 ~ 30', '牡羊座', '170 ~ 175', '65 ~ 70', '老師'),
(8, '趙冰冰', '女', '20 ~ 25', '處女座', '155 ~ 160', '45 ~ 50', '學生'),
(9, '嘟嘟', '男', '15 ~ 20', '獅子座', '165 ~ 170', '55 ~ 60', '學生'),
(10, '晴子', '女', '15 ~ 20', '雙子座', '160 ~ 165', '45 ~ 50', '學生'),
(11, '小蘭', '女', '25 ~ 30', '巨蟹座', '165 ~ 170', '50 ~ 55', '上班族'),
(12, '凱蒂', '女', '20 ~ 25', '雙魚座', '160 ~ 165', '45 ~ 50', '公務員'),
(13, '櫻桃子', '女', '25 ~ 30', '天秤座', '155 ~ 160', '55 ~ 60', 'SOHO 族'),
(14, '亮亮', '女', '25 ~ 30', '射手座', '165 ~ 170', '50 ~ 55', '公務員'),
(15, '小齊', '男', '25 ~ 30', '水瓶座', '170 ~ 175', '55 ~ 60', '上班族'),
(16, '安琪', '女', '15 ~ 20', '獅子座', '165 ~ 170', '50 ~ 55', '學生'),
(17, '林達', '女', '20 ~ 25', '雙魚座', '165 ~ 170', '50 ~ 55', '公務員'),
(18, '陳小東', '男', '25 ~ 30', '魔羯座', '175 ~ 180', '65 ~ 70', '上班族'),
(19, 'CoCo', '女', '20 ~ 25', '獅子座', '170 ~ 175', '55 ~ 60', '上班族'),
(20, '安室', '女', '30 ~ 35', '處女座', '155 ~ 160', '45 ~ 50', '老師');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `friend_club`
--
ALTER TABLE `friend_club`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
