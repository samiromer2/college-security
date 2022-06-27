-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2022 at 11:31 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accounting3ita`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(200) NOT NULL,
  `Account Name` varchar(200) NOT NULL,
  `Account Amount` int(200) NOT NULL,
  `Cash Movement` varchar(200) NOT NULL,
  `Account date` date NOT NULL,
  `membername` varchar(200) NOT NULL,
  `dateofaction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `Account Name`, `Account Amount`, `Cash Movement`, `Account date`, `membername`, `dateofaction`) VALUES
(1, 'denies', 2000, 'out', '2022-06-27', '', '2022-06-27 06:12:56'),
(2, 'denies', 2000, 'in', '2022-06-27', '', '2022-06-27 06:12:56'),
(3, 'samir', 50, 'out', '2022-06-28', '', '2022-06-27 06:12:56'),
(4, 'denies', 20000000, 'out', '2022-06-28', '', '2022-06-27 06:12:56'),
(5, 'denies', 50, 'out', '2021-10-04', '', '2022-06-27 06:13:55'),
(6, 'denies', 50, 'out', '2022-01-03', '', '2022-06-27 06:14:49'),
(7, 'denies', 50, 'out', '2022-06-15', 'user', '2022-06-27 06:20:05'),
(8, 'denies', 2000, 'out', '2022-06-30', 'normaluser', '2022-06-27 06:20:33'),
(9, 'denies', 2000, 'out', '2022-06-30', 'normaluser', '2022-06-27 06:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(200) NOT NULL,
  `membername` varchar(200) NOT NULL,
  `memberpass` varchar(200) NOT NULL,
  `membertype` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `membername`, `memberpass`, `membertype`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'normaluser', 'normaluser', 'account'),
(3, 'user', 'user', 'account');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
