-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 06:44 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood-info`
--

CREATE TABLE `blood-info` (
  `Id` int(5) NOT NULL,
  `Blood_Group` varchar(20) NOT NULL,
  `Blood_unit` varchar(10) NOT NULL,
  `Created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood-info`
--

INSERT INTO `blood-info` (`Id`, `Blood_Group`, `Blood_unit`, `Created_date`) VALUES
(1, 'A+', '30', '2017-07-19 02:05:13'),
(2, 'B+', '23', '2017-07-19 02:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `blood_info`
--

CREATE TABLE `blood_info` (
  `Id` int(5) NOT NULL,
  `Blood_Group` varchar(20) NOT NULL,
  `Blood_unit` varchar(10) NOT NULL,
  `Created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_info`
--

INSERT INTO `blood_info` (`Id`, `Blood_Group`, `Blood_unit`, `Created_date`) VALUES
(1, 'A+', '30', '2017-07-19 02:05:13'),
(2, 'B+', '23', '2017-07-19 02:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(5) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `Flag` varchar(30) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `blood_unit` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Username`, `Email`, `Password`, `Phone`, `Address`, `Gender`, `Image`, `Flag`, `blood_group`, `blood_unit`, `created_date`) VALUES
(1, 'sandesh', 'sandeshsandeshthakur1590@gmail.com', 'sandesh', '9817236430', 'murli', 'male', '1234.jpg', '1', '', '', '2017-07-11 02:29:25'),
(2, 'santosh', 'santoshkumar@gmail.com', 'santosh', '9819878413', 'malangwaa', 'male', '12345.jpg', '0', '', '', '2017-07-11 02:31:20'),
(3, '', '', 'd41d8cd98f00b204e980', '', '', '', '147855.', '', '', '', '2017-07-11 03:10:48'),
(4, 'roshan', 'roshan@gmail.com', 'e00cf25ad42683b3df67', '9834567', 'imadol', '', '958343.jpg', '1', '', '', '2017-07-11 03:35:41'),
(6, 'roshan', 'roshan1@gmail.com', 'e00cf25ad42683b3df67', '9860306332', 'imadol', 'female', '599956.jpg', '1', '', '', '2017-07-11 03:46:50'),
(7, 'roshan', 'sandeshsandeshthakur190@gmail.com', 'dee3ae5926b1768ea182', '9860306332', 'imadol', 'female', '335492.jpg', '', '', '', '2017-07-13 01:19:42'),
(10, 'roshan', 'rohan@gmail.com', 'd41d8cd98f00b204e980', 'haka', 'hah', 'male', '584479.jpg', '0', '', '', '2017-07-13 01:41:31'),
(20, 'hsjs', 'roshantt@gmail.com', 'd41d8cd98f00b204e980', 'bshs', 'hshs', 'male', '681706.jpg', '0', '', '', '2017-07-13 01:47:10'),
(21, 'hshs', 'afhas@gmail.com', 'd41d8cd98f00b204e980', 'gshs', 'gshst', 'male', '438080.jpg', '0', '', '', '2017-07-13 01:49:16'),
(22, 'yff', 'txtxtcc', 'd41d8cd98f00b204e980', 'txtx', 'ctx', 'male', '950493.jpg', '0', '', '', '2017-07-13 01:51:43'),
(24, 'roshan', 'sandeshsandeshthakur1390@gmail.com', 'dee3ae5926b1768ea182', '9860306332', 'imadol', 'female', '541610.', '', '', '', '2017-07-13 01:53:36'),
(28, 'roshan', 'sandeshsandeshthakur1090@gmail.com', 'dee3ae5926b1768ea182', '9860306332', 'imadol', 'female', '667612.', '', '', '', '2017-07-13 01:54:59'),
(30, 'bsbs', 'gshs', 'd41d8cd98f00b204e980', 'gshs', 'gsbsb', 'male', '413274.jpg', '0', '', '', '2017-07-13 01:57:20'),
(34, 'roshan', 'sandeshsandeshthakur090@gmail.com', 'dee3ae5926b1768ea182', '9860306332', 'imadol', 'female', '868521.', '', '', '', '2017-07-13 01:58:25'),
(35, 'jsjs', 'gshshs', 'd41d8cd98f00b204e980', 'gshs', 'hshshs', 'male', '234279.jpg', '0', '', '', '2017-07-13 02:05:00'),
(37, 'shshs', 'sshss', 'd41d8cd98f00b204e980', 'sushs', 'shshs', 'male', '146454.jpg', '0', '', '', '2017-07-13 02:06:53'),
(38, 'cvv', 'fghh', '73c18c59a39b18382081', 'ggg', 'ggg', 'male', '522685.jpg', '', '', '', '2017-07-13 02:21:36'),
(49, 'cvv', 'fgh', '73c18c59a39b18382081', 'ggg', 'ggg', 'male', '562777.jpg', '', '', '', '2017-07-13 02:31:19'),
(50, 'ggbb', 'fgg', '343d9040a671c45832ee', 'fff', 'fff', 'male', '34753.jpg', '', '', '', '2017-07-13 02:32:49'),
(78, '', 'sandeshsandeshthakur90@gmail.com', 'dee3ae5926b1768ea182', '', '', '', '473131.', '', '', '', '2017-07-13 02:35:23'),
(80, 'bjkkk', 'hjk', '8bbc2b904d0f41c51ae9', 'bbb', 'hhjt', 'male', '318996.jpg', '', '', '', '2017-07-13 02:36:34'),
(86, 'bjkkkl', 'hjkk', '8bbc2b904d0f41c51ae9', 'bbb', 'hhjt', 'male', '1409.jpg', '', '', '', '2017-07-13 02:37:08'),
(87, 'nsjs', 'gshsj', 'e14d832f844ebf077fcc', 'hshs', 'hshsh', 'male', '233320.jpg', '', '', '', '2017-07-13 02:39:57'),
(89, 'bbsns', 'hsbs', 'ae915b9ab9e900501abc', 'hsbsn', 'hsbsb', 'male', '629479.jpg', '', '', '', '2017-07-13 02:42:03'),
(90, 'nsjs', 'shshs', 'abf9e9902af67f4f0cdc', 'hshs', 'hsbjs', 'male', '974248.jpg', '', '', '', '2017-07-13 02:49:28'),
(91, 'nsjs', 'shsh', 'abf9e9902af67f4f0cdc', 'hshs', 'hsbjs', 'male', '873411.jpg', '', '', '', '2017-07-13 02:50:03'),
(95, 'nsjs', 'shs', 'abf9e9902af67f4f0cdc', 'hshs', 'hsbjs', 'male', '546405.jpg', '', '', '', '2017-07-13 02:51:07'),
(112, 'bbb', 'ggh', 'a3aca2964e72000eea4c', 'tgg', 'gghh', 'male', '832253.jpg', '', '', '', '2017-07-13 02:56:58'),
(117, 'bbb', 'ggg', 'a3aca2964e72000eea4c', 'tgg', 'gghh', 'male', '442390.jpg', '', '', '', '2017-07-13 02:57:45'),
(120, 'nsks', 'hsjs', '7a19a4942dcd9122acf7', 'hhs', 'hsbbs', 'male', '408638.jpg', '', '', '', '2017-07-13 03:00:22'),
(150, 'jsjs', 'nns', '109c29054b7bfcaf38fa', 'nsns', 'hhs', 'male', '21863.jpg', '', '', '', '2017-07-13 03:04:53'),
(166, 'jsjs', 'nn', '109c29054b7bfcaf38fa', 'nsns', 'hhst', 'male', '52155.jpg', '', '', '', '2017-07-13 03:05:46'),
(167, 'bnssn', 'hhss', 'f01a37d157918910f203', 'jsjs', 'hahs', 'male', '791879.jpg', '', '', '', '2017-07-13 03:08:40'),
(174, 'nsns', 'hshajs', '2725eeee1644325b9788', 'hsbsb', 'hshs', 'male', '158497.jpg', '', '', '', '2017-07-13 03:13:22'),
(176, 'gsbs', 'gsha', 'c3cb8a08cd526b96ae0f', 'bbbs', 'vsbs', 'male', '376497.jpg', '', '', '', '2017-07-13 03:16:42'),
(178, 'hhh', 'fff', '73c18c59a39b18382081', 'ggg', 'ff', 'male', '264374.jpg', '', '', '', '2017-07-13 03:21:57'),
(179, 'gbb', 'fg', 'ad39d1d0135d81ef41ff', 'tt', 'fgf', 'male', '518536.jpg', '', '', '', '2017-07-13 03:25:02'),
(182, '', 'sandeshsandeshthakur2190@gmail.com', 'dee3ae5926b1768ea182', '', '', '', '460170.', '', '', '', '2017-07-13 03:26:38'),
(184, 'roshan', 'sandeshsandeshthakur0190@gmail.com', 'dee3ae5926b1768ea182', '9860306332', 'imadol', 'female', '255256.', '', '', '', '2017-07-13 03:27:11'),
(185, 'nsnnz', 'habs', '7eb083f7ba93a71682df', 'bsbsb', 'vsbs', 'male', '299270.jpg', '', '', '', '2017-07-13 03:27:48'),
(186, 'bsbz', 'vsbs', 'c3cb8a08cd526b96ae0f', 'gshs', 'bsbs', 'male', '618155.jpg', '0', '', '', '2017-07-13 03:29:25'),
(187, 'vbb', 'fvv', 'aa0c4b3be2968f698aa9', 'fgg', 'ff', 'male', '650141.jpg', '0', '', '', '2017-07-13 03:30:15'),
(188, 'ccv', 'ccvn', '21ad0bd836b90d08f4cf', 'bb', 'gg', 'male', '900431.jpg', '0', '', '', '2017-07-13 03:31:08'),
(189, 'fvv', 'vjk', 'dc468c70fb574ebd0728', 'ghh', 'bh', 'male', '721907.jpg', '0', '', '', '2017-07-13 03:32:33'),
(190, 'bsbs', 'vabsb', 'c3cb8a08cd526b96ae0f', 'vsbs', 'hsbs', 'male', '607501.jpg', '1', '', '', '2017-07-13 03:39:33'),
(192, 'bsbs', 'vabs', 'c3cb8a08cd526b96ae0f', 'vsbs', 'hsbs', 'male', '256682.jpg', '0', '', '', '2017-07-13 03:40:19'),
(193, 'bsbsb', 'vbsbs', 'c3cb8a08cd526b96ae0f', 'gsbhs', 'ghss', 'male', '595604.jpg', '1', '', '', '2017-07-13 03:56:47'),
(194, 'roshan', 'roshan88@gmail.com', 'e00cf25ad42683b3df67', 'hsjs', 'ysush', 'male', '10035.jpg', '1', '', '', '2017-07-17 01:53:47'),
(195, 'fuj', 'gjkk', 'a2f224e6304d37c95a78', 'hhh', 'ghh', 'male', '253008.jpg', '0', '', '', '2017-07-17 02:05:06'),
(196, 'bsnsjs', 'hsjjsjsjs', '5eb4b0b404fa4e4d9ea3', 'hjsjsjs', 'gshhhs', 'male', '540840.jpg', '1', '', '', '2017-07-20 02:50:30'),
(198, 'bsnsjs', 'hsjjsjsjslll', '5eb4b0b404fa4e4d9ea3', 'hjsjsjs', 'gshhhs', 'male', '155846.jpg', '1', '', '', '2017-07-20 02:52:30'),
(199, 'hdkd', 'roshan123@gmail.com', 'e00cf25ad42683b3df67', '879917272', 'bsjs', 'male', '125638.jpg', '1', '', '', '2017-07-21 03:56:40'),
(200, 'roshan', 'roshan345@gmail.com', 'e00cf25ad42683b3df67', '9860306332', 'imadol', 'female', '942059.jpg', '1', 'A+', '00', '2017-07-24 02:56:40'),
(201, 'roshan', 'roshan355@gmail.com', 'e00cf25ad42683b3df67', '9860306332', 'imadol', 'female', '630198.jpg', '1', 'A+', '00', '2017-07-24 02:56:50'),
(202, 'rohan', 'rohanjdjd@gmail.com', 'e00cf25ad42683b3df67', '9860306332', 'ghaga', 'male', '875852.jpg', '1', 'B-', '00', '2017-07-24 02:57:01'),
(212, 'rojgk', 'hjkkllhv', 'dc15d2eb9f58f56af671', '666556', 'cvgbj', 'male', '893797.jpg', '1', 'A+', '00', '2017-07-24 02:58:54'),
(213, 'rojgk', 'hjkkllh', 'dc15d2eb9f58f56af671', '666556', 'cvgbj', 'male', '901552.jpg', '1', 'A+', '00', '2017-07-24 03:00:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood-info`
--
ALTER TABLE `blood-info`
  ADD UNIQUE KEY `unique` (`Id`),
  ADD UNIQUE KEY `Blood_Group` (`Blood_Group`);

--
-- Indexes for table `blood_info`
--
ALTER TABLE `blood_info`
  ADD UNIQUE KEY `unique` (`Id`),
  ADD UNIQUE KEY `Blood_Group` (`Blood_Group`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `unique` (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood-info`
--
ALTER TABLE `blood-info`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blood_info`
--
ALTER TABLE `blood_info`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
