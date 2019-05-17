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
-- Database: `meocontact`
--

-- --------------------------------------------------------

--
-- Table structure for table `meo_action_activity_stages`
--

CREATE TABLE `meo_action_activity_stages` (
  `id_activity_stage` int(11) UNSIGNED NOT NULL,
  `activity_stage` varchar(450) NOT NULL,
  `color_code` varchar(450) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `order_stage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_action_activity_stages`
--

INSERT INTO `meo_action_activity_stages` (`id_activity_stage`, `activity_stage`, `color_code`, `added_on`, `updated_on`, `status`, `order_stage`) VALUES
(2, 'GHTT', '#FFA759', '2017-06-05 01:27:15', '2017-06-14 16:23:51', 'active', 2),
(3, 'RHGTDD', '#c9ff17', '2017-06-05 01:28:58', '2017-06-14 16:23:51', 'active', 3),
(4, 'ONGN5', '#EAFF30', '2017-06-08 19:39:15', '2017-06-14 16:23:51', 'active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meo_action_activity_status`
--

CREATE TABLE `meo_action_activity_status` (
  `id_activity_status` int(11) UNSIGNED NOT NULL,
  `activity_status` varchar(450) NOT NULL,
  `color_code` varchar(450) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_action_activity_status`
--

INSERT INTO `meo_action_activity_status` (`id_activity_status`, `activity_status`, `color_code`, `added_on`, `updated_on`, `status`, `order_status`) VALUES
(4, 'CFGVGBB', '#57ffd8', '2017-06-05 01:28:18', '2017-06-12 09:41:35', 'active', 2),
(5, 'HOLD', '#ebff36', '2017-06-09 08:25:30', '2017-06-12 09:41:35', 'active', 1),
(6, 'PENDING', '#3fff14', '2017-06-28 06:27:29', '0000-00-00 00:00:00', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meo_action_classification`
--

CREATE TABLE `meo_action_classification` (
  `order_classification` int(11) NOT NULL,
  `id_classification` int(11) NOT NULL,
  `classification` varchar(450) NOT NULL,
  `close_out` int(50) NOT NULL,
  `color_code` varchar(450) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_action_classification`
--

INSERT INTO `meo_action_classification` (`order_classification`, `id_classification`, `classification`, `close_out`, `color_code`, `added_on`, `updated_on`, `status`) VALUES
(3, 38, 'MC/NON CONFOTMITY23', 3, '#4ADBFF', '2017-05-24 11:37:54', '2017-06-11 15:37:44', 'inactive'),
(2, 39, 'LUCKNOW', 2, '#ff70a0', '2017-05-24 15:48:38', '2017-06-11 15:37:44', 'active'),
(5, 40, 'ASDFGHJ', 3, '#70ff7a', '2017-05-25 06:59:45', '2017-06-11 15:37:44', 'active'),
(6, 42, 'FINDING23', 5, '#70ff66', '2017-05-25 08:48:23', '2017-06-11 15:37:44', 'active'),
(7, 43, 'GHT', -8, '#b0ffcd', '2017-05-25 09:17:52', '2017-06-11 15:37:44', 'active'),
(9, 45, 'SINGSYS66', -7, '#edff78', '2017-05-25 09:25:26', '2017-06-11 15:37:44', 'active'),
(13, 49, 'KJFASB', 12, '#3bffc4', '2017-05-25 10:17:00', '2017-06-11 15:37:45', 'active'),
(14, 50, 'SDFGFTYYTY', 1, '#66a3ff', '2017-05-25 10:32:07', '2017-06-11 15:37:45', 'active'),
(0, 51, 'THY', 1, '#36ff5e', '2017-06-12 04:13:13', '0000-00-00 00:00:00', 'active'),
(0, 52, 'CXCX', 4, '#61ff6b', '2017-06-19 11:10:10', '0000-00-00 00:00:00', 'active'),
(0, 53, 'MNC', 6, '#8ffff0', '2017-07-04 07:11:03', '0000-00-00 00:00:00', 'active'),
(0, 54, 'NC', 5, '#daff5e', '2017-07-04 07:11:15', '0000-00-00 00:00:00', 'active'),
(0, 55, 'FINDING', 3, '#ff1f3d', '2017-07-04 07:12:08', '0000-00-00 00:00:00', 'active'),
(0, 56, 'OBSERVATION', 4, '#3d0738', '2017-07-04 07:12:57', '2017-07-04 12:43:14', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `meo_action_nature`
--

CREATE TABLE `meo_action_nature` (
  `id_nature` int(11) UNSIGNED NOT NULL,
  `nature` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `order_nature` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_action_nature`
--

INSERT INTO `meo_action_nature` (`id_nature`, `nature`, `status`, `added_on`, `updated_on`, `order_nature`) VALUES
(2, 'INVESTIGATION2', 'inactive', '2017-06-04 10:02:14', '2017-06-12 10:07:16', 1),
(3, 'FINDINGJ', 'active', '2017-06-09 07:26:15', '2017-06-12 10:07:16', 2);

-- --------------------------------------------------------

--
-- Table structure for table `meo_action_rank`
--

CREATE TABLE `meo_action_rank` (
  `id_rank` int(11) NOT NULL,
  `rank` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `order_ranks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_action_rank`
--

INSERT INTO `meo_action_rank` (`id_rank`, `rank`, `status`, `added_on`, `updated_on`, `order_ranks`) VALUES
(5, 'L5', 'inactive', '2017-05-23 17:47:56', '2017-06-12 09:57:10', 1),
(6, 'MASTER5', 'active', '2017-05-23 20:48:45', '2017-06-12 09:57:10', 2),
(7, 'SENIOR OFFICER6', 'active', '2017-05-23 20:48:53', '2017-06-12 09:57:10', 6),
(8, 'CHIEFOFFICERZ', 'active', '2017-05-23 20:49:03', '2017-06-12 09:57:10', 4),
(9, 'WORKER2', 'active', '2017-05-25 08:44:34', '2017-06-12 09:57:10', 5),
(10, 'R56GH', 'active', '2017-05-25 11:02:14', '2017-06-12 09:57:10', 7),
(11, 'SDFGHJ', 'active', '2017-06-09 06:57:42', '2017-06-12 09:57:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `meo_admin_section_accessibility`
--

CREATE TABLE `meo_admin_section_accessibility` (
  `id_group_access` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `view_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `modify_add_delete_status` enum('active','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_admin_section_accessibility`
--

INSERT INTO `meo_admin_section_accessibility` (`id_group_access`, `id_section`, `view_status`, `modify_add_delete_status`) VALUES
(6, 1, 'active', 'active'),
(6, 2, 'active', 'inactive'),
(6, 3, 'inactive', 'inactive'),
(6, 4, 'active', 'active'),
(6, 5, 'active', 'inactive'),
(4, 1, 'active', 'active'),
(4, 2, 'active', 'inactive'),
(4, 3, 'active', 'active'),
(4, 4, 'active', 'active'),
(4, 5, 'active', 'active'),
(7, 1, 'active', 'inactive'),
(7, 2, 'active', 'inactive'),
(7, 3, 'inactive', 'inactive'),
(7, 4, 'inactive', 'inactive'),
(7, 5, 'active', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `meo_atr_activity_updates`
--

CREATE TABLE `meo_atr_activity_updates` (
  `id_updates` int(11) NOT NULL,
  `id_action_item` int(11) NOT NULL,
  `updates` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_atr_vessels_add_action_item`
--

CREATE TABLE `meo_atr_vessels_add_action_item` (
  `id_action_item` int(11) NOT NULL,
  `id_classification` int(11) DEFAULT NULL,
  `id_org_group` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_department` int(11) NOT NULL,
  `id_vessel_name` int(11) NOT NULL,
  `id_meo_user` int(11) NOT NULL,
  `privacy_type` enum('public','private','','') NOT NULL,
  `car_num` varchar(455) NOT NULL,
  `id_nature` int(11) NOT NULL,
  `id_rank` int(11) NOT NULL,
  `issued_by` enum('department','vessel','','') NOT NULL,
  `issued_to` enum('department','vessel','','') NOT NULL,
  `shore_followup` int(11) NOT NULL,
  `shore_optionalname` varchar(455) NOT NULL,
  `issuedtorank_optionalname` varchar(455) NOT NULL,
  `issuedbyrank_optionalname` varchar(455) NOT NULL,
  `nc_observation_desc` text NOT NULL,
  `standard_system_code` text NOT NULL,
  `date_raised` datetime NOT NULL,
  `max_date` datetime NOT NULL,
  `target_date` datetime NOT NULL,
  `alarm_raise` int(11) NOT NULL,
  `root_cause` text NOT NULL,
  `corrective_action` text NOT NULL,
  `preventive_action` text NOT NULL,
  `date_raised1` datetime NOT NULL,
  `extend_date` datetime NOT NULL,
  `reason_ext` text NOT NULL,
  `id_activity_status` int(11) NOT NULL,
  `updates` text NOT NULL,
  `date_closure` datetime NOT NULL,
  `verification_type` enum('yes','no','','') NOT NULL,
  `closeout_remarks` text NOT NULL,
  `reason_rejection` text NOT NULL,
  `ver_date_closure` datetime NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `status` enum('active','inactive','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_atr_vessels_add_action_item`
--

INSERT INTO `meo_atr_vessels_add_action_item` (`id_action_item`, `id_classification`, `id_org_group`, `id_region`, `id_department`, `id_vessel_name`, `id_meo_user`, `privacy_type`, `car_num`, `id_nature`, `id_rank`, `issued_by`, `issued_to`, `shore_followup`, `shore_optionalname`, `issuedtorank_optionalname`, `issuedbyrank_optionalname`, `nc_observation_desc`, `standard_system_code`, `date_raised`, `max_date`, `target_date`, `alarm_raise`, `root_cause`, `corrective_action`, `preventive_action`, `date_raised1`, `extend_date`, `reason_ext`, `id_activity_status`, `updates`, `date_closure`, `verification_type`, `closeout_remarks`, `reason_rejection`, `ver_date_closure`, `added_on`, `updated_on`, `status`) VALUES
(200, 39, 17, 26, 7, 9, 11, 'public', 'ATR00000208', 2, 5, '', '', 7, '', '', '', '                SDFGH\n            ', '                                \n            WEFRGT', '2017-07-28 00:00:00', '2017-07-30 00:00:00', '2017-07-30 00:00:00', 4, 'SDRFG', 'ASDFG', 'ASDFG', '2017-07-28 00:00:00', '1970-01-01 00:00:00', 'SDFRGT', 4, '', '2017-07-22 00:00:00', 'yes', 'WERGTH', '', '2017-07-27 00:00:00', '2017-07-05 07:35:24', '2017-07-10 16:35:42', 'active'),
(201, 53, 17, 26, 7, 9, 11, 'public', 'ATR00000201', 2, 5, '', '', 7, '', '', '', '                \n            SDFGH', '                    SDFGTH\n        ', '2017-07-29 00:00:00', '2017-08-04 00:00:00', '2017-08-04 00:00:00', 4, 'RTGYJK', 'SADFGTHY', 'SADFGTHYJU', '2017-07-29 00:00:00', '2017-07-21 00:00:00', 'WERTY', 4, '', '2017-07-21 00:00:00', 'yes', 'WERTYU', '', '2017-07-07 00:00:00', '2017-07-05 07:36:29', '0000-00-00 00:00:00', 'active'),
(202, 55, 0, 0, 0, 0, 0, 'private', 'ATR00000202', 2, 5, '', '', 7, '', '', '', '                \n            ZSDFGHJUK', '                    ZXSDFGHJ\n        ', '2017-07-28 00:00:00', '2017-07-31 00:00:00', '2017-07-31 00:00:00', 3, 'ASDFGHJ', 'ASDFGH', 'ERTYJU', '2017-07-28 00:00:00', '2017-07-28 00:00:00', 'EEE', 4, '', '2017-07-28 00:00:00', 'yes', 'ERTY', '', '2017-07-13 00:00:00', '2017-07-05 07:38:45', '2017-07-07 21:33:09', 'active'),
(203, 54, 17, 26, 7, 9, 11, 'public', 'ATR00000203', 2, 5, '', '', 7, '', '', '', '                \n            SSCSXCSD', '                    \n        XXSX', '2017-07-07 00:00:00', '2017-07-12 00:00:00', '2017-07-12 00:00:00', 3, 'FFF', 'FCDSFCDF', 'FDFDFDWF', '2017-07-07 00:00:00', '2017-07-28 00:00:00', 'FDFSF', 4, '', '2017-07-28 00:00:00', 'yes', 'FGHTHTRHTG', '', '2017-07-21 00:00:00', '2017-07-05 10:07:08', '0000-00-00 00:00:00', 'active'),
(204, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000208', 2, 5, '', '', 7, '', '', '', '                \n            ASDFGRTHYUK', '                                \n            ASDFGH', '2017-07-06 00:00:00', '2017-07-09 00:00:00', '2017-07-09 00:00:00', 4, 'ASDFRGT', 'XSDFG', 'XDFGH', '2017-07-06 00:00:00', '1970-01-01 00:00:00', 'SDFG', 4, '', '2017-07-27 00:00:00', 'yes', 'ZXSDCVF', '', '2017-07-12 00:00:00', '2017-07-06 10:34:31', '2017-07-10 16:40:13', 'active'),
(205, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000205', 2, 5, '', '', 7, '', '', '', '                \n            DFDSF', 'VDSVDSF\n            ', '2017-07-15 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 4, 'SDEFRGH', 'ASDFG', 'SDFG', '2017-07-15 00:00:00', '2017-07-21 00:00:00', 'SDFG', 4, '', '2017-07-14 00:00:00', 'yes', 'DEFG', '', '2017-07-14 00:00:00', '2017-07-06 10:40:57', '2017-07-07 22:25:23', 'active'),
(206, 39, 0, 0, 0, 0, 0, 'private', 'ATR00000206', 2, 5, '', '', 7, '', '', '', '                \n            X X', '                                  \n            DDDD', '2017-07-14 00:00:00', '2017-07-16 00:00:00', '2017-07-16 00:00:00', 5, 'DADD', 'WDWDWS', 'DADD', '2017-07-14 00:00:00', '1970-01-01 00:00:00', 'BFDGD', 4, '', '2017-07-20 00:00:00', 'yes', 'VCVDV', '', '2017-07-12 00:00:00', '2017-07-07 17:05:21', '0000-00-00 00:00:00', 'active'),
(207, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000207', 2, 5, '', '', 7, '', '', '', '                \n            WDWDWQ', '                                \n            DFCDF', '2017-07-14 00:00:00', '2017-07-17 00:00:00', '2017-07-17 00:00:00', 3, 'EWFWREDF', 'FEWEFWR', 'WFWERF', '2017-07-14 00:00:00', '1970-01-01 00:00:00', 'EFEWFEW', 4, '', '2017-07-21 00:00:00', 'yes', 'FREWGE', '', '2017-07-21 00:00:00', '2017-07-10 06:37:31', '0000-00-00 00:00:00', 'active'),
(208, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000208', 2, 5, '', '', 7, '', '', '', '                \n            SXDCFGHJK', '                                ASDFGH\n            ', '2017-07-21 00:00:00', '2017-07-24 00:00:00', '2017-07-24 00:00:00', 4, 'ASDFG', 'ASDFGH', 'ASDFGH', '2017-07-21 00:00:00', '1970-01-01 00:00:00', 'WERGT', 4, '', '2017-07-22 00:00:00', 'yes', 'ASDFRGTHY', '', '2017-07-20 00:00:00', '2017-07-10 11:11:26', '0000-00-00 00:00:00', 'active'),
(209, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000209', 2, 5, '', '', 7, '', '', '', '                \n            SDFG', '                                AADSDSAD\n            ', '2017-07-08 00:00:00', '2017-07-11 00:00:00', '2017-07-11 00:00:00', 3, 'FDCDFD', 'ASXASDS', 'SDCSA', '2017-07-08 00:00:00', '1970-01-01 00:00:00', 'DSFSF', 4, '', '2017-07-20 00:00:00', 'yes', 'SSDSD', '', '2017-07-03 00:00:00', '2017-07-10 11:12:49', '0000-00-00 00:00:00', 'active'),
(210, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000210', 2, 5, '', '', 7, '', '', '', '                    ASDFG\n                ', '                                        SDFG\n                ', '2017-07-19 00:00:00', '2017-07-22 00:00:00', '2017-07-22 00:00:00', 4, 'ZASDFG', 'XSDFG', 'ASDF', '2017-07-19 00:00:00', '1970-01-01 00:00:00', 'ASDFGB', 4, '', '2017-07-19 00:00:00', 'yes', 'SCSFCS', '', '2017-07-18 00:00:00', '2017-07-10 12:43:07', '0000-00-00 00:00:00', 'active'),
(211, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000211', 2, 5, '', '', 7, '', '', '', '                    SDFGHJ\n                ', '                    AZSDFGH                    \n                ', '2017-07-21 00:00:00', '2017-07-24 00:00:00', '2017-07-24 00:00:00', 4, 'ASDFG', 'ZSDFG', 'ASDFG', '2017-07-21 00:00:00', '1970-01-01 00:00:00', '', 4, '', '2017-07-12 00:00:00', 'no', '', 'GHJKL', '2017-07-20 00:00:00', '2017-07-10 12:47:53', '0000-00-00 00:00:00', 'active'),
(212, 38, 17, 26, 7, 9, 11, 'public', 'ATR00000212', 2, 5, '', '', 7, '', '', '', '                    ASDFG\n                ', '                    ZSDFGH                    \n                ', '2017-07-22 00:00:00', '2017-07-25 00:00:00', '2017-07-25 00:00:00', 3, 'ASDFG', 'ZSDF', 'ZASDFG', '2017-07-22 00:00:00', '1970-01-01 00:00:00', '', 4, '', '2017-07-22 00:00:00', 'yes', 'DFGHJ', '', '2017-07-26 00:00:00', '2017-07-10 13:04:19', '0000-00-00 00:00:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `meo_atr_vessels_findings`
--

CREATE TABLE `meo_atr_vessels_findings` (
  `id_finding_item` int(11) NOT NULL,
  `id_classification` int(11) DEFAULT NULL,
  `id_org_group` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_department` int(11) NOT NULL,
  `id_vessel_name` int(11) NOT NULL,
  `id_meo_user` int(11) NOT NULL,
  `privacy_type` enum('public','private','','') NOT NULL,
  `car_num` varchar(455) NOT NULL,
  `id_nature` int(11) NOT NULL,
  `id_rank` int(11) NOT NULL,
  `issued_by` enum('department','vessel','','') NOT NULL,
  `issued_to` enum('department','vessel','','') NOT NULL,
  `shore_followup` int(11) NOT NULL,
  `shore_optionalname` varchar(455) NOT NULL,
  `issuedtorank_optionalname` varchar(455) NOT NULL,
  `issuedbyrank_optionalname` varchar(455) NOT NULL,
  `nc_observation_desc` text NOT NULL,
  `standard_system_code` text NOT NULL,
  `date_raised` datetime NOT NULL,
  `max_date` datetime NOT NULL,
  `target_date` datetime NOT NULL,
  `alarm_raise` int(11) NOT NULL,
  `root_cause` text NOT NULL,
  `corrective_action` text NOT NULL,
  `preventive_action` text NOT NULL,
  `date_raised1` datetime NOT NULL,
  `extend_date` datetime NOT NULL,
  `reason_ext` text NOT NULL,
  `id_activity_status` int(11) NOT NULL,
  `updates` text NOT NULL,
  `date_closure` datetime NOT NULL,
  `verification_type` enum('yes','no','','') NOT NULL,
  `closeout_remarks` text NOT NULL,
  `ver_date_closure` datetime NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `status` enum('active','inactive','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_discussion`
--

CREATE TABLE `meo_capex_discussion` (
  `id_capex_discussion` int(11) NOT NULL,
  `id_capex_request` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `discussion_message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_discussion_attachment`
--

CREATE TABLE `meo_capex_discussion_attachment` (
  `id_capex_discussion_attachment` int(11) NOT NULL,
  `id_capex_discussion` int(11) NOT NULL,
  `discussion_attachment` varchar(400) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_discussion_image_attachment`
--

CREATE TABLE `meo_capex_discussion_image_attachment` (
  `id_capex_discussion_image` int(11) NOT NULL,
  `id_capex_discussion` text NOT NULL,
  `discussion_image` varchar(500) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_discussion_link_attachment`
--

CREATE TABLE `meo_capex_discussion_link_attachment` (
  `id_capex_discussion_link` int(11) NOT NULL,
  `id_capex_discussion` int(11) NOT NULL,
  `discussion_link` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_discussion_notifiers`
--

CREATE TABLE `meo_capex_discussion_notifiers` (
  `id_capex_notifier` int(11) NOT NULL,
  `id_capex_discussion` int(11) NOT NULL,
  `notify_to` int(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_request`
--

CREATE TABLE `meo_capex_request` (
  `id_capex_request` int(11) NOT NULL,
  `request_status` enum('approved','rejected') DEFAULT NULL,
  `requester_id` int(11) NOT NULL,
  `id_meo_user` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `reason_for_vendor_chosen` text,
  `vendor_address_details` text,
  `payment_terms_in_days` int(5) NOT NULL,
  `billing_entity_type` enum('vessel','department','region') DEFAULT 'vessel',
  `billing_entity_id` varchar(200) DEFAULT NULL,
  `id_claim` int(5) DEFAULT NULL COMMENT 'expenditure id for capex',
  `expenditure_desc` text NOT NULL,
  `completion_date` datetime DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `contract_currency` int(5) NOT NULL,
  `contract_amt` decimal(15,2) DEFAULT NULL,
  `amt_in_usd` decimal(15,2) DEFAULT NULL,
  `project_in_budget` enum('yes','no') NOT NULL,
  `months_to_ammoritize` int(5) DEFAULT NULL,
  `budget_allocated` decimal(15,2) DEFAULT NULL,
  `remarks_in_expenditure` text NOT NULL,
  `status` enum('draft','submitted') NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `io_no` varchar(50) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `ppe_no` varchar(50) DEFAULT NULL,
  `finanace_gl` int(11) DEFAULT NULL,
  `po_no` varchar(50) DEFAULT NULL,
  `scm_pic` varchar(50) DEFAULT NULL,
  `date_for_finanace` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_request_approvers`
--

CREATE TABLE `meo_capex_request_approvers` (
  `id_capex_request_approvers` int(11) NOT NULL,
  `id_capex_request` int(11) NOT NULL,
  `approvers_id` int(11) NOT NULL,
  `id_designation` int(11) DEFAULT NULL,
  `sequence` int(5) NOT NULL,
  `approval_status` enum('approved','rejected') DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `approval_time` datetime DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_request_privacy`
--

CREATE TABLE `meo_capex_request_privacy` (
  `id_capex_privacy` int(11) NOT NULL,
  `id_capex_request` int(11) NOT NULL,
  `privacy_type` enum('public','private') NOT NULL DEFAULT 'public',
  `personnel_ids` varchar(250) DEFAULT NULL,
  `group_ids` varchar(250) DEFAULT NULL,
  `region_ids` varchar(250) DEFAULT NULL,
  `dept_ids` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_variations`
--

CREATE TABLE `meo_capex_variations` (
  `id_capex_variation` int(11) NOT NULL,
  `id_capex_request` int(11) NOT NULL,
  `variation_currency` int(5) NOT NULL,
  `variation_cost` decimal(15,2) NOT NULL,
  `reason_for_variation` text NOT NULL,
  `date_raised` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_change_log_entity`
--

CREATE TABLE `meo_change_log_entity` (
  `action` enum('add','update','delete') NOT NULL,
  `modified_by` varchar(250) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_section` enum('admin','actiontracker') NOT NULL DEFAULT 'admin',
  `change_section` enum('shore_address','organisation_chart','groupbu','department','organisation_group','shore_personnel','vessel','region','main_vessel_type','vessel_type','vessel_name','vessel_region','3_vessel_type','3_vessel_name','group_name','meo_users','client_users','group_rights','user_rights','client_setup','email_content','action_classification','action_ranks','action_group_rights','action_nature','action_activity_status','action_activity_stages','action_user_rights','action_vessels_rights','action_client_rights') NOT NULL,
  `change_log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_change_log_entity`
--

INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-06 08:12:26', 'admin', 'shore_address', 'shore region now contain value SINGAPORE<br>address now contain value SINGSYS SERVICES PTE LTD<br>full address now contain value 1 NORTH BRIDGE ROAD #17-10 HIGH STREET CENTRE, SINGAPORE (179094)<br>'),
('add', 'ADMIN', '2017-01-06 08:13:42', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value LUCKNOW, UTTAR PRADESH, INDIA<br>full address now contain value SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)<br>'),
('add', 'ADMIN', '2017-01-06 08:37:56', 'admin', 'organisation_chart', 'chart title now contain value ORG CHART OVERVIEW<br>status now contain value Active<br>image url now contain value OrgChart_1483769276.pdf<br>'),
('add', 'ADMIN', '2017-01-06 08:41:42', 'admin', 'groupbu', 'group bu name now contain value GROUP BU 1<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-06 08:41:54', 'admin', 'groupbu', 'group bu name now contain value GROUP BU 2<br>group bu order now contain value 2<br>'),
('add', 'ADMIN', '2017-01-06 08:42:05', 'admin', 'groupbu', 'group bu name now contain value GROUP BU 3<br>group bu order now contain value 3<br>'),
('add', 'ADMIN', '2017-01-06 08:44:44', 'admin', 'region', 'id group bu  now contain value GROUP BU 1<br>region title now contain value GROUP BU 1 REGION 1<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-06 08:44:52', 'admin', 'region', 'id group bu  now contain value GROUP BU 1<br>region title now contain value GROUP BU 1 REGION 2<br>group region order now contain value 2<br>'),
('add', 'ADMIN', '2017-01-06 08:45:03', 'admin', 'region', 'id group bu  now contain value GROUP BU 2<br>region title now contain value GROUP BU 2 REGION 1<br>group region order now contain value 3<br>'),
('add', 'ADMIN', '2017-01-06 08:45:16', 'admin', 'region', 'id group bu  now contain value GROUP BU 2<br>region title now contain value GROUP BU 2 REGION 2<br>group region order now contain value 4<br>'),
('add', 'ADMIN', '2017-01-06 08:45:26', 'admin', 'region', 'id group bu  now contain value GROUP BU 3<br>region title now contain value GROUP BU 3 REGION 1<br>group region order now contain value 5<br>'),
('add', 'ADMIN', '2017-01-06 08:45:36', 'admin', 'region', 'id group bu  now contain value GROUP BU 3<br>region title now contain value GROUP BU 3 REGION 2<br>group region order now contain value 6<br>'),
('add', 'ADMIN', '2017-01-06 08:51:45', 'admin', 'organisation_group', 'id region now contain value GROUP BU 1 REGION 1<br>org group name now contain value GRP 1 REG 1 ORG 1<br>member name now contain value ORG1 MEMBER1; ORG1 MEMBER2; <br>member email now contain value ORG1@MEMBER1.COM; ORG1@MEMBER2.COM; <br>'),
('add', 'ADMIN', '2017-01-06 08:57:58', 'admin', 'organisation_group', 'id region now contain value GROUP BU 2 REGION 2<br>org group name now contain value GRP 2 REG 2 ORG 2<br>member name now contain value ORG2 MEMBER1; ORG2 MEMBER2; <br>member email now contain value ORG2@MEMBER1.COM; ORG2@MEMBER2.COM; <br>'),
('add', 'ADMIN', '2017-01-06 08:58:39', 'admin', 'organisation_group', 'id region now contain value GROUP BU 3 REGION 1<br>org group name now contain value GRP 2 REG 1 ORG 3<br>member name now contain value ORG3 MEMBER1; ORG3 MEMBER2; <br>member email now contain value ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>'),
('add', 'ADMIN', '2017-01-06 09:06:21', 'admin', 'group_name', 'group name now contain value GROUP NAME 1<br>group description now contain value GROUP NAME 1<br>'),
('add', 'ADMIN', '2017-01-06 09:06:34', 'admin', 'group_name', 'group name now contain value GROUP NAME 2<br>group description now contain value GROUP NAME 2<br>'),
('add', 'ADMIN', '2017-01-06 09:06:46', 'admin', 'group_name', 'group name now contain value GROUP NAME 3<br>group description now contain value GROUP NAME 3<br>'),
('add', 'ADMIN', '2017-01-06 09:09:04', 'admin', 'meo_users', 'user id now contain value MEOUSER1<br>user full name now contain value RACHIT<br>user email now contain value RACHIT@SINGSYS.COM<br>staff client now contain value MEO CLIENT<br>designation now contain value CEO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 09:11:24', 'admin', 'meo_users', 'user id now contain value MEOUSER2<br>user full name now contain value MANISH<br>user email now contain value MANISHMAHANT@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 09:18:22', 'admin', 'client_users', 'client user id now contain value CLIENTUSER1<br>client user full name now contain value ABHAY<br>client email id now contain value ABHAY@SINGSYS.COM<br>id region now contain value GROUP BU 3 REGION 1<br>company now contain value SINGSYS<br>designation now contain value CEO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 09:21:12', 'admin', 'client_users', 'client user id now contain value CLIENTUSER2<br>client user full name now contain value ARINDAM<br>client email id now contain value ARINDAM@SINGSYS.COM<br>id region now contain value GROUP BU 1 REGION 2<br>company now contain value SINGSYS PTE LTD<br>designation now contain value COO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 09:24:35', 'admin', 'department', 'id region now contain value GROUP BU 1 REGION 1<br>department name now contain value DEPARTMENT 1<br>members now contain value RACHIT; MANISH; <br>'),
('add', 'ADMIN', '2017-01-06 09:28:38', 'admin', 'department', 'id region now contain value GROUP BU 2 REGION 1<br>department name now contain value DEPARTMENT 2<br>members now contain value RACHIT; <br>'),
('add', 'ADMIN', '2017-01-06 09:28:50', 'admin', 'department', 'id region now contain value GROUP BU 3 REGION 1<br>department name now contain value DEPARTMENT 3<br>members now contain value MANISH; <br>'),
('add', 'ADMIN', '2017-01-06 09:49:30', 'admin', 'group_rights', 'GROUP NAME 1 Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-01-06 10:02:57', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2 groups</li><li> Modify is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2; RACHIT; DEPARTMENT 1; DEPARTMENT 3 groups</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2; RACHIT; DEPARTMENT 1; DEPARTMENT 3; GROUP BU 1 REGION 1; GROUP BU 2 REGION 2 groups</li><li> Modify is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2; RACHIT; DEPARTMENT 1; DEPARTMENT 3; GROUP BU 1 REGION 1; GROUP BU 2 REGION 2; GROUP BU 2 REGION 2; GROUP BU 3 REGION 1 groups</li></ul></li></ol>'),
('add', 'ADMIN', '2017-01-06 10:13:08', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-01-06 11:05:56', 'admin', 'user_rights', 'id meo user now contain value MANISH<br>id group now contain value GROUP NAME 3<br>Contacts / Shore Personnel for view is restricted with access titles RACHIT; DEPARTMENT 3<br>Contacts / Shore Personnel for modify is restricted with access titles MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-06 11:12:46', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value PROJECT 1<br>id admin group now contain value GROUP NAME 3<br>meo pic now contain value MANISH; <br>'),
('add', 'ADMIN', '2017-01-06 11:20:31', 'admin', 'main_vessel_type', 'type title  now contain value VESSEL TYPE 1<br>'),
('add', 'ADMIN', '2017-01-06 11:20:46', 'admin', 'main_vessel_type', 'type title  now contain value VESSEL TYPE 2<br>'),
('add', 'ADMIN', '2017-01-06 11:20:53', 'admin', 'main_vessel_type', 'type title  now contain value VESSEL TYPE 3<br>'),
('add', 'ADMIN', '2017-01-06 11:23:48', 'admin', 'vessel_type', 'id main vessel type  now contain value VESSEL TYPE 1<br>vessel type  now contain value CHILD VESSEL TYPE 1<br>'),
('add', 'ADMIN', '2017-01-06 11:24:02', 'admin', 'vessel_type', 'id main vessel type  now contain value VESSEL TYPE 3<br>vessel type  now contain value CHILD VESSEL TYPE 2<br>'),
('add', 'ADMIN', '2017-01-06 11:24:34', 'admin', 'vessel_type', 'id main vessel type  now contain value VESSEL TYPE 2<br>vessel type  now contain value CHILD VESSEL TYPE 3<br>'),
('add', 'ADMIN', '2017-01-06 11:32:19', 'admin', 'vessel_name', 'vesselID  now contain value VESSELID1<br>vessel name  now contain value VESSEL1<br>id main vessel type  now contain value VESSEL TYPE 1<br>id vessel type  now contain value CHILD VESSEL TYPE 1<br>'),
('add', 'ADMIN', '2017-01-06 11:33:46', 'admin', 'vessel_name', 'vesselID  now contain value VESSELID2<br>vessel name  now contain value VESSEL2<br>id main vessel type  now contain value VESSEL TYPE 3<br>id vessel type  now contain value CHILD VESSEL TYPE 2<br>'),
('add', 'ADMIN', '2017-01-06 11:34:16', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 1<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-06 11:34:30', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 2<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-06 11:37:57', 'admin', '3_vessel_type', 'vessel type name now contain value 3rdPartyvessel1<br>'),
('update', 'ADMIN', '2017-01-06 11:38:07', 'admin', '3_vessel_type', 'vessel type name updates from 3rdPartyvessel1 to 3RD PARTY VESSEL 1<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-06 11:38:14', 'admin', '3_vessel_type', 'vessel type name now contain value 3RD PARTY VESSEL 2<br>'),
('add', 'ADMIN', '2017-01-06 11:38:22', 'admin', '3_vessel_type', 'vessel type name now contain value 3RD PARTY VESSEL 3<br>'),
('add', 'ADMIN', '2017-01-06 11:41:28', 'admin', '3_vessel_name', 'vessel name now contain value 3RD PARTY VESSEL NAME1<br>id third vessel type now contain value 3RD PARTY VESSEL 1<br>remarks now contain value VESSEL REMARK<br>'),
('add', 'ADMIN', '2017-01-06 11:42:36', 'admin', '3_vessel_name', 'vessel name now contain value 3RD PARTY VESSEL NAME2<br>id third vessel type now contain value 3RD PARTY VESSEL 2<br>remarks now contain value VESSEL REMARK<br>'),
('update', 'ADMIN', '2017-01-06 13:16:40', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 3 to GROUP NAME 3<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from RACHIT; DEPARTMENT 3 to RACHIT; DEPARTMENT 3<br>Contacts / Shore Personnel for modify is changed from restricted to restricted and access titles changed from MANISH; DEPARTMENT 2 to MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is changed from all to restricted and access titles changed from none to VESSEL2; GROUP BU 1 REGION 1<br>Contact / Vessels (MEO) for modify is changed from all to restricted and access titles changed from none to VESSEL1; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to restricted and access titles changed from none to 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2<br>Contacts / 3rd Party Vessels for modify is changed from all to restricted and access titles changed from none to 3RD PARTY VESSEL NAME2; 3RD PARTY VESSEL 1<br>Contacts / Organisation Groups for view is changed from all to restricted and access titles changed from none to none<br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-07 18:22:50', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  PROJECT 1 to PROJECT 1<br>id admin group changed from  GROUP NAME 3 to GROUP NAME 1<br>meo pic changed from  MANISH;  to RACHIT; <br>'),
('add', 'ADMIN', '2017-01-07 18:24:31', 'admin', 'user_rights', 'id meo user now contain value RACHIT<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-01-07 18:26:49', 'admin', 'client_setup', 'id client user changed from  ABHAY to ARINDAM<br>project name changed from  PROJECT 1 to PROJECT 1<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  RACHIT;  to RACHIT; <br>'),
('add', 'ADMIN', '2017-01-07 18:27:08', 'admin', 'user_rights', 'id meo user now contain value MANISH<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-07 18:27:38', 'admin', 'client_setup', 'id client user now contain value ARINDAM<br>project name now contain value TEST 2<br>id admin group now contain value GROUP NAME 1<br>meo pic now contain value MANISH; <br>'),
('add', 'ADMIN', '2017-01-07 18:28:07', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value TEST 2<br>id admin group now contain value GROUP NAME 1<br>meo pic now contain value MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 18:28:36', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 18:28:53', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from  to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from  to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from  to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from  to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-07 18:29:23', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 18:29:59', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 18:40:32', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 18:54:03', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 19:01:52', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 19:19:57', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 19:41:12', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 19:55:49', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('add', 'ADMIN', '2017-01-07 21:26:27', 'admin', 'vessel_name', 'vesselID  now contain value VESSELID3<br>vessel name  now contain value VESSEL3<br>id main vessel type  now contain value VESSEL TYPE 2<br>id vessel type  now contain value CHILD VESSEL TYPE 3<br>'),
('add', 'ADMIN', '2017-01-07 21:26:43', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 1<br>id vessel name  now contain value VESSEL3<br>'),
('update', 'ADMIN', '2017-01-07 21:27:40', 'admin', 'vessel_region', 'id region updates from GROUP BU 1 REGION 1 to GROUP BU 1 REGION 1<br>id vessel name updates from VESSEL3;  to VESSEL3; VESSEL1; VESSEL2; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-07 21:28:39', 'admin', 'vessel_region', 'id region updates from GROUP BU 1 REGION 2 to GROUP BU 1 REGION 2<br>id vessel name updates from VESSEL1; VESSEL2;  to VESSEL1; VESSEL2; VESSEL3; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-07 21:28:59', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 2<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-07 23:11:03', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 23:34:20', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to restricted and access titles changed from none to VESSEL1; <br>Contact / Vessels (MEO) for modify is changed from all to restricted and access titles changed from none to VESSEL1; <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-07 23:35:27', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from VESSEL1;  to VESSEL2; <br>Contact / Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from VESSEL1;  to VESSEL1; <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'MANISH', '2017-01-08 01:03:18', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from VESSEL2;  to VESSEL2; <br>Contact / Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from VESSEL1;  to VESSEL1; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-08 01:56:44', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 01:57:44', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 02:28:07', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to restricted and access titles changed from none to MANISH; DEPARTMENT 1<br>Contacts / Shore Personnel for modify is changed from all to restricted and access titles changed from none to MANISH; DEPARTMENT 1<br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from VESSEL2;  to VESSEL2; <br>Contact / Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from VESSEL1; GROUP BU 1 REGION 2 to VESSEL1; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to restricted and access titles changed from none to none<br>Contacts / 3rd Party Vessels for modify is changed from all to restricted and access titles changed from none to none<br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-08 12:45:17', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 12:52:27', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 12:55:29', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 12:59:19', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>Contacts / Shore Personnel for view is changed fromrestricted to restricted and access titles changed from RACHIT; DEPARTMENT 1 to RACHIT; DEPARTMENT 1<br>Contacts / Shore Personnel for modify is changed fromrestricted to restricted and access titles changed from MANISH; DEPARTMENT 2 to MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from VESSEL1; GROUP BU 1 REGION 2 to VESSEL1; GROUP BU 1 REGION 2<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from VESSEL2; GROUP BU 1 REGION 2 to VESSEL2; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed fromrestricted to restricted and access titles changed from GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1 to GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1<br>Contacts / Organisation Groups for modify is changed fromrestricted to restricted and access titles changed from GRP 2 REG 2 ORG 2; GROUP BU 2 REGION 2 to GRP 2 REG 2 ORG 2; GRP 2 REG 1 ORG 3; GROUP BU 2 REGION 2<br>'),
('update', 'ADMIN', '2017-01-08 13:00:01', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>Contacts / Shore Personnel for view is changed fromrestricted to restricted and access titles changed from RACHIT; DEPARTMENT 1 to RACHIT; DEPARTMENT 1<br>Contacts / Shore Personnel for modify is changed fromrestricted to restricted and access titles changed from MANISH; DEPARTMENT 2 to MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from VESSEL1; GROUP BU 1 REGION 2 to VESSEL1; GROUP BU 1 REGION 2<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from VESSEL2; GROUP BU 1 REGION 2 to VESSEL2; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed fromrestricted to restricted and access titles changed from GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1 to GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1<br>Contacts / Organisation Groups for modify is changed fromrestricted to restricted and access titles changed from GRP 2 REG 2 ORG 2; GRP 2 REG 1 ORG 3; GROUP BU 2 REGION 2 to GRP 2 REG 2 ORG 2; GRP 2 REG 1 ORG 3; GROUP BU 2 REGION 2<br>'),
('update', 'ADMIN', '2017-01-08 13:01:04', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-01-08 22:57:12', 'admin', 'meo_users', 'user id now contain value 296<br>user full name now contain value BHARATRAJ MEO USER<br>user email now contain value BHARATRAJ@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QUALITY CONTROL ENGINEER<br>expiry date now contain value 2017-12-01<br>'),
('add', 'ADMIN', '2017-01-08 22:58:39', 'admin', 'client_users', 'client user id now contain value 00296<br>client user full name now contain value BHARATRAJ CLIENT USER<br>client email id now contain value BHARATRAJ+1@SINGSYS.COM<br>id region now contain value GROUP BU 1 REGION 1<br>company now contain value SING SYS<br>designation now contain value QUALITY CONTROL ENGINEER<br>expiry date now contain value 2017-12-31<br>'),
('update', 'ADMIN', '2017-01-08 23:17:11', 'admin', 'groupbu', 'group bu name updates from GROUP BU 1 to HELLO GROUP<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-08 23:17:58', 'admin', 'region', 'id group bu updates from HELLO GROUP to HELLO GROUP<br>region title updates from GROUP BU 1 REGION 1 to HELLO TEST<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-08 23:18:26', 'admin', 'department', 'id region updates from HELLO TEST to HELLO TEST<br>department name updates from DEPARTMENT 1 to DEPARTMENT 1<br>members updates from RACHIT; MANISH;  to RACHIT; MANISH; BHARATRAJ MEO USER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-08 23:23:10', 'admin', 'organisation_group', 'id region now contain value HELLO TEST<br>org group name now contain value HELL<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('delete', 'ADMIN', '2017-01-09 00:58:54', 'admin', 'user_rights', 'user rights in contact section for user \"RACHIT\" has been deleted'),
('delete', 'ADMIN', '2017-01-09 00:59:04', 'admin', 'user_rights', 'user rights in contact section for user \"RACHIT\" has been deleted'),
('add', 'ADMIN', '2017-01-09 00:59:29', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ MEO USER<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-01-09 01:09:27', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-09 01:38:29', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 01:41:33', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('add', 'ADMIN', '2017-01-09 02:46:30', 'admin', 'vessel_name', 'vesselID  now contain value 123<br>vessel name  now contain value TEST VESSEL<br>id main vessel type  now contain value VESSEL TYPE 1<br>id vessel type  now contain value CHILD VESSEL TYPE 1<br>'),
('update', 'ADMIN', '2017-01-09 02:47:33', 'admin', 'vessel_region', 'id region updates from HELLO TEST to HELLO TEST<br>id vessel name updates from VESSEL3; VESSEL1; VESSEL2;  to TEST VESSEL; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-09 03:22:21', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 03:24:42', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('delete', 'ADMIN', '2017-01-09 03:31:10', 'admin', 'organisation_group', 'GRP 1 REG 1 ORG 1 deleted'),
('update', 'ADMIN', '2017-01-09 04:16:10', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 04:17:35', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('delete', 'ADMIN', '2017-01-09 21:08:11', 'admin', 'user_rights', 'user rights in contact section for user \"RACHIT\" has been deleted'),
('add', 'ADMIN', '2017-01-09 21:08:59', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ MEO USER<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-01-09 21:32:20', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-09 21:35:28', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to restricted and access titles changed from none to BHARATRAJ MEO USER; <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-09 21:37:41', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from restricted to all <br>Contacts / Shore Personnel for modify is changed from all to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-09 21:38:10', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from restricted to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-09 21:41:41', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 22:00:53', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-09 22:21:37', 'admin', 'organisation_chart', 'chart title updates from ORG CHART OVERVIEW to ORG CHART OVERVIEW<br>status updates from Active to Active<br>image url updates from OrgChart_1483769276.pdf to OrgChart_1484029297.pdf<br>'),
('add', 'ADMIN', '2017-01-10 02:26:19', 'admin', 'organisation_group', 'id region now contain value HELLO TEST<br>org group name now contain value TEST GROUP<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-01-10 02:28:07', 'admin', 'shore_address', 'shore region now contain value HONG KONG<br>address now contain value TSIM SHA TSUI, HONG KONG<br>full address now contain value 26, NATHAN ROAD<br>'),
('add', 'ADMIN', '2017-01-10 02:33:32', 'admin', 'organisation_group', 'id region now contain value HELLO TEST<br>org group name now contain value SINGSYS PTE LTD<br>member name now contain value PANKAJ; <br>member email now contain value PANKAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-10 17:11:03', 'admin', 'shore_address', 'shore region updates from SINGAPORE to SINGAPORE<br>address updates from SINGSYS SERVICES PTE LTD to HarbourFront Tower Two Harbourfront Place Singapore<br>full address updates from 1 NORTH BRIDGE ROAD #17-10 HIGH STREET CENTRE, SINGAPORE (179094) to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-10 17:11:08', 'admin', 'shore_address', 'shore region updates from SINGAPORE to SINGAPORE<br>address updates from HarbourFront Tower Two Harbourfront Place Singapore to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-10 17:11:40', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from LUCKNOW, UTTAR PRADESH, INDIA to LUCKNOW, UTTAR PRADESH, INDIASING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)<br>full address updates from SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA) to SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-11 02:22:46', 'admin', 'meo_users', 'user id now contain value 7410<br>user full name now contain value BHARATRAJ1<br>user email now contain value BHARATRAJ+11@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TESING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-12 19:01:55', 'admin', 'meo_users', 'user id now contain value 1<br>user full name now contain value REKHA NANDWANI<br>user email now contain value REKHA.NANDWANI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value KNOWLEDGE ANALYST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-12 19:04:32', 'admin', 'meo_users', 'user id now contain value 1232144543<br>user full name now contain value JOVY CHAY <br>user email now contain value JOVY.CHAY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - KNOWLEDGE MANAGEMENT <br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-12 19:11:25', 'admin', 'main_vessel_type', 'type title updates from VESSEL TYPE 1 to DP/ SUBSEA FLEET<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-12 19:11:34', 'admin', 'main_vessel_type', 'type title updates from VESSEL TYPE 2 to OFFSHORE SUPPORT VESSELS<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-12 19:11:42', 'admin', 'main_vessel_type', 'type title updates from VESSEL TYPE 3 to CREWBOATS<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-12 19:11:52', 'admin', 'main_vessel_type', 'type title  now contain value NEAR SHORE VESSELS<br>'),
('add', 'ADMIN', '2017-01-12 19:12:00', 'admin', 'main_vessel_type', 'type title  now contain value BARGES<br>'),
('update', 'ADMIN', '2017-01-12 19:13:43', 'admin', 'vessel_type', 'id main vessel type updates from CREWBOATS to CREWBOATS<br>vessel type updates from CHILD VESSEL TYPE 2 to CREW / UTILITY VESSEL<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-12 19:14:02', 'admin', 'vessel_type', 'id main vessel type updates from DP/ SUBSEA FLEET to DP/ SUBSEA FLEET<br>vessel type updates from CHILD VESSEL TYPE 1 to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-12 19:15:10', 'admin', 'vessel_type', 'id main vessel type  now contain value BARGES<br>vessel type  now contain value ACCOMMODATION BARGE<br>'),
('add', 'ADMIN', '2017-01-12 19:15:29', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value ACCOMMODATION WORKBOAT<br>'),
('update', 'ADMIN', '2017-01-12 19:16:00', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from CHILD VESSEL TYPE 3 to AHT / AHTS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-12 19:18:55', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from ACCOMMODATION WORKBOAT to ACCOMMODATION WORKBOAT<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-12 19:21:05', 'admin', 'vessel_type', 'id main vessel type  now contain value BARGES<br>vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-12 19:21:50', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value COASTAL SURVEY VESSELS<br>'),
('update', 'ADMIN', '2017-01-12 19:22:27', 'admin', 'vessel_type', 'id main vessel type updates from DP/ SUBSEA FLEET to DP/ SUBSEA FLEET<br>vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 AHTS<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-01-12 19:22:39', 'admin', 'vessel_type', 'DP2 AHTS deleted'),
('add', 'ADMIN', '2017-01-12 19:22:57', 'admin', 'vessel_type', 'id main vessel type  now contain value DP/ SUBSEA FLEET<br>vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-12 19:23:17', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-12 19:23:26', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-12 19:23:39', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value MULTICAT / TUGS<br>'),
('add', 'ADMIN', '2017-01-12 19:23:52', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value SEISMIC VESSELS<br>'),
('add', 'ADMIN', '2017-01-12 19:24:10', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-12 19:26:53', 'admin', 'vessel_name', 'vesselID  now contain value UA<br>vessel name  now contain value UNIWISE ADVANTAGE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('delete', 'ADMIN', '2017-01-12 19:27:00', 'admin', 'vessel_name', 'TEST VESSEL deleted'),
('delete', 'ADMIN', '2017-01-12 19:27:30', 'admin', 'vessel_name', 'VESSEL3 deleted'),
('delete', 'ADMIN', '2017-01-12 19:27:39', 'admin', 'vessel_name', 'VESSEL2 deleted'),
('delete', 'ADMIN', '2017-01-12 19:27:46', 'admin', 'vessel_name', 'VESSEL1 deleted'),
('add', 'ADMIN', '2017-01-12 19:28:19', 'admin', 'vessel_name', 'vesselID  now contain value MS2<br>vessel name  now contain value SOVEREIGN 2<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 19:28:36', 'admin', 'vessel_name', 'vesselID  now contain value MS1<br>vessel name  now contain value SOVERIEGN 1<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 19:29:03', 'admin', 'vessel_name', 'vesselID  now contain value M1<br>vessel name  now contain value MEO MONARCH 1<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 19:29:24', 'admin', 'vessel_name', 'vesselID  now contain value M2<br>vessel name  now contain value MEO MONARCH 2<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 19:31:07', 'admin', 'vessel_name', 'vesselID  now contain value ET61<br>vessel name  now contain value UNIWISE ADVENTURE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('update', 'ADMIN', '2017-01-12 19:31:31', 'admin', 'vessel_name', 'vesselID updates from M2 to ET33<br>vessel name updates from MEO MONARCH 2 to MEO MONARCH 2<br>id vessel type updates from DP2 AHTS to DP2 AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-12 19:31:53', 'admin', 'vessel_name', 'vesselID updates from M1 to M011<br>vessel name updates from MEO MONARCH 1 to MEO MONARCH 1<br>id vessel type updates from DP2 AHTS to DP2 AHTS<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 19:32:38', 'admin', 'vessel_name', 'vesselID  now contain value US<br>vessel name  now contain value UNIWISE SUPPORTER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-12 19:32:57', 'admin', 'vessel_name', 'vesselID  now contain value RG<br>vessel name  now contain value RANGER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-12 19:33:13', 'admin', 'vessel_name', 'vesselID  now contain value RES<br>vessel name  now contain value RESOLUTION<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 19:33:29', 'admin', 'vessel_name', 'vesselID  now contain value ENT<br>vessel name  now contain value ENTERPRISE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 19:33:50', 'admin', 'vessel_name', 'vesselID  now contain value END<br>vessel name  now contain value ENDURANCE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 19:34:13', 'admin', 'vessel_name', 'vesselID  now contain value ENDE<br>vessel name  now contain value ENDEAVOUR<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 19:34:35', 'admin', 'vessel_name', 'vesselID  now contain value MN<br>vessel name  now contain value MERMAID NUSANTARA<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('update', 'ADMIN', '2017-01-12 19:36:54', 'admin', 'groupbu', 'group bu name updates from GROUP BU 3 to ASEAN- INDONESIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-12 19:37:10', 'admin', 'groupbu', 'group bu name updates from GROUP BU 2 to ASEAN- MALAYSIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-12 19:37:20', 'admin', 'groupbu', 'group bu name updates from HELLO GROUP to ASEAN- BRUNEI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 19:37:39', 'admin', 'groupbu', 'group bu name now contain value ROW- AUSTRALIA<br>group bu order now contain value 4<br>'),
('add', 'ADMIN', '2017-01-12 19:37:51', 'admin', 'groupbu', 'group bu name now contain value ASEAN- THAILAND, SAT<br>group bu order now contain value 5<br>'),
('add', 'ADMIN', '2017-01-12 19:38:03', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST- DUBAI<br>group bu order now contain value 6<br>'),
('add', 'ADMIN', '2017-01-12 19:38:17', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST- QATAR<br>group bu order now contain value 7<br>'),
('add', 'ADMIN', '2017-01-12 19:38:24', 'admin', 'groupbu', 'group bu name now contain value EOS- ROW<br>group bu order now contain value 8<br>'),
('add', 'ADMIN', '2017-01-12 19:38:42', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST- SAUDI ARABIA<br>group bu order now contain value 9<br>'),
('add', 'ADMIN', '2017-01-12 19:38:55', 'admin', 'groupbu', 'group bu name now contain value ASEAN- THAILAND, SKL<br>group bu order now contain value 10<br>'),
('add', 'ADMIN', '2017-01-12 19:39:08', 'admin', 'groupbu', 'group bu name now contain value SVS<br>group bu order now contain value 11<br>'),
('add', 'ADMIN', '2017-01-12 19:39:21', 'admin', 'groupbu', 'group bu name now contain value ROVING- BATAM<br>group bu order now contain value 12<br>'),
('update', 'ADMIN', '2017-01-12 19:40:47', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>region title updates from GROUP BU 3 REGION 1 to INDONESIA<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-12 19:41:01', 'admin', 'region', 'GROUP BU 3 REGION 2 deleted'),
('delete', 'ADMIN', '2017-01-12 19:41:11', 'admin', 'region', 'GROUP BU 2 REGION 2 deleted'),
('update', 'ADMIN', '2017-01-12 19:41:23', 'admin', 'region', 'id group bu updates from ASEAN- MALAYSIA to ASEAN- MALAYSIA<br>region title updates from GROUP BU 2 REGION 1 to MALAYSIA<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-12 19:41:48', 'admin', 'region', 'HELLO TEST deleted'),
('delete', 'ADMIN', '2017-01-12 19:41:54', 'admin', 'region', 'GROUP BU 1 REGION 2 deleted'),
('update', 'ADMIN', '2017-01-12 19:42:31', 'admin', 'groupbu', 'group bu name updates from ASEAN- INDONESIA to ASEAN<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-12 19:42:39', 'admin', 'groupbu', 'ASEAN- MALAYSIA deleted'),
('delete', 'ADMIN', '2017-01-12 19:42:40', 'admin', 'groupbu', ' deleted'),
('delete', 'ADMIN', '2017-01-12 19:42:41', 'admin', 'groupbu', ' deleted'),
('delete', 'ADMIN', '2017-01-12 19:42:46', 'admin', 'groupbu', 'ASEAN- BRUNEI deleted'),
('delete', 'ADMIN', '2017-01-12 19:42:51', 'admin', 'groupbu', 'ASEAN- THAILAND, SAT deleted'),
('delete', 'ADMIN', '2017-01-12 19:42:57', 'admin', 'groupbu', 'ASEAN- THAILAND, SKL deleted'),
('add', 'ADMIN', '2017-01-12 19:43:15', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value THAILAND, SKL<br>group region order now contain value 2<br>'),
('add', 'ADMIN', '2017-01-12 19:43:25', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value SINGAPORE <br>group region order now contain value 3<br>'),
('add', 'ADMIN', '2017-01-12 19:43:35', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value MALAYSIA<br>group region order now contain value 4<br>'),
('add', 'ADMIN', '2017-01-12 19:43:46', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value BRUNEI<br>group region order now contain value 5<br>'),
('add', 'ADMIN', '2017-01-12 19:43:55', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value THAILAND, SAT<br>group region order now contain value 6<br>'),
('update', 'ADMIN', '2017-01-12 19:44:34', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from DEPARTMENT 3 to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from MANISH;  to REKHA NANDWANI; JOVY CHAY ; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 19:52:09', 'admin', 'vessel_region', 'id region  now contain value SINGAPORE <br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-12 19:55:29', 'admin', 'organisation_group', 'id region updates from INDONESIA to SINGAPORE <br>org group name updates from GRP 2 REG 1 ORG 3 to MICLYN EXPRESS OFFSHORE<br>member name updates from ORG3 MEMBER1; ORG3 MEMBER2;  to ORG3 MEMBER1; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 21:32:26', 'admin', 'vessel_type', 'id main vessel type  now contain value DP/ SUBSEA FLEET<br>vessel type  now contain value TEST<br>'),
('update', 'ADMIN', '2017-01-12 21:33:30', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-12 21:33:43', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from AHT / AHTS to ACCOMMODATION WORKBOAT<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-12 21:57:00', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY (IT)<br>members now contain value JOVY CHAY ; <br>'),
('update', 'ADMIN', '2017-01-13 05:41:49', 'admin', 'vessel_type', 'id main vessel type updates from DP/ SUBSEA FLEET to DP/ SUBSEA FLEET<br>vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-01-15 19:03:47', 'admin', 'meo_users', 'MANISH deleted'),
('add', 'ADMIN', '2017-01-15 19:06:06', 'admin', 'meo_users', 'user id now contain value 123123<br>user full name now contain value LIM HUI SHAN<br>user email now contain value HUISHAN.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value KNOWLEDGE CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 19:08:11', 'admin', 'meo_users', 'user id now contain value AWEREWQ<br>user full name now contain value TEST S<br>user email now contain value ASDJFLSDK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASDFSDAFSADF<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-15 19:12:09', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from JOVY CHAY ; REKHA NANDWANI;  to REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-15 20:00:05', 'admin', 'shore_address', 'shore region updates from INDIA to SHARJAH, UAE<br>address updates from LUCKNOW, UTTAR PRADESH, INDIASING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA) to Hamriyah Free Zone Ground 1 - Al Ettehad Street - United Arab Emirates<br>full address updates from SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA) to MICLYN OFFSHORE (MIDDLE EAST & AFRICA) FZE WAREHOUSE NO. IJ-08/1, HAMRIYAH FREE ZONE, PO BOX NO 42112, SHARJAH, UAE<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 20:00:43', 'admin', 'shore_address', 'shore region updates from HONG KONG to AUSTRALIA<br>address updates from TSIM SHA TSUI, HONG KONG to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br>full address updates from 26, NATHAN ROAD to MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 20:05:34', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from MICLYN EXPRESS OFFSHORE to GROUP OPERATIONS<br>member name updates from ORG3 MEMBER1; ORG3 MEMBER2;  to Group G; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-15 20:05:40', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP OPERATIONS<br>member name updates from Group G; ORG3 MEMBER2;  to GROUP GF; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-15 20:34:56', 'admin', 'organisation_group', 'id region now contain value THAILAND, SAT<br>org group name now contain value ORG GROUP NEW <br>member name now contain value MANISH; <br>member email now contain value MANISHMAHANT@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-01-15 20:35:39', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value ORG GROUP NEW  2<br>member name now contain value BHARAT; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-15 20:54:42', 'admin', 'shore_address', 'shore region updates from SINGAPORE to INDIA<br>address updates from HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 20:54:58', 'admin', 'shore_address', 'shore region updates from AUSTRALIA to INDIA<br>address updates from FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br>full address updates from MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959 to MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 20:55:36', 'admin', 'main_vessel_type', 'type title updates from DP/ SUBSEA FLEET to OFFSHORE SUPPORT VESSELS<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 20:55:55', 'admin', 'main_vessel_type', 'type title updates from OFFSHORE SUPPORT VESSELS to NEAR SHORE VESSELS<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-15 20:59:00', 'admin', 'meo_users', 'user id now contain value 12345<br>user full name now contain value QWERT<br>user email now contain value ADMIN@MEO.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASDFG<br>expiry date now contain value 2017-01-24<br>'),
('delete', 'ADMIN', '2017-01-15 21:44:37', 'admin', 'meo_users', 'BHARATRAJ1 deleted'),
('delete', 'ADMIN', '2017-01-15 21:44:42', 'admin', 'meo_users', 'BHARATRAJ MEO USER deleted'),
('delete', 'ADMIN', '2017-01-15 21:44:46', 'admin', 'meo_users', 'RACHIT deleted'),
('delete', 'ADMIN', '2017-01-15 21:44:50', 'admin', 'meo_users', 'TEST S deleted'),
('delete', 'ADMIN', '2017-01-15 21:44:55', 'admin', 'meo_users', 'QWERT deleted'),
('add', 'ADMIN', '2017-01-15 21:47:44', 'admin', 'meo_users', 'user id now contain value D00001<br>user full name now contain value BRADLEY MICHAEL MORPHEW<br>user email now contain value BRAD.MORPHEW@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT DESIGNATE IN THAILAND<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 21:49:01', 'admin', 'department', 'id region now contain value THAILAND, SKL<br>department name now contain value COMMERCIAL<br>members now contain value BRADLEY MICHAEL MORPHEW; <br>'),
('add', 'ADMIN', '2017-01-15 21:58:25', 'admin', 'meo_users', 'user id now contain value E0003<br>user full name now contain value ONG CHEE WEE<br>user email now contain value CHEEWEE.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROJECT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:02:25', 'admin', 'meo_users', 'user id now contain value E0007<br>user full name now contain value SABRIDO RHYAN DELOS REYES<br>user email now contain value RHYAN.SABRIDO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASST. MANAGER - PROJECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:11:55', 'admin', 'meo_users', 'user id now contain value E0008<br>user full name now contain value COLIN DAVID TREWHELLA<br>user email now contain value COLIN.TREWHELLA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GM - OPERATIONS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:13:27', 'admin', 'meo_users', 'user id now contain value E0001<br>user full name now contain value MARK PETER VAN DER MOLEN<br>user email now contain value MARK.VANDERMOLEN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GM - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:14:30', 'admin', 'meo_users', 'user id now contain value E0010<br>user full name now contain value NG WEI LING CANDICE<br>user email now contain value CANDICE.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GENERAL MANAGER - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:16:47', 'admin', 'meo_users', 'user id now contain value E0013<br>user full name now contain value IGLESIAS CARRICHES CLAUDIA<br>user email now contain value CLAUDIA.IGLESIAS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:20:32', 'admin', 'meo_users', 'user id now contain value E0016<br>user full name now contain value MARICAR ZOLETA MANLAPAZ<br>user email now contain value MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DOCUMENT CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:21:51', 'admin', 'meo_users', 'user id now contain value E0022<br>user full name now contain value SUNIL SINGH<br>user email now contain value SUNIL.SINGH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MARINE OPERATIONS MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:23:00', 'admin', 'meo_users', 'user id now contain value E0026<br>user full name now contain value NATALIE WEICHMANN<br>user email now contain value NATALIE.WEICHMANN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:27:16', 'admin', 'meo_users', 'user id now contain value E0031<br>user full name now contain value GOH TING TING<br>user email now contain value TINGTING.GOH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value JUNIOR SECRETARY<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:28:35', 'admin', 'meo_users', 'user id now contain value E0032<br>user full name now contain value CAHYA AWAL<br>user email now contain value CAHYA.AWAL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR COST CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:29:53', 'admin', 'meo_users', 'user id now contain value E0033<br>user full name now contain value EUGENE TEO YU-CHNG<br>user email now contain value EUGENE.TEO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:31:10', 'admin', 'meo_users', 'user id now contain value S00001<br>user full name now contain value TAN HEE HUA<br>user email now contain value HEE-HUA.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL MANAGER (CREWBOAT)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:33:28', 'admin', 'meo_users', 'user id now contain value S00004<br>user full name now contain value POH CHING HOON<br>user email now contain value CHING-HOON.POH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:35:27', 'admin', 'meo_users', 'user id now contain value S00036<br>user full name now contain value JOYCELYN WONG PUI YEE<br>user email now contain value JOYCELYN.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:37:16', 'admin', 'meo_users', 'user id now contain value S00058<br>user full name now contain value MOHAMED ARIS BIN MUSA<br>user email now contain value MOHD.ARIS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:40:50', 'admin', 'meo_users', 'user id now contain value S00110<br>user full name now contain value JANE ALLAN<br>user email now contain value JANE.ALLAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GENERAL COUNSEL – GROUP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:44:55', 'admin', 'meo_users', 'user id now contain value S00112<br>user full name now contain value ADAM RALEIGH CLAYTON<br>user email now contain value ADAM.CLAYTON@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT – SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:48:37', 'admin', 'meo_users', 'user id now contain value S00134<br>user full name now contain value HONG SHUMIN<br>user email now contain value SHUMIN.HONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value REGIONAL FINANCE BUSINESS PARTNERSHIP MANAGER, THAI-ASEAN AND SV<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:50:00', 'admin', 'meo_users', 'user id now contain value S00150<br>user full name now contain value NORAZLINA BINTE SANIN<br>user email now contain value NORAZLINA.SANIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 22:51:20', 'admin', 'meo_users', 'user id now contain value S00157<br>user full name now contain value LINA BINTE SOHO<br>user email now contain value LINA.SOHO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - OPERATIONS<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-15 23:11:42', 'admin', 'vessel_type', 'CREW / UTILITY VESSEL deleted'),
('add', 'ADMIN', '2017-01-15 23:13:49', 'admin', 'main_vessel_type', 'type title  now contain value DP/ SUBSEA FLEET<br>'),
('update', 'ADMIN', '2017-01-15 23:14:08', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to DP/ SUBSEA FLEET<br>vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-15 23:14:16', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to DP/ SUBSEA FLEET<br>vessel type updates from DP2 AHTS to DP2 AHTS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-15 23:14:23', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to DP/ SUBSEA FLEET<br>vessel type updates from DP2 PSV to DP2 PSV<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-15 23:15:14', 'admin', 'vessel_name', 'vesselID  now contain value SO017<br>vessel name  now contain value AOS 8<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:15:58', 'admin', 'vessel_name', 'vesselID  now contain value SP101<br>vessel name  now contain value AOS 1<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:16:21', 'admin', 'vessel_name', 'vesselID  now contain value SP105<br>vessel name  now contain value DNV EXPRESS 18<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:16:49', 'admin', 'vessel_name', 'vesselID  now contain value SP106<br>vessel name  now contain value EXPRESS 3<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:18:43', 'admin', 'vessel_name', 'vesselID  now contain value SP107<br>vessel name  now contain value EXPRESS 4<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:19:07', 'admin', 'vessel_name', 'vesselID  now contain value SP112<br>vessel name  now contain value EXPRESS 19<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:19:56', 'admin', 'vessel_name', 'vesselID  now contain value SP117<br>vessel name  now contain value EXPRESS 24<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:20:25', 'admin', 'vessel_name', 'vesselID  now contain value SP118<br>vessel name  now contain value EXPRESS 25<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:21:00', 'admin', 'vessel_name', 'vesselID  now contain value SP119<br>vessel name  now contain value EXPRESS 26<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:21:25', 'admin', 'vessel_name', 'vesselID  now contain value SP120<br>vessel name  now contain value UNI EXPRESS 21<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:21:46', 'admin', 'vessel_name', 'vesselID  now contain value SP123<br>vessel name  now contain value EXPRESS 31<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:22:20', 'admin', 'vessel_name', 'vesselID  now contain value SP124<br>vessel name  now contain value EXPRESS 32<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:22:44', 'admin', 'vessel_name', 'vesselID  now contain value SP127<br>vessel name  now contain value EXPRESS 35<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:23:18', 'admin', 'vessel_name', 'vesselID  now contain value SP128<br>vessel name  now contain value EXPRESS 36<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:33:05', 'admin', 'vessel_name', 'vesselID  now contain value SP131<br>vessel name  now contain value EXPRESS 52<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:33:41', 'admin', 'vessel_name', 'vesselID  now contain value SP132<br>vessel name  now contain value EXPRESS 53<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:34:27', 'admin', 'vessel_name', 'vesselID  now contain value SP133<br>vessel name  now contain value EXPRESS 54<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:41:05', 'admin', 'vessel_name', 'vesselID  now contain value SP134<br>vessel name  now contain value EXPRESS 55<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:42:27', 'admin', 'vessel_name', 'vesselID  now contain value SP135<br>vessel name  now contain value EXPRESS 56<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:42:52', 'admin', 'vessel_name', 'vesselID  now contain value SP136<br>vessel name  now contain value EXPRESS 57<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:46:41', 'admin', 'vessel_name', 'vesselID  now contain value SP137<br>vessel name  now contain value EXPRESS 58<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:47:01', 'admin', 'vessel_name', 'vesselID  now contain value SP138<br>vessel name  now contain value EXPRESS 59<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:47:21', 'admin', 'vessel_name', 'vesselID  now contain value SP139<br>vessel name  now contain value EXPRESS 60<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:47:41', 'admin', 'vessel_name', 'vesselID  now contain value SP140<br>vessel name  now contain value EXPRESS 61<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:48:04', 'admin', 'vessel_name', 'vesselID  now contain value SP141<br>vessel name  now contain value EXPRESS 62<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:48:27', 'admin', 'vessel_name', 'vesselID  now contain value SP142<br>vessel name  now contain value EXPRESS 63<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:48:46', 'admin', 'vessel_name', 'vesselID  now contain value SP143<br>vessel name  now contain value AOS 2<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:49:11', 'admin', 'vessel_name', 'vesselID  now contain value SP145<br>vessel name  now contain value UNI EXPRESS 9<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:49:37', 'admin', 'vessel_name', 'vesselID  now contain value SP146<br>vessel name  now contain value UNI EXPRESS 10<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:49:57', 'admin', 'vessel_name', 'vesselID  now contain value SP147<br>vessel name  now contain value UNI EXPRESS 11<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:50:21', 'admin', 'vessel_name', 'vesselID  now contain value SP148<br>vessel name  now contain value UNI EXPRESS 12<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:52:22', 'admin', 'vessel_name', 'vesselID  now contain value SP149<br>vessel name  now contain value UNI EXPRESS 13<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:52:52', 'admin', 'vessel_name', 'vesselID  now contain value SP150<br>vessel name  now contain value UNI EXPRESS 14<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:53:14', 'admin', 'vessel_name', 'vesselID  now contain value SP151<br>vessel name  now contain value UNI EXPRESS 15<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:53:32', 'admin', 'vessel_name', 'vesselID  now contain value SP152<br>vessel name  now contain value UNI EXPRESS 16<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:53:56', 'admin', 'vessel_name', 'vesselID  now contain value SP153<br>vessel name  now contain value UNI EXPRESS 17<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:54:36', 'admin', 'vessel_name', 'vesselID  now contain value SP154<br>vessel name  now contain value UNI EXPRESS 19<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:54:59', 'admin', 'vessel_name', 'vesselID  now contain value SP155<br>vessel name  now contain value UNI EXPRESS 20<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:55:18', 'admin', 'vessel_name', 'vesselID  now contain value SP160<br>vessel name  now contain value SAMSON SUPPLIER<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:55:46', 'admin', 'vessel_name', 'vesselID  now contain value SP161<br>vessel name  now contain value SAMSON SUPPORTER<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:56:17', 'admin', 'vessel_name', 'vesselID  now contain value SP162<br>vessel name  now contain value EXPRESS 64<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:56:43', 'admin', 'vessel_name', 'vesselID  now contain value SP163<br>vessel name  now contain value EXPRESS 65<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:57:07', 'admin', 'vessel_name', 'vesselID  now contain value SP164<br>vessel name  now contain value EXPRESS 66<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:57:27', 'admin', 'vessel_name', 'vesselID  now contain value SP165<br>vessel name  now contain value EXPRESS 67<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:57:46', 'admin', 'vessel_name', 'vesselID  now contain value SP166<br>vessel name  now contain value UNI EXPRESS 18<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:58:10', 'admin', 'vessel_name', 'vesselID  now contain value SP167<br>vessel name  now contain value EXPRESS 2<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-15 23:59:49', 'admin', 'vessel_name', 'vesselID  now contain value SP168<br>vessel name  now contain value EXPRESS 11<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:00:13', 'admin', 'vessel_name', 'vesselID  now contain value SP169<br>vessel name  now contain value EXPRESS 12<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:02:19', 'admin', 'vessel_name', 'vesselID  now contain value SP170<br>vessel name  now contain value EXPRESS 68<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:02:52', 'admin', 'vessel_name', 'vesselID  now contain value SP171<br>vessel name  now contain value EXPRESS 69<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('update', 'ADMIN', '2017-01-16 00:06:02', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to NEAR SHORE VESSELS<br>vessel type updates from MULTICAT / TUGS to MULTICAT / TUGS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-16 00:08:18', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to NEAR SHORE VESSELS<br>vessel type updates from MULTICAT / TUGS to MULTICAT / TUGS<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-01-16 00:08:23', 'admin', 'vessel_type', 'TEST deleted'),
('add', 'ADMIN', '2017-01-16 00:09:45', 'admin', 'vessel_name', 'vesselID  now contain value SP176<br>vessel name  now contain value SAMSON 101<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT / TUGS<br>'),
('delete', 'ADMIN', '2017-01-16 00:10:01', 'admin', 'main_vessel_type', 'NEAR SHORE VESSELS deleted'),
('add', 'ADMIN', '2017-01-16 00:11:22', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 00:12:22', 'admin', 'vessel_name', 'vesselID  now contain value SP177<br>vessel name  now contain value EXPRESS 71<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:12:46', 'admin', 'vessel_name', 'vesselID  now contain value SP176<br>vessel name  now contain value EXPRESS 70<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:13:38', 'admin', 'vessel_name', 'vesselID  now contain value SP180<br>vessel name  now contain value EXPRESS 72<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:13:54', 'admin', 'vessel_name', 'vesselID  now contain value SP181<br>vessel name  now contain value EXPRESS 73<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:14:08', 'admin', 'vessel_name', 'vesselID  now contain value SP184<br>vessel name  now contain value UNI EXPRESS 23<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:14:26', 'admin', 'vessel_name', 'vesselID  now contain value SP185<br>vessel name  now contain value UNI EXPRESS 24<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:14:44', 'admin', 'vessel_name', 'vesselID  now contain value SP186<br>vessel name  now contain value EXPRESS 75<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:15:53', 'admin', 'vessel_name', 'vesselID  now contain value SP187<br>vessel name  now contain value EXPRESS 76<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:16:27', 'admin', 'vessel_name', 'vesselID  now contain value SP188<br>vessel name  now contain value EXPRESS 77<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:16:58', 'admin', 'vessel_name', 'vesselID  now contain value SP189<br>vessel name  now contain value EXPRESS 78<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:17:16', 'admin', 'vessel_name', 'vesselID  now contain value SP190<br>vessel name  now contain value EXPRESS 79<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:17:49', 'admin', 'vessel_name', 'vesselID  now contain value SP191<br>vessel name  now contain value EXPRESS 80<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:18:13', 'admin', 'vessel_name', 'vesselID  now contain value SP192<br>vessel name  now contain value EXPRESS 81<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:18:30', 'admin', 'vessel_name', 'vesselID  now contain value SP193<br>vessel name  now contain value EXPRESS 87<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:19:07', 'admin', 'vessel_name', 'vesselID  now contain value SP196<br>vessel name  now contain value EXPRESS 82<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:19:28', 'admin', 'vessel_name', 'vesselID  now contain value SP197<br>vessel name  now contain value EXPRESS 83<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:20:25', 'admin', 'vessel_name', 'vesselID  now contain value SP199<br>vessel name  now contain value EXPRESS 85<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:22:19', 'admin', 'vessel_name', 'vesselID  now contain value SP204<br>vessel name  now contain value MICLYN ENDURANCE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:22:57', 'admin', 'vessel_name', 'vesselID  now contain value SP205<br>vessel name  now contain value MICLYN ENERGY<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-16 00:32:43', 'admin', 'vessel_name', 'vesselID  now contain value SP206<br>vessel name  now contain value MICLYN ENTERPRISE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:33:06', 'admin', 'vessel_name', 'vesselID  now contain value SP208<br>vessel name  now contain value MICLYN GRACE<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-16 00:35:52', 'admin', 'vessel_name', 'vesselID  now contain value SP209<br>vessel name  now contain value MICLYN GRAND<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-16 00:36:19', 'admin', 'vessel_name', 'vesselID  now contain value SP212<br>vessel name  now contain value MICLYN ONYX<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 00:40:23', 'admin', 'vessel_name', 'vesselID  now contain value SP213<br>vessel name  now contain value MICLYN OPAL<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 00:40:50', 'admin', 'vessel_name', 'vesselID  now contain value SP214<br>vessel name  now contain value MICLYN ORION<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:41:12', 'admin', 'vessel_name', 'vesselID  now contain value SP201<br>vessel name  now contain value MICLYN POWER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:41:42', 'admin', 'vessel_name', 'vesselID  now contain value SP218<br>vessel name  now contain value MICLYN VENTURE<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:42:04', 'admin', 'vessel_name', 'vesselID  now contain value SP219<br>vessel name  now contain value MICLYN VICTORY<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:42:38', 'admin', 'vessel_name', 'vesselID  now contain value SP221<br>vessel name  now contain value UNIWISE ADVANCER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:44:25', 'admin', 'vessel_name', 'vesselID  now contain value SP222<br>vessel name  now contain value MAGELLAN 1<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:44:43', 'admin', 'vessel_name', 'vesselID  now contain value SP223<br>vessel name  now contain value MEO VALIANT<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 00:45:11', 'admin', 'vessel_name', 'vesselID  now contain value SP224<br>vessel name  now contain value SEISMIC SUPPORTER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 00:46:35', 'admin', 'vessel_name', 'vesselID  now contain value SP225<br>vessel name  now contain value MAGELLAN 2<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:47:10', 'admin', 'vessel_name', 'vesselID  now contain value SP226<br>vessel name  now contain value MEO VIGILANT<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 00:47:46', 'admin', 'vessel_name', 'vesselID  now contain value SP227<br>vessel name  now contain value MICLYN CONSTRUCTOR I<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value ACCOMMODATION BARGE<br>'),
('add', 'ADMIN', '2017-01-16 00:49:35', 'admin', 'vessel_name', 'vesselID  now contain value SP228<br>vessel name  now contain value MEO GALAXY<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value ACCOMMODATION WORKBOAT<br>'),
('add', 'ADMIN', '2017-01-16 00:50:11', 'admin', 'vessel_name', 'vesselID  now contain value SP229<br>vessel name  now contain value MEO SOVEREIGN I<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-16 00:50:35', 'admin', 'vessel_name', 'vesselID  now contain value SP230	<br>vessel name  now contain value MEO SOVEREIGN II<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-16 00:51:53', 'admin', 'vessel_name', 'vesselID  now contain value SP232<br>vessel name  now contain value UNI EXPRESS 22<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 00:56:05', 'admin', 'vessel_name', 'vesselID  now contain value SP233<br>vessel name  now contain value MEO RANGER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-16 00:57:35', 'admin', 'vessel_name', 'vesselID  now contain value SP235<br>vessel name  now contain value TARKA<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 00:58:06', 'admin', 'vessel_name', 'vesselID  now contain value SP236<br>vessel name  now contain value AOS PATTAYA<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 00:58:46', 'admin', 'vessel_name', 'vesselID  now contain value SP237<br>vessel name  now contain value AOS PHUKET<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 01:01:05', 'admin', 'vessel_name', 'vesselID  now contain value SP238<br>vessel name  now contain value AOS RATCHABURI<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 01:01:26', 'admin', 'vessel_name', 'vesselID  now contain value SP239<br>vessel name  now contain value UNIWISE RAYONG<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 01:01:46', 'admin', 'vessel_name', 'vesselID  now contain value SP240<br>vessel name  now contain value UNIWISE SONGKHLA<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 01:02:08', 'admin', 'vessel_name', 'vesselID  now contain value SP241<br>vessel name  now contain value CERMAT<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 01:02:30', 'admin', 'vessel_name', 'vesselID  now contain value SP242<br>vessel name  now contain value CERDIK<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 01:04:08', 'admin', 'vessel_name', 'vesselID  now contain value SP245<br>vessel name  now contain value MEO EMPEROR<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 01:04:37', 'admin', 'vessel_name', 'vesselID  now contain value SP246<br>vessel name  now contain value MEO EMPRESS<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 01:04:53', 'admin', 'vessel_name', 'vesselID  now contain value SP247<br>vessel name  now contain value EXPRESS 86<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:05:27', 'admin', 'vessel_name', 'vesselID  now contain value SP302<br>vessel name  now contain value MICLYN 181<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:10:34', 'admin', 'vessel_name', 'vesselID  now contain value SP304<br>vessel name  now contain value MICLYN 253<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:11:02', 'admin', 'vessel_name', 'vesselID  now contain value SP307<br>vessel name  now contain value MICLYN 257<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:12:05', 'admin', 'vessel_name', 'vesselID  now contain value SP308<br>vessel name  now contain value MICLYN 258<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:12:35', 'admin', 'vessel_name', 'vesselID  now contain value SP309<br>vessel name  now contain value MICLYN 259<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:13:01', 'admin', 'vessel_name', 'vesselID  now contain value SP310<br>vessel name  now contain value MICLYN 283<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:13:58', 'admin', 'vessel_name', 'vesselID  now contain value SP311<br>vessel name  now contain value MICLYN 285<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:14:36', 'admin', 'vessel_name', 'vesselID  now contain value SP312<br>vessel name  now contain value MICLYN 286<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:15:10', 'admin', 'vessel_name', 'vesselID  now contain value SP313<br>vessel name  now contain value MICLYN 287<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:15:40', 'admin', 'vessel_name', 'vesselID  now contain value SP314<br>vessel name  now contain value MICLYN 288<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:16:06', 'admin', 'vessel_name', 'vesselID  now contain value SP315<br>vessel name  now contain value MICLYN 301<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:16:37', 'admin', 'vessel_name', 'vesselID  now contain value SP316<br>vessel name  now contain value MICLYN 303<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:16:55', 'admin', 'vessel_name', 'vesselID  now contain value SP317<br>vessel name  now contain value MICLYN 305<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:17:12', 'admin', 'vessel_name', 'vesselID  now contain value SP318<br>vessel name  now contain value MICLYN 2510<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:17:30', 'admin', 'vessel_name', 'vesselID  now contain value SP319<br>vessel name  now contain value MICLYN 3316<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:17:50', 'admin', 'vessel_name', 'vesselID  now contain value SP320<br>vessel name  now contain value MICLYN 3317<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:18:14', 'admin', 'vessel_name', 'vesselID  now contain value SP321<br>vessel name  now contain value MICLYN 3318<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:18:34', 'admin', 'vessel_name', 'vesselID  now contain value SP325<br>vessel name  now contain value M 3319<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:18:53', 'admin', 'vessel_name', 'vesselID  now contain value SP326<br>vessel name  now contain value M 3320<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:19:15', 'admin', 'vessel_name', 'vesselID  now contain value SP327<br>vessel name  now contain value MICLYN 3301<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:20:32', 'admin', 'vessel_name', 'vesselID  now contain value SP331<br>vessel name  now contain value MEO GUARDIAN<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value ACCOMMODATION WORKBOAT<br>'),
('add', 'ADMIN', '2017-01-16 01:20:55', 'admin', 'vessel_name', 'vesselID  now contain value SP333<br>vessel name  now contain value EXPRESS 88<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:21:11', 'admin', 'vessel_name', 'vesselID  now contain value SP334<br>vessel name  now contain value EXPRESS 89<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:21:36', 'admin', 'vessel_name', 'vesselID  now contain value SP335	<br>vessel name  now contain value EXPRESS 90<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:21:55', 'admin', 'vessel_name', 'vesselID  now contain value SP336<br>vessel name  now contain value EXPRESS 91<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:22:12', 'admin', 'vessel_name', 'vesselID  now contain value SP337<br>vessel name  now contain value EXPRESS 92<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:22:30', 'admin', 'vessel_name', 'vesselID  now contain value SP338<br>vessel name  now contain value UNI EXPRESS 25<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:23:21', 'admin', 'vessel_name', 'vesselID  now contain value SP340<br>vessel name  now contain value EXPRESS 93<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:23:53', 'admin', 'vessel_name', 'vesselID  now contain value SP341<br>vessel name  now contain value EOS 283<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:24:36', 'admin', 'vessel_name', 'vesselID  now contain value SP345<br>vessel name  now contain value EOS 4001<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:24:57', 'admin', 'vessel_name', 'vesselID  now contain value SP346<br>vessel name  now contain value EOS 4002<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:25:15', 'admin', 'vessel_name', 'vesselID  now contain value SP350<br>vessel name  now contain value EOS 281<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:25:35', 'admin', 'vessel_name', 'vesselID  now contain value SP351<br>vessel name  now contain value EOS 282<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:25:50', 'admin', 'vessel_name', 'vesselID  now contain value SP354<br>vessel name  now contain value EOS 285<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 01:26:09', 'admin', 'vessel_name', 'vesselID  now contain value SP355<br>vessel name  now contain value VOYAGER EXPLORER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value SEISMIC VESSELS<br>'),
('add', 'ADMIN', '2017-01-16 01:27:08', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value COASTAL SURVEY VESSELS<br>'),
('add', 'ADMIN', '2017-01-16 01:27:29', 'admin', 'vessel_name', 'vesselID  now contain value SP344<br>vessel name  now contain value ALERT<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value COASTAL SURVEY VESSELS<br>'),
('delete', 'ADMIN', '2017-01-16 01:37:27', 'admin', 'vessel_name', 'ENDEAVOUR deleted'),
('update', 'ADMIN', '2017-01-16 01:38:56', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 0000-00-00 to 2017-01-17<br>'),
('update', 'ADMIN', '2017-01-16 01:39:10', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 2017-01-17 to <br>'),
('update', 'ADMIN', '2017-01-16 01:39:19', 'admin', 'vessel_name', 'vesselID updates from SP201 to SP216<br>vessel name updates from MICLYN POWER to MICLYN POWER<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 01:39:32', 'admin', 'vessel_name', 'vesselID  now contain value SP201	<br>vessel name  now contain value ENDEAVOUR<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('delete', 'ADMIN', '2017-01-16 01:39:47', 'admin', 'vessel_name', 'UNIWISE SUPPORTER deleted'),
('add', 'ADMIN', '2017-01-16 01:40:43', 'admin', 'vessel_name', 'vesselID  now contain value SP231<br>vessel name  now contain value UNIWISE SUPPORTER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('delete', 'ADMIN', '2017-01-16 01:40:58', 'admin', 'vessel_name', 'RESOLUTION deleted'),
('add', 'ADMIN', '2017-01-16 01:41:14', 'admin', 'vessel_name', 'vesselID  now contain value SP234<br>vessel name  now contain value RESOLUTION<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('delete', 'ADMIN', '2017-01-16 01:41:34', 'admin', 'vessel_name', 'UNIWISE ADVANTAGE deleted'),
('add', 'ADMIN', '2017-01-16 01:41:51', 'admin', 'vessel_name', 'vesselID  now contain value SP243<br>vessel name  now contain value UNIWISE ADVANTAGE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('delete', 'ADMIN', '2017-01-16 01:42:00', 'admin', 'vessel_name', 'UNIWISE ADVENTURE deleted'),
('add', 'ADMIN', '2017-01-16 01:42:22', 'admin', 'vessel_name', 'vesselID  now contain value SP244<br>vessel name  now contain value UNIWISE ADVENTURE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('delete', 'ADMIN', '2017-01-16 01:42:48', 'admin', 'vessel_name', 'MERMAID NUSANTARA deleted'),
('add', 'ADMIN', '2017-01-16 01:43:15', 'admin', 'vessel_name', 'vesselID  now contain value SP328<br>vessel name  now contain value MERMAID NUSANTARA<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('delete', 'ADMIN', '2017-01-16 01:43:49', 'admin', 'vessel_name', 'MEO MONARCH 1 deleted'),
('delete', 'ADMIN', '2017-01-16 01:43:53', 'admin', 'vessel_name', 'MEO MONARCH 2 deleted'),
('delete', 'ADMIN', '2017-01-16 01:43:54', 'admin', 'vessel_name', ' deleted'),
('add', 'ADMIN', '2017-01-16 01:44:08', 'admin', 'vessel_name', 'vesselID  now contain value SP329<br>vessel name  now contain value MEO MONARCH 1<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-16 01:44:23', 'admin', 'vessel_name', 'vesselID  now contain value SP330<br>vessel name  now contain value MEO MONARCH 2<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-16 01:51:40', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value JAKARTA<br>group region order now contain value 7<br>'),
('add', 'ADMIN', '2017-01-16 01:56:33', 'admin', 'vessel_name', 'vesselID  now contain value SP178<br>vessel name  now contain value SAMSON 6<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 01:56:52', 'admin', 'vessel_name', 'vesselID  now contain value SP179<br>vessel name  now contain value SAMSON 7<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 03:46:33', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value TST<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-16 03:49:02', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 0000-00-00 to 2017-01-17<br>'),
('update', 'ADMIN', '2017-01-16 03:49:07', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 2017-01-17 to <br>'),
('delete', 'ADMIN', '2017-01-16 04:33:34', 'admin', 'department', 'COMMERCIAL deleted'),
('delete', 'ADMIN', '2017-01-16 04:33:40', 'admin', 'department', 'INFORMATION TECHNOLOGY (IT) deleted'),
('delete', 'ADMIN', '2017-01-16 04:33:45', 'admin', 'department', 'KNOWLEDGE MANAGEMENT CENTRE deleted'),
('add', 'ADMIN', '2017-01-16 04:34:34', 'admin', 'department', 'id region now contain value THAILAND, SKL<br>department name now contain value COMMERCIAL<br>members now contain value BRADLEY MICHAEL MORPHEW; <br>'),
('add', 'ADMIN', '2017-01-16 04:35:34', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value KNOWLEDGE MANAGEMENT CENTRE<br>members now contain value REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; <br>'),
('add', 'ADMIN', '2017-01-16 04:36:00', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY (IT)<br>members now contain value JOVY CHAY ; <br>'),
('update', 'ADMIN', '2017-01-16 04:48:29', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from JOVY CHAY ; REKHA NANDWANI; LIM HUI SHAN;  to REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; SABRIDO RHYAN DELOS REYES; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 05:22:55', 'admin', 'meo_users', 'user id now contain value 963<br>user full name now contain value ARINDAM1<br>user email now contain value BHARATRAJ+11@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 05:33:42', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 17:21:53', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 17:35:53', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-16 17:36:27', 'admin', 'vessel_region', 'id region updates from INDONESIA to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 17:37:05', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 17:38:21', 'admin', 'vessel_region', 'id region  now contain value BRUNEI<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 18:03:31', 'admin', 'region', 'id group bu  now contain value SVS<br>region title now contain value SPECIALISED VESSEL SERVICES (SVS)<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 18:15:36', 'admin', 'vessel_region', 'id region  now contain value THAILAND, SKL<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 18:18:17', 'admin', 'region', 'id group bu  now contain value ROW- AUSTRALIA<br>region title now contain value ROW-AUSTRALIA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 18:26:56', 'admin', 'vessel_region', 'id region  now contain value ROW-AUSTRALIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 18:28:28', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST <br>group bu order now contain value 9<br>'),
('add', 'ADMIN', '2017-01-16 18:29:39', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 18:38:38', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST <br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 18:49:12', 'admin', 'vessel_name', 'vesselID  now contain value SP173<br>vessel name  now contain value SAMSON 101<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('update', 'ADMIN', '2017-01-16 18:50:09', 'admin', 'vessel_region', 'id region updates from ROW-AUSTRALIA to ROW-AUSTRALIA<br>id vessel name updates from MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA;  to MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 18:52:01', 'admin', 'groupbu', 'group bu name now contain value EOS<br>group bu order now contain value 10<br>'),
('add', 'ADMIN', '2017-01-16 18:52:42', 'admin', 'region', 'id group bu  now contain value EOS<br>region title now contain value EOS<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 18:56:09', 'admin', 'vessel_region', 'id region  now contain value EOS<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:00:39', 'admin', 'groupbu', 'group bu name now contain value ROW<br>group bu order now contain value 11<br>'),
('add', 'ADMIN', '2017-01-16 19:01:10', 'admin', 'region', 'id group bu  now contain value ROW<br>region title now contain value OTHERS<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 19:01:50', 'admin', 'vessel_region', 'id region  now contain value OTHERS<br>id vessel name  now contain value SOVERIEGN 1<br>'),
('add', 'ADMIN', '2017-01-16 19:03:44', 'admin', 'vessel_region', 'id region  now contain value SPECIALISED VESSEL SERVICES (SVS)<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-16 19:04:56', 'admin', 'groupbu', 'group bu name updates from ROW to ROW - OTHERS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-16 19:05:05', 'admin', 'groupbu', 'group bu name updates from ROW - OTHERS to ROW - OTHERS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-16 19:27:16', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from JOVY CHAY ; REKHA NANDWANI; LIM HUI SHAN; SABRIDO RHYAN DELOS REYES;  to REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 19:37:47', 'admin', 'meo_users', 'user id now contain value S00168<br>user full name now contain value LAI CHEE YONG<br>user email now contain value CHEEYONG.LAI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:38:35', 'admin', 'meo_users', 'user id now contain value S00178<br>user full name now contain value DOYLE CHAVEZ FIGUERAS<br>user email now contain value DOYLE.FIGUERAS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value NAVAL ARCHITECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:40:14', 'admin', 'meo_users', 'user id now contain value S00189<br>user full name now contain value AU PEI KWAN<br>user email now contain value PEIKWAN.AU@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:42:03', 'admin', 'meo_users', 'user id now contain value S00193<br>user full name now contain value LIM BENG HWEE<br>user email now contain value BENGHWEE.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER, ENTERPRISE RISK MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:42:37', 'admin', 'meo_users', 'user id now contain value S00197<br>user full name now contain value CHRISTOPHER DAVID WHITE<br>user email now contain value CHRISTOPHER.WHITE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACTING GROUP FINANCIAL CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:43:26', 'admin', 'meo_users', 'user id now contain value S00203<br>user full name now contain value IAN JESTER ERAS REYES<br>user email now contain value IAN.REYES@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value NAVAL ARCHITECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:45:55', 'admin', 'meo_users', 'user id now contain value S00234<br>user full name now contain value ONG PEI LING, WENDY<br>user email now contain value WENDY.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREW PAYROLL EXECUTIVE - HR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:46:35', 'admin', 'meo_users', 'user id now contain value S00239<br>user full name now contain value VERNON LOW CHUN HWEE<br>user email now contain value VERNON.LOW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:48:29', 'admin', 'meo_users', 'user id now contain value S00240<br>user full name now contain value MUHAMMAD ADDY FHAIRUZ FERNANDEZ<br>user email now contain value ADDY.FERNANDEZ@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:50:57', 'admin', 'meo_users', 'user id now contain value S00247<br>user full name now contain value CHEN YING LEI<br>user email now contain value CHEN.YINGLEI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE - CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:52:23', 'admin', 'meo_users', 'user id now contain value S00269<br>user full name now contain value DEREK LO SHEN LEONG<br>user email now contain value DEREK.LO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value REGIONAL FINANCE MANAGER ( MIDDLE EAST) - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:54:36', 'admin', 'meo_users', 'user id now contain value S00278<br>user full name now contain value ONG BOON SENG<br>user email now contain value BOONSENG.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER – HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:10:58', 'admin', 'meo_users', 'user id now contain value S00283<br>user full name now contain value FOONG LAI LENG, LINDY<br>user email now contain value LINDY.FOONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - DOCUMENT CONTROL HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:15:58', 'admin', 'meo_users', 'user id now contain value S00291<br>user full name now contain value WEE HANQUN<br>user email now contain value HANQUN.WEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value LEGAL COUNSEL - LEGAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:18:16', 'admin', 'meo_users', 'user id now contain value S00296<br>user full name now contain value LALITHA NAIR<br>user email now contain value LALITHA.NAIR@MEOROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CERDIT CONTROLLER - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:20:58', 'admin', 'meo_users', 'user id now contain value S00317<br>user full name now contain value BURHANUDDIN BIN MOHAMAD<br>user email now contain value BURHAN.MOHD@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:22:52', 'admin', 'meo_users', 'user id now contain value S00321<br>user full name now contain value VENKATRAMAN SHESHASHAYEE<br>user email now contain value VSHESH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF EXECUTIVE OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:23:32', 'admin', 'meo_users', 'user id now contain value S00322<br>user full name now contain value CHONG SIN KEONG<br>user email now contain value SINKEONG.CHONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:27:44', 'admin', 'meo_users', 'user id now contain value S00327<br>user full name now contain value ANKUSH SHAM AGARWAL<br>user email now contain value ANKUSH.AGARWAL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DEPUTY HEAD - ASEAN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:28:29', 'admin', 'meo_users', 'user id now contain value S00328<br>user full name now contain value LIM CHEE HOE<br>user email now contain value CHEEHOE.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROGRAMMER - FLEET PLANNED MAINTENANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:29:35', 'admin', 'meo_users', 'user id now contain value S00329<br>user full name now contain value NORRASHIDAH BINTE MOHAMED<br>user email now contain value NORRASHIDAH.MOHAMED@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value RECEPTIONIST CUM ADMIN ASSISTANT - ADMIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:31:14', 'admin', 'meo_users', 'user id now contain value S00339<br>user full name now contain value SATHISVARAN CHIDAMBARAM<br>user email now contain value SATHIS.CHIDAMBARAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value IT EXECUTIVE - IT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:32:32', 'admin', 'meo_users', 'user id now contain value S00341<br>user full name now contain value XIE ZIHUI<br>user email now contain value ZIHUI.XIE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GL ACCOUNTANT - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:33:06', 'admin', 'meo_users', 'user id now contain value S00343<br>user full name now contain value INDRANIL MAJUMDAR<br>user email now contain value INDRANIL.MAJUMDAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACTING CHIEF OPERATING OFFICER (COO)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:39:22', 'admin', 'meo_users', 'user id now contain value S00349<br>user full name now contain value MILI SANJAY VERMA<br>user email now contain value MILI.VERMA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GROUP COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:41:15', 'admin', 'meo_users', 'user id now contain value S00357<br>user full name now contain value CHENG CAREEN<br>user email now contain value CAREEN.CHENG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT HR MANAGER - HR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:42:24', 'admin', 'meo_users', 'user id now contain value S00358<br>user full name now contain value NANDWANI REKHA DULAMAL<br>user email now contain value HELLOREKHA.NANDWANI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - BUSINESS PROCESS<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-16 20:42:37', 'admin', 'meo_users', 'REKHA NANDWANI deleted'),
('delete', 'ADMIN', '2017-01-16 20:42:48', 'admin', 'meo_users', 'JOVY CHAY  deleted'),
('delete', 'ADMIN', '2017-01-16 20:43:10', 'admin', 'meo_users', 'NANDWANI REKHA DULAMAL deleted'),
('add', 'ADMIN', '2017-01-16 20:43:51', 'admin', 'meo_users', 'user id now contain value S00358<br>user full name now contain value NANDWANI REKHA DULAMAL<br>user email now contain value REKHA.NANDWANI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - BUSINESS PROCESS - KMC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:47:30', 'admin', 'meo_users', 'user id now contain value S00362<br>user full name now contain value RAO INNA SHREYAS CHANDRAKANTHA<br>user email now contain value SHREYAS.RAO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGEMENT TRAINEE - KNOWLEDGE MGMT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 21:59:08', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value ACE<br>members now contain value NANDWANI REKHA DULAMAL; <br>'),
('add', 'ADMIN', '2017-01-16 21:59:53', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value TEST<br>members now contain value LIM HUI SHAN; <br>'),
('update', 'ADMIN', '2017-01-16 22:00:24', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from INFORMATION TECHNOLOGY (IT) to INFORMATION TECHNOLOGY (IT)<br>members updates from  to NANDWANI REKHA DULAMAL; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-16 22:07:08', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>user full name updates from SABRIDO RHYAN DELOS REYES to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:07:09', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>user full name updates from RHYAN DELOS REYES SABRIDO to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:07:28', 'admin', 'meo_users', 'user id updates from E0013 to E0013<br>user full name updates from IGLESIAS CARRICHES CLAUDIA to CLAUDIA IGLESIAS CARRICHES<br>user email updates from CLAUDIA.IGLESIAS@MEOGROUP.COM to CLAUDIA.IGLESIAS@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL EXECUTIVE to COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:10:50', 'admin', 'meo_users', 'user id updates from S00358 to S00358<br>user full name updates from NANDWANI REKHA DULAMAL to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from EXECUTIVE - BUSINESS PROCESS - KMC to EXECUTIVE - BUSINESS PROCESS - KMC<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:11:02', 'admin', 'meo_users', 'user id updates from S00357 to S00357<br>user full name updates from CHENG CAREEN to CAREEN CHENG <br>user email updates from CAREEN.CHENG@MEOGROUP.COM to CAREEN.CHENG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASSISTANT HR MANAGER - HR to ASSISTANT HR MANAGER - HR<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:11:20', 'admin', 'meo_users', 'user id updates from S00362 to S00362<br>user full name updates from RAO INNA SHREYAS CHANDRAKANTHA to SHREYAS CHANDRAKANTHA RAO<br>user email updates from SHREYAS.RAO@MEOGROUP.COM to SHREYAS.RAO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MANAGEMENT TRAINEE - KNOWLEDGE MGMT  to MANAGEMENT TRAINEE - KNOWLEDGE MGMT <br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:11:32', 'admin', 'meo_users', 'user id updates from S00197 to S00197<br>user full name updates from CHRISTOPHER DAVID WHITE to CHRISTOPHER WHITE<br>user email updates from CHRISTOPHER.WHITE@MEOGROUP.COM to CHRISTOPHER.WHITE@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ACTING GROUP FINANCIAL CONTROLLER to ACTING GROUP FINANCIAL CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:11:35', 'admin', 'meo_users', 'user id updates from S00197 to S00197<br>user full name updates from CHRISTOPHER WHITE to CHRISTOPHER WHITE<br>user email updates from CHRISTOPHER.WHITE@MEOGROUP.COM to CHRISTOPHER.WHITE@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ACTING GROUP FINANCIAL CONTROLLER to ACTING GROUP FINANCIAL CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-16 22:11:56', 'admin', 'meo_users', 'user id updates from 123123 to 123123<br>user full name updates from LIM HUI SHAN to HUI SHAN LIM <br>user email updates from HUISHAN.LIM@MEOGROUP.COM to HUISHAN.LIM@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE CONTROLLER to KNOWLEDGE CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-16 22:12:01', 'admin', 'meo_users', 'user id now contain value S00363<br>user full name now contain value VERA ONG SIXIAN<br>user email now contain value VERA.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT HR MANAGER - TALENT MANAGEMENT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-16 22:12:25', 'admin', 'meo_users', 'user id updates from 123123 to 123123<br>user full name updates from HUI SHAN LIM  to LIM HUI SHAN<br>user email updates from HUISHAN.LIM@MEOGROUP.COM to HUISHAN.LIM@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE CONTROLLER to KNOWLEDGE CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-16 22:12:57', 'admin', 'meo_users', 'user id now contain value S00365<br>user full name now contain value TAN LEA JOO<br>user email now contain value LEA.JOO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE MANAGER - ASEAN  (ASEAN FINANCE BIZ PARTNERSHIP)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:13:49', 'admin', 'meo_users', 'user id now contain value S00366<br>user full name now contain value SANDRA  JERNIGAN<br>user email now contain value SANDRA.JERNIGAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASEAN BUSINESS UNIT, ASSISTANT MANAGER - CREWING<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-16 22:14:22', 'admin', 'meo_users', 'LIM HUI SHAN deleted'),
('add', 'ADMIN', '2017-01-16 22:14:55', 'admin', 'meo_users', 'user id now contain value S00367<br>user full name now contain value LIM HUI SHAN<br>user email now contain value HUISHAN.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value KNOWLEDGE CONTROLLER - KMC<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-16 22:16:37', 'admin', 'meo_users', 'user id updates from S00363 to S00363<br>user full name updates from VERA ONG SIXIAN to VERA ONG <br>user email updates from VERA.ONG@MEOGROUP.COM to VERA.ONG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASSISTANT HR MANAGER - TALENT MANAGEMENT to ASSISTANT HR MANAGER - TALENT MANAGEMENT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-16 22:20:13', 'admin', 'meo_users', 'user id now contain value S00368<br>user full name now contain value NICHOLAS SEET CHONG KUN<br>user email now contain value NICHOLAS.SEET@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL MANAGER - ASEAN BU<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:21:12', 'admin', 'meo_users', 'user id now contain value S00373<br>user full name now contain value LIM LI JU<br>user email now contain value LIJU.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GL  ACCOUNTANT - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:21:56', 'admin', 'meo_users', 'user id now contain value S00375<br>user full name now contain value HEMA  MANOHARAN<br>user email now contain value HEMA.MANOHARAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value AR EXECUTIVE - GROUP FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:23:04', 'admin', 'meo_users', 'user id now contain value S00377<br>user full name now contain value  ARNOLD SILAO<br>user email now contain value ARNOLD.SILAO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE  - SCM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:23:39', 'admin', 'meo_users', 'user id now contain value S00378<br>user full name now contain value AKAASH GANESH<br>user email now contain value AKAASH.GANESH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGEMENT ASSOCIATE - TECHNICAL & OPERATIONS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:29:43', 'admin', 'meo_users', 'user id now contain value S00379<br>user full name now contain value LEE WEI JIE<br>user email now contain value WEIJIE.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGEMENT ASSOCIATE - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:31:02', 'admin', 'meo_users', 'user id now contain value S00382<br>user full name now contain value ABHIJIT DESHMUKH<br>user email now contain value ABHIJIT.DESHMUKH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD - GROUP SCM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:31:43', 'admin', 'meo_users', 'user id now contain value S00383<br>user full name now contain value SOPHIE TAN JIA HUI <br>user email now contain value SOPHIE.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR HR EXECUTIVE - TALENT MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:32:19', 'admin', 'meo_users', 'user id now contain value S00384<br>user full name now contain value HUZAIFA<br>user email now contain value HUZAIFA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SVS BUSINESS UNIT, MANAGER - CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:39:26', 'admin', 'meo_users', 'user id now contain value S00387<br>user full name now contain value LEE SHIN HUAY<br>user email now contain value SHINHUAY.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TAX MANAGER - GROUP LEGAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:41:19', 'admin', 'meo_users', 'user id now contain value S00389<br>user full name now contain value SANKET ASHOK SHUKLA<br>user email now contain value SANKET.SHUKLA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:42:30', 'admin', 'meo_users', 'user id now contain value S00390<br>user full name now contain value KEN LIVINGSTONE<br>user email now contain value KEN.LIVINGSTONE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR MANAGER – TECHNICAL AND OPERATIONS, SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:43:09', 'admin', 'meo_users', 'user id now contain value S00392<br>user full name now contain value JOYCE LIM <br>user email now contain value JOYCE.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR PURCHASING EXECUTIVE - SCM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:43:51', 'admin', 'meo_users', 'user id now contain value S00393<br>user full name now contain value CHAN HUI PENG<br>user email now contain value HUIPENG.CHAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TEAM LEAD (GENERAL LEDGER) - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:45:17', 'admin', 'meo_users', 'user id now contain value S00394<br>user full name now contain value LEONG SOOK MEI<br>user email now contain value SOOKMEI.LEONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT  (CONSOLIDATION & REPORTING) - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:46:04', 'admin', 'meo_users', 'user id now contain value S00395<br>user full name now contain value FARRUKH SHOAIB QURESHI<br>user email now contain value FARRUKH.QURESHI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:46:46', 'admin', 'meo_users', 'user id now contain value T00078<br>user full name now contain value JYNETTE LOWIS <br>user email now contain value JYNETTE.LOWIS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DATA ADMINISTRATOR - KMC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:48:13', 'admin', 'meo_users', 'user id now contain value S00026<br>user full name now contain value ALI HUSSAIN<br>user email now contain value ALI.HUSSAIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASST. OPERATIONS MANAGER - OPS<br>expiry date now contain value <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-16 22:49:12', 'admin', 'meo_users', 'user id now contain value S00316<br>user full name now contain value MATHANRAJ VEERASAMY<br>user email now contain value MATHANRAJ.VEERASAMY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAP BUSINESS ANALYST - IT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:51:31', 'admin', 'meo_users', 'user id now contain value S00319<br>user full name now contain value KISHORE SEGAR<br>user email now contain value KISHORE.SEGAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAP, ABAP DEVELOPER - IT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:52:38', 'admin', 'meo_users', 'user id now contain value S00355<br>user full name now contain value BHARANI KUMAR PALAKODETI<br>user email now contain value KUMAR.PAL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - TECHNICAL ( ASEAN)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:53:25', 'admin', 'meo_users', 'user id now contain value S00352<br>user full name now contain value CLAYTON HOSANNA<br>user email now contain value CLAYTON.HOSANNA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - FOTC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:56:02', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value MANAGEMENT<br>members now contain value VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; <br>'),
('add', 'ADMIN', '2017-01-16 22:57:05', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ASEAN BU<br>members now contain value ANKUSH SHAM AGARWAL; NICHOLAS SEET CHONG KUN; <br>'),
('add', 'ADMIN', '2017-01-16 23:03:01', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members now contain value ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; <br>'),
('add', 'ADMIN', '2017-01-16 23:04:57', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value SPECIALISED VESSEL SERVICES						<br>members now contain value ADAM RALEIGH CLAYTON; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; BURHANUDDIN BIN MOHAMAD; CHONG SIN KEONG; KEN LIVINGSTONE; <br>'),
('add', 'ADMIN', '2017-01-16 23:05:49', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value GROUP COMMERCIAL						<br>members now contain value MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>'),
('update', 'ADMIN', '2017-01-16 23:05:59', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from GROUP COMMERCIAL						 to GROUP COMMERCIAL						<br>members updates from MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO;  to MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-16 23:06:00', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from GROUP COMMERCIAL						 to GROUP COMMERCIAL						<br>members updates from MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO;  to MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 23:07:02', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ADMINISTRATION						<br>members now contain value NORRASHIDAH BINTE MOHAMED; <br>'),
('add', 'ADMIN', '2017-01-16 23:07:56', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value HUMAN RESOURCES						<br>members now contain value CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; <br>'),
('add', 'ADMIN', '2017-01-16 23:09:04', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY						<br>members now contain value SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; <br>'),
('add', 'ADMIN', '2017-01-16 23:09:08', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY						<br>members now contain value SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; <br>'),
('update', 'ADMIN', '2017-01-16 23:10:03', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from  to REKHA NANDWANI; LIM HUI SHAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 23:11:13', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members now contain value LAI CHEE YONG; LIM CHEE HOE; <br>'),
('add', 'ADMIN', '2017-01-16 23:20:11', 'admin', 'meo_users', 'user id now contain value 1<br>user full name now contain value DIEDERIK DE BOER<br>user email now contain value DIEDERIK.DEBOER@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE DIRECTOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:27:22', 'admin', 'meo_users', 'user id now contain value E0015<br>user full name now contain value CRIS RYAN INDIG ENTERA<br>user email now contain value CRIS.RYAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SUPERINTENDENT - TECHNICAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:31:03', 'admin', 'meo_users', 'user id now contain value E0030<br>user full name now contain value JED IGOT<br>user email now contain value JED.IGOT@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value NAVAL ARCHITECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:37:08', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ENTERPRISE RISK MANAGEMENT						<br>members now contain value LIM BENG HWEE; <br>'),
('add', 'ADMIN', '2017-01-16 23:37:10', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ENTERPRISE RISK MANAGEMENT						<br>members now contain value LIM BENG HWEE; <br>'),
('add', 'ADMIN', '2017-01-16 23:37:38', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value LEGAL						<br>members now contain value JANE ALLAN; WEE HANQUN; LEE SHIN HUAY; <br>'),
('add', 'ADMIN', '2017-01-16 23:39:02', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value FINANCE<br>members now contain value HONG SHUMIN; CHRISTOPHER WHITE; XIE ZIHUI; TAN LEA JOO; <br>'),
('update', 'ADMIN', '2017-01-16 23:40:52', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 23:42:05', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value SUPPLY CHAIN MANAGEMENT						<br>members now contain value  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; <br>'),
('add', 'ADMIN', '2017-01-16 23:43:00', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value CREWING (LEVEL  5)<br>members now contain value MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; ONG PEI LING, WENDY; CHEN YING LEI; SANDRA  JERNIGAN; HUZAIFA; <br>'),
('add', 'ADMIN', '2017-01-16 23:44:17', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members now contain value TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; <br>'),
('delete', 'ADMIN', '2017-01-16 23:45:54', 'admin', 'department', 'ENTERPRISE RISK MANAGEMENT						 deleted'),
('delete', 'ADMIN', '2017-01-16 23:46:11', 'admin', 'department', 'INFORMATION TECHNOLOGY						 deleted'),
('update', 'ADMIN', '2017-01-16 23:46:39', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 23:48:57', 'admin', 'meo_users', 'user id now contain value S00290<br>user full name now contain value JOAN LAW<br>user email now contain value JOAN.LAW@MOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, IT INFRASTRUCTURE<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-16 23:49:10', 'admin', 'meo_users', 'JOAN LAW deleted'),
('add', 'ADMIN', '2017-01-16 23:49:38', 'admin', 'meo_users', 'user id now contain value S00290<br>user full name now contain value JOAN LAW<br>user email now contain value JOAN.LAW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, IT INFRASTRUCTURE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:55:07', 'admin', 'meo_users', 'user id now contain value S00161<br>user full name now contain value EBEN TAN <br>user email now contain value EBEN.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD - GROUP OPERATIONS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:33:36', 'admin', 'meo_users', 'user id now contain value S00331<br>user full name now contain value JOSHUA LAM KHIAN KOK<br>user email now contain value JOSHUA.LAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAP BUSINESS ANALYST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:38:08', 'admin', 'meo_users', 'user id now contain value S00334<br>user full name now contain value NYEIN CHAN AUNG<br>user email now contain value AUNG.NYEINCHAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL MANAGER – ELECTRICAL & AUTOMATION<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:46:07', 'admin', 'meo_users', 'user id now contain value S00337<br>user full name now contain value KELLY ZHANG JING<br>user email now contain value KELLY.ZHANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TEAM LEAD - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:48:09', 'admin', 'meo_users', 'user id now contain value S00332<br>user full name now contain value FRANK TAM<br>user email now contain value FRANK.TAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FPM TESTING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:51:45', 'admin', 'meo_users', 'user id now contain value S00025<br>user full name now contain value RYAN JIANG<br>user email now contain value HAIBO.JIANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER, FPM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:53:35', 'admin', 'meo_users', 'user id now contain value S00081<br>user full name now contain value ELAINE CHUAH<br>user email now contain value ELAINE.CHUAH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - (ROVING FLEET)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:56:13', 'admin', 'meo_users', 'user id now contain value S00204<br>user full name now contain value CHRISTINA LING<br>user email now contain value CHRISTINA.LING@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:00:01', 'admin', 'meo_users', 'user id now contain value S00207<br>user full name now contain value ELIZABETH WONG<br>user email now contain value ELIZABETH.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, CONSOLIDATION AND REPORTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:06:08', 'admin', 'meo_users', 'user id now contain value E0028<br>user full name now contain value SHAWN WONG<br>user email now contain value SHAWN.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROJECT COORDINATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:07:35', 'admin', 'meo_users', 'user id now contain value S00211<br>user full name now contain value ALEZS WONG<br>user email now contain value ALEZS.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD - GROUP CREWING <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:20:05', 'admin', 'meo_users', 'user id now contain value S00007<br>user full name now contain value JANICE TENG <br>user email now contain value JANICE.TENG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TEAM LEAD  - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:32:25', 'admin', 'meo_users', 'user id now contain value S00014<br>user full name now contain value DARREN ANG<br>user email now contain value DARREN.ANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF MARKETING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:34:07', 'admin', 'meo_users', 'user id now contain value 225<br>user full name now contain value BHARATRAJ<br>user email now contain value BHARATRAJ+2@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:38:11', 'admin', 'meo_users', 'user id now contain value S00241<br>user full name now contain value ELAINE TAY<br>user email now contain value ELAINE.TAY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR ADMIN ASSISTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:38:16', 'admin', 'meo_users', 'user id now contain value 296<br>user full name now contain value BHARATRAJ MEO USER<br>user email now contain value BHARATRAJ@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:40:25', 'admin', 'meo_users', 'user id now contain value S00297<br>user full name now contain value ALIS KHOO <br>user email now contain value ALIS.KHOO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR EXECUTIVE - AR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:42:34', 'admin', 'meo_users', 'user id now contain value S00253<br>user full name now contain value KAMMY TAN<br>user email now contain value KAMMY.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:43:47', 'admin', 'meo_users', 'user id now contain value S00242<br>user full name now contain value JAMES LIM<br>user email now contain value JAMES.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SCM MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:45:57', 'admin', 'meo_users', 'user id now contain value S00263<br>user full name now contain value LEON LIM<br>user email now contain value LEON.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ANALYST, FPM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:47:49', 'admin', 'meo_users', 'user id now contain value S00180<br>user full name now contain value LEWIS LOW<br>user email now contain value LEWIS.LOW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER, IT SAP & INFRASTRUCTURE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:48:57', 'admin', 'meo_users', 'user id now contain value S00205<br>user full name now contain value KENNETH LEE<br>user email now contain value KENNETH.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:50:10', 'admin', 'meo_users', 'user id now contain value S00282<br>user full name now contain value GLADYS CHUA<br>user email now contain value GLADYS.CHUA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:55:35', 'admin', 'meo_users', 'user id now contain value S00335<br>user full name now contain value BELINDA LI<br>user email now contain value BELINDA.LI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCIAL ANALYST<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 01:57:33', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to TECHNICAL OPERATIONS						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 01:59:01', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE;  to LAI CHEE YONG; LIM CHEE HOE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 02:00:08', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members now contain value ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; <br>'),
('add', 'ADMIN', '2017-01-17 17:17:14', 'admin', 'meo_users', 'user id now contain value S00104<br>user full name now contain value JAMIE LEE<br>user email now contain value JAMIE.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CORPORATE SECRETARIAT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:18:46', 'admin', 'meo_users', 'user id now contain value S00133<br>user full name now contain value AMELIA NG<br>user email now contain value AMELIA.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:21:02', 'admin', 'meo_users', 'user id now contain value S00148<br>user full name now contain value JOVY CHAY<br>user email now contain value JOVY.CHAY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - KNOWLEDGE MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:33:40', 'admin', 'meo_users', 'user id now contain value S00347<br>user full name now contain value DARREN YEOH<br>user email now contain value DARREN.YEOH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, BPI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:35:08', 'admin', 'meo_users', 'user id now contain value S00361<br>user full name now contain value EDWIN CHANG YONG QUAN<br>user email now contain value YONGQUAN.CHANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value INVENTORY ANALYST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:38:58', 'admin', 'meo_users', 'user id now contain value S00385<br>user full name now contain value BAY SOO PENG<br>user email now contain value SOOPENG.BAY@MEOGROUP.COM <br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:41:24', 'admin', 'meo_users', 'user id now contain value S00386<br>user full name now contain value CHLOE NG<br>user email now contain value CHLOE.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:42:53', 'admin', 'meo_users', 'user id now contain value S00388<br>user full name now contain value EUNICE TAN<br>user email now contain value EUNICE.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HR EXECUTIVE - TALENT MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:48:05', 'admin', 'meo_users', 'user id now contain value S00002<br>user full name now contain value ERIK TING<br>user email now contain value ERIK.TING@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL CONSULTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 17:58:57', 'admin', 'meo_users', 'user id now contain value E0025<br>user full name now contain value LIM JUNRONG<br>user email now contain value JUNRONG.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SUPERINTENDENT - TECHNICAL (PROJECTS)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 18:02:06', 'admin', 'meo_users', 'user id now contain value S00360<br>user full name now contain value LEE PEI ZHEN<br>user email now contain value PEIZHEN.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HR EXECUTIVE - OPERATIONS & SERVICES<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 18:05:53', 'admin', 'meo_users', 'user id now contain value S00348<br>user full name now contain value JOSEPHINE LEE<br>user email now contain value JOSEPHINE.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GROUP TREASURER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 18:09:17', 'admin', 'meo_users', 'user id now contain value S00165<br>user full name now contain value DEREK KOH<br>user email now contain value DEREK.KOH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF FINANCIAL OFFICER<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 18:17:41', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:19:20', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:19:44', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ADMINISTRATION						 to ADMINISTRATION						<br>members updates from NORRASHIDAH BINTE MOHAMED;  to NORRASHIDAH BINTE MOHAMED; ELAINE TAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:20:33', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from HUMAN RESOURCES						 to HUMAN RESOURCES						<br>members updates from CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ;  to CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; EUNICE TAN; LEE PEI ZHEN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:20:54', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:21:58', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from INFORMATION TECHNOLOGY (IT) to INFORMATION TECHNOLOGY (IT)<br>members updates from REKHA NANDWANI;  to SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; JOAN LAW; JOSHUA LAM KHIAN KOK; LEWIS LOW; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-17 18:22:11', 'admin', 'department', 'INFORMATION TECHNOLOGY						 deleted'),
('update', 'ADMIN', '2017-01-17 18:22:27', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from REKHA NANDWANI; LIM HUI SHAN;  to REKHA NANDWANI; LIM HUI SHAN; JOVY CHAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:22:58', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE;  to LAI CHEE YONG; LIM CHEE HOE; FRANK TAM; RYAN JIANG; LEON LIM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:24:44', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from LEGAL						 to LEGAL						<br>members updates from JANE ALLAN; LEE SHIN HUAY; WEE HANQUN;  to JANE ALLAN; WEE HANQUN; LEE SHIN HUAY; JAMIE LEE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:27:57', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 18:28:42', 'admin', 'meo_users', 'user id now contain value S00380<br>user full name now contain value ELAINE LAU<br>user email now contain value ELAINE.LAU@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT - GL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 18:29:26', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN; JOSEPHINE LEE; ELIZABETH WONG; BELINDA LI; KELLY ZHANG JING; BAY SOO PENG; GLADYS CHUA; ALIS KHOO ; CHLOE NG; JANICE TENG ; AMELIA NG;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; ELAINE LAU; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:29:28', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN; JOSEPHINE LEE; ELIZABETH WONG; BELINDA LI; KELLY ZHANG JING; BAY SOO PENG; GLADYS CHUA; ALIS KHOO ; CHLOE NG; JANICE TENG ; AMELIA NG; ELAINE LAU;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; ELAINE LAU; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:31:01', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SUPPLY CHAIN MANAGEMENT						 to SUPPLY CHAIN MANAGEMENT						<br>members updates from ABHIJIT DESHMUKH; JOYCE LIM ;  ARNOLD SILAO;  to  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; CHRISTINA LING; KAMMY TAN; JAMES LIM; KENNETH LEE; EDWIN CHANG YONG QUAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:31:05', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SUPPLY CHAIN MANAGEMENT						 to SUPPLY CHAIN MANAGEMENT						<br>members updates from ABHIJIT DESHMUKH; JOYCE LIM ;  ARNOLD SILAO; JAMES LIM; CHRISTINA LING; KAMMY TAN; KENNETH LEE; EDWIN CHANG YONG QUAN;  to  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; CHRISTINA LING; KAMMY TAN; JAMES LIM; KENNETH LEE; EDWIN CHANG YONG QUAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:31:25', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from CREWING (LEVEL  5) to CREWING (LEVEL  5)<br>members updates from HUZAIFA; SANDRA  JERNIGAN; ONG PEI LING, WENDY; MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; CHEN YING LEI;  to MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; ONG PEI LING, WENDY; CHEN YING LEI; SANDRA  JERNIGAN; HUZAIFA; ALEZS WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:32:53', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:32:55', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; DARREN YEOH;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:33:05', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from TECHNICAL OPERATIONS						 to TECHNICAL OPERATIONS						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 18:34:27', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from TECHNICAL OPERATIONS						 to TECHNICAL OPERATIONS						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; IAN JESTER ERAS REYES; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; EBEN TAN ; NYEIN CHAN AUNG; ELAINE CHUAH; ERIK TING; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:40:53', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 22:12:17', 'admin', 'meo_users', 'user id now contain value BN002<br>user full name now contain value LEONARD WONG <br>user email now contain value LEONARD.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GENERAL MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:13:24', 'admin', 'meo_users', 'user id now contain value BN004<br>user full name now contain value BELINDA WONG<br>user email now contain value BELINDA.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ADMINISTRATIVE EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:14:15', 'admin', 'meo_users', 'user id now contain value BN008<br>user full name now contain value KOK WEI KONG<br>user email now contain value WEIKONG.KOK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WEIKONG.KOK@MEOGROUP.COM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:15:11', 'admin', 'meo_users', 'user id now contain value BN003<br>user full name now contain value SHAFIQ ABDULLAH <br>user email now contain value SHAFIQ.ABDULLAH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:16:37', 'admin', 'meo_users', 'user id now contain value BN011<br>user full name now contain value ARDY  BAKAR<br>user email now contain value ARDY.BAKAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:17:13', 'admin', 'meo_users', 'user id now contain value BN010<br>user full name now contain value ALDON PETER YAPP <br>user email now contain value ALDON.PETERYAPP@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:18:02', 'admin', 'meo_users', 'user id now contain value BN007<br>user full name now contain value KENNETH YONG<br>user email now contain value KENNETH.YONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:20:01', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value MGMT<br>members now contain value LEONARD WONG ; <br>'),
('add', 'ADMIN', '2017-01-17 22:20:28', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value ACCOUNTING<br>members now contain value TAN LEA JOO; <br>'),
('add', 'ADMIN', '2017-01-17 22:20:46', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value ADMINISTRATION						<br>members now contain value BELINDA WONG; <br>'),
('add', 'ADMIN', '2017-01-17 22:21:18', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value OPERATIONS / TECHNICAL <br>members now contain value KOK WEI KONG; SHAFIQ ABDULLAH ; <br>'),
('add', 'ADMIN', '2017-01-17 22:21:39', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value CREWING<br>members now contain value ARDY  BAKAR; <br>'),
('add', 'ADMIN', '2017-01-17 22:21:56', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value HSQE<br>members now contain value ALDON PETER YAPP ; <br>'),
('add', 'ADMIN', '2017-01-17 22:22:14', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value PURCHASING<br>members now contain value KENNETH YONG; <br>'),
('update', 'ADMIN', '2017-01-17 22:24:30', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from MGMT to MANAGEMENT (BRUNEI)<br>members updates from LEONARD WONG ;  to LEONARD WONG ; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-17 22:38:17', 'admin', 'department', 'ACE deleted'),
('delete', 'ADMIN', '2017-01-17 22:38:24', 'admin', 'department', 'TEST deleted'),
('delete', 'ADMIN', '2017-01-17 22:38:27', 'admin', 'department', ' deleted'),
('add', 'ADMIN', '2017-01-17 22:39:34', 'admin', 'meo_users', 'user id now contain value M015<br>user full name now contain value CAPT. SASITHARAN ELUMALAI<br>user email now contain value SASITHARAN.ELUMALAI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS MANAGER, MALAYSIA<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:41:13', 'admin', 'meo_users', 'user id now contain value M014<br>user full name now contain value LETICIA LAIMAN INGAN<br>user email now contain value LETICIA.INGAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE  SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:43:23', 'admin', 'meo_users', 'user id now contain value M010<br>user full name now contain value AWG FAREEZ SYIDDIQEN<br>user email now contain value AWG.FAREEZ@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPS SUPINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:44:12', 'admin', 'meo_users', 'user id now contain value M012<br>user full name now contain value NURUL AIN KAMARUDDIN<br>user email now contain value NURULAIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:44:51', 'admin', 'meo_users', 'user id now contain value M006<br>user full name now contain value SYED MUBARAK<br>user email now contain value SYED.MUBARAK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECH SUPERTINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:45:37', 'admin', 'meo_users', 'user id now contain value M002<br>user full name now contain value AAN KUSNANDAR<br>user email now contain value AAN.KUSNANDAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECH SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:46:08', 'admin', 'meo_users', 'user id now contain value M007<br>user full name now contain value NAOMI GANI<br>user email now contain value NAOMI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:46:50', 'admin', 'meo_users', 'user id now contain value M011<br>user full name now contain value HAZLAN HAMDAN<br>user email now contain value HAZLAN.HAMDAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 22:48:39', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value MANAGEMENT (MSIA)<br>members now contain value CAPT. SASITHARAN ELUMALAI; <br>'),
('add', 'ADMIN', '2017-01-17 22:49:07', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value HSQE (MSIA)<br>members now contain value LETICIA LAIMAN INGAN; <br>'),
('add', 'ADMIN', '2017-01-17 22:49:38', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value OPERATION (MSIA)<br>members now contain value AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; <br>'),
('add', 'ADMIN', '2017-01-17 22:49:58', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value TECHNICAL (MSIA)<br>members now contain value SYED MUBARAK; AAN KUSNANDAR; <br>'),
('add', 'ADMIN', '2017-01-17 22:50:16', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value CREWING (MSIA)<br>members now contain value NAOMI GANI; <br>'),
('add', 'ADMIN', '2017-01-17 22:51:09', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value PURCHASING (MSIA)<br>members now contain value HAZLAN HAMDAN; <br>'),
('add', 'ADMIN', '2017-01-17 23:03:04', 'admin', 'meo_users', 'user id now contain value A000480<br>user full name now contain value DAVID NICHOLAS<br>user email now contain value DAVID.NICHOLAS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSEQ MANAGER,  AUS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:03:37', 'admin', 'meo_users', 'user id now contain value A000816<br>user full name now contain value SAM HUTCHINSON<br>user email now contain value SAMUEL.HUTCHINSON@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL & OPERATIONS MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:04:07', 'admin', 'meo_users', 'user id now contain value A000342<br>user full name now contain value VALERIE PRENTICE <br>user email now contain value VALERIE.PRENTICE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:06:26', 'admin', 'department', 'id region now contain value ROW-AUSTRALIA<br>department name now contain value EXECUTIVE (AUS)<br>members now contain value DAVID NICHOLAS; <br>'),
('add', 'ADMIN', '2017-01-17 23:06:57', 'admin', 'department', 'id region now contain value ROW-AUSTRALIA<br>department name now contain value COMMERCIAL (AUS)<br>members now contain value SAM HUTCHINSON; VALERIE PRENTICE ; <br>'),
('add', 'ADMIN', '2017-01-17 23:07:45', 'admin', 'department', 'id region now contain value ROW-AUSTRALIA<br>department name now contain value HUMAN RESOURCE (AUS)<br>members now contain value VALERIE PRENTICE ; <br>'),
('add', 'ADMIN', '2017-01-17 23:46:50', 'admin', 'meo_users', 'user id now contain value ME00001<br>user full name now contain value DENIS WELCH<br>user email now contain value DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT - MIDDLE EAST <br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-17 23:47:40', 'admin', 'meo_users', 'DENIS WELCH deleted'),
('add', 'ADMIN', '2017-01-17 23:48:37', 'admin', 'meo_users', 'user id now contain value ME00108<br>user full name now contain value DENIS WELCH<br>user email now contain value DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT - MIDDLE EAST <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:50:03', 'admin', 'meo_users', 'user id now contain value ME00066<br>user full name now contain value RIK KREUNEN<br>user email now contain value RIK.KREUNEN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value BUSINESS DEVELOPMENT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:52:06', 'admin', 'meo_users', 'user id now contain value ME00099<br>user full name now contain value MUKUND RAJAMANI <br>user email now contain value MUKUND.RAJAMNI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:54:19', 'admin', 'meo_users', 'user id now contain value ME00100<br>user full name now contain value ANGELA EMATA BAYRON <br>user email now contain value ANGELA.BAYRON@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:56:17', 'admin', 'meo_users', 'user id now contain value ME00111<br>user full name now contain value DEREK LO <br>user email now contain value DEREK.LO@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value REGIONAL FINANCE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 23:58:26', 'admin', 'meo_users', 'user id now contain value ME00083<br>user full name now contain value SANDESH GOPAL PALAN <br>user email now contain value SANDESH.PALAN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT FINANCE MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:00:21', 'admin', 'meo_users', 'user id now contain value ME00076<br>user full name now contain value NITIN PUROHIT <br>user email now contain value NITIN.PUROHIT@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT FINANCE MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:01:17', 'admin', 'meo_users', 'user id now contain value ME00058<br>user full name now contain value DEEPAK PANDEY <br>user email now contain value DEEPAK.PANDEY@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:02:34', 'admin', 'meo_users', 'user id now contain value ME00024<br>user full name now contain value ASHVITH AMIN<br>user email now contain value ASHVITH.AMIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:03:17', 'admin', 'meo_users', 'user id now contain value ME00084<br>user full name now contain value ABHILASH <br>user email now contain value ABHILASH.H@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:13:02', 'admin', 'meo_users', 'user id now contain value ME00021<br>user full name now contain value SAMWAIL FOUAD<br>user email now contain value SAMWAIL.FOUAD@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PRO<br>expiry date now contain value <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-18 00:15:45', 'admin', 'meo_users', 'user id now contain value ME00037<br>user full name now contain value TAHIR ABBAS<br>user email now contain value -@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DRIVER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:16:43', 'admin', 'meo_users', 'user id now contain value ME00092<br>user full name now contain value RABINDRA DASH <br>user email now contain value RABINDRA.DASH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:17:54', 'admin', 'meo_users', 'user id now contain value ME00060<br>user full name now contain value AISHA FERRER<br>user email now contain value AISHA.FERRER@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:18:42', 'admin', 'meo_users', 'user id now contain value ME00071<br>user full name now contain value ANABEL BALINA<br>user email now contain value ANABEL.BALINA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:19:49', 'admin', 'meo_users', 'user id now contain value ME00097<br>user full name now contain value ANNALYN BUATIS <br>user email now contain value ANNALYN.BUATIS@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:21:16', 'admin', 'meo_users', 'user id now contain value ME00095<br>user full name now contain value AVDHUT DHAYBAR<br>user email now contain value AVDHUT.DHAYBAR@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:23:56', 'admin', 'meo_users', 'user id now contain value ME00022<br>user full name now contain value BISYRUN HASAN BASRI<br>user email now contain value BISYRUN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:25:12', 'admin', 'meo_users', 'user id now contain value ME00038<br>user full name now contain value ALI ESSA M AL OBAIDI<br>user email now contain value ALI.ALOBAIDI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAUDIZATION COORDINATOR (KSA)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:26:26', 'admin', 'meo_users', 'user id now contain value ME00109<br>user full name now contain value IRY GENSON<br>user email now contain value IRY.GENSON@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SCM MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:27:07', 'admin', 'meo_users', 'user id now contain value ME00031<br>user full name now contain value SAVIO VAZ<br>user email now contain value SAVIO.VAZ@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:27:49', 'admin', 'meo_users', 'user id now contain value ME00079<br>user full name now contain value SUNITHA SHETTY<br>user email now contain value SUNITHA.SHETTY@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:28:37', 'admin', 'meo_users', 'user id now contain value ME00110<br>user full name now contain value LIEZL FABIALA <br>user email now contain value LIEZL.FABIALA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:29:22', 'admin', 'meo_users', 'user id now contain value ME00102<br>user full name now contain value LENIN LAMA <br>user email now contain value LENIN.LAMA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:30:20', 'admin', 'meo_users', 'user id now contain value ME00106<br>user full name now contain value HUSSAIN ALGOBA <br>user email now contain value HUSSAIN.ALGOBA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:31:17', 'admin', 'meo_users', 'user id now contain value ME00063<br>user full name now contain value SREENIVASAN NARAYANAN<br>user email now contain value --@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value STORE KEEPER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:33:45', 'admin', 'meo_users', 'user id now contain value ME00004<br>user full name now contain value ABDALLA ABUELGASIM<br>user email now contain value ABDALLA.ABUELGASIM@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:34:58', 'admin', 'meo_users', 'user id now contain value ME00074<br>user full name now contain value SHERIF ABDELHAMID <br>user email now contain value SHERIF.ABDELMONEM@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:37:45', 'admin', 'meo_users', 'user id now contain value ME00011<br>user full name now contain value JOSEPH GEORGE<br>user email now contain value JOSEPH.GEORGE@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT HSQE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:38:39', 'admin', 'meo_users', 'user id now contain value ME00042<br>user full name now contain value RAMLI RASBI<br>user email now contain value RAMLI.RASBI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:39:28', 'admin', 'meo_users', 'user id now contain value ME00050<br>user full name now contain value ANNA  LIZA CELLANO<br>user email now contain value ANNA.CELLANO@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:45:43', 'admin', 'meo_users', 'user id now contain value ME00101<br>user full name now contain value RAVINDER HOONJAN <br>user email now contain value RAVINDER.HOONJAN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:48:26', 'admin', 'meo_users', 'user id now contain value ME00090<br>user full name now contain value AAKAAR JAIN<br>user email now contain value AAKAAR.JAIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT OPERATIONS MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:02:10', 'admin', 'meo_users', 'user id now contain value ME00014<br>user full name now contain value SOKARNO ABDALLAH <br>user email now contain value SOKARNO.ABDALLAH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value BASE MANAGER KSA <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:05:22', 'admin', 'meo_users', 'user id now contain value ME00089<br>user full name now contain value TAMER S.BALBOUL<br>user email now contain value TAMER.BALBOUL@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:07:19', 'admin', 'meo_users', 'user id now contain value ME00025<br>user full name now contain value SALIM KAJIRU<br>user email now contain value SALIM.KAJIRU@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:10:43', 'admin', 'meo_users', 'user id now contain value ME00027<br>user full name now contain value ZOHAIR ABDELRAHIM<br>user email now contain value ZOHAIR.ELRAHIM@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:16:05', 'admin', 'meo_users', 'user id now contain value ME00005<br>user full name now contain value PAUL OCCENOLA<br>user email now contain value PAUL.OCCENOLA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:18:31', 'admin', 'meo_users', 'user id now contain value ME00104<br>user full name now contain value CHANDRASHEKAR VARMA <br>user email now contain value CHANDRASHEKAR.VARMA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS EXECUTIVE <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:19:46', 'admin', 'meo_users', 'user id now contain value ME00023<br>user full name now contain value JASIM HUSSAIN<br>user email now contain value JASSIM.HUSSAIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS ASSISTANT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:20:59', 'admin', 'meo_users', 'user id now contain value ME00093<br>user full name now contain value BASEL KHWAIS<br>user email now contain value BASEL.KHWAIS@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PRO<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:22:06', 'admin', 'meo_users', 'user id now contain value ME00088<br>user full name now contain value CIRION CENOC <br>user email now contain value CIRION.SENOC@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR OPERATIONS SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:26:33', 'admin', 'meo_users', 'user id now contain value ME00073<br>user full name now contain value HEMANTKUMAR PANCHAL <br>user email now contain value HEMANT.PANCHAL@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR TECHNICAL SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:27:22', 'admin', 'meo_users', 'user id now contain value ME00107<br>user full name now contain value VENKATESH <br>user email now contain value VENKATESH.K@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:29:46', 'admin', 'meo_users', 'user id now contain value ME00048<br>user full name now contain value VIJAY CHATTE<br>user email now contain value VIJAY.CHATTE@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:30:46', 'admin', 'meo_users', 'user id now contain value ME00096<br>user full name now contain value ALABBAS MAHDI <br>user email now contain value ALABBAS.MAHDI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT ENGINEER (SAUDI)) <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:31:31', 'admin', 'meo_users', 'user id now contain value ME00082<br>user full name now contain value JOSE WILSON OTO<br>user email now contain value JOSE.WILSON@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT (SAUDI)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:32:12', 'admin', 'meo_users', 'user id now contain value ME00013<br>user full name now contain value HISHAM  AHAMED<br>user email now contain value HISHAM.AHAMED@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT (SAUDI)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:32:53', 'admin', 'meo_users', 'user id now contain value ME00056<br>user full name now contain value YOGESH PATIL<br>user email now contain value YOGESH.PATIL@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SERVICE SUPERVISOR SUPERITENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:34:13', 'admin', 'meo_users', 'user id now contain value ME00034<br>user full name now contain value PRADEEP KUMAR<br>user email now contain value ---@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:35:51', 'admin', 'meo_users', 'user id now contain value ME00003<br>user full name now contain value ANDREW AUGUSTIN WOOD<br>user email now contain value ----@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC (SAUDI)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:36:28', 'admin', 'meo_users', 'user id now contain value ME00001<br>user full name now contain value ROMEO DELA CRUZ GACHO<br>user email now contain value ------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value AC TECHNICIAN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:39:38', 'admin', 'meo_users', 'user id now contain value ME00046<br>user full name now contain value VIRGILIO TECSON TIRO<br>user email now contain value -NA-@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WELDER/ MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:40:21', 'admin', 'meo_users', 'user id now contain value ME00055<br>user full name now contain value ELNUR ABDULLAYEV<br>user email now contain value ELNUR@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRICAL ENGINEER SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:41:26', 'admin', 'meo_users', 'user id now contain value ME00078<br>user full name now contain value MANJULA  SAMARAKOON<br>user email now contain value MANJULA.SAMARKOON@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRONICS ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:42:08', 'admin', 'meo_users', 'user id now contain value ME00052<br>user full name now contain value ROBIN ISSAC<br>user email now contain value ROBIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRONICS ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:43:34', 'admin', 'meo_users', 'user id now contain value ME00105<br>user full name now contain value SAMAN PATHIRANA <br>user email now contain value PATHIRANA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRONICS ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:44:02', 'admin', 'meo_users', 'user id now contain value ME00043<br>user full name now contain value JINKHIE GALLARZAN<br>user email now contain value JINKHIE.GALLARZAN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR TECHNICAL ASSISTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:44:44', 'admin', 'meo_users', 'user id now contain value ME00103<br>user full name now contain value BAPUSO DINDE <br>user email now contain value BAPUSO.DINDE@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL ASSISTANT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:46:00', 'admin', 'meo_users', 'user id now contain value ME00040<br>user full name now contain value KHALID SAOUD A AL SHAMMARY<br>user email now contain value -------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ADMIN ASSISTANT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:47:30', 'admin', 'meo_users', 'user id now contain value MEO020<br>user full name now contain value HASHIM AL SEFI<br>user email now contain value ------@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DRIVER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:48:45', 'admin', 'meo_users', 'user id now contain value ME00015<br>user full name now contain value ABDUL KADIR BUTHIYABURAYIL<br>user email now contain value ----@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HELPER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:49:39', 'admin', 'meo_users', 'user id now contain value ME00016<br>user full name now contain value THATHAMMA MOHAMMED MOOSA <br>user email now contain value ---@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HELPER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:50:10', 'admin', 'meo_users', 'user id now contain value ME00087<br>user full name now contain value MICHAEL SLY <br>user email now contain value MICHAEL.SLY@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EOS REGIONAL REPRESENTATIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:50:44', 'admin', 'meo_users', 'user id now contain value ME00029<br>user full name now contain value SHIYAS NAZARUDEEN <br>user email now contain value SHIYAS.NAZARUDEEN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 17:25:50', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value MANAGEMENT  (ME)<br>members now contain value DENIS WELCH; <br>'),
('add', 'ADMIN', '2017-01-18 17:27:30', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value COMMERCIAL TEAM  (ME)<br>members now contain value RIK KREUNEN; MUKUND RAJAMANI ; ANGELA EMATA BAYRON ; <br>'),
('add', 'ADMIN', '2017-01-18 17:28:22', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value FINANCE TEAM (ME)<br>members now contain value DEREK LO ; SANDESH GOPAL PALAN ; NITIN PUROHIT ; DEEPAK PANDEY ; ASHVITH AMIN; ABHILASH ; <br>'),
('add', 'ADMIN', '2017-01-18 17:29:09', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value HR & ADMIN (ME)<br>members now contain value SAMWAIL FOUAD; TAHIR ABBAS; <br>'),
('add', 'ADMIN', '2017-01-18 17:30:47', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value CREWING DEPARTMENT (ME)<br>members now contain value RABINDRA DASH ; AISHA FERRER; ANABEL BALINA; ANNALYN BUATIS ; AVDHUT DHAYBAR; BISYRUN HASAN BASRI; ALI ESSA M AL OBAIDI; <br>'),
('add', 'ADMIN', '2017-01-18 17:32:30', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value SCM (ME)<br>members now contain value IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; <br>'),
('add', 'ADMIN', '2017-01-18 17:34:09', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value HSQE & TRAINING  (ME)<br>members now contain value ABDALLA ABUELGASIM; SHERIF ABDELHAMID ; JOSEPH GEORGE; RAMLI RASBI; ANNA  LIZA CELLANO; <br>'),
('add', 'ADMIN', '2017-01-18 17:37:06', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value OPERATIONAL (ME)<br>members now contain value RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; <br>'),
('add', 'ADMIN', '2017-01-18 17:41:55', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value  TECHNICAL(ME)					<br>members now contain value HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; <br>'),
('add', 'ADMIN', '2017-01-18 17:42:58', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value KSA TEAM  ASSISTANCE  (ME)<br>members now contain value KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ; <br>'),
('add', 'ADMIN', '2017-01-18 17:44:44', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value KSA TEAM  ASSISTANCE (ME)<br>members now contain value KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ; <br>'),
('add', 'ADMIN', '2017-01-18 17:45:16', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value EOS TEAM (ME)<br>members now contain value MICHAEL SLY ; SHIYAS NAZARUDEEN ; <br>'),
('delete', 'ADMIN', '2017-01-18 17:52:19', 'admin', 'department', 'KSA TEAM  ASSISTANCE (ME) deleted'),
('add', 'ADMIN', '2017-01-18 19:01:53', 'admin', 'meo_users', 'user id now contain value SGS001<br>user full name now contain value DIDI JAYA SAPUTRA<br>user email now contain value DIDI.SAPUTRA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DIRECTOR OF PT. SGS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:13:19', 'admin', 'meo_users', 'user id now contain value E0020<br>user full name now contain value JOYCE TAN<br>user email now contain value JOYCE.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - COMMERCIAL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 19:15:04', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 19:17:21', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 19:17:26', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG; DIEDERIK DE BOER;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-18 19:22:19', 'admin', 'meo_users', 'FRANK TAM deleted'),
('add', 'ADMIN', '2017-01-18 19:23:05', 'admin', 'meo_users', 'user id now contain value S00309<br>user full name now contain value FRANK TAM<br>user email now contain value FRANK.TAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FPM TESTING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:23:39', 'admin', 'meo_users', 'user id now contain value S00332<br>user full name now contain value KEITH NG<br>user email now contain value KEITH.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - COMMERCIAL (ASEAN)<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 19:24:15', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM;  to LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM; FRANK TAM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 19:24:29', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ASEAN BU to ASEAN BU<br>members updates from ANKUSH SHAM AGARWAL; NICHOLAS SEET CHONG KUN;  to ANKUSH SHAM AGARWAL; NICHOLAS SEET CHONG KUN; KEITH NG; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 19:44:54', 'admin', 'meo_users', 'user id now contain value SGS023<br>user full name now contain value ANGGARA MULIA<br>user email now contain value ANGGARA.MULIA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MARKETING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:45:40', 'admin', 'meo_users', 'user id now contain value SGS010<br>user full name now contain value VANESSA TALAVERA AQUINO<br>user email now contain value VANESSA.AQUINO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MARKETING SPECIALIST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:46:20', 'admin', 'meo_users', 'user id now contain value SPS004<br>user full name now contain value YENNY IMELDA MARTHING<br>user email now contain value YENNY.MARTHING@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:46:54', 'admin', 'meo_users', 'user id now contain value SPS010<br>user full name now contain value KUNTO WIBISONO<br>user email now contain value KUNTO.WIBISONO@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:50:10', 'admin', 'meo_users', 'user id now contain value SGS024<br>user full name now contain value DODI SETIAGAMA<br>user email now contain value DODI.SETIAGAMA@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:51:15', 'admin', 'meo_users', 'user id now contain value SPS008<br>user full name now contain value AGUS TRI ATMOJO<br>user email now contain value AGUS.ATMOJO@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:51:48', 'admin', 'meo_users', 'user id now contain value SGS020<br>user full name now contain value DEDI SUPRIYADI<br>user email now contain value DEDI.SUPRIYADI@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING & FINANCE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:52:28', 'admin', 'meo_users', 'user id now contain value SPS002<br>user full name now contain value ADI MASTIN<br>user email now contain value ADI.MASTIN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:53:38', 'admin', 'meo_users', 'user id now contain value SGS014<br>user full name now contain value RIZKA NOMITURSILOJATI<br>user email now contain value RIZKA.NOMITURSILOJATI@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:54:45', 'admin', 'meo_users', 'user id now contain value NPP004<br>user full name now contain value DIAN UTAMI<br>user email now contain value DIAN.UTAMI@NPP-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING STAFF<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:55:18', 'admin', 'meo_users', 'user id now contain value MEOS005<br>user full name now contain value ANDREW KESAULYA<br>user email now contain value ANDREW.KESAULYA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SINGAPORE ACCOUNTING FOR SAP - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:57:04', 'admin', 'meo_users', 'user id now contain value SGS002<br>user full name now contain value NAHARADAM WIJAYA<br>user email now contain value NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FLEET MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:00:46', 'admin', 'meo_users', 'user id now contain value SGS019<br>user full name now contain value ALPHARD OKA ARIFIN<br>user email now contain value ALPHARD.ARIFIN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATION STAFF<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:01:57', 'admin', 'meo_users', 'user id now contain value SGS016<br>user full name now contain value YULIANTORO<br>user email now contain value YULIANTORO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:02:43', 'admin', 'meo_users', 'user id now contain value SGS018<br>user full name now contain value PAING WIDODO<br>user email now contain value PAING.WIDODO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL ASSISTANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:03:16', 'admin', 'meo_users', 'user id now contain value SGS008<br>user full name now contain value AZIZ ARZIZAL<br>user email now contain value AZIZ.ARZIZAL@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:04:04', 'admin', 'meo_users', 'user id now contain value SPS025<br>user full name now contain value DEKY WERDOKO<br>user email now contain value DEKY.WERDOKO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:04:21', 'admin', 'meo_users', 'user id now contain value SPS009<br>user full name now contain value ERNA RENSI NORA<br>user email now contain value EMA.RENSINORA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING ADMIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:04:45', 'admin', 'meo_users', 'user id now contain value SGS006<br>user full name now contain value RICKY KURNIAWAN<br>user email now contain value RICKY.KURNIAWAN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:05:14', 'admin', 'meo_users', 'user id now contain value SGS011<br>user full name now contain value DANI GUNAWAN<br>user email now contain value DANI.GUNAWAN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HRD MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:06:07', 'admin', 'meo_users', 'user id now contain value SGS027<br>user full name now contain value LIA ANGGRAINY GINTING<br>user email now contain value LIA.GINTING@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value STAFF ADMINISTRATION<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:07:20', 'admin', 'meo_users', 'user id now contain value SGS004<br>user full name now contain value AGUS SETYO BUDI S.<br>user email now contain value -@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DRIVER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:08:20', 'admin', 'meo_users', 'user id now contain value MEOS010<br>user full name now contain value THEO ANDRIAN<br>user email now contain value THEO.ANDRIAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATION EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 20:09:37', 'admin', 'meo_users', 'user id now contain value MEOS009<br>user full name now contain value RENALDO DARMADI<br>user email now contain value RENALDO.DARMADI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATION ASST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:15:39', 'admin', 'meo_users', 'user id now contain value MEOS012<br>user full name now contain value FIRMAN LESMANA<br>user email now contain value FRIMAN.LESMANA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:16:50', 'admin', 'meo_users', 'user id now contain value SPS011<br>user full name now contain value SUHARNO<br>user email now contain value -----@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC SUPERVISIOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:18:18', 'admin', 'meo_users', 'user id now contain value SPS012<br>user full name now contain value DRIPRANTO<br>user email now contain value ---------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FOREMAN MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:18:54', 'admin', 'meo_users', 'user id now contain value SPS017<br>user full name now contain value NUNU DIHARJA<br>user email now contain value --------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:20:02', 'admin', 'meo_users', 'user id now contain value SPS015<br>user full name now contain value M. EGA PERMANA<br>user email now contain value ----------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:20:58', 'admin', 'meo_users', 'user id now contain value SPS013<br>user full name now contain value KUSTIYO ADI<br>user email now contain value NIL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:21:42', 'admin', 'meo_users', 'user id now contain value SPS014<br>user full name now contain value HENDRA KUSUMA<br>user email now contain value NILL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:22:33', 'admin', 'meo_users', 'user id now contain value SPS016<br>user full name now contain value M. ISMAIL<br>user email now contain value __@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:23:16', 'admin', 'meo_users', 'user id now contain value SPS021<br>user full name now contain value ZAHRUDIN<br>user email now contain value _@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WELDER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:24:17', 'admin', 'meo_users', 'user id now contain value SPS020<br>user full name now contain value EFFENDI SAPUTRA<br>user email now contain value ___@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WELDER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:25:01', 'admin', 'meo_users', 'user id now contain value SPS019<br>user full name now contain value FIRMAN PERDANA<br>user email now contain value ____@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRICIAN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:25:27', 'admin', 'meo_users', 'user id now contain value MEOS002<br>user full name now contain value LUKMAN AFFANDY<br>user email now contain value LUKMAN.AFFANDY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ROVING COMMERCIAL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 21:26:25', 'admin', 'meo_users', 'user id updates from S00358 to S00358<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from EXECUTIVE - BUSINESS PROCESS - KMC to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-18 21:27:00', 'admin', 'meo_users', 'user id now contain value MEOS003<br>user full name now contain value CHAIRUDDIN<br>user email now contain value CHAIRUDDIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SCM SUPERVISIOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:27:48', 'admin', 'meo_users', 'user id now contain value SPS026<br>user full name now contain value EKO BUDI TARMANTO<br>user email now contain value BUDI.TARMANTO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROJECT SUPERINTENDENT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 21:40:15', 'admin', 'vessel_region', 'id region updates from INDONESIA to JAKARTA<br>id vessel name updates from EXPRESS 2; EXPRESS 52; EXPRESS 54; EXPRESS 92; SEISMIC SUPPORTER;  to EXPRESS 2; EXPRESS 52; EXPRESS 54; EXPRESS 92; SEISMIC SUPPORTER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:42:13', 'admin', 'region', 'id group bu updates from ROW - OTHERS to ROW - OTHERS<br>region title updates from OTHERS to ROW- OTHERS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:42:32', 'admin', 'region', 'id group bu updates from ROW- AUSTRALIA to ROW - OTHERS<br>region title updates from ROW-AUSTRALIA to ROW-AUSTRALIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:43:04', 'admin', 'vessel_region', 'id region updates from ROW-AUSTRALIA to ROW- OTHERS<br>id vessel name updates from MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101;  to MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:43:19', 'admin', 'vessel_region', 'id region updates from ROW- OTHERS to ROW-AUSTRALIA<br>id vessel name updates from MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101;  to MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:44:16', 'admin', 'groupbu', 'group bu name updates from ROW - OTHERS to ROW <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-18 21:44:38', 'admin', 'groupbu', 'ROW- AUSTRALIA deleted'),
('update', 'ADMIN', '2017-01-18 21:47:38', 'admin', 'vessel_region', 'id region updates from SINGAPORE  to SPECIALISED VESSEL SERVICES (SVS)<br>id vessel name updates from ENDURANCE; ENTERPRISE; SOVEREIGN 2; SOVERIEGN 1; RANGER;  to ENDURANCE; ENTERPRISE; SOVEREIGN 2; SOVERIEGN 1; RANGER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:52:36', 'admin', 'region', 'id group bu updates from ASEAN to ASEAN<br>id entity updates from MICLYN EXPRESS OFFSHORE PTE LTD to <br>region title updates from BRUNEI to BRUNEI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 21:54:35', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - DUBAI<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 21:54:38', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - DUBAI<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 21:56:07', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value MANAGEMENT (INDO)<br>members now contain value DIDI JAYA SAPUTRA; <br>'),
('add', 'ADMIN', '2017-01-18 21:56:50', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value MARKETING (INDO)<br>members now contain value ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>'),
('update', 'ADMIN', '2017-01-18 21:58:49', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from MIDDLE EAST  to MIDDLE EAST  - DUBAI <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 21:59:04', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value MIDDLE EAST - KSA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:01:16', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:01:28', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:01:46', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:02:23', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:02:36', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:02:42', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value CREWING (INDO)<br>members now contain value YENNY IMELDA MARTHING; KUNTO WIBISONO; DODI SETIAGAMA; AGUS TRI ATMOJO; <br>'),
('add', 'ADMIN', '2017-01-18 22:04:01', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value ACCOUNTING (INDO)<br>members now contain value DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; <br>'),
('add', 'ADMIN', '2017-01-18 22:04:23', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:09:58', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value OPERATIONS / TECHNICAL (INDO)<br>members now contain value NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; <br>'),
('add', 'ADMIN', '2017-01-18 22:10:26', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value PURCHASING (INDO)<br>members now contain value AZIZ ARZIZAL; <br>'),
('add', 'ADMIN', '2017-01-18 22:11:00', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value TRAINING (INDO)<br>members now contain value DEKY WERDOKO; ERNA RENSI NORA; <br>'),
('add', 'ADMIN', '2017-01-18 22:15:01', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value HSQE (INDO)<br>members now contain value RICKY KURNIAWAN; <br>'),
('add', 'ADMIN', '2017-01-18 22:15:27', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value HRD (INDO)<br>members now contain value DANI GUNAWAN; LIA ANGGRAINY GINTING; AGUS SETYO BUDI S.; <br>'),
('update', 'ADMIN', '2017-01-18 22:24:50', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from OPERATIONS / TECHNICAL (INDO) to OPERATIONS / TECHNICAL (INDO)<br>members updates from NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO;  to NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:30:12', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from SOVEREIGN 2 to SOVEREIGN 2<br>id vessel type updates from DP2 AHTS to MULTICAT/  TUGS<br>id entity updates from Array to <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 22:43:43', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 22:43:55', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-18 22:53:34', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT (SIN)<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG; DIEDERIK DE BOER;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:53:38', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT (SIN) to MANAGEMENT (SIN)<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG; DIEDERIK DE BOER;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:53:57', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE (SIN)<br>members updates from REKHA NANDWANI; LIM HUI SHAN; JOVY CHAY;  to REKHA NANDWANI; LIM HUI SHAN; JOVY CHAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:54:15', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HUMAN RESOURCES						 to HUMAN RESOURCES (SIN)						<br>members updates from CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; EUNICE TAN; LEE PEI ZHEN;  to CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; EUNICE TAN; LEE PEI ZHEN; <br>status updates from active to active<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-01-18 22:55:01', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; DARREN YEOH;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:55:04', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; DARREN YEOH;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:55:22', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM; FRANK TAM;  to LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM; FRANK TAM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:55:43', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SUPPLY CHAIN MANAGEMENT						 to SUPPLY CHAIN MANAGEMENT (SIN)						<br>members updates from ABHIJIT DESHMUKH; JOYCE LIM ;  ARNOLD SILAO; JAMES LIM; CHRISTINA LING; KAMMY TAN; KENNETH LEE; EDWIN CHANG YONG QUAN;  to  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; CHRISTINA LING; KAMMY TAN; JAMES LIM; KENNETH LEE; EDWIN CHANG YONG QUAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:56:01', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from TECHNICAL OPERATIONS						 to TECHNICAL OPERATIONS (SIN)						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; EBEN TAN ; ERIK TING; NYEIN CHAN AUNG; ELAINE CHUAH; IAN JESTER ERAS REYES;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; IAN JESTER ERAS REYES; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; EBEN TAN ; NYEIN CHAN AUNG; ELAINE CHUAH; ERIK TING; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:56:17', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from CREWING (LEVEL  5) to CREWING (LEVEL  5) (SIN)<br>members updates from HUZAIFA; SANDRA  JERNIGAN; ONG PEI LING, WENDY; MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; CHEN YING LEI; ALEZS WONG;  to MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; ONG PEI LING, WENDY; CHEN YING LEI; SANDRA  JERNIGAN; HUZAIFA; ALEZS WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:56:31', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE (SIN)<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN; JOSEPHINE LEE; ELIZABETH WONG; BELINDA LI; KELLY ZHANG JING; BAY SOO PENG; GLADYS CHUA; ALIS KHOO ; CHLOE NG; JANICE TENG ; AMELIA NG; ELAINE LAU;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; ELAINE LAU; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:56:48', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from LEGAL						 to LEGAL (SIN)						<br>members updates from JANE ALLAN; LEE SHIN HUAY; WEE HANQUN; JAMIE LEE;  to JANE ALLAN; WEE HANQUN; LEE SHIN HUAY; JAMIE LEE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:57:02', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MANAGEMENT (INDO) to MANAGEMENT (INDO)<br>cost centre updates from  to SDFSDFS<br>members updates from DIDI JAYA SAPUTRA;  to DIDI JAYA SAPUTRA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:57:04', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ENTERPRISE RISK MANAGEMENT						 to ENTERPRISE RISK MANAGEMENT (SIN)						<br>members updates from LIM BENG HWEE;  to LIM BENG HWEE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:57:19', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ADMINISTRATION						 to ADMINISTRATION (SIN)						<br>members updates from NORRASHIDAH BINTE MOHAMED; ELAINE TAY;  to NORRASHIDAH BINTE MOHAMED; ELAINE TAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:57:33', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from GROUP COMMERCIAL						 to GROUP COMMERCIAL	(SIN)					<br>members updates from MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO;  to MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:57:53', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SPECIALISED VESSEL SERVICES						 to SPECIALISED VESSEL SERVICES	(SIN)					<br>members updates from ADAM RALEIGH CLAYTON; KEN LIVINGSTONE; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; CHONG SIN KEONG; BURHANUDDIN BIN MOHAMAD;  to ADAM RALEIGH CLAYTON; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; BURHANUDDIN BIN MOHAMAD; CHONG SIN KEONG; KEN LIVINGSTONE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:58:15', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 22:58:40', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from INFORMATION TECHNOLOGY (IT) to INFORMATION TECHNOLOGY (IT) (SIN)<br>members updates from LEWIS LOW; JOAN LAW; JOSHUA LAM KHIAN KOK; SATHISVARAN CHIDAMBARAM; KISHORE SEGAR; MATHANRAJ VEERASAMY;  to SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; JOAN LAW; JOSHUA LAM KHIAN KOK; LEWIS LOW; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 23:26:10', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value TEST!@$<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-18 23:33:35', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value ASDFSW<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:21:08', 'admin', 'groupbu', 'group bu name now contain value TEST<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:21:20', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value A<br>group region order now contain value 1<br>'),
('delete', 'ADMIN', '2017-01-19 01:29:11', 'admin', 'region', 'ASDFSW deleted'),
('delete', 'ADMIN', '2017-01-19 01:29:11', 'admin', 'region', ' deleted'),
('delete', 'ADMIN', '2017-01-19 01:29:42', 'admin', 'groupbu', 'MIDDLE EAST- DUBAI deleted'),
('delete', 'ADMIN', '2017-01-19 01:29:51', 'admin', 'groupbu', 'MIDDLE EAST- QATAR deleted'),
('delete', 'ADMIN', '2017-01-19 01:29:57', 'admin', 'groupbu', 'MIDDLE EAST- SAUDI ARABIA deleted'),
('delete', 'ADMIN', '2017-01-19 01:30:05', 'admin', 'groupbu', 'EOS- ROW deleted'),
('delete', 'ADMIN', '2017-01-19 01:30:19', 'admin', 'groupbu', 'EOS deleted'),
('delete', 'ADMIN', '2017-01-19 01:30:28', 'admin', 'groupbu', 'TEST deleted'),
('delete', 'ADMIN', '2017-01-19 01:30:41', 'admin', 'region', 'A deleted'),
('delete', 'ADMIN', '2017-01-19 01:30:43', 'admin', 'region', ' deleted'),
('add', 'ADMIN', '2017-01-19 01:31:08', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 01:31:21', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - KSA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 01:34:30', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 01:34:53', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST<br>department name updates from MANAGEMENT  (ME) to MANAGEMENT  (ME)<br>members updates from DENIS WELCH;  to DENIS WELCH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:35:06', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST<br>department name updates from EOS TEAM (ME) to EOS TEAM (ME)<br>members updates from MICHAEL SLY ; SHIYAS NAZARUDEEN ;  to MICHAEL SLY ; SHIYAS NAZARUDEEN ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:36:57', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from MIDDLE EAST to UAE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:37:47', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from UAE to MIDDLE EAST - UAE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:38:06', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from KSA TEAM  ASSISTANCE  (ME) to KSA TEAM  ASSISTANCE  (ME)<br>members updates from KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ;  to KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:38:20', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:38:35', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:38:48', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from COMMERCIAL TEAM  (ME) to COMMERCIAL TEAM  (ME)<br>members updates from RIK KREUNEN; MUKUND RAJAMANI ; ANGELA EMATA BAYRON ;  to RIK KREUNEN; MUKUND RAJAMANI ; ANGELA EMATA BAYRON ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:39:01', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:39:14', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from CREWING DEPARTMENT (ME) to CREWING DEPARTMENT (ME)<br>members updates from RABINDRA DASH ; AISHA FERRER; ANABEL BALINA; ANNALYN BUATIS ; AVDHUT DHAYBAR; BISYRUN HASAN BASRI; ALI ESSA M AL OBAIDI;  to RABINDRA DASH ; AISHA FERRER; ANABEL BALINA; ANNALYN BUATIS ; AVDHUT DHAYBAR; BISYRUN HASAN BASRI; ALI ESSA M AL OBAIDI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:39:31', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from HSQE & TRAINING  (ME) to HSQE & TRAINING  (ME)<br>members updates from ABDALLA ABUELGASIM; SHERIF ABDELHAMID ; JOSEPH GEORGE; RAMLI RASBI; ANNA  LIZA CELLANO;  to ABDALLA ABUELGASIM; SHERIF ABDELHAMID ; JOSEPH GEORGE; RAMLI RASBI; ANNA  LIZA CELLANO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:39:44', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from FINANCE TEAM (ME) to FINANCE TEAM (ME)<br>members updates from DEREK LO ; SANDESH GOPAL PALAN ; NITIN PUROHIT ; DEEPAK PANDEY ; ASHVITH AMIN; ABHILASH ;  to DEREK LO ; SANDESH GOPAL PALAN ; NITIN PUROHIT ; DEEPAK PANDEY ; ASHVITH AMIN; ABHILASH ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:39:57', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 01:43:25', 'admin', 'meo_users', 'user id now contain value ME00008<br>user full name now contain value JUANITO BASCON SANTOS <br>user email now contain value JUANITO.SANTOS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRICIAN (KSA)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-19 01:45:36', 'admin', 'meo_users', 'user id now contain value ME00116<br>user full name now contain value CESAR CAYABAN<br>user email now contain value CESAR.CAYABAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value INVENTORY & LOGISTICS EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-19 01:46:59', 'admin', 'meo_users', 'user id now contain value ME00117<br>user full name now contain value GEMMA KALAW<br>user email now contain value GEMMA.KALAW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-19 01:50:44', 'admin', 'meo_users', 'user id now contain value ME00115<br>user full name now contain value SYARLY CAHYADI<br>user email now contain value SYARLY.CAHYADI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 01:50:53', 'admin', 'groupbu', 'group bu name updates from SVS to SINGAPORE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:51:09', 'admin', 'region', 'id group bu updates from ASEAN to SINGAPORE<br>region title updates from SINGAPORE  to SINGAPORE <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-19 01:54:10', 'admin', 'region', 'JAKARTA deleted'),
('delete', 'ADMIN', '2017-01-19 01:54:11', 'admin', 'region', ' deleted'),
('update', 'ADMIN', '2017-01-19 01:54:46', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; JUANITO BASCON SANTOS ; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 01:54:54', 'admin', 'region', 'id group bu  now contain value ROW <br>region title now contain value EOS<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 01:55:16', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; SYARLY CAHYADI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:55:59', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; GEMMA KALAW; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:56:26', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; CESAR CAYABAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 17:18:58', 'admin', 'meo_users', 'user id now contain value SGS028<br>user full name now contain value FATRONI<br>user email now contain value FATRONI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 17:19:40', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (INDO)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 17:23:58', 'admin', 'meo_users', 'user id now contain value M016<br>user full name now contain value WONG LOON SENG<br>user email now contain value LOONSENG.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 17:24:18', 'admin', 'department', 'id region updates from MALAYSIA to MALAYSIA<br>department name updates from OPERATION (MSIA) to OPERATION (MSIA)<br>members updates from AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN;  to AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; WONG LOON SENG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 17:24:52', 'admin', 'department', 'id region updates from MALAYSIA to MALAYSIA<br>department name updates from TECHNICAL (MSIA) to TECHNICAL (MSIA)<br>members updates from SYED MUBARAK; AAN KUSNANDAR;  to SYED MUBARAK; AAN KUSNANDAR; WONG LOON SENG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 17:25:07', 'admin', 'department', 'id region updates from MALAYSIA to MALAYSIA<br>department name updates from OPERATION (MSIA) to OPERATION (MSIA)<br>members updates from AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; WONG LOON SENG;  to AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 17:48:29', 'admin', 'vessel_region', 'id region  now contain value THAILAND, SAT<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-19 17:52:20', 'admin', 'vessel_region', 'id region updates from THAILAND, SKL to THAILAND, SKL<br>id vessel name updates from SOVEREIGN 2; ENTERPRISE; AOS 8; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 81; MICLYN ENERGY; UNIWISE ADVANCER; MEO VIGILANT; MICLYN CONSTRUCTOR I; UNIWISE RAYONG; UNIWISE SONGKHLA; MEO EMPEROR; UNIWISE SUPPORTER; UNIWISE ADVENTURE; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 15; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 18; UNI EXPRESS 23; UNI EXPRESS 21; UNI EXPRESS 20; UNI EXPRESS 19; UNI EXPRESS 22; UNI EXPRESS 24; UNI EXPRESS 25; EXPRESS 53; AOS 1; MEO VALIANT; AOS RATCHABURI; AOS PHUKET; AOS PATTAYA;  to SOVEREIGN 2; ENTERPRISE; AOS 8; UNI EXPRESS 21; EXPRESS 35; EXPRESS 36; EXPRESS 53; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; UNI EXPRESS 20; EXPRESS 65; UNI EXPRESS 18; EXPRESS 71; EXPRESS 73; UNI EXPRESS 23; UNI EXPRESS 24; EXPRESS 81; MICLYN ENERGY; UNIWISE ADVANCER; MEO VALIANT; MEO VIGILANT; MICLYN CONSTRUCTOR I; UNI EXPRESS 22; AOS PHUKET; UNIWISE SONGKHLA; MEO EMPEROR; UNI EXPRESS 25; UNIWISE SUPPORTER; UNIWISE ADVENTURE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 17:56:41', 'admin', 'vessel_region', 'id region  now contain value THAILAND, SKL<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-19 17:57:27', 'admin', 'vessel_region', 'id region updates from THAILAND, SKL to THAILAND, SKL<br>id vessel name updates from AOS 8; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 80; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; UNI EXPRESS 18; UNI EXPRESS 21; UNI EXPRESS 22; UNI EXPRESS 23; UNI EXPRESS 24; UNI EXPRESS 25; AOS PHUKET; UNIWISE SONGKHLA; UNIWISE ADVANCER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; UNIWISE SUPPORTER; MICLYN ENTERPRISE; MICLYN ENERGY; MICLYN CONSTRUCTOR I; MEO SOVEREIGN II; MEO VIGILANT;  to AOS 8; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 80; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; UNI EXPRESS 18; UNI EXPRESS 21; UNI EXPRESS 22; UNI EXPRESS 23; UNI EXPRESS 24; UNI EXPRESS 25; AOS PHUKET; UNIWISE SONGKHLA; UNIWISE ADVANCER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; UNIWISE SUPPORTER; MICLYN ENTERPRISE; MICLYN ENERGY; MICLYN CONSTRUCTOR I; MEO SOVEREIGN II; MEO VIGILANT; MEO VIGILANT; MEO VALIANT; MEO EMPRESS; MEO EMPEROR; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 18:01:25', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST  - DUBAI <br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-19 18:02:10', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - KSA<br>id vessel name  now contain value EXPRESS 90<br>'),
('add', 'ADMIN', '2017-01-19 18:02:23', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - QATAR<br>id vessel name  now contain value UNI EXPRESS 20<br>'),
('add', 'ADMIN', '2017-01-19 18:02:47', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - UAE<br>id vessel name  now contain value EXPRESS 19<br>'),
('add', 'ADMIN', '2017-01-19 18:08:58', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value SAUDI<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 18:09:10', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from SAUDI to MIDDLE EAST - SAUDI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 18:11:55', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - SAUDI<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-19 18:21:19', 'admin', 'vessel_region', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>id vessel name updates from EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL;  to EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL; SAMSON SUPPORTER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 18:24:38', 'admin', 'region', 'id group bu  now contain value ROVING- BATAM<br>region title now contain value BATAM<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 18:25:17', 'admin', 'vessel_region', 'id region  now contain value BATAM<br>id vessel name  now contain value EXPRESS 53<br>'),
('add', 'ADMIN', '2017-01-19 18:30:50', 'admin', 'groupbu', 'group bu name now contain value ASEAN- BRUNEI<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 18:31:18', 'admin', 'groupbu', 'group bu name now contain value ASEAN- THAILAND<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 18:31:29', 'admin', 'groupbu', 'group bu name updates from ASEAN to ASEAN- INDONESIA<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 18:31:52', 'admin', 'groupbu', 'group bu name now contain value EOS- ROW<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 18:32:16', 'admin', 'groupbu', 'group bu name now contain value SVS<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 18:32:33', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- THAILAND<br>region title updates from THAILAND, SKL to THAILAND, SKL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 18:32:39', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- THAILAND<br>region title updates from THAILAND, SAT to THAILAND, SAT<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 18:32:46', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- BRUNEI<br>region title updates from BRUNEI to BRUNEI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 18:33:01', 'admin', 'groupbu', 'group bu name now contain value ASEAN- MALAYSIA<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 18:33:15', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- MALAYSIA<br>region title updates from MALAYSIA to MALAYSIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 18:33:36', 'admin', 'region', 'id group bu updates from ROW  to EOS- ROW<br>region title updates from EOS to EOS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 18:33:46', 'admin', 'region', 'id group bu updates from SINGAPORE to SVS<br>region title updates from SPECIALISED VESSEL SERVICES (SVS) to SPECIALISED VESSEL SERVICES (SVS)<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 19:23:13', 'admin', 'organisation_chart', 'chart title updates from ORG CHART OVERVIEW to ORG CHART OVERVIEW<br>status updates from Active to Active<br>image url updates from OrgChart_1484029297.pdf to OrgChart_1484882593.pdf<br>'),
('update', 'ADMIN', '2017-01-19 19:25:25', 'admin', 'groupbu', 'group bu name updates from ASEAN- THAILAND to THAILAND- UWO<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 19:55:49', 'admin', 'shore_address', 'shore region updates from INDIA to SINGAPORE <br>address updates from HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-19 19:56:17', 'admin', 'shore_address', 'shore region updates from INDIA to AUSTRALIA<br>address updates from FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br>full address updates from MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959 to MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-19 20:11:32', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from ORG GROUP NEW  2 to KNOWLEDGE MANAGEMENT CENTRE<br>member name updates from BHARAT;  to KM GROUP; <br>member email updates from BHARATRAJ@SINGSYS.COM;  to KMGROUP@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 19:18:55', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>member name updates from KM GROUP;  to KM GROUP; <br>member email updates from KMGROUP@MEOGROUP.COM;  to KMGROUP@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 22:29:47', 'admin', 'vessel_name', 'vesselID updates from MS1 to MS1<br>vessel name updates from SOVERIEGN 1 to MEO SOVEREIGN 1<br>id vessel type updates from DP2 AHTS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 22:45:09', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>region title updates from INDONESIA to INDONESIA - JAKARTA<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-22 22:45:51', 'admin', 'vessel_region', 'id region  now contain value INDONESIA - JAKARTA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-22 23:04:37', 'admin', 'vessel_region', 'id region  now contain value EOS<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-22 23:05:32', 'admin', 'vessel_name', 'vesselID updates from SP219 to SP219<br>vessel name updates from MICLYN VICTORY to MICYLN VICTORY<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:05:50', 'admin', 'vessel_name', 'vesselID updates from SP205 to SP205<br>vessel name updates from MICLYN ENERGY to MICYLC ENERGY<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:06:03', 'admin', 'vessel_name', 'vesselID updates from SP205 to SP205<br>vessel name updates from MICYLC ENERGY to MICYLN ENERGY<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:06:41', 'admin', 'vessel_name', 'vesselID updates from SP208 to SP208<br>vessel name updates from MICLYN GRACE to MICYLN GRACE<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:07:03', 'admin', 'vessel_name', 'vesselID updates from SP209 to SP209<br>vessel name updates from MICLYN GRAND to MICYLN GRAND<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:07:22', 'admin', 'vessel_name', 'vesselID updates from SP212 to SP212<br>vessel name updates from MICLYN ONYX to MICYLN ONYX<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:07:44', 'admin', 'vessel_name', 'vesselID updates from SP213 to SP213<br>vessel name updates from MICLYN OPAL to MICYLN OPAL<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:08:11', 'admin', 'vessel_name', 'vesselID updates from SP214 to SP214<br>vessel name updates from MICLYN ORION to MICYLN ORION<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:08:59', 'admin', 'vessel_name', 'vesselID updates from SP216 to SP216<br>vessel name updates from MICLYN POWER to MICYLN POWER<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:10:36', 'admin', 'vessel_name', 'vesselID updates from SP302 to SP302<br>vessel name updates from MICLYN 181 to MICYLN 181<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:10:53', 'admin', 'vessel_name', 'vesselID updates from SP206 to SP206<br>vessel name updates from MICLYN ENTERPRISE to MICYLN ENTERPRISE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:11:16', 'admin', 'vessel_name', 'vesselID updates from SP218 to SP218<br>vessel name updates from MICLYN VENTURE to MICYLN VENTURE<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:11:54', 'admin', 'vessel_name', 'vesselID updates from SP227 to SP227<br>vessel name updates from MICLYN CONSTRUCTOR I to MICYLN CONSTRUCTOR I<br>id vessel type updates from ACCOMMODATION BARGE to ACCOMMODATION BARGE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:12:11', 'admin', 'vessel_name', 'vesselID updates from SP304 to SP304<br>vessel name updates from MICLYN 253 to MICYLN 253<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:12:27', 'admin', 'vessel_name', 'vesselID updates from SP307 to SP307<br>vessel name updates from MICLYN 257 to MICYLN 257<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:12:43', 'admin', 'vessel_name', 'vesselID updates from SP308 to SP308<br>vessel name updates from MICLYN 258 to MICYLN 258<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:13:00', 'admin', 'vessel_name', 'vesselID updates from SP309 to SP309<br>vessel name updates from MICLYN 259 to MICYLN 259<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:13:15', 'admin', 'vessel_name', 'vesselID updates from SP310 to SP310<br>vessel name updates from MICLYN 283 to MICYLN 283<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:13:28', 'admin', 'vessel_name', 'vesselID updates from SP311 to SP311<br>vessel name updates from MICLYN 285 to MICYLN 285<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:13:40', 'admin', 'vessel_name', 'vesselID updates from SP312 to SP312<br>vessel name updates from MICLYN 286 to MICYLN 286<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:13:50', 'admin', 'vessel_name', 'vesselID updates from SP313 to SP313<br>vessel name updates from MICLYN 287 to MICYLN 287<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:14:03', 'admin', 'vessel_name', 'vesselID updates from SP314 to SP314<br>vessel name updates from MICLYN 288 to MICYLN 288<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:14:13', 'admin', 'vessel_name', 'vesselID updates from SP315 to SP315<br>vessel name updates from MICLYN 301 to MICYLN 301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:14:23', 'admin', 'vessel_name', 'vesselID updates from SP316 to SP316<br>vessel name updates from MICLYN 303 to MICYLN 303<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:14:33', 'admin', 'vessel_name', 'vesselID updates from SP317 to SP317<br>vessel name updates from MICLYN 305 to MICYLN 305<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:14:42', 'admin', 'vessel_name', 'vesselID updates from SP318 to SP318<br>vessel name updates from MICLYN 2510 to MICYLN 2510<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:14:53', 'admin', 'vessel_name', 'vesselID updates from SP319 to SP319<br>vessel name updates from MICLYN 3316 to MICYLN 3316<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:15:04', 'admin', 'vessel_name', 'vesselID updates from SP320 to SP320<br>vessel name updates from MICLYN 3317 to MICYLN 3317<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:15:37', 'admin', 'vessel_name', 'vesselID updates from SP321 to SP321<br>vessel name updates from MICLYN 3318 to MICYLN 3318<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:15:48', 'admin', 'vessel_name', 'vesselID updates from SP327 to SP327<br>vessel name updates from MICLYN 3301 to MICYLN 3301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:15:58', 'admin', 'vessel_name', 'vesselID updates from SP204 to SP204<br>vessel name updates from MICLYN ENDURANCE to MICYLN ENDURANCE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 23:20:56', 'admin', 'vessel_region', 'id region updates from EOS to EOS<br>id vessel name updates from MICYLN VENTURE; EOS 281; EOS 282; EOS 283; EOS 285; EOS 4001; EOS 4002; M 3319; M 3319; M 3319; M 3320;  to MICYLN VENTURE; EOS 281; EOS 282; EOS 283; EOS 285; EOS 4001; EOS 4002; M 3319; M 3319; M 3319; M 3320; MICYLN 253; MICYLN 257; MICYLN 258; MICYLN 259; MICYLN 2510; MICYLN 288; MICYLN 287; MICYLN 286; MICYLN 285; MICYLN 283; MICYLN 259; MICYLN 301; MICYLN 303; MICYLN 305; MICYLN 3301; MICYLN 3316; MICYLN 3317; MICYLN 3318; EOS 281; EOS 281; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:33:48', 'admin', 'groupbu', 'group bu name updates from ROVING- BATAM to PTLL - BATAM<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:34:21', 'admin', 'groupbu', 'group bu name updates from SINGAPORE to SINGAPORE (MEO)<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-23 01:42:17', 'admin', 'groupbu', 'group bu name now contain value AUSTRALIA<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-23 01:42:40', 'admin', 'region', 'id group bu updates from ROW  to AUSTRALIA<br>region title updates from ROW-AUSTRALIA to AUSTRALIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:52:16', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; MICHAEL SLY ; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:32:40', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS; GEMMA KALAW;  to SAMWAIL FOUAD; TAHIR ABBAS; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:32:44', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:33:28', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; SYARLY CAHYADI;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:34:38', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; JUANITO BASCON SANTOS ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:35:11', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; CESAR CAYABAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:35:54', 'admin', 'department', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (INDO)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:44:43', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from ACCOUNTING to ACCOUNTING (BRUNEI)<br>members updates from TAN LEA JOO;  to TAN LEA JOO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:44:57', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from ADMINISTRATION						 to ADMINISTRATION (BRUNEI)		<br>members updates from BELINDA WONG;  to BELINDA WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:46:45', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from OPERATIONS / TECHNICAL  to OPERATIONS / TECHNICAL (BRUNEI)<br>members updates from KOK WEI KONG; SHAFIQ ABDULLAH ;  to KOK WEI KONG; SHAFIQ ABDULLAH ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:47:12', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from CREWING to CREWING (BRUNEI)<br>members updates from ARDY  BAKAR;  to ARDY  BAKAR; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:47:35', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from HSQE to HSQE (BRUNEI)<br>members updates from ALDON PETER YAPP ;  to ALDON PETER YAPP ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:48:12', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from PURCHASING to PURCHASING (BRUNEI)<br>members updates from KENNETH YONG;  to KENNETH YONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:51:34', 'admin', 'department', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (INDO)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:51:51', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; GEMMA KALAW; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:52:09', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; CESAR CAYABAN; <br>status updates from active to active<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-01-23 02:52:22', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; JUANITO BASCON SANTOS ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 02:52:36', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; SYARLY CAHYADI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:00:12', 'admin', 'vessel_name', 'vesselID updates from SP205 to SP205<br>vessel name updates from MICYLN ENERGY to MICLYN ENERGY<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:00:24', 'admin', 'vessel_name', 'vesselID updates from SP208 to SP208<br>vessel name updates from MICYLN GRACE to MICLYN GRACE<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:00:36', 'admin', 'vessel_name', 'vesselID updates from SP209 to SP209<br>vessel name updates from MICYLN GRAND to MICLYN GRAND<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:00:47', 'admin', 'vessel_name', 'vesselID updates from SP212 to SP212<br>vessel name updates from MICYLN ONYX to MICLYN ONYX<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:00:59', 'admin', 'vessel_name', 'vesselID updates from SP213 to SP213<br>vessel name updates from MICYLN OPAL to MICLYN OPAL<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:01:13', 'admin', 'vessel_name', 'vesselID updates from SP214 to SP214<br>vessel name updates from MICYLN ORION to MICLYN ORION<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:01:28', 'admin', 'vessel_name', 'vesselID updates from SP216 to SP216<br>vessel name updates from MICYLN POWER to MICLYN POWER<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:01:41', 'admin', 'vessel_name', 'vesselID updates from SP218 to SP218<br>vessel name updates from MICYLN VENTURE to MICLYN VENTURE<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:01:55', 'admin', 'vessel_name', 'vesselID updates from SP219 to SP219<br>vessel name updates from MICYLN VICTORY to MICLYN VICTORY<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:02:06', 'admin', 'vessel_name', 'vesselID updates from SP227 to SP227<br>vessel name updates from MICYLN CONSTRUCTOR I to MICLYN CONSTRUCTOR I<br>id vessel type updates from ACCOMMODATION BARGE to ACCOMMODATION BARGE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:02:17', 'admin', 'vessel_name', 'vesselID updates from SP302 to SP302<br>vessel name updates from MICYLN 181 to MICLYN 181<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:02:27', 'admin', 'vessel_name', 'vesselID updates from SP304 to SP304<br>vessel name updates from MICYLN 253 to MICLYN 253<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:02:37', 'admin', 'vessel_name', 'vesselID updates from SP307 to SP307<br>vessel name updates from MICYLN 257 to MICLYN 257<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:02:47', 'admin', 'vessel_name', 'vesselID updates from SP308 to SP308<br>vessel name updates from MICYLN 258 to MICLYN 258<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:00', 'admin', 'vessel_name', 'vesselID updates from SP309 to SP309<br>vessel name updates from MICYLN 259 to MICLYN 259<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:10', 'admin', 'vessel_name', 'vesselID updates from SP310 to SP310<br>vessel name updates from MICYLN 283 to MICLYN 283<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:20', 'admin', 'vessel_name', 'vesselID updates from SP311 to SP311<br>vessel name updates from MICYLN 285 to MICLYN 285<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:29', 'admin', 'vessel_name', 'vesselID updates from SP312 to SP312<br>vessel name updates from MICYLN 286 to MICLYN 286<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:38', 'admin', 'vessel_name', 'vesselID updates from SP313 to SP313<br>vessel name updates from MICYLN 287 to MICLYN 287<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:49', 'admin', 'vessel_name', 'vesselID updates from SP314 to SP314<br>vessel name updates from MICYLN 288 to MICLYN 288<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:03:59', 'admin', 'vessel_name', 'vesselID updates from SP315 to SP315<br>vessel name updates from MICYLN 301 to MICLYN 301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:04:07', 'admin', 'vessel_name', 'vesselID updates from SP316 to SP316<br>vessel name updates from MICYLN 303 to MICLYN 303<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:04:17', 'admin', 'vessel_name', 'vesselID updates from SP317 to SP317<br>vessel name updates from MICYLN 305 to MICLYN 305<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:04:27', 'admin', 'vessel_name', 'vesselID updates from SP318 to SP318<br>vessel name updates from MICYLN 2510 to MICLYN 2510<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:04:36', 'admin', 'vessel_name', 'vesselID updates from SP319 to SP319<br>vessel name updates from MICYLN 3316 to MICLYN 3316<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:04:45', 'admin', 'vessel_name', 'vesselID updates from SP320 to SP320<br>vessel name updates from MICYLN 3317 to MICLYN 3317<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:04:54', 'admin', 'vessel_name', 'vesselID updates from SP321 to SP321<br>vessel name updates from MICYLN 3318 to MICLYN 3318<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:05:04', 'admin', 'vessel_name', 'vesselID updates from SP327 to SP327<br>vessel name updates from MICYLN 3301 to MICLYN 3301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:05:14', 'admin', 'vessel_name', 'vesselID updates from SP204 to SP204<br>vessel name updates from MICYLN ENDURANCE to MICLYN ENDURANCE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:05:27', 'admin', 'vessel_name', 'vesselID updates from SP206 to SP206<br>vessel name updates from MICYLN ENTERPRISE to MICLYN ENTERPRISE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 03:33:00', 'admin', 'group_name', 'group name updates from GROUP NAME 3 to TEST<br>group description updates from GROUP NAME 3 to GROUP NAME 3<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-24 02:30:37', 'admin', 'meo_users', 'user id now contain value 112<br>emp id now contain value 00296<br>user full name now contain value BHATA<br>user email now contain value BHARATRAJ+1111@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QUALITY CONTROL ENGINEER<br>expiry date now contain value 2017-01-25<br>'),
('update', 'ADMIN', '2017-01-24 02:30:52', 'admin', 'meo_users', 'user id updates from 112 to 112<br>emp id updates from 00296 to 00296<br>user full name updates from BHATA to BHATA<br>user email updates from BHARATRAJ+1111@SINGSYS.COM to BHARATRAJ+1111@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QUALITY CONTROL ENGINEER to QUALITY CONTROL ENGINEER<br>status updates from active to active<br>expiry date updates from 2017-01-25 to <br>'),
('add', 'ADMIN', '2017-01-24 04:20:44', 'admin', 'meo_users', 'user id now contain value 123<br>emp id now contain value 0320<br>user full name now contain value AKASH<br>user email now contain value AKASHKUMAR@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QUALITY ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-24 04:26:36', 'admin', 'meo_users', 'user id now contain value 12345678<br>emp id now contain value 12<br>user full name now contain value QWERTY<br>user email now contain value A@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QCE<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-24 04:26:57', 'admin', 'meo_users', 'user id updates from 12345678 to 12345678<br>emp id updates from 12 to 296<br>user full name updates from QWERTY to QWERTY<br>user email updates from A@SINGSYS.COM to A@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:27:20', 'admin', 'meo_users', 'user id updates from 12345678 to 12345678<br>emp id updates from 296 to 00296<br>user full name updates from QWERTY to QWERTY<br>user email updates from A@SINGSYS.COM to A@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:29:47', 'admin', 'meo_users', 'user id updates from 12345678 to 12345678<br>emp id updates from 00296 to 00296<br>user full name updates from QWERTY to QWERTY<br>user email updates from A@SINGSYS.COM to A@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:44:19', 'admin', 'meo_users', 'user id updates from E0003 to E0003<br>emp id updates from  to 2<br>user full name updates from ONG CHEE WEE to ONG CHEE WEE<br>user email updates from CHEEWEE.ONG@MEOGROUP.COM to CHEEWEE.ONG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from PROJECT MANAGER to PROJECT MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:44:28', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>emp id updates from  to 3<br>user full name updates from RHYAN DELOS REYES SABRIDO to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:44:45', 'admin', 'meo_users', 'user id updates from E0008 to E0008<br>emp id updates from  to 4<br>user full name updates from COLIN DAVID TREWHELLA to COLIN DAVID TREWHELLA<br>user email updates from COLIN.TREWHELLA@MEOGROUP.COM to COLIN.TREWHELLA@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GM - OPERATIONS to GM - OPERATIONS<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:44:55', 'admin', 'meo_users', 'user id updates from E0001 to E0001<br>emp id updates from  to 5<br>user full name updates from MARK PETER VAN DER MOLEN to MARK PETER VAN DER MOLEN<br>user email updates from MARK.VANDERMOLEN@MEOGROUP.COM to MARK.VANDERMOLEN@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GM - COMMERCIAL to GM - COMMERCIAL<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:45:05', 'admin', 'meo_users', 'user id updates from E0010 to E0010<br>emp id updates from  to 6<br>user full name updates from NG WEI LING CANDICE to NG WEI LING CANDICE<br>user email updates from CANDICE.NG@MEOGROUP.COM to CANDICE.NG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GENERAL MANAGER - COMMERCIAL to GENERAL MANAGER - COMMERCIAL<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:45:15', 'admin', 'meo_users', 'user id updates from E0013 to E0013<br>emp id updates from  to 7<br>user full name updates from CLAUDIA IGLESIAS CARRICHES to CLAUDIA IGLESIAS CARRICHES<br>user email updates from CLAUDIA.IGLESIAS@MEOGROUP.COM to CLAUDIA.IGLESIAS@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL EXECUTIVE to COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:45:23', 'admin', 'meo_users', 'user id updates from E0016 to E0016<br>emp id updates from  to 8<br>user full name updates from MARICAR ZOLETA MANLAPAZ to MARICAR ZOLETA MANLAPAZ<br>user email updates from MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM to MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from DOCUMENT CONTROLLER to DOCUMENT CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:45:49', 'admin', 'meo_users', 'user id updates from E0026 to E0026<br>emp id updates from  to 10<br>user full name updates from NATALIE WEICHMANN to NATALIE WEICHMANN<br>user email updates from NATALIE.WEICHMANN@MEOGROUP.COM to NATALIE.WEICHMANN@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL EXECUTIVE to COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:46:04', 'admin', 'meo_users', 'user id updates from E0022 to E0022<br>emp id updates from  to 9<br>user full name updates from SUNIL SINGH to SUNIL SINGH<br>user email updates from SUNIL.SINGH@MEOGROUP.COM to SUNIL.SINGH@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MARINE OPERATIONS MANAGER to MARINE OPERATIONS MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:46:15', 'admin', 'meo_users', 'user id updates from E0031 to E0031<br>emp id updates from  to 11<br>user full name updates from GOH TING TING to GOH TING TING<br>user email updates from TINGTING.GOH@MEOGROUP.COM to TINGTING.GOH@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from JUNIOR SECRETARY to JUNIOR SECRETARY<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 04:46:25', 'admin', 'meo_users', 'user id updates from E0032 to E0032<br>emp id updates from  to 12<br>user full name updates from CAHYA AWAL to CAHYA AWAL<br>user email updates from CAHYA.AWAL@MEOGROUP.COM to CAHYA.AWAL@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from SENIOR COST CONTROLLER to SENIOR COST CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-24 18:15:19', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value KNOWLEDGE MANAGEMNT CENTRE (KMC)<br>member name now contain value KM GROUP; <br>member email now contain value KMGROUP@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-01-25 17:16:40', 'admin', 'groupbu', 'group bu name updates from SINGAPORE (MEO) to GROUP<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-25 17:17:20', 'admin', 'department', 'id region updates from SINGAPORE  to SPECIALISED VESSEL SERVICES (SVS)<br>department name updates from SPECIALISED VESSEL SERVICES	(SIN)					 to SPECIALISED VESSEL SERVICES<br>members updates from ADAM RALEIGH CLAYTON; KEN LIVINGSTONE; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; CHONG SIN KEONG; BURHANUDDIN BIN MOHAMAD;  to ADAM RALEIGH CLAYTON; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; BURHANUDDIN BIN MOHAMAD; CHONG SIN KEONG; KEN LIVINGSTONE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-25 22:27:54', 'admin', 'meo_users', 'user id now contain value 11606<br>emp id now contain value 11606<br>user full name now contain value ATTASIT  KORNCHAIYAPRUK<br>user email now contain value ATTASIT.K@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS DEVELOPMENT, MOE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:29:34', 'admin', 'meo_users', 'user id now contain value 11471<br>emp id now contain value 11471<br>user full name now contain value YUTH  METHEEWITUD<br>user email now contain value YUTH.M@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PEOPLE & ORGANIZATION DIRECTOR ,UNITHAI GROUP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:29:56', 'admin', 'meo_users', 'user id now contain value 11074<br>emp id now contain value 11074<br>user full name now contain value PIRIYADIT  CHOOPHUNGART<br>user email now contain value PIRIYADIT.C@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF FINANCIAL OFFICER, UNITHAI GROUP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:32:42', 'admin', 'meo_users', 'user id now contain value 11133<br>emp id now contain value 11133<br>user full name now contain value SASITHORN  SURIYACHAN <br>user email now contain value SASITHORN.S@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:35:05', 'admin', 'meo_users', 'user id now contain value 11045<br>emp id now contain value 11045<br>user full name now contain value SIVILAI  CHIRAMANAPHUN<br>user email now contain value SIVILAI.C@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:35:58', 'admin', 'meo_users', 'user id now contain value 11592<br>emp id now contain value 11592<br>user full name now contain value SUKIT  KITPATH<br>user email now contain value KANET.C@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR OFFICER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:36:35', 'admin', 'meo_users', 'user id now contain value 11038<br>emp id now contain value 11038<br>user full name now contain value NARUMON SIRITONGKAM <br>user email now contain value NARUMON.S@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:37:08', 'admin', 'meo_users', 'user id now contain value 11426<br>emp id now contain value 11426<br>user full name now contain value BENJAWAN  PANKLOM<br>user email now contain value BENJAWAN.P@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASST. OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:38:12', 'admin', 'meo_users', 'user id now contain value 11533<br>emp id now contain value 11533<br>user full name now contain value CHADA  PHOONJANTANG<br>user email now contain value CHADA.P@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:38:34', 'admin', 'meo_users', 'user id now contain value 1304<br>emp id now contain value 1304<br>user full name now contain value DAWAPHA  JANTARAPITAK<br>user email now contain value DAWAPHA.D@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:39:07', 'admin', 'meo_users', 'user id now contain value 71585<br>emp id now contain value 71585<br>user full name now contain value YAOWALUCK  THREECHADARAT<br>user email now contain value YAOWALUCK.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR. OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-25 22:41:43', 'admin', 'meo_users', 'BRADLEY MICHAEL MORPHEW deleted'),
('add', 'ADMIN', '2017-01-25 22:42:04', 'admin', 'meo_users', 'user id now contain value 71573<br>emp id now contain value 71573<br>user full name now contain value BRAD  MORPHEW<br>user email now contain value BRAD.MORPHEW@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF UNIWISE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:42:23', 'admin', 'meo_users', 'user id now contain value 71407<br>emp id now contain value 71407<br>user full name now contain value JON AXEL HAUGLUM<br>user email now contain value JON.AXEL@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR-GM OPERATION<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:42:49', 'admin', 'meo_users', 'user id now contain value 7418<br>emp id now contain value 7418<br>user full name now contain value WARODOM THAMRONGTHANYAWONG<br>user email now contain value WARODOM.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value GM COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:43:19', 'admin', 'meo_users', 'user id now contain value 71006<br>emp id now contain value 71006<br>user full name now contain value ALISA PHUCHUMNIAN<br>user email now contain value ALISA.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCIAL BUSINESS PARTNER (FBP) <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:43:42', 'admin', 'meo_users', 'user id now contain value 7974<br>emp id now contain value 7974<br>user full name now contain value NARUEMOL JIRANANTASAK<br>user email now contain value NARUEMOL.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HR MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:44:25', 'admin', 'meo_users', 'user id now contain value 7147<br>emp id now contain value 7147<br>user full name now contain value VANDEE INTAPANYA<br>user email now contain value VANDEE.I@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR. COMMERCIAL OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:45:08', 'admin', 'meo_users', 'user id now contain value 71182<br>emp id now contain value 71182<br>user full name now contain value YINGYOD THONGNAUM<br>user email now contain value YINYOD.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:45:51', 'admin', 'meo_users', 'user id now contain value 7057<br>emp id now contain value 7057<br>user full name now contain value VIPA TEEPAPONG<br>user email now contain value VIPA.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR. OFFICER- CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:46:10', 'admin', 'meo_users', 'user id now contain value 71436<br>emp id now contain value 71436<br>user full name now contain value PACHARAPORN THUNPRASERT<br>user email now contain value PACHARAPORN.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER- CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:46:50', 'admin', 'meo_users', 'user id now contain value 71529<br>emp id now contain value 71529<br>user full name now contain value NIDA SENGTHONG<br>user email now contain value NIDA.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER- CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:47:56', 'admin', 'meo_users', 'user id now contain value 71601<br>emp id now contain value 71601<br>user full name now contain value VERNON LOW<br>user email now contain value VERNON.LOW@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - GROUP HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:48:18', 'admin', 'meo_users', 'user id now contain value 71360<br>emp id now contain value 71360<br>user full name now contain value PATTARAPOOM SANTIWEKIN<br>user email now contain value PATTARAPOOM.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE ASSITANT MGE/DDPA<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:48:34', 'admin', 'meo_users', 'user id now contain value 7954<br>emp id now contain value 7954<br>user full name now contain value WORASAK BUAPLOD<br>user email now contain value WORASAK.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:48:57', 'admin', 'meo_users', 'user id now contain value 71505<br>emp id now contain value 71505<br>user full name now contain value PAWARIT ARSAKIT<br>user email now contain value PAWARIT.A@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:49:21', 'admin', 'meo_users', 'user id now contain value 71421<br>emp id now contain value 71421<br>user full name now contain value PANYA BOONANEKSUB<br>user email now contain value PANYA.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SI - SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:49:55', 'admin', 'meo_users', 'user id now contain value 7949<br>emp id now contain value 7949<br>user full name now contain value APAPAN TEPMANEE<br>user email now contain value APAPAN.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE ASSISTANT MGR-MANAGEMENT SYSTEM COMPLIANCE <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:50:23', 'admin', 'meo_users', 'user id now contain value 71564<br>emp id now contain value 71564<br>user full name now contain value SUPASSORN  SAENNIEM<br>user email now contain value SUPASSORN.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE ADMINISTRATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:50:42', 'admin', 'meo_users', 'user id now contain value 71506<br>emp id now contain value 71506<br>user full name now contain value CAPT.PONGSARIT KLOMKHUM<br>user email now contain value PONGSARIT.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:51:01', 'admin', 'meo_users', 'user id now contain value 71462<br>emp id now contain value 71462<br>user full name now contain value CAPT.THIANCHAI DHANKULCHAI<br>user email now contain value THIANCHAI.D@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS BARGE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:51:24', 'admin', 'meo_users', 'user id now contain value 71513<br>emp id now contain value 71513<br>user full name now contain value THEERADET SAENKET<br>user email now contain value THEERADET.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value JUNIOR OPERATIONS SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:52:01', 'admin', 'meo_users', 'user id now contain value 71578<br>emp id now contain value 71578<br>user full name now contain value SAMPAN  SAMPANWICHAIN<br>user email now contain value SUWIT.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value JUNIOR OPERATIONS SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:52:23', 'admin', 'meo_users', 'user id now contain value 71383<br>emp id now contain value 71383<br>user full name now contain value JARIYA PANKHOUSUK<br>user email now contain value JARIYA.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OPS.ADMINISTRATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:52:56', 'admin', 'meo_users', 'user id now contain value 71248<br>emp id now contain value 71248<br>user full name now contain value THONGCHAI PETCHARAT<br>user email now contain value THONGCHAI.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value BASE MANAGER -SKL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:53:20', 'admin', 'meo_users', 'user id now contain value 7773<br>emp id now contain value 7773<br>user full name now contain value PRAPHOJ JAICHAROEN<br>user email now contain value PRAPHOJ.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value BASE MANAGER -SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:53:36', 'admin', 'meo_users', 'user id now contain value 7984<br>emp id now contain value 7984<br>user full name now contain value SITHE SOOKBAN<br>user email now contain value SITHE.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:53:54', 'admin', 'meo_users', 'user id now contain value 71460<br>emp id now contain value 71460<br>user full name now contain value PANUWAT SANGASILAPA<br>user email now contain value PANUWAT@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:54:10', 'admin', 'meo_users', 'user id now contain value 71393<br>emp id now contain value 71393<br>user full name now contain value SUTHAT KUAKOONRAT<br>user email now contain value SUTHAT.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI-SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:54:32', 'admin', 'meo_users', 'user id now contain value 71395<br>emp id now contain value 71395<br>user full name now contain value WANNAPAT TABMAK<br>user email now contain value WANNAPAT.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT TECHICAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:54:49', 'admin', 'meo_users', 'user id now contain value 71543<br>emp id now contain value 71543<br>user full name now contain value SOMBOON POLSWANG<br>user email now contain value SOMBOON.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:55:07', 'admin', 'meo_users', 'user id now contain value 71574<br>emp id now contain value 71574<br>user full name now contain value SURASAK  WEERAWATTANA<br>user email now contain value SURASAK.W@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:55:21', 'admin', 'meo_users', 'user id now contain value 71600<br>emp id now contain value 71600<br>user full name now contain value SATID  THONGSRINUAN  <br>user email now contain value SATID.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:55:38', 'admin', 'meo_users', 'user id now contain value 71101<br>emp id now contain value 71101<br>user full name now contain value KITTIMA WANNASRI<br>user email now contain value KITTIMA.W@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value UWO PROCUREMENT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:55:58', 'admin', 'meo_users', 'user id now contain value 71053<br>emp id now contain value 71053<br>user full name now contain value CHARIYA CHAROENSOOK<br>user email now contain value CHARIYA.C@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR ASSISTANT PROCUREMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:56:14', 'admin', 'meo_users', 'user id now contain value 71503<br>emp id now contain value 71503<br>user full name now contain value USAVADEE KETKAEW<br>user email now contain value USAVADEE.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PROCUREMENT OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:56:34', 'admin', 'meo_users', 'user id now contain value 71373<br>emp id now contain value 71373<br>user full name now contain value THIRAYA BOONRAT<br>user email now contain value THIRAYA.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT OFFICER - PROCUREMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:56:59', 'admin', 'meo_users', 'user id now contain value 71504<br>emp id now contain value 71504<br>user full name now contain value NATTAMON KHUNTIKULANON<br>user email now contain value NUTTAMON.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PROCUREMENT OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:57:26', 'admin', 'meo_users', 'user id now contain value 71429<br>emp id now contain value 71429<br>user full name now contain value TEEKHAYU MEEKAEW<br>user email now contain value TEEKHAYU.M@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PROCUREMENT OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:57:45', 'admin', 'meo_users', 'user id now contain value 71456<br>emp id now contain value 71456<br>user full name now contain value NUJCHAREE JAMJAENG<br>user email now contain value NUJCHAREE.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING OFFICER - SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:59:02', 'admin', 'meo_users', 'user id now contain value 71476<br>emp id now contain value 71476<br>user full name now contain value DANAI JARI<br>user email now contain value DANAI.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR WAREHOUSE SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:59:22', 'admin', 'meo_users', 'user id now contain value 71020<br>emp id now contain value 71020<br>user full name now contain value AMPOL CHAREANSUP<br>user email now contain value AMPOL.C@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT OFFICER - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:59:39', 'admin', 'meo_users', 'user id now contain value 71317<br>emp id now contain value 71317<br>user full name now contain value SANTI JUATHAI<br>user email now contain value SANTI.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 22:59:58', 'admin', 'meo_users', 'user id now contain value 71367<br>emp id now contain value 71367<br>user full name now contain value SOREEKIN SANGNUAL<br>user email now contain value SORREKIN.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 23:00:24', 'admin', 'meo_users', 'user id now contain value 71453<br>emp id now contain value 71453<br>user full name now contain value RACHEN  CHAIONKAEW<br>user email now contain value RACHEN.C@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 23:00:44', 'admin', 'meo_users', 'user id now contain value 71371<br>emp id now contain value 71371<br>user full name now contain value JIRAPORN SUWANNA<br>user email now contain value JIRAPORN.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 23:01:04', 'admin', 'meo_users', 'user id now contain value 7994<br>emp id now contain value 7994<br>user full name now contain value SITTIPONG SAYCHUMPUN<br>user email now contain value SITTIPONG.SC@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-25 23:05:01', 'admin', 'meo_users', 'user id now contain value 71056<br>emp id now contain value 71056<br>user full name now contain value SOPON PONPAI<br>user email now contain value SOPON.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:08:30', 'admin', 'region', 'id group bu  now contain value THAILAND- UWO<br>region title now contain value SONGKHLA, SATTAHIP<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-26 00:09:30', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 00:11:38', 'admin', 'meo_users', 'user id now contain value 71359<br>emp id now contain value 71359<br>user full name now contain value KANDA RAKPAKDEE<br>user email now contain value KANDA.R@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:13:20', 'admin', 'meo_users', 'user id now contain value 71372<br>emp id now contain value 71372<br>user full name now contain value SUWANNA BOONKUMNED<br>user email now contain value SUWANNA.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:13:39', 'admin', 'meo_users', 'user id now contain value 71433<br>emp id now contain value 71433<br>user full name now contain value PHETBUREE SANGMANEE<br>user email now contain value PHETBUREE.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER-SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:13:56', 'admin', 'meo_users', 'user id now contain value 71508<br>emp id now contain value 71508<br>user full name now contain value PHILIPPE LAUVRAY<br>user email now contain value PHILIPPE.L@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:14:25', 'admin', 'meo_users', 'user id now contain value 71567<br>emp id now contain value 71567<br>user full name now contain value KITTISAK  SUWANNSRI<br>user email now contain value KITTISAK.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER-TRAINING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:14:53', 'admin', 'meo_users', 'user id now contain value 71306<br>emp id now contain value 71306<br>user full name now contain value THAMRONGSAK PANJUNSEE<br>user email now contain value THAMRONGSAK.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINER OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:15:14', 'admin', 'meo_users', 'user id now contain value 71370<br>emp id now contain value 71370<br>user full name now contain value PATHOMPONG PROMYA <br>user email now contain value PATHOMPONG.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINER OFFICER TRAINING COORDINATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:15:38', 'admin', 'meo_users', 'user id now contain value 71463<br>emp id now contain value 71463<br>user full name now contain value MOEHAMAD  ARSYAD<br>user email now contain value MOEHAMAD.A@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - WORKSHOP & STORES<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:16:45', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value MANAGEMENT (THAI)<br>members now contain value ATTASIT  KORNCHAIYAPRUK; YUTH  METHEEWITUD; PIRIYADIT  CHOOPHUNGART; <br>'),
('add', 'ADMIN', '2017-01-26 00:18:03', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value FINANCE AND ACCOUNTING (THAI)<br>members now contain value SASITHORN  SURIYACHAN ; SIVILAI  CHIRAMANAPHUN; SUKIT  KITPATH; NARUMON SIRITONGKAM ; BENJAWAN  PANKLOM; CHADA  PHOONJANTANG; DAWAPHA  JANTARAPITAK; YAOWALUCK  THREECHADARAT; <br>'),
('add', 'ADMIN', '2017-01-26 00:18:18', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value FINANCE & ACCOUNTING (THAI)<br>members now contain value SASITHORN  SURIYACHAN ; SIVILAI  CHIRAMANAPHUN; SUKIT  KITPATH; NARUMON SIRITONGKAM ; BENJAWAN  PANKLOM; CHADA  PHOONJANTANG; DAWAPHA  JANTARAPITAK; YAOWALUCK  THREECHADARAT; <br>'),
('add', 'ADMIN', '2017-01-26 00:20:00', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT)<br>members now contain value BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; <br>'),
('delete', 'ADMIN', '2017-01-26 00:20:37', 'admin', 'department', 'FINANCE & ACCOUNTING (THAI) deleted'),
('update', 'ADMIN', '2017-01-26 00:20:52', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT) to BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT)<br>members updates from BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK;  to BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; VANDEE INTAPANYA; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 00:22:34', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value CREWING - BKK (THAI)<br>members now contain value YINGYOD THONGNAUM; VIPA TEEPAPONG; PACHARAPORN THUNPRASERT; NIDA SENGTHONG; <br>'),
('add', 'ADMIN', '2017-01-26 00:24:39', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value HSQE (THAI)<br>members now contain value VERNON LOW; PATTARAPOOM SANTIWEKIN; WORASAK BUAPLOD; PAWARIT ARSAKIT; PANYA BOONANEKSUB; <br>'),
('update', 'ADMIN', '2017-01-26 00:25:37', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from HSQE (THAI) to HSQE (THAI)<br>members updates from VERNON LOW; PATTARAPOOM SANTIWEKIN; WORASAK BUAPLOD; PAWARIT ARSAKIT; PANYA BOONANEKSUB;  to VERNON LOW; PATTARAPOOM SANTIWEKIN; WORASAK BUAPLOD; PAWARIT ARSAKIT; PANYA BOONANEKSUB; APAPAN TEPMANEE; SUPASSORN  SAENNIEM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 00:27:54', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value OPERATIONS (THAI)<br>members now contain value CAPT.PONGSARIT KLOMKHUM; CAPT.THIANCHAI DHANKULCHAI; THEERADET SAENKET; SAMPAN  SAMPANWICHAIN; JARIYA PANKHOUSUK; <br>'),
('add', 'ADMIN', '2017-01-26 00:28:43', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value MANAGEMENT (THAI- SKL/SATTAHIP)<br>members now contain value THONGCHAI PETCHARAT; PRAPHOJ JAICHAROEN; <br>'),
('add', 'ADMIN', '2017-01-26 00:29:39', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value TECHNICAL (THAI)<br>members now contain value SITHE SOOKBAN; PANUWAT SANGASILAPA; SUTHAT KUAKOONRAT; WANNAPAT TABMAK; SOMBOON POLSWANG; SURASAK  WEERAWATTANA; SATID  THONGSRINUAN  ; <br>'),
('add', 'ADMIN', '2017-01-26 00:31:00', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value PROCEDUREMET (THAI)<br>members now contain value CHARIYA CHAROENSOOK; USAVADEE KETKAEW; THIRAYA BOONRAT; NATTAMON KHUNTIKULANON; TEEKHAYU MEEKAEW; NUJCHAREE JAMJAENG; KITTISAK  SUWANNSRI; <br>'),
('update', 'ADMIN', '2017-01-26 00:31:30', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from PROCEDUREMET (THAI) to PROCUREMENT (THAI)<br>members updates from KITTISAK  SUWANNSRI; CHARIYA CHAROENSOOK; USAVADEE KETKAEW; NATTAMON KHUNTIKULANON; THIRAYA BOONRAT; TEEKHAYU MEEKAEW; NUJCHAREE JAMJAENG;  to CHARIYA CHAROENSOOK; USAVADEE KETKAEW; THIRAYA BOONRAT; NATTAMON KHUNTIKULANON; TEEKHAYU MEEKAEW; NUJCHAREE JAMJAENG; KITTISAK  SUWANNSRI; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 00:33:20', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value WAREHOUSE<br>members now contain value DANAI JARI; AMPOL CHAREANSUP; SANTI JUATHAI; SOREEKIN SANGNUAL; RACHEN  CHAIONKAEW; JIRAPORN SUWANNA; <br>'),
('add', 'ADMIN', '2017-01-26 00:34:20', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value TRAINING (THAI)<br>members now contain value PHILIPPE LAUVRAY; KITTISAK  SUWANNSRI; THAMRONGSAK PANJUNSEE; PATHOMPONG PROMYA ; <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-26 00:34:39', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value WORKSHOP (THAI)<br>members now contain value MOEHAMAD  ARSYAD; <br>'),
('update', 'ADMIN', '2017-01-26 00:36:29', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP OPERATIONS<br>member name updates from GROUP GF; ORG3 MEMBER2;  to GROUP GF; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 00:38:29', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value CREWING (THAI)<br>members now contain value SITTIPONG SAYCHUMPUN; SOPON PONPAI; KANDA RAKPAKDEE; SUWANNA BOONKUMNED; PHETBUREE SANGMANEE; <br>'),
('delete', 'ADMIN', '2017-01-26 00:40:08', 'admin', 'region', 'THAILAND, SKL deleted'),
('add', 'ADMIN', '2017-01-26 00:44:44', 'admin', 'region', 'id group bu  now contain value THAILAND- UWO<br>region title now contain value THAILAND - SKL<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-26 00:48:11', 'admin', 'vessel_region', 'id region  now contain value THAILAND - SKL<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-29 20:57:36', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-01-29 20:57:54', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-01-29 20:59:40', 'admin', 'client_users', 'client user id now contain value 0305<br>client user full name now contain value BHARATRAJ+12<br>client email id now contain value BHARATRAJ+12@SINGSYS.COM<br>id region now contain value THAILAND, SAT<br>company now contain value SING SYS<br>designation now contain value QUALITY CONTROL ENGINEER<br>'),
('add', 'ADMIN', '2017-01-29 21:02:19', 'admin', 'user_rights', 'TEST Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-01-29 21:02:41', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-01-29 21:03:27', 'admin', 'user_rights', 'id meo user now contain value JOVY CHAY<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-29 21:03:49', 'admin', 'user_rights', 'id meo user now contain value REKHA NANDWANI<br>id group now contain value TEST<br>Contacts / Shore Personnel for view is restricted with access titles <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-29 21:06:13', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI <br>org group name now contain value HELLO MEO TEST<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-01-30 18:09:44', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP OPERATIONS1<br>member name now contain value KM GROUP; <br>member email now contain value KMGROUP@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-01-30 18:09:53', 'admin', 'organisation_group', 'GROUP OPERATIONS deleted'),
('delete', 'ADMIN', '2017-01-30 18:10:15', 'admin', 'organisation_group', 'KNOWLEDGE MANAGEMNT CENTRE (KMC) deleted'),
('delete', 'ADMIN', '2017-01-30 18:10:16', 'admin', 'organisation_group', ' deleted'),
('update', 'ADMIN', '2017-01-30 23:23:10', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS1 to GROUP OPERATIONS<br>member name updates from KM GROUP;  to KM GROUP; TEST ; <br>member email updates from KMGROUP@MEOGROUP.COM;  to KMGROUP@MEOGROUP.COM; TEST@TEST.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-30 23:23:16', 'admin', 'organisation_group', 'TST deleted'),
('delete', 'ADMIN', '2017-01-30 23:23:22', 'admin', 'organisation_group', 'HELLO MEO TEST deleted'),
('delete', 'ADMIN', '2017-01-30 23:23:27', 'admin', 'organisation_group', 'ORG GROUP NEW  deleted'),
('delete', 'ADMIN', '2017-01-30 23:23:30', 'admin', 'organisation_group', 'KNOWLEDGE MANAGEMENT CENTRE deleted'),
('update', 'ADMIN', '2017-01-30 23:23:39', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP OPERATIONS<br>member name updates from KM GROUP; TEST ;  to KM GROUP; TEST ; <br>member email updates from KMGROUP@MEOGROUP.COM; TEST@TEST.COM;  to KMGROUP@MEOGROUP.COM; TEST@TEST.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-31 18:52:19', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value INDONESIA BU<br>member name now contain value INDONESIA STAFF; <br>member email now contain value FCFHGF@N; <br>'),
('update', 'ADMIN', '2017-01-31 19:58:26', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT) to BANGKOK OFFICE (MANAGEMENT/HR/COMMERCIAL DEPT)<br>members updates from BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; VANDEE INTAPANYA;  to BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; VANDEE INTAPANYA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-31 19:59:45', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from WAREHOUSE to WAREHOUSE (THAI) <br>members updates from DANAI JARI; AMPOL CHAREANSUP; SANTI JUATHAI; SOREEKIN SANGNUAL; RACHEN  CHAIONKAEW; JIRAPORN SUWANNA;  to DANAI JARI; AMPOL CHAREANSUP; SANTI JUATHAI; SOREEKIN SANGNUAL; RACHEN  CHAIONKAEW; JIRAPORN SUWANNA; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-31 20:01:17', 'admin', 'groupbu', 'ROW  deleted'),
('add', 'ADMIN', '2017-01-31 20:01:36', 'admin', 'region', 'id group bu  now contain value EOS- ROW<br>region title now contain value ROW- AUSTRALIA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-31 20:02:37', 'admin', 'region', 'id group bu  now contain value EOS- ROW<br>region title now contain value ROW- OTHERS<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-31 21:19:57', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value XYZ<br>member name now contain value AKASH; <br>member email now contain value AKASH@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-31 22:03:05', 'admin', 'vessel_region', 'id region updates from BATAM to THAILAND - SKL<br>id vessel name updates from EXPRESS 53;  to EXPRESS 53; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-31 22:04:00', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value FBP<br>member name now contain value ACCOUNTS TEAM LEADERS; <br>member email now contain value ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-01-31 22:07:29', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from FBP to FINANCE BUSINESS PARTNERSHIP<br>member name updates from ACCOUNTS TEAM LEADERS;  to ACCOUNTS TEAM LEADERS; FPA; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-31 22:11:57', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST - UAE<br>org group name now contain value FINANCE & SUPPLY CHAIN<br>member name now contain value FINANCE ME; <br>member email now contain value FINANCE_ME@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-01-31 22:14:04', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>org group name updates from FINANCE & SUPPLY CHAIN to FINANCE & SUPPLY CHAIN<br>member name updates from FINANCE ME;  to FINANCE ME; <br>member email updates from FINANCE_ME@MEOGROUP.COM;  to FINANCE_ME@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-31 22:16:02', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from FINANCE BUSINESS PARTNERSHIP to FINANCE BUSINESS PARTNERSHIP<br>member name updates from ACCOUNTS TEAM LEADERS; FPA;  to ACCOUNTS TEAM LEADERS; FPA; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-31 22:16:19', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>org group name updates from FINANCE & SUPPLY CHAIN to FINANCE & SUPPLY CHAIN<br>member name updates from FINANCE ME;  to FINANCE ME; <br>member email updates from FINANCE_ME@MEOGROUP.COM;  to FINANCE_ME@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-31 22:27:00', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP HUMAN RESOURCE<br>member name now contain value HUMAN RESOURCE SG; <br>member email now contain value HR@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-01-31 22:32:04', 'admin', 'vessel_region', 'id region updates from SPECIALISED VESSEL SERVICES (SVS) to SPECIALISED VESSEL SERVICES (SVS)<br>id vessel name updates from MERMAID NUSANTARA; RESOLUTION; ENDEAVOUR; MICLYN ENDURANCE; VOYAGER EXPLORER;  to MERMAID NUSANTARA; RESOLUTION; ENDEAVOUR; MICLYN ENDURANCE; VOYAGER EXPLORER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-31 22:32:31', 'admin', 'shore_address', 'shore region now contain value THAILAND <br>address now contain value Bangkok Thailand<br>full address now contain value UNIWISE OFFSHORE LTD <br>'),
('update', 'ADMIN', '2017-01-31 22:33:27', 'admin', 'shore_address', 'shore region updates from THAILAND  to THAILAND <br>address updates from Bangkok Thailand to BANGKOK THAILAND<br>full address updates from UNIWISE OFFSHORE LTD  to UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-31 22:35:18', 'admin', 'shore_address', 'shore region now contain value ABU DHABI, UAE<br>address now contain value Abu Dhabi - United Arab Emirates<br>full address now contain value MICLYN EXPRESS OFFSHORE SHIP MANAGEMENT LLC, OFFICE NO. 601-3B, AL SAMAN TOWER, TOWER B, HAMDAN STREET, PO BOX 10807, ABU DHABI, UAE<br>'),
('add', 'ADMIN', '2017-01-31 22:36:25', 'admin', 'shore_address', 'shore region now contain value DUBAI, UAE<br>address now contain value Dubai - United Arab Emirates<br>full address now contain value EXPRESS OFFSHORE TRANSPORT (UAE) LLC, PORT SAID ACICO BUSINESS PARK OFFICE, 1ST FLOOR OFFICE 100 A13, DUBAI, UAE<br>'),
('add', 'ADMIN', '2017-01-31 22:37:30', 'admin', 'shore_address', 'shore region now contain value BRUNEI<br>address now contain value Brunei<br>full address now contain value MICLYN EXPRESS OFFSHORE (B) SDN BHD, NO.6, SIMPANG 28-5, JALAN MAULANA, KUALA BELAIT KA 1931, BRUNEI DARUSSALAM<br>'),
('add', 'ADMIN', '2017-01-31 22:38:53', 'admin', 'shore_address', 'shore region now contain value MIRI MALAYSIA<br>address now contain value MIRI SARAWAK MALAYSIA<br>full address now contain value BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA<br>'),
('add', 'ADMIN', '2017-01-31 22:40:50', 'admin', 'shore_address', 'shore region now contain value SATTAHIP,  THAILAND<br>address now contain value Sattahip Chon Buri Thailand<br>full address now contain value UNIWISE OFFSHORE LTD, 234/37-38 MU. 6, TAMBOL SATTAHIP, TAMPHUR SATTAHIP, CHONBURI 20180, THAILAND<br>'),
('add', 'ADMIN', '2017-01-31 22:41:41', 'admin', 'shore_address', 'shore region now contain value SONGKHLA THAILAND<br>address now contain value SONGKHLA THAILAND<br>full address now contain value UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND<br>'),
('delete', 'ADMIN', '2017-01-31 22:45:11', 'admin', 'vessel_region', 'SPECIALISED VESSEL SERVICES (SVS) deleted'),
('delete', 'ADMIN', '2017-01-31 23:02:22', 'admin', 'organisation_group', 'XYZ deleted'),
('update', 'ADMIN', '2017-01-31 23:15:58', 'admin', 'vessel_region', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>id vessel name updates from EXPRESS 19;  to EXPRESS 19; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-31 23:21:02', 'admin', 'vessel_region', 'MIDDLE EAST - UAE deleted'),
('update', 'ADMIN', '2017-01-31 23:21:59', 'admin', 'vessel_region', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>id vessel name updates from EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL; SAMSON SUPPORTER;  to EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL; SAMSON SUPPORTER; EXPRESS 90; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-31 23:24:01', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST  - DUBAI, UAE<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-31 23:25:58', 'admin', 'region', 'MIDDLE EAST - UAE deleted'),
('delete', 'ADMIN', '2017-01-31 23:26:17', 'admin', 'region', 'MIDDLE EAST - KSA deleted'),
('update', 'ADMIN', '2017-01-31 23:33:17', 'admin', 'vessel_region', 'id region updates from THAILAND - SKL to THAILAND - SKL<br>id vessel name updates from AOS 2; AOS 8; EXPRESS 35; EXPRESS 36; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 80; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 18; UNI EXPRESS 19; UNI EXPRESS 21; UNI EXPRESS 22; UNI EXPRESS 23; UNI EXPRESS 24; UNI EXPRESS 25; AOS PHUKET; UNIWISE SONGKHLA; UNIWISE ADVANCER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; UNIWISE SUPPORTER; MICLYN CONSTRUCTOR I; MICLYN CONSTRUCTOR I; MICLYN CONSTRUCTOR I; MICLYN ENERGY; MICLYN ENTERPRISE; SOVEREIGN 2; MEO VIGILANT; MEO EMPEROR; MEO EMPEROR; MEO EMPRESS;  to SOVEREIGN 2; AOS 8; UNI EXPRESS 21; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; EXPRESS 65; UNI EXPRESS 18; EXPRESS 71; EXPRESS 73; UNI EXPRESS 23; UNI EXPRESS 24; EXPRESS 80; MICLYN ENERGY; MICLYN ENTERPRISE; UNIWISE ADVANCER; MEO VIGILANT; MICLYN CONSTRUCTOR I; UNI EXPRESS 22; AOS PHUKET; UNIWISE SONGKHLA; MEO EMPEROR; UNI EXPRESS 25; UNIWISE SUPPORTER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; EXPRESS 53; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-31 23:33:28', 'admin', 'vessel_region', 'THAILAND - SKL deleted'),
('add', 'ADMIN', '2017-02-01 00:13:53', 'admin', 'meo_users', 'user id now contain value 0000000000001<br>emp id now contain value 0000000000001<br>user full name now contain value QUEK YEOW RONG<br>user email now contain value YR.QUEK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value IT EXECUTIVE<br>expiry date now contain value 2017-12-31<br>'),
('update', 'ADMIN', '2017-02-01 01:52:59', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from FINANCE BUSINESS PARTNERSHIP to GROUP FINANCE<br>member name updates from ACCOUNTS TEAM LEADERS; FPA;  to ACCOUNTS TEAM LEADERS; FPA; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 01:53:12', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP KNOWLEDGE MANAGEMENT<br>member name updates from KM GROUP; TEST ;  to KM GROUP; TEST ; <br>member email updates from KMGROUP@MEOGROUP.COM; TEST@TEST.COM;  to KMGROUP@MEOGROUP.COM; TEST@TEST.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 17:21:24', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value FLEET<br>member name now contain value OPERATIONS INDO; <br>member email now contain value OPSINDO@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:29:58', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value SHARED ACCOUNTING SERVICES<br>member name now contain value ACCOUNTS RECEIVABLE; <br>member email now contain value AR_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:37:03', 'admin', 'organisation_group', 'id region now contain value THAILAND - SKL<br>org group name now contain value THAILAND HSQE<br>member name now contain value CREWING THAILAND; <br>member email now contain value CREWING_TH@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:51:09', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST HSQE<br>member name now contain value HSQE DUBAI; <br>member email now contain value HSQE_DUBAI@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:52:16', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value ME HSQE<br>member name now contain value HSQE MIDDLE EAST ; <br>member email now contain value HSQE_ME@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:57:28', 'admin', 'organisation_group', 'id region now contain value THAILAND - SKL<br>org group name now contain value HSQE THAILAND <br>member name now contain value HSQE THAILAND; <br>member email now contain value HSQE_TH@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:57:57', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST TECHNICAL & OPERATIONS<br>member name now contain value OPERATIONS; <br>member email now contain value OPSDEP@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:58:53', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value TECHNICAL & OPERATIONS<br>member name now contain value PROJECT DBS; <br>member email now contain value PROJECT.DBS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 17:59:46', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value FLEET INDONESIA <br>member name now contain value SHIPYARD ENQUIRY; <br>member email now contain value SHIPYARD.ENQUIRY@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 18:28:21', 'admin', 'shore_address', 'shore region now contain value INDONESIA<br>address now contain value INDONESIA<br>full address now contain value PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 <br>'),
('delete', 'ADMIN', '2017-02-01 18:30:25', 'admin', 'organisation_group', 'FLEET INDONESIA  deleted'),
('delete', 'ADMIN', '2017-02-01 18:43:59', 'admin', 'organisation_group', 'GROUP KNOWLEDGE MANAGEMENT deleted'),
('delete', 'ADMIN', '2017-02-01 18:45:20', 'admin', 'organisation_group', 'INDONESIA BU deleted'),
('update', 'ADMIN', '2017-02-01 18:48:31', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to INDONESIA - JAKARTA<br>org group name updates from TECHNICAL & OPERATIONS to FLEET <br>member name updates from PROJECT DBS;  to OPERATIONS INDO; <br>member email updates from PROJECT.DBS@MEOGROUP.COM;  to OPSINDO@MEOGROUP.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 18:49:40', 'admin', 'organisation_group', 'FLEET deleted'),
('add', 'ADMIN', '2017-02-01 18:52:11', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value TECHNICAL & OPERATIONS<br>member name now contain value PROJECT DBS; <br>member email now contain value PROJECT.DBS@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 19:09:30', 'admin', 'organisation_group', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>org group name updates from FLEET  to THAI/ASEAN BU- INDONESIA<br>member name updates from OPERATIONS INDO;  to OPERATIONS INDO; MARKETING JKT; <br>member email updates from OPSINDO@MEOGROUP.COM;  to OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 19:14:28', 'admin', 'organisation_group', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>org group name updates from THAI/ASEAN BU- INDONESIA to THAI/ASEAN BU- INDONESIA<br>member name updates from OPERATIONS INDO; MARKETING JKT;  to OPERATIONS INDO; MARKETING JKT; EOS FINANCE; CREWING JKT; SHIPYARD ENQUIRY; INDONESIA STAFF; <br>member email updates from OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM;  to OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; EOS.FIN-JKK@MEOGROUP.COM; CREWING_JKT@MEOGROUP.COM; SHIPYARD.ENQUIRY@MEOGROUP.COM; ASEAN_ID@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 19:25:00', 'admin', 'organisation_group', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>org group name updates from THAI/ASEAN BU- INDONESIA to THAI/ASEAN BU- INDONESIA<br>member name updates from OPERATIONS INDO; MARKETING JKT; EOS FINANCE; CREWING JKT; SHIPYARD ENQUIRY; INDONESIA STAFF;  to OPERATIONS INDO; MARKETING JKT; INDONESIA STAFF; CREWING JKT; SHIPYARD ENQUIRY; EOS FINANCE; <br>member email updates from OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; EOS.FIN-JKK@MEOGROUP.COM; CREWING_JKT@MEOGROUP.COM; SHIPYARD.ENQUIRY@MEOGROUP.COM; ASEAN_ID@MEOGROUP.COM;  to OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; ASEAN_ID@MEOGROUP.COM; CREWING_JKT@MEOGROUP.COM; SHIPYARD.ENQUIRY@MEOGROUP.COM; EOS.FIN-JKK@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 19:26:14', 'admin', 'department', 'id region updates from AUSTRALIA to AUSTRALIA<br>department name updates from EXECUTIVE (AUS) to EXECUTIVE (AUS)<br>members updates from DAVID NICHOLAS;  to BHARATRAJ; BHARATRAJ MEO USER; DAVID NICHOLAS; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 19:27:08', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value ADMINISTRATION<br>member name now contain value ADMIN SG; <br>member email now contain value ADMIN_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:27:33', 'admin', 'organisation_group', 'id region now contain value EOS<br>org group name now contain value EOS<br>member name now contain value EOS; <br>member email now contain value EOS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:34:21', 'admin', 'organisation_group', 'id region now contain value EOS<br>org group name now contain value EOS OPERATIONS<br>member name now contain value SAIPEM.ICHTHYS; EOS OPERATIONS; OPERATIONS AUS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; <br>member email now contain value SAIPEM.ICHTHYS@MEOGROUP.COM; OPS@MEOGROUP.COM; OPERATIONS_AUS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; GHL_MMA@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 19:35:58', 'admin', 'organisation_group', 'MIDDLE EAST HSQE deleted'),
('delete', 'ADMIN', '2017-02-01 19:36:04', 'admin', 'organisation_group', 'ME HSQE deleted'),
('delete', 'ADMIN', '2017-02-01 19:36:13', 'admin', 'organisation_group', 'MIDDLE EAST TECHNICAL & OPERATIONS deleted'),
('add', 'ADMIN', '2017-02-01 19:37:04', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value FINANCE & SUPPLY CHAIN ME<br>member name now contain value FINANCE ME; PURCHASING ME; ME PURCHASERS; <br>member email now contain value FINANCE_ME@MEOGROUP.COM; PURCHASING_ME@MEOGROUP.COM; ME_PURCHASERS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:39:07', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP COMMERCIAL<br>member name now contain value COMMUNICATION; SALES AND PURCHASE; GROUP COMMERCIAL; QUIZ; MARKETING SG; <br>member email now contain value COMMUNICATION@MEOGROUP.COM; SNP@MEOGROUP.COM; GROUPCOMMERCIAL@MEOGROUP.COM; QUIZ@MEOGROUP.COM; MARKETING_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:40:39', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP CREWING<br>member name now contain value GROUP PAYROLL SG; PAYROLL AUS; <br>member email now contain value GROUP_PAYROLL_SG@MEOGROUP.COM; PAYROLL_AUS@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 19:41:36', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP CREWING to GROUP CREWING<br>member name updates from GROUP PAYROLL SG; PAYROLL AUS;  to GROUP PAYROLL SG; PAYROLL AUS; CREWING SG; CREW PAYROLL; <br>member email updates from GROUP_PAYROLL_SG@MEOGROUP.COM; PAYROLL_AUS@MEOGROUP.COM;  to GROUP_PAYROLL_SG@MEOGROUP.COM; PAYROLL_AUS@MEOGROUP.COM; CREWING_SG@MEOGROUP.COM; CREW_PAYROLL@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 19:46:02', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP FINANCE to GROUP FINANCE<br>member name updates from ACCOUNTS TEAM LEADERS; FPA;  to ACCOUNTS TEAMLEADERS SG; FPA; CONSOL; CHARTER SUMMARY; FINANCE MGRS SG; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; CONSOL@MEOGROUP.COM; CHARTERSUMMARY@MEOGROUP.COM; FINANCE_MGRS_SG@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 19:47:06', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP FLEET PLANNED MAINTENANCE SYSTEM<br>member name now contain value FPM; <br>member email now contain value FPM@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:48:06', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP HSQE<br>member name now contain value HSQE SG; <br>member email now contain value HSQE_SG@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 19:49:05', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP HUMAN RESOURCE to GROUP HUMAN RESOURCE<br>member name updates from HUMAN RESOURCE SG;  to HUMAN RESOURCE SG; HR ME; ADMIN ME; <br>member email updates from HR@MEOGROUP.COM;  to HR@MEOGROUP.COM; HR_ME@MEOGROUP.COM; ADMIN_ME@MICLYNEXPRESSOFFSHORE.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 19:50:10', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP IT & SAP TEAM<br>member name now contain value IT INFRASTRUCTURE; MEO APP; SAP SUPPORT; <br>member email now contain value ITHELPDESKTEAM@MEOGROUP.COM; MEO_APP@MEOGROUP.COM; SAP_SUPPORT@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:50:40', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP KNOWLEDGE MANAGEMENT CENTRE<br>member name now contain value KM GROUP; <br>member email now contain value KMGROUP@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:55:16', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP SUPPLY CHAIN MANAGEMENT (SCM)<br>member name now contain value PURCHASING SG; PURCHASING BATAM; <br>member email now contain value PURCHASING_SG@MEOGROUP.COM; PURCHASING_BATAM@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 19:58:43', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from TECHNICAL & OPERATIONS to GROUP TECHNICAL & OPERATIONS<br>member name updates from PROJECT DBS;  to PROJECT DBS; OPERATIONS SG; TECHNICAL SG; VPN SGP; GENERAL FLEET GROUP; ROVING FLEET BT; NEWBUILD ENGINEERING SG; <br>member email updates from PROJECT.DBS@MEOGROUP.COM;  to PROJECT.DBS@MEOGROUP.COM; OPSSGP@MEOGROUP.COM; TECHNICAL_SG@MEOGROUP.COM; VPN_SGP@MEOGROUP.COM; GFGROUP@MEOGROUP.COM; ROVING_FLEET_BT@MEOGROUP.COM; NEWBUILD_ENGINEERING_SG@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 19:59:52', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP TRAINING<br>member name now contain value TRAINING SG; <br>member email now contain value TRAINING_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:01:44', 'admin', 'shore_address', 'shore region now contain value HONG KONG<br>address now contain value TSIM SHA TSUI, HONG KONG<br>full address now contain value NATHAN ROAD<br>'),
('add', 'ADMIN', '2017-02-01 20:04:45', 'admin', 'shore_address', 'shore region now contain value SPAIN<br>address now contain value Madrid, Spain<br>full address now contain value UNVIVERSITY OF SPAIN<br>'),
('update', 'ADMIN', '2017-02-01 20:06:15', 'admin', 'shore_address', 'shore region updates from SPAIN to SPAIN<br>address updates from Madrid, Spain to MADRID, SPAIN<br>full address updates from UNVIVERSITY OF SPAIN to UNVIVERSITY OF SPAIN TRSXBYCTVY YTEFTGUJY 5R7F6UTGUY 6RYTGUYH 8TYFUYG YTFUGYI 7TUYIU 76TGH 657FRU 57FU 76UG   RYFTUGYN6FY 67TNUG7H A7UG 767FGUAYIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-01 20:16:06', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-01 20:18:19', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ to BHARATRAJ<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from  to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to all <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('add', 'ADMIN', '2017-02-01 21:33:17', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST BU<br>member name now contain value CREWING ME; HSQE ME; HSQE DUBAI; COMMERCIAL ME; QATAR OFFICE; ME STAFF; ME SBGS GHASA; PROJECT GHASHA UAE; ME CREW FEEDBACKL; ME MARINE SYSTEM; OPERATIONS ME; SSAS ME; <br>member email now contain value CREWING_ME@MEOGROUP.COM; HSQE_ME@MEOGROUP.COM; HSQE_DUBAI@MEOGROUP.COM; COMMERCIAL_ME@MEOGROUP.COM; QATAR.OFFICE@MEOGROUP.COM; ME_STAFF@MEOGROUP.COM; MEOGHASA@MEOGROUP.COM; PROJECTGHASHAUAE@MEOGROUP.COM; MECREWFEEDBACK@MEOGROUP.COM; MEMARINESYSTEM@MEOGROUP.COM; OPSDEP@MEOGROUP.COM; SSAS_ME@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 21:34:20', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from SHARED ACCOUNTING SERVICES to SHARED ACCOUNTING SERVICES<br>member name updates from ACCOUNTS RECEIVABLE;  to ACCOUNTS RECEIVABLE; ACCOUNTS PAYABLE; FINANCE SG; DRP TEAM; GENERAL LEDGER ; <br>member email updates from AR_SG@MEOGROUP.COM;  to AR_SG@MEOGROUP.COM; ACCOUNTS_AP_SG@MEOGROUP.COM; FINANCE_SG@MEOGROUP.COM; DRP_TEAM@MEOGROUP.COM; GL_SG@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 21:38:40', 'admin', 'organisation_group', 'id region now contain value SPECIALISED VESSEL SERVICES (SVS)<br>org group name now contain value SPECIALISED VESSEL OFFSHORE SERVICES<br>member name now contain value DP/SUBSEA FLEET; SVS; `; <br>member email now contain value SUBSEADP@MEOGROUP.COM; SVS@MEOGROUP.COM; HI@MEO.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 21:39:02', 'admin', 'organisation_group', 'SPECIALISED VESSEL OFFSHORE SERVICES deleted'),
('delete', 'ADMIN', '2017-02-01 21:39:04', 'admin', 'organisation_group', ' deleted'),
('update', 'ADMIN', '2017-02-01 21:39:49', 'admin', 'region', 'id group bu updates from ASEAN- MALAYSIA to ASEAN- MALAYSIA<br>region title updates from MALAYSIA to MALAYSIAA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 21:40:12', 'admin', 'region', 'id group bu updates from ASEAN- MALAYSIA to ASEAN- MALAYSIA<br>region title updates from MALAYSIAA to MALAYSIA<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 21:40:19', 'admin', 'organisation_group', 'id region now contain value SPECIALISED VESSEL SERVICES (SVS)<br>org group name now contain value SPECIALISED VESSEL OFFSHORE SERVICES<br>member name now contain value SPECIAL FLEET GROUP; DP/SUBSEA FLEET; SVS; <br>member email now contain value SFGROUP@MEOGROUP.COM; SUBSEADP@MEOGROUP.COM; SVS@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 21:41:10', 'admin', 'region', 'BATAM deleted'),
('delete', 'ADMIN', '2017-02-01 21:59:12', 'admin', 'shore_address', 'SPAIN deleted'),
('update', 'ADMIN', '2017-02-01 21:59:36', 'admin', 'shore_address', 'shore region updates from INDONESIA to JAKARTA <br>address updates from INDONESIA to INDONESIA<br>full address updates from PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	  to PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 <br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-01 21:59:51', 'admin', 'shore_address', 'shore region updates from SONGKHLA THAILAND to SONGKHLA, THAILAND<br>address updates from SONGKHLA THAILAND to Songkhla Thailand<br>full address updates from UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND to UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-01 22:00:03', 'admin', 'shore_address', 'shore region updates from THAILAND  to BANGKOK, THAILAND <br>address updates from BANGKOK THAILAND to BANGKOK THAILAND<br>full address updates from UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND to UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-01 22:00:10', 'admin', 'shore_address', 'shore region updates from MIRI MALAYSIA to MIRI, MALAYSIA<br>address updates from MIRI SARAWAK MALAYSIA to MIRI SARAWAK MALAYSIA<br>full address updates from BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA to BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-01 22:00:49', 'admin', 'shore_address', 'shore region updates from JAKARTA  to JAKARTA, INDONESIA<br>address updates from INDONESIA to Jakarta Selatan, Jalan Kuningan Barat IV, West Kuningan, South Jakarta City, Special Capital Region of Jakarta, Indonesia<br>full address updates from PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	  to PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 <br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-01 22:02:17', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST - QATAR<br>org group name now contain value QATAR<br>member name now contain value QATAR OFFICE; <br>member email now contain value QATAR.OFFICE@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:02:50', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST - SAUDI<br>org group name now contain value SAUDI ARABIA<br>member name now contain value ME MARINE SYSTEM; <br>member email now contain value MEMARINESYSTEM@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 22:02:53', 'admin', 'shore_address', 'shore region updates from HONG KONG to QATAR<br>address updates from TSIM SHA TSUI, HONG KONG to QATAR PETROLEUM, WEST BAY, DOHA, QATAR<br>full address updates from NATHAN ROAD to MICLYN EXPRESS OFFSHORE 14TH FLOOR COMMERCIAL BANK TOWER WEST BAY, DOHA - QATAR DOHA QATAR  97444528374<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-01 22:04:04', 'admin', 'organisation_group', 'id region now contain value AUSTRALIA<br>org group name now contain value EOS OPERATIONS AUS<br>member name now contain value OPERATIONS AUS; <br>member email now contain value OPERATIONS_AUS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:04:46', 'admin', 'shore_address', 'shore region now contain value SAUDI ARABIA<br>address now contain value 31941 Rahima, Riyadh, Saudi Arabia<br>full address now contain value BARWIL AGENCIES BLDG P.O BOX 174, RAHIMA 31941 RAS TANURA, SAUDI ARABIA  966136681376<br>'),
('update', 'ADMIN', '2017-02-01 22:07:10', 'admin', 'department', 'id region updates from SINGAPORE  to EOS<br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; MICHAEL SLY ; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; MICHAEL SLY ; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 22:07:14', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; MICHAEL SLY ; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; MICHAEL SLY ; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 22:18:17', 'admin', 'organisation_group', 'id region updates from AUSTRALIA to AUSTRALIA<br>org group name updates from EOS OPERATIONS AUS to EOS OPERATIONS AUS<br>member name updates from OPERATIONS AUS;  to OPERATIONS AUS; AUS STAFF; <br>member email updates from OPERATIONS_AUS@MEOGROUP.COM;  to OPERATIONS_AUS@MEOGROUP.COM; AUS_STAFF@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 22:19:55', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to HEAD OF BU<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; MICHAEL SLY ; JOYCE TAN;  to MARK PETER VAN DER MOLEN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 22:19:57', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS to EOS<br>member name updates from EOS;  to EOS; ROW COMMERCIAL; FINANCE EOS; <br>member email updates from EOS@MEOGROUP.COM;  to EOS@MEOGROUP.COM; CHARTERING@MEOGROUP.COM; FINANCE_EOS@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 22:20:00', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from HEAD OF BU to HEAD OF BU<br>members updates from MARK PETER VAN DER MOLEN;  to MARK PETER VAN DER MOLEN; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 22:20:14', 'admin', 'organisation_group', 'EOS OPERATIONS deleted'),
('add', 'ADMIN', '2017-02-01 22:20:22', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value OPERATIONS<br>members now contain value COLIN DAVID TREWHELLA; <br>'),
('add', 'ADMIN', '2017-02-01 22:20:59', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FLEET MANAGMENT<br>members now contain value SUNIL SINGH; CRIS RYAN INDIG ENTERA; SHAWN WONG; LIM JUNRONG; <br>'),
('add', 'ADMIN', '2017-02-01 22:21:26', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS PARTNER<br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-01 22:22:58', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS  PARTNER  <br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-01 22:23:25', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS PARTNERS<br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-01 22:23:30', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS PARTNERSZ<br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-01 22:24:16', 'admin', 'organisation_group', 'id region now contain value EOS<br>org group name now contain value EOS OPERATIONS<br>member name now contain value EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; <br>member email now contain value OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:24:19', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value PROJECTS<br>members now contain value RHYAN DELOS REYES SABRIDO; JED IGOT; MICHAEL SLY ; <br>'),
('add', 'ADMIN', '2017-02-01 22:25:06', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value COMMERCIAL<br>members now contain value NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; NATALIE WEICHMANN; EUGENE TEO YU-CHNG; JOYCE TAN; <br>'),
('add', 'ADMIN', '2017-02-01 22:25:07', 'admin', 'organisation_group', 'id region now contain value AUSTRALIA<br>org group name now contain value GROUP CREWING AUS<br>member name now contain value PAYROLL AUS; <br>member email now contain value PAYROLL_AUS@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 22:25:24', 'admin', 'organisation_group', 'GROUP CREWING deleted'),
('add', 'ADMIN', '2017-02-01 22:25:35', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value OPS SUPPORT<br>members now contain value ONG CHEE WEE; MARICAR ZOLETA MANLAPAZ; GOH TING TING; <br>'),
('delete', 'ADMIN', '2017-02-01 22:26:46', 'admin', 'department', 'FINANCE BUSINESS PARTNERSZ deleted'),
('delete', 'ADMIN', '2017-02-01 22:26:49', 'admin', 'department', ' deleted'),
('add', 'ADMIN', '2017-02-01 22:26:53', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP CREWING<br>member name now contain value GROUP PAYROLL SG; CREWING SG; CREW PAYROLL; <br>member email now contain value GROUP_PAYROLL_SG@MEOGROUP.COM; CREWING_SG@MEOGROUP.COM; CREW_PAYROLL@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 22:27:04', 'admin', 'department', 'FINANCE BUSINESS PARTNER deleted'),
('delete', 'ADMIN', '2017-02-01 22:27:08', 'admin', 'department', ' deleted'),
('delete', 'ADMIN', '2017-02-01 22:27:19', 'admin', 'organisation_group', 'GROUP HUMAN RESOURCE deleted'),
('delete', 'ADMIN', '2017-02-01 22:27:21', 'admin', 'department', 'FINANCE BUSINESS PARTNERS deleted'),
('delete', 'ADMIN', '2017-02-01 22:27:24', 'admin', 'department', ' deleted');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-02-01 22:27:32', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP HUMAN RESOURCES<br>member name now contain value HR SG; <br>member email now contain value HR@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:28:22', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value GROUP HUMAN RESOURCES ME<br>member name now contain value ADMIN ME; HR ME; <br>member email now contain value ADMIN_ME@MICLYNEXPRESSOFFSHORE.COM; HR_ME@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 22:29:11', 'admin', 'organisation_group', 'MIDDLE EAST BU deleted'),
('add', 'ADMIN', '2017-02-01 22:36:25', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST BU<br>member name now contain value HSQE ME; HSQE DUBAI; COMMERCIAL ME; CREWING ME; ME STAFF; ME SBGS GHASA; PROJECT GHASHA UAE; ME CREW FEEDBACK; OPERATIONS ME; SSAS ME; <br>member email now contain value HSQE_ME@MEOGROUP.COM; HSQE_DUBAI@MEOGROUP.COM; COMMERCIAL_ME@MEOGROUP.COM; CREWING_ME@MEOGROUP.COM; ME_STAFF@MEOGROUP.COM; MEOGHASA@MEOGROUP.COM; PROJECTGHASHAUAE@MEOGROUP.COM; MECREWFEEDBACK@MEOGROUP.COM; OPSDEP@MEOGROUP.COM; SSAS_ME@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:55:36', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value TECHNICAL/ OPERATIONS ME<br>member name now contain value OPERATION KSA; TECHNICAL ME; OPERATIONS ME; OPERATIONS UAE; <br>member email now contain value OPS_KSA@MEOGROUP.COM; TECHNICAL_ME@MEOGROUP.COM; OPS_ME@MEOGROUP.COM; OPSUAE@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 23:00:28', 'admin', 'organisation_group', 'id region now contain value BRUNEI<br>org group name now contain value THAI/ ASEAN BU- BRUNEI<br>member name now contain value BRUNEI; BRUNEI OPS; HSQE BRUNEI; <br>member email now contain value ASEAN_BN@MEOGROUP.COM; BRUNEI.OPS@MEOGROUP.COM; HSQE_BRUNEI@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 23:05:30', 'admin', 'organisation_group', 'id region now contain value MALAYSIA<br>org group name now contain value THAI/ASEAN BU- MALAYSIA<br>member name now contain value OPERATIONS MY; MY STAFF; <br>member email now contain value OPSMSIA@MEOGROUP.COM; ASEAN_MY@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 23:23:09', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND, SAT to THAILAND, SATTAHIP<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 23:23:39', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND - SKL to THAILAND - SONGKHLA<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 23:32:21', 'admin', 'organisation_group', 'HSQE THAILAND  deleted'),
('delete', 'ADMIN', '2017-02-01 23:34:38', 'admin', 'organisation_group', 'THAILAND HSQE deleted'),
('add', 'ADMIN', '2017-02-01 23:46:07', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value ASEAN<br>member name now contain value ASEAN SG; ASEAN LT; <br>member email now contain value ASEAN_SG@MEOGROUP.COM; ASEAN_LT@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 23:47:04', 'admin', 'region', 'THAILAND, SATTAHIP deleted'),
('update', 'ADMIN', '2017-02-01 23:47:14', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SATTAHIP<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 23:50:21', 'admin', 'organisation_group', 'id region now contain value THAILAND - SATTAHIP<br>org group name now contain value THAI/ASEAN BU- UWO<br>member name now contain value HSQE TH; OPERATIONS TH; CREWING TH; <br>member email now contain value HSQE_TH@MEOGROUP.COM; OPSTHAI@MEOGROUP.COM; CREWING_TH@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-02 03:46:12', 'admin', 'group_name', 'group name updates from TEST to KMC SYSTEM ADMIN<br>group description updates from GROUP NAME 3 to KMC PERSONNEL ARE THE SYSTEM CONTROLLERS AND HAVE FULL ACCESS RIGHTS TO  ALL SECTIONS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 03:46:26', 'admin', 'group_rights', 'KMC SYSTEM ADMIN Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-02 03:46:53', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-02 03:49:42', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-02-02 03:51:13', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  GROUP NAME 1 to KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from  to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from  to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from  to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-02-02 03:52:40', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  KMC SYSTEM ADMIN to KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-02-02 04:07:34', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from TEST REMARKS to NIL<br>'),
('add', 'ADMIN', '2017-02-02 04:42:20', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value TESTING<br>members now contain value BHARATRAJ; BHARATRAJ MEO USER; <br>'),
('add', 'ADMIN', '2017-02-02 17:25:47', 'admin', 'group_name', 'group name now contain value VESSEL GENERAL USER<br>group description now contain value NL<br>'),
('add', 'ADMIN', '2017-02-02 17:26:01', 'admin', 'group_rights', 'VESSEL GENERAL USER Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-02 17:30:59', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('delete', 'ADMIN', '2017-02-02 18:02:17', 'admin', 'department', 'TESTING deleted'),
('update', 'ADMIN', '2017-02-02 18:02:46', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>region title updates from INDONESIA - JAKARTA to INDONESIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:03:30', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MANAGEMENT (INDO) to MANAGEMENT (JKT)<br>members updates from DIDI JAYA SAPUTRA;  to DIDI JAYA SAPUTRA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:03:37', 'admin', 'meo_users', 'user id updates from S00327 to S00327<br>emp id updates from 174 to 174<br>user full name updates from ANKUSH SHAM AGARWAL to ANKUSH AGARWAL<br>user email updates from ANKUSH.AGARWAL@MEOGROUP.COM to ANKUSH.AGARWAL@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from DEPUTY HEAD - ASEAN to DEPUTY HEAD - ASEAN<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 18:03:48', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MARKETING (INDO) to MARKETING (JKT)<br>members updates from ANGGARA MULIA; VANESSA TALAVERA AQUINO;  to ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:03:51', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MARKETING (JKT) to MARKETING (JKT)<br>members updates from ANGGARA MULIA; VANESSA TALAVERA AQUINO;  to ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:04:05', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from CREWING (INDO) to CREWING (JKT)<br>members updates from YENNY IMELDA MARTHING; KUNTO WIBISONO; DODI SETIAGAMA; AGUS TRI ATMOJO;  to YENNY IMELDA MARTHING; KUNTO WIBISONO; DODI SETIAGAMA; AGUS TRI ATMOJO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:04:18', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (JKT)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:04:25', 'admin', 'meo_users', 'user id updates from S00368 to S00368<br>emp id updates from 199 to 199<br>user full name updates from NICHOLAS SEET CHONG KUN to NICHOLAS SEET<br>user email updates from NICHOLAS.SEET@MEOGROUP.COM to NICHOLAS.SEET@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL MANAGER - ASEAN BU to COMMERCIAL MANAGER - ASEAN BU<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 18:04:41', 'admin', 'meo_users', 'user id updates from S00349 to S00349<br>emp id updates from 187 to 187<br>user full name updates from MILI SANJAY VERMA to MILI  VERMA<br>user email updates from MILI.VERMA@MEOGROUP.COM to MILI.VERMA@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GROUP COMMERCIAL EXECUTIVE to GROUP COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 18:04:45', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from PURCHASING (INDO) to PURCHASING (JKT)<br>members updates from AZIZ ARZIZAL;  to AZIZ ARZIZAL; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:05:05', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from TRAINING (INDO) to TRAINING (JKT)<br>members updates from DEKY WERDOKO; ERNA RENSI NORA;  to DEKY WERDOKO; ERNA RENSI NORA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:05:18', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from HRD (INDO) to HRD (JKT)<br>members updates from DANI GUNAWAN; LIA ANGGRAINY GINTING; AGUS SETYO BUDI S.;  to DANI GUNAWAN; LIA ANGGRAINY GINTING; AGUS SETYO BUDI S.; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:05:32', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from OPERATIONS / TECHNICAL (INDO) to OPERATIONS / TECHNICAL (JKT)<br>members updates from NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO;  to NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:05:51', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from HSQE (INDO) to HSQE (JKT)<br>members updates from RICKY KURNIAWAN;  to RICKY KURNIAWAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 18:06:46', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from ACCOUNTING (JKT) to ACCOUNTING (JKT)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-02 18:14:30', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value OPERATIONS / TECHNICAL (BATAM)<br>members now contain value THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO; <br>'),
('update', 'ADMIN', '2017-02-02 18:16:31', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from OPERATIONS / TECHNICAL (JKT) to OPERATIONS / TECHNICAL (JKT)<br>members updates from NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO;  to NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 19:42:17', 'admin', 'meo_users', 'user id updates from SGS002 to SGS002<br>emp id updates from 220 to 220<br>user full name updates from NAHARADAM WIJAYA to NAHARADAM WIJAJA<br>user email updates from NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM to NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from FLEET MANAGER to FLEET MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 19:43:11', 'admin', 'meo_users', 'user id updates from SGS002 to SGS002<br>emp id updates from 220 to 220<br>user full name updates from NAHARADAM WIJAJA to NAHARADAM WIDJAJA<br>user email updates from NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM to NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from FLEET MANAGER to FLEET MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-02-02 19:55:35', 'admin', 'vessel_region', 'id region  now contain value THAILAND - SATTAHIP<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-02-02 21:36:50', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS to EOS<br>member name updates from EOS; ROW COMMERCIAL; FINANCE EOS;  to EOS; ROW COMMERCIAL; FINANCE EOS; AUS STAFF; <br>member email updates from EOS@MEOGROUP.COM; CHARTERING@MEOGROUP.COM; FINANCE_EOS@MEOGROUP.COM;  to EOS@MEOGROUP.COM; CHARTERING@MEOGROUP.COM; FINANCE_EOS@MEOGROUP.COM; AUS_STAFF@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 21:41:13', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS OPERATIONS to EOS OPERATIONS<br>member name updates from EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO;  to EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; SAIPEM.ICHTHYS; <br>member email updates from OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM;  to OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; SAIPEM.ICHTHYS@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 21:46:50', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS OPERATIONS to EOS OPERATIONS<br>member name updates from EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; SAIPEM.ICHTHYS;  to EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; SAIPEM.ICHTHYS; OPERATIONS AUS; <br>member email updates from OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; SAIPEM.ICHTHYS@MEOGROUP.COM;  to OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; SAIPEM.ICHTHYS@MEOGROUP.COM; OPERATIONS_AUS@MEOGROUP.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-02 22:05:31', 'admin', 'organisation_group', 'EOS OPERATIONS AUS deleted'),
('add', 'ADMIN', '2017-02-02 22:26:45', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value SINGSYS TESTING GROUP<br>member name now contain value BHARATRAJ; BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; BHARATRAJ+1@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-02 22:57:56', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from SINGSYS TESTING GROUP to SINGSYS TESTING GROUP<br>member name updates from BHARATRAJ; BHARATRAJ;  to BHARATRAJ; BHARATRAJ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ+1@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ+1@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 23:22:55', 'admin', 'department', 'id region updates from AUSTRALIA to AUSTRALIA<br>department name updates from HUMAN RESOURCE (AUS) to HUMAN RESOURCE (AUS)<br>members updates from VALERIE PRENTICE ;  to VALERIE PRENTICE ; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 00:57:51', 'admin', 'vessel_region', 'id region updates from MALAYSIA to BRUNEI<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 00:58:01', 'admin', 'vessel_region', 'id region updates from BRUNEI to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 00:59:38', 'admin', 'vessel_region', 'id region updates from MALAYSIA to BRUNEI<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 00:59:47', 'admin', 'vessel_region', 'id region updates from BRUNEI to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 04:57:44', 'admin', 'vessel_name', 'vesselID updates from MS1 to MS1<br>vessel name updates from MEO SOVEREIGN 1 to SOVEREIGN 2<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 04:58:04', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from SOVEREIGN 2 to MEO SOVEREIGN 1<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 09:17:45', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 09:20:28', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; MEO EMPRESS; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 19:41:37', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; MEO EMPRESS;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 19:56:09', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-03 21:11:25', 'admin', 'organisation_group', 'id region now contain value INDONESIA<br>org group name now contain value SINGSYS PTE LTD<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-03 21:17:07', 'admin', 'vessel_region', 'id region updates from INDONESIA to INDONESIA<br>id vessel name updates from EXPRESS 2; EXPRESS 52; EXPRESS 54; EXPRESS 92; SEISMIC SUPPORTER;  to EXPRESS 2; EXPRESS 52; EXPRESS 54; EXPRESS 92; SEISMIC SUPPORTER; EXPRESS 66; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 21:18:04', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83;  to EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 21:18:41', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83;  to EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 66; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 21:20:49', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 66;  to EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 21:21:24', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83;  to EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 66; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-05 11:00:24', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from   to BHARATRAJ; <br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from none to MIDDLE EAST  - DUBAI, UAE<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from none to MIDDLE EAST - QATAR<br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-05 11:04:06', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  BHARATRAJ;  to BHARATRAJ; <br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from MIDDLE EAST - QATAR to MIDDLE EAST - QATAR<br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-05 23:22:08', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-05 23:22:25', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>file name updates from EmailTemplate_1481199252.png to EmailTemplate_1486365745.jpg<br>'),
('update', 'ADMIN', '2017-02-06 23:40:25', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MANAGEMENT (JKT) to MANAGEMENT (JKT)<br>members updates from DIDI JAYA SAPUTRA;  to AAKAAR JAIN; DIDI JAYA SAPUTRA; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-07 20:48:07', 'admin', 'vessel_region', 'MALAYSIA deleted'),
('add', 'ADMIN', '2017-02-07 21:21:22', 'admin', 'vessel_region', 'id region  now contain value SINGAPORE <br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-02-07 21:49:34', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from CERDIK; CERMAT; MICLYN ONYX; EXPRESS 72; EXPRESS 76; EXPRESS 78; EXPRESS 79; EXPRESS 88; EXPRESS 91;  to ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 21:52:45', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 21:58:40', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to Array; Array; Array; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:09:33', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; RANGER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:09:43', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; RANGER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:10:47', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:12:25', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:13:28', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:13:38', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; RANGER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:15:39', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; RANGER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 22:17:12', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from  to MEO SOVEREIGN 1; SOVEREIGN 2; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-08 01:19:31', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>file name updates from EmailTemplate_1486365745.jpg to EmailTemplate_1486545571.png<br>'),
('update', 'ADMIN', '2017-02-08 05:14:25', 'admin', 'vessel_region', 'id region updates from BRUNEI to BRUNEI<br>id vessel name updates from MEO SOVEREIGN 1; SOVEREIGN 2;  to MEO SOVEREIGN 1; SOVEREIGN 2; MEO MONARCH 1; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-09 00:47:14', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('update', 'ONG CHEE WEE', '2017-02-09 01:48:58', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-09 02:08:15', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-09 05:18:17', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-09 20:36:54', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-09 22:03:43', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-12 19:29:59', '', 'shore_personnel', 'Profile image updated to uploads/shoreProfile/20170213085950.png<br/>'),
('update', 'ADMIN', '2017-02-12 20:17:03', '', 'organisation_group', 'Country/City now updated to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br/>Now Members are updated BHARANI KUMAR PALAKODETI,BHARATRAJ,BHARATRAJ MEO USER,AAKAAR JAIN,<br/>Function updated to AESTRTRYT<br/>Notes updated to WETRYY<br/>'),
('update', 'ADMIN', '2017-02-12 23:20:32', '', 'vessel', 'UNI EXPRESS 20 image has been removed.'),
('update', 'ADMIN', '2017-02-13 20:55:51', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-13 20:56:57', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-13 20:57:08', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-13 21:18:44', 'admin', 'group_rights', ' has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-13 21:18:57', 'admin', 'group_rights', ' has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-13 21:25:39', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:28:06', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:29:02', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:29:59', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:30:05', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:30:28', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:30:37', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-13 21:53:49', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  KMC SYSTEM ADMIN to KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-02-13 21:54:59', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  KMC SYSTEM ADMIN to GROUP NAME 2<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-02-13 22:00:56', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  BHARATRAJ;  to BHARATRAJ; <br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from MIDDLE EAST - QATAR to MIDDLE EAST - QATAR<br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-02-13 22:01:07', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  BHARATRAJ;  to BHARANI KUMAR PALAKODETI; <br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from MIDDLE EAST - QATAR to MIDDLE EAST - QATAR<br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-13 22:01:36', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  GROUP NAME 2 to GROUP NAME 2<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-02-17 22:43:48', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-17 22:44:02', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 01:38:43', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 01:41:00', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MARKETING (JKT) to MARKETING (JKT)<br>members updates from ANGGARA MULIA; VANESSA TALAVERA AQUINO;  to AAKAAR JAIN; ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-18 01:42:45', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 02:25:49', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 02:26:37', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 02:29:12', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 02:33:21', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-18 02:35:22', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 02:35:39', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-02-18 03:01:07', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-02-18 03:01:26', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('delete', 'ADMIN', '2017-02-18 03:01:43', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-02-18 06:30:19', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-02-18 06:30:35', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-18 06:31:29', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 06:31:59', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 06:32:24', 'admin', 'group_rights', 'GROUP NAME 1 Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 06:34:28', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-18 06:35:53', 'admin', 'group_rights', 'GROUP NAME 2 Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 06:36:41', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>status updates from active to active'),
('add', 'ADMIN', '2017-02-18 06:37:17', 'admin', 'user_rights', 'VESSEL GENERAL USER Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 06:37:49', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-18 07:48:29', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-02-18 21:13:47', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-02-18 21:14:05', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-18 21:15:55', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  GROUP NAME 2 to KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-02-18 21:19:18', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-18 21:19:44', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-18 21:19:57', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-18 21:20:18', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('add', 'ADMIN', '2017-02-19 19:39:25', 'admin', 'user_rights', 'VESSEL GENERAL USER Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-02-19 19:39:54', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-19 19:40:59', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('add', 'ADMIN', '2017-02-19 21:58:29', 'admin', 'user_rights', 'id meo user now contain value RHYAN DELOS REYES SABRIDO<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is restricted with access titles <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-19 21:59:06', 'admin', 'user_rights', 'id meo user changed from  RHYAN DELOS REYES SABRIDO to RHYAN DELOS REYES SABRIDO<br>id admin group changed from  KMC SYSTEM ADMIN to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from  to restricted and access titles changed from none to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from  to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from restricted to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('add', 'ADMIN', '2017-02-19 22:00:49', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is restricted with access titles <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-19 22:02:33', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  KMC SYSTEM ADMIN to GROUP NAME 2<br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from  to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from restricted to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('delete', 'ADMIN', '2017-02-20 00:49:43', 'admin', 'user_rights', 'user rights in contact section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-02-20 00:50:24', 'admin', 'user_rights', 'id meo user now contain value RHYAN DELOS REYES SABRIDO<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is restricted with access titles <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 01:43:29', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is restricted with access titles <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-20 01:44:15', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 01:45:12', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  KMC SYSTEM ADMIN to KMC SYSTEM ADMIN<br>'),
('update', 'ADMIN', '2017-02-20 01:45:40', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 01:46:40', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  KMC SYSTEM ADMIN to KMC SYSTEM ADMIN<br>'),
('update', 'ADMIN', '2017-02-20 01:46:55', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 01:52:01', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with GROUP FINANCE; GROUP TECHNICAL & OPERATIONS groups</li><li> Modify is for all</li></ul></li></ol>'),
('add', 'ADMIN', '2017-02-20 02:00:46', 'admin', 'user_rights', 'id meo user now contain value RHYAN DELOS REYES SABRIDO<br>id group now contain value VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is restricted with access titles KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is restricted with access titles <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('delete', 'ADMIN', '2017-02-20 02:22:05', 'admin', 'group_rights', 'group rights in contact section for group \"KMC SYSTEM ADMIN\" has been deleted'),
('add', 'ADMIN', '2017-02-20 02:22:51', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 02:25:31', 'admin', 'user_rights', 'id meo user now contain value COLIN DAVID TREWHELLA<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 02:36:14', 'admin', 'user_rights', 'id meo user now contain value MARK PETER VAN DER MOLEN<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 02:39:48', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('delete', 'ADMIN', '2017-02-20 02:55:19', 'admin', 'group_rights', 'group rights in contact section for group \"GROUP NAME 1\" has been deleted'),
('add', 'ADMIN', '2017-02-20 03:00:53', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 03:34:56', 'admin', 'user_rights', 'id meo user now contain value COLIN DAVID TREWHELLA<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 03:35:18', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li></ol>'),
('add', 'ADMIN', '2017-02-20 03:39:34', 'admin', 'user_rights', 'id meo user now contain value SOPON PONPAI<br>id group now contain value GROUP NAME 2<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 03:39:52', 'admin', 'user_rights', 'id meo user now contain value MARK PETER VAN DER MOLEN<br>id group now contain value GROUP NAME 2<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 03:40:29', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('delete', 'ADMIN', '2017-02-20 04:30:19', 'admin', 'group_rights', 'group rights in admin section for group \"VESSEL GENERAL USER\" has been deleted'),
('add', 'ADMIN', '2017-02-20 04:49:24', 'admin', 'user_rights', 'id meo user now contain value NG WEI LING CANDICE<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-20 04:51:42', 'admin', 'user_rights', 'id meo user changed from  NG WEI LING CANDICE to NG WEI LING CANDICE<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 2<br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from  to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-20 04:55:11', 'admin', 'user_rights', 'id meo user changed from  NG WEI LING CANDICE to NG WEI LING CANDICE<br>id admin group changed from  GROUP NAME 2 to GROUP NAME 2<br>Contacts / Shore Personnel for view is changed from  to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from  to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-20 04:55:23', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from all to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from all to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from all to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('delete', 'ADMIN', '2017-02-20 04:56:05', 'admin', 'user_rights', 'user rights in contact section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-02-20 04:56:14', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-20 04:57:37', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 04:58:27', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 05:07:46', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from  to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-20 05:08:10', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 05:08:22', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-21 02:39:35', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to KMC SYSTEM ADMIN<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:40:03', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  KMC SYSTEM ADMIN to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:43:33', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to KMC SYSTEM ADMIN<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:43:47', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  KMC SYSTEM ADMIN to GROUP NAME 2<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:44:17', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 2 to GROUP NAME 2<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:44:30', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 2 to GROUP NAME 1<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:45:07', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:45:29', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to GROUP NAME 1<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:45:41', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 2<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:45:57', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 2 to GROUP NAME 1<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:46:20', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 02:48:46', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to GROUP NAME 2<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('add', 'ADMIN', '2017-02-21 04:27:33', 'admin', 'client_setup', 'id client user now contain value ABHAY+2<br>project name now contain value SDF<br>id admin group now contain value VESSEL GENERAL USER<br>meo pic now contain value BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 04:27:52', 'admin', 'client_setup', 'id client user changed from  ABHAY+2 to ABHAY+2<br>project name changed from  SDF to SDF<br>id admin group changed from  VESSEL GENERAL USER to GROUP NAME 2<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 04:41:04', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('add', 'ADMIN', '2017-02-21 19:16:06', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-02-21 19:17:41', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-02-21 21:17:56', '', 'shore_personnel', 'AAKAAR JAIN now reports to RHYAN DELOS REYES SABRIDO,'),
('add', 'ADMIN', '2017-02-21 21:31:06', 'admin', 'shore_address', 'shore region now contain value TEST<br>address now contain value KALYANPUR (EAST), LUCKNOW, UTTAR PRADESH, INDIA<br>full address now contain value ASDF ASFD SFD <br>'),
('update', 'ADMIN', '2017-02-21 21:33:50', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-21 21:34:11', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>file name updates from EmailTemplate_1486545571.png to EmailTemplate_1487741649.png<br>'),
('update', 'ADMIN', '2017-02-21 21:49:47', '', 'shore_personnel', 'AAKAAR JAIN now reports to RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-21 21:49:58', '', 'shore_personnel', 'AAKAAR JAIN now reports to RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-21 22:01:55', '', 'shore_personnel', 'AAKAAR JAIN now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('add', 'ADMIN', '2017-02-21 23:12:32', 'admin', 'meo_users', 'user id now contain value KDFBKZVNSJH<br>emp id now contain value SDLKHVLDJN<br>user full name now contain value MZXBVISBVKJ<br>user email now contain value KSJHV@SKFF.CSOJ<br>staff client now contain value MEO STAFF<br>designation now contain value KHASFJSAB<br>domain id now contain value DKHDSVKK<br>directory now contain value KDSJVSDVB<br>expiry date now contain value 2017-02-22<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-02-21 23:15:59', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>emp id updates from 21 to 21<br>user full name updates from RHYAN DELOS REYES SABRIDO to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>domain id updates from  to SDGFHG<br>directory updates from  to SDFGHGD<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-22 22:00:14', '', 'shore_personnel', 'AAKAAR JAIN now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-22 22:06:32', '', 'shore_personnel', 'AAKAAR JAIN now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-22 22:06:59', '', 'shore_personnel', 'AAKAAR JAIN now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-22 22:08:57', '', 'shore_personnel', 'AAKAAR JAIN now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('update', 'JOVY CHAY', '2017-02-27 22:07:00', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to Contacts / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'JOVY CHAY', '2017-02-27 22:07:41', 'admin', 'email_content', 'section updates from Contacts / SHORE PERSONNEL / VERIFY to Contacts / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to Test SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-28 03:18:24', '', 'shore_personnel', 'Desk Phone of DIDI JAYA SAPUTRA now contain 12345678<br/>'),
('update', 'ADMIN', '2017-02-28 05:23:11', '', 'shore_personnel', 'DIDI JAYA SAPUTRA now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-28 05:23:43', '', 'shore_personnel', 'DIDI JAYA SAPUTRA now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,'),
('update', 'ADMIN', '2017-02-28 05:39:21', '', 'shore_personnel', 'DIDI JAYA SAPUTRA now reports to ONG CHEE WEE,'),
('update', 'ADMIN', '2017-02-28 05:39:40', '', 'shore_personnel', 'Designation of DIDI JAYA SAPUTRA updated from DIRECTOR OF PT. SGS to DIRECTOR OF PT. SGS12<br/>'),
('update', 'ADMIN', '2017-03-01 19:25:33', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from all to restricted and access titles changed from none to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is changed from restricted to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-03-01 20:01:32', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 to JOYCELYN WONG PUI YEE; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-03-01 20:02:47', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from JOYCELYN WONG PUI YEE; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-03-01 21:49:55', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ENTERPRISE RISK MANAGEMENT (SIN)						<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-03-01 21:51:12', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ENTERPRISE RISK MANAGEMENT (SIN)						 to ENTERPRISE RISK MANAGEMENT (SIN)						<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('delete', 'ADMIN', '2017-03-01 21:51:57', 'admin', 'user_rights', 'user rights in contact section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-03-01 21:52:21', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is restricted with access titles KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is restricted with access titles <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('delete', 'ADMIN', '2017-03-01 21:54:06', 'admin', 'user_rights', 'user rights in contact section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-03-01 21:54:59', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is restricted with access titles TAN LEA JOO; JOYCE LIM ; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is restricted with access titles <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-03-01 21:55:17', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from TAN LEA JOO; JOYCE LIM ; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 to TAN LEA JOO; JOYCE LIM ; KNOWLEDGE MANAGEMENT CENTRE (SIN)<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('delete', 'ADMIN', '2017-03-01 21:55:58', 'admin', 'user_rights', 'user rights in contact section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-03-01 21:56:24', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is restricted with access titles FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is restricted with access titles <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-03-01 23:37:05', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 2 to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>Contacts / Shore Personnel for view is changed from all to  <br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from all to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from all to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from all to  <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-03-01 23:37:23', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to GROUP NAME 1<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-01 23:41:17', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-01 23:41:28', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-02 20:12:07', 'admin', 'user_rights', 'id meo user changed from  NG WEI LING CANDICE to NG WEI LING CANDICE<br>id admin group changed from  GROUP NAME 2 to KMC SYSTEM ADMIN<br>Contacts /<br> Shore Personnel for view is changed from all to  <br>Contacts /<br> Shore Personnel for modify is changed from  to  <br>Contact /<br> Vessels (MEO) for view is changed from all to  <br>Contact /<br> Vessels (MEO) for modify is changed from  to  <br>Contacts /<br> 3rd Party Vessels for view is changed from all to  <br>Contacts /<br> 3rd Party Vessels for modify is changed from  to  <br>Contacts /<br> Organisation Groups for view is changed from all to  <br>Contacts /<br> Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-03-02 20:26:12', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from COMMERCIAL to COMMERCIAL<br>members updates from NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; JOYCE TAN; EUGENE TEO YU-CHNG; NATALIE WEICHMANN;  to CLAUDIA IGLESIAS CARRICHES; NATALIE WEICHMANN; EUGENE TEO YU-CHNG; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-03-02 22:39:42', 'admin', 'email_content', 'section updates from Contacts / SHORE PERSONNEL / VERIFY to Contacts / SHORE PERSONNEL / VERIFY<br>subject updates from Test SUBJECT123 to Test SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-03-02 22:40:44', 'admin', 'email_content', 'section updates from Contacts / SHORE PERSONNEL / VERIFY to Contacts / SHORE PERSONNEL / VERIFY<br>subject updates from Test SUBJECT123 to Test SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-03-02 22:41:07', 'admin', 'email_content', 'section updates from CONTACTS / VESSEL CONTACTS / VERIFY to CONTACTS / VESSEL CONTACTS / VERIFY<br>subject updates from VESSEL VERIFICATION to VESSEL VERIFICATION<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-03-04 22:35:13', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to GROUP NAME 1<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-04 22:35:39', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-05 02:20:26', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to GROUP NAME 2<br>Contacts /<br> Shore Personnel for view is changed from restricted to all <br>Contacts /<br> Shore Personnel for modify is changed from  to  <br>Contact /<br> Vessels (MEO) for view is changed from restricted to all <br>Contact /<br> Vessels (MEO) for modify is changed from  to  <br>Contacts /<br> 3rd Party Vessels for view is changed from  to all <br>Contacts /<br> 3rd Party Vessels for modify is changed from  to  <br>Contacts /<br> Organisation Groups for view is changed from  to all <br>Contacts /<br> Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-03-05 02:20:49', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  GROUP NAME 2 to VESSEL GENERAL USER<br>Contacts /<br> Shore Personnel for view is changed from all to restricted and access titles changed from none to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts /<br> Shore Personnel for modify is changed from  to  <br>Contact /<br> Vessels (MEO) for view is changed from all to restricted and access titles changed from none to none<br>Contact /<br> Vessels (MEO) for modify is changed from  to  <br>Contacts /<br> 3rd Party Vessels for view is changed from all to  <br>Contacts /<br> 3rd Party Vessels for modify is changed from  to  <br>Contacts /<br> Organisation Groups for view is changed from all to  <br>Contacts /<br> Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-03-05 02:57:25', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 02:58:27', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 03:25:04', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-05 03:28:03', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-03-05 03:38:26', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; AOS RATCHABURI; SINGAPORE  groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS); INDONESIA groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 03:39:24', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN) groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE  groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS); INDONESIA groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 03:39:48', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 03:40:18', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN) groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE  groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS); INDONESIA groups</li></ul></li></ol>'),
('delete', 'ADMIN', '2017-03-05 03:43:31', 'admin', 'client_setup', 'client user rights in contact section for user \"ABHAY\" has been deleted'),
('update', 'ADMIN', '2017-03-05 03:48:14', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN) groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE  groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS); INDONESIA groups</li></ul></li></ol>'),
('add', 'ADMIN', '2017-03-05 03:50:07', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value TEST<br>id admin group now contain value VESSEL GENERAL USER<br>meo pic now contain value BHARATRAJ; <br>'),
('delete', 'ADMIN', '2017-03-05 03:50:46', 'admin', 'client_setup', 'client user rights in contact section for user \"ABHAY\" has been deleted'),
('add', 'ADMIN', '2017-03-05 03:51:57', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value TEST<br>id admin group now contain value GROUP NAME 1<br>meo pic now contain value BHARATRAJ; <br>'),
('update', 'ADMIN', '2017-03-05 04:07:30', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with GROUP FINANCE groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 04:08:05', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN) groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE  groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2 groups</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						; ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN); AOS RATCHABURI; SINGAPORE ; SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE; 3RD PARTY VESSEL 2; SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS); INDONESIA groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 04:08:35', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with SHARED ACCOUNTING SERVICES groups</li><li> Modify is for restricted with SHARED ACCOUNTING SERVICES; GROUP FINANCE groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 04:09:04', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with SHARED ACCOUNTING SERVICES; GROUP FINANCE groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 04:09:27', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for restricted with GROUP FINANCE groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 04:09:58', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with GROUP FINANCE groups</li></ul></li></ol>'),
('add', 'ADMIN', '2017-03-05 04:19:15', 'admin', 'client_setup', 'id client user now contain value ABHAY+1<br>project name now contain value TEST<br>id admin group now contain value VESSEL GENERAL USER<br>meo pic now contain value BHARATRAJ; <br>'),
('update', 'ADMIN', '2017-03-05 04:21:01', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST to TEST<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>meo pic changed from  BHARATRAJ;  to BHARATRAJ; <br>'),
('delete', 'ADMIN', '2017-03-05 04:25:44', 'admin', 'client_setup', 'client user rights in contact section for user \"ABHAY\" has been deleted'),
('add', 'ADMIN', '2017-03-05 04:30:30', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value TEST<br>id admin group now contain value VESSEL GENERAL USER<br>meo pic now contain value BHARATRAJ MEO USER; <br>'),
('update', 'ADMIN', '2017-03-05 05:25:45', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with GROUP FINANCE; MALAYSIA groups</li><li> Modify is for restricted with GROUP FINANCE; MALAYSIA groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-05 06:17:30', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST to TEST<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>meo pic changed from  BHARATRAJ MEO USER;  to BHARATRAJ MEO USER; <br>'),
('update', 'ADMIN', '2017-03-05 06:30:28', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts /<br> Shore Personnel for view is changed from restricted to restricted and access titles changed from REKHA NANDWANI; JOVY CHAY; KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 to REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN)<br>Contacts /<br> Shore Personnel for modify is changed from restricted to restricted and access titles changed from ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN) to ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN)<br>Contact /<br> Vessels (MEO) for view is changed from restricted to restricted and access titles changed from AOS RATCHABURI; SINGAPORE  to AOS RATCHABURI; SINGAPORE <br>Contact /<br> Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE to SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE<br>Contacts /<br> 3rd Party Vessels for view is changed from restricted to restricted and access titles changed from 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2 to 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2<br>Contacts /<br> 3rd Party Vessels for modify is changed from restricted to restricted and access titles changed from 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2 to 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2<br>Contacts /<br> Organisation Groups for view is changed from restricted to restricted and access titles changed from SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) to SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS)<br>Contacts /<br> Organisation Groups for modify is changed from restricted to restricted and access titles changed from SHARED ACCOUNTING SERVICES; SHARED ACCOUNTING SERVICES to SHARED ACCOUNTING SERVICES; SHARED ACCOUNTING SERVICES<br>'),
('update', 'ADMIN', '2017-03-05 19:06:27', 'admin', 'email_content', 'section updates from Contacts / SHORE PERSONNEL / VERIFY to Contacts / SHORE PERSONNEL / VERIFY<br>subject updates from Test SUBJECT123 to Test Subject<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-03-05 19:16:48', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to VESSEL GENERAL USER<br>Contacts /<br> Shore Personnel for view is changed from restricted to restricted and access titles changed from REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN) to REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN)<br>Contacts /<br> Shore Personnel for modify is changed from restricted to restricted and access titles changed from ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN) to ONG CHEE WEE; INFORMATION TECHNOLOGY (IT) (SIN)<br>Contact /<br> Vessels (MEO) for view is changed from restricted to restricted and access titles changed from AOS RATCHABURI; SINGAPORE  to AOS RATCHABURI; SINGAPORE <br>Contact /<br> Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE to SAMSON SUPPORTER; MIDDLE EAST - DUBAI, UAE<br>Contacts /<br> 3rd Party Vessels for view is changed from restricted to restricted and access titles changed from 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2 to ; 3RD PARTY VESSEL 2<br>Contacts /<br> 3rd Party Vessels for modify is changed from restricted to restricted and access titles changed from 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2 to 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2<br>Contacts /<br> Organisation Groups for view is changed from restricted to restricted and access titles changed from SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS) to SHARED ACCOUNTING SERVICES; SPECIALISED VESSEL SERVICES (SVS)<br>Contacts /<br> Organisation Groups for modify is changed from restricted to restricted and access titles changed from SHARED ACCOUNTING SERVICES; SHARED ACCOUNTING SERVICES to SHARED ACCOUNTING SERVICES; SHARED ACCOUNTING SERVICES<br>'),
('update', 'ADMIN', '2017-03-05 20:13:17', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-05 20:13:38', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-03-05 20:13:58', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is active<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 02:14:20', '', 'shore_personnel', 'Mobile 2 of DIDI JAYA SAPUTRA now contain 1234567<br/>'),
('update', 'ADMIN', '2017-03-07 21:27:07', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-07 21:27:38', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-07 22:08:27', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 22:08:54', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 22:10:38', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 22:11:14', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 22:11:54', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-03-07 22:12:27', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 22:13:24', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-03-07 22:18:48', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>status updates from active to active'),
('delete', 'ADMIN', '2017-03-08 02:19:03', 'admin', 'shore_address', 'SINGAPORE  deleted'),
('update', 'ADMIN', '2017-03-08 02:19:38', '', 'organisation_group', 'Country/City now updated to BANGKOK THAILAND<br/>Now Members are updated BHARANI KUMAR PALAKODETI,BHARATRAJ,BHARATRAJ MEO USER,AAKAAR JAIN,<br/>Function updated to AESTRTRYT<br/>Notes updated to WETRYY<br/>'),
('update', 'ADMIN', '2017-03-08 02:19:48', '', 'organisation_group', 'Country/City now updated to Hamriyah Free Zone Ground 1 - Al Ettehad Street - United Arab Emirates<br/>Now Members are updated BHARANI KUMAR PALAKODETI,BHARATRAJ,BHARATRAJ MEO USER,AAKAAR JAIN,<br/>Function updated to AESTRTRYT<br/>Notes updated to WETRYY<br/>'),
('delete', 'ADMIN', '2017-03-08 02:19:58', 'admin', 'shore_address', 'SHARJAH, UAE deleted'),
('update', 'ADMIN', '2017-03-08 21:47:03', 'admin', 'meo_users', 'user id updates from S00148 to S00148<br>emp id updates from 136 to 136<br>user full name updates from JOVY CHAY to JOVY CHAY<br>user email updates from JOVY.CHAY@MEOGROUP.COM to JOVY.CHAY@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MANAGER - KNOWLEDGE MANAGEMENT to MANAGER - KNOWLEDGE MANAGEMENT<br>domain id updates from  to HOME.LOCAL<br>directory updates from  to JOVY.CHAY<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-03-09 00:59:09', 'admin', 'meo_users', 'user id updates from S00148 to S00148<br>emp id updates from 136 to 136<br>user full name updates from JOVY CHAY to JOVY CHAY<br>user email updates from JOVY.CHAY@MEOGROUP.COM to JOVY.CHAY@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MANAGER - KNOWLEDGE MANAGEMENT to MANAGER - KNOWLEDGE MANAGEMENT<br>domain id updates from HOME.LOCAL to JOVY.CHAY<br>directory updates from JOVY.CHAY to  HOME.LOCAL<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-03-11 23:44:15', '', 'vessel', 'EXPRESS 19 technical pic updated to DIDI JAYA SAPUTRA,BHARATRAJ,<br/>EXPRESS 19 operation pic updated to DIDI JAYA SAPUTRA,BHARANI KUMAR PALAKODETI,<br/>'),
('update', 'ADMIN', '2017-03-11 23:49:35', '', 'vessel', 'EXPRESS 19 technical pic updated to BHARATRAJ,DIDI JAYA SAPUTRA,<br/>EXPRESS 19 operation pic updated to BHARANI KUMAR PALAKODETI,DIDI JAYA SAPUTRA,<br/>'),
('update', 'ADMIN', '2017-03-12 00:17:25', '', 'vessel', 'SAMSON SUPPLIER technical pic updated to JOSE WILSON OTO,HISHAM  AHAMED,<br/>SAMSON SUPPLIER SCM pic updated to LENIN LAMA ,JASIM HUSSAIN,<br/>SAMSON SUPPLIER operation pic updated to TAMER S.BALBOUL,<br/>SAMSON SUPPLIER emergency contacts updated to CHRISTINA LING,<br/>SAMSON SUPPLIER DPA/CSO updated to ABDALLA ABUELGASIM,ZOHAIR ABDELRAHIM,<br/>SAMSON SUPPLIER crewing pic updated to ANABEL BALINA,BISYRUN HASAN BASRI,<br/>'),
('update', 'ADMIN', '2017-04-27 12:23:33', '', 'organisation_group', 'Country/City now contain FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br/>Now Members are ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,COLIN DAVID TREWHELLA,MARK PETER VAN DER MOLEN,CLAUDIA IGLESIAS CARRICHES,NATALIE WEICHMANN,EUGENE TEO YU-CHNG,TAN HEE HUA,POH CHING HOON,JOYCELYN WONG PUI YEE,CHRISTOPHER WHITE,IAN JESTER ERAS REYES,CHEN YING LEI,<br/>'),
('update', 'ADMIN', '2017-05-23 05:53:55', 'admin', '', 'classification updates from  to MC/NON CONFOTMITY2<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 05:54:17', 'admin', '', 'classification updates from  to MC/NON CONFOTMITY2<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 06:01:17', 'admin', '', 'classification updates from  to MC/NON CONFOTMITY2<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 06:02:28', 'admin', '', 'classification updates from  to MC/NON CONFOTMITY2<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 06:04:23', 'admin', '', 'classification updates from  to MC/NON CONFOTMITY<br>close out updates from  to 4<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 06:05:33', 'admin', '', 'classification updates from  to MAJOR NON-CONFORMITY<br>close out updates from  to 4<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 06:24:06', 'admin', '', 'classification now contain value SINGSYS<br>close out now contain value 3<br>color now contain value <br>'),
('add', 'ADMIN', '2017-05-23 06:24:50', 'admin', '', 'classification now contain value SINGSYS<br>close out now contain value 3<br>color now contain value <br>'),
('add', 'ADMIN', '2017-05-23 06:25:34', 'admin', '', 'classification now contain value SINGSYS<br>close out now contain value 3<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-23 06:26:19', 'admin', '', 'classification updates from  to THESINGSYS<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 06:41:03', 'admin', 'group_name', 'group name updates from GROUP NAME 1 to GROUP NAME 2<br>group description updates from GROUP NAME 1 to GROUP NAME 1<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-05-23 07:37:24', 'admin', '', 'classification updates from  to MAJOR NON-CONFORMITY<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 07:37:44', 'admin', '', 'classification updates from  to THESINGSYS<br>close out updates from  to 4<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 08:17:10', 'admin', '', 'classification now contain value OBSERVATION<br>close out now contain value 4<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-23 08:20:45', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 4<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:30:08', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 5<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:32:38', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 6<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:34:14', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 7<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:34:46', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 7<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:35:54', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 10<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:41:09', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 7<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:48:13', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 8<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:49:49', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 9<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:50:43', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 10<br>color updates from  to <br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-23 08:56:53', 'admin', '', 'classification updates from  to SINGSYS<br>close out updates from  to 12<br>color updates from  to <br>status updates from  to active<br>'),
('delete', 'ADMIN', '2017-05-23 09:11:49', 'admin', 'group_name', 'VESSEL GENERAL USER deleted'),
('update', 'ADMIN', '2017-05-23 11:13:18', 'admin', '', 'classification updates from  to OBSERVATION<br>close out updates from  to 5<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 12:52:35', 'admin', '', 'classification now contain value FINDING<br>close out now contain value 4<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-23 12:52:53', 'admin', '', 'classification updates from  to FINDING2<br>close out updates from  to 4<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 16:07:18', 'admin', '', 'rank now contain value SENIOR OFFICER<br>'),
('add', 'ADMIN', '2017-05-23 16:10:12', 'admin', '', 'rank now contain value MASTER<br>'),
('add', 'ADMIN', '2017-05-23 16:20:24', 'admin', '', 'rank now contain value CHIEFOFFICER<br>'),
('update', 'ADMIN', '2017-05-23 17:08:02', 'admin', '', 'rank updates from SENIOR OFFICER to SENIOR OFFICER2<br>status updates from active to inactive<br>'),
('delete', 'ADMIN', '2017-05-23 17:19:03', 'admin', '', 'SENIOR OFFICER2 deleted'),
('delete', 'ADMIN', '2017-05-23 17:35:12', 'admin', '', 'MASTER deleted'),
('delete', 'ADMIN', '2017-05-23 17:37:05', 'admin', '', 'CHIEFOFFICER deleted'),
('add', 'ADMIN', '2017-05-23 17:47:17', 'admin', '', 'rank now contain value SENIOR OFFICER<br>'),
('delete', 'ADMIN', '2017-05-23 17:47:43', 'admin', '', 'SENIOR OFFICER deleted'),
('add', 'ADMIN', '2017-05-23 17:47:55', 'admin', '', 'rank now contain value CHIEFOFFICER<br>'),
('update', 'ADMIN', '2017-05-23 17:49:45', 'admin', '', 'rank updates from CHIEFOFFICER to CHIEFOFFICER2<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-05-23 18:05:17', 'admin', '', 'classification now contain value SINGSYS4<br>close out now contain value 2<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-23 18:05:52', 'admin', '', 'classification updates from  to SINGSYS7<br>close out updates from  to 2<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 19:34:22', 'admin', '', 'classification now contain value FINDING<br>close out now contain value 6<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-23 19:55:32', 'admin', '', 'classification updates from  to MAJOR NON-CONFORMITY<br>close out updates from  to 3<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 20:40:19', 'admin', '', 'classification now contain value GHH<br>close out now contain value 2<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-23 20:40:51', 'admin', '', 'classification updates from  to GHH ,,<br>close out updates from  to 2<br>color updates from  to <br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-23 20:48:45', 'admin', '', 'rank now contain value MASTER<br>'),
('add', 'ADMIN', '2017-05-23 20:48:53', 'admin', '', 'rank now contain value SENIOR OFFICER<br>'),
('add', 'ADMIN', '2017-05-23 20:49:02', 'admin', '', 'rank now contain value CHIEFOFFICER<br>'),
('add', 'ADMIN', '2017-05-24 04:07:44', 'admin', '', 'classification now contain value DFGN<br>close out now contain value ASDFG<br>color now contain value <br>'),
('add', 'ADMIN', '2017-05-24 05:18:31', 'admin', '', 'classification now contain value GH<br>close out now contain value 2<br>color now contain value <br>'),
('update', 'ADMIN', '2017-05-24 05:20:54', 'admin', '', 'classification updates from  to GH<br>close out updates from  to 2<br>status updates from  to active<br>color updates from  to <br>'),
('update', 'ADMIN', '2017-05-24 05:22:05', 'admin', '', 'classification updates from  to GH<br>close out updates from  to 2<br>status updates from  to active<br>color updates from  to <br>'),
('update', 'ADMIN', '2017-05-24 05:25:53', 'admin', '', 'classification updates from  to MAJOR NON-CONFORMITY<br>close out updates from  to 3<br>status updates from  to active<br>color updates from  to <br>'),
('update', 'ADMIN', '2017-05-24 05:44:29', 'admin', '', 'classification updates from  to MAJOR NON-CONFORMITY<br>close out updates from  to 3<br>status updates from  to active<br>color updates from  to <br>'),
('delete', 'ADMIN', '2017-05-24 05:49:33', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:49:45', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:51:14', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:51:40', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:52:17', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:52:24', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:52:35', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:52:44', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:54:02', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 05:55:02', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:02:57', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:02:57', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:04:52', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:06:00', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:06:51', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:07:06', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:08:19', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:09:54', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:10:46', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:10:48', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:11:25', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:11:45', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:13:38', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:13:47', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:21:09', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:22:09', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:22:26', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 06:23:17', 'admin', '', ' deleted'),
('add', 'ADMIN', '2017-05-24 09:44:23', 'admin', '', 'classification now contain value GB<br>close out now contain value 2<br>color code now contain value #ff713d<br>color now contain value #ff713d<br>'),
('add', 'ADMIN', '2017-05-24 09:46:56', 'admin', '', 'classification now contain value GB<br>close out now contain value 2<br>color code now contain value #ff713d<br>'),
('add', 'ADMIN', '2017-05-24 09:47:02', 'admin', '', 'classification now contain value GB<br>close out now contain value 2<br>color code now contain value #ffa914<br>'),
('add', 'ADMIN', '2017-05-24 09:48:12', 'admin', '', 'classification now contain value GB<br>close out now contain value 2<br>color code now contain value #ffa914<br>color now contain value #ffa914<br>'),
('add', 'ADMIN', '2017-05-24 09:48:27', 'admin', '', 'classification now contain value GHH<br>close out now contain value 7<br>color code now contain value #f1ff2b<br>color now contain value #f1ff2b<br>'),
('add', 'ADMIN', '2017-05-24 09:48:45', 'admin', '', 'classification now contain value GHH<br>close out now contain value 7<br>color code now contain value #f1ff2b<br>color now contain value #f1ff2b<br>'),
('add', 'ADMIN', '2017-05-24 09:49:02', 'admin', '', 'classification now contain value GHH<br>close out now contain value 7<br>color code now contain value #f1ff2b<br>color now contain value #f1ff2b<br>'),
('add', 'ADMIN', '2017-05-24 09:49:13', 'admin', '', 'classification now contain value GHH<br>close out now contain value 1<br>color code now contain value #baff19<br>color now contain value #baff19<br>'),
('add', 'ADMIN', '2017-05-24 09:50:50', 'admin', '', 'classification now contain value GHH<br>close out now contain value 1<br>color code now contain value #baff19<br>color now contain value #baff19<br>'),
('add', 'ADMIN', '2017-05-24 09:52:40', 'admin', '', 'classification now contain value GHH<br>close out now contain value 1<br>color code now contain value #6eff86<br>color now contain value #6eff86<br>'),
('add', 'ADMIN', '2017-05-24 09:52:44', 'admin', '', 'classification now contain value GHH<br>close out now contain value 1<br>color code now contain value #6eff86<br>color now contain value #6eff86<br>'),
('add', 'ADMIN', '2017-05-24 09:54:49', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>color now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:55:18', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>color now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:58:19', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:58:36', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:58:46', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:58:50', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:58:51', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 09:58:52', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 10:00:28', 'admin', '', 'classification now contain value GHH<br>close out now contain value 1<br>color code now contain value #6eff86<br>'),
('add', 'ADMIN', '2017-05-24 10:01:25', 'admin', '', 'classification now contain value FBNJK<br>close out now contain value 1<br>color code now contain value #55ff4f<br>'),
('add', 'ADMIN', '2017-05-24 10:06:25', 'admin', '', 'classification now contain value FG<br>close out now contain value 4<br>color code now contain value #e9ffe3<br>'),
('add', 'ADMIN', '2017-05-24 10:34:18', 'admin', '', 'classification now contain value OBSERVATION2<br>close out now contain value 2<br>color code now contain value #ff4583<br>'),
('update', 'ADMIN', '2017-05-24 10:43:17', 'admin', '', 'classification updates from  to OBSERVATION2<br>close out updates from  to 2<br>color code updates from  to #ffff73<br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-24 10:43:34', 'admin', '', 'classification updates from  to OBSERVATION2<br>close out updates from  to 2<br>color code updates from  to #ff63cb<br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-24 11:37:54', 'admin', '', 'classification now contain value MC/NON CONFOTMITY23<br>close out now contain value 3<br>color code now contain value #4adbff<br>'),
('update', 'ADMIN', '2017-05-24 11:52:38', 'admin', '', 'classification updates from  to CLASSIFICATION<br>close out updates from  to 2<br>color code updates from  to #ffd6ed<br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-05-24 15:48:37', 'admin', '', 'classification now contain value LUCKNOW<br>close out now contain value 2<br>color code now contain value #ff70a0<br>'),
('delete', 'ADMIN', '2017-05-24 15:50:04', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:50:14', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:50:27', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:50:43', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:50:57', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:51:07', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:51:19', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:51:29', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:51:47', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:00', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:09', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:21', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:28', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:34', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:42', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:50', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:52:58', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:53:05', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:53:13', 'admin', '', ' deleted'),
('update', 'ADMIN', '2017-05-24 15:54:08', 'admin', '', 'classification updates from  to MC/NON CONFOTMITY2<br>close out updates from  to 3<br>color code updates from  to #38f8ff<br>status updates from  to active<br>'),
('delete', 'ADMIN', '2017-05-24 15:57:15', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:57:27', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:57:35', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:57:45', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:57:55', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:58:05', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-24 15:58:15', 'admin', '', ' deleted'),
('add', 'ADMIN', '2017-05-25 06:59:45', 'admin', '', 'classification now contain value ASDFGHJ<br>close out now contain value 3<br>color code now contain value #70ff7a<br>'),
('add', 'ADMIN', '2017-05-25 08:35:10', 'admin', '', 'classification now contain value FINDING<br>close out now contain value 0<br>color code now contain value #aeff36<br>'),
('add', 'ADMIN', '2017-05-25 08:44:34', 'admin', '', 'rank now contain value WORKER<br>'),
('update', 'ADMIN', '2017-05-25 08:44:52', 'admin', '', 'rank updates from WORKER to WORKER2<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-05-25 08:48:22', 'admin', '', 'classification now contain value FINDING23<br>close out now contain value 5<br>color code now contain value #70ff66<br>'),
('add', 'ADMIN', '2017-05-25 09:17:52', 'admin', '', 'classification now contain value GHT<br>close out now contain value -8<br>color code now contain value #b0ffcd<br>'),
('add', 'ADMIN', '2017-05-25 09:19:43', 'admin', '', 'classification now contain value OBSERVATION<br>close out now contain value -21<br>color code now contain value #ffd79c<br>'),
('add', 'ADMIN', '2017-05-25 09:25:26', 'admin', '', 'classification now contain value SINGSYS66<br>close out now contain value -7<br>color code now contain value #edff78<br>'),
('delete', 'ADMIN', '2017-05-25 09:41:15', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-25 09:41:21', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-05-25 09:41:45', 'admin', '', ' deleted'),
('add', 'ADMIN', '2017-05-25 09:44:33', 'admin', '', 'classification now contain value <br>close out now contain value <br>'),
('add', 'ADMIN', '2017-05-25 09:44:36', 'admin', '', 'classification now contain value <br>close out now contain value <br>'),
('add', 'ADMIN', '2017-05-25 09:44:45', 'admin', '', 'classification now contain value <br>close out now contain value <br>'),
('delete', 'ADMIN', '2017-05-25 10:00:25', 'admin', '', ' deleted'),
('update', 'ADMIN', '2017-05-25 10:02:22', 'admin', '', 'classification updates from  to FG<br>close out updates from  to 4<br>color code updates from  to #bbff45<br>status updates from  to active<br>'),
('delete', 'ADMIN', '2017-05-25 10:08:10', 'admin', '', ' deleted'),
('add', 'ADMIN', '2017-05-25 10:17:00', 'admin', '', 'classification now contain value KJFASB<br>close out now contain value 12<br>color code now contain value #3bffc4<br>'),
('add', 'ADMIN', '2017-05-25 10:32:07', 'admin', '', 'classification now contain value SDFGFTYYTY<br>close out now contain value 1<br>color code now contain value #66a3ff<br>'),
('update', 'ADMIN', '2017-05-25 10:58:30', 'admin', '', 'classification updates from  to OBSERVATION24<br>close out updates from  to 2<br>color code updates from  to #87ffa3<br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-05-25 11:02:03', 'admin', '', 'rank updates from CHIEFOFFICER2 to CHIEFOFFICER2<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-05-25 11:02:14', 'admin', '', 'rank now contain value DRFGDGDFH<br>'),
('update', 'ADMIN', '2017-05-25 11:02:31', 'admin', '', 'rank updates from DRFGDGDFH to DW23432<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-05-25 11:02:57', 'admin', '', 'rank updates from DW23432 to R56GH<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-05-25 11:03:22', 'admin', '', 'rank updates from CHIEFOFFICER2 to L<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-05-29 13:19:22', 'admin', 'group_rights', 'group rights in contact section for group \"GROUP NAME 2\" has been deleted'),
('delete', 'ADMIN', '2017-05-30 07:22:13', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-30 08:35:35', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-30 10:01:07', 'admin', 'action_group_rights', 'Array deleted'),
('update', 'ADMIN', '2017-05-30 12:05:46', 'admin', 'action_ranks', 'rank updates from L to L<br>status updates from active to inactive<br>'),
('add', 'ADMIN', '2017-05-30 12:08:39', '', '', 'Group <b>GROUP NAME 2</b> allowed for <b>View summary, New request, Admin claims</b>'),
('delete', 'ADMIN', '2017-05-31 06:08:28', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-31 07:48:50', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-31 08:42:29', 'admin', 'action_group_rights', 'Array deleted'),
('add', 'ADMIN', '2017-05-31 09:58:03', 'admin', 'group_name', 'group name now contain value SINGSYSSERV<br>group description now contain value THIS IS GROUP NAME<br>'),
('delete', 'ADMIN', '2017-05-31 10:46:43', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-31 10:47:47', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-31 10:50:51', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-05-31 11:01:12', 'admin', 'action_group_rights', 'Array deleted'),
('update', 'ADMIN', '2017-06-01 07:41:55', 'admin', 'action_classification', 'classification updates from  to OBSERVATION24<br>close out updates from  to 2<br>color code updates from  to #87FFA3<br>status updates from  to inactive<br>'),
('update', 'ADMIN', '2017-06-01 09:15:55', 'admin', 'action_classification', 'classification updates from  to OBSERVATION<br>close out updates from  to 2<br>color code updates from  to #ffd4f3<br>status updates from  to active<br>'),
('add', 'ADMIN', '2017-06-04 09:42:55', 'admin', '', 'nature now contain value EXTERNAL AUDIT<br>'),
('add', 'ADMIN', '2017-06-04 10:02:14', 'admin', '', 'nature now contain value INVESTIGATION<br>'),
('update', 'ADMIN', '2017-06-04 10:16:09', 'admin', 'action_nature', 'nature updates from INVESTIGATION to INVESTIGATION2<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-06-04 10:18:43', 'admin', 'action_nature', 'nature updates from INVESTIGATION to INVESTIGATION2<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-06-04 10:19:06', 'admin', 'action_nature', 'nature updates from INVESTIGATION2 to INVESTIGATION2<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-06-04 10:19:25', 'admin', 'action_nature', 'nature updates from INVESTIGATION2 to INVESTIGATION2<br>status updates from active to inactive<br>'),
('add', 'ADMIN', '2017-06-04 14:06:40', 'admin', '', 'activity status now contain value PROGESS<br>color code now contain value #33ffc9<br>'),
('add', 'ADMIN', '2017-06-04 14:07:45', 'admin', '', 'activity status now contain value PROGESS<br>color code now contain value #33ffc9<br>'),
('add', 'ADMIN', '2017-06-04 14:07:46', 'admin', '', 'activity status now contain value PROGESS<br>color code now contain value #33ffc9<br>'),
('add', 'ADMIN', '2017-06-04 14:09:53', 'admin', '', 'activity status now contain value PROGESS<br>color code now contain value #33ffc9<br>'),
('add', 'ADMIN', '2017-06-04 14:44:30', 'admin', '', 'activity status now contain value HOLD<br>color code now contain value #70ffb3<br>'),
('update', 'ADMIN', '2017-06-04 15:09:05', 'admin', 'action_activity_status', 'activity status updates from  to HHN<br>color code updates from  to #30ff75<br>status updates from  to active<br>'),
('delete', 'ADMIN', '2017-06-04 15:10:31', 'admin', '', ' deleted'),
('add', 'ADMIN', '2017-06-04 17:01:46', 'admin', 'action_activity_stages', 'activity stage now contain value DDDD<br>color code now contain value #b5ffc4<br>'),
('update', 'ADMIN', '2017-06-04 17:07:13', 'admin', 'action_activity_stages', 'activity stage updates from  to DDDD5<br>color code updates from  to #59ffe9<br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-06-04 17:08:43', 'admin', 'action_activity_stages', 'activity stage updates from  to DDDD5<br>color code updates from  to #beff3d<br>status updates from  to inactive<br>'),
('delete', 'ADMIN', '2017-06-04 17:21:40', 'admin', '', ' deleted'),
('delete', 'ADMIN', '2017-06-04 17:23:34', 'admin', '', ' deleted'),
('add', 'ADMIN', '2017-06-05 01:27:15', 'admin', 'action_activity_stages', 'activity stage now contain value GHTT<br>color code now contain value #ffa759<br>'),
('update', 'ADMIN', '2017-06-05 01:27:31', 'admin', 'action_activity_stages', 'activity stage updates from  to GHTT<br>color code updates from  to #FFA759<br>status updates from  to inactive<br>'),
('add', 'ADMIN', '2017-06-05 01:27:59', 'admin', '', 'activity status now contain value DADAD<br>color code now contain value #b3ff87<br>'),
('add', 'ADMIN', '2017-06-05 01:28:18', 'admin', '', 'activity status now contain value CFGVGBB<br>color code now contain value #57ffd8<br>'),
('add', 'ADMIN', '2017-06-05 01:28:58', 'admin', 'action_activity_stages', 'activity stage now contain value RHGTDD<br>color code now contain value #c9ff17<br>'),
('update', 'ADMIN', '2017-06-05 04:10:02', 'admin', 'action_activity_status', 'activity status updates from  to DADAD<br>color code updates from  to #B3FF87<br>status updates from  to inactive<br>'),
('update', 'ADMIN', '2017-06-05 04:18:53', 'admin', 'action_activity_status', 'activity status updates from  to DADAD<br>color code updates from  to #B3FF87<br>status updates from  to inactive<br>'),
('update', 'ADMIN', '2017-06-05 04:19:00', 'admin', 'action_activity_status', 'activity status updates from  to DADAD<br>color code updates from  to #B3FF87<br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-06-05 04:19:09', 'admin', 'action_activity_status', 'activity status updates from  to DADAD<br>color code updates from  to #B3FF87<br>status updates from  to inactive<br>'),
('delete', 'ADMIN', '2017-06-05 04:24:11', 'admin', '', ' deleted'),
('update', 'ADMIN', '2017-06-05 04:24:33', 'admin', 'action_nature', 'nature updates from EXTERNAL AUDIT to EXTERNAL AUDIT<br>status updates from active to inactive<br>'),
('delete', 'ADMIN', '2017-06-05 04:40:04', 'admin', 'action_nature', 'EXTERNAL AUDIT deleted'),
('update', 'ADMIN', '2017-06-05 04:45:21', 'admin', 'action_activity_stages', 'activity stage updates from  to GHTT<br>color code updates from  to #FFA759<br>status updates from  to active<br>'),
('delete', 'ADMIN', '2017-06-05 05:10:38', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-06-05 05:11:17', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-06-05 05:26:42', 'admin', 'action_user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>'),
('add', 'ADMIN', '2017-06-05 05:27:04', 'admin', 'action_user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>'),
('add', 'ADMIN', '2017-06-05 05:30:25', 'admin', 'action_user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>'),
('add', 'ADMIN', '2017-06-05 07:09:46', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-06-05 07:10:20', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-06-05 07:10:41', 'admin', 'action_user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-06-05 07:11:15', 'admin', 'action_user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-06-05 07:11:29', 'admin', 'action_user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-06-05 07:16:41', 'admin', 'action_user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br> Now has right for view is inactive and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-06-05 10:08:18', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-06-05 10:08:26', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-06-05 10:08:35', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('update', 'ADMIN', '2017-06-06 09:58:52', 'admin', 'action_classification', 'classification updates from  to MC/NON CONFOTMITY23<br>close out updates from  to 3<br>color code updates from  to #4ADBFF<br>status updates from  to inactive<br>'),
('update', 'ADMIN', '2017-06-06 13:33:48', 'admin', 'action_classification', 'classification updates from  to MC/NON CONFOTMITY23<br>close out updates from  to 3<br>color code updates from  to #4ADBFF<br>status updates from  to inactive<br>'),
('delete', 'ADMIN', '2017-06-07 11:06:47', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 11:08:08', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 11:53:20', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 11:56:42', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 11:57:24', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 11:57:34', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 11:59:13', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 12:00:15', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 12:17:13', 'admin', 'action_group_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-07 12:56:57', 'admin', 'action_user_rights', 'Array deleted'),
('update', 'ADMIN', '2017-06-08 05:03:38', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-06-08 05:03:38', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR> SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACT /<BR> VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR> 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR> ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> Modify is for all</li></ul></li></ol>'),
('add', 'ADMIN', '2017-06-08 05:04:15', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value GROUP NAME 2<br>Contacts /<br> Organisation Groups for view is for all <br>Contacts /<br> Organisation Groups for view is for all <br>Contacts /<br> Organisation Groups for view is for all <br>Contacts /<br> Organisation Groups for view is for all <br>'),
('delete', 'ADMIN', '2017-06-08 10:54:34', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-08 11:07:38', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-08 12:54:03', 'admin', 'action_user_rights', 'Array deleted'),
('delete', 'ADMIN', '2017-06-08 13:01:57', 'admin', 'action_user_rights', 'Array deleted'),
('add', 'ADMIN', '2017-06-08 19:39:15', 'admin', 'action_activity_stages', 'activity stage now contain value ONGN<br>color code now contain value #eaff30<br>'),
('update', 'ADMIN', '2017-06-08 19:42:09', 'admin', 'action_activity_stages', 'activity stage updates from  to ONGN5<br>color code updates from  to #EAFF30<br>status updates from  to active<br>'),
('update', 'ADMIN', '2017-06-08 19:51:26', 'admin', 'action_ranks', 'rank updates from MASTER to MASTER5<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-06-08 19:51:39', 'admin', 'action_ranks', 'rank updates from SENIOR OFFICER to SENIOR OFFICER6<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-06-08 19:51:50', 'admin', 'action_ranks', 'rank updates from L to L5<br>status updates from inactive to inactive<br>'),
('update', 'ADMIN', '2017-06-09 06:57:34', 'admin', 'action_ranks', 'rank updates from CHIEFOFFICER to CHIEFOFFICERZ<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-06-09 06:57:41', 'admin', 'action_ranks', 'rank now contain value SDFGHJ<br>'),
('add', 'ADMIN', '2017-06-09 07:26:15', 'admin', '', 'nature now contain value FINDING<br>'),
('add', 'ADMIN', '2017-06-09 08:25:30', 'admin', '', 'activity status now contain value HOLD<br>color code now contain value #ebff36<br>'),
('update', 'ADMIN', '2017-06-09 12:41:01', 'admin', 'action_nature', 'nature updates from FINDING to FINDINGJ<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-06-12 04:13:13', 'admin', 'action_classification', 'classification now contain value THY<br>close out now contain value 1<br>color code now contain value #36ff5e<br>'),
('add', 'ADMIN', '2017-06-16 03:53:17', 'admin', 'meo_users', 'user id now contain value sanasingsys<br>main emp id now contain value e45<br>emp id now contain value 123gh<br>user full name now contain value Sana Rizwan<br>user email now contain value sana@singsys.com<br>staff client now contain value MEO STAFF<br>designation now contain value PM<br>domain id now contain value <br>directory now contain value <br>expiry date now contain value 0000-00-00 00:00:00<br>'),
('delete', 'ADMIN', '2017-06-16 09:37:10', 'admin', 'action_classification', ' deleted'),
('delete', 'ADMIN', '2017-06-16 09:37:16', 'admin', 'action_classification', ' deleted'),
('delete', 'ADMIN', '2017-06-16 09:37:21', 'admin', 'action_classification', ' deleted'),
('add', 'ADMIN', '2017-06-19 11:10:10', 'admin', 'action_classification', 'classification now contain value CXCX<br>close out now contain value 4<br>color code now contain value #61ff6b<br>'),
('add', 'ADMIN', '2017-06-28 06:27:29', 'admin', '', 'activity status now contain value PENDING<br>color code now contain value #3fff14<br>'),
('update', 'ADMIN', '2017-06-29 16:51:32', '', 'vessel', 'SAMSON SUPPLIER technical pic updated to JOSE WILSON OTO,HISHAM  AHAMED,<br/>SAMSON SUPPLIER SCM pic updated to LENIN LAMA ,JASIM HUSSAIN,<br/>SAMSON SUPPLIER operation pic updated to TAMER S.BALBOUL,<br/>SAMSON SUPPLIER emergency contacts updated to CHRISTINA LING,<br/>SAMSON SUPPLIER DPA/CSO updated to ABDALLA ABUELGASIM,ZOHAIR ABDELRAHIM,<br/>SAMSON SUPPLIER crewing pic updated to ANABEL BALINA,BISYRUN HASAN BASRI,<br/>Area of Operation now contains ZZ'),
('update', 'ADMIN', '2017-06-29 16:51:46', '', 'organisation_group', 'Country/City now updated to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br/>Now Members are updated ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,COLIN DAVID TREWHELLA,MARK PETER VAN DER MOLEN,CLAUDIA IGLESIAS CARRICHES,NATALIE WEICHMANN,EUGENE TEO YU-CHNG,TAN HEE HUA,POH CHING HOON,JOYCELYN WONG PUI YEE,CHRISTOPHER WHITE,IAN JESTER ERAS REYES,CHEN YING LEI,<br/>'),
('add', 'ADMIN', '2017-07-04 07:11:03', 'admin', 'action_classification', 'classification now contain value MNC<br>close out now contain value 6<br>color code now contain value #8ffff0<br>'),
('add', 'ADMIN', '2017-07-04 07:11:14', 'admin', 'action_classification', 'classification now contain value NC<br>close out now contain value 5<br>color code now contain value #daff5e<br>'),
('delete', 'ADMIN', '2017-07-04 07:11:49', 'admin', 'action_classification', ' deleted'),
('add', 'ADMIN', '2017-07-04 07:12:08', 'admin', 'action_classification', 'classification now contain value FINDING<br>close out now contain value 3<br>color code now contain value #ff1f3d<br>'),
('delete', 'ADMIN', '2017-07-04 07:12:43', 'admin', 'action_classification', ' deleted'),
('add', 'ADMIN', '2017-07-04 07:12:57', 'admin', 'action_classification', 'classification now contain value OBSERVATION<br>close out now contain value 4<br>color code now contain value #ff175d<br>'),
('update', 'ADMIN', '2017-07-04 07:13:13', 'admin', 'action_classification', 'classification updates from  to OBSERVATION<br>close out updates from  to 4<br>color code updates from  to #3d0738<br>status updates from  to active<br>'),
('delete', 'ADMIN', '2017-07-05 07:09:19', 'admin', 'action_classification', ' deleted'),
('update', 'ADMIN', '2017-07-07 17:07:06', '', 'organisation_group', 'Country/City now contain BANGKOK THAILAND<br/>');

-- --------------------------------------------------------

--
-- Table structure for table `meo_ci_cookies`
--

CREATE TABLE `meo_ci_cookies` (
  `id` int(11) NOT NULL,
  `cookie_id` varchar(255) DEFAULT NULL,
  `netid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `orig_page_requested` varchar(120) DEFAULT NULL,
  `php_session_id` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_ci_sessions`
--

CREATE TABLE `meo_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_ci_sessions`
--

INSERT INTO `meo_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('288ba07f4f5af5c3fefc30bad77f83aa', '115.248.248.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', 1485943964, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('0cd11d1b3f5f5a8491130a196d822806', '115.248.248.37', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', 1485944636, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('20b05e3be39293c17754b594c16473c4', '115.248.248.37', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1485951894, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('6a182dceecd54abb824b45f43a2d8ee8', '115.248.248.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.90 Safari/537.36', 1485946113, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('ea7ed6d346faf4395428f46dc6cb4c48', '115.248.248.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', 1485949727, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('4a15a5de026a04bf1ac1ccd4bef49f07', '115.248.248.37', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1485946860, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('22b7b146b4c94bf2a61cb6246b3e6f8a', '118.201.98.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1485943637, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('3a229b4c93ee5ae7212b08f0294b21c3', '115.248.248.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', 1485953701, 'a:13:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";s:16:\"flash:old:danger\";s:42:\"No users found to send verification email.\";}'),
('7c65a95690fc921864797efbd32e2361', '115.248.248.37', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', 1485951112, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}'),
('f0437d7d6dacfa42dfb2ab0d20878e7d', '115.248.248.37', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1485944743, 'a:12:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:6:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"ADMIN\";s:6:\"userid\";s:1:\"1\";s:4:\"type\";s:11:\"Super Admin\";s:8:\"refer_id\";s:5:\"ADMIN\";s:9:\"user_type\";i:1;}s:22:\"shore_search_by_region\";s:0:\"\";s:10:\"shore_dept\";s:0:\"\";s:10:\"shore_name\";s:0:\"\";s:17:\"shore_email_phone\";s:0:\"\";s:17:\"shore_designation\";s:0:\"\";s:11:\"shore_notes\";s:0:\"\";s:14:\"shore_location\";s:0:\"\";s:9:\"shore_org\";s:0:\"\";s:12:\"shore_vessel\";s:0:\"\";s:18:\"shore_client_users\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_interval`
--

CREATE TABLE `meo_claims_interval` (
  `id` int(11) NOT NULL,
  `claims_interval` varchar(240) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `claims_interval_order` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request`
--

CREATE TABLE `meo_claims_request` (
  `id_claims_request` int(11) NOT NULL,
  `request_status` enum('approved','rejected') DEFAULT NULL,
  `requester_id` int(11) NOT NULL,
  `id_meo_user` int(11) NOT NULL,
  `target_due_date` datetime NOT NULL,
  `billing_entity_type` enum('vessel','department','region') NOT NULL DEFAULT 'vessel',
  `billing_entity_id` int(11) NOT NULL,
  `claim_type` enum('local','hr','it','travel') NOT NULL DEFAULT 'local',
  `total_expenditure` decimal(10,2) NOT NULL,
  `currency` int(11) NOT NULL,
  `country_of_travel` int(11) NOT NULL,
  `purpose_of_travel` text NOT NULL,
  `travel_from` datetime NOT NULL,
  `travel_to` datetime NOT NULL,
  `link_to_travel_req` varchar(300) NOT NULL,
  `status` enum('draft','submitted') DEFAULT 'draft',
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_approvers`
--

CREATE TABLE `meo_claims_request_approvers` (
  `id_claims_request_approvers` int(11) NOT NULL,
  `id_claims_request` int(11) NOT NULL,
  `approvers_id` int(11) NOT NULL,
  `id_designation` int(11) NOT NULL,
  `sequence` int(5) NOT NULL,
  `approval_status` enum('approved','rejected') DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `approval_time` datetime DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_discussion`
--

CREATE TABLE `meo_claims_request_discussion` (
  `id_claims_request_discussion` int(11) NOT NULL,
  `id_claims_request` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `discussion_message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `status` enum('active','hidden') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_discussion_attachment`
--

CREATE TABLE `meo_claims_request_discussion_attachment` (
  `id_claims_request_discussion_attachment` int(11) NOT NULL,
  `id_claims_request_discussion` int(11) NOT NULL,
  `discussion_attachment` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_discussion_image_attachment`
--

CREATE TABLE `meo_claims_request_discussion_image_attachment` (
  `id_claims_request_discussion_image_attachment` int(11) NOT NULL,
  `id_claims_request_discussion` int(11) NOT NULL,
  `discussion_image` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_discussion_link_attachment`
--

CREATE TABLE `meo_claims_request_discussion_link_attachment` (
  `id_claims_request_discussion_link_attachment` int(11) NOT NULL,
  `id_claims_request_discussion` int(11) NOT NULL,
  `discussion_link` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_discussion_notifiers`
--

CREATE TABLE `meo_claims_request_discussion_notifiers` (
  `id_claims_request_discussion_notifiers` int(11) NOT NULL,
  `id_claims_request_discussion` int(11) NOT NULL,
  `notify_to` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_expenditure`
--

CREATE TABLE `meo_claims_request_expenditure` (
  `id_claims_request_expenditure` int(11) NOT NULL,
  `id_claims_request` int(11) NOT NULL,
  `claim_date` datetime NOT NULL,
  `id_claim` int(11) NOT NULL,
  `claim_description` varchar(255) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `gst` decimal(10,5) NOT NULL,
  `total_amt` decimal(10,2) NOT NULL,
  `currency` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_expenditure_attachment`
--

CREATE TABLE `meo_claims_request_expenditure_attachment` (
  `id_claims_request_expenditure_attachment` int(11) NOT NULL,
  `id_claims_request_expenditure` int(11) NOT NULL,
  `expenditure_attachment` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_expenditure_image`
--

CREATE TABLE `meo_claims_request_expenditure_image` (
  `id_claims_request_expenditure_image` int(11) NOT NULL,
  `id_claims_request_expenditure` int(11) NOT NULL,
  `expenditure_image` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_expenditure_link`
--

CREATE TABLE `meo_claims_request_expenditure_link` (
  `id_claims_request_expenditure_link` int(11) NOT NULL,
  `id_claims_request_expenditure` int(11) NOT NULL,
  `expenditure_link` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claims_request_privacy`
--

CREATE TABLE `meo_claims_request_privacy` (
  `id_claims_privacy` int(11) NOT NULL,
  `id_claims_request` int(11) NOT NULL,
  `privacy_type` enum('private','public') NOT NULL DEFAULT 'public',
  `personnel_ids` varchar(250) DEFAULT NULL,
  `group_ids` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_claim_expense_type_entity`
--

CREATE TABLE `meo_claim_expense_type_entity` (
  `id_claim` int(11) UNSIGNED NOT NULL,
  `id_type_claim` int(11) UNSIGNED NOT NULL,
  `expense_type` varchar(300) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(200) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_claim_expense_type_entity`
--

INSERT INTO `meo_claim_expense_type_entity` (`id_claim`, `id_type_claim`, `expense_type`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`) VALUES
(1, 1, 'MEALS', 'active', '2017-01-17 05:04:03', 'ADMIN', '0000-00-00 00:00:00', ''),
(2, 1, 'TESTING', 'active', '2017-01-17 19:36:04', 'ADMIN', '0000-00-00 00:00:00', ''),
(3, 2, 'FLIGHTS', 'active', '2017-01-17 19:36:20', 'ADMIN', '2017-01-18 11:37:02', 'ADMIN'),
(6, 1, 'TEST', 'active', '2017-01-17 23:10:04', 'ADMIN', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `meo_claim_types_entity`
--

CREATE TABLE `meo_claim_types_entity` (
  `id_claim_type` int(11) UNSIGNED NOT NULL,
  `claim_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_claim_types_entity`
--

INSERT INTO `meo_claim_types_entity` (`id_claim_type`, `claim_type_name`) VALUES
(1, 'LOCAL CLAIM'),
(2, 'TRAVEL CLAIM'),
(3, 'HR CLAIM'),
(4, 'IT CLAIM');

-- --------------------------------------------------------

--
-- Table structure for table `meo_client_users_entity`
--

CREATE TABLE `meo_client_users_entity` (
  `id_client_user` int(11) UNSIGNED NOT NULL,
  `client_user_id` varchar(150) NOT NULL,
  `client_user_full_name` varchar(255) NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `client_email_id` varchar(200) NOT NULL,
  `company` varchar(255) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `domain_id` varchar(255) DEFAULT NULL,
  `directory` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `status_reason` varchar(100) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `is_verified` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_client_users_entity`
--

INSERT INTO `meo_client_users_entity` (`id_client_user`, `client_user_id`, `client_user_full_name`, `id_region`, `client_email_id`, `company`, `designation`, `domain_id`, `directory`, `status`, `status_reason`, `expiry_date`, `added_on`, `updated_on`, `is_verified`) VALUES
(1, 'CLIENTUSER1', 'ABHAY', 26, 'ABHAY@SINGSYS.COM', 'SINGSYS', 'CEO', NULL, NULL, 'active', '', '2017-01-31', '2017-01-06 09:18:28', '0000-00-00 00:00:00', 'no'),
(2, 'CLIENTUSER2', 'ABHAY+1', 26, 'ABHAY+1@SINGSYS.COM', 'SINGSYS', 'CEO0', NULL, NULL, 'active', '', '2017-01-31', '2017-01-06 09:18:28', '0000-00-00 00:00:00', 'no'),
(3, 'CLIENTUSER3', 'ABHAY+2', 26, 'ABHAY+2@SINGSYS.COM', 'SINGSYS', 'CEO00', NULL, NULL, 'active', '', '2017-01-31', '2017-01-06 09:18:28', '0000-00-00 00:00:00', 'no'),
(4, 'CLIENTUSER4', 'ABHAY+3', 26, 'ABHAY+3@SINGSYS.COM', 'SINGSYS', 'CEO000', NULL, NULL, 'active', '', '2017-01-31', '2017-01-06 09:18:28', '0000-00-00 00:00:00', 'no'),
(5, 'CLIENTUSER5', 'ABHAY+4', 26, 'ABHAY+4@SINGSYS.COM', 'SINGSYS', 'CEO0000', NULL, NULL, 'active', '', '2017-01-31', '2017-01-06 09:18:28', '0000-00-00 00:00:00', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `meo_client_user_rights_action`
--

CREATE TABLE `meo_client_user_rights_action` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `client_user_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_client_user_rights_action`
--

INSERT INTO `meo_client_user_rights_action` (`id`, `id_group_name`, `client_user_id`, `added_on`, `updated_on`, `updated_by`) VALUES
(11, 1, 1, '2017-06-08 13:06:40', '2017-06-08 18:36:40', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_client_user_rights_ims`
--

CREATE TABLE `meo_client_user_rights_ims` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `client_user_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_client_user_rights_ims`
--

INSERT INTO `meo_client_user_rights_ims` (`id`, `id_group_name`, `client_user_id`, `added_on`, `updated_on`, `updated_by`) VALUES
(1, 1, 1, '2017-06-05 19:53:26', '2017-06-06 01:23:26', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_client_user_rights_raci`
--

CREATE TABLE `meo_client_user_rights_raci` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `client_user_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_client_user_rights_raci`
--

INSERT INTO `meo_client_user_rights_raci` (`id`, `id_group_name`, `client_user_id`, `added_on`, `updated_on`, `updated_by`) VALUES
(1, 4, 1, '2017-06-06 01:43:41', '2017-06-06 07:13:41', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_commercial_pic`
--

CREATE TABLE `meo_commercial_pic` (
  `id_commercial_pic` int(11) NOT NULL,
  `id_contact_rights` int(11) UNSIGNED NOT NULL,
  `id_meo_user` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_config_options`
--

CREATE TABLE `meo_config_options` (
  `id_config` int(11) UNSIGNED NOT NULL,
  `config_name` varchar(250) NOT NULL,
  `config_value` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_config_options`
--

INSERT INTO `meo_config_options` (`id_config`, `config_name`, `config_value`) VALUES
(1, 'smtp_host', 'ssl://smtp.office365.com'),
(2, 'smtp_port', '465'),
(3, 'smtp_email', 'meowave_alerts@meogroup.com'),
(4, 'smtp_password', 'Insp3ct@pp'),
(5, 'admin_email', 'manishmahant@singsys.com');

-- --------------------------------------------------------

--
-- Table structure for table `meo_contact_admin_rights`
--

CREATE TABLE `meo_contact_admin_rights` (
  `id_contact_admin_right` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_contact_admin_rights`
--

INSERT INTO `meo_contact_admin_rights` (`id_contact_admin_right`, `id_group`, `status`, `added_on`, `updated_on`) VALUES
(4, 1, 'active', '2017-02-20 03:35:18', '2017-06-08 10:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `meo_contact_admin_rights_association`
--

CREATE TABLE `meo_contact_admin_rights_association` (
  `id_contact_rights` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `access_for` enum('','view','modify') NOT NULL DEFAULT '',
  `access_with` enum('','all','restricted') NOT NULL DEFAULT '',
  `access_in` enum('','personal','department','vessel','region','vessel_type','group','3_vessel') NOT NULL DEFAULT '',
  `access_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_contact_admin_rights_association`
--

INSERT INTO `meo_contact_admin_rights_association` (`id_contact_rights`, `id_section`, `access_for`, `access_with`, `access_in`, `access_id`) VALUES
(4, 6, 'view', 'restricted', 'personal', ''),
(4, 6, 'view', 'restricted', 'department', ''),
(4, 6, 'modify', 'restricted', 'personal', ''),
(4, 6, 'modify', 'restricted', 'department', ''),
(4, 7, 'view', 'all', '', ''),
(4, 7, 'modify', '', '', ''),
(4, 8, 'view', '', '', ''),
(4, 8, 'modify', '', '', ''),
(4, 9, 'view', '', '', ''),
(4, 9, 'modify', 'all', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meo_contact_rights`
--

CREATE TABLE `meo_contact_rights` (
  `id_contact_rights` int(11) UNSIGNED NOT NULL,
  `id_client` int(11) UNSIGNED NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `id_admin_group` int(11) UNSIGNED NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_contact_rights_admin`
--

CREATE TABLE `meo_contact_rights_admin` (
  `id_user_right_contact` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `id_meo_user` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_contact_rights_admin`
--

INSERT INTO `meo_contact_rights_admin` (`id_user_right_contact`, `id_group`, `id_meo_user`, `status`, `added_on`, `updated_on`) VALUES
(13, 1, 13, 'active', '2017-02-20 03:34:56', '0000-00-00 00:00:00'),
(16, 3, 15, 'active', '2017-02-20 04:49:24', '2017-03-03 09:42:06'),
(17, 2, 11, 'active', '2017-06-08 05:04:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_contact_rights_admin_access`
--

CREATE TABLE `meo_contact_rights_admin_access` (
  `id_user_right_contact` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `access_for` enum('','view','modify') NOT NULL DEFAULT '',
  `access_with` enum('','all','restricted') NOT NULL DEFAULT '',
  `access_in` enum('','personal','department','vessel','region','vessel_type','group','3_vessel') NOT NULL DEFAULT '',
  `access_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_contact_rights_admin_access`
--

INSERT INTO `meo_contact_rights_admin_access` (`id_user_right_contact`, `id_section`, `access_for`, `access_with`, `access_in`, `access_id`) VALUES
(13, 6, 'view', 'all', '', ''),
(13, 6, 'modify', 'restricted', 'personal', ''),
(13, 6, 'modify', 'restricted', 'department', ''),
(13, 7, 'view', 'restricted', 'vessel', ''),
(13, 7, 'view', 'restricted', 'region', ''),
(13, 7, 'modify', '', '', ''),
(13, 8, 'view', '', '', ''),
(13, 8, 'modify', '', '', ''),
(13, 9, 'view', '', '', ''),
(13, 9, 'modify', '', '', ''),
(16, 6, 'view', '', '', ''),
(16, 6, 'modify', '', '', ''),
(16, 7, 'view', '', '', ''),
(16, 7, 'modify', '', '', ''),
(16, 8, 'view', '', '', ''),
(16, 8, 'modify', '', '', ''),
(16, 9, 'view', '', '', ''),
(16, 9, 'modify', '', '', ''),
(17, 6, 'view', '', '', ''),
(17, 7, 'view', '', '', ''),
(17, 8, 'view', '', '', ''),
(17, 9, 'view', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meo_contact_user_rights_association`
--

CREATE TABLE `meo_contact_user_rights_association` (
  `id_contact_rights` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `access_for` enum('','view','modify') NOT NULL DEFAULT '',
  `access_with` enum('','all','restricted') NOT NULL DEFAULT '',
  `access_in` enum('','personal','department','vessel','region','vessel_type','group','3_vessel') NOT NULL DEFAULT '',
  `access_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_countries`
--

CREATE TABLE `meo_countries` (
  `countryid` int(11) NOT NULL,
  `countryname` varchar(45) NOT NULL,
  `regionid` int(11) NOT NULL,
  `country_alias` varchar(50) NOT NULL,
  `dial_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_currency`
--

CREATE TABLE `meo_currency` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `iso_alpha2` varchar(2) DEFAULT NULL,
  `iso_alpha3` varchar(3) DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `currency_name` varchar(32) DEFAULT NULL,
  `currrency_symbol` varchar(3) DEFAULT NULL,
  `flag` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meo_currencyrate`
--

CREATE TABLE `meo_currencyrate` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(25) NOT NULL,
  `rate` decimal(15,5) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_department_entity`
--

CREATE TABLE `meo_department_entity` (
  `id_department` int(11) UNSIGNED NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `department_order` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_department_entity`
--

INSERT INTO `meo_department_entity` (`id_department`, `id_region`, `department_name`, `department_order`, `status`, `added_on`, `updated_on`) VALUES
(7, 29, 'KNOWLEDGE MANAGEMENT CENTRE (SIN)', 6, 'active', '2017-01-16 04:35:33', '2017-02-03 10:15:26'),
(8, 29, 'INFORMATION TECHNOLOGY (IT) (SIN)', 7, 'active', '2017-01-16 04:35:59', '2017-02-03 10:15:26'),
(11, 29, 'MANAGEMENT (SIN)', 1, 'active', '2017-01-16 22:56:01', '2017-02-03 10:15:26'),
(12, 29, 'ASEAN BU', 2, 'active', '2017-01-16 22:57:04', '2017-02-03 10:15:26'),
(13, 58, 'HEAD OF BU', 1, 'active', '2017-01-16 23:03:00', '2017-02-03 10:15:24'),
(14, 34, 'SPECIALISED VESSEL SERVICES', 1, 'active', '2017-01-16 23:04:56', '2017-02-03 10:15:27'),
(15, 29, 'GROUP COMMERCIAL	(SIN)					', 3, 'active', '2017-01-16 23:05:48', '2017-02-03 10:15:26'),
(16, 29, 'ADMINISTRATION (SIN)						', 4, 'active', '2017-01-16 23:07:01', '2017-02-03 10:15:26'),
(17, 29, 'HUMAN RESOURCES (SIN)						', 5, 'active', '2017-01-16 23:07:55', '2017-02-03 10:15:26'),
(20, 29, 'FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						', 8, 'active', '2017-01-16 23:11:12', '2017-02-03 10:15:26'),
(21, 29, 'ENTERPRISE RISK MANAGEMENT (SIN)						', 10, 'active', '2017-01-16 23:37:06', '2017-02-03 10:15:26'),
(23, 29, 'LEGAL (SIN)						', 9, 'active', '2017-01-16 23:37:37', '2017-02-03 10:15:26'),
(24, 29, 'FINANCE (SIN)', 15, 'active', '2017-01-16 23:39:01', '2017-02-03 10:15:27'),
(25, 29, 'SUPPLY CHAIN MANAGEMENT (SIN)						', 11, 'active', '2017-01-16 23:42:03', '2017-02-03 10:15:26'),
(26, 29, 'CREWING (LEVEL  5) (SIN)', 12, 'active', '2017-01-16 23:42:58', '2017-02-03 10:15:26'),
(27, 29, 'TECHNICAL OPERATIONS (SIN)						', 14, 'active', '2017-01-16 23:44:15', '2017-02-03 10:15:26'),
(28, 29, 'HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						', 13, 'active', '2017-01-17 02:00:04', '2017-02-03 10:15:26'),
(29, 31, 'MANAGEMENT (BRUNEI)', 6, 'active', '2017-01-17 22:19:59', '2017-02-03 10:15:24'),
(30, 31, 'ACCOUNTING (BRUNEI)', 4, 'active', '2017-01-17 22:20:26', '2017-02-03 10:15:24'),
(31, 31, 'ADMINISTRATION (BRUNEI)		', 5, 'active', '2017-01-17 22:20:44', '2017-02-03 10:15:24'),
(32, 31, 'OPERATIONS / TECHNICAL (BRUNEI)', 3, 'active', '2017-01-17 22:21:16', '2017-02-03 10:15:24'),
(33, 31, 'CREWING (BRUNEI)', 1, 'active', '2017-01-17 22:21:37', '2017-02-03 10:15:24'),
(34, 31, 'HSQE (BRUNEI)', 7, 'active', '2017-01-17 22:21:54', '2017-02-03 10:15:24'),
(35, 31, 'PURCHASING (BRUNEI)', 2, 'active', '2017-01-17 22:22:12', '2017-02-03 10:15:24'),
(36, 30, 'MANAGEMENT (MSIA)', 1, 'active', '2017-01-17 22:48:37', '2017-02-03 10:15:25'),
(37, 30, 'HSQE (MSIA)', 2, 'active', '2017-01-17 22:49:04', '2017-02-03 10:15:25'),
(38, 30, 'OPERATION (MSIA)', 3, 'active', '2017-01-17 22:49:35', '2017-02-03 10:15:25'),
(39, 30, 'TECHNICAL (MSIA)', 4, 'active', '2017-01-17 22:49:56', '2017-02-03 10:15:25'),
(40, 30, 'CREWING (MSIA)', 5, 'active', '2017-01-17 22:50:14', '2017-02-03 10:15:26'),
(41, 30, 'PURCHASING (MSIA)', 6, 'active', '2017-01-17 22:51:06', '2017-02-03 10:15:26'),
(42, 35, 'EXECUTIVE (AUS)', 3, 'active', '2017-01-17 23:06:22', '2017-02-03 10:15:24'),
(43, 35, 'COMMERCIAL (AUS)', 2, 'active', '2017-01-17 23:06:54', '2017-02-03 10:15:24'),
(44, 35, 'HUMAN RESOURCE (AUS)', 1, 'active', '2017-01-17 23:07:43', '2017-02-03 15:22:50'),
(57, 26, 'MANAGEMENT (JKT)', 1, 'active', '2017-01-18 21:56:05', '2017-02-07 13:10:21'),
(58, 26, 'MARKETING (JKT)', 2, 'active', '2017-01-18 21:56:48', '2017-02-18 15:10:55'),
(59, 26, 'CREWING (JKT)', 3, 'active', '2017-01-18 22:02:39', '2017-02-03 10:15:25'),
(60, 26, 'ACCOUNTING (JKT)', 4, 'active', '2017-01-18 22:03:58', '2017-02-03 10:15:25'),
(61, 26, 'OPERATIONS / TECHNICAL (JKT)', 9, 'active', '2017-01-18 22:09:55', '2017-02-03 10:16:26'),
(62, 26, 'PURCHASING (JKT)', 5, 'active', '2017-01-18 22:10:23', '2017-02-03 10:15:25'),
(63, 26, 'TRAINING (JKT)', 6, 'active', '2017-01-18 22:10:57', '2017-02-03 10:15:25'),
(64, 26, 'HSQE (JKT)', 7, 'active', '2017-01-18 22:14:58', '2017-02-03 10:15:25'),
(65, 26, 'HRD (JKT)', 8, 'active', '2017-01-18 22:15:24', '2017-02-03 10:15:25'),
(66, 61, 'MANAGEMENT (THAI)', 1, 'active', '2017-01-26 00:16:42', '2017-02-03 10:15:27'),
(67, 61, 'FINANCE AND ACCOUNTING (THAI)', 2, 'active', '2017-01-26 00:17:58', '2017-02-03 10:15:27'),
(69, 61, 'BANGKOK OFFICE (MANAGEMENT/HR/COMMERCIAL DEPT)', 3, 'active', '2017-01-26 00:19:57', '2017-02-03 10:15:27'),
(70, 61, 'CREWING - BKK (THAI)', 4, 'active', '2017-01-26 00:22:32', '2017-02-03 10:15:27'),
(71, 61, 'HSQE (THAI)', 5, 'active', '2017-01-26 00:24:35', '2017-02-03 10:15:27'),
(72, 61, 'OPERATIONS (THAI)', 6, 'active', '2017-01-26 00:27:50', '2017-02-03 10:15:27'),
(73, 61, 'MANAGEMENT (THAI- SKL/SATTAHIP)', 7, 'active', '2017-01-26 00:28:40', '2017-02-03 10:15:27'),
(74, 61, 'TECHNICAL (THAI)', 8, 'active', '2017-01-26 00:29:36', '2017-02-03 10:15:27'),
(75, 61, 'PROCUREMENT (THAI)', 9, 'active', '2017-01-26 00:30:55', '2017-02-03 10:15:27'),
(76, 61, 'WAREHOUSE (THAI) ', 10, 'active', '2017-01-26 00:33:16', '2017-02-03 10:15:27'),
(77, 61, 'TRAINING (THAI)', 12, 'active', '2017-01-26 00:34:18', '2017-02-03 10:15:28'),
(78, 61, 'WORKSHOP (THAI)', 13, 'active', '2017-01-26 00:34:36', '2017-02-03 10:15:28'),
(79, 61, 'CREWING (THAI)', 11, 'active', '2017-01-26 00:38:25', '2017-02-03 10:15:27'),
(80, 58, 'OPERATIONS', 2, 'active', '2017-02-01 22:20:20', '2017-02-03 10:15:24'),
(81, 58, 'FLEET MANAGMENT', 4, 'active', '2017-02-01 22:20:56', '2017-02-03 10:15:24'),
(83, 58, 'FINANCE BUSINESS  PARTNER  ', 7, 'active', '2017-02-01 22:22:54', '2017-02-03 10:15:24'),
(86, 58, 'PROJECTS', 5, 'active', '2017-02-01 22:24:10', '2017-02-03 10:15:24'),
(87, 58, 'COMMERCIAL', 3, 'active', '2017-02-01 22:25:02', '2017-03-03 09:56:08'),
(88, 58, 'OPS SUPPORT', 6, 'active', '2017-02-01 22:25:32', '2017-02-03 10:15:24'),
(90, 26, 'OPERATIONS / TECHNICAL (BATAM)', 10, 'active', '2017-02-02 18:14:25', '2017-02-03 10:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `meo_department_member_entity`
--

CREATE TABLE `meo_department_member_entity` (
  `id_department_member` int(11) UNSIGNED NOT NULL,
  `id_member` int(11) UNSIGNED NOT NULL,
  `front_order` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_department_member_entity`
--

INSERT INTO `meo_department_member_entity` (`id_department_member`, `id_member`, `front_order`) VALUES
(29, 131, 13),
(36, 138, 73),
(37, 139, 74),
(40, 144, 80),
(41, 145, 81),
(43, 147, 2),
(43, 148, 3),
(12, 51, 87),
(12, 66, 88),
(12, 218, 89),
(11, 56, 85),
(11, 49, 82),
(11, 129, 83),
(11, 105, 84),
(11, 88, 86),
(7, 60, 100),
(7, 65, 101),
(7, 119, 99),
(17, 58, 94),
(17, 62, 95),
(17, 73, 96),
(17, 124, 98),
(17, 127, 97),
(28, 44, 135),
(28, 87, 136),
(28, 45, 137),
(28, 76, 133),
(28, 120, 134),
(20, 33, 109),
(20, 52, 112),
(20, 98, 108),
(20, 112, 110),
(20, 217, 111),
(25, 72, 118),
(25, 78, 122),
(25, 69, 124),
(25, 111, 119),
(25, 100, 120),
(25, 110, 121),
(25, 114, 123),
(25, 121, 125),
(27, 23, 139),
(27, 86, 142),
(27, 83, 144),
(27, 34, 145),
(27, 70, 147),
(27, 93, 138),
(27, 125, 140),
(27, 95, 141),
(27, 99, 143),
(27, 38, 146),
(26, 74, 127),
(26, 64, 128),
(26, 39, 129),
(26, 26, 130),
(26, 30, 131),
(26, 42, 132),
(26, 103, 126),
(24, 37, 148),
(24, 29, 150),
(24, 63, 151),
(24, 55, 157),
(24, 67, 158),
(24, 24, 160),
(24, 47, 161),
(24, 68, 164),
(24, 25, 166),
(24, 35, 168),
(24, 128, 149),
(24, 101, 152),
(24, 116, 153),
(24, 96, 154),
(24, 122, 155),
(24, 115, 156),
(24, 109, 162),
(24, 123, 163),
(24, 104, 165),
(24, 118, 167),
(24, 130, 159),
(23, 27, 113),
(23, 75, 115),
(23, 46, 116),
(23, 117, 114),
(21, 36, 117),
(16, 53, 93),
(16, 107, 92),
(15, 57, 90),
(15, 61, 91),
(8, 113, 102),
(8, 92, 103),
(8, 94, 105),
(8, 54, 104),
(8, 85, 107),
(8, 84, 106),
(39, 142, 77),
(39, 143, 78),
(39, 262, 79),
(38, 140, 75),
(38, 141, 76),
(30, 63, 11),
(31, 132, 12),
(32, 133, 9),
(32, 134, 10),
(33, 135, 7),
(34, 136, 14),
(35, 137, 8),
(14, 28, 169),
(14, 77, 170),
(14, 31, 171),
(14, 41, 172),
(14, 50, 173),
(14, 48, 174),
(66, 266, 175),
(66, 267, 176),
(66, 268, 177),
(67, 269, 178),
(67, 270, 179),
(67, 271, 180),
(67, 272, 181),
(67, 273, 182),
(67, 274, 183),
(67, 275, 184),
(67, 276, 185),
(70, 283, 192),
(70, 284, 193),
(70, 285, 194),
(70, 286, 195),
(71, 287, 196),
(71, 288, 197),
(71, 289, 198),
(71, 290, 199),
(71, 291, 200),
(71, 292, 201),
(71, 293, 202),
(72, 294, 203),
(72, 295, 204),
(72, 296, 205),
(72, 297, 206),
(72, 298, 207),
(73, 299, 208),
(73, 300, 209),
(74, 301, 210),
(74, 302, 211),
(74, 303, 212),
(74, 304, 213),
(74, 305, 214),
(74, 306, 215),
(74, 307, 216),
(75, 327, 217),
(75, 309, 218),
(75, 310, 219),
(75, 312, 220),
(75, 311, 221),
(75, 313, 222),
(75, 314, 223),
(77, 326, 235),
(77, 327, 236),
(77, 328, 237),
(77, 329, 238),
(78, 330, 239),
(79, 321, 230),
(79, 322, 231),
(79, 323, 232),
(79, 324, 233),
(79, 325, 234),
(69, 277, 186),
(69, 278, 187),
(69, 279, 188),
(69, 280, 189),
(69, 281, 190),
(69, 282, 191),
(76, 315, 224),
(76, 316, 225),
(76, 317, 226),
(76, 318, 227),
(76, 319, 228),
(76, 320, 229),
(42, 146, 4),
(42, 108, 6),
(42, 106, 5),
(13, 14, 15),
(80, 13, 16),
(81, 18, 22),
(81, 89, 23),
(81, 126, 24),
(81, 102, 25),
(83, 37, 32),
(86, 213, 26),
(86, 90, 27),
(86, 12, 28),
(88, 11, 29),
(88, 17, 30),
(88, 20, 31),
(59, 221, 6),
(59, 222, 7),
(59, 223, 8),
(59, 224, 9),
(62, 234, 46),
(63, 235, 47),
(63, 236, 48),
(65, 238, 50),
(65, 239, 51),
(65, 240, 52),
(64, 237, 49),
(60, 225, 10),
(60, 226, 11),
(60, 227, 12),
(60, 228, 13),
(60, 229, 14),
(60, 261, 15),
(90, 241, 57),
(90, 242, 58),
(90, 243, 59),
(90, 244, 60),
(90, 245, 61),
(90, 246, 62),
(90, 247, 63),
(90, 248, 64),
(90, 249, 65),
(90, 250, 66),
(90, 251, 67),
(90, 252, 68),
(90, 253, 69),
(90, 254, 70),
(90, 255, 71),
(90, 256, 72),
(61, 230, 53),
(61, 231, 54),
(61, 232, 55),
(61, 233, 56),
(44, 148, 1),
(44, 264, 1),
(58, 219, 5),
(58, 220, 3),
(57, 182, 2),
(58, 182, 4),
(87, 16, 1),
(87, 216, 1),
(87, 22, 1),
(87, 19, 1),
(43, 215, 1),
(57, 215, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meo_designation_list`
--

CREATE TABLE `meo_designation_list` (
  `id_designation` int(11) UNSIGNED NOT NULL,
  `designation_name` varchar(250) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `updated_by` varchar(250) NOT NULL,
  `updated_on` datetime NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_designation_list_assoc`
--

CREATE TABLE `meo_designation_list_assoc` (
  `id_designation` int(11) UNSIGNED NOT NULL,
  `id_meo_user` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_email_templates`
--

CREATE TABLE `meo_email_templates` (
  `id_email_templates` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_email_templates`
--

INSERT INTO `meo_email_templates` (`id_email_templates`, `section`, `subject`, `message`, `file_name`, `remark`, `added_on`, `updated_on`) VALUES
(1, 'Contacts / SHORE PERSONNEL / VERIFY', 'Test Subject', '<div style=\"font-family:calibri; font-size:13px;\">Hi,\n\nKindly follow this link to view and verify your contact information:\n\n{shore_url}\n\nShould you need further clarifications, feel free to drop us an email at KMGroup@meogroup.com.\n\nBest Regards,\n{user_name}\n</div>', '', 'NIL', '2016-12-06 06:32:55', '0000-00-00 00:00:00'),
(3, 'CONTACTS / VESSEL CONTACTS / VERIFY', 'VESSEL VERIFICATION', '<div style=\"font-family:calibri; font-size:13px;\">Hi,\n\nKindly follow this link to view and verify your vessel\'s contact information:\n\n{vessel_url}\n\nShould you need further clarifications, feel free to drop us an email at KMGroup@meogroup.com.\n\nBest Regards,\n{user_name}\n</div>', '', 'NIL', '2016-12-06 01:02:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_entity_list`
--

CREATE TABLE `meo_entity_list` (
  `id_entity` int(11) UNSIGNED NOT NULL,
  `company_code` varchar(150) NOT NULL,
  `company_name` varchar(300) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_entity_list`
--

INSERT INTO `meo_entity_list` (`id_entity`, `company_code`, `company_name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`) VALUES
(1, 'ET03', 'MICLYN EXPRESS OFFSHORE PTE LTD', 'active', '2017-01-17 05:16:55', 'ADMIN', '2017-01-18 13:09:51', 'ADMIN'),
(2, 'A123', 'SINGSYS', 'active', '2017-01-17 19:38:04', 'ADMIN', '2017-01-18 11:38:15', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `meo_fare_class`
--

CREATE TABLE `meo_fare_class` (
  `fare_class_id` int(11) NOT NULL,
  `fare_class_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_front_vessel_contact`
--

CREATE TABLE `meo_front_vessel_contact` (
  `id_front_vessel` int(11) NOT NULL,
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) UNSIGNED NOT NULL,
  `area_of_operation` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_front_vessel_contact`
--

INSERT INTO `meo_front_vessel_contact` (`id_front_vessel`, `id_vessel_region`, `id_vessel_name`, `area_of_operation`, `notes`, `image`, `updated_by`, `added_date`) VALUES
(16, 27, 169, '', '', NULL, 'ADMIN', '2017-01-19 19:48:36'),
(20, 27, 167, '', 'SISTER: SAMSON 7', NULL, 'ADMIN', '2017-01-19 21:26:51'),
(21, 27, 168, '', 'EX-NAME: ZUMAIA SEPTIMO ; SISTER: SAMSON 6', NULL, 'ADMIN', '2017-01-19 21:28:49'),
(304, 27, 158, '', '', 'uploads/vesselcontact/20170131212936.png', 'ADMIN', '2017-01-31 05:29:46'),
(357, 27, 112, '', '', 'uploads/vesselcontact/20170201185135.png', 'ADMIN', '2017-02-01 02:51:40'),
(368, 42, 36, 'SINGAPORE', '', NULL, 'ADMIN', '2017-02-01 23:18:01'),
(369, 42, 33, 'ASFSDF', '', NULL, 'ADMIN', '2017-02-01 23:18:55'),
(370, 42, 9, 'ASDFSDF', '', NULL, 'ADMIN', '2017-02-01 23:19:35'),
(372, 38, 45, 'AREWR', '', NULL, 'ADMIN', '2017-02-02 01:12:52'),
(373, 41, 154, 'TEST', '', NULL, 'ADMIN', '2017-02-02 07:10:52'),
(374, 31, 159, '', '', 'uploads/vesselcontact/20170203101351.png', 'ADMIN', '2017-02-02 18:13:58'),
(375, 31, 164, '', '', 'uploads/vesselcontact/20170203101600.png', 'ADMIN', '2017-02-02 18:18:00'),
(377, 34, 143, '', 'HULL: HT122206', 'uploads/vesselcontact/20170203102414.png', 'ADMIN', '2017-02-02 18:24:38'),
(381, 40, 35, '', 'EX-NAME: ABEER 32 ; HULL: H354 ', 'uploads/vesselcontact/20170203103115.png', 'ADMIN', '2017-02-02 18:31:20'),
(382, 40, 103, '', 'EX-NAME: PMW SUPPLY ; HULL: YX3058', 'uploads/vesselcontact/20170203103154.png', 'ADMIN', '2017-02-02 18:32:13'),
(383, 40, 66, '', 'EX-NAME: ABEER 41 ; HULL: H241 ; SISTER: EXPRESS 3', 'uploads/vesselcontact/20170203103249.png', 'ADMIN', '2017-02-02 18:32:53'),
(388, 25, 94, '', 'HULL: MSE102 ; SISTER: MICLYN OPAL', 'uploads/vesselcontact/20170203103724.png', 'ADMIN', '2017-02-02 18:37:28'),
(389, 25, 81, '', 'HULL: H222 ; SISTER: EXPRESS 77, 79, 82, 85', 'uploads/vesselcontact/20170203103803.png', 'ADMIN', '2017-02-02 18:38:09'),
(390, 25, 79, '', 'HULL: H204 ; SISTER: EXPRESS 75', 'uploads/vesselcontact/20170203103909.png', 'ADMIN', '2017-02-02 18:39:19'),
(391, 25, 118, '', 'HULL: LS181 ; SISTER: CERDIK', 'uploads/vesselcontact/20170203104030.png', 'ADMIN', '2017-02-02 18:40:36'),
(395, 25, 74, '', 'HULL: H190 ; SISTER: EXPRESS 73', 'uploads/vesselcontact/20170203104330.png', 'ADMIN', '2017-02-02 18:43:33'),
(396, 25, 144, '', 'HULL: H255 ; SISTER:EXPRESS 89, 90, 91, 92, 93', 'uploads/vesselcontact/20170203104422.png', 'ADMIN', '2017-02-02 18:44:27'),
(398, 25, 147, '', 'SISTER: EXPRESS 88, 89, 90, 92, 93 ; BAREBOAT', 'uploads/vesselcontact/20170203104556.png', 'ADMIN', '2017-02-02 18:46:01'),
(399, 25, 119, '', 'HULL: LS182 ; SISTER: CERMAT', 'uploads/vesselcontact/20170203104628.png', 'ADMIN', '2017-02-02 18:46:34'),
(400, 25, 82, '', 'HULL: H231 ; SISTER:EXPRESS 77, 78, 82, 85', 'uploads/vesselcontact/20170203104713.png', 'ADMIN', '2017-02-02 18:47:34'),
(401, 31, 161, '', '', 'uploads/vesselcontact/20170203104950.png', 'ADMIN', '2017-02-02 18:49:54'),
(402, 31, 89, '', '', 'uploads/vesselcontact/20170203105218.png', 'ADMIN', '2017-02-02 18:52:31'),
(403, 31, 157, '', '', 'uploads/vesselcontact/20170203105344.png', 'ADMIN', '2017-02-02 18:53:51'),
(404, 27, 166, '', 'HULL:A378M ; SISTER:MONARCH 1', 'uploads/vesselcontact/20170203105420.png', 'ADMIN', '2017-02-02 18:54:23'),
(408, 34, 92, '', 'HULL: HT0097 ; SISTER: MICLYN GRAND', 'uploads/vesselcontact/20170203110736.png', 'ADMIN', '2017-02-02 19:07:46'),
(409, 34, 97, '', 'HULL: NC510', 'uploads/vesselcontact/20170203110900.png', 'ADMIN', '2017-02-02 19:09:03'),
(410, 34, 24, '', 'EX-NAME: ABEER 42 ; HULL:H242 ; SISTER: EXPRESS 2', 'uploads/vesselcontact/20170203111006.png', 'ADMIN', '2017-02-02 19:10:10'),
(411, 34, 67, '', '', 'uploads/vesselcontact/20170203111058.png', 'ADMIN', '2017-02-02 19:11:03'),
(412, 34, 107, '', 'EX-NAME: MARINA STAR ; HULL: LS198 ', 'uploads/vesselcontact/20170203111200.png', 'ADMIN', '2017-02-02 19:12:03'),
(413, 34, 93, '', 'HULL: HT0098 ; SISER: MICLYN GRACE', '', 'ADMIN', '2017-02-02 19:13:22'),
(414, 34, 104, '', 'HULL:H105 ; SISER:MAGELLAN 1', 'uploads/vesselcontact/20170203111414.png', 'ADMIN', '2017-02-02 19:14:27'),
(415, 34, 25, '', 'HULL: H251', 'uploads/vesselcontact/20170203111512.png', 'ADMIN', '2017-02-02 19:15:16'),
(416, 34, 147, '', '', 'uploads/vesselcontact/20170203111549.png', 'ADMIN', '2017-02-02 19:15:53'),
(417, 34, 68, '', '', 'uploads/vesselcontact/20170203111649.png', 'ADMIN', '2017-02-02 19:16:51'),
(418, 34, 101, '', 'HULL:H103 ; SISTER:MAGELLAN 2', 'uploads/vesselcontact/20170203111736.png', 'ADMIN', '2017-02-02 19:17:42'),
(419, 34, 80, '', 'EX-NAME: ZENITH SATU ; HULL: H221 ; SISTER: EXPRESS 78, 79, 82', 'uploads/vesselcontact/20170203111835.png', 'ADMIN', '2017-02-02 19:18:38'),
(420, 34, 23, '', 'EX-NAME: ABEER 3 ; HULL:H355', 'uploads/vesselcontact/20170203111928.png', 'ADMIN', '2017-02-02 19:19:31'),
(421, 34, 111, '', 'HULL: H110 ; SISTER: MEO RESOLUTION ; IF CALLED OUT FROM VSL, NO WILL APPEAR AS +12033467607 OR +12033467608', 'uploads/vesselcontact/20170203112057.png', 'ADMIN', '2017-02-02 19:21:00'),
(422, 34, 99, '', 'HULL: SRC604 \' SISTER: MICLYN VENTURE', 'uploads/vesselcontact/20170203112251.png', 'ADMIN', '2017-02-02 19:23:02'),
(423, 36, 58, '', 'HULL: H164', '', 'ADMIN', '2017-02-02 19:25:13'),
(425, 40, 37, '', 'EX-NAME: ABEER 37 ; HULL: H116', 'uploads/vesselcontact/20170202134308.png', 'ADMIN', '2017-02-02 19:41:27'),
(429, 43, 115, '', 'EX-NAME: UNIWISE RATCHABURI, SWISSCO SKY ; HULL:LS115 ; SISTER: 90% SIMILAR TO PHUKET', 'uploads/vesselcontact/20170203135259.png', 'ADMIN', '2017-02-02 21:53:03'),
(430, 43, 22, '', 'EX-NAME: UNIEXPRESS 1, UNIWISE 1, GREEN ARROW ; HULL: H362 ', 'uploads/vesselcontact/20170203135330.png', 'ADMIN', '2017-02-02 21:53:34'),
(431, 43, 84, '', 'HULL: H225 ; SISTER: EXPRESS 80', 'uploads/vesselcontact/20170203135410.png', 'ADMIN', '2017-02-02 21:54:14'),
(433, 43, 54, '', 'HULL: H224 ; SISTER: UNIEXPRESS 9-18', 'uploads/vesselcontact/20170203140931.png', 'ADMIN', '2017-02-02 22:10:07'),
(434, 43, 116, '', 'HULL: H333', 'uploads/vesselcontact/20170203141108.png', 'ADMIN', '2017-02-02 22:11:11'),
(436, 43, 113, '', 'EX-NAME: UNIWISE CHONBURI ; HULL: H107 ; SISTER: UNIWISE SONGKLA', 'uploads/vesselcontact/20170203141208.png', 'ADMIN', '2017-02-02 22:16:21'),
(444, 40, 63, 'ASTRTFTYIU', '', NULL, 'ADMIN', '2017-02-03 21:17:32'),
(445, 40, 148, 'AWESTRYTTYY', 'SISTER: EXPRESS 88, 89, 90, 91, 93', 'uploads/vesselcontact/20170203103025.png', 'ADMIN', '2017-02-03 21:17:53'),
(450, 38, 43, '', '', NULL, 'ADMIN', '2017-02-06 21:59:23'),
(451, 38, 27, '', '', NULL, 'ADMIN', '2017-02-06 23:42:41'),
(455, 38, 38, 'INDIA', '', NULL, 'ADMIN', '2017-02-07 23:01:27'),
(458, 25, 165, '', '', NULL, 'ADMIN', '2017-02-08 05:14:50'),
(459, 27, 165, '', 'HULL:A377M ; SISTER:MONARCH 2', 'uploads/vesselcontact/20170203110246.png', 'ADMIN', '2017-02-08 05:15:07'),
(461, 34, 26, '', '', '', 'ADMIN', '2017-03-11 23:49:35'),
(463, 34, 59, 'ZZ', 'HULL: H160 ; SISTER: SAMSON SUPPORTER', 'uploads/vesselcontact/20170207132737.png', 'ADMIN', '2017-06-29 16:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `meo_front_vessel_contact_details`
--

CREATE TABLE `meo_front_vessel_contact_details` (
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) UNSIGNED NOT NULL,
  `details` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('phone','email','info') NOT NULL DEFAULT 'phone',
  `checked` enum('0','1') DEFAULT '1',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_front_vessel_contact_organistaion`
--

CREATE TABLE `meo_front_vessel_contact_organistaion` (
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) UNSIGNED NOT NULL,
  `organistaion` int(11) UNSIGNED NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_front_vessel_contact_userpic`
--

CREATE TABLE `meo_front_vessel_contact_userpic` (
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) UNSIGNED NOT NULL,
  `id_meo_user` int(11) UNSIGNED NOT NULL,
  `type` enum('crewing_pic','dpa_cso','emergency_contact','operation_pic','scm_pic','technical_pic','view_access') NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_front_vessel_contact_userpic`
--

INSERT INTO `meo_front_vessel_contact_userpic` (`id_vessel_region`, `id_vessel_name`, `id_meo_user`, `type`, `added_date`) VALUES
(27, 169, 147, 'technical_pic', '2017-01-19 19:48:36'),
(27, 169, 100, 'scm_pic', '2017-01-19 19:48:36'),
(27, 169, 147, 'operation_pic', '2017-01-19 19:48:36'),
(27, 169, 146, 'emergency_contact', '2017-01-19 19:48:36'),
(27, 169, 18, 'dpa_cso', '2017-01-19 19:48:36'),
(27, 167, 147, 'technical_pic', '2017-01-19 21:26:52'),
(27, 167, 100, 'scm_pic', '2017-01-19 21:26:52'),
(27, 167, 147, 'operation_pic', '2017-01-19 21:26:52'),
(27, 167, 146, 'emergency_contact', '2017-01-19 21:26:52'),
(27, 167, 18, 'dpa_cso', '2017-01-19 21:26:52'),
(27, 168, 147, 'technical_pic', '2017-01-19 21:28:49'),
(27, 168, 100, 'scm_pic', '2017-01-19 21:28:49'),
(27, 168, 147, 'operation_pic', '2017-01-19 21:28:49'),
(27, 168, 146, 'emergency_contact', '2017-01-19 21:28:49'),
(27, 168, 147, 'dpa_cso', '2017-01-19 21:28:49'),
(27, 158, 147, 'technical_pic', '2017-01-31 05:29:47'),
(27, 158, 100, 'scm_pic', '2017-01-31 05:29:47'),
(27, 158, 147, 'operation_pic', '2017-01-31 05:29:47'),
(27, 158, 146, 'emergency_contact', '2017-01-31 05:29:47'),
(27, 158, 147, 'dpa_cso', '2017-01-31 05:29:47'),
(27, 112, 147, 'technical_pic', '2017-02-01 02:51:40'),
(27, 112, 100, 'scm_pic', '2017-02-01 02:51:40'),
(27, 112, 147, 'operation_pic', '2017-02-01 02:51:40'),
(27, 112, 146, 'emergency_contact', '2017-02-01 02:51:40'),
(27, 112, 147, 'dpa_cso', '2017-02-01 02:51:40'),
(34, 143, 192, 'technical_pic', '2017-02-02 18:24:39'),
(34, 143, 193, 'technical_pic', '2017-02-02 18:24:39'),
(34, 143, 171, 'scm_pic', '2017-02-02 18:24:39'),
(34, 143, 172, 'scm_pic', '2017-02-02 18:24:39'),
(34, 143, 181, 'operation_pic', '2017-02-02 18:24:39'),
(34, 143, 182, 'operation_pic', '2017-02-02 18:24:39'),
(34, 143, 178, 'emergency_contact', '2017-02-02 18:24:39'),
(34, 143, 186, 'emergency_contact', '2017-02-02 18:24:39'),
(34, 143, 176, 'dpa_cso', '2017-02-02 18:24:39'),
(34, 143, 186, 'dpa_cso', '2017-02-02 18:24:39'),
(34, 143, 165, 'crewing_pic', '2017-02-02 18:24:39'),
(40, 35, 232, 'technical_pic', '2017-02-02 18:31:20'),
(40, 35, 234, 'scm_pic', '2017-02-02 18:31:20'),
(40, 35, 231, 'operation_pic', '2017-02-02 18:31:20'),
(40, 35, 233, 'operation_pic', '2017-02-02 18:31:20'),
(40, 35, 237, 'emergency_contact', '2017-02-02 18:31:20'),
(40, 35, 237, 'dpa_cso', '2017-02-02 18:31:20'),
(40, 35, 223, 'crewing_pic', '2017-02-02 18:31:20'),
(40, 103, 232, 'technical_pic', '2017-02-02 18:32:14'),
(40, 103, 234, 'scm_pic', '2017-02-02 18:32:14'),
(40, 103, 231, 'operation_pic', '2017-02-02 18:32:14'),
(40, 103, 233, 'operation_pic', '2017-02-02 18:32:14'),
(40, 103, 237, 'emergency_contact', '2017-02-02 18:32:14'),
(40, 103, 237, 'dpa_cso', '2017-02-02 18:32:14'),
(40, 103, 223, 'crewing_pic', '2017-02-02 18:32:14'),
(40, 66, 232, 'technical_pic', '2017-02-02 18:32:54'),
(40, 66, 234, 'scm_pic', '2017-02-02 18:32:54'),
(40, 66, 231, 'operation_pic', '2017-02-02 18:32:54'),
(40, 66, 233, 'operation_pic', '2017-02-02 18:32:54'),
(40, 66, 237, 'emergency_contact', '2017-02-02 18:32:54'),
(40, 66, 237, 'dpa_cso', '2017-02-02 18:32:54'),
(40, 66, 223, 'crewing_pic', '2017-02-02 18:32:54'),
(25, 94, 133, 'technical_pic', '2017-02-02 18:37:28'),
(25, 94, 137, 'scm_pic', '2017-02-02 18:37:28'),
(25, 94, 134, 'operation_pic', '2017-02-02 18:37:28'),
(25, 94, 136, 'emergency_contact', '2017-02-02 18:37:28'),
(25, 94, 136, 'dpa_cso', '2017-02-02 18:37:28'),
(25, 94, 135, 'crewing_pic', '2017-02-02 18:37:28'),
(25, 81, 133, 'technical_pic', '2017-02-02 18:38:09'),
(25, 81, 137, 'scm_pic', '2017-02-02 18:38:09'),
(25, 81, 134, 'operation_pic', '2017-02-02 18:38:09'),
(25, 81, 136, 'emergency_contact', '2017-02-02 18:38:09'),
(25, 81, 136, 'dpa_cso', '2017-02-02 18:38:09'),
(25, 81, 135, 'crewing_pic', '2017-02-02 18:38:09'),
(25, 79, 133, 'technical_pic', '2017-02-02 18:39:19'),
(25, 79, 137, 'scm_pic', '2017-02-02 18:39:19'),
(25, 79, 134, 'operation_pic', '2017-02-02 18:39:19'),
(25, 79, 136, 'emergency_contact', '2017-02-02 18:39:19'),
(25, 79, 136, 'dpa_cso', '2017-02-02 18:39:19'),
(25, 79, 135, 'crewing_pic', '2017-02-02 18:39:19'),
(25, 118, 133, 'technical_pic', '2017-02-02 18:40:36'),
(25, 118, 137, 'scm_pic', '2017-02-02 18:40:36'),
(25, 118, 134, 'operation_pic', '2017-02-02 18:40:36'),
(25, 118, 136, 'emergency_contact', '2017-02-02 18:40:36'),
(25, 118, 136, 'dpa_cso', '2017-02-02 18:40:36'),
(25, 118, 135, 'crewing_pic', '2017-02-02 18:40:36'),
(25, 74, 133, 'technical_pic', '2017-02-02 18:43:34'),
(25, 74, 137, 'scm_pic', '2017-02-02 18:43:34'),
(25, 74, 134, 'operation_pic', '2017-02-02 18:43:34'),
(25, 74, 136, 'emergency_contact', '2017-02-02 18:43:34'),
(25, 74, 136, 'dpa_cso', '2017-02-02 18:43:34'),
(25, 74, 135, 'crewing_pic', '2017-02-02 18:43:34'),
(25, 144, 133, 'technical_pic', '2017-02-02 18:44:27'),
(25, 144, 137, 'scm_pic', '2017-02-02 18:44:27'),
(25, 144, 134, 'operation_pic', '2017-02-02 18:44:27'),
(25, 144, 136, 'emergency_contact', '2017-02-02 18:44:27'),
(25, 144, 136, 'dpa_cso', '2017-02-02 18:44:27'),
(25, 144, 135, 'crewing_pic', '2017-02-02 18:44:27'),
(25, 147, 133, 'technical_pic', '2017-02-02 18:46:01'),
(25, 147, 137, 'scm_pic', '2017-02-02 18:46:01'),
(25, 147, 134, 'operation_pic', '2017-02-02 18:46:01'),
(25, 147, 136, 'emergency_contact', '2017-02-02 18:46:01'),
(25, 147, 136, 'dpa_cso', '2017-02-02 18:46:01'),
(25, 147, 42, 'crewing_pic', '2017-02-02 18:46:01'),
(25, 147, 135, 'crewing_pic', '2017-02-02 18:46:01'),
(25, 119, 133, 'technical_pic', '2017-02-02 18:46:34'),
(25, 119, 137, 'scm_pic', '2017-02-02 18:46:34'),
(25, 119, 134, 'operation_pic', '2017-02-02 18:46:34'),
(25, 119, 136, 'emergency_contact', '2017-02-02 18:46:34'),
(25, 119, 136, 'dpa_cso', '2017-02-02 18:46:34'),
(25, 119, 135, 'crewing_pic', '2017-02-02 18:46:34'),
(25, 82, 133, 'technical_pic', '2017-02-02 18:47:34'),
(25, 82, 137, 'scm_pic', '2017-02-02 18:47:34'),
(25, 82, 134, 'operation_pic', '2017-02-02 18:47:34'),
(25, 82, 136, 'emergency_contact', '2017-02-02 18:47:34'),
(25, 82, 136, 'dpa_cso', '2017-02-02 18:47:34'),
(25, 82, 135, 'crewing_pic', '2017-02-02 18:47:34'),
(27, 166, 100, 'scm_pic', '2017-02-02 18:54:23'),
(27, 166, 146, 'emergency_contact', '2017-02-02 18:54:23'),
(27, 166, 18, 'dpa_cso', '2017-02-02 18:54:23'),
(27, 166, 26, 'crewing_pic', '2017-02-02 18:54:23'),
(27, 166, 64, 'crewing_pic', '2017-02-02 18:54:23'),
(34, 92, 192, 'technical_pic', '2017-02-02 19:07:46'),
(34, 92, 194, 'technical_pic', '2017-02-02 19:07:46'),
(34, 92, 170, 'scm_pic', '2017-02-02 19:07:46'),
(34, 92, 172, 'scm_pic', '2017-02-02 19:07:46'),
(34, 92, 187, 'operation_pic', '2017-02-02 19:07:46'),
(34, 92, 188, 'operation_pic', '2017-02-02 19:07:46'),
(34, 92, 178, 'emergency_contact', '2017-02-02 19:07:46'),
(34, 92, 186, 'emergency_contact', '2017-02-02 19:07:46'),
(34, 92, 176, 'dpa_cso', '2017-02-02 19:07:46'),
(34, 92, 186, 'dpa_cso', '2017-02-02 19:07:46'),
(34, 92, 163, 'crewing_pic', '2017-02-02 19:07:46'),
(34, 92, 165, 'crewing_pic', '2017-02-02 19:07:46'),
(34, 97, 68, 'technical_pic', '2017-02-02 19:09:03'),
(34, 97, 194, 'technical_pic', '2017-02-02 19:09:03'),
(34, 97, 170, 'scm_pic', '2017-02-02 19:09:03'),
(34, 97, 172, 'scm_pic', '2017-02-02 19:09:03'),
(34, 97, 187, 'operation_pic', '2017-02-02 19:09:03'),
(34, 97, 188, 'operation_pic', '2017-02-02 19:09:03'),
(34, 97, 178, 'emergency_contact', '2017-02-02 19:09:03'),
(34, 97, 186, 'emergency_contact', '2017-02-02 19:09:03'),
(34, 97, 176, 'dpa_cso', '2017-02-02 19:09:03'),
(34, 97, 186, 'dpa_cso', '2017-02-02 19:09:03'),
(34, 97, 163, 'crewing_pic', '2017-02-02 19:09:03'),
(34, 97, 165, 'crewing_pic', '2017-02-02 19:09:03'),
(34, 24, 192, 'technical_pic', '2017-02-02 19:10:11'),
(34, 24, 193, 'technical_pic', '2017-02-02 19:10:11'),
(34, 24, 170, 'scm_pic', '2017-02-02 19:10:11'),
(34, 24, 171, 'scm_pic', '2017-02-02 19:10:11'),
(34, 24, 181, 'operation_pic', '2017-02-02 19:10:11'),
(34, 24, 182, 'operation_pic', '2017-02-02 19:10:11'),
(34, 24, 178, 'emergency_contact', '2017-02-02 19:10:11'),
(34, 24, 186, 'emergency_contact', '2017-02-02 19:10:11'),
(34, 24, 176, 'dpa_cso', '2017-02-02 19:10:11'),
(34, 24, 186, 'dpa_cso', '2017-02-02 19:10:11'),
(34, 24, 165, 'crewing_pic', '2017-02-02 19:10:11'),
(34, 67, 193, 'technical_pic', '2017-02-02 19:11:03'),
(34, 67, 194, 'technical_pic', '2017-02-02 19:11:03'),
(34, 67, 171, 'scm_pic', '2017-02-02 19:11:03'),
(34, 67, 172, 'scm_pic', '2017-02-02 19:11:03'),
(34, 67, 187, 'operation_pic', '2017-02-02 19:11:03'),
(34, 67, 188, 'operation_pic', '2017-02-02 19:11:03'),
(34, 67, 178, 'emergency_contact', '2017-02-02 19:11:03'),
(34, 67, 186, 'emergency_contact', '2017-02-02 19:11:03'),
(34, 67, 176, 'dpa_cso', '2017-02-02 19:11:03'),
(34, 67, 186, 'dpa_cso', '2017-02-02 19:11:03'),
(34, 67, 163, 'crewing_pic', '2017-02-02 19:11:03'),
(34, 67, 165, 'crewing_pic', '2017-02-02 19:11:03'),
(34, 107, 192, 'technical_pic', '2017-02-02 19:12:03'),
(34, 107, 193, 'technical_pic', '2017-02-02 19:12:03'),
(34, 107, 170, 'scm_pic', '2017-02-02 19:12:03'),
(34, 107, 171, 'scm_pic', '2017-02-02 19:12:03'),
(34, 107, 181, 'operation_pic', '2017-02-02 19:12:03'),
(34, 107, 182, 'operation_pic', '2017-02-02 19:12:03'),
(34, 107, 178, 'emergency_contact', '2017-02-02 19:12:03'),
(34, 107, 186, 'emergency_contact', '2017-02-02 19:12:03'),
(34, 107, 176, 'dpa_cso', '2017-02-02 19:12:03'),
(34, 107, 186, 'dpa_cso', '2017-02-02 19:12:03'),
(34, 107, 165, 'crewing_pic', '2017-02-02 19:12:03'),
(34, 93, 192, 'technical_pic', '2017-02-02 19:13:22'),
(34, 93, 194, 'technical_pic', '2017-02-02 19:13:22'),
(34, 93, 170, 'scm_pic', '2017-02-02 19:13:22'),
(34, 93, 172, 'scm_pic', '2017-02-02 19:13:22'),
(34, 93, 187, 'operation_pic', '2017-02-02 19:13:22'),
(34, 93, 188, 'operation_pic', '2017-02-02 19:13:22'),
(34, 93, 178, 'emergency_contact', '2017-02-02 19:13:22'),
(34, 93, 186, 'emergency_contact', '2017-02-02 19:13:22'),
(34, 93, 176, 'dpa_cso', '2017-02-02 19:13:22'),
(34, 93, 186, 'dpa_cso', '2017-02-02 19:13:22'),
(34, 93, 163, 'crewing_pic', '2017-02-02 19:13:22'),
(34, 93, 165, 'crewing_pic', '2017-02-02 19:13:22'),
(34, 104, 192, 'technical_pic', '2017-02-02 19:14:28'),
(34, 104, 194, 'technical_pic', '2017-02-02 19:14:28'),
(34, 104, 171, 'scm_pic', '2017-02-02 19:14:28'),
(34, 104, 172, 'scm_pic', '2017-02-02 19:14:28'),
(34, 104, 181, 'operation_pic', '2017-02-02 19:14:28'),
(34, 104, 182, 'operation_pic', '2017-02-02 19:14:28'),
(34, 104, 178, 'emergency_contact', '2017-02-02 19:14:28'),
(34, 104, 186, 'emergency_contact', '2017-02-02 19:14:28'),
(34, 104, 176, 'dpa_cso', '2017-02-02 19:14:28'),
(34, 104, 186, 'dpa_cso', '2017-02-02 19:14:28'),
(34, 104, 165, 'crewing_pic', '2017-02-02 19:14:28'),
(34, 25, 193, 'technical_pic', '2017-02-02 19:15:16'),
(34, 25, 194, 'technical_pic', '2017-02-02 19:15:16'),
(34, 25, 171, 'scm_pic', '2017-02-02 19:15:16'),
(34, 25, 172, 'scm_pic', '2017-02-02 19:15:16'),
(34, 25, 187, 'operation_pic', '2017-02-02 19:15:16'),
(34, 25, 188, 'operation_pic', '2017-02-02 19:15:16'),
(34, 25, 178, 'emergency_contact', '2017-02-02 19:15:16'),
(34, 25, 186, 'emergency_contact', '2017-02-02 19:15:16'),
(34, 25, 176, 'dpa_cso', '2017-02-02 19:15:16'),
(34, 25, 186, 'dpa_cso', '2017-02-02 19:15:16'),
(34, 25, 163, 'crewing_pic', '2017-02-02 19:15:16'),
(34, 25, 165, 'crewing_pic', '2017-02-02 19:15:16'),
(34, 68, 193, 'technical_pic', '2017-02-02 19:16:51'),
(34, 68, 194, 'technical_pic', '2017-02-02 19:16:51'),
(34, 68, 171, 'scm_pic', '2017-02-02 19:16:51'),
(34, 68, 172, 'scm_pic', '2017-02-02 19:16:51'),
(34, 68, 187, 'operation_pic', '2017-02-02 19:16:51'),
(34, 68, 188, 'operation_pic', '2017-02-02 19:16:51'),
(34, 68, 178, 'emergency_contact', '2017-02-02 19:16:51'),
(34, 68, 186, 'emergency_contact', '2017-02-02 19:16:51'),
(34, 68, 176, 'dpa_cso', '2017-02-02 19:16:51'),
(34, 68, 186, 'dpa_cso', '2017-02-02 19:16:51'),
(34, 68, 163, 'crewing_pic', '2017-02-02 19:16:51'),
(34, 68, 165, 'crewing_pic', '2017-02-02 19:16:51'),
(34, 101, 192, 'technical_pic', '2017-02-02 19:17:42'),
(34, 101, 194, 'technical_pic', '2017-02-02 19:17:42'),
(34, 101, 171, 'scm_pic', '2017-02-02 19:17:42'),
(34, 101, 172, 'scm_pic', '2017-02-02 19:17:42'),
(34, 101, 181, 'operation_pic', '2017-02-02 19:17:42'),
(34, 101, 182, 'operation_pic', '2017-02-02 19:17:42'),
(34, 101, 178, 'emergency_contact', '2017-02-02 19:17:42'),
(34, 101, 186, 'emergency_contact', '2017-02-02 19:17:42'),
(34, 101, 176, 'dpa_cso', '2017-02-02 19:17:42'),
(34, 101, 186, 'dpa_cso', '2017-02-02 19:17:42'),
(34, 101, 165, 'crewing_pic', '2017-02-02 19:17:42'),
(34, 80, 192, 'technical_pic', '2017-02-02 19:18:38'),
(34, 80, 193, 'technical_pic', '2017-02-02 19:18:38'),
(34, 80, 170, 'scm_pic', '2017-02-02 19:18:38'),
(34, 80, 171, 'scm_pic', '2017-02-02 19:18:38'),
(34, 80, 181, 'operation_pic', '2017-02-02 19:18:38'),
(34, 80, 182, 'operation_pic', '2017-02-02 19:18:38'),
(34, 80, 178, 'emergency_contact', '2017-02-02 19:18:38'),
(34, 80, 186, 'emergency_contact', '2017-02-02 19:18:38'),
(34, 80, 176, 'dpa_cso', '2017-02-02 19:18:38'),
(34, 80, 186, 'dpa_cso', '2017-02-02 19:18:38'),
(34, 80, 165, 'crewing_pic', '2017-02-02 19:18:38'),
(34, 23, 193, 'technical_pic', '2017-02-02 19:19:31'),
(34, 23, 194, 'technical_pic', '2017-02-02 19:19:31'),
(34, 23, 171, 'scm_pic', '2017-02-02 19:19:31'),
(34, 23, 172, 'scm_pic', '2017-02-02 19:19:31'),
(34, 23, 187, 'operation_pic', '2017-02-02 19:19:31'),
(34, 23, 188, 'operation_pic', '2017-02-02 19:19:31'),
(34, 23, 178, 'emergency_contact', '2017-02-02 19:19:31'),
(34, 23, 186, 'emergency_contact', '2017-02-02 19:19:31'),
(34, 23, 176, 'dpa_cso', '2017-02-02 19:19:31'),
(34, 23, 186, 'dpa_cso', '2017-02-02 19:19:31'),
(34, 23, 163, 'crewing_pic', '2017-02-02 19:19:31'),
(34, 23, 165, 'crewing_pic', '2017-02-02 19:19:31'),
(34, 111, 192, 'technical_pic', '2017-02-02 19:21:01'),
(34, 111, 193, 'technical_pic', '2017-02-02 19:21:01'),
(34, 111, 170, 'scm_pic', '2017-02-02 19:21:01'),
(34, 111, 171, 'scm_pic', '2017-02-02 19:21:01'),
(34, 111, 181, 'operation_pic', '2017-02-02 19:21:01'),
(34, 111, 182, 'operation_pic', '2017-02-02 19:21:01'),
(34, 111, 178, 'emergency_contact', '2017-02-02 19:21:01'),
(34, 111, 186, 'emergency_contact', '2017-02-02 19:21:01'),
(34, 111, 176, 'dpa_cso', '2017-02-02 19:21:01'),
(34, 111, 186, 'dpa_cso', '2017-02-02 19:21:01'),
(34, 111, 165, 'crewing_pic', '2017-02-02 19:21:01'),
(34, 111, 170, 'crewing_pic', '2017-02-02 19:21:01'),
(34, 99, 192, 'technical_pic', '2017-02-02 19:23:02'),
(34, 99, 193, 'technical_pic', '2017-02-02 19:23:02'),
(34, 99, 170, 'scm_pic', '2017-02-02 19:23:02'),
(34, 99, 172, 'scm_pic', '2017-02-02 19:23:02'),
(34, 99, 181, 'operation_pic', '2017-02-02 19:23:02'),
(34, 99, 182, 'operation_pic', '2017-02-02 19:23:02'),
(34, 99, 176, 'dpa_cso', '2017-02-02 19:23:02'),
(34, 99, 186, 'dpa_cso', '2017-02-02 19:23:02'),
(34, 99, 165, 'crewing_pic', '2017-02-02 19:23:02'),
(36, 58, 193, 'technical_pic', '2017-02-02 19:25:14'),
(36, 58, 194, 'technical_pic', '2017-02-02 19:25:14'),
(36, 58, 170, 'scm_pic', '2017-02-02 19:25:14'),
(36, 58, 171, 'scm_pic', '2017-02-02 19:25:14'),
(36, 58, 182, 'operation_pic', '2017-02-02 19:25:14'),
(36, 58, 191, 'operation_pic', '2017-02-02 19:25:14'),
(36, 58, 178, 'emergency_contact', '2017-02-02 19:25:14'),
(36, 58, 186, 'emergency_contact', '2017-02-02 19:25:14'),
(36, 58, 176, 'dpa_cso', '2017-02-02 19:25:14'),
(36, 58, 186, 'dpa_cso', '2017-02-02 19:25:14'),
(36, 58, 163, 'crewing_pic', '2017-02-02 19:25:14'),
(36, 58, 165, 'crewing_pic', '2017-02-02 19:25:14'),
(40, 37, 232, 'technical_pic', '2017-02-02 19:41:27'),
(40, 37, 234, 'scm_pic', '2017-02-02 19:41:27'),
(40, 37, 231, 'operation_pic', '2017-02-02 19:41:27'),
(40, 37, 233, 'operation_pic', '2017-02-02 19:41:27'),
(40, 37, 237, 'emergency_contact', '2017-02-02 19:41:27'),
(40, 37, 237, 'dpa_cso', '2017-02-02 19:41:27'),
(40, 37, 223, 'crewing_pic', '2017-02-02 19:41:27'),
(43, 115, 303, 'technical_pic', '2017-02-02 21:53:03'),
(43, 115, 314, 'scm_pic', '2017-02-02 21:53:03'),
(43, 115, 295, 'operation_pic', '2017-02-02 21:53:03'),
(43, 115, 297, 'operation_pic', '2017-02-02 21:53:03'),
(43, 115, 289, 'emergency_contact', '2017-02-02 21:53:03'),
(43, 115, 291, 'emergency_contact', '2017-02-02 21:53:03'),
(43, 115, 287, 'dpa_cso', '2017-02-02 21:53:03'),
(43, 115, 289, 'dpa_cso', '2017-02-02 21:53:03'),
(43, 115, 325, 'crewing_pic', '2017-02-02 21:53:03'),
(43, 22, 303, 'technical_pic', '2017-02-02 21:53:35'),
(43, 22, 314, 'scm_pic', '2017-02-02 21:53:35'),
(43, 22, 295, 'operation_pic', '2017-02-02 21:53:35'),
(43, 22, 297, 'operation_pic', '2017-02-02 21:53:35'),
(43, 22, 289, 'emergency_contact', '2017-02-02 21:53:35'),
(43, 22, 291, 'emergency_contact', '2017-02-02 21:53:35'),
(43, 22, 287, 'dpa_cso', '2017-02-02 21:53:35'),
(43, 22, 289, 'dpa_cso', '2017-02-02 21:53:35'),
(43, 22, 325, 'crewing_pic', '2017-02-02 21:53:35'),
(43, 84, 303, 'technical_pic', '2017-02-02 21:54:14'),
(43, 84, 314, 'scm_pic', '2017-02-02 21:54:14'),
(43, 84, 295, 'operation_pic', '2017-02-02 21:54:14'),
(43, 84, 296, 'operation_pic', '2017-02-02 21:54:14'),
(43, 84, 289, 'emergency_contact', '2017-02-02 21:54:14'),
(43, 84, 291, 'emergency_contact', '2017-02-02 21:54:14'),
(43, 84, 287, 'dpa_cso', '2017-02-02 21:54:14'),
(43, 84, 289, 'dpa_cso', '2017-02-02 21:54:14'),
(43, 84, 325, 'crewing_pic', '2017-02-02 21:54:14'),
(43, 54, 303, 'technical_pic', '2017-02-02 22:10:07'),
(43, 54, 314, 'scm_pic', '2017-02-02 22:10:07'),
(43, 54, 295, 'operation_pic', '2017-02-02 22:10:07'),
(43, 54, 297, 'operation_pic', '2017-02-02 22:10:07'),
(43, 54, 291, 'emergency_contact', '2017-02-02 22:10:07'),
(43, 54, 289, 'emergency_contact', '2017-02-02 22:10:07'),
(43, 54, 287, 'dpa_cso', '2017-02-02 22:10:07'),
(43, 54, 289, 'dpa_cso', '2017-02-02 22:10:07'),
(43, 54, 325, 'crewing_pic', '2017-02-02 22:10:07'),
(43, 116, 303, 'technical_pic', '2017-02-02 22:11:12'),
(43, 116, 314, 'scm_pic', '2017-02-02 22:11:12'),
(43, 116, 295, 'operation_pic', '2017-02-02 22:11:12'),
(43, 116, 297, 'operation_pic', '2017-02-02 22:11:12'),
(43, 116, 289, 'emergency_contact', '2017-02-02 22:11:12'),
(43, 116, 291, 'emergency_contact', '2017-02-02 22:11:12'),
(43, 116, 287, 'dpa_cso', '2017-02-02 22:11:12'),
(43, 116, 289, 'dpa_cso', '2017-02-02 22:11:12'),
(43, 116, 325, 'crewing_pic', '2017-02-02 22:11:12'),
(43, 113, 303, 'technical_pic', '2017-02-02 22:16:21'),
(43, 113, 314, 'scm_pic', '2017-02-02 22:16:21'),
(43, 113, 295, 'operation_pic', '2017-02-02 22:16:21'),
(43, 113, 297, 'operation_pic', '2017-02-02 22:16:21'),
(43, 113, 289, 'emergency_contact', '2017-02-02 22:16:21'),
(43, 113, 291, 'emergency_contact', '2017-02-02 22:16:21'),
(43, 113, 287, 'dpa_cso', '2017-02-02 22:16:21'),
(43, 113, 289, 'dpa_cso', '2017-02-02 22:16:21'),
(43, 113, 325, 'crewing_pic', '2017-02-02 22:16:21'),
(40, 148, 232, 'technical_pic', '2017-02-03 21:17:53'),
(40, 148, 234, 'scm_pic', '2017-02-03 21:17:53'),
(40, 148, 231, 'operation_pic', '2017-02-03 21:17:53'),
(40, 148, 233, 'operation_pic', '2017-02-03 21:17:53'),
(40, 148, 237, 'emergency_contact', '2017-02-03 21:17:53'),
(40, 148, 237, 'dpa_cso', '2017-02-03 21:17:53'),
(40, 148, 223, 'crewing_pic', '2017-02-03 21:17:53'),
(38, 43, 86, 'operation_pic', '2017-02-06 21:59:23'),
(38, 27, 182, 'operation_pic', '2017-02-06 23:42:41'),
(25, 165, 215, 'operation_pic', '2017-02-08 05:14:50'),
(27, 165, 126, 'technical_pic', '2017-02-08 05:15:08'),
(27, 165, 100, 'scm_pic', '2017-02-08 05:15:08'),
(27, 165, 126, 'operation_pic', '2017-02-08 05:15:08'),
(27, 165, 215, 'operation_pic', '2017-02-08 05:15:08'),
(27, 165, 146, 'emergency_contact', '2017-02-08 05:15:08'),
(27, 165, 18, 'dpa_cso', '2017-02-08 05:15:08'),
(27, 165, 26, 'crewing_pic', '2017-02-08 05:15:08'),
(27, 165, 64, 'crewing_pic', '2017-02-08 05:15:08'),
(34, 26, 106, 'technical_pic', '2017-03-11 23:49:35'),
(34, 26, 215, 'technical_pic', '2017-03-11 23:49:35'),
(34, 26, 86, 'operation_pic', '2017-03-11 23:49:35'),
(34, 26, 215, 'operation_pic', '2017-03-11 23:49:35'),
(34, 59, 196, 'technical_pic', '2017-06-29 16:51:32'),
(34, 59, 197, 'technical_pic', '2017-06-29 16:51:32'),
(34, 59, 173, 'scm_pic', '2017-06-29 16:51:32'),
(34, 59, 189, 'scm_pic', '2017-06-29 16:51:32'),
(34, 59, 184, 'operation_pic', '2017-06-29 16:51:32'),
(34, 59, 100, 'emergency_contact', '2017-06-29 16:51:32'),
(34, 59, 176, 'dpa_cso', '2017-06-29 16:51:32'),
(34, 59, 186, 'dpa_cso', '2017-06-29 16:51:32'),
(34, 59, 164, 'crewing_pic', '2017-06-29 16:51:32'),
(34, 59, 167, 'crewing_pic', '2017-06-29 16:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_bu_entity`
--

CREATE TABLE `meo_group_bu_entity` (
  `id_group_bu` int(11) UNSIGNED NOT NULL,
  `group_bu_name` varchar(120) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `group_bu_order` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_bu_entity`
--

INSERT INTO `meo_group_bu_entity` (`id_group_bu`, `group_bu_name`, `status`, `created_on`, `updated_on`, `group_bu_order`) VALUES
(3, 'ASEAN- INDONESIA', 'active', '2017-01-06 08:42:05', '2017-02-03 20:31:58', 2),
(11, 'GROUP', 'active', '2017-01-12 19:39:08', '2017-02-03 20:31:58', 5),
(12, 'PTLL - BATAM', 'active', '2017-01-12 19:39:21', '2017-02-03 20:31:58', 9),
(13, 'MIDDLE EAST ', 'active', '2017-01-16 18:28:28', '2017-02-03 20:31:58', 1),
(16, 'ASEAN- BRUNEI', 'active', '2017-01-19 18:30:50', '2017-02-03 20:31:58', 7),
(17, 'THAILAND- UWO', 'active', '2017-01-19 18:31:18', '2017-02-03 20:31:58', 8),
(18, 'EOS- ROW', 'active', '2017-01-19 18:31:52', '2017-02-03 20:31:58', 4),
(19, 'SVS', 'active', '2017-01-19 18:32:16', '2017-02-03 20:31:58', 6),
(20, 'ASEAN- MALAYSIA', 'active', '2017-01-19 18:33:01', '2017-02-03 20:31:58', 10),
(21, 'AUSTRALIA', 'active', '2017-01-23 01:42:17', '2017-02-03 20:31:58', 3);

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_name_entity`
--

CREATE TABLE `meo_group_name_entity` (
  `id_group_name` int(11) UNSIGNED NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_name_entity`
--

INSERT INTO `meo_group_name_entity` (`id_group_name`, `group_name`, `group_description`, `status`, `added_on`, `updated_on`) VALUES
(1, 'GROUP NAME 2', 'GROUP NAME 1', 'active', '2017-01-06 09:06:21', '2017-05-23 12:11:03'),
(2, 'GROUP NAME 2', 'GROUP NAME 2', 'active', '2017-01-06 09:06:35', '0000-00-00 00:00:00'),
(3, 'KMC SYSTEM ADMIN', 'KMC PERSONNEL ARE THE SYSTEM CONTROLLERS AND HAVE FULL ACCESS RIGHTS TO  ALL SECTIONS', 'active', '2017-01-06 09:06:46', '2017-02-02 19:46:12'),
(4, 'SINGSYSSERV', 'THIS IS GROUP NAME', 'active', '2017-05-31 09:58:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_region_entity`
--

CREATE TABLE `meo_group_region_entity` (
  `id_region` int(11) UNSIGNED NOT NULL,
  `region_title` varchar(150) NOT NULL,
  `id_group_bu` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `group_region_order` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_region_entity`
--

INSERT INTO `meo_group_region_entity` (`id_region`, `region_title`, `id_group_bu`, `status`, `added_on`, `updated_on`, `group_region_order`) VALUES
(26, 'INDONESIA', 3, 'active', '2017-01-06 08:45:26', '2017-05-24 14:55:28', 1),
(29, 'SINGAPORE ', 11, 'active', '2017-01-12 19:43:25', '2017-05-24 14:55:29', 1),
(30, 'MALAYSIA', 20, 'active', '2017-01-12 19:43:35', '2017-05-24 14:55:29', 1),
(31, 'BRUNEI', 16, 'active', '2017-01-12 19:43:46', '2017-05-24 14:55:29', 1),
(34, 'SPECIALISED VESSEL SERVICES (SVS)', 19, 'active', '2017-01-16 18:03:31', '2017-05-24 14:55:29', 1),
(35, 'AUSTRALIA', 21, 'active', '2017-01-16 18:18:17', '2017-05-24 14:55:28', 1),
(36, 'MIDDLE EAST - DUBAI, UAE', 13, 'active', '2017-01-16 18:29:39', '2017-05-24 14:55:28', 2),
(55, 'MIDDLE EAST - QATAR', 13, 'active', '2017-01-19 01:31:08', '2017-05-24 14:55:28', 1),
(58, 'EOS', 18, 'active', '2017-01-19 01:54:54', '2017-05-24 14:55:29', 2),
(59, 'MIDDLE EAST - SAUDI', 13, 'active', '2017-01-19 18:08:58', '2017-05-24 14:55:28', 3),
(61, 'THAILAND - SATTAHIP', 17, 'active', '2017-01-26 00:08:30', '2017-05-24 14:55:29', 2),
(62, 'THAILAND - SONGKHLA', 17, 'active', '2017-01-26 00:44:44', '2017-05-24 14:55:29', 1),
(63, 'ROW- AUSTRALIA', 18, 'active', '2017-01-31 20:01:36', '2017-05-24 14:55:28', 1),
(64, 'ROW- OTHERS', 18, 'active', '2017-01-31 20:02:37', '2017-05-24 14:55:29', 3);

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_rights`
--

CREATE TABLE `meo_group_rights` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) UNSIGNED NOT NULL,
  `view` int(11) NOT NULL,
  `add_file` int(11) NOT NULL,
  `edit_file` int(11) NOT NULL,
  `delete_file` int(11) NOT NULL,
  `add_folder` int(11) NOT NULL,
  `edit_folder` int(11) NOT NULL,
  `delete_folder` int(11) NOT NULL,
  `comment_log` int(11) NOT NULL,
  `delete_others_comment` int(11) NOT NULL,
  `add_edit_delete_revision_log` int(11) NOT NULL,
  `add_edit_delete_release_history` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_rights_access_mailroom`
--

CREATE TABLE `meo_group_rights_access_mailroom` (
  `id_group_right` int(11) UNSIGNED NOT NULL,
  `view_summary` enum('yes','no') NOT NULL DEFAULT 'no',
  `new_request` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin_claims` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin_trf` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin_capex` enum('yes','no') DEFAULT 'no',
  `build_form` enum('yes','no') NOT NULL DEFAULT 'no',
  `deletes` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_rights_access_mailroom`
--

INSERT INTO `meo_group_rights_access_mailroom` (`id_group_right`, `view_summary`, `new_request`, `admin_claims`, `admin_trf`, `admin_capex`, `build_form`, `deletes`) VALUES
(1, 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_rights_actiontracker`
--

CREATE TABLE `meo_group_rights_actiontracker` (
  `id_grp` int(11) NOT NULL,
  `id_group_name` int(11) UNSIGNED NOT NULL,
  `view_vessels` int(11) NOT NULL,
  `view_departments` int(11) NOT NULL,
  `view_projects` int(11) NOT NULL,
  `add_modify_vd` int(11) NOT NULL,
  `delete_others_vd` int(11) NOT NULL,
  `add_modify_projects` int(11) NOT NULL,
  `delete_others_project` int(11) NOT NULL,
  `add_modify_pactivities` int(11) NOT NULL,
  `delete_others_pactivities` int(11) NOT NULL,
  `add_delete_restore_owncomments` int(11) NOT NULL,
  `delete_restore_otherscomments` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_rights_actiontracker`
--

INSERT INTO `meo_group_rights_actiontracker` (`id_grp`, `id_group_name`, `view_vessels`, `view_departments`, `view_projects`, `add_modify_vd`, `delete_others_vd`, `add_modify_projects`, `delete_others_project`, `add_modify_pactivities`, `delete_others_pactivities`, `add_delete_restore_owncomments`, `delete_restore_otherscomments`, `status`, `added_on`, `updated_on`, `updated_by`) VALUES
(107, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 'active', '2017-06-01 12:45:12', '2017-06-01 12:45:12', 'admin'),
(109, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 'inactive', '2017-05-31 16:32:08', '2017-06-05 17:36:47', 'admin'),
(110, 3, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'inactive', '2017-05-31 16:31:27', '2017-06-08 10:36:09', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_rights_mailroom_entity`
--

CREATE TABLE `meo_group_rights_mailroom_entity` (
  `id_rights` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(160) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_rights_mailroom_entity`
--

INSERT INTO `meo_group_rights_mailroom_entity` (`id_rights`, `id_group`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`) VALUES
(1, 1, 'inactive', '2017-05-30 12:08:39', 'ADMIN', '2017-05-30 17:38:55', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_rights_raci`
--

CREATE TABLE `meo_group_rights_raci` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) UNSIGNED NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `add_process` int(11) NOT NULL DEFAULT '0',
  `edit_process` int(11) NOT NULL DEFAULT '0',
  `delete_process` int(11) NOT NULL DEFAULT '0',
  `add_activity` int(11) NOT NULL DEFAULT '0',
  `edit_activity` int(11) NOT NULL DEFAULT '0',
  `delete_activity` int(11) NOT NULL DEFAULT '0',
  `comment_log` int(11) NOT NULL DEFAULT '0',
  `delete_others_comment` int(11) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_rights_raci`
--

INSERT INTO `meo_group_rights_raci` (`id`, `id_group_name`, `view`, `add_process`, `edit_process`, `delete_process`, `add_activity`, `edit_activity`, `delete_activity`, `comment_log`, `delete_others_comment`, `status`, `added_on`, `updated_on`, `updated_by`) VALUES
(2, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'active', '2017-06-06 01:43:17', '2017-06-06 07:13:17', 'admin'),
(3, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'active', '2017-06-07 09:33:22', '2017-06-07 15:03:22', 'admin'),
(7, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 'inactive', '2017-06-08 05:01:43', '2017-06-08 10:31:43', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_section_access`
--

CREATE TABLE `meo_group_section_access` (
  `id_admin_access` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_group_section_access`
--

INSERT INTO `meo_group_section_access` (`id_admin_access`, `id_group`, `status`, `added_on`, `updated_on`) VALUES
(4, 3, 'active', '2017-01-06 09:49:30', '2017-02-19 10:50:18'),
(6, 1, 'active', '2017-02-18 06:32:24', '2017-02-19 10:49:57'),
(7, 2, 'active', '2017-02-18 06:35:53', '2017-03-08 11:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `meo_ims_list_data`
--

CREATE TABLE `meo_ims_list_data` (
  `id_list` int(11) UNSIGNED NOT NULL,
  `doc_id` varchar(255) DEFAULT NULL,
  `doc_number` varchar(255) DEFAULT NULL,
  `doc_title` varchar(255) DEFAULT NULL,
  `ims_level` int(11) NOT NULL,
  `id_department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_mailroom_build_form_entity`
--

CREATE TABLE `meo_mailroom_build_form_entity` (
  `id_build_form` int(11) UNSIGNED NOT NULL,
  `form_title` varchar(180) NOT NULL,
  `form_description` text NOT NULL,
  `id_department` int(11) UNSIGNED NOT NULL,
  `form_type` enum('new','travel_request','capex_request') NOT NULL DEFAULT 'new',
  `status_form` enum('draft','submit') NOT NULL DEFAULT 'draft',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(180) NOT NULL,
  `added_by_id` int(11) UNSIGNED NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(180) NOT NULL,
  `updated_by_id` int(11) UNSIGNED NOT NULL,
  `attached_form` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_mailroom_request_ids`
--

CREATE TABLE `meo_mailroom_request_ids` (
  `id_mailroom_request` int(11) NOT NULL,
  `request_type` enum('capex','claims','travel') DEFAULT 'capex',
  `request_id` int(11) NOT NULL,
  `request_label` varchar(300) NOT NULL,
  `label_count` int(5) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_main_vessel_type_entity`
--

CREATE TABLE `meo_main_vessel_type_entity` (
  `id_vessel_type` int(11) UNSIGNED NOT NULL,
  `type_title` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_main_vessel_type_entity`
--

INSERT INTO `meo_main_vessel_type_entity` (`id_vessel_type`, `type_title`, `status`, `created_on`, `updated_on`) VALUES
(1, 'NEAR SHORE VESSELS', 'Active', '2017-01-06 11:20:31', '2017-01-16 12:55:55'),
(2, 'OFFSHORE SUPPORT VESSELS', 'Active', '2017-01-06 11:20:46', '2017-01-13 11:11:34'),
(3, 'CREWBOATS', 'Active', '2017-01-06 11:20:53', '2017-01-13 11:11:42'),
(5, 'BARGES', 'Active', '2017-01-12 19:12:00', '0000-00-00 00:00:00'),
(6, 'DP/ SUBSEA FLEET', 'Active', '2017-01-15 23:13:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_menu_entity`
--

CREATE TABLE `meo_menu_entity` (
  `id_menu` int(10) UNSIGNED NOT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `menu_order` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `menu_type` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meo_menu_entity`
--

INSERT INTO `meo_menu_entity` (`id_menu`, `menu_title`, `url`, `status`, `menu_order`, `pid`, `menu_type`) VALUES
(1, 'Dashboard', 'user-dashboard', 'inactive', 0, 0, 'user'),
(2, 'Contacts', 'shore-personnel', 'active', 1, 0, 'user'),
(3, 'Documents', 'ims', 'active', 2, 0, 'user'),
(4, 'Mailroom', 'my-summary', 'active', 3, 0, 'user'),
(5, 'Action Tracker', 'vessels', 'active', 4, 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `meo_meoUsers_entity`
--

CREATE TABLE `meo_meoUsers_entity` (
  `id_meo_user` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `main_emp_id` varchar(255) DEFAULT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `user_full_name` varchar(255) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `staff_client` enum('staff','client') NOT NULL,
  `designation` varchar(150) NOT NULL,
  `domain_id` varchar(255) DEFAULT NULL,
  `directory` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `status_reason` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile1` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `desk_phone` varchar(255) DEFAULT NULL,
  `extension` int(11) NOT NULL,
  `skype_id` varchar(255) DEFAULT NULL,
  `notes` text NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `is_verified` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_meoUsers_entity`
--

INSERT INTO `meo_meoUsers_entity` (`id_meo_user`, `user_id`, `main_emp_id`, `emp_id`, `user_full_name`, `user_email`, `staff_client`, `designation`, `domain_id`, `directory`, `status`, `status_reason`, `image`, `mobile1`, `mobile2`, `desk_phone`, `extension`, `skype_id`, `notes`, `expiry_date`, `added_on`, `updated_on`, `updated_by`, `is_verified`) VALUES
(11, 'E0003', 'E0003', '20', 'ONG CHEE WEE', 'CHEEWEE.ONG@MEOGROUP.COM', 'staff', 'PROJECT MANAGER', NULL, NULL, 'active', '', NULL, '+6594899378', '', '+6568296198', 217, 'ONG.CHEE.WEE', '', '0000-00-00', '2017-01-15 21:58:29', '2017-01-24 20:44:19', 'ADMIN', 'no'),
(12, 'E0007', 'E0007', '21', 'RHYAN DELOS REYES SABRIDO', 'RHYAN.SABRIDO@MEOGROUP.COM', 'staff', 'ASST. MANAGER - PROJECT', 'SDGFHG', 'SDFGHGD', 'active', '', NULL, '+6591079243 ', '', '+6568296112', 305, 'RHYAN.SABRIDO', '', '0000-00-00', '2017-01-15 22:02:30', '2017-02-22 12:45:59', 'ADMIN', 'no'),
(13, 'E0008', 'E0008', '22', 'COLIN DAVID TREWHELLA', 'COLIN.TREWHELLA@MEOGROUP.COM', 'staff', 'GM - OPERATIONS', NULL, NULL, 'active', '', NULL, '+6591083046', '', '+6568296192', 546, 'COLTRE1', '', '0000-00-00', '2017-01-15 22:11:58', '2017-01-24 20:44:45', 'ADMIN', 'no'),
(14, 'E0001', 'E0001', '19', 'MARK PETER VAN DER MOLEN', 'MARK.VANDERMOLEN@MEOGROUP.COM', 'staff', 'GM - COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6594899377', '', '+6568296196', 550, 'MARKVANDERMOLEN.WORK', '', '0000-00-00', '2017-01-15 22:13:31', '2017-01-24 20:44:55', 'ADMIN', 'no'),
(15, 'E0010', 'E0010', '23', 'NG WEI LING CANDICE', 'CANDICE.NG@MEOGROUP.COM', 'staff', 'GENERAL MANAGER - COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6581396428', '', '+6568296185', 543, 'CANDICENGWL', '', '0000-00-00', '2017-01-15 22:14:35', '2017-01-24 20:45:05', 'ADMIN', 'no'),
(16, 'E0013', 'E0013', '24', 'CLAUDIA IGLESIAS CARRICHES', 'CLAUDIA.IGLESIAS@MEOGROUP.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6590624095', '', '+6568296124', 104, '', '', '0000-00-00', '2017-01-15 22:16:50', '2017-01-24 20:45:15', 'ADMIN', 'no'),
(17, 'E0016', 'E0016', '26', 'MARICAR ZOLETA MANLAPAZ', 'MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM', 'staff', 'DOCUMENT CONTROLLER', NULL, NULL, 'active', '', NULL, '+6581130605', '', '+6568296033', 553, 'MARICAR ZOLETA1', '', '0000-00-00', '2017-01-15 22:20:35', '2017-01-24 20:45:23', 'ADMIN', 'no'),
(18, 'E0022', 'E0022', '28', 'SUNIL SINGH', 'SUNIL.SINGH@MEOGROUP.COM', 'staff', 'MARINE OPERATIONS MANAGER', NULL, NULL, 'active', '', NULL, '+6581230486', '', '+6568296197', 545, 'SINGHSUNIL4', '', '0000-00-00', '2017-01-15 22:21:55', '2017-01-24 20:46:04', 'ADMIN', 'no'),
(19, 'E0026', 'E0026', '30', 'NATALIE WEICHMANN', 'NATALIE.WEICHMANN@MEOGROUP.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '', '', '+6568296168', 503, 'NATALIE.WEICHMANN', '', '0000-00-00', '2017-01-15 22:23:04', '2017-01-24 20:45:49', 'ADMIN', 'no'),
(20, 'E0031', 'E0031', '33', 'GOH TING TING', 'TINGTING.GOH@MEOGROUP.COM', 'staff', 'JUNIOR SECRETARY', NULL, NULL, 'active', '', NULL, '', '', '+6568299887', 107, '', '', '0000-00-00', '2017-01-15 22:27:20', '2017-01-24 20:46:15', 'ADMIN', 'no'),
(21, 'E0032', 'E0032', '34', 'CAHYA AWAL', 'CAHYA.AWAL@MEOGROUP.COM', 'staff', 'SENIOR COST CONTROLLER', NULL, NULL, 'active', '', NULL, '+6597728018', '', '+6568296149', 510, 'CAHYA.AWAL', '', '0000-00-00', '2017-01-15 22:28:39', '2017-01-24 20:46:25', 'ADMIN', 'no'),
(22, 'E0033', 'E0033', '35', 'EUGENE TEO YU-CHNG', 'EUGENE.TEO@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER - COMMERCIAL', NULL, NULL, 'active', '', NULL, '', '', '+6568296188', 537, '', '', '0000-00-00', '2017-01-15 22:29:57', '2017-01-19 16:56:57', 'ADMIN', 'no'),
(23, 'S00001', 'S00001', '121', 'TAN HEE HUA', 'HEE-HUA.TAN@MEOGROUP.COM', 'staff', 'TECHNICAL MANAGER (CREWBOAT)', NULL, NULL, 'active', '', NULL, '+6590095643', '', '+6568296111', 216, '', '', '0000-00-00', '2017-01-15 22:31:14', '2017-01-19 15:28:00', 'ADMIN', 'no'),
(24, 'S00004', 'S00004', '123', 'POH CHING HOON', 'CHING-HOON.POH@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296165', 518, 'CHINGHOON88', '', '0000-00-00', '2017-01-15 22:33:33', '2017-01-19 16:10:00', 'ADMIN', 'no'),
(25, 'S00036', 'S00036', '128', 'JOYCELYN WONG PUI YEE', 'JOYCELYN.WONG@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296166', 635, '', '', '0000-00-00', '2017-01-15 22:35:31', '2017-01-19 16:18:47', 'ADMIN', 'no'),
(26, 'S00058', 'S00058', '129', 'MOHAMED ARIS BIN MUSA', 'MOHD.ARIS@MEOGROUP.COM', 'staff', 'SENIOR CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6591019562', '', '+6568296103', 610, '', '', '0000-00-00', '2017-01-15 22:37:21', '2017-01-19 15:36:48', 'ADMIN', 'no'),
(27, 'S00110', 'S00110', '132', 'JANE ALLAN', 'JANE.ALLAN@MEOGROUP.COM', 'staff', 'GENERAL COUNSEL – GROUP', NULL, NULL, 'active', '', NULL, '+6594888633', '', '+6568296130', 221, 'JANE.ALLAN.MEO', '', '0000-00-00', '2017-01-15 22:40:55', '2017-01-19 16:30:24', 'ADMIN', 'no'),
(28, 'S00112', 'S00112', '133', 'ADAM RALEIGH CLAYTON', 'ADAM.CLAYTON@MEOGROUP.COM', 'staff', 'HEAD OF BUSINESS UNIT – SVS', NULL, NULL, 'active', '', NULL, '+6582985155', '', '+6568296122', 204, 'ADAMCLAYTO', '', '0000-00-00', '2017-01-15 22:44:59', '2017-01-19 16:40:29', 'ADMIN', 'no'),
(29, 'S00134', 'S00134', '135', 'HONG SHUMIN', 'SHUMIN.HONG@MEOGROUP.COM', 'staff', 'REGIONAL FINANCE BUSINESS PARTNERSHIP MANAGER, THAI-ASEAN AND SV', NULL, NULL, 'active', '', NULL, '+6591803063', '', '+6568296159', 519, 'SHUMIN.MICLYN', '', '0000-00-00', '2017-01-15 22:48:42', '2017-01-19 15:49:18', 'ADMIN', 'no'),
(30, 'S00150', 'S00150', '137', 'NORAZLINA BINTE SANIN', 'NORAZLINA.SANIN@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6591186005', '', '+6568296135', 613, '', '', '0000-00-00', '2017-01-15 22:50:03', '2017-01-19 15:37:24', 'ADMIN', 'no'),
(31, 'S00157', 'S00157', '138', 'LINA BINTE SOHO', 'LINA.SOHO@MEOGROUP.COM', 'staff', 'MANAGER - OPERATIONS', NULL, NULL, 'active', '', NULL, '+6594899322', '', '+6568296147', 527, 'LINASOHO.MEO', '', '0000-00-00', '2017-01-15 22:51:24', '2017-01-19 16:46:16', 'ADMIN', 'no'),
(32, '963', '963', '7', 'ARINDAM1', 'BHARATRAJ+11@SINGSYS.COM', 'staff', 'PM', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 05:22:55', '0000-00-00 00:00:00', '', 'no'),
(33, 'S00168', 'S00168', '141', 'LAI CHEE YONG', 'CHEEYONG.LAI@MEOGROUP.COM', 'staff', 'SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6597344022', '', '+6568296143', 617, 'CHEEYONG.LAI@OUTLOOK.COM', '', '0000-00-00', '2017-01-16 19:37:47', '2017-01-19 15:20:49', 'ADMIN', 'no'),
(34, 'S00178', 'S00178', '142', 'DOYLE CHAVEZ FIGUERAS', 'DOYLE.FIGUERAS@MEOGROUP.COM', 'staff', 'NAVAL ARCHITECT', NULL, NULL, 'active', '', NULL, '+6582011486', '', '+6568296142', 524, 'DOYLE.FIGUERAS', '', '0000-00-00', '2017-01-16 19:38:35', '2017-01-19 15:29:40', 'ADMIN', 'no'),
(35, 'S00189', 'S00189', '144', 'AU PEI KWAN', 'PEIKWAN.AU@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296160', 633, 'PEIKWAN.AU', '', '0000-00-00', '2017-01-16 19:40:15', '2017-01-19 16:19:21', 'ADMIN', 'no'),
(36, 'S00193', 'S00193', '145', 'LIM BENG HWEE', 'BENGHWEE.LIM@MEOGROUP.COM', 'staff', 'MANAGER, ENTERPRISE RISK MANAGEMENT', NULL, NULL, 'active', '', NULL, '+6597724652', '', '+6568296029', 540, 'BENGHWEELIM', '', '0000-00-00', '2017-01-16 19:42:03', '2017-01-19 16:34:36', 'ADMIN', 'no'),
(37, 'S00197', 'S00197', '146', 'CHRISTOPHER WHITE', 'CHRISTOPHER.WHITE@MEOGROUP.COM', 'staff', 'ACTING GROUP FINANCIAL CONTROLLER', NULL, NULL, 'active', '', NULL, ' +6598366788 ', '', '+6568296032', 551, 'CHRIS.WHITE.MEO', '', '0000-00-00', '2017-01-16 19:42:37', '2017-01-19 15:48:28', 'ADMIN', 'no'),
(38, 'S00203', 'S00203', '147', 'IAN JESTER ERAS REYES', 'IAN.REYES@MEOGROUP.COM', 'staff', 'NAVAL ARCHITECT', NULL, NULL, 'active', '', NULL, '+6591079242', '', '+6568296139', 209, 'IAN_JESTER_REYES', '', '0000-00-00', '2017-01-16 19:43:26', '2017-01-19 15:33:16', 'ADMIN', 'no'),
(39, 'S00234', 'S00234', '152', 'ONG PEI LING, WENDY', 'WENDY.ONG@MEOGROUP.COM', 'staff', 'CREW PAYROLL EXECUTIVE - HR', NULL, NULL, 'active', '', NULL, '', '', '+6568296132', 615, '', '', '0000-00-00', '2017-01-16 19:45:55', '2017-01-19 15:36:07', 'ADMIN', 'no'),
(40, 'S00239', 'S00239', '153', 'VERNON LOW CHUN HWEE', 'VERNON.LOW@MEOGROUP.COM', 'staff', 'MANAGER - HSQE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 19:46:35', '0000-00-00 00:00:00', '', 'no'),
(41, 'S00240', 'S00240', '154', 'MUHAMMAD ADDY FHAIRUZ FERNANDEZ', 'ADDY.FERNANDEZ@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, '+6598006304', '', '+6568296127', 222, 'FHAIRUZ.FERNANDEZ', '', '0000-00-00', '2017-01-16 19:48:29', '2017-01-19 16:47:06', 'ADMIN', 'no'),
(42, 'S00247', 'S00247', '157', 'CHEN YING LEI', 'CHEN.YINGLEI@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE - CREWING', NULL, NULL, 'active', '', NULL, '+6581134569', '', '+6568296105', 609, '', '', '0000-00-00', '2017-01-16 19:50:57', '2017-01-19 15:38:15', 'ADMIN', 'no'),
(43, 'S00269', 'S00269', '160', 'DEREK LO SHEN LEONG', 'DEREK.LO@MEOGROUP.COM', 'staff', 'REGIONAL FINANCE MANAGER ( MIDDLE EAST) - FINANCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 19:52:23', '0000-00-00 00:00:00', '', 'no'),
(44, 'S00278', 'S00278', '161', 'ONG BOON SENG', 'BOONSENG.ONG@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER – HSQE', NULL, NULL, 'active', '', NULL, '+6590087537', '', '+6568299879', 116, '', '', '0000-00-00', '2017-01-16 19:54:36', '2017-01-19 15:16:54', 'ADMIN', 'no'),
(45, 'S00283', 'S00283', '163', 'FOONG LAI LENG, LINDY', 'LINDY.FOONG@MEOGROUP.COM', 'staff', 'EXECUTIVE - DOCUMENT CONTROL HSQE', NULL, NULL, 'active', '', NULL, '', '', '+6568296136', 513, 'LINDY.FOONG', '', '0000-00-00', '2017-01-16 20:10:58', '2017-01-19 15:18:16', 'ADMIN', 'no'),
(46, 'S00291', 'S00291', '165', 'WEE HANQUN', 'HANQUN.WEE@MEOGROUP.COM', 'staff', 'LEGAL COUNSEL - LEGAL', NULL, NULL, 'active', '', NULL, '+6597727705', '', '+6568299882', 223, 'WEE.HANQUN', '', '0000-00-00', '2017-01-16 20:15:58', '2017-01-19 16:32:36', 'ADMIN', 'no'),
(47, 'S00296', 'S00296', '166', 'LALITHA NAIR', 'LALITHA.NAIR@MEOROUP.COM', 'staff', 'CERDIT CONTROLLER - FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296031', 302, '', '', '0000-00-00', '2017-01-16 20:18:17', '2017-01-19 16:11:01', 'ADMIN', 'no'),
(48, 'S00317', 'S00317', '170', 'BURHANUDDIN BIN MOHAMAD', 'BURHAN.MOHD@MEOGROUP.COM', 'staff', 'OPERATIONS SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, '+6598375901', '', '+6568296100', 108, '', '', '0000-00-00', '2017-01-16 20:20:58', '2017-01-19 16:50:11', 'ADMIN', 'no'),
(49, 'S00321', 'S00321', '172', 'VENKATRAMAN SHESHASHAYEE', 'VSHESH@MEOGROUP.COM', 'staff', 'CHIEF EXECUTIVE OFFICER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170126092359.png', '+6583993157', '', '+6568299877', 113, 'VSHESHASHAYEE', '', '0000-00-00', '2017-01-16 20:22:52', '2017-01-26 09:24:03', 'ADMIN', 'no'),
(50, 'S00322', 'S00322', '173', 'CHONG SIN KEONG', 'SINKEONG.CHONG@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, '+6597720958', '', '+6568299884', 213, 'SKCHONG33', '', '0000-00-00', '2017-01-16 20:23:32', '2017-01-19 16:48:09', 'ADMIN', 'no'),
(51, 'S00327', 'S00327', '174', 'ANKUSH AGARWAL', 'ANKUSH.AGARWAL@MEOGROUP.COM', 'staff', 'DEPUTY HEAD - ASEAN', NULL, NULL, 'active', '', NULL, '+6597881889', '', '+6568296144', 504, 'ANKUSHAGARWAL1111', '', '0000-00-00', '2017-01-16 20:27:44', '2017-02-03 10:03:37', 'ADMIN', 'no'),
(52, 'S00328', 'S00328', '175', 'LIM CHEE HOE', 'CHEEHOE.LIM@MEOGROUP.COM', 'staff', 'PROGRAMMER - FLEET PLANNED MAINTENANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296100', 622, 'MEO_CHEEHOE.LIM', '', '0000-00-00', '2017-01-16 20:28:29', '2017-01-19 15:27:16', 'ADMIN', 'no'),
(53, 'S00329', 'S00329', '176', 'NORRASHIDAH BINTE MOHAMED', 'NORRASHIDAH.MOHAMED@MEOGROUP.COM', 'staff', 'RECEPTIONIST CUM ADMIN ASSISTANT - ADMIN', NULL, NULL, 'active', '', NULL, '', '', '+6568296100', 555, 'NORRA.MOHD', '', '0000-00-00', '2017-01-16 20:29:35', '2017-01-19 16:35:48', 'ADMIN', 'no'),
(54, 'S00339', 'S00339', '182', 'SATHISVARAN CHIDAMBARAM', 'SATHIS.CHIDAMBARAM@MEOGROUP.COM', 'staff', 'IT EXECUTIVE - IT', NULL, NULL, 'active', '', NULL, '+6592703082', '', '+6568299874', 632, 'SATHIS.CHIDAMBARAM', '', '0000-00-00', '2017-01-16 20:31:14', '2017-01-19 17:11:02', 'ADMIN', 'no'),
(55, 'S00341', 'S00341', '183', 'XIE ZIHUI', 'ZIHUI.XIE@MEOGROUP.COM', 'staff', 'GL ACCOUNTANT - FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296163', 516, '', '', '0000-00-00', '2017-01-16 20:32:32', '2017-01-19 15:50:55', 'ADMIN', 'no'),
(56, 'S00343', 'S00343', '184', 'INDRANIL MAJUMDAR', 'INDRANIL.MAJUMDAR@MEOGROUP.COM', 'staff', 'ACTING CHIEF OPERATING OFFICER (COO)', NULL, NULL, 'active', '', NULL, '+6591836988', '', '+6568296137', 381, '', '', '0000-00-00', '2017-01-16 20:33:06', '2017-01-19 15:01:07', 'ADMIN', 'no'),
(57, 'S00349', 'S00349', '187', 'MILI  VERMA', 'MILI.VERMA@MEOGROUP.COM', 'staff', 'GROUP COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '', '', '+6568296020', 206, '', '', '0000-00-00', '2017-01-16 20:39:22', '2017-02-03 10:04:41', 'ADMIN', 'no'),
(58, 'S00357', 'S00357', '190', 'CAREEN CHENG ', 'CAREEN.CHENG@MEOGROUP.COM', 'staff', 'ASSISTANT HR MANAGER - HR', NULL, NULL, 'active', '', NULL, '+6596269053', '', '+6568299870', 218, '', '', '0000-00-00', '2017-01-16 20:41:15', '2017-01-19 15:12:45', 'ADMIN', 'no'),
(60, 'S00358', 'S00358', '191', 'REKHA NANDWANI', 'REKHA.NANDWANI@MEOGROUP.COM', 'staff', 'KNOWLEDGE ANALYST', NULL, NULL, 'active', '', '', '', '', '+6568296157', 511, '', '', '0000-00-00', '2017-01-16 20:43:51', '2017-02-03 12:40:57', 'ADMIN', 'no'),
(61, 'S00362', 'S00362', '194', 'SHREYAS CHANDRAKANTHA RAO', 'SHREYAS.RAO@MEOGROUP.COM', 'staff', 'MANAGEMENT TRAINEE - KNOWLEDGE MGMT ', NULL, NULL, 'active', '', NULL, '', '', '+6568296113', 174, '', '', '0000-00-00', '2017-01-16 20:47:30', '2017-01-19 16:39:29', 'ADMIN', 'no'),
(62, 'S00363', 'S00363', '195', 'VERA ONG ', 'VERA.ONG@MEOGROUP.COM', 'staff', 'ASSISTANT HR MANAGER - TALENT MANAGEMENT', NULL, NULL, 'active', '', NULL, '+6596269116', '', '+6568296026', 388, '', '', '0000-00-00', '2017-01-16 22:12:01', '2017-01-19 15:14:37', 'ADMIN', 'no'),
(63, 'S00365', 'S00365', '196', 'TAN LEA JOO', 'LEA.JOO@MEOGROUP.COM', 'staff', 'FINANCE MANAGER - ASEAN  (ASEAN FINANCE BIZ PARTNERSHIP)', NULL, NULL, 'active', '', NULL, '', '', '+6568296014', 508, 'LEA.JOO', '', '0000-00-00', '2017-01-16 22:12:57', '2017-01-19 15:50:25', 'ADMIN', 'no'),
(64, 'S00366', 'S00366', '197', 'SANDRA  JERNIGAN', 'SANDRA.JERNIGAN@MEOGROUP.COM', 'staff', 'ASEAN BUSINESS UNIT, ASSISTANT MANAGER - CREWING', NULL, NULL, 'active', '', NULL, '+6596269032', '', '+6568296012', 608, '', '', '0000-00-00', '2017-01-16 22:13:49', '2017-01-19 15:35:40', 'ADMIN', 'no'),
(65, 'S00367', 'S00367', '198', 'LIM HUI SHAN', 'HUISHAN.LIM@MEOGROUP.COM', 'staff', 'KNOWLEDGE CONTROLLER - KMC', NULL, NULL, 'active', '', NULL, '', '', '+6568296177', 533, '', '', '0000-00-00', '2017-01-16 22:14:55', '2017-01-19 15:13:23', 'ADMIN', 'no'),
(66, 'S00368', 'S00368', '199', 'NICHOLAS SEET', 'NICHOLAS.SEET@MEOGROUP.COM', 'staff', 'COMMERCIAL MANAGER - ASEAN BU', NULL, NULL, 'active', '', NULL, '+6596788005', '', '+6568296109', 176, '', '', '0000-00-00', '2017-01-16 22:20:13', '2017-02-03 10:04:25', 'ADMIN', 'no'),
(67, 'S00373', 'S00373', '200', 'LIM LI JU', 'LIJU.LIM@MEOGROUP.COM', 'staff', 'GL  ACCOUNTANT - FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296110', 165, '', '', '0000-00-00', '2017-01-16 22:21:12', '2017-01-19 15:51:24', 'ADMIN', 'no'),
(68, 'S00375', 'S00375', '201', 'HEMA  MANOHARAN', 'HEMA.MANOHARAN@MEOGROUP.COM', 'staff', 'AR EXECUTIVE - GROUP FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296018', 178, '', '', '0000-00-00', '2017-01-16 22:21:56', '2017-01-19 16:11:47', 'ADMIN', 'no'),
(69, 'S00377', 'S00377', '202', ' ARNOLD SILAO', 'ARNOLD.SILAO@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE  - SCM', NULL, NULL, 'active', '', NULL, '', '', '+6568296119', 208, '', '', '0000-00-00', '2017-01-16 22:23:04', '2017-01-19 15:43:48', 'ADMIN', 'no'),
(70, 'S00378', 'S00378', '203', 'AKAASH GANESH', 'AKAASH.GANESH@MEOGROUP.COM', 'staff', 'MANAGEMENT ASSOCIATE - TECHNICAL & OPERATIONS', NULL, NULL, 'active', '', NULL, '', '', '+6568296189', 383, '', '', '0000-00-00', '2017-01-16 22:23:40', '2017-01-19 15:30:12', 'ADMIN', 'no'),
(71, 'S00379', 'S00379', '204', 'LEE WEI JIE', 'WEIJIE.LEE@MEOGROUP.COM', 'staff', 'MANAGEMENT ASSOCIATE - COMMERCIAL', NULL, NULL, 'active', '', NULL, '', '', '+6568296021', 548, '', '', '0000-00-00', '2017-01-16 22:29:43', '2017-01-19 16:58:17', 'ADMIN', 'no'),
(72, 'S00382', 'S00382', '206', 'ABHIJIT DESHMUKH', 'ABHIJIT.DESHMUKH@MEOGROUP.COM', 'staff', 'HEAD - GROUP SCM', NULL, NULL, 'active', '', NULL, '+6583400650', '', '+6568296173', 523, 'DESH70', '', '0000-00-00', '2017-01-16 22:31:02', '2017-01-19 15:41:36', 'ADMIN', 'no'),
(73, 'S00383', 'S00383', '207', 'SOPHIE TAN JIA HUI ', 'SOPHIE.TAN@MEOGROUP.COM', 'staff', 'SENIOR HR EXECUTIVE - TALENT MANAGEMENT', NULL, NULL, 'active', '', NULL, '', '', '+6568296171', 531, '', '', '0000-00-00', '2017-01-16 22:31:44', '2017-01-19 15:15:01', 'ADMIN', 'no'),
(74, 'S00384', 'S00384', '208', 'HUZAIFA', 'HUZAIFA@MEOGROUP.COM', 'staff', 'SVS BUSINESS UNIT, MANAGER - CREWING', NULL, NULL, 'active', '', NULL, '+6591187437', '', '+6568296019', 620, '', '', '0000-00-00', '2017-01-16 22:32:20', '2017-01-19 15:35:10', 'ADMIN', 'no'),
(75, 'S00387', 'S00387', '211', 'LEE SHIN HUAY', 'SHINHUAY.LEE@MEOGROUP.COM', 'staff', 'TAX MANAGER - GROUP LEGAL', NULL, NULL, 'active', '', NULL, '', '', '+6568296190', 525, '', '', '0000-00-00', '2017-01-16 22:39:26', '2017-01-19 16:31:27', 'ADMIN', 'no'),
(76, 'S00389', 'S00389', '213', 'SANKET ASHOK SHUKLA', 'SANKET.SHUKLA@MEOGROUP.COM', 'staff', 'MANAGER - HSQE', NULL, NULL, 'active', '', NULL, '+6596267294', '', '+6568296191', 539, '', '', '0000-00-00', '2017-01-16 22:41:19', '2017-01-19 15:19:04', 'ADMIN', 'no'),
(77, 'S00390', 'S00390', '214', 'KEN LIVINGSTONE', 'KEN.LIVINGSTONE@MEOGROUP.COM', 'staff', 'SENIOR MANAGER – TECHNICAL AND OPERATIONS, SVS', NULL, NULL, 'active', '', NULL, '+6596619355', '', '+6568299880', 115, '', '', '0000-00-00', '2017-01-16 22:42:30', '2017-01-19 16:45:17', 'ADMIN', 'no'),
(78, 'S00392', 'S00392', '215', 'JOYCE LIM ', 'JOYCE.LIM@MEOGROUP.COM', 'staff', 'SENIOR PURCHASING EXECUTIVE - SCM', NULL, NULL, 'active', '', NULL, '', '', '+6568296028', 106, '', '', '0000-00-00', '2017-01-16 22:43:09', '2017-01-19 15:42:22', 'ADMIN', 'no'),
(79, 'S00393', 'S00393', '216', 'CHAN HUI PENG', 'HUIPENG.CHAN@MEOGROUP.COM', 'staff', 'TEAM LEAD (GENERAL LEDGER) - FINANCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 22:43:51', '0000-00-00 00:00:00', '', 'no'),
(80, 'S00394', 'S00394', '217', 'LEONG SOOK MEI', 'SOOKMEI.LEONG@MEOGROUP.COM', 'staff', 'ACCOUNTANT  (CONSOLIDATION & REPORTING) - FINANCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 22:45:17', '0000-00-00 00:00:00', '', 'no'),
(81, 'S00395', 'S00395', '218', 'FARRUKH SHOAIB QURESHI', 'FARRUKH.QURESHI@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 22:46:04', '0000-00-00 00:00:00', '', 'no'),
(82, 'T00078', 'T00078', '252', 'JYNETTE LOWIS ', 'JYNETTE.LOWIS@MEOGROUP.COM', 'staff', 'DATA ADMINISTRATOR - KMC', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 22:46:47', '0000-00-00 00:00:00', '', 'no'),
(83, 'S00026', 'S00026', '127', 'ALI HUSSAIN', 'ALI.HUSSAIN@MEOGROUP.COM', 'staff', 'ASST. OPERATIONS MANAGER - OPS', NULL, NULL, 'active', '', NULL, '+6583220197', '', '+6568296114', 507, 'ALIHUSSAIN3', '', '0000-00-00', '2017-01-16 22:48:13', '2017-01-19 15:29:12', 'ADMIN', 'no'),
(84, 'S00316', 'S00316', '169', 'MATHANRAJ VEERASAMY', 'MATHANRAJ.VEERASAMY@MEOGROUP.COM', 'staff', 'SAP BUSINESS ANALYST - IT', NULL, NULL, 'active', '', NULL, '', '', '+6568296179', 640, 'YEERA1231', '', '0000-00-00', '2017-01-16 22:49:12', '2017-01-19 17:12:10', 'ADMIN', 'no'),
(85, 'S00319', 'S00319', '171', 'KISHORE SEGAR', 'KISHORE.SEGAR@MEOGROUP.COM', 'staff', 'SAP, ABAP DEVELOPER - IT', NULL, NULL, 'active', '', NULL, '', '', '+6568299886', 642, 'KISHOREARKS', '', '0000-00-00', '2017-01-16 22:51:31', '2017-01-19 17:11:31', 'ADMIN', 'no'),
(86, 'S00355', 'S00355', '189', 'BHARANI KUMAR PALAKODETI', 'KUMAR.PAL@MEOGROUP.COM', 'staff', 'MANAGER - TECHNICAL ( ASEAN)', NULL, NULL, 'active', '', NULL, '+6581284396', '', '+6568296154', 538, 'PB.KUMAR7', '', '0000-00-00', '2017-01-16 22:52:38', '2017-01-19 15:28:34', 'ADMIN', 'no'),
(87, 'S00352', 'S00352', '188', 'CLAYTON HOSANNA', 'CLAYTON.HOSANNA@MEOGROUP.COM', 'staff', 'EXECUTIVE - FOTC', NULL, NULL, 'active', '', NULL, '+6597313357', '', '+6568296169', 177, '', '', '0000-00-00', '2017-01-16 22:53:25', '2017-01-19 15:17:45', 'ADMIN', 'no'),
(88, '1', '1', '1', 'DIEDERIK DE BOER', 'DIEDERIK.DEBOER@MEOGROUP.COM', 'staff', 'EXECUTIVE DIRECTOR', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170126092835.png', '+6596173794', '', '+6568296161', 502, 'DIEDERIK.DEBOER', '', '0000-00-00', '2017-01-16 23:20:11', '2017-01-26 09:28:38', 'ADMIN', 'no'),
(89, 'E0015', 'E0015', '25', 'CRIS RYAN INDIG ENTERA', 'CRIS.RYAN@MEOGROUP.COM', 'staff', 'SUPERINTENDENT - TECHNICAL', NULL, NULL, 'active', '', NULL, '+6590623987', '', '+6568299876', 105, 'CRIS.RYAN.WORK', '', '0000-00-00', '2017-01-16 23:27:23', '2017-01-19 17:01:16', 'ADMIN', 'no'),
(90, 'E0030', 'E0030', '32', 'JED IGOT', 'JED.IGOT@MEOGROUP.COM', 'staff', 'NAVAL ARCHITECT', NULL, NULL, 'active', '', NULL, '', '', '+6568296133', 212, 'JEDIGOT.WK', '', '0000-00-00', '2017-01-16 23:31:03', '2017-01-19 17:02:22', 'ADMIN', 'no'),
(92, 'S00290', 'S00290', '164', 'JOAN LAW', 'JOAN.LAW@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER, IT INFRASTRUCTURE', NULL, NULL, 'active', '', NULL, '+6596585538', '', '+6568299881', 636, '', '', '0000-00-00', '2017-01-16 23:49:38', '2017-01-19 17:10:05', 'ADMIN', 'no'),
(93, 'S00161', 'S00161', '139', 'EBEN TAN ', 'EBEN.TAN@MEOGROUP.COM', 'staff', 'HEAD - GROUP OPERATIONS', NULL, NULL, 'active', '', NULL, '+6594899368', '', '+6568296146', 225, 'EBEN.TAN', '', '0000-00-00', '2017-01-16 23:55:07', '2017-01-19 15:31:19', 'ADMIN', 'no'),
(94, 'S00331', 'S00331', '177', 'JOSHUA LAM KHIAN KOK', 'JOSHUA.LAM@MEOGROUP.COM', 'staff', 'SAP BUSINESS ANALYST', NULL, NULL, 'active', '', NULL, '', '', '+6568296158', 641, 'JLKK23', '', '0000-00-00', '2017-01-17 00:33:36', '2017-01-19 17:10:36', 'ADMIN', 'no'),
(95, 'S00334', 'S00334', '179', 'NYEIN CHAN AUNG', 'AUNG.NYEINCHAN@MEOGROUP.COM', 'staff', 'TECHNICAL MANAGER – ELECTRICAL & AUTOMATION', NULL, NULL, 'active', '', NULL, '+6590110420', '', '+6568296108', 202, 'AUNG.NYEINCHANAUNG', '', '0000-00-00', '2017-01-17 00:38:08', '2017-01-19 15:32:23', 'ADMIN', 'no'),
(96, 'S00337', 'S00337', '181', 'KELLY ZHANG JING', 'KELLY.ZHANG@MEOGROUP.COM', 'staff', 'TEAM LEAD - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296167', 517, 'KELLY.ZHANG163', '', '0000-00-00', '2017-01-17 00:46:07', '2017-01-19 16:22:06', 'ADMIN', 'no'),
(98, 'S00025', 'S00025', '126', 'RYAN JIANG', 'HAIBO.JIANG@MEOGROUP.COM', 'staff', 'MANAGER, FPM', NULL, NULL, 'active', '', NULL, '+6583180829', '', '+6568296013', 605, 'MEO.RYAN', '', '0000-00-00', '2017-01-17 00:51:45', '2017-01-19 15:20:22', 'ADMIN', 'no'),
(99, 'S00081', 'S00081', '130', 'ELAINE CHUAH', 'ELAINE.CHUAH@MEOGROUP.COM', 'staff', 'MANAGER - (ROVING FLEET)', NULL, NULL, 'active', '', NULL, '+6590086568', '', '+6568296129', 220, '', '', '0000-00-00', '2017-01-17 00:53:35', '2017-01-19 15:32:49', 'ADMIN', 'no'),
(100, 'S00204', 'S00204', '148', 'CHRISTINA LING', 'CHRISTINA.LING@MEOGROUP.COM', 'staff', 'SENIOR PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6581274373', '', '+6568296138', 380, 'CHRISTINA.LING81', '', '0000-00-00', '2017-01-17 00:56:13', '2017-01-19 15:45:22', 'ADMIN', 'no'),
(101, 'S00207', 'S00207', '150', 'ELIZABETH WONG', 'ELIZABETH.WONG@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER, CONSOLIDATION AND REPORTING', NULL, NULL, 'active', '', NULL, '', '', '+6568296035', 554, 'ELIZABETH.WONG.Q', '', '0000-00-00', '2017-01-17 01:00:01', '2017-01-19 16:21:02', 'ADMIN', 'no'),
(102, 'E0028', 'E0028', '31', 'SHAWN WONG', 'SHAWN.WONG@MEOGROUP.COM', 'staff', 'PROJECT COORDINATOR', NULL, NULL, 'active', '', NULL, '+6583389869', '', '+6568296011', 304, '', '', '0000-00-00', '2017-01-17 01:06:08', '2017-01-19 17:03:27', 'ADMIN', 'no'),
(103, 'S00211', 'S00211', '151', 'ALEZS WONG', 'ALEZS.WONG@MEOGROUP.COM', 'staff', 'HEAD - GROUP CREWING ', NULL, NULL, 'active', '', NULL, '+6584985883', '', '+6568296038', 601, 'ALEZS.WONG', '', '0000-00-00', '2017-01-17 01:07:35', '2017-01-19 15:38:41', 'ADMIN', 'no'),
(104, 'S00007', 'S00007', '124', 'JANICE TENG ', 'JANICE.TENG@MEOGROUP.COM', 'staff', 'TEAM LEAD  - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296151', 631, 'MEO.JANICETENG', '', '0000-00-00', '2017-01-17 01:20:05', '2017-01-19 16:27:07', 'ADMIN', 'no'),
(105, 'S00014', 'S00014', '125', 'DARREN ANG', 'DARREN.ANG@MEOGROUP.COM', 'staff', 'CHIEF MARKETING OFFICER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170126092653.png', '+6590095837', '', '+6568296118', 201, 'ANG.DARREN1', '', '0000-00-00', '2017-01-17 01:32:25', '2017-01-26 09:26:57', 'ADMIN', 'no'),
(106, '225', '225', '5', 'BHARATRAJ', 'BHARATRAJ+2@SINGSYS.COM', 'staff', 'QCE', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170203150056.png', '', '', '', 2147483647, '', '', '0000-00-00', '2017-01-17 01:34:07', '2017-02-03 16:30:09', 'ADMIN', 'no'),
(107, 'S00241', 'S00241', '155', 'ELAINE TAY', 'ELAINE.TAY@MEOGROUP.COM', 'staff', 'SENIOR ADMIN ASSISTANT', NULL, NULL, 'active', '', NULL, '', '', '+6568296025', 387, 'ELAINE.TAY32', '', '0000-00-00', '2017-01-17 01:38:11', '2017-01-19 16:37:03', 'ADMIN', 'no'),
(108, '296', '296', '6', 'BHARATRAJ MEO USER', 'BHARATRAJ@SINGSYS.COM', 'staff', 'QCE', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170204123043.png', '', '', '', 0, '', '', '0000-00-00', '2017-01-17 01:38:16', '2017-02-04 12:30:47', 'ADMIN', 'no'),
(109, 'S00297', 'S00297', '167', 'ALIS KHOO ', 'ALIS.KHOO@MEOGROUP.COM', 'staff', 'SENIOR EXECUTIVE - AR', NULL, NULL, 'active', '', NULL, '', '', '+6568296140', 226, 'KHOOALIS', '', '0000-00-00', '2017-01-17 01:40:25', '2017-01-19 16:23:55', 'ADMIN', 'no'),
(110, 'S00253', 'S00253', '158', 'KAMMY TAN', 'KAMMY.TAN@MEOGROUP.COM', 'staff', 'SENIOR PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6591543996', '', '+6568296170', 535, 'KAMMY.TAN12', '', '0000-00-00', '2017-01-17 01:42:34', '2017-01-19 15:46:18', 'ADMIN', 'no'),
(111, 'S00242', 'S00242', '156', 'JAMES LIM', 'JAMES.LIM@MEOGROUP.COM', 'staff', 'SCM MANAGER', NULL, NULL, 'active', '', NULL, '+6596346783', '', '+6568296115', 205, '', '', '0000-00-00', '2017-01-17 01:43:47', '2017-01-19 15:44:52', 'ADMIN', 'no'),
(112, 'S00263', 'S00263', '159', 'LEON LIM', 'LEON.LIM@MEOGROUP.COM', 'staff', 'ANALYST, FPM', NULL, NULL, 'active', '', NULL, '+6596783195', '', '+6568299871', 618, 'MEO_LEONLIM', '', '0000-00-00', '2017-01-17 01:45:58', '2017-01-19 15:21:39', 'ADMIN', 'no'),
(113, 'S00180', 'S00180', '143', 'LEWIS LOW', 'LEWIS.LOW@MEOGROUP.COM', 'staff', 'MANAGER, IT SAP & INFRASTRUCTURE', NULL, NULL, 'active', '', NULL, '+6582011563', '', '+6568299872', 603, 'LEWIS.LOW', '', '0000-00-00', '2017-01-17 01:47:49', '2017-01-19 17:09:38', 'ADMIN', 'no'),
(114, 'S00205', 'S00205', '149', 'KENNETH LEE', 'KENNETH.LEE@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '', '', '+6568296176', 530, '', '', '0000-00-00', '2017-01-17 01:48:57', '2017-01-19 15:46:53', 'ADMIN', 'no'),
(115, 'S00282', 'S00282', '162', 'GLADYS CHUA', 'GLADYS.CHUA@MEOGROUP.COM', 'staff', 'ACCOUNTANT - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296022', 306, 'GLADYS.CHUA99', '', '0000-00-00', '2017-01-17 01:50:10', '2017-01-19 16:23:22', 'ADMIN', 'no'),
(116, 'S00335', 'S00335', '180', 'BELINDA LI', 'BELINDA.LI@MEOGROUP.COM', 'staff', 'FINANCIAL ANALYST', NULL, NULL, 'active', '', NULL, '', '', '+6568296184', 557, 'LIBAOYI_BELINDA@HOTMAIL.COM', '', '0000-00-00', '2017-01-17 01:55:35', '2017-01-19 16:21:36', 'ADMIN', 'no'),
(117, 'S00104', 'S00104', '131', 'JAMIE LEE', 'JAMIE.LEE@MEOGROUP.COM', 'staff', 'CORPORATE SECRETARIAT MANAGER', NULL, NULL, 'active', '', NULL, '', '', '+6568296181', 528, 'JAMIELEEMEO', '', '0000-00-00', '2017-01-17 17:17:14', '2017-01-19 16:33:32', 'ADMIN', 'no'),
(118, 'S00133', 'S00133', '134', 'AMELIA NG', 'AMELIA.NG@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296187', 630, 'MEO.AMERIA.NG', '', '0000-00-00', '2017-01-17 17:18:46', '2017-01-19 16:28:14', 'ADMIN', 'no'),
(119, 'S00148', 'S00148', '136', 'JOVY CHAY', 'JOVY.CHAY@MEOGROUP.COM', 'staff', 'MANAGER - KNOWLEDGE MANAGEMENT', 'JOVY.CHAY', ' HOME.LOCAL', 'active', '', NULL, '+6591886220', '', '+6568296125', 214, 'JOVY.CHAY', '', '0000-00-00', '2017-01-17 17:21:03', '2017-03-09 14:29:09', 'ADMIN', 'no'),
(120, 'S00347', 'S00347', '185', 'DARREN YEOH', 'DARREN.YEOH@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER, BPI', NULL, NULL, 'active', '', NULL, '+6596269201', '', '+6568296017', 231, '', '', '0000-00-00', '2017-01-17 17:33:41', '2017-01-19 15:19:36', 'ADMIN', 'no'),
(121, 'S00361', 'S00361', '193', 'EDWIN CHANG YONG QUAN', 'YONGQUAN.CHANG@MEOGROUP.COM', 'staff', 'INVENTORY ANALYST', NULL, NULL, 'active', '', NULL, '', '', '+6568296145', 350, '', '', '0000-00-00', '2017-01-17 17:35:08', '2017-01-19 15:47:40', 'ADMIN', 'no'),
(122, 'S00385', 'S00385', '209', 'BAY SOO PENG', 'SOOPENG.BAY@MEOGROUP.COM ', 'staff', 'ACCOUNTANT - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296183', 534, '', '', '0000-00-00', '2017-01-17 17:38:58', '2017-01-19 16:22:46', 'ADMIN', 'no'),
(123, 'S00386', 'S00386', '210', 'CHLOE NG', 'CHLOE.NG@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AR', NULL, NULL, 'active', '', NULL, '', '', '+6568296123', 542, '', '', '0000-00-00', '2017-01-17 17:41:24', '2017-01-19 16:24:26', 'ADMIN', 'no'),
(124, 'S00388', 'S00388', '212', 'EUNICE TAN', 'EUNICE.TAN@MEOGROUP.COM', 'staff', 'HR EXECUTIVE - TALENT MANAGEMENT', NULL, NULL, 'active', '', NULL, '', '', '+6568296155', 301, '', '', '0000-00-00', '2017-01-17 17:42:53', '2017-01-19 15:16:01', 'ADMIN', 'no'),
(125, 'S00002', 'S00002', '122', 'ERIK TING', 'ERIK.TING@MEOGROUP.COM', 'staff', 'TECHNICAL CONSULTANT', NULL, NULL, 'active', '', NULL, '+6591279029', '', '+6568296102', 203, '', '', '0000-00-00', '2017-01-17 17:48:05', '2017-01-19 15:31:51', 'ADMIN', 'no'),
(126, 'E0025', 'E0025', '29', 'LIM JUNRONG', 'JUNRONG.LIM@MEOGROUP.COM', 'staff', 'SUPERINTENDENT - TECHNICAL (PROJECTS)', NULL, NULL, 'active', '', NULL, '+6581130553', '', '+6568296107', 210, 'LIM.JUNRONG', '', '0000-00-00', '2017-01-17 17:58:58', '2017-01-19 17:04:10', 'ADMIN', 'no'),
(127, 'S00360', 'S00360', '192', 'LEE PEI ZHEN', 'PEIZHEN.LEE@MEOGROUP.COM', 'staff', 'HR EXECUTIVE - OPERATIONS & SERVICES', NULL, NULL, 'active', '', NULL, '', '', '+6568296172', 211, '', '', '0000-00-00', '2017-01-17 18:02:06', '2017-01-19 15:15:35', 'ADMIN', 'no'),
(128, 'S00348', 'S00348', '186', 'JOSEPHINE LEE', 'JOSEPHINE.LEE@MEOGROUP.COM', 'staff', 'GROUP TREASURER', NULL, NULL, 'active', '', NULL, '', '', '+6568299878', 114, '', '', '0000-00-00', '2017-01-17 18:05:53', '2017-01-19 16:19:59', 'ADMIN', 'no'),
(129, 'S00165', 'S00165', '140', 'DEREK KOH', 'DEREK.KOH@MEOGROUP.COM', 'staff', 'CHIEF FINANCIAL OFFICER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170126092516.png', '+6591859427', '', '+6568296156', 509, 'DEREKTHKOH', '', '0000-00-00', '2017-01-17 18:09:17', '2017-01-26 09:25:26', 'ADMIN', 'no'),
(130, 'S00380', 'S00380', '205', 'ELAINE LAU', 'ELAINE.LAU@MEOGROUP.COM', 'staff', 'ACCOUNTANT - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296162', 515, '', '', '0000-00-00', '2017-01-17 18:28:42', '2017-01-19 16:29:03', 'ADMIN', 'no'),
(131, 'BN002', 'BN002', '11', 'LEONARD WONG ', 'LEONARD.WONG@MEOGROUP.COM', 'staff', 'GENERAL MANAGER', NULL, NULL, 'active', '', NULL, '+6737236336', '', '+6733347737', 0, 'LEONARD.WONGCL', '', '0000-00-00', '2017-01-17 22:12:17', '2017-01-18 14:30:19', 'ADMIN', 'no'),
(132, 'BN004', 'BN004', '13', 'BELINDA WONG', 'BELINDA.WONG@MEOGROUP.COM', 'staff', 'ADMINISTRATIVE EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6738758028', '', '+6733347773', 0, 'BELINDA53881', '', '0000-00-00', '2017-01-17 22:13:25', '2017-01-18 14:32:50', 'ADMIN', 'no'),
(133, 'BN008', 'BN008', '15', 'KOK WEI KONG', 'WEIKONG.KOK@MEOGROUP.COM', 'staff', 'WEIKONG.KOK@MEOGROUP.COM', NULL, NULL, 'active', '', NULL, '+6738737086', '', '+6733347767', 0, 'KOKKONG50', '', '0000-00-00', '2017-01-17 22:14:15', '2017-01-18 14:35:28', 'ADMIN', 'no'),
(134, 'BN003', 'BN003', '12', 'SHAFIQ ABDULLAH ', 'SHAFIQ.ABDULLAH@MEOGROUP.COM', 'staff', 'OPERATIONS SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+6737299786', '', '+6733347767', 0, 'MUHAMMAD SHAFIQ ABDULLAH', '', '0000-00-00', '2017-01-17 22:15:11', '2017-01-18 14:36:11', 'ADMIN', 'no'),
(135, 'BN011', 'BN011', '17', 'ARDY  BAKAR', 'ARDY.BAKAR@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6737298786', '', '+6733347757', 0, '', '', '0000-00-00', '2017-01-17 22:16:37', '2017-02-02 15:46:54', 'ADMIN', 'no'),
(136, 'BN010', 'BN010', '16', 'ALDON PETER YAPP ', 'ALDON.PETERYAPP@MEOGROUP.COM', 'staff', 'HSQE SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+6737297786', '', '+6733347727', 0, 'ALDONYAPP', '', '0000-00-00', '2017-01-17 22:17:13', '2017-01-18 14:31:40', 'ADMIN', 'no'),
(137, 'BN007', 'BN007', '14', 'KENNETH YONG', 'KENNETH.YONG@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6737293386', '', '+6733347774', 0, 'KENNETH.YONG2015', '', '0000-00-00', '2017-01-17 22:18:02', '2017-01-18 14:31:08', 'ADMIN', 'no'),
(138, 'M015', 'M015', '43', 'CAPT. SASITHARAN ELUMALAI', 'SASITHARAN.ELUMALAI@MEOGROUP.COM', 'staff', 'OPERATIONS MANAGER, MALAYSIA', NULL, NULL, 'active', '', '', '+60109897196', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-17 22:39:34', '2017-01-26 09:33:43', 'ADMIN', 'no'),
(139, 'M014', 'M014', '42', 'LETICIA LAIMAN INGAN', 'LETICIA.INGAN@MEOGROUP.COM', 'staff', 'HSQE  SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+60168545836', '', '', 0, '', '', '0000-00-00', '2017-01-17 22:41:13', '2017-01-18 14:57:08', 'ADMIN', 'no'),
(140, 'M010', 'M010', '39', 'AWG FAREEZ SYIDDIQEN', 'AWG.FAREEZ@MEOGROUP.COM', 'staff', 'OPS SUPINTENDENT', NULL, NULL, 'active', '', NULL, '+60168857288', '', '+6085661103', 0, 'AWG.FAREEZ.MEO', '', '0000-00-00', '2017-01-17 22:43:24', '2017-01-18 14:59:02', 'ADMIN', 'no'),
(141, 'M012', 'M012', '41', 'NURUL AIN KAMARUDDIN', 'NURULAIN@MEOGROUP.COM', 'staff', 'OPERATIONS SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-17 22:44:12', '2017-01-18 15:00:53', 'ADMIN', 'no'),
(142, 'M006', 'M006', '37', 'SYED MUBARAK', 'SYED.MUBARAK@MEOGROUP.COM', 'staff', 'TECH SUPERTINTENDENT', NULL, NULL, 'active', '', NULL, '+60138040671 ', '', '+6085661103', 0, 'SYED.MUBARAKMEO', '', '0000-00-00', '2017-01-17 22:44:51', '2017-01-18 14:55:26', 'ADMIN', 'no'),
(143, 'M002', 'M002', '36', 'AAN KUSNANDAR', 'AAN.KUSNANDAR@MEOGROUP.COM', 'staff', 'TECH SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+60178905877 ', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-17 22:45:37', '2017-01-18 14:56:02', 'ADMIN', 'no'),
(144, 'M007', 'M007', '38', 'NAOMI GANI', 'NAOMI@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+60178022234', '', '+6085661103', 0, 'NAOMI8838', '', '0000-00-00', '2017-01-17 22:46:08', '2017-01-18 14:54:52', 'ADMIN', 'no'),
(145, 'M011', 'M011', '40', 'HAZLAN HAMDAN', 'HAZLAN.HAMDAN@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+60128515373', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-17 22:46:50', '2017-01-18 14:54:17', 'ADMIN', 'no'),
(146, 'A000480', 'A000480', '9', 'DAVID NICHOLAS', 'DAVID.NICHOLAS@MEOGROUP.COM', 'staff', 'HSEQ MANAGER,  AUS', NULL, NULL, 'active', '', NULL, '+61477177716', '', '+61894359218', 0, 'DAVIDNICHOLAS23', '', '0000-00-00', '2017-01-17 23:03:04', '2017-01-18 15:09:50', 'ADMIN', 'no'),
(147, 'A000816', 'A000816', '10', 'SAM HUTCHINSON', 'SAMUEL.HUTCHINSON@MEOGROUP.COM', 'staff', 'COMMERCIAL & OPERATIONS MANAGER', NULL, NULL, 'active', '', NULL, '+61417868400', '', '+61894359231', 0, '', '', '0000-00-00', '2017-01-17 23:03:37', '2017-02-02 14:35:50', 'ADMIN', 'no'),
(148, 'A000342', 'A000342', '8', 'VALERIE PRENTICE ', 'VALERIE.PRENTICE@MEOGROUP.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170203170339.png', '+61439293999 ', '', '+61894359201', 123, 'ELLIEANDVALERIE', '', '0000-00-00', '2017-01-17 23:04:07', '2017-02-03 17:03:51', 'ADMIN', 'no'),
(150, 'ME00108', 'ME00108', '106', 'DENIS WELCH', 'DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HEAD OF BUSINESS UNIT - MIDDLE EAST ', NULL, NULL, 'active', '', NULL, '+971561911444', '', '', 0, '', '', '0000-00-00', '2017-01-17 23:48:37', '2017-01-19 09:50:49', 'ADMIN', 'no'),
(151, 'ME00066', 'ME00066', '78', 'RIK KREUNEN', 'RIK.KREUNEN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'BUSINESS DEVELOPMENT MANAGER', NULL, NULL, 'active', '', NULL, '+971506408818', '', '', 0, 'RASMANIS78', '', '0000-00-00', '2017-01-17 23:50:03', '2017-01-19 10:56:36', 'ADMIN', 'no'),
(152, 'ME00099', 'ME00099', '97', 'MUKUND RAJAMANI ', 'MUKUND.RAJAMNI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'COMMERCIAL MANAGER ', NULL, NULL, 'active', '', NULL, '+971561719000', '', '', 0, 'MUKUNDRAJAMANI.WORK', '', '0000-00-00', '2017-01-17 23:52:06', '2017-01-19 10:57:10', 'ADMIN', 'no'),
(153, 'ME00100', 'ME00100', '98', 'ANGELA EMATA BAYRON ', 'ANGELA.BAYRON@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971565775980', '', '', 0, '', '', '0000-00-00', '2017-01-17 23:54:19', '2017-01-19 10:57:49', 'ADMIN', 'no'),
(154, 'ME00111', 'ME00111', '109', 'DEREK LO ', 'DEREK.LO@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'REGIONAL FINANCE MANAGER', NULL, NULL, 'active', '', NULL, '+971565096954', '', '', 0, 'DEKBO88', '', '0000-00-00', '2017-01-17 23:56:17', '2017-01-19 10:52:12', 'ADMIN', 'no'),
(155, 'ME00083', 'ME00083', '86', 'SANDESH GOPAL PALAN ', 'SANDESH.PALAN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT FINANCE MANAGER ', NULL, NULL, 'active', '', NULL, '+971501866955', '', '', 0, 'REACHSANDESHPALAN', '', '0000-00-00', '2017-01-17 23:58:27', '2017-01-19 10:52:41', 'ADMIN', 'no'),
(156, 'ME00076', 'ME00076', '82', 'NITIN PUROHIT ', 'NITIN.PUROHIT@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT FINANCE MANAGER ', NULL, NULL, 'active', '', NULL, '+971504098047  ', '', '', 0, 'NITIN.PR19', '', '0000-00-00', '2017-01-18 00:00:21', '2017-02-01 12:34:56', 'ADMIN', 'no'),
(157, 'ME00058', 'ME00058', '75', 'DEEPAK PANDEY ', 'DEEPAK.PANDEY@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, '+971562198878', '', '', 0, 'DEEPAK.PANDEY568', '', '0000-00-00', '2017-01-18 00:01:18', '2017-01-19 10:53:40', 'ADMIN', 'no'),
(158, 'ME00024', 'ME00024', '58', 'ASHVITH AMIN', 'ASHVITH.AMIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, '+971566184192', '', '', 0, 'ASHVITH', '', '0000-00-00', '2017-01-18 00:02:35', '2017-01-19 10:54:06', 'ADMIN', 'no'),
(159, 'ME00084', 'ME00084', '87', 'ABHILASH ', 'ABHILASH.H@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, '+971553725314', '', '', 0, 'ABHILASH1856', '', '0000-00-00', '2017-01-18 00:03:17', '2017-01-19 10:54:45', 'ADMIN', 'no'),
(160, 'ME00021', 'ME00021', '55', 'SAMWAIL FOUAD', 'SAMWAIL.FOUAD@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PRO', NULL, NULL, 'active', '', NULL, '+971567527197', '', '', 0, 'SAMUELFOUAD', '', '0000-00-00', '2017-01-18 00:13:02', '2017-01-19 10:51:04', 'ADMIN', 'no'),
(161, 'ME00037', 'ME00037', '64', 'TAHIR ABBAS', '-@MEOGROUP.COM', 'staff', 'DRIVER', NULL, NULL, 'active', '', NULL, '+971551437886', '', '', 0, '', '', '0000-00-00', '2017-01-18 00:15:45', '2017-01-19 10:51:35', 'ADMIN', 'no'),
(162, 'ME00092', 'ME00092', '92', 'RABINDRA DASH ', 'RABINDRA.DASH@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING MANAGER ', NULL, NULL, 'active', '', NULL, '+971564804891 ', '', '', 0, 'RABINDRA.DASH41', '', '0000-00-00', '2017-01-18 00:16:43', '2017-01-19 10:44:08', 'ADMIN', 'no'),
(163, 'ME00060', 'ME00060', '76', 'AISHA FERRER', 'AISHA.FERRER@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971566526815', '', '', 0, 'EMP.FLEET', '', '0000-00-00', '2017-01-18 00:17:54', '2017-01-19 10:44:45', 'ADMIN', 'no'),
(164, 'ME00071', 'ME00071', '79', 'ANABEL BALINA', 'ANABEL.BALINA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971507083636', '', '', 0, 'ABEL_ANABEL', '', '0000-00-00', '2017-01-18 00:18:43', '2017-01-19 10:45:44', 'ADMIN', 'no'),
(165, 'ME00097', 'ME00097', '96', 'ANNALYN BUATIS ', 'ANNALYN.BUATIS@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971508123426', '', '', 0, 'ANNALYN_BUATIS', '', '0000-00-00', '2017-01-18 00:19:50', '2017-01-19 10:46:43', 'ADMIN', 'no'),
(166, 'ME00095', 'ME00095', '94', 'AVDHUT DHAYBAR', 'AVDHUT.DHAYBAR@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971504091241', '', '', 0, 'AVIDHAYBAR', '', '0000-00-00', '2017-01-18 00:21:16', '2017-01-19 10:47:11', 'ADMIN', 'no'),
(167, 'ME00022', 'ME00022', '56', 'BISYRUN HASAN BASRI', 'BISYRUN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+966503691631', '', '', 0, 'BISYUN69.MICLYN', '', '0000-00-00', '2017-01-18 00:23:56', '2017-01-19 10:47:47', 'ADMIN', 'no'),
(168, 'ME00038', 'ME00038', '65', 'ALI ESSA M AL OBAIDI', 'ALI.ALOBAIDI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SAUDIZATION COORDINATOR (KSA)', NULL, NULL, 'active', '', NULL, '+966554939421', '', '', 0, 'ALI.AL-OBAIDI', '', '0000-00-00', '2017-01-18 00:25:12', '2017-01-19 10:48:44', 'ADMIN', 'no'),
(169, 'ME00109', 'ME00109', '107', 'IRY GENSON', 'IRY.GENSON@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SCM MANAGER', NULL, NULL, 'active', '', NULL, '+971544436403', '', '', 0, '', '', '0000-00-00', '2017-01-18 00:26:26', '2017-01-19 10:37:55', 'ADMIN', 'no'),
(170, 'ME00031', 'ME00031', '62', 'SAVIO VAZ', 'SAVIO.VAZ@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971552720910 ', '', '', 0, 'SAVIO.VAZ25', '', '0000-00-00', '2017-01-18 00:27:07', '2017-01-19 10:38:34', 'ADMIN', 'no'),
(171, 'ME00079', 'ME00079', '84', 'SUNITHA SHETTY', 'SUNITHA.SHETTY@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971501905164', '', '', 0, 'SUNITHASHETTY1312', '', '0000-00-00', '2017-01-18 00:27:50', '2017-01-19 10:40:01', 'ADMIN', 'no'),
(172, 'ME00110', 'ME00110', '108', 'LIEZL FABIALA ', 'LIEZL.FABIALA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971568054060', '', '', 0, '', '', '0000-00-00', '2017-01-18 00:28:37', '2017-01-19 10:40:32', 'ADMIN', 'no'),
(173, 'ME00102', 'ME00102', '100', 'LENIN LAMA ', 'LENIN.LAMA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971565775437', '', '', 0, '', '', '0000-00-00', '2017-01-18 00:29:23', '2017-01-19 10:41:00', 'ADMIN', 'no'),
(174, 'ME00106', 'ME00106', '104', 'HUSSAIN ALGOBA ', 'HUSSAIN.ALGOBA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+966598000400', '', '', 0, 'HUSSAIN.ALGOBA', '', '0000-00-00', '2017-01-18 00:30:21', '2017-01-19 10:41:53', 'ADMIN', 'no'),
(175, 'ME00063', 'ME00063', '77', 'SREENIVASAN NARAYANAN', '--@MEOGROUP.COM', 'staff', 'STORE KEEPER', NULL, NULL, 'active', '', NULL, '+971557348633', '', '', 0, '', '', '0000-00-00', '2017-01-18 00:31:17', '2017-01-19 10:42:26', 'ADMIN', 'no'),
(176, 'ME00004', 'ME00004', '47', 'ABDALLA ABUELGASIM', 'ABDALLA.ABUELGASIM@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HSQE MANAGER', NULL, NULL, 'active', '', NULL, '+971506508620', '', '', 0, 'ABDALLA.MEO', '', '0000-00-00', '2017-01-18 00:33:45', '2017-01-19 10:33:09', 'ADMIN', 'no'),
(177, 'ME00074', 'ME00074', '81', 'SHERIF ABDELHAMID ', 'SHERIF.ABDELMONEM@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TRAINING MANAGER ', NULL, NULL, 'active', '', NULL, '+971504098051 ', '', '', 0, 'SHERIF.RASHWAN4', '', '0000-00-00', '2017-01-18 00:35:10', '2017-01-19 10:34:00', 'ADMIN', 'no'),
(178, 'ME00011', 'ME00011', '50', 'JOSEPH GEORGE', 'JOSEPH.GEORGE@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT HSQE MANAGER', NULL, NULL, 'active', '', NULL, '+971505581776', '', '', 0, 'CAPT.GEOGEMEO', '', '0000-00-00', '2017-01-18 00:37:45', '2017-01-19 10:35:56', 'ADMIN', 'no'),
(179, 'ME00042', 'ME00042', '67', 'RAMLI RASBI', 'RAMLI.RASBI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HSQE SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+971561541091', '', '', 0, 'RAMIL RASBI', '', '0000-00-00', '2017-01-18 00:38:39', '2017-01-19 10:36:37', 'ADMIN', 'no'),
(180, 'ME00050', 'ME00050', '71', 'ANNA  LIZA CELLANO', 'ANNA.CELLANO@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HSQE EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971567614785', '', '', 0, 'ANNA.LIZA.CELLANO', '', '0000-00-00', '2017-01-18 00:39:28', '2017-01-19 10:37:12', 'ADMIN', 'no'),
(181, 'ME00101', 'ME00101', '99', 'RAVINDER HOONJAN ', 'RAVINDER.HOONJAN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS MANAGER ', NULL, NULL, 'active', '', NULL, '+971561411888', '', '', 0, '', '', '0000-00-00', '2017-01-18 00:45:43', '2017-01-19 10:16:07', 'ADMIN', 'no'),
(182, 'ME00090', 'ME00090', '91', 'AAKAAR JAIN', 'AAKAAR.JAIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT OPERATIONS MANAGER ', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170213085950.png', '+971569399394', '', '', 0, 'AAKAAR.WORK', '', '0000-00-00', '2017-01-18 00:48:26', '2017-02-23 11:38:56', 'ADMIN', 'no'),
(183, 'ME00014', 'ME00014', '52', 'SOKARNO ABDALLAH ', 'SOKARNO.ABDALLAH@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'BASE MANAGER KSA ', NULL, NULL, 'active', '', NULL, '+966505849492', '', '', 0, 'SOKARNO.ABDALLAH', '', '0000-00-00', '2017-01-18 01:02:10', '2017-01-19 10:17:48', 'ADMIN', 'no'),
(184, 'ME00089', 'ME00089', '90', 'TAMER S.BALBOUL', 'TAMER.BALBOUL@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, '+966550819051 ', '', '', 0, 'TAMER.BALBOUL', '', '0000-00-00', '2017-01-18 01:05:22', '2017-01-19 10:19:44', 'ADMIN', 'no'),
(185, 'ME00025', 'ME00025', '59', 'SALIM KAJIRU', 'SALIM.KAJIRU@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, '+966543204241', '', '', 0, 'SALIMAHMEDKAJIRU77', '', '0000-00-00', '2017-01-18 01:07:19', '2017-01-19 10:19:23', 'ADMIN', 'no'),
(186, 'ME00027', 'ME00027', '60', 'ZOHAIR ABDELRAHIM', 'ZOHAIR.ELRAHIM@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, '+966507635505', '', '', 0, 'ZEZOHAIR', '', '0000-00-00', '2017-01-18 01:10:43', '2017-01-19 10:21:44', 'ADMIN', 'no'),
(187, 'ME00005', 'ME00005', '48', 'PAUL OCCENOLA', 'PAUL.OCCENOLA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS SUPERVISOR', NULL, NULL, 'active', '', NULL, '+971509820189', '', '', 0, 'PAULOCCENOLA-OPS', '', '0000-00-00', '2017-01-18 01:16:05', '2017-01-19 10:23:21', 'ADMIN', 'no'),
(188, 'ME00104', 'ME00104', '102', 'CHANDRASHEKAR VARMA ', 'CHANDRASHEKAR.VARMA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS EXECUTIVE ', NULL, NULL, 'active', '', NULL, '+971565096956', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:18:32', '2017-01-19 10:24:16', 'ADMIN', 'no'),
(189, 'ME00023', 'ME00023', '57', 'JASIM HUSSAIN', 'JASSIM.HUSSAIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS ASSISTANT ', NULL, NULL, 'active', '', NULL, '+966506985463', '', '', 0, 'JASSIM.HUSSAIN', '', '0000-00-00', '2017-01-18 01:19:46', '2017-01-19 10:25:11', 'ADMIN', 'no'),
(190, 'ME00093', 'ME00093', '93', 'BASEL KHWAIS', 'BASEL.KHWAIS@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PRO', NULL, NULL, 'active', '', NULL, '+971504098048', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:20:59', '2017-01-19 10:27:32', 'ADMIN', 'no'),
(191, 'ME00088', 'ME00088', '89', 'CIRION CENOC ', 'CIRION.SENOC@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SENIOR OPERATIONS SUPERVISOR', NULL, NULL, 'active', '', NULL, '+97466718939 ', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:22:06', '2017-01-19 10:28:06', 'ADMIN', 'no'),
(192, 'ME00073', 'ME00073', '80', 'HEMANTKUMAR PANCHAL ', 'HEMANT.PANCHAL@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SENIOR TECHNICAL SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971504098049', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:26:33', '2017-01-19 09:54:16', 'ADMIN', 'no'),
(193, 'ME00107', 'ME00107', '105', 'VENKATESH ', 'VENKATESH.K@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971563529669', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:27:22', '2017-01-19 09:54:48', 'ADMIN', 'no'),
(194, 'ME00048', 'ME00048', '70', 'VIJAY CHATTE', 'VIJAY.CHATTE@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971544113735 ', '', '', 0, 'VIJAY.CHATTE', '', '0000-00-00', '2017-01-18 01:29:46', '2017-01-19 09:56:29', 'ADMIN', 'no'),
(195, 'ME00096', 'ME00096', '95', 'ALABBAS MAHDI ', 'ALABBAS.MAHDI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT ENGINEER (SAUDI)) ', NULL, NULL, 'active', '', NULL, '+966507885668', '', '', 0, 'ALABBASMAHDI', '', '0000-00-00', '2017-01-18 01:30:46', '2017-01-19 09:56:55', 'ADMIN', 'no');
INSERT INTO `meo_meoUsers_entity` (`id_meo_user`, `user_id`, `main_emp_id`, `emp_id`, `user_full_name`, `user_email`, `staff_client`, `designation`, `domain_id`, `directory`, `status`, `status_reason`, `image`, `mobile1`, `mobile2`, `desk_phone`, `extension`, `skype_id`, `notes`, `expiry_date`, `added_on`, `updated_on`, `updated_by`, `is_verified`) VALUES
(196, 'ME00082', 'ME00082', '85', 'JOSE WILSON OTO', 'JOSE.WILSON@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT (SAUDI)', NULL, NULL, 'active', '', NULL, '+966535543205', '', '', 0, 'WILSON556011', '', '0000-00-00', '2017-01-18 01:31:31', '2017-01-19 09:56:10', 'ADMIN', 'no'),
(197, 'ME00013', 'ME00013', '51', 'HISHAM  AHAMED', 'HISHAM.AHAMED@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT (SAUDI)', NULL, NULL, 'active', '', NULL, '+966501833294', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:32:12', '2017-01-19 09:57:22', 'ADMIN', 'no'),
(198, 'ME00056', 'ME00056', '74', 'YOGESH PATIL', 'YOGESH.PATIL@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SERVICE SUPERVISOR SUPERITENDENT', NULL, NULL, 'active', '', NULL, '+971503865963', '', '', 0, 'YOGESH.PATIL82', '', '0000-00-00', '2017-01-18 01:32:53', '2017-01-19 09:57:55', 'ADMIN', 'no'),
(199, 'ME00034', 'ME00034', '63', 'PRADEEP KUMAR', '---@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+971502678113', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:34:13', '2017-01-19 10:01:40', 'ADMIN', 'no'),
(200, 'ME00003', 'ME00003', '46', 'ANDREW AUGUSTIN WOOD', '----@MEOGROUP.COM', 'staff', 'MECHANIC (SAUDI)', NULL, NULL, 'active', '', NULL, '+966501857531', '', '', 0, 'ANDREW36614', '', '0000-00-00', '2017-01-18 01:35:51', '2017-01-19 10:02:24', 'ADMIN', 'no'),
(201, 'ME00001', 'ME00001', '45', 'ROMEO DELA CRUZ GACHO', '------@MEOGROUP.COM', 'staff', 'AC TECHNICIAN', NULL, NULL, 'active', '', NULL, '+966502948321', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:36:28', '2017-01-19 10:03:46', 'ADMIN', 'no'),
(202, 'ME00046', 'ME00046', '69', 'VIRGILIO TECSON TIRO', '-NA-@MEOGROUP.COM', 'staff', 'WELDER/ MECHANIC', NULL, NULL, 'active', '', NULL, '+966509163796', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:39:38', '2017-01-19 10:05:09', 'ADMIN', 'no'),
(203, 'ME00055', 'ME00055', '73', 'ELNUR ABDULLAYEV', 'ELNUR@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ELECTRICAL ENGINEER SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971503865964', '', '', 0, 'ELNUR.ABDULAYEV', '', '0000-00-00', '2017-01-18 01:40:21', '2017-01-19 10:05:46', 'ADMIN', 'no'),
(204, 'ME00078', 'ME00078', '83', 'MANJULA  SAMARAKOON', 'MANJULA.SAMARKOON@MEOGROUP.COM', 'staff', 'ELECTRONICS ENGINEER', NULL, NULL, 'active', '', NULL, '+971564804893 ', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:41:26', '2017-01-19 10:06:19', 'ADMIN', 'no'),
(205, 'ME00052', 'ME00052', '72', 'ROBIN ISSAC', 'ROBIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ELECTRONICS ENGINEER', NULL, NULL, 'active', '', NULL, '+971555171892', '', '', 0, 'RKISSAC85', '', '0000-00-00', '2017-01-18 01:42:08', '2017-01-19 10:07:03', 'ADMIN', 'no'),
(206, 'ME00105', 'ME00105', '103', 'SAMAN PATHIRANA ', 'PATHIRANA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ELECTRONICS ENGINEER', NULL, NULL, 'active', '', NULL, '+971565096957', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:43:34', '2017-01-19 10:12:12', 'ADMIN', 'no'),
(207, 'ME00043', 'ME00043', '68', 'JINKHIE GALLARZAN', 'JINKHIE.GALLARZAN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SENIOR TECHNICAL ASSISTANT', NULL, NULL, 'active', '', NULL, '+971565096958', '', '', 0, 'MEO.TECHNICAL', '', '0000-00-00', '2017-01-18 01:44:02', '2017-01-19 10:14:05', 'ADMIN', 'no'),
(208, 'ME00103', 'ME00103', '101', 'BAPUSO DINDE ', 'BAPUSO.DINDE@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL ASSISTANT ', NULL, NULL, 'active', '', NULL, '+971565096955', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:44:44', '2017-01-19 10:14:33', 'ADMIN', 'no'),
(209, 'ME00040', 'ME00040', '66', 'KHALID SAOUD A AL SHAMMARY', '-------@MEOGROUP.COM', 'staff', 'ADMIN ASSISTANT ', NULL, NULL, 'active', '', NULL, '+966532633776', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:46:01', '2017-01-19 09:51:45', 'ADMIN', 'no'),
(210, 'MEO020', 'MEO020', '113', 'HASHIM AL SEFI', '------@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'DRIVER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-18 01:47:30', '0000-00-00 00:00:00', '', 'no'),
(211, 'ME00015', 'ME00015', '53', 'ABDUL KADIR BUTHIYABURAYIL', '----@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HELPER ', NULL, NULL, 'active', '', NULL, '+966559271168', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:48:45', '2017-01-19 09:53:20', 'ADMIN', 'no'),
(212, 'ME00016', 'ME00016', '54', 'THATHAMMA MOHAMMED MOOSA ', '---@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HELPER', NULL, NULL, 'active', '', NULL, '+966503865054', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:49:39', '2017-01-19 09:53:45', 'ADMIN', 'no'),
(213, 'ME00087', 'ME00087', '88', 'MICHAEL SLY ', 'MICHAEL.SLY@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'EOS REGIONAL REPRESENTATIVE', NULL, NULL, 'active', '', NULL, '+971506381351', '', '', 0, 'MIKESLYEOS ', '', '0000-00-00', '2017-01-18 01:50:10', '2017-01-19 09:49:30', 'ADMIN', 'no'),
(214, 'ME00029', 'ME00029', '61', 'SHIYAS NAZARUDEEN ', 'SHIYAS.NAZARUDEEN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971505581779', '', '', 0, 'SHIYAS.NAZARUDEEN', '', '0000-00-00', '2017-01-18 01:50:44', '2017-01-19 09:50:06', 'ADMIN', 'no'),
(215, 'SGS001', 'SGS001', '219', 'DIDI JAYA SAPUTRA', 'DIDI.SAPUTRA@SGS-OFFSHORE.COM', 'staff', 'DIRECTOR OF PT. SGS12', NULL, NULL, 'active', '', NULL, '+6281510523372', '1234567', '12345678', 115, 'DIDI.SAPUTRA6', '', '0000-00-00', '2017-01-18 19:01:53', '2017-03-08 16:08:39', 'ADMIN', 'no'),
(216, 'E0020', 'E0020', '27', 'JOYCE TAN', 'JOYCE.TAN@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER - COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6598233900', '', '+6568296128', 219, '', '', '0000-00-00', '2017-01-18 19:13:19', '2017-01-19 17:06:02', 'ADMIN', 'no'),
(217, 'S00309', 'S00309', '168', 'FRANK TAM', 'FRANK.TAM@MEOGROUP.COM', 'staff', 'FPM TESTING OFFICER', NULL, NULL, 'active', '', NULL, '+6596793945', '', '+6568296100', 623, 'MR.FRANK_TAM', '', '0000-00-00', '2017-01-18 19:23:05', '2017-01-19 15:23:46', 'ADMIN', 'no'),
(218, 'S00332', 'S00332', '178', 'KEITH NG', 'KEITH.NG@MEOGROUP.COM', 'staff', 'MANAGER - COMMERCIAL (ASEAN)', NULL, NULL, 'active', '', NULL, '+6583220193', '', '+6568296101', 307, 'KEITH.NG1976', '', '0000-00-00', '2017-01-18 19:23:39', '2017-01-19 17:09:07', 'ADMIN', 'no'),
(219, 'SGS023', 'SGS023', '231', 'ANGGARA MULIA', 'ANGGARA.MULIA@SGS-OFFSHORE.COM', 'staff', 'MARKETING MANAGER', NULL, NULL, 'active', '', NULL, '+62817101710', '+628118800896', '', 114, '', '', '0000-00-00', '2017-01-18 19:44:54', '2017-01-19 17:30:35', 'ADMIN', 'no'),
(220, 'SGS010', 'SGS010', '224', 'VANESSA TALAVERA AQUINO', 'VANESSA.AQUINO@SGS-OFFSHORE.COM', 'staff', 'MARKETING SPECIALIST', NULL, NULL, 'active', '', NULL, '+6282147427446', '', '', 130, '', '', '0000-00-00', '2017-01-18 19:45:41', '2017-06-29 22:21:04', 'ADMIN', 'no'),
(221, 'SPS004', 'SPS004', '236', 'YENNY IMELDA MARTHING', 'YENNY.MARTHING@SPS-OFFSHORE.COM', 'staff', 'CREWING MANAGER ', NULL, NULL, 'active', '', NULL, '+628119000907', '', '', 109, 'YENNY.MARTHING', '', '0000-00-00', '2017-01-18 19:46:20', '2017-01-19 17:26:41', 'ADMIN', 'no'),
(222, 'SPS010', 'SPS010', '239', 'KUNTO WIBISONO', 'KUNTO.WIBISONO@SPS-OFFSHORE.COM', 'staff', 'CREWING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6285213203063', '', '', 105, '', '', '0000-00-00', '2017-01-18 19:46:54', '2017-01-19 17:27:43', 'ADMIN', 'no'),
(223, 'SGS024', 'SGS024', '232', 'DODI SETIAGAMA', 'DODI.SETIAGAMA@SPS-OFFSHORE.COM', 'staff', 'CREWING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6281320983876', '', '', 106, '', '', '0000-00-00', '2017-01-18 19:50:10', '2017-01-19 17:28:47', 'ADMIN', 'no'),
(224, 'SPS008', 'SPS008', '237', 'AGUS TRI ATMOJO', 'AGUS.ATMOJO@SPS-OFFSHORE.COM', 'staff', 'CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+6281316091221', '', '', 125, '', '', '0000-00-00', '2017-01-18 19:51:16', '2017-01-19 17:29:42', 'ADMIN', 'no'),
(225, 'SGS020', 'SGS020', '230', 'DEDI SUPRIYADI', 'DEDI.SUPRIYADI@SGS-OFFSHORE.COM', 'staff', 'ACCOUNTING & FINANCE MANAGER', NULL, NULL, 'active', '', NULL, '+6281230477872', '', '', 110, 'SUPRIYADIDEDI1', '', '0000-00-00', '2017-01-18 19:51:48', '2017-01-19 17:15:23', 'ADMIN', 'no'),
(226, 'SPS002', 'SPS002', '235', 'ADI MASTIN', 'ADI.MASTIN@SGS-OFFSHORE.COM', 'staff', 'ACCOUNTING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6281808787968', '', '', 108, 'ADI.MAC82', '', '0000-00-00', '2017-01-18 19:52:29', '2017-01-19 17:16:03', 'ADMIN', 'no'),
(227, 'SGS014', 'SGS014', '226', 'RIZKA NOMITURSILOJATI', 'RIZKA.NOMITURSILOJATI@SGS-OFFSHORE.COM', 'staff', 'ACCOUNTING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+628568497187', '', '', 104, 'OMI.NOMI16', '', '0000-00-00', '2017-01-18 19:53:38', '2017-01-19 17:16:44', 'ADMIN', 'no'),
(228, 'NPP004', 'NPP004', '120', 'DIAN UTAMI', 'DIAN.UTAMI@NPP-OFFSHORE.COM', 'staff', 'ACCOUNTING STAFF', NULL, NULL, 'active', '', NULL, '+628569933991', '', '', 132, 'DIANSRIU0911', '', '0000-00-00', '2017-01-18 19:54:45', '2017-01-19 17:18:57', 'ADMIN', 'no'),
(229, 'MEOS005', 'MEOS005', '116', 'ANDREW KESAULYA', 'ANDREW.KESAULYA@SGS-OFFSHORE.COM', 'staff', 'SINGAPORE ACCOUNTING FOR SAP - AP', NULL, NULL, 'active', '', NULL, '+628111461881', '', '', 121, 'ANDREW.KESAULYA', '', '0000-00-00', '2017-01-18 19:55:18', '2017-01-19 17:18:33', 'ADMIN', 'no'),
(230, 'SGS002', 'SGS002', '220', 'NAHARADAM WIDJAJA', 'NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM', 'staff', 'FLEET MANAGER', NULL, NULL, 'active', '', NULL, '+62811171225', '', '', 145, 'ADAM.WIDJAYA', '', '0000-00-00', '2017-01-18 19:57:04', '2017-02-03 11:43:11', 'ADMIN', 'no'),
(231, 'SGS019', 'SGS019', '229', 'ALPHARD OKA ARIFIN', 'ALPHARD.ARIFIN@SGS-OFFSHORE.COM', 'staff', 'OPERATION STAFF', NULL, NULL, 'active', '', NULL, '+628158215630', '', '', 142, '', '', '0000-00-00', '2017-01-18 20:00:46', '2017-01-19 14:39:35', 'ADMIN', 'no'),
(232, 'SGS016', 'SGS016', '227', 'YULIANTORO', 'YULIANTORO@SGS-OFFSHORE.COM', 'staff', 'PORT ENGINEER', NULL, NULL, 'active', '', NULL, '+6281314331483', '', '', 128, '', '', '0000-00-00', '2017-01-18 20:01:57', '2017-01-19 14:40:10', 'ADMIN', 'no'),
(233, 'SGS018', 'SGS018', '228', 'PAING WIDODO', 'PAING.WIDODO@SGS-OFFSHORE.COM', 'staff', 'TECHNICAL ASSISTANCE', NULL, NULL, 'active', '', NULL, '+628567349999', '', '', 112, 'D_ALFAYET', '', '0000-00-00', '2017-01-18 20:02:43', '2017-01-19 14:41:10', 'ADMIN', 'no'),
(234, 'SGS008', 'SGS008', '223', 'AZIZ ARZIZAL', 'AZIZ.ARZIZAL@SGS-OFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+62812808129', '', '', 129, 'AZIZ.SGS', '', '0000-00-00', '2017-01-18 20:03:16', '2017-01-19 14:38:01', 'ADMIN', 'no'),
(235, 'SPS025', 'SPS025', '250', 'DEKY WERDOKO', 'DEKY.WERDOKO@SGS-OFFSHORE.COM', 'staff', 'TRAINING MANAGER', NULL, NULL, 'active', '', NULL, '+6281213149306', '', '', 138, 'DQ_WERDOKO', '', '0000-00-00', '2017-01-18 20:04:04', '2017-01-19 14:36:07', 'ADMIN', 'no'),
(236, 'SPS009', 'SPS009', '238', 'ERNA RENSI NORA', 'EMA.RENSINORA@MEOGROUP.COM', 'staff', 'TRAINING ADMIN', NULL, NULL, 'active', '', NULL, '+6281375570252', '', '', 138, '', '', '0000-00-00', '2017-01-18 20:04:21', '2017-01-19 14:36:44', 'ADMIN', 'no'),
(237, 'SGS006', 'SGS006', '222', 'RICKY KURNIAWAN', 'RICKY.KURNIAWAN@SGS-OFFSHORE.COM', 'staff', 'HSQE MANAGER', NULL, NULL, 'active', '', NULL, '+6283830902633', '', '', 107, '', '', '0000-00-00', '2017-01-18 20:04:46', '2017-01-19 14:34:03', 'ADMIN', 'no'),
(238, 'SGS011', 'SGS011', '225', 'DANI GUNAWAN', 'DANI.GUNAWAN@SGS-OFFSHORE.COM', 'staff', 'HRD MANAGER', NULL, NULL, 'active', '', NULL, '+6281323611122', '', '', 149, 'DANI.GUNAWAN3', '', '0000-00-00', '2017-01-18 20:05:14', '2017-01-19 14:31:53', 'ADMIN', 'no'),
(239, 'SGS027', 'SGS027', '233', 'LIA ANGGRAINY GINTING', 'LIA.GINTING@SPS-OFFSHORE.COM', 'staff', 'STAFF ADMINISTRATION', NULL, NULL, 'active', '', NULL, '+6281288152251', '', '', 111, '', '', '0000-00-00', '2017-01-18 20:06:07', '2017-01-19 14:32:32', 'ADMIN', 'no'),
(240, 'SGS004', 'SGS004', '221', 'AGUS SETYO BUDI S.', '-@SGS-OFFSHORE.COM', 'staff', 'DRIVER', NULL, NULL, 'active', '', NULL, '+6287784092946', '', '', 112, '', '', '0000-00-00', '2017-01-18 20:07:20', '2017-01-19 14:33:10', 'ADMIN', 'no'),
(241, 'MEOS010', 'MEOS010', '118', 'THEO ANDRIAN', 'THEO.ANDRIAN@MEOGROUP.COM', 'staff', 'OPERATION EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6285264444359', '', '', 0, '', '', '0000-00-00', '2017-01-18 20:08:20', '2017-01-19 14:41:37', 'ADMIN', 'no'),
(242, 'MEOS009', 'MEOS009', '117', 'RENALDO DARMADI', 'RENALDO.DARMADI@MEOGROUP.COM', 'staff', 'OPERATION ASST', NULL, NULL, 'active', '', NULL, '+628127775559', '', '', 0, '', '', '0000-00-00', '2017-01-18 20:09:37', '2017-01-19 14:42:22', 'ADMIN', 'no'),
(243, 'MEOS012', 'MEOS012', '119', 'FIRMAN LESMANA', 'FRIMAN.LESMANA@MEOGROUP.COM', 'staff', 'PORT ENGINEER', NULL, NULL, 'active', '', NULL, '+628117715985', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:15:39', '2017-01-19 14:43:19', 'ADMIN', 'no'),
(244, 'SPS011', 'SPS011', '240', 'SUHARNO', '-----@MEOGROUP.COM', 'staff', 'MECHANIC SUPERVISIOR', NULL, NULL, 'active', '', NULL, '+6281364692741', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:16:50', '2017-01-19 14:43:39', 'ADMIN', 'no'),
(245, 'SPS012', 'SPS012', '241', 'DRIPRANTO', '---------@MEOGROUP.COM', 'staff', 'FOREMAN MECHANIC', NULL, NULL, 'active', '', NULL, '+6281277198871', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:18:18', '2017-01-19 14:44:04', 'ADMIN', 'no'),
(246, 'SPS017', 'SPS017', '246', 'NUNU DIHARJA', '--------@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6282124999976', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:18:54', '2017-01-19 14:45:02', 'ADMIN', 'no'),
(247, 'SPS015', 'SPS015', '244', 'M. EGA PERMANA', '----------@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6282173630011', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:20:02', '2017-01-19 14:45:41', 'ADMIN', 'no'),
(248, 'SPS013', 'SPS013', '242', 'KUSTIYO ADI', 'NIL@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6281268167376', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:20:58', '2017-01-19 14:46:19', 'ADMIN', 'no'),
(249, 'SPS014', 'SPS014', '243', 'HENDRA KUSUMA', 'NILL@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6281289322744', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:21:42', '2017-01-19 14:46:42', 'ADMIN', 'no'),
(250, 'SPS016', 'SPS016', '245', 'M. ISMAIL', '__@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6281261594107', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:22:33', '2017-01-19 14:47:11', 'ADMIN', 'no'),
(251, 'SPS021', 'SPS021', '249', 'ZAHRUDIN', '_@MEOGROUP.COM', 'staff', 'WELDER', NULL, NULL, 'active', '', NULL, '+6281386600174', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:23:16', '2017-01-19 14:48:25', 'ADMIN', 'no'),
(252, 'SPS020', 'SPS020', '248', 'EFFENDI SAPUTRA', '___@MEOGROUP.COM', 'staff', 'WELDER', NULL, NULL, 'active', '', NULL, '+6282170476346', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:24:18', '2017-01-19 14:47:49', 'ADMIN', 'no'),
(253, 'SPS019', 'SPS019', '247', 'FIRMAN PERDANA', '____@MEOGROUP.COM', 'staff', 'ELECTRICIAN', NULL, NULL, 'active', '', NULL, '+6281387036364', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:25:02', '2017-01-19 14:48:55', 'ADMIN', 'no'),
(254, 'MEOS002', 'MEOS002', '114', 'LUKMAN AFFANDY', 'LUKMAN.AFFANDY@MEOGROUP.COM', 'staff', 'ROVING COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6281277057925', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:25:27', '2017-01-19 14:49:57', 'ADMIN', 'no'),
(255, 'MEOS003', 'MEOS003', '115', 'CHAIRUDDIN', 'CHAIRUDDIN@MEOGROUP.COM', 'staff', 'SCM SUPERVISIOR', NULL, NULL, 'active', '', NULL, '+6281365349797', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:27:00', '2017-01-19 14:50:27', 'ADMIN', 'no'),
(256, 'SPS026', 'SPS026', '251', 'EKO BUDI TARMANTO', 'BUDI.TARMANTO@MEOGROUP.COM', 'staff', 'PROJECT SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+628117717013', '', '', 0, '', '', '0000-00-00', '2017-01-18 21:27:48', '2017-01-19 14:50:58', 'ADMIN', 'no'),
(257, 'ME00008', 'ME00008', '49', 'JUANITO BASCON SANTOS ', 'JUANITO.SANTOS@MEOGROUP.COM', 'staff', 'ELECTRICIAN (KSA)', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 01:43:26', '0000-00-00 00:00:00', '', 'no'),
(258, 'ME00116', 'ME00116', '111', 'CESAR CAYABAN', 'CESAR.CAYABAN@MEOGROUP.COM', 'staff', 'INVENTORY & LOGISTICS EXECUTIVE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 01:45:36', '0000-00-00 00:00:00', '', 'no'),
(259, 'ME00117', 'ME00117', '112', 'GEMMA KALAW', 'GEMMA.KALAW@MEOGROUP.COM', 'staff', 'OFFICE MANAGER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 01:46:59', '0000-00-00 00:00:00', '', 'no'),
(260, 'ME00115', 'ME00115', '110', 'SYARLY CAHYADI', 'SYARLY.CAHYADI@MEOGROUP.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 01:50:44', '0000-00-00 00:00:00', '', 'no'),
(261, 'SGS028', 'SGS028', '234', 'FATRONI', 'FATRONI@MEOGROUP.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 17:18:58', '0000-00-00 00:00:00', '', 'no'),
(262, 'M016', 'M016', '44', 'WONG LOON SENG', 'LOONSENG.WONG@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 17:23:58', '0000-00-00 00:00:00', '', 'no'),
(263, '112', '112', '2', 'BHATA', 'BHARATRAJ+1111@SINGSYS.COM', 'staff', 'QUALITY CONTROL ENGINEER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-24 02:30:37', '2017-01-24 18:30:52', '', 'no'),
(264, '123', '123', '3', 'AKASH', 'AKASHKUMAR@SINGSYS.COM', 'staff', 'QUALITY ENGINEER', NULL, NULL, 'active', '', NULL, '', '', '', 0, '', '', '0000-00-00', '2017-01-24 04:20:45', '2017-02-06 11:34:25', 'ADMIN', 'no'),
(265, '12345678', '12345678', '4', 'QWERTY', 'A@SINGSYS.COM', 'staff', 'QCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-24 04:26:36', '2017-01-24 20:29:47', '', 'no'),
(266, '11606', '11606', '11606', 'ATTASIT  KORNCHAIYAPRUK', 'ATTASIT.K@UNITHAI.COM', 'staff', 'HEAD OF BUSINESS DEVELOPMENT, MOE', NULL, NULL, 'active', '', NULL, '+66987899887', '', '+6622548400', 270, '', '', '0000-00-00', '2017-01-25 22:27:54', '2017-01-26 16:57:45', 'ADMIN', 'no'),
(267, '11471', '11471', '11471', 'YUTH  METHEEWITUD', 'YUTH.M@UNITHAI.COM', 'staff', 'PEOPLE & ORGANIZATION DIRECTOR ,UNITHAI GROUP', NULL, NULL, 'active', '', NULL, '+66922703017', '', '+6622548417', 0, '', '', '0000-00-00', '2017-01-25 22:29:34', '2017-02-01 12:07:05', 'ADMIN', 'no'),
(268, '11074', '11074', '11074', 'PIRIYADIT  CHOOPHUNGART', 'PIRIYADIT.C@UNITHAI.COM', 'staff', 'CHIEF FINANCIAL OFFICER, UNITHAI GROUP', NULL, NULL, 'active', '', NULL, '+66817331507', '', '+6622548400', 253, '', '', '0000-00-00', '2017-01-25 22:29:56', '2017-02-01 12:09:46', 'ADMIN', 'no'),
(269, '11133', '11133', '11133', 'SASITHORN  SURIYACHAN ', 'SASITHORN.S@UNITHAI.COM', 'staff', 'MANAGER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '+66898956823', '', '+6622548400', 230, '', '', '0000-00-00', '2017-01-25 22:32:42', '2017-02-01 12:14:58', 'ADMIN', 'no'),
(270, '11045', '11045', '11045', 'SIVILAI  CHIRAMANAPHUN', 'SIVILAI.C@UNITHAI.COM', 'staff', 'ASSISTANT MANAGER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 273, '', '', '0000-00-00', '2017-01-25 22:35:06', '2017-02-01 12:25:13', 'ADMIN', 'no'),
(271, '11592', '11592', '11592', 'SUKIT  KITPATH', 'KANET.C@UNITHAI.COM', 'staff', 'SENIOR OFFICER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 258, '', '', '0000-00-00', '2017-01-25 22:35:58', '2017-02-01 13:54:46', 'ADMIN', 'no'),
(272, '11038', '11038', '11038', 'NARUMON SIRITONGKAM ', 'NARUMON.S@UNITHAI.COM', 'staff', 'OFFICER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '+66814128844', '', '+6622548400', 236, '', '', '0000-00-00', '2017-01-25 22:36:35', '2017-02-01 13:58:49', 'ADMIN', 'no'),
(273, '11426', '11426', '11426', 'BENJAWAN  PANKLOM', 'BENJAWAN.P@UNITHAI.COM', 'staff', 'ASST. OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 263, '', '', '0000-00-00', '2017-01-25 22:37:09', '2017-02-01 14:00:19', 'ADMIN', 'no'),
(274, '11533', '11533', '11533', 'CHADA  PHOONJANTANG', 'CHADA.P@UNITHAI.COM', 'staff', 'OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548401', 238, '', '', '0000-00-00', '2017-01-25 22:38:13', '2017-02-01 15:49:28', 'ADMIN', 'no'),
(275, '1304', '1304', '1304', 'DAWAPHA  JANTARAPITAK', 'DAWAPHA.D@UNITHAI.COM', 'staff', 'OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 263, '', '', '0000-00-00', '2017-01-25 22:38:34', '2017-02-01 15:50:03', 'ADMIN', 'no'),
(276, '71585', '71585', '71585', 'YAOWALUCK  THREECHADARAT', 'YAOWALUCK.T@UNIWISE.CO.TH', 'staff', 'SR. OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 273, '', '', '0000-00-00', '2017-01-25 22:39:07', '2017-02-01 15:49:11', 'ADMIN', 'no'),
(277, '71573', '71573', '71573', 'BRAD  MORPHEW', 'BRAD.MORPHEW@UNIWISE.CO.TH', 'staff', 'HEAD OF UNIWISE', NULL, NULL, 'active', '', NULL, '+66632653171', '', '+0225570602', 111, 'BRAD.MORPHEW99 ', '', '0000-00-00', '2017-01-25 22:42:04', '2017-02-01 15:51:01', 'ADMIN', 'no'),
(278, '71407', '71407', '71407', 'JON AXEL HAUGLUM', 'JON.AXEL@UNIWISE.CO.TH', 'staff', 'SR-GM OPERATION', NULL, NULL, 'active', '', NULL, '+66816286264', '', '+0225570602', 120, 'JON-AXEL73', '', '0000-00-00', '2017-01-25 22:42:24', '2017-02-01 15:57:18', 'ADMIN', 'no'),
(279, '7418', '7418', '7418', 'WARODOM THAMRONGTHANYAWONG', 'WARODOM.T@UNIWISE.CO.TH', 'staff', 'GM COMMERCIAL', NULL, NULL, 'active', '', NULL, '+66816286264', '', '+0225570602', 121, 'WARODOM.T', '', '0000-00-00', '2017-01-25 22:42:49', '2017-02-01 15:59:41', 'ADMIN', 'no'),
(280, '71006', '71006', '71006', 'ALISA PHUCHUMNIAN', 'ALISA.P@UNIWISE.CO.TH', 'staff', 'FINANCIAL BUSINESS PARTNER (FBP) ', NULL, NULL, 'active', '', NULL, '+66897731977', '', '+0225570602', 123, 'ALISA.PHUCHUMNIAN', '', '0000-00-00', '2017-01-25 22:43:19', '2017-02-01 15:59:15', 'ADMIN', 'no'),
(281, '7974', '7974', '7974', 'NARUEMOL JIRANANTASAK', 'NARUEMOL.J@UNIWISE.CO.TH', 'staff', 'HR MANAGER', NULL, NULL, 'active', '', NULL, '+66816204664', '', '+0225570602', 402, 'NARUEMOL.JIRANANTASAK', '', '0000-00-00', '2017-01-25 22:43:42', '2017-02-01 16:01:12', 'ADMIN', 'no'),
(282, '7147', '7147', '7147', 'VANDEE INTAPANYA', 'VANDEE.I@UNIWISE.CO.TH', 'staff', 'SR. COMMERCIAL OFFICER', NULL, NULL, 'active', '', NULL, '+66847281194', '', '+0225570602', 112, '', '', '0000-00-00', '2017-01-25 22:44:25', '2017-02-01 16:02:38', 'ADMIN', 'no'),
(283, '71182', '71182', '71182', 'YINGYOD THONGNAUM', 'YINYOD.T@UNIWISE.CO.TH', 'staff', 'CREWING MANAGER', NULL, NULL, 'active', '', NULL, '+66844385531', '', '+0225570602', 119, '', '', '0000-00-00', '2017-01-25 22:45:08', '2017-02-01 16:03:44', 'ADMIN', 'no'),
(284, '7057', '7057', '7057', 'VIPA TEEPAPONG', 'VIPA.T@UNIWISE.CO.TH', 'staff', 'SR. OFFICER- CREWING', NULL, NULL, 'active', '', NULL, '+66865634702', '', '+0225570602', 118, '', '', '0000-00-00', '2017-01-25 22:45:52', '2017-02-01 16:04:41', 'ADMIN', 'no'),
(285, '71436', '71436', '71436', 'PACHARAPORN THUNPRASERT', 'PACHARAPORN.T@UNIWISE.CO.TH', 'staff', 'OFFICER- CREWING', NULL, NULL, 'active', '', NULL, '+66916340650', '', '+0225570602', 117, '', '', '0000-00-00', '2017-01-25 22:46:11', '2017-02-01 16:05:24', 'ADMIN', 'no'),
(286, '71529', '71529', '71529', 'NIDA SENGTHONG', 'NIDA.S@UNIWISE.CO.TH', 'staff', 'OFFICER- CREWING', NULL, NULL, 'active', '', NULL, '+66899348670', '', '+0225570602', 404, '', '', '0000-00-00', '2017-01-25 22:46:50', '2017-02-01 16:06:13', 'ADMIN', 'no'),
(287, '71601', '71601', '71601', 'VERNON LOW', 'VERNON.LOW@UNIWISE.CO.TH', 'staff', 'MANAGER - GROUP HSQE', NULL, NULL, 'active', '', NULL, '+66632710868', '', '+66743273412', 116, '', '', '0000-00-00', '2017-01-25 22:47:56', '2017-02-01 16:07:25', 'ADMIN', 'no'),
(288, '71360', '71360', '71360', 'PATTARAPOOM SANTIWEKIN', 'PATTARAPOOM.S@UNIWISE.CO.TH', 'staff', 'HSQE ASSITANT MGE/DDPA', NULL, NULL, 'active', '', NULL, '+66819005408', '', '+66743273412', 113, '', '', '0000-00-00', '2017-01-25 22:48:18', '2017-02-01 16:08:17', 'ADMIN', 'no'),
(289, '7954', '7954', '7954', 'WORASAK BUAPLOD', 'WORASAK.B@UNIWISE.CO.TH', 'staff', 'HSQE SI', NULL, NULL, 'active', '', NULL, '+66844385528 ', '', '+66743273412', 117, '', '', '0000-00-00', '2017-01-25 22:48:34', '2017-02-01 16:09:53', 'ADMIN', 'no'),
(290, '71505', '71505', '71505', 'PAWARIT ARSAKIT', 'PAWARIT.A@UNIWISE.CO.TH', 'staff', 'HSQE SI', NULL, NULL, 'active', '', NULL, '+66819049678', '', '+66743273412', 117, '', '', '0000-00-00', '2017-01-25 22:48:57', '2017-02-01 16:12:09', 'ADMIN', 'no'),
(291, '71421', '71421', '71421', 'PANYA BOONANEKSUB', 'PANYA.B@UNIWISE.CO.TH', 'staff', 'HSQE SI - SATTAHIP', NULL, NULL, 'active', '', NULL, '+66817326258', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-25 22:49:21', '2017-02-01 16:14:19', 'ADMIN', 'no'),
(292, '7949', '7949', '7949', 'APAPAN TEPMANEE', 'APAPAN.T@UNIWISE.CO.TH', 'staff', 'HSQE ASSISTANT MGR-MANAGEMENT SYSTEM COMPLIANCE ', NULL, NULL, 'active', '', NULL, '+66819335466', '', '+66743273412', 113, '', '', '0000-00-00', '2017-01-25 22:49:55', '2017-02-01 16:39:59', 'ADMIN', 'no'),
(293, '71564', '71564', '71564', 'SUPASSORN  SAENNIEM', 'SUPASSORN.S@UNIWISE.CO.TH', 'staff', 'HSQE ADMINISTRATOR', NULL, NULL, 'active', '', NULL, '+66817389275', '', '+66743273412', 113, '', '', '0000-00-00', '2017-01-25 22:50:23', '2017-02-01 16:42:10', 'ADMIN', 'no'),
(294, '71506', '71506', '71506', 'CAPT.PONGSARIT KLOMKHUM', 'PONGSARIT.K@UNIWISE.CO.TH', 'staff', 'OPERATIONS MANAGER', NULL, NULL, 'active', '', NULL, '+66847513230', '', '+66743273412', 120, '', '', '0000-00-00', '2017-01-25 22:50:42', '2017-02-01 16:10:58', 'ADMIN', 'no'),
(295, '71462', '71462', '71462', 'CAPT.THIANCHAI DHANKULCHAI', 'THIANCHAI.D@UNIWISE.CO.TH', 'staff', 'OPERATIONS BARGE MANAGER', NULL, NULL, 'active', '', NULL, '+66922714420', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-25 22:51:01', '2017-02-01 16:43:39', 'ADMIN', 'no'),
(296, '71513', '71513', '71513', 'THEERADET SAENKET', 'THEERADET.S@UNIWISE.CO.TH', 'staff', 'JUNIOR OPERATIONS SI', NULL, NULL, 'active', '', NULL, '+66922601135', '', '+66743273412', 118, '', '', '0000-00-00', '2017-01-25 22:51:25', '2017-02-01 16:44:25', 'ADMIN', 'no'),
(297, '71578', '71578', '71578', 'SAMPAN  SAMPANWICHAIN', 'SUWIT.S@UNIWISE.CO.TH', 'staff', 'JUNIOR OPERATIONS SI', NULL, NULL, 'active', '', NULL, '+66632139896', '', '+66743273413', 118, '', '', '0000-00-00', '2017-01-25 22:52:02', '2017-02-01 16:45:14', 'ADMIN', 'no'),
(298, '71383', '71383', '71383', 'JARIYA PANKHOUSUK', 'JARIYA.P@UNIWISE.CO.TH', 'staff', 'OPS.ADMINISTRATOR', NULL, NULL, 'active', '', NULL, '+66835125117', '', '+66743273412', 118, '', '', '0000-00-00', '2017-01-25 22:52:23', '2017-02-01 16:46:25', 'ADMIN', 'no'),
(299, '71248', '71248', '71248', 'THONGCHAI PETCHARAT', 'THONGCHAI.P@UNIWISE.CO.TH', 'staff', 'BASE MANAGER -SKL', NULL, NULL, 'active', '', NULL, '+66854810190', '', '+66743273412', 124, 'THONGCHAI.P@UNIWISE.CO.TH', '', '0000-00-00', '2017-01-25 22:52:56', '2017-02-01 16:48:12', 'ADMIN', 'no'),
(300, '7773', '7773', '7773', 'PRAPHOJ JAICHAROEN', 'PRAPHOJ.J@UNIWISE.CO.TH', 'staff', 'BASE MANAGER -SATTAHIP', NULL, NULL, 'active', '', NULL, '+66819194080', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-25 22:53:21', '2017-02-01 16:48:59', 'ADMIN', 'no'),
(301, '7984', '7984', '7984', 'SITHE SOOKBAN', 'SITHE.S@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66892066089', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-25 22:53:36', '2017-02-01 16:51:27', 'ADMIN', 'no'),
(302, '71460', '71460', '71460', 'PANUWAT SANGASILAPA', 'PANUWAT@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66817504142', '', '+66743273412', 122, '', '', '0000-00-00', '2017-01-25 22:53:54', '2017-02-01 16:51:08', 'ADMIN', 'no'),
(303, '71393', '71393', '71393', 'SUTHAT KUAKOONRAT', 'SUTHAT.K@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI-SATTAHIP', NULL, NULL, 'active', '', NULL, '+66844385527', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-25 22:54:10', '2017-02-01 16:52:14', 'ADMIN', 'no'),
(304, '71395', '71395', '71395', 'WANNAPAT TABMAK', 'WANNAPAT.T@UNIWISE.CO.TH', 'staff', 'ASSISTANT TECHICAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '+66869568452', '', '+66743273412', 119, '', '', '0000-00-00', '2017-01-25 22:54:32', '2017-02-01 16:54:54', 'ADMIN', 'no'),
(305, '71543', '71543', '71543', 'SOMBOON POLSWANG', 'SOMBOON.P@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66614120903', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-25 22:54:49', '2017-02-01 16:56:54', 'ADMIN', 'no'),
(306, '71574', '71574', '71574', 'SURASAK  WEERAWATTANA', 'SURASAK.W@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66625942870', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-25 22:55:07', '2017-02-01 16:58:12', 'ADMIN', 'no'),
(307, '71600', '71600', '71600', 'SATID  THONGSRINUAN  ', 'SATID.T@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66623524546', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-25 22:55:21', '2017-02-01 16:59:48', 'ADMIN', 'no'),
(308, '71101', '71101', '71101', 'KITTIMA WANNASRI', 'KITTIMA.W@UNIWISE.CO.TH', 'staff', 'UWO PROCUREMENT MANAGER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-25 22:55:38', '0000-00-00 00:00:00', '', 'no'),
(309, '71053', '71053', '71053', 'CHARIYA CHAROENSOOK', 'CHARIYA.C@UNIWISE.CO.TH', 'staff', 'SENIOR ASSISTANT PROCUREMENT', NULL, NULL, 'active', '', NULL, '+66849683693', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-25 22:55:58', '2017-02-01 17:02:48', 'ADMIN', 'no'),
(310, '71503', '71503', '71503', 'USAVADEE KETKAEW', 'USAVADEE.K@UNIWISE.CO.TH', 'staff', 'PROCUREMENT OFFICER', NULL, NULL, 'active', '', NULL, '+66887908460', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-25 22:56:14', '2017-02-01 17:04:37', 'ADMIN', 'no'),
(311, '71373', '71373', '71373', 'THIRAYA BOONRAT', 'THIRAYA.B@UNIWISE.CO.TH', 'staff', 'ASSISTANT OFFICER - PROCUREMENT', NULL, NULL, 'active', '', NULL, '+66956287311', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-25 22:56:34', '2017-02-01 17:06:33', 'ADMIN', 'no'),
(312, '71504', '71504', '71504', 'NATTAMON KHUNTIKULANON', 'NUTTAMON.K@UNIWISE.CO.TH', 'staff', 'PROCUREMENT OFFICER', NULL, NULL, 'active', '', NULL, '+66818619973', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-25 22:56:59', '2017-02-01 17:05:37', 'ADMIN', 'no'),
(313, '71429', '71429', '71429', 'TEEKHAYU MEEKAEW', 'TEEKHAYU.M@UNIWISE.CO.TH', 'staff', 'PROCUREMENT OFFICER', NULL, NULL, 'active', '', NULL, '+66818791026', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-25 22:57:26', '2017-02-01 17:07:20', 'ADMIN', 'no'),
(314, '71456', '71456', '71456', 'NUJCHAREE JAMJAENG', 'NUJCHAREE.J@UNIWISE.CO.TH', 'staff', 'PURCHASING OFFICER - SATTAHIP', NULL, NULL, 'active', '', NULL, '+66861408982', '', '+6638247596', 0, '', '', '0000-00-00', '2017-01-25 22:57:46', '2017-02-01 17:08:11', 'ADMIN', 'no'),
(315, '71476', '71476', '71476', 'DANAI JARI', 'DANAI.J@UNIWISE.CO.TH', 'staff', 'SENIOR WAREHOUSE SUPERVISOR', NULL, NULL, 'active', '', NULL, '+660856704821', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-25 22:59:02', '2017-02-01 17:09:32', 'ADMIN', 'no'),
(316, '71020', '71020', '71020', 'AMPOL CHAREANSUP', 'AMPOL.C@UNIWISE.CO.TH', 'staff', 'ASSISTANT OFFICER - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66894662749', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-25 22:59:22', '2017-02-01 17:10:20', 'ADMIN', 'no'),
(317, '71317', '71317', '71317', 'SANTI JUATHAI', 'SANTI.J@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66947823790', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-25 22:59:39', '2017-02-01 17:11:11', 'ADMIN', 'no'),
(318, '71367', '71367', '71367', 'SOREEKIN SANGNUAL', 'SORREKIN.S@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66855605962', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-25 22:59:59', '2017-02-01 17:12:03', 'ADMIN', 'no'),
(319, '71453', '71453', '71453', 'RACHEN  CHAIONKAEW', 'RACHEN.C@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66872146414', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-25 23:00:24', '2017-02-01 17:12:43', 'ADMIN', 'no'),
(320, '71371', '71371', '71371', 'JIRAPORN SUWANNA', 'JIRAPORN.S@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66815988563', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-25 23:00:44', '2017-02-01 17:13:36', 'ADMIN', 'no'),
(321, '7994', '7994', '7994', 'SITTIPONG SAYCHUMPUN', 'SITTIPONG.SC@UNIWISE.CO.TH', 'staff', 'SENIOR CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66866863221', '', '+66743273412', 109, '', '', '0000-00-00', '2017-01-25 23:01:04', '2017-02-01 17:14:44', 'ADMIN', 'no'),
(322, '71056', '71056', '71056', 'SOPON PONPAI', 'SOPON.P@UNIWISE.CO.TH', 'staff', 'SENIOR CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66815995218', '', '+66743273412', 109, '', '', '0000-00-00', '2017-01-25 23:05:01', '2017-02-01 17:15:23', 'ADMIN', 'no'),
(323, '71359', '71359', '71359', 'KANDA RAKPAKDEE', 'KANDA.R@UNIWISE.CO.TH', 'staff', 'CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66869933681', '', '+66743273412', 106, '', '', '0000-00-00', '2017-01-26 00:11:38', '2017-02-01 17:16:37', 'ADMIN', 'no'),
(324, '71372', '71372', '71372', 'SUWANNA BOONKUMNED', 'SUWANNA.B@UNIWISE.CO.TH', 'staff', 'CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66869661880', '', '+66743273412', 106, '', '', '0000-00-00', '2017-01-26 00:13:20', '2017-02-01 17:17:39', 'ADMIN', 'no'),
(325, '71433', '71433', '71433', 'PHETBUREE SANGMANEE', 'PHETBUREE.S@UNIWISE.CO.TH', 'staff', 'CREWING OFFICER-SATTAHIP', NULL, NULL, 'active', '', NULL, '+66935808141', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-26 00:13:39', '2017-02-01 17:18:41', 'ADMIN', 'no'),
(326, '71508', '71508', '71508', 'PHILIPPE LAUVRAY', 'PHILIPPE.L@UNIWISE.CO.TH', 'staff', 'TRAINING MANAGER', NULL, NULL, 'active', '', NULL, '+66898760837', '', '+66743273412', 108, '', '', '0000-00-00', '2017-01-26 00:13:56', '2017-02-01 17:19:25', 'ADMIN', 'no'),
(327, '71567', '71567', '71567', 'KITTISAK  SUWANNSRI', 'KITTISAK.S@UNIWISE.CO.TH', 'staff', 'ASSISTANT MANAGER-TRAINING', NULL, NULL, 'active', '', NULL, '+66901392727', '', '+66743273412', 108, '', '', '0000-00-00', '2017-01-26 00:14:25', '2017-02-01 17:21:17', 'ADMIN', 'no'),
(328, '71306', '71306', '71306', 'THAMRONGSAK PANJUNSEE', 'THAMRONGSAK.P@UNIWISE.CO.TH', 'staff', 'TRAINER OFFICER', NULL, NULL, 'active', '', NULL, '+66819904757', '', '+66743273412', 108, '', '', '0000-00-00', '2017-01-26 00:14:53', '2017-02-01 17:20:15', 'ADMIN', 'no'),
(329, '71370', '71370', '71370', 'PATHOMPONG PROMYA ', 'PATHOMPONG.P@UNIWISE.CO.TH', 'staff', 'TRAINER OFFICER TRAINING COORDINATOR', NULL, NULL, 'active', '', NULL, '+66869694793', '', '+66743273412', 115, '', '', '0000-00-00', '2017-01-26 00:15:15', '2017-02-01 17:22:10', 'ADMIN', 'no'),
(330, '71463', '71463', '71463', 'MOEHAMAD  ARSYAD', 'MOEHAMAD.A@UNIWISE.CO.TH', 'staff', 'ASSISTANT MANAGER - WORKSHOP & STORES', NULL, NULL, 'active', '', NULL, '+660854810186', '', '+66743273412', 110, '', '', '0000-00-00', '2017-01-26 00:15:38', '2017-02-01 17:22:53', 'ADMIN', 'no'),
(331, '0000000000001', '0000000000001', '0000000000001', 'QUEK YEOW RONG', 'YR.QUEK@MEOGROUP.COM', 'staff', 'IT EXECUTIVE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '2017-12-31', '2017-02-01 00:13:53', '0000-00-00 00:00:00', '', 'no'),
(332, 'KDFBKZVNSJH', 'KDFBKZVNSJH', 'SDLKHVLDJN', 'MZXBVISBVKJ', 'KSJHV@SKFF.CSOJ', 'staff', 'KHASFJSAB', 'DKHDSVKK', 'KDSJVSDVB', 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '2017-02-22', '2017-02-21 23:12:33', '0000-00-00 00:00:00', '', 'no'),
(333, 'sanasingsys', 'e45', '123gh', 'Sana Rizwan', 'sana@singsys.com', 'staff', 'PM', '', '', 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-06-16 03:53:18', '0000-00-00 00:00:00', '', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `meo_meoUsers_relations_entity`
--

CREATE TABLE `meo_meoUsers_relations_entity` (
  `meo_user_id` int(11) UNSIGNED NOT NULL,
  `relation_id` int(11) NOT NULL,
  `type` enum('reports_to','dept','org','vessel','location','client_view_access') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_meoUsers_relations_entity`
--

INSERT INTO `meo_meoUsers_relations_entity` (`meo_user_id`, `relation_id`, `type`) VALUES
(131, 29, 'dept'),
(137, 35, 'dept'),
(136, 34, 'dept'),
(132, 31, 'dept'),
(133, 32, 'dept'),
(134, 32, 'dept'),
(145, 41, 'dept'),
(144, 40, 'dept'),
(142, 39, 'dept'),
(143, 39, 'dept'),
(139, 37, 'dept'),
(140, 38, 'dept'),
(141, 38, 'dept'),
(146, 42, 'dept'),
(213, 56, 'dept'),
(214, 56, 'dept'),
(150, 45, 'dept'),
(209, 54, 'dept'),
(211, 54, 'dept'),
(212, 54, 'dept'),
(192, 53, 'dept'),
(193, 53, 'dept'),
(196, 53, 'dept'),
(194, 53, 'dept'),
(195, 53, 'dept'),
(197, 53, 'dept'),
(198, 53, 'dept'),
(199, 53, 'dept'),
(200, 53, 'dept'),
(201, 53, 'dept'),
(202, 53, 'dept'),
(203, 53, 'dept'),
(204, 53, 'dept'),
(205, 53, 'dept'),
(206, 53, 'dept'),
(207, 53, 'dept'),
(208, 53, 'dept'),
(181, 52, 'dept'),
(183, 52, 'dept'),
(185, 52, 'dept'),
(184, 52, 'dept'),
(186, 52, 'dept'),
(187, 52, 'dept'),
(188, 52, 'dept'),
(189, 52, 'dept'),
(190, 52, 'dept'),
(191, 52, 'dept'),
(176, 51, 'dept'),
(177, 51, 'dept'),
(178, 51, 'dept'),
(179, 51, 'dept'),
(180, 51, 'dept'),
(169, 50, 'dept'),
(170, 50, 'dept'),
(171, 50, 'dept'),
(172, 50, 'dept'),
(173, 50, 'dept'),
(174, 50, 'dept'),
(175, 50, 'dept'),
(162, 49, 'dept'),
(163, 49, 'dept'),
(164, 49, 'dept'),
(165, 49, 'dept'),
(166, 49, 'dept'),
(167, 49, 'dept'),
(168, 49, 'dept'),
(160, 48, 'dept'),
(161, 48, 'dept'),
(154, 47, 'dept'),
(155, 47, 'dept'),
(157, 47, 'dept'),
(158, 47, 'dept'),
(159, 47, 'dept'),
(151, 46, 'dept'),
(152, 46, 'dept'),
(153, 46, 'dept'),
(238, 65, 'dept'),
(239, 65, 'dept'),
(240, 65, 'dept'),
(237, 64, 'dept'),
(235, 63, 'dept'),
(236, 63, 'dept'),
(234, 62, 'dept'),
(230, 61, 'dept'),
(231, 61, 'dept'),
(232, 61, 'dept'),
(233, 61, 'dept'),
(241, 61, 'dept'),
(242, 61, 'dept'),
(243, 61, 'dept'),
(244, 61, 'dept'),
(245, 61, 'dept'),
(246, 61, 'dept'),
(247, 61, 'dept'),
(248, 61, 'dept'),
(249, 61, 'dept'),
(250, 61, 'dept'),
(252, 61, 'dept'),
(251, 61, 'dept'),
(253, 61, 'dept'),
(254, 61, 'dept'),
(255, 61, 'dept'),
(256, 61, 'dept'),
(56, 11, 'dept'),
(58, 17, 'dept'),
(65, 7, 'dept'),
(62, 17, 'dept'),
(73, 17, 'dept'),
(127, 17, 'dept'),
(124, 17, 'dept'),
(44, 28, 'dept'),
(87, 28, 'dept'),
(45, 28, 'dept'),
(76, 28, 'dept'),
(120, 28, 'dept'),
(98, 20, 'dept'),
(112, 20, 'dept'),
(217, 20, 'dept'),
(52, 20, 'dept'),
(23, 27, 'dept'),
(86, 27, 'dept'),
(83, 27, 'dept'),
(34, 27, 'dept'),
(70, 27, 'dept'),
(93, 27, 'dept'),
(125, 27, 'dept'),
(95, 27, 'dept'),
(99, 27, 'dept'),
(38, 27, 'dept'),
(74, 26, 'dept'),
(64, 26, 'dept'),
(39, 26, 'dept'),
(26, 26, 'dept'),
(30, 26, 'dept'),
(42, 26, 'dept'),
(103, 26, 'dept'),
(72, 25, 'dept'),
(78, 25, 'dept'),
(69, 25, 'dept'),
(111, 25, 'dept'),
(100, 25, 'dept'),
(110, 25, 'dept'),
(114, 25, 'dept'),
(121, 25, 'dept'),
(37, 24, 'dept'),
(29, 24, 'dept'),
(63, 24, 'dept'),
(55, 24, 'dept'),
(67, 24, 'dept'),
(24, 24, 'dept'),
(47, 24, 'dept'),
(68, 24, 'dept'),
(25, 24, 'dept'),
(35, 24, 'dept'),
(128, 24, 'dept'),
(101, 24, 'dept'),
(116, 24, 'dept'),
(96, 24, 'dept'),
(122, 24, 'dept'),
(115, 24, 'dept'),
(109, 24, 'dept'),
(123, 24, 'dept'),
(104, 24, 'dept'),
(118, 24, 'dept'),
(130, 24, 'dept'),
(27, 23, 'dept'),
(75, 23, 'dept'),
(46, 23, 'dept'),
(117, 23, 'dept'),
(36, 21, 'dept'),
(53, 16, 'dept'),
(107, 16, 'dept'),
(57, 15, 'dept'),
(61, 15, 'dept'),
(28, 14, 'dept'),
(77, 14, 'dept'),
(31, 14, 'dept'),
(41, 14, 'dept'),
(50, 14, 'dept'),
(48, 14, 'dept'),
(14, 13, 'dept'),
(13, 13, 'dept'),
(18, 13, 'dept'),
(15, 13, 'dept'),
(11, 13, 'dept'),
(12, 13, 'dept'),
(16, 13, 'dept'),
(22, 13, 'dept'),
(19, 13, 'dept'),
(71, 13, 'dept'),
(20, 13, 'dept'),
(17, 13, 'dept'),
(89, 13, 'dept'),
(90, 13, 'dept'),
(102, 13, 'dept'),
(126, 13, 'dept'),
(21, 13, 'dept'),
(216, 13, 'dept'),
(51, 12, 'dept'),
(66, 12, 'dept'),
(218, 12, 'dept'),
(113, 8, 'dept'),
(92, 8, 'dept'),
(94, 8, 'dept'),
(54, 8, 'dept'),
(85, 8, 'dept'),
(84, 8, 'dept'),
(225, 60, 'dept'),
(226, 60, 'dept'),
(227, 60, 'dept'),
(229, 60, 'dept'),
(228, 60, 'dept'),
(221, 59, 'dept'),
(223, 59, 'dept'),
(224, 59, 'dept'),
(219, 58, 'dept'),
(49, 11, 'dept'),
(129, 11, 'dept'),
(105, 11, 'dept'),
(88, 11, 'dept'),
(138, 36, 'dept'),
(266, 66, 'dept'),
(119, 7, 'dept'),
(119, 1, 'location'),
(119, 56, 'reports_to'),
(267, 66, 'dept'),
(268, 66, 'dept'),
(269, 67, 'dept'),
(156, 47, 'dept'),
(271, 67, 'dept'),
(272, 67, 'dept'),
(273, 67, 'dept'),
(276, 67, 'dept'),
(274, 67, 'dept'),
(275, 67, 'dept'),
(277, 69, 'dept'),
(278, 69, 'dept'),
(280, 69, 'dept'),
(279, 69, 'dept'),
(281, 69, 'dept'),
(282, 69, 'dept'),
(283, 70, 'dept'),
(284, 70, 'dept'),
(286, 70, 'dept'),
(287, 71, 'dept'),
(288, 71, 'dept'),
(289, 71, 'dept'),
(294, 72, 'dept'),
(291, 71, 'dept'),
(292, 71, 'dept'),
(293, 71, 'dept'),
(295, 72, 'dept'),
(296, 72, 'dept'),
(297, 72, 'dept'),
(298, 72, 'dept'),
(299, 73, 'dept'),
(300, 73, 'dept'),
(302, 74, 'dept'),
(301, 74, 'dept'),
(303, 74, 'dept'),
(304, 74, 'dept'),
(305, 74, 'dept'),
(306, 74, 'dept'),
(307, 74, 'dept'),
(309, 75, 'dept'),
(310, 75, 'dept'),
(312, 75, 'dept'),
(311, 75, 'dept'),
(313, 75, 'dept'),
(314, 75, 'dept'),
(315, 76, 'dept'),
(316, 76, 'dept'),
(317, 76, 'dept'),
(318, 76, 'dept'),
(319, 76, 'dept'),
(320, 76, 'dept'),
(321, 79, 'dept'),
(322, 79, 'dept'),
(323, 79, 'dept'),
(324, 79, 'dept'),
(325, 79, 'dept'),
(326, 77, 'dept'),
(328, 77, 'dept'),
(327, 77, 'dept'),
(329, 77, 'dept'),
(330, 78, 'dept'),
(147, 43, 'dept'),
(147, 3, 'location'),
(135, 33, 'dept'),
(135, 202, 'org'),
(135, 203, 'org'),
(135, 204, 'org'),
(60, 7, 'dept'),
(60, 1, 'location'),
(148, 43, 'dept'),
(148, 3, 'location'),
(264, 42, 'dept'),
(264, 43, 'dept'),
(264, 181, 'org'),
(264, 112, 'vessel'),
(264, 1, 'location'),
(264, 11, 'reports_to'),
(182, 57, 'dept'),
(182, 58, 'dept'),
(182, 1, 'location'),
(182, 2, 'location'),
(182, 11, 'reports_to'),
(182, 12, 'reports_to'),
(182, 0, 'client_view_access'),
(215, 43, 'dept'),
(215, 57, 'dept'),
(215, 3, 'location'),
(215, 11, 'reports_to'),
(220, 58, 'dept');

-- --------------------------------------------------------

--
-- Table structure for table `meo_notifications_list`
--

CREATE TABLE `meo_notifications_list` (
  `id_notification` int(11) NOT NULL,
  `type` enum('capex','claims','travel') NOT NULL DEFAULT 'capex',
  `request_id` int(11) NOT NULL,
  `notification_type` enum('approved','rejected','pending','commented','fully_approved') DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `message_status` enum('read','unread') DEFAULT 'unread',
  `html_message` text NOT NULL,
  `count_flag` enum('read','unread') NOT NULL DEFAULT 'unread',
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_organization_chart_entity`
--

CREATE TABLE `meo_organization_chart_entity` (
  `id_chart` int(11) UNSIGNED NOT NULL,
  `chart_title` varchar(150) NOT NULL,
  `image_url` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_organization_chart_entity`
--

INSERT INTO `meo_organization_chart_entity` (`id_chart`, `chart_title`, `image_url`, `status`, `created_on`, `updated_on`) VALUES
(1, 'ORG CHART OVERVIEW', 'OrgChart_1484882593.pdf', 'Active', '2017-01-06 08:37:56', '2017-01-20 11:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `meo_org_groups_detail`
--

CREATE TABLE `meo_org_groups_detail` (
  `id` int(11) NOT NULL,
  `id_groups_members` int(11) UNSIGNED NOT NULL,
  `group_functions` text NOT NULL,
  `group_note` text NOT NULL,
  `country_city` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_org_groups_detail`
--

INSERT INTO `meo_org_groups_detail` (`id`, `id_groups_members`, `group_functions`, `group_note`, `country_city`, `added_on`, `updated_on`, `updated_by`) VALUES
(1, 95, 'AESTRTRYT', 'WETRYY', '2', '2017-02-07 01:42:06', '2008-03-17 15:49:48', 'ADMIN'),
(2, 107, '', '', '', '2017-02-07 01:42:06', '2007-02-17 15:12:06', 'ADMIN'),
(3, 93, '', '', '', '2017-02-08 02:59:59', '2008-02-17 16:29:59', 'ADMIN'),
(4, 94, '', '', '', '2017-02-08 04:04:06', '2008-02-17 17:34:06', 'ADMIN'),
(5, 65, '', '', '3', '2017-04-27 12:23:33', '2029-06-17 22:21:46', 'ADMIN'),
(6, 261, '', '', '4', '2017-07-07 17:07:06', '2007-07-17 22:37:06', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `meo_org_groups_entity`
--

CREATE TABLE `meo_org_groups_entity` (
  `id_org_group` int(11) UNSIGNED NOT NULL,
  `org_group_name` varchar(200) NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `org_group_order` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_org_groups_entity`
--

INSERT INTO `meo_org_groups_entity` (`id_org_group`, `org_group_name`, `id_region`, `org_group_order`, `status`, `added_on`, `updated_on`) VALUES
(17, 'GROUP FINANCE', 29, 1, 'active', '2017-01-31 22:03:59', '2017-02-02 11:46:01'),
(21, 'SHARED ACCOUNTING SERVICES', 29, 2, 'active', '2017-02-01 17:29:58', '2017-02-02 13:34:18'),
(27, 'THAI/ASEAN BU- INDONESIA', 26, 1, 'active', '2017-02-01 17:58:52', '2017-02-02 11:25:00'),
(29, 'GROUP TECHNICAL & OPERATIONS', 29, 3, 'active', '2017-02-01 18:52:11', '2017-02-02 11:58:42'),
(30, 'ADMINISTRATION', 29, 4, 'active', '2017-02-01 19:27:07', '0000-00-00 00:00:00'),
(31, 'EOS', 58, 1, 'active', '2017-02-01 19:27:32', '2017-02-03 13:36:49'),
(33, 'FINANCE & SUPPLY CHAIN ME', 36, 1, 'active', '2017-02-01 19:37:03', '0000-00-00 00:00:00'),
(34, 'GROUP COMMERCIAL', 29, 5, 'active', '2017-02-01 19:39:06', '0000-00-00 00:00:00'),
(36, 'GROUP FLEET PLANNED MAINTENANCE SYSTEM', 29, 6, 'active', '2017-02-01 19:47:06', '0000-00-00 00:00:00'),
(37, 'GROUP HSQE', 29, 7, 'active', '2017-02-01 19:48:05', '0000-00-00 00:00:00'),
(38, 'GROUP IT & SAP TEAM', 29, 8, 'active', '2017-02-01 19:50:09', '0000-00-00 00:00:00'),
(39, 'GROUP KNOWLEDGE MANAGEMENT CENTRE', 29, 9, 'active', '2017-02-01 19:50:39', '0000-00-00 00:00:00'),
(40, 'GROUP SUPPLY CHAIN MANAGEMENT (SCM)', 29, 10, 'active', '2017-02-01 19:55:15', '0000-00-00 00:00:00'),
(41, 'GROUP TRAINING', 29, 11, 'active', '2017-02-01 19:59:51', '0000-00-00 00:00:00'),
(44, 'SPECIALISED VESSEL OFFSHORE SERVICES', 34, 1, 'active', '2017-02-01 21:40:17', '0000-00-00 00:00:00'),
(45, 'QATAR', 55, 1, 'active', '2017-02-01 22:02:16', '0000-00-00 00:00:00'),
(46, 'SAUDI ARABIA', 59, 1, 'active', '2017-02-01 22:02:49', '0000-00-00 00:00:00'),
(48, 'EOS OPERATIONS', 58, 2, 'active', '2017-02-01 22:24:11', '2017-02-03 13:46:49'),
(49, 'GROUP CREWING AUS', 35, 1, 'active', '2017-02-01 22:25:06', '0000-00-00 00:00:00'),
(50, 'GROUP CREWING', 29, 12, 'active', '2017-02-01 22:26:51', '0000-00-00 00:00:00'),
(51, 'GROUP HUMAN RESOURCES', 29, 13, 'active', '2017-02-01 22:27:30', '0000-00-00 00:00:00'),
(52, 'GROUP HUMAN RESOURCES ME', 36, 2, 'active', '2017-02-01 22:28:19', '0000-00-00 00:00:00'),
(53, 'MIDDLE EAST BU', 36, 3, 'active', '2017-02-01 22:36:23', '0000-00-00 00:00:00'),
(54, 'TECHNICAL/ OPERATIONS ME', 36, 4, 'active', '2017-02-01 22:55:35', '0000-00-00 00:00:00'),
(55, 'THAI/ ASEAN BU- BRUNEI', 31, 1, 'active', '2017-02-01 23:00:26', '0000-00-00 00:00:00'),
(56, 'THAI/ASEAN BU- MALAYSIA', 30, 1, 'active', '2017-02-01 23:05:29', '0000-00-00 00:00:00'),
(57, 'ASEAN', 29, 14, 'active', '2017-02-01 23:46:05', '0000-00-00 00:00:00'),
(58, 'THAI/ASEAN BU- UWO', 61, 1, 'active', '2017-02-01 23:50:20', '0000-00-00 00:00:00'),
(59, 'SINGSYS TESTING GROUP', 36, 5, 'active', '2017-02-02 22:26:43', '2017-02-03 14:57:55'),
(60, 'SINGSYS PTE LTD', 26, 2, 'active', '2017-02-03 21:11:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_org_groups_members_entity`
--

CREATE TABLE `meo_org_groups_members_entity` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_org_group` int(11) UNSIGNED NOT NULL,
  `member_group_name` varchar(225) NOT NULL,
  `member_group_email` varchar(225) NOT NULL,
  `front_order` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_org_groups_members_entity`
--

INSERT INTO `meo_org_groups_members_entity` (`id`, `id_org_group`, `member_group_name`, `member_group_email`, `front_order`) VALUES
(64, 27, 'OPERATIONS INDO', 'OPSINDO@MEOGROUP.COM', 0),
(65, 27, 'MARKETING JKT', 'MARKETING.JKT@SGS-OFFSHORE.COM', 0),
(66, 27, 'INDONESIA STAFF', 'ASEAN_ID@MEOGROUP.COM', 0),
(67, 27, 'CREWING JKT', 'CREWING_JKT@MEOGROUP.COM', 0),
(68, 27, 'SHIPYARD ENQUIRY', 'SHIPYARD.ENQUIRY@MEOGROUP.COM', 0),
(69, 27, 'EOS FINANCE', 'EOS.FIN-JKK@MEOGROUP.COM', 0),
(70, 30, 'ADMIN SG', 'ADMIN_SG@MEOGROUP.COM', 0),
(93, 33, 'FINANCE ME', 'FINANCE_ME@MEOGROUP.COM', 2),
(94, 33, 'PURCHASING ME', 'PURCHASING_ME@MEOGROUP.COM', 3),
(95, 33, 'ME PURCHASERS', 'ME_PURCHASERS@MEOGROUP.COM', 1),
(96, 34, 'COMMUNICATION', 'COMMUNICATION@MEOGROUP.COM', 0),
(97, 34, 'SALES AND PURCHASE', 'SNP@MEOGROUP.COM', 0),
(98, 34, 'GROUP COMMERCIAL', 'GROUPCOMMERCIAL@MEOGROUP.COM', 0),
(99, 34, 'QUIZ', 'QUIZ@MEOGROUP.COM', 0),
(100, 34, 'MARKETING SG', 'MARKETING_SG@MEOGROUP.COM', 0),
(107, 17, 'ACCOUNTS TEAMLEADERS SG', 'ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM', 0),
(108, 17, 'FPA', 'FPA@MEOGROUP.COM', 0),
(109, 17, 'CONSOL', 'CONSOL@MEOGROUP.COM', 0),
(110, 17, 'CHARTER SUMMARY', 'CHARTERSUMMARY@MEOGROUP.COM', 0),
(111, 17, 'FINANCE MGRS SG', 'FINANCE_MGRS_SG@MEOGROUP.COM', 0),
(112, 36, 'FPM', 'FPM@MEOGROUP.COM', 0),
(113, 37, 'HSQE SG', 'HSQE_SG@MEOGROUP.COM', 0),
(117, 38, 'IT INFRASTRUCTURE', 'ITHELPDESKTEAM@MEOGROUP.COM', 0),
(118, 38, 'MEO APP', 'MEO_APP@MEOGROUP.COM', 0),
(119, 38, 'SAP SUPPORT', 'SAP_SUPPORT@MEOGROUP.COM', 0),
(120, 39, 'KM GROUP', 'KMGROUP@MEOGROUP.COM', 0),
(121, 40, 'PURCHASING SG', 'PURCHASING_SG@MEOGROUP.COM', 0),
(122, 40, 'PURCHASING BATAM', 'PURCHASING_BATAM@MEOGROUP.COM', 0),
(123, 29, 'PROJECT DBS', 'PROJECT.DBS@MEOGROUP.COM', 0),
(124, 29, 'OPERATIONS SG', 'OPSSGP@MEOGROUP.COM', 0),
(125, 29, 'TECHNICAL SG', 'TECHNICAL_SG@MEOGROUP.COM', 0),
(126, 29, 'VPN SGP', 'VPN_SGP@MEOGROUP.COM', 0),
(127, 29, 'GENERAL FLEET GROUP', 'GFGROUP@MEOGROUP.COM', 0),
(128, 29, 'ROVING FLEET BT', 'ROVING_FLEET_BT@MEOGROUP.COM', 0),
(129, 29, 'NEWBUILD ENGINEERING SG', 'NEWBUILD_ENGINEERING_SG@MEOGROUP.COM', 0),
(130, 41, 'TRAINING SG', 'TRAINING_SG@MEOGROUP.COM', 0),
(143, 21, 'ACCOUNTS RECEIVABLE', 'AR_SG@MEOGROUP.COM', 0),
(144, 21, 'ACCOUNTS PAYABLE', 'ACCOUNTS_AP_SG@MEOGROUP.COM', 0),
(145, 21, 'FINANCE SG', 'FINANCE_SG@MEOGROUP.COM', 0),
(146, 21, 'DRP TEAM', 'DRP_TEAM@MEOGROUP.COM', 0),
(147, 21, 'GENERAL LEDGER ', 'GL_SG@MEOGROUP.COM', 0),
(151, 44, 'SPECIAL FLEET GROUP', 'SFGROUP@MEOGROUP.COM', 0),
(152, 44, 'DP/SUBSEA FLEET', 'SUBSEADP@MEOGROUP.COM', 0),
(153, 44, 'SVS', 'SVS@MEOGROUP.COM', 0),
(154, 45, 'QATAR OFFICE', 'QATAR.OFFICE@MEOGROUP.COM', 0),
(155, 46, 'ME MARINE SYSTEM', 'MEMARINESYSTEM@MEOGROUP.COM', 0),
(181, 49, 'PAYROLL AUS', 'PAYROLL_AUS@MEOGROUP.COM', 0),
(182, 50, 'GROUP PAYROLL SG', 'GROUP_PAYROLL_SG@MEOGROUP.COM', 0),
(183, 50, 'CREWING SG', 'CREWING_SG@MEOGROUP.COM', 0),
(184, 50, 'CREW PAYROLL', 'CREW_PAYROLL@MEOGROUP.COM', 0),
(185, 51, 'HR SG', 'HR@MEOGROUP.COM', 0),
(186, 52, 'ADMIN ME', 'ADMIN_ME@MICLYNEXPRESSOFFSHORE.COM', 5),
(187, 52, 'HR ME', 'HR_ME@MEOGROUP.COM', 4),
(188, 53, 'HSQE ME', 'HSQE_ME@MEOGROUP.COM', 6),
(189, 53, 'HSQE DUBAI', 'HSQE_DUBAI@MEOGROUP.COM', 7),
(190, 53, 'COMMERCIAL ME', 'COMMERCIAL_ME@MEOGROUP.COM', 8),
(191, 53, 'CREWING ME', 'CREWING_ME@MEOGROUP.COM', 9),
(192, 53, 'ME STAFF', 'ME_STAFF@MEOGROUP.COM', 10),
(193, 53, 'ME SBGS GHASA', 'MEOGHASA@MEOGROUP.COM', 11),
(194, 53, 'PROJECT GHASHA UAE', 'PROJECTGHASHAUAE@MEOGROUP.COM', 12),
(195, 53, 'ME CREW FEEDBACK', 'MECREWFEEDBACK@MEOGROUP.COM', 13),
(196, 53, 'OPERATIONS ME', 'OPSDEP@MEOGROUP.COM', 14),
(197, 53, 'SSAS ME', 'SSAS_ME@MEOGROUP.COM', 15),
(198, 54, 'OPERATION KSA', 'OPS_KSA@MEOGROUP.COM', 0),
(199, 54, 'TECHNICAL ME', 'TECHNICAL_ME@MEOGROUP.COM', 0),
(200, 54, 'OPERATIONS ME', 'OPS_ME@MEOGROUP.COM', 0),
(201, 54, 'OPERATIONS UAE', 'OPSUAE@MEOGROUP.COM', 0),
(202, 55, 'BRUNEI', 'ASEAN_BN@MEOGROUP.COM', 0),
(203, 55, 'BRUNEI OPS', 'BRUNEI.OPS@MEOGROUP.COM', 0),
(204, 55, 'HSQE BRUNEI', 'HSQE_BRUNEI@MEOGROUP.COM', 0),
(205, 56, 'OPERATIONS MY', 'OPSMSIA@MEOGROUP.COM', 0),
(206, 56, 'MY STAFF', 'ASEAN_MY@MEOGROUP.COM', 0),
(207, 57, 'ASEAN SG', 'ASEAN_SG@MEOGROUP.COM', 0),
(208, 57, 'ASEAN LT', 'ASEAN_LT@MEOGROUP.COM', 0),
(209, 58, 'HSQE TH', 'HSQE_TH@MEOGROUP.COM', 0),
(210, 58, 'OPERATIONS TH', 'OPSTHAI@MEOGROUP.COM', 0),
(211, 58, 'CREWING TH', 'CREWING_TH@MEOGROUP.COM', 0),
(212, 31, 'EOS', 'EOS@MEOGROUP.COM', 0),
(213, 31, 'ROW COMMERCIAL', 'CHARTERING@MEOGROUP.COM', 0),
(214, 31, 'FINANCE EOS', 'FINANCE_EOS@MEOGROUP.COM', 0),
(215, 31, 'AUS STAFF', 'AUS_STAFF@MEOGROUP.COM', 0),
(236, 48, 'EOS OPERATIONS', 'OPS@MEOGROUP.COM', 0),
(237, 48, 'CB1 MOB', 'CB1MOB@MEOGROUP.COM', 0),
(238, 48, 'GHL MMA', 'BZAN.OPS@MEOGROUP.COM', 0),
(239, 48, 'BZAN.OPS', 'BZAN.OPS@MEOGROUP.COM', 0),
(240, 48, 'SLP-OPS', 'SLP-OPS@MEOGROUP.COM', 0),
(241, 48, 'BUKOM.OPS', 'BUKOM.OPS@MEOGROUP.COM', 0),
(242, 48, 'TFA01', 'TFA01@MEOGROUP.COM', 0),
(243, 48, 'HMC.ICHTHYS', 'HMC.ICHTHYS@MEOGROUP.COM', 0),
(244, 48, 'VEGAPLEYADE', 'VEGAPLEYADE@MEOGROUP.COM', 0),
(245, 48, 'SK316 EOS', 'SK316.EOS@MEOGROUP.COM', 0),
(246, 48, 'EOS ME', 'EOS_ME@MEOGROUP.COM', 0),
(247, 48, 'EOS.MLS01', 'EOS_MLS01@MEOGROUP.COM', 0),
(248, 48, 'EOS BDM', 'EOS_BDM@MEOGROUP.COM', 0),
(249, 48, 'EOS ZTK1B', 'EOS_ZTK1B@MEOGROUP.COM', 0),
(250, 48, 'EOS BBPL', 'EOS_BBPL@MEOGROUP.COM', 0),
(251, 48, 'EOS JKK', 'EOS_JKK@MEOGROUP.COM', 0),
(252, 48, 'EOS.OPS JKK', 'EOS.OPS_JKK@MEOGROUP.COM', 0),
(253, 48, 'EOS.OPS MMA.PR02', 'EOS.OPS.MMA.PR02@MEOGROUP.COM', 0),
(254, 48, 'EOS.KMO', 'EOS.KMO@MEOGROUP.COM', 0),
(255, 48, 'SAIPEM.ICHTHYS', 'SAIPEM.ICHTHYS@MEOGROUP.COM', 0),
(256, 48, 'OPERATIONS AUS', 'OPERATIONS_AUS@MEOGROUP.COM', 0),
(259, 59, 'BHARATRAJ', 'BHARATRAJ@SINGSYS.COM', 0),
(260, 59, 'BHARATRAJ', 'BHARATRAJ+1@SINGSYS.COM', 0),
(261, 60, 'BHARATRAJ', 'BHARATRAJ@SINGSYS.COM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meo_org_groups_users_detail`
--

CREATE TABLE `meo_org_groups_users_detail` (
  `id_groups_members` int(10) UNSIGNED NOT NULL,
  `id_meo_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_org_groups_users_detail`
--

INSERT INTO `meo_org_groups_users_detail` (`id_groups_members`, `id_meo_user`) VALUES
(65, 11),
(65, 12),
(65, 13),
(65, 14),
(65, 16),
(65, 19),
(65, 22),
(65, 23),
(65, 24),
(65, 25),
(65, 37),
(65, 38),
(65, 42),
(65, 11),
(65, 12),
(65, 13),
(65, 14),
(65, 16),
(65, 19),
(65, 22),
(65, 23),
(65, 24),
(65, 25),
(65, 37),
(65, 38),
(65, 42);

-- --------------------------------------------------------

--
-- Table structure for table `meo_sections_entity`
--

CREATE TABLE `meo_sections_entity` (
  `id_section` int(11) UNSIGNED NOT NULL,
  `section_title` varchar(250) NOT NULL,
  `alias` enum('admin','contacts','actiontracker') NOT NULL DEFAULT 'admin',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_sections_entity`
--

INSERT INTO `meo_sections_entity` (`id_section`, `section_title`, `alias`, `created_on`) VALUES
(1, 'Admin / Organisation Setup', 'admin', '2016-11-28 14:20:12'),
(2, 'Admin / Vessel Setup', 'admin', '2016-11-28 14:20:36'),
(3, 'Admin / Admin Setup', 'admin', '2016-11-28 14:21:33'),
(4, 'Admin / Client Setup', 'admin', '2016-11-28 14:21:33'),
(5, 'Admin / Others', 'admin', '2016-11-28 14:21:53'),
(6, 'Contacts /<br> Shore Personnel', 'contacts', '2016-12-04 18:22:26'),
(7, 'Contact /<br> Vessels (MEO)', 'contacts', '2016-12-04 18:23:07'),
(8, 'Contacts /<br> 3rd Party Vessels', 'contacts', '2016-12-04 18:23:07'),
(9, 'Contacts /<br> Organisation Groups', 'contacts', '2016-12-04 18:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `meo_shore_addresses`
--

CREATE TABLE `meo_shore_addresses` (
  `id_address` int(11) UNSIGNED NOT NULL,
  `shore_region` varchar(120) NOT NULL,
  `address` text NOT NULL,
  `full_address` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_shore_addresses`
--

INSERT INTO `meo_shore_addresses` (`id_address`, `shore_region`, `address`, `full_address`, `status`, `created_on`, `updated_on`) VALUES
(3, 'AUSTRALIA', 'FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA', 'MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959', 'Active', '2017-01-10 02:28:07', '2017-01-20 11:56:17'),
(4, 'BANGKOK, THAILAND ', 'BANGKOK THAILAND', 'UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND', 'Active', '2017-01-31 22:32:31', '2017-02-02 14:00:03'),
(5, 'ABU DHABI, UAE', 'Abu Dhabi - United Arab Emirates', 'MICLYN EXPRESS OFFSHORE SHIP MANAGEMENT LLC, OFFICE NO. 601-3B, AL SAMAN TOWER, TOWER B, HAMDAN STREET, PO BOX 10807, ABU DHABI, UAE', 'Active', '2017-01-31 22:35:18', '0000-00-00 00:00:00'),
(6, 'DUBAI, UAE', 'Dubai - United Arab Emirates', 'EXPRESS OFFSHORE TRANSPORT (UAE) LLC, PORT SAID ACICO BUSINESS PARK OFFICE, 1ST FLOOR OFFICE 100 A13, DUBAI, UAE', 'Active', '2017-01-31 22:36:25', '0000-00-00 00:00:00'),
(7, 'BRUNEI', 'Brunei', 'MICLYN EXPRESS OFFSHORE (B) SDN BHD, NO.6, SIMPANG 28-5, JALAN MAULANA, KUALA BELAIT KA 1931, BRUNEI DARUSSALAM', 'Active', '2017-01-31 22:37:31', '0000-00-00 00:00:00'),
(8, 'MIRI, MALAYSIA', 'MIRI SARAWAK MALAYSIA', 'BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA', 'Active', '2017-01-31 22:38:53', '2017-02-02 14:00:10'),
(9, 'SATTAHIP,  THAILAND', 'Sattahip Chon Buri Thailand', 'UNIWISE OFFSHORE LTD, 234/37-38 MU. 6, TAMBOL SATTAHIP, TAMPHUR SATTAHIP, CHONBURI 20180, THAILAND', 'Active', '2017-01-31 22:40:50', '0000-00-00 00:00:00'),
(10, 'SONGKHLA, THAILAND', 'Songkhla Thailand', 'UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND', 'Active', '2017-01-31 22:41:41', '2017-02-02 13:59:51'),
(11, 'JAKARTA, INDONESIA', 'Jakarta Selatan, Jalan Kuningan Barat IV, West Kuningan, South Jakarta City, Special Capital Region of Jakarta, Indonesia', 'PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 ', 'Active', '2017-02-01 18:28:22', '2017-02-02 14:00:49'),
(12, 'QATAR', 'QATAR PETROLEUM, WEST BAY, DOHA, QATAR', 'MICLYN EXPRESS OFFSHORE 14TH FLOOR COMMERCIAL BANK TOWER WEST BAY, DOHA - QATAR DOHA QATAR  97444528374', 'Active', '2017-02-01 20:01:44', '2017-02-02 14:02:53'),
(14, 'SAUDI ARABIA', '31941 Rahima, Riyadh, Saudi Arabia', 'BARWIL AGENCIES BLDG P.O BOX 174, RAHIMA 31941 RAS TANURA, SAUDI ARABIA  966136681376', 'Active', '2017-02-01 22:04:46', '0000-00-00 00:00:00'),
(15, 'TEST', 'KALYANPUR (EAST), LUCKNOW, UTTAR PRADESH, INDIA', 'ASDF ASFD SFD ', 'Active', '2017-02-21 21:31:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_thirdParty_vesselName`
--

CREATE TABLE `meo_thirdParty_vesselName` (
  `id_third_vessel_name` int(11) UNSIGNED NOT NULL,
  `vessel_name` varchar(150) NOT NULL,
  `id_third_vessel_type` int(11) UNSIGNED NOT NULL,
  `remarks` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `status_reason` varchar(150) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_thirdParty_vesselName`
--

INSERT INTO `meo_thirdParty_vesselName` (`id_third_vessel_name`, `vessel_name`, `id_third_vessel_type`, `remarks`, `status`, `status_reason`, `added_on`, `updated_on`) VALUES
(1, '3RD PARTY VESSEL NAME1', 1, 'VESSEL REMARK', 'active', '', '2017-01-06 11:41:28', '0000-00-00 00:00:00'),
(2, '3RD PARTY VESSEL NAME2', 2, 'VESSEL REMARK', 'active', '', '2017-01-06 11:42:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_thirdParty_vesselType`
--

CREATE TABLE `meo_thirdParty_vesselType` (
  `id_third_vessel_type` int(11) UNSIGNED NOT NULL,
  `vessel_type_name` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_thirdParty_vesselType`
--

INSERT INTO `meo_thirdParty_vesselType` (`id_third_vessel_type`, `vessel_type_name`, `status`, `added_on`, `updated_on`) VALUES
(1, '3RD PARTY VESSEL 1', 'active', '2017-01-06 11:37:57', '2017-01-07 14:38:07'),
(2, '3RD PARTY VESSEL 2', 'active', '2017-01-06 11:38:14', '0000-00-00 00:00:00'),
(3, '3RD PARTY VESSEL 3', 'active', '2017-01-06 11:38:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_discussion`
--

CREATE TABLE `meo_travel_discussion` (
  `id_travel_discussion` int(11) NOT NULL,
  `id_travel_request` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `discussion_message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `link` varchar(255) NOT NULL,
  `attachement` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_discussion_attachment`
--

CREATE TABLE `meo_travel_discussion_attachment` (
  `id_discussion_attachment` int(11) NOT NULL,
  `id_travel_discussion` int(11) NOT NULL,
  `discussion_attachment` varchar(200) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_discussion_image_attachment`
--

CREATE TABLE `meo_travel_discussion_image_attachment` (
  `id_discussion_image` int(11) NOT NULL,
  `id_travel_discussion` int(11) NOT NULL,
  `discussion_image` varchar(500) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_discussion_link_attachment`
--

CREATE TABLE `meo_travel_discussion_link_attachment` (
  `id_discussion_link` int(11) NOT NULL,
  `id_travel_discussion` int(11) NOT NULL,
  `discussion_link` varchar(300) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_discussion_notifiers`
--

CREATE TABLE `meo_travel_discussion_notifiers` (
  `id_travel_notifier` int(11) NOT NULL,
  `id_travel_discussion` int(11) NOT NULL,
  `notify_to` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_request`
--

CREATE TABLE `meo_travel_request` (
  `id_travel_request` int(11) NOT NULL,
  `request_status` enum('approved','rejected') DEFAULT NULL,
  `requester_id` int(5) NOT NULL,
  `id_meo_user` int(11) NOT NULL,
  `billing_entity_type` enum('vessel','department','region') NOT NULL DEFAULT 'vessel',
  `billing_entity_id` varchar(200) DEFAULT NULL,
  `purpose_of_travel` text NOT NULL,
  `trip_type` enum('one-way','roundtrip') NOT NULL DEFAULT 'one-way',
  `flight_details` text NOT NULL,
  `airline` varchar(500) NOT NULL,
  `fare_class_list` enum('business','economy') NOT NULL DEFAULT 'economy',
  `travel_period_from` date DEFAULT NULL,
  `travel_period_to` date DEFAULT NULL,
  `est_airfare_currency` int(5) NOT NULL,
  `est_airfare_price` decimal(10,2) NOT NULL,
  `accomodation_details` text NOT NULL,
  `daily_room_rate_currency` int(5) NOT NULL,
  `daily_room_rate_price` decimal(10,2) NOT NULL,
  `hotel_cost_currency` int(5) NOT NULL,
  `hotel_cost_price` decimal(10,2) NOT NULL,
  `status` enum('draft','submitted') NOT NULL DEFAULT 'draft',
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_request_approvers`
--

CREATE TABLE `meo_travel_request_approvers` (
  `id_travel_request_approver` int(11) NOT NULL,
  `id_travel_request` int(11) NOT NULL,
  `approvers_id` int(11) NOT NULL,
  `id_designation` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `approval_status` enum('approved','rejected') DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `approval_time` datetime DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_request_countries`
--

CREATE TABLE `meo_travel_request_countries` (
  `id_travel_request_country` int(11) NOT NULL,
  `id_travel_request` int(5) NOT NULL,
  `from_country_id` int(5) NOT NULL,
  `to_country_id` int(5) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_request_privacy`
--

CREATE TABLE `meo_travel_request_privacy` (
  `id_travel_privacy` int(11) NOT NULL,
  `id_travel_request` int(11) NOT NULL,
  `privacy_type` enum('private','public') NOT NULL DEFAULT 'public',
  `personnel_ids` varchar(250) DEFAULT NULL,
  `group_ids` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_users_entity`
--

CREATE TABLE `meo_users_entity` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `refer_id` varchar(150) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` blob NOT NULL,
  `user_type` enum('Super Admin','Client','MEO User') NOT NULL DEFAULT 'MEO User',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_logged_in` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_users_entity`
--

INSERT INTO `meo_users_entity` (`id_user`, `refer_id`, `full_name`, `email`, `password`, `user_type`, `created_on`, `last_logged_in`) VALUES
(1, 'ADMIN', 'ADMIN', 'info@meogroup.com', 0x313233343536, 'Super Admin', '2016-10-03 15:26:03', '2017-07-10 11:18:12'),
(4, 'CLIENTUSER1', 'ABHAY', 'ABHAY@SINGSYS.COM', 0x313233343536, 'Client', '2017-01-06 09:18:22', '2017-03-05 16:58:11'),
(5, 'CLIENTUSER2', 'ARINDAM', 'ARINDAM@SINGSYS.COM', 0x313233343536, 'Client', '2017-01-06 09:21:12', '2017-01-09 15:39:57'),
(7, '00296', 'BHARATRAJ CLIENT USER', 'BHARATRAJ+1@SINGSYS.COM', 0x353539323532, 'Client', '2017-01-08 22:58:39', '2017-02-09 11:24:13'),
(15, 'E0003', 'ONG CHEE WEE', 'CHEEWEE.ONG@MEOGROUP.COM', 0x343933313331, 'MEO User', '2017-01-15 21:58:25', '2017-03-05 15:51:13'),
(16, 'E0007', 'SABRIDO RHYAN DELOS REYES', 'RHYAN.SABRIDO@MEOGROUP.COM', 0x353831323237, 'MEO User', '2017-01-15 22:02:25', '0000-00-00 00:00:00'),
(17, 'E0008', 'COLIN DAVID TREWHELLA', 'COLIN.TREWHELLA@MEOGROUP.COM', 0x343339353832, 'MEO User', '2017-01-15 22:11:55', '0000-00-00 00:00:00'),
(18, 'E0001', 'MARK PETER VAN DER MOLEN', 'MARK.VANDERMOLEN@MEOGROUP.COM', 0x343639393531, 'MEO User', '2017-01-15 22:13:27', '0000-00-00 00:00:00'),
(19, 'E0010', 'NG WEI LING CANDICE', 'CANDICE.NG@MEOGROUP.COM', 0x373636323532, 'MEO User', '2017-01-15 22:14:30', '2017-03-03 09:57:09'),
(20, 'E0013', 'IGLESIAS CARRICHES CLAUDIA', 'CLAUDIA.IGLESIAS@MEOGROUP.COM', 0x343631313834, 'MEO User', '2017-01-15 22:16:47', '0000-00-00 00:00:00'),
(21, 'E0016', 'MARICAR ZOLETA MANLAPAZ', 'MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM', 0x313739363231, 'MEO User', '2017-01-15 22:20:32', '0000-00-00 00:00:00'),
(22, 'E0022', 'SUNIL SINGH', 'SUNIL.SINGH@MEOGROUP.COM', 0x393137323538, 'MEO User', '2017-01-15 22:21:51', '0000-00-00 00:00:00'),
(23, 'E0026', 'NATALIE WEICHMANN', 'NATALIE.WEICHMANN@MEOGROUP.COM', 0x313234323138, 'MEO User', '2017-01-15 22:23:00', '0000-00-00 00:00:00'),
(24, 'E0031', 'GOH TING TING', 'TINGTING.GOH@MEOGROUP.COM', 0x353936393634, 'MEO User', '2017-01-15 22:27:16', '0000-00-00 00:00:00'),
(25, 'E0032', 'CAHYA AWAL', 'CAHYA.AWAL@MEOGROUP.COM', 0x353539333434, 'MEO User', '2017-01-15 22:28:35', '0000-00-00 00:00:00'),
(26, 'E0033', 'EUGENE TEO YU-CHNG', 'EUGENE.TEO@MEOGROUP.COM', 0x393533353834, 'MEO User', '2017-01-15 22:29:53', '0000-00-00 00:00:00'),
(27, 'S00001', 'TAN HEE HUA', 'HEE-HUA.TAN@MEOGROUP.COM', 0x393937323537, 'MEO User', '2017-01-15 22:31:10', '0000-00-00 00:00:00'),
(28, 'S00004', 'POH CHING HOON', 'CHING-HOON.POH@MEOGROUP.COM', 0x383238393535, 'MEO User', '2017-01-15 22:33:28', '0000-00-00 00:00:00'),
(29, 'S00036', 'JOYCELYN WONG PUI YEE', 'JOYCELYN.WONG@MEOGROUP.COM', 0x323132393937, 'MEO User', '2017-01-15 22:35:27', '0000-00-00 00:00:00'),
(30, 'S00058', 'MOHAMED ARIS BIN MUSA', 'MOHD.ARIS@MEOGROUP.COM', 0x313536323438, 'MEO User', '2017-01-15 22:37:16', '0000-00-00 00:00:00'),
(31, 'S00110', 'JANE ALLAN', 'JANE.ALLAN@MEOGROUP.COM', 0x373432333535, 'MEO User', '2017-01-15 22:40:50', '0000-00-00 00:00:00'),
(32, 'S00112', 'ADAM RALEIGH CLAYTON', 'ADAM.CLAYTON@MEOGROUP.COM', 0x313438383739, 'MEO User', '2017-01-15 22:44:55', '0000-00-00 00:00:00'),
(33, 'S00134', 'HONG SHUMIN', 'SHUMIN.HONG@MEOGROUP.COM', 0x313335383439, 'MEO User', '2017-01-15 22:48:38', '0000-00-00 00:00:00'),
(34, 'S00150', 'NORAZLINA BINTE SANIN', 'NORAZLINA.SANIN@MEOGROUP.COM', 0x383434343737, 'MEO User', '2017-01-15 22:50:00', '0000-00-00 00:00:00'),
(35, 'S00157', 'LINA BINTE SOHO', 'LINA.SOHO@MEOGROUP.COM', 0x343739333638, 'MEO User', '2017-01-15 22:51:20', '0000-00-00 00:00:00'),
(36, '963', 'ARINDAM1', 'BHARATRAJ+11@SINGSYS.COM', 0x393933383732, 'MEO User', '2017-01-16 05:22:55', '0000-00-00 00:00:00'),
(37, 'S00168', 'LAI CHEE YONG', 'CHEEYONG.LAI@MEOGROUP.COM', 0x373133363932, 'MEO User', '2017-01-16 19:37:47', '0000-00-00 00:00:00'),
(38, 'S00178', 'DOYLE CHAVEZ FIGUERAS', 'DOYLE.FIGUERAS@MEOGROUP.COM', 0x393239343831, 'MEO User', '2017-01-16 19:38:35', '0000-00-00 00:00:00'),
(39, 'S00189', 'AU PEI KWAN', 'PEIKWAN.AU@MEOGROUP.COM', 0x373633373136, 'MEO User', '2017-01-16 19:40:14', '0000-00-00 00:00:00'),
(40, 'S00193', 'LIM BENG HWEE', 'BENGHWEE.LIM@MEOGROUP.COM', 0x363232383237, 'MEO User', '2017-01-16 19:42:03', '0000-00-00 00:00:00'),
(41, 'S00197', 'CHRISTOPHER DAVID WHITE', 'CHRISTOPHER.WHITE@MEOGROUP.COM', 0x373138383434, 'MEO User', '2017-01-16 19:42:37', '0000-00-00 00:00:00'),
(42, 'S00203', 'IAN JESTER ERAS REYES', 'IAN.REYES@MEOGROUP.COM', 0x363536383933, 'MEO User', '2017-01-16 19:43:26', '0000-00-00 00:00:00'),
(43, 'S00234', 'ONG PEI LING, WENDY', 'WENDY.ONG@MEOGROUP.COM', 0x313335333338, 'MEO User', '2017-01-16 19:45:55', '0000-00-00 00:00:00'),
(44, 'S00239', 'VERNON LOW CHUN HWEE', 'VERNON.LOW@MEOGROUP.COM', 0x393132373632, 'MEO User', '2017-01-16 19:46:35', '0000-00-00 00:00:00'),
(45, 'S00240', 'MUHAMMAD ADDY FHAIRUZ FERNANDEZ', 'ADDY.FERNANDEZ@MEOGROUP.COM', 0x323332353139, 'MEO User', '2017-01-16 19:48:29', '0000-00-00 00:00:00'),
(46, 'S00247', 'CHEN YING LEI', 'CHEN.YINGLEI@MEOGROUP.COM', 0x393234333731, 'MEO User', '2017-01-16 19:50:57', '0000-00-00 00:00:00'),
(47, 'S00269', 'DEREK LO SHEN LEONG', 'DEREK.LO@MEOGROUP.COM', 0x313831343731, 'MEO User', '2017-01-16 19:52:23', '0000-00-00 00:00:00'),
(48, 'S00278', 'ONG BOON SENG', 'BOONSENG.ONG@MEOGROUP.COM', 0x343332383536, 'MEO User', '2017-01-16 19:54:36', '0000-00-00 00:00:00'),
(49, 'S00283', 'FOONG LAI LENG, LINDY', 'LINDY.FOONG@MEOGROUP.COM', 0x373639383736, 'MEO User', '2017-01-16 20:10:58', '0000-00-00 00:00:00'),
(50, 'S00291', 'WEE HANQUN', 'HANQUN.WEE@MEOGROUP.COM', 0x383535373938, 'MEO User', '2017-01-16 20:15:58', '0000-00-00 00:00:00'),
(51, 'S00296', 'LALITHA NAIR', 'LALITHA.NAIR@MEOROUP.COM', 0x313231343431, 'MEO User', '2017-01-16 20:18:17', '0000-00-00 00:00:00'),
(52, 'S00317', 'BURHANUDDIN BIN MOHAMAD', 'BURHAN.MOHD@MEOGROUP.COM', 0x313233343431, 'MEO User', '2017-01-16 20:20:58', '0000-00-00 00:00:00'),
(53, 'S00321', 'VENKATRAMAN SHESHASHAYEE', 'VSHESH@MEOGROUP.COM', 0x363337343832, 'MEO User', '2017-01-16 20:22:52', '0000-00-00 00:00:00'),
(54, 'S00322', 'CHONG SIN KEONG', 'SINKEONG.CHONG@MEOGROUP.COM', 0x363237333334, 'MEO User', '2017-01-16 20:23:32', '0000-00-00 00:00:00'),
(55, 'S00327', 'ANKUSH SHAM AGARWAL', 'ANKUSH.AGARWAL@MEOGROUP.COM', 0x353132393837, 'MEO User', '2017-01-16 20:27:44', '0000-00-00 00:00:00'),
(56, 'S00328', 'LIM CHEE HOE', 'CHEEHOE.LIM@MEOGROUP.COM', 0x343237343433, 'MEO User', '2017-01-16 20:28:29', '0000-00-00 00:00:00'),
(57, 'S00329', 'NORRASHIDAH BINTE MOHAMED', 'NORRASHIDAH.MOHAMED@MEOGROUP.COM', 0x393435343138, 'MEO User', '2017-01-16 20:29:35', '0000-00-00 00:00:00'),
(58, 'S00339', 'SATHISVARAN CHIDAMBARAM', 'SATHIS.CHIDAMBARAM@MEOGROUP.COM', 0x313133383431, 'MEO User', '2017-01-16 20:31:14', '0000-00-00 00:00:00'),
(59, 'S00341', 'XIE ZIHUI', 'ZIHUI.XIE@MEOGROUP.COM', 0x383135393838, 'MEO User', '2017-01-16 20:32:32', '0000-00-00 00:00:00'),
(60, 'S00343', 'INDRANIL MAJUMDAR', 'INDRANIL.MAJUMDAR@MEOGROUP.COM', 0x333239313131, 'MEO User', '2017-01-16 20:33:06', '0000-00-00 00:00:00'),
(61, 'S00349', 'MILI SANJAY VERMA', 'MILI.VERMA@MEOGROUP.COM', 0x313431393833, 'MEO User', '2017-01-16 20:39:22', '0000-00-00 00:00:00'),
(62, 'S00357', 'CHENG CAREEN', 'CAREEN.CHENG@MEOGROUP.COM', 0x323339393636, 'MEO User', '2017-01-16 20:41:15', '0000-00-00 00:00:00'),
(64, 'S00358', 'NANDWANI REKHA DULAMAL', 'REKHA.NANDWANI@MEOGROUP.COM', 0x323435363233, 'MEO User', '2017-01-16 20:43:51', '0000-00-00 00:00:00'),
(65, 'S00362', 'RAO INNA SHREYAS CHANDRAKANTHA', 'SHREYAS.RAO@MEOGROUP.COM', 0x323332383136, 'MEO User', '2017-01-16 20:47:30', '0000-00-00 00:00:00'),
(66, 'S00363', 'VERA ONG SIXIAN', 'VERA.ONG@MEOGROUP.COM', 0x353833363436, 'MEO User', '2017-01-16 22:12:01', '0000-00-00 00:00:00'),
(67, 'S00365', 'TAN LEA JOO', 'LEA.JOO@MEOGROUP.COM', 0x343635343836, 'MEO User', '2017-01-16 22:12:57', '0000-00-00 00:00:00'),
(68, 'S00366', 'SANDRA  JERNIGAN', 'SANDRA.JERNIGAN@MEOGROUP.COM', 0x393937323831, 'MEO User', '2017-01-16 22:13:49', '0000-00-00 00:00:00'),
(69, 'S00367', 'LIM HUI SHAN', 'HUISHAN.LIM@MEOGROUP.COM', 0x313134353832, 'MEO User', '2017-01-16 22:14:55', '0000-00-00 00:00:00'),
(297, 'S00368', 'NICHOLAS SEET CHONG KUN', 'NICHOLAS.SEET@MEOGROUP.COM', 0x383732333437, 'MEO User', '2017-01-16 22:20:13', '0000-00-00 00:00:00'),
(298, 'S00373', 'LIM LI JU', 'LIJU.LIM@MEOGROUP.COM', 0x373439383739, 'MEO User', '2017-01-16 22:21:12', '0000-00-00 00:00:00'),
(299, 'S00375', 'HEMA  MANOHARAN', 'HEMA.MANOHARAN@MEOGROUP.COM', 0x373332333533, 'MEO User', '2017-01-16 22:21:56', '0000-00-00 00:00:00'),
(300, 'S00377', ' ARNOLD SILAO', 'ARNOLD.SILAO@MEOGROUP.COM', 0x323734353239, 'MEO User', '2017-01-16 22:23:04', '0000-00-00 00:00:00'),
(301, 'S00378', 'AKAASH GANESH', 'AKAASH.GANESH@MEOGROUP.COM', 0x333436323234, 'MEO User', '2017-01-16 22:23:40', '0000-00-00 00:00:00'),
(302, 'S00379', 'LEE WEI JIE', 'WEIJIE.LEE@MEOGROUP.COM', 0x353339323635, 'MEO User', '2017-01-16 22:29:43', '0000-00-00 00:00:00'),
(303, 'S00382', 'ABHIJIT DESHMUKH', 'ABHIJIT.DESHMUKH@MEOGROUP.COM', 0x323637363839, 'MEO User', '2017-01-16 22:31:02', '0000-00-00 00:00:00'),
(304, 'S00383', 'SOPHIE TAN JIA HUI ', 'SOPHIE.TAN@MEOGROUP.COM', 0x393537343334, 'MEO User', '2017-01-16 22:31:44', '0000-00-00 00:00:00'),
(305, 'S00384', 'HUZAIFA', 'HUZAIFA@MEOGROUP.COM', 0x313439313433, 'MEO User', '2017-01-16 22:32:20', '0000-00-00 00:00:00'),
(306, 'S00387', 'LEE SHIN HUAY', 'SHINHUAY.LEE@MEOGROUP.COM', 0x363633353135, 'MEO User', '2017-01-16 22:39:26', '0000-00-00 00:00:00'),
(307, 'S00389', 'SANKET ASHOK SHUKLA', 'SANKET.SHUKLA@MEOGROUP.COM', 0x343634343536, 'MEO User', '2017-01-16 22:41:19', '0000-00-00 00:00:00'),
(308, 'S00390', 'KEN LIVINGSTONE', 'KEN.LIVINGSTONE@MEOGROUP.COM', 0x393736333833, 'MEO User', '2017-01-16 22:42:30', '0000-00-00 00:00:00'),
(309, 'S00392', 'JOYCE LIM ', 'JOYCE.LIM@MEOGROUP.COM', 0x393132343338, 'MEO User', '2017-01-16 22:43:09', '0000-00-00 00:00:00'),
(310, 'S00393', 'CHAN HUI PENG', 'HUIPENG.CHAN@MEOGROUP.COM', 0x333933373231, 'MEO User', '2017-01-16 22:43:51', '0000-00-00 00:00:00'),
(311, 'S00394', 'LEONG SOOK MEI', 'SOOKMEI.LEONG@MEOGROUP.COM', 0x313634373138, 'MEO User', '2017-01-16 22:45:17', '0000-00-00 00:00:00'),
(312, 'S00395', 'FARRUKH SHOAIB QURESHI', 'FARRUKH.QURESHI@MEOGROUP.COM', 0x363936363232, 'MEO User', '2017-01-16 22:46:04', '0000-00-00 00:00:00'),
(313, 'T00078', 'JYNETTE LOWIS ', 'JYNETTE.LOWIS@MEOGROUP.COM', 0x393731343838, 'MEO User', '2017-01-16 22:46:47', '0000-00-00 00:00:00'),
(314, 'S00026', 'ALI HUSSAIN', 'ALI.HUSSAIN@MEOGROUP.COM', 0x323838353938, 'MEO User', '2017-01-16 22:48:13', '0000-00-00 00:00:00'),
(315, 'S00316', 'MATHANRAJ VEERASAMY', 'MATHANRAJ.VEERASAMY@MEOGROUP.COM', 0x393837383737, 'MEO User', '2017-01-16 22:49:12', '0000-00-00 00:00:00'),
(316, 'S00319', 'KISHORE SEGAR', 'KISHORE.SEGAR@MEOGROUP.COM', 0x393339353436, 'MEO User', '2017-01-16 22:51:31', '0000-00-00 00:00:00'),
(317, 'S00355', 'BHARANI KUMAR PALAKODETI', 'KUMAR.PAL@MEOGROUP.COM', 0x353834333532, 'MEO User', '2017-01-16 22:52:38', '0000-00-00 00:00:00'),
(318, 'S00352', 'CLAYTON HOSANNA', 'CLAYTON.HOSANNA@MEOGROUP.COM', 0x343436323734, 'MEO User', '2017-01-16 22:53:25', '0000-00-00 00:00:00'),
(319, '1', 'DIEDERIK DE BOER', 'DIEDERIK.DEBOER@MEOGROUP.COM', 0x393235333335, 'MEO User', '2017-01-16 23:20:11', '0000-00-00 00:00:00'),
(320, 'E0015', 'CRIS RYAN INDIG ENTERA', 'CRIS.RYAN@MEOGROUP.COM', 0x363238313438, 'MEO User', '2017-01-16 23:27:23', '0000-00-00 00:00:00'),
(321, 'E0030', 'JED IGOT', 'JED.IGOT@MEOGROUP.COM', 0x333736343937, 'MEO User', '2017-01-16 23:31:03', '0000-00-00 00:00:00'),
(323, 'S00290', 'JOAN LAW', 'JOAN.LAW@MEOGROUP.COM', 0x313833383331, 'MEO User', '2017-01-16 23:49:38', '0000-00-00 00:00:00'),
(324, 'S00161', 'EBEN TAN ', 'EBEN.TAN@MEOGROUP.COM', 0x353633363837, 'MEO User', '2017-01-16 23:55:07', '0000-00-00 00:00:00'),
(325, 'S00331', 'JOSHUA LAM KHIAN KOK', 'JOSHUA.LAM@MEOGROUP.COM', 0x353932343531, 'MEO User', '2017-01-17 00:33:36', '0000-00-00 00:00:00'),
(326, 'S00334', 'NYEIN CHAN AUNG', 'AUNG.NYEINCHAN@MEOGROUP.COM', 0x313735343738, 'MEO User', '2017-01-17 00:38:08', '0000-00-00 00:00:00'),
(327, 'S00337', 'KELLY ZHANG JING', 'KELLY.ZHANG@MEOGROUP.COM', 0x313338383332, 'MEO User', '2017-01-17 00:46:07', '0000-00-00 00:00:00'),
(329, 'S00025', 'RYAN JIANG', 'HAIBO.JIANG@MEOGROUP.COM', 0x363338373536, 'MEO User', '2017-01-17 00:51:45', '0000-00-00 00:00:00'),
(330, 'S00081', 'ELAINE CHUAH', 'ELAINE.CHUAH@MEOGROUP.COM', 0x353732383339, 'MEO User', '2017-01-17 00:53:35', '0000-00-00 00:00:00'),
(331, 'S00204', 'CHRISTINA LING', 'CHRISTINA.LING@MEOGROUP.COM', 0x323934343431, 'MEO User', '2017-01-17 00:56:13', '0000-00-00 00:00:00'),
(332, 'S00207', 'ELIZABETH WONG', 'ELIZABETH.WONG@MEOGROUP.COM', 0x353133373439, 'MEO User', '2017-01-17 01:00:01', '0000-00-00 00:00:00'),
(333, 'E0028', 'SHAWN WONG', 'SHAWN.WONG@MEOGROUP.COM', 0x313538323338, 'MEO User', '2017-01-17 01:06:08', '0000-00-00 00:00:00'),
(334, 'S00211', 'ALEZS WONG', 'ALEZS.WONG@MEOGROUP.COM', 0x363737353838, 'MEO User', '2017-01-17 01:07:35', '0000-00-00 00:00:00'),
(335, 'S00007', 'JANICE TENG ', 'JANICE.TENG@MEOGROUP.COM', 0x373639343437, 'MEO User', '2017-01-17 01:20:05', '0000-00-00 00:00:00'),
(336, 'S00014', 'DARREN ANG', 'DARREN.ANG@MEOGROUP.COM', 0x313432353833, 'MEO User', '2017-01-17 01:32:25', '0000-00-00 00:00:00'),
(337, '225', 'BHARATRAJ', 'BHARATRAJ+2@SINGSYS.COM', 0x333539333533, 'MEO User', '2017-01-17 01:34:07', '0000-00-00 00:00:00'),
(338, 'S00241', 'ELAINE TAY', 'ELAINE.TAY@MEOGROUP.COM', 0x333938353634, 'MEO User', '2017-01-17 01:38:11', '0000-00-00 00:00:00'),
(339, '296', 'BHARATRAJ MEO USER', 'BHARATRAJ@SINGSYS.COM', 0x353735313934, 'MEO User', '2017-01-17 01:38:16', '0000-00-00 00:00:00'),
(340, 'S00297', 'ALIS KHOO ', 'ALIS.KHOO@MEOGROUP.COM', 0x323438313738, 'MEO User', '2017-01-17 01:40:25', '0000-00-00 00:00:00'),
(341, 'S00253', 'KAMMY TAN', 'KAMMY.TAN@MEOGROUP.COM', 0x373133353638, 'MEO User', '2017-01-17 01:42:34', '0000-00-00 00:00:00'),
(342, 'S00242', 'JAMES LIM', 'JAMES.LIM@MEOGROUP.COM', 0x373631353532, 'MEO User', '2017-01-17 01:43:47', '0000-00-00 00:00:00'),
(343, 'S00263', 'LEON LIM', 'LEON.LIM@MEOGROUP.COM', 0x383937333333, 'MEO User', '2017-01-17 01:45:58', '0000-00-00 00:00:00'),
(344, 'S00180', 'LEWIS LOW', 'LEWIS.LOW@MEOGROUP.COM', 0x343431333131, 'MEO User', '2017-01-17 01:47:49', '0000-00-00 00:00:00'),
(345, 'S00205', 'KENNETH LEE', 'KENNETH.LEE@MEOGROUP.COM', 0x323235353932, 'MEO User', '2017-01-17 01:48:57', '0000-00-00 00:00:00'),
(346, 'S00282', 'GLADYS CHUA', 'GLADYS.CHUA@MEOGROUP.COM', 0x343439343933, 'MEO User', '2017-01-17 01:50:10', '0000-00-00 00:00:00'),
(347, 'S00335', 'BELINDA LI', 'BELINDA.LI@MEOGROUP.COM', 0x363432373836, 'MEO User', '2017-01-17 01:55:35', '0000-00-00 00:00:00'),
(348, 'S00104', 'JAMIE LEE', 'JAMIE.LEE@MEOGROUP.COM', 0x343838373435, 'MEO User', '2017-01-17 17:17:14', '0000-00-00 00:00:00'),
(349, 'S00133', 'AMELIA NG', 'AMELIA.NG@MEOGROUP.COM', 0x313437343736, 'MEO User', '2017-01-17 17:18:46', '0000-00-00 00:00:00'),
(350, 'S00148', 'JOVY CHAY', 'JOVY.CHAY@MEOGROUP.COM', 0x6a6f767926313233, 'MEO User', '2017-01-17 17:21:02', '2017-03-11 08:22:43'),
(351, 'S00347', 'DARREN YEOH', 'DARREN.YEOH@MEOGROUP.COM', 0x313136313838, 'MEO User', '2017-01-17 17:33:41', '0000-00-00 00:00:00'),
(352, 'S00361', 'EDWIN CHANG YONG QUAN', 'YONGQUAN.CHANG@MEOGROUP.COM', 0x313736343339, 'MEO User', '2017-01-17 17:35:08', '0000-00-00 00:00:00'),
(353, 'S00385', 'BAY SOO PENG', 'SOOPENG.BAY@MEOGROUP.COM ', 0x393535313933, 'MEO User', '2017-01-17 17:38:58', '0000-00-00 00:00:00'),
(354, 'S00386', 'CHLOE NG', 'CHLOE.NG@MEOGROUP.COM', 0x383434323333, 'MEO User', '2017-01-17 17:41:24', '0000-00-00 00:00:00'),
(355, 'S00388', 'EUNICE TAN', 'EUNICE.TAN@MEOGROUP.COM', 0x353236383334, 'MEO User', '2017-01-17 17:42:53', '0000-00-00 00:00:00'),
(356, 'S00002', 'ERIK TING', 'ERIK.TING@MEOGROUP.COM', 0x343934323236, 'MEO User', '2017-01-17 17:48:05', '0000-00-00 00:00:00'),
(357, 'E0025', 'LIM JUNRONG', 'JUNRONG.LIM@MEOGROUP.COM', 0x333135393436, 'MEO User', '2017-01-17 17:58:58', '0000-00-00 00:00:00'),
(358, 'S00360', 'LEE PEI ZHEN', 'PEIZHEN.LEE@MEOGROUP.COM', 0x313331383632, 'MEO User', '2017-01-17 18:02:06', '0000-00-00 00:00:00'),
(359, 'S00348', 'JOSEPHINE LEE', 'JOSEPHINE.LEE@MEOGROUP.COM', 0x353836383933, 'MEO User', '2017-01-17 18:05:53', '0000-00-00 00:00:00'),
(360, 'S00165', 'DEREK KOH', 'DEREK.KOH@MEOGROUP.COM', 0x333732333731, 'MEO User', '2017-01-17 18:09:17', '0000-00-00 00:00:00'),
(361, 'S00380', 'ELAINE LAU', 'ELAINE.LAU@MEOGROUP.COM', 0x363233393332, 'MEO User', '2017-01-17 18:28:42', '0000-00-00 00:00:00'),
(362, 'BN002', 'LEONARD WONG ', 'LEONARD.WONG@MEOGROUP.COM', 0x313437343835, 'MEO User', '2017-01-17 22:12:17', '0000-00-00 00:00:00'),
(363, 'BN004', 'BELINDA WONG', 'BELINDA.WONG@MEOGROUP.COM', 0x353636313635, 'MEO User', '2017-01-17 22:13:24', '0000-00-00 00:00:00'),
(364, 'BN008', 'KOK WEI KONG', 'WEIKONG.KOK@MEOGROUP.COM', 0x383933313834, 'MEO User', '2017-01-17 22:14:15', '0000-00-00 00:00:00'),
(365, 'BN003', 'SHAFIQ ABDULLAH ', 'SHAFIQ.ABDULLAH@MEOGROUP.COM', 0x363733383432, 'MEO User', '2017-01-17 22:15:11', '0000-00-00 00:00:00'),
(366, 'BN011', 'ARDY  BAKAR', 'ARDY.BAKAR@MEOGROUP.COM', 0x353135353536, 'MEO User', '2017-01-17 22:16:37', '0000-00-00 00:00:00'),
(367, 'BN010', 'ALDON PETER YAPP ', 'ALDON.PETERYAPP@MEOGROUP.COM', 0x353337323337, 'MEO User', '2017-01-17 22:17:13', '0000-00-00 00:00:00'),
(368, 'BN007', 'KENNETH YONG', 'KENNETH.YONG@MEOGROUP.COM', 0x313739323638, 'MEO User', '2017-01-17 22:18:02', '0000-00-00 00:00:00'),
(369, 'M015', 'CAPT. SASITHARAN ELUMALAI', 'SASITHARAN.ELUMALAI@MEOGROUP.COM', 0x333635373434, 'MEO User', '2017-01-17 22:39:34', '0000-00-00 00:00:00'),
(370, 'M014', 'LETICIA LAIMAN INGAN', 'LETICIA.INGAN@MEOGROUP.COM', 0x343533383733, 'MEO User', '2017-01-17 22:41:13', '0000-00-00 00:00:00'),
(371, 'M010', 'AWG FAREEZ SYIDDIQEN', 'AWG.FAREEZ@MEOGROUP.COM', 0x383232383731, 'MEO User', '2017-01-17 22:43:23', '0000-00-00 00:00:00'),
(372, 'M012', 'NURUL AIN KAMARUDDIN', 'NURULAIN@MEOGROUP.COM', 0x373832383934, 'MEO User', '2017-01-17 22:44:12', '0000-00-00 00:00:00'),
(373, 'M006', 'SYED MUBARAK', 'SYED.MUBARAK@MEOGROUP.COM', 0x363934353733, 'MEO User', '2017-01-17 22:44:51', '0000-00-00 00:00:00'),
(374, 'M002', 'AAN KUSNANDAR', 'AAN.KUSNANDAR@MEOGROUP.COM', 0x363133373131, 'MEO User', '2017-01-17 22:45:37', '0000-00-00 00:00:00'),
(375, 'M007', 'NAOMI GANI', 'NAOMI@MEOGROUP.COM', 0x343631363539, 'MEO User', '2017-01-17 22:46:08', '0000-00-00 00:00:00'),
(376, 'M011', 'HAZLAN HAMDAN', 'HAZLAN.HAMDAN@MEOGROUP.COM', 0x373339373937, 'MEO User', '2017-01-17 22:46:50', '0000-00-00 00:00:00'),
(377, 'A000480', 'DAVID NICHOLAS', 'DAVID.NICHOLAS@MEOGROUP.COM', 0x333931393933, 'MEO User', '2017-01-17 23:03:04', '0000-00-00 00:00:00'),
(378, 'A000816', 'SAM HUTCHINSON', 'SAMUEL.HUTCHINSON@MEOGROUP.COM', 0x313537343934, 'MEO User', '2017-01-17 23:03:37', '0000-00-00 00:00:00'),
(379, 'A000342', 'VALERIE PRENTICE ', 'VALERIE.PRENTICE@MEOGROUP.COM', 0x383339363739, 'MEO User', '2017-01-17 23:04:07', '0000-00-00 00:00:00'),
(381, 'ME00108', 'DENIS WELCH', 'DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM', 0x353332353332, 'MEO User', '2017-01-17 23:48:37', '0000-00-00 00:00:00'),
(382, 'ME00066', 'RIK KREUNEN', 'RIK.KREUNEN@MICLYNEXPRESSOFFSHORE.COM', 0x313237333939, 'MEO User', '2017-01-17 23:50:03', '0000-00-00 00:00:00'),
(383, 'ME00099', 'MUKUND RAJAMANI ', 'MUKUND.RAJAMNI@MICLYNEXPRESSOFFSHORE.COM', 0x333834343639, 'MEO User', '2017-01-17 23:52:06', '0000-00-00 00:00:00'),
(384, 'ME00100', 'ANGELA EMATA BAYRON ', 'ANGELA.BAYRON@MICLYNEXPRESSOFFSHORE.COM', 0x363136373438, 'MEO User', '2017-01-17 23:54:19', '0000-00-00 00:00:00'),
(385, 'ME00111', 'DEREK LO ', 'DEREK.LO@MICLYNEXPRESSOFFSHORE.COM', 0x353735393839, 'MEO User', '2017-01-17 23:56:17', '0000-00-00 00:00:00'),
(386, 'ME00083', 'SANDESH GOPAL PALAN ', 'SANDESH.PALAN@MICLYNEXPRESSOFFSHORE.COM', 0x323731393636, 'MEO User', '2017-01-17 23:58:26', '0000-00-00 00:00:00'),
(387, 'ME00076', 'NITIN PUROHIT ', 'NITIN.PUROHIT@MICLYNEXPRESSOFFSHORE.COM', 0x393732373435, 'MEO User', '2017-01-18 00:00:21', '0000-00-00 00:00:00'),
(388, 'ME00058', 'DEEPAK PANDEY ', 'DEEPAK.PANDEY@MICLYNEXPRESSOFFSHORE.COM', 0x393732333137, 'MEO User', '2017-01-18 00:01:17', '0000-00-00 00:00:00'),
(389, 'ME00024', 'ASHVITH AMIN', 'ASHVITH.AMIN@MICLYNEXPRESSOFFSHORE.COM', 0x323332323235, 'MEO User', '2017-01-18 00:02:35', '0000-00-00 00:00:00'),
(390, 'ME00084', 'ABHILASH ', 'ABHILASH.H@MICLYNEXPRESSOFFSHORE.COM', 0x343535333334, 'MEO User', '2017-01-18 00:03:17', '0000-00-00 00:00:00'),
(391, 'ME00021', 'SAMWAIL FOUAD', 'SAMWAIL.FOUAD@MICLYNEXPRESSOFFSHORE.COM', 0x373633343532, 'MEO User', '2017-01-18 00:13:02', '0000-00-00 00:00:00'),
(392, 'ME00037', 'TAHIR ABBAS', '-@MEOGROUP.COM', 0x343539353639, 'MEO User', '2017-01-18 00:15:45', '0000-00-00 00:00:00'),
(393, 'ME00092', 'RABINDRA DASH ', 'RABINDRA.DASH@MICLYNEXPRESSOFFSHORE.COM', 0x353336363931, 'MEO User', '2017-01-18 00:16:43', '0000-00-00 00:00:00'),
(394, 'ME00060', 'AISHA FERRER', 'AISHA.FERRER@MICLYNEXPRESSOFFSHORE.COM', 0x313833373931, 'MEO User', '2017-01-18 00:17:54', '0000-00-00 00:00:00'),
(395, 'ME00071', 'ANABEL BALINA', 'ANABEL.BALINA@MICLYNEXPRESSOFFSHORE.COM', 0x363535343638, 'MEO User', '2017-01-18 00:18:42', '0000-00-00 00:00:00'),
(396, 'ME00097', 'ANNALYN BUATIS ', 'ANNALYN.BUATIS@MICLYNEXPRESSOFFSHORE.COM', 0x383133393231, 'MEO User', '2017-01-18 00:19:49', '0000-00-00 00:00:00'),
(397, 'ME00095', 'AVDHUT DHAYBAR', 'AVDHUT.DHAYBAR@MICLYNEXPRESSOFFSHORE.COM', 0x383638313331, 'MEO User', '2017-01-18 00:21:16', '0000-00-00 00:00:00'),
(398, 'ME00022', 'BISYRUN HASAN BASRI', 'BISYRUN@MICLYNEXPRESSOFFSHORE.COM', 0x353237333538, 'MEO User', '2017-01-18 00:23:56', '0000-00-00 00:00:00'),
(399, 'ME00038', 'ALI ESSA M AL OBAIDI', 'ALI.ALOBAIDI@MICLYNEXPRESSOFFSHORE.COM', 0x313334313837, 'MEO User', '2017-01-18 00:25:12', '0000-00-00 00:00:00'),
(400, 'ME00109', 'IRY GENSON', 'IRY.GENSON@MICLYNEXPRESSOFFSHORE.COM', 0x363836323333, 'MEO User', '2017-01-18 00:26:26', '0000-00-00 00:00:00'),
(401, 'ME00031', 'SAVIO VAZ', 'SAVIO.VAZ@MICLYNEXPRESSOFFSHORE.COM', 0x343935343737, 'MEO User', '2017-01-18 00:27:07', '0000-00-00 00:00:00'),
(402, 'ME00079', 'SUNITHA SHETTY', 'SUNITHA.SHETTY@MICLYNEXPRESSOFFSHORE.COM', 0x353739353839, 'MEO User', '2017-01-18 00:27:49', '0000-00-00 00:00:00'),
(403, 'ME00110', 'LIEZL FABIALA ', 'LIEZL.FABIALA@MICLYNEXPRESSOFFSHORE.COM', 0x393436373334, 'MEO User', '2017-01-18 00:28:37', '0000-00-00 00:00:00'),
(404, 'ME00102', 'LENIN LAMA ', 'LENIN.LAMA@MICLYNEXPRESSOFFSHORE.COM', 0x353934343836, 'MEO User', '2017-01-18 00:29:23', '0000-00-00 00:00:00'),
(405, 'ME00106', 'HUSSAIN ALGOBA ', 'HUSSAIN.ALGOBA@MICLYNEXPRESSOFFSHORE.COM', 0x333231323539, 'MEO User', '2017-01-18 00:30:20', '0000-00-00 00:00:00'),
(406, 'ME00063', 'SREENIVASAN NARAYANAN', '--@MEOGROUP.COM', 0x353537383238, 'MEO User', '2017-01-18 00:31:17', '0000-00-00 00:00:00'),
(407, 'ME00004', 'ABDALLA ABUELGASIM', 'ABDALLA.ABUELGASIM@MICLYNEXPRESSOFFSHORE.COM', 0x333137373139, 'MEO User', '2017-01-18 00:33:45', '0000-00-00 00:00:00'),
(408, 'ME00074', 'SHERIF ABDELHAMID ', 'SHERIF.ABDELMONEM@MICLYNEXPRESSOFFSHORE.COM', 0x343234353438, 'MEO User', '2017-01-18 00:35:10', '0000-00-00 00:00:00'),
(409, 'ME00011', 'JOSEPH GEORGE', 'JOSEPH.GEORGE@MICLYNEXPRESSOFFSHORE.COM', 0x313934383434, 'MEO User', '2017-01-18 00:37:45', '0000-00-00 00:00:00'),
(410, 'ME00042', 'RAMLI RASBI', 'RAMLI.RASBI@MICLYNEXPRESSOFFSHORE.COM', 0x333634373733, 'MEO User', '2017-01-18 00:38:39', '0000-00-00 00:00:00'),
(411, 'ME00050', 'ANNA  LIZA CELLANO', 'ANNA.CELLANO@MICLYNEXPRESSOFFSHORE.COM', 0x373831383937, 'MEO User', '2017-01-18 00:39:28', '0000-00-00 00:00:00'),
(412, 'ME00101', 'RAVINDER HOONJAN ', 'RAVINDER.HOONJAN@MICLYNEXPRESSOFFSHORE.COM', 0x393335363333, 'MEO User', '2017-01-18 00:45:43', '0000-00-00 00:00:00'),
(413, 'ME00090', 'AAKAAR JAIN', 'AAKAAR.JAIN@MICLYNEXPRESSOFFSHORE.COM', 0x323731363533, 'MEO User', '2017-01-18 00:48:26', '0000-00-00 00:00:00'),
(414, 'ME00014', 'SOKARNO ABDALLAH ', 'SOKARNO.ABDALLAH@MICLYNEXPRESSOFFSHORE.COM', 0x353431313231, 'MEO User', '2017-01-18 01:02:10', '0000-00-00 00:00:00'),
(415, 'ME00089', 'TAMER S.BALBOUL', 'TAMER.BALBOUL@MICLYNEXPRESSOFFSHORE.COM', 0x383637393131, 'MEO User', '2017-01-18 01:05:22', '0000-00-00 00:00:00'),
(416, 'ME00025', 'SALIM KAJIRU', 'SALIM.KAJIRU@MICLYNEXPRESSOFFSHORE.COM', 0x353833373334, 'MEO User', '2017-01-18 01:07:19', '0000-00-00 00:00:00'),
(417, 'ME00027', 'ZOHAIR ABDELRAHIM', 'ZOHAIR.ELRAHIM@MICLYNEXPRESSOFFSHORE.COM', 0x383133333133, 'MEO User', '2017-01-18 01:10:43', '0000-00-00 00:00:00'),
(418, 'ME00005', 'PAUL OCCENOLA', 'PAUL.OCCENOLA@MICLYNEXPRESSOFFSHORE.COM', 0x333438373936, 'MEO User', '2017-01-18 01:16:05', '0000-00-00 00:00:00'),
(419, 'ME00104', 'CHANDRASHEKAR VARMA ', 'CHANDRASHEKAR.VARMA@MICLYNEXPRESSOFFSHORE.COM', 0x373235383236, 'MEO User', '2017-01-18 01:18:31', '0000-00-00 00:00:00'),
(420, 'ME00023', 'JASIM HUSSAIN', 'JASSIM.HUSSAIN@MICLYNEXPRESSOFFSHORE.COM', 0x333933353833, 'MEO User', '2017-01-18 01:19:46', '0000-00-00 00:00:00'),
(421, 'ME00093', 'BASEL KHWAIS', 'BASEL.KHWAIS@MICLYNEXPRESSOFFSHORE.COM', 0x343335393631, 'MEO User', '2017-01-18 01:20:59', '0000-00-00 00:00:00'),
(422, 'ME00088', 'CIRION CENOC ', 'CIRION.SENOC@MICLYNEXPRESSOFFSHORE.COM', 0x333839343836, 'MEO User', '2017-01-18 01:22:06', '0000-00-00 00:00:00'),
(423, 'ME00073', 'HEMANTKUMAR PANCHAL ', 'HEMANT.PANCHAL@MICLYNEXPRESSOFFSHORE.COM', 0x333938333937, 'MEO User', '2017-01-18 01:26:33', '0000-00-00 00:00:00'),
(424, 'ME00107', 'VENKATESH ', 'VENKATESH.K@MICLYNEXPRESSOFFSHORE.COM', 0x343232323234, 'MEO User', '2017-01-18 01:27:22', '0000-00-00 00:00:00'),
(425, 'ME00048', 'VIJAY CHATTE', 'VIJAY.CHATTE@MICLYNEXPRESSOFFSHORE.COM', 0x323338373939, 'MEO User', '2017-01-18 01:29:46', '0000-00-00 00:00:00'),
(426, 'ME00096', 'ALABBAS MAHDI ', 'ALABBAS.MAHDI@MICLYNEXPRESSOFFSHORE.COM', 0x333938323839, 'MEO User', '2017-01-18 01:30:46', '0000-00-00 00:00:00'),
(427, 'ME00082', 'JOSE WILSON OTO', 'JOSE.WILSON@MICLYNEXPRESSOFFSHORE.COM', 0x313233373433, 'MEO User', '2017-01-18 01:31:31', '0000-00-00 00:00:00'),
(428, 'ME00013', 'HISHAM  AHAMED', 'HISHAM.AHAMED@MICLYNEXPRESSOFFSHORE.COM', 0x393133313838, 'MEO User', '2017-01-18 01:32:12', '0000-00-00 00:00:00'),
(429, 'ME00056', 'YOGESH PATIL', 'YOGESH.PATIL@MICLYNEXPRESSOFFSHORE.COM', 0x343933343233, 'MEO User', '2017-01-18 01:32:53', '0000-00-00 00:00:00'),
(430, 'ME00034', 'PRADEEP KUMAR', '---@MEOGROUP.COM', 0x313835393339, 'MEO User', '2017-01-18 01:34:13', '0000-00-00 00:00:00'),
(431, 'ME00003', 'ANDREW AUGUSTIN WOOD', '----@MEOGROUP.COM', 0x343531313938, 'MEO User', '2017-01-18 01:35:51', '0000-00-00 00:00:00'),
(432, 'ME00001', 'ROMEO DELA CRUZ GACHO', '------@MEOGROUP.COM', 0x323539393539, 'MEO User', '2017-01-18 01:36:28', '0000-00-00 00:00:00'),
(433, 'ME00046', 'VIRGILIO TECSON TIRO', '-NA-@MEOGROUP.COM', 0x383232313435, 'MEO User', '2017-01-18 01:39:38', '0000-00-00 00:00:00'),
(434, 'ME00055', 'ELNUR ABDULLAYEV', 'ELNUR@MICLYNEXPRESSOFFSHORE.COM', 0x343738343532, 'MEO User', '2017-01-18 01:40:21', '0000-00-00 00:00:00'),
(435, 'ME00078', 'MANJULA  SAMARAKOON', 'MANJULA.SAMARKOON@MEOGROUP.COM', 0x333932373732, 'MEO User', '2017-01-18 01:41:26', '0000-00-00 00:00:00'),
(436, 'ME00052', 'ROBIN ISSAC', 'ROBIN@MICLYNEXPRESSOFFSHORE.COM', 0x313635373838, 'MEO User', '2017-01-18 01:42:08', '0000-00-00 00:00:00'),
(437, 'ME00105', 'SAMAN PATHIRANA ', 'PATHIRANA@MICLYNEXPRESSOFFSHORE.COM', 0x353338333937, 'MEO User', '2017-01-18 01:43:34', '0000-00-00 00:00:00'),
(438, 'ME00043', 'JINKHIE GALLARZAN', 'JINKHIE.GALLARZAN@MICLYNEXPRESSOFFSHORE.COM', 0x333431343838, 'MEO User', '2017-01-18 01:44:02', '0000-00-00 00:00:00'),
(439, 'ME00103', 'BAPUSO DINDE ', 'BAPUSO.DINDE@MICLYNEXPRESSOFFSHORE.COM', 0x333334313832, 'MEO User', '2017-01-18 01:44:44', '0000-00-00 00:00:00'),
(440, 'ME00040', 'KHALID SAOUD A AL SHAMMARY', '-------@MEOGROUP.COM', 0x353838383831, 'MEO User', '2017-01-18 01:46:00', '0000-00-00 00:00:00'),
(441, 'MEO020', 'HASHIM AL SEFI', '------@MICLYNEXPRESSOFFSHORE.COM', 0x313133333339, 'MEO User', '2017-01-18 01:47:30', '0000-00-00 00:00:00'),
(442, 'ME00015', 'ABDUL KADIR BUTHIYABURAYIL', '----@MICLYNEXPRESSOFFSHORE.COM', 0x353331343938, 'MEO User', '2017-01-18 01:48:45', '0000-00-00 00:00:00'),
(443, 'ME00016', 'THATHAMMA MOHAMMED MOOSA ', '---@MICLYNEXPRESSOFFSHORE.COM', 0x343535343237, 'MEO User', '2017-01-18 01:49:39', '0000-00-00 00:00:00'),
(444, 'ME00087', 'MICHAEL SLY ', 'MICHAEL.SLY@MICLYNEXPRESSOFFSHORE.COM', 0x333731363732, 'MEO User', '2017-01-18 01:50:10', '0000-00-00 00:00:00'),
(445, 'ME00029', 'SHIYAS NAZARUDEEN ', 'SHIYAS.NAZARUDEEN@MICLYNEXPRESSOFFSHORE.COM', 0x333933343736, 'MEO User', '2017-01-18 01:50:44', '0000-00-00 00:00:00'),
(446, 'SGS001', 'DIDI JAYA SAPUTRA', 'DIDI.SAPUTRA@SGS-OFFSHORE.COM', 0x333836373931, 'MEO User', '2017-01-18 19:01:53', '0000-00-00 00:00:00'),
(447, 'E0020', 'JOYCE TAN', 'JOYCE.TAN@MEOGROUP.COM', 0x383838323337, 'MEO User', '2017-01-18 19:13:19', '0000-00-00 00:00:00'),
(448, 'S00309', 'FRANK TAM', 'FRANK.TAM@MEOGROUP.COM', 0x383634373837, 'MEO User', '2017-01-18 19:23:05', '0000-00-00 00:00:00'),
(449, 'S00332', 'KEITH NG', 'KEITH.NG@MEOGROUP.COM', 0x353232383136, 'MEO User', '2017-01-18 19:23:39', '0000-00-00 00:00:00'),
(450, 'SGS023', 'ANGGARA MULIA', 'ANGGARA.MULIA@SGS-OFFSHORE.COM', 0x323434333531, 'MEO User', '2017-01-18 19:44:54', '0000-00-00 00:00:00'),
(451, 'SGS010', 'VANESSA TALAVERA AQUINO', 'VANESSA.AQUINO@SGS-OFFSHORE.COM', 0x363638373835, 'MEO User', '2017-01-18 19:45:41', '0000-00-00 00:00:00'),
(452, 'SPS004', 'YENNY IMELDA MARTHING', 'YENNY.MARTHING@SPS-OFFSHORE.COM', 0x393133383434, 'MEO User', '2017-01-18 19:46:20', '0000-00-00 00:00:00'),
(453, 'SPS010', 'KUNTO WIBISONO', 'KUNTO.WIBISONO@SPS-OFFSHORE.COM', 0x313239313335, 'MEO User', '2017-01-18 19:46:54', '0000-00-00 00:00:00'),
(454, 'SGS024', 'DODI SETIAGAMA', 'DODI.SETIAGAMA@SPS-OFFSHORE.COM', 0x313739393539, 'MEO User', '2017-01-18 19:50:10', '0000-00-00 00:00:00'),
(455, 'SPS008', 'AGUS TRI ATMOJO', 'AGUS.ATMOJO@SPS-OFFSHORE.COM', 0x343233313938, 'MEO User', '2017-01-18 19:51:16', '0000-00-00 00:00:00'),
(456, 'SGS020', 'DEDI SUPRIYADI', 'DEDI.SUPRIYADI@SGS-OFFSHORE.COM', 0x383739323533, 'MEO User', '2017-01-18 19:51:48', '0000-00-00 00:00:00'),
(457, 'SPS002', 'ADI MASTIN', 'ADI.MASTIN@SGS-OFFSHORE.COM', 0x363434313537, 'MEO User', '2017-01-18 19:52:29', '0000-00-00 00:00:00'),
(458, 'SGS014', 'RIZKA NOMITURSILOJATI', 'RIZKA.NOMITURSILOJATI@SGS-OFFSHORE.COM', 0x343932313236, 'MEO User', '2017-01-18 19:53:38', '0000-00-00 00:00:00'),
(459, 'NPP004', 'DIAN UTAMI', 'DIAN.UTAMI@NPP-OFFSHORE.COM', 0x393939393335, 'MEO User', '2017-01-18 19:54:45', '0000-00-00 00:00:00'),
(460, 'MEOS005', 'ANDREW KESAULYA', 'ANDREW.KESAULYA@SGS-OFFSHORE.COM', 0x373138323337, 'MEO User', '2017-01-18 19:55:18', '0000-00-00 00:00:00'),
(461, 'SGS002', 'NAHARADAM WIJAYA', 'NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM', 0x313932313531, 'MEO User', '2017-01-18 19:57:04', '0000-00-00 00:00:00'),
(462, 'SGS019', 'ALPHARD OKA ARIFIN', 'ALPHARD.ARIFIN@SGS-OFFSHORE.COM', 0x373737373532, 'MEO User', '2017-01-18 20:00:46', '0000-00-00 00:00:00'),
(463, 'SGS016', 'YULIANTORO', 'YULIANTORO@SGS-OFFSHORE.COM', 0x343933363333, 'MEO User', '2017-01-18 20:01:57', '0000-00-00 00:00:00'),
(464, 'SGS018', 'PAING WIDODO', 'PAING.WIDODO@SGS-OFFSHORE.COM', 0x383132323533, 'MEO User', '2017-01-18 20:02:43', '0000-00-00 00:00:00'),
(465, 'SGS008', 'AZIZ ARZIZAL', 'AZIZ.ARZIZAL@SGS-OFFSHORE.COM', 0x393534333532, 'MEO User', '2017-01-18 20:03:16', '0000-00-00 00:00:00'),
(466, 'SPS025', 'DEKY WERDOKO', 'DEKY.WERDOKO@SGS-OFFSHORE.COM', 0x313137393339, 'MEO User', '2017-01-18 20:04:04', '0000-00-00 00:00:00'),
(467, 'SPS009', 'ERNA RENSI NORA', 'EMA.RENSINORA@MEOGROUP.COM', 0x323334363334, 'MEO User', '2017-01-18 20:04:21', '0000-00-00 00:00:00'),
(468, 'SGS006', 'RICKY KURNIAWAN', 'RICKY.KURNIAWAN@SGS-OFFSHORE.COM', 0x373337343132, 'MEO User', '2017-01-18 20:04:46', '0000-00-00 00:00:00'),
(469, 'SGS011', 'DANI GUNAWAN', 'DANI.GUNAWAN@SGS-OFFSHORE.COM', 0x393235313334, 'MEO User', '2017-01-18 20:05:14', '0000-00-00 00:00:00'),
(470, 'SGS027', 'LIA ANGGRAINY GINTING', 'LIA.GINTING@SPS-OFFSHORE.COM', 0x373938363532, 'MEO User', '2017-01-18 20:06:07', '0000-00-00 00:00:00'),
(471, 'SGS004', 'AGUS SETYO BUDI S.', '-@SGS-OFFSHORE.COM', 0x363436373735, 'MEO User', '2017-01-18 20:07:20', '0000-00-00 00:00:00'),
(472, 'MEOS010', 'THEO ANDRIAN', 'THEO.ANDRIAN@MEOGROUP.COM', 0x343136343736, 'MEO User', '2017-01-18 20:08:20', '0000-00-00 00:00:00'),
(473, 'MEOS009', 'RENALDO DARMADI', 'RENALDO.DARMADI@MEOGROUP.COM', 0x353339373234, 'MEO User', '2017-01-18 20:09:37', '0000-00-00 00:00:00'),
(474, 'MEOS012', 'FIRMAN LESMANA', 'FRIMAN.LESMANA@MEOGROUP.COM', 0x393737353932, 'MEO User', '2017-01-18 21:15:39', '0000-00-00 00:00:00'),
(475, 'SPS011', 'SUHARNO', '-----@MEOGROUP.COM', 0x393539373435, 'MEO User', '2017-01-18 21:16:50', '0000-00-00 00:00:00'),
(476, 'SPS012', 'DRIPRANTO', '---------@MEOGROUP.COM', 0x343238353531, 'MEO User', '2017-01-18 21:18:18', '0000-00-00 00:00:00'),
(477, 'SPS017', 'NUNU DIHARJA', '--------@MEOGROUP.COM', 0x323831343632, 'MEO User', '2017-01-18 21:18:54', '0000-00-00 00:00:00'),
(478, 'SPS015', 'M. EGA PERMANA', '----------@MEOGROUP.COM', 0x313838383231, 'MEO User', '2017-01-18 21:20:02', '0000-00-00 00:00:00'),
(479, 'SPS013', 'KUSTIYO ADI', 'NIL@MEOGROUP.COM', 0x363237373333, 'MEO User', '2017-01-18 21:20:58', '0000-00-00 00:00:00'),
(480, 'SPS014', 'HENDRA KUSUMA', 'NILL@MEOGROUP.COM', 0x383135353339, 'MEO User', '2017-01-18 21:21:42', '0000-00-00 00:00:00'),
(481, 'SPS016', 'M. ISMAIL', '__@MEOGROUP.COM', 0x393734333231, 'MEO User', '2017-01-18 21:22:33', '0000-00-00 00:00:00'),
(482, 'SPS021', 'ZAHRUDIN', '_@MEOGROUP.COM', 0x383334373132, 'MEO User', '2017-01-18 21:23:16', '0000-00-00 00:00:00'),
(483, 'SPS020', 'EFFENDI SAPUTRA', '___@MEOGROUP.COM', 0x323337373939, 'MEO User', '2017-01-18 21:24:18', '0000-00-00 00:00:00'),
(484, 'SPS019', 'FIRMAN PERDANA', '____@MEOGROUP.COM', 0x353838313131, 'MEO User', '2017-01-18 21:25:02', '0000-00-00 00:00:00'),
(485, 'MEOS002', 'LUKMAN AFFANDY', 'LUKMAN.AFFANDY@MEOGROUP.COM', 0x323833323536, 'MEO User', '2017-01-18 21:25:27', '0000-00-00 00:00:00'),
(486, 'MEOS003', 'CHAIRUDDIN', 'CHAIRUDDIN@MEOGROUP.COM', 0x313238383233, 'MEO User', '2017-01-18 21:27:00', '0000-00-00 00:00:00'),
(487, 'SPS026', 'EKO BUDI TARMANTO', 'BUDI.TARMANTO@MEOGROUP.COM', 0x393639313539, 'MEO User', '2017-01-18 21:27:48', '0000-00-00 00:00:00'),
(488, 'ME00008', 'JUANITO BASCON SANTOS ', 'JUANITO.SANTOS@MEOGROUP.COM', 0x343338363737, 'MEO User', '2017-01-19 01:43:25', '0000-00-00 00:00:00'),
(489, 'ME00116', 'CESAR CAYABAN', 'CESAR.CAYABAN@MEOGROUP.COM', 0x333633363434, 'MEO User', '2017-01-19 01:45:36', '0000-00-00 00:00:00'),
(490, 'ME00117', 'GEMMA KALAW', 'GEMMA.KALAW@MEOGROUP.COM', 0x373435313439, 'MEO User', '2017-01-19 01:46:59', '0000-00-00 00:00:00'),
(491, 'ME00115', 'SYARLY CAHYADI', 'SYARLY.CAHYADI@MEOGROUP.COM', 0x353439333534, 'MEO User', '2017-01-19 01:50:44', '0000-00-00 00:00:00'),
(492, 'SGS028', 'FATRONI', 'FATRONI@MEOGROUP.COM', 0x373733353232, 'MEO User', '2017-01-19 17:18:58', '0000-00-00 00:00:00'),
(493, 'M016', 'WONG LOON SENG', 'LOONSENG.WONG@MEOGROUP.COM', 0x333632363939, 'MEO User', '2017-01-19 17:23:58', '0000-00-00 00:00:00'),
(494, '', 'Bharataj MEO User', 'bharatraj@singsys.com', '', 'MEO User', '2017-01-20 01:24:04', '0000-00-00 00:00:00'),
(495, '112', 'BHATA', 'BHARATRAJ+1111@SINGSYS.COM', 0x383134353236, 'MEO User', '2017-01-24 02:30:37', '0000-00-00 00:00:00'),
(496, '123', 'AKASH', 'AKASHKUMAR@SINGSYS.COM', 0x363939313932, 'MEO User', '2017-01-24 04:20:44', '0000-00-00 00:00:00'),
(497, '12345678', 'QWERTY', 'A@SINGSYS.COM', 0x393838383835, 'MEO User', '2017-01-24 04:26:36', '0000-00-00 00:00:00'),
(498, '11606', 'ATTASIT  KORNCHAIYAPRUK', 'ATTASIT.K@UNITHAI.COM', 0x333739333637, 'MEO User', '2017-01-25 22:27:54', '0000-00-00 00:00:00'),
(499, '11471', 'YUTH  METHEEWITUD', 'YUTH.M@UNITHAI.COM', 0x333936333234, 'MEO User', '2017-01-25 22:29:34', '0000-00-00 00:00:00'),
(500, '11074', 'PIRIYADIT  CHOOPHUNGART', 'PIRIYADIT.C@UNITHAI.COM', 0x393537313937, 'MEO User', '2017-01-25 22:29:56', '0000-00-00 00:00:00'),
(501, '11133', 'SASITHORN  SURIYACHAN ', 'SASITHORN.S@UNITHAI.COM', 0x333739393834, 'MEO User', '2017-01-25 22:32:42', '0000-00-00 00:00:00'),
(502, '11045', 'SIVILAI  CHIRAMANAPHUN', 'SIVILAI.C@UNITHAI.COM', 0x373737323731, 'MEO User', '2017-01-25 22:35:06', '0000-00-00 00:00:00'),
(503, '11592', 'SUKIT  KITPATH', 'KANET.C@UNITHAI.COM', 0x393733323134, 'MEO User', '2017-01-25 22:35:58', '0000-00-00 00:00:00'),
(504, '11038', 'NARUMON SIRITONGKAM ', 'NARUMON.S@UNITHAI.COM', 0x333239323832, 'MEO User', '2017-01-25 22:36:35', '0000-00-00 00:00:00'),
(505, '11426', 'BENJAWAN  PANKLOM', 'BENJAWAN.P@UNITHAI.COM', 0x323437323632, 'MEO User', '2017-01-25 22:37:09', '0000-00-00 00:00:00'),
(506, '11533', 'CHADA  PHOONJANTANG', 'CHADA.P@UNITHAI.COM', 0x383737363739, 'MEO User', '2017-01-25 22:38:13', '0000-00-00 00:00:00'),
(507, '1304', 'DAWAPHA  JANTARAPITAK', 'DAWAPHA.D@UNITHAI.COM', 0x343135393936, 'MEO User', '2017-01-25 22:38:34', '0000-00-00 00:00:00'),
(508, '71585', 'YAOWALUCK  THREECHADARAT', 'YAOWALUCK.T@UNIWISE.CO.TH', 0x373637323832, 'MEO User', '2017-01-25 22:39:07', '0000-00-00 00:00:00'),
(509, '71573', 'BRAD  MORPHEW', 'BRAD.MORPHEW@UNIWISE.CO.TH', 0x343335383231, 'MEO User', '2017-01-25 22:42:04', '0000-00-00 00:00:00'),
(510, '71407', 'JON AXEL HAUGLUM', 'JON.AXEL@UNIWISE.CO.TH', 0x373933323733, 'MEO User', '2017-01-25 22:42:23', '0000-00-00 00:00:00'),
(511, '7418', 'WARODOM THAMRONGTHANYAWONG', 'WARODOM.T@UNIWISE.CO.TH', 0x363439373137, 'MEO User', '2017-01-25 22:42:49', '0000-00-00 00:00:00'),
(512, '71006', 'ALISA PHUCHUMNIAN', 'ALISA.P@UNIWISE.CO.TH', 0x383232313139, 'MEO User', '2017-01-25 22:43:19', '0000-00-00 00:00:00'),
(513, '7974', 'NARUEMOL JIRANANTASAK', 'NARUEMOL.J@UNIWISE.CO.TH', 0x313533393335, 'MEO User', '2017-01-25 22:43:42', '0000-00-00 00:00:00'),
(514, '7147', 'VANDEE INTAPANYA', 'VANDEE.I@UNIWISE.CO.TH', 0x353638353634, 'MEO User', '2017-01-25 22:44:25', '0000-00-00 00:00:00'),
(515, '71182', 'YINGYOD THONGNAUM', 'YINYOD.T@UNIWISE.CO.TH', 0x383834373237, 'MEO User', '2017-01-25 22:45:08', '0000-00-00 00:00:00'),
(516, '7057', 'VIPA TEEPAPONG', 'VIPA.T@UNIWISE.CO.TH', 0x323339373631, 'MEO User', '2017-01-25 22:45:51', '0000-00-00 00:00:00'),
(517, '71436', 'PACHARAPORN THUNPRASERT', 'PACHARAPORN.T@UNIWISE.CO.TH', 0x393832353431, 'MEO User', '2017-01-25 22:46:11', '0000-00-00 00:00:00'),
(518, '71529', 'NIDA SENGTHONG', 'NIDA.S@UNIWISE.CO.TH', 0x363933343539, 'MEO User', '2017-01-25 22:46:50', '0000-00-00 00:00:00'),
(519, '71601', 'VERNON LOW', 'VERNON.LOW@UNIWISE.CO.TH', 0x383539313637, 'MEO User', '2017-01-25 22:47:56', '0000-00-00 00:00:00'),
(520, '71360', 'PATTARAPOOM SANTIWEKIN', 'PATTARAPOOM.S@UNIWISE.CO.TH', 0x343231323735, 'MEO User', '2017-01-25 22:48:18', '0000-00-00 00:00:00'),
(521, '7954', 'WORASAK BUAPLOD', 'WORASAK.B@UNIWISE.CO.TH', 0x313434373633, 'MEO User', '2017-01-25 22:48:34', '0000-00-00 00:00:00'),
(522, '71505', 'PAWARIT ARSAKIT', 'PAWARIT.A@UNIWISE.CO.TH', 0x353736323933, 'MEO User', '2017-01-25 22:48:57', '0000-00-00 00:00:00'),
(523, '71421', 'PANYA BOONANEKSUB', 'PANYA.B@UNIWISE.CO.TH', 0x373832323132, 'MEO User', '2017-01-25 22:49:21', '0000-00-00 00:00:00'),
(524, '7949', 'APAPAN TEPMANEE', 'APAPAN.T@UNIWISE.CO.TH', 0x383234383233, 'MEO User', '2017-01-25 22:49:55', '0000-00-00 00:00:00'),
(525, '71564', 'SUPASSORN  SAENNIEM', 'SUPASSORN.S@UNIWISE.CO.TH', 0x333434343835, 'MEO User', '2017-01-25 22:50:23', '0000-00-00 00:00:00'),
(526, '71506', 'CAPT.PONGSARIT KLOMKHUM', 'PONGSARIT.K@UNIWISE.CO.TH', 0x333637313531, 'MEO User', '2017-01-25 22:50:42', '0000-00-00 00:00:00'),
(527, '71462', 'CAPT.THIANCHAI DHANKULCHAI', 'THIANCHAI.D@UNIWISE.CO.TH', 0x323439333535, 'MEO User', '2017-01-25 22:51:01', '0000-00-00 00:00:00'),
(528, '71513', 'THEERADET SAENKET', 'THEERADET.S@UNIWISE.CO.TH', 0x323632313332, 'MEO User', '2017-01-25 22:51:24', '0000-00-00 00:00:00'),
(529, '71578', 'SAMPAN  SAMPANWICHAIN', 'SUWIT.S@UNIWISE.CO.TH', 0x373138343934, 'MEO User', '2017-01-25 22:52:02', '0000-00-00 00:00:00'),
(530, '71383', 'JARIYA PANKHOUSUK', 'JARIYA.P@UNIWISE.CO.TH', 0x343932343935, 'MEO User', '2017-01-25 22:52:23', '0000-00-00 00:00:00'),
(531, '71248', 'THONGCHAI PETCHARAT', 'THONGCHAI.P@UNIWISE.CO.TH', 0x313734323537, 'MEO User', '2017-01-25 22:52:56', '0000-00-00 00:00:00'),
(532, '7773', 'PRAPHOJ JAICHAROEN', 'PRAPHOJ.J@UNIWISE.CO.TH', 0x363632323332, 'MEO User', '2017-01-25 22:53:21', '0000-00-00 00:00:00'),
(533, '7984', 'SITHE SOOKBAN', 'SITHE.S@UNIWISE.CO.TH', 0x373734393433, 'MEO User', '2017-01-25 22:53:36', '0000-00-00 00:00:00'),
(534, '71460', 'PANUWAT SANGASILAPA', 'PANUWAT@UNIWISE.CO.TH', 0x363138383138, 'MEO User', '2017-01-25 22:53:54', '0000-00-00 00:00:00'),
(535, '71393', 'SUTHAT KUAKOONRAT', 'SUTHAT.K@UNIWISE.CO.TH', 0x363236313838, 'MEO User', '2017-01-25 22:54:10', '0000-00-00 00:00:00'),
(536, '71395', 'WANNAPAT TABMAK', 'WANNAPAT.T@UNIWISE.CO.TH', 0x393535343134, 'MEO User', '2017-01-25 22:54:32', '0000-00-00 00:00:00'),
(537, '71543', 'SOMBOON POLSWANG', 'SOMBOON.P@UNIWISE.CO.TH', 0x353838353239, 'MEO User', '2017-01-25 22:54:49', '0000-00-00 00:00:00'),
(538, '71574', 'SURASAK  WEERAWATTANA', 'SURASAK.W@UNIWISE.CO.TH', 0x313833313537, 'MEO User', '2017-01-25 22:55:07', '0000-00-00 00:00:00'),
(539, '71600', 'SATID  THONGSRINUAN  ', 'SATID.T@UNIWISE.CO.TH', 0x353634353731, 'MEO User', '2017-01-25 22:55:21', '0000-00-00 00:00:00'),
(540, '71101', 'KITTIMA WANNASRI', 'KITTIMA.W@UNIWISE.CO.TH', 0x313635373935, 'MEO User', '2017-01-25 22:55:38', '0000-00-00 00:00:00'),
(541, '71053', 'CHARIYA CHAROENSOOK', 'CHARIYA.C@UNIWISE.CO.TH', 0x343832343938, 'MEO User', '2017-01-25 22:55:58', '0000-00-00 00:00:00'),
(542, '71503', 'USAVADEE KETKAEW', 'USAVADEE.K@UNIWISE.CO.TH', 0x313435313432, 'MEO User', '2017-01-25 22:56:14', '0000-00-00 00:00:00'),
(543, '71373', 'THIRAYA BOONRAT', 'THIRAYA.B@UNIWISE.CO.TH', 0x323535393238, 'MEO User', '2017-01-25 22:56:34', '0000-00-00 00:00:00'),
(544, '71504', 'NATTAMON KHUNTIKULANON', 'NUTTAMON.K@UNIWISE.CO.TH', 0x313434353733, 'MEO User', '2017-01-25 22:56:59', '0000-00-00 00:00:00'),
(545, '71429', 'TEEKHAYU MEEKAEW', 'TEEKHAYU.M@UNIWISE.CO.TH', 0x333737343739, 'MEO User', '2017-01-25 22:57:26', '0000-00-00 00:00:00'),
(546, '71456', 'NUJCHAREE JAMJAENG', 'NUJCHAREE.J@UNIWISE.CO.TH', 0x373435373234, 'MEO User', '2017-01-25 22:57:45', '0000-00-00 00:00:00'),
(547, '71476', 'DANAI JARI', 'DANAI.J@UNIWISE.CO.TH', 0x353835363236, 'MEO User', '2017-01-25 22:59:02', '0000-00-00 00:00:00'),
(548, '71020', 'AMPOL CHAREANSUP', 'AMPOL.C@UNIWISE.CO.TH', 0x313731323837, 'MEO User', '2017-01-25 22:59:22', '0000-00-00 00:00:00'),
(549, '71317', 'SANTI JUATHAI', 'SANTI.J@UNIWISE.CO.TH', 0x373133363735, 'MEO User', '2017-01-25 22:59:39', '0000-00-00 00:00:00'),
(550, '71367', 'SOREEKIN SANGNUAL', 'SORREKIN.S@UNIWISE.CO.TH', 0x373138343833, 'MEO User', '2017-01-25 22:59:59', '0000-00-00 00:00:00'),
(551, '71453', 'RACHEN  CHAIONKAEW', 'RACHEN.C@UNIWISE.CO.TH', 0x373932383231, 'MEO User', '2017-01-25 23:00:24', '0000-00-00 00:00:00'),
(552, '71371', 'JIRAPORN SUWANNA', 'JIRAPORN.S@UNIWISE.CO.TH', 0x373938383136, 'MEO User', '2017-01-25 23:00:44', '0000-00-00 00:00:00'),
(553, '7994', 'SITTIPONG SAYCHUMPUN', 'SITTIPONG.SC@UNIWISE.CO.TH', 0x363339313738, 'MEO User', '2017-01-25 23:01:04', '0000-00-00 00:00:00'),
(554, '71056', 'SOPON PONPAI', 'SOPON.P@UNIWISE.CO.TH', 0x323533353931, 'MEO User', '2017-01-25 23:05:01', '0000-00-00 00:00:00'),
(555, '71359', 'KANDA RAKPAKDEE', 'KANDA.R@UNIWISE.CO.TH', 0x373639363934, 'MEO User', '2017-01-26 00:11:38', '0000-00-00 00:00:00'),
(556, '71372', 'SUWANNA BOONKUMNED', 'SUWANNA.B@UNIWISE.CO.TH', 0x373233353835, 'MEO User', '2017-01-26 00:13:20', '0000-00-00 00:00:00'),
(557, '71433', 'PHETBUREE SANGMANEE', 'PHETBUREE.S@UNIWISE.CO.TH', 0x323531333439, 'MEO User', '2017-01-26 00:13:39', '0000-00-00 00:00:00'),
(558, '71508', 'PHILIPPE LAUVRAY', 'PHILIPPE.L@UNIWISE.CO.TH', 0x373432383734, 'MEO User', '2017-01-26 00:13:56', '0000-00-00 00:00:00'),
(559, '71567', 'KITTISAK  SUWANNSRI', 'KITTISAK.S@UNIWISE.CO.TH', 0x393132333535, 'MEO User', '2017-01-26 00:14:25', '0000-00-00 00:00:00'),
(560, '71306', 'THAMRONGSAK PANJUNSEE', 'THAMRONGSAK.P@UNIWISE.CO.TH', 0x353138373135, 'MEO User', '2017-01-26 00:14:53', '0000-00-00 00:00:00'),
(561, '71370', 'PATHOMPONG PROMYA ', 'PATHOMPONG.P@UNIWISE.CO.TH', 0x353935383733, 'MEO User', '2017-01-26 00:15:15', '0000-00-00 00:00:00'),
(562, '71463', 'MOEHAMAD  ARSYAD', 'MOEHAMAD.A@UNIWISE.CO.TH', 0x333737353337, 'MEO User', '2017-01-26 00:15:38', '0000-00-00 00:00:00'),
(563, '0305', 'BHARATRAJ+12', 'BHARATRAJ+12@SINGSYS.COM', 0x313231353634, 'Client', '2017-01-29 20:59:40', '0000-00-00 00:00:00'),
(564, '0000000000001', 'QUEK YEOW RONG', 'YR.QUEK@MEOGROUP.COM', 0x313734323437, 'MEO User', '2017-02-01 00:13:53', '0000-00-00 00:00:00'),
(565, 'CLIENTUSER2', 'ABHAY+1', 'ABHAY+1@SINGSYS.COM', '', 'Client', '2017-01-06 09:18:22', '2017-02-06 13:03:12'),
(566, 'CLIENTUSER2', 'ABHAY+2', 'ABHAY+2@SINGSYS.COM', '', 'Client', '2017-01-06 09:18:22', '2017-02-06 13:03:12'),
(567, 'CLIENTUSER3', 'ABHAY+3', 'ABHAY+3@SINGSYS.COM', '', 'Client', '2017-01-06 09:18:22', '2017-02-06 13:03:12'),
(568, 'CLIENTUSER4', 'ABHAY+4', 'ABHAY+4@SINGSYS.COM', '', 'Client', '2017-01-06 09:18:22', '2017-02-06 13:03:12'),
(569, 'CLIENTUSER5', 'ABHAY+5', 'ABHAY+5@SINGSYS.COM', '', 'Client', '2017-01-06 09:18:22', '2017-02-06 13:03:12'),
(570, 'KDFBKZVNSJH', 'MZXBVISBVKJ', 'KSJHV@SKFF.CSOJ', 0x313735363135, 'MEO User', '2017-02-21 23:12:32', '0000-00-00 00:00:00'),
(571, 'sanasingsys', 'Sana Rizwan', 'sana@singsys.com', 0x333934343535, 'MEO User', '2017-06-16 03:53:17', '2017-06-16 09:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_rights_action`
--

CREATE TABLE `meo_user_rights_action` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_rights_action`
--

INSERT INTO `meo_user_rights_action` (`id`, `id_group_name`, `member_id`, `status`, `added_on`, `updated_on`, `updated_by`) VALUES
(1, 4, 0, 'active', '2017-06-05 12:02:34', '2017-06-05 17:32:34', 'admin'),
(4, 4, 0, 'active', '2017-06-05 13:34:34', '2017-06-05 19:04:34', 'admin'),
(7, 4, 132, 'active', '2017-06-07 12:01:19', '2017-06-07 17:31:19', 'admin'),
(13, 1, 292, 'active', '2017-06-07 13:04:50', '2017-06-07 18:34:50', 'admin'),
(39, 1, 143, 'active', '2017-06-08 13:01:31', '2017-06-08 18:31:31', 'admin'),
(41, 3, 69, 'active', '2017-06-18 16:18:28', '2017-06-18 21:48:28', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_rights_ims`
--

CREATE TABLE `meo_user_rights_ims` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_rights_ims`
--

INSERT INTO `meo_user_rights_ims` (`id`, `id_group_name`, `member_id`, `status`, `added_on`, `updated_on`, `updated_by`) VALUES
(2, 4, 69, 'active', '2017-06-07 09:31:50', '2017-06-07 15:01:50', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_rights_raci`
--

CREATE TABLE `meo_user_rights_raci` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_rights_raci`
--

INSERT INTO `meo_user_rights_raci` (`id`, `id_group_name`, `member_id`, `added_on`, `updated_on`, `updated_by`) VALUES
(5, 3, 69, '2017-06-08 05:00:09', '2017-06-08 10:30:09', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_right_admin`
--

CREATE TABLE `meo_user_right_admin` (
  `id_user_right_admin` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `id_meo_user` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_right_admin`
--

INSERT INTO `meo_user_right_admin` (`id_user_right_admin`, `id_group`, `id_meo_user`, `status`, `added_on`, `updated_on`) VALUES
(2, 2, 119, 'active', '2017-01-29 21:02:19', '2017-03-06 09:43:38'),
(3, 2, 60, 'active', '2017-01-29 21:02:42', '2017-02-18 12:14:02'),
(4, 2, 11, 'active', '2017-02-09 00:47:14', '2017-02-22 08:47:41'),
(7, 1, 219, 'active', '2017-02-18 02:25:49', '2017-02-18 20:01:29'),
(8, 3, 220, 'active', '2017-02-18 02:26:37', '2017-02-18 16:05:39'),
(9, 2, 221, 'active', '2017-02-18 02:29:12', '2017-02-18 20:04:28'),
(11, 2, 215, 'active', '2017-02-18 06:30:19', '2017-02-18 21:18:29'),
(12, 1, 222, 'active', '2017-02-18 06:31:59', '0000-00-00 00:00:00'),
(15, 2, 33, 'active', '2017-02-21 19:16:07', '0000-00-00 00:00:00'),
(17, 1, 224, 'active', '2017-06-05 07:09:46', '0000-00-00 00:00:00'),
(18, 1, 325, 'active', '2017-06-05 07:10:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_right_admin_access`
--

CREATE TABLE `meo_user_right_admin_access` (
  `id_user_right_admin` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `view_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `modify_add_delete` enum('active','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_right_admin_access`
--

INSERT INTO `meo_user_right_admin_access` (`id_user_right_admin`, `id_section`, `view_status`, `modify_add_delete`) VALUES
(7, 1, 'active', 'active'),
(7, 2, 'active', 'inactive'),
(7, 3, 'inactive', 'inactive'),
(7, 4, 'active', 'active'),
(7, 5, 'active', 'inactive'),
(12, 1, 'active', 'active'),
(12, 2, 'active', 'inactive'),
(12, 3, 'inactive', 'inactive'),
(12, 4, 'active', 'active'),
(12, 5, 'active', 'inactive'),
(8, 1, 'active', 'active'),
(8, 2, 'active', 'inactive'),
(8, 3, 'active', 'active'),
(8, 4, 'active', 'active'),
(8, 5, 'active', 'active'),
(2, 1, 'active', 'inactive'),
(2, 2, 'active', 'inactive'),
(2, 3, 'inactive', 'inactive'),
(2, 4, 'inactive', 'inactive'),
(2, 5, 'active', 'inactive'),
(3, 1, 'active', 'inactive'),
(3, 2, 'active', 'inactive'),
(3, 3, 'inactive', 'inactive'),
(3, 4, 'inactive', 'inactive'),
(3, 5, 'active', 'inactive'),
(4, 1, 'active', 'inactive'),
(4, 2, 'active', 'inactive'),
(4, 3, 'inactive', 'inactive'),
(4, 4, 'inactive', 'inactive'),
(4, 5, 'active', 'inactive'),
(9, 1, 'active', 'inactive'),
(9, 2, 'active', 'inactive'),
(9, 3, 'inactive', 'inactive'),
(9, 4, 'inactive', 'inactive'),
(9, 5, 'active', 'inactive'),
(11, 1, 'active', 'inactive'),
(11, 2, 'active', 'inactive'),
(11, 3, 'inactive', 'inactive'),
(11, 4, 'inactive', 'inactive'),
(11, 5, 'active', 'inactive'),
(15, 1, 'active', 'inactive'),
(15, 2, 'active', 'inactive'),
(15, 3, 'inactive', 'inactive'),
(15, 4, 'inactive', 'inactive'),
(15, 5, 'active', 'inactive'),
(17, 1, 'active', 'active'),
(17, 2, 'active', 'inactive'),
(17, 3, 'inactive', 'inactive'),
(17, 4, 'active', 'active'),
(17, 5, 'active', 'inactive'),
(18, 1, 'active', 'active'),
(18, 2, 'active', 'inactive'),
(18, 3, 'inactive', 'inactive'),
(18, 4, 'active', 'active'),
(18, 5, 'active', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `meo_verification_log`
--

CREATE TABLE `meo_verification_log` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) DEFAULT NULL,
  `id_vessel_region` int(11) DEFAULT NULL,
  `section` enum('shore','vessel') NOT NULL,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_verification_log`
--

INSERT INTO `meo_verification_log` (`id_user`, `id_vessel_name`, `id_vessel_region`, `section`, `sent_on`) VALUES
(238, NULL, NULL, 'shore', '2017-02-01 04:49:39'),
(238, NULL, NULL, 'shore', '2017-02-01 04:55:18'),
(44, NULL, NULL, 'shore', '2017-02-01 04:55:37'),
(44, NULL, NULL, 'shore', '2017-02-01 05:13:46'),
(148, NULL, NULL, 'shore', '2017-02-01 19:26:40'),
(106, NULL, NULL, 'shore', '2017-02-01 19:26:43'),
(44, NULL, NULL, 'shore', '2017-02-02 00:17:13'),
(87, NULL, NULL, 'shore', '2017-02-02 00:17:16'),
(45, NULL, NULL, 'shore', '2017-02-02 00:17:20'),
(44, NULL, NULL, 'shore', '2017-02-02 00:17:24'),
(87, NULL, NULL, 'shore', '2017-02-02 00:17:28'),
(45, NULL, NULL, 'shore', '2017-02-02 00:17:32'),
(106, NULL, NULL, 'shore', '2017-02-02 04:42:56'),
(108, NULL, NULL, 'shore', '2017-02-02 04:43:00'),
(108, NULL, NULL, 'shore', '2017-02-02 23:23:53'),
(106, NULL, NULL, 'shore', '2017-02-02 23:23:56'),
(264, NULL, NULL, 'shore', '2017-02-02 23:23:59'),
(0, 35, 40, 'vessel', '2017-02-18 07:00:33'),
(0, 35, 40, 'vessel', '2017-02-18 07:00:53'),
(0, 119, 25, 'vessel', '2017-02-18 07:18:59'),
(0, 103, 40, 'vessel', '2017-02-18 07:39:19'),
(108, NULL, NULL, 'shore', '2017-02-18 07:42:54'),
(108, NULL, NULL, 'shore', '2017-02-18 07:43:15'),
(108, NULL, NULL, 'shore', '2017-02-18 07:44:12'),
(106, NULL, NULL, 'shore', '2017-02-18 07:44:39'),
(0, 35, 40, 'vessel', '2017-02-18 07:47:13'),
(108, NULL, NULL, 'shore', '2017-02-19 18:56:49'),
(106, NULL, NULL, 'shore', '2017-02-19 18:56:54'),
(108, NULL, NULL, 'shore', '2017-03-02 22:03:41'),
(108, NULL, NULL, 'shore', '2017-03-02 22:05:22'),
(108, NULL, NULL, 'shore', '2017-03-02 22:06:28'),
(0, 35, 40, 'vessel', '2017-03-02 22:12:59'),
(0, 35, 40, 'vessel', '2017-03-02 22:15:06'),
(0, 35, 40, 'vessel', '2017-03-02 22:15:37'),
(0, 35, 40, 'vessel', '2017-03-02 22:31:56'),
(108, NULL, NULL, 'shore', '2017-03-02 22:42:37'),
(108, NULL, NULL, 'shore', '2017-03-10 01:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_documents`
--

CREATE TABLE `meo_vessel_documents` (
  `id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `document_name` text NOT NULL,
  `status` enum('Active','Archived','Deleted') NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_documents`
--

INSERT INTO `meo_vessel_documents` (`id`, `email_id`, `document_name`, `status`, `created_on`) VALUES
(21, 11, '1493979016-1.xlsx', 'Active', '2017-05-18 09:36:21'),
(22, 12, '1493979018-3.xlsx', 'Deleted', '2017-05-17 13:23:38'),
(23, 12, '1493979018-2.xlsx', 'Active', '2017-05-05 10:10:19'),
(24, 12, '1493979018-4.xlsx', 'Active', '2017-05-05 10:10:19'),
(25, 13, '1493979231-1.xlsx', 'Archived', '2017-05-17 08:44:03'),
(26, 14, '1493979232-3.xlsx', 'Active', '2017-05-05 10:13:53'),
(27, 14, '1493979232-2.xlsx', 'Active', '2017-05-05 10:13:53'),
(28, 14, '1493979233-4.xlsx', 'Active', '2017-05-05 10:13:53'),
(29, 15, '1493979389-1.xlsx', 'Active', '2017-05-05 10:16:30'),
(30, 16, '1493979390-3.xlsx', 'Active', '2017-05-05 10:16:31'),
(31, 16, '1493979391-2.xlsx', 'Active', '2017-05-05 10:16:31'),
(32, 16, '1493979391-4.xlsx', 'Active', '2017-05-05 10:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_email_list`
--

CREATE TABLE `meo_vessel_email_list` (
  `id` int(11) NOT NULL,
  `document_id` varchar(30) NOT NULL,
  `is_vessel` enum('Yes','No') NOT NULL,
  `folder_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `fromname` text NOT NULL,
  `from` text NOT NULL,
  `toname` text NOT NULL,
  `to` text NOT NULL,
  `ccname` text NOT NULL,
  `cc` text NOT NULL,
  `bccname` text NOT NULL,
  `bcc` text NOT NULL,
  `ondate` varchar(255) NOT NULL,
  `ontime` varchar(10) NOT NULL,
  `status` enum('Active','Archived','Deleted') NOT NULL DEFAULT 'Active',
  `is_favourite` enum('No','Yes') NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_email_list`
--

INSERT INTO `meo_vessel_email_list` (`id`, `document_id`, `is_vessel`, `folder_id`, `subject`, `body`, `fromname`, `from`, `toname`, `to`, `ccname`, `cc`, `bccname`, `bcc`, `ondate`, `ontime`, `status`, `is_favourite`, `created_on`, `updated_on`) VALUES
(11, 'VE00000011', 'No', 5, 'Please ignore this mail.', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><span>Please ignore this mail.</span><br>\r\n</p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', 'rahulgupta@singsys.com', '<rahulgupta@singsys.com>', '', '', '2017-05-07', '10:52:00', 'Active', 'Yes', '2017-05-05 10:10:16', '2017-05-18 10:48:23'),
(12, 'VE00000012', 'Yes', 5, 'Please ignore this mail. veSsel', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><br>\r\n</p>\r\n<p><span>Please ignore this mail as it\'s test mail.</span><br>\r\n</p>\r\n<p><span><br>\r\n</span></p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', 'siddhartha@singsys.com', '<siddhartha@singsys.com>', '', '', '2017-05-05', '04:03:32', 'Active', 'Yes', '2017-05-05 10:10:17', '2017-05-17 19:13:55'),
(13, 'VE00000013', 'Yes', 5, 'Please ignore this mail.', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><span>Please ignore this mail.</span><br>\r\n</p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', 'rahulgupta@singsys.com', '<rahulgupta@singsys.com>', '', '', '2017-05-05', '04:03:32', 'Active', 'Yes', '2017-05-05 10:13:51', '2017-05-17 19:13:55'),
(14, 'VE00000014', 'Yes', 5, 'Please ignore this mail. veSsel', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><br>\r\n</p>\r\n<p><span>Please ignore this mail as it\'s test mail.</span><br>\r\n</p>\r\n<p><span><br>\r\n</span></p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', 'siddhartha@singsys.com', '<siddhartha@singsys.com>', '', '', '2017-05-05', '04:03:32', 'Active', 'Yes', '2017-05-05 10:13:52', '2017-05-17 19:13:41'),
(15, 'VE00000015', 'No', 5, 'Please ignore this mail.', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><span>Please ignore this mail.</span><br>\r\n</p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', 'rahulgupta@singsys.com', '<rahulgupta@singsys.com>', '', '', '2017-05-05', '04:03:32', 'Active', 'Yes', '2017-05-05 10:16:29', '2017-05-18 10:39:02'),
(16, 'VE00000016', 'Yes', 5, 'Please ignore this mail. veSsel', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><br>\r\n</p>\r\n<p><span>Please ignore this mail as it\'s test mail.</span><br>\r\n</p>\r\n<p><span><br>\r\n</span></p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', 'siddhartha@singsys.com', '<siddhartha@singsys.com>', '', '', '2017-05-05', '04:03:32', 'Active', 'Yes', '2017-05-05 10:16:30', '2017-05-16 09:23:29'),
(17, 'VE00000017', 'No', 5, 'test', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p><br>\r\n</p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\">frgrtghrhhb cvfgddrtgr=\r\nrt<span style=3D\"color: rgb(255, 0, 0);\"> grthrhr<span style=3D\"background-=\r\ncolor: rgb(255, 255, 255);\">trrhryhtybghyugtg</span></span></span><br>\r\n</p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">rth<=\r\n/span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hrdt=\r\nh</span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hdyh=\r\n</span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">tdh<=\r\n/span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">tyht=\r\n</span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">yhty=\r\n</span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hdty=\r\n</span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hdy<=\r\n/span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\"><br>\r\n</span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hty<=\r\n/span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hty<=\r\n/span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\">hty<=\r\n/span></span></span></p>\r\n<p><span style=3D\"background-color: rgb(0, 0, 255);\"><span style=3D\"color: =\r\nrgb(255, 0, 0);\"><span style=3D\"background-color: rgb(255, 255, 255);\"><br>\r\n</span></span></span></p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', '', '', '', '', '2017-05-06', '04:23:32', 'Active', 'Yes', '2017-05-05 20:10:26', '2017-05-16 09:23:30'),
(18, 'VE00000018', 'No', 5, 'test', '<html>\n<head>\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\n1\">\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\nn-bottom:0;} --></style>\n</head>\n<body dir=3D\"ltr\">\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\n<p>content.<b>&nbsp;dfvfvdf<u>edvdgv </u>weffrscscsdcvdf fefvdevdv<span sty=\nle=3D\"color: rgb(255, 0, 0);\">vdfvdhvn</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">vdevdevdh&nbsp;</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erdefvdvfgvfg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtrt</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfggbr</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gr</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtbrfr</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rgb</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfgrt</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grgrt</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gfg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">trf</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grf</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fgrbrgt</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">b</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erg</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fe</span></b></p>\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">r</span></b></p>\n<p><br>\n</p>\n<div id=3D\"Signature\">\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\ns and Regards,</span></p>\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\n</div>\n</div>\n</body>\n</html>\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', '', '', '', '', '2017-05-04', '02:03:32', 'Archived', 'No', '2017-05-05 20:10:27', '2017-05-23 19:50:09'),
(19, 'VE00000019', 'No', 5, 'test', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p>content.<b>&nbsp;dfvfvdf<u>edvdgv </u>weffrscscsdcvdf fefvdevdv<span sty=\r\nle=3D\"color: rgb(255, 0, 0);\">vdfvdhvn</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">vdevdevdh&nbsp;</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erdefvdvfgvfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfggbr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtbrfr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rgb</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">trf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fgrbrgt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">b</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fe</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">r</span></b></p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', '', '', '', '', '2017-05-06', '03:03:32', 'Active', 'No', '2017-05-05 20:10:27', '2017-05-23 17:07:12'),
(20, 'VE00000020', 'No', 5, 'test', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p>content.<b>&nbsp;dfvfvdf<u>edvdgv </u>weffrscscsdcvdf fefvdevdv<span sty=\r\nle=3D\"color: rgb(255, 0, 0);\">vdfvdhvn</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">vdevdevdh&nbsp;</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erdefvdvfgvfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfggbr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtbrfr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rgb</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">trf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fgrbrgt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">b</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fe</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">r</span></b></p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', '', '', '', '', '2017-05-04', '05:03:32', 'Archived', 'No', '2017-05-05 20:10:27', '2017-05-23 19:50:31'),
(21, 'VE00000021', 'No', 5, 'test', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p>content.<b>&nbsp;dfvfvdf<u>edvdgv </u>weffrscscsdcvdf fefvdevdv<span sty=\r\nle=3D\"color: rgb(255, 0, 0);\">vdfvdhvn</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">vdevdevdh&nbsp;</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erdefvdvfgvfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfggbr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtbrfr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rgb</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">trf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fgrbrgt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">b</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fe</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">r</span></b></p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', '', '', '', '', '2017-05-06', '04:03:32', 'Archived', 'No', '2017-05-05 20:10:27', '2017-05-23 19:50:31'),
(22, 'VE00000022', 'No', 5, 'test', '<html>\r\n<head>\r\n<meta http-equiv=3D\"Content-Type\" content=3D\"text/html; charset=3Diso-8859-=\r\n1\">\r\n<style type=3D\"text/css\" style=3D\"display:none;\"><!-- P {margin-top:0;margi=\r\nn-bottom:0;} --></style>\r\n</head>\r\n<body dir=3D\"ltr\">\r\n<div id=3D\"divtagdefaultwrapper\" style=3D\"font-size:12pt;color:#000000;font=\r\n-family:Calibri,Arial,Helvetica,sans-serif;\" dir=3D\"ltr\">\r\n<p>content.<b>&nbsp;dfvfvdf<u>edvdgv </u>weffrscscsdcvdf fefvdevdv<span sty=\r\nle=3D\"color: rgb(255, 0, 0);\">vdfvdhvn</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">vdevdevdh&nbsp;</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erdefvdvfgvfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfggbr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtbrfr</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rgb</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rfgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grgrt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">gfg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">trf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">grf</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fgrbrgt</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">b</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">rtg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">erg</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">fe</span></b></p>\r\n<p><b><span style=3D\"color: rgb(255, 0, 0);\">r</span></b></p>\r\n<p><br>\r\n</p>\r\n<div id=3D\"Signature\">\r\n<p><span style=3D\"color:#666666; font-family:Arial; font-size:12.8px\">Thank=\r\ns and Regards,</span></p>\r\n<p><span style=3D\"font-size:12pt\">Abhay Tripathi</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>\r\n', 'Abhay Tripathi', '<abhaytripathi3005@outlook.com>', 'abhay@singsys.com', '<abhay@singsys.com>', '', '', '', '', '2017-05-06', '04:33:32', 'Archived', 'Yes', '2017-05-05 20:10:27', '2017-05-23 19:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_email_tag`
--

CREATE TABLE `meo_vessel_email_tag` (
  `id` int(11) NOT NULL,
  `vessel_email_id` int(11) NOT NULL,
  `vessel_id` int(11) UNSIGNED NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_email_tag`
--

INSERT INTO `meo_vessel_email_tag` (`id`, `vessel_email_id`, `vessel_id`, `created_on`) VALUES
(10, 18, 112, '2017-05-10 14:15:31'),
(125, 15, 114, '2017-05-11 07:24:26'),
(126, 15, 115, '2017-05-11 07:24:26'),
(127, 15, 117, '2017-05-11 07:24:26'),
(155, 19, 115, '2017-05-12 21:48:43'),
(156, 20, 28, '2017-05-13 11:07:20'),
(183, 17, 114, '2017-05-14 22:42:14'),
(184, 17, 115, '2017-05-14 22:42:14'),
(185, 17, 117, '2017-05-14 22:42:14'),
(186, 17, 112, '2017-05-14 22:42:14'),
(202, 11, 151, '2017-05-15 10:15:47'),
(203, 11, 152, '2017-05-15 10:15:47'),
(204, 11, 112, '2017-05-15 10:15:47'),
(205, 11, 158, '2017-05-15 10:15:47'),
(206, 11, 114, '2017-05-15 10:15:47'),
(207, 11, 167, '2017-05-15 10:15:47'),
(208, 21, 30, '2017-05-17 10:38:35'),
(209, 21, 112, '2017-05-17 10:38:35'),
(210, 22, 110, '2017-05-17 10:39:58'),
(211, 22, 167, '2017-05-17 10:39:58'),
(212, 13, 167, '2017-05-17 12:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_folder`
--

CREATE TABLE `meo_vessel_folder` (
  `id` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `status` enum('Active','Deleted','Archived','Superseded') NOT NULL DEFAULT 'Active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_folder`
--

INSERT INTO `meo_vessel_folder` (`id`, `folder_name`, `pid`, `link`, `order`, `class`, `status`, `created_on`, `updated_on`) VALUES
(1, 'Vessel Email', 0, 'email-report/email/', 2, '', 'Active', '2017-05-23 14:03:51', '0000-00-00 00:00:00'),
(2, '2017', 1, 'email-report/email/', 0, '', 'Active', '2017-05-08 17:19:54', '0000-00-00 00:00:00'),
(5, 'May', 2, 'email-report/email/', 0, '', 'Active', '2017-05-11 21:15:20', '0000-00-00 00:00:00'),
(6, 'Vessel Report', 0, 'email-report/report/', 1, '', 'Active', '2017-05-23 14:03:54', '2017-05-16 03:55:29'),
(8, 'HSQE', 6, 'email-report/report/', 0, '', 'Active', '2017-05-23 13:20:27', '0000-00-00 00:00:00'),
(13, 'Toolbox Talk', 8, 'email-report/report/', 0, '', 'Active', '2017-05-23 13:20:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_name_entity`
--

CREATE TABLE `meo_vessel_name_entity` (
  `id_vessel_name` int(11) UNSIGNED NOT NULL,
  `vesselID` varchar(150) NOT NULL,
  `vessel_name` varchar(120) NOT NULL,
  `id_main_vessel_type` int(11) UNSIGNED NOT NULL,
  `id_vessel_type` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `status_reason` varchar(150) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_name_entity`
--

INSERT INTO `meo_vessel_name_entity` (`id_vessel_name`, `vesselID`, `vessel_name`, `id_main_vessel_type`, `id_vessel_type`, `status`, `status_reason`, `added_on`, `updated_on`) VALUES
(9, 'MS2', 'MEO SOVEREIGN 1', 1, 22, 'active', '', '2017-01-12 19:28:19', '2017-02-03 20:58:04'),
(10, 'MS1', 'SOVEREIGN 2', 1, 22, 'active', '', '2017-01-12 19:28:36', '2017-02-03 20:57:44'),
(15, 'RG', 'RANGER', 1, 13, 'active', '', '2017-01-12 19:32:57', '0000-00-00 00:00:00'),
(17, 'ENT', 'ENTERPRISE', 1, 1, 'active', '', '2017-01-12 19:33:30', '0000-00-00 00:00:00'),
(18, 'END', 'ENDURANCE', 1, 1, 'active', '', '2017-01-12 19:33:50', '0000-00-00 00:00:00'),
(21, 'SO017', 'AOS 8', 3, 4, 'active', '', '2017-01-15 23:15:14', '0000-00-00 00:00:00'),
(22, 'SP101', 'AOS 1', 3, 4, 'active', '', '2017-01-15 23:15:58', '0000-00-00 00:00:00'),
(23, 'SP105', 'DNV EXPRESS 18', 3, 4, 'active', '', '2017-01-15 23:16:21', '0000-00-00 00:00:00'),
(24, 'SP106', 'EXPRESS 3', 3, 4, 'active', '', '2017-01-15 23:16:49', '0000-00-00 00:00:00'),
(25, 'SP107', 'EXPRESS 4', 3, 4, 'active', '', '2017-01-15 23:18:43', '0000-00-00 00:00:00'),
(26, 'SP112', 'EXPRESS 19', 3, 4, 'active', '', '2017-01-15 23:19:07', '0000-00-00 00:00:00'),
(27, 'SP117', 'EXPRESS 24', 3, 4, 'active', '', '2017-01-15 23:19:56', '0000-00-00 00:00:00'),
(28, 'SP118', 'EXPRESS 25', 3, 4, 'active', '', '2017-01-15 23:20:25', '0000-00-00 00:00:00'),
(29, 'SP119', 'EXPRESS 26', 3, 4, 'active', '', '2017-01-15 23:21:00', '0000-00-00 00:00:00'),
(30, 'SP120', 'UNI EXPRESS 21', 3, 4, 'active', '', '2017-01-15 23:21:25', '0000-00-00 00:00:00'),
(31, 'SP123', 'EXPRESS 31', 3, 4, 'active', '', '2017-01-15 23:21:46', '0000-00-00 00:00:00'),
(32, 'SP124', 'EXPRESS 32', 3, 4, 'active', '', '2017-01-15 23:22:20', '0000-00-00 00:00:00'),
(33, 'SP127', 'EXPRESS 35', 3, 4, 'active', '', '2017-01-15 23:22:44', '0000-00-00 00:00:00'),
(34, 'SP128', 'EXPRESS 36', 3, 4, 'active', '', '2017-01-15 23:23:18', '0000-00-00 00:00:00'),
(35, 'SP131', 'EXPRESS 52', 3, 4, 'active', '', '2017-01-15 23:33:05', '0000-00-00 00:00:00'),
(36, 'SP132', 'EXPRESS 53', 3, 4, 'active', '', '2017-01-15 23:33:41', '0000-00-00 00:00:00'),
(37, 'SP133', 'EXPRESS 54', 3, 4, 'active', '', '2017-01-15 23:34:27', '0000-00-00 00:00:00'),
(38, 'SP134', 'EXPRESS 55', 3, 4, 'active', '', '2017-01-15 23:41:05', '0000-00-00 00:00:00'),
(39, 'SP135', 'EXPRESS 56', 3, 4, 'active', '', '2017-01-15 23:42:27', '0000-00-00 00:00:00'),
(40, 'SP136', 'EXPRESS 57', 3, 4, 'active', '', '2017-01-15 23:42:52', '0000-00-00 00:00:00'),
(41, 'SP137', 'EXPRESS 58', 3, 4, 'active', '', '2017-01-15 23:46:41', '0000-00-00 00:00:00'),
(42, 'SP138', 'EXPRESS 59', 3, 4, 'active', '', '2017-01-15 23:47:01', '0000-00-00 00:00:00'),
(43, 'SP139', 'EXPRESS 60', 3, 4, 'active', '', '2017-01-15 23:47:21', '0000-00-00 00:00:00'),
(44, 'SP140', 'EXPRESS 61', 3, 4, 'active', '', '2017-01-15 23:47:41', '0000-00-00 00:00:00'),
(45, 'SP141', 'EXPRESS 62', 3, 4, 'active', '', '2017-01-15 23:48:04', '0000-00-00 00:00:00'),
(46, 'SP142', 'EXPRESS 63', 3, 4, 'active', '', '2017-01-15 23:48:27', '0000-00-00 00:00:00'),
(47, 'SP143', 'AOS 2', 3, 4, 'active', '', '2017-01-15 23:48:46', '0000-00-00 00:00:00'),
(48, 'SP145', 'UNI EXPRESS 9', 3, 4, 'active', '', '2017-01-15 23:49:11', '0000-00-00 00:00:00'),
(49, 'SP146', 'UNI EXPRESS 10', 3, 4, 'active', '', '2017-01-15 23:49:37', '0000-00-00 00:00:00'),
(50, 'SP147', 'UNI EXPRESS 11', 3, 4, 'active', '', '2017-01-15 23:49:57', '0000-00-00 00:00:00'),
(51, 'SP148', 'UNI EXPRESS 12', 3, 4, 'active', '', '2017-01-15 23:50:21', '0000-00-00 00:00:00'),
(52, 'SP149', 'UNI EXPRESS 13', 3, 4, 'active', '', '2017-01-15 23:52:22', '0000-00-00 00:00:00'),
(53, 'SP150', 'UNI EXPRESS 14', 3, 4, 'active', '', '2017-01-15 23:52:52', '0000-00-00 00:00:00'),
(54, 'SP151', 'UNI EXPRESS 15', 3, 4, 'active', '', '2017-01-15 23:53:14', '0000-00-00 00:00:00'),
(55, 'SP152', 'UNI EXPRESS 16', 3, 4, 'active', '', '2017-01-15 23:53:32', '0000-00-00 00:00:00'),
(56, 'SP153', 'UNI EXPRESS 17', 3, 4, 'active', '', '2017-01-15 23:53:56', '0000-00-00 00:00:00'),
(57, 'SP154', 'UNI EXPRESS 19', 3, 4, 'active', '', '2017-01-15 23:54:36', '0000-00-00 00:00:00'),
(58, 'SP155', 'UNI EXPRESS 20', 3, 4, 'active', '', '2017-01-15 23:54:59', '0000-00-00 00:00:00'),
(59, 'SP160', 'SAMSON SUPPLIER', 3, 4, 'active', '', '2017-01-15 23:55:19', '0000-00-00 00:00:00'),
(60, 'SP161', 'SAMSON SUPPORTER', 3, 4, 'active', '', '2017-01-15 23:55:46', '0000-00-00 00:00:00'),
(61, 'SP162', 'EXPRESS 64', 3, 4, 'active', '', '2017-01-15 23:56:17', '0000-00-00 00:00:00'),
(62, 'SP163', 'EXPRESS 65', 3, 4, 'active', '', '2017-01-15 23:56:44', '0000-00-00 00:00:00'),
(63, 'SP164', 'EXPRESS 66', 3, 4, 'active', '', '2017-01-15 23:57:07', '0000-00-00 00:00:00'),
(64, 'SP165', 'EXPRESS 67', 3, 4, 'active', '', '2017-01-15 23:57:27', '0000-00-00 00:00:00'),
(65, 'SP166', 'UNI EXPRESS 18', 3, 4, 'active', '', '2017-01-15 23:57:46', '0000-00-00 00:00:00'),
(66, 'SP167', 'EXPRESS 2', 3, 4, 'active', '', '2017-01-15 23:58:10', '0000-00-00 00:00:00'),
(67, 'SP168', 'EXPRESS 11', 3, 4, 'active', '', '2017-01-15 23:59:49', '0000-00-00 00:00:00'),
(68, 'SP169', 'EXPRESS 12', 3, 4, 'active', '', '2017-01-16 00:00:13', '0000-00-00 00:00:00'),
(69, 'SP170', 'EXPRESS 68', 3, 4, 'active', '', '2017-01-16 00:02:20', '0000-00-00 00:00:00'),
(70, 'SP171', 'EXPRESS 69', 3, 4, 'active', '', '2017-01-16 00:02:52', '0000-00-00 00:00:00'),
(72, 'SP177', 'EXPRESS 71', 3, 4, 'active', '', '2017-01-16 00:12:22', '0000-00-00 00:00:00'),
(73, 'SP176', 'EXPRESS 70', 3, 4, 'active', '', '2017-01-16 00:12:46', '0000-00-00 00:00:00'),
(74, 'SP180', 'EXPRESS 72', 3, 4, 'active', '', '2017-01-16 00:13:38', '0000-00-00 00:00:00'),
(75, 'SP181', 'EXPRESS 73', 3, 4, 'active', '', '2017-01-16 00:13:54', '0000-00-00 00:00:00'),
(76, 'SP184', 'UNI EXPRESS 23', 3, 4, 'active', '', '2017-01-16 00:14:08', '0000-00-00 00:00:00'),
(77, 'SP185', 'UNI EXPRESS 24', 3, 4, 'active', '', '2017-01-16 00:14:26', '0000-00-00 00:00:00'),
(78, 'SP186', 'EXPRESS 75', 3, 4, 'active', '', '2017-01-16 00:14:44', '0000-00-00 00:00:00'),
(79, 'SP187', 'EXPRESS 76', 3, 4, 'active', '', '2017-01-16 00:15:53', '0000-00-00 00:00:00'),
(80, 'SP188', 'EXPRESS 77', 3, 4, 'active', '', '2017-01-16 00:16:27', '0000-00-00 00:00:00'),
(81, 'SP189', 'EXPRESS 78', 3, 4, 'active', '', '2017-01-16 00:16:58', '0000-00-00 00:00:00'),
(82, 'SP190', 'EXPRESS 79', 3, 4, 'active', '', '2017-01-16 00:17:16', '0000-00-00 00:00:00'),
(83, 'SP191', 'EXPRESS 80', 3, 4, 'active', '', '2017-01-16 00:17:49', '0000-00-00 00:00:00'),
(84, 'SP192', 'EXPRESS 81', 3, 4, 'active', '', '2017-01-16 00:18:13', '0000-00-00 00:00:00'),
(85, 'SP193', 'EXPRESS 87', 3, 4, 'active', '', '2017-01-16 00:18:30', '0000-00-00 00:00:00'),
(86, 'SP196', 'EXPRESS 82', 3, 4, 'active', '', '2017-01-16 00:19:07', '0000-00-00 00:00:00'),
(87, 'SP197', 'EXPRESS 83', 3, 4, 'active', '', '2017-01-16 00:19:28', '0000-00-00 00:00:00'),
(88, 'SP199', 'EXPRESS 85', 3, 4, 'active', '', '2017-01-16 00:20:25', '0000-00-00 00:00:00'),
(89, 'SP204', 'MICLYN ENDURANCE', 6, 1, 'active', '', '2017-01-16 00:22:19', '2017-01-23 19:05:14'),
(90, 'SP205', 'MICLYN ENERGY', 2, 15, 'active', '', '2017-01-16 00:22:57', '2017-01-23 19:00:12'),
(91, 'SP206', 'MICLYN ENTERPRISE', 6, 1, 'active', '', '2017-01-16 00:32:43', '2017-01-23 19:05:27'),
(92, 'SP208', 'MICLYN GRACE', 2, 15, 'active', '', '2017-01-16 00:33:06', '2017-01-23 19:00:24'),
(93, 'SP209', 'MICLYN GRAND', 2, 15, 'active', '', '2017-01-16 00:35:52', '2017-01-23 19:00:36'),
(94, 'SP212', 'MICLYN ONYX', 2, 18, 'active', '', '2017-01-16 00:36:19', '2017-01-23 19:00:47'),
(95, 'SP213', 'MICLYN OPAL', 2, 18, 'active', '', '2017-01-16 00:40:23', '2017-01-23 19:00:59'),
(96, 'SP214', 'MICLYN ORION', 2, 8, 'active', '', '2017-01-16 00:40:50', '2017-01-23 19:01:13'),
(97, 'SP216', 'MICLYN POWER', 2, 8, 'active', '', '2017-01-16 00:41:12', '2017-01-23 19:01:28'),
(98, 'SP218', 'MICLYN VENTURE', 2, 8, 'active', '', '2017-01-16 00:41:43', '2017-01-23 19:01:42'),
(99, 'SP219', 'MICLYN VICTORY', 2, 8, 'active', '', '2017-01-16 00:42:04', '2017-01-23 19:01:55'),
(100, 'SP221', 'UNIWISE ADVANCER', 2, 8, 'active', '', '2017-01-16 00:42:38', '0000-00-00 00:00:00'),
(101, 'SP222', 'MAGELLAN 1', 2, 8, 'active', '', '2017-01-16 00:44:25', '0000-00-00 00:00:00'),
(102, 'SP223', 'MEO VALIANT', 2, 14, 'active', '', '2017-01-16 00:44:43', '0000-00-00 00:00:00'),
(103, 'SP224', 'SEISMIC SUPPORTER', 2, 18, 'active', '', '2017-01-16 00:45:12', '0000-00-00 00:00:00'),
(104, 'SP225', 'MAGELLAN 2', 2, 8, 'active', '', '2017-01-16 00:46:35', '0000-00-00 00:00:00'),
(105, 'SP226', 'MEO VIGILANT', 2, 14, 'active', '', '2017-01-16 00:47:10', '0000-00-00 00:00:00'),
(106, 'SP227', 'MICLYN CONSTRUCTOR I', 5, 6, 'active', '', '2017-01-16 00:47:46', '2017-01-23 19:02:06'),
(107, 'SP228', 'MEO GALAXY', 2, 3, 'active', '', '2017-01-16 00:49:35', '0000-00-00 00:00:00'),
(108, 'SP229', 'MEO SOVEREIGN I', 6, 5, 'active', '', '2017-01-16 00:50:12', '0000-00-00 00:00:00'),
(109, 'SP230	', 'MEO SOVEREIGN II', 6, 5, 'active', '', '2017-01-16 00:50:35', '0000-00-00 00:00:00'),
(110, 'SP232', 'UNI EXPRESS 22', 3, 4, 'active', '', '2017-01-16 00:51:53', '0000-00-00 00:00:00'),
(111, 'SP233', 'MEO RANGER', 6, 13, 'active', '', '2017-01-16 00:56:05', '0000-00-00 00:00:00'),
(112, 'SP235', 'TARKA', 1, 22, 'active', '', '2017-01-16 00:57:35', '0000-00-00 00:00:00'),
(113, 'SP236', 'AOS PATTAYA', 2, 14, 'active', '', '2017-01-16 00:58:06', '0000-00-00 00:00:00'),
(114, 'SP237', 'AOS PHUKET', 2, 18, 'active', '', '2017-01-16 00:58:46', '0000-00-00 00:00:00'),
(115, 'SP238', 'AOS RATCHABURI', 2, 18, 'active', '', '2017-01-16 01:01:05', '0000-00-00 00:00:00'),
(116, 'SP239', 'UNIWISE RAYONG', 2, 14, 'active', '', '2017-01-16 01:01:26', '0000-00-00 00:00:00'),
(117, 'SP240', 'UNIWISE SONGKHLA', 2, 14, 'active', '', '2017-01-16 01:01:47', '0000-00-00 00:00:00'),
(118, 'SP241', 'CERMAT', 2, 18, 'active', '', '2017-01-16 01:02:08', '0000-00-00 00:00:00'),
(119, 'SP242', 'CERDIK', 2, 18, 'active', '', '2017-01-16 01:02:30', '0000-00-00 00:00:00'),
(120, 'SP245', 'MEO EMPEROR', 2, 8, 'active', '', '2017-01-16 01:04:09', '0000-00-00 00:00:00'),
(121, 'SP246', 'MEO EMPRESS', 2, 8, 'active', '', '2017-01-16 01:04:37', '0000-00-00 00:00:00'),
(122, 'SP247', 'EXPRESS 86', 3, 4, 'active', '', '2017-01-16 01:04:53', '0000-00-00 00:00:00'),
(123, 'SP302', 'MICLYN 181', 5, 10, 'active', '', '2017-01-16 01:05:27', '2017-01-23 19:02:17'),
(124, 'SP304', 'MICLYN 253', 5, 10, 'active', '', '2017-01-16 01:10:34', '2017-01-23 19:02:27'),
(125, 'SP307', 'MICLYN 257', 5, 10, 'active', '', '2017-01-16 01:11:02', '2017-01-23 19:02:37'),
(126, 'SP308', 'MICLYN 258', 5, 10, 'active', '', '2017-01-16 01:12:05', '2017-01-23 19:02:47'),
(127, 'SP309', 'MICLYN 259', 5, 10, 'active', '', '2017-01-16 01:12:35', '2017-01-23 19:03:00'),
(128, 'SP310', 'MICLYN 283', 5, 10, 'active', '', '2017-01-16 01:13:01', '2017-01-23 19:03:10'),
(129, 'SP311', 'MICLYN 285', 5, 10, 'active', '', '2017-01-16 01:13:59', '2017-01-23 19:03:20'),
(130, 'SP312', 'MICLYN 286', 5, 10, 'active', '', '2017-01-16 01:14:36', '2017-01-23 19:03:29'),
(131, 'SP313', 'MICLYN 287', 5, 10, 'active', '', '2017-01-16 01:15:10', '2017-01-23 19:03:39'),
(132, 'SP314', 'MICLYN 288', 5, 10, 'active', '', '2017-01-16 01:15:40', '2017-01-23 19:03:49'),
(133, 'SP315', 'MICLYN 301', 5, 10, 'active', '', '2017-01-16 01:16:07', '2017-01-23 19:03:59'),
(134, 'SP316', 'MICLYN 303', 5, 10, 'active', '', '2017-01-16 01:16:37', '2017-01-23 19:04:07'),
(135, 'SP317', 'MICLYN 305', 5, 10, 'active', '', '2017-01-16 01:16:55', '2017-01-23 19:04:17'),
(136, 'SP318', 'MICLYN 2510', 5, 10, 'active', '', '2017-01-16 01:17:12', '2017-01-23 19:04:27'),
(137, 'SP319', 'MICLYN 3316', 5, 10, 'active', '', '2017-01-16 01:17:30', '2017-01-23 19:04:36'),
(138, 'SP320', 'MICLYN 3317', 5, 10, 'active', '', '2017-01-16 01:17:50', '2017-01-23 19:04:45'),
(139, 'SP321', 'MICLYN 3318', 5, 10, 'active', '', '2017-01-16 01:18:14', '2017-01-23 19:04:54'),
(140, 'SP325', 'M 3319', 5, 10, 'active', '', '2017-01-16 01:18:34', '0000-00-00 00:00:00'),
(141, 'SP326', 'M 3320', 5, 10, 'active', '', '2017-01-16 01:18:53', '0000-00-00 00:00:00'),
(142, 'SP327', 'MICLYN 3301', 5, 10, 'active', '', '2017-01-16 01:19:15', '2017-01-23 19:05:04'),
(143, 'SP331', 'MEO GUARDIAN', 2, 3, 'active', '', '2017-01-16 01:20:32', '0000-00-00 00:00:00'),
(144, 'SP333', 'EXPRESS 88', 3, 4, 'active', '', '2017-01-16 01:20:55', '0000-00-00 00:00:00'),
(145, 'SP334', 'EXPRESS 89', 3, 4, 'active', '', '2017-01-16 01:21:11', '0000-00-00 00:00:00'),
(146, 'SP335	', 'EXPRESS 90', 3, 4, 'active', '', '2017-01-16 01:21:36', '0000-00-00 00:00:00'),
(147, 'SP336', 'EXPRESS 91', 3, 4, 'active', '', '2017-01-16 01:21:55', '0000-00-00 00:00:00'),
(148, 'SP337', 'EXPRESS 92', 3, 4, 'active', '', '2017-01-16 01:22:12', '0000-00-00 00:00:00'),
(149, 'SP338', 'UNI EXPRESS 25', 3, 4, 'active', '', '2017-01-16 01:22:30', '0000-00-00 00:00:00'),
(150, 'SP340', 'EXPRESS 93', 3, 4, 'active', '', '2017-01-16 01:23:21', '0000-00-00 00:00:00'),
(151, 'SP341', 'EOS 283', 5, 10, 'active', '', '2017-01-16 01:23:53', '0000-00-00 00:00:00'),
(152, 'SP345', 'EOS 4001', 5, 10, 'active', '', '2017-01-16 01:24:36', '0000-00-00 00:00:00'),
(153, 'SP346', 'EOS 4002', 5, 10, 'active', '', '2017-01-16 01:24:57', '0000-00-00 00:00:00'),
(154, 'SP350', 'EOS 281', 5, 10, 'active', '', '2017-01-16 01:25:15', '0000-00-00 00:00:00'),
(155, 'SP351', 'EOS 282', 5, 10, 'active', '', '2017-01-16 01:25:35', '0000-00-00 00:00:00'),
(156, 'SP354', 'EOS 285', 5, 10, 'active', '', '2017-01-16 01:25:50', '0000-00-00 00:00:00'),
(157, 'SP355', 'VOYAGER EXPLORER', 2, 17, 'active', '', '2017-01-16 01:26:09', '0000-00-00 00:00:00'),
(158, 'SP344', 'ALERT', 1, 23, 'active', '', '2017-01-16 01:27:29', '0000-00-00 00:00:00'),
(159, 'SP201	', 'ENDEAVOUR', 6, 1, 'active', '', '2017-01-16 01:39:32', '0000-00-00 00:00:00'),
(160, 'SP231', 'UNIWISE SUPPORTER', 6, 13, 'active', '', '2017-01-16 01:40:43', '0000-00-00 00:00:00'),
(161, 'SP234', 'RESOLUTION', 6, 1, 'active', '', '2017-01-16 01:41:14', '0000-00-00 00:00:00'),
(162, 'SP243', 'UNIWISE ADVANTAGE', 6, 5, 'active', '', '2017-01-16 01:41:51', '0000-00-00 00:00:00'),
(163, 'SP244', 'UNIWISE ADVENTURE', 6, 5, 'active', '', '2017-01-16 01:42:22', '0000-00-00 00:00:00'),
(164, 'SP328', 'MERMAID NUSANTARA', 6, 1, 'active', '', '2017-01-16 01:43:15', '0000-00-00 00:00:00'),
(165, 'SP329', 'MEO MONARCH 1', 6, 5, 'active', '', '2017-01-16 01:44:08', '0000-00-00 00:00:00'),
(166, 'SP330', 'MEO MONARCH 2', 6, 5, 'active', '', '2017-01-16 01:44:23', '0000-00-00 00:00:00'),
(167, 'SP178', 'SAMSON 6', 1, 22, 'active', '', '2017-01-16 01:56:33', '0000-00-00 00:00:00'),
(168, 'SP179', 'SAMSON 7', 1, 22, 'active', '', '2017-01-16 01:56:52', '0000-00-00 00:00:00'),
(169, 'SP173', 'SAMSON 101', 1, 22, 'active', '', '2017-01-16 18:49:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_region_entity`
--

CREATE TABLE `meo_vessel_region_entity` (
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_region_entity`
--

INSERT INTO `meo_vessel_region_entity` (`id_vessel_region`, `id_region`, `status`, `added_on`, `updated_on`) VALUES
(25, 31, 'active', '2017-01-16 17:38:21', '2017-02-08 18:44:25'),
(27, 35, 'active', '2017-01-16 18:26:56', '2017-01-19 13:43:19'),
(31, 34, 'active', '2017-01-16 19:03:44', '2017-02-01 14:32:04'),
(34, 36, 'active', '2017-01-19 18:01:25', '0000-00-00 00:00:00'),
(36, 55, 'active', '2017-01-19 18:02:23', '0000-00-00 00:00:00'),
(38, 59, 'active', '2017-01-19 18:11:55', '2017-02-01 15:21:59'),
(40, 26, 'active', '2017-01-22 22:45:51', '2017-02-04 10:47:07'),
(41, 58, 'active', '2017-01-22 23:04:37', '2017-01-23 15:20:56'),
(42, 62, 'active', '2017-01-26 00:48:11', '2017-02-01 15:33:17'),
(43, 61, 'active', '2017-02-02 19:55:35', '0000-00-00 00:00:00'),
(44, 29, 'active', '2017-02-07 21:21:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_region_member_entity`
--

CREATE TABLE `meo_vessel_region_member_entity` (
  `id_region_member` int(11) NOT NULL,
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) UNSIGNED NOT NULL,
  `front_order` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_region_member_entity`
--

INSERT INTO `meo_vessel_region_member_entity` (`id_region_member`, `id_vessel_region`, `id_vessel_name`, `front_order`) VALUES
(26, 27, 165, 32),
(27, 27, 166, 28),
(28, 27, 158, 29),
(29, 27, 167, 31),
(30, 27, 168, 34),
(31, 27, 112, 33),
(32, 27, 169, 30),
(44, 34, 25, 46),
(45, 34, 67, 42),
(46, 34, 68, 48),
(47, 34, 23, 51),
(48, 34, 26, 35),
(49, 34, 59, 36),
(50, 34, 92, 37),
(51, 34, 93, 44),
(52, 34, 97, 38),
(53, 34, 111, 50),
(54, 34, 143, 40),
(55, 34, 101, 49),
(56, 34, 104, 45),
(57, 34, 24, 41),
(58, 34, 80, 39),
(59, 34, 147, 47),
(60, 34, 99, 52),
(61, 34, 107, 43),
(63, 36, 58, 53),
(87, 40, 66, 6),
(88, 40, 35, 5),
(89, 40, 37, 1),
(90, 40, 148, 3),
(91, 40, 103, 4),
(92, 41, 98, 64),
(93, 41, 154, 71),
(94, 41, 155, 56),
(95, 41, 151, 63),
(96, 41, 156, 66),
(97, 41, 152, 77),
(98, 41, 153, 59),
(99, 41, 140, 76),
(102, 41, 141, 70),
(103, 41, 124, 65),
(104, 41, 125, 78),
(105, 41, 126, 60),
(106, 41, 127, 73),
(107, 41, 136, 75),
(108, 41, 132, 57),
(109, 41, 131, 74),
(110, 41, 130, 61),
(111, 41, 129, 79),
(112, 41, 128, 67),
(113, 41, 127, 73),
(114, 41, 133, 68),
(115, 41, 134, 80),
(116, 41, 135, 62),
(117, 41, 142, 55),
(118, 41, 137, 58),
(119, 41, 138, 69),
(120, 41, 139, 54),
(163, 31, 164, 25),
(164, 31, 161, 27),
(165, 31, 159, 24),
(166, 31, 89, 26),
(167, 31, 157, 23),
(169, 38, 27, 99),
(170, 38, 28, 86),
(171, 38, 29, 95),
(172, 38, 38, 82),
(173, 38, 39, 91),
(174, 38, 40, 100),
(175, 38, 41, 87),
(176, 38, 42, 96),
(177, 38, 43, 83),
(178, 38, 44, 92),
(179, 38, 45, 101),
(180, 38, 46, 88),
(181, 38, 61, 97),
(182, 38, 64, 84),
(183, 38, 78, 93),
(184, 38, 145, 102),
(185, 38, 86, 89),
(186, 38, 122, 98),
(187, 38, 96, 81),
(188, 38, 95, 90),
(189, 38, 60, 85),
(190, 38, 146, 94),
(191, 42, 9, 110),
(192, 42, 21, 140),
(193, 42, 30, 119),
(194, 42, 33, 133),
(195, 42, 34, 112),
(196, 42, 47, 127),
(197, 42, 48, 141),
(198, 42, 49, 120),
(199, 42, 50, 134),
(200, 42, 51, 113),
(201, 42, 52, 128),
(202, 42, 53, 142),
(203, 42, 55, 121),
(204, 42, 56, 135),
(205, 42, 57, 114),
(206, 42, 62, 129),
(207, 42, 65, 143),
(208, 42, 72, 122),
(209, 42, 75, 136),
(210, 42, 76, 115),
(211, 42, 77, 130),
(212, 42, 83, 144),
(213, 42, 90, 125),
(214, 42, 91, 109),
(215, 42, 100, 139),
(216, 42, 105, 118),
(217, 42, 106, 131),
(218, 42, 110, 123),
(219, 42, 114, 132),
(220, 42, 117, 111),
(221, 42, 120, 126),
(222, 42, 149, 137),
(223, 42, 160, 124),
(224, 42, 162, 138),
(225, 42, 163, 117),
(226, 42, 36, 116),
(227, 43, 22, 105),
(228, 43, 84, 107),
(229, 43, 54, 104),
(230, 43, 115, 103),
(231, 43, 113, 106),
(232, 43, 116, 108),
(298, 40, 63, 2),
(301, 44, 9, 1),
(302, 44, 10, 1),
(304, 25, 9, 1),
(305, 25, 10, 1),
(306, 25, 165, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_rights_action`
--

CREATE TABLE `meo_vessel_rights_action` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_rights_action`
--

INSERT INTO `meo_vessel_rights_action` (`id`, `id_group_name`, `vessel_id`, `added_on`, `updated_on`, `updated_by`) VALUES
(4, 2, 158, '2017-06-09 05:12:26', '2017-06-09 10:42:26', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_rights_ims`
--

CREATE TABLE `meo_vessel_rights_ims` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_rights_raci`
--

CREATE TABLE `meo_vessel_rights_raci` (
  `id` int(11) NOT NULL,
  `id_group_name` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_type_entity`
--

CREATE TABLE `meo_vessel_type_entity` (
  `id_vessel_type` int(11) UNSIGNED NOT NULL,
  `vessel_type` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `id_main_vessel_type` int(11) UNSIGNED NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_type_entity`
--

INSERT INTO `meo_vessel_type_entity` (`id_vessel_type`, `vessel_type`, `status`, `id_main_vessel_type`, `added_on`, `updated_on`) VALUES
(1, 'DP2 SUBSEA SUPPORT VESSEL', 'active', 6, '2017-01-06 11:23:48', '2017-01-16 15:14:08'),
(3, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-06 11:24:34', '2017-01-13 13:33:43'),
(4, 'CREW / UTILITY VESSEL', 'active', 3, '2017-01-12 19:13:43', '0000-00-00 00:00:00'),
(5, 'DP2 AHTS', 'active', 6, '2017-01-12 19:14:02', '2017-01-16 15:14:16'),
(6, 'ACCOMMODATION BARGE', 'active', 5, '2017-01-12 19:15:10', '0000-00-00 00:00:00'),
(7, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-12 19:15:29', '2017-01-13 11:18:55'),
(8, 'AHT / AHTS', 'active', 2, '2017-01-12 19:15:59', '0000-00-00 00:00:00'),
(9, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-12 19:18:55', '0000-00-00 00:00:00'),
(10, 'BARGES', 'active', 5, '2017-01-12 19:21:05', '0000-00-00 00:00:00'),
(13, 'DP2 PSV', 'active', 6, '2017-01-12 19:22:57', '2017-01-16 15:14:23'),
(14, 'MOTTS', 'active', 2, '2017-01-12 19:23:17', '0000-00-00 00:00:00'),
(15, 'MPSV', 'active', 2, '2017-01-12 19:23:26', '0000-00-00 00:00:00'),
(17, 'SEISMIC VESSELS', 'active', 2, '2017-01-12 19:23:52', '0000-00-00 00:00:00'),
(18, 'UTILITY TUG / MULTI-PURPOSE', 'active', 2, '2017-01-12 19:24:10', '0000-00-00 00:00:00'),
(20, 'AHT / AHTS', 'active', 2, '2017-01-12 21:33:30', '0000-00-00 00:00:00'),
(21, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-12 21:33:43', '0000-00-00 00:00:00'),
(22, 'MULTICAT/  TUGS', 'active', 1, '2017-01-16 00:11:22', '0000-00-00 00:00:00'),
(23, 'COASTAL SURVEY VESSELS', 'active', 1, '2017-01-16 01:27:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meo_action_activity_stages`
--
ALTER TABLE `meo_action_activity_stages`
  ADD PRIMARY KEY (`id_activity_stage`);

--
-- Indexes for table `meo_action_activity_status`
--
ALTER TABLE `meo_action_activity_status`
  ADD PRIMARY KEY (`id_activity_status`);

--
-- Indexes for table `meo_action_classification`
--
ALTER TABLE `meo_action_classification`
  ADD PRIMARY KEY (`id_classification`);

--
-- Indexes for table `meo_action_nature`
--
ALTER TABLE `meo_action_nature`
  ADD PRIMARY KEY (`id_nature`);

--
-- Indexes for table `meo_action_rank`
--
ALTER TABLE `meo_action_rank`
  ADD PRIMARY KEY (`id_rank`);

--
-- Indexes for table `meo_admin_section_accessibility`
--
ALTER TABLE `meo_admin_section_accessibility`
  ADD KEY `id_group_access` (`id_group_access`),
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_group_access_2` (`id_group_access`),
  ADD KEY `id_section_2` (`id_section`);

--
-- Indexes for table `meo_atr_activity_updates`
--
ALTER TABLE `meo_atr_activity_updates`
  ADD PRIMARY KEY (`id_updates`);

--
-- Indexes for table `meo_atr_vessels_add_action_item`
--
ALTER TABLE `meo_atr_vessels_add_action_item`
  ADD PRIMARY KEY (`id_action_item`);

--
-- Indexes for table `meo_capex_discussion`
--
ALTER TABLE `meo_capex_discussion`
  ADD PRIMARY KEY (`id_capex_discussion`),
  ADD KEY `id_capex_request` (`id_capex_request`),
  ADD KEY `id_capex_request_2` (`id_capex_request`);

--
-- Indexes for table `meo_capex_discussion_attachment`
--
ALTER TABLE `meo_capex_discussion_attachment`
  ADD PRIMARY KEY (`id_capex_discussion_attachment`),
  ADD KEY `id_capex_discussion` (`id_capex_discussion`),
  ADD KEY `id_capex_discussion_2` (`id_capex_discussion`);

--
-- Indexes for table `meo_capex_discussion_image_attachment`
--
ALTER TABLE `meo_capex_discussion_image_attachment`
  ADD PRIMARY KEY (`id_capex_discussion_image`);

--
-- Indexes for table `meo_capex_discussion_link_attachment`
--
ALTER TABLE `meo_capex_discussion_link_attachment`
  ADD PRIMARY KEY (`id_capex_discussion_link`),
  ADD KEY `id_capex_discussion` (`id_capex_discussion`),
  ADD KEY `id_capex_discussion_2` (`id_capex_discussion`);

--
-- Indexes for table `meo_capex_discussion_notifiers`
--
ALTER TABLE `meo_capex_discussion_notifiers`
  ADD PRIMARY KEY (`id_capex_notifier`),
  ADD KEY `id_capex_discussion` (`id_capex_discussion`);

--
-- Indexes for table `meo_capex_request`
--
ALTER TABLE `meo_capex_request`
  ADD PRIMARY KEY (`id_capex_request`),
  ADD KEY `id_capex_request` (`id_capex_request`),
  ADD KEY `id_capex_request_2` (`id_capex_request`);

--
-- Indexes for table `meo_capex_request_approvers`
--
ALTER TABLE `meo_capex_request_approvers`
  ADD PRIMARY KEY (`id_capex_request_approvers`),
  ADD KEY `id_capex_request` (`id_capex_request`);

--
-- Indexes for table `meo_capex_request_privacy`
--
ALTER TABLE `meo_capex_request_privacy`
  ADD PRIMARY KEY (`id_capex_privacy`),
  ADD KEY `id_capex_request` (`id_capex_request`),
  ADD KEY `id_capex_request_2` (`id_capex_request`),
  ADD KEY `id_capex_request_3` (`id_capex_request`);

--
-- Indexes for table `meo_capex_variations`
--
ALTER TABLE `meo_capex_variations`
  ADD PRIMARY KEY (`id_capex_variation`),
  ADD KEY `id_capex_request_2` (`id_capex_request`),
  ADD KEY `id_capex_request_3` (`id_capex_request`),
  ADD KEY `id_capex_request` (`id_capex_request`),
  ADD KEY `id_capex_request_4` (`id_capex_request`);

--
-- Indexes for table `meo_ci_cookies`
--
ALTER TABLE `meo_ci_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_ci_sessions`
--
ALTER TABLE `meo_ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `meo_claims_interval`
--
ALTER TABLE `meo_claims_interval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_claims_request`
--
ALTER TABLE `meo_claims_request`
  ADD PRIMARY KEY (`id_claims_request`);

--
-- Indexes for table `meo_claims_request_approvers`
--
ALTER TABLE `meo_claims_request_approvers`
  ADD PRIMARY KEY (`id_claims_request_approvers`);

--
-- Indexes for table `meo_claims_request_discussion`
--
ALTER TABLE `meo_claims_request_discussion`
  ADD PRIMARY KEY (`id_claims_request_discussion`);

--
-- Indexes for table `meo_claims_request_discussion_attachment`
--
ALTER TABLE `meo_claims_request_discussion_attachment`
  ADD PRIMARY KEY (`id_claims_request_discussion_attachment`);

--
-- Indexes for table `meo_claims_request_discussion_image_attachment`
--
ALTER TABLE `meo_claims_request_discussion_image_attachment`
  ADD PRIMARY KEY (`id_claims_request_discussion_image_attachment`);

--
-- Indexes for table `meo_claims_request_discussion_link_attachment`
--
ALTER TABLE `meo_claims_request_discussion_link_attachment`
  ADD PRIMARY KEY (`id_claims_request_discussion_link_attachment`);

--
-- Indexes for table `meo_claims_request_discussion_notifiers`
--
ALTER TABLE `meo_claims_request_discussion_notifiers`
  ADD PRIMARY KEY (`id_claims_request_discussion_notifiers`);

--
-- Indexes for table `meo_claims_request_expenditure`
--
ALTER TABLE `meo_claims_request_expenditure`
  ADD PRIMARY KEY (`id_claims_request_expenditure`);

--
-- Indexes for table `meo_claims_request_expenditure_attachment`
--
ALTER TABLE `meo_claims_request_expenditure_attachment`
  ADD PRIMARY KEY (`id_claims_request_expenditure_attachment`);

--
-- Indexes for table `meo_claims_request_expenditure_image`
--
ALTER TABLE `meo_claims_request_expenditure_image`
  ADD PRIMARY KEY (`id_claims_request_expenditure_image`);

--
-- Indexes for table `meo_claims_request_expenditure_link`
--
ALTER TABLE `meo_claims_request_expenditure_link`
  ADD PRIMARY KEY (`id_claims_request_expenditure_link`);

--
-- Indexes for table `meo_claim_expense_type_entity`
--
ALTER TABLE `meo_claim_expense_type_entity`
  ADD PRIMARY KEY (`id_claim`),
  ADD KEY `id_type_claim` (`id_type_claim`),
  ADD KEY `id_type_claim_2` (`id_type_claim`);

--
-- Indexes for table `meo_claim_types_entity`
--
ALTER TABLE `meo_claim_types_entity`
  ADD PRIMARY KEY (`id_claim_type`);

--
-- Indexes for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  ADD PRIMARY KEY (`id_client_user`),
  ADD KEY `id_region` (`id_region`),
  ADD KEY `client_user_id` (`client_user_id`);

--
-- Indexes for table `meo_client_user_rights_action`
--
ALTER TABLE `meo_client_user_rights_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_client_user_rights_ims`
--
ALTER TABLE `meo_client_user_rights_ims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_client_user_rights_raci`
--
ALTER TABLE `meo_client_user_rights_raci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  ADD PRIMARY KEY (`id_commercial_pic`),
  ADD KEY `id_contact_rights` (`id_contact_rights`),
  ADD KEY `id_meo_user` (`id_meo_user`),
  ADD KEY `id_contact_rights_2` (`id_contact_rights`);

--
-- Indexes for table `meo_config_options`
--
ALTER TABLE `meo_config_options`
  ADD PRIMARY KEY (`id_config`);

--
-- Indexes for table `meo_contact_admin_rights`
--
ALTER TABLE `meo_contact_admin_rights`
  ADD PRIMARY KEY (`id_contact_admin_right`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `meo_contact_admin_rights_association`
--
ALTER TABLE `meo_contact_admin_rights_association`
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_contact_rights` (`id_contact_rights`);

--
-- Indexes for table `meo_contact_rights`
--
ALTER TABLE `meo_contact_rights`
  ADD PRIMARY KEY (`id_contact_rights`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_admin_group` (`id_admin_group`);

--
-- Indexes for table `meo_contact_rights_admin`
--
ALTER TABLE `meo_contact_rights_admin`
  ADD PRIMARY KEY (`id_user_right_contact`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_meo_user` (`id_meo_user`);

--
-- Indexes for table `meo_contact_rights_admin_access`
--
ALTER TABLE `meo_contact_rights_admin_access`
  ADD KEY `id_user_right_contact` (`id_user_right_contact`),
  ADD KEY `id_section` (`id_section`);

--
-- Indexes for table `meo_contact_user_rights_association`
--
ALTER TABLE `meo_contact_user_rights_association`
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_contact_rights` (`id_contact_rights`),
  ADD KEY `id_section_2` (`id_section`),
  ADD KEY `id_contact_rights_2` (`id_contact_rights`);

--
-- Indexes for table `meo_countries`
--
ALTER TABLE `meo_countries`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `meo_currency`
--
ALTER TABLE `meo_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_currencyrate`
--
ALTER TABLE `meo_currencyrate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_department_entity`
--
ALTER TABLE `meo_department_entity`
  ADD PRIMARY KEY (`id_department`),
  ADD KEY `id_region` (`id_region`),
  ADD KEY `id_region_2` (`id_region`);

--
-- Indexes for table `meo_department_member_entity`
--
ALTER TABLE `meo_department_member_entity`
  ADD KEY `id_department_member` (`id_department_member`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `meo_designation_list`
--
ALTER TABLE `meo_designation_list`
  ADD PRIMARY KEY (`id_designation`);

--
-- Indexes for table `meo_designation_list_assoc`
--
ALTER TABLE `meo_designation_list_assoc`
  ADD KEY `id_designation` (`id_designation`),
  ADD KEY `id_meo_user` (`id_meo_user`);

--
-- Indexes for table `meo_email_templates`
--
ALTER TABLE `meo_email_templates`
  ADD PRIMARY KEY (`id_email_templates`);

--
-- Indexes for table `meo_entity_list`
--
ALTER TABLE `meo_entity_list`
  ADD PRIMARY KEY (`id_entity`);

--
-- Indexes for table `meo_fare_class`
--
ALTER TABLE `meo_fare_class`
  ADD PRIMARY KEY (`fare_class_id`);

--
-- Indexes for table `meo_front_vessel_contact`
--
ALTER TABLE `meo_front_vessel_contact`
  ADD PRIMARY KEY (`id_front_vessel`),
  ADD KEY `id_vessel_region` (`id_vessel_region`),
  ADD KEY `id_vessel_name` (`id_vessel_name`);

--
-- Indexes for table `meo_front_vessel_contact_details`
--
ALTER TABLE `meo_front_vessel_contact_details`
  ADD KEY `id_vessel_region` (`id_vessel_region`),
  ADD KEY `id_vessel_name` (`id_vessel_name`);

--
-- Indexes for table `meo_front_vessel_contact_organistaion`
--
ALTER TABLE `meo_front_vessel_contact_organistaion`
  ADD KEY `id_vessel_region` (`id_vessel_region`),
  ADD KEY `id_vessel_name` (`id_vessel_name`),
  ADD KEY `area_of_operation` (`organistaion`);

--
-- Indexes for table `meo_front_vessel_contact_userpic`
--
ALTER TABLE `meo_front_vessel_contact_userpic`
  ADD KEY `id_vessel_region` (`id_vessel_region`),
  ADD KEY `id_vessel_name` (`id_vessel_name`),
  ADD KEY `area_of_operation` (`id_meo_user`);

--
-- Indexes for table `meo_group_bu_entity`
--
ALTER TABLE `meo_group_bu_entity`
  ADD PRIMARY KEY (`id_group_bu`);

--
-- Indexes for table `meo_group_name_entity`
--
ALTER TABLE `meo_group_name_entity`
  ADD PRIMARY KEY (`id_group_name`);

--
-- Indexes for table `meo_group_region_entity`
--
ALTER TABLE `meo_group_region_entity`
  ADD PRIMARY KEY (`id_region`),
  ADD KEY `id_group_bu` (`id_group_bu`);

--
-- Indexes for table `meo_group_rights`
--
ALTER TABLE `meo_group_rights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group_name` (`id_group_name`);

--
-- Indexes for table `meo_group_rights_access_mailroom`
--
ALTER TABLE `meo_group_rights_access_mailroom`
  ADD KEY `id_group_right` (`id_group_right`);

--
-- Indexes for table `meo_group_rights_actiontracker`
--
ALTER TABLE `meo_group_rights_actiontracker`
  ADD PRIMARY KEY (`id_grp`),
  ADD KEY `id_name` (`id_group_name`);

--
-- Indexes for table `meo_group_rights_mailroom_entity`
--
ALTER TABLE `meo_group_rights_mailroom_entity`
  ADD PRIMARY KEY (`id_rights`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `meo_group_rights_raci`
--
ALTER TABLE `meo_group_rights_raci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group_name` (`id_group_name`);

--
-- Indexes for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  ADD PRIMARY KEY (`id_admin_access`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_group_2` (`id_group`);

--
-- Indexes for table `meo_ims_list_data`
--
ALTER TABLE `meo_ims_list_data`
  ADD PRIMARY KEY (`id_list`);

--
-- Indexes for table `meo_mailroom_request_ids`
--
ALTER TABLE `meo_mailroom_request_ids`
  ADD PRIMARY KEY (`id_mailroom_request`);

--
-- Indexes for table `meo_main_vessel_type_entity`
--
ALTER TABLE `meo_main_vessel_type_entity`
  ADD PRIMARY KEY (`id_vessel_type`);

--
-- Indexes for table `meo_menu_entity`
--
ALTER TABLE `meo_menu_entity`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `meo_meoUsers_entity`
--
ALTER TABLE `meo_meoUsers_entity`
  ADD PRIMARY KEY (`id_meo_user`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `meo_meoUsers_relations_entity`
--
ALTER TABLE `meo_meoUsers_relations_entity`
  ADD KEY `meo_user_id` (`meo_user_id`);

--
-- Indexes for table `meo_notifications_list`
--
ALTER TABLE `meo_notifications_list`
  ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `meo_organization_chart_entity`
--
ALTER TABLE `meo_organization_chart_entity`
  ADD PRIMARY KEY (`id_chart`);

--
-- Indexes for table `meo_org_groups_detail`
--
ALTER TABLE `meo_org_groups_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_org_group` (`id_groups_members`),
  ADD KEY `id_org_group_2` (`id_groups_members`);

--
-- Indexes for table `meo_org_groups_entity`
--
ALTER TABLE `meo_org_groups_entity`
  ADD PRIMARY KEY (`id_org_group`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `meo_org_groups_members_entity`
--
ALTER TABLE `meo_org_groups_members_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_org_group` (`id_org_group`);

--
-- Indexes for table `meo_org_groups_users_detail`
--
ALTER TABLE `meo_org_groups_users_detail`
  ADD KEY `id_groups_members` (`id_groups_members`),
  ADD KEY `id_meo_user` (`id_meo_user`);

--
-- Indexes for table `meo_sections_entity`
--
ALTER TABLE `meo_sections_entity`
  ADD PRIMARY KEY (`id_section`);

--
-- Indexes for table `meo_shore_addresses`
--
ALTER TABLE `meo_shore_addresses`
  ADD PRIMARY KEY (`id_address`);

--
-- Indexes for table `meo_thirdParty_vesselName`
--
ALTER TABLE `meo_thirdParty_vesselName`
  ADD PRIMARY KEY (`id_third_vessel_name`),
  ADD KEY `id_third_vessel_type` (`id_third_vessel_type`);

--
-- Indexes for table `meo_thirdParty_vesselType`
--
ALTER TABLE `meo_thirdParty_vesselType`
  ADD PRIMARY KEY (`id_third_vessel_type`);

--
-- Indexes for table `meo_travel_discussion`
--
ALTER TABLE `meo_travel_discussion`
  ADD PRIMARY KEY (`id_travel_discussion`);

--
-- Indexes for table `meo_travel_discussion_attachment`
--
ALTER TABLE `meo_travel_discussion_attachment`
  ADD PRIMARY KEY (`id_discussion_attachment`);

--
-- Indexes for table `meo_travel_discussion_image_attachment`
--
ALTER TABLE `meo_travel_discussion_image_attachment`
  ADD PRIMARY KEY (`id_discussion_image`);

--
-- Indexes for table `meo_travel_discussion_link_attachment`
--
ALTER TABLE `meo_travel_discussion_link_attachment`
  ADD PRIMARY KEY (`id_discussion_link`);

--
-- Indexes for table `meo_travel_discussion_notifiers`
--
ALTER TABLE `meo_travel_discussion_notifiers`
  ADD PRIMARY KEY (`id_travel_notifier`);

--
-- Indexes for table `meo_travel_request`
--
ALTER TABLE `meo_travel_request`
  ADD PRIMARY KEY (`id_travel_request`);

--
-- Indexes for table `meo_travel_request_approvers`
--
ALTER TABLE `meo_travel_request_approvers`
  ADD PRIMARY KEY (`id_travel_request_approver`);

--
-- Indexes for table `meo_travel_request_countries`
--
ALTER TABLE `meo_travel_request_countries`
  ADD PRIMARY KEY (`id_travel_request_country`);

--
-- Indexes for table `meo_travel_request_privacy`
--
ALTER TABLE `meo_travel_request_privacy`
  ADD PRIMARY KEY (`id_travel_privacy`);

--
-- Indexes for table `meo_users_entity`
--
ALTER TABLE `meo_users_entity`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `refer_id` (`refer_id`);

--
-- Indexes for table `meo_user_rights_action`
--
ALTER TABLE `meo_user_rights_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_user_rights_ims`
--
ALTER TABLE `meo_user_rights_ims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_user_rights_raci`
--
ALTER TABLE `meo_user_rights_raci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_user_right_admin`
--
ALTER TABLE `meo_user_right_admin`
  ADD PRIMARY KEY (`id_user_right_admin`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_meo_user` (`id_meo_user`);

--
-- Indexes for table `meo_user_right_admin_access`
--
ALTER TABLE `meo_user_right_admin_access`
  ADD KEY `id_user_right_admin` (`id_user_right_admin`),
  ADD KEY `id_section` (`id_section`);

--
-- Indexes for table `meo_verification_log`
--
ALTER TABLE `meo_verification_log`
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `meo_vessel_documents`
--
ALTER TABLE `meo_vessel_documents`
  ADD PRIMARY KEY (`id`,`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `meo_vessel_email_list`
--
ALTER TABLE `meo_vessel_email_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Indexes for table `meo_vessel_email_tag`
--
ALTER TABLE `meo_vessel_email_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vessel_id` (`vessel_id`,`vessel_email_id`),
  ADD KEY `vessel_email_id` (`vessel_email_id`);

--
-- Indexes for table `meo_vessel_folder`
--
ALTER TABLE `meo_vessel_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  ADD PRIMARY KEY (`id_vessel_name`),
  ADD KEY `id_main_vessel_type` (`id_main_vessel_type`),
  ADD KEY `id_vessel_type` (`id_vessel_type`);

--
-- Indexes for table `meo_vessel_region_entity`
--
ALTER TABLE `meo_vessel_region_entity`
  ADD PRIMARY KEY (`id_vessel_region`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `meo_vessel_region_member_entity`
--
ALTER TABLE `meo_vessel_region_member_entity`
  ADD PRIMARY KEY (`id_region_member`),
  ADD KEY `id_vessel_region` (`id_vessel_region`),
  ADD KEY `id_vessel_name` (`id_vessel_name`);

--
-- Indexes for table `meo_vessel_rights_action`
--
ALTER TABLE `meo_vessel_rights_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_vessel_rights_ims`
--
ALTER TABLE `meo_vessel_rights_ims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_vessel_rights_raci`
--
ALTER TABLE `meo_vessel_rights_raci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meo_vessel_type_entity`
--
ALTER TABLE `meo_vessel_type_entity`
  ADD PRIMARY KEY (`id_vessel_type`),
  ADD KEY `id_main_vessel_type` (`id_main_vessel_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meo_action_activity_stages`
--
ALTER TABLE `meo_action_activity_stages`
  MODIFY `id_activity_stage` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_action_activity_status`
--
ALTER TABLE `meo_action_activity_status`
  MODIFY `id_activity_status` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meo_action_classification`
--
ALTER TABLE `meo_action_classification`
  MODIFY `id_classification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `meo_action_nature`
--
ALTER TABLE `meo_action_nature`
  MODIFY `id_nature` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `meo_action_rank`
--
ALTER TABLE `meo_action_rank`
  MODIFY `id_rank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `meo_atr_activity_updates`
--
ALTER TABLE `meo_atr_activity_updates`
  MODIFY `id_updates` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_atr_vessels_add_action_item`
--
ALTER TABLE `meo_atr_vessels_add_action_item`
  MODIFY `id_action_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `meo_capex_discussion`
--
ALTER TABLE `meo_capex_discussion`
  MODIFY `id_capex_discussion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_discussion_attachment`
--
ALTER TABLE `meo_capex_discussion_attachment`
  MODIFY `id_capex_discussion_attachment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_discussion_image_attachment`
--
ALTER TABLE `meo_capex_discussion_image_attachment`
  MODIFY `id_capex_discussion_image` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_discussion_link_attachment`
--
ALTER TABLE `meo_capex_discussion_link_attachment`
  MODIFY `id_capex_discussion_link` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_discussion_notifiers`
--
ALTER TABLE `meo_capex_discussion_notifiers`
  MODIFY `id_capex_notifier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_request`
--
ALTER TABLE `meo_capex_request`
  MODIFY `id_capex_request` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_request_approvers`
--
ALTER TABLE `meo_capex_request_approvers`
  MODIFY `id_capex_request_approvers` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_request_privacy`
--
ALTER TABLE `meo_capex_request_privacy`
  MODIFY `id_capex_privacy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_capex_variations`
--
ALTER TABLE `meo_capex_variations`
  MODIFY `id_capex_variation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_ci_cookies`
--
ALTER TABLE `meo_ci_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_interval`
--
ALTER TABLE `meo_claims_interval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request`
--
ALTER TABLE `meo_claims_request`
  MODIFY `id_claims_request` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_approvers`
--
ALTER TABLE `meo_claims_request_approvers`
  MODIFY `id_claims_request_approvers` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_discussion`
--
ALTER TABLE `meo_claims_request_discussion`
  MODIFY `id_claims_request_discussion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_discussion_attachment`
--
ALTER TABLE `meo_claims_request_discussion_attachment`
  MODIFY `id_claims_request_discussion_attachment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_discussion_image_attachment`
--
ALTER TABLE `meo_claims_request_discussion_image_attachment`
  MODIFY `id_claims_request_discussion_image_attachment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_discussion_link_attachment`
--
ALTER TABLE `meo_claims_request_discussion_link_attachment`
  MODIFY `id_claims_request_discussion_link_attachment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_discussion_notifiers`
--
ALTER TABLE `meo_claims_request_discussion_notifiers`
  MODIFY `id_claims_request_discussion_notifiers` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_expenditure`
--
ALTER TABLE `meo_claims_request_expenditure`
  MODIFY `id_claims_request_expenditure` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_expenditure_attachment`
--
ALTER TABLE `meo_claims_request_expenditure_attachment`
  MODIFY `id_claims_request_expenditure_attachment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_expenditure_image`
--
ALTER TABLE `meo_claims_request_expenditure_image`
  MODIFY `id_claims_request_expenditure_image` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claims_request_expenditure_link`
--
ALTER TABLE `meo_claims_request_expenditure_link`
  MODIFY `id_claims_request_expenditure_link` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_claim_expense_type_entity`
--
ALTER TABLE `meo_claim_expense_type_entity`
  MODIFY `id_claim` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meo_claim_types_entity`
--
ALTER TABLE `meo_claim_types_entity`
  MODIFY `id_claim_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  MODIFY `id_client_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_client_user_rights_action`
--
ALTER TABLE `meo_client_user_rights_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `meo_client_user_rights_ims`
--
ALTER TABLE `meo_client_user_rights_ims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_client_user_rights_raci`
--
ALTER TABLE `meo_client_user_rights_raci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  MODIFY `id_commercial_pic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_config_options`
--
ALTER TABLE `meo_config_options`
  MODIFY `id_config` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_contact_admin_rights`
--
ALTER TABLE `meo_contact_admin_rights`
  MODIFY `id_contact_admin_right` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_contact_rights`
--
ALTER TABLE `meo_contact_rights`
  MODIFY `id_contact_rights` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_contact_rights_admin`
--
ALTER TABLE `meo_contact_rights_admin`
  MODIFY `id_user_right_contact` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `meo_countries`
--
ALTER TABLE `meo_countries`
  MODIFY `countryid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_currency`
--
ALTER TABLE `meo_currency`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `meo_currencyrate`
--
ALTER TABLE `meo_currencyrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_department_entity`
--
ALTER TABLE `meo_department_entity`
  MODIFY `id_department` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `meo_designation_list`
--
ALTER TABLE `meo_designation_list`
  MODIFY `id_designation` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_email_templates`
--
ALTER TABLE `meo_email_templates`
  MODIFY `id_email_templates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `meo_entity_list`
--
ALTER TABLE `meo_entity_list`
  MODIFY `id_entity` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_fare_class`
--
ALTER TABLE `meo_fare_class`
  MODIFY `fare_class_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_front_vessel_contact`
--
ALTER TABLE `meo_front_vessel_contact`
  MODIFY `id_front_vessel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `meo_group_bu_entity`
--
ALTER TABLE `meo_group_bu_entity`
  MODIFY `id_group_bu` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `meo_group_name_entity`
--
ALTER TABLE `meo_group_name_entity`
  MODIFY `id_group_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_group_region_entity`
--
ALTER TABLE `meo_group_region_entity`
  MODIFY `id_region` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `meo_group_rights`
--
ALTER TABLE `meo_group_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_group_rights_actiontracker`
--
ALTER TABLE `meo_group_rights_actiontracker`
  MODIFY `id_grp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `meo_group_rights_mailroom_entity`
--
ALTER TABLE `meo_group_rights_mailroom_entity`
  MODIFY `id_rights` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_group_rights_raci`
--
ALTER TABLE `meo_group_rights_raci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  MODIFY `id_admin_access` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meo_mailroom_request_ids`
--
ALTER TABLE `meo_mailroom_request_ids`
  MODIFY `id_mailroom_request` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_main_vessel_type_entity`
--
ALTER TABLE `meo_main_vessel_type_entity`
  MODIFY `id_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meo_menu_entity`
--
ALTER TABLE `meo_menu_entity`
  MODIFY `id_menu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_meoUsers_entity`
--
ALTER TABLE `meo_meoUsers_entity`
  MODIFY `id_meo_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
--
-- AUTO_INCREMENT for table `meo_notifications_list`
--
ALTER TABLE `meo_notifications_list`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_organization_chart_entity`
--
ALTER TABLE `meo_organization_chart_entity`
  MODIFY `id_chart` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_org_groups_detail`
--
ALTER TABLE `meo_org_groups_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meo_org_groups_entity`
--
ALTER TABLE `meo_org_groups_entity`
  MODIFY `id_org_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `meo_org_groups_members_entity`
--
ALTER TABLE `meo_org_groups_members_entity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT for table `meo_sections_entity`
--
ALTER TABLE `meo_sections_entity`
  MODIFY `id_section` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `meo_shore_addresses`
--
ALTER TABLE `meo_shore_addresses`
  MODIFY `id_address` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `meo_thirdParty_vesselName`
--
ALTER TABLE `meo_thirdParty_vesselName`
  MODIFY `id_third_vessel_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_thirdParty_vesselType`
--
ALTER TABLE `meo_thirdParty_vesselType`
  MODIFY `id_third_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `meo_travel_discussion`
--
ALTER TABLE `meo_travel_discussion`
  MODIFY `id_travel_discussion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_attachment`
--
ALTER TABLE `meo_travel_discussion_attachment`
  MODIFY `id_discussion_attachment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_image_attachment`
--
ALTER TABLE `meo_travel_discussion_image_attachment`
  MODIFY `id_discussion_image` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_link_attachment`
--
ALTER TABLE `meo_travel_discussion_link_attachment`
  MODIFY `id_discussion_link` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_notifiers`
--
ALTER TABLE `meo_travel_discussion_notifiers`
  MODIFY `id_travel_notifier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_request`
--
ALTER TABLE `meo_travel_request`
  MODIFY `id_travel_request` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_request_approvers`
--
ALTER TABLE `meo_travel_request_approvers`
  MODIFY `id_travel_request_approver` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_request_countries`
--
ALTER TABLE `meo_travel_request_countries`
  MODIFY `id_travel_request_country` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_travel_request_privacy`
--
ALTER TABLE `meo_travel_request_privacy`
  MODIFY `id_travel_privacy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_users_entity`
--
ALTER TABLE `meo_users_entity`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;
--
-- AUTO_INCREMENT for table `meo_user_rights_action`
--
ALTER TABLE `meo_user_rights_action`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `meo_user_rights_ims`
--
ALTER TABLE `meo_user_rights_ims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_user_rights_raci`
--
ALTER TABLE `meo_user_rights_raci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_user_right_admin`
--
ALTER TABLE `meo_user_right_admin`
  MODIFY `id_user_right_admin` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `meo_vessel_documents`
--
ALTER TABLE `meo_vessel_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `meo_vessel_email_list`
--
ALTER TABLE `meo_vessel_email_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `meo_vessel_email_tag`
--
ALTER TABLE `meo_vessel_email_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `meo_vessel_folder`
--
ALTER TABLE `meo_vessel_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  MODIFY `id_vessel_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `meo_vessel_region_entity`
--
ALTER TABLE `meo_vessel_region_entity`
  MODIFY `id_vessel_region` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `meo_vessel_region_member_entity`
--
ALTER TABLE `meo_vessel_region_member_entity`
  MODIFY `id_region_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `meo_vessel_rights_action`
--
ALTER TABLE `meo_vessel_rights_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_vessel_rights_ims`
--
ALTER TABLE `meo_vessel_rights_ims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_vessel_rights_raci`
--
ALTER TABLE `meo_vessel_rights_raci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_vessel_type_entity`
--
ALTER TABLE `meo_vessel_type_entity`
  MODIFY `id_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `meo_admin_section_accessibility`
--
ALTER TABLE `meo_admin_section_accessibility`
  ADD CONSTRAINT `meo_admin_section_accessibility_ibfk_1` FOREIGN KEY (`id_group_access`) REFERENCES `meo_group_section_access` (`id_admin_access`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_admin_section_accessibility_ibfk_2` FOREIGN KEY (`id_section`) REFERENCES `meo_sections_entity` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_capex_discussion`
--
ALTER TABLE `meo_capex_discussion`
  ADD CONSTRAINT `meo_capex_discussion_ibfk_1` FOREIGN KEY (`id_capex_request`) REFERENCES `meo_capex_request` (`id_capex_request`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_capex_discussion_attachment`
--
ALTER TABLE `meo_capex_discussion_attachment`
  ADD CONSTRAINT `meo_capex_discussion_attachment_ibfk_1` FOREIGN KEY (`id_capex_discussion`) REFERENCES `meo_capex_discussion` (`id_capex_discussion`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_capex_discussion_link_attachment`
--
ALTER TABLE `meo_capex_discussion_link_attachment`
  ADD CONSTRAINT `meo_capex_discussion_link_attachment_ibfk_1` FOREIGN KEY (`id_capex_discussion`) REFERENCES `meo_capex_discussion` (`id_capex_discussion`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_capex_discussion_notifiers`
--
ALTER TABLE `meo_capex_discussion_notifiers`
  ADD CONSTRAINT `meo_capex_discussion_notifiers_ibfk_1` FOREIGN KEY (`id_capex_discussion`) REFERENCES `meo_capex_discussion` (`id_capex_discussion`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_capex_request_approvers`
--
ALTER TABLE `meo_capex_request_approvers`
  ADD CONSTRAINT `meo_capex_request_approvers_ibfk_1` FOREIGN KEY (`id_capex_request`) REFERENCES `meo_capex_request` (`id_capex_request`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_capex_request_privacy`
--
ALTER TABLE `meo_capex_request_privacy`
  ADD CONSTRAINT `meo_capex_request_privacy_ibfk_1` FOREIGN KEY (`id_capex_request`) REFERENCES `meo_capex_request` (`id_capex_request`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_capex_variations`
--
ALTER TABLE `meo_capex_variations`
  ADD CONSTRAINT `meo_capex_variations_ibfk_1` FOREIGN KEY (`id_capex_request`) REFERENCES `meo_capex_request` (`id_capex_request`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  ADD CONSTRAINT `meo_client_users_entity_ibfk_1` FOREIGN KEY (`client_user_id`) REFERENCES `meo_users_entity` (`refer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_client_users_entity_ibfk_2` FOREIGN KEY (`id_region`) REFERENCES `meo_group_region_entity` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  ADD CONSTRAINT `meo_commercial_pic_ibfk_1` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_commercial_pic_ibfk_2` FOREIGN KEY (`id_contact_rights`) REFERENCES `meo_contact_rights` (`id_contact_rights`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_contact_admin_rights`
--
ALTER TABLE `meo_contact_admin_rights`
  ADD CONSTRAINT `meo_contact_admin_rights_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_contact_admin_rights_association`
--
ALTER TABLE `meo_contact_admin_rights_association`
  ADD CONSTRAINT `meo_contact_admin_rights_association_ibfk_1` FOREIGN KEY (`id_contact_rights`) REFERENCES `meo_contact_admin_rights` (`id_contact_admin_right`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_contact_admin_rights_association_ibfk_2` FOREIGN KEY (`id_section`) REFERENCES `meo_sections_entity` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_contact_rights`
--
ALTER TABLE `meo_contact_rights`
  ADD CONSTRAINT `meo_contact_rights_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `meo_client_users_entity` (`id_client_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_contact_rights_ibfk_2` FOREIGN KEY (`id_admin_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_contact_rights_admin`
--
ALTER TABLE `meo_contact_rights_admin`
  ADD CONSTRAINT `meo_contact_rights_admin_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_contact_rights_admin_ibfk_2` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_contact_rights_admin_access`
--
ALTER TABLE `meo_contact_rights_admin_access`
  ADD CONSTRAINT `meo_contact_rights_admin_access_ibfk_1` FOREIGN KEY (`id_user_right_contact`) REFERENCES `meo_contact_rights_admin` (`id_user_right_contact`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_contact_rights_admin_access_ibfk_2` FOREIGN KEY (`id_section`) REFERENCES `meo_sections_entity` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_contact_user_rights_association`
--
ALTER TABLE `meo_contact_user_rights_association`
  ADD CONSTRAINT `meo_contact_user_rights_association_ibfk_1` FOREIGN KEY (`id_contact_rights`) REFERENCES `meo_contact_rights` (`id_contact_rights`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_contact_user_rights_association_ibfk_2` FOREIGN KEY (`id_section`) REFERENCES `meo_sections_entity` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_department_entity`
--
ALTER TABLE `meo_department_entity`
  ADD CONSTRAINT `meo_department_entity_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `meo_group_region_entity` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_department_member_entity`
--
ALTER TABLE `meo_department_member_entity`
  ADD CONSTRAINT `meo_department_member_entity_ibfk_1` FOREIGN KEY (`id_department_member`) REFERENCES `meo_department_entity` (`id_department`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_department_member_entity_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_designation_list_assoc`
--
ALTER TABLE `meo_designation_list_assoc`
  ADD CONSTRAINT `meo_designation_list_assoc_ibfk_1` FOREIGN KEY (`id_designation`) REFERENCES `meo_designation_list` (`id_designation`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_designation_list_assoc_ibfk_2` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_front_vessel_contact`
--
ALTER TABLE `meo_front_vessel_contact`
  ADD CONSTRAINT `meo_front_vessel_contact_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_front_vessel_contact_organistaion`
--
ALTER TABLE `meo_front_vessel_contact_organistaion`
  ADD CONSTRAINT `meo_front_vessel_contact_organistaion_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_organistaion_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_organistaion_ibfk_3` FOREIGN KEY (`organistaion`) REFERENCES `meo_org_groups_entity` (`id_org_group`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_front_vessel_contact_userpic`
--
ALTER TABLE `meo_front_vessel_contact_userpic`
  ADD CONSTRAINT `meo_front_vessel_contact_userpic_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_userpic_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_userpic_ibfk_3` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_group_region_entity`
--
ALTER TABLE `meo_group_region_entity`
  ADD CONSTRAINT `meo_group_region_entity_ibfk_1` FOREIGN KEY (`id_group_bu`) REFERENCES `meo_group_bu_entity` (`id_group_bu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_group_rights`
--
ALTER TABLE `meo_group_rights`
  ADD CONSTRAINT `meo_group_rights_ibfk_1` FOREIGN KEY (`id_group_name`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_group_rights_access_mailroom`
--
ALTER TABLE `meo_group_rights_access_mailroom`
  ADD CONSTRAINT `meo_group_rights_access_mailroom_ibfk_1` FOREIGN KEY (`id_group_right`) REFERENCES `meo_group_rights_mailroom_entity` (`id_rights`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_group_rights_mailroom_entity`
--
ALTER TABLE `meo_group_rights_mailroom_entity`
  ADD CONSTRAINT `meo_group_rights_mailroom_entity_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_group_rights_raci`
--
ALTER TABLE `meo_group_rights_raci`
  ADD CONSTRAINT `meo_group_rights_raci_ibfk_1` FOREIGN KEY (`id_group_name`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  ADD CONSTRAINT `meo_group_section_access_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_meoUsers_entity`
--
ALTER TABLE `meo_meoUsers_entity`
  ADD CONSTRAINT `meo_meoUsers_entity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `meo_users_entity` (`refer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_meoUsers_relations_entity`
--
ALTER TABLE `meo_meoUsers_relations_entity`
  ADD CONSTRAINT `meo_meoUsers_relations_entity_ibfk_1` FOREIGN KEY (`meo_user_id`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_org_groups_detail`
--
ALTER TABLE `meo_org_groups_detail`
  ADD CONSTRAINT `meo_org_groups_detail_ibfk_1` FOREIGN KEY (`id_groups_members`) REFERENCES `meo_org_groups_members_entity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_org_groups_entity`
--
ALTER TABLE `meo_org_groups_entity`
  ADD CONSTRAINT `meo_org_groups_entity_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `meo_group_region_entity` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_org_groups_members_entity`
--
ALTER TABLE `meo_org_groups_members_entity`
  ADD CONSTRAINT `meo_org_groups_members_entity_ibfk_1` FOREIGN KEY (`id_org_group`) REFERENCES `meo_org_groups_entity` (`id_org_group`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_org_groups_users_detail`
--
ALTER TABLE `meo_org_groups_users_detail`
  ADD CONSTRAINT `meo_org_groups_users_detail_ibfk_1` FOREIGN KEY (`id_groups_members`) REFERENCES `meo_org_groups_members_entity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_org_groups_users_detail_ibfk_2` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_thirdParty_vesselName`
--
ALTER TABLE `meo_thirdParty_vesselName`
  ADD CONSTRAINT `meo_thirdParty_vesselName_ibfk_1` FOREIGN KEY (`id_third_vessel_type`) REFERENCES `meo_thirdParty_vesselType` (`id_third_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_user_right_admin`
--
ALTER TABLE `meo_user_right_admin`
  ADD CONSTRAINT `meo_user_right_admin_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_user_right_admin_ibfk_2` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_user_right_admin_access`
--
ALTER TABLE `meo_user_right_admin_access`
  ADD CONSTRAINT `meo_user_right_admin_access_ibfk_1` FOREIGN KEY (`id_user_right_admin`) REFERENCES `meo_user_right_admin` (`id_user_right_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_user_right_admin_access_ibfk_2` FOREIGN KEY (`id_section`) REFERENCES `meo_sections_entity` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_documents`
--
ALTER TABLE `meo_vessel_documents`
  ADD CONSTRAINT `meo_vessel_documents_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `meo_vessel_email_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_email_list`
--
ALTER TABLE `meo_vessel_email_list`
  ADD CONSTRAINT `meo_vessel_email_list_ibfk_1` FOREIGN KEY (`folder_id`) REFERENCES `meo_vessel_folder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_email_tag`
--
ALTER TABLE `meo_vessel_email_tag`
  ADD CONSTRAINT `meo_vessel_email_tag_ibfk_1` FOREIGN KEY (`vessel_email_id`) REFERENCES `meo_vessel_email_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_vessel_email_tag_ibfk_2` FOREIGN KEY (`vessel_id`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  ADD CONSTRAINT `meo_vessel_name_entity_ibfk_1` FOREIGN KEY (`id_main_vessel_type`) REFERENCES `meo_main_vessel_type_entity` (`id_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_vessel_name_entity_ibfk_2` FOREIGN KEY (`id_vessel_type`) REFERENCES `meo_vessel_type_entity` (`id_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_region_entity`
--
ALTER TABLE `meo_vessel_region_entity`
  ADD CONSTRAINT `meo_vessel_region_entity_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `meo_group_region_entity` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_region_member_entity`
--
ALTER TABLE `meo_vessel_region_member_entity`
  ADD CONSTRAINT `meo_vessel_region_member_entity_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_vessel_region_member_entity_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_vessel_type_entity`
--
ALTER TABLE `meo_vessel_type_entity`
  ADD CONSTRAINT `meo_vessel_type_entity_ibfk_1` FOREIGN KEY (`id_main_vessel_type`) REFERENCES `meo_main_vessel_type_entity` (`id_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
