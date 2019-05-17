-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 05:47 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `mz_admin`
--

CREATE TABLE `mz_admin` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is required field used for admin login process',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is required field used for admin login process',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date & Time of user last login',
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mz_admin`
--

INSERT INTO `mz_admin` (`id`, `user_name`, `email`, `password`, `last_login`, `code`) VALUES
(1, 'Admin', 'admin@monzone.com', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-18 12:08:38', 'uYVSnNLDOy');

-- --------------------------------------------------------

--
-- Table structure for table `mz_advisor_technician`
--

CREATE TABLE `mz_advisor_technician` (
  `id_advisor_technician` int(50) NOT NULL,
  `type` enum('advisor','technician') NOT NULL,
  `name` varchar(450) NOT NULL,
  `sign` varchar(450) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_advisor_technician`
--

INSERT INTO `mz_advisor_technician` (`id_advisor_technician`, `type`, `name`, `sign`, `added_on`) VALUES
(1, '', 'reena', 'images (1).jpg', '2017-05-03 15:07:12'),
(2, '', 'reena', 'images (1).jpg', '2017-05-03 15:07:19'),
(3, '', 'reena', 'images (1).jpg', '2017-05-03 15:08:06'),
(4, '', 'reena', 'images (1).jpg', '2017-05-03 15:08:07'),
(5, '', 'reena', 'images (1).jpg', '2017-05-03 15:08:46'),
(6, '', 'reena', 'images (1).jpg', '2017-05-03 15:10:03'),
(7, '', 'reena', 'images (1).jpg', '2017-05-03 15:10:08'),
(8, '', 'reena', 'images (1).jpg', '2017-05-03 15:10:19'),
(9, '', 'reena', 'images (1).jpg', '2017-05-03 15:10:21'),
(10, '', 'reena', 'images (1).jpg', '2017-05-03 15:10:34'),
(11, '', 'reena', 'images (1).jpg', '2017-05-03 15:10:36'),
(12, '', 'reena', 'images (1).jpg', '2017-05-03 15:11:13'),
(13, '', 'reena', 'images (1).jpg', '2017-05-03 15:11:14'),
(14, '', 'reena', 'images (1).jpg', '2017-05-03 15:13:48'),
(15, '', 'reena', 'images (1).jpg', '2017-05-03 15:13:51'),
(16, '', 'reena', 'images (1).jpg', '2017-05-03 15:14:05'),
(17, '', 'reena', 'images (1).jpg', '2017-05-03 15:14:16'),
(18, '', 'reena', 'images (1).jpg', '2017-05-03 15:14:37'),
(19, '', 'reena', 'images (1).jpg', '2017-05-03 15:15:59'),
(20, '', 'reena', 'images (1).jpg', '2017-05-03 15:16:30'),
(21, '', 'reena', 'images (1).jpg', '2017-05-03 15:17:20'),
(22, '', 'reena', 'images (1).jpg', '2017-05-03 15:17:23'),
(23, '', 'reena', 'images (1).jpg', '2017-05-03 15:17:25'),
(24, '', 'reena', 'images (1).jpg', '2017-05-03 15:17:38'),
(25, '', 'reena', 'images (1).jpg', '2017-05-03 15:18:06'),
(26, '', 'reena', 'images (1).jpg', '2017-05-03 15:18:47'),
(27, '', 'reena', 'images (1).jpg', '2017-05-03 15:19:52'),
(28, '', 'reena', 'images (1).jpg', '2017-05-03 15:22:42'),
(29, '', 'reena', 'images (1).jpg', '2017-05-03 15:23:39'),
(30, '', 'reena', 'images (1).jpg', '2017-05-03 15:28:56'),
(31, '', 'reena', 'images (1).jpg', '2017-05-03 15:29:42'),
(32, '', 'reena', 'images (1).jpg', '2017-05-03 15:50:50'),
(33, '', 'reena', 'images (1).jpg', '2017-05-03 15:50:54'),
(34, '', 'reena', 'images (1).jpg', '2017-05-03 15:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `mz_banner`
--

CREATE TABLE `mz_banner` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  `cstatus` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mz_banner_type`
--

CREATE TABLE `mz_banner_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mz_category`
--

CREATE TABLE `mz_category` (
  `id_category` int(11) NOT NULL,
  `category_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_category`
--

INSERT INTO `mz_category` (`id_category`, `category_title`) VALUES
(1, 'Insulated Box'),
(2, 'Refrigerated System'),
(3, 'Spare & Parts'),
(4, 'Trucks'),
(5, 'Tailgates'),
(6, 'Other Items');

-- --------------------------------------------------------

--
-- Table structure for table `mz_ci_sessions`
--

CREATE TABLE `mz_ci_sessions` (
  `id` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) DEFAULT NULL,
  `timestamp` bigint(20) NOT NULL,
  `data` text NOT NULL,
  `addedon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_ci_sessions`
--

INSERT INTO `mz_ci_sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `timestamp`, `data`, `addedon`) VALUES
('04f3098cf600e5103ecf577a29771a0c4070deb6', NULL, '115.248.248.37', NULL, 1491968259, '__ci_last_regenerate|i:1491968244;', '2017-04-12 03:37:24'),
('05290fc2e76aa671cd12eb9cd2eb359bda98b8f2', NULL, '103.15.232.231', NULL, 1491964802, '__ci_last_regenerate|i:1491964802;', '2017-04-12 02:40:02'),
('06e8594fa8ec0fc7b4ca7cb9160e45dddfd99c5b', NULL, '115.248.248.37', NULL, 1491969258, '__ci_last_regenerate|i:1491969076;', '2017-04-12 03:51:17'),
('08ec60bf49ccb1c30e10031ac84e0cd01008447b', NULL, '103.15.232.231', NULL, 1491971102, '__ci_last_regenerate|i:1491971102;', '2017-04-12 04:25:02'),
('0abc8e66aace811180b364b3577ec32209257422', NULL, '115.248.248.37', NULL, 1491968059, '__ci_last_regenerate|i:1491967884;', '2017-04-12 03:31:24'),
('0d43c4b7017e50b45596703f5c8c6ee9a9fa34f2', NULL, '103.15.232.231', NULL, 1491966602, '__ci_last_regenerate|i:1491966601;', '2017-04-12 03:10:02'),
('0e3372e0bac3545f6a335594dbde3e48eea072fa', NULL, '103.15.232.231', NULL, 1491965101, '__ci_last_regenerate|i:1491965101;', '2017-04-12 02:45:01'),
('14a6ab72d425b1eccb0ea32e1f84207c13abec9c', NULL, '103.15.232.231', NULL, 1491969602, '__ci_last_regenerate|i:1491969602;', '2017-04-12 04:00:02'),
('1b7fc160f63ec47b64a43f94bfdd541d2cb0616c', NULL, '103.15.232.231', NULL, 1491972001, '__ci_last_regenerate|i:1491972001;', '2017-04-12 04:40:01'),
('1bda1d6aa115cfdef4a611e48f8d19f43a78fbeb', NULL, '103.15.232.231', NULL, 1491966902, '__ci_last_regenerate|i:1491966902;', '2017-04-12 03:15:02'),
('1dd2c6ecd3728243403bfd9b1dfe09aea9c71b8d', NULL, '103.15.232.231', NULL, 1491970202, '__ci_last_regenerate|i:1491970202;', '2017-04-12 04:10:02'),
('1f56ced804239326b1097f054ced4b7759a84855', NULL, '103.15.232.231', NULL, 1491968702, '__ci_last_regenerate|i:1491968702;', '2017-04-12 03:45:02'),
('218a8f7aaae90554d0a9730b53aeab3df0d91221', NULL, '103.15.232.231', NULL, 1491972302, '__ci_last_regenerate|i:1491972301;', '2017-04-12 04:45:02'),
('2507e9fe4d86f5b9917b368c2c5cb2dd34f4c59d', NULL, '103.15.232.231', NULL, 1491970802, '__ci_last_regenerate|i:1491970802;', '2017-04-12 04:20:02'),
('2771a107ce444ac19e3ed9a5169c0e2623de943c', NULL, '103.15.232.231', NULL, 1491973202, '__ci_last_regenerate|i:1491973202;', '2017-04-12 05:00:02'),
('29d936ceb88400c1b74f0cf319d99f9f9d8206ab', NULL, '103.15.232.231', NULL, 1491963902, '__ci_last_regenerate|i:1491963901;', '2017-04-12 02:25:02'),
('2a9400a5c99ded163bd4953e13e666284dced9e8', NULL, '103.15.232.231', NULL, 1491967802, '__ci_last_regenerate|i:1491967802;', '2017-04-12 03:30:02'),
('375b595a0176f569e0556bcbf98cd2088b8f3bda', NULL, '103.15.232.231', NULL, 1491974702, '__ci_last_regenerate|i:1491974702;', '2017-04-12 05:25:02'),
('48844d10f217cd38e9945ec6b29245d99ade7a72', NULL, '115.248.248.37', NULL, 1491967386, '__ci_last_regenerate|i:1491967340;loggedin|b:1;id_admin|s:1:\"1\";admin_name|s:5:\"Admin\";admin_email|s:17:\"admin@monzone.com\";', '2017-04-12 03:22:20'),
('510bc55538da720cfd168ba8640f050e12b6cf02', NULL, '103.15.232.231', NULL, 1491974102, '__ci_last_regenerate|i:1491974102;', '2017-04-12 05:15:02'),
('5568d19af6672ee17c589d40cfccf950e1f62341', NULL, '103.15.232.231', NULL, 1491971402, '__ci_last_regenerate|i:1491971402;', '2017-04-12 04:30:02'),
('5e00851b47ff9d9dbf11eedf570ccd1869b16f59', NULL, '103.15.232.231', NULL, 1491970501, '__ci_last_regenerate|i:1491970501;', '2017-04-12 04:15:01'),
('6e14af69f3e1a6fb7cdb2fc7110b11fd5d336086', NULL, '103.15.232.231', NULL, 1491972602, '__ci_last_regenerate|i:1491972602;', '2017-04-12 04:50:02'),
('740868a2df091c006897bae6ff4d27a56ea7f156', NULL, '103.15.232.231', NULL, 1491973802, '__ci_last_regenerate|i:1491973802;', '2017-04-12 05:10:02'),
('9307b9bbf69b43681ed05b3d927ef54e0b876102', NULL, '103.15.232.231', NULL, 1491964502, '__ci_last_regenerate|i:1491964502;', '2017-04-12 02:35:02'),
('951ff46749b80e3d9dad8562eb3e52af9d253d44', NULL, '115.248.248.37', NULL, 1491968590, '__ci_last_regenerate|i:1491968590;', '2017-04-12 03:43:10'),
('98cc87278e58a3f44994ff359f0c3622a794a040', NULL, '103.15.232.231', NULL, 1491975002, '__ci_last_regenerate|i:1491975001;', '2017-04-12 05:30:02'),
('9a956cb2a75ddf1059cfe005b72be63e1932923f', NULL, '103.15.232.231', NULL, 1491973502, '__ci_last_regenerate|i:1491973502;', '2017-04-12 05:05:02'),
('a28368f6997d9f8b25840390b226b1e08b70a382', NULL, '103.15.232.231', NULL, 1491963602, '__ci_last_regenerate|i:1491963602;', '2017-04-12 02:20:02'),
('a77f5ac20309911e4fbab0e5554b47cbba768598', NULL, '103.15.232.231', NULL, 1491971702, '__ci_last_regenerate|i:1491971702;', '2017-04-12 04:35:02'),
('aa7298d068aa0139db890dc206a9232558ab1a20', NULL, '115.248.248.37', NULL, 1491969869, '__ci_last_regenerate|i:1491969570;', '2017-04-12 03:59:30'),
('aae9e04ba6083ee386887eb98469931a1c232bc9', NULL, '115.248.248.37', NULL, 1491970079, '__ci_last_regenerate|i:1491970058;', '2017-04-12 04:07:38'),
('b33b6bfc77f6973081f6066a465c7971de166f8b', NULL, '103.15.232.231', NULL, 1491965402, '__ci_last_regenerate|i:1491965402;', '2017-04-12 02:50:02'),
('c47b901c35e276d43c9f3bbc6bb5b4cbacb4488a', NULL, '115.248.248.37', NULL, 1491968212, '__ci_last_regenerate|i:1491967914;loggedin|b:1;id_admin|s:1:\"1\";admin_name|s:5:\"Admin\";admin_email|s:17:\"admin@monzone.com\";flash_msg|s:40:\"attribute has been updated successfully.\";__ci_vars|a:1:{s:9:\"flash_msg\";s:3:\"old\";}', '2017-04-12 03:31:54'),
('c86388cf978bb320bc12c0f6fd10603245dcc8c3', NULL, '103.15.232.231', NULL, 1491965702, '__ci_last_regenerate|i:1491965701;', '2017-04-12 02:55:02'),
('cc1844ac0564581c7af8c6d66d12313187a66f6b', NULL, '115.248.248.37', NULL, 1491967970, '__ci_last_regenerate|i:1491967809;', '2017-04-12 03:30:09'),
('cd260e0ef91b156865a6baaaa7d3c31473b7b828', NULL, '103.15.232.231', NULL, 1491966002, '__ci_last_regenerate|i:1491966002;', '2017-04-12 03:00:02'),
('d6a099fedb0046767ed83c9be674da8898fa01bf', NULL, '103.15.232.231', NULL, 1491967201, '__ci_last_regenerate|i:1491967201;', '2017-04-12 03:20:01'),
('d975cfbf64ad067fc717997ab3ddf79659fae21a', NULL, '103.15.232.231', NULL, 1491974402, '__ci_last_regenerate|i:1491974402;', '2017-04-12 05:20:02'),
('dc34e7a7a236257a5380919143923efe93ef4ea0', NULL, '103.15.232.231', NULL, 1491972902, '__ci_last_regenerate|i:1491972902;', '2017-04-12 04:55:02'),
('e29cbcfd792fc48e082a9fb4d5d09f49bee6b193', NULL, '103.15.232.231', NULL, 1491969001, '__ci_last_regenerate|i:1491969001;', '2017-04-12 03:50:01'),
('e3ee858d36ee5df7a0397ab33f0a3fed41b4b047', NULL, '103.15.232.231', NULL, 1491969302, '__ci_last_regenerate|i:1491969302;', '2017-04-12 03:55:02'),
('e98aefdd2f8800e05616715e2f26a00555130fa0', NULL, '103.15.232.231', NULL, 1491968401, '__ci_last_regenerate|i:1491968401;', '2017-04-12 03:40:01'),
('ee4ce58c2e86b14621e2fc269ab0f37b73226112', NULL, '103.15.232.231', NULL, 1491967502, '__ci_last_regenerate|i:1491967502;', '2017-04-12 03:25:02'),
('eece2ffb990267da96e21341d4b3d84b1902a634', NULL, '103.15.232.231', NULL, 1491969902, '__ci_last_regenerate|i:1491969901;', '2017-04-12 04:05:02'),
('f0bbef37ec31c079820753ca72f4c9bdf36bf8d6', NULL, '103.15.232.231', NULL, 1491966302, '__ci_last_regenerate|i:1491966301;', '2017-04-12 03:05:02'),
('f71e9e1310658abbbb23e3341ebaaf46c923c4e0', NULL, '115.248.248.37', NULL, 1491970621, '__ci_last_regenerate|i:1491970496;', '2017-04-12 04:14:56'),
('fd3990dc3653e0ac362f712d74ae2ed71be1ce1c', NULL, '103.15.232.231', NULL, 1491968102, '__ci_last_regenerate|i:1491968102;', '2017-04-12 03:35:02'),
('fe322340f005a0989c34c1838937bcd1e1ff2675', NULL, '103.15.232.231', NULL, 1491964202, '__ci_last_regenerate|i:1491964201;', '2017-04-12 02:30:02'),
('fe7a3aaee8f0ef063f40fcfbc602e3950d438e14', NULL, '103.15.232.231', NULL, 1491975301, '__ci_last_regenerate|i:1491975301;', '2017-04-12 05:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `mz_config`
--

CREATE TABLE `mz_config` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mz_config`
--

INSERT INTO `mz_config` (`key`, `value`) VALUES
('address', 'Singapore 123456'),
('admin_email', 'project.update12@gmail.com'),
('allowed_otp_perday', '10'),
('area_manager', 'Frankie Lim'),
('area_manager_num', '97771315'),
('contact_no', '+65 2378934'),
('director', 'Jasmine Tay'),
('reminder_email', 'laxmi@singsys.com, akhand@singsys.com'),
('sgd_to_myr', '3.16'),
('signup_email', 'project.update12@gmail.com'),
('smtp_port_number', '465'),
('smtp_server_host', 'ssl://smtp.googlemail.com'),
('smtp_uName', 'project.update12@gmail.com'),
('smtp_uPass', 'project12345');

-- --------------------------------------------------------

--
-- Table structure for table `mz_consumer`
--

CREATE TABLE `mz_consumer` (
  `id_customer` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `status` enum('active','delete') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_consumer`
--

INSERT INTO `mz_consumer` (`id_customer`, `company_name`, `company_address`, `phone`, `fax`, `contact_person`, `email`, `added_on`, `updated_on`, `status`) VALUES
(29, 'D', 'New Company Address', '1234567890', '2147483647', 'New Person', 'newperson@new.com', '2016-09-22 17:11:37', '2016-12-19 17:42:31', 'active'),
(30, 'Consumer', 'Consumer Address', '123467890', '2147483647', 'New Consumer', 'con@con.com', '2016-09-22 17:16:12', '2017-03-23 13:13:41', 'active'),
(31, 'New', 'New Company Address', '1234567890', '2147483647', 'new person', 'saurabh2@singsys.com', '2016-09-22 17:19:44', '2016-10-26 18:29:04', 'delete'),
(34, 'A1', 'A1', '2147483647', '2147483647', 'Dss', 'asd@g.com', '2016-09-22 18:42:43', '2016-12-19 17:49:03', 'delete'),
(35, 'A12', 'A1', '2147483647', '2147483647', 'Dss', 'asd@g.com', '2016-09-22 18:47:14', '2016-12-19 17:49:40', 'delete'),
(36, 'Monzone 123', 'Qwerty', '1234567899', '134687542', 'H gcdhgccghgchc', 'm@m.com', '2016-09-22 20:39:51', '2016-12-19 19:51:06', 'delete'),
(37, 'test company', 'test', '12345678', '12345668', 'test', 'm@s.com', '2016-09-23 12:57:16', '2016-12-19 19:44:01', 'delete'),
(38, 'Aadjadjdasihdasuhihuidashiudashiudashiadshuiadshdashhuadshadshiadshiasdhiusadhiadhuiahiuahuadshudashuda', 'Dfjdfsjifdsjhjfdshfdsjhdfshjfdsjhfsdjhfdjhfdshjfdjshhjfdshjfdshjfdshjdfshfdsjhfdshjdfshdfsjhsjhs', '2147483647', '455454445', 'Lekkfdsfdklnkld', 'fdkfdj@g.com', '2016-09-23 13:12:36', '2016-12-19 21:31:40', 'delete'),
(39, 'Sharad', 'Testing', '1234568898', '2147483647', 'Maggie', 'rrttrtr@g.cxom', '2016-09-23 13:16:54', '2016-12-19 22:01:57', 'delete'),
(40, 'o', 'n', '55765765', '866876876', ' vgghbh', 'rachna@kk.com', '2016-09-23 15:23:42', '2016-09-23 15:23:42', 'delete'),
(41, 'abc', 'vdvdvd', '2147483647', '2147483647', 'riya', 'riya@gmail.com', '2016-09-23 18:27:48', '2017-03-30 16:37:23', 'active'),
(42, 'ui', 'uu', '2147483647', '78987665', 'test rachna', 'test@singsys.com', '2016-09-23 21:29:19', '2016-10-20 19:08:05', 'delete'),
(43, 'Apple', 'Apple drive', '12345678', '90123456', 'Apple', 'rosina@monzone.com.my', '2016-09-28 15:55:14', '2017-03-20 18:30:56', 'active'),
(44, 'Megha', 'Lko', '12345678', '12345678', 'Megha@', 'megha@singsys.com', '2016-09-28 17:40:06', '2016-11-24 20:59:13', 'delete'),
(45, 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2016-09-28 17:43:23', '2017-05-03 15:52:16', 'delete'),
(46, 'Shashwat', 'Lko', '2147483647', '65543343', 'Shashwat', 'shashwat@singsys.com', '2016-09-28 18:40:07', '2016-12-19 21:33:40', 'delete'),
(47, 'Saad1', 'Lko', '565656555', '2147483647', 'Saad', 'saad@singsys.com', '2016-09-28 18:41:46', '2016-09-28 18:45:21', 'delete'),
(48, 'Small apple', 'Small apple', '12345678', '12345678', 'Sa', 'sa@gmail.com', '2016-09-29 10:01:56', '2016-09-29 14:46:31', 'delete'),
(49, 'Abcdef', 'Abcdef', '12344577', '12345678', 'Abcdef', 'rosina@monzone.com.my', '2016-09-29 11:49:18', '2017-03-23 19:40:44', 'active'),
(55, 'Afuujvj', 'Hcjcjcjv', '134566888', '123567878', 'Gddcukk', 'bharatraj@singsys.com', '2016-09-29 21:04:57', '2016-11-23 19:55:21', 'delete'),
(50, 'qwertyqqqqqq', 'New Company Address', '1234567890', '1234567890', 'qwerty', 'saurabh1@singsys.com', '2016-09-29 14:15:22', '2016-12-19 20:19:11', 'delete'),
(51, 'Thingstodo', 'Fyifjhgjhgjhgjh', '565865865', '2147483647', 'Tttttttttt', 'bharatraj@singsys.com', '2016-09-29 14:23:44', '2016-12-19 17:31:39', 'delete'),
(52, 'Thingstodoyou', 'Fyifjhgjhgjhgjh', '565865865', '2147483647', 'Tttttttttt', 'ttt@tt.in', '2016-09-29 14:24:22', '2016-10-20 20:21:47', 'delete'),
(53, 'Monzone test', 'Qeryui', '123456654', '2147483647', 'Msjdjjdd', 'm@q.com', '2016-09-29 18:46:58', '2016-12-19 17:33:06', 'delete'),
(54, 'New Develop Company111', 'Address for new develop company', '80907767', '2147483647', 'sunil gautam', 'testsunil@yopmail.com', '2016-09-29 18:59:33', '2016-11-14 16:33:28', 'delete'),
(56, 'Vibibbif j iob o', 'Uuvu jkbvm', '12345557', '12234455', 'Dydvu jbkboyin', 'laxmi@singsys.com', '2016-09-29 21:05:52', '2016-11-22 11:33:04', 'delete'),
(57, 'Gbchvkhc', 'Iyficiycycci iy', '455569854', '34568844', 'Hvvjvuf j', 'bharatraj@singsys.com', '2016-09-29 21:08:48', '2016-11-22 11:40:06', 'delete'),
(58, 'Jfjfjfvjvkvjvj', 'Llkkjggdsa', '2147483647', '234786532', 'Jufbyevhn', 'bharatraj@singsys.com', '2016-09-29 21:09:59', '2016-09-29 21:09:59', 'delete'),
(59, 'Bhvbj', 'Hybt ', '123456888', '2147483647', 'Gt hgn', 'bharatraj@singsys.com', '2016-09-30 17:11:07', '2016-09-30 17:11:07', 'delete'),
(60, 'Hh', 'Vvjuggu', '2147483647', '2147483647', 'Vhrfni', 'laxmi@singsys.com', '2016-09-30 17:35:31', '2016-09-30 17:35:31', 'delete'),
(61, 'R', '33', '2147483647', '34434334', 'Dfdfdf', '', '2016-10-17 20:10:14', '2016-10-17 20:10:14', 'delete'),
(62, 'my new test', 'tset', '2147483647', '1223444566', 'test', 'abhishektrivedi@singsys.com', '2016-10-17 20:13:02', '2016-12-19 17:25:49', 'delete'),
(63, 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2016-10-25 18:37:57', '2017-03-23 20:17:14', 'active'),
(64, 'Tert', 'Fryu', '2147483647', '2147483647', 'Fghhvff', 'fggg@kll.nmm', '2016-11-10 18:06:37', '2016-11-10 18:07:41', 'delete'),
(65, 'Apple Pte Ltd', '51 Senoko Drive', '63651315', '63652062', 'Mr. Teoh', 'teoh@monzone-aircon.com', '2016-11-14 17:00:34', '2017-03-23 14:25:41', 'active'),
(66, 'Test', 'Test', '112334343', '323323232', 'Qbhi', 'ab@gm.com', '2017-03-20 12:48:53', '2017-04-05 17:29:54', 'active'),
(67, 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-21 13:30:01', '2017-03-23 14:26:27', 'active'),
(68, 'ssa', 'sasas', '23456789', '3245678', 'ssdsdsd', 'asas@kk.in', '2017-03-21 14:03:13', '2017-03-21 14:03:13', 'delete'),
(69, 'test laxmi', 'test address', '1234567', '12345677', 'test', 'laxmi@yopmail.com', '2017-04-06 17:13:49', '2017-04-06 17:13:49', 'delete'),
(70, 'test person', 'test address', '12345678', '12345678', 'test', 'laxmi@yopmail.com', '2017-04-06 17:24:59', '2017-04-06 17:24:59', 'delete'),
(71, 'xzxzx', 'xxzxzx', '343434', '343434', 'test', 'laxmi@yopmail.com', '2017-04-06 17:27:25', '2017-04-06 17:27:25', 'delete'),
(72, 'sssssssd3sdsdsddatssdassdssddasdas', 'ddddsa', '80907767', '45687222', 'ddd', 'xzxz@ffd.com', '2017-05-01 21:45:23', '2017-05-15 13:49:05', 'active'),
(73, 'my favssdfddsassdsdd company3ssxddsdsdse', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-03 19:09:16', '2017-05-03 19:09:16', 'active'),
(74, 'xyz', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 11:46:30', '2017-05-08 11:46:30', 'active'),
(75, 'dhtfgh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 12:05:51', '2017-05-08 12:05:51', 'active'),
(76, 'my fav company', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 14:23:03', '2017-05-08 14:23:03', 'active'),
(77, 'asd', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 14:25:16', '2017-05-08 14:25:16', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `mz_contact`
--

CREATE TABLE `mz_contact` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  `type` enum('reportbugs','enquiry','reportabuse','others','advertisement') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mz_contact`
--

INSERT INTO `mz_contact` (`id`, `user_id`, `name`, `phone`, `email`, `message`, `plan_id`, `subject`, `added_on`, `type`) VALUES
(1, 0, 'Pushpendra Singh', '8004791897', 'pushpendrasingh@singsys.com', 'Test Message', 0, 'Testing', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `mz_country`
--

CREATE TABLE `mz_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `iso_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone_country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mz_country`
--

INSERT INTO `mz_country` (`id`, `created_date`, `iso_code`, `phone_country_code`, `country_name`, `status`) VALUES
(1, '2015-06-25 14:16:51', 'IL', '+972', 'Israel', 'Active'),
(2, '2015-06-25 14:16:51', 'AF', '+93', 'Afghanistan', 'Active'),
(3, '2015-06-25 14:16:51', 'AL', '+355', 'Albania', 'Active'),
(4, '2015-06-25 14:16:51', 'DZ', '+213', 'Algeria', 'Active'),
(5, '2015-06-25 14:16:51', 'AS', '+1 684', 'AmericanSamoa', 'Active'),
(6, '2015-06-25 14:16:51', 'AD', '+376', 'Andorra', 'Active'),
(7, '2015-06-25 14:16:51', 'AO', '+244', 'Angola', 'Active'),
(8, '2015-06-25 14:16:51', 'AI', '+1 264', 'Anguilla', 'Active'),
(9, '2015-06-25 14:16:51', 'AG', '+1268', 'Antigua and Barbuda', 'Active'),
(10, '2015-06-25 14:16:51', 'AR', '+54', 'Argentina', 'Active'),
(11, '2015-06-25 14:16:51', 'AM', '+374', 'Armenia', 'Active'),
(12, '2015-06-25 14:16:52', 'AW', '+297', 'Aruba', 'Active'),
(13, '2015-06-25 14:16:52', 'AU', '+61', 'Australia', 'Active'),
(14, '2015-06-25 14:16:52', 'AT', '+43', 'Austria', 'Active'),
(15, '2015-06-25 14:16:52', 'AZ', '+994', 'Azerbaijan', 'Active'),
(16, '2015-06-25 14:16:52', 'BS', '+1 242', 'Bahamas', 'Active'),
(17, '2015-06-25 14:16:52', 'BH', '+973', 'Bahrain', 'Active'),
(18, '2015-06-25 14:16:52', 'BD', '+880', 'Bangladesh', 'Active'),
(19, '2015-06-25 14:16:52', 'BB', '+1 246', 'Barbados', 'Active'),
(20, '2015-06-25 14:16:52', 'BY', '+375', 'Belarus', 'Active'),
(21, '2015-06-25 14:16:52', 'BE', '+32', 'Belgium', 'Active'),
(22, '2015-06-25 14:16:52', 'BZ', '+501', 'Belize', 'Active'),
(23, '2015-06-25 14:16:52', 'BJ', '+229', 'Benin', 'Active'),
(24, '2015-06-25 14:16:52', 'BM', '+1 441', 'Bermuda', 'Active'),
(25, '2015-06-25 14:16:52', 'BT', '+975', 'Bhutan', 'Active'),
(26, '2015-06-25 14:16:53', 'BA', '+387', 'Bosnia and Herzegovina', 'Active'),
(27, '2015-06-25 14:16:53', 'BW', '+267', 'Botswana', 'Active'),
(28, '2015-06-25 14:16:53', 'BR', '+55', 'Brazil', 'Active'),
(29, '2015-06-25 14:16:53', 'IO', '+246', 'British Indian Ocean Territory', 'Active'),
(30, '2015-06-25 14:16:53', 'BG', '+359', 'Bulgaria', 'Active'),
(31, '2015-06-25 14:16:53', 'BF', '+226', 'Burkina Faso', 'Active'),
(32, '2015-06-25 14:16:53', 'BI', '+257', 'Burundi', 'Active'),
(33, '2015-06-25 14:16:53', 'KH', '+855', 'Cambodia', 'Active'),
(34, '2015-06-25 14:16:53', 'CM', '+237', 'Cameroon', 'Active'),
(35, '2015-06-25 14:16:53', 'CA', '+1', 'Canada', 'Active'),
(36, '2015-06-25 14:16:53', 'CV', '+238', 'Cape Verde', 'Active'),
(37, '2015-06-25 14:16:53', 'KY', '+ 345', 'Cayman Islands', 'Active'),
(38, '2015-06-25 14:16:54', 'CF', '+236', 'Central African Republic', 'Active'),
(39, '2015-06-25 14:16:54', 'TD', '+235', 'Chad', 'Active'),
(40, '2015-06-25 14:16:54', 'CL', '+56', 'Chile', 'Active'),
(41, '2015-06-25 14:16:54', 'CN', '+86', 'China', 'Active'),
(42, '2015-06-25 14:16:54', 'CX', '+61', 'Christmas Island', 'Active'),
(43, '2015-06-25 14:16:54', 'CO', '+57', 'Colombia', 'Active'),
(44, '2015-06-25 14:16:54', 'KM', '+269', 'Comoros', 'Active'),
(45, '2015-06-25 14:16:54', 'CG', '+242', 'Congo', 'Active'),
(46, '2015-06-25 14:16:54', 'CK', '+682', 'Cook Islands', 'Active'),
(47, '2015-06-25 14:16:54', 'CR', '+506', 'Costa Rica', 'Active'),
(48, '2015-06-25 14:16:54', 'HR', '+385', 'Croatia', 'Active'),
(49, '2015-06-25 14:16:54', 'CU', '+53', 'Cuba', 'Active'),
(50, '2015-06-25 14:16:54', 'CY', '+537', 'Cyprus', 'Active'),
(51, '2015-06-25 14:16:55', 'CZ', '+420', 'Czech Republic', 'Active'),
(52, '2015-06-25 14:16:55', 'DK', '+45', 'Denmark', 'Active'),
(53, '2015-06-25 14:16:55', 'DJ', '+253', 'Djibouti', 'Active'),
(54, '2015-06-25 14:16:55', 'DM', '+1 767', 'Dominica', 'Active'),
(55, '2015-06-25 14:16:55', 'DO', '+1 849', 'Dominican Republic', 'Active'),
(56, '2015-06-25 14:16:55', 'EC', '+593', 'Ecuador', 'Active'),
(57, '2015-06-25 14:16:55', 'EG', '+20', 'Egypt', 'Active'),
(58, '2015-06-25 14:16:56', 'SV', '+503', 'El Salvador', 'Active'),
(59, '2015-06-25 14:16:56', 'GQ', '+240', 'Equatorial Guinea', 'Active'),
(60, '2015-06-25 14:16:56', 'ER', '+291', 'Eritrea', 'Active'),
(61, '2015-06-25 14:16:56', 'EE', '+372', 'Estonia', 'Active'),
(62, '2015-06-25 14:16:56', 'ET', '+251', 'Ethiopia', 'Active'),
(63, '2015-06-25 14:16:56', 'FO', '+298', 'Faroe Islands', 'Active'),
(64, '2015-06-25 14:16:56', 'FJ', '+679', 'Fiji', 'Active'),
(65, '2015-06-25 14:16:56', 'FI', '+358', 'Finland', 'Active'),
(66, '2015-06-25 14:16:56', 'FR', '+33', 'France', 'Active'),
(67, '2015-06-25 14:16:56', 'GF', '+594', 'French Guiana', 'Active'),
(68, '2015-06-25 14:16:56', 'PF', '+689', 'French Polynesia', 'Active'),
(69, '2015-06-25 14:16:56', 'GA', '+241', 'Gabon', 'Active'),
(70, '2015-06-25 14:16:56', 'GM', '+220', 'Gambia', 'Active'),
(71, '2015-06-25 14:16:56', 'GE', '+995', 'Georgia', 'Active'),
(72, '2015-06-25 14:16:56', 'DE', '+49', 'Germany', 'Active'),
(73, '2015-06-25 14:16:56', 'GH', '+233', 'Ghana', 'Active'),
(74, '2015-06-25 14:16:57', 'GI', '+350', 'Gibraltar', 'Active'),
(75, '2015-06-25 14:16:57', 'GR', '+30', 'Greece', 'Active'),
(76, '2015-06-25 14:16:57', 'GL', '+299', 'Greenland', 'Active'),
(77, '2015-06-25 14:16:57', 'GD', '+1 473', 'Grenada', 'Active'),
(78, '2015-06-25 14:16:57', 'GP', '+590', 'Guadeloupe', 'Active'),
(79, '2015-06-25 14:16:57', 'GU', '+1 671', 'Guam', 'Active'),
(80, '2015-06-25 14:16:57', 'GT', '+502', 'Guatemala', 'Active'),
(81, '2015-06-25 14:16:57', 'GN', '+224', 'Guinea', 'Active'),
(82, '2015-06-25 14:16:57', 'GW', '+245', 'Guinea-Bissau', 'Active'),
(83, '2015-06-25 14:16:57', 'GY', '+595', 'Guyana', 'Active'),
(84, '2015-06-25 14:16:57', 'HT', '+509', 'Haiti', 'Active'),
(85, '2015-06-25 14:16:57', 'HN', '+504', 'Honduras', 'Active'),
(86, '2015-06-25 14:16:57', 'HU', '+36', 'Hungary', 'Active'),
(87, '2015-06-25 14:16:57', 'IS', '+354', 'Iceland', 'Active'),
(88, '2015-06-25 14:16:57', 'IN', '+91', 'India', 'Active'),
(89, '2015-06-25 14:16:58', 'ID', '+62', 'Indonesia', 'Active'),
(90, '2015-06-25 14:16:58', 'IQ', '+964', 'Iraq', 'Active'),
(91, '2015-06-25 14:16:58', 'IE', '+353', 'Ireland', 'Active'),
(92, '2015-06-25 14:16:58', 'IL', '+972', 'Israel', 'Active'),
(93, '2015-06-25 14:16:58', 'IT', '+39', 'Italy', 'Active'),
(94, '2015-06-25 14:16:58', 'JM', '+1 876', 'Jamaica', 'Active'),
(95, '2015-06-25 14:16:58', 'JP', '+81', 'Japan', 'Active'),
(96, '2015-06-25 14:16:59', 'JO', '+962', 'Jordan', 'Active'),
(97, '2015-06-25 14:16:59', 'KZ', '+7 7', 'Kazakhstan', 'Active'),
(98, '2015-06-25 14:16:59', 'KE', '+254', 'Kenya', 'Active'),
(99, '2015-06-25 14:16:59', 'KI', '+686', 'Kiribati', 'Active'),
(100, '2015-06-25 14:16:59', 'KW', '+965', 'Kuwait', 'Active'),
(101, '2015-06-25 14:16:59', 'KG', '+996', 'Kyrgyzstan', 'Active'),
(102, '2015-06-25 14:16:59', 'LV', '+371', 'Latvia', 'Active'),
(103, '2015-06-25 14:16:59', 'LB', '+961', 'Lebanon', 'Active'),
(104, '2015-06-25 14:16:59', 'LS', '+266', 'Lesotho', 'Active'),
(105, '2015-06-25 14:16:59', 'LR', '+231', 'Liberia', 'Active'),
(106, '2015-06-25 14:16:59', 'LI', '+423', 'Liechtenstein', 'Active'),
(107, '2015-06-25 14:16:59', 'LT', '+370', 'Lithuania', 'Active'),
(108, '2015-06-25 14:16:59', 'LU', '+352', 'Luxembourg', 'Active'),
(109, '2015-06-25 14:17:00', 'MG', '+261', 'Madagascar', 'Active'),
(110, '2015-06-25 14:17:00', 'MW', '+265', 'Malawi', 'Active'),
(111, '2015-06-25 14:17:00', 'MY', '+60', 'Malaysia', 'Active'),
(112, '2015-06-25 14:17:00', 'MV', '+960', 'Maldives', 'Active'),
(113, '2015-06-25 14:17:00', 'ML', '+223', 'Mali', 'Active'),
(114, '2015-06-25 14:17:00', 'MT', '+356', 'Malta', 'Active'),
(115, '2015-06-25 14:17:00', 'MH', '+692', 'Marshall Islands', 'Active'),
(116, '2015-06-25 14:17:00', 'MQ', '+596', 'Martinique', 'Active'),
(117, '2015-06-25 14:17:00', 'MR', '+222', 'Mauritania', 'Active'),
(118, '2015-06-25 14:17:00', 'MU', '+230', 'Mauritius', 'Active'),
(119, '2015-06-25 14:17:00', 'YT', '+262', 'Mayotte', 'Active'),
(120, '2015-06-25 14:17:00', 'MX', '+52', 'Mexico', 'Active'),
(121, '2015-06-25 14:17:00', 'MC', '+377', 'Monaco', 'Active'),
(122, '2015-06-25 14:17:00', 'MN', '+976', 'Mongolia', 'Active'),
(123, '2015-06-25 14:17:00', 'ME', '+382', 'Montenegro', 'Active'),
(124, '2015-06-25 14:17:00', 'MS', '+1664', 'Montserrat', 'Active'),
(125, '2015-06-25 14:17:01', 'MA', '+212', 'Morocco', 'Active'),
(126, '2015-06-25 14:17:01', 'MM', '+95', 'Myanmar', 'Active'),
(127, '2015-06-25 14:17:01', 'NA', '+264', 'Namibia', 'Active'),
(128, '2015-06-25 14:17:01', 'NR', '+674', 'Nauru', 'Active'),
(129, '2015-06-25 14:17:01', 'NP', '+977', 'Nepal', 'Active'),
(130, '2015-06-25 14:17:02', 'NL', '+31', 'Netherlands', 'Active'),
(131, '2015-06-25 14:17:02', 'AN', '+599', 'Netherlands Antilles', 'Active'),
(132, '2015-06-25 14:17:02', 'NC', '+687', 'New Caledonia', 'Active'),
(133, '2015-06-25 14:17:03', 'NZ', '+64', 'New Zealand', 'Active'),
(134, '2015-06-25 14:17:03', 'NI', '+505', 'Nicaragua', 'Active'),
(135, '2015-06-25 14:17:03', 'NE', '+227', 'Niger', 'Active'),
(136, '2015-06-25 14:17:03', 'NG', '+234', 'Nigeria', 'Active'),
(137, '2015-06-25 14:17:03', 'NU', '+683', 'Niue', 'Active'),
(138, '2015-06-25 14:17:03', 'NF', '+672', 'Norfolk Island', 'Active'),
(139, '2015-06-25 14:17:03', 'MP', '+1 670', 'Northern Mariana Islands', 'Active'),
(140, '2015-06-25 14:17:03', 'NO', '+47', 'Norway', 'Active'),
(141, '2015-06-25 14:17:03', 'OM', '+968', 'Oman', 'Active'),
(142, '2015-06-25 14:17:03', 'PK', '+92', 'Pakistan', 'Active'),
(143, '2015-06-25 14:17:04', 'PW', '+680', 'Palau', 'Active'),
(144, '2015-06-25 14:17:04', 'PA', '+507', 'Panama', 'Active'),
(145, '2015-06-25 14:17:04', 'PG', '+675', 'Papua New Guinea', 'Active'),
(146, '2015-06-25 14:17:04', 'PY', '+595', 'Paraguay', 'Active'),
(147, '2015-06-25 14:17:04', 'PE', '+51', 'Peru', 'Active'),
(148, '2015-06-25 14:17:04', 'PH', '+63', 'Philippines', 'Active'),
(149, '2015-06-25 14:17:04', 'PL', '+48', 'Poland', 'Active'),
(150, '2015-06-25 14:17:04', 'PT', '+351', 'Portugal', 'Active'),
(151, '2015-06-25 14:17:04', 'PR', '+1 939', 'Puerto Rico', 'Active'),
(152, '2015-06-25 14:17:04', 'QA', '+974', 'Qatar', 'Active'),
(153, '2015-06-25 14:17:04', 'RO', '+40', 'Romania', 'Active'),
(154, '2015-06-25 14:17:04', 'RW', '+250', 'Rwanda', 'Active'),
(155, '2015-06-25 14:17:04', 'WS', '+685', 'Samoa', 'Active'),
(156, '2015-06-25 14:17:04', 'SM', '+378', 'San Marino', 'Active'),
(157, '2015-06-25 14:17:04', 'SA', '+966', 'Saudi Arabia', 'Active'),
(158, '2015-06-25 14:17:04', 'SN', '+221', 'Senegal', 'Active'),
(159, '2015-06-25 14:17:05', 'RS', '+381', 'Serbia', 'Active'),
(160, '2015-06-25 14:17:05', 'SC', '+248', 'Seychelles', 'Active'),
(161, '2015-06-25 14:17:05', 'SL', '+232', 'Sierra Leone', 'Active'),
(162, '2015-06-25 14:17:05', 'SG', '+65', 'Singapore', 'Active'),
(163, '2015-06-25 14:17:05', 'SK', '+421', 'Slovakia', 'Active'),
(164, '2015-06-25 14:17:05', 'SI', '+386', 'Slovenia', 'Active'),
(165, '2015-06-25 14:17:05', 'SB', '+677', 'Solomon Islands', 'Active'),
(166, '2015-06-25 14:17:05', 'ZA', '+27', 'South Africa', 'Active'),
(167, '2015-06-25 14:17:05', 'GS', '+500', 'South Georgia and the South Sandwich Islands', 'Active'),
(168, '2015-06-25 14:17:05', 'ES', '+34', 'Spain', 'Active'),
(169, '2015-06-25 14:17:05', 'LK', '+94', 'Sri Lanka', 'Active'),
(170, '2015-06-25 14:17:05', 'SD', '+249', 'Sudan', 'Active'),
(171, '2015-06-25 14:17:05', 'SR', '+597', 'Suriname', 'Active'),
(172, '2015-06-25 14:17:05', 'SZ', '+268', 'Swaziland', 'Active'),
(173, '2015-06-25 14:17:06', 'SE', '+46', 'Sweden', 'Active'),
(174, '2015-06-25 14:17:06', 'CH', '+41', 'Switzerland', 'Active'),
(175, '2015-06-25 14:17:06', 'TJ', '+992', 'Tajikistan', 'Active'),
(176, '2015-06-25 14:17:06', 'TH', '+66', 'Thailand', 'Active'),
(177, '2015-06-25 14:17:06', 'TG', '+228', 'Togo', 'Active'),
(178, '2015-06-25 14:17:06', 'TK', '+690', 'Tokelau', 'Active'),
(179, '2015-06-25 14:17:06', 'TO', '+676', 'Tonga', 'Active'),
(180, '2015-06-25 14:17:06', 'TT', '+1 868', 'Trinidad and Tobago', 'Active'),
(181, '2015-06-25 14:17:06', 'TN', '+216', 'Tunisia', 'Active'),
(182, '2015-06-25 14:17:06', 'TR', '+90', 'Turkey', 'Active'),
(183, '2015-06-25 14:17:06', 'TM', '+993', 'Turkmenistan', 'Active'),
(184, '2015-06-25 14:17:06', 'TC', '+1 649', 'Turks andCaicos Islands', 'Active'),
(185, '2015-06-25 14:17:06', 'TV', '+688', 'Tuvalu', 'Active'),
(186, '2015-06-25 14:17:06', 'UG', '+256', 'Uganda', 'Active'),
(187, '2015-06-25 14:17:06', 'UA', '+380', 'Ukraine', 'Active'),
(188, '2015-06-25 14:17:06', 'AE', '+971', 'United Arab Emirates', 'Active'),
(189, '2015-06-25 14:17:06', 'GB', '+44', 'United Kingdom', 'Active'),
(190, '2015-06-25 14:17:06', 'US', '+1', 'United States', 'Active'),
(191, '2015-06-25 14:17:07', 'UY', '+598', 'Uruguay', 'Active'),
(192, '2015-06-25 14:17:07', 'UZ', '+998', 'Uzbekistan', 'Active'),
(193, '2015-06-25 14:17:07', 'VU', '+678', 'Vanuatu', 'Active'),
(194, '2015-06-25 14:17:07', 'WF', '+681', 'Wallis and Futuna', 'Active'),
(195, '2015-06-25 14:17:07', 'YE', '+967', 'Yemen', 'Active'),
(196, '2015-06-25 14:17:07', 'ZM', '+260', 'Zambia', 'Active'),
(197, '2015-06-25 14:17:07', 'ZW', '+263', 'Zimbabwe', 'Active'),
(199, '2015-06-25 14:17:07', 'AQ', '+672', 'Antarctica', 'Active'),
(200, '2015-06-25 14:17:07', 'BO', '+591', 'Bolivia, Plurinational State of', 'Active'),
(201, '2015-06-25 14:17:07', 'BN', '+673', 'Brunei Darussalam', 'Active'),
(202, '2015-06-25 14:17:07', 'CC', '+61', 'Cocos (Keeling) Islands', 'Active'),
(203, '2015-06-25 14:17:07', 'CD', '+243', 'Congo, The Democratic Republic of the', 'Active'),
(204, '2015-06-25 14:17:07', 'CI', '+225', 'Coted\'Ivoire', 'Active'),
(205, '2015-06-25 14:17:08', 'FK', '+500', 'Falkland Islands (Malvinas)', 'Active'),
(206, '2015-06-25 14:17:08', 'GG', '+44', 'Guernsey', 'Active'),
(207, '2015-06-25 14:17:08', 'VA', '+379', 'Holy See (Vatican City State)', 'Active'),
(208, '2015-06-25 14:17:08', 'HK', '+852', 'Hong Kong', 'Active'),
(209, '2015-06-25 14:17:08', 'IR', '+98', 'Iran, Islamic Republic of', 'Active'),
(210, '2015-06-25 14:17:08', 'IM', '+44', 'Isle of Man', 'Active'),
(211, '2015-06-25 14:17:08', 'JE', '+44', 'Jersey', 'Active'),
(212, '2015-06-25 14:17:08', 'KP', '+850', 'Korea, Democratic People\'s Republic of', 'Active'),
(213, '2015-06-25 14:17:08', 'KR', '+82', 'Korea, Republic of', 'Active'),
(214, '2015-06-25 14:17:08', 'LA', '+856', 'Lao People\'s Democratic Republic', 'Active'),
(215, '2015-06-25 14:17:08', 'LY', '+218', 'Libyan Arab Jamahiriya', 'Active'),
(216, '2015-06-25 14:17:08', 'MO', '+853', 'Macao', 'Active'),
(217, '2015-06-25 14:17:08', 'MK', '+389', 'Macedonia, The Former Yugoslav Republic of', 'Active'),
(218, '2015-06-25 14:17:08', 'FM', '+691', 'Micronesia, Federated States of', 'Active'),
(219, '2015-06-25 14:17:08', 'MD', '+373', 'Moldova, Republic of', 'Active'),
(220, '2015-06-25 14:17:08', 'MZ', '+258', 'Mozambique', 'Active'),
(221, '2015-06-25 14:17:08', 'PS', '+970', 'Palestinian Territory, Occupied', 'Active'),
(222, '2015-06-25 14:17:09', 'PN', '+872', 'Pitcairn', 'Active'),
(223, '2015-06-25 14:17:09', 'RE', '+262', 'Réunion', 'Active'),
(224, '2015-06-25 14:17:09', 'RU', '+7', 'Russia', 'Active'),
(225, '2015-06-25 14:17:09', 'BL', '+590', 'Saint Barthélemy', 'Active'),
(226, '2015-06-25 14:17:09', 'SH', '+290', 'Saint Helena, Ascension and Tristan Da Cunha', 'Active'),
(227, '2015-06-25 14:17:09', 'KN', '+1 869', 'Saint Kitts and Nevis', 'Active'),
(228, '2015-06-25 14:17:09', 'LC', '+1 758', 'Saint Lucia', 'Active'),
(229, '2015-06-25 14:17:09', 'MF', '+590', 'Saint Martin', 'Active'),
(230, '2015-06-25 14:17:09', 'PM', '+508', 'Saint Pierre and Miquelon', 'Active'),
(231, '2015-06-25 14:17:09', 'VC', '+1 784', 'Saint Vincent and the Grenadines', 'Active'),
(232, '2015-06-25 14:17:10', 'ST', '+239', 'Sao Tome and Principe', 'Active'),
(233, '2015-06-25 14:17:10', 'SO', '+252', 'Somalia', 'Active'),
(234, '2015-06-25 14:17:10', 'SJ', '+47', 'Svalbard and Jan Mayen', 'Active'),
(235, '2015-06-25 14:17:10', 'SY', '+963', 'Syrian Arab Republic', 'Active'),
(236, '2015-06-25 14:17:10', 'TW', '+886', 'Taiwan, Province of China', 'Active'),
(237, '2015-06-25 14:17:10', 'TZ', '+255', 'Tanzania, United Republic of', 'Active'),
(238, '2015-06-25 14:17:10', 'TL', '+670', 'Timor-Leste', 'Active'),
(239, '2015-06-25 14:17:10', 'VE', '+58', 'Venezuela, Bolivarian Republic of', 'Active'),
(240, '2015-06-25 14:17:10', 'VN', '+84', 'Viet Nam', 'Active'),
(241, '2015-06-25 14:17:10', 'VG', '+1 284', 'Virgin Islands, British', 'Active'),
(242, '2015-06-25 14:17:10', 'VI', '+1 340', 'Virgin Islands, U.S.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `mz_customer_advisor`
--

CREATE TABLE `mz_customer_advisor` (
  `id_customer_advisor` int(11) NOT NULL,
  `customer_advisor_name` varchar(400) NOT NULL,
  `customer_advisor_image` varchar(400) NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mz_discount`
--

CREATE TABLE `mz_discount` (
  `id_discount` int(11) NOT NULL,
  `disc_code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `disc_flat` decimal(10,2) NOT NULL,
  `disc_per` decimal(10,2) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `quotation_num` varchar(45) DEFAULT NULL,
  `status` enum('active','inactive','redeemed') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_discount`
--

INSERT INTO `mz_discount` (`id_discount`, `disc_code`, `user_id`, `disc_flat`, `disc_per`, `password`, `created_date`, `quotation_num`, `status`) VALUES
(1, 'disc1', 2, '12.00', NULL, '25d55ad283aa400af464c76d713c07ad', '2017-03-21 13:31:34', NULL, 'active'),
(2, 'disc2', 2, '1.00', NULL, '25d55ad283aa400af464c76d713c07ad', '2017-03-23 12:01:19', 'QT2016-00000013', 'redeemed'),
(3, 'disc3', 2, '2.00', NULL, '25d55ad283aa400af464c76d713c07ad', '2017-03-23 12:03:19', 'QT2016-00000015', 'redeemed'),
(4, 'disc4', 1, '1.00', NULL, '25d55ad283aa400af464c76d713c07ad', '2017-03-23 12:23:41', NULL, 'active'),
(6, 'd44', 0, '23.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 14:16:44', NULL, 'active'),
(7, 'd56', 0, '123.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 20:17:04', NULL, 'active'),
(8, 'd99', 0, '34.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 20:18:06', NULL, 'active'),
(9, 'd100', 0, '150.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 20:42:08', NULL, 'active'),
(10, 'd34', 0, '130.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 20:43:50', NULL, 'active'),
(11, 'd49', 13, '130.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 20:46:34', NULL, 'active'),
(12, 'd46', 0, '120.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-15 20:53:07', NULL, 'active'),
(13, 'd78', 0, '109.00', NULL, '25d55ad283aa400af464c76d713c07ad', '2017-05-15 21:06:28', NULL, 'active'),
(14, 'd578', 0, '78.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 07:44:56', NULL, 'active'),
(15, 'd67', 0, '78.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 07:48:11', NULL, 'active'),
(17, 'd461', 0, '78.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 07:52:54', NULL, 'active'),
(19, 'd78900', 36, '780.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 07:55:41', NULL, 'active'),
(20, 'd890', 35, '89.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 07:58:00', NULL, 'active'),
(21, 'dfgh78', 27, '890.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:03:08', NULL, 'active'),
(22, 'dfgty', 0, '100.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:14:30', NULL, 'active'),
(23, 'd7809', 0, '100.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:15:10', NULL, 'active'),
(24, 'dcbhjklo', 0, '56.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:23:57', NULL, 'active'),
(25, '789', 0, '89.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:30:30', NULL, 'active'),
(26, 'dsana12', 0, '67.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:37:24', NULL, 'active'),
(27, '67d', 0, '120.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:39:34', NULL, 'active'),
(29, 'djko', 0, '134.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:49:52', NULL, 'active'),
(31, 'hh90', 0, '789.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 08:53:33', NULL, 'active'),
(32, '80mk', 0, '78.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 09:04:20', NULL, 'active'),
(33, '890ki', 0, '890.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 09:07:45', NULL, 'active'),
(34, '90', 0, '45.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 09:09:52', NULL, 'active'),
(35, '90f', 0, '780.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 09:49:29', NULL, 'active'),
(36, '980k', 0, '90.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 09:51:36', NULL, 'active'),
(37, '90h', 0, '45.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 09:53:31', NULL, 'active'),
(38, '45', 59, '123.00', NULL, '25d55ad283aa400af464c76d713c07ad', '2017-05-16 11:15:07', NULL, 'active'),
(39, 'dkhn', 0, '89.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:23:49', NULL, 'active'),
(40, '13k', 0, '85.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:25:02', NULL, 'active'),
(42, 'dkjh', 54, '78.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:27:24', NULL, 'active'),
(44, 'oko', 52, '52.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:29:57', NULL, 'active'),
(47, 'jko', 0, '859.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:36:59', NULL, 'active'),
(48, '45ko', 51, '123.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:38:17', NULL, 'active'),
(49, 'ghty', 0, '780.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:39:52', NULL, 'active'),
(51, 'd789', 0, '890.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:43:29', NULL, 'active'),
(53, 'jkl7', 56, '741.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 11:48:25', NULL, 'active'),
(55, 'dfghdic', 0, '123.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:04:07', NULL, 'active'),
(56, '456kl', 49, '455.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:06:42', NULL, 'active'),
(58, 'disc09', 0, '45.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:11:07', NULL, 'active'),
(59, 'disc45', 14, '856.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:16:06', NULL, 'active'),
(60, 'discgh45', 0, '458.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:18:09', NULL, 'active'),
(61, 'dfg45', 0, '78.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:19:40', NULL, 'active'),
(62, 'dcjhk', 50, '456.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:28:35', NULL, 'active'),
(63, 'dvbn', 0, '459.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:31:29', NULL, 'active'),
(65, 'bn89', 0, '695.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-16 20:42:49', NULL, 'active'),
(66, '85k', 42, '458.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-17 20:50:25', NULL, 'active'),
(67, 'gh67', 13, '785.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-17 20:52:41', NULL, 'active'),
(68, 'gh9', 53, '789.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-17 20:59:23', NULL, 'active'),
(69, 'gh88', 63, '45.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-17 21:00:21', NULL, 'active'),
(70, 'ghkl', 50, '489.00', NULL, '25f9e794323b453885f5181f1b624d0b', '2017-05-17 21:02:53', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `mz_log_record`
--

CREATE TABLE `mz_log_record` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `response_info` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `type` enum('webservice','web','none') NOT NULL DEFAULT 'none',
  `addedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_log_record`
--

INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(1, 0, 0, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '[]', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:11:51'),
(2, 0, 0, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:13:47'),
(3, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:09'),
(4, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:15'),
(5, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:32'),
(6, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:33'),
(7, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:34'),
(8, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:35'),
(9, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:35'),
(10, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:36'),
(11, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:37'),
(12, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:38'),
(13, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:39'),
(14, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:40'),
(15, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:41'),
(16, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:42'),
(17, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:43'),
(18, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:43'),
(19, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:44'),
(20, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:44'),
(21, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:44'),
(22, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:44'),
(23, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:45'),
(24, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:45'),
(25, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:45'),
(26, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:46'),
(27, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter code.\"}', 'Please enter code.', 'failed', 'webservice', '2016-03-01 17:22:46'),
(28, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:40:04'),
(29, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:40:14'),
(30, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:41:14'),
(31, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:42:05'),
(32, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:42:32'),
(33, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:42:39'),
(34, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 17:43:10'),
(35, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-01 17:43:48'),
(36, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-01 17:44:09'),
(37, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-01 17:44:30'),
(38, 0, 0, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-01 17:45:03'),
(39, 0, 8004791897, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '{\"mobile_number\":\"8004791897\",\"otp_number\":\"6028\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 17:45:17'),
(40, 0, 8004791897, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '{\"mobile_number\":\"8004791897\",\"otp_number\":\"6028\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 17:45:33'),
(41, 0, 8004791897, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '{\"mobile_number\":\"8004791897\",\"otp_number\":\"6028\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 17:45:46'),
(42, 0, 8004791897, 'forgotpassword', 'http://192.168.1.159/yishan/dev/webservice/forgotpassword', '{\"mobile_number\":\"8004791897\",\"otp_number\":\"5688\"}', '{\"status\":\"success\",\"data\":{\"generated_code\":\"ZiMGdlOoPk\"},\"message\":\"Reset Password.\"}', 'Reset Password.', 'success', 'webservice', '2016-03-01 17:46:06'),
(43, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"generated_code\":\"ZiMGdlOoPk\",\"password\":\"12345678\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter otp number.\"}', 'Please enter otp number.', 'failed', 'webservice', '2016-03-01 17:46:25'),
(44, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"generated_code\":\"ZiMGdlOoPk\",\"password\":\"12345678\"}', '{\"status\":\"success\",\"data\":{\"generated_code\":\"kFQV6sjjcU\"},\"message\":\"Reset Password.\"}', 'Reset Password.', 'success', 'webservice', '2016-03-01 17:46:54'),
(45, 0, 8004791897, 'resetpassword', 'http://192.168.1.159/yishan/dev/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"generated_code\":\"ZiMGdlOoPk\",\"password\":\"12345678\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid code.\"}', 'Please enter valid code.', 'failed', 'webservice', '2016-03-01 17:49:08'),
(46, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2713\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 18:50:54'),
(47, 0, 8004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-01 18:51:01'),
(48, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":1418},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 18:52:58'),
(49, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5850},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 18:59:05'),
(50, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5605},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 19:03:44'),
(51, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4908},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 19:04:47'),
(52, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"4908\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"82\",\"name\":\"\",\"username\":\"ys_40656D5775C1E308383\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:05:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:05:04'),
(53, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"4908\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:11:16'),
(54, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"4908\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 19:14:45'),
(55, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"4908\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 19:16:07'),
(56, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"4908\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 19:18:00'),
(57, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":9611},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 19:18:53'),
(58, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"4908\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 19:18:53'),
(59, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"9611\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"83\",\"name\":\"\",\"username\":\"\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:21:35\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:21:47'),
(60, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"9611\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:23:16'),
(61, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"9611\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 19:29:11'),
(62, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5558},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 19:29:27'),
(63, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"84\",\"name\":\"\",\"username\":\"d\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:31:09\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:31:12'),
(64, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:31:22'),
(65, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"85\",\"name\":\"\",\"username\":\"d\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:31:32\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:31:35'),
(66, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:31:48'),
(67, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"86\",\"name\":\"\",\"username\":\"da\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:31:54\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:31:56'),
(68, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:32:30'),
(69, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"87\",\"name\":\"\",\"username\":\"da\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:32:38\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:32:39'),
(70, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:32:54'),
(71, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"88\",\"name\":\"\",\"username\":\"123\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:36:40\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:36:43'),
(72, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:36:53'),
(73, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"89\",\"name\":\"\",\"username\":\"123\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:37:01\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:37:04'),
(74, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-01 19:37:26'),
(75, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"5558\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 19:42:02'),
(76, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4163},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 19:42:22'),
(77, 0, 918004791897, 'send_otp', 'http://192.168.1.159/yishan/dev/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":2867},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-01 19:42:26'),
(78, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2867\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"90\",\"name\":\"\",\"username\":\"YS_8254756D580469D26813709\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-01 19:43:02\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-01 19:43:07'),
(79, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2867\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 20:10:56'),
(80, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2867\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 20:11:56'),
(81, 0, 8004791897, 'signup', 'http://192.168.1.159/yishan/dev/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2867\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-01 20:13:10'),
(82, 0, 918004791897, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5813},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 20:23:33'),
(83, 0, 18004791897, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"18004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:24:18'),
(84, 0, 9004791897, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"9004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-07 20:24:31'),
(85, 0, 4791897, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"04791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:24:49'),
(86, 0, 4791897, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"04791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:25:42'),
(87, 0, 47918, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"047918\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:26:14'),
(88, 0, 479189, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"0479189\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:26:19'),
(89, 0, 479189, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"0479189\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-07 20:33:56'),
(90, 0, 0, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"dddddddddddd\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:34:04'),
(91, 0, 11, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"11\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-07 20:34:09'),
(92, 0, 1, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"1\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:34:18'),
(93, 0, 11, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"11\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-07 20:34:29'),
(94, 0, 11, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"11\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:35:01'),
(95, 0, 11111, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"11111\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-07 20:35:06'),
(96, 0, 111111, 'send_otp', 'http://localhost/yishan/staging/webservice/send_otp', '{\"mobile_number\":\"111111\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is not registered.\"}', 'Mobile number is not registered.', 'failed', 'webservice', '2016-03-07 20:35:10'),
(97, 0, 917877999681, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"7877999681\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":1246},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 20:56:12'),
(98, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":1427},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 20:57:17'),
(99, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-07 21:00:27'),
(100, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-07 21:00:59'),
(101, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-07 21:01:08'),
(102, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-07 21:02:43'),
(103, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"5855\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-07 21:09:38'),
(104, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"5855\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-07 21:09:49'),
(105, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":3144},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 21:10:18'),
(106, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":9557},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 21:10:27'),
(107, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8376},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 21:10:40'),
(108, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"8376\"}', '{\"status\":\"success\",\"data\":{\"id\":\"92\",\"name\":\"\",\"username\":\"YS_72356DD7DF2A9634811\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-07 21:11:14\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-07 21:11:15'),
(109, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"8376\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-07 21:11:43'),
(110, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"8376\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-07 21:12:42'),
(111, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5471},\"message\":\"OTP Number.\"}', 'OTP Number.', 'success', 'webservice', '2016-03-07 21:14:38'),
(112, 0, 9936690997, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"country_code\":\"+91\",\"otp_number\":\"5471\"}', '{\"status\":\"success\",\"data\":{\"generated_code\":\"pCuR0VBi1Y\"},\"message\":\"Reset Password.\"}', 'Reset Password.', 'success', 'webservice', '2016-03-07 21:15:12'),
(113, 0, 9936690997, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"english\",\"country_code\":\"+91\",\"otp_number\":\"5471\"}', '{\"status\":\"success\",\"data\":{\"generated_code\":\"gmzCHhI6D9\"},\"message\":\"Reset Password.\"}', 'Reset Password.', 'success', 'webservice', '2016-03-07 21:15:31'),
(114, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":7554},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-07 21:27:21'),
(115, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-07 23:10:46'),
(116, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-07 23:10:47'),
(117, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8317},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-08 13:22:38'),
(118, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":7350},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-08 13:22:46'),
(119, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":1211},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-08 13:59:38'),
(120, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317\",\"otp_number\":\"1211\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"95\",\"name\":\"\",\"username\":\"YS_44656DE6A6C4E87C365\",\"fb_id_1\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_type\":\"\",\"created_on\":\"2016-03-08 14:00:12\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"shop_description_1\":\"\",\"cover_image\":\"\",\"website_url_1\":\"\",\"show_contact_1\":\"No\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-08 14:00:13'),
(121, 0, 9223372036854775807, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317555555555555555555555\",\"otp_number\":\"1211\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-08 14:00:33'),
(122, 0, 9190446633175, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"90446633175\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-08 14:18:32'),
(123, 0, 5, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"5\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-08 18:17:02'),
(124, 0, 58975, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"58975\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-08 18:17:15'),
(125, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-08 19:30:34');
INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(126, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-08 19:31:12'),
(127, 0, 9044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-08 19:33:29'),
(128, 0, 9044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-08 19:33:37'),
(129, 0, 9044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-08 19:33:43'),
(130, 0, 9044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-08 19:34:38'),
(131, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\",\"otp_number\":\"1211\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-08 19:35:22'),
(132, 0, 8004791897, 'resetpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/resetpassword', '{\"mobile_number\":\"8004791897\",\"generated_code\":\"ZiMGdlOoPk\",\"password\":\"12345678\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid code.\"}', 'Please enter valid code.', 'failed', 'webservice', '2016-03-08 20:07:47'),
(133, 0, 2356, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"2356\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-09 18:07:54'),
(134, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-10 12:53:25'),
(135, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"otp_number\":\"2867\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-10 13:28:34'),
(136, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"9292\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"Android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-10 14:12:38'),
(137, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"9292\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"Android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-10 14:13:03'),
(138, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4742},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 14:13:55'),
(139, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"4742\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"Android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"96\",\"name\":\"\",\"username\":\"YS_82556E110D64AC41251\",\"wechat_id\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_id\":\"0\",\"device_type\":\"Android\",\"created_on\":\"2016-03-10 14:14:46\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"1\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Hong_Kong\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-10 14:14:48'),
(140, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"4742\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"Android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-10 14:21:45'),
(141, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4560},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 14:21:51'),
(142, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"4560\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"Android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"97\",\"name\":\"\",\"username\":\"YS_28556E11286BDF6F438\",\"wechat_id\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_id\":\"0\",\"device_type\":\"Android\",\"created_on\":\"2016-03-10 14:21:58\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"1\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Hong_Kong\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-10 14:22:00'),
(143, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":3436},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 14:22:46'),
(144, 0, 8004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-10 14:22:51'),
(145, 0, 8004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-10 15:04:49'),
(146, 0, 8004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-10 15:04:54'),
(147, 0, 8004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-10 15:05:33'),
(148, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"97\",\"name\":\"\",\"username\":\"YS_28556E11286BDF6F438\",\"wechat_id\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"0\",\"device_type\":\"ssssssss122222222222\",\"created_on\":\"2016-03-10 14:21:58\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"1\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Shanghai\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-10 18:21:22'),
(149, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter device token.\"}', 'Please enter device token.', 'failed', 'webservice', '2016-03-10 18:21:55'),
(150, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter device token.\"}', 'Please enter device token.', 'failed', 'webservice', '2016-03-10 19:12:10'),
(151, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 19:26:49'),
(152, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 19:39:33'),
(153, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":6590},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 19:43:17'),
(154, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"\",\"device_type\":\"android\",\"otp_number\":\"6590\",\"app_version\":\"1.0\",\"gender\":\"m\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter device token.\"}', 'Please enter device token.', 'failed', 'webservice', '2016-03-10 19:43:57'),
(155, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 19:50:19'),
(156, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_type\":\"android\",\"otp_number\":\"6590\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"\",\"name\":\"PradeepKumar1992\",\"gender\":\"m\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-10 19:51:06'),
(157, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_type\":\"android\",\"otp_number\":\"6590\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"\",\"name\":\"PradeepKumar1992\",\"gender\":\"m\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-10 19:52:23'),
(158, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 19:55:50'),
(159, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 20:00:30'),
(160, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 20:08:32'),
(161, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":7432},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 20:08:45'),
(162, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_type\":\"android\",\"otp_number\":\"7432\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"\",\"name\":\"PradeepKumar1992\",\"gender\":\"m\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter device token.\"}', 'Please enter device token.', 'failed', 'webservice', '2016-03-10 20:09:04'),
(163, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 20:19:03'),
(164, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 20:59:35'),
(165, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:09:42'),
(166, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":6188},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 21:10:09'),
(167, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_type\":\"android\",\"otp_number\":\"6188\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"123\",\"name\":\"PradeepKumar1992\",\"gender\":\"m\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter device id.\"}', 'Please enter device id.', 'failed', 'webservice', '2016-03-10 21:10:32'),
(168, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:14:44'),
(169, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:17:11'),
(170, 0, 9936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-10 21:17:34'),
(171, 0, 9936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"You have reached OTP limit for today.\"}', 'You have reached OTP limit for today.', 'failed', 'webservice', '2016-03-10 21:17:56'),
(172, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4966},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 21:21:12'),
(173, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_type\":\"android\",\"otp_number\":\"4966\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"111111\",\"country_code\":\"+91\",\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"123\",\"name\":\"PradeepKumar1992\",\"gender\":\"m\"}', '{\"status\":\"success\",\"data\":{\"id\":\"98\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_27856E175089469E179\",\"wechat_id\":\"\",\"weibo_id\":\"2147483647\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:22:16\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-10 21:22:18'),
(174, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:23:53'),
(175, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:35:37'),
(176, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":9518},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-10 21:35:51'),
(177, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_type\":\"android\",\"otp_number\":\"9518\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"123456\",\"country_code\":\"+91\",\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"device_token\":\"123\",\"name\":\"PradeepKumar1992\",\"gender\":\"m\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-10 21:36:16'),
(178, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:36:33'),
(179, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:42:17'),
(180, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 21:43:09'),
(181, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"devise_id\":\"\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"wechat_id\":\"\",\"lang\":\"english\",\"password\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Shanghai\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-10 21:44:24'),
(182, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-10 21:48:33'),
(183, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"111111\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-10 22:37:30'),
(184, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-10 22:38:09'),
(185, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-10 22:38:28'),
(186, 0, 0, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"Phone Number\",\"otp_number\":\"Enter SMS Verification Code\",\"password\":\"Set A Password\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-11 15:33:45'),
(187, 0, 0, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"Phone Number\",\"otp_number\":\"Enter SMS Verification Code\",\"password\":\"Set A Password\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid mobile number.\"}', 'Please enter valid mobile number.', 'failed', 'webservice', '2016-03-11 16:23:09'),
(188, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4027},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-11 19:04:24'),
(189, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"password\":\"varun123\",\"mobile_number\":\"9044663317\",\"country_code\":\"+91\",\"otp_number\":\"4027\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-11 19:05:02'),
(190, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"pradeep@singsys.com\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-14 11:49:19'),
(191, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"pradeep@singsys.com\",\"password\":\"111111\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-14 11:49:30'),
(192, 0, 91973464679996, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"973464679996\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-14 12:21:43'),
(193, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Shanghai\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-14 12:22:22'),
(194, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-14 12:23:58'),
(195, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-14 12:32:33'),
(196, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"pradeep@singsys.com\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"qqqqqqq\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-14 12:35:47'),
(197, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"pradeep@singsys.com\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"qqqqqqq\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-14 12:36:14'),
(198, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-14 12:43:43'),
(199, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-16 15:23:51'),
(200, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-16 16:15:54'),
(201, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-16 16:27:35'),
(202, 0, 919044464261, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"9044464261\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-16 18:39:06'),
(203, 0, 919889541331, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"9889541331\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-16 18:40:45'),
(204, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-16 20:46:40'),
(205, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-16 21:54:02'),
(206, 99, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"99\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please select image.\"}', 'Please select image.', 'failed', 'webservice', '2016-03-16 22:03:10'),
(207, 99, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"99\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\",\"post_image\":[\"\"]}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please select image.\"}', 'Please select image.', 'failed', 'webservice', '2016-03-17 01:05:15'),
(208, 99, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"99\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-17 01:16:37'),
(209, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"pradeep@singsys.com\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-17 13:14:04'),
(210, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 13:14:52');
INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(211, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 14:35:51'),
(212, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 16:10:25'),
(213, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 16:56:00'),
(214, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 17:04:18'),
(215, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 18:30:58'),
(216, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 22:03:28'),
(217, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-17 22:28:36'),
(218, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-18 12:07:09'),
(219, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-18 12:53:10'),
(220, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-18 13:31:10'),
(221, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-18 14:09:22'),
(222, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-18 14:14:35'),
(223, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-18 14:16:39'),
(224, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-18 17:52:14'),
(225, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":2993},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-18 21:14:28'),
(226, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317\",\"otp_number\":\"2993\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-18 21:15:06'),
(227, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"95\",\"name\":\"user3\",\"username\":\"YS_44656DE6A6C4E87C365\",\"wechat_id\":\"\",\"weibo_id\":\"0\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-08 14:00:12\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-18 21:16:30'),
(228, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-18 22:06:17'),
(229, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 14:24:30'),
(230, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 15:03:21'),
(231, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 15:15:21'),
(232, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 17:50:38'),
(233, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 17:54:15'),
(234, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 18:03:28'),
(235, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-19 20:05:22'),
(236, 0, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter userid.\"}', 'Please enter userid.', 'failed', 'webservice', '2016-03-19 20:07:43'),
(237, 99, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"99\",\"caption\":\"#UberSilly nice  #MegaPlayful nice\",\"share_type\":\"Follwers\",\"tag_people\":\"[user1, user2]\",\"location\":\"X024(\\u4e03\\u5317\\u8def),\\u660c\\u5e73\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"null\",\"longitude\":\"null\",\"delete_after\":\"3\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-19 20:11:47'),
(238, 0, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-19 20:29:53'),
(239, 0, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-19 20:30:44'),
(240, 99, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"99\",\"caption\":\"\",\"share_type\":\"Follwers\",\"tag_people\":\"[]\",\"location\":\"183\\u53f7,\\u897f\\u76f4\\u95e8\\u5916\\u5927\\u8857,\\u6d77\\u6dc0\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"39.94419461062676\",\"longitude\":\"116.33711216949291\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-19 20:32:41'),
(241, 99, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"99\",\"caption\":\"#MegaPlayful nice #pk\",\"share_type\":\"Users\",\"tag_people\":\"[user1, user2, PradeepKumar1992]\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"4\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-19 20:54:17'),
(242, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-21 15:31:19'),
(243, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"success\",\"data\":{\"id\":\"99\",\"name\":\"PradeepKumar1992\",\"username\":\"YS_79256E1784F5C2A5108\",\"wechat_id\":\"\",\"weibo_id\":\"5853679876\",\"email\":\"\",\"gender\":\"Male\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"http:\\/\\/tp1.sinaimg.cn\\/5853679876\\/180\\/0\\/1\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-10 21:36:15\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-21 19:44:53'),
(244, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"\",\"country_code\":\"+86\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-21 19:48:46'),
(245, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"\",\"country_code\":\"+86\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-21 19:48:50'),
(246, 0, 919935927939, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9935927939\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-21 20:00:16'),
(247, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5314},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:00:42'),
(248, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"password\":\"123456\",\"mobile_number\":\"9044663317\",\"country_code\":\"+91\",\"otp_number\":\"5314\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-21 20:01:05'),
(249, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":6763},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:17:40'),
(250, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":3872},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:18:00'),
(251, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":9870},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:18:20'),
(252, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-21 20:20:41'),
(253, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-21 20:20:58'),
(254, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\",\"device_id\":\"\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5271},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:23:03'),
(255, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":6653},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:23:07'),
(256, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"5271\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\",\"name\":\"\",\"gender\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"100\",\"name\":\"\",\"username\":\"YS_40356EFE7B150D20906\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 20:23:13\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Shanghai\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-21 20:23:15'),
(257, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-21 20:41:41'),
(258, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":2746},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:43:02'),
(259, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"5271\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\",\"name\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-21 20:52:32'),
(260, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"5271\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\",\"name\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-21 20:54:21'),
(261, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\",\"device_id\":\"\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":9133},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:54:28'),
(262, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"9133\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\",\"name\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"101\",\"name\":\"\",\"username\":\"YS_71356EFEF0B857AB519\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 20:54:35\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Hong_Kong\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-21 20:54:37'),
(263, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"9133\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-21 20:56:50'),
(264, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\",\"device_id\":\"\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":2793},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:56:56'),
(265, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"2793\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"102\",\"name\":\"\",\"username\":\"YS_70456EFEFE4945C7492\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 20:58:12\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Shanghai\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-21 20:58:13'),
(266, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\",\"device_id\":\"\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":7465},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:58:39'),
(267, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"7465\",\"password\":\"123456\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"103\",\"name\":\"\",\"username\":\"YS_58656EFF005128D6846\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 20:58:45\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Hong_Kong\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-21 20:58:46'),
(268, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"7465\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-21 20:58:53'),
(269, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\",\"lang\":\"chinese\",\"device_id\":\"\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8027},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 20:59:11'),
(270, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"8027\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"104\",\"name\":\"\",\"username\":\"YS_41256EFF0249B674742\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 20:59:16\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Shanghai\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-21 20:59:17'),
(271, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4236},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-21 21:00:51'),
(272, 0, 9936690997, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"en\",\"password\":\"111111\",\"country_code\":\"+91\",\"otp_number\":\"4236\"}', '{\"status\":\"success\",\"data\":{\"id\":\"105\",\"name\":\"\",\"username\":\"YS_14356EFF0B0784E7189\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 21:01:36\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-21 21:01:39'),
(273, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"111111\"}', '{\"status\":\"success\",\"data\":{\"id\":\"105\",\"name\":\"\",\"username\":\"YS_14356EFF0B0784E7189\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 21:01:36\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-21 22:39:34'),
(274, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"111111\"}', '{\"status\":\"success\",\"data\":{\"id\":\"105\",\"name\":\"\",\"username\":\"YS_14356EFF0B0784E7189\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 21:01:36\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-22 00:06:21');
INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(275, 105, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"#UberSilly hi sameer\",\"share_type\":\"Follwers\",\"tag_people\":\"[user1]\",\"location\":\"\\u6765\\u5e7f\\u8425\\u897f\\u8def,\\u671d\\u9633\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"40.02514421487047\",\"longitude\":\"116.43199119745678\",\"delete_after\":\"4\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-22 00:12:21'),
(276, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-22 13:05:57'),
(277, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-22 13:06:15'),
(278, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-22 13:11:48'),
(279, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":2188},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-22 13:38:19'),
(280, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"password\":\"123456\",\"mobile_number\":\"9044663317\",\"country_code\":\"+91\",\"otp_number\":\"2188\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-22 13:39:03'),
(281, 105, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"\",\"share_type\":\"Users\",\"tag_people\":\"[]\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-22 13:40:00'),
(282, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"\",\"country_code\":\"+86\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-22 14:45:20'),
(283, 105, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice\",\"share_type\":\"Follwers\",\"tag_people\":\"[]\",\"location\":\"3\\u53f7,\\u4e1c\\u7164\\u5382\\u80e1\\u540c,\\u897f\\u57ce\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"39.94344091210509\",\"longitude\":\"116.39606796011276\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-22 17:55:46'),
(284, 105, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"\",\"share_type\":\"Follwers\",\"tag_people\":\"[]\",\"location\":\"\\u5927\\u5bb4\\u4e50\\u80e1\\u540c,\\u897f\\u57ce\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"39.91638520142937\",\"longitude\":\"116.3945049085254\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-22 21:28:28'),
(285, 105, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"\",\"share_type\":\"Follwers\",\"tag_people\":\"[]\",\"location\":\"15\\u53f7,\\u9752\\u4e91\\u80e1\\u540c,\\u4e1c\\u57ce\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"39.90254887463881\",\"longitude\":\"116.4109079671376\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-22 21:38:22'),
(286, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"111111\"}', '{\"status\":\"success\",\"data\":{\"id\":\"105\",\"name\":\"\",\"username\":\"YS_14356EFF0B0784E7189\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 21:01:36\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-22 21:40:53'),
(287, 0, 8004791897, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"8004791897\",\"otp_number\":\"9292\",\"password\":\"123456\",\"device_token\":\"2222wwwwwwwwwwww\",\"device_type\":\"android\",\"device_id\":\"ddddddd333333333\",\"app_version\":\"1\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"image_name\":\"\",\"name\":\"\",\"gender\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-22 21:48:31'),
(288, 105, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"\",\"share_type\":\"Follwers\",\"tag_people\":\"[]\",\"location\":\"\\u5c0f\\u7ea2\\u95e8\\u8def,\\u671d\\u9633\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"39.84358148978541\",\"longitude\":\"116.46245273730013\",\"delete_after\":\"5\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-22 21:51:39'),
(289, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"111111\"}', '{\"status\":\"success\",\"data\":{\"id\":\"105\",\"name\":\"\",\"username\":\"YS_14356EFF0B0784E7189\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 21:01:36\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-22 21:53:11'),
(290, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '[]', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'failed', 'webservice', '2016-03-23 14:27:03'),
(291, 0, 0, 'share_post_photo', 'http://103.15.232.35/singsys-stg3/yishan/post/share_post_photo', '[\"107\"]', '{\"status\":\"false\",\"data\":null,\"message\":\"Please enter user id\"}', 'Please enter user id', 'false', 'web', '2016-03-23 15:32:24'),
(292, 107, 0, 'share_post_photo', 'http://103.15.232.35/singsys-stg3/yishan/post/share_post_photo', '[\"107\"]', '{\"status\":\"success\",\"data\":null,\"message\":\"Post shared successfully.\"}', 'Post shared successfully.', 'success', 'web', '2016-03-23 15:32:51'),
(293, 0, 919889823088, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"9889823088\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"SMS not sent.\"}', 'SMS not sent.', 'failed', 'webservice', '2016-03-23 23:41:19'),
(294, 0, 918004791897, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"8004791897\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8343},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-25 12:35:15'),
(295, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":2762},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-25 12:35:32'),
(296, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9044663317\",\"lang\":\"en\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"2762\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-25 12:36:08'),
(297, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9044663317\",\"lang\":\"en\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"2762\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-25 12:36:15'),
(298, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"5853679876\",\"mobile_number\":\"\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-25 12:47:02'),
(299, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9044663317\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8723},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-25 13:07:48'),
(300, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9044663317\",\"lang\":\"en\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"8723\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-25 13:08:12'),
(301, 0, 9044663317, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"device_id\":\"\",\"mobile_number\":\"9044663317\",\"lang\":\"en\",\"password\":\"123456\",\"country_code\":\"+91\",\"otp_number\":\"8723\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Mobile number is already registered.\"}', 'Mobile number is already registered.', 'failed', 'webservice', '2016-03-25 13:08:16'),
(302, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9044663317\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:08:39'),
(303, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9044663317\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:32:33'),
(304, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:35:06'),
(305, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9044663317\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:37:36'),
(306, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:45:16'),
(307, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"107\",\"name\":\"pushpendrasingh\",\"username\":\"YS_65656F2426D2B38C148\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-23 15:14:53\",\"generated_code\":\"9UwbzCqPHu\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:46:16'),
(308, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"107\",\"name\":\"pushpendrasingh\",\"username\":\"YS_65656F2426D2B38C148\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-23 15:14:53\",\"generated_code\":\"9UwbzCqPHu\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 13:46:43'),
(309, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"106\",\"caption\":\"\",\"share_type\":\"Users\",\"tag_people\":\"[Bharat, YS_90356F4A79E6CE7A524]\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-25 13:53:21'),
(310, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:04:15'),
(311, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"106\",\"caption\":\"\",\"share_type\":\"Users\",\"tag_people\":\"[user2, user1, pushpendrasingh]\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"4\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-25 14:07:45'),
(312, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:09:17'),
(313, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:11:04'),
(314, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:19:46'),
(315, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:24:47'),
(316, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"107\",\"name\":\"pushpendrasingh\",\"username\":\"YS_65656F2426D2B38C148\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-23 15:14:53\",\"generated_code\":\"9UwbzCqPHu\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:25:34'),
(317, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:29:33'),
(318, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-25 14:33:55'),
(319, 0, 904466317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"904466317\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-25 14:38:38'),
(320, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9044663317\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 14:38:48'),
(321, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Only jpg,jpeg,png and gif image is allowed.\"}', 'Only jpg,jpeg,png and gif image is allowed.', 'failed', 'webservice', '2016-03-25 19:40:24'),
(322, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Only jpg,jpeg,png and gif image is allowed.\"}', 'Only jpg,jpeg,png and gif image is allowed.', 'failed', 'webservice', '2016-03-25 19:55:09'),
(323, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Only jpg,jpeg,png and gif image is allowed.\"}', 'Only jpg,jpeg,png and gif image is allowed.', 'failed', 'webservice', '2016-03-25 19:59:04'),
(324, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Only jpg,jpeg,png and gif image is allowed.\"}', 'Only jpg,jpeg,png and gif image is allowed.', 'failed', 'webservice', '2016-03-25 20:00:04'),
(325, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-25 20:06:13'),
(326, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-25 20:06:47'),
(327, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"107\",\"name\":\"pushpendrasingh\",\"username\":\"YS_65656F2426D2B38C148\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-23 15:14:53\",\"generated_code\":\"9UwbzCqPHu\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 20:07:03'),
(328, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"107\",\"name\":\"pushpendrasingh\",\"username\":\"YS_65656F2426D2B38C148\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-23 15:14:53\",\"generated_code\":\"9UwbzCqPHu\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 20:07:14'),
(329, 107, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"107\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-25 20:09:50'),
(330, 107, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"107\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-25 20:11:12'),
(331, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 20:23:24'),
(332, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"106\",\"caption\":\"\",\"share_type\":\"Follwers\",\"tag_people\":\"[user1, user2]\",\"location\":\"\\u9a6c\\u5317\\u8def,\\u5927\\u5174\\u533a,\\u5317\\u4eac\\u5e02,\\u4e2d\\u56fd\",\"latitude\":\"39.65331211946237\",\"longitude\":\"116.27171552836653\",\"delete_after\":\"2\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-25 20:55:03'),
(333, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"106\",\"caption\":\"\",\"share_type\":\"Users\",\"tag_people\":\"[YS_14356EFF0B0784E7189, pushpendrasingh, YS_90356F4A79E6CE7A524, Bharat]\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"Infinte\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-25 20:55:20'),
(334, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-25 21:07:05'),
(335, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"1234567\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-25 21:07:13'),
(336, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9936690997\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-25 21:07:35'),
(337, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-25 21:08:26'),
(338, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Ffsf\",\"delete_after\":\"3 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-27 15:22:41'),
(339, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:23:36'),
(340, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"18\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"12.45666\",\"longitude\":\"23.45678\",\"delete_after\":\"\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-27 15:27:43'),
(341, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:28:39'),
(342, 0, 9044336617, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044336617\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-27 15:31:21'),
(343, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:31:34'),
(344, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:40:37');
INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(345, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:43:31'),
(346, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:46:05'),
(347, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:49:06'),
(348, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 15:55:56'),
(349, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 16:00:09'),
(350, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"106\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-27 16:04:10'),
(351, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"106\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-27 16:06:20'),
(352, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"3 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-27 17:50:44'),
(353, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-27 20:02:37'),
(354, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption...\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Users\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"106\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-27 20:05:43'),
(355, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"Add Location\",\"longitude\":\"23.45678\",\"share_type\":\"Users\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-27 21:07:42'),
(356, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 00:41:15'),
(357, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Lorem ipsum \",\"delete_after\":\"10 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-28 12:25:55'),
(358, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Lorem ipsum \",\"delete_after\":\"10 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-28 12:26:00'),
(359, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Lorem ipsum \",\"delete_after\":\"10 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-28 12:26:28'),
(360, 18, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"Infinite\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"18\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-28 12:42:07'),
(361, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"113456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 12:45:19'),
(362, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 12:45:30'),
(363, 106, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"8 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"106\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-28 12:47:04'),
(364, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"7388891758\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 13:09:28'),
(365, 0, 8044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8044663317\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 13:23:06'),
(366, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 13:23:20'),
(367, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-28 13:26:07'),
(368, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-28 13:26:13'),
(369, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 13:33:05'),
(370, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"111111\"}', '{\"status\":\"success\",\"data\":{\"id\":\"105\",\"name\":\"\",\"username\":\"YS_14356EFF0B0784E7189\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"96e79218965eb72c92a549dd5a330112\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9936690997\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-21 21:01:36\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 13:35:58'),
(371, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 13:42:26'),
(372, 0, 0, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"\",\"country_code\":\"+91\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter mobile number.\"}', 'Please enter mobile number.', 'failed', 'webservice', '2016-03-28 13:48:22'),
(373, 0, 917388891758, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4752},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 14:13:22'),
(374, 0, 917388891758, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":1281},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 14:15:39'),
(375, 0, 7388891758, 'signup', 'http://103.15.232.35/singsys-stg3/yishan/webservice/signup', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\",\"otp_number\":\"1281\",\"password\":\"123456\",\"device_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"113\",\"name\":\"\",\"username\":\"YS_53056F8CC586EAB9957\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"duration\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"7388891758\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 14:16:56\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Thanks for sign up with us.\"}', 'Thanks for sign up with us.', 'success', 'webservice', '2016-03-28 14:16:57'),
(376, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"7388891758\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"113\",\"name\":\"\",\"username\":\"YS_53056F8CC586EAB9957\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"duration\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"7388891758\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 14:16:56\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 14:17:54'),
(377, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 14:19:27'),
(378, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"7388891758\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"113\",\"name\":\"\",\"username\":\"YS_53056F8CC586EAB9957\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"duration\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"7388891758\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 14:16:56\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 14:27:21'),
(379, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 14:32:13'),
(380, 0, 917388891758, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":4598},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 14:51:42'),
(381, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 14:52:06'),
(382, 0, 917388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\",\"otp_number\":\"4598\",\"device_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Password has been reset and sent on your mobile number.\"}', 'Password has been reset and sent on your mobile number.', 'success', 'webservice', '2016-03-28 14:52:10'),
(383, 0, 7388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\",\"otp_number\":\"4598\",\"device_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-28 14:53:01'),
(384, 0, 917388891758, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"7388891758\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5054},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 14:54:06'),
(385, 0, 917388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"mobile_number\":\"7388891758\",\"country_code\":\"+91\",\"otp_number\":\"5054\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Password has been reset and sent on your mobile number.\"}', 'Password has been reset and sent on your mobile number.', 'success', 'webservice', '2016-03-28 14:54:25'),
(386, 0, 7388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"mobile_number\":\"7388891758\",\"country_code\":\"+91\",\"otp_number\":\"5054\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-28 14:54:40'),
(387, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 14:57:59'),
(388, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:00:56'),
(389, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"fehrbggfg\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:02:25'),
(390, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dddddddddd\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:03:59'),
(391, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:06:35'),
(392, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:07:29'),
(393, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"ddddddd\",\"password\":\"123456\",\"device_token\":\"\",\"device_type\":\"android\",\"device_id\":\"\",\"app_version\":\"1.0\",\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:08:32'),
(394, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:12:20'),
(395, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"adfsdsfasf\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:12:44'),
(396, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"111111\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 15:13:35'),
(397, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dddd\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:13:49'),
(398, 0, 919044663317, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":1600},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 15:19:12'),
(399, 0, 919044663317, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"country_code\":\"+91\",\"mobile_number\":\"9044663317\",\"otp_number\":\"1600\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Password has been reset and sent on your mobile number.\"}', 'Password has been reset and sent on your mobile number.', 'success', 'webservice', '2016-03-28 15:19:35'),
(400, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"rwwwtw\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:20:11'),
(401, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 15:22:38'),
(402, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 15:22:47'),
(403, 0, 9044663317, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"9044663317\",\"password\":\"7mOk86Gf3z\"}', '{\"status\":\"success\",\"data\":{\"id\":\"106\",\"name\":\"\",\"username\":\"YS_21456F0DA74A4792582\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"35fbcd651affac48f62ebd7bd490feba\",\"image_name\":\"\",\"dob\":\"0000-00-00\",\"phone_number\":\"9044663317\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"+91\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-22 13:39:00\",\"generated_code\":\"Sjp25WnSTY\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 15:23:18'),
(404, 109, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"user_id\":\"109\",\"caption\":\"Gdbb\",\"share_type\":\"Users\",\"tag_people\":\"[YS_48956F8B473B67F0606, YS_48956F8B473B67F0606, YS_90356F4A79E6CE7A524, YS_21456F0DA74A4792582]\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"4\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-28 15:27:55'),
(405, 0, 917388891758, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":5135},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 16:17:42'),
(406, 0, 917388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\",\"otp_number\":\"5135\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Password has been reset and sent on your mobile number.\"}', 'Password has been reset and sent on your mobile number.', 'success', 'webservice', '2016-03-28 16:18:03'),
(407, 0, 7388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\",\"otp_number\":\"5135\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid otp number.\"}', 'Please enter valid otp number.', 'failed', 'webservice', '2016-03-28 16:18:24'),
(408, 0, 917388891758, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8849},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 16:19:14'),
(409, 0, 917388891758, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"country_code\":\"+91\",\"mobile_number\":\"7388891758\",\"otp_number\":\"8849\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Password has been reset and sent on your mobile number.\"}', 'Password has been reset and sent on your mobile number.', 'success', 'webservice', '2016-03-28 16:19:44'),
(410, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dsads\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:20:57');
INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(411, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"ddddd\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:21:03'),
(412, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"fwsf\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:23:09'),
(413, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"sdadas\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:24:55'),
(414, 109, 0, 'postphoto', 'http://103.15.232.35/singsys-stg3/yishan/webservice/postphoto', '{\"caption\":\"Write a caption..\",\"delete_after\":\"3 Seconds\",\"latitude\":\"12.45666\",\"location\":\"\\u5317\\u4eac\\u5e02\",\"longitude\":\"23.45678\",\"share_type\":\"Followers\",\"tag_people\":\"Sarthak,varun,pradeep\",\"user_id\":\"109\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-28 16:24:56'),
(415, 0, 919936690997, 'send_otp', 'http://103.15.232.35/singsys-stg3/yishan/webservice/send_otp', '{\"mobile_number\":\"9936690997\",\"country_code\":\"+91\"}', '{\"status\":\"success\",\"data\":{\"otp_no\":8617},\"message\":\"Verification code is sent on your mobile number.\"}', 'Verification code is sent on your mobile number.', 'success', 'webservice', '2016-03-28 16:30:10'),
(416, 0, 919936690997, 'forgotpassword', 'http://103.15.232.35/singsys-stg3/yishan/webservice/forgotpassword', '{\"device_id\":\"\",\"mobile_number\":\"9936690997\",\"lang\":\"en\",\"country_code\":\"+91\",\"otp_number\":\"8617\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Password has been reset and sent on your mobile number.\"}', 'Password has been reset and sent on your mobile number.', 'success', 'webservice', '2016-03-28 16:30:32'),
(417, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"7388891758\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:43:57'),
(418, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"7388891758\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:44:32'),
(419, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"7388891758\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:44:49'),
(420, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"ddddd\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:45:05'),
(421, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dsads\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:48:24'),
(422, 0, 223333, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"223333\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"yuuuuu\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:48:59'),
(423, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"dddddd\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"yuuuuu\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:49:16'),
(424, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"dddddd\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:49:39'),
(425, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"yfghdf\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:52:05'),
(426, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dasdas\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:54:18'),
(427, 0, 8004791897, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"8004791897\",\"password\":\"12345611\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:56:20'),
(428, 0, 80047918971, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"12345611\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:56:28'),
(429, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"\",\"password\":\"1\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter Username\\/Mobile number.\"}', 'Please enter Username/Mobile number.', 'failed', 'webservice', '2016-03-28 16:56:37'),
(430, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"\",\"password\":\"\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"android\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter Username\\/Mobile number.\"}', 'Please enter Username/Mobile number.', 'failed', 'webservice', '2016-03-28 16:56:43'),
(431, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dsadsd\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:57:52'),
(432, 0, 9936690997, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"9936690997\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 16:58:49'),
(433, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"dddddd\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 16:59:04'),
(434, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"dsasdsa\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 17:02:25'),
(435, 0, 0, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"weibo_id\":\"\",\"mobile_number\":\"dddddd\",\"device_token\":\"\",\"device_type\":\"android\",\"app_version\":\"1.0\",\"device_id\":\"\",\"wechat_id\":\"\",\"lang\":\"en\",\"password\":\"123456\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Calcutta\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 17:02:42'),
(436, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"7388891758\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 17:50:53'),
(437, 0, 7388891758, 'login', 'http://103.15.232.35/singsys-stg3/yishan/webservice/login', '{\"mobile_number\":\"7388891758\",\"password\":\"123456\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 17:50:58'),
(438, 0, 0, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 17:57:50'),
(439, 0, 0, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 18:02:11'),
(440, 0, 0, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"109\",\"name\":\"Bharat\",\"username\":\"YS_45956F4AA94719B8656\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"bharatraj@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"0000-00-00 00:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"0\",\"address\":\"\",\"country_id\":\"0\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-25 11:03:48\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 18:02:33'),
(441, 0, 0, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"dddddd\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Invalid credentials.\"}', 'Invalid credentials.', 'failed', 'webservice', '2016-03-28 18:04:54'),
(442, 0, 80047918971, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:08:58'),
(443, 0, 80047918971, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:09:36'),
(444, 0, 80047918971, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:09:57'),
(445, 0, 80047918971, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:10:01'),
(446, 0, 80047918971, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:10:13'),
(447, 0, 80047918971, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"80047918971\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:10:39'),
(448, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"114\",\"name\":\"Pushpendra\",\"username\":\"ssssssssss\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"duration\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"2016-03-27 03:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897111\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 19:46:05\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 20:11:35'),
(449, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"114\",\"name\":\"Pushpendra\",\"username\":\"ssssssssss\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"duration\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"2016-03-27 03:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897111\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 19:46:05\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 20:11:46'),
(450, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"114\",\"name\":\"Pushpendra\",\"username\":\"ssssssssss\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"duration\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"2016-03-27 03:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897111\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 19:46:05\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 20:12:46'),
(451, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:13:15'),
(452, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:13:27'),
(453, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:14:03'),
(454, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:14:15'),
(455, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please activate your account.\"}', 'Please activate your account.', 'failed', 'webservice', '2016-03-28 20:14:50'),
(456, 0, 8004791897111, 'login', 'http://127.0.0.1/yishan/staging/webservice/login', '{\"mobile_number\":\"8004791897111\",\"password\":\"123456\",\"device_token\":\"dddddddddddddddqq12sdsfsf2424242rsfsfsfsf\",\"device_id\":\"rrrrrrrrrrrr4444444\",\"device_type\":\"ssssssss122222222222\",\"app_version\":1,\"weibo_id\":\"\",\"wechat_id\":\"\",\"lang\":\"chinese\"}', '{\"status\":\"success\",\"data\":{\"id\":\"114\",\"name\":\"Pushpendra\",\"username\":\"ssssssssss\",\"wechat_id\":\"\",\"weibo_id\":\"\",\"email\":\"pushpendrasingh@singsys.com\",\"gender\":\"\",\"status\":\"Active\",\"block_status\":\"\",\"block_startdate\":\"0000-00-00 00:00:00\",\"block_enddate\":\"2016-03-27 03:00:00\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"image_name\":\"\",\"dob\":\"1970-01-01\",\"phone_number\":\"8004791897111\",\"address\":\"\",\"country_id\":\"88\",\"country_code\":\"\",\"device_token\":\"\",\"device_id\":\"0\",\"device_type\":\"\",\"created_on\":\"2016-03-28 19:46:05\",\"generated_code\":\"\",\"account_type\":\"consumer\",\"activate_code\":\"\",\"app_version\":\"\",\"is_login\":\"1\",\"notifications\":\"On\",\"email_alert\":\"On\",\"cover_image\":\"\",\"time_zone\":\"Asia\\/Singapore\",\"active_days\":\"0\"},\"message\":\"Login successfully.\"}', 'Login successfully.', 'success', 'webservice', '2016-03-28 20:16:29'),
(457, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/2016032913224656fa1126efab7.jpg&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/2016032913224656fa1126efab7.jpg&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=&pic=http://127.0.0.1/yishan/staging/uploads/post/photo/2016032913224656fa1126efab7.jpg&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-03-29 13:23:04'),
(458, 1811, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"1811\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid userid.\"}', 'Please enter valid userid.', 'failed', 'webservice', '2016-03-29 14:18:43'),
(459, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-29 14:20:36'),
(460, 0, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"false\",\"islogin\":0,\"weibo_link\":null,\"data\":null,\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'false', 'web', '2016-03-29 17:14:29'),
(461, 0, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"false\",\"islogin\":0,\"weibo_link\":null,\"data\":null,\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'false', 'web', '2016-03-29 17:15:48'),
(462, 0, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"false\",\"islogin\":0,\"weibo_link\":null,\"data\":null,\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'false', 'web', '2016-03-29 17:18:42'),
(463, 0, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"false\",\"islogin\":0,\"weibo_link\":null,\"data\":null,\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'false', 'web', '2016-03-29 17:19:32'),
(464, 0, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"false\",\"islogin\":0,\"weibo_link\":null,\"data\":null,\"message\":\"Invalid Operation\"}', 'Invalid Operation', 'false', 'web', '2016-03-29 17:36:14'),
(465, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/145925133556fa6887de046_Screen-Shot-1938-01-08-at-17-08-38-2.png&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/145925133556fa6887de046_Screen-Shot-1938-01-08-at-17-08-38-2.png&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=&pic=http://127.0.0.1/yishan/staging/uploads/post/photo/145925133556fa6887de046_Screen-Shot-1938-01-08-at-17-08-38-2.png&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-03-29 19:36:16'),
(466, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/145925506156fa77151d9f3_Alms_Blade.png&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/145925506156fa77151d9f3_Alms_Blade.png&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=&pic=http://127.0.0.1/yishan/staging/uploads/post/photo/145925506156fa77151d9f3_Alms_Blade.png&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-03-29 20:39:40'),
(467, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/145925843256fa8440c8db3_44587d963e1b2c4ffc0a400b532821c7ddee1a9d_m.jpg&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/145925843256fa8440c8db3_44587d963e1b2c4ffc0a400b532821c7ddee1a9d_m.jpg&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=&pic=http://127.0.0.1/yishan/staging/uploads/post/photo/145925843256fa8440c8db3_44587d963e1b2c4ffc0a400b532821c7ddee1a9d_m.jpg&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-03-29 21:36:35'),
(468, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-30 19:46:38'),
(469, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-30 19:50:16'),
(470, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-30 19:51:17'),
(471, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-30 20:22:07'),
(472, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-31 15:06:55'),
(473, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-31 15:12:46'),
(474, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-31 15:14:09'),
(475, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-31 15:14:36'),
(476, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-31 15:23:46'),
(477, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:24:39'),
(478, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:26:37'),
(479, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:28:38');
INSERT INTO `mz_log_record` (`id`, `user_id`, `mobile`, `action`, `url`, `request`, `response`, `response_info`, `status`, `type`, `addedon`) VALUES
(480, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:29:03'),
(481, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:29:25'),
(482, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:29:51'),
(483, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:30:02'),
(484, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:30:50'),
(485, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-03-31 15:31:20'),
(486, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Users\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Video has been posted successfully.\"}', 'Video has been posted successfully.', 'success', 'webservice', '2016-03-31 18:19:02'),
(487, 105, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice pic #me #MegaPlayful #violet check\",\"share_type\":\"Users\",\"tag_people\":\"YS_93856DDC32518756833, keshav123\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"5\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please select image.\"}', 'Please select image.', 'failed', 'webservice', '2016-04-06 18:03:05'),
(488, 105, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice pic #me #MegaPlayful #violet check\",\"share_type\":\"Users\",\"tag_people\":\"YS_93856DDC32518756833, keshav123\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"5\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-06 18:03:39'),
(489, 105, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice pic #me #MegaPlayful #violet check\",\"share_type\":\"Users\",\"tag_people\":\"YS_93856DDC32518756833, keshav123\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"5\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-06 18:04:46'),
(490, 105, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice pic #me #MegaPlayful #violet check\",\"share_type\":\"Users\",\"tag_people\":\"YS_93856DDC32518756833, keshav123\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"5\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-06 18:05:55'),
(491, 105, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice pic #me #MegaPlayful #violet check\",\"share_type\":\"Users\",\"tag_people\":\"YS_93856DDC32518756833, keshav123\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"5\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-06 18:07:29'),
(492, 105, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"105\",\"caption\":\"Nice pic #me #MegaPlayful #violet check\",\"share_type\":\"Users\",\"tag_people\":\"YS_93856DDC32518756833, keshav123\",\"location\":\"\",\"latitude\":\"\",\"longitude\":\"\",\"delete_after\":\"5\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-06 18:08:43'),
(493, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"2\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"\",\"data\":[],\"message\":\"Please enter valid post id.\"}', 'Please enter valid post id.', 'failed', 'webservice', '2016-04-06 20:46:16'),
(494, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":0},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:47:09'),
(495, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":0},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:47:34'),
(496, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":0},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:47:56'),
(497, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"4\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:06'),
(498, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"5\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:10'),
(499, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"6\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:12'),
(500, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"7\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:13'),
(501, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"8\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:14'),
(502, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"9\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:37'),
(503, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"10\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:39'),
(504, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"11\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:40'),
(505, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"12\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:48:41'),
(506, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:49:08'),
(507, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:51:29'),
(508, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:51:30'),
(509, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:51:31'),
(510, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:51:32'),
(511, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:51:34'),
(512, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Laike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 20:51:38'),
(513, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Laike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 20:51:40'),
(514, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Laike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 20:51:47'),
(515, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Laike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 20:51:49'),
(516, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Laike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"13\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 20:51:51'),
(517, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Laike\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:52:07'),
(518, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:52:29'),
(519, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:53:15'),
(520, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:53:18'),
(521, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:53:21'),
(522, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:54:14'),
(523, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:54:17'),
(524, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:54:26'),
(525, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:54:30'),
(526, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:55:25'),
(527, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:55:32'),
(528, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 20:56:16'),
(529, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:56:19'),
(530, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:56:23'),
(531, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 20:56:24'),
(532, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"sLike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 20:56:27'),
(533, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"sLike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"0\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 21:21:00'),
(534, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"sLike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"0\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 21:21:14'),
(535, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 21:21:29'),
(536, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"success\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"2\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-06 21:21:35'),
(537, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"79\",\"like_status\":\"sLike\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Dislike\",\"data\":{\"like_count\":\"1\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'failed', 'webservice', '2016-04-06 21:21:38'),
(538, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"79\",\"like_status\":\"Like\",\"lang\":\"\"}', '{\"status\":\"failed\",\"like_status\":\"Like\",\"data\":{\"like_count\":\"2\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'failed', 'webservice', '2016-04-06 21:21:44'),
(539, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"2\",\"comment\":\"test comment\",\"lang\":\"english\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter valid post id.\"}', 'Please enter valid post id.', 'failed', 'webservice', '2016-04-08 11:33:26'),
(540, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"84\",\"comment\":\"test comment\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":{\"comment_id\":1},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-08 11:33:47'),
(541, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"84\",\"comment\":\"test comment\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":{\"comment_id\":2},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-08 11:37:46'),
(542, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"84\",\"comment\":\"test comment\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 11:49:10'),
(543, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 12:01:24'),
(544, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 2\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 13:42:50'),
(545, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"lang\":\"english\"}', '{\"status\":\"failed\",\"data\":[],\"message\":\"Please enter like status.\"}', 'Please enter like status.', 'failed', 'webservice', '2016-04-08 13:46:11'),
(546, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"like_status\":\"Like\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":{\"like_count\":\"1\",\"like_status\":\"Like\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-08 13:46:31'),
(547, 105, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"105\",\"post_id\":\"59\",\"like_status\":\"Like\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":{\"like_count\":\"2\",\"like_status\":\"Like\"},\"message\":\"Post has been liked successfully.\"}', 'Post has been liked successfully.', 'success', 'webservice', '2016-04-08 13:47:18'),
(548, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"like_status\":\"Likea\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":{\"like_count\":\"1\",\"like_status\":\"Dislike\"},\"message\":\"Post has been disliked successfully.\"}', 'Post has been disliked successfully.', 'success', 'webservice', '2016-04-08 13:47:45'),
(549, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 2\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:19'),
(550, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 3\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:23'),
(551, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 4\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:27'),
(552, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 5\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:31'),
(553, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 6\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:34'),
(554, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 7\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:37'),
(555, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 8\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:41'),
(556, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 9\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:44'),
(557, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 10\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:50'),
(558, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 11\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 15:24:54'),
(559, 121, 0, 'addlike', 'http://127.0.0.1/yishan/staging/webservice/addlike', '{\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 11\",\"lang\":\"english\"}', '{\"status\":\"success\",\"data\":{\"id_comment\":\"16\",\"user_id\":\"121\",\"post_id\":\"59\",\"comment\":\"test comment 11\",\"addedon\":\"2016-04-08 18:09:35\",\"user_name\":\"YS_25356FA0D5685AB0409\",\"username\":\"YS_25356FA0D5685AB0409\",\"user_image\":\"ssssssss.png\",\"agotime\":\"1 seconds ago\"},\"message\":\"Comment has been posted successfully.\"}', 'Comment has been posted successfully.', 'success', 'webservice', '2016-04-08 18:09:36'),
(560, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=&pic=http://127.0.0.1/yishan/staging/uploads/post/video/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:21:14'),
(561, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\",\"94\",\"105\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=ssssss #test&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=ssssss #test&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=ssssss #test&pic=http://127.0.0.1/yishan/staging/uploads/post/video/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:23:04'),
(562, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\",\"94\",\"105\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=ssssss #test&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=ssssss #test&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=ssssss #test&pic=http://127.0.0.1/yishan/staging/uploads/post/video/146011428057079368c62c1_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:24:25'),
(563, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=wwwwwww&pic=http://127.0.0.1/yishan/staging/uploads/post/video/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:25:31'),
(564, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=wwwwwww&pic=http://127.0.0.1/yishan/staging/uploads/post/video/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:25:42'),
(565, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=wwwwwww&pic=http://127.0.0.1/yishan/staging/uploads/post/video/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:26:34'),
(566, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=wwwwwww&pic=http://127.0.0.1/yishan/staging/uploads/post/video/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:27:15'),
(567, 121, 0, 'share_post_video', 'http://127.0.0.1/yishan/staging/post/share_post_video', '[\"93\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=wwwwwww&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/video\\/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=wwwwwww&pic=http://127.0.0.1/yishan/staging/uploads/post/video/14601147095707951589570_SampleVideo_1080x720_1mb.mp4&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-08 19:29:11'),
(568, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Followers\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-11 17:11:21'),
(569, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"POst 1 I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Followers\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-11 17:12:50'),
(570, 121, 0, 'share_post_photo', 'http://127.0.0.1/yishan/staging/post/share_post_photo', '[\"93\"]', '{\"status\":\"success\",\"islogin\":\"121\",\"weibo_link\":\"http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=test caption&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/20160411190242570b8452aa556.jpg&ralateUid=&language=en_in\",\"data\":null,\"message\":\"Post shared successfully. <a href=\'http:\\/\\/service.weibo.com\\/share\\/share.php?url=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/&appkey=&title=test caption&pic=http:\\/\\/127.0.0.1\\/yishan\\/staging\\/uploads\\/post\\/photo\\/20160411190242570b8452aa556.jpg&ralateUid=&language=en_in\' target=\'_blank\' >Click Here <\\/a> to Share in Weibo.\"}', 'Post shared successfully. <a href=\'http://service.weibo.com/share/share.php?url=http://127.0.0.1/yishan/staging/&appkey=&title=test caption&pic=http://127.0.0.1/yishan/staging/uploads/post/photo/20160411190242570b8452aa556.jpg&ralateUid=&language=en_in\' target=\'_blank\' >Click Here </a> to Share in Weibo.', 'success', 'web', '2016-04-11 19:16:37'),
(571, 121, 0, 'postphoto', 'http://127.0.0.1/yishan/staging/webservice/postphoto', '{\"user_id\":\"121\",\"caption\":\"POst 1 I am #UberSilly and #MegaPlayful online\",\"share_type\":\"Followers\",\"tag_people\":\"ys_40656D5775C1E308383,YS_16056E10745A0DD5931,YS_16056E10745A0DD5931\",\"location\":\"Lucknow\",\"latitude\":\"1222.45655\",\"longitude\":\"333.5677\",\"delete_after\":\"11\"}', '{\"status\":\"success\",\"data\":[],\"message\":\"Photo has been posted successfully.\"}', 'Photo has been posted successfully.', 'success', 'webservice', '2016-04-11 19:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `mz_message_config`
--

CREATE TABLE `mz_message_config` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `variables` text NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Disable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_message_config`
--

INSERT INTO `mz_message_config` (`id`, `title`, `subject`, `content`, `variables`, `status`) VALUES
(1, 'contact_us_reply', 'Contact Us Reply', '<p>Hello {name}!</p>\r\n<p>{message}</p>\r\n<p> </p>\r\n<p>If you have any questions, please contact us at info@singsys.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(2, 'admin_forgot_password', 'Reset Your Password', '<p>Dear Admin</p>\r\n<p>Please click on this link to reset your password: {link}</p>\r\n<p>If you have any questions, please contact us at info@singsys.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(3, 'forgot_password', 'Reset Your Password', '<p>Dear Sales Person</p>\r\n<p>Please click on this link to reset your password: {link}</p>\r\n<p>If you have any questions, please contact us at info@singsys.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(4, 'signup_email', 'Welcome to Monzone', '<p>Hello {name}!</p>\r\n<p>Welcome to Monzone,</p>\r\n<p>Your account has been created successfully. Please login to your account with the provided credentials.</p>\r\n<p>Login email : {useremail}</p>\r\n<p>Login password : {password}&nbsp;</p>\r\n<p>&nbsp;</p>', '', 'Enable'),
(5, 'discount_email', 'Monzone Discount Details', '<p>Dear {name},</p>\r\n<p>The discount code is successfully generated. You can use the discount for your customer by entering the password given below.</p>\r\n<p>The details are as follows:&nbsp;</p>\r\n<p>Discount Code : {discountcode}</p>\r\n<p>Discount in Amount : {discountflat}</p>\r\n<p>Password : {password}</p>\r\n<p>If you have any questions, please contact us at info@mozone.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(6, 'discount_update_email', 'Monzone Discount Details', '<p>Dear {name},</p>\r\n<p>The discount code is updated successfully. You can use the discount for your customer by entering the password given below.</p>\r\n<p>The details are as follows:&nbsp;</p>\r\n<p>Discount Code : {discountcode}</p>\r\n<p>Discount in Amount : {discountflat}</p>\r\n<p>Password : {password}</p>\r\n<p>If you have any questions, please contact us at info@mozone.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(7, 'quotation_review', 'Monzone: Quotation Confirmation', '<p>Hello {name}!</p>\r\n<p>Your quotation {QuotationNumber} is now confirmed.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>If you have any questions, please contact us at info@monzone.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(8, 'reminder', 'Reminder | Quotation Confirmation Pending', '<p>Dear {SALES_PERSON}</p>\r\n<p>Quotation Number : {QUOTATION_NUMBER}</p>\r\n<p>This is to remind you that the quotation is yet not confirmed. Please ensure to confirm the quotation as soon as possible.</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(9, 'discount_status_inactive_email', 'Monzone Discount Status', '<p>Dear {name},</p>\r\n<p>The discount code is turned inactive.</p>\r\n<p>The details are as follows:&nbsp;</p>\r\n<p>Discount Code : {discountcode}</p>\r\n<p>Discount in Amount : {discountflat}</p>\r\n<p>Status : {status}</p>\r\n<p>If you have any questions, please contact us at info@mozone.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(10, 'eagreement_review', 'Monzone: Sales agreement Confirmation', '<p>Hello {name}!</p>\r\n<p>Your sales agreement {QuotationNumber} is now confirmed.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>If you have any questions, please contact us at info@monzone.com. We are happy to help you!</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(11, 'reminder_agreemnent', 'Reminder | Sales Agreement Confirmation Pending', '<p>Dear {SALES_PERSON}</p>\r\n<p>Sales Agreement&nbsp;Number : {QUOTATION_NUMBER}</p>\r\n<p>This is to remind you that the sales agreement is yet not confirmed. Please ensure to confirm the sales agreement as soon as possible.</p>\r\n<p>*This is an automatically generated email, please do not reply to this email address.*</p>', '', 'Enable'),
(12, 'signup_email_for_consumer', 'Welcome To Monzone', '<p>Hello {name}!</p>\r\n<p>Welcome to Monzone,</p>\r\n<p>Your account has been created successfully.</p>', '', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `mz_notification`
--

CREATE TABLE `mz_notification` (
  `id_notification` int(11) NOT NULL,
  `from_userid` int(11) NOT NULL,
  `to_userid` int(11) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `notification_msg` text NOT NULL,
  `notification_type` varchar(255) NOT NULL,
  `notification_type_id` int(11) NOT NULL,
  `status` enum('read','unread') NOT NULL DEFAULT 'unread',
  `addedon` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_notification`
--

INSERT INTO `mz_notification` (`id_notification`, `from_userid`, `to_userid`, `sender_name`, `notification_msg`, `notification_type`, `notification_type_id`, `status`, `addedon`) VALUES
(1, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470651264),
(2, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470651320),
(3, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470651664),
(4, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470651771),
(5, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470651996),
(6, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470652086),
(7, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470652199),
(8, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470652442),
(9, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470652755),
(10, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470652886),
(11, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653011),
(12, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653168),
(13, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653274),
(14, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653399),
(15, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653458),
(16, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653530),
(17, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653611),
(18, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653762),
(19, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470653977),
(20, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470664848),
(21, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470664947),
(22, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470666382),
(23, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470717602),
(24, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470719886),
(25, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470719926),
(26, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470730114),
(27, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470730149),
(28, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470731616),
(29, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470731624),
(30, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470731798),
(31, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470732998),
(32, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470733144),
(33, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470733349),
(34, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470740147),
(35, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470740853),
(36, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470744844),
(37, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470750642),
(38, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470750650),
(39, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470800155),
(40, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470800317),
(41, 0, 117, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470800907),
(42, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470801023),
(43, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470801689),
(44, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470801936),
(45, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470802431),
(46, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470802625),
(47, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470802724),
(48, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470802849),
(49, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470803186),
(50, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470803594),
(51, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470803659),
(52, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470803734),
(53, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470807315),
(54, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470807662),
(55, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470807797),
(56, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470807804),
(57, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470808515),
(58, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470810556),
(59, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470810931),
(60, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470811388),
(61, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470811490),
(62, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470811671),
(63, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470812076),
(64, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470812153),
(65, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470813309),
(66, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470813421),
(67, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470813764),
(68, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470814139),
(69, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470816341),
(70, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470816581),
(71, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470817550),
(72, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470817564),
(73, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470818242),
(74, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470818640),
(75, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470821371),
(76, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470823232),
(77, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470835380),
(78, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470835484),
(79, 0, 203, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470889625),
(80, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470893891),
(81, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470893907),
(82, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470898793),
(83, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470898800),
(84, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470898806),
(85, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470898813),
(86, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470900454),
(87, 0, 199, 'Monzone', 'Your E-Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470900570),
(88, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470900651),
(89, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470907509),
(90, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470907510),
(91, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470907511),
(92, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470907511),
(93, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470907511),
(94, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470907541),
(95, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470909455),
(96, 0, 206, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470909751),
(97, 0, 206, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470909781),
(98, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470912332),
(99, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470922796),
(100, 0, 202, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470923801),
(101, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470936974),
(102, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1470974256),
(103, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471065382),
(104, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471065409),
(105, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471065711),
(106, 0, 197, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471065716),
(107, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471332928),
(108, 0, 205, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471332942),
(109, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471410150),
(110, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471410290),
(111, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471412019),
(112, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471412221),
(113, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471412557),
(114, 0, 207, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471412684),
(115, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471413323),
(116, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471413415),
(117, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471415696),
(118, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471415812),
(119, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471415950),
(120, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1471530853),
(121, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1473941523),
(122, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1473999548),
(123, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474000199),
(124, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474003819),
(125, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474004117),
(126, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474005452),
(127, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474005796),
(128, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474005978),
(129, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1474006171),
(130, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475125133),
(131, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475145308),
(132, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475145730),
(133, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475145818),
(134, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475146773),
(135, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475147733),
(136, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475148834),
(137, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475149524),
(138, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475153166),
(139, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475199250),
(140, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475212816),
(141, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475214189),
(142, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475214916),
(143, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475226757),
(144, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475226974),
(145, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475228169),
(146, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475490891),
(147, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475490954),
(148, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475491125),
(149, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475665270),
(150, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475665491),
(151, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475666300),
(152, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475668098),
(153, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475668407),
(154, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475668747),
(155, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475672555),
(156, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475672741),
(157, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475672832),
(158, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475682371),
(159, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475682542),
(160, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475682666),
(161, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475682739),
(162, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475682834),
(163, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475685463),
(164, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475685578),
(165, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475685742),
(166, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475687448),
(167, 0, 201, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475687499),
(168, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475687918),
(169, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475687969),
(170, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475734046),
(171, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475743813),
(172, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475818290),
(173, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475818448),
(174, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475818467),
(175, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475818651),
(176, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475818773),
(177, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475819992),
(178, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475820321),
(179, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475823258),
(180, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475843525),
(181, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475843816),
(182, 0, 199, 'Monzone', 'Your Sales Agreement is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475844022),
(183, 0, 201, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1475845140),
(184, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476073351),
(185, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476161397),
(186, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476707323),
(187, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476707488),
(188, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476710582),
(189, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476711034),
(190, 0, 199, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476711340),
(191, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476711840),
(192, 0, 152, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476855311),
(193, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476961685),
(194, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476964682),
(195, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476966104),
(196, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476966107),
(197, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476966312),
(198, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1476967740),
(199, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477024612),
(200, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477025136),
(201, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477025362),
(202, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477025700),
(203, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477025768),
(204, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477025797),
(205, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477026183),
(206, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477027234),
(207, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477027576),
(208, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477027643),
(209, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477027644),
(210, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477027729),
(211, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477028186),
(212, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477028358),
(213, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477028795),
(214, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477029034),
(215, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477029503),
(216, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477034284),
(217, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477034373),
(218, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477034602),
(219, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477034982),
(220, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477046207),
(221, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477051388),
(222, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477051785),
(223, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477052440),
(224, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477052667),
(225, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477156028),
(226, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477156111),
(227, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477156281),
(228, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477159130),
(229, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477159222),
(230, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477391351),
(231, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477391647),
(232, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477391687),
(233, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477455019),
(234, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477473447),
(235, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477473581),
(236, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477477422),
(237, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477477744),
(238, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477477994),
(239, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477481996),
(240, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477482152),
(241, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1477564242),
(242, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478061277),
(243, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478061340),
(244, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478061534),
(245, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478077839),
(246, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478078670),
(247, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478082345),
(248, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478082420),
(249, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478082995),
(250, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478083259),
(251, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478083323),
(252, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478084463),
(253, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478084482),
(254, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478090313),
(255, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478605057),
(256, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478668276),
(257, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478670675),
(258, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478674719),
(259, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478689640),
(260, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478689954),
(261, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478690151),
(262, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1478690278),
(263, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479111765),
(264, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479112364),
(265, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479112407),
(266, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479731513),
(267, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479785584),
(268, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479785679),
(269, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479785779),
(270, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479786005),
(271, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479810556),
(272, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479905323),
(273, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479969268),
(274, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1479992353),
(275, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1481110752),
(276, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1481534713),
(277, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1481535029),
(278, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1481535030),
(279, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482130407),
(280, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482132178),
(281, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482132429),
(282, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482132493),
(283, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482137942),
(284, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482138448),
(285, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482138681),
(286, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482138950),
(287, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482139549),
(288, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482139986),
(289, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482154300),
(290, 0, 3, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1482156117),
(291, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1489985924),
(292, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1489986002),
(293, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490076404),
(294, 0, 7, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490076794),
(295, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490076917),
(296, 0, 7, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490077168),
(297, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490077768),
(298, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490078052),
(299, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490078188),
(300, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490078572),
(301, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490079368),
(302, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490089863),
(303, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490090099),
(304, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490090160),
(305, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490091376),
(306, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490091895),
(307, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490241840),
(308, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490241855),
(309, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490241864),
(310, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490242010),
(311, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490242024),
(312, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490242843),
(313, 0, 8, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490244019),
(314, 0, 8, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490244338),
(315, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490244660),
(316, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490244885),
(317, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490245278),
(318, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490246011),
(319, 0, 1, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490246020),
(320, 0, 2, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490250527),
(321, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490269244),
(322, 0, 5, 'Monzone', 'Your Quotation is confirmed. Please sync.', 'custom-message', 0, 'unread', 1490271434);

-- --------------------------------------------------------

--
-- Table structure for table `mz_product`
--

CREATE TABLE `mz_product` (
  `id_product` int(11) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `product_desc` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `id_category` int(11) NOT NULL,
  `status` enum('active','inactive','delete') NOT NULL DEFAULT 'active',
  `addedon` datetime NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_product`
--

INSERT INTO `mz_product` (`id_product`, `model_name`, `product_desc`, `price`, `id_category`, `status`, `addedon`, `image_name`) VALUES
(14, 'truck new model', 'kjdsoi kojdio ,ldjwiodus skdj9ixm cidhius', '1800.00', 4, 'delete', '2016-05-25 17:49:52', '1464169781_truck.jpg'),
(15, 'tester', 'lks kljsoids kjdid jhdsuidd', '1805.00', 2, 'delete', '2016-05-25 17:51:11', '1464169866_download.jpg'),
(16, '12345678', 'aaaaaaaaa1', '111.00', 2, 'delete', '2016-05-25 20:36:23', '1468999662_10-best-shopping-store-logo.gif'),
(19, 'BBBBB', 'Where does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\nWhere can I get some?\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n\n5\n	paragraphs\n	words\n	bytes\n	lists\n	Start with \'Lorem\nipsum dolor sit amet...\'\nGenerate Lorem Ipsum\nTime tracking for freelancers\nTranslations: Can you help translate this site into a foreign language ? Please email us with details if you can help.\nThere are now a set of mock banners available here in three colours and in a range of standard banner sizes:\nBannersBannersBanners\nDonate: If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated - click here to donate using PayPal. Thank you for your support.\nChrome Firefox Add-on NodeJS TeX Package Python Interface GTK Lipsum Rails .NET Groovy Adobe Plugin\nThe standard Lorem Ipsum passage, used since the 1500s\n\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\n\nSection 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ulla', '2.00', 6, 'delete', '2016-05-26 10:59:28', '1464231547_shutterstock_18142168.jpg'),
(21, 'product1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1200.00', 6, 'delete', '2016-07-06 20:56:25', '1467809777_fff.png'),
(22, 'Product2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1201.00', 4, 'delete', '2016-07-06 20:57:06', '1467809823_fff.png'),
(23, 'Test123', 'asdfghjk', '10.00', 4, 'delete', '2016-07-06 21:21:48', '1467811302_FREE-3D-CAT-WALLPAPER-sYvn.jpg'),
(26, 'Test test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '99999999.99', 3, 'delete', '2016-07-20 15:39:27', '1469000356_shutterstock_75561226.jpg'),
(29, 'GGG', 'kkjhkj', '67687.00', 2, 'delete', '2016-07-21 19:54:54', '1469102088_10-best-shopping-store-logo.gif'),
(30, 'testtest', 'testtgetx', '43545.00', 1, 'delete', '2016-07-21 20:11:46', '1469103097_action-sorting-icon-issue.png'),
(31, 'hdfhdjfhdjfhjdhfjxfdfj', 'djfdjnfdfdf', '887.00', 2, 'delete', '2016-07-21 21:26:33', '1469107579_update-mesaage-for-product-add.png'),
(33, 'frfrfrf', 'vffer', '343.00', 3, 'delete', '2016-07-22 12:49:26', '1469162961_invalid-credentials-login.png'),
(35, 'fgfgfg', 'fgrgrg', '43545.00', 2, 'delete', '2016-07-22 14:30:10', '1469169005_admin-profile-back-button.png'),
(37, 'FJHFJHFJ', 'gjgjgjhg', '565.00', 2, 'delete', '2016-07-22 14:34:03', '1469169240_10-best-shopping-store-logo.gif'),
(38, 'GJKGKJ', 'hkhkhkj', '446.00', 3, 'delete', '2016-07-22 14:36:06', '1469169363_10-best-shopping-store-logo.gif'),
(43, 'Test2', 'qwertyugfdsdf ascvlkjdsksdvc kdjhjcdbcndnbvdjjbn', '1234.00', 1, 'delete', '2016-08-11 15:21:05', '1470900055_download-(1).png'),
(268, 'test1', 'jjjj', '15.00', 2, 'delete', '2016-09-23 01:00:01', ''),
(269, '123456', 'asdfgh', '15.00', 2, 'delete', '2016-09-23 01:03:05', '000000.jpg'),
(270, 'abcd875', 'uuu', '15.00', 6, 'delete', '2016-09-23 02:20:45', '000000.jpg'),
(271, 'Test', 'Test', '10.00', 3, 'delete', '2016-09-23 14:11:46', '1474611127_download.jpg'),
(272, 'refrigeration product', 'tset', '150.00', 2, 'delete', '2016-10-17 20:50:58', '1476708652_0011ff.png'),
(273, 'testMonzone', 'qwertyuio', '10000.00', 2, 'delete', '2016-10-20 20:31:41', '1476966660_Screen-Shot-2016-10-09-at-12.45.17-PM.png'),
(274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 'Box External Dimension	: L3080MMXW1700MMXH1900MM', '14500.00', 1, 'active', '2016-10-25 17:23:08', '1477387383_YELLOW-BACKGROUND.jpg'),
(275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 'Refrigeration System Configuration:\r\nSystem Model: T1000R SPECTRUM S3+S3 EVAPORATOR \r\n3 ZONE SYSTEM\r\nCAPACITY: 0 DEG C / 30 DEG C : 9600W\r\n                  -20 DEG C / +30 DEG C: 5600W', '45000.00', 2, 'active', '2016-10-25 17:24:02', '1490244712_t1000r.PNG'),
(276, 'Tailgate Caroil Model : Traxx 3.0', 'TAILGATE CAROIL MODEL : TRAXX 3.0 (WheelChair Lift)\r\nLOADING CAPACITY : 300KG\r\nPLATFORM SIZE : 1200MM X 840MM\r\nDIMENSION : 1725X1115X67MM\r\nLIFTING HEIGHT : 650MM\r\nAUTOMATIC RAMP FLAPS ON GROUND\r\nAND AT VEHICLE LEVEL\r\nCONTROLS WITH KEYPAD OR BLUETOOTH\r\nRADIO CONTROL\r\nELECTRO-HYDRAULIC UNIT EQUIPPED WHIT\r\nAUXILIARY EMERGENCY PUMP\r\nMANUALLY EMERGENCY OPERATION.\r\nINPUT 12V/24V', '15000.00', 5, 'active', '2016-10-25 18:44:10', '1490254232_IMG20170323144947-(2).jpg'),
(277, 'Product1', 'test description', '0.00', 1, 'delete', '2016-10-27 20:03:01', '1477569775_new1.png'),
(278, 'Product3', 'test desc 3', '12.00', 4, 'delete', '2016-10-27 20:03:37', '1477569812_fff-(3).png'),
(279, 'test for without price1', 'sdsdsd', '0.00', 1, 'delete', '2016-10-27 20:03:57', ''),
(280, 'test for without price2', 'sdsdsd', '344.00', 3, 'delete', '2016-10-27 20:03:57', ''),
(281, 'test for without price3', 'dsd', '0.00', 2, 'delete', '2016-10-27 20:03:57', ''),
(282, 'SYSTEM MODEL: T1000M', 'System Model : T1000M', '0.00', 2, 'active', '2016-11-14 16:25:49', '1490244032_T1000M.jpg'),
(283, 'TK TUBE EXHAUST', 'TK TUBE EXHAUST', '0.00', 3, 'active', '2016-12-08 12:22:53', '1481170963_11-6173.jpg'),
(284, 'TK HOSE OIL', 'TK HOSE OIL', '1.00', 3, 'active', '2016-12-08 12:37:32', '1481171842_11-6177.jpg'),
(285, 'TK OIL FILTER', 'TK OIL FILTER', '1.00', 3, 'active', '2016-12-08 12:38:53', '1481171918_11-6228.jpg'),
(286, 'TK FILTER-AIR', 'TK FILTER-AIR', '1.00', 3, 'active', '2016-12-08 12:45:50', '1481172337_11-7234.jpg'),
(287, 'TK FILTER OIL ELEMENT DUAL - SB', 'TK FILTER OIL ELEMENT DUAL - SB', '1.00', 3, 'active', '2016-12-08 12:47:36', '1481172427_11-7382.jpg'),
(288, 'TK FILTER DRY AIR CLEANER', 'TK FILTER DRY AIR CLEANER', '1.00', 3, 'active', '2016-12-08 12:48:46', '1481172519_11-7400.jpg'),
(289, 'TK PUMP FUEL ASSY - SB', 'TK PUMP FUEL ASSY - SB', '1.00', 3, 'active', '2016-12-08 12:49:55', '1481172588_11-7433.jpg'),
(290, 'TK HOSE OD 1/4 X 8FT', 'TK HOSE OD 1/4 X 8FT', '1.00', 3, 'active', '2016-12-08 12:50:59', '1481172652_11-9030.jpg'),
(291, 'TK ELEMENT-AIR PRIMARY', 'TK ELEMENT-AIR PRIMARY', '1.00', 3, 'active', '2016-12-08 12:52:21', '1481172733_11-9059.jpg'),
(292, 'TK FUEL FILTER', 'TK FUEL FILTER', '1.00', 3, 'active', '2016-12-08 12:53:29', '1481172792_11-9098.jpg'),
(293, 'TK FILTER - OIL', 'TK FILTER - OIL', '1.00', 3, 'active', '2016-12-08 12:55:31', '1481172922_11-9099.jpg'),
(294, 'TK FILTER OIL DUA', 'TK FILTER OIL DUA', '1.00', 3, 'active', '2016-12-08 15:01:58', '1481180513_11-9182.jpg'),
(295, 'TK ELEMENT CLEANER', 'TK ELEMENT CLEANER', '1.00', 3, 'active', '2016-12-08 15:07:38', '1481180852_11-9300.jpg'),
(296, 'TK OIL FILTER EMI 2000', 'TK OIL FILTER EMI 2000', '1.00', 3, 'active', '2016-12-08 15:08:48', '1481180917_11-9321.jpg'),
(297, 'TK FILTER FUEL EMI 2000', 'TK FILTER FUEL EMI 2000', '1.00', 3, 'active', '2016-12-08 15:10:32', '1481181022_11-9341.jpg'),
(298, 'TK FILTER FUEL EMI 3000', 'TK FILTER FUEL EMI 3000', '1.00', 3, 'active', '2016-12-08 15:11:48', '1481181095_11-9342.jpg'),
(299, 'TK HOSE SILICON 25FT', 'TK HOSE SILICON 25FT', '1.00', 3, 'active', '2016-12-08 15:13:09', '1481181178_12-0419.jpg'),
(300, 'TK HOSE BLEED 3/8 ID SILE', 'TK HOSE BLEED 3/8 ID SILE', '1.00', 3, 'active', '2016-12-08 15:14:15', '1481181244_12-0538.jpg'),
(301, 'TK MUFFLER', 'TK MUFFLER', '1.00', 3, 'active', '2016-12-08 15:16:01', '1481181352_12-0765.jpg'),
(302, 'TK WATER PUMP - CITI RT', 'TK WATER PUMP - CITI RT', '1.00', 3, 'active', '2016-12-08 15:17:09', '1481181419_12-0822.jpg'),
(303, 'TK TANK EXPANSION', 'TK TANK EXPANSION', '1.00', 3, 'active', '2016-12-08 15:18:19', '1481181492_12-0826.jpg'),
(304, 'TK FLAME CATCHER', 'TK FLAME CATCHER', '1.00', 3, 'active', '2016-12-08 15:20:17', '1481181600_13-0136.jpg'),
(305, 'TK WATER PUMP TK388/95', 'TK WATER PUMP TK388/95', '1.00', 3, 'active', '2016-12-08 15:22:25', '1481181737_13-0507.jpg'),
(306, 'TK WATER PUMP YANMAR TIER 1&2', 'TK WATER PUMP YANMAR TIER 1&2', '1.00', 3, 'active', '2016-12-08 15:23:47', '1481181817_13-0509.jpg'),
(307, 'TK PUMP WATER TIER 2 (EX-PART : 13-0576)', 'TK PUMP WATER TIER 2 (EX-PART : 13-0576)', '1.00', 3, 'active', '2016-12-08 15:28:00', '1481182073_13-0948.jpg'),
(308, 'TK CAP OVERFLOW', 'TK CAP OVERFLOW', '1.00', 3, 'active', '2016-12-08 15:29:02', '1481182133_13-0957.jpg'),
(309, 'TK MUFFLER ASSY, COMPLETE', 'TK MUFFLER ASSY, COMPLETE', '1.00', 3, 'active', '2016-12-08 15:31:15', '1481182262_13-0983.jpg'),
(310, 'TK HOSE RADIATOR UPPER SILE', 'TK HOSE RADIATOR UPPER SILE', '1.00', 3, 'active', '2016-12-08 15:32:31', '1481182343_13-1012.jpg'),
(311, 'TK HOSE COIL TO COOLANT TANK SILE', 'TK HOSE COIL TO COOLANT TANK SILE', '1.00', 3, 'active', '2016-12-08 15:34:54', '1481182485_13-1013.jpg'),
(312, 'TK HOSE RADIATOR LOWER SILE', 'TK HOSE RADIATOR LOWER SILE', '1.00', 3, 'active', '2016-12-08 15:36:44', '1481182594_13-1014.jpg'),
(313, 'TK HOSE -RADIATOR-LOW-EPDM', 'TK HOSE -RADIATOR-LOW-EPDM', '1.00', 3, 'active', '2016-12-08 15:37:57', '1481182671_13-1018.jpg'),
(314, 'TK HOSE BLEED 5/8 ID SILE', 'TK HOSE BLEED 5/8 ID SILE', '1.00', 3, 'active', '2016-12-08 15:39:35', '1481182767_13-1055.jpg'),
(315, 'TK SEAL SHAFT REP', 'TK SEAL SHAFT REP', '1.00', 3, 'active', '2016-12-08 15:41:29', '1481182883_22-0777.jpg'),
(316, 'TK CRANKSHAFT X214', 'TK CRANKSHAFT X214', '1.00', 3, 'active', '2016-12-08 15:43:41', '1481183010_22-0804.jpg'),
(317, 'TK SEAL SHAFT COMPR 7/8 POE', 'TK SEAL SHAFT COMPR 7/8 POE', '1.00', 3, 'active', '2016-12-08 15:44:54', '1481183088_22-0899.jpg'),
(318, 'TK PLATE VALVE DI', 'TK PLATE VALVE DI', '1.00', 3, 'active', '2016-12-08 15:46:40', '1481183195_22-0990.jpg'),
(319, 'TK SHIELD DUST', 'TK SHIELD DUST', '1.00', 3, 'active', '2016-12-08 15:47:51', '1481183263_22-1037.jpg'),
(320, 'TK SEAL CRANKSHAFT', 'TK SEAL CRANKSHAFT', '1.00', 3, 'active', '2016-12-08 15:49:34', '1481183362_22-1101.jpg'),
(321, 'TK PISTON TK315R', 'TK PISTON TK315R', '1.00', 3, 'active', '2016-12-08 15:55:00', '1481183676_22-1202.jpg'),
(322, 'TK RING PISTON TK312R', 'TK RING PISTON TK312R', '1.00', 3, 'active', '2016-12-08 15:57:05', '1481183813_22-1203.jpg'),
(323, 'TK GASKET-RING-O', 'TK GASKET-RING-O', '1.00', 3, 'active', '2016-12-08 15:58:22', '1481183894_33-1223.jpg'),
(324, 'TK O RING -SB230', 'TK O RING -SB230', '1.00', 3, 'active', '2016-12-08 15:59:25', '1481183960_33-1461.jpg'),
(325, 'TK GASKET', 'TK GASKET', '1.00', 3, 'active', '2016-12-08 16:01:25', '1481184080_33-1520.jpg'),
(326, 'TK SEAL OIL', 'TK SEAL OIL', '1.00', 3, 'active', '2016-12-08 16:02:18', '1481184133_33-1727.jpg'),
(327, 'TK SHIM PACK', 'TK SHIM PACK', '1.00', 3, 'active', '2016-12-08 16:10:28', '1481184623_33-1728.jpg'),
(328, 'TK GASKET INTAKE', 'TK GASKET INTAKE', '1.00', 3, 'active', '2016-12-08 16:12:09', '1481184711_33-1905.jpg'),
(329, 'TK GASKET EXHAUST', 'TK GASKET EXHAUST', '1.00', 3, 'active', '2016-12-08 16:28:08', '1481185677_33-1906.jpg'),
(330, 'TK GASKET MUFFLER', 'TK GASKET MUFFLER', '1.00', 3, 'active', '2016-12-08 16:30:10', '1481185805_33-1907.jpg'),
(331, 'TK O RING', 'TK O RING', '1.00', 3, 'active', '2016-12-08 16:39:05', '1481186341_33-2095.jpg'),
(332, 'TK GASKET PISTON HOUSING', 'TK GASKET PISTON HOUSING', '1.00', 3, 'active', '2016-12-08 16:44:28', '1481186605_33-2512.jpg'),
(333, 'TK GASKET DISCHARGE', 'TK GASKET DISCHARGE', '1.00', 3, 'active', '2016-12-08 16:47:43', '1481186857_33-2805.jpg'),
(334, 'TK GASKET COVER', 'TK GASKET COVER', '1.00', 3, 'active', '2016-12-08 16:49:09', '1481186944_33-2828.jpg'),
(335, 'TK GASKET OIL FILTER', 'TK GASKET OIL FILTER', '1.00', 3, 'active', '2016-12-08 16:50:26', '1481187021_33-2996.jpg'),
(336, 'TK ORING END COVER', 'TK ORING END COVER', '1.00', 3, 'active', '2016-12-08 16:51:27', '1481187081_33-2998.jpg'),
(337, 'TK GASKET WATER', 'TK GASKET WATER', '1.00', 3, 'active', '2016-12-08 16:52:57', '1481187168_33-3477.jpg'),
(338, 'TK COMP SHAFT SEAL TK312', 'TK COMP SHAFT SEAL TK312', '1.00', 3, 'active', '2016-12-08 16:59:28', '1481187558_33-4031.jpg'),
(339, 'TK SEAL SHAFT TKR315R', 'TK SEAL SHAFT TKR315R', '1.00', 3, 'active', '2016-12-08 17:00:35', '1481187624_33-4032.jpg'),
(340, 'TK SEAL TK376', 'TK SEAL TK376', '1.00', 3, 'active', '2016-12-08 17:02:00', '1481187714_33-4123.jpg'),
(341, 'TK KIT HTCO CAP W/DIELECTRIC', 'TK KIT HTCO CAP W/DIELECTRIC', '1.00', 3, 'active', '2016-12-08 17:03:37', '1481187790_40-0847.jpg'),
(342, 'TK KIT SWITCH DOOR 2-WIRE (EX P/NO: 41-4266)', 'TK KIT SWITCH DOOR 2-WIRE (EX P/NO: 41-4266)', '1.00', 3, 'active', '2016-12-08 17:05:08', '1481187895_40-0907.jpg'),
(343, 'TK KIT CHIP V1564', 'TK KIT CHIP V1564', '1.00', 3, 'active', '2016-12-08 17:06:31', '1481187979_40-0962.jpg'),
(344, 'TK KIT SENSOR GRADED EX-NO 40-0871', 'TK KIT SENSOR GRADED EX-NO 40-0871', '1.00', 3, 'active', '2016-12-08 17:07:26', '1481188040_40-0974.jpg'),
(345, 'TK KIT SENSOR UNGRADEN (0610) EX NO 40-0872', 'TK KIT SENSOR UNGRADEN (0610) EX NO 40-0872', '1.00', 3, 'active', '2016-12-08 17:08:25', '1481188090_40-0975.jpg'),
(346, 'TK RECTIFIER 50AMP 250VRM', 'TK RECTIFIER 50AMP 250VRM', '1.00', 3, 'active', '2016-12-08 17:10:37', '1481188230_41-0363.jpg'),
(347, 'TK SWITCH LEVEL', 'TK SWITCH LEVEL (EX-P/NO : 44-9684)', '1.00', 3, 'active', '2016-12-08 17:11:54', '1481188307_41-0402.jpg'),
(348, 'TK TIMER - UNLOADING (CD-II MAX)', 'TK TIMER - UNLOADING (CD-II MAX)', '1.00', 3, 'active', '2016-12-08 17:13:34', '1481188362_41-0414.jpg'),
(349, 'TK MOTOR 1/6HP 28V LONG LIFE', 'TK MOTOR 1/6HP 28V LONG LIFE', '1.00', 3, 'active', '2016-12-08 17:14:54', '1481188483_41-0436.jpg'),
(350, 'TK RELAY 1PDT', 'TK RELAY 1PDT', '1.00', 3, 'active', '2016-12-08 17:16:03', '1481188553_41-0895.jpg'),
(351, 'TK THERMISTOR BOX FOR COMPRESSOR', 'TK THERMISTOR BOX FOR COMPRESSOR', '1.00', 3, 'active', '2016-12-08 17:17:51', '1481188662_41-0901.jpg'),
(352, 'TK CONNECTOR FUSE', 'TK CONNECTOR FUSE', '1.00', 3, 'active', '2016-12-08 17:20:17', '1481188805_41-0942.jpg'),
(353, 'TK COVER CONNECTOR', 'TK COVER CONNECTOR', '1.00', 3, 'active', '2016-12-08 17:23:14', '1481188988_41-0944.jpg'),
(354, 'TK SWITCH HP CO/LP CO', 'TK SWITCH HP CO/LP CO', '1.00', 3, 'active', '2016-12-08 17:24:27', '1481189061_41-1501.jpg'),
(355, 'TK SOLENOID COMPLETE(CD MAX)', 'TK SOLENOID COMPLETE(CD MAX)', '1.00', 3, 'active', '2016-12-08 17:25:22', '1481189115_41-1566.jpg'),
(356, 'TK COIL SOLENOID 220V', 'TK COIL SOLENOID 220V', '1.00', 3, 'active', '2016-12-08 17:26:32', '1481189181_41-1676.jpg'),
(357, 'TK PLUG 32A 3POLE 500V', 'TK PLUG 32A 3POLE 500V', '1.00', 3, 'active', '2016-12-08 17:27:32', '1481189244_41-1976.jpg'),
(358, 'TK TIMER - CLUTCH (CD-II MAX)', 'TK TIMER - CLUTCH (CD-II MAX)', '1.00', 3, 'active', '2016-12-08 17:28:21', '1481189296_41-2006.jpg'),
(359, 'TK HEATER AIR', 'TK HEATER AIR', '1.00', 3, 'active', '2016-12-08 17:29:14', '1481189346_41-2147.jpg'),
(360, 'TK CAPACITOR 24V', 'TK CAPACITOR 24V', '1.00', 3, 'active', '2016-12-08 17:30:23', '1481189413_41-2992.jpg'),
(361, 'TK RELAY OVERLOAD', 'TK RELAY OVERLOAD', '1.00', 3, 'active', '2016-12-08 17:31:12', '1481189463_41-3090.jpg'),
(362, 'TK SOCKET CIRCUIT BREAKER', 'TK SOCKET CIRCUIT BREAKER', '1.00', 3, 'active', '2016-12-08 17:33:30', '1481189603_41-3099.jpg'),
(363, 'TK SWITCH DEFROST', 'TK SWITCH DEFROST', '1.00', 3, 'active', '2016-12-08 17:35:10', '1481189683_41-3136.jpg'),
(364, 'TK SENSOR', 'TK SENSOR', '1.00', 3, 'active', '2016-12-08 17:50:09', '1481190591_41-3143.jpg'),
(365, 'TK HEATER DRAIN TUBE - 12V', 'TK HEATER DRAIN TUBE - 12V', '1.00', 3, 'active', '2016-12-09 10:37:47', '1481251049_41-3155.jpg'),
(366, 'TK HARNESS HEATER DRAIN TUBE - 24V', 'TK HARNESS HEATER DRAIN TUBE - 24V', '1.00', 3, 'active', '2016-12-09 10:39:00', '1481251120_41-3156.jpg'),
(367, 'TK SENSOR-PROBE-THERMISTOR', 'TK SENSOR-PROBE-THERMISTOR', '1.00', 3, 'active', '2016-12-09 10:40:13', '1481251195_41-3345.jpg'),
(368, 'TK CONTACTOR FOR F5L', 'TK CONTACTOR FOR F5L', '1.00', 3, 'active', '2016-12-09 10:41:26', '1481251264_41-3452.jpg'),
(369, 'TK FUSE HOLDER', 'TK FUSE HOLDER', '1.00', 3, 'active', '2016-12-09 10:48:09', '1481251679_41-3665.jpg'),
(370, 'TK FUSE 60AMP 32V', 'TK FUSE 60AMP 32V', '1.00', 3, 'active', '2016-12-09 10:49:26', '1481251753_41-3666.jpg'),
(371, 'TK COIL 12V', 'TK COIL 12V', '1.00', 3, 'active', '2016-12-09 10:50:36', '1481251818_41-3681.jpg'),
(372, 'TK SWITCH', 'TK SWITCH', '1.00', 3, 'active', '2016-12-09 10:54:22', '1481252052_41-3831.jpg'),
(373, 'TK SWITCH HPCO 0306', 'TK SWITCH HPCO 0306', '1.00', 3, 'active', '2016-12-09 10:57:41', '1481252226_41-3846.jpg'),
(374, 'TK SWITCH-HPCO', 'TK SWITCH-HPCO', '1.00', 3, 'active', '2016-12-09 10:59:00', '1481252328_41-3847.jpg'),
(375, 'TK SWITCH HPCO COMPL', 'TK SWITCH HPCO COMPL', '1.00', 3, 'active', '2016-12-09 11:00:09', '1481252400_41-4146.jpg'),
(376, 'TK SWITCH CAM OPERATED', 'TK SWITCH CAM OPERATED', '1.00', 3, 'active', '2016-12-09 11:03:41', '1481252601_41-4148.jpg'),
(377, 'TK SENSOR TEMPERATURE', 'TK SENSOR TEMPERATURE', '1.00', 3, 'active', '2016-12-09 11:06:57', '1481252803_41-4157.jpg'),
(378, 'TK CAPACITOR - F5L', 'TK CAPACITOR - F5L', '1.00', 3, 'active', '2016-12-09 11:07:55', '1481252864_41-4213.jpg'),
(379, 'TK PC BOARD', 'TK PC BOARD', '1.00', 3, 'active', '2016-12-09 11:08:57', '1481252928_41-4258.jpg'),
(380, 'TK KIT SWITCH DOOR 2WIRE(USE40-0907)', 'TK KIT SWITCH DOOR 2WIRE(USE40-0907)', '1.00', 3, 'active', '2016-12-09 11:10:56', '1481252993_41-4266.jpg'),
(381, 'TK PC BOARD FOR MODEL V500MAX', 'TK PC BOARD FOR MODEL V500MAX', '1.00', 3, 'active', '2016-12-09 11:12:25', '1481253133_41-4372.jpg'),
(382, 'TK SWITCH-OIL LEVEL', 'TK SWITCH-OIL LEVEL', '1.00', 3, 'active', '2016-12-09 11:14:16', '1481253241_41-4470.jpg'),
(383, 'TK HARNESS & SW-ON/OFF COMPL', 'TK HARNESS & SW-ON/OFF COMPL', '1.00', 3, 'active', '2016-12-09 11:19:34', '1481253559_41-4474.jpg'),
(384, 'TK SWITCH-HPCO (470 PSI)', 'TK SWITCH-HPCO (470 PSI)', '1.00', 3, 'active', '2016-12-09 11:21:22', '1481253667_41-4523.jpg'),
(385, 'TK RELAY 0504 12V', 'TK RELAY 0504 12V', '1.00', 3, 'active', '2016-12-09 11:27:08', '1481253981_41-4667.jpg'),
(386, 'TK PC BOARD DRODES RESISTORS', 'TK PC BOARD DRODES RESISTORS', '1.00', 3, 'active', '2016-12-09 11:28:31', '1481254098_41-4889.jpg'),
(387, 'TK COIL SOLENOID-12V', 'TK COIL SOLENOID-12V', '1.00', 3, 'active', '2016-12-09 11:29:44', '1481254366_41-5051.jpg'),
(388, 'TK SENSOR FOR KV300(USE 41-6989)', 'TK SENSOR FOR KV300(USE 41-6989)', '1.00', 3, 'active', '2016-12-09 11:34:30', '1481254458_41-6607.jpg'),
(389, 'TK HARNESS-LOW VOL CONTROL OUTLET', 'TK HARNESS-LOW VOL CONTROL OUTLET', '1.00', 3, 'active', '2016-12-09 11:35:45', '1481254533_41-6922.jpg'),
(390, 'TK MOTOR KV300 - 12V EX-PART NO 41-6602', 'TK MOTOR KV300 - 12V EX-PART NO 41-6602', '1.00', 3, 'active', '2016-12-09 11:38:32', '1481254694_41-7567.jpg'),
(391, 'TK MOTOR KV300-24V(EX-PART:41-6959)', 'TK MOTOR KV300-24V(EX-PART:41-6959)', '1.00', 3, 'active', '2016-12-09 11:40:00', '1481254781_41-7568.jpg'),
(392, 'TK TRANSDUCER PRESS 500PSIG', 'TK TRANSDUCER PRESS 500PSIG', '1.00', 3, 'active', '2016-12-09 11:41:05', '1481254852_41-7962.jpg'),
(393, 'TK TRANSDUCER PRESS 200PSI-T1000R', 'TK TRANSDUCER PRESS 200PSI-T1000R', '1.00', 3, 'active', '2016-12-09 11:42:59', '1481254968_41-7963.jpg'),
(394, 'TK CONTROLLER - SV400/600', 'TK CONTROLLER - SV400/600', '1.00', 3, 'active', '2016-12-09 11:44:54', '1481255079_41-8167.jpg'),
(395, 'TK RELAY BOX 12V -SV', 'TK RELAY BOX 12V -SV', '1.00', 3, 'active', '2016-12-09 11:46:18', '1481255168_41-8168.jpg'),
(396, 'TK SENSOR TEMP-SV', 'TK SENSOR TEMP-SV', '1.00', 3, 'active', '2016-12-09 11:48:37', '1481255284_41-8171.jpg'),
(397, 'TK RELAY BOX 24V -SV', 'TK RELAY BOX 24V -SV', '1.00', 3, 'active', '2016-12-09 11:49:53', '1481255375_41-8175.jpg'),
(398, 'TK SWITCH ROCER(ON/OFF)', 'TK SWITCH ROCER(ON/OFF)', '1.00', 3, 'active', '2016-12-09 11:50:54', '1481255443_41-8737.jpg'),
(399, 'TK FILTER CONDUCTED EMISSION', 'TK FILTER CONDUCTED EMISSION', '1.00', 3, 'active', '2016-12-09 11:52:42', '1481255543_41-9243.jpg'),
(400, 'TK FUSE SWITCH ISOLATOR 2PIN', 'TK FUSE SWITCH ISOLATOR 2PIN', '1.00', 3, 'active', '2016-12-09 11:53:40', '1481255600_41-9247.jpg'),
(401, 'TK FAN ASSY 12V - RV200', 'TK FAN ASSY 12V - RV200', '1.00', 3, 'active', '2016-12-09 11:54:47', '1481255666_41-9297.jpg'),
(402, 'TK SINK-HEAT ASSY W/T.PROT', 'TK SINK-HEAT ASSY W/T.PROT', '1.00', 3, 'active', '2016-12-09 11:55:53', '1481255740_41-9328.jpg'),
(403, 'TK SOLENOID STOP FUEL', 'TK SOLENOID STOP FUEL (EX P/N: 41-9100)', '1.00', 3, 'active', '2016-12-09 11:57:04', '1481255806_42-0100.jpg'),
(404, 'TK CONTACTER 12A 12V (EX.P: 41-1004)', 'TK CONTACTER 12A 12V (EX.P: 41-1004)', '1.00', 3, 'active', '2016-12-09 11:58:10', '1481255878_42-0271.jpg'),
(405, 'TK SWITCH COOLANT TANK(EX-PART:41-8694)', 'TK SWITCH COOLANT TANK(EX-PART:41-8694)', '1.00', 3, 'active', '2016-12-09 11:59:11', '1481255942_42-0427.jpg'),
(406, 'TK SELECTOR 3PH 165V-600V(EX-PART: 41-4800)', 'TK SELECTOR 3PH 165V-600V(EX-PART: 41-4800)', '1.00', 3, 'active', '2016-12-09 12:26:08', '1481257556_42-0792.jpg'),
(407, 'TK GLOW PLUG (EX-P : 41-6582)', 'TK GLOW PLUG (EX-P : 41-6582)', '1.00', 3, 'active', '2016-12-09 12:27:37', '1481257640_42-0916.jpg'),
(408, 'TK FAN ASSY 24V - SV800', 'TK FAN ASSY 24V - SV800', '1.00', 3, 'active', '2016-12-09 12:28:54', '1481257715_42-1639.jpg'),
(409, 'TK COIL SOLENOID 24V -SV', 'TK COIL SOLENOID 24V -SV', '1.00', 3, 'active', '2016-12-09 12:40:52', '1481258435_42-1642.jpg'),
(410, 'TK SWITCH LPCO COMPL', 'TK SWITCH LPCO COMPL', '1.00', 3, 'active', '2016-12-09 14:39:04', '1481265523_41-4147.jpg'),
(411, 'TK COIL SOLENOID 12V -SV', 'TK COIL SOLENOID 12V -SV', '1.00', 3, 'active', '2016-12-09 14:45:20', '1481265901_42-1667.jpg'),
(412, 'TK DIODE ASSEMBLY', 'TK DIODE ASSEMBLY', '1.00', 3, 'active', '2016-12-09 14:46:36', '1481265977_44-2756.jpg'),
(413, 'TK CONNECTOR MALE 4 PIN', 'TK CONNECTOR MALE 4 PIN', '1.00', 3, 'active', '2016-12-09 14:47:56', '1481266052_44-2792.jpg'),
(414, 'TK SOLENOID', 'TK SOLENOID', '1.00', 3, 'active', '2016-12-09 14:48:51', '1481266120_44-2823.jpg'),
(415, 'TK THERMOSTAT BUS', 'TK THERMOSTAT BUS', '1.00', 3, 'active', '2016-12-09 14:50:09', '1481266180_44-3292.jpg'),
(416, 'TK THERMOSTAT 0306', 'TK THERMOSTAT 0306', '1.00', 3, 'active', '2016-12-09 14:51:54', '1481266297_44-3018.jpg'),
(417, 'TK SWITCH THERM', 'TK SWITCH THERM', '1.00', 3, 'active', '2016-12-09 14:53:18', '1481266378_44-3627.jpg'),
(418, 'TK CAPACITOR', 'TK CAPACITOR', '1.00', 3, 'active', '2016-12-09 14:54:11', '1481266441_44-4055.jpg'),
(419, 'TK CONNECTOR 2PIN', 'TK CONNECTOR 2PIN', '1.00', 3, 'active', '2016-12-09 14:55:25', '1481266503_44-5835.jpg'),
(420, 'TK CONNECTOR', 'TK CONNECTOR', '1.00', 3, 'active', '2016-12-09 14:57:51', '1481266652_44-5836.jpg'),
(421, 'TK SENSOR RPM', 'TK SENSOR RPM', '1.00', 3, 'active', '2016-12-09 14:59:48', '1481266773_44-6016.jpg'),
(422, 'TK SENSOR COOLANT LEVEL', 'TK SENSOR COOLANT LEVEL', '1.00', 3, 'active', '2016-12-09 15:00:52', '1481266842_44-6534.jpg'),
(423, 'TK HARNESS GROUND', 'TK HARNESS GROUND', '1.00', 3, 'active', '2016-12-09 15:02:37', '1481266943_44-7429.jpg'),
(424, 'TK SENSOR LED THERMOMETER', 'TK SENSOR LED THERMOMETER', '1.00', 3, 'active', '2016-12-09 15:03:39', '1481267007_44-7674.jpg'),
(425, 'TK HIGH PRESS SWITCH R134A', 'TK HIGH PRESS SWITCH R134A', '1.00', 3, 'active', '2016-12-09 15:04:36', '1481267064_44-7992.jpg'),
(426, 'TK SWITCH HPCO', 'TK SWITCH HPCO', '1.00', 3, 'active', '2016-12-09 15:05:38', '1481267126_44-8064.jpg'),
(427, 'TK PLUNGER', 'TK PLUNGER', '1.00', 3, 'active', '2016-12-09 15:07:31', '1481267225_44-8198.jpg'),
(428, 'TK FUSE LINK', 'TK FUSE LINK', '1.00', 3, 'active', '2016-12-09 15:10:06', '1481267393_44-8244.jpg'),
(429, 'TK CONNECTOR - ELEC 6PIN', 'TK CONNECTOR - ELEC 6PIN', '1.00', 3, 'active', '2016-12-09 15:11:31', '1481267459_44-8294.jpg'),
(430, 'TK DOOR SWITCH', 'TK DOOR SWITCH', '1.00', 3, 'active', '2016-12-09 15:15:14', '1481267710_44-8584.jpg'),
(431, 'TK SWITCH THERMO HET 1001 V300', 'TK SWITCH THERMO HET 1001 V300', '1.00', 3, 'active', '2016-12-09 15:22:09', '1481268086_44-9020.jpg'),
(432, 'TK CONTACTOR', 'TK CONTACTOR', '1.00', 3, 'active', '2016-12-09 15:23:45', '1481268175_44-9081.jpg'),
(433, 'TK SWITCH-HPCO (337PSI)', 'TK SWITCH-HPCO (337PSI)', '1.00', 3, 'active', '2016-12-09 15:24:50', '1481268272_44-9137.jpg'),
(434, 'TK CONTROLLER V250', 'TK CONTROLLER V250', '1.00', 3, 'active', '2016-12-09 15:30:12', '1481268604_45-1780.jpg'),
(435, 'TK BOX INCAB REMOTE', 'TK BOX INCAB REMOTE', '1.00', 3, 'active', '2016-12-09 15:31:54', '1481268700_45-1866.jpg'),
(436, 'TK CONTROLLER CAB DSR', 'TK CONTROLLER CAB DSR', '1.00', 3, 'active', '2016-12-09 15:32:53', '1481268761_45-2072.jpg'),
(437, 'TK CONTROL BOX PLAT 1 & 2 (EX-PART:45-2192)', 'TK CONTROL BOX PLAT 1 & 2 (EX-PART:45-2192)', '1.00', 3, 'active', '2016-12-09 15:42:13', '1481268849_45-2193.jpg'),
(438, 'TK BOARD', 'TK BOARD', '1.00', 3, 'active', '2016-12-09 15:43:24', '1481269392_45-2219.jpg'),
(439, 'TK CONTROLLER BOARD ASSY SR2', 'TK CONTROLLER BOARD ASSY SR2', '1.00', 3, 'active', '2016-12-09 15:44:48', '1481269476_45-2268.jpg'),
(440, 'TK PANEL HMI 3 GASKET ASSY- SB210 (EX PN:45-2300)', 'TK PANEL HMI 3 GASKET ASSY- SB210 (EX PN:45-2300)', '1.00', 3, 'active', '2016-12-09 15:45:58', '1481269551_45-2372.jpg'),
(441, 'TK CONTROLLER CAB HMI STD', 'TK CONTROLLER CAB HMI STD', '1.00', 3, 'active', '2016-12-09 15:47:10', '1481269620_45-2376.jpg'),
(442, 'TK DISPLAY HMI-TRK W/HTR-WE', 'TK DISPLAY HMI-TRK W/HTR-WE (EX PART : 45-2296)', '1.00', 3, 'active', '2016-12-09 16:02:09', '1481270514_45-2385.jpg'),
(443, 'TK CONTROLLER MP-T (EX P/N : 45-2220)', 'TK CONTROLLER MP-T (EX P/N : 45-2220)', '1.00', 3, 'active', '2016-12-09 16:04:00', '1481270632_45-2431.jpg'),
(444, 'TK CONTROLLER DSR III PLATF', 'TK CONTROLLER DSR III PLATF', '1.00', 3, 'active', '2016-12-09 16:05:35', '1481270724_45-2476.jpg'),
(445, 'TK SMART AIRE II - E2 X900', 'TK SMART AIRE II - E2 X900', '1.00', 3, 'active', '2016-12-09 16:06:32', '1481270777_45-2487.jpg'),
(446, 'TK PCB BOARD', 'TK PCB BOARD', '1.00', 3, 'active', '2016-12-09 16:07:23', '1481270839_45-2611.jpg'),
(447, 'TK BOARD-CONTROLLER ASSY SR3', 'TK BOARD-CONTROLLER ASSY SR3(EX-PART:45-2361)', '1.00', 3, 'active', '2016-12-09 16:08:18', '1481270891_45-2614.jpg'),
(448, 'TK FITTING 90DEG O SEAL #06', 'TK FITTING 90DEG O SEAL #06', '1.00', 3, 'active', '2016-12-09 16:09:11', '1481270946_51-2436.jpg'),
(449, 'TK SCREW SELF DRIL 10-1 - SB210', 'TK SCREW SELF DRIL 10-1 - SB210', '1.00', 3, 'active', '2016-12-09 16:11:35', '1481271072_55-4829.jpg'),
(450, 'TK KEY WOODRUFF', 'TK KEY WOODRUFF', '1.00', 3, 'active', '2016-12-09 16:12:34', '1481271138_55-5371.jpg'),
(451, 'TK WASHER BLADE DAMPER', 'TK WASHER BLADE DAMPER', '1.00', 3, 'active', '2016-12-09 16:13:33', '1481271202_55-6534.jpg'),
(452, 'TK WASHER BELLEVILLE SS', 'TK WASHER BELLEVILLE SS', '1.00', 3, 'active', '2016-12-09 16:15:05', '1481271297_55-7123.jpg'),
(453, 'TK PLUG', 'TK PLUG', '1.00', 3, 'active', '2016-12-09 16:16:23', '1481271367_55-9001.jpg'),
(454, 'TK FITTING 90 DEG TUBE O #08', 'TK FITTING 90 DEG TUBE O #08', '1.00', 3, 'active', '2016-12-09 16:17:21', '1481271425_55-9404.jpg'),
(455, 'TK CAGE #06', 'TK CAGE #06', '1.00', 3, 'active', '2016-12-09 16:18:52', '1481271521_55-9411.jpg'),
(456, 'TK CAGE #08', 'TK CAGE #08', '1.00', 3, 'active', '2016-12-09 16:19:46', '1481271576_55-9412.jpg'),
(457, 'TK CAGE #10', 'TK CAGE #10', '1.00', 3, 'active', '2016-12-10 09:38:10', '1481333884_55-9413.jpg'),
(458, 'TK CAGE #12', 'TK CAGE #12', '1.00', 3, 'active', '2016-12-10 09:39:14', '1481333935_55-9414.jpg'),
(459, 'TK HOSE CLIP #06', 'TK HOSE CLIP #06', '1.00', 3, 'active', '2016-12-10 09:40:32', '1481334004_55-9415.jpg'),
(460, 'TK HOSE CLIP #08', 'TK HOSE CLIP #08', '1.00', 3, 'active', '2016-12-10 09:41:34', '1481334086_55-9416.jpg'),
(461, 'TK HOSE CLIP #10', 'TK HOSE CLIP #10', '1.00', 3, 'active', '2016-12-10 09:42:35', '1481334133_55-9417.jpg'),
(462, 'TK HOSE CLIP #12', 'TK HOSE CLIP #12', '1.00', 3, 'active', '2016-12-10 09:43:29', '1481334202_55-9418.jpg'),
(463, 'TK KEY', 'TK KEY', '1.00', 3, 'active', '2016-12-10 09:44:36', '1481334266_55-9462.jpg'),
(464, 'TK FITTING ST ORS #08', 'TK FITTING ST ORS #08', '1.00', 3, 'active', '2016-12-10 09:46:04', '1481334358_55-9521.jpg'),
(465, 'TK FITTING ST ORS #12', 'TK FITTING ST ORS #12', '1.00', 3, 'active', '2016-12-10 09:47:02', '1481334414_55-9596.jpg'),
(466, 'TK CAGE #04', 'TK CAGE #04', '1.00', 3, 'active', '2016-12-10 09:48:16', '1481334485_55-9907.jpg'),
(467, 'TK HOSE CLIP #04', 'TK HOSE CLIP #04', '1.00', 3, 'active', '2016-12-10 09:49:04', '1481334532_55-9908.jpg'),
(468, 'TK CLAMP TUBE', 'TK CLAMP TUBE', '1.00', 3, 'active', '2016-12-10 09:49:54', '1481334584_55-9976.jpg'),
(469, 'TK KIT VALVE THROTTLING', 'TK KIT VALVE THROTTLING', '1.00', 3, 'active', '2016-12-10 09:50:56', '1481334645_60-0298.jpg'),
(470, 'TK VALVE INJ DESUPER HEATER', 'TK VALVE INJ DESUPER HEATER', '1.00', 3, 'active', '2016-12-10 09:51:57', '1481334739_61-0274.jpg'),
(471, 'TK VALVE SOLENOID', 'TK VALVE SOLENOID', '1.00', 3, 'active', '2016-12-10 09:53:31', '1481334792_61-0283.jpg'),
(472, 'TK FILTER DRIER', 'TK FILTER DRIER', '1.00', 3, 'active', '2016-12-10 09:54:54', '1481334884_61-0600.jpg'),
(473, 'TK HOSE-REFR 10 600IN 50FT', 'TK HOSE-REFR 10 600IN 50FT', '1.00', 3, 'active', '2016-12-10 09:55:45', '1481334937_61-0637.jpg'),
(474, 'TK FILTER DRIER CDMAX', 'TK FILTER DRIER CDMAX', '1.00', 3, 'active', '2016-12-10 09:56:36', '1481334986_61-0800.jpg'),
(475, 'TK VALVE THERMOSTATIC EXPANS', 'TK VALVE THERMOSTATIC EXPANS', '1.00', 3, 'active', '2016-12-10 09:57:37', '1481335048_61-0975.jpg'),
(476, 'TK VALVE 3 WAY', 'TK VALVE 3 WAY', '1.00', 3, 'active', '2016-12-10 09:58:33', '1481335104_61-1236.jpg'),
(477, 'TK OIL SEPARATOR (V700)', 'TK OIL SEPARATOR (V700)', '1.00', 3, 'active', '2016-12-10 09:59:40', '1481335168_61-1620.jpg'),
(478, 'TK VALVE EXPANSION', 'TK VALVE EXPANSION', '1.00', 3, 'active', '2016-12-10 10:01:00', '1481335247_61-1900.jpg'),
(479, 'TK VALVE THROTTLE – UT1200X', 'TK VALVE THROTTLE – UT1200X', '1.00', 3, 'active', '2016-12-10 10:02:12', '1481335324_61-2462.jpg'),
(480, 'TK SOLENOID VALVE 24V', 'TK SOLENOID VALVE 24V', '1.00', 3, 'active', '2016-12-10 10:03:15', '1481335382_61-2520.jpg'),
(481, 'TK COUPLING PLATE FEMALE', 'TK COUPLING PLATE FEMALE', '1.00', 3, 'active', '2016-12-10 10:04:23', '1481335436_61-3056.jpg'),
(482, 'TK CONNECTOR MALE F5L', 'TK CONNECTOR MALE F5L', '1.00', 3, 'active', '2016-12-10 10:05:47', '1481335513_61-3057.jpg'),
(483, 'TK QUICK CONNECTOR MALE F5L', 'TK QUICK CONNECTOR MALE F5L', '1.00', 3, 'active', '2016-12-10 10:06:37', '1481335583_61-3058.jpg'),
(484, 'TK COUPLING PLATE MALE', 'TK COUPLING PLATE MALE', '1.00', 3, 'active', '2016-12-10 10:10:41', '1481335834_61-3059.jpg'),
(485, 'TK CONNECTOR FEMALE F5L', 'TK CONNECTOR FEMALE F5L', '1.00', 3, 'active', '2016-12-10 10:11:38', '1481335890_61-3060.jpg'),
(486, 'TK CAP COUPLING PLATE MALE F5L', 'TK CAP COUPLING PLATE MALE F5L', '1.00', 3, 'active', '2016-12-10 10:14:06', '1481336041_61-3062.jpg'),
(487, 'TK CONNECTOR ELEC MALE EC4', 'TK CONNECTOR ELEC MALE EC4', '1.00', 3, 'active', '2016-12-10 10:14:58', '1481336090_61-3063.jpg'),
(488, 'TK RECEIVER DRIER KV300', 'TK RECEIVER DRIER KV300', '1.00', 3, 'active', '2016-12-10 10:16:16', '1481336168_61-3125.jpg'),
(489, 'TK ACCUMULATOR', 'TK ACCUMULATOR (KV300)', '1.00', 3, 'active', '2016-12-10 10:17:13', '1481336222_61-3126.jpg'),
(490, 'TK EXPANSION VALVE-TZ 800(5057140400)', 'TK EXPANSION VALVE-TZ 800(5057140400)', '1.00', 3, 'active', '2016-12-10 10:18:09', '1481336280_61-3190.jpg'),
(491, 'TK DEFROST SOLENOID KV300 12V', 'TK DEFROST SOLENOID\r\nKV300 \r\n12V', '1.00', 3, 'active', '2016-12-10 10:19:16', '1481336350_61-3192.jpg'),
(492, 'TK EXPANSION VALVE', 'TK EXPANSION VALVE', '1.00', 3, 'active', '2016-12-10 10:20:10', '1481336405_61-3193.jpg'),
(493, 'TK VALVE-SOLENOID', 'TK VALVE-SOLENOID', '1.00', 3, 'active', '2016-12-10 10:21:02', '1481336454_61-3401.jpg'),
(494, 'TK VALVE THROT ELEK', 'TK VALVE THROT ELEK', '1.00', 3, 'active', '2016-12-10 10:21:49', '1481336501_61-3764.jpg'),
(495, 'TK FILTER ORS #8 DCL084 FS', 'TK FILTER ORS #8 DCL084 FS', '1.00', 3, 'active', '2016-12-10 10:22:42', '1481336554_61-3854.jpg'),
(496, 'TK VALVE PRESS REGULATOR-T1000R', 'TK VALVE PRESS REGULATOR-T1000R', '1.00', 3, 'active', '2016-12-10 10:23:28', '1481336602_61-4527.jpg'),
(497, 'TK DEHYDRATOR -SV', 'TK DEHYDRATOR -SV', '1.00', 3, 'active', '2016-12-10 10:24:25', '1481336655_61-4676.jpg'),
(498, 'TK VALVE EXP THERMO EXPANS', 'TK VALVE EXP THERMO EXPANS', '1.00', 3, 'active', '2016-12-10 10:25:06', '1481336701_61-4704.jpg'),
(499, 'TK VALVE-EXPANTION', 'TK VALVE-EXPANTION - T600R-M/T800R-M', '1.00', 3, 'active', '2016-12-10 10:26:03', '1481336755_61-4713.jpg'),
(500, 'TK VALVE CONDENSING INLET', 'TK VALVE CONDENSING INLET', '1.00', 3, 'active', '2016-12-10 10:26:55', '1481336810_61-4861.jpg'),
(501, 'TK VALVE-EXPANSION - T1200R', 'TK VALVE-EXPANSION - T1200R', '1.00', 3, 'active', '2016-12-10 10:27:48', '1481336862_61-4885.jpg'),
(502, 'TK DRIER TZ 5555401000- TZ 800', 'TK DRIER TZ 5555401000- TZ 800', '1.00', 3, 'active', '2016-12-10 10:28:52', '1481336921_61-5270.jpg'),
(503, 'TK TUBE PS CONDENSER', 'TK TUBE PS CONDENSER', '1.00', 3, 'active', '2016-12-10 10:30:06', '1481336995_61-5960.jpg'),
(504, 'TK TUBE CON CCV', 'TK TUBE CON CCV', '1.00', 3, 'active', '2016-12-10 10:30:55', '1481337049_61-6068.jpg'),
(505, 'TK VALVE EXP(EX-PART:61-3767)', 'TK VALVE EXP(EX-PART:61-3767)', '1.00', 3, 'active', '2016-12-10 10:31:53', '1481337109_61-6283.jpg'),
(506, 'TK VALVE EXPANSION-SV', 'TK VALVE EXPANSION-SV', '1.00', 3, 'active', '2016-12-10 10:36:30', '1481337384_61-6406.jpg'),
(507, 'TK VALVE SHUTOFF', 'TK VALVE SHUTOFF', '1.00', 3, 'active', '2016-12-10 10:37:29', '1481337442_66-0992.jpg'),
(508, 'TK VALVE LRT-III', 'TK VALVE LRT-III', '1.00', 3, 'active', '2016-12-10 10:38:13', '1481337488_66-1273.jpg'),
(509, 'TK VALVE 3-WAY', 'TK VALVE 3-WAY', '1.00', 3, 'active', '2016-12-10 10:40:03', '1481337598_66-3911.jpg'),
(510, 'TK ADAPTER', 'TK ADAPTER', '1.00', 3, 'active', '2016-12-10 10:40:51', '1481337642_66-5029.jpg'),
(511, 'TK VALVE THROTTLING', 'TK VALVE THROTTLING', '1.00', 3, 'active', '2016-12-10 10:41:41', '1481337691_66-5494.jpg'),
(512, 'TK VALVE CHECK', 'TK VALVE CHECK-T1000R', '1.00', 3, 'active', '2016-12-14 11:01:25', '1481684464_66-5722.jpg'),
(513, 'TK VALVE CHECK-RDII', 'RDII', '1.00', 3, 'active', '2016-12-14 11:02:54', '1481684564_66-5763.jpg'),
(514, 'TK VALVE THROT', 'TK VALVE THROT', '1.00', 3, 'active', '2016-12-14 14:28:01', '1481696865_66-5933.jpg'),
(515, 'TK SWITCH AIR PRESSURE', 'TK SWITCH AIR PRESSURE', '1.00', 3, 'active', '2016-12-14 15:43:27', '1481701381_66-6244.jpg'),
(516, 'TK VALVE HOT GAS PURGE', 'TK VALVE HOT GAS PURGE', '1.00', 3, 'active', '2016-12-14 15:44:31', '1481701454_66-6384.jpg'),
(517, 'TK VALVE RELIFE', 'TK VALVE RELIFE', '1.00', 3, 'active', '2016-12-14 15:45:44', '1481701522_66-7392.jpg'),
(518, 'TK VALVE V250', 'TK VALVE V250', '1.00', 3, 'active', '2016-12-14 15:47:52', '1481701587_66-7590.jpg'),
(519, 'TK SOLENOID VALVE', '12V V500', '1.00', 3, 'active', '2016-12-14 15:51:11', '1481701865_66-7636.jpg'),
(520, 'TK INDICATOR LIQUID', 'TK INDICATOR LIQUID', '1.00', 3, 'active', '2016-12-14 15:52:01', '1481701913_66-7676.jpg'),
(521, 'TK BODY SOLENOID', 'TK BODY SOLENOID', '1.00', 3, 'active', '2016-12-14 15:53:28', '1481702002_66-7878.jpg'),
(522, 'TK VALVE - EXP', 'TK VALVE - EXP', '1.00', 3, 'active', '2016-12-14 15:57:24', '1481702231_66-8284.jpg'),
(523, 'TK FILTER DRIER X900', 'TK FILTER DRIER X900', '1.00', 3, 'active', '2016-12-14 16:51:38', '1481705488_66-8344.jpg'),
(524, 'TK DEHYDRATOR V500', 'TK DEHYDRATOR V500', '1.00', 3, 'active', '2016-12-14 16:53:33', '1481705603_66-8471.jpg'),
(525, 'TK DEHYDRATOR F5L', 'TK DEHYDRATOR F5L', '1.00', 3, 'active', '2016-12-14 16:54:23', '1481705656_66-8472.jpg'),
(526, 'TK OIL SEPARATOR ORING', 'TK OIL SEPARATOR ORING', '1.00', 3, 'active', '2016-12-14 16:56:52', '1481705806_66-8548.jpg'),
(527, 'TK VALVE PILOT SOLENOID', 'TK VALVE PILOT SOLENOID', '1.00', 3, 'active', '2016-12-14 16:57:47', '1481705858_66-8560.jpg'),
(528, 'TK VALVE-CHECK', 'TK VALVE-CHECK', '1.00', 3, 'active', '2016-12-14 16:58:50', '1481705910_66-8669.jpg'),
(529, 'TK SWITCH PRESS DIFF 1.5CA', 'TK SWITCH PRESS DIFF 1.5CA', '1.00', 3, 'active', '2016-12-14 17:01:22', '1481706076_66-8989.jpg'),
(530, 'TK VALVE USED IN F5-L', 'TK VALVE USED IN F5-L', '1.00', 3, 'active', '2016-12-14 17:02:13', '1481706127_66-9005.jpg'),
(531, 'TK VALVE', 'TK VALVE', '1.00', 3, 'active', '2016-12-14 17:03:27', '1481706204_66-9032.jpg'),
(532, 'TK SPRING VALVE THROTTLING', 'TK SPRING VALVE THROTTLING', '1.00', 3, 'active', '2016-12-14 17:04:41', '1481706274_66-9147.jpg'),
(533, 'TK FILTER DRIER LRT-III', 'TK FILTER DRIER LRT-III', '1.00', 3, 'active', '2016-12-14 17:48:26', '1481708867_66-9352.jpg'),
(534, 'TK EXPANSION VALVE UTS', 'TK EXPANSION VALVE UTS', '1.00', 3, 'active', '2016-12-14 17:49:16', '1481708947_66-9747.jpg'),
(535, 'TK RECEIVER TANK F5L', 'TK RECEIVER TANK F5L', '1.00', 3, 'active', '2016-12-15 10:09:45', '1481767774_67-1261.jpg'),
(536, 'TK TANK RECEIVER', 'TK TANK RECEIVER', '1.00', 3, 'active', '2016-12-15 10:11:21', '1481767870_67-2010.jpg'),
(537, 'TK RADIATOR', 'TK RADIATOR - UT 1200', '1.00', 3, 'active', '2016-12-15 10:13:13', '1481767983_67-2850.jpg'),
(538, 'TK KIT IDLER PULLEY', 'TK KIT IDLER PULLEY', '1.00', 3, 'active', '2016-12-15 10:15:55', '1481768139_70-0200.jpg'),
(539, 'TK CLIP FAN HUB', 'TK CLIP FAN HUB', '1.00', 3, 'active', '2016-12-15 10:31:00', '1481769052_77-1464.jpg'),
(540, 'TK PULLEY ALTERNATOR-MDII', 'TK PULLEY ALTERNATOR-MDII', '1.00', 3, 'active', '2016-12-15 10:32:51', '1481769160_77-1703.jpg'),
(541, 'TK PULLEY -ALTERNATOR - UT1200X', 'TK PULLEY -ALTERNATOR - UT1200X', '1.00', 3, 'active', '2016-12-15 10:34:08', '1481769240_77-2022.jpg'),
(542, 'TK BEARING COMPR SHIELDED', 'TK BEARING COMPR SHIELDED', '1.00', 3, 'active', '2016-12-15 10:36:56', '1481769407_77-2306.jpg'),
(543, 'TK BUSHING PULLEY COMPR', 'TK BUSHING PULLEY COMPR', '1.00', 3, 'active', '2016-12-15 10:46:04', '1481769955_77-2537.jpg'),
(544, 'TK ARMATURE-CL & HUB', 'TK ARMATURE-CL & HUB', '1.00', 3, 'active', '2016-12-15 10:48:16', '1481770089_77-2543.jpg'),
(545, 'TK PULLEY ATL 4.0', 'TK PULLEY ATL 4.0', '1.00', 3, 'active', '2016-12-15 11:55:08', '1481774095_77-2710.jpg'),
(546, 'TK V PULLEY', 'TK V PULLEY', '1.00', 3, 'active', '2016-12-15 11:56:57', '1481774211_77-2757.jpg'),
(547, 'TK BUSHING DRIVE - SB III', 'TK BUSHING DRIVE - SB III', '1.00', 3, 'active', '2016-12-15 11:58:02', '1481774270_77-2760.jpg'),
(548, 'TK KIT SWITCH DOOR 3 WIRE', 'TK KIT SWITCH DOOR 3 WIRE', '1.00', 3, 'active', '2016-12-15 12:01:08', '1481774462_70-0307-(40-1135).jpg'),
(549, 'TK BUSHING DRIVE COUPLING', 'TK BUSHING DRIVE COUPLING', '1.00', 3, 'active', '2016-12-15 12:07:00', '1481774813_77-2856.jpg'),
(550, 'TK PULLEY IDLER', 'TK PULLEY IDLER', '1.00', 3, 'active', '2016-12-15 12:08:01', '1481774865_77-2894.jpg'),
(551, 'TK PULLEY-IDLER-UT-1200X', 'TK PULLEY-IDLER-UT-1200X', '1.00', 3, 'active', '2016-12-15 12:09:05', '1481774937_77-2939.jpg'),
(552, 'TK PULLEY – ALTERNATOR – T1000', 'TK PULLEY – ALTERNATOR – T1000', '1.00', 3, 'active', '2016-12-15 12:10:19', '1481775008_77-2964.jpg'),
(553, 'TK BUSHING PULLEY', 'TK BUSHING PULLEY', '1.00', 3, 'active', '2016-12-15 12:11:37', '1481775076_77-2996.jpg'),
(554, 'TK PULLEY EVAP COMP', 'TK PULLEY EVAP COMP', '1.00', 3, 'active', '2016-12-15 12:12:33', '1481775149_77-3036.jpg'),
(555, 'TK PULLEY IDLER(EX-PART: 77-2894)', 'TK PULLEY IDLER(EX-PART: 77-2894)', '1.00', 3, 'active', '2016-12-15 12:13:31', '1481775207_77-3037.jpg'),
(556, 'TK FAN CONDENSER', 'TK FAN CONDENSER', '1.00', 3, 'active', '2016-12-15 12:14:25', '1481775254_78-1264.jpg'),
(557, 'TK BLOWER 24V DUALSCROLL-CITIRT', 'TK BLOWER 24V DUALSCROLL-CITIRT', '1.00', 3, 'active', '2016-12-15 12:15:51', '1481775327_78-1297.jpg'),
(558, 'TK FAN EVAPORATOR (NYLON.CCW)', 'TK FAN EVAPORATOR (NYLON.CCW)', '1.00', 3, 'active', '2016-12-15 12:17:04', '1481775418_78-1307.jpg'),
(559, 'TK FAN VLL 12V BLOW EVA', 'TK FAN VLL 12V BLOW EVA', '1.00', 3, 'active', '2016-12-15 12:18:51', '1481775521_78-1373.jpg'),
(560, 'TK FAN VLL 24V BLOW EVA', 'TK FAN VLL 24V BLOW EVA', '1.00', 3, 'active', '2016-12-15 12:19:48', '1481775581_78-1374.jpg'),
(561, 'TK FAN VLL 255MM 24V CON', 'TK FAN VLL 255MM 24V CON', '1.00', 3, 'active', '2016-12-15 12:31:51', '1481776305_78-1376.jpg'),
(562, 'TK BLOWER 12V KV300 (1E58055G02)', 'TK BLOWER 12V KV300 (1E58055G02)', '1.00', 3, 'active', '2016-12-15 12:32:48', '1481776358_78-1731.jpg'),
(563, 'TK BLOWER 14V', 'TK BLOWER 14V', '1.00', 3, 'active', '2016-12-15 12:33:56', '1481776429_78-1886.jpg'),
(564, 'TK CLAMP - MUFFLER', 'TK CLAMP - MUFFLER', '1.00', 3, 'active', '2016-12-15 12:36:58', '1481776601_91-3896.jpg'),
(565, 'TK BEARING DAMPER', 'TK BEARING DAMPER', '1.00', 3, 'active', '2016-12-15 12:52:09', '1481777523_91-3905.jpg'),
(566, 'TK MOUNT VIBRATION', 'TK MOUNT VIBRATION', '1.00', 3, 'active', '2016-12-15 12:53:27', '1481777601_91-3908.jpg'),
(567, 'TK MOUNT SNUBBER-SUPER II 190', 'TK MOUNT SNUBBER-SUPER II 190', '1.00', 3, 'active', '2016-12-15 12:54:17', '1481777653_91-4043.jpg'),
(568, 'TK MOUNT VIBRATION-SUPER II 190', 'TK MOUNT VIBRATION-SUPER II 190', '1.00', 3, 'active', '2016-12-15 14:42:28', '1481784136_91-4159.jpg'),
(569, 'TK MOUNT-VIBRATION (UTS)', 'TK MOUNT-VIBRATION (UTS)', '1.00', 3, 'active', '2016-12-15 14:52:23', '1481784739_91-5646.jpg'),
(570, 'TK HINGE ROADSIDE DOOR (LOW) - SB210', 'TK HINGE ROADSIDE DOOR (LOW) - SB210', '1.00', 3, 'active', '2016-12-15 14:53:20', '1481784794_92-0386.jpg'),
(571, 'TK COVER ELECTRIC BOX', 'TK COVER ELECTRIC BOX', '1.00', 3, 'active', '2016-12-15 14:54:35', '1481784853_92-2352.jpg'),
(572, 'TK DRAIN TUBE EVAP V700', 'TK DRAIN TUBE EVAP V700', '1.00', 3, 'active', '2016-12-15 14:55:45', '1481784938_92-3466.jpg'),
(573, 'TK GRILLE (KV300)', 'TK GRILLE (KV300)', '1.00', 3, 'active', '2016-12-15 14:56:32', '1481784983_92-4844.jpg'),
(574, 'TK COVER DOOR HANDLE - SB210', 'TK COVER DOOR HANDLE - SB210', '1.00', 3, 'active', '2016-12-15 14:57:48', '1481785063_92-4989.jpg'),
(575, 'TK BRACKET DIN PANEL', 'TK BRACKET DIN PANEL', '1.00', 3, 'active', '2016-12-15 14:58:42', '1481785107_92-5199.jpg'),
(576, 'TK BRACKET', 'TK BRACKET', '1.00', 3, 'active', '2016-12-15 14:59:50', '1481785163_92-5934.jpg'),
(577, 'TK CURB SIDE BRKT W/INSERT', 'TK CURB SIDE BRKT W/INSERT', '1.00', 3, 'active', '2016-12-15 15:01:24', '1481785275_92-7032.jpg'),
(578, 'TK CENTER BRKT WITH INSERTS', 'TK CENTER BRKT WITH INSERTS', '1.00', 3, 'active', '2016-12-15 15:59:33', '1481788766_92-7034.jpg'),
(579, 'TK ALTERNATOR BRACKET - SLOTTED', 'TK ALTERNATOR BRACKET - SLOTTED', '1.00', 3, 'active', '2016-12-15 16:00:34', '1481788829_92-8382.jpg'),
(580, 'TK ALTERNATOR BRACKET - LIFTING', 'TK ALTERNATOR BRACKET - LIFTING', '1.00', 3, 'active', '2016-12-15 16:01:31', '1481788877_92-8383.jpg'),
(581, 'TK ISOLATOR COMPONENT NT PL', 'TK ISOLATOR COMPONENT NT PL', '1.00', 3, 'active', '2016-12-15 16:02:46', '1481788947_92-8822.jpg'),
(582, 'TK HINGE PLASTIC ASSY-V600 COVER', 'TK HINGE PLASTIC ASSY-V600 COVER', '1.00', 3, 'active', '2016-12-15 16:04:42', '1481789046_92-9250.jpg'),
(583, 'TK LATCH KIT DOOR-COLD CUBE', 'TK LATCH KIT DOOR-COLD CUBE', '1.00', 3, 'active', '2016-12-15 16:06:42', '1481789171_92-9344.jpg'),
(584, 'TK RELAY BOX 12V - RV200', 'TK RELAY BOX 12V - RV200', '1.00', 3, 'active', '2016-12-15 16:11:12', '1481789466_93-2197.jpg'),
(585, 'TK T-BOLT', 'TK T-BOLT', '1.00', 3, 'active', '2016-12-15 16:12:54', '1481789567_99-0214.jpg'),
(586, 'TK T-BOLT EVA MOUNT-T 1000R', 'TK T-BOLT EVA MOUNT-T 1000R', '1.00', 3, 'active', '2016-12-15 16:13:53', '1481789621_99-0630.jpg'),
(587, 'TK MOUNT (SB III SR)', 'TK MOUNT (SB III SR)', '1.00', 3, 'active', '2016-12-15 16:15:10', '1481789702_99-1433.jpg'),
(588, 'TK MOUNT', 'TK MOUNT', '1.00', 3, 'active', '2016-12-15 16:16:47', '1481789799_99-4820.jpg'),
(589, 'TK ROD DAMPER', 'TK ROD DAMPER', '1.00', 3, 'active', '2016-12-15 16:18:58', '1481789872_99-9540.jpg'),
(590, 'TK PULLEY IDLER BACK', 'TK PULLEY IDLER BACK', '1.00', 3, 'active', '2016-12-15 16:19:49', '1481789983_108-0397.jpg'),
(591, 'TK COMPRESSOR OIL R134A (X COMPR) - GREEN', 'TK COMPRESSOR OIL R134A (X COMPR) - GREEN', '1.00', 3, 'active', '2016-12-15 16:21:14', '1481790065_203-0513.jpg'),
(592, 'TK COMPRESSOR OIL R404A TM COMPR- BLUE', 'TK COMPRESSOR OIL R404A TM COMPR- BLUE', '1.00', 3, 'active', '2016-12-15 16:22:36', '1481790147_203-0515.jpg'),
(593, 'TK COMPRESSOR OIL', '(EX-P : 203-0516)', '1.00', 3, 'active', '2016-12-15 16:23:50', '1481790224_203-0964.jpg'),
(594, 'TK GAUGE BELT TENSION', 'TK GAUGE BELT TENSION', '1.00', 3, 'active', '2016-12-15 16:24:47', '1481790278_204-0427.jpg'),
(595, 'TK PULLER OIL PUMP', 'TK PULLER OIL PUMP', '1.00', 3, 'active', '2016-12-15 16:28:36', '1481790685_204-0483.jpg');
INSERT INTO `mz_product` (`id_product`, `model_name`, `product_desc`, `price`, `id_category`, `status`, `addedon`, `image_name`) VALUES
(596, 'TK SLIDE HAMMER', 'TK SLIDE HAMMER', '1.00', 3, 'active', '2016-12-15 16:30:06', '1481790593_204-0638.jpg'),
(597, 'TK PRINTER GRAPHIC 12V', 'TK PRINTER GRAPHIC 12V', '1.00', 3, 'active', '2016-12-15 16:32:22', '1481790737_204-0844.jpg'),
(598, 'TK PULLER BRG COMPR', 'TK PULLER BRG COMPR', '1.00', 3, 'active', '2016-12-15 16:33:41', '1481790814_204-1000.jpg'),
(599, 'TK TOOL C5 COMPR CRANK REMOV', 'TK TOOL C5 COMPR CRANK REMOV', '1.00', 3, 'active', '2016-12-15 16:34:49', '1481790885_204-1153.jpg'),
(600, 'TK CONTROLLER SR2 (EX-PN: 452302)', 'TK CONTROLLER SR2 (EX-PN: 452302)', '1.00', 3, 'active', '2016-12-15 16:36:00', '1481790954_845-2570.jpg'),
(601, 'TK INTERFACE BOARD (EX-PN: 452275)', 'TK INTERFACE BOARD (EX-PN: 452275)', '1.00', 3, 'active', '2016-12-15 16:36:54', '1481791008_845-2571.jpg'),
(602, 'my product', 'sddsd', '12345.00', 2, 'delete', '2017-03-21 14:01:50', '1490076101_abc3.jpeg'),
(603, 'SYSTEM MODEL MZ50II 12V', 'HT 50II 12V', '1.00', 2, 'active', '2017-03-23 14:16:55', '1490249805_MZ50.jpg'),
(604, 'TK SLXe-100', 'System Model: TK SLXe-100', '1.00', 2, 'active', '2017-03-23 16:41:57', '1490258482_SLXe100.jpg'),
(605, 'TK SLXe - 400', 'System Model: TK SLXe - 400\r\nWITH ELECTRICAL STANDBY UNIT\r\n400/3/50HZ\r\nWITH ETV AND FUEL TANK 50GAL 18DIA', '1.00', 2, 'active', '2017-03-23 16:42:54', '1490258569_SLXe400.jpg'),
(606, 'TK SB230+', 'System Model: TK SB230+\r\nWITH ELECTRICAL STANDBY UNIT\r\n400/3/50HZ\r\nWITH ETV AND FUEL TANK 50GAL 18DIA', '1.00', 2, 'active', '2017-03-23 16:49:59', '1490258979_SB-230.jpg'),
(607, 'SV-400', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: SV-400 without Electrical standby Unit\r\n                         (Two pce system Type - UNDERMOUNT Condensing unit)\r\nCapacity 	:    0 deg C / +30 deg C : 4360W\r\n		  -20 deg C / +30 deg C : 2100W\r\nAirflow volume	: 1200 m3/hr by dual fans, stronger airflow & bigger capacity', '1.00', 2, 'active', '2017-03-23 16:56:22', '1490259234_SV-400.JPG'),
(608, 'SV-600 MAX 10 24V W/O STANDBY', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: SV-600 without Electrical standby Unit\r\n                         (Two pce system Type - UNDER MOUNT Condensing unit)\r\nCapacity 	:    0 deg C / +30 deg C : 5300W\r\n		  -20 deg C / +30 deg C : 2720W\r\nAirflow volume	: 2500 m3/hr by dual fans, stronger airflow & bigger capacity', '1.00', 2, 'active', '2017-03-23 17:01:38', '1490259526_SV-600.JPG'),
(609, 'SV-800MAX 10 24V W/O STANDBY', 'SYSTEM MODEL SV-800MAX 10 24V W/O STANDBY', '1.00', 2, 'active', '2017-03-23 17:05:49', '1490259944_SV-800.JPG'),
(610, 'CITI RT TK BUS AIR-CON', 'SYSTEM MODEL CITI RT TK BUS AIR-CON', '1.00', 2, 'active', '2017-03-23 17:06:51', '1490260006_CiTi-RT.jpg'),
(611, 'RV-200 MAX10 12V', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: RV-200 without Electrical standby Unit\r\n Capacity 	:    0 deg C / +30 deg C : 2300W\r\n		  -20 deg C / +30 deg C : 1200W\r\nAirflow volume: 700 m3/hr by dual fans, stronger airflow & bigger capacity', '1.00', 2, 'active', '2017-03-23 17:09:44', '1490260175_RV-200.jpg'),
(612, 'V500MAX', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: Thermo King V500MAX without Electrical standby Unit\r\n                         (Two piece system Type)\r\nCapacity 	:    0 deg C / +30 deg C : 4925W\r\n		  -20 deg C / +30 deg C : 2515W\r\n                  -25 deg C / +30 deg C : 1950W\r\nAirflow volume	: 2400 cfm', '1.00', 2, 'active', '2017-03-23 17:13:13', '1490260388_V500MAX.jpg'),
(613, 'MZ100II 12V', 'HT 100II', '1.00', 2, 'active', '2017-03-23 17:18:07', '1490260680_MZ100.jpg'),
(614, 'MZ250II 12V', 'HT 250II', '1.00', 2, 'active', '2017-03-23 17:19:21', '1490260750_MZ250.jpg'),
(615, 'TK T1200R 50 WITH ELECTRICAL STANDBY', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: Thermo King T1200R with Electrical standby Unit\r\n                         (Self Powered System - Green Tech Engine TK376)\r\n		         X430 Reciprocating Compressor, HMI Controller, \r\n		         EMI - Extended Maintenance Interval 2000 hrs Filters\r\nCapacity 	:    0 deg C / +30 deg C : 11500W\r\n		  -20 deg C / +30 deg C :   6900W\r\nAirflow volume	: 3300 cfm', '1.00', 2, 'active', '2017-03-23 17:36:49', '1490261774_T1200RSPEC.JPG'),
(616, 'TK COLDCUBE 37', 'System Model: TK COLDCUBE 37', '1.00', 2, 'active', '2017-03-23 17:54:54', '1490262886_COLDCUBE-SMALL.png'),
(617, 'TK COLDCUBE 87', 'System Model: TK COLDCUBE 87', '1.00', 2, 'active', '2017-03-23 17:55:53', '1490262943_COLDCUBEMEDIUM.jpg'),
(618, 'TK COLDCUBE 242', 'System Model: TK COLDCUBE 242', '1.00', 2, 'active', '2017-03-23 17:57:12', '1490263003_cold_cubeBIG.jpg'),
(619, 'MZ310 12V MONOBLOCK SYSTEM WITH ESC', 'SYSTEM MODEL HT-100MB ESC DC12V,R404A             \r\nW/O COMPRESSOR                                    \r\nESC 380V/3P/50HZ', '1.00', 2, 'active', '2017-03-23 18:09:56', '1490263788_MZ310.jpg'),
(620, 'MZ370 12V MONOBLOCK SYSTEM WITH ESC', 'SYSTEM MODEL HT-250MB ESC DC12V,R404A             \r\nW/O COMPRESSOR                                    \r\nESC 380V/3P/50HZ', '1.00', 2, 'delete', '2017-03-23 18:10:54', '1490263849_MZ370.jpg'),
(621, 'MODEL MZ370 24V MONOBLOCK SYSTEM WITH ESC', 'SYSTEM MODEL HT-250MB ESC DC24V,R404A             \r\nW/O COMPRESSOR                                    \r\nESC 380V/3P/50HZ', '1.00', 2, 'active', '2017-03-23 18:11:44', '1490263899_MZ370.jpg'),
(622, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA GVW 3500 KG 10 FOOTER - G PLATE DIESEL EURO 5 WITH MANUAL (MT)', 'Inclusive of 5% ARF, 7% GST, 06 Months Road Tax (After Rebate), CD Player With Radio & Rust-Proofing, Aircon, Registration Fees, Central Locking, Power Steering, 4 Times Free Servicing to be provided for local registration with interval of 15,000kms/ 3 Months Whichever Comes First and Warranty is 3 Years OR 100,000KM Whichever Comes First (Parts & Labor Only)\r\nEXCLUDE: INSURANCE & COE\r\n\r\nTRUCK PRICE SUBJECT TO CHANGE WITH OR WITHOUT NOTICE GIVEN AND WILL BE REVISED AFTER NEXT COE BIDDING RESULT\r\n\r\nPRICE FOR TRUCK: S$ 40,800.00 PER UNIT\r\n\r\n*REMARKS:-\r\n- Customer using Early Turnover Scheme (ETS), OR\r\n- Current COE: S$ 50,001.00\r\n- Customer to provide ceiling price for COE bidding\r\n- COE bidding amount indication should not be lower than a range of S$ 5,000.00 from\r\nthe current COE price. (eg. current COE S$ 45,001 customer request bidding price is not allowed to be lower than S$ 40,001.)\r\n- Maximum 6 times bidding, on the 6th bidding the customer is compulsory to accept any bidding amount to get the vehicle on the road', '40800.00', 4, 'active', '2017-03-24 17:12:22', '1490346735_Sample.png'),
(623, 'SYSTEM MODEL MZ440 12V MONOBLOCK SYSTEM', 'HT 250MB', '1.00', 2, 'active', '2017-04-05 11:25:11', '1491362683_MZ440.jpg'),
(624, 'SYSTEM MODEL MZ500II DC24V, R404A', 'Refrigeration System Configuration:\r\nSystem Model: MZ500 without Electrical Standby Unit \r\n                         (Two-piece system)\r\nCapacity:         0 deg C / +30 deg C: 5931W\r\n                       -20 deg C / +30 deg C: 2874W\r\nAirflow volume: 2300 m3/hr\r\nRefrigerant: R404A', '1.00', 2, 'active', '2017-04-05 11:54:59', '1491364493_MZ500.jpg'),
(625, 'SYSTEM MODEL MZ650 MONOBLOCK SYSTEM', 'SYSTEM MODEL: MZ650 MONOBLOCK SYSTEM', '1.00', 2, 'active', '2017-04-05 11:56:05', '1491364557_MZ650.jpg'),
(626, 'SYSTEM MODEL V500MAX', 'Refrigeration System Configuration:\r\nSystem Model	: Thermo King V500MAX without Electrical standby Unit\r\n                         (Two piece system Type)\r\nCapacity 	: 0 deg C / +30 deg C : 4925W\r\n		  -20 deg C / +30 deg C : 2515W\r\n                  -25 deg C / +30 deg C : 1950W\r\nAirflow volume	: 2400 cfm', '1.00', 2, 'active', '2017-04-05 11:58:00', '1491364670_V500MAX.jpg'),
(627, 'SYSTEM MODEL V700MAX 50', 'SYSTEM MODEL: V700MAX 50', '1.00', 2, 'active', '2017-04-05 11:59:34', '1491364765_V-700-.jpg'),
(628, 'SYSTEM MODEL V800MAX 10 24V WITHOUT ESC', 'Refrigeration System Configuration:\r\n\r\nSystem Model: Thermo King V800MAX without Electrical Standby Unit \r\n                         (Two-piece system Type)\r\nCapacity        :    0 deg C / +30 deg C: 7790W\r\n                          -20 deg C / +30 deg C: 4160W\r\nAirflow volume: 2680 m3/hr', '1.00', 2, 'active', '2017-04-05 12:03:03', '1491364976_V-800.jpg'),
(629, 'SYSTEM MODEL: TK PRECEDENT S600 TRAILER SYSTEM', 'WITH ELECTRICAL STANDBY UNIT\r\n400/3/50HZ\r\nWITH ETV AND FUEL TANK 50GAL 18DIA', '1.00', 2, 'active', '2017-04-05 12:05:56', '1491365145_PrecedentS600M.jpg'),
(630, 'SYSTEM MODEL TK SB210+', 'WITH ELECTRICAL STANDBY UNIT                      \r\n/3PHASE/50 HZ', '1.00', 2, 'active', '2017-04-05 12:07:14', '1491365224_SB-210+.jpg'),
(631, 'EUTECTIC PLATES SYSTEM D3.5QY1', 'EUTECTIC PLATES SYSTEM \r\n- UNDER MOUNT CONDENSING UNIT COMPRESSOR \r\nMODEL: D3.5QY1 (3HP) VOLTAGE : 400W/3PHASE/50HZ', '1.00', 2, 'active', '2017-04-05 12:09:43', '1491365372_EUTECTIC-UNDERMOUNT.JPG'),
(632, 'SYSTEM MODEL TK T800M 50 WITH ELECTRICAL STANDBY', 'Refrigeration System Configuration:\r\n\r\nSystem Model: Thermo King T800M with Electrical Standby Unit \r\n                        (Self-Powered System - Green Tech Engine TK370)\r\n                        X214 Reciprocating Compressor, HMI Controller, \r\n                        EMI - Extended Maintenance Interval 2000 hrs Filters\r\nCapacity:    0 deg C / +30 deg C: 7500W\r\n                   -20 deg C / +30 deg C: 4250W\r\nAirflow volume: 2700 m3/hr', '1.00', 2, 'active', '2017-04-05 12:19:44', '1491365973_T800M.PNG'),
(633, 'SYSTEM MODEL TK T1000R', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: Thermo King T1000R with Electrical Standby Unit \r\n                         (Self-Powered System - Green Tech Engine TK376)\r\n		  X426 Reciprocating Compressor, HMI Controller, \r\n		 EMI - Extended Maintenance Interval 2000 hrs Filters\r\nCapacity 	:    0 deg C / +30 deg C: 10000W\r\n		  -20 deg C / +30 deg C: 5400W\r\nAirflow volume: 3200 m3/hr', '1.00', 2, 'active', '2017-04-05 12:24:33', '1491366262_T-1000R.PNG'),
(634, 'SYSTEM MODEL T1000M', 'Refrigeration System Configuration:\r\n\r\nSystem Model: Thermo King T1000M Whispher with Electrical Standby Unit\r\n                        (Self-Powered System - Green Tech Engine TK376)\r\n                        X426 Reciprocating Compressor, HMI Controller, \r\n                        EMI - Extended Maintenance Interval 2000 hrs Filters\r\nCapacity	   :  0 deg C / +30 deg C: 8700W\r\n                      -20 deg C / +30 deg C: 5200W\r\nAirflow volume: 3200 cfm  ', '1.00', 2, 'active', '2017-04-05 12:25:52', '1491366343_T1000M.jpg'),
(635, 'SYSTEM MODEL T1000R SPECTRUM S3+S3 EVAPORATOR', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: Thermo King T1000R SPECTRUM with Electrical Standby Unit (Two Zone)\r\n                          (Self-Powered Engine Drive System) \r\n		          EMI - Extended Maintenance Interval 2000 hrs Filters\r\nCapacity 	: 0 deg C / +30 deg C: 9600W\r\n		  -20 deg C / +30 deg C: 5600W\r\nAirflow volume: 1980 m3/hr x 1unit S-3 Evaporator (Freezer or Chiller Compartment)\r\nRefrigerant	: HFC R404a\r\n* Price inclusive of 1x Vertical Fixed Partition', '1.00', 2, 'active', '2017-04-05 12:27:16', '1491366427_T-1000SPECTRUM.PNG'),
(636, 'SYSTEM MODEL: TK TZ1200', 'Refrigeration System Configuration:\r\n\r\nSystem Model: Thermo King TZ1200MAX without Electrical Standby Unit \r\n                        (Monoblock system - Zero cube)\r\nCapacity        : 0 deg C / +30 deg C : 9880W\r\n                        -25 deg C / +30 deg C: 5120W\r\nAirflow volume: 3200 m3/hr', '1.00', 2, 'active', '2017-04-05 12:32:42', '1491366753_TZ1200.JPG'),
(637, 'SYSTEM MODEL TZ800 DC24V', 'Refrigeration System Configuration:\r\n\r\nSystem Model: Thermo King TZ800MAX without Electrical Standby Unit \r\n                         (Monoblock system - Zero Cube)\r\nCapacity        :    0 deg C / +30 deg C: 6630W\r\n                          -25 deg C / +30 deg C: 2670W\r\nAirflow volume: 2300 m3/hr', '1.00', 2, 'active', '2017-04-05 12:35:52', '1491366947_TZ800.JPG'),
(638, 'SYSTEM MODEL : TK TZ1000', 'Refrigeration System Configuration:\r\n\r\nSystem Model	: Thermo King TZ1000MAX without Electrical Standby Unit\r\n		(Monoblock System - Zero Cube)\r\nCapacity 	:  0 deg C / +30 deg C : 8700W\r\n		  -20 deg C / +30 deg C : 5200W\r\nAirflow volume: 3200 cfm3/hr', '1.00', 2, 'active', '2017-04-05 12:37:43', '1491367057_TZ1200.JPG'),
(639, 'SYSTEM MODEL UT-1200 S3 SR 400V', 'SYSTEM MODEL UT-1200 S3 SR 400V', '1.00', 2, 'active', '2017-04-05 12:41:51', '1491367300_UT-1200.JPG'),
(640, 'SYSTEM MODEL TK T600M WITH STANDBY UNIT', 'Refrigeration System Configuration:\r\n\r\nSystem Model: Thermo King T600 with Electrical Standby Unit \r\n                         (Self-Powered System – Green Tech Engine TK370)\r\nX214 Reciprocating Compressor, HMI Controller\r\nEMI – Extended Maintenance Interval 2000 hrs Filters\r\nCapacity           :    0 deg C / +30 deg C : 6200W\r\n                          -20 deg C / +30 deg C: 4000W\r\nAirflow volume: 2700 m3/hr', '1.00', 2, 'active', '2017-04-05 12:44:28', '1491367454_T-600.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `mz_product_attr`
--

CREATE TABLE `mz_product_attr` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `id_category` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','delete') NOT NULL DEFAULT 'active',
  `type` enum('dropdown','checkbox','radio') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_product_attr`
--

INSERT INTO `mz_product_attr` (`id`, `label`, `id_category`, `pid`, `price`, `added_on`, `status`, `type`) VALUES
(2, 'Quotation Subject', 0, 0, '0.00', '2016-06-16 11:39:12', 'active', 'dropdown'),
(107, 'Box External Dimension', 1, 0, '0.00', '2016-10-20 09:13:48', 'active', 'dropdown'),
(109, 'Exterior Wall', 1, 0, '0.00', '2016-10-20 09:14:48', 'active', 'dropdown'),
(110, 'Interior Wall', 1, 0, '0.00', '2016-10-20 09:15:32', 'active', 'dropdown'),
(111, 'Interior Floor', 1, 0, '0.00', '2016-10-20 09:16:22', 'active', 'dropdown'),
(112, 'Insulation', 1, 0, '0.00', '2016-10-20 09:16:43', 'active', 'dropdown'),
(113, 'Doors', 1, 0, '0.00', '2016-10-20 09:16:57', 'active', 'dropdown'),
(114, 'Door Frame', 1, 0, '0.00', '2016-10-20 09:17:09', 'active', 'dropdown'),
(115, 'Hinges', 1, 0, '0.00', '2016-10-20 09:17:26', 'active', 'dropdown'),
(116, 'Handles and Locks', 1, 0, '0.00', '2016-10-20 09:17:43', 'active', 'dropdown'),
(117, 'Lighting', 1, 0, '0.00', '2016-10-20 09:18:03', 'active', 'dropdown'),
(118, 'Misc', 1, 0, '0.00', '2017-04-12 18:36:51', 'active', 'checkbox'),
(119, 'Tailgates', 5, 0, '0.00', '2016-10-20 09:21:59', 'active', 'dropdown'),
(120, 'Retractable Tailgate (Different Models)', 0, 119, '100.00', '2016-10-20 09:22:16', 'active', NULL),
(121, 'Cantilever Tailgate (Different Models)', 0, 119, '120.00', '2016-10-20 09:23:57', 'active', NULL),
(122, 'System Model (Capacity and Airflow):', 2, 0, '0.00', '2016-10-20 09:24:58', 'active', 'dropdown'),
(123, 'MZ050', 0, 122, '10.00', '2016-10-20 09:25:21', 'active', NULL),
(124, 'MZ050UM', 0, 122, '10.00', '2016-10-20 09:25:37', 'active', NULL),
(125, 'MZ100', 0, 122, '100.00', '2016-10-20 09:30:53', 'active', NULL),
(126, 'Open Truck Box', 4, 0, '0.00', '2016-10-20 09:33:43', 'active', 'dropdown'),
(127, 'Spares and Parts', 3, 0, '0.00', '2016-10-20 09:34:12', 'active', 'dropdown'),
(128, 'Warranty', 2, 0, '0.00', '2016-10-20 09:34:47', 'active', 'dropdown'),
(129, 'Servicing', 2, 0, '0.00', '2017-04-06 04:41:09', 'active', 'dropdown'),
(130, 'New Vehicle Chassis Model - Truck', 4, 0, '0.00', '2016-10-20 09:37:44', 'active', 'dropdown'),
(131, '1 YEAR COMPREHESIVE MAINTENANCE - 3 TIMES SERVICING', 0, 129, '0.00', '2016-10-20 09:39:31', 'active', NULL),
(132, '2 YEARS COMPREHESIVE MAINTENANCE - 6 TIMES SERVICING', 0, 129, '0.00', '2016-10-20 09:39:55', 'active', NULL),
(133, '3 YEARS COMPREHESIVE MAINTENANCE - 9 TIMES SERVICING', 0, 129, '0.00', '2016-10-20 09:40:11', 'active', NULL),
(134, 'INCLUDE 1 YEAR WARRANTY', 0, 128, '10.00', '2017-04-05 23:54:28', 'active', NULL),
(135, 'INCLUDE 2 YEARS WARRANTY', 0, 128, '2500.00', '2017-04-05 23:55:47', 'active', NULL),
(136, 'INCLUDE 3 YEARS WARRANTY', 0, 128, '10.00', '2017-04-05 23:56:23', 'active', NULL),
(137, 'Aluminum Covered Box', 0, 126, '0.00', '2016-10-20 09:44:36', 'active', NULL),
(138, 'Canopy Cover', 0, 126, '0.00', '2016-10-20 09:44:52', 'active', NULL),
(139, 'Wooden Platform', 0, 126, '0.00', '2016-10-20 09:45:07', 'active', NULL),
(140, '1 pce of fluorescent white light to be installed to the ceiling', 0, 117, '100.00', '2016-10-20 09:46:58', 'active', NULL),
(141, '2 pce of fluorescent white light to be installed to the ceiling', 0, 117, '0.00', '2016-10-20 09:47:27', 'active', NULL),
(142, '3 pce of fluorescent white light to be installed to the ceiling', 0, 117, '0.00', '2016-10-20 09:47:44', 'active', NULL),
(143, 'Stainless Steel Type', 0, 114, '123.00', '2016-10-25 09:15:33', 'active', NULL),
(144, 'Stainless Steel Type - External Handles c/w Locks & Keys', 0, 116, '120.00', '2016-10-20 09:48:44', 'active', NULL),
(153, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', 0, 116, '1868.00', '2016-10-25 09:14:32', 'active', NULL),
(154, 'Retractable Tailgate (Different Models)', 0, 119, '12500.00', '2016-10-25 09:16:13', 'active', NULL),
(155, 'PVC Drainage Stop Valve', 0, 118, '0.00', '2016-10-25 09:16:40', 'active', NULL),
(156, 'MZ050UM', 0, 122, '0.00', '2016-10-25 09:17:12', 'active', NULL),
(157, 'Internal Siren Alarm and Water Proof Lighting Switches', 0, 118, '0.00', '2016-10-25 09:17:33', 'active', NULL),
(158, 'Stainless Steel Type', 0, 115, '0.00', '2016-10-25 09:17:57', 'active', NULL),
(159, '1 set of Double swing door on the back of container No Side Door', 0, 113, '0.00', '2016-10-25 09:18:24', 'active', NULL),
(160, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', 0, 109, '0.00', '2016-10-25 09:18:48', 'active', NULL),
(161, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', 0, 112, '0.00', '2016-10-25 09:19:25', 'active', NULL),
(162, 'Coverage with Stainless Steel Flat Sheet', 0, 111, '0.00', '2016-10-25 09:19:44', 'active', NULL),
(163, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 8FT High Aluminium Checker Plate all round', 0, 110, '0.00', '2016-10-25 09:20:06', 'active', NULL),
(168, '10 FEET INSULATED LOW BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:36:49', 'active', NULL),
(169, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:37:02', 'active', NULL),
(170, '12 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:39:47', 'active', NULL),
(171, '14 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:40:00', 'active', NULL),
(172, '15 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:40:14', 'active', NULL),
(173, '16 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:40:25', 'active', NULL),
(174, '17 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:40:36', 'active', NULL),
(175, '18 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:40:45', 'active', NULL),
(176, '20 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:40:55', 'active', NULL),
(177, '24 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-24 23:41:05', 'active', NULL),
(178, '25.5 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 0, 2, '0.00', '2017-03-31 01:03:25', 'active', NULL),
(179, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA 10 FOOTER', 0, 130, '40800.00', '2017-03-24 23:50:42', 'active', NULL),
(180, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 1 FT High Aluminum Checker Plate all round', 0, 110, '0.00', '2017-03-30 23:04:14', 'active', NULL),
(181, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 2 FT High Aluminum Checker Plate all round', 0, 110, '0.00', '2017-03-30 23:04:45', 'active', NULL),
(182, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 4 FT High Aluminum Checker Plate all round', 0, 110, '0.00', '2017-03-30 23:05:12', 'active', NULL),
(183, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS Full Height Aluminum Checker Plate all round', 0, 110, '0.00', '2017-03-30 23:05:31', 'active', NULL),
(184, '10FT L3080MMXW1700MMXH1200MM', 0, 107, '1.00', '2017-03-31 00:02:02', 'active', NULL),
(185, '10FT L3080MMXW1700MMXH1900MM', 0, 107, '1.00', '2017-03-31 00:02:29', 'active', NULL),
(186, '12FT L3660MMXW2100MMXH2100MM', 0, 107, '1.00', '2017-03-31 00:02:49', 'active', NULL),
(187, '13FT L3960MMXW2100MMXH2100MM', 0, 107, '1.00', '2017-03-31 00:03:04', 'active', NULL),
(188, '14FT L4270MMXW2100MMXH2100MM', 0, 107, '1.00', '2017-03-31 00:03:13', 'active', NULL),
(189, '15FT L4500MMXW2100MMXH2100MM', 0, 107, '1.00', '2017-03-31 00:03:25', 'active', NULL),
(190, '16FT L4880MMXW2100MMXH2100MM', 0, 107, '1.00', '2017-03-31 00:03:41', 'active', NULL),
(191, '17FT L5200MMXW2100MMXH2100MM', 0, 107, '1.00', '2017-03-31 00:03:52', 'active', NULL),
(192, '18FT L5490MMXW2200MMXH2300MM', 0, 107, '0.00', '2017-03-31 00:04:17', 'active', NULL),
(193, '20FT L6100MMXW2200MMXH2300MM', 0, 107, '0.00', '2017-03-31 00:04:46', 'active', NULL),
(194, '21FT L6400MMXW2300MMXH2300MM', 0, 107, '0.00', '2017-03-31 00:06:55', 'active', NULL),
(195, '24FT L7320MMXW2500MMXH2500MM', 0, 107, '0.00', '2017-03-31 00:07:18', 'active', NULL),
(196, '25.5FT L7777MMXW2600MMXH2500MM', 0, 107, '0.00', '2017-03-31 01:03:12', 'active', NULL),
(197, 'Furnished with Woven Roving S Plus Gel coated UV Resistance GRP (Glass Reinforcement Panel) - Made in Germany', 0, 109, '0.00', '2017-04-04 00:36:41', 'active', NULL),
(198, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 1 FT High Stainless Steel Checker Plate all round', 0, 110, '0.00', '2017-04-04 00:45:10', 'active', NULL),
(199, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 2 FT High Stainless Steel Checker Plate all round', 0, 110, '0.00', '2017-04-04 00:45:32', 'active', NULL),
(200, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 4 FT High Stainless Steel Checker Plate all round', 0, 110, '0.00', '2017-04-04 00:45:46', 'active', NULL),
(201, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS Full Height Stainless Steel Checker Plate all round', 0, 110, '0.00', '2017-04-04 00:46:08', 'active', NULL),
(202, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 1 FT High Stainless Steel Flat Sheet all round', 0, 110, '0.00', '2017-04-04 00:47:33', 'active', NULL),
(203, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 2 FT High Stainless Steel Flat Sheet all round', 0, 110, '0.00', '2017-04-04 00:47:44', 'active', NULL),
(204, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 4 FT High Stainless Steel Flat Sheet all round', 0, 110, '0.00', '2017-04-04 00:47:55', 'active', NULL),
(205, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS Full Height Stainless Steel Flat Sheet all round', 0, 110, '0.00', '2017-04-04 00:48:51', 'active', NULL),
(206, 'Coverage with Aluminum Checker Plate', 0, 111, '0.00', '2017-04-04 00:51:36', 'active', NULL),
(207, 'Coverage with Stainless Steel Checker Plate', 0, 111, '0.00', '2017-04-04 00:53:11', 'active', NULL),
(208, 'Coverage with Stainless Steel Corrugated', 0, 111, '0.00', '2017-04-04 00:53:50', 'active', NULL),
(209, 'Coverage with Aluminum Corrugated Flooring', 0, 111, '0.00', '2017-04-04 00:57:25', 'active', NULL),
(210, '50mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', 0, 112, '0.00', '2017-04-04 00:58:10', 'active', NULL),
(211, '100mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', 0, 112, '0.00', '2017-04-04 00:58:22', 'active', NULL),
(212, '1 set of Double swing door on the back of container & 1 single swing door on the left hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:00:28', 'active', NULL),
(213, '1 set of Double swing door on the back of container & 1 single swing door on the left & right hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:00:42', 'active', NULL),
(214, '1 set of Double swing door on the back of container & 2 single swing door on the left hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:01:02', 'active', NULL),
(215, '1 set of Double swing door on the back of container & 1 set butterfly door on the left hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:02:19', 'active', NULL),
(216, '1 set of Double swing door on the back of container & 2 sets butterfly door on the left & right hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:03:11', 'active', NULL),
(217, '1 set of Double swing door on the back of container & 3 single swing door on the left & right hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:03:29', 'active', NULL),
(218, '1 set of Double swing door on the back of container & 2 single swing door on the left & right hand side of the insulated box', 0, 113, '0.00', '2017-04-04 01:04:30', 'active', NULL),
(219, '1 pc of lighting – Power LED Cool white Lighting 8Watt / IP66 (Waterproofing & Low Temperature certification)', 0, 117, '0.00', '2017-04-04 01:07:08', 'active', NULL),
(220, '2 pcs of lighting – Power LED Cool white Lighting 8Watt / IP66 (Waterproofing & Low Temperature certification)', 0, 117, '0.00', '2017-04-04 01:07:25', 'active', NULL),
(221, '3 pcs of lighting – Power LED Cool white Lighting 8Watt / IP66 (Waterproofing & Low Temperature certification)', 0, 117, '0.00', '2017-04-04 01:07:35', 'active', NULL),
(222, 'Internal Siren Alarm & water proof lighting switches', 0, 118, '0.00', '2017-04-04 01:08:40', 'active', NULL),
(223, 'High Quality Ribbed PVC Strips curtains', 0, 118, '0.00', '2017-04-04 01:08:58', 'active', NULL),
(224, 'Rear Bumper Stopper', 0, 118, '0.00', '2017-04-04 01:09:14', 'active', NULL),
(225, 'Advertisement - Simple Company name & Logo', 0, 118, '0.00', '2017-04-04 01:09:53', 'active', NULL),
(226, '1YR 1X SERVICING', 0, 129, '0.00', '2017-04-05 23:56:44', 'active', NULL),
(227, '1YR 3X SERVICING', 0, 129, '0.00', '2017-04-05 23:56:56', 'active', NULL),
(228, '2YR 6X SERVICING', 0, 129, '0.00', '2017-04-05 23:57:29', 'active', NULL),
(229, '3YRS 9X SERVICING', 0, 129, '0.00', '2017-04-05 23:57:48', 'active', NULL),
(230, 'NO SERVICING', 0, 129, '0.00', '2017-04-05 23:57:58', 'active', NULL),
(231, 'Thermo King SV-400 without Electrical standby unit', 0, 122, '0.00', '2017-04-06 00:05:01', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mz_quotation`
--

CREATE TABLE `mz_quotation` (
  `id_quotation` int(11) NOT NULL,
  `quotation_num` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `fax` varchar(40) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','confirmed','delete') NOT NULL DEFAULT 'pending',
  `salesperson_id` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `quotation_subject` int(11) NOT NULL,
  `reminder_date` date NOT NULL,
  `reminder_email` varchar(255) DEFAULT NULL,
  `type` enum('quotation','eagreement') NOT NULL DEFAULT 'quotation',
  `total_price` decimal(10,2) NOT NULL,
  `discount_code` varchar(45) DEFAULT NULL,
  `discount_amt` decimal(10,2) DEFAULT '0.00',
  `currency_type` enum('SGD','MYR') NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `agreement_num` varchar(255) DEFAULT NULL,
  `id_customer` int(11) NOT NULL,
  `agreement_id` int(5) DEFAULT NULL,
  `quotation_num_id` int(5) DEFAULT NULL,
  `terms_conditions` text NOT NULL,
  `terms_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_quotation`
--

INSERT INTO `mz_quotation` (`id_quotation`, `quotation_num`, `company_name`, `company_address`, `phone`, `fax`, `contact_person`, `email`, `added_on`, `status`, `salesperson_id`, `updated_on`, `quotation_subject`, `reminder_date`, `reminder_email`, `type`, `total_price`, `discount_code`, `discount_amt`, `currency_type`, `remarks`, `agreement_num`, `id_customer`, `agreement_id`, `quotation_num_id`, `terms_conditions`, `terms_title`) VALUES
(1, 'QT2016-00000001', 'Test', 'Test', '112334343', '323323232', 'Qbhi', 'ab@gm.com', '2017-03-23 19:19:52', 'confirmed', 2, '2017-04-05 17:29:54', 165, '2017-03-23', NULL, 'eagreement', '29700.00', 'disc1', '12.00', 'MYR', '0', 'EA2016-00000001', 66, 1, 1, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(2, 'QT2016-00000002', 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-23 19:33:54', 'pending', 1, '2017-03-23 14:26:27', 165, '2017-04-10', NULL, 'quotation', '16368.00', '', '0.00', 'SGD', '0', NULL, 67, NULL, 2, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(3, 'QT2016-00000003', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:35:47', 'confirmed', 8, '2017-03-23 20:17:14', 165, '2017-03-23', NULL, 'quotation', '14500.00', 'disc1', '12.00', 'MYR', '0', NULL, 63, NULL, 3, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(4, 'QT2016-00000004', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:36:16', 'pending', 5, '2017-03-23 20:17:14', 165, '2017-04-10', NULL, 'quotation', '14500.00', '', '0.00', 'SGD', '0', NULL, 63, NULL, 4, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(5, 'QT2016-00000005', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:36:20', 'confirmed', 8, '2017-03-23 20:17:14', 145, '2017-03-23', NULL, 'eagreement', '104502.00', '', '0.00', 'MYR', '0', 'EA2016-00000002', 63, 2, 5, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(6, 'QT2016-00000006', 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-23 19:37:13', 'pending', 5, '2017-03-23 14:26:27', 165, '2017-04-10', NULL, 'quotation', '45000.00', '', '0.00', 'SGD', '0', NULL, 67, NULL, 6, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(7, 'QT2016-00000007', 'Apple Pte Ltd', '51 Senoko Drive', '63651315', '63652062', 'Mr. Teoh', 'teoh@monzone-aircon.com', '2017-03-23 19:37:22', 'pending', 8, '2017-03-23 14:25:41', 165, '2017-04-10', NULL, 'quotation', '3.00', '', '0.00', 'SGD', '0', NULL, 65, NULL, 7, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(8, 'QT2016-00000008', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:37:55', 'pending', 8, '2017-03-23 20:17:14', 165, '2017-04-10', NULL, 'quotation', '45001.00', '', '0.00', 'SGD', '0', NULL, 63, NULL, 8, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(9, 'QT2016-00000009', 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-23 19:38:37', 'pending', 8, '2017-03-23 14:26:27', 145, '2017-04-10', NULL, 'quotation', '90000.00', '', '0.00', 'SGD', '0', NULL, 67, NULL, 9, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(10, 'QT2016-00000010', 'Test', 'Test', '112334343', '323323232', 'Qbhi', 'ab@gm.com', '2017-03-23 19:39:20', 'pending', 8, '2017-04-05 17:29:54', 145, '2017-04-10', NULL, 'quotation', '4.00', '', '0.00', 'SGD', '0', NULL, 66, NULL, 10, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(11, 'QT2016-00000011', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:39:23', 'pending', 5, '2017-03-23 20:17:14', 165, '2017-04-10', NULL, 'quotation', '29501.00', '', '0.00', 'SGD', '0', NULL, 63, NULL, 11, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(12, 'QT2016-00000012', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:40:10', 'pending', 5, '2017-03-23 20:17:14', 145, '2017-04-10', NULL, 'quotation', '3.00', '', '0.00', 'SGD', '0', NULL, 63, NULL, 12, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(13, 'QT2016-00000013', 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-23 19:40:45', 'pending', 5, '2017-03-23 14:26:27', 145, '2017-04-10', NULL, 'quotation', '1.00', '', '0.00', 'SGD', '0', NULL, 67, NULL, 13, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(14, 'QT2016-00000014', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:43:03', 'pending', 5, '2017-03-23 20:17:14', 165, '2017-04-10', NULL, 'quotation', '1.00', '', '0.00', 'SGD', '0', NULL, 63, NULL, 14, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(15, 'QT2016-00000015', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:43:55', 'pending', 5, '2017-03-23 21:14:45', 165, '2017-04-10', NULL, 'eagreement', '59511.00', '', '0.00', 'MYR', '0', 'EA2016-00000006', 63, 6, 15, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(16, 'QT2016-00000016', 'abc', 'vdvdvd', '2147483647', '2147483647', 'riya', 'riya@gmail.com', '2017-03-23 19:50:17', 'confirmed', 1, '2017-03-30 16:37:23', 145, '2017-03-23', NULL, 'eagreement', '135000.00', '', '0.00', 'MYR', '0', 'EA2016-00000003', 41, 3, 16, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(17, 'QT2016-00000017', 'Consumer', 'Consumer Address', '123467890', '2147483647', 'New Consumer', 'con@con.com', '2017-03-23 19:50:49', 'confirmed', 1, '2017-03-23 13:13:41', 145, '2017-03-23', NULL, 'quotation', '14601.00', 'disc1', '12.00', 'MYR', '0', NULL, 30, NULL, 17, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(18, 'QT2016-00000018', 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-23 19:52:14', 'pending', 2, '2017-03-23 14:26:27', 165, '2017-04-10', NULL, 'quotation', '1.00', '', '0.00', 'SGD', '0', NULL, 67, NULL, 18, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(19, 'QT2016-00000019', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 19:53:40', 'confirmed', 1, '2017-03-23 20:17:14', 165, '2017-03-23', NULL, 'quotation', '14500.00', 'disc1', '12.00', 'MYR', '0', NULL, 63, NULL, 19, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(20, 'QT2016-00000020', 'abc', 'vdvdvd', '2147483647', '2147483647', 'riya', 'riya@gmail.com', '2017-03-23 20:00:24', 'confirmed', 2, '2017-03-30 16:37:23', 165, '2017-03-23', NULL, 'eagreement', '1.00', '', '0.00', 'MYR', '0', 'EA2016-00000004', 41, 4, 20, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(21, 'QT2016-00000021', 'abc', 'vdvdvd', '2147483647', '2147483647', 'riya', 'riya@gmail.com', '2017-03-23 20:44:50', 'pending', 2, '2017-03-30 16:37:23', 165, '2017-04-10', NULL, 'quotation', '14843.00', '', '0.00', 'MYR', '0', NULL, 41, NULL, 21, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(22, 'QT2016-00000022', 'Apple Pte Ltd', '51 Senoko Drive', '63651315', '63652062', 'Mr. Teoh', 'teoh@monzone-aircon.com', '2017-03-23 21:25:41', 'pending', 2, '2017-03-23 14:25:41', 165, '2017-04-10', NULL, 'quotation', '14500.00', '', '0.00', 'MYR', '0', NULL, 65, NULL, 22, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(23, 'QT2016-00000023', 'Test-ashish', 'Omaxe', '223456788', '987654322', 'Ashish', 'ashis3h@singsys.com', '2017-03-23 21:25:59', 'pending', 2, '2017-03-23 14:26:27', 145, '2017-04-10', NULL, 'quotation', '14500.00', 'disc1', '12.00', 'MYR', '0', NULL, 67, NULL, 23, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(24, 'QT2016-00000024', 'Reena', '69 UBI ROAD 1, OXLEY BIZHUB #10-33 SINGAPORE 408731', '65091789', '65091789', 'Patricia', 'patricia.lee@dchfoton.com.sg', '2017-03-23 21:28:25', 'confirmed', 2, '2017-03-23 20:17:14', 145, '2017-03-23', NULL, 'quotation', '525000.00', 'disc1', '12.00', 'MYR', '0', NULL, 63, NULL, 24, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(25, 'QT2016-00000025', 'Abcdef', 'Abcdef', '12344577', '12345678', 'Abcdef', 'rosina@monzone.com.my', '2017-03-24 02:40:02', 'pending', 5, '2017-03-23 19:40:58', 165, '2017-04-10', NULL, 'eagreement', '14500.00', '', '0.00', 'MYR', '0', 'EA2016-00000005', 49, 5, 25, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(26, 'QT2016-00000026', 'abc', 'vdvdvd', '2147483647', '2147483647', 'riya', 'riya@gmail.com', '2017-03-30 23:34:12', 'pending', 13, '2017-03-30 16:37:23', 169, '2017-04-11', NULL, 'quotation', '55301.00', '', '0.00', 'MYR', '0', NULL, 41, NULL, 26, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms Conditions');
INSERT INTO `mz_quotation` (`id_quotation`, `quotation_num`, `company_name`, `company_address`, `phone`, `fax`, `contact_person`, `email`, `added_on`, `status`, `salesperson_id`, `updated_on`, `quotation_subject`, `reminder_date`, `reminder_email`, `type`, `total_price`, `discount_code`, `discount_amt`, `currency_type`, `remarks`, `agreement_num`, `id_customer`, `agreement_id`, `quotation_num_id`, `terms_conditions`, `terms_title`) VALUES
(27, 'QT2017-00000001', 'Test', 'Test', '112334343', '323323232', 'Qbhi', 'ab@gm.com', '2017-04-04 01:18:37', 'pending', 13, '2017-04-05 17:29:54', 171, '2017-04-12', NULL, 'quotation', '96101.00', '', '0.00', 'MYR', '0', NULL, 66, NULL, 1, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'qwertyui'),
(28, 'QT2017-00000002', 'Test', 'Test', '112334343', '323323232', 'Qbhi', 'ab@gm.com', '2017-04-06 00:29:54', 'pending', 13, '2017-04-05 17:29:54', 169, '2017-04-11', NULL, 'quotation', '96101.00', '', '0.00', 'MYR', '0', NULL, 66, NULL, 2, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms Conditions'),
(29, 'QT2017-00000003', 'sssssssd3sdsdsddatssdassdssddasdas', 'ddddsa', '80907767', '45687222', 'ddd', 'xzxz@ffd.com', '2017-05-01 16:15:23', 'pending', 134, '2017-05-15 13:49:05', 2, '2017-05-01', '', 'quotation', '166221.00', '', '0.00', 'MYR', 'hi', NULL, 72, NULL, 3, 'dddd', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `mz_quotation_products`
--

CREATE TABLE `mz_quotation_products` (
  `id_quotation_product` int(11) NOT NULL,
  `id_quotation` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_qty` int(155) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_quotation_products`
--

INSERT INTO `mz_quotation_products` (`id_quotation_product`, `id_quotation`, `id_product`, `product_name`, `product_qty`, `product_price`, `added_on`, `category_title`) VALUES
(4, 2, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 2, '14500.00', '2017-03-21 21:06:45', NULL),
(5, 2, 328, 'TK GASKET INTAKE', 1, '1.00', '2017-03-21 21:06:45', NULL),
(9, 4, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-21 21:15:17', NULL),
(19, 6, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-21 21:29:28', NULL),
(21, 7, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-21 21:34:12', NULL),
(23, 8, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 2, '14500.00', '2017-03-21 21:36:28', NULL),
(25, 9, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-21 21:42:52', NULL),
(29, 11, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-21 21:56:08', NULL),
(33, 13, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 1, '45000.00', '2017-03-22 00:54:59', NULL),
(34, 12, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-22 00:56:00', NULL),
(35, 10, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-22 01:16:17', NULL),
(37, 14, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-22 01:24:55', NULL),
(49, 1, 276, 'Tailgate Caroil Model : Traxx 3.0', 1, '15000.00', '2017-03-23 19:20:43', NULL),
(50, 1, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 19:20:43', NULL),
(51, 2, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 04:33:54', NULL),
(53, 4, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 04:36:16', NULL),
(56, 6, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 1, '45000.00', '2017-03-23 04:37:13', NULL),
(57, 6, 282, 'System Model : T1000M', 1, '0.00', '2017-03-23 04:37:13', NULL),
(58, 7, 289, 'TK PUMP FUEL ASSY - SB', 1, '1.00', '2017-03-23 04:37:22', NULL),
(59, 7, 291, 'TK ELEMENT-AIR PRIMARY', 1, '1.00', '2017-03-23 04:37:22', NULL),
(60, 7, 294, 'TK FILTER OIL DUA', 1, '1.00', '2017-03-23 04:37:22', NULL),
(61, 8, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 1, '45000.00', '2017-03-23 04:37:55', NULL),
(62, 8, 283, 'TK TUBE EXHAUST', 1, '0.00', '2017-03-23 04:37:55', NULL),
(63, 8, 293, 'TK FILTER - OIL', 1, '1.00', '2017-03-23 04:37:55', NULL),
(64, 9, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 2, '45000.00', '2017-03-23 04:38:37', NULL),
(65, 9, 283, 'TK TUBE EXHAUST', 1, '0.00', '2017-03-23 04:38:37', NULL),
(66, 10, 299, 'TK HOSE SILICON 25FT', 4, '1.00', '2017-03-23 04:39:20', NULL),
(67, 11, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 04:39:23', NULL),
(68, 11, 282, 'System Model : T1000M', 1, '0.00', '2017-03-23 04:39:23', NULL),
(69, 11, 316, 'TK CRANKSHAFT X214', 1, '1.00', '2017-03-23 04:39:23', NULL),
(70, 11, 276, 'Tailgate Caroil Model : Traxx 3.0', 1, '15000.00', '2017-03-23 04:39:23', NULL),
(71, 12, 297, 'TK FILTER FUEL EMI 2000', 1, '1.00', '2017-03-23 04:40:10', NULL),
(72, 12, 293, 'TK FILTER - OIL', 1, '1.00', '2017-03-23 04:40:10', NULL),
(73, 12, 298, 'TK FILTER FUEL EMI 3000', 1, '1.00', '2017-03-23 04:40:10', NULL),
(74, 5, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 2, '45000.00', '2017-03-23 19:40:19', NULL),
(75, 5, 284, 'TK HOSE OIL', 1, '1.00', '2017-03-23 19:40:19', NULL),
(76, 5, 313, 'TK HOSE -RADIATOR-LOW-EPDM', 1, '1.00', '2017-03-23 19:40:19', NULL),
(77, 5, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 19:40:19', NULL),
(78, 5, 282, 'System Model : T1000M', 1, '0.00', '2017-03-23 19:40:19', NULL),
(79, 13, 601, 'TK INTERFACE BOARD (EX-PN: 452275)', 1, '1.00', '2017-03-23 04:40:45', NULL),
(80, 14, 600, 'TK CONTROLLER SR2 (EX-PN: 452302)', 1, '1.00', '2017-03-23 04:43:03', NULL),
(85, 3, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 19:45:38', NULL),
(90, 16, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 3, '45000.00', '2017-03-23 19:51:01', NULL),
(91, 16, 282, 'System Model : T1000M', 1, '0.00', '2017-03-23 19:51:01', NULL),
(92, 18, 529, 'TK SWITCH PRESS DIFF 1.5CA', 1, '1.00', '2017-03-23 04:52:14', NULL),
(96, 20, 472, 'TK FILTER DRIER', 1, '1.00', '2017-03-23 20:01:18', NULL),
(97, 19, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 20:13:31', NULL),
(98, 17, 282, 'System Model : T1000M', 1, '0.00', '2017-03-23 20:13:41', NULL),
(99, 17, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 20:13:41', NULL),
(100, 17, 283, 'TK TUBE EXHAUST', 1, '0.00', '2017-03-23 20:13:41', NULL),
(101, 17, 284, 'TK HOSE OIL', 1, '1.00', '2017-03-23 20:13:41', NULL),
(102, 21, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 05:44:50', NULL),
(103, 22, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 06:25:41', NULL),
(106, 23, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-23 21:26:27', NULL),
(108, 24, 276, 'Tailgate Caroil Model : Traxx 3.0', 35, '15000.00', '2017-03-23 21:28:48', NULL),
(110, 25, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-24 02:40:44', NULL),
(111, 15, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-24 03:17:14', NULL),
(112, 15, 599, 'TK TOOL C5 COMPR CRANK REMOV', 1, '1.00', '2017-03-24 03:17:14', NULL),
(113, 15, 282, 'System Model : T1000M', 1, '0.00', '2017-03-24 03:17:14', NULL),
(114, 15, 275, 'Refrigeration System Model T1000R Spectrum S3+S3 Evaporator', 1, '45000.00', '2017-03-24 03:17:14', NULL),
(121, 26, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-03-30 23:37:23', NULL),
(122, 26, 607, 'SV-400', 1, '1.00', '2017-03-30 23:37:23', NULL),
(123, 26, 622, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA GVW 3500 KG 10 FOOTER - G PLATE DIESEL EURO 5 WITH MANUAL (MT)', 1, '40800.00', '2017-03-30 23:37:23', NULL),
(124, 27, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-04-03 10:18:37', NULL),
(125, 27, 603, 'SYSTEM MODEL MZ50II 12V', 1, '1.00', '2017-04-03 10:18:37', NULL),
(126, 27, 622, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA GVW 3500 KG 10 FOOTER - G PLATE DIESEL EURO 5 WITH MANUAL (MT)', 1, '40800.00', '2017-04-03 10:18:37', NULL),
(127, 28, 274, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', 1, '14500.00', '2017-04-05 09:29:54', NULL),
(128, 28, 607, 'SV-400', 1, '1.00', '2017-04-05 09:29:54', NULL),
(129, 28, 622, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA GVW 3500 KG 10 FOOTER - G PLATE DIESEL EURO 5 WITH MANUAL (MT)', 1, '40800.00', '2017-04-05 09:29:54', NULL),
(130, 29, 2, 'model name adding', 2, '150.00', '2017-05-01 13:45:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mz_quotation_product_attr`
--

CREATE TABLE `mz_quotation_product_attr` (
  `id_quotation_attr` int(11) NOT NULL,
  `id_quotation_product` int(11) NOT NULL COMMENT 'id from quotation_product',
  `id_product_attr` int(11) DEFAULT NULL COMMENT 'id for label from attributes table',
  `id_attribute` int(11) NOT NULL,
  `label` varchar(255) NOT NULL COMMENT 'label name from products attributes table',
  `price` decimal(10,2) NOT NULL COMMENT 'price from products attribute table',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_quotation_product_attr`
--

INSERT INTO `mz_quotation_product_attr` (`id_quotation_attr`, `id_quotation_product`, `id_product_attr`, `id_attribute`, `label`, `price`, `added_on`) VALUES
(15, 4, 108, 107, '10FT HB L3080MMXW1700MMXH1900MM', '0.00', '2017-03-21 21:06:45'),
(16, 4, 0, 109, '', '0.00', '2017-03-21 21:06:45'),
(17, 4, 163, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 8FT High Aluminium Checker Plate all round', '0.00', '2017-03-21 21:06:45'),
(18, 4, 162, 111, 'Coverage with Stainless Steel Flat Sheet', '0.00', '2017-03-21 21:06:45'),
(19, 4, 161, 112, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', '0.00', '2017-03-21 21:06:45'),
(20, 4, 159, 113, '1 set of Double swing door on the back of container No Side Door', '0.00', '2017-03-21 21:06:45'),
(21, 4, 143, 114, 'Stainless Steel Type', '0.00', '2017-03-21 21:06:45'),
(22, 4, 158, 115, 'Stainless Steel Type', '0.00', '2017-03-21 21:06:45'),
(23, 4, 153, 116, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-03-21 21:06:45'),
(24, 4, 140, 117, '1 pce of fluorescent white light to be installed to the ceiling', '0.00', '2017-03-21 21:06:45'),
(25, 4, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-03-21 21:06:45'),
(26, 4, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-03-21 21:06:45'),
(27, 5, 0, 127, '', '0.00', '2017-03-21 21:06:45'),
(61, 9, 0, 107, '', '0.00', '2017-03-21 21:15:17'),
(62, 9, 0, 109, '', '0.00', '2017-03-21 21:15:17'),
(63, 9, 0, 110, '', '0.00', '2017-03-21 21:15:17'),
(64, 9, 0, 111, '', '0.00', '2017-03-21 21:15:17'),
(65, 9, 0, 112, '', '0.00', '2017-03-21 21:15:17'),
(66, 9, 0, 113, '', '0.00', '2017-03-21 21:15:17'),
(67, 9, 0, 114, '', '0.00', '2017-03-21 21:15:17'),
(68, 9, 0, 115, '', '0.00', '2017-03-21 21:15:17'),
(69, 9, 0, 116, '', '0.00', '2017-03-21 21:15:17'),
(70, 9, 0, 117, '', '0.00', '2017-03-21 21:15:17'),
(71, 9, 0, 118, '', '0.00', '2017-03-21 21:15:17'),
(113, 19, 0, 107, '', '0.00', '2017-03-21 21:29:28'),
(114, 19, 0, 109, '', '0.00', '2017-03-21 21:29:28'),
(115, 19, 0, 110, '', '0.00', '2017-03-21 21:29:28'),
(116, 19, 0, 111, '', '0.00', '2017-03-21 21:29:28'),
(117, 19, 0, 112, '', '0.00', '2017-03-21 21:29:28'),
(118, 19, 0, 113, '', '0.00', '2017-03-21 21:29:28'),
(119, 19, 0, 114, '', '0.00', '2017-03-21 21:29:28'),
(120, 19, 0, 115, '', '0.00', '2017-03-21 21:29:28'),
(121, 19, 0, 116, '', '0.00', '2017-03-21 21:29:28'),
(122, 19, 0, 117, '', '0.00', '2017-03-21 21:29:28'),
(123, 19, 0, 118, '', '0.00', '2017-03-21 21:29:28'),
(135, 21, 0, 107, '', '0.00', '2017-03-21 21:34:12'),
(136, 21, 0, 109, '', '0.00', '2017-03-21 21:34:12'),
(137, 21, 0, 110, '', '0.00', '2017-03-21 21:34:12'),
(138, 21, 0, 111, '', '0.00', '2017-03-21 21:34:12'),
(139, 21, 0, 112, '', '0.00', '2017-03-21 21:34:12'),
(140, 21, 0, 113, '', '0.00', '2017-03-21 21:34:12'),
(141, 21, 0, 114, '', '0.00', '2017-03-21 21:34:12'),
(142, 21, 0, 115, '', '0.00', '2017-03-21 21:34:12'),
(143, 21, 0, 116, '', '0.00', '2017-03-21 21:34:12'),
(144, 21, 0, 117, '', '0.00', '2017-03-21 21:34:12'),
(145, 21, 0, 118, '', '0.00', '2017-03-21 21:34:12'),
(157, 23, 0, 107, '', '0.00', '2017-03-21 21:36:28'),
(158, 23, 0, 109, '', '0.00', '2017-03-21 21:36:28'),
(159, 23, 0, 110, '', '0.00', '2017-03-21 21:36:28'),
(160, 23, 0, 111, '', '0.00', '2017-03-21 21:36:28'),
(161, 23, 0, 112, '', '0.00', '2017-03-21 21:36:28'),
(162, 23, 0, 113, '', '0.00', '2017-03-21 21:36:28'),
(163, 23, 0, 114, '', '0.00', '2017-03-21 21:36:28'),
(164, 23, 0, 115, '', '0.00', '2017-03-21 21:36:28'),
(165, 23, 0, 116, '', '0.00', '2017-03-21 21:36:28'),
(166, 23, 0, 117, '', '0.00', '2017-03-21 21:36:28'),
(167, 23, 0, 118, '', '0.00', '2017-03-21 21:36:28'),
(179, 25, 0, 107, '', '0.00', '2017-03-21 21:42:52'),
(180, 25, 0, 109, '', '0.00', '2017-03-21 21:42:52'),
(181, 25, 0, 110, '', '0.00', '2017-03-21 21:42:52'),
(182, 25, 0, 111, '', '0.00', '2017-03-21 21:42:52'),
(183, 25, 0, 112, '', '0.00', '2017-03-21 21:42:52'),
(184, 25, 0, 113, '', '0.00', '2017-03-21 21:42:52'),
(185, 25, 0, 114, '', '0.00', '2017-03-21 21:42:52'),
(186, 25, 0, 115, '', '0.00', '2017-03-21 21:42:52'),
(187, 25, 0, 116, '', '0.00', '2017-03-21 21:42:52'),
(188, 25, 0, 117, '', '0.00', '2017-03-21 21:42:52'),
(189, 25, 0, 118, '', '0.00', '2017-03-21 21:42:52'),
(223, 29, 0, 107, '', '0.00', '2017-03-21 21:56:08'),
(224, 29, 0, 109, '', '0.00', '2017-03-21 21:56:08'),
(225, 29, 0, 110, '', '0.00', '2017-03-21 21:56:08'),
(226, 29, 0, 111, '', '0.00', '2017-03-21 21:56:08'),
(227, 29, 0, 112, '', '0.00', '2017-03-21 21:56:08'),
(228, 29, 0, 113, '', '0.00', '2017-03-21 21:56:08'),
(229, 29, 0, 114, '', '0.00', '2017-03-21 21:56:08'),
(230, 29, 0, 115, '', '0.00', '2017-03-21 21:56:08'),
(231, 29, 0, 116, '', '0.00', '2017-03-21 21:56:08'),
(232, 29, 0, 117, '', '0.00', '2017-03-21 21:56:08'),
(233, 29, 0, 118, '', '0.00', '2017-03-21 21:56:08'),
(249, 33, 0, 122, '', '0.00', '2017-03-22 00:54:59'),
(250, 33, 0, 128, '', '0.00', '2017-03-22 00:54:59'),
(251, 34, 0, 107, '', '0.00', '2017-03-22 00:56:00'),
(252, 34, 0, 109, '', '0.00', '2017-03-22 00:56:00'),
(253, 34, 0, 110, '', '0.00', '2017-03-22 00:56:00'),
(254, 34, 0, 111, '', '0.00', '2017-03-22 00:56:00'),
(255, 34, 0, 112, '', '0.00', '2017-03-22 00:56:00'),
(256, 34, 0, 113, '', '0.00', '2017-03-22 00:56:00'),
(257, 34, 0, 114, '', '0.00', '2017-03-22 00:56:00'),
(258, 34, 0, 115, '', '0.00', '2017-03-22 00:56:00'),
(259, 34, 0, 116, '', '0.00', '2017-03-22 00:56:00'),
(260, 34, 0, 117, '', '0.00', '2017-03-22 00:56:00'),
(261, 34, 0, 118, '', '0.00', '2017-03-22 00:56:00'),
(262, 35, 0, 107, '', '0.00', '2017-03-22 01:16:17'),
(263, 35, 0, 109, '', '0.00', '2017-03-22 01:16:17'),
(264, 35, 0, 110, '', '0.00', '2017-03-22 01:16:17'),
(265, 35, 0, 111, '', '0.00', '2017-03-22 01:16:17'),
(266, 35, 0, 112, '', '0.00', '2017-03-22 01:16:17'),
(267, 35, 0, 113, '', '0.00', '2017-03-22 01:16:17'),
(268, 35, 0, 114, '', '0.00', '2017-03-22 01:16:17'),
(269, 35, 0, 115, '', '0.00', '2017-03-22 01:16:17'),
(270, 35, 0, 116, '', '0.00', '2017-03-22 01:16:17'),
(271, 35, 0, 117, '', '0.00', '2017-03-22 01:16:17'),
(272, 35, 0, 118, '', '0.00', '2017-03-22 01:16:17'),
(284, 37, 0, 107, '', '0.00', '2017-03-22 01:24:55'),
(285, 37, 0, 109, '', '0.00', '2017-03-22 01:24:55'),
(286, 37, 0, 110, '', '0.00', '2017-03-22 01:24:55'),
(287, 37, 0, 111, '', '0.00', '2017-03-22 01:24:55'),
(288, 37, 0, 112, '', '0.00', '2017-03-22 01:24:55'),
(289, 37, 0, 113, '', '0.00', '2017-03-22 01:24:55'),
(290, 37, 0, 114, '', '0.00', '2017-03-22 01:24:55'),
(291, 37, 0, 115, '', '0.00', '2017-03-22 01:24:55'),
(292, 37, 0, 116, '', '0.00', '2017-03-22 01:24:55'),
(293, 37, 0, 117, '', '0.00', '2017-03-22 01:24:55'),
(294, 37, 0, 118, '', '0.00', '2017-03-22 01:24:55'),
(384, 49, 120, 119, 'Retractable Tailgate (Different Models)', '0.00', '2017-03-23 19:20:43'),
(385, 50, 108, 107, '10FT HB L3080MMXW1700MMXH1900MM', '0.00', '2017-03-23 19:20:43'),
(386, 50, 0, 109, '', '0.00', '2017-03-23 19:20:43'),
(387, 50, 0, 110, '', '0.00', '2017-03-23 19:20:43'),
(388, 50, 0, 111, '', '0.00', '2017-03-23 19:20:43'),
(389, 50, 0, 112, '', '0.00', '2017-03-23 19:20:43'),
(390, 50, 0, 113, '', '0.00', '2017-03-23 19:20:43'),
(391, 50, 0, 114, '', '0.00', '2017-03-23 19:20:43'),
(392, 50, 0, 115, '', '0.00', '2017-03-23 19:20:43'),
(393, 50, 0, 116, '', '0.00', '2017-03-23 19:20:43'),
(394, 50, 141, 117, '2 pce of fluorescent white light to be installed to the ceiling', '0.00', '2017-03-23 19:20:43'),
(395, 50, 0, 118, '', '0.00', '2017-03-23 19:20:43'),
(396, 51, 0, 107, '', '0.00', '2017-03-23 04:33:54'),
(397, 51, 0, 109, '', '0.00', '2017-03-23 04:33:54'),
(398, 51, 0, 110, '', '0.00', '2017-03-23 04:33:54'),
(399, 51, 0, 111, '', '0.00', '2017-03-23 04:33:54'),
(400, 51, 0, 112, '', '0.00', '2017-03-23 04:33:54'),
(401, 51, 0, 113, '', '0.00', '2017-03-23 04:33:54'),
(402, 51, 0, 114, '', '0.00', '2017-03-23 04:33:54'),
(403, 51, 0, 115, '', '0.00', '2017-03-23 04:33:54'),
(404, 51, 153, 116, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '1868.00', '2017-03-23 04:33:54'),
(405, 51, 0, 117, '', '0.00', '2017-03-23 04:33:54'),
(406, 51, 0, 118, '', '0.00', '2017-03-23 04:33:54'),
(418, 53, 0, 107, '', '0.00', '2017-03-23 04:36:16'),
(419, 53, 160, 109, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '0.00', '2017-03-23 04:36:16'),
(420, 53, 0, 110, '', '0.00', '2017-03-23 04:36:16'),
(421, 53, 0, 111, '', '0.00', '2017-03-23 04:36:16'),
(422, 53, 0, 112, '', '0.00', '2017-03-23 04:36:16'),
(423, 53, 159, 113, '1 set of Double swing door on the back of container No Side Door', '0.00', '2017-03-23 04:36:16'),
(424, 53, 0, 114, '', '0.00', '2017-03-23 04:36:16'),
(425, 53, 0, 115, '', '0.00', '2017-03-23 04:36:16'),
(426, 53, 0, 116, '', '0.00', '2017-03-23 04:36:16'),
(427, 53, 0, 117, '', '0.00', '2017-03-23 04:36:16'),
(428, 53, 0, 118, '', '0.00', '2017-03-23 04:36:16'),
(433, 56, 123, 122, 'MZ050', '10.00', '2017-03-23 04:37:13'),
(434, 56, 136, 128, '3 YEARS WARRANTY', '0.00', '2017-03-23 04:37:13'),
(435, 57, 0, 122, '', '0.00', '2017-03-23 04:37:13'),
(436, 57, 0, 128, '', '0.00', '2017-03-23 04:37:13'),
(437, 58, 0, 127, '', '0.00', '2017-03-23 04:37:22'),
(438, 59, 0, 127, '', '0.00', '2017-03-23 04:37:22'),
(439, 60, 0, 127, '', '0.00', '2017-03-23 04:37:22'),
(440, 61, 0, 122, '', '0.00', '2017-03-23 04:37:55'),
(441, 61, 0, 128, '', '0.00', '2017-03-23 04:37:55'),
(442, 62, 0, 127, '', '0.00', '2017-03-23 04:37:55'),
(443, 63, 0, 127, '', '0.00', '2017-03-23 04:37:55'),
(444, 64, 123, 122, 'MZ050', '10.00', '2017-03-23 04:38:37'),
(445, 64, 135, 128, '1 Year 1 Time Servicing', '2500.00', '2017-03-23 04:38:37'),
(446, 65, 0, 127, '', '0.00', '2017-03-23 04:38:37'),
(447, 66, 0, 127, '', '0.00', '2017-03-23 04:39:20'),
(448, 67, 108, 107, '10FT HB L3080MMXW1700MMXH1900MM', '100.00', '2017-03-23 04:39:23'),
(449, 67, 0, 109, '', '0.00', '2017-03-23 04:39:23'),
(450, 67, 163, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 8FT High Aluminium Checker Plate all round', '0.00', '2017-03-23 04:39:23'),
(451, 67, 0, 111, '', '0.00', '2017-03-23 04:39:23'),
(452, 67, 0, 112, '', '0.00', '2017-03-23 04:39:23'),
(453, 67, 159, 113, '1 set of Double swing door on the back of container No Side Door', '0.00', '2017-03-23 04:39:23'),
(454, 67, 0, 114, '', '0.00', '2017-03-23 04:39:23'),
(455, 67, 0, 115, '', '0.00', '2017-03-23 04:39:23'),
(456, 67, 153, 116, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '1868.00', '2017-03-23 04:39:23'),
(457, 67, 0, 117, '', '0.00', '2017-03-23 04:39:23'),
(458, 67, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-03-23 04:39:23'),
(459, 67, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-03-23 04:39:23'),
(460, 68, 0, 122, '', '0.00', '2017-03-23 04:39:23'),
(461, 68, 0, 128, '', '0.00', '2017-03-23 04:39:23'),
(462, 69, 0, 127, '', '0.00', '2017-03-23 04:39:23'),
(463, 70, 0, 119, '', '0.00', '2017-03-23 04:39:23'),
(464, 71, 0, 127, '', '0.00', '2017-03-23 04:40:10'),
(465, 72, 0, 127, '', '0.00', '2017-03-23 04:40:10'),
(466, 73, 0, 127, '', '0.00', '2017-03-23 04:40:10'),
(467, 74, 0, 122, '', '0.00', '2017-03-23 19:40:19'),
(468, 74, 0, 128, '', '0.00', '2017-03-23 19:40:19'),
(469, 75, 0, 127, '', '0.00', '2017-03-23 19:40:19'),
(470, 76, 0, 127, '', '0.00', '2017-03-23 19:40:19'),
(471, 77, 0, 107, '', '0.00', '2017-03-23 19:40:19'),
(472, 77, 0, 109, '', '0.00', '2017-03-23 19:40:19'),
(473, 77, 0, 110, '', '0.00', '2017-03-23 19:40:19'),
(474, 77, 0, 111, '', '0.00', '2017-03-23 19:40:19'),
(475, 77, 0, 112, '', '0.00', '2017-03-23 19:40:19'),
(476, 77, 0, 113, '', '0.00', '2017-03-23 19:40:19'),
(477, 77, 0, 114, '', '0.00', '2017-03-23 19:40:19'),
(478, 77, 0, 115, '', '0.00', '2017-03-23 19:40:19'),
(479, 77, 0, 116, '', '0.00', '2017-03-23 19:40:19'),
(480, 77, 0, 117, '', '0.00', '2017-03-23 19:40:19'),
(481, 77, 0, 118, '', '0.00', '2017-03-23 19:40:19'),
(482, 78, 0, 122, '', '0.00', '2017-03-23 19:40:19'),
(483, 78, 0, 128, '', '0.00', '2017-03-23 19:40:19'),
(484, 79, 0, 127, '', '0.00', '2017-03-23 04:40:45'),
(485, 80, 0, 127, '', '0.00', '2017-03-23 04:43:03'),
(503, 85, 0, 107, '', '0.00', '2017-03-23 19:45:38'),
(504, 85, 0, 109, '', '0.00', '2017-03-23 19:45:38'),
(505, 85, 0, 110, '', '0.00', '2017-03-23 19:45:38'),
(506, 85, 0, 111, '', '0.00', '2017-03-23 19:45:38'),
(507, 85, 0, 112, '', '0.00', '2017-03-23 19:45:38'),
(508, 85, 0, 113, '', '0.00', '2017-03-23 19:45:38'),
(509, 85, 0, 114, '', '0.00', '2017-03-23 19:45:38'),
(510, 85, 0, 115, '', '0.00', '2017-03-23 19:45:38'),
(511, 85, 0, 116, '', '0.00', '2017-03-23 19:45:38'),
(512, 85, 0, 117, '', '0.00', '2017-03-23 19:45:38'),
(513, 85, 0, 118, '', '0.00', '2017-03-23 19:45:38'),
(520, 90, 125, 122, 'MZ100', '0.00', '2017-03-23 19:51:01'),
(521, 90, 135, 128, '1 Year 1 Time Servicing', '0.00', '2017-03-23 19:51:01'),
(522, 91, 0, 122, '', '0.00', '2017-03-23 19:51:01'),
(523, 91, 0, 128, '', '0.00', '2017-03-23 19:51:01'),
(524, 92, 0, 127, '', '0.00', '2017-03-23 04:52:14'),
(550, 96, 0, 127, '', '0.00', '2017-03-23 20:01:18'),
(551, 97, 108, 107, '10FT HB L3080MMXW1700MMXH1900MM', '0.00', '2017-03-23 20:13:31'),
(552, 97, 160, 109, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '0.00', '2017-03-23 20:13:31'),
(553, 97, 163, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 8FT High Aluminium Checker Plate all round', '0.00', '2017-03-23 20:13:31'),
(554, 97, 162, 111, 'Coverage with Stainless Steel Flat Sheet', '0.00', '2017-03-23 20:13:31'),
(555, 97, 161, 112, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', '0.00', '2017-03-23 20:13:31'),
(556, 97, 159, 113, '1 set of Double swing door on the back of container No Side Door', '0.00', '2017-03-23 20:13:31'),
(557, 97, 143, 114, 'Stainless Steel Type', '0.00', '2017-03-23 20:13:31'),
(558, 97, 158, 115, 'Stainless Steel Type', '0.00', '2017-03-23 20:13:31'),
(559, 97, 153, 116, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-03-23 20:13:31'),
(560, 97, 140, 117, '1 pce of fluorescent white light to be installed to the ceiling', '0.00', '2017-03-23 20:13:31'),
(561, 97, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-03-23 20:13:31'),
(562, 97, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-03-23 20:13:31'),
(563, 98, 125, 122, 'MZ100', '0.00', '2017-03-23 20:13:41'),
(564, 98, 136, 128, '3 YEARS WARRANTY', '0.00', '2017-03-23 20:13:41'),
(565, 99, 0, 107, '', '0.00', '2017-03-23 20:13:41'),
(566, 99, 160, 109, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '0.00', '2017-03-23 20:13:41'),
(567, 99, 163, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 8FT High Aluminium Checker Plate all round', '0.00', '2017-03-23 20:13:41'),
(568, 99, 0, 111, '', '0.00', '2017-03-23 20:13:41'),
(569, 99, 0, 112, '', '0.00', '2017-03-23 20:13:41'),
(570, 99, 0, 113, '', '0.00', '2017-03-23 20:13:41'),
(571, 99, 0, 114, '', '0.00', '2017-03-23 20:13:41'),
(572, 99, 158, 115, 'Stainless Steel Type', '0.00', '2017-03-23 20:13:41'),
(573, 99, 0, 116, '', '0.00', '2017-03-23 20:13:41'),
(574, 99, 0, 117, '', '0.00', '2017-03-23 20:13:41'),
(575, 99, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-03-23 20:13:41'),
(576, 99, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-03-23 20:13:41'),
(577, 100, 0, 127, '', '0.00', '2017-03-23 20:13:41'),
(578, 101, 0, 127, '', '0.00', '2017-03-23 20:13:41'),
(579, 102, 108, 107, '10FT HB L3080MMXW1700MMXH1900MM', '100.00', '2017-03-23 05:44:50'),
(580, 102, 160, 109, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '0.00', '2017-03-23 05:44:50'),
(581, 102, 163, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 8FT High Aluminium Checker Plate all round', '0.00', '2017-03-23 05:44:50'),
(582, 102, 162, 111, 'Coverage with Stainless Steel Flat Sheet', '0.00', '2017-03-23 05:44:50'),
(583, 102, 161, 112, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', '0.00', '2017-03-23 05:44:50'),
(584, 102, 159, 113, '1 set of Double swing door on the back of container No Side Door', '0.00', '2017-03-23 05:44:50'),
(585, 102, 143, 114, 'Stainless Steel Type', '123.00', '2017-03-23 05:44:50'),
(586, 102, 158, 115, 'Stainless Steel Type', '0.00', '2017-03-23 05:44:50'),
(587, 102, 144, 116, 'Stainless Steel Type - External Handles c/w Locks & Keys', '120.00', '2017-03-23 05:44:50'),
(588, 102, 0, 117, '', '0.00', '2017-03-23 05:44:50'),
(589, 102, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-03-23 05:44:50'),
(590, 102, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-03-23 05:44:50'),
(591, 103, 0, 107, '', '0.00', '2017-03-23 06:25:41'),
(592, 103, 0, 109, '', '0.00', '2017-03-23 06:25:41'),
(593, 103, 0, 110, '', '0.00', '2017-03-23 06:25:41'),
(594, 103, 0, 111, '', '0.00', '2017-03-23 06:25:41'),
(595, 103, 0, 112, '', '0.00', '2017-03-23 06:25:41'),
(596, 103, 0, 113, '', '0.00', '2017-03-23 06:25:41'),
(597, 103, 0, 114, '', '0.00', '2017-03-23 06:25:41'),
(598, 103, 0, 115, '', '0.00', '2017-03-23 06:25:41'),
(599, 103, 0, 116, '', '0.00', '2017-03-23 06:25:41'),
(600, 103, 141, 117, '2 pce of fluorescent white light to be installed to the ceiling', '0.00', '2017-03-23 06:25:41'),
(601, 103, 0, 118, '', '0.00', '2017-03-23 06:25:41'),
(624, 106, 0, 107, '', '0.00', '2017-03-23 21:26:27'),
(625, 106, 0, 109, '', '0.00', '2017-03-23 21:26:27'),
(626, 106, 0, 110, '', '0.00', '2017-03-23 21:26:27'),
(627, 106, 0, 111, '', '0.00', '2017-03-23 21:26:27'),
(628, 106, 0, 112, '', '0.00', '2017-03-23 21:26:27'),
(629, 106, 0, 113, '', '0.00', '2017-03-23 21:26:27'),
(630, 106, 0, 114, '', '0.00', '2017-03-23 21:26:27'),
(631, 106, 0, 115, '', '0.00', '2017-03-23 21:26:27'),
(632, 106, 0, 116, '', '0.00', '2017-03-23 21:26:27'),
(633, 106, 0, 117, '', '0.00', '2017-03-23 21:26:27'),
(634, 106, 0, 118, '', '0.00', '2017-03-23 21:26:27'),
(636, 108, 120, 119, 'Retractable Tailgate (Different Models)', '0.00', '2017-03-23 21:28:48'),
(637, 108, 120, 119, 'Retractable Tailgate (Different Models)', '0.00', '2017-03-23 21:28:48'),
(649, 110, 0, 107, '', '0.00', '2017-03-24 02:40:44'),
(650, 110, 0, 109, '', '0.00', '2017-03-24 02:40:44'),
(651, 110, 0, 110, '', '0.00', '2017-03-24 02:40:44'),
(652, 110, 0, 111, '', '0.00', '2017-03-24 02:40:44'),
(653, 110, 0, 112, '', '0.00', '2017-03-24 02:40:44'),
(654, 110, 0, 113, '', '0.00', '2017-03-24 02:40:44'),
(655, 110, 0, 114, '', '0.00', '2017-03-24 02:40:44'),
(656, 110, 0, 115, '', '0.00', '2017-03-24 02:40:44'),
(657, 110, 0, 116, '', '0.00', '2017-03-24 02:40:44'),
(658, 110, 0, 117, '', '0.00', '2017-03-24 02:40:44'),
(659, 110, 0, 118, '', '0.00', '2017-03-24 02:40:44'),
(660, 110, 0, 107, '', '0.00', '2017-03-24 02:40:44'),
(661, 110, 0, 109, '', '0.00', '2017-03-24 02:40:44'),
(662, 110, 0, 110, '', '0.00', '2017-03-24 02:40:44'),
(663, 110, 0, 111, '', '0.00', '2017-03-24 02:40:44'),
(664, 110, 0, 112, '', '0.00', '2017-03-24 02:40:44'),
(665, 110, 0, 113, '', '0.00', '2017-03-24 02:40:44'),
(666, 110, 0, 114, '', '0.00', '2017-03-24 02:40:44'),
(667, 110, 0, 115, '', '0.00', '2017-03-24 02:40:44'),
(668, 110, 0, 116, '', '0.00', '2017-03-24 02:40:44'),
(669, 110, 0, 117, '', '0.00', '2017-03-24 02:40:44'),
(670, 110, 0, 118, '', '0.00', '2017-03-24 02:40:44'),
(671, 111, 0, 107, '', '0.00', '2017-03-24 03:17:14'),
(672, 111, 0, 109, '', '0.00', '2017-03-24 03:17:14'),
(673, 111, 0, 110, '', '0.00', '2017-03-24 03:17:14'),
(674, 111, 0, 111, '', '0.00', '2017-03-24 03:17:14'),
(675, 111, 0, 112, '', '0.00', '2017-03-24 03:17:14'),
(676, 111, 0, 113, '', '0.00', '2017-03-24 03:17:14'),
(677, 111, 0, 114, '', '0.00', '2017-03-24 03:17:14'),
(678, 111, 0, 115, '', '0.00', '2017-03-24 03:17:14'),
(679, 111, 0, 116, '', '0.00', '2017-03-24 03:17:14'),
(680, 111, 0, 117, '', '0.00', '2017-03-24 03:17:14'),
(681, 111, 0, 118, '', '0.00', '2017-03-24 03:17:14'),
(682, 111, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-03-24 03:17:14'),
(683, 112, 0, 127, '', '0.00', '2017-03-24 03:17:14'),
(684, 113, 124, 122, 'MZ050UM', '0.00', '2017-03-24 03:17:14'),
(685, 113, 0, 128, '', '0.00', '2017-03-24 03:17:14'),
(686, 114, 0, 122, '', '0.00', '2017-03-24 03:17:14'),
(687, 114, 0, 128, '', '0.00', '2017-03-24 03:17:14'),
(718, 121, 108, 107, '10FT HB L3080MMXW1700MMXH1900MM', '0.00', '2017-03-30 23:37:23'),
(719, 121, 160, 109, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '0.00', '2017-03-30 23:37:23'),
(720, 121, 181, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 2 FT High Aluminum Checker Plate all round', '0.00', '2017-03-30 23:37:23'),
(721, 121, 162, 111, 'Coverage with Stainless Steel Flat Sheet', '0.00', '2017-03-30 23:37:23'),
(722, 121, 161, 112, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', '0.00', '2017-03-30 23:37:23'),
(723, 121, 159, 113, '1 set of Double swing door on the back of container No Side Door', '0.00', '2017-03-30 23:37:23'),
(724, 121, 143, 114, 'Stainless Steel Type', '0.00', '2017-03-30 23:37:23'),
(725, 121, 158, 115, 'Stainless Steel Type', '0.00', '2017-03-30 23:37:23'),
(726, 121, 144, 116, 'Stainless Steel Type - External Handles c/w Locks & Keys', '0.00', '2017-03-30 23:37:23'),
(727, 121, 140, 117, '1 pce of fluorescent white light to be installed to the ceiling', '0.00', '2017-03-30 23:37:23'),
(728, 121, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-03-30 23:37:23'),
(729, 122, 123, 122, 'MZ050', '0.00', '2017-03-30 23:37:23'),
(730, 122, 135, 128, '1 Year 1 Time Servicing', '0.00', '2017-03-30 23:37:23'),
(731, 123, 0, 126, '', '0.00', '2017-03-30 23:37:23'),
(732, 123, 179, 130, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA 10 FOOTER', '0.00', '2017-03-30 23:37:23'),
(733, 124, 188, 107, '14FT L4270MMXW2100MMXH2100MM', '1.00', '2017-04-03 10:18:37'),
(734, 124, 160, 109, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '0.00', '2017-04-03 10:18:37'),
(735, 124, 181, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 2 FT High Aluminum Checker Plate all round', '0.00', '2017-04-03 10:18:37'),
(736, 124, 206, 111, 'Coverage with Aluminum Checker Plate', '0.00', '2017-04-03 10:18:37'),
(737, 124, 161, 112, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', '0.00', '2017-04-03 10:18:37'),
(738, 124, 212, 113, '1 set of Double swing door on the back of container & 1 single swing door on the left hand side of the insulated box', '0.00', '2017-04-03 10:18:37'),
(739, 124, 143, 114, 'Stainless Steel Type', '123.00', '2017-04-03 10:18:37'),
(740, 124, 158, 115, 'Stainless Steel Type', '0.00', '2017-04-03 10:18:37'),
(741, 124, 144, 116, 'Stainless Steel Type - External Handles c/w Locks & Keys', '120.00', '2017-04-03 10:18:37'),
(742, 124, 140, 117, '1 pce of fluorescent white light to be installed to the ceiling', '100.00', '2017-04-03 10:18:37'),
(743, 124, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-04-03 10:18:37'),
(744, 124, 157, 118, 'Internal Siren Alarm and Water Proof Lighting Switches', '0.00', '2017-04-03 10:18:37'),
(745, 124, 222, 118, 'Internal Siren Alarm & water proof lighting switches', '0.00', '2017-04-03 10:18:37'),
(746, 124, 223, 118, 'High Quality Ribbed PVC Strips curtains', '0.00', '2017-04-03 10:18:37'),
(747, 124, 224, 118, 'Rear Bumper Stopper', '0.00', '2017-04-03 10:18:37'),
(748, 125, 123, 122, 'MZ050', '10.00', '2017-04-03 10:18:37'),
(749, 125, 135, 128, '1 Year 1 Time Servicing', '2500.00', '2017-04-03 10:18:37'),
(750, 126, 0, 126, '', '0.00', '2017-04-03 10:18:37'),
(751, 126, 179, 130, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA 10 FOOTER', '40800.00', '2017-04-03 10:18:37'),
(752, 127, 185, 107, '10FT L3080MMXW1700MMXH1900MM', '1.00', '2017-04-05 09:29:54'),
(753, 127, 197, 109, 'Furnished with Woven Roving S Plus Gel coated UV Resistance GRP (Glass Reinforcement Panel) - Made in Germany', '0.00', '2017-04-05 09:29:54'),
(754, 127, 203, 110, 'Furnished with GRP Board (Glass Reinforcement Panel) Food Grade - Made in Germany PLUS 2 FT High Stainless Steel Flat Sheet all round', '0.00', '2017-04-05 09:29:54'),
(755, 127, 206, 111, 'Coverage with Aluminum Checker Plate', '0.00', '2017-04-05 09:29:54'),
(756, 127, 161, 112, '80mm thickness of polyuethane (PU) foam with density of 40 kg/m3 - ISO8031 standard (Initial Thermal conductivity at 10 deg C, 22.8mW/m deg K)', '0.00', '2017-04-05 09:29:54'),
(757, 127, 212, 113, '1 set of Double swing door on the back of container & 1 single swing door on the left hand side of the insulated box', '0.00', '2017-04-05 09:29:54'),
(758, 127, 143, 114, 'Stainless Steel Type', '123.00', '2017-04-05 09:29:54'),
(759, 127, 158, 115, 'Stainless Steel Type', '0.00', '2017-04-05 09:29:54'),
(760, 127, 153, 116, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '1868.00', '2017-04-05 09:29:54'),
(761, 127, 219, 117, '1 pc of lighting – Power LED Cool white Lighting 8Watt / IP66 (Waterproofing & Low Temperature certification)', '0.00', '2017-04-05 09:29:54'),
(762, 127, 155, 118, 'PVC Drainage Stop Valve', '0.00', '2017-04-05 09:29:54'),
(763, 127, 222, 118, 'Internal Siren Alarm & water proof lighting switches', '0.00', '2017-04-05 09:29:54'),
(764, 127, 223, 118, 'High Quality Ribbed PVC Strips curtains', '0.00', '2017-04-05 09:29:54'),
(765, 127, 224, 118, 'Rear Bumper Stopper', '0.00', '2017-04-05 09:29:54'),
(766, 128, 231, 122, 'Thermo King SV-400 without Electrical standby unit', '0.00', '2017-04-05 09:29:54'),
(767, 128, 134, 128, 'INCLUDE 1 YEAR WARRANTY', '10.00', '2017-04-05 09:29:54'),
(768, 129, 0, 126, '', '0.00', '2017-04-05 09:29:54'),
(769, 129, 179, 130, 'NEW VEHICLE CHASSIS ISUZU MODEL: NHR85AUE4AA 10 FOOTER', '40800.00', '2017-04-05 09:29:54'),
(770, 130, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-01 13:45:24'),
(771, 130, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-01 13:45:24'),
(772, 130, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-01 13:45:24'),
(773, 130, 46, 18, 'Furnished with GRP Board (Glass Reinforcement Panel) UV Resistance - Made in Germany', '1234.00', '2017-05-01 13:45:24'),
(774, 130, 50, 5, 'Coverage with Aluminium Corrugated Plate', '2312.00', '2017-05-01 13:45:24'),
(775, 130, 55, 19, 'Stainless Steel Type', '123.00', '2017-05-01 13:45:24'),
(776, 130, 58, 9, '1 pce of fluorescent white light to be installed to the ceiling', '2343.00', '2017-05-01 13:45:24'),
(777, 130, 60, 10, 'PVC Drainage Stop Valve', '134.00', '2017-05-01 13:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `mz_review_rating`
--

CREATE TABLE `mz_review_rating` (
  `id_rating` int(11) NOT NULL,
  `rating` int(5) NOT NULL,
  `review_comment` text NOT NULL,
  `id_customer` int(5) NOT NULL,
  `id_service` int(5) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` enum('approved','unapproved') NOT NULL DEFAULT 'approved'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_review_rating`
--

INSERT INTO `mz_review_rating` (`id_rating`, `rating`, `review_comment`, `id_customer`, `id_service`, `added_on`, `status`) VALUES
(1, 3, 'good', 5, 8, '0000-00-00 00:00:00', 'approved'),
(2, 4, 'hello these are reviews', 45, 2, '0000-00-00 00:00:00', 'approved'),
(3, 4, 'comments awarded', 6, 45, '0000-00-00 00:00:00', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `mz_salesperson_quotation`
--

CREATE TABLE `mz_salesperson_quotation` (
  `salesperson_id` int(11) NOT NULL,
  `quotation_num` int(50) NOT NULL,
  `nric_num` varchar(400) NOT NULL,
  `digital_signature` varchar(400) NOT NULL,
  `contact_phone` varchar(50) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_salesperson_quotation`
--

INSERT INTO `mz_salesperson_quotation` (`salesperson_id`, `quotation_num`, `nric_num`, `digital_signature`, `contact_phone`, `due_date`) VALUES
(1, 23, '', '', '0', '0000-00-00'),
(2, 23, 'ghty', '', '0', '0000-00-00'),
(3, 45, 'hhhh', '', '9415791946', '0000-00-00'),
(8, 4, '50', '', '', '2017-04-27'),
(9, 7, '9', '', '', '2017-04-27'),
(10, 7, '9', '', '', '2017-04-27'),
(13, 7, '9', '', '8400216490', '2017-04-27'),
(14, 7, '9', '', '8400216490', '2017-04-27'),
(15, 7, '9', '', '8400216490', '2017-04-27'),
(17, 7, '9', '', '840021640', '2017-04-27'),
(18, 45, '25', 'p.jpg', '9716617594', '2017-04-27'),
(23, 7, '9', '', '8400216490', '2017-04-27'),
(30, 7, '9', '', '8400216490', '2017-04-27'),
(38, 7, '9', '', '8400216490', '2017-04-27'),
(70, 7, '9', '', '9415791946', '2017-04-27'),
(95, 7, '9', '', '8400216490', '2017-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `mz_sales_agreement_template`
--

CREATE TABLE `mz_sales_agreement_template` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(400) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_sales_agreement_template`
--

INSERT INTO `mz_sales_agreement_template` (`template_id`, `template_name`, `added_on`) VALUES
(1, 'Box Repair', '2017-04-25 00:00:00'),
(2, 'Engine Repair', '0000-00-00 00:00:00'),
(3, 'Freezer Repair', '2017-04-25 00:00:00'),
(4, 'Cabin Aircon Repair', '2017-04-25 00:00:00'),
(5, 'MCF CONTRACT', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mz_service_images`
--

CREATE TABLE `mz_service_images` (
  `id_service_image` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `image` varchar(400) NOT NULL,
  `type` enum('after','before') NOT NULL DEFAULT 'before',
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_service_images`
--

INSERT INTO `mz_service_images` (`id_service_image`, `id_service`, `image`, `type`, `added_on`) VALUES
(25, 6, '20170508153920_1494229160_butterfly.jpg', 'before', '2017-05-08 15:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `mz_service_quotation`
--

CREATE TABLE `mz_service_quotation` (
  `id_service` int(11) NOT NULL,
  `service_num` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `fax` varchar(40) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','confirmed','delete') NOT NULL,
  `salesperson_id` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `quotation_subject` int(11) NOT NULL,
  `reminder_date` date NOT NULL,
  `reminder_email` varchar(255) NOT NULL,
  `type` enum('service','eagreement') NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `discount_code` varchar(45) NOT NULL,
  `discount_amt` decimal(10,2) NOT NULL,
  `currency_type` enum('SGD','MYR') NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `agreement_num` varchar(255) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `agreement_id` int(5) NOT NULL,
  `service_num_id` int(11) NOT NULL,
  `terms_conditions` text NOT NULL,
  `terms_title` varchar(255) NOT NULL,
  `vehicle_num` varchar(400) DEFAULT NULL,
  `mileage` varchar(450) DEFAULT NULL,
  `nric_num` varchar(450) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `customer_sign` varchar(500) DEFAULT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_service_quotation`
--

INSERT INTO `mz_service_quotation` (`id_service`, `service_num`, `company_name`, `company_address`, `phone`, `fax`, `contact_person`, `email`, `added_on`, `status`, `salesperson_id`, `updated_on`, `quotation_subject`, `reminder_date`, `reminder_email`, `type`, `total_price`, `discount_code`, `discount_amt`, `currency_type`, `remarks`, `agreement_num`, `id_customer`, `agreement_id`, `service_num_id`, `terms_conditions`, `terms_title`, `vehicle_num`, `mileage`, `nric_num`, `due_date`, `customer_sign`, `template_id`) VALUES
(1, 'SQ2017-00000001', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:31:12', 'pending', 34, '2017-05-03 15:01:12', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 1, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(3, 'SQ2017-00000003', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:34:15', 'pending', 34, '2017-05-03 15:04:15', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 3, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(4, 'SQ2017-00000004', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:35:19', 'pending', 34, '2017-05-03 15:05:19', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 4, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(5, 'SQ2017-00000005', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:35:56', 'pending', 34, '2017-05-03 15:05:56', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 5, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(6, 'SQ2017-00000006', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:36:16', 'pending', 34, '2017-05-03 15:06:16', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 6, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(7, 'SQ2017-00000007', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:37:12', 'pending', 34, '2017-05-03 15:07:12', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 7, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(8, 'SQ2017-00000008', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:37:19', 'pending', 34, '2017-05-03 15:07:19', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 8, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(9, 'SQ2017-00000009', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:38:06', 'pending', 34, '2017-05-03 15:08:06', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 9, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(10, 'SQ2017-00000010', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:38:07', 'pending', 34, '2017-05-03 15:08:07', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 10, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(11, 'SQ2017-00000011', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:38:46', 'pending', 34, '2017-05-03 15:08:46', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 11, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(12, 'SQ2017-00000012', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:40:03', 'pending', 34, '2017-05-03 15:10:03', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 12, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(13, 'SQ2017-00000013', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:40:07', 'pending', 34, '2017-05-03 15:10:07', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 13, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(14, 'SQ2017-00000014', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:40:19', 'pending', 34, '2017-05-03 15:10:19', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 14, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(15, 'SQ2017-00000015', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:40:20', 'pending', 34, '2017-05-03 15:10:20', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 15, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(16, 'SQ2017-00000016', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:40:33', 'pending', 34, '2017-05-03 15:10:33', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 16, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(17, 'SQ2017-00000017', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:40:35', 'pending', 34, '2017-05-03 15:10:35', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 17, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(18, 'SQ2017-00000018', 'Rtr', 'singsys1', '433434434', '34434334', 'Rddd', 'fdd@g.com', '2017-05-15 10:12:48', 'pending', 2, '2017-05-15 15:42:48', 42, '2017-05-15', '', 'service', '2252.00', '', '0.00', 'MYR', '', '', 3, 0, 18, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Ttt', '9', NULL, NULL, NULL, 1),
(19, 'SQ2017-00000019', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:41:13', 'pending', 34, '2017-05-03 15:11:13', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 19, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(20, 'SQ2017-00000020', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:43:48', 'pending', 34, '2017-05-03 15:13:48', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 20, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(21, 'SQ2017-00000021', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:43:50', 'pending', 34, '2017-05-03 15:13:50', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 21, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(22, 'SQ2017-00000022', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:44:04', 'pending', 34, '2017-05-03 15:14:04', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 22, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(23, 'SQ2017-00000023', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:44:15', 'pending', 34, '2017-05-03 15:14:15', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 23, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(24, 'SQ2017-00000024', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:44:36', 'pending', 34, '2017-05-03 15:14:36', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 24, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(25, 'SQ2017-00000025', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:45:58', 'pending', 34, '2017-05-03 15:15:58', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 25, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(26, 'SQ2017-00000026', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:46:29', 'pending', 34, '2017-05-03 15:16:29', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 26, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(27, 'SQ2017-00000027', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:47:19', 'pending', 34, '2017-05-03 15:17:19', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 27, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(28, 'SQ2017-00000028', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:47:22', 'pending', 34, '2017-05-03 15:17:22', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 28, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(29, 'SQ2017-00000029', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:47:24', 'pending', 34, '2017-05-03 15:17:24', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 29, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(30, 'SQ2017-00000030', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:47:37', 'pending', 34, '2017-05-03 15:17:37', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 30, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(31, 'SQ2017-00000031', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:48:05', 'pending', 34, '2017-05-03 15:18:05', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 31, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(32, 'SQ2017-00000032', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:48:47', 'pending', 34, '2017-05-03 15:18:47', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 32, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(33, 'SQ2017-00000033', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:49:52', 'pending', 34, '2017-05-03 15:19:52', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 33, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(34, 'SQ2017-00000034', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:52:16', 'pending', 34, '2017-05-03 15:22:16', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 34, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(35, 'SQ2017-00000035', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:52:18', 'pending', 34, '2017-05-03 15:22:18', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 35, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(36, 'SQ2017-00000036', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:52:28', 'pending', 34, '2017-05-03 15:22:28', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 36, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(37, 'SQ2017-00000037', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:52:41', 'pending', 34, '2017-05-03 15:22:41', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 37, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(38, 'SQ2017-00000038', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:53:39', 'pending', 34, '2017-05-03 15:23:39', 0, '2017-05-03', '', 'service', '543.00', 'fcd455t4', '56.00', 'SGD', 'hello', '', 45, 0, 38, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(39, 'SQ2017-00000039', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:58:56', 'pending', 34, '2017-05-03 15:28:56', 0, '2017-05-03', '', 'service', '543.00', '', '0.00', 'SGD', 'hello', '', 45, 0, 39, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(40, 'SQ2017-00000040', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 09:59:42', 'pending', 34, '2017-05-03 15:29:42', 0, '2017-05-03', '', 'service', '543.00', '', '0.00', 'SGD', 'hello', '', 45, 0, 40, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(41, 'SQ2017-00000041', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 10:20:50', 'pending', 34, '2017-05-03 15:50:50', 0, '2017-05-03', '', 'service', '543.00', '', '0.00', 'SGD', 'hello', '', 45, 0, 41, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(42, 'SQ2017-00000042', 'ghjnkml,', '4325dgf654fd', '84000216490', '34567898', 'sana', 'sana@yahoo.com', '2017-05-03 10:20:54', 'pending', 34, '2017-05-03 15:50:54', 0, '2017-05-03', '', 'service', '543.00', '', '0.00', 'SGD', 'hello', '', 45, 0, 42, 'this is the condition', 'ytguhia', 'fwdfw79424', '40km/hr', NULL, NULL, NULL, 0),
(43, '', '', '', '', '', '', '', '2017-05-08 06:35:43', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00', '', '', '0.00', '', '0.00', '', '', '', 0, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, 0),
(44, 'SQ2017-00000043', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:06:28', 'pending', 45, '2017-05-08 14:36:28', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 43, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(45, 'SQ2017-00000044', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:08:45', 'delete', 45, '2017-05-11 20:17:28', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 44, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(46, 'SQ2017-00000045', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:09:40', 'pending', 45, '2017-05-08 14:39:40', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 45, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(47, 'SQ2017-00000046', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:11:56', 'pending', 45, '2017-05-08 14:41:56', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 46, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(48, 'SQ2017-00000047', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:15:28', 'pending', 45, '2017-05-08 14:45:28', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 47, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(49, 'SQ2017-00000048', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:15:50', 'pending', 45, '2017-05-08 14:45:50', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 48, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(50, 'SQ2017-00000049', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:16:08', 'pending', 45, '2017-05-08 14:46:08', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 1, 0, 49, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(51, 'SQ2017-00000050', 'sankjh', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:22:31', 'pending', 45, '2017-05-08 14:52:31', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 2, 0, 50, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(52, 'SQ2017-00000051', 'fghjk', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:22:46', 'pending', 45, '2017-05-08 14:52:46', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 2, 0, 51, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(53, 'SQ2017-00000052', 'singsys', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:32:51', 'pending', 45, '2017-05-08 15:02:51', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 2, 0, 52, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(54, 'SQ2017-00000053', 'singsys', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:47:32', 'pending', 45, '2017-05-08 15:17:32', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 19, 0, 53, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(55, 'SQ2017-00000054', 'singsys', 'sasasas', '4343434', '4343434', 'sasasasas', 'dsds@sdsd.in', '2017-05-08 09:47:42', 'pending', 45, '2017-05-08 15:17:42', 34, '2017-05-08', '', 'service', '223232.00', '', '0.00', 'MYR', '', '', 19, 0, 54, 'terms', 'title', 'UP32 GS 2025', '18', NULL, NULL, NULL, 4),
(56, 'SQ2017-00000055', 'qwerty', 'Address for new develop company', '80907767', '45687166', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-09 07:32:04', 'pending', 134, '2017-05-09 13:02:04', 42, '2017-05-09', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 18, 0, 55, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(57, 'SQ2017-00000056', 'qwerty', 'Address for new develop company', '80907767', '45687166', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-09 07:33:47', 'pending', 134, '2017-05-09 13:03:47', 42, '2017-05-09', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 56, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(58, 'SQ2017-00000057', 'qwerty', 'Address for new develop company', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 06:18:38', 'pending', 134, '2017-05-10 11:48:38', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 57, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(59, 'SQ2017-00000058', 'qwerty', 'Address for new develop company', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 06:38:59', 'pending', 134, '2017-05-10 12:08:59', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 58, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(60, 'SQ2017-00000059', 'qwerty', 'Address for new develop company', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 06:44:15', 'pending', 134, '2017-05-10 12:14:15', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 59, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(61, 'SQ2017-00000060', 'qwerty', 'Address for new develop company', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 06:44:49', 'pending', 134, '2017-05-10 12:14:49', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 60, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(62, 'SQ2017-00000061', 'qwerty', 'Address for new develop company', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 06:44:57', 'pending', 134, '2017-05-10 12:14:57', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 61, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(63, 'SQ2017-00000062', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 06:45:54', 'pending', 134, '2017-05-10 12:15:54', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 62, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(64, 'SQ2017-00000063', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 11:52:58', 'pending', 134, '2017-05-10 17:22:58', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 63, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(65, 'SQ2017-00000064', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 11:55:30', 'pending', 134, '2017-05-10 17:25:30', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 64, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(66, 'SQ2017-00000065', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 11:55:31', 'pending', 134, '2017-05-10 17:25:31', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 65, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(67, 'SQ2017-00000066', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 11:58:28', 'pending', 134, '2017-05-10 17:28:28', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 66, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(68, 'SQ2017-00000067', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 11:58:30', 'pending', 134, '2017-05-10 17:28:30', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 67, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(69, 'SQ2017-00000068', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 11:58:45', 'pending', 134, '2017-05-10 17:28:45', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 68, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(70, 'SQ2017-00000069', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:00:22', 'pending', 134, '2017-05-10 17:30:22', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 69, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1);
INSERT INTO `mz_service_quotation` (`id_service`, `service_num`, `company_name`, `company_address`, `phone`, `fax`, `contact_person`, `email`, `added_on`, `status`, `salesperson_id`, `updated_on`, `quotation_subject`, `reminder_date`, `reminder_email`, `type`, `total_price`, `discount_code`, `discount_amt`, `currency_type`, `remarks`, `agreement_num`, `id_customer`, `agreement_id`, `service_num_id`, `terms_conditions`, `terms_title`, `vehicle_num`, `mileage`, `nric_num`, `due_date`, `customer_sign`, `template_id`) VALUES
(71, 'SQ2017-00000070', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:00:23', 'pending', 134, '2017-05-10 17:30:23', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 70, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(72, 'SQ2017-00000071', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:00:23', 'pending', 134, '2017-05-10 17:30:23', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 71, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(73, 'SQ2017-00000072', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:00:39', 'pending', 134, '2017-05-10 17:30:39', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 72, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(74, 'SQ2017-00000073', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:00:57', 'pending', 134, '2017-05-10 17:30:57', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 73, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(75, 'SQ2017-00000074', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:01:15', 'pending', 134, '2017-05-10 17:31:15', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 74, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(76, 'SQ2017-00000075', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:01:16', 'pending', 134, '2017-05-10 17:31:16', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 75, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(77, 'SQ2017-00000076', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:06:24', 'pending', 134, '2017-05-10 17:36:24', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 76, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(78, 'SQ2017-00000077', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:06:25', 'pending', 134, '2017-05-10 17:36:25', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 77, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(79, 'SQ2017-00000078', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:11:23', 'pending', 134, '2017-05-10 17:41:23', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 78, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(80, 'SQ2017-00000079', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:19:57', 'pending', 134, '2017-05-10 17:49:57', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 79, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(81, 'SQ2017-00000080', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:37:31', 'pending', 134, '2017-05-10 18:07:31', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 80, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(82, 'SQ2017-00000081', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:39:58', 'pending', 134, '2017-05-10 18:09:58', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 81, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(83, 'SQ2017-00000082', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:45:31', 'pending', 134, '2017-05-10 18:15:31', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 82, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(84, 'SQ2017-00000083', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:45:33', 'pending', 134, '2017-05-10 18:15:33', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 83, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(85, 'SQ2017-00000084', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:47:11', 'pending', 134, '2017-05-10 18:17:11', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 84, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(86, 'SQ2017-00000085', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:47:16', 'pending', 134, '2017-05-10 18:17:16', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 85, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(87, 'SQ2017-00000086', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:47:16', 'pending', 134, '2017-05-10 18:17:16', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 86, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(88, 'SQ2017-00000087', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:47:16', 'pending', 134, '2017-05-10 18:17:16', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 87, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(89, 'SQ2017-00000088', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:48:31', 'pending', 134, '2017-05-10 18:18:31', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 88, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(90, 'SQ2017-00000089', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:49:09', 'pending', 134, '2017-05-10 18:19:09', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 89, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(91, 'SQ2017-00000090', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:49:11', 'pending', 134, '2017-05-10 18:19:11', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 90, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(92, 'SQ2017-00000091', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:49:12', 'pending', 134, '2017-05-10 18:19:12', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 91, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(93, 'SQ2017-00000092', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:49:14', 'pending', 134, '2017-05-10 18:19:14', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 92, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(94, 'SQ2017-00000093', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:49:17', 'pending', 134, '2017-05-10 18:19:17', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 93, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(95, 'SQ2017-00000094', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:49:30', 'pending', 134, '2017-05-10 18:19:30', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 94, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1);
INSERT INTO `mz_service_quotation` (`id_service`, `service_num`, `company_name`, `company_address`, `phone`, `fax`, `contact_person`, `email`, `added_on`, `status`, `salesperson_id`, `updated_on`, `quotation_subject`, `reminder_date`, `reminder_email`, `type`, `total_price`, `discount_code`, `discount_amt`, `currency_type`, `remarks`, `agreement_num`, `id_customer`, `agreement_id`, `service_num_id`, `terms_conditions`, `terms_title`, `vehicle_num`, `mileage`, `nric_num`, `due_date`, `customer_sign`, `template_id`) VALUES
(96, 'SQ2017-00000095', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 12:50:37', 'pending', 134, '2017-05-10 18:20:37', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 95, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(97, 'SQ2017-00000096', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:01:59', 'pending', 134, '2017-05-10 18:31:59', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 96, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(98, 'SQ2017-00000097', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:51:44', 'pending', 134, '2017-05-10 19:21:44', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 97, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(99, 'SQ2017-00000098', 'qwerty', 'Address for new develop company...', '80907767', '234567812', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:52:54', 'pending', 134, '2017-05-15 13:02:08', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 98, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(100, 'SQ2017-00000099', 'qwerty', 'Address for new develop company...', '80907767', '45687222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:53:32', 'pending', 134, '2017-05-15 13:49:52', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 99, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(101, 'SQ2017-00000100', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:54:13', 'pending', 134, '2017-05-10 19:24:13', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 100, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(102, 'SQ2017-00000101', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:54:17', 'pending', 134, '2017-05-10 19:24:17', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 101, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(103, 'SQ2017-00000102', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:54:40', 'pending', 134, '2017-05-10 19:24:40', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 102, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(104, 'SQ2017-00000103', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:55:54', 'pending', 134, '2017-05-10 19:25:54', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 103, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(105, 'SQ2017-00000104', 'qwerty', 'Address for new develop company...', '80907767', '456871222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:56:24', 'pending', 134, '2017-05-10 19:26:24', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 104, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(106, 'SQ2017-00000105', 'qwerty', 'Address for new develop company...', '80907767', '45687222', 'sunil gautam', 'testsunil@yopmail.com', '2017-05-10 13:57:37', 'pending', 134, '2017-05-15 13:50:01', 42, '2017-05-10', '', 'service', '120.00', '', '0.00', 'SGD', '', '', 4, 0, 105, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Yu', '77', NULL, NULL, NULL, 1),
(107, 'SQ2017-00000113', 'Rtr', 'singsys1', '433434434', '34434334', 'Rddd', 'fdd@g.com', '2017-05-15 09:37:24', 'pending', 2, '2017-05-15 15:07:24', 42, '2017-05-15', '', 'service', '2252.00', '', '0.00', 'MYR', '', '', 3, 0, 113, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Ttt', '9', NULL, NULL, NULL, 1),
(108, 'SQ2017-00000112', 'Rtr', 'Rtrtr', '433434434', '34434334', 'Rddd', 'fdd@g.com', '2017-05-11 09:52:13', 'pending', 134, '2017-05-11 15:22:13', 42, '2017-05-11', '', 'service', '2252.00', '', '0.00', 'MYR', '', '', 3, 0, 112, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'Ttt', '9', NULL, NULL, NULL, 1),
(150, 'SQ2017-00000208', 'Test laxmi', 'Lko', '54321155', '2147483647', 'Fddf33', 'dsds@g.vom', '2017-05-17 07:21:34', 'pending', 134, '2017-05-17 12:51:34', 42, '2017-05-17', '', 'service', '10.00', '', '0.00', '', '', '', 1, 0, 208, '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Terms and conditions', 'SBA 1234A', '45', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mz_service_quotation_products`
--

CREATE TABLE `mz_service_quotation_products` (
  `id_service_products` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_qty` int(155) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_service_quotation_products`
--

INSERT INTO `mz_service_quotation_products` (`id_service_products`, `id_service`, `id_product`, `product_name`, `product_qty`, `product_price`, `added_on`, `category_title`) VALUES
(3, 3, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:04:16', NULL),
(4, 4, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:05:20', NULL),
(5, 5, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:05:56', NULL),
(6, 6, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:06:16', NULL),
(7, 6, 67, 'sdghj', 8, '345.00', '2017-05-03 07:06:17', NULL),
(8, 7, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:07:12', NULL),
(9, 7, 67, 'sdghj', 8, '345.00', '2017-05-03 07:07:12', NULL),
(10, 8, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:07:19', NULL),
(11, 8, 67, 'sdghj', 8, '345.00', '2017-05-03 07:07:19', NULL),
(12, 9, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:08:06', NULL),
(13, 9, 67, 'sdghj', 8, '345.00', '2017-05-03 07:08:06', NULL),
(14, 10, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:08:07', NULL),
(15, 10, 67, 'sdghj', 8, '345.00', '2017-05-03 07:08:07', NULL),
(16, 11, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:08:46', NULL),
(17, 11, 67, 'sdghj', 8, '345.00', '2017-05-03 07:08:46', NULL),
(18, 12, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:10:03', NULL),
(19, 12, 67, 'sdghj', 8, '345.00', '2017-05-03 07:10:03', NULL),
(20, 13, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:10:07', NULL),
(21, 13, 67, 'sdghj', 8, '345.00', '2017-05-03 07:10:08', NULL),
(22, 14, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:10:19', NULL),
(23, 14, 67, 'sdghj', 8, '345.00', '2017-05-03 07:10:19', NULL),
(24, 15, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:10:21', NULL),
(25, 15, 67, 'sdghj', 8, '345.00', '2017-05-03 07:10:21', NULL),
(26, 16, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:10:34', NULL),
(27, 16, 67, 'sdghj', 8, '345.00', '2017-05-03 07:10:34', NULL),
(28, 17, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:10:35', NULL),
(29, 17, 67, 'sdghj', 8, '345.00', '2017-05-03 07:10:35', NULL),
(32, 19, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:11:13', NULL),
(33, 19, 67, 'sdghj', 8, '345.00', '2017-05-03 07:11:13', NULL),
(34, 20, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:13:48', NULL),
(35, 20, 67, 'sdghj', 8, '345.00', '2017-05-03 07:13:48', NULL),
(36, 21, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:13:50', NULL),
(37, 21, 67, 'sdghj', 8, '345.00', '2017-05-03 07:13:51', NULL),
(38, 22, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:14:05', NULL),
(39, 22, 67, 'sdghj', 8, '345.00', '2017-05-03 07:14:05', NULL),
(40, 23, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:14:15', NULL),
(41, 23, 67, 'sdghj', 8, '345.00', '2017-05-03 07:14:16', NULL),
(42, 24, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:14:37', NULL),
(43, 24, 67, 'sdghj', 8, '345.00', '2017-05-03 07:14:37', NULL),
(44, 25, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:15:58', NULL),
(45, 25, 67, 'sdghj', 8, '345.00', '2017-05-03 07:15:58', NULL),
(46, 26, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:16:29', NULL),
(47, 26, 67, 'sdghj', 8, '345.00', '2017-05-03 07:16:29', NULL),
(48, 27, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:17:19', NULL),
(49, 27, 67, 'sdghj', 8, '345.00', '2017-05-03 07:17:19', NULL),
(50, 28, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:17:22', NULL),
(51, 28, 67, 'sdghj', 8, '345.00', '2017-05-03 07:17:23', NULL),
(52, 29, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:17:24', NULL),
(53, 29, 67, 'sdghj', 8, '345.00', '2017-05-03 07:17:25', NULL),
(54, 30, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:17:37', NULL),
(55, 30, 67, 'sdghj', 8, '345.00', '2017-05-03 07:17:38', NULL),
(56, 31, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:18:05', NULL),
(57, 31, 67, 'sdghj', 8, '345.00', '2017-05-03 07:18:06', NULL),
(58, 32, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:18:47', NULL),
(59, 32, 67, 'sdghj', 8, '345.00', '2017-05-03 07:18:47', NULL),
(60, 33, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:19:52', NULL),
(61, 33, 67, 'sdghj', 8, '345.00', '2017-05-03 07:19:52', NULL),
(62, 34, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:22:16', NULL),
(63, 34, 67, 'sdghj', 8, '345.00', '2017-05-03 07:22:16', NULL),
(64, 35, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:22:18', NULL),
(65, 35, 67, 'sdghj', 8, '345.00', '2017-05-03 07:22:18', NULL),
(66, 36, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:22:28', NULL),
(67, 36, 67, 'sdghj', 8, '345.00', '2017-05-03 07:22:28', NULL),
(68, 37, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:22:42', NULL),
(69, 37, 67, 'sdghj', 8, '345.00', '2017-05-03 07:22:42', NULL),
(70, 38, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:23:39', NULL),
(71, 38, 67, 'sdghj', 8, '345.00', '2017-05-03 07:23:39', NULL),
(72, 39, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:28:56', NULL),
(73, 39, 67, 'sdghj', 8, '345.00', '2017-05-03 07:28:56', NULL),
(74, 40, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:29:42', NULL),
(75, 40, 67, 'sdghj', 8, '345.00', '2017-05-03 07:29:42', NULL),
(76, 41, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:50:50', NULL),
(77, 41, 67, 'sdghj', 8, '345.00', '2017-05-03 07:50:50', NULL),
(78, 42, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:50:54', NULL),
(79, 42, 67, 'sdghj', 8, '345.00', '2017-05-03 07:50:54', NULL),
(80, 43, 45, 'efghjk', 6, '2345.00', '2017-05-03 07:52:16', NULL),
(81, 43, 67, 'sdghj', 8, '345.00', '2017-05-03 07:52:16', NULL),
(82, 44, 12, 'model name adding', 2, '150.00', '2017-05-08 06:36:28', NULL),
(83, 45, 12, 'model name adding', 2, '150.00', '2017-05-08 06:38:45', NULL),
(84, 45, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:38:46', NULL),
(85, 46, 12, 'model name adding', 2, '150.00', '2017-05-08 06:39:40', NULL),
(86, 46, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:39:41', NULL),
(87, 47, 12, 'model name adding', 2, '150.00', '2017-05-08 06:41:56', NULL),
(88, 47, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:41:56', NULL),
(89, 48, 12, 'model name adding', 2, '150.00', '2017-05-08 06:45:29', NULL),
(90, 48, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:45:29', NULL),
(91, 49, 12, 'model name adding', 2, '150.00', '2017-05-08 06:45:50', NULL),
(92, 49, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:45:50', NULL),
(93, 50, 12, 'model name adding', 2, '150.00', '2017-05-08 06:46:08', NULL),
(94, 50, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:46:08', NULL),
(95, 51, 12, 'model name adding', 2, '150.00', '2017-05-08 06:52:31', NULL),
(96, 51, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:52:31', NULL),
(97, 52, 12, 'model name adding', 2, '150.00', '2017-05-08 06:52:46', NULL),
(98, 52, 44, 'model name adding 2', 2, '150.00', '2017-05-08 06:52:46', NULL),
(99, 53, 12, 'model name adding', 2, '150.00', '2017-05-08 07:02:51', NULL),
(100, 53, 44, 'model name adding 2', 2, '150.00', '2017-05-08 07:02:51', NULL),
(101, 54, 12, 'model name adding', 2, '150.00', '2017-05-08 07:17:32', NULL),
(102, 54, 44, 'model name adding 2', 2, '150.00', '2017-05-08 07:17:32', NULL),
(103, 55, 12, 'model name adding', 2, '150.00', '2017-05-08 07:17:43', NULL),
(104, 55, 44, 'model name adding 2', 2, '150.00', '2017-05-08 07:17:43', NULL),
(105, 56, 10, 'TEST 1', 2, '10.00', '2017-05-09 05:02:05', NULL),
(106, 56, 2, 'model name adding', 1, '100.00', '2017-05-09 05:02:05', NULL),
(107, 57, 10, 'TEST 1', 2, '10.00', '2017-05-09 05:03:47', NULL),
(108, 57, 2, 'model name adding', 1, '100.00', '2017-05-09 05:03:48', NULL),
(109, 58, 10, 'TEST 1', 2, '10.00', '2017-05-10 03:48:38', NULL),
(110, 59, 10, 'TEST 1', 2, '10.00', '2017-05-10 04:08:59', NULL),
(111, 59, 2, 'model name adding', 1, '100.00', '2017-05-10 04:09:00', NULL),
(112, 60, 10, 'TEST 1', 2, '10.00', '2017-05-10 04:14:16', NULL),
(113, 60, 2, 'model name adding', 1, '100.00', '2017-05-10 04:14:16', NULL),
(114, 61, 10, 'TEST 1', 2, '10.00', '2017-05-10 04:14:49', NULL),
(115, 61, 2, 'model name adding', 1, '100.00', '2017-05-10 04:14:50', NULL),
(116, 62, 10, 'TEST 1', 2, '10.00', '2017-05-10 04:14:58', NULL),
(117, 62, 2, 'model name adding', 1, '100.00', '2017-05-10 04:14:58', NULL),
(118, 63, 10, 'TEST 1', 2, '10.00', '2017-05-10 04:15:54', NULL),
(119, 63, 2, 'model name adding', 1, '100.00', '2017-05-10 04:15:55', NULL),
(120, 80, 10, 'TEST 1', 2, '10.00', '2017-05-10 09:49:58', NULL),
(121, 80, 2, 'model name adding', 1, '100.00', '2017-05-10 09:49:58', NULL),
(122, 103, 10, 'TEST 1', 2, '10.00', '2017-05-10 11:24:40', NULL),
(123, 103, 2, 'model name adding', 1, '100.00', '2017-05-10 11:24:40', NULL),
(124, 104, 10, 'TEST 1', 2, '10.00', '2017-05-10 11:25:54', NULL),
(125, 104, 2, 'model name adding', 1, '100.00', '2017-05-10 11:25:55', NULL),
(126, 105, 10, 'TEST 1', 2, '10.00', '2017-05-10 11:26:24', NULL),
(127, 105, 2, 'model name adding', 1, '100.00', '2017-05-10 11:26:25', NULL),
(128, 106, 10, 'TEST 1', 2, '10.00', '2017-05-10 11:27:37', NULL),
(129, 106, 2, 'model name adding', 1, '100.00', '2017-05-10 11:27:38', NULL),
(150, 108, 2, 'model name adding', 1, '100.00', '2017-05-11 07:22:13', NULL),
(151, 130, 2, 'model name adding', 1, '100.00', '2017-05-11 07:22:56', NULL),
(156, 107, 2, 'model name adding', 1, '100.00', '2017-05-15 07:07:24', NULL),
(159, 18, 2, 'model name singsys', 1, '100.00', '2017-05-15 07:42:49', NULL),
(161, 117, 2, 'model name adding', 1, '100.00', '2017-05-16 09:40:58', NULL),
(411, 150, 10, 'TEST 1', 1, '10.00', '2017-05-17 07:21:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mz_service_quotation_product_attr`
--

CREATE TABLE `mz_service_quotation_product_attr` (
  `id_service_attr` int(11) NOT NULL,
  `id_service_products` int(11) NOT NULL,
  `id_product_attr` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_service_quotation_product_attr`
--

INSERT INTO `mz_service_quotation_product_attr` (`id_service_attr`, `id_service_products`, `id_product_attr`, `id_attribute`, `label`, `price`, `added_on`) VALUES
(1, 45, 40, 5, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', NULL, '2017-05-03 07:04:16'),
(2, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:06:16'),
(3, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:06:17'),
(4, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:06:17'),
(5, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:07:12'),
(6, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:07:12'),
(7, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:07:12'),
(8, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:07:19'),
(9, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:07:19'),
(10, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:07:19'),
(11, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:08:06'),
(12, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:08:06'),
(13, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:08:06'),
(14, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:08:07'),
(15, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:08:07'),
(16, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:08:07'),
(17, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:08:46'),
(18, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:08:46'),
(19, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:08:46'),
(20, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:10:03'),
(21, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:10:03'),
(22, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:10:03'),
(23, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:10:07'),
(24, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:10:08'),
(25, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:10:08'),
(26, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:10:19'),
(27, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:10:19'),
(28, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:10:19'),
(29, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:10:21'),
(30, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:10:21'),
(31, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:10:21'),
(32, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:10:34'),
(33, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:10:34'),
(34, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:10:34'),
(35, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:10:35'),
(36, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:10:36'),
(37, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:10:36'),
(38, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:11:13'),
(39, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:11:13'),
(40, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:11:13'),
(41, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:11:13'),
(42, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:11:13'),
(43, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:11:13'),
(44, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:13:48'),
(45, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:13:48'),
(46, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:13:48'),
(47, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:13:50'),
(48, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:13:51'),
(49, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:13:51'),
(50, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:14:05'),
(51, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:14:05'),
(52, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:14:05'),
(53, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:14:15'),
(54, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:14:16'),
(55, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:14:16'),
(56, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:14:37'),
(57, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:14:37'),
(58, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:14:37'),
(59, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:15:58'),
(62, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:16:29'),
(63, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:16:29'),
(64, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:16:30'),
(65, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:17:19'),
(66, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:17:19'),
(67, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:17:19'),
(68, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:17:23'),
(69, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:17:23'),
(70, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:17:23'),
(71, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:17:25'),
(72, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:17:25'),
(73, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:17:25'),
(74, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:17:38'),
(75, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:17:38'),
(76, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:17:38'),
(77, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:18:06'),
(78, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:18:06'),
(79, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:18:06'),
(80, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:18:47'),
(81, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:18:47'),
(82, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:18:47'),
(83, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:19:52'),
(84, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:19:52'),
(85, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:19:52'),
(86, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:22:16'),
(87, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:22:16'),
(88, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:22:16'),
(89, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:22:18'),
(90, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:22:18'),
(91, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:22:18'),
(92, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:22:28'),
(95, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:22:42'),
(96, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:22:42'),
(97, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:22:42'),
(98, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:23:39'),
(99, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:23:39'),
(100, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:23:39'),
(101, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:28:56'),
(102, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:28:56'),
(103, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:28:56'),
(104, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:29:42'),
(105, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:29:42'),
(106, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:29:42'),
(107, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:50:50'),
(108, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:50:50'),
(109, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:50:50'),
(110, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:50:54'),
(111, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:50:54'),
(112, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:50:54'),
(113, 45, 40, 5, 'dfgh', '344.00', '2017-05-03 07:52:16'),
(114, 45, 34, 4, 'ddsfs', '746.00', '2017-05-03 07:52:16'),
(115, 45, 23, 6, 'dfgh', '3434.00', '2017-05-03 07:52:16'),
(116, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:38:45'),
(117, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:38:45'),
(118, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:38:46'),
(119, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:38:46'),
(120, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:39:41'),
(121, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:39:41'),
(122, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:39:41'),
(123, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:39:41'),
(124, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:41:56'),
(125, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:41:56'),
(126, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:41:56'),
(127, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:41:56'),
(128, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:45:29'),
(129, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:45:29'),
(130, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:45:29'),
(131, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:45:29'),
(132, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:45:50'),
(133, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:45:50'),
(134, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:45:50'),
(135, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:45:50'),
(136, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:46:08'),
(137, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:46:08'),
(138, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:46:08'),
(139, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:46:08'),
(140, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:52:31'),
(141, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:52:31'),
(142, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:52:31'),
(143, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:52:31'),
(144, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:52:46'),
(145, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:52:46'),
(146, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 06:52:46'),
(147, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 06:52:46'),
(148, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 07:02:51'),
(149, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 07:02:51'),
(150, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 07:02:51'),
(151, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 07:02:51'),
(152, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 07:17:32'),
(153, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 07:17:32'),
(154, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 07:17:32'),
(155, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 07:17:32'),
(156, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 07:17:43'),
(157, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 07:17:43'),
(158, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '2152.00', '2017-05-08 07:17:43'),
(159, 45, 45, 3, '10FT LB, L3080MMXW1700MMXH1200MM', '1101.00', '2017-05-08 07:17:43'),
(160, 45, 0, 2, '', '0.00', '2017-05-09 05:02:05'),
(161, 45, 0, 3, '', '0.00', '2017-05-09 05:02:05'),
(162, 45, 0, 4, '', '0.00', '2017-05-09 05:02:05'),
(163, 45, 0, 5, '', '0.00', '2017-05-09 05:02:05'),
(164, 45, 0, 6, '', '0.00', '2017-05-09 05:02:05'),
(165, 45, 0, 7, '', '0.00', '2017-05-09 05:02:05'),
(166, 45, 0, 8, '', '0.00', '2017-05-09 05:02:05'),
(167, 45, 0, 9, '', '0.00', '2017-05-09 05:02:05'),
(168, 45, 0, 10, '', '0.00', '2017-05-09 05:02:05'),
(169, 45, 0, 18, '', '0.00', '2017-05-09 05:02:05'),
(170, 45, 0, 19, '', '0.00', '2017-05-09 05:02:05'),
(171, 45, 0, 20, '', '0.00', '2017-05-09 05:02:05'),
(172, 45, 0, 2, '', '0.00', '2017-05-09 05:02:05'),
(173, 45, 0, 3, '', '0.00', '2017-05-09 05:02:05'),
(174, 45, 0, 4, '', '0.00', '2017-05-09 05:02:05'),
(175, 45, 0, 5, '', '0.00', '2017-05-09 05:02:06'),
(176, 45, 0, 6, '', '0.00', '2017-05-09 05:02:06'),
(177, 45, 0, 7, '', '0.00', '2017-05-09 05:02:06'),
(178, 45, 0, 8, '', '0.00', '2017-05-09 05:02:06'),
(179, 45, 0, 9, '', '0.00', '2017-05-09 05:02:06'),
(180, 45, 0, 10, '', '0.00', '2017-05-09 05:02:06'),
(181, 45, 0, 18, '', '0.00', '2017-05-09 05:02:06'),
(182, 45, 0, 19, '', '0.00', '2017-05-09 05:02:06'),
(183, 45, 0, 20, '', '0.00', '2017-05-09 05:02:06'),
(184, 45, 0, 2, '', '0.00', '2017-05-09 05:03:47'),
(185, 45, 0, 3, '', '0.00', '2017-05-09 05:03:47'),
(186, 45, 0, 4, '', '0.00', '2017-05-09 05:03:47'),
(187, 45, 0, 5, '', '0.00', '2017-05-09 05:03:47'),
(188, 45, 0, 6, '', '0.00', '2017-05-09 05:03:47'),
(189, 45, 0, 7, '', '0.00', '2017-05-09 05:03:47'),
(190, 45, 0, 8, '', '0.00', '2017-05-09 05:03:47'),
(191, 45, 0, 9, '', '0.00', '2017-05-09 05:03:47'),
(192, 45, 0, 10, '', '0.00', '2017-05-09 05:03:48'),
(193, 45, 0, 18, '', '0.00', '2017-05-09 05:03:48'),
(194, 45, 0, 19, '', '0.00', '2017-05-09 05:03:48'),
(195, 45, 0, 20, '', '0.00', '2017-05-09 05:03:48'),
(196, 45, 0, 2, '', '0.00', '2017-05-09 05:03:48'),
(197, 45, 0, 3, '', '0.00', '2017-05-09 05:03:48'),
(198, 45, 0, 4, '', '0.00', '2017-05-09 05:03:48'),
(199, 45, 0, 5, '', '0.00', '2017-05-09 05:03:48'),
(200, 45, 0, 6, '', '0.00', '2017-05-09 05:03:48'),
(201, 45, 0, 7, '', '0.00', '2017-05-09 05:03:48'),
(202, 45, 0, 8, '', '0.00', '2017-05-09 05:03:48'),
(203, 45, 0, 9, '', '0.00', '2017-05-09 05:03:48'),
(204, 45, 0, 10, '', '0.00', '2017-05-09 05:03:48'),
(205, 45, 0, 18, '', '0.00', '2017-05-09 05:03:48'),
(206, 45, 0, 19, '', '0.00', '2017-05-09 05:03:48'),
(207, 45, 0, 20, '', '0.00', '2017-05-09 05:03:48'),
(208, 45, 0, 2, '', '0.00', '2017-05-10 04:08:59'),
(209, 45, 0, 3, '', '0.00', '2017-05-10 04:08:59'),
(210, 45, 0, 4, '', '0.00', '2017-05-10 04:08:59'),
(211, 45, 0, 5, '', '0.00', '2017-05-10 04:08:59'),
(212, 45, 0, 6, '', '0.00', '2017-05-10 04:08:59'),
(213, 45, 0, 7, '', '0.00', '2017-05-10 04:08:59'),
(214, 45, 0, 8, '', '0.00', '2017-05-10 04:08:59'),
(215, 45, 0, 9, '', '0.00', '2017-05-10 04:09:00'),
(216, 45, 0, 10, '', '0.00', '2017-05-10 04:09:00'),
(217, 45, 0, 18, '', '0.00', '2017-05-10 04:09:00'),
(218, 45, 0, 19, '', '0.00', '2017-05-10 04:09:00'),
(219, 45, 0, 20, '', '0.00', '2017-05-10 04:09:00'),
(220, 45, 0, 2, '', '0.00', '2017-05-10 04:09:00'),
(221, 45, 0, 3, '', '0.00', '2017-05-10 04:09:00'),
(222, 45, 0, 4, '', '0.00', '2017-05-10 04:09:00'),
(223, 45, 0, 5, '', '0.00', '2017-05-10 04:09:00'),
(224, 45, 0, 6, '', '0.00', '2017-05-10 04:09:00'),
(225, 45, 0, 7, '', '0.00', '2017-05-10 04:09:00'),
(226, 45, 0, 8, '', '0.00', '2017-05-10 04:09:00'),
(227, 45, 0, 9, '', '0.00', '2017-05-10 04:09:00'),
(228, 45, 0, 10, '', '0.00', '2017-05-10 04:09:00'),
(229, 45, 0, 18, '', '0.00', '2017-05-10 04:09:00'),
(230, 45, 0, 19, '', '0.00', '2017-05-10 04:09:00'),
(231, 45, 0, 20, '', '0.00', '2017-05-10 04:09:00'),
(232, 45, 0, 2, '', '0.00', '2017-05-10 04:14:16'),
(233, 45, 0, 3, '', '0.00', '2017-05-10 04:14:16'),
(234, 45, 0, 4, '', '0.00', '2017-05-10 04:14:16'),
(235, 45, 0, 5, '', '0.00', '2017-05-10 04:14:16'),
(236, 45, 0, 6, '', '0.00', '2017-05-10 04:14:16'),
(237, 45, 0, 7, '', '0.00', '2017-05-10 04:14:16'),
(238, 45, 0, 8, '', '0.00', '2017-05-10 04:14:16'),
(239, 45, 0, 9, '', '0.00', '2017-05-10 04:14:16'),
(240, 45, 0, 10, '', '0.00', '2017-05-10 04:14:16'),
(241, 45, 0, 18, '', '0.00', '2017-05-10 04:14:16'),
(242, 45, 0, 19, '', '0.00', '2017-05-10 04:14:16'),
(243, 45, 0, 20, '', '0.00', '2017-05-10 04:14:16'),
(244, 45, 0, 2, '', '0.00', '2017-05-10 04:14:16'),
(245, 45, 0, 3, '', '0.00', '2017-05-10 04:14:16'),
(246, 45, 0, 4, '', '0.00', '2017-05-10 04:14:17'),
(247, 45, 0, 5, '', '0.00', '2017-05-10 04:14:17'),
(248, 45, 0, 6, '', '0.00', '2017-05-10 04:14:17'),
(249, 45, 0, 7, '', '0.00', '2017-05-10 04:14:17'),
(250, 45, 0, 8, '', '0.00', '2017-05-10 04:14:17'),
(251, 45, 0, 9, '', '0.00', '2017-05-10 04:14:17'),
(252, 45, 0, 10, '', '0.00', '2017-05-10 04:14:17'),
(253, 45, 0, 18, '', '0.00', '2017-05-10 04:14:17'),
(254, 45, 0, 19, '', '0.00', '2017-05-10 04:14:17'),
(255, 45, 0, 20, '', '0.00', '2017-05-10 04:14:17'),
(256, 45, 0, 2, '', '0.00', '2017-05-10 04:14:49'),
(257, 45, 0, 3, '', '0.00', '2017-05-10 04:14:49'),
(258, 45, 0, 4, '', '0.00', '2017-05-10 04:14:49'),
(259, 45, 0, 5, '', '0.00', '2017-05-10 04:14:49'),
(260, 45, 0, 6, '', '0.00', '2017-05-10 04:14:49'),
(261, 45, 0, 7, '', '0.00', '2017-05-10 04:14:49'),
(262, 45, 0, 8, '', '0.00', '2017-05-10 04:14:49'),
(263, 45, 0, 9, '', '0.00', '2017-05-10 04:14:49'),
(264, 45, 0, 10, '', '0.00', '2017-05-10 04:14:49'),
(265, 45, 0, 18, '', '0.00', '2017-05-10 04:14:49'),
(266, 45, 0, 19, '', '0.00', '2017-05-10 04:14:49'),
(267, 45, 0, 20, '', '0.00', '2017-05-10 04:14:49'),
(268, 45, 0, 2, '', '0.00', '2017-05-10 04:14:50'),
(269, 45, 0, 3, '', '0.00', '2017-05-10 04:14:50'),
(270, 45, 0, 4, '', '0.00', '2017-05-10 04:14:50'),
(271, 45, 0, 5, '', '0.00', '2017-05-10 04:14:50'),
(272, 45, 0, 6, '', '0.00', '2017-05-10 04:14:50'),
(273, 45, 0, 7, '', '0.00', '2017-05-10 04:14:50'),
(274, 45, 0, 8, '', '0.00', '2017-05-10 04:14:50'),
(275, 45, 0, 9, '', '0.00', '2017-05-10 04:14:50'),
(276, 45, 0, 10, '', '0.00', '2017-05-10 04:14:50'),
(277, 45, 0, 18, '', '0.00', '2017-05-10 04:14:50'),
(278, 45, 0, 19, '', '0.00', '2017-05-10 04:14:50'),
(279, 45, 0, 20, '', '0.00', '2017-05-10 04:14:50'),
(280, 45, 0, 2, '', '0.00', '2017-05-10 04:14:58'),
(281, 45, 0, 3, '', '0.00', '2017-05-10 04:14:58'),
(282, 45, 0, 4, '', '0.00', '2017-05-10 04:14:58'),
(283, 45, 0, 5, '', '0.00', '2017-05-10 04:14:58'),
(284, 45, 0, 6, '', '0.00', '2017-05-10 04:14:58'),
(285, 45, 0, 7, '', '0.00', '2017-05-10 04:14:58'),
(286, 45, 0, 8, '', '0.00', '2017-05-10 04:14:58'),
(287, 45, 0, 9, '', '0.00', '2017-05-10 04:14:58'),
(288, 45, 0, 10, '', '0.00', '2017-05-10 04:14:58'),
(289, 45, 0, 18, '', '0.00', '2017-05-10 04:14:58'),
(290, 45, 0, 19, '', '0.00', '2017-05-10 04:14:58'),
(291, 45, 0, 20, '', '0.00', '2017-05-10 04:14:58'),
(292, 45, 0, 2, '', '0.00', '2017-05-10 04:14:58'),
(293, 45, 0, 3, '', '0.00', '2017-05-10 04:14:58'),
(294, 45, 0, 4, '', '0.00', '2017-05-10 04:14:58'),
(295, 45, 0, 5, '', '0.00', '2017-05-10 04:14:58'),
(296, 45, 0, 6, '', '0.00', '2017-05-10 04:14:59'),
(297, 45, 0, 7, '', '0.00', '2017-05-10 04:14:59'),
(298, 45, 0, 8, '', '0.00', '2017-05-10 04:14:59'),
(299, 45, 0, 9, '', '0.00', '2017-05-10 04:14:59'),
(300, 45, 0, 10, '', '0.00', '2017-05-10 04:14:59'),
(301, 45, 0, 18, '', '0.00', '2017-05-10 04:14:59'),
(302, 45, 0, 19, '', '0.00', '2017-05-10 04:14:59'),
(303, 45, 0, 20, '', '0.00', '2017-05-10 04:14:59'),
(304, 45, 0, 2, '', '0.00', '2017-05-10 04:15:54'),
(305, 45, 0, 3, '', '0.00', '2017-05-10 04:15:54'),
(306, 45, 0, 4, '', '0.00', '2017-05-10 04:15:54'),
(307, 45, 0, 5, '', '0.00', '2017-05-10 04:15:54'),
(308, 45, 0, 6, '', '0.00', '2017-05-10 04:15:54'),
(309, 45, 0, 7, '', '0.00', '2017-05-10 04:15:54'),
(310, 45, 0, 8, '', '0.00', '2017-05-10 04:15:54'),
(311, 45, 0, 9, '', '0.00', '2017-05-10 04:15:54'),
(312, 45, 0, 10, '', '0.00', '2017-05-10 04:15:54'),
(313, 45, 0, 18, '', '0.00', '2017-05-10 04:15:54'),
(314, 45, 0, 19, '', '0.00', '2017-05-10 04:15:54'),
(315, 45, 0, 20, '', '0.00', '2017-05-10 04:15:55'),
(316, 45, 0, 2, '', '0.00', '2017-05-10 04:15:55'),
(317, 45, 0, 3, '', '0.00', '2017-05-10 04:15:55'),
(318, 45, 0, 4, '', '0.00', '2017-05-10 04:15:55'),
(319, 45, 0, 5, '', '0.00', '2017-05-10 04:15:55'),
(320, 45, 0, 6, '', '0.00', '2017-05-10 04:15:55'),
(321, 45, 0, 7, '', '0.00', '2017-05-10 04:15:55'),
(322, 45, 0, 8, '', '0.00', '2017-05-10 04:15:55'),
(323, 45, 0, 9, '', '0.00', '2017-05-10 04:15:55'),
(324, 45, 0, 10, '', '0.00', '2017-05-10 04:15:55'),
(325, 45, 0, 18, '', '0.00', '2017-05-10 04:15:55'),
(326, 45, 0, 19, '', '0.00', '2017-05-10 04:15:55'),
(327, 45, 0, 20, '', '0.00', '2017-05-10 04:15:55'),
(328, 45, 0, 2, '', '0.00', '2017-05-10 09:49:58'),
(329, 45, 0, 3, '', '0.00', '2017-05-10 09:49:58'),
(330, 45, 0, 4, '', '0.00', '2017-05-10 09:49:58'),
(331, 45, 0, 5, '', '0.00', '2017-05-10 09:49:58'),
(332, 45, 0, 6, '', '0.00', '2017-05-10 09:49:58'),
(333, 45, 0, 7, '', '0.00', '2017-05-10 09:49:58'),
(334, 45, 0, 8, '', '0.00', '2017-05-10 09:49:58'),
(335, 45, 0, 9, '', '0.00', '2017-05-10 09:49:58'),
(336, 45, 0, 10, '', '0.00', '2017-05-10 09:49:58'),
(337, 45, 0, 18, '', '0.00', '2017-05-10 09:49:58'),
(338, 45, 0, 19, '', '0.00', '2017-05-10 09:49:58'),
(339, 45, 0, 20, '', '0.00', '2017-05-10 09:49:58'),
(340, 45, 0, 2, '', '0.00', '2017-05-10 09:49:58'),
(341, 45, 0, 3, '', '0.00', '2017-05-10 09:49:58'),
(342, 45, 0, 4, '', '0.00', '2017-05-10 09:49:58'),
(343, 45, 0, 5, '', '0.00', '2017-05-10 09:49:59'),
(344, 45, 0, 6, '', '0.00', '2017-05-10 09:49:59'),
(345, 45, 0, 7, '', '0.00', '2017-05-10 09:49:59'),
(346, 45, 0, 8, '', '0.00', '2017-05-10 09:49:59'),
(347, 45, 0, 9, '', '0.00', '2017-05-10 09:49:59'),
(348, 45, 0, 10, '', '0.00', '2017-05-10 09:49:59'),
(349, 45, 0, 18, '', '0.00', '2017-05-10 09:49:59'),
(350, 45, 0, 19, '', '0.00', '2017-05-10 09:49:59'),
(351, 45, 0, 20, '', '0.00', '2017-05-10 09:49:59'),
(352, 45, 0, 2, '', '0.00', '2017-05-10 11:24:40'),
(353, 45, 0, 3, '', '0.00', '2017-05-10 11:24:40'),
(354, 45, 0, 4, '', '0.00', '2017-05-10 11:24:40'),
(355, 45, 0, 5, '', '0.00', '2017-05-10 11:24:40'),
(356, 45, 0, 6, '', '0.00', '2017-05-10 11:24:40'),
(357, 45, 0, 7, '', '0.00', '2017-05-10 11:24:40'),
(358, 45, 0, 8, '', '0.00', '2017-05-10 11:24:40'),
(359, 45, 0, 9, '', '0.00', '2017-05-10 11:24:40'),
(360, 45, 0, 10, '', '0.00', '2017-05-10 11:24:40'),
(361, 45, 0, 18, '', '0.00', '2017-05-10 11:24:40'),
(362, 45, 0, 19, '', '0.00', '2017-05-10 11:24:40'),
(363, 45, 0, 20, '', '0.00', '2017-05-10 11:24:40'),
(364, 45, 0, 2, '', '0.00', '2017-05-10 11:24:41'),
(365, 45, 0, 3, '', '0.00', '2017-05-10 11:24:41'),
(366, 45, 0, 4, '', '0.00', '2017-05-10 11:24:41'),
(367, 45, 0, 5, '', '0.00', '2017-05-10 11:24:41'),
(368, 45, 0, 6, '', '0.00', '2017-05-10 11:24:41'),
(369, 45, 0, 7, '', '0.00', '2017-05-10 11:24:41'),
(370, 45, 0, 8, '', '0.00', '2017-05-10 11:24:41'),
(371, 45, 0, 9, '', '0.00', '2017-05-10 11:24:41'),
(372, 45, 0, 10, '', '0.00', '2017-05-10 11:24:41'),
(373, 45, 0, 18, '', '0.00', '2017-05-10 11:24:41'),
(374, 45, 0, 19, '', '0.00', '2017-05-10 11:24:41'),
(375, 45, 0, 20, '', '0.00', '2017-05-10 11:24:41'),
(376, 45, 0, 2, '', '0.00', '2017-05-10 11:25:55'),
(377, 45, 0, 3, '', '0.00', '2017-05-10 11:25:55'),
(378, 45, 0, 4, '', '0.00', '2017-05-10 11:25:55'),
(379, 45, 0, 5, '', '0.00', '2017-05-10 11:25:55'),
(380, 45, 0, 6, '', '0.00', '2017-05-10 11:25:55'),
(381, 45, 0, 7, '', '0.00', '2017-05-10 11:25:55'),
(382, 45, 0, 8, '', '0.00', '2017-05-10 11:25:55'),
(383, 45, 0, 9, '', '0.00', '2017-05-10 11:25:55'),
(384, 45, 0, 10, '', '0.00', '2017-05-10 11:25:55'),
(385, 45, 0, 18, '', '0.00', '2017-05-10 11:25:55'),
(386, 45, 0, 19, '', '0.00', '2017-05-10 11:25:55'),
(387, 45, 0, 20, '', '0.00', '2017-05-10 11:25:55'),
(388, 45, 0, 2, '', '0.00', '2017-05-10 11:25:55'),
(389, 45, 0, 3, '', '0.00', '2017-05-10 11:25:55'),
(390, 45, 0, 4, '', '0.00', '2017-05-10 11:25:55'),
(391, 45, 0, 5, '', '0.00', '2017-05-10 11:25:55'),
(392, 45, 0, 6, '', '0.00', '2017-05-10 11:25:55'),
(393, 45, 0, 7, '', '0.00', '2017-05-10 11:25:56'),
(394, 45, 0, 8, '', '0.00', '2017-05-10 11:25:56'),
(395, 45, 0, 9, '', '0.00', '2017-05-10 11:25:56'),
(396, 45, 0, 10, '', '0.00', '2017-05-10 11:25:56'),
(397, 45, 0, 18, '', '0.00', '2017-05-10 11:25:56'),
(398, 45, 0, 19, '', '0.00', '2017-05-10 11:25:56'),
(399, 45, 0, 20, '', '0.00', '2017-05-10 11:25:56'),
(400, 45, 0, 2, '', '0.00', '2017-05-10 11:26:25'),
(401, 45, 0, 3, '', '0.00', '2017-05-10 11:26:25'),
(402, 45, 0, 4, '', '0.00', '2017-05-10 11:26:25'),
(403, 45, 0, 5, '', '0.00', '2017-05-10 11:26:25'),
(404, 45, 0, 6, '', '0.00', '2017-05-10 11:26:25'),
(405, 45, 0, 7, '', '0.00', '2017-05-10 11:26:25'),
(406, 45, 0, 8, '', '0.00', '2017-05-10 11:26:25'),
(407, 45, 0, 9, '', '0.00', '2017-05-10 11:26:25'),
(408, 45, 0, 10, '', '0.00', '2017-05-10 11:26:25'),
(409, 45, 0, 18, '', '0.00', '2017-05-10 11:26:25'),
(410, 45, 0, 19, '', '0.00', '2017-05-10 11:26:25'),
(411, 45, 0, 20, '', '0.00', '2017-05-10 11:26:25'),
(412, 45, 0, 2, '', '0.00', '2017-05-10 11:26:25'),
(413, 45, 0, 3, '', '0.00', '2017-05-10 11:26:25'),
(414, 45, 0, 4, '', '0.00', '2017-05-10 11:26:25'),
(415, 45, 0, 5, '', '0.00', '2017-05-10 11:26:25'),
(416, 45, 0, 6, '', '0.00', '2017-05-10 11:26:26'),
(417, 45, 0, 7, '', '0.00', '2017-05-10 11:26:26'),
(418, 45, 0, 8, '', '0.00', '2017-05-10 11:26:26'),
(419, 45, 0, 9, '', '0.00', '2017-05-10 11:26:26'),
(420, 45, 0, 10, '', '0.00', '2017-05-10 11:26:26'),
(421, 45, 0, 18, '', '0.00', '2017-05-10 11:26:26'),
(422, 45, 0, 19, '', '0.00', '2017-05-10 11:26:26'),
(423, 45, 0, 20, '', '0.00', '2017-05-10 11:26:26'),
(424, 45, 0, 2, '', '0.00', '2017-05-10 11:27:37'),
(425, 45, 0, 3, '', '0.00', '2017-05-10 11:27:37'),
(426, 45, 0, 4, '', '0.00', '2017-05-10 11:27:37'),
(427, 45, 0, 5, '', '0.00', '2017-05-10 11:27:37'),
(428, 45, 0, 6, '', '0.00', '2017-05-10 11:27:37'),
(429, 45, 0, 7, '', '0.00', '2017-05-10 11:27:37'),
(430, 45, 0, 8, '', '0.00', '2017-05-10 11:27:37'),
(431, 45, 0, 9, '', '0.00', '2017-05-10 11:27:37'),
(432, 45, 0, 10, '', '0.00', '2017-05-10 11:27:37'),
(433, 45, 0, 18, '', '0.00', '2017-05-10 11:27:38'),
(434, 45, 0, 19, '', '0.00', '2017-05-10 11:27:38'),
(435, 45, 0, 20, '', '0.00', '2017-05-10 11:27:38'),
(436, 45, 0, 2, '', '0.00', '2017-05-10 11:27:38'),
(437, 45, 0, 3, '', '0.00', '2017-05-10 11:27:38'),
(438, 45, 0, 4, '', '0.00', '2017-05-10 11:27:38'),
(439, 45, 0, 5, '', '0.00', '2017-05-10 11:27:38'),
(440, 45, 0, 6, '', '0.00', '2017-05-10 11:27:38'),
(441, 45, 0, 7, '', '0.00', '2017-05-10 11:27:38'),
(442, 45, 0, 8, '', '0.00', '2017-05-10 11:27:38'),
(443, 45, 0, 9, '', '0.00', '2017-05-10 11:27:38'),
(444, 45, 0, 10, '', '0.00', '2017-05-10 11:27:38'),
(445, 45, 0, 18, '', '0.00', '2017-05-10 11:27:38'),
(446, 45, 0, 19, '', '0.00', '2017-05-10 11:27:38'),
(447, 45, 0, 20, '', '0.00', '2017-05-10 11:27:38'),
(688, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '0.00', '2017-05-11 07:22:14'),
(689, 45, 0, 3, '', '0.00', '2017-05-11 07:22:14'),
(690, 45, 0, 4, '', '0.00', '2017-05-11 07:22:14'),
(691, 45, 49, 5, 'Coverage with Aluminium Checker Plate', '0.00', '2017-05-11 07:22:14'),
(692, 45, 0, 6, '', '0.00', '2017-05-11 07:22:14'),
(693, 45, 0, 7, '', '0.00', '2017-05-11 07:22:14'),
(694, 45, 57, 8, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-05-11 07:22:14'),
(695, 45, 0, 9, '', '0.00', '2017-05-11 07:22:14'),
(696, 45, 0, 10, '', '0.00', '2017-05-11 07:22:14'),
(697, 45, 0, 18, '', '0.00', '2017-05-11 07:22:14'),
(698, 45, 0, 19, '', '0.00', '2017-05-11 07:22:14'),
(699, 45, 0, 20, '', '0.00', '2017-05-11 07:22:14'),
(700, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '0.00', '2017-05-11 07:22:56'),
(701, 45, 0, 3, '', '0.00', '2017-05-11 07:22:56'),
(702, 45, 0, 4, '', '0.00', '2017-05-11 07:22:56'),
(703, 45, 49, 5, 'Coverage with Aluminium Checker Plate', '0.00', '2017-05-11 07:22:56'),
(704, 45, 0, 6, '', '0.00', '2017-05-11 07:22:56'),
(705, 45, 0, 7, '', '0.00', '2017-05-11 07:22:57'),
(706, 45, 57, 8, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-05-11 07:22:57'),
(707, 45, 0, 9, '', '0.00', '2017-05-11 07:22:57'),
(708, 45, 0, 10, '', '0.00', '2017-05-11 07:22:57'),
(709, 45, 0, 18, '', '0.00', '2017-05-11 07:22:57'),
(710, 45, 0, 19, '', '0.00', '2017-05-11 07:22:57'),
(711, 45, 0, 20, '', '0.00', '2017-05-11 07:22:57'),
(712, 45, 40, 2, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '0.00', '2017-05-11 07:23:43'),
(713, 45, 0, 3, '', '0.00', '2017-05-11 07:23:43'),
(714, 45, 0, 4, '', '0.00', '2017-05-11 07:23:43'),
(715, 45, 49, 5, 'Coverage with Aluminium Checker Plate', '0.00', '2017-05-11 07:23:43'),
(716, 45, 0, 6, '', '0.00', '2017-05-11 07:23:43'),
(717, 45, 0, 7, '', '0.00', '2017-05-11 07:23:43'),
(718, 45, 57, 8, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-05-11 07:23:43'),
(719, 45, 0, 9, '', '0.00', '2017-05-11 07:23:43'),
(720, 45, 0, 10, '', '0.00', '2017-05-11 07:23:43'),
(721, 45, 0, 18, '', '0.00', '2017-05-11 07:23:44'),
(722, 45, 0, 19, '', '0.00', '2017-05-11 07:23:44'),
(723, 45, 0, 20, '', '0.00', '2017-05-11 07:23:44'),
(760, 156, 40, 9, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '0.00', '2017-05-15 07:07:24'),
(761, 156, 0, 3, '', '0.00', '2017-05-15 07:07:24'),
(762, 156, 0, 4, '', '0.00', '2017-05-15 07:07:24'),
(763, 156, 49, 5, 'Coverage with Aluminium Checker Plate', '0.00', '2017-05-15 07:07:24'),
(764, 156, 0, 7, '', '0.00', '2017-05-15 07:07:24'),
(765, 156, 0, 7, '', '0.00', '2017-05-15 07:07:24'),
(766, 156, 57, 8, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-05-15 07:07:24'),
(767, 156, 0, 9, '', '0.00', '2017-05-15 07:07:24'),
(768, 156, 0, 10, '', '0.00', '2017-05-15 07:07:24'),
(769, 156, 0, 18, '', '0.00', '2017-05-15 07:07:25'),
(770, 156, 0, 19, '', '0.00', '2017-05-15 07:07:25'),
(771, 156, 0, 20, '', '0.00', '2017-05-15 07:07:25'),
(796, 159, 1, 1, '10 FEET INSULATED HIGH BOX & NEW REFRIGERATION SYSTEM', '0.00', '2017-05-15 07:42:49'),
(797, 159, 0, 3, '', '0.00', '2017-05-15 07:42:49'),
(798, 159, 0, 4, '', '0.00', '2017-05-15 07:42:49'),
(799, 159, 49, 5, 'Coverage with Aluminium Checker Plate', '0.00', '2017-05-15 07:42:49'),
(800, 159, 0, 7, '', '0.00', '2017-05-15 07:42:49'),
(801, 159, 0, 7, '', '0.00', '2017-05-15 07:42:49'),
(802, 159, 57, 8, 'Stainless Steel Type - Embedded Handles c/w Locks & Keys', '0.00', '2017-05-15 07:42:49'),
(803, 159, 0, 9, '', '0.00', '2017-05-15 07:42:49'),
(804, 159, 0, 10, '', '0.00', '2017-05-15 07:42:49'),
(805, 159, 0, 18, '', '0.00', '2017-05-15 07:42:49'),
(806, 159, 0, 19, '', '0.00', '2017-05-15 07:42:49'),
(807, 159, 0, 20, '', '0.00', '2017-05-15 07:42:49'),
(820, 161, 0, 2, '', '0.00', '2017-05-16 09:40:58'),
(821, 161, 0, 3, '', '0.00', '2017-05-16 09:40:58'),
(822, 161, 0, 4, '', '0.00', '2017-05-16 09:40:58'),
(823, 161, 0, 5, '', '0.00', '2017-05-16 09:40:58'),
(824, 161, 0, 6, '', '0.00', '2017-05-16 09:40:58'),
(825, 161, 0, 7, '', '0.00', '2017-05-16 09:40:58'),
(826, 161, 0, 8, '', '0.00', '2017-05-16 09:40:58'),
(827, 161, 0, 9, '', '0.00', '2017-05-16 09:40:59'),
(828, 161, 0, 10, '', '0.00', '2017-05-16 09:40:59'),
(829, 161, 0, 18, '', '0.00', '2017-05-16 09:40:59'),
(830, 161, 0, 19, '', '0.00', '2017-05-16 09:40:59'),
(831, 161, 0, 20, '', '0.00', '2017-05-16 09:40:59'),
(4121, 411, 0, 20, '', NULL, '2017-05-17 07:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `mz_static_content`
--

CREATE TABLE `mz_static_content` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `variable_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mz_static_content`
--

INSERT INTO `mz_static_content` (`id`, `content_title`, `variable_name`, `content`, `status`, `created_date`) VALUES
(1, 'qwertyui', 'terms-condition-1', '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers true.</p>', 'Active', '2015-08-15 06:49:15'),
(2, 'About Us', 'about-us', '<p><strong>Lorem ipsum dolor sit amet&nbsp;</strong></p>\r\n<p>Donec quis auctor velit. Aenean at ex nec libero lacinia vestibulum. Phasellus eget tortor nec nisi hendrerit venenatis vitae vitae lorem. Sed sit amet rutrum elit, ac pharetra metus fusce commodo quam nec urna tempor, sed pellentesque massa placerat. Vivamus pulvinar du metus consequat, a posuere ipsum faucibus quisque sed euismod ex fusce et nisl quis.</p>\r\n<p>&nbsp;Donec quis auctor velit. Aenean at ex nec libero lacinia vestibulum. Phasellus eget tortor nec nisi hendrerit venenatis vitae vitae lorem. Sed sit amet rutrum elit, ac pharetra metus.</p>\r\n<p><strong>Cras ut nisi nec ex iaculis rutrum</strong></p>\r\n<p>Cras consequat mi leo, id dictum erat aliquet at. In vitae mauris arcu. Nullam luctus lectus a diam dignissim, quis dictum nisl commodo. Integer in libero diam. Proin malesuada nulla arcu, a venenatis urna mollis eu. Vivamus finibus arcu est, nec tempor nisi pulvinar ut. Vivamus tempor sem a malesuada dictum. Etiam eu ornare tellus.</p>\r\n<p>Morbi mollis ligula dictum dui scelerisque, at pellentesque turpis egestas. Donec semper, quam id mattis porta, leo arcu luctus enim, ut aliquet est mauris a purus. Mauris in consectetur massa. Etiam scelerisque nisi eget risus vestibulum, et fermentum turpis finibus. Nunc egestas posuere metus, non aliquet libero dapibus a.</p>\r\n<p>In lobortis, est non molestie interdum, urna lorem pretium nisl, id auctor dolor purus eget diam Sed finibus gravida lacus, sed suscipit arcu porta a. Morbi porttitor ullamcorper nisi, quis tempor justo pretium vel. Nulla et varius nibh. Fusce ullamcorper eu metus vel elementum. Ut et rutrum nulla. Vivamus ut odio turpis. Praesent ut tellus arcu.</p>', 'Active', '2015-08-15 06:49:15'),
(3, 'Lorem Terms Conditions', 'terms-condition-2', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Active', '2015-08-15 06:49:15'),
(4, 'Terms Conditions', 'terms-condition-3', '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 4-6 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Active', '2015-08-15 06:49:15'),
(5, 'Terms Conditions', 'terms-condition-4', '<p>Pay: 30% Deposit Upon confirmation, Balance upon delivery</p>\r\n<p>Delivery: 6-8 weeks from Date of Sales order confirmation OR from date of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</p>\r\n<p>- Vehicle servicing is not done by Monzone</p>\r\n<p>- System has not done proper maintenance</p>\r\n<p>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</p>\r\n<p>- If the product was being fabricated by others</p>\r\n<p>- Non payment received for product supplied</p>\r\n<p>Testtest</p>\r\n<p>&nbsp;</p>\r\n<p>CANCELLATION TERMS AND CONDITIONS:-</p>\r\n<p>- Deposit will be forfeited if prder is cancelled before Production starts</p>\r\n<p>- if order is cancelled after production has started, penalty will be imposed subject to the percentage or stage of completion order</p>\r\n<p>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty of cancellation of order</p>\r\n<p>&nbsp;</p>\r\n<p>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</p>\r\n<p>- If Customer reject laon application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</p>\r\n<p>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</p>\r\n<p>&nbsp;</p>\r\n<p>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</p>', 'Active', '2015-08-15 06:49:15'),
(6, 'Terms Conditions ten to twelve weeks', 'terms-condition-5', '<p><em><strong>Pay: 30% Deposit Upon confirmation, Balance upon delivery</strong></em></p>\r\n<p><em><strong>Delivery: 10-12 weeks from Date of Sales order confirmation OR from </strong></em>date<em><strong> of Banker\'s Approval if Sales Order requires Loan. Application from Banker AND Date of Deposit Received</strong></em></p>\r\n<p><em><strong>- Vehicle servicing is not done by Monzone</strong></em></p>\r\n<p><em><strong>- System has not done proper maintenance</strong></em></p>\r\n<p><em><strong>- Claims of Defect due to misuse, Negligence OR Overload/over-stressed by end-user</strong></em></p>\r\n<p><em><strong>- If the product was being fabricated by others</strong></em></p>\r\n<p><em><strong>- </strong></em>Non payment<em><strong> received for product supplied</strong></em></p>\r\n<p>Testtest</p>\r\n<p><em><strong>&nbsp;</strong></em></p>\r\n<p><em><strong>CANCELLATION TERMS AND CONDITIONS:-</strong></em></p>\r\n<p><em><strong>- Deposit will be forfeited if </strong></em>prder<em><strong> is </strong></em>cancelled<em><strong> before Production starts</strong></em></p>\r\n<p><em><strong>- if </strong></em>order<em><strong> is </strong></em>cancelled<em><strong> after production has started, </strong></em>penalty<em><strong> will be imposed subject to the percentage or stage of completion order</strong></em></p>\r\n<p><em><strong>- If cancellation or order takes place after the order has completed, FULL Amount or 100% of contract value will be imposed as a penalty </strong></em>of<em><strong> cancellation of order</strong></em></p>\r\n<p><em><strong>&nbsp;</strong></em></p>\r\n<ul>\r\n<li><em><strong>DEPOSIT ARE NOT REFUNDABLE IF ORDER CANCELLATION DUE TO:-</strong></em></li>\r\n<li><em><strong>- If Customer reject </strong></em>laon<em><strong> application which has obtained approval by Banker at a lower quantum which is not less than 75% of contract value</strong></em></li>\r\n<li><em><strong>- If Customer refused to accept COE after a period of 3 months from Date of sales order Confirmation or 3 months from Banker\'s Approval Date</strong></em></li>\r\n</ul>\r\n<p><em><strong>&nbsp;</strong></em></p>\r\n<p><em><strong>- If Customer cancelled order due to personal reason or Business re-organization after obtained successful loan approval from Bankers</strong></em></p>', 'Active', '2015-08-15 06:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `mz_userlogin_history`
--

CREATE TABLE `mz_userlogin_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `loginon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_userlogin_history`
--

INSERT INTO `mz_userlogin_history` (`id`, `user_id`, `loginon`) VALUES
(1, 97, '2016-03-10 18:19:53'),
(2, 99, '2016-03-10 21:43:58'),
(3, 99, '2016-03-11 13:46:26'),
(4, 99, '2016-03-14 12:09:35'),
(5, 99, '2016-03-16 15:22:08'),
(6, 99, '2016-03-17 13:14:33'),
(7, 99, '2016-03-18 12:07:03'),
(8, 95, '2016-03-18 21:15:31'),
(9, 99, '2016-03-19 14:24:24'),
(10, 99, '2016-03-21 19:43:00'),
(11, 105, '2016-03-21 22:39:06'),
(12, 105, '2016-03-22 00:05:04'),
(13, 106, '2016-03-22 13:39:32'),
(14, 107, '2016-03-23 15:32:48'),
(15, 107, '2016-03-24 23:13:27'),
(16, 109, '2016-03-25 11:04:40'),
(17, 107, '2016-03-25 12:33:35'),
(18, 106, '2016-03-25 12:36:36'),
(19, 106, '2016-03-27 15:23:32'),
(20, 107, '2016-03-27 15:27:29'),
(21, 106, '2016-03-28 00:41:01'),
(22, 112, '2016-03-28 12:35:58'),
(23, 105, '2016-03-28 12:58:30'),
(24, 113, '2016-03-28 14:17:49'),
(25, 109, '2016-03-28 15:02:15'),
(26, 114, '2016-03-28 20:11:08'),
(27, 112, '2016-03-29 01:14:30'),
(28, 115, '2016-03-29 01:34:46'),
(29, 119, '2016-03-29 12:43:20'),
(30, 120, '2016-03-29 12:45:29'),
(31, 121, '2016-03-29 13:20:33'),
(32, 121, '2016-03-31 18:09:20'),
(33, 121, '2016-04-03 11:55:32'),
(34, 121, '2016-04-04 11:31:38'),
(35, 121, '2016-04-05 18:38:03'),
(36, 121, '2016-04-07 11:39:24'),
(37, 121, '2016-04-08 18:43:51'),
(38, 121, '2016-04-09 00:39:49'),
(39, 121, '2016-04-11 18:43:55'),
(40, 121, '2016-04-12 07:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `mz_users`
--

CREATE TABLE `mz_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Pending','Active','Inactive','Delete') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `is_login` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `notifications` enum('On','Off') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'On',
  `active_days` int(11) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `type` enum('salesperson','manager','serviceengineer') NOT NULL DEFAULT 'salesperson',
  `id_salesmanager` int(11) DEFAULT NULL,
  `generated_code` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_users`
--

INSERT INTO `mz_users` (`id`, `name`, `email`, `gender`, `status`, `password`, `image_name`, `created_on`, `is_login`, `notifications`, `active_days`, `designation`, `type`, `id_salesmanager`, `generated_code`, `dob`) VALUES
(1, 'Laxmi', 'laxmi@singsys.com', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1476882418_new2.png', '2016-10-19 21:07:05', '0', 'On', 0, 'salesmanager', 'manager', 0, '', '0000-00-00'),
(2, 'abhishek', 'abhishektrivedi@singsys.com', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1476882460_new1.png', '2016-10-19 21:07:50', '0', 'On', 0, 'Developer', 'salesperson', 1, 'z0SIc3ZAdC', '0000-00-00'),
(3, 'rajshekhar', 'rajshekhar@singsys.com', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1476882845_0011ff.png', '2016-10-19 21:14:15', '0', 'On', 0, 'Developer', 'salesperson', 1, '', '0000-00-00'),
(4, 'Sharad', 'sharad@singsys.com', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1490004223_abc3.jpeg', '2017-03-20 18:06:04', '0', 'On', NULL, 'Developer', 'salesperson', 1, NULL, '1970-01-01'),
(5, 'Ashish', 'ashish@singsys.com', 'Male', 'Delete', '13652a1d1625f623272ff2a93dca1f31', '1490072516_ARC4831Small.JPG', '2017-03-21 13:02:23', '0', 'On', NULL, 'Test Designation', 'salesperson', 7, NULL, '1970-01-01'),
(6, 'Pradeep', 'pradeep@singsys.com', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1490073869_abc3.jpeg', '2017-03-21 13:24:40', '0', 'On', NULL, 'Developer', 'salesperson', 1, NULL, '1970-01-01'),
(7, 'Priya', 'priya@singsys.com', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1490073914_abc3.jpeg', '2017-03-21 13:28:45', '0', 'On', NULL, 'Director', 'manager', NULL, NULL, NULL),
(8, 'Reena', 'reena@singsys.com', 'Female', 'Delete', '13652a1d1625f623272ff2a93dca1f31', '1490241852_images.jpg', '2017-03-23 12:04:21', '0', 'On', NULL, 'Sales person', 'salesperson', 7, NULL, '1970-01-01'),
(9, 'TEOH CHIANG HOE', 'teoh@monzone-aircon.com', 'Male', 'Active', 'd41d8cd98f00b204e9800998ecf8427e', '1490347570_MR.-TEOH.png', '2017-03-24 16:13:40', '0', 'On', NULL, 'Director', 'manager', NULL, NULL, NULL),
(10, 'JASMINE TAY', 'jasmine@monzone-aircon.com', 'Male', 'Active', 'ef0e354e77930564f388a379976ce49a', '1490343754_Sample.png', '2017-03-24 16:22:52', '0', 'On', NULL, 'Director', 'manager', NULL, NULL, NULL),
(11, 'ADRIAN CHONG', 'adrian@monzone-aircon.com', 'Male', 'Delete', 'd41d8cd98f00b204e9800998ecf8427e', '1490347591_ADRIAN.png', '2017-03-24 16:24:30', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(12, 'ANTHONY GOH', 'anthony@monzone-aircon.com', 'Male', 'Delete', 'd41d8cd98f00b204e9800998ecf8427e', '1490347547_ANTHONY.png', '2017-03-24 16:25:13', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(13, 'ANDREW LEE', 'andrew@monzone-aircon.com', 'Male', 'Active', '2d9514f579dd8de8ac48f7d2072182cf', '1490347411_ANDREW.png', '2017-03-24 16:29:06', '0', 'On', NULL, 'AREA MANAGER', 'salesperson', 23, NULL, '1970-01-01'),
(14, 'JERRY CHIA', 'jerry@monzone-aircon.com', 'Male', 'Active', 'e970ff38bf82b3c9d8f1c015d94408d0', '1490347369_JERRY.png', '2017-03-24 16:30:05', '0', 'On', NULL, 'AREA MANAGER', 'salesperson', 22, NULL, '1970-01-01'),
(15, 'CLEMENT NG', 'clement@monzone-aircon.com', 'Male', 'Delete', 'a690097bf7b56dadcb2fd87eda4bb3f0', '1490344246_Sample.png', '2017-03-24 16:31:12', '0', 'On', NULL, 'AREA MANAGER', 'salesperson', 11, NULL, '1970-01-01'),
(16, 'CHO KAR CHUN', 'kc@monzone-aircon.com', 'Male', 'Delete', '8184e20e291a447573cf434f2c40de96', '1490344353_Sample.png', '2017-03-24 16:33:03', '0', 'On', NULL, 'AREA MANAGER', 'salesperson', 11, NULL, '1970-01-01'),
(17, 'DRAVEN CHONG', 'draven@monzone-aircon.com', 'Male', 'Delete', '514ee06ada9015161b7a68a5290ce0bd', '1490344420_Sample.png', '2017-03-24 16:34:00', '0', 'On', NULL, 'AREA MANAGER', 'salesperson', 11, NULL, '1970-01-01'),
(18, 'ADRIAN CHONG', 'adrian@monzone-aircon.com.my', 'Male', 'Delete', '07702c52cca78c94ba1a07a439893bb0', '1490347429_ADRIAN.png', '2017-03-24 16:38:39', '0', 'On', NULL, 'SALES MANAGER', 'salesperson', 9, NULL, '1970-01-01'),
(19, 'ANTHONY GOH', 'anthony@monzone-aircon.com.my', 'Male', 'Delete', '1b662574655db213f04538e39d93bbfc', '1490347390_ANTHONY.png', '2017-03-24 16:39:28', '0', 'On', NULL, 'SALES MANAGER', 'salesperson', 9, NULL, '1970-01-01'),
(20, 'ADRIAN CHONG', 'adrian@monzone.com.my', 'Male', 'Active', '07702c52cca78c94ba1a07a439893bb0', '1490348386_ADRIAN.png', '2017-03-24 17:41:00', '0', 'On', NULL, 'SALES MANAGER', 'salesperson', 28, NULL, '1970-01-01'),
(21, 'ANTHONY GOH', 'anthony@monzone.com.my', 'Male', 'Active', '1b662574655db213f04538e39d93bbfc', '1490348519_ANTHONY.png', '2017-03-24 17:42:40', '0', 'On', NULL, 'SALES MANAGER', 'salesperson', 58, NULL, '1970-01-01'),
(22, 'ANTHONY GOH', 'anthony@monzone-aircon.com', 'Male', 'Active', '1b662574655db213f04538e39d93bbfc', '1490348617_ANTHONY.png', '2017-03-24 17:44:07', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(23, 'ADRIAN CHONG', 'adrian@monzone-aircon.com', 'Male', 'Active', '07702c52cca78c94ba1a07a439893bb0', '1490348674_ADRIAN.png', '2017-03-24 17:45:54', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(24, 'Laxmi', 'laxmi@singsys.com', 'Male', 'Active', '25d55ad283aa400af464c76d713c07ad', '1490585882_app-icon.png', '2017-03-27 11:38:54', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(25, 'abhishek', 'abhishektrivedi@singsys.com', 'Male', 'Active', '25d55ad283aa400af464c76d713c07ad', '1490585985_app-icon.png', '2017-03-27 11:40:14', '0', 'On', NULL, 'Sales Person', 'salesperson', 58, NULL, '1970-01-01'),
(26, 'TEOH CHIANG HOE', 'teoh@monzone.com.my', 'Male', 'Delete', '37b668763e28b8d80d8bf486202edb73', '1490590041_MR.-TEOH.png', '2017-03-27 12:47:37', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(27, 'test', 'laxmi@yopmail.com', 'Male', 'Active', '25d55ad283aa400af464c76d713c07ad', '1491469106_flowers.jpg', '2017-04-06 16:58:47', '0', 'On', NULL, 'Developer', 'salesperson', 24, NULL, '1970-01-01'),
(28, 'test manager', 'sharad@yopmail.com', 'Male', 'Active', '25d55ad283aa400af464c76d713c07ad', '1491469160_butterfly.jpg', '2017-04-06 16:59:28', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(30, 'REENA KUMARI', 'reena@gmail.com', 'Male', 'Active', 'cd97c9d05cc96fd653e5a6af641a44ef', '1492073410_teddy.jpg', '2017-04-13 16:50:30', '0', 'On', NULL, 'serviceengineer', '', NULL, NULL, NULL),
(31, 'akash kumar', 'akash@gmail.com', 'Male', 'Active', 'cd97c9d05cc96fd653e5a6af641a44ef', '1492073465_images-(1).jpg', '2017-04-13 16:51:20', '0', 'On', NULL, 'serviceengineer', '', NULL, NULL, NULL),
(32, 'prashun', 'prashun@gmail.com', 'Male', 'Active', 'cd97c9d05cc96fd653e5a6af641a44ef', '1492073565_p.jpg', '2017-04-13 16:53:02', '0', 'On', NULL, 'serviceengineer', '', NULL, NULL, NULL),
(33, 'pranjali', 'pranjali@gmail.com', 'Male', 'Active', 'cd97c9d05cc96fd653e5a6af641a44ef', '1492073649_images-(1).jpg', '2017-04-13 16:54:31', '0', 'On', NULL, 'serviceengineer', '', NULL, NULL, NULL),
(34, 'tina', 'tina@gmail.com', 'Male', 'Active', 'e807f1fcf82d132f9bb018ca6738a19f', '1492172800_images-(1).jpg', '2017-04-14 20:27:00', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(35, 'amreen', 'amreen@gmail.com', 'Female', 'Active', 'e807f1fcf82d132f9bb018ca6738a19f', '1492174570_teddy.jpg', '2017-04-14 20:56:24', '0', 'On', NULL, 'engineer', 'salesperson', 58, NULL, '1970-01-01'),
(36, 'anoop', 'anoop@gmail.com', 'Female', 'Active', 'e807f1fcf82d132f9bb018ca6738a19f', '1492174867_images.jpg', '2017-04-14 21:02:05', '0', 'On', NULL, 'engineer', 'salesperson', 58, NULL, '1970-01-01'),
(37, 'tftftftf', 'tftf@dfdfc.in', 'Male', 'Delete', '25d55ad283aa400af464c76d713c07ad', '1492176671_images.jpg', '2017-04-14 21:31:24', '0', 'On', NULL, 'ftftftft', 'serviceengineer', 24, NULL, '1970-01-01'),
(38, 'amrreenn', 'am@gmail.com', 'Female', 'Delete', '25f9e794323b453885f5181f1b624d0b', '1492177111_images.jpg', '2017-04-14 21:39:00', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(39, 'shubham', 'shubham@gmail.com', 'Female', 'Delete', 'e807f1fcf82d132f9bb018ca6738a19f', '1492177311_images-(1).jpg', '2017-04-14 21:42:06', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(40, 'shubhi', 'shubhi@gmail.com', 'Female', 'Delete', '25f9e794323b453885f5181f1b624d0b', '1492399686_teddy.jpg', '2017-04-17 11:28:33', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(41, 'amreen', 'amreen123@gmail.com', 'Female', 'Delete', '25f9e794323b453885f5181f1b624d0b', '1492418139_images.jpg', '2017-04-17 16:36:30', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(42, 'azeem', 'azeem@yahoo.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492418240_p.jpg', '2017-04-17 16:37:35', '0', 'On', NULL, 'engineer', 'serviceengineer', 58, NULL, '1970-01-01'),
(43, 'sutapsahu', 'sutap@gmail.com', 'Male', 'Delete', '25f9e794323b453885f5181f1b624d0b', '1492418309_teddy.jpg', '2017-04-17 16:38:47', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(44, 'priya', 'priya@gmail.com', 'Female', 'Delete', '25f9e794323b453885f5181f1b624d0b', '1492418361_teddy.jpg', '2017-04-17 16:39:41', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(45, 'sonal', 'sonal@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492418453_teddy.jpg', '2017-04-17 16:41:11', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(46, 'anjali', 'anjali@gmail.com', 'Female', 'Delete', '25f9e794323b453885f5181f1b624d0b', '1492424485_images.jpg', '2017-04-17 18:21:42', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(47, 'anjali', 'anjali@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492510372_p.jpg', '2017-04-17 20:54:17', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(48, 'amreen', 'amreen123@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492434350_images.jpg', '2017-04-17 21:06:18', '0', 'On', NULL, 'engineer', 'serviceengineer', 58, NULL, '1970-01-01'),
(49, 'prashun', 'prashun786@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492434441_p.jpg', '2017-04-17 21:07:37', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(50, 'Sana Rizwan', 'sana@singsys.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492488474_teddy.jpg', '2017-04-18 12:08:07', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(51, 'shradha', 'shradha@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492496963_images-(1).jpg', '2017-04-18 14:29:40', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(52, 'riya', 'riya@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492497024_images.jpg', '2017-04-18 14:30:40', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(53, 'atif', 'atif@gmail.com', 'Male', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492497090_p.jpg', '2017-04-18 14:32:00', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(54, 'saurabh', 'saurabh@gmail.com', 'Male', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492497166_images-(1).jpg', '2017-04-18 14:32:59', '0', 'On', NULL, 'engineer', 'serviceengineer', 58, NULL, '1970-01-01'),
(55, 'kirti', 'kirti@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492497214_images.jpg', '2017-04-18 14:33:46', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(56, 'anjali', 'anjali@singsys.com', 'Female', 'Active', '25d55ad283aa400af464c76d713c07ad', '1492510270_p.jpg', '2017-04-18 18:11:20', '0', 'On', NULL, 'engineer', 'serviceengineer', 58, NULL, '1970-01-01'),
(57, 'richa', 'richa@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492573063_images-(1).jpg', '2017-04-19 11:38:01', '0', 'On', NULL, 'engineer', 'serviceengineer', 9, NULL, '1970-01-01'),
(58, 'vidya', 'vidya@gmail.com', 'Male', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492586701_teddy.jpg', '2017-04-19 15:25:12', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(59, 'neha', 'neha@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1492605350_images-(1).jpg', '2017-04-19 20:36:05', '0', 'On', NULL, 'engineer', 'serviceengineer', 34, NULL, '1970-01-01'),
(60, 'shivam', 'shivam@gmail.com', 'Male', 'Active', '25f9e794323b453885f5181f1b624d0b', '1493019489_images.jpg', '2017-04-24 15:38:18', '0', 'On', NULL, 'salesmanager', 'manager', NULL, NULL, NULL),
(61, 'abhishek', 'abhishek@singsys.com', 'Male', 'Active', '25f9e794323b453885f5181f1b624d0b', '1494655892_p.jpg', '2017-05-13 14:11:36', '0', 'On', NULL, 'engineer', 'serviceengineer', 24, NULL, '1970-01-01'),
(62, 'abhishek', 'abhishektrivedi@singsys.com', 'Male', 'Active', '25d55ad283aa400af464c76d713c07ad', '1493272919_logo_sigclub.png', '2017-04-27 14:03:10', '0', 'On', 0, 'Sales Engineer', 'serviceengineer', 119, NULL, '1970-01-01'),
(63, 'priya', 'priya@gmail.com', 'Female', 'Active', '25f9e794323b453885f5181f1b624d0b', '1494937822_teddy.jpg', '2017-05-16 20:30:42', '0', 'On', NULL, 'developer', 'salesperson', 34, NULL, '1970-01-01'),
(134, 'abhishek', 'abhishektrivedi@singsys.com', 'Male', 'Active', '25d55ad283aa400af464c76d713c07ad', '1493272919_logo_sigclub.png', '2017-04-27 14:03:10', '0', 'On', NULL, 'Sales Engineer', 'serviceengineer', 119, 'MgBdtW0mXe', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `mz_user_device`
--

CREATE TABLE `mz_user_device` (
  `id_user_device` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `device_token` text NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `device_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_user_device`
--

INSERT INTO `mz_user_device` (`id_user_device`, `id_user`, `device_token`, `device_id`, `device_type`) VALUES
(4, 5, '3db8458d6925a09dde6c75aa5b9ae7a69e7d34f503d525e560140ce4076e99fe', '6EA4F8B9-F987-4985-A3BE-74A1A3CB1ECE', 'iOS'),
(10, 2, 'a8b7e9ba3f99f0b39885fa1514b745aa5157915bf27fc04e7669fe3cb3f9b566', 'DC9BAEC7-64BF-4E4D-A412-BD16592C9C9F', 'iOS'),
(17, 7, '6f4529b73f1510a78c43fe152bf8e56242fffee8dd2cea2145919c893637265d', 'A3A4FB03-3470-43D3-BF2A-A8285E3E5F09', 'iOS'),
(18, 11, '532853efefaf636492f091dbf3350530c899a8a2a730274822f72cb69c721d16', 'C46D8407-2960-41BA-BF29-E76EC62079A0', 'iOS'),
(20, 14, '4d6cfdac736c34322da391e381519cf16d755a676a027cc29d0adee78ac26179', '744228E9-430D-4BD6-992A-21C1F5170554', 'iOS'),
(21, 23, '0efabf124e39d84c807dd18713740db9524e3e5ec0ca24b8908105e7de0996ac', '095F3D67-F4D8-421E-9EF4-32CAC9AFCB0C', 'iOS'),
(24, 14, '335d150ab083ac3a601ef6ab5f98724181c8432439eae34b1d421763434f4d2a', '25CBEECC-39FE-4378-A1B8-E8E8D6051906', 'iOS'),
(25, 13, 'cd2bb1070329ad4646fcd8d4d1cb45c3afa4aba4b8112839d98b882ad6f19af7', '209F464E-2C6F-48F8-B9B1-CF9FFC4BF0A7', 'iOS'),
(26, 10, '32787d99a99024c294d0b24eed13f50a4dcb618fdfb5575b0698a0e793fb8b88', 'B4E0B589-8E79-4B9A-B90B-409889714DE0', 'iOS'),
(27, 24, 'de861f9b69662ab86f3721673b95501b2839da775e305e9a22107147ba867a02', '93A11F0F-2847-4D05-8A42-64398C8923A1', 'iOS'),
(29, 24, 'a4ec7933f3e02f3a7000921d41208fa251586156aeafdb98846f3463c40414e1', 'A36F44B4-D164-4521-9342-38D7B4CCDFD2', 'iOS'),
(31, 25, 'dd1a31056a3659e1546f891fb99df168182893260f1ddea7769550a384fde51e', '6215241C-5769-4D43-B604-14774AF58CCA', 'iOS'),
(32, 23, 'ad6766f00176094ee20e6470d336ee45232d5bbe17d621a29594bfb50d372b21', 'AAEFBA1F-6520-482E-8C72-54791F51D7C6', 'iOS'),
(33, 25, 'effbb2b2cb225c005db5133346b97584764cd652084045358a38089ea086585b', 'C4FD042D-B005-4F45-BC1C-C0FD6D465C54', 'iOS'),
(34, 25, '5fb16a34630cf0c31a01f9714a40c0cda67484055f628fe1f9b1a934d9bcf8e1', 'F4EC3795-B5C0-4A57-9F76-E1FB1AF2B794', 'iOS'),
(35, 25, 'aa9a528d899132b9d0ca1fbd9142e001950fd02643605ba546456692dcf5c5d0', '988F121C-BB74-463F-B22A-A583C2F7B60F', 'iOS'),
(36, 25, '10813994d64f5d6a9601a3fdde83c2aa7fe0138918caeafe067f7130a019c5b8', 'D4D25BDD-95D1-47DA-A919-8C39F158F508', 'iOS');

-- --------------------------------------------------------

--
-- Table structure for table `mz_user_otp`
--

CREATE TABLE `mz_user_otp` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `otp` int(8) NOT NULL,
  `expired` tinyint(4) NOT NULL,
  `addedon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mz_user_otp`
--

INSERT INTO `mz_user_otp` (`id`, `user_id`, `mobile`, `otp`, `expired`, `addedon`) VALUES
(1, 0, 8004791897, 3051, 0, '2016-02-18 13:03:52'),
(2, 0, 8004791897, 8928, 0, '2016-02-18 13:07:06'),
(3, 0, 8004791897, 2802, 0, '2016-02-18 13:07:14'),
(4, 0, 8004791897, 2750, 0, '2016-02-18 13:07:24'),
(5, 0, 8004791897, 3739, 0, '2016-02-18 13:09:11'),
(6, 0, 8004791897, 4997, 0, '2016-02-18 13:09:16'),
(7, 0, 8004791897, 9547, 0, '2016-02-18 13:12:09'),
(8, 0, 8004791897, 6394, 0, '2016-02-18 13:12:46'),
(9, 0, 8004791897, 8345, 1, '2016-02-18 13:56:45'),
(10, 0, 8004791897, 1543, 0, '2016-02-18 14:38:08'),
(11, 0, 8004791897, 3901, 0, '2016-02-19 14:05:55'),
(12, 0, 8004791897, 9206, 0, '2016-02-19 14:06:03'),
(13, 0, 8004791897, 6128, 0, '2016-02-19 14:06:07'),
(14, 0, 8004791897, 8878, 0, '2016-02-19 14:06:28'),
(15, 0, 8004791897, 3742, 0, '2016-02-19 14:06:55'),
(16, 0, 8004791897, 3127, 0, '2016-02-19 14:07:23'),
(17, 0, 8004791897, 6272, 0, '2016-02-19 14:07:32'),
(18, 0, 8004791897, 3755, 0, '2016-02-19 14:08:45'),
(19, 0, 8004791897, 8520, 0, '2016-03-01 13:53:52'),
(20, 0, 8004791897, 7805, 0, '2016-03-01 14:40:37'),
(21, 0, 8004791897, 3833, 0, '2016-03-01 14:41:02'),
(22, 0, 8004791897, 7253, 0, '2016-03-01 14:45:36'),
(23, 0, 8004791897, 6663, 0, '2016-03-01 14:46:17'),
(24, 0, 8004791897, 8846, 0, '2016-03-01 14:46:40'),
(25, 0, 8004791897, 9648, 0, '2016-03-01 14:46:54'),
(26, 0, 8004791897, 5026, 0, '2016-03-01 14:47:24'),
(27, 0, 8004791897, 6395, 0, '2016-03-01 14:48:08'),
(28, 0, 8004791897, 7405, 0, '2016-03-01 14:48:27'),
(29, 0, 8004791897, 5011, 0, '2016-03-01 14:48:48'),
(30, 0, 8004791897, 7348, 0, '2016-03-01 14:49:04'),
(31, 0, 8004791897, 8547, 0, '2016-03-01 14:49:14'),
(32, 0, 8004791897, 7151, 1, '2016-03-01 14:55:10'),
(33, 0, 8004791897, 2713, 1, '2016-03-01 15:26:03'),
(34, 0, 8004791897, 6028, 0, '2016-03-01 17:26:10'),
(35, 0, 8004791897, 5688, 1, '2016-03-01 17:45:51'),
(36, 0, 8004791897, 1418, 0, '2016-03-01 18:52:53'),
(37, 0, 8004791897, 8058, 0, '2016-03-01 18:55:58'),
(38, 0, 8004791897, 2664, 0, '2016-03-01 18:57:20'),
(39, 0, 8004791897, 1173, 0, '2016-03-01 18:58:15'),
(40, 0, 8004791897, 5850, 0, '2016-03-01 18:59:02'),
(41, 0, 8004791897, 5605, 0, '2016-03-01 19:03:39'),
(42, 0, 8004791897, 4908, 1, '2016-03-01 19:04:43'),
(43, 0, 8004791897, 9611, 1, '2016-03-01 19:18:40'),
(44, 0, 8004791897, 5558, 1, '2016-03-01 19:29:19'),
(45, 0, 8004791897, 4163, 0, '2016-03-01 19:42:06'),
(46, 0, 8004791897, 2867, 1, '2016-03-01 19:42:22'),
(47, 0, 308004791897, 8442, 0, '2016-03-02 17:32:53'),
(48, 0, 308004791897, 6431, 0, '2016-03-02 17:33:08'),
(49, 0, 918004791897, 5794, 0, '2016-03-02 17:56:53'),
(50, 0, 918004791897, 3414, 0, '2016-03-02 17:57:53'),
(51, 0, 918004791897, 6702, 0, '2016-03-02 17:58:48'),
(52, 0, 918004791897, 3834, 0, '2016-03-02 18:01:44'),
(53, 0, 9728004791897, 7795, 0, '2016-03-02 18:02:12'),
(54, 0, 8004791897, 4366, 1, '2016-03-02 18:11:51'),
(55, 0, 8004791897, 5813, 0, '2016-03-07 20:23:27'),
(56, 0, 7877999681, 1246, 0, '2016-03-07 20:56:11'),
(57, 0, 9044663317, 1427, 0, '2016-03-07 20:57:16'),
(58, 0, 9936690997, 3144, 0, '2016-03-07 21:10:17'),
(59, 0, 9936690997, 9557, 0, '2016-03-07 21:10:25'),
(60, 0, 9936690997, 8376, 1, '2016-03-07 21:10:38'),
(61, 0, 9936690997, 5471, 1, '2016-03-07 21:14:36'),
(62, 0, 9936690997, 7554, 0, '2016-03-07 21:27:19'),
(63, 0, 8004791897, 2412, 1, '2016-03-08 02:06:07'),
(64, 0, 9643600792, 7146, 1, '2016-03-08 11:51:59'),
(65, 0, 9936690997, 8317, 0, '2016-03-08 13:22:37'),
(66, 0, 9936690997, 7350, 0, '2016-03-08 13:22:44'),
(67, 0, 9044663317, 1211, 1, '2016-03-08 13:59:36'),
(68, 0, 90446633175, 3433, 0, '2016-03-08 14:18:29'),
(69, 0, 9044663317, 1493, 0, '2016-03-08 19:30:32'),
(70, 0, 9044663317, 2444, 0, '2016-03-08 19:31:11'),
(71, 0, 8004791897, 4742, 1, '2016-03-10 14:13:53'),
(72, 0, 8004791897, 4560, 1, '2016-03-10 14:21:49'),
(73, 0, 8004791897, 3436, 0, '2016-03-10 14:22:44'),
(74, 0, 9936690997, 6590, 0, '2016-03-10 19:43:15'),
(75, 0, 9936690997, 7432, 0, '2016-03-10 20:08:44'),
(76, 0, 9936690997, 6188, 0, '2016-03-10 21:10:07'),
(77, 0, 9936690997, 4966, 1, '2016-03-10 21:21:10'),
(78, 0, 9936690997, 9518, 1, '2016-03-10 21:35:50'),
(79, 0, 9044663317, 4027, 0, '2016-03-11 19:04:22'),
(80, 0, 973464679996, 1854, 0, '2016-03-14 12:21:41'),
(81, 0, 9044663317, 2009, 0, '2016-03-14 12:43:42'),
(82, 0, 9044464261, 5454, 0, '2016-03-16 18:39:04'),
(83, 0, 9889541331, 3597, 0, '2016-03-16 18:40:42'),
(84, 0, 9044663317, 2993, 0, '2016-03-18 21:14:26'),
(85, 0, 9935927939, 1652, 0, '2016-03-21 20:00:13'),
(86, 0, 9044663317, 5314, 0, '2016-03-21 20:00:40'),
(87, 0, 9936690997, 6763, 0, '2016-03-21 20:17:37'),
(88, 0, 9936690997, 3872, 0, '2016-03-21 20:17:59'),
(89, 0, 9044663317, 9870, 0, '2016-03-21 20:18:19'),
(90, 0, 8004791897, 5271, 1, '2016-03-21 20:23:01'),
(91, 0, 9936690997, 6653, 0, '2016-03-21 20:23:05'),
(92, 0, 9936690997, 2746, 0, '2016-03-21 20:43:00'),
(93, 0, 8004791897, 9133, 1, '2016-03-21 20:54:26'),
(94, 0, 8004791897, 2793, 1, '2016-03-21 20:56:54'),
(95, 0, 8004791897, 7465, 1, '2016-03-21 20:58:37'),
(96, 0, 8004791897, 8027, 1, '2016-03-21 20:59:09'),
(97, 0, 9936690997, 4236, 1, '2016-03-21 21:00:50'),
(98, 0, 9044663317, 2188, 1, '2016-03-22 13:38:17'),
(99, 0, 9889823088, 5424, 0, '2016-03-23 23:41:17'),
(100, 0, 1, 2430, 0, '2016-03-25 10:49:50'),
(101, 0, 8187934857, 3079, 1, '2016-03-25 10:50:21'),
(102, 0, 8004791897, 8343, 0, '2016-03-25 12:35:13'),
(103, 0, 9044663317, 2762, 0, '2016-03-25 12:35:31'),
(104, 0, 9044663317, 8723, 0, '2016-03-25 13:07:47'),
(105, 0, 8004791897, 7679, 1, '2016-03-28 12:23:05'),
(106, 0, 8004791897, 2630, 1, '2016-03-28 12:34:41'),
(107, 0, 8004791897, 9619, 0, '2016-03-28 13:37:21'),
(108, 0, 7388891758, 4752, 0, '2016-03-28 14:13:20'),
(109, 0, 7388891758, 1281, 1, '2016-03-28 14:15:36'),
(110, 0, 7388891758, 4598, 1, '2016-03-28 14:51:41'),
(111, 0, 7388891758, 5054, 1, '2016-03-28 14:54:04'),
(112, 0, 9044663317, 1600, 1, '2016-03-28 15:19:10'),
(113, 0, 7388891758, 5135, 1, '2016-03-28 16:17:39'),
(114, 0, 7388891758, 8849, 1, '2016-03-28 16:19:12'),
(115, 0, 9936690997, 8617, 1, '2016-03-28 16:30:07'),
(116, 0, 8004791897, 6259, 1, '2016-03-29 01:24:21'),
(117, 0, 111111111111, 4359, 1, '2016-03-29 01:58:54'),
(118, 0, 22222222222222, 4343, 1, '2016-03-29 02:01:24'),
(119, 0, 33333333333, 6667, 1, '2016-03-29 02:05:53'),
(120, 0, 8004791897, 2480, 1, '2016-03-29 12:40:52'),
(121, 0, 8004791897, 7130, 1, '2016-03-29 12:44:49'),
(122, 0, 8004791897, 5762, 1, '2016-03-29 13:06:09'),
(123, 0, 8004791897, 1191, 0, '2016-03-31 18:56:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mz_admin`
--
ALTER TABLE `mz_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_advisor_technician`
--
ALTER TABLE `mz_advisor_technician`
  ADD PRIMARY KEY (`id_advisor_technician`);

--
-- Indexes for table `mz_banner`
--
ALTER TABLE `mz_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `mz_banner_type`
--
ALTER TABLE `mz_banner_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_category`
--
ALTER TABLE `mz_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `mz_ci_sessions`
--
ALTER TABLE `mz_ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mz_config`
--
ALTER TABLE `mz_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `mz_consumer`
--
ALTER TABLE `mz_consumer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mz_contact`
--
ALTER TABLE `mz_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_country`
--
ALTER TABLE `mz_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_customer_advisor`
--
ALTER TABLE `mz_customer_advisor`
  ADD PRIMARY KEY (`id_customer_advisor`);

--
-- Indexes for table `mz_discount`
--
ALTER TABLE `mz_discount`
  ADD PRIMARY KEY (`id_discount`);

--
-- Indexes for table `mz_log_record`
--
ALTER TABLE `mz_log_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_message_config`
--
ALTER TABLE `mz_message_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_notification`
--
ALTER TABLE `mz_notification`
  ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `mz_product`
--
ALTER TABLE `mz_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `mz_product_attr`
--
ALTER TABLE `mz_product_attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `mz_quotation`
--
ALTER TABLE `mz_quotation`
  ADD PRIMARY KEY (`id_quotation`);

--
-- Indexes for table `mz_quotation_products`
--
ALTER TABLE `mz_quotation_products`
  ADD PRIMARY KEY (`id_quotation_product`),
  ADD KEY `id_quotation` (`id_quotation`),
  ADD KEY `id_quotation_2` (`id_quotation`),
  ADD KEY `id_quotation_3` (`id_quotation`);

--
-- Indexes for table `mz_quotation_product_attr`
--
ALTER TABLE `mz_quotation_product_attr`
  ADD PRIMARY KEY (`id_quotation_attr`),
  ADD KEY `id_quotation_product` (`id_quotation_product`);

--
-- Indexes for table `mz_review_rating`
--
ALTER TABLE `mz_review_rating`
  ADD PRIMARY KEY (`id_rating`);

--
-- Indexes for table `mz_salesperson_quotation`
--
ALTER TABLE `mz_salesperson_quotation`
  ADD PRIMARY KEY (`salesperson_id`);

--
-- Indexes for table `mz_sales_agreement_template`
--
ALTER TABLE `mz_sales_agreement_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `mz_service_images`
--
ALTER TABLE `mz_service_images`
  ADD PRIMARY KEY (`id_service_image`);

--
-- Indexes for table `mz_service_quotation`
--
ALTER TABLE `mz_service_quotation`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `mz_service_quotation_products`
--
ALTER TABLE `mz_service_quotation_products`
  ADD PRIMARY KEY (`id_service_products`),
  ADD KEY `id_service` (`id_service`),
  ADD KEY `id_service_2` (`id_service`);

--
-- Indexes for table `mz_service_quotation_product_attr`
--
ALTER TABLE `mz_service_quotation_product_attr`
  ADD PRIMARY KEY (`id_service_attr`),
  ADD KEY `id_service_product` (`id_service_products`);

--
-- Indexes for table `mz_static_content`
--
ALTER TABLE `mz_static_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_userlogin_history`
--
ALTER TABLE `mz_userlogin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_users`
--
ALTER TABLE `mz_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mz_user_device`
--
ALTER TABLE `mz_user_device`
  ADD PRIMARY KEY (`id_user_device`);

--
-- Indexes for table `mz_user_otp`
--
ALTER TABLE `mz_user_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mz_admin`
--
ALTER TABLE `mz_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mz_advisor_technician`
--
ALTER TABLE `mz_advisor_technician`
  MODIFY `id_advisor_technician` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `mz_banner`
--
ALTER TABLE `mz_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mz_banner_type`
--
ALTER TABLE `mz_banner_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mz_category`
--
ALTER TABLE `mz_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mz_consumer`
--
ALTER TABLE `mz_consumer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `mz_contact`
--
ALTER TABLE `mz_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mz_country`
--
ALTER TABLE `mz_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `mz_customer_advisor`
--
ALTER TABLE `mz_customer_advisor`
  MODIFY `id_customer_advisor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mz_discount`
--
ALTER TABLE `mz_discount`
  MODIFY `id_discount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `mz_log_record`
--
ALTER TABLE `mz_log_record`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;
--
-- AUTO_INCREMENT for table `mz_message_config`
--
ALTER TABLE `mz_message_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mz_notification`
--
ALTER TABLE `mz_notification`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `mz_product`
--
ALTER TABLE `mz_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;
--
-- AUTO_INCREMENT for table `mz_product_attr`
--
ALTER TABLE `mz_product_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `mz_quotation`
--
ALTER TABLE `mz_quotation`
  MODIFY `id_quotation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `mz_quotation_products`
--
ALTER TABLE `mz_quotation_products`
  MODIFY `id_quotation_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `mz_quotation_product_attr`
--
ALTER TABLE `mz_quotation_product_attr`
  MODIFY `id_quotation_attr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;
--
-- AUTO_INCREMENT for table `mz_review_rating`
--
ALTER TABLE `mz_review_rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mz_salesperson_quotation`
--
ALTER TABLE `mz_salesperson_quotation`
  MODIFY `salesperson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `mz_sales_agreement_template`
--
ALTER TABLE `mz_sales_agreement_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mz_service_images`
--
ALTER TABLE `mz_service_images`
  MODIFY `id_service_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `mz_service_quotation`
--
ALTER TABLE `mz_service_quotation`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `mz_service_quotation_products`
--
ALTER TABLE `mz_service_quotation_products`
  MODIFY `id_service_products` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT for table `mz_service_quotation_product_attr`
--
ALTER TABLE `mz_service_quotation_product_attr`
  MODIFY `id_service_attr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;
--
-- AUTO_INCREMENT for table `mz_static_content`
--
ALTER TABLE `mz_static_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mz_userlogin_history`
--
ALTER TABLE `mz_userlogin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `mz_users`
--
ALTER TABLE `mz_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `mz_user_device`
--
ALTER TABLE `mz_user_device`
  MODIFY `id_user_device` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `mz_user_otp`
--
ALTER TABLE `mz_user_otp`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
