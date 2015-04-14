-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2015 at 05:28 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartrefrig`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_barcode` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `netcontent` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` VALUES('0000020929718', 'ไส้กรอกไฟร์เวริสต์ ตรา TGM', '300 g');
INSERT INTO `products` VALUES('0000033980027', 'ไข่ไก่ขนาดใหญ่ ตราดร.ช้อยฟู้ด', '10 ฟอง');
INSERT INTO `products` VALUES('0000040867069', 'ไข่ไก่ขนาดใหญ่ ตราดร.ช้อยฟู้ด', '10 ฟอง');
INSERT INTO `products` VALUES('0000040883069', 'ไข่ไก่ขนาดใหญ่ ตราดร.ช้อยฟู้ด', '10 ฟอง');
INSERT INTO `products` VALUES('016300165059', 'น้ำแอปเปิ้ล 100% ตราฟลอริด้าเนเชอรัล', '300 ml');
INSERT INTO `products` VALUES('016300165066', 'น้ำเลมอน 100% ตราฟลอริด้าเนเชอรัล', '300 ml');
INSERT INTO `products` VALUES('5000147030651', 'น้ำรสมะนาวเข้มข้น ข้าวบาร์เล่ย์ ตราโรบินสัน', '1000 ml');
INSERT INTO `products` VALUES('5410316996518', 'Smirnoff Ice กลิ่นแอปเปิ้ล เครื่องดื่มแอลกอฮอล', '275 ml');
INSERT INTO `products` VALUES('8850124003850', 'น้ำดื่ม ตราเนสท์เล่เพียวไลฟ์', '600 ml');
INSERT INTO `products` VALUES('8850188242103', 'Foremost UHT รสจืด', '180 ml');
INSERT INTO `products` VALUES('8850188250207', 'Foremost UHT รสหวาน', '225 ml');
INSERT INTO `products` VALUES('8850188800198', 'Foremost Falcon', '1000 ml');
INSERT INTO `products` VALUES('8850201871044', 'ไส้กรอกอิตาเลี่ยน ตรา S&P', '160 g');
INSERT INTO `products` VALUES('8850201871136', 'ไส้กรอกค็อกเทลปาร์ตี้ ตรา S&P', '130 g');
INSERT INTO `products` VALUES('8850201871181', 'ไส้กรอกพันเบคอน ตรา S&P', '180 g');
INSERT INTO `products` VALUES('8850201871211', 'ไส้กรอกกระเทียม ตรา S&P', '160 g');
INSERT INTO `products` VALUES('8850201871273', 'ไส้กรอกหมูกะเพรา ตรา S&P', '160 g');
INSERT INTO `products` VALUES('8850201871327', 'ไส้กรอกหมูรมควัน ตรา S&P', '160 g');
INSERT INTO `products` VALUES('8850201872003', 'แฮม ตรา S&P', '160 g');
INSERT INTO `products` VALUES('8850250007548', 'น้ำสลัดซีอิ๊วญี่ปุ่นผสมงาคั่ว', '200 ml');
INSERT INTO `products` VALUES('8850274010012', 'น้ำนมโค รสจืด พาสเจอร์ไรส์ ตราฟาร์มโชคชัย', '400 ml');
INSERT INTO `products` VALUES('8850274010029', 'นมพาสเจอร์ไรส์ ตราฟาร์มโชคชัย', '800  ml');
INSERT INTO `products` VALUES('8850274012023', 'นมปรุงแต่งพาสเจอร์ไรส์ กลิ่นสตรอเบอร์รี่ ตราฟาร์มโชคชัย', '800  ml');
INSERT INTO `products` VALUES('8850274013013', 'นมปรุงแต่งพาสเจอร์ไรส์ รสโกโก้ ตราฟาร์มโชคชัย', '400 ml');
INSERT INTO `products` VALUES('8850274018025', 'เครื่องดื่มมอลต์สกัด รสช็อกโกแลต พาสเจอร์ไรส์ ตราฟาร์มโชคชัย', '800  ml');
INSERT INTO `products` VALUES('8850329102112', 'นมพาสเจอร์ไรส์ ตราเมจิ', '2000 ml');
INSERT INTO `products` VALUES('8850329120116', 'น้ำนมโคพาสเจอร์ไรส์ ตราเมจิ', '200 ml');
INSERT INTO `products` VALUES('8850329120314', 'นมปรุงแต่งพร่องมันเนยรสช็อกโกแลตพาสเจอร์ไรส์ ตราเมจิ', '200 ml');
INSERT INTO `products` VALUES('8850329120512', 'ผลิตภัณฑ์นมรสกาแฟพาสเจอร์ไรส์ ตราเมจิ', '200 ml');
INSERT INTO `products` VALUES('8850329120611', 'นมปรุงแต่งพร่องมันเนยกลิ่นสตอรเบอร์รี่พาสเจอร์ไรส์ ตราเมจิ', '200 ml');
INSERT INTO `products` VALUES('8850329120819', 'น้ำนมโคขาดมันเนยพาสเจอร์ไรส์ ตราเมจิ', '200 ml');
INSERT INTO `products` VALUES('8850329183517', 'ผลิตภัณฑ์นมรสกาแฟพาสเจอร์ไรส์ ตราเมจิ', '830 ml');
INSERT INTO `products` VALUES('8850346101600', 'โอวัลติน', '200 ml');
INSERT INTO `products` VALUES('8850346103109', 'น้ำนมโค รสจืด พาสเจอร์ไรส์ ตราโฟร์โมสต์', '200 ml');
INSERT INTO `products` VALUES('8850346103147', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสจืด อร่อยเข้มข้น ตราโฟร์โมสต์', '200 ml');
INSERT INTO `products` VALUES('8850346103246', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสช็อกโกแลต อร่อยเข้มข้น ตราโฟร์โมสต', '200 ml');
INSERT INTO `products` VALUES('8850346103307', 'ผลิตภัณฑ์นม รสช็อกโกแลต พาสเจอร์ไรส์ ตราโฟร์โมสต์', '200 ml');
INSERT INTO `products` VALUES('8850346103345', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสกาแฟมอคค่า อร่อยเข้มข้น ตราโฟร์โมส', '200 ml');
INSERT INTO `products` VALUES('8850346103406', 'ผลิตภัณฑ์นม กลิ่นสตรอเบอร์รี่ พาสเจอร์ไรส์ ตราโฟร์โมสต์', '200 ml');
INSERT INTO `products` VALUES('8850346104106', 'ผลิตภัณฑ์นม รสจืด พาสเจอร์ไรส์ ตราโฟร์โมสต์', '800  ml');
INSERT INTO `products` VALUES('8850346104144', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสจืด อร่อยเข้มข้น ตราโฟร์โมสต์', '800  ml');
INSERT INTO `products` VALUES('8850346104243', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสช็อกโกแลต อร่อยเข้มข้น ตราโฟร์โมสต', '800  ml');
INSERT INTO `products` VALUES('8850346104304', 'ผลิตภัณฑ์นม รสช็อกโกแลต พาสเจอร์ไรส์ ตราโฟร์โมสต์', '800 ml');
INSERT INTO `products` VALUES('8850346104342', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสกาแฟมอคค่า อร่อยเข้มข้น ตราโฟร์โมส', '800  ml');
INSERT INTO `products` VALUES('8850346105103', 'น้ำนมโค รสจืด พาสเจอร์ไรส์ ตราโฟร์โมสต์', '946 ml');
INSERT INTO `products` VALUES('8850346105608', 'โอวัลติน', '946 ml');
INSERT INTO `products` VALUES('8850346114105', 'ผลิตภัณฑ์นม รสจืด พาสเจอร์ไรส์ ตราโฟร์โมสต์', '400 ml');
INSERT INTO `products` VALUES('8850346114143', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสจืด อร่อยเข้มข้น ตราโฟร์โมสต์', '400 ml');
INSERT INTO `products` VALUES('8850346114242', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสช็อกโกแลต อร่อยเข้มข้น ตราโฟร์โมสต', '400 ml');
INSERT INTO `products` VALUES('8850346114303', 'ผลิตภัณฑ์นม รสช็อกโกแลต พาสเจอร์ไรส์ ตราโฟร์โมสต์', '400 ml');
INSERT INTO `products` VALUES('8850346114341', 'ผลิตภัณฑ์นมพาสเจอร์ไรส์ รสกาแฟมอคค่า อร่อยเข้มข้น ตราโฟร์โมส', '400 ml');
INSERT INTO `products` VALUES('8850346114600', 'โอวัลติน', '400 ml');
INSERT INTO `products` VALUES('8850393800013', 'นมเปรี้ยวสูตรพร่องมันเนย ไขมัน 0% ตราบิทาเก้น', '150 ml');
INSERT INTO `products` VALUES('8850393800020', 'นมเปรี้ยวชนิดโยเกิร์ต รสส้ม ตราบิทาเก้น', '150 ml');
INSERT INTO `products` VALUES('8850393800440', 'นมเปรี้ยว สูตรน้ำตาล 2% ไขมัน 0% ตราบิทาเก้นไลท์', '300 ml');
INSERT INTO `products` VALUES('8850393919968', 'นมเปรี้ยวสูตรพร่องมันเนย ไขมัน 0% ตราบิทาเก้น', '700 ml');
INSERT INTO `products` VALUES('8850393919975', 'นมเปรี้ยวสูตรพร่องมันเนย ไขมัน 0% ตราบิทาเก้น', '400 ml');
INSERT INTO `products` VALUES('8850393919982', 'นมเปรี้ยวสูตรพร่องมันเนย ไขมัน 0% ตราบิทาเก้น', '85 ml');
INSERT INTO `products` VALUES('8850393991995', 'นมเปรี้ยวชนิดโยเกิร์ต รสส้ม ตราบิทาเก้น', '700 ml');
INSERT INTO `products` VALUES('8850554101171', 'แฮมหมู ตรา CP', '200 g');
INSERT INTO `products` VALUES('8850554102031', 'เบคอน ตรา CP', '200 g');
INSERT INTO `products` VALUES('8850554151138', 'โบโลน่า ตรา CP', '150 g');
INSERT INTO `products` VALUES('8850554152180', 'โบโลน่าพริก ตรา CP', '150 g');
INSERT INTO `products` VALUES('8850554811650', 'แฟรงเฟอร์เตอร์ไก่ ตรา CP', '155 g');
INSERT INTO `products` VALUES('8850554829082', 'ไส้กรอกมินิค็อกเทล ตรา CP', '150 g');
INSERT INTO `products` VALUES('8850554829105', 'ไส้กรอกค็อกเทลรมควัน ตรา CP', '150 g');
INSERT INTO `products` VALUES('8850649316350', 'นมปรุงแต่งพาสเจอร์ไรส์รสจืด ตรามิลค์แอนด์มอร์', '250 ml');
INSERT INTO `products` VALUES('8850649316367', 'นมปรุงแต่งพาสเจอร์ไรส์ รสหวาน ตรามิลค์แอนด์มอร์', '250 ml');
INSERT INTO `products` VALUES('8850649316398', 'โยเกิร์ตพร้อมดื่ม ตรามิลค์แอนด์มอร์', '100 ml');
INSERT INTO `products` VALUES('8850649316404', 'ผลิตภัณฑ์นมพร้อมเนื้อพุดดิ้งพาสเจอร์ไรส์ ตรามิลค์แอนด์มอร์', '200 ml');
INSERT INTO `products` VALUES('8850649316411', 'นมปรุงแต่งพาสเจอร์ไรส์ รสงาดำ ตรามิลค์แอนด์มอร์', '250 ml');
INSERT INTO `products` VALUES('8850649316428', 'นมปรุงแต่งพาสเจอร์ไรส์ รสเมลอน ตรามิลค์แอนด์มอร์', '250 ml');
INSERT INTO `products` VALUES('8850649316459', 'นมปรุงแต่งพาสเจอร์ไรส์ รสชาไทย ตรามิลค์แอนด์มอร์', '250 ml');
INSERT INTO `products` VALUES('8850653793161', 'ไส้กรอกจัมโบ้ชีส ตรา CP', '200 g');
INSERT INTO `products` VALUES('8850653793260', 'แฟรงก์เฟิร์ตเตอร์ ตราบุชเชอร์', '120 g');
INSERT INTO `products` VALUES('8850653793277', 'พอร์กแฮม ตราบุชเชอร์', '105 g');
INSERT INTO `products` VALUES('8850653793284', 'จูเนียร์ค็อกเทล ตราบุชเชอร์', '120 g');
INSERT INTO `products` VALUES('8850653796858', 'อิตาเลี่ยนแฮม ตราตราบุชเชอร์', '95 g');
INSERT INTO `products` VALUES('8850653796865', 'บราทเวิร์สท ตราบุชเชอร์', '95 g');
INSERT INTO `products` VALUES('8850653796988', 'พิซซ่าชีสซอสเซจ ตราบุชเชอร์', '95 g');
INSERT INTO `products` VALUES('8850721012217', 'โอฮาโยน้ำนมถั่วเหลืองรสจืด', '1000 ml');
INSERT INTO `products` VALUES('8850721031119', 'โอฮาโยน้ำนมถั่วเหลืองรสจืด', '300ml');
INSERT INTO `products` VALUES('8850721031416', 'โอฮาโยน้ำนมถั่วเหลือง', '300 ml');
INSERT INTO `products` VALUES('8850721040517', 'โอฮาโยน้ำนมถั่วเหลือง', '1000 ml');
INSERT INTO `products` VALUES('8850799000017', 'คอกเทลหมู ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000024', 'ไส้กรอกหมูเวียนนา ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000031', 'ไส้กรอกหมูฮอทดอก ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000048', 'ไส้กรอกหมูบาลอกน่าหมู ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000055', 'ไส้กรอกหมูบาลอกน่าพริก ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000062', 'แซนวิชแฮม ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000079', 'เบค่อน ตราบางกอกแฮม', '250 g');
INSERT INTO `products` VALUES('8850799000147', 'เบค่อน ตราบางกอกแฮม', '400 g');
INSERT INTO `products` VALUES('8850826005053', 'บาโลน่าหมูพริก ตรา TGM', '150 g');
INSERT INTO `products` VALUES('8850826005060', 'แซนวิชแฮมหมู ตรา TGM', '135 g');
INSERT INTO `products` VALUES('8850826500220', 'โทสต์แฮม ตรา TGM', '90 g');
INSERT INTO `products` VALUES('8850826500305', 'ปารีสแฮม ตรา TGM', '90 g');
INSERT INTO `products` VALUES('8850826500312', 'เปปเปอร์แฮม ตรา TGM', '90 g');
INSERT INTO `products` VALUES('8850826500404', 'ไส้กรอกแฟร้งเฟิตเตอร์ ตรา TGM', '180 g');
INSERT INTO `products` VALUES('8850826500480', 'สเต็กแฮม ตรา TGM', '90 g');
INSERT INTO `products` VALUES('8850826500527', 'สโมคเบค่อน ตรา TGM', '200 g');
INSERT INTO `products` VALUES('8850826500572', 'สโมคแฮม ตรา TGM', '100 g');
INSERT INTO `products` VALUES('8850826500787', 'เบค่อนสตริ๊ป ตรา TGM', '120 g');
INSERT INTO `products` VALUES('8850826504761', 'ไส้กรอกอารบิคเวียนนา(มินิ) ตรา TGM', '160 g');
INSERT INTO `products` VALUES('88508362000017', 'ไข่เค็มไชยา ตราพันศักดิ์', '5 ฟอง');
INSERT INTO `products` VALUES('8850999113005', 'เบียร์สิงห์ เครื่องดื่มแอลกอฮอล', '330 ml');
INSERT INTO `products` VALUES('8851013740290', 'น้ำผักผสมน้ำผลไม้รวม พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013760298', 'น้ำส้มเขียวหวานพร้อมเนื้อส้มและเกล็ดส้ม พาสเจอร์ไรส์ 100% ตร', '1000 ml');
INSERT INTO `products` VALUES('8851013763299', 'น้ำสตรอเบอร์รี่ พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013766290', 'น้ำแอปเปิ้ลฟูจิผสมน้ำองุ่น พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013767297', 'น้ำทับทิมผสมน้ำผลไม้รวม พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013769291', 'น้ำองุ่นแดง พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013771294', 'น้ำลิ้นจี่ พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013772291', 'น้ำมะม่วงผสมน้ำผลไม้รวม พาสเจอร์ไรส์ 100% ตราทิปโก้สควิช', '1000 ml');
INSERT INTO `products` VALUES('8851013773298', 'น้ำเชอร์รี่ เบอร์รี่ ผสมน้ำองุ่น พาสเจอร์ไรส์ 100% ตราทิปโก้', '1000 ml');
INSERT INTO `products` VALUES('8851013778293', 'น้ำส้มสายน้ำผึ้งพร้อมเนื้อส้มและเกล็ดส้ม พาสเจอร์ไรส์ 100% ต', '1000 ml');
INSERT INTO `products` VALUES('8851013788292', 'น้ำว่านหางจระเข้ผสมน้ำองุ่นขาวพร้อมเนื้อว่าน พาสเจอร์ไรส์ 10', '1000 ml');
INSERT INTO `products` VALUES('8851013793296', 'น้ำส้มวาเลนเซียพร้อมเนื้อส้ม พาสเจอร์ไรส์ 100% ตราทิปโก้สควิ', '1000 ml');
INSERT INTO `products` VALUES('885106800028', 'ไข่ไก่เสริม DHA ตราดร.เฮ็นน์', '10 ฟอง');
INSERT INTO `products` VALUES('8851068000394', 'ไข่ไก่โอเมก้า 3 ตราดร.เฮ็นน์', '6 ฟอง');
INSERT INTO `products` VALUES('8851068008079', 'ไข่ไก่สูตรธรรมชาติ ตราดร.เฮ็นน์', '10 ฟอง');
INSERT INTO `products` VALUES('8851068050528', 'ไข่ไก่ DHA และไอโอดีน ตราดร.เฮ็นน์', '7 ฟอง');
INSERT INTO `products` VALUES('8851068100018', 'ไข่ไก่ฟรีเรนจ์ ตราดร.เฮ็นน์', '6 ฟอง');
INSERT INTO `products` VALUES('8851123238007', 'คาลพิสแลคโตะรสออริจินัล', '325 ml');
INSERT INTO `products` VALUES('8851123238014', 'คาลพิสแลคโตะกลิ่นเลมอน', '325 ml');
INSERT INTO `products` VALUES('8851262065014', 'โยเกิร์ตรสธรรมชาติ ตราโยลินดา', '150 g');
INSERT INTO `products` VALUES('8851344000100', 'ไข่ไก่เบอร์ 2 ตราโกลเด้นเลย์', '10 ฟอง');
INSERT INTO `products` VALUES('8851344000247', 'ไข่เยี่ยวม้า ตราแม่สะอาด', '4 ฟอง');
INSERT INTO `products` VALUES('8851344002234', 'ไข่เป็ดขนาดใหญ่ ตราแม่สะอาด', '10 ฟอง');
INSERT INTO `products` VALUES('8851344002258', 'ไข่เค็ม ตราแม่สะอาด', '4 ฟอง');
INSERT INTO `products` VALUES('8851717020087', 'โยเกิร์ตรสออริจินัล ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717020117', 'โยเกิร์ตผสมสตรอเบอร์รี่ ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717020124', 'โยเกิร์ตผสมผลไม้รวม ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717021008', 'โยเกิร์ต lower sugar ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('88517170220148', 'โยเกิร์ตผสมวุ้นมะพร้าว ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717030116', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสส้ม ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717030123', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสส้ม ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717030130', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสสตรอเบอร์รี่ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717030147', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสสตรอเบอร์รี่ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717030154', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสผลไม้ผสม ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717030161', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสผลไม้ผสม ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717030185', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสบลูเบอร์รี่ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717030192', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสบลูเบอร์รี่ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717030505', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสส้ม ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717030512', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสผลไม้ผสม ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717060014', 'น้ำนมโค พาสเจอร์ไรส์ ตราดัชมิลล์', '200 ml');
INSERT INTO `products` VALUES('8851717060090', 'น้ำนมโคพาสเจอร์ไรส์ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717060137', 'น้ำนมโคพร่องมันเนย พาสเจอร์ไรส์ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717060205', 'ฟหกดเ้่าสวกดเ้่าสว  ตราดัชมิลล์', '200 ml');
INSERT INTO `products` VALUES('8851717900884', 'โยเกิร์ตไม่มีไขมันผสมวุ้นมะพร้าว ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717900907', 'โยเกิร์ตไม่มีไขมันผสมสตรอเบอร์รี่ ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717901188', 'นมขาดมันเนย พาสเจอร์ไรส์ ตราดัชมิลล์', '200 ml');
INSERT INTO `products` VALUES('8851717901195', 'นมขาดมันเนย พาสเจอร์ไรส์ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717901577', 'โยเกิร์ต ตราดัชชี่ไบโอ', '110 g');
INSERT INTO `products` VALUES('8851717901799', 'นมเปรี้ยวปราศจากไขมัน สูตรน้ำตาลน้อย ดีไลท์ ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717901874', 'น้ำนมโคพาสเจอร์ไรส์ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717901881', 'นมขาดมันเนย พาสเจอร์ไรส์ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717902055', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสสตรอเบอร์รี่ ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717902444', 'โยเกิร์ตผสมเชอร์รี่ ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717902468', 'โยเกิร์ตผสมเรดเคอร์แรนด์และมัลเบอร์รี่ ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717902598', 'นมเปรี้ยวปราศจากไขมัน ดีไลท์ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717902604', 'นมเปรี้ยวปราศจากไขมัน ดีไลท์ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717902611', 'นมเปรี้ยวปราศจากไขมัน สูตรน้ำตาลน้อย ดีไลท์ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717902710', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสเบอร์รี่รวม 4 ชนิด ตราดัชมิล', '100 ml');
INSERT INTO `products` VALUES('8851717902741', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสเบอร์รี่รวม 4 ชนิด ตราดัชมิล', '400 ml');
INSERT INTO `products` VALUES('8851717902819', 'โยเกิร์ตสตรอเบอรี่ สำหรับเด็ก ตราดัชชี่', '105 g');
INSERT INTO `products` VALUES('8851717902833', 'โยเกิร์ตผสมมะม่วงและวุ้นมะพร้าว ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851717903168', 'สมูทตี้ รสเสาวรสและมะม่วง ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717903205', 'สมูทตี้ รสส้มแมนดารินและแพร์ ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717903236', 'สมูทตี้ รสพีชและแพร์ ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717903267', 'โยเกิร์ต golden fruit ตราดัชชี่', '140 g');
INSERT INTO `products` VALUES('8851717903489', 'นมปรุงแต่งรสโกโก้ พาสเจอร์ไรส์ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717903496', 'นมปรุงแต่งรสกาแฟ พาสเจอร์ไรส์ ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717903748', 'โยเกิร์ตพร้อมดื่มพาสเจอร์ไรส์ รสเมลอน ตราดัชมิลล์', '160 ml');
INSERT INTO `products` VALUES('8851717903779', 'โยเกิร์ตพร้อมดื่ม รสเมลอน ตราดัชมิลล์', '830 ml');
INSERT INTO `products` VALUES('8851717904073', 'นมเปรี้ยวปราศจากไขมัน สูตรน้ำตาล 0.1% ดีไลท์ ตราดัชมิลล์', '400 ml');
INSERT INTO `products` VALUES('8851717904271', 'โยเกิร์ตผสมแอปเปิ้ล ตราดัชชี่ไบโอ', '105 g');
INSERT INTO `products` VALUES('8851717904431', 'โยเกิร์ตผสมเงาะ สับปะรดและวุ้นมะพร้าว ตราดัชชี่', '135 g');
INSERT INTO `products` VALUES('8851952101305', 'เอสโคล่า', '325 ml');
INSERT INTO `products` VALUES('8851952120306', 'เอสเครื่องดื่มกลิ่นส้ม', '325 ml');
INSERT INTO `products` VALUES('8851952140311', '100 พลัสกลิ่นซีตัส', '250 ml');
INSERT INTO `products` VALUES('8851952141318', '100 พลัสกลิ่นเลมอนไลม์', '250 ml');
INSERT INTO `products` VALUES('8851952552121', 'เกเตอเรด เครื่องดื่มเกลือแร่กลิ่นมะนาว', '500 ml');
INSERT INTO `products` VALUES('8851959132012', 'โค้ก', '325 ml');
INSERT INTO `products` VALUES('8851959132050', 'โค้กไลท์', '325 ml');
INSERT INTO `products` VALUES('8851959132074', 'โค้กซีโร่', '325 ml');
INSERT INTO `products` VALUES('8851959132166', 'แฟนต้าน้ำส้ม', '325 ml');
INSERT INTO `products` VALUES('8851959132173', 'แฟนต้าน้ำสแดง', '325 ml');
INSERT INTO `products` VALUES('8851959132180', 'แฟนต้าน้ำเขียว', '325 ml');
INSERT INTO `products` VALUES('8851959132364', 'สไปรท์', '325 ml');
INSERT INTO `products` VALUES('8851959132548', 'A&W เครื่องดื่มกลิ่นรูทเบียร์', '325 ml');
INSERT INTO `products` VALUES('8851959143711', 'น้ำดื่ม ตราน้ำทิพย์', '1500 ml');
INSERT INTO `products` VALUES('8852512005019', 'โยเกิร์ตเพิ่มใยอาหาร ตราริชชี่', '110 g');
INSERT INTO `products` VALUES('8852512005026', 'โยเกิร์ตเพิ่มใยอาหาร ผสมสตรอเบอร์รี่ ตราริชชี่', '110 g');
INSERT INTO `products` VALUES('8852512005033', 'โยเกิร์ตเพิ่มใยอาหาร ผสมพรุน ตราริชชี่', '110 g');
INSERT INTO `products` VALUES('8853333011340', 'น้ำส้มฟลอริด้าพร้อมเนื้อส้มและเกล็ดส้ม พาสเจอร์ไรส์ 100% ตรา', '1000 ml');
INSERT INTO `products` VALUES('8853333012057', 'น้ำแบล็คเคอแรนด์ฟสมน้ำสตรอเบอร์รี่และน้ำองุ่นแดง พาสเจอร์ไรส', '1000 ml');
INSERT INTO `products` VALUES('8853333013771', 'น้ำมังคุดผสมน้ำทับทิมและน้ำองุ่นแดง พาสเจอร์ไรส์ 100% ตรามาล', '1000 ml');
INSERT INTO `products` VALUES('8853333014440', 'น้ำส้มแมนดารินพร้อมเนื้อส้มและเกล็ดส้ม พาสเจอร์ไรส์ 100% ตรา', '1000 ml');
INSERT INTO `products` VALUES('8853333016109', 'น้ำส้มแมนดารินพร้อมเนื้อส้มและเกล็ดส้ม พาสเจอร์ไรส์ 100% ตรา', '1000 ml');
INSERT INTO `products` VALUES('8853333016123', 'น้ำพรุ่นผสมน้ำแอปเปิ้ลและน้ำองุ่นขาว พาสเจอร์ไรส์ 100% ตรามา', '1000 ml');
INSERT INTO `products` VALUES('8853474009695', 'ไข่ไก่ขนาดใหญ่ ตราท็อปส์', '12 ฟอง');
INSERT INTO `products` VALUES('8853474009701', 'ไข่ไก่ขนาดใหญ่พิเศษ ตราท็อปส์', '12 ฟอง');
INSERT INTO `products` VALUES('8853474009718', 'ไข่ไก่ขนาดใหญ่พิเศษ ตราท็อปส์', '6 ฟอง');
INSERT INTO `products` VALUES('8853474010189', 'ไข่ไก่ขนาดใหญ่พิเศษ ตราท็อปส์', '30 ฟอง');
INSERT INTO `products` VALUES('8853474011841', 'แฮมพริกไทย ตรามายช้อยส์', '100 g');
INSERT INTO `products` VALUES('8853474011865', 'เบคอน ตรามายช้อยส์', '120 g');
INSERT INTO `products` VALUES('8853474011872', 'เนื้อหมูรมควัน ตรามายช้อยส์', '180 g');
INSERT INTO `products` VALUES('8853474014347', 'ไข่ไก่จัมโบ้ ตราคุ้กกิ้งฟอร์ฟัน', '10 ฟอง');
INSERT INTO `products` VALUES('8853474014422', 'ไข่เค็มขนาดใหญ่ ตราท็อปส์', '4 ฟอง');
INSERT INTO `products` VALUES('8853474015221', 'ไข่ไก่จัมโบ้ ตราคุ้กกิ้งฟอร์ฟัน', '6 ฟอง');
INSERT INTO `products` VALUES('8853474015245', 'ไข่เป็ดขนาดใหญ่พิเศษ ตราท็อปส์', '6 ฟอง');
INSERT INTO `products` VALUES('8853474015269', 'ไข่เยี่ยวม้าขนาดใหญ่ ตราท็อปส์', '4 ฟอง');
INSERT INTO `products` VALUES('8853474015696', 'เยอรมันโรล ตรามายช้อยส์', '120 g');
INSERT INTO `products` VALUES('8853474015702', 'แบล็คฟอเรสแฮม ตรามายช้อยส์', '80 g');
INSERT INTO `products` VALUES('8853474015726', 'มีทโลฟพริกไทย ตรามายช้อยส์', '150 g');
INSERT INTO `products` VALUES('8853474015733', 'โรสแมรี่แฮม ตรามายช้อยส์', '120 g');
INSERT INTO `products` VALUES('8853474015757', 'คลับบาโลน่าหมูพริก ตรามายช้อยส์', '100 g');
INSERT INTO `products` VALUES('8853474016525', 'ไข่ไก่สดขนาดใหญ่ ตราคุ้กกิ้งฟอร์ฟัน', '10 ฟอง');
INSERT INTO `products` VALUES('8853474021963', 'แคนาเดียนเบค่อน ตรามายช้อยส์', '100 g');
INSERT INTO `products` VALUES('8853474021970', 'เฮ้าท์ซาลามี่ ตรามายช้อยส์', '70 g');
INSERT INTO `products` VALUES('8853474021994', 'ไส้กรอกพริก ตรามายช้อยส์', '200 g');
INSERT INTO `products` VALUES('8853474027187', 'ไข่ไก่ออร์แกนิค ตรามายช้อยส์', '10 ฟอง');
INSERT INTO `products` VALUES('8853474031986', 'ไข่ไก่สดขนาดจัมโบ้ ตราท็อปส์', '15 ฟอง');
INSERT INTO `products` VALUES('8853474031993', 'ไข่ไก่สดขนาดกลาง ตราถูกใจ', '30 ฟอง');
INSERT INTO `products` VALUES('8853474032006', 'ไข่ไก่โอเมก้า ตราคุ้กกิ้งฟอร์ฟัน', '10 ฟอง');
INSERT INTO `products` VALUES('8853474032556', 'ไข่ไก่สดขนาดกลาง ตราถูกใจ', '10 ฟอง');
INSERT INTO `products` VALUES('8853474037094', 'คุกแฮม ตรามายช้อยส์', '150 g');
INSERT INTO `products` VALUES('8853474037100', 'กูร์เมต์แฮม ตรามายช้อยส์', '150 g');
INSERT INTO `products` VALUES('8853474037292', 'สโมคปารีสแฮม ตรามายช้อยส์', '150 g');
INSERT INTO `products` VALUES('8853474039692', 'สโมคเบค่อน ตรามายช้อยส์', '180 g');
INSERT INTO `products` VALUES('8853474039708', 'แฮมโลฟ ตรามายช้อยส์', '160 g');
INSERT INTO `products` VALUES('8853474046355', 'ไส้กรอกคอกเทลรมควันหนังกรอบ ตรามายช้อยส์', '160 g');
INSERT INTO `products` VALUES('8853474046379', 'ไส้กรอกจูเนียร์ ตรามายช้อยส์', '160 g');
INSERT INTO `products` VALUES('8854698010719', 'ชาคูลซ่าชาดำโซดาเลมอน', '320 ml');
INSERT INTO `products` VALUES('8856294055026', 'ไข่ไก่เบอร์ 0 ตราเบทาโกร', '10 ฟอง');
INSERT INTO `products` VALUES('8856294055040', 'ไข่ไก่เบอร์ 1 ตราเบทาโกร', '10 ฟอง');
INSERT INTO `products` VALUES('8856294055057', 'ไข่ไก่เบอร์ 2 ตราเบทาโกร', '10 ฟอง');
INSERT INTO `products` VALUES('8856294055101', 'ไข่ไก่เบอร์ 2 ตราเบทาโกร', '30 ฟอง');
INSERT INTO `products` VALUES('8857103750644', 'Old English Wild Blueberry Jam', '30 g');
INSERT INTO `products` VALUES('8857122869655', 'โยเกิร์ตพร้อมดื่ม ตราคับแก้ว', '140 ml ');
INSERT INTO `products` VALUES('8857200012423', 'น้ำเฉาก๊วยธรรมชาติ ตราธาราทิพย์', '250 ml');
INSERT INTO `products` VALUES('8858672700115', 'น้ำสลัดงาญี่ปุ่น', '280 ml');
INSERT INTO `products` VALUES('8858672700122', 'น้ำสลัดซีอิ้วญี่ปุ่น', '280 ml');
INSERT INTO `products` VALUES('8858709100024', 'นมพาสเจอร์ไรส์พร่องมันเนย ตราแดรี่โฮม', '200 ml');
INSERT INTO `products` VALUES('8858709100048', 'นมปรุงแต่งพาสเจอร์ไรส์รสสตรอเบอร์รี่ ตราแดรี่โฮม', '200 ml');
INSERT INTO `products` VALUES('8858709100055', 'นมปรุงแต่งพาสเจอร์ไรส์รสช็อกโกแลต ตราแดรี่โฮม', '200 ml ');
INSERT INTO `products` VALUES('8858709100253', 'โยเกิร์ตรสธรรมชาติ ตราแดรี่โฮม', '130 g');
INSERT INTO `products` VALUES('8858709100260', 'โยเกิร์ตรสพร่องมันเนย ตราแดรี่โฮม', '130 g');
INSERT INTO `products` VALUES('8858709100277', 'โยเกิร์ตผสมบลูเบอร์รี่ ตราแดรี่โฮม', '130 g');
INSERT INTO `products` VALUES('8858709100284', 'โยเกิร์ตผสมสตรอเบอร์รี่ ตราแดรี่โฮม', '130 g');
INSERT INTO `products` VALUES('8858709100369', 'โยเกิร์ตพร้อมดื่มผสมน้ำผึ้งและน้ำมะนาว ตราแดรี่โฮม', '100 ml');
INSERT INTO `products` VALUES('8858709100871', 'โยเกิร์ตพร้อมดื่มผสมน้ำผึ้งและสตอรเบอร์รี่ ตราแดรี่โฮม', '100 ml');
INSERT INTO `products` VALUES('8858709101342', 'โยเกิร์ตรสมัลเบอร์รี่ ตราแดรี่โฮม', '130 g');
INSERT INTO `products` VALUES('8858709102851', 'โยเกิร์ตผสมพีช ตราแดรี่โฮม', '130 g');
INSERT INTO `products` VALUES('8858709103421', 'นมปรุงแต่งพาสเจอร์ไรส์รสกล้วมหอม ตราแดรี่โฮม', '200 ml');
INSERT INTO `products` VALUES('8858738400041', 'ไข่ไก่ออร์แกนิคขนาดกลาง ตรา N&P', '10 ฟอง');
INSERT INTO `products` VALUES('8858783710010', 'ไข่ไก่ซีลีเนียม ตราสงวนฟาร์ม', '10 ฟอง');
INSERT INTO `products` VALUES('8858783710027', 'ไข่ไก่ซีลีเนียมเบอร์ 2 ตราสงวนฟาร์ม', '10 ฟอง');
INSERT INTO `products` VALUES('8858816900012', 'โยเกิร์ต ตราแอคทีเวีย', '105 g');
INSERT INTO `products` VALUES('8858816900036', 'โยเกิร์ตผสมสตรอเบอร์รี่ ตราแอคทีเวีย', '105 g');
INSERT INTO `products` VALUES('8858816900074', 'โยเกิร์ตผสมวุ้นมะพร้าว ตราแอคทีเวีย', '105 g');
INSERT INTO `products` VALUES('8858816900111', 'โยเกิร์ตปราศจากไขมัน สูตรน้ำตาล 1% ผสมพรุน ตราแอคทีเวีย', '105 g');
INSERT INTO `products` VALUES('8858816900715', 'นมเปรี้ยวโยเกิร์ตปราศจากไขมัน สูตรน้ำตาล 1% ตราดานอน แอคทิเร', '300 ml');
INSERT INTO `products` VALUES('8858816900746', 'นมเปรี้ยวโยเกิร์ตปราศจากไขมัน สูตรน้ำตาล 1% รสพรุน ตราดานอน ', '300 ml');
INSERT INTO `products` VALUES('8858816900838', 'โยเกิร์ตปราศจากไขมัน สูตรน้ำตาล 1% ตราแอคทีเวีย', '105 g');
INSERT INTO `products` VALUES('8858816900852', 'โยเกิร์ตปราศจากไขมัน สูตรน้ำตาล 1% ผสมสตรอเบอร์รี่ ตราแอคทีเ', '105 g');
INSERT INTO `products` VALUES('8858816900890', 'นมเปรี้ยวโยเกิร์ตปราศจากไขมัน กลิ่นสตรอเบอร์รี่ ตราดานอน แอค', '300 ml');
INSERT INTO `products` VALUES('8858816901026', 'นมเปรี้ยวโยเกิร์ตปราศจากไขมัน ตราดานอน แอคทิเรกูลารัส (แอคที', '650 ml');
INSERT INTO `products` VALUES('8858816901033', 'นมเปรี้ยวโยเกิร์ตปราศจากไขมัน กลิ่นสตรอเบอร์รี่ ตราดานอน แอค', '650 ml');
INSERT INTO `products` VALUES('8858816901200', 'นมเปรี้ยวโยเกิร์ตปราศจากไขมัน กลิ่นลิ้นจี่ ตราดานอน แอคทิเรก', '300 ml');
INSERT INTO `products` VALUES('8858891300868', 'อิชิตัน ดราก้อน แบล็คที รสเลมอน', '420 ml');
INSERT INTO `products` VALUES('8858891301124', 'อิชิตัน กรีนที รสน้ำผึ้งผสมมะนาว', '840 ml');
INSERT INTO `products` VALUES('8858911200017', 'น้ำนมโคสด พาสเจอร์ไรส์ ตราบัตเตอร์ฟลาย', '300 ml');
INSERT INTO `products` VALUES('8858911200079', 'น้ำนมโคพร่องมันเนย พาสเจอร์ไรส์ ตราบัตเตอร์ฟลาย', '300 ml');
INSERT INTO `products` VALUES('8858911200185', 'นมปรุงแต่งพาสเจอร์ไรส์ กลิ่นวานิลลา ตราบัตเตอร์ฟลาย', '300 ml');
INSERT INTO `products` VALUES('8858911200239', 'นมเปรี้ยวโยเกิร์ตพร้อมดื่ม ตราบัตเตอร์ฟลาย', '200 ml');
INSERT INTO `products` VALUES('8858911200260', 'นมเปรี้ยวโยเกิร์ตพร้อมดื่มพร่องมันเนย ตราบัตเตอร์ฟลาย', '200 ml');
INSERT INTO `products` VALUES('8858912603107', 'ไข่ไก่เบอร์ 3 ตราฟาร์มแสงทอง', '10 ฟอง');
INSERT INTO `products` VALUES('8858967700011', 'คิกคาปู้จอยจูซ', '325 ml');
INSERT INTO `products` VALUES('8858998581139', 'เป๊ปซี่', '245 ml');
INSERT INTO `products` VALUES('8858998581153', 'เป๊ปซี่แมกซ์', '245 ml');
INSERT INTO `products` VALUES('8859014000252', 'ไข่ไก่เบรนพลัส ตราเคซีเอฟ', '10 ฟอง');
INSERT INTO `products` VALUES('8859151600018', 'นมแพะสดแท้จากธรรมชาติ (love goat milk)', '180 ml ');
INSERT INTO `products` VALUES('8859226200013', 'ไข่ไก่ออร์แกนิค ตราฮิลไทรย์', '10 ฟอง');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
CREATE TABLE IF NOT EXISTS `slots` (
  `slot_barcode` varchar(60) NOT NULL,
  `slot_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` VALUES('0000000000017', 'A1');
INSERT INTO `slots` VALUES('0000000000024', 'A2');
INSERT INTO `slots` VALUES('0000000000031', 'A3');
INSERT INTO `slots` VALUES('0000000000048', 'A4');
INSERT INTO `slots` VALUES('0000000000055', 'A5');
INSERT INTO `slots` VALUES('0000000000062', 'A6');
INSERT INTO `slots` VALUES('0000000000079', 'A7');
INSERT INTO `slots` VALUES('0000000000116', 'B1');
INSERT INTO `slots` VALUES('0000000000123', 'B2');
INSERT INTO `slots` VALUES('0000000000130', 'B3');
INSERT INTO `slots` VALUES('0000000000147', 'B4');
INSERT INTO `slots` VALUES('0000000000154', 'B5');
INSERT INTO `slots` VALUES('0000000000161', 'B6');
INSERT INTO `slots` VALUES('0000000000178', 'B7');
INSERT INTO `slots` VALUES('0000000000215', 'C1');
INSERT INTO `slots` VALUES('0000000000222', 'C2');
INSERT INTO `slots` VALUES('0000000000239', 'C3');
INSERT INTO `slots` VALUES('0000000000314', 'D1');
INSERT INTO `slots` VALUES('0000000000321', 'D2');
INSERT INTO `slots` VALUES('0000000000338', 'D3');
INSERT INTO `slots` VALUES('0000000000345', 'D4');
INSERT INTO `slots` VALUES('0000000000352', 'D5');
INSERT INTO `slots` VALUES('0000000000415', 'E1');
INSERT INTO `slots` VALUES('0000000000420', 'E2');
INSERT INTO `slots` VALUES('0000000000437', 'E3');
INSERT INTO `slots` VALUES('0000000000444', 'E4');
INSERT INTO `slots` VALUES('0000000000512', 'FREEZE');
INSERT INTO `slots` VALUES('0000000000529', 'MEAT');
INSERT INTO `slots` VALUES('0000000000536', 'OTHER1');
INSERT INTO `slots` VALUES('0000000000543', 'OTHER2');
INSERT INTO `slots` VALUES('0000000000550', 'VEGETABLE');

-- --------------------------------------------------------

--
-- Table structure for table `slot_detail`
--

DROP TABLE IF EXISTS `slot_detail`;
CREATE TABLE IF NOT EXISTS `slot_detail` (
  `slot_barcode` varchar(60) NOT NULL,
  `product_barcode` varchar(60) NOT NULL,
  `expire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slot_detail`
--

INSERT INTO `slot_detail` VALUES('0000000000017', '2000000355429', '2015-01-22');
INSERT INTO `slot_detail` VALUES('0000000000345', '8850188242103', '2015-01-03');
INSERT INTO `slot_detail` VALUES('0000000000352', '8850188250207', '2015-01-04');
INSERT INTO `slot_detail` VALUES('0000000000338', '8851013781491', '2015-01-15');

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
