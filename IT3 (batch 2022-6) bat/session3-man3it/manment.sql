-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2022 at 11:43 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manment`
--

-- --------------------------------------------------------

--
-- Table structure for table `hrdata`
--

CREATE TABLE IF NOT EXISTS `hrdata` (
  `id` int(15) NOT NULL,
  `Empname` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `whendata` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `membername` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hrdata`
--

INSERT INTO `hrdata` (`id`, `Empname`, `Address`, `phone`, `age`, `gender`, `whendata`, `membername`) VALUES
(1, 'name', 'address', 'phone', 'age', 'gender', '2022-07-20 06:16:44', 'admin'),
(2, 'gat', 'hand movemnet', 'nan', '25', 'male', '2022-07-20 06:16:44', 'user1'),
(3, 'testname', 'testaddress', 'testphone', 'testage', 'testgender', '2022-07-20 06:16:44', 'user2'),
(4, 'gat', 'college', '123123', '101', 'female', '2022-07-20 06:16:44', 'user50'),
(5, 'sam', 'home', '0912312390', '12', 'male', '2022-07-20 06:17:03', 'admin'),
(6, 'sam', '2', '2', '2', '2', '2022-07-20 06:22:20', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(255) NOT NULL,
  `membername` varchar(255) NOT NULL,
  `memberpass` varchar(255) NOT NULL,
  `adminornot` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `membername`, `memberpass`, `adminornot`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user1', 'user1', ''),
(3, 'user2', 'user2', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hrdata`
--
ALTER TABLE `hrdata`
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
-- AUTO_INCREMENT for table `hrdata`
--
ALTER TABLE `hrdata`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
