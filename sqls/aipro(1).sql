-- phpMyAdmin SQL Dump
-- version 4.0.10.19
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 10, 2017 at 09:48 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.6.30-7+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aipro`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_features`
--

CREATE TABLE IF NOT EXISTS `company_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `feature_program_name` varchar(200) NOT NULL,
  `feature_tag_line` varchar(150) NOT NULL,
  `feature_bios` text NOT NULL,
  `feature_testimony` varchar(150) DEFAULT NULL,
  `feature_testimony_name` varchar(200) DEFAULT NULL,
  `feature_testimony_designation` varchar(200) DEFAULT NULL,
  `feature_highlight1` varchar(200) DEFAULT NULL,
  `feature_highlight2` varchar(200) DEFAULT NULL,
  `feature_highlight3` varchar(200) DEFAULT NULL,
  `page_main_picture` varchar(100) DEFAULT NULL COMMENT '1170 (w) x 780 (h) 200 kb',
  `page_side_picture` varchar(100) DEFAULT NULL COMMENT '270 (w) x 386 (h) 80 kb',
  `home_page_main_picture` varchar(100) DEFAULT NULL COMMENT '1920 (w) x 1000 (h) 340 kb',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `company_features`
--

INSERT INTO `company_features` (`id`, `user_id`, `feature_program_name`, `feature_tag_line`, `feature_bios`, `feature_testimony`, `feature_testimony_name`, `feature_testimony_designation`, `feature_highlight1`, `feature_highlight2`, `feature_highlight3`, `page_main_picture`, `page_side_picture`, `home_page_main_picture`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 13:00:00', NULL, 'Inactive'),
(2, 2, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 13:00:00', NULL, 'Inactive'),
(3, 2, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 13:00:00', NULL, 'Inactive'),
(4, 3, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(5, 3, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(6, 3, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(7, 4, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(8, 4, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(9, 4, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(10, 5, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(11, 5, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(12, 5, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(13, 6, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(14, 6, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(15, 6, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(16, 7, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(17, 7, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive'),
(18, 7, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31 07:30:00', NULL, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE IF NOT EXISTS `company_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `com_name` varchar(250) DEFAULT NULL,
  `com_url` varchar(250) DEFAULT NULL,
  `road_address` varchar(250) DEFAULT NULL,
  `unit_address` varchar(250) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `general_email` varchar(200) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `fax_number` varchar(15) DEFAULT NULL,
  `com_facebook_url` varchar(100) DEFAULT NULL,
  `com_twitter_url` varchar(100) DEFAULT NULL,
  `com_linkedIn_url` varchar(100) DEFAULT NULL,
  `com_headline` varchar(150) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `services` varchar(200) DEFAULT NULL,
  `com_testimony` varchar(150) DEFAULT NULL,
  `com_write_up` text,
  `testimonial_name` varchar(100) NOT NULL,
  `testimonial_designation` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `user_id`, `com_name`, `com_url`, `road_address`, `unit_address`, `postal_code`, `general_email`, `phone_number`, `fax_number`, `com_facebook_url`, `com_twitter_url`, `com_linkedIn_url`, `com_headline`, `categories`, `services`, `com_testimony`, `com_write_up`, `testimonial_name`, `testimonial_designation`) VALUES
