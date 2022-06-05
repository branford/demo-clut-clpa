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
-- 資料庫： `students`
--
CREATE DATABASE IF NOT EXISTS `students` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `students`;

-- --------------------------------------------------------

--
-- 資料表結構 `grade`
--

CREATE TABLE `grade` (
  `no` varchar(8) NOT NULL DEFAULT '',
  `name` varchar(8) NOT NULL DEFAULT '',
  `chinese` tinyint(4) NOT NULL DEFAULT '0',
  `math` tinyint(4) NOT NULL DEFAULT '0',
  `english` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `grade`
--

INSERT INTO `grade` (`no`, `name`, `chinese`, `math`, `english`) VALUES
('A8608001', '王大明', 88, 96, 92),
('A8608002', '陳小新', 95, 89, 99),
('A8608003', '小紅豆', 80, 86, 89),
('A8608004', '章小倩', 85, 91, 93),
('A8608005', '李青青', 90, 96, 80),
('A8608006', '孫小美', 80, 77, 82),
('A8608007', '林小佩', 100, 98, 95),
('A8608008', '張美麗', 79, 87, 86),
('A8608009', '林娟娟', 75, 73, 79),
('A8608010', '鍾玲玲', 78, 83, 84);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
