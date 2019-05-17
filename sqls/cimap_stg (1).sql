-- phpMyAdmin SQL Dump
-- version 4.0.10.17
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2017 at 04:48 PM
-- Server version: 5.1.73
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cimap_stg`
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
(1, 'Admin', 'info@cimap.com', 'c9046b627c37496e9de7f769671b127e', 'PFuNioMZjc', '2017-10-28 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `ci_banner_management`
--

CREATE TABLE IF NOT EXISTS `ci_banner_management` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ci_banner_management`
--

INSERT INTO `ci_banner_management` (`id`, `title`, `banner`) VALUES
(1, 'Client', 'videos2.png'),
(2, 'Company', 'video-gal2.png'),
(3, 'About Banner', 'video-gal4.png'),
(4, 'Test Banner 1234567890-', 'knife_project_project_02.jpg'),
(5, 'Test Slider', 'video-4.png'),
(6, 'Test Image', 'crop-covered6111.png'),
(7, 'qwertyui', 'vw3-minmalism-vs-inclusivness.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_chemistry_management`
--

CREATE TABLE IF NOT EXISTS `ci_chemistry_management` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
('admin_email', 'chetandeep@singsys.com'),
('copy_right', '©Council Of Scientific & Industrial Research( CSIR ) 2017. All Rights Reserved.'),
('facebook_link', 'https://www.facebook.com/'),
('linkedin_link', 'https://www.linkedin.com/'),
('site_title', 'CIMAP'),
('smtp_port_number', '465'),
('smtp_server_host', 'ssl://smtp.googlemail.com'),
('smtp_uName', 'singsys17@gmail.com'),
('smtp_uPass', 'rituyadav'),
('twitter_link', 'https://twitter.com/'),
('youtube_link', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `ci_contact`
--

CREATE TABLE IF NOT EXISTS `ci_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name',
  `lab` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Email',
  `message` text CHARACTER SET latin1 NOT NULL COMMENT 'Message ',
  `post_date` datetime NOT NULL COMMENT 'Added date',
  `reply_status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ci_contact`
--

INSERT INTO `ci_contact` (`id`, `name`, `lab`, `subject`, `email`, `message`, `post_date`, `reply_status`) VALUES
(15, 'Tom Browne', '0', 'Devices not syncing up', 'dad.director@gmail.com', 'Panamax synching not happening', '2016-03-07 06:45:04', 'no'),
(16, 'Tom Browne', '0', 'cant work', 'thomas.browne@nie.edu.sg', 'Non function', '2016-07-10 04:31:23', 'no'),
(17, 'Sally Pullin', '0', 'contact us', 'sallypullin1953@gmail.com', 'There is no send button - just save It is not clear that when you tap save - it sends Need button to read save/send', '2016-07-10 04:33:35', 'no'),
(18, 'Rachna', '0', 'dbjvbrfjvbdfjv', 'rachna@singsys.com', 'Fnvmdfnvjdbfvjrbng', '2016-07-11 10:09:52', 'no'),
(19, 'Techsavvy', '0', 'dddd', 'techsavvy@gmail.com', 'Eeeeeeeee', '2017-03-03 04:38:55', 'no'),
(20, 'Techsavvy', '0', 'dddd', 'techsavvy@gmail.com', 'Eeeeeeeee', '2017-03-03 04:40:03', 'no'),
(21, 'Techsavvy', '0', 'ddddd', 'techsavvy@gmail.com', 'Dddd', '2017-03-03 04:41:07', 'no'),
(23, 'vinay pandey', '0', 'Working', 'vinaypandey@singsys.com', 'This is message is wrong.', '2017-03-29 07:17:54', 'no'),
(24, 'CASCSAC', '2', '', 'sultan@singsys.com', 'SAxaS', '2017-10-27 10:10:55', ''),
(25, 'scZSDXVSDZV', '2', '', 'sultan@singsys.com', 'ascsdcasd', '2017-10-27 10:10:46', ''),
(26, 'Sultan', '4', '', 'vikrant@singsys.com', 'Test Message.', '2017-10-27 10:10:15', ''),
(27, 'asxasxaSX', '3', '', 'sultan@singsys.com', 'sdcsadcsdc', '2017-10-27 10:10:20', ''),
(28, 'svsdfvdsfvdf', '4', '', 'sultan@singsys.com', 'vdvdfvdfvsdfvsfvdsfvdfvdsfv', '2017-10-27 10:10:08', ''),
(29, 'freena', '2', '', 'reena@singsys.com', 'sdfghjk', '2017-10-27 12:10:16', 'yes'),
(30, 'sdfvf', '2', '', 'sultan@singsys.com', 'sacsdcs', '2017-10-27 12:10:36', ''),
(31, 'sdasadcds', '2', '', 'sultan@singsys.com', 'asdfghjkl', '2017-10-27 04:10:21', ''),
(32, 'acsdcsdcasc', '5', '', 'sultan@singsys.com', 'sxasxasxasxcs', '2017-10-27 05:10:50', 'yes'),
(33, 'reena', '4', '', 'reena@singsys.com', 'sxdfghjkl', '2017-10-27 05:10:48', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `ci_contacts_management`
--

CREATE TABLE IF NOT EXISTS `ci_contacts_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ci_contacts_management`
--

INSERT INTO `ci_contacts_management` (`id`, `pincode`, `address`, `mobile`, `email`, `image`, `state`, `city`, `description`, `name`) VALUES
(1, '12345', 'cimap', '9876543210', 'vdsfvdsf@gmail.com', '', 'Utter Pradesh', 'Lucknow', '', 'New'),
(3, '123', 'cimap', '1234567890', 'vdsfvdsf@gmail.com', '', 'Utter Pradesh', 'Lucknow', '', 'New addres'),
(4, '226002', 'Sikandarbag Hazaratganj', '12345678, 92345678, 2345676', 'dwd@wqedwe.com, dwd@wqedwe.com', '', 'Utter Pradesh', 'Lucknow', '', 'NBRI eee'),
(7, '852963', '65/5 Testing Address', '9876543210', 'name@test.com', 'banner-mission15.png', 'State', 'City', 'Description', 'Test Name'),
(8, '123456', 'omaxe', '1234567890', 'reena@singsys.com', 'ffftexttest.png', 'Singapore', 'Singapore', 'asdfvgbhk, sdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjklsdfghk, asdfghjkl', 'reena');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ci_faq`
--

INSERT INTO `ci_faq` (`id`, `question`, `answer`, `added_on`) VALUES
(1, 'Who can use Performance Analytics Program?', 'Anyone involved in the profiling assessment evaluation process.', '2017-09-19 04:05:55'),
(2, 'When can Performance Analytics Program be used?', 'Any and multiple times with all assessments retained within each profile.', '2017-09-19 04:06:04'),
(3, 'Why use Performance Analytics Program?', 'It is simple, powerful and can be used regardless of learning content. It can record performance. using visual wheels, video still camera and audio commentary.', '2017-09-19 04:06:16'),
(4, 'How much does Performance Analytics Program Cost?', 'Test Answer.', '2017-10-27 11:42:49'),
(11, 'asdfghjk', 'asdfghjkl', '2017-10-27 12:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `ci_gallery`
--

CREATE TABLE IF NOT EXISTS `ci_gallery` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `ci_gallery`
--

INSERT INTO `ci_gallery` (`id`, `image`, `title`) VALUES
(19, 'video-2.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(20, 'video-1.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(21, 'video-4.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(22, 'video-5.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(23, 'video-6.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(24, 'video-7.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(25, 'video-8.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(26, 'video-9.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.'),
(27, 'video-11.png', 'Aliquam sem ante, pellentesque ut aliquam ac, dignissim eget felis non fringilla justo.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ci_message_config`
--

INSERT INTO `ci_message_config` (`id`, `title`, `subject`, `content`, `variables`) VALUES
(3, 'admin_forgot_password', 'Reset your password admin11', '<p>Hi {name},</p>\r\n<p>Please click on this link to reset your password: {link}</p>\r\n<p>&nbsp;sssss</p>', '{name}\r\n{link}'),
(4, 'contact_us', 'Contact Us Email', '<p>Dear Admin, Contact person information mentioned below:</p>\r\n<p>Name: {name}</p>\r\n<p>Email: {email}</p>\r\n<p>Phone: {phone}</p>\r\n<p>Country: {country}</p>\r\n<p>Message: {message}</p>\r\n<p>&nbsp;</p>\r\n<p>Thanks CIMAP.</p>', '{name}\r\n{email}\r\n{phone}\r\n{country}\r\n{message}'),
(5, 'contact_us_reply', 'Contact Us Reply', '<table>\n<tbody>\n<tr>\n<td style="display: inline-block; margin-bottom: 5px;">Hello {name}!</td>\n</tr>\n\n<tr>\n<td style="display: inline-block;">{subject}!</td>\n</tr>\n<tr>\n<td style="display: inline-block;">{message}</td>\n</tr>\n<tr>\n<td style="display: inline-block; margin-bottom: 5px;">If you have any questions, please contact us at 03.15.232.35/singsys-stg3/cimap We are happy to help you!</td>\n</tr>\n<tr>\n</tr>\n</tbody>\n</table>', '{name}'),
(6, 'contact_us_reply_auto', 'Thank you for contacting CIMAP', '<p>Message: {message}</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style="display: inline-block; margin-bottom: 5px;">Hello {name}!</td>\r\n</tr>\r\n<tr>\r\n<td style="display: inline-block; margin-bottom: 25px;">Thanks for contacting us. We will be in touch with you soon regarding your query.</td>\r\n</tr>\r\n<tr>\r\n<td style="display: inline-block; margin-bottom: 5px;">If you have any questions, please contact us at 103.15.232.35/singsys-stg3/cimap. We are happy to help you!</td>\r\n</tr>\r\n<tr>\r\n<td style="display: inline-block; margin-bottom: 5px;">*This is an auto-generated email, please do not reply to this email address.*</td>\r\n</tr>\r\n</tbody>\r\n</table>', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `ci_mission`
--

INSERT INTO `ci_mission` (`id`, `title`, `date`, `image`, `content`) VALUES
(1, 'Development of superior varieties\r\n', '2017-10-12', 'activity-details1.png', 'Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'),
(4, 'wescsdcsdacsdac', '2017-10-26', '', 'csadcsadcsad'),
(5, '', '2017-10-13', '', ''),
(6, '', '2017-10-13', '', ''),
(7, '', '2017-10-13', '', ''),
(8, '', '2017-10-13', '', ''),
(9, '', '2017-10-13', '', ''),
(10, '', '2017-10-13', '', ''),
(11, '', '2017-10-13', '', ''),
(12, '', '2017-10-13', '', ''),
(13, 'q', '2017-10-13', '', 'q'),
(14, '', '2017-10-13', '', ''),
(15, '', '2017-10-13', '', ''),
(16, '', '2017-10-13', '', 'szdfg'),
(17, '', '2017-10-13', '', ''),
(18, '', '2017-10-13', '', ''),
(19, '', '2017-10-13', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ci_static_content`
--

INSERT INTO `ci_static_content` (`id`, `content_title`, `variable_name`, `content`, `image`, `created_date`) VALUES
(1, 'About Us', 'about-us', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="background-color: #008000;">Test</span></p>', '', '2017-04-20 23:02:17'),
(2, 'Terms And Conditions', 'terms-condition', '<p>Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n<p>ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n<p>&nbsp;</p>\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>', '', '2015-08-14 17:19:15'),
(3, 'Privacy Policies', 'privacy-policy', '<div class="content-paragraph-1" style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; margin-bottom: 32px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; line-height: 22px;">Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n</div>\r\n<div class="content-paragraph-1" style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; margin-bottom: 32px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; line-height: 22px;">Qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.nt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.</p>\r\n</div>\r\n<div class="content-paragraph-1" style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; margin-bottom: 32px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; line-height: 22px;">Integer viverra eros sed nibh dictum, ut lacinia neque pretium. Praesent non lectus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean aliquam lobortis nunc in pretium. Duis accumsan, purus sit amet tempus aliquet, tortor nibh egestas erat, a scelerisque erat metus et est. Aliquam metus mi, cursus non faucibus id, interdum sit amet justo. Phasellus non tellus fringilla eros pharetra maximus venenatis sed risus. Fusce finibus in mi vitae tincidunt.</p>\r\n</div>\r\n<div class="content-paragraph-1" style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; margin-bottom: 32px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; line-height: 22px;">Cras est massa, fermentum quis euismod quis, dictum at lorem. Etiam vel est pulvinar, hendrerit ante sed, sagittis nisi. Pellentesque faucibus lorem facilisis, porttitor nunc eget, tempus dolor. Nunc pulvinar ultrices accumsan. Aenean congue congue erat eu ornare. Vivamus posuere pretium nulla, sed sagittis tellus interdum a. Vivamus rutrum turpis eget dolor tempor, non pretium neque finibus. Mauris facilisis pulvinar diam, ac vehicula mi suscipit ac.</p>\r\n</div>\r\n<div class="content-paragraph-2" style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 14px;">Mauris sit amet dapibus turpis, vitae eleifend dui. Sed in nulla ac sapien egestas pulvinar ac sit amet lorem. Sed bibendum in arcu sit amet vestibulum. Cras et convallis sapien. In ultricies lectus sed velit tincidunt, a efficitur sapien laoreet. Vivamus pulvinar sed lacus non facilisis. Maecenas hendrerit facilisis suscipit. Curabitur magna nisl, dignissim eu nibh id, semper venenatis neque. Integer viverra eros sed nibh dictum, ut lacinia neque pretium. Praesent non lectus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean aliquam lobortis nunc in pretium. Duis accumsan, purus sit amet tempus aliquet, tortor nibh egestas erat, a scelerisque erat metus et est. Aliquam metus mi, cursus non faucibus id, interdum sit amet justo. Phasellus non tellus fringilla eros pharetra maximus venenatis sed risus. Fusce finibus in mi vitae tincidunt.</div>', '', '2017-08-13 23:35:22'),
(4, 'Vision', 'vision', '\r\nSunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\n\r\nQui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.nt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.\r\n\r\n\r\nInteger viverra eros sed nibh dictum, ut lacinia neque pretium. Praesent non lectus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean aliquam lobortis nunc in pretium. Duis accumsan, purus sit amet tempus aliquet, tortor nibh egestas erat, a scelerisque erat metus et est. Aliquam metus mi, cursus non faucibus id, interdum sit amet justo. Phasellus non tellus fringilla eros pharetra maximus venenatis sed risus. Fusce finibus in mi vitae tincidunt.\r\n\r\n\r\nCras est massa, fermentum quis euismod quis, dictum at lorem. Etiam vel est pulvinar, hendrerit ante sed, sagittis nisi. Pellentesque faucibus lorem facilisis, porttitor nunc eget, tempus dolor. Nunc pulvinar ultrices accumsan. Aenean congue congue erat eu ornare. Vivamus posuere pretium nulla, sed sagittis tellus interdum a. Vivamus rutrum turpis eget dolor tempor, non pretium neque finibus. Mauris facilisis pulvinar diam, ac vehicula mi suscipit ac.\r\n\r\nMauris sit amet dapibus turpis, vitae eleifend dui. Sed in nulla ac sapien egestas pulvinar ac sit amet lorem. Sed bibendum in arcu sit amet vestibulum. Cras et convallis sapien. In ultricies lectus sed velit tincidunt, a efficitur sapien laoreet. Vivamus pulvinar sed lacus non facilisis. Maecenas hendrerit facilisis suscipit. Curabitur magna nisl, dignissim eu nibh id, semper venenatis neque. Integer viverra eros sed nibh dictum, ut lacinia neque pretium. Praesent non lectus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean aliquam lobortis nunc in pretium. Duis accumsan, purus sit amet tempus aliquet, tortor nibh egestas erat, a scelerisque erat metus et est. Aliquam metus mi, cursus non faucibus id, interdum sit amet justo. Phasellus non tellus fringilla eros pharetra maximus venenatis sed risus. Fusce finibus in mi vitae tincidunt.', 'grapes.jpg', '2017-08-21 22:56:53'),
(5, 'Mission', 'mission', '<p>cimap</p>', '', '2017-08-21 22:56:53'),
(6, 'Do''s', 'do', '<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n</ul>', '', '2017-08-21 23:24:10'),
(7, 'Dont''s', 'dont', 'Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '', '2017-08-21 23:31:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
