-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2018 at 05:00 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chirppe`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_observation`
--

CREATE TABLE `c_observation` (
  `id` int(10) UNSIGNED NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `category` enum('other','growth') COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `weight` decimal(10,0) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8_unicode_ci NOT NULL,
  `approved` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_observation`
--

INSERT INTO `c_observation` (`id`, `std_id`, `teacher_id`, `category`, `height`, `weight`, `comment`, `status`, `approved`, `created_at`, `updated_at`) VALUES
(2, 24, 78, 'other', '3\'4', '20', '', 'pending', 'no', '2018-01-10 11:32:13', '2018-01-10 11:32:13'),
(3, 23, 78, 'growth', '3\'2', '19', 'belongsTo method specifying your parent table\'s custom key.', 'pending', 'no', '2018-01-10 11:34:14', '2018-01-10 11:34:14'),
(4, 23, 78, 'growth', '3\'4', '21', 'Adding Observation', 'pending', 'no', '2018-01-10 11:39:02', '2018-01-10 11:39:02'),
(5, 23, 78, 'other', '', '0', 'We will use anonymous functions in the routes file', 'pending', 'no', '2018-01-12 12:07:15', '2018-01-12 12:07:15'),
(6, 24, 78, 'growth', '3\'2', '18', '', 'pending', 'no', '2018-01-12 12:07:41', '2018-01-12 12:10:27'),
(8, 23, 78, 'other', '3\'4', '23', '', 'pending', 'no', '2018-01-18 02:08:49', '2018-01-18 02:08:49'),
(9, 25, 78, 'growth', '3\'4', '23', '', 'pending', 'no', '2018-01-18 02:09:20', '2018-01-18 02:18:51'),
(10, 23, 78, 'growth', '5\'5', '35', '', 'pending', 'no', '2018-01-18 02:20:50', '2018-01-18 02:21:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_observation`
--
ALTER TABLE `c_observation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `observation_std_id_foreign` (`std_id`),
  ADD KEY `observation_teacher_id_foreign` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_observation`
--
ALTER TABLE `c_observation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
