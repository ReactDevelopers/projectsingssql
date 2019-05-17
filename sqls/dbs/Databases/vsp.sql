-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 05:50 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_category` enum('video','image') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `type`, `shortdescription`, `media`, `profile_image`, `media_category`, `created_at`, `updated_at`) VALUES
(1, 'title general title', 'home', 'Products, that speak to your mole', 'MP4-1525351493.mp4', '', 'video', '2018-05-03 07:14:53', '2018-05-03 07:14:53'),
(2, 'sdcassa', 'section2', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(3, 'Click Photos', 'privategallery1', 'Click Photos according to the current challenge.', 'uploads/privategallerybanner/_20180416093919.png', NULL, 'video', '2018-04-16 04:09:21', '2018-04-16 04:09:21'),
(4, 'Upload', 'privategallery2', 'Upload on a daily basis. Achieve the upload target.', 'uploads/privategallerybanner/_20180416094027.png', NULL, 'video', '2018-04-16 04:10:28', '2018-04-16 04:10:28'),
(5, 'Win Challenges', 'privategallery3', 'Win Challenges by completing targets and earn coins.', 'uploads/privategallerybanner/_20180416094103.png', NULL, 'video', '2018-04-16 04:11:05', '2018-04-16 04:11:05'),
(6, 'The Roman Story1', 'login', 'Register to access the world’s biggest collection of videos.', 'MP4-1523957611.mp4', NULL, 'video', '2018-04-18 13:39:17', '2018-04-18 13:39:17'),
(7, 'The Roman Story1', 'signup', 'Register to access the world’s biggest collection of videos.', 'MP4-1523957662.mp4', NULL, 'video', '2018-04-18 13:38:10', '2018-04-18 13:38:10'),
(8, 'The Roman Story1', 'forgot', 'Register to access the world’s biggest collection of videos.', 'MP4-1523957684.mp4', NULL, 'video', '2018-04-18 13:39:10', '2018-04-18 13:39:10'),
(9, 'sdcassa', 'section3', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(10, 'sdcassa', 'section4', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(11, 'sdcassa', 'section5', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(12, 'sdcassa', 'section6', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(13, 'sdcassa', 'section7', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(14, 'sdcassa', 'section8', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(15, 'sdcassa', 'section9', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(16, 'sdcassa', 'section10', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(17, 'sdcassa', 'section11', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(18, 'sdcassa', 'section12', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(19, 'sdcassa', 'section13', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51'),
(20, 'sdcassa', 'section14', 'sdcsfv', 'MP4-1523685996.mp4', '', 'video', '2018-05-03 13:03:51', '2018-05-03 13:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `bannerslider`
--

CREATE TABLE `bannerslider` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('login','signup','forgot') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bannerslider`
--

