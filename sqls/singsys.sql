-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2017 at 10:06 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `singsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `baby`
--

CREATE TABLE IF NOT EXISTS `baby` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `baby`
--

INSERT INTO `baby` (`id`, `password`, `Name`) VALUES
(55, 'khan', 'sultankghhhhhhhhhhhhhhh'),
(60, 'khan', 'sultangg'),
(61, 'khan', 'sultanfr'),
(64, 'admin', 'admin'),
(65, 'root', 'root'),
(66, 'root', 'root'),
(67, '123456', 'abhay@singsys.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `email` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`email`, `password`) VALUES
('www.ggg@asfsa', 'waef'),
('sdcsdc@sddcasc', 'scscsdcddc'),
('wqef', 'awef'),
('wqef', 'awef');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
