-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2018 at 08:19 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.2.7-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mummyfique`
--

-- --------------------------------------------------------

--
-- Table structure for table `mm__banner_keywords`
--

CREATE TABLE `mm__banner_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mm__banner_keywords`
--

INSERT INTO `mm__banner_keywords` (`id`, `banner_id`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 't1', '2018-08-22 16:57:15', '2018-08-22 16:57:15'),
(2, 1, 't2', '2018-08-22 16:57:15', '2018-08-22 16:57:15'),
(3, 1, 't22234', '2018-08-22 16:57:15', '2018-08-22 16:57:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mm__banner_keywords`
--
ALTER TABLE `mm__banner_keywords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mm__banner_keywords`
--
ALTER TABLE `mm__banner_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
