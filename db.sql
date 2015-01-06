-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2015 at 08:40 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SmartRefrig`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_barcode` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `netcontent` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_barcode`, `name`, `netcontent`) VALUES
('1234567890123', 'Test Product', '123 ml'),
('1234567890124', 'Test Product 2', '123 ml'),
('2000000355429', 'Big C ไข่ไก่เบอร์ 2', '10 Pcs'),
('8850188242103', 'Foremost UHT รสจืด', '180 ml'),
('8850188250207', 'Foremost UHT รสหวาน', '225 ml'),
('8850188800198', 'Foremost Falcon', '1000 ml'),
('8851013781491', 'Tipco น้ำมังคุด ผสมน้ำผลไม้รวม 100%', '1000 ml'),
('8851717040023', 'Dutch Mill 4 in 1 รสส้ม', '180 ml'),
('8858891301124', 'อิชิตัน กรีนที รสน้ำผึ้งผสมมะนาว', '840 ml.');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE IF NOT EXISTS `slots` (
  `slot_barcode` varchar(60) NOT NULL,
  `slot_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`slot_barcode`, `slot_name`) VALUES
('EGGS01', 'Eggs A1'),
('EGGS02', 'Eggs A2'),
('EGGS03', 'Eggs A3'),
('EGGS04', 'Eggs A4'),
('EGGS05', 'Eggs A5'),
('EGGS06', 'Eggs B1'),
('EGGS07', 'Eggs B2'),
('EGGS08', 'Eggs B3'),
('EGGS09', 'Eggs B4'),
('EGGS10', 'Eggs B5'),
('FREEZER', 'Freeze'),
('MEAT', 'Meat'),
('MILK01', 'Milk 200-1'),
('MILK02', 'Milk 200-2'),
('MILK03', 'Milk 200-3'),
('MILK04', 'Milk 400-1'),
('MILK05', 'Milk 400-2'),
('MILK06', 'Milk 400-3'),
('MILK07', 'Milk 830-1'),
('MILK08', 'Milk 830-2'),
('MILK09', 'Milk 830-3'),
('OTHER1', 'Other 1'),
('OTHER2', 'Other 2'),
('OTHER3', 'Other 3'),
('SOFTDRK01', 'Soft Drink 1'),
('SOFTDRK02', 'Soft Drink 2'),
('SOFTDRK03', 'Soft Drink 3'),
('VEGETABLE', 'Vegetable'),
('WATER01', 'Water 1'),
('WATER02', 'Water 2'),
('WATER03', 'Water 3');

-- --------------------------------------------------------

--
-- Table structure for table `slot_detail`
--

CREATE TABLE IF NOT EXISTS `slot_detail` (
  `slot_barcode` varchar(60) NOT NULL,
  `product_barcode` varchar(60) NOT NULL,
  `expire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slot_detail`
--

INSERT INTO `slot_detail` (`slot_barcode`, `product_barcode`, `expire_date`) VALUES
('EGGS01', '2000000355429', '2014-12-28'),
('MILK01', '8850188242103', '2015-01-03'),
('MILK02', '8850188250207', '2015-01-04'),
('MILK03', '8851013781491', '2015-01-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_barcode`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
 ADD PRIMARY KEY (`slot_barcode`);

--
-- Indexes for table `slot_detail`
--
ALTER TABLE `slot_detail`
 ADD PRIMARY KEY (`product_barcode`,`slot_barcode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
