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
-- Database: `vsp_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categorie` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categorie`, `created_at`, `updated_at`) VALUES
(1, 'music', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(2, 'sports', '2017-12-04 22:23:53', '2017-12-04 22:23:53');

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
('social_linkedin_url', 'https://linkedin.com'),
('social_twitter_url', 'https://twitter.com');

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
(6, '2018_04_11_052306_create_categories_table', 2),
(7, '2018_04_11_051220_create_videos_table', 3),
(8, '2018_04_11_115315_create_photos_table', 4);

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

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `title`, `media`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'test images', 'blogthumb01.jpg', 'private', '2017-12-04 22:23:53', '2017-12-04 22:23:53'),
(2, 4, 'sdhsdhbsdhb images', 'blogthumb01.jpg', 'private', '2017-12-04 22:23:53', '2017-12-04 22:23:53');

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

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-12-20 13:44:46', '2017-12-20 13:44:46'),
(2, 'user', '2017-12-20 13:45:03', '2017-12-20 13:45:03');

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
(1, 'Video Streaming Pilot Admin', 'dasas', 'info@vsp.com', '$2y$10$1clgYgZOFIbGBMGOWC3bxO4gh4DaHANhauZFAy6aNDvpot6hsW33.', 'High Street Road', '221313132123', 'male', 'uploads/admins/_20180409135757.png', 'Q4eiqyWKAH2ih4XfzTgHnTFCxnYxgWX5p8ptp34ekAXO565bAIWEBeHfzub4', 'LpCY46NJRzCMIRAu0OgN7IND8oTamKEL4sqIUBwnv34uZyqaY0usVE5VnGIy', '1', '2018-04-09 03:07:52', '2018-04-09 03:07:52'),
(6, 'test', 'last', 'chetandeep+alok@singsys.com', '$2y$10$kxgvC6VZXEqDZ2pbdewaDOAiB2KiD.d45oSqYD0AFSW0aneuwNRy2', NULL, '1234567823', 'male', 'uploads/user_profile/_20180411174133.png', 'evEfyVBTJHlBZFn3SAjEqGQhHhjC92ib08B71ZiFkAe2bri6Gf4ibR8r8yFq', NULL, '1', '2018-04-11 12:13:32', '2018-04-11 12:13:32');

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
(4, 6, 2, '1', '2018-04-11 12:13:32', '2018-04-11 12:13:32');

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
(1, 2, 'test yotube', 'MP4-1523430265.mp4', 'teststststst', 'youtube', '2018-04-11 01:34:25', '2018-04-11 01:34:25'),
(2, 1, 'test video', 'MP4-1523430265.mp4', 'teststststst', 'video', '2018-04-11 01:34:25', '2018-04-11 01:34:25'),
(3, NULL, 'title YYYYYvideo', 'https://www.youtube.com/embed/1-xGerv5FOk', 'YYYYY ddssdds', 'youtube', '2018-04-11 05:13:20', '2018-04-11 05:13:20'),
(4, NULL, 't1', 'https://www.youtube.com/embed/2i2khp_npdE', 'asdf', 'youtube', '2018-04-11 05:51:20', '2018-04-11 05:51:20'),
(5, NULL, 'tt56', '2i2khp_npdE', 'tt56', 'youtube', '2018-04-11 05:54:01', '2018-04-11 05:54:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
