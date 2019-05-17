-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: referencerds.cyl8k3bgy8zk.ap-southeast-1.rds.amazonaws.com
-- Generation Time: Dec 07, 2018 at 07:55 AM
-- Server version: 5.7.17-log
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `referencerds`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `added_date`) VALUES
(1, 'Our Mission', '<p>We</p>\r\n\r\n<p>1) <strong>Empower individuals</strong> to give and gather 360 feedback, on and from co-workers and service providers</p>\r\n\r\n<p>2) <strong>Encourage&nbsp;positive change </strong>in <strong>workplace culture</strong> through greater transparency&nbsp;</p>\r\n\r\n<p>3) <strong>Matchmake&nbsp;individuals</strong> and <strong>companies</strong> according to their needs, wants, and likes&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2018-11-23 13:24:15'),
(2, 'Our Vision', '<p><strong>You cannot choose your family, but you can choose the company you work in&nbsp;and the people you work with.</strong>&nbsp;</p>\r\n\r\n<p>The best people in office haven&#39;t always stood out. Some better at posturing or politics have won.&nbsp;</p>\r\n\r\n<p>It&#39;s time for a revolution. We say&nbsp;<em>Out with posturing and office politics. In with transparency, productivity and happiness at work.</em></p>\r\n\r\n<p>Join this revolution by giving and getting 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> reviews and ratings. More 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> reviews and ratings will likely lead to more transparency and accountability. Hopepfully this will give rise to positive change work cultures.&nbsp;</p>\r\n\r\n<p>If you are an employee, choose the place you want to work in and the people you work with. The feedback that other people give on 360 Reference will help you understand the potential organisation, manager, peers and team members&nbsp;that you will work with.&nbsp;</p>\r\n\r\n<p>If you are a&nbsp;corporate, you will be able to recognise and reward the correct people internally. Better and more relevant background information will help you find external candidates that are aligned with your corporate values and desired key attributes.&nbsp;</p>\r\n\r\n<p>If you are a customer, choose&nbsp;the best service provider to serve you.&nbsp;</p>', '2018-11-23 13:24:36'),
(3, 'Who We Are', '<p>We are an online social media portal that works hard to collect and make sense of feedback on corporates, co-workers and service providers.&nbsp;</p>\r\n\r\n<p>Having worked in the corporate world and being frequent users of service providers, we have seen good, bad and ugly behaviour. We hope to engage you to take action in recognising&nbsp;the good, calling out the bad and weeding out the ugly.&nbsp;</p>\r\n\r\n<p>We stand for the values:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Customer orientation:&nbsp;All aspects of 360 Reference will put our customers&#39; satisfaction first</li>\r\n	<li>Diversity: Everyone is unique and such differences creates opportunity to learn from each other. There is a company for you. There is a boss for you. There are peers for you. There are subordinates for you. There are service providers for you. Help us find you the environment most ideal for you.&nbsp;</li>\r\n	<li>Action orientation: We are a young start up and constant actions are required improve. We will plug&nbsp;away to serve you better.&nbsp;</li>\r\n	<li>Respect: Do unto others as you would have them do unto you. Constructive feedback is welcome, but vicious personal vendetta will not be tolerated.</li>\r\n	<li>Innovation: We continue to look to solve real problems in a creative way.</li>\r\n</ol>', '2018-11-23 13:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_banner`
--

CREATE TABLE `about_us_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_banner`
--

INSERT INTO `about_us_banner` (`id`, `title`, `description`, `banner_image`, `added_date`) VALUES
(1, 'Sign Up', 'Lorem ipsum dolor sit amet consectetur adipisicing', 'crop_20180901131856.png', '2018-09-01 13:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `banner_detail`
--

CREATE TABLE `banner_detail` (
  `banner_detail_id` int(10) UNSIGNED NOT NULL,
  `banner_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_type` enum('CONNECTION','ABOUT','HOW IT WORKS','FAQ','CONTACT US','DISCLAIMER','PRIVACY POLICY','TERMS OF USE','INDIVIDUAL SIGNUP','COMPANY SIGNUP','NEWS_FEED','INVITE','JOBS','SIDEBAR','GIVE 360','GET 360') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_detail`
--

INSERT INTO `banner_detail` (`banner_detail_id`, `banner_title`, `banner_image`, `banner_type`, `added_date`) VALUES
(1, 'How we value add', 'crop_20180924151726.jpeg', 'ABOUT', '2018-09-24 15:17:29'),
(2, 'How It Works?', 'crop_20180901124515.png', 'HOW IT WORKS', '2018-09-01 12:45:18'),
(3, 'Frequently Asked Questions', 'crop_20180901124541.png', 'FAQ', '2018-09-01 12:45:45'),
(4, 'Get in touch', 'crop_20180901124412.png', 'CONTACT US', '2018-09-01 12:44:17'),
(5, 'Disclaimer', 'crop_20180901124705.png', 'DISCLAIMER', '2018-09-01 12:47:07'),
(6, 'Privacy Policy', 'crop_20180901124640.png', 'PRIVACY POLICY', '2018-09-01 12:46:42'),
(7, 'Term of Use', 'crop_20180901124615.png', 'TERMS OF USE', '2018-09-01 12:46:17'),
(8, 'Individual SignUp', 'crop_20180924151823.jpeg', 'INDIVIDUAL SIGNUP', '2018-09-24 15:18:25'),
(9, 'Company SignUp', 'crop_20180924151846.jpeg', 'COMPANY SIGNUP', '2018-09-24 15:18:48'),
(10, 'Happening in your community', 'crop_20180519204542.jpeg', 'NEWS_FEED', '2018-05-19 20:46:39'),
(11, 'Invite friends to connect with you on 360 Reference', 'crop_20180901130552.png', 'GIVE 360', '2018-09-01 13:05:55'),
(12, 'Find a company that\'s right for you!', 'crop_20180901133600.png', 'JOBS', '2018-09-01 13:36:02'),
(13, 'Sidebar', 'crop_20180901133742.png', 'SIDEBAR', '2018-09-01 13:38:09'),
(14, 'Invite friends to connect with you on 360 Reference', 'crop_20180901130907.png', 'GET 360', '2018-09-01 13:09:10'),
(15, 'Connections', 'crop_20180901134435.png', 'CONNECTION', '2018-09-01 13:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message_type` enum('text','attachment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen_status` enum('sending','sent','delivered','read','trashed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_receiver_status` enum('active','trashed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_sender_status` enum('active','trashed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `chat_group_id`, `message`, `sender_id`, `receiver_id`, `message_type`, `seen_status`, `delete_receiver_status`, `delete_sender_status`, `created_at`, `updated_at`) VALUES
(1, 0, 'hi', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:18:57', '2018-10-05 22:03:40'),
(2, 0, 'ddv', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:20:13', '2018-06-05 13:53:32'),
(3, 0, 'good work', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:22:01', '2018-06-05 13:53:32'),
(4, 0, 'vvdvdvdvvds', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:22:09', '2018-10-05 22:03:40'),
(5, 0, 'ssdvsvsv', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:22:32', '2018-06-05 13:53:32'),
(6, 0, 'sdvsdvv', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:23:01', '2018-10-05 22:03:40'),
(7, 0, ':-)', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:27:44', '2018-10-05 22:03:40'),
(8, 0, 'ok', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:28:30', '2018-10-05 22:03:40'),
(9, 0, 'fine done', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:28:42', '2018-10-05 22:03:40'),
(10, 0, 'dine', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:28:48', '2018-10-05 22:03:40'),
(11, 0, 'ok', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:28:58', '2018-10-05 22:03:40'),
(12, 0, 'nthng to say', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:29:23', '2018-06-05 13:53:32'),
(13, 0, 'right now', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:29:27', '2018-06-05 13:53:32'),
(14, 0, 'i am frustated', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:29:33', '2018-06-05 13:53:32'),
(15, 0, 'with this type of behaviour', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:29:42', '2018-06-05 13:53:32'),
(16, 0, 'goo', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:36:01', '2018-10-05 22:03:40'),
(17, 0, 'Hi', 75, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:41:18', '2018-06-05 13:53:32'),
(18, 0, 'kjbkj', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 17:47:15', '2018-10-05 22:03:40'),
(19, 0, 'good work', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:47:44', '2018-06-05 13:53:32'),
(20, 0, 'jhhjvhj', 54, 74, 'text', 'read', 'active', 'active', '2018-05-22 17:56:37', '2018-06-05 13:53:32'),
(21, 0, 'hi', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 19:12:41', '2018-10-05 22:03:40'),
(22, 0, 'hi', 74, 57, 'text', 'read', 'active', 'active', '2018-05-22 19:15:32', '2018-10-08 15:05:40'),
(23, 0, 'ok', 57, 74, 'text', 'read', 'active', 'active', '2018-05-22 19:17:42', '2018-06-05 13:53:32'),
(24, 0, 'good', 74, 57, 'text', 'read', 'active', 'active', '2018-05-22 19:42:30', '2018-10-08 15:05:40'),
(25, 0, '1234', 74, 57, 'text', 'read', 'active', 'active', '2018-05-22 20:15:36', '2018-10-08 15:05:40'),
(26, 0, 'hi', 74, 54, 'text', 'read', 'active', 'active', '2018-05-22 21:37:40', '2018-10-05 22:03:40'),
(27, 0, 'hi', 75, 12, 'text', 'read', 'active', 'active', '2018-05-23 20:51:13', '2018-05-23 21:00:11'),
(28, 0, 'hello', 12, 75, 'text', 'read', 'active', 'active', '2018-05-23 20:57:30', '2018-05-23 21:26:59'),
(29, 0, 'good to see you?', 75, 12, 'text', 'read', 'active', 'active', '2018-05-23 20:57:58', '2018-05-23 21:00:11'),
(30, 0, '....', 75, 12, 'text', 'read', 'active', 'active', '2018-05-23 20:58:01', '2018-05-23 21:00:11'),
(31, 0, ';-)', 75, 12, 'text', 'read', 'active', 'active', '2018-05-23 20:58:05', '2018-05-23 21:00:11'),
(32, 0, '@123', 75, 12, 'text', 'read', 'active', 'active', '2018-05-23 20:58:09', '2018-05-23 21:00:11'),
(33, 0, '&amp;lt;p&amp;gt;good', 75, 12, 'text', 'read', 'active', 'active', '2018-05-23 20:58:17', '2018-05-23 21:00:11'),
(34, 0, 'ok\'', 57, 74, 'text', 'read', 'active', 'active', '2018-05-23 22:53:08', '2018-06-05 13:53:32'),
(35, 0, 'Hi Chen', 46, 31, 'text', 'read', 'active', 'active', '2018-06-01 20:00:20', '2018-08-21 18:50:10'),
(36, 0, 'How are you?', 46, 31, 'text', 'read', 'active', 'active', '2018-06-01 20:00:27', '2018-08-21 18:50:10'),
(37, 0, 'I am good. What about you!', 31, 46, 'text', 'read', 'active', 'active', '2018-06-04 12:50:35', '2018-06-12 22:27:58'),
(38, 0, 'hello Saurabh', 46, 48, 'text', 'read', 'active', 'active', '2018-06-08 16:14:17', '2018-09-01 15:59:35'),
(39, 0, 'hello', 46, 49, 'text', 'read', 'active', 'active', '2018-06-08 16:15:03', '2018-06-08 16:16:26'),
(40, 0, 'hi', 49, 46, 'text', 'read', 'active', 'active', '2018-06-08 16:15:15', '2018-06-12 22:27:58'),
(41, 0, 'hi', 49, 46, 'text', 'read', 'active', 'active', '2018-06-08 16:15:26', '2018-06-12 22:27:58'),
(42, 0, 'hi', 49, 46, 'text', 'read', 'active', 'active', '2018-06-08 16:15:33', '2018-06-12 22:27:58'),
(43, 0, 'hello world', 46, 49, 'text', 'read', 'active', 'active', '2018-06-08 16:16:13', '2018-06-08 16:16:26'),
(44, 0, 'hi', 49, 46, 'text', 'read', 'active', 'active', '2018-06-08 16:22:46', '2018-06-12 22:27:58'),
(45, 0, 'ji', 49, 46, 'text', 'read', 'active', 'active', '2018-06-08 16:22:49', '2018-06-12 22:27:58'),
(46, 0, 'send', 49, 46, 'text', 'read', 'active', 'active', '2018-06-08 16:23:16', '2018-06-12 22:27:58'),
(47, 0, 'hello', 46, 59, 'text', 'read', 'active', 'active', '2018-06-08 17:15:27', '2018-07-25 23:47:51'),
(48, 0, 'great!', 31, 46, 'text', 'read', 'active', 'active', '2018-06-12 15:30:30', '2018-06-12 22:27:58'),
(49, 0, 'H', 57, 74, 'text', 'read', 'active', 'active', '2018-06-25 14:56:08', '2018-06-25 14:56:08'),
(50, 0, 'hi', 59, 46, 'text', 'read', 'active', 'active', '2018-07-25 16:46:36', '2018-07-25 16:46:36'),
(51, 0, 'hello', 94, 54, 'text', 'read', 'active', 'active', '2018-08-31 10:08:56', '2018-10-05 22:03:40'),
(52, 0, 'test', 94, 135, 'text', 'read', 'active', 'active', '2018-08-31 10:11:00', '2018-08-31 17:44:25'),
(53, 0, 'ello', 135, 94, 'text', 'read', 'active', 'active', '2018-08-31 17:44:29', '2018-09-07 16:12:08'),
(54, 0, 'test', 93, 135, 'text', 'read', 'active', 'active', '2018-08-31 18:54:37', '2018-08-31 18:54:37'),
(55, 0, 'hello', 48, 93, 'text', 'read', 'active', 'active', '2018-09-01 15:59:45', '2018-10-03 21:43:01'),
(56, 0, 'hey there', 48, 93, 'text', 'read', 'active', 'active', '2018-09-01 16:00:18', '2018-10-03 21:43:01'),
(57, 0, 'hi', 94, 62, 'text', 'sent', 'active', 'active', '2018-09-03 12:37:59', '2018-09-03 12:37:59'),
(58, 0, 'hello', 94, 135, 'text', 'sent', 'active', 'active', '2018-09-03 12:38:12', '2018-09-03 12:38:12'),
(59, 0, 'hello', 93, 94, 'text', 'read', 'active', 'active', '2018-09-03 12:39:18', '2018-09-07 16:12:08'),
(60, 0, 'hey', 94, 93, 'text', 'read', 'active', 'active', '2018-09-07 16:10:41', '2018-10-03 21:43:01'),
(61, 0, 'hello', 94, 48, 'text', 'delivered', 'active', 'active', '2018-09-07 16:10:55', '2018-09-07 16:10:55'),
(62, 0, 'hello', 93, 94, 'text', 'read', 'active', 'active', '2018-09-07 16:11:57', '2018-09-07 16:12:08'),
(63, 0, 'hi', 57, 54, 'text', 'read', 'active', 'active', '2018-10-04 14:51:14', '2018-10-05 22:03:40'),
(64, 0, 'helloi', 54, 57, 'text', 'read', 'active', 'active', '2018-10-04 14:51:55', '2018-10-08 15:05:40'),
(65, 0, 'fyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 54, 57, 'text', 'read', 'active', 'active', '2018-10-04 14:52:02', '2018-10-08 15:05:40'),
(66, 0, 'heloo how r u', 57, 54, 'text', 'read', 'active', 'active', '2018-10-04 14:52:13', '2018-10-05 22:03:40'),
(67, 0, 'yfkuyfluyfyuyfuykfyilf yufyufuyfyu yufuyfuyf yufyufyuf yufyufyuf yufyufyuf yufufyuf yuyufyug', 54, 57, 'text', 'read', 'active', 'active', '2018-10-04 14:52:16', '2018-10-08 15:05:40'),
(68, 0, ':-)', 57, 54, 'text', 'read', 'active', 'active', '2018-10-04 14:52:26', '2018-10-05 22:03:40'),
(69, 0, '9919931652', 57, 54, 'text', 'read', 'active', 'active', '2018-10-04 14:52:33', '2018-10-05 22:03:40'),
(70, 0, 'goodgoodgoodgoodgood goodgoodgoodgoodgoodgood goodgoodgood goodgoodgoodgood goodgoodgood goodgoodgoodgood goodgoodgood', 54, 57, 'text', 'read', 'active', 'active', '2018-10-04 14:52:39', '2018-10-08 15:05:40'),
(71, 0, 'ankitjaiswal@singsys.com', 57, 54, 'text', 'read', 'active', 'active', '2018-10-04 14:52:45', '2018-10-05 22:03:40'),
(72, 0, 'test', 140, 88, 'text', 'sent', 'active', 'active', '2018-10-08 00:42:10', '2018-10-08 00:42:10'),
(73, 0, 'how are u', 140, 54, 'text', 'sent', 'active', 'active', '2018-10-08 00:42:21', '2018-10-08 00:42:21'),
(74, 0, 'test', 140, 123, 'text', 'sent', 'active', 'active', '2018-10-08 00:42:42', '2018-10-08 00:42:42'),
(75, 0, 'hello', 160, 57, 'text', 'read', 'active', 'active', '2018-10-08 15:05:27', '2018-10-08 15:05:40'),
(76, 0, 'hi', 160, 101, 'text', 'sent', 'active', 'active', '2018-10-09 16:26:41', '2018-10-09 16:26:41'),
(77, 0, 'hello', 160, 101, 'text', 'sent', 'active', 'active', '2018-10-09 16:27:15', '2018-10-09 16:27:15'),
(78, 0, 'hi', 104, 160, 'text', 'read', 'active', 'active', '2018-10-09 16:27:20', '2018-10-09 16:57:27'),
(79, 0, 'hello', 160, 104, 'text', 'read', 'active', 'active', '2018-10-09 16:30:26', '2018-10-09 16:35:29'),
(80, 0, 'bye', 160, 104, 'text', 'read', 'active', 'active', '2018-10-09 16:30:47', '2018-10-09 16:35:29'),
(81, 0, 'nothing to say', 160, 104, 'text', 'read', 'active', 'active', '2018-10-09 16:43:39', '2018-10-09 16:43:40'),
(82, 0, 'ba bye', 104, 160, 'text', 'read', 'active', 'active', '2018-10-09 16:43:46', '2018-10-09 16:57:27'),
(83, 0, ':p', 160, 104, 'text', 'read', 'active', 'active', '2018-10-09 16:43:52', '2018-10-09 16:43:52'),
(84, 0, 'vivekkumar@singsys.com', 104, 160, 'text', 'read', 'active', 'active', '2018-10-09 16:44:09', '2018-10-09 16:57:27'),
(85, 0, '1234567890', 160, 104, 'text', 'read', 'active', 'active', '2018-10-09 16:44:17', '2018-10-09 16:44:18'),
(86, 0, '.........', 160, 104, 'text', 'read', 'active', 'active', '2018-10-09 16:57:50', '2018-10-09 16:57:50'),
(87, 0, 'Hi', 164, 54, 'text', 'sent', 'active', 'active', '2018-11-01 19:07:16', '2018-11-01 19:07:16'),
(88, 0, 'Hi Ankit', 164, 147, 'text', 'sent', 'active', 'active', '2018-11-01 19:07:29', '2018-11-01 19:07:29'),
(89, 0, 'hi', 162, 145, 'text', 'sent', 'active', 'active', '2018-11-23 13:41:37', '2018-11-23 13:41:37'),
(90, 0, 'hi', 162, 62, 'text', 'sent', 'active', 'active', '2018-11-23 13:42:00', '2018-11-23 13:42:00'),
(91, 0, 'hello', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 14:58:57', '2018-11-23 15:01:25'),
(92, 0, 'hhh', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:01:29', '2018-11-23 15:01:29'),
(93, 0, 'qwerty', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:01:33', '2018-11-23 15:01:34'),
(94, 0, 'qqaz', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 15:01:39', '2018-11-23 15:01:39'),
(95, 0, 'qwerty', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:27:15', '2018-11-23 15:27:15'),
(96, 0, 'l', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:27:58', '2018-11-23 15:27:59'),
(97, 0, 'k', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:28:02', '2018-11-23 15:28:02'),
(98, 0, 'qwert', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 15:28:07', '2018-11-23 15:28:08'),
(99, 0, 'hjk', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:34:49', '2018-11-23 15:34:49'),
(100, 0, 'qwerty', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 15:35:27', '2018-11-23 15:35:27'),
(101, 0, 'fmdlkdkdk', 174, 175, 'text', 'read', 'active', 'active', '2018-11-23 15:35:34', '2018-11-23 15:35:34'),
(102, 0, '123456', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 15:35:39', '2018-11-23 15:35:39'),
(103, 0, 'vivek@singsys.com', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 15:35:49', '2018-11-23 15:35:49'),
(104, 0, '12456', 175, 174, 'text', 'read', 'active', 'active', '2018-11-23 15:35:57', '2018-11-23 15:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `chat_group`
--

CREATE TABLE `chat_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_group_user`
--

CREATE TABLE `chat_group_user` (
  `chat_group_user_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_status`
--

CREATE TABLE `chat_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_group_id` int(11) NOT NULL,
  `status` enum('sending','sent','delivered','read','trashed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_admins`
--

CREATE TABLE `company_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_user_id` int(10) UNSIGNED NOT NULL,
  `admin_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_admins`
--

INSERT INTO `company_admins` (`id`, `company_user_id`, `admin_user_id`, `created_at`, `updated_at`) VALUES
(9, 56, 36, NULL, NULL),
(20, 54, 74, NULL, NULL),
(23, 94, 93, NULL, NULL),
(26, 54, 81, NULL, NULL),
(29, 54, 57, NULL, NULL),
(31, 164, 162, NULL, NULL),
(32, 54, 79, NULL, NULL),
(33, 168, 167, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `user_id`, `address`, `description`, `website`, `contact_number`, `contact_email`, `company_banner`, `company_logo`, `youtube_link`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 9, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-03-27 11:33:41', NULL),
(5, 17, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-03-28 06:21:30', NULL),
(11, 23, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-03-28 13:11:21', NULL),
(13, 26, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-03-28 13:23:27', NULL),
(15, 28, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-03-28 14:27:30', NULL),
(17, 32, '', '', '', '', NULL, 'crop_20180402065145.jpeg', NULL, NULL, '', '2018-04-02 06:36:49', NULL),
(18, 33, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-04-03 13:58:39', NULL),
(19, 34, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-04-06 04:26:59', NULL),
(23, 43, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-04-10 13:52:19', NULL),
(26, 49, '', '', '', '', NULL, 'crop_20181016173700.jpeg', NULL, NULL, '', '2018-04-21 11:09:18', NULL),
(27, 2, 'qwerty', 'qwertyu', 'www.abcd.com', '+91-9345612765', 'sushant+09@singsys.com', NULL, NULL, NULL, '226022', '2018-04-23 04:06:54', '2018-04-23 04:06:54'),
(28, 50, 'Mothercare Paragon', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'www.singsys.com', '+91-1234566543', 'preetisingh@test.com', NULL, 'crop_20180424201148.jpeg', NULL, '226056', '2018-04-23 04:23:05', '2018-04-23 04:57:34'),
(30, 54, 'Hussain Ganjaaanngttyjbfdrr', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'www.360reference.com', '91-95135789', 'ankit@singsys.com', NULL, 'crop_20180423062212.png', 'https://youtu.be/xcJtL7QggTI', '226018', '2018-04-23 05:53:04', '2018-10-08 15:53:16'),
(31, 56, 'hazratganj', 'fgvhj', 'www.tcs.com', '91-852963741', 'abhishekdubey@tcs.com', NULL, 'crop_20180423100653.jpeg', NULL, '226002', '2018-04-23 10:04:23', '2018-04-23 11:32:53'),
(32, 58, 'Omaxe', 'Infocom', 'www.singsys.com', '+91-852963741', 'abhishekdubey@singsys.com', NULL, NULL, NULL, '256398', '2018-04-24 18:27:14', '2018-04-24 18:32:48'),
(34, 62, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-05-11 14:06:01', NULL),
(42, 72, '', '', '', '', NULL, NULL, NULL, NULL, '', '2018-05-11 21:08:34', NULL),
(44, 75, 'Gomtinagar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'www.singsys.com', '+91-8318717701', 'vivekkumar@singsys.com', 'crop_20180522123336.jpeg', 'crop_20180522210311.jpeg', 'https://www.youtube.com/embed/rFk23J7XVV8', '885599', '2018-05-22 12:20:47', '2018-10-08 15:44:17'),
(45, 76, '', '', '', '', NULL, NULL, '', NULL, '', '2018-05-22 19:51:44', NULL),
(46, 80, '', '', '', '', NULL, NULL, '', NULL, '', '2018-06-02 13:00:10', NULL),
(47, 82, '12, hazrat ganj Lucknow', 'good', 'www.tcs.com', '91-852369741', 'ankitjaiswal@singsys.com', 'crop_20180602143228.jpeg', 'crop_20180602140715.png', 'https://www.youtube.com/embed/sbBdj4zIMqY', '226001', '2018-06-02 13:34:03', '2018-06-02 14:06:40'),
(50, 86, '', '', '', '', NULL, 'crop_20180602191840.jpeg', 'crop_20180602191529.jpeg', NULL, '', '2018-06-02 19:16:05', NULL),
(51, 88, '', '', '', '', NULL, NULL, '', NULL, '', '2018-06-25 14:23:29', NULL),
(52, 92, '', '', '', '', NULL, NULL, '', NULL, '', '2018-07-12 19:24:38', NULL),
(53, 94, '', '', '', '', NULL, NULL, 'crop_20181004134655.jpeg', NULL, '', '2018-07-28 20:00:04', NULL),
(56, 113, '', '', '', '', NULL, NULL, 'crop_20180801210839.jpeg', NULL, '', '2018-08-01 21:09:35', NULL),
(57, 116, '', '', '', '', NULL, NULL, '', NULL, '', '2018-08-02 18:59:31', NULL),
(68, 139, '', '', '', '', NULL, NULL, '', NULL, '', '2018-09-08 12:55:46', NULL),
(69, 141, '', '', '', '', NULL, NULL, '', NULL, '', '2018-09-14 16:11:12', NULL),
(70, 148, 'Hussain Ganjs', 'Software Company', 'www.streammarket.com', '91-852963741', 'streammarket@gmail.com', NULL, 'crop_20181001201456.jpeg', '\"https://www.youtube.com/embed/9Pzj7Aj25lw\"', '226016', '2018-10-01 20:16:04', '2018-10-01 21:05:25'),
(72, 153, '', '', '', '', NULL, NULL, '', NULL, '', '2018-10-04 11:56:59', NULL),
(73, 156, '', '', '', '', NULL, NULL, '', NULL, '', '2018-10-05 12:41:48', NULL),
(75, 164, '1 North Bridge Road #17-10 High Street Centre', 'We are a leading professional team of skilled and talented UI/UX designers, web developers and app developers with common vision to achieve customer satisfaction. We focus on creativity and comprehensive web solutions to make technology a credit to your business.', 'www.singsys.com', '+65-92389225', 'sandeep+corporate@singsys.com', 'crop_20181101183604.jpeg', '', 'https://youtu.be/Hp1KuP8GWA4', '179094', '2018-10-31 19:27:00', '2018-10-31 20:44:31'),
(76, 168, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-16 13:50:51', NULL),
(77, 169, '', '', '', '', NULL, NULL, 'crop_20181119115545.png', NULL, '', '2018-11-19 11:58:39', NULL),
(79, 173, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-19 20:43:00', NULL),
(80, 174, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-23 12:22:14', NULL),
(81, 176, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-23 12:56:32', NULL),
(82, 180, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-26 15:21:37', NULL),
(83, 183, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-27 17:58:20', NULL),
(84, 184, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-27 20:50:52', NULL),
(85, 185, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-29 21:31:13', NULL),
(86, 190, '', '', '', '', NULL, NULL, '', NULL, '', '2018-12-07 13:16:04', NULL),
(87, 191, '', '', '', '', NULL, NULL, '', NULL, '', '2018-12-07 13:17:41', NULL),
(88, 192, '', '', '', '', NULL, NULL, '', NULL, '', '2018-12-07 13:18:44', NULL),
(89, 193, '', '', '', '', NULL, NULL, '', NULL, '', '2018-12-07 13:19:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `connected_to` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`id`, `user_id`, `connected_to`, `status`, `message`, `created_at`, `updated_at`) VALUES
(3, 74, 96, 'pending', 'Hello', '2018-08-11 12:50:40', NULL),
(4, 74, 54, 'accepted', 'hello', '2018-08-11 16:01:33', NULL),
(9, 48, 126, 'accepted', '', '2018-09-07 14:46:43', NULL),
(11, 93, 94, 'pending', 'Your invitation is on its way. You can add a note to personalize your invitation.', '2018-09-07 21:49:25', NULL),
(13, 148, 9, 'pending', '', '2018-10-03 21:04:22', NULL),
(14, 148, 147, 'rejected', 'bad', '2018-10-03 21:07:19', NULL),
(15, 148, 57, 'pending', 'bad', '2018-10-03 21:07:27', NULL),
(16, 57, 148, 'accepted', 'Chgchc', '2018-10-03 21:12:19', NULL),
(18, 147, 57, 'accepted', 'best', '2018-10-03 21:35:21', NULL),
(20, 148, 121, 'accepted', 'gd', '2018-10-03 22:07:38', NULL),
(21, 54, 148, 'pending', 'sdcdcd', '2018-10-04 12:42:46', NULL),
(22, 93, 113, 'pending', '', '2018-10-04 20:08:05', NULL),
(23, 57, 156, 'pending', 'hi hello by bye', '2018-10-05 15:29:46', NULL),
(24, 93, 113, 'pending', '', '2018-10-05 15:30:40', NULL),
(25, 147, 126, 'pending', 'good', '2018-10-05 21:36:36', NULL),
(26, 93, 158, 'pending', '', '2018-10-05 21:39:00', NULL),
(27, 147, 158, 'accepted', '', '2018-10-05 22:08:29', NULL),
(30, 160, 62, 'pending', '', '2018-10-08 17:21:40', NULL),
(31, 160, 75, 'pending', '', '2018-10-08 17:43:11', NULL),
(33, 160, 104, 'pending', '', '2018-10-12 12:09:51', NULL),
(34, 93, 48, 'pending', '', '2018-10-18 17:50:09', NULL),
(35, 164, 162, 'rejected', 'Hi Sandeep Individual, Please accept request from Corporate.', '2018-10-31 19:56:02', NULL),
(36, 79, 121, 'accepted', '', '2018-11-14 13:46:18', NULL),
(37, 171, 79, 'pending', '', '2018-11-21 17:36:12', NULL),
(40, 171, 171, 'pending', '', '2018-11-22 15:11:34', NULL),
(42, 175, 174, 'accepted', '', '2018-11-23 13:04:17', NULL),
(43, 175, 175, 'pending', '', '2018-11-23 13:08:36', NULL),
(44, 174, 175, 'pending', '', '2018-11-23 13:09:35', NULL),
(45, 174, 174, 'pending', '', '2018-11-26 15:33:41', NULL),
(46, 180, 175, 'pending', '', '2018-11-26 15:39:42', NULL),
(47, 180, 179, 'pending', '', '2018-11-26 15:43:19', NULL),
(48, 180, 180, 'pending', '', '2018-11-26 15:44:06', NULL),
(49, 167, 166, 'accepted', '', NULL, NULL),
(50, 164, 178, 'accepted', 'Sandeep && Ankush Connection', '2018-08-11 12:50:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_personnel`
--

CREATE TABLE `contact_personnel` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_personnel`
--

INSERT INTO `contact_personnel` (`id`, `name`, `designation`, `email`, `mobile`, `fax`, `skype`, `status`, `added_date`) VALUES
(1, 'Mr. Denstun D’suza', 'Cheif Technical Officer', 'denstundsuza234@gmail.com', '+65 23456754', '+65 23456754', 'denstun.dsuza', 'active', '2018-03-15 07:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_us_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_us_id`, `name`, `email`, `message`, `contact_number`, `added_date`) VALUES
(12, 'CC', 'lee.chenchuen@uobgroup.com', 'Test Test Test', '+65-83880788', '2018-04-27 02:48:04'),
(13, 'Raveena', 'raveena@singsys.com', 'This is testing description', '+91-09876543', '2018-05-10 09:52:33'),
(14, 'Devendra Shukla', 'devendra@singsys.com', 'This is testing description', '+91-98765432', '2018-05-10 09:53:22'),
(15, 'Ankit', 'ankitjaiswal+company@singsys.com', 'good message here', '+91-9919931652', '2018-05-11 06:37:20'),
(17, 'vivek', 'vivekkumar@singsys.com', 'For Testing Purpose.', '+91-1234567', '2018-05-21 05:21:45'),
(18, 'Preeti', 'preetisingh@singsys.com', 'ok', '+91-9651421877', '2018-05-21 05:43:50'),
(20, 'ANkit Jaiswal', 'ankitjaiswal@singsys.com', 'Good One', '+93-85236541', '2018-05-23 05:08:58'),
(22, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-765432', '2018-08-20 07:42:28'),
(23, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-98765432', '2018-08-20 09:01:10'),
(24, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-23456789', '2018-08-28 11:48:46'),
(25, 'Saurabh Shukla', 'saurabhshukla@singsys.com', 'This is testing description', '+65-23456789', '2018-08-28 11:49:42'),
(26, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-12345678', '2018-08-28 12:11:48'),
(27, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-23456789', '2018-08-28 12:17:29'),
(28, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-23456789', '2018-08-28 12:20:02'),
(29, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-23456789', '2018-08-31 12:32:04'),
(30, 'Raveena Nigam', 'raveena@singsys.com', 'This is testing description', '+65-23456789', '2018-08-31 12:42:02'),
(31, 'Raveena Nigam', 'raveena@singsys.com', 'This is general query', '+65-23456789', '2018-09-06 08:16:52'),
(32, 'rajneesh', 'rajneesh@singsys.com', 'helloooooo', '91-951475398', '2018-10-03 05:06:00'),
(34, 'Rakesh Singh', 'rakesh@singsys.com', 'This is testing description', '+91-23456789', '2018-10-11 09:15:15'),
(35, 'Raveena Nigam', 'smtpon24X7@gmail.com', 'Testing', '+91-23456789', '2018-10-11 09:19:45'),
(36, 'vivek', 'vivekkumar@singsys.com', 'qweryuio', '+91-9264964542', '2018-11-13 11:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_reply`
--

CREATE TABLE `contact_us_reply` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_us_id` int(11) NOT NULL,
  `reply` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us_reply`
--

INSERT INTO `contact_us_reply` (`id`, `contact_us_id`, `reply`, `added_date`) VALUES
(1, 1, 0, '2018-03-27 12:03:34'),
(2, 3, 0, '2018-03-27 12:09:11'),
(3, 1, 0, '2018-03-28 04:08:33'),
(4, 5, 0, '2018-03-28 04:36:19'),
(5, 6, 0, '2018-03-28 07:37:10'),
(6, 15, 0, '2018-05-11 14:38:06'),
(7, 16, 0, '2018-05-11 17:51:19'),
(8, 17, 0, '2018-05-21 13:22:44'),
(9, 17, 0, '2018-05-21 13:36:22'),
(10, 17, 0, '2018-05-21 13:38:46'),
(11, 18, 0, '2018-05-21 13:46:59'),
(12, 18, 0, '2018-05-21 13:47:00'),
(13, 17, 0, '2018-05-21 13:47:02'),
(14, 17, 0, '2018-05-21 13:49:47'),
(15, 17, 0, '2018-05-21 14:04:34'),
(16, 20, 0, '2018-05-23 13:12:38'),
(17, 12, 0, '2018-05-30 20:43:22'),
(18, 18, 0, '2018-06-20 01:05:05'),
(19, 31, 0, '2018-09-06 16:17:55'),
(20, 13, 0, '2018-09-08 12:48:57'),
(21, 20, 0, '2018-10-03 12:20:48'),
(22, 32, 0, '2018-10-03 13:07:05'),
(23, 36, 0, '2018-11-13 19:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calling_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `calling_code`, `status`, `added_date`) VALUES
(1, 'Afghanistan', '93', 'active', '2018-05-21 15:23:58'),
(2, 'Åland Islands', '358', 'active', '2018-03-15 02:14:50'),
(3, 'Albania', '355', 'active', '2018-03-15 02:14:50'),
(4, 'Algeria', '213', 'active', '2018-03-15 02:14:50'),
(5, 'American Samoa', '1684', 'active', '2018-03-15 02:14:50'),
(6, 'Andorra', '376', 'active', '2018-03-15 02:14:50'),
(7, 'Angola', '244', 'active', '2018-03-15 02:14:50'),
(8, 'Anguilla', '1264', 'active', '2018-03-15 02:14:50'),
(9, 'Antigua and Barbuda', '1268', 'active', '2018-03-15 02:14:50'),
(10, 'Argentina', '54', 'active', '2018-03-15 02:14:50'),
(11, 'Armenia', '374', 'active', '2018-03-15 02:14:50'),
(12, 'Aruba', '297', 'active', '2018-03-15 02:14:50'),
(13, 'Australia', '61', 'active', '2018-03-15 02:14:50'),
(14, 'Austria', '43', 'active', '2018-03-15 02:14:50'),
(15, 'Azerbaijan', '994', 'active', '2018-03-15 02:14:50'),
(16, 'The Bahamas', '1242', 'active', '2018-03-15 02:14:50'),
(17, 'Bahrain', '973', 'active', '2018-03-15 02:14:50'),
(18, 'Bangladesh', '880', 'active', '2018-03-15 02:14:50'),
(19, 'Barbados', '1246', 'active', '2018-03-15 02:14:50'),
(20, 'Belarus', '375', 'active', '2018-03-15 02:14:50'),
(21, 'Belgium', '32', 'active', '2018-03-15 02:14:50'),
(22, 'Belize', '501', 'active', '2018-03-15 02:14:50'),
(23, 'Benin', '229', 'active', '2018-03-15 02:14:50'),
(24, 'Bermuda', '1441', 'active', '2018-03-15 02:14:50'),
(25, 'Bhutan', '975', 'active', '2018-03-15 02:14:50'),
(26, 'Bolivia', '591', 'active', '2018-03-15 02:14:50'),
(27, 'Bonaire', '5997', 'active', '2018-03-15 02:14:50'),
(28, 'Bosnia and Herzegovina', '387', 'active', '2018-03-15 02:14:50'),
(29, 'Botswana', '267', 'active', '2018-03-15 02:14:50'),
(30, 'Brazil', '55', 'active', '2018-03-15 02:14:50'),
(31, 'British Indian Ocean Territory', '246', 'active', '2018-03-15 02:14:50'),
(32, 'Virgin Islands (British)', '1284', 'active', '2018-03-15 02:14:50'),
(33, 'Virgin Islands (U.S.)', '1 340', 'active', '2018-03-15 02:14:50'),
(34, 'Brunei', '673', 'active', '2018-03-15 02:14:50'),
(35, 'Bulgaria', '359', 'active', '2018-03-15 02:14:50'),
(36, 'Burkina Faso', '226', 'active', '2018-03-15 02:14:50'),
(37, 'Burundi', '257', 'active', '2018-03-15 02:14:50'),
(38, 'Cambodia', '855', 'active', '2018-03-15 02:14:50'),
(39, 'Cameroon', '237', 'active', '2018-03-15 02:14:50'),
(40, 'Canada', '1', 'active', '2018-03-15 02:14:50'),
(41, 'Cape Verde', '238', 'active', '2018-03-15 02:14:50'),
(42, 'Cayman Islands', '1345', 'active', '2018-03-15 02:14:50'),
(43, 'Central African Republic', '236', 'active', '2018-03-15 02:14:50'),
(44, 'Chad', '235', 'active', '2018-03-15 02:14:50'),
(45, 'Chile', '56', 'active', '2018-03-15 02:14:50'),
(46, 'China', '86', 'active', '2018-03-15 02:14:50'),
(47, 'Christmas Island', '61', 'active', '2018-03-15 02:14:50'),
(48, 'Cocos (Keeling) Islands', '61', 'active', '2018-03-15 02:14:50'),
(49, 'Colombia', '57', 'active', '2018-03-15 02:14:50'),
(50, 'Comoros', '269', 'active', '2018-03-15 02:14:50'),
(51, 'Republic of the Congo', '242', 'active', '2018-03-15 02:14:50'),
(52, 'Democratic Republic of the Congo', '243', 'active', '2018-03-15 02:14:50'),
(53, 'Cook Islands', '682', 'active', '2018-03-15 02:14:50'),
(54, 'Costa Rica', '506', 'active', '2018-03-15 02:14:50'),
(55, 'Croatia', '385', 'active', '2018-03-15 02:14:50'),
(56, 'Cuba', '53', 'active', '2018-03-15 02:14:50'),
(57, 'Curaçao', '599', 'active', '2018-03-15 02:14:50'),
(58, 'Cyprus', '357', 'active', '2018-03-15 02:14:50'),
(59, 'Czech Republic', '420', 'active', '2018-03-15 02:14:50'),
(60, 'Denmark', '45', 'active', '2018-03-15 02:14:50'),
(61, 'Djibouti', '253', 'active', '2018-03-15 02:14:50'),
(62, 'Dominica', '1767', 'active', '2018-03-15 02:14:50'),
(63, 'Dominican Republic', '1809', 'active', '2018-03-15 02:14:50'),
(64, 'Ecuador', '593', 'active', '2018-03-15 02:14:50'),
(65, 'Egypt', '20', 'active', '2018-03-15 02:14:50'),
(66, 'El Salvador', '503', 'active', '2018-03-15 02:14:50'),
(67, 'Equatorial Guinea', '240', 'active', '2018-03-15 02:14:50'),
(68, 'Eritrea', '291', 'active', '2018-03-15 02:14:50'),
(69, 'Estonia', '372', 'active', '2018-03-15 02:14:50'),
(70, 'Ethiopia', '251', 'active', '2018-03-15 02:14:50'),
(71, 'Falkland Islands', '500', 'active', '2018-03-15 02:14:50'),
(72, 'Faroe Islands', '298', 'active', '2018-03-15 02:14:50'),
(73, 'Fiji', '679', 'active', '2018-03-15 02:14:50'),
(74, 'Finland', '358', 'active', '2018-03-15 02:14:50'),
(75, 'France', '33', 'active', '2018-03-15 02:14:50'),
(76, 'French Guiana', '594', 'active', '2018-03-15 02:14:50'),
(77, 'French Polynesia', '689', 'active', '2018-03-15 02:14:50'),
(78, 'Gabon', '241', 'active', '2018-03-15 02:14:50'),
(79, 'The Gambia', '220', 'active', '2018-03-15 02:14:50'),
(80, 'Georgia', '995', 'active', '2018-03-15 02:14:50'),
(81, 'Germany', '49', 'active', '2018-03-15 02:14:50'),
(82, 'Ghana', '233', 'active', '2018-03-15 02:14:50'),
(83, 'Gibraltar', '350', 'active', '2018-03-15 02:14:50'),
(84, 'Greece', '30', 'active', '2018-03-15 02:14:50'),
(85, 'Greenland', '299', 'active', '2018-03-15 02:14:50'),
(86, 'Grenada', '1473', 'active', '2018-03-15 02:14:50'),
(87, 'Guadeloupe', '590', 'active', '2018-03-15 02:14:50'),
(88, 'Guam', '1671', 'active', '2018-03-15 02:14:50'),
(89, 'Guatemala', '502', 'active', '2018-03-15 02:14:50'),
(90, 'Guernsey', '44', 'active', '2018-03-15 02:14:50'),
(91, 'Guinea', '224', 'active', '2018-03-15 02:14:50'),
(92, 'Guinea-Bissau', '245', 'active', '2018-03-15 02:14:50'),
(93, 'Guyana', '592', 'active', '2018-03-15 02:14:50'),
(94, 'Haiti', '509', 'active', '2018-03-15 02:14:50'),
(95, 'Holy See', '379', 'active', '2018-03-15 02:14:50'),
(96, 'Honduras', '504', 'active', '2018-03-15 02:14:50'),
(97, 'Hong Kong', '852', 'active', '2018-03-15 02:14:50'),
(98, 'Hungary', '36', 'active', '2018-03-15 02:14:50'),
(99, 'Iceland', '354', 'active', '2018-03-15 02:14:50'),
(100, 'India', '91', 'active', '2018-03-15 02:14:50'),
(101, 'Indonesia', '62', 'active', '2018-03-15 02:14:50'),
(102, 'Ivory Coast', '225', 'active', '2018-03-15 02:14:50'),
(103, 'Iran', '98', 'active', '2018-03-15 02:14:50'),
(104, 'Iraq', '964', 'active', '2018-03-15 02:14:50'),
(105, 'Republic of Ireland', '353', 'active', '2018-03-15 02:14:50'),
(106, 'Isle of Man', '44', 'active', '2018-03-15 02:14:50'),
(107, 'Israel', '972', 'active', '2018-03-15 02:14:50'),
(108, 'Italy', '39', 'active', '2018-03-15 02:14:50'),
(109, 'Jamaica', '1876', 'active', '2018-03-15 02:14:50'),
(110, 'Japan', '81', 'active', '2018-03-15 02:14:50'),
(111, 'Jersey', '44', 'active', '2018-03-15 02:14:50'),
(112, 'Jordan', '962', 'active', '2018-03-15 02:14:50'),
(113, 'Kazakhstan', '76', 'active', '2018-03-15 02:14:50'),
(114, 'Kenya', '254', 'active', '2018-03-15 02:14:50'),
(115, 'Kiribati', '686', 'active', '2018-03-15 02:14:50'),
(116, 'Kuwait', '965', 'active', '2018-03-15 02:14:50'),
(117, 'Kyrgyzstan', '996', 'active', '2018-03-15 02:14:50'),
(118, 'Laos', '856', 'active', '2018-03-15 02:14:50'),
(119, 'Latvia', '371', 'active', '2018-03-15 02:14:50'),
(120, 'Lebanon', '961', 'active', '2018-03-15 02:14:50'),
(121, 'Lesotho', '266', 'active', '2018-03-15 02:14:50'),
(122, 'Liberia', '231', 'active', '2018-03-15 02:14:50'),
(123, 'Libya', '218', 'active', '2018-03-15 02:14:50'),
(124, 'Liechtenstein', '423', 'active', '2018-03-15 02:14:50'),
(125, 'Lithuania', '370', 'active', '2018-03-15 02:14:50'),
(126, 'Luxembourg', '352', 'active', '2018-03-15 02:14:50'),
(127, 'Macau', '853', 'active', '2018-03-15 02:14:50'),
(128, 'Republic of Macedonia', '389', 'active', '2018-03-15 02:14:50'),
(129, 'Madagascar', '261', 'active', '2018-03-15 02:14:50'),
(130, 'Malawi', '265', 'active', '2018-03-15 02:14:50'),
(131, 'Malaysia', '60', 'active', '2018-03-15 02:14:50'),
(132, 'Maldives', '960', 'active', '2018-03-15 02:14:50'),
(133, 'Mali', '223', 'active', '2018-03-15 02:14:50'),
(134, 'Malta', '356', 'active', '2018-03-15 02:14:50'),
(135, 'Marshall Islands', '692', 'active', '2018-03-15 02:14:50'),
(136, 'Martinique', '596', 'active', '2018-03-15 02:14:50'),
(137, 'Mauritania', '222', 'active', '2018-03-15 02:14:50'),
(138, 'Mauritius', '230', 'active', '2018-03-15 02:14:50'),
(139, 'Mayotte', '262', 'active', '2018-03-15 02:14:50'),
(140, 'Mexico', '52', 'active', '2018-03-15 02:14:50'),
(141, 'Federated States of Micronesia', '691', 'active', '2018-03-15 02:14:50'),
(142, 'Moldova', '373', 'active', '2018-03-15 02:14:50'),
(143, 'Monaco', '377', 'active', '2018-03-15 02:14:50'),
(144, 'Mongolia', '976', 'active', '2018-03-15 02:14:50'),
(145, 'Montenegro', '382', 'active', '2018-03-15 02:14:50'),
(146, 'Montserrat', '1664', 'active', '2018-03-15 02:14:50'),
(147, 'Morocco', '212', 'active', '2018-03-15 02:14:50'),
(148, 'Mozambique', '258', 'active', '2018-03-15 02:14:50'),
(149, 'Myanmar', '95', 'active', '2018-03-15 02:14:50'),
(150, 'Namibia', '264', 'active', '2018-03-15 02:14:50'),
(151, 'Nauru', '674', 'active', '2018-03-15 02:14:50'),
(152, 'Nepal', '977', 'active', '2018-03-15 02:14:50'),
(153, 'Netherlands', '31', 'active', '2018-03-15 02:14:50'),
(154, 'New Caledonia', '687', 'active', '2018-03-15 02:14:50'),
(155, 'New Zealand', '64', 'active', '2018-03-15 02:14:50'),
(156, 'Nicaragua', '505', 'active', '2018-03-15 02:14:50'),
(157, 'Niger', '227', 'active', '2018-03-15 02:14:50'),
(158, 'Nigeria', '234', 'active', '2018-03-15 02:14:50'),
(159, 'Niue', '683', 'active', '2018-03-15 02:14:50'),
(160, 'Norfolk Island', '672', 'active', '2018-03-15 02:14:50'),
(161, 'North Korea', '850', 'active', '2018-03-15 02:14:50'),
(162, 'Northern Mariana Islands', '1670', 'active', '2018-03-15 02:14:50'),
(163, 'Norway', '47', 'active', '2018-03-15 02:14:50'),
(164, 'Oman', '968', 'active', '2018-03-15 02:14:50'),
(165, 'Pakistan', '92', 'active', '2018-03-15 02:14:50'),
(166, 'Palau', '680', 'active', '2018-03-15 02:14:50'),
(167, 'Palestine', '970', 'active', '2018-03-15 02:14:50'),
(168, 'Panama', '507', 'active', '2018-03-15 02:14:50'),
(169, 'Papua New Guinea', '675', 'active', '2018-03-15 02:14:50'),
(170, 'Paraguay', '595', 'active', '2018-03-15 02:14:50'),
(171, 'Peru', '51', 'active', '2018-03-15 02:14:50'),
(172, 'Philippines', '63', 'active', '2018-03-15 02:14:50'),
(173, 'Pitcairn Islands', '64', 'active', '2018-03-15 02:14:50'),
(174, 'Poland', '48', 'active', '2018-03-15 02:14:50'),
(175, 'Portugal', '351', 'active', '2018-03-15 02:14:50'),
(176, 'Puerto Rico', '1787', 'active', '2018-03-15 02:14:50'),
(177, 'Qatar', '974', 'active', '2018-03-15 02:14:50'),
(178, 'Republic of Kosovo', '383', 'active', '2018-03-15 02:14:50'),
(179, 'Réunion', '262', 'active', '2018-03-15 02:14:50'),
(180, 'Romania', '40', 'active', '2018-03-15 02:14:50'),
(181, 'Russia', '7', 'active', '2018-03-15 02:14:50'),
(182, 'Rwanda', '250', 'active', '2018-03-15 02:14:50'),
(183, 'Saint Barthélemy', '590', 'active', '2018-03-15 02:14:50'),
(184, 'Saint Helena', '290', 'active', '2018-03-15 02:14:50'),
(185, 'Saint Kitts and Nevis', '1869', 'active', '2018-03-15 02:14:50'),
(186, 'Saint Lucia', '1758', 'active', '2018-03-15 02:14:50'),
(187, 'Saint Martin', '590', 'active', '2018-03-15 02:14:50'),
(188, 'Saint Pierre and Miquelon', '508', 'active', '2018-03-15 02:14:50'),
(189, 'Saint Vincent and the Grenadines', '1784', 'active', '2018-03-15 02:14:50'),
(190, 'Samoa', '685', 'active', '2018-03-15 02:14:50'),
(191, 'San Marino', '378', 'active', '2018-03-15 02:14:50'),
(192, 'São Tomé and Príncipe', '239', 'active', '2018-03-15 02:14:50'),
(193, 'Saudi Arabia', '966', 'active', '2018-03-15 02:14:50'),
(194, 'Senegal', '221', 'active', '2018-03-15 02:14:50'),
(195, 'Serbia', '381', 'active', '2018-03-15 02:14:50'),
(196, 'Seychelles', '248', 'active', '2018-03-15 02:14:50'),
(197, 'Sierra Leone', '232', 'active', '2018-03-15 02:14:50'),
(198, 'Singapore', '65', 'active', '2018-03-15 02:14:50'),
(199, 'Sint Maarten', '1721', 'active', '2018-03-15 02:14:50'),
(200, 'Slovakia', '421', 'active', '2018-03-15 02:14:50'),
(201, 'Slovenia', '386', 'active', '2018-03-15 02:14:50'),
(202, 'Solomon Islands', '677', 'active', '2018-03-15 02:14:50'),
(203, 'Somalia', '252', 'active', '2018-03-15 02:14:50'),
(204, 'South Africa', '27', 'active', '2018-03-15 02:14:50'),
(205, 'South Georgia', '500', 'active', '2018-03-15 02:14:50'),
(206, 'South Korea', '82', 'active', '2018-03-15 02:14:50'),
(207, 'South Sudan', '211', 'active', '2018-03-15 02:14:50'),
(208, 'Spain', '34', 'active', '2018-03-15 02:14:50'),
(209, 'Sri Lanka', '94', 'active', '2018-03-15 02:14:50'),
(210, 'Sudan', '249', 'active', '2018-03-15 02:14:50'),
(211, 'Suriname', '597', 'active', '2018-03-15 02:14:50'),
(212, 'Svalbard and Jan Mayen', '4779', 'active', '2018-03-15 02:14:50'),
(213, 'Swaziland', '268', 'active', '2018-03-15 02:14:50'),
(214, 'Sweden', '46', 'active', '2018-03-15 02:14:50'),
(215, 'Switzerland', '41', 'active', '2018-03-15 02:14:50'),
(216, 'Syria', '963', 'active', '2018-03-15 02:14:50'),
(217, 'Taiwan', '886', 'active', '2018-03-15 02:14:50'),
(218, 'Tajikistan', '992', 'active', '2018-03-15 02:14:50'),
(219, 'Tanzania', '255', 'active', '2018-03-15 02:14:50'),
(220, 'Thailand', '66', 'active', '2018-03-15 02:14:50'),
(221, 'East Timor', '670', 'active', '2018-03-15 02:14:50'),
(222, 'Togo', '228', 'active', '2018-03-15 02:14:50'),
(223, 'Tokelau', '690', 'active', '2018-03-15 02:14:50'),
(224, 'Tonga', '676', 'active', '2018-03-15 02:14:50'),
(225, 'Trinidad and Tobago', '1868', 'active', '2018-03-15 02:14:50'),
(226, 'Tunisia', '216', 'active', '2018-03-15 02:14:50'),
(227, 'Turkey', '90', 'active', '2018-03-15 02:14:50'),
(228, 'Turkmenistan', '993', 'active', '2018-03-15 02:14:50'),
(229, 'Turks and Caicos Islands', '1649', 'active', '2018-03-15 02:14:50'),
(230, 'Tuvalu', '688', 'active', '2018-03-15 02:14:50'),
(231, 'Uganda', '256', 'active', '2018-03-15 02:14:50'),
(232, 'Ukraine', '380', 'active', '2018-03-15 02:14:50'),
(233, 'United Arab Emirates', '971', 'active', '2018-03-15 02:14:50'),
(234, 'United Kingdom', '44', 'active', '2018-03-15 02:14:50'),
(235, 'United States', '1', 'active', '2018-03-15 02:14:50'),
(236, 'Uruguay', '598', 'active', '2018-03-15 02:14:50'),
(237, 'Uzbekistan', '998', 'active', '2018-03-15 02:14:50'),
(238, 'Vanuatu', '678', 'active', '2018-03-15 02:14:50'),
(239, 'Venezuela', '58', 'active', '2018-03-15 02:14:50'),
(240, 'Vietnam', '84', 'active', '2018-03-15 02:14:50'),
(241, 'Wallis and Futuna', '681', 'active', '2018-03-15 02:14:50'),
(242, 'Western Sahara', '212', 'active', '2018-03-15 02:14:50'),
(243, 'Yemen', '967', 'active', '2018-03-15 02:14:50'),
(244, 'Zambia', '260', 'active', '2018-03-15 02:14:50'),
(245, 'Zimbabwe', '263', 'active', '2018-03-15 02:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `credit_transaction_detail`
--

CREATE TABLE `credit_transaction_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` enum('stripe','awarded') COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_transaction_detail`
--

INSERT INTO `credit_transaction_detail` (`id`, `user_id`, `transaction_id`, `transaction_type`, `credit`, `amount`, `status`, `currency`, `billing`, `message`, `stripe_response`, `created_at`, `updated_at`) VALUES
(1, 50, 'ch_1CsTw3AbBGmUqZdoTR02zTSu', 'stripe', 0, '31.00', 'succeeded', 'usd', 'ch_1CsTw3AbBGmUqZdoTR02zTSu', 'succeeded', '{\"id\":\"ch_1CsTw3AbBGmUqZdoTR02zTSu\",\"object\":\"charge\",\"amount\":3100,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CsTw4AbBGmUqZdoAd2sLoUu\",\"captured\":true,\"created\":1532690199,\"currency\":\"usd\",\"customer\":\"cus_DJ68FtpU2WFXpT\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CsTw3AbBGmUqZdoTR02zTSu\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CsTvyAbBGmUqZdoDsFhVG5C\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DJ68FtpU2WFXpT\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2023,\"fingerprint\":\"YVXZbVAFYWQUOuml\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":\"preetisingh+surbhi@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-27 19:16:40', NULL),
(2, 94, 'ch_1CsrG3AbBGmUqZdo8ABXZB0q', 'stripe', 0, '20.00', 'succeeded', 'usd', 'ch_1CsrG3AbBGmUqZdo8ABXZB0q', 'succeeded', '{\"id\":\"ch_1CsrG3AbBGmUqZdo8ABXZB0q\",\"object\":\"charge\",\"amount\":2000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CsrG3AbBGmUqZdoMlx6JXn4\",\"captured\":true,\"created\":1532779851,\"currency\":\"usd\",\"customer\":\"cus_DJUEtv8HafTmyf\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CsrG3AbBGmUqZdo8ABXZB0q\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CsrFyAbBGmUqZdoTgZdQExi\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DJUEtv8HafTmyf\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2022,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena+company@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-28 20:10:51', NULL),
(3, 94, 'ch_1CsrJHAbBGmUqZdok7dMVLh0', 'stripe', 0, '100.00', 'succeeded', 'usd', 'ch_1CsrJHAbBGmUqZdok7dMVLh0', 'succeeded', '{\"id\":\"ch_1CsrJHAbBGmUqZdok7dMVLh0\",\"object\":\"charge\",\"amount\":10000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CsrJHAbBGmUqZdoRHgqT04v\",\"captured\":true,\"created\":1532780051,\"currency\":\"usd\",\"customer\":\"cus_DJUH2XUm9geHgz\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CsrJHAbBGmUqZdok7dMVLh0\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CsrJCAbBGmUqZdoSvQtY3A0\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DJUH2XUm9geHgz\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2022,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena+company@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-28 20:14:12', NULL),
(4, 94, 'ch_1CsrmuAbBGmUqZdoFshFXUzC', 'stripe', 0, '100.00', 'succeeded', 'usd', 'ch_1CsrmuAbBGmUqZdoFshFXUzC', 'succeeded', '{\"id\":\"ch_1CsrmuAbBGmUqZdoFshFXUzC\",\"object\":\"charge\",\"amount\":10000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CsrmuAbBGmUqZdoJyAJJwPw\",\"captured\":true,\"created\":1532781888,\"currency\":\"usd\",\"customer\":\"cus_DJUmUD8YwgU7UO\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CsrmuAbBGmUqZdoFshFXUzC\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CsrmpAbBGmUqZdontlsVXfI\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DJUmUD8YwgU7UO\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2025,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena+company@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-28 20:44:49', NULL),
(6, 54, 'ch_1CtuXCAbBGmUqZdoUMiX2NVz', 'stripe', 0, '24.00', 'succeeded', 'usd', 'ch_1CtuXCAbBGmUqZdoUMiX2NVz', 'succeeded', '{\"id\":\"ch_1CtuXCAbBGmUqZdoUMiX2NVz\",\"object\":\"charge\",\"amount\":2400,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CtuXDAbBGmUqZdoq28zIx57\",\"captured\":true,\"created\":1533030774,\"currency\":\"usd\",\"customer\":\"cus_DKZgLL2v4RSb2W\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CtuXCAbBGmUqZdoUMiX2NVz\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CtuX6AbBGmUqZdo9upLGHi1\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DKZgLL2v4RSb2W\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":6,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivekkumar@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-31 17:52:55', NULL),
(13, 75, 'ch_1CtvEuAbBGmUqZdoH1EQi91k', 'stripe', 0, '50.00', 'succeeded', 'usd', 'ch_1CtvEuAbBGmUqZdoH1EQi91k', 'succeeded', '{\"id\":\"ch_1CtvEuAbBGmUqZdoH1EQi91k\",\"object\":\"charge\",\"amount\":5000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CtvEuAbBGmUqZdo6YWLeDVQ\",\"captured\":true,\"created\":1533033484,\"currency\":\"usd\",\"customer\":\"cus_DKaPK3pFxyCm7G\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CtvEuAbBGmUqZdoH1EQi91k\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CtvEoAbBGmUqZdoAid70xFA\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DKaPK3pFxyCm7G\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"ankitjaiswal@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-31 18:38:05', NULL),
(14, 54, 'ch_1CtxC4AbBGmUqZdosOxcJvIu', 'stripe', 0, '50.00', 'succeeded', 'usd', 'ch_1CtxC4AbBGmUqZdosOxcJvIu', 'succeeded', '{\"id\":\"ch_1CtxC4AbBGmUqZdosOxcJvIu\",\"object\":\"charge\",\"amount\":5000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CtxC4AbBGmUqZdolabSMK4s\",\"captured\":true,\"created\":1533040996,\"currency\":\"usd\",\"customer\":\"cus_DKcQ8nCp64wDIc\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CtxC4AbBGmUqZdosOxcJvIu\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CtxBzAbBGmUqZdoWk6zf83X\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DKcQ8nCp64wDIc\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":6,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivekkumar@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-07-31 20:43:17', NULL),
(15, 94, 'ch_1CuGZdAbBGmUqZdoG1BnkLk4', 'stripe', 0, '25.00', 'succeeded', 'usd', 'ch_1CuGZdAbBGmUqZdoG1BnkLk4', 'succeeded', '{\"id\":\"ch_1CuGZdAbBGmUqZdoG1BnkLk4\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CuGZdAbBGmUqZdojxzxVxVG\",\"captured\":true,\"created\":1533115493,\"currency\":\"usd\",\"customer\":\"cus_DKwSAYaGXaABCn\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CuGZdAbBGmUqZdoG1BnkLk4\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CuGZXAbBGmUqZdooqoX8Lze\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DKwSAYaGXaABCn\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2022,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena+paid@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-01 17:24:54', NULL),
(16, 94, 'ch_1CuGbiAbBGmUqZdos9jWH86K', 'stripe', 0, '25.00', 'succeeded', 'usd', 'ch_1CuGbiAbBGmUqZdos9jWH86K', 'succeeded', '{\"id\":\"ch_1CuGbiAbBGmUqZdos9jWH86K\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CuGbiAbBGmUqZdoY04YEkhP\",\"captured\":true,\"created\":1533115622,\"currency\":\"usd\",\"customer\":\"cus_DKwUHgWNv7jjZR\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CuGbiAbBGmUqZdos9jWH86K\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CuGbcAbBGmUqZdoOxtWOool\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DKwUHgWNv7jjZR\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-01 17:27:02', NULL),
(20, 94, 'ch_1CvJrPAbBGmUqZdo3vTxdCN3', 'stripe', 10, '50.00', 'succeeded', 'usd', 'ch_1CvJrPAbBGmUqZdo3vTxdCN3', 'succeeded', '{\"id\":\"ch_1CvJrPAbBGmUqZdo3vTxdCN3\",\"object\":\"charge\",\"amount\":5000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CvJrQAbBGmUqZdo3aGfLs7B\",\"captured\":true,\"created\":1533366455,\"currency\":\"usd\",\"customer\":\"cus_DM1vOnGsmRvoml\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CvJrPAbBGmUqZdo3vTxdCN3\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CvJrKAbBGmUqZdoBUwYk2nf\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DM1vOnGsmRvoml\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2025,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-04 15:07:36', NULL),
(22, 56, 'ch_1CxX2tAbBGmUqZdoOcmY0giL', 'stripe', 12, '60.00', 'succeeded', 'usd', 'ch_1CxX2tAbBGmUqZdoOcmY0giL', 'succeeded', '{\"id\":\"ch_1CxX2tAbBGmUqZdoOcmY0giL\",\"object\":\"charge\",\"amount\":6000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CxX2tAbBGmUqZdoJjoCCwOv\",\"captured\":true,\"created\":1533893795,\"currency\":\"usd\",\"customer\":\"cus_DOJgb6CplB4dOw\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CxX2tAbBGmUqZdoOcmY0giL\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CxX2nAbBGmUqZdoX54QTfMg\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DOJgb6CplB4dOw\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":6,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vie@sing.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-10 17:36:35', NULL),
(23, 54, 'ch_1CxZK1AbBGmUqZdoynAlb34Y', 'stripe', 10, '50.00', 'succeeded', 'usd', 'ch_1CxZK1AbBGmUqZdoynAlb34Y', 'succeeded', '{\"id\":\"ch_1CxZK1AbBGmUqZdoynAlb34Y\",\"object\":\"charge\",\"amount\":5000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CxZK2AbBGmUqZdopuB0o7ED\",\"captured\":true,\"created\":1533902545,\"currency\":\"usd\",\"customer\":\"cus_DOM2CgVW1tryCV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CxZK1AbBGmUqZdoynAlb34Y\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CxZJwAbBGmUqZdosf46tnkw\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DOM2CgVW1tryCV\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2019,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"ankitjaiswal@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-10 20:02:26', NULL),
(24, 54, 'ch_1Cxv5OAbBGmUqZdoUY3IZfxz', 'stripe', 10, '50.00', 'succeeded', 'usd', 'ch_1Cxv5OAbBGmUqZdoUY3IZfxz', 'succeeded', '{\"id\":\"ch_1Cxv5OAbBGmUqZdoUY3IZfxz\",\"object\":\"charge\",\"amount\":5000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cxv5OAbBGmUqZdo3h8Dz8YW\",\"captured\":true,\"created\":1533986206,\"currency\":\"usd\",\"customer\":\"cus_DOiWquYJWMy8MU\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1Cxv5OAbBGmUqZdoUY3IZfxz\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1Cxv5IAbBGmUqZdoflGJiita\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DOiWquYJWMy8MU\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2019,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"ankitjaiswal@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-11 19:16:46', NULL),
(25, 54, 'ch_1Cxw8bAbBGmUqZdonZydEkft', 'stripe', 10, '50.00', 'succeeded', 'usd', 'ch_1Cxw8bAbBGmUqZdonZydEkft', 'succeeded', '{\"id\":\"ch_1Cxw8bAbBGmUqZdonZydEkft\",\"object\":\"charge\",\"amount\":5000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cxw8bAbBGmUqZdosP5AHLF6\",\"captured\":true,\"created\":1533990249,\"currency\":\"usd\",\"customer\":\"cus_DOjb07Cl2xTARa\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1Cxw8bAbBGmUqZdonZydEkft\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1Cxw8WAbBGmUqZdo8v3YUrxQ\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DOjb07Cl2xTARa\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2019,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"ankitjaiswal@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-11 20:24:10', NULL),
(26, 54, 'ch_1CxwIBAbBGmUqZdo9yfvCJP4', 'stripe', 8, '40.00', 'succeeded', 'usd', 'ch_1CxwIBAbBGmUqZdo9yfvCJP4', 'succeeded', '{\"id\":\"ch_1CxwIBAbBGmUqZdo9yfvCJP4\",\"object\":\"charge\",\"amount\":4000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CxwIBAbBGmUqZdoCTgh8UJp\",\"captured\":true,\"created\":1533990843,\"currency\":\"usd\",\"customer\":\"cus_DOjl0n5U0RqIyY\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CxwIBAbBGmUqZdo9yfvCJP4\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CxwI5AbBGmUqZdouX1C4AZL\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DOjl0n5U0RqIyY\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2019,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"ankitjaiswal@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-11 20:34:04', NULL),
(27, 54, 'ch_1CxwKKAbBGmUqZdoJU0z6iRk', 'stripe', 4, '20.00', 'succeeded', 'usd', 'ch_1CxwKKAbBGmUqZdoJU0z6iRk', 'succeeded', '{\"id\":\"ch_1CxwKKAbBGmUqZdoJU0z6iRk\",\"object\":\"charge\",\"amount\":2000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CxwKKAbBGmUqZdoTyRdeOfB\",\"captured\":true,\"created\":1533990976,\"currency\":\"usd\",\"customer\":\"cus_DOjntvXEAOqTid\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1CxwKKAbBGmUqZdoJU0z6iRk\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1CxwKEAbBGmUqZdoJmdbA9El\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DOjntvXEAOqTid\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":5,\"exp_year\":2020,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"ankitjaiswal@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-11 20:36:16', NULL),
(28, 94, 'ch_1D1AMyAbBGmUqZdovklKSTsQ', 'stripe', 5, '25.00', 'succeeded', 'usd', 'ch_1D1AMyAbBGmUqZdovklKSTsQ', 'succeeded', '{\"id\":\"ch_1D1AMyAbBGmUqZdovklKSTsQ\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1D1AMzAbBGmUqZdolbKPMOdA\",\"captured\":true,\"created\":1534759940,\"currency\":\"usd\",\"customer\":\"cus_DS4V07R3Wo0M3O\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1D1AMyAbBGmUqZdovklKSTsQ\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1D1AMtAbBGmUqZdoaZVWJfq7\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DS4V07R3Wo0M3O\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2024,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-20 18:12:21', NULL),
(29, 94, 'ch_1D4tsOAbBGmUqZdogpMY2R4W', 'stripe', 100, '500.00', 'succeeded', 'usd', 'ch_1D4tsOAbBGmUqZdogpMY2R4W', 'succeeded', '{\"id\":\"ch_1D4tsOAbBGmUqZdogpMY2R4W\",\"object\":\"charge\",\"amount\":50000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1D4tsOAbBGmUqZdoZAm9r3E1\",\"captured\":true,\"created\":1535649852,\"currency\":\"usd\",\"customer\":\"cus_DVvjzfqfEcncC9\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1D4tsOAbBGmUqZdogpMY2R4W\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1D4tsIAbBGmUqZdoKriqDYrl\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DVvjzfqfEcncC9\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2035,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"raveena@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-08-31 01:24:13', NULL),
(33, 50, 'ch_1DRwNtAbBGmUqZdoNPSopN9h', 'stripe', 4, '20.00', 'succeeded', 'usd', 'ch_1DRwNtAbBGmUqZdoNPSopN9h', 'succeeded', '{\"id\":\"ch_1DRwNtAbBGmUqZdoNPSopN9h\",\"object\":\"charge\",\"amount\":2000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DRwNtAbBGmUqZdoBXJCU6Od\",\"captured\":true,\"created\":1541141037,\"currency\":\"usd\",\"customer\":\"cus_Dtjr8HXi2p2SV7\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":34,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DRwNtAbBGmUqZdoNPSopN9h\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DRwNmAbBGmUqZdowmZwXnqv\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_Dtjr8HXi2p2SV7\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2023,\"fingerprint\":\"YVXZbVAFYWQUOuml\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":\"preetisingh@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-02 14:43:57', NULL),
(34, 50, 'ch_1DRwOXAbBGmUqZdohffN6t3P', 'stripe', 500, '2500.00', 'succeeded', 'usd', 'ch_1DRwOXAbBGmUqZdohffN6t3P', 'succeeded', '{\"id\":\"ch_1DRwOXAbBGmUqZdohffN6t3P\",\"object\":\"charge\",\"amount\":250000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DRwOXAbBGmUqZdowKzRCNFI\",\"captured\":true,\"created\":1541141077,\"currency\":\"usd\",\"customer\":\"cus_DtjsNBXKpOqt7D\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":46,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DRwOXAbBGmUqZdohffN6t3P\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DRwOSAbBGmUqZdoQXWn4zQO\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DtjsNBXKpOqt7D\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2023,\"fingerprint\":\"YVXZbVAFYWQUOuml\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":\"preetisingh@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-02 14:44:38', NULL),
(35, 168, 'ch_1DX0f2AbBGmUqZdoh5s5ABtS', 'stripe', 5, '25.00', 'succeeded', 'usd', 'ch_1DX0f2AbBGmUqZdoh5s5ABtS', 'succeeded', '{\"id\":\"ch_1DX0f2AbBGmUqZdoh5s5ABtS\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DX0f2AbBGmUqZdoKUEApdWS\",\"captured\":true,\"created\":1542349116,\"currency\":\"usd\",\"customer\":\"cus_DyycF4QBef1Pwu\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":33,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DX0f2AbBGmUqZdoh5s5ABtS\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DX0exAbBGmUqZdonbmfI1ue\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DyycF4QBef1Pwu\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":5,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"chetandeep@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-16 14:18:36', NULL),
(36, 169, 'ch_1DY6giAbBGmUqZdoFHAfxkOX', 'stripe', 15, '75.00', 'succeeded', 'usd', 'ch_1DY6giAbBGmUqZdoFHAfxkOX', 'succeeded', '{\"id\":\"ch_1DY6giAbBGmUqZdoFHAfxkOX\",\"object\":\"charge\",\"amount\":7500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DY6giAbBGmUqZdofrOgmrXE\",\"captured\":true,\"created\":1542610612,\"currency\":\"usd\",\"customer\":\"cus_E06uOvdjRlu1Se\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":7,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DY6giAbBGmUqZdoFHAfxkOX\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DY6gdAbBGmUqZdomFFuQDKd\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_E06uOvdjRlu1Se\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":11,\"exp_year\":2022,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivek@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-19 14:56:53', NULL),
(37, 169, 'ch_1DY6oaAbBGmUqZdovogw4RWN', 'stripe', 30, '150.00', 'succeeded', 'usd', 'ch_1DY6oaAbBGmUqZdovogw4RWN', 'succeeded', '{\"id\":\"ch_1DY6oaAbBGmUqZdovogw4RWN\",\"object\":\"charge\",\"amount\":15000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DY6oaAbBGmUqZdoxfafeDR5\",\"captured\":true,\"created\":1542611100,\"currency\":\"usd\",\"customer\":\"cus_E072ofyOKhgBLa\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":1,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DY6oaAbBGmUqZdovogw4RWN\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DY6oVAbBGmUqZdo0TWLTbEP\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_E072ofyOKhgBLa\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivek@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-19 15:05:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `description`, `added_date`) VALUES
(1, 'contact_us', '360 Reference - Contact Us', '<p>Dear {NAME},</p>\r\n\r\n<p>Thank you for reaching out! Your feedback is important to us. We are working on it and will get back to you within the next 2 working days!&nbsp;</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-06 10:40:26'),
(2, 'contact_us_reply', '360 Reference - Contact Reply', '<p>Dear {NAME},</p>\r\n\r\n<p>We are writing in response to your feedback.&nbsp;&nbsp;</p>\r\n\r\n<p>{MESSAGE}</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-06 18:45:43'),
(3, 'account_activation', '360 Reference - Account Activation', '<p>Dear {NAME},</p>\r\n\r\n<p>Thank you for joining 360 Reference!&nbsp;You are taking a big, first step in this joint&nbsp;revolution to improve culture in the work place! For your security, SMS OTP <strong>and&nbsp;</strong>email verification are required. For email verification, please click here:</p>\r\n\r\n<p>{ACTIVATIONLINK}.</p>\r\n\r\n<p>Alternatively, please copy and paste the URL in the browser.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-06 18:47:51'),
(4, 'reset_password', '360 Reference - Reset Password', '<p>Dear {NAME},</p>\r\n\r\n<p>Can&#39;t remember your password? Don&#39;t worry!&nbsp;This happens to even the&nbsp;best of us. (:</p>\r\n\r\n<p>To reset your password, please click here.</p>\r\n\r\n<p>{ACTIVATIONLINK}</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:00:10'),
(5, 'same_company_notification', '360 Reference - New Connection', '<p>Dear {NAME},</p>\r\n\r\n<p>({NEWUSER}) from ({COMPANY}) has requested to make a connection with you.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-08 07:10:06'),
(6, 'contact_us_admin', '360 Reference - Admin alert of Contact Us', '<p>Dear Admin,</p>\r\n\r\n<p>New contact information found.</p>\r\n\r\n<p>Name: {NAME}</p>\r\n\r\n<p>Email: {FROM_EMAIL}</p>\r\n\r\n<p>Message: {MESSAGE}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-06 18:53:41'),
(7, 'account_deletion', '360 Reference - Account Deletion', '<p>Dear {NAME},</p>\r\n\r\n<p>We regret to&nbsp;inform you that your account has been deleted.</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:09:25'),
(8, 'account_block', '360 Reference - Account Blocked', '<p>Dear {NAME},</p>\r\n\r\n<p>We regret to inform you that your account has been blocked.</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:10:02'),
(9, 'account_unblock', '360 Reference - Account Unblock', '<p>Dear {NAME},</p>\r\n\r\n<p>We wish to inform you that your account has been unblocked. Go forth and conquer!</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:12:33'),
(10, 'account_edit', '360 Reference - Account Edited', '<p>Dear {NAME},</p>\r\n\r\n<p>This is to inform you that your account has been edited by the Admin.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-04 03:37:33'),
(11, 'disputed_rating', '360 Reference - Disputed Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>Your rating has been disputed by {SENDER}.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-02 05:28:37'),
(12, 'rating_received', '360 Reference - Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>{SENDER} has given you a 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> Have&nbsp;your ratings have been updated? Is there a new review?</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-11-23 13:29:44'),
(13, 'rating_received', '360 Reference - Rating Notification', '<p>Dear {NAME},</p>\n\n<p>You have received rating from {SENDER}.</p>\n\n<p>Thanks {SITENAME}</p>', '2018-04-17 13:34:12'),
(14, 'recommendation_mail', '360 Reference - Recommendation Notification', '<p>Dear {NAME}, {SENDER} recommends for you to Gift 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> to {RATE}.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-11-23 13:30:17'),
(15, 'short_rating', '360 Reference - Regarding Average Rating', '<p>Dear {NAME},</p>\r\n\r\n<p>Get 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> to get a refresh in average rating.</p>\r\n\r\n<p>Curious? Then..</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-11-23 13:48:43'),
(16, 'daily_digest', '360 Reference - Daily Digest', '<p>Dear {NAME},</p>\r\n\r\n<p>Daily Digest mails.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-19 09:54:43'),
(17, 'invitation_received', '360 Reference - Recommendation Notification', 'Dear {NAME},\r\n\r\n{SENDER} has sent you invitation to connect.\r\n\r\n{CONTENT} \r\n\r\n', '2018-04-19 09:54:43'),
(18, 'keyword_admin', '360 Reference - Review On Hold', '<p>Dear {NAME},</p>\r\n\r\n<p>A new review has been posted which matches with the keyword. Please login the Admin Panel to review.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-20 10:39:08'),
(19, 'connection_invitation', '360 Reference - Invite', '<p>Dear {NAME},</p>\r\n\r\n{SENDER} has sent you invitation to connect {SITENAME} .\r\n\r\n{CONTENT}', '2018-05-19 11:19:07'),
(20, 'connection_notification_sucess', '360 Reference - Invite Sent', '<p>Dear {SENDER},</p>\r\n\r\nConnection request to {NAME} has been send successfully.', '2018-05-19 11:20:13'),
(21, 'connection_request_accepted', '360 Reference - Invitation Accepted', '<p>Dear {NAME},</p>\r\n\r\n{SENDER} has accepted your connection request.', '2018-05-19 11:20:53'),
(22, 'invite_to_rate', '360 Reference | Invitation to Rate', 'Dear {RECEIVER},\r\n{NAME} has invite to rate.\r\n\r\n{CONTENT}', '2018-05-19 11:20:53'),
(23, 'get_to_rate', '360 Reference | Invitation to Rate And Review', '<p>Dear {RECEIVER},</p>\r\n\r\n<p>{NAME} requested for you gift him/ her a 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span></p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-11-23 13:41:12'),
(24, 'new_account_activation', '360 Reference | Account Activation', '<p>Dear {NAME}, Thank you for signing up at 360 Reference, to activate your corresponding account, visit the following link: {ACTIVATIONLINK}. After activating account please login using your email and password 123456. If you are not able to click on the above link, please copy and paste the URL in the browser. Thanks {SITENAME}</p>', '2018-11-23 13:49:10'),
(25, 'account_verification_pending', '360 Reference | Account Verification Pending', 'Dear {NAME},\r\n\r\nPlease verify your mobile number .\r\n\r\nThanks {SITENAME}', '2018-03-21 20:51:23'),
(26, 'job_matching', '360 Reference | Job Matched', 'Dear {NAME},\r\n\r\n{JOB} job is posted matching to your profile.\r\n\r\nThanks {SITENAME}', '2018-03-21 20:51:23'),
(27, 'credibility', '360 Reference | credibility', '<p>Dear {NAME},</p>\r\n\r\n<p>{REQUIRE} more 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> to get a credibility boost. {REQUIRETYPE} ({POINTS} unique 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span>) credibility awaiting you!</p>\r\n\r\n<p>{LINK}&nbsp;</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-11-23 13:49:55'),
(28, 'credit_inform', '360 Reference | credibility', '<p>Dear {NAME}, {SENDER} has gotten {TYPE} credibility! Thanks {SITENAME}</p>', '2018-09-08 13:21:48'),
(29, 'job_reccomendation', '360 Reference - Job Recommendation', '<p>Dear {RECEIVER},</p>\r\n\r\n{NAME} has recommended you to apply for {JOB} job.', '2018-03-21 20:51:23'),
(30, 'signup_with_360', '360 Reference | Sign Up', '<p>Dear {NAME},</p>\r\n\r\n<p>{USER} has created a temporary account for you and requested for you to connect. We welcome you to verify your account and join us in our mission to improve culture in the work place.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 09:52:24'),
(31, 'notice_credibility', '360 Reference | Notice Credibility', '<p>Dear {NAME},</p>\r\n\r\n<p>Your Connection {USER} has just gotten {TYPE} ({NUMBER} unique 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span>) credibility.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-11-23 13:50:39'),
(32, 'expletive_review', '360 Reference | Expletive Review', '<p>Dear {NAME},</p>\r\n\r\n<p>Congratulations, your 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> has been approved by our team.</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-11-23 13:50:54'),
(33, 'expletive_review_declined', '360 Reference | Expletive Review Declined', '<p>Dear {NAME},</p>\r\n\r\n<p>Sorry to inform you that your 360<span style=\"background-color:#ffffff; color:#222222\">&deg;</span> has been declined by our team due to the use of certain words.</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-11-23 13:51:08'),
(34, 'admin_expletive_review', '360 Reference | Expletive Review has posted', '<p>Dear Admin, Expletive review has been posted. Thanks {SITENAME}</p>', '2018-11-23 13:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('General','Admin Functions','Updates','Pricing Plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`, `category`, `added_date`, `status`) VALUES
(1, 'If I give a 360° rating, will the recipient know what I rated him/ her?', '<p>No. While the recipient will know that you have rated him/ her, he/ she&nbsp;will not know exactly what you have rated. He/ she will only know subsequently, an average of ratings when there is a refresh of ratings data.&nbsp;</p>', 'General', '2018-11-23 13:20:06', 'active'),
(2, 'If I give a 360° review, will the recipient know what I reviewed of him/ her?', '<p>Yes. All 360&deg; reviews are tagged to the individuals who have done the 360&deg; review. People will be able to see the reviewer&#39;s name, date and time of 360&deg; review.&nbsp;</p>', 'General', '2018-11-23 13:20:36', 'active'),
(3, 'How can I become an administrator on my Corporate profile?', '<p>You will need to have a email/ letter&nbsp;of authorization from your Company HR or Director. This letter shall clearly state&nbsp;you are authorized as an adminstrator of corporate site and will be given adminstrative powers within the 360 Reference platforms.</p>', 'Admin Functions', '2018-11-23 13:20:49', 'active'),
(5, 'Can I give a 360° to an Individual or Corporate not currently on 360 Reference?', '<p>Yes you can. You will need to provide a mobile phone number or an&nbsp;email address of the individual or corporate so we can inform the individual or corporate. You will then create a temporary profile for the individual or corporate before you give a 360&deg;. This profile can only be verified through 2FA by the relevant Individual or Corporate. Verified accounts have greater credibility.</p>', 'General', '2018-11-23 13:21:18', 'active'),
(6, 'When will the 3 months free subscription campaign last for?', '<p>To be eligible, you will need to get 50 individuals to give you 360&deg; ratings and reviews, before end of September 30th 2018.</p>', 'Updates', '2018-11-23 13:21:41', 'active'),
(7, 'How do I edit the Profile section?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Updates', '2018-11-23 13:21:54', 'inactive'),
(8, 'What are the payment methods that I can use to purchase my subscription or credits (for corporates)?', '<p>We accept most credit cards and online payment can be made through our platform.</p>', 'Pricing Plan', '2018-11-23 13:22:07', 'active'),
(18, 'How do I get 3 months of Premium Individual account free ?', '<p>As long as you get 50 individuals to give you 360&deg; ratings or reviews, you will get 3 months of Premium Individual account free. This 3 months period will start when you achieve your 50th 360&deg;.</p>', 'Pricing Plan', '2018-11-23 13:22:27', 'active'),
(19, 'What is the difference in benefits between Premium vs Free Individual account?', '<p>Premium Individual account&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Initiate</strong> and reply chats</li>\r\n	<li>Access unlimited individual and corporate profiles in <strong>detail&nbsp;</strong></li>\r\n	<li>Know the <strong>full list of visitors to your profile in the last 90 days</strong></li>\r\n	<li><strong>Customise</strong>&nbsp;(subject to availability) your <strong>URL profile page</strong></li>\r\n	<li>Manage individual account</li>\r\n	<li>Apply for jobs</li>\r\n	<li>Recommend a friend for a job</li>\r\n</ol>\r\n\r\n<p>Free Individual account&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Reply chats&nbsp;</li>\r\n	<li>Access unlimited individual and corporate profiles in overview&nbsp;</li>\r\n	<li>Know the last five visitors to your profile</li>\r\n	<li>Get your assigned&nbsp;URL profile page&nbsp;</li>\r\n	<li>Manage individual account</li>\r\n	<li>Apply for jobs</li>\r\n	<li>Recommend a friend for a job</li>\r\n</ol>', 'Pricing Plan', '2018-11-23 13:23:09', 'active'),
(20, 'What is the difference in benefits between Premium vs Free Corporate account?', '<p>Premium Corporate&nbsp;account&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Initiate</strong> and reply chats</li>\r\n	<li>Access unlimited individual and corporate profiles in <strong>detail </strong>(category and attribute scores)&nbsp;</li>\r\n	<li>Know the <strong>full list of visitors </strong>to&nbsp;your corporate profile in the <strong>last 90 days</strong></li>\r\n	<li><strong>Customise</strong>&nbsp;(subject to availability) your <strong>corporate&nbsp;URL profile page</strong></li>\r\n	<li>Manage corporate account</li>\r\n	<li>Post jobs available (200 credits/ job posting)</li>\r\n	<li>Request for job match (1000&nbsp;credits/ job matching)based on what employee want and what employer wants&nbsp;</li>\r\n	<li>Analytics of visitors&nbsp;</li>\r\n</ol>\r\n\r\n<p>Free Corporate account&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Reply chats&nbsp;</li>\r\n	<li>Access unlimited individual and corporate profiles in overview&nbsp;</li>\r\n	<li>Know the last five visitors to your profile</li>\r\n	<li>Get your assigned&nbsp;URL profile page&nbsp;</li>\r\n	<li>Manage individual account</li>\r\n	<li>Apply for jobs</li>\r\n	<li>Recommend a friend for a job</li>\r\n</ol>\r\n\r\n<p>Manage corporate accountInitiate and reply chatView 400 profilesTailor unique URL profile page name&nbsp;(based on availability)Post jobs at $500/ job posting&nbsp;View number of visitors of corporate account in the last week and monthView full list of people who visited in the last 90 days.View last 5 job postingsAnalytics of visitorsView by geographyView by industryView work experienceView by strengthsComprehensive analytics of staff (that are in the company at this time)View by geographyView by industryView work experienceView by strengthsView aggregated overall, boss, peer, subordinate, self, customer ratingsView individual overall, boss, peer, subordinate, self, customer ratingView other corporate&#39;s overall, boss, peer, subordinate, customer ratingShortlist candidateView job applicantsGet 1 recommended (based on criteria set) candidate per $1000</p>', 'Pricing Plan', '2018-11-23 13:23:26', 'active'),
(21, 'How are overall ratings scores being tabulated?', '<p>Overall ratings score is made up of boss, peer, subordinate and customer ratings.</p>', 'General', '2018-11-23 13:23:38', 'active'),
(22, 'When is there a refresh of 360° ratings?', '<p>Overall ratings are ONLY REFRESHED when there is an refresh to the below category ratings.&nbsp;</p>\r\n\r\n<p>Boss ratings are refreshed when 3 more bosses have rated you.&nbsp;</p>\r\n\r\n<p>Peer ratings are refreshed when 5 more peers&nbsp;have rated you.&nbsp;</p>\r\n\r\n<p>Subordinate (if applicable) ratings are refreshed when 5 more subordinates have rated you.</p>\r\n\r\n<p>Customer (if applicable) ratings are refreshed when 5 more customers have rated you.</p>', 'General', '2018-11-23 13:23:59', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `get360`
--

CREATE TABLE `get360` (
  `id` int(10) UNSIGNED NOT NULL,
  `invited_by` int(10) UNSIGNED NOT NULL,
  `invited_to` int(10) UNSIGNED DEFAULT NULL,
  `invited_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invited_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `get360`
--

INSERT INTO `get360` (`id`, `invited_by`, `invited_to`, `invited_email`, `invited_number`, `created_at`, `updated_at`) VALUES
(1, 94, 93, NULL, NULL, '2018-07-28 21:09:36', NULL),
(2, 94, 48, NULL, NULL, '2018-07-28 21:09:39', NULL),
(3, 94, NULL, 'raveena+email@singsys.com', NULL, '2018-07-28 21:12:13', NULL),
(4, 94, NULL, NULL, '919956771380', '2018-07-28 21:12:35', NULL),
(18, 108, 96, NULL, NULL, '2018-08-02 16:05:25', NULL),
(19, 108, 105, NULL, NULL, '2018-08-02 17:32:14', NULL),
(20, 57, 94, NULL, NULL, '2018-08-02 18:05:59', NULL),
(21, 57, NULL, 'raveena@singsys.com', NULL, '2018-08-02 18:06:14', NULL),
(23, 108, 96, NULL, NULL, '2018-08-02 18:49:59', NULL),
(27, 93, 57, NULL, NULL, '2018-08-10 21:21:31', NULL),
(28, 93, 96, NULL, NULL, '2018-08-10 21:21:35', NULL),
(30, 93, NULL, 'lcc@andgro.com', NULL, '2018-08-31 19:00:35', NULL),
(31, 48, 126, NULL, NULL, '2018-09-07 14:54:58', NULL),
(32, 94, NULL, 'raveena@singsys.com', NULL, '2018-09-07 17:17:23', NULL),
(33, 93, 126, NULL, NULL, '2018-09-26 21:21:27', NULL),
(34, 93, 126, NULL, NULL, '2018-09-26 21:24:29', NULL),
(35, 93, 113, NULL, NULL, '2018-09-27 20:30:24', NULL),
(36, 57, 94, NULL, NULL, '2018-10-03 14:39:48', NULL),
(37, 57, 88, NULL, NULL, '2018-10-03 14:39:52', NULL),
(38, 57, 147, NULL, NULL, '2018-10-03 14:39:57', NULL),
(39, 57, 96, NULL, NULL, '2018-10-03 14:40:01', NULL),
(40, 57, 54, NULL, NULL, '2018-10-03 14:40:06', NULL),
(41, 147, 57, NULL, NULL, '2018-10-03 16:35:46', NULL),
(42, 147, 148, NULL, NULL, '2018-10-03 16:35:50', NULL),
(43, 147, 74, NULL, NULL, '2018-10-03 18:35:03', NULL),
(44, 147, 74, NULL, NULL, '2018-10-03 18:56:19', NULL),
(45, 148, 90, NULL, NULL, '2018-10-03 20:05:22', NULL),
(46, 148, 90, NULL, NULL, '2018-10-03 20:06:15', NULL),
(47, 148, 96, NULL, NULL, '2018-10-03 20:06:17', NULL),
(48, 148, 90, NULL, NULL, '2018-10-03 20:06:58', NULL),
(49, 148, 96, NULL, NULL, '2018-10-03 20:07:00', NULL),
(50, 148, 147, NULL, NULL, '2018-10-03 20:07:02', NULL),
(51, 147, 148, NULL, NULL, '2018-10-03 20:08:49', NULL),
(52, 74, NULL, NULL, '9557415248', '2018-10-04 21:43:58', NULL),
(53, 93, 113, NULL, NULL, '2018-10-05 15:31:25', NULL),
(54, 147, NULL, NULL, '+91-9264964542', '2018-10-08 13:32:49', NULL),
(55, 147, NULL, NULL, '+91-9264964542', '2018-10-08 13:33:18', NULL),
(57, 147, NULL, NULL, '+91-9264964542', '2018-10-08 13:34:17', NULL),
(59, 54, 75, NULL, NULL, '2018-10-08 16:48:12', NULL),
(60, 160, 75, NULL, NULL, '2018-10-08 16:50:10', NULL),
(61, 54, 75, NULL, NULL, '2018-10-08 17:14:52', NULL),
(64, 171, 79, NULL, NULL, '2018-11-21 13:50:54', NULL),
(65, 171, 79, NULL, NULL, '2018-11-21 17:37:06', NULL),
(66, 171, 79, NULL, NULL, '2018-11-21 17:48:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_page_slider`
--

CREATE TABLE `home_page_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_slider`
--

INSERT INTO `home_page_slider` (`id`, `title`, `description`, `banner_image`, `added_date`) VALUES
(1, 'Build a positive culture at workplaces!', 'Join the revolution, give and get more 360&deg; to add transparency and accountability at the workplace!', 'crop_20180901134611.png', '2018-09-01 13:46:14'),
(2, 'Get 360&deg; ratings or reviews from your co-workers or customers!', 'With different perspectives of yourself at work, you will be able to understand yourself better and improve accordingly!', 'crop_20180901134637.png', '2018-09-01 13:46:46'),
(3, 'Give 360&deg; ratings or reviews to corporates, co-workers or service providers!', 'Help them to understand areas of strength and weaknesses so they can improve!', 'crop_20180901134713.png', '2018-09-01 13:47:16'),
(8, 'Make smart choices!', 'You can’t choose your family, but you can choose where you work and who you want to work with! Choose wisely with 360&deg;', 'crop_20180901134737.png', '2018-09-01 13:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Image','Video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('INDIVIDUAL','COMPANY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `title`, `description`, `image`, `type`, `category`, `added_date`) VALUES
(1, 'Get registered', 'when you simply fill in your details!', 'crop_20180901124925.png', 'Image', 'INDIVIDUAL', '2018-09-01 12:49:31'),
(2, 'Complete and verify your profile', 'with 2FA, work experiences, strengths and education', 'crop_20180901125028.png', 'Image', 'INDIVIDUAL', '2018-09-01 12:50:33'),
(3, 'Get 360° ratings or reviews from your co-workers or customers', 'so you know what people say about you and can decide areas of strength or weaknesses to work on', 'crop_20180901125103.png', 'Image', 'INDIVIDUAL', '2018-11-23 13:25:30'),
(4, 'Give 360° ratings or reviews to corporates, co-workers or service providers', 'and help others get a different perspective of themselves so they can improve!', 'crop_20180901125201.png', 'Image', 'INDIVIDUAL', '2018-11-23 13:25:44'),
(5, 'Choose the company you work in and people that you work with', 'by matching 1) what you want in a corporate and what the corporate can offer 2) what you want in a potential boss with what your hiring manager is strong in!', 'crop_20180901125241.png', 'Image', 'INDIVIDUAL', '2018-11-23 13:26:02'),
(6, 'Get registered', 'when you simply fill in your corporate details!', 'crop_20180901125418.png', 'Image', 'COMPANY', '2018-11-23 13:26:13'),
(7, 'Complete and verify your corporate profile', 'with 2FA and a letter of authorization from HR or a company director', 'crop_20180901125444.png', 'Image', 'COMPANY', '2018-09-01 12:54:48'),
(8, 'Get 360° ratings or reviews from your employees or customers', 'so you know what people say about you and can decide areas of strength or weaknesses to work on', 'crop_20180901125515.png', 'Image', 'COMPANY', '2018-11-23 13:26:43'),
(9, 'Connect and chat with important people', 'who might be potential employees or co-workers of potential employees who might give you extra insights!', 'crop_20180901125552.png', 'Image', 'COMPANY', '2018-09-01 12:55:55'),
(10, 'Post jobs', 'and get interested candidates to apply.', 'crop_20180901125619.png', 'Image', 'COMPANY', '2018-09-01 12:56:29'),
(11, 'Connect and chat with important people', 'who might give you extra insights on a potential company or job or co-worker!', 'crop_20180901125322.png', 'Image', 'INDIVIDUAL', '2018-09-01 12:53:25'),
(18, 'Job matching', 'When corporate member posts job using Job post and match, then credits for Job post and notification (will send to x best matches) both will be deducted. This will be based on the thread above with point', 'crop_20180806142006.png', 'Image', 'COMPANY', '2018-08-13 17:28:37'),
(19, 'Analyse areas of strength and weakness within your company', '------', 'crop_20180901125723.png', 'Image', 'COMPANY', '2018-09-01 12:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `individual_self_rating`
--

CREATE TABLE `individual_self_rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `individual_self_rating`
--

INSERT INTO `individual_self_rating` (`id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(7, 57, '5.00', '2018-04-24 16:55:25', '2018-05-23 18:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `corporate_id` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_apply` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `matched_profile` int(11) NOT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `corporate_id`, `position`, `requirements`, `responsibilities`, `description`, `job_location`, `why_apply`, `job_type`, `matched_profile`, `status`, `created_at`, `updated_at`) VALUES
(1, 94, 'Software Developer (Java)', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '198', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '1', 2, 'publish', '2018-08-31 01:37:01', NULL),
(2, 94, 'Senior Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '198', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0', 0, 'publish', '2018-10-09 19:59:18', NULL),
(3, 164, 'Accountant', 'CA Qualified', 'Manage Office work including client handling.', 'Manage Office work including client handling.', '100', 'TO higher fresh talent.', '1', 5, 'draft', '2018-11-01 18:39:25', NULL),
(4, 164, 'Accountant', 'Accountant', 'Accountant - RESPONSIBILITY', 'Accountant -JOB DESCRIPTION', '100', 'Accountant - WHY SHOULD YOU APPLY?', '0', 0, 'draft', '2018-11-01 18:44:34', NULL),
(5, 164, 'Accountant', 'Accountant', 'Accountant', 'Accountant', '100', 'Accountant', '1', 5, 'publish', '2018-11-01 18:53:14', NULL),
(6, 50, 'HTML Developer', '3', 'qwerty', 'wer', '15', 'sadsad', '0', 0, 'publish', '2018-11-02 14:45:14', NULL),
(17, 168, 'postion first', 'asdcf', 'sdcfv', 'scdv', '1', 'xscdfv', '0', 0, 'publish', '2018-11-16 15:15:44', '2018-11-16 15:16:00'),
(18, 168, 'postion first', 'scdvf', 'sdcv', 'sdcf', '18', 'sxcdv', '0', 0, 'publish', '2018-11-16 15:16:28', NULL),
(21, 171, 'qwerty', 'all', 'asdf', 'nothing', '100', 'qwertyqwerty', '1', 5, 'publish', '2018-11-22 11:45:06', NULL),
(22, 171, 'qwerty', 'asdfg', 'asdfg', 'asdfgh', '100', 'qwrtywert', '0', 5, 'draft', '2018-11-22 11:58:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_applied`
--

CREATE TABLE `jobs_applied` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_applied`
--

INSERT INTO `jobs_applied` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 126, '2018-09-03 17:21:15', NULL),
(2, 1, 93, '2018-09-03 17:21:29', NULL),
(3, 1, 57, '2018-10-03 15:10:47', NULL),
(4, 1, 57, '2018-10-03 15:11:14', NULL),
(5, 1, 57, '2018-10-03 15:11:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_viewed`
--

CREATE TABLE `jobs_viewed` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_attributes`
--

CREATE TABLE `job_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_attributes`
--

INSERT INTO `job_attributes` (`id`, `job_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 1, 111, '2018-08-31 01:37:01', NULL),
(2, 1, 102, '2018-08-31 01:37:01', NULL),
(3, 2, 111, '2018-10-09 19:59:18', NULL),
(4, 2, 102, '2018-10-09 19:59:18', NULL),
(5, 2, 103, '2018-10-09 19:59:18', NULL),
(6, 3, 124, '2018-11-01 18:39:25', NULL),
(7, 4, 105, '2018-11-01 18:44:34', NULL),
(8, 5, 102, '2018-11-01 18:53:14', NULL),
(9, 6, 111, '2018-11-02 14:45:14', NULL),
(10, 6, 102, '2018-11-02 14:45:14', NULL),
(36, 17, 111, '2018-11-16 15:16:00', NULL),
(37, 18, 104, '2018-11-16 15:16:28', NULL),
(41, 21, 104, '2018-11-22 11:45:06', NULL),
(42, 22, 104, '2018-11-22 11:58:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_candidate_log`
--

CREATE TABLE `job_candidate_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_candidate_log`
--

INSERT INTO `job_candidate_log` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 94, 1, '2018-09-03 17:21:48', '2018-09-03 17:21:48'),
(2, 94, 1, '2018-09-03 17:22:20', '2018-09-03 17:22:20'),
(3, 94, 1, '2018-09-03 17:22:26', '2018-09-03 17:22:26'),
(4, 94, 1, '2018-09-03 17:22:43', '2018-09-03 17:22:43'),
(5, 94, 1, '2018-09-03 17:23:15', '2018-09-03 17:23:15'),
(6, 94, 1, '2018-09-03 17:24:20', '2018-09-03 17:24:20'),
(7, 94, 1, '2018-09-03 17:25:21', '2018-09-03 17:25:21'),
(8, 94, 1, '2018-09-06 14:12:51', '2018-09-06 14:12:51'),
(9, 94, 1, '2018-09-07 15:16:29', '2018-09-07 15:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `job_credits`
--

CREATE TABLE `job_credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `credit_amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_credits`
--

INSERT INTO `job_credits` (`id`, `user_id`, `credit_amount`, `created_at`, `updated_at`) VALUES
(1, 94, 75, NULL, NULL),
(4, 50, 494, NULL, NULL),
(5, 168, 0, NULL, NULL),
(6, 169, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_credit_log`
--

CREATE TABLE `job_credit_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `credit_amount` int(10) UNSIGNED NOT NULL,
  `type` enum('job_posted','applied_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'job_posted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_credit_log`
--

INSERT INTO `job_credit_log` (`id`, `user_id`, `job_id`, `credit_amount`, `type`, `created_at`, `updated_at`) VALUES
(1, 94, 1, 10, 'job_posted', '2018-08-31 01:37:01', '2018-08-31 01:37:01'),
(2, 94, 1, 5, 'applied_list', '2018-09-03 17:21:48', '2018-09-03 17:21:48'),
(3, 94, 2, 10, 'job_posted', '2018-10-09 19:59:18', '2018-10-09 19:59:18'),
(4, 50, 6, 10, 'job_posted', '2018-11-02 14:45:14', '2018-11-02 14:45:14'),
(5, 149, 7, 10, 'job_posted', '2018-11-13 18:59:44', '2018-11-13 18:59:44'),
(6, 168, 8, 10, 'job_posted', '2018-11-16 14:23:48', '2018-11-16 14:23:48'),
(7, 168, 9, 10, 'job_posted', '2018-11-16 14:24:58', '2018-11-16 14:24:58'),
(8, 168, 9, 10, 'job_posted', '2018-11-16 14:27:53', '2018-11-16 14:27:53'),
(9, 167, 10, 10, 'job_posted', '2018-11-16 14:43:21', '2018-11-16 14:43:21'),
(10, 168, 11, 10, 'job_posted', '2018-11-16 14:56:15', '2018-11-16 14:56:15'),
(11, 168, 12, 10, 'job_posted', '2018-11-16 14:56:49', '2018-11-16 14:56:49'),
(12, 168, 13, 10, 'job_posted', '2018-11-16 15:00:47', '2018-11-16 15:00:47'),
(13, 168, 15, 10, 'job_posted', '2018-11-16 15:13:24', '2018-11-16 15:13:24'),
(14, 168, 16, 10, 'job_posted', '2018-11-16 15:14:01', '2018-11-16 15:14:01'),
(15, 168, 17, 10, 'job_posted', '2018-11-16 15:16:00', '2018-11-16 15:16:00'),
(16, 168, 18, 10, 'job_posted', '2018-11-16 15:16:28', '2018-11-16 15:16:28'),
(17, 169, 19, 20, '', '2018-11-19 15:06:00', '2018-11-19 15:06:00'),
(18, 169, 20, 20, '', '2018-11-19 15:06:36', '2018-11-19 15:06:36'),
(19, 172, 21, 10, 'job_posted', '2018-11-22 11:45:06', '2018-11-22 11:45:06'),
(20, 172, 21, 20, '', '2018-11-22 11:45:06', '2018-11-22 11:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `job_log`
--

CREATE TABLE `job_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `log` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_log`
--

INSERT INTO `job_log` (`id`, `user_id`, `job_id`, `log`, `created_at`, `updated_at`) VALUES
(1, 93, 1, 1, '2018-08-31 01:42:56', '2018-08-31 01:42:56'),
(2, 94, 1, 1, '2018-08-31 10:44:48', '2018-08-31 10:44:48'),
(3, 126, 1, 1, '2018-09-03 17:21:09', '2018-09-03 17:21:09'),
(4, 93, 1, 1, '2018-09-03 17:21:24', '2018-09-03 17:21:24'),
(5, 57, 1, 1, '2018-10-03 15:07:19', '2018-10-03 15:07:19'),
(6, 57, 1, 1, '2018-10-03 15:07:20', '2018-10-03 15:07:20'),
(7, 57, 1, 1, '2018-10-03 15:09:01', '2018-10-03 15:09:01'),
(8, 57, 1, 1, '2018-10-03 15:09:05', '2018-10-03 15:09:05'),
(9, 57, 1, 1, '2018-10-03 15:09:07', '2018-10-03 15:09:07'),
(10, 57, 1, 1, '2018-10-03 15:09:32', '2018-10-03 15:09:32'),
(11, 57, 1, 1, '2018-10-03 15:10:44', '2018-10-03 15:10:44'),
(12, 57, 1, 1, '2018-10-03 15:12:10', '2018-10-03 15:12:10'),
(13, 57, 1, 1, '2018-10-03 15:12:24', '2018-10-03 15:12:24'),
(14, 57, 1, 1, '2018-10-03 15:12:28', '2018-10-03 15:12:28'),
(15, 57, 1, 1, '2018-10-03 15:12:57', '2018-10-03 15:12:57'),
(16, 57, 1, 1, '2018-10-03 15:13:28', '2018-10-03 15:13:28'),
(18, 50, 6, 1, '2018-11-14 17:23:53', '2018-11-14 17:23:53'),
(22, 168, 18, 1, '2018-11-16 15:16:46', '2018-11-16 15:16:46'),
(23, 168, 17, 1, '2018-11-16 15:16:58', '2018-11-16 15:16:58'),
(24, 168, 18, 1, '2018-11-16 15:17:09', '2018-11-16 15:17:09'),
(25, 164, 5, 1, '2018-11-26 18:24:21', '2018-11-26 18:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `job_matching_log`
--

CREATE TABLE `job_matching_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','send') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_matching_log`
--

INSERT INTO `job_matching_log` (`id`, `user_id`, `job_id`, `profile_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 94, 1, 93, 'pending', '2018-08-31 01:37:01', '2018-08-31 01:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `job_recommendation`
--

CREATE TABLE `job_recommendation` (
  `id` int(10) UNSIGNED NOT NULL,
  `corporae_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_management`
--

CREATE TABLE `keyword_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyword_management`
--

INSERT INTO `keyword_management` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Fuck', '2018-04-21 10:40:37', '2018-08-15 11:59:59'),
(3, 'Bastard', '2018-04-23 05:27:09', '2018-08-15 12:00:07'),
(4, 'Cunt', '2018-04-23 05:27:54', '2018-08-15 12:00:19'),
(5, 'Bitch', '2018-04-23 05:29:03', '2018-08-15 12:01:44'),
(8, 'Slut', '2018-05-21 02:11:55', '2018-08-15 12:03:52'),
(11, 'ignore', '2018-09-06 05:36:45', NULL),
(12, 'Bloody Hell', '2018-10-05 03:41:20', '2018-10-05 15:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_03_05_082847_create_settings_table', 1),
(3, '2018_03_05_084523_create_faq_table', 1),
(4, '2018_03_05_085527_add_status_to_faq', 1),
(5, '2018_03_05_120008_create_banner_detail_table', 1),
(6, '2018_03_06_072037_create_static_contents_table', 1),
(7, '2018_03_06_094613_create_contact_us_table', 1),
(8, '2018_03_06_124221_create_email_template_table', 1),
(9, '2018_03_07_041153_create_roles_table', 1),
(10, '2018_03_07_052037_create_countries_table', 1),
(11, '2018_03_07_052219_update_user_table_column', 1),
(12, '2018_03_07_052629_create_user_verification_table', 1),
(13, '2018_03_07_054743_create_user_strengths_table', 1),
(14, '2018_03_07_055328_create_user_industries_table', 1),
(15, '2018_03_07_055959_create_services_offered_table', 1),
(16, '2018_03_07_060222_create_company_profile_table', 1),
(17, '2018_03_07_073550_create_password_reset_table', 1),
(18, '2018_03_12_041418_update_faq_table_column', 1),
(19, '2018_03_12_045847_create_about_us_table', 1),
(20, '2018_03_12_055520_create_about_us_banner_table', 1),
(21, '2018_03_12_070219_update_banner_detail_table_column', 1),
(22, '2018_03_12_071858_create_home_page_slider_table', 1),
(23, '2018_03_12_085825_create_how_it_works_table', 1),
(24, '2018_03_12_103408_create_contact_personnel_table', 1),
(25, '2018_03_13_035702_create_newsletter_table', 1),
(26, '2018_03_13_103716_create_user_account_types', 2),
(27, '2018_03_13_105059_add_account_type_to_users_table', 2),
(28, '2018_03_15_052532_add_category_to_user_account_types_table_column', 3),
(29, '2018_03_15_073506_add_calling_code_to_countries_table_column', 3),
(30, '2018_03_16_080429_create_user_education_table', 4),
(31, '2018_03_16_085537_drop_company_data_from_users_table', 4),
(32, '2018_03_16_090051_create_user_work_experience_table', 4),
(33, '2018_03_16_110836_add_company_naame_to_users_table', 4),
(34, '2018_03_21_040106_create_pending_same_company_notifications_table', 5),
(35, '2018_03_23_040411_create_operating_hours_table', 6),
(36, '2018_03_23_053723_add_charge_to_user_account_types_table', 6),
(37, '2018_03_23_122758_create_transaction_details_table', 7),
(38, '2018_03_23_134628_create_subscriptions_table', 7),
(39, '2018_03_24_035528_add_votes_to_users_table', 7),
(40, '2018_03_24_072455_alter_company_profile', 7),
(41, '2018_03_24_090328_add_contact_number_to_contact_us_table', 7),
(42, '2018_03_24_094540_alter_operating_hours', 7),
(43, '2018_03_24_111028_alter_contact_us_table', 7),
(44, '2018_03_24_112615_alter_company_profile_add_images_column', 7),
(45, '2018_03_26_051426_create_contact_us_reply_table', 8),
(46, '2018_03_28_062459_alter_operating_hours_day', 9),
(47, '2018_03_29_094740_add_browse_profile_limit', 10),
(48, '2018_03_30_044755_create_notification_template_table', 10),
(49, '2018_03_30_045558_create_notification_settings_table', 10),
(50, '2018_03_30_050146_create_notifications_table', 10),
(51, '2018_03_30_051833_create_rating_questions_table', 10),
(52, '2018_04_02_035241_create_keyword_management_table', 10),
(53, '2018_04_02_061405_add_status_to_users', 10),
(54, '2018_04_03_060522_add_industry_to_user_work_experience', 10),
(55, '2018_04_03_083425_add_certification_to_user_education', 10),
(56, '2018_04_04_043805_add_status_to_country', 11),
(57, '2018_04_05_051216_create_rating_as_user', 11),
(58, '2018_04_05_095821_update_rating_questions_taable', 11),
(59, '2018_04_06_095802_update_banner_detail_table', 11),
(60, '2018_04_07_041436_create_individual_self_rating_table', 12),
(61, '2018_04_07_044202_create_ratings_and_reviews_table', 12),
(62, '2018_04_07_045021_create_ratings_table', 12),
(63, '2018_04_07_050442_create_reviews_table', 12),
(64, '2018_04_09_045544_update_user_account_types_table', 12),
(65, '2018_04_14_053333_update_notification_table', 13),
(77, '2018_04_14_053907_update_ratings_and_reviews_table', 14),
(78, '2018_04_14_074224_update_education_table', 15),
(79, '2018_04_16_043956_create_user_profile_logs', 15),
(80, '2018_04_16_083530_update_rating_usertype_table', 15),
(81, '2018_04_16_124504_create_invite_connect_table', 15),
(82, '2018_04_17_041944_create_company_admin_table', 15),
(83, '2018_04_18_035547_add_parameter_to_rating_questions', 15),
(84, '2018_04_18_085133_create_reviews_on_hold_table', 15),
(85, '2018_04_19_054016_create_profile_views', 15),
(86, '2018_04_19_060717_add_month_year_to_profile_views_table', 15),
(87, '2018_04_19_061024_update_notification_table', 16),
(88, '2018_04_26_115625_add_invite_to_banner_detail_table', 17),
(89, '2018_05_04_150156_alter_ratings_question_table', 17),
(90, '2018_05_07_121155_alter_how_it_works', 18),
(91, '2018_05_07_144539_alter_company_profile', 18),
(92, '2018_05_09_112845_create_chat_group_table', 19),
(93, '2018_05_09_113624_create_chat_group_user_table', 19),
(94, '2018_05_09_132122_create_chat_table', 19),
(95, '2018_05_09_185232_create_chat_status_table', 19),
(96, '2018_05_11_132819_update_user_table', 19),
(97, '2018_05_11_195159_update_chat_table', 19),
(98, '2018_05_15_113224_update_chaat_table', 20),
(99, '2018_05_24_125653_add_job_limit_to_user_account_types', 21),
(100, '2018_05_24_172801_add_profile_id_to_profile_views_table', 21),
(101, '2018_05_24_182402_create_jobs_table', 21),
(102, '2018_05_24_183752_create_applied_jobs_table', 21),
(103, '2018_05_24_190820_create_jobs_viewed_table', 21),
(104, '2018_05_25_160046_add_slider_detail_to_ratings_and_reviews', 21),
(105, '2018_05_29_183310_add_url_to_users_table', 22),
(106, '2018_06_01_171253_add_job_banner_to_banner_detail', 22),
(107, '2018_06_02_140502_alter_job_table_remove_attribute', 22),
(108, '2018_06_02_140535_create_job_attributes_table', 22),
(109, '2018_06_08_200013_alter_ratings_and_reviews', 23),
(110, '2018_06_08_204445_create_shortlisted_profiles_table', 23),
(111, '2018_06_08_210221_create_job_log_table', 23),
(112, '2018_06_09_122039_update_type_in_notifications_table', 23),
(113, '2018_06_09_174050_add_job_reccomentdation_to_notifications', 23),
(114, '2018_06_09_214316_create_job_recommendation_table', 23),
(115, '2018_06_11_212513_create_profile_analytics_table', 24),
(116, '2018_06_12_181324_create_users_attributes_table', 25),
(117, '2018_06_12_195113_add_user_attribute_notification_to_natifications_table', 25),
(118, '2018_06_13_212912_create_search_log_table', 26),
(119, '2018_06_14_175137_create_job_reccomendation_unregistered', 26),
(120, '2018_06_15_134429_create_unregisterd_invite_table', 26),
(121, '2018_06_15_205708_create_staff_priority_table', 26),
(122, '2018_06_16_154535_change_type_rate_review_table', 26),
(123, '2018_06_16_181032_create_rating_invite_table', 26),
(124, '2018_06_18_155421_add_invite_to_rate_to_notifications', 26),
(125, '2018_06_18_172403_add_connection_to_notifications', 26),
(126, '2018_07_11_133252_create_get_360_table', 27),
(127, '2018_07_11_143132_add_get_to_rate_to_notification_table', 27),
(128, '2018_07_11_213013_create_newly_added_user', 27),
(129, '2018_07_14_131104_add_signup_notification_to_notifications_table', 27),
(130, '2018_07_14_171315_add_notification_table', 27),
(131, '2018_07_17_132702_create_job_credit_table', 27),
(132, '2018_07_17_132807_create_job_credit_log_table', 27),
(133, '2018_07_17_164428_create_credit_transaction_detail_table', 27),
(134, '2018_07_18_174134_create_job_candidate_log', 27),
(135, '2018_07_20_174129_create_rating_threshold_table', 27),
(136, '2018_07_23_135746_create_rating_credit_log_table', 27),
(137, '2018_07_25_133001_create_job_matching_log', 27),
(138, '2018_07_26_171906_add_options_to_notifications_table', 27),
(139, '2018_07_26_210123_alter_notification_table', 27),
(140, '2018_07_27_125931_add_type_to_job_credit_log_table', 27),
(141, '2018_07_27_184524_alter_notification_table_add_job_profile_match_coloum', 28),
(142, '2018_07_30_204939_alter_job_table_add_status_coloumn', 29),
(143, '2018_08_01_193120_alter_table_credit_transaction_detail_add_credit_coloum', 30),
(144, '2018_08_01_212928_add_creditibilty_to_users_table', 30),
(145, '2018_04_14_053333_update_notification_reference_table', 31),
(146, '2018_05_07_144539_alter_company_profile_youtube', 31),
(147, '2018_08_02_210854_alter_rating_review_add_display', 31),
(148, '2018_08_04_201928_allow_indexing_to_the_column', 31),
(149, '2018_08_07_154111_create_strength_table', 31),
(150, '2018_08_09_165836_create_job_matching_fields', 32),
(151, '2018_08_22_174430_add_customer_id_to_transaction_detail', 33),
(152, '2018_08_22_180505_alter_customer_id_to_user_detail', 34),
(153, '2018_09_05_153120_add_payment_trial_status_to_users', 34),
(154, '2018_09_25_205821_add_admin_verification_to_users_table', 35);

-- --------------------------------------------------------

--
-- Table structure for table `newly_added_user`
--

CREATE TABLE `newly_added_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `new_user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('approved','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newly_added_user`
--

INSERT INTO `newly_added_user` (`id`, `user_id`, `new_user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 93, 95, 'approved', '2018-07-28 21:15:24', NULL),
(5, 74, 105, 'pending', '2018-07-31 20:46:29', NULL),
(9, 108, 115, 'approved', '2018-08-02 18:26:15', NULL),
(10, 108, 117, 'approved', '2018-08-02 19:01:38', NULL),
(11, 57, 118, 'pending', '2018-08-02 19:10:40', NULL),
(12, 57, 119, 'pending', '2018-08-02 19:12:11', NULL),
(15, 93, 136, 'approved', '2018-09-03 12:56:37', NULL),
(16, 93, 142, 'pending', '2018-09-14 16:25:47', NULL),
(17, 93, 143, 'pending', '2018-09-14 18:25:35', NULL),
(18, 93, 145, 'approved', '2018-09-26 00:47:38', NULL),
(20, 147, 152, 'pending', '2018-10-03 21:51:32', NULL),
(21, 147, 157, 'approved', '2018-10-05 15:58:33', NULL),
(22, 140, 159, 'pending', '2018-10-08 00:30:54', NULL),
(23, 175, 179, 'approved', '2018-11-26 15:06:20', NULL),
(24, 162, 181, 'pending', '2018-11-26 17:56:31', NULL),
(25, 164, 186, 'pending', '2018-11-29 22:03:32', NULL),
(26, 182, 187, 'pending', '2018-11-30 18:32:12', NULL),
(27, 182, 188, 'pending', '2018-11-30 18:34:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `title`, `description`, `image`, `added_date`) VALUES
(1, 'Latest News', 'Read company reviews and ratings of over 400,000 companies worldwide. Get to know the inside news. Hear the stories directly from their employees.', 'crop_20180908124743.png', '2018-09-08 12:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('rating_received','unpaid_profile_view_company','job_profile_match','invite_connection_to_rate','experience_match','dispute_rating','invitation_received','short_rating','recommendation_notification','job_viewing_notification','job_reccomendation','user_attribute_notification','invite_to_rate','connection_notification','connection_request_accepted','get_to_rate','signup_notification','expletive_review','credibility','paid_profile_view','unpaid_profile_view','profile_count','individual_profile','my_credit_notification') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_status` enum('pending','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `receiver_id` int(10) UNSIGNED NOT NULL,
  `read_status` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_sent` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `reference_id`, `message`, `type`, `type_status`, `sender_id`, `receiver_id`, `read_status`, `email_sent`, `created_at`, `updated_at`) VALUES
(7, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 121, 121, 'no', 'yes', '2018-08-09 14:05:59', NULL),
(8, 42, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 121, 57, 'no', 'yes', '2018-08-09 14:07:52', NULL),
(9, 45, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 121, 63, 'no', 'yes', '2018-08-09 14:07:52', NULL),
(10, 49, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 121, 77, 'no', 'yes', '2018-08-09 14:07:52', NULL),
(11, 52, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 121, 81, 'no', 'yes', '2018-08-09 14:07:52', NULL),
(13, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 121, 121, 'no', 'yes', '2018-08-09 14:09:39', NULL),
(14, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 121, 121, 'no', 'yes', '2018-08-09 14:10:32', NULL),
(15, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 121, 121, 'no', 'yes', '2018-08-09 14:11:27', NULL),
(16, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-08-09 14:22:48', NULL),
(20, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-09 14:34:21', NULL),
(21, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-09 14:35:43', NULL),
(22, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-09 14:36:50', NULL),
(23, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-09 14:51:59', NULL),
(24, 185, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 96, 'no', 'yes', '2018-08-09 15:11:56', NULL),
(25, 186, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 121, 'no', 'yes', '2018-08-09 15:12:02', NULL),
(26, 187, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 57, 'no', 'yes', '2018-08-09 15:12:07', NULL),
(28, 189, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 54, 'no', 'yes', '2018-08-09 15:14:06', NULL),
(29, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 48, 48, 'no', 'yes', '2018-08-09 15:21:35', NULL),
(30, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-08-09 15:21:45', NULL),
(35, 190, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 75, 104, 'no', 'yes', '2018-08-09 16:20:16', NULL),
(36, 104, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 104, 75, 'no', 'yes', '2018-08-09 16:20:53', NULL),
(37, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 75, 'no', 'yes', '2018-08-09 16:23:50', NULL),
(38, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 75, 'no', 'yes', '2018-08-09 16:25:32', NULL),
(39, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 75, 'no', 'yes', '2018-08-09 16:27:51', NULL),
(40, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 75, 'no', 'yes', '2018-08-09 16:28:51', NULL),
(42, 57, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 57, 74, 'no', 'yes', '2018-08-09 16:31:13', NULL),
(44, 54, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 54, 74, 'no', 'yes', '2018-08-09 16:58:59', NULL),
(45, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-09 17:01:01', NULL),
(46, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 57, 'no', 'yes', '2018-08-09 17:14:35', NULL),
(47, 191, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 54, 'no', 'yes', '2018-08-09 17:21:01', NULL),
(48, 192, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 54, 9, 'no', 'no', '2018-08-09 17:21:08', NULL),
(53, 71, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 54, 57, 'no', 'yes', '2018-08-09 17:33:54', NULL),
(54, 196, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 57, 'no', 'yes', '2018-08-09 17:34:24', NULL),
(56, 197, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 79, 'yes', 'yes', '2018-08-09 17:37:38', NULL),
(58, 199, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 121, 'no', 'yes', '2018-08-09 17:38:37', NULL),
(61, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 18:05:02', NULL),
(62, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-08-09 18:06:05', NULL),
(64, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-09 18:06:36', NULL),
(65, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-09 18:08:05', NULL),
(75, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 18:12:59', NULL),
(76, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 18:14:00', NULL),
(77, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-09 18:14:42', NULL),
(81, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 18:17:17', NULL),
(82, 4, '$5 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-09 18:20:27', NULL),
(83, 34, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 74, 57, 'no', 'no', '2018-08-09 18:21:51', NULL),
(84, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 18:22:16', NULL),
(86, 33, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 57, 74, 'no', 'no', '2018-08-09 18:36:52', NULL),
(87, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 18:39:15', NULL),
(88, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 18:39:24', NULL),
(89, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 18:39:49', NULL),
(90, 1, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 58, 'no', 'yes', '2018-08-09 18:43:33', NULL),
(91, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 18:43:40', NULL),
(92, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 18:45:32', NULL),
(93, 2, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 58, 'no', 'yes', '2018-08-09 18:46:20', NULL),
(94, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'yes', 'yes', '2018-08-09 18:48:13', NULL),
(95, 3, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 58, 'no', 'yes', '2018-08-09 18:49:31', NULL),
(96, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 104, 58, 'no', 'yes', '2018-08-09 18:49:31', NULL),
(120, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 19:25:01', NULL),
(121, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-09 19:25:19', NULL),
(122, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 19:26:46', NULL),
(123, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 19:27:17', NULL),
(124, 13, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 58, 'no', 'yes', '2018-08-09 19:28:12', NULL),
(125, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 19:28:37', NULL),
(126, 14, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 58, 'no', 'yes', '2018-08-09 19:29:51', NULL),
(127, NULL, 'Congratulations on getting 5 360!s. You have attained Silver credibility.2 more to Gold credibility', 'credibility', 'pending', 104, 58, 'no', 'yes', '2018-08-09 19:29:51', NULL),
(128, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 19:30:16', NULL),
(130, 28, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 74, 121, 'no', 'no', '2018-08-09 19:35:13', NULL),
(131, 15, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 58, 'no', 'yes', '2018-08-09 19:38:21', NULL),
(132, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 58, 'no', 'yes', '2018-08-09 19:38:27', NULL),
(133, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-09 19:41:00', NULL),
(134, 28, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 93, 57, 'no', 'no', '2018-08-09 19:45:58', NULL),
(135, 200, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 48, 'no', 'yes', '2018-08-09 19:50:42', NULL),
(136, 48, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 48, 93, 'no', 'yes', '2018-08-09 19:51:45', NULL),
(137, 16, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 93, 48, 'no', 'no', '2018-08-09 19:52:10', NULL),
(140, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-09 20:03:30', NULL),
(141, 16, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 54, 'no', 'yes', '2018-08-09 20:05:26', NULL),
(142, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-09 20:06:48', NULL),
(143, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-09 20:07:02', NULL),
(144, 17, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 54, 'no', 'yes', '2018-08-09 20:08:08', NULL),
(145, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-09 20:08:19', NULL),
(146, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 54, 'no', 'yes', '2018-08-09 20:09:04', NULL),
(147, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 54, 'no', 'yes', '2018-08-09 20:09:10', NULL),
(148, 18, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 54, 'no', 'yes', '2018-08-09 20:10:18', NULL),
(149, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 104, 54, 'no', 'yes', '2018-08-09 20:10:18', NULL),
(150, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 54, 'no', 'yes', '2018-08-09 20:21:35', NULL),
(151, 19, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 54, 'no', 'yes', '2018-08-09 20:22:34', NULL),
(152, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-09 20:23:21', NULL),
(153, 20, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 54, 'no', 'yes', '2018-08-09 20:24:37', NULL),
(154, NULL, 'Congratulations on getting 5 360!s. You have attained Silver credibility.2 more to Gold credibility', 'credibility', 'pending', 74, 54, 'no', 'yes', '2018-08-09 20:24:37', NULL),
(155, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-09 20:36:23', NULL),
(156, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 54, 'no', 'yes', '2018-08-09 20:38:18', NULL),
(157, 21, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 54, 'no', 'yes', '2018-08-09 20:39:11', NULL),
(158, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 54, 'no', 'yes', '2018-08-09 20:42:00', NULL),
(159, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 54, 'no', 'yes', '2018-08-09 20:42:04', NULL),
(160, 22, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 54, 'no', 'yes', '2018-08-09 20:42:39', NULL),
(161, NULL, 'Congratulations on getting 7 360!s. You have attained Gold credibility.', 'credibility', 'pending', 121, 54, 'no', 'yes', '2018-08-09 20:42:39', NULL),
(162, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-09 20:44:07', NULL),
(163, 23, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 54, 'no', 'yes', '2018-08-09 20:44:52', NULL),
(164, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-09 20:45:04', NULL),
(165, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-09 20:45:22', NULL),
(166, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:46:20', NULL),
(167, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:46:28', NULL),
(168, 121, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:46:55', NULL),
(169, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:48:10', NULL),
(170, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:48:17', NULL),
(171, 24, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 57, 'no', 'yes', '2018-08-09 20:49:06', NULL),
(172, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:50:16', NULL),
(173, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 57, 'yes', 'yes', '2018-08-09 20:55:54', NULL),
(174, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 57, 'no', 'yes', '2018-08-09 20:56:03', NULL),
(175, 25, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 57, 'no', 'yes', '2018-08-09 20:58:19', NULL),
(176, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:59:01', NULL),
(177, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-09 20:59:10', NULL),
(178, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-09 21:00:21', NULL),
(179, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-09 21:00:25', NULL),
(180, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 57, 'no', 'yes', '2018-08-09 21:01:21', NULL),
(181, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 57, 'no', 'yes', '2018-08-09 21:01:29', NULL),
(182, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-09 21:02:05', NULL),
(183, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-09 21:02:11', NULL),
(184, 26, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 74, 'no', 'yes', '2018-08-09 21:02:17', NULL),
(185, 27, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 74, 'no', 'yes', '2018-08-09 21:02:37', NULL),
(186, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 58, 'no', 'yes', '2018-08-09 21:26:56', NULL),
(187, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 58, 'no', 'yes', '2018-08-09 21:29:38', NULL),
(189, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 58, 'no', 'yes', '2018-08-09 21:31:40', NULL),
(190, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 96, 58, 'no', 'yes', '2018-08-09 21:33:22', NULL),
(191, 58, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 77, 58, 'no', 'yes', '2018-08-09 21:37:55', NULL),
(192, 58, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 80, 58, 'no', 'yes', '2018-08-09 21:40:16', NULL),
(193, 58, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 86, 58, 'no', 'yes', '2018-08-09 21:41:26', NULL),
(199, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 86, 54, 'no', 'yes', '2018-08-10 12:44:53', NULL),
(203, 202, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 49, 93, 'no', 'yes', '2018-08-10 13:33:45', NULL),
(204, 203, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 49, 94, 'no', 'yes', '2018-08-10 13:33:51', NULL),
(205, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 62, 54, 'no', 'yes', '2018-08-10 13:36:28', NULL),
(206, 93, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 93, 49, 'no', 'yes', '2018-08-10 13:38:48', NULL),
(207, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 75, 54, 'no', 'yes', '2018-08-10 13:45:46', NULL),
(208, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 82, 54, 'no', 'yes', '2018-08-10 13:48:15', NULL),
(215, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 54, 'no', 'yes', '2018-08-10 14:19:44', NULL),
(216, 204, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 58, 'no', 'yes', '2018-08-10 14:22:28', NULL),
(217, 205, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 58, 'no', 'yes', '2018-08-10 14:23:01', NULL),
(218, 58, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 58, 104, 'no', 'yes', '2018-08-10 14:24:22', NULL),
(221, 1, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 96, 'no', 'yes', '2018-08-10 14:58:48', NULL),
(223, 3, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 108, 'no', 'yes', '2018-08-10 14:58:59', NULL),
(224, 4, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 94, 'no', 'yes', '2018-08-10 14:59:05', NULL),
(225, 5, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 48, 'no', 'yes', '2018-08-10 14:59:10', NULL),
(228, 7, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 49, 96, 'no', 'yes', '2018-08-10 15:06:24', NULL),
(229, 8, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 48, 96, 'no', 'yes', '2018-08-10 15:06:44', NULL),
(232, 121, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 121, 'no', 'yes', '2018-08-10 15:10:47', NULL),
(237, 48, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 48, 93, 'no', 'yes', '2018-08-10 15:13:02', NULL),
(240, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 121, 121, 'no', 'yes', '2018-08-10 15:15:10', NULL),
(241, 121, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 121, 'no', 'yes', '2018-08-10 15:17:52', NULL),
(245, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 121, 121, 'no', 'yes', '2018-08-10 15:22:08', NULL),
(246, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-10 15:22:38', NULL),
(247, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-10 15:25:25', NULL),
(261, 2, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 94, 94, 'no', 'yes', '2018-08-10 16:10:15', NULL),
(262, 17, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 54, 57, 'yes', 'yes', '2018-08-10 16:12:18', NULL),
(263, 18, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 54, 74, 'no', 'yes', '2018-08-10 16:12:24', NULL),
(264, 19, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 54, 96, 'yes', 'yes', '2018-08-10 16:12:29', NULL),
(265, 74, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 74, 54, 'no', 'yes', '2018-08-10 16:13:15', NULL),
(266, 35, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 93, 48, 'no', 'no', '2018-08-10 16:13:18', NULL),
(267, 96, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 96, 54, 'no', 'yes', '2018-08-10 16:14:30', NULL),
(268, 57, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 57, 54, 'no', 'yes', '2018-08-10 16:18:56', NULL),
(269, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-10 17:01:33', NULL),
(270, 29, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-10 17:01:56', NULL),
(271, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-10 17:02:07', NULL),
(273, 30, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-10 17:02:28', NULL),
(274, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-10 17:02:35', NULL),
(275, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-10 17:02:53', NULL),
(277, 31, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-10 17:03:24', NULL),
(278, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 93, 48, 'no', 'yes', '2018-08-10 17:03:24', NULL),
(279, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-10 17:13:09', NULL),
(282, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 93, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(284, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 59, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(285, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 96, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(286, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 108, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(287, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 94, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(288, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 121, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(289, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 89, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(290, 39, 'Job is posted related to your profile', 'user_attribute_notification', 'pending', 75, 104, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(291, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 75, 75, 'no', 'yes', '2018-08-10 17:15:18', NULL),
(292, 21, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 104, 74, 'no', 'yes', '2018-08-10 17:19:55', NULL),
(294, 22, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 57, 121, 'no', 'yes', '2018-08-10 17:23:47', NULL),
(297, 74, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 74, 104, 'no', 'yes', '2018-08-10 17:26:21', NULL),
(305, 5, '$5 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 75, 75, 'no', 'yes', '2018-08-10 17:34:34', NULL),
(311, 28, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 121, 94, 'no', 'yes', '2018-08-10 18:10:18', NULL),
(312, 29, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 121, 113, 'no', 'no', '2018-08-10 18:11:01', NULL),
(328, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-10 19:40:35', NULL),
(330, 33, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 57, 74, 'no', 'yes', '2018-08-10 19:47:32', NULL),
(331, 74, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 74, 57, 'no', 'yes', '2018-08-10 19:49:13', NULL),
(332, 42, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 74, 57, 'yes', 'no', '2018-08-10 19:49:38', NULL),
(333, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 104, 104, 'no', 'yes', '2018-08-10 19:52:22', NULL),
(334, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-10 19:53:00', NULL),
(337, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:39:14', NULL),
(338, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:39:22', NULL),
(339, 36, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-08-10 20:39:48', NULL),
(340, 80, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 48, 121, 'no', 'yes', '2018-08-10 20:40:36', NULL),
(341, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 48, 48, 'no', 'yes', '2018-08-10 20:40:36', NULL),
(342, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:41:01', NULL),
(343, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:41:07', NULL),
(344, 37, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-08-10 20:41:32', NULL),
(345, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:41:49', NULL),
(346, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:42:26', NULL),
(347, 38, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-08-10 20:43:15', NULL),
(348, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:43:15', NULL),
(349, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:43:22', NULL),
(350, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:43:42', NULL),
(351, 39, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-08-10 20:44:08', NULL),
(352, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-08-10 20:44:21', NULL),
(353, 35, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 93, 48, 'no', 'no', '2018-08-10 20:54:48', NULL),
(354, 35, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 93, 48, 'no', 'no', '2018-08-10 20:55:01', NULL),
(355, 27, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 93, 57, 'no', 'yes', '2018-08-10 21:21:31', NULL),
(356, 28, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 93, 96, 'no', 'yes', '2018-08-10 21:21:35', NULL),
(357, 1, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 57, 'no', 'yes', '2018-08-10 21:22:01', NULL),
(358, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-08-10 21:28:31', NULL),
(359, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-08-10 21:30:15', NULL),
(360, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-08-10 21:51:15', NULL),
(361, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-08-11 12:48:51', NULL),
(362, 2, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 57, 'yes', 'yes', '2018-08-11 12:50:37', NULL),
(363, 3, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 96, 'no', 'yes', '2018-08-11 12:50:42', NULL),
(364, 57, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 57, 'no', 'yes', '2018-08-11 12:53:49', NULL),
(365, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 13:02:41', NULL),
(366, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-11 13:04:44', NULL),
(367, 80, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 80, 'no', 'yes', '2018-08-11 13:06:34', NULL),
(368, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 80, 54, 'no', 'yes', '2018-08-11 13:07:23', NULL),
(369, 80, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 80, 'no', 'yes', '2018-08-11 13:07:30', NULL),
(370, 80, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 80, 'no', 'yes', '2018-08-11 13:07:52', NULL),
(371, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-11 13:09:21', NULL),
(372, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-11 13:09:38', NULL),
(373, 1, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 54, 'no', 'yes', '2018-08-11 13:10:37', NULL),
(374, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-11 13:10:47', NULL),
(375, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-11 13:12:49', NULL),
(376, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-11 13:12:56', NULL),
(377, 2, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 54, 'no', 'yes', '2018-08-11 13:13:48', NULL),
(378, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-11 13:13:58', NULL),
(379, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 57, 'no', 'yes', '2018-08-11 13:13:59', NULL),
(380, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 57, 'no', 'yes', '2018-08-11 13:15:21', NULL),
(381, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 13:16:47', NULL),
(382, 3, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 74, 'no', 'yes', '2018-08-11 13:18:17', NULL),
(383, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:24:40', NULL),
(384, 4, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 74, 'no', 'yes', '2018-08-11 13:25:29', NULL),
(385, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:25:39', NULL),
(386, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:28:53', NULL),
(387, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:28:53', NULL),
(388, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:28:54', NULL),
(389, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:29:41', NULL),
(390, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:31:58', NULL),
(391, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 13:33:32', NULL),
(392, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-11 13:40:51', NULL),
(393, 1, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 54, 'no', 'yes', '2018-08-11 13:43:03', NULL),
(394, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-11 13:45:08', NULL),
(395, 2, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 54, 'no', 'yes', '2018-08-11 13:46:18', NULL),
(396, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-11 14:03:03', NULL),
(397, 3, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 54, 'no', 'yes', '2018-08-11 14:04:06', NULL),
(398, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 74, 54, 'no', 'yes', '2018-08-11 14:04:06', NULL),
(399, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'no', 'yes', '2018-08-11 14:04:18', NULL),
(400, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 54, 'no', 'yes', '2018-08-11 14:05:33', NULL),
(401, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 14:05:54', NULL),
(402, 4, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 74, 'no', 'yes', '2018-08-11 14:06:18', NULL),
(403, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 74, 'no', 'yes', '2018-08-11 14:06:26', NULL),
(404, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 54, 'no', 'yes', '2018-08-11 14:06:49', NULL),
(405, 5, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 54, 'no', 'yes', '2018-08-11 14:07:17', NULL),
(406, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 14:08:48', NULL),
(407, 6, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 57, 'no', 'yes', '2018-08-11 14:09:09', NULL),
(408, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 57, 'no', 'yes', '2018-08-11 14:09:42', NULL),
(409, 7, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 121, 57, 'no', 'yes', '2018-08-11 14:10:13', NULL),
(410, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 57, 'no', 'yes', '2018-08-11 14:10:21', NULL),
(411, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:11:25', NULL),
(412, 8, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 74, 'no', 'yes', '2018-08-11 14:11:43', NULL),
(413, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:11:51', NULL),
(414, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 96, 74, 'no', 'yes', '2018-08-11 14:13:23', NULL),
(415, 9, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 96, 74, 'no', 'yes', '2018-08-11 14:13:59', NULL),
(416, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 96, 74, 'no', 'yes', '2018-08-11 14:13:59', NULL),
(417, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 96, 74, 'no', 'yes', '2018-08-11 14:14:06', NULL),
(418, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:15:21', NULL),
(419, 10, 'It looks like you might have used an expletive in your review to {USER}. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 57, 57, 'no', 'yes', '2018-08-11 14:15:53', NULL),
(420, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:15:53', NULL),
(421, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:15:54', NULL),
(422, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:16:29', NULL),
(423, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:19:22', NULL),
(424, 11, 'It looks like you might have used an expletive in your review to {USER}. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 57, 57, 'no', 'yes', '2018-08-11 14:19:43', NULL),
(425, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:19:44', NULL),
(426, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:19:44', NULL),
(427, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:20:24', NULL),
(428, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 14:36:13', NULL),
(429, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:36:31', NULL),
(430, 57, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 57, 'no', 'yes', '2018-08-11 14:37:24', NULL),
(431, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:37:33', NULL),
(432, 57, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 57, 74, 'no', 'yes', '2018-08-11 14:43:21', NULL),
(433, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 14:43:35', NULL),
(434, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 54, 74, 'no', 'yes', '2018-08-11 14:44:16', NULL),
(435, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 14:44:24', NULL),
(436, 57, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 57, 93, 'no', 'yes', '2018-08-11 15:19:12', NULL),
(437, 57, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 57, 74, 'no', 'yes', '2018-08-11 15:19:19', NULL),
(438, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 57, 'no', 'yes', '2018-08-11 15:53:04', NULL),
(439, 12, 'It looks like you might have used an expletive in your review to {USER}. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'no', 'yes', '2018-08-11 15:53:28', NULL),
(440, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 57, 'no', 'yes', '2018-08-11 15:53:29', NULL),
(441, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 57, 'no', 'yes', '2018-08-11 15:58:44', NULL),
(442, 13, 'It looks like you might have used an expletive in your review to {USER}. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'no', 'yes', '2018-08-11 16:00:19', NULL),
(443, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 57, 'no', 'yes', '2018-08-11 16:00:20', NULL),
(444, 4, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 54, 'yes', 'yes', '2018-08-11 16:01:36', NULL),
(445, 54, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 54, 74, 'yes', 'yes', '2018-08-11 16:03:40', NULL),
(446, 5, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 54, 86, 'no', 'yes', '2018-08-11 16:14:32', NULL),
(447, 86, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 86, 54, 'no', 'yes', '2018-08-11 16:19:49', NULL),
(449, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 16:42:04', NULL);
INSERT INTO `notifications` (`id`, `reference_id`, `message`, `type`, `type_status`, `sender_id`, `receiver_id`, `read_status`, `email_sent`, `created_at`, `updated_at`) VALUES
(450, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 16:42:31', NULL),
(451, 13, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 57, 'no', 'yes', '2018-08-11 16:52:33', NULL),
(452, 13, 'Admin has approved your rating on ANKIT individual\'s profile.', '', 'accepted', 1, 93, 'no', 'yes', '2018-08-11 16:52:33', NULL),
(453, 13, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 57, 'no', 'yes', '2018-08-11 17:11:09', NULL),
(454, 13, 'Admin has approved your rating on ANKIT individual\'s profile.', '', 'accepted', 1, 93, 'no', 'yes', '2018-08-11 17:11:09', NULL),
(455, 12, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 57, 'no', 'yes', '2018-08-11 17:12:30', NULL),
(456, 12, 'Admin has approved your rating on ANKIT individual\'s profile.', '', 'accepted', 1, 93, 'no', 'yes', '2018-08-11 17:12:30', NULL),
(457, 11, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 74, 'no', 'yes', '2018-08-11 17:12:38', NULL),
(458, 11, 'Admin has approved your rating on Individual 1\'s profile.', '', 'accepted', 1, 57, 'no', 'yes', '2018-08-11 17:12:38', NULL),
(459, 10, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 74, 'no', 'yes', '2018-08-11 17:12:48', NULL),
(460, 10, 'Admin has approved your rating on Individual 1\'s profile.', '', 'accepted', 1, 57, 'no', 'yes', '2018-08-11 17:12:48', NULL),
(461, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 18:13:10', NULL),
(462, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 57, 'no', 'yes', '2018-08-11 18:13:12', NULL),
(463, 93, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 93, 'yes', 'yes', '2018-08-11 18:27:24', NULL),
(464, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 121, 121, 'no', 'yes', '2018-08-11 19:10:46', NULL),
(465, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-11 19:12:01', NULL),
(467, 4, '$5 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-11 19:16:57', NULL),
(468, 121, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 121, 'no', 'yes', '2018-08-11 19:28:15', NULL),
(469, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-08-11 20:26:10', NULL),
(470, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'yes', 'yes', '2018-08-11 20:26:30', NULL),
(471, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-11 20:30:24', NULL),
(475, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 54, 54, 'no', 'yes', '2018-08-11 21:16:37', NULL),
(477, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 123, 123, 'no', 'yes', '2018-08-12 22:06:57', NULL),
(486, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 123, 57, 'no', 'yes', '2018-08-12 22:26:17', NULL),
(487, 15, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 123, 57, 'yes', 'yes', '2018-08-12 22:27:10', NULL),
(488, NULL, 'Congratulations on getting 5 360!s. You have attained Silver credibility.2 more to Gold credibility', 'credibility', 'pending', 123, 57, 'no', 'yes', '2018-08-12 22:27:10', NULL),
(489, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 123, 57, 'no', 'yes', '2018-08-12 22:27:18', NULL),
(499, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 125, 125, 'no', 'yes', '2018-08-15 15:40:26', NULL),
(500, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:14:40', NULL),
(501, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:14:45', NULL),
(502, 19, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-16 16:15:22', NULL),
(503, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:15:37', NULL),
(504, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:15:49', NULL),
(505, 20, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'yes', 'yes', '2018-08-16 16:16:21', NULL),
(506, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:16:28', NULL),
(507, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:17:15', NULL),
(508, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:18:56', NULL),
(509, 21, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-16 16:25:30', NULL),
(510, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:25:30', NULL),
(511, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:25:55', NULL),
(512, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:27:12', NULL),
(513, 48, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'no', 'yes', '2018-08-16 16:27:36', NULL),
(514, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:27:36', NULL),
(515, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:27:36', NULL),
(516, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-16 16:56:40', NULL),
(517, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-17 14:23:30', NULL),
(518, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-17 14:23:34', NULL),
(519, 48, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'no', 'yes', '2018-08-17 14:24:39', NULL),
(520, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-17 14:24:39', NULL),
(521, 23, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-17 14:25:09', NULL),
(522, 23, 'Admin has approved your rating on Saurabh Shukla\'s profile.', '', 'accepted', 1, 93, 'no', 'yes', '2018-08-17 14:25:09', NULL),
(523, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-17 14:25:12', NULL),
(524, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-17 14:25:25', NULL),
(531, 9, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 9, 'no', 'yes', '2018-08-21 18:46:33', NULL),
(533, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 54, 'no', 'yes', '2018-08-21 18:55:07', NULL),
(535, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 126, 126, 'no', 'yes', '2018-08-21 19:03:58', NULL),
(547, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 54, 'no', 'yes', '2018-08-29 01:51:11', NULL),
(548, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 54, 'no', 'yes', '2018-08-29 01:51:16', NULL),
(549, 25, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 54, 'no', 'yes', '2018-08-29 01:51:54', NULL),
(550, NULL, 'Congratulations on getting 5 360!s. You have attained Silver credibility.2 more to Gold credibility', 'credibility', 'pending', 93, 54, 'yes', 'yes', '2018-08-29 01:51:54', NULL),
(551, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-29 01:52:31', NULL),
(552, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-29 01:52:39', NULL),
(553, 26, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-29 01:53:07', NULL),
(563, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-08-31 01:25:55', NULL),
(564, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-31 01:29:55', NULL),
(565, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-31 01:31:11', NULL),
(566, 27, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-31 01:31:50', NULL),
(567, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-31 01:32:05', NULL),
(568, 28, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'no', 'yes', '2018-08-31 01:32:35', NULL),
(569, 1, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 94, 94, 'no', 'yes', '2018-08-31 01:37:01', NULL),
(572, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-31 01:43:22', NULL),
(573, 0, 'You have completed 20% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 94, 94, 'no', 'yes', '2018-08-31 02:09:30', NULL),
(576, 0, 'You have completed 20% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 94, 94, 'no', 'yes', '2018-08-31 10:32:20', NULL),
(578, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-08-31 17:52:18', NULL),
(579, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-08-31 17:52:32', NULL),
(580, 29, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 123, 'no', 'yes', '2018-08-31 18:46:03', NULL),
(581, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-08-31 18:48:59', NULL),
(582, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-08-31 18:50:09', NULL),
(583, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-08-31 18:51:25', NULL),
(584, 95, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 95, 'no', 'yes', '2018-08-31 18:55:41', NULL),
(585, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-01 15:50:28', NULL),
(586, 7, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 48, 'no', 'yes', '2018-09-01 15:51:08', NULL),
(587, 48, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 48, 93, 'no', 'yes', '2018-09-01 15:53:38', NULL),
(588, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-01 15:56:21', NULL),
(589, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-01 16:01:07', NULL),
(590, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-01 16:01:11', NULL),
(591, 30, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 126, 'no', 'yes', '2018-09-01 16:01:32', NULL),
(592, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-01 16:01:39', NULL),
(593, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 16:35:28', NULL),
(594, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:35:45', NULL),
(595, 31, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-09-01 17:36:20', NULL),
(596, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:36:34', NULL),
(597, 32, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-09-01 17:37:01', NULL),
(598, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:37:08', NULL),
(599, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:37:20', NULL),
(600, 33, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 93, 'no', 'yes', '2018-09-01 17:38:04', NULL),
(601, NULL, 'Congratulations on getting 3 360!s. You have attained Bronze credibility.2 more to Silver credibility', 'credibility', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:38:04', NULL),
(602, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:38:14', NULL),
(603, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-01 17:38:25', NULL),
(604, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'yes', 'yes', '2018-09-01 17:40:51', NULL),
(605, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 93, 'no', 'yes', '2018-09-01 20:05:40', NULL),
(606, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 93, 'no', 'yes', '2018-09-01 20:05:40', NULL),
(607, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 93, 'no', 'yes', '2018-09-01 20:05:56', NULL),
(608, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 93, 'no', 'yes', '2018-09-01 20:06:08', NULL),
(609, 34, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 123, 93, 'no', 'yes', '2018-09-01 20:07:17', NULL),
(610, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 93, 'no', 'yes', '2018-09-01 20:07:26', NULL),
(616, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 123, 123, 'yes', 'yes', '2018-09-01 20:14:23', NULL),
(617, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 126, 'no', 'yes', '2018-09-01 21:39:44', NULL),
(618, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 126, 123, 'no', 'yes', '2018-09-01 21:52:41', NULL),
(619, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 126, 123, 'no', 'yes', '2018-09-01 21:52:47', NULL),
(620, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-01 21:56:25', NULL),
(621, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-01 22:16:57', NULL),
(622, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-01 22:17:30', NULL),
(623, 36, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 48, 'yes', 'yes', '2018-09-01 22:19:12', NULL),
(624, NULL, 'Congratulations on getting 3 360!s. You have attained Silver credibility.', 'credibility', 'pending', 93, 48, 'no', 'yes', '2018-09-01 22:19:12', NULL),
(626, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-03 12:30:45', NULL),
(627, 37, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 136, 'no', 'yes', '2018-09-03 12:57:36', NULL),
(628, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 136, 136, 'no', 'yes', '2018-09-03 12:57:39', NULL),
(629, 136, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 136, 'no', 'yes', '2018-09-03 13:08:49', NULL),
(630, 136, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 136, 'no', 'yes', '2018-09-03 13:08:57', NULL),
(631, 38, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 136, 'no', 'yes', '2018-09-03 13:09:30', NULL),
(632, NULL, 'Congratulations on getting 2 360!s. You have attained Bronze credibility.', 'credibility', 'pending', 48, 136, 'no', 'yes', '2018-09-03 13:09:30', NULL),
(633, 136, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 136, 'no', 'yes', '2018-09-03 13:09:48', NULL),
(634, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-03 17:08:27', NULL),
(635, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'yes', 'yes', '2018-09-03 17:11:51', NULL),
(636, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 126, 93, 'no', 'yes', '2018-09-03 17:13:19', NULL),
(637, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 126, 48, 'no', 'yes', '2018-09-03 17:14:07', NULL),
(638, 1, '$5 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 94, 94, 'no', 'yes', '2018-09-03 17:21:48', NULL),
(639, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-06 14:07:34', NULL),
(640, 49, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 49, 'no', 'yes', '2018-09-06 14:10:34', NULL),
(641, 94, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 94, 'no', 'yes', '2018-09-06 14:13:54', NULL),
(642, 39, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 39, 'no', 'yes', '2018-09-06 14:22:50', NULL),
(643, 39, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 39, 'no', 'yes', '2018-09-06 14:22:58', NULL),
(644, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:38:28', NULL),
(645, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:38:33', NULL),
(646, 48, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'yes', 'yes', '2018-09-06 17:39:15', NULL),
(647, NULL, 'Congratulations on getting 3 360!s. You have attained Silver credibility.', 'credibility', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:39:16', NULL),
(648, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:39:16', NULL),
(649, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:40:06', NULL),
(650, 48, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'yes', 'yes', '2018-09-06 17:40:34', NULL),
(651, NULL, 'Congratulations on getting 3 360!s. You have attained Silver credibility.', 'credibility', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:40:34', NULL),
(652, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-06 17:40:34', NULL),
(657, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-09-06 21:08:18', NULL),
(658, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 48, 'no', 'yes', '2018-09-06 23:29:13', NULL),
(659, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 123, 48, 'no', 'yes', '2018-09-06 23:29:18', NULL),
(660, 90, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 33, 90, 'no', 'yes', '2018-09-07 11:47:43', NULL),
(661, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-07 14:02:20', NULL),
(662, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-07 14:39:41', NULL),
(663, 9, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 48, 126, 'no', 'yes', '2018-09-07 14:46:47', NULL),
(664, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-09-07 14:47:17', NULL),
(665, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-09-07 14:47:23', NULL),
(666, 126, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 126, 48, 'yes', 'yes', '2018-09-07 14:52:51', NULL),
(667, 31, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 48, 126, 'no', 'yes', '2018-09-07 14:54:58', NULL),
(668, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 137, 137, 'no', 'yes', '2018-09-07 15:01:30', NULL),
(669, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 15:29:14', NULL),
(670, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 15:35:13', NULL),
(671, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 15:35:58', NULL),
(672, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 16:37:15', NULL),
(673, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 16:39:10', NULL),
(674, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 16:41:32', NULL),
(675, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 16:41:39', NULL),
(676, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 17:08:07', NULL),
(677, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 17:09:49', NULL),
(678, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 94, 48, 'no', 'yes', '2018-09-07 17:10:25', NULL),
(679, 123, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 94, 123, 'no', 'yes', '2018-09-07 17:15:29', NULL),
(680, 94, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 94, 'no', 'yes', '2018-09-07 18:05:01', NULL),
(681, 10, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 49, 'no', 'yes', '2018-09-07 21:49:21', NULL),
(682, 11, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 94, 'no', 'yes', '2018-09-07 21:49:25', NULL),
(684, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 139, 139, 'no', 'yes', '2018-09-08 12:55:51', NULL),
(685, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-09-08 15:57:30', NULL),
(686, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 123, 'no', 'yes', '2018-09-08 15:57:34', NULL),
(687, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-08 20:03:59', NULL),
(688, 48, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 93, 126, 'no', 'yes', '2018-09-08 20:04:18', NULL),
(689, 48, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 93, 126, 'no', 'yes', '2018-09-08 20:04:22', NULL),
(693, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 140, 140, 'yes', 'yes', '2018-09-08 20:56:37', NULL),
(694, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-08 20:58:33', NULL),
(695, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-08 20:58:39', NULL),
(696, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 48, 93, 'no', 'yes', '2018-09-10 12:53:47', NULL),
(697, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 141, 141, 'no', 'yes', '2018-09-14 16:11:17', NULL),
(698, 41, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 142, 'no', 'yes', '2018-09-14 16:26:08', NULL),
(699, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 142, 142, 'no', 'yes', '2018-09-14 16:26:12', NULL),
(700, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-14 17:51:11', NULL),
(701, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-09-14 18:21:47', NULL),
(702, 42, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 143, 'no', 'yes', '2018-09-14 18:26:58', NULL),
(703, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 143, 143, 'no', 'yes', '2018-09-14 18:27:02', NULL),
(704, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-24 05:13:48', NULL),
(705, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-24 05:14:06', NULL),
(706, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-24 05:18:25', NULL),
(707, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-24 05:18:38', NULL),
(708, 123, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 123, 'no', 'yes', '2018-09-24 05:21:24', NULL),
(709, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 14:23:11', NULL),
(710, 49, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 49, 93, 'no', 'no', '2018-09-24 14:26:27', NULL),
(711, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 144, 144, 'no', 'yes', '2018-09-24 14:45:15', NULL),
(712, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'yes', 'yes', '2018-09-24 15:07:52', NULL),
(713, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 15:35:33', NULL),
(714, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 15:35:36', NULL),
(715, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 17:58:00', NULL),
(716, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 18:08:42', NULL),
(717, 43, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 126, 'no', 'yes', '2018-09-24 18:09:22', NULL),
(718, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 18:09:28', NULL),
(719, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 18:54:53', NULL),
(720, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 126, 'no', 'yes', '2018-09-24 18:55:38', NULL),
(721, 44, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 126, 'no', 'yes', '2018-09-24 18:56:04', NULL),
(722, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 19:43:12', NULL),
(723, 49, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 49, 'no', 'yes', '2018-09-24 19:44:19', NULL),
(724, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 126, 'no', 'yes', '2018-09-24 20:17:09', NULL),
(725, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 20:18:28', NULL),
(726, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 20:22:08', NULL),
(727, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 20:22:26', NULL),
(728, 45, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 126, 'no', 'yes', '2018-09-24 20:23:19', NULL),
(729, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 20:23:26', NULL),
(730, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-24 20:23:40', NULL),
(731, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 126, 'no', 'yes', '2018-09-24 20:24:15', NULL),
(732, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 126, 'no', 'yes', '2018-09-24 20:24:23', NULL),
(733, 46, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 48, 126, 'no', 'yes', '2018-09-24 20:25:07', NULL),
(734, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 48, 126, 'no', 'yes', '2018-09-24 20:25:22', NULL),
(735, 47, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 93, 145, 'no', 'yes', '2018-09-26 00:48:19', NULL),
(736, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 145, 145, 'no', 'yes', '2018-09-26 00:48:23', NULL),
(737, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-26 00:59:00', NULL),
(738, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 126, 'no', 'yes', '2018-09-26 00:59:06', NULL),
(739, 121, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 121, 'no', 'yes', '2018-09-26 00:59:26', NULL),
(740, 121, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 121, 'no', 'yes', '2018-09-26 00:59:30', NULL),
(741, 33, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 93, 126, 'no', 'yes', '2018-09-26 21:21:27', NULL),
(742, 77, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 93, 126, 'no', 'yes', '2018-09-26 21:22:56', NULL),
(743, 78, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 93, 126, 'no', 'yes', '2018-09-26 21:23:43', NULL),
(744, 34, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 93, 126, 'no', 'yes', '2018-09-26 21:24:29', NULL),
(745, 79, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 93, 136, 'no', 'yes', '2018-09-26 21:28:17', NULL),
(746, 80, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 93, 136, 'no', 'yes', '2018-09-26 21:28:49', NULL),
(747, 81, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 93, 113, 'no', 'yes', '2018-09-26 21:28:51', NULL),
(748, 62, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 140, 62, 'no', 'yes', '2018-09-26 23:25:49', NULL),
(749, 35, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 93, 113, 'no', 'yes', '2018-09-27 20:30:24', NULL),
(751, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 147, 147, 'no', 'yes', '2018-10-01 20:08:24', NULL),
(752, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 148, 148, 'yes', 'yes', '2018-10-01 20:16:11', NULL),
(753, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:25:22', NULL),
(754, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:26:08', NULL),
(755, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:26:50', NULL),
(756, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:28:12', NULL),
(757, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:29:07', NULL),
(758, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:31:39', NULL),
(759, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:54:58', NULL),
(760, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:55:28', NULL),
(761, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 147, 147, 'no', 'yes', '2018-10-01 20:57:30', NULL),
(762, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-02 14:23:01', NULL),
(763, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-02 14:23:47', NULL),
(764, 145, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 145, 'no', 'yes', '2018-10-03 13:50:48', NULL),
(765, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 57, 93, 'no', 'yes', '2018-10-03 14:13:47', NULL),
(766, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-03 14:21:57', NULL),
(767, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-03 14:22:25', NULL),
(768, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-03 14:23:57', NULL),
(769, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-03 14:27:15', NULL),
(770, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 57, 57, 'yes', 'yes', '2018-10-03 14:32:59', NULL),
(771, 36, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 57, 94, 'yes', 'yes', '2018-10-03 14:39:48', NULL),
(772, 37, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 57, 88, 'no', 'yes', '2018-10-03 14:39:52', NULL),
(773, 38, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 57, 147, 'no', 'yes', '2018-10-03 14:39:57', NULL),
(774, 39, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 57, 96, 'no', 'yes', '2018-10-03 14:40:01', NULL),
(775, 40, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 57, 54, 'yes', 'yes', '2018-10-03 14:40:06', NULL),
(780, 41, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 147, 57, 'yes', 'yes', '2018-10-03 16:35:46', NULL),
(781, 42, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 147, 148, 'yes', 'yes', '2018-10-03 16:35:50', NULL),
(782, 147, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 148, 147, 'no', 'yes', '2018-10-03 16:38:00', NULL),
(783, 147, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 147, 'no', 'yes', '2018-10-03 16:47:06', NULL),
(784, 49, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 147, 'yes', 'yes', '2018-10-03 16:49:53', NULL),
(785, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 147, 57, 'no', 'yes', '2018-10-03 17:33:19', NULL),
(786, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-03 18:15:24', NULL),
(787, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-03 18:16:52', NULL),
(788, 74, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 147, 57, 'yes', 'yes', '2018-10-03 18:32:29', NULL),
(789, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 54, 'yes', 'yes', '2018-10-03 18:34:23', NULL),
(790, 43, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 147, 74, 'yes', 'yes', '2018-10-03 18:35:03', NULL),
(791, 147, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 74, 147, 'no', 'yes', '2018-10-03 18:36:08', NULL),
(792, 50, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 147, 'no', 'yes', '2018-10-03 18:37:14', NULL),
(793, 136, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 136, 'no', 'yes', '2018-10-03 18:44:53', NULL),
(794, 82, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 147, 74, 'no', 'yes', '2018-10-03 18:54:53', NULL),
(795, 44, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 147, 74, 'yes', 'yes', '2018-10-03 18:56:19', NULL),
(796, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-03 19:13:39', NULL),
(797, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-03 19:20:18', NULL),
(798, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 93, 'no', 'yes', '2018-10-03 19:22:43', NULL),
(799, 83, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 147, 148, 'yes', 'yes', '2018-10-03 19:48:56', NULL),
(800, 45, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 148, 90, 'no', 'yes', '2018-10-03 20:05:22', NULL),
(801, 46, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 148, 90, 'no', 'yes', '2018-10-03 20:06:15', NULL),
(802, 47, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 148, 96, 'no', 'yes', '2018-10-03 20:06:17', NULL),
(803, 48, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 148, 90, 'no', 'yes', '2018-10-03 20:06:58', NULL),
(804, 49, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 148, 96, 'no', 'yes', '2018-10-03 20:07:00', NULL),
(805, 50, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 148, 147, 'no', 'yes', '2018-10-03 20:07:02', NULL),
(806, 51, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 147, 148, 'no', 'yes', '2018-10-03 20:08:49', NULL),
(807, 84, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 147, 90, 'no', 'yes', '2018-10-03 20:10:00', NULL),
(808, 85, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 147, 90, 'no', 'yes', '2018-10-03 20:10:44', NULL),
(809, 86, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 147, 148, 'no', 'yes', '2018-10-03 20:10:46', NULL),
(810, 51, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 74, 148, 'no', 'yes', '2018-10-03 20:58:07', NULL),
(812, 13, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 148, 9, 'no', 'no', '2018-10-03 21:04:22', NULL),
(813, 14, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 148, 147, 'yes', 'yes', '2018-10-03 21:07:23', NULL),
(814, 15, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 148, 57, 'yes', 'yes', '2018-10-03 21:07:31', NULL),
(815, 148, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 148, 'no', 'yes', '2018-10-03 21:11:46', NULL),
(816, 16, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 57, 148, 'yes', 'yes', '2018-10-03 21:12:19', NULL),
(817, 57, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 148, 57, 'no', 'yes', '2018-10-03 21:13:59', NULL),
(818, 148, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 148, 57, 'no', 'yes', '2018-10-03 21:19:29', NULL),
(819, 17, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 74, 147, 'no', 'yes', '2018-10-03 21:31:26', NULL),
(820, 147, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 147, 74, 'no', 'yes', '2018-10-03 21:32:08', NULL),
(821, 18, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 147, 57, 'no', 'yes', '2018-10-03 21:35:25', NULL),
(822, 57, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 57, 147, 'no', 'yes', '2018-10-03 21:36:31', NULL),
(823, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 147, 74, 'no', 'yes', '2018-10-03 21:38:19', NULL);
INSERT INTO `notifications` (`id`, `reference_id`, `message`, `type`, `type_status`, `sender_id`, `receiver_id`, `read_status`, `email_sent`, `created_at`, `updated_at`) VALUES
(825, 49, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 49, 'no', 'yes', '2018-10-03 21:43:29', NULL),
(826, 52, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 147, 152, 'no', 'yes', '2018-10-03 21:52:22', NULL),
(827, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 152, 152, 'no', 'yes', '2018-10-03 21:52:27', NULL),
(828, 20, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 148, 121, 'no', 'yes', '2018-10-03 22:07:43', NULL),
(829, 121, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 121, 148, 'no', 'yes', '2018-10-03 22:09:20', NULL),
(831, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 153, 153, 'no', 'yes', '2018-10-04 11:57:06', NULL),
(832, 148, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 148, 'no', 'yes', '2018-10-04 12:42:36', NULL),
(833, 21, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 54, 148, 'no', 'yes', '2018-10-04 12:42:46', NULL),
(834, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 54, 93, 'no', 'yes', '2018-10-04 14:01:09', NULL),
(835, 53, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 57, 74, 'no', 'yes', '2018-10-04 14:04:59', NULL),
(836, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-10-04 14:13:52', NULL),
(837, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 54, 74, 'no', 'yes', '2018-10-04 14:24:19', NULL),
(838, 57, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 57, 'no', 'yes', '2018-10-04 14:25:23', NULL),
(839, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-04 16:28:15', NULL),
(840, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 93, 93, 'no', 'yes', '2018-10-04 16:32:10', NULL),
(841, 22, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 113, 'no', 'no', '2018-10-04 20:08:05', NULL),
(842, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 74, 74, 'no', 'yes', '2018-10-04 21:28:18', NULL),
(843, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 154, 154, 'no', 'yes', '2018-10-04 21:33:02', NULL),
(844, 121, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 121, 'no', 'yes', '2018-10-04 21:40:13', NULL),
(845, 83, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 83, 'no', 'yes', '2018-10-04 21:40:37', NULL),
(846, 63, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 63, 'no', 'yes', '2018-10-04 21:40:45', NULL),
(847, 144, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 144, 'no', 'yes', '2018-10-04 21:40:50', NULL),
(848, 87, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 74, 87, 'no', 'yes', '2018-10-04 21:40:56', NULL),
(850, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 156, 156, 'no', 'yes', '2018-10-05 12:41:55', NULL),
(852, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-05 13:56:48', NULL),
(853, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-05 13:57:16', NULL),
(854, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-05 14:27:59', NULL),
(855, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-05 14:29:45', NULL),
(856, 148, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 147, 57, 'no', 'yes', '2018-10-05 15:27:04', NULL),
(857, 23, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 57, 156, 'no', 'yes', '2018-10-05 15:29:46', NULL),
(858, 57, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 54, 57, 'no', 'yes', '2018-10-05 15:30:28', NULL),
(859, 24, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 113, 'no', 'no', '2018-10-05 15:30:40', NULL),
(860, 53, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 93, 113, 'no', 'yes', '2018-10-05 15:31:25', NULL),
(861, 93, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 147, 147, 'no', 'yes', '2018-10-05 15:42:06', NULL),
(862, 55, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 147, 123, 'no', 'yes', '2018-10-05 15:45:04', NULL),
(863, 136, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 147, 147, 'no', 'yes', '2018-10-05 15:49:15', NULL),
(864, 57, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 147, 157, 'yes', 'yes', '2018-10-05 15:59:08', NULL),
(865, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 157, 157, 'no', 'yes', '2018-10-05 15:59:12', NULL),
(866, 147, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 147, 147, 'yes', 'yes', '2018-10-05 16:16:54', NULL),
(868, 147, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 147, 147, 'yes', 'yes', '2018-10-05 19:38:19', NULL),
(869, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 158, 158, 'no', 'yes', '2018-10-05 20:29:44', NULL),
(870, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 158, 158, 'no', 'yes', '2018-10-05 20:54:46', NULL),
(871, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 158, 158, 'no', 'yes', '2018-10-05 21:00:08', NULL),
(872, 108, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'no', 'yes', '2018-10-05 21:07:27', NULL),
(873, 108, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 93, 93, 'no', 'yes', '2018-10-05 21:13:08', NULL),
(874, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 158, 158, 'no', 'yes', '2018-10-05 21:22:23', NULL),
(875, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 158, 158, 'no', 'yes', '2018-10-05 21:22:43', NULL),
(876, 25, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 147, 126, 'no', 'yes', '2018-10-05 21:36:41', NULL),
(877, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-10-05 21:38:16', NULL),
(878, 26, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 158, 'no', 'yes', '2018-10-05 21:39:00', NULL),
(879, 27, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 147, 158, 'yes', 'yes', '2018-10-05 22:08:33', NULL),
(880, 147, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 158, 147, 'no', 'yes', '2018-10-05 22:09:06', NULL),
(881, 158, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 158, 147, 'no', 'yes', '2018-10-05 22:09:34', NULL),
(882, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 147, 93, 'no', 'yes', '2018-10-05 22:11:49', NULL),
(883, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 147, 48, 'no', 'yes', '2018-10-05 22:13:09', NULL),
(884, 60, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 147, 48, 'no', 'yes', '2018-10-05 22:14:03', NULL),
(885, 148, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 148, 'no', 'yes', '2018-10-05 22:18:10', NULL),
(886, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 158, 93, 'no', 'yes', '2018-10-05 22:19:39', NULL),
(887, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 147, 74, 'no', 'yes', '2018-10-05 22:19:47', NULL),
(888, 93, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 158, 158, 'no', 'yes', '2018-10-05 22:20:46', NULL),
(889, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 108, 'no', 'yes', '2018-10-05 22:25:26', NULL),
(890, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 108, 'no', 'yes', '2018-10-06 13:50:30', NULL),
(891, 62, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 140, 108, 'no', 'yes', '2018-10-06 13:51:16', NULL),
(892, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 126, 'no', 'yes', '2018-10-06 13:54:28', NULL),
(893, 63, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 140, 126, 'no', 'yes', '2018-10-06 13:55:13', NULL),
(894, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 140, 140, 'yes', 'yes', '2018-10-08 00:22:57', NULL),
(895, 64, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 140, 159, 'no', 'yes', '2018-10-08 00:31:24', NULL),
(896, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 159, 159, 'no', 'yes', '2018-10-08 00:31:28', NULL),
(897, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 140, 140, 'no', 'yes', '2018-10-08 00:33:08', NULL),
(898, 57, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 57, 'no', 'yes', '2018-10-08 12:57:39', NULL),
(899, 147, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 147, 'yes', 'yes', '2018-10-08 13:00:35', NULL),
(900, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 57, 57, 'no', 'yes', '2018-10-08 13:06:32', NULL),
(901, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 160, 160, 'no', 'yes', '2018-10-08 13:13:25', NULL),
(902, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-08 13:16:52', NULL),
(903, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-08 13:17:06', NULL),
(907, 160, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 113, 160, 'yes', 'yes', '2018-10-08 14:32:05', NULL),
(908, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-08 14:37:10', NULL),
(909, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-08 14:48:25', NULL),
(910, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-08 14:50:41', NULL),
(911, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-08 14:51:54', NULL),
(912, 121, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 113, 121, 'no', 'yes', '2018-10-08 14:53:13', NULL),
(913, 160, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 160, 'no', 'yes', '2018-10-08 14:59:12', NULL),
(914, 160, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 57, 57, 'no', 'yes', '2018-10-08 15:08:25', NULL),
(915, 57, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 57, 'no', 'yes', '2018-10-08 15:10:20', NULL),
(916, 57, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 160, 160, 'no', 'yes', '2018-10-08 15:11:01', NULL),
(917, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 54, 75, 'no', 'yes', '2018-10-08 16:32:58', NULL),
(918, 54, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 75, 54, 'no', 'yes', '2018-10-08 16:34:29', NULL),
(919, 59, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 54, 75, 'yes', 'yes', '2018-10-08 16:48:12', NULL),
(920, 60, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 160, 75, 'yes', 'yes', '2018-10-08 16:50:10', NULL),
(921, 160, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 75, 160, 'yes', 'yes', '2018-10-08 16:50:31', NULL),
(922, 61, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 54, 75, 'no', 'yes', '2018-10-08 17:14:52', NULL),
(923, 28, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 160, 75, 'yes', 'yes', '2018-10-08 17:15:56', NULL),
(924, 75, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 75, 160, 'no', 'yes', '2018-10-08 17:16:34', NULL),
(925, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 75, 'no', 'yes', '2018-10-08 17:17:22', NULL),
(926, 29, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 160, 75, 'no', 'yes', '2018-10-08 17:20:42', NULL),
(927, 75, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 75, 160, 'yes', 'yes', '2018-10-08 17:21:12', NULL),
(928, 30, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 160, 62, 'no', 'yes', '2018-10-08 17:21:44', NULL),
(929, 136, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 136, 'no', 'yes', '2018-10-08 17:33:22', NULL),
(930, 31, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 160, 75, 'no', 'yes', '2018-10-08 17:43:15', NULL),
(932, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 93, 'no', 'yes', '2018-10-08 21:50:16', NULL),
(933, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 75, 'no', 'yes', '2018-10-09 15:24:36', NULL),
(934, 57, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 57, 'no', 'yes', '2018-10-09 17:08:35', NULL),
(935, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 93, 'no', 'yes', '2018-10-09 17:10:32', NULL),
(936, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 104, 93, 'no', 'yes', '2018-10-09 17:12:14', NULL),
(937, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-10-09 17:55:16', NULL),
(938, 126, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 104, 126, 'no', 'yes', '2018-10-09 19:23:14', NULL),
(939, 67, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 104, 93, 'no', 'no', '2018-10-09 19:25:16', NULL),
(940, 1, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 94, 94, 'no', 'yes', '2018-10-09 19:59:18', NULL),
(941, 57, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 93, 57, 'no', 'yes', '2018-10-10 17:26:33', NULL),
(942, 57, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 94, 57, 'no', 'yes', '2018-10-10 21:24:52', NULL),
(943, 48, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 93, 48, 'no', 'yes', '2018-10-10 22:09:54', NULL),
(944, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 75, 'no', 'yes', '2018-10-12 11:53:16', NULL),
(945, 62, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 62, 'no', 'yes', '2018-10-12 11:53:40', NULL),
(946, 33, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 160, 104, 'no', 'yes', '2018-10-12 12:09:56', NULL),
(947, 34, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 93, 48, 'no', 'yes', '2018-10-18 17:50:09', NULL),
(948, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 161, 161, 'no', 'yes', '2018-10-30 23:45:08', NULL),
(949, 78, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360&deg;  ', 'experience_match', 'pending', 161, 117, 'no', 'yes', '2018-10-30 23:46:31', NULL),
(950, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 161, 161, 'no', 'yes', '2018-10-31 00:03:38', NULL),
(951, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 162, 162, 'no', 'yes', '2018-10-31 18:45:02', NULL),
(952, 54, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360&deg;  ', 'experience_match', 'pending', 162, 87, 'no', 'yes', '2018-10-31 18:47:48', NULL),
(953, 78, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360&deg;  ', 'experience_match', 'pending', 162, 117, 'no', 'yes', '2018-10-31 18:47:48', NULL),
(954, 111, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360&deg;  ', 'experience_match', 'pending', 162, 161, 'no', 'yes', '2018-10-31 18:47:48', NULL),
(956, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 164, 164, 'yes', 'yes', '2018-10-31 19:27:06', NULL),
(957, 35, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 164, 162, 'no', 'yes', '2018-10-31 19:56:06', NULL),
(958, 164, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 164, 'yes', 'yes', '2018-10-31 20:30:54', NULL),
(959, 162, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:50:23', NULL),
(960, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:50:51', NULL),
(961, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:50:55', NULL),
(962, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:50:58', NULL),
(963, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:50:58', NULL),
(964, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:50:58', NULL),
(965, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:51:00', NULL),
(966, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:51:02', NULL),
(967, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:51:02', NULL),
(968, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:51:03', NULL),
(969, 2, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:51:04', NULL),
(970, 162, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 164, 162, 'no', 'yes', '2018-11-01 18:51:27', NULL),
(971, 147, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 147, 'no', 'yes', '2018-11-01 18:57:00', NULL),
(972, 4, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 50, 50, 'yes', 'yes', '2018-11-02 14:45:14', NULL),
(973, 104, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 79, 104, 'no', 'yes', '2018-11-13 18:44:29', NULL),
(974, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 79, 79, 'no', 'yes', '2018-11-13 19:00:49', NULL),
(975, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 160, 160, 'no', 'yes', '2018-11-13 19:01:38', NULL),
(977, 7, '{NAME} has recommended you to apply for {JOB} job.', 'job_reccomendation', 'pending', 160, 104, 'no', 'no', '2018-11-13 19:05:02', NULL),
(978, 104, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 104, 'no', 'yes', '2018-11-13 19:27:48', NULL),
(979, 68, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 160, 104, 'no', 'yes', '2018-11-13 19:28:34', NULL),
(999, 121, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 79, 121, 'yes', 'yes', '2018-11-14 13:11:37', NULL),
(1000, 79, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 79, 'no', 'yes', '2018-11-14 13:12:20', NULL),
(1002, 147, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 79, 147, 'no', 'yes', '2018-11-14 13:45:13', NULL),
(1003, 148, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 121, 148, 'no', 'yes', '2018-11-14 13:45:41', NULL),
(1004, 36, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 79, 121, 'yes', 'yes', '2018-11-14 13:46:22', NULL),
(1005, 121, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 121, 79, 'no', 'yes', '2018-11-14 13:46:43', NULL),
(1006, 121, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 96, 121, 'yes', 'yes', '2018-11-15 11:58:15', NULL),
(1007, 96, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 121, 96, 'no', 'yes', '2018-11-15 11:59:51', NULL),
(1015, 74, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 54, 74, 'no', 'yes', '2018-11-15 13:55:38', NULL),
(1016, 83, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 54, 83, 'no', 'yes', '2018-11-15 13:56:40', NULL),
(1018, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 166, 166, 'yes', 'yes', '2018-11-16 13:45:38', NULL),
(1019, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 167, 167, 'yes', 'yes', '2018-11-16 13:47:52', NULL),
(1020, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 168, 168, 'yes', 'yes', '2018-11-16 13:50:58', NULL),
(1021, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 14:23:48', NULL),
(1022, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 14:24:58', NULL),
(1023, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 14:27:53', NULL),
(1024, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 14:56:15', NULL),
(1025, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 14:56:49', NULL),
(1026, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 15:00:47', NULL),
(1027, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 15:13:24', NULL),
(1028, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 15:14:01', NULL),
(1029, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 15:16:00', NULL),
(1030, 5, '$10 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 168, 168, 'yes', 'yes', '2018-11-16 15:16:28', NULL),
(1031, 160, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 167, 160, 'no', 'yes', '2018-11-16 20:15:53', NULL),
(1032, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 169, 169, 'yes', 'yes', '2018-11-19 11:58:45', NULL),
(1033, 136, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 169, 136, 'no', 'yes', '2018-11-19 12:12:36', NULL),
(1034, 169, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 169, 169, 'no', 'yes', '2018-11-19 12:22:13', NULL),
(1041, 160, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 167, 160, 'no', 'yes', '2018-11-19 14:03:56', NULL),
(1043, 6, '$20 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 169, 169, 'yes', 'yes', '2018-11-19 15:06:00', NULL),
(1044, 6, '$20 has been deducted from your total Credits.', 'my_credit_notification', 'pending', 169, 169, 'yes', 'yes', '2018-11-19 15:06:36', NULL),
(1045, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 171, 171, 'yes', 'yes', '2018-11-19 15:26:25', NULL),
(1049, 62, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 171, 62, 'no', 'yes', '2018-11-19 15:49:38', NULL),
(1050, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 173, 173, 'no', 'yes', '2018-11-19 20:43:06', NULL),
(1051, 160, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 171, 160, 'no', 'yes', '2018-11-19 21:21:17', NULL),
(1052, 57, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 171, 57, 'no', 'yes', '2018-11-19 22:09:22', NULL),
(1054, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 93, 'no', 'yes', '2018-11-21 00:36:08', NULL),
(1055, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 126, 'no', 'yes', '2018-11-21 00:42:14', NULL),
(1056, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 126, 'no', 'yes', '2018-11-21 00:42:27', NULL),
(1057, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 126, 'no', 'yes', '2018-11-21 00:42:46', NULL),
(1058, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 108, 'no', 'yes', '2018-11-21 00:42:57', NULL),
(1059, 147, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 147, 'no', 'yes', '2018-11-21 00:43:02', NULL),
(1060, 147, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 147, 'no', 'yes', '2018-11-21 00:43:10', NULL),
(1061, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 126, 'no', 'yes', '2018-11-21 00:44:30', NULL),
(1062, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 126, 'no', 'yes', '2018-11-21 00:45:31', NULL),
(1063, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 108, 'no', 'yes', '2018-11-21 00:45:44', NULL),
(1064, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 108, 'no', 'yes', '2018-11-21 00:45:53', NULL),
(1065, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 108, 'no', 'yes', '2018-11-21 00:46:31', NULL),
(1066, 57, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 57, 'no', 'yes', '2018-11-21 00:46:42', NULL),
(1067, 57, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 57, 'no', 'yes', '2018-11-21 00:46:46', NULL),
(1068, 89, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 140, 94, 'no', 'yes', '2018-11-21 01:20:02', NULL),
(1069, 64, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 171, 79, 'yes', 'yes', '2018-11-21 13:50:54', NULL),
(1070, 171, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 79, 171, 'no', 'yes', '2018-11-21 13:51:22', NULL),
(1071, 37, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 171, 79, 'yes', 'yes', '2018-11-21 17:36:16', NULL),
(1072, 65, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 171, 79, 'yes', 'yes', '2018-11-21 17:37:06', NULL),
(1073, 66, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 171, 79, 'yes', 'yes', '2018-11-21 17:48:21', NULL),
(1077, 108, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 108, 'no', 'yes', '2018-11-21 20:48:12', NULL),
(1078, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 93, 'no', 'yes', '2018-11-21 21:17:34', NULL),
(1079, 136, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 136, 'no', 'yes', '2018-11-21 21:19:23', NULL),
(1080, 90, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 140, 143, 'no', 'yes', '2018-11-21 21:24:15', NULL),
(1081, 91, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 140, 139, 'no', 'yes', '2018-11-21 21:24:19', NULL),
(1082, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 162, 162, 'no', 'yes', '2018-11-21 22:12:13', NULL),
(1083, 1, 'Congratulations on completing your profile! Give 50 360&deg;s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 162, 162, 'no', 'yes', '2018-11-21 22:13:19', NULL),
(1086, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 171, 126, 'no', 'yes', '2018-11-22 12:32:21', NULL),
(1087, 40, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 171, 171, 'yes', 'yes', '2018-11-22 15:11:38', NULL),
(1088, 171, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 171, 171, 'no', 'yes', '2018-11-22 15:12:49', NULL),
(1090, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 174, 174, 'yes', 'yes', '2018-11-23 12:22:20', NULL),
(1091, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 175, 175, 'no', 'yes', '2018-11-23 12:22:29', NULL),
(1092, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 176, 176, 'no', 'yes', '2018-11-23 12:56:38', NULL),
(1095, 42, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 175, 174, 'yes', 'yes', '2018-11-23 13:04:21', NULL),
(1096, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 175, 'no', 'yes', '2018-11-23 13:04:34', NULL),
(1097, 43, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 175, 175, 'no', 'no', '2018-11-23 13:08:36', NULL),
(1098, 44, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 174, 175, 'no', 'no', '2018-11-23 13:09:35', NULL),
(1099, 171, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 171, 'no', 'yes', '2018-11-23 14:25:24', NULL),
(1100, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 177, 177, 'no', 'yes', '2018-11-23 14:31:15', NULL),
(1101, 113, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 175, 113, 'no', 'yes', '2018-11-23 14:52:57', NULL),
(1102, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 175, 126, 'no', 'yes', '2018-11-23 15:53:04', NULL),
(1103, 177, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 175, 177, 'no', 'yes', '2018-11-23 15:54:24', NULL),
(1104, 76, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 175, 177, 'no', 'yes', '2018-11-23 15:55:18', NULL),
(1105, 166, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 166, 'no', 'yes', '2018-11-23 17:14:24', NULL),
(1106, 169, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 169, 'no', 'yes', '2018-11-23 17:23:54', NULL),
(1107, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 178, 178, 'no', 'yes', '2018-11-23 17:28:17', NULL),
(1108, 78, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360&deg;  ', 'experience_match', 'pending', 178, 117, 'no', 'yes', '2018-11-23 17:45:41', NULL),
(1109, 111, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360&deg;  ', 'experience_match', 'pending', 178, 161, 'no', 'yes', '2018-11-23 17:45:41', NULL),
(1110, 164, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 164, 'no', 'yes', '2018-11-23 18:14:30', NULL),
(1111, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 126, 'no', 'yes', '2018-11-23 21:41:21', NULL),
(1112, 94, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 94, 'no', 'yes', '2018-11-25 21:06:58', NULL),
(1113, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 93, 'no', 'yes', '2018-11-25 21:10:07', NULL),
(1114, 77, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 175, 179, 'yes', 'yes', '2018-11-26 15:06:47', NULL),
(1115, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 179, 179, 'no', 'yes', '2018-11-26 15:06:52', NULL),
(1116, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 179, 175, 'no', 'yes', '2018-11-26 15:11:38', NULL),
(1117, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 180, 180, 'no', 'yes', '2018-11-26 15:21:44', NULL),
(1118, 45, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 174, 174, 'yes', 'no', '2018-11-26 15:33:41', NULL),
(1119, 46, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 180, 175, 'no', 'no', '2018-11-26 15:39:42', NULL),
(1120, 47, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 180, 179, 'no', 'no', '2018-11-26 15:43:19', NULL),
(1121, 48, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 180, 180, 'no', 'no', '2018-11-26 15:44:06', NULL),
(1122, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 126, 'no', 'yes', '2018-11-26 17:48:52', NULL),
(1123, 78, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 162, 181, 'no', 'yes', '2018-11-26 17:58:17', NULL),
(1124, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 181, 181, 'no', 'yes', '2018-11-26 17:58:21', NULL),
(1125, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 126, 'no', 'yes', '2018-11-26 18:22:17', NULL),
(1126, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 175, 'no', 'yes', '2018-11-27 11:59:01', NULL),
(1127, 79, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 160, 175, 'no', 'yes', '2018-11-27 11:59:24', NULL),
(1128, 175, 'Someone just viewed your profile. Subscribe to 360° Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 79, 175, 'no', 'yes', '2018-11-27 12:01:39', NULL),
(1129, 80, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 79, 175, 'no', 'yes', '2018-11-27 12:02:03', NULL),
(1130, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 177, 175, 'no', 'yes', '2018-11-27 12:02:52', NULL),
(1131, 81, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 177, 175, 'no', 'yes', '2018-11-27 12:03:21', NULL),
(1132, NULL, 'Congratulations on getting 3 360°. You have attained Bronze credibility.', 'credibility', 'pending', 177, 175, 'no', 'yes', '2018-11-27 12:03:22', NULL),
(1133, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 166, 175, 'no', 'yes', '2018-11-27 12:07:08', NULL),
(1134, 82, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 166, 175, 'no', 'yes', '2018-11-27 12:08:43', NULL),
(1135, 175, 'Someone just viewed your profile. Subscribe to 360° Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 57, 175, 'no', 'yes', '2018-11-27 12:12:21', NULL),
(1136, 83, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 57, 175, 'no', 'yes', '2018-11-27 12:13:02', NULL),
(1137, NULL, 'Congratulations on getting 5 360°. You have attained Silver credibility.', 'credibility', 'pending', 57, 175, 'no', 'yes', '2018-11-27 12:13:02', NULL),
(1138, 174, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 175, 174, 'yes', 'yes', '2018-11-27 15:13:59', NULL),
(1139, 140, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 140, 'no', 'yes', '2018-11-27 15:16:21', NULL),
(1140, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 126, 'no', 'yes', '2018-11-27 16:23:46', NULL),
(1141, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 93, 'no', 'yes', '2018-11-27 16:23:47', NULL),
(1142, 49, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 49, 'no', 'yes', '2018-11-27 16:24:13', NULL),
(1143, 75, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 75, 'no', 'yes', '2018-11-27 16:24:14', NULL),
(1144, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 175, 'yes', 'yes', '2018-11-27 16:25:50', NULL),
(1145, 167, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 167, 'no', 'yes', '2018-11-27 16:25:53', NULL),
(1146, 171, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 160, 171, 'no', 'yes', '2018-11-27 16:26:14', NULL),
(1147, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 182, 182, 'yes', 'yes', '2018-11-27 17:53:24', NULL),
(1148, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 183, 183, 'yes', 'yes', '2018-11-27 17:58:26', NULL),
(1150, 183, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 182, 183, 'yes', 'yes', '2018-11-27 18:07:18', NULL),
(1151, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 184, 184, 'yes', 'yes', '2018-11-27 20:50:58', NULL),
(1152, 182, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 184, 182, 'yes', 'yes', '2018-11-27 20:52:36', NULL),
(1153, 184, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 182, 184, 'yes', 'yes', '2018-11-27 20:53:02', NULL),
(1154, 175, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 175, 'yes', 'yes', '2018-11-28 13:56:54', NULL),
(1155, 174, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 174, 'yes', 'yes', '2018-11-28 13:56:58', NULL),
(1156, 174, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 174, 175, 'yes', 'yes', '2018-11-28 13:58:44', NULL),
(1157, 174, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 175, 174, 'yes', 'yes', '2018-11-28 14:01:07', NULL),
(1158, 95, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 182, 95, 'no', 'yes', '2018-11-28 20:09:11', NULL),
(1159, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 185, 185, 'no', 'yes', '2018-11-29 21:31:19', NULL),
(1160, 94, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 94, 'no', 'yes', '2018-11-29 21:38:39', NULL),
(1161, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 93, 'no', 'yes', '2018-11-29 21:47:56', NULL),
(1162, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 126, 'no', 'yes', '2018-11-29 21:48:37', NULL),
(1163, 126, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 126, 'no', 'yes', '2018-11-29 21:56:33', NULL),
(1164, 148, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 148, 'no', 'yes', '2018-11-29 21:56:57', NULL),
(1165, 178, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 178, 'no', 'yes', '2018-11-29 22:21:37', NULL),
(1166, 162, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 162, 'yes', 'yes', '2018-11-29 22:23:18', NULL),
(1167, 164, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 164, 'no', 'yes', '2018-11-29 22:24:38', NULL),
(1168, 148, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 166, 148, 'no', 'yes', '2018-11-30 11:59:39', NULL),
(1169, 148, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 148, 'no', 'yes', '2018-11-30 14:21:01', NULL),
(1170, 164, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 162, 164, 'no', 'yes', '2018-11-30 14:25:35', NULL),
(1171, 148, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 182, 148, 'no', 'yes', '2018-11-30 18:13:07', NULL),
(1172, 84, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 182, 187, 'no', 'yes', '2018-11-30 18:33:38', NULL),
(1173, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 187, 187, 'no', 'yes', '2018-11-30 18:33:42', NULL),
(1174, 85, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 182, 188, 'no', 'yes', '2018-11-30 18:34:51', NULL),
(1175, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 188, 188, 'no', 'yes', '2018-11-30 18:34:55', NULL),
(1176, 167, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 166, 167, 'no', 'yes', '2018-11-30 20:20:07', NULL),
(1177, 113, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 113, 'no', 'yes', '2018-12-03 12:43:01', NULL),
(1178, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 140, 93, 'no', 'yes', '2018-12-03 12:43:21', NULL),
(1179, 93, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 174, 93, 'no', 'yes', '2018-12-03 19:54:06', NULL);
INSERT INTO `notifications` (`id`, `reference_id`, `message`, `type`, `type_status`, `sender_id`, `receiver_id`, `read_status`, `email_sent`, `created_at`, `updated_at`) VALUES
(1180, 123, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 123, 'no', 'yes', '2018-12-03 21:56:02', NULL),
(1181, 164, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 166, 164, 'no', 'yes', '2018-12-04 17:20:54', NULL),
(1182, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 189, 189, 'no', 'yes', '2018-12-04 17:23:48', NULL),
(1183, 189, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 166, 189, 'no', 'yes', '2018-12-04 17:25:49', NULL),
(1184, 86, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 166, 189, 'no', 'yes', '2018-12-04 17:26:23', NULL),
(1185, 148, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 164, 148, 'no', 'yes', '2018-12-04 20:48:24', NULL),
(1186, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 190, 190, 'no', 'yes', '2018-12-07 13:16:09', NULL),
(1187, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 191, 191, 'no', 'yes', '2018-12-07 13:17:46', NULL),
(1188, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 192, 192, 'no', 'yes', '2018-12-07 13:18:49', NULL),
(1189, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 193, 193, 'no', 'yes', '2018-12-07 13:19:49', NULL),
(1190, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 194, 194, 'no', 'yes', '2018-12-07 13:21:27', NULL),
(1191, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 195, 195, 'no', 'yes', '2018-12-07 13:22:48', NULL),
(1192, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 196, 196, 'no', 'yes', '2018-12-07 13:24:11', NULL),
(1193, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!', 'signup_notification', 'accepted', 197, 197, 'no', 'yes', '2018-12-07 13:26:38', NULL),
(1194, 190, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 194, 190, 'no', 'yes', '2018-12-07 13:59:09', NULL),
(1195, 87, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 194, 190, 'no', 'yes', '2018-12-07 13:59:42', NULL),
(1196, 191, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 194, 191, 'no', 'yes', '2018-12-07 14:25:58', NULL),
(1197, 88, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 194, 191, 'no', 'yes', '2018-12-07 14:26:27', NULL),
(1198, 191, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 195, 191, 'no', 'yes', '2018-12-07 14:27:35', NULL),
(1199, 89, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 195, 191, 'no', 'yes', '2018-12-07 14:28:01', NULL),
(1200, 191, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 196, 191, 'no', 'yes', '2018-12-07 14:29:50', NULL),
(1201, 90, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 196, 191, 'no', 'yes', '2018-12-07 14:30:16', NULL),
(1202, NULL, 'Congratulations on getting 3 360°. You have attained Bronze credibility.', 'credibility', 'pending', 196, 191, 'no', 'yes', '2018-12-07 14:30:16', NULL),
(1203, 191, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 197, 191, 'no', 'yes', '2018-12-07 14:46:26', NULL),
(1204, 91, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 197, 191, 'no', 'yes', '2018-12-07 14:46:55', NULL),
(1205, 193, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 195, 193, 'no', 'yes', '2018-12-07 15:32:07', NULL),
(1206, 92, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 195, 193, 'no', 'yes', '2018-12-07 15:32:54', NULL),
(1207, 193, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 194, 193, 'no', 'yes', '2018-12-07 15:35:42', NULL),
(1208, 93, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 194, 193, 'no', 'yes', '2018-12-07 15:36:05', NULL),
(1209, 193, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 196, 193, 'no', 'yes', '2018-12-07 15:36:41', NULL),
(1210, 94, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 196, 193, 'no', 'yes', '2018-12-07 15:37:16', NULL),
(1211, NULL, 'Congratulations on getting 3 360°. You have attained Bronze credibility.', 'credibility', 'pending', 196, 193, 'no', 'yes', '2018-12-07 15:37:16', NULL),
(1212, 192, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 196, 192, 'no', 'yes', '2018-12-07 15:38:50', NULL),
(1213, 95, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 196, 192, 'no', 'yes', '2018-12-07 15:39:17', NULL),
(1214, 192, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 194, 192, 'no', 'yes', '2018-12-07 15:40:32', NULL),
(1215, 96, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 194, 192, 'no', 'yes', '2018-12-07 15:41:06', NULL),
(1216, 192, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 195, 192, 'no', 'yes', '2018-12-07 15:42:26', NULL),
(1217, 97, '{SENDER} has given you a 360°', 'rating_received', 'accepted', 195, 192, 'no', 'yes', '2018-12-07 15:43:12', NULL),
(1218, NULL, 'Congratulations on getting 3 360°. You have attained Bronze credibility.', 'credibility', 'pending', 195, 192, 'no', 'yes', '2018-12-07 15:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('email','daily_digest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(3, 48, 'email', NULL, NULL),
(4, 49, 'email', NULL, NULL),
(5, 50, 'email', NULL, NULL),
(9, 54, 'email', NULL, NULL),
(11, 56, 'email', NULL, NULL),
(12, 57, 'email', NULL, '2018-10-03 18:41:37'),
(14, 58, 'email', NULL, NULL),
(16, 59, 'email', NULL, '2018-05-22 17:24:57'),
(19, 62, 'email', NULL, NULL),
(20, 63, 'email', NULL, NULL),
(29, 72, 'email', NULL, NULL),
(31, 9, 'daily_digest', '2018-05-21 21:05:00', '2018-05-21 21:05:00'),
(32, 74, 'email', NULL, NULL),
(33, 75, 'email', NULL, NULL),
(34, 76, 'email', NULL, NULL),
(35, 77, 'email', NULL, NULL),
(37, 79, 'email', NULL, NULL),
(38, 80, 'email', NULL, NULL),
(39, 81, 'email', NULL, NULL),
(40, 82, 'email', NULL, NULL),
(41, 83, 'email', NULL, NULL),
(44, 86, 'email', NULL, NULL),
(45, 87, 'email', NULL, NULL),
(46, 88, 'email', NULL, NULL),
(47, 89, 'email', NULL, NULL),
(48, 90, 'email', NULL, NULL),
(50, 92, 'email', NULL, NULL),
(51, 93, 'daily_digest', NULL, '2018-09-06 17:40:21'),
(52, 94, 'email', NULL, NULL),
(53, 96, 'email', NULL, NULL),
(58, 104, 'email', NULL, NULL),
(59, 108, 'email', NULL, NULL),
(62, 112, 'email', NULL, NULL),
(63, 113, 'email', NULL, NULL),
(65, 116, 'email', NULL, NULL),
(67, 121, 'email', NULL, NULL),
(69, 123, 'email', NULL, NULL),
(70, 126, 'email', NULL, NULL),
(80, 137, 'email', NULL, NULL),
(82, 139, 'email', NULL, NULL),
(83, 140, 'email', NULL, NULL),
(84, 141, 'email', NULL, NULL),
(85, 144, 'email', NULL, NULL),
(87, 147, 'email', NULL, NULL),
(88, 148, 'email', NULL, NULL),
(91, 153, 'email', NULL, NULL),
(92, 154, 'email', NULL, NULL),
(94, 156, 'email', NULL, NULL),
(95, 158, 'email', NULL, NULL),
(96, 160, 'email', NULL, NULL),
(97, 161, 'email', NULL, NULL),
(98, 162, 'email', NULL, NULL),
(100, 164, 'email', NULL, NULL),
(102, 166, 'email', NULL, NULL),
(103, 167, 'email', NULL, NULL),
(104, 168, 'email', NULL, NULL),
(105, 169, 'email', NULL, NULL),
(107, 171, 'email', NULL, NULL),
(109, 173, 'email', NULL, NULL),
(110, 174, 'email', NULL, NULL),
(111, 175, 'email', NULL, NULL),
(112, 176, 'email', NULL, NULL),
(113, 177, 'email', NULL, NULL),
(114, 178, 'email', NULL, NULL),
(115, 180, 'email', NULL, NULL),
(116, 182, 'daily_digest', NULL, '2018-11-27 20:48:24'),
(117, 183, 'email', NULL, NULL),
(118, 184, 'email', NULL, NULL),
(119, 185, 'email', NULL, NULL),
(120, 189, 'email', NULL, NULL),
(121, 190, 'email', NULL, NULL),
(122, 191, 'email', NULL, NULL),
(123, 192, 'email', NULL, NULL),
(124, 193, 'email', NULL, NULL),
(125, 194, 'email', NULL, NULL),
(126, 195, 'email', NULL, NULL),
(127, 196, 'email', NULL, NULL),
(128, 197, 'email', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_template`
--

CREATE TABLE `notification_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_template`
--

INSERT INTO `notification_template` (`id`, `title`, `message`) VALUES
(1, 'rating_received', '{SENDER} has given you a 360°'),
(2, 'dispute_rating', '{SENDER} has disputed your review.'),
(3, 'short_rating', 'Invite your co-workers/ customers to rate you to have your score updated'),
(4, 'invitation_received', '{SENDER} has sent you an invitation to connect.'),
(5, 'recommendation_notification', '{SENDER} has recommended you to rate {RATE}'),
(6, 'signup_notification', 'Thank you for signing up with 360 Reference. Start by giving or asking for 360°. Have fun!'),
(7, 'expletive_review', 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review'),
(8, 'connection_notification', '{SENDER} has invite you to connect {SITENAME}'),
(9, 'connection_request_accepted', '{SENDER} has accepted your connection request.'),
(10, 'review_approved', 'Admin has approved your rating on {SENDER}\'s profile.'),
(11, 'invite_to_rate', '{SENDER} has invite you to rate.'),
(12, 'job_viewing_notification', '{NAME} has viewed your job {PROFILE}.'),
(13, 'job_reccomendation', '{NAME} has recommended you to apply for {JOB} job.'),
(14, 'job_profile_match', '{JOB} job is posted matching to your profile.'),
(15, 'user_attribute_notification', 'Job is posted related to your profile'),
(16, 'get_to_rate', '{SENDER} has invited to rate .'),
(17, 'job_viewing_notification', '{NAME} has viewed your job {PROFILE}'),
(18, 'individual_profile', 'You have completed {PROGRESS}% of your profile. Complete your profile to get more views and connections!!!'),
(19, 'unpaid_profile_view', 'Someone just viewed your profile. Subscribe to 360° Individual Premium to find out who\'s interested!'),
(20, 'paid_profile_view', '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!'),
(21, 'credibility', 'Congratulations on getting {AMOUNT} 360°. You have attained {TYPE} credibility.'),
(22, 'unpaid_profile_view_company', 'A corporate just viewed your profile. Subscribe to 360° Individual Premium to find out who\'s interested!');

-- --------------------------------------------------------

--
-- Table structure for table `operating_hours`
--

CREATE TABLE `operating_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_status` enum('open','closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_time` text COLLATE utf8mb4_unicode_ci,
  `open_meridian` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_time` text COLLATE utf8mb4_unicode_ci,
  `close_meridian` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operating_hours`
--

INSERT INTO `operating_hours` (`id`, `user_id`, `day`, `day_status`, `open_time`, `open_meridian`, `close_time`, `close_meridian`, `created_at`, `updated_at`) VALUES
(75, 2, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:55:19', '2018-04-23 04:55:19'),
(76, 2, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:55:19', '2018-04-23 04:55:19'),
(77, 2, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:55:19', '2018-04-23 04:55:19'),
(78, 2, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:55:19', '2018-04-23 04:55:19'),
(79, 2, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:55:19', '2018-04-23 04:55:19'),
(80, 2, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:55:19', '2018-04-23 04:55:19'),
(81, 50, NULL, 'closed', '1:00', 'AM', '1:00', 'PM', '2018-04-23 04:57:34', '2018-04-23 04:57:34'),
(82, 50, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:57:34', '2018-04-23 04:57:34'),
(83, 50, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:57:34', '2018-04-23 04:57:34'),
(84, 50, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:57:34', '2018-04-23 04:57:34'),
(85, 50, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:57:34', '2018-04-23 04:57:34'),
(86, 50, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 04:57:34', '2018-04-23 04:57:34'),
(123, 56, 'Monday', 'open', '1:00', 'AM', '3:00', 'AM', '2018-04-23 11:33:42', '2018-04-23 11:33:42'),
(124, 56, 'Tuesday', 'open', '1:00', 'AM', '1:00', 'AM', '2018-04-23 11:33:42', '2018-04-23 11:33:42'),
(125, 56, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 11:33:42', '2018-04-23 11:33:42'),
(126, 56, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 11:33:42', '2018-04-23 11:33:42'),
(127, 56, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 11:33:42', '2018-04-23 11:33:42'),
(128, 56, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-23 11:33:42', '2018-04-23 11:33:42'),
(147, 58, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-24 19:57:49', '2018-04-24 19:57:49'),
(148, 58, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-24 19:57:49', '2018-04-24 19:57:49'),
(149, 58, 'Wednesday', 'open', '10:00', 'AM', '8:00', 'PM', '2018-04-24 19:57:49', '2018-04-24 19:57:49'),
(150, 58, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-24 19:57:49', '2018-04-24 19:57:49'),
(151, 58, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-24 19:57:49', '2018-04-24 19:57:49'),
(152, 58, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-04-24 19:57:49', '2018-04-24 19:57:49'),
(267, 82, 'Monday', 'open', '1:00', 'AM', '2:00', 'AM', '2018-06-02 14:32:43', '2018-06-02 14:32:43'),
(268, 82, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-06-02 14:32:43', '2018-06-02 14:32:43'),
(269, 82, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-06-02 14:32:43', '2018-06-02 14:32:43'),
(270, 82, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-06-02 14:32:43', '2018-06-02 14:32:43'),
(271, 82, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-06-02 14:32:43', '2018-06-02 14:32:43'),
(272, 82, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-06-02 14:32:43', '2018-06-02 14:32:43'),
(321, 148, 'Monday', 'open', '1:00', 'AM', '2:00', 'AM', '2018-10-03 19:03:05', '2018-10-03 19:03:05'),
(322, 148, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-03 19:03:05', '2018-10-03 19:03:05'),
(323, 148, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-03 19:03:05', '2018-10-03 19:03:05'),
(324, 148, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-03 19:03:05', '2018-10-03 19:03:05'),
(325, 148, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-03 19:03:05', '2018-10-03 19:03:05'),
(326, 148, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-03 19:03:05', '2018-10-03 19:03:05'),
(465, 75, 'Monday', 'open', '1:00', 'AM', '9:00', 'AM', '2018-10-08 15:44:17', '2018-10-08 15:44:17'),
(466, 75, 'Tuesday', 'open', '2:00', 'AM', '4:00', 'AM', '2018-10-08 15:44:17', '2018-10-08 15:44:17'),
(467, 75, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:44:17', '2018-10-08 15:44:17'),
(468, 75, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:44:17', '2018-10-08 15:44:17'),
(469, 75, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:44:17', '2018-10-08 15:44:17'),
(470, 75, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:44:17', '2018-10-08 15:44:17'),
(489, 54, 'Monday', 'open', '6:00', 'AM', '10:00', 'AM', '2018-10-08 15:53:17', '2018-10-08 15:53:17'),
(490, 54, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:53:17', '2018-10-08 15:53:17'),
(491, 54, 'Wednesday', 'open', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:53:17', '2018-10-08 15:53:17'),
(492, 54, 'Thursday', 'open', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:53:17', '2018-10-08 15:53:17'),
(493, 54, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:53:17', '2018-10-08 15:53:17'),
(494, 54, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-10-08 15:53:17', '2018-10-08 15:53:17'),
(501, 164, 'Monday', 'open', '9:00', 'AM', '6:00', 'PM', '2018-11-01 18:36:18', '2018-11-01 18:36:18'),
(502, 164, 'Tuesday', 'open', '9:00', 'AM', '6:00', 'PM', '2018-11-01 18:36:18', '2018-11-01 18:36:18'),
(503, 164, 'Wednesday', 'open', '9:00', 'AM', '6:00', 'PM', '2018-11-01 18:36:18', '2018-11-01 18:36:18'),
(504, 164, 'Thursday', 'open', '9:00', 'AM', '6:00', 'PM', '2018-11-01 18:36:18', '2018-11-01 18:36:18'),
(505, 164, 'Friday', 'open', '9:00', 'AM', '6:00', 'PM', '2018-11-01 18:36:18', '2018-11-01 18:36:18'),
(506, 164, NULL, 'closed', '1:00', 'AM', '1:00', 'PM', '2018-11-01 18:36:18', '2018-11-01 18:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `password_resets_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`password_resets_id`, `user_id`, `email`, `token`, `created_at`) VALUES
(10, 62, 'ankitjaiswal+1@singsys.com', 'NjIjI0FaTzVUUzVGIyMyMDE4MDUxMTAyNDg1NA==', '2018-05-11 14:48:56'),
(18, 87, 'pankaj@singsys.com', 'ODcjIzVLOFBIRUgzIyMyMDE4MDcyNTAyNTcwMA==', '2018-07-25 14:57:02'),
(19, 105, 'ankitjaiswal+nonuser@singsys.com', 'MTA1IyM5RUVUSTJXRiMjMjAxODA3MzEwODU3NTU=', '2018-07-31 20:57:57'),
(20, 115, 'preetisingh+1@singsys.com', 'MTE1IyNJNEwxU1JUOSMjMjAxODA4MDIwNzEzMTM=', '2018-08-02 19:13:16'),
(25, 123, 'ngshiyin@gmail.com', 'MTIzIyNBNDBJMUlQOSMjMjAxODA4MTMwMzU5NDY=', '2018-08-13 15:59:49'),
(28, 57, 'ankitjaiswal+ind@singsys.com', 'NTcjI1dVNU1ERERZIyMyMDE4MTAwMzA5NDcyNw==', '2018-10-03 21:47:32'),
(30, 93, 'raveena+individual@singsys.com', 'OTMjI1A4WDQ0VUJEIyMyMDE4MTAwODA2MjMxMg==', '2018-10-08 18:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `pending_same_company_notifications`
--

CREATE TABLE `pending_same_company_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pending_same_company_notifications`
--

INSERT INTO `pending_same_company_notifications` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 36, NULL, NULL),
(13, 39, NULL, NULL),
(16, 44, NULL, NULL),
(18, 48, NULL, NULL),
(22, 57, NULL, NULL),
(23, 59, NULL, NULL),
(25, 63, NULL, NULL),
(27, 74, NULL, NULL),
(28, 77, NULL, NULL),
(30, 79, NULL, NULL),
(31, 81, NULL, NULL),
(32, 83, NULL, NULL),
(33, 87, NULL, NULL),
(34, 89, NULL, NULL),
(35, 90, NULL, NULL),
(37, 93, NULL, NULL),
(38, 96, NULL, NULL),
(41, 104, NULL, NULL),
(42, 108, NULL, NULL),
(45, 112, NULL, NULL),
(48, 121, NULL, NULL),
(49, 123, NULL, NULL),
(50, 126, NULL, NULL),
(51, 137, NULL, NULL),
(53, 140, NULL, NULL),
(54, 144, NULL, NULL),
(56, 147, NULL, NULL),
(58, 154, NULL, NULL),
(60, 158, NULL, NULL),
(61, 160, NULL, NULL),
(62, 161, NULL, NULL),
(63, 162, NULL, NULL),
(65, 166, NULL, NULL),
(66, 167, NULL, NULL),
(68, 171, NULL, NULL),
(69, 175, NULL, NULL),
(70, 177, NULL, NULL),
(71, 178, NULL, NULL),
(72, 182, NULL, NULL),
(73, 189, NULL, NULL),
(74, 194, NULL, NULL),
(75, 195, NULL, NULL),
(76, 196, NULL, NULL),
(77, 197, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_analytics`
--

CREATE TABLE `profile_analytics` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_analytics`
--

INSERT INTO `profile_analytics` (`id`, `user_id`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 147, 157, '2018-10-05 19:03:28', '2018-10-05 19:03:28'),
(2, 148, 157, '2018-10-05 19:05:33', '2018-10-05 19:05:33'),
(3, 157, 147, '2018-10-05 19:09:17', '2018-10-05 19:09:17'),
(5, 108, 148, '2018-10-05 19:22:09', '2018-10-05 19:22:09'),
(6, 148, 57, '2018-10-05 19:34:19', '2018-10-05 19:34:19'),
(7, 147, 147, '2018-10-05 19:38:19', '2018-10-05 19:38:19'),
(8, 148, 36, '2018-10-05 20:17:14', '2018-10-05 20:17:14'),
(9, 147, 158, '2018-10-05 20:55:06', '2018-10-05 20:55:06'),
(10, 148, 158, '2018-10-05 20:55:54', '2018-10-05 20:55:54'),
(11, 57, 158, '2018-10-05 20:56:48', '2018-10-05 20:56:48'),
(12, 93, 108, '2018-10-05 21:04:03', '2018-10-05 21:04:03'),
(13, 93, 48, '2018-10-05 21:38:15', '2018-10-05 21:38:15'),
(14, 158, 147, '2018-10-05 22:09:06', '2018-10-05 22:09:06'),
(15, 147, 93, '2018-10-05 22:11:49', '2018-10-05 22:11:49'),
(16, 147, 48, '2018-10-05 22:13:09', '2018-10-05 22:13:09'),
(17, 57, 148, '2018-10-05 22:18:10', '2018-10-05 22:18:10'),
(18, 158, 93, '2018-10-05 22:19:39', '2018-10-05 22:19:39'),
(19, 147, 74, '2018-10-05 22:19:47', '2018-10-05 22:19:47'),
(20, 140, 108, '2018-10-05 22:25:26', '2018-10-05 22:25:26'),
(21, 140, 108, '2018-10-06 13:50:30', '2018-10-06 13:50:30'),
(22, 140, 126, '2018-10-06 13:54:28', '2018-10-06 13:54:28'),
(23, 54, 57, '2018-10-08 12:57:39', '2018-10-08 12:57:39'),
(24, 54, 147, '2018-10-08 13:00:35', '2018-10-08 13:00:35'),
(25, 113, 160, '2018-10-08 14:32:05', '2018-10-08 14:32:05'),
(26, 113, 121, '2018-10-08 14:53:13', '2018-10-08 14:53:13'),
(27, 57, 160, '2018-10-08 14:59:12', '2018-10-08 14:59:12'),
(28, 160, 57, '2018-10-08 15:10:20', '2018-10-08 15:10:20'),
(29, 54, 75, '2018-10-08 16:32:57', '2018-10-08 16:32:57'),
(30, 75, 54, '2018-10-08 16:34:29', '2018-10-08 16:34:29'),
(31, 75, 160, '2018-10-08 16:50:31', '2018-10-08 16:50:31'),
(32, 160, 75, '2018-10-08 17:17:22', '2018-10-08 17:17:22'),
(33, 160, 136, '2018-10-08 17:33:22', '2018-10-08 17:33:22'),
(34, 93, 93, '2018-10-08 21:50:16', '2018-10-08 21:50:16'),
(35, 160, 75, '2018-10-09 15:24:36', '2018-10-09 15:24:36'),
(36, 160, 57, '2018-10-09 17:08:35', '2018-10-09 17:08:35'),
(37, 160, 93, '2018-10-09 17:10:32', '2018-10-09 17:10:32'),
(38, 104, 93, '2018-10-09 17:12:14', '2018-10-09 17:12:14'),
(39, 104, 126, '2018-10-09 19:23:14', '2018-10-09 19:23:14'),
(40, 93, 57, '2018-10-10 17:26:33', '2018-10-10 17:26:33'),
(41, 94, 57, '2018-10-10 21:24:52', '2018-10-10 21:24:52'),
(42, 93, 48, '2018-10-10 22:09:54', '2018-10-10 22:09:54'),
(43, 160, 75, '2018-10-12 11:53:16', '2018-10-12 11:53:16'),
(44, 160, 62, '2018-10-12 11:53:40', '2018-10-12 11:53:40'),
(45, 162, 164, '2018-10-31 20:30:54', '2018-10-31 20:30:54'),
(46, 164, 162, '2018-11-01 18:50:23', '2018-11-01 18:50:23'),
(47, 164, 147, '2018-11-01 18:57:00', '2018-11-01 18:57:00'),
(48, 79, 104, '2018-11-13 18:44:29', '2018-11-13 18:44:29'),
(49, 160, 104, '2018-11-13 19:27:48', '2018-11-13 19:27:48'),
(59, 79, 121, '2018-11-14 13:11:37', '2018-11-14 13:11:37'),
(60, 121, 79, '2018-11-14 13:12:20', '2018-11-14 13:12:20'),
(62, 79, 147, '2018-11-14 13:45:13', '2018-11-14 13:45:13'),
(63, 121, 148, '2018-11-14 13:45:41', '2018-11-14 13:45:41'),
(64, 96, 121, '2018-11-15 11:58:15', '2018-11-15 11:58:15'),
(65, 121, 96, '2018-11-15 11:59:51', '2018-11-15 11:59:51'),
(66, 54, 74, '2018-11-15 13:55:38', '2018-11-15 13:55:38'),
(67, 54, 83, '2018-11-15 13:56:40', '2018-11-15 13:56:40'),
(69, 167, 160, '2018-11-16 20:15:53', '2018-11-16 20:15:53'),
(70, 169, 136, '2018-11-19 12:12:36', '2018-11-19 12:12:36'),
(71, 169, 169, '2018-11-19 12:22:13', '2018-11-19 12:22:13'),
(77, 167, 160, '2018-11-19 14:03:56', '2018-11-19 14:03:56'),
(81, 171, 160, '2018-11-19 21:21:17', '2018-11-19 21:21:17'),
(82, 171, 57, '2018-11-19 22:09:22', '2018-11-19 22:09:22'),
(83, 140, 93, '2018-11-21 00:36:08', '2018-11-21 00:36:08'),
(84, 140, 126, '2018-11-21 00:42:14', '2018-11-21 00:42:14'),
(85, 140, 126, '2018-11-21 00:42:27', '2018-11-21 00:42:27'),
(86, 140, 126, '2018-11-21 00:42:46', '2018-11-21 00:42:46'),
(87, 140, 108, '2018-11-21 00:42:57', '2018-11-21 00:42:57'),
(88, 140, 147, '2018-11-21 00:43:02', '2018-11-21 00:43:02'),
(89, 140, 147, '2018-11-21 00:43:10', '2018-11-21 00:43:10'),
(90, 140, 126, '2018-11-21 00:44:30', '2018-11-21 00:44:30'),
(91, 140, 126, '2018-11-21 00:45:31', '2018-11-21 00:45:31'),
(92, 140, 108, '2018-11-21 00:45:44', '2018-11-21 00:45:44'),
(93, 140, 108, '2018-11-21 00:45:53', '2018-11-21 00:45:53'),
(94, 140, 108, '2018-11-21 00:46:31', '2018-11-21 00:46:31'),
(95, 140, 57, '2018-11-21 00:46:42', '2018-11-21 00:46:42'),
(96, 140, 57, '2018-11-21 00:46:46', '2018-11-21 00:46:46'),
(97, 79, 171, '2018-11-21 13:51:22', '2018-11-21 13:51:22'),
(98, 164, 108, '2018-11-21 20:48:12', '2018-11-21 20:48:12'),
(99, 164, 93, '2018-11-21 21:17:34', '2018-11-21 21:17:34'),
(100, 140, 136, '2018-11-21 21:19:23', '2018-11-21 21:19:23'),
(101, 171, 126, '2018-11-22 12:32:21', '2018-11-22 12:32:21'),
(102, 171, 171, '2018-11-22 15:12:49', '2018-11-22 15:12:49'),
(105, 174, 175, '2018-11-23 13:04:34', '2018-11-23 13:04:34'),
(106, 174, 171, '2018-11-23 14:25:24', '2018-11-23 14:25:24'),
(107, 175, 113, '2018-11-23 14:52:57', '2018-11-23 14:52:57'),
(108, 175, 126, '2018-11-23 15:53:04', '2018-11-23 15:53:04'),
(109, 175, 177, '2018-11-23 15:54:24', '2018-11-23 15:54:24'),
(110, 174, 166, '2018-11-23 17:14:24', '2018-11-23 17:14:24'),
(111, 174, 169, '2018-11-23 17:23:54', '2018-11-23 17:23:54'),
(112, 140, 164, '2018-11-23 18:14:30', '2018-11-23 18:14:30'),
(113, 162, 126, '2018-11-23 21:41:21', '2018-11-23 21:41:21'),
(114, 140, 94, '2018-11-25 21:06:58', '2018-11-25 21:06:58'),
(115, 140, 93, '2018-11-25 21:10:07', '2018-11-25 21:10:07'),
(116, 179, 175, '2018-11-26 15:11:38', '2018-11-26 15:11:38'),
(117, 162, 126, '2018-11-26 17:48:52', '2018-11-26 17:48:52'),
(118, 164, 126, '2018-11-26 18:22:17', '2018-11-26 18:22:17'),
(119, 160, 175, '2018-11-27 11:59:01', '2018-11-27 11:59:01'),
(120, 79, 175, '2018-11-27 12:01:39', '2018-11-27 12:01:39'),
(121, 177, 175, '2018-11-27 12:02:52', '2018-11-27 12:02:52'),
(122, 166, 175, '2018-11-27 12:07:08', '2018-11-27 12:07:08'),
(123, 57, 175, '2018-11-27 12:12:21', '2018-11-27 12:12:21'),
(124, 175, 174, '2018-11-27 15:13:59', '2018-11-27 15:13:59'),
(125, 160, 140, '2018-11-27 15:16:21', '2018-11-27 15:16:21'),
(126, 160, 126, '2018-11-27 16:23:46', '2018-11-27 16:23:46'),
(127, 174, 93, '2018-11-27 16:23:47', '2018-11-27 16:23:47'),
(128, 174, 49, '2018-11-27 16:24:13', '2018-11-27 16:24:13'),
(129, 160, 75, '2018-11-27 16:24:14', '2018-11-27 16:24:14'),
(130, 174, 175, '2018-11-27 16:25:49', '2018-11-27 16:25:49'),
(131, 160, 167, '2018-11-27 16:25:53', '2018-11-27 16:25:53'),
(132, 160, 171, '2018-11-27 16:26:14', '2018-11-27 16:26:14'),
(133, 183, 182, '2018-11-27 18:01:36', '2018-11-27 18:01:36'),
(134, 182, 183, '2018-11-27 18:07:18', '2018-11-27 18:07:18'),
(135, 184, 182, '2018-11-27 20:52:36', '2018-11-27 20:52:36'),
(136, 182, 184, '2018-11-27 20:53:02', '2018-11-27 20:53:02'),
(137, 174, 175, '2018-11-28 13:56:54', '2018-11-28 13:56:54'),
(138, 174, 174, '2018-11-28 13:56:58', '2018-11-28 13:56:58'),
(139, 175, 174, '2018-11-28 14:01:07', '2018-11-28 14:01:07'),
(140, 182, 95, '2018-11-28 20:09:11', '2018-11-28 20:09:11'),
(141, 162, 94, '2018-11-29 21:38:39', '2018-11-29 21:38:39'),
(142, 162, 93, '2018-11-29 21:47:56', '2018-11-29 21:47:56'),
(143, 162, 126, '2018-11-29 21:48:37', '2018-11-29 21:48:37'),
(144, 164, 126, '2018-11-29 21:56:33', '2018-11-29 21:56:33'),
(145, 164, 148, '2018-11-29 21:56:57', '2018-11-29 21:56:57'),
(146, 162, 178, '2018-11-29 22:21:37', '2018-11-29 22:21:37'),
(147, 164, 162, '2018-11-29 22:23:18', '2018-11-29 22:23:18'),
(148, 162, 164, '2018-11-29 22:24:38', '2018-11-29 22:24:38'),
(149, 166, 148, '2018-11-30 11:59:39', '2018-11-30 11:59:39'),
(150, 162, 148, '2018-11-30 14:21:01', '2018-11-30 14:21:01'),
(151, 162, 164, '2018-11-30 14:25:35', '2018-11-30 14:25:35'),
(152, 182, 148, '2018-11-30 18:13:07', '2018-11-30 18:13:07'),
(153, 166, 167, '2018-11-30 20:20:07', '2018-11-30 20:20:07'),
(154, 140, 113, '2018-12-03 12:43:01', '2018-12-03 12:43:01'),
(155, 140, 93, '2018-12-03 12:43:21', '2018-12-03 12:43:21'),
(156, 174, 93, '2018-12-03 19:54:06', '2018-12-03 19:54:06'),
(157, 164, 123, '2018-12-03 21:56:02', '2018-12-03 21:56:02'),
(158, 166, 164, '2018-12-04 17:20:54', '2018-12-04 17:20:54'),
(159, 166, 189, '2018-12-04 17:25:49', '2018-12-04 17:25:49'),
(160, 164, 148, '2018-12-04 20:48:24', '2018-12-04 20:48:24'),
(161, 194, 190, '2018-12-07 13:59:09', '2018-12-07 13:59:09'),
(162, 194, 191, '2018-12-07 14:25:58', '2018-12-07 14:25:58'),
(163, 195, 191, '2018-12-07 14:27:34', '2018-12-07 14:27:34'),
(164, 196, 191, '2018-12-07 14:29:50', '2018-12-07 14:29:50'),
(165, 197, 191, '2018-12-07 14:46:26', '2018-12-07 14:46:26'),
(166, 195, 193, '2018-12-07 15:32:07', '2018-12-07 15:32:07'),
(167, 194, 193, '2018-12-07 15:35:42', '2018-12-07 15:35:42'),
(168, 196, 193, '2018-12-07 15:36:41', '2018-12-07 15:36:41'),
(169, 196, 192, '2018-12-07 15:38:50', '2018-12-07 15:38:50'),
(170, 194, 192, '2018-12-07 15:40:32', '2018-12-07 15:40:32'),
(171, 195, 192, '2018-12-07 15:42:26', '2018-12-07 15:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `profile_views`
--

CREATE TABLE `profile_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED DEFAULT NULL,
  `views` int(11) NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_views`
--

INSERT INTO `profile_views` (`id`, `user_id`, `profile_id`, `views`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 147, 157, 1, '10', '2018', '2018-10-05 19:03:28', '2018-10-05 19:03:28'),
(2, 148, 157, 1, '10', '2018', '2018-10-05 19:05:33', '2018-10-05 19:05:33'),
(3, 157, 147, 1, '10', '2018', '2018-10-05 19:09:17', '2018-10-05 19:09:17'),
(5, 108, 148, 1, '10', '2018', '2018-10-05 19:22:09', '2018-10-05 19:22:09'),
(6, 148, 57, 1, '10', '2018', '2018-10-05 19:34:19', '2018-10-05 19:34:19'),
(7, 147, 147, 1, '10', '2018', '2018-10-05 19:38:19', '2018-10-05 19:38:19'),
(8, 147, 147, 1, '10', '2018', '2018-10-05 19:39:08', '2018-10-05 19:39:08'),
(9, 148, 36, 1, '10', '2018', '2018-10-05 20:17:14', '2018-10-05 20:17:14'),
(10, 147, 158, 1, '10', '2018', '2018-10-05 20:55:06', '2018-10-05 20:55:06'),
(11, 148, 158, 1, '10', '2018', '2018-10-05 20:55:54', '2018-10-05 20:55:54'),
(12, 148, 158, 1, '10', '2018', '2018-10-05 20:56:17', '2018-10-05 20:56:17'),
(13, 57, 158, 1, '10', '2018', '2018-10-05 20:56:48', '2018-10-05 20:56:48'),
(14, 147, 158, 1, '10', '2018', '2018-10-05 20:58:38', '2018-10-05 20:58:38'),
(15, 147, 158, 1, '10', '2018', '2018-10-05 21:00:22', '2018-10-05 21:00:22'),
(16, 93, 108, 1, '10', '2018', '2018-10-05 21:04:03', '2018-10-05 21:04:03'),
(17, 93, 108, 1, '10', '2018', '2018-10-05 21:06:28', '2018-10-05 21:06:28'),
(18, 93, 108, 1, '10', '2018', '2018-10-05 21:06:38', '2018-10-05 21:06:38'),
(19, 93, 108, 1, '10', '2018', '2018-10-05 21:13:13', '2018-10-05 21:13:13'),
(20, 157, 147, 1, '10', '2018', '2018-10-05 21:29:19', '2018-10-05 21:29:19'),
(21, 93, 108, 1, '10', '2018', '2018-10-05 21:36:30', '2018-10-05 21:36:30'),
(22, 93, 48, 1, '10', '2018', '2018-10-05 21:38:16', '2018-10-05 21:38:16'),
(23, 93, 48, 1, '10', '2018', '2018-10-05 21:38:27', '2018-10-05 21:38:27'),
(24, 158, 147, 1, '10', '2018', '2018-10-05 22:09:06', '2018-10-05 22:09:06'),
(25, 147, 93, 1, '10', '2018', '2018-10-05 22:11:49', '2018-10-05 22:11:49'),
(26, 147, 93, 1, '10', '2018', '2018-10-05 22:12:05', '2018-10-05 22:12:05'),
(27, 147, 48, 1, '10', '2018', '2018-10-05 22:13:09', '2018-10-05 22:13:09'),
(28, 147, 48, 1, '10', '2018', '2018-10-05 22:13:24', '2018-10-05 22:13:24'),
(29, 147, 48, 1, '10', '2018', '2018-10-05 22:14:03', '2018-10-05 22:14:03'),
(30, 147, 48, 1, '10', '2018', '2018-10-05 22:14:18', '2018-10-05 22:14:18'),
(31, 147, 48, 1, '10', '2018', '2018-10-05 22:14:27', '2018-10-05 22:14:27'),
(32, 57, 148, 1, '10', '2018', '2018-10-05 22:18:10', '2018-10-05 22:18:10'),
(33, 57, 148, 1, '10', '2018', '2018-10-05 22:18:25', '2018-10-05 22:18:25'),
(34, 158, 93, 1, '10', '2018', '2018-10-05 22:19:39', '2018-10-05 22:19:39'),
(35, 147, 74, 1, '10', '2018', '2018-10-05 22:19:47', '2018-10-05 22:19:47'),
(36, 158, 93, 1, '10', '2018', '2018-10-05 22:19:56', '2018-10-05 22:19:56'),
(37, 158, 93, 1, '10', '2018', '2018-10-05 22:20:10', '2018-10-05 22:20:10'),
(38, 147, 74, 1, '10', '2018', '2018-10-05 22:20:10', '2018-10-05 22:20:10'),
(39, 158, 93, 1, '10', '2018', '2018-10-05 22:20:50', '2018-10-05 22:20:50'),
(40, 140, 108, 1, '10', '2018', '2018-10-05 22:25:26', '2018-10-05 22:25:26'),
(41, 140, 108, 1, '10', '2018', '2018-10-05 22:25:37', '2018-10-05 22:25:37'),
(42, 140, 108, 1, '10', '2018', '2018-10-05 22:25:44', '2018-10-05 22:25:44'),
(43, 147, 74, 1, '10', '2018', '2018-10-05 22:27:33', '2018-10-05 22:27:33'),
(44, 140, 108, 1, '10', '2018', '2018-10-06 13:50:30', '2018-10-06 13:50:30'),
(45, 140, 108, 1, '10', '2018', '2018-10-06 13:50:32', '2018-10-06 13:50:32'),
(46, 140, 108, 1, '10', '2018', '2018-10-06 13:51:17', '2018-10-06 13:51:17'),
(47, 140, 126, 1, '10', '2018', '2018-10-06 13:54:28', '2018-10-06 13:54:28'),
(48, 140, 126, 1, '10', '2018', '2018-10-06 13:54:34', '2018-10-06 13:54:34'),
(49, 140, 126, 1, '10', '2018', '2018-10-06 13:55:14', '2018-10-06 13:55:14'),
(50, 54, 57, 1, '10', '2018', '2018-10-08 12:57:39', '2018-10-08 12:57:39'),
(51, 54, 147, 1, '10', '2018', '2018-10-08 13:00:35', '2018-10-08 13:00:35'),
(52, 113, 160, 1, '10', '2018', '2018-10-08 14:32:05', '2018-10-08 14:32:05'),
(53, 113, 160, 1, '10', '2018', '2018-10-08 14:47:47', '2018-10-08 14:47:47'),
(54, 113, 160, 1, '10', '2018', '2018-10-08 14:48:37', '2018-10-08 14:48:37'),
(55, 113, 160, 1, '10', '2018', '2018-10-08 14:49:29', '2018-10-08 14:49:29'),
(56, 113, 160, 1, '10', '2018', '2018-10-08 14:49:47', '2018-10-08 14:49:47'),
(57, 113, 160, 1, '10', '2018', '2018-10-08 14:49:54', '2018-10-08 14:49:54'),
(58, 113, 160, 1, '10', '2018', '2018-10-08 14:50:52', '2018-10-08 14:50:52'),
(59, 113, 121, 1, '10', '2018', '2018-10-08 14:53:13', '2018-10-08 14:53:13'),
(60, 113, 121, 1, '10', '2018', '2018-10-08 14:54:32', '2018-10-08 14:54:32'),
(61, 113, 121, 1, '10', '2018', '2018-10-08 14:54:45', '2018-10-08 14:54:45'),
(62, 57, 160, 1, '10', '2018', '2018-10-08 14:59:12', '2018-10-08 14:59:12'),
(63, 57, 160, 1, '10', '2018', '2018-10-08 15:00:29', '2018-10-08 15:00:29'),
(64, 57, 160, 1, '10', '2018', '2018-10-08 15:00:52', '2018-10-08 15:00:52'),
(65, 57, 160, 1, '10', '2018', '2018-10-08 15:00:56', '2018-10-08 15:00:56'),
(66, 57, 160, 1, '10', '2018', '2018-10-08 15:07:37', '2018-10-08 15:07:37'),
(67, 57, 160, 1, '10', '2018', '2018-10-08 15:07:39', '2018-10-08 15:07:39'),
(68, 57, 160, 1, '10', '2018', '2018-10-08 15:07:45', '2018-10-08 15:07:45'),
(69, 57, 160, 1, '10', '2018', '2018-10-08 15:08:31', '2018-10-08 15:08:31'),
(70, 160, 57, 1, '10', '2018', '2018-10-08 15:10:20', '2018-10-08 15:10:20'),
(71, 160, 57, 1, '10', '2018', '2018-10-08 15:10:23', '2018-10-08 15:10:23'),
(72, 160, 57, 1, '10', '2018', '2018-10-08 15:11:05', '2018-10-08 15:11:05'),
(73, 57, 160, 1, '10', '2018', '2018-10-08 15:11:55', '2018-10-08 15:11:55'),
(74, 57, 160, 1, '10', '2018', '2018-10-08 15:12:14', '2018-10-08 15:12:14'),
(75, 160, 57, 1, '10', '2018', '2018-10-08 15:12:49', '2018-10-08 15:12:49'),
(76, 54, 75, 1, '10', '2018', '2018-10-08 16:32:58', '2018-10-08 16:32:58'),
(77, 75, 54, 1, '10', '2018', '2018-10-08 16:34:29', '2018-10-08 16:34:29'),
(78, 75, 54, 1, '10', '2018', '2018-10-08 16:48:30', '2018-10-08 16:48:30'),
(79, 75, 54, 1, '10', '2018', '2018-10-08 16:48:40', '2018-10-08 16:48:40'),
(80, 75, 54, 1, '10', '2018', '2018-10-08 16:48:48', '2018-10-08 16:48:48'),
(81, 75, 54, 1, '10', '2018', '2018-10-08 16:48:57', '2018-10-08 16:48:57'),
(82, 75, 54, 1, '10', '2018', '2018-10-08 16:49:31', '2018-10-08 16:49:31'),
(83, 75, 54, 1, '10', '2018', '2018-10-08 16:49:41', '2018-10-08 16:49:41'),
(84, 75, 54, 1, '10', '2018', '2018-10-08 16:50:21', '2018-10-08 16:50:21'),
(85, 75, 160, 1, '10', '2018', '2018-10-08 16:50:31', '2018-10-08 16:50:31'),
(86, 75, 160, 1, '10', '2018', '2018-10-08 16:50:36', '2018-10-08 16:50:36'),
(87, 75, 160, 1, '10', '2018', '2018-10-08 16:50:40', '2018-10-08 16:50:40'),
(88, 75, 160, 1, '10', '2018', '2018-10-08 17:15:05', '2018-10-08 17:15:05'),
(89, 75, 54, 1, '10', '2018', '2018-10-08 17:15:36', '2018-10-08 17:15:36'),
(90, 75, 54, 1, '10', '2018', '2018-10-08 17:16:10', '2018-10-08 17:16:10'),
(91, 75, 160, 1, '10', '2018', '2018-10-08 17:16:14', '2018-10-08 17:16:14'),
(92, 160, 75, 1, '10', '2018', '2018-10-08 17:17:22', '2018-10-08 17:17:22'),
(93, 160, 75, 1, '10', '2018', '2018-10-08 17:19:04', '2018-10-08 17:19:04'),
(94, 160, 136, 1, '10', '2018', '2018-10-08 17:33:22', '2018-10-08 17:33:22'),
(95, 93, 93, 1, '10', '2018', '2018-10-08 21:50:16', '2018-10-08 21:50:16'),
(96, 93, 93, 1, '10', '2018', '2018-10-08 21:53:02', '2018-10-08 21:53:02'),
(97, 160, 75, 1, '10', '2018', '2018-10-09 15:24:36', '2018-10-09 15:24:36'),
(98, 160, 75, 1, '10', '2018', '2018-10-09 15:25:02', '2018-10-09 15:25:02'),
(99, 160, 75, 1, '10', '2018', '2018-10-09 15:25:12', '2018-10-09 15:25:12'),
(100, 160, 75, 1, '10', '2018', '2018-10-09 15:25:17', '2018-10-09 15:25:17'),
(101, 160, 75, 1, '10', '2018', '2018-10-09 15:25:35', '2018-10-09 15:25:35'),
(102, 160, 57, 1, '10', '2018', '2018-10-09 17:08:35', '2018-10-09 17:08:35'),
(103, 160, 93, 1, '10', '2018', '2018-10-09 17:10:32', '2018-10-09 17:10:32'),
(104, 160, 93, 1, '10', '2018', '2018-10-09 17:10:38', '2018-10-09 17:10:38'),
(105, 160, 93, 1, '10', '2018', '2018-10-09 17:10:42', '2018-10-09 17:10:42'),
(106, 160, 93, 1, '10', '2018', '2018-10-09 17:10:47', '2018-10-09 17:10:47'),
(107, 160, 93, 1, '10', '2018', '2018-10-09 17:10:56', '2018-10-09 17:10:56'),
(108, 104, 93, 1, '10', '2018', '2018-10-09 17:12:14', '2018-10-09 17:12:14'),
(109, 104, 93, 1, '10', '2018', '2018-10-09 17:12:22', '2018-10-09 17:12:22'),
(110, 160, 57, 1, '10', '2018', '2018-10-09 17:37:41', '2018-10-09 17:37:41'),
(111, 104, 93, 1, '10', '2018', '2018-10-09 19:22:17', '2018-10-09 19:22:17'),
(112, 104, 93, 1, '10', '2018', '2018-10-09 19:22:46', '2018-10-09 19:22:46'),
(113, 104, 93, 1, '10', '2018', '2018-10-09 19:22:50', '2018-10-09 19:22:50'),
(114, 104, 126, 1, '10', '2018', '2018-10-09 19:23:14', '2018-10-09 19:23:14'),
(115, 104, 126, 1, '10', '2018', '2018-10-09 19:23:20', '2018-10-09 19:23:20'),
(116, 104, 126, 1, '10', '2018', '2018-10-09 19:23:24', '2018-10-09 19:23:24'),
(117, 104, 126, 1, '10', '2018', '2018-10-09 19:23:34', '2018-10-09 19:23:34'),
(118, 104, 126, 1, '10', '2018', '2018-10-09 19:23:54', '2018-10-09 19:23:54'),
(119, 104, 93, 1, '10', '2018', '2018-10-09 19:24:11', '2018-10-09 19:24:11'),
(120, 104, 93, 1, '10', '2018', '2018-10-09 19:24:41', '2018-10-09 19:24:41'),
(121, 104, 93, 1, '10', '2018', '2018-10-09 19:25:16', '2018-10-09 19:25:16'),
(122, 104, 93, 1, '10', '2018', '2018-10-09 19:25:26', '2018-10-09 19:25:26'),
(123, 104, 93, 1, '10', '2018', '2018-10-09 19:30:58', '2018-10-09 19:30:58'),
(124, 93, 57, 1, '10', '2018', '2018-10-10 17:26:33', '2018-10-10 17:26:33'),
(125, 93, 57, 1, '10', '2018', '2018-10-10 17:26:37', '2018-10-10 17:26:37'),
(126, 94, 57, 1, '10', '2018', '2018-10-10 21:24:52', '2018-10-10 21:24:52'),
(127, 94, 57, 1, '10', '2018', '2018-10-10 21:30:58', '2018-10-10 21:30:58'),
(128, 94, 57, 1, '10', '2018', '2018-10-10 21:31:03', '2018-10-10 21:31:03'),
(129, 94, 57, 1, '10', '2018', '2018-10-10 21:31:03', '2018-10-10 21:31:03'),
(130, 94, 57, 1, '10', '2018', '2018-10-10 21:31:05', '2018-10-10 21:31:05'),
(131, 94, 57, 1, '10', '2018', '2018-10-10 21:31:06', '2018-10-10 21:31:06'),
(132, 94, 57, 1, '10', '2018', '2018-10-10 21:31:07', '2018-10-10 21:31:07'),
(133, 93, 48, 1, '10', '2018', '2018-10-10 22:09:54', '2018-10-10 22:09:54'),
(134, 93, 48, 1, '10', '2018', '2018-10-10 22:10:03', '2018-10-10 22:10:03'),
(135, 160, 75, 1, '10', '2018', '2018-10-12 11:53:16', '2018-10-12 11:53:16'),
(136, 160, 62, 1, '10', '2018', '2018-10-12 11:53:40', '2018-10-12 11:53:40'),
(137, 160, 62, 1, '10', '2018', '2018-10-12 11:53:56', '2018-10-12 11:53:56'),
(138, 162, 164, 1, '10', '2018', '2018-10-31 20:30:54', '2018-10-31 20:30:54'),
(139, 162, 164, 1, '10', '2018', '2018-10-31 20:31:01', '2018-10-31 20:31:01'),
(140, 164, 162, 1, '11', '2018', '2018-11-01 18:50:23', '2018-11-01 18:50:23'),
(141, 164, 147, 1, '11', '2018', '2018-11-01 18:57:00', '2018-11-01 18:57:00'),
(142, 164, 147, 1, '11', '2018', '2018-11-01 19:06:51', '2018-11-01 19:06:51'),
(143, 79, 104, 1, '11', '2018', '2018-11-13 18:44:29', '2018-11-13 18:44:29'),
(144, 160, 104, 1, '11', '2018', '2018-11-13 19:27:48', '2018-11-13 19:27:48'),
(145, 160, 104, 1, '11', '2018', '2018-11-13 19:27:55', '2018-11-13 19:27:55'),
(146, 160, 104, 1, '11', '2018', '2018-11-13 19:28:35', '2018-11-13 19:28:35'),
(147, 160, 104, 1, '11', '2018', '2018-11-13 19:31:10', '2018-11-13 19:31:10'),
(176, 79, 121, 1, '11', '2018', '2018-11-14 13:11:37', '2018-11-14 13:11:37'),
(177, 121, 79, 1, '11', '2018', '2018-11-14 13:12:20', '2018-11-14 13:12:20'),
(179, 79, 147, 1, '11', '2018', '2018-11-14 13:45:13', '2018-11-14 13:45:13'),
(180, 121, 148, 1, '11', '2018', '2018-11-14 13:45:41', '2018-11-14 13:45:41'),
(181, 121, 79, 1, '11', '2018', '2018-11-14 13:46:29', '2018-11-14 13:46:29'),
(182, 121, 79, 1, '11', '2018', '2018-11-14 13:46:51', '2018-11-14 13:46:51'),
(183, 79, 121, 1, '11', '2018', '2018-11-14 13:47:17', '2018-11-14 13:47:17'),
(184, 121, 79, 1, '11', '2018', '2018-11-14 13:47:42', '2018-11-14 13:47:42'),
(185, 121, 79, 1, '11', '2018', '2018-11-14 13:47:55', '2018-11-14 13:47:55'),
(186, 96, 121, 1, '11', '2018', '2018-11-15 11:58:15', '2018-11-15 11:58:15'),
(187, 121, 96, 1, '11', '2018', '2018-11-15 11:59:51', '2018-11-15 11:59:51'),
(188, 96, 121, 1, '11', '2018', '2018-11-15 12:00:00', '2018-11-15 12:00:00'),
(189, 54, 74, 1, '11', '2018', '2018-11-15 13:55:38', '2018-11-15 13:55:38'),
(190, 54, 83, 1, '11', '2018', '2018-11-15 13:56:40', '2018-11-15 13:56:40'),
(193, 167, 160, 1, '11', '2018', '2018-11-16 20:15:53', '2018-11-16 20:15:53'),
(194, 169, 136, 1, '11', '2018', '2018-11-19 12:12:36', '2018-11-19 12:12:36'),
(195, 169, 169, 1, '11', '2018', '2018-11-19 12:22:13', '2018-11-19 12:22:13'),
(204, 167, 160, 1, '11', '2018', '2018-11-19 14:03:56', '2018-11-19 14:03:56'),
(209, 171, 160, 1, '11', '2018', '2018-11-19 21:21:17', '2018-11-19 21:21:17'),
(210, 171, 160, 1, '11', '2018', '2018-11-19 21:22:20', '2018-11-19 21:22:20'),
(211, 171, 160, 1, '11', '2018', '2018-11-19 21:22:59', '2018-11-19 21:22:59'),
(212, 171, 160, 1, '11', '2018', '2018-11-19 22:06:54', '2018-11-19 22:06:54'),
(214, 171, 57, 1, '11', '2018', '2018-11-19 22:09:22', '2018-11-19 22:09:22'),
(215, 171, 57, 1, '11', '2018', '2018-11-19 22:14:07', '2018-11-19 22:14:07'),
(216, 140, 93, 1, '11', '2018', '2018-11-21 00:36:08', '2018-11-21 00:36:08'),
(217, 140, 126, 1, '11', '2018', '2018-11-21 00:42:14', '2018-11-21 00:42:14'),
(218, 140, 126, 1, '11', '2018', '2018-11-21 00:42:27', '2018-11-21 00:42:27'),
(219, 140, 126, 1, '11', '2018', '2018-11-21 00:42:46', '2018-11-21 00:42:46'),
(220, 140, 108, 1, '11', '2018', '2018-11-21 00:42:57', '2018-11-21 00:42:57'),
(221, 140, 147, 1, '11', '2018', '2018-11-21 00:43:02', '2018-11-21 00:43:02'),
(222, 140, 147, 1, '11', '2018', '2018-11-21 00:43:10', '2018-11-21 00:43:10'),
(223, 140, 126, 1, '11', '2018', '2018-11-21 00:44:30', '2018-11-21 00:44:30'),
(224, 140, 126, 1, '11', '2018', '2018-11-21 00:45:31', '2018-11-21 00:45:31'),
(225, 140, 108, 1, '11', '2018', '2018-11-21 00:45:44', '2018-11-21 00:45:44'),
(226, 140, 108, 1, '11', '2018', '2018-11-21 00:45:53', '2018-11-21 00:45:53'),
(227, 140, 108, 1, '11', '2018', '2018-11-21 00:46:31', '2018-11-21 00:46:31'),
(228, 140, 57, 1, '11', '2018', '2018-11-21 00:46:42', '2018-11-21 00:46:42'),
(229, 140, 57, 1, '11', '2018', '2018-11-21 00:46:46', '2018-11-21 00:46:46'),
(230, 79, 171, 1, '11', '2018', '2018-11-21 13:51:22', '2018-11-21 13:51:22'),
(231, 79, 171, 1, '11', '2018', '2018-11-21 13:51:37', '2018-11-21 13:51:37'),
(232, 79, 171, 1, '11', '2018', '2018-11-21 13:51:51', '2018-11-21 13:51:51'),
(233, 79, 171, 1, '11', '2018', '2018-11-21 14:37:09', '2018-11-21 14:37:09'),
(234, 79, 171, 1, '11', '2018', '2018-11-21 14:37:28', '2018-11-21 14:37:28'),
(235, 79, 171, 1, '11', '2018', '2018-11-21 14:37:29', '2018-11-21 14:37:29'),
(236, 79, 171, 1, '11', '2018', '2018-11-21 17:36:45', '2018-11-21 17:36:45'),
(237, 79, 171, 1, '11', '2018', '2018-11-21 17:37:13', '2018-11-21 17:37:13'),
(238, 79, 171, 1, '11', '2018', '2018-11-21 17:37:18', '2018-11-21 17:37:18'),
(239, 79, 171, 1, '11', '2018', '2018-11-21 17:37:41', '2018-11-21 17:37:41'),
(240, 79, 171, 1, '11', '2018', '2018-11-21 17:39:42', '2018-11-21 17:39:42'),
(241, 79, 171, 1, '11', '2018', '2018-11-21 17:48:29', '2018-11-21 17:48:29'),
(242, 79, 171, 1, '11', '2018', '2018-11-21 17:49:05', '2018-11-21 17:49:05'),
(243, 79, 171, 1, '11', '2018', '2018-11-21 17:54:16', '2018-11-21 17:54:16'),
(244, 164, 108, 1, '11', '2018', '2018-11-21 20:48:12', '2018-11-21 20:48:12'),
(245, 164, 93, 1, '11', '2018', '2018-11-21 21:17:34', '2018-11-21 21:17:34'),
(246, 164, 93, 1, '11', '2018', '2018-11-21 21:18:14', '2018-11-21 21:18:14'),
(247, 140, 126, 1, '11', '2018', '2018-11-21 21:18:49', '2018-11-21 21:18:49'),
(248, 140, 126, 1, '11', '2018', '2018-11-21 21:19:02', '2018-11-21 21:19:02'),
(249, 140, 136, 1, '11', '2018', '2018-11-21 21:19:23', '2018-11-21 21:19:23'),
(250, 140, 136, 1, '11', '2018', '2018-11-21 21:19:36', '2018-11-21 21:19:36'),
(251, 140, 108, 1, '11', '2018', '2018-11-21 21:25:03', '2018-11-21 21:25:03'),
(252, 140, 108, 1, '11', '2018', '2018-11-21 21:25:05', '2018-11-21 21:25:05'),
(253, 140, 136, 1, '11', '2018', '2018-11-21 21:25:17', '2018-11-21 21:25:17'),
(254, 140, 136, 1, '11', '2018', '2018-11-21 21:25:18', '2018-11-21 21:25:18'),
(255, 171, 126, 1, '11', '2018', '2018-11-22 12:32:21', '2018-11-22 12:32:21'),
(256, 171, 126, 1, '11', '2018', '2018-11-22 15:09:37', '2018-11-22 15:09:37'),
(257, 171, 171, 1, '11', '2018', '2018-11-22 15:12:49', '2018-11-22 15:12:49'),
(262, 174, 175, 1, '11', '2018', '2018-11-23 13:04:34', '2018-11-23 13:04:34'),
(263, 174, 171, 1, '11', '2018', '2018-11-23 14:25:24', '2018-11-23 14:25:24'),
(264, 174, 171, 1, '11', '2018', '2018-11-23 14:25:36', '2018-11-23 14:25:36'),
(265, 175, 113, 1, '11', '2018', '2018-11-23 14:52:57', '2018-11-23 14:52:57'),
(266, 175, 126, 1, '11', '2018', '2018-11-23 15:53:04', '2018-11-23 15:53:04'),
(267, 175, 126, 1, '11', '2018', '2018-11-23 15:53:13', '2018-11-23 15:53:13'),
(268, 175, 126, 1, '11', '2018', '2018-11-23 15:53:40', '2018-11-23 15:53:40'),
(269, 175, 177, 1, '11', '2018', '2018-11-23 15:54:24', '2018-11-23 15:54:24'),
(270, 175, 177, 1, '11', '2018', '2018-11-23 15:54:30', '2018-11-23 15:54:30'),
(271, 175, 177, 1, '11', '2018', '2018-11-23 15:54:34', '2018-11-23 15:54:34'),
(272, 175, 177, 1, '11', '2018', '2018-11-23 15:54:38', '2018-11-23 15:54:38'),
(273, 175, 177, 1, '11', '2018', '2018-11-23 15:55:18', '2018-11-23 15:55:18'),
(274, 174, 166, 1, '11', '2018', '2018-11-23 17:14:24', '2018-11-23 17:14:24'),
(275, 174, 169, 1, '11', '2018', '2018-11-23 17:23:54', '2018-11-23 17:23:54'),
(276, 140, 164, 1, '11', '2018', '2018-11-23 18:14:30', '2018-11-23 18:14:30'),
(277, 140, 164, 1, '11', '2018', '2018-11-23 18:15:57', '2018-11-23 18:15:57'),
(278, 140, 164, 1, '11', '2018', '2018-11-23 18:17:47', '2018-11-23 18:17:47'),
(279, 162, 126, 1, '11', '2018', '2018-11-23 21:41:21', '2018-11-23 21:41:21'),
(280, 140, 94, 1, '11', '2018', '2018-11-25 21:06:58', '2018-11-25 21:06:58'),
(281, 140, 94, 1, '11', '2018', '2018-11-25 21:08:10', '2018-11-25 21:08:10'),
(282, 140, 93, 1, '11', '2018', '2018-11-25 21:10:07', '2018-11-25 21:10:07'),
(283, 140, 94, 1, '11', '2018', '2018-11-25 21:10:21', '2018-11-25 21:10:21'),
(284, 179, 175, 1, '11', '2018', '2018-11-26 15:11:38', '2018-11-26 15:11:38'),
(285, 162, 126, 1, '11', '2018', '2018-11-26 17:48:52', '2018-11-26 17:48:52'),
(286, 162, 126, 1, '11', '2018', '2018-11-26 17:49:02', '2018-11-26 17:49:02'),
(287, 164, 126, 1, '11', '2018', '2018-11-26 18:22:17', '2018-11-26 18:22:17'),
(288, 164, 126, 1, '11', '2018', '2018-11-26 18:22:24', '2018-11-26 18:22:24'),
(289, 164, 126, 1, '11', '2018', '2018-11-26 18:22:59', '2018-11-26 18:22:59'),
(290, 160, 175, 1, '11', '2018', '2018-11-27 11:59:01', '2018-11-27 11:59:01'),
(291, 160, 175, 1, '11', '2018', '2018-11-27 11:59:24', '2018-11-27 11:59:24'),
(292, 160, 175, 1, '11', '2018', '2018-11-27 12:00:53', '2018-11-27 12:00:53'),
(293, 79, 175, 1, '11', '2018', '2018-11-27 12:01:39', '2018-11-27 12:01:39'),
(294, 79, 175, 1, '11', '2018', '2018-11-27 12:02:04', '2018-11-27 12:02:04'),
(295, 177, 175, 1, '11', '2018', '2018-11-27 12:02:52', '2018-11-27 12:02:52'),
(296, 166, 175, 1, '11', '2018', '2018-11-27 12:07:08', '2018-11-27 12:07:08'),
(297, 166, 175, 1, '11', '2018', '2018-11-27 12:07:55', '2018-11-27 12:07:55'),
(298, 166, 175, 1, '11', '2018', '2018-11-27 12:08:43', '2018-11-27 12:08:43'),
(299, 57, 175, 1, '11', '2018', '2018-11-27 12:12:21', '2018-11-27 12:12:21'),
(300, 57, 175, 1, '11', '2018', '2018-11-27 12:13:10', '2018-11-27 12:13:10'),
(301, 175, 174, 1, '11', '2018', '2018-11-27 15:13:59', '2018-11-27 15:13:59'),
(302, 160, 140, 1, '11', '2018', '2018-11-27 15:16:21', '2018-11-27 15:16:21'),
(303, 160, 126, 1, '11', '2018', '2018-11-27 16:23:46', '2018-11-27 16:23:46'),
(304, 174, 93, 1, '11', '2018', '2018-11-27 16:23:47', '2018-11-27 16:23:47'),
(305, 174, 49, 1, '11', '2018', '2018-11-27 16:24:13', '2018-11-27 16:24:13'),
(306, 160, 75, 1, '11', '2018', '2018-11-27 16:24:14', '2018-11-27 16:24:14'),
(307, 174, 175, 1, '11', '2018', '2018-11-27 16:25:49', '2018-11-27 16:25:49'),
(308, 160, 167, 1, '11', '2018', '2018-11-27 16:25:53', '2018-11-27 16:25:53'),
(309, 160, 171, 1, '11', '2018', '2018-11-27 16:26:14', '2018-11-27 16:26:14'),
(310, 174, 175, 1, '11', '2018', '2018-11-27 16:26:34', '2018-11-27 16:26:34'),
(311, 160, 171, 1, '11', '2018', '2018-11-27 16:26:38', '2018-11-27 16:26:38'),
(312, 183, 182, 1, '11', '2018', '2018-11-27 18:01:36', '2018-11-27 18:01:36'),
(313, 183, 182, 1, '11', '2018', '2018-11-27 18:05:12', '2018-11-27 18:05:12'),
(314, 182, 183, 1, '11', '2018', '2018-11-27 18:07:18', '2018-11-27 18:07:18'),
(315, 182, 183, 1, '11', '2018', '2018-11-27 18:07:25', '2018-11-27 18:07:25'),
(316, 183, 182, 1, '11', '2018', '2018-11-27 18:07:36', '2018-11-27 18:07:36'),
(317, 183, 182, 1, '11', '2018', '2018-11-27 18:10:28', '2018-11-27 18:10:28'),
(318, 182, 183, 1, '11', '2018', '2018-11-27 18:10:51', '2018-11-27 18:10:51'),
(319, 182, 183, 1, '11', '2018', '2018-11-27 19:14:44', '2018-11-27 19:14:44'),
(320, 183, 182, 1, '11', '2018', '2018-11-27 19:16:34', '2018-11-27 19:16:34'),
(321, 183, 182, 1, '11', '2018', '2018-11-27 19:16:41', '2018-11-27 19:16:41'),
(322, 183, 182, 1, '11', '2018', '2018-11-27 19:16:59', '2018-11-27 19:16:59'),
(323, 183, 182, 1, '11', '2018', '2018-11-27 19:17:05', '2018-11-27 19:17:05'),
(324, 183, 182, 1, '11', '2018', '2018-11-27 19:25:24', '2018-11-27 19:25:24'),
(325, 183, 182, 1, '11', '2018', '2018-11-27 20:46:38', '2018-11-27 20:46:38'),
(326, 183, 182, 1, '11', '2018', '2018-11-27 20:46:51', '2018-11-27 20:46:51'),
(327, 183, 182, 1, '11', '2018', '2018-11-27 20:47:03', '2018-11-27 20:47:03'),
(328, 183, 182, 1, '11', '2018', '2018-11-27 20:47:48', '2018-11-27 20:47:48'),
(329, 184, 182, 1, '11', '2018', '2018-11-27 20:52:36', '2018-11-27 20:52:36'),
(330, 182, 184, 1, '11', '2018', '2018-11-27 20:53:02', '2018-11-27 20:53:02'),
(331, 182, 184, 1, '11', '2018', '2018-11-27 20:53:20', '2018-11-27 20:53:20'),
(332, 184, 182, 1, '11', '2018', '2018-11-27 20:53:36', '2018-11-27 20:53:36'),
(333, 184, 182, 1, '11', '2018', '2018-11-27 20:55:12', '2018-11-27 20:55:12'),
(334, 184, 182, 1, '11', '2018', '2018-11-27 20:55:21', '2018-11-27 20:55:21'),
(335, 184, 182, 1, '11', '2018', '2018-11-27 20:55:33', '2018-11-27 20:55:33'),
(336, 174, 175, 1, '11', '2018', '2018-11-28 13:56:54', '2018-11-28 13:56:54'),
(337, 174, 174, 1, '11', '2018', '2018-11-28 13:56:58', '2018-11-28 13:56:58'),
(338, 174, 174, 1, '11', '2018', '2018-11-28 13:57:32', '2018-11-28 13:57:32'),
(339, 175, 174, 1, '11', '2018', '2018-11-28 14:01:07', '2018-11-28 14:01:07'),
(340, 175, 174, 1, '11', '2018', '2018-11-28 14:01:12', '2018-11-28 14:01:12'),
(341, 175, 174, 1, '11', '2018', '2018-11-28 14:01:57', '2018-11-28 14:01:57'),
(342, 175, 174, 1, '11', '2018', '2018-11-28 14:02:32', '2018-11-28 14:02:32'),
(343, 174, 175, 1, '11', '2018', '2018-11-28 14:03:00', '2018-11-28 14:03:00'),
(344, 175, 174, 1, '11', '2018', '2018-11-28 14:03:46', '2018-11-28 14:03:46'),
(345, 182, 95, 1, '11', '2018', '2018-11-28 20:09:11', '2018-11-28 20:09:11'),
(346, 182, 95, 1, '11', '2018', '2018-11-28 20:09:37', '2018-11-28 20:09:37'),
(347, 182, 95, 1, '11', '2018', '2018-11-28 20:10:06', '2018-11-28 20:10:06'),
(348, 162, 94, 1, '11', '2018', '2018-11-29 21:38:39', '2018-11-29 21:38:39'),
(349, 162, 93, 1, '11', '2018', '2018-11-29 21:47:56', '2018-11-29 21:47:56'),
(350, 162, 126, 1, '11', '2018', '2018-11-29 21:48:37', '2018-11-29 21:48:37'),
(351, 162, 93, 1, '11', '2018', '2018-11-29 21:51:50', '2018-11-29 21:51:50'),
(352, 164, 126, 1, '11', '2018', '2018-11-29 21:56:33', '2018-11-29 21:56:33'),
(353, 164, 148, 1, '11', '2018', '2018-11-29 21:56:57', '2018-11-29 21:56:57'),
(354, 164, 148, 1, '11', '2018', '2018-11-29 21:57:08', '2018-11-29 21:57:08'),
(355, 164, 148, 1, '11', '2018', '2018-11-29 21:57:09', '2018-11-29 21:57:09'),
(356, 162, 178, 1, '11', '2018', '2018-11-29 22:21:37', '2018-11-29 22:21:37'),
(357, 164, 162, 1, '11', '2018', '2018-11-29 22:23:18', '2018-11-29 22:23:18'),
(358, 162, 164, 1, '11', '2018', '2018-11-29 22:24:38', '2018-11-29 22:24:38'),
(359, 162, 164, 1, '11', '2018', '2018-11-29 22:25:14', '2018-11-29 22:25:14'),
(360, 162, 164, 1, '11', '2018', '2018-11-29 22:25:32', '2018-11-29 22:25:32'),
(361, 166, 148, 1, '11', '2018', '2018-11-30 11:59:39', '2018-11-30 11:59:39'),
(362, 162, 148, 1, '11', '2018', '2018-11-30 14:21:01', '2018-11-30 14:21:01'),
(363, 162, 148, 1, '11', '2018', '2018-11-30 14:21:15', '2018-11-30 14:21:15'),
(364, 162, 148, 1, '11', '2018', '2018-11-30 14:21:22', '2018-11-30 14:21:22'),
(365, 162, 164, 1, '11', '2018', '2018-11-30 14:25:35', '2018-11-30 14:25:35'),
(366, 182, 148, 1, '11', '2018', '2018-11-30 18:13:07', '2018-11-30 18:13:07'),
(367, 182, 148, 1, '11', '2018', '2018-11-30 18:15:21', '2018-11-30 18:15:21'),
(368, 166, 167, 1, '11', '2018', '2018-11-30 20:20:07', '2018-11-30 20:20:07'),
(369, 166, 148, 1, '11', '2018', '2018-11-30 20:27:35', '2018-11-30 20:27:35'),
(370, 140, 113, 1, '12', '2018', '2018-12-03 12:43:01', '2018-12-03 12:43:01'),
(371, 140, 93, 1, '12', '2018', '2018-12-03 12:43:21', '2018-12-03 12:43:21'),
(372, 140, 113, 1, '12', '2018', '2018-12-03 12:45:05', '2018-12-03 12:45:05'),
(373, 174, 93, 1, '12', '2018', '2018-12-03 19:54:06', '2018-12-03 19:54:06'),
(374, 174, 93, 1, '12', '2018', '2018-12-03 19:54:11', '2018-12-03 19:54:11'),
(375, 174, 93, 1, '12', '2018', '2018-12-03 19:54:32', '2018-12-03 19:54:32'),
(376, 164, 123, 1, '12', '2018', '2018-12-03 21:56:02', '2018-12-03 21:56:02'),
(377, 164, 123, 1, '12', '2018', '2018-12-03 21:56:05', '2018-12-03 21:56:05'),
(378, 166, 164, 1, '12', '2018', '2018-12-04 17:20:54', '2018-12-04 17:20:54'),
(379, 166, 189, 1, '12', '2018', '2018-12-04 17:25:49', '2018-12-04 17:25:49'),
(380, 166, 189, 1, '12', '2018', '2018-12-04 17:26:23', '2018-12-04 17:26:23'),
(381, 166, 189, 1, '12', '2018', '2018-12-04 17:38:11', '2018-12-04 17:38:11'),
(382, 166, 189, 1, '12', '2018', '2018-12-04 17:38:44', '2018-12-04 17:38:44'),
(383, 166, 189, 1, '12', '2018', '2018-12-04 17:39:01', '2018-12-04 17:39:01'),
(384, 164, 148, 1, '12', '2018', '2018-12-04 20:48:24', '2018-12-04 20:48:24'),
(385, 164, 148, 1, '12', '2018', '2018-12-04 20:48:31', '2018-12-04 20:48:31'),
(386, 194, 190, 1, '12', '2018', '2018-12-07 13:59:09', '2018-12-07 13:59:09'),
(387, 194, 190, 1, '12', '2018', '2018-12-07 13:59:43', '2018-12-07 13:59:43'),
(388, 194, 191, 1, '12', '2018', '2018-12-07 14:25:58', '2018-12-07 14:25:58'),
(389, 194, 191, 1, '12', '2018', '2018-12-07 14:26:27', '2018-12-07 14:26:27'),
(390, 195, 191, 1, '12', '2018', '2018-12-07 14:27:35', '2018-12-07 14:27:35'),
(391, 195, 191, 1, '12', '2018', '2018-12-07 14:28:02', '2018-12-07 14:28:02'),
(392, 196, 191, 1, '12', '2018', '2018-12-07 14:29:50', '2018-12-07 14:29:50'),
(393, 197, 191, 1, '12', '2018', '2018-12-07 14:46:26', '2018-12-07 14:46:26'),
(394, 197, 191, 1, '12', '2018', '2018-12-07 14:46:56', '2018-12-07 14:46:56'),
(395, 197, 191, 1, '12', '2018', '2018-12-07 15:00:28', '2018-12-07 15:00:28'),
(396, 197, 191, 1, '12', '2018', '2018-12-07 15:15:00', '2018-12-07 15:15:00'),
(397, 195, 193, 1, '12', '2018', '2018-12-07 15:32:07', '2018-12-07 15:32:07'),
(398, 195, 193, 1, '12', '2018', '2018-12-07 15:32:54', '2018-12-07 15:32:54'),
(399, 195, 193, 1, '12', '2018', '2018-12-07 15:33:14', '2018-12-07 15:33:14'),
(400, 194, 193, 1, '12', '2018', '2018-12-07 15:35:42', '2018-12-07 15:35:42'),
(401, 194, 193, 1, '12', '2018', '2018-12-07 15:36:06', '2018-12-07 15:36:06'),
(402, 196, 193, 1, '12', '2018', '2018-12-07 15:36:41', '2018-12-07 15:36:41'),
(403, 196, 192, 1, '12', '2018', '2018-12-07 15:38:50', '2018-12-07 15:38:50'),
(404, 196, 192, 1, '12', '2018', '2018-12-07 15:39:17', '2018-12-07 15:39:17'),
(405, 194, 192, 1, '12', '2018', '2018-12-07 15:40:32', '2018-12-07 15:40:32'),
(406, 194, 192, 1, '12', '2018', '2018-12-07 15:41:06', '2018-12-07 15:41:06'),
(407, 195, 192, 1, '12', '2018', '2018-12-07 15:42:26', '2018-12-07 15:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `reference_id`, `question_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 27, 11, '3.70', '2018-08-31 01:31:45', NULL),
(2, 27, 2, '2.30', '2018-08-31 01:31:45', NULL),
(3, 27, 4, '3.70', '2018-08-31 01:31:45', NULL),
(4, 27, 3, '2.70', '2018-08-31 01:31:45', NULL),
(5, 27, 5, '3.60', '2018-08-31 01:31:45', NULL),
(6, 27, 6, '3.00', '2018-08-31 01:31:45', NULL),
(7, 27, 12, '3.90', '2018-08-31 01:31:45', NULL),
(8, 27, 13, '3.10', '2018-08-31 01:31:45', NULL),
(9, 27, 14, '3.90', '2018-08-31 01:31:45', NULL),
(10, 27, 8, '3.80', '2018-08-31 01:31:45', NULL),
(11, 27, 9, '3.90', '2018-08-31 01:31:45', NULL),
(12, 27, 10, '3.60', '2018-08-31 01:31:45', NULL),
(13, 27, 15, '3.80', '2018-08-31 01:31:45', NULL),
(14, 28, 11, '3.80', '2018-08-31 01:32:31', NULL),
(15, 28, 2, '3.70', '2018-08-31 01:32:31', NULL),
(16, 28, 4, '3.70', '2018-08-31 01:32:31', NULL),
(17, 28, 3, '3.50', '2018-08-31 01:32:31', NULL),
(18, 28, 5, '3.70', '2018-08-31 01:32:31', NULL),
(19, 28, 6, '3.50', '2018-08-31 01:32:31', NULL),
(20, 28, 12, '3.70', '2018-08-31 01:32:31', NULL),
(21, 28, 13, '3.50', '2018-08-31 01:32:31', NULL),
(22, 28, 14, '3.90', '2018-08-31 01:32:31', NULL),
(23, 28, 8, '3.50', '2018-08-31 01:32:31', NULL),
(24, 28, 9, '3.70', '2018-08-31 01:32:31', NULL),
(25, 28, 10, '3.60', '2018-08-31 01:32:31', NULL),
(26, 28, 15, '3.70', '2018-08-31 01:32:31', NULL),
(27, 29, 55, '3.80', '2018-08-31 18:45:59', NULL),
(28, 29, 46, '1.90', '2018-08-31 18:45:59', NULL),
(29, 29, 48, '3.70', '2018-08-31 18:45:59', NULL),
(30, 29, 47, '1.10', '2018-08-31 18:45:59', NULL),
(31, 29, 49, '3.70', '2018-08-31 18:45:59', NULL),
(32, 29, 50, '3.20', '2018-08-31 18:45:59', NULL),
(33, 29, 124, '4.40', '2018-08-31 18:45:59', NULL),
(34, 29, 125, '1.50', '2018-08-31 18:45:59', NULL),
(35, 29, 126, '4.40', '2018-08-31 18:45:59', NULL),
(36, 29, 51, '4.60', '2018-08-31 18:45:59', NULL),
(37, 29, 52, '3.90', '2018-08-31 18:45:59', NULL),
(38, 29, 53, '3.40', '2018-08-31 18:45:59', NULL),
(39, 29, 54, '4.60', '2018-08-31 18:45:59', NULL),
(40, 29, 127, '3.50', '2018-08-31 18:45:59', NULL),
(41, 30, 55, '3.90', '2018-09-01 16:01:28', NULL),
(42, 30, 46, '4.90', '2018-09-01 16:01:28', NULL),
(43, 30, 48, '3.60', '2018-09-01 16:01:28', NULL),
(44, 30, 47, '4.70', '2018-09-01 16:01:28', NULL),
(45, 30, 49, '3.60', '2018-09-01 16:01:28', NULL),
(46, 30, 50, '4.60', '2018-09-01 16:01:28', NULL),
(47, 30, 124, '3.90', '2018-09-01 16:01:28', NULL),
(48, 30, 125, '4.50', '2018-09-01 16:01:28', NULL),
(49, 30, 126, '3.70', '2018-09-01 16:01:28', NULL),
(50, 30, 51, '4.50', '2018-09-01 16:01:28', NULL),
(51, 30, 52, '3.80', '2018-09-01 16:01:28', NULL),
(52, 30, 53, '4.70', '2018-09-01 16:01:28', NULL),
(53, 30, 54, '4.50', '2018-09-01 16:01:28', NULL),
(54, 30, 127, '4.70', '2018-09-01 16:01:28', NULL),
(55, 31, 11, '3.70', '2018-09-01 17:36:15', NULL),
(56, 31, 2, '2.50', '2018-09-01 17:36:15', NULL),
(57, 31, 4, '3.70', '2018-09-01 17:36:15', NULL),
(58, 31, 3, '2.60', '2018-09-01 17:36:15', NULL),
(59, 31, 5, '3.80', '2018-09-01 17:36:15', NULL),
(60, 31, 6, '2.90', '2018-09-01 17:36:15', NULL),
(61, 31, 12, '3.80', '2018-09-01 17:36:15', NULL),
(62, 31, 13, '2.60', '2018-09-01 17:36:15', NULL),
(63, 31, 14, '3.40', '2018-09-01 17:36:15', NULL),
(64, 31, 8, '3.70', '2018-09-01 17:36:15', NULL),
(65, 31, 9, '3.50', '2018-09-01 17:36:15', NULL),
(66, 31, 10, '3.80', '2018-09-01 17:36:15', NULL),
(67, 31, 15, '4.30', '2018-09-01 17:36:15', NULL),
(68, 32, 11, '3.90', '2018-09-01 17:36:57', NULL),
(69, 32, 2, '1.50', '2018-09-01 17:36:57', NULL),
(70, 32, 4, '3.70', '2018-09-01 17:36:57', NULL),
(71, 32, 3, '2.70', '2018-09-01 17:36:57', NULL),
(72, 32, 5, '3.70', '2018-09-01 17:36:57', NULL),
(73, 32, 6, '2.60', '2018-09-01 17:36:57', NULL),
(74, 32, 12, '4.10', '2018-09-01 17:36:57', NULL),
(75, 32, 13, '2.60', '2018-09-01 17:36:57', NULL),
(76, 32, 14, '3.70', '2018-09-01 17:36:57', NULL),
(77, 32, 8, '2.70', '2018-09-01 17:36:57', NULL),
(78, 32, 9, '3.70', '2018-09-01 17:36:57', NULL),
(79, 32, 10, '3.50', '2018-09-01 17:36:57', NULL),
(80, 32, 15, '4.50', '2018-09-01 17:36:57', NULL),
(81, 33, 55, '1.70', '2018-09-01 17:38:00', NULL),
(82, 33, 46, '4.70', '2018-09-01 17:38:00', NULL),
(83, 33, 48, '1.70', '2018-09-01 17:38:00', NULL),
(84, 33, 47, '4.80', '2018-09-01 17:38:00', NULL),
(85, 33, 49, '2.70', '2018-09-01 17:38:00', NULL),
(86, 33, 50, '4.70', '2018-09-01 17:38:00', NULL),
(87, 33, 124, '2.70', '2018-09-01 17:38:00', NULL),
(88, 33, 125, '4.80', '2018-09-01 17:38:00', NULL),
(89, 33, 126, '2.70', '2018-09-01 17:38:00', NULL),
(90, 33, 51, '4.90', '2018-09-01 17:38:00', NULL),
(91, 33, 52, '3.40', '2018-09-01 17:38:00', NULL),
(92, 33, 53, '3.90', '2018-09-01 17:38:00', NULL),
(93, 33, 54, '3.70', '2018-09-01 17:38:00', NULL),
(94, 33, 127, '3.80', '2018-09-01 17:38:00', NULL),
(95, 34, 55, '3.50', '2018-09-01 20:07:13', NULL),
(96, 34, 46, '3.80', '2018-09-01 20:07:13', NULL),
(97, 34, 48, '4.00', '2018-09-01 20:07:13', NULL),
(98, 34, 47, '3.80', '2018-09-01 20:07:13', NULL),
(99, 34, 49, '4.10', '2018-09-01 20:07:13', NULL),
(100, 34, 50, '3.60', '2018-09-01 20:07:13', NULL),
(101, 34, 124, '3.70', '2018-09-01 20:07:13', NULL),
(102, 34, 125, '3.40', '2018-09-01 20:07:13', NULL),
(103, 34, 126, '3.60', '2018-09-01 20:07:13', NULL),
(104, 34, 51, '4.30', '2018-09-01 20:07:13', NULL),
(105, 34, 52, '3.40', '2018-09-01 20:07:13', NULL),
(106, 34, 53, '4.10', '2018-09-01 20:07:13', NULL),
(107, 34, 54, '3.90', '2018-09-01 20:07:13', NULL),
(108, 34, 127, '3.80', '2018-09-01 20:07:13', NULL),
(109, 35, 96, '4.40', '2018-09-01 20:09:13', NULL),
(110, 35, 87, '4.70', '2018-09-01 20:09:13', NULL),
(111, 35, 89, '4.80', '2018-09-01 20:09:13', NULL),
(112, 35, 88, '4.60', '2018-09-01 20:09:14', NULL),
(113, 35, 90, '4.80', '2018-09-01 20:09:14', NULL),
(114, 35, 91, '4.50', '2018-09-01 20:09:14', NULL),
(115, 35, 97, '4.70', '2018-09-01 20:09:14', NULL),
(116, 35, 98, '4.90', '2018-09-01 20:09:14', NULL),
(117, 35, 99, '5.00', '2018-09-01 20:09:14', NULL),
(118, 35, 92, '4.90', '2018-09-01 20:09:14', NULL),
(119, 35, 93, '4.90', '2018-09-01 20:09:14', NULL),
(120, 35, 94, '4.80', '2018-09-01 20:09:14', NULL),
(121, 35, 95, '4.80', '2018-09-01 20:09:14', NULL),
(122, 35, 100, '4.70', '2018-09-01 20:09:14', NULL),
(123, 36, 11, '3.30', '2018-09-01 22:19:08', NULL),
(124, 36, 2, '1.50', '2018-09-01 22:19:08', NULL),
(125, 36, 4, '2.40', '2018-09-01 22:19:08', NULL),
(126, 36, 3, '2.50', '2018-09-01 22:19:08', NULL),
(127, 36, 5, '3.40', '2018-09-01 22:19:08', NULL),
(128, 36, 6, '2.70', '2018-09-01 22:19:08', NULL),
(129, 36, 12, '3.50', '2018-09-01 22:19:08', NULL),
(130, 36, 13, '3.80', '2018-09-01 22:19:08', NULL),
(131, 36, 14, '2.50', '2018-09-01 22:19:08', NULL),
(132, 36, 8, '3.70', '2018-09-01 22:19:08', NULL),
(133, 36, 9, '2.80', '2018-09-01 22:19:08', NULL),
(134, 36, 10, '3.60', '2018-09-01 22:19:08', NULL),
(135, 36, 15, '2.10', '2018-09-01 22:19:08', NULL),
(136, 37, 55, '2.60', '2018-09-03 12:57:36', NULL),
(137, 37, 46, '2.70', '2018-09-03 12:57:36', NULL),
(138, 37, 48, '2.70', '2018-09-03 12:57:36', NULL),
(139, 37, 47, '2.60', '2018-09-03 12:57:36', NULL),
(140, 37, 49, '2.70', '2018-09-03 12:57:36', NULL),
(141, 37, 50, '2.60', '2018-09-03 12:57:36', NULL),
(142, 37, 124, '2.70', '2018-09-03 12:57:36', NULL),
(143, 37, 125, '2.60', '2018-09-03 12:57:36', NULL),
(144, 37, 126, '3.70', '2018-09-03 12:57:36', NULL),
(145, 37, 51, '2.90', '2018-09-03 12:57:36', NULL),
(146, 37, 52, '3.70', '2018-09-03 12:57:36', NULL),
(147, 37, 53, '3.70', '2018-09-03 12:57:36', NULL),
(148, 37, 54, '3.70', '2018-09-03 12:57:36', NULL),
(149, 37, 127, '3.80', '2018-09-03 12:57:36', NULL),
(150, 38, 55, '2.50', '2018-09-03 13:09:26', NULL),
(151, 38, 46, '2.70', '2018-09-03 13:09:26', NULL),
(152, 38, 48, '2.50', '2018-09-03 13:09:26', NULL),
(153, 38, 47, '2.70', '2018-09-03 13:09:26', NULL),
(154, 38, 49, '2.50', '2018-09-03 13:09:26', NULL),
(155, 38, 50, '2.60', '2018-09-03 13:09:26', NULL),
(156, 38, 124, '3.60', '2018-09-03 13:09:26', NULL),
(157, 38, 125, '2.50', '2018-09-03 13:09:26', NULL),
(158, 38, 126, '3.60', '2018-09-03 13:09:26', NULL),
(159, 38, 51, '2.20', '2018-09-03 13:09:26', NULL),
(160, 38, 52, '3.60', '2018-09-03 13:09:26', NULL),
(161, 38, 53, '2.60', '2018-09-03 13:09:26', NULL),
(162, 38, 54, '3.70', '2018-09-03 13:09:26', NULL),
(163, 38, 127, '2.60', '2018-09-03 13:09:26', NULL),
(164, 39, 11, '3.70', '2018-09-06 17:39:15', NULL),
(165, 39, 2, '2.60', '2018-09-06 17:39:15', NULL),
(166, 39, 4, '3.60', '2018-09-06 17:39:15', NULL),
(167, 39, 3, '3.90', '2018-09-06 17:39:15', NULL),
(168, 39, 5, '3.70', '2018-09-06 17:39:15', NULL),
(169, 39, 6, '2.50', '2018-09-06 17:39:15', NULL),
(170, 39, 12, '3.20', '2018-09-06 17:39:15', NULL),
(171, 39, 13, '2.50', '2018-09-06 17:39:15', NULL),
(172, 39, 14, '3.50', '2018-09-06 17:39:15', NULL),
(173, 39, 8, '2.40', '2018-09-06 17:39:15', NULL),
(174, 39, 9, '3.50', '2018-09-06 17:39:15', NULL),
(175, 39, 10, '2.50', '2018-09-06 17:39:15', NULL),
(176, 39, 15, '3.40', '2018-09-06 17:39:15', NULL),
(177, 40, 11, '3.60', '2018-09-06 17:40:34', NULL),
(178, 40, 2, '2.40', '2018-09-06 17:40:34', NULL),
(179, 40, 4, '3.60', '2018-09-06 17:40:34', NULL),
(180, 40, 3, '2.50', '2018-09-06 17:40:34', NULL),
(181, 40, 5, '3.70', '2018-09-06 17:40:34', NULL),
(182, 40, 6, '2.70', '2018-09-06 17:40:34', NULL),
(183, 40, 12, '3.50', '2018-09-06 17:40:34', NULL),
(184, 40, 13, '2.60', '2018-09-06 17:40:34', NULL),
(185, 40, 14, '3.70', '2018-09-06 17:40:34', NULL),
(186, 40, 8, '2.50', '2018-09-06 17:40:34', NULL),
(187, 40, 9, '3.50', '2018-09-06 17:40:34', NULL),
(188, 40, 10, '2.40', '2018-09-06 17:40:34', NULL),
(189, 40, 15, '3.60', '2018-09-06 17:40:34', NULL),
(190, 41, 11, '2.20', '2018-09-14 16:26:08', NULL),
(191, 41, 2, '2.70', '2018-09-14 16:26:08', NULL),
(192, 41, 4, '2.20', '2018-09-14 16:26:08', NULL),
(193, 41, 3, '2.20', '2018-09-14 16:26:08', NULL),
(194, 41, 5, '2.50', '2018-09-14 16:26:08', NULL),
(195, 41, 6, '2.40', '2018-09-14 16:26:08', NULL),
(196, 41, 12, '2.50', '2018-09-14 16:26:08', NULL),
(197, 41, 13, '2.50', '2018-09-14 16:26:08', NULL),
(198, 41, 14, '2.50', '2018-09-14 16:26:08', NULL),
(199, 41, 8, '2.40', '2018-09-14 16:26:08', NULL),
(200, 41, 9, '2.60', '2018-09-14 16:26:08', NULL),
(201, 41, 10, '2.70', '2018-09-14 16:26:08', NULL),
(202, 41, 15, '2.40', '2018-09-14 16:26:08', NULL),
(203, 42, 11, '1.40', '2018-09-14 18:26:58', NULL),
(204, 42, 2, '1.50', '2018-09-14 18:26:58', NULL),
(205, 42, 4, '1.30', '2018-09-14 18:26:58', NULL),
(206, 42, 3, '1.60', '2018-09-14 18:26:58', NULL),
(207, 42, 5, '1.60', '2018-09-14 18:26:58', NULL),
(208, 42, 6, '1.80', '2018-09-14 18:26:58', NULL),
(209, 42, 12, '1.60', '2018-09-14 18:26:58', NULL),
(210, 42, 13, '2.80', '2018-09-14 18:26:58', NULL),
(211, 42, 14, '1.60', '2018-09-14 18:26:58', NULL),
(212, 42, 8, '3.70', '2018-09-14 18:26:58', NULL),
(213, 42, 9, '1.90', '2018-09-14 18:26:58', NULL),
(214, 42, 10, '4.70', '2018-09-14 18:26:58', NULL),
(215, 42, 15, '1.70', '2018-09-14 18:26:58', NULL),
(216, 43, 55, '1.50', '2018-09-24 18:09:18', NULL),
(217, 43, 46, '3.00', '2018-09-24 18:09:18', NULL),
(218, 43, 48, '1.50', '2018-09-24 18:09:18', NULL),
(219, 43, 47, '2.80', '2018-09-24 18:09:18', NULL),
(220, 43, 49, '1.50', '2018-09-24 18:09:18', NULL),
(221, 43, 50, '2.80', '2018-09-24 18:09:18', NULL),
(222, 43, 124, '1.50', '2018-09-24 18:09:18', NULL),
(223, 43, 125, '2.60', '2018-09-24 18:09:18', NULL),
(224, 43, 126, '2.40', '2018-09-24 18:09:18', NULL),
(225, 43, 51, '2.70', '2018-09-24 18:09:18', NULL),
(226, 43, 52, '2.40', '2018-09-24 18:09:18', NULL),
(227, 43, 53, '2.80', '2018-09-24 18:09:18', NULL),
(228, 43, 54, '2.80', '2018-09-24 18:09:18', NULL),
(229, 43, 127, '2.80', '2018-09-24 18:09:18', NULL),
(230, 44, 55, '1.90', '2018-09-24 18:56:00', NULL),
(231, 44, 46, '2.10', '2018-09-24 18:56:00', NULL),
(232, 44, 48, '2.50', '2018-09-24 18:56:00', NULL),
(233, 44, 47, '3.70', '2018-09-24 18:56:00', NULL),
(234, 44, 49, '2.60', '2018-09-24 18:56:00', NULL),
(235, 44, 50, '2.80', '2018-09-24 18:56:00', NULL),
(236, 44, 124, '2.70', '2018-09-24 18:56:00', NULL),
(237, 44, 125, '3.60', '2018-09-24 18:56:00', NULL),
(238, 44, 126, '2.60', '2018-09-24 18:56:00', NULL),
(239, 44, 51, '3.50', '2018-09-24 18:56:00', NULL),
(240, 44, 52, '2.70', '2018-09-24 18:56:00', NULL),
(241, 44, 53, '3.60', '2018-09-24 18:56:00', NULL),
(242, 44, 54, '2.70', '2018-09-24 18:56:00', NULL),
(243, 44, 127, '3.70', '2018-09-24 18:56:00', NULL),
(244, 45, 55, '2.80', '2018-09-24 20:23:15', NULL),
(245, 45, 46, '1.90', '2018-09-24 20:23:15', NULL),
(246, 45, 48, '2.70', '2018-09-24 20:23:15', NULL),
(247, 45, 47, '1.70', '2018-09-24 20:23:15', NULL),
(248, 45, 49, '2.70', '2018-09-24 20:23:15', NULL),
(249, 45, 50, '1.80', '2018-09-24 20:23:15', NULL),
(250, 45, 124, '2.70', '2018-09-24 20:23:15', NULL),
(251, 45, 125, '1.70', '2018-09-24 20:23:15', NULL),
(252, 45, 126, '2.70', '2018-09-24 20:23:15', NULL),
(253, 45, 51, '1.70', '2018-09-24 20:23:15', NULL),
(254, 45, 52, '2.20', '2018-09-24 20:23:15', NULL),
(255, 45, 53, '1.70', '2018-09-24 20:23:15', NULL),
(256, 45, 54, '2.70', '2018-09-24 20:23:15', NULL),
(257, 45, 127, '1.70', '2018-09-24 20:23:15', NULL),
(258, 46, 55, '2.30', '2018-09-24 20:25:03', NULL),
(259, 46, 46, '1.40', '2018-09-24 20:25:03', NULL),
(260, 46, 48, '2.50', '2018-09-24 20:25:03', NULL),
(261, 46, 47, '1.50', '2018-09-24 20:25:03', NULL),
(262, 46, 49, '2.70', '2018-09-24 20:25:03', NULL),
(263, 46, 50, '1.50', '2018-09-24 20:25:03', NULL),
(264, 46, 124, '2.60', '2018-09-24 20:25:03', NULL),
(265, 46, 125, '1.60', '2018-09-24 20:25:03', NULL),
(266, 46, 126, '2.60', '2018-09-24 20:25:03', NULL),
(267, 46, 51, '1.60', '2018-09-24 20:25:03', NULL),
(268, 46, 52, '2.70', '2018-09-24 20:25:03', NULL),
(269, 46, 53, '1.50', '2018-09-24 20:25:03', NULL),
(270, 46, 54, '2.50', '2018-09-24 20:25:03', NULL),
(271, 46, 127, '1.30', '2018-09-24 20:25:03', NULL),
(272, 47, 111, '1.60', '2018-09-26 00:48:19', NULL),
(273, 47, 102, '1.50', '2018-09-26 00:48:19', NULL),
(274, 47, 104, '1.70', '2018-09-26 00:48:19', NULL),
(275, 47, 103, '1.50', '2018-09-26 00:48:19', NULL),
(276, 47, 105, '1.50', '2018-09-26 00:48:19', NULL),
(277, 47, 106, '1.50', '2018-09-26 00:48:19', NULL),
(278, 47, 112, '2.70', '2018-09-26 00:48:19', NULL),
(279, 47, 113, '1.60', '2018-09-26 00:48:19', NULL),
(280, 47, 114, '1.70', '2018-09-26 00:48:19', NULL),
(281, 47, 107, '1.50', '2018-09-26 00:48:19', NULL),
(282, 47, 108, '2.50', '2018-09-26 00:48:19', NULL),
(283, 47, 109, '1.50', '2018-09-26 00:48:19', NULL),
(284, 47, 110, '2.40', '2018-09-26 00:48:19', NULL),
(285, 47, 115, '1.60', '2018-09-26 00:48:19', NULL),
(286, 48, 66, '3.70', '2018-10-03 14:44:56', NULL),
(287, 48, 57, '2.70', '2018-10-03 14:44:56', NULL),
(288, 48, 59, '3.50', '2018-10-03 14:44:56', NULL),
(289, 48, 58, '2.60', '2018-10-03 14:44:56', NULL),
(290, 48, 60, '3.50', '2018-10-03 14:44:56', NULL),
(291, 48, 61, '2.30', '2018-10-03 14:44:56', NULL),
(292, 48, 67, '3.30', '2018-10-03 14:44:56', NULL),
(293, 48, 68, '2.30', '2018-10-03 14:44:56', NULL),
(294, 48, 69, '1.40', '2018-10-03 14:44:56', NULL),
(295, 48, 62, '2.50', '2018-10-03 14:44:56', NULL),
(296, 48, 63, '1.50', '2018-10-03 14:44:56', NULL),
(297, 48, 64, '2.70', '2018-10-03 14:44:56', NULL),
(298, 48, 65, '1.40', '2018-10-03 14:44:56', NULL),
(299, 48, 70, '2.50', '2018-10-03 14:44:56', NULL),
(300, 49, 55, '2.60', '2018-10-03 16:49:49', NULL),
(301, 49, 46, '4.30', '2018-10-03 16:49:49', NULL),
(302, 49, 48, '3.90', '2018-10-03 16:49:49', NULL),
(303, 49, 47, '2.90', '2018-10-03 16:49:49', NULL),
(304, 49, 49, '1.10', '2018-10-03 16:49:49', NULL),
(305, 49, 50, '4.30', '2018-10-03 16:49:49', NULL),
(306, 49, 124, '1.60', '2018-10-03 16:49:49', NULL),
(307, 49, 125, '3.50', '2018-10-03 16:49:49', NULL),
(308, 49, 126, '1.30', '2018-10-03 16:49:49', NULL),
(309, 49, 51, '3.50', '2018-10-03 16:49:49', NULL),
(310, 49, 52, '3.60', '2018-10-03 16:49:49', NULL),
(311, 49, 53, '3.90', '2018-10-03 16:49:49', NULL),
(312, 49, 54, '4.00', '2018-10-03 16:49:49', NULL),
(313, 49, 127, '3.50', '2018-10-03 16:49:49', NULL),
(314, 50, 55, '4.00', '2018-10-03 18:37:10', NULL),
(315, 50, 46, '3.10', '2018-10-03 18:37:10', NULL),
(316, 50, 48, '2.40', '2018-10-03 18:37:10', NULL),
(317, 50, 47, '3.00', '2018-10-03 18:37:10', NULL),
(318, 50, 49, '3.90', '2018-10-03 18:37:10', NULL),
(319, 50, 50, '4.10', '2018-10-03 18:37:10', NULL),
(320, 50, 124, '1.90', '2018-10-03 18:37:10', NULL),
(321, 50, 125, '4.00', '2018-10-03 18:37:10', NULL),
(322, 50, 126, '5.00', '2018-10-03 18:37:10', NULL),
(323, 50, 51, '4.00', '2018-10-03 18:37:10', NULL),
(324, 50, 52, '5.00', '2018-10-03 18:37:10', NULL),
(325, 50, 53, '2.00', '2018-10-03 18:37:10', NULL),
(326, 50, 54, '2.10', '2018-10-03 18:37:10', NULL),
(327, 50, 127, '4.00', '2018-10-03 18:37:10', NULL),
(328, 51, 11, '3.90', '2018-10-03 20:58:03', NULL),
(329, 51, 2, '2.70', '2018-10-03 20:58:03', NULL),
(330, 51, 4, '2.00', '2018-10-03 20:58:03', NULL),
(331, 51, 3, '4.00', '2018-10-03 20:58:03', NULL),
(332, 51, 5, '3.90', '2018-10-03 20:58:03', NULL),
(333, 51, 6, '2.50', '2018-10-03 20:58:03', NULL),
(334, 51, 12, '3.30', '2018-10-03 20:58:03', NULL),
(335, 51, 13, '4.60', '2018-10-03 20:58:03', NULL),
(336, 51, 14, '3.90', '2018-10-03 20:58:03', NULL),
(337, 51, 8, '1.50', '2018-10-03 20:58:03', NULL),
(338, 51, 9, '2.90', '2018-10-03 20:58:03', NULL),
(339, 51, 10, '2.90', '2018-10-03 20:58:03', NULL),
(340, 51, 15, '3.90', '2018-10-03 20:58:03', NULL),
(341, 52, 66, '3.40', '2018-10-03 21:52:22', NULL),
(342, 52, 57, '1.60', '2018-10-03 21:52:22', NULL),
(343, 52, 59, '1.60', '2018-10-03 21:52:22', NULL),
(344, 52, 58, '3.70', '2018-10-03 21:52:22', NULL),
(345, 52, 60, '2.60', '2018-10-03 21:52:22', NULL),
(346, 52, 61, '0.90', '2018-10-03 21:52:22', NULL),
(347, 52, 67, '2.40', '2018-10-03 21:52:22', NULL),
(348, 52, 68, '3.10', '2018-10-03 21:52:22', NULL),
(349, 52, 69, '3.70', '2018-10-03 21:52:22', NULL),
(350, 52, 62, '1.50', '2018-10-03 21:52:22', NULL),
(351, 52, 63, '2.80', '2018-10-03 21:52:22', NULL),
(352, 52, 64, '3.70', '2018-10-03 21:52:22', NULL),
(353, 52, 65, '3.90', '2018-10-03 21:52:22', NULL),
(354, 52, 70, '2.20', '2018-10-03 21:52:22', NULL),
(355, 53, 55, '3.70', '2018-10-04 14:04:55', NULL),
(356, 53, 46, '3.40', '2018-10-04 14:04:55', NULL),
(357, 53, 48, '3.20', '2018-10-04 14:04:55', NULL),
(358, 53, 47, '3.50', '2018-10-04 14:04:55', NULL),
(359, 53, 49, '4.00', '2018-10-04 14:04:55', NULL),
(360, 53, 50, '3.70', '2018-10-04 14:04:55', NULL),
(361, 53, 124, '3.40', '2018-10-04 14:04:55', NULL),
(362, 53, 125, '3.50', '2018-10-04 14:04:55', NULL),
(363, 53, 126, '4.40', '2018-10-04 14:04:55', NULL),
(364, 53, 51, '3.80', '2018-10-04 14:04:55', NULL),
(365, 53, 52, '4.30', '2018-10-04 14:04:55', NULL),
(366, 53, 53, '4.30', '2018-10-04 14:04:55', NULL),
(367, 53, 54, '4.30', '2018-10-04 14:04:55', NULL),
(368, 53, 127, '3.90', '2018-10-04 14:04:55', NULL),
(369, 55, 55, '3.20', '2018-10-05 15:44:59', NULL),
(370, 55, 46, '2.00', '2018-10-05 15:44:59', NULL),
(371, 55, 48, '3.20', '2018-10-05 15:44:59', NULL),
(372, 55, 47, '2.80', '2018-10-05 15:44:59', NULL),
(373, 55, 49, '2.50', '2018-10-05 15:44:59', NULL),
(374, 55, 50, '1.40', '2018-10-05 15:44:59', NULL),
(375, 55, 124, '2.30', '2018-10-05 15:44:59', NULL),
(376, 55, 125, '4.20', '2018-10-05 15:44:59', NULL),
(377, 55, 126, '3.70', '2018-10-05 15:44:59', NULL),
(378, 55, 51, '2.20', '2018-10-05 15:44:59', NULL),
(379, 55, 52, '1.90', '2018-10-05 15:44:59', NULL),
(380, 55, 53, '3.00', '2018-10-05 15:44:59', NULL),
(381, 55, 54, '3.50', '2018-10-05 15:44:59', NULL),
(382, 55, 127, '1.80', '2018-10-05 15:44:59', NULL),
(383, 57, 66, '2.30', '2018-10-05 15:59:08', NULL),
(384, 57, 57, '1.50', '2018-10-05 15:59:08', NULL),
(385, 57, 59, '2.50', '2018-10-05 15:59:08', NULL),
(386, 57, 58, '3.60', '2018-10-05 15:59:08', NULL),
(387, 57, 60, '2.40', '2018-10-05 15:59:08', NULL),
(388, 57, 61, '1.80', '2018-10-05 15:59:08', NULL),
(389, 57, 67, '0.80', '2018-10-05 15:59:08', NULL),
(390, 57, 68, '3.30', '2018-10-05 15:59:08', NULL),
(391, 57, 69, '3.70', '2018-10-05 15:59:08', NULL),
(392, 57, 62, '1.60', '2018-10-05 15:59:08', NULL),
(393, 57, 63, '2.40', '2018-10-05 15:59:08', NULL),
(394, 57, 64, '3.00', '2018-10-05 15:59:08', NULL),
(395, 57, 65, '4.10', '2018-10-05 15:59:08', NULL),
(396, 57, 70, '1.00', '2018-10-05 15:59:08', NULL),
(397, 59, 55, '2.60', '2018-10-05 21:13:12', NULL),
(398, 59, 46, '1.40', '2018-10-05 21:13:12', NULL),
(399, 59, 48, '2.50', '2018-10-05 21:13:12', NULL),
(400, 59, 47, '1.60', '2018-10-05 21:13:12', NULL),
(401, 59, 49, '2.60', '2018-10-05 21:13:12', NULL),
(402, 59, 50, '2.60', '2018-10-05 21:13:12', NULL),
(403, 59, 124, '2.90', '2018-10-05 21:13:12', NULL),
(404, 59, 125, '2.50', '2018-10-05 21:13:12', NULL),
(405, 59, 126, '2.90', '2018-10-05 21:13:12', NULL),
(406, 59, 51, '2.50', '2018-10-05 21:13:12', NULL),
(407, 59, 52, '2.70', '2018-10-05 21:13:12', NULL),
(408, 59, 53, '2.80', '2018-10-05 21:13:12', NULL),
(409, 59, 54, '3.40', '2018-10-05 21:13:12', NULL),
(410, 59, 127, '2.40', '2018-10-05 21:13:13', NULL),
(411, 60, 55, '2.90', '2018-10-05 22:13:58', NULL),
(412, 60, 46, '3.10', '2018-10-05 22:13:58', NULL),
(413, 60, 48, '1.10', '2018-10-05 22:13:58', NULL),
(414, 60, 47, '1.40', '2018-10-05 22:13:58', NULL),
(415, 60, 49, '2.80', '2018-10-05 22:13:58', NULL),
(416, 60, 50, '3.90', '2018-10-05 22:13:58', NULL),
(417, 60, 124, '1.70', '2018-10-05 22:13:58', NULL),
(418, 60, 125, '2.40', '2018-10-05 22:13:58', NULL),
(419, 60, 126, '4.90', '2018-10-05 22:13:58', NULL),
(420, 60, 51, '3.40', '2018-10-05 22:13:58', NULL),
(421, 60, 52, '2.30', '2018-10-05 22:13:58', NULL),
(422, 60, 53, '1.90', '2018-10-05 22:13:58', NULL),
(423, 60, 54, '2.10', '2018-10-05 22:13:58', NULL),
(424, 60, 127, '2.00', '2018-10-05 22:13:58', NULL),
(425, 61, 55, '2.10', '2018-10-05 22:20:50', NULL),
(426, 61, 46, '2.00', '2018-10-05 22:20:50', NULL),
(427, 61, 48, '2.60', '2018-10-05 22:20:50', NULL),
(428, 61, 47, '2.50', '2018-10-05 22:20:50', NULL),
(429, 61, 49, '2.90', '2018-10-05 22:20:50', NULL),
(430, 61, 50, '3.40', '2018-10-05 22:20:50', NULL),
(431, 61, 124, '2.60', '2018-10-05 22:20:50', NULL),
(432, 61, 125, '3.00', '2018-10-05 22:20:50', NULL),
(433, 61, 126, '3.50', '2018-10-05 22:20:50', NULL),
(434, 61, 51, '1.30', '2018-10-05 22:20:50', NULL),
(435, 61, 52, '2.00', '2018-10-05 22:20:50', NULL),
(436, 61, 53, '3.20', '2018-10-05 22:20:50', NULL),
(437, 61, 54, '3.90', '2018-10-05 22:20:50', NULL),
(438, 61, 127, '1.90', '2018-10-05 22:20:50', NULL),
(439, 62, 55, '1.90', '2018-10-06 13:51:12', NULL),
(440, 62, 46, '4.90', '2018-10-06 13:51:12', NULL),
(441, 62, 48, '1.50', '2018-10-06 13:51:12', NULL),
(442, 62, 47, '4.50', '2018-10-06 13:51:12', NULL),
(443, 62, 49, '3.20', '2018-10-06 13:51:12', NULL),
(444, 62, 50, '3.60', '2018-10-06 13:51:12', NULL),
(445, 62, 124, '4.80', '2018-10-06 13:51:12', NULL),
(446, 62, 125, '2.70', '2018-10-06 13:51:12', NULL),
(447, 62, 126, '2.70', '2018-10-06 13:51:12', NULL),
(448, 62, 51, '2.40', '2018-10-06 13:51:12', NULL),
(449, 62, 52, '2.50', '2018-10-06 13:51:12', NULL),
(450, 62, 53, '3.50', '2018-10-06 13:51:12', NULL),
(451, 62, 54, '3.60', '2018-10-06 13:51:12', NULL),
(452, 62, 127, '2.10', '2018-10-06 13:51:12', NULL),
(453, 63, 55, '2.40', '2018-10-06 13:55:09', NULL),
(454, 63, 46, '2.80', '2018-10-06 13:55:09', NULL),
(455, 63, 48, '2.00', '2018-10-06 13:55:09', NULL),
(456, 63, 47, '3.90', '2018-10-06 13:55:09', NULL),
(457, 63, 49, '4.80', '2018-10-06 13:55:09', NULL),
(458, 63, 50, '3.40', '2018-10-06 13:55:09', NULL),
(459, 63, 124, '4.70', '2018-10-06 13:55:09', NULL),
(460, 63, 125, '3.70', '2018-10-06 13:55:09', NULL),
(461, 63, 126, '1.30', '2018-10-06 13:55:09', NULL),
(462, 63, 51, '4.60', '2018-10-06 13:55:09', NULL),
(463, 63, 52, '1.80', '2018-10-06 13:55:09', NULL),
(464, 63, 53, '2.40', '2018-10-06 13:55:09', NULL),
(465, 63, 54, '3.80', '2018-10-06 13:55:09', NULL),
(466, 63, 127, '4.20', '2018-10-06 13:55:09', NULL),
(467, 64, 55, '3.50', '2018-10-08 00:31:24', NULL),
(468, 64, 46, '3.40', '2018-10-08 00:31:24', NULL),
(469, 64, 48, '4.90', '2018-10-08 00:31:24', NULL),
(470, 64, 47, '3.50', '2018-10-08 00:31:24', NULL),
(471, 64, 49, '4.50', '2018-10-08 00:31:24', NULL),
(472, 64, 50, '2.50', '2018-10-08 00:31:24', NULL),
(473, 64, 124, '2.20', '2018-10-08 00:31:24', NULL),
(474, 64, 125, '2.50', '2018-10-08 00:31:24', NULL),
(475, 64, 126, '4.30', '2018-10-08 00:31:24', NULL),
(476, 64, 51, '3.80', '2018-10-08 00:31:24', NULL),
(477, 64, 52, '3.20', '2018-10-08 00:31:24', NULL),
(478, 64, 53, '3.40', '2018-10-08 00:31:24', NULL),
(479, 64, 54, '4.60', '2018-10-08 00:31:24', NULL),
(480, 64, 127, '3.40', '2018-10-08 00:31:24', NULL),
(481, 65, 55, '1.30', '2018-10-08 15:08:29', NULL),
(482, 65, 46, '2.70', '2018-10-08 15:08:29', NULL),
(483, 65, 48, '1.90', '2018-10-08 15:08:29', NULL),
(484, 65, 47, '2.60', '2018-10-08 15:08:29', NULL),
(485, 65, 49, '3.40', '2018-10-08 15:08:29', NULL),
(486, 65, 50, '2.40', '2018-10-08 15:08:29', NULL),
(487, 65, 124, '3.60', '2018-10-08 15:08:29', NULL),
(488, 65, 125, '2.60', '2018-10-08 15:08:29', NULL),
(489, 65, 126, '2.40', '2018-10-08 15:08:29', NULL),
(490, 65, 51, '2.60', '2018-10-08 15:08:29', NULL),
(491, 65, 52, '2.40', '2018-10-08 15:08:29', NULL),
(492, 65, 53, '2.60', '2018-10-08 15:08:29', NULL),
(493, 65, 54, '2.80', '2018-10-08 15:08:29', NULL),
(494, 65, 127, '2.50', '2018-10-08 15:08:29', NULL),
(495, 66, 55, '3.10', '2018-10-08 15:11:05', NULL),
(496, 66, 46, '3.00', '2018-10-08 15:11:05', NULL),
(497, 66, 48, '3.10', '2018-10-08 15:11:05', NULL),
(498, 66, 47, '3.00', '2018-10-08 15:11:05', NULL),
(499, 66, 49, '3.00', '2018-10-08 15:11:05', NULL),
(500, 66, 50, '3.00', '2018-10-08 15:11:05', NULL),
(501, 66, 124, '3.00', '2018-10-08 15:11:05', NULL),
(502, 66, 125, '2.80', '2018-10-08 15:11:05', NULL),
(503, 66, 126, '3.20', '2018-10-08 15:11:05', NULL),
(504, 66, 51, '3.10', '2018-10-08 15:11:05', NULL),
(505, 66, 52, '2.90', '2018-10-08 15:11:05', NULL),
(506, 66, 53, '2.90', '2018-10-08 15:11:05', NULL),
(507, 66, 54, '3.00', '2018-10-08 15:11:05', NULL),
(508, 66, 127, '3.00', '2018-10-08 15:11:05', NULL),
(509, 67, 55, '2.20', '2018-10-09 19:25:15', NULL),
(510, 67, 46, '2.90', '2018-10-09 19:25:15', NULL),
(511, 67, 48, '2.50', '2018-10-09 19:25:15', NULL),
(512, 67, 47, '3.00', '2018-10-09 19:25:15', NULL),
(513, 67, 49, '2.60', '2018-10-09 19:25:15', NULL),
(514, 67, 50, '2.90', '2018-10-09 19:25:15', NULL),
(515, 67, 124, '2.90', '2018-10-09 19:25:15', NULL),
(516, 67, 125, '2.80', '2018-10-09 19:25:16', NULL),
(517, 67, 126, '2.40', '2018-10-09 19:25:16', NULL),
(518, 67, 51, '2.00', '2018-10-09 19:25:16', NULL),
(519, 67, 52, '2.90', '2018-10-09 19:25:16', NULL),
(520, 67, 53, '2.00', '2018-10-09 19:25:16', NULL),
(521, 67, 54, '2.80', '2018-10-09 19:25:16', NULL),
(522, 67, 127, '1.20', '2018-10-09 19:25:16', NULL),
(523, 68, 55, '3.30', '2018-11-13 19:28:30', NULL),
(524, 68, 46, '3.00', '2018-11-13 19:28:30', NULL),
(525, 68, 48, '3.30', '2018-11-13 19:28:30', NULL),
(526, 68, 47, '2.90', '2018-11-13 19:28:30', NULL),
(527, 68, 49, '2.70', '2018-11-13 19:28:30', NULL),
(528, 68, 50, '2.90', '2018-11-13 19:28:30', NULL),
(529, 68, 124, '2.60', '2018-11-13 19:28:30', NULL),
(530, 68, 125, '2.80', '2018-11-13 19:28:30', NULL),
(531, 68, 126, '2.80', '2018-11-13 19:28:30', NULL),
(532, 68, 51, '2.80', '2018-11-13 19:28:30', NULL),
(533, 68, 52, '2.80', '2018-11-13 19:28:30', NULL),
(534, 68, 53, '2.80', '2018-11-13 19:28:30', NULL),
(535, 68, 54, '3.10', '2018-11-13 19:28:30', NULL),
(536, 68, 127, '2.80', '2018-11-13 19:28:30', NULL),
(537, 69, 11, '2.80', '2018-11-13 19:36:26', NULL),
(538, 69, 2, '2.60', '2018-11-13 19:36:26', NULL),
(539, 69, 4, '2.80', '2018-11-13 19:36:26', NULL),
(540, 69, 3, '3.10', '2018-11-13 19:36:26', NULL),
(541, 69, 5, '2.80', '2018-11-13 19:36:26', NULL),
(542, 69, 6, '2.30', '2018-11-13 19:36:26', NULL),
(543, 69, 12, '2.80', '2018-11-13 19:36:26', NULL),
(544, 69, 13, '2.00', '2018-11-13 19:36:26', NULL),
(545, 69, 14, '3.10', '2018-11-13 19:36:26', NULL),
(546, 69, 8, '3.10', '2018-11-13 19:36:26', NULL),
(547, 69, 9, '3.50', '2018-11-13 19:36:26', NULL),
(548, 69, 10, '2.70', '2018-11-13 19:36:26', NULL),
(549, 69, 15, '2.70', '2018-11-13 19:36:26', NULL),
(550, 70, 111, '1.90', '2018-11-13 19:38:11', NULL),
(551, 70, 102, '2.50', '2018-11-13 19:38:11', NULL),
(552, 70, 104, '2.90', '2018-11-13 19:38:11', NULL),
(553, 70, 103, '2.90', '2018-11-13 19:38:11', NULL),
(554, 70, 105, '3.10', '2018-11-13 19:38:11', NULL),
(555, 70, 106, '3.00', '2018-11-13 19:38:11', NULL),
(556, 70, 112, '2.40', '2018-11-13 19:38:11', NULL),
(557, 70, 113, '2.50', '2018-11-13 19:38:11', NULL),
(558, 70, 114, '2.50', '2018-11-13 19:38:11', NULL),
(559, 70, 107, '2.70', '2018-11-13 19:38:11', NULL),
(560, 70, 108, '2.40', '2018-11-13 19:38:11', NULL),
(561, 70, 109, '2.40', '2018-11-13 19:38:11', NULL),
(562, 70, 110, '2.80', '2018-11-13 19:38:11', NULL),
(563, 70, 115, '3.20', '2018-11-13 19:38:11', NULL),
(564, 71, 11, '2.80', '2018-11-13 19:42:03', NULL),
(565, 71, 2, '3.20', '2018-11-13 19:42:03', NULL),
(566, 71, 4, '3.90', '2018-11-13 19:42:03', NULL),
(567, 71, 3, '1.70', '2018-11-13 19:42:03', NULL),
(568, 71, 5, '2.30', '2018-11-13 19:42:03', NULL),
(569, 71, 6, '2.90', '2018-11-13 19:42:03', NULL),
(570, 71, 12, '2.50', '2018-11-13 19:42:03', NULL),
(571, 71, 13, '3.40', '2018-11-13 19:42:03', NULL),
(572, 71, 14, '3.10', '2018-11-13 19:42:03', NULL),
(573, 71, 8, '1.40', '2018-11-13 19:42:03', NULL),
(574, 71, 9, '2.80', '2018-11-13 19:42:03', NULL),
(575, 71, 10, '3.00', '2018-11-13 19:42:03', NULL),
(576, 71, 15, '2.40', '2018-11-13 19:42:03', NULL),
(577, 72, 11, '2.50', '2018-11-13 19:51:32', NULL),
(578, 72, 2, '3.00', '2018-11-13 19:51:32', NULL),
(579, 72, 4, '3.40', '2018-11-13 19:51:32', NULL),
(580, 72, 3, '3.20', '2018-11-13 19:51:32', NULL),
(581, 72, 5, '3.40', '2018-11-13 19:51:32', NULL),
(582, 72, 6, '2.70', '2018-11-13 19:51:32', NULL),
(583, 72, 12, '2.40', '2018-11-13 19:51:32', NULL),
(584, 72, 13, '2.50', '2018-11-13 19:51:32', NULL),
(585, 72, 14, '2.90', '2018-11-13 19:51:32', NULL),
(586, 72, 8, '2.50', '2018-11-13 19:51:32', NULL),
(587, 72, 9, '3.00', '2018-11-13 19:51:32', NULL),
(588, 72, 10, '2.70', '2018-11-13 19:51:32', NULL),
(589, 72, 15, '3.00', '2018-11-13 19:51:32', NULL),
(590, 73, 11, '2.40', '2018-11-13 19:56:35', NULL),
(591, 73, 2, '3.50', '2018-11-13 19:56:35', NULL),
(592, 73, 4, '2.60', '2018-11-13 19:56:35', NULL),
(593, 73, 3, '3.70', '2018-11-13 19:56:35', NULL),
(594, 73, 5, '2.20', '2018-11-13 19:56:35', NULL),
(595, 73, 6, '2.70', '2018-11-13 19:56:35', NULL),
(596, 73, 12, '2.70', '2018-11-13 19:56:35', NULL),
(597, 73, 13, '2.70', '2018-11-13 19:56:35', NULL),
(598, 73, 14, '2.30', '2018-11-13 19:56:35', NULL),
(599, 73, 8, '3.20', '2018-11-13 19:56:35', NULL),
(600, 73, 9, '2.60', '2018-11-13 19:56:35', NULL),
(601, 73, 10, '2.80', '2018-11-13 19:56:35', NULL),
(602, 73, 15, '3.10', '2018-11-13 19:56:35', NULL),
(603, 74, 11, '2.20', '2018-11-13 20:06:46', NULL),
(604, 74, 2, '2.70', '2018-11-13 20:06:46', NULL),
(605, 74, 4, '2.60', '2018-11-13 20:06:46', NULL),
(606, 74, 3, '2.40', '2018-11-13 20:06:46', NULL),
(607, 74, 5, '3.30', '2018-11-13 20:06:46', NULL),
(608, 74, 6, '2.80', '2018-11-13 20:06:46', NULL),
(609, 74, 12, '2.90', '2018-11-13 20:06:46', NULL),
(610, 74, 13, '3.50', '2018-11-13 20:06:46', NULL),
(611, 74, 14, '2.70', '2018-11-13 20:06:46', NULL),
(612, 74, 8, '2.40', '2018-11-13 20:06:46', NULL),
(613, 74, 9, '2.90', '2018-11-13 20:06:46', NULL),
(614, 74, 10, '2.60', '2018-11-13 20:06:46', NULL),
(615, 74, 15, '2.60', '2018-11-13 20:06:46', NULL),
(616, 75, 11, '2.60', '2018-11-13 20:08:14', NULL),
(617, 75, 2, '2.40', '2018-11-13 20:08:14', NULL),
(618, 75, 4, '2.60', '2018-11-13 20:08:14', NULL),
(619, 75, 3, '2.40', '2018-11-13 20:08:15', NULL),
(620, 75, 5, '2.60', '2018-11-13 20:08:15', NULL),
(621, 75, 6, '2.50', '2018-11-13 20:08:15', NULL),
(622, 75, 12, '2.30', '2018-11-13 20:08:15', NULL),
(623, 75, 13, '2.60', '2018-11-13 20:08:15', NULL),
(624, 75, 14, '2.70', '2018-11-13 20:08:15', NULL),
(625, 75, 8, '2.60', '2018-11-13 20:08:15', NULL),
(626, 75, 9, '2.70', '2018-11-13 20:08:15', NULL),
(627, 75, 10, '2.80', '2018-11-13 20:08:15', NULL),
(628, 75, 15, '2.70', '2018-11-13 20:08:15', NULL),
(629, 76, 55, '3.00', '2018-11-23 15:55:13', NULL),
(630, 76, 46, '2.70', '2018-11-23 15:55:13', NULL),
(631, 76, 48, '2.60', '2018-11-23 15:55:13', NULL),
(632, 76, 47, '2.60', '2018-11-23 15:55:13', NULL),
(633, 76, 49, '2.40', '2018-11-23 15:55:13', NULL),
(634, 76, 50, '2.80', '2018-11-23 15:55:13', NULL),
(635, 76, 124, '3.00', '2018-11-23 15:55:13', NULL),
(636, 76, 125, '2.90', '2018-11-23 15:55:13', NULL),
(637, 76, 126, '2.70', '2018-11-23 15:55:13', NULL),
(638, 76, 51, '2.70', '2018-11-23 15:55:13', NULL),
(639, 76, 52, '2.70', '2018-11-23 15:55:13', NULL),
(640, 76, 53, '2.50', '2018-11-23 15:55:13', NULL),
(641, 76, 54, '2.30', '2018-11-23 15:55:13', NULL),
(642, 76, 127, '2.50', '2018-11-23 15:55:13', NULL),
(643, 77, 26, '2.90', '2018-11-26 15:06:47', NULL),
(644, 77, 17, '3.70', '2018-11-26 15:06:47', NULL),
(645, 77, 19, '2.70', '2018-11-26 15:06:47', NULL),
(646, 77, 18, '2.70', '2018-11-26 15:06:47', NULL),
(647, 77, 20, '3.30', '2018-11-26 15:06:47', NULL),
(648, 77, 21, '3.70', '2018-11-26 15:06:47', NULL),
(649, 77, 27, '3.80', '2018-11-26 15:06:47', NULL),
(650, 77, 28, '2.90', '2018-11-26 15:06:47', NULL),
(651, 77, 29, '3.50', '2018-11-26 15:06:47', NULL),
(652, 77, 23, '2.70', '2018-11-26 15:06:47', NULL),
(653, 77, 24, '3.80', '2018-11-26 15:06:47', NULL),
(654, 77, 25, '3.20', '2018-11-26 15:06:47', NULL),
(655, 77, 30, '3.20', '2018-11-26 15:06:47', NULL),
(656, 78, 11, '3.60', '2018-11-26 17:58:17', NULL),
(657, 78, 2, '4.00', '2018-11-26 17:58:17', NULL),
(658, 78, 4, '4.60', '2018-11-26 17:58:17', NULL),
(659, 78, 3, '1.60', '2018-11-26 17:58:17', NULL),
(660, 78, 5, '4.90', '2018-11-26 17:58:17', NULL),
(661, 78, 6, '3.40', '2018-11-26 17:58:17', NULL),
(662, 78, 12, '5.00', '2018-11-26 17:58:17', NULL),
(663, 78, 13, '3.80', '2018-11-26 17:58:17', NULL),
(664, 78, 14, '4.80', '2018-11-26 17:58:17', NULL),
(665, 78, 8, '2.20', '2018-11-26 17:58:17', NULL),
(666, 78, 9, '4.60', '2018-11-26 17:58:17', NULL),
(667, 78, 10, '3.50', '2018-11-26 17:58:17', NULL),
(668, 78, 15, '2.60', '2018-11-26 17:58:17', NULL),
(669, 79, 55, '2.50', '2018-11-27 11:59:20', NULL),
(670, 79, 46, '3.90', '2018-11-27 11:59:20', NULL),
(671, 79, 48, '2.70', '2018-11-27 11:59:20', NULL),
(672, 79, 47, '3.30', '2018-11-27 11:59:20', NULL),
(673, 79, 49, '2.50', '2018-11-27 11:59:20', NULL),
(674, 79, 50, '3.30', '2018-11-27 11:59:20', NULL),
(675, 79, 124, '2.90', '2018-11-27 11:59:20', NULL),
(676, 79, 125, '3.00', '2018-11-27 11:59:20', NULL),
(677, 79, 126, '2.40', '2018-11-27 11:59:20', NULL),
(678, 79, 51, '4.00', '2018-11-27 11:59:20', NULL),
(679, 79, 52, '3.20', '2018-11-27 11:59:20', NULL),
(680, 79, 53, '3.80', '2018-11-27 11:59:20', NULL),
(681, 79, 54, '3.20', '2018-11-27 11:59:20', NULL),
(682, 79, 127, '3.70', '2018-11-27 11:59:20', NULL),
(683, 80, 55, '4.00', '2018-11-27 12:01:59', NULL),
(684, 80, 46, '3.50', '2018-11-27 12:01:59', NULL),
(685, 80, 48, '3.50', '2018-11-27 12:01:59', NULL),
(686, 80, 47, '1.80', '2018-11-27 12:01:59', NULL),
(687, 80, 49, '3.20', '2018-11-27 12:01:59', NULL),
(688, 80, 50, '2.50', '2018-11-27 12:01:59', NULL),
(689, 80, 124, '2.50', '2018-11-27 12:01:59', NULL),
(690, 80, 125, '3.20', '2018-11-27 12:01:59', NULL),
(691, 80, 126, '3.80', '2018-11-27 12:01:59', NULL),
(692, 80, 51, '3.00', '2018-11-27 12:01:59', NULL),
(693, 80, 52, '3.60', '2018-11-27 12:01:59', NULL),
(694, 80, 53, '2.80', '2018-11-27 12:01:59', NULL),
(695, 80, 54, '3.50', '2018-11-27 12:01:59', NULL),
(696, 80, 127, '3.20', '2018-11-27 12:01:59', NULL),
(697, 81, 55, '2.70', '2018-11-27 12:03:17', NULL),
(698, 81, 46, '3.80', '2018-11-27 12:03:17', NULL),
(699, 81, 48, '3.10', '2018-11-27 12:03:17', NULL),
(700, 81, 47, '4.00', '2018-11-27 12:03:17', NULL),
(701, 81, 49, '3.10', '2018-11-27 12:03:17', NULL),
(702, 81, 50, '3.70', '2018-11-27 12:03:17', NULL),
(703, 81, 124, '3.40', '2018-11-27 12:03:17', NULL),
(704, 81, 125, '4.20', '2018-11-27 12:03:17', NULL),
(705, 81, 126, '2.40', '2018-11-27 12:03:17', NULL),
(706, 81, 51, '3.70', '2018-11-27 12:03:17', NULL),
(707, 81, 52, '2.50', '2018-11-27 12:03:17', NULL),
(708, 81, 53, '3.70', '2018-11-27 12:03:17', NULL),
(709, 81, 54, '2.30', '2018-11-27 12:03:17', NULL),
(710, 81, 127, '4.00', '2018-11-27 12:03:17', NULL),
(711, 82, 55, '2.00', '2018-11-27 12:08:39', NULL),
(712, 82, 46, '2.50', '2018-11-27 12:08:39', NULL),
(713, 82, 48, '3.20', '2018-11-27 12:08:39', NULL),
(714, 82, 47, '2.70', '2018-11-27 12:08:39', NULL),
(715, 82, 49, '2.30', '2018-11-27 12:08:39', NULL),
(716, 82, 50, '2.90', '2018-11-27 12:08:39', NULL),
(717, 82, 124, '2.60', '2018-11-27 12:08:39', NULL),
(718, 82, 125, '2.80', '2018-11-27 12:08:39', NULL),
(719, 82, 126, '2.90', '2018-11-27 12:08:39', NULL),
(720, 82, 51, '2.60', '2018-11-27 12:08:39', NULL),
(721, 82, 52, '2.80', '2018-11-27 12:08:39', NULL),
(722, 82, 53, '2.50', '2018-11-27 12:08:39', NULL),
(723, 82, 54, '2.90', '2018-11-27 12:08:39', NULL),
(724, 82, 127, '3.10', '2018-11-27 12:08:39', NULL),
(725, 83, 55, '2.70', '2018-11-27 12:12:57', NULL),
(726, 83, 46, '2.90', '2018-11-27 12:12:57', NULL),
(727, 83, 48, '2.70', '2018-11-27 12:12:57', NULL),
(728, 83, 47, '3.60', '2018-11-27 12:12:57', NULL),
(729, 83, 49, '2.70', '2018-11-27 12:12:57', NULL),
(730, 83, 50, '2.90', '2018-11-27 12:12:57', NULL),
(731, 83, 124, '3.30', '2018-11-27 12:12:57', NULL),
(732, 83, 125, '3.50', '2018-11-27 12:12:57', NULL),
(733, 83, 126, '3.20', '2018-11-27 12:12:57', NULL),
(734, 83, 51, '3.30', '2018-11-27 12:12:57', NULL),
(735, 83, 52, '3.00', '2018-11-27 12:12:57', NULL),
(736, 83, 53, '2.90', '2018-11-27 12:12:57', NULL),
(737, 83, 54, '3.00', '2018-11-27 12:12:58', NULL),
(738, 83, 127, '3.40', '2018-11-27 12:12:58', NULL),
(739, 84, 11, '0.70', '2018-11-30 18:33:38', NULL),
(740, 84, 2, '1.80', '2018-11-30 18:33:38', NULL),
(741, 84, 4, '0.90', '2018-11-30 18:33:38', NULL),
(742, 84, 3, '2.70', '2018-11-30 18:33:38', NULL),
(743, 84, 5, '2.60', '2018-11-30 18:33:38', NULL),
(744, 84, 6, '3.60', '2018-11-30 18:33:38', NULL),
(745, 84, 12, '2.40', '2018-11-30 18:33:38', NULL),
(746, 84, 13, '3.60', '2018-11-30 18:33:38', NULL),
(747, 84, 14, '2.70', '2018-11-30 18:33:38', NULL),
(748, 84, 8, '4.30', '2018-11-30 18:33:38', NULL),
(749, 84, 9, '2.30', '2018-11-30 18:33:38', NULL),
(750, 84, 10, '4.50', '2018-11-30 18:33:38', NULL),
(751, 84, 15, '1.60', '2018-11-30 18:33:38', NULL),
(752, 85, 11, '0.40', '2018-11-30 18:34:51', NULL),
(753, 85, 2, '0.60', '2018-11-30 18:34:51', NULL),
(754, 85, 4, '1.30', '2018-11-30 18:34:51', NULL),
(755, 85, 3, '2.60', '2018-11-30 18:34:51', NULL),
(756, 85, 5, '3.50', '2018-11-30 18:34:51', NULL),
(757, 85, 6, '3.50', '2018-11-30 18:34:51', NULL),
(758, 85, 12, '3.00', '2018-11-30 18:34:51', NULL),
(759, 85, 13, '2.40', '2018-11-30 18:34:51', NULL),
(760, 85, 14, '2.70', '2018-11-30 18:34:51', NULL),
(761, 85, 8, '4.30', '2018-11-30 18:34:51', NULL),
(762, 85, 9, '2.40', '2018-11-30 18:34:51', NULL),
(763, 85, 10, '2.50', '2018-11-30 18:34:51', NULL),
(764, 85, 15, '4.70', '2018-11-30 18:34:51', NULL),
(765, 86, 55, '2.50', '2018-12-04 17:26:19', NULL),
(766, 86, 46, '3.60', '2018-12-04 17:26:19', NULL),
(767, 86, 48, '1.70', '2018-12-04 17:26:19', NULL),
(768, 86, 47, '1.60', '2018-12-04 17:26:19', NULL),
(769, 86, 49, '3.80', '2018-12-04 17:26:19', NULL),
(770, 86, 50, '3.70', '2018-12-04 17:26:19', NULL),
(771, 86, 124, '2.60', '2018-12-04 17:26:19', NULL),
(772, 86, 125, '2.20', '2018-12-04 17:26:19', NULL),
(773, 86, 126, '2.80', '2018-12-04 17:26:19', NULL),
(774, 86, 51, '2.90', '2018-12-04 17:26:19', NULL),
(775, 86, 52, '2.20', '2018-12-04 17:26:19', NULL),
(776, 86, 53, '2.60', '2018-12-04 17:26:19', NULL),
(777, 86, 54, '3.20', '2018-12-04 17:26:19', NULL),
(778, 86, 127, '3.60', '2018-12-04 17:26:19', NULL),
(779, 87, 55, '2.80', '2018-12-07 13:59:38', NULL),
(780, 87, 46, '3.20', '2018-12-07 13:59:38', NULL),
(781, 87, 48, '2.80', '2018-12-07 13:59:38', NULL),
(782, 87, 47, '2.60', '2018-12-07 13:59:38', NULL),
(783, 87, 49, '4.10', '2018-12-07 13:59:38', NULL),
(784, 87, 50, '2.30', '2018-12-07 13:59:38', NULL),
(785, 87, 124, '3.80', '2018-12-07 13:59:38', NULL),
(786, 87, 125, '2.90', '2018-12-07 13:59:38', NULL),
(787, 87, 126, '3.80', '2018-12-07 13:59:38', NULL),
(788, 87, 51, '2.90', '2018-12-07 13:59:38', NULL),
(789, 87, 52, '3.80', '2018-12-07 13:59:38', NULL),
(790, 87, 53, '3.00', '2018-12-07 13:59:38', NULL),
(791, 87, 54, '3.70', '2018-12-07 13:59:38', NULL),
(792, 87, 127, '3.60', '2018-12-07 13:59:38', NULL),
(793, 88, 55, '2.80', '2018-12-07 14:26:22', NULL),
(794, 88, 46, '2.90', '2018-12-07 14:26:22', NULL),
(795, 88, 48, '3.00', '2018-12-07 14:26:22', NULL),
(796, 88, 47, '3.00', '2018-12-07 14:26:22', NULL),
(797, 88, 49, '2.90', '2018-12-07 14:26:22', NULL),
(798, 88, 50, '3.00', '2018-12-07 14:26:22', NULL),
(799, 88, 124, '2.80', '2018-12-07 14:26:22', NULL),
(800, 88, 125, '2.90', '2018-12-07 14:26:22', NULL),
(801, 88, 126, '3.10', '2018-12-07 14:26:22', NULL),
(802, 88, 51, '3.00', '2018-12-07 14:26:22', NULL),
(803, 88, 52, '2.70', '2018-12-07 14:26:22', NULL),
(804, 88, 53, '3.10', '2018-12-07 14:26:22', NULL),
(805, 88, 54, '2.80', '2018-12-07 14:26:22', NULL),
(806, 88, 127, '2.80', '2018-12-07 14:26:22', NULL),
(807, 89, 55, '1.80', '2018-12-07 14:27:57', NULL),
(808, 89, 46, '1.80', '2018-12-07 14:27:57', NULL),
(809, 89, 48, '1.80', '2018-12-07 14:27:57', NULL),
(810, 89, 47, '1.90', '2018-12-07 14:27:57', NULL),
(811, 89, 49, '1.80', '2018-12-07 14:27:57', NULL),
(812, 89, 50, '1.90', '2018-12-07 14:27:57', NULL),
(813, 89, 124, '1.90', '2018-12-07 14:27:57', NULL),
(814, 89, 125, '1.90', '2018-12-07 14:27:57', NULL),
(815, 89, 126, '1.80', '2018-12-07 14:27:57', NULL),
(816, 89, 51, '2.00', '2018-12-07 14:27:57', NULL),
(817, 89, 52, '1.90', '2018-12-07 14:27:57', NULL),
(818, 89, 53, '2.00', '2018-12-07 14:27:57', NULL),
(819, 89, 54, '1.70', '2018-12-07 14:27:57', NULL),
(820, 89, 127, '2.00', '2018-12-07 14:27:57', NULL),
(821, 90, 55, '4.20', '2018-12-07 14:30:12', NULL),
(822, 90, 46, '4.00', '2018-12-07 14:30:12', NULL),
(823, 90, 48, '4.00', '2018-12-07 14:30:12', NULL),
(824, 90, 47, '4.00', '2018-12-07 14:30:12', NULL),
(825, 90, 49, '3.90', '2018-12-07 14:30:12', NULL),
(826, 90, 50, '3.80', '2018-12-07 14:30:12', NULL),
(827, 90, 124, '4.20', '2018-12-07 14:30:12', NULL),
(828, 90, 125, '4.00', '2018-12-07 14:30:12', NULL),
(829, 90, 126, '4.10', '2018-12-07 14:30:12', NULL),
(830, 90, 51, '3.80', '2018-12-07 14:30:12', NULL),
(831, 90, 52, '4.10', '2018-12-07 14:30:12', NULL),
(832, 90, 53, '4.20', '2018-12-07 14:30:12', NULL),
(833, 90, 54, '3.70', '2018-12-07 14:30:12', NULL),
(834, 90, 127, '3.90', '2018-12-07 14:30:12', NULL),
(835, 91, 55, '2.70', '2018-12-07 14:46:51', NULL),
(836, 91, 46, '1.90', '2018-12-07 14:46:51', NULL),
(837, 91, 48, '3.00', '2018-12-07 14:46:51', NULL),
(838, 91, 47, '1.70', '2018-12-07 14:46:51', NULL),
(839, 91, 49, '3.80', '2018-12-07 14:46:51', NULL),
(840, 91, 50, '3.60', '2018-12-07 14:46:51', NULL),
(841, 91, 124, '2.50', '2018-12-07 14:46:51', NULL),
(842, 91, 125, '3.50', '2018-12-07 14:46:51', NULL),
(843, 91, 126, '2.90', '2018-12-07 14:46:51', NULL),
(844, 91, 51, '3.30', '2018-12-07 14:46:51', NULL),
(845, 91, 52, '3.70', '2018-12-07 14:46:51', NULL),
(846, 91, 53, '3.20', '2018-12-07 14:46:51', NULL),
(847, 91, 54, '3.50', '2018-12-07 14:46:51', NULL),
(848, 91, 127, '2.30', '2018-12-07 14:46:51', NULL),
(849, 92, 11, '2.70', '2018-12-07 15:32:49', NULL),
(850, 92, 2, '3.70', '2018-12-07 15:32:49', NULL),
(851, 92, 4, '3.10', '2018-12-07 15:32:49', NULL),
(852, 92, 3, '3.70', '2018-12-07 15:32:49', NULL),
(853, 92, 5, '3.00', '2018-12-07 15:32:49', NULL),
(854, 92, 6, '3.00', '2018-12-07 15:32:49', NULL),
(855, 92, 12, '2.80', '2018-12-07 15:32:49', NULL),
(856, 92, 13, '3.10', '2018-12-07 15:32:49', NULL),
(857, 92, 14, '3.20', '2018-12-07 15:32:49', NULL),
(858, 92, 8, '3.30', '2018-12-07 15:32:49', NULL),
(859, 92, 9, '3.50', '2018-12-07 15:32:50', NULL),
(860, 92, 10, '3.60', '2018-12-07 15:32:50', NULL),
(861, 92, 15, '3.40', '2018-12-07 15:32:50', NULL),
(862, 93, 55, '2.60', '2018-12-07 15:36:01', NULL),
(863, 93, 46, '3.10', '2018-12-07 15:36:01', NULL),
(864, 93, 48, '2.80', '2018-12-07 15:36:01', NULL),
(865, 93, 47, '3.00', '2018-12-07 15:36:01', NULL),
(866, 93, 49, '3.70', '2018-12-07 15:36:01', NULL),
(867, 93, 50, '3.20', '2018-12-07 15:36:01', NULL),
(868, 93, 124, '3.50', '2018-12-07 15:36:01', NULL),
(869, 93, 125, '3.20', '2018-12-07 15:36:01', NULL),
(870, 93, 126, '3.20', '2018-12-07 15:36:01', NULL),
(871, 93, 51, '3.30', '2018-12-07 15:36:01', NULL),
(872, 93, 52, '3.30', '2018-12-07 15:36:01', NULL),
(873, 93, 53, '3.30', '2018-12-07 15:36:01', NULL),
(874, 93, 54, '3.30', '2018-12-07 15:36:01', NULL),
(875, 93, 127, '2.70', '2018-12-07 15:36:01', NULL),
(876, 94, 55, '3.00', '2018-12-07 15:37:12', NULL),
(877, 94, 46, '3.10', '2018-12-07 15:37:12', NULL),
(878, 94, 48, '3.40', '2018-12-07 15:37:12', NULL),
(879, 94, 47, '3.20', '2018-12-07 15:37:12', NULL),
(880, 94, 49, '3.80', '2018-12-07 15:37:12', NULL),
(881, 94, 50, '3.40', '2018-12-07 15:37:12', NULL),
(882, 94, 124, '3.80', '2018-12-07 15:37:12', NULL),
(883, 94, 125, '3.60', '2018-12-07 15:37:12', NULL),
(884, 94, 126, '3.60', '2018-12-07 15:37:12', NULL),
(885, 94, 51, '3.40', '2018-12-07 15:37:12', NULL),
(886, 94, 52, '4.00', '2018-12-07 15:37:12', NULL),
(887, 94, 53, '3.50', '2018-12-07 15:37:12', NULL),
(888, 94, 54, '3.70', '2018-12-07 15:37:12', NULL),
(889, 94, 127, '3.40', '2018-12-07 15:37:12', NULL),
(890, 95, 55, '3.00', '2018-12-07 15:39:12', NULL),
(891, 95, 46, '3.70', '2018-12-07 15:39:12', NULL),
(892, 95, 48, '3.40', '2018-12-07 15:39:12', NULL),
(893, 95, 47, '3.90', '2018-12-07 15:39:12', NULL),
(894, 95, 49, '2.10', '2018-12-07 15:39:12', NULL),
(895, 95, 50, '3.20', '2018-12-07 15:39:12', NULL),
(896, 95, 124, '2.50', '2018-12-07 15:39:12', NULL),
(897, 95, 125, '3.20', '2018-12-07 15:39:12', NULL),
(898, 95, 126, '2.70', '2018-12-07 15:39:12', NULL),
(899, 95, 51, '3.10', '2018-12-07 15:39:12', NULL),
(900, 95, 52, '2.70', '2018-12-07 15:39:12', NULL),
(901, 95, 53, '2.60', '2018-12-07 15:39:12', NULL),
(902, 95, 54, '2.90', '2018-12-07 15:39:12', NULL),
(903, 95, 127, '2.40', '2018-12-07 15:39:12', NULL),
(904, 96, 55, '3.70', '2018-12-07 15:41:02', NULL),
(905, 96, 46, '2.90', '2018-12-07 15:41:02', NULL),
(906, 96, 48, '3.30', '2018-12-07 15:41:02', NULL),
(907, 96, 47, '3.60', '2018-12-07 15:41:02', NULL),
(908, 96, 49, '3.60', '2018-12-07 15:41:02', NULL),
(909, 96, 50, '3.80', '2018-12-07 15:41:02', NULL),
(910, 96, 124, '3.30', '2018-12-07 15:41:02', NULL),
(911, 96, 125, '2.90', '2018-12-07 15:41:02', NULL),
(912, 96, 126, '3.20', '2018-12-07 15:41:02', NULL),
(913, 96, 51, '2.90', '2018-12-07 15:41:02', NULL),
(914, 96, 52, '3.20', '2018-12-07 15:41:02', NULL),
(915, 96, 53, '2.60', '2018-12-07 15:41:02', NULL),
(916, 96, 54, '3.30', '2018-12-07 15:41:02', NULL),
(917, 96, 127, '2.90', '2018-12-07 15:41:02', NULL),
(918, 97, 55, '2.10', '2018-12-07 15:43:08', NULL),
(919, 97, 46, '1.40', '2018-12-07 15:43:08', NULL),
(920, 97, 48, '3.70', '2018-12-07 15:43:08', NULL),
(921, 97, 47, '2.40', '2018-12-07 15:43:08', NULL),
(922, 97, 49, '4.50', '2018-12-07 15:43:08', NULL),
(923, 97, 50, '3.80', '2018-12-07 15:43:08', NULL),
(924, 97, 124, '3.40', '2018-12-07 15:43:08', NULL),
(925, 97, 125, '3.80', '2018-12-07 15:43:08', NULL),
(926, 97, 126, '3.40', '2018-12-07 15:43:08', NULL),
(927, 97, 51, '3.70', '2018-12-07 15:43:08', NULL),
(928, 97, 52, '3.50', '2018-12-07 15:43:08', NULL),
(929, 97, 53, '3.40', '2018-12-07 15:43:08', NULL),
(930, 97, 54, '3.70', '2018-12-07 15:43:08', NULL),
(931, 97, 127, '2.50', '2018-12-07 15:43:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings_and_reviews`
--

CREATE TABLE `ratings_and_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rating_usertype` int(10) UNSIGNED NOT NULL,
  `rated_to` int(10) UNSIGNED NOT NULL,
  `avg_rating` decimal(10,2) NOT NULL,
  `is_review` int(11) DEFAULT NULL,
  `agree_percent` decimal(10,1) UNSIGNED DEFAULT NULL,
  `status` enum('pending','accepted','disputed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_display` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings_and_reviews`
--

INSERT INTO `ratings_and_reviews` (`id`, `user_id`, `rating_usertype`, `rated_to`, `avg_rating`, `is_review`, `agree_percent`, `status`, `is_display`, `created_at`, `updated_at`) VALUES
(27, 93, 1, 48, '3.46', 1, '3.7', 'accepted', '1', '2018-08-31 01:31:45', '2018-08-31 01:31:45'),
(28, 93, 1, 48, '3.65', 0, '4.9', 'accepted', '1', '2018-08-31 01:32:31', '2018-08-31 01:32:31'),
(29, 93, 7, 123, '3.41', 1, '4.8', 'accepted', '1', '2018-08-31 18:45:59', '2018-08-31 18:45:59'),
(31, 48, 1, 93, '3.41', 0, '5.0', 'accepted', '1', '2018-09-01 17:36:15', '2018-09-01 17:36:15'),
(32, 48, 1, 93, '3.30', 0, '5.0', 'accepted', '1', '2018-09-01 17:36:57', '2018-09-01 17:36:57'),
(33, 48, 7, 93, '3.59', 0, '2.7', 'accepted', '1', '2018-09-01 17:38:00', '2018-09-01 17:38:00'),
(34, 123, 7, 93, '3.79', 1, '3.5', 'accepted', '1', '2018-09-01 20:07:13', '2018-09-01 20:07:13'),
(36, 93, 1, 48, '2.91', 0, '3.6', 'accepted', '1', '2018-09-01 22:19:08', '2018-09-01 22:19:08'),
(37, 93, 7, 136, '3.05', 0, '3.7', 'accepted', '1', '2018-09-03 12:57:36', '2018-09-03 12:57:36'),
(38, 48, 7, 136, '2.85', 0, '3.6', 'accepted', '1', '2018-09-03 13:09:26', '2018-09-03 13:09:26'),
(39, 93, 1, 48, '3.15', 1, '3.7', 'pending', '1', '2018-09-06 17:39:15', '2018-09-06 17:39:15'),
(40, 93, 1, 48, '3.10', 1, '2.6', 'pending', '1', '2018-09-06 17:40:34', '2018-09-06 17:40:34'),
(41, 93, 1, 142, '2.45', 0, '3.5', 'accepted', '1', '2018-09-14 16:26:08', '2018-09-14 16:26:08'),
(42, 93, 1, 143, '2.09', 1, '2.6', 'accepted', '1', '2018-09-14 18:26:58', '2018-09-14 18:26:58'),
(45, 93, 7, 126, '2.19', 1, '2.6', 'accepted', '1', '2018-09-24 20:23:15', '2018-09-24 20:23:15'),
(46, 48, 7, 126, '2.02', 1, '4.4', 'accepted', '1', '2018-09-24 20:25:03', '2018-09-24 20:25:03'),
(47, 93, 6, 145, '1.77', 1, '3.6', 'accepted', '0', '2018-09-26 00:48:19', '2018-09-26 00:48:19'),
(49, 57, 7, 147, '3.14', 1, '3.8', 'accepted', '1', '2018-10-03 16:49:49', '2018-10-03 16:49:49'),
(50, 74, 7, 147, '3.46', 1, '3.4', 'accepted', '1', '2018-10-03 18:37:10', '2018-10-03 18:37:10'),
(51, 74, 1, 148, '3.23', 1, '2.6', 'accepted', '1', '2018-10-03 20:58:03', '2018-10-03 20:58:03'),
(52, 147, 3, 152, '2.65', 1, '2.5', 'accepted', '0', '2018-10-03 21:52:22', '2018-10-03 21:52:22'),
(53, 57, 7, 74, '3.81', 1, '3.2', 'accepted', '1', '2018-10-04 14:04:55', '2018-10-04 14:04:55'),
(54, 147, 4, 93, '0.00', NULL, '2.7', 'pending', '0', '2018-10-05 15:42:06', '2018-10-05 15:42:06'),
(55, 147, 7, 123, '2.69', 1, '2.6', 'accepted', '1', '2018-10-05 15:44:59', '2018-10-05 15:45:00'),
(56, 147, 1, 136, '0.00', NULL, '3.6', 'pending', '1', '2018-10-05 15:49:15', '2018-10-05 15:49:15'),
(57, 147, 3, 157, '2.43', 1, '2.6', 'accepted', '0', '2018-10-05 15:59:07', '2018-10-05 15:59:08'),
(58, 93, 7, 108, '0.00', NULL, '2.7', 'pending', '1', '2018-10-05 21:07:27', '2018-10-05 21:07:27'),
(59, 93, 7, 108, '2.53', 1, '2.7', 'pending', '1', '2018-10-05 21:13:08', '2018-10-05 21:13:13'),
(60, 147, 7, 48, '2.56', 1, '3.6', 'accepted', '1', '2018-10-05 22:13:58', '2018-10-05 22:13:58'),
(61, 158, 7, 93, '2.64', 1, '1.9', 'pending', '1', '2018-10-05 22:20:46', '2018-10-05 22:20:50'),
(62, 140, 7, 108, '3.14', 0, '3.6', 'accepted', '1', '2018-10-06 13:51:12', '2018-10-06 13:51:12'),
(63, 140, 7, 126, '3.27', 1, '3.4', 'accepted', '1', '2018-10-06 13:55:09', '2018-10-06 13:55:09'),
(64, 140, 7, 159, '3.55', 1, '3.3', 'accepted', '1', '2018-10-08 00:31:24', '2018-10-08 00:31:24'),
(65, 57, 7, 160, '2.56', 1, '2.6', 'pending', '1', '2018-10-08 15:08:25', '2018-10-08 15:08:29'),
(66, 160, 7, 57, '3.01', 1, '1.5', 'pending', '1', '2018-10-08 15:11:01', '2018-10-08 15:11:05'),
(67, 104, 7, 93, '2.51', 0, '2.5', 'accepted', '1', '2018-10-09 19:25:15', '2018-10-09 19:25:16'),
(68, 160, 7, 104, '2.90', 1, '2.7', 'accepted', '1', '2018-11-13 19:28:30', '2018-11-13 19:28:30'),
(76, 175, 7, 177, '2.67', 1, '2.5', 'accepted', '1', '2018-11-23 15:55:13', '2018-11-23 15:55:13'),
(77, 175, 2, 179, '3.24', 1, '1.5', 'accepted', '1', '2018-11-26 15:06:47', '2018-11-26 15:06:47'),
(78, 162, 1, 181, '3.74', 0, '3.6', 'accepted', '1', '2018-11-26 17:58:17', '2018-11-26 17:58:17'),
(79, 160, 7, 175, '3.17', 1, '2.7', 'accepted', '1', '2018-11-27 11:59:20', '2018-11-27 11:59:20'),
(80, 79, 7, 175, '3.15', 1, '1.6', 'accepted', '1', '2018-11-27 12:01:59', '2018-11-27 12:01:59'),
(81, 177, 7, 175, '3.33', 1, '1.8', 'accepted', '1', '2018-11-27 12:03:17', '2018-11-27 12:03:17'),
(82, 166, 7, 175, '2.70', 1, '2.6', 'accepted', '1', '2018-11-27 12:08:39', '2018-11-27 12:08:39'),
(83, 57, 7, 175, '3.08', 1, '2.6', 'accepted', '1', '2018-11-27 12:12:57', '2018-11-27 12:12:58'),
(84, 182, 1, 187, '2.59', 1, '3.7', 'accepted', '1', '2018-11-30 18:33:38', '2018-11-30 18:33:38'),
(85, 182, 1, 188, '2.61', 1, '3.7', 'accepted', '1', '2018-11-30 18:34:51', '2018-11-30 18:34:51'),
(86, 166, 7, 189, '2.79', 1, '2.4', 'accepted', '1', '2018-12-04 17:26:19', '2018-12-04 17:26:19'),
(87, 194, 7, 190, '3.24', 1, '1.5', 'accepted', '1', '2018-12-07 13:59:38', '2018-12-07 13:59:38'),
(88, 194, 7, 191, '2.91', 1, '1.7', 'accepted', '1', '2018-12-07 14:26:22', '2018-12-07 14:26:22'),
(89, 195, 7, 191, '1.87', 1, '2.6', 'accepted', '1', '2018-12-07 14:27:57', '2018-12-07 14:27:57'),
(90, 196, 7, 191, '3.99', 1, '3.7', 'accepted', '1', '2018-12-07 14:30:12', '2018-12-07 14:30:12'),
(91, 197, 7, 191, '2.97', 1, '2.6', 'accepted', '0', '2018-12-07 14:46:51', '2018-12-07 14:46:51'),
(92, 195, 1, 193, '3.24', 1, '2.5', 'accepted', '1', '2018-12-07 15:32:49', '2018-12-07 15:32:50'),
(93, 194, 7, 193, '3.16', 1, '2.6', 'accepted', '0', '2018-12-07 15:36:01', '2018-12-07 15:36:01'),
(94, 196, 7, 193, '3.49', 1, '2.6', 'accepted', '0', '2018-12-07 15:37:12', '2018-12-07 15:37:12'),
(95, 196, 7, 192, '2.96', 1, '2.8', 'accepted', '1', '2018-12-07 15:39:12', '2018-12-07 15:39:12'),
(96, 194, 7, 192, '3.23', 1, '2.6', 'accepted', '1', '2018-12-07 15:41:02', '2018-12-07 15:41:02'),
(97, 195, 7, 192, '3.24', 1, '2.5', 'accepted', '1', '2018-12-07 15:43:08', '2018-12-07 15:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `rating_credit_log`
--

CREATE TABLE `rating_credit_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `credit_amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_invite`
--

CREATE TABLE `rating_invite` (
  `id` int(10) UNSIGNED NOT NULL,
  `invited_by` int(10) UNSIGNED NOT NULL,
  `invited_to` int(10) UNSIGNED DEFAULT NULL,
  `invited_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invited_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_invite`
--

INSERT INTO `rating_invite` (`id`, `invited_by`, `invited_to`, `invited_email`, `invited_number`, `created_at`, `updated_at`) VALUES
(4, 57, NULL, NULL, '9199199', '2018-06-19 12:27:17', NULL),
(5, 57, NULL, 'ankitjaiswal+11@singsys.com', NULL, '2018-06-19 12:41:02', NULL),
(6, 57, 79, NULL, NULL, '2018-06-19 14:37:26', NULL),
(7, 57, 86, NULL, NULL, '2018-06-19 14:37:29', NULL),
(8, 57, 74, NULL, NULL, '2018-06-19 14:42:11', NULL),
(9, 57, 83, NULL, NULL, '2018-06-19 14:46:49', NULL),
(10, 57, 62, NULL, NULL, '2018-06-19 14:46:51', NULL),
(11, 83, 57, NULL, NULL, '2018-06-19 14:51:25', NULL),
(12, 57, NULL, 'ankitjaiswal@singsys.com', NULL, '2018-06-19 14:56:15', NULL),
(13, 57, NULL, NULL, '919919931652', '2018-06-19 15:14:16', NULL),
(14, 81, 79, NULL, NULL, '2018-06-19 15:16:26', NULL),
(15, 75, 81, NULL, NULL, '2018-06-19 15:19:11', NULL),
(16, 75, 83, NULL, NULL, '2018-06-19 18:54:54', NULL),
(18, 59, 50, NULL, NULL, '2018-06-19 21:11:20', NULL),
(19, 57, 74, NULL, NULL, '2018-06-19 21:18:05', NULL),
(20, 57, 86, NULL, NULL, '2018-06-19 21:18:07', NULL),
(21, 57, 81, NULL, NULL, '2018-06-19 21:18:09', NULL),
(22, 57, 79, NULL, NULL, '2018-06-19 21:30:36', NULL),
(23, 57, 79, NULL, NULL, '2018-06-19 21:35:35', NULL),
(24, 57, 79, NULL, NULL, '2018-06-19 21:36:32', NULL),
(25, 57, 11, NULL, NULL, '2018-06-19 21:36:35', NULL),
(26, 57, 79, NULL, NULL, '2018-06-19 21:37:20', NULL),
(27, 57, 11, NULL, NULL, '2018-06-19 21:37:23', NULL),
(28, 57, 11, NULL, NULL, '2018-06-19 21:38:16', NULL),
(29, 57, 11, NULL, NULL, '2018-06-19 21:44:26', NULL),
(30, 50, 75, NULL, NULL, '2018-06-19 22:12:21', NULL),
(31, 75, 3, NULL, NULL, '2018-06-19 22:18:13', NULL),
(32, 75, 3, NULL, NULL, '2018-06-19 22:18:56', NULL),
(33, 75, 46, NULL, NULL, '2018-06-19 22:18:58', NULL),
(34, 75, 54, NULL, NULL, '2018-06-19 22:20:37', NULL),
(35, 57, 50, NULL, NULL, '2018-06-19 22:23:36', NULL),
(36, 57, 50, NULL, NULL, '2018-06-19 22:24:40', NULL),
(37, 57, 74, NULL, NULL, '2018-06-20 12:26:59', NULL),
(38, 57, 74, NULL, NULL, '2018-06-20 12:30:55', NULL),
(39, 57, 9, NULL, NULL, '2018-06-25 15:02:42', NULL),
(40, 94, 93, NULL, NULL, '2018-07-28 20:56:53', NULL),
(41, 94, 48, NULL, NULL, '2018-07-28 20:56:56', NULL),
(42, 94, NULL, 'raveena+email@singsys.com', NULL, '2018-07-28 21:05:17', NULL),
(43, 94, NULL, NULL, '919956771380', '2018-07-28 21:06:54', NULL),
(44, 94, NULL, NULL, '917275583135', '2018-07-28 21:06:56', NULL),
(45, 94, NULL, NULL, '919956771380', '2018-07-28 21:11:52', NULL),
(46, 93, 94, NULL, NULL, '2018-07-30 18:52:49', NULL),
(47, 93, NULL, 'raveena+a@singsys.com', NULL, '2018-07-30 18:53:24', NULL),
(48, 93, NULL, NULL, '919956771380', '2018-07-30 18:53:37', NULL),
(49, 57, 100, NULL, NULL, '2018-07-31 20:18:16', NULL),
(50, 57, NULL, 'vivekkumar+09@singsys.com', NULL, '2018-07-31 20:18:43', NULL),
(51, 74, NULL, NULL, '919651421877', '2018-08-01 17:46:29', NULL),
(52, 74, 76, NULL, NULL, '2018-08-01 17:46:30', NULL),
(53, 74, NULL, NULL, '919651421877', '2018-08-01 17:51:06', NULL),
(54, 74, NULL, NULL, '919651421877', '2018-08-01 17:59:52', NULL),
(55, 50, NULL, NULL, '91943680129', '2018-08-01 18:21:51', NULL),
(56, 50, NULL, NULL, '91943680129', '2018-08-01 18:22:54', NULL),
(57, 50, 76, NULL, NULL, '2018-08-01 18:22:56', NULL),
(58, 108, 90, NULL, NULL, '2018-08-02 16:04:58', NULL),
(59, 57, 113, NULL, NULL, '2018-08-02 16:44:43', NULL),
(60, 57, 113, NULL, NULL, '2018-08-02 16:45:51', NULL),
(61, 57, NULL, NULL, '917065873851', '2018-08-02 16:45:52', NULL),
(62, 57, NULL, 'raveena@singsys.com', NULL, '2018-08-02 17:33:58', NULL),
(63, 57, 94, NULL, NULL, '2018-08-02 17:49:12', NULL),
(64, 57, 93, NULL, NULL, '2018-08-02 17:49:15', NULL),
(65, 57, NULL, 'raveena@singsys.com', NULL, '2018-08-02 17:49:48', NULL),
(66, 57, NULL, 'raveena@singsys.com', NULL, '2018-08-02 18:05:06', NULL),
(67, 57, 94, NULL, NULL, '2018-08-02 18:05:25', NULL),
(68, 57, 93, NULL, NULL, '2018-08-02 18:05:28', NULL),
(69, 108, 96, NULL, NULL, '2018-08-02 18:49:30', NULL),
(70, 108, 96, NULL, NULL, '2018-08-02 18:50:25', NULL),
(71, 54, 57, NULL, NULL, '2018-08-09 17:33:54', NULL),
(72, 93, NULL, 'raveena+invite@singsys.com', NULL, '2018-08-31 21:36:07', NULL),
(73, 126, NULL, 'raveena@singsys.com', NULL, '2018-09-01 21:50:51', NULL),
(75, 93, NULL, 'raveena+test@singsys.com', NULL, '2018-09-03 12:22:57', NULL),
(77, 93, 126, NULL, NULL, '2018-09-26 21:22:56', NULL),
(78, 93, 126, NULL, NULL, '2018-09-26 21:23:43', NULL),
(79, 93, 136, NULL, NULL, '2018-09-26 21:28:17', NULL),
(80, 93, 136, NULL, NULL, '2018-09-26 21:28:49', NULL),
(81, 93, 113, NULL, NULL, '2018-09-26 21:28:51', NULL),
(82, 147, 74, NULL, NULL, '2018-10-03 18:54:53', NULL),
(83, 147, 148, NULL, NULL, '2018-10-03 19:48:56', NULL),
(84, 147, 90, NULL, NULL, '2018-10-03 20:10:00', NULL),
(85, 147, 90, NULL, NULL, '2018-10-03 20:10:44', NULL),
(86, 147, 148, NULL, NULL, '2018-10-03 20:10:46', NULL),
(87, 160, 103, NULL, NULL, '2018-10-08 13:35:09', NULL),
(89, 140, 94, NULL, NULL, '2018-11-21 01:20:02', NULL),
(90, 140, 143, NULL, NULL, '2018-11-21 21:24:15', NULL),
(91, 140, 139, NULL, NULL, '2018-11-21 21:24:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating_questions`
--

CREATE TABLE `rating_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_usertype_id` int(10) UNSIGNED DEFAULT NULL,
  `applicable` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_questions`
--

INSERT INTO `rating_questions` (`id`, `question`, `parameter`, `rating_usertype_id`, `applicable`, `created_at`, `updated_at`) VALUES
(2, '{NAME}  is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 1, '1', '2018-05-03 20:16:10', '2018-05-04 13:27:56'),
(3, '{NAME} possesses the ability to and actually does a good job ', 'Capable', 1, '0', '2018-05-03 20:16:34', '2018-05-23 11:28:52'),
(4, '{NAME} is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 1, '0', '2018-05-03 20:17:15', '2018-05-23 11:29:22'),
(5, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely mannermanner', 'Communicator', 1, '0', '2018-05-03 20:17:59', '2018-05-23 11:29:42'),
(6, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically', 'Emotionally Intelligent', 1, '0', '2018-05-03 20:18:27', '2018-05-23 11:29:57'),
(8, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 1, '0', '2018-05-03 20:19:24', '2018-05-23 11:30:54'),
(9, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 1, '0', '2018-05-03 20:19:53', '2018-05-23 11:31:35'),
(10, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 1, '0', '2018-05-03 20:20:22', '2018-05-23 11:32:37'),
(11, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 1, '0', '2018-05-03 20:20:49', '2018-05-23 11:33:44'),
(12, 'where appropriate, {NAME}  gives the authority, autonomy and confidence to do something', 'Empowering', 1, '0', '2018-05-03 20:21:33', '2018-05-23 11:34:08'),
(13, '{NAME} is meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 1, '0', '2018-05-03 20:21:58', '2018-05-23 11:35:16'),
(14, '{NAME} is genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 1, '0', '2018-05-03 20:22:22', '2018-05-23 11:35:42'),
(15, '{NAME} recognises then removes obstacles and creating greater chance of success for team', 'Strategic', 1, '0', '2018-05-03 20:23:08', '2018-05-23 11:35:03'),
(17, '{NAME}  is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 2, '0', '2018-05-03 20:16:10', NULL),
(18, '{NAME} possesses the ability to and actually does a good job ', 'Capable', 2, '0', '2018-05-03 20:16:34', NULL),
(19, '{NAME} is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 2, '0', '2018-05-03 20:17:15', NULL),
(20, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely manner', 'Communicator', 2, '0', '2018-05-03 20:17:59', NULL),
(21, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically ', 'Emotionally Intelligent', 2, '0', '2018-05-03 20:18:27', NULL),
(23, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 2, '0', '2018-05-03 20:19:24', NULL),
(24, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 2, '0', '2018-05-03 20:19:53', NULL),
(25, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 2, '0', '2018-05-03 20:20:22', NULL),
(26, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 2, '0', '2018-05-03 20:20:49', NULL),
(27, 'where appropriate, {NAME}  gives the authority, autonomy and confidence to do something', 'Empowering', 2, '0', '2018-05-03 20:21:33', NULL),
(28, '{NAME} is meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 2, '0', '2018-05-03 20:21:58', NULL),
(29, '{NAME} is genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 2, '0', '2018-05-03 20:22:22', NULL),
(30, '{NAME} recognises then removes obstacles and creating greater chance of success for team', 'Strategic', 2, '0', '2018-05-03 20:23:08', NULL),
(31, 'You are fair, meritocratic and your words are consistent with action', 'Authentic', 8, '0', '2018-05-04 01:55:45', NULL),
(32, 'You possess ability to and actually do a good job', 'Capable', 8, '0', '2018-05-04 01:56:00', NULL),
(33, 'You are resilient and maintain a positive attitude in the face of adversity & challenge', 'Calm', 8, '0', '2018-05-04 01:56:31', NULL),
(34, 'You set clear, unwavering expectations and react appropriately in a timely manner', 'Communicator', 8, '0', '2018-05-04 01:57:08', NULL),
(35, 'You are aware of, can control, and express your emotions well. You can handle interpersonal relationships judiciously and empathetically', 'Emotionally Intelligent', 8, '0', '2018-05-04 01:57:31', NULL),
(36, 'You have the determination to succeed and deliver value to others', 'Purposeful', 8, '0', '2018-05-04 01:58:04', NULL),
(37, 'You are courteous and show regard for others\' diverse backgrounds and views', 'Respectful', 8, '0', '2018-05-04 01:58:25', NULL),
(38, 'You are able to answer for team\'s success, conduct and obligations', 'Responsible', 8, '0', '2018-05-04 01:58:49', NULL),
(39, 'You have a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 8, '0', '2018-05-04 01:59:12', NULL),
(40, 'You understand current business trends/ challenges and are able to come up with appropriate solutions', 'Agile', 8, '0', '2018-05-04 01:59:35', NULL),
(41, 'Where appropriate, you give the authority, autonomy and confidence to do something', 'Empowering', 8, '1', '2018-05-04 02:00:03', NULL),
(42, 'You are meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 8, '1', '2018-05-04 02:00:30', NULL),
(43, 'You are genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 8, '1', '2018-05-04 02:00:55', NULL),
(44, 'You recognise, then remove obstacles and create greater chance of success for the team', 'Strategic', 8, '1', '2018-05-04 02:01:19', NULL),
(46, '{NAME} is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 7, '0', '2018-05-04 02:04:37', NULL),
(47, '{NAME} possesses the ability to and actually does a good job', 'Capable', 7, '0', '2018-05-04 02:05:02', NULL),
(48, '{NAME}  is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 7, '0', '2018-05-04 02:05:30', NULL),
(49, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely manner', 'Communicator', 7, '0', '2018-05-04 02:06:00', NULL),
(50, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically', 'Emotionally Intelligent', 7, '0', '2018-05-04 02:06:23', NULL),
(51, '{NAME} has determination to succeed and deliver value to others', 'Purposeful', 7, '0', '2018-05-04 02:06:47', NULL),
(52, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 7, '0', '2018-05-04 02:07:13', NULL),
(53, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 7, '0', '2018-05-04 02:07:36', NULL),
(54, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 7, '0', '2018-05-04 02:07:58', NULL),
(55, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 7, '0', '2018-05-04 02:08:21', NULL),
(57, '{NAME} is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 3, '0', '2018-05-04 02:10:46', NULL),
(58, '{NAME}  possesses the ability to and actually does a good job', 'Capable', 3, '0', '2018-05-04 02:11:12', NULL),
(59, '{NAME} is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 3, '0', '2018-05-04 02:11:37', NULL),
(60, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely manner', 'Communicator', 3, '0', '2018-05-04 02:12:02', NULL),
(61, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically', 'Emotionally Intelligent', 3, '0', '2018-05-04 02:12:28', NULL),
(62, '{NAME} has determination to succeed and deliver value to others', 'Purposeful', 3, '0', '2018-05-04 02:13:27', NULL),
(63, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 3, '0', '2018-05-04 02:13:48', NULL),
(64, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 3, '0', '2018-05-04 02:15:58', NULL),
(65, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 3, '0', '2018-05-04 02:16:25', NULL),
(66, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 3, '0', '2018-05-04 02:16:50', NULL),
(67, 'where appropriate, {NAME}  gives the authority, autonomy and confidence to do something', 'Empowering', 3, '1', '2018-05-04 02:17:28', NULL),
(68, '{NAME} is meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 3, '1', '2018-05-04 02:17:52', NULL),
(69, '{NAME} is genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 3, '1', '2018-05-04 02:18:34', NULL),
(70, '{NAME} recognises then removes obstacles and creating greater chance of success for team', 'Strategic', 3, '1', '2018-05-04 02:19:04', NULL),
(72, '{NAME} is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 4, '0', '2018-05-04 02:10:46', NULL),
(73, '{NAME}  possesses the ability to and actually does a good job', 'Capable', 4, '0', '2018-05-04 02:11:12', NULL),
(74, '{NAME} is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 4, '0', '2018-05-04 02:11:37', NULL),
(75, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely manner', 'Communicator', 4, '0', '2018-05-04 02:12:02', NULL),
(76, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically ', 'Emotionally Intelligent', 4, '0', '2018-05-04 02:12:28', NULL),
(77, '{NAME} has determination to succeed and deliver value to others', 'Purposeful', 4, '0', '2018-05-04 02:13:27', NULL),
(78, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 4, '0', '2018-05-04 02:13:48', NULL),
(79, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 4, '0', '2018-05-04 02:15:58', NULL),
(80, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 4, '0', '2018-05-04 02:16:25', NULL),
(81, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 4, '0', '2018-05-04 02:16:50', NULL),
(82, 'where appropriate, {NAME}  gives the authority, autonomy and confidence to do something', 'Empowering', 4, '1', '2018-05-04 02:17:28', NULL),
(83, '{NAME} is meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 4, '1', '2018-05-04 02:17:52', NULL),
(84, '{NAME} is genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 4, '1', '2018-05-04 02:18:34', NULL),
(85, '{NAME} recognises then removes obstacles and creating greater chance of success for team', 'Strategic', 4, '1', '2018-05-04 02:19:04', NULL),
(87, '{NAME} is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 5, '0', '2018-05-04 02:10:46', NULL),
(88, '{NAME} possesses the ability to and actually does a good job', 'Capable', 5, '0', '2018-05-04 02:11:12', NULL),
(89, '{NAME}  is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 5, '0', '2018-05-04 02:11:37', NULL),
(90, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely manner', 'Communicator', 5, '0', '2018-05-04 02:12:02', NULL),
(91, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically', 'Emotionally Intelligent', 5, '0', '2018-05-04 02:12:28', NULL),
(92, '{NAME} has determination to succeed and deliver value to others', 'Purposeful', 5, '0', '2018-05-04 02:13:27', NULL),
(93, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 5, '0', '2018-05-04 02:13:48', NULL),
(94, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 5, '0', '2018-05-04 02:15:58', NULL),
(95, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 5, '0', '2018-05-04 02:16:25', NULL),
(96, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 5, '0', '2018-05-04 02:16:50', NULL),
(97, 'where appropriate, {NAME}  gives the authority, autonomy and confidence to do something', 'Empowering', 5, '1', '2018-05-04 02:17:28', NULL),
(98, '{NAME} is meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 5, '1', '2018-05-04 02:17:52', NULL),
(99, '{NAME} is genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 5, '1', '2018-05-04 02:18:34', NULL),
(100, '{NAME} recognises then removes obstacles and creating greater chance of success for team', 'Strategic', 5, '1', '2018-05-04 02:19:04', NULL),
(102, '{NAME} is unpretentious and his/ her actions mirror his/ her words', 'Authentic', 6, '0', '2018-05-04 02:10:46', NULL),
(103, '{NAME} possesses the ability to and actually does a good job', 'Capable', 6, '0', '2018-05-04 02:11:12', NULL),
(104, '{NAME}  is resilient & maintains a positive attitude in the face of adversity & challenge', 'Calm', 6, '0', '2018-05-04 02:11:37', NULL),
(105, '{NAME} sets clear, unwavering expectations and reacts appropriately in a timely manner', 'Communicator', 6, '0', '2018-05-04 02:12:02', NULL),
(106, '{NAME} has capacity to be aware of, control, and express his/ her emotions, and to handle interpersonal relationships judiciously and empathetically', 'Emotionally Intelligent', 6, '0', '2018-05-04 02:12:28', NULL),
(107, '{NAME} has determination to succeed and deliver value to others', 'Purposeful', 6, '0', '2018-05-04 02:13:27', NULL),
(108, '{NAME} is courteous and shows regard for others\' diverse backgrounds and views', 'Respectful', 6, '0', '2018-05-04 02:13:48', NULL),
(109, '{NAME} is able to answer for team\'s success, conduct and obligations', 'Responsible', 6, '0', '2018-05-04 02:15:58', NULL),
(110, '{NAME} has a clear understanding of own personality i.e strengths, weaknesses, thoughts, beliefs, motivation, and emotions', 'Self aware', 6, '0', '2018-05-04 02:16:25', NULL),
(111, '{NAME} understands current business trends/ challenges and is able to come up with appropriate solutions', 'Agile', 6, '0', '2018-05-04 02:16:50', NULL),
(112, 'where appropriate, {NAME}  gives the authority, autonomy and confidence to do something', 'Empowering', 6, '1', '2018-05-04 02:17:28', NULL),
(113, '{NAME} is meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 6, '1', '2018-05-04 02:17:52', NULL),
(114, '{NAME} is genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 6, '1', '2018-05-04 02:18:34', NULL),
(115, '{NAME} recognises then removes obstacles and creating greater chance of success for team', 'Strategic', 6, '1', '2018-05-04 02:19:04', NULL),
(124, 'where appropriate, you give the authority, autonomy and confidence to do something', 'Empowering', 7, '', NULL, NULL),
(125, 'you are meritocratic and doesn\'t practice/ encourage favouritism', 'Fair', 7, '', NULL, NULL),
(126, 'you are genuinely interested in helping or encouraging the development of others through coaching, training and growth assignments', 'Nurturing', 7, '', NULL, NULL),
(127, 'you recognise, then remove obstacles and create greater chance of success for the team', 'Strategic', 7, '', NULL, NULL),
(130, 'you can decide how to work to achieve agreed outcomes ', 'Autonomy', 9, '', NULL, NULL),
(131, 'your role allows you to be stretched and develop other skillsets', 'Challenge', 9, '', NULL, NULL),
(132, 'diverse individuals/ teams are able to work constructively to achieve more than the sum of all parts ', 'Collaboration', 9, '', NULL, NULL),
(133, '{NAME} cares for more than the bottom line and takes action to impact society positively ', 'Corporate Social Responsibility', 9, '', NULL, NULL),
(134, '{NAME} supports your life long learning and personal growth', 'Development', 9, '', NULL, NULL),
(135, 'you know what is expected of you and how you fit into {NAME}\'s bigger scheme of things', 'Engagement', 9, '', NULL, NULL),
(136, 'the corporate\'s work is meaningful and reasonates with you', 'Purpose', 9, '', NULL, NULL),
(137, 'You know what to expect as leaders within {NAME} are fair, consistent and keep to their words', 'Trust', 9, '', NULL, NULL),
(138, 'work life integration allows you flexibility to choose when or where to work, so that personal and professional goals can be achieved', 'Well Being', 9, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating_threshold`
--

CREATE TABLE `rating_threshold` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_threshold`
--

INSERT INTO `rating_threshold` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'boss_rating', '1', '2018-07-19 18:30:00', NULL),
(2, 'peer_rating', '5', '2018-07-19 18:30:00', NULL),
(3, 'subordinate_rating', '5', '2018-07-19 18:30:00', NULL),
(4, 'customer_rating', '3', '2018-07-19 18:30:00', NULL),
(5, 'bronze_credibility', '3', '2018-07-19 18:30:00', NULL),
(6, 'silver_credibility', '5', '2018-07-19 18:30:00', NULL),
(7, 'gold_credibility', '7', '2018-07-19 18:30:00', NULL),
(8, 'staff_rating', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating_usertype`
--

CREATE TABLE `rating_usertype` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('individual','company') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'individual',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_usertype`
--

INSERT INTO `rating_usertype` (`id`, `type`, `category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'his/ her boss (direct)', 'individual', 'active', NULL, '2018-10-05 15:19:28'),
(2, 'his/ her boss (indirect)', 'individual', 'active', NULL, '2018-09-06 14:30:16'),
(3, 'his/ her peer (direct)', 'individual', 'active', NULL, '2018-09-06 14:30:35'),
(4, 'his/ her peer (indirect)', 'individual', 'active', NULL, '2018-09-06 14:30:53'),
(5, 'his/ her subordinate (direct)', 'individual', 'active', NULL, '2018-09-06 14:31:10'),
(6, 'his/ her subordinate (indirect)', 'individual', 'active', NULL, '2018-09-06 14:31:29'),
(7, 'his/ her customer', 'individual', 'active', NULL, '2018-09-06 14:31:49'),
(8, 'Self', 'company', 'active', NULL, '2018-04-23 03:51:58'),
(9, 'As a Corporate Staff', 'company', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reference_id`, `review`, `created_at`, `updated_at`) VALUES
(25, 27, 'Saurabh Shukla will know you have given a 360! As your boss, she/he will only know average ratings after 2 boss(s) have rated her/him.', '2018-08-31 01:31:45', NULL),
(26, 29, 'Good!', '2018-08-31 18:45:59', NULL),
(27, 34, 'good', '2018-09-01 20:07:13', NULL),
(29, 39, 'This is testing plz ignore', '2018-09-06 17:39:15', NULL),
(30, 40, 'testing Bastard', '2018-09-06 17:40:34', NULL),
(31, 42, 'Sanjay Prajapati will know you have given a 360! As your boss, she/he will only know average ratings after 2 boss(s) have rated her/him.', '2018-09-14 18:26:58', NULL),
(34, 45, 'This testing', '2018-09-24 20:23:15', NULL),
(35, 46, 'Anjali Srivastava will know you have given a 360! and your review will be attributed to you.', '2018-09-24 20:25:03', NULL),
(36, 47, 'Gyan Prakash will know you have given a 360! and your review will be attributed to you.', '2018-09-26 00:48:19', NULL),
(38, 49, 'good', '2018-10-03 16:49:49', NULL),
(39, 50, 'Best', '2018-10-03 18:37:10', NULL),
(40, 51, 'Good work', '2018-10-03 20:58:03', NULL),
(41, 52, 'good', '2018-10-03 21:52:22', NULL),
(42, 53, 'vvhvhvhj', '2018-10-04 14:04:55', NULL),
(43, 55, 'Good', '2018-10-05 15:44:59', NULL),
(44, 57, 'Good', '2018-10-05 15:59:07', NULL),
(45, 59, 'Ankit Analytics will know you have given a 360! As your customer, she/he will only know average ratings after 1 customer(s) have rated her/him. ignore him', '2018-10-05 21:13:12', NULL),
(46, 60, 'Fine', '2018-10-05 22:13:58', NULL),
(47, 61, 'Bloody Hell', '2018-10-05 22:20:50', NULL),
(48, 63, 'teste', '2018-10-06 13:55:09', NULL),
(49, 64, 'Test Test', '2018-10-08 00:31:24', NULL),
(50, 65, 'ignore', '2018-10-08 15:08:29', NULL),
(51, 66, 'ignore it', '2018-10-08 15:11:05', NULL),
(52, 68, 'qwert', '2018-11-13 19:28:30', NULL),
(60, 76, 'qwerty', '2018-11-23 15:55:13', NULL),
(61, 77, 'asdfg', '2018-11-26 15:06:47', NULL),
(62, 79, 'qaz', '2018-11-27 11:59:20', NULL),
(63, 80, 'rewq', '2018-11-27 12:01:59', NULL),
(64, 81, 'hgfd', '2018-11-27 12:03:17', NULL),
(65, 82, 'poiuyt', '2018-11-27 12:08:39', NULL),
(66, 83, 'ytrew', '2018-11-27 12:12:57', NULL),
(67, 84, 'Test revew', '2018-11-30 18:33:38', NULL),
(68, 85, 'test', '2018-11-30 18:34:51', NULL),
(69, 86, 'Reviewiwiwiw', '2018-12-04 17:26:19', NULL),
(70, 87, 'good', '2018-12-07 13:59:38', NULL),
(71, 88, 'average', '2018-12-07 14:26:22', NULL),
(72, 89, 'bad', '2018-12-07 14:27:57', NULL),
(73, 90, 'very good', '2018-12-07 14:30:12', NULL),
(74, 91, 'review not needed.', '2018-12-07 14:46:51', NULL),
(75, 92, 'qwety', '2018-12-07 15:32:49', NULL),
(76, 93, 'oiuyt', '2018-12-07 15:36:01', NULL),
(77, 94, 'qweryj', '2018-12-07 15:37:12', NULL),
(78, 95, 'sdfg', '2018-12-07 15:39:12', NULL),
(79, 96, 'tyy', '2018-12-07 15:41:02', NULL),
(80, 97, 'qwertyujkl', '2018-12-07 15:43:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_on_hold`
--

CREATE TABLE `reviews_on_hold` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','accepted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews_on_hold`
--

INSERT INTO `reviews_on_hold` (`id`, `reference_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 39, 'pending', NULL, NULL),
(8, 40, 'pending', NULL, NULL),
(9, 54, 'pending', NULL, NULL),
(10, 56, 'pending', NULL, NULL),
(11, 58, 'pending', NULL, NULL),
(12, 59, 'pending', NULL, NULL),
(13, 61, 'pending', NULL, NULL),
(14, 65, 'pending', NULL, NULL),
(15, 66, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2018-03-13 00:45:00', NULL),
(2, 'individual', 'Individual', '2018-03-12 22:45:00', NULL),
(3, 'company', 'Company', '2018-03-13 04:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_log`
--

CREATE TABLE `search_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `search_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_log`
--

INSERT INTO `search_log` (`id`, `user_id`, `search_keyword`, `created_at`, `updated_at`) VALUES
(1, 147, 'TCSS', '2018-10-05 19:02:17', '2018-10-05 19:02:17'),
(2, 147, 'TCSS', '2018-10-05 19:02:55', '2018-10-05 19:02:55'),
(3, 148, 'TCSS', '2018-10-05 19:04:43', '2018-10-05 19:04:43'),
(4, 157, 'Agile', '2018-10-05 19:08:57', '2018-10-05 19:08:57'),
(5, 108, 'Stream Corporate', '2018-10-05 19:21:44', '2018-10-05 19:21:44'),
(6, 148, 'Civil Engineers', '2018-10-05 19:32:06', '2018-10-05 19:32:06'),
(7, 148, 'IT', '2018-10-05 19:33:22', '2018-10-05 19:33:22'),
(8, 148, 'IT', '2018-10-05 19:33:29', '2018-10-05 19:33:29'),
(9, 57, 'civil', '2018-10-05 19:36:12', '2018-10-05 19:36:12'),
(10, 57, 'Greece', '2018-10-05 19:41:19', '2018-10-05 19:41:19'),
(11, 148, 'Chetan\\\'s company', '2018-10-05 19:44:12', '2018-10-05 19:44:12'),
(12, 148, 'Stream Corporate', '2018-10-05 19:58:48', '2018-10-05 19:58:48'),
(13, 57, 'Chetans', '2018-10-05 20:06:02', '2018-10-05 20:06:02'),
(14, 148, 'Rajneesh Company', '2018-10-05 20:09:03', '2018-10-05 20:09:03'),
(15, 148, 'RajneeshCompany', '2018-10-05 20:11:05', '2018-10-05 20:11:05'),
(16, 0, 'RajneeshCompany', '2018-10-05 20:12:05', '2018-10-05 20:12:05'),
(17, 0, 'RajneeshCompany', '2018-10-05 20:12:09', '2018-10-05 20:12:09'),
(18, 36, 'Rajneesh Company', '2018-10-05 20:14:54', '2018-10-05 20:14:54'),
(19, 148, 'Egypt', '2018-10-05 20:16:34', '2018-10-05 20:16:34'),
(20, 148, 'Intel Corporate', '2018-10-05 20:31:49', '2018-10-05 20:31:49'),
(21, 93, 'Saurabh Shukla', '2018-10-05 21:03:40', '2018-10-05 21:03:40'),
(22, 93, 'Saurabh Shukla', '2018-10-05 21:06:16', '2018-10-05 21:06:16'),
(23, 93, 'Saurabh Shukla', '2018-10-05 21:38:08', '2018-10-05 21:38:08'),
(24, 54, 'ankit', '2018-10-08 12:57:21', '2018-10-08 12:57:21'),
(25, 54, 'ankit indi', '2018-10-08 13:00:32', '2018-10-08 13:00:32'),
(26, 160, 'Ankit company', '2018-10-08 13:41:05', '2018-10-08 13:41:05'),
(27, 160, 'Ankit', '2018-10-08 13:41:11', '2018-10-08 13:41:11'),
(28, 160, 'Ankit', '2018-10-08 13:41:34', '2018-10-08 13:41:34'),
(29, 160, 'ankit', '2018-10-08 13:42:42', '2018-10-08 13:42:42'),
(30, 54, 'ankit', '2018-10-08 13:42:57', '2018-10-08 13:42:57'),
(31, 147, 'ankit', '2018-10-08 13:44:23', '2018-10-08 13:44:23'),
(32, 160, 'ankit', '2018-10-08 13:44:43', '2018-10-08 13:44:43'),
(33, 160, 'ankit', '2018-10-08 13:45:00', '2018-10-08 13:45:00'),
(34, 160, 'ankit', '2018-10-08 13:57:42', '2018-10-08 13:57:42'),
(35, 160, 'ankit', '2018-10-08 13:57:57', '2018-10-08 13:57:57'),
(36, 113, 'ankit', '2018-10-08 14:00:18', '2018-10-08 14:00:18'),
(37, 113, 'rajneesh', '2018-10-08 14:00:33', '2018-10-08 14:00:33'),
(38, 113, 'Dubey and sons Abhishek', '2018-10-08 14:00:57', '2018-10-08 14:00:57'),
(39, 113, 'Abhishek', '2018-10-08 14:01:03', '2018-10-08 14:01:03'),
(40, 160, 'ankit', '2018-10-08 14:02:20', '2018-10-08 14:02:20'),
(41, 160, 'ankit', '2018-10-08 14:04:16', '2018-10-08 14:04:16'),
(42, 160, 'ankit', '2018-10-08 14:04:21', '2018-10-08 14:04:21'),
(43, 160, 'ankit', '2018-10-08 14:08:23', '2018-10-08 14:08:23'),
(44, 160, 'ankit', '2018-10-08 14:12:05', '2018-10-08 14:12:05'),
(45, 113, 'ank', '2018-10-08 14:18:03', '2018-10-08 14:18:03'),
(46, 113, 'vivek', '2018-10-08 14:31:57', '2018-10-08 14:31:57'),
(47, 160, 'ankit', '2018-10-08 14:36:49', '2018-10-08 14:36:49'),
(48, 160, 'ankit', '2018-10-08 14:37:20', '2018-10-08 14:37:20'),
(49, 160, 'ankit', '2018-10-08 14:43:12', '2018-10-08 14:43:12'),
(50, 113, 'ankit', '2018-10-08 14:53:01', '2018-10-08 14:53:01'),
(51, 57, 'vivek', '2018-10-08 14:59:05', '2018-10-08 14:59:05'),
(52, 57, 'vivek kk', '2018-10-08 15:00:50', '2018-10-08 15:00:50'),
(53, 57, 'vivek', '2018-10-08 15:07:32', '2018-10-08 15:07:32'),
(54, 160, 'ankit', '2018-10-08 15:10:16', '2018-10-08 15:10:16'),
(55, 57, 'vivek', '2018-10-08 15:17:42', '2018-10-08 15:17:42'),
(56, 57, 'ankit', '2018-10-08 15:17:49', '2018-10-08 15:17:49'),
(57, 160, 'ankit', '2018-10-08 15:18:14', '2018-10-08 15:18:14'),
(58, 160, 'Challenge', '2018-10-08 15:18:36', '2018-10-08 15:18:36'),
(59, 57, 'Challenge', '2018-10-08 15:18:47', '2018-10-08 15:18:47'),
(60, 54, 'vivek', '2018-10-08 15:20:07', '2018-10-08 15:20:07'),
(61, 54, 'ankit', '2018-10-08 15:20:13', '2018-10-08 15:20:13'),
(62, 160, 'Afghanistan', '2018-10-08 15:20:36', '2018-10-08 15:20:36'),
(63, 160, 'Sri la', '2018-10-08 15:20:43', '2018-10-08 15:20:43'),
(64, 160, 'Sri lanka', '2018-10-08 15:20:48', '2018-10-08 15:20:48'),
(65, 160, 'Sri Lanka', '2018-10-08 15:20:51', '2018-10-08 15:20:51'),
(66, 160, 'Singapore', '2018-10-08 15:21:00', '2018-10-08 15:21:00'),
(67, 54, 'Singapore', '2018-10-08 15:21:11', '2018-10-08 15:21:11'),
(68, 75, 'ankit', '2018-10-08 15:48:30', '2018-10-08 15:48:30'),
(69, 75, 'Ankit Company', '2018-10-08 15:48:52', '2018-10-08 15:48:52'),
(70, 54, 'quality', '2018-10-08 16:32:27', '2018-10-08 16:32:27'),
(71, 54, 'Dubey', '2018-10-08 16:32:45', '2018-10-08 16:32:45'),
(72, 160, 'vivek', '2018-10-09 17:50:53', '2018-10-09 17:50:53'),
(73, 104, 'raveena', '2018-10-09 19:22:11', '2018-10-09 19:22:11'),
(74, 104, 'raveena', '2018-10-09 19:23:10', '2018-10-09 19:23:10'),
(75, 104, 'KK', '2018-10-09 21:14:57', '2018-10-09 21:14:57'),
(76, 94, 'saurabh', '2018-10-10 22:08:59', '2018-10-10 22:08:59'),
(77, 93, 'saurabh', '2018-10-10 22:09:50', '2018-10-10 22:09:50'),
(78, 160, 'vivek', '2018-11-13 19:27:30', '2018-11-13 19:27:30'),
(79, 160, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:31:40', '2018-11-13 19:31:40'),
(80, 104, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:37:10', '2018-11-13 19:37:10'),
(81, 104, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:37:21', '2018-11-13 19:37:21'),
(82, 79, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:40:39', '2018-11-13 19:40:39'),
(83, 79, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:40:46', '2018-11-13 19:40:46'),
(84, 100, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:50:51', '2018-11-13 19:50:51'),
(85, 108, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 19:56:02', '2018-11-13 19:56:02'),
(86, 79, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 20:05:23', '2018-11-13 20:05:23'),
(87, 147, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 20:06:15', '2018-11-13 20:06:15'),
(88, 96, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-13 20:07:53', '2018-11-13 20:07:53'),
(89, 79, 'Ankit FreeUser', '2018-11-14 13:11:33', '2018-11-14 13:11:33'),
(90, 121, 'Vivek kumar', '2018-11-14 13:12:18', '2018-11-14 13:12:18'),
(91, 96, 'Ankit FreeUser', '2018-11-15 11:58:13', '2018-11-15 11:58:13'),
(92, 121, 'Ankit Job', '2018-11-15 11:59:31', '2018-11-15 11:59:31'),
(93, 54, '360', '2018-11-15 13:56:35', '2018-11-15 13:56:35'),
(94, 79, '360', '2018-11-15 14:00:36', '2018-11-15 14:00:36'),
(95, 79, 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2018-11-15 16:25:11', '2018-11-15 16:25:11'),
(96, 166, 'Anjali Srivastava', '2018-11-16 13:58:15', '2018-11-16 13:58:15'),
(97, 168, 'Vivek KK', '2018-11-16 20:15:07', '2018-11-16 20:15:07'),
(98, 167, 'Vivek KK', '2018-11-16 20:15:40', '2018-11-16 20:15:40'),
(99, 169, 'a', '2018-11-19 12:09:35', '2018-11-19 12:09:35'),
(100, 169, 'a', '2018-11-19 12:09:42', '2018-11-19 12:09:42'),
(101, 169, 'a', '2018-11-19 12:09:47', '2018-11-19 12:09:47'),
(102, 169, 'a', '2018-11-19 12:09:48', '2018-11-19 12:09:48'),
(103, 169, 'a', '2018-11-19 12:10:26', '2018-11-19 12:10:26'),
(104, 169, 'a', '2018-11-19 12:11:44', '2018-11-19 12:11:44'),
(105, 169, 'a', '2018-11-19 12:11:47', '2018-11-19 12:11:47'),
(106, 169, 'a', '2018-11-19 12:11:50', '2018-11-19 12:11:50'),
(107, 169, 'a', '2018-11-19 12:11:51', '2018-11-19 12:11:51'),
(108, 169, 'a', '2018-11-19 12:12:45', '2018-11-19 12:12:45'),
(109, 169, 'a', '2018-11-19 12:12:51', '2018-11-19 12:12:51'),
(110, 169, 'a', '2018-11-19 12:12:58', '2018-11-19 12:12:58'),
(111, 169, 'a', '2018-11-19 12:13:05', '2018-11-19 12:13:05'),
(112, 169, 'a', '2018-11-19 12:13:10', '2018-11-19 12:13:10'),
(113, 169, 'a', '2018-11-19 12:13:17', '2018-11-19 12:13:17'),
(114, 169, 'vivekkumar+stg@singsys.com', '2018-11-19 12:44:19', '2018-11-19 12:44:19'),
(115, 169, 'vivekkumar+stg@singsys.com', '2018-11-19 12:45:23', '2018-11-19 12:45:23'),
(116, 169, 'vivekkumar+stg@singsys.com', '2018-11-19 12:45:25', '2018-11-19 12:45:25'),
(117, 169, 'vivekkumar+stg@singsys.com', '2018-11-19 12:45:28', '2018-11-19 12:45:28'),
(118, 169, 'vivekkumar+in1@singsys.com', '2018-11-19 12:45:41', '2018-11-19 12:45:41'),
(119, 169, 'vivekkumar+in1@singsys.com', '2018-11-19 12:45:44', '2018-11-19 12:45:44'),
(120, 169, 'a', '2018-11-19 12:46:02', '2018-11-19 12:46:02'),
(121, 169, 'a', '2018-11-19 12:46:05', '2018-11-19 12:46:05'),
(122, 169, 'a', '2018-11-19 12:46:07', '2018-11-19 12:46:07'),
(123, 169, 'a', '2018-11-19 12:46:16', '2018-11-19 12:46:16'),
(124, 169, 'a', '2018-11-19 12:46:19', '2018-11-19 12:46:19'),
(125, 169, 'a', '2018-11-19 12:46:46', '2018-11-19 12:46:46'),
(126, 169, 'a', '2018-11-19 12:46:50', '2018-11-19 12:46:50'),
(127, 169, 'a', '2018-11-19 12:46:52', '2018-11-19 12:46:52'),
(128, 169, 'a', '2018-11-19 12:46:54', '2018-11-19 12:46:54'),
(129, 169, 'a', '2018-11-19 12:46:56', '2018-11-19 12:46:56'),
(130, 169, 'a', '2018-11-19 12:47:04', '2018-11-19 12:47:04'),
(131, 169, 'a', '2018-11-19 12:47:08', '2018-11-19 12:47:08'),
(132, 169, 'a', '2018-11-19 12:47:13', '2018-11-19 12:47:13'),
(133, 169, 'a', '2018-11-19 12:47:16', '2018-11-19 12:47:16'),
(134, 169, 'a', '2018-11-19 12:47:21', '2018-11-19 12:47:21'),
(135, 169, 'a', '2018-11-19 12:47:30', '2018-11-19 12:47:30'),
(136, 169, 'a', '2018-11-19 12:47:34', '2018-11-19 12:47:34'),
(137, 169, 'a', '2018-11-19 12:47:36', '2018-11-19 12:47:36'),
(138, 169, 'a', '2018-11-19 12:47:39', '2018-11-19 12:47:39'),
(139, 169, 'a', '2018-11-19 12:47:40', '2018-11-19 12:47:40'),
(140, 169, 'vivek', '2018-11-19 12:47:53', '2018-11-19 12:47:53'),
(141, 169, 'vivek', '2018-11-19 12:47:54', '2018-11-19 12:47:54'),
(142, 170, 'vivek', '2018-11-19 12:48:10', '2018-11-19 12:48:10'),
(143, 170, 'vivek', '2018-11-19 12:49:17', '2018-11-19 12:49:17'),
(144, 169, 'vivek', '2018-11-19 12:53:08', '2018-11-19 12:53:08'),
(145, 170, 'vivek', '2018-11-19 12:57:22', '2018-11-19 12:57:22'),
(146, 169, 'kumar', '2018-11-19 12:58:34', '2018-11-19 12:58:34'),
(147, 169, 'kumar', '2018-11-19 12:58:51', '2018-11-19 12:58:51'),
(148, 169, 'chen', '2018-11-19 12:58:58', '2018-11-19 12:58:58'),
(149, 169, 'chen', '2018-11-19 12:58:59', '2018-11-19 12:58:59'),
(150, 169, 'lee', '2018-11-19 12:59:04', '2018-11-19 12:59:04'),
(151, 169, 'lee', '2018-11-19 12:59:05', '2018-11-19 12:59:05'),
(152, 169, 'Lee Chen chuen', '2018-11-19 12:59:16', '2018-11-19 12:59:16'),
(153, 169, 'Lee Chen chuen', '2018-11-19 12:59:17', '2018-11-19 12:59:17'),
(154, 169, 'Vivek1 Kumar1', '2018-11-19 13:13:33', '2018-11-19 13:13:33'),
(155, 170, 'vivek', '2018-11-19 13:13:50', '2018-11-19 13:13:50'),
(156, 169, 'stg', '2018-11-19 13:36:54', '2018-11-19 13:36:54'),
(157, 170, 'stg', '2018-11-19 13:37:03', '2018-11-19 13:37:03'),
(158, 170, 'vivek', '2018-11-19 13:37:50', '2018-11-19 13:37:50'),
(159, 172, 'new', '2018-11-19 15:41:30', '2018-11-19 15:41:30'),
(160, 171, 'vivek', '2018-11-19 21:18:46', '2018-11-19 21:18:46'),
(161, 171, 'vivek', '2018-11-19 21:18:49', '2018-11-19 21:18:49'),
(162, 171, 'kk', '2018-11-19 21:19:53', '2018-11-19 21:19:53'),
(163, 171, 'kk', '2018-11-19 21:19:54', '2018-11-19 21:19:54'),
(164, 171, 'vivek', '2018-11-19 21:19:54', '2018-11-19 21:19:54'),
(165, 171, 'vivek kk', '2018-11-19 21:19:55', '2018-11-19 21:19:55'),
(166, 171, 'Vivek KK', '2018-11-19 21:20:03', '2018-11-19 21:20:03'),
(167, 171, 'Vivek KK', '2018-11-19 21:20:04', '2018-11-19 21:20:04'),
(168, 171, 'vivek kk', '2018-11-19 21:22:55', '2018-11-19 21:22:55'),
(169, 171, 'CompnyNew', '2018-11-19 22:07:27', '2018-11-19 22:07:27'),
(170, 171, 'CompnyNew', '2018-11-19 22:08:27', '2018-11-19 22:08:27'),
(171, 171, 'ANKIT individual', '2018-11-19 22:09:14', '2018-11-19 22:09:14'),
(172, 171, 'ANKIT individual', '2018-11-19 22:09:15', '2018-11-19 22:09:15'),
(173, 140, 'raveena', '2018-11-21 00:35:58', '2018-11-21 00:35:58'),
(174, 140, 'raveena', '2018-11-21 00:42:11', '2018-11-21 00:42:11'),
(175, 164, 'Raveena Nigam', '2018-11-21 21:17:30', '2018-11-21 21:17:30'),
(176, 174, 'vivekkumar+cy', '2018-11-23 13:01:17', '2018-11-23 13:01:17'),
(177, 174, 'vivekkumar', '2018-11-23 13:01:22', '2018-11-23 13:01:22'),
(178, 174, 'vivekkumar', '2018-11-23 13:01:23', '2018-11-23 13:01:23'),
(179, 174, 'vivek', '2018-11-23 13:01:34', '2018-11-23 13:01:34'),
(180, 174, 'vivek', '2018-11-23 13:01:35', '2018-11-23 13:01:35'),
(181, 174, 'qwerty', '2018-11-23 13:01:44', '2018-11-23 13:01:44'),
(182, 174, 'qwerty', '2018-11-23 13:01:45', '2018-11-23 13:01:45'),
(183, 174, 'qwerty', '2018-11-23 13:02:07', '2018-11-23 13:02:07'),
(184, 175, 'qwerty', '2018-11-23 14:21:18', '2018-11-23 14:21:18'),
(185, 175, 'vivek', '2018-11-23 14:21:22', '2018-11-23 14:21:22'),
(186, 174, 'vivek', '2018-11-23 14:25:00', '2018-11-23 14:25:00'),
(187, 174, 'New Ind', '2018-11-23 14:25:14', '2018-11-23 14:25:14'),
(188, 174, 'New Ind', '2018-11-23 14:25:16', '2018-11-23 14:25:16'),
(189, 174, 'qwert', '2018-11-23 15:52:33', '2018-11-23 15:52:33'),
(190, 174, 'qwert', '2018-11-23 15:52:34', '2018-11-23 15:52:34'),
(191, 175, 'Qwerty Abcd', '2018-11-23 15:54:21', '2018-11-23 15:54:21'),
(192, 175, 'Qwerty Abcd', '2018-11-23 15:54:22', '2018-11-23 15:54:22'),
(193, 174, 'qwert', '2018-11-23 15:55:28', '2018-11-23 15:55:28'),
(194, 174, 'raveena', '2018-11-23 17:13:06', '2018-11-23 17:13:06'),
(195, 174, 'raveena', '2018-11-23 17:13:07', '2018-11-23 17:13:07'),
(196, 174, 'anjali', '2018-11-23 17:13:13', '2018-11-23 17:13:13'),
(197, 174, 'anjali', '2018-11-23 17:13:13', '2018-11-23 17:13:13'),
(198, 174, 'srivastava', '2018-11-23 17:13:20', '2018-11-23 17:13:20'),
(199, 174, 'srivastava', '2018-11-23 17:13:21', '2018-11-23 17:13:21'),
(200, 174, 'nigam', '2018-11-23 17:13:25', '2018-11-23 17:13:25'),
(201, 174, 'nigam', '2018-11-23 17:13:26', '2018-11-23 17:13:26'),
(202, 174, 'saurabh', '2018-11-23 17:13:29', '2018-11-23 17:13:29'),
(203, 174, 'saurabh', '2018-11-23 17:13:30', '2018-11-23 17:13:30'),
(204, 174, 'chetandeep', '2018-11-23 17:13:38', '2018-11-23 17:13:38'),
(205, 174, 'chetandeep', '2018-11-23 17:13:39', '2018-11-23 17:13:39'),
(206, 174, 'chetan', '2018-11-23 17:13:45', '2018-11-23 17:13:45'),
(207, 174, 'chetan', '2018-11-23 17:13:46', '2018-11-23 17:13:46'),
(208, 174, 'I1 Last name', '2018-11-23 17:14:01', '2018-11-23 17:14:01'),
(209, 174, 'I1 Last name', '2018-11-23 17:14:02', '2018-11-23 17:14:02'),
(210, 174, 'last', '2018-11-23 17:14:09', '2018-11-23 17:14:09'),
(211, 174, 'last', '2018-11-23 17:14:10', '2018-11-23 17:14:10'),
(212, 174, 'l1', '2018-11-23 17:14:15', '2018-11-23 17:14:15'),
(213, 174, 'l1', '2018-11-23 17:14:16', '2018-11-23 17:14:16'),
(214, 174, 'last', '2018-11-23 17:14:21', '2018-11-23 17:14:21'),
(215, 174, 'last', '2018-11-23 17:14:22', '2018-11-23 17:14:22'),
(216, 174, 'last', '2018-11-23 17:14:30', '2018-11-23 17:14:30'),
(217, 174, 'I1', '2018-11-23 17:14:34', '2018-11-23 17:14:34'),
(218, 174, 'I1', '2018-11-23 17:14:36', '2018-11-23 17:14:36'),
(219, 174, 'l1', '2018-11-23 17:14:42', '2018-11-23 17:14:42'),
(220, 174, 'l1', '2018-11-23 17:14:43', '2018-11-23 17:14:43'),
(221, 174, 'I1', '2018-11-23 17:14:48', '2018-11-23 17:14:48'),
(222, 174, 'I1', '2018-11-23 17:14:48', '2018-11-23 17:14:48'),
(223, 174, 'L1', '2018-11-23 17:14:58', '2018-11-23 17:14:58'),
(224, 174, 'L1', '2018-11-23 17:14:58', '2018-11-23 17:14:58'),
(225, 174, 'I1', '2018-11-23 17:15:05', '2018-11-23 17:15:05'),
(226, 174, 'I1', '2018-11-23 17:15:06', '2018-11-23 17:15:06'),
(227, 174, 'name', '2018-11-23 17:15:09', '2018-11-23 17:15:09'),
(228, 174, 'name', '2018-11-23 17:15:09', '2018-11-23 17:15:09'),
(229, 174, '1', '2018-11-23 17:15:15', '2018-11-23 17:15:15'),
(230, 174, '1', '2018-11-23 17:15:16', '2018-11-23 17:15:16'),
(231, 174, 'sulatn', '2018-11-23 17:15:23', '2018-11-23 17:15:23'),
(232, 174, 'sulatn', '2018-11-23 17:15:24', '2018-11-23 17:15:24'),
(233, 174, 'sultan', '2018-11-23 17:15:31', '2018-11-23 17:15:31'),
(234, 174, 'sultan', '2018-11-23 17:15:32', '2018-11-23 17:15:32'),
(235, 174, 'khan', '2018-11-23 17:15:37', '2018-11-23 17:15:37'),
(236, 174, 'khan', '2018-11-23 17:15:38', '2018-11-23 17:15:38'),
(237, 174, 'sulan 1 khan', '2018-11-23 17:15:45', '2018-11-23 17:15:45'),
(238, 174, 'sulan 1 khan', '2018-11-23 17:15:45', '2018-11-23 17:15:45'),
(239, 174, 'sultan 1 khan', '2018-11-23 17:15:48', '2018-11-23 17:15:48'),
(240, 174, 'sultan 1 khan', '2018-11-23 17:15:49', '2018-11-23 17:15:49'),
(241, 140, 'singsys', '2018-11-23 18:14:24', '2018-11-23 18:14:24'),
(242, 140, 'singsys', '2018-11-23 18:15:45', '2018-11-23 18:15:45'),
(243, 140, 'singsys', '2018-11-23 18:17:35', '2018-11-23 18:17:35'),
(244, 140, 'saurabh', '2018-11-25 21:03:20', '2018-11-25 21:03:20'),
(245, 140, 'saurabh', '2018-11-25 21:03:28', '2018-11-25 21:03:28'),
(246, 140, 'raveena', '2018-11-25 21:03:28', '2018-11-25 21:03:28'),
(247, 140, 'raveena', '2018-11-25 21:03:34', '2018-11-25 21:03:34'),
(248, 140, 'singsys', '2018-11-25 21:03:35', '2018-11-25 21:03:35'),
(249, 160, 'Vivek Individual', '2018-11-27 11:58:58', '2018-11-27 11:58:58'),
(250, 79, 'Vivek Individual', '2018-11-27 12:01:37', '2018-11-27 12:01:37'),
(251, 177, 'Vivek Individual', '2018-11-27 12:02:50', '2018-11-27 12:02:50'),
(252, 177, 'Vivek Individual', '2018-11-27 12:05:26', '2018-11-27 12:05:26'),
(253, 177, 'Vivek Individual', '2018-11-27 12:05:31', '2018-11-27 12:05:31'),
(254, 177, 'Vivek Individual', '2018-11-27 12:05:35', '2018-11-27 12:05:35'),
(255, 177, 'Vivek Individual', '2018-11-27 12:05:39', '2018-11-27 12:05:39'),
(256, 177, 'Vivek Individual', '2018-11-27 12:05:42', '2018-11-27 12:05:42'),
(257, 177, 'Vivek Individual', '2018-11-27 12:05:45', '2018-11-27 12:05:45'),
(258, 177, 'Vivek Individual', '2018-11-27 12:05:50', '2018-11-27 12:05:50'),
(259, 166, 'Vivek Individual', '2018-11-27 12:07:07', '2018-11-27 12:07:07'),
(260, 57, 'Vivek Individual', '2018-11-27 12:12:17', '2018-11-27 12:12:17'),
(261, 183, 'Amit Verma', '2018-11-27 18:01:25', '2018-11-27 18:01:25'),
(262, 183, 'Amit Verma', '2018-11-27 18:04:59', '2018-11-27 18:04:59'),
(263, 182, 'Software Company', '2018-11-27 18:07:07', '2018-11-27 18:07:07'),
(264, 183, 'Chetan Verma', '2018-11-27 20:47:44', '2018-11-27 20:47:44'),
(265, 184, 'Chetan Verma', '2018-11-27 20:52:34', '2018-11-27 20:52:34'),
(266, 175, 'Companynew', '2018-11-28 14:02:28', '2018-11-28 14:02:28'),
(267, 174, 'Vivek Individual', '2018-11-28 14:02:57', '2018-11-28 14:02:57'),
(268, 162, 'singsys', '2018-11-29 22:20:50', '2018-11-29 22:20:50'),
(269, 162, 'sandeep', '2018-11-29 22:21:14', '2018-11-29 22:21:14'),
(270, 162, 'sandeep', '2018-11-29 22:21:15', '2018-11-29 22:21:15'),
(271, 162, 'singsys', '2018-11-29 22:21:22', '2018-11-29 22:21:22'),
(272, 162, 'singsys', '2018-11-29 22:21:23', '2018-11-29 22:21:23'),
(273, 164, 'sandeep', '2018-11-29 22:23:15', '2018-11-29 22:23:15'),
(274, 140, 'singsys', '2018-12-03 12:42:53', '2018-12-03 12:42:53'),
(275, 140, 'singsys', '2018-12-03 12:43:19', '2018-12-03 12:43:19'),
(276, 140, 'singsys', '2018-12-03 12:44:57', '2018-12-03 12:44:57'),
(277, 140, 'rave', '2018-12-03 12:52:56', '2018-12-03 12:52:56'),
(278, 166, 'Rave', '2018-12-03 13:16:22', '2018-12-03 13:16:22'),
(279, 166, 'raveena', '2018-12-03 16:26:52', '2018-12-03 16:26:52'),
(280, 174, 'rave', '2018-12-03 17:06:02', '2018-12-03 17:06:02'),
(281, 174, 'raveena', '2018-12-03 17:06:14', '2018-12-03 17:06:14'),
(282, 174, 'raveena', '2018-12-03 19:54:01', '2018-12-03 19:54:01'),
(283, 166, 'Raveena Nigam', '2018-12-03 21:38:19', '2018-12-03 21:38:19'),
(284, 166, 'ra', '2018-12-03 21:43:04', '2018-12-03 21:43:04'),
(285, 166, 'ra', '2018-12-03 21:44:57', '2018-12-03 21:44:57'),
(286, 166, 'ra', '2018-12-03 21:45:01', '2018-12-03 21:45:01'),
(287, 166, 'ra', '2018-12-03 21:45:21', '2018-12-03 21:45:21'),
(288, 166, 'ra', '2018-12-04 16:38:36', '2018-12-04 16:38:36'),
(289, 166, 'ra', '2018-12-04 17:10:42', '2018-12-04 17:10:42'),
(290, 166, 'Dec FIRST NAME Dec last', '2018-12-04 17:27:01', '2018-12-04 17:27:01'),
(291, 166, 'Dec FIRST NAME Dec last', '2018-12-04 17:27:26', '2018-12-04 17:27:26'),
(292, 166, 'Dec FIRST NAME Dec last', '2018-12-04 17:28:01', '2018-12-04 17:28:01'),
(293, 166, 'Dec FIRST NAME Dec last', '2018-12-04 17:30:05', '2018-12-04 17:30:05'),
(294, 166, 'Dec FIRST NAME Dec last', '2018-12-04 17:30:13', '2018-12-04 17:30:13'),
(295, 0, 'ra', '2018-12-04 19:29:41', '2018-12-04 19:29:41'),
(296, 164, 'wipro', '2018-12-04 20:54:34', '2018-12-04 20:54:34'),
(297, 164, 'wipro', '2018-12-04 20:54:52', '2018-12-04 20:54:52'),
(298, 164, 'wipro', '2018-12-04 20:54:55', '2018-12-04 20:54:55'),
(299, 164, 'wipro', '2018-12-04 20:54:57', '2018-12-04 20:54:57'),
(300, 164, 'wipro', '2018-12-04 20:56:30', '2018-12-04 20:56:30'),
(301, 166, 'Anjali Srivastava', '2018-12-05 14:24:53', '2018-12-05 14:24:53'),
(302, 166, 'Singsys corporate', '2018-12-05 14:27:42', '2018-12-05 14:27:42'),
(303, 166, 'Sandeep', '2018-12-05 14:27:57', '2018-12-05 14:27:57'),
(304, 166, 'Sandeep', '2018-12-05 14:28:00', '2018-12-05 14:28:00'),
(305, 166, 'Singsys corporate', '2018-12-05 14:28:18', '2018-12-05 14:28:18'),
(306, 166, 'Sandeep Verma', '2018-12-05 14:28:27', '2018-12-05 14:28:27'),
(307, 166, 'a', '2018-12-05 14:45:11', '2018-12-05 14:45:11'),
(308, 166, 'Raveena Nigam', '2018-12-05 14:48:01', '2018-12-05 14:48:01'),
(309, 166, 'Rave', '2018-12-07 13:43:39', '2018-12-07 13:43:39'),
(310, 166, 'Rave', '2018-12-07 13:43:53', '2018-12-07 13:43:53'),
(311, 194, 'abcd', '2018-12-07 13:59:01', '2018-12-07 13:59:01'),
(312, 166, 'Wipro Technology', '2018-12-07 14:22:27', '2018-12-07 14:22:27'),
(313, 166, 'Rave', '2018-12-07 14:22:35', '2018-12-07 14:22:35'),
(314, 166, 'Rave', '2018-12-07 14:22:36', '2018-12-07 14:22:36'),
(315, 166, 'Wipro Technology', '2018-12-07 14:23:04', '2018-12-07 14:23:04'),
(316, 166, 'Raveena Nigam', '2018-12-07 14:23:12', '2018-12-07 14:23:12'),
(317, 166, 'Raveena Nigam', '2018-12-07 14:23:12', '2018-12-07 14:23:12'),
(318, 166, 'Raveena Nigam', '2018-12-07 14:23:24', '2018-12-07 14:23:24'),
(319, 166, 'Wipro Technology', '2018-12-07 14:23:46', '2018-12-07 14:23:46'),
(320, 166, 'Raveena Nigam', '2018-12-07 14:24:41', '2018-12-07 14:24:41'),
(321, 166, 'Wipro Technology', '2018-12-07 14:24:48', '2018-12-07 14:24:48'),
(322, 194, 'qwerty1', '2018-12-07 14:25:55', '2018-12-07 14:25:55'),
(323, 195, 'qwerty1', '2018-12-07 14:27:32', '2018-12-07 14:27:32'),
(324, 196, 'qwerty1', '2018-12-07 14:29:47', '2018-12-07 14:29:47'),
(325, 196, 'qwerty1', '2018-12-07 14:31:02', '2018-12-07 14:31:02'),
(326, 196, 'qwerty1', '2018-12-07 14:31:06', '2018-12-07 14:31:06'),
(327, 196, 'qwerty1', '2018-12-07 14:31:10', '2018-12-07 14:31:10'),
(328, 196, 'qwerty1', '2018-12-07 14:31:15', '2018-12-07 14:31:15'),
(329, 196, 'qwerty1', '2018-12-07 14:44:27', '2018-12-07 14:44:27'),
(330, 196, 'qwerty1', '2018-12-07 14:44:46', '2018-12-07 14:44:46'),
(331, 197, 'qwerty1', '2018-12-07 14:46:23', '2018-12-07 14:46:23'),
(332, 195, 'Avenue', '2018-12-07 15:32:04', '2018-12-07 15:32:04'),
(333, 195, 'Avenue', '2018-12-07 15:33:43', '2018-12-07 15:33:43'),
(334, 195, 'Avenue', '2018-12-07 15:33:52', '2018-12-07 15:33:52'),
(335, 195, 'Avenue', '2018-12-07 15:33:56', '2018-12-07 15:33:56'),
(336, 195, 'Avenue', '2018-12-07 15:34:00', '2018-12-07 15:34:00'),
(337, 195, 'Avenue', '2018-12-07 15:34:04', '2018-12-07 15:34:04'),
(338, 195, 'Avenue', '2018-12-07 15:35:03', '2018-12-07 15:35:03'),
(339, 195, 'Avenue', '2018-12-07 15:35:06', '2018-12-07 15:35:06'),
(340, 195, 'Avenue', '2018-12-07 15:35:11', '2018-12-07 15:35:11'),
(341, 194, 'Avenue', '2018-12-07 15:35:36', '2018-12-07 15:35:36'),
(342, 196, 'Avenue', '2018-12-07 15:36:39', '2018-12-07 15:36:39'),
(343, 196, 'Avenue', '2018-12-07 15:38:12', '2018-12-07 15:38:12'),
(344, 196, 'Omaxe12', '2018-12-07 15:38:41', '2018-12-07 15:38:41'),
(345, 196, 'Omaxe12', '2018-12-07 15:38:48', '2018-12-07 15:38:48'),
(346, 194, 'Omaxe12', '2018-12-07 15:40:16', '2018-12-07 15:40:16'),
(347, 195, 'Omaxe12', '2018-12-07 15:42:23', '2018-12-07 15:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `services_offered`
--

CREATE TABLE `services_offered` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_offered`
--

INSERT INTO `services_offered` (`id`, `user_id`, `service`, `created_at`, `updated_at`) VALUES
(10, 2, 'qwert', NULL, NULL),
(11, 50, 'self', NULL, NULL),
(13, 54, 'Good', NULL, NULL),
(14, 54, 'best', NULL, NULL),
(15, 54, 'Yearly', NULL, NULL),
(16, 56, 'best', NULL, NULL),
(17, 58, 'best', NULL, NULL),
(18, 58, 'Good', NULL, NULL),
(21, 75, 'bad', NULL, NULL),
(22, 75, 'best', NULL, NULL),
(27, 82, 'Software services', NULL, NULL),
(29, 148, 'Services', NULL, NULL),
(30, 148, 'goods', NULL, NULL),
(31, 54, 'CH gcycgcyc', NULL, NULL),
(32, 54, 'CH gcycgcyc', NULL, NULL),
(33, 54, 'Ddhggfhddjhvccccdd.', NULL, NULL),
(34, 164, 'IT Services', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'admin_email', 'admin@360reference.sg', '2018-03-04 16:57:00', NULL),
(2, 'facebook_url', 'https://www.facebook.com', '2018-03-04 14:53:00', NULL),
(3, 'twitter_url', 'https://www.twitter.com', '2018-03-04 18:51:00', NULL),
(4, 'linkedin_url', 'https://www.linkedin.com', '2018-03-04 21:01:00', NULL),
(5, 'google_url', 'https://plus.google.com', '2018-03-04 14:30:00', NULL),
(6, 'smtp_server_host', 'ssl://ded4031.inmotionhosting.com', NULL, NULL),
(7, 'smtp_port_number', '587', NULL, NULL),
(8, 'smtp_uName', 'AKIAJ26PZKEY5IPHHL2A', NULL, NULL),
(9, 'smtp_uPass', 'Av+TRaWirqK83rqJwc7kEf8HNBWrDHTlPUk03qbwvojC', NULL, NULL),
(10, 'copyright', '© 2018, 360 Reference All rights reserved.', NULL, NULL),
(11, 'site_title', '360 Reference', NULL, NULL),
(12, 'maintenance', '0', NULL, NULL),
(13, 'maintenance_desc', 'Maintenance Mode is ON', NULL, NULL),
(14, 'address', 'A-34, Second Lane, East Singapore', NULL, NULL),
(15, 'contact', '+91-1234567890', NULL, NULL),
(16, 'contact-email', 'info@reference360.com', NULL, NULL),
(17, 'job_post', '10', NULL, NULL),
(18, 'job_candidate_credit', '5', '2018-07-27 00:00:00', '2018-07-27 00:00:00'),
(19, 'credit_per_unit', '5', '2018-07-27 00:00:00', '2018-07-27 00:00:00'),
(20, 'credit_for_paid_corporate', '10', NULL, NULL),
(21, 'rating_interval_limit', '6', NULL, NULL),
(22, 'paid_trial_limit', '1', NULL, NULL),
(24, 'job_match_credit', '2', NULL, NULL),
(30, 'instagram_url', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shortlisted_profiles`
--

CREATE TABLE `shortlisted_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `corporate_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shortlisted_profiles`
--

INSERT INTO `shortlisted_profiles` (`id`, `corporate_id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 94, 1, 93, '2018-09-03 17:23:01', '2018-09-03 17:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `staff_priority`
--

CREATE TABLE `staff_priority` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_priority`
--

INSERT INTO `staff_priority` (`id`, `company_id`, `user_id`, `priority`, `created_at`, `updated_at`) VALUES
(4, 75, 36, '7', '2018-06-19 14:13:09', NULL),
(29, 75, 57, '6', '2018-06-19 14:20:16', NULL),
(30, 75, 63, '4', '2018-06-19 14:20:29', NULL),
(32, 75, 31, '5', '2018-06-19 14:21:43', NULL),
(34, 75, 77, '2', '2018-06-19 14:22:49', NULL),
(36, 75, 81, '6', '2018-06-19 14:24:27', NULL),
(38, 75, 39, '2', '2018-06-19 18:53:22', NULL),
(39, 75, 74, '3', '2018-06-19 18:53:59', NULL),
(42, 75, 44, '2', '2018-06-19 22:16:42', NULL),
(43, 54, 83, '2', '2018-06-19 22:43:19', NULL),
(44, 54, 39, '2', '2018-06-19 22:43:53', NULL),
(45, 49, 48, '2', '2018-06-22 01:07:09', NULL),
(50, 47, 48, '1', '2018-06-22 01:12:16', NULL),
(51, 47, 46, '2', '2018-06-22 01:12:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_contents`
--

CREATE TABLE `static_contents` (
  `static_content_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_contents`
--

INSERT INTO `static_contents` (`static_content_id`, `title`, `description`, `alias`, `added_date`) VALUES
(1, 'Disclaimer', '<p>Disclaimer</p>\r\n\r\n<p>This disclaimer (&quot;Disclaimer&quot;, &quot;Agreement&quot;) is an agreement between 360 Reference (&quot;360 Reference&quot;, &quot;us&quot;, &quot;we&quot; or &quot;our&quot;) and you (&quot;User&quot;, &quot;you&quot; or &quot;your&quot;). This Disclaimer sets forth the general guidelines, terms and conditions of your use of the <a href=\"http://www.360reference.sg/\" target=\"_blank\">360reference.sg</a> website and any of its products or services (collectively, &quot;Website&quot; or &quot;Services&quot;).</p>\r\n\r\n<p>Representation</p>\r\n\r\n<p>Any views or opinions represented in this Website reflect the views and opinions of 360 Reference, its affiliates, Content creators or employees. Any views or opinions are not intended to malign any religion, ethnic group, club, organization, company, or individual.</p>\r\n\r\n<p>Content and postings</p>\r\n\r\n<p>You may print a copy of any part of this Website for your own personal, non-commercial use, but you may not copy any part of the Website for any other purposes, and you may not modify any part of the Website. Inclusion of any part of this Website in another work, whether in printed or electronic or another form or inclusion of any part of the Website in another website by embedding, framing or otherwise without the express permission of 360 Reference is prohibited.</p>\r\n\r\n<p>You may submit comments for the Content available on the Website. By uploading or otherwise making available any information to 360 Reference, you grant 360 Reference the unlimited, perpetual right to distribute, display, publish, reproduce, reuse and copy the information contained therein. You may not impersonate any other person through the Website. You may not post content that is defamatory, fraudulent, obscene, threatening, invasive of another person&#39;s privacy rights or that is otherwise unlawful. You may not post content that infringes on the intellectual property rights of any other person or entity. You may not post any content that includes any computer virus or other code designed to disrupt, damage, or limit the functioning of any computer software or hardware. By submitting or posting Content on the Website, you grant 360 Reference the right to edit and, if necessary, remove any Content at any time and for any reason.</p>\r\n\r\n<p>Compensation</p>\r\n\r\n<p>This Website accepts forms of advertising. Advertising space will always be identified as such. Some of the links on the Website may be &quot;affiliate links&quot;. This means if you click on the link and purchase an item, 360 Reference will receive an affiliate commission.</p>\r\n\r\n<p>Indemnification and warranties</p>\r\n\r\n<p>While we have made every attempt to ensure that the information contained on the Website is correct, 360 Reference is not responsible for any errors or omissions, or for the results obtained from the use of this information. All information on the Website is provided &quot;as is&quot;, with no guarantee of completeness, accuracy, timeliness or of the results obtained from the use of this information, and without warranty of any kind, express or implied. In no event will 360 Reference, or its partners, employees or agents, be liable to you or anyone else for any decision made or action taken in reliance on the information on the Website or for any consequential, special or similar damages, even if advised of the possibility of such damages. Information on the Website is for general information purposes only and is not intended to provide legal, financial, medical, or any other type of professional advice. Please seek professional assistance should you require it. Furthermore, information contained on the Website and any pages linked to from it are subject to change at any time and without warning.</p>\r\n\r\n<p>We reserve the right to modify this Disclaimer at any time, effective upon posting of an updated version of this Disclaimer on the Website. When we do we will post a notification on the main page of our Website. Continued use of the Website after any such changes shall constitute your consent to such changes.</p>\r\n\r\n<p>Acceptance of this disclaimer</p>\r\n\r\n<p>You acknowledge that you have read this Disclaimer and agree to all its terms and conditions. By accessing the Website you agree to be bound by this Disclaimer. If you do not agree to abide by the terms of this Disclaimer, you are not authorized to use or access the Website.</p>\r\n\r\n<p>Contacting us</p>\r\n\r\n<p>If you have any questions about this Disclaimer, please contact us.</p>\r\n\r\n<p>This document was last updated on August 20, 2018</p>', 'disclaimer', '2018-08-27 23:34:10'),
(2, 'Terms & Conditions', '<p>Terms and conditions</p>\r\n\r\n<p>These terms and conditions (&quot;Terms&quot;, &quot;Agreement&quot;) are an agreement between 360 Reference (&quot;360 Reference&quot;, &quot;us&quot;, &quot;we&quot; or &quot;our&quot;) and you (&quot;User&quot;, &quot;you&quot; or &quot;your&quot;). This Agreement sets forth the general terms and conditions of your use of the&nbsp;<a href=\"http://www.360reference.sg/\" target=\"_blank\">360reference.sg</a>&nbsp;website and any of its products or services (collectively, &quot;Website&quot; or &quot;Services&quot;).</p>\r\n\r\n<p>Accounts and membership</p>\r\n\r\n<p>You must be at least 18 years of age to use this Website. By using this Website and by agreeing to this Agreement you warrant and represent that you are at least 18 years of age. If you create an account on the Website, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.</p>\r\n\r\n<p>User content</p>\r\n\r\n<p>We do not own any data, information or material (&quot;Content&quot;) that you submit on the Website in the course of using the Service. You shall have sole responsibility for the accuracy, quality, integrity, legality, reliability, appropriateness, and intellectual property ownership or right to use of all submitted Content. We may monitor Content on the Website submitted or created using our Services by you. Unless specifically permitted by you, your use of the Website does not grant us the license to use, reproduce, adapt, modify, publish or distribute the Content created by you or stored in your user account for commercial, marketing or any similar purpose. But you grant us permission to access, copy, distribute, store, transmit, reformat, display and perform the Content of your user account solely as required for the purpose of providing the Services to you. Without limiting any of those representations or warranties, we have the right, though not the obligation, to, in our own sole discretion, refuse or remove any Content that, in our reasonable opinion, violates any of our policies or is in any way harmful or objectionable.</p>\r\n\r\n<p>Billing and payments</p>\r\n\r\n<p>You shall pay all fees or charges to your account in accordance with the fees, charges, and billing terms in effect at the time a fee or charge is due and payable. Where Services are offered on a free trial basis, payment may be required after the free trial period ends, and not when you enter your billing details (which may be required prior to the commencement of the free trial period). If auto-renewal is enabled for the Services you have subscribed for, you will be charged automatically in accordance with the term you selected. If, in our judgment, your purchase constitutes a high-risk transaction, we will require you to provide us with a copy of your valid government-issued photo identification, and possibly a copy of a recent bank statement for the credit or debit card used for the purchase. We reserve the right to change products and product pricing at any time.</p>\r\n\r\n<p>Accuracy of information</p>\r\n\r\n<p>Occasionally there may be information on the Website that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, availability, promotions and offers. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information on the Website or on any related Service is inaccurate at any time without prior notice (including after you have submitted your order). We undertake no obligation to update, amend or clarify information on the Website including, without limitation, pricing information, except as required by law. No specified update or refresh date applied on the Website should be taken to indicate that all information on the Website or on any related Service has been modified or updated.</p>\r\n\r\n<p>Backups</p>\r\n\r\n<p>We perform regular backups of the Website and Content and will do our best to ensure completeness and accuracy of these backups. In the event of the hardware failure or data loss we will restore backups automatically to minimize the impact and downtime.</p>\r\n\r\n<p>Links to other websites</p>\r\n\r\n<p>Although this Website may be linked to other websites, we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked website, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their websites. We do not assume any responsibility or liability for the actions, products, services, and content of any other third-parties. You should carefully review the legal statements and other conditions of use of any website which you access through a link from this Website. Your linking to any other off-site websites is at your own risk.</p>\r\n\r\n<p>Advertisements</p>\r\n\r\n<p>During use of the Website, you may enter into correspondence with or participate in promotions of advertisers or sponsors showing their goods or services through the Website. Any such activity, and any terms, conditions, warranties or representations associated with such activity, is solely between you and the applicable third-party. We shall have no liability, obligation or responsibility for any such correspondence, purchase or promotion between you and any such third-party.</p>\r\n\r\n<p>Prohibited uses</p>\r\n\r\n<p>In addition to other terms as set forth in the Agreement, you are prohibited from using the Website or its Content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p>\r\n\r\n<p>Intellectual property rights</p>\r\n\r\n<p>This Agreement does not transfer to you any intellectual property owned by 360 Reference or third-parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with 360 Reference. All trademarks, service marks, graphics and logos used in connection with our Website or Services, are trademarks or registered trademarks of 360 Reference or 360 Reference licensors. Other trademarks, service marks, graphics and logos used in connection with our Website or Services may be the trademarks of other third-parties. Your use of our Website and Services grants you no right or license to reproduce or otherwise use any 360 Reference or third-party trademarks.</p>\r\n\r\n<p>Disclaimer of warranty</p>\r\n\r\n<p>You agree that your use of our Website or Services is solely at your own risk. You agree that such Service is provided on an &quot;as is&quot; and &quot;as available&quot; basis. We expressly disclaim all warranties of any kind, whether express or implied, including but not limited to the implied warranties of merchantability, fitness for a particular purpose and non-infringement. We make no warranty that the Services will meet your requirements, or that the Service will be uninterrupted, timely, secure, or error-free; nor do we make any warranty as to the results that may be obtained from the use of the Service or as to the accuracy or reliability of any information obtained through the Service or that defects in the Service will be corrected. You understand and agree that any material and/or data downloaded or otherwise obtained through the use of Service is done at your own discretion and risk and that you will be solely responsible for any damage to your computer system or loss of data that results from the download of such material and/or data. We make no warranty regarding any goods or services purchased or obtained through the Service or any transactions entered into through the Service. No advice or information, whether oral or written, obtained by you from us or through the Service shall create any warranty not expressly made herein.</p>\r\n\r\n<p>Limitation of liability</p>\r\n\r\n<p>To the fullest extent permitted by applicable law, in no event will 360 Reference, its affiliates, officers, directors, employees, agents, suppliers or licensors be liable to any person for (a): any indirect, incidental, special, punitive, cover or consequential damages (including, without limitation, damages for lost profits, revenue, sales, goodwill, use or content, impact on business, business interruption, loss of anticipated savings, loss of business opportunity) however caused, under any theory of liability, including, without limitation, contract, tort, warranty, breach of statutory duty, negligence or otherwise, even if 360 Reference has been advised as to the possibility of such damages or could have foreseen such damages. To the maximum extent permitted by applicable law, the aggregate liability of 360 Reference and its affiliates, officers, employees, agents, suppliers and licensors, relating to the services will be limited to an amount greater of one dollar or any amounts actually paid in cash by you to 360 Reference for the prior one month period prior to the first event or occurrence giving rise to such liability. The limitations and exclusions also apply if this remedy does not fully compensate you for any losses or fails of its essential purpose.</p>\r\n\r\n<p>Indemnification</p>\r\n\r\n<p>You agree to indemnify and hold 360 Reference and its affiliates, directors, officers, employees, and agents harmless from and against any liabilities, losses, damages or costs, including reasonable attorneys&#39; fees, incurred in connection with or arising from any third-party allegations, claims, actions, disputes, or demands asserted against any of them as a result of or relating to your Content, your use of the Website or Services or any willful misconduct on your part.</p>\r\n\r\n<p>Severability</p>\r\n\r\n<p>All rights and restrictions contained in this Agreement may be exercised and shall be applicable and binding only to the extent that they do not violate any applicable laws and are intended to be limited to the extent necessary so that they will not render this Agreement illegal, invalid or unenforceable. If any provision or portion of any provision of this Agreement shall be held to be illegal, invalid or unenforceable by a court of competent jurisdiction, it is the intention of the parties that the remaining provisions or portions thereof shall constitute their agreement with respect to the subject matter hereof, and all such remaining provisions or portions thereof shall remain in full force and effect.</p>\r\n\r\n<p>Dispute resolution</p>\r\n\r\n<p>The formation, interpretation, and performance of this Agreement and any disputes arising out of it shall be governed by the substantive and procedural laws of General, Singapore without regard to its rules on conflicts or choice of law and, to the extent applicable, the laws of Singapore. The exclusive jurisdiction and venue for actions related to the subject matter hereof shall be the state and federal courts located in General, Singapore, and you hereby submit to the personal jurisdiction of such courts. You hereby waive any right to a jury trial in any proceeding arising out of or related to this Agreement. The United Nations Convention on Contracts for the International Sale of Goods does not apply to this Agreement.</p>\r\n\r\n<p>Assignment</p>\r\n\r\n<p>You may not assign, resell, sub-license or otherwise transfer or delegate any of your rights or obligations hereunder, in whole or in part, without our prior written consent, which consent shall be at our own sole discretion and without obligation; any such assignment or transfer shall be null and void. We are is free to assign any of its rights or obligations hereunder, in whole or in part, to any third-party as part of the sale of all or substantially all of its assets or stock or as part of a merger.</p>\r\n\r\n<p>Changes and amendments</p>\r\n\r\n<p>We reserve the right to modify this Agreement or its policies relating to the Website or Services at any time, effective upon posting of an updated version of this Agreement on the Website. When we do we will post a notification on the main page of our Website. Continued use of the Website after any such changes shall constitute your consent to such changes.</p>\r\n\r\n<p>Acceptance of these terms</p>\r\n\r\n<p>You acknowledge that you have read this Agreement and agree to all its terms and conditions. By using the Website or its Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to use or access the Website and its Services.</p>\r\n\r\n<p>Contacting us</p>\r\n\r\n<p>If you have any questions about this Agreement, please contact us.</p>\r\n\r\n<p>This document was last updated on August 20, 2018</p>', 'terms', '2018-08-27 23:34:23'),
(3, 'Privacy Policy', '<p>Privacy policy</p>\r\n\r\n<p>This privacy policy (&quot;Policy&quot;) describes how 360 Reference (&quot;360 Reference&quot;, &quot;we&quot;, &quot;us&quot; or &quot;our&quot;) collects, protects and uses the personally identifiable information (&quot;Personal Information&quot;) you (&quot;User&quot;, &quot;you&quot; or &quot;your&quot;) may provide on the&nbsp;<a href=\"http://www.360reference.sg/\" target=\"_blank\">360reference.sg</a>&nbsp;website and any of its products or services (collectively, &quot;Website&quot; or &quot;Services&quot;). It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>\r\n\r\n<p>Collection of personal information</p>\r\n\r\n<p>We receive and store any information you knowingly provide to us when you create an account, publish content, make a purchase, fill any online forms on the Website. When required this information may include your email address, name, phone number, address, credit card information, bank information, or other Personal Information. You can choose not to provide us with certain information, but then you may not be able to take advantage of some of the Website&#39;s features. Users who are uncertain about what information is mandatory are welcome to contact us.</p>\r\n\r\n<p>Collection of non-personal information</p>\r\n\r\n<p>When you visit the Website our servers automatically record information that your browser sends. This data may include information such as your device&#39;s IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to our Website, pages of our Website that you visit, the time spent on those pages, information you search for on our Website, access times and dates, and other statistics.</p>\r\n\r\n<p>Managing personal information</p>\r\n\r\n<p>You are able to access, add to, update and delete certain Personal Information about you. The information you can view, update, and delete may change as the Website or Services change. When you update information, however, we may maintain a copy of the unrevised information in our records. Some information may remain in our private records after your deletion of such information from your account. We will retain and use your information as necessary to comply with our legal obligations, resolve disputes, and enforce our agreements. We may use any aggregated data derived from or incorporating your Personal Information after you update or delete it, but not in a manner that would identify you personally. Once the retention period expires, Personal Information shall be deleted. Therefore, the right to access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after the expiration of the retention period.</p>\r\n\r\n<p>Use and processing of collected information</p>\r\n\r\n<p>Any of the information we collect from you may be used to personalize your experience; improve our Website; improve customer service and respond to queries and emails of our customers; process transactions; send notification emails such as password reminders, updates, etc; run and operate our Website and Services. Non-Personal Information collected is used only to identify potential cases of abuse and establish statistical information regarding Website usage. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>\r\n\r\n<p>We may process Personal Information related to you if one of the following applies: (i) You have given their consent for one or more specific purposes. Note that under some legislations we may be allowed to process information until you object to such processing (by opting out), without having to rely on consent or any other of the following legal bases below. This, however, does not apply, whenever the processing of Personal Information is subject to European data protection law; (ii) Provision of information is necessary for the performance of an agreement with you and/or for any pre-contractual obligations thereof; (ii) Processing is necessary for compliance with a legal obligation to which you are subject; (iv) Processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in us; (v) Processing is necessary for the purposes of the legitimate interests pursued by us or by a third party. In any case, we will be happy to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Data is a statutory or contractual requirement, or a requirement necessary to enter into a contract.</p>\r\n\r\n<p>Information transfer and storage</p>\r\n\r\n<p>Depending on your location, data transfers may involve transferring and storing your information in a country other than your own. You are entitled to learn about the legal basis of information transfers to a country outside the European Union or to any international organization governed by public international law or set up by two or more countries, such as the UN, and about the security measures taken by us to safeguard your information. If any such transfer takes place, you can find out more by checking the relevant sections of this document or inquire with us using the information provided in the contact section.</p>\r\n\r\n<p>The rights of users</p>\r\n\r\n<p>You may exercise certain rights regarding your information processed by us. In particular, you have the right to do the following: (i) you have the right to withdraw consent where you have previously given your consent to the processing of your information; (ii) you have the right to object to the processing of your information if the processing is carried out on a legal basis other than consent; (iii) you have the right to learn if information is being processed by us, obtain disclosure regarding certain aspects of the processing and obtain a copy of the information undergoing processing; (iv) you have the right to verify the accuracy of your information and ask for it to be updated or corrected; (v) you have the right, under certain circumstances, to restrict the processing of your information, in which case, we will not process your information for any purpose other than storing it; (vi) you have the right, under certain circumstances, to obtain the erasure of your Personal Information from us; (vii) you have the right to receive your information in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance. This provision is applicable provided that your information is processed by automated means and that the processing is based on your consent, on a contract which you are part of or on pre-contractual obligations thereof.</p>\r\n\r\n<p>The right to object to processing</p>\r\n\r\n<p>Where Personal Information is processed for a public interest, in the exercise of an official authority vested in us or for the purposes of the legitimate interests pursued by us, you may object to such processing by providing a ground related to your particular situation to justify the objection. You must know that, however, should your Personal Information be processed for direct marketing purposes, you can object to that processing at any time without providing any justification. To learn, whether we are processing Personal Information for direct marketing purposes, you may refer to the relevant sections of this document.</p>\r\n\r\n<p>How to exercise these rights</p>\r\n\r\n<p>Any requests to exercise User rights can be directed to the Owner through the contact details provided in this document. These requests can be exercised free of charge and will be addressed by the Owner as early as possible and always within one month.</p>\r\n\r\n<p>Billing and payments</p>\r\n\r\n<p>We use third-party payment processors to assist us in processing your payment information securely. Such third-party processors&#39; use of your Personal Information is governed by their respective privacy policies which may or may not contain privacy protections as protective as this Privacy Policy. We suggest that you review their respective privacy policies.</p>\r\n\r\n<p>Privacy of children</p>\r\n\r\n<p>We do not knowingly collect any Personal Information from children under the age of 13. If you are under the age of 13, please do not submit any Personal Information through our Website or Service. We encourage parents and legal guardians to monitor their children&#39;s Internet usage and to help enforce this Policy by instructing their children never to provide Personal Information through our Website or Service without their permission. If you have reason to believe that a child under the age of 13 has provided Personal Information to us through our Website or Service, please contact us.</p>\r\n\r\n<p>Newsletters</p>\r\n\r\n<p>We offer electronic newsletters to which you may voluntarily subscribe at any time. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us. However, you will continue to receive essential transactional emails.</p>\r\n\r\n<p>Cookies</p>\r\n\r\n<p>The Website uses &quot;cookies&quot; to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you. We may use cookies to collect, store, and track information for statistical purposes to operate our Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. If you choose to decline cookies, you may not be able to fully experience the features of the Website and Services.</p>\r\n\r\n<p>In addition to using cookies and related technologies as described above, we also may permit certain third-party companies to help us tailor advertising that we think may be of interest to users and to collect and use other data about user activities on the Website. These companies may deliver ads that might also place cookies and otherwise track user behavior.</p>\r\n\r\n<p>Advertisement</p>\r\n\r\n<p>We may display online advertisements and we may share aggregated and non-identifying information about our customers that we collect through the registration process or through online surveys and promotions with certain advertisers. We do not share personally identifiable information about individual customers with advertisers. In some instances, we may use this aggregated and non-identifying information to deliver tailored advertisements to the intended audience.</p>\r\n\r\n<p>Affiliates</p>\r\n\r\n<p>We may disclose information about you to our affiliates for the purpose of being able to offer you related or additional products and services. Any information relating to you that we provide to our affiliates will be treated by those affiliates in accordance with the terms of this Privacy Policy.</p>\r\n\r\n<p>Links to other websites</p>\r\n\r\n<p>Our Website contains links to other websites that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other websites or third-parties. We encourage you to be aware when you leave our Website and to read the privacy statements of each and every website that may collect Personal Information.</p>\r\n\r\n<p>Information security</p>\r\n\r\n<p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of Personal Information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your Personal Information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and our Website cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third-party, despite best efforts.</p>\r\n\r\n<p>Data breach</p>\r\n\r\n<p>In the event we become aware that the security of the Website has been compromised or users Personal Information has been disclosed to unrelated third-parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do we will post a notice on the Website, send you an email.</p>\r\n\r\n<p>Legal disclosure</p>\r\n\r\n<p>We will disclose any information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request. In the event we go through a business transition, such as a merger or acquisition by another company, or sale of all or a portion of its assets, your user account and personal data will likely be among the assets transferred.</p>\r\n\r\n<p>Changes and amendments</p>\r\n\r\n<p>We reserve the right to modify this privacy policy relating to the Website or Services at any time, effective upon posting of an updated version of this Policy on the Website. When we do we will revise the updated date at the bottom of this page. Continued use of the Website after any such changes shall constitute your consent to such changes.</p>\r\n\r\n<p>Acceptance of this policy</p>\r\n\r\n<p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By using the Website or its Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to use or access the Website and its Services.</p>\r\n\r\n<p>Contacting us</p>\r\n\r\n<p>If you have any questions about this Policy, please contact us.</p>\r\n\r\n<p>This document was last updated on August 27, 2018</p>', 'privacy', '2018-08-27 23:33:58'),
(4, 'Reach out to us.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>', 'contact', '2018-05-21 13:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `strength`
--

CREATE TABLE `strength` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strength`
--

INSERT INTO `strength` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Achiever', 'People exceptionally talented in the Achiever theme work hard and possess a great deal of stamina.\r\nThey take immense satisfaction in being busy and productive', NULL, NULL),
(2, 'Activator', 'People exceptionally talented in the Activator theme can make things happen by turning thoughts\r\ninto action. They want to do things now, rather than simply talk about them.', NULL, NULL),
(3, 'Adaptability', 'People exceptionally talented in the Adaptability theme prefer to go with the flow. They tend to be\r\n“now” people who take things as they come and discover the future one day at a time.', NULL, NULL),
(4, 'Analytical', 'People exceptionally talented in the Analytical theme search for reasons and causes. They have the\r\nability to think about all of the factors that might affect a situation.', NULL, NULL),
(5, 'Belief', 'People exceptionally talented in the Belief theme have certain core values that are unchanging. Out\r\nof these values emerges a defined purpose for their lives.', NULL, NULL),
(6, 'Command', 'People exceptionally talented in the Command theme have presence. They can take control of a\r\nsituation and make decisions.', NULL, NULL),
(7, 'Communication', 'People exceptionally talented in the Communication theme generally find it easy to put their\r\nthoughts into words. They are good conversationalists and presenters.', NULL, NULL),
(8, 'Competition', 'People exceptionally talented in the Competition theme measure their progress against the\r\nperformance of others. They strive to win first place and revel in contests.', NULL, NULL),
(9, 'Connectedness', 'People exceptionally talented in the Connectedness theme have faith in the links among all things.\r\nThey believe there are few coincidences and that almost every event has meaning.', NULL, NULL),
(10, 'Consistency', 'People exceptionally talented in the Consistency theme are keenly aware of the need to\r\ntreat people the same. They try to treat everyone with equality by setting up clear rules and\r\nadhering to them.', NULL, NULL),
(11, 'Context', 'People exceptionally talented in the Context theme enjoy thinking about the past. They understand\r\nthe present by researching its history.', NULL, NULL),
(12, 'Deliberative', 'People exceptionally talented in the Deliberative theme are best described by the serious care they\r\ntake in making decisions or choices. They anticipate obstacles.', NULL, NULL),
(13, 'Developer', 'People exceptionally talented in the Developer theme recognize and cultivate the potential in\r\nothers. They spot the signs of each small improvement and derive satisfaction from evidence\r\nof progress.', NULL, NULL),
(14, 'Discipline', 'People exceptionally talented in the Discipline theme enjoy routine and structure. Their world is\r\nbest described by the order they create.', NULL, NULL),
(15, 'Empathy', 'People exceptionally talented in the Empathy theme can sense other people’s feelings by imagining\r\nthemselves in others’ lives or situations.', NULL, NULL),
(16, 'Focus', 'People exceptionally talented in the Focus theme can take a direction, follow through and make the\r\ncorrections necessary to stay on track. They prioritize, then act.', NULL, NULL),
(17, 'Futuristic', 'People exceptionally talented in the Futuristic theme are inspired by the future and what could be.\r\nThey energize others with their visions of the future.', NULL, NULL),
(18, 'Harmony', 'People exceptionally talented in the Harmony theme look for consensus. They don’t enjoy conflict;\r\nrather, they seek areas of agreement.', NULL, NULL),
(19, 'Ideation', 'People exceptionally talented in the Ideation theme are fascinated by ideas. They are able to find\r\nconnections between seemingly disparate phenomena.', NULL, NULL),
(20, 'Includer', 'People exceptionally talented in the Includer theme accept others. They show awareness of those\r\nwho feel left out and make an effort to include them.', NULL, NULL),
(21, 'Individualization', 'People exceptionally talented in the Individualization theme are intrigued with the unique qualities of\r\neach person. They have a gift for figuring out how different people can work together productively.', NULL, NULL),
(22, 'Input', 'People exceptionally talented in the Input theme have a craving to know more. Often they like to\r\ncollect and archive all kinds of information.', NULL, NULL),
(23, 'Intellection', 'People exceptionally talented in the Intellection theme are characterized by their intellectual activity.\r\nThey are introspective and appreciate intellectual discussions.', NULL, NULL),
(24, 'Learner', 'People exceptionally talented in the Learner theme have a great desire to learn and want to\r\ncontinuously improve. The process of learning, rather than the outcome, excites them.', NULL, NULL),
(25, 'Maximizer', 'People exceptionally talented in the Maximizer theme focus on strengths as a way to stimulate\r\npersonal and group excellence. They seek to transform something strong into something superb.', NULL, NULL),
(26, 'Positivity', 'People exceptionally talented in the Positivity theme have contagious enthusiasm. They are upbeat\r\nand can get others excited about what they are going to do.', NULL, NULL),
(27, 'Relator', 'People exceptionally talented in the Relator theme enjoy close relationships with others. They find\r\ndeep satisfaction in working hard with friends to achieve a goal.', NULL, NULL),
(28, 'Responsibility', 'People exceptionally talented in the Responsibility theme take psychological ownership of what\r\nthey say they will do. They are committed to stable values such as honesty and loyalty.', NULL, NULL),
(29, 'Restorative', 'People exceptionally talented in the Restorative theme are adept at dealing with problems. They are\r\ngood at figuring out what is wrong and resolving it.', NULL, NULL),
(30, 'Self-Assurance', 'People exceptionally talented in the Self-Assurance theme feel confident in their ability to manage\r\ntheir own lives. They possess an inner compass that gives them confidence that their decisions\r\nare right.', NULL, NULL),
(31, 'Significance', 'People exceptionally talented in the Significance theme want to be very important in others’ eyes.\r\nThey are independent and want to be recognized.', NULL, NULL),
(32, 'Strategic', 'People exceptionally talented in the Strategic theme create alternative ways to proceed. Faced with\r\nany given scenario, they can quickly spot the relevant patterns and issues.', NULL, NULL),
(33, 'Woo', 'People exceptionally talented in the Woo theme love the challenge of meeting new people and\r\nwinning them over. They derive satisfaction from breaking the ice and making a connection\r\nwith someone.', NULL, NULL),
(34, 'Arranger', 'People exceptionally talented in the Arranger theme can organize, but they also have a flexibility\r\nthat complements this ability. They like to determine how all of the pieces and resources can be\r\narranged for maximum productivity.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_plan`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(6, 34, 'plan', 'sub_Cd2lQNT7RlL6Yv', 'company_annual', 1, NULL, NULL, '2018-04-06 05:00:11', NULL),
(8, 48, 'plan', 'sub_Cil3eScgbIpx8v', 'individual_annual', 1, NULL, NULL, '2018-04-21 11:05:51', NULL),
(9, 49, 'plan', 'sub_Cil8evxeOsTC9H', 'company_monthly', 1, NULL, NULL, '2018-04-21 11:10:23', NULL),
(10, 56, 'plan', 'sub_CjUXbBEWxFjBy0', 'company_annual', 1, NULL, NULL, '2018-04-23 10:05:51', NULL),
(12, 74, 'plan', 'sub_CuGONfoXwVPIvM', 'individual_monthly', 1, NULL, NULL, '2018-05-22 12:13:07', NULL),
(13, 75, 'plan', 'sub_CuGX31arA8vmKe', 'company_annual', 1, NULL, NULL, '2018-05-22 12:22:11', NULL),
(14, 76, 'plan', 'sub_CuNpPslJvlcLth', 'company_annual', 1, NULL, NULL, '2018-05-22 19:53:45', NULL),
(15, 76, 'plan', 'sub_CuNsWOQMb4KuSD', 'company_annual', 1, NULL, NULL, '2018-05-22 19:56:24', NULL),
(16, 79, 'plan', 'sub_CukKRVMHtXN1py', 'individual_annual', 1, NULL, NULL, '2018-05-23 19:08:28', NULL),
(19, 50, 'plan', 'sub_D4ts5RO811fXON', 'company_annual', 1, NULL, NULL, '2018-06-19 21:41:15', NULL),
(20, 88, 'plan', 'sub_D72DLnisCE0ClC', 'company_annual', 1, NULL, NULL, '2018-06-25 14:25:32', NULL),
(21, 90, 'plan', 'sub_DDRj6IkJ0fqBf5', 'individual_annual', 1, NULL, NULL, '2018-07-12 17:11:52', NULL),
(22, 94, 'plan', 'sub_DJU4qinXedngTZ', 'company_annual', 1, NULL, NULL, '2018-07-28 20:01:15', NULL),
(23, 96, 'plan', 'sub_DKUqYbNk7qQQXs', 'individual_annual', 1, NULL, NULL, '2018-07-31 12:53:05', NULL),
(25, 54, 'plan', 'sub_DKZfcUCj8Tu5D9', 'company_annual', 1, NULL, NULL, '2018-07-31 17:51:39', NULL),
(26, 104, 'plan', 'sub_DKcGzEmq025Ds9', 'individual_annual', 1, NULL, NULL, '2018-07-31 20:32:35', NULL),
(29, 93, 'plan', 'sub_DQd1Ga4wn4t1FH', 'individual_annual', 1, NULL, NULL, '2018-08-16 21:44:06', NULL),
(32, 36, 'plan', 'sub_DjKyrEFtPlWWpQ', 'individual_annual', 1, NULL, NULL, '2018-10-05 20:20:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `user_id`, `email`, `transaction_id`, `customer_id`, `amount`, `status`, `currency`, `billing`, `message`, `stripe_response`, `created_at`, `updated_at`) VALUES
(6, 34, 'kanchan+individual@singsys.com', 'sub_Cd2lQNT7RlL6Yv', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_Cd2lQNT7RlL6Yv\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1522990810,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1522990810,\"current_period_end\":1554526810,\"current_period_start\":1522990810,\"customer\":\"cus_Cd2lpI3HR7QdlQ\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_Cd2lS1AAG5JJbO\",\"object\":\"subscription_item\",\"created\":1522990811,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_Cd2lQNT7RlL6Yv\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_Cd2lQNT7RlL6Yv\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1522990810,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-04-06 05:00:11', NULL),
(8, 48, 'saurabhshukla+individual@singsys.com', 'sub_Cil3eScgbIpx8v', '', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_Cil3eScgbIpx8v\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1524308751,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1524308751,\"current_period_end\":1555844751,\"current_period_start\":1524308751,\"customer\":\"cus_Cil3Rk7Tu3s4VX\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_Cil3maA2IIU5nX\",\"object\":\"subscription_item\",\"created\":1524308751,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_Cil3eScgbIpx8v\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_Cil3eScgbIpx8v\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1524308751,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-04-21 11:05:51', NULL),
(9, 49, 'saurabhshukla+company@singsys.com', 'sub_Cil8evxeOsTC9H', '', '1.00', 'active', 'usd', 'company_monthly', 'active', '{\"id\":\"sub_Cil8evxeOsTC9H\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1524309022,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1524309022,\"current_period_end\":1526901022,\"current_period_start\":1524309022,\"customer\":\"cus_Cil8ZuwESXQfeq\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_Cil8vIZrmBzORe\",\"object\":\"subscription_item\",\"created\":1524309022,\"metadata\":[],\"plan\":{\"id\":\"company_monthly\",\"object\":\"plan\",\"amount\":100,\"billing_scheme\":\"per_unit\",\"created\":1521867174,\"currency\":\"usd\",\"interval\":\"month\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Monthly Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_Cil8evxeOsTC9H\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_Cil8evxeOsTC9H\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_monthly\",\"object\":\"plan\",\"amount\":100,\"billing_scheme\":\"per_unit\",\"created\":1521867174,\"currency\":\"usd\",\"interval\":\"month\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Monthly Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1524309022,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-04-21 11:10:23', NULL),
(10, 56, 'abhishekdubey+1@singsys.com', 'sub_CjUXbBEWxFjBy0', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_CjUXbBEWxFjBy0\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1524477950,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1524477950,\"current_period_end\":1556013950,\"current_period_start\":1524477950,\"customer\":\"cus_CjUXmJt9invCmo\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_CjUXk04KlcISdB\",\"object\":\"subscription_item\",\"created\":1524477950,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_CjUXbBEWxFjBy0\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_CjUXbBEWxFjBy0\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1524477950,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-04-23 10:05:51', NULL),
(12, 74, 'ankitjaiswal+Indpaid@singsys.com', 'sub_CuGONfoXwVPIvM', '', '1.00', 'active', 'usd', 'individual_monthly', 'active', '{\"id\":\"sub_CuGONfoXwVPIvM\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1526962386,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1526962386,\"current_period_end\":1529640786,\"current_period_start\":1526962386,\"customer\":\"cus_CuGOLrzULO4Tou\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_CuGOcZ32vgrMjN\",\"object\":\"subscription_item\",\"created\":1526962387,\"metadata\":[],\"plan\":{\"id\":\"individual_monthly\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":100,\"billing_scheme\":\"per_unit\",\"created\":1521867104,\"currency\":\"usd\",\"interval\":\"month\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Monthly Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_CuGONfoXwVPIvM\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_CuGONfoXwVPIvM\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_monthly\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":100,\"billing_scheme\":\"per_unit\",\"created\":1521867104,\"currency\":\"usd\",\"interval\":\"month\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Monthly Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1526962386,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-05-22 12:13:07', NULL),
(13, 75, 'ankitjaiswal+Companypaid@singsys.com', 'sub_CuGX31arA8vmKe', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_CuGX31arA8vmKe\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1526962930,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1526962930,\"current_period_end\":1558498930,\"current_period_start\":1526962930,\"customer\":\"cus_CuGXMTYSK5geT4\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_CuGXcMO7DrGlZf\",\"object\":\"subscription_item\",\"created\":1526962931,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_CuGX31arA8vmKe\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_CuGX31arA8vmKe\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1526962930,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-05-22 12:22:11', NULL),
(14, 76, 'sushant+company@singsys.com', 'sub_CuNpPslJvlcLth', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_CuNpPslJvlcLth\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1526990024,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1526990024,\"current_period_end\":1558526024,\"current_period_start\":1526990024,\"customer\":\"cus_CuNpDIpy27slZ4\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_CuNp6OazUGzfpV\",\"object\":\"subscription_item\",\"created\":1526990024,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_CuNpPslJvlcLth\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_CuNpPslJvlcLth\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1526990024,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-05-22 19:53:44', NULL),
(15, 76, 'sushant+company@singsys.com', 'sub_CuNsWOQMb4KuSD', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_CuNsWOQMb4KuSD\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1526990183,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1526990183,\"current_period_end\":1558526183,\"current_period_start\":1526990183,\"customer\":\"cus_CuNsTjzjUYdQFi\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_CuNsb9QVq6Fs03\",\"object\":\"subscription_item\",\"created\":1526990183,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_CuNsWOQMb4KuSD\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_CuNsWOQMb4KuSD\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1526990183,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-05-22 19:56:24', NULL),
(16, 79, 'vivekkumar+individual@singsys.com', 'sub_CukKRVMHtXN1py', '', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_CukKRVMHtXN1py\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1527073707,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1527073707,\"current_period_end\":1558609707,\"current_period_start\":1527073707,\"customer\":\"cus_CukKuTlw5mpYK2\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_CukKJRVhbjDYx4\",\"object\":\"subscription_item\",\"created\":1527073708,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_CukKRVMHtXN1py\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_CukKRVMHtXN1py\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1527073707,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-05-23 19:08:28', NULL),
(19, 50, 'preetisingh+surbhi@singsys.com', 'sub_D4ts5RO811fXON', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_D4ts5RO811fXON\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1529415674,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1529415674,\"current_period_end\":1560951674,\"current_period_start\":1529415674,\"customer\":\"cus_D4tsUL8jwTYzPq\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_D4tsFJDW5AO1fE\",\"object\":\"subscription_item\",\"created\":1529415675,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_D4ts5RO811fXON\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_D4ts5RO811fXON\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1529415674,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-06-19 21:41:15', NULL),
(20, 88, 'ankitjaiswal+100@singsys.com', 'sub_D72DLnisCE0ClC', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_D72DLnisCE0ClC\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1529907931,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1529907931,\"current_period_end\":1561443931,\"current_period_start\":1529907931,\"customer\":\"cus_D72DqHPKf7Vycq\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_D72D8NKsNv2goZ\",\"object\":\"subscription_item\",\"created\":1529907931,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_D72DLnisCE0ClC\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_D72DLnisCE0ClC\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1529907931,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-06-25 14:25:32', NULL),
(21, 90, 'ankitjaiswal+105@singsys.com', 'sub_DDRj6IkJ0fqBf5', '', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_DDRj6IkJ0fqBf5\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1531386710,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1531386710,\"current_period_end\":1562922710,\"current_period_start\":1531386710,\"customer\":\"cus_DDRj2kB3Y9A0kW\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DDRjDCpIX1rqeG\",\"object\":\"subscription_item\",\"created\":1531386711,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DDRj6IkJ0fqBf5\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DDRj6IkJ0fqBf5\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1531386710,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-07-12 17:11:52', NULL),
(22, 94, 'raveena+company@singsys.com', 'sub_DJU4qinXedngTZ', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_DJU4qinXedngTZ\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1532779274,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1532779274,\"current_period_end\":1564315274,\"current_period_start\":1532779274,\"customer\":\"cus_DJU4bqs6qrQaVM\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DJU4SxvZWd3m7C\",\"object\":\"subscription_item\",\"created\":1532779274,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DJU4qinXedngTZ\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DJU4qinXedngTZ\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1532779274,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-07-28 20:01:15', NULL),
(23, 96, 'ankitjaiswal+seeker@singsys.com', 'sub_DKUqYbNk7qQQXs', '', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_DKUqYbNk7qQQXs\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1533012784,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1533012784,\"current_period_end\":1564548784,\"current_period_start\":1533012784,\"customer\":\"cus_DKUqMh1tFV7P8O\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DKUqjyT8cyjBnB\",\"object\":\"subscription_item\",\"created\":1533012785,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DKUqYbNk7qQQXs\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DKUqYbNk7qQQXs\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1533012784,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-07-31 12:53:05', NULL),
(25, 54, 'ankitjaiswal+company@singsys.com', 'sub_DKZfcUCj8Tu5D9', '', '20.00', 'active', 'usd', 'company_annual', 'active', '{\"id\":\"sub_DKZfcUCj8Tu5D9\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1533030698,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1533030698,\"current_period_end\":1564566698,\"current_period_start\":1533030698,\"customer\":\"cus_DKZfbgx8wrb8Xy\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DKZfsKR8GXyq5o\",\"object\":\"subscription_item\",\"created\":1533030698,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DKZfcUCj8Tu5D9\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DKZfcUCj8Tu5D9\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"company_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":2000,\"billing_scheme\":\"per_unit\",\"created\":1521867130,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Company Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1533030698,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-07-31 17:51:39', NULL),
(26, 104, 'vivekkumar+i@singsys.com', 'sub_DKcGzEmq025Ds9', '', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_DKcGzEmq025Ds9\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1533040353,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1533040353,\"current_period_end\":1564576353,\"current_period_start\":1533040353,\"customer\":\"cus_DKcGzL296gOylK\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DKcG3ed72LQOpp\",\"object\":\"subscription_item\",\"created\":1533040354,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DKcGzEmq025Ds9\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DKcGzEmq025Ds9\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1533040353,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-07-31 20:32:35', NULL),
(29, 93, 'raveena+individual@singsys.com', 'sub_DQd1Ga4wn4t1FH', '', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_DQd1Ga4wn4t1FH\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1534427044,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1534427044,\"current_period_end\":1565963044,\"current_period_start\":1534427044,\"customer\":\"cus_DQd1Y7VJQfwzBL\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DQd1H11VzPDKoI\",\"object\":\"subscription_item\",\"created\":1534427045,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DQd1Ga4wn4t1FH\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DQd1Ga4wn4t1FH\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1534427044,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-08-16 21:44:06', NULL),
(32, 36, 'ankitjaiswal+14@singsys.com', 'sub_DjKyrEFtPlWWpQ', 'cus_DjKyH3SSdg3eo9', '10.00', 'active', 'usd', 'individual_annual', 'active', '{\"id\":\"sub_DjKyrEFtPlWWpQ\",\"object\":\"subscription\",\"application_fee_percent\":null,\"billing\":\"charge_automatically\",\"billing_cycle_anchor\":1538742045,\"cancel_at_period_end\":false,\"canceled_at\":null,\"created\":1538742045,\"current_period_end\":1570278045,\"current_period_start\":1538742045,\"customer\":\"cus_DjKyH3SSdg3eo9\",\"days_until_due\":null,\"discount\":null,\"ended_at\":null,\"items\":{\"object\":\"list\",\"data\":[{\"id\":\"si_DjKyFTOr7D2YjC\",\"object\":\"subscription_item\",\"created\":1538742045,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"subscription\":\"sub_DjKyrEFtPlWWpQ\"}],\"has_more\":false,\"total_count\":1,\"url\":\"\\/v1\\/subscription_items?subscription=sub_DjKyrEFtPlWWpQ\"},\"livemode\":false,\"metadata\":[],\"plan\":{\"id\":\"individual_annual\",\"object\":\"plan\",\"active\":true,\"aggregate_usage\":null,\"amount\":1000,\"billing_scheme\":\"per_unit\",\"created\":1521867050,\"currency\":\"usd\",\"interval\":\"year\",\"interval_count\":1,\"livemode\":false,\"metadata\":[],\"nickname\":\"Individual Annual Premium\",\"product\":\"prod_CY9gzVYMnrIccl\",\"tiers\":null,\"tiers_mode\":null,\"transform_usage\":null,\"trial_period_days\":null,\"usage_type\":\"licensed\"},\"quantity\":1,\"start\":1538742045,\"status\":\"active\",\"tax_percent\":null,\"trial_end\":null,\"trial_start\":null}', '2018-10-05 20:20:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unregistered_invite`
--

CREATE TABLE `unregistered_invite` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unregistered_invite`
--

INSERT INTO `unregistered_invite` (`id`, `user_id`, `email`, `number`, `created_at`, `updated_at`) VALUES
(4, 57, NULL, '9199199', '2018-06-19 12:38:02', NULL),
(5, 57, 'ankitjaiswal@singsys.com', NULL, '2018-06-19 13:13:05', NULL),
(6, 57, 'ankitjaiswal@singsys.com', NULL, '2018-06-19 13:17:41', NULL),
(7, 57, 'ankitjaiswal@singsys.com', NULL, '2018-06-19 13:28:16', NULL),
(8, 57, NULL, '9199', '2018-06-19 13:40:58', NULL),
(9, 57, NULL, '918318717701', '2018-06-19 13:47:05', NULL),
(10, 57, NULL, '918765385914', '2018-06-19 13:47:06', NULL),
(13, 57, 'ankitjaiswal+qa@singsys.com', NULL, '2018-06-19 21:49:00', NULL),
(14, 57, 'raveena+company@singsys.om', NULL, '2018-06-20 12:40:47', NULL),
(15, 57, 'preetisingh+cmoany@singsys.com', NULL, '2018-06-20 12:46:49', NULL),
(25, 57, NULL, '918318717701', '2018-07-12 12:57:02', NULL),
(26, 57, NULL, '918318717701', '2018-07-12 13:39:12', NULL),
(27, 75, NULL, '919956771380', '2018-07-12 17:30:05', NULL),
(28, 75, NULL, '919956771380', '2018-07-12 17:31:07', NULL),
(29, 75, NULL, '917275583135', '2018-07-12 17:31:08', NULL),
(30, 75, NULL, '919450686435', '2018-07-12 18:36:08', NULL),
(31, 75, NULL, '919919931652', '2018-07-12 18:36:09', NULL),
(32, 75, NULL, '917275583135', '2018-07-12 18:36:10', NULL),
(33, 75, NULL, '919956771380', '2018-07-12 18:36:11', NULL),
(34, 75, NULL, '919450686435', '2018-07-12 18:37:07', NULL),
(35, 75, NULL, '919956771380', '2018-07-12 18:37:08', NULL),
(36, 75, NULL, '917065873851', '2018-07-12 18:40:15', NULL),
(37, 75, NULL, '917275583135', '2018-07-12 18:43:46', NULL),
(38, 75, NULL, '919956771380', '2018-07-12 19:09:51', NULL),
(39, 75, NULL, '919956771380', '2018-07-12 19:26:20', NULL),
(40, 75, NULL, '919956771380', '2018-07-12 19:28:05', NULL),
(41, 75, NULL, '919956771380', '2018-07-12 19:29:00', NULL),
(42, 75, NULL, '919956771380', '2018-07-12 19:39:47', NULL),
(43, 75, NULL, '919956771380', '2018-07-12 19:41:23', NULL),
(44, 75, NULL, '917065873851', '2018-07-12 20:02:11', NULL),
(45, 75, NULL, '919956771380', '2018-07-12 20:31:43', NULL),
(46, 75, NULL, '919956771380', '2018-07-12 20:33:24', NULL),
(47, 75, NULL, '919956771380', '2018-07-12 20:34:10', NULL),
(48, 75, NULL, '919956771380', '2018-07-12 20:39:30', NULL),
(49, 75, NULL, '919956771380', '2018-07-12 20:41:47', NULL),
(53, 57, NULL, '917065873851', '2018-08-02 16:49:25', NULL),
(54, 57, NULL, '917065873851', '2018-08-02 16:54:04', NULL),
(55, 57, NULL, '917065873851', '2018-08-02 17:35:56', NULL),
(56, 57, NULL, '917065873851', '2018-08-02 17:36:46', NULL),
(57, 57, NULL, '918808769469', '2018-08-02 17:36:48', NULL),
(58, 57, NULL, '918808769469', '2018-08-02 17:41:48', NULL),
(59, 57, 'raveena@sinsgys.com', NULL, '2018-08-02 17:42:37', NULL),
(60, 57, 'raveena@sinsgys.com', NULL, '2018-08-02 17:43:10', NULL),
(61, 57, 'raveena@singsys.com', NULL, '2018-08-02 17:43:12', NULL),
(62, 57, 'raveena@singsys.com', NULL, '2018-08-02 17:48:36', NULL),
(63, 108, NULL, '918808769469', '2018-08-02 18:08:20', NULL),
(64, 108, NULL, '918808769469', '2018-08-02 18:08:44', NULL),
(65, 108, NULL, '917065873851', '2018-08-02 18:11:00', NULL),
(66, 93, NULL, '918808769469', '2018-08-02 18:19:42', NULL),
(67, 93, NULL, '918808769469', '2018-08-02 18:22:35', NULL),
(68, 93, NULL, '917065873851', '2018-08-02 18:22:36', NULL),
(69, 121, 'raveena@singsys.com', NULL, '2018-08-10 18:10:45', NULL),
(70, 93, 'lcc@andgro.com', NULL, '2018-08-31 18:59:47', NULL),
(71, 57, 'Rajneesh@singsys.com', NULL, '2018-10-03 13:58:33', NULL),
(72, 148, 'abhisekdubey@singsys.com', NULL, '2018-10-03 21:03:27', NULL),
(73, 148, 'abhisekdubey@singsys.com', NULL, '2018-10-03 21:04:18', NULL),
(74, 74, NULL, '9557415248', '2018-10-04 21:42:09', NULL),
(75, 74, NULL, '9557415248', '2018-10-04 21:42:50', NULL),
(76, 74, NULL, '6392174943', '2018-10-04 21:42:52', NULL),
(77, 164, NULL, '917897366804', '2018-11-01 19:08:51', NULL),
(78, 171, NULL, '91525415241', '2018-11-21 18:22:24', NULL),
(79, 171, NULL, '91525415241', '2018-11-21 18:22:49', NULL),
(80, 171, NULL, '91525415241', '2018-11-21 18:23:13', NULL),
(81, 174, NULL, '918676913831', '2018-11-23 13:12:55', NULL),
(82, 174, NULL, '918676913831', '2018-11-23 13:14:07', NULL),
(83, 175, NULL, '918676913831', '2018-11-23 13:14:40', NULL),
(84, 174, NULL, '918604236010', '2018-11-26 15:18:10', NULL),
(85, 162, NULL, '93731053', '2018-11-26 18:08:49', NULL),
(86, 174, 'vivekkumar@singsys.com', NULL, '2018-11-28 14:59:42', NULL),
(87, 174, 'vivekkumar@singsys.com', NULL, '2018-11-28 15:04:18', NULL),
(88, 174, 'singsystest2@gmail.com', NULL, '2018-11-28 15:04:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unregistered_job_recommendation`
--

CREATE TABLE `unregistered_job_recommendation` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unregistered_job_recommendation`
--

INSERT INTO `unregistered_job_recommendation` (`id`, `user_id`, `job_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 93, 3, 'chetan', '2018-07-28 20:17:58', NULL),
(2, 93, 3, 'chetand', '2018-07-28 20:18:04', NULL),
(3, 93, 3, 'chetandeep@singsys.com', '2018-07-28 20:18:25', NULL),
(4, 93, 3, 'chetandeep@singsys.com', '2018-07-28 20:18:30', NULL),
(5, 93, 4, 'chetandeep@singsys.com', '2018-07-28 20:26:06', NULL),
(6, 93, 4, 'chetandeep@singsys.com', '2018-07-28 20:26:09', NULL),
(7, 93, 4, 'chetandeep@singsys.com', '2018-07-28 20:26:13', NULL),
(8, 96, 11, 'chetandeep@singsys.com', '2018-07-31 19:46:03', NULL),
(9, 96, 8, 'vivekumar+nuser@singsys.com', '2018-07-31 21:29:08', NULL),
(10, 96, 8, 'vivekumar+nuser@singsys.com', '2018-07-31 21:31:56', NULL),
(11, 59, 19, 'preetisingh+235@singsys.com', '2018-08-02 17:45:11', NULL),
(12, 57, 3, 'raveena@singsys.com', '2018-08-02 17:57:43', NULL),
(13, 57, 3, 'raveena@singsys.com', '2018-08-02 17:59:37', NULL),
(14, 57, 16, 'raveena@singsys.com', '2018-08-02 18:03:39', NULL),
(15, 48, 5, 'saurabhshukla@singsys.com', '2018-08-06 12:41:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `account_type_id` int(10) UNSIGNED DEFAULT NULL,
  `email_verified` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mobile_verified` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('active','inactive','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_verification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `paid_trial_end` datetime DEFAULT NULL,
  `paid_trial_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `stripe_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credibilty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile_code`, `mobile`, `profile_url`, `company_name`, `country_id`, `profile_image`, `role_id`, `account_type_id`, `email_verified`, `mobile_verified`, `status`, `admin_verification`, `paid_trial_end`, `paid_trial_status`, `stripe_customer_id`, `trial_ends_at`, `card_last_four`, `card_brand`, `credibilty`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 'info@360Reference.com', '$2y$10$pK.zfR0eZMzncbM9cnZmnO7sjWdCcebegaJU4t9PgzvQFY0E2LrDC', '91', '1234567890', NULL, NULL, NULL, '', 1, NULL, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '3ZeOxJB9ASpp45eSRtjbuedFum20sctN5BmwEn12xZrlt8FtFf4yC7J3Zwld', NULL, '2018-03-12 23:45:00', NULL),
(2, 'Ashish', 'Singh', 'sushant+01@singsys.com', '$2y$10$sAf3692Aw2gaMkccRS2U4OPZ.v4.SIQY1Q0exLx0E4WeIpCqzWOgW', '91', '789456789', NULL, 'HCL Technologies', 100, '', 3, NULL, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '0pRs57skDBK7MF52GyQnY0WLnWHn1lVIlLNav2Y0FqTcgoTwbMtsPhmOlefy', 'WsVlhZUqRziq8hwvn7JtjZwuhwgf0liSxxzysDo9', NULL, '2018-11-15 12:47:41'),
(3, 'qwerty', 'wertyu', 'preetisingh+12@singsys.com', '$2y$10$sAf3692Aw2gaMkccRS2U4OPZ.v4.SIQY1Q0exLx0E4WeIpCqzWOgW', '91', '789456213', NULL, 'qwer', 100, '', 3, NULL, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'iaSJco5qStCFD908Tv8iFV7x84IfFwAJHWWCcQ4R', NULL, '2018-03-21 06:45:27'),
(9, 'abhish', 'abhishe', 'abhishekdubey@singsys.com', '$2y$10$VVgaoWSpgUmjTCDRl1tBXuWE.I9EVEn0BtDHKf20g0ujjjIgJfSjO', '65', '36547893', NULL, 'Singsys Pvt. Ltd.', 100, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'A1EHhy5NRJO07jRvxRPJGj6zV08XZODDmjQnO8jTHtwERCvX4mPo3A6X7uB5', 'd2SGHFfnDi3hwfYVtZGoVCBXsiG7w2sRVqzUoG6I', '2018-03-27 11:33:41', '2018-05-22 15:23:10'),
(17, 'Chanchal', 'sharma', 'chanchal@singsys.com', '$2y$10$tTBjFGV8VZ4tNI7uqw2CQe0LcIbnT.q5BSnOYDRmpFCmykoRB7jVS', '91', '123456788', NULL, 'Omaxe City', 198, '', 3, 2, '0', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'J6O9AjNvx6nRCj9nwossgtv6o1N8nqb9FmwfCxqa', '2018-03-28 06:21:30', '2018-05-22 15:32:04'),
(23, 'durgesh', 'yadav', 'durgesh@singsys.com', '$2y$10$dBvjOSsbtCDYgS.iZX5Nu.fgNTd/8NzDXDOi/zmcb8.qGP9YsXnmS', '91', '12345676', NULL, 'PTe', 125, 'crop_20180328131110.jpeg', 3, 2, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'Py1BKfP4JezISUxBm5SsaYw8zcoPcnwuBldtSKu4', '2018-03-28 13:11:21', NULL),
(26, 'Sushant', 'Kumar', 'sushant+1company@singsys.com', '$2y$10$BwwW/wZg661XvU9dK7kRAOahZeFtP9xU8VaqfYjMxNKGDPJCAhSE6', '91', '7894563285', NULL, 'zxcvbn', 100, '', 3, 2, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'DYqT5d0GqaJBd3q1sb7GIzpxSKt1aLPa21xDCBAa', '2018-03-28 13:23:27', NULL),
(28, 'qwert', 'wertyu', 'sushant+678@singsys.com', '$2y$10$ktCTbAiqqTHMdD7yBWVhTOop2MtphcfEiNq4GKbWezseNQfTabHMy', '91', '7852369878', NULL, 'sdfghjkllkjhg', 100, '', 3, 2, '0', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', '1UjCmX58xm7XMtfpWY1DbRQ0CoCZkr17eGFchm8z', '2018-03-28 14:27:30', '2018-11-15 12:47:09'),
(32, 'Sandeep', 'Singsys', 'sandeep+free@singsys.com', '$2y$10$Fu6BNbYC9RNPRTsFMwLSvO7Pz5CUXfo13rbxWjpPbk0/rJ8u3xuXC', '91', '7897366805', NULL, 'Signsys', 100, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'OuNNqc2tWOjY7Mz47QLYJ1YibDIFAl7g459E76WfL7QMvI0uHG3gO2Q09Vi4', 'XyggqSQ3Vt1rW9WhsuID6Wj3wWxqPAELGuOOzCor', '2018-04-02 06:36:49', '2018-11-15 12:43:41'),
(33, 'Sushant', 'qwert', 'sushant+1994@singsys.com', '$2y$10$PypBJsGh/7RyhbscCjrYI.wyogbTskbN.bztJkvi/u1dKlQjfiGsu', '65', '9453687125', NULL, 'awsedfghjkl', 65, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'bDD7HC5j0p2vTCVsCQ2cJjRLu5BD3Ki9dA4k2CZ7S5BC43LaVxN24TunWyRs', 'iDehY9LXjXLPG9onyMEzF4feyH2qSx886Ql5EEVQ', '2018-04-03 13:58:39', '2018-04-03 13:59:30'),
(34, 'Kanchan', 'Srivastava', 'kanchan+individual@singsys.com', '$2y$10$Pv7RWPr4t37dq3O/7kA0ZeCyOOFpOogYQIjRhFWy/8IxnJXUzPRAK', '65', '87654321', NULL, 'Wilhyt Technology', 65, 'crop_20180406042621.jpeg', 3, 1, '0', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'KUpH1oYCsEHFuhSwYIKMYo0zB4pFA6KRMhvlhNw0', '2018-04-06 04:26:59', NULL),
(36, 'Sultan 1', 'Khan', 'ankitjaiswal+14@singsys.com', '$2y$10$s1mF/21dt1YtekQL2soA2.7kkP8AZS9Be6XZJLGjq1UwkSP3Q4AYe', '65', '12365498', NULL, NULL, 65, '', 2, 3, '1', '1', 'active', '1', NULL, '0', 'cus_DjKyH3SSdg3eo9', NULL, NULL, NULL, '', 'HYf4DUS9b4eokaVQ02xhwWztBe4AQ9WQgMc2ELxfOtFmq0ntRcuxpVVlqumr', 'wbKk6ENWWVs9JgYi4AgDR2AxGKjq14cuiIZ6T19n', '2018-04-10 09:43:53', '2018-10-05 20:20:47'),
(39, 'individual', 'individual', 'ankitjaiswal+17@singsys.com', '$2y$10$mz.OgHuKvNYThpkyTuvM0eH0iv9vJNAQ/Yn.GVeDOyQd8IJFKKL3C', '65', '21365878', NULL, NULL, 65, '', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'uPMQelNinPNvGl1yztRQae4TwwEba797e4sxYE2JS7VSSx980JsuxfvBmAeP', 'na5ZQydWk5fDxjM0CSKu9mdqwxXA4EIofjWhu4Bc', '2018-04-10 11:56:48', '2018-10-05 14:12:07'),
(43, 'pradeep', 'kumar', 'ankitjaiswal+19@singsys.com', '$2y$10$MLNAHHENVm5Et01LS7Jwsu83KpxKKMdLExt3f0M/d6wPECtrYPptO', '+1784', '741852959', NULL, 'pradeep', 189, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'LO3fGQY415uA6HaziW7VRfx9lfKd1VrcuG16pvayBzrOT0GI8byP0le6e2f6', 'aumo0G1BwDlSUV8Oo8rgqstnUg1upDbQL0MIIKPc', '2018-04-10 13:52:19', '2018-04-10 13:53:47'),
(44, 'shivam', 'gupta', 'ankitjaiswal+20@singsys.com', '$2y$10$CYq3uqFe1IOZ6xB1z.ZkS.gxqXFyA6VxsXWb1grijpKZN4BVDASYy', '+381', '12365487', NULL, NULL, 195, '', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '7TASfVFVZ2NkHhka760xeWTasyy98AS6Dvwpzt9MzMcvHM1jmLgmwEr5atOd', 'B0aoEOAWE9ucXm4YoOLuPwxJViAhst1AWdd5zQI0', '2018-04-10 13:56:45', '2018-10-05 14:12:12'),
(48, 'Saurabh', 'Shukla', 'saurabhshukla+individual@singsys.com', '$2y$10$SZC.Z1VsjSU6QNSgk2AUU.zlPkNvu.VVjmkNwG2gviRFqVB2Z845e', '+65', '987654241', 'saurabhshukla09', NULL, 198, 'crop_20180421110147.png', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, 'Silver', 'M7gpP8dqvtZLGxwwb7vNisbe0zH6DFcBQyOEMgmo1MnMoKYnrZkbBhqnRrVP', 'VzI717YZicdsG3GIpj2viRwg3W01Q7eWMfjuuLSD', '2018-04-21 11:01:56', '2018-08-09 15:21:35'),
(49, 'Saurabh', 'Shukla', 'saurabhshukla+company@singsys.com', '$2y$10$hnOP2mUsfb1B3P5RgFGoxuzX9pY/Yo0ExcVXa5BTXVA9KZCfWDPY.', '65', '98723455', NULL, 'Legal Analytics', 198, 'crop_20180421110908.jpeg', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'ljBWwTZ7KgX0dw25RioaxrOutjV7gvHpboRYmn2COReVbS49m3RhbHvICUDf', 'QFMao910VXi9TfvWOiAourmxx1TPu5PrvCITd6LC', '2018-04-21 11:09:18', '2018-04-21 11:10:56'),
(50, 'Surbhi', 'Mishra', 'preetisingh+surbhi@singsys.com', '$2y$10$WPDletlIyrxwLl72P4rrPeVL1m50tAxqCl8NLt.U00NR1uiLj323a', '381', '9956123648', NULL, 'Clag Technologies', 235, '', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'iJP0Ei8pvszJHoK2aMnnXgBwpFpAf20llUYZDkgNCtYtEWsoSTykRKRJUa6v', '5fSEo3JffbSaEP0bbLCua6Tr72CBDMBxkvX0S5SA', '2018-04-23 04:23:05', '2018-06-19 21:41:15'),
(54, 'Ankit', 'Company', 'ankitjaiswal+company@singsys.com', '$2y$10$bCpf.FfnMlcZI13QQyeWHeTm9CH.zIp1khyhWDHpNLlNXUkzArLMC', '91', '852963741', NULL, '360', 15, '', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'O5KA0hkONFLZ35gGptbt4y91FgHLycYB2tS2g7IW9m6V7wGw4XAEi8AM452v', 'tL7v3m8L41WkLnoiGLfK7eVEPafePCLLgo8ZLnib', '2018-04-23 05:53:04', '2018-10-08 15:53:16'),
(56, 'abhishek', 'company', 'abhishekdubey+1@singsys.com', '$2y$10$GQxDi3TiR1YzEj74D8WJXeA7wOVQrqkrwpLw.GfSpiMbYVTnYLlLm', '+65', '256314587', NULL, 'TCS', 198, '', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'srOMScmb48mRg1psoq4C01OmsQ3cDGzWt2MZxS2UTeAXSfowBFQ6h8c8zFlN', 'oMkpGzFlo083xHWgXqmFS19b2VtgB3MDquv5jRYB', '2018-04-23 10:04:23', '2018-04-23 11:33:42'),
(57, 'ANKIT', 'individual', 'ankitjaiswal+ind@singsys.com', '$2y$10$ABFH/93KD/SMmkET3flJ8.qBzk0TNOhmf/SCKfCUbhvX/Ot6CjIYS', '+91', '856932147', NULL, NULL, 100, 'crop_20180424131809.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'O1Rf27XXvpVBUpc5LUlDnqnmdU98I8prqCU9XLVu8IJ9YNWrIRZs6tYJwzfL', 'ndVHpbtONnUAArFQksq8TiWK0AEOIGyMaHlpP0gj', '2018-04-24 13:19:15', '2018-10-08 13:07:41'),
(58, 'Dubey', 'Company', 'abhishekdubey+2@singsys.com', '$2y$10$5wFAvS7Uw/N5HjlDHIJAsOR6/tZc3Qjg3qFdNXtXw5LmPIMATWTHS', '65', '95217563852', NULL, 'Infosys', 2, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'LsVtJRB7TuaNhUZjnE76NSHSwnAevr5VvO93gnkezSZPpx7Z3wrRStqAp0jA', 'Wd5SQYT2Krfmw6Ka8pb63tB8OgRlAJgq5TP94ZCt', '2018-04-24 18:27:14', '2018-08-09 14:28:52'),
(59, 'Preeti', 'Singh', 'preetisingh@singsys.com', '$2y$10$73S1yF2N4y.0u9msLQOFduy1zpfX1YQimCJak1CRq7cr45AO2YOIa', '+65', '89076543', 'http://13.251.11.134/manage-personal-information', NULL, 198, 'crop_20180427185413.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'Vetu5Q8fzfwohnFAWYsVkiZPBMKt1hCuLDZ3Kblhumj6uxEucKLx6jkYCoT6', '6X6XkbzINH9o7Xf3TENGDsZlG6mKRWPDHlNgouho', '2018-04-27 18:54:19', '2018-08-02 17:11:23'),
(62, 'Company', '360', 'ankitjaiswal+1@singsys.com', '$2y$10$SG88uqC0vgfTNWFkIuXyb.uPEziKzABXKpsjUerdY18ZST8XOkDty', '354', '258963147', NULL, '360 Company', 99, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'UXuFkYAbY3XQNLSOzDnU1f0LupuSs1kCUt9jEJqUbSktGyfH5IFMmcu4yk8t', '8HVttkEnU8T4iE4zgz9nr5YXgP9Ig8wOBPwJXRqX', '2018-05-11 14:06:01', '2018-05-11 14:08:11'),
(63, 'Satish', 'Pandey', 'ankitjaiswal+2@singsys.com', '$2y$10$La.qJ8D/qhRkNzcuM.N6pOmLMctDCj7gDaryepl213hY0iRb.6ZQS', '+36', '256314789', NULL, NULL, 98, '', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'iFbmYC1NDdbHQlXDIr4ogABmSjkJ8AxGvgBA6YEr9tYNbSX7igun0rpe85hc', 'spLjSepkohqS2Gi6rsv2Jc9dBM1tITDE4FNnKBSY', '2018-05-11 14:16:39', '2018-11-15 13:56:05'),
(72, 'assasc', 'cds ds  d', 'ankitjaiswal+9@singsys.com', '$2y$10$yWetJytANoRkhDGVsfobBOhhl19V7rY5bdAmtAoa5LojEBlrGHuoS', '65', '123456789', NULL, 'axass', 198, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'BRczwhYu2b2vDQ7EmlmyQMxJLCAWeDVbiXOyLkJZOcEN4LnegUQe388XfnrR', 'mgz66oiDhFS4kuCKgWh10CLtPFDSOjVj92gasQoK', '2018-05-11 21:08:34', '2018-05-11 21:08:57'),
(74, 'Individual', '1', 'ankitjaiswal+Indpaid@singsys.com', '$2y$10$reVVtQ10PrI4ymefuh7NMubi.36/4je.ox81sjTCnk9zUhJo32ga.', '+91', '2563147998', 'www.ankitjaiswal.com', NULL, 100, 'crop_20180522121841.jpeg', 3, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'hOQVLQUwPYYcGM3bOcUIqnl4NaJiCdRGoysrDkiXYoxvsDtHcoyC6g4ifFah', 'KKOVD3HIYISEI3D5RZRJ2WAYW7MLQ7CMDWTCGXC6', '2018-05-22 12:09:28', '2018-08-11 20:26:29'),
(75, 'Quality', 'Testing', 'ankitjaiswal+Companypaid@singsys.com', '$2y$10$z2x2nBF1Sw9961.nNIpuCuWYH7./xCF1EoQHZYdmj9kdFGRrctEWK', '91', '8563214789', NULL, 'Dubey & Sons', 97, 'crop_20180522210311.jpeg', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'jtWr4GlmWTMjORw3eqkFDJdDmvZ7LIr3jfZHYexLbHqGUwADKFZby0bYq0Jr', 'Q5B0T0WQOYZP6192QVP38W2388E3188GOHOVOKKN', '2018-05-22 12:20:47', '2018-10-08 15:44:17'),
(76, 'Sushant', 'Kumar', 'sushant+company@singsys.com', '$2y$10$2CegjiItbLaoF7BANYP.iehVaD14eDOaRGDCIl01T9zoVBU5HqyzW', '91', '9453680129', NULL, 'Infosys Pvt', 100, '', 3, 1, '0', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'DQEHS3VNTMCUKPLTAUI0L5QDXX5AWPRJVIH7XW14', '2018-05-22 19:51:44', NULL),
(77, 'Chanchal', 'Sharma', 'ankitjaiswal+111@singsys.com', '$2y$10$0nmfTM4.X7iscY69fOIskuwS4aQ/BY5LBPPtQ6jeZIxzp1llGJgPG', '+1721', '85236974', NULL, NULL, 199, '', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'TOWpxc70V2Lo5Tq8zgcThox4lBo14XgXrOHCeJOopfPAlixUsdDyWzA55us8', 'DH6WG6KJ4DIEIOQ32S5U1ESBOY242DY4BNQKG8DW', '2018-05-23 16:18:25', '2018-05-23 16:18:51'),
(79, 'Vivek', 'kumar', 'vivekkumar+individual@singsys.com', '$2y$10$mEFMzmUQij0rhuSm7ZIY6.G0jxKytmzAx3MEKqY/zmQETE11YK/6i', '+65', '13434343434', NULL, NULL, 198, 'crop_20180523191605.jpeg', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '0uxg64j78iJLcqqs60b0PfEbyLT1q5DW3tOISYYRuyYEWoRLBzIc0wUVumSI', 'DPGBOZ97FGPCJ94IX3M9XWHJIVPAGG9T2XVOS98K', '2018-05-23 19:05:58', '2018-11-15 12:05:34'),
(80, 'Sunil', 'Singh', 'ankitjaiswal+112@singsys.com', '$2y$10$NQs7b6i00V8LahB5HMO8pO4vi4V9o7VUaIxsyA93G4XO60rFrBU9O', '381', '124578963', NULL, 'Sunil\'s Company', 195, '', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'TiEOtCevLQQfAL6JYhrKgZZIxwurCw410ahAPkm7DxrffRDMVumzMhY7xzly', '963NBNT5BU8CQOBCAWJHUKHY4BNTFX5L3E3IJCRM', '2018-06-02 13:00:10', '2018-06-02 13:00:28'),
(81, 'Manish', 'Jaiswal', 'ankitjaiswal+113@singsys.com', '$2y$10$9iaMN1rYUI1IQQrccyupTei7rWWYw75Vh9sPp.nDBy3BQNOt.llMK', '+40', '14785296', NULL, NULL, 180, 'crop_20180605135048.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'BA0CG4L6WQOUFAM4llMH04DnNc0U8n1B2eLhfgQN4NJTylrXyVCSttkqgUud', '29C2X8WMHAOIR72FECZM6R7Y6JOLVWWFVGF9EJWW', '2018-06-02 13:26:24', '2018-06-05 13:50:53'),
(82, 'Pawan', 'sharma', 'ankitjaiswal+114@singsys.com', '$2y$10$M0wuZPY204r22MNZ7xTgZ.p8uTmG2omOMmbYc3RTx6cY3AoxD0XLi', '+65', '23658741', NULL, 'Pawan\'s', 198, 'crop_20180602140715.png', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'OBubje0fxFLCrW7nDZO9W5v4QXWoiA0WCbQYgh0DyF3BNRumAGeYNjPFoI49', '1H5V6IIBEVDLLL9N4JUOW9XB75TINUM55UU7A1SM', '2018-06-02 13:34:03', '2018-06-02 18:24:05'),
(83, 'Manvendra', 'Singh', 'ankitjaiswal+18@singsys.com', '$2y$10$XCeeHjuR7oZEwiLw1mP1xO0tjqNLpcvwqGoJZF0IV5eOXu3XuC3uq', '+91', '987463321', NULL, NULL, 100, 'crop_20180602184327.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'EomF3H9ZRolTSODOanpcN2W8V8cTA3Q2nxc7VzOSWKcvCUVr5iBIFs5C2jCM', 'XSZTDDLOSH6CY6JR3ZZY2BSGZI0PQYA3270F121Q', '2018-06-02 17:20:49', '2018-06-02 19:46:21'),
(86, 'Ritesh', 'Sharma', 'ankitjaiswal+115@singsys.com', '$2y$10$B0u7VksrJGWlO2zpD3WgQO6Y41cpWWAjuVmjrNIeN1Z2pWPnJQ/KC', '20', '12398765', NULL, 'Ritesh\'s', 65, 'crop_20180602191529.jpeg', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'dGyLdTftQHbU4hSNiRMD3aFkt2extbAB8YEzZy1rMSuvedc5C7ULeGAHIE89', '31P0AE9T2ACEMB64Y5L43Z8W675WHMW3AFVO1GA6', '2018-06-02 19:16:05', '2018-06-02 19:16:20'),
(87, 'Pankaj', 'Verma', 'pankaj@singsys.com', '$2y$10$4U4CH5gZO5TA5Rm6E0xNjOwL7P57PUeBCXirq6GLedHzW0eVeoQ3q', '+65', '94515943', NULL, NULL, 198, '', 2, 3, '1', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', '6V17E4DVQB2DGYOAQI9ATWDXOGCT9GHAFU1YLK9N', '2018-06-04 14:52:28', '2018-07-25 14:55:52'),
(88, 'Rajneesh', 'Rajpoot', 'ankitjaiswal+100@singsys.com', '$2y$10$Dqgxs6vjsYDYfsiXYehCWuRV7.CwVDXnxR8HBL/VH4H06GsfbvVrK', '7', '12398756', NULL, 'Amdocs', 181, '', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'vvGoV1eTL6JkMdRhMlsj5IOBtWnDjEW36tfBFzQSNG6vXYJ4a1uaICrsic1v', 'HW808FZ8B7Q6OKUZ3I21F5ZAKF1S0RCOM4C1U8Z8', '2018-06-25 14:23:29', '2018-06-25 14:40:07'),
(89, 'Mani', 'Gupta', 'ankitjaiswal+103@singsys.com', '$2y$10$83uIJiTDxZNV/uCGiO/iLOnZVG3KAFIatVYMwqa0Waipa0Vs6Bv/S', '+91', '8523697416', 'www.amdocs.com', NULL, 100, 'crop_20180712131439.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'e1DbUaOh9sE9CAfHygfNXwJ0O5ol3TQxYsTuzsfPyzsTtuKLv7k21R81pwAA', 'V8R026A9URIU4OIXGVLSIHOZ6JSMKJRAB60FAEJV', '2018-07-12 12:30:23', '2018-07-12 13:15:00'),
(90, 'Sonal', 'Bellani', 'ankitjaiswal+105@singsys.com', '$2y$10$7vxZBt78E.D0gKvgmDVeO.wQp4fA3/IvUU3Oim25PAA9gklv8UFQ2', '+91', '8318717701', NULL, NULL, 100, '', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'jXtnxZOnjKyfqqcQVpiP6tkh6L7hNrTdLVmshbmiDxDn4gfvjXZydTBc2MBm', 'WQZX8NH9ENSSJ7L7R5N0M03N2FC2QPP6E36RBOOJ', '2018-07-12 17:10:05', '2018-07-12 17:14:17'),
(92, 'Mohd', 'Kaif', 'ankitjaiswal+106@singsys.com', '$2y$10$3atfch0i1ulcigIcMDLLQ.Bkn7Kn97nNCMg./hquhzHKxvuA0PN2u', '91', '831897846512', NULL, 'TCSS', 100, '', 3, 2, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'IUMHF71VJ8O2CZ6PBQRC0P8KHKLE1VGDV7MOBFOK', '2018-07-12 19:24:38', NULL),
(93, 'Raveena', 'Nigam', 'raveena+individual@singsys.com', '$2y$10$tprTZtEq3ae5.2nIQF7yjuSO6HCaeaXf5qJEYA2O5lDjQpmjrn1GC', '+65', '34567890', 'raveena1', NULL, 198, 'crop_20180917124029.jpeg', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, 'Gold', '5eGxCBmBQeVsIQeN0T4H81NkDjGE6fheg4bZDAfE0xBIuZm9aRVKR0oRWDXd', 'U9NZ0VEEXYVSMEELZZ8J0734PI2QFGZJ9KN791L7', '2018-07-28 19:58:29', '2018-10-08 21:49:39'),
(94, 'Raveena', 'Nigam', 'raveena+company@singsys.com', '$2y$10$0dmsabNXDGs9oPQyaCcPtOM4yrFev4gklByYTKXXF1FvK/5H1lvqm', '65', '23456788', 'nraveena', 'Wipro Technology', 198, 'crop_20181004134655.jpeg', 3, 1, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'PUP0dVjGhkeyQYCkTzt2kyk4mJLY7esPe2jL08EFXTyuKxwmT2dxP8L1ErHW', 'HGIF2GIXFT0F5Q7A3THOE7ZWB3EXMBWLDKGF5WP7', '2018-07-28 20:00:04', '2018-08-31 10:32:20'),
(95, 'Chetan Deep', 'Singh', 'chetandeep+user@singsys.com', '$2y$10$VRF6MmjA3CDOo9XR6qGazuLUz8QcCeuw5d5.KvLLPbHMnMjfhZKBi', '+65', '34567833', NULL, NULL, 198, NULL, 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'nCT0I8BytiKIfTbOGhFIGpikRaCAtIAjcnIGf66wffJhS3irwSmS00YhWPrA', '2KZ48N765DQLRCT142SWV8GMUA3KBJGV0A1ZCRSY', '2018-07-28 21:15:24', '2018-07-28 21:18:58'),
(96, 'Ankit', 'Job', 'ankitjaiswal+seeker@singsys.com', '$2y$10$vmLwrGEHk1s0e.QgEkTbyeRjF5tx2.P/OCWT.XPlo6I1XNil8wIPC', '+91', '9919931652', 'www.tcs.com', NULL, 100, 'crop_20180801182636.jpeg', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '6nSxXVZhMh0V1uU7auSTUBkqzRp45fchs8IHSNbCwElinkmOIuBIBfIteJ5m', 'KWZ1Y8DKW26JITD9EUKLI2CMHAYTAF9W4PQJFAHZ', '2018-07-31 12:50:06', '2018-08-02 20:25:51'),
(104, 'vivek', 'kumar', 'vivekkumar+i@singsys.com', '$2y$10$qpzlTAPSEMeyGUEMIEyfJuVYHmC7/j3SZWLp0EG6LVSTYkYYMeRpa', '+91', '8299568098', NULL, NULL, 100, '', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '3GFHjKsSDzsjhBizADgGDHzj1XuULdq5IVJAESQDTlFGHdk1YQBH6l0Uz2ZU', 'UGGO35S3PWL3CII0E3UTIGXGOPX9LI2TIGP5SBIR', '2018-07-31 20:30:37', '2018-11-13 19:24:09'),
(105, 'Ankit', 'Non User', 'ankitjaiswal+nonuser@singsys.com', '$2y$10$Qmbj2A0S8wVijwGaKF6sqe6FxskHJW0tfFweC51dtwA19bzRQqVw2', '+91', '8181092445', NULL, NULL, 100, NULL, 2, 4, '1', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'hyqZ95cuvasUhFbROC3dcF3RHeoLZxeblpO8sSI9MH0o22i7cx7s9sMpMhYJ', '0VGWOT2IBIUHDKP362V937XMFZ04NF54EKF0B3R1', '2018-07-31 20:46:29', '2018-07-31 21:02:08'),
(108, 'Ankit', 'Analytics', 'ankitjaiswal+analytics@singsys.com', '$2y$10$.ssUCT3RGCli/InrCA1Xv.hq4a08oBRtD7i56ArzZ06/uMr2NwRAC', '+91', '8881036285', '9919931652', NULL, 100, 'crop_20180801184752.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, 'Bronze', 'tnRdS6BxrlBoTBnvz7n7tzpUv9zy57bFXD39LUB1e3ScMXgWAdl1JWpjLPN4', 'D8QWBEI2HNBF8MJLR8YL5ABF95L9P455OMAFLN1Y', '2018-08-01 18:49:56', '2018-08-03 21:54:10'),
(112, 'Satish', 'Pandey', 'satish@singsys.com', '$2y$10$.QAg8w9Xi6B/LNAQ/gpGReKZLTSVZBQHK5USNmCyxhe9mBzMBy9cC', '+91', '8881036286', NULL, NULL, 100, '', 2, 3, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', '4CHYY976LJ10PV7OW1CWCY92T5UBFKSQZ4GU2QN4', '2018-08-01 19:31:14', NULL),
(113, 'Ravindra', 'Pal', 'raveena+ravindra@singsys.com', '$2y$10$y1rXTBpTpBJxNbOcv.9n/.1CLnQNTM7V7pIkoqPhkC9qcHBW1a0di', '91', '9956771380', NULL, 'Singsys Pvt. Ltd', 100, 'crop_20180801210839.jpeg', 3, 2, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'dvlcipaqdtNcVPYea3NqtCHeH7mHGT6Mx05yBiHmM5o5j9kKuSoc7niF8hfW', '29IX3JDDX74ASYFUSVWFZI0757LUDGD595DSBZN7', '2018-08-01 21:09:35', '2018-08-01 21:10:19'),
(115, 'Chachal', 'Non User', 'preetisingh+1@singsys.com', '$2y$10$AuOBf4W3LzM6PjPY82.ppeuIVOHGMqCIpVwbLwhsTOOzXL/Pr6sza', '+91', '9651421877', NULL, NULL, 100, NULL, 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '7JRinNh907xhx7vww8qe53qzTGsQy1iTMn2P5t91nVEXhDeQQ6mIzQ7F3I6Q', '1N5JN9KBIV954JOPNJKX8RDJDUS2JJNQPHKTVHBV', '2018-08-02 18:26:15', '2018-08-02 18:30:08'),
(116, 'dgre', 'dgrgr', 'rhththt@egge.com', '$2y$10$b8yc0NRg0.9s7xtQo/CrMuCE23gTTijFqKYzpGC7Ap/AywWZyfzHG', '91', '+44896556564', NULL, 'sfdsdvdbd', 100, '', 3, 2, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', '7SG0LQ2QL828MJXVYRS2N1O9N182ALY8JUMIJ1U3', '2018-08-02 18:59:31', NULL),
(117, 'Sultan', 'Khan', 'sultan@singsys.com', '$2y$10$aezE5193YQ8fJAjvc597b.jPys8QAVXhXOZ47aJ0Vzvg1NGxj/cgy', '+91', '9918432660', NULL, NULL, 100, NULL, 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'vicXcRpadWWEtXRgiRjVF8nahoJRkGll11BwH4C5A6mxJfYErKEHMYruJwgp', '22459T5TGYMI7WN5TFZHRJEG4HM1GVWAGFIJX0QX', '2018-08-02 19:01:38', '2018-08-02 19:03:45'),
(118, 'preeti', 'singh', 'preetisingh+2@singsys.com', '$2y$10$yYY8EYJADiIh2Q89tN.76eL5TIRoDKbYsIO3Mqc4Oy31E4R9/Kv8u', '+91', '8523697415', NULL, NULL, 100, NULL, 2, 4, '1', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'L1ZM6AVY59Q408IIF0F4IOO4W9549JLJBC943XR7', '2018-08-02 19:10:40', '2018-08-02 19:11:37'),
(119, 'preeti', 'singh', 'preetisingh+3@singsys.com', '$2y$10$6cJmOsiyOIOpUhHxDQy80.fdwIK3CSkikv7XWGL1MU2IT02VjBQ0u', '+91', '8523697458', NULL, NULL, 100, NULL, 2, 4, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', '', 'PQ4VJ0YN8CMK2FA1DB7ORCO2COMFP1WAESC3F8ZP', '2018-08-02 19:12:11', NULL),
(121, 'Ankit', 'FreeUser', 'ankitjaiswal+free@singsys.com', '$2y$10$qK5Lo7f/rvtYM/19fHlVZe0qrCnJEvgZ16I8sl/wr5q1e5EO0gN7q', '+355', '8765385914', NULL, NULL, 3, 'crop_20180809141027.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, NULL, 'e3iY4QrDv44f5spdCFN6M8FW74jCbVUVgejEiAaIOMuCTdf1H8foaMvkicBp', 'LXNAH6GZDZH97N8E6GUXUS2QYL5768306PC5WSZI', '2018-08-09 14:05:54', '2018-10-03 19:31:39'),
(123, 'charlene', 'ng', 'ngshiyin@gmail.com', '$2y$10$1a3n5Ut6JNTQk9XkyIJSiOQSizDLGPJPZeArHjVM0ocH/jzf9Uakq', '+65', '94308815', NULL, NULL, 198, 'crop_20180901201351.jpeg', 2, 3, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'qhVkvwt0iAkF4TID0qd5cpN5ljW5JCGBihHrMtVtL5o6YKYpaYkUOQGKBMg4', 'H9XHIWUGVVO64QJEPMM4WIAEHJNK4X5T2GSOR4IG', '2018-08-12 22:06:52', '2018-09-01 20:14:23'),
(125, 'Claire', 'Hua', 'claire.hua@gmail.com', '$2y$10$hZKuHGqG3P.ri.BGNt4MvOpruiiNp3cMKwiG1ZRqHEhqw0GWTuzSi', '+65', '82233857', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, NULL, '', '4T1455MU0MUV1LVWHEKUWEDHPDDV53GXL33DX6ZS', '2018-08-15 15:39:14', NULL),
(126, 'Anjali', 'Srivastava', 'raveena+anjali@singsys.com', '$2y$10$D3HYsk4rtdU247PiS0UC..eJNS39SIh06vBVwZw/QTmHylh1qvRzi', '+91', '7065873851', NULL, NULL, 100, 'crop_20180821190251.jpeg', 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, 'Bronze', '14mL6gViZ1bApeBS38piiqJadkc3rOSxsqccFCDWY3DqeTyTtSD0mljlSBPM', 'K3BUEFHK9RC9QRL47ZQN0ADGMD4NODTVJZDHK9K8', '2018-08-21 19:03:52', '2018-08-21 19:05:15'),
(136, 'Preeti', 'Singh', 'raveena+preetisingh@singsys.com', '$2y$10$cDMuYkwccmbNAsUEy9Hgse4qJVkPpAkthwMLMcy0DfeOT.6B2kxma', '+91', '8808769469', NULL, NULL, 100, NULL, 2, 4, '1', '1', 'active', '1', NULL, '0', '', NULL, NULL, NULL, 'Bronze', 'iBxl1d2m7FZHp5u03tQ1cdJQVutJPJ1nARKKWpWDY9OACrU9tcHC3t7o99fK', '44UTCJCS0ZYEOMI7GC2R6P40FQBU90KH8IGJX28R', '2018-09-03 12:56:37', '2018-09-03 12:58:47'),
(137, 'Twinkle', 'Godhwani', 'raveena+twinkle@singsys.com', '$2y$10$iUA2Oty/cy7B0Ybjd8ewB.UMwDlURVIKcX1SurKOe1buKPjhVtQ12', '+32', '5554443331', NULL, NULL, 21, '', 2, 4, '0', '1', 'active', '1', '2018-10-07 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'V1G9J7VPQX9IPDUOFGQ7LIIPIBK88L96ADG2SLRZ', '2018-09-07 15:01:25', NULL),
(139, 'Anjali', 'Srivastava', 'raveena+anjali2@singsys.com', '$2y$10$M5KS.pX3s1K0PMj2XrMLgO7viFc2xdr5HgTUm7PEDE/o9XUj.bYAm', '65', '345678890', NULL, 'Multi National Company', 198, '', 3, 2, '0', '1', 'active', '1', '2018-10-08 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'ZAPPXWX5GR50EURAYCQCJRP4PSKULUOHI7N4AB1E', '2018-09-08 12:55:46', NULL),
(140, 'Chen chuen', 'Lee', 'leechenchuen@gmail.com', '$2y$10$Dcwv2mlHc64E7wzVTVQPT.iXFHu2BkNs3rvqcPFw/ny82UubbeqVa', '+65', '83880788', NULL, NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-10-08 00:00:00', '1', '', NULL, NULL, NULL, NULL, '1QVs40mLd2aIuMrfMht0f6ajfX70d1fKi5seVIgu4L9dIofdbphZErPFPSTB', '8R7O3MXIZMA1NDBCFBBTBFOL761AGVT7SIQEM4BT', '2018-09-08 20:56:32', '2018-09-08 20:57:24'),
(141, 'Mohit', 'Awasthi', 'raveena+mohit@singsys.com', '$2y$10$1TSn7KV1R1a3JmuezkfRtuBumuTLu4mN6W/CcbZWHAXI2ewhe6Ix6', '65', '111111121', NULL, 'Info Care Solutions', 198, '', 3, 2, '0', '0', 'active', '1', '2018-10-14 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'DTDXNA45R3S4U06KNU9G03CV4WB3JA32WQ8X9F6E', '2018-09-14 16:11:12', NULL),
(142, 'Pushap', 'Saini', 'pushap@sinsgys.com', '$2y$10$MAB9568SwF4zx/Gl4s3R7.OAvHPmLiqRTRW0s2RhzOu7T5eLBjihC', '+65', '22222222', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-10-14 00:00:00', '1', '', NULL, NULL, NULL, '', '', 'I5RKYAQYTSJAWYA7535LAHFMXFJBPFCCZOZGRVSP', '2018-09-14 16:25:47', NULL),
(143, 'Sanjay', 'Prajapati', 'raveena+sanjay@singsys.com', '$2y$10$8GTQlL13Ub0TiT7O15yiGOFzJ7hfCZsHeGMGf26lfqdJN8rlm3UzO', '+65', '222222244', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-10-14 00:00:00', '1', '', NULL, NULL, NULL, '', '', '7XMGWSHZS5WN0UBZI0CY8Y6HFM2UFK0V8654SECP', '2018-09-14 18:25:35', NULL),
(144, 'Pushap', 'Saini', 'raveena+pushap@singsys.com', '$2y$10$GPavjfO.0haGzSdjfWtC2.OV6TB14sDszq4wfWVsACuM6Xgs0Wee6', '+91', '20000000', NULL, NULL, 100, '', 2, 4, '0', '1', 'active', '1', '2018-10-24 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '58FZS8AI636NBJKC7793EGN8AKD2MW1GXSB9EDGR', '2018-09-24 14:45:10', NULL),
(145, 'Gyan', 'Prakash', 'raveena+gyan@singsys.com', '$2y$10$0hG8bGYjXdK6EqdlS3YqE.9t9/2ozpHaBbgFB3BJMHTj0KjO0SkPi', '+65', '741852963', NULL, 'ABC Company', 198, NULL, 3, 2, '1', '1', 'active', '1', '2018-10-26 00:00:00', '1', '', NULL, NULL, NULL, '', 'mOWbcD8xACQ0EnfCZI6T4vnS9t447JrpYjlaQo2UY01ZTJDw7oGu4wGa8NCu', 'V4JYBBVYAZDV6OSNYQZ4U42EAS1CMF5DMRCXDNDC', '2018-09-26 00:47:38', '2018-09-26 00:56:02'),
(147, 'ANKIT', 'Individual', 'ankitjaiswal+individual@singsys.com', '$2y$10$.WjHPq8.LGuIW0wJAkV8xOyWE7lER62.wOSD1VjYa2L5TNcum7opa', '+30', '9170997636', 'www.google.com', NULL, 84, 'crop_20181001210300.png', 2, 4, '1', '1', 'active', '1', '2018-11-01 00:00:00', '1', '', NULL, NULL, NULL, '', 'wLYnFsM750L5jKEjRc8Ur9OlWLDgRrgMZ7LPRGOXJUoXpmZabYWxvadFQcOz', 'LG79WHS3U223LZ7H6C7KHOXNETPKX5GJP6GM6OGZ', '2018-10-01 20:08:18', '2018-10-05 19:40:35'),
(148, 'Ankit', 'Corporate', 'ankitjaiswal+corporate@singsys.com', '$2y$10$Xp9LYJHxNEDcvtAixqJfr.F4R6WPfwZGolNna2YttnVi47.wY/wT.', '91', '7007036352', NULL, 'Stream Corporate', 100, 'crop_20181001201456.jpeg', 3, 2, '1', '1', 'active', '1', '2018-11-01 00:00:00', '1', '', NULL, NULL, NULL, '', 'xy9XB2aveKQfr7p3j2kgEb9ZziTvqZYMnr9lPxyjMTuxpmT8gVlZNDnbmhjS', '85XJ5FPMT4Y3LAI2NG70V65ZFFAYCJCRYLEPXS99', '2018-10-01 20:16:04', '2018-10-03 19:03:05'),
(152, 'Rajneesh', 'Singh', 'rajneesh+1@singsys.com', '$2y$10$jfCf5wQv7ki0WcqRsjIP0OR3XSMTVynSFM0ICopufGGVC6YNv80/a', '+91', '9643600792', NULL, 'Stream Corporate', 100, NULL, 3, 2, '1', '0', 'active', '1', '2018-11-03 00:00:00', '1', '', NULL, NULL, NULL, '', 'XWaTtxu4t6sGm3XrFSCJN7QRopdwMYKKHRa89hvaMjtLQ1MtCcqT78yESHLx', '3U66YCD0R0E260SG5VRP0KJGGIWZI5S5OSWV0VEA', '2018-10-03 21:51:32', '2018-10-03 21:57:05'),
(153, 'Rajneesh kumar rajput', 'Rajput', 'rajneesh+rk@singsys.com', '$2y$10$oDTTpltpbdcf9VnHZkecluFgd6b/QEZAOq95PvfEkgh8hfNRzVRDu', '65', '95574125249', NULL, 'sony', 198, '', 3, 2, '1', '0', 'active', '1', '2018-11-04 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '7PQYTRKAGO798LHEJPR9SSHZ5S583PG4O186TC9S', '2018-10-04 11:56:59', '2018-10-04 21:36:08'),
(154, 'Dubey and sons', 'Abhishek', 'rajneesh+100@singsys.com', '$2y$10$km39tcnTACkgT.L0dICvROX5lbKYRq/gvt/At9NvJIi62ezHG5kHW', '+91', '8299377388', NULL, NULL, 100, '', 2, 4, '1', '0', 'active', '1', '2018-11-04 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '3J3PZAR6ZD5I9XXQ8GTSAX1NWTTPBIIFTMD6951P', '2018-10-04 21:32:55', '2018-10-08 13:50:34'),
(156, 'Raj', 'Raj', 'rajneesh+000@singsys.com', '$2y$10$DGK7uwgwOqzN6tMSFmhj8eTkpn.SIKBnhNvg4bOEe7DuIU1KMTg9e', '91', '9721355334', NULL, 'rajneesh', 100, '', 3, 2, '1', '1', 'active', '1', '2018-11-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'ma3DiYsx1i6PXYBzkPFoRUx9KWEHujeQDrt1WpNSgRgtw80lY3Mdv8x44MQU', 'Q2MHLWDEYD9SG7AL08PE8B112G65QQ5GXFNN1HVP', '2018-10-05 12:41:48', '2018-10-05 12:45:14'),
(157, 'TCSS', 'Corporate', 'ankitjaiswal+tcs@singsys.com', '$2y$10$9ZmLXyYhaVA2GSUmvjojs.Hf52IIqrFxBoZvF6oFvC.7sNIACKFQu', '+91', '8318359371', NULL, 'TCSS', 100, NULL, 3, 2, '1', '1', 'active', '1', '2018-11-05 00:00:00', '1', '', NULL, NULL, NULL, '', 'pkjlMg4feBdkfbGx0PU6DPS2OU3ktV9ZsyiulooKUrGpo7jHUJEg2lKy4dBI', 'VCYXQ6CR2AASWVCTOPH9YPWTA6SA3IXZ5SQ2X3K1', '2018-10-05 15:58:33', '2018-10-05 18:51:51'),
(158, 'Rakesh', 'Singh', 'ankitjaiswal+intel@singsys.com', '$2y$10$VQbs6C2jIQuQlt.oSiD44eCrftsZaHtr6g2atVgzvlJ9H3JwtI5OS', '+91', '9452924146', 'rakesh', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'VrqCcYgldRQE5HzcMrid6CjrMjshDO5k6OT0N6nsNGphTQHQPm6C7GnNUajM', 'XG5DOY51HDPHM79F7BFLPL8HGKYQFNM8KUC90OLR', '2018-10-05 20:29:37', '2018-10-05 21:00:08'),
(159, 'Kong Hwa', 'Lee', 'longdragon_lkh@yahoo.com', '$2y$10$GpW.jaqz67.WzG567.rEquaVLrBS7Kzdc61RY.jHqT//TWPnzrk4i', '+65', '97386489', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-11-08 00:00:00', '1', '', NULL, NULL, NULL, '', '', 'D28OAF3C51M62MO3N11KEN81HV1H3VLJBR708DXG', '2018-10-08 00:30:54', NULL),
(160, 'Vivek', 'KK', 'vivekkumar+in@singsys.com', '$2y$10$wfRRGfzUkBeWouwLMyZzi.k0VBMt2Itb6w3kGVlgJRqxv4JSEPvg2', '+91', '7800586302', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-08 00:00:00', '1', '', NULL, NULL, NULL, '', '6g8Uz4MXLx3p61ASxNaizNXRdRWSSt1r6XnF2ZkDXrOEkfJ2OBCOKMSeX7oO', 'LO87I6N6AOBTNZ9COJ36K3GYA080M2NGAIZDZX0X', '2018-10-08 13:13:19', '2018-10-08 14:37:09'),
(161, 'Prateek', 'Shukla', 'prateek@singsys.com', '$2y$10$JvaM6EIYfLsUJnJzcLtDCOF3W2gmSlKsWd.Iw3qbbVzcsNDAWD2TO', '+91', '7317496568', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-30 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'zfgiAwU7OdqcFXyiuzjsjAsIb9Va2WsMbm7uQOcLDBCf4TO5nFvo3X45W8Zx', 'MM5MS0UHE5RNV8SBWQUWQ1MYWJRXL4AU6M568NAA', '2018-10-30 23:45:02', '2018-10-30 23:45:47'),
(162, 'Sandeep', 'Verma', 'sandeep+individual@singsys.com', '$2y$10$FtVRqIyMYdOc7p8XtfnxK.ga75qT5E.jOn9Ja2SqWSQhDjDZnLE7C', '+65', '92389225', NULL, NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-12-01 00:00:00', '1', '', NULL, NULL, NULL, NULL, '6ccmiIXt7ahmsOBx0n5XBV2R4oZaPiOzdQgRl8wCHvxBR1lpvCsgnFHaJnTn', 'EJEGPZAI2U30S630UZJDGHABJMSILRFF3RGRPSN4', '2018-10-31 18:44:55', '2018-10-31 19:07:44'),
(164, 'Sandeep', 'Corporate', 'sandeep+corporate@singsys.com', '$2y$10$MfGtAtJQDIEs0yvok2Oqg.7p3FdRnciNF1M/HUMiI2GJo56SWc4zy', '65', '82015170', NULL, 'Singsys corporate', 198, '', 3, 2, '1', '1', 'active', '1', '2018-12-01 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'Hem1RMkMhQlT0UikioSnqfQfEu8jKVxhZlVjXAOCtDIhUNRYl3ik5ENsGtPk', 'TSWEO2NYKIP2ZRJD4UZLSRHXOA6E6MLRXFLY8OU5', '2018-10-31 19:27:00', '2018-11-01 18:36:18'),
(166, 'I1', 'Last name', 'chetandeep+i1@singsys.com', '$2y$10$mUSNzDimCoT7OdBTk3Ftke2V2RXOPzI3IkQtF5tW4/3WJW08dJGx.', '+65', '12121121121', 'i1lastname', NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-12-16 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'seAP2CyMNESEPPoMfX47s3chpE6xKgcoDg3dDckcN9QaxfeFej0ZIA59UHBJ', 'VOKFHGDUYXRPWPKD05KF6NTECT65O7U8P4O7A6W2', '2018-11-16 13:45:32', '2018-11-16 13:46:13'),
(167, 'I2', 'Last name i2', 'chetandeep+i2@singsys.com', '$2y$10$iYpqpzxT4pH7iuJ2w5yz5O2nF.LTAAZp2GLB2sfvc56KG/3dEAZ16', '+65', '12121212222', 'i2lastnamei2', NULL, 198, '', 3, 4, '1', '1', 'active', '1', '2018-12-16 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'puGLTj7DjQMZRvSgpOd3PYCvmaBaAHfvZbCS7Poc9xeONE6LhPmEyxgdsQke', 'ICER8AS8JQVKJ05ZAPXB77SM8JDPUAQAJOOFXBVS', '2018-11-16 13:47:46', '2018-11-16 13:48:18'),
(168, 'Comp1', 'Last name', 'chetandeep+comp1@singsys.com', '$2y$10$IYFBopzagMX/1Ai3GMsI...49FUyuK4KnorEFGzqEgPVMJRUmVIt.', '65', '12112121111', 'comp1lastname', 'comp name 1', 198, '', 3, 2, '1', '1', 'active', '1', '2018-12-16 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'qsf2AbJUrvDtTpSg7Ihb1KaLaGQa2WwDAdPUQbrZ88p1vKY20eWVrvDMpDCB', 'NT1ENJEN10TXLRIC7XAZGHFO7ZF0MW8DNA07VR6I', '2018-11-16 13:50:51', '2018-11-16 13:51:07'),
(169, 'Vivek', 'Kumar', 'vivekkumar+stg@singsys.com', '$2y$10$rKyTUCl4gWqL7RA8Q7wAQudRqBThJRGL8M6COt9rdVNWNDXlVU2Ie', '91', '7903327877', 'VivekKumar', 'Omaxe', 100, 'crop_20181119115545.png', 3, 2, '1', '1', 'active', '1', '2018-12-19 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'UNGRvOZF2I1FXf4ZppVnDp0YjOPfdDUl4AgMQND0BierOqbmB3QKp1t1XQRq', '1NSWZ85U35A195HD206Q6E5MU3FYSWXK8WXWSPZV', '2018-11-19 11:58:39', '2018-11-19 12:01:52'),
(171, 'New', 'Ind', 'vivekkumar+inew@singsys.com', '$2y$10$S7BT6oz4EsJzvg64vj6Mze/aWVg.mDANtThDA8DsTlMgqmWIVFiyO', '+91', '8756281617', 'NewInd', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-12-19 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'Q8nurE78Zvi95og1ZEJ5ElamoQmy6hV23zrdgJqY57gEQMMLshwFjTmyuGMF', 'XLUATHEV6Q4RTPI4QRYZM0COXPY91M0P9SHMMJ3W', '2018-11-19 15:26:18', '2018-11-19 15:27:08'),
(173, 'Rajneesh', 'Raj', 'rajneesh+ct@singsys.com', '$2y$10$0s.pEp9nU1MeLIysyJd1TuHgN108l6BKlLydxvG5foAuKXppY.D1e', '65', '98765343232', 'rajneeshraj', 'rajn', 198, '', 3, 2, '1', '0', 'active', '1', '2018-12-19 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'OCOG5S2E4IZ563KP713MIQ2LN2WM97V2QKPUGZTC', '2018-11-19 20:43:00', '2018-11-19 21:13:14'),
(174, 'Vivek', 'Company', 'vivekkumar+cy@singsys.com', '$2y$10$39fAnQMHjj9PRBjdp2AAJeHociqXpjcds1NWl.mscIPVvfXGfwE/S', '91', '9264964542', 'VivekCompany1', 'Companynew', 100, '', 3, 2, '1', '1', 'active', '1', '2018-12-23 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'hSjgelEZYY5ndFnSix3jUEl80UXXd1DNwZl5FaGCgCbObPAB7vsBwJEiGDkh', '1LYHAMXIYEY9ZE6FAEVEZ2YDKIBM111JRRX0QYMZ', '2018-11-23 12:22:14', '2018-11-23 12:27:35'),
(175, 'Vivek', 'Individual', 'vivekkumar+il@singsys.com', '$2y$10$WqZQkykpqSCg33Ec/sU8XeQxJdqbm0o/K8rw6ElBKWvYYz/dSX/Hm', '+91', '6307868975', 'VivekIndividual1', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-12-23 00:00:00', '1', '', NULL, NULL, NULL, 'Silver', 'dDEoyD122uJeD0LyODncP3eohwmTZe9l1poaUG64wLCPZS7kvl7Ld9rfIRck', 'FQ6ZY0Y8BMF0H61VQSU6ZNEPYFORU4QXYMPGYC10', '2018-11-23 12:22:23', '2018-11-23 12:29:38'),
(176, 'Qwert', 'Qaz', 'abc@gmail.com', '$2y$10$O.VO7BsP.6XqAJEhmQTcG.ucvBmJ/EyNa4v553FgDZ/V33BK0qBuS', '+91', '1234567835', 'qwertqaz', 'ytrewq', 100, '', 3, 2, '0', '0', 'active', '1', '2018-12-23 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '451BXNBCWUU7328KAFCRH6E4S48QXBX0IIDRADOC', '2018-11-23 12:56:32', NULL),
(177, 'Qwerty', 'Abcd', 'vivekkumar+122@singsys.com', '$2y$10$cFO5zW6a4iwJicqIqSzTyesOMYfM2zbWRLL7JR5CF8JLfl9gAAhmW', '+91', '8676913831', 'qwertyabcd', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-12-23 00:00:00', '1', '', NULL, NULL, NULL, NULL, '1re0Fr53OG3VzhNOqs1CXG7DiTvfI8C6dAsfb7xrjceGpaPd1ohl2q1RsTem', 'CZ0W398H1N6FZ1YKIBP2GBF7VVDIJONJJCY8XVS7', '2018-11-23 14:31:09', '2018-11-23 14:31:56'),
(178, 'Ankush', 'Indivisual', 'ankush+individual@singsys.com', '$2y$10$jaaj7/5xPGV2Gi7YiHa8DO7xWRIt9TxQWA/1n/gsZbtiRHbPudUJ.', '+65', '82015187', 'AnkushIndivisual1', NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-12-23 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'ZqoWQUm7ssIMJ9cMCM1HL2fVZUfM766RAxMvMLzvb4KRQI4X4KavnFUl2vjD', 'XEQ09OBEZS656XLWEMXVKY5UGTSUWPTTSZSOAXG1', '2018-11-23 17:28:11', '2018-11-23 17:47:48'),
(179, 'Vk', 'Kv', 'vivekkumar+ncuser@singsys.com', '$2y$10$560JHsmfRkCs/iT3IcJPrOKjFhC4esca0Q9HcS4EBBLuLMHnuLrPq', '+91', '9161077451', NULL, 'qwerty', 100, NULL, 3, 2, '1', '1', 'active', '1', '2018-12-26 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'LqOgrC0RDGfVF5dBDAeEtFfbg0U55MWIcxNlU4ipijd1bSEivKd2vSrVTfUV', '02V0D2D2APO0S03E7OJV3HRBJXNLHG9DKBK73BFP', '2018-11-26 15:06:20', '2018-11-26 15:10:54'),
(180, 'Abhi', 'Chakra', 'vivekkumar+iabhi@singsys.com', '$2y$10$3TkyXjaA8gBAzRHrmkda5.TCDqj/Ejsfmhh2vGWKqLkxbERR/zI.C', '+91', '8604236010', 'abhichakra', 'qwert', 100, '', 3, 2, '1', '1', 'active', '1', '2018-12-26 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'JHpCoynrqWUsUpB0a0YrI5aJSN9ujcfkNeE47VvDkmq1mcN9Q1FvDsZCKAQk', 'ICOQUK0R50HBAN0UZ9HZBVPU0428TPEU11ZMU5JZ', '2018-11-26 15:21:37', '2018-11-26 15:22:44'),
(181, 'Pushpendra', 'Indivisual', 'pushpendra@singsys.com', '$2y$10$4kgDDjn7y4d7AEDs0uqJ6.52VzelvSDcHPrPcXYhKhgYFlraCNPyK', '+65', '93731053', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-12-26 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'DDJ2HBPD12C2AOXP0IHX4QYTSMT27GNW4UZNP7PY', '2018-11-26 17:56:31', NULL),
(182, 'Chetan', 'Verma', 'amitverma+ind@singsys.com', '$2y$10$vXiFfU29imr3gvL0sUbd4uZ.29xBF6lDNVNYl9adFU6cZJR8sW18y', '+91', '9876543234', 'AmitVerma', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-12-27 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'u5AmmW12wAl1S34ciHHnftLDWhxMrtiN4H6vULNJmi1zvDROWmBPgs0jPZEH', 'HJ1TOF1E3Q49LS270E72XNMH9BVJ17SA42LR9ZY6', '2018-11-27 17:53:17', NULL),
(183, 'ABC', 'Company', 'amitverma+comp@singsys.com', '$2y$10$/zmwzQmgpms6DXlVAMkw9.IhJnnEO6EUVb/bt2Zfi6BCQcpbNDRMi', '+65', '876541234', 'AmitCompany', 'Software Company', 198, '', 3, 2, '1', '1', 'active', '1', '2018-12-27 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'y4HNFjGI2yG9Is0w7qkioGrI9KEai7yisIJJ6adhMl6Ry9jdONV3XNFsHwkT', 'IC4FGUJT643PBHUBNL9MGQV3D6W85M095LY0AKFH', '2018-11-27 17:58:20', NULL),
(184, 'Company', 'Test', 'amitverma+company@singsys.com', '$2y$10$f6155dRPVH2hS.sVIg.HGOZu0CwOc5u9P7L6Aj2meiGLf.CN0IfUW', '+65', '8765432344', 'CompanyTest', 'TESTCompany', 198, '', 3, 2, '1', '1', 'active', '1', '2018-12-27 00:00:00', '1', '', NULL, NULL, NULL, NULL, '8FT2krJ8R8Nz5PnxWZFnO8OSgNx3i6jWGjMgO0SAxXqGqPcBEtEfqRSk5jA7', 'NMPOIA7JH7WEMDZPIGKA0JQ7JOTF1ZCJ6WLBQH25', '2018-11-27 20:50:52', NULL),
(185, 'Gaurav', 'Jaiswal', 'gaurav@singsys.com', '$2y$10$vW244w5anr8DaYJIILx.9.pznSlbEvRiR9HWZt1m3fo6icmb/2HRi', '+65', '66523076', 'GauravJaiswal', 'Singsys', 198, '', 3, 2, '0', '0', 'active', '1', '2018-12-29 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '2OLTADWQUEQ96KFFT259SATIYYX25X4TQNSS5O1R', '2018-11-29 21:31:13', NULL),
(186, 'Anupam', 'Verma', 'anupam@singsys.com', '$2y$10$T2Ac3H9FvdHVVbigJVLtfuVlljZ359BMosoxCUiRbmupMmqR4XIhC', '+65', '66523075', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-12-29 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'V754KU6FPF4VPNKLEG9QF9EAFIOKA1Z2WZQG0YPX', '2018-11-29 22:03:32', NULL),
(187, 'Amit', 'Verma', 'amitverma@singsys.com', '$2y$10$Xauyg/fkWQTF6Jzm.aoKH.OuIDt5rp0MDb8L3LPeefAta5NjaEPlK', '+91', '9876543454', NULL, NULL, 100, NULL, 2, 4, '0', '0', 'active', '1', '2018-12-30 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '096A6S9ROO2E7ODZ8JNAA8ARHJGOXCA3YV4GW6AV', '2018-11-30 18:32:12', NULL),
(188, 'Amit', 'Verma', 'amitverma+1@singsys.com', '$2y$10$zfxFG3lrg0gkx.e3pyAXuunUAJ5gbIX50XNCDn/0gYFTgYrXVjk82', '+91', '7655433645', NULL, 'Mr', 100, NULL, 3, 2, '0', '0', 'active', '0', '2018-12-30 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'SOKWEA84VRK6CJ7X0K8DZCK0B7JKMYJHSX4Q3E1S', '2018-11-30 18:34:18', NULL),
(189, 'Dec FIRST NAME', 'Dec last', 'chetandeep+dec@singsys.com', '$2y$10$fGyqKciJjfN3Xk0MJBLoO.mRMZK3OQcHTw8h0J8FHKzvtStweNarG', '+65', '15151515177', 'decFIRSTNAMEdeclast', NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2019-01-04 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'kRGmgJz4DXCjC9z3QrqWiHwslELmwkuan3it4JhmmiO43ndQuCInkIwLxLK5', 'ZZA5FSTXPM3VFX8IGW8N1O05BVVQCEHUQYUFILS2', '2018-12-04 17:23:42', NULL),
(190, 'Vivek1', 'Kumar1', 'vivekkumar+t1@singsys.com', '$2y$10$sXCZiTB6TpTscoQRZcV0keWSl4orEnpjJhfQ/nPj9U0DA7uWT85R6', '+65', '2345678987', 'Vivek1Kumar1', 'Abcd', 198, '', 3, 2, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'ItJE14TZ9P0QGwIyF4m4gaSZTtgUvWYpHBs15iAqUTuc5HBUoGPkdAEZjWjF', 'G08F5L9CDXLWEXZNYP3CUMNW1QLBVM8EMIKAUSYS', '2018-12-07 13:16:04', NULL),
(191, 'Vivek2', 'Kumar2', 'vivekkumar+t2@singsys.com', '$2y$10$OJZXiI6Gy8WSJ39.etFRse4Yd4GNsYtzu06KHM6UCfOPFoPdKGJWW', '+65', '2345678907', 'Vivek2Kumar2', 'qwerty1', 198, '', 3, 2, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, 'Bronze', 'JlMlGU1033qbx0naWTQgzVBVSSJMH4UuXoFu9Oxfru7im7X54Qv94Wnfylp0', '7GAONKQF44WVU8ZAXWPHJMKKNUZZ5XFBWL8SR3RX', '2018-12-07 13:17:41', NULL),
(192, 'Vivek3', 'Kumar3', 'vivekkumar+t3@singsys.com', '$2y$10$28PrztQqVJ5szOvBURQMAuOVoX2Rw85yRBj7s31cQsdV5YtaSwZYu', '+65', '3456789875', 'Vivek3Kumar3', 'Omaxe12', 198, '', 3, 2, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, 'Bronze', 'cCEDSQqyUwLOotEMaynPBgrGQvgyUYdB9GUxUADSjSmmSZ2SWju0MT42nAv5', '566BS63PF3SNDI3ON4YI0E877JJQWIMGSRPGOX5G', '2018-12-07 13:18:44', NULL),
(193, 'Vivek4', 'Kumar4', 'vivekkumar+t4@singsys.com', '$2y$10$IC52RQ9LtVfGS.pYwX5xiOBCMJb0XSbpRmFbledhaYDtHo3dHucqG', '+65', '23456765345', 'Vivek4Kumar4', 'Avenue', 198, '', 3, 2, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, 'Bronze', 'ubnlyDF1F41D3ze2bBGACSgsz9EJWblgRcI8wB9KJ9saVGpL9lPTiYp5VpQd', '8DLFHPM384IPLR54GX4ERYM2Q6S62OH1WDRHVHCS', '2018-12-07 13:19:43', NULL),
(194, 'Candidate', 'First', 'vivekkumar+ca1@singsys.com', '$2y$10$U0utwHCNCZQau5F8e0TE8O0cPg1Dg0QZy6w7nDuf5oRpJ2CAwAkgm', '+91', '345678765423', 'CandidateFirst', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'FVzA4uCKGTH2DES01DvomBbqGn1sjNkQgbAGfOS1HlABgCnY0XVrniIuVueC', 'URT8ATA4IMBZPBGU7M7Z8AGIQ50CSWKLSQY45DYS', '2018-12-07 13:21:22', NULL),
(195, 'Candidate2', 'Second', 'vivekkumar+ca2@singsys.com', '$2y$10$nkOwYUpm0wRMtUUiIsBWFuQCNXiOEJZatN3SfimcM/cyBZZkUSvzC', '+65', '23456776789', 'Candidate2Second', NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'oHFG6IZwPopVNfWGmO9sMrYlYgfLjdxDXfwR4QdARQS6hBgEVLa6iRdlVCAH', '4DDNF4ACH5AXQE9R17ERUV8OK13Z5Z8OAKZR5TTK', '2018-12-07 13:22:43', NULL),
(196, 'Candidate3', 'Third', 'vivekkumar+ca3@singsys.com', '$2y$10$c7c3kKdmOK.3rZmr5D3SxeVHRww0X6HmgtkB6gWj.S7uK4twPNqjm', '+65', '345687634554', 'Candidate3third', NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'DfwToLzsM5JpZ5fkEHxwFtj9NoiJLbyGNJEinrFk4ll4MvM2I76mUCGHxscH', 'ESA2QJI7FBO3302EWM6MEF0ILDK1ZO77SWDJFBE3', '2018-12-07 13:24:06', NULL),
(197, 'Candidate4', 'Fourth', 'vivekkumar+ca4@singsys.com', '$2y$10$cwAIxQHiwWdp1ezOO7e.w.M.YysiGGCXa4TXHk6M6q2qWtVo/AmZG', '+65', '23459846876', 'Candidate4fourth', NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2019-01-07 00:00:00', '1', '', NULL, NULL, NULL, NULL, '2fwAgxTorsZNT1P8Xv8z0pPD7cI8onuDvxAgCpJwHjeKRqqtvlagEcWudRfX', '4NRE0TT1Q30707TSX4UHWBR2X2AHFUMO3F93PW55', '2018-12-07 13:26:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_attributes`
--

CREATE TABLE `users_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_attributes`
--

INSERT INTO `users_attributes` (`id`, `user_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 89, 102, '2018-07-12 13:15:00', NULL),
(2, 89, 99, '2018-07-12 13:15:00', NULL),
(29, 59, 123, '2018-08-02 17:11:23', NULL),
(30, 59, 122, '2018-08-02 17:11:23', NULL),
(35, 96, 123, '2018-08-02 20:25:51', NULL),
(36, 96, 112, '2018-08-02 20:25:51', NULL),
(37, 108, 123, '2018-08-03 21:54:10', NULL),
(54, 48, 106, '2018-08-09 15:21:35', NULL),
(55, 48, 43, '2018-08-09 15:21:35', NULL),
(75, 104, 112, '2018-08-10 19:52:22', NULL),
(76, 104, 102, '2018-08-10 19:52:22', NULL),
(89, 121, 123, '2018-08-11 19:10:46', NULL),
(90, 121, 112, '2018-08-11 19:10:46', NULL),
(92, 74, 123, '2018-08-11 20:26:29', NULL),
(93, 74, 112, '2018-08-11 20:26:29', NULL),
(97, 94, 131, '2018-08-31 10:32:20', NULL),
(98, 94, 133, '2018-08-31 10:32:20', NULL),
(99, 94, 137, '2018-08-31 10:32:20', NULL),
(100, 123, 130, '2018-09-01 20:14:23', NULL),
(124, 147, 40, '2018-10-05 19:40:35', NULL),
(125, 147, 31, '2018-10-05 19:40:35', NULL),
(127, 158, 133, '2018-10-05 21:00:08', NULL),
(133, 57, 31, '2018-10-08 13:07:41', NULL),
(134, 57, 130, '2018-10-08 13:07:41', NULL),
(135, 57, 33, '2018-10-08 13:07:41', NULL),
(136, 57, 32, '2018-10-08 13:07:41', NULL),
(137, 57, 131, '2018-10-08 13:07:41', NULL),
(142, 160, 31, '2018-10-08 14:37:09', NULL),
(143, 160, 33, '2018-10-08 14:37:09', NULL),
(144, 93, 131, '2018-10-08 21:49:39', NULL),
(145, 93, 133, '2018-10-08 21:49:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_account_types`
--

CREATE TABLE `user_account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_charge` int(10) UNSIGNED DEFAULT NULL,
  `monthly_charge` int(10) UNSIGNED DEFAULT NULL,
  `browse_profile_limit` bigint(20) NOT NULL DEFAULT '0',
  `job_posting_limit` int(10) UNSIGNED DEFAULT NULL,
  `job_browsing_limit` int(10) UNSIGNED DEFAULT NULL,
  `category` enum('individual','company') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'individual',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `self` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `as_boss` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `as_peer` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `as_subordinate` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `as_customer` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_account_types`
--

INSERT INTO `user_account_types` (`id`, `account_name`, `annual_charge`, `monthly_charge`, `browse_profile_limit`, `job_posting_limit`, `job_browsing_limit`, `category`, `status`, `added_date`, `self`, `as_boss`, `as_peer`, `as_subordinate`, `as_customer`) VALUES
(1, 'Company Paid User', 45, 12, 0, 35, 0, 'company', 'active', '2018-12-05 18:43:09', '1', '1', '1', '1', '1'),
(2, 'Company Free User', 0, 0, 150, NULL, NULL, 'company', 'active', '2018-05-23 19:06:27', '0', '1', '1', '1', '0'),
(3, 'Individual Paid User', 35, 8, 0, 20, 0, 'individual', 'active', '2018-12-05 18:44:47', '1', '1', '1', '1', '1'),
(4, 'Individual Free User', 0, 0, 150, NULL, NULL, 'individual', 'active', '2018-05-23 19:06:13', '0', '1', '1', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_education`
--

CREATE TABLE `user_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_education`
--

INSERT INTO `user_education` (`id`, `user_id`, `country_id`, `certificate`, `institute`, `end_year`, `end_month`, `start_year`, `start_month`, `created_at`, `updated_at`) VALUES
(16, 89, 100, 'B.TECH', 'RRIMT', '2015', 'July', '2011', 'August', '2018-07-12 13:13:46', NULL),
(17, 79, 10, 'Xyz', 'Abcd', '2018', 'February', '2015', 'March', '2018-07-31 16:28:18', NULL),
(19, 96, 80, 'Xyz', 'Abcd', '2017', 'March', '2013', 'July', '2018-07-31 17:18:58', NULL),
(26, 108, 100, 'CCNA', 'RRITM', '2015', 'August', '2005', 'July', '2018-08-02 20:09:54', NULL),
(27, 59, 14, 'preetisingh@singsys.com', 'AKTU', '2015', 'March', '2013', 'September', '2018-08-02 21:09:00', NULL),
(28, 117, 14, 'qwertyui', 'AKTU', '2016', 'June', '2003', 'March', '2018-08-02 21:21:44', NULL),
(30, 147, 100, 'CCNA852', 'AKT', '2009', 'June', '2003', 'August', '2018-10-01 20:58:23', NULL),
(31, 147, 97, 'Seventh DAy', 'High School', '2010', 'September', '2009', 'September', '2018-10-01 21:00:55', '2018-10-01 21:01:19'),
(35, 93, 198, 'B.Tech Degree', 'B.Tech', '2018', 'November', '2015', 'January', '2018-10-04 16:32:10', '2018-10-04 16:39:07'),
(36, 74, 18, 'frgc', 'Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.Sikander Sports Android Application Testing.', '2005', 'February', '2004', 'January', '2018-10-04 21:28:18', '2018-10-04 21:28:46'),
(37, 57, 181, 'Certified Institute', 'ABCD', '2018', 'September', '2016', 'May', '2018-10-08 13:07:24', NULL),
(38, 162, 198, 'Graduation', 'Singapore Technical University', '2004', 'January', '2000', 'February', '2018-11-21 22:13:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_industries`
--

CREATE TABLE `user_industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_logs`
--

CREATE TABLE `user_profile_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profile_logs`
--

INSERT INTO `user_profile_logs` (`id`, `user_id`, `activity`, `created_at`, `updated_at`) VALUES
(67, 2, 'Profile Updated.', '2018-04-23 04:06:54', NULL),
(68, 2, 'Profile Updated.', '2018-04-23 04:07:11', NULL),
(74, 2, 'Profile Updated.', '2018-04-23 04:55:19', NULL),
(75, 50, 'Profile Updated.', '2018-04-23 04:57:34', NULL),
(837, 54, 'Profile Updated.', '2018-04-23 06:24:42', NULL),
(839, 54, 'Profile Updated.', '2018-04-23 06:25:16', NULL),
(1308, 54, 'Profile Updated.', '2018-04-23 09:01:17', NULL),
(1315, 56, 'Profile Updated.', '2018-04-23 10:10:34', NULL),
(1316, 56, 'Profile Updated.', '2018-04-23 10:13:32', NULL),
(1317, 54, 'Rated on 360 profile', '2018-04-23 10:17:44', NULL),
(1320, 56, 'Profile Updated.', '2018-04-23 11:32:53', NULL),
(1321, 56, 'Profile Updated.', '2018-04-23 11:33:42', NULL),
(1322, 50, 'Rated on Clag Technologies profile', '2018-04-24 12:54:21', NULL),
(1323, 57, 'New Strength Added.', '2018-04-24 13:20:57', NULL),
(1324, 57, 'Education Added.', '2018-04-24 13:21:43', NULL),
(1325, 54, 'Rated on 360 profile', '2018-04-24 13:28:11', NULL),
(1330, 54, 'Rated on 360 profile', '2018-04-24 15:18:14', NULL),
(1331, 48, 'Rated on Saurabh Shukla profile', '2018-04-24 15:24:03', NULL),
(1332, 48, 'Rated on Saurabh Shukla profile', '2018-04-24 15:24:48', NULL),
(1333, 48, 'Rated on Saurabh Shukla profile', '2018-04-24 15:25:26', NULL),
(1334, 48, 'Rated on Saurabh Shukla profile', '2018-04-24 15:25:56', NULL),
(1335, 2, 'Rated on HCL Technologies profile', '2018-04-24 15:30:06', NULL),
(1404, 54, 'Rated on 360 profile', '2018-04-24 15:46:44', NULL),
(1405, 57, 'Rated on ANKIT individual profile', '2018-04-24 15:50:26', NULL),
(1426, 54, 'Rated on 360 profile', '2018-04-24 16:52:11', NULL),
(1427, 54, 'Rated on 360 profile', '2018-04-24 16:53:31', NULL),
(1428, 54, 'Rated on 360 profile', '2018-04-24 16:54:47', NULL),
(1429, 57, 'Self Rating Updated.', '2018-04-24 16:55:25', NULL),
(1430, 57, 'Self Rating Updated.', '2018-04-24 16:55:26', NULL),
(1431, 57, 'Self Rating Updated.', '2018-04-24 16:55:26', NULL),
(1432, 57, 'Self Rating Updated.', '2018-04-24 16:55:26', NULL),
(1433, 57, 'Self Rating Updated.', '2018-04-24 16:55:26', NULL),
(1434, 57, 'Self Rating Updated.', '2018-04-24 16:55:26', NULL),
(1435, 57, 'Self Rating Updated.', '2018-04-24 16:55:27', NULL),
(1436, 57, 'Self Rating Updated.', '2018-04-24 16:55:28', NULL),
(1437, 57, 'Self Rating Updated.', '2018-04-24 16:55:28', NULL),
(1438, 57, 'Self Rating Updated.', '2018-04-24 16:55:28', NULL),
(1439, 57, 'Self Rating Updated.', '2018-04-24 16:55:28', NULL),
(1440, 57, 'Self Rating Updated.', '2018-04-24 16:55:28', NULL),
(1441, 57, 'Self Rating Updated.', '2018-04-24 16:55:29', NULL),
(1442, 57, 'Self Rating Updated.', '2018-04-24 16:55:29', NULL),
(1443, 57, 'Self Rating Updated.', '2018-04-24 16:55:30', NULL),
(1444, 57, 'Self Rating Updated.', '2018-04-24 16:55:30', NULL),
(1445, 57, 'Self Rating Updated.', '2018-04-24 16:55:30', NULL),
(1446, 57, 'Self Rating Updated.', '2018-04-24 16:55:30', NULL),
(1447, 57, 'Self Rating Updated.', '2018-04-24 16:55:31', NULL),
(1448, 57, 'Self Rating Updated.', '2018-04-24 16:55:31', NULL),
(1449, 57, 'Self Rating Updated.', '2018-04-24 16:55:31', NULL),
(1450, 57, 'Self Rating Updated.', '2018-04-24 16:55:32', NULL),
(1451, 57, 'Self Rating Updated.', '2018-04-24 16:55:32', NULL),
(1452, 57, 'Self Rating Updated.', '2018-04-24 16:55:33', NULL),
(1453, 57, 'Self Rating Updated.', '2018-04-24 16:55:33', NULL),
(1454, 57, 'Self Rating Updated.', '2018-04-24 16:55:33', NULL),
(1455, 57, 'Self Rating Updated.', '2018-04-24 16:55:34', NULL),
(1456, 57, 'Self Rating Updated.', '2018-04-24 16:55:34', NULL),
(1457, 57, 'Self Rating Updated.', '2018-04-24 16:55:34', NULL),
(1458, 57, 'Self Rating Updated.', '2018-04-24 16:55:34', NULL),
(1459, 57, 'Self Rating Updated.', '2018-04-24 16:55:35', NULL),
(1460, 57, 'Self Rating Updated.', '2018-04-24 16:55:35', NULL),
(1461, 57, 'Self Rating Updated.', '2018-04-24 16:55:36', NULL),
(1462, 57, 'Self Rating Updated.', '2018-04-24 16:55:36', NULL),
(1463, 57, 'Self Rating Updated.', '2018-04-24 16:55:36', NULL),
(1464, 57, 'Self Rating Updated.', '2018-04-24 16:55:37', NULL),
(1465, 57, 'Self Rating Updated.', '2018-04-24 16:55:37', NULL),
(1466, 57, 'Self Rating Updated.', '2018-04-24 16:55:37', NULL),
(1467, 57, 'Self Rating Updated.', '2018-04-24 16:55:38', NULL),
(1468, 57, 'Self Rating Updated.', '2018-04-24 16:55:38', NULL),
(1469, 57, 'Self Rating Updated.', '2018-04-24 16:55:39', NULL),
(1470, 57, 'Self Rating Updated.', '2018-04-24 16:55:39', NULL),
(1471, 57, 'Self Rating Updated.', '2018-04-24 16:55:39', NULL),
(1472, 57, 'Self Rating Updated.', '2018-04-24 16:55:40', NULL),
(1473, 57, 'Self Rating Updated.', '2018-04-24 16:55:40', NULL),
(1474, 57, 'Self Rating Updated.', '2018-04-24 16:55:40', NULL),
(1475, 57, 'Self Rating Updated.', '2018-04-24 16:55:40', NULL),
(1480, 57, 'Self Rating Updated.', '2018-04-24 16:58:19', NULL),
(1481, 57, 'Self Rating Updated.', '2018-04-24 16:58:20', NULL),
(1482, 57, 'Self Rating Updated.', '2018-04-24 16:58:20', NULL),
(1483, 57, 'Self Rating Updated.', '2018-04-24 16:58:20', NULL),
(1484, 57, 'Self Rating Updated.', '2018-04-24 16:58:20', NULL),
(1485, 57, 'Self Rating Updated.', '2018-04-24 16:58:21', NULL),
(1486, 57, 'Self Rating Updated.', '2018-04-24 16:58:21', NULL),
(1487, 57, 'Self Rating Updated.', '2018-04-24 16:58:22', NULL),
(1488, 57, 'Self Rating Updated.', '2018-04-24 16:58:22', NULL),
(1489, 57, 'Self Rating Updated.', '2018-04-24 16:58:22', NULL),
(1490, 57, 'Self Rating Updated.', '2018-04-24 16:58:22', NULL),
(1491, 57, 'Self Rating Updated.', '2018-04-24 16:58:23', NULL),
(1492, 57, 'Self Rating Updated.', '2018-04-24 16:58:23', NULL),
(1493, 57, 'Self Rating Updated.', '2018-04-24 16:58:23', NULL),
(1494, 57, 'Self Rating Updated.', '2018-04-24 16:58:23', NULL),
(1495, 57, 'Self Rating Updated.', '2018-04-24 17:02:47', NULL),
(1496, 57, 'Self Rating Updated.', '2018-04-24 17:08:38', NULL),
(1497, 57, 'Self Rating Updated.', '2018-04-24 17:08:38', NULL),
(1498, 57, 'Self Rating Updated.', '2018-04-24 17:08:38', NULL),
(1499, 57, 'Self Rating Updated.', '2018-04-24 17:08:39', NULL),
(1500, 57, 'Self Rating Updated.', '2018-04-24 17:08:39', NULL),
(1501, 57, 'Self Rating Updated.', '2018-04-24 17:08:39', NULL),
(1502, 57, 'Self Rating Updated.', '2018-04-24 17:08:40', NULL),
(1503, 57, 'Self Rating Updated.', '2018-04-24 17:08:40', NULL),
(1504, 57, 'Self Rating Updated.', '2018-04-24 17:08:40', NULL),
(1505, 57, 'Self Rating Updated.', '2018-04-24 17:08:41', NULL),
(1506, 57, 'Self Rating Updated.', '2018-04-24 17:08:41', NULL),
(1507, 57, 'Self Rating Updated.', '2018-04-24 17:08:41', NULL),
(1508, 57, 'Self Rating Updated.', '2018-04-24 17:08:42', NULL),
(1509, 57, 'Self Rating Updated.', '2018-04-24 17:08:42', NULL),
(1510, 57, 'Self Rating Updated.', '2018-04-24 17:08:42', NULL),
(1511, 57, 'Self Rating Updated.', '2018-04-24 17:08:43', NULL),
(1512, 57, 'Self Rating Updated.', '2018-04-24 17:08:43', NULL),
(1513, 57, 'Self Rating Updated.', '2018-04-24 17:08:43', NULL),
(1514, 57, 'Self Rating Updated.', '2018-04-24 17:08:44', NULL),
(1515, 57, 'Self Rating Updated.', '2018-04-24 17:08:44', NULL),
(1516, 57, 'Self Rating Updated.', '2018-04-24 17:08:45', NULL),
(1517, 57, 'Self Rating Updated.', '2018-04-24 17:08:45', NULL),
(1518, 57, 'Self Rating Updated.', '2018-04-24 17:08:45', NULL),
(1519, 57, 'Self Rating Updated.', '2018-04-24 17:08:46', NULL),
(1520, 57, 'Self Rating Updated.', '2018-04-24 17:08:46', NULL),
(1521, 57, 'Self Rating Updated.', '2018-04-24 17:08:46', NULL),
(1522, 57, 'Self Rating Updated.', '2018-04-24 17:08:59', NULL),
(1523, 57, 'Self Rating Updated.', '2018-04-24 17:08:59', NULL),
(1524, 57, 'Self Rating Updated.', '2018-04-24 17:08:59', NULL),
(1525, 57, 'Self Rating Updated.', '2018-04-24 17:09:00', NULL),
(1526, 57, 'Self Rating Updated.', '2018-04-24 17:09:00', NULL),
(1527, 57, 'Self Rating Updated.', '2018-04-24 17:09:00', NULL),
(1528, 57, 'Self Rating Updated.', '2018-04-24 17:09:01', NULL),
(1529, 57, 'Self Rating Updated.', '2018-04-24 17:09:01', NULL),
(1530, 57, 'Self Rating Updated.', '2018-04-24 17:09:01', NULL),
(1531, 57, 'Self Rating Updated.', '2018-04-24 17:09:01', NULL),
(1532, 57, 'Self Rating Updated.', '2018-04-24 17:09:01', NULL),
(1533, 57, 'Self Rating Updated.', '2018-04-24 17:09:02', NULL),
(1534, 57, 'Self Rating Updated.', '2018-04-24 17:09:03', NULL),
(1535, 57, 'Self Rating Updated.', '2018-04-24 17:09:03', NULL),
(1536, 57, 'Self Rating Updated.', '2018-04-24 17:09:03', NULL),
(1537, 57, 'Self Rating Updated.', '2018-04-24 17:09:04', NULL),
(1538, 57, 'Self Rating Updated.', '2018-04-24 17:09:04', NULL),
(1539, 57, 'Self Rating Updated.', '2018-04-24 17:09:04', NULL),
(1540, 57, 'Self Rating Updated.', '2018-04-24 17:09:05', NULL),
(1541, 57, 'Self Rating Updated.', '2018-04-24 17:09:05', NULL),
(1542, 57, 'Self Rating Updated.', '2018-04-24 17:09:05', NULL),
(1543, 57, 'Self Rating Updated.', '2018-04-24 17:09:05', NULL),
(1544, 57, 'Self Rating Updated.', '2018-04-24 17:09:06', NULL),
(1545, 57, 'Self Rating Updated.', '2018-04-24 17:09:06', NULL),
(1546, 57, 'Self Rating Updated.', '2018-04-24 17:09:07', NULL),
(1547, 57, 'Self Rating Updated.', '2018-04-24 17:09:07', NULL),
(1548, 57, 'Self Rating Updated.', '2018-04-24 17:09:07', NULL),
(1549, 57, 'Self Rating Updated.', '2018-04-24 17:09:07', NULL),
(1550, 57, 'Self Rating Updated.', '2018-04-24 17:09:08', NULL),
(1551, 57, 'Self Rating Updated.', '2018-04-24 17:09:08', NULL),
(1552, 57, 'Self Rating Updated.', '2018-04-24 17:09:09', NULL),
(1553, 57, 'Self Rating Updated.', '2018-04-24 17:09:09', NULL),
(1554, 57, 'Self Rating Updated.', '2018-04-24 17:09:09', NULL),
(1555, 57, 'Self Rating Updated.', '2018-04-24 17:09:10', NULL),
(1556, 57, 'Self Rating Updated.', '2018-04-24 17:09:10', NULL),
(1557, 57, 'Self Rating Updated.', '2018-04-24 17:09:10', NULL),
(1558, 57, 'Self Rating Updated.', '2018-04-24 17:09:11', NULL),
(1559, 57, 'Self Rating Updated.', '2018-04-24 17:09:11', NULL),
(1560, 57, 'Self Rating Updated.', '2018-04-24 17:09:12', NULL),
(1561, 57, 'Self Rating Updated.', '2018-04-24 17:09:12', NULL),
(1562, 57, 'Self Rating Updated.', '2018-04-24 17:09:12', NULL),
(1563, 57, 'Self Rating Updated.', '2018-04-24 17:09:12', NULL),
(1564, 57, 'Self Rating Updated.', '2018-04-24 17:09:13', NULL),
(1565, 57, 'Self Rating Updated.', '2018-04-24 17:09:13', NULL),
(1566, 57, 'Self Rating Updated.', '2018-04-24 17:09:13', NULL),
(1567, 57, 'Self Rating Updated.', '2018-04-24 17:09:14', NULL),
(1568, 57, 'Self Rating Updated.', '2018-04-24 17:09:14', NULL),
(1569, 57, 'Self Rating Updated.', '2018-04-24 17:09:14', NULL),
(1570, 57, 'Self Rating Updated.', '2018-04-24 17:09:14', NULL),
(1571, 57, 'Self Rating Updated.', '2018-04-24 17:09:15', NULL),
(1572, 57, 'Self Rating Updated.', '2018-04-24 17:09:15', NULL),
(1573, 57, 'Self Rating Updated.', '2018-04-24 17:09:16', NULL),
(1574, 57, 'Self Rating Updated.', '2018-04-24 17:09:16', NULL),
(1575, 57, 'Self Rating Updated.', '2018-04-24 17:09:16', NULL),
(1576, 57, 'Self Rating Updated.', '2018-04-24 17:09:17', NULL),
(1577, 57, 'Self Rating Updated.', '2018-04-24 17:09:17', NULL),
(1578, 57, 'Self Rating Updated.', '2018-04-24 17:09:17', NULL),
(1579, 57, 'Self Rating Updated.', '2018-04-24 17:09:18', NULL),
(1580, 57, 'Self Rating Updated.', '2018-04-24 17:09:18', NULL),
(1581, 57, 'Self Rating Updated.', '2018-04-24 17:09:19', NULL),
(1582, 57, 'Self Rating Updated.', '2018-04-24 17:09:19', NULL),
(1583, 57, 'Self Rating Updated.', '2018-04-24 17:09:19', NULL),
(1584, 57, 'Self Rating Updated.', '2018-04-24 17:09:19', NULL),
(1585, 57, 'Self Rating Updated.', '2018-04-24 17:09:19', NULL),
(1586, 57, 'Self Rating Updated.', '2018-04-24 17:09:20', NULL),
(1587, 57, 'Self Rating Updated.', '2018-04-24 17:09:20', NULL),
(1588, 57, 'Self Rating Updated.', '2018-04-24 17:09:21', NULL),
(1589, 57, 'Self Rating Updated.', '2018-04-24 17:09:21', NULL),
(1590, 57, 'Self Rating Updated.', '2018-04-24 17:09:21', NULL),
(1591, 57, 'Self Rating Updated.', '2018-04-24 17:09:22', NULL),
(1592, 57, 'Self Rating Updated.', '2018-04-24 17:09:22', NULL),
(1593, 57, 'Self Rating Updated.', '2018-04-24 17:09:22', NULL),
(1594, 57, 'Self Rating Updated.', '2018-04-24 17:09:23', NULL),
(1595, 57, 'Self Rating Updated.', '2018-04-24 17:09:23', NULL),
(1596, 57, 'Self Rating Updated.', '2018-04-24 17:09:23', NULL),
(1597, 57, 'Self Rating Updated.', '2018-04-24 17:09:24', NULL),
(1598, 57, 'Self Rating Updated.', '2018-04-24 17:09:24', NULL),
(1599, 57, 'Self Rating Updated.', '2018-04-24 17:09:25', NULL),
(1600, 57, 'Self Rating Updated.', '2018-04-24 17:09:25', NULL),
(1601, 57, 'Self Rating Updated.', '2018-04-24 17:09:25', NULL),
(1602, 57, 'Self Rating Updated.', '2018-04-24 17:09:25', NULL),
(1603, 57, 'Self Rating Updated.', '2018-04-24 17:09:25', NULL),
(1604, 57, 'Self Rating Updated.', '2018-04-24 17:09:25', NULL),
(1622, 57, 'Work Experience Updated.', '2018-04-24 18:10:28', NULL),
(1623, 57, 'Rated on ANKIT individual profile', '2018-04-24 18:23:12', NULL),
(1624, 58, 'Profile Updated.', '2018-04-24 18:32:48', NULL),
(1628, 57, 'Rated on ANKIT individual profile', '2018-04-24 19:49:33', NULL),
(1629, 58, 'Profile Updated.', '2018-04-24 19:57:49', NULL),
(1630, 57, 'Self Rating Updated.', '2018-04-24 20:03:54', NULL),
(1631, 57, 'Self Rating Updated.', '2018-04-24 20:04:03', NULL),
(1632, 57, 'Self Rating Updated.', '2018-04-24 20:04:10', NULL),
(1633, 57, 'Self Rating Updated.', '2018-04-24 20:04:14', NULL),
(1634, 57, 'Self Rating Updated.', '2018-04-24 20:04:18', NULL),
(1635, 57, 'Self Rating Updated.', '2018-04-24 20:04:25', NULL),
(1636, 57, 'Self Rating Updated.', '2018-04-24 20:04:35', NULL),
(1637, 57, 'Self Rating Updated.', '2018-04-24 20:04:36', NULL),
(1659, 50, 'Rated on Clag Technologies profile', '2018-04-24 20:32:56', NULL),
(1660, 57, 'Rated on ANKIT individual profile', '2018-04-24 20:37:16', NULL),
(1661, 57, 'Rated on ANKIT individual profile', '2018-04-24 20:38:20', NULL),
(1662, 57, 'Work Experience Updated.', '2018-04-24 20:43:23', NULL),
(1723, 2, 'Rated on HCL Technologies profile', '2018-04-24 21:40:06', NULL),
(1724, 2, 'Rated on HCL Technologies profile', '2018-04-24 22:08:51', NULL),
(1728, 54, 'Profile Updated.', '2018-05-11 13:22:06', NULL),
(1729, 54, 'Profile Updated.', '2018-05-11 13:30:20', NULL),
(1730, 54, 'Profile Updated.', '2018-05-11 13:39:33', NULL),
(1731, 63, 'Profile Updated.', '2018-05-11 14:19:16', NULL),
(1732, 57, 'Rated on ANKIT individual profile', '2018-05-11 15:05:35', NULL),
(1733, 59, 'Rated on Preeti Singh profile', '2018-05-19 21:01:55', NULL),
(1734, 59, 'Rated on Preeti Singh profile', '2018-05-19 21:03:22', NULL),
(1735, 59, 'Rated on Preeti Singh profile', '2018-05-19 21:05:26', NULL),
(1842, 74, 'Profile Updated.', '2018-05-22 12:18:48', NULL),
(1843, 75, 'Profile Updated.', '2018-05-22 12:38:52', NULL),
(1844, 75, 'Profile Updated.', '2018-05-22 12:39:47', NULL),
(1845, 75, 'Profile Updated.', '2018-05-22 12:43:57', NULL),
(1846, 57, 'Rated on ANKIT individual profile', '2018-05-22 13:36:25', NULL),
(1847, 57, 'Work Experience Updated.', '2018-05-22 13:47:48', NULL),
(1848, 74, 'Rated on Individual 1 profile', '2018-05-22 13:50:36', NULL),
(1849, 57, 'Work Experience Updated.', '2018-05-22 14:52:36', NULL),
(1850, 74, 'Rated on Individual 1 profile', '2018-05-22 15:34:21', NULL),
(1851, 74, 'Rated on Individual 1 profile', '2018-05-22 15:41:29', NULL),
(1852, 74, 'New Strength Added.', '2018-05-22 18:58:39', NULL),
(1853, 57, 'Rated on ANKIT individual profile', '2018-05-22 20:01:26', NULL),
(1854, 59, 'Rated on Preeti Singh profile', '2018-05-22 21:08:09', NULL),
(1855, 59, 'Rated on Preeti Singh profile', '2018-05-22 21:09:52', NULL),
(1856, 59, 'Rated on Preeti Singh profile', '2018-05-22 21:11:39', NULL),
(1857, 54, 'Profile Updated.', '2018-05-22 21:19:57', NULL),
(1858, 54, 'Rated on 360 profile', '2018-05-22 21:36:22', NULL),
(1864, 57, 'Strength Information Deleted.', '2018-05-23 13:18:40', NULL),
(1865, 57, 'New Strength Added.', '2018-05-23 13:18:58', NULL),
(1867, 75, 'Profile Updated.', '2018-05-23 13:21:07', NULL),
(1923, 77, 'Work Experience Updated.', '2018-05-23 16:41:26', NULL),
(1924, 74, 'Rated on Individual 1 profile', '2018-05-23 16:53:56', NULL),
(1939, 74, 'Rated on Individual 1 profile', '2018-05-23 17:55:03', NULL),
(1940, 1, 'Rated on  profile', '2018-05-23 18:03:34', NULL),
(1941, 1, 'Rated on  profile', '2018-05-23 18:05:59', NULL),
(1942, 74, 'Rated on Individual 1 profile', '2018-05-23 18:10:50', NULL),
(1943, 57, 'Self Rating Updated.', '2018-05-23 18:17:42', NULL),
(1944, 57, 'Self Rating Updated.', '2018-05-23 18:17:45', NULL),
(1945, 57, 'Self Rating Updated.', '2018-05-23 18:17:45', NULL),
(1946, 57, 'Self Rating Updated.', '2018-05-23 18:17:55', NULL),
(1947, 57, 'Self Rating Updated.', '2018-05-23 18:17:55', NULL),
(1948, 57, 'Self Rating Updated.', '2018-05-23 18:17:55', NULL),
(1949, 57, 'Self Rating Updated.', '2018-05-23 18:17:55', NULL),
(1950, 57, 'Self Rating Updated.', '2018-05-23 18:17:56', NULL),
(1951, 57, 'Self Rating Updated.', '2018-05-23 18:17:56', NULL),
(1952, 57, 'Self Rating Updated.', '2018-05-23 18:17:57', NULL),
(1953, 57, 'Self Rating Updated.', '2018-05-23 18:17:58', NULL),
(1954, 57, 'Self Rating Updated.', '2018-05-23 18:17:58', NULL),
(1955, 57, 'Self Rating Updated.', '2018-05-23 18:17:59', NULL),
(1956, 57, 'Self Rating Updated.', '2018-05-23 18:18:05', NULL),
(1957, 57, 'Self Rating Updated.', '2018-05-23 18:18:05', NULL),
(1958, 57, 'Self Rating Updated.', '2018-05-23 18:18:05', NULL),
(1959, 57, 'Self Rating Updated.', '2018-05-23 18:18:05', NULL),
(1960, 57, 'Self Rating Updated.', '2018-05-23 18:18:43', NULL),
(1961, 57, 'Self Rating Updated.', '2018-05-23 18:18:46', NULL),
(1962, 57, 'Self Rating Updated.', '2018-05-23 18:18:54', NULL),
(1963, 57, 'Self Rating Updated.', '2018-05-23 18:18:55', NULL),
(1964, 57, 'Self Rating Updated.', '2018-05-23 18:19:04', NULL),
(1965, 57, 'Self Rating Updated.', '2018-05-23 18:19:05', NULL),
(1966, 57, 'Self Rating Updated.', '2018-05-23 18:19:08', NULL),
(1967, 57, 'Self Rating Updated.', '2018-05-23 18:19:08', NULL),
(1968, 57, 'Self Rating Updated.', '2018-05-23 18:19:09', NULL),
(1969, 57, 'Self Rating Updated.', '2018-05-23 18:19:38', NULL),
(1970, 57, 'Self Rating Updated.', '2018-05-23 18:19:43', NULL),
(1971, 57, 'Self Rating Updated.', '2018-05-23 18:19:44', NULL),
(1972, 57, 'Self Rating Updated.', '2018-05-23 18:19:45', NULL),
(1973, 57, 'Self Rating Updated.', '2018-05-23 18:19:45', NULL),
(1974, 57, 'Self Rating Updated.', '2018-05-23 18:19:46', NULL),
(1975, 57, 'Self Rating Updated.', '2018-05-23 18:19:47', NULL),
(1976, 57, 'Self Rating Updated.', '2018-05-23 18:19:48', NULL),
(1977, 57, 'Self Rating Updated.', '2018-05-23 18:19:49', NULL),
(1978, 57, 'Self Rating Updated.', '2018-05-23 18:19:49', NULL),
(1979, 57, 'Self Rating Updated.', '2018-05-23 18:19:57', NULL),
(1980, 57, 'Self Rating Updated.', '2018-05-23 18:19:58', NULL),
(1981, 57, 'Self Rating Updated.', '2018-05-23 18:19:59', NULL),
(1982, 74, 'Rated on Individual 1 profile', '2018-05-23 18:20:04', NULL),
(1983, 57, 'Self Rating Updated.', '2018-05-23 18:21:50', NULL),
(1984, 57, 'Self Rating Updated.', '2018-05-23 18:21:56', NULL),
(1985, 57, 'Self Rating Updated.', '2018-05-23 18:21:59', NULL),
(1986, 57, 'Self Rating Updated.', '2018-05-23 18:22:01', NULL),
(1987, 57, 'Self Rating Updated.', '2018-05-23 18:22:04', NULL),
(1988, 57, 'Self Rating Updated.', '2018-05-23 18:22:49', NULL),
(1989, 57, 'Self Rating Updated.', '2018-05-23 18:22:51', NULL),
(1990, 57, 'Self Rating Updated.', '2018-05-23 18:22:54', NULL),
(1991, 74, 'Rated on Individual 1 profile', '2018-05-23 18:23:42', NULL),
(1992, 74, 'Rated on Individual 1 profile', '2018-05-23 18:25:31', NULL),
(2035, 57, 'Self Rating Updated.', '2018-05-23 18:39:08', NULL),
(2036, 57, 'Self Rating Updated.', '2018-05-23 18:39:09', NULL),
(2037, 57, 'Self Rating Updated.', '2018-05-23 18:39:11', NULL),
(2038, 57, 'Self Rating Updated.', '2018-05-23 18:39:14', NULL),
(2039, 57, 'Self Rating Updated.', '2018-05-23 18:39:14', NULL),
(2040, 57, 'Self Rating Updated.', '2018-05-23 18:39:16', NULL),
(2041, 57, 'Self Rating Updated.', '2018-05-23 18:39:17', NULL),
(2042, 57, 'Self Rating Updated.', '2018-05-23 18:39:17', NULL),
(2043, 57, 'Self Rating Updated.', '2018-05-23 18:39:18', NULL),
(2044, 57, 'Self Rating Updated.', '2018-05-23 18:39:19', NULL),
(2054, 79, 'Profile Updated.', '2018-05-23 19:16:44', NULL),
(2055, 79, 'Work Experience Updated.', '2018-05-23 19:18:27', NULL),
(2056, 79, 'Work Experience Updated.', '2018-05-23 19:19:02', NULL),
(2062, 59, 'Rated on Preeti Singh profile', '2018-05-23 20:40:25', NULL),
(2063, 2, 'Rated on HCL Technologies profile', '2018-05-23 20:53:52', NULL),
(2066, 75, 'Rated on Dubey & Sons profile', '2018-05-23 21:50:22', NULL),
(2067, 59, 'Rated on Preeti Singh profile', '2018-05-31 21:45:21', NULL),
(2069, 48, 'Rated on Saurabh Shukla profile', '2018-06-01 20:35:58', NULL),
(2070, 59, 'Rated on Preeti Singh profile', '2018-06-01 20:38:12', NULL),
(2072, 82, 'Profile Updated.', '2018-06-02 14:06:40', NULL),
(2073, 82, 'Profile Updated.', '2018-06-02 14:07:25', NULL),
(2074, 82, 'Profile Updated.', '2018-06-02 14:32:03', NULL),
(2075, 82, 'Profile Updated.', '2018-06-02 14:32:43', NULL),
(2076, 57, 'Rated on ANKIT individual profile', '2018-06-02 14:51:43', NULL),
(2077, 74, 'Rated on Individual 1 profile', '2018-06-02 15:05:48', NULL),
(2078, 57, 'Rated on ANKIT individual profile', '2018-06-02 15:07:16', NULL),
(2079, 81, 'Rated on Manish Jaiswal profile', '2018-06-02 15:15:58', NULL),
(2080, 77, 'Rated on Chanchal Sharma profile', '2018-06-02 15:18:53', NULL),
(2081, 77, 'Rated on Chanchal Sharma profile', '2018-06-02 15:27:50', NULL),
(2082, 74, 'Rated on Individual 1 profile', '2018-06-02 15:31:14', NULL),
(2083, 77, 'Rated on Chanchal Sharma profile', '2018-06-02 15:34:10', NULL),
(2084, 81, 'Rated on Manish Jaiswal profile', '2018-06-02 15:39:35', NULL),
(2085, 63, 'Rated on Satish Pandey profile', '2018-06-02 15:43:49', NULL),
(2086, 44, 'Work Experience Updated.', '2018-06-02 15:52:39', NULL),
(2087, 44, 'Rated on shivam gupta profile', '2018-06-02 15:54:24', NULL),
(2088, 36, 'Work Experience Deleted.', '2018-06-02 16:12:06', NULL),
(2089, 36, 'Work Experience Updated.', '2018-06-02 16:12:33', NULL),
(2090, 36, 'Rated on Sultan 1 Khan profile', '2018-06-02 16:14:27', NULL),
(2091, 36, 'Work Experience Updated.', '2018-06-02 16:28:16', NULL),
(2093, 82, 'Profile Updated.', '2018-06-02 18:24:05', NULL),
(2094, 83, 'Work Experience Updated.', '2018-06-02 18:41:11', NULL),
(2095, 74, 'Rated on Individual 1 profile', '2018-06-02 18:42:37', NULL),
(2096, 83, 'Profile Updated.', '2018-06-02 18:43:32', NULL),
(2097, 57, 'Profile Updated.', '2018-06-02 19:41:22', NULL),
(2098, 83, 'Profile Updated.', '2018-06-02 19:46:21', NULL),
(2101, 59, 'Rated on Preeti Singh profile', '2018-06-04 13:32:35', NULL),
(2102, 59, 'Rated on Preeti Singh profile', '2018-06-04 13:34:00', NULL),
(2105, 59, 'Rated on Preeti Singh profile', '2018-06-04 13:38:06', NULL),
(2106, 81, 'Work Experience Updated.', '2018-06-04 13:52:32', NULL),
(2107, 57, 'Rated on ANKIT individual profile', '2018-06-04 13:54:20', NULL),
(2108, 59, 'Rated on Preeti Singh profile', '2018-06-04 14:55:11', NULL),
(2109, 83, 'Rated on Manvendra Singh profile', '2018-06-04 15:20:19', NULL),
(2110, 63, 'Rated on Satish Pandey profile', '2018-06-04 15:24:28', NULL),
(2111, 74, 'Rated on Individual 1 profile', '2018-06-04 15:30:59', NULL),
(2112, 63, 'Work Experience Updated.', '2018-06-04 15:47:18', NULL),
(2113, 57, 'Rated on ANKIT individual profile', '2018-06-05 13:44:10', NULL),
(2114, 81, 'Profile Updated.', '2018-06-05 13:50:53', NULL),
(2115, 74, 'Rated on Individual 1 profile', '2018-06-05 14:09:35', NULL),
(2116, 59, 'Rated on Preeti Singh profile', '2018-06-05 17:17:19', NULL),
(2117, 59, 'Rated on Preeti Singh profile', '2018-06-05 17:17:58', NULL),
(2118, 57, 'Rated on ANKIT individual profile', '2018-06-05 17:22:50', NULL),
(2119, 57, 'Rated on ANKIT individual profile', '2018-06-05 17:23:19', NULL),
(2120, 57, 'Rated on ANKIT individual profile', '2018-06-05 17:23:46', NULL),
(2121, 81, 'Rated on Manish Jaiswal profile', '2018-06-05 17:41:40', NULL),
(2122, 81, 'Rated on Manish Jaiswal profile', '2018-06-05 17:43:25', NULL),
(2123, 39, 'Rated on individual individual profile', '2018-06-05 17:57:52', NULL),
(2128, 74, 'Rated on Individual 1 profile', '2018-06-05 18:57:56', NULL),
(2129, 57, 'Rated on ANKIT individual profile', '2018-06-05 19:03:30', NULL),
(2130, 57, 'Rated on ANKIT individual profile', '2018-06-05 19:13:26', NULL),
(2131, 59, 'Rated on Preeti Singh profile', '2018-06-05 19:14:11', NULL),
(2132, 59, 'Rated on Preeti Singh profile', '2018-06-05 19:14:59', NULL),
(2140, 57, 'Rated on ANKIT individual profile', '2018-06-12 18:01:18', NULL),
(2141, 57, 'Rated on ANKIT individual profile', '2018-06-12 18:05:22', NULL),
(2142, 57, 'Rated on ANKIT individual profile', '2018-06-12 18:10:52', NULL),
(2143, 57, 'Rated on ANKIT individual profile', '2018-06-12 18:16:01', NULL),
(2144, 57, 'Rated on ANKIT individual profile', '2018-06-12 18:19:27', NULL),
(2145, 74, 'Rated on Individual 1 profile', '2018-06-12 18:22:52', NULL),
(2146, 81, 'Rated on Manish Jaiswal profile', '2018-06-12 18:25:52', NULL),
(2147, 83, 'Rated on Manvendra Singh profile', '2018-06-12 18:48:02', NULL),
(2148, 79, 'Rated on Vivek kumar profile', '2018-06-12 18:51:02', NULL),
(2149, 79, 'Rated on Vivek kumar profile', '2018-06-12 18:51:22', NULL),
(2150, 81, 'Rated on Manish Jaiswal profile', '2018-06-12 18:57:39', NULL),
(2151, 79, 'Rated on Vivek kumar profile', '2018-06-12 18:58:28', NULL),
(2152, 81, 'Rated on Manish Jaiswal profile', '2018-06-12 19:04:26', NULL),
(2153, 57, 'Rated on ANKIT individual profile', '2018-06-12 19:10:55', NULL),
(2154, 77, 'Rated on Chanchal Sharma profile', '2018-06-12 19:12:00', NULL),
(2155, 81, 'Rated on Manish Jaiswal profile', '2018-06-12 19:13:35', NULL),
(2156, 83, 'Rated on Manvendra Singh profile', '2018-06-12 19:14:47', NULL),
(2157, 83, 'Rated on Manvendra Singh profile', '2018-06-12 19:18:35', NULL),
(2158, 74, 'Rated on Individual 1 profile', '2018-06-12 19:21:59', NULL),
(2159, 57, 'Rated on ANKIT individual profile', '2018-06-12 19:23:35', NULL),
(2160, 77, 'Rated on Chanchal Sharma profile', '2018-06-12 19:30:00', NULL),
(2161, 77, 'Rated on Chanchal Sharma profile', '2018-06-12 19:33:29', NULL),
(2164, 57, 'Rated on ANKIT individual profile', '2018-06-12 20:44:58', NULL),
(2165, 77, 'Rated on Chanchal Sharma profile', '2018-06-12 20:47:07', NULL),
(2166, 83, 'Rated on Manvendra Singh profile', '2018-06-12 20:48:28', NULL),
(2167, 83, 'Rated on Manvendra Singh profile', '2018-06-12 20:53:14', NULL),
(2168, 79, 'Rated on Vivek kumar profile', '2018-06-12 21:03:10', NULL),
(2169, 57, 'Rated on ANKIT individual profile', '2018-06-12 21:03:12', NULL),
(2170, 79, 'Rated on Vivek kumar profile', '2018-06-12 21:05:58', NULL),
(2171, 77, 'Rated on Chanchal Sharma profile', '2018-06-12 21:06:38', NULL),
(2172, 77, 'Rated on Chanchal Sharma profile', '2018-06-12 21:08:36', NULL),
(2173, 57, 'Rated on ANKIT individual profile', '2018-06-12 21:12:03', NULL),
(2174, 57, 'Rated on ANKIT individual profile', '2018-06-12 21:29:02', NULL),
(2176, 83, 'Rated on Manvendra Singh profile', '2018-06-12 22:28:49', NULL),
(2178, 77, 'Rated on Chanchal Sharma profile', '2018-06-13 16:50:32', NULL),
(2180, 57, 'Work Experience Updated.', '2018-06-19 14:09:04', NULL),
(2181, 81, 'Work Experience Updated.', '2018-06-19 14:11:10', NULL),
(2182, 83, 'Work Experience Updated.', '2018-06-19 14:11:33', NULL),
(2183, 57, 'Work Experience Updated.', '2018-06-19 14:17:12', NULL),
(2184, 81, 'Work Experience Updated.', '2018-06-19 14:23:08', NULL),
(2185, 57, 'Rated on ANKIT individual profile', '2018-06-19 17:05:33', NULL),
(2186, 83, 'Rated on Manvendra Singh profile', '2018-06-19 17:47:42', NULL),
(2187, 81, 'Rated on Manish Jaiswal profile', '2018-06-19 17:55:22', NULL),
(2188, 39, 'Work Experience Updated.', '2018-06-19 17:59:06', NULL),
(2189, 39, 'Rated on individual individual profile', '2018-06-19 18:06:43', NULL),
(2190, 39, 'Rated on individual individual profile', '2018-06-19 18:07:44', NULL),
(2191, 39, 'Rated on individual individual profile', '2018-06-19 18:16:59', NULL),
(2192, 83, 'Rated on Manvendra Singh profile', '2018-06-19 18:21:04', NULL),
(2193, 74, 'Rated on Individual 1 profile', '2018-06-19 18:24:48', NULL),
(2194, 77, 'Rated on Chanchal Sharma profile', '2018-06-19 18:33:36', NULL),
(2195, 39, 'Work Experience Updated.', '2018-06-19 19:15:58', NULL),
(2196, 57, 'Rated on ANKIT individual profile', '2018-06-19 19:58:15', NULL),
(2197, 77, 'Rated on Chanchal Sharma profile', '2018-06-19 20:03:43', NULL),
(2198, 57, 'Rated on ANKIT individual profile', '2018-06-19 20:09:59', NULL),
(2199, 83, 'Rated on Manvendra Singh profile', '2018-06-19 20:45:49', NULL),
(2200, 81, 'Rated on Manish Jaiswal profile', '2018-06-19 20:47:25', NULL),
(2201, 57, 'Rated on ANKIT individual profile', '2018-06-19 20:58:03', NULL),
(2202, 59, 'Rated on Preeti Singh profile', '2018-06-19 21:32:51', NULL),
(2203, 59, 'Rated on Preeti Singh profile', '2018-06-19 22:12:03', NULL),
(2204, 59, 'Rated on Preeti Singh profile', '2018-06-19 22:16:04', NULL),
(2205, 59, 'Rated on Preeti Singh profile', '2018-06-19 22:17:05', NULL),
(2206, 59, 'Rated on Preeti Singh profile', '2018-06-19 22:17:43', NULL),
(2208, 59, 'Rated on Preeti Singh profile', '2018-06-19 22:18:53', NULL),
(2209, 59, 'Rated on Preeti Singh profile', '2018-06-19 22:19:32', NULL),
(2211, 57, 'Rated on ANKIT individual profile', '2018-06-19 22:28:49', NULL),
(2212, 39, 'Rated on individual individual profile', '2018-06-19 22:30:39', NULL),
(2213, 57, 'Rated on ANKIT individual profile', '2018-06-19 22:34:59', NULL),
(2214, 83, 'Rated on Manvendra Singh profile', '2018-06-19 22:36:26', NULL),
(2215, 54, 'Profile Updated.', '2018-06-19 22:43:53', NULL),
(2216, 54, 'Profile Updated.', '2018-06-19 22:44:15', NULL),
(2217, 57, 'New Work Experience Added.', '2018-06-20 13:33:08', NULL),
(2218, 57, 'Rated on ANKIT individual profile', '2018-06-20 13:35:03', NULL),
(2221, 57, 'Rated on ANKIT individual profile', '2018-06-20 17:02:48', NULL),
(2222, 57, 'Rated on ANKIT individual profile', '2018-06-20 17:22:31', NULL),
(2223, 57, 'Rated on ANKIT individual profile', '2018-06-20 18:33:26', NULL),
(2224, 59, 'Rated on Preeti Singh profile', '2018-06-20 20:38:52', NULL),
(2225, 39, 'Rated on individual individual profile', '2018-06-20 20:47:05', NULL),
(2226, 81, 'Rated on Manish Jaiswal profile', '2018-06-20 21:04:15', NULL),
(2227, 77, 'Rated on Chanchal Sharma profile', '2018-06-20 21:08:41', NULL),
(2228, 74, 'Rated on Individual 1 profile', '2018-06-20 21:35:51', NULL),
(2229, 74, 'Rated on Individual 1 profile', '2018-06-20 21:37:41', NULL),
(2230, 48, 'Work Experience Updated.', '2018-06-22 01:09:22', NULL),
(2231, 57, 'Rated on ANKIT individual profile', '2018-06-25 14:53:46', NULL),
(2232, 57, 'Work Experience Updated.', '2018-06-25 14:58:12', NULL),
(2233, 57, 'Work Experience Deleted.', '2018-06-25 14:58:25', NULL),
(2234, 57, 'New Strength Added.', '2018-06-25 14:58:52', NULL),
(2235, 57, 'New Work Experience Added.', '2018-06-25 16:53:03', NULL),
(2236, 57, 'Work Experience Deleted.', '2018-06-25 16:53:34', NULL),
(2237, 89, 'Work Experience Updated.', '2018-07-12 13:12:33', NULL),
(2238, 89, 'New Strength Added.', '2018-07-12 13:12:55', NULL),
(2239, 89, 'Education Added.', '2018-07-12 13:13:46', NULL),
(2240, 89, 'Profile Updated.', '2018-07-12 13:15:00', NULL),
(2241, 89, 'Work Experience Updated.', '2018-07-12 13:18:57', NULL),
(2242, 57, 'Rated on ANKIT individual profile', '2018-07-12 15:40:57', NULL),
(2243, 74, 'Rated on Individual 1 profile', '2018-07-12 15:42:30', NULL),
(2244, 57, 'Work Experience Updated.', '2018-07-12 15:50:15', NULL),
(2245, 57, 'Work Experience Updated.', '2018-07-12 19:46:32', NULL),
(2246, 83, 'Work Experience Updated.', '2018-07-12 20:20:23', NULL),
(2247, 83, 'Work Experience Updated.', '2018-07-12 20:20:58', NULL),
(2248, 83, 'Work Experience Updated.', '2018-07-12 20:21:43', NULL),
(2249, 59, 'Rated on Preeti Singh profile', '2018-07-27 20:18:22', NULL),
(2250, 93, 'Profile Updated.', '2018-07-28 20:48:33', NULL),
(2251, 93, 'Profile Updated.', '2018-07-28 20:49:12', NULL),
(2252, 95, 'Rated on Chetan Deep Singh profile', '2018-07-28 22:35:44', NULL),
(2253, 95, 'Rated on Chetan Deep Singh profile', '2018-07-28 22:36:35', NULL),
(2255, 79, 'New Strength Added.', '2018-07-31 16:25:48', NULL),
(2256, 79, 'Work Experience Deleted.', '2018-07-31 16:26:18', NULL),
(2257, 79, 'Education Added.', '2018-07-31 16:28:18', NULL),
(2262, 96, 'Education Added.', '2018-07-31 17:18:58', NULL),
(2263, 96, 'Profile Updated.', '2018-07-31 17:27:48', NULL),
(2264, 96, 'New Strength Added.', '2018-07-31 17:41:50', NULL),
(2265, 74, 'Profile Updated.', '2018-07-31 17:42:45', NULL),
(2266, 96, 'Profile Updated.', '2018-07-31 18:21:10', NULL),
(2267, 57, 'Profile Updated.', '2018-07-31 18:40:27', NULL),
(2268, 96, 'Profile Updated.', '2018-07-31 18:41:18', NULL),
(2269, 74, 'Profile Updated.', '2018-07-31 21:45:22', NULL),
(2271, 74, 'Work Experience Updated.', '2018-08-01 14:45:26', NULL),
(2272, 74, 'Work Experience Updated.', '2018-08-01 14:45:44', NULL),
(2273, 74, 'Rated on Individual 1 profile', '2018-08-01 14:47:37', NULL),
(2274, 74, 'Rated on Individual 1 profile', '2018-08-01 15:02:14', NULL),
(2277, 74, 'Rated on Individual 1 profile', '2018-08-01 15:42:35', NULL),
(2278, 96, 'Rated on Ankit Job profile', '2018-08-01 16:49:00', NULL),
(2279, 96, 'Profile Updated.', '2018-08-01 18:26:42', NULL),
(2280, 108, 'Profile Updated.', '2018-08-01 18:53:48', NULL),
(2281, 108, 'Profile Updated.', '2018-08-01 18:54:03', NULL),
(2282, 108, 'New Strength Added.', '2018-08-01 18:56:55', NULL),
(2283, 108, 'Education Added.', '2018-08-01 18:58:47', NULL),
(2284, 108, 'Profile Updated.', '2018-08-01 19:15:24', NULL),
(2285, 108, 'Work Experience Updated.', '2018-08-01 21:06:10', NULL),
(2286, 108, 'Work Experience Updated.', '2018-08-01 21:06:22', NULL),
(2287, 108, 'Work Experience Updated.', '2018-08-01 21:07:45', NULL),
(2288, 59, 'Profile Updated.', '2018-08-02 15:34:36', NULL),
(2289, 59, 'New Strength Added.', '2018-08-02 15:34:51', NULL),
(2290, 59, 'Profile Updated.', '2018-08-02 15:35:09', NULL),
(2291, 59, 'Education Added.', '2018-08-02 15:35:54', NULL),
(2292, 59, 'Work Experience Deleted.', '2018-08-02 15:36:16', NULL),
(2293, 59, 'New Work Experience Added.', '2018-08-02 15:36:43', NULL),
(2294, 59, 'Education Information Deleted.', '2018-08-02 15:37:00', NULL),
(2295, 59, 'Work Experience Deleted.', '2018-08-02 15:37:03', NULL),
(2296, 59, 'Education Added.', '2018-08-02 15:37:30', NULL),
(2297, 59, 'Education Added.', '2018-08-02 17:05:53', NULL),
(2298, 59, 'New Work Experience Added.', '2018-08-02 17:06:25', NULL),
(2299, 59, 'Education Information Deleted.', '2018-08-02 17:06:59', NULL),
(2300, 59, 'Education Information Deleted.', '2018-08-02 17:07:03', NULL),
(2301, 59, 'Work Experience Deleted.', '2018-08-02 17:07:07', NULL),
(2302, 59, 'Strength Information Deleted.', '2018-08-02 17:07:15', NULL),
(2303, 59, 'Profile Updated.', '2018-08-02 17:08:41', NULL),
(2304, 59, 'New Work Experience Added.', '2018-08-02 17:09:33', NULL),
(2305, 59, 'Education Added.', '2018-08-02 17:10:07', NULL),
(2306, 59, 'New Strength Added.', '2018-08-02 17:11:02', NULL),
(2307, 59, 'Profile Updated.', '2018-08-02 17:11:23', NULL),
(2308, 59, 'New Strength Added.', '2018-08-02 17:13:24', NULL),
(2309, 59, 'Work Experience Deleted.', '2018-08-02 17:16:00', NULL),
(2310, 59, 'Education Information Deleted.', '2018-08-02 17:16:05', NULL),
(2311, 59, 'Strength Information Deleted.', '2018-08-02 17:16:12', NULL),
(2312, 59, 'Strength Information Deleted.', '2018-08-02 17:16:15', NULL),
(2313, 57, 'Profile Updated.', '2018-08-02 18:07:01', NULL),
(2314, 57, 'Profile Updated.', '2018-08-02 18:13:35', NULL),
(2315, 108, 'Education Information Deleted.', '2018-08-02 20:04:07', NULL),
(2316, 108, 'Work Experience Deleted.', '2018-08-02 20:04:24', NULL),
(2317, 108, 'Strength Information Deleted.', '2018-08-02 20:04:42', NULL),
(2318, 108, 'New Strength Added.', '2018-08-02 20:04:54', NULL),
(2319, 108, 'New Work Experience Added.', '2018-08-02 20:08:24', NULL),
(2320, 108, 'Education Added.', '2018-08-02 20:09:54', NULL),
(2321, 96, 'Profile Updated.', '2018-08-02 20:25:51', NULL),
(2322, 108, 'Rated on Ankit Analytics profile', '2018-08-02 20:54:56', NULL),
(2323, 108, 'Rated on Ankit Analytics profile', '2018-08-02 20:55:38', NULL),
(2324, 59, 'Rated on Preeti Singh profile', '2018-08-02 20:58:58', NULL),
(2325, 59, 'New Work Experience Added.', '2018-08-02 21:08:19', NULL),
(2326, 59, 'New Strength Added.', '2018-08-02 21:08:34', NULL),
(2327, 59, 'Education Added.', '2018-08-02 21:09:00', NULL),
(2328, 117, 'New Work Experience Added.', '2018-08-02 21:20:55', NULL),
(2329, 117, 'New Strength Added.', '2018-08-02 21:21:21', NULL),
(2330, 117, 'Education Added.', '2018-08-02 21:21:44', NULL),
(2331, 108, 'Work Experience Updated.', '2018-08-02 21:44:06', NULL),
(2332, 108, 'Profile Updated.', '2018-08-03 21:54:10', NULL),
(2333, 48, 'Rated on Saurabh Shukla profile', '2018-08-04 14:55:26', NULL),
(2334, 48, 'Rated on Saurabh Shukla profile', '2018-08-04 14:56:31', NULL),
(2335, 48, 'Rated on Saurabh Shukla profile', '2018-08-04 14:57:12', NULL),
(2336, 48, 'Rated on Saurabh Shukla profile', '2018-08-04 15:00:56', NULL),
(2337, 94, 'Profile Updated.', '2018-08-04 15:18:39', NULL),
(2338, 48, 'Profile Updated.', '2018-08-04 15:21:25', NULL),
(2340, 93, 'Rated on Raveena Nigam profile', '2018-08-08 13:23:39', NULL),
(2341, 121, 'Profile Updated.', '2018-08-09 14:09:39', NULL),
(2342, 121, 'Profile Updated.', '2018-08-09 14:10:32', NULL),
(2343, 121, 'New Strength Added.', '2018-08-09 14:11:27', NULL),
(2345, 57, 'Profile Updated.', '2018-08-09 14:22:48', NULL),
(2346, 74, 'Profile Updated.', '2018-08-09 14:34:21', NULL),
(2347, 74, 'Profile Updated.', '2018-08-09 14:35:43', NULL),
(2348, 74, 'Profile Updated.', '2018-08-09 14:36:50', NULL),
(2349, 74, 'Profile Updated.', '2018-08-09 14:51:59', NULL),
(2350, 48, 'Profile Updated.', '2018-08-09 15:21:35', NULL),
(2351, 96, 'Work Experience Updated.', '2018-08-09 15:29:58', NULL),
(2352, 104, 'Work Experience Updated.', '2018-08-09 16:15:01', NULL),
(2353, 104, 'Work Experience Updated.', '2018-08-09 16:40:09', NULL),
(2354, 104, 'Work Experience Updated.', '2018-08-09 16:40:49', NULL),
(2355, 104, 'Work Experience Updated.', '2018-08-09 17:48:16', NULL),
(2356, 104, 'Work Experience Updated.', '2018-08-09 17:49:22', NULL),
(2358, 104, 'Profile Updated.', '2018-08-09 18:05:02', NULL),
(2359, 57, 'Profile Updated.', '2018-08-09 18:06:05', NULL),
(2360, 74, 'Profile Updated.', '2018-08-09 18:06:36', NULL),
(2361, 104, 'Profile Updated.', '2018-08-09 18:12:59', NULL),
(2362, 104, 'Profile Updated.', '2018-08-09 18:14:00', NULL),
(2363, 104, 'Profile Updated.', '2018-08-09 18:17:17', NULL),
(2364, 104, 'Profile Updated.', '2018-08-09 18:22:16', NULL),
(2365, 104, 'Rated on vivek kumar profile', '2018-08-09 18:43:33', NULL),
(2366, 104, 'Rated on vivek kumar profile', '2018-08-09 18:46:20', NULL),
(2367, 104, 'Rated on vivek kumar profile', '2018-08-09 18:49:31', NULL),
(2368, 104, 'Rated on vivek kumar profile', '2018-08-09 18:51:18', NULL),
(2369, 104, 'Rated on vivek kumar profile', '2018-08-09 18:51:54', NULL),
(2370, 104, 'Rated on vivek kumar profile', '2018-08-09 18:55:29', NULL),
(2371, 104, 'Rated on vivek kumar profile', '2018-08-09 18:58:44', NULL),
(2372, 104, 'Rated on vivek kumar profile', '2018-08-09 19:19:16', NULL),
(2373, 104, 'Rated on vivek kumar profile', '2018-08-09 19:20:25', NULL),
(2374, 104, 'Rated on vivek kumar profile', '2018-08-09 19:21:39', NULL),
(2375, 104, 'Rated on vivek kumar profile', '2018-08-09 19:22:08', NULL),
(2376, 104, 'Rated on vivek kumar profile', '2018-08-09 19:22:40', NULL),
(2377, 104, 'Profile Updated.', '2018-08-09 19:25:01', NULL),
(2378, 104, 'Profile Updated.', '2018-08-09 19:25:19', NULL),
(2379, 104, 'Rated on vivek kumar profile', '2018-08-09 19:28:12', NULL),
(2380, 104, 'Rated on vivek kumar profile', '2018-08-09 19:29:51', NULL),
(2381, 104, 'Rated on vivek kumar profile', '2018-08-09 19:38:21', NULL),
(2382, 57, 'Rated on ANKIT individual profile', '2018-08-09 20:05:26', NULL),
(2383, 74, 'Rated on Individual 1 profile', '2018-08-09 20:08:08', NULL),
(2384, 104, 'Rated on vivek kumar profile', '2018-08-09 20:10:18', NULL),
(2385, 104, 'Rated on vivek kumar profile', '2018-08-09 20:22:34', NULL),
(2386, 74, 'Rated on Individual 1 profile', '2018-08-09 20:24:37', NULL),
(2387, 121, 'Rated on Ankit FreeUser profile', '2018-08-09 20:39:11', NULL),
(2388, 121, 'Rated on Ankit FreeUser profile', '2018-08-09 20:42:39', NULL),
(2389, 57, 'Rated on ANKIT individual profile', '2018-08-09 20:44:52', NULL),
(2390, 74, 'Work Experience Updated.', '2018-08-09 20:47:54', NULL),
(2391, 74, 'Rated on Individual 1 profile', '2018-08-09 20:49:06', NULL),
(2392, 121, 'Rated on Ankit FreeUser profile', '2018-08-09 20:58:19', NULL),
(2393, 57, 'Rated on ANKIT individual profile', '2018-08-09 21:02:17', NULL),
(2394, 121, 'Rated on Ankit FreeUser profile', '2018-08-09 21:02:37', NULL),
(2403, 121, 'Work Experience Updated.', '2018-08-10 14:56:01', NULL),
(2404, 121, 'Work Experience Updated.', '2018-08-10 14:58:45', NULL),
(2405, 121, 'Work Experience Updated.', '2018-08-10 15:02:59', NULL),
(2406, 57, 'Work Experience Updated.', '2018-08-10 15:04:06', NULL),
(2407, 57, 'Work Experience Updated.', '2018-08-10 15:05:38', NULL),
(2408, 74, 'Work Experience Updated.', '2018-08-10 15:08:19', NULL),
(2409, 121, 'Profile Updated.', '2018-08-10 15:15:10', NULL),
(2410, 121, 'Profile Updated.', '2018-08-10 15:22:08', NULL),
(2411, 74, 'Profile Updated.', '2018-08-10 15:22:38', NULL),
(2412, 74, 'Profile Updated.', '2018-08-10 15:25:25', NULL),
(2413, 93, 'Rated on Raveena Nigam profile', '2018-08-10 17:01:56', NULL),
(2414, 93, 'Rated on Raveena Nigam profile', '2018-08-10 17:02:28', NULL),
(2415, 93, 'Rated on Raveena Nigam profile', '2018-08-10 17:03:24', NULL),
(2416, 104, 'Profile Updated.', '2018-08-10 17:13:09', NULL),
(2423, 121, 'Work Experience Updated.', '2018-08-10 19:15:27', NULL),
(2424, 104, 'Profile Updated.', '2018-08-10 19:52:22', NULL),
(2425, 74, 'Profile Updated.', '2018-08-10 19:53:00', NULL),
(2426, 104, 'Work Experience Updated.', '2018-08-10 20:13:10', NULL),
(2427, 48, 'Rated on Saurabh Shukla profile', '2018-08-10 20:39:48', NULL),
(2428, 48, 'New Work Experience Added.', '2018-08-10 20:40:36', NULL),
(2429, 48, 'Rated on Saurabh Shukla profile', '2018-08-10 20:41:32', NULL),
(2430, 48, 'Rated on Saurabh Shukla profile', '2018-08-10 20:43:15', NULL),
(2431, 48, 'Rated on Saurabh Shukla profile', '2018-08-10 20:44:08', NULL),
(2432, 93, 'Profile Updated.', '2018-08-10 21:28:31', NULL),
(2433, 93, 'Profile Updated.', '2018-08-10 21:30:15', NULL),
(2434, 93, 'Profile Updated.', '2018-08-10 21:51:15', NULL),
(2435, 93, 'Work Experience Updated.', '2018-08-11 12:02:48', NULL),
(2436, 74, 'New Strength Added.', '2018-08-11 12:48:51', NULL),
(2437, 57, 'Rated on ANKIT individual profile', '2018-08-11 13:10:37', NULL),
(2438, 74, 'Rated on Individual 1 profile', '2018-08-11 13:13:48', NULL),
(2439, 57, 'Rated on ANKIT individual profile', '2018-08-11 13:18:17', NULL),
(2440, 121, 'Rated on Ankit FreeUser profile', '2018-08-11 13:25:29', NULL),
(2441, 121, 'Work Experience Updated.', '2018-08-11 13:32:30', NULL),
(2442, 57, 'Rated on ANKIT individual profile', '2018-08-11 13:43:03', NULL),
(2443, 74, 'Rated on Individual 1 profile', '2018-08-11 13:46:18', NULL),
(2444, 74, 'Rated on Individual 1 profile', '2018-08-11 14:04:06', NULL),
(2445, 121, 'Rated on Ankit FreeUser profile', '2018-08-11 14:06:18', NULL),
(2446, 121, 'Rated on Ankit FreeUser profile', '2018-08-11 14:07:17', NULL),
(2447, 74, 'Rated on Individual 1 profile', '2018-08-11 14:09:09', NULL),
(2448, 121, 'Rated on Ankit FreeUser profile', '2018-08-11 14:10:13', NULL),
(2449, 57, 'Rated on ANKIT individual profile', '2018-08-11 14:11:43', NULL),
(2450, 96, 'Rated on Ankit Job profile', '2018-08-11 14:13:59', NULL),
(2451, 74, 'Work Experience Updated.', '2018-08-11 14:15:11', NULL),
(2452, 57, 'Rated on ANKIT individual profile', '2018-08-11 14:15:53', NULL),
(2453, 57, 'Rated on ANKIT individual profile', '2018-08-11 14:19:44', NULL),
(2454, 54, 'Profile Updated.', '2018-08-11 14:50:06', NULL),
(2455, 93, 'Rated on Raveena Nigam profile', '2018-08-11 15:53:28', NULL),
(2456, 93, 'Rated on Raveena Nigam profile', '2018-08-11 16:00:19', NULL),
(2457, 121, 'Work Experience Updated.', '2018-08-11 19:10:30', NULL),
(2458, 121, 'Profile Updated.', '2018-08-11 19:10:46', NULL),
(2459, 121, 'Work Experience Updated.', '2018-08-11 19:23:59', NULL),
(2460, 121, 'Work Experience Updated.', '2018-08-11 19:30:38', NULL),
(2461, 57, 'Profile Updated.', '2018-08-11 20:26:10', NULL),
(2462, 74, 'Profile Updated.', '2018-08-11 20:26:29', NULL),
(2463, 123, 'Rated on charlene ng profile', '2018-08-12 22:22:32', NULL),
(2464, 123, 'Rated on charlene ng profile', '2018-08-12 22:27:10', NULL),
(2466, 93, 'Rated on Raveena Nigam profile', '2018-08-16 16:15:22', NULL),
(2467, 93, 'Rated on Raveena Nigam profile', '2018-08-16 16:16:21', NULL),
(2468, 93, 'Rated on Raveena Nigam profile', '2018-08-16 16:25:30', NULL),
(2469, 93, 'Rated on Raveena Nigam profile', '2018-08-16 16:27:36', NULL),
(2470, 93, 'Rated on Raveena Nigam profile', '2018-08-17 14:24:39', NULL),
(2472, 93, 'Rated on Raveena Nigam profile', '2018-08-29 01:51:54', NULL),
(2473, 93, 'Rated on Raveena Nigam profile', '2018-08-29 01:53:07', NULL),
(2474, 93, 'Profile Updated.', '2018-08-31 01:25:55', NULL),
(2475, 93, 'Rated on Raveena Nigam profile', '2018-08-31 01:31:50', NULL),
(2476, 93, 'Rated on Raveena Nigam profile', '2018-08-31 01:32:35', NULL),
(2477, 94, 'Profile Updated.', '2018-08-31 02:09:30', NULL),
(2478, 94, 'Profile Updated.', '2018-08-31 10:32:20', NULL),
(2479, 93, 'Rated on Raveena Nigam profile', '2018-08-31 18:46:03', NULL),
(2480, 93, 'Rated on Raveena Nigam profile', '2018-09-01 16:01:32', NULL),
(2481, 48, 'Rated on Saurabh Shukla profile', '2018-09-01 17:36:20', NULL),
(2482, 48, 'Rated on Saurabh Shukla profile', '2018-09-01 17:37:01', NULL),
(2483, 48, 'Rated on Saurabh Shukla profile', '2018-09-01 17:38:04', NULL),
(2484, 123, 'Rated on charlene ng profile', '2018-09-01 20:07:17', NULL),
(2485, 123, 'Rated on charlene ng profile', '2018-09-01 20:09:17', NULL),
(2486, 123, 'Profile Updated.', '2018-09-01 20:14:23', NULL),
(2487, 93, 'Rated on Raveena Nigam profile', '2018-09-01 22:19:12', NULL),
(2488, 48, 'Rated on Saurabh Shukla profile', '2018-09-03 13:09:30', NULL),
(2489, 93, 'Rated on Raveena Nigam profile', '2018-09-06 17:39:15', NULL),
(2490, 93, 'Rated on Raveena Nigam profile', '2018-09-06 17:40:34', NULL),
(2491, 93, 'Rated on Raveena Nigam profile', '2018-09-24 18:09:22', NULL),
(2492, 48, 'Rated on Saurabh Shukla profile', '2018-09-24 18:56:04', NULL),
(2493, 93, 'Rated on Raveena Nigam profile', '2018-09-24 20:23:19', NULL),
(2494, 48, 'Rated on Saurabh Shukla profile', '2018-09-24 20:25:07', NULL),
(2495, 147, 'Profile Updated.', '2018-10-01 20:25:22', NULL),
(2496, 147, 'Profile Updated.', '2018-10-01 20:26:08', NULL),
(2497, 147, 'New Strength Added.', '2018-10-01 20:26:50', NULL),
(2498, 147, 'New Strength Added.', '2018-10-01 20:28:12', NULL),
(2499, 147, 'New Strength Added.', '2018-10-01 20:29:07', NULL),
(2500, 147, 'Education Added.', '2018-10-01 20:31:39', NULL),
(2501, 147, 'Updated the Education.', '2018-10-01 20:38:21', NULL),
(2502, 147, 'Updated the Education.', '2018-10-01 20:43:34', NULL),
(2503, 147, 'Work Experience Updated.', '2018-10-01 20:44:35', NULL),
(2504, 147, 'Work Experience Updated.', '2018-10-01 20:44:55', NULL),
(2505, 147, 'Work Experience Deleted.', '2018-10-01 20:45:08', NULL),
(2506, 147, 'Education Information Deleted.', '2018-10-01 20:45:22', NULL),
(2507, 148, 'Profile Updated.', '2018-10-01 20:47:21', NULL),
(2508, 147, 'Work Experience Deleted.', '2018-10-01 20:52:11', NULL),
(2509, 147, 'Education Information Deleted.', '2018-10-01 20:52:16', NULL),
(2510, 148, 'Profile Updated.', '2018-10-01 20:53:28', NULL),
(2511, 147, 'New Work Experience Added.', '2018-10-01 20:54:58', NULL),
(2512, 147, 'New Work Experience Added.', '2018-10-01 20:55:28', NULL),
(2513, 147, 'New Work Experience Added.', '2018-10-01 20:57:30', NULL),
(2514, 147, 'Education Added.', '2018-10-01 20:58:23', NULL),
(2515, 147, 'Work Experience Deleted.', '2018-10-01 20:59:44', NULL),
(2516, 147, 'Work Experience Deleted.', '2018-10-01 20:59:48', NULL),
(2517, 147, 'New Strength Added.', '2018-10-01 21:00:06', NULL),
(2518, 147, 'Education Added.', '2018-10-01 21:00:55', NULL),
(2519, 147, 'Updated the Education.', '2018-10-01 21:01:19', NULL),
(2520, 147, 'Profile Updated.', '2018-10-01 21:03:14', NULL),
(2521, 148, 'Profile Updated.', '2018-10-01 21:05:25', NULL),
(2522, 93, 'New Strength Added.', '2018-10-02 14:23:01', NULL),
(2523, 93, 'New Work Experience Added.', '2018-10-02 14:23:47', NULL),
(2524, 93, 'Work Experience Updated.', '2018-10-02 14:25:14', NULL),
(2525, 57, 'Profile Updated.', '2018-10-03 14:21:57', NULL),
(2526, 57, 'Profile Updated.', '2018-10-03 14:22:25', NULL),
(2527, 57, 'New Work Experience Added.', '2018-10-03 14:23:57', NULL),
(2528, 57, 'Work Experience Updated.', '2018-10-03 14:24:38', NULL),
(2529, 57, 'New Work Experience Added.', '2018-10-03 14:27:15', NULL),
(2530, 57, 'New Strength Added.', '2018-10-03 14:32:59', NULL),
(2531, 57, 'New Strength Added.', '2018-10-03 14:33:16', NULL),
(2532, 57, 'New Strength Added.', '2018-10-03 14:33:45', NULL),
(2533, 57, 'New Strength Added.', '2018-10-03 14:34:31', NULL),
(2534, 57, 'Education Added.', '2018-10-03 14:35:55', NULL),
(2535, 57, 'Work Experience Updated.', '2018-10-03 14:36:18', NULL),
(2536, 57, 'Work Experience Updated.', '2018-10-03 14:36:35', NULL),
(2537, 57, 'Education Information Deleted.', '2018-10-03 14:36:49', NULL),
(2538, 57, 'Profile Updated.', '2018-10-03 15:44:07', NULL),
(2539, 57, 'Rated on ANKIT individual profile', '2018-10-03 16:49:53', NULL),
(2540, 57, 'Work Experience Updated.', '2018-10-03 17:35:53', NULL),
(2541, 57, 'Work Experience Deleted.', '2018-10-03 17:36:08', NULL),
(2542, 57, 'Work Experience Deleted.', '2018-10-03 17:36:20', NULL),
(2543, 57, 'Updated the Education.', '2018-10-03 17:36:47', NULL),
(2544, 57, 'Updated the Education.', '2018-10-03 17:37:02', NULL),
(2545, 57, 'Profile Updated.', '2018-10-03 17:37:40', NULL),
(2546, 93, 'New Strength Added.', '2018-10-03 18:15:24', NULL),
(2547, 93, 'Education Added.', '2018-10-03 18:16:52', NULL),
(2548, 93, 'Education Information Deleted.', '2018-10-03 18:17:12', NULL),
(2549, 93, 'Work Experience Deleted.', '2018-10-03 18:32:14', NULL),
(2550, 93, 'Work Experience Deleted.', '2018-10-03 18:32:21', NULL);
INSERT INTO `user_profile_logs` (`id`, `user_id`, `activity`, `created_at`, `updated_at`) VALUES
(2551, 74, 'Rated on Individual 1 profile', '2018-10-03 18:37:14', NULL),
(2552, 147, 'Work Experience Updated.', '2018-10-03 18:52:27', NULL),
(2553, 148, 'Profile Updated.', '2018-10-03 19:03:05', NULL),
(2554, 147, 'Profile Updated.', '2018-10-03 19:04:49', NULL),
(2555, 93, 'New Work Experience Added.', '2018-10-03 19:13:39', NULL),
(2556, 93, 'Work Experience Deleted.', '2018-10-03 19:14:04', NULL),
(2557, 93, 'New Work Experience Added.', '2018-10-03 19:20:18', NULL),
(2558, 93, 'Work Experience Deleted.', '2018-10-03 19:20:31', NULL),
(2559, 54, 'Profile Updated.', '2018-10-03 19:30:34', NULL),
(2560, 54, 'Profile Updated.', '2018-10-03 19:30:35', NULL),
(2561, 54, 'Profile Updated.', '2018-10-03 19:31:25', NULL),
(2562, 54, 'Profile Updated.', '2018-10-03 19:34:41', NULL),
(2563, 54, 'Profile Updated.', '2018-10-03 19:41:51', NULL),
(2564, 57, 'Profile Updated.', '2018-10-03 20:18:17', NULL),
(2565, 74, 'Rated on Individual 1 profile', '2018-10-03 20:58:07', NULL),
(2566, 57, 'Work Experience Updated.', '2018-10-04 13:58:37', NULL),
(2567, 57, 'Rated on ANKIT individual profile', '2018-10-04 14:04:59', NULL),
(2568, 74, 'New Work Experience Added.', '2018-10-04 14:13:52', NULL),
(2569, 93, 'Education Added.', '2018-10-04 16:28:15', NULL),
(2570, 93, 'Education Added.', '2018-10-04 16:32:10', NULL),
(2571, 93, 'Education Information Deleted.', '2018-10-04 16:32:21', NULL),
(2572, 93, 'Updated the Education.', '2018-10-04 16:32:33', NULL),
(2573, 93, 'Updated the Education.', '2018-10-04 16:39:07', NULL),
(2574, 93, 'New Work Experience Added.', '2018-10-04 17:09:36', NULL),
(2575, 74, 'Education Added.', '2018-10-04 21:28:18', NULL),
(2576, 74, 'Updated the Education.', '2018-10-04 21:28:46', NULL),
(2577, 74, 'New Strength Added.', '2018-10-04 21:37:40', NULL),
(2578, 74, 'New Strength Added.', '2018-10-04 21:37:56', NULL),
(2579, 74, 'New Strength Added.', '2018-10-04 21:38:12', NULL),
(2580, 57, 'Work Experience Deleted.', '2018-10-05 13:55:09', NULL),
(2581, 57, 'Education Information Deleted.', '2018-10-05 13:55:15', NULL),
(2582, 57, 'New Work Experience Added.', '2018-10-05 13:56:48', NULL),
(2583, 57, 'New Work Experience Added.', '2018-10-05 13:57:16', NULL),
(2584, 57, 'Work Experience Deleted.', '2018-10-05 13:57:25', NULL),
(2585, 57, 'Work Experience Deleted.', '2018-10-05 13:57:31', NULL),
(2586, 54, 'Profile Updated.', '2018-10-05 14:02:07', NULL),
(2587, 54, 'Profile Updated.', '2018-10-05 14:02:40', NULL),
(2588, 54, 'Profile Updated.', '2018-10-05 14:07:15', NULL),
(2589, 54, 'Profile Updated.', '2018-10-05 14:18:42', NULL),
(2590, 54, 'Profile Updated.', '2018-10-05 14:19:34', NULL),
(2591, 54, 'Profile Updated.', '2018-10-05 14:20:30', NULL),
(2592, 54, 'Profile Updated.', '2018-10-05 14:22:04', NULL),
(2593, 54, 'Profile Updated.', '2018-10-05 14:22:33', NULL),
(2594, 54, 'Profile Updated.', '2018-10-05 14:23:10', NULL),
(2595, 54, 'Profile Updated.', '2018-10-05 14:23:33', NULL),
(2596, 57, 'New Work Experience Added.', '2018-10-05 14:27:59', NULL),
(2597, 57, 'Work Experience Deleted.', '2018-10-05 14:28:34', NULL),
(2598, 54, 'Profile Updated.', '2018-10-05 14:29:20', NULL),
(2599, 57, 'New Work Experience Added.', '2018-10-05 14:29:45', NULL),
(2600, 54, 'Profile Updated.', '2018-10-05 14:31:28', NULL),
(2601, 57, 'Work Experience Updated.', '2018-10-05 15:22:10', NULL),
(2602, 54, 'Profile Updated.', '2018-10-05 15:32:55', NULL),
(2603, 54, 'Profile Updated.', '2018-10-05 15:34:27', NULL),
(2604, 147, 'Rated on ANKIT Individual profile', '2018-10-05 15:45:04', NULL),
(2605, 147, 'Profile Updated.', '2018-10-05 19:40:35', NULL),
(2606, 147, 'Work Experience Updated.', '2018-10-05 19:43:42', NULL),
(2607, 147, 'Work Experience Updated.', '2018-10-05 20:05:21', NULL),
(2608, 147, 'Work Experience Updated.', '2018-10-05 20:05:40', NULL),
(2609, 147, 'Work Experience Updated.', '2018-10-05 20:08:30', NULL),
(2610, 147, 'Work Experience Updated.', '2018-10-05 20:10:41', NULL),
(2611, 147, 'Work Experience Updated.', '2018-10-05 20:14:17', NULL),
(2612, 158, 'Profile Updated.', '2018-10-05 20:54:46', NULL),
(2613, 158, 'Profile Updated.', '2018-10-05 21:00:08', NULL),
(2614, 93, 'Rated on Raveena Nigam profile', '2018-10-05 21:13:13', NULL),
(2615, 158, 'New Strength Added.', '2018-10-05 21:22:23', NULL),
(2616, 158, 'New Strength Added.', '2018-10-05 21:22:43', NULL),
(2617, 147, 'Rated on ANKIT Individual profile', '2018-10-05 22:14:03', NULL),
(2618, 158, 'Rated on Rakesh Singh profile', '2018-10-05 22:20:50', NULL),
(2619, 140, 'Rated on Chen chuen Lee profile', '2018-10-06 13:51:16', NULL),
(2620, 140, 'Rated on Chen chuen Lee profile', '2018-10-06 13:55:13', NULL),
(2621, 140, 'New Strength Added.', '2018-10-08 00:22:57', NULL),
(2622, 140, 'New Work Experience Added.', '2018-10-08 00:33:08', NULL),
(2623, 54, 'Profile Updated.', '2018-10-08 12:52:03', NULL),
(2624, 57, 'Profile Updated.', '2018-10-08 13:06:32', NULL),
(2625, 57, 'Education Added.', '2018-10-08 13:07:24', NULL),
(2626, 57, 'Profile Updated.', '2018-10-08 13:07:41', NULL),
(2627, 160, 'Profile Updated.', '2018-10-08 13:16:52', NULL),
(2628, 160, 'Profile Updated.', '2018-10-08 13:17:06', NULL),
(2629, 160, 'Profile Updated.', '2018-10-08 14:37:09', NULL),
(2630, 160, 'New Strength Added.', '2018-10-08 14:48:25', NULL),
(2631, 160, 'New Strength Added.', '2018-10-08 14:50:41', NULL),
(2632, 160, 'New Strength Added.', '2018-10-08 14:51:54', NULL),
(2633, 57, 'Rated on ANKIT individual profile', '2018-10-08 15:08:29', NULL),
(2634, 160, 'Rated on Vivek KK profile', '2018-10-08 15:11:05', NULL),
(2635, 54, 'Profile Updated.', '2018-10-08 15:32:57', NULL),
(2636, 54, 'Profile Updated.', '2018-10-08 15:34:01', NULL),
(2637, 54, 'Profile Updated.', '2018-10-08 15:37:31', NULL),
(2638, 75, 'Profile Updated.', '2018-10-08 15:44:17', NULL),
(2639, 54, 'Profile Updated.', '2018-10-08 15:44:49', NULL),
(2640, 54, 'Profile Updated.', '2018-10-08 15:50:09', NULL),
(2641, 54, 'Profile Updated.', '2018-10-08 15:51:07', NULL),
(2642, 54, 'Profile Updated.', '2018-10-08 15:53:17', NULL),
(2643, 93, 'Profile Updated.', '2018-10-08 21:49:39', NULL),
(2644, 160, 'Work Experience Deleted.', '2018-10-09 15:57:50', NULL),
(2645, 160, 'New Work Experience Added.', '2018-10-09 17:55:16', NULL),
(2646, 104, 'Rated on vivek kumar profile', '2018-10-09 19:25:16', NULL),
(2647, 161, 'New Work Experience Added.', '2018-10-31 00:03:38', NULL),
(2648, 164, 'Profile Updated.', '2018-10-31 20:44:31', NULL),
(2649, 164, 'Profile Updated.', '2018-11-01 18:36:18', NULL),
(2650, 79, 'New Strength Added.', '2018-11-13 19:00:49', NULL),
(2651, 160, 'New Strength Added.', '2018-11-13 19:01:38', NULL),
(2652, 160, 'Rated on Vivek KK profile', '2018-11-13 19:28:34', NULL),
(2653, 160, 'Rated on Vivek KK profile', '2018-11-13 19:36:30', NULL),
(2654, 104, 'Rated on vivek kumar profile', '2018-11-13 19:38:15', NULL),
(2655, 79, 'Rated on Vivek kumar profile', '2018-11-13 19:42:07', NULL),
(2657, 108, 'Rated on Ankit Analytics profile', '2018-11-13 19:56:40', NULL),
(2658, 147, 'Rated on ANKIT Individual profile', '2018-11-13 20:06:50', NULL),
(2659, 96, 'Rated on Ankit Job profile', '2018-11-13 20:08:22', NULL),
(2665, 162, 'New Strength Added.', '2018-11-21 22:12:13', NULL),
(2666, 162, 'Education Added.', '2018-11-21 22:13:19', NULL),
(2667, 175, 'Rated on Vivek Individual profile', '2018-11-23 15:55:18', NULL),
(2668, 160, 'Rated on Vivek KK profile', '2018-11-27 11:59:24', NULL),
(2669, 79, 'Rated on Vivek kumar profile', '2018-11-27 12:02:03', NULL),
(2670, 177, 'Rated on Qwerty Abcd profile', '2018-11-27 12:03:21', NULL),
(2671, 166, 'Rated on I1 Last name profile', '2018-11-27 12:08:43', NULL),
(2672, 57, 'Rated on ANKIT individual profile', '2018-11-27 12:13:02', NULL),
(2673, 166, 'Rated on I1 Last name profile', '2018-12-04 17:26:23', NULL),
(2674, 194, 'Rated on Candidate First profile', '2018-12-07 13:59:42', NULL),
(2675, 194, 'Rated on Candidate First profile', '2018-12-07 14:26:27', NULL),
(2676, 195, 'Rated on Candidate2 Second profile', '2018-12-07 14:28:01', NULL),
(2677, 196, 'Rated on Candidate3 Third profile', '2018-12-07 14:30:16', NULL),
(2678, 197, 'Rated on Candidate4 Fourth profile', '2018-12-07 14:46:56', NULL),
(2679, 195, 'Rated on Candidate2 Second profile', '2018-12-07 15:32:54', NULL),
(2680, 194, 'Rated on Candidate First profile', '2018-12-07 15:36:05', NULL),
(2681, 196, 'Rated on Candidate3 Third profile', '2018-12-07 15:37:16', NULL),
(2682, 196, 'Rated on Candidate3 Third profile', '2018-12-07 15:39:17', NULL),
(2683, 194, 'Rated on Candidate First profile', '2018-12-07 15:41:06', NULL),
(2684, 195, 'Rated on Candidate2 Second profile', '2018-12-07 15:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_strengths`
--

CREATE TABLE `user_strengths` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `strength` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_strengths`
--

INSERT INTO `user_strengths` (`id`, `user_id`, `strength`, `created_at`, `updated_at`) VALUES
(1, 121, '4', '2018-08-09 14:11:27', '2018-08-09 14:11:27'),
(2, 121, '34', '2018-08-09 14:11:27', '2018-08-09 14:11:27'),
(3, 121, '33', '2018-08-09 14:11:27', '2018-08-09 14:11:27'),
(51, 147, '2', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(52, 147, '3', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(53, 147, '4', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(54, 147, '34', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(55, 147, '5', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(56, 147, '8', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(57, 147, '9', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(58, 147, '10', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(59, 147, '11', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(60, 147, '12', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(61, 147, '13', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(62, 147, '18', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(63, 147, '19', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(64, 147, '25', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(65, 147, '26', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(66, 147, '33', '2018-10-01 21:00:06', '2018-10-01 21:00:06'),
(106, 57, '1', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(107, 57, '2', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(108, 57, '3', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(109, 57, '4', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(110, 57, '34', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(111, 57, '5', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(112, 57, '6', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(113, 57, '7', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(114, 57, '8', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(115, 57, '9', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(116, 57, '10', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(117, 57, '12', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(118, 57, '13', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(119, 57, '14', '2018-10-03 14:34:31', '2018-10-03 14:34:31'),
(120, 93, '10', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(121, 93, '11', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(122, 93, '12', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(123, 93, '14', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(124, 93, '15', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(125, 93, '22', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(126, 93, '23', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(127, 93, '24', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(128, 93, '25', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(129, 93, '30', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(130, 93, '31', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(131, 93, '32', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(132, 93, '33', '2018-10-03 18:15:24', '2018-10-03 18:15:24'),
(141, 74, '7', '2018-10-04 21:38:12', '2018-10-04 21:38:12'),
(142, 74, '8', '2018-10-04 21:38:12', '2018-10-04 21:38:12'),
(143, 74, '9', '2018-10-04 21:38:12', '2018-10-04 21:38:12'),
(144, 74, '10', '2018-10-04 21:38:12', '2018-10-04 21:38:12'),
(145, 74, '11', '2018-10-04 21:38:12', '2018-10-04 21:38:12'),
(146, 74, '12', '2018-10-04 21:38:12', '2018-10-04 21:38:12'),
(150, 158, '1', '2018-10-05 21:22:43', '2018-10-05 21:22:43'),
(151, 158, '2', '2018-10-05 21:22:43', '2018-10-05 21:22:43'),
(152, 158, '3', '2018-10-05 21:22:43', '2018-10-05 21:22:43'),
(153, 158, '4', '2018-10-05 21:22:43', '2018-10-05 21:22:43'),
(154, 140, '34', '2018-10-08 00:22:57', '2018-10-08 00:22:57'),
(155, 140, '6', '2018-10-08 00:22:57', '2018-10-08 00:22:57'),
(156, 140, '8', '2018-10-08 00:22:57', '2018-10-08 00:22:57'),
(168, 79, '1', '2018-11-13 19:00:49', '2018-11-13 19:00:49'),
(169, 79, '2', '2018-11-13 19:00:49', '2018-11-13 19:00:49'),
(170, 79, '3', '2018-11-13 19:00:49', '2018-11-13 19:00:49'),
(171, 79, '4', '2018-11-13 19:00:49', '2018-11-13 19:00:49'),
(172, 79, '34', '2018-11-13 19:00:49', '2018-11-13 19:00:49'),
(173, 160, '1', '2018-11-13 19:01:38', '2018-11-13 19:01:38'),
(174, 160, '5', '2018-11-13 19:01:38', '2018-11-13 19:01:38'),
(175, 160, '8', '2018-11-13 19:01:38', '2018-11-13 19:01:38'),
(176, 160, '28', '2018-11-13 19:01:38', '2018-11-13 19:01:38'),
(177, 160, '31', '2018-11-13 19:01:38', '2018-11-13 19:01:38'),
(178, 160, '33', '2018-11-13 19:01:38', '2018-11-13 19:01:38'),
(189, 162, '1', '2018-11-21 22:12:13', '2018-11-21 22:12:13'),
(190, 162, '2', '2018-11-21 22:12:13', '2018-11-21 22:12:13'),
(191, 162, '3', '2018-11-21 22:12:13', '2018-11-21 22:12:13'),
(192, 162, '4', '2018-11-21 22:12:13', '2018-11-21 22:12:13'),
(193, 162, '34', '2018-11-21 22:12:13', '2018-11-21 22:12:13'),
(194, 162, '5', '2018-11-21 22:12:13', '2018-11-21 22:12:13'),
(195, 162, '6', '2018-11-21 22:12:13', '2018-11-21 22:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_verification`
--

CREATE TABLE `user_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('email','mobile') COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verification`
--

INSERT INTO `user_verification` (`id`, `user_id`, `type`, `token`, `created_at`, `updated_at`) VALUES
(2, 2, 'email', 'MiMjc3VzaGFudCswMUBzaW5nc3lzLmNvbQ==', '2018-03-21 06:40:22', NULL),
(4, 3, 'email', 'MyMjcHJlZXRpc2luZ2grMTJAc2luZ3N5cy5jb20=', '2018-03-21 06:45:07', NULL),
(6, 4, 'email', 'NCMjcmF2ZWVuYUBzaW5nc3lzLmNvbQ==', '2018-03-22 03:19:19', NULL),
(8, 5, 'email', 'NSMjc2F1cmFiaHNodWtsYUBzaW5nc3lzLmNvbQ==', '2018-03-22 03:32:20', NULL),
(10, 6, 'email', 'NiMjcmF2ZWVuYStpbmRpdmlkdWFsQHNpbmdzeXMuY29t', '2018-03-22 03:50:22', NULL),
(12, 7, 'email', 'NyMjc2F1cmFiaHNodWtsYStpbmRpdmlkdWFsQHNpbmdzeXMuY29t', '2018-03-22 04:02:52', NULL),
(14, 8, 'email', 'OCMjcHJlZXRpc2luZ2hAc2luZ3N5cy5jb20=', '2018-03-22 06:05:28', NULL),
(16, 9, 'email', 'OSMjYWJoaXNoZWtkdWJleUBzaW5nc3lzLmNvbQ==', '2018-03-27 11:33:41', NULL),
(18, 10, 'email', 'MTAjI3NhdXJhYmhzaHVrbGErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-03-27 12:57:15', NULL),
(20, 11, 'email', 'MTEjI3ZpdmVra3VtYXJAc2luZ3N5cy5jb20=', '2018-03-28 04:39:39', NULL),
(22, 12, 'email', 'MTIjI3ZpdmVrYTA3NDVAZ21haWwuY29t', '2018-03-28 04:51:27', NULL),
(24, 13, 'email', 'MTMjI2Fua2l0amFpc3dhbEBzaW5nc3lzLmNvbQ==', '2018-03-28 05:02:19', NULL),
(27, 14, 'email', 'MTQjI2Fua2l0amFpc3dhbCsxQHNpbmdzeXMuY29t', '2018-03-28 05:55:45', NULL),
(29, 15, 'email', 'MTUjI3ZpdmVrMDc0NUBnbWFpbC5jb20=', '2018-03-28 06:02:47', NULL),
(31, 16, 'email', 'MTYjI2Fua2l0amFpc3dhbCtjb21wYW55QHNpbmdzeXMuY29t', '2018-03-28 06:19:51', NULL),
(33, 17, 'email', 'MTcjI2NoYW5jaGFsQHNpbmdzeXMuY29t', '2018-03-28 06:21:30', NULL),
(35, 18, 'email', 'MTgjI3ByZWV0aXNpbmdoK2NvbXBhbnlAc2luZ3N5cy5jb20=', '2018-03-28 06:23:54', NULL),
(37, 19, 'email', 'MTkjI2Fua2l0amFpc3dhbCtjb21Ac2luZ3N5cy5jb20=', '2018-03-28 06:32:35', NULL),
(39, 20, 'email', 'MjAjI3ZrdW1hcjAwNDVAZ21haWwuY29t', '2018-03-28 06:51:48', NULL),
(41, 21, 'email', 'MjEjI3ZpdmVra3VtYXIyQHNpbmdzeXMuY29t', '2018-03-28 06:55:18', NULL),
(43, 22, 'email', 'MjIjI3ZpdmVra3VtYXIrMkBzaW5nc3lzLmNvbQ==', '2018-03-28 06:57:25', NULL),
(45, 23, 'email', 'MjMjI2R1cmdlc2hAc2luZ3N5cy5jb20=', '2018-03-28 01:11:21', NULL),
(48, 23, 'mobile', '396177', '2018-03-28 01:14:44', NULL),
(49, 24, 'mobile', '365230', '2018-03-28 01:17:32', NULL),
(50, 24, 'email', 'MjQjI2Fua2l0amFpc3dhbCsxMkBzaW5nc3lzLmNvbQ==', '2018-03-28 01:17:32', NULL),
(52, 25, 'email', 'MjUjI2Fua2l0amFpc3dhbCsxM0BzaW5nc3lzLmNvbQ==', '2018-03-28 01:19:42', NULL),
(53, 25, 'mobile', '246678', '2018-03-28 01:20:04', NULL),
(55, 26, 'email', 'MjYjI3N1c2hhbnQrY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-03-28 01:23:27', NULL),
(56, 26, 'mobile', '670001', '2018-03-28 01:25:37', NULL),
(57, 27, 'mobile', '859684', '2018-03-28 02:11:56', NULL),
(58, 27, 'email', 'MjcjI2Fua2l0amFpc3dhbCsxNkBzaW5nc3lzLmNvbQ==', '2018-03-28 02:11:56', NULL),
(60, 28, 'email', 'MjgjI3N1c2hhbnQrNjc4QHNpbmdzeXMuY29t', '2018-03-28 02:27:30', NULL),
(63, 29, 'email', 'MjkjI3ZpdmVra3VtYXIrM0BzaW5nc3lzLmNvbQ==', '2018-03-28 02:31:20', NULL),
(66, 30, 'email', 'MzAjI2Fua2l0amFpc3dhbCsyMkBzaW5nc3lzLmNvbQ==', '2018-03-28 02:33:15', NULL),
(69, 31, 'email', 'MzEjI2xlZWNoZW5jaHVlbkBnbWFpbC5jb20=', '2018-04-01 07:43:46', NULL),
(71, 32, 'email', 'MzIjI3NhbmRlZXArZnJlZUBzaW5nc3lzLmNvbQ==', '2018-04-02 06:36:49', NULL),
(74, 33, 'email', 'MzMjI3N1c2hhbnQrMTk5NEBzaW5nc3lzLmNvbQ==', '2018-04-03 01:58:39', NULL),
(76, 34, 'email', 'MzQjI2thbmNoYW4raW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-04-06 04:26:59', NULL),
(78, 35, 'email', 'MzUjI2Fua2l0amFpc3dhbCsxMUBzaW5nc3lzLmNvbQ==', '2018-04-10 09:09:09', NULL),
(82, 36, 'email', 'MzYjI2Fua2l0amFpc3dhbCsxNEBzaW5nc3lzLmNvbQ==', '2018-04-10 09:43:53', NULL),
(85, 38, 'email', 'MzgjI2Fua2l0amFpc3dhbCsxNUBzaW5nc3lzLmNvbQ==', '2018-04-10 11:45:50', NULL),
(88, 39, 'email', 'MzkjI2Fua2l0amFpc3dhbCsxN0BzaW5nc3lzLmNvbQ==', '2018-04-10 11:56:48', NULL),
(91, 40, 'email', 'NDAjI3N1c2hhbnQrNzg5QHNpbmdzeXMuY29t', '2018-04-10 12:55:37', NULL),
(94, 41, 'email', 'NDEjI2Fua2l0amFpc3dhbCsxOEBzaW5nc3lzLmNvbQ==', '2018-04-10 01:25:07', NULL),
(97, 42, 'email', 'NDIjI3N1c2hhbnQrMTk5NkBzaW5nc3lzLmNvbQ==', '2018-04-10 01:42:13', NULL),
(99, 43, 'email', 'NDMjI2Fua2l0amFpc3dhbCsxOUBzaW5nc3lzLmNvbQ==', '2018-04-10 01:52:19', NULL),
(102, 44, 'email', 'NDQjI2Fua2l0amFpc3dhbCsyMEBzaW5nc3lzLmNvbQ==', '2018-04-10 01:56:45', NULL),
(105, 45, 'email', 'NDUjI2Fua2l0amFpc3dhbCsyMUBzaW5nc3lzLmNvbQ==', '2018-04-11 06:39:20', NULL),
(107, 46, 'email', 'NDYjI3JhdmVlbmEraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-04-21 10:51:49', NULL),
(109, 47, 'email', 'NDcjI3JhdmVlbmErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-04-21 10:56:38', NULL),
(111, 48, 'email', 'NDgjI3NhdXJhYmhzaHVrbGEraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-04-21 11:01:56', NULL),
(113, 49, 'email', 'NDkjI3NhdXJhYmhzaHVrbGErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-04-21 11:09:18', NULL),
(115, 50, 'email', 'NTAjI3ByZWV0aXNpbmdoK3N1cmJoaUBzaW5nc3lzLmNvbQ==', '2018-04-23 04:23:05', NULL),
(117, 51, 'email', 'NTEjI2Fua2l0amFpc3dhbCtpbmRAc2luZ3N5cy5jb20=', '2018-04-23 04:25:10', NULL),
(119, 52, 'email', 'NTIjI2Fua2l0amFpc3dhbCtjb21wYW55QHNpbmdzeXMuY29t', '2018-04-23 04:30:10', NULL),
(121, 53, 'email', 'NTMjI2Fua2l0amFpc3dhbEBzaW5nc3lzLmNvbQ==', '2018-04-23 04:39:37', NULL),
(123, 54, 'email', 'NTQjI2Fua2l0amFpc3dhbCtjb21wYW55QHNpbmdzeXMuY29t', '2018-04-23 05:53:04', NULL),
(125, 55, 'email', 'NTUjI2R1cmdlc2grMUBzaW5nc3lzLmNvbQ==', '2018-04-23 06:44:56', NULL),
(127, 56, 'email', 'NTYjI2FiaGlzaGVrZHViZXkrMUBzaW5nc3lzLmNvbQ==', '2018-04-23 10:04:23', NULL),
(129, 57, 'email', 'NTcjI2Fua2l0amFpc3dhbCtpbmRAc2luZ3N5cy5jb20=', '2018-04-24 01:19:15', NULL),
(131, 58, 'email', 'NTgjI2FiaGlzaGVrZHViZXkrMkBzaW5nc3lzLmNvbQ==', '2018-04-24 06:27:14', NULL),
(133, 59, 'email', 'NTkjI3ByZWV0aXNpbmdoQHNpbmdzeXMuY29t', '2018-04-27 06:54:19', NULL),
(135, 60, 'email', 'NjAjI2NoZXRhbmRlZXBAc2luZ3N5cy5jb20=', '2018-04-27 07:09:04', NULL),
(136, 61, 'mobile', '500012', '2018-05-11 01:58:02', NULL),
(137, 61, 'email', 'NjEjI2Fua2l0amFpc3dhbCsxQHNpbmdzeXMuY29t', '2018-05-11 01:58:02', NULL),
(139, 62, 'email', 'NjIjI2Fua2l0amFpc3dhbCsxQHNpbmdzeXMuY29t', '2018-05-11 02:06:01', NULL),
(141, 63, 'email', 'NjMjI2Fua2l0amFpc3dhbCsyQHNpbmdzeXMuY29t', '2018-05-11 02:16:39', NULL),
(143, 64, 'email', 'NjQjI3JhdmVlbmErc2hpdmFuZ2lAc2luZ3N5cy5jb20=', '2018-05-11 03:54:22', NULL),
(145, 65, 'email', 'NjUjI3N1c2hhbnQrbmV3QHNpbmdzeXMuY29t', '2018-05-11 04:16:43', NULL),
(147, 66, 'email', 'NjYjI2Fua2l0amFpc3dhbCs0QHNpbmdzeXMuY29t', '2018-05-11 05:10:40', NULL),
(150, 67, 'email', 'NjcjI2Fua2l0amFpc3dhbCs0QHNpbmdzeXMuY29t', '2018-05-11 05:43:50', NULL),
(152, 68, 'email', 'NjgjI2Fua2l0amFpc3dhbCs2QHNpbmdzeXMuY29t', '2018-05-11 06:03:43', NULL),
(154, 69, 'email', 'NjkjI2Fua2l0amFpc3dhbCs3QHNpbmdzeXMuY29t', '2018-05-11 08:17:59', NULL),
(156, 70, 'email', 'NzAjI2Fua2l0amFpc3dhbCs4QHNpbmdzeXMuY29t', '2018-05-11 08:29:56', NULL),
(158, 71, 'email', 'NzEjI2Fua2l0amFpc3dhbCs5QHNpbmdzeXMuY29t', '2018-05-11 09:05:39', NULL),
(160, 72, 'email', 'NzIjI2Fua2l0amFpc3dhbCs5QHNpbmdzeXMuY29t', '2018-05-11 09:08:34', NULL),
(162, 73, 'email', 'NzMjI3ZpdmVra3VtYXIrY29tQHNpbmdzeXMuY29t', '2018-05-21 06:29:04', NULL),
(164, 74, 'email', 'NzQjI2Fua2l0amFpc3dhbCtJbmRwYWlkQHNpbmdzeXMuY29t', '2018-05-22 12:09:28', NULL),
(167, 75, 'email', 'NzUjI2Fua2l0amFpc3dhbCtDb21wYW55cGFpZEBzaW5nc3lzLmNvbQ==', '2018-05-22 12:20:47', NULL),
(169, 76, 'email', 'NzYjI3N1c2hhbnQrY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-05-22 07:51:45', NULL),
(171, 77, 'email', 'NzcjI2Fua2l0amFpc3dhbCsxMTFAc2luZ3N5cy5jb20=', '2018-05-23 04:18:26', NULL),
(172, 78, 'mobile', '236702', '2018-05-23 06:20:22', NULL),
(173, 78, 'email', 'NzgjI3ZpdmVra3VtYXIraW5Ac2luZ3N5cy5jb20=', '2018-05-23 06:20:22', NULL),
(175, 79, 'email', 'NzkjI3ZpdmVra3VtYXIraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-05-23 07:06:00', NULL),
(177, 80, 'email', 'ODAjI2Fua2l0amFpc3dhbCsxMTJAc2luZ3N5cy5jb20=', '2018-06-02 01:00:11', NULL),
(179, 81, 'email', 'ODEjI2Fua2l0amFpc3dhbCsxMTNAc2luZ3N5cy5jb20=', '2018-06-02 01:26:25', NULL),
(181, 82, 'email', 'ODIjI2Fua2l0amFpc3dhbCsxMTRAc2luZ3N5cy5jb20=', '2018-06-02 01:34:04', NULL),
(183, 83, 'email', 'ODMjI2Fua2l0amFpc3dhbCsxOEBzaW5nc3lzLmNvbQ==', '2018-06-02 05:20:50', NULL),
(184, 84, 'mobile', '260170', '2018-06-02 07:08:51', NULL),
(185, 84, 'email', 'ODQjI2Fua2l0amFpc3dhbCsxMTVAc2luZ3N5cy5jb20=', '2018-06-02 07:08:51', NULL),
(187, 85, 'email', 'ODUjI2Fua2l0amFpc3dhbCsxMTVAc2luZ3N5cy5jb20=', '2018-06-02 07:10:29', NULL),
(189, 86, 'email', 'ODYjI2Fua2l0amFpc3dhbCsxMTVAc2luZ3N5cy5jb20=', '2018-06-02 07:16:07', NULL),
(190, 87, 'mobile', '782917', '2018-06-04 02:52:29', NULL),
(191, 87, 'email', 'ODcjI3BhbmthakBzaW5nc3lzLmNvbQ==', '2018-06-04 02:52:29', NULL),
(193, 88, 'email', 'ODgjI2Fua2l0amFpc3dhbCsxMDBAc2luZ3N5cy5jb20=', '2018-06-25 02:23:31', NULL),
(195, 89, 'email', 'ODkjI2Fua2l0amFpc3dhbCsxMDNAc2luZ3N5cy5jb20=', '2018-07-12 12:30:24', NULL),
(198, 90, 'email', 'OTAjI2Fua2l0amFpc3dhbCsxMDVAc2luZ3N5cy5jb20=', '2018-07-12 05:10:06', NULL),
(199, 91, 'mobile', '782179', '2018-07-12 05:19:56', NULL),
(200, 91, 'email', 'OTEjI2NoZXRhbmRlZXArc3VsdGFuQHNpbmdzeXMuY29t', '2018-07-12 05:19:56', NULL),
(202, 92, 'email', 'OTIjI2Fua2l0amFpc3dhbCsxMDZAc2luZ3N5cy5jb20=', '2018-07-12 07:24:39', NULL),
(204, 92, 'mobile', '916845', '2018-07-12 07:34:29', NULL),
(206, 93, 'email', 'OTMjI3JhdmVlbmEraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-07-28 07:58:30', NULL),
(208, 94, 'email', 'OTQjI3JhdmVlbmErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-07-28 08:00:05', NULL),
(209, 95, 'email', 'OTUjI2NoZXRhbmRlZXArdXNlckBzaW5nc3lzLmNvbQ==', '2018-07-28 09:16:06', NULL),
(212, 96, 'email', 'OTYjI2Fua2l0amFpc3dhbCtzZWVrZXJAc2luZ3N5cy5jb20=', '2018-07-31 12:50:07', NULL),
(215, 97, 'mobile', '705318', '2018-07-31 01:06:58', NULL),
(216, 97, 'email', 'OTcjI2Fua2l0amFpc3dhbCtqb2JAc2luZ3N5cy5jb20=', '2018-07-31 01:06:58', NULL),
(218, 98, 'email', 'OTgjI2Fua2l0amFpc3dhbCtqb2JAc2luZ3N5cy5jb20=', '2018-07-31 01:09:44', NULL),
(219, 99, 'mobile', '382350', '2018-07-31 04:37:08', NULL),
(220, 99, 'email', 'OTkjI3ZpdmVra3VtYXIrMzYwQHNpbmdzeXMuY29t', '2018-07-31 04:37:08', NULL),
(222, 100, 'email', 'MTAwIyN2aXZla2t1bWFyKzM2MEBzaW5nc3lzLmNvbQ==', '2018-07-31 04:44:23', NULL),
(224, 101, 'email', 'MTAxIyNWaXZla2t1bWFyK251QHNpbmdzeXMuY29t', '2018-07-31 06:04:28', NULL),
(225, 101, 'mobile', '220869', NULL, NULL),
(226, 102, 'email', 'MTAyIyN2aXZla2t1bWFyK25vbkBzaW5nc3lzLmNvbQ==', '2018-07-31 07:11:01', NULL),
(229, 102, 'mobile', '858664', '2018-07-31 07:13:42', NULL),
(230, 103, 'email', 'MTAzIyN2aXZla2t1bWFyK25vbnVzZXJAc2luZ3N5cy5jb20=', '2018-07-31 08:23:03', NULL),
(236, 104, 'email', 'MTA0IyN2aXZla2t1bWFyK2lAc2luZ3N5cy5jb20=', '2018-07-31 08:30:38', NULL),
(238, 106, 'email', 'MTA2IyN2aXZla2t1bWFyK251c2VyQHNpbmdzeXMuY29t', '2018-07-31 08:53:27', NULL),
(239, 105, 'email', 'MTA1IyNhbmtpdGphaXN3YWwrbm9udXNlckBzaW5nc3lzLmNvbQ==', '2018-07-31 08:53:54', NULL),
(241, 105, 'mobile', '705144', NULL, NULL),
(245, 108, 'email', 'MTA4IyNhbmtpdGphaXN3YWwrYW5hbHl0aWNzQHNpbmdzeXMuY29t', '2018-08-01 06:49:58', NULL),
(247, 109, 'email', 'MTA5IyNzYXRpc2hAc2luZ3N5cy5jb20=', '2018-08-01 07:11:06', NULL),
(248, 110, 'mobile', '313964', '2018-08-01 07:19:55', NULL),
(249, 110, 'email', 'MTEwIyNzYXRpc2hAc2luZ3N5cy5jb20=', '2018-08-01 07:19:55', NULL),
(250, 111, 'mobile', '776421', '2018-08-01 07:25:43', NULL),
(251, 111, 'email', 'MTExIyNzYXRpc2hAc2luZ3N5cy5jb20=', '2018-08-01 07:25:43', NULL),
(252, 112, 'mobile', '901753', '2018-08-01 07:31:15', NULL),
(253, 112, 'email', 'MTEyIyNzYXRpc2hAc2luZ3N5cy5jb20=', '2018-08-01 07:31:15', NULL),
(255, 113, 'email', 'MTEzIyNyYXZlZW5hK3JhdmluZHJhQHNpbmdzeXMuY29t', '2018-08-01 09:09:36', NULL),
(256, 114, 'mobile', '723727', '2018-08-02 05:18:34', NULL),
(257, 114, 'email', 'MTE0IyNhbmtpdGphaXN3YWwrMTExMUBzaW5nc3lzLmNvbQ==', '2018-08-02 05:18:34', NULL),
(258, 115, 'email', 'MTE1IyNwcmVldGlzaW5naCsxQHNpbmdzeXMuY29t', '2018-08-02 06:29:44', NULL),
(264, 116, 'mobile', '390181', '2018-08-02 06:59:32', NULL),
(265, 116, 'email', 'MTE2IyNyaHRodGh0QGVnZ2UuY29t', '2018-08-02 06:59:32', NULL),
(266, 117, 'email', 'MTE3IyNzdWx0YW5Ac2luZ3N5cy5jb20=', '2018-08-02 07:02:16', NULL),
(268, 118, 'email', 'MTE4IyNwcmVldGlzaW5naCsyQHNpbmdzeXMuY29t', '2018-08-02 07:11:01', NULL),
(269, 119, 'email', 'MTE5IyNwcmVldGlzaW5naCszQHNpbmdzeXMuY29t', '2018-08-02 07:12:29', NULL),
(276, 120, 'email', 'MTIwIyNhbmtpdGphaXN3YWwrZnJlZUBzaW5nc3lzLmNvbQ==', '2018-08-09 01:59:57', NULL),
(278, 121, 'email', 'MTIxIyNhbmtpdGphaXN3YWwrZnJlZUBzaW5nc3lzLmNvbQ==', '2018-08-09 02:05:56', NULL),
(283, 122, 'email', 'MTIyIyNhbmtpdGphaXN3YWwrc29mdG9uaWNAc2luZ3N5cy5jb20=', '2018-08-10 05:56:25', NULL),
(285, 123, 'email', 'MTIzIyNuZ3NoaXlpbkBnbWFpbC5jb20=', '2018-08-12 10:06:53', NULL),
(286, 124, 'email', 'MTI0IyNjbGFpcmUuaHVhQGdtYWlsLmNvbQ==', '2018-08-13 02:28:25', NULL),
(287, 125, 'email', 'MTI1IyNjbGFpcmUuaHVhQGdtYWlsLmNvbQ==', '2018-08-15 03:40:23', NULL),
(289, 126, 'email', 'MTI2IyNyYXZlZW5hK2FuamFsaUBzaW5nc3lzLmNvbQ==', '2018-08-21 07:03:53', NULL),
(291, 127, 'email', 'MTI3IyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-27 10:47:00', NULL),
(295, 127, 'mobile', '537555', '2018-08-27 11:09:09', NULL),
(296, 128, 'mobile', '480682', '2018-08-27 11:12:21', NULL),
(297, 128, 'email', 'MTI4IyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-27 11:12:21', NULL),
(299, 129, 'email', 'MTI5IyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-27 11:18:13', NULL),
(301, 130, 'email', 'MTMwIyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-28 03:01:57', NULL),
(303, 131, 'email', 'MTMxIyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-29 11:22:51', NULL),
(305, 132, 'email', 'MTMyIyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-29 11:24:37', NULL),
(307, 133, 'email', 'MTMzIyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-30 11:00:51', NULL),
(309, 134, 'email', 'MTM0IyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-30 07:57:00', NULL),
(311, 135, 'email', 'MTM1IyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-08-31 09:12:14', NULL),
(312, 136, 'email', 'MTM2IyNyYXZlZW5hK3ByZWV0aXNpbmdoQHNpbmdzeXMuY29t', '2018-09-03 12:57:36', NULL),
(316, 137, 'email', 'MTM3IyNyYXZlZW5hK3R3aW5rbGVAc2luZ3N5cy5jb20=', '2018-09-07 03:01:26', NULL),
(318, 138, 'email', 'MTM4IyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-09-08 06:07:51', NULL),
(321, 139, 'email', 'MTM5IyNyYXZlZW5hK2FuamFsaTJAc2luZ3N5cy5jb20=', '2018-09-08 12:55:47', NULL),
(323, 140, 'email', 'MTQwIyNsZWVjaGVuY2h1ZW5AZ21haWwuY29t', '2018-09-08 08:56:33', NULL),
(324, 141, 'mobile', '344047', '2018-09-14 04:11:14', NULL),
(325, 141, 'email', 'MTQxIyNyYXZlZW5hK21vaGl0QHNpbmdzeXMuY29t', '2018-09-14 04:11:14', NULL),
(326, 142, 'email', 'MTQyIyNwdXNoYXBAc2luc2d5cy5jb20=', '2018-09-14 04:26:08', NULL),
(327, 143, 'email', 'MTQzIyNyYXZlZW5hK3NhbmpheUBzaW5nc3lzLmNvbQ==', '2018-09-14 06:26:58', NULL),
(329, 144, 'email', 'MTQ0IyNyYXZlZW5hK3B1c2hhcEBzaW5nc3lzLmNvbQ==', '2018-09-24 02:45:11', NULL),
(330, 145, 'email', 'MTQ1IyNyYXZlZW5hK2d5YW5Ac2luZ3N5cy5jb20=', '2018-09-26 12:48:19', NULL),
(333, 146, 'email', 'MTQ2IyNhbmtpdGphaXN3YWwraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-10-01 07:34:56', NULL),
(334, 146, 'mobile', '230046', '2018-10-01 07:36:57', NULL),
(336, 147, 'email', 'MTQ3IyNhbmtpdGphaXN3YWwraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-10-01 08:08:20', NULL),
(339, 148, 'email', 'MTQ4IyNhbmtpdGphaXN3YWwrY29ycG9yYXRlQHNpbmdzeXMuY29t', '2018-10-01 08:16:06', NULL),
(340, 149, 'email', 'MTQ5IyNyYWpuZWVzaEBzaW5nc3lzLmNvbQ==', '2018-10-03 02:44:56', NULL),
(342, 150, 'email', 'MTUwIyNyYWpuZWVzaCsyQHNpbmdzeXMuY29t', '2018-10-03 03:53:18', NULL),
(351, 150, 'mobile', '690532', '2018-10-03 03:55:24', NULL),
(353, 151, 'email', 'MTUxIyNyYWpuZWVzaCtyakBzaW5nc3lzLmNvbQ==', '2018-10-03 04:24:39', NULL),
(355, 151, 'mobile', '623051', '2018-10-03 04:24:52', NULL),
(356, 152, 'email', 'MTUyIyNyYWpuZWVzaCsxQHNpbmdzeXMuY29t', '2018-10-03 09:52:22', NULL),
(363, 152, 'mobile', '807704', '2018-10-03 10:03:52', NULL),
(364, 153, 'mobile', '540426', '2018-10-04 11:57:01', NULL),
(365, 153, 'email', 'MTUzIyNyYWpuZWVzaCtya0BzaW5nc3lzLmNvbQ==', '2018-10-04 11:57:01', NULL),
(366, 154, 'mobile', '391013', '2018-10-04 09:32:57', NULL),
(367, 154, 'email', 'MTU0IyNyYWpuZWVzaCsxMDBAc2luZ3N5cy5jb20=', '2018-10-04 09:32:57', NULL),
(369, 155, 'email', 'MTU1IyNyYWpuZWVzaCswMEBzaW5nc3lzLmNvbQ==', '2018-10-05 12:29:19', NULL),
(371, 156, 'email', 'MTU2IyNyYWpuZWVzaCswMDBAc2luZ3N5cy5jb20=', '2018-10-05 12:41:50', NULL),
(374, 157, 'email', 'MTU3IyNhbmtpdGphaXN3YWwrdGNzQHNpbmdzeXMuY29t', '2018-10-05 03:59:08', NULL),
(378, 158, 'email', 'MTU4IyNhbmtpdGphaXN3YWwraW50ZWxAc2luZ3N5cy5jb20=', '2018-10-05 08:29:40', NULL),
(379, 159, 'email', 'MTU5IyNsb25nZHJhZ29uX2xraEB5YWhvby5jb20=', '2018-10-08 12:31:24', NULL),
(381, 160, 'email', 'MTYwIyN2aXZla2t1bWFyK2luQHNpbmdzeXMuY29t', '2018-10-08 01:13:21', NULL),
(383, 161, 'email', 'MTYxIyNwcmF0ZWVrQHNpbmdzeXMuY29t', '2018-10-30 11:45:04', NULL),
(385, 162, 'email', 'MTYyIyNzYW5kZWVwK2luZGl2aWR1YWxAc2luZ3N5cy5jb20=', '2018-10-31 06:44:58', NULL),
(387, 163, 'email', 'MTYzIyNzYW5kZWVwK2NvcnBvcmF0ZUBzaW5nc3lzLmNvbQ==', '2018-10-31 07:11:46', NULL),
(389, 164, 'email', 'MTY0IyNzYW5kZWVwK2NvcnBvcmF0ZUBzaW5nc3lzLmNvbQ==', '2018-10-31 07:27:02', NULL),
(392, 165, 'email', 'MTY1IyN2aXZla2t1bWFyK2FiQHNpbmdzeXMuY29t', '2018-11-15 12:08:48', NULL),
(393, 166, 'mobile', '769014', '2018-11-16 01:45:34', NULL),
(394, 166, 'email', 'MTY2IyNjaGV0YW5kZWVwK2kxQHNpbmdzeXMuY29t', '2018-11-16 01:45:34', NULL),
(395, 167, 'mobile', '583693', '2018-11-16 01:47:48', NULL),
(396, 167, 'email', 'MTY3IyNjaGV0YW5kZWVwK2kyQHNpbmdzeXMuY29t', '2018-11-16 01:47:48', NULL),
(397, 168, 'mobile', '431403', '2018-11-16 01:50:54', NULL),
(398, 168, 'email', 'MTY4IyNjaGV0YW5kZWVwK2NvbXAxQHNpbmdzeXMuY29t', '2018-11-16 01:50:54', NULL),
(400, 169, 'email', 'MTY5IyN2aXZla2t1bWFyK3N0Z0BzaW5nc3lzLmNvbQ==', '2018-11-19 11:58:41', NULL),
(402, 170, 'email', 'MTcwIyN2aXZla2t1bWFyK2luMUBzaW5nc3lzLmNvbQ==', '2018-11-19 12:31:56', NULL),
(404, 171, 'email', 'MTcxIyN2aXZla2t1bWFyK2luZXdAc2luZ3N5cy5jb20=', '2018-11-19 03:26:21', NULL),
(406, 172, 'email', 'MTcyIyN2aXZla2t1bWFyK2NuZXdAc2luZ3N5cy5jb20=', '2018-11-19 03:33:42', NULL),
(407, 173, 'mobile', '969309', '2018-11-19 08:43:02', NULL),
(408, 173, 'email', 'MTczIyNyYWpuZWVzaCtjdEBzaW5nc3lzLmNvbQ==', '2018-11-19 08:43:02', NULL),
(410, 174, 'email', 'MTc0IyN2aXZla2t1bWFyK2N5QHNpbmdzeXMuY29t', '2018-11-23 12:22:16', NULL),
(412, 175, 'email', 'MTc1IyN2aXZla2t1bWFyK2lsQHNpbmdzeXMuY29t', '2018-11-23 12:22:25', NULL),
(413, 176, 'mobile', '946463', '2018-11-23 12:56:34', NULL),
(414, 176, 'email', 'MTc2IyNhYmNAZ21haWwuY29t', '2018-11-23 12:56:34', NULL),
(416, 177, 'email', 'MTc3IyN2aXZla2t1bWFyKzEyMkBzaW5nc3lzLmNvbQ==', '2018-11-23 02:31:11', NULL),
(418, 178, 'email', 'MTc4IyNhbmt1c2graW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-11-23 05:28:12', NULL),
(419, 179, 'email', 'MTc5IyN2aXZla2t1bWFyK25jdXNlckBzaW5nc3lzLmNvbQ==', '2018-11-26 03:06:47', NULL),
(423, 180, 'email', 'MTgwIyN2aXZla2t1bWFyK2lhYmhpQHNpbmdzeXMuY29t', '2018-11-26 03:21:40', NULL),
(425, 181, 'email', 'MTgxIyNwdXNocGVuZHJhQHNpbmdzeXMuY29t', '2018-11-26 05:58:17', NULL),
(426, 182, 'mobile', '528094', '2018-11-27 05:53:19', NULL),
(427, 182, 'email', 'MTgyIyNhbWl0dmVybWEraW5kQHNpbmdzeXMuY29t', '2018-11-27 05:53:19', NULL),
(428, 183, 'mobile', '964303', '2018-11-27 05:58:23', NULL),
(429, 183, 'email', 'MTgzIyNhbWl0dmVybWErY29tcEBzaW5nc3lzLmNvbQ==', '2018-11-27 05:58:23', NULL),
(430, 184, 'mobile', '971051', '2018-11-27 08:50:54', NULL),
(431, 184, 'email', 'MTg0IyNhbWl0dmVybWErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-11-27 08:50:54', NULL),
(432, 185, 'mobile', '281551', '2018-11-29 09:31:15', NULL),
(433, 185, 'email', 'MTg1IyNnYXVyYXZAc2luZ3N5cy5jb20=', '2018-11-29 09:31:15', NULL),
(434, 187, 'email', 'MTg3IyNhbWl0dmVybWFAc2luZ3N5cy5jb20=', '2018-11-30 06:33:38', NULL),
(435, 188, 'email', 'MTg4IyNhbWl0dmVybWErMUBzaW5nc3lzLmNvbQ==', '2018-11-30 06:34:51', NULL),
(436, 189, 'mobile', '930114', '2018-12-04 05:23:44', NULL),
(437, 189, 'email', 'MTg5IyNjaGV0YW5kZWVwK2RlY0BzaW5nc3lzLmNvbQ==', '2018-12-04 05:23:44', NULL),
(438, 190, 'mobile', '703046', '2018-12-07 01:16:05', NULL),
(439, 190, 'email', 'MTkwIyN2aXZla2t1bWFyK3QxQHNpbmdzeXMuY29t', '2018-12-07 01:16:05', NULL),
(440, 191, 'mobile', '231803', '2018-12-07 01:17:42', NULL),
(441, 191, 'email', 'MTkxIyN2aXZla2t1bWFyK3QyQHNpbmdzeXMuY29t', '2018-12-07 01:17:42', NULL),
(442, 192, 'mobile', '438061', '2018-12-07 01:18:45', NULL),
(443, 192, 'email', 'MTkyIyN2aXZla2t1bWFyK3QzQHNpbmdzeXMuY29t', '2018-12-07 01:18:45', NULL),
(444, 193, 'mobile', '394860', '2018-12-07 01:19:45', NULL),
(445, 193, 'email', 'MTkzIyN2aXZla2t1bWFyK3Q0QHNpbmdzeXMuY29t', '2018-12-07 01:19:45', NULL),
(446, 194, 'mobile', '605247', '2018-12-07 01:21:23', NULL),
(447, 194, 'email', 'MTk0IyN2aXZla2t1bWFyK2NhMUBzaW5nc3lzLmNvbQ==', '2018-12-07 01:21:23', NULL),
(448, 195, 'mobile', '401322', '2018-12-07 01:22:44', NULL),
(449, 195, 'email', 'MTk1IyN2aXZla2t1bWFyK2NhMkBzaW5nc3lzLmNvbQ==', '2018-12-07 01:22:44', NULL),
(450, 196, 'mobile', '533447', '2018-12-07 01:24:07', NULL),
(451, 196, 'email', 'MTk2IyN2aXZla2t1bWFyK2NhM0BzaW5nc3lzLmNvbQ==', '2018-12-07 01:24:07', NULL),
(452, 197, 'mobile', '318494', '2018-12-07 01:26:34', NULL),
(453, 197, 'email', 'MTk3IyN2aXZla2t1bWFyK2NhNEBzaW5nc3lzLmNvbQ==', '2018-12-07 01:26:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_work_experience`
--

CREATE TABLE `user_work_experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_job_status` enum('CURRENTLY WORKING','LEFT','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_work_experience`
--

INSERT INTO `user_work_experience` (`id`, `user_id`, `company_name`, `job_title`, `industry`, `start_month`, `start_year`, `end_month`, `end_year`, `current_job_status`, `created_at`, `updated_at`) VALUES
(30, 36, 'Dubey & Sons', 'Engineer', 'IT', 'February', '2011', 'February', '2017', 'LEFT', '2018-04-10 09:43:53', '2018-06-02 16:28:16'),
(32, 39, 'Dubey & Sons', 'Eng', 'indi', 'April', '2006', 'April', '2008', 'LEFT', '2018-04-10 11:56:48', '2018-06-19 19:15:58'),
(35, 44, 'Dubey & Sons', 'Eng', 'IT', 'February', '2010', 'null', 'null', 'CURRENTLY WORKING', '2018-04-10 13:56:45', '2018-06-02 15:52:39'),
(37, 48, 'Legal Analytics', 'Senior Software Engineer', 'IT Industry', 'July', '2017', 'null', 'null', 'CURRENTLY WORKING', '2018-04-21 11:01:56', '2018-06-22 01:09:22'),
(45, 63, 'Dubey & Sons', 'Analyst', 'IT', 'March', '2018', 'null', 'null', 'CURRENTLY WORKING', '2018-05-11 14:16:39', '2018-06-04 15:47:18'),
(48, 74, 'Dubey & Sons', 'Test Engineer', 'Payment domain', 'March', '2017', 'null', 'null', 'CURRENTLY WORKING', '2018-05-22 12:09:28', '2018-08-11 14:15:11'),
(49, 77, 'Dubey & Sons', 'Eng', 'IT', 'January', '2018', 'null', 'null', 'CURRENTLY WORKING', '2018-05-23 16:18:25', '2018-05-23 16:41:26'),
(52, 81, 'Dubey & Sons', 'Analyst', 'IT', 'June', '2017', 'null', 'null', 'CURRENTLY WORKING', '2018-06-02 13:26:24', '2018-06-19 14:23:08'),
(53, 83, '360', 'Engineer', 'IT', 'October', '2009', 'null', 'null', 'CURRENTLY WORKING', '2018-06-02 17:20:49', '2018-07-12 20:21:43'),
(54, 87, 'Singsys', 'Test', NULL, 'January', '2011', ' ', 'null', 'CURRENTLY WORKING', '2018-06-04 14:52:28', NULL),
(58, 89, 'Dubey & Sons', 'BD', 'IT', 'January', '2001', 'null', 'null', 'CURRENTLY WORKING', '2018-07-12 12:30:23', '2018-07-12 13:18:57'),
(59, 90, 'Dubey & Sons', 'BE', NULL, 'July', '2008', ' ', 'null', 'CURRENTLY WORKING', '2018-07-12 17:10:05', NULL),
(62, 96, 'Mastercard', 'Eng', 'Software', 'January', '2017', 'January', '2018', 'LEFT', '2018-07-31 12:50:06', '2018-08-09 15:29:58'),
(65, 104, 'Testing', 'Test Purpose', 'Something', 'May', '2014', 'null', 'null', 'CURRENTLY WORKING', '2018-07-31 20:30:37', '2018-08-10 20:13:10'),
(71, 112, 'Jll', 'BE', NULL, 'May', '2018', ' ', 'null', 'CURRENTLY WORKING', '2018-08-01 19:31:14', NULL),
(76, 108, 'Dubey & Sons', 'BE', 'Hardware', 'June', '2012', 'July', '2016', 'LEFT', NULL, '2018-08-02 21:44:06'),
(77, 59, 'Singsys', 'Developer', 'Singsys Pvt  Ltd', 'November', '2006', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(78, 117, 'Singsys', 'Developer', 'Singsys Pvt  Ltd', 'May', '2014', 'April', '2015', 'LEFT', NULL, NULL),
(80, 121, 'Amdocs', 'BDE', 'IT', 'April', '2017', 'null', 'null', 'CURRENTLY WORKING', '2018-08-09 14:05:54', '2018-08-11 19:30:38'),
(81, 48, 'Wipro Technology', 'Business Analyst', 'Corporate', 'January', '2017', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(82, 123, 'SAF', 'business ka kia', NULL, 'July', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-08-12 22:06:52', NULL),
(83, 126, 'Intel', 'Senior Web Developer', NULL, 'April', '2017', ' ', 'null', 'CURRENTLY WORKING', '2018-08-21 19:03:52', NULL),
(84, 137, 'Wilhyt Technology', 'Front End Developer', NULL, 'May', '2014', ' ', 'null', 'CURRENTLY WORKING', '2018-09-07 15:01:25', NULL),
(86, 140, '360 Reference', 'Admin', NULL, 'March', '2012', ' ', 'null', 'CURRENTLY WORKING', '2018-09-08 20:56:32', NULL),
(87, 144, 'Metal Works', 'Senior Web Developer', NULL, 'May', '2018', ' ', 'null', 'CURRENTLY WORKING', '2018-09-24 14:45:10', NULL),
(90, 147, 'Rajneesh Company', 'Civil Engineers', 'Civil', 'March', '2003', 'March', '2008', 'LEFT', NULL, '2018-10-05 20:14:17'),
(99, 74, 'ssstss', 'dubey industries', 'industr', 'July', '2003', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(100, 93, 'Singsys Pvt. Ltd', 'Privacy Policy', 'HTML', 'January', '2016', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(101, 154, 'frrtt', 'erer', NULL, 'March', '2003', 'June', '2014', 'LEFT', '2018-10-04 21:32:55', NULL),
(106, 57, 'Dubey & Sons', 'Engineer', 'IT', 'January', '2017', 'null', 'null', 'CURRENTLY WORKING', NULL, '2018-10-05 15:22:10'),
(107, 158, 'Intel Corporate', 'Engineer', NULL, 'February', '2018', ' ', 'null', 'CURRENTLY WORKING', '2018-10-05 20:29:38', NULL),
(108, 140, 'UOB', 'SVP', 'Banking and Finance', 'July', '2014', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(110, 160, 'ASD', 'newjob', 'New', 'August', '2016', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(111, 161, 'Singsys', 'GM', NULL, 'June', '2014', ' ', 'null', 'CURRENTLY WORKING', '2018-10-30 23:45:02', NULL),
(112, 161, 'BA', 'BA', 'Software', 'July', '2013', 'June', '2014', 'LEFT', NULL, NULL),
(113, 162, 'Singsys', 'Manager', NULL, 'January', '2010', ' ', 'null', 'CURRENTLY WORKING', '2018-10-31 18:44:55', NULL),
(115, 166, 'c1', 'j1', NULL, 'February', '2012', ' ', 'null', 'CURRENTLY WORKING', '2018-11-16 13:45:32', NULL),
(116, 167, 'c2', 'j2', NULL, 'February', '2010', 'June', '2017', 'LEFT', '2018-11-16 13:47:46', NULL),
(118, 171, 'CompNew', 'Testing', NULL, 'March', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-11-19 15:26:18', NULL),
(119, 175, 'no comp', 'Testing', NULL, 'April', '2015', ' ', 'null', 'CURRENTLY WORKING', '2018-11-23 12:22:23', NULL),
(120, 177, 'mnbvc', 'asdfg', NULL, 'June', '2015', ' ', 'null', 'CURRENTLY WORKING', '2018-11-23 14:31:09', NULL),
(121, 178, 'Singsys', 'Manager', NULL, 'January', '2012', ' ', 'null', 'CURRENTLY WORKING', '2018-11-23 17:28:11', NULL),
(122, 182, 'Singsys', 'SE', NULL, 'February', '2003', ' ', 'null', 'CURRENTLY WORKING', '2018-11-27 17:53:17', NULL),
(123, 181, 'Singsys corporate', 'Engineer', 'IT', 'February', '2011', 'February', '2017', 'CURRENTLY WORKING', '2018-04-10 09:43:53', '2018-06-02 16:28:16'),
(124, 189, 'dec COMPANY NAME', 'dec title job', NULL, 'October', '2003', ' ', 'null', 'CURRENTLY WORKING', '2018-12-04 17:23:42', NULL),
(125, 194, 'NewCompany1', 'Tester', NULL, 'November', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-12-07 13:21:22', NULL),
(126, 195, 'azxcv', 'abcd', NULL, 'February', '2016', 'May', '2017', 'LEFT', '2018-12-07 13:22:43', NULL),
(127, 196, 'Cooom', 'qaplok', NULL, 'May', '2015', ' ', 'null', 'CURRENTLY WORKING', '2018-12-07 13:24:06', NULL),
(128, 197, 'ghtuyiu', 'thyiuf', NULL, 'August', '2011', ' ', 'null', 'CURRENTLY WORKING', '2018-12-07 13:26:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us_banner`
--
ALTER TABLE `about_us_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_detail`
--
ALTER TABLE `banner_detail`
  ADD PRIMARY KEY (`banner_detail_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_sender_id_index` (`sender_id`),
  ADD KEY `chat_receiver_id_index` (`receiver_id`);

--
-- Indexes for table `chat_group`
--
ALTER TABLE `chat_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_group_user`
--
ALTER TABLE `chat_group_user`
  ADD PRIMARY KEY (`chat_group_user_id`);

--
-- Indexes for table `chat_status`
--
ALTER TABLE `chat_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_admins`
--
ALTER TABLE `company_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_admins_company_user_id_index` (`company_user_id`),
  ADD KEY `company_admins_admin_user_id_index` (`admin_user_id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_profile_user_id_foreign` (`user_id`),
  ADD KEY `company_profile_user_id_index` (`user_id`);

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connection_connected_to_foreign` (`connected_to`),
  ADD KEY `connection_user_id_index` (`user_id`);

--
-- Indexes for table `contact_personnel`
--
ALTER TABLE `contact_personnel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_personnel_email_unique` (`email`),
  ADD UNIQUE KEY `contact_personnel_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `contact_personnel_fax_unique` (`fax`),
  ADD UNIQUE KEY `contact_personnel_skype_unique` (`skype`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_us_id`);

--
-- Indexes for table `contact_us_reply`
--
ALTER TABLE `contact_us_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_us_id` (`contact_us_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `credit_transaction_detail`
--
ALTER TABLE `credit_transaction_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_transaction_detail_user_id_index` (`user_id`),
  ADD KEY `credit_transaction_detail_transaction_id_index` (`transaction_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `get360`
--
ALTER TABLE `get360`
  ADD PRIMARY KEY (`id`),
  ADD KEY `get360_invited_by_index` (`invited_by`),
  ADD KEY `get360_invited_to_index` (`invited_to`);

--
-- Indexes for table `home_page_slider`
--
ALTER TABLE `home_page_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_it_works`
--
ALTER TABLE `how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_self_rating`
--
ALTER TABLE `individual_self_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `individual_self_rating_user_id_index` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_id_index` (`id`),
  ADD KEY `jobs_corporate_id_index` (`corporate_id`);

--
-- Indexes for table `jobs_applied`
--
ALTER TABLE `jobs_applied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_applied_job_id_index` (`job_id`),
  ADD KEY `jobs_applied_user_id_index` (`user_id`);

--
-- Indexes for table `jobs_viewed`
--
ALTER TABLE `jobs_viewed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_viewed_job_id_index` (`job_id`),
  ADD KEY `jobs_viewed_user_id_index` (`user_id`);

--
-- Indexes for table `job_attributes`
--
ALTER TABLE `job_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_attributes_job_id_index` (`job_id`),
  ADD KEY `job_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `job_candidate_log`
--
ALTER TABLE `job_candidate_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_candidate_log_job_id_index` (`job_id`),
  ADD KEY `job_candidate_log_user_id_index` (`user_id`);

--
-- Indexes for table `job_credits`
--
ALTER TABLE `job_credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_credits_user_id_index` (`user_id`);

--
-- Indexes for table `job_credit_log`
--
ALTER TABLE `job_credit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_credit_log_job_id_index` (`job_id`),
  ADD KEY `job_credit_log_user_id_index` (`user_id`);

--
-- Indexes for table `job_log`
--
ALTER TABLE `job_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_log_job_id_index` (`job_id`),
  ADD KEY `job_log_user_id_index` (`user_id`);

--
-- Indexes for table `job_matching_log`
--
ALTER TABLE `job_matching_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_matching_log_job_id_index` (`job_id`),
  ADD KEY `job_matching_log_user_id_index` (`user_id`),
  ADD KEY `job_matching_log_profile_id_index` (`profile_id`);

--
-- Indexes for table `job_recommendation`
--
ALTER TABLE `job_recommendation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_recommendation_job_id_index` (`job_id`),
  ADD KEY `job_recommendation_user_id_index` (`user_id`);

--
-- Indexes for table `keyword_management`
--
ALTER TABLE `keyword_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newly_added_user`
--
ALTER TABLE `newly_added_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newly_added_user_new_user_id_index` (`new_user_id`),
  ADD KEY `newly_added_user_user_id_index` (`user_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_sender_id_foreign` (`sender_id`),
  ADD KEY `notifications_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `notification_template`
--
ALTER TABLE `notification_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operating_hours`
--
ALTER TABLE `operating_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operating_hours_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`password_resets_id`),
  ADD KEY `password_reset_user_id_foreign` (`user_id`);

--
-- Indexes for table `pending_same_company_notifications`
--
ALTER TABLE `pending_same_company_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pending_same_company_notifications_user_id_foreign` (`user_id`),
  ADD KEY `pending_same_company_notifications_user_id_index` (`user_id`);

--
-- Indexes for table `profile_analytics`
--
ALTER TABLE `profile_analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_analytics_profile_id_index` (`profile_id`),
  ADD KEY `profile_analytics_user_id_index` (`user_id`);

--
-- Indexes for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_views_profile_id_index` (`profile_id`),
  ADD KEY `profile_views_user_id_index` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_reference_id_index` (`reference_id`),
  ADD KEY `ratings_question_id_index` (`question_id`);

--
-- Indexes for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_and_reviews_user_id_index` (`user_id`),
  ADD KEY `ratings_and_reviews_rated_to_index` (`rated_to`),
  ADD KEY `ratings_and_reviews_rating_usertype_index` (`rating_usertype`);

--
-- Indexes for table `rating_credit_log`
--
ALTER TABLE `rating_credit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_invite`
--
ALTER TABLE `rating_invite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_invite_invited_by_index` (`invited_by`),
  ADD KEY `rating_invite_invited_to_index` (`invited_to`);

--
-- Indexes for table `rating_questions`
--
ALTER TABLE `rating_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_questions_rating_usertype_id_foreign` (`rating_usertype_id`);

--
-- Indexes for table `rating_threshold`
--
ALTER TABLE `rating_threshold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_usertype`
--
ALTER TABLE `rating_usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reference_id_index` (`reference_id`);

--
-- Indexes for table `reviews_on_hold`
--
ALTER TABLE `reviews_on_hold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_on_hold_reference_id_index` (`reference_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `search_log`
--
ALTER TABLE `search_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_log_user_id_index` (`user_id`),
  ADD KEY `search_log_search_keyword_index` (`search_keyword`);

--
-- Indexes for table `services_offered`
--
ALTER TABLE `services_offered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_offered_user_id_foreign` (`user_id`),
  ADD KEY `services_offered_user_id_index` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shortlisted_profiles`
--
ALTER TABLE `shortlisted_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shortlisted_profiles_user_id_index` (`user_id`),
  ADD KEY `shortlisted_profiles_job_id_index` (`job_id`),
  ADD KEY `shortlisted_profiles_corporate_id_index` (`corporate_id`);

--
-- Indexes for table `staff_priority`
--
ALTER TABLE `staff_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_contents`
--
ALTER TABLE `static_contents`
  ADD PRIMARY KEY (`static_content_id`);

--
-- Indexes for table `strength`
--
ALTER TABLE `strength`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_index` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_user_id_index` (`user_id`),
  ADD KEY `transaction_details_transaction_id_index` (`transaction_id`);

--
-- Indexes for table `unregistered_invite`
--
ALTER TABLE `unregistered_invite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unregistered_invite_user_id_index` (`user_id`);

--
-- Indexes for table `unregistered_job_recommendation`
--
ALTER TABLE `unregistered_job_recommendation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unregistered_job_recommendation_user_id_index` (`user_id`),
  ADD KEY `unregistered_job_recommendation_job_id_index` (`job_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_account_type_id_foreign` (`account_type_id`),
  ADD KEY `users_country_id_index` (`country_id`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `users_attributes`
--
ALTER TABLE `users_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_attributes_attribute_id_index` (`attribute_id`),
  ADD KEY `users_attributes_user_id_index` (`user_id`);

--
-- Indexes for table `user_account_types`
--
ALTER TABLE `user_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_education`
--
ALTER TABLE `user_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_education_user_id_foreign` (`user_id`),
  ADD KEY `user_education_country_id_index` (`country_id`),
  ADD KEY `user_education_user_id_index` (`user_id`);

--
-- Indexes for table `user_industries`
--
ALTER TABLE `user_industries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_industries_user_id_foreign` (`user_id`),
  ADD KEY `user_industries_user_id_index` (`user_id`);

--
-- Indexes for table `user_profile_logs`
--
ALTER TABLE `user_profile_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_logs_user_id_index` (`user_id`);

--
-- Indexes for table `user_strengths`
--
ALTER TABLE `user_strengths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_strengths_user_id_foreign` (`user_id`),
  ADD KEY `user_strengths_user_id_index` (`user_id`);

--
-- Indexes for table `user_verification`
--
ALTER TABLE `user_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verification_user_id_index` (`user_id`);

--
-- Indexes for table `user_work_experience`
--
ALTER TABLE `user_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_work_experience_user_id_foreign` (`user_id`),
  ADD KEY `user_work_experience_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `about_us_banner`
--
ALTER TABLE `about_us_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_detail`
--
ALTER TABLE `banner_detail`
  MODIFY `banner_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `chat_group`
--
ALTER TABLE `chat_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_group_user`
--
ALTER TABLE `chat_group_user`
  MODIFY `chat_group_user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_status`
--
ALTER TABLE `chat_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_admins`
--
ALTER TABLE `company_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `contact_personnel`
--
ALTER TABLE `contact_personnel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contact_us_reply`
--
ALTER TABLE `contact_us_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `credit_transaction_detail`
--
ALTER TABLE `credit_transaction_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `get360`
--
ALTER TABLE `get360`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `home_page_slider`
--
ALTER TABLE `home_page_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `individual_self_rating`
--
ALTER TABLE `individual_self_rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jobs_applied`
--
ALTER TABLE `jobs_applied`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs_viewed`
--
ALTER TABLE `jobs_viewed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_attributes`
--
ALTER TABLE `job_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `job_candidate_log`
--
ALTER TABLE `job_candidate_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_credits`
--
ALTER TABLE `job_credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_credit_log`
--
ALTER TABLE `job_credit_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_log`
--
ALTER TABLE `job_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_matching_log`
--
ALTER TABLE `job_matching_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_recommendation`
--
ALTER TABLE `job_recommendation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keyword_management`
--
ALTER TABLE `keyword_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `newly_added_user`
--
ALTER TABLE `newly_added_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1219;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `notification_template`
--
ALTER TABLE `notification_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `operating_hours`
--
ALTER TABLE `operating_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `password_resets_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pending_same_company_notifications`
--
ALTER TABLE `pending_same_company_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `profile_analytics`
--
ALTER TABLE `profile_analytics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;

--
-- AUTO_INCREMENT for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `rating_credit_log`
--
ALTER TABLE `rating_credit_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_invite`
--
ALTER TABLE `rating_invite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `rating_questions`
--
ALTER TABLE `rating_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `rating_threshold`
--
ALTER TABLE `rating_threshold`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rating_usertype`
--
ALTER TABLE `rating_usertype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `reviews_on_hold`
--
ALTER TABLE `reviews_on_hold`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `search_log`
--
ALTER TABLE `search_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `services_offered`
--
ALTER TABLE `services_offered`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shortlisted_profiles`
--
ALTER TABLE `shortlisted_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staff_priority`
--
ALTER TABLE `staff_priority`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `static_contents`
--
ALTER TABLE `static_contents`
  MODIFY `static_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `strength`
--
ALTER TABLE `strength`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `unregistered_invite`
--
ALTER TABLE `unregistered_invite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `unregistered_job_recommendation`
--
ALTER TABLE `unregistered_job_recommendation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `users_attributes`
--
ALTER TABLE `users_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `user_account_types`
--
ALTER TABLE `user_account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_industries`
--
ALTER TABLE `user_industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_profile_logs`
--
ALTER TABLE `user_profile_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2685;

--
-- AUTO_INCREMENT for table `user_strengths`
--
ALTER TABLE `user_strengths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `user_verification`
--
ALTER TABLE `user_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `user_work_experience`
--
ALTER TABLE `user_work_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_admins`
--
ALTER TABLE `company_admins`
  ADD CONSTRAINT `company_admins_admin_user_id_foreign` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_admins_company_user_id_foreign` FOREIGN KEY (`company_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD CONSTRAINT `company_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `connection`
--
ALTER TABLE `connection`
  ADD CONSTRAINT `connection_connected_to_foreign` FOREIGN KEY (`connected_to`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connection_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `credit_transaction_detail`
--
ALTER TABLE `credit_transaction_detail`
  ADD CONSTRAINT `credit_transaction_detail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `get360`
--
ALTER TABLE `get360`
  ADD CONSTRAINT `get360_invited_by_foreign` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `get360_invited_to_foreign` FOREIGN KEY (`invited_to`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `individual_self_rating`
--
ALTER TABLE `individual_self_rating`
  ADD CONSTRAINT `individual_self_rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_corporate_id_foreign` FOREIGN KEY (`corporate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs_applied`
--
ALTER TABLE `jobs_applied`
  ADD CONSTRAINT `jobs_applied_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_applied_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs_viewed`
--
ALTER TABLE `jobs_viewed`
  ADD CONSTRAINT `jobs_viewed_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_viewed_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_attributes`
--
ALTER TABLE `job_attributes`
  ADD CONSTRAINT `job_attributes_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_credits`
--
ALTER TABLE `job_credits`
  ADD CONSTRAINT `job_credits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_log`
--
ALTER TABLE `job_log`
  ADD CONSTRAINT `job_log_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_recommendation`
--
ALTER TABLE `job_recommendation`
  ADD CONSTRAINT `job_recommendation_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_recommendation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newly_added_user`
--
ALTER TABLE `newly_added_user`
  ADD CONSTRAINT `newly_added_user_new_user_id_foreign` FOREIGN KEY (`new_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `newly_added_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD CONSTRAINT `notification_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `operating_hours`
--
ALTER TABLE `operating_hours`
  ADD CONSTRAINT `operating_hours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD CONSTRAINT `password_reset_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pending_same_company_notifications`
--
ALTER TABLE `pending_same_company_notifications`
  ADD CONSTRAINT `pending_same_company_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_analytics`
--
ALTER TABLE `profile_analytics`
  ADD CONSTRAINT `profile_analytics_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `profile_analytics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD CONSTRAINT `profile_views_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `profile_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  ADD CONSTRAINT `ratings_and_reviews_rated_to_foreign` FOREIGN KEY (`rated_to`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_and_reviews_rating_usertype_foreign` FOREIGN KEY (`rating_usertype`) REFERENCES `rating_usertype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_and_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_invite`
--
ALTER TABLE `rating_invite`
  ADD CONSTRAINT `rating_invite_invited_by_foreign` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_questions`
--
ALTER TABLE `rating_questions`
  ADD CONSTRAINT `rating_questions_rating_usertype_id_foreign` FOREIGN KEY (`rating_usertype_id`) REFERENCES `rating_usertype` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `ratings_and_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews_on_hold`
--
ALTER TABLE `reviews_on_hold`
  ADD CONSTRAINT `reviews_on_hold_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `ratings_and_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services_offered`
--
ALTER TABLE `services_offered`
  ADD CONSTRAINT `services_offered_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shortlisted_profiles`
--
ALTER TABLE `shortlisted_profiles`
  ADD CONSTRAINT `shortlisted_profiles_corporate_id_foreign` FOREIGN KEY (`corporate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shortlisted_profiles_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shortlisted_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unregistered_invite`
--
ALTER TABLE `unregistered_invite`
  ADD CONSTRAINT `unregistered_invite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unregistered_job_recommendation`
--
ALTER TABLE `unregistered_job_recommendation`
  ADD CONSTRAINT `unregistered_job_recommendation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `user_account_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_attributes`
--
ALTER TABLE `users_attributes`
  ADD CONSTRAINT `users_attributes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_education`
--
ALTER TABLE `user_education`
  ADD CONSTRAINT `user_education_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_education_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_industries`
--
ALTER TABLE `user_industries`
  ADD CONSTRAINT `user_industries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_logs`
--
ALTER TABLE `user_profile_logs`
  ADD CONSTRAINT `user_profile_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_strengths`
--
ALTER TABLE `user_strengths`
  ADD CONSTRAINT `user_strengths_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_work_experience`
--
ALTER TABLE `user_work_experience`
  ADD CONSTRAINT `user_work_experience_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
