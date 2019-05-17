-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 05:49 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `username`, `email`, `password`) VALUES
(1, 'abc', 'abc', 'abc'),
(2, 'cdnnj', 'jndj', 'jndc'),
(3, 'sj', 'jj', 'jj'),
(4, '5', '5', '5'),
(18, 'Doe', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'australia'),
(2, 'bhutan'),
(3, 'india'),
(4, 'bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `image_upload`
--

CREATE TABLE `image_upload` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_url` varchar(50) NOT NULL,
  `alt` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_upload`
--

INSERT INTO `image_upload` (`id`, `name`, `image_url`, `alt`) VALUES
(1, 'abc', 'p1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'abcd', 'hggvgv', '2018-04-26 05:39:51', '0000-00-00 00:00:00'),
(2, 'bbbb', 'hggvgv', '2018-04-26 05:39:51', '0000-00-00 00:00:00'),
(3, 'cccc', 'hggvgv', '2018-04-26 05:39:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descripton` varchar(255) NOT NULL,
  `prce` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `descripton`, `prce`, `created_at`, `updated_at`) VALUES
(1, 'xsdcfv', 'cinqueterre.jpg', 12, '2018-04-27 15:22:33', '0000-00-00 00:00:00'),
(2, 'test1', 'cinqueterre.jpg', 12, '2018-04-27 11:55:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `stockName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stockPrice` int(11) NOT NULL,
  `stockYear` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `stockName`, `stockPrice`, `stockYear`, `created_at`, `updated_at`) VALUES
(1, 'Infosys', 925, 1993, '2017-07-15 06:58:28', '2017-07-15 06:58:28'),
(2, 'Infosys', 950, 1992, '2017-07-15 07:10:46', '2017-07-15 07:10:46'),
(3, 'TCS', 2400, 1992, '2017-07-15 07:12:06', '2017-07-15 07:12:06'),
(4, 'TCS', 2500, 1993, '2017-07-15 07:12:18', '2017-07-15 07:12:18'),
(5, 'Reliance', 200, 1992, '2017-07-15 07:12:32', '2017-07-15 07:12:32'),
(6, 'Reliance', 220, 1993, '2017-07-15 07:12:43', '2017-07-15 07:12:43'),
(7, 'HUL', 100, 1994, '2017-07-15 07:13:00', '2017-07-15 07:13:00'),
(8, 'HUDCO', 20, 1996, '2017-07-15 07:32:35', '2017-07-15 07:32:35'),
(9, 'Infosys', 900, 1991, '2017-07-15 14:54:17', '2017-07-15 14:54:17'),
(10, 'Infosys', 1000, 1995, '2017-07-15 14:55:08', '2017-07-15 14:55:08'),
(11, 'Infosys', 2000, 1996, '2017-07-15 14:55:19', '2017-07-15 14:55:19'),
(12, 'Infosys', 2500, 1994, '2017-07-16 03:03:26', '2017-07-16 03:03:26'),
(13, 'test', 500, 1996, '2018-04-20 01:34:48', '2018-04-20 01:34:48'),
(14, 'test', 2500, 1991, '2018-04-20 01:38:08', '2018-04-20 01:38:08'),
(15, 'test', 2500, 1993, '2018-04-20 01:38:18', '2018-04-20 01:38:18'),
(16, 'test', 500, 1994, '2018-04-20 01:39:10', '2018-04-20 01:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `trn_movies`
--

CREATE TABLE `trn_movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `film_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `director` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `release_year` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trn_movies`
--

INSERT INTO `trn_movies` (`movie_id`, `film_name`, `director`, `release_year`) VALUES
(1, 'Happy New Year', 'Farah Khan', 2014),
(2, 'Kill Dil', 'Shaad Ali', 2014),
(3, 'The Shaukeens', 'Abhishek Sharma', 2014),
(4, 'Kick', 'Sajid Nadiadwala', 2014),
(5, 'Bang Bang', 'Siddharth Anand', 2014),
(6, 'Ungli', 'Rensil DSilva', 2014),
(7, 'Happy Ending', ' Krishna D.K', 2014),
(8, 'Jai Ho', 'Sohail Khan', 2014),
(9, 'Lingaa', 'K. S. Ravikumar', 2015),
(10, 'Daawat-e-Ishq', 'Habib Faisal', 2014),
(11, 'Singham Returns', 'Rohit Shetty', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'test', 'chetandeep+gulshansenior@singsys.com', '2018-04-19', '2018-04-12 11:33:25', '2018-04-25 12:32:23'),
(2, 'sdcfvgscvgbfsdcfgb', 'dcfvgbhdfvgb', '2018-04-09', '2018-04-12 11:33:25', '2018-04-12 11:33:25'),
(3, 'sdcfvgscv12221gbfsdcfgb', '121dcfvgbhdfvgb', '2018-04-09', '2018-04-12 11:33:25', '2018-04-12 11:33:25'),
(5, 'Chetan', 'chetandeep@singsys.com', '2018-04-18', '2018-04-24 03:57:26', '2018-04-24 03:57:26'),
(6, 'Csx', 'chetandeep+alok@singsys.com', '2018-04-16', '2018-04-24 04:00:17', '2018-04-24 04:00:17'),
(7, '12333', 'chetandeep+alok1@singsys.com', '2018-04-25', '2018-04-24 04:00:17', '2018-04-25 13:26:43'),
(8, 'test', 'test@sscsc.dfdv', '2018-04-17', '2018-04-25 13:27:07', '2018-04-25 13:50:05'),
(9, '1test', 'test@sscsc.dfdv', '2018-04-17', '2018-04-25 13:27:07', '2018-04-25 13:50:05'),
(10, '2test', 'test@sscsc.dfdv', '2018-04-17', '2018-04-25 13:27:07', '2018-04-25 13:50:05'),
(11, '3test', 'test@sscsc.dfdv', '2018-04-17', '2018-04-25 13:27:07', '2018-04-25 13:50:05'),
(12, '4test', 'test@sscsc.dfdv', '2018-04-17', '2018-04-25 13:27:07', '2018-04-25 13:50:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_upload`
--
ALTER TABLE `image_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_movies`
--
ALTER TABLE `trn_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `image_upload`
--
ALTER TABLE `image_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `trn_movies`
--
ALTER TABLE `trn_movies`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
