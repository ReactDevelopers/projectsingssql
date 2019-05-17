-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2018 at 12:16 PM
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
-- Table structure for table `c_activities`
--

CREATE TABLE `c_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_attendance`
--

CREATE TABLE `c_attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `present` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_broadcast`
--

CREATE TABLE `c_broadcast` (
  `id` int(10) NOT NULL,
  `principal_id` int(10) NOT NULL,
  `type` enum('general','draft','event') NOT NULL DEFAULT 'draft',
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_broadcast`
--

INSERT INTO `c_broadcast` (`id`, `principal_id`, `type`, `title`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 2, 'event', 'event1', 'School meeting', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-14 21:55:19', '2018-01-14 21:55:19'),
(2, 2, 'event', 'abcdef', 'ddddd', '2018-01-01 00:00:00', '2018-01-02 00:00:00', '2018-01-15 00:06:07', '2018-01-15 00:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `c_bulletboard`
--

CREATE TABLE `c_bulletboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `attending` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_classrooms`
--

CREATE TABLE `c_classrooms` (
  `id` int(11) NOT NULL,
  `principal_id` int(11) DEFAULT NULL,
  `classTitle` varchar(255) DEFAULT NULL,
  `classStatus` enum('0','1') DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_classrooms`
--

INSERT INTO `c_classrooms` (`id`, `principal_id`, `classTitle`, `classStatus`, `created_at`, `updated_at`) VALUES
(1, 2, 'Class 1', '1', '2017-12-24 14:02:26', '2018-01-10 04:46:34'),
(2, 2, 'Class 2', '1', '2017-12-24 14:02:34', '2018-01-11 05:11:27'),
(3, 2, 'Class 3', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(4, 2, 'Class 4', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(5, 2, 'Class 5', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(6, 2, 'Class 6', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(7, 2, 'Class 7', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(8, 2, 'Class 8', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(9, 2, 'Class 9', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(10, 2, 'Class 10', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(11, 2, 'kinder123', '1', '2018-01-06 06:29:33', '2018-01-09 10:14:59'),
(12, 2, 'Kinder Garden 003', '1', '2018-01-09 10:18:05', '2018-01-09 10:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `c_classroom_student`
--

CREATE TABLE `c_classroom_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_classroom_student`
--

INSERT INTO `c_classroom_student` (`id`, `class_id`, `std_id`, `created_at`, `updated_at`) VALUES
(1, 2, 13, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(2, 2, 15, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(3, 2, 14, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(4, 2, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_classroom_teacher`
--

CREATE TABLE `c_classroom_teacher` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_classroom_teacher`
--

INSERT INTO `c_classroom_teacher` (`id`, `class_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(5, 1, 43, '2017-12-25 17:04:21', '2017-12-25 17:04:21'),
(6, 1, 44, '2017-12-26 00:08:57', '2017-12-26 00:08:57'),
(7, 3, 45, '2017-12-26 00:11:44', '2017-12-26 00:11:44'),
(8, 1, 53, '2018-01-02 00:02:47', '2018-01-02 00:02:47'),
(9, 1, 54, '2018-01-02 03:39:25', '2018-01-02 03:39:25'),
(10, 1, 55, '2018-01-02 03:40:32', '2018-01-02 03:40:32'),
(11, 1, 56, '2018-01-02 03:41:40', '2018-01-02 03:41:40'),
(12, 1, 57, '2018-01-02 03:43:21', '2018-01-02 03:43:21'),
(13, 1, 58, '2018-01-02 03:45:51', '2018-01-02 03:45:51'),
(14, 1, 59, '2018-01-02 03:46:26', '2018-01-02 03:46:26'),
(15, 1, 61, '2018-01-02 04:22:43', '2018-01-02 04:22:43'),
(16, 1, 62, '2018-01-02 04:24:44', '2018-01-02 04:24:44'),
(17, 1, 63, '2018-01-02 04:26:20', '2018-01-02 04:26:20'),
(18, 1, 64, '2018-01-02 04:28:35', '2018-01-02 04:28:35'),
(19, 1, 65, '2018-01-02 04:29:13', '2018-01-02 04:29:13'),
(20, 1, 66, '2018-01-02 05:30:44', '2018-01-02 05:30:44'),
(25, 1, 45, '2018-01-07 22:56:51', '2018-01-07 22:56:51'),
(34, 12, 42, '2018-01-09 04:48:05', '2018-01-09 04:48:05'),
(35, 12, 43, '2018-01-09 04:48:05', '2018-01-09 04:48:05'),
(36, 12, 44, '2018-01-09 04:48:05', '2018-01-09 04:48:05'),
(37, 12, 67, '2018-01-09 04:49:03', '2018-01-09 04:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `c_configs`
--

CREATE TABLE `c_configs` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `c_configs`
--

INSERT INTO `c_configs` (`key`, `value`) VALUES
('admin_theme', 'skin-aquamarine2'),
('contact_number', '+65 63375474'),
('copyright_text', 'Copyright © 2017 Chirppe'),
('default_latitude', ''),
('default_longitude', ''),
('download_app_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
('download_app_title', 'Download App'),
('format_date', 'd/m/Y'),
('format_time', 'h:i A'),
('full_address', '42, IInd St, Chapel \r\nJurong Island\r\nSingapore 675656'),
('help_email', 'support@chirppe.com'),
('info_email', 'info@chirppe.com'),
('newsletter_text', 'Subscribe to our newsletter to get the updates and know what’s happening around We don’t spam.'),
('newsletter_title', 'Stay In touch'),
('office_address', 'Address to be changed'),
('otp_expired', '5000'),
('otp_length', '6'),
('otp_message', 'Thank you for using Chirppe. Your OTP is %s.'),
('otp_shuffle', '45987343049568802934857637283746574839234567902394856775483929384529384756783293845789'),
('postman_collection', ''),
('site_description', 'Lorem ipsum dolor sit amet, Lorem ipsum'),
('site_email', 'info@chirppe.com'),
('site_environment', 'development'),
('site_name', 'Chirppe Web Portal'),
('smtp_host', 'smtp.gmail.com'),
('smtp_mode', 'tls'),
('smtp_password', 'rituyadav'),
('smtp_port', '587'),
('smtp_username', 'singsys17@gmail.com'),
('social_facebook_url', 'https://facebook.com'),
('social_googleplus_url', 'https://plus.google.com/'),
('social_instagram_url', 'https://instagram.com'),
('social_linkedin_url', 'https://linkedin.com'),
('social_twitter_url', 'https://twitter.com');

-- --------------------------------------------------------

--
-- Table structure for table `c_email_template`
--

CREATE TABLE `c_email_template` (
  `email_template_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_email_template`
--

INSERT INTO `c_email_template` (`email_template_id`, `title`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Chirppe_account_confirmation', 'Chirppe Web Portal - Account Confirmation', 'Dear {NAME},\r\n\r\nYour account is activated on {SITENAME}. Visit our {WEBSITE}  and  use below credentials to login into the application:\r\n\r\nEmail: {EMAIL}\r\nPassword: {PASSWORD}\r\n\r\nThanks {SITENAME}', '2017-12-04 16:53:53', '2018-01-05 05:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `c_gallery`
--

CREATE TABLE `c_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_invitation_codes`
--

CREATE TABLE `c_invitation_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `invitation_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_invitation_codes`
--

INSERT INTO `c_invitation_codes` (`id`, `user_id`, `invitation_code`, `status`, `created_at`, `updated_at`) VALUES
(7, 35, 'VZRAHVDGOL', 'pending', '2017-12-25 09:12:55', '2017-12-25 09:12:55'),
(8, 36, 'HHTIGLHLKJ', 'active', '2017-12-25 09:13:02', '2017-12-25 09:16:22'),
(9, 37, 'YMRB7LCC3O', 'pending', '2017-12-25 11:41:23', '2017-12-25 11:41:23'),
(11, 42, 'XCYHR779MK', 'active', '2017-12-25 22:49:30', '2017-12-25 22:51:09'),
(12, 43, 'NW2M9VSZAU', 'active', '2017-12-26 04:04:21', '2017-12-26 04:05:12'),
(13, 44, 'QZEJNIP1YJ', 'pending', '2017-12-26 05:38:57', '2017-12-26 05:38:57'),
(14, 45, 'EFYMGLTT30', 'pending', '2017-12-26 05:41:45', '2017-12-26 05:41:45'),
(15, 46, '640D064VFM', 'pending', '2017-12-26 05:51:33', '2017-12-26 05:51:33'),
(16, 47, 'SRUCSLIWM6', 'pending', '2017-12-26 05:55:57', '2017-12-26 05:55:57'),
(17, 48, 'GRICMD6FBF', 'pending', '2017-12-26 05:56:52', '2017-12-26 05:56:52'),
(18, 49, 'P0VZT7KHLY', 'pending', '2017-12-26 05:58:05', '2017-12-26 05:58:05'),
(19, 50, '2PV0PI1BVN', 'pending', '2017-12-26 12:44:17', '2017-12-26 12:44:17'),
(20, 51, 'MSWCGYKSNH', 'pending', '2017-12-27 10:13:38', '2017-12-27 10:13:38'),
(21, 52, 'UACSOPUPMK', 'pending', '2017-12-27 10:27:48', '2017-12-27 10:27:48'),
(35, 66, 'PVUJWGRTFC', 'pending', '2018-01-02 11:00:45', '2018-01-02 11:00:45'),
(36, 67, '4ZH80IFXOV', 'pending', '2018-01-02 11:01:52', '2018-01-02 11:01:52'),
(38, 69, 'QLLOPKARI7', 'active', '2018-01-02 13:23:06', '2018-01-02 13:24:06'),
(44, 76, 'HSKVB291TO', 'pending', '2018-01-04 07:15:29', '2018-01-04 07:15:29'),
(45, 77, 'CNWOWHN2L7', 'pending', '2018-01-10 04:58:44', '2018-01-10 04:58:44'),
(46, 78, 'I6NNR6AGMM', 'pending', '2018-01-10 05:02:45', '2018-01-10 05:02:45'),
(47, 79, '4UEHZNLFH8', 'active', '2018-01-10 05:14:08', '2018-01-10 05:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `c_lessonplan`
--

CREATE TABLE `c_lessonplan` (
  `id` int(10) UNSIGNED NOT NULL,
  `lessonname` varchar(255) NOT NULL,
  `class_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `remarks` int(11) NOT NULL,
  `upload_file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_meal`
--

CREATE TABLE `c_meal` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_meal_id` int(10) UNSIGNED NOT NULL,
  `property_meal_id` int(10) UNSIGNED NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `time` date NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_migrations`
--

CREATE TABLE `c_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_migrations`
--

INSERT INTO `c_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_12_11_091933_create_users_table', 1),
(2, '2017_12_12_045607_settings', 1),
(3, '2017_12_15_091027_email_template', 1),
(4, '2017_12_15_092604_c_parents', 1),
(5, '2017_12_15_093246_c_teachers', 1),
(6, '2017_12_15_095649_c_students', 1),
(7, '2017_12_15_102903_user_type', 1),
(8, '2017_12_15_103240_c_classroom', 1),
(9, '2017_12_15_112642_c_attendance', 1),
(10, '2017_12_15_112917_c_classroom_teacher', 1),
(11, '2017_12_15_113218_c_classroom_student', 1),
(12, '2017_12_15_113636_c_verification', 1),
(13, '2017_12_15_114155_c_gallery', 1),
(14, '2017_12_15_114201_c_notice', 1),
(15, '2017_12_15_115753_c_type_meal', 1),
(16, '2017_12_15_115806_c_property_meal', 1),
(17, '2017_12_15_115821_c_meal', 1),
(18, '2017_12_15_121031_c_nap', 1),
(19, '2017_12_15_121042_c_observation', 1),
(20, '2017_12_15_121135_c_bulletboard', 1),
(21, '2017_12_15_121158_c_activities', 1),
(22, '2017_12_15_121207_c_tagging', 1),
(23, '2017_12_15_121226_c_lesson_plan', 1),
(24, '2017_12_15_121235_c_potty', 1),
(25, '2017_12_15_125417_static_content', 1),
(26, '2017_12_15_130132_static_content_home', 1),
(27, '2017_12_15_130137_static_content_home2', 1),
(28, '2017_12_20_093057_c_invitation_code', 1);

-- --------------------------------------------------------

--
-- Table structure for table `c_nap`
--

CREATE TABLE `c_nap` (
  `id` int(10) UNSIGNED NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_notice`
--

CREATE TABLE `c_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `c_parents`
--

CREATE TABLE `c_parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_parents`
--

INSERT INTO `c_parents` (`id`, `user_id`, `student_id`, `created_at`, `updated_at`) VALUES
(7, 35, 7, '2017-12-24 22:12:55', '2017-12-24 22:12:55'),
(8, 36, 7, '2017-12-24 22:13:02', '2017-12-24 22:13:02'),
(9, 37, 8, '2017-12-25 00:41:23', '2017-12-25 00:41:23'),
(10, 46, 9, '2017-12-26 00:21:33', '2017-12-26 00:21:33'),
(11, 47, 10, '2017-12-26 00:25:57', '2017-12-26 00:25:57'),
(12, 48, 11, '2017-12-26 00:26:52', '2017-12-26 00:26:52'),
(13, 49, 12, '2017-12-26 00:28:05', '2017-12-26 00:28:05'),
(14, 50, 13, '2017-12-26 07:14:17', '2017-12-26 07:14:17'),
(15, 51, 14, '2017-12-27 04:43:38', '2017-12-27 04:43:38'),
(25, 76, 22, '2018-01-04 01:45:29', '2018-01-04 01:45:29'),
(26, 69, 21, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(28, 69, 22, '2018-01-13 06:26:53', '2018-01-13 06:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `c_password_resets`
--

CREATE TABLE `c_password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_password_resets`
--

INSERT INTO `c_password_resets` (`email`, `token`, `created_at`) VALUES
('manishmahant@singsys.com', '$2y$10$RuKzKdn0Wd./CwX32OsgN.S.o7tLr8BVvo5PHnrPwy8ifG0535sMu', '2017-12-26 00:42:22'),
('chetandeep@singsys.com', '$2y$10$xt7ryy1dN7lEKBB04m/R3.WR5WaGGBHq.JG8fniDSiNBslD2jUkUy', '2017-12-27 09:13:27'),
('chetandeep+2@singsys.com', '$2y$10$lLoex1wDlfc4C/.P/2apQu1TAFZiNwIb.0m2kiN8BJNV4euloMBfC', '2018-01-02 03:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `c_potty`
--

CREATE TABLE `c_potty` (
  `id` int(10) UNSIGNED NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wet` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `bowel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_property_meal`
--

CREATE TABLE `c_property_meal` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_meal_id` int(10) UNSIGNED NOT NULL,
  `items` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_property_meal`
--

INSERT INTO `c_property_meal` (`id`, `type_meal_id`, `items`, `created_at`, `updated_at`) VALUES
(1, 1, 'Milk', '2018-01-12 20:36:10', NULL),
(2, 1, 'Water', '2018-01-13 01:42:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_roles`
--

CREATE TABLE `c_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('admin','principal','student','teacher','parent') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_roles`
--

INSERT INTO `c_roles` (`id`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-12-21 06:14:46', '2017-12-21 06:14:46'),
(2, 'principal', '2017-12-21 06:15:03', '2017-12-21 06:15:03'),
(3, 'teacher', '2017-12-22 04:11:39', '2017-12-22 04:11:39'),
(4, 'parent', '2017-12-22 04:12:57', '2017-12-22 04:12:57'),
(5, 'student', '2017-12-22 04:12:57', '2017-12-22 04:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `c_static_content`
--

CREATE TABLE `c_static_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_static_content_home`
--

CREATE TABLE `c_static_content_home` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_static_content_home`
--

INSERT INTO `c_static_content_home` (`id`, `description`, `heading`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 'Chirppe is a school management web based application to enhance the school activities pertaining to students and keep the parents aware on the student’s activities and updates.', 'Bridge Gap between parents and their kids at school', 'Teachers at school easily note down observations around the day and use the application to:\r\nUpdate parents regarding child\'s nap, meals and potty\r\nGet quick & easy consent from parents\r\nRecord child\'s growth\r\nChat with parents\r\nGet reminders from parents\r\nShare photos and videos', '2017-12-04 16:53:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_static_content_home2`
--

CREATE TABLE `c_static_content_home2` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_static_content_home2`
--

INSERT INTO `c_static_content_home2` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'crop_20171221040722.png', 'Mauris non tempor quam, et lacinia sapien.', '2017-12-04 16:53:53', NULL),
(2, 'crop_20171221040722.png', 'ccddccd', '2017-12-04 16:53:53', NULL),
(3, 'crop_20171221040722.png', 'cdcddcdcdc', '2017-12-04 16:53:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_students`
--

CREATE TABLE `c_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `bloodtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian1_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian1_contact_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian2_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian2_contact_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drugs_allergy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `studentStatus` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_students`
--

INSERT INTO `c_students` (`id`, `user_id`, `firstname`, `lastname`, `profile_image`, `gender`, `date_of_birth`, `address`, `postal_code`, `class_id`, `bloodtype`, `guardian1_name`, `guardian1_contact_no`, `relationship1`, `guardian2_name`, `guardian2_contact_no`, `relationship2`, `drugs_allergy`, `medical_condition`, `height`, `weight`, `studentStatus`, `created_at`, `updated_at`) VALUES
(7, 25, 'ABD', 'ASD', NULL, 'male', '2017-12-04', 'dsda', '12345678', 1, 'B +ve', 'Man', '123456789', 'father', 'Mani', '987654321', 'mother', 'fcgvhjb,sadgfg', 'asdfg,asdfg', NULL, NULL, '1', '2017-12-24 22:12:55', '2017-12-24 22:12:55'),
(8, 25, 'sfdghhfgds', 'asdfggdsf', NULL, 'male', '2017-12-04', 'dsfgb', '1234', 6, 'O +ve', 'aserdf', NULL, 'mother', NULL, NULL, NULL, 'fdg', 'szdf', NULL, NULL, '1', '2017-12-25 00:41:23', '2017-12-25 00:41:23'),
(9, 25, 's1', NULL, NULL, 'male', '2009-04-13', 'jdrtsdhdcc', '1234', 1, NULL, 'g1', NULL, 'uncle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 00:21:33', '2017-12-26 00:21:33'),
(10, 25, 's2', NULL, NULL, 'male', '2008-12-22', 'jdrtsdhdccsx', '1234', 1, NULL, 'g2', NULL, 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 00:25:56', '2017-12-26 00:25:56'),
(11, 25, 's3', NULL, NULL, 'male', '2009-12-21', 'jdrtsdhdccss', '1234', 1, NULL, 'g3', NULL, 'mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 00:26:52', '2017-12-26 00:26:52'),
(12, 25, 's4', NULL, NULL, 'male', '2008-12-14', 'jdrtsdhdcc', '1234', 5, NULL, 'g4', NULL, 'uncle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 00:28:04', '2017-12-26 00:28:04'),
(13, 3, 's5', NULL, NULL, 'male', '2017-12-12', 'jdrtsdh', '1234', 2, NULL, 'manish', NULL, 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 07:14:17', '2017-12-26 07:14:17'),
(14, 4, 'dds', NULL, NULL, 'male', '2017-12-05', 'jdrtsdh', '213112', 1, NULL, '21343322', NULL, 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-27 04:43:37', '2017-12-27 04:43:37'),
(15, 2, 'scdsc', NULL, NULL, 'male', '2017-12-04', 'dcd', '13232', 1, NULL, 'saddas', NULL, 'mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-27 04:57:48', '2017-12-27 04:57:48'),
(20, 2, 'raveena', NULL, NULL, 'male', '2018-01-01', 'High Street Road', '12345', 1, 'A+', 'manish', '123435676', 'uncle', NULL, NULL, NULL, 'Paracetamol, lorem ipsum, dolor sitamet, concsectetur', NULL, NULL, NULL, '1', '2018-01-02 07:34:29', '2018-01-02 07:34:29'),
(21, 2, 'sultan', NULL, 'uploads/user_profile/2_20180114115813.png', 'female', '2018-01-03', 'High Street Road 222222', '12345', 1, NULL, 'manish', '12345677', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-01-02 07:53:06', '2018-01-14 06:28:15'),
(22, 2, 'ssaasdds', NULL, NULL, 'male', '2017-12-05', 'jdrtsdh', '213112', 1, NULL, 'dsaadssd', 'father', 'sadasd', 'sdsd', '123', '132', '2', '2', '1', '2017-12-27 10:13:37', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_tagging`
--

CREATE TABLE `c_tagging` (
  `id` int(10) UNSIGNED NOT NULL,
  `std_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_teachers`
--

CREATE TABLE `c_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `principal_id` int(11) DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacherStatus` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_teachers`
--

INSERT INTO `c_teachers` (`id`, `user_id`, `principal_id`, `gender`, `date_of_birth`, `address`, `postal_code`, `teacherStatus`, `created_at`, `updated_at`) VALUES
(4, 42, 25, 'male', NULL, NULL, NULL, '1', '2017-12-25 11:49:30', '2017-12-25 11:49:30'),
(5, 43, 25, 'male', NULL, NULL, NULL, '1', '2017-12-25 17:04:21', '2017-12-25 17:04:21'),
(6, 44, 25, 'male', NULL, NULL, NULL, '1', '2017-12-26 00:08:57', '2017-12-26 00:08:57'),
(7, 45, 25, 'male', NULL, NULL, NULL, '1', '2017-12-26 00:11:44', '2017-12-26 00:11:44'),
(20, 66, 2, 'male', NULL, NULL, NULL, '1', '2018-01-02 05:30:44', '2018-01-02 05:30:44'),
(21, 67, 2, 'male', NULL, NULL, NULL, '1', '2018-01-02 05:31:52', '2018-01-02 05:31:52'),
(22, 77, 2, 'male', NULL, NULL, NULL, '1', '2018-01-09 23:28:44', '2018-01-09 23:28:44'),
(23, 78, 2, 'male', NULL, NULL, NULL, '1', '2018-01-09 23:32:45', '2018-01-09 23:32:45'),
(24, 79, 2, 'male', NULL, NULL, NULL, '1', '2018-01-09 23:44:08', '2018-01-09 23:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `c_type_meal`
--

CREATE TABLE `c_type_meal` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('solid','liquid') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_type_meal`
--

INSERT INTO `c_type_meal` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'liquid', NULL, NULL),
(2, 'solid', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_users`
--

CREATE TABLE `c_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `date_of_birth` date DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userStatus` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_users`
--

INSERT INTO `c_users` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `mobile_no`, `gender`, `date_of_birth`, `profile_image`, `remember_token`, `userStatus`, `created_at`, `updated_at`) VALUES
(1, 'Chirppe Admin', '', 'info@chirppe.com', '$2y$10$LcUUZ6Qduw53OWqpKl9gDOKBeuoiigoMaPquSH9s6QYPS2cPllkFC', NULL, '', 'male', NULL, 'uploads/admins/20180103052346.png', 'nXvgu9lLlrXszOZzbeJfWwGbMmAgouz9wFrsHniqQ7eD7NCBb5FN7Z4f4lqC', '1', '2017-12-04 16:53:53', '2018-01-02 23:53:47'),
(2, 'Chetan', 'Deep', 'chetandeep@singsys.com', '$2y$10$m7OixRbU1cOn39Mk0YlEMeM9NWzrA7tGoysQNoRNYhid1kIDgtZpa', 'High Street Road', '123456789', 'male', '2018-01-01', NULL, 'eyjHqsqrq9utOYZUl4zx3GA49HSZvrN5oepIrEyVViFnRDxHRxVgBc48UNfq', '1', '2017-12-04 16:53:53', '2018-01-15 00:16:40'),
(25, 'Emily1', 'Parker1', 'manishmahant@singsys.com', '$2y$10$KseU99NrlYJLJcPaNTG5q.FydF1LdFFe9iETBg1cpxRKyem6sqe.e', NULL, '89521456', 'male', NULL, 'uploads/admins/20171223044931.png', 'wo4ZXkgrPDT9nRVuRQr1BEz43DCYxlCuLWZ2OJGsEUwatyoJS7fq6XRd7yNW', '1', '2017-12-22 18:03:35', '2017-12-26 01:17:44'),
(26, 'Chetan', 'Deep Singh', 'chetandeep+1@singsys.com', '$2y$10$9wvg8mJFswk0diTAxYcz..FuRRE5/QD62lSOduejFefR2X8DRCBp.', NULL, '123456543', 'male', NULL, 'uploads/admins/20171223044931.png', NULL, '1', '2017-12-22 21:37:03', '2017-12-22 21:37:03'),
(27, 'Chetan', 'Deep Singh', 'chetandeep+2@singsys.com', '$2y$10$d4DMHEyA/RfpkZGXwUnpRechR2/w9MBxcuKn5WdtvrWsKBTFSxFLe', NULL, '1234567890', 'male', NULL, NULL, NULL, '1', '2017-12-23 03:39:24', '2017-12-23 03:39:24'),
(35, 'Man', NULL, 'manishmahant+1@singsys.com', '$2y$10$KseU99NrlYJLJcPaNTG5q.FydF1LdFFe9iETBg1cpxRKyem6sqe.e', NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-24 22:12:55', '2017-12-24 22:12:55'),
(36, 'Manish', 'Mahant', 'manishmahant+2@singsys.com', '$2y$10$jbDq2rvBCdJeL8n8rZK3JuWuIdoMqiO2rRxcd0EcM26BaeSeBnJWe', NULL, '125678975', 'male', NULL, NULL, 'GJLbJ893dWx3X1qeQ2cxh7A19URYaJHWqhqVPzPmTdOTSPSYkaz4kuklYd6i', '1', '2017-12-24 22:13:02', '2017-12-24 22:16:22'),
(37, 'aserdf', NULL, 'manishmahant+6@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-25 00:41:23', '2017-12-25 00:41:23'),
(42, 'Manish', 'fxfchgvjh', 'manishmahant+1111@singsys.com', '$2y$10$.K4pU0CwmjU7QVas0UWLYOSsWOot6HWzWCeRaXaYX1V5OlpUKWlYK', NULL, '123456237', 'male', NULL, NULL, NULL, '1', '2017-12-25 11:49:30', '2017-12-25 11:51:09'),
(43, 'Manish 1', 'Mahant', 'manishmahant+111@singsys.com', '$2y$10$VbmrVGiEZYgyqyA4OXOAEe/sta0TFs.nvFY1lp9ARbkPRGNC/HOvm', NULL, '234534567', 'male', NULL, NULL, 'q6xbQOhu9j8VOGnDvDax922tISZjoNUUg1NMyDbGC9HO8cvkPSew6Jo03q87', '1', '2017-12-25 17:04:21', '2017-12-25 17:05:12'),
(44, 'staff1', 'staff2', 'chetandeep+5@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 00:08:57', '2017-12-26 00:08:57'),
(45, 'staff22', NULL, 'chetandeep+6@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 00:11:44', '2017-12-26 00:11:44'),
(46, 'g1', NULL, 'chetandeep+9@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 00:21:33', '2017-12-26 00:21:33'),
(47, 'g2', NULL, 'chetandeep+34@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 00:25:57', '2017-12-26 00:25:57'),
(48, 'g3', NULL, 'chetandeep+34@singsys.co5', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 00:26:52', '2017-12-26 00:26:52'),
(49, 'g4', NULL, 'chetandeep+19@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 00:28:04', '2017-12-26 00:28:04'),
(50, 'manish', NULL, 'chetandeep+16@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-26 07:14:17', '2017-12-26 07:14:17'),
(51, '213', NULL, 'chetandeep+13@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-27 04:43:38', '2017-12-27 04:43:38'),
(52, 'saddas', NULL, 'chetandeep+213@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2017-12-27 04:57:48', '2017-12-27 04:57:48'),
(66, 'staff123', NULL, 'chetandeep+90@singsys.com', '$2y$10$F5WTjAEeF9n3nrB.FIUoK.kQXUvJl2hNao2TKlKmwAor491XaGHMe', NULL, NULL, 'male', NULL, NULL, NULL, '1', '2018-01-02 05:30:44', '2018-01-02 05:30:44'),
(67, 'staff321', NULL, 'chetandeep+89@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2018-01-02 05:31:52', '2018-01-02 05:31:52'),
(69, 'sultan jr', 'junior', 'chetandeep+78@singsys.com', '$2y$10$F5WTjAEeF9n3nrB.FIUoK.kQXUvJl2hNao2TKlKmwAor491XaGHMe', 'High Street Road 222222', '1234567', 'female', '2018-01-01', NULL, 'i3lpP0KXEB982RURjzdzwjaPS2oCJJhkToAbaGDvcmkelcPk406indzP7ysF', '1', '2018-01-02 07:53:06', '2018-01-15 00:17:28'),
(76, 'ssaasdds', NULL, 'chetandeep+77@singsys.com', NULL, NULL, NULL, 'male', NULL, NULL, NULL, '0', '2018-01-04 01:45:28', '2018-01-04 01:45:28'),
(79, 'shubham', 'sir', 'chetandeep+444@singsys.com', '$2y$10$6SZVYTGn.H/eLAab9YtDoO9wMMufOTdCnK3scVLXWGoO4BYqbtffm', NULL, '12345678', 'male', NULL, 'uploads/principal_profile/20180103062034.png', 'lrCuOPtzdIoe2tVhWumYxJWqzS0uFdvxhHFAk5hAtBrUKR86WkmWqAHl2KcU', '1', '2018-01-09 23:44:08', '2018-01-09 23:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `c_user_roles`
--

CREATE TABLE `c_user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_status` enum('0','1') DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_user_roles`
--

INSERT INTO `c_user_roles` (`id`, `user_id`, `role_id`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '2017-12-21 17:18:59', '2017-12-21 17:18:59'),
(2, 2, 2, '1', '2017-12-21 17:19:18', '2017-12-21 17:19:18'),
(25, 25, 2, '1', '2017-12-23 05:03:35', '2017-12-23 05:03:35'),
(26, 2, 3, '1', '2017-12-21 17:19:18', '2017-12-21 17:19:18'),
(27, 1, 3, '1', '2017-12-21 17:18:59', '2017-12-21 17:18:59'),
(28, 26, 2, '1', '2017-12-23 08:37:03', '2017-12-23 08:37:03'),
(29, 27, 2, '1', '2017-12-23 14:39:24', '2017-12-23 14:39:24'),
(30, 35, 4, '1', '2017-12-25 09:12:55', '2017-12-25 09:12:55'),
(31, 36, 4, '1', '2017-12-25 09:13:02', '2017-12-25 09:13:02'),
(32, 37, 4, '1', '2017-12-25 11:41:23', '2017-12-25 11:41:23'),
(34, 42, 3, '1', '2017-12-25 22:49:30', '2017-12-25 22:49:30'),
(35, 43, 3, '1', '2017-12-26 04:04:21', '2017-12-26 04:04:21'),
(36, 44, 3, '1', '2017-12-26 05:38:57', '2017-12-26 05:38:57'),
(37, 45, 3, '1', '2017-12-26 05:41:45', '2017-12-26 05:41:45'),
(38, 46, 4, '1', '2017-12-26 05:51:33', '2017-12-26 05:51:33'),
(39, 47, 4, '1', '2017-12-26 05:55:57', '2017-12-26 05:55:57'),
(40, 48, 4, '1', '2017-12-26 05:56:52', '2017-12-26 05:56:52'),
(41, 49, 4, '1', '2017-12-26 05:58:05', '2017-12-26 05:58:05'),
(42, 50, 4, '1', '2017-12-26 12:44:17', '2017-12-26 12:44:17'),
(43, 51, 4, '1', '2017-12-27 10:13:38', '2017-12-27 10:13:38'),
(44, 52, 4, '1', '2017-12-27 10:27:48', '2017-12-27 10:27:48'),
(45, 53, 3, '1', '2018-01-02 05:32:47', '2018-01-02 05:32:47'),
(46, 54, 3, '1', '2018-01-02 09:09:25', '2018-01-02 09:09:25'),
(47, 55, 3, '1', '2018-01-02 09:10:32', '2018-01-02 09:10:32'),
(48, 56, 3, '1', '2018-01-02 09:11:40', '2018-01-02 09:11:40'),
(49, 57, 3, '1', '2018-01-02 09:13:21', '2018-01-02 09:13:21'),
(50, 58, 3, '1', '2018-01-02 09:15:51', '2018-01-02 09:15:51'),
(51, 59, 3, '1', '2018-01-02 09:16:26', '2018-01-02 09:16:26'),
(52, 60, 4, '1', '2018-01-02 09:37:49', '2018-01-02 09:37:49'),
(53, 61, 3, '1', '2018-01-02 09:52:43', '2018-01-02 09:52:43'),
(54, 62, 3, '1', '2018-01-02 09:54:44', '2018-01-02 09:54:44'),
(55, 63, 3, '1', '2018-01-02 09:56:20', '2018-01-02 09:56:20'),
(56, 64, 3, '1', '2018-01-02 09:58:36', '2018-01-02 09:58:36'),
(57, 65, 3, '1', '2018-01-02 09:59:13', '2018-01-02 09:59:13'),
(58, 66, 3, '1', '2018-01-02 11:00:45', '2018-01-02 11:00:45'),
(59, 67, 3, '1', '2018-01-02 11:01:52', '2018-01-02 11:01:52'),
(60, 68, 4, '1', '2018-01-02 13:04:29', '2018-01-02 13:04:29'),
(61, 69, 4, '1', '2018-01-02 13:23:06', '2018-01-02 13:23:06'),
(67, 76, 4, '1', '2018-01-04 07:15:29', '2018-01-04 07:15:29'),
(99, 79, 3, '1', '2018-01-10 05:14:08', '2018-01-10 05:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `c_verification`
--

CREATE TABLE `c_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `otp_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `verififcation_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_activities`
--
ALTER TABLE `c_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_attendance`
--
ALTER TABLE `c_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_user_id_foreign` (`user_id`),
  ADD KEY `attendance_class_id_foreign` (`class_id`);

--
-- Indexes for table `c_broadcast`
--
ALTER TABLE `c_broadcast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_bulletboard`
--
ALTER TABLE `c_bulletboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_classrooms`
--
ALTER TABLE `c_classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_classroom_student`
--
ALTER TABLE `c_classroom_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_student_class_id_foreign` (`class_id`),
  ADD KEY `classroom_student_std_id_foreign` (`std_id`);

--
-- Indexes for table `c_classroom_teacher`
--
ALTER TABLE `c_classroom_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_teacher_class_id_foreign` (`class_id`),
  ADD KEY `classroom_teacher_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `c_configs`
--
ALTER TABLE `c_configs`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `c_email_template`
--
ALTER TABLE `c_email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `c_gallery`
--
ALTER TABLE `c_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_invitation_codes`
--
ALTER TABLE `c_invitation_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitation_code_user_id_foreign` (`user_id`);

--
-- Indexes for table `c_lessonplan`
--
ALTER TABLE `c_lessonplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_meal`
--
ALTER TABLE `c_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_type_meal_id_foreign` (`type_meal_id`),
  ADD KEY `meal_property_meal_id_foreign` (`property_meal_id`),
  ADD KEY `meal_std_id_foreign` (`std_id`);

--
-- Indexes for table `c_migrations`
--
ALTER TABLE `c_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_nap`
--
ALTER TABLE `c_nap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nap_std_id_foreign` (`std_id`);

--
-- Indexes for table `c_notice`
--
ALTER TABLE `c_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_std_id_foreign` (`std_id`);

--
-- Indexes for table `c_observation`
--
ALTER TABLE `c_observation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `observation_std_id_foreign` (`std_id`),
  ADD KEY `observation_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `c_parents`
--
ALTER TABLE `c_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parents_user_id_foreign` (`user_id`);

--
-- Indexes for table `c_password_resets`
--
ALTER TABLE `c_password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `c_potty`
--
ALTER TABLE `c_potty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `potty_std_id_foreign` (`std_id`);

--
-- Indexes for table `c_property_meal`
--
ALTER TABLE `c_property_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_meal_type_meal_id_foreign` (`type_meal_id`);

--
-- Indexes for table `c_roles`
--
ALTER TABLE `c_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_static_content`
--
ALTER TABLE `c_static_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_static_content_home`
--
ALTER TABLE `c_static_content_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_static_content_home2`
--
ALTER TABLE `c_static_content_home2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_students`
--
ALTER TABLE `c_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_tagging`
--
ALTER TABLE `c_tagging`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_std_id_foreign` (`std_id`),
  ADD KEY `tagging_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `c_teachers`
--
ALTER TABLE `c_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

--
-- Indexes for table `c_type_meal`
--
ALTER TABLE `c_type_meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_users`
--
ALTER TABLE `c_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `c_user_roles`
--
ALTER TABLE `c_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_verification`
--
ALTER TABLE `c_verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_activities`
--
ALTER TABLE `c_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_attendance`
--
ALTER TABLE `c_attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_broadcast`
--
ALTER TABLE `c_broadcast`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_bulletboard`
--
ALTER TABLE `c_bulletboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_classrooms`
--
ALTER TABLE `c_classrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `c_classroom_student`
--
ALTER TABLE `c_classroom_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c_classroom_teacher`
--
ALTER TABLE `c_classroom_teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `c_email_template`
--
ALTER TABLE `c_email_template`
  MODIFY `email_template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_gallery`
--
ALTER TABLE `c_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_invitation_codes`
--
ALTER TABLE `c_invitation_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `c_lessonplan`
--
ALTER TABLE `c_lessonplan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_meal`
--
ALTER TABLE `c_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_migrations`
--
ALTER TABLE `c_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `c_nap`
--
ALTER TABLE `c_nap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_notice`
--
ALTER TABLE `c_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_observation`
--
ALTER TABLE `c_observation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_parents`
--
ALTER TABLE `c_parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `c_potty`
--
ALTER TABLE `c_potty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_property_meal`
--
ALTER TABLE `c_property_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_roles`
--
ALTER TABLE `c_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `c_static_content`
--
ALTER TABLE `c_static_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_static_content_home`
--
ALTER TABLE `c_static_content_home`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_static_content_home2`
--
ALTER TABLE `c_static_content_home2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_students`
--
ALTER TABLE `c_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `c_tagging`
--
ALTER TABLE `c_tagging`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_teachers`
--
ALTER TABLE `c_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `c_type_meal`
--
ALTER TABLE `c_type_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_users`
--
ALTER TABLE `c_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `c_user_roles`
--
ALTER TABLE `c_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `c_verification`
--
ALTER TABLE `c_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_meal`
--
ALTER TABLE `c_meal`
  ADD CONSTRAINT `meal_property_meal_id_foreign` FOREIGN KEY (`property_meal_id`) REFERENCES `c_property_meal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meal_std_id_foreign` FOREIGN KEY (`std_id`) REFERENCES `c_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meal_type_meal_id_foreign` FOREIGN KEY (`type_meal_id`) REFERENCES `c_type_meal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_nap`
--
ALTER TABLE `c_nap`
  ADD CONSTRAINT `nap_std_id_foreign` FOREIGN KEY (`std_id`) REFERENCES `c_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_notice`
--
ALTER TABLE `c_notice`
  ADD CONSTRAINT `notice_std_id_foreign` FOREIGN KEY (`std_id`) REFERENCES `c_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_observation`
--
ALTER TABLE `c_observation`
  ADD CONSTRAINT `observation_std_id_foreign` FOREIGN KEY (`std_id`) REFERENCES `c_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `observation_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `c_teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_parents`
--
ALTER TABLE `c_parents`
  ADD CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `c_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_potty`
--
ALTER TABLE `c_potty`
  ADD CONSTRAINT `potty_std_id_foreign` FOREIGN KEY (`std_id`) REFERENCES `c_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_property_meal`
--
ALTER TABLE `c_property_meal`
  ADD CONSTRAINT `property_meal_type_meal_id_foreign` FOREIGN KEY (`type_meal_id`) REFERENCES `c_type_meal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_tagging`
--
ALTER TABLE `c_tagging`
  ADD CONSTRAINT `tagging_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `c_parents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tagging_std_id_foreign` FOREIGN KEY (`std_id`) REFERENCES `c_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
