-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2022 at 01:45 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accounting3itb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(200) NOT NULL,
  `Account Name` varchar(200) NOT NULL,
  `Account Amount` int(200) NOT NULL,
  `Account Movement` varchar(200) NOT NULL,
  `Account Date` date NOT NULL,
  `membername` varchar(200) NOT NULL,
  `dateofaction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `Account Name`, `Account Amount`, `Account Movement`, `Account Date`, `membername`, `dateofaction`) VALUES
(1, 'meron', 20, 'out', '2022-06-27', 'user1', '2022-06-27 08:36:54'),
(2, 'samir', 50, 'in', '2022-06-30', 'user2', '2022-06-27 08:36:59'),
(3, 'samir', 50, 'in', '2022-06-30', 'user2', '2022-06-27 08:37:02'),
(4, 'testifallwork', 0, 'in', '2022-06-27', 'user2', '2022-06-27 08:37:05'),
(5, 'meron', 2000000000, 'out', '2022-06-28', 'user22', '2022-06-27 08:37:09'),
(6, 'meron', 21, 'out', '2022-06-05', 'normaluser', '2022-06-27 08:25:01'),
(7, '', 0, '', '0000-00-00', 'user1', '2022-06-27 08:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL,
  `membername` varchar(200) NOT NULL,
  `memberpass` varchar(200) NOT NULL,
  `membertype` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `membername`, `memberpass`, `membertype`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'normaluser', 'normaluser', 'account'),
(3, 'normaluser2', 'normaluser2', 'account');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