INSERT INTO `bannerslider` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'signup', 'Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-17 04:19:48', '2018-04-17 04:19:48'),
(2, 'signup', 'Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-17 04:19:55', '2018-04-17 04:19:55'),
(3, 'login', '123Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-18 13:52:49', '2018-04-18 13:52:49'),
(4, 'login', 'Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.cdvfbg343', '2018-04-18 13:53:00', '2018-04-18 13:53:00'),
(5, 'forgot', 'xsdffbgnbFind videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-18 13:53:10', '2018-04-18 13:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categorie` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categorie`, `media`, `shortdescription`, `created_at`, `updated_at`) VALUES
(8, 'category 1', 'uploads/category/_20180416061302.png', 'Find videos of your favorite themes in the video gallery section. Each video is valued for some points. Earn those points by watching the videos.', '2018-04-16 00:46:38', '2018-04-16 00:46:38'),
(9, 'Category2', 'uploads/category/_20180416061718.png', 'Description', '2018-04-16 00:47:38', '2018-04-16 00:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `shortdescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challengeStatus` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`id`, `title`, `media`, `days`, `start_date`, `end_date`, `shortdescription`, `challengeStatus`, `created_at`, `updated_at`) VALUES
(1, 'Click Photos', 'uploads/challenge/_20180416080205.png', '10', '2018-02-01 13:32:00', '2018-02-28 13:32:00', 'Click Photos according to the current challenge.', '1', '2018-04-16 02:32:34', '2018-04-16 02:32:34'),
(2, 'Upload', 'uploads/challenge/_20180416080405.png', '5', '2018-03-01 13:34:00', '2018-03-31 13:34:00', 'Upload on a daily basis. Achieve the upload target.', '1', '2018-04-16 02:34:31', '2018-04-16 02:34:31'),
(3, 'Win Challenges', 'uploads/challenge/_20180416080506.png', '3', '2018-04-01 13:34:00', '2018-04-30 13:34:00', 'Win Challenges by completing targets and earn coins.', '1', '2018-04-16 02:35:30', '2018-04-16 02:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`key`, `value`) VALUES
('about', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.123'),
('admin_theme', 'skin-aquamarine2'),
('contact_number', '+88 (0) 101 358 9568'),
('copyright_text', 'COPYRIGHT 2018 THE ROMAN STORY | ALL RIGHTS RESERVED'),
('default_latitude', ''),
('default_longitude', ''),
('download_app_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
('download_app_title', 'Download App'),
('footer_challenge', 'footer_challenge'),
('footer_product', 'footer_product'),
('footer_video', 'footer_video'),
('format_date', 'd/m/Y'),
('format_time', 'h:i A'),
('full_address', '42, IInd St, Chapel \r\nJurong Island\r\nSingapore 675656'),
('help_email', 'support@videostreamingpilot .com'),
('info_email', 'info@vsp.com'),
('newsletter_text', 'Subscribe to our newsletter to get the updates and know what’s happening around We don’t spam.'),
('newsletter_title', 'Stay In touch'),
('office_address', 'Address to be changed'),
('otp_expired', '5000'),
('otp_length', '6'),
('otp_message', 'Thank you for using Video Streaming Pilot . Your OTP is %s.'),
('otp_shuffle', '45987343049568802934857637283746574839234567902394856775483929384529384756783293845789'),
('postman_collection', ''),
('site_description', 'Lorem ipsum dolor sit amet, Lorem ipsum1'),
('site_email', 'info@videostreamingpilot.com'),
('site_environment', 'development'),
('site_name', 'THE ROMAN STORY  Web Portal'),
('smtp_host', 'smtp.gmail.com'),
('smtp_mode', 'tls'),
('smtp_password', 'preeti@4896'),
('smtp_port', '587'),
('smtp_username', 'preetisingh@singsys.com'),
('social_facebook_url', 'https://facebook.com'),
('social_googleplus_url', 'https://plus.google.com/'),
('social_instagram_url', 'https://instagram.com'),
('social_twitter_url', 'https://twitter.com'),
('social_youtube_url', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `message`, `reply`, `created_at`, `updated_at`) VALUES
(1, 'test', 'chetandeep+test@singsys.com', 'reply back', 'hello sir please reply', 'i\'ll callback', '2018-04-12 11:33:25', '2018-04-16 06:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `emailconfigs`
--

CREATE TABLE `emailconfigs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailconfigs`
--

INSERT INTO `emailconfigs` (`id`, `title`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Vsp_account_confirmation', 'Video Streaming Web Portal - Account Confirmation', 'Hi {fullName},\r\n\r\nYour have been registered as a User, Please click the below link to log-in to your account.\r\n\r\nUsername: {email} <br>\r\nPasword: {password}', '2018-04-15 11:22:32', '2018-04-15 11:22:32'),
(2, 'Vsp_status', 'Video Streaming Web Portal - Status Account', 'Hi {fullName},\r\n\r\nYour Account has been {status}.', '2018-04-13 11:20:55', '2018-04-13 11:20:55'),
(3, 'Vsp_contactus_reply', 'Contact Us email reply.', 'Dear {NAME},\r\n\r\nContact Us email reply.\r\n\r\nMessage: {MESSAGE}', '2018-04-16 12:03:33', '2018-04-16 12:03:33'),
(4, 'Vsp_reset', 'Reset Password', 'Dear {NAME},<br>\n<br>\nWe have received a request from you to reset your password.<br>\n<br>\nTo reset, simply click on the reset password button and you will be provided with a screen to change your password. Please choose a strong password for higher protection.\n<br>\n{ACTIVATIONLINK}', '2018-04-18 13:18:37', '2018-04-18 13:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_04_09_094114_create_user_table', 1),
(2, '2018_04_09_095754_create_role_table', 1),
(3, '2018_04_09_095831_create_user_role_table', 1),
(4, '2018_04_09_095905_create_config_table', 1),
(5, '2018_04_09_095918_create_password_resets_table', 1),
(6, '2018_04_11_052306_create_categories_table', 1),
(7, '2018_04_11_115315_create_photos_table', 1),
(8, '2018_04_12_071012_create_videos_table', 1),
(10, '2018_04_13_034031_create_products_table', 2),
(11, '2018_04_13_092601_create_banners_table', 3),
(12, '2018_04_13_103500_create_emailconfigs_table', 4),
(13, '2018_04_13_132938_create_static_content_table', 5),
(14, '2018_04_14_054232_update_banner_table', 6),
(17, '2018_04_14_062426_create_challenge_table', 7),
(18, '2018_04_14_105440_create_views_table', 8),
(20, '2018_04_16_050753_update_category_table', 9),
(21, '2018_04_16_075920_update_challenge_table', 10),
(22, '2018_04_16_111325_create_contactus_table', 11),
(25, '2018_04_17_065430_create_bannerslider_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('chetandeep+alok@singsys.com', 'MiMjS1NNTUZRTE8jIzIwMTgwNDE5MTIzMDMz', '2018-04-19 07:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('private','product') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `title`, `media`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'test images', 'blogthumb01.jpg', 'private', '2017-12-04 16:53:53', '2017-12-04 16:53:53'),
(2, 4, 'sdhsdhbsdhb images', 'blogthumb01.jpg', 'private', '2017-12-04 16:53:53', '2017-12-04 16:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `media`, `points`, `description`, `created_at`, `updated_at`) VALUES
(1, 'SkateBoarders', 'uploads/product/_20180416070229.png', '100', 'More than 400 products listed in the product gallery. Watch videos, earn coins and buy products. Lorem ipsum dolor sit amet.', '2018-04-16 02:22:06', '2018-04-16 02:22:06'),
(2, 'Father And Son', 'uploads/product/_20180416071111.png', '60', 'test', '2018-04-16 01:41:14', '2018-04-16 01:41:14'),
(3, 'Practice Session', 'uploads/product/_20180416071339.png', '40', 'test', '2018-04-16 01:43:40', '2018-04-16 01:43:40'),
(4, 'Earphones', 'uploads/product/_20180416071401.png', '30', 'teststts', '2018-04-16 01:44:14', '2018-04-16 01:44:14'),
(5, 'test p1', 'uploads/product/_20180416071427.png', '200', 'ddsds', '2018-04-16 01:44:34', '2018-04-16 01:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static_content`
--

CREATE TABLE `static_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_content`
--

INSERT INTO `static_content` (`id`, `title`, `shortdescription`, `description`, `alias`, `added_date`) VALUES
(1, 'About Us', 'test about us', '<p>1descriptionn</p>\n\n<p>2descriptionn</p>\n\n<p>3descriptionn</p>\n\n<p>4descriptionn</p>\n\n<p>5descriptionn</p>\n\n<p>6descriptionn</p>\n\n<p>sdfghjhcxcvbnscdvfbdhbdhbdhvbhdbvhbvdhvdbvhd1', 'aboutus', '2018-05-02 03:45:06'),
(2, 'Terms & Conditions', 'test terms', '<p>descripiton&nbsp;of&nbsp;terms&nbsp;&amp;&nbsp;condition</p>', 'terms', '2018-05-02 03:59:30'),
(3, 'Privacy Policy', 'test of privacy & policy', '<p>descripiton&nbsp;of&nbsp;privacy&nbsp;&amp;&nbsp;policy</p>', 'privacy', '2018-05-02 04:00:00'),
(4, 'How It Works', 'test of hiw', '<p>description&nbsp;of&nbsp;hiw&nbsp;hiw&nbsp;hiw</p>', 'Works', '2018-05-02 04:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male',
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userStatus` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `mobile_no`, `gender`, `profile_image`, `api_token`, `remember_token`, `userStatus`, `created_at`, `updated_at`) VALUES
(1, 'Video Streaming Pilot Admin', 'dasas', 'info@vsp.com', '$2y$10$1clgYgZOFIbGBMGOWC3bxO4gh4DaHANhauZFAy6aNDvpot6hsW33.', 'High Street Road', '221313132123', 'male', 'uploads/admins/_20180409135757.png', 'Q4eiqyWKAH2ih4XfzTgHnTFCxnYxgWX5p8ptp34ekAXO565bAIWEBeHfzub4', 'F5kBIZC96tXTDev9nZcTFLOQjuvbPGCnQpojtJALMIsvTUc4Fm96VSdeVIiN', '1', '2018-04-08 21:37:52', '2018-04-08 21:37:52'),
(2, 'test', 'last', 'chetandeep+alok@singsys.com', '$2y$10$UuSLqccnt2KEDiv9lSAYv.SyPhC/tv406A2rjq4uX.gTLFkXnIwfu', NULL, '1234567823', 'male', NULL, '', 'yHEGPpyUAy7ZPGuAJSwWOTtbGSvmx0X83W4ERJgZd6NaDxBOiZlQc33UBpUq', '1', '2018-04-13 21:48:44', '2018-04-19 00:19:48'),
(4, 'test account', NULL, 'chetandeep+test@singsys.com', '123456', NULL, '1234567843', 'male', 'uploads/user_profile/_20180422122847.png', 'bY2WBFUoianK67MyG4xeGGW7sJ84j7VwCz5SR3DqxqofeTuWp0GekIGcS6I1', NULL, '0', '2018-04-17 00:13:38', '2018-04-22 06:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '1', '2018-04-13 21:48:44', '2018-04-13 21:48:44'),
(3, 4, 2, '1', '2018-04-17 00:13:38', '2018-04-17 00:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `categorie_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('video','youtube') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `categorie_id`, `title`, `media`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 8, 'sdfg', 'MP4-1523552605.mp4', 'dwefgbnh', 'video', '2018-04-02 18:30:00', '2018-04-16 18:30:00'),
(2, 9, 'sdfg111', 'MP4-1523552605.mp4', 'dwefgbnh', 'video', '2018-04-02 18:30:00', '2018-04-16 18:30:00'),
(3, 8, 'sdfg', 'MP4-1523552605.mp4', 'dwefgbnh1w2e345', 'video', '2018-04-02 18:30:00', '2018-04-16 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(2, 2, 1, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(3, 2, 2, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(4, 3, 4, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(5, 4, 4, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(6, 4, 3, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(7, 4, 2, '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(8, 4, 1, '2017-12-04 22:23:53', '2017-12-04 22:23:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bannerslider`
--
ALTER TABLE `bannerslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailconfigs`
--
ALTER TABLE `emailconfigs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD UNIQUE KEY `password_resets_email_unique` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_content`
--
ALTER TABLE `static_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_categorie_id_foreign` (`categorie_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `bannerslider`
--
ALTER TABLE `bannerslider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emailconfigs`
--
ALTER TABLE `emailconfigs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `static_content`
--
ALTER TABLE `static_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
