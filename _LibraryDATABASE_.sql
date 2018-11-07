-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 07, 2018 at 11:04 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--
CREATE DATABASE IF NOT EXISTS `final` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `final`;

-- --------------------------------------------------------

--
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
CREATE TABLE `Book` (
  `ISBN` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Availability` int(10) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Picture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` int(50) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `pic_link` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `pic_link`, `price`, `category`) VALUES
(1, 'Classical MythologyMark Morford', 'http://www.openisbn.com/cover/0195153448_72.jpg', '0', 'Literature'),
(2, 'Clara Callan: A NovelRichard Bruce', 'http://www.openisbn.com/cover/0002005018_72.jpg', '10', 'Literature'),
(3, 'Nights Below Station StreetDavid ', 'http://www.openisbn.com/cover/0771074670_72.jpg', '9', 'Literature'),
(4, 'The Middle StoriesSheila Heti', 'http://www.openisbn.com/cover/0887841740_72.jpg', '9', 'Literature'),
(5, 'Jane DoeJ. R. Kaiser', 'http://www.openisbn.com/cover/1552041778_72.jpg', '10', 'Literature'),
(6, 'The TestamentJohn Grisham', 'http://www.openisbn.com/cover/0440234743_72.jpg', '10', 'Literature'),
(7, 'Flood : Mississippi 1927Kathleen', 'http://www.openisbn.com/cover/0689821166_72.jpg', '9', 'Literature'),
(8, 'Wild Animus: A NovelRich Shapero', 'http://www.openisbn.com/cover/0971880107_72.jpg', '10', 'Literature'),
(9, 'AirframeMichael Crichton', 'http://www.openisbn.com/cover/0345402871_72.jpg', '10', 'Science'),
(10, 'TimelineMichael Crichton', 'http://www.openisbn.com/cover/0345417623_72.jpg', '10', 'Science'),
(11, 'Out Of The Silent PlanetC.S. Lewis', 'http://www.openisbn.com/cover/0684823802_72.jpg', '10', 'Science'),
(12, 'Prague: A NovelArthur Phillips', 'http://www.openisbn.com/cover/0375759778_72.jpg', '10', 'Science'),
(13, 'Chocolate JesusStephen Jaramillo', 'http://www.openisbn.com/cover/0425163091_72.jpg', '10', 'Science'),
(14, 'Lying AwakeMark Salzman', 'http://www.openisbn.com/cover/0375406328_72.jpg', '10', 'Science'),
(15, 'To Kill A MockingbirdHarper Lee', 'http://www.openisbn.com/cover/0446310786_72.jpg', '10', 'Science'),
(16, 'DowntownAnne Rivers Siddons', 'http://www.openisbn.com/cover/0061099686_72.jpg', '10', 'Science'),
(17, 'IceboundDean Koontz', 'http://www.openisbn.com/cover/0553582909_72.jpg', '10', 'Entertainment'),
(18, 'From The Corner Of EyeDean Koontz', 'http://www.openisbn.com/cover/0553582747_72.jpg', '10', 'Entertainment'),
(19, 'Purity In DeathJ.D. Robb', 'http://www.openisbn.com/cover/042518630X_72.jpg', '10', 'Entertainment'),
(20, 'ProxiesLaura J. Mixon', 'http://www.openisbn.com/cover/0812523873_72.jpg', '10', 'Entertainment'),
(21, 'The Street LawyerJohn Grisham', 'http://www.openisbn.com/cover/0440225701_72.jpg', '10', 'Science'),
(22, 'Soldier Of The Great WarMark Helprin', 'http://www.openisbn.com/cover/0380715899_72.jpg', '10', 'Entertainment'),
(23, 'HaveliSuzanne Fisher Staples', 'http://www.openisbn.com/cover/0679865691_72.jpg', '10', 'Entertainment'),
(24, 'Lieux DitsMichel Tournier', 'http://www.openisbn.com/cover/2070423204_72.jpg', '10', 'Entertainment'),
(25, 'The breif history of time', 'images/Thebhoftime.jpg', '10', 'Science'),
(26, 'Testing Create New', 'images/bg.jpg', '10', 'Science'),
(27, 'Gone with wind', 'images/bg2.jpeg', '10', 'Literature'),
(28, 'Newbook1', 'images/bg.jpg', '0', 'Science'),
(29, '', '', '', ''),
(30, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `item_id` int(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `date` varchar(19) NOT NULL,
  `datein` varchar(19) NOT NULL DEFAULT 'not return yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_name`, `item_id`, `item_name`, `date`, `datein`) VALUES
(1, 'test1', 2, 'Clara Callan: A NovelRichard Bruce', '2017-12-04 20:41:54', '2017-12-05 04:27:48'),
(1, 'test1', 3, 'Nights Below Station StreetDavid ', '2017-12-04 20:41:54', '2017-12-06 12:17:32'),
(2, 'test1', 20, 'ProxiesLaura J. Mixon', '2017-12-05 04:26:11', '2017-12-05 05:18:52'),
(2, 'test1', 21, 'The Street LawyerJohn Grisham', '2017-12-05 04:26:11', '2017-12-05 05:10:03'),
(3, 'test1', 4, 'The Middle StoriesSheila Heti', '2017-12-05 04:26:46', '2017-12-05 05:11:18'),
(3, 'test1', 5, 'Jane DoeJ. R. Kaiser', '2017-12-05 04:26:46', '2017-12-06 12:18:18'),
(3, 'test1', 8, 'Wild Animus: A NovelRich Shapero', '2017-12-05 04:26:46', '2017-12-06 12:19:15'),
(4, 'test1', 3, 'Nights Below Station StreetDavid ', '2017-12-06 12:10:53', '2017-12-06 12:17:05'),
(4, 'test1', 4, 'The Middle StoriesSheila Heti', '2017-12-06 12:10:53', '2017-12-06 12:20:06'),
(5, 'test2', 3, 'Nights Below Station StreetDavid ', '2017-12-06 12:20:32', '2017-12-06 12:21:00'),
(5, 'test2', 2, 'Clara Callan: A NovelRichard Bruce', '2017-12-06 12:20:32', '2017-12-06 12:21:22'),
(6, 'test1', 1, 'Classical MythologyMark Morford', '2017-12-06 19:50:27', '2017-12-06 19:55:39'),
(7, 'test1', 1, 'Classical MythologyMark Morford', '2017-12-06 20:21:00', ' '),
(8, 'test1', 3, 'Nights Below Station StreetDavid ', '2017-12-06 20:21:48', ' '),
(8, 'test1', 7, 'Flood : Mississippi 1927Kathleen', '2017-12-06 20:21:48', ' '),
(8, 'test1', 4, 'The Middle StoriesSheila Heti', '2017-12-06 20:21:48', ' '),
(8, 'test1', 8, 'Wild Animus: A NovelRich Shapero', '2017-12-06 20:21:48', '2017-12-06 20:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(12) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `email`, `phone`, `address`) VALUES
('1', 'test1', '0c2c6da8cc9f8080845b171614fbd850389e4ef7', 'weqwe@ii.dd', 0, '111 ooo'),
('2', '', '9c1185a5c5e9fc54612808977ee8f548b2258d31', '', 0, ''),
('3', 'test2', '0c2c6da8cc9f8080845b171614fbd850389e4ef7', 'hhh@uuuedd.ed', 999999999, '888 weds'),
('4', 'newuser1', '0c2c6da8cc9f8080845b171614fbd850389e4ef7', 'hhh@utvgs.eda', 0, '999 jjj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Book`
--
ALTER TABLE `Book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
