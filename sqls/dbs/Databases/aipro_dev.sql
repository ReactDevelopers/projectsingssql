-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 05:45 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aipro_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_features`
--

CREATE TABLE `company_features` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `feature_program_name` varchar(200) DEFAULT NULL,
  `feature_tag_line` varchar(150) DEFAULT NULL,
  `feature_bios` text,
  `feature_testimony` varchar(150) DEFAULT NULL,
  `feature_testimony_name` varchar(200) DEFAULT NULL,
  `feature_testimony_designation` varchar(200) DEFAULT NULL,
  `feature_highlight1` varchar(200) DEFAULT NULL,
  `feature_highlight2` varchar(200) DEFAULT NULL,
  `feature_highlight3` varchar(200) DEFAULT NULL,
  `page_main_picture` varchar(100) DEFAULT NULL COMMENT '1170 (w) x 780 (h) 200 kb',
  `page_side_picture` varchar(100) DEFAULT NULL COMMENT '270 (w) x 386 (h) 80 kb',
  `home_page_main_picture` varchar(100) DEFAULT NULL COMMENT '1920 (w) x 1000 (h) 340 kb',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_features`
--

INSERT INTO `company_features` (`id`, `user_id`, `feature_program_name`, `feature_tag_line`, `feature_bios`, `feature_testimony`, `feature_testimony_name`, `feature_testimony_designation`, `feature_highlight1`, `feature_highlight2`, `feature_highlight3`, `page_main_picture`, `page_side_picture`, `home_page_main_picture`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'rameshfeature1', 'scsc', 'hello', NULL, NULL, NULL, 'cddc', 'cdc', 'cddc', '1511422086_first.jpg', '1511255584_second.jpg', '1511255584_third.jpg', '2017-10-31 13:00:00', '2017-11-27 07:21:04', 'Active'),
(2, 2, 'rameshfeature', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 13:00:00', '2017-11-23 23:30:35', 'Inactive'),
(3, 2, 'rameshfeature', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 13:00:00', '2017-11-23 23:30:35', 'Active'),
(260, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(261, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(262, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(263, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(264, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(265, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(266, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(267, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(268, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(269, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:25', '2017-11-24 03:35:25', 'Inactive'),
(270, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(271, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(272, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(273, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(274, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(275, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(276, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(277, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(278, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:26', '2017-11-24 03:35:26', 'Inactive'),
(279, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(280, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(281, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(282, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(283, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(284, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(285, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(286, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(287, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(288, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(289, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:27', '2017-11-24 03:35:27', 'Inactive'),
(290, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(291, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(292, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(293, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(294, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(295, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(296, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(297, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(298, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(299, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(300, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(301, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:28', '2017-11-24 03:35:28', 'Inactive'),
(302, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(303, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(304, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(305, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(306, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(307, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(308, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(309, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(310, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(311, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(312, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(313, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:29', '2017-11-24 03:35:29', 'Inactive'),
(314, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(315, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(316, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(317, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(318, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(319, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(320, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(321, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(322, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(323, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:30', '2017-11-24 03:35:30', 'Inactive'),
(324, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(325, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(326, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(327, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(328, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(329, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(330, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(331, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(332, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(333, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(334, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:31', '2017-11-24 03:35:31', 'Inactive'),
(335, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(336, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(337, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(338, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(339, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(340, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(341, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(342, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(343, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:32', '2017-11-24 03:35:32', 'Inactive'),
(344, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(345, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(346, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(347, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(348, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(349, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(350, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(351, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(352, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:33', '2017-11-24 03:35:33', 'Inactive'),
(353, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(354, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(355, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(356, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(357, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(358, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(359, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(360, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(361, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(362, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(363, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(364, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:34', '2017-11-24 03:35:34', 'Inactive'),
(365, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:35', '2017-11-24 03:35:35', 'Inactive'),
(366, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:35', '2017-11-24 03:35:35', 'Inactive'),
(367, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:35', '2017-11-24 03:35:35', 'Inactive'),
(368, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:35', '2017-11-24 03:35:35', 'Inactive'),
(369, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:35', '2017-11-24 03:35:35', 'Inactive'),
(370, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-24 03:35:35', '2017-11-24 03:35:35', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `com_name` varchar(250) DEFAULT NULL,
  `com_url` varchar(250) DEFAULT NULL,
  `road_address` varchar(250) DEFAULT NULL,
  `unit_address` varchar(250) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `general_email` varchar(200) DEFAULT NULL,
  `comphone_number` varchar(15) DEFAULT NULL,
  `fax_number` varchar(15) DEFAULT NULL,
  `com_facebook_url` varchar(100) DEFAULT NULL,
  `com_twitter_url` varchar(100) DEFAULT NULL,
  `com_linkedIn_url` varchar(100) DEFAULT NULL,
  `com_headline` varchar(150) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `services` varchar(200) DEFAULT NULL,
  `com_testimony` varchar(150) DEFAULT NULL,
  `com_write_up` text,
  `testimonial_name` varchar(100) DEFAULT NULL,
  `testimonial_designation` varchar(100) DEFAULT NULL,
  `poster_pic` varchar(100) DEFAULT NULL,
  `com_status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `user_id`, `com_name`, `com_url`, `road_address`, `unit_address`, `postal_code`, `general_email`, `comphone_number`, `fax_number`, `com_facebook_url`, `com_twitter_url`, `com_linkedIn_url`, `com_headline`, `categories`, `services`, `com_testimony`, `com_write_up`, `testimonial_name`, `testimonial_designation`, `poster_pic`, `com_status`) VALUES
(1, 2, 'singsys', 'https://laravel.com/docs/5.5/validation#rule-size', 'secttor2323', 'rampur@sector-1213', '222222', 'singsys@vf.com', '+2345678912', '2222', 'https://www.facebook.com/', '@sad12_', 'https://in.linkedin.com/', 'NOSTRESSoo', '3d_programmes', 'rights_holder_distributor', 'hello', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum stet clita kasd gubergrno sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolamet consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua vero eos et accusam et justo duo dolores.\r\nLorem ipsum dolor sit amet, consetetur sadipscinged diam nonumy eirmod tempor invidunt utlabore dolore magna aliquyam erat, sed diam voluptua. At vero eoet accusam esto clitakasd gubergren nea takimata sanctus est lorem ipsum.\r\nAdd a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.\r\nAdd a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.\r\nAdd a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.\r\nAdd a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.\r\nAdd a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.\r\nAdd a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.', 'abcd', 'bingo', 'banner_slide02.jpg', 'Active'),
(94, 118, '18 Degrees Celsius Pte Ltd', NULL, '10 Anson Roa, #26-04 Singapore - 079903', NULL, '079903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(95, 119, 'Adara Pictures Pte Ltd', NULL, '50 Frontier Building #05-06 Ubi Ave 3 Singapore', NULL, '408866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(96, 120, 'Ananya Pictures', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(97, 121, 'August Media Holding Pte Ltd', NULL, '71 Ayer Rajah Crescent #07-12/14 Ayer Rajah Industrial Estate', NULL, '139951', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(98, 122, 'Bronco Media House', NULL, 'Block 125 Bukit Merah Lane 1 #04-172 Alexandra Village Singapore', NULL, '150125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(99, 123, 'Comicbook Private Limited (new)', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(100, 124, 'Digital Blowfish Pte Ltd (new)', NULL, '62 Ubi Road 1 #05-20121 Oxley Biz Hub2', NULL, '408734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(101, 125, 'Dream Forest Media', NULL, '56 Prinsep St, Singapore', NULL, '188685', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(102, 126, 'Filmat36 (S) Pte Ltd', NULL, '501 Balestier Road #02-03 Wai Wing Centre', NULL, '329844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(103, 127, 'Freeflow Productions Pte Ltd', NULL, '89 Neil Road, #01-01, Singapore', NULL, '088849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(104, 128, 'Freestate ProductionsGozde Zehnder', NULL, '47 Kallang Pudding Road The Crescent #05-07', NULL, '349318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(105, 129, 'Hoods Inc Productions Pte Ltd.Bratina Tay', NULL, '1 Spottiswoode Park Road', NULL, '088628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(106, 130, 'M\'go Films Pte Ltd', NULL, '420 North Bridge Road #03-39 North Bridge Centre', NULL, '188727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(107, 131, 'Monochromatic Pictures LLP', NULL, 'Link @ AMK 3 Ang Mo Kio St 62 #08-16', NULL, '569139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(108, 132, 'Monstrou Studio Pte Ltd', NULL, '33 Ubi Avenue 3, Vertex, Tower A, #08-49, Singapore ', NULL, '408868', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(109, 133, 'Oak3 Films Pte Ltd', NULL, '18 Kaki Bukit 3 #04-09 ', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(110, 134, 'Ochre Pictures Pte Ltd', NULL, '37 Jalan Pemimpin #06-07 Mapex', NULL, '577177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(111, 135, 'Papahan Films Pte Ltd', NULL, '35 Kallang Pudding Road #03-05 Tong Lee Building A Singapore ', NULL, '349314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(112, 136, 'People Factor Studio Pte Ltd', NULL, '33M Gilstead Road', NULL, '309076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(113, 137, 'Reta Transmedia Storytelling', NULL, 'LaunchPad @ One-North, Blk 79 Ayer Rajah Crescent #02-08, Singapore', NULL, '139955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(114, 138, 'Screenbox Pte Ltd', NULL, '1 Bukit Batok Crescenet #09-56 WCEGA Plaza', NULL, '658064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(115, 139, 'Singapore Cinema Pte Ltd (new)', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(116, 140, 'Sitting in Pictures', NULL, '1 Syed Alwi Road #04-04 Song Lin Building', NULL, '207628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(117, 141, 'Tantra Incorporated Pte Ltd', NULL, '1 Ubi Cres, Singapore', NULL, '408563', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(118, 142, 'The Big Picture Productions', NULL, 'Alnwick Road 12  55 Singapore - Serangoon', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(119, 143, 'The Moving Visuals Co Pte Ltd', NULL, '2 Kallang Avenue #04-08 CT Hub 1', NULL, '339407', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(120, 144, 'The Media Pte Ltd', NULL, '59 Jalam Pemimpin @03-07 L&Y Building ', NULL, '577218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(121, 145, 'Threesixzero Productions Pte Ltd', NULL, '26 Sin Ming Lane, Midview City #06-123', NULL, '573971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(122, 146, 'Verite Productions', NULL, '20 Ayer Rajah Crescent #08-28', NULL, '139964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(123, 147, 'Vertigo Pictures LLP', NULL, '217A Syed Alwi Road', NULL, '207776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(124, 148, 'WaWa Pictures Pte Ltd', NULL, '71 Ubi Road 1 #05-42/43/44 Oxley Bizhub', NULL, '408732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(125, 149, 'Weiyu Films Pte Ltd', NULL, '37 Jalan Pemimpin #07-01', NULL, '577177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(126, 150, 'Xtreme Media Pte Ltd', NULL, 'Blk 24 Sin Ming Lane #02-01 Midview City', NULL, '573920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(127, 151, 'Communia Pte Ltd', NULL, '8 Eu Tong Sen Street #14-94', NULL, '059818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(128, 152, 'Rough Cuts Pte Ltd', NULL, '233 Joo Chiat #02-01 Road', NULL, '427491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(129, 153, 'August Pictures Pte Ltd', NULL, '43 Jalan Merah Saga #03-78', NULL, '278115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive'),
(130, 154, 'Shortman Films Pte Ltd', NULL, '6001 Beach Rd, #11-09 Golden Mile Tower', NULL, '199589', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `user_name`, `user_email`, `subject`, `message`, `updated_at`, `created_at`) VALUES
(3, '1kjjk Pushpendra Singh', 'pushpendra@singsys.com', 'Test', 'I thought that changing the header data between adding pages might do the trick, but in my tests it seems that setting the header after adding the first page has no effect:', NULL, NULL),
(4, ' 544554 Pushpendra Singh', 'pushpendra@singsys.com', 'Test', 'I thought that changing the header data between adding pages might do the trick, but in my tests it seems that setting the header after adding the first page has no effect:', NULL, NULL),
(5, 'dsdsds', 'sddsdshdhsjhsd', 'Hi', 'dsdsdsds', '2017-10-11 04:34:52', '2017-10-11 04:34:52'),
(7, 'Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:25:18', '2017-10-11 05:25:18'),
(8, '89956m  Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:27:09', '2017-10-11 05:27:09'),
(9, 'dfdif lSanto', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:27:55', '2017-10-11 05:27:55'),
(10, 'Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:27:55', '2017-10-11 05:27:55'),
(11, 'dffddf Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:30:47', '2017-10-11 05:30:47'),
(12, 'dsdsds', 'sddsdsds@gmail.com', 'dsdsds', 'dsdsds', '2017-10-11 06:50:41', '2017-10-11 06:50:41'),
(13, 'dsdsds', 'sddsdsds@gmail.com', 'dsdsds', 'dsdsds', '2017-10-11 06:50:53', '2017-10-11 06:50:53'),
(14, 'dsdsds', 'sddsdsds@gmail.com', 'dsdsds', 'dsdsds', '2017-10-11 06:51:17', '2017-10-11 06:51:17'),
(15, 'dsdsds', 'dsdsdsdsds@dsddsds.dsdsds', 'dsdsdsds', 'dsdsds', '2017-10-11 06:52:25', '2017-10-11 06:52:25'),
(16, 'dsdsds', 'dsdsdsdsds@dsddsds.dsdsds', 'dsdsdsds', 'dsdsds', '2017-10-11 06:53:36', '2017-10-11 06:53:36'),
(17, 'ddffdfd', 'fdfdfdfd@dsdsds.com', 'fdfdfd', 'fdfdfdfdfd', '2017-10-11 06:55:47', '2017-10-11 06:55:47'),
(33, 'Santosh Kumar Singh', 'santosh@singsys.com', 'Testing', 'If you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.', '2017-10-11 08:11:28', '2017-10-11 08:11:28'),
(52, 'reddewew', 'pushpendra+1@singsys.com', 'fdff', 'hhghgghdffdfdfd', '2017-10-11 08:53:34', '2017-10-11 08:53:34'),
(55, 'abba', 'abba@g.co', 'important', 'readmsg', '2017-11-27 03:22:31', '2017-11-27 03:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `description`, `added_date`) VALUES
(1, 'contact_us', 'Aipro Web Portal - Contact Us', '<p>Dear {NAME},</p>\n\n<p>Thanks for your response.</p>\n\n<p>Thanks {SITENAME} Team</p>', '2017-10-24 04:21:27'),
(2, 'contact_us_admin', 'Aipro Web Portal - Contact Us', 'Dear Admin,\n\nNew contact information found.\n\nName: {NAME}\nEmail: {FROM_EMAIL}\nMessage: {MESSAGE}\n\nThanks {SITENAME} Team', '2017-07-24 10:56:16'),
(3, 'contact_us_reply', 'Aipro Web Portal - Contact Reply', 'Dear {NAME},\n\nSubject:{SUBJECT}\nMessage: {MESSAGE}\nREPLY:{REPLY}\nTHANKS {SITENAME} team.', '2017-11-24 07:46:38'),
(4, 'reset_password', 'Aipro Web Portal - Reset Password', 'Dear {NAME},\n\nSubject:{SUBJECT}\nMessage: {MESSAGE}\n\nTHANKS {SITENAME} team.', '2017-11-28 07:46:38'),
(5, 'memeberbearer_sendmsg', 'Aipro Web Portal - memeberbearersendmsg', 'Dear Employee,\n\nName: {NAME}\nMessage: {MESSAGE}\nEmail: {EMAIL}\n\nThanks and Regards.', '2017-12-04 04:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `office_bearers`
--

CREATE TABLE `office_bearers` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `short_desc` text,
  `facebook` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `content_desc` text,
  `highlight1` varchar(200) DEFAULT NULL,
  `highlight2` varchar(200) DEFAULT NULL,
  `highlight3` varchar(200) DEFAULT NULL,
  `description` text,
  `bios` text,
  `testimonial_quote` varchar(150) DEFAULT NULL,
  `testimonial_name` varchar(100) DEFAULT NULL,
  `testimonial_designation` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_bearers`
--

INSERT INTO `office_bearers` (`id`, `name`, `email`, `designation`, `image`, `short_desc`, `facebook`, `twitter`, `linkedin`, `content_desc`, `highlight1`, `highlight2`, `highlight3`, `description`, `bios`, `testimonial_quote`, `testimonial_name`, `testimonial_designation`, `created_at`, `updated_at`, `status`) VALUES
(7, 'Jeevan Nathan', 'chetandeep@singsys.com', 'EXCO MEMBER', 'ExcoProfile_Member01.jpg', 'Dreamer/ Optimist... Founder & Creative Director of Monochromatic Pictures', 'http://www.augustmh.com/AIPROtest/officebearers.html#', '@Jeevan Nathan', 'http://www.augustmh.com/AIPROtest/officebearers.html#', 'Jeevan is serving his first term as an Executive Committee member of AIPRO. Among other things he has been:', 'Responsible for driving membership in AIPRO', 'Reaching out to new media companies', 'Working with the EXCO to redefine AIPRO\'s mission', 'Much of the above initiatives are already underway. The association hopes to deliver substantially in these areas before the end of the tenure of its current executive committee.', '<p>Majoring in 16 &amp; 35mm Film Studies and Screenwriting, Jeevan graduated from Singapore&rsquo;s Film, Sound &amp; Video (Ngee Ann Polytechnic, 1999) and went on to further his Directing craft in New York Film Academy (California campus, 2002). Upon returning to Singapore, he brought his film language to the digital era.</p>\r\n\r\n<p>In his 14 years of working in the media industry since, Jeevan has created, written and developed a broad range of productions including television dramas (for Ch5, CNA, Suria, okto, AFC, CI network), short films, documentaries, docudramas, infotainment, video installations, music videos and various arts-design videos.</p>\r\n\r\n<p>Jeevan has garnered two awards in MDA&rsquo;s national screenwriting competitions in 2005/06; was a recipient of Creative Circle Awards for ads directed and produced in 2006/07. His short films and music videos have travelled to film festivals from Singapore, to Indonesia, Australia, Argentina and Vancouver. And three of his original drama series (Tina&rsquo;s Catering, Super4orce, Avenue 13) have been nominated for local and regional awards.</p>\r\n\r\n<p>In between running creative label, Monochromatic Pictures, Jeevan also serves as an independent filmmaker and a creative director to other companies; he has taught and given talks at various organisations like Bukit View Secondary School, Singapore Polytechnic, Temasek Polytechnic, Glasgow School of Design, BBH DigitasLBi.</p>', NULL, NULL, NULL, '2017-12-01 04:45:36', '2017-12-04 04:42:31', 'Active'),
(8, 'filled', NULL, 'EXCO MEMBER', 'ExcoProfile_Member02.jpg', NULL, NULL, NULL, NULL, NULL, 'h1', NULL, NULL, NULL, '<p>bios</p>', NULL, NULL, NULL, '2017-12-01 07:09:39', '2017-12-01 07:09:39', 'Inactive'),
(9, 'sahas', NULL, 'f Designation', 'ExcoProfile_Treasurer.jpg', NULL, NULL, NULL, NULL, NULL, 'Responsible for driving membership in AIPRO', NULL, NULL, NULL, '<p>biossss</p>', NULL, NULL, NULL, '2017-12-01 07:10:26', '2017-12-01 08:24:25', 'Inactive'),
(10, 'ramu', NULL, 'kakak', 'ExcoProfile_Member05.jpg', NULL, NULL, NULL, NULL, NULL, 'Driving new membership initiatives', NULL, NULL, NULL, '<p>sjbscabj</p>', NULL, NULL, NULL, '2017-12-01 07:37:53', '2017-12-03 21:58:34', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'admin_email', 'pushpendra@singsys.com', NULL, NULL),
(2, 'banner_image', '1507699031.jpg', NULL, NULL),
(3, 'twitter_url', NULL, NULL, NULL),
(4, 'pinterest_url', NULL, NULL, NULL),
(5, 'google_url', NULL, NULL, NULL),
(6, 'smtp_server_host', 'smtp.gmail.com', NULL, NULL),
(7, 'smtp_port_number', '465', NULL, NULL),
(8, 'smtp_uName', 'developer.singsys@gmail.com', NULL, NULL),
(9, 'smtp_uPass', 'Lucknow@123', NULL, NULL),
(10, 'copyright', '© Internship 2017. All rights reserved.', NULL, NULL),
(11, 'site_title', 'AIPRO Web Portal', NULL, NULL),
(12, 'facebook_url', NULL, NULL, NULL),
(13, 'project_desc1', 'The cute little girl with big ideas; the loud and insane King of the Jungle and his crazy band of jungle kooks are just some of the entertaining characters in the August Media family.\r\n\r\nFrom the US and Canada to Scandinavia and Australia, August Media has been developing, funding and executive producing several animated titles every year with partnerships across the world. August Rights, our rights management arm has accumulated an envia', NULL, NULL),
(14, 'project_desc2', '', NULL, NULL),
(15, 'phone_no', NULL, NULL, NULL),
(16, 'fax_no', NULL, NULL, NULL),
(17, 'what_do_we_do', 'August Media are a one stop shop for the development, finacing, production and exploitation of the intellectual properties for kids. In this effort the company invests in a variety of businesses, properties and partnerships that bring synergies that help ', NULL, NULL),
(18, 'who_are_we', 'August Media Holdings creates and manages high quality intellectual properties for Kid and Youth audiences. Together with its rights management arm – August Rights, the company has built itself a library of some global iconic brands. Some of the brands in the August Media kitty include George of the Jungle, Ella Bella Bingo, Underdog and the Jake Series.\r\n\r\n Every year the company welcomes pitches for new developments from writers, designers and producers worldwide. Many of these are then take to production along with multiple production and financing partnerships from across the globe. Earlier this year, August Media along with Philippines based Synergy88 media group a private equity fund designed specifically to invest in children’s IP and businesses. The fund has already invested in 2 TV shows for kids is on the lookout for more. \r\n\r\n With the recently opened ASI Studios in Manila for animation and games production, the company is poised to grow into an integrated media house that takes its properties across platforms including Television, Publishing, Mobile and Interactive for a complete 360° leverage. ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_content`
--

CREATE TABLE `static_content` (
  `static_content_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title_1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_2` text COLLATE utf8_unicode_ci,
  `add_more_points` text COLLATE utf8_unicode_ci,
  `description_3` text COLLATE utf8_unicode_ci,
  `sub_title_4` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_5` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_6` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_7` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_8` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_9` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_1` text COLLATE utf8_unicode_ci,
  `description_4` text COLLATE utf8_unicode_ci,
  `description_5` text COLLATE utf8_unicode_ci,
  `description_6` text COLLATE utf8_unicode_ci,
  `description_7` text COLLATE utf8_unicode_ci,
  `description_8` text COLLATE utf8_unicode_ci,
  `description_9` text COLLATE utf8_unicode_ci,
  `document_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `static_content`
--

INSERT INTO `static_content` (`static_content_id`, `title`, `sub_title_1`, `sub_title_2`, `description`, `page_image`, `sub_title_3`, `description_2`, `add_more_points`, `description_3`, `sub_title_4`, `sub_title_5`, `sub_title_6`, `sub_title_7`, `sub_title_8`, `sub_title_9`, `description_1`, `description_4`, `description_5`, `description_6`, `description_7`, `description_8`, `description_9`, `document_1`, `document_2`, `alias`, `added_date`) VALUES
(1, 'Who We Are', 'Working Progress', 'Benefit Independence', '<p>45454Beef ribs brisket cow ground round frankfurter spare ribs ham. Turkey hambur tongue, short loin spare ribs pancetta picanha pork belly brisket andouille sausa drumstick. Ribeye shankle filet mignon porchetta chuck. Tri-tip shank flank fat. Ribeye alcatra pork belly brisket rump chicken meatball jowl. Pancetta chicken bacon ribeye..</p>\r\n\r\n<p>Pork loin flank swine venison chuck, jerky turkey meatloaf alcatra cupim hambu. Kevin cupim bacon turkey fatback pancetta picanha tongue, frankfu pig. Biltong corned beef boudin cow pork belly sirloin capicola pig short ribs tail ham cupim ground round. Sausage salami venison, picanha rump pork belly doner pork tri-ti strip steak kevin pork chop. Pork loin prosciutto tongue filet mignon pancetta meatloaf tri-tip jowl fatback. Ham hock swine frankfurter venison corned beef pancetta. Tri-tip leberkas ham sirloin picanha cupim. Frankfurter boudin drumst filet mignon cow cupim hamburger tail prosciutto. Short loin turducken sirloin sausage. Turducken prosciutto pork chop leberkas ham hock, doner ham. Venison jerky picanha spare ribs boudin.</p>\r\n\r\n<p>Corned beef frankfurter bacon pork belly beef andouille, prosciutto doner chuck shankle pork pancetta tri-tip salami. Capicola biltong chuck leberkas shoulder filet mignon beef pork loin tri-tip tail doner turducken hamburger ham jerky. Kielbasa shank tail filet mignon, tongue jerky pork chop ball tip ground round beef ribs cupim brisket. Jerky salami ball tip strip steak, ham hock frankfurter bresaola kielbasa pork chop chicken shankle.</p>', '1508924522.jpg', 'Excepteur biltong turducken', '<p>Rump capicola boudin shank jerky alcatra pastrami beef corned beef. Leberkas venison filet mignon short ribs tri-tip. Tri-tip capicola salami ground round chicken. Spare ribs burgdoggen chuck andouille ham hock boudin. Bresaola capicola drumstick ground round t-bone sirloin. Turkey picanha chicken turducken landjaeger flank t-bone kevin. Pastrami pig leberkas rump landjaeger.</p>', 'Pancetta corned beef chicken picanha\r\nTurducken salami frankfurter burgdo\r\nTurkey shank ribeye meatloaf fatback', '<p>Venison alcatra rump flank ham hock landjaeger tri-tip. Pork loin corned beef tri-tip porchetta cupim. Pork pancetta tail pork chop, spare ribs chicken chuck kielbasa strip steak. Shoulder jowl venison, t-bone pork belly pork chop sausage corned beef burgdoggen bacon. Bacon chuck tenderloin andouille pancetta bresaola. Venison meatball tri-tip shankle swine. Cupim bacon sausage beef corned beef doner strip steak boudin salami pork fatback meatloaf ground round pastrami andouille. Sirloin filet mignon meatball shankle. Sirloin doner pork loin boudin filet mignon. Tongue jerky pig kevin.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'whoweare', '2017-11-09 23:04:35'),
(2, 'What We Do', NULL, NULL, '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proiden</p>\r\n\r\n<p>&nbsp;sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p>1914 translation by H. Rackham</p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'whatwedo', '2017-11-17 05:39:10'),
(3, 'Industry Reports', 'At vero eos et accusam?', 'Justo duo dolores et ea rebum?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore in blanditiis tempora aliquam omnis recusandae maxime fugiat error dolores vel reiciendis quia, laboriosam dolorum, ipsa corrupti. Laboriosam odio ducimus harum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio assumenda vitae iure, totam laboriosam voluptatibus delectus autem pariatur excepturi eligendi natus unde. Numquam vel quia dolore tempore consequuntur nobis architecto.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>', NULL, 'Stet clita kasd gubergren?', '<p>2222</p>', NULL, '<p>33333</p>', 'No sea takimata sanctus est?', 'At vero eos et accusam?', 'Justo duo dolores et ea rebum?', 'Stet clita kasd gubergren?', 'No sea takimata sanctus est?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', '<p>44444</p>', '<p>5555</p>', '<p>6666</p>', '<p>777</p>', '<p>9888</p>', NULL, NULL, NULL, 'reports', '2017-10-27 05:30:40'),
(4, 'Personnel Agreements', 'Freelancer Agreement (Local) 111', 'Freelancer Agreement (Local) 222', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', NULL, 'Heading 3', '<p>Description 2222</p>', '', '<p>Description 3333</p>', 'Heading 444', 'Heading 5555', 'Heading 66666', 'Heading 7777', 'Heading 888', 'Heading 999', '<p>Version: 11/08/2017</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>', '<p>Description 444</p>', '<p>Description 5555</p>', '<p>Description 6666</p>', '<p>Description 7777</p>', '<p>Description8888</p>', '<p>Description 9999</p>', 'Olympus-SEA-Feedback-Report-09March2017_1509357425.pdf', 'Test_File_Name_for_Upload_1509357425.pdf', 'legalpersonnel', '2017-10-30 04:27:05'),
(6, 'Commercial Agreements', NULL, 'Heading 2', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proiden</p>\r\n\r\n<p>&nbsp;sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p>1914 translation by H. Rackham</p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>', NULL, NULL, '<p>Description 2:</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Olympus_SEA_Feedback_Report_19Apr2017_1509357550.pdf', 'legalcommercial', '2017-10-30 04:29:10'),
(7, 'Co-Production Treaties', 'Heading 1Heading 1Heading 1', 'Heading 2 Heading 2', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proiden</p>\r\n\r\n<p>&nbsp;sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p>1914 translation by H. Rackham</p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>', NULL, NULL, '<p>Description 2: Heading 2</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Olympus-SEA-Feedback-Report-09March2017_1509357754.pdf', 'treaties', '2017-10-30 04:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('admin','company') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'company',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userphone_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bios` text COLLATE utf8_unicode_ci,
  `facebook_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `membership_start` date DEFAULT NULL,
  `membership_end` date DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci DEFAULT 'Inactive',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `surname`, `email`, `designation`, `userphone_number`, `profile_picture`, `bios`, `facebook_url`, `linkedIn_url`, `twitter_url`, `membership_start`, `membership_end`, `payment_status`, `password`, `created_at`, `updated_at`, `last_login`, `status`, `remember_token`) VALUES
(1, 'admin', 'pushpendra', NULL, 'pushpendra@singsys.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QjvIWnJnWH/XcUKrXHKYfeuqIuQRwar8M1TNWjmLjFtRzTX4eyAFa', '2017-10-08 18:30:00', '2017-12-12 07:06:21', '2017-12-12 12:36:21', 'Active', '2qI8SeHpFttGKmdR3LpzKxbs2NSkeblhSiEEaKa93KHOPbRtBAmPUsrDDGQN'),
(2, 'company', 'ramesh', 'def', 'chetandeep@singsys.com', 'junior@', '+6523232327', '02-Sign.png', 'bios', 'https://www.facebook.com/', 'https://in.linkedin.com/', 'taylorotwell', NULL, NULL, NULL, '$2y$10$714Ff/vuyC6feBBj0eeI6.OXmnFsAc3Gnk2XdCL5VMaiBfLh1W3ce', '2017-10-08 18:30:00', '2017-12-05 21:53:42', '2017-12-06 03:23:42', 'Active', 'Ju1svbaCJclZArCnlPTtyVHiaFWpyeXu3z0AE6piquwYKEn6HPqpTVgJeawC'),
(118, 'company', 'Tracy Chua', NULL, 'tracy@18degreescelsius.com', NULL, '+6597451805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:24', '2017-11-24 03:35:24', NULL, 'Active', NULL),
(119, 'company', 'Erezuwan Yunos Ibrahim', NULL, 'erez@adarapictures.com', NULL, '+6596440914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:25', '2017-11-24 03:35:25', NULL, 'Active', NULL),
(120, 'company', 'Kavitah Jayanandan', NULL, 'kavitah@ananyapictures.sg', NULL, '+6593842037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:25', '2017-11-24 03:35:25', NULL, 'Active', NULL),
(121, 'company', 'Jyotirmoy Saha', NULL, 'moy@augustmh.com', NULL, '+6565920577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:25', '2017-11-28 04:01:28', '2017-11-28 09:31:28', 'Active', 'Ids4oewg9Mjwy8jND0vyEdFN1jVH2TAcqbFBd0pSI7wzlEsqnYZZ0qaOLrDp'),
(122, 'company', 'Phang Kien Yip', NULL, 'phangko@broncomedia.com', NULL, '+6597377782', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:26', '2017-11-24 03:35:26', NULL, 'Active', NULL),
(123, 'company', 'Jaya Rathakrishnan', NULL, 'jaya@comicbook.com.sg', NULL, '+656702 2461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:26', '2017-11-24 03:35:26', NULL, 'Active', NULL),
(124, 'company', 'Huang Yushan', NULL, 'info@digitalblowfish.com', NULL, '+6562272779', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:26', '2017-11-24 03:35:26', NULL, 'Active', NULL),
(125, 'company', 'Kenneth Liang', NULL, 'kenneth.l@dreamforest.com', NULL, '+656837 2345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:27', '2017-11-24 03:35:27', NULL, 'Active', NULL),
(126, 'company', 'Kathy Lee', NULL, 'kathy@filmat36.com', NULL, '+6562561982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:27', '2017-11-24 03:35:27', NULL, 'Active', NULL),
(127, 'company', 'Mark Chua', NULL, 'marko@freeflow.com.sg', NULL, '+6596741069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:27', '2017-11-24 03:35:27', NULL, 'Active', NULL),
(128, 'company', 'Gozde Zehnder', NULL, 'gozde@freestatesite.com', NULL, '+6564447073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:27', '2017-11-24 03:35:27', NULL, 'Active', NULL),
(129, 'company', 'Bratina Tay', NULL, 'bratina@hoods-inc.com', NULL, '+6567297987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:28', '2017-11-24 03:35:28', NULL, 'Active', NULL),
(130, 'company', 'Panuksmi Hardjowirogo', NULL, 'panuksmi@margofilms.com', NULL, '+6563331955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:28', '2017-11-24 03:35:28', NULL, 'Active', NULL),
(131, 'company', 'Jeevan/Audrey', NULL, 'jeevan@monochromaticpictures.com', NULL, '+6598305636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:28', '2017-11-24 03:35:28', NULL, 'Active', NULL),
(132, 'company', 'Kenneth Goh', NULL, 'kenneth@monstrou.com', NULL, '+6591479132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:28', '2017-11-24 03:35:28', NULL, 'Active', NULL),
(133, 'company', 'Lai Jason', NULL, 'laijason@oak3films.com', NULL, '+6562262338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:29', '2017-11-24 03:35:29', NULL, 'Active', NULL),
(134, 'company', 'Pedro Tan', NULL, 'pedrotan@ochrepictures.com', NULL, '+6598160859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:29', '2017-11-24 03:35:29', NULL, 'Active', NULL),
(135, 'company', 'M Raihan Halim', NULL, 'raihan@papahanfilms.com', NULL, '+6568468408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:29', '2017-11-24 03:35:29', NULL, 'Active', NULL),
(136, 'company', 'Inez Ang', NULL, 'hello.inezang@gmail.com', NULL, '+6585336931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:29', '2017-11-24 03:35:29', NULL, 'Active', NULL),
(137, 'company', 'Rita Zahara', NULL, 'rita@reta.com.sg', NULL, '+6597629491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:30', '2017-11-24 03:35:30', NULL, 'Active', NULL),
(138, 'company', 'Sujimy Mohamad', NULL, 'sujimy@screenbox.com.sg', NULL, '+6563242463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:30', '2017-11-24 03:35:30', NULL, 'Active', NULL),
(139, 'company', 'Aileen Chan', NULL, 'aileen@singaporecinema.com', NULL, '+6563444966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:30', '2017-11-24 03:35:30', NULL, 'Active', NULL),
(140, 'company', 'Tan Chih Chong', NULL, 'chihchong@sittinginpictures.com', NULL, '+6596827855', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:31', '2017-11-24 03:35:31', NULL, 'Active', NULL),
(141, 'company', 'JK Saravana', NULL, 'jksaravana@tantrainc.sg', NULL, '+6563334542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:31', '2017-11-24 03:35:31', NULL, 'Active', NULL),
(142, 'company', 'Joan Chee', NULL, 'joanchee5@gmail.com', NULL, '+6597554840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:31', '2017-11-24 03:35:31', NULL, 'Active', NULL),
(143, 'company', 'Khim Loh, MD', NULL, 'info2@tmvc.sg', NULL, '+6563333051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:31', '2017-11-28 03:12:54', '2017-11-28 08:42:54', 'Active', '54QHLgRj4lgXMgufMQ9ndyaeetOliVWNbh0ZrA14lxo5Fl34reVHv5RGFU4c'),
(144, 'company', 'Mohamed Ali', NULL, 'mohamedali@themedia.com.sg', NULL, '+6598372456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:32', '2017-11-24 03:35:32', NULL, 'Active', NULL),
(145, 'company', 'Han Kwang Wei', NULL, 'kwangwei@threesixzero.com.sg', NULL, '+6568843875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:32', '2017-11-24 03:35:32', NULL, 'Active', NULL),
(146, 'company', 'Rehina Pereira', NULL, 'rehina@veriteproductions.com', NULL, '+6564711809', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:32', '2017-11-24 03:35:32', NULL, 'Active', NULL),
(147, 'company', 'Elvin Chuwa', NULL, 'elvin@vertigo.com.sg', NULL, '+6596861919', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:33', '2017-11-24 03:35:33', NULL, 'Active', NULL),
(148, 'company', 'Vanda Tan', NULL, 'vanda@wawapictures.com.sg', NULL, '+6563910560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:33', '2017-11-24 03:35:33', NULL, 'Active', NULL),
(149, 'company', 'TJ Lee', NULL, 'tjlee@weiyufilms.sg', NULL, '+6596749050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:33', '2017-11-24 03:35:33', NULL, 'Active', NULL),
(150, 'company', 'William Lim', NULL, 'william@xtreme.com.sg', NULL, '+6562231107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:34', '2017-11-24 03:35:34', NULL, 'Active', NULL),
(151, 'company', 'Mervyn Lim Jun Yu', NULL, 'mervyn@commune.sg', NULL, '+65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:34', '2017-11-24 03:35:34', NULL, 'Active', NULL),
(152, 'company', 'Gaurav Sharma', NULL, 'roughcutsproductions@gmail.com', NULL, '+659696 2573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:34', '2017-11-24 03:35:34', NULL, 'Active', NULL),
(153, 'company', 'Chow Wai Thong', NULL, 'waithong@augustpictures.com.sg', NULL, '+6590492373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:34', '2017-11-24 03:35:34', NULL, 'Active', NULL),
(154, 'company', 'Shafie Mustafa', NULL, 'shortmanfilms@gmail.com', NULL, '+658797 3445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WjfS9ehAHet9x3ifNBY.2emG4JgT83vsApOAeSt0Ip9R1N.omDsAW', '2017-11-24 03:35:35', '2017-11-24 03:35:35', NULL, 'Active', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_features`
--
ALTER TABLE `company_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `office_bearers`
--
ALTER TABLE `office_bearers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_content`
--
ALTER TABLE `static_content`
  ADD PRIMARY KEY (`static_content_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_features`
--
ALTER TABLE `company_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `office_bearers`
--
ALTER TABLE `office_bearers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `static_content`
--
ALTER TABLE `static_content`
  MODIFY `static_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_features`
--
ALTER TABLE `company_features`
  ADD CONSTRAINT `company_features` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD CONSTRAINT `company_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
