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
-- Table structure for table `c_attendees`
--

CREATE TABLE `c_attendees` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_attendees`
--

INSERT INTO `c_attendees` (`id`, `parent_id`, `event_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 103, 12, 'pending', '2018-02-09 15:29:21', '2018-02-09 15:29:21'),
(2, 150, 12, 'pending', '2018-02-09 15:29:22', '2018-02-09 15:29:22'),
(3, 152, 12, 'pending', '2018-02-09 15:29:22', '2018-02-09 15:29:22'),
(4, 175, 14, 'pending', '2018-03-26 08:00:17', '2018-03-26 08:00:17');

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
(1, 77, 'general', 'Broadcast', 'This is general data', NULL, NULL, '2018-01-15 08:05:21', '2018-01-15 08:05:21'),
(2, 77, 'general', 'Parent Teacher Meeting', 'Parent Teacher Meeting', NULL, NULL, '2018-01-17 22:30:45', '2018-01-17 22:30:45'),
(3, 77, 'general', 'Parent Teacher Meeting', 'Parent Teacher Meeting', NULL, NULL, '2018-01-17 22:33:36', '2018-01-17 22:33:36'),
(4, 77, 'draft', 'trail broadcast', 'description', NULL, NULL, '2018-01-24 12:44:01', '2018-01-24 12:44:01'),
(5, 77, 'draft', 'ttttttt', NULL, NULL, NULL, '2018-01-24 12:44:46', '2018-01-24 12:44:46'),
(6, 77, 'event', 'eventsttst', 'desc', '2018-01-25 07:00:00', '2018-01-26 07:00:00', '2018-01-24 12:49:21', '2018-01-24 12:49:21'),
(12, 77, 'general', 'testing 9 feb notif', 'description notif', NULL, NULL, '2018-02-09 15:29:21', '2018-02-09 15:29:21'),
(14, 158, 'event', 'test 26 march', 'test 26 march desc', '2018-03-27 07:00:00', '2018-03-28 21:30:00', '2018-03-26 08:00:17', '2018-03-26 08:00:17');

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
-- Table structure for table `c_chats`
--

CREATE TABLE `c_chats` (
  `id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message_type` enum('text','image','video','file') NOT NULL DEFAULT 'text',
  `seen_status` enum('sending','sent','delivered','read') NOT NULL DEFAULT 'sent',
  `delete_sender_status` enum('active','trashed') NOT NULL DEFAULT 'active',
  `delete_receiver_status` enum('active','trashed') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 2, 'Class 1', '1', '2017-12-24 14:02:26', '2017-12-24 14:02:26'),
