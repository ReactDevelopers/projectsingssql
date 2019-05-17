-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2017 at 02:48 PM
-- Server version: 5.5.54
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aipro_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE IF NOT EXISTS `company_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `value` text COLLATE utf8_unicode_ci NOT NULL,
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
(3, 'twitter_url', 'https://www.twitter.com', NULL, NULL),
(4, 'linkedin_url', 'https://www.linkedin.com', NULL, NULL),
(5, 'google_url', 'https://plus.google.com', NULL, NULL),
(6, 'smtp_server_host', 'smtp.gmail.com', NULL, NULL),
(7, 'smtp_port_number', '465', NULL, NULL),
(8, 'smtp_uName', 'developer.singsys@gmail.com', NULL, NULL),
(9, 'smtp_uPass', 'Lucknow@123', NULL, NULL),
(10, 'copyright', '© AIPRO 2017. All rights reserved.', NULL, NULL),
(11, 'site_title', 'AIPRO Web Portal', NULL, NULL),
(12, 'facebook_url', '', NULL, NULL),
(13, 'project_desc1', 'The cute little girl with big ideas; the loud and insane King of the Jungle and his crazy band of jungle kooks are just some of the entertaining characters in the August Media family.\r\n\r\nFrom the US and Canada to Scandinavia and Australia, August Media has been developing, funding and executive producing several animated titles every year with partnerships across the world. August Rights, our rights management arm has accumulated an envia', NULL, NULL),
(14, 'project_desc2', '', NULL, NULL),
(15, 'news_desc', 'We’re used to making headlines. Catch up on all our latest developments and be up to speed on our previous news and achievements.', NULL, NULL),
(16, 'our_team_desc', 'Meet the team that works hard and parties hard.', NULL, NULL),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `static_content`
--

INSERT INTO `static_content` (`static_content_id`, `title`, `sub_title_1`, `sub_title_2`, `description`, `page_image`, `sub_title_3`, `description_2`, `add_more_points`, `description_3`, `sub_title_4`, `sub_title_5`, `sub_title_6`, `sub_title_7`, `sub_title_8`, `sub_title_9`, `description_1`, `description_4`, `description_5`, `description_6`, `description_7`, `description_8`, `description_9`, `document_1`, `document_2`, `alias`, `added_date`) VALUES
(1, 'Who We Are', 'Working Progress', 'Benefit Independence', '<p>Beef ribs brisket cow ground round frankfurter spare ribs ham. Turkey hambur tongue, short loin spare ribs pancetta picanha pork belly brisket andouille sausa drumstick. Ribeye shankle filet mignon porchetta chuck. Tri-tip shank flank fat. Ribeye alcatra pork belly brisket rump chicken meatball jowl. Pancetta chicken bacon ribeye..</p>\r\n\r\n<p>Pork loin flank swine venison chuck, jerky turkey meatloaf alcatra cupim hambu. Kevin cupim bacon turkey fatback pancetta picanha tongue, frankfu pig. Biltong corned beef boudin cow pork belly sirloin capicola pig short ribs tail ham cupim ground round. Sausage salami venison, picanha rump pork belly doner pork tri-ti strip steak kevin pork chop. Pork loin prosciutto tongue filet mignon pancetta meatloaf tri-tip jowl fatback. Ham hock swine frankfurter venison corned beef pancetta. Tri-tip leberkas ham sirloin picanha cupim. Frankfurter boudin drumst filet mignon cow cupim hamburger tail prosciutto. Short loin turducken sirloin sausage. Turducken prosciutto pork chop leberkas ham hock, doner ham. Venison jerky picanha spare ribs boudin.</p>\r\n\r\n<p>Corned beef frankfurter bacon pork belly beef andouille, prosciutto doner chuck shankle pork pancetta tri-tip salami. Capicola biltong chuck leberkas shoulder filet mignon beef pork loin tri-tip tail doner turducken hamburger ham jerky. Kielbasa shank tail filet mignon, tongue jerky pork chop ball tip ground round beef ribs cupim brisket. Jerky salami ball tip strip steak, ham hock frankfurter bresaola kielbasa pork chop chicken shankle.</p>', NULL, 'Excepteur biltong turducken', '<p>Rump capicola boudin shank jerky alcatra pastrami beef corned beef. Leberkas venison filet mignon short ribs tri-tip. Tri-tip capicola salami ground round chicken. Spare ribs burgdoggen chuck andouille ham hock boudin. Bresaola capicola drumstick ground round t-bone sirloin. Turkey picanha chicken turducken landjaeger flank t-bone kevin. Pastrami pig leberkas rump landjaeger.</p>', 'Pancetta corned beef chicken picanha\r\nTurducken salami frankfurter burgdo\r\nTurkey shank ribeye meatloaf fatback', '<p>Venison alcatra rump flank ham hock landjaeger tri-tip. Pork loin corned beef tri-tip porchetta cupim. Pork pancetta tail pork chop, spare ribs chicken chuck kielbasa strip steak. Shoulder jowl venison, t-bone pork belly pork chop sausage corned beef burgdoggen bacon. Bacon chuck tenderloin andouille pancetta bresaola. Venison meatball tri-tip shankle swine. Cupim bacon sausage beef corned beef doner strip steak boudin salami pork fatback meatloaf ground round pastrami andouille. Sirloin filet mignon meatball shankle. Sirloin doner pork loin boudin filet mignon. Tongue jerky pig kevin.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'whoweare', '2017-10-27 07:31:12'),
(2, 'What We Do', 'Working Progress', 'Benefit Independence', '<p>Beef ribs brisket cow ground round frankfurter spare ribs ham. Turkey hambur tongue, short loin spare ribs pancetta picanha pork belly brisket andouille sausa drumstick. Ribeye shankle filet mignon porchetta chuck. Tri-tip shank flank fat. Ribeye alcatra pork belly brisket rump chicken meatball jowl. Pancetta chicken bacon ribeye..</p>\r\n\r\n<p>Pork loin flank swine venison chuck, jerky turkey meatloaf alcatra cupim hambu. Kevin cupim bacon turkey fatback pancetta picanha tongue, frankfu pig. Biltong corned beef boudin cow pork belly sirloin capicola pig short ribs tail ham cupim ground round. Sausage salami venison, picanha rump pork belly doner pork tri-ti strip steak kevin pork chop. Pork loin prosciutto tongue filet mignon pancetta meatloaf tri-tip jowl fatback. Ham hock swine frankfurter venison corned beef pancetta. Tri-tip leberkas ham sirloin picanha cupim. Frankfurter boudin drumst filet mignon cow cupim hamburger tail prosciutto. Short loin turducken sirloin sausage. Turducken prosciutto pork chop leberkas ham hock, doner ham. Venison jerky picanha spare ribs boudin.</p>\r\n\r\n<p>Corned beef frankfurter bacon pork belly beef andouille, prosciutto doner chuck shankle pork pancetta tri-tip salami. Capicola biltong chuck leberkas shoulder filet mignon beef pork loin tri-tip tail doner turducken hamburger ham jerky. Kielbasa shank tail filet mignon, tongue jerky pork chop ball tip ground round beef ribs cupim brisket. Jerky salami ball tip strip steak, ham hock frankfurter bresaola kielbasa pork chop chicken shankle.</p>', '1508926023.jpg', 'Excepteur biltong turducken', '<p>Rump capicola boudin shank jerky alcatra pastrami beef corned beef. Leberkas venison filet mignon short ribs tri-tip. Tri-tip capicola salami ground round chicken. Spare ribs burgdoggen chuck andouille ham hock boudin. Bresaola capicola drumstick ground round t-bone sirloin. Turkey picanha chicken turducken landjaeger flank t-bone kevin. Pastrami pig leberkas rump landjaeger.</p>', 'Pancetta corned beef chicken picanha\r\nTurducken salami frankfurter burgdo\r\nTurkey shank ribeye meatloaf fatback', '<p>Venison alcatra rump flank ham hock landjaeger tri-tip. Pork loin corned beef tri-tip porchetta cupim. Pork pancetta tail pork chop, spare ribs chicken chuck kielbasa strip steak. Shoulder jowl venison, t-bone pork belly pork chop sausage corned beef burgdoggen bacon. Bacon chuck tenderloin andouille pancetta bresaola. Venison meatball tri-tip shankle swine. Cupim bacon sausage beef corned beef doner strip steak boudin salami pork fatback meatloaf ground round pastrami andouille. Sirloin filet mignon meatball shankle. Sirloin doner pork loin boudin filet mignon. Tongue jerky pig kevin.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'whatwedo', '2017-10-24 23:12:40'),
(8, 'Industry Reports', 'At vero eos et accusam?', 'Justo duo dolores et ea rebum?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore in blanditiis tempora aliquam omnis recusandae maxime fugiat error dolores vel reiciendis quia, laboriosam dolorum, ipsa corrupti. Laboriosam odio ducimus harum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio assumenda vitae iure, totam laboriosam voluptatibus delectus autem pariatur excepturi eligendi natus unde. Numquam vel quia dolore tempore consequuntur nobis architecto.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>', '', 'Stet clita kasd gubergren?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit voluptate, quas fugit facere possimus facilis odio delectus laborum id nobis expedita vitae molestiae a. Magnam aliquid architecto magni, quos omnis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, enim saepe libero iure tenetur optio nisi aliquam molestias ratione magnam ab ut quod possimus hic suscipit doloremque, deleniti ipsa quia!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque repellat, reiciendis sint officia quia iure nam! Dicta omnis ex ipsa fugiat maiores, vero expedita facilis, suscipit quam obcaecati veniam voluptate.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis est, dolores, ex ducimus cumque iusto ipsam odit voluptatum autem error impedit obcaecati quisquam molestiae, optio porro inventore nostrum deleniti cupiditate.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', 'No sea takimata sanctus est?', 'At vero eos et accusam?', NULL, NULL, NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium impedit asperiores illum nulla sint itaque laborum perferendis deleniti quo cumque, quisquam repudiandae molestias sunt ea delectus porro odio recusandae!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus omnis quod eligendi mollitia vel optio neque id, assumenda! Quae at quisquam eum, dolorum ullam, maxime nesciunt ex modi minus illum!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'reports', '2017-10-27 08:32:41'),
(9, 'Personnel Agreements', 'Freelancer Agreement (Local)', 'Freelancer Agreement (International)', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore in blanditiis tempora aliquam omnis recusandae maxime fugiat error dolores vel reiciendis quia, laboriosam dolorum, ipsa corrupti. Laboriosam odio ducimus harum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio assumenda vitae iure, totam laboriosam voluptatibus delectus autem pariatur excepturi eligendi natus unde. Numquam vel quia dolore tempore consequuntur nobis architecto.</p>', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Version: 11/08/2017</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'Personnel_Agreements_1509358437.pdf', NULL, 'legalpersonnel', '2017-10-30 04:43:57'),
(10, 'Commercial Agreements', 'Co-Production Agreement (Animation)', 'Co-Production Agreement (Live Action)', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore in blanditiis tempora aliquam omnis recusandae maxime fugiat error dolores vel reiciendis quia, laboriosam dolorum, ipsa corrupti. Laboriosam odio ducimus harum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio assumenda vitae iure, totam laboriosam voluptatibus delectus autem pariatur excepturi eligendi natus unde. Numquam vel quia dolore tempore consequuntur nobis architecto.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>', '', 'No sea takimata sanctus est?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium impedit asperiores illum nulla sint itaque laborum perferendis deleniti quo cumque, quisquam repudiandae molestias sunt ea delectus porro odio recusandae!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus omnis quod eligendi mollitia vel optio neque id, assumenda! Quae at quisquam eum, dolorum ullam, maxime nesciunt ex modi minus illum!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Version: 11/08/2017</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Commercial_Agreements_2_1509358458.pdf', 'legalcommercial', '2017-10-30 04:44:18'),
(11, 'Co-Production Treaties', 'Singapore - Canada AV Co-Production Treaty', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore in blanditiis tempora aliquam omnis recusandae maxime fugiat error dolores vel reiciendis quia, laboriosam dolorum, ipsa corrupti. Laboriosam odio ducimus harum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio assumenda vitae iure, totam laboriosam voluptatibus delectus autem pariatur excepturi eligendi natus unde. Numquam vel quia dolore tempore consequuntur nobis architecto.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo repellendus, repellat rem debitis id, harum ipsa nostrum, aut eius atque repudiandae officia nemo. Laborum fugit maiores aut non sit alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos voluptas nihil tenetur quibusdam, laborum sed id laboriosam obcaecati corporis necessitatibus saepe voluptatem incidunt, cumque aperiam, quam nisi? Numquam, ullam, alias.</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Version: 11/08/2017</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi minus tenetur sunt aspernatur vitae, corporis nostrum quibusdam molestias, laudantium quia in a natus facilis beatae culpa inventore quidem illo atque.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quia, ad natus corrupti inventore mollitia, dolor omnis nesciunt, molestias officiis eum debitis dolore. Minima magnam odit cupiditate labore accusantium eaque!</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'Co-Production_Treaties_1509358511.pdf', NULL, 'treaties', '2017-10-30 04:45:11');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `surname`, `email`, `designation`, ` phone_number`, `profile_picture`, `bios`, `facebook_url`, `linkedIn_url`, `twitter_url`, `membership_start`, `membership_end`, `payment_status`, `password`, `created_at`, `updated_at`, `last_login`, `status`, `remember_token`) VALUES
(1, 'admin', 'pushpendra', NULL, 'pushpendra@singsys.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 18:30:00', '2017-10-13 03:15:35', NULL, 'Active', 'gLemBxKb41jSFJwpqomnQqXGALOF84zK17wT4s6jcZYyE0uL7JYbFDY1bFKS'),
(2, 'company', 'pushpendra', NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H2uX5t9nmZUsZw4XjWWUSOaD1F88wXZ4YikaS/4YLzCiFFAhXxo1q', '2017-10-08 18:30:00', '2017-10-13 03:15:35', NULL, 'Active', 's5rbMr45VtMwddEZchdWS5BaeNv5fz7QVvkmYzrbtQAOinnWmdbE4iMxqmkv');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
