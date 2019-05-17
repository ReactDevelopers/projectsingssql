-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2018 at 07:42 PM
-- Server version: 5.7.19
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videostreaming_dev`
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `type`, `shortdescription`, `media`, `created_at`, `updated_at`) VALUES
(1, 'The Roman Story', 'home', 'Products, that speak to your soul', 'MP4-1523686091.mp4', '2018-04-13 19:06:36', '2018-04-13 19:06:36'),
(2, 'Test', 'header', 'test', 'MP4-1523685996.mp4', '2018-04-13 19:08:11', '2018-04-13 19:08:11'),
(3, 'Click Photos', 'privategallery1', 'Click Photos according to the current challenge.', 'uploads/privategallerybanner/_20180416130129.png', '2018-04-16 07:31:31', '2018-04-16 07:31:31'),
(4, 'Upload', 'privategallery2', 'Upload on a daily basis. Achieve the upload target.', 'uploads/privategallerybanner/_20180416125928.png', '2018-04-16 07:29:32', '2018-04-16 07:29:32'),
(5, 'Win Challenges', 'privategallery3', 'Win Challenges by completing targets and earn coins.', 'uploads/privategallerybanner/_20180416130159.png', '2018-04-16 07:32:00', '2018-04-16 07:32:00');

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
(1, 'signup', 'Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-16 22:49:48', '2018-04-16 22:49:48'),
(2, 'signup', 'Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-16 22:49:55', '2018-04-16 22:49:55'),
(3, 'login', '123Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-18 08:22:49', '2018-04-18 08:22:49'),
(4, 'login', 'Find videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.cdvfbg343', '2018-04-18 08:23:00', '2018-04-18 08:23:00'),
(5, 'forgot', 'xsdffbgnbFind videos of your favorite themes in the gallery section. And earn dedicated points upon watching the videos. Lorem Ipsum dolor sit amet consectetur.', '2018-04-18 08:23:10', '2018-04-18 08:23:10');

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
(1, 'A', NULL, NULL, '2018-04-16 00:21:28', '2018-04-16 00:21:28');

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
(2, 'sdfvgbh', NULL, '20', '2018-05-08 11:08:00', '2018-05-08 11:08:00', 'xscdvfbgnh', '1', '2018-04-16 07:33:30', '2018-04-16 07:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`key`, `value`) VALUES
('about', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.123'),
('admin_theme', 'skin-aquamarine2'),
('contact_number', '+65 63375474'),
('copyright_text', 'Copyright © 2018 Video Streaming Pilot'),
('default_latitude', ''),
('default_longitude', ''),
('download_app_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
('download_app_title', 'Download App'),
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
('site_description', 'Lorem ipsum dolor sit amet, Lorem ipsum'),
('site_email', 'info@videostreamingpilot.com'),
('site_environment', 'development'),
('site_name', 'Video Streaming Pilot  Web Portal'),
('smtp_host', 'smtp.gmail.com'),
('smtp_mode', 'tls'),
('smtp_password', 'preeti@4896'),
('smtp_port', '587'),
('smtp_username', 'preetisingh@singsys.com'),
('social_facebook_url', 'https://facebook.com'),
('social_googleplus_url', 'https://plus.google.com/'),
('social_instagram_url', 'https://instagram.com'),
('social_twitter_url', 'https://twitter.com'),
('social_youtube_url', 'https://youtube.com');

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
(1, 'Raveena Nigam', 'raveena@singsys.com', 'Subject of Contact Us', 'Message of Contact Us', 'testing', '2018-04-16 22:39:11', '2018-04-17 05:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `emailconfigs`
--

CREATE TABLE `emailconfigs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailconfigs`
--

INSERT INTO `emailconfigs` (`id`, `title`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Vsp_account_confirmation', 'Video Streaming Web Portal - Account Confirmation', 'Hi {fullName},\r\n\r\nYour have been registered as a User, Please click the below link to log-in to your account.\r\n\r\nUsername: {email} <br>\r\nPasword: {password}', '2018-04-15 05:52:32', '2018-04-15 05:52:32'),
(2, 'Vsp_status', 'Video Streaming Web Portal - Status Account', 'Hi {fullName},\r\n\r\nYour Account has been {status}.', '2018-04-13 05:50:55', '2018-04-13 05:50:55'),
(3, 'Vsp_contactus_reply', 'Contact Us email reply.', 'Dear {NAME},\r\n\r\nContact us email reply.\r\n\r\nMessage: {MESSAGE}', '2018-04-17 05:31:44', '2018-04-17 05:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_04_09_094114_create_user_table', 1),
(2, '2018_04_09_095754_create_role_table', 1),
(3, '2018_04_09_095831_create_user_role_table', 1),
(4, '2018_04_09_095918_create_password_resets_table', 2),
(5, '2018_04_11_052306_create_categories_table', 3),
(6, '2018_04_11_115315_create_photos_table', 3),
(7, '2018_04_12_071012_create_videos_table', 3),
(8, '2018_04_13_034031_create_products_table', 3),
(9, '2018_04_13_092601_create_banners_table', 3),
(10, '2018_04_13_103500_create_emailconfigs_table', 3),
(11, '2018_04_13_132938_create_static_content_table', 3),
(12, '2018_04_14_054232_update_banner_table', 3),
(13, '2018_04_14_062426_create_challenge_table', 3),
(14, '2018_04_14_105440_create_views_table', 3),
(15, '2018_04_16_050753_update_category_table', 4),
(16, '2018_04_16_075920_update_challenge_table', 4),
(17, '2018_04_16_111325_create_contactus_table', 4),
(18, '2018_04_17_065430_create_bannerslider_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'asdfgh', 'uploads/product/_20180417114735.png', '277', 'sdfghj', '2018-04-17 06:17:38', '2018-04-17 06:17:38'),
(3, 'test1', 'uploads/product/_20180417114624.png', '2333', 'scdfvbgnh', '2018-04-17 06:16:35', '2018-04-17 06:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'About Us', 'test about us', '<p>sxdcfvg1234567</p>', 'aboutus', '2018-04-13 11:24:21'),
(2, 'Terms & Conditions', 'sdff2344434t43', 'scdfvg', 'terms', '2018-04-13 10:57:51'),
(3, 'Privacy Policy', 'sdf2345', 'cdfbghj345', 'privacy', '2018-04-13 10:57:43'),
(4, 'How It Works', 'dfbgnh234567', 'dvfbgvnh2345', 'Works', '2018-04-13 10:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `profile_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userStatus` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `mobile_no`, `gender`, `profile_image`, `api_token`, `remember_token`, `userStatus`, `created_at`, `updated_at`) VALUES
(1, 'Video Streaming Pilot Admin', 'dasas', 'info@vsp.com', '$2y$10$yo7GZA6kWZdbRWITA34U2.XdHe8S4mTRTpolyYmuDn0R46aMa8t3i', 'High Street Road', '221313132123', 'male', 'uploads/admins/_20180410070319.png', 'Q4eiqyWKAH2ih4XfzTgHnTFCxnYxgWX5p8ptp34ekAXO565bAIWEBeHfzub4', '5J87mkM2OC1VP9xwM8gFE2G8cuJP153G1TV5gVnEUnodXWR6Z5k9nm4ga9qN', '1', '2018-12-03 18:53:53', '2018-04-10 01:33:28'),
(4, 'test1', 'test last1', 'chetandeep+test@singsys.com', '$2y$10$2d1Lv4uRxSwv/o.mJOC/ZuuYhso/Ocbe8J.5uFb/FdRHADlbFzkby', NULL, '1234567823', 'male', 'uploads/user_profile/_20180410075008.png', 'SQFkJYcQHnmA1npvvmz7S6P0nWRPtR8k9rBJedz7YdyTFMTvxcuOD9qpeVrR', 'tmftRLkwhdhqdZq13YZp6GpHo2SYweYcgxhvZjAfhBFfcOVFHNFGDU47IclA', '1', '2018-04-09 21:31:16', '2018-04-17 05:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `role_status`, `created_at`, `updated_at`) VALUES
(3, 4, 2, '1', '2018-04-09 21:31:16', '2018-04-09 21:31:16');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bannerslider`
--
ALTER TABLE `bannerslider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emailconfigs`
--
ALTER TABLE `emailconfigs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
