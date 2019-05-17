-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 04, 2018 at 09:20 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 7.0.27-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acord`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `STRIP_TAGS`(`Dirty` TEXT) RETURNS text CHARSET latin1
    NO SQL
BEGIN
 DECLARE iStart, iEnd, iLength int;
   WHILE Locate( '<', Dirty ) > 0 And Locate( '>', Dirty, Locate( '<', Dirty )) > 0 DO
     BEGIN
       SET iStart = Locate( '<', Dirty ), iEnd = Locate( '>', Dirty, Locate('<', Dirty ));
       SET iLength = ( iEnd - iStart) + 1;
       IF iLength > 0 THEN
         BEGIN
           SET Dirty = Insert( Dirty, iStart, iLength, '');
         END;
       END IF;
     END;
   END WHILE;
   RETURN Dirty;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ac_config`
--

CREATE TABLE IF NOT EXISTS `ac_config` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ac_config`
--

INSERT INTO `ac_config` (`key`, `value`) VALUES
('contact_no', '987654323'),
('copyright_text', '&copy; 2017 Inside Acord. All Rights Reserved.'),
('date_format', '%d-%M-%Y'),
('def_date_format', 'd-M-Y'),
('help_email', 'help@acord.com'),
('info_email', 'azeem@singsys.com'),
('office_address', 'Singapore 329516'),
('site_description', 'You can be assured of the promise in obtaining the greatest value at reasonable prices, regardless of the varying complexities each of your individual product renders.'),
('site_slogan', 'INSIDE ACORD'),
('site_title', 'INSIDE ACORD'),
('smtp_port_number', '465'),
('smtp_server_host', 'ssl://smtp.googlemail.com'),
('smtp_uName', 'acord@gmail.com'),
('smtp_uPass', 'Lucknow1'),
('social_facebook_url', 'https://facebook.com'),
('social_linkedin_url', 'https://linkedin.com'),
('social_twitter_url', 'https://twitter.com'),
('time_format', '%h:%i %p');

-- --------------------------------------------------------

--
-- Table structure for table `ac_contactadmin`
--

CREATE TABLE IF NOT EXISTS `ac_contactadmin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `startdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_contactadmin`
--