(1, 2, 'singsys', 'https://laravel.com/docs/5.5/validation#rule-size', 'secttor-2323', 'tedhipulia', '22222', 'singsys@vf.com', '12345678911', '2222', 'https://www.facebook.com/', 'https://in.linkedin.com/', 'https://twitter.com/login', 'NOSTRESSoo', 'Digital,Documentary,Kids,VR/AR Video,Films', 'Executive Production,Producer,Post Production,Location Shoot,Indoor Shoot', 'Add a testimonial from one of your clients or partners. Ask them to limit it to 140 characters just like on Twitter.', 'Add a write-up about your company here. Put your best words forward for your company in not more than 1500 characters.', 'Rohan', 'TLsenior'),
(2, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `user_name`, `user_email`, `subject`, `message`, `updated_at`, `created_at`) VALUES
(3, '1kjjk Pushpendra Singh', 'pushpendra@singsys.com', 'Test', 'I thought that changing the header data between adding pages might do the trick, but in my tests it seems that setting the header after adding the first page has no effect:', NULL, NULL),
(4, ' 544554 Pushpendra Singh', 'pushpendra@singsys.com', 'Test', 'I thought that changing the header data between adding pages might do the trick, but in my tests it seems that setting the header after adding the first page has no effect:', NULL, NULL),
(5, 'dsdsds', 'sddsdshdhsjhsd', 'Hi', 'dsdsdsds', '2017-10-11 04:34:52', '2017-10-11 04:34:52'),
(7, 'Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:25:18', '2017-10-11 05:25:18'),
(8, '89956m  Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:27:09', '2017-10-11 05:27:09'),
(9, 'dfdif lSanto', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:27:55', '2017-10-11 05:27:55'),
(10, 'Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:27:55', '2017-10-11 05:27:55'),
(11, 'dffddf Santo', 'saurabh@gamil.com', 'dsdssd', 'dsIf you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.\n\n', '2017-10-11 05:30:47', '2017-10-11 05:30:47'),
(12, 'dsdsds', 'sddsdsds@gmail.com', 'dsdsds', 'dsdsds', '2017-10-11 06:50:41', '2017-10-11 06:50:41'),
(13, 'dsdsds', 'sddsdsds@gmail.com', 'dsdsds', 'dsdsds', '2017-10-11 06:50:53', '2017-10-11 06:50:53'),
(14, 'dsdsds', 'sddsdsds@gmail.com', 'dsdsds', 'dsdsds', '2017-10-11 06:51:17', '2017-10-11 06:51:17'),
(15, 'dsdsds', 'dsdsdsdsds@dsddsds.dsdsds', 'dsdsdsds', 'dsdsds', '2017-10-11 06:52:25', '2017-10-11 06:52:25'),
(16, 'dsdsds', 'dsdsdsdsds@dsddsds.dsdsds', 'dsdsdsds', 'dsdsds', '2017-10-11 06:53:36', '2017-10-11 06:53:36'),
(17, 'ddffdfd', 'fdfdfdfd@dsdsds.com', 'fdfdfd', 'fdfdfdfdfd', '2017-10-11 06:55:47', '2017-10-11 06:55:47'),
(33, 'Santosh Kumar Singh', 'santosh@singsys.com', 'Testing', 'If you have a question for us, would like to pitch a show idea to us or even would like to work with us, please do drop us a line. We will get back to you soon.', '2017-10-11 08:11:28', '2017-10-11 08:11:28'),
(52, 'reddewew', 'pushpendra+1@singsys.com', 'fdff', 'hhghgghdffdfdfd', '2017-10-11 08:53:34', '2017-10-11 08:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `description`, `added_date`) VALUES
(1, 'contact_us', 'Aipro Web Portal - Contact Us', '<p>Dear {NAME},</p>\n\n<p>Thanks for your response.</p>\n\n<p>Thanks {SITENAME} Team</p>', '2017-10-24 04:21:27'),
(2, 'contact_us_admin', 'Aipro Web Portal - Contact Us', 'Dear Admin,\r\n\r\nNew contact information found.\r\n\r\nName: {NAME}\r\nEmail: {FROM_EMAIL}\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2017-07-24 10:56:16'),
(3, 'contact_us_reply', 'Aipro Web Portal - Contact Reply', 'Dear {NAME},\r\n\r\nContact Us email reply.\r\nMessage: {MESSAGE}\r\n\r\nThanks {SITENAME} Team', '2017-07-24 10:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'admin_email', 'pushpendra@singsys.com', NULL, NULL),
(2, 'banner_image', '1507699031.jpg', NULL, NULL),
(3, 'twitter_url', NULL, NULL, NULL),
(4, 'pinterest_url', NULL, NULL, NULL),
(5, 'google_url', NULL, NULL, NULL),
(6, 'smtp_server_host', 'smtp.gmail.com', NULL, NULL),
(7, 'smtp_port_number', '465', NULL, NULL),
(8, 'smtp_uName', 'developer.singsys@gmail.com', NULL, NULL),
(9, 'smtp_uPass', 'Lucknow@123', NULL, NULL),
(10, 'copyright', '© Internship 2017. All rights reserved.', NULL, NULL),
(11, 'site_title', 'AIPRO Web Portal', NULL, NULL),
(12, 'facebook_url', NULL, NULL, NULL),
(13, 'project_desc1', 'The cute little girl with big ideas; the loud and insane King of the Jungle and his crazy band of jungle kooks are just some of the entertaining characters in the August Media family.\r\n\r\nFrom the US and Canada to Scandinavia and Australia, August Media has been developing, funding and executive producing several animated titles every year with partnerships across the world. August Rights, our rights management arm has accumulated an envia', NULL, NULL),
(14, 'project_desc2', '', NULL, NULL),
(15, 'phone_no', NULL, NULL, NULL),
(16, 'fax_no', NULL, NULL, NULL),
(17, 'what_do_we_do', 'August Media are a one stop shop for the development, finacing, production and exploitation of the intellectual properties for kids. In this effort the company invests in a variety of businesses, properties and partnerships that bring synergies that help ', NULL, NULL),
(18, 'who_are_we', 'August Media Holdings creates and manages high quality intellectual properties for Kid and Youth audiences. Together with its rights management arm – August Rights, the company has built itself a library of some global iconic brands. Some of the brands in the August Media kitty include George of the Jungle, Ella Bella Bingo, Underdog and the Jake Series.\r\n\r\n Every year the company welcomes pitches for new developments from writers, designers and producers worldwide. Many of these are then take to production along with multiple production and financing partnerships from across the globe. Earlier this year, August Media along with Philippines based Synergy88 media group a private equity fund designed specifically to invest in children’s IP and businesses. The fund has already invested in 2 TV shows for kids is on the lookout for more. \r\n\r\n With the recently opened ASI Studios in Manila for animation and games production, the company is poised to grow into an integrated media house that takes its properties across platforms including Television, Publishing, Mobile and Interactive for a complete 360° leverage. ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_content`
--

CREATE TABLE IF NOT EXISTS `static_content` (
  `static_content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title_1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_2` text COLLATE utf8_unicode_ci,
  `add_more_points` text COLLATE utf8_unicode_ci,
  `description_3` text COLLATE utf8_unicode_ci,
  `sub_title_4` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_5` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_6` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_7` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_8` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title_9` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_1` text COLLATE utf8_unicode_ci,
  `description_4` text COLLATE utf8_unicode_ci,
  `description_5` text COLLATE utf8_unicode_ci,
  `description_6` text COLLATE utf8_unicode_ci,
  `description_7` text COLLATE utf8_unicode_ci,
  `description_8` text COLLATE utf8_unicode_ci,
  `description_9` text COLLATE utf8_unicode_ci,
  `document_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`static_content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `static_content`
--

INSERT INTO `static_content` (`static_content_id`, `title`, `sub_title_1`, `sub_title_2`, `description`, `page_image`, `sub_title_3`, `description_2`, `add_more_points`, `description_3`, `sub_title_4`, `sub_title_5`, `sub_title_6`, `sub_title_7`, `sub_title_8`, `sub_title_9`, `description_1`, `description_4`, `description_5`, `description_6`, `description_7`, `description_8`, `description_9`, `document_1`, `document_2`, `alias`, `added_date`) VALUES
(1, 'Who We Are', 'Working Progress', 'Benefit Independence', '<p>Beef ribs brisket cow ground round frankfurter spare ribs ham. Turkey hambur tongue, short loin spare ribs pancetta picanha pork belly brisket andouille sausa drumstick. Ribeye shankle filet mignon porchetta chuck. Tri-tip shank flank fat. Ribeye alcatra pork belly brisket rump chicken meatball jowl. Pancetta chicken bacon ribeye..</p>\r\n\r\n<p>Pork loin flank swine venison chuck, jerky turkey meatloaf alcatra cupim hambu. Kevin cupim bacon turkey fatback pancetta picanha tongue, frankfu pig. Biltong corned beef boudin cow pork belly sirloin capicola pig short ribs tail ham cupim ground round. Sausage salami venison, picanha rump pork belly doner pork tri-ti strip steak kevin pork chop. Pork loin prosciutto tongue filet mignon pancetta meatloaf tri-tip jowl fatback. Ham hock swine frankfurter venison corned beef pancetta. Tri-tip leberkas ham sirloin picanha cupim. Frankfurter boudin drumst filet mignon cow cupim hamburger tail prosciutto. Short loin turducken sirloin sausage. Turducken prosciutto pork chop leberkas ham hock, doner ham. Venison jerky picanha spare ribs boudin.</p>\r\n\r\n<p>Corned beef frankfurter bacon pork belly beef andouille, prosciutto doner chuck shankle pork pancetta tri-tip salami. Capicola biltong chuck leberkas shoulder filet mignon beef pork loin tri-tip tail doner turducken hamburger ham jerky. Kielbasa shank tail filet mignon, tongue jerky pork chop ball tip ground round beef ribs cupim brisket. Jerky salami ball tip strip steak, ham hock frankfurter bresaola kielbasa pork chop chicken shankle.</p>', '1508924522.jpg', 'Excepteur biltong turducken', '<p>Rump capicola boudin shank jerky alcatra pastrami beef corned beef. Leberkas venison filet mignon short ribs tri-tip. Tri-tip capicola salami ground round chicken. Spare ribs burgdoggen chuck andouille ham hock boudin. Bresaola capicola drumstick ground round t-bone sirloin. Turkey picanha chicken turducken landjaeger flank t-bone kevin. Pastrami pig leberkas rump landjaeger.</p>', 'Pancetta corned beef chicken picanha\r\nTurducken salami frankfurter burgdo\r\nTurkey shank ribeye meatloaf fatback', '<p>Venison alcatra rump flank ham hock landjaeger tri-tip. Pork loin corned beef tri-tip porchetta cupim. Pork pancetta tail pork chop, spare ribs chicken chuck kielbasa strip steak. Shoulder jowl venison, t-bone pork belly pork chop sausage corned beef burgdoggen bacon. Bacon chuck tenderloin andouille pancetta bresaola. Venison meatball tri-tip shankle swine. Cupim bacon sausage beef corned beef doner strip steak boudin salami pork fatback meatloaf ground round pastrami andouille. Sirloin filet mignon meatball shankle. Sirloin doner pork loin boudin filet mignon. Tongue jerky pig kevin.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'whoweare', '2017-10-25 04:12:02'),
(2, 'What We Do', '', '', '<p>The standard Lorem Ipsum passage, used since the 1500s "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><strong>Excepteur sint occaecat cupidatat non proiden</strong></p>\r\n\r\n<p> sunt in culpa qui officia deserunt mollit anim id est laborum." Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</p>\r\n\r\n<p><strong>1914 translation by H. Rackham</strong></p>\r\n\r\n<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'whatwedo', '2017-10-24 04:37:22'),
(3, 'Industry Reports', 'At vero eos et accusam?', 'Justo duo dolores et ea rebum?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore in blanditiis tempora aliquam omnis recusandae maxime fugiat error dolores vel reiciendis quia, laboriosam dolorum, ipsa corrupti. Laboriosam odio ducimus harum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio assumenda vitae iure, totam laboriosam voluptatibus delectus autem pariatur excepturi eligendi natus unde. Numquam vel quia dolore tempore consequuntur nobis architecto.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>', NULL, 'Stet clita kasd gubergren?', '<p>2222</p>', NULL, '<p>33333</p>', 'No sea takimata sanctus est?', 'At vero eos et accusam?', 'Justo duo dolores et ea rebum?', 'Stet clita kasd gubergren?', 'No sea takimata sanctus est?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', '<p>44444</p>', '<p>5555</p>', '<p>6666</p>', '<p>777</p>', '<p>9888</p>', NULL, NULL, NULL, 'reports', '2017-10-27 05:30:40'),
(4, 'Personnel Agreements', 'Freelancer Agreement (Local) 111', 'Freelancer Agreement (Local) 222', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', NULL, 'Heading 3', '<p>Description 2222</p>', '', '<p>Description 3333</p>', 'Heading 444', 'Heading 5555', 'Heading 66666', 'Heading 7777', 'Heading 888', 'Heading 999', '<p>Version: 11/08/2017</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>', '<p>Description 444</p>', '<p>Description 5555</p>', '<p>Description 6666</p>', '<p>Description 7777</p>', '<p>Description8888</p>', '<p>Description 9999</p>', 'Olympus-SEA-Feedback-Report-09March2017_1509357425.pdf', 'Test_File_Name_for_Upload_1509357425.pdf', 'legalpersonnel', '2017-10-30 04:27:05'),
(6, 'Commercial Agreements', NULL, 'Heading 2', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proiden</p>\r\n\r\n<p>&nbsp;sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p>1914 translation by H. Rackham</p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>', NULL, NULL, '<p>Description 2:</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Olympus_SEA_Feedback_Report_19Apr2017_1509357550.pdf', 'legalcommercial', '2017-10-30 04:29:10'),
(7, 'Co-Production Treaties', 'Heading 1Heading 1Heading 1', 'Heading 2 Heading 2', '<p>The standard Lorem Ipsum passage, used since the 1500s &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proiden</p>\r\n\r\n<p>&nbsp;sunt in culpa qui officia deserunt mollit anim id est laborum.&quot; Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<p>1914 translation by H. Rackham</p>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>', NULL, NULL, '<p>Description 2: Heading 2</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Olympus-SEA-Feedback-Report-09March2017_1509357754.pdf', 'treaties', '2017-10-30 04:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` enum('admin','company') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'company',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  ` phone_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bios` text COLLATE utf8_unicode_ci,
  `facebook_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `membership_start` date DEFAULT NULL,
  `membership_end` date DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci DEFAULT 'Inactive',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `surname`, `email`, `designation`, ` phone_number`, `profile_picture`, `bios`, `facebook_url`, `linkedIn_url`, `twitter_url`, `membership_start`, `membership_end`, `payment_status`, `password`, `created_at`, `updated_at`, `last_login`, `status`, `remember_token`) VALUES
(1, 'admin', 'pushpendra', NULL, 'pushpendra@singsys.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 18:30:00', '2017-10-13 03:15:35', NULL, 'Active', 'JZpYbQISVsRZ77Y4cH0zfDKGrAHdZJEnKioBz3K40pXp6xM7loElcrs8coaT'),
(2, 'company', 'Pushpendra Singh', NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 18:30:00', '2017-10-13 03:15:35', NULL, 'Active', 'EGmCVSQk7u6dJ9CWkaq7OtYACC9d3HKICC71gpWCl2tnvIbF49m7YLTbRKqc'),
(3, 'company', '', NULL, 'user1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 18:30:00', '2017-10-13 03:15:35', NULL, 'Active', 'EGmCVSQk7u6dJ9CWkaq7OtYACC9d3HKICC71gpWCl2tnvIbF49m7YLTbRKqc'),
(4, 'company', 'Pushpendra Singh', NULL, 'user2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 13:00:00', '2017-10-12 21:45:35', NULL, 'Active', 'EGmCVSQk7u6dJ9CWkaq7OtYACC9d3HKICC71gpWCl2tnvIbF49m7YLTbRKqc'),
(5, 'company', '', NULL, 'user3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 13:00:00', '2017-10-12 21:45:35', NULL, 'Active', 'EGmCVSQk7u6dJ9CWkaq7OtYACC9d3HKICC71gpWCl2tnvIbF49m7YLTbRKqc'),
(6, 'company', 'Pushpendra Singh', NULL, 'user4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 13:00:00', '2017-10-12 21:45:35', NULL, 'Active', 'EGmCVSQk7u6dJ9CWkaq7OtYACC9d3HKICC71gpWCl2tnvIbF49m7YLTbRKqc'),
(7, 'company', '', NULL, 'user5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 13:00:00', '2017-10-12 21:45:35', NULL, 'Active', 'EGmCVSQk7u6dJ9CWkaq7OtYACC9d3HKICC71gpWCl2tnvIbF49m7YLTbRKqc');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_features`
--
ALTER TABLE `company_features`
  ADD CONSTRAINT `company_features` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD CONSTRAINT `company_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
