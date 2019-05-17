-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 24, 2017 at 10:43 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cimap`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin`
--

CREATE TABLE IF NOT EXISTS `ci_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is required field used for admin login process',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is required field used for admin login process',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date & Time of user last login',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ci_admin`
--

INSERT INTO `ci_admin` (`id`, `user_name`, `email`, `password`, `code`, `last_login`) VALUES
(1, 'Admin', 'info@cimap.com', 'e10adc3949ba59abbe56e057f20f883e', '7S1hyXeUQ8', '2017-10-13 10:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `ci_config`
--

CREATE TABLE IF NOT EXISTS `ci_config` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_config`
--

INSERT INTO `ci_config` (`key`, `value`) VALUES
('admin_email', 'amityadav@singsys.com'),
('copy_right', '©Council Of Scientific & Industrial Research( CSIR ) 2017. All Rights Reserved.'),
('facebook_link', 'https://www.facebook.com/'),
('linkedin_link', 'https://www.linkedin.com/'),
('site_title', 'CIMAP'),
('smtp_port_number', '465'),
('smtp_server_host', 'ssl://smtp.googlemail.com'),
('smtp_uName', 'singsys17@gmail.com'),
('smtp_uPass', 'rituyadav'),
('twitter_link', 'https://twitter.com'),
('youtube_link', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `ci_contact`
--

CREATE TABLE IF NOT EXISTS `ci_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name',
  `subject` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Email',
  `message` text CHARACTER SET latin1 NOT NULL COMMENT 'Message ',
  `post_date` datetime NOT NULL COMMENT 'Added date',
  `reply_status` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ci_contact`
--

INSERT INTO `ci_contact` (`id`, `name`, `subject`, `email`, `message`, `post_date`, `reply_status`) VALUES
(1, 'test', '', 'tes@gmail.com', 'ds', '2013-11-22 12:49:16', ''),
(2, 'rachna singh', 'dad help disk', 'rachna@singsys.com', 'Message improper', '2014-12-06 07:07:55', 'no'),
(3, 'rachna singh', 'hello', 'rachna@singsys.com', 'There', '2015-02-05 07:43:04', 'no'),
(4, 'Rachna singh', 'hiii admin', 'rr@gmail.com', 'Message', '2015-03-20 01:06:15', 'no'),
(9, 'Mark henry', 'dad queries', 'henry@gmail.com', 'What is dad?', '2015-06-24 06:21:30', 'no'),
(10, 'Mark henry', 'dad query', 'henry@gmail.com', 'What is DAD?', '2015-06-24 06:41:22', 'no'),
(11, 'Mark henry', 'DD', 'henry@gmail.com', 'What is DAD?', '2015-06-24 06:49:21', 'no'),
(12, 'Mark henry', 'related to DAD', 'henry@gmail.com', 'What is DAD?', '2015-06-26 03:25:05', 'no'),
(13, 'Tom Browne', 'Playing with settings', 'dad.director@gmail.com', 'Hello', '2015-08-30 09:11:29', 'no'),
(15, 'Tom Browne', 'Devices not syncing up', 'dad.director@gmail.com', 'Panamax synching not happening', '2016-03-07 06:45:04', 'no'),
(16, 'Tom Browne', 'cant work', 'thomas.browne@nie.edu.sg', 'Non function', '2016-07-10 04:31:23', 'no'),
(17, 'Sally Pullin', 'contact us', 'sallypullin1953@gmail.com', 'There is no send button - just save It is not clear that when you tap save - it sends Need button to read save/send', '2016-07-10 04:33:35', 'no'),
(18, 'Rachna', 'dbjvbrfjvbdfjv', 'rachna@singsys.com', 'Fnvmdfnvjdbfvjrbng', '2016-07-11 10:09:52', 'no'),
(19, 'Techsavvy', 'dddd', 'techsavvy@gmail.com', 'Eeeeeeeee', '2017-03-03 04:38:55', 'no'),
(20, 'Techsavvy', 'dddd', 'techsavvy@gmail.com', 'Eeeeeeeee', '2017-03-03 04:40:03', 'no'),
(21, 'Techsavvy', 'ddddd', 'techsavvy@gmail.com', 'Dddd', '2017-03-03 04:41:07', 'no'),
(23, 'vinay pandey', 'Working', 'vinaypandey@singsys.com', 'This is message is wrong.', '2017-03-29 07:17:54', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ci_contacts_management`
--

CREATE TABLE IF NOT EXISTS `ci_contacts_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` int(100) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ci_contacts_management`
--

INSERT INTO `ci_contacts_management` (`id`, `name`, `image`, `address`, `mobile`, `email`) VALUES
(1, 'sdcedvcsd', 'video-gal1.png', 'vdfsvdsf', 0, 'vdsfvdsf@gmail.com'),
(2, '123', 'video-gal91.png', 'vdfsvdsf', 0, 'vdsfvdsf@gmail.com'),
(3, '123', 'video-gal41.png', 'vdfsvdsf', 0, 'vdsfvdsf@gmail.com'),
(4, 'qwdqwdqw', 'video-gal71.png', 'csdacsdcsa', 12345678, 'dwd@wqedwe.com'),
(5, 'sdcedvcsd', 'videos31.png', 'vdfsvdsf', 0, 'vdsfvdsf@gmail.com'),
(6, 'sdcedvcsd', 'videos14.png', 'vdfsvdsf', 0, 'vdsfvdsf@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ci_faq`
--

CREATE TABLE IF NOT EXISTS `ci_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `ci_faq`
--

INSERT INTO `ci_faq` (`id`, `question`, `answer`, `added_on`) VALUES
(1, 'Who can use Performance Analytics Program?', 'Anyone involved in the profiling assessment evaluation process.', '2017-09-19 12:05:55'),
(3, 'Why use Performance Analytics Program?', 'It is simple, powerful and can be used regardless of learning content. It can record performance. using visual wheels, video still camera and audio commentary.', '2017-09-19 12:06:16'),
(51, '', 'x', '2017-10-11 11:05:59'),
(52, 'q', 'q', '2017-10-11 05:31:29'),
(53, 'q', 'sadc', '2017-10-11 05:31:37'),
(54, 'scsadcsad', 'csdcsadcsadc', '2017-10-12 06:09:16'),
(55, '', 'asd', '2017-10-12 09:21:15'),
(56, '', 'asdf', '2017-10-12 09:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `ci_gallery`
--

CREATE TABLE IF NOT EXISTS `ci_gallery` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `ci_gallery`
--

INSERT INTO `ci_gallery` (`id`, `image`, `title`) VALUES
(19, 'videos1.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(20, 'video-1.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(21, 'video-4.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(22, 'video-5.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(23, 'video-6.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(24, 'video-7.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(25, 'video-8.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(26, 'video-9.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(27, 'video-11.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(28, 'video-117.png', 'qwertyuiop'),
(29, 'video-1161.png', 'sdfghj'),
(30, 'video-1162.png', 'asfdghjk'),
(31, 'logo_(3)3311.png', 'zdfgh'),
(34, 'video-1155.png', 'csdcsdcas');

-- --------------------------------------------------------

--
-- Table structure for table `ci_message_config`
--

CREATE TABLE IF NOT EXISTS `ci_message_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `variables` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ci_message_config`
--

INSERT INTO `ci_message_config` (`id`, `title`, `subject`, `content`, `variables`) VALUES
(3, 'admin_forgot_password', 'Reset your password admin', '<p>Hi {name},</p>\n<p>Please click on this link to reset your password: {link}</p>\n<p>&nbsp;</p>', '{name}\r\n{link}'),
(4, 'contact_us', 'Contact Us Email', '<p>Dear Admin, Contact person information mentioned below:</p>\r\n<p>Name: {name}</p>\r\n<p>Email: {email}</p>\r\n<p>Phone: {phone}</p>\r\n<p>Country: {country}</p>\r\n<p>Message: {message}</p>\r\n<p>&nbsp;</p>\r\n<p>Thanks CIMAP.</p>', '{name}\r\n{email}\r\n{phone}\r\n{country}\r\n{message}'),
(5, 'contact_us_reply', 'Contact Us Reply', '<table>\n<tbody>\n<tr>\n<td style="display: inline-block; margin-bottom: 5px;">Hello {name}!</td>\n</tr>\n\n<tr>\n<td style="display: inline-block;">{subject}!</td>\n</tr>\n<tr>\n<td style="display: inline-block;">{message}</td>\n</tr>\n<tr>\n<td style="display: inline-block; margin-bottom: 5px;">If you have any questions, please contact us at www.digitalassessmentdisk.com We are happy to help you!</td>\n</tr>\n<tr>\n</tr>\n</tbody>\n</table>', '{name}');

-- --------------------------------------------------------

--
-- Table structure for table `ci_mission`
--

CREATE TABLE IF NOT EXISTS `ci_mission` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `ci_mission`
--

INSERT INTO `ci_mission` (`id`, `title`, `date`, `image`, `content`) VALUES
(28, 'Development of superior varieties', '2017-10-18', 'video-gal36.png', '.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\r\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\r\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\r\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\r\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'),
(29, 'Plantations of aromatic crops at farmers field', '2017-10-18', 'videos1.png', 'The aromatic crops lemongrass, palmarosa and vetiver are being plated at Vidharbha'),
(30, 'Skill Development training''s', '2017-10-18', 'videos3.png', 'About 50 Farmers and entrepreneurs from 12 states were provided hands on training... on...'),
(31, 'Multilocational experiments in Vidharha and Rajasthan', '2017-10-18', 'videos22.png', 'Multilocational trials on Lemongrass and Palmarosa varieties to be released fro the...'),
(32, 'Plantations of aromatic crops at farmers field', '2017-10-18', 'video-gal6.png', 'The aromatic crops lemongrass, palmarosa and vetiver are being plated at Vidharbha');

-- --------------------------------------------------------

--
-- Table structure for table `ci_static_content`
--

CREATE TABLE IF NOT EXISTS `ci_static_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `variable_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ci_static_content`
--

INSERT INTO `ci_static_content` (`id`, `content_title`, `variable_name`, `content`, `image`, `created_date`) VALUES
(1, 'csdcsad', 'about-us', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '', '2017-04-21 07:02:17'),
(2, 'Terms And Conditions', 'terms-condition', '<p>CIMAP</p>', '', '2015-08-15 01:19:15'),
(3, 'Privacy Policies', 'privacy-policy', '<p>cimap</p>', '', '2017-08-14 07:35:22'),
(4, 'Vision', 'vision', '<p>Building on the synergies of our vast experience in distribution and retailing, proven track record, strategic network and partnership,&nbsp;CIMAP Group International aims to be a leading branded consumer lifestyle group in the region.</p>', '', '2017-08-22 06:56:53'),
(5, 'Mission', 'mission', '<p>cimap</p>', '', '2017-08-22 06:56:53'),
(6, 'Our Identity', 'identity', '<p>cimap</p>', '', '2017-08-22 07:24:10'),
(7, 'Logo’s Star Formation Rationale', 'logo', '<p>cimap</p>', '', '2017-08-22 07:31:46'),
(8, 'Social Responsibility', 'social-responsibility-1', 'Although CIMAP is constantly building and enhancing its business infrastructure, the company puts in just as much effort sharing with and contributing back to the community. Over the years, FNA has dedicated its resources to provide support for non-profit community initiatives targeted towards education, volunteerism, church works and fund-raising. At FNA, social and philanthropic issues will always be part of the business.', '', '2017-08-22 08:43:06'),
(9, 'Opening doors for student internships so as to share its know-how and values, and to help provide real life working experience.', 'social-responsibility-2', '<p>cimap</p>', 'download_(2).jpg', '2017-08-22 09:30:06'),
(10, 'Our Brands', 'brands', '<p>cimap</p>', '', '2017-09-01 05:23:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
