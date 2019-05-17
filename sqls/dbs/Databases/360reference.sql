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
-- Database: `360reference`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `added_date`) VALUES
(1, 'Our Mission', '<p><strong>Exercitation ullamco laboris nisi ut aliquip ex ea</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.x</p>', '2018-03-22 01:32:38'),
(2, 'Our Vision', '<p><strong>Exercitation ullamco laboris nisi ut aliquip ex ea</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.x</p>', '2018-03-22 01:32:46'),
(3, 'Who We Are', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.x</p>', '2018-03-22 01:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_banner`
--

CREATE TABLE `about_us_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_banner`
--

INSERT INTO `about_us_banner` (`id`, `title`, `description`, `banner_image`, `added_date`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing', 'Lorem ipsum dolor sit amet consectetur adipisicing', 'crop_20180321102315.jpeg', '2018-03-21 04:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `banner_detail`
--

CREATE TABLE `banner_detail` (
  `banner_detail_id` int(10) UNSIGNED NOT NULL,
  `banner_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_type` enum('ABOUT','HOW IT WORKS','FAQ','CONTACT US','DISCLAIMER','PRIVACY POLICY','TERMS OF USE','INDIVIDUAL SIGNUP','COMPANY SIGNUP') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_detail`
--

INSERT INTO `banner_detail` (`banner_detail_id`, `banner_title`, `banner_image`, `banner_type`, `added_date`) VALUES
(1, 'See the value of busines', 'crop_20180321102216.jpeg', 'ABOUT', '2018-03-27 08:42:08'),
(2, 'How It Workss', 'crop_20180328061830.jpeg', 'HOW IT WORKS', '2018-03-28 00:48:35'),
(3, 'Frequently Asked Questions', 'crop_20180315135101.jpeg', 'FAQ', '2018-03-15 08:21:03'),
(4, 'Get in touch', 'crop_20180315134410.jpeg', 'CONTACT US', '2018-03-15 08:14:12'),
(5, 'Disclaimer', 'crop_20180319034944.jpeg', 'DISCLAIMER', '2018-03-18 22:19:45'),
(6, 'Privacy Policy', 'crop_20180319035150.jpeg', 'PRIVACY POLICY', '2018-03-18 22:21:51'),
(7, 'Terms of Use', 'crop_20180319035225.jpeg', 'TERMS OF USE', '2018-03-18 22:22:26'),
(8, 'Individual SignUp', 'crop_20180406101136.jpeg', 'INDIVIDUAL SIGNUP', '2018-04-06 04:41:38'),
(9, 'Company SignUp', 'crop_20180406101242.jpeg', 'COMPANY SIGNUP', '2018-04-06 04:42:44');

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

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `contact_personnel`
--

CREATE TABLE `contact_personnel` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_personnel`
--

INSERT INTO `contact_personnel` (`id`, `name`, `designation`, `email`, `mobile`, `fax`, `skype`, `status`, `added_date`) VALUES
(1, 'Mr. Denstun D’suza', 'Cheif Technical Officer', 'denstundsuza234@gmail.com', '+65 23456754', '+65 23456754', 'denstun.dsuza', 'active', '2018-03-15 07:56:30'),
(5, 'Riya Malik', 'General Manager', 'riyamalik@gmail.com', '+65 23456752', '+65 23456752', 'riya.malik', 'active', '2018-03-15 13:27:53'),
(6, 'Nancy Francico', 'Software Engineer', 'nancyfrancico67@gmail.com', '+65 23456755', '+65 23456755', 'nancy.francico12', 'active', '2018-03-15 13:28:44'),
(7, 'Raveena Nigam', 'Senior Software Engineer', 'raveena@singsys.com', '+65 63110030', '65437890', 'raveena.singsys', 'active', '2018-03-22 07:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_us_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_us_id`, `name`, `email`, `message`, `contact_number`, `added_date`) VALUES
(1, 'Sushant', 'sushant@singsys.com', 'This is for testing.', '+91-9453680129', '2018-03-26 04:29:14'),
(2, 'Raveena Nigam', 'raveena@singsys.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '+91-87656789', '2018-03-26 12:13:09'),
(3, 'Raveena', 'raveena@singsys.com', 'This is testing description', '+91-09876543', '2018-04-17 12:15:40');

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
(1, 1, 0, '2018-03-25 23:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calling_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `calling_code`, `status`, `added_date`) VALUES
(1, 'Afghanistan', '93', 'active', '2018-03-27 05:36:50'),
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
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `description`, `added_date`) VALUES
(1, 'contact_us', '360 Reference - Contact Us ', 'Dear {NAME},\r\n\r\nThanks for your response.\r\n\r\nThanks {SITENAME} Team', '2018-03-06 07:44:24'),
(2, 'contact_us_reply', '360 Reference - Contact Reply', 'Dear {NAME},\r\n\r\nContact Us email reply.\r\n\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2018-03-22 02:21:14'),
(3, 'account_activation', '360 Reference | Account Activation', 'Dear {NAME},\r\n\r\nThank you for signing up at 360 Reference, to activate your corresponding account, visit the following link:\r\n{ACTIVATIONLINK}\r\n\r\nIf you are not able to click on the above link, please copy and paste the URL in the browser.\r\n\r\nThanks {SITENAME}', '2018-03-22 02:21:23'),
(4, 'reset_password', '360 Reference - Reset Password', 'Dear {NAME}, \r\n\r\nWe received your request to Reset the Password. \r\n\r\nPlease click on the link below to Reset your Passsword. \r\n{ACTIVATIONLINK} \r\n\r\nThanks {SITENAME}', '2018-03-22 02:21:31'),
(5, 'same_company_notification', '360 Reference - New Connection', 'Dear {NAME}, A new user-({NEWUSER}) has registered with the same Company Name({COMPANY}) as yours. Thanks {SITENAME} Team', '2018-03-21 05:26:52'),
(6, 'contact_us_admin', '360 Reference - Contact Us', 'Dear Admin,\r\n\r\nNew contact information found.\r\n\r\nName: {NAME}\r\n\r\nEmail: {FROM_EMAIL}\r\n\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2018-03-26 04:33:00'),
(7, 'account_deletion', 'Reference 360 | Account Deletion', 'Dear {NAME},\n\nThis is to inform you that your account has been deleted by the Admin.\n\nThanks {SITENAME}', '2018-04-02 00:08:45'),
(8, 'account_block', 'Reference 360 | Account Blocked', 'Dear {NAME},\r\n\r\nThis is to inform you that your account has been blocked by the Admin.\r\n\r\nThanks {SITENAME}', '2018-04-02 05:26:54'),
(9, 'account_unblock', 'Reference 360 | Account Unblock', 'Dear {NAME},\r\n\r\nThis is to inform you that your account has been unblocked by the Admin.\r\n\r\nThanks {SITENAME}', '2018-04-02 05:27:46'),
(10, 'account_edit', 'Reference 360 | Account Edited', 'Dear {NAME},\r\n\r\nThis is to inform you that your account has been edited by the Admin.\r\n\r\nThanks {SITENAME}', '2018-04-02 05:28:37'),
(11, 'disputed_rating', 'Reference 360 - Disputed Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>Your rating has been disputed by {SENDER}.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-02 05:28:37'),
(12, 'rating_received', 'Reference 360 - Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>You have received rating from {SENDER}.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-17 13:34:06'),
(13, 'rating_received', 'Reference 360 - Rating Notification', '<p>Dear {NAME},</p>\r\n\r\n<p>You have received rating from {SENDER}.</p>\r\n\r\n<p>Thanks {SITENAME}</p>', '2018-04-17 13:34:12'),
(14, 'recommendation_mail', 'Reference 360 - Recommendation Notification', 'Dear {NAME},\r\n\r\n{SENDER} has recommended you to rate {RATE}.To rate please click the below link\r\n{ACTIVATIONLINK}\r\n\r\nIf you are not able to click on the above link, please copy and paste the URL in the browser.', '2018-04-17 13:34:12'),
(15, 'short_rating', '360 reference - Regarding Average Rating', '<p>Dear {NAME},</p>\r\n\r\n<p>You are short of ratings! Invite your connections to rate you so that your average rating is improved and your visibility increases to your employer.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-19 09:54:02'),
(16, 'daily_digest', '360 Reference - Daily Digest', '<p>Dear {NAME},</p>\r\n\r\n<p>Daily Digest mails.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-19 09:54:43'),
(17, 'invitation_received', 'Reference 360 - Recommendation Notification', 'Dear {NAME},\r\n\r\n{SENDER} has sent you invitation to connect. \r\n\r\n\r\n', '2018-04-19 09:54:43'),
(18, 'keyword_admin', '360 Reference - Review On Hold', '<p>Dear {NAME},</p>\r\n\r\n<p>A new review has been posted which matches with the keyword. Please login the Admin Panel to review.</p>\r\n\r\n<p>Thanks {SITENAME} Team</p>', '2018-04-20 10:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('General','Admin Functions','Updates','Pricing Plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`, `category`, `added_date`, `status`) VALUES
(1, 'What is a Company Page?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'General', '2018-03-23 05:53:17', 'active'),
(2, 'How do I edit my individual profile?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'General', '2018-03-15 05:06:43', 'active'),
(3, 'How can I become an administrator on my Company Page?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Admin Functions', '2018-03-15 05:36:29', 'active'),
(4, 'What can Company Page administrators do and how do I assign one?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Admin Functions', '2018-03-27 05:22:33', 'inactive'),
(5, 'Who can add a Company Page?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Admin Functions', '2018-03-15 05:37:29', 'active'),
(6, 'What are how it works for my Company Page?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Updates', '2018-03-23 05:53:55', 'active'),
(7, 'How do I edit the Profile section?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Updates', '2018-03-15 05:38:34', 'active'),
(8, 'What are the payment methods that I can use to purchase my subscription?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>', 'Pricing Plan', '2018-03-27 06:09:57', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_slider`
--

CREATE TABLE `home_page_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_slider`
--

INSERT INTO `home_page_slider` (`id`, `title`, `description`, `banner_image`, `added_date`) VALUES
(1, 'Find a company that’s right for you!', 'Read company reviews and ratings of over 400,000 companies worldwide. Get to know the inside news. Hear the stories directly from their employees.', 'crop_20180314055108.jpeg', '2018-03-14 00:21:48'),
(2, '360 Reference', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', 'crop_20180322081736.jpeg', '2018-03-22 08:17:41'),
(3, 'Ut aut reiciendis voluptatibus', 'Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'crop_20180322082135.jpeg', '2018-03-22 08:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('INDIVIDUAL','COMPANY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `title`, `description`, `image`, `category`, `added_date`) VALUES
(1, 'Get Registered', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'crop_20180327035120.png', 'INDIVIDUAL', '2018-03-30 03:40:48'),
(2, 'Complete Your Profile', 'qwert', 'crop_20180327035208.png', 'INDIVIDUAL', '2018-03-26 22:22:10'),
(3, 'Get Found', 'asdfgbn', 'crop_20180327035251.png', 'INDIVIDUAL', '2018-03-26 22:22:52'),
(4, 'Post Ratings and Reviews', 'qwdvs', 'crop_20180327035331.png', 'INDIVIDUAL', '2018-03-26 22:23:34'),
(5, 'Chat With Companies Representatives', 'qwert', 'crop_20180327035425.png', 'INDIVIDUAL', '2018-03-26 22:24:27'),
(6, 'Get Registered', 'asdfghhgf', 'crop_20180315121140.png', 'COMPANY', '2018-03-15 06:41:43'),
(7, 'Find Suitable Individuals', 'sdfgfd', 'crop_20180315121247.png', 'COMPANY', '2018-03-15 06:42:50'),
(8, 'Get Ratings & Reviews', 'sdfscvf', 'crop_20180315121354.png', 'COMPANY', '2018-03-15 06:43:57'),
(9, 'Tell Company Stories', 'asdfg', 'crop_20180315121509.png', 'COMPANY', '2018-03-15 06:45:11'),
(10, 'Chat With Individuals', 'wdvfdf', 'crop_20180315121706.png', 'COMPANY', '2018-03-15 06:47:09');

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
(1, 'New', '2018-04-17 07:07:15', NULL),
(2, 'Good', '2018-04-17 07:07:26', NULL);

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
(26, '2018_03_13_103716_create_user_account_types', 1),
(27, '2018_03_13_105059_add_account_type_to_users_table', 1),
(28, '2018_03_15_052532_add_category_to_user_account_types_table_column', 1),
(29, '2018_03_15_073506_add_calling_code_to_countries_table_column', 1),
(30, '2018_03_16_080429_create_user_education_table', 1),
(31, '2018_03_16_085537_drop_company_data_from_users_table', 1),
(32, '2018_03_16_090051_create_user_work_experience_table', 1),
(33, '2018_03_16_110836_add_company_naame_to_users_table', 1),
(34, '2018_03_21_040106_create_pending_same_company_notifications_table', 1),
(35, '2018_03_23_040411_create_operating_hours_table', 1),
(36, '2018_03_23_053723_add_charge_to_user_account_types_table', 1),
(37, '2018_03_23_122758_create_transaction_details_table', 1),
(38, '2018_03_23_134628_create_subscriptions_table', 1),
(39, '2018_03_24_035528_add_votes_to_users_table', 1),
(40, '2018_03_24_072455_alter_company_profile', 1),
(41, '2018_03_24_090328_add_contact_number_to_contact_us_table', 1),
(42, '2018_03_24_094540_alter_operating_hours', 1),
(43, '2018_03_24_111028_alter_contact_us_table', 1),
(44, '2018_03_24_112615_alter_company_profile_add_images_column', 1),
(45, '2018_03_26_051426_create_contact_us_reply_table', 1),
(46, '2018_03_28_062459_alter_operating_hours_day', 1),
(47, '2018_03_29_094740_add_browse_profile_limit', 1),
(48, '2018_03_30_044755_create_notification_template_table', 1),
(49, '2018_03_30_045558_create_notification_settings_table', 1),
(50, '2018_03_30_050146_create_notifications_table', 1),
(51, '2018_03_30_051833_create_rating_questions_table', 1),
(52, '2018_04_02_035241_create_keyword_management_table', 1),
(53, '2018_04_02_061405_add_status_to_users', 1),
(54, '2018_04_03_060522_add_industry_to_user_work_experience', 1),
(55, '2018_04_03_083425_add_certification_to_user_education', 1),
(56, '2018_04_04_043805_add_status_to_country', 1),
(57, '2018_04_05_051216_create_rating_as_user', 1),
(58, '2018_04_05_095821_update_rating_questions_taable', 1),
(59, '2018_04_06_095802_update_banner_detail_table', 1),
(60, '2018_04_07_041436_create_individual_self_rating_table', 1),
(61, '2018_04_07_044202_create_ratings_and_reviews_table', 1),
(62, '2018_04_07_045021_create_ratings_table', 1),
(63, '2018_04_07_050442_create_reviews_table', 1),
(64, '2018_04_09_045544_update_user_account_types_table', 1),
(65, '2018_04_14_053907_update_ratings_and_reviews_table', 1),
(66, '2018_04_14_074224_update_education_table', 1),
(67, '2018_04_16_043956_create_user_profile_logs', 1),
(68, '2018_04_16_083530_update_rating_usertype_table', 1),
(69, '2018_04_16_124504_create_invite_connect_table', 1),
(70, '2018_04_17_041944_create_company_admin_table', 1),
(71, '2018_04_18_035547_add_parameter_to_rating_questions', 1),
(72, '2018_04_18_085133_create_reviews_on_hold_table', 1),
(73, '2018_04_19_054016_create_profile_views', 1),
(74, '2018_04_19_060717_add_month_year_to_profile_views_table', 1),
(75, '2018_04_19_061024_update_notification_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `title`, `description`, `image`, `added_date`) VALUES
(1, 'Latest News', 'Read company reviews and ratings of over 400,000', 'crop_20180321093521.jpeg', '2018-03-26 22:18:04'),
(2, 'Ut aut reiciendis voluptatibus', 'Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'crop_20180322083728.jpeg', '2018-03-22 08:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('rating_received','dispute_rating','invitation_received','short_rating','recommendation_notification') COLLATE utf8mb4_unicode_ci NOT NULL,
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
(10, 29, '<a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56928\"> Preeti Singh </a> has recommended you to rate <a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56931\"> Raveena Nigam </a>.', 'recommendation_notification', 'pending', 28, 29, 'yes', 'yes', '2018-04-21 00:36:37', NULL),
(12, 29, '<a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56928\"> Preeti Singh </a> has recommended you to rate <a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56928\"> Preeti Singh </a>.', 'recommendation_notification', 'pending', 28, 29, 'yes', 'yes', '2018-04-21 01:34:16', NULL),
(13, 29, '<a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56928\"> Preeti Singh </a> has recommended you to rate <a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56931\"> Raveena Nigam </a>.', 'recommendation_notification', 'pending', 28, 29, 'yes', 'yes', '2018-04-21 01:34:20', NULL),
(14, 36, '<a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56928\"> Preeti Singh </a> has recommended you to rate <a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56931\"> Raveena Nigam </a>.', 'recommendation_notification', 'pending', 28, 36, 'no', 'yes', '2018-04-21 03:36:03', NULL),
(15, 36, '<a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56928\"> Preeti Singh </a> has recommended you to rate <a href=\"http://localhost/360reference/public/other-individual/db1e52b542d30aefc9e08c8c3bd2f56930\"> Preeti Singh </a>.', 'recommendation_notification', 'pending', 28, 36, 'no', 'yes', '2018-04-21 06:43:10', NULL);

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
(1, 'rating_received', '{SENDER} has rated on your profile.'),
(2, 'dispute_rating', '{SENDER} has disputed your review.'),
(3, 'short_rating', 'You are short of ratings! Invite your connections to rate you so that your average rating is improved and your visibility increases to your employer.'),
(4, 'invitation_received', '{SENDER} has sent you an invitation to connect.'),
(5, 'recommendation_notification', '{SENDER} has recommended you to rate {RATE}.');

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

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `password_resets_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `profile_views`
--

CREATE TABLE `profile_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_views`
--

INSERT INTO `profile_views` (`id`, `user_id`, `views`, `month`, `year`) VALUES
(1, 28, 1, '04', '2018'),
(2, 29, 1, '04', '2018'),
(3, 29, 1, '04', '2018'),
(4, 28, 1, '04', '2018'),
(5, 28, 1, '04', '2018'),
(6, 28, 1, '04', '2018'),
(7, 28, 1, '04', '2018'),
(8, 28, 1, '04', '2018'),
(9, 28, 1, '04', '2018'),
(10, 28, 1, '04', '2018'),
(11, 28, 1, '04', '2018'),
(12, 28, 1, '04', '2018'),
(13, 28, 1, '04', '2018'),
(14, 28, 1, '04', '2018'),
(15, 28, 1, '04', '2018'),
(16, 28, 1, '04', '2018'),
(17, 28, 1, '04', '2018'),
(18, 28, 1, '04', '2018'),
(19, 28, 1, '04', '2018'),
(20, 28, 1, '04', '2018'),
(21, 28, 1, '04', '2018'),
(22, 28, 1, '04', '2018'),
(23, 28, 1, '04', '2018'),
(24, 28, 1, '04', '2018'),
(25, 28, 1, '04', '2018'),
(26, 28, 1, '04', '2018'),
(27, 28, 1, '04', '2018'),
(28, 28, 1, '04', '2018'),
(29, 28, 1, '04', '2018'),
(30, 28, 1, '04', '2018'),
(31, 28, 1, '04', '2018'),
(32, 28, 1, '04', '2018'),
(33, 28, 1, '04', '2018'),
(34, 28, 1, '04', '2018'),
(35, 28, 1, '04', '2018'),
(36, 28, 1, '04', '2018'),
(37, 28, 1, '04', '2018'),
(38, 28, 1, '04', '2018'),
(39, 28, 1, '04', '2018'),
(40, 28, 1, '04', '2018'),
(41, 28, 1, '04', '2018'),
(42, 28, 1, '04', '2018'),
(43, 28, 1, '04', '2018'),
(44, 28, 1, '04', '2018'),
(45, 28, 1, '04', '2018'),
(46, 28, 1, '04', '2018'),
(47, 28, 1, '04', '2018'),
(48, 28, 1, '04', '2018'),
(49, 28, 1, '04', '2018'),
(50, 28, 1, '04', '2018'),
(51, 28, 1, '04', '2018'),
(52, 28, 1, '04', '2018'),
(53, 28, 1, '04', '2018'),
(54, 28, 1, '04', '2018'),
(55, 28, 1, '04', '2018'),
(56, 28, 1, '04', '2018'),
(57, 28, 1, '04', '2018'),
(58, 28, 1, '04', '2018'),
(59, 28, 1, '04', '2018'),
(60, 28, 1, '04', '2018'),
(61, 28, 1, '04', '2018'),
(62, 28, 1, '04', '2018'),
(63, 28, 1, '04', '2018'),
(64, 28, 1, '04', '2018'),
(65, 28, 1, '04', '2018'),
(66, 28, 1, '04', '2018'),
(67, 28, 1, '04', '2018'),
(68, 28, 1, '04', '2018'),
(69, 28, 1, '04', '2018'),
(70, 28, 1, '04', '2018'),
(71, 28, 1, '04', '2018'),
(72, 28, 1, '04', '2018'),
(73, 28, 1, '04', '2018'),
(74, 28, 1, '04', '2018'),
(75, 28, 1, '04', '2018'),
(76, 28, 1, '04', '2018'),
(77, 28, 1, '04', '2018'),
(78, 28, 1, '04', '2018'),
(79, 28, 1, '04', '2018'),
(80, 28, 1, '04', '2018'),
(81, 28, 1, '04', '2018'),
(82, 28, 1, '04', '2018'),
(83, 28, 1, '04', '2018'),
(84, 28, 1, '04', '2018'),
(85, 28, 1, '04', '2018'),
(86, 28, 1, '04', '2018'),
(87, 28, 1, '04', '2018'),
(88, 28, 1, '04', '2018'),
(89, 28, 1, '04', '2018'),
(90, 28, 1, '04', '2018'),
(91, 28, 1, '04', '2018'),
(92, 28, 1, '04', '2018'),
(93, 28, 1, '04', '2018'),
(94, 28, 1, '04', '2018'),
(95, 28, 1, '04', '2018'),
(96, 28, 1, '04', '2018'),
(97, 28, 1, '04', '2018'),
(98, 28, 1, '04', '2018'),
(99, 28, 1, '04', '2018'),
(100, 28, 1, '04', '2018'),
(101, 28, 1, '04', '2018'),
(102, 28, 1, '04', '2018'),
(103, 28, 1, '04', '2018'),
(104, 28, 1, '04', '2018'),
(105, 28, 1, '04', '2018'),
(106, 28, 1, '04', '2018'),
(107, 28, 1, '04', '2018'),
(108, 28, 1, '04', '2018'),
(109, 28, 1, '04', '2018'),
(110, 28, 1, '04', '2018'),
(111, 28, 1, '04', '2018'),
(112, 28, 1, '04', '2018'),
(113, 28, 1, '04', '2018'),
(114, 28, 1, '04', '2018'),
(115, 28, 1, '04', '2018'),
(116, 28, 1, '04', '2018'),
(117, 28, 1, '04', '2018'),
(118, 28, 1, '04', '2018'),
(119, 28, 1, '04', '2018'),
(120, 28, 1, '04', '2018'),
(121, 28, 1, '04', '2018'),
(122, 28, 1, '04', '2018'),
(123, 28, 1, '04', '2018'),
(124, 28, 1, '04', '2018'),
(125, 28, 1, '04', '2018'),
(126, 28, 1, '04', '2018'),
(127, 28, 1, '04', '2018'),
(128, 28, 1, '04', '2018'),
(129, 28, 1, '04', '2018'),
(130, 28, 1, '04', '2018'),
(131, 28, 1, '04', '2018'),
(132, 28, 1, '04', '2018'),
(133, 28, 1, '04', '2018'),
(134, 28, 1, '04', '2018'),
(135, 28, 1, '04', '2018'),
(136, 28, 1, '04', '2018'),
(137, 28, 1, '04', '2018'),
(138, 28, 1, '04', '2018'),
(139, 28, 1, '04', '2018'),
(140, 28, 1, '04', '2018'),
(141, 28, 1, '04', '2018'),
(142, 28, 1, '04', '2018'),
(143, 28, 1, '04', '2018'),
(144, 28, 1, '04', '2018'),
(145, 28, 1, '04', '2018'),
(146, 28, 1, '04', '2018'),
(147, 28, 1, '04', '2018'),
(148, 28, 1, '04', '2018'),
(149, 28, 1, '04', '2018'),
(150, 28, 1, '04', '2018'),
(151, 28, 1, '04', '2018'),
(152, 28, 1, '04', '2018'),
(153, 28, 1, '04', '2018'),
(154, 28, 1, '04', '2018'),
(155, 28, 1, '04', '2018'),
(156, 28, 1, '04', '2018'),
(157, 28, 1, '04', '2018'),
(158, 28, 1, '04', '2018'),
(159, 28, 1, '04', '2018'),
(160, 28, 1, '04', '2018'),
(161, 28, 1, '04', '2018'),
(162, 28, 1, '04', '2018'),
(163, 28, 1, '04', '2018'),
(164, 28, 1, '04', '2018'),
(165, 28, 1, '04', '2018'),
(166, 28, 1, '04', '2018'),
(167, 28, 1, '04', '2018'),
(168, 28, 1, '04', '2018'),
(169, 28, 1, '04', '2018'),
(170, 28, 1, '04', '2018'),
(171, 28, 1, '04', '2018'),
(172, 28, 1, '04', '2018'),
(173, 28, 1, '04', '2018'),
(174, 28, 1, '04', '2018'),
(175, 28, 1, '04', '2018'),
(176, 28, 1, '04', '2018'),
(177, 28, 1, '04', '2018'),
(178, 28, 1, '04', '2018'),
(179, 28, 1, '04', '2018'),
(180, 28, 1, '04', '2018'),
(181, 28, 1, '04', '2018'),
(182, 28, 1, '04', '2018'),
(183, 28, 1, '04', '2018'),
(184, 28, 1, '04', '2018'),
(185, 28, 1, '04', '2018'),
(186, 28, 1, '04', '2018'),
(187, 28, 1, '04', '2018'),
(188, 28, 1, '04', '2018'),
(189, 28, 1, '04', '2018'),
(190, 28, 1, '04', '2018'),
(191, 28, 1, '04', '2018'),
(192, 28, 1, '04', '2018'),
(193, 28, 1, '04', '2018'),
(194, 28, 1, '04', '2018'),
(195, 28, 1, '04', '2018'),
(196, 28, 1, '04', '2018'),
(197, 28, 1, '04', '2018'),
(198, 28, 1, '04', '2018'),
(199, 28, 1, '04', '2018'),
(200, 28, 1, '04', '2018'),
(201, 28, 1, '04', '2018'),
(202, 28, 1, '04', '2018'),
(203, 28, 1, '04', '2018'),
(204, 28, 1, '04', '2018'),
(205, 28, 1, '04', '2018'),
(206, 28, 1, '04', '2018'),
(207, 28, 1, '04', '2018'),
(208, 28, 1, '04', '2018'),
(209, 28, 1, '04', '2018'),
(210, 28, 1, '04', '2018'),
(211, 28, 1, '04', '2018'),
(212, 28, 1, '04', '2018'),
(213, 28, 1, '04', '2018'),
(214, 28, 1, '04', '2018'),
(215, 28, 1, '04', '2018'),
(216, 28, 1, '04', '2018'),
(217, 28, 1, '04', '2018'),
(218, 28, 1, '04', '2018'),
(219, 28, 1, '04', '2018'),
(220, 28, 1, '04', '2018'),
(221, 28, 1, '04', '2018'),
(222, 28, 1, '04', '2018'),
(223, 28, 1, '04', '2018'),
(224, 28, 1, '04', '2018'),
(225, 28, 1, '04', '2018'),
(226, 28, 1, '04', '2018'),
(227, 28, 1, '04', '2018'),
(228, 28, 1, '04', '2018'),
(229, 28, 1, '04', '2018'),
(230, 28, 1, '04', '2018'),
(231, 28, 1, '04', '2018'),
(232, 28, 1, '04', '2018'),
(233, 28, 1, '04', '2018'),
(234, 28, 1, '04', '2018'),
(235, 28, 1, '04', '2018'),
(236, 28, 1, '04', '2018'),
(237, 28, 1, '04', '2018'),
(238, 28, 1, '04', '2018'),
(239, 28, 1, '04', '2018'),
(240, 28, 1, '04', '2018'),
(241, 28, 1, '04', '2018'),
(242, 28, 1, '04', '2018'),
(243, 28, 1, '04', '2018'),
(244, 28, 1, '04', '2018'),
(245, 28, 1, '04', '2018'),
(246, 28, 1, '04', '2018'),
(247, 28, 1, '04', '2018'),
(248, 28, 1, '04', '2018'),
(249, 28, 1, '04', '2018'),
(250, 28, 1, '04', '2018'),
(251, 28, 1, '04', '2018'),
(252, 28, 1, '04', '2018'),
(253, 28, 1, '04', '2018'),
(254, 28, 1, '04', '2018'),
(255, 28, 1, '04', '2018'),
(256, 28, 1, '04', '2018'),
(257, 28, 1, '04', '2018'),
(258, 28, 1, '04', '2018'),
(259, 28, 1, '04', '2018'),
(260, 28, 1, '04', '2018'),
(261, 28, 1, '04', '2018'),
(262, 28, 1, '04', '2018'),
(263, 28, 1, '04', '2018'),
(264, 28, 1, '04', '2018'),
(265, 28, 1, '04', '2018'),
(266, 28, 1, '04', '2018'),
(267, 28, 1, '04', '2018'),
(268, 28, 1, '04', '2018'),
(269, 28, 1, '04', '2018'),
(270, 28, 1, '04', '2018'),
(271, 28, 1, '04', '2018'),
(272, 28, 1, '04', '2018'),
(273, 28, 1, '04', '2018'),
(274, 28, 1, '04', '2018'),
(275, 28, 1, '04', '2018'),
(276, 28, 1, '04', '2018'),
(277, 28, 1, '04', '2018'),
(278, 28, 1, '04', '2018'),
(279, 28, 1, '04', '2018'),
(280, 28, 1, '04', '2018'),
(281, 28, 1, '04', '2018'),
(282, 28, 1, '04', '2018'),
(283, 28, 1, '04', '2018'),
(284, 28, 1, '04', '2018'),
(285, 28, 1, '04', '2018'),
(286, 28, 1, '04', '2018'),
(287, 28, 1, '04', '2018'),
(288, 28, 1, '04', '2018'),
(289, 28, 1, '04', '2018'),
(290, 28, 1, '04', '2018'),
(291, 28, 1, '04', '2018'),
(292, 28, 1, '04', '2018'),
(293, 28, 1, '04', '2018'),
(294, 28, 1, '04', '2018'),
(295, 28, 1, '04', '2018'),
(296, 28, 1, '04', '2018'),
(297, 28, 1, '04', '2018'),
(298, 28, 1, '04', '2018'),
(299, 28, 1, '04', '2018'),
(300, 28, 1, '04', '2018'),
(301, 28, 1, '04', '2018'),
(302, 28, 1, '04', '2018'),
(303, 28, 1, '04', '2018'),
(304, 28, 1, '04', '2018'),
(305, 28, 1, '04', '2018'),
(306, 28, 1, '04', '2018'),
(307, 28, 1, '04', '2018'),
(308, 28, 1, '04', '2018'),
(309, 28, 1, '04', '2018'),
(310, 28, 1, '04', '2018'),
(311, 28, 1, '04', '2018'),
(312, 28, 1, '04', '2018'),
(313, 28, 1, '04', '2018'),
(314, 28, 1, '04', '2018'),
(315, 28, 1, '04', '2018'),
(316, 28, 1, '04', '2018'),
(317, 28, 1, '04', '2018'),
(318, 28, 1, '04', '2018'),
(319, 28, 1, '04', '2018'),
(320, 28, 1, '04', '2018'),
(321, 28, 1, '04', '2018');

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

-- --------------------------------------------------------

--
-- Table structure for table `ratings_and_reviews`
--

CREATE TABLE `ratings_and_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rating_usertype` int(10) UNSIGNED NOT NULL,
  `rated_to` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','accepted','disputed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_questions`
--

CREATE TABLE `rating_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_usertype_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_questions`
--

INSERT INTO `rating_questions` (`id`, `question`, `parameter`, `rating_usertype_id`, `created_at`, `updated_at`) VALUES
(1, 'What your view for company ?', '', 1, '2018-03-30 03:49:42', NULL),
(4, 'What your view for indivisual ?', '', 8, '2018-03-30 03:53:49', NULL),
(5, 'What your view  ?', '', 5, '2018-03-30 03:53:58', NULL),
(6, 'What your view for company ?', '', 6, '2018-03-29 19:45:49', NULL),
(7, 'What your view for company ?', '', 7, '2018-04-11 07:05:43', NULL),
(8, 'What your view for indivisual ?', '', 2, '2018-04-11 07:05:56', NULL),
(9, 'What your view for company ?', '', 3, '2018-04-11 07:06:08', NULL),
(10, 'What your view for company ?', '', 4, '2018-04-11 07:06:17', NULL),
(11, 'What your view for individual ?', '', 8, '2018-04-17 07:07:49', NULL),
(12, 'What your view for individual ?', '', 8, '2018-04-17 07:08:31', NULL),
(13, 'Quality of Food?', '', 1, '2018-04-17 07:10:58', NULL),
(14, 'Choice of Product?', '', 1, '2018-04-17 07:11:09', NULL),
(15, 'Services Delivered?', '', 1, '2018-04-17 07:11:49', NULL),
(16, 'What your view for company ?', 'qwerty', 1, '2018-04-17 23:12:38', NULL),
(17, 'Services Delivered?', 'Punctuality', 1, '2018-04-17 23:13:00', NULL),
(18, 'What your view for indivisual ?', 'sincerity', 8, '2018-04-17 23:13:11', NULL),
(19, 'Services Delivered?', 'Punctuality', 1, '2018-04-17 23:13:23', NULL),
(20, 'What your view for indivisual ?', 'Sincerity', 2, '2018-04-17 23:13:35', NULL),
(21, 'What your view for indivisual ?', 'Sincerity', 8, '2018-04-17 23:13:44', NULL),
(22, 'As a Boss', 'Sincerity', 1, '2018-04-18 05:01:26', NULL);

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
(1, 'As a Boss - Direct', 'individual', 'active', NULL, NULL),
(2, 'As a Boss - Indirect', 'individual', 'active', NULL, NULL),
(3, 'As a Peer - Direct', 'individual', 'active', NULL, NULL),
(4, 'As a Peer - Indirect', 'individual', 'active', NULL, NULL),
(5, 'As a Subordinate - Direct', 'individual', 'active', NULL, NULL),
(6, 'As a Subordinate - Indirect', 'individual', 'active', NULL, NULL),
(7, 'As a Customer', 'individual', 'active', NULL, NULL),
(8, 'Self', 'company', 'active', NULL, NULL);

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
-- Table structure for table `services_offered`
--

CREATE TABLE `services_offered` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'admin_email', 'sushant@singsys.com', '2018-03-04 16:57:00', NULL),
(2, 'facebook_url', 'https://www.facebook.com', '2018-03-04 14:53:00', NULL),
(3, 'twitter_url', 'https://www.twitter.com', '2018-03-04 18:51:00', NULL),
(4, 'linkedin_url', 'https://www.linkedin.com', '2018-03-04 21:01:00', NULL),
(5, 'google_url', 'https://plus.google.com', '2018-03-04 14:30:00', NULL),
(6, 'smtp_server_host', 'ssl://ded4031.inmotionhosting.com', NULL, NULL),
(7, 'smtp_port_number', '465', NULL, NULL),
(8, 'smtp_uName', 'info@reference360.com', NULL, NULL),
(9, 'smtp_uPass', '', NULL, NULL),
(10, 'copyright', '© 2018, Reference 360 All rights reserved.', NULL, NULL),
(11, 'site_title', 'Reference 360', NULL, NULL),
(12, 'maintenance', '0', NULL, NULL),
(13, 'maintenance_desc', 'Maintenance Mode is ON', NULL, NULL),
(14, 'address', 'A-34, Second Lane, East Singapore', NULL, NULL),
(15, 'contact', '+91-1234567890', NULL, NULL),
(16, 'contact-email', 'info@reference360.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_contents`
--

CREATE TABLE `static_contents` (
  `static_content_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_contents`
--

INSERT INTO `static_contents` (`static_content_id`, `title`, `description`, `alias`, `added_date`) VALUES
(1, 'Disclaimer', '<p><strong>Revised: March 3, 2018&nbsp;</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>Iusmod tempor incididunt ut</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>Ncididunt Iusmod tempor incididunt ut</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>Smod tempor incididunt ut incididunt ut</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 'disclaimer', '2018-03-28 03:29:29'),
(2, 'Terms & Conditions', '<p><strong>1. Eligibility to Use</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Your Reference 360 Account&nbsp;</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>3. Using Reference 360</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>4. Special Provisions Applicable To Employers</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>5. Special Provisions Applicable to Advertisers</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>', 'terms', '2018-03-22 01:25:13'),
(3, 'Privacy Policy', '<p><strong>Revised: March 3, 2018&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Information We Collect and How We Use It</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Information We Collect by Automated Means</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Do Not Track Signals</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>How We Share Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Other Important Privacy Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>', 'privacy', '2018-03-22 01:26:53'),
(4, 'Reach out to us.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>', 'contact', '2018-03-15 01:46:00');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `account_type_id` int(10) UNSIGNED DEFAULT NULL,
  `email_verified` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mobile_verified` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('active','inactive','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile_code`, `mobile`, `company_name`, `country_id`, `profile_image`, `role_id`, `account_type_id`, `email_verified`, `mobile_verified`, `status`, `trial_ends_at`, `card_last_four`, `card_brand`, `stripe_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', '', 'info@360Reference.com', '$2y$10$pK.zfR0eZMzncbM9cnZmnO7sjWdCcebegaJU4t9PgzvQFY0E2LrDC', '91', '1234567890', NULL, NULL, NULL, 1, NULL, '0', '0', 'active', NULL, NULL, NULL, NULL, 'mWmqGDKISvuTbtwGFHqSf5uku3iIc4ofclfK6SNZzweKopcpxGzB7d4kXKpQ', '2018-03-12 23:45:00', NULL),
(28, 'Preeti', 'Singh', 'preetisingh@singsys.com', '$2y$10$73S1yF2N4y.0u9msLQOFduy1zpfX1YQimCJak1CRq7cr45AO2YOIa', '+65', '8856963212', NULL, 198, '', 2, 4, '1', '1', 'active', NULL, NULL, NULL, NULL, '2nPvsPKIoyXgmo0KiK5XHVMTKYpot1jtDN5aC5eazynywuADANztahydNNC4', '2018-04-19 23:03:06', '2018-04-19 23:03:29'),
(29, 'Kriti', 'Jaiswal', 'preetisingh+kriti@singsys.com', '$2y$10$G49bSCO366CmEcO/xKr3NeyXpWh36x.z777Je2FMS2gvetHQ6gjGa', '+65', '8859654127', NULL, 198, '', 2, 4, '1', '1', 'active', NULL, NULL, NULL, NULL, 'UpmjIOfLZYxqnwOvnKeGN1fAzx2O4a8yhJFx2EjFo6vPeeetXCDFiq9IFb0z', '2018-04-19 23:08:00', '2018-04-19 23:08:24'),
(30, 'Preeti', 'Singh', 'preetisingh+company@singsys.com', '$2y$10$ePZ2cyh4ydm/Zl1E.sxIk.ANOSSWelAlmlDhNbjj.EOLGp3ed7e6O', '381', '8956237412', 'XYZ', 195, '', 3, 2, '1', '1', 'active', NULL, NULL, NULL, NULL, 'dx10eiaOQbLxpC0o7ENOPDfaCxn6TpIRhAZcwg7rs8jLF6fIdDHZCUSd2f5p', '2018-04-19 23:25:30', '2018-04-20 06:00:50'),
(31, 'Raveena', 'Nigam', 'raveena+company@singsys.com', '$2y$10$hVvNIOGWN2hTmMK2SdQP4OsSOtDRvyWdWLS91Tyom9MwUwZdXRO26', '65', '98765432', 'Microsoft Corporation', 198, 'crop_20180420045701.jpeg', 3, 2, '1', '1', 'active', NULL, NULL, NULL, NULL, '0K2CA4hlnZBmLOS7ZQesvGyJsbvImHtcyOT27xd05RAzW6SGzL4NFp9LL6qr', '2018-04-19 23:27:11', '2018-04-20 06:25:22'),
(32, 'Raveena', 'Nigam', 'raveena+individual@singsys.com', '$2y$10$bYuc9aKGQxDhziQ6H15LDOom/UfoH4ZfiQpXhlV.e0uhQNcFDfgga', '+65', '887654245', NULL, 198, 'crop_20180420051911.jpeg', 2, 4, '1', '1', 'active', NULL, NULL, NULL, NULL, '86MaE86ciAufacg8SsX8knx0MsqkwN0bsdLHVHchZ6LomMxKOT9YAoTJY0da', '2018-04-19 23:49:16', '2018-04-20 00:01:30'),
(33, 'Saurabh', 'Shukla', 'saurabhshukla+company@singsys.com', '$2y$10$P6twFtodJ74.jRT0MSC1XOfwaBTjV3lWHykxIdEI1P5jfm2.zYwMO', '65', '734213456', 'Hewlett Packard', 198, 'crop_20180420053321.png', 3, 1, '1', '1', 'active', NULL, NULL, NULL, NULL, 'cThPWzXA7L1JWiimOutpltHIlASSdSx2nAAWklFSSJ4vp0V5tbxwZU8yu0Ry', '2018-04-20 00:03:45', '2018-04-20 00:08:57'),
(34, 'Saurabh', 'Shukla', 'saurabhshukla+individual@singsys.com', '$2y$10$WAxN27M2odqCzMBszj5ZNecMoFDjQSbwjKzlvCpoKQxlvZ15HBKzu', '+65', '78965432', NULL, 198, 'crop_20180420053640.jpeg', 2, 3, '1', '1', 'active', NULL, NULL, NULL, NULL, 'J9oxFEwgltqBci0Gbx8H28sXGXfqmAJmLLBqbHPeJ7Kot4yzlIzw9R7N4HFF', '2018-04-20 00:07:15', '2018-04-20 00:08:59'),
(35, 'Sushant', 'Rajpoot', 'sushant@singsys.com', '$2y$10$ZloffDKPEjaUoeQXadddQ.eJogF0RlXIohjuYf.rK0uZhOpB7uqrK', '+91', '9453680129', NULL, 100, 'crop_20180420054630.png', 2, 4, '1', '1', 'active', NULL, NULL, NULL, NULL, 'lHhwXT952wzdUZ4RBRlx3vPjFi7vyTDbV9uxY2M400aETpYcESLBFuISMBSN', '2018-04-20 00:16:51', '2018-04-20 00:17:16'),
(36, 'Anjali', 'Srivastava', 'anjali+individual@singsys.com', '$2y$10$s/HeSWzUfUrDOGgTdxsG1uJvfJRtR7Jm39yAhg2NOQe8qydDL9T0e', '+65', '67898765', NULL, 198, 'crop_20180420103409.jpeg', 2, 4, '1', '1', 'active', NULL, NULL, NULL, NULL, 'bUpuDGrgnD6BOzipYnCywSEJUxcjQQKSQzrTeaF5KtvLJy02nxDqt4UnH0kT', '2018-04-20 05:04:53', '2018-04-20 05:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_account_types`
--

CREATE TABLE `user_account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_charge` int(10) UNSIGNED DEFAULT NULL,
  `monthly_charge` int(10) UNSIGNED DEFAULT NULL,
  `browse_profile_limit` bigint(20) NOT NULL DEFAULT '0',
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

INSERT INTO `user_account_types` (`id`, `account_name`, `annual_charge`, `monthly_charge`, `browse_profile_limit`, `category`, `status`, `added_date`, `self`, `as_boss`, `as_peer`, `as_subordinate`, `as_customer`) VALUES
(1, 'Company Paid User', 20, 5, 0, 'company', 'active', '2018-03-29 22:46:54', '0', '0', '0', '0', '0'),
(2, 'Company Free User', 0, 0, 150, 'company', 'active', '2018-04-04 22:07:54', '0', '0', '0', '0', '0'),
(3, 'Individual Paid User', 20, 5, 0, 'individual', 'active', '2018-03-14 05:29:43', '0', '0', '0', '0', '0'),
(4, 'Individual Free User', 0, 0, 1000, 'individual', 'active', '2018-04-20 01:01:28', '0', '0', '0', '0', '0');

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

-- --------------------------------------------------------

--
-- Table structure for table `user_industries`
--

CREATE TABLE `user_industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `industry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(79, 31, 'Profile Updated.', '2018-04-19 23:46:00', NULL),
(80, 32, 'Self Rating Updated.', '2018-04-20 00:01:03', NULL),
(81, 32, 'Self Rating Updated.', '2018-04-20 00:01:03', NULL),
(82, 32, 'Self Rating Updated.', '2018-04-20 00:01:03', NULL),
(83, 32, 'Self Rating Updated.', '2018-04-20 00:01:03', NULL),
(84, 32, 'Self Rating Updated.', '2018-04-20 00:01:03', NULL),
(85, 32, 'Self Rating Updated.', '2018-04-20 00:01:03', NULL),
(86, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(87, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(88, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(89, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(90, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(91, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(92, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(93, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(94, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(95, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(96, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(97, 32, 'Self Rating Updated.', '2018-04-20 00:01:04', NULL),
(98, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(99, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(100, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(101, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(102, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(103, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(104, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(105, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(106, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(107, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(108, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(109, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(110, 32, 'Self Rating Updated.', '2018-04-20 00:01:05', NULL),
(111, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(112, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(113, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(114, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(115, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(116, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(117, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(118, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(119, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(120, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(121, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(122, 32, 'Self Rating Updated.', '2018-04-20 00:01:06', NULL),
(123, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(124, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(125, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(126, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(127, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(128, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(129, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(130, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(131, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(132, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(133, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(134, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(135, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(136, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(137, 32, 'Self Rating Updated.', '2018-04-20 00:01:07', NULL),
(138, 32, 'Self Rating Updated.', '2018-04-20 00:01:08', NULL),
(139, 32, 'Self Rating Updated.', '2018-04-20 00:01:08', NULL),
(140, 32, 'Self Rating Updated.', '2018-04-20 00:01:08', NULL),
(141, 32, 'Self Rating Updated.', '2018-04-20 00:01:09', NULL),
(142, 32, 'Self Rating Updated.', '2018-04-20 00:01:09', NULL),
(143, 32, 'Self Rating Updated.', '2018-04-20 00:01:09', NULL),
(144, 32, 'Self Rating Updated.', '2018-04-20 00:01:09', NULL),
(145, 32, 'Self Rating Updated.', '2018-04-20 00:01:09', NULL),
(146, 32, 'Profile Updated.', '2018-04-20 00:01:30', NULL),
(147, 34, 'New Strength Added.', '2018-04-20 00:47:02', NULL),
(148, 34, 'New Strength Added.', '2018-04-20 00:47:17', NULL),
(149, 34, 'Education Added.', '2018-04-20 00:48:06', NULL),
(150, 34, 'Education Information Deleted.', '2018-04-20 00:48:14', NULL),
(151, 30, 'Rated on XYZ profile', '2018-04-20 02:22:52', NULL),
(152, 30, 'Rated on XYZ profile', '2018-04-20 02:25:08', NULL),
(153, 35, 'Rated on Sushant Rajpoot profile', '2018-04-20 03:44:25', NULL),
(154, 35, 'Rated on Sushant Rajpoot profile', '2018-04-20 03:45:16', NULL),
(155, 35, 'Rated on Sushant Rajpoot profile', '2018-04-20 03:46:29', NULL),
(156, 35, 'Rated on Sushant Rajpoot profile', '2018-04-20 03:49:36', NULL),
(157, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(158, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(159, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(160, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(161, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(162, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(163, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(164, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(165, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(166, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(167, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(168, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(169, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(170, 34, 'Self Rating Updated.', '2018-04-20 05:23:11', NULL),
(171, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(172, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(173, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(174, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(175, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(176, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(177, 34, 'Self Rating Updated.', '2018-04-20 05:23:12', NULL),
(178, 34, 'Self Rating Updated.', '2018-04-20 05:23:13', NULL),
(179, 30, 'Profile Updated.', '2018-04-20 06:00:51', NULL),
(180, 31, 'Profile Updated.', '2018-04-20 06:21:14', NULL),
(181, 31, 'Profile Updated.', '2018-04-20 06:22:14', NULL),
(182, 31, 'Profile Updated.', '2018-04-20 06:22:27', NULL),
(183, 31, 'Profile Updated.', '2018-04-20 06:25:22', NULL),
(184, 33, 'Rated on Saurabh Shukla profile', '2018-04-20 06:26:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_strengths`
--

CREATE TABLE `user_strengths` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_strengths`
--

INSERT INTO `user_strengths` (`id`, `user_id`, `strength`, `created_at`, `updated_at`) VALUES
(12, 34, 'Information Technology', NULL, NULL),
(13, 34, 'Web Technical', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_verification`
--

CREATE TABLE `user_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('email','mobile') COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verification`
--

INSERT INTO `user_verification` (`id`, `user_id`, `type`, `token`, `created_at`, `updated_at`) VALUES
(4, 28, 'email', 'MjgjI3ByZWV0aXNpbmdoQHNpbmdzeXMuY29t', '2018-04-19 23:03:07', NULL),
(6, 29, 'email', 'MjkjI3ByZWV0aXNpbmdoK2tyaXRpQHNpbmdzeXMuY29t', '2018-04-19 23:08:00', NULL),
(8, 30, 'email', 'MzAjI3ByZWV0aXNpbmdoK2NvbXBhbnlAc2luZ3N5cy5jb20=', '2018-04-19 23:25:30', NULL),
(10, 31, 'email', 'MzEjI3JhdmVlbmErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-04-19 23:27:11', NULL),
(12, 32, 'email', 'MzIjI3JhdmVlbmEraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-04-19 23:49:16', NULL),
(14, 33, 'email', 'MzMjI3NhdXJhYmhzaHVrbGErY29tcGFueUBzaW5nc3lzLmNvbQ==', '2018-04-20 00:03:45', NULL),
(16, 34, 'email', 'MzQjI3NhdXJhYmhzaHVrbGEraW5kaXZpZHVhbEBzaW5nc3lzLmNvbQ==', '2018-04-20 00:07:15', NULL),
(18, 35, 'email', 'MzUjI3N1c2hhbnRAc2luZ3N5cy5jb20=', '2018-04-20 00:16:51', NULL),
(20, 36, 'email', 'MzYjI2FuamFsaStpbmRpdmlkdWFsQHNpbmdzeXMuY29t', '2018-04-20 05:04:53', NULL);

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
(29, 28, 'Singsys', 'Web Developer', NULL, 'October', '2005', ' ', 'null', 'CURRENTLY WORKING', '2018-04-19 23:03:06', NULL),
(30, 29, 'ABC Group', 'Designer', NULL, 'February', '2005', ' ', 'null', 'CURRENTLY WORKING', '2018-04-19 23:08:00', NULL),
(31, 32, 'Singsys Pvt. Ltd', 'Senior Software Engineer', NULL, 'November', '2016', ' ', 'null', 'CURRENTLY WORKING', '2018-04-19 23:49:16', NULL),
(32, 34, 'Singsys Pvt. Ltd', 'Senior Software Engineer', NULL, 'March', '2017', ' ', 'null', 'CURRENTLY WORKING', '2018-04-20 00:07:15', NULL),
(33, 35, 'Singsys', 'PHP Developer', NULL, 'January', '2018', ' ', 'null', 'CURRENTLY WORKING', '2018-04-20 00:16:51', NULL),
(34, 36, 'Infosys', 'Senior Software Engineer', NULL, 'May', '2015', ' ', 'null', 'CURRENTLY WORKING', '2018-04-20 05:04:53', NULL);

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
-- Indexes for table `company_admins`
--
ALTER TABLE `company_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_admins_admin_user_id_foreign` (`admin_user_id`),
  ADD KEY `company_admins_company_user_id_foreign` (`company_user_id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_profile_user_id_foreign` (`user_id`);

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connection_user_id_foreign` (`user_id`),
  ADD KEY `connection_connected_to_foreign` (`connected_to`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `individual_self_rating_user_id_foreign` (`user_id`);

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
  ADD KEY `pending_same_company_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_views_user_id_foreign` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_reference_id_foreign` (`reference_id`),
  ADD KEY `ratings_question_id_foreign` (`question_id`);

--
-- Indexes for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_and_reviews_user_id_foreign` (`user_id`),
  ADD KEY `ratings_and_reviews_rating_usertype_foreign` (`rating_usertype`),
  ADD KEY `ratings_and_reviews_rated_to_foreign` (`rated_to`);

--
-- Indexes for table `rating_questions`
--
ALTER TABLE `rating_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_questions_rating_usertype_id_foreign` (`rating_usertype_id`);

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
  ADD KEY `reviews_reference_id_foreign` (`reference_id`);

--
-- Indexes for table `reviews_on_hold`
--
ALTER TABLE `reviews_on_hold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_on_hold_reference_id_foreign` (`reference_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services_offered`
--
ALTER TABLE `services_offered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_offered_user_id_foreign` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_contents`
--
ALTER TABLE `static_contents`
  ADD PRIMARY KEY (`static_content_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_account_type_id_foreign` (`account_type_id`);

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
  ADD KEY `user_education_country_id_foreign` (`country_id`);

--
-- Indexes for table `user_industries`
--
ALTER TABLE `user_industries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_industries_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_profile_logs`
--
ALTER TABLE `user_profile_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_strengths`
--
ALTER TABLE `user_strengths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_strengths_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_verification`
--
ALTER TABLE `user_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_work_experience`
--
ALTER TABLE `user_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_work_experience_user_id_foreign` (`user_id`);

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
  MODIFY `banner_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `company_admins`
--
ALTER TABLE `company_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_personnel`
--
ALTER TABLE `contact_personnel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact_us_reply`
--
ALTER TABLE `contact_us_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `home_page_slider`
--
ALTER TABLE `home_page_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `individual_self_rating`
--
ALTER TABLE `individual_self_rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keyword_management`
--
ALTER TABLE `keyword_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_template`
--
ALTER TABLE `notification_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `operating_hours`
--
ALTER TABLE `operating_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `password_resets_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pending_same_company_notifications`
--
ALTER TABLE `pending_same_company_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating_questions`
--
ALTER TABLE `rating_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `rating_usertype`
--
ALTER TABLE `rating_usertype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews_on_hold`
--
ALTER TABLE `reviews_on_hold`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `services_offered`
--
ALTER TABLE `services_offered`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `static_contents`
--
ALTER TABLE `static_contents`
  MODIFY `static_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `user_account_types`
--
ALTER TABLE `user_account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_industries`
--
ALTER TABLE `user_industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_profile_logs`
--
ALTER TABLE `user_profile_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `user_strengths`
--
ALTER TABLE `user_strengths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_verification`
--
ALTER TABLE `user_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user_work_experience`
--
ALTER TABLE `user_work_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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
-- Constraints for table `individual_self_rating`
--
ALTER TABLE `individual_self_rating`
  ADD CONSTRAINT `individual_self_rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD CONSTRAINT `profile_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `rating_questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `ratings_and_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings_and_reviews`
--
ALTER TABLE `ratings_and_reviews`
  ADD CONSTRAINT `ratings_and_reviews_rated_to_foreign` FOREIGN KEY (`rated_to`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_and_reviews_rating_usertype_foreign` FOREIGN KEY (`rating_usertype`) REFERENCES `rating_usertype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_and_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `user_account_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