INSERT INTO `ac_contactadmin` (`id`, `name`, `email`, `subject`, `phonenumber`, `message`, `startdate`, `enddate`) VALUES
(1, 'Azeem Shah', 'azeem+11@singsys.com', 'Contact to admin', '9876543210', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '0000-00-00 00:00:00', '2017-05-02 15:02:22'),
(5, 'AZM', 'azeem+11@singsys.com', 'Contact to admin', '1234567890', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Azeem shah', 'azeem+12@singsys.com', 'Contact to admin', '1234567890', 'this is a message from vendor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Azeem Shah', 'azeem+11@singsys.com', 'Contact to admin', '0987654321', 'this is messge from vendors to admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Kapil', 'azeem+16@singsys.com', 'Contact to admin', '9988776655', 'This is a message from kapil.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Azeem Shah', 'azeem@singsys.com', '', '809042109', 'THis is messagefrom front end to admin.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Azeem', 'azeem+11@singsys.com', 'user_registration', '9988776655', 'message from admin about time', '2017-05-15 08:56:29', '0000-00-00 00:00:00'),
(11, 'Azeem', 'azeem+11@singsys.com', 'user_registration', '1234567890', 'this is time test', '2017-05-15 09:04:46', '0000-00-00 00:00:00'),
(12, 'Azeem', 'azeem+11@singsys.com', 'vendor_registration', '1234567890', 'this is now()', '2017-05-15 09:29:44', '0000-00-00 00:00:00'),
(13, 'Azeem', 'azeem+11@singsys.com', 'user_registration', '1234567', 'this is utc+5.3', '2017-05-15 15:03:50', '0000-00-00 00:00:00'),
(14, 'Azeem', 'azeem+11@singsys.com', 'user_registration', '1234567890', 'this is a message from staging', '2017-05-15 15:21:27', '0000-00-00 00:00:00'),
(15, 'Azeem Shah', 'azeem@singsys.com', '', '1234567890', 'THis is a message from user.', '2017-05-17 08:31:02', '0000-00-00 00:00:00'),
(16, 'Azeem Shah', 'azeem@singsys.com', '', '9988776655', 'THis is 2nd message from user.', '2017-05-17 08:31:55', '0000-00-00 00:00:00'),
(18, 'Azeem', 'azeem+11@singsys.com', '', '1234567890', 'this is a message without subject', '2017-05-19 10:24:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ac_deals`
--

CREATE TABLE IF NOT EXISTS `ac_deals` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `clubname` varchar(255) NOT NULL,
  `dealdescription` text NOT NULL,
  `validitystartdate` varchar(255) NOT NULL,
  `validitystarttime` varchar(255) NOT NULL,
  `validityenddate` varchar(255) NOT NULL,
  `validityendtime` varchar(255) NOT NULL,
  `redemptionstartdate` varchar(255) NOT NULL,
  `redemptionenddate` varchar(255) NOT NULL,
  `cutofftime` varchar(255) NOT NULL,
  `termsandcondition` text NOT NULL,
  `termsandconditionbyvendor` text NOT NULL,
  `numberofquantity` int(11) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `purchasedquantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_deals`
--

INSERT INTO `ac_deals` (`id`, `image`, `clubname`, `dealdescription`, `validitystartdate`, `validitystarttime`, `validityenddate`, `validityendtime`, `redemptionstartdate`, `redemptionenddate`, `cutofftime`, `termsandcondition`, `termsandconditionbyvendor`, `numberofquantity`, `price`, `purchasedquantity`, `created_at`, `updated_at`) VALUES
(3, 'download.jpg', 'Club P34new', 'Party at Club p34.', '27/04/2017', '15:00', '27/04/2017', '15:00', '27/04/2017', '29/04/2017', '14:00', 'Late comers will not be entertained.', 'Late comers will not be entertained.', 65, '200', 65, '2017-05-22 11:16:05', '0000-00-00 00:00:00'),
(4, 'download (1).jpg', 'P56 Club', 'Deal on burger.', '27/04/2017', '18:00', '30/04/2017', '23:00', '27/04/2017', '29/04/2017', '00:00', 'Terms & Condition of burger.', 'Terms & Condition of burger from vendor.', 0, '50', 0, '2017-05-22 11:12:37', '2017-04-27 05:36:03'),
(6, 'download (1).jpg', 'Club Evening', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '27/04/2017', '12:00', '30/04/2017', '18:00', '27/04/2017', '29/04/2017', '00:00', 'Terms & Condition', 'Terms & Condition by vendor', 0, '100', 0, '2017-05-22 11:13:06', '2017-04-27 06:52:05'),
(7, 'download (2).jpg', 'Hide Out', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '27/04/2017', '18:00', '30/04/2017', '18:00', '28/04/2017', '29/04/2017', '23:00', 'Terms & Condition updated', 'Terms & Conditionby vendor. updated', 45, '200', 45, '2017-05-22 11:16:34', '2017-04-28 00:45:17'),
(9, 'download (3).jpg', 'Club Ramala new', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '29/04/2017', '18:00', '30/04/2017', '17:00', '28/04/2017', '29/04/2017', '00:00', 'Terms & Condition', 'Terms & Condition by vendor.', 35, '200', 0, '2017-04-28 03:58:15', '2017-04-27 22:27:36'),
(10, 'download (2).jpg', 'Club Evening', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '28/04/2017', '18:00', '30/04/2017', '18:00', '28/04/2017', '29/05/2017', '00:00', 'Terms & Condition', 'Terms & Condition from Vendor', 55, '100', 0, '2017-04-28 03:30:38', '2017-04-28 03:30:38'),
(11, 'download.jpg', 'Club Evening', 'Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '30/04/2017', '18:00', '06/05/2017', '23:00', '30/04/2017', '05/05/2017', '23:00', 'Terms & Condition', 'Terms & Condition from Vendor', 70, '250', 70, '2017-05-22 11:16:27', '2017-04-28 03:32:06'),
(13, 'images (6).jpg', 'Club Evening', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '28/04/2017', '18:00', '30/04/2017', '18:00', '28/04/2017', '29/04/2017', '00:00', 'Terms & Condition', 'Terms & Condition from Vendor', 10, '75', 0, '2017-04-28 04:31:11', '2017-04-28 04:31:11'),
(17, 'Harveys-Hot-Dog-Meal-3.99-Coupon-Mar-2015.jpg', 'P56 Club', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '05/05/2017', '00:00', '08/05/2017', '23:00', '05/05/2017', '07/05/2017', '00:00', 'Terms & Conditions', 'Terms & Conditions from Vendor', 0, '75', 0, '2017-05-22 11:13:25', '2017-05-04 23:53:07'),
(18, 'gallery_001.png', 'Club Evening', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '10/05/2017', '18:00', '13/05/2017', '23:00', '10/05/2017', '12/05/2017', '00:00', 'Terms & Conditions', 'Terms & Conditions from Vendor', 0, '100', 0, '2017-05-22 11:13:25', '2017-05-10 03:25:21'),
(19, 'gallery_002.png', 'Club Ramala new', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '10/05/2017', '18:00', '12/05/2017', '23:00', '10/05/2017', '11/05/2017', '23:00', 'Terms & Conditions', 'Terms & Conditions from Vendor', 0, '100', 0, '2017-05-22 11:13:25', '2017-05-10 03:38:18'),
(20, 'gallery_002.png', 'Privi Night Club', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '10/05/2017', '18:00', '13/05/2017', '23:00', '10/05/2017', '12/05/2017', '00:00', 'Terms & Conditions', 'Terms & Conditions from Vendor', 0, '75', 0, '2017-05-22 11:13:25', '2017-05-10 04:29:41'),
(21, 'download (1).jpg', 'Hide Out', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '18/05/2017', '18:00', '19/05/2017', '23:00', '18/05/2017', '18/05/2017', '00:00', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 0, '165', 0, '2017-05-22 11:13:25', '2017-05-18 00:04:06'),
(22, 'download (3).jpg', 'Spring Club', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', '18/05/2017', '18:00', '20/05/2017', '23:00', '18/05/2017', '19/05/2017', '00:00', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 45, '80', 0, '2017-05-18 00:06:16', '2017-05-18 00:06:16'),
(24, 'download(8).jpg', 'Spring Club', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '22/05/2017', '23:00', '22/05/2017', '23:00', '22/05/2017', '22/05/2017', '00:00', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', 75, '25', 1, '2017-05-22 12:32:13', '2017-05-22 05:27:02'),
(25, 'download(5).jpg', 'Spring Club', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '00:00', '25/05/2017', '23:00', '22/05/2017', '24/05/2017', '00:00', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 0, '75', 0, '2017-05-22 11:13:25', '2017-05-22 00:18:51'),
(26, 'images (10).jpg', 'Spring Club1', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '00:00', '28/05/2017', '23:00', '22/05/2017', '27/05/2017', '23:00', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 15, '25', 15, '2017-05-22 09:41:29', '2017-05-22 00:19:47'),
(27, 'images (9).jpg', 'Spring Club', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '00:00', '22/05/2017', '14:00', '22/05/2017', '22/05/2017', '23:00', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 0, '89', 0, '2017-05-22 11:13:25', '2017-05-22 00:20:37'),
(28, 'images(11).jpg', 'Spring Club', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '22/05/2017', '18:00', '22/05/2017', '23:00', '22/05/2017', '22/05/2017', '00:00', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', 0, '1000', 15, '2017-05-22 12:28:21', '2017-05-22 04:22:45'),
(29, 'download(99).jpg', 'Spring Club', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '02/06/2017', '00:00', '03/06/2017', '23:00', '02/06/2017', '02/06/2017', '00:00', 'Terms & Conditions', 'Terms & Conditions from Vendor', 0, '79', 3, '2017-06-02 10:45:28', '2017-06-02 06:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `ac_dealsbought`
--

CREATE TABLE IF NOT EXISTS `ac_dealsbought` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_number` varchar(255) NOT NULL,
  `deal_id` varchar(255) NOT NULL,
  `deal_image` varchar(255) NOT NULL,
  `deal_description` text NOT NULL,
  `deal_validitystartdate` varchar(255) NOT NULL,
  `deal_validityenddate` varchar(255) NOT NULL,
  `deal_termsandcondition` text NOT NULL,
  `deal_termsandconditionbyvendor` text NOT NULL,
  `clubname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `numberoftables` int(11) NOT NULL,
  `status` enum('redeem','redeemed') NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_dealsbought`
--

INSERT INTO `ac_dealsbought` (`id`, `user_id`, `user_email`, `user_number`, `deal_id`, `deal_image`, `deal_description`, `deal_validitystartdate`, `deal_validityenddate`, `deal_termsandcondition`, `deal_termsandconditionbyvendor`, `clubname`, `price`, `numberoftables`, `status`, `created_at`) VALUES
(7, 113, 'azeem@singsys.com', '8090482109', '21', 'download (1).jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '18/05/2017', '19/05/2017', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Hide Out', '165', 25, 'redeemed', '2017-05-19 05:14:59'),
(8, 113, 'azeem@singsys.com', '8090482109', '22', 'download (3).jpg', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', '18/05/2017', '20/05/2017', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Spring Club', '80', 23, 'redeem', '2017-05-19 05:25:06'),
(10, 113, 'azeem@singsys.com', '8090482109', '22', 'download (3).jpg', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', '18/05/2017', '20/05/2017', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet, vel scelerisque libero sodales. Pellentesque consequat augue eget purus vulputate, vitae gravida tellus consequat. Aenean eget justo pharetra, faucibus nulla sed, pretium diam. Donec sagittis, odio vel pharetra finibus, diam ipsum tincidunt metus, ut luctus eros ex sed felis.', 'Spring Club', '80', 26, 'redeemed', '2017-05-19 05:44:29'),
(11, 113, 'azeem@singsys.com', '8090482109', '25', 'download(5).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '25/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club', '75', 45, 'redeemed', '2017-05-22 06:20:02'),
(12, 113, 'azeem@singsys.com', '8090482109', '24', 'download(8).jpg', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '22/05/2017', '22/05/2017', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', 'Spring Club', '25', 0, 'redeem', '2017-05-22 06:20:12'),
(13, 113, 'azeem@singsys.com', '8090482109', '26', 'images (10).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '28/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club', '25', 32, 'redeemed', '2017-05-22 07:12:43'),
(14, 113, 'azeem@singsys.com', '8090482109', '26', 'images (10).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '28/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club', '25', 0, 'redeem', '2017-05-22 07:14:32'),
(15, 113, 'azeem@singsys.com', '8090482109', '24', 'download(8).jpg', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', '22/05/2017', '22/05/2017', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', 'a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through.', 'Spring Club', '25', 987, 'redeemed', '2017-05-22 09:39:09'),
(16, 113, 'azeem@singsys.com', '8090482109', '26', 'images (10).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '28/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club1', '25', 0, 'redeem', '2017-05-22 09:40:33'),
(17, 113, 'azeem@singsys.com', '8090482109', '26', 'images (10).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '28/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club1', '25', 0, 'redeem', '2017-05-22 09:40:55'),
(18, 113, 'azeem@singsys.com', '8090482109', '26', 'images (10).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '28/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club1', '25', 0, 'redeem', '2017-05-22 09:41:08'),
(19, 113, 'azeem@singsys.com', '8090482109', '26', 'images (10).jpg', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', '22/05/2017', '28/05/2017', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur', 'Spring Club1', '25', 0, 'redeem', '2017-05-22 09:41:29'),
(20, 120, 'amit@singsys.com', '8090482109', '29', 'download(99).jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '02/06/2017', '03/06/2017', 'Terms & Conditions', 'Terms & Conditions from Vendor', 'Spring Club', '79', 12, 'redeemed', '2017-06-02 12:38:56'),
(21, 121, 'himanshuchaurasia@singsys.com', '8874937171', '29', 'download(99).jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '02/06/2017', '03/06/2017', 'Terms & Conditions', 'Terms & Conditions from Vendor', 'Spring Club', '79', 0, 'redeem', '2017-06-02 14:33:35'),
(22, 122, 'sunil@singsys.com', '8081433959', '29', 'download(99).jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through', '02/06/2017', '03/06/2017', 'Terms & Conditions', 'Terms & Conditions from Vendor', 'Spring Club', '79', 2346, 'redeemed', '2017-06-02 16:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `ac_events`
--

CREATE TABLE IF NOT EXISTS `ac_events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashtags` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_events`
--

INSERT INTO `ac_events` (`id`, `name`, `email`, `hashtags`, `date`, `created_at`) VALUES
(11, 'Fun Weekend Party', 'azeem+11@singsys.com', '#weekend', '08/05/2017', '2017-05-09 03:58:25'),
(12, 'Saturday fun', 'azeem+11@singsys.com', '#saturday #fun', '08/05/2017', '2017-05-09 00:44:35'),
(13, 'Sunday Funday FunParty', 'azeem+11@singsys.com', '#dbdb #dfdbdb', '09/05/2017', '2017-05-09 03:15:54'),
(14, 'Sunday party', 'azeem+11@singsys.com', '#sdvdv #dfdfbdb #party', '10/05/2017', '2017-05-10 01:00:05'),
(15, 'Club Ramala party', 'azeem+8@singsys.com', '#party #ramala', '10/05/2017', '2017-05-10 03:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `ac_faq`
--

CREATE TABLE IF NOT EXISTS `ac_faq` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_faq`
--

INSERT INTO `ac_faq` (`id`, `question`, `answer`) VALUES
(24, 'Curabitur rhoncus diam vellacus elendictum?', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapienDonec ornare diam nulla, ut rhoncus sapien faucibus vel. Sed leo sapien, mollis at mauris eu, venenatis scelerisque arcu utrum arcu dui, vitae ultrices urna laoreet acern.Morbi nec convallis massa, at ultricies risus. Nulla sed libero imperdiet, consequat est vitae, maximus libero.'),
(25, 'Traset ligula ultricies sodales eros sedeleifend antenteger non antec lectus? updated1', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapienDonec ornare diam nulla, ut rhoncus sapien faucibus vel. Sed leo sapien, mollis at mauris eu, venenatis scelerisque arcu utrum arcu dui, vitae ultrices urna laoreet acern.Morbi nec convallis massa, at ultricies risus. Nulla sed libero imperdiet, consequat est vitae, maximus libero.');

-- --------------------------------------------------------

--
-- Table structure for table `ac_message_config`
--

CREATE TABLE IF NOT EXISTS `ac_message_config` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `variables` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ac_message_config`
--

INSERT INTO `ac_message_config` (`id`, `title`, `subject`, `content`, `variables`, `created_at`, `updated_at`) VALUES
(2, 'user_registration', 'Congratulations! Your account has been created successfully - {site}.', '              <div style="margin:0;padding:0;width:100%;font-weight:500;font-size:16px;line-height:26px;background:none #fafafa;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n<table align="center" border="0" cellpadding="20" cellspacing="0" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;margin:0;padding:0;line-height:100%;background:none #fafafa">\n  <tbody>\n    <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n      <td style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:650px">\n        <tbody>\n          <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n            <td style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n            <table style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%">\n              <tbody>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td align="left" height="45" style="width:50%;color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;padding:0 0 15px"><a style="color:#C32F56;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none" target="_blank"> <img alt="{site}" src="{site_link}/images/admin-headerLogo.png" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;outline:none;text-decoration:none;max-width:100%;border:none" width="100" /> </a></td>\n                  <td align="right" style="width:50%;color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;padding:0 0 15px">{slogan}</td>\n                </tr>\n              </tbody>\n            </table>\n            <table align="left" cellpadding="25" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;background:none #fff;border-radius:2px;border:solid 1px #eee">\n              <tbody>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%;vertical-align:top">\n                  <h1 style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-weight:300;line-height:1.1;margin:0 0 20px">Hi {name},</h1>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">Congratulations! Your account has been successfully created.</p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><strong>To login into your account, please use the following credentials: </strong></p>\n                  </td>\n                </tr>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td>\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><strong>Number:</strong> {number}</p>\n                    &nbsp;&nbsp;\n				\n				 <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n                    &nbsp;\n\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:20px"><br />\n                    <br />\n                    Cheers,<br />\n                    Team {site}</p>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n            <table style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;padding:24px 0">\n              <tbody>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td align="center" height="150" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n                  <p style="color:#bcb6aa;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:12px">{slogan}</p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px"><a style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank"> <img alt="{site}" src="{site_link}/images/admin-headerLogo.png" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;outline:none;text-decoration:none;max-width:100%;border:none" width="32" /> </a></p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px">This email was sent to <a href="mailto:{email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{email}</a>.<br />\n                  If you want to unsubscribe the emails from {site}, please drop an email at <a href="mailto:{help_email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{help_email}</a>.<br />\n                  If you have any questions or concerns, please email us at <a href="mailto:{info_email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{info_email}</a>.</p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px"><span style="color:#b1aca0;text-decoration:none;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:13px;line-height:18px">{office_address}</span></p>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n      </td>\n    </tr>\n  </tbody>\n</table>\n</div>', '{email},{name},{number},{site},{slogan},{site_link},{office_address},{help_email},{info_email}', '2017-03-16 00:00:00', '2017-05-03 08:26:06'),
(3, 'vendor_registration', 'Congratulations! Your account has been created successfully - {site}.', '                            <div style="margin:0;padding:0;width:100%;font-weight:500;font-size:16px;line-height:26px;background:none #fafafa;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n<table align="center" border="0" cellpadding="20" cellspacing="0" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;margin:0;padding:0;line-height:100%;background:none #fafafa">\n  <tbody>\n    <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n      <td style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:650px">\n        <tbody>\n          <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n            <td style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n            <table style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%">\n              <tbody>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td align="left" height="45" style="width:50%;color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;padding:0 0 15px"><a style="color:#C32F56;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none" target="_blank"> <img alt="{site}" src="{site_link}/images/admin-headerLogo.png" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;outline:none;text-decoration:none;max-width:100%;border:none" width="100" /> </a></td>\n                  <td align="right" style="width:50%;color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;padding:0 0 15px">{slogan}</td>\n                </tr>\n              </tbody>\n            </table>\n            <table align="left" cellpadding="25" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;background:none #fff;border-radius:2px;border:solid 1px #eee">\n              <tbody>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%;vertical-align:top">\n                  <h1 style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-weight:300;line-height:1.1;margin:0 0 20px">Hi {name},</h1>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">Congratulations! Your account has been successfully created.</p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><strong>To login into your account, please use the following credentials: </strong></p>\n                  </td>\n                </tr>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td>\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><strong>Email:</strong> {email}</p>\n                    &nbsp;&nbsp;\n\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><strong>Password:</strong> {password}</p>\n                    &nbsp;&nbsp;\n\n                    <p style="text-align:center;color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><a href="{link}" style="background:rgb(211, 150, 22);padding:10px;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;border-radius:5px;font-size: 22px;color: #ffffff;" target="_blank">Login</a></p>\n                    &nbsp;\n\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n                    &nbsp;\n\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:20px"><br />\n                    <br />\n                    Cheers,<br />\n                    Team {site}</p>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n            <table style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;padding:24px 0">\n              <tbody>\n                <tr style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td align="center" height="150" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n                  <p style="color:#bcb6aa;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:12px">{slogan}</p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px"><a style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank"> <img alt="{site}" src="{site_link}/images/admin-headerLogo.png" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;outline:none;text-decoration:none;max-width:100%;border:none" width="32" /> </a></p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px">This email was sent to <a href="mailto:{email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{email}</a>.<br />\n                  If you want to unsubscribe the emails from {site}, please drop an email at <a href="mailto:{help_email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{help_email}</a>.<br />\n                  If you have any questions or concerns, please email us at <a href="mailto:{info_email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{info_email}</a>.</p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px"><span style="color:#b1aca0;text-decoration:none;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:13px;line-height:18px">{office_address}</span></p>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n      </td>\n    </tr>\n  </tbody>\n</table>\n</div>', '{email},{name},{password},{link},{site},{slogan},{site_link},{office_address},{help_email},{info_email}', '2017-03-16 00:00:00', '2017-05-02 09:18:08'),
(5, 'admin_contactus_reply', 'You have received an email from Acord Inside Admin', '<div style="margin:0;padding:0;width:100%;font-weight:500;font-size:16px;line-height:26px;background:none #fafafa;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n<table align="center" border="0" cellpadding="20" cellspacing="0" style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;margin:0;padding:0;line-height:100%;background:none #fafafa">\n  <tbody>\n    <tr style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n      <td style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:650px">\n        <tbody>\n          <tr style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n            <td style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n            <table style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%">\n              <tbody>\n                <tr style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td align="left" height="45" style="width:50%;color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;padding:0 0 15px"><a style="color:#C32F56;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none" target="_blank"> <img alt="{site}" src="{site_link}/bower_components/AdminLTE/dist/images/logo01.png" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;outline:none;text-decoration:none;max-width:100%;border:none" width="100" /> </a></td>\n                  <td align="right" style="width:50%;color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;padding:0 0 15px">{slogan}</td>\n                </tr>\n              </tbody>\n            </table>\n            <table align="left" cellpadding="25" style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;background:none #fff;border-radius:2px;border:solid 1px #eee">\n              <tbody>\n                <tr style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%;vertical-align:top">\n                  <h1 style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-weight:300;line-height:1.1;margin:0 0 20px">Hi {name},</h1>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"></p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px"><strong> </strong>{message}</p>\n\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n                  <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n                  </td>\n                </tr>\n                <tr style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td>\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:0px">&nbsp;</p>\n                    &nbsp;\n\n                    <p style="color:#464643;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:16px;line-height:160%;font-weight:400;padding:0 0 32px;padding-bottom:20px">{slogan}.<br />\n                    <br />\n                    Cheers,<br />\n                    Team {site}</p>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n            <table style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;width:100%;padding:24px 0">\n              <tbody>\n                <tr style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif">\n                  <td align="center" height="150" style="color:#D74269;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;border-collapse:collapse;width:100%">\n                  <p style="color:#bcb6aa;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:12px">{slogan}</p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px"><a style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank"> <img alt="{site}" src="{site_link}/bower_components/AdminLTE/dist/images/logo01.png" style="color:rgb(211, 150, 22);font-family:Helvetica Neue,Helvetica,Arial,sans-serif;outline:none;text-decoration:none;max-width:100%;border:none" width="32" /> </a></p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px">This email was sent to <a href="mailto:{email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{email}</a>.<br />\n                  If you want to unsubscribe the emails from {site}, please drop an email at <a href="mailto:{help_email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{help_email}</a>.<br />\n                  If you have any questions or concerns, please email us at <a href="mailto:{info_email}" style="color:#8f8776;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;text-decoration:none;font-size:13px;line-height:18px" target="_blank">{info_email}</a>.</p>\n\n                  <p style="color:#b1aca0;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;margin:0;font-size:13px;line-height:18px;text-decoration:none;padding-bottom:24px"><span style="color:#b1aca0;text-decoration:none;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:13px;line-height:18px">{office_address}</span></p>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n      </td>\n    </tr>\n  </tbody>\n</table>\n</div>', '{email},{name},{site},{slogan},{site_link},{office_address},{help_email},{info_email},{message}', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ac_migrations`
--

CREATE TABLE IF NOT EXISTS `ac_migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ac_migrations`
--

INSERT INTO `ac_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_095413_create_vendors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ac_password_resets`
--

CREATE TABLE IF NOT EXISTS `ac_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_password_resets`
--

INSERT INTO `ac_password_resets` (`email`, `token`, `created_at`) VALUES
('info@alcare.com', '$2y$10$0skPNC/RG2xCxfRsgOIN6ezh0fJ7g3IltMBw3Qo/sms7/iKrGQzBm', '2017-04-05 06:50:32'),
('himanshuchaurasia@singsys.com', '$2y$10$xqUsYy.NRPbByZt/a9gL7OL3oFKHRpdG1uoSl3DCl5Jf1gK2U0t/a', '2017-04-11 12:42:34'),
('shivam@singsys.com', '$2y$10$jO3oJFvHQRzgYM7lNkYGO.u6cQ7UwfTt5gFpSRvyrMfcITAk.OPn.', '2017-04-12 07:25:42'),
('azeem@singsys.com', '$2y$10$F2iJR6fv3vFB9rgGeAB/8eBMfT9wE/S2BUqzB3w8LSG8nYwjWsAcS', '2017-04-17 09:38:30'),
('azeem+11@singsys.com', '$2y$10$Z/wdC/WFFOJ4h1VBb82gMeaqJRpoM3TpkqoLkXm3CCT.a5WMr9LQK', '2017-05-11 06:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `ac_photos`
--

CREATE TABLE IF NOT EXISTS `ac_photos` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photoname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_photos`
--

INSERT INTO `ac_photos` (`id`, `event_id`, `email`, `photoname`, `created_at`) VALUES
(1, 0, '', '', '2017-05-09 02:05:03'),
(2, 0, '', '', '2017-05-09 02:05:03'),
(5, 11, 'azeem+11@singsys.com', 'images (10).jpg', '2017-05-10 06:36:37'),
(6, 11, 'azeem+11@singsys.com', 'images (9).jpg', '2017-05-10 06:36:33'),
(8, 12, 'azeem+11@singsys.com', 'images (10).jpg', '2017-05-10 06:36:17'),
(9, 12, 'azeem+11@singsys.com', 'images (9).jpg', '2017-05-10 06:36:15'),
(10, 13, 'azeem+11@singsys.com', 'images (10).jpg', '2017-05-10 06:35:58'),
(11, 13, 'azeem+11@singsys.com', 'images (9).jpg', '2017-05-10 06:35:55'),
(12, 13, 'azeem+11@singsys.com', 'images (8).jpg', '2017-05-10 06:35:53'),
(14, 13, 'azeem+11@singsys.com', 'download.jpg', '2017-05-10 06:35:51'),
(16, 13, 'azeem+11@singsys.com', 'images (6).jpg', '2017-05-10 06:35:48'),
(19, 12, '', 'images.jpg', '2017-05-09 03:55:26'),
(20, 13, 'azeem+11@singsys.com', 'download (4).jpg', '2017-05-10 06:35:46'),
(22, 13, 'azeem+11@singsys.com', 'images (6).jpg', '2017-05-10 06:35:41'),
(23, 14, 'azeem+11@singsys.com', 'images (10).jpg', '2017-05-10 01:00:44'),
(24, 15, 'azeem+8@singsys.com', 'gallery_002.png', '2017-05-10 03:42:44'),
(25, 15, 'azeem+8@singsys.com', 'gallery_001.png', '2017-05-10 03:42:45'),
(26, 15, 'azeem+8@singsys.com', 'download (3).jpg', '2017-05-10 03:54:38'),
(28, 15, 'azeem+8@singsys.com', 'download (4).jpg', '2017-05-10 04:09:12'),
(31, 16, 'azeem+21@singsys.com', 'category_002.png', '2017-05-10 04:35:11'),
(32, 16, 'azeem+21@singsys.com', 'category_001.png', '2017-05-10 04:35:11'),
(33, 16, 'azeem+21@singsys.com', 'category_004.png', '2017-05-10 04:35:32'),
(34, 16, 'azeem+21@singsys.com', 'category_003.png', '2017-05-10 04:35:32'),
(35, 11, 'azeem+11@singsys.com', 'category_004.png', '2017-05-14 23:05:21'),
(36, 11, 'azeem+11@singsys.com', 'category_003.png', '2017-05-14 23:05:21'),
(37, 11, 'azeem+11@singsys.com', 'category_002.png', '2017-05-14 23:05:21'),
(38, 11, 'azeem+11@singsys.com', 'category_001.png', '2017-05-14 23:05:21'),
(39, 11, 'azeem+11@singsys.com', 'download (2).jpg', '2017-05-15 03:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `ac_region`
--

CREATE TABLE IF NOT EXISTS `ac_region` (
  `id` int(11) NOT NULL,
  `region_code` varchar(255) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `status` enum('active','delete') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_region`
--

INSERT INTO `ac_region` (`id`, `region_code`, `region_name`, `status`) VALUES
(2, '01', 'Bayfront/Marina Boulevard', 'active'),
(3, '02', 'None', 'active'),
(4, '03', 'Marina Bay/Temasek Boulevard/ave', 'active'),
(5, '04', 'Robinson Road / Battery Road', 'active'),
(6, '05', 'South Bridge Road', 'active'),
(7, '06', 'Maxwell Road / Cecil Street', 'active'),
(8, '07', 'Anson Road', 'active'),
(9, '08', 'Cantonment / Everton Road', 'active'),
(10, '14', 'Margaret Drive / Commonwealth', 'active'),
(11, '15', 'Bukit Merah / Alexandra Road / Redhill', 'active'),
(12, '16', 'SGH ', 'active'),
(13, '16', 'Outram Road', 'active'),
(14, '09', 'Telok Banglah / Bukit Purmei', 'active'),
(15, '10', 'Depot Road', 'active'),
(16, '11', 'Kent Ridge, Buona Vista', 'active'),
(17, '11', 'NUH, ', 'active'),
(18, '12', 'Clementi, West Coast', 'active'),
(19, '13', 'Dover Road', 'active'),
(20, '17', 'North Bridge Road, Raffles City, Penisula Plaza', 'active'),
(21, '18', 'Rochor / Middle / Selegie Road, Albert Street', 'active'),
(22, '18', 'RAH', 'active'),
(23, '19', 'Beach Road', 'active'),
(24, '20', 'King George / Foch / French / Kitchener Road, Jalan Besar', 'active'),
(25, '21', 'Hampshire Road / Serangoon / Little India', 'active'),
(26, '21', 'KKH', 'active'),
(27, '22', 'Mount Elizabeth, Paragon, Camden, Tanglin', 'active'),
(28, '23', 'Orchard Road, Sp''list Ctr, Prchard Plaza & Tower, Lucky Plaza', 'active'),
(29, '24', 'Tanglin SC', 'active'),
(30, '25', 'Gleneagles, Balmoral, Napier Road', 'active'),
(31, '26', 'Bukit Timah', 'active'),
(32, '27', 'Holland Road, Ghim Moh', 'active'),
(33, '28', 'Adam Road', 'active'),
(34, '29', 'None', 'active'),
(35, '30', 'TTSH, TMC, Moulmein / Dunearn / Thomson Road', 'active'),
(36, '30', 'Thomson Medical centre', 'active'),
(37, '30', 'Mt E Novena, ', 'active'),
(38, '31', 'Toa Payoh, Kim Keat', 'active'),
(39, '32', 'Whampoa, Balestier / St George / Towner Road', 'active'),
(40, '33', 'Bendemeer Road, Kallang Bahru', 'active'),
(41, '34', 'Upper Serangoon, Macpherson / Tannery Road, Genting Lane', 'active'),
(42, '35', 'Potong Pasir', 'active'),
(43, '36', 'Upper Aljunied, Macpherson', 'active'),
(44, '37', 'Circuit Road', 'active'),
(45, '38', 'Geylang, Aljunied Sim Drive', 'active'),
(46, '39', 'Old Airport Road, Dakota Cr, Gellang', 'active'),
(47, '40', 'Eunos', 'active'),
(48, '41', 'Lengkok Tiga, Kembangan, Changi Road, Kaki bukit', 'active'),
(49, '42', 'ESMC', 'active'),
(50, '43', 'Tanjong Katong, Haig Road, Katong SC', 'active'),
(51, '44', 'Marine Parade, Parkway', 'active'),
(52, '45', 'East Coast / Siglap Road', 'active'),
(53, '46', 'Bedok, Chai Chee, New Upper Changi Road', 'active'),
(54, '47', 'Bedok Reservoir', 'active'),
(55, '48', 'Upper Changi Road', 'active'),
(56, '49', 'None', 'active'),
(57, '50', 'Changi End', 'active'),
(58, '81', 'Changi Airport', 'active'),
(59, '51', 'Pasir Ris', 'active'),
(60, '52', 'Tampines', 'active'),
(61, '53', 'Hougang, Woodbrigde, Lorong Lew Lian, Upper Serangoon, Lorong Ah Soo, Upper Paya Lebar', 'active'),
(62, '54', 'Punggol, Yio Chu Kang', 'active'),
(63, '55', 'Serangoon, Serangoon Garden', 'active'),
(64, '56', 'AMK', 'active'),
(65, '57', 'Bishan, Mount Alvernia, Upper Thomson Road, Sin Ming', 'active'),
(66, '58', 'Upper Bukit Timah, Walton East, Anaki Bukit', 'active'),
(67, '59', 'Jurong Kechil', 'active'),
(68, '60', 'Jurong East, Teban Garden', 'active'),
(69, '61', 'Taman Jurong, Corp Road', 'active'),
(70, '62', 'Pioneer Road, Tanjong Kling', 'active'),
(71, '63', 'Tuas', 'active'),
(72, '64', 'Jurong West, Boon Lay, Jurong Point', 'active'),
(73, '65', 'Bukit Batok, Choa Chu Kang', 'active'),
(74, '66', 'Upper Bukit Timah, Hillview, Bukit Gombak', 'active'),
(75, '67', 'Bukit Panjang, Fajar, Woodlands', 'active'),
(76, '68', 'Choa Chu Kang, Teck Whye', 'active'),
(77, '69', 'Lim Chu Kang, Tengah', 'active'),
(78, '72', 'Kranji, Woodgrove', 'active'),
(79, '71', 'Lim Chu Kang, Tengah', 'active'),
(80, '72', 'Kranji, Woodgrove', 'active'),
(81, '73', 'Woodlands, Marsiling, Kranji, Admiralty', 'active'),
(82, '77', 'Sembawang, Upper Thomson Road', 'active'),
(83, '78', 'Sembawang', 'active'),
(84, '74', 'Sembawang', 'active'),
(85, '75', 'Senoko, Sembawang SC', 'active'),
(86, '76', 'Yishun, Sembawang', 'active'),
(87, '79', 'Jalan Kayu', 'active'),
(88, '80', 'Seletar', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ac_static_content`
--

CREATE TABLE IF NOT EXISTS `ac_static_content` (
  `id` int(11) NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ac_static_content`
--

INSERT INTO `ac_static_content` (`id`, `variable`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'About', 'About Acord', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper urna odio, interdum rutrum leo scelerisque sit amet. Cras mattis elementum ante nec efficitur. Nulla pretium blandit orci vitae aliquet.', '0000-00-00 00:00:00', '2017-04-07 08:52:59'),
(2, 'ContactUs', 'Contact Us', 'Etiam eget sem a est posuere dignissim non ac erat. In dictum, nisi vitae condimentum mattis, magna ipsum maximus nisi, at laoreet enim quam id massa. Fusce quis purus non nulla rutrum pharetra. In tincidunt nulla et fermentum suscipit.', '0000-00-00 00:00:00', '2017-02-02 04:48:19'),
(8, 'TermsAndCondition', 'Terms and Condition', 'Etiam eget sem a est posuere dignissim non ac erat. In dictum, nisi vitae condimentum mattis, magna ipsum maximus nisi, at laoreet enim quam id massa. Fusce quis purus non nulla rutrum pharetra. In tincidunt nulla et fermentum suscipit.', '0000-00-00 00:00:00', '2017-03-03 03:44:53'),
(9, 'PirvacyPolicy', 'Privacy Policy', 'Etiam eget sem a est posuere dignissim non ac erat. In dictum, nisi vitae condimentum mattis, magna ipsum maximus nisi, at laoreet enim quam id massa. Fusce quis purus non nulla rutrum pharetra. In tincidunt nulla et fermentum suscipit.', '0000-00-00 00:00:00', '2017-02-02 04:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `ac_time`
--

CREATE TABLE IF NOT EXISTS `ac_time` (
  `id` int(11) NOT NULL,
  `vendor_id` int(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_time`
--

INSERT INTO `ac_time` (`id`, `vendor_id`, `day`, `from`, `to`) VALUES
(71, 80, 'Monday', '03:00', '22:00'),
(81, 83, 'Monday', '17:00', '18:00'),
(82, 83, 'Tuesday', '18:00', '19:00'),
(83, 83, 'Wednesday', '19:00', '20:00'),
(84, 83, 'Thursday', '20:00', '21:00'),
(85, 83, 'Friday', '21:00', '22:00'),
(86, 83, 'Sunday', '22:00', '23:00'),
(87, 84, 'Monday', '14:00', '23:00'),
(88, 84, 'Tuesday', '14:00', '23:00'),
(89, 84, 'Sunday', '18:00', '23:00'),
(90, 85, 'Monday', '15:00', '23:00'),
(91, 85, 'Tuesday', '16:00', '22:00'),
(92, 85, 'Wednesday', '16:00', '22:00'),
(93, 85, 'Sunday', '19:00', '23:00'),
(97, 87, 'Monday', '18:00', '23:00'),
(98, 87, 'Saturday', '18:00', '23:00'),
(99, 87, 'Sunday', '18:00', '01:00'),
(100, 88, 'Monday', '18:00', '23:00'),
(101, 88, 'Sunday', '18:00', '23:00'),
(105, 91, 'Monday', '03:00', '22:00'),
(129, 79, 'Monday', '18:00', '23:00'),
(130, 79, 'Tuesday', '18:00', '23:00'),
(131, 79, 'Wednesday', '18:00', '23:00'),
(132, 79, 'Saturday', '18:00', '23:00'),
(133, 79, 'Sunday', '18:00', '23:00'),
(138, 86, 'Monday', '16:00', '18:00'),
(139, 86, 'Tuesday', '18:00', '22:00'),
(140, 86, 'Saturday', '17:00', '23:00'),
(141, 86, 'Sunday', '18:00', '23:00'),
(217, 82, 'Monday', '16:00', '23:00'),
(218, 82, 'Tuesday', '16:00', '23:00'),
(219, 82, 'Wednesday', '10:00', '23:00'),
(220, 82, 'Thursday', '16:00', '17:00'),
(221, 82, 'Friday', '20:00', '23:00'),
(222, 82, 'Saturday', '18:00', '23:00'),
(223, 82, 'Sunday', '18:00', '23:00'),
(236, 92, 'Monday', '18:00', '23:00'),
(237, 92, 'Tuesday', '18:00', '23:00'),
(238, 92, 'Wednesday', '18:00', '23:00'),
(239, 92, 'Thursday', '18:00', '23:00'),
(240, 92, 'Sunday', '17:00', '23:00'),
(245, 93, 'Monday', '18:00', '23:00'),
(246, 93, 'Tuesday', '18:00', '23:00'),
(247, 93, 'Sunday', '18:00', '23:00'),
(248, 94, 'Monday', '18:00', '23:00'),
(249, 94, 'Sunday', '18:00', '23:00'),
(257, 96, 'Monday', '16:00', '23:00'),
(258, 96, 'Tuesday', '16:00', '23:00'),
(259, 96, 'Sunday', '16:00', '23:00'),
(264, 97, 'Monday', '18:00', '23:00'),
(265, 97, 'Sunday', '18:00', '23:00'),
(266, 89, 'Monday', '18:00', '23:00'),
(267, 89, 'Tuesday', '18:00', '23:00'),
(268, 89, 'Wednesday', '18:00', '23:00'),
(269, 89, 'Thursday', '18:00', '23:00'),
(270, 89, 'Sunday', '18:00', '23:00');

-- --------------------------------------------------------

--
-- Table structure for table `ac_transactions`
--

CREATE TABLE IF NOT EXISTS `ac_transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `payment_status` enum('paid','cancel') NOT NULL,
  `redeem_status` enum('redeem','redeemed') NOT NULL,
  `redeem_date` varchar(255) NOT NULL,
  `table_number` int(11) NOT NULL,
  `vendor_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ac_users`
--

CREATE TABLE IF NOT EXISTS `ac_users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('administrator','vendor','user') NOT NULL COMMENT 'Users Table',
  `number` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `password` varchar(255) NOT NULL COMMENT 'Password',
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `status` enum('Active','Inactive','Pending','trashed') NOT NULL DEFAULT 'Active',
  `remember_token` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ac_users`
--

INSERT INTO `ac_users` (`id_user`, `name`, `email`, `role`, `number`, `otp`, `password`, `gender`, `status`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'info@acord.com', 'administrator', '0', 0, '$2y$10$2vpcbhI9u0QqBmOxbgCbqOu6RjMtMCnfLcGMulWswPF/ler.bsmVu', 'male', 'Active', 'tqOyq14Za1DCGaLTPuY2Y9ftce9JHi9ldsGkBR3lFEPY4jBZ174CNP1ImUJK', '', '2017-01-10 12:34:27', '2018-08-31 05:28:51'),
(2, 'Shivam', 'shivam@singsys.com', 'vendor', '0', 0, '$2y$10$aTtM3WB8E730.jTevzqUkOb.CscOX0NqV6fquTQF1fgwx3zCeY9Ha', 'male', 'Active', 'CkwFLVE7whkDHORS6o6BWy8tyL77jvx5sLjPf6ShXkndIqkHEA1fSdiq8Ow0', NULL, '2017-04-03 06:23:16', '2017-05-02 10:17:16'),
(3, 'Mani Gupta', 'mani@gmail.com', 'vendor', '0', 0, '$2y$10$zw0BPTrR2v.juVBKrcJyfOWIai95PyyJropQr9tJnVG0BDR5omFHy', 'male', 'Active', 'Zn6WmCveNpYTBykyICAqTL7xMsY2NKpC81TfWgwGztTSgKZLI4nvPXQqHLA5', NULL, '2017-04-04 04:13:50', '2017-05-02 10:17:40'),
(79, 'Club P34', 'azeem+1@singsys.com', 'vendor', '0', 0, '$2y$10$O0Jp.dA9tlRTV3hShUHZJey4lj0u8geqJh2bUzB7njz0eGCjX.wnS', 'male', 'Active', 'eb1l334w5NUFPLmkiRrGZkZ0SHP2Ykuscb9sZYNxEVWPqjeWHUgRb7Mvzwx3', NULL, '2017-04-19 22:33:46', '2017-04-26 06:36:17'),
(82, 'Azeem Shah', 'azeem+3@singsys.com', 'vendor', '0', 0, '$2y$10$wBVBT5KuNFk1AqzVX1DAZ.WoZMjUivJX0l4W98ip.dk8Ab15uq5TK', 'male', 'Inactive', 'zjBCIwRAWNKOeglvvGGHH6HtZJ4MbJfc0HvspTmOEftA6FsXlmUk9fRBJcBr', NULL, '2017-04-20 00:37:58', '2017-04-28 08:46:52'),
(83, 'Shah', 'azeem+2@singsys.com', 'vendor', '0', 0, '$2y$10$dpTovN11cd1URmOeJ7Is2O3xJDoRD/04nAkUJpgbR8jZUHN.HWawu', 'male', 'Inactive', 'cNw5vTedZ4bHmCiN3NT3bdFDHK5iBe6WargETLx6J8nq8uNlQi81zGVHmQuK', NULL, '2017-04-20 01:08:05', '2017-05-03 09:29:37'),
(84, 'Azeem Shah', 'azeem+4@singsys.com', 'vendor', '0', 0, '$2y$10$0MC2UGRmxraC8v.BmjHYNOvWdz./JtEvCruQ9ggKItyox2Jn8ONye', 'male', 'Inactive', NULL, NULL, '2017-04-20 23:27:02', '2017-04-21 12:46:07'),
(85, 'Azeem Shah', 'azeem+5@singsys.com', 'vendor', '0', 0, '$2y$10$ZEmJsN6HL0moezF1/qUTEOAv.W.S3WhNEii1I2LcKhllLaG5RbQ.2', 'male', 'Active', 'xecoBZkavvTUaUqK63azfCNMnaSeN6CtJOu7RAwndLjJHvDNg0RjOoEWRESU', NULL, '2017-04-20 23:30:52', '2017-05-04 13:03:38'),
(86, 'Shah', 'azeem+7@singsys.com', 'vendor', '0', 0, '$2y$10$HBJnXehCqokvTzYU3qBcLeRZGXs5HZHidcUA4vPqFs3jSctbf9S72', 'male', 'Active', NULL, NULL, '2017-04-23 23:18:26', '2017-04-25 04:21:10'),
(87, 'Shah', 'azeem+8@singsys.com', 'vendor', '0', 0, '$2y$10$gKQ4b27iSvhAKnVl71I6P.0amk77SfKWszknL3tO6CIB/Xm6fEdFS', 'male', 'Active', 'ANKMXWFpZUZja5RZsExOiKiukJzhb6m0cUgawgrMgonFpOOP6Fji18evynBA', NULL, '2017-04-23 23:38:41', '2017-05-10 09:43:19'),
(88, 'Shah', 'azeem+9@singsys.com', 'vendor', '0', 0, '$2y$10$Gkc.jLBl9gTlaAqOnXjzh.GTaYvglKB2DG6VrRC1VxwoqpV3UeHyC', 'male', 'Active', NULL, NULL, '2017-04-24 02:07:30', '2017-04-24 08:33:37'),
(89, 'Azeem Shah', 'azeem+11@singsys.com', 'vendor', '0', 0, '$2y$10$eJJNNNhisiexPhgDpD8e6ex6LPJt0FA2g.w2aq75upMjvxzRdLe8i', 'male', 'Active', 'YzaLUx5LJFLEvVuSxC3Ob083WzOVTo5P1QdN5sQezoP8oRKtWUKwsqGMMq0E', NULL, '2017-04-24 05:12:51', '2017-05-22 05:39:11'),
(92, 'Azeem Shah', 'azeem+19@singsys.com', 'vendor', '0', 0, '$2y$10$e.CMAihrrwH6Gf9fqDA8nO4M3jFERq04AZ3s9MJMr41seUYdvvUlC', 'male', 'Active', 'flL04pw5RDfFHVmggOzj2EM7RunsgBOerCrujq5ey0KjDUhGDyO82EJARxmA', NULL, '2017-04-24 07:02:24', '2017-04-25 13:38:06'),
(93, 'Azm', 'azeem+13@singsys.com', 'vendor', '0', 0, '$2y$10$zFEsdYz0fs6EjhBJj/hq2.iMJP5Qkj9m7ptT02R9wOVxJoyPJtbCG', 'male', 'Active', NULL, NULL, '2017-05-02 07:06:53', '2017-05-02 07:06:53'),
(94, 'Azm', 'azeem+14@singsys.com', 'vendor', '0', 0, '$2y$10$Dh7rvITpD9/ypnU/j90nWOKAtycPOw/.BAK/cExqrTIF1PxxqvCdS', 'male', 'Active', NULL, NULL, '2017-05-02 07:11:30', '2017-05-02 07:11:30'),
(96, 'Azm', 'azeem+21@singsys.com', 'vendor', '0', 0, '$2y$10$/atjA58JR7v24yprtBucsuNkB/Jocwh3o/5xDu7V.LTxPVtrNr9U6', 'male', 'Active', 'A8495Q2QR0UQsus2YwWoEhZEGlHcCm2DdHkqa1BrsjwrgCYAN0nCIMuTH5Vr', NULL, '2017-05-10 04:27:10', '2017-05-10 11:43:31'),
(97, 'Azeem', 'azeem+23@singsys.com', 'vendor', '0', 0, '$2y$10$PvFW8.QMI7oH4eAC9JtSeuIcw/VyrvI8w54Z70.WVBzJASlGoY4JC', 'male', 'Active', 'ySTYKYVvrDGnwCDzjZVJy3eWTiIIGF3miQGwCxxonMOYGoRb943RDG5cXfpu', NULL, '2017-05-10 22:55:00', '2017-06-20 04:24:41'),
(113, 'Azeem Shah', 'azeem@singsys.com', 'user', '80904821091', 174308, '1639582740', 'male', 'Active', '6LKjwQq3yQw9z4BAiCP1gXsJo3ZzSTOznVgdtu3QTf7H3QYnPOinp4AVJ7rL', NULL, '2017-06-02 06:52:49', '2017-06-02 06:57:50'),
(115, 'Gaurav', 'gaurav@singsys.com', 'user', '9876543210', 679312, '7580362149', 'male', 'Active', 'yxfuBvlPZWxk30CPvWTpuaIU18fobgcyjftpXXkG3WQxPMbatrryZV9V2tmC', NULL, '2017-05-17 08:06:25', '2017-05-17 13:37:59'),
(116, 'sunil', 'azeem+34@singsys.com', 'user', '1234567890', 0, '7613984052', 'male', 'Active', NULL, NULL, '2017-05-17 22:36:56', '2017-05-17 22:36:56'),
(117, 'sunil', 'azeem+34@singsys.com', 'user', '12345678901', 91238, '2748109536', 'male', 'Active', 'dmQidjt2OyxCsc45dv6QpsNx8NCotwPXwE8eby8WFtVscuqVRffd7KfURA88', NULL, '2017-05-17 22:42:10', '2017-05-18 05:13:44'),
(118, 'sunil', 'azeem+34@singsys.com', 'user', '123456789011', 0, '6217340598', 'male', 'Active', NULL, NULL, '2017-05-17 22:40:40', '2017-05-17 22:40:40'),
(119, 'amit', 'amit@singsys.com', 'user', '8004246717', 0, '2634759081', 'male', 'Active', NULL, NULL, '2017-05-19 01:38:19', '2017-05-19 01:38:19'),
(120, 'amit', 'amit@singsys.com', 'user', '8090482109', 529476, '4781309265', 'male', 'Active', 'Nw5g971t8DsNPEc2SAK4er1Wq1pUz70sfa5ubesxTVRnsSs9MKt22zG4wzlM', NULL, '2017-06-02 10:03:18', '2017-06-02 10:30:39'),
(121, 'Himanshu chaurasia', 'himanshuchaurasia@singsys.com', 'user', '8874937171', 946701, '3187094562', 'male', 'Active', 'f2IR63L7djhkCwtcOYuyChWfYWbZfJux5nD7rOcPu9L3nVCE8FXVRDQeFHZr', NULL, '2017-06-02 09:00:33', '2017-06-02 09:06:32'),
(122, 'Sunil Kumar', 'sunil@singsys.com', 'user', '8081433959', 136420, '9274081365', 'male', 'Active', 'cJRoVFKaZR31u4BcOzLSThjboG3jc2mpksQAOUKmU0pnQtjX27HLxfg9ew2Y', NULL, '2017-06-02 10:42:39', '2017-06-02 10:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `ac_users_menu`
--

CREATE TABLE IF NOT EXISTS `ac_users_menu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `action_url` varchar(255) DEFAULT NULL,
  `menu_icon` varchar(100) DEFAULT NULL,
  `menu_class` varchar(100) DEFAULT NULL,
  `menu_order` int(11) NOT NULL,
  `callback` varchar(50) DEFAULT NULL,
  `disable_list_view` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_users_menu`
--

INSERT INTO `ac_users_menu` (`id`, `name`, `parent`, `created_by`, `created_date`, `status`, `action_url`, `menu_icon`, `menu_class`, `menu_order`, `callback`, `disable_list_view`) VALUES
(1, 'Home', 0, -1, '2015-09-21 08:45:46', 'active', '#', '<i class="home"></i>', '', 1, NULL, 0),
(8, 'Settings', 0, -1, '2015-09-21 08:45:46', 'active', '#', '<i class="settings-icon"></i>', '', 8, NULL, 0),
(9, 'General Settings', 8, -1, '2015-09-21 08:45:46', 'active', 'generalsettings', '<i class="setting-inner-icon"></i>', NULL, 9, NULL, 0),
(10, 'Messages', 8, -1, '2015-09-21 08:45:46', 'active', 'emails', '<i class="setting-inner-icon"></i>', NULL, 10, NULL, 0),
(11, 'Static Content', 8, -1, '2015-09-21 08:45:46', 'deactive', 'pages', '<i class="setting-inner-icon"></i>', NULL, 11, NULL, 0),
(12, 'To Do List', 0, -1, '2015-09-21 00:45:46', 'active', 'dashboard', '<i class="dashboard-icon"></i>', '', 1, NULL, 0),
(13, 'Dashboard', 0, -1, '2015-09-21 00:45:46', 'active', 'dashboard', '<i class="dashboard-icon"></i>', '', 14, NULL, 0),
(14, 'Deals', 0, -1, '2015-09-21 00:45:46', 'active', '#', '<i class="deals"></i>', '', 15, NULL, 0),
(15, 'Create New Deal', 14, -1, '2017-03-30 07:11:29', 'active', 'adddeals', '<i class="records-icon"></i>', NULL, 23, NULL, 0),
(16, 'Vendor', 0, -1, '2017-03-30 10:08:06', 'active', '#', '<i class="manager-icon" style="color:white;"></i>', NULL, 17, NULL, 0),
(17, 'Current Vendors', 16, -1, '2017-03-30 11:15:22', 'active', 'currentvendor', '<i class="notification-icon"></i>', NULL, 18, NULL, 0),
(18, 'Create New Vendor', 16, -1, '2017-03-30 10:36:57', 'active', 'addvendor', '<i class="manager-icon" style="color:white;"></i>', NULL, 19, NULL, 0),
(19, 'Backend Tally', 0, -1, '2017-03-30 12:43:12', 'active', '#', '<i class="settings-icon"></i>', NULL, 20, NULL, 0),
(20, 'My Profile', 0, -1, '2017-03-31 06:24:18', 'active', 'profile', '<i class="myprofile"></i>', NULL, 21, NULL, 0),
(21, 'Current Deals', 14, -1, '2017-03-31 06:25:55', 'active', 'currentdeals', '<i class="currentdeals"></i>', NULL, 16, NULL, 0),
(22, 'All Deals', 14, -1, '2017-03-31 06:28:15', 'active', 'alldeals', '<i class="alldeals"></i>', NULL, 22, NULL, 0),
(23, 'Additional Details', 21, -1, '2017-03-31 06:30:54', 'active', 'additionaldetails', '<i class="additionaldetails"></i>', NULL, 24, NULL, 0),
(24, 'On Going Deals', 21, -1, '2017-03-31 06:33:56', 'active', 'ongoingdeals', '<i class="ongoingdeals"></i>', NULL, 25, NULL, 0),
(25, 'How Many DEals', 21, -1, '2017-03-31 06:36:24', 'active', 'howmanydeals', '<i class="howmanydeals"></i>', NULL, 26, NULL, 0),
(26, 'All Deals', 0, -1, '2017-03-31 06:38:12', 'active', 'alldeals', '<i class="alldeals"></i>', NULL, 27, NULL, 0),
(27, 'Reports', 0, -1, '2017-03-31 06:50:39', 'active', 'reports', '<i class="reports"></i>', NULL, 28, NULL, 0),
(28, 'Contact Admin', 0, -1, '2017-03-31 06:52:31', 'active', 'contactadmin', '<i class="contactadmin"></i>', NULL, 29, NULL, 0),
(29, 'Home', 0, 0, '2017-04-10 04:04:08', 'active', 'home', '<i class="home"></i>', NULL, 30, NULL, 0),
(30, 'FAQ', 0, 0, '2017-04-25 13:40:46', 'active', 'faq', '<i class="faq"></i>', NULL, 31, NULL, 0),
(31, 'General Settings', 0, 0, '2017-05-01 13:09:43', 'active', 'generalsettings', '<i class="generalsettings"></i>', NULL, 32, NULL, 0),
(32, 'Message<br> Configuration', 0, 0, '2017-05-02 06:10:47', 'active', 'messageconfiguration', '<i class="messageconfiguration"></i>', NULL, 33, NULL, 0),
(33, 'Contact Us', 0, 0, '2017-05-02 09:39:46', 'active', 'contactus', '<i class="contactus"></i>', NULL, 34, NULL, 0),
(34, 'Event list', 0, 0, '2017-05-03 12:40:55', 'active', 'eventlist', '<i class="eventlist"></i>', NULL, 35, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ac_users_menu_visibility`
--

CREATE TABLE IF NOT EXISTS `ac_users_menu_visibility` (
  `id_user` int(11) NOT NULL,
  `menu_visibility` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_users_menu_visibility`
--

INSERT INTO `ac_users_menu_visibility` (`id_user`, `menu_visibility`, `created`, `updated`) VALUES
(1, '["1","13","14","21","22","15","16","17","18","19","30","31","32","33"]', '2016-11-01 00:00:00', '2016-11-01 00:00:00'),
(2, '["13","20","14","21","22","27","28","34"]', '2017-03-30 06:17:27', '2017-03-30 06:17:27'),
(79, '["13","20","14","21","22","27","28","34"]', '2017-04-20 04:03:46', '2017-04-20 04:03:46'),
(82, '["13","20","14","21","22","27","28","34"]', '2017-04-20 06:07:59', '2017-04-20 06:07:59'),
(83, '["13","20","14","21","22","27","28","34"]', '2017-04-20 06:38:05', '2017-04-20 06:38:05'),
(84, '["13","20","14","21","22","27","28","34"]', '2017-04-21 04:57:02', '2017-04-21 04:57:02'),
(85, '["13","20","14","21","22","27","28","34"]', '2017-04-21 05:00:53', '2017-04-21 05:00:53'),
(86, '["13","20","14","21","22","27","28","34"]', '2017-04-24 04:48:26', '2017-04-24 04:48:26'),
(87, '["13","20","14","21","22","27","28","34"]', '2017-04-24 05:08:41', '2017-04-24 05:08:41'),
(88, '["13","20","14","21","22","27","28","34"]', '2017-04-24 07:37:31', '2017-04-24 07:37:31'),
(89, '["13","20","14","21","22","27","28","34"]', '2017-04-24 10:42:51', '2017-04-24 10:42:51'),
(91, '["13","20","14","21","22","27","28","34"]', '2017-04-24 11:10:48', '2017-04-24 11:10:48'),
(92, '["13","20","14","21","22","27","28","34"]', '2017-04-24 12:32:24', '2017-04-24 12:32:24'),
(93, '["13","20","14","21","22","27","28","34"]', '2017-05-02 12:36:53', '2017-05-02 12:36:53'),
(94, '["13","20","14","21","22","27","28","34"]', '2017-05-02 12:41:30', '2017-05-02 12:41:30'),
(96, '["13","20","14","21","22","27","28","34"]', '2017-05-10 09:57:10', '2017-05-10 09:57:10'),
(97, '["13","20","14","21","22","27","28","34"]', '2017-05-11 04:25:00', '2017-05-11 04:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `ac_vendors`
--

CREATE TABLE IF NOT EXISTS `ac_vendors` (
  `id` int(10) unsigned NOT NULL,
  `vendor_id` int(255) NOT NULL,
  `club_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clubdescription` text COLLATE utf8_unicode_ci NOT NULL,
  `pointofcontact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `no_of_tables` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirm_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ac_vendors`
--

INSERT INTO `ac_vendors` (`id`, `vendor_id`, `club_name`, `clubdescription`, `pointofcontact`, `contactnumber`, `email`, `address`, `no_of_tables`, `image`, `password`, `confirm_password`, `status`, `created_at`, `updated_at`) VALUES
(45, 79, 'Club P34new', '', 'Azeemnew 1', '9988776655', 'azeem+1@singsys.com', 'gomti nagar', 20, 'images (2).jpg', '$2y$10$O0Jp.dA9tlRTV3hShUHZJey4lj0u8geqJh2bUzB7njz0eGCjX.wnS', '$2y$10$O0Jp.dA9tlRTV3hShUHZJey4lj0u8geqJh2bUzB7njz0eGCjX.wnS', 'Active', '2017-04-19 22:33:46', '2017-04-25 04:09:03'),
(47, 82, 'Club Ramala vendor update', '', 'Azeem Shah', '8090482109', 'azeem+3@singsys.com', 'Viram khand, Gomti nagar.', 30, 'images (8).jpg', '$2y$10$wBVBT5KuNFk1AqzVX1DAZ.WoZMjUivJX0l4W98ip.dk8Ab15uq5TK', '$2y$10$wBVBT5KuNFk1AqzVX1DAZ.WoZMjUivJX0l4W98ip.dk8Ab15uq5TK', 'Inactive', '2017-04-20 00:37:59', '2017-04-26 05:43:03'),
(48, 83, 'Hide Out', '', 'Shah', '1234567890', 'azeem+2@singsys.com', 'Gomti Nagar, Lucknow', 50, 'images (5).jpg', '$2y$10$iahouHjCsiHRZpyRmEeRTukQjBpgrydFvSumf73OD5I0IWy4Ro0X2', '$2y$10$fykX2Ixu7ZxDQILhjeIXMes.dkdQboxSO86gI9ElcRQJbrvULw1FG', 'Inactive', '2017-04-20 01:08:05', NULL),
(49, 84, 'ZustNew Club', '', 'Azeem Shah', '123456789', 'azeem+4@singsys.com', 'Vinay khand, Gomti Nagar', 30, 'images (4).jpg', '$2y$10$AgHuE4o582TBj6EY7n8YSuumMsXfbqPMJv6t8rpDlXqsXVchBtbsq', '$2y$10$di.Ae2cl5zX5kPkDk0D3Ieu4zQrwRJF1PKhR0.eySPBr9SHmz4d4i', 'Inactive', '2017-04-20 23:27:02', NULL),
(50, 85, 'P56 Club', '', 'Azeem Shah', '1234567890', 'azeem+5@singsys.com', 'gomti nagar', 50, 'images (4).jpg', '$2y$10$78J1UQXwvNYOad.KCiNh5uhhqImM/7XyisPMKyVs/MdG8Y9cDXmmm', '$2y$10$B.Apa626KVPV8.MOY30ff.j2HQ./4ULoq5XTR4f7a.h5TojXmag7q', 'Active', '2017-04-20 23:30:52', NULL),
(51, 86, 'Club Ramala new updated', '', 'Shah', '1234567890', 'azeem+7@singsys.com', 'Indra nagar new', 50, 'images (8).jpg', '$2y$10$HBJnXehCqokvTzYU3qBcLeRZGXs5HZHidcUA4vPqFs3jSctbf9S72', '$2y$10$HBJnXehCqokvTzYU3qBcLeRZGXs5HZHidcUA4vPqFs3jSctbf9S72', 'Active', '2017-04-23 23:18:26', '2017-04-25 04:21:10'),
(52, 87, 'Club Ramala new', '', 'Shah', '1234567890', 'azeem+8@singsys.com', 'Indra nagar', 50, 'images (1).jpg', '$2y$10$7Bc4vQ3C3lPh4lBW0BPLEORmQ7pznQ/Jb4NL.ey8pLyuEt2Nyrbv6', '$2y$10$CPWJVUW53vN62omE6iJApOBUVySnJoB36GjGIt4sKqklnhDTyuDnm', 'Active', '2017-04-23 23:38:41', NULL),
(53, 88, 'ZustNew12', '', 'Shah', '1234567890', 'azeem+9@singsys.com', 'Gomti Nagar, Lucknow,lko', 30, 'images (5).jpg', '$2y$10$5hygKNd4Vxv2eqJhX7x2YO.5UVpB/YsyyofqjEx8FxXgcT4gLAsxC', '$2y$10$BcJn6yxqmzqDEjsM.cgAxeuWr8XAgzWuTqS2SiFb6py327FTtztgi', 'Active', '2017-04-24 02:07:31', NULL),
(54, 89, 'Club Evening', '', 'Azeem Shah new1', '1234567890', 'azeem+11@singsys.com', 'Gomti Nagar, Lucknow, India', 40, 'images (6).jpg', '$2y$10$eJJNNNhisiexPhgDpD8e6ex6LPJt0FA2g.w2aq75upMjvxzRdLe8i', '$2y$10$eJJNNNhisiexPhgDpD8e6ex6LPJt0FA2g.w2aq75upMjvxzRdLe8i', 'Active', '2017-04-25 03:55:42', '2017-05-19 04:45:43'),
(57, 92, 'Zero Degree98765 updated', '', 'Azeem Shah1', '1234567890', 'azeem+19@singsys.com', 'Gomti Nagar, Lucknow', 40, 'images (7).jpg', '$2y$10$whYRbrF3ycbqj0BZnCL7zeIpbcexpol0WzrfQXkbcjzaNQMNIQx9u', '$2y$10$2/K6HZjDy3cC/vwj7n4zyefYC.Lq6HJed9rIlKcOv3kDNUrMN3H7a', 'Active', '2017-04-24 07:02:24', '2017-04-27 05:22:08'),
(58, 93, 'Hide Out Newest', '', 'Azm', '1234567890', 'azeem+13@singsys.com', 'Gomti nagar,lucknow', 30, 'images (6).jpg', '$2y$10$LqjwAPnD0gP/ebJJDtaImeSKXk0o/pXuaZSiH8lFh3/kpNdu8vO4S', '$2y$10$gZJGOw1broVB8/xks2sbguV0O7a4PLpZaTgf6yxvkWrFmwbLyrN0i', 'Active', '2017-05-02 07:06:53', NULL),
(59, 94, 'Hide Out Newest1', '', 'Azm', '1234567890', 'azeem+14@singsys.com', 'Gomti nagar,lucknow', 50, 'images (6).jpg', '$2y$10$p4kg8qQDVplhuuiejbGXWOB.QSalN3RnvAOh3/nLtq9E3KRNqHc66', '$2y$10$zByVCcpRbgwHGq2msRFOmOjE5p1GBZSq4IU8dStSxWrjEz3rTJiTO', 'Active', '2017-05-02 07:11:30', NULL),
(61, 96, 'Privi Night Club', 'Testibulum scelerisque scelerisque velit velcumsan ipsum maximus eget sagtis libero acturpis lorem ipsumeern auctor urna imperdiet sapien elerisque scelerisque velit velcumsan ipsum maximus eget sagtis liberoctu.Pellentesque commodo neque massa, ac elementum lectus elementum consequat. In non auctor mi. Nam ultrices felis non ex aliquet,', 'Azm', '1234567890', 'azeem+21@singsys.com', 'Gomti nagar,lucknow', 30, 'gallery_001.png', '$2y$10$CYnCZnP1Eh3uXTf9Uqhvc.ris.ohi2U8iehlCWsI0Ew7zxZZb2NUK', '$2y$10$St05BDupW.8kAladrvDYyu68/nwhUxejnJcPnpy9nyYg0Bf7qaFge', 'Active', '2017-05-10 04:27:10', NULL),
(62, 97, 'Spring Club', 'This is the first description about club. updated1', 'Azeem', '1234567890', 'azeem+23@singsys.com', 'Gomti nagar,lucknow', 30, 'download (4).jpg', '$2y$10$4ZVIEZByE.CLpg.98zzD8.NW4WckgQxzPcJ9RmLigP7qe0UifqIQ.', '$2y$10$coYnqAYbaS9YXd6HvPy7zOapSavdpJuXQjmTBVJgKXyvVO4Lx1oP6', 'Active', '2017-05-10 22:55:00', '2017-05-10 22:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `aw_deals`
--

CREATE TABLE IF NOT EXISTS `aw_deals` (
  `deals_id` int(11) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `valid_from` varchar(255) NOT NULL,
  `valid_to` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `limited_seats` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aw_deals`
--

INSERT INTO `aw_deals` (`deals_id`, `club_name`, `valid_from`, `valid_to`, `description`, `limited_seats`, `price`, `image`) VALUES
(10, 'Green', '04/07/2017', '04/08/2017', 'Party details here.', '50', 500, 'images (3).jpg'),
(11, 'Hide Out', '04/03/2017', '04/08/2017', 'About the Party', '100', 850, 'images.jpg'),
(12, 'Aura', '04/02/2017', '04/04/2017', 'About the Party', '50', 300, 'images (5).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `aw_vendor`
--

CREATE TABLE IF NOT EXISTS `aw_vendor` (
  `vendor_id` int(11) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `operating_hours` float NOT NULL,
  `number_of_tables` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aw_vendor`
--

INSERT INTO `aw_vendor` (`vendor_id`, `club_name`, `address`, `contact_number`, `operating_hours`, `number_of_tables`, `email`, `password`, `image`) VALUES
(6, 'Mocha Lucknow', 'Patrakar puram, gomti nagar, Lucknow.', 9876543, 12, 109, 'shivam@singsys.com', '$2y$10$F4R/sGSgcyfbHRrldL.3Q.R8Xir/HLuKV9ZiTrkYqox8PwiyuRUZy', 'images (5).jpg'),
(7, 'Hide Out', 'Katautha chauraha, Gomti Nagar, Lucknow.', 1111, 10, 90, 'mani@gmail.com', '$2y$10$zw0BPTrR2v.juVBKrcJyfOWIai95PyyJropQr9tJnVG0BDR5omFHy', 'images (1).jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_config`
--
ALTER TABLE `ac_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ac_contactadmin`
--
ALTER TABLE `ac_contactadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_deals`
--
ALTER TABLE `ac_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_dealsbought`
--
ALTER TABLE `ac_dealsbought`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_events`
--
ALTER TABLE `ac_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_faq`
--
ALTER TABLE `ac_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_message_config`
--
ALTER TABLE `ac_message_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_migrations`
--
ALTER TABLE `ac_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_photos`
--
ALTER TABLE `ac_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_region`
--
ALTER TABLE `ac_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_static_content`
--
ALTER TABLE `ac_static_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_time`
--
ALTER TABLE `ac_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_transactions`
--
ALTER TABLE `ac_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_users`
--
ALTER TABLE `ac_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `ac_users_menu`
--
ALTER TABLE `ac_users_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `ac_users_menu_visibility`
--
ALTER TABLE `ac_users_menu_visibility`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `ac_vendors`
--
ALTER TABLE `ac_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aw_deals`
--
ALTER TABLE `aw_deals`
  ADD PRIMARY KEY (`deals_id`);

--
-- Indexes for table `aw_vendor`
--
ALTER TABLE `aw_vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_contactadmin`
--
ALTER TABLE `ac_contactadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ac_deals`
--
ALTER TABLE `ac_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ac_dealsbought`
--
ALTER TABLE `ac_dealsbought`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `ac_events`
--
ALTER TABLE `ac_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ac_faq`
--
ALTER TABLE `ac_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ac_message_config`
--
ALTER TABLE `ac_message_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ac_migrations`
--
ALTER TABLE `ac_migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ac_photos`
--
ALTER TABLE `ac_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `ac_region`
--
ALTER TABLE `ac_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `ac_static_content`
--
ALTER TABLE `ac_static_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ac_time`
--
ALTER TABLE `ac_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `ac_transactions`
--
ALTER TABLE `ac_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ac_users`
--
ALTER TABLE `ac_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `ac_users_menu`
--
ALTER TABLE `ac_users_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `ac_users_menu_visibility`
--
ALTER TABLE `ac_users_menu_visibility`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `ac_vendors`
--
ALTER TABLE `ac_vendors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `aw_deals`
--
ALTER TABLE `aw_deals`
  MODIFY `deals_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `aw_vendor`
--
ALTER TABLE `aw_vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
