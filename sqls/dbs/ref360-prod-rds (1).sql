-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: ref360-prod-rds.cyl8k3bgy8zk.ap-southeast-1.rds.amazonaws.com
-- Generation Time: Jan 18, 2019 at 04:36 AM
-- Server version: 5.7.22-log
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
-- Database: `ref360-prod-rds`
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
(1, 'Our Mission', '<p>We</p>\r\n\r\n<p>1) <strong>Empower individuals</strong> to give and gather 360 feedback, on and from co-workers and service providers</p>\r\n\r\n<p>2) <strong>Encourage&nbsp;positive change </strong>in <strong>workplace culture</strong> through greater transparency&nbsp;</p>\r\n\r\n<p>3) <strong>Matchmake&nbsp;individuals</strong> and <strong>companies</strong> according to their needs, wants, and likes&nbsp;</p>', '2018-08-13 15:34:18'),
(2, 'Our Vision', '<p><strong>You cannot choose your family, but you can choose the company you work in&nbsp;and the people you work with.</strong>&nbsp;</p>\r\n\r\n<p>The best people in office haven&#39;t always stood out. Some better at posturing or politics have won.&nbsp;</p>\r\n\r\n<p>It&#39;s time for a revolution. We say&nbsp;<em>Out with posturing and office politics. In with transparency, productivity and happiness at work.</em></p>\r\n\r\n<p>Join this revolution by giving and getting 360! reviews and ratings. More 360! reviews and ratings will likely lead to more transparency and accountability. Hopepfully this will give rise to positive change work cultures.&nbsp;</p>\r\n\r\n<p>If you are an employee, choose the place you want to work in and the people you work with. The feedback that other people give on 360 Reference will help you understand the potential organisation, manager, peers and team members&nbsp;that you will work with.&nbsp;</p>\r\n\r\n<p>If you are a&nbsp;corporate, you will be able to recognise and reward the correct people internally. Better and more relevant background information will help you find external candidates that are aligned with your corporate values and desired key attributes.&nbsp;</p>\r\n\r\n<p>If you are a customer, choose&nbsp;the best service provider to serve you.&nbsp;</p>', '2018-08-13 15:38:17'),
(3, 'Who We Are', '<p>We are an online social media portal that works hard to collect and make sense of feedback on corporates, co-workers and service providers.&nbsp;</p>\r\n\r\n<p>Having worked in the corporate world and being frequent users of service providers, we have seen good, bad and ugly behaviour. We hope to engage you to take action in recognising&nbsp;the good, calling out the bad and weeding out the ugly.&nbsp;</p>\r\n\r\n<p>We stand for the values:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Customer orientation:&nbsp;All aspects of 360 Reference will put our customers&#39; satisfaction first</li>\r\n	<li>Diversity: Everyone is unique and such differences creates opportunity to learn from each other. There is a company for you. There is a boss for you. There are peers for you. There are subordinates for you. There are service providers for you. Help us find you the environment most ideal for you.&nbsp;</li>\r\n	<li>Action orientation: We are a young start up and constant actions are required improve. We will plug&nbsp;away to serve you better.&nbsp;</li>\r\n	<li>Respect: Do unto others as you would have them do unto you. Constructive feedback is welcome, but vicious personal vendetta will not be tolerated.</li>\r\n	<li>Innovation: We continue to look to solve real problems in a creative way.</li>\r\n</ol>', '2018-08-13 15:38:58');

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
(1, 'How we value add', 'crop_20180927185755.jpeg', 'ABOUT', '2018-09-27 18:58:00'),
(2, 'How It Works?', 'crop_20180901124515.png', 'HOW IT WORKS', '2018-09-01 12:45:18'),
(3, 'Frequently Asked Questions', 'crop_20180901124541.png', 'FAQ', '2018-09-01 12:45:45'),
(4, 'Get in touch', 'crop_20180901124412.png', 'CONTACT US', '2018-09-01 12:44:17'),
(5, 'Disclaimer', 'crop_20180901124705.png', 'DISCLAIMER', '2018-09-01 12:47:07'),
(6, 'Privacy Policy', 'crop_20180901124640.png', 'PRIVACY POLICY', '2018-09-01 12:46:42'),
(7, 'Term of Use', 'crop_20180901124615.png', 'TERMS OF USE', '2018-09-01 12:46:17'),
(8, 'Individual SignUp', 'crop_20180927185822.jpeg', 'INDIVIDUAL SIGNUP', '2018-09-27 18:58:25'),
(9, 'Company SignUp', 'crop_20180927185849.jpeg', 'COMPANY SIGNUP', '2018-09-27 18:58:50'),
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
(1, 0, 'hello', 2, 3, 'text', 'sent', 'active', 'active', '2018-10-06 15:08:16', '2018-10-06 15:08:16'),
(2, 0, 'Hello', 5, 11, 'text', 'sent', 'active', 'active', '2018-10-08 00:41:45', '2018-10-08 00:41:45'),
(3, 0, 'how are u', 5, 11, 'text', 'sent', 'active', 'active', '2018-10-08 00:41:48', '2018-10-08 00:41:48'),
(4, 0, 'hi', 18, 17, 'text', 'read', 'active', 'active', '2018-11-05 14:20:19', '2018-11-05 14:20:40');

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
(1, 18, 16, NULL, NULL);

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
(2, 3, 'Enclave City - North Bridge', 'This is testing description', 'www.singsys.com', '+91-987654321', 'raveena@singsys.com', NULL, '', 'https://www.youtube.com/embed/zNo7jQrCMMI', '226018', '2018-09-27 20:57:18', '2018-09-27 22:07:28'),
(3, 15, '', '', '', '', NULL, NULL, '', NULL, '', '2018-11-05 13:17:03', NULL),
(4, 18, 'Omaxe', 'Nothing special', 'https://www.google.com', '+91-8676913831', 'vivekkumar+c@singsys.com', NULL, 'crop_20181105135111.jpeg', 'https://www.youtube.com/embed/6lt2JfJdGSY', '226025', '2018-11-05 13:51:15', '2018-11-05 14:06:32');

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
(1, 2, 3, 'accepted', '', '2018-09-27 20:58:17', NULL),
(2, 7, 5, 'accepted', 'hi hi', '2018-09-28 23:47:44', NULL),
(3, 8, 5, 'accepted', '', '2018-09-29 15:30:06', NULL),
(4, 5, 2, 'accepted', 'Let\'s connect!', '2018-09-30 21:53:02', NULL),
(5, 5, 3, 'accepted', '', '2018-09-30 21:54:09', NULL),
(6, 13, 2, 'accepted', '', '2018-10-09 18:59:56', NULL),
(7, 12, 5, 'accepted', '', '2018-10-11 08:29:57', NULL),
(8, 12, 13, 'pending', 'Hello!', '2018-10-11 08:30:53', NULL),
(10, 18, 18, 'rejected', 'hello', '2018-11-05 15:33:06', NULL),
(11, 18, 22, 'pending', '', '2018-11-13 14:55:02', NULL),
(12, 18, 17, 'pending', '', '2018-11-13 14:57:14', NULL);

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
(1, 'Ms Tan SC', 'Founder', 'tansc@360reference.sg', '+65-64641234', '6564641234', '-', 'active', '2018-09-30 13:09:30');

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
(1, 'shiyin', 'ngshiyin@gmail.com', 'hi hi', '+65-94308815', '2018-09-28 16:13:16'),
(2, 'Raveena Nigam', 'raveena@singsys.com', 'This is for testing', '+91-23456789', '2018-10-11 08:01:44'),
(3, 'Raveena Nigam', 'raveena@singsys.com', 'This is for testing', '+91-23456789', '2018-10-11 08:03:34'),
(4, 'Raveena Nigam', 'raveena@singsys.com', 'Testing Description', '+91-7418523', '2018-12-24 10:12:45'),
(5, 'Raveena Nigam', 'raveena@singsys.com', 'Testing description', '+91-8529321', '2018-12-24 10:21:44');

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
(1, 1, 0, '2018-09-30 13:06:22');

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
(1, 18, 'ch_1DT6cTAbBGmUqZdo8SIFzKIW', 'stripe', 1, '5.00', 'succeeded', 'usd', 'ch_1DT6cTAbBGmUqZdo8SIFzKIW', 'succeeded', '{\"id\":\"ch_1DT6cTAbBGmUqZdo8SIFzKIW\",\"object\":\"charge\",\"amount\":500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DT6cTAbBGmUqZdoeGlu2PBI\",\"captured\":true,\"created\":1541418709,\"currency\":\"usd\",\"customer\":\"cus_DuwVpn1EgDyaWb\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":26,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DT6cTAbBGmUqZdo8SIFzKIW\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DT6cNAbBGmUqZdoFY29MR1r\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DuwVpn1EgDyaWb\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":4,\"exp_year\":2022,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivekkumar+n@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-05 19:51:49', NULL),
(2, 18, 'ch_1DVybgAbBGmUqZdo7bqIUjhN', 'stripe', 8, '40.00', 'succeeded', 'usd', 'ch_1DVybgAbBGmUqZdo7bqIUjhN', 'succeeded', '{\"id\":\"ch_1DVybgAbBGmUqZdo7bqIUjhN\",\"object\":\"charge\",\"amount\":4000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DVybgAbBGmUqZdo9Qm3ljt3\",\"captured\":true,\"created\":1542102892,\"currency\":\"usd\",\"customer\":\"cus_DxuQHA7hXYLMH3\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":4,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DVybgAbBGmUqZdo7bqIUjhN\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DVybbAbBGmUqZdo3r0Mmyt5\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DxuQHA7hXYLMH3\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivek@sigsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-13 17:54:53', NULL),
(3, 18, 'ch_1DVyccAbBGmUqZdoI9hYrQZl', 'stripe', 26, '130.00', 'succeeded', 'usd', 'ch_1DVyccAbBGmUqZdoI9hYrQZl', 'succeeded', '{\"id\":\"ch_1DVyccAbBGmUqZdoI9hYrQZl\",\"object\":\"charge\",\"amount\":13000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1DVyccAbBGmUqZdo8rCnBYKY\",\"captured\":true,\"created\":1542102950,\"currency\":\"usd\",\"customer\":\"cus_DxuRzLSd6oTzlH\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":10,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1DVyccAbBGmUqZdoI9hYrQZl\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1DVycXAbBGmUqZdorrWInPur\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_DxuRzLSd6oTzlH\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2023,\"fingerprint\":\"kNvYrWGkc5mrgSvS\",\"funding\":\"unknown\",\"last4\":\"1111\",\"metadata\":[],\"name\":\"vivek@singsys.com\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null}', '2018-11-13 17:55:50', NULL);

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
(3, 'account_activation', '360 Reference - Account Activation', '<p>Dear {NAME},</p>\r\n\r\n<p>Thank you for joining 360 Reference!&nbsp;You are taking a big, first step in this joint&nbsp;revolution to improve culture in the work place! For your security, SMS OTP <strong>and&nbsp;</strong>email verification are required. For email verification, please click here:</p>\r\n\r\n<p>{ACTIVATIONLINK}.</p>\r\n\r\n<p>Alternatively, please copy and paste the URL in the browser.</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-06 18:47:51'),
(4, 'reset_password', '360 Reference - Reset Password', '<p>Dear {NAME},</p>\r\n\r\n<p>Can&#39;t remember your password? Don&#39;t worry!&nbsp;This happens to even the&nbsp;best of us. (:</p>\r\n\r\n<p>To reset your password, please click here.</p>\r\n\r\n<p>{ACTIVATIONLINK}</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:00:10'),
(5, 'same_company_notification', '360 Reference - New Connection', '<p>Dear {NAME},</p>\r\n\r\n<p>({NEWUSER}) from ({COMPANY}) has requested to make a connection with you.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-08 07:10:06'),
(6, 'contact_us_admin', '360 Reference - Admin alert of Contact Us', '<p>Dear Admin,</p>\r\n\r\n<p>New contact information found.</p>\r\n\r\n<p>Name: {NAME}</p>\r\n\r\n<p>Email: {FROM_EMAIL}</p>\r\n\r\n<p>Message: {MESSAGE}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-06 18:53:41'),
(7, 'account_deletion', '360 Reference - Account Deletion', '<p>Dear {NAME},</p>\r\n\r\n<p>We regret to&nbsp;inform you that your account has been deleted.</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:09:25'),
(8, 'account_block', '360 Reference - Account Blocked', '<p>Dear {NAME},</p>\r\n\r\n<p>We regret to inform you that your account has been blocked.</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:10:02'),
(9, 'account_unblock', '360 Reference - Account Unblock', '<p>Dear {NAME},</p>\r\n\r\n<p>We wish to inform you that your account has been unblocked. Go forth and conquer!</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-06 11:12:33'),
(10, 'account_edit', '360 Reference - Account Edited', '<p>Dear {NAME},</p>\r\n\r\n<p>This is to inform you that your account has been edited by the Admin.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-04 03:37:33'),
(11, 'disputed_rating', '360 Reference - Disputed Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>Your rating has been disputed by {SENDER}.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-02 05:28:37'),
(12, 'rating_received', '360 Reference - Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>{SENDER} has given you a 360! Have&nbsp;your ratings have been updated? Is there a new review?</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-08 14:36:17'),
(13, 'rating_received', '360 Reference - Rating Notification', '<p>Dear {NAME},</p>\n\n<p>You have received rating from {SENDER}.</p>\n\n<p>Thanks {SITENAME}</p>', '2018-04-17 13:34:12'),
(14, 'recommendation_mail', '360 Reference - Recommendation Notification', '<p>Dear {NAME}, {SENDER} recommends for you to Gift 360! to {RATE}.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} team</p>', '2018-09-08 15:01:21'),
(15, 'short_rating', '360 Reference - Regarding Average Rating', '<p>Dear {NAME},</p>\r\n\r\n<p>Get 360!s to get a refresh in average rating.</p>\r\n\r\n<p>Curious? Then..</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-09-08 08:32:19'),
(16, 'daily_digest', '360 Reference - Daily Digest', '<p>Dear {NAME},</p>\r\n\r\n<p>Daily Digest mails.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-19 09:54:43'),
(17, 'invitation_received', '360 Reference - Recommendation Notification', 'Dear {NAME},\r\n\r\n{SENDER} has sent you invitation to connect.\r\n\r\n{CONTENT} \r\n\r\n', '2018-04-19 09:54:43'),
(18, 'keyword_admin', '360 Reference - Review On Hold', '<p>Dear {NAME},</p>\r\n\r\n<p>A new review has been posted which matches with the keyword. Please login the Admin Panel to review.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-20 10:39:08'),
(19, 'connection_invitation', '360 Reference - Invite', '<p>Dear {NAME},</p>\r\n\r\n{SENDER} has sent you invitation to connect {SITENAME} .\r\n\r\n{CONTENT}', '2018-05-19 11:19:07'),
(20, 'connection_notification_sucess', '360 Reference - Invite Sent', '<p>Dear {SENDER},</p>\r\n\r\n<p>Connection request to {NAME} has been sent&nbsp;successfully.</p>', '2018-09-30 13:12:10'),
(21, 'connection_request_accepted', '360 Reference - Invitation Accepted', '<p>Dear {NAME},</p>\r\n\r\n{SENDER} has accepted your connection request.', '2018-05-19 11:20:53'),
(22, 'invite_to_rate', '360 Reference | Invitation to Rate', 'Dear {RECEIVER},\r\n{NAME} has invite to rate.\r\n\r\n{CONTENT}', '2018-05-19 11:20:53'),
(23, 'get_to_rate', '360 Reference | Invitation to Rate And Review', '<p>Dear {RECEIVER},</p>\r\n\r\n<p>{NAME} requested for you gift him/ her a 360!</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 15:28:06'),
(24, 'new_account_activation', '360 Reference | Account Activation', 'Dear {NAME},\r\n\r\nThank you for signing up at 360 Reference, to activate your corresponding account, visit the following link:\r\n{ACTIVATIONLINK}.\r\nAfter activating account please login using your email and password 123456.\r\n\r\nIf you are not able to click on the above link, please copy and paste the URL in the browser.\r\n\r\nThanks {SITENAME}', '2018-03-21 20:51:23'),
(25, 'account_verification_pending', '360 Reference | Account Verification Pending', 'Dear {NAME},\r\n\r\nPlease verify your mobile number .\r\n\r\nThanks {SITENAME}', '2018-03-21 20:51:23'),
(26, 'job_matching', '360 Reference | Job Matched', 'Dear {NAME},\r\n\r\n{JOB} job is posted matching to your profile.\r\n\r\nThanks {SITENAME}', '2018-03-21 20:51:23'),
(27, 'credibility', '360 Reference | credibility', '<p>Dear {NAME},</p>\r\n\r\n<p>{REQUIRE} more 360!s to get a credibility boost. {REQUIRETYPE} ({POINTS} unique 360!s) credibility awaiting you!</p>\r\n\r\n<p>{LINK}&nbsp;</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 12:43:15'),
(28, 'credit_inform', '360 Reference | credibility', '<p>Dear {NAME}, {SENDER} has gotten {TYPE} credibility! Thanks {SITENAME}</p>', '2018-09-08 13:21:48'),
(29, 'job_reccomendation', '360 Reference - Job Recommendation', '<p>Dear {RECEIVER},</p>\r\n\r\n{NAME} has recommended you to apply for {JOB} job.', '2018-03-21 20:51:23'),
(30, 'signup_with_360', '360 Reference | Sign Up', '<p>Dear {NAME},</p>\r\n\r\n<p>{USER} has created a temporary account for you and requested for you to connect. We welcome you to verify your account and join us in our mission to improve culture in the work place.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 09:52:24'),
(31, 'notice_credibility', '360 Reference | Notice Credibility', '<p>Dear {NAME},</p>\r\n\r\n<p>Your Connection {USER} has just gotten {TYPE} ({NUMBER} unique 360!s) credibility.</p>\r\n\r\n<p>{LINK}</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 13:16:05'),
(32, 'expletive_review', '360 Reference | Expletive Review', '<p>Dear {NAME},</p>\r\n\r\n<p>Congratulations, your 360! has been approved by our team.</p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 13:16:05'),
(33, 'expletive_review_declined', '360 Reference | Expletive Review Declined', '<p>Dear {NAME},</p>\r\n\r\n<p>Sorry to inform you that your 360! has been declined by our team due to the use of certain words. </p>\r\n\r\n<p>Regards,&nbsp;</p>\r\n\r\n<p>Your {SITENAME} Team</p>', '2018-09-08 13:16:05'),
(34, 'admin_expletive_review', '360 Reference | Expletive Review has posted', 'Dear Admin,\r\n\r\nExpletive review has been posted.\r\n\r\nThanks {SITENAME}', '2018-10-09 07:58:01');

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
(1, 'If I give a 360! rating, will the recipient know what I rated him/ her?', '<p>No. While the recipient will know that you have rated him/ her, he/ she&nbsp;will not know exactly what you have rated. He/ she will only know subsequently, an average of ratings when there is a refresh of ratings data.&nbsp;</p>', 'General', '2018-08-15 12:34:53', 'active'),
(2, 'If I give a 360! review, will the recipient know what I reviewed of him/ her?', '<p>Yes. All 360! reviews are tagged to the individuals who have done the 360! review. People will be able to see the reviewer&#39;s name, date and time of 360! review.&nbsp;</p>', 'General', '2018-07-30 16:41:37', 'active'),
(3, 'How can I become an administrator on my Corporate profile?', '<p>You will need to have a email/ letter&nbsp;of authorization from your Company HR or Director. This letter shall clearly state&nbsp;you are authorized as an adminstrator of corporate site and will be given adminstrative powers within the 360 Reference platforms.</p>', 'Admin Functions', '2018-08-11 10:51:17', 'active'),
(5, 'Can I give a 360! to an Individual or Corporate not currently on 360 Reference?', '<p>Yes you can. You will need to provide a mobile phone number or an&nbsp;email address of the individual or corporate so we can inform the individual or corporate. You will then create a temporary profile for the individual or corporate before you give a 360!. This profile can only be verified through 2FA by the relevant Individual or Corporate. Verified accounts have greater credibility.</p>', 'General', '2018-08-11 11:15:24', 'active'),
(6, 'When will the 3 months free subscription campaign last for?', '<p>To be eligible, you will need to get 50 individuals to give you 360! ratings and reviews, before end of September 30th 2018.</p>', 'Updates', '2018-08-11 12:27:55', 'active'),
(7, 'How do I edit the Profile section?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Updates', '2018-07-30 17:21:13', 'inactive'),
(8, 'What are the payment methods that I can use to purchase my subscription or credits (for corporates)?', '<p>We accept most credit cards and online payment can be made through our platform.</p>', 'Pricing Plan', '2018-08-11 10:52:35', 'active'),
(18, 'How do I get 3 months of Premium Individual account free ?', '<p>As long as you get 50 individuals to give you 360! ratings or reviews, you will get 3 months of Premium Individual account free. This 3 months period will start when you achieve your 50th 360!.</p>', 'Pricing Plan', '2018-08-11 11:23:31', 'active'),
(19, 'What is the difference in benefits between Premium vs Free Individual account?', '<p>Premium Individual account&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Initiate</strong> and reply chats</li>\r\n	<li>Access unlimited individual and corporate profiles in <strong>detail&nbsp;</strong></li>\r\n	<li>Know the <strong>full list of visitors to your profile in the last 90 days</strong></li>\r\n	<li><strong>Customise</strong>&nbsp;(subject to availability) your <strong>URL profile page</strong></li>\r\n	<li>Manage individual account</li>\r\n	<li>Apply for jobs</li>\r\n	<li>Recommend a friend for a job</li>\r\n</ol>\r\n\r\n<p>Free Individual account&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Reply chats&nbsp;</li>\r\n	<li>Access unlimited individual and corporate profiles in overview&nbsp;</li>\r\n	<li>Know the last five visitors to your profile</li>\r\n	<li>Get your assigned&nbsp;URL profile page&nbsp;</li>\r\n	<li>Manage individual account</li>\r\n	<li>Apply for jobs</li>\r\n	<li>Recommend a friend for a job</li>\r\n</ol>', 'Pricing Plan', '2018-08-11 10:47:07', 'active'),
(20, 'What is the difference in benefits between Premium vs Free Corporate account?', '<p>Premium Corporate&nbsp;account&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Initiate</strong> and reply chats</li>\r\n	<li>Access unlimited individual and corporate profiles in <strong>detail </strong>(category and attribute scores)&nbsp;</li>\r\n	<li>Know the <strong>full list of visitors </strong>to&nbsp;your corporate profile in the <strong>last 90 days</strong></li>\r\n	<li><strong>Customise</strong>&nbsp;(subject to availability) your <strong>corporate&nbsp;URL profile page</strong></li>\r\n	<li>Manage corporate account</li>\r\n	<li>Post jobs available (200 credits/ job posting)</li>\r\n	<li>Request for job match (1000&nbsp;credits/ job matching)based on what employee want and what employer wants&nbsp;</li>\r\n	<li>Analytics of visitors&nbsp;</li>\r\n</ol>\r\n\r\n<p>Free Corporate account&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Reply chats&nbsp;</li>\r\n	<li>Access unlimited individual and corporate profiles in overview&nbsp;</li>\r\n	<li>Know the last five visitors to your profile</li>\r\n	<li>Get your assigned&nbsp;URL profile page&nbsp;</li>\r\n	<li>Manage individual account</li>\r\n	<li>Apply for jobs</li>\r\n	<li>Recommend a friend for a job</li>\r\n</ol>\r\n\r\n<p>Manage corporate accountInitiate and reply chatView 400 profilesTailor unique URL profile page name&nbsp;(based on availability)Post jobs at $500/ job posting&nbsp;View number of visitors of corporate account in the last week and monthView full list of people who visited in the last 90 days.View last 5 job postingsAnalytics of visitorsView by geographyView by industryView work experienceView by strengthsComprehensive analytics of staff (that are in the company at this time)View by geographyView by industryView work experienceView by strengthsView aggregated overall, boss, peer, subordinate, self, customer ratingsView individual overall, boss, peer, subordinate, self, customer ratingView other corporate&#39;s overall, boss, peer, subordinate, customer ratingShortlist candidateView job applicantsGet 1 recommended (based on criteria set) candidate per $1000</p>', 'Pricing Plan', '2018-07-30 17:56:37', 'active'),
(21, 'How are overall ratings scores being tabulated?', '<p>Overall ratings score is made up of boss, peer, subordinate and customer ratings.</p>', 'General', '2018-08-15 12:36:02', 'active'),
(22, 'When is there a refresh of 360! ratings?', '<p>Overall ratings are ONLY REFRESHED when there is an refresh to the below category ratings.&nbsp;</p>\r\n\r\n<p>Boss ratings are refreshed when 3 more bosses have rated you.&nbsp;</p>\r\n\r\n<p>Peer ratings are refreshed when 5 more peers&nbsp;have rated you.&nbsp;</p>\r\n\r\n<p>Subordinate (if applicable) ratings are refreshed when 5 more subordinates have rated you.</p>\r\n\r\n<p>Customer (if applicable) ratings are refreshed when 5 more customers have rated you.</p>', 'General', '2018-08-15 12:36:50', 'active');

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
(1, 2, NULL, NULL, '919956771380', '2018-09-27 20:45:42', NULL),
(2, 2, NULL, NULL, '919956771380', '2018-09-28 16:51:12', NULL),
(3, 12, 5, NULL, NULL, '2018-10-11 08:31:49', NULL),
(4, 18, 17, NULL, NULL, '2018-11-05 15:00:18', NULL),
(5, 18, 17, NULL, NULL, '2018-11-05 15:03:31', NULL),
(6, 18, 17, NULL, NULL, '2018-11-05 15:05:03', NULL),
(7, 18, 17, NULL, NULL, '2018-11-05 15:08:41', NULL),
(8, 17, 18, NULL, NULL, '2018-11-05 15:20:26', NULL),
(9, 17, 18, NULL, NULL, '2018-11-05 15:20:53', NULL),
(10, 17, NULL, NULL, '9179003327877', '2018-11-05 15:20:55', NULL),
(11, 17, 18, NULL, NULL, '2018-11-05 15:27:14', NULL),
(12, 18, 17, NULL, NULL, '2018-11-05 18:07:08', NULL),
(13, 18, 22, NULL, NULL, '2018-11-13 18:21:26', NULL);

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
(1, 'Build a positive culture at workplaces!', 'Join the revolution, give and get more 360!s to add transparency and accountability at the workplace!', 'crop_20180901134611.png', '2018-09-01 13:46:14'),
(2, 'Get 360! ratings or reviews from your co-workers or customers!', 'With different perspectives of yourself at work, you will be able to understand yourself better and improve accordingly!', 'crop_20180901134637.png', '2018-09-01 13:46:46'),
(3, 'Give 360! ratings or reviews to corporates, co-workers or service providers!', 'Help them to understand areas of strength and weaknesses so they can improve!', 'crop_20180901134713.png', '2018-09-01 13:47:16'),
(8, 'Make smart choices!', 'You can’t choose your family, but you can choose where you work and who you want to work with! Choose wisely with 360!', 'crop_20180901134737.png', '2018-09-01 13:47:41');

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
(3, 'Get 360! ratings or reviews from your co-workers or customers', 'so you know what people say about you and can decide areas of strength or weaknesses to work on', 'crop_20180901125103.png', 'Image', 'INDIVIDUAL', '2018-09-01 12:51:06'),
(4, 'Give 360! ratings or reviews to corporates, co-workers or service providers', 'and help others get a different perspective of themselves so they can improve!', 'crop_20180901125201.png', 'Image', 'INDIVIDUAL', '2018-09-01 12:52:07'),
(5, 'Choose the company you work in and people that you work with', 'by matching 1) what you want in a corporate and what the corporate can offer 2) what you want in a potential boss with what your hiring manager is strong in!', 'crop_20180901125241.png', 'Image', 'INDIVIDUAL', '2018-09-01 12:52:46'),
(6, 'Get registered', 'when you simply fill in your corporate details!', 'crop_20180901125418.png', 'Image', 'COMPANY', '2018-09-01 12:54:22'),
(7, 'Complete and verify your corporate profile', 'with 2FA and a letter of authorization from HR or a company director', 'crop_20180901125444.png', 'Image', 'COMPANY', '2018-09-01 12:54:48'),
(8, 'Get 360! ratings or reviews from your employees or customers', 'so you know what people say about you and can decide areas of strength or weaknesses to work on', 'crop_20180901125515.png', 'Image', 'COMPANY', '2018-09-01 12:55:17'),
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
(1, 18, 35, NULL, NULL);

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
(10, 'Pussy', '2018-08-15 12:04:04', NULL),
(12, 'Ignore', '2018-10-11 03:56:33', NULL);

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
(1, 5, 6, 'pending', '2018-09-28 22:07:26', NULL),
(2, 5, 9, 'pending', '2018-10-02 00:35:26', NULL),
(3, 18, 19, 'pending', '2018-11-05 15:14:26', NULL),
(4, 18, 20, 'pending', '2018-11-05 15:17:02', NULL),
(5, 18, 21, 'pending', '2018-11-05 15:18:26', NULL);

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
(1, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 2, 2, 'no', 'yes', '2018-09-27 20:20:50', NULL),
(3, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 3, 3, 'no', 'yes', '2018-09-27 20:57:24', NULL),
(4, 1, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 2, 3, 'no', 'yes', '2018-09-27 20:58:22', NULL),
(5, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 2, 2, 'yes', 'yes', '2018-09-27 20:59:09', NULL),
(6, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 2, 2, 'yes', 'yes', '2018-09-27 21:12:58', NULL),
(7, 3, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 3, 'no', 'yes', '2018-09-27 21:16:07', NULL),
(9, 3, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 3, 'no', 'yes', '2018-09-28 18:17:08', NULL),
(10, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 5, 5, 'no', 'yes', '2018-09-28 21:48:59', NULL),
(11, 3, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 3, 'no', 'yes', '2018-09-28 22:12:12', NULL),
(12, 3, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 3, 'no', 'yes', '2018-09-28 22:12:20', NULL),
(13, 48, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 2, 3, 'no', 'yes', '2018-09-28 22:13:04', NULL),
(14, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 7, 7, 'yes', 'yes', '2018-09-28 23:42:04', NULL),
(15, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-28 23:44:48', NULL),
(16, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-28 23:47:12', NULL),
(17, 2, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 7, 5, 'no', 'yes', '2018-09-28 23:47:44', NULL),
(18, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 8, 8, 'no', 'yes', '2018-09-29 15:18:58', NULL),
(19, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 8, 8, 'no', 'yes', '2018-09-29 15:25:37', NULL),
(20, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 8, 8, 'no', 'yes', '2018-09-29 15:25:52', NULL),
(21, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 8, 8, 'no', 'yes', '2018-09-29 15:28:46', NULL),
(22, 3, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 8, 5, 'no', 'yes', '2018-09-29 15:30:10', NULL),
(23, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-30 14:35:51', NULL),
(24, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-30 14:36:00', NULL),
(25, 49, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 7, 5, 'no', 'yes', '2018-09-30 14:36:49', NULL),
(26, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'yes', 'yes', '2018-09-30 14:36:56', NULL),
(27, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'yes', 'yes', '2018-09-30 14:37:11', NULL),
(28, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:40:01', NULL),
(29, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:40:53', NULL),
(30, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:41:27', NULL),
(31, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:43:33', NULL),
(32, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:44:51', NULL),
(33, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:46:02', NULL),
(34, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:46:59', NULL),
(35, 0, 'You have completed 70% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:49:06', NULL),
(36, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 7, 7, 'yes', 'yes', '2018-09-30 14:52:39', NULL),
(37, 5, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 5, 7, 'yes', 'yes', '2018-09-30 15:17:00', NULL),
(38, 5, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 5, 8, 'no', 'yes', '2018-09-30 15:17:19', NULL),
(39, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-30 15:17:34', NULL),
(40, 8, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 8, 'no', 'yes', '2018-09-30 15:18:11', NULL),
(41, 7, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 5, 7, 'yes', 'yes', '2018-09-30 15:52:32', NULL),
(42, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-30 15:52:40', NULL),
(43, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-30 15:54:25', NULL),
(44, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-09-30 15:54:28', NULL),
(45, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'yes', 'yes', '2018-09-30 15:54:34', NULL),
(46, 7, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 5, 7, 'yes', 'yes', '2018-09-30 15:54:38', NULL),
(47, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 5, 5, 'no', 'yes', '2018-09-30 21:25:33', NULL),
(48, 2, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 5, 2, 'yes', 'yes', '2018-09-30 21:52:28', NULL),
(49, 4, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 5, 2, 'yes', 'yes', '2018-09-30 21:53:02', NULL),
(50, 2, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 5, 2, 'yes', 'yes', '2018-09-30 21:53:06', NULL),
(51, 5, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 5, 3, 'yes', 'yes', '2018-09-30 21:54:13', NULL),
(52, 8, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 8, 'no', 'yes', '2018-10-02 14:16:15', NULL),
(53, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 5, 'no', 'yes', '2018-10-02 14:27:59', NULL),
(54, 7, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 7, 'yes', 'yes', '2018-10-02 14:28:49', NULL),
(55, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 2, 5, 'no', 'yes', '2018-10-02 14:36:24', NULL),
(56, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 10, 10, 'no', 'yes', '2018-10-02 18:23:45', NULL),
(57, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'no', 'yes', '2018-10-04 23:55:22', NULL),
(58, 5, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 7, 5, 'yes', 'yes', '2018-10-04 23:56:22', NULL),
(59, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 2, 2, 'no', 'yes', '2018-10-05 13:01:25', NULL),
(60, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 2, 2, 'no', 'yes', '2018-10-05 14:45:02', NULL),
(61, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 2, 2, 'no', 'yes', '2018-10-06 14:55:26', NULL),
(62, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 2, 2, 'no', 'yes', '2018-10-06 14:57:44', NULL),
(63, 3, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 3, 'no', 'yes', '2018-10-06 15:20:25', NULL),
(64, 3, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 3, 2, 'no', 'no', '2018-10-06 15:25:44', NULL),
(65, 50, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 2, 3, 'no', 'yes', '2018-10-06 15:29:23', NULL),
(66, 51, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 2, 3, 'yes', 'yes', '2018-10-06 15:39:30', NULL),
(67, 3, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 3, 5, 'no', 'yes', '2018-10-06 15:44:35', NULL),
(68, 2, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 2, 5, 'no', 'yes', '2018-10-06 15:46:29', NULL),
(69, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 3, 2, 'no', 'yes', '2018-10-06 15:47:04', NULL),
(70, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 11, 11, 'no', 'yes', '2018-10-06 15:57:58', NULL),
(71, 5, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 11, 2, 'yes', 'yes', '2018-10-06 15:58:15', NULL),
(72, 11, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 3, 11, 'no', 'yes', '2018-10-06 15:58:58', NULL),
(73, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 2, 'no', 'yes', '2018-10-06 16:31:13', NULL),
(74, 5, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 3, 5, 'no', 'yes', '2018-10-06 16:56:12', NULL),
(75, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 5, 5, 'yes', 'yes', '2018-10-08 00:24:02', NULL),
(76, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 5, 5, 'yes', 'yes', '2018-10-08 00:24:22', NULL),
(77, 7, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 7, 'yes', 'yes', '2018-10-09 16:05:28', NULL),
(78, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 12, 12, 'no', 'yes', '2018-10-09 18:45:23', NULL),
(79, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 12, 2, 'yes', 'yes', '2018-10-09 18:48:31', NULL),
(80, 12, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 12, 'no', 'yes', '2018-10-09 18:49:44', NULL),
(81, 11, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 11, 'no', 'yes', '2018-10-09 18:49:57', NULL),
(82, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 13, 13, 'no', 'yes', '2018-10-09 18:57:51', NULL),
(83, 21, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 13, 12, 'yes', 'yes', '2018-10-09 18:57:59', NULL),
(84, 6, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 13, 2, 'yes', 'no', '2018-10-09 18:59:56', NULL),
(85, 13, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 13, 'no', 'yes', '2018-10-09 19:00:12', NULL),
(86, 2, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 2, 13, 'no', 'yes', '2018-10-09 19:00:23', NULL),
(87, 3, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 3, 'no', 'yes', '2018-10-09 19:01:17', NULL),
(88, 52, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 2, 11, 'no', 'yes', '2018-10-09 19:02:29', NULL),
(89, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 11, 2, 'no', 'yes', '2018-10-09 19:04:31', NULL),
(90, 7, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 12, 5, 'yes', 'yes', '2018-10-11 08:30:02', NULL),
(91, 13, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 12, 13, 'no', 'yes', '2018-10-11 08:30:22', NULL),
(92, 8, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 12, 13, 'no', 'yes', '2018-10-11 08:30:53', NULL),
(93, 3, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 12, 5, 'yes', 'yes', '2018-10-11 08:31:49', NULL),
(94, 12, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 12, 'no', 'yes', '2018-10-11 08:44:57', NULL),
(95, 5, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 5, 12, 'no', 'yes', '2018-10-11 08:47:10', NULL),
(96, 53, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 12, 13, 'no', 'yes', '2018-10-11 09:05:57', NULL),
(97, 13, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 13, 'no', 'yes', '2018-10-11 09:06:45', NULL),
(98, 13, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 13, 'no', 'yes', '2018-10-11 14:54:08', NULL),
(99, 13, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 2, 2, 'no', 'yes', '2018-10-11 15:59:10', NULL),
(100, 13, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 2, 2, 'no', 'yes', '2018-10-11 16:11:54', NULL),
(101, 12, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 2, 12, 'no', 'yes', '2018-10-11 16:12:20', NULL),
(102, 12, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 2, 2, 'no', 'yes', '2018-10-11 16:13:17', NULL),
(103, 56, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 2, 12, 'no', 'yes', '2018-10-11 16:38:36', NULL),
(104, 56, 'Admin has approved your rating on Mohd Sultan\'s profile.', '', 'accepted', 1, 2, 'no', 'yes', '2018-10-11 16:38:36', NULL),
(105, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 7, 2, 'no', 'yes', '2018-10-12 00:31:02', NULL),
(106, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 14, 14, 'no', 'yes', '2018-10-24 15:31:51', NULL),
(107, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 2, 'no', 'yes', '2018-11-01 21:20:36', NULL),
(108, 12, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 12, 'no', 'yes', '2018-11-01 21:55:43', NULL),
(109, 13, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 13, 'no', 'yes', '2018-11-01 22:38:26', NULL),
(110, 11, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 5, 13, 'no', 'yes', '2018-11-01 22:42:12', NULL),
(111, 11, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 5, 13, 'no', 'yes', '2018-11-01 22:42:15', NULL),
(112, 11, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 5, 13, 'no', 'yes', '2018-11-01 22:42:16', NULL),
(113, 11, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 11, 'no', 'yes', '2018-11-01 22:45:47', NULL),
(114, 3, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 5, 3, 'no', 'yes', '2018-11-01 22:46:10', NULL),
(115, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 15, 15, 'yes', 'yes', '2018-11-05 13:17:10', NULL),
(116, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 16, 16, 'no', 'yes', '2018-11-05 13:22:48', NULL),
(117, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 17, 17, 'no', 'yes', '2018-11-05 13:29:30', NULL),
(118, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 17, 17, 'no', 'yes', '2018-11-05 13:37:35', NULL),
(119, 0, 'You have completed 50% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 17, 17, 'no', 'yes', '2018-11-05 13:38:37', NULL),
(120, 0, 'You have completed 80% of your profile. Complete your profile to get more views and connections!!!', 'individual_profile', 'pending', 17, 17, 'no', 'yes', '2018-11-05 13:39:09', NULL),
(121, 1, 'Congratulations on completing your profile! Give 50 360!s to get 3 months complimentary paid subscription', 'individual_profile', 'pending', 17, 17, 'no', 'yes', '2018-11-05 13:40:49', NULL),
(122, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 18, 18, 'yes', 'yes', '2018-11-05 13:51:21', NULL),
(123, 9, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 17, 18, 'yes', 'yes', '2018-11-05 14:08:36', NULL),
(124, 17, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:09:47', NULL),
(125, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:14', NULL),
(126, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:18', NULL),
(127, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:18', NULL),
(128, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:18', NULL),
(129, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:18', NULL),
(130, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:19', NULL),
(131, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:19', NULL),
(132, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:19', NULL),
(133, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:19', NULL),
(134, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:19', NULL),
(135, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:22', NULL),
(136, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:22', NULL),
(137, 17, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:22', NULL),
(138, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:23', NULL),
(139, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:23', NULL),
(140, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:23', NULL),
(141, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:23', NULL),
(142, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:23', NULL),
(143, 15, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:10:23', NULL),
(144, 17, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:11:24', NULL),
(145, 18, '{SENDER} has accepted your connection request.', 'connection_request_accepted', 'pending', 18, 17, 'no', 'yes', '2018-11-05 14:21:14', NULL),
(146, 4, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 18, 17, 'no', 'yes', '2018-11-05 15:00:18', NULL),
(147, 5, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 18, 17, 'no', 'yes', '2018-11-05 15:03:31', NULL),
(148, 6, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 18, 17, 'no', 'yes', '2018-11-05 15:05:03', NULL),
(149, 7, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 18, 17, 'yes', 'yes', '2018-11-05 15:08:41', NULL),
(150, 18, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 17, 18, 'yes', 'yes', '2018-11-05 15:08:49', NULL),
(151, 18, '{SENDER} has recommended you to rate {RATE}', 'recommendation_notification', 'pending', 17, 18, 'no', 'yes', '2018-11-05 15:09:15', NULL),
(152, 18, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 18, 18, 'no', 'yes', '2018-11-05 15:11:47', NULL),
(153, 6, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 17, 18, 'no', 'yes', '2018-11-05 15:12:41', NULL),
(154, 8, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 17, 18, 'yes', 'yes', '2018-11-05 15:20:26', NULL),
(155, 9, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 17, 18, 'yes', 'yes', '2018-11-05 15:20:53', NULL),
(156, 9, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 17, 18, 'no', 'yes', '2018-11-05 15:21:43', NULL),
(157, 10, '{SENDER} has invite you to rate.', 'invite_to_rate', 'pending', 17, 18, 'no', 'yes', '2018-11-05 15:22:03', NULL),
(158, 11, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 17, 18, 'no', 'yes', '2018-11-05 15:27:14', NULL),
(159, 10, '{SENDER} has sent you an invitation to connect.', 'invitation_received', 'pending', 18, 18, 'no', 'yes', '2018-11-05 15:33:06', NULL),
(160, 57, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 17, 18, 'no', 'yes', '2018-11-05 18:04:52', NULL),
(161, 12, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 18, 17, 'yes', 'yes', '2018-11-05 18:07:08', NULL),
(162, 2, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 13, 2, 'no', 'yes', '2018-11-09 14:37:00', NULL),
(163, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 22, 22, 'yes', 'yes', '2018-11-13 13:34:15', NULL),
(164, 25, 'You might have worked with {NAME} at {COMPANY_NAME} in {YEAR}. Give {NAME} a 360!  ', 'experience_match', 'pending', 22, 17, 'no', 'yes', '2018-11-13 13:34:31', NULL),
(165, 11, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 18, 22, 'yes', 'yes', '2018-11-13 14:55:06', NULL),
(166, 18, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 17, 18, 'no', 'yes', '2018-11-13 14:56:04', NULL),
(167, 12, '{SENDER} has invite you to connect {SITENAME}', 'connection_notification', 'pending', 18, 17, 'yes', 'yes', '2018-11-13 14:57:18', NULL),
(168, 18, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 22, 18, 'no', 'yes', '2018-11-13 18:00:40', NULL),
(169, 17, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 22, 17, 'yes', 'yes', '2018-11-13 18:04:49', NULL),
(170, 17, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 22, 22, 'yes', 'yes', '2018-11-13 18:05:30', NULL),
(171, 58, '{SENDER} has given you a 360!', 'rating_received', 'accepted', 22, 17, 'no', 'yes', '2018-11-13 18:10:14', NULL),
(172, 58, 'Admin has approved your rating on Vivek K\'s profile.', '', 'accepted', 1, 22, 'no', 'yes', '2018-11-13 18:10:14', NULL),
(173, 22, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 18, 22, 'yes', 'yes', '2018-11-13 18:20:53', NULL),
(174, 13, '{SENDER} has invited to rate .', 'get_to_rate', 'pending', 18, 22, 'yes', 'yes', '2018-11-13 18:21:26', NULL),
(175, 18, 'It looks like you might have used an expletive in your review. 360 Reference encourages mutual respect and constructive, non-abusive feedback. Your review is now pending review', 'expletive_review', 'accepted', 22, 22, 'yes', 'yes', '2018-11-13 18:24:08', NULL),
(176, 18, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 22, 18, 'no', 'yes', '2018-11-14 11:58:39', NULL),
(177, 17, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 22, 17, 'yes', 'yes', '2018-11-14 12:42:00', NULL),
(178, 22, 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view', 'pending', 17, 22, 'no', 'yes', '2018-11-14 12:42:26', NULL),
(179, 18, '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!', 'paid_profile_view', 'pending', 17, 18, 'no', 'yes', '2018-11-14 13:03:51', NULL),
(180, 17, 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!', 'unpaid_profile_view_company', 'pending', 18, 17, 'no', 'yes', '2018-11-14 13:24:19', NULL),
(181, NULL, 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!', 'signup_notification', 'accepted', 23, 23, 'no', 'yes', '2018-12-31 14:13:27', NULL);

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
(5, 2, 'daily_digest', NULL, '2018-10-04 19:23:04'),
(7, 3, 'email', NULL, NULL),
(9, 5, 'email', NULL, NULL),
(10, 7, 'email', NULL, '2018-09-28 23:51:53'),
(11, 8, 'email', NULL, NULL),
(12, 10, 'email', NULL, NULL),
(13, 11, 'email', NULL, NULL),
(14, 12, 'email', NULL, NULL),
(15, 13, 'email', NULL, NULL),
(16, 14, 'email', NULL, NULL),
(17, 15, 'email', NULL, NULL),
(18, 16, 'email', NULL, NULL),
(19, 17, 'email', NULL, NULL),
(20, 18, 'email', NULL, NULL),
(21, 22, 'email', NULL, NULL),
(22, 23, 'email', NULL, NULL);

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
(1, 'rating_received', '{SENDER} has given you a 360!'),
(2, 'dispute_rating', '{SENDER} has disputed your review.'),
(3, 'short_rating', 'Invite your co-workers/ customers to rate you to have your score updated'),
(4, 'invitation_received', '{SENDER} has sent you an invitation to connect.'),
(5, 'recommendation_notification', '{SENDER} has recommended you to rate {RATE}'),
(6, 'signup_notification', 'Thank you for signing up with 360 Reference. Start by giving or asking for 360!s. Have fun!'),
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
(19, 'unpaid_profile_view', 'Someone just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!'),
(20, 'paid_profile_view', '{NAME} just viewed  your profile. View {FIRST_NAME}\'s profile!'),
(21, 'credibility', 'Congratulations on getting {AMOUNT} 360!s. You have attained {TYPE} credibility.'),
(22, 'unpaid_profile_view_company', 'A corporate just viewed your profile. Subscribe to 360! Individual Premium to find out who\'s interested!');

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
(7, 3, 'Monday', 'open', '1:00', 'AM', '1:00', 'AM', '2018-09-27 22:07:28', '2018-09-27 22:07:28'),
(8, 3, 'Tuesday', 'open', '1:00', 'AM', '1:00', 'AM', '2018-09-27 22:07:28', '2018-09-27 22:07:28'),
(9, 3, 'Wednesday', 'open', '1:00', 'AM', '1:00', 'AM', '2018-09-27 22:07:28', '2018-09-27 22:07:28'),
(10, 3, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-09-27 22:07:28', '2018-09-27 22:07:28'),
(11, 3, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-09-27 22:07:28', '2018-09-27 22:07:28'),
(12, 3, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-09-27 22:07:28', '2018-09-27 22:07:28'),
(13, 18, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-11-05 14:06:32', '2018-11-05 14:06:32'),
(14, 18, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-11-05 14:06:32', '2018-11-05 14:06:32'),
(15, 18, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-11-05 14:06:32', '2018-11-05 14:06:32'),
(16, 18, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-11-05 14:06:32', '2018-11-05 14:06:32'),
(17, 18, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-11-05 14:06:32', '2018-11-05 14:06:32'),
(18, 18, NULL, 'closed', '1:00', 'AM', '1:00', 'AM', '2018-11-05 14:06:32', '2018-11-05 14:06:32');

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
(1, 2, 3, '2018-09-27 21:16:07', '2018-09-27 21:16:07'),
(2, 2, 3, '2018-09-28 18:17:08', '2018-09-28 18:17:08'),
(3, 7, 5, '2018-09-28 23:44:48', '2018-09-28 23:44:48'),
(4, 7, 5, '2018-09-30 14:35:51', '2018-09-30 14:35:51'),
(5, 7, 8, '2018-09-30 15:17:55', '2018-09-30 15:17:55'),
(6, 5, 7, '2018-09-30 15:52:32', '2018-09-30 15:52:32'),
(7, 5, 2, '2018-09-30 21:52:28', '2018-09-30 21:52:28'),
(8, 2, 8, '2018-10-02 14:16:15', '2018-10-02 14:16:15'),
(9, 2, 5, '2018-10-02 14:27:59', '2018-10-02 14:27:59'),
(10, 2, 7, '2018-10-02 14:28:49', '2018-10-02 14:28:49'),
(11, 7, 5, '2018-10-04 23:51:56', '2018-10-04 23:51:56'),
(12, 2, 3, '2018-10-06 15:20:25', '2018-10-06 15:20:25'),
(13, 1, 2, '2018-10-06 15:30:26', '2018-10-06 15:30:26'),
(14, 1, 3, '2018-10-06 15:40:00', '2018-10-06 15:40:00'),
(15, 3, 2, '2018-10-06 15:47:04', '2018-10-06 15:47:04'),
(16, 3, 11, '2018-10-06 15:58:58', '2018-10-06 15:58:58'),
(17, 2, 2, '2018-10-06 16:31:13', '2018-10-06 16:31:13'),
(18, 3, 5, '2018-10-06 16:56:12', '2018-10-06 16:56:12'),
(19, 2, 7, '2018-10-09 16:05:28', '2018-10-09 16:05:28'),
(20, 12, 2, '2018-10-09 18:48:31', '2018-10-09 18:48:31'),
(21, 2, 12, '2018-10-09 18:49:44', '2018-10-09 18:49:44'),
(22, 2, 11, '2018-10-09 18:49:57', '2018-10-09 18:49:57'),
(23, 2, 13, '2018-10-09 19:00:12', '2018-10-09 19:00:12'),
(24, 2, 3, '2018-10-09 19:01:17', '2018-10-09 19:01:17'),
(25, 11, 2, '2018-10-09 19:04:31', '2018-10-09 19:04:31'),
(26, 12, 13, '2018-10-11 08:30:22', '2018-10-11 08:30:22'),
(27, 5, 12, '2018-10-11 08:44:57', '2018-10-11 08:44:57'),
(28, 5, 13, '2018-10-11 09:06:45', '2018-10-11 09:06:45'),
(29, 2, 13, '2018-10-11 14:54:08', '2018-10-11 14:54:08'),
(30, 2, 12, '2018-10-11 16:12:20', '2018-10-11 16:12:20'),
(31, 7, 2, '2018-10-12 00:31:02', '2018-10-12 00:31:02'),
(32, 5, 2, '2018-11-01 21:20:36', '2018-11-01 21:20:36'),
(33, 5, 12, '2018-11-01 21:55:43', '2018-11-01 21:55:43'),
(34, 5, 13, '2018-11-01 22:38:26', '2018-11-01 22:38:26'),
(35, 5, 11, '2018-11-01 22:45:47', '2018-11-01 22:45:47'),
(36, 5, 3, '2018-11-01 22:46:10', '2018-11-01 22:46:10'),
(37, 18, 17, '2018-11-05 14:09:47', '2018-11-05 14:09:47'),
(38, 17, 18, '2018-11-05 15:08:49', '2018-11-05 15:08:49'),
(39, 18, 18, '2018-11-05 15:11:47', '2018-11-05 15:11:47'),
(40, 13, 2, '2018-11-09 14:37:00', '2018-11-09 14:37:00'),
(41, 17, 18, '2018-11-13 14:56:04', '2018-11-13 14:56:04'),
(42, 22, 18, '2018-11-13 18:00:40', '2018-11-13 18:00:40'),
(43, 22, 17, '2018-11-13 18:04:49', '2018-11-13 18:04:49'),
(44, 18, 22, '2018-11-13 18:20:53', '2018-11-13 18:20:53'),
(45, 22, 18, '2018-11-14 11:58:39', '2018-11-14 11:58:39'),
(46, 22, 17, '2018-11-14 12:42:00', '2018-11-14 12:42:00'),
(47, 17, 22, '2018-11-14 12:42:26', '2018-11-14 12:42:26'),
(48, 17, 18, '2018-11-14 13:03:51', '2018-11-14 13:03:51'),
(49, 18, 17, '2018-11-14 13:24:19', '2018-11-14 13:24:19');

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
(1, 2, 3, 1, '09', '2018', '2018-09-27 21:16:07', '2018-09-27 21:16:07'),
(2, 2, 3, 1, '09', '2018', '2018-09-28 18:17:08', '2018-09-28 18:17:08'),
(3, 2, 3, 1, '09', '2018', '2018-09-28 18:17:14', '2018-09-28 18:17:14'),
(4, 2, 3, 1, '09', '2018', '2018-09-28 22:12:12', '2018-09-28 22:12:12'),
(5, 2, 3, 1, '09', '2018', '2018-09-28 22:12:20', '2018-09-28 22:12:20'),
(6, 2, 3, 1, '09', '2018', '2018-09-28 22:13:05', '2018-09-28 22:13:05'),
(7, 2, 3, 1, '09', '2018', '2018-09-28 22:13:26', '2018-09-28 22:13:26'),
(8, 2, 3, 1, '09', '2018', '2018-09-28 22:13:42', '2018-09-28 22:13:42'),
(9, 7, 5, 1, '09', '2018', '2018-09-28 23:44:48', '2018-09-28 23:44:48'),
(10, 7, 5, 1, '09', '2018', '2018-09-28 23:47:12', '2018-09-28 23:47:12'),
(11, 7, 5, 1, '09', '2018', '2018-09-28 23:47:15', '2018-09-28 23:47:15'),
(12, 7, 5, 1, '09', '2018', '2018-09-28 23:47:48', '2018-09-28 23:47:48'),
(13, 7, 5, 1, '09', '2018', '2018-09-30 14:35:51', '2018-09-30 14:35:51'),
(14, 7, 5, 1, '09', '2018', '2018-09-30 14:35:55', '2018-09-30 14:35:55'),
(15, 7, 5, 1, '09', '2018', '2018-09-30 14:36:00', '2018-09-30 14:36:00'),
(16, 7, 5, 1, '09', '2018', '2018-09-30 14:36:50', '2018-09-30 14:36:50'),
(17, 7, 5, 1, '09', '2018', '2018-09-30 14:36:56', '2018-09-30 14:36:56'),
(18, 7, 5, 1, '09', '2018', '2018-09-30 14:37:11', '2018-09-30 14:37:11'),
(19, 7, 5, 1, '09', '2018', '2018-09-30 14:37:15', '2018-09-30 14:37:15'),
(20, 7, 5, 1, '09', '2018', '2018-09-30 15:17:17', '2018-09-30 15:17:17'),
(21, 7, 5, 1, '09', '2018', '2018-09-30 15:17:31', '2018-09-30 15:17:31'),
(22, 7, 5, 1, '09', '2018', '2018-09-30 15:17:31', '2018-09-30 15:17:31'),
(23, 7, 5, 1, '09', '2018', '2018-09-30 15:17:34', '2018-09-30 15:17:34'),
(24, 7, 8, 1, '09', '2018', '2018-09-30 15:17:55', '2018-09-30 15:17:55'),
(25, 7, 8, 1, '09', '2018', '2018-09-30 15:18:11', '2018-09-30 15:18:11'),
(26, 7, 8, 1, '09', '2018', '2018-09-30 15:19:48', '2018-09-30 15:19:48'),
(27, 7, 8, 1, '09', '2018', '2018-09-30 15:30:34', '2018-09-30 15:30:34'),
(28, 7, 5, 1, '09', '2018', '2018-09-30 15:52:26', '2018-09-30 15:52:26'),
(29, 5, 7, 1, '09', '2018', '2018-09-30 15:52:32', '2018-09-30 15:52:32'),
(30, 7, 5, 1, '09', '2018', '2018-09-30 15:52:41', '2018-09-30 15:52:41'),
(31, 7, 5, 1, '09', '2018', '2018-09-30 15:52:44', '2018-09-30 15:52:44'),
(32, 7, 5, 1, '09', '2018', '2018-09-30 15:52:54', '2018-09-30 15:52:54'),
(33, 5, 7, 1, '09', '2018', '2018-09-30 15:53:07', '2018-09-30 15:53:07'),
(34, 7, 5, 1, '09', '2018', '2018-09-30 15:54:08', '2018-09-30 15:54:08'),
(35, 7, 5, 1, '09', '2018', '2018-09-30 15:54:14', '2018-09-30 15:54:14'),
(36, 7, 5, 1, '09', '2018', '2018-09-30 15:54:19', '2018-09-30 15:54:19'),
(37, 7, 5, 1, '09', '2018', '2018-09-30 15:54:25', '2018-09-30 15:54:25'),
(38, 7, 5, 1, '09', '2018', '2018-09-30 15:54:28', '2018-09-30 15:54:28'),
(39, 7, 5, 1, '09', '2018', '2018-09-30 15:54:34', '2018-09-30 15:54:34'),
(40, 5, 7, 1, '09', '2018', '2018-09-30 15:54:38', '2018-09-30 15:54:38'),
(41, 7, 5, 1, '09', '2018', '2018-09-30 15:55:07', '2018-09-30 15:55:07'),
(42, 7, 5, 1, '09', '2018', '2018-09-30 15:55:33', '2018-09-30 15:55:33'),
(43, 7, 5, 1, '09', '2018', '2018-09-30 15:57:06', '2018-09-30 15:57:06'),
(44, 7, 5, 1, '09', '2018', '2018-09-30 15:58:07', '2018-09-30 15:58:07'),
(45, 7, 5, 1, '09', '2018', '2018-09-30 15:58:14', '2018-09-30 15:58:14'),
(46, 5, 2, 1, '09', '2018', '2018-09-30 21:52:28', '2018-09-30 21:52:28'),
(47, 5, 2, 1, '09', '2018', '2018-09-30 21:53:06', '2018-09-30 21:53:06'),
(48, 2, 8, 1, '10', '2018', '2018-10-02 14:16:15', '2018-10-02 14:16:15'),
(49, 2, 8, 1, '10', '2018', '2018-10-02 14:16:19', '2018-10-02 14:16:19'),
(50, 2, 5, 1, '10', '2018', '2018-10-02 14:27:59', '2018-10-02 14:27:59'),
(51, 2, 5, 1, '10', '2018', '2018-10-02 14:28:06', '2018-10-02 14:28:06'),
(52, 2, 7, 1, '10', '2018', '2018-10-02 14:28:49', '2018-10-02 14:28:49'),
(53, 2, 7, 1, '10', '2018', '2018-10-02 14:28:55', '2018-10-02 14:28:55'),
(54, 2, 5, 1, '10', '2018', '2018-10-02 14:36:24', '2018-10-02 14:36:24'),
(55, 2, 5, 1, '10', '2018', '2018-10-02 14:40:35', '2018-10-02 14:40:35'),
(56, 7, 5, 1, '10', '2018', '2018-10-04 23:51:56', '2018-10-04 23:51:56'),
(57, 7, 5, 1, '10', '2018', '2018-10-04 23:55:14', '2018-10-04 23:55:14'),
(58, 7, 5, 1, '10', '2018', '2018-10-04 23:55:22', '2018-10-04 23:55:22'),
(59, 7, 5, 1, '10', '2018', '2018-10-04 23:56:22', '2018-10-04 23:56:22'),
(60, 2, 3, 1, '10', '2018', '2018-10-06 15:20:25', '2018-10-06 15:20:25'),
(61, 2, 3, 1, '10', '2018', '2018-10-06 15:28:44', '2018-10-06 15:28:44'),
(62, 2, 3, 1, '10', '2018', '2018-10-06 15:28:49', '2018-10-06 15:28:49'),
(63, 2, 3, 1, '10', '2018', '2018-10-06 15:29:24', '2018-10-06 15:29:24'),
(64, 1, 2, 1, '10', '2018', '2018-10-06 15:35:17', '2018-10-06 15:35:17'),
(65, 1, 2, 1, '10', '2018', '2018-10-06 15:35:24', '2018-10-06 15:35:24'),
(66, 2, 3, 1, '10', '2018', '2018-10-06 15:36:18', '2018-10-06 15:36:18'),
(67, 2, 3, 1, '10', '2018', '2018-10-06 15:38:07', '2018-10-06 15:38:07'),
(68, 2, 3, 1, '10', '2018', '2018-10-06 15:38:57', '2018-10-06 15:38:57'),
(69, 2, 3, 1, '10', '2018', '2018-10-06 15:39:01', '2018-10-06 15:39:01'),
(70, 2, 3, 1, '10', '2018', '2018-10-06 15:39:30', '2018-10-06 15:39:30'),
(71, 2, 3, 1, '10', '2018', '2018-10-06 15:39:35', '2018-10-06 15:39:35'),
(72, 1, 3, 1, '10', '2018', '2018-10-06 15:42:02', '2018-10-06 15:42:02'),
(73, 3, 2, 1, '10', '2018', '2018-10-06 15:47:04', '2018-10-06 15:47:04'),
(74, 2, 3, 1, '10', '2018', '2018-10-06 15:56:06', '2018-10-06 15:56:06'),
(75, 3, 2, 1, '10', '2018', '2018-10-06 15:56:48', '2018-10-06 15:56:48'),
(76, 3, 11, 1, '10', '2018', '2018-10-06 15:58:58', '2018-10-06 15:58:58'),
(77, 2, 3, 1, '10', '2018', '2018-10-06 16:29:32', '2018-10-06 16:29:32'),
(78, 2, 2, 1, '10', '2018', '2018-10-06 16:31:13', '2018-10-06 16:31:13'),
(79, 3, 2, 1, '10', '2018', '2018-10-06 16:56:04', '2018-10-06 16:56:04'),
(80, 3, 5, 1, '10', '2018', '2018-10-06 16:56:12', '2018-10-06 16:56:12'),
(81, 2, 7, 1, '10', '2018', '2018-10-09 16:05:28', '2018-10-09 16:05:28'),
(82, 12, 2, 1, '10', '2018', '2018-10-09 18:48:31', '2018-10-09 18:48:31'),
(83, 12, 2, 1, '10', '2018', '2018-10-09 18:49:23', '2018-10-09 18:49:23'),
(84, 2, 12, 1, '10', '2018', '2018-10-09 18:49:44', '2018-10-09 18:49:44'),
(85, 2, 11, 1, '10', '2018', '2018-10-09 18:49:57', '2018-10-09 18:49:57'),
(86, 12, 2, 1, '10', '2018', '2018-10-09 18:50:05', '2018-10-09 18:50:05'),
(87, 2, 11, 1, '10', '2018', '2018-10-09 19:00:06', '2018-10-09 19:00:06'),
(88, 2, 13, 1, '10', '2018', '2018-10-09 19:00:12', '2018-10-09 19:00:12'),
(89, 2, 3, 1, '10', '2018', '2018-10-09 19:01:17', '2018-10-09 19:01:17'),
(90, 2, 3, 1, '10', '2018', '2018-10-09 19:01:26', '2018-10-09 19:01:26'),
(91, 2, 11, 1, '10', '2018', '2018-10-09 19:01:35', '2018-10-09 19:01:35'),
(92, 2, 11, 1, '10', '2018', '2018-10-09 19:01:39', '2018-10-09 19:01:39'),
(93, 2, 11, 1, '10', '2018', '2018-10-09 19:02:29', '2018-10-09 19:02:29'),
(94, 11, 2, 1, '10', '2018', '2018-10-09 19:04:31', '2018-10-09 19:04:31'),
(95, 12, 13, 1, '10', '2018', '2018-10-11 08:30:22', '2018-10-11 08:30:22'),
(96, 12, 13, 1, '10', '2018', '2018-10-11 08:30:23', '2018-10-11 08:30:23'),
(97, 12, 13, 1, '10', '2018', '2018-10-11 08:30:58', '2018-10-11 08:30:58'),
(98, 5, 12, 1, '10', '2018', '2018-10-11 08:44:57', '2018-10-11 08:44:57'),
(99, 5, 12, 1, '10', '2018', '2018-10-11 08:45:12', '2018-10-11 08:45:12'),
(100, 5, 12, 1, '10', '2018', '2018-10-11 08:45:19', '2018-10-11 08:45:19'),
(101, 5, 12, 1, '10', '2018', '2018-10-11 08:57:04', '2018-10-11 08:57:04'),
(102, 5, 12, 1, '10', '2018', '2018-10-11 09:02:34', '2018-10-11 09:02:34'),
(103, 12, 13, 1, '10', '2018', '2018-10-11 09:05:04', '2018-10-11 09:05:04'),
(104, 12, 13, 1, '10', '2018', '2018-10-11 09:05:13', '2018-10-11 09:05:13'),
(105, 12, 13, 1, '10', '2018', '2018-10-11 09:05:57', '2018-10-11 09:05:57'),
(106, 5, 13, 1, '10', '2018', '2018-10-11 09:06:45', '2018-10-11 09:06:45'),
(107, 2, 13, 1, '10', '2018', '2018-10-11 14:54:08', '2018-10-11 14:54:08'),
(108, 2, 13, 1, '10', '2018', '2018-10-11 15:56:54', '2018-10-11 15:56:54'),
(109, 2, 13, 1, '10', '2018', '2018-10-11 15:57:01', '2018-10-11 15:57:01'),
(110, 2, 13, 1, '10', '2018', '2018-10-11 15:57:09', '2018-10-11 15:57:09'),
(111, 2, 13, 1, '10', '2018', '2018-10-11 16:04:22', '2018-10-11 16:04:22'),
(112, 2, 13, 1, '10', '2018', '2018-10-11 16:11:02', '2018-10-11 16:11:02'),
(113, 2, 13, 1, '10', '2018', '2018-10-11 16:11:07', '2018-10-11 16:11:07'),
(114, 2, 13, 1, '10', '2018', '2018-10-11 16:11:58', '2018-10-11 16:11:58'),
(115, 2, 12, 1, '10', '2018', '2018-10-11 16:12:20', '2018-10-11 16:12:20'),
(116, 2, 12, 1, '10', '2018', '2018-10-11 16:12:27', '2018-10-11 16:12:27'),
(117, 2, 12, 1, '10', '2018', '2018-10-11 16:13:24', '2018-10-11 16:13:24'),
(118, 7, 2, 1, '10', '2018', '2018-10-12 00:31:02', '2018-10-12 00:31:02'),
(119, 5, 2, 1, '11', '2018', '2018-11-01 21:20:36', '2018-11-01 21:20:36'),
(120, 5, 2, 1, '11', '2018', '2018-11-01 21:21:24', '2018-11-01 21:21:24'),
(121, 5, 2, 1, '11', '2018', '2018-11-01 21:21:30', '2018-11-01 21:21:30'),
(122, 5, 2, 1, '11', '2018', '2018-11-01 21:22:09', '2018-11-01 21:22:09'),
(123, 5, 2, 1, '11', '2018', '2018-11-01 21:22:24', '2018-11-01 21:22:24'),
(124, 5, 2, 1, '11', '2018', '2018-11-01 21:50:04', '2018-11-01 21:50:04'),
(125, 5, 2, 1, '11', '2018', '2018-11-01 21:50:06', '2018-11-01 21:50:06'),
(126, 5, 12, 1, '11', '2018', '2018-11-01 21:55:43', '2018-11-01 21:55:43'),
(127, 5, 12, 1, '11', '2018', '2018-11-01 21:55:58', '2018-11-01 21:55:58'),
(128, 5, 12, 1, '11', '2018', '2018-11-01 22:23:42', '2018-11-01 22:23:42'),
(129, 5, 12, 1, '11', '2018', '2018-11-01 22:23:53', '2018-11-01 22:23:53'),
(130, 5, 12, 1, '11', '2018', '2018-11-01 22:31:42', '2018-11-01 22:31:42'),
(131, 5, 12, 1, '11', '2018', '2018-11-01 22:31:56', '2018-11-01 22:31:56'),
(132, 5, 12, 1, '11', '2018', '2018-11-01 22:32:33', '2018-11-01 22:32:33'),
(133, 5, 13, 1, '11', '2018', '2018-11-01 22:38:26', '2018-11-01 22:38:26'),
(134, 5, 11, 1, '11', '2018', '2018-11-01 22:45:47', '2018-11-01 22:45:47'),
(135, 5, 3, 1, '11', '2018', '2018-11-01 22:46:10', '2018-11-01 22:46:10'),
(136, 5, 2, 1, '11', '2018', '2018-11-01 22:48:46', '2018-11-01 22:48:46'),
(137, 5, 3, 1, '11', '2018', '2018-11-01 22:49:18', '2018-11-01 22:49:18'),
(138, 5, 2, 1, '11', '2018', '2018-11-01 22:50:33', '2018-11-01 22:50:33'),
(139, 18, 17, 1, '11', '2018', '2018-11-05 14:09:47', '2018-11-05 14:09:47'),
(140, 18, 17, 1, '11', '2018', '2018-11-05 14:11:28', '2018-11-05 14:11:28'),
(141, 18, 17, 1, '11', '2018', '2018-11-05 14:59:50', '2018-11-05 14:59:50'),
(142, 18, 17, 1, '11', '2018', '2018-11-05 14:59:55', '2018-11-05 14:59:55'),
(143, 17, 18, 1, '11', '2018', '2018-11-05 15:08:49', '2018-11-05 15:08:49'),
(144, 17, 18, 1, '11', '2018', '2018-11-05 15:10:36', '2018-11-05 15:10:36'),
(145, 17, 18, 1, '11', '2018', '2018-11-05 15:10:39', '2018-11-05 15:10:39'),
(146, 18, 17, 1, '11', '2018', '2018-11-05 15:11:14', '2018-11-05 15:11:14'),
(147, 17, 18, 1, '11', '2018', '2018-11-05 15:11:19', '2018-11-05 15:11:19'),
(148, 18, 17, 1, '11', '2018', '2018-11-05 15:11:28', '2018-11-05 15:11:28'),
(149, 18, 17, 1, '11', '2018', '2018-11-05 15:11:34', '2018-11-05 15:11:34'),
(150, 18, 18, 1, '11', '2018', '2018-11-05 15:11:47', '2018-11-05 15:11:47'),
(151, 17, 18, 1, '11', '2018', '2018-11-05 15:29:20', '2018-11-05 15:29:20'),
(152, 18, 17, 1, '11', '2018', '2018-11-05 15:32:43', '2018-11-05 15:32:43'),
(153, 18, 17, 1, '11', '2018', '2018-11-05 15:32:46', '2018-11-05 15:32:46'),
(154, 18, 17, 1, '11', '2018', '2018-11-05 15:32:49', '2018-11-05 15:32:49'),
(155, 18, 18, 1, '11', '2018', '2018-11-05 15:32:55', '2018-11-05 15:32:55'),
(156, 18, 18, 1, '11', '2018', '2018-11-05 15:33:11', '2018-11-05 15:33:11'),
(157, 18, 18, 1, '11', '2018', '2018-11-05 15:33:59', '2018-11-05 15:33:59'),
(158, 18, 18, 1, '11', '2018', '2018-11-05 15:34:05', '2018-11-05 15:34:05'),
(159, 18, 18, 1, '11', '2018', '2018-11-05 15:34:19', '2018-11-05 15:34:19'),
(160, 17, 18, 1, '11', '2018', '2018-11-05 15:34:55', '2018-11-05 15:34:55'),
(161, 17, 18, 1, '11', '2018', '2018-11-05 15:35:16', '2018-11-05 15:35:16'),
(162, 17, 18, 1, '11', '2018', '2018-11-05 15:35:27', '2018-11-05 15:35:27'),
(163, 17, 18, 1, '11', '2018', '2018-11-05 15:35:39', '2018-11-05 15:35:39'),
(164, 17, 18, 1, '11', '2018', '2018-11-05 15:35:44', '2018-11-05 15:35:44'),
(165, 17, 18, 1, '11', '2018', '2018-11-05 15:35:49', '2018-11-05 15:35:49'),
(166, 18, 17, 1, '11', '2018', '2018-11-05 15:46:52', '2018-11-05 15:46:52'),
(167, 17, 18, 1, '11', '2018', '2018-11-05 15:46:58', '2018-11-05 15:46:58'),
(168, 18, 17, 1, '11', '2018', '2018-11-05 15:47:07', '2018-11-05 15:47:07'),
(169, 17, 18, 1, '11', '2018', '2018-11-05 15:47:46', '2018-11-05 15:47:46'),
(170, 18, 17, 1, '11', '2018', '2018-11-05 16:01:04', '2018-11-05 16:01:04'),
(171, 17, 18, 1, '11', '2018', '2018-11-05 18:03:14', '2018-11-05 18:03:14'),
(172, 17, 18, 1, '11', '2018', '2018-11-05 18:03:18', '2018-11-05 18:03:18'),
(173, 17, 18, 1, '11', '2018', '2018-11-05 18:03:26', '2018-11-05 18:03:26'),
(174, 17, 18, 1, '11', '2018', '2018-11-05 18:03:29', '2018-11-05 18:03:29'),
(175, 18, 17, 1, '11', '2018', '2018-11-05 18:04:01', '2018-11-05 18:04:01'),
(176, 17, 18, 1, '11', '2018', '2018-11-05 18:04:52', '2018-11-05 18:04:52'),
(177, 17, 18, 1, '11', '2018', '2018-11-05 18:07:17', '2018-11-05 18:07:17'),
(178, 17, 18, 1, '11', '2018', '2018-11-05 19:48:33', '2018-11-05 19:48:33'),
(179, 17, 18, 1, '11', '2018', '2018-11-05 19:48:36', '2018-11-05 19:48:36'),
(180, 17, 18, 1, '11', '2018', '2018-11-05 19:48:44', '2018-11-05 19:48:44'),
(181, 18, 17, 1, '11', '2018', '2018-11-05 19:48:57', '2018-11-05 19:48:57'),
(182, 18, 17, 1, '11', '2018', '2018-11-05 19:49:02', '2018-11-05 19:49:02'),
(183, 17, 18, 1, '11', '2018', '2018-11-05 19:50:08', '2018-11-05 19:50:08'),
(184, 18, 17, 1, '11', '2018', '2018-11-05 19:50:23', '2018-11-05 19:50:23'),
(185, 18, 17, 1, '11', '2018', '2018-11-05 19:50:32', '2018-11-05 19:50:32'),
(186, 17, 18, 1, '11', '2018', '2018-11-05 19:52:04', '2018-11-05 19:52:04'),
(187, 17, 18, 1, '11', '2018', '2018-11-05 19:53:10', '2018-11-05 19:53:10'),
(188, 17, 18, 1, '11', '2018', '2018-11-05 19:54:00', '2018-11-05 19:54:00'),
(189, 13, 2, 1, '11', '2018', '2018-11-09 14:37:00', '2018-11-09 14:37:00'),
(190, 17, 18, 1, '11', '2018', '2018-11-13 14:56:04', '2018-11-13 14:56:04'),
(191, 22, 18, 1, '11', '2018', '2018-11-13 18:00:40', '2018-11-13 18:00:40'),
(192, 22, 17, 1, '11', '2018', '2018-11-13 18:04:49', '2018-11-13 18:04:49'),
(193, 22, 17, 1, '11', '2018', '2018-11-13 18:04:53', '2018-11-13 18:04:53'),
(194, 22, 17, 1, '11', '2018', '2018-11-13 18:05:34', '2018-11-13 18:05:34'),
(195, 18, 22, 1, '11', '2018', '2018-11-13 18:20:53', '2018-11-13 18:20:53'),
(196, 22, 18, 1, '11', '2018', '2018-11-13 18:22:17', '2018-11-13 18:22:17'),
(197, 22, 18, 1, '11', '2018', '2018-11-13 18:22:22', '2018-11-13 18:22:22'),
(198, 22, 18, 1, '11', '2018', '2018-11-13 18:24:13', '2018-11-13 18:24:13'),
(199, 22, 18, 1, '11', '2018', '2018-11-14 11:58:39', '2018-11-14 11:58:39'),
(200, 22, 18, 1, '11', '2018', '2018-11-14 11:58:43', '2018-11-14 11:58:43'),
(201, 22, 18, 1, '11', '2018', '2018-11-14 11:58:58', '2018-11-14 11:58:58'),
(202, 22, 18, 1, '11', '2018', '2018-11-14 11:59:02', '2018-11-14 11:59:02'),
(203, 22, 18, 1, '11', '2018', '2018-11-14 11:59:05', '2018-11-14 11:59:05'),
(204, 22, 17, 1, '11', '2018', '2018-11-14 12:42:00', '2018-11-14 12:42:00'),
(205, 17, 22, 1, '11', '2018', '2018-11-14 12:42:26', '2018-11-14 12:42:26'),
(206, 17, 22, 1, '11', '2018', '2018-11-14 12:42:35', '2018-11-14 12:42:35'),
(207, 22, 17, 1, '11', '2018', '2018-11-14 12:43:38', '2018-11-14 12:43:38'),
(208, 17, 18, 1, '11', '2018', '2018-11-14 13:03:51', '2018-11-14 13:03:51'),
(209, 18, 17, 1, '11', '2018', '2018-11-14 13:24:19', '2018-11-14 13:24:19'),
(210, 18, 17, 1, '11', '2018', '2018-11-14 13:24:45', '2018-11-14 13:24:45'),
(211, 18, 17, 1, '11', '2018', '2018-11-14 13:25:01', '2018-11-14 13:25:01');

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
(1, 48, 55, '1.60', '2018-09-28 22:13:00', NULL),
(2, 48, 46, '1.70', '2018-09-28 22:13:00', NULL),
(3, 48, 48, '1.80', '2018-09-28 22:13:00', NULL),
(4, 48, 47, '2.90', '2018-09-28 22:13:00', NULL),
(5, 48, 49, '1.70', '2018-09-28 22:13:00', NULL),
(6, 48, 50, '2.70', '2018-09-28 22:13:00', NULL),
(7, 48, 124, '1.80', '2018-09-28 22:13:00', NULL),
(8, 48, 125, '2.50', '2018-09-28 22:13:00', NULL),
(9, 48, 126, '2.50', '2018-09-28 22:13:00', NULL),
(10, 48, 51, '2.40', '2018-09-28 22:13:00', NULL),
(11, 48, 52, '2.50', '2018-09-28 22:13:00', NULL),
(12, 48, 53, '2.50', '2018-09-28 22:13:00', NULL),
(13, 48, 54, '2.80', '2018-09-28 22:13:00', NULL),
(14, 48, 127, '2.60', '2018-09-28 22:13:00', NULL),
(15, 49, 55, '5.00', '2018-09-30 14:36:45', NULL),
(16, 49, 46, '5.00', '2018-09-30 14:36:45', NULL),
(17, 49, 48, '4.90', '2018-09-30 14:36:45', NULL),
(18, 49, 47, '5.00', '2018-09-30 14:36:45', NULL),
(19, 49, 49, '5.00', '2018-09-30 14:36:45', NULL),
(20, 49, 50, '5.00', '2018-09-30 14:36:45', NULL),
(21, 49, 124, '5.00', '2018-09-30 14:36:45', NULL),
(22, 49, 125, '5.00', '2018-09-30 14:36:45', NULL),
(23, 49, 126, '5.00', '2018-09-30 14:36:45', NULL),
(24, 49, 51, '5.00', '2018-09-30 14:36:45', NULL),
(25, 49, 52, '5.00', '2018-09-30 14:36:45', NULL),
(26, 49, 53, '5.00', '2018-09-30 14:36:45', NULL),
(27, 49, 54, '5.00', '2018-09-30 14:36:45', NULL),
(28, 49, 127, '5.00', '2018-09-30 14:36:45', NULL),
(29, 50, 11, '2.60', '2018-10-06 15:29:19', NULL),
(30, 50, 2, '2.70', '2018-10-06 15:29:19', NULL),
(31, 50, 4, '2.60', '2018-10-06 15:29:19', NULL),
(32, 50, 3, '2.40', '2018-10-06 15:29:19', NULL),
(33, 50, 5, '2.60', '2018-10-06 15:29:19', NULL),
(34, 50, 6, '2.30', '2018-10-06 15:29:19', NULL),
(35, 50, 12, '2.60', '2018-10-06 15:29:19', NULL),
(36, 50, 13, '2.50', '2018-10-06 15:29:19', NULL),
(37, 50, 14, '2.50', '2018-10-06 15:29:19', NULL),
(38, 50, 8, '2.50', '2018-10-06 15:29:19', NULL),
(39, 50, 9, '2.60', '2018-10-06 15:29:19', NULL),
(40, 50, 10, '2.50', '2018-10-06 15:29:19', NULL),
(41, 50, 15, '2.70', '2018-10-06 15:29:19', NULL),
(42, 51, 11, '1.50', '2018-10-06 15:39:26', NULL),
(43, 51, 2, '1.80', '2018-10-06 15:39:26', NULL),
(44, 51, 4, '1.80', '2018-10-06 15:39:26', NULL),
(45, 51, 3, '1.60', '2018-10-06 15:39:26', NULL),
(46, 51, 5, '3.00', '2018-10-06 15:39:26', NULL),
(47, 51, 6, '1.60', '2018-10-06 15:39:26', NULL),
(48, 51, 12, '2.70', '2018-10-06 15:39:26', NULL),
(49, 51, 13, '1.60', '2018-10-06 15:39:26', NULL),
(50, 51, 14, '2.70', '2018-10-06 15:39:26', NULL),
(51, 51, 8, '2.70', '2018-10-06 15:39:26', NULL),
(52, 51, 9, '2.60', '2018-10-06 15:39:26', NULL),
(53, 51, 10, '2.60', '2018-10-06 15:39:26', NULL),
(54, 51, 15, '2.50', '2018-10-06 15:39:26', NULL),
(55, 52, 11, '3.70', '2018-10-09 19:02:25', NULL),
(56, 52, 2, '5.00', '2018-10-09 19:02:25', NULL),
(57, 52, 4, '3.60', '2018-10-09 19:02:25', NULL),
(58, 52, 3, '2.90', '2018-10-09 19:02:25', NULL),
(59, 52, 5, '3.60', '2018-10-09 19:02:25', NULL),
(60, 52, 6, '3.30', '2018-10-09 19:02:25', NULL),
(61, 52, 12, '3.60', '2018-10-09 19:02:25', NULL),
(62, 52, 13, '2.90', '2018-10-09 19:02:25', NULL),
(63, 52, 14, '3.50', '2018-10-09 19:02:25', NULL),
(64, 52, 8, '2.90', '2018-10-09 19:02:25', NULL),
(65, 52, 9, '3.30', '2018-10-09 19:02:25', NULL),
(66, 52, 10, '3.00', '2018-10-09 19:02:25', NULL),
(67, 52, 15, '3.30', '2018-10-09 19:02:25', NULL),
(68, 53, 66, '3.90', '2018-10-11 09:05:53', NULL),
(69, 53, 57, '3.60', '2018-10-11 09:05:53', NULL),
(70, 53, 59, '3.80', '2018-10-11 09:05:53', NULL),
(71, 53, 58, '3.60', '2018-10-11 09:05:53', NULL),
(72, 53, 60, '3.80', '2018-10-11 09:05:53', NULL),
(73, 53, 61, '3.40', '2018-10-11 09:05:53', NULL),
(74, 53, 67, '4.00', '2018-10-11 09:05:53', NULL),
(75, 53, 68, '3.90', '2018-10-11 09:05:53', NULL),
(76, 53, 69, '4.00', '2018-10-11 09:05:53', NULL),
(77, 53, 62, '4.00', '2018-10-11 09:05:53', NULL),
(78, 53, 63, '3.50', '2018-10-11 09:05:53', NULL),
(79, 53, 64, '3.60', '2018-10-11 09:05:53', NULL),
(80, 53, 65, '3.40', '2018-10-11 09:05:53', NULL),
(81, 53, 70, '3.60', '2018-10-11 09:05:53', NULL),
(82, 55, 55, '3.00', '2018-10-11 16:11:58', NULL),
(83, 55, 46, '2.90', '2018-10-11 16:11:58', NULL),
(84, 55, 48, '2.90', '2018-10-11 16:11:58', NULL),
(85, 55, 47, '3.00', '2018-10-11 16:11:58', NULL),
(86, 55, 49, '2.90', '2018-10-11 16:11:58', NULL),
(87, 55, 50, '3.00', '2018-10-11 16:11:58', NULL),
(88, 55, 124, '2.90', '2018-10-11 16:11:58', NULL),
(89, 55, 125, '2.90', '2018-10-11 16:11:58', NULL),
(90, 55, 126, '2.90', '2018-10-11 16:11:58', NULL),
(91, 55, 51, '3.00', '2018-10-11 16:11:58', NULL),
(92, 55, 52, '3.00', '2018-10-11 16:11:58', NULL),
(93, 55, 53, '3.00', '2018-10-11 16:11:58', NULL),
(94, 55, 54, '3.10', '2018-10-11 16:11:58', NULL),
(95, 55, 127, '3.00', '2018-10-11 16:11:58', NULL),
(96, 56, 55, '2.60', '2018-10-11 16:13:23', NULL),
(97, 56, 46, '5.00', '2018-10-11 16:13:23', NULL),
(98, 56, 48, '2.70', '2018-10-11 16:13:23', NULL),
(99, 56, 47, '5.00', '2018-10-11 16:13:23', NULL),
(100, 56, 49, '3.50', '2018-10-11 16:13:23', NULL),
(101, 56, 50, '5.00', '2018-10-11 16:13:23', NULL),
(102, 56, 124, '5.00', '2018-10-11 16:13:23', NULL),
(103, 56, 125, '5.00', '2018-10-11 16:13:23', NULL),
(104, 56, 126, '5.00', '2018-10-11 16:13:23', NULL),
(105, 56, 51, '5.00', '2018-10-11 16:13:23', NULL),
(106, 56, 52, '4.90', '2018-10-11 16:13:23', NULL),
(107, 56, 53, '5.00', '2018-10-11 16:13:23', NULL),
(108, 56, 54, '5.00', '2018-10-11 16:13:23', NULL),
(109, 56, 127, '4.80', '2018-10-11 16:13:23', NULL),
(110, 57, 55, '2.50', '2018-11-05 18:04:48', NULL),
(111, 57, 46, '3.10', '2018-11-05 18:04:48', NULL),
(112, 57, 48, '2.50', '2018-11-05 18:04:48', NULL),
(113, 57, 47, '2.90', '2018-11-05 18:04:48', NULL),
(114, 57, 49, '2.60', '2018-11-05 18:04:48', NULL),
(115, 57, 50, '3.00', '2018-11-05 18:04:48', NULL),
(116, 57, 124, '3.10', '2018-11-05 18:04:48', NULL),
(117, 57, 125, '3.00', '2018-11-05 18:04:48', NULL),
(118, 57, 126, '3.00', '2018-11-05 18:04:48', NULL),
(119, 57, 51, '3.10', '2018-11-05 18:04:48', NULL),
(120, 57, 52, '3.20', '2018-11-05 18:04:48', NULL),
(121, 57, 53, '3.00', '2018-11-05 18:04:48', NULL),
(122, 57, 54, '3.10', '2018-11-05 18:04:48', NULL),
(123, 57, 127, '3.00', '2018-11-05 18:04:48', NULL),
(124, 58, 11, '3.60', '2018-11-13 18:05:34', NULL),
(125, 58, 2, '1.60', '2018-11-13 18:05:34', NULL),
(126, 58, 4, '2.50', '2018-11-13 18:05:34', NULL),
(127, 58, 3, '3.30', '2018-11-13 18:05:34', NULL),
(128, 58, 5, '3.80', '2018-11-13 18:05:34', NULL),
(129, 58, 6, '4.00', '2018-11-13 18:05:34', NULL),
(130, 58, 12, '2.80', '2018-11-13 18:05:34', NULL),
(131, 58, 13, '1.80', '2018-11-13 18:05:34', NULL),
(132, 58, 14, '1.40', '2018-11-13 18:05:34', NULL),
(133, 58, 8, '1.60', '2018-11-13 18:05:34', NULL),
(134, 58, 9, '4.20', '2018-11-13 18:05:34', NULL),
(135, 58, 10, '1.20', '2018-11-13 18:05:34', NULL),
(136, 58, 15, '3.80', '2018-11-13 18:05:34', NULL),
(137, 59, 11, '1.70', '2018-11-13 18:24:13', NULL),
(138, 59, 2, '1.60', '2018-11-13 18:24:13', NULL),
(139, 59, 4, '4.10', '2018-11-13 18:24:13', NULL),
(140, 59, 3, '3.50', '2018-11-13 18:24:13', NULL),
(141, 59, 5, '3.00', '2018-11-13 18:24:13', NULL),
(142, 59, 6, '4.20', '2018-11-13 18:24:13', NULL),
(143, 59, 12, '1.60', '2018-11-13 18:24:13', NULL),
(144, 59, 13, '1.50', '2018-11-13 18:24:13', NULL),
(145, 59, 14, '3.50', '2018-11-13 18:24:13', NULL),
(146, 59, 8, '2.00', '2018-11-13 18:24:13', NULL),
(147, 59, 9, '1.90', '2018-11-13 18:24:13', NULL),
(148, 59, 10, '3.40', '2018-11-13 18:24:13', NULL),
(149, 59, 15, '4.40', '2018-11-13 18:24:13', NULL);

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
(48, 2, 7, 3, '2.29', 1, '3.7', 'accepted', '0', '2018-09-28 22:13:00', '2018-09-28 22:13:00'),
(49, 7, 7, 5, '4.99', 0, '5.0', 'accepted', '0', '2018-09-30 14:36:45', '2018-09-30 14:36:45'),
(51, 2, 1, 3, '2.21', 1, '3.6', 'accepted', '0', '2018-10-06 15:39:26', '2018-10-06 15:39:26'),
(52, 2, 1, 11, '3.43', 1, '3.6', 'accepted', '0', '2018-10-09 19:02:25', '2018-10-09 19:02:25'),
(53, 12, 3, 13, '3.72', 1, '4.0', 'accepted', '0', '2018-10-11 09:05:53', '2018-10-11 09:05:53'),
(55, 2, 7, 13, '2.96', 1, '5.0', 'pending', '0', '2018-10-11 16:11:54', '2018-10-11 16:11:58'),
(56, 2, 7, 12, '4.54', 1, '3.9', 'accepted', '0', '2018-10-11 16:13:17', '2018-10-11 16:13:23'),
(57, 17, 7, 18, '2.94', 1, '2.6', 'accepted', '0', '2018-11-05 18:04:48', '2018-11-05 18:04:48'),
(58, 22, 1, 17, '2.74', 1, '1.4', 'accepted', '0', '2018-11-13 18:05:29', '2018-11-13 18:05:34'),
(59, 22, 1, 18, '2.80', 1, '1.6', 'pending', '0', '2018-11-13 18:24:08', '2018-11-13 18:24:13');

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
(1, 2, NULL, NULL, '919956771380', '2018-09-28 16:51:38', NULL),
(2, 2, NULL, NULL, '919956771380', '2018-09-28 16:52:18', NULL),
(3, 2, NULL, NULL, '919956771380', '2018-09-28 16:58:30', NULL),
(4, 2, NULL, NULL, '919956771380', '2018-09-28 16:59:30', NULL),
(5, 2, NULL, NULL, '919956771380', '2018-09-28 17:00:58', NULL),
(6, 17, 18, NULL, NULL, '2018-11-05 15:12:41', NULL),
(7, 17, NULL, NULL, '9179003327877', '2018-11-05 15:21:24', NULL),
(8, 17, NULL, NULL, '9179003327877', '2018-11-05 15:21:40', NULL),
(9, 17, 18, NULL, NULL, '2018-11-05 15:21:43', NULL),
(10, 17, 18, NULL, NULL, '2018-11-05 15:22:03', NULL),
(11, 17, NULL, 'vivekkumar@singsys.com', NULL, '2018-11-05 15:24:51', NULL);

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
(1, 'boss_rating', '3', '2018-07-19 18:30:00', NULL),
(2, 'peer_rating', '5', '2018-07-19 18:30:00', NULL),
(3, 'subordinate_rating', '5', '2018-07-19 18:30:00', NULL),
(4, 'customer_rating', '5', '2018-07-19 18:30:00', NULL),
(5, 'bronze_credibility', '10', '2018-07-19 18:30:00', NULL),
(6, 'silver_credibility', '20', '2018-07-19 18:30:00', NULL),
(7, 'gold_credibility', '30', '2018-07-19 18:30:00', NULL),
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
(1, 'his/ her boss (direct)', 'individual', 'active', NULL, '2018-09-06 14:30:00'),
(2, 'his/ her boss (indirect)', 'individual', 'active', NULL, '2018-09-06 14:30:16'),
(3, 'his/ her peer (direct)', 'individual', 'active', NULL, '2018-09-06 14:30:35'),
(4, 'his/ her peer (indirect)', 'individual', 'active', NULL, '2018-09-06 14:30:53'),
(5, 'his/ her subordinate (direct)', 'individual', 'active', NULL, '2018-09-06 14:31:10'),
(6, 'his/ her subordinate (indirect)', 'individual', 'active', NULL, '2018-09-06 14:31:29'),
(7, 'his/ her customer', 'individual', 'active', NULL, '2018-09-06 14:31:49'),
(8, 'Self', 'company', 'inactive', NULL, '2018-09-30 13:06:58'),
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
(1, 48, 'Awesome', '2018-09-28 22:13:00', NULL),
(3, 51, 'Awesome', '2018-10-06 15:39:26', NULL),
(4, 52, 'Excellent Mentor.', '2018-10-09 19:02:25', NULL),
(5, 53, 'Very approachable', '2018-10-11 09:05:53', NULL),
(6, 55, 'Very nice person !! ignore and Ignore expletive keyword testing', '2018-10-11 16:11:58', NULL),
(7, 56, 'Very nice person!! \r\nignore and Ignore expletive review testing again declined', '2018-10-11 16:13:23', NULL),
(8, 57, 'average', '2018-11-05 18:04:48', NULL),
(9, 58, 'Fuck', '2018-11-13 18:05:34', NULL),
(10, 59, 'Bastard', '2018-11-13 18:24:13', NULL);

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
(2, 55, 'pending', NULL, NULL),
(5, 59, 'pending', NULL, NULL);

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
(1, 2, 'Saurabh Shukla', '2018-09-27 21:16:03', '2018-09-27 21:16:03'),
(2, 3, 'jpg', '2018-09-27 21:16:36', '2018-09-27 21:16:36'),
(3, 3, 'singsys', '2018-09-27 21:54:25', '2018-09-27 21:54:25'),
(4, 3, 'singsys', '2018-09-27 21:55:41', '2018-09-27 21:55:41'),
(5, 3, 'mycompany', '2018-09-27 21:55:42', '2018-09-27 21:55:42'),
(6, 3, 'mycompany', '2018-09-27 21:55:50', '2018-09-27 21:55:50'),
(7, 3, 'my company', '2018-09-27 21:55:51', '2018-09-27 21:55:51'),
(8, 0, 'Singsys', '2018-09-27 21:58:53', '2018-09-27 21:58:53'),
(9, 3, 'singsys', '2018-09-27 22:00:51', '2018-09-27 22:00:51'),
(10, 0, 'Singsys', '2018-09-27 22:00:56', '2018-09-27 22:00:56'),
(11, 0, 'Singsys', '2018-09-27 22:01:00', '2018-09-27 22:01:00'),
(12, 0, 'Singsys Pvt. Ltd', '2018-09-27 22:02:38', '2018-09-27 22:02:38'),
(13, 0, 'Singsys', '2018-09-27 22:04:16', '2018-09-27 22:04:16'),
(14, 0, 'Singsys', '2018-09-27 22:14:06', '2018-09-27 22:14:06'),
(15, 0, 'Singsys', '2018-09-27 22:14:11', '2018-09-27 22:14:11'),
(16, 0, 'Saurabh', '2018-09-28 17:23:56', '2018-09-28 17:23:56'),
(17, 0, 'Saurabh', '2018-09-28 17:24:00', '2018-09-28 17:24:00'),
(18, 0, 'saur', '2018-09-28 17:27:34', '2018-09-28 17:27:34'),
(19, 0, 'saurabh', '2018-09-28 17:37:34', '2018-09-28 17:37:34'),
(20, 0, 'Singsys Pvt. Ltd', '2018-09-28 17:37:43', '2018-09-28 17:37:43'),
(21, 0, 'Singsys Pvt. Ltd', '2018-09-28 17:37:44', '2018-09-28 17:37:44'),
(22, 0, 'MyCompany', '2018-09-28 17:38:03', '2018-09-28 17:38:03'),
(23, 0, 'MyCompany', '2018-09-28 17:38:04', '2018-09-28 17:38:04'),
(24, 0, 'Saurabh', '2018-09-28 17:38:37', '2018-09-28 17:38:37'),
(25, 0, 'Saurabh', '2018-09-28 17:38:38', '2018-09-28 17:38:38'),
(26, 0, 'Raveena Nigam', '2018-09-28 17:39:53', '2018-09-28 17:39:53'),
(27, 0, 'Raveena Nigam', '2018-09-28 17:39:54', '2018-09-28 17:39:54'),
(28, 0, 'MyCompany', '2018-09-28 17:40:15', '2018-09-28 17:40:15'),
(29, 0, 'MyCompany', '2018-09-28 17:40:15', '2018-09-28 17:40:15'),
(30, 0, 'Saurabh', '2018-09-28 17:52:29', '2018-09-28 17:52:29'),
(31, 0, 'Saurabh', '2018-09-28 17:52:30', '2018-09-28 17:52:30'),
(32, 0, 'Raveena Nigam', '2018-09-28 17:52:37', '2018-09-28 17:52:37'),
(33, 0, 'Raveena Nigam', '2018-09-28 17:52:37', '2018-09-28 17:52:37'),
(34, 0, 'Singsys Pvt. Ltd', '2018-09-28 17:52:45', '2018-09-28 17:52:45'),
(35, 0, 'Singsys Pvt. Ltd', '2018-09-28 17:52:45', '2018-09-28 17:52:45'),
(36, 0, 'MyCompany', '2018-09-28 17:52:54', '2018-09-28 17:52:54'),
(37, 0, 'MyCompany', '2018-09-28 17:52:54', '2018-09-28 17:52:54'),
(38, 0, 'Singsys', '2018-09-28 18:04:57', '2018-09-28 18:04:57'),
(39, 0, 'Singsys', '2018-09-28 18:04:58', '2018-09-28 18:04:58'),
(40, 0, 'Singsys', '2018-09-28 18:15:09', '2018-09-28 18:15:09'),
(41, 2, 'Singsys Pte. Ltd.', '2018-09-28 18:17:01', '2018-09-28 18:17:01'),
(42, 0, 'Singsys', '2018-09-28 18:17:58', '2018-09-28 18:17:58'),
(43, 0, 'Singsys', '2018-09-28 18:17:59', '2018-09-28 18:17:59'),
(44, 0, 'Singsys Pte. Ltd.', '2018-09-28 18:34:30', '2018-09-28 18:34:30'),
(45, 0, 'Singsys Pte. Ltd.', '2018-09-28 18:34:32', '2018-09-28 18:34:32'),
(46, 0, 'Singsys Pte. Ltd.', '2018-09-28 18:36:10', '2018-09-28 18:36:10'),
(47, 0, 'Singsys Pte. Ltd.', '2018-09-28 18:38:14', '2018-09-28 18:38:14'),
(48, 0, 'Singsys Pte. Ltd.', '2018-09-28 18:41:35', '2018-09-28 18:41:35'),
(49, 3, 'singsys', '2018-09-28 18:58:24', '2018-09-28 18:58:24'),
(50, 3, 'singsys', '2018-09-28 18:58:38', '2018-09-28 18:58:38'),
(51, 3, 'singsys', '2018-09-28 18:59:07', '2018-09-28 18:59:07'),
(52, 3, 'singsys', '2018-09-28 18:59:37', '2018-09-28 18:59:37'),
(53, 3, 'singsys', '2018-09-28 19:00:33', '2018-09-28 19:00:33'),
(54, 3, 'singsys', '2018-09-28 19:01:20', '2018-09-28 19:01:20'),
(55, 3, 'singsys', '2018-09-28 19:01:25', '2018-09-28 19:01:25'),
(56, 3, 'singsys', '2018-09-28 19:03:02', '2018-09-28 19:03:02'),
(57, 3, 'singsys', '2018-09-28 19:04:43', '2018-09-28 19:04:43'),
(58, 3, 'singsys', '2018-09-28 19:05:22', '2018-09-28 19:05:22'),
(59, 3, 'singsys', '2018-09-28 19:09:15', '2018-09-28 19:09:15'),
(60, 3, 'singsys', '2018-09-28 19:09:30', '2018-09-28 19:09:30'),
(61, 3, 'singsys', '2018-09-28 19:13:50', '2018-09-28 19:13:50'),
(62, 3, 'singsys', '2018-09-28 19:14:56', '2018-09-28 19:14:56'),
(63, 3, 'singsys', '2018-09-28 19:16:01', '2018-09-28 19:16:01'),
(64, 3, 'singsys', '2018-09-28 19:16:16', '2018-09-28 19:16:16'),
(65, 3, 'singsys', '2018-09-28 19:27:51', '2018-09-28 19:27:51'),
(66, 3, 'singsys', '2018-09-28 19:33:33', '2018-09-28 19:33:33'),
(67, 3, 'singsys', '2018-09-28 19:33:45', '2018-09-28 19:33:45'),
(68, 3, 'singsys', '2018-09-28 19:41:49', '2018-09-28 19:41:49'),
(69, 3, 'Singsys Pte. Ltd.', '2018-09-28 20:22:23', '2018-09-28 20:22:23'),
(70, 5, 'saurabh', '2018-09-28 21:55:55', '2018-09-28 21:55:55'),
(71, 5, 'raveena', '2018-09-28 21:56:04', '2018-09-28 21:56:04'),
(72, 5, 'singsys', '2018-09-28 21:56:17', '2018-09-28 21:56:17'),
(73, 5, 'singsys', '2018-09-28 21:56:18', '2018-09-28 21:56:18'),
(74, 2, 'Singsys Pte. Ltd.', '2018-09-28 22:11:58', '2018-09-28 22:11:58'),
(75, 2, 'Singsys Pte. Ltd.', '2018-09-28 22:12:10', '2018-09-28 22:12:10'),
(76, 5, 'terence', '2018-09-28 22:24:58', '2018-09-28 22:24:58'),
(77, 5, 'chen', '2018-09-28 22:26:44', '2018-09-28 22:26:44'),
(78, 5, 'chen', '2018-09-28 22:26:45', '2018-09-28 22:26:45'),
(79, 5, 'chen chuen', '2018-09-28 22:26:49', '2018-09-28 22:26:49'),
(80, 5, 'chen chuen', '2018-09-28 22:26:50', '2018-09-28 22:26:50'),
(81, 5, 'terence', '2018-09-28 22:27:03', '2018-09-28 22:27:03'),
(82, 5, 'terence', '2018-09-28 22:27:03', '2018-09-28 22:27:03'),
(83, 5, 'terence yong', '2018-09-28 22:27:08', '2018-09-28 22:27:08'),
(84, 5, 'terence yong', '2018-09-28 22:27:08', '2018-09-28 22:27:08'),
(85, 2, 'Terence Yong', '2018-09-28 22:28:23', '2018-09-28 22:28:23'),
(86, 2, 'Terence Yong', '2018-09-28 22:29:08', '2018-09-28 22:29:08'),
(87, 2, 'Terence', '2018-09-28 22:29:23', '2018-09-28 22:29:23'),
(88, 2, 'Terence', '2018-09-28 22:29:24', '2018-09-28 22:29:24'),
(89, 2, 'Terence Yong', '2018-09-28 22:29:38', '2018-09-28 22:29:38'),
(90, 2, 'Terence Yong', '2018-09-28 22:29:39', '2018-09-28 22:29:39'),
(91, 2, 'Terence Yong', '2018-09-28 22:33:14', '2018-09-28 22:33:14'),
(92, 7, 'Chen Chuen Lee', '2018-09-28 23:44:39', '2018-09-28 23:44:39'),
(93, 7, 'lee chen chuen', '2018-09-28 23:45:11', '2018-09-28 23:45:11'),
(94, 7, 'Chen Chuen Lee', '2018-09-28 23:45:23', '2018-09-28 23:45:23'),
(95, 7, 'Chen Chuen Lee', '2018-09-28 23:45:23', '2018-09-28 23:45:23'),
(96, 7, 'Chen Chuen', '2018-09-28 23:45:38', '2018-09-28 23:45:38'),
(97, 7, 'Chen Chuen', '2018-09-28 23:45:38', '2018-09-28 23:45:38'),
(98, 7, 'Chen', '2018-09-28 23:45:42', '2018-09-28 23:45:42'),
(99, 7, 'Chen', '2018-09-28 23:45:43', '2018-09-28 23:45:43'),
(100, 7, 'lee chen', '2018-09-28 23:45:52', '2018-09-28 23:45:52'),
(101, 7, 'lee chen', '2018-09-28 23:45:53', '2018-09-28 23:45:53'),
(102, 7, 'lee', '2018-09-28 23:45:59', '2018-09-28 23:45:59'),
(103, 7, 'lee', '2018-09-28 23:46:00', '2018-09-28 23:46:00'),
(104, 7, 'lee chen chuen', '2018-09-28 23:46:06', '2018-09-28 23:46:06'),
(105, 7, 'lee chen chuen', '2018-09-28 23:46:07', '2018-09-28 23:46:07'),
(106, 7, 'chen chuen', '2018-09-28 23:47:06', '2018-09-28 23:47:06'),
(107, 7, 'chen chuen', '2018-09-28 23:47:07', '2018-09-28 23:47:07'),
(108, 7, 'chen chuen lee', '2018-09-30 14:35:47', '2018-09-30 14:35:47'),
(109, 5, 'shi', '2018-09-30 15:52:27', '2018-09-30 15:52:27'),
(110, 5, 'shi', '2018-09-30 15:54:35', '2018-09-30 15:54:35'),
(111, 7, 'American Express', '2018-09-30 16:02:19', '2018-09-30 16:02:19'),
(112, 5, 'shi', '2018-09-30 21:23:15', '2018-09-30 21:23:15'),
(113, 5, 'raveena', '2018-09-30 21:52:23', '2018-09-30 21:52:23'),
(114, 2, 'Singsys Pte. Ltd.', '2018-10-02 14:16:01', '2018-10-02 14:16:01'),
(115, 2, 'ravee', '2018-10-02 14:27:09', '2018-10-02 14:27:09'),
(116, 2, 'Chen Chuen Lee', '2018-10-02 14:27:51', '2018-10-02 14:27:51'),
(117, 2, 'Chen Chuen Lee', '2018-10-02 14:27:54', '2018-10-02 14:27:54'),
(118, 2, 'Chen Chuen Lee', '2018-10-02 14:28:27', '2018-10-02 14:28:27'),
(119, 2, 'lee chen', '2018-10-02 14:31:13', '2018-10-02 14:31:13'),
(120, 2, 'Chen Chuen Lee', '2018-10-02 14:36:18', '2018-10-02 14:36:18'),
(121, 2, 'Chen Chuen Lee', '2018-10-02 14:36:20', '2018-10-02 14:36:20'),
(122, 0, 'Knowledge management experts', '2018-10-03 09:22:18', '2018-10-03 09:22:18'),
(123, 0, 'Knowledge management experts', '2018-10-03 09:24:27', '2018-10-03 09:24:27'),
(124, 2, 'Singsys Pte. Ltd.', '2018-10-06 15:20:21', '2018-10-06 15:20:21'),
(125, 3, 'Raveena Nigam', '2018-10-06 15:47:01', '2018-10-06 15:47:01'),
(126, 3, 'Anjali Srivastava', '2018-10-06 15:58:56', '2018-10-06 15:58:56'),
(127, 12, 'Raveena Nigam', '2018-10-09 18:48:27', '2018-10-09 18:48:27'),
(128, 2, 'Singsys Pte. Ltd.', '2018-10-09 19:01:13', '2018-10-09 19:01:13'),
(129, 2, 'Singsys Pte. Ltd.', '2018-10-09 19:01:33', '2018-10-09 19:01:33'),
(130, 11, 'raveena', '2018-10-09 19:04:28', '2018-10-09 19:04:28'),
(131, 12, 'chen chuen', '2018-10-11 08:32:19', '2018-10-11 08:32:19'),
(132, 5, 'mohd', '2018-10-11 09:02:30', '2018-10-11 09:02:30'),
(133, 12, 'sushant', '2018-10-11 09:05:00', '2018-10-11 09:05:00'),
(134, 2, 'Sushant Chaudhary', '2018-10-11 15:56:51', '2018-10-11 15:56:51'),
(135, 2, 'sultan', '2018-10-11 16:12:16', '2018-10-11 16:12:16'),
(136, 0, 'Singsys Pte. Ltd.', '2018-10-13 10:58:06', '2018-10-13 10:58:06'),
(137, 0, 'Singsys Pte. Ltd.', '2018-10-13 10:58:07', '2018-10-13 10:58:07'),
(138, 0, 'Singsys Pte. Ltd.', '2018-10-20 01:33:48', '2018-10-20 01:33:48'),
(139, 0, 'Singsys Pte. Ltd.', '2018-10-20 01:33:50', '2018-10-20 01:33:50'),
(140, 0, 'Standard Chartered Bank', '2018-10-20 01:34:30', '2018-10-20 01:34:30'),
(141, 0, 'Dbs', '2018-10-20 01:34:48', '2018-10-20 01:34:48'),
(142, 0, 'Dbs', '2018-10-20 01:34:49', '2018-10-20 01:34:49'),
(143, 0, 'Dbs bank', '2018-10-20 01:34:57', '2018-10-20 01:34:57'),
(144, 0, 'Dbs bank', '2018-10-20 01:34:58', '2018-10-20 01:34:58'),
(145, 5, 'raveena', '2018-11-01 21:20:32', '2018-11-01 21:20:32'),
(146, 5, 'raveena', '2018-11-01 21:20:59', '2018-11-01 21:20:59'),
(147, 5, 'raveena', '2018-11-01 21:21:44', '2018-11-01 21:21:44'),
(148, 5, 'raveena', '2018-11-01 21:48:15', '2018-11-01 21:48:15'),
(149, 5, 'raveena', '2018-11-01 21:48:36', '2018-11-01 21:48:36'),
(150, 5, 'raveena', '2018-11-01 21:48:46', '2018-11-01 21:48:46'),
(151, 5, 'saurabh', '2018-11-01 22:16:19', '2018-11-01 22:16:19'),
(152, 5, 'saurabh', '2018-11-01 22:16:24', '2018-11-01 22:16:24'),
(153, 5, 'saurabh', '2018-11-01 22:16:25', '2018-11-01 22:16:25'),
(154, 5, 'singsys', '2018-11-01 22:16:28', '2018-11-01 22:16:28'),
(155, 5, 'singsys', '2018-11-01 22:16:29', '2018-11-01 22:16:29'),
(156, 5, 'singsys', '2018-11-01 22:33:28', '2018-11-01 22:33:28'),
(157, 5, 'sushant', '2018-11-01 22:38:22', '2018-11-01 22:38:22'),
(158, 5, 'ankit', '2018-11-01 22:44:21', '2018-11-01 22:44:21'),
(159, 5, 'analytics', '2018-11-01 22:44:29', '2018-11-01 22:44:29'),
(160, 5, 'analytics', '2018-11-01 22:44:30', '2018-11-01 22:44:30'),
(161, 5, 'raveena', '2018-11-01 22:44:34', '2018-11-01 22:44:34'),
(162, 5, 'raveena', '2018-11-01 22:44:35', '2018-11-01 22:44:35'),
(163, 5, 'singsys', '2018-11-01 22:46:04', '2018-11-01 22:46:04'),
(164, 5, 'singsys', '2018-11-01 22:46:57', '2018-11-01 22:46:57'),
(165, 5, 'singsys', '2018-11-01 22:49:14', '2018-11-01 22:49:14'),
(166, 5, 'raveena', '2018-11-01 22:50:30', '2018-11-01 22:50:30'),
(167, 5, 'steph', '2018-11-01 22:52:10', '2018-11-01 22:52:10'),
(168, 5, 'steph', '2018-11-01 22:52:19', '2018-11-01 22:52:19'),
(169, 5, 'steph', '2018-11-01 22:52:19', '2018-11-01 22:52:19'),
(170, 17, 'vivek', '2018-11-05 14:08:04', '2018-11-05 14:08:04'),
(171, 17, 'Vivek Kumar', '2018-11-05 14:08:09', '2018-11-05 14:08:09'),
(172, 17, 'Vivek', '2018-11-05 14:59:05', '2018-11-05 14:59:05'),
(173, 17, 'Vivek Kumar', '2018-11-05 14:59:09', '2018-11-05 14:59:09'),
(174, 18, 'Vivek', '2018-11-05 14:59:29', '2018-11-05 14:59:29'),
(175, 18, 'Vivek Kumar', '2018-11-05 14:59:34', '2018-11-05 14:59:34'),
(176, 18, 'Vivek K', '2018-11-05 14:59:41', '2018-11-05 14:59:41'),
(177, 17, 'Singsys Test', '2018-11-05 15:10:06', '2018-11-05 15:10:06'),
(178, 17, 'Singsys Test', '2018-11-05 15:10:09', '2018-11-05 15:10:09'),
(179, 17, 'Singsys Test', '2018-11-05 15:10:13', '2018-11-05 15:10:13'),
(180, 17, 'Singsys Test', '2018-11-05 15:10:23', '2018-11-05 15:10:23'),
(181, 18, 'vivek', '2018-11-05 15:46:11', '2018-11-05 15:46:11'),
(182, 18, 'vivek kumar', '2018-11-05 15:46:16', '2018-11-05 15:46:16'),
(183, 18, 'Vivek Kumar', '2018-11-05 15:46:21', '2018-11-05 15:46:21'),
(184, 18, 'Vivek K', '2018-11-05 15:46:33', '2018-11-05 15:46:33'),
(185, 17, 'vivek', '2018-11-05 16:00:28', '2018-11-05 16:00:28'),
(186, 17, 'Vivek', '2018-11-05 16:00:53', '2018-11-05 16:00:53'),
(187, 17, 'Vivek Kumar', '2018-11-05 18:01:21', '2018-11-05 18:01:21'),
(188, 17, 'Vivek Kumar', '2018-11-05 18:06:24', '2018-11-05 18:06:24'),
(189, 13, 'anjali', '2018-11-09 14:38:30', '2018-11-09 14:38:30'),
(190, 13, 'anjali', '2018-11-09 14:38:39', '2018-11-09 14:38:39'),
(191, 13, 'Anjali Srivastava', '2018-11-09 14:38:59', '2018-11-09 14:38:59'),
(192, 13, 'Anjali Srivastava', '2018-11-09 14:39:32', '2018-11-09 14:39:32'),
(193, 13, 'anjali', '2018-11-09 14:39:41', '2018-11-09 14:39:41'),
(194, 13, 'Anjali Srivastava', '2018-11-09 14:39:51', '2018-11-09 14:39:51'),
(195, 18, 'Raveena', '2018-11-09 15:19:51', '2018-11-09 15:19:51'),
(196, 18, 'Raveena Nigam', '2018-11-09 15:20:02', '2018-11-09 15:20:02'),
(197, 18, 'Raveena', '2018-11-09 15:20:11', '2018-11-09 15:20:11'),
(198, 18, 'Raveena', '2018-11-09 15:20:24', '2018-11-09 15:20:24'),
(199, 18, 'Raveena Nigam', '2018-11-09 15:20:33', '2018-11-09 15:20:33'),
(200, 18, 'Raveena Nigam', '2018-11-09 15:21:47', '2018-11-09 15:21:47'),
(201, 0, 'Chen Chuen', '2018-11-12 17:00:10', '2018-11-12 17:00:10'),
(202, 0, 'Chen Chuen', '2018-11-12 17:00:11', '2018-11-12 17:00:11'),
(203, 0, 'Lee', '2018-11-12 17:00:46', '2018-11-12 17:00:46'),
(204, 0, 'Lee, Chern San', '2018-11-12 17:01:06', '2018-11-12 17:01:06'),
(205, 0, 'Lee, Chern San', '2018-11-12 17:01:07', '2018-11-12 17:01:07'),
(206, 0, 'Che', '2018-11-12 17:01:15', '2018-11-12 17:01:15'),
(207, 0, 'Che', '2018-11-12 17:01:16', '2018-11-12 17:01:16'),
(208, 0, 'Terence', '2018-11-12 17:01:44', '2018-11-12 17:01:44'),
(209, 0, 'Terence', '2018-11-12 17:01:45', '2018-11-12 17:01:45'),
(210, 0, 'Terence Yong', '2018-11-12 17:01:52', '2018-11-12 17:01:52'),
(211, 0, 'Terence Yong', '2018-11-12 17:01:52', '2018-11-12 17:01:52'),
(212, 0, 'singapore', '2018-11-12 17:03:00', '2018-11-12 17:03:00'),
(213, 0, 'ter', '2018-11-12 17:03:27', '2018-11-12 17:03:27'),
(214, 0, 'ter', '2018-11-12 17:03:33', '2018-11-12 17:03:33'),
(215, 0, 'ter', '2018-11-12 17:03:34', '2018-11-12 17:03:34'),
(216, 22, 'Vivek K', '2018-11-13 18:04:46', '2018-11-13 18:04:46'),
(217, 18, 'ABCD', '2018-11-13 18:20:47', '2018-11-13 18:20:47'),
(218, 22, 'Vivek K', '2018-11-14 12:41:57', '2018-11-14 12:41:57'),
(219, 22, 'Vivek K', '2018-11-14 12:43:35', '2018-11-14 12:43:35'),
(220, 22, 'Vivek', '2018-11-14 13:01:12', '2018-11-14 13:01:12'),
(221, 22, 'Vivek', '2018-11-14 13:01:24', '2018-11-14 13:01:24'),
(222, 22, 'Vivek', '2018-11-14 13:01:26', '2018-11-14 13:01:26'),
(223, 22, 'Vivek', '2018-11-14 13:01:27', '2018-11-14 13:01:27'),
(224, 17, 'Vivek Company', '2018-11-14 13:03:11', '2018-11-14 13:03:11'),
(225, 17, 'Vivek Company', '2018-11-14 13:03:12', '2018-11-14 13:03:12'),
(226, 22, 'vivekkumar+company@singsys.com', '2018-11-14 13:03:28', '2018-11-14 13:03:28'),
(227, 15, 'Vivek Company', '2018-11-14 13:05:23', '2018-11-14 13:05:23'),
(228, 15, 'Vivek Company', '2018-11-14 19:34:08', '2018-11-14 19:34:08'),
(229, 0, 'sdc', '2018-12-10 18:35:24', '2018-12-10 18:35:24'),
(230, 0, 'sdc', '2018-12-10 18:35:25', '2018-12-10 18:35:25'),
(231, 0, 'sdc', '2018-12-10 18:36:51', '2018-12-10 18:36:51'),
(232, 0, 'r', '2019-01-07 18:47:06', '2019-01-07 18:47:06'),
(233, 0, 'r', '2019-01-07 18:47:10', '2019-01-07 18:47:10'),
(234, 0, 'r', '2019-01-07 18:47:35', '2019-01-07 18:47:35'),
(235, 0, 'r', '2019-01-07 18:47:36', '2019-01-07 18:47:36');

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
(1, 3, 'CSS, HTML, Javascript', NULL, NULL),
(2, 18, 'Testing purpose', NULL, NULL);

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
(2, 'facebook_url', 'https://www.facebook.com/360-Reference-153293785361955/', '2018-03-04 14:53:00', NULL),
(3, 'twitter_url', 'https://twitter.com/360Reference', '2018-03-04 18:51:00', NULL),
(4, 'linkedin_url', 'https://www.linkedin.com', '2018-03-04 21:01:00', NULL),
(5, 'google_url', 'https://plus.google.com', '2018-03-04 14:30:00', NULL),
(6, 'smtp_server_host', 'email-smtp.us-east-1.amazonaws.com', NULL, NULL),
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
(21, 'rating_interval_limit', '5', NULL, NULL),
(22, 'paid_trial_limit', '1', NULL, NULL),
(24, 'job_match_credit', '2', NULL, NULL),
(30, 'instagram_url', 'https://www.instagram.com/360reference/?hl=en', NULL, NULL);

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
(1, 2, NULL, '919956771380', '2018-09-28 16:54:01', NULL),
(2, 2, NULL, '919956771380', '2018-09-28 16:57:29', NULL),
(3, 2, NULL, '919956771380', '2018-09-28 16:59:45', NULL),
(4, 2, NULL, '919956771380', '2018-09-28 17:00:35', NULL),
(5, 2, NULL, '91956771380', '2018-09-28 17:00:36', NULL),
(6, 5, NULL, '6582233857', '2018-09-28 22:03:02', NULL),
(7, 5, NULL, '6596813083', '2018-09-28 22:04:59', NULL),
(8, 2, NULL, '919956771380', '2018-10-04 16:53:21', NULL),
(9, 2, NULL, '991956771380', '2018-10-04 16:56:33', NULL),
(10, 17, 'vivekkumar@singsys.com', NULL, '2018-11-05 14:58:32', NULL),
(11, 17, NULL, '9179003327877', '2018-11-05 15:07:43', NULL);

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
(1, 'Admin', '', 'info@360Reference.com', '$2y$10$pK.zfR0eZMzncbM9cnZmnO7sjWdCcebegaJU4t9PgzvQFY0E2LrDC', '91', '1234567890', NULL, NULL, NULL, '', 1, NULL, '0', '0', 'active', '1', NULL, '0', '', NULL, NULL, NULL, '', 'LAa0ZzbuQUzsXrKWnYoQiA68bjKGqM0NeB1v8NQnOJiFFgGGFwKgRSrHD83p', NULL, '2018-03-12 23:45:00', NULL),
(2, 'Raveena', 'Nigam', 'raveena@singsys.com', '$2y$10$iRRjaWuTGuxun9qAUGn0/uxgbxEFWdkjImLGAz1gmvEQFCJxwlUUm', '+91', '8808824424', 'nraveena', NULL, 100, 'crop_20180927190027.jpeg', 2, 4, '1', '1', 'active', '1', '2018-10-27 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'GFdPZCQTrLzjmLwjoPPckp4mlSfSOhU367ddSnGHSjqyl9HhCxC8uLFMphMV', '04SUUQQ487XXQ7OSOVS4W0K47JA47HRVT7LIKNQR', '2018-09-27 20:20:44', '2018-09-27 21:12:58'),
(3, 'Saurabh', 'Shukla', 'saurabhshukla+1@singsys.com', '$2y$10$Q/bY0hWQnD/nPjU/1X2FJ.YEO9yJh3SRzKTnDjokjUuyKG97SpnFy', '91', '1234567894', NULL, 'Singsys Pte. Ltd.', 198, '', 3, 2, '1', '1', 'active', '1', '2018-10-27 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'G8qfDNezYvb6b31ThbijrHr9EiFWWMyL6Vs3FogHuPMUatdlYX6hOtZW5YuM', 'MMYLQBMIJXRD0O1T4HKD60J3UV638Q53BCSUTZOR', '2018-09-27 20:57:18', '2018-09-27 22:07:28'),
(5, 'Chen Chuen', 'Lee', 'leechenchuen@gmail.com', '$2y$10$Kjgxx9WmWeIvSAR5qUXKn.guniZ8qy/xa.aA0/zq83XtpBeA.B4KO', '+65', '83880788', NULL, NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-10-28 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'MhFDSgBAjvWC2LfetImJqvf2FoX1X02ChugBxKvo32whWRPhkut5r6817Pu2', 'RJWRB4DWXCPFFMPQDDNG8AT3OR9T6UGV78EPZ8CA', '2018-09-28 21:48:53', '2018-09-28 21:51:18'),
(6, 'Terence', 'Yong', 'terence@blankncreate.com', '$2y$10$onZlHkUkqCk2gkHmBsZbaOlXNS2YQPJtqGscweAEZTEpkvwIxTeUO', '+65', '93397767', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-10-28 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'SHXTNUULIHSQ7AM3GHJCNB3GWB6OZ9Q8QMT4AW5M', '2018-09-28 22:07:01', NULL),
(7, 'Shi Yin', 'Ng', 'ngshiyin@gmail.com', '$2y$10$6aspWhMjU3Yx76DAe.ruJezwNWACZ2f3VEZQNTdwpIeT1kqwntNBC', '+65', '94308815', NULL, NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-10-28 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'DSQ0a3qqEnhfUp35sI60ZelJKs3JTUYwurd5IMgTEhQTFza30TxlOjPkBHEj', 'DLGPD8I2P8PMMW13T69L6PNXD9LNKABPWF3OLKIB', '2018-09-28 23:41:58', '2018-09-28 23:43:45'),
(8, 'Claire', 'Hua', 'claire.hua@gmail.com', '$2y$10$qd0XJu4kb1cJq8TF9KqrTeW0vpu6XyWyUpkGB1ESn.1gxhwseWbli', '+65', '82233857', NULL, NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-10-29 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'LKmpzyiJGKAIGQfxJnzUV4O3grPiXdiFAn5FkrwWMYpY9cwKsT36qvPAcPhK', 'IIAC9SAS8FN828SGYJ3JPZG8JU61E16U5IK2TGLA', '2018-09-29 15:18:51', '2018-09-29 15:21:04'),
(9, 'Steph', 'Lee', 'stephleefilms@gmail.com', '$2y$10$uipe9u3tvlA2ALuJwKEzyulTNMM/LHMATqLB0vuHn36qkNjyqvoyq', '+65', '94550507', NULL, NULL, 198, NULL, 2, 4, '0', '0', 'active', '1', '2018-11-02 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'HZCAZT7YZ99TIGGITHTDMG4GPENPTXYNX1RG3YOA', '2018-10-02 00:35:26', NULL),
(10, 'Chern San', 'Lee', 'chernsan.lee@centurylink.com', '$2y$10$xnrv42zHJAhI4kqQ7yjkLuDnm/72e79UBxvrZO2VtVzQbl1zDJF8C', '+65', '96813083', NULL, NULL, 198, '', 2, 4, '1', '1', 'active', '1', '2018-11-02 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'FCL0sr2qfViFHA9EEJ2K0BCC8IyU7hn6zdPFnhGQjamFu3sdK9Jy9MeyNsEj', '8RFCNO3DD92QZYB3Y4CB25CB6I1FOHOLL9CNL0JS', '2018-10-02 18:23:40', '2018-10-12 18:18:09'),
(11, 'Anjali', 'Srivastava', 'raveena+anjali@singsys.com', '$2y$10$R81HUyIU1YfxOcmf52SwlOaRSKfYN71a0ucyRYDDKdVDwRCLpggqm', '+91', '8803369469', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-06 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'ILaG7ZMJiX4VoEmDtrLcNuGR1GPzSs1RPXFQFTFOTLqpdhso2Dv2S8G826UL', 'T54CXYXWVQ8VE0LPWP7B6TDDR00RFW3KT0NUCQFO', '2018-10-06 15:57:52', '2018-10-06 15:58:25'),
(12, 'Mohd', 'Sultan', 'sultan@singsys.com', '$2y$10$TqofEWrTHAEbkA/duwOaVuKij29lfo8R6haGeq.pteVkp8jjVuspS', '+91', '852963741', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-09 00:00:00', '1', '', NULL, NULL, NULL, NULL, '6j3fncdYB4zvTShyTVjDTReRchqghUv4GGO3G9bmaJboZt6sRWxm48hEsZ0G', '9E39ZJZBFDO5HUI4PL9Z5Z3I6KTVUTII2KIVMXYE', '2018-10-09 18:45:18', '2018-10-09 18:48:01'),
(13, 'Sushant', 'Chaudhary', 'sushant@singsys.com', '$2y$10$4.TMOX4aH4NNEhooe6pFKeFAqyZHSJXSdbsm54KabIlzN7gU8ln3S', '+91', '8808769499', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-09 00:00:00', '1', '', NULL, NULL, NULL, NULL, '8ZNRJTXZwcy1TwjONZdZJsaXbXNCNruJF9lZ4EZ0W8Cws78r0kTeI2A23YCr', 'LPDCXW84CWZVIZDSCMTZFSA88UU0TFHJOE7191JI', '2018-10-09 18:57:45', '2018-10-09 18:59:09'),
(14, 'Prateek', 'Shukla', 'prateek@singsys.com', '$2y$10$1phX.7LpYD0SqtdmJ2dRhOvgLtBRDU0DmMqL22//S08Y4R0ffDVjO', '+91', '7317496568', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-11-24 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'NcbUkxqAdIkNDOWdxm4oU4Islel5eLsWn5vn81LCA9eIgd9aBKbWKphhzwmS', 'ZBWPUOZRMFR8RRALF2UN5F7FSULHRI65GCTHOE8L', '2018-10-24 15:31:45', '2018-10-24 15:32:18'),
(15, 'Vivek', 'Kumar', 'vivekkumar+Comp@singsys.com', '$2y$10$9xhIBt7WCGcrAYKGqxqZmuJt2/vsEDxPZev3ld5y7sTiAM0MGC7xO', '91', '9557415248', NULL, 'Testing Purpose', 100, '', 3, 2, '1', '1', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'dbTT2KMevRNMF93wSpyNxAidu1Wbjj1HwlWHkm5vORA7IB9KQmHIix6mtIFm', 'NQG9VP51U7TBNI4JSKUPDYFJKYHLRDFTJI2EDAMN', '2018-11-05 13:17:03', '2018-11-05 13:18:31'),
(16, 'Vivek', 'Kumar', 'vivekkumar+ind@singsys.com', '$2y$10$r4RKKFV5QuiDAtyfFa6qBeG1lgn7Stwn1nLd.ASQw4/fQgWoKoQAm', '+91', '6392174943', NULL, NULL, 100, 'crop_20181105132238.jpeg', 2, 4, '1', '0', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '1JPQE7ZMOAZGHKIK5Z7EEWPE0LW74R7IMCHPBB6F', '2018-11-05 13:22:42', '2018-11-05 13:23:47'),
(17, 'Vivek', 'K', 'vivekkumar+i@singsys.com', '$2y$10$oekB7AhSjfNtMo7Us5PY0.XpR9/.aXUTaMeN.Wz6O3ICBquS75iN2', '+91', '7903327877', 'https://www.google.com', NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'AjKu5pbRQgolYE81SBpkVEu0um5znqhFvr0gyvU84MJ5dOnYrHjiwYCkYnHw', '512L63SXN5WJ2SGK0FA9X476EX90L4WFF7ALTYGG', '2018-11-05 13:29:23', '2018-11-05 13:38:37'),
(18, 'Vivek', 'Company', 'vivekkumar+company@singsys.com', '$2y$10$pAJLOMfJLKzs9.Dy5yhYveBND3g9y41mIQ2iLi.Jjaqjgs/t84rAG', '91', '8676913831', NULL, 'Singsys Test', 100, 'crop_20181105135111.jpeg', 3, 2, '1', '1', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'UCPXXmxZ8Tl3DqcOt2PDTAeNge4z52KoCZMltIwSvXrAUgqG3aRGvqTz504f', '2XJE0YHBJFLRRIJ1LAJU57U3EJG6PFITX276704C', '2018-11-05 13:51:15', '2018-11-05 14:06:32'),
(19, 'Vivek', 'Kumar', 'Vivekkumar+1@singsys.com', '$2y$10$I3ytgV8hYxClwpIP3P3QHOyEKSODbpJ.Cfnxd6qt3DUUUZJGfWroi', '+91', '9264964542', NULL, NULL, 100, NULL, 2, 4, '0', '0', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'TAHLOFCSTUV231OKSR3FSUYEUN4EPQO5S0E11XEX', '2018-11-05 15:14:26', NULL),
(20, 'Vivek', 'Kumar', 'Vivekkumar+1234@singsys.com', '$2y$10$P8cq3M3W19rQweo3Zp79q.AMXsojwjvJPkAeY1oDGhedO7StmGc8W', '+91', '9264964541', NULL, NULL, 100, NULL, 2, 4, '0', '0', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '7R07LKY2OAM13DIDVHD6495IZXFX59E5DMXK0O8X', '2018-11-05 15:17:02', NULL),
(21, 'Vivek', 'Kumar', 'Vivekkumar+123@singsys.com', '$2y$10$3/VhFYOPL7.vEvmEH8DysO7t63fvNidDYpORCKfpWHDnVUfaoR7nW', '+91', '9264964543', NULL, 'Test', 100, NULL, 3, 2, '0', '0', 'active', '1', '2018-12-05 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', 'KAN2T0STHVAQ751AB8M2LUJ5H172EMKBO6WPJ2AI', '2018-11-05 15:18:26', NULL),
(22, 'ABCD', 'K', 'vivekkumar+indiv@singsys.com', '$2y$10$fx6Suh6r5j4LKXZ9ktiAsedmdoDEC0/C/wMTwaFjN34T22Th5Dmv6', '+91', '6307868975', NULL, NULL, 100, '', 2, 4, '1', '1', 'active', '1', '2018-12-13 00:00:00', '1', '', NULL, NULL, NULL, NULL, 'DjIDzz79XB390KId1xLox6kzkTs5BKDPfrngCALnFJorG0cQJlZjhUvmJAeH', 'VXCPD6IX48PH71SZYR6H3A8O7ZN9NDT4SNP2ZLSY', '2018-11-13 13:34:08', '2018-11-13 17:56:42'),
(23, 'Saurabh', 'Shukla', 'saurabhshukla@singsys.com', '$2y$10$ULCtNKnV2wPRTKbEbn8N.uO8r.OTGdkVfU2Gha.d.rMK2NxQnocNK', '+91', '7065873851', NULL, NULL, 100, '', 2, 4, '0', '0', 'active', '1', '2019-01-31 00:00:00', '1', '', NULL, NULL, NULL, NULL, '', '117YDJP8X06DPOU0U6GOOPPFMPBMUFDF9Z4FRCDU', '2018-12-31 14:13:21', NULL);

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
(3, 2, 40, '2018-09-27 21:12:58', NULL),
(4, 2, 131, '2018-09-27 21:12:58', NULL),
(6, 17, 31, '2018-11-05 13:38:37', NULL),
(7, 17, 130, '2018-11-05 13:38:37', NULL),
(8, 17, 33, '2018-11-05 13:38:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_account_types`
--

CREATE TABLE `user_account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_charge` decimal(12,2) UNSIGNED DEFAULT NULL,
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
(1, 'Company Paid User', '99.99', 5, 0, NULL, NULL, 'company', 'active', '2018-04-23 04:44:54', '1', '1', '1', '1', '1'),
(2, 'Company Free User', '0.00', 0, 150, NULL, NULL, 'company', 'active', '2018-05-23 19:06:27', '0', '1', '1', '1', '0'),
(3, 'Individual Paid User', '19.99', 5, 0, NULL, NULL, 'individual', 'active', '2018-03-14 05:29:43', '0', '0', '0', '0', '0'),
(4, 'Individual Free User', '0.00', 0, 150, NULL, NULL, 'individual', 'active', '2018-05-23 19:06:13', '0', '1', '1', '1', '0');

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
(1, 8, 235, 'Bachelor of Arts', 'Wellesley College', '2006', 'June', '2002', 'August', '2018-09-29 15:28:46', NULL),
(2, 7, 198, 'Bachelor of Science (BSc), Banking and Finance', 'University of London', '2009', 'July', '2006', 'July', '2018-09-30 14:49:06', NULL),
(3, 17, 100, 'DOAEC', 'Testing purpose', '2018', 'March', '2016', 'April', '2018-11-05 13:40:48', NULL);

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
(1, 2, 'Profile Updated.', '2018-09-27 20:59:09', NULL),
(2, 2, 'Profile Updated.', '2018-09-27 21:12:58', NULL),
(3, 3, 'Profile Updated.', '2018-09-27 22:05:52', NULL),
(4, 3, 'Profile Updated.', '2018-09-27 22:07:28', NULL),
(5, 2, 'Rated on Raveena Nigam profile', '2018-09-28 22:13:04', NULL),
(6, 8, 'New Strength Added.', '2018-09-29 15:25:37', NULL),
(7, 8, 'New Strength Added.', '2018-09-29 15:25:52', NULL),
(8, 8, 'Education Added.', '2018-09-29 15:28:46', NULL),
(9, 7, 'Rated on Shi Yin Ng profile', '2018-09-30 14:36:49', NULL),
(10, 7, 'New Work Experience Added.', '2018-09-30 14:40:01', NULL),
(11, 7, 'New Work Experience Added.', '2018-09-30 14:40:53', NULL),
(12, 7, 'New Work Experience Added.', '2018-09-30 14:41:27', NULL),
(13, 7, 'Work Experience Deleted.', '2018-09-30 14:42:17', NULL),
(14, 7, 'Work Experience Deleted.', '2018-09-30 14:42:19', NULL),
(15, 7, 'New Work Experience Added.', '2018-09-30 14:43:33', NULL),
(16, 7, 'New Work Experience Added.', '2018-09-30 14:44:51', NULL),
(17, 7, 'New Work Experience Added.', '2018-09-30 14:46:02', NULL),
(18, 7, 'New Work Experience Added.', '2018-09-30 14:46:59', NULL),
(19, 7, 'Education Added.', '2018-09-30 14:49:06', NULL),
(20, 7, 'New Strength Added.', '2018-09-30 14:52:39', NULL),
(21, 7, 'Work Experience Updated.', '2018-09-30 15:57:31', NULL),
(22, 7, 'Work Experience Updated.', '2018-09-30 15:57:51', NULL),
(23, 5, 'New Strength Added.', '2018-09-30 21:25:33', NULL),
(24, 2, 'New Strength Added.', '2018-10-05 13:01:25', NULL),
(25, 2, 'New Work Experience Added.', '2018-10-05 14:45:02', NULL),
(26, 2, 'New Strength Added.', '2018-10-06 14:55:26', NULL),
(27, 2, 'New Work Experience Added.', '2018-10-06 14:57:44', NULL),
(28, 2, 'Rated on Raveena Nigam profile', '2018-10-06 15:29:23', NULL),
(29, 2, 'Rated on Raveena Nigam profile', '2018-10-06 15:39:30', NULL),
(30, 5, 'New Strength Added.', '2018-10-08 00:24:02', NULL),
(31, 5, 'New Strength Added.', '2018-10-08 00:24:22', NULL),
(32, 2, 'Rated on Raveena Nigam profile', '2018-10-09 19:02:29', NULL),
(33, 12, 'Rated on Mohd Sultan profile', '2018-10-11 09:05:57', NULL),
(34, 2, 'Rated on Raveena Nigam profile', '2018-10-11 16:11:58', NULL),
(35, 2, 'Rated on Raveena Nigam profile', '2018-10-11 16:13:23', NULL),
(36, 17, 'Profile Updated.', '2018-11-05 13:37:35', NULL),
(37, 17, 'Profile Updated.', '2018-11-05 13:38:37', NULL),
(38, 17, 'New Strength Added.', '2018-11-05 13:39:09', NULL),
(39, 17, 'Education Added.', '2018-11-05 13:40:48', NULL),
(40, 18, 'Profile Updated.', '2018-11-05 14:06:32', NULL),
(41, 17, 'Rated on Vivek K profile', '2018-11-05 18:04:52', NULL),
(42, 22, 'Rated on ABCD K profile', '2018-11-13 18:05:34', NULL),
(43, 22, 'Rated on ABCD K profile', '2018-11-13 18:24:13', NULL);

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
(6, 8, '4', '2018-09-29 15:25:52', '2018-09-29 15:25:52'),
(7, 8, '34', '2018-09-29 15:25:52', '2018-09-29 15:25:52'),
(8, 8, '24', '2018-09-29 15:25:52', '2018-09-29 15:25:52'),
(9, 8, '25', '2018-09-29 15:25:52', '2018-09-29 15:25:52'),
(10, 8, '28', '2018-09-29 15:25:52', '2018-09-29 15:25:52'),
(11, 7, '1', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(12, 7, '3', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(13, 7, '6', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(14, 7, '7', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(15, 7, '8', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(16, 7, '9', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(17, 7, '10', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(18, 7, '12', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(19, 7, '13', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(20, 7, '16', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(21, 7, '17', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(22, 7, '18', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(23, 7, '19', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(24, 7, '21', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(25, 7, '22', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(26, 7, '23', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(27, 7, '24', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(28, 7, '25', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(29, 7, '28', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(30, 7, '30', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(31, 7, '32', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(32, 7, '33', '2018-09-30 14:52:39', '2018-09-30 14:52:39'),
(41, 2, '2', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(42, 2, '6', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(43, 2, '10', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(44, 2, '11', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(45, 2, '12', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(46, 2, '14', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(47, 2, '32', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(48, 2, '33', '2018-10-06 14:55:26', '2018-10-06 14:55:26'),
(55, 5, '8', '2018-10-08 00:24:22', '2018-10-08 00:24:22'),
(56, 5, '19', '2018-10-08 00:24:22', '2018-10-08 00:24:22'),
(57, 5, '25', '2018-10-08 00:24:22', '2018-10-08 00:24:22'),
(58, 5, '27', '2018-10-08 00:24:22', '2018-10-08 00:24:22'),
(59, 5, '30', '2018-10-08 00:24:22', '2018-10-08 00:24:22'),
(60, 17, '1', '2018-11-05 13:39:09', '2018-11-05 13:39:09'),
(61, 17, '3', '2018-11-05 13:39:09', '2018-11-05 13:39:09'),
(62, 17, '4', '2018-11-05 13:39:09', '2018-11-05 13:39:09');

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
(10, 2, 'email', 'MiMjcmF2ZWVuYUBzaW5nc3lzLmNvbQ==', '2018-09-27 08:20:45', NULL),
(16, 3, 'email', 'MyMjc2F1cmFiaHNodWtsYUBzaW5nc3lzLmNvbQ==', '2018-09-27 08:30:35', NULL),
(29, 3, 'email', 'MyMjc2F1cmFiaHNodWtsYUBzaW5nc3lzLmNvbQ==', '2018-09-27 08:57:20', NULL),
(34, 4, 'email', 'NCMjcmF2ZWVuYStwdXNoYXBAc2luZ3N5cy5jb20=', '2018-09-28 05:02:32', NULL),
(38, 4, 'mobile', '584687', '2018-09-28 05:07:30', NULL),
(40, 5, 'email', 'NSMjbGVlY2hlbmNodWVuQGdtYWlsLmNvbQ==', '2018-09-28 09:48:55', NULL),
(43, 7, 'email', 'NyMjbmdzaGl5aW5AZ21haWwuY29t', '2018-09-28 11:42:00', NULL),
(45, 8, 'email', 'OCMjY2xhaXJlLmh1YUBnbWFpbC5jb20=', '2018-09-29 03:18:54', NULL),
(47, 10, 'email', 'MTAjI2NoZXJuc2FuLmxlZUBjZW50dXJ5bGluay5jb20=', '2018-10-02 06:23:41', NULL),
(49, 11, 'email', 'MTEjI3JhdmVlbmErYW5qYWxpQHNpbmdzeXMuY29t', '2018-10-06 03:57:54', NULL),
(51, 12, 'email', 'MTIjI3N1bHRhbkBzaW5nc3lzLmNvbQ==', '2018-10-09 06:45:19', NULL),
(53, 13, 'email', 'MTMjI3N1c2hhbnRAc2luZ3N5cy5jb20=', '2018-10-09 06:57:47', NULL),
(55, 14, 'email', 'MTQjI3ByYXRlZWtAc2luZ3N5cy5jb20=', '2018-10-24 03:31:47', NULL),
(56, 15, 'mobile', '670775', '2018-11-05 01:17:05', NULL),
(57, 15, 'email', 'MTUjI3ZpdmVra3VtYXIrQ29tcEBzaW5nc3lzLmNvbQ==', '2018-11-05 01:17:05', NULL),
(58, 16, 'mobile', '497806', '2018-11-05 01:22:44', NULL),
(59, 16, 'email', 'MTYjI3ZpdmVra3VtYXIraW5kQHNpbmdzeXMuY29t', '2018-11-05 01:22:44', NULL),
(61, 17, 'email', 'MTcjI3ZpdmVra3VtYXIraUBzaW5nc3lzLmNvbQ==', '2018-11-05 01:29:26', NULL),
(63, 18, 'email', 'MTgjI3ZpdmVra3VtYXIrY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-11-05 01:51:17', NULL),
(65, 22, 'email', 'MjIjI3ZpdmVra3VtYXIraW5kaXZAc2luZ3N5cy5jb20=', '2018-11-13 01:34:11', NULL),
(66, 23, 'mobile', '460680', '2018-12-31 02:13:23', NULL),
(67, 23, 'email', 'MjMjI3NhdXJhYmhzaHVrbGFAc2luZ3N5cy5jb20=', '2018-12-31 02:13:23', NULL);

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
(5, 2, 'Singsys Pte. Ltd.', 'Senior Web Developer', NULL, 'March', '2017', ' ', 'null', 'CURRENTLY WORKING', '2018-09-27 20:20:44', NULL),
(7, 5, 'United Overseas Bank', 'Senior Vice President', NULL, 'September', '2014', ' ', 'null', 'CURRENTLY WORKING', '2018-09-28 21:48:53', NULL),
(8, 7, 'American Express', 'Senior Business Manager', NULL, 'December', '2017', ' ', 'null', 'CURRENTLY WORKING', '2018-09-28 23:41:58', NULL),
(9, 8, 'Standard Chartered Bank', 'BPM', NULL, 'October', '2016', 'May', '2018', 'LEFT', '2018-09-29 15:18:52', NULL),
(10, 7, 'DBS Bank', 'Relationship Manager', 'Banking and Finance', 'August', '2017', 'December', '2017', 'LEFT', NULL, '2018-09-30 15:57:51'),
(13, 7, 'ANZ Bank', 'Relationship Manager', 'Banking and Finance', 'May', '2017', 'August', '2017', 'LEFT', NULL, NULL),
(14, 7, 'ANZ Bank', 'Business Development Manager', 'Banking and Finance', 'August', '2013', 'August', '2017', 'LEFT', NULL, NULL),
(15, 7, 'Standard Chartered Bank', 'Relationship Manager', 'Banking and Finance', 'September', '2011', 'August', '2013', 'LEFT', NULL, NULL),
(16, 7, 'UOB Bank', 'Senior Personal Banker', 'Banking and Finance', 'July', '2009', 'August', '2011', 'LEFT', NULL, NULL),
(17, 10, 'Lee, Chern San', 'Territory Support Manager', NULL, 'February', '2013', ' ', 'null', 'CURRENTLY WORKING', '2018-10-02 18:23:40', NULL),
(18, 2, 'Singsys Lucknow', 'Software Engineer', 'Software', 'April', '2016', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(19, 2, 'Wipro Limited', 'UI/UX Designer', 'Javascript', 'February', '2015', 'null', 'null', 'CURRENTLY WORKING', NULL, NULL),
(20, 11, 'Singsys Pte. Ltd.', 'UI/UX Designer', NULL, 'February', '2015', ' ', 'null', 'CURRENTLY WORKING', '2018-10-06 15:57:52', NULL),
(21, 12, 'Singsys Pvt. Ltd', 'Senior Web Developer', NULL, 'November', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-10-09 18:45:18', NULL),
(22, 13, 'Singsys Pvt. Ltd', 'Front End Developer', NULL, 'April', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-10-09 18:57:45', NULL),
(23, 14, 'Singsys', 'Software', NULL, 'June', '2012', ' ', 'null', 'CURRENTLY WORKING', '2018-10-24 15:31:45', NULL),
(24, 16, 'Singsys', 'Testing', NULL, 'January', '2018', ' ', 'null', 'CURRENTLY WORKING', '2018-11-05 13:22:42', NULL),
(25, 17, 'Sing', 'new', NULL, 'January', '2018', ' ', 'null', 'CURRENTLY WORKING', '2018-11-05 13:29:23', NULL),
(26, 22, 'Sing', 'qwerty', NULL, 'April', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-11-13 13:34:08', NULL),
(27, 23, 'Singsys Pte. Ltd', 'Senior Manager', NULL, 'March', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-12-31 14:13:21', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_personnel`
--
ALTER TABLE `contact_personnel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us_reply`
--
ALTER TABLE `contact_us_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `credit_transaction_detail`
--
ALTER TABLE `credit_transaction_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `get360`
--
ALTER TABLE `get360`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `home_page_slider`
--
ALTER TABLE `home_page_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `individual_self_rating`
--
ALTER TABLE `individual_self_rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_applied`
--
ALTER TABLE `jobs_applied`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs_viewed`
--
ALTER TABLE `jobs_viewed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_attributes`
--
ALTER TABLE `job_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_candidate_log`
--
ALTER TABLE `job_candidate_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_credits`
--
ALTER TABLE `job_credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_credit_log`
--
ALTER TABLE `job_credit_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_log`
--
ALTER TABLE `job_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_matching_log`
--
ALTER TABLE `job_matching_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_recommendation`
--
ALTER TABLE `job_recommendation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notification_template`
--
ALTER TABLE `notification_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `operating_hours`
--
ALTER TABLE `operating_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `password_resets_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_same_company_notifications`
--
ALTER TABLE `pending_same_company_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profile_analytics`
--
ALTER TABLE `profile_analytics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `rating_credit_log`
--
ALTER TABLE `rating_credit_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_invite`
--
ALTER TABLE `rating_invite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews_on_hold`
--
ALTER TABLE `reviews_on_hold`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `search_log`
--
ALTER TABLE `search_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `services_offered`
--
ALTER TABLE `services_offered`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unregistered_invite`
--
ALTER TABLE `unregistered_invite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `unregistered_job_recommendation`
--
ALTER TABLE `unregistered_job_recommendation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_attributes`
--
ALTER TABLE `users_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_account_types`
--
ALTER TABLE `user_account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_industries`
--
ALTER TABLE `user_industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_profile_logs`
--
ALTER TABLE `user_profile_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_strengths`
--
ALTER TABLE `user_strengths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user_verification`
--
ALTER TABLE `user_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_work_experience`
--
ALTER TABLE `user_work_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