(2, 2, 'Class 2', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(3, 2, 'Class 3', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(4, 2, 'Class 4', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(5, 2, 'Class 5', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(6, 2, 'Class 6', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(7, 2, 'Class 7', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(8, 2, 'Class 8', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(9, 2, 'Class 9', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(10, 2, 'Class 10', '1', '2017-12-24 14:02:34', '2017-12-24 14:02:34'),
(11, 2, 'kinder', '1', '2018-01-06 06:29:33', '2018-01-06 06:29:33'),
(12, 77, 'triaaaaaaaaaaa', '1', '2017-12-05 03:53:53', '2017-12-05 03:53:53'),
(23, 77, 'Lower KG', '1', '2018-01-25 20:47:58', '2018-01-25 20:47:58'),
(25, 95, 'nursery', '1', '2018-01-29 02:13:51', '2018-01-29 02:29:53'),
(26, 77, 'Class first', '1', '2018-01-29 12:10:37', '2018-01-29 12:10:37'),
(27, 77, 'democlass', '0', '2018-01-31 14:38:15', '2018-02-01 22:05:22'),
(28, 77, 'Trial classsss', '1', '2018-02-01 17:58:00', '2018-02-01 17:58:00'),
(29, 77, 'democlass123', '1', '2018-02-06 20:11:06', '2018-02-07 19:01:41'),
(30, 77, 'test class  feb 26', '1', '2018-02-26 21:36:31', '2018-02-26 21:36:31'),
(31, 158, 'magento', '1', '2018-03-10 12:25:07', '2018-03-10 12:25:07'),
(32, 158, 'Core Php', '1', '2018-03-10 12:38:04', '2018-03-10 12:38:04');

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
(1, 23, 23, '2018-01-29 07:42:21', '2018-01-29 07:42:21'),
(2, 12, 24, '2018-01-12 11:18:16', '2018-01-12 11:18:16'),
(5, 14, 29, '2018-01-24 07:08:15', '2018-01-24 07:08:15'),
(6, 22, 77, '2018-01-24 12:02:36', '2018-01-24 12:02:36'),
(7, 15, 77, '2018-01-24 22:44:17', '2018-01-24 22:44:17'),
(8, 15, 77, '2018-01-25 01:33:21', '2018-01-25 01:33:21'),
(9, 15, 77, '2018-01-25 01:34:10', '2018-01-25 01:34:10'),
(10, 15, 77, '2018-01-25 01:40:30', '2018-01-25 01:40:30'),
(11, 15, 77, '2018-01-25 01:42:46', '2018-01-25 01:42:46'),
(12, 15, 77, '2018-01-25 01:43:01', '2018-01-25 01:43:01'),
(13, 15, 77, '2018-01-25 01:45:31', '2018-01-25 01:45:31'),
(14, 15, 77, '2018-01-25 01:45:54', '2018-01-25 01:45:54'),
(15, 15, 77, '2018-01-25 01:46:16', '2018-01-25 01:46:16'),
(16, 24, 30, '2018-01-27 11:01:55', '2018-01-27 11:01:55'),
(18, 25, 31, '2018-01-28 20:50:58', '2018-01-28 20:50:58'),
(19, 25, 95, '2018-01-28 21:00:14', '2018-01-28 21:00:14'),
(20, 25, 95, '2018-01-28 21:00:14', '2018-01-28 21:00:14'),
(21, 26, 32, '2018-02-01 13:14:12', '2018-02-01 13:14:12'),
(22, 23, 33, '2018-02-01 13:20:05', '2018-02-01 13:20:05'),
(24, 26, 35, '2018-02-01 15:17:14', '2018-02-01 15:17:14'),
(25, 23, 36, '2018-02-02 09:00:39', '2018-02-02 09:00:39'),
(26, 12, 37, '2018-02-06 06:19:59', '2018-02-06 06:19:59'),
(27, 23, 38, '2018-02-02 09:54:56', '2018-02-02 09:54:56'),
(28, 23, 39, '2018-02-02 14:39:38', '2018-02-02 14:39:38'),
(29, 23, 40, '2018-02-02 14:45:58', '2018-02-02 14:45:58'),
(30, 23, 41, '2018-02-02 14:49:33', '2018-02-02 14:49:33'),
(32, 23, 43, '2018-02-05 06:17:44', '2018-02-05 06:17:44'),
(42, 23, 53, '2018-02-05 11:22:21', '2018-02-05 11:22:21'),
(44, 30, 55, '2018-02-06 09:13:29', '2018-02-26 16:12:44'),
(45, 30, 63, '2018-02-06 20:24:30', '2018-02-26 16:12:44'),
(46, 30, 64, '2018-03-22 14:20:35', '2018-03-22 14:20:35'),
(48, 31, 66, '2018-03-10 13:41:31', '2018-03-10 13:41:31'),
(51, 31, 66, '2018-03-10 13:41:31', '2018-03-10 13:41:31'),
(52, 32, 65, '2018-03-10 11:14:09', '2018-03-10 11:14:09'),
(53, 31, 66, '2018-03-10 13:41:31', '2018-03-10 13:41:31'),
(54, 31, 67, '2018-03-10 07:11:30', '2018-03-10 07:11:30'),
(55, 31, 72, '2018-03-26 07:39:56', '2018-03-26 07:39:56'),
(56, 31, 73, '2018-03-26 15:56:30', '2018-03-26 15:56:30'),
(57, 32, 74, '2018-03-27 10:23:26', '2018-03-27 10:23:26'),
(58, 31, 75, '2018-03-27 12:56:45', '2018-03-27 12:56:45'),
(59, 31, 76, '2018-03-27 15:56:47', '2018-03-27 15:56:47');

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
(4, 1, 42, '2017-12-25 06:19:30', '2017-12-25 06:19:30'),
(5, 1, 43, '2017-12-25 11:34:21', '2017-12-25 11:34:21'),
(6, 1, 44, '2017-12-25 18:38:57', '2017-12-25 18:38:57'),
(7, 3, 45, '2017-12-25 18:41:44', '2017-12-25 18:41:44'),
(8, 1, 53, '2018-01-01 18:32:47', '2018-01-01 18:32:47'),
(9, 1, 54, '2018-01-01 22:09:25', '2018-01-01 22:09:25'),
(10, 1, 55, '2018-01-01 22:10:32', '2018-01-01 22:10:32'),
(11, 1, 56, '2018-01-01 22:11:40', '2018-01-01 22:11:40'),
(12, 1, 57, '2018-01-01 22:13:21', '2018-01-01 22:13:21'),
(13, 1, 58, '2018-01-01 22:15:51', '2018-01-01 22:15:51'),
(14, 1, 59, '2018-01-01 22:16:26', '2018-01-01 22:16:26'),
(15, 1, 61, '2018-01-01 22:52:43', '2018-01-01 22:52:43'),
(16, 1, 62, '2018-01-01 22:54:44', '2018-01-01 22:54:44'),
(17, 1, 63, '2018-01-01 22:56:20', '2018-01-01 22:56:20'),
(18, 1, 64, '2018-01-01 22:58:35', '2018-01-01 22:58:35'),
(19, 1, 65, '2018-01-01 22:59:13', '2018-01-01 22:59:13'),
(22, 11, 42, '2018-01-05 19:29:33', '2018-01-05 19:29:33'),
(23, 11, 43, '2018-01-05 19:29:33', '2018-01-05 19:29:33'),
(24, 12, 78, '2018-01-09 06:53:28', '2018-01-09 06:53:28'),
(25, 12, 79, '2018-01-09 06:53:28', '2018-01-09 06:53:28'),
(27, 17, 0, '2018-01-22 01:05:40', '2018-01-22 01:05:40'),
(28, 17, 43, '2018-01-22 01:05:40', '2018-01-22 01:05:40'),
(35, 25, 96, '2018-01-28 20:43:51', '2018-01-28 20:43:51'),
(37, 28, 78, '2018-02-01 12:28:00', '2018-02-01 12:28:00'),
(38, 27, 78, '2018-02-01 16:35:23', '2018-02-01 16:35:23'),
(39, 29, 78, '2018-02-07 13:31:41', '2018-02-07 13:31:41'),
(40, 30, 78, '2018-02-26 16:06:32', '2018-02-26 16:06:32'),
(41, 31, 159, '2018-03-10 06:55:07', '2018-03-10 06:55:07'),
(42, 32, 159, '2018-03-10 07:08:04', '2018-03-10 07:08:04');

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
('about', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.123'),
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
-- Table structure for table `c_consent_attendees`
--

CREATE TABLE `c_consent_attendees` (
  `id` int(11) NOT NULL,
  `consent_form_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `consent_signature` varchar(255) DEFAULT NULL,
  `consent_signature_status` enum('0','1') NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_consent_attendees`
--

INSERT INTO `c_consent_attendees` (`id`, `consent_form_id`, `class_id`, `student_id`, `parent_id`, `consent_signature`, `consent_signature_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 64, 152, '5aa21e18b7eef.png', '1', 'accepted', '2018-03-09 08:08:05', '2018-03-09 08:23:26'),
(2, 2, 0, 66, 162, '5aa8fdc219940.png', '1', 'accepted', '2018-03-14 13:16:43', '2018-03-14 13:17:32'),
(3, 3, 0, 66, 162, '5aa90beb64cee.png', '1', 'accepted', '2018-03-14 14:17:25', '2018-03-14 14:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `c_consent_form`
--

CREATE TABLE `c_consent_form` (
  `id` int(10) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `venue` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `template` text NOT NULL,
  `save_as` enum('0','1') NOT NULL DEFAULT '0',
  `participants` enum('students','classes') NOT NULL,
  `status` enum('active','archive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_consent_form`
--

INSERT INTO `c_consent_form` (`id`, `teacher_id`, `title`, `date`, `venue`, `description`, `template`, `save_as`, `participants`, `status`, `created_at`, `updated_at`) VALUES
(1, 78, 'march 9 test consent', '2018-03-09 07:30:00', 'singsys', 'description march 9', '<p>comment march 9</p>', '0', 'students', 'active', '2018-03-09 08:08:05', '2018-03-09 08:08:05'),
(2, 159, 'testing by new account', '2018-03-15 01:30:00', 'singsys', 'description', '<p>commenenenenenen</p>', '0', 'students', 'active', '2018-03-14 13:16:43', '2018-03-14 13:16:43'),
(3, 159, 'testing 2', '2018-03-17 01:30:00', 'singsys 222', 'desc  2', '<p>coment 2</p>', '0', 'students', 'active', '2018-03-14 14:17:25', '2018-03-14 14:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `c_contactus`
--

CREATE TABLE `c_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reply` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_contactus`
--

INSERT INTO `c_contactus` (`id`, `name`, `email`, `subject`, `message`, `reply`, `created_at`, `updated_at`) VALUES
(1, 'xdfcgvhb', 'chetandeep@singsys.com', 'sdfghjk', 'dfghj', 'heloo red', '2017-12-04 22:23:53', '2018-02-21 16:55:43'),
(2, 'testtter', 'chetandeep@singsys.com', 'Regarding test of contact us', 'dsfsghfgjh', NULL, '2018-02-19 15:17:06', '2018-02-19 15:17:06'),
(3, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:30:12', '2018-02-19 15:30:12'),
(4, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:34:48', '2018-02-19 15:34:48'),
(5, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:36:21', '2018-02-19 15:36:21'),
(6, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:37:17', '2018-02-19 15:37:17'),
(7, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:41:25', '2018-02-19 15:41:25'),
(8, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:45:22', '2018-02-19 15:45:22'),
(9, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:46:07', '2018-02-19 15:46:07'),
(10, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:46:52', '2018-02-19 15:46:52'),
(11, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:47:12', '2018-02-19 15:47:12'),
(12, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:54:24', '2018-02-19 15:54:24'),
(13, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:57:05', '2018-02-19 15:57:05'),
(14, 'test', 'chetandeep@singsys.com', 'Regarding test of contact us', 'please contact me as soon as possible', NULL, '2018-02-19 15:58:31', '2018-02-19 15:58:31'),
(15, 'Preeti Singh', 'preetisingh@singsys.com', 'This is testing description', 'This is testing description of Message input.', 'Reply to Preeti 22222', '2018-02-19 16:09:56', '2018-02-19 16:12:00'),
(16, 'raveena mam local', 'raveena@singsys.com', 'Regarding test of contact us', 'dasfghjghfdsfghfdsafgh', NULL, '2018-02-20 09:01:58', '2018-02-20 09:01:58'),
(17, 'raveena mam', 'raveena@singsys.com', 'Regarding test of contact us', 'dsfgfhgffdsddfdfgn', '3 :29', '2018-02-20 09:03:59', '2018-02-20 12:29:19'),
(18, 'Rmam', 'raveena@singsys.com', 'Regarding test of contact us', 'scdhbcdbjcdjdcj', NULL, '2018-02-20 14:34:26', '2018-02-20 14:34:26'),
(19, 'Rmam', 'raveena@singsys.com', 'Regarding test of contact us', 'scdhbcdbjcdjdcj', NULL, '2018-02-20 14:36:09', '2018-02-20 14:36:09'),
(20, 'Rmam', 'raveena@singsys.com', 'Regarding test of contact us', 'scdhbcdbjcdjdcj', NULL, '2018-02-20 14:40:24', '2018-02-20 14:40:24'),
(21, 'Rmam', 'raveena@singsys.com', 'Regarding test of contact us', 'test 2', NULL, '2018-02-20 14:41:07', '2018-02-20 14:41:07'),
(22, 'dsfgh', 'raveena@singsys.com', 'xsdfgfhgjm', 'test3', NULL, '2018-02-20 14:44:55', '2018-02-20 14:44:55'),
(23, 'dsfgh', 'raveena@singsys.com', 'xsdfgfhgjm', 'test3', NULL, '2018-02-20 14:46:31', '2018-02-20 14:46:31'),
(24, 'xcdsfdgfhg', 'raveena@singsys.com', 'Regarding test of contact us', '1cdsdds', NULL, '2018-02-20 14:47:02', '2018-02-20 14:47:02'),
(25, 'test', 'chetandeep+c@singsys.com', 'Regarding test of contact us', 'message to verify contact us is working', NULL, '2018-03-28 13:52:37', '2018-03-28 13:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `c_dailylog`
--

CREATE TABLE `c_dailylog` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_dailylog`
--

INSERT INTO `c_dailylog` (`id`, `std_id`, `teacher_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 66, 159, 'testing', '2018-03-13 16:01:14', '2018-03-13 16:01:14'),
(2, 66, 159, 'testxsdcvfbgh', '2018-03-13 16:01:51', '2018-03-13 16:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `c_dailylog_photo`
--

CREATE TABLE `c_dailylog_photo` (
  `id` int(11) NOT NULL,
  `dailylog_id` int(11) NOT NULL,
  `media` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_dailylog_photo`
--

INSERT INTO `c_dailylog_photo` (`id`, `dailylog_id`, `media`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1520947871-baby-4.jpeg', '1', '2018-03-13 16:01:14', '2018-03-13 16:01:14'),
(2, 1, '1520947872-baby-5.jpeg', '1', '2018-03-13 16:01:14', '2018-03-13 16:01:14'),
(3, 1, '1520947872-baby-6.jpeg', '1', '2018-03-13 16:01:14', '2018-03-13 16:01:14'),
(4, 1, '1520947872-baby-7.jpeg', '1', '2018-03-13 16:01:14', '2018-03-13 16:01:14');

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
(1, 'Chirppe_account_confirmation', 'Chirppe Web Portal - Account Confirmation', 'Dear {NAME},\r\n\r\nYour account is activated on {SITENAME}. Visit our {WEBSITE}  and  use below credentials to login into the application:\r\n\r\nEmail: {EMAIL}\r\nPassword: {PASSWORD}\r\n\r\nThanks {SITENAME}', '2017-12-04 11:23:53', '2018-01-05 00:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `c_event`
--

CREATE TABLE `c_event` (
  `id` int(11) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `participants` enum('students','classes') NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_event`
--

INSERT INTO `c_event` (`id`, `principal_id`, `title`, `duration`, `start_date`, `participants`, `comment`, `created_at`, `updated_at`) VALUES
(28, 78, 'title event 2 feb', 5, '2018-02-07 23:00:00', 'students', 'todaysss 2 feb', '2018-02-02 07:53:48', '2018-02-02 07:53:48'),
(29, 77, 'linkin park concert', 5, '2018-02-14 19:30:00', 'students', 'concert', '2018-02-02 09:58:32', '2018-02-02 09:58:32'),
(30, 77, '5 feb event', 2, '2018-02-06 11:00:00', 'students', 'event test', '2018-02-05 11:43:28', '2018-02-05 11:43:28'),
(35, 77, '5 feb event 2 teste', 8, '2018-02-13 01:00:00', 'students', 'testing 2', '2018-02-05 12:00:12', '2018-02-05 12:00:12'),
(36, 77, '5 feb event 2 teste teste', 4, '2018-02-06 07:00:00', 'students', 'testing 2', '2018-02-05 14:38:23', '2018-02-05 14:38:23'),
(37, 77, 'eventt feb 666', 7, '2018-02-07 23:30:00', 'classes', 'title comment testing', '2018-02-06 09:25:45', '2018-02-06 09:25:45'),
(43, 77, 'event 6 feb 12 31', 6, '2018-02-07 21:00:00', 'classes', 'testingg', '2018-02-06 10:17:40', '2018-02-06 10:17:40'),
(44, 77, 'event testing 9 feb notif', 2, '2018-02-09 22:00:00', 'students', 'notif comment', '2018-02-09 15:37:37', '2018-02-09 15:37:37'),
(45, 77, '10 feb event test', 2, '2018-02-28 15:00:00', 'students', 'comment test 10 feb', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(46, 77, 'test feb 17', 5, '2018-02-20 21:00:00', 'classes', 'test comment feb 17', '2018-02-17 12:11:05', '2018-02-17 12:11:05'),
(56, 77, 'title feb 17', 4, '2018-02-18 19:00:00', 'classes', 'title feb 17', '2018-02-17 12:30:49', '2018-02-17 12:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `c_event_attendees`
--

CREATE TABLE `c_event_attendees` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_event_attendees`
--

INSERT INTO `c_event_attendees` (`id`, `event_id`, `student_id`, `parent_id`, `class_id`, `status`, `created_at`, `updated_at`) VALUES
(52, 28, 26, 84, 0, 'pending', '2018-02-02 07:53:49', '2018-02-02 07:53:49'),
(53, 29, 24, 82, 0, 'pending', '2018-02-02 09:58:33', '2018-02-02 09:58:33'),
(54, 29, 38, 105, 0, 'pending', '2018-02-02 09:58:33', '2018-02-02 09:58:33'),
(55, 30, 38, 105, 0, 'pending', '2018-02-05 09:15:43', '2018-02-05 09:15:43'),
(58, 35, 53, 122, 0, 'pending', '2018-02-05 12:00:12', '2018-02-05 12:00:12'),
(59, 35, 53, 123, 0, 'pending', '2018-02-05 12:00:12', '2018-02-05 12:00:12'),
(60, 36, 53, 122, 0, 'pending', '2018-02-05 14:38:23', '2018-02-05 14:38:23'),
(61, 36, 53, 123, 0, 'pending', '2018-02-05 14:38:23', '2018-02-05 14:38:23'),
(62, 36, 55, 124, 0, 'pending', '2018-02-05 14:38:23', '2018-02-05 14:38:23'),
(63, 36, 55, 125, 0, 'pending', '2018-02-05 14:38:23', '2018-02-05 14:38:23'),
(64, 37, 24, 82, 12, 'pending', '2018-02-06 09:25:45', '2018-02-06 09:25:45'),
(65, 37, 55, 124, 12, 'pending', '2018-02-06 09:25:45', '2018-02-06 09:25:45'),
(74, 43, 24, 82, 12, 'pending', '2018-02-06 10:17:40', '2018-02-06 10:17:40'),
(75, 43, 55, 150, 12, 'pending', '2018-02-06 10:17:40', '2018-02-06 10:17:40'),
(76, 44, 63, 150, 0, 'pending', '2018-02-09 15:37:37', '2018-02-10 10:21:02'),
(77, 44, 63, 151, 0, 'pending', '2018-02-09 15:37:37', '2018-02-10 10:21:02'),
(78, 44, 63, 152, 0, 'pending', '2018-02-09 15:37:37', '2018-02-10 13:08:09'),
(79, 45, 63, 150, 0, 'rejected', '2018-02-10 13:00:29', '2018-02-10 13:16:18'),
(80, 45, 63, 151, 0, 'pending', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(81, 45, 64, 152, 0, 'accepted', '2018-02-10 13:00:29', '2018-02-10 13:15:55'),
(82, 45, 64, 153, 0, 'pending', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(83, 45, 63, 152, 0, 'accepted', '2018-02-10 13:00:29', '2018-02-10 13:15:55'),
(84, 46, 0, 0, 12, 'pending', '2018-02-17 12:11:05', '2018-02-17 12:11:05'),
(85, 46, 0, 0, 23, 'pending', '2018-02-17 12:11:05', '2018-02-17 12:11:05'),
(86, 47, 0, 0, 12, 'pending', '2018-02-17 12:16:10', '2018-02-17 12:16:10'),
(87, 47, 0, 0, 23, 'pending', '2018-02-17 12:16:10', '2018-02-17 12:16:10'),
(88, 48, 0, 0, 12, 'pending', '2018-02-17 12:16:52', '2018-02-17 12:16:52'),
(89, 49, 0, 0, 12, 'pending', '2018-02-17 12:17:55', '2018-02-17 12:17:55'),
(90, 50, 0, 0, 12, 'pending', '2018-02-17 12:18:06', '2018-02-17 12:18:06'),
(91, 51, 0, 0, 12, 'pending', '2018-02-17 12:18:37', '2018-02-17 12:18:37'),
(92, 52, 0, 0, 12, 'pending', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(93, 53, 0, 0, 12, 'pending', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(94, 54, 0, 0, 12, 'pending', '2018-02-17 12:24:30', '2018-02-17 12:24:30'),
(95, 55, 0, 0, 29, 'pending', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(96, 55, 63, 150, 29, 'pending', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(97, 56, 0, 0, 29, 'pending', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(98, 56, 63, 150, 29, 'pending', '2018-02-17 12:30:50', '2018-02-17 12:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `c_event_repeat`
--

CREATE TABLE `c_event_repeat` (
  `id` int(11) NOT NULL,
  `repeat_id` int(11) NOT NULL,
  `short_description` enum('Does Not Repeat','Daily','Weekly On Monday','Monthly On The First Monday','Annual On January 1','Custom') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_event_repeat`
--

INSERT INTO `c_event_repeat` (`id`, `repeat_id`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Does Not Repeat', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(2, 2, 'Daily', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(3, 3, 'Weekly On Monday', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(4, 4, 'Monthly On The First Monday', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(5, 5, 'Annual On January 1', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(6, 6, 'Custom', '2017-12-04 22:23:53', '2017-12-04 22:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `c_feedback`
--

CREATE TABLE `c_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_feedback`
--

INSERT INTO `c_feedback` (`id`, `user_id`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 78, 'geejejejejej', '2018-02-17 13:03:51', '2018-02-17 13:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `c_feedback_attach`
--

CREATE TABLE `c_feedback_attach` (
  `id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `media` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_feedback_attach`
--

INSERT INTO `c_feedback_attach` (`id`, `feedback_id`, `media`, `created_at`, `updated_at`) VALUES
(1, 1, '1518863631-baby-img1.png', '2018-02-17 13:03:51', '2018-02-17 13:03:51'),
(2, 1, '1518863631-baby-img2.png', '2018-02-17 13:03:51', '2018-02-17 13:03:51');

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
(45, 78, '3ODPSEKL38', 'active', '2018-01-09 10:39:03', '2018-01-09 10:43:15'),
(46, 79, 'FCOEZII9QF', 'active', '2018-01-09 10:40:21', '2018-01-09 12:18:09'),
(47, 80, 'WNDR9REHUE', 'pending', '2018-01-10 06:02:39', '2018-01-10 06:02:39'),
(48, 81, '8TZAW8PG4T', 'pending', '2018-01-10 16:29:54', '2018-01-10 16:29:54'),
(49, 82, 'EBJM9TGK1A', 'pending', '2018-01-10 16:31:48', '2018-01-10 16:31:48'),
(50, 83, '4RIC9SLZMR', 'pending', '2018-01-18 07:37:24', '2018-01-18 07:37:24'),
(51, 84, 'HHSIGAEJS5', 'pending', '2018-01-22 07:25:51', '2018-01-22 07:25:51'),
(52, 85, 'LVKH4TCWZK', 'pending', '2018-01-24 12:30:19', '2018-01-24 12:30:19'),
(53, 86, 'NAG3BM40X2', 'pending', '2018-01-24 12:31:45', '2018-01-24 12:31:45'),
(54, 91, 'OWV3AYTCXB', 'active', '2018-01-27 15:04:10', '2018-01-27 15:08:31'),
(55, 92, '0XVO01P4XG', 'pending', '2018-01-27 15:30:50', '2018-01-27 15:30:50'),
(56, 93, 'ISTJHJGAWF', 'pending', '2018-01-27 15:34:23', '2018-01-27 15:34:23'),
(57, 94, 'VZIOAJDESD', 'active', '2018-01-27 15:36:29', '2018-01-27 15:49:01'),
(58, 96, '2QY9UDGQI9', 'active', '2018-01-27 16:15:33', '2018-01-27 16:17:35'),
(59, 97, 'D7PIUPTUAC', 'active', '2018-01-29 02:20:59', '2018-01-29 02:22:51'),
(60, 98, 'PH0R4FE7ZM', 'active', '2018-02-01 18:11:21', '2018-02-01 20:51:24'),
(61, 99, 'FC5CK8FHYM', 'pending', '2018-02-01 18:11:31', '2018-02-01 18:11:31'),
(62, 100, 'W3FQI7MTDZ', 'pending', '2018-02-01 18:50:05', '2018-02-01 18:50:05'),
(63, 101, 'DPXZQMFCJ5', 'pending', '2018-02-01 18:52:36', '2018-02-01 18:52:36'),
(64, 102, 'V238HDKLSH', 'pending', '2018-02-01 20:47:14', '2018-02-01 20:47:14'),
(65, 103, '6URZSXLBUO', 'active', '2018-02-02 14:30:40', '2018-02-02 14:42:10'),
(66, 105, 'M5KTF5U8KW', 'pending', '2018-02-02 15:24:56', '2018-02-02 15:24:56'),
(67, 107, 'QLFO0UX85V', 'pending', '2018-02-02 20:22:33', '2018-02-02 20:22:33'),
(68, 108, 'JZFRVOVAGA', 'pending', '2018-02-02 20:22:46', '2018-02-02 20:22:46'),
(69, 109, 'U9SFJ8BYYJ', 'pending', '2018-02-05 11:57:17', '2018-02-05 11:57:17'),
(70, 110, 'ED0MU7IF5L', 'pending', '2018-02-05 11:57:23', '2018-02-05 11:57:23'),
(71, 111, '7RWI5SCLNC', 'pending', '2018-02-05 12:18:46', '2018-02-05 12:18:46'),
(72, 112, 'UO8PH4XE0I', 'pending', '2018-02-05 12:19:01', '2018-02-05 12:19:01'),
(73, 113, 'BUZLWTPCG2', 'pending', '2018-02-05 12:25:44', '2018-02-05 12:25:44'),
(74, 114, 'TNSIUEVT3T', 'pending', '2018-02-05 12:25:52', '2018-02-05 12:25:52'),
(75, 115, 'COVNACP2RU', 'pending', '2018-02-05 12:40:16', '2018-02-05 12:40:16'),
(76, 116, 'IIHLMBYHPC', 'pending', '2018-02-05 12:40:23', '2018-02-05 12:40:23'),
(77, 117, 'PRXKN3H8QP', 'pending', '2018-02-05 12:48:12', '2018-02-05 12:48:12'),
(78, 118, 'ZQ8CCMAVED', 'pending', '2018-02-05 12:48:25', '2018-02-05 12:48:25'),
(79, 122, 'HVYIEDXXHL', 'pending', '2018-02-05 16:52:21', '2018-02-05 16:52:21'),
(80, 123, 'UVVINKXAJV', 'pending', '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(81, 124, 'EMCXTMBQFL', 'pending', '2018-02-05 20:04:38', '2018-02-05 20:04:38'),
(82, 125, 'MLGONECBIF', 'pending', '2018-02-05 20:04:49', '2018-02-05 20:04:49'),
(83, 126, 'OQJ6HPJFXL', 'pending', '2018-02-06 11:52:11', '2018-02-06 11:52:11'),
(84, 127, 'T9FK3G3SLI', 'pending', '2018-02-06 11:56:49', '2018-02-06 11:56:49'),
(85, 128, 'D1DBQ0M50T', 'pending', '2018-02-06 11:58:31', '2018-02-06 11:58:31'),
(86, 129, '6PNHCRXKHR', 'pending', '2018-02-06 12:16:05', '2018-02-06 12:16:05'),
(87, 130, 'YZQ7RIJLO8', 'pending', '2018-02-06 12:18:31', '2018-02-06 12:18:31'),
(88, 131, '7RZBLDQLUK', 'pending', '2018-02-06 12:53:01', '2018-02-06 12:53:01'),
(89, 132, '3JTCFE1MTE', 'pending', '2018-02-06 12:55:10', '2018-02-06 12:55:10'),
(90, 133, 'TUUYMRGEVL', 'pending', '2018-02-06 14:15:39', '2018-02-06 14:15:39'),
(91, 134, 'GHBKIQB56A', 'pending', '2018-02-06 14:17:58', '2018-02-06 14:17:58'),
(92, 135, 'P9XTNEL7S2', 'pending', '2018-02-06 17:03:13', '2018-02-06 17:03:13'),
(93, 136, 'Q4RDGZONRO', 'pending', '2018-02-06 17:03:20', '2018-02-06 17:03:20'),
(94, 137, 'VII4WXVJYR', 'pending', '2018-02-06 17:14:07', '2018-02-06 17:14:07'),
(95, 139, 'DTAUYLYSWV', 'pending', '2018-02-06 17:22:44', '2018-02-06 17:22:44'),
(96, 141, 'GD5CJPN3QB', 'pending', '2018-02-06 17:29:03', '2018-02-06 17:29:03'),
(97, 143, 'ZKY0BOEH8B', 'pending', '2018-02-06 19:20:36', '2018-02-06 19:20:36'),
(98, 144, 'J51RSFLTZU', 'pending', '2018-02-06 19:36:29', '2018-02-06 19:36:29'),
(99, 146, 'X6FBEQJYPB', 'pending', '2018-02-06 19:46:53', '2018-02-06 19:46:53'),
(100, 147, 'GIP3SOXNAI', 'pending', '2018-02-06 19:47:04', '2018-02-06 19:47:04'),
(101, 148, 'DTIPGVTAS7', 'pending', '2018-02-06 20:03:57', '2018-02-06 20:03:57'),
(102, 149, 'JVNVKYRZOB', 'pending', '2018-02-06 20:04:07', '2018-02-06 20:04:07'),
(103, 150, 'JVVPKV8SDR', 'active', '2018-02-07 01:54:30', '2018-02-07 01:55:47'),
(104, 151, 'NJRKUNIQV3', 'pending', '2018-02-07 01:54:40', '2018-02-07 01:54:40'),
(105, 152, 'E7OUANDFUK', 'active', '2018-02-07 20:19:57', '2018-02-07 20:20:52'),
(106, 153, 'AVRT64ND75', 'pending', '2018-02-07 20:20:08', '2018-02-07 20:20:08'),
(109, 156, 'RXE0NOA5VZ', 'pending', '2018-03-08 19:02:33', '2018-03-08 19:02:33'),
(110, 157, '9WOLECY69J', 'pending', '2018-03-10 12:15:12', '2018-03-10 12:15:12'),
(111, 159, '7HEP9AQX3M', 'active', '2018-03-10 12:23:25', '2018-03-10 12:24:36'),
(112, 160, 'BQ9IAGZY8Q', 'pending', '2018-03-10 12:36:24', '2018-03-10 12:36:24'),
(113, 161, 'BPSDHOXFPU', 'pending', '2018-03-10 12:36:35', '2018-03-10 12:36:35'),
(114, 162, '0UBM4MPGHD', 'active', '2018-03-10 12:39:39', '2018-03-13 20:37:09'),
(115, 163, 'TYMOLGW9LS', 'pending', '2018-03-10 12:39:44', '2018-03-10 12:39:44'),
(116, 164, 'VZM58PT8NV', 'pending', '2018-03-10 12:41:30', '2018-03-10 12:41:30'),
(117, 165, '54UECCF60H', 'pending', '2018-03-10 12:41:41', '2018-03-10 12:41:41'),
(118, 166, 'DB937QNQDO', 'pending', '2018-03-14 14:47:50', '2018-03-14 14:47:50'),
(119, 167, 'NVBXPYARRQ', 'active', '2018-03-23 12:02:21', '2018-03-23 12:06:41'),
(120, 168, 'PDYXPJMRNF', 'pending', '2018-03-23 12:02:29', '2018-03-23 12:02:29'),
(121, 169, 'YXZFUPMXWS', 'pending', '2018-03-23 13:03:38', '2018-03-23 13:03:38'),
(122, 170, 'ZT9WZK2T08', 'pending', '2018-03-23 13:03:45', '2018-03-23 13:03:45'),
(123, 171, 'KRU5ZOKIYH', 'pending', '2018-03-23 15:10:33', '2018-03-23 15:10:33'),
(124, 172, '7YGZ97OIW1', 'pending', '2018-03-23 15:10:39', '2018-03-23 15:10:39'),
(125, 173, '0NXYBIRMV0', 'pending', '2018-03-23 15:10:44', '2018-03-23 15:10:44'),
(126, 174, 'D16ETOWDBY', 'pending', '2018-03-23 15:10:49', '2018-03-23 15:10:49'),
(127, 175, '8LH3DFIHIR', 'active', '2018-03-26 12:50:19', '2018-03-26 12:51:09'),
(128, 176, 'CPZ4JRCDZL', 'pending', '2018-03-26 13:09:57', '2018-03-26 13:09:57'),
(129, 177, 'MWEXJ6KNDM', 'active', '2018-03-27 14:31:33', '2018-03-27 15:30:21'),
(130, 178, 'J0ZHHVL7VD', 'pending', '2018-05-10 11:57:48', '2018-05-10 11:57:48'),
(131, 179, 'V03LQI1YWR', 'pending', '2018-05-10 11:58:30', '2018-05-10 11:58:30');

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
  `remarks` varchar(255) DEFAULT NULL,
  `upload_file` varchar(255) NOT NULL,
  `status` enum('Pending','Approved','Rejected','') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_lessonplan`
--

INSERT INTO `c_lessonplan` (`id`, `lessonname`, `class_id`, `teacher_id`, `date`, `remarks`, `upload_file`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lesson Plan', 13, 78, '2018-01-18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'uploads/lesson/PDF-1515574447.pdf', 'Approved', '2018-01-10 03:24:07', '2018-01-10 03:24:07'),
(2, 'Lesson Plan 2', 12, 78, '2018-01-27', 'This is testing description', 'uploads/lesson/XLSX-1515574607.xlsx', 'Rejected', '2018-01-10 03:26:47', '2018-01-19 21:52:08'),
(3, 'lesson plan test march 1', 12, 78, '2018-03-01', NULL, 'uploads/lesson/PDF-1519882477.pdf', 'Pending', '2018-03-01 08:04:37', '2018-03-01 08:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `c_letterhead`
--

CREATE TABLE `c_letterhead` (
  `id` int(11) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `declaration` text NOT NULL,
  `media` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_letterhead`
--

INSERT INTO `c_letterhead` (`id`, `principal_id`, `title`, `declaration`, `media`, `created_at`, `updated_at`) VALUES
(2, 77, 'Testing Title title 123', '<p>I have read and understood the attached information regarding the Y5/6 camp to Lakewood Lodge and I undestand the nature of the activities proposed.<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I give my consent for <strong>{{ CHILD NAME }}</strong> (child\'s name) in <strong>{{ CLASS NAME }}</strong> (class) to participate in this excursion.<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am aware that school insurance does not cover any accidents nor loss or damage of personal belongings. I am aware that if my child is involved in a serious discipilinary problem I accept that he/she may sent home at my expense.</p>', '1518704476-boy-student.jpg', '2018-02-16 09:07:51', '2018-02-16 09:59:00');

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
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_meal`
--

INSERT INTO `c_meal` (`id`, `type_meal_id`, `property_meal_id`, `std_id`, `teacher_id`, `date`, `time`, `amount`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 24, 78, '2018-01-12', '07:00:00', '20', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '2018-01-13 05:05:19', '2018-01-18 00:01:52'),
(2, 1, 1, 63, 78, '2018-02-01', '07:00:00', '25', '9 feb feed testing', '2018-02-09 06:47:11', '2018-02-09 06:47:11'),
(3, 1, 1, 64, 78, '2018-03-14', '07:00:00', '1000', 'test for 12 march date format', '2018-03-12 09:13:27', '2018-03-12 09:19:55'),
(4, 1, 1, 64, 78, '2018-03-13', '07:00:00', '505', 'testing 2 day record fetching', '2018-03-13 06:38:50', '2018-03-13 06:38:50');

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
  `id` int(10) NOT NULL,
  `std_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `start_nap` timestamp NULL DEFAULT NULL,
  `end_nap` timestamp NULL DEFAULT NULL,
  `start_comment` text,
  `end_comment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_nap`
--

INSERT INTO `c_nap` (`id`, `std_id`, `teacher_id`, `start_nap`, `end_nap`, `start_comment`, `end_comment`, `created_at`, `updated_at`) VALUES
(1, 24, 78, '2018-01-13 15:00:00', NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '', '2018-01-13 06:53:42', '2018-01-18 03:56:19'),
(2, 23, 78, '2018-01-13 15:00:00', '2018-01-13 16:41:22', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '', '2018-01-13 06:53:42', '2018-01-13 06:53:42'),
(3, 23, 78, '2018-01-18 05:30:00', NULL, 'Nap Started', NULL, '2018-01-18 03:25:45', '2018-01-18 03:56:19'),
(4, 63, 78, '2018-02-01 03:00:00', '2018-02-01 09:00:00', '9 feb nap testing', NULL, '2018-02-09 06:38:54', '2018-02-09 06:40:22'),
(5, 63, 78, '2018-02-19 15:30:00', NULL, 'started nap on 16 feb', NULL, '2018-02-16 14:00:08', '2018-02-16 14:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `c_notice`
--

CREATE TABLE `c_notice` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `category` enum('general','medication') NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `medicalmethod` enum('Oral','External Applied') NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `frequency` int(11) NOT NULL,
  `food` enum('beforefood','afterfood') NOT NULL,
  `comment` text NOT NULL,
  `notice_status` enum('done','pending') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_notice`
--

INSERT INTO `c_notice` (`id`, `std_id`, `parent_id`, `date`, `category`, `medicine`, `medicalmethod`, `dosage`, `frequency`, `food`, `comment`, `notice_status`, `created_at`, `updated_at`) VALUES
(1, 64, 152, '2018-03-16', 'medication', 'test333', '', '34', 1, 'beforefood', 'test333', 'pending', '2018-03-16 10:57:21', '2018-03-16 10:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `c_notice_photo`
--

CREATE TABLE `c_notice_photo` (
  `id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `media` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_notice_photo`
--

INSERT INTO `c_notice_photo` (`id`, `notice_id`, `media`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '1520850053-baby-1.jpeg', '1', '2018-03-12 12:50:55', '2018-03-12 12:50:55'),
(2, 2, '1520850053-baby-3.jpeg', '1', '2018-03-12 12:50:55', '2018-03-12 12:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `c_notification`
--

CREATE TABLE `c_notification` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `type` enum('broadcast','event','consentform','photo','notice','lesson','observation') NOT NULL,
  `notification` text NOT NULL,
  `start_date` datetime NOT NULL,
  `status` enum('yes','no') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_notification`
--

INSERT INTO `c_notification` (`id`, `sender_id`, `parent_id`, `type_id`, `type`, `notification`, `start_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 77, 103, 0, 'broadcast', 'testing 9 feb notif', '2018-02-09 07:00:00', 'yes', '2018-02-09 15:29:21', '2018-02-13 10:07:50'),
(2, 77, 150, 0, 'broadcast', 'testing 9 feb notif', '2018-02-09 07:00:00', 'no', '2018-02-09 15:29:22', '2018-02-09 15:29:22'),
(3, 77, 152, 0, 'broadcast', 'testing 9 feb notif', '2018-02-09 07:00:00', 'no', '2018-02-09 09:59:22', '2018-02-10 08:28:54'),
(4, 77, 150, 0, 'event', 'event testing 9 feb notif', '2018-02-09 22:00:00', 'no', '2018-02-09 15:37:37', '2018-02-09 15:37:37'),
(5, 77, 151, 0, 'event', 'event testing 9 feb notif', '2018-02-09 22:00:00', 'no', '2018-02-09 15:37:37', '2018-02-09 15:37:37'),
(6, 77, 152, 0, 'event', 'event testing 9 feb notif', '2018-02-09 22:00:00', 'yes', '2018-02-09 15:37:37', '2018-02-10 08:05:56'),
(7, 78, 150, 0, 'consentform', 'testing consent form  9 feb notif', '2018-02-01 21:30:00', 'no', '2018-02-09 15:43:47', '2018-02-09 15:43:47'),
(10, 78, 152, 48, 'photo', 'hello 4', '0000-00-00 00:00:00', 'yes', '2018-02-09 16:50:57', '2018-02-10 08:06:00'),
(11, 78, 153, 48, 'photo', 'hello 4', '0000-00-00 00:00:00', 'no', '2018-02-09 16:50:57', '2018-02-09 16:50:57'),
(12, 78, 150, 4, 'consentform', '10 feb consent test', '2018-02-10 13:30:00', 'no', '2018-02-10 08:50:02', '2018-02-10 08:50:02'),
(13, 78, 152, 4, 'consentform', '10 feb consent test', '2018-02-10 13:30:00', 'no', '2018-02-10 08:50:02', '2018-02-10 08:50:02'),
(14, 77, 150, 45, 'event', '10 feb event test', '2018-02-28 15:00:00', 'no', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(15, 77, 151, 45, 'event', '10 feb event test', '2018-02-28 15:00:00', 'no', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(16, 77, 152, 45, 'event', '10 feb event test', '2018-02-28 15:00:00', 'no', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(17, 77, 153, 45, 'event', '10 feb event test', '2018-02-28 15:00:00', 'no', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(18, 77, 152, 45, 'event', '10 feb event test', '2018-02-28 15:00:00', 'no', '2018-02-10 13:00:29', '2018-02-10 13:00:29'),
(19, 78, 150, 5, 'consentform', '10 feb consent testing after evealuation', '2018-02-28 17:30:00', 'no', '2018-02-10 13:29:45', '2018-02-10 13:29:45'),
(20, 78, 152, 5, 'consentform', '10 feb consent testing after evealuation', '2018-02-28 17:30:00', 'no', '2018-02-10 13:29:45', '2018-02-10 13:29:45'),
(23, 78, 152, 6, 'consentform', '14 feb consent signature testing', '2018-02-15 14:30:00', 'no', '2018-02-14 13:20:02', '2018-02-14 13:20:02'),
(24, 152, 152, 4, 'notice', 'zxcdfvbghj', '2018-02-18 00:00:00', 'no', '2018-02-17 06:17:28', '2018-02-17 06:17:28'),
(25, 152, 152, 1, 'notice', 'healsth chekcupppppppppppppp', '2018-02-18 00:00:00', 'no', '2018-02-17 08:02:55', '2018-02-17 08:02:55'),
(26, 152, 152, 1, 'notice', 'healsth chekcupppppppppppppp', '2018-02-18 00:00:00', 'no', '2018-02-17 10:24:48', '2018-02-17 10:24:48'),
(27, 152, 152, 1, 'notice', 'healsth chekcupppppppppppppp', '2018-02-18 00:00:00', 'no', '2018-02-17 10:26:38', '2018-02-17 10:26:38'),
(28, 152, 152, 1, 'notice', 'healsth chekcupppppppppppppp', '2018-02-18 00:00:00', 'no', '2018-02-17 10:51:13', '2018-02-17 10:51:13'),
(29, 152, 152, 2, 'notice', 'comment test feb 28', '2018-02-28 00:00:00', 'no', '2018-02-17 11:08:10', '2018-02-17 11:08:10'),
(30, 152, 152, 3, 'notice', 'comment', '2018-02-27 00:00:00', 'no', '2018-02-17 11:08:59', '2018-02-17 11:08:59'),
(31, 77, 81, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(32, 77, 82, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(33, 77, 101, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(34, 77, 102, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(35, 77, 105, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(36, 77, 107, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(37, 77, 108, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(38, 77, 122, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(39, 77, 123, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(40, 77, 124, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(41, 77, 125, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(42, 77, 150, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(43, 77, 151, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:53', '2018-02-17 12:18:53'),
(44, 77, 152, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:54', '2018-02-17 12:18:54'),
(45, 77, 153, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:54', '2018-02-17 12:18:54'),
(46, 77, 152, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:54', '2018-02-17 12:18:54'),
(47, 77, 152, 52, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:18:54', '2018-02-17 12:18:54'),
(48, 77, 81, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(49, 77, 82, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(50, 77, 101, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(51, 77, 102, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(52, 77, 105, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(53, 77, 107, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(54, 77, 108, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(55, 77, 122, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(56, 77, 123, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(57, 77, 124, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(58, 77, 125, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:22', '2018-02-17 12:23:22'),
(59, 77, 150, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:23', '2018-02-17 12:23:23'),
(60, 77, 151, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:23', '2018-02-17 12:23:23'),
(61, 77, 152, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:23', '2018-02-17 12:23:23'),
(62, 77, 153, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:23', '2018-02-17 12:23:23'),
(63, 77, 152, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:23', '2018-02-17 12:23:23'),
(64, 77, 152, 53, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:23:23', '2018-02-17 12:23:23'),
(65, 77, 81, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:30', '2018-02-17 12:24:30'),
(66, 77, 82, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:30', '2018-02-17 12:24:30'),
(67, 77, 101, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:30', '2018-02-17 12:24:30'),
(68, 77, 102, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:30', '2018-02-17 12:24:30'),
(69, 77, 105, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:30', '2018-02-17 12:24:30'),
(70, 77, 107, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(71, 77, 108, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(72, 77, 122, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(73, 77, 123, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(74, 77, 124, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(75, 77, 125, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(76, 77, 150, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(77, 77, 151, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(78, 77, 152, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(79, 77, 153, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(80, 77, 152, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(81, 77, 152, 54, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:24:31', '2018-02-17 12:24:31'),
(82, 77, 81, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(83, 77, 82, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(84, 77, 101, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(85, 77, 102, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(86, 77, 105, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(87, 77, 107, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(88, 77, 108, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(89, 77, 122, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(90, 77, 123, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(91, 77, 124, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(92, 77, 125, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(93, 77, 150, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:03', '2018-02-17 12:29:03'),
(94, 77, 151, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(95, 77, 152, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(96, 77, 153, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(97, 77, 152, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(98, 77, 152, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(99, 77, 150, 55, 'event', 'test feb 17', '2018-02-20 21:00:00', 'no', '2018-02-17 12:29:04', '2018-02-17 12:29:04'),
(100, 77, 81, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(101, 77, 82, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(102, 77, 101, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(103, 77, 102, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(104, 77, 105, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(105, 77, 107, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(106, 77, 108, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(107, 77, 122, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(108, 77, 123, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(109, 77, 124, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(110, 77, 125, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(111, 77, 150, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'yes', '2018-02-17 12:30:49', '2018-03-13 12:23:41'),
(112, 77, 151, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:49', '2018-02-17 12:30:49'),
(113, 77, 152, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:50', '2018-02-17 12:30:50'),
(114, 77, 153, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:50', '2018-02-17 12:30:50'),
(115, 77, 152, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:50', '2018-02-17 12:30:50'),
(116, 77, 152, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'no', '2018-02-17 12:30:50', '2018-02-17 12:30:50'),
(117, 77, 150, 56, 'event', 'title feb 17', '2018-02-18 19:00:00', 'yes', '2018-02-17 12:30:50', '2018-03-13 12:22:01'),
(118, 152, 152, 1, 'notice', 'test comment feb 17', '2018-02-19 00:00:00', 'no', '2018-02-17 13:37:54', '2018-02-17 13:37:54'),
(119, 152, 152, 1, 'notice', 'comment testtstststs', '2018-02-19 00:00:00', 'no', '2018-02-17 13:40:04', '2018-02-17 13:40:04'),
(120, 152, 152, 2, 'notice', 'awdfdgth', '2018-02-20 00:00:00', 'no', '2018-02-17 13:42:05', '2018-02-17 13:42:05'),
(121, 152, 152, 3, 'notice', 'xsdfbgh', '2018-02-20 00:00:00', 'no', '2018-02-17 13:43:05', '2018-02-17 13:43:05'),
(122, 152, 152, 1, 'notice', 'scdvfbfhg', '2018-02-21 00:00:00', 'no', '2018-02-17 13:47:56', '2018-02-17 13:47:56'),
(123, 152, 152, 1, 'notice', 'scdvfbfhg', '2018-02-21 00:00:00', 'no', '2018-02-17 13:48:45', '2018-02-17 13:48:45'),
(124, 152, 152, 2, 'notice', 'test feb  20 feb', '2018-02-20 00:00:00', 'no', '2018-02-17 16:20:02', '2018-02-17 16:20:02'),
(125, 152, 152, 2, 'notice', 'test feb  20 feb 2020202020020', '2018-02-20 00:00:00', 'no', '2018-02-17 16:21:42', '2018-02-17 16:21:42'),
(126, 152, 152, 3, 'notice', '28 feb with photos', '2018-02-28 00:00:00', 'no', '2018-02-17 16:22:35', '2018-02-17 16:22:35'),
(127, 152, 152, 2, 'notice', 'test feb  20 feb 2020202020020scdvgfnhggbfsdgfnhggfsfasdsfdgn', '2018-02-20 00:00:00', 'no', '2018-02-17 16:58:12', '2018-02-17 16:58:12'),
(128, 152, 152, 2, 'notice', 'test feb  20 feb 2020202020020scdvgfnhggbfsdgfnhggfsfasdsfdgnsacdvfgnhfgbfsdasgfnhnfgdsfdnhgbfdssgnhgfdsfgdgds', '2018-02-20 00:00:00', 'no', '2018-02-17 16:58:26', '2018-02-17 16:58:26'),
(129, 78, 77, 3, 'lesson', 'lesson plan test march 1', '0000-00-00 00:00:00', 'no', '2018-03-01 08:04:39', '2018-03-01 08:04:39'),
(130, 78, 77, 4, 'lesson', 'lesson plan test 2  march 1', '0000-00-00 00:00:00', 'no', '2018-03-01 11:00:52', '2018-03-01 11:00:52'),
(131, 78, 77, 5, 'lesson', 'lesson plan test 2  march 1', '0000-00-00 00:00:00', 'no', '2018-03-01 11:25:42', '2018-03-01 11:25:42'),
(132, 78, 77, 4, 'lesson', 'lesson plane march 5', '0000-00-00 00:00:00', 'no', '2018-03-05 06:23:13', '2018-03-05 06:23:13'),
(133, 78, 77, 58, 'photo', 'tagged 7 march', '0000-00-00 00:00:00', 'no', '2018-03-07 09:43:56', '2018-03-07 09:43:56'),
(134, 77, 150, 57, 'event', 'march 8 test event', '2018-03-09 20:30:00', 'yes', '2018-03-08 07:21:18', '2018-03-13 12:21:46'),
(135, 77, 151, 57, 'event', 'march 8 test event', '2018-03-09 20:30:00', 'no', '2018-03-08 07:21:18', '2018-03-08 07:21:18'),
(136, 77, 152, 57, 'event', 'march 8 test event', '2018-03-09 20:30:00', 'no', '2018-03-08 07:21:18', '2018-03-08 07:21:18'),
(137, 77, 152, 58, 'event', 'march 8 test event 7::00', '2018-03-09 07:00:00', 'no', '2018-03-08 15:50:17', '2018-03-08 15:50:17'),
(138, 77, 153, 58, 'event', 'march 8 test event 7::00', '2018-03-09 07:00:00', 'no', '2018-03-08 15:50:17', '2018-03-08 15:50:17'),
(139, 152, 152, 1, 'notice', 'notice test march 8', '2018-03-09 00:00:00', 'no', '2018-03-08 16:50:52', '2018-03-08 16:50:52'),
(140, 152, 152, 1, 'notice', 'notice test march 8', '2018-03-09 00:00:00', 'no', '2018-03-08 16:53:58', '2018-03-08 16:53:58'),
(141, 152, 152, 2, 'notice', 'coment march 8', '2018-03-10 00:00:00', 'no', '2018-03-08 16:55:25', '2018-03-08 16:55:25'),
(142, 78, 152, 1, 'consentform', 'march 9 test consent', '2018-03-09 13:00:00', 'no', '2018-03-09 08:08:05', '2018-03-09 08:08:05'),
(143, 78, 77, 14, 'observation', 'other', '0000-00-00 00:00:00', 'no', '2018-03-09 11:16:36', '2018-03-09 11:16:36'),
(144, 78, 77, 15, 'observation', 'growth', '0000-00-00 00:00:00', 'no', '2018-03-09 11:20:01', '2018-03-09 11:20:01'),
(145, 152, 152, 1, 'notice', 'test 1', '2018-03-10 00:00:00', 'no', '2018-03-09 11:35:41', '2018-03-09 11:35:41'),
(146, 152, 152, 2, 'notice', 'test 2', '2018-03-10 00:00:00', 'no', '2018-03-09 11:36:05', '2018-03-09 11:36:05'),
(147, 152, 152, 1, 'notice', 'test 1', '2018-03-10 00:00:00', 'no', '2018-03-09 11:49:25', '2018-03-09 11:49:25'),
(148, 152, 152, 2, 'notice', 'test 2', '2018-03-10 00:00:00', 'no', '2018-03-09 11:50:25', '2018-03-09 11:50:25'),
(149, 152, 152, 1, 'notice', 'testing 1', '2018-03-10 00:00:00', 'no', '2018-03-09 11:55:15', '2018-03-09 11:55:15'),
(150, 152, 152, 2, 'notice', 'testing 2', '2018-03-11 00:00:00', 'no', '2018-03-09 11:55:52', '2018-03-09 11:55:52'),
(151, 152, 152, 3, 'notice', 'testing 3', '2018-03-12 00:00:00', 'no', '2018-03-09 11:57:35', '2018-03-09 11:57:35'),
(152, 152, 152, 4, 'notice', 'te', '2018-03-10 00:00:00', 'no', '2018-03-09 11:58:10', '2018-03-09 11:58:10'),
(153, 152, 152, 5, 'notice', 'testingngng 56', '2018-03-10 00:00:00', 'no', '2018-03-09 11:58:57', '2018-03-09 11:58:57'),
(155, 152, 78, 1, 'notice', 'testing 1 for notification', '2018-03-12 00:00:00', 'yes', '2018-03-12 12:49:02', '2018-03-13 10:21:15'),
(156, 152, 78, 2, 'notice', 'testing commentntntntnntnt 14 march', '2018-03-14 00:00:00', 'no', '2018-03-12 12:50:55', '2018-03-13 09:38:31'),
(157, 78, 77, 59, 'photo', 'hey MunMun', '0000-00-00 00:00:00', 'no', '2018-03-12 13:54:56', '2018-03-12 13:54:56'),
(158, 78, 77, 16, 'observation', 'other', '0000-00-00 00:00:00', 'no', '2018-03-13 08:02:40', '2018-03-13 08:02:40'),
(159, 159, 162, 2, 'consentform', 'testing by new account', '2018-03-15 07:00:00', 'no', '2018-03-14 13:16:43', '2018-03-14 13:16:43'),
(160, 159, 162, 3, 'consentform', 'testing 2', '2018-03-17 07:00:00', 'no', '2018-03-14 14:17:25', '2018-03-14 14:17:25'),
(161, 152, 78, 3, 'notice', 'testing', '2018-03-16 00:00:00', 'no', '2018-03-16 10:51:54', '2018-03-16 10:51:54'),
(162, 152, 78, 4, 'notice', 'fgyhgfcgfcgfcgfcgfcgfcghgfcghvgvv', '2018-03-17 00:00:00', 'no', '2018-03-16 10:53:02', '2018-03-16 10:53:02'),
(163, 152, 78, 1, 'notice', 'test333', '2018-03-16 00:00:00', 'no', '2018-03-16 10:57:21', '2018-03-16 10:57:21'),
(164, 158, 175, 14, 'broadcast', 'test 26 march', '2018-03-27 07:00:00', 'yes', '2018-03-26 08:00:17', '2018-03-26 09:47:45');

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
(2, 24, 78, 'other', '3\'4', '20', '', 'approved', 'no', '2018-01-10 11:32:13', '2018-01-20 01:50:03'),
(3, 23, 78, 'growth', '3\'2', '19', 'belongsTo method specifying your parent table\'s custom key.', 'pending', 'no', '2018-01-10 11:34:14', '2018-01-24 07:36:04'),
(4, 23, 78, 'growth', '3\'4', '21', 'Adding Observation', 'approved', 'no', '2018-01-10 11:39:02', '2018-01-24 12:37:29'),
(5, 23, 78, 'other', '', '0', 'We will use anonymous functions in the routes file', 'approved', 'no', '2018-01-12 12:07:15', '2018-01-24 07:33:26'),
(6, 24, 78, 'growth', '3\'2', '18', '', 'approved', 'no', '2018-01-12 12:07:41', '2018-01-29 06:25:13'),
(8, 23, 78, 'other', '3\'4', '23', '', 'pending', 'no', '2018-01-18 02:08:49', '2018-01-23 01:41:54'),
(9, 25, 78, 'growth', '3\'4', '23', '', 'approved', 'no', '2018-01-18 02:09:20', '2018-01-24 12:36:29'),
(10, 23, 78, 'growth', '5\'5', '35', '', 'rejected', 'no', '2018-01-18 02:20:50', '2018-01-24 12:37:34'),
(11, 31, 96, 'growth', '4', '200', '', 'rejected', 'no', '2018-01-28 21:17:14', '2018-01-28 21:28:16'),
(12, 23, 78, 'growth', '4', '20', '', 'pending', 'no', '2018-01-29 07:32:03', '2018-01-29 07:32:22'),
(13, 63, 78, 'other', '', '0', '7 feb observation', 'approved', 'no', '2018-02-07 11:43:28', '2018-02-07 12:26:35'),
(14, 64, 78, 'other', '', '0', 'march 9 test', 'pending', 'no', '2018-03-09 11:16:36', '2018-03-09 11:16:36'),
(15, 64, 78, 'growth', '5', '5', '', 'pending', 'no', '2018-03-09 11:20:01', '2018-03-09 11:20:01'),
(16, 64, 78, 'other', '', '0', 'testing 2 day record', 'pending', 'no', '2018-03-13 08:02:40', '2018-03-13 08:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `c_other`
--

CREATE TABLE `c_other` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_other`
--

INSERT INTO `c_other` (`id`, `std_id`, `teacher_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 24, 78, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2018-01-13 02:35:50', '2018-01-13 02:35:50'),
(2, 23, 78, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2018-01-13 02:35:50', '2018-01-13 02:35:50'),
(3, 23, 78, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2018-01-15 22:17:43', '2018-01-15 22:17:43'),
(4, 23, 78, 'Updated Content - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2018-01-18 04:32:22', '2018-01-18 04:32:22'),
(5, 63, 78, 'activity added 7 feb', '2018-02-07 12:32:47', '2018-02-07 12:32:47'),
(6, 63, 78, 'activity added 9 feb', '2018-02-09 08:45:05', '2018-02-09 08:45:05'),
(7, 63, 78, '16th Feb Add Activity Details - Other', '2018-02-16 13:41:33', '2018-02-16 13:41:33'),
(8, 66, 159, 'testing comment', '2018-03-14 06:36:16', '2018-03-14 06:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `c_parents`
--

CREATE TABLE `c_parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `principal_id` int(11) DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_parents`
--

INSERT INTO `c_parents` (`id`, `user_id`, `student_id`, `principal_id`, `relationship`, `created_at`, `updated_at`) VALUES
(7, 35, 7, NULL, NULL, '2017-12-24 16:42:55', '2017-12-24 16:42:55'),
(8, 36, 7, NULL, NULL, '2017-12-24 16:43:02', '2017-12-24 16:43:02'),
(9, 37, 8, NULL, NULL, '2017-12-24 19:11:23', '2017-12-24 19:11:23'),
(10, 46, 9, NULL, NULL, '2017-12-25 18:51:33', '2017-12-25 18:51:33'),
(11, 47, 10, NULL, NULL, '2017-12-25 18:55:57', '2017-12-25 18:55:57'),
(12, 48, 11, NULL, NULL, '2017-12-25 18:56:52', '2017-12-25 18:56:52'),
(13, 49, 12, NULL, NULL, '2017-12-25 18:58:05', '2017-12-25 18:58:05'),
(14, 50, 13, NULL, NULL, '2017-12-26 01:44:17', '2017-12-26 01:44:17'),
(15, 51, 14, NULL, NULL, '2017-12-26 23:13:38', '2017-12-26 23:13:38'),
(19, 69, 21, NULL, NULL, '2018-01-02 02:23:06', '2018-01-02 02:23:06'),
(26, 81, 23, NULL, NULL, '2018-01-10 10:59:54', '2018-01-10 10:59:54'),
(27, 82, 24, NULL, NULL, '2018-01-10 11:01:48', '2018-01-10 11:01:48'),
(28, 83, 25, NULL, NULL, '2018-01-18 02:07:24', '2018-01-18 02:07:24'),
(29, 84, 26, NULL, NULL, '2018-01-22 01:55:51', '2018-01-22 01:55:51'),
(30, 85, 3, NULL, NULL, '2018-01-24 07:00:19', '2018-01-24 07:00:19'),
(31, 86, 4, NULL, NULL, '2018-01-24 07:01:45', '2018-01-24 07:01:45'),
(32, 97, 18, NULL, NULL, '2018-01-28 20:50:59', '2018-01-28 20:50:59'),
(33, 98, 21, NULL, NULL, '2018-02-01 12:41:20', '2018-02-01 12:41:20'),
(34, 99, 21, NULL, NULL, '2018-02-01 12:41:31', '2018-02-01 12:41:31'),
(35, 100, 22, NULL, NULL, '2018-02-01 13:20:05', '2018-02-01 13:20:05'),
(36, 101, 23, NULL, NULL, '2018-02-01 13:22:36', '2018-02-01 13:22:36'),
(37, 102, 24, NULL, NULL, '2018-02-01 15:17:14', '2018-02-01 15:17:14'),
(38, 103, 25, NULL, NULL, '2018-02-02 09:00:39', '2018-02-02 09:00:39'),
(39, 105, 38, NULL, NULL, '2018-02-02 09:54:56', '2018-02-02 09:54:56'),
(40, 107, 42, NULL, NULL, '2018-02-02 14:52:33', '2018-02-02 14:52:33'),
(41, 108, 42, NULL, NULL, '2018-02-02 14:52:46', '2018-02-02 14:52:46'),
(55, 122, 53, NULL, 'father', '2018-02-05 11:22:21', '2018-02-05 11:22:21'),
(56, 123, 53, NULL, 'mother', '2018-02-05 11:22:27', '2018-02-05 11:22:27'),
(57, 124, 55, NULL, 'father', '2018-02-05 14:34:38', '2018-02-05 14:34:38'),
(58, 125, 55, NULL, 'mother', '2018-02-05 14:34:49', '2018-02-05 14:34:49'),
(59, 135, 56, NULL, NULL, '2018-02-06 11:33:12', '2018-02-06 11:33:12'),
(60, 136, 56, NULL, NULL, '2018-02-06 11:33:20', '2018-02-06 11:33:20'),
(61, 137, 57, NULL, NULL, '2018-02-06 11:44:07', '2018-02-06 11:44:07'),
(62, 139, 58, NULL, NULL, '2018-02-06 11:52:44', '2018-02-06 11:52:44'),
(63, 141, 59, NULL, NULL, '2018-02-06 11:59:03', '2018-02-06 11:59:03'),
(64, 144, 60, NULL, NULL, '2018-02-06 14:06:28', '2018-02-06 14:06:28'),
(66, 147, 61, NULL, NULL, '2018-02-06 14:17:04', '2018-02-06 14:17:04'),
(67, 148, 62, NULL, NULL, '2018-02-06 14:33:57', '2018-02-06 14:33:57'),
(68, 149, 62, NULL, NULL, '2018-02-06 14:34:07', '2018-02-06 14:34:07'),
(69, 150, 63, NULL, 'father', '2018-02-06 20:24:30', '2018-02-06 20:24:30'),
(70, 151, 63, NULL, 'uncle', '2018-02-06 20:24:39', '2018-02-06 20:24:39'),
(71, 152, 64, 77, 'father', '2018-02-07 14:49:57', '2018-03-22 14:20:37'),
(72, 153, 64, 77, 'uncle', '2018-02-07 14:50:08', '2018-03-22 14:20:37'),
(73, 152, 63, NULL, NULL, '2018-02-07 15:17:30', '2018-02-07 15:17:30'),
(74, 152, 55, NULL, NULL, '2018-02-08 08:50:15', '2018-02-08 08:50:15'),
(75, 157, 0, 77, 'maid', '2018-03-10 06:45:12', '2018-03-10 06:45:12'),
(80, 164, 0, 158, 'father', '2018-03-10 07:11:30', '2018-03-10 07:11:30'),
(86, 165, 0, 158, '', '2018-03-14 17:19:38', '2018-03-14 17:19:38'),
(89, 169, 69, 77, NULL, '2018-03-23 07:33:38', '2018-03-23 07:33:38'),
(90, 170, 69, 77, NULL, '2018-03-23 07:33:45', '2018-03-23 07:33:45'),
(91, 171, 70, 77, NULL, '2018-03-23 09:40:33', '2018-03-23 09:40:33'),
(92, 172, 70, 77, NULL, '2018-03-23 09:40:39', '2018-03-23 09:40:39'),
(93, 173, 71, 77, NULL, '2018-03-23 09:40:44', '2018-03-23 09:40:44'),
(94, 174, 71, 77, NULL, '2018-03-23 09:40:49', '2018-03-23 09:40:49'),
(95, 175, 0, 158, 'uncle', '2018-03-26 07:20:19', '2018-03-26 07:20:19'),
(96, 176, 72, 158, 'mother', '2018-03-26 07:39:57', '2018-03-26 07:39:57'),
(97, 175, 72, 158, NULL, '2018-03-26 07:40:41', '2018-03-26 07:40:41'),
(98, 177, 0, 158, 'aunty', '2018-03-27 09:01:32', '2018-03-27 09:01:32'),
(100, 177, 0, 158, '', '2018-03-27 12:12:08', '2018-03-27 12:12:08'),
(101, 177, 74, 158, NULL, '2018-03-27 12:35:39', '2018-03-27 12:35:39'),
(103, 177, 0, 158, '', '2018-03-27 13:50:01', '2018-03-27 13:50:01'),
(104, 177, 75, 158, 'aunty', '2018-03-27 14:10:42', '2018-03-27 14:10:42'),
(105, 177, 73, 158, 'mother', '2018-03-27 15:42:40', '2018-03-27 15:42:40'),
(106, 175, 73, 158, 'father', '2018-03-27 15:43:13', '2018-03-27 15:43:13'),
(107, 177, 76, 158, 'father', '2018-03-27 16:00:19', '2018-03-27 16:00:19'),
(108, 175, 76, 158, 'mother', '2018-03-27 16:00:41', '2018-03-27 16:00:41'),
(109, 178, 77, 77, NULL, '2018-05-10 06:27:47', '2018-05-10 06:27:47'),
(110, 179, 77, 77, NULL, '2018-05-10 06:28:30', '2018-05-10 06:28:30');

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
('manishmahant@singsys.com', '$2y$10$RuKzKdn0Wd./CwX32OsgN.S.o7tLr8BVvo5PHnrPwy8ifG0535sMu', '2017-12-25 19:12:22'),
('chetandeep@singsys.com', '$2y$10$xt7ryy1dN7lEKBB04m/R3.WR5WaGGBHq.JG8fniDSiNBslD2jUkUy', '2017-12-27 03:43:27'),
('chetandeep+2@singsys.com', '$2y$10$lLoex1wDlfc4C/.P/2apQu1TAFZiNwIb.0m2kiN8BJNV4euloMBfC', '2018-01-01 22:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `c_photos`
--

CREATE TABLE `c_photos` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `media` varchar(255) NOT NULL,
  `status` enum('draft','pending','approved','rejected') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_photos`
--

INSERT INTO `c_photos` (`id`, `teacher_id`, `title`, `media`, `status`, `created_at`, `updated_at`) VALUES
(11, 78, 'Lorem Ipsum', '1516111305-about-banner.jpg', 'pending', '2018-01-16 08:31:45', '2018-01-18 06:16:43'),
(12, 78, '', '1516273352-boy-student.jpg', 'approved', '2018-01-16 08:31:45', '2018-01-18 06:01:19'),
(13, 78, 'Title', '1516111305-blog-banner.jpg', 'pending', '2018-01-16 08:31:45', '2018-01-18 06:01:20'),
(14, 78, '', '1516171784-blogthumb01.jpg', 'pending', '2018-01-17 01:19:44', '2018-02-09 16:02:36'),
(18, 78, '', '1516172084-jobdetails-banner.jpg', 'pending', '2018-01-17 01:24:44', '2018-02-09 16:02:36'),
(21, 78, '', '1516273352-boy-student.jpg', 'pending', '2018-01-17 01:28:12', '2018-02-09 16:02:36'),
(23, 78, '', '1516273352-boy-student.jpg', 'approved', '2018-01-17 01:51:45', '2018-01-18 05:36:47'),
(24, 78, '', '1516273352-boy-student.jpg', 'rejected', '2018-01-17 01:54:46', '2018-01-17 01:54:46'),
(25, 78, '', '1516273352-boy-student.jpg', 'approved', '2018-01-18 05:32:32', '2018-01-18 06:01:19'),
(26, 78, '', '1516273352-child_image.png', 'pending', '2018-01-18 05:32:32', '2018-01-18 05:32:32'),
(27, 79, '', '1516872287-banana.png', 'approved', '2018-01-25 03:54:47', '2018-02-01 17:46:07'),
(29, 96, 'tagged check', '20180129024242-crop.jpg', 'approved', '2018-01-28 21:12:10', '2018-01-28 21:23:03'),
(30, 78, 'tagging siiiiii', '1517565465-avatar04.png', 'pending', '2018-02-02 12:27:45', '2018-02-02 12:38:10'),
(31, 78, '', '1517576188-baby-img1.png', 'pending', '2018-02-02 15:26:28', '2018-02-09 16:02:36'),
(32, 78, 'tagged 7 feb', '1517983659-banner.png', 'approved', '2018-02-07 08:37:39', '2018-02-07 10:36:37'),
(33, 78, 'hello', '1518183129-baby-img2.png', 'pending', '2018-02-09 16:02:09', '2018-02-09 16:02:36'),
(48, 78, 'hello 4', '1518186040-baby-img2.png', 'pending', '2018-02-09 16:50:40', '2018-02-09 16:51:00'),
(49, 152, '', '5a816227a3a37.png', 'draft', '2018-02-12 12:15:11', '2018-02-12 12:15:11'),
(50, 0, '', '5a83d22609f1e.png', '', '2018-02-14 08:37:34', '2018-02-14 08:37:34'),
(51, 0, '', '5a847806a6a46.png', '', '2018-02-14 20:25:18', '2018-02-14 20:25:18'),
(52, 0, '', '5a87e060d2a85.png', '', '2018-02-17 10:27:20', '2018-02-17 10:27:20'),
(53, 0, '', '5a880e19af64c.png', '', '2018-02-17 13:42:25', '2018-02-17 13:42:25'),
(54, 0, '', '5a880e676bcb9.png', '', '2018-02-17 13:43:43', '2018-02-17 13:43:43'),
(55, 0, '', '5a880ee5829a2.png', '', '2018-02-17 13:45:49', '2018-02-17 13:45:49'),
(56, 78, '', '20180226083516-crop.jpg', 'pending', '2018-02-26 15:04:29', '2018-03-07 09:42:18'),
(58, 78, 'tagged 7 march', '1520406805-2018-03-06.jpg', 'approved', '2018-03-07 09:43:25', '2018-03-07 09:44:27'),
(59, 78, 'hey MunMun', '1520853861-baby-4.jpeg', 'pending', '2018-03-12 13:54:21', '2018-03-12 13:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `c_photo_tagging`
--

CREATE TABLE `c_photo_tagging` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_photo_tagging`
--

INSERT INTO `c_photo_tagging` (`id`, `photo_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 78, 24, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(2, 29, 31, '2018-01-28 21:15:43', '2018-01-28 21:15:43'),
(3, 29, 0, '2018-01-28 21:16:11', '2018-01-28 21:16:11'),
(4, 30, 24, '2018-02-02 12:38:11', '2018-02-02 12:38:11'),
(5, 30, 37, '2018-02-02 12:38:11', '2018-02-02 12:38:11'),
(6, 30, 38, '2018-02-02 12:38:11', '2018-02-02 12:38:11'),
(7, 32, 63, '2018-02-07 08:37:57', '2018-02-07 08:37:57'),
(8, 33, 63, '2018-02-09 16:02:26', '2018-02-09 16:02:26'),
(24, 48, 63, '2018-02-09 16:50:57', '2018-02-09 16:50:57'),
(25, 48, 64, '2018-02-09 16:50:57', '2018-02-09 16:50:57'),
(26, 57, 63, '2018-03-07 09:42:06', '2018-03-07 09:42:06'),
(27, 58, 63, '2018-03-07 09:43:51', '2018-03-07 09:43:51'),
(28, 59, 64, '2018-03-12 13:54:52', '2018-03-12 13:54:52');

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

--
-- Dumping data for table `c_potty`
--

INSERT INTO `c_potty` (`id`, `std_id`, `teacher_id`, `content`, `wet`, `bowel`, `start_date`, `created_at`, `updated_at`) VALUES
(1, 23, 78, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', 'no', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '08:30:00', '2018-01-13 03:51:57', '2018-01-13 03:51:57'),
(2, 63, 78, '8 feb testing', 'yes', 'Movement 8 feb testing', '19:00:00', '2018-02-09 06:46:21', '2018-02-09 06:46:21');

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
(1, 'admin', '2017-12-21 00:44:46', '2017-12-21 00:44:46'),
(2, 'principal', '2017-12-21 00:45:03', '2017-12-21 00:45:03'),
(3, 'teacher', '2017-12-21 22:41:39', '2017-12-21 22:41:39'),
(4, 'parent', '2017-12-21 22:42:57', '2017-12-21 22:42:57'),
(5, 'student', '2017-12-21 22:42:57', '2017-12-21 22:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `c_staff_attendance`
--

CREATE TABLE `c_staff_attendance` (
  `id` int(7) NOT NULL,
  `id_staff` int(7) DEFAULT NULL,
  `attendance_status` enum('1','2','3') NOT NULL COMMENT ' 1=>present,2=>absent, 3=>signed out',
  `attendance_date` date DEFAULT NULL,
  `sign_in_time` time DEFAULT NULL,
  `sign_out_time` time DEFAULT NULL,
  `medical_certificate` enum('2','1') NOT NULL DEFAULT '1' COMMENT '2=>submitted , 1=>not submitted',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_staff_attendance`
--

INSERT INTO `c_staff_attendance` (`id`, `id_staff`, `attendance_status`, `attendance_date`, `sign_in_time`, `sign_out_time`, `medical_certificate`, `updated_at`, `last_updated_by`) VALUES
(1, 78, '2', '2018-02-01', NULL, NULL, '2', '2018-02-01 11:41:35', '77'),
(2, 79, '2', '2018-02-01', NULL, NULL, '2', '2018-02-01 11:41:45', '77'),
(8, 159, '2', '2018-03-13', NULL, NULL, '2', '2018-03-14 09:45:00', '158'),
(9, 159, '1', '2018-03-14', '23:37:32', NULL, '1', '2018-03-14 15:37:32', '158');

-- --------------------------------------------------------

--
-- Table structure for table `c_static_content`
--

CREATE TABLE `c_static_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortdescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_static_content`
--

INSERT INTO `c_static_content` (`id`, `title`, `shortdescription`, `description`, `alias`, `added_date`) VALUES
(1, 'About Us', 'test about us', '<ol>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex.</p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>ed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<ul>\r\n		<li><em>Update&nbsp;parents&nbsp;regarding&nbsp;child&#39;s&nbsp;nap,&nbsp;meals&nbsp;and&nbsp;potty</em></li>\r\n		<li><em>Get&nbsp;quick&nbsp;&amp;&nbsp;easy&nbsp;consent&nbsp;from&nbsp;parents</em></li>\r\n		<li><em>Record&nbsp;child&#39;s&nbsp;growth</em></li>\r\n		<li><em>Chat&nbsp;with&nbsp;parents</em></li>\r\n		<li><em>Get&nbsp;reminders&nbsp;from&nbsp;parents</em></li>\r\n		<li><em>Share&nbsp;photos&nbsp;and&nbsp;videos</em></li>\r\n	</ul>\r\n	</li>\r\n</ol>', 'aboutus', '2018-03-28 14:37:41'),
(2, 'Terms & Conditions', 'terms testing short desc', '<ol>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex.</p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>ed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<p>Sed&nbsp;aliquam&nbsp;interdum&nbsp;efficitur&nbsp;vitae&nbsp;ligula&nbsp;eu&nbsp;odio&nbsp;viverra&nbsp;iaculis&nbsp;donec&nbsp;finibus&nbsp;finibus&nbsp;semper&nbsp;proin&nbsp;nec&nbsp;rutrum&nbsp;ligula&nbsp;pellentesque&nbsp;at&nbsp;laoreetex,&nbsp;quis&nbsp;imperdiet&nbsp;urna.&nbsp;Suspendisse&nbsp;sed&nbsp;porttitor&nbsp;urna&nbsp;vestibulum&nbsp;ornare&nbsp;fringilla&nbsp;nulla&nbsp;sed&nbsp;porttitor&nbsp;arcu&nbsp;auctor&nbsp;eu&nbsp;donec&nbsp;turpis&nbsp;gravida&nbsp;ut&nbsp;condimentum&nbsp;vel&nbsp;venenatis&nbsp;at&nbsp;odio&nbsp;quis&nbsp;laoreet&nbsp;leo&nbsp;et&nbsp;suscipit&nbsp;massa&nbsp;nunc&nbsp;pharetra&nbsp;vulputate&nbsp;ipsum&nbsp;sed&nbsp;tempus&nbsp;turpis&nbsp;ornare&nbsp;curabitur&nbsp;consectetur&nbsp;nisi&nbsp;nec&nbsp;felis&nbsp;ullamcorper&nbsp;gravida&nbsp;vel&nbsp;eget&nbsp;nunc&nbsp;nullam&nbsp;at&nbsp;eleifend&nbsp;purus.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Invulputate&nbsp;lectus&nbsp;in&nbsp;arcu&nbsp;feugiat&nbsp;scelerisque&nbsp;sodales&nbsp;dui&nbsp;scelerisque.</strong></p>\r\n\r\n	<ul>\r\n		<li><em>Update&nbsp;parents&nbsp;regarding&nbsp;child&#39;s&nbsp;nap,&nbsp;meals&nbsp;and&nbsp;potty</em></li>\r\n		<li><em>Get&nbsp;quick&nbsp;&amp;&nbsp;easy&nbsp;consent&nbsp;from&nbsp;parents</em></li>\r\n		<li><em>Record&nbsp;child&#39;s&nbsp;growth</em></li>\r\n		<li><em>Chat&nbsp;with&nbsp;parents</em></li>\r\n		<li><em>Get&nbsp;reminders&nbsp;from&nbsp;parents</em></li>\r\n		<li><em>Share&nbsp;photos&nbsp;and&nbsp;videos</em></li>\r\n	</ul>\r\n	</li>\r\n</ol>', 'terms', '2018-03-28 14:44:54'),
(3, 'Privacy Policy', 'privacy testing short desc', '<p>1914&nbsp;translation&nbsp;by&nbsp;H.&nbsp;Rackham</p>\r\n\r\n<p>&quot;But&nbsp;I&nbsp;must&nbsp;explain&nbsp;to&nbsp;you&nbsp;how&nbsp;all&nbsp;this&nbsp;mistaken&nbsp;idea&nbsp;of&nbsp;denouncing&nbsp;pleasure&nbsp;and&nbsp;praising&nbsp;pain&nbsp;was&nbsp;born&nbsp;and&nbsp;I&nbsp;will&nbsp;give&nbsp;you&nbsp;a&nbsp;complete&nbsp;account&nbsp;of&nbsp;the&nbsp;system,&nbsp;and&nbsp;expound&nbsp;the&nbsp;actual&nbsp;teachings&nbsp;of&nbsp;the&nbsp;great&nbsp;explorer&nbsp;of&nbsp;the&nbsp;truth,&nbsp;the&nbsp;master-builder&nbsp;of&nbsp;human&nbsp;happiness.&nbsp;No&nbsp;one&nbsp;rejects,&nbsp;dislikes,&nbsp;or&nbsp;avoids&nbsp;pleasure&nbsp;itself,&nbsp;because&nbsp;it&nbsp;is&nbsp;pleasure,&nbsp;but&nbsp;because&nbsp;those&nbsp;who&nbsp;do&nbsp;not&nbsp;know&nbsp;how&nbsp;to&nbsp;pursue&nbsp;pleasure&nbsp;rationally&nbsp;encounter&nbsp;consequences&nbsp;that&nbsp;are&nbsp;extremely&nbsp;painful.&nbsp;Nor&nbsp;again&nbsp;is&nbsp;there&nbsp;anyone&nbsp;who&nbsp;loves&nbsp;or&nbsp;pursues&nbsp;or&nbsp;desires&nbsp;to&nbsp;obtain&nbsp;pain&nbsp;of&nbsp;itself,&nbsp;because&nbsp;it&nbsp;is&nbsp;pain,&nbsp;but&nbsp;because&nbsp;occasionally&nbsp;circumstances&nbsp;occur&nbsp;in&nbsp;which&nbsp;toil&nbsp;and&nbsp;pain&nbsp;can&nbsp;procure&nbsp;him&nbsp;some&nbsp;great&nbsp;pleasure.&nbsp;To&nbsp;take&nbsp;a&nbsp;trivial&nbsp;example,&nbsp;which&nbsp;of&nbsp;us&nbsp;ever&nbsp;undertakes&nbsp;laborious&nbsp;physical&nbsp;exercise,&nbsp;except&nbsp;to&nbsp;obtain&nbsp;some&nbsp;advantage&nbsp;from&nbsp;it?&nbsp;But&nbsp;who&nbsp;has&nbsp;any&nbsp;right&nbsp;to&nbsp;find&nbsp;fault&nbsp;with&nbsp;a&nbsp;man&nbsp;who&nbsp;chooses&nbsp;to&nbsp;enjoy&nbsp;a&nbsp;pleasure&nbsp;that&nbsp;has&nbsp;no&nbsp;annoying&nbsp;consequences,&nbsp;or&nbsp;one&nbsp;who&nbsp;avoids&nbsp;a&nbsp;pain&nbsp;that&nbsp;produces&nbsp;no&nbsp;resultant&nbsp;pleasure?&quot;</p>\r\n\r\n<p>Section&nbsp;1.10.33&nbsp;of&nbsp;&quot;de&nbsp;Finibus&nbsp;Bonorum&nbsp;et&nbsp;Malorum&quot;,&nbsp;written&nbsp;by&nbsp;Cicero&nbsp;in&nbsp;45&nbsp;BC</p>\r\n\r\n<p>&quot;At&nbsp;vero&nbsp;eos&nbsp;et&nbsp;accusamus&nbsp;et&nbsp;iusto&nbsp;odio&nbsp;dignissimos&nbsp;ducimus&nbsp;qui&nbsp;blanditiis&nbsp;praesentium&nbsp;voluptatum&nbsp;deleniti&nbsp;atque&nbsp;corrupti&nbsp;quos&nbsp;dolores&nbsp;et&nbsp;quas&nbsp;molestias&nbsp;excepturi&nbsp;sint&nbsp;occaecati&nbsp;cupiditate&nbsp;non&nbsp;provident,&nbsp;similique&nbsp;sunt&nbsp;in&nbsp;culpa&nbsp;qui&nbsp;officia&nbsp;deserunt&nbsp;mollitia&nbsp;animi,&nbsp;id&nbsp;est&nbsp;laborum&nbsp;et&nbsp;dolorum&nbsp;fuga.&nbsp;Et&nbsp;harum&nbsp;quidem&nbsp;rerum&nbsp;facilis&nbsp;est&nbsp;et&nbsp;expedita&nbsp;distinctio.&nbsp;Nam&nbsp;libero&nbsp;tempore,&nbsp;cum&nbsp;soluta&nbsp;nobis&nbsp;est&nbsp;eligendi&nbsp;optio&nbsp;cumque&nbsp;nihil&nbsp;impedit&nbsp;quo&nbsp;minus&nbsp;id&nbsp;quod&nbsp;maxime&nbsp;placeat&nbsp;facere&nbsp;possimus,&nbsp;omnis&nbsp;voluptas&nbsp;assumenda&nbsp;est,&nbsp;omnis&nbsp;dolor&nbsp;repellendus.&nbsp;Temporibus&nbsp;autem&nbsp;quibusdam&nbsp;et&nbsp;aut&nbsp;officiis&nbsp;debitis&nbsp;aut&nbsp;rerum&nbsp;necessitatibus&nbsp;saepe&nbsp;eveniet&nbsp;ut&nbsp;et&nbsp;voluptates&nbsp;repudiandae&nbsp;sint&nbsp;et&nbsp;molestiae&nbsp;non&nbsp;recusandae.&nbsp;Itaque&nbsp;earum&nbsp;rerum&nbsp;hic&nbsp;tenetur&nbsp;a&nbsp;sapiente&nbsp;delectus,&nbsp;ut&nbsp;aut&nbsp;reiciendis&nbsp;voluptatibus&nbsp;maiores&nbsp;alias&nbsp;consequatur&nbsp;aut&nbsp;perferendis&nbsp;doloribus&nbsp;asperiores&nbsp;repellat.&quot;</p>', 'privacy', '2018-03-28 14:45:12');

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
(1, 'Chirppe is a school management web based application to enhance the school activities pertaining to students and keep the parents aware on the student’s activities and updates.', 'Bridge Gap between parents and their kids at school', 'Teachers at school easily note down observations around the day and use the application to:\r\nUpdate parents regarding child\'s nap, meals and potty\r\nGet quick & easy consent from parents\r\nRecord child\'s growth\r\nChat with parents\r\nGet reminders from parents\r\nShare photos and videos', '2017-12-04 11:23:53', NULL);

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
(1, 'crop_20171221040722.png', 'Mauris non tempor quam, et lacinia sapien.', '2017-12-04 11:23:53', NULL),
(2, 'crop_20171221040722.png', 'ccddccd', '2017-12-04 11:23:53', NULL),
(3, 'crop_20171221040722.png', 'cdcddcdcdc', '2017-12-04 11:23:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_students`
--

CREATE TABLE `c_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
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

INSERT INTO `c_students` (`id`, `user_id`, `firstname`, `lastname`, `profile_image`, `gender`, `date_of_birth`, `address`, `card_number`, `postal_code`, `class_id`, `bloodtype`, `guardian1_name`, `guardian1_contact_no`, `relationship1`, `guardian2_name`, `guardian2_contact_no`, `relationship2`, `drugs_allergy`, `medical_condition`, `height`, `weight`, `studentStatus`, `created_at`, `updated_at`) VALUES
(7, 25, 'ABD', 'ASD', '', 'male', '2017-12-04', 'dsda', NULL, '12345678', 1, 'B +ve', 'Man', '123456789', 'father', 'Mani', '987654321', 'mother', 'fcgvhjb,sadgfg', 'asdfg,asdfg', NULL, NULL, '1', '2017-12-24 16:42:55', '2017-12-24 16:42:55'),
(8, 25, 'sfdghhfgds', 'asdfggdsf', '', 'male', '2017-12-04', 'dsfgb', NULL, '1234', 6, 'O +ve', 'aserdf', NULL, 'mother', NULL, NULL, NULL, 'fdg', 'szdf', NULL, NULL, '1', '2017-12-24 19:11:23', '2017-12-24 19:11:23'),
(9, 25, 's1', NULL, '', 'male', '2009-04-13', 'jdrtsdhdcc', NULL, '1234', 1, NULL, 'g1', NULL, 'uncle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-25 18:51:33', '2017-12-25 18:51:33'),
(10, 25, 's2', NULL, '', 'male', '2008-12-22', 'jdrtsdhdccsx', NULL, '1234', 1, NULL, 'g2', NULL, 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-25 18:55:56', '2017-12-25 18:55:56'),
(11, 25, 's3', NULL, '', 'male', '2009-12-21', 'jdrtsdhdccss', NULL, '1234', 1, NULL, 'g3', NULL, 'mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-25 18:56:52', '2017-12-25 18:56:52'),
(12, 25, 's4', NULL, '', 'male', '2008-12-14', 'jdrtsdhdcc', NULL, '1234', 5, NULL, 'g4', NULL, 'uncle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-25 18:58:04', '2017-12-25 18:58:04'),
(13, 2, 's5', NULL, '', 'male', '2017-12-12', 'jdrtsdh', NULL, '1234', 2, NULL, 'manish', NULL, 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 01:44:17', '2017-12-26 01:44:17'),
(14, 2, 'dds', NULL, '', 'male', '2017-12-05', 'jdrtsdh', NULL, '213112', 1, NULL, '21343322', NULL, 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 23:13:37', '2017-12-26 23:13:37'),
(15, 2, 'scdsc', NULL, '', 'male', '2017-12-04', 'dcd', NULL, '13232', 1, NULL, 'saddas', NULL, 'mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-12-26 23:27:48', '2017-12-26 23:27:48'),
(20, 2, 'raveena', NULL, '', 'male', '2018-01-01', 'High Street Road', NULL, '12345', 1, NULL, 'manish', '123435676', 'uncle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-01-02 02:04:29', '2018-01-02 02:04:29'),
(21, 2, 'sultan', NULL, '', 'male', '2018-01-01', 'High Street Road', NULL, '12345', 1, NULL, 'manish', '12345677', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-01-02 02:23:06', '2018-01-02 02:23:06'),
(22, 2, 'ssaasdds', NULL, '', 'male', '2017-12-05', 'jdrtsdh', NULL, '213112', 1, NULL, 'dsaadssd', 'father', 'sadasd', 'sdsd', '123', '132', '2', '2', '1', '2017-12-27 10:13:37', NULL, NULL, NULL),
(24, 77, 'Kriti', 'Jaiswal', '', 'female', '2017-10-11', 'North Bridge, Buidling Block', NULL, '789023', 0, 'A +ve', 'Devendra Shukla', '9876345678', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-01-10 11:01:48', '2018-02-01 12:29:33'),
(25, 77, 'Komal', 'Singh', '', 'female', '2018-01-05', 'North Enclave', NULL, '456789', 0, 'A +ve', 'Preeti Singh', '98762345678', 'mother', NULL, NULL, NULL, 'xcdfghnj', 'Not Well', NULL, NULL, '1', '2018-01-18 02:07:24', '2018-02-01 12:29:16'),
(26, 77, 'trial', 'trail', 'uploads/user_profile/77_20180201015122.png', 'male', '2018-01-01', 'cvfbgfnhg', NULL, '12345', 0, 'B -ve', 'mmanish', '2345622343', 'father', NULL, NULL, NULL, 'vfbg', 'cbvh', NULL, NULL, '1', '2018-01-22 01:55:51', '2018-02-01 12:28:24'),
(29, 77, 'mohitkumar', 'mohit', '', 'male', '2018-01-03', 'xzcdfvgb', NULL, '123453', 14, NULL, 'mscjcd', '3243422432', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-01-24 07:08:15', '2018-01-24 07:08:15'),
(31, 95, 'merastud', 'meramera', '', 'male', '2018-01-01', 'test address', NULL, '122001', 25, NULL, 'meraguard@yopmail.com', '1521521521', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-01-28 20:50:58', '2018-01-28 20:50:58'),
(32, 77, 'mohit', 'sir', 'uploads/user_profile/77_20180201184410.png', 'male', '2018-01-01', 'address', NULL, '12345', 26, 'B -ve', 'sushant', '12345678', 'father', 'sushant2', '12345678', 'mother', 'drugs', 'fever', NULL, NULL, '1', '2018-02-01 12:41:20', '2018-02-01 13:14:12'),
(35, 77, 'Gulshan', 'Sir', 'uploads/user_profile/77_20180201204631.png', 'male', '2018-01-01', 'address', NULL, '123456', 26, NULL, 'gulshansenior', '12345678', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-02-01 15:17:14', '2018-02-01 15:17:14'),
(36, 77, 'chetan+student', 'singh', 'uploads/user_profile/77_20180202142842.png', 'male', '2018-02-01', 'address', NULL, '123456', 23, NULL, 'raveena+parent', '1717171717', 'mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-02-02 09:00:39', '2018-02-02 09:00:39'),
(37, 77, 'shivansh', NULL, 'uploads/user_profile/77_20180202150444.png', 'male', '2018-02-01', 'sdfg', NULL, '123456', 12, 'B +ve', 'Narayan', '123456787', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-02-02 09:35:48', '2018-02-06 06:19:59'),
(38, 77, 'linkin', 'park', 'uploads/user_profile/77_20180202152357.png', 'male', '2018-02-01', 'address', NULL, '123456', 23, NULL, 'linkin senoir', '123356562', 'father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-02-02 09:54:56', '2018-02-02 09:54:56'),
(53, 77, 'Shahrukh', 'kazmi', 'uploads/user_profile/77_20180205163358.png', 'male', '2018-02-01', 'address', NULL, '123456', 23, NULL, 'sharukhsenior', '4343434343', 'father', 'sharukhsenior2', '3434343434', 'mother', NULL, NULL, NULL, NULL, '1', '2018-02-05 11:22:21', '2018-02-05 11:22:21'),
(55, 77, 'Atif', 'Aslam', 'uploads/user_profile/77_20180206144324.png', 'male', '2018-02-01', 'address', NULL, '12345', 30, 'B +ve', 'atifaslamsenior', '2323323233', 'father', 'atifaslamsenior2', '322323223232', 'mother', NULL, NULL, NULL, NULL, '1', '2018-02-05 14:34:38', '2018-02-26 16:22:33'),
(61, 77, 'Saurabh4', 'Shukla4', NULL, 'male', '2017-12-05', 'North Bridge', NULL, '213112', NULL, NULL, 'Chetan Guardian', '9876543212', 'father', 'Chetan Guardian 2', '987345213', 'Mother', NULL, NULL, NULL, NULL, '1', '2018-02-06 14:16:52', '2018-02-06 14:16:52'),
(62, 77, 'Saurabh5', 'Shukla5', NULL, 'male', '2017-12-05', 'North Bridge', NULL, '213112', NULL, NULL, 'Chetan Guardian', '9876543212', 'father', 'Chetan Guardian 2', '987345213', 'Mother', NULL, NULL, NULL, NULL, '1', '2018-02-06 14:33:56', '2018-02-06 14:33:56'),
(63, 77, 'aman', 'last', 'uploads/user_profile/77_20180207015348.png', 'male', '2018-02-01', 'address', NULL, '123456', 30, NULL, 'aman senior', '12345634343', 'father', 'aman senior 2', '544444444533', 'uncle', NULL, NULL, NULL, NULL, '1', '2018-02-06 20:24:30', '2018-02-26 16:22:33'),
(64, 77, 'alok', 'last', 'uploads/user_profile/77_20180207201953.png', 'male', '2018-02-01', 'addresssss', '1234567', '123456', 30, NULL, 'alok senior', '123452232', 'father', 'alok senior 2', '123453232', 'uncle', NULL, NULL, NULL, NULL, '1', '2018-02-07 14:49:56', '2018-03-22 14:20:36'),
(65, NULL, 'ranjan', 'student', 'uploads/user_profile/158_20180310123615.png', 'male', '2018-03-01', 'barabanki', NULL, '12346', 32, 'B +ve', 'ranjan senior', '12345623245', 'guardian', 'ranjan senior1', '12345623246', 'grandmother', NULL, NULL, NULL, NULL, '1', '2018-03-10 07:06:24', '2018-03-10 11:14:09'),
(66, NULL, 'Nalini', 'Pathak', 'uploads/user_profile/158_20180310123833.png', 'female', '2018-03-08', 'address', NULL, '12344', 31, 'O +ve', 'Nalini senior', '12345623223', 'aunty', 'Nalini senior2', '12345623229', 'grandmother', NULL, NULL, NULL, NULL, '1', '2018-03-10 07:09:38', '2018-03-10 13:41:32'),
(67, NULL, 'Sandeep', 'Verma', 'uploads/user_profile/158_20180310124045.png', 'male', '2018-03-08', 'address', NULL, '12342', 31, NULL, 'Sandeep Senior', '12345623243', 'father', 'Sandeep Senior1', '12345623238', 'grandfather', NULL, NULL, NULL, NULL, '1', '2018-03-10 07:11:30', '2018-03-10 07:11:30'),
(69, 77, 'Saurabh1', 'Shukla1', NULL, 'male', '2017-12-05', 'North Bridge', NULL, '213112', NULL, NULL, 'Chetan Guardian', '9876543212', 'father', 'Chetan Guardian 2', '987345213', 'Mother', NULL, NULL, NULL, NULL, '1', '2018-03-23 07:33:38', '2018-03-23 07:33:38'),
(70, 77, 'test1', 'test2', NULL, 'male', '2017-12-05', 'North Bridge', NULL, '213112', NULL, NULL, 'Chetan Guardian 1', '9876543212', 'father', 'Chetan Guardian 2', '987345213', 'Mother', NULL, NULL, NULL, NULL, '1', '2018-03-23 09:40:32', '2018-03-23 09:40:32'),
(71, 77, 'test3', 'test4', NULL, 'male', '2017-12-05', 'North Bridge', NULL, '213112', NULL, NULL, 'Chetan Guardian 2', '9876543212', 'father', 'Chetan Guardian 2', '987345213', 'Mother', NULL, NULL, NULL, NULL, '1', '2018-03-23 09:40:43', '2018-03-23 09:40:43'),
(72, 158, 'Vivek', 'Oberoi', NULL, 'male', '2018-03-14', 'address', '888882', '12344', 31, NULL, 'vivek senior', '12345623223', 'mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-03-26 07:39:56', '2018-03-26 07:39:56'),
(73, 158, 'Piyoosh', 'Chawla', 'uploads/user_profile/158_20180326212615.png', 'male', '2018-03-05', 'address', NULL, '1234', 31, 'B +ve', NULL, NULL, NULL, NULL, NULL, NULL, 'drugs', 'nope', NULL, NULL, '1', '2018-03-26 15:24:16', '2018-03-26 15:56:30'),
(74, 158, 'Ramesh', 'Powar', 'uploads/user_profile/158_20180327155322.png', 'male', '2018-03-12', 'addressssssssss', NULL, '12345', 32, 'A -ve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-03-27 10:23:25', '2018-03-27 10:23:25'),
(75, 158, 'Vikas', 'Arya', 'uploads/user_profile/158_20180327182634.png', 'male', '2018-03-12', 'address', NULL, '12345', 31, 'B +ve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-03-27 12:56:45', '2018-03-27 12:56:45'),
(76, 158, 'Skand', 'Mishra', 'uploads/user_profile/158_20180327212643.png', 'male', '2018-03-07', 'address', NULL, '12345', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2018-03-27 15:56:46', '2018-03-27 15:56:46'),
(77, 77, 'Lionel', 'Messi', NULL, 'male', '2018-01-05', 'USA', NULL, '213112', NULL, NULL, 'Barcelona', '9876542121', 'father', 'messi2', '9873453132', 'Mother', NULL, NULL, NULL, NULL, '1', '2018-05-10 06:27:47', '2018-05-10 06:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `c_student_attendance`
--

CREATE TABLE `c_student_attendance` (
  `id` int(7) NOT NULL,
  `id_student` int(7) DEFAULT NULL,
  `attendance_status` enum('1','2','3') NOT NULL DEFAULT '2' COMMENT '2=>absent, 1=>present,3 =>signedOut',
  `attendance_date` date DEFAULT NULL,
  `sign_in_time` time DEFAULT NULL,
  `sign_out_time` time DEFAULT NULL,
  `daily_health` varchar(255) DEFAULT NULL,
  `body_temprature` float DEFAULT NULL,
  `medical_certificate` enum('1','2') DEFAULT '2' COMMENT '2=> "Not Submitted", 1=>"Submitted"',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_student_attendance`
--

INSERT INTO `c_student_attendance` (`id`, `id_student`, `attendance_status`, `attendance_date`, `sign_in_time`, `sign_out_time`, `daily_health`, `body_temprature`, `medical_certificate`, `updated_at`, `last_updated_by`) VALUES
(1, 23, '2', '2018-01-30', '10:43:00', NULL, '1,2,3', NULL, '2', '2018-01-30 05:14:18', '77'),
(2, 23, '3', '2018-01-31', '23:13:00', '07:16:00', '1', 3, '2', '2018-01-30 20:29:42', '77');

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
(4, 42, 25, 'male', NULL, NULL, NULL, '1', '2017-12-25 06:19:30', '2017-12-25 06:19:30'),
(5, 43, 25, 'male', NULL, NULL, NULL, '1', '2017-12-25 11:34:21', '2017-12-25 11:34:21'),
(6, 44, 25, 'male', NULL, NULL, NULL, '1', '2017-12-25 18:38:57', '2017-12-25 18:38:57'),
(7, 45, 25, 'male', NULL, NULL, NULL, '1', '2017-12-25 18:41:44', '2017-12-25 18:41:44'),
(22, 78, 77, 'male', NULL, NULL, NULL, '1', '2018-01-09 05:09:03', '2018-01-09 05:09:03'),
(23, 79, 77, 'male', NULL, NULL, NULL, '1', '2018-01-09 05:10:21', '2018-01-09 05:10:21'),
(29, 96, 95, 'male', NULL, NULL, NULL, '1', '2018-01-27 10:45:33', '2018-01-27 10:45:33'),
(39, 143, 77, 'male', NULL, NULL, NULL, '1', '2018-02-06 13:50:36', '2018-02-06 13:50:36'),
(40, 159, 158, 'male', NULL, NULL, NULL, '1', '2018-03-10 06:53:25', '2018-03-10 06:53:25');

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
  `card_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `date_of_birth` date DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userStatus` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_users`
--

INSERT INTO `c_users` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `mobile_no`, `card_number`, `gender`, `date_of_birth`, `profile_image`, `api_token`, `remember_token`, `userStatus`, `created_at`, `updated_at`) VALUES
(1, 'Chirppe Admin', 'dasas', 'info@chirppe.com', '$2y$10$LcUUZ6Qduw53OWqpKl9gDOKBeuoiigoMaPquSH9s6QYPS2cPllkFC', 'High Street Road', '221313132123', NULL, 'male', '2018-02-01', NULL, 'Q4eiqyWKAH2ih4XfzTgHnTFCxnYxgWX5p8ptp34ekAXO565bAIWEBeHfzub4', 'OsLrq3HAXr31j2ePujHmSYD6oyT34u4RZ98trwSjNA7RAnjmdTmeMBQSzGPt', '1', '2017-12-04 11:23:53', '2018-02-07 13:47:31'),
(2, 'Chetan', 'Deep', 'chetandeep@singsys.com', '$2y$10$m7OixRbU1cOn39Mk0YlEMeM9NWzrA7tGoysQNoRNYhid1kIDgtZpa', 'High Street Road', '123456789', NULL, 'male', '2018-01-01', NULL, '6kqLKivSXesisLz3nx4BBu8QWbeRpwUcHmavaMVQgpzKMJJgB70FDPogtOg8', 'QVUz1bq6Uv7Ok6eCsp2J7sV3LvbeorbJw0gnT7TzRajQDrQK7j2oMxKHoboX', '1', '2017-12-04 11:23:53', '2018-01-22 12:03:52'),
(25, 'Emily1', 'Parker1', 'manishmahant@singsys.com', '$2y$10$KseU99NrlYJLJcPaNTG5q.FydF1LdFFe9iETBg1cpxRKyem6sqe.e', NULL, '89521456', NULL, 'male', NULL, 'uploads/admins/20171223044931.png', NULL, 'wo4ZXkgrPDT9nRVuRQr1BEz43DCYxlCuLWZ2OJGsEUwatyoJS7fq6XRd7yNW', '1', '2017-12-22 12:33:35', '2017-12-25 19:47:44'),
(26, 'Chetan', 'Deep Singh', 'chetandeep+1@singsys.com', '$2y$10$9wvg8mJFswk0diTAxYcz..FuRRE5/QD62lSOduejFefR2X8DRCBp.', NULL, '123456543', NULL, 'male', NULL, 'uploads/admins/20171223044931.png', NULL, NULL, '1', '2017-12-22 16:07:03', '2017-12-22 16:07:03'),
(27, 'Chetan', 'Deep Singh', 'chetandeep+2@singsys.com', '$2y$10$d4DMHEyA/RfpkZGXwUnpRechR2/w9MBxcuKn5WdtvrWsKBTFSxFLe', NULL, '1234567890', NULL, 'male', NULL, NULL, NULL, NULL, '1', '2017-12-22 22:09:24', '2017-12-22 22:09:24'),
(35, 'Man', NULL, 'manishmahant+1@singsys.com', '$2y$10$KseU99NrlYJLJcPaNTG5q.FydF1LdFFe9iETBg1cpxRKyem6sqe.e', NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-24 16:42:55', '2017-12-24 16:42:55'),
(36, 'Manish', 'Mahant', 'manishmahant+2@singsys.com', '$2y$10$jbDq2rvBCdJeL8n8rZK3JuWuIdoMqiO2rRxcd0EcM26BaeSeBnJWe', NULL, '125678975', NULL, 'male', NULL, NULL, NULL, 'GJLbJ893dWx3X1qeQ2cxh7A19URYaJHWqhqVPzPmTdOTSPSYkaz4kuklYd6i', '1', '2017-12-24 16:43:02', '2017-12-24 16:46:22'),
(37, 'aserdf', NULL, 'manishmahant+6@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-24 19:11:23', '2017-12-24 19:11:23'),
(42, 'Manish', 'fxfchgvjh', 'manishmahant+1111@singsys.com', '$2y$10$.K4pU0CwmjU7QVas0UWLYOSsWOot6HWzWCeRaXaYX1V5OlpUKWlYK', NULL, '123456237', NULL, 'male', NULL, NULL, NULL, NULL, '1', '2017-12-25 06:19:30', '2017-12-25 06:21:09'),
(43, 'Manish 1', 'Mahant', 'manishmahant+111@singsys.com', '$2y$10$VbmrVGiEZYgyqyA4OXOAEe/sta0TFs.nvFY1lp9ARbkPRGNC/HOvm', NULL, '234534567', NULL, 'male', NULL, NULL, NULL, 'q6xbQOhu9j8VOGnDvDax922tISZjoNUUg1NMyDbGC9HO8cvkPSew6Jo03q87', '1', '2017-12-25 11:34:21', '2017-12-25 11:35:12'),
(44, 'staff1', 'staff2', 'chetandeep+5@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-25 18:38:57', '2017-12-25 18:38:57'),
(45, 'staff22', NULL, 'chetandeep+6@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-25 18:41:44', '2017-12-25 18:41:44'),
(46, 'g1', NULL, 'chetandeep+9@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-25 18:51:33', '2017-12-25 18:51:33'),
(47, 'g2', NULL, 'chetandeep+34@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-25 18:55:57', '2017-12-25 18:55:57'),
(48, 'g3', NULL, 'chetandeep+34@singsys.co5', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-25 18:56:52', '2017-12-25 18:56:52'),
(49, 'g4', NULL, 'chetandeep+19@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-25 18:58:04', '2017-12-25 18:58:04'),
(50, 'manish', NULL, 'chetandeep+16@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-26 01:44:17', '2017-12-26 01:44:17'),
(51, '213', NULL, 'chetandeep+13@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-26 23:13:38', '2017-12-26 23:13:38'),
(52, 'saddas', NULL, 'chetandeep+213@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2017-12-26 23:27:48', '2017-12-26 23:27:48'),
(69, 'sultan jr', 'junior', 'chetandeep+78@singsys.com', '$2y$10$F5WTjAEeF9n3nrB.FIUoK.kQXUvJl2hNao2TKlKmwAor491XaGHMe', 'High Street Road 222222', '1234567', NULL, 'male', NULL, NULL, NULL, 'FKfKQmZZ5zcdY86TZKC6QfY6sR9y0N1OEWnmp1OE1EUj0WWPTNIav5UOQM40', '1', '2018-01-02 02:23:06', '2018-01-03 17:17:43'),
(77, 'Raveena', 'Nigam', 'raveena+principal@singsys.com', '$2y$10$F5WTjAEeF9n3nrB.FIUoK.kQXUvJl2hNao2TKlKmwAor491XaGHMe', 'sdwdsvfdg', '98763456788', NULL, 'female', '2018-01-16', NULL, 'A1xnyhQ0ynO21eBfMswtWi0XvZH1o7Y7woSTuu9Yh5Me4sWzGS1E8CrHrdIB', '1cxcrJ22a0o3mBAtOUOTUW4g1Q1o8SjT9TPqnCVrS2Ch4sdwDBl2ktltyDHN', '1', '2018-01-09 04:57:47', '2018-04-18 07:13:42'),
(78, 'Aatif', 'Nehal', 'aatif+teacher@singsys.com', '$2y$10$Y9S5T0icK2NQYfXzybTzluVxQL6b3B5fsMIc3sRKjkW9JxsjinMw2', 'North Bridge, Singapore - 227890', '98765123456', NULL, 'male', '2018-01-23', 'uploads/user_profile/78_20180301152852.png', 'xbnAKL2DbThbyV5LCQ4sfvcT9NDjvkhh59nNadMFbbZvCotJcRgTu2PHn83b', 'eUDbkxpXiOLKy5GsikRAVhVDWtjcuLnuSsOVrbOSyy8iT2eF5UGXzgnpaxtC', '1', '2018-01-09 05:09:03', '2018-03-01 09:58:58'),
(79, 'Rahul Pratap', 'Singh Chauhan', 'rahulpratap@singsys.com', '$2y$10$lBHii7ll5Vet7IzP8KTDiuEiM5yaKQJSLVvLK.6vAgkPCqPI.VFD6', 'sadsfdgfhyg', '987652345', NULL, 'male', '2018-01-15', NULL, 'xCYv2FYXiGs8T60OQsgHuxJv1mXJvXeQk3HyUlnAyRvBtUlQpCPFPzY6h7dC', 'OEpJmQWzzuwn2qb3vaQNGS7k8fie7a1MUSPTam63GuhHEXonvBWH0PQ0dJS0', '1', '2018-01-09 05:10:21', '2018-01-25 13:45:31'),
(81, 'Akmal Ansari', NULL, 'akmal@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-01-10 10:59:54', '2018-03-21 13:26:38'),
(82, 'Devendra Shukla', NULL, 'devendra@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-01-10 11:01:48', '2018-01-10 11:01:48'),
(83, 'Preeti Singh', NULL, 'preeti@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-01-18 02:07:24', '2018-01-18 02:07:24'),
(84, 'mmanish', NULL, 'chetandeep+parent@singsys.com', NULL, NULL, '12345678', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-01-22 01:55:51', '2018-01-22 01:55:51'),
(85, 'mohit', NULL, 'chetandeep+232@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-01-24 07:00:19', '2018-01-24 07:00:19'),
(86, 'mohitsadf', NULL, 'chetandeep+0922@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-01-24 07:01:45', '2018-01-24 07:01:45'),
(95, 'MeraPrincipal', 'MeraMera', 'meraprince@yopmail.com', '$2y$10$.eIPym0bBPjYj2OSTM2x.e3SX2JJZ4V3OwYICpNvmHf02ELvgedWC', NULL, '7775553333', NULL, 'male', NULL, NULL, 'xLaZ80bwMqIiLyFVPW85qfdtEdWMriINGZoP4tziBjSVXhNCOobesHp5diPf', 'UFmPUBwDO4aYJnTwwzyugq1CXH4KwBAQfXDuhjscUh08gQDl1nD8U4dgaWN2', '1', '2018-01-27 10:43:04', '2018-01-27 10:43:04'),
(96, 'Merateacher', 'Meramera', 'merateach@yopmail.com', '$2y$10$kdeg9.DmoI276B/WEaDUYu4cqwBTAfpkhGbLpAR5p46R6pHIWN8zq', NULL, '7775551111', NULL, 'male', NULL, NULL, 'C8wELJrE2cFf8aPqdomCLpaCS2pTEkyWJUHJiFSbgDeqKTdlJOTZ3IdrvAxE', 'MKg0sLQDt5Y5AsosLwjA1GRznS1qkobxzGe3i9elypDzdqjecmJ6i8CFnjua', '1', '2018-01-27 10:45:33', '2018-01-27 10:47:36'),
(97, 'meraguard', NULL, 'meraguard@yopmail.com', '$2y$10$lYmLKSd33PGT/Nl7qljqDeOFor7.GeLdQEorUog5BBmEPnBvBS9cu', NULL, '1521521521', NULL, 'male', NULL, NULL, 'J7LZVruEPYNlj9ZFsx3JlU0MHEurPG2oMIaCPuQl1HUfJ1DBfh5TyEsFr5K9', '9AMcgYIdDw7Bv5j8uwTs4DYPYPwAztgaMfIdpcq0AIJNien2qcuY7HRT8gS9', '1', '2018-01-28 20:50:59', '2018-01-28 20:52:52'),
(98, 'gulshan', 'sir', 'chetandeep+mohit@singsys.com', '$2y$10$ESR9gjk1EnsAjBEOIW3.z.anW0XSZOg0.r48vLwW3P0Z7vQG4wTdm', NULL, '123456798', NULL, 'male', NULL, NULL, 'n5AeP1FpaBlLdGMTKqk0thVfVBzeWuMJwy4m4JAhaBFq3u3sqtopfL8kIOHc', NULL, '1', '2018-02-01 12:41:20', '2018-02-01 15:21:24'),
(99, 'sushant2', NULL, 'chetandeep+mo@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-01 12:41:30', '2018-02-01 12:41:30'),
(100, 'qwerty', NULL, 'aa@aa.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-01 13:20:05', '2018-02-01 13:20:05'),
(101, 'ssdf', NULL, 'aa@sd.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-01 13:22:36', '2018-02-01 13:22:36'),
(102, 'gulshansenior', NULL, 'chetandeep+gulshan@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-01 15:17:14', '2018-02-01 15:17:14'),
(103, 'raveena+parent', NULL, 'chetan+part@singsys.com', '$2y$10$dnTbRLiDgSdGVdKk7RjCjekzcaFspR.eCprJRKPSXax1fIijlnwZO', NULL, '222323332', NULL, 'male', NULL, NULL, 'FwuqBYFwDZVdplTCYHGXQ6o1hQjkCheSfbwQ0o3VhHcIATusVCXrWFkdgjsh', '54a9Jp8rbUUIPbwTT05ccxkNa0ADzGUSdoWohbp2EeuCbwlBLoeJjWpJlGh4', '1', '2018-02-02 09:00:39', '2018-02-02 09:12:10'),
(104, 'Narayan', NULL, 'chetandeep+Narayan@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-02 09:35:49', '2018-02-02 09:35:49'),
(105, 'linkin senoir', NULL, 'chetandeep+linkin@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-02 09:54:56', '2018-02-02 09:54:56'),
(107, 'awdeshsenior', NULL, 'chetandeep+awdesh@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-02 14:52:33', '2018-02-02 14:52:33'),
(108, 'awdeshsenior2', NULL, 'chetandeep+awdesh2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-02 14:52:46', '2018-02-02 14:52:46'),
(122, 'sharukhsenior', NULL, 'chetandeep+shahrukh@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-05 11:22:21', '2018-02-05 11:22:21'),
(123, 'sharukhsenior2', NULL, 'chetandeep+shahrukh2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-05 11:22:27', '2018-02-05 11:22:27'),
(124, 'atifaslamsenior', NULL, 'chetandeep+atifaslam@singsys.com', NULL, NULL, '2323323233', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-05 14:34:38', '2018-02-05 14:34:38'),
(125, 'atifaslamsenior2', NULL, 'chetandeep+atifaslam2@singsys.com', NULL, NULL, '322323223232', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-05 14:34:49', '2018-02-05 14:34:49'),
(135, 'Chetan Guardian', NULL, 'chetandeep+trial@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 11:33:12', '2018-02-06 11:33:12'),
(136, 'Chetan Guardian 2', NULL, 'chetandeep+guardian@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 11:33:20', '2018-02-06 11:33:20'),
(137, 'Chetan Guardian', NULL, 'chetandeep+trial1@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 11:44:07', '2018-02-06 11:44:07'),
(139, 'Chetan Guardian', NULL, 'chetandeep+trial2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 11:52:44', '2018-02-06 11:52:44'),
(141, 'Chetan Guardian', NULL, 'chetandeep+trial3@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 11:59:03', '2018-02-06 11:59:03'),
(143, 'Chanchal', 'Gupta', 'Chetandeep+454@singsys.com', NULL, 'North Bridge', NULL, NULL, 'male', NULL, NULL, NULL, NULL, '1', '2018-02-06 13:50:35', '2018-02-06 13:50:35'),
(144, 'Chetan Guardian', NULL, 'chetandeep+trial33@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 14:06:28', '2018-02-06 14:06:28'),
(147, 'Chetan Guardian 2', NULL, 'chetandeep+gusxardian@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 14:17:04', '2018-02-06 14:17:04'),
(148, 'Chetan Guardian', NULL, 'chetandeep+trial2334@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 14:33:57', '2018-02-06 14:33:57'),
(149, 'Chetan Guardian 2', NULL, 'chetandeep+gusxaffccfrdian@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 14:34:07', '2018-02-06 14:34:07'),
(150, 'aman senior', 'last', 'chetandeep+aman@singsys.com', '$2y$10$tmhkhC9P9tBfzAKRGe72guKahztDZ0eno8vMuH4cQk4Atd9CsXffu', NULL, '1234567823', NULL, 'male', NULL, NULL, 'Uv3bE32IRWgHltb8XoiG5vuRgsE6HhxJypnmXh81pku4fliTqP6ifnfyEHtS', 'TGxofdrzgxEFLZ7CCvN9uBcqXEytLTvtgcY2Tup25pwawc5FagQd1DNc6ea8', '1', '2018-02-06 20:24:30', '2018-02-06 20:25:47'),
(151, 'aman senior 2', NULL, 'chetandeep+aman2@singsys.com', NULL, NULL, '544444444533', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-02-06 20:24:39', '2018-02-06 20:24:39'),
(152, 'alok', 'senior', 'chetandeep+alok@singsys.com', '$2y$10$EmOWLwqrPWKuu2DQnDuhWeZs7T0SnxXUpM7fnfZC6/QY1UsZJq4Ju', 'address', '1234567821', '12345678', 'male', '2018-02-07', 'uploads/user_profile/152_20180217144902.png', 'nCRQms7rxXVRfh7ob161h1jZLEZDximn8Rrcvni0EmnznMIgAabW9pT0cbVu', 'ffMQy9aOX6ojuB9cEoKr1E4mmNBmsZPAtUmaG0zr5G95ehqeJhpDjonBFdzh', '1', '2018-02-07 14:49:56', '2018-02-17 09:19:12'),
(153, 'alok senior 2', NULL, 'chetandeep+alok2@singsys.com', NULL, NULL, '123453232', '1234567', 'male', NULL, NULL, NULL, NULL, '0', '2018-02-07 14:50:08', '2018-02-07 14:50:08'),
(156, 'piyush senior guardian', NULL, 'chetandeep+piyoosh@singsys.com', NULL, NULL, '12345623231', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-08 13:32:32', '2018-03-08 13:32:32'),
(157, 'nadeem', 'parent', 'chetandeep+nadeem@singsys.com', NULL, NULL, '1234567823', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-10 06:45:12', '2018-03-10 06:45:12'),
(158, 'Santosh', 'Kumar', 'chetandeep+santosh@singsys.com', '$2y$10$vOUroOyGjwyWeEc.o57HIOOPR6lQUIQ9HJYfCxeOF9bGd8t80SK0m', NULL, '1234567827', NULL, 'male', NULL, NULL, 'nk9TzvIjqtHldDr5LZrCI6FMORprfh7QnfLJsqbXJQBxQ2Q74CoaOJVBJeMP', 'gd9R5TJAoxD0DkkQj2G0YaXzTHN1J83vrtfzZbGZreI2DbldCqaow3rT42OI', '1', '2018-03-10 06:49:46', '2018-03-10 06:49:46'),
(159, 'Pushpendra', 'Singh', 'chetandeep+pushpendra@singsys.com', '$2y$10$Pyp4qtgNPG.p.CnMj1HPiuNsCmC9CZaTw.YiY9g3kPygcPq/pAzlm', 'address', '1234567844', NULL, 'male', '2018-03-13', 'uploads/user_profile/159_20180314155225.png', 'k728IVFwmeWdFInh2q6UQ47JqBB54IpghdJMiJg99pmHWjU6LPHJyeEwu0W9', 'eVC6HOWhrkyao9ROWN13Cswq5wjjMI3yFt0I3pzkF2voTNY4Gc30zTxH9eA4', '1', '2018-03-10 06:53:25', '2018-03-14 10:22:29'),
(160, 'ranjan senior', NULL, 'chetandeep+ranjan@singsys.com', NULL, NULL, '12345623245', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-10 07:06:24', '2018-03-10 07:06:24'),
(161, 'ranjan senior1', NULL, 'chetandeep+ranjan1@singsys.com', NULL, NULL, '12345623246', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-10 07:06:35', '2018-03-10 07:06:35'),
(162, 'nalini parent 1', 'pathak', 'chetandeep+nalini@singsys.com', '$2y$10$0KzX2rvB3A3hRH68wuJNAu4xNd93zDZJ5vqiuGcchWat2/R/C5B8y', NULL, '1234567993', NULL, 'male', NULL, NULL, 'b1GESYZYkcsQ9Ncy1o6Sit58Um2PcCyJbNd02gv6ccLBx9MlEGkHbjfysdbZ', 'QhMIsFgzs8Qvdmitc5AFlxak1talwwhmPJyepbzcPAIJBGxTbZIvlTQPTCHA', '1', '2018-03-10 07:09:39', '2018-03-13 15:07:09'),
(163, 'Nalini senior2', NULL, 'chetandeep+nalini2@singsys.com', NULL, NULL, '12345623229', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-10 07:09:43', '2018-03-10 07:09:43'),
(164, 'Sandeep Senior', NULL, 'chetandeep+sandeep@singsys.com', NULL, NULL, '12345623243', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-10 07:11:30', '2018-03-10 07:11:30'),
(165, 'Sandeep Senior1', NULL, 'chetandeep+sandeep1@singsys.com', NULL, NULL, '12345623238', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-10 07:11:40', '2018-03-10 07:11:40'),
(166, 'rishab', 'parent', 'chetandeep+rishab@singsys.com', NULL, NULL, '1234567800', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-14 09:17:50', '2018-03-14 09:17:50'),
(169, 'Chetan Guardian', NULL, 'chetandeep+s1@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-23 07:33:38', '2018-03-23 07:33:38'),
(170, 'Chetan Guardian 2', NULL, 'chetandeep+s2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-23 07:33:45', '2018-03-23 07:33:45'),
(171, 'Chetan Guardian 1', NULL, 'chetandeep+t1@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-23 09:40:32', '2018-03-23 09:40:32'),
(172, 'Chetan Guardian 2', NULL, 'chetandeep+t2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-23 09:40:39', '2018-03-23 09:40:39'),
(173, 'Chetan Guardian 2', NULL, 'chetandeep+m1@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-23 09:40:44', '2018-03-23 09:40:44'),
(174, 'Chetan Guardian 2', NULL, 'chetandeep+m2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-23 09:40:49', '2018-03-23 09:40:49'),
(175, 'ethan', 'hunt', 'chetandeep+hunt@singsys.com', '$2y$10$vGxIFJjW7.jLEtOOn5NJjO4h9fz3hU7cmdnhHsF2mR794wrj/HK9a', 'address usa', '1234567773', '444444', 'male', NULL, NULL, 'j2FhCpiWOs9TS1PGLYZ4UpU3dvLtUubzXGkJ4vJamFU4ObQsGJFh30qZL4ID', NULL, '1', '2018-03-26 07:20:19', '2018-03-26 07:21:09'),
(176, 'vivek senior', NULL, 'chetandeep+viveksenior@singsys.com', NULL, NULL, '12345623223', NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-03-26 07:39:56', '2018-03-26 07:39:56'),
(177, 'Ankur', 'Parent', 'chetandeep+ankur@singsys.com', '$2y$10$5VXfCAc.geYxbMuAfYdK3OfAutp46jooPs7ioKhSgv6Ho9ikDyfRe', NULL, '6666666667', NULL, 'male', NULL, NULL, 'TjbnaGMA6Ut1MzVo7d1RNeimk7Bv9PqfitGs9r4evTuxb3OkRoCwwIMwUTOT', NULL, '1', '2018-03-27 09:01:32', '2018-03-27 10:00:21'),
(178, 'Barcelona', NULL, 'chetandeep+messi@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-05-10 06:27:47', '2018-05-10 06:27:47'),
(179, 'messi2', NULL, 'chetandeep+messi2@singsys.com', NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, '0', '2018-05-10 06:28:30', '2018-05-10 06:28:30');

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
(68, 77, 2, '1', '2018-01-05 12:18:50', '2018-01-05 12:18:50'),
(71, 80, 2, '1', '2018-01-05 12:28:15', '2018-01-05 12:28:15'),
(72, 81, 2, '1', '2018-01-05 12:29:24', '2018-01-05 12:29:24'),
(73, 82, 2, '1', '2018-01-05 12:32:22', '2018-01-05 12:32:22'),
(74, 83, 2, '1', '2018-01-05 12:33:50', '2018-01-05 12:33:50'),
(75, 84, 2, '1', '2018-01-05 12:35:02', '2018-01-05 12:35:02'),
(76, 85, 2, '1', '2018-01-05 12:36:01', '2018-01-05 12:36:01'),
(77, 86, 2, '1', '2018-01-05 12:38:30', '2018-01-05 12:38:30'),
(78, 87, 2, '1', '2018-01-05 12:44:38', '2018-01-05 12:44:38'),
(79, 88, 2, '1', '2018-01-05 12:45:46', '2018-01-05 12:45:46'),
(80, 89, 2, '1', '2018-01-05 12:46:15', '2018-01-05 12:46:15'),
(81, 90, 2, '1', '2018-01-05 12:47:56', '2018-01-05 12:47:56'),
(83, 92, 2, '1', '2018-01-05 13:13:00', '2018-01-05 13:13:00'),
(84, 93, 2, '1', '2018-01-05 13:16:20', '2018-01-05 13:16:20'),
(85, 94, 2, '1', '2018-01-05 13:18:10', '2018-01-05 13:18:10'),
(86, 95, 2, '1', '2018-01-05 13:18:45', '2018-01-05 13:18:45'),
(88, 97, 2, '1', '2018-01-05 13:26:30', '2018-01-05 13:26:30'),
(89, 98, 2, '1', '2018-01-05 13:40:18', '2018-01-05 13:40:18'),
(90, 99, 2, '1', '2018-01-05 13:42:34', '2018-01-05 13:42:34'),
(91, 100, 2, '1', '2018-01-05 13:45:31', '2018-01-05 13:45:31'),
(92, 101, 2, '1', '2018-01-05 13:46:14', '2018-01-05 13:46:14'),
(93, 102, 2, '1', '2018-01-05 13:48:08', '2018-01-05 13:48:08'),
(94, 103, 2, '1', '2018-01-05 13:51:24', '2018-01-05 13:51:24'),
(95, 104, 2, '1', '2018-01-05 13:52:07', '2018-01-05 13:52:07'),
(96, 105, 2, '1', '2018-01-05 13:52:28', '2018-01-05 13:52:28'),
(97, 77, 2, '1', '2018-01-09 10:27:47', '2018-01-09 10:27:47'),
(98, 78, 3, '1', '2018-01-09 10:39:03', '2018-01-09 10:39:03'),
(99, 79, 3, '1', '2018-01-09 10:40:21', '2018-01-09 10:40:21'),
(100, 80, 3, '1', '2018-01-10 06:02:39', '2018-01-10 06:02:39'),
(101, 81, 4, '1', '2018-01-10 16:29:54', '2018-01-10 16:29:54'),
(102, 82, 4, '1', '2018-01-10 16:31:48', '2018-01-10 16:31:48'),
(103, 83, 4, '1', '2018-01-18 07:37:24', '2018-01-18 07:37:24'),
(104, 84, 4, '1', '2018-01-22 07:25:51', '2018-01-22 07:25:51'),
(105, 85, 4, '1', '2018-01-24 12:30:19', '2018-01-24 12:30:19'),
(106, 86, 4, '1', '2018-01-24 12:31:45', '2018-01-24 12:31:45'),
(115, 95, 2, '1', '2018-01-27 16:13:04', '2018-01-27 16:13:04'),
(116, 96, 3, '1', '2018-01-27 16:15:33', '2018-01-27 16:15:33'),
(117, 97, 4, '1', '2018-01-29 02:20:59', '2018-01-29 02:20:59'),
(118, 98, 4, '1', '2018-02-01 18:11:21', '2018-02-01 18:11:21'),
(119, 99, 4, '1', '2018-02-01 18:11:31', '2018-02-01 18:11:31'),
(120, 100, 4, '1', '2018-02-01 18:50:05', '2018-02-01 18:50:05'),
(121, 101, 4, '1', '2018-02-01 18:52:36', '2018-02-01 18:52:36'),
(122, 102, 4, '1', '2018-02-01 20:47:14', '2018-02-01 20:47:14'),
(123, 103, 4, '1', '2018-02-02 14:30:39', '2018-02-02 14:30:39'),
(124, 105, 4, '1', '2018-02-02 15:24:56', '2018-02-02 15:24:56'),
(133, 122, 4, '1', '2018-02-05 16:52:21', '2018-02-05 16:52:21'),
(134, 123, 4, '1', '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(135, 124, 4, '1', '2018-02-05 20:04:38', '2018-02-05 20:04:38'),
(136, 125, 4, '1', '2018-02-05 20:04:49', '2018-02-05 20:04:49'),
(137, 126, 3, '1', '2018-02-06 11:52:11', '2018-02-06 11:52:11'),
(138, 127, 3, '1', '2018-02-06 11:56:49', '2018-02-06 11:56:49'),
(139, 128, 3, '1', '2018-02-06 11:58:31', '2018-02-06 11:58:31'),
(140, 129, 3, '1', '2018-02-06 12:16:05', '2018-02-06 12:16:05'),
(141, 130, 3, '1', '2018-02-06 12:18:31', '2018-02-06 12:18:31'),
(142, 131, 3, '1', '2018-02-06 12:53:01', '2018-02-06 12:53:01'),
(143, 132, 3, '1', '2018-02-06 12:55:10', '2018-02-06 12:55:10'),
(144, 133, 3, '1', '2018-02-06 14:15:39', '2018-02-06 14:15:39'),
(145, 134, 3, '1', '2018-02-06 14:17:58', '2018-02-06 14:17:58'),
(146, 135, 4, '1', '2018-02-06 17:03:13', '2018-02-06 17:03:13'),
(147, 136, 4, '1', '2018-02-06 17:03:20', '2018-02-06 17:03:20'),
(148, 137, 4, '1', '2018-02-06 17:14:07', '2018-02-06 17:14:07'),
(149, 139, 4, '1', '2018-02-06 17:22:44', '2018-02-06 17:22:44'),
(150, 141, 4, '1', '2018-02-06 17:29:03', '2018-02-06 17:29:03'),
(151, 143, 3, '1', '2018-02-06 19:20:36', '2018-02-06 19:20:36'),
(152, 144, 4, '1', '2018-02-06 19:36:28', '2018-02-06 19:36:28'),
(153, 146, 4, '1', '2018-02-06 19:46:53', '2018-02-06 19:46:53'),
(154, 147, 4, '1', '2018-02-06 19:47:04', '2018-02-06 19:47:04'),
(155, 148, 4, '1', '2018-02-06 20:03:57', '2018-02-06 20:03:57'),
(156, 149, 4, '1', '2018-02-06 20:04:07', '2018-02-06 20:04:07'),
(157, 150, 4, '1', '2018-02-07 01:54:30', '2018-02-07 01:54:30'),
(158, 151, 4, '1', '2018-02-07 01:54:39', '2018-02-07 01:54:39'),
(159, 152, 4, '1', '2018-02-07 20:19:57', '2018-02-07 20:19:57'),
(160, 153, 4, '1', '2018-02-07 20:20:08', '2018-02-07 20:20:08'),
(163, 156, 4, '1', '2018-03-08 19:02:32', '2018-03-08 19:02:32'),
(164, 157, 4, '1', '2018-03-10 12:15:12', '2018-03-10 12:15:12'),
(165, 158, 2, '1', '2018-03-10 12:19:46', '2018-03-10 12:19:46'),
(166, 159, 3, '1', '2018-03-10 12:23:25', '2018-03-10 12:23:25'),
(167, 160, 4, '1', '2018-03-10 12:36:24', '2018-03-10 12:36:24'),
(168, 161, 4, '1', '2018-03-10 12:36:35', '2018-03-10 12:36:35'),
(169, 162, 4, '1', '2018-03-10 12:39:39', '2018-03-10 12:39:39'),
(170, 163, 4, '1', '2018-03-10 12:39:44', '2018-03-10 12:39:44'),
(171, 164, 4, '1', '2018-03-10 12:41:30', '2018-03-10 12:41:30'),
(172, 165, 4, '1', '2018-03-10 12:41:40', '2018-03-10 12:41:40'),
(173, 166, 4, '1', '2018-03-14 14:47:50', '2018-03-14 14:47:50'),
(174, 167, 4, '1', '2018-03-23 12:02:21', '2018-03-23 12:02:21'),
(175, 168, 4, '1', '2018-03-23 12:02:29', '2018-03-23 12:02:29'),
(176, 169, 4, '1', '2018-03-23 13:03:38', '2018-03-23 13:03:38'),
(177, 170, 4, '1', '2018-03-23 13:03:45', '2018-03-23 13:03:45'),
(178, 171, 4, '1', '2018-03-23 15:10:33', '2018-03-23 15:10:33'),
(179, 172, 4, '1', '2018-03-23 15:10:39', '2018-03-23 15:10:39'),
(180, 173, 4, '1', '2018-03-23 15:10:44', '2018-03-23 15:10:44'),
(181, 174, 4, '1', '2018-03-23 15:10:49', '2018-03-23 15:10:49'),
(182, 175, 4, '1', '2018-03-26 12:50:19', '2018-03-26 12:50:19'),
(183, 176, 4, '1', '2018-03-26 13:09:57', '2018-03-26 13:09:57'),
(184, 177, 4, '1', '2018-03-27 14:31:32', '2018-03-27 14:31:32'),
(185, 178, 4, '1', '2018-05-10 11:57:48', '2018-05-10 11:57:48'),
(186, 179, 4, '1', '2018-05-10 11:58:30', '2018-05-10 11:58:30');

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
-- Indexes for table `c_attendees`
--
ALTER TABLE `c_attendees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `c_chats`
--
ALTER TABLE `c_chats`
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
-- Indexes for table `c_consent_attendees`
--
ALTER TABLE `c_consent_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_consent_form`
--
ALTER TABLE `c_consent_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_contactus`
--
ALTER TABLE `c_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_dailylog`
--
ALTER TABLE `c_dailylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_dailylog_photo`
--
ALTER TABLE `c_dailylog_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_email_template`
--
ALTER TABLE `c_email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `c_event`
--
ALTER TABLE `c_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_event_attendees`
--
ALTER TABLE `c_event_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_event_repeat`
--
ALTER TABLE `c_event_repeat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_feedback`
--
ALTER TABLE `c_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_feedback_attach`
--
ALTER TABLE `c_feedback_attach`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `c_letterhead`
--
ALTER TABLE `c_letterhead`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_notice`
--
ALTER TABLE `c_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_notice_photo`
--
ALTER TABLE `c_notice_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_notification`
--
ALTER TABLE `c_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_observation`
--
ALTER TABLE `c_observation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `observation_std_id_foreign` (`std_id`),
  ADD KEY `observation_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `c_other`
--
ALTER TABLE `c_other`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `c_photos`
--
ALTER TABLE `c_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_photo_tagging`
--
ALTER TABLE `c_photo_tagging`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `c_staff_attendance`
--
ALTER TABLE `c_staff_attendance`
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
-- Indexes for table `c_student_attendance`
--
ALTER TABLE `c_student_attendance`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `api_token` (`api_token`);

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
-- AUTO_INCREMENT for table `c_attendees`
--
ALTER TABLE `c_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c_broadcast`
--
ALTER TABLE `c_broadcast`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `c_bulletboard`
--
ALTER TABLE `c_bulletboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_chats`
--
ALTER TABLE `c_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_classrooms`
--
ALTER TABLE `c_classrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `c_classroom_student`
--
ALTER TABLE `c_classroom_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `c_classroom_teacher`
--
ALTER TABLE `c_classroom_teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `c_consent_attendees`
--
ALTER TABLE `c_consent_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_consent_form`
--
ALTER TABLE `c_consent_form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_contactus`
--
ALTER TABLE `c_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `c_dailylog`
--
ALTER TABLE `c_dailylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_dailylog_photo`
--
ALTER TABLE `c_dailylog_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c_email_template`
--
ALTER TABLE `c_email_template`
  MODIFY `email_template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_event`
--
ALTER TABLE `c_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `c_event_attendees`
--
ALTER TABLE `c_event_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `c_event_repeat`
--
ALTER TABLE `c_event_repeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `c_feedback`
--
ALTER TABLE `c_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_feedback_attach`
--
ALTER TABLE `c_feedback_attach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_gallery`
--
ALTER TABLE `c_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_invitation_codes`
--
ALTER TABLE `c_invitation_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `c_lessonplan`
--
ALTER TABLE `c_lessonplan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_letterhead`
--
ALTER TABLE `c_letterhead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_meal`
--
ALTER TABLE `c_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `c_migrations`
--
ALTER TABLE `c_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `c_nap`
--
ALTER TABLE `c_nap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `c_notice`
--
ALTER TABLE `c_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_notice_photo`
--
ALTER TABLE `c_notice_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_notification`
--
ALTER TABLE `c_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `c_observation`
--
ALTER TABLE `c_observation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `c_other`
--
ALTER TABLE `c_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `c_parents`
--
ALTER TABLE `c_parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `c_photos`
--
ALTER TABLE `c_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `c_photo_tagging`
--
ALTER TABLE `c_photo_tagging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `c_potty`
--
ALTER TABLE `c_potty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `c_staff_attendance`
--
ALTER TABLE `c_staff_attendance`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `c_static_content`
--
ALTER TABLE `c_static_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `c_student_attendance`
--
ALTER TABLE `c_student_attendance`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_teachers`
--
ALTER TABLE `c_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `c_type_meal`
--
ALTER TABLE `c_type_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_users`
--
ALTER TABLE `c_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT for table `c_user_roles`
--
ALTER TABLE `c_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
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
-- Constraints for table `c_parents`
--
ALTER TABLE `c_parents`
  ADD CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `c_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `c_property_meal`
--
ALTER TABLE `c_property_meal`
  ADD CONSTRAINT `property_meal_type_meal_id_foreign` FOREIGN KEY (`type_meal_id`) REFERENCES `c_type_meal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
