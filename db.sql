-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2015 at 11:56 AM
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
('32324241312', 'สินค้า 1', '200 ml'),
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
('A1', 'A1'),
('A2', 'A2'),
('A3', 'A3'),
('A4', 'A4'),
('A5', 'A5'),
('A6', 'A6'),
('A7', 'A7'),
('B1', 'B1'),
('B2', 'B2'),
('B3', 'B3'),
('B4', 'B4'),
('B5', 'B5'),
('B6', 'B6'),
('B7', 'B7'),
('C1', 'C1'),
('C2', 'C2'),
('C3', 'C3'),
('D1', 'D1'),
('D2', 'D2'),
('D3', 'D3'),
('D4', 'D4'),
('D5', 'D5'),
('E1', 'E1'),
('E2', 'E2'),
('E3', 'E3'),
('E4', 'E4'),
('FREEZE', 'FREEZE'),
('MEAT', 'MEAT'),
('OTHER1', 'OTHER1'),
('OTHER2', 'OTHER2'),
('VEGETABLE', 'Vegetable');

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
('A1', '2000000355429', '2015-01-22'),
('D4', '8850188242103', '2015-01-03'),
('D5', '8850188250207', '2015-01-04'),
('D3', '8851013781491', '2015-01-15');

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
