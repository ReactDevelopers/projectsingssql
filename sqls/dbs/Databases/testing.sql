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
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `com_name` varchar(250) DEFAULT NULL,
  `poster_pic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `user_id`, `com_name`, `poster_pic`) VALUES
(1, NULL, 'singsys', 'banner_slide02.jpg'),
(2, NULL, 'singsys1', ''),
(4, NULL, 'singsys3', 'banner_slide02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `description`, `added_date`) VALUES
(1, 'reset_password', 'Aipro Web Portal - Reset Password', 'Dear {NAME},\n\nSubject:{SUBJECT}\nMessage: {MESSAGE}\n\nTHANKS {SITENAME} team.', '2017-11-28 07:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `paging`
--

CREATE TABLE `paging` (
  `id` int(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `topic` varchar(200) NOT NULL,
  `page` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paging`
--

INSERT INTO `paging` (`id`, `name`, `topic`, `page`) VALUES
(1, 'Pauline S. Rich', '412-735-0224', 1),
(2, 'Sarah C. White', '320-552-9961', 1),
(3, 'Samuel L. Leslie', '201-324-8264', 1),
(4, 'Norma R. Manly', '478-322-4715', 2),
(5, 'Kimberly R. Castro', '479-966-6788', 2),
(6, 'PaulRich', '412-735-0224', 2),
(7, 'SarWhite', '320-552-9961', 3),
(8, 'Sameslie', '201-324-8264', 3),
(9, 'Noranly', '478-322-4715', 3),
(10, 'Kimstro', '479-966-6788', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `name`, `address`, `gender`, `designation`, `age`) VALUES
(1, 'Bruce Tom', '656 Edsel Road\r\nSherman Oaks, CA 91403', 'Male', 'Driver', 36),
(5, 'Clara Gilliam', '63 Woodridge Lane\r\nMemphis, TN 38138', 'Female', 'Programmer', 24);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`) VALUES
(1, 'John', 'Smith'),
(5, 'Peterson', 'Parker'),
(7, 'Rock', 'Madison'),
(8, 'Titan', 'Edge'),
(11, 'cnjjn', 'cdnnj');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `user_type` enum('admin','company') NOT NULL DEFAULT 'company',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `provider` varchar(20) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `access_token` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `password`, `confirm_password`, `avatar`, `provider`, `provider_id`, `access_token`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'admin', 'rockstar', 'chetandeep@singsys.com', '$2y$10$UU7PFT607HzXz7S107PqquZ1Vkegfcs0gD5F9uMIe/NVZj/kZzGx2', '$2y$10$Kzdobw13xMtloTfqHMpfC.r7NVgyS9ILFtdg7NdKaCehdRHFsBMwC', '', '', '', '', '2017-12-04 22:23:53', '2017-12-07 08:40:10', 'vI6IGSfByu82RYcJ7I77gYEw5axRTXqhnhbPiCQQdk7yFEBzAulWQ03DVN8a'),
(2, 'company', 'ramesh1', 'ramesh@gmail.com', '$2y$10$i4QC4zMcFdvJ.BUqkRcCAOXDvYGyJWZyK84Rawl0H3FJHWHOpuhS.', '$2y$10$L/GHcCSLAFmEiOq.I3YHfeanJ.8jCuXkmRLInmLfcH8J3uMO7tWzK', '', '', '', '', '2017-12-04 23:23:21', '2017-12-06 05:00:09', 'UPGkDSKg41ZfaLeO1pFHWAvBcKaWsJPRZNmXEk1XWUHRxwWDl0WrikrDZ7Qx'),
(4, 'company', 'abcd', 'abcd@singsys.com', '$2y$10$MvID6Nx92Dt4OQrzJwFHleYj.3pz6gPUDKLE1cQ4psHxxoqM/skb.', '$2y$10$.DuGmbmGmJD62zxZLnCNZOsrRjpgOkBtn083PYG1bcjR22kT0W.Du', '', '', '', '', '2017-12-05 03:03:23', '2017-12-06 07:30:32', 'zU2bQgumHPdsgom4aj4wWvEezkAwdDfi5cSZVSNLdvzFebUg68svBjtOh4Jl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `paging`
--
ALTER TABLE `paging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `paging`
--
ALTER TABLE `paging`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
