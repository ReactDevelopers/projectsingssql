-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 05:46 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mailroom`
--

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
(4, 1, 'active', 'active'),
(4, 2, 'active', 'active'),
(4, 3, 'active', 'active'),
(4, 4, 'active', 'active'),
(4, 5, 'active', 'active'),
(5, 1, 'active', 'inactive'),
(5, 2, 'inactive', 'inactive'),
(5, 3, 'active', 'inactive'),
(5, 4, 'active', 'inactive'),
(5, 5, 'active', 'inactive'),
(6, 1, 'active', 'active'),
(6, 2, 'active', 'active'),
(6, 3, 'active', 'active'),
(6, 4, 'active', 'active'),
(6, 5, 'active', 'active'),
(7, 1, 'active', 'inactive'),
(7, 2, 'active', 'inactive'),
(7, 3, 'active', 'inactive'),
(7, 4, 'active', 'inactive'),
(7, 5, 'active', 'inactive'),
(8, 1, 'active', 'active'),
(8, 2, 'inactive', 'inactive'),
(8, 3, 'inactive', 'inactive'),
(8, 4, 'inactive', 'inactive'),
(8, 5, 'inactive', 'inactive');

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
  `status` enum('active','hidden') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_capex_discussion`
--

INSERT INTO `meo_capex_discussion` (`id_capex_discussion`, `id_capex_request`, `requester_id`, `discussion_message`, `date_time`, `status`) VALUES
(35, 10, 1, 'message1', '2017-03-29 19:52:26', 'active'),
(42, 27, 1, '`1234', '2017-03-30 20:11:15', 'active'),
(43, 27, 1, '12345', '2017-03-30 20:11:18', 'active'),
(44, 27, 1, 'qwert', '2017-03-30 20:11:19', 'active');

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

--
-- Dumping data for table `meo_capex_discussion_notifiers`
--

INSERT INTO `meo_capex_discussion_notifiers` (`id_capex_notifier`, `id_capex_discussion`, `notify_to`, `added_on`) VALUES
(39, 35, 13, '2017-03-29 19:52:26'),
(40, 35, 32, '2017-03-29 19:52:26'),
(41, 35, 41, '2017-03-29 19:52:26'),
(49, 42, 11, '2017-03-30 20:11:16'),
(50, 42, 11, '2017-03-30 20:11:16'),
(51, 42, 11, '2017-03-30 20:11:17'),
(52, 42, 11, '2017-03-30 20:11:18'),
(53, 42, 11, '2017-03-30 20:11:18'),
(54, 43, 11, '2017-03-30 20:11:18'),
(55, 43, 11, '2017-03-30 20:11:18'),
(56, 43, 11, '2017-03-30 20:11:18'),
(57, 43, 11, '2017-03-30 20:11:18'),
(58, 43, 11, '2017-03-30 20:11:19'),
(59, 44, 11, '2017-03-30 20:11:19'),
(60, 44, 24, '2017-03-30 20:11:19'),
(61, 44, 11, '2017-03-30 20:11:19'),
(62, 44, 11, '2017-03-30 20:11:19'),
(63, 44, 11, '2017-03-30 20:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_request`
--

CREATE TABLE `meo_capex_request` (
  `id_capex_request` int(11) NOT NULL,
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
  `status` enum('draft','submitted') NOT NULL,
  `added_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_capex_request`
--

INSERT INTO `meo_capex_request` (`id_capex_request`, `requester_id`, `id_meo_user`, `request_date`, `vendor_name`, `reason_for_vendor_chosen`, `vendor_address_details`, `payment_terms_in_days`, `billing_entity_type`, `billing_entity_id`, `id_claim`, `expenditure_desc`, `completion_date`, `approval_date`, `contract_currency`, `contract_amt`, `amt_in_usd`, `project_in_budget`, `months_to_ammoritize`, `budget_allocated`, `status`, `added_on`, `updated_on`) VALUES
(10, 1, 12, '2017-03-29 00:00:00', 'VENDOR INFO', 'choice info', 'vendor address', 12, 'vessel', '168,94,26', NULL, 'desc info', '2017-03-29 00:00:00', '2017-03-30 00:00:00', 98, '12552.00', '192.05', 'yes', 17, '1477777.00', 'draft', '2017-03-29 19:52:26', '2017-03-29 19:52:26'),
(11, 1, 11, '2017-03-29 00:00:00', '', '', '', 0, '', '', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, '0.00', '0.00', 'yes', 0, '0.00', 'draft', '2017-03-29 19:53:25', '2017-03-29 19:53:25'),
(13, 1, 12, '2017-03-30 00:00:00', '', '', '', 0, '', '', 8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, '0.00', '0.00', 'yes', 0, '0.00', 'draft', '2017-03-30 11:26:02', '2017-03-30 11:26:02'),
(16, 1, 119, '2017-03-30 00:00:00', 'TEST', 'Testing', 'testing', 10, 'region', '58', 7, 'Test', '2017-03-31 00:00:00', '2017-04-01 00:00:00', 192, '10.00', '7.16', 'yes', 0, '10.00', 'submitted', '2017-03-30 13:10:38', '2017-03-30 13:10:38'),
(17, 1, 11, '2017-03-30 00:00:00', '', '', '', 0, '', '', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, '0.00', '0.00', 'yes', 0, '0.00', 'draft', '2017-03-30 13:18:46', '2017-03-30 13:18:46'),
(20, 1, 25, '2017-03-30 00:00:00', '', '', '', 12, NULL, NULL, 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, '155255.00', '42275.94', 'yes', 22, '189655.00', 'draft', '2017-03-30 14:21:22', '2017-03-30 14:21:22'),
(24, 1, 13, '2017-03-30 00:00:00', 'ASDFGH', 'qwerty', 'qwerty', 10, 'vessel', '112', 8, 'Test', '2017-03-30 00:00:00', '2017-03-31 00:00:00', 98, '100.00', '27.23', 'yes', 18, '189655.00', 'submitted', '2017-03-30 14:52:03', '2017-03-30 14:52:03'),
(26, 1, 25, '2017-03-30 00:00:00', 'check', '', '', 12, '', '', 7, 'check', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, '155255.00', '42275.94', 'yes', 22, '189655.00', 'draft', '2017-03-30 18:43:57', '2017-03-30 18:43:57'),
(27, 1, 17, '2017-03-30 00:00:00', '', '', '', 0, '', '', 8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, '0.00', '0.00', 'yes', 0, '0.00', 'draft', '2017-03-30 20:11:15', '2017-03-30 20:11:15');

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
  `date_time` datetime NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_capex_request_approvers`
--

INSERT INTO `meo_capex_request_approvers` (`id_capex_request_approvers`, `id_capex_request`, `approvers_id`, `id_designation`, `sequence`, `date_time`, `added_on`) VALUES
(42, 10, 18, 1, 1, '2017-03-29 19:52:26', '2017-03-29 19:52:26'),
(43, 11, 11, 1, 1, '2017-03-29 19:53:25', '2017-03-29 19:53:25'),
(46, 13, 11, 1, 1, '2017-03-30 11:26:02', '2017-03-30 11:26:02'),
(49, 16, 11, 1, 1, '2017-03-30 13:10:38', '2017-03-30 13:10:38'),
(50, 17, 12, 1, 1, '2017-03-30 13:18:46', '2017-03-30 13:18:46'),
(61, 20, 25, 1, 1, '2017-03-30 14:21:23', '2017-03-30 14:21:23'),
(62, 20, 11, 0, 2, '2017-03-30 14:21:23', '2017-03-30 14:21:23'),
(78, 24, 11, 1, 1, '2017-03-30 14:52:03', '2017-03-30 14:52:03'),
(82, 26, 11, 1, 1, '2017-03-30 18:43:57', '2017-03-30 18:43:57'),
(87, 27, 11, 1, 1, '2017-03-30 20:11:19', '2017-03-30 20:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `meo_capex_request_privacy`
--

CREATE TABLE `meo_capex_request_privacy` (
  `id_capex_privacy` int(11) NOT NULL,
  `id_capex_request` int(11) NOT NULL,
  `privacy_type` enum('public','private') NOT NULL DEFAULT 'public',
  `personnel_ids` varchar(250) DEFAULT NULL,
  `group_ids` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_capex_request_privacy`
--

INSERT INTO `meo_capex_request_privacy` (`id_capex_privacy`, `id_capex_request`, `privacy_type`, `personnel_ids`, `group_ids`) VALUES
(4, 10, 'private', '11,12,13,14', '17,29,30,36'),
(5, 11, 'public', '', NULL),
(8, 13, 'public', '', NULL),
(11, 16, 'public', '', NULL),
(13, 17, 'private', '15', '30'),
(21, 20, 'public', '', NULL),
(31, 24, 'public', '', NULL),
(34, 26, 'public', '', NULL),
(37, 27, 'public', '', NULL);

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
  `parent_section` enum('admin','contacts') NOT NULL DEFAULT 'admin',
  `change_section` enum('shore_address','organisation_chart','groupbu','department','organisation_group','shore_personnel','vessel','region','main_vessel_type','vessel_type','vessel_name','vessel_region','3_vessel_type','3_vessel_name','group_name','meo_users','client_users','group_rights','user_rights','client_setup','email_content') NOT NULL,
  `change_log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_change_log_entity`
--

INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-06 10:42:26', 'admin', 'shore_address', 'shore region now contain value SINGAPORE<br>address now contain value SINGSYS SERVICES PTE LTD<br>full address now contain value 1 NORTH BRIDGE ROAD #17-10 HIGH STREET CENTRE, SINGAPORE (179094)<br>'),
('add', 'ADMIN', '2017-01-06 10:43:42', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value LUCKNOW, UTTAR PRADESH, INDIA<br>full address now contain value SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)<br>'),
('add', 'ADMIN', '2017-01-06 11:07:56', 'admin', 'organisation_chart', 'chart title now contain value ORG CHART OVERVIEW<br>status now contain value Active<br>image url now contain value OrgChart_1483769276.pdf<br>'),
('add', 'ADMIN', '2017-01-06 11:11:42', 'admin', 'groupbu', 'group bu name now contain value GROUP BU 1<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-06 11:11:54', 'admin', 'groupbu', 'group bu name now contain value GROUP BU 2<br>group bu order now contain value 2<br>'),
('add', 'ADMIN', '2017-01-06 11:12:05', 'admin', 'groupbu', 'group bu name now contain value GROUP BU 3<br>group bu order now contain value 3<br>'),
('add', 'ADMIN', '2017-01-06 11:14:44', 'admin', 'region', 'id group bu  now contain value GROUP BU 1<br>region title now contain value GROUP BU 1 REGION 1<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-06 11:14:52', 'admin', 'region', 'id group bu  now contain value GROUP BU 1<br>region title now contain value GROUP BU 1 REGION 2<br>group region order now contain value 2<br>'),
('add', 'ADMIN', '2017-01-06 11:15:03', 'admin', 'region', 'id group bu  now contain value GROUP BU 2<br>region title now contain value GROUP BU 2 REGION 1<br>group region order now contain value 3<br>'),
('add', 'ADMIN', '2017-01-06 11:15:16', 'admin', 'region', 'id group bu  now contain value GROUP BU 2<br>region title now contain value GROUP BU 2 REGION 2<br>group region order now contain value 4<br>'),
('add', 'ADMIN', '2017-01-06 11:15:26', 'admin', 'region', 'id group bu  now contain value GROUP BU 3<br>region title now contain value GROUP BU 3 REGION 1<br>group region order now contain value 5<br>'),
('add', 'ADMIN', '2017-01-06 11:15:36', 'admin', 'region', 'id group bu  now contain value GROUP BU 3<br>region title now contain value GROUP BU 3 REGION 2<br>group region order now contain value 6<br>'),
('add', 'ADMIN', '2017-01-06 11:21:45', 'admin', 'organisation_group', 'id region now contain value GROUP BU 1 REGION 1<br>org group name now contain value GRP 1 REG 1 ORG 1<br>member name now contain value ORG1 MEMBER1; ORG1 MEMBER2; <br>member email now contain value ORG1@MEMBER1.COM; ORG1@MEMBER2.COM; <br>'),
('add', 'ADMIN', '2017-01-06 11:27:58', 'admin', 'organisation_group', 'id region now contain value GROUP BU 2 REGION 2<br>org group name now contain value GRP 2 REG 2 ORG 2<br>member name now contain value ORG2 MEMBER1; ORG2 MEMBER2; <br>member email now contain value ORG2@MEMBER1.COM; ORG2@MEMBER2.COM; <br>'),
('add', 'ADMIN', '2017-01-06 11:28:39', 'admin', 'organisation_group', 'id region now contain value GROUP BU 3 REGION 1<br>org group name now contain value GRP 2 REG 1 ORG 3<br>member name now contain value ORG3 MEMBER1; ORG3 MEMBER2; <br>member email now contain value ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>'),
('add', 'ADMIN', '2017-01-06 11:36:21', 'admin', 'group_name', 'group name now contain value GROUP NAME 1<br>group description now contain value GROUP NAME 1<br>'),
('add', 'ADMIN', '2017-01-06 11:36:34', 'admin', 'group_name', 'group name now contain value GROUP NAME 2<br>group description now contain value GROUP NAME 2<br>'),
('add', 'ADMIN', '2017-01-06 11:36:46', 'admin', 'group_name', 'group name now contain value GROUP NAME 3<br>group description now contain value GROUP NAME 3<br>'),
('add', 'ADMIN', '2017-01-06 11:39:04', 'admin', 'meo_users', 'user id now contain value MEOUSER1<br>user full name now contain value RACHIT<br>user email now contain value RACHIT@SINGSYS.COM<br>staff client now contain value MEO CLIENT<br>designation now contain value CEO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 11:41:24', 'admin', 'meo_users', 'user id now contain value MEOUSER2<br>user full name now contain value MANISH<br>user email now contain value MANISHMAHANT@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 11:48:22', 'admin', 'client_users', 'client user id now contain value CLIENTUSER1<br>client user full name now contain value ABHAY<br>client email id now contain value ABHAY@SINGSYS.COM<br>id region now contain value GROUP BU 3 REGION 1<br>company now contain value SINGSYS<br>designation now contain value CEO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 11:51:12', 'admin', 'client_users', 'client user id now contain value CLIENTUSER2<br>client user full name now contain value ARINDAM<br>client email id now contain value ARINDAM@SINGSYS.COM<br>id region now contain value GROUP BU 1 REGION 2<br>company now contain value SINGSYS PTE LTD<br>designation now contain value COO<br>expiry date now contain value 2017-01-31<br>'),
('add', 'ADMIN', '2017-01-06 11:54:35', 'admin', 'department', 'id region now contain value GROUP BU 1 REGION 1<br>department name now contain value DEPARTMENT 1<br>members now contain value RACHIT; MANISH; <br>'),
('add', 'ADMIN', '2017-01-06 11:58:38', 'admin', 'department', 'id region now contain value GROUP BU 2 REGION 1<br>department name now contain value DEPARTMENT 2<br>members now contain value RACHIT; <br>'),
('add', 'ADMIN', '2017-01-06 11:58:50', 'admin', 'department', 'id region now contain value GROUP BU 3 REGION 1<br>department name now contain value DEPARTMENT 3<br>members now contain value MANISH; <br>'),
('add', 'ADMIN', '2017-01-06 12:19:30', 'admin', 'group_rights', 'GROUP NAME 1 Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-01-06 12:32:57', 'admin', 'group_rights', 'GROUP NAME 2 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2 groups</li><li> Modify is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2; RACHIT; DEPARTMENT 1; DEPARTMENT 3 groups</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2; RACHIT; DEPARTMENT 1; DEPARTMENT 3; GROUP BU 1 REGION 1; GROUP BU 2 REGION 2 groups</li><li> Modify is for restricted with RACHIT; MANISH; DEPARTMENT 1; DEPARTMENT 2; RACHIT; DEPARTMENT 1; DEPARTMENT 3; GROUP BU 1 REGION 1; GROUP BU 2 REGION 2; GROUP BU 2 REGION 2; GROUP BU 3 REGION 1 groups</li></ul></li></ol>'),
('add', 'ADMIN', '2017-01-06 12:43:08', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is active<br>ADMIN / OTHERS Now has right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-01-06 13:35:56', 'admin', 'user_rights', 'id meo user now contain value MANISH<br>id group now contain value GROUP NAME 3<br>Contacts / Shore Personnel for view is restricted with access titles RACHIT; DEPARTMENT 3<br>Contacts / Shore Personnel for modify is restricted with access titles MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-06 13:42:46', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value PROJECT 1<br>id admin group now contain value GROUP NAME 3<br>meo pic now contain value MANISH; <br>'),
('add', 'ADMIN', '2017-01-06 13:50:31', 'admin', 'main_vessel_type', 'type title  now contain value VESSEL TYPE 1<br>'),
('add', 'ADMIN', '2017-01-06 13:50:46', 'admin', 'main_vessel_type', 'type title  now contain value VESSEL TYPE 2<br>'),
('add', 'ADMIN', '2017-01-06 13:50:53', 'admin', 'main_vessel_type', 'type title  now contain value VESSEL TYPE 3<br>'),
('add', 'ADMIN', '2017-01-06 13:53:48', 'admin', 'vessel_type', 'id main vessel type  now contain value VESSEL TYPE 1<br>vessel type  now contain value CHILD VESSEL TYPE 1<br>'),
('add', 'ADMIN', '2017-01-06 13:54:02', 'admin', 'vessel_type', 'id main vessel type  now contain value VESSEL TYPE 3<br>vessel type  now contain value CHILD VESSEL TYPE 2<br>'),
('add', 'ADMIN', '2017-01-06 13:54:34', 'admin', 'vessel_type', 'id main vessel type  now contain value VESSEL TYPE 2<br>vessel type  now contain value CHILD VESSEL TYPE 3<br>'),
('add', 'ADMIN', '2017-01-06 14:02:19', 'admin', 'vessel_name', 'vesselID  now contain value VESSELID1<br>vessel name  now contain value VESSEL1<br>id main vessel type  now contain value VESSEL TYPE 1<br>id vessel type  now contain value CHILD VESSEL TYPE 1<br>'),
('add', 'ADMIN', '2017-01-06 14:03:46', 'admin', 'vessel_name', 'vesselID  now contain value VESSELID2<br>vessel name  now contain value VESSEL2<br>id main vessel type  now contain value VESSEL TYPE 3<br>id vessel type  now contain value CHILD VESSEL TYPE 2<br>'),
('add', 'ADMIN', '2017-01-06 14:04:16', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 1<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-06 14:04:30', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 2<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-06 14:07:57', 'admin', '3_vessel_type', 'vessel type name now contain value 3rdPartyvessel1<br>'),
('update', 'ADMIN', '2017-01-06 14:08:07', 'admin', '3_vessel_type', 'vessel type name updates from 3rdPartyvessel1 to 3RD PARTY VESSEL 1<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-06 14:08:14', 'admin', '3_vessel_type', 'vessel type name now contain value 3RD PARTY VESSEL 2<br>'),
('add', 'ADMIN', '2017-01-06 14:08:22', 'admin', '3_vessel_type', 'vessel type name now contain value 3RD PARTY VESSEL 3<br>'),
('add', 'ADMIN', '2017-01-06 14:11:28', 'admin', '3_vessel_name', 'vessel name now contain value 3RD PARTY VESSEL NAME1<br>id third vessel type now contain value 3RD PARTY VESSEL 1<br>remarks now contain value VESSEL REMARK<br>'),
('add', 'ADMIN', '2017-01-06 14:12:36', 'admin', '3_vessel_name', 'vessel name now contain value 3RD PARTY VESSEL NAME2<br>id third vessel type now contain value 3RD PARTY VESSEL 2<br>remarks now contain value VESSEL REMARK<br>'),
('update', 'ADMIN', '2017-01-06 15:46:40', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 3 to GROUP NAME 3<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from RACHIT; DEPARTMENT 3 to RACHIT; DEPARTMENT 3<br>Contacts / Shore Personnel for modify is changed from restricted to restricted and access titles changed from MANISH; DEPARTMENT 2 to MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is changed from all to restricted and access titles changed from none to VESSEL2; GROUP BU 1 REGION 1<br>Contact / Vessels (MEO) for modify is changed from all to restricted and access titles changed from none to VESSEL1; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to restricted and access titles changed from none to 3RD PARTY VESSEL NAME1; 3RD PARTY VESSEL 2<br>Contacts / 3rd Party Vessels for modify is changed from all to restricted and access titles changed from none to 3RD PARTY VESSEL NAME2; 3RD PARTY VESSEL 1<br>Contacts / Organisation Groups for view is changed from all to restricted and access titles changed from none to none<br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-07 20:52:50', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  PROJECT 1 to PROJECT 1<br>id admin group changed from  GROUP NAME 3 to GROUP NAME 1<br>meo pic changed from  MANISH;  to RACHIT; <br>'),
('add', 'ADMIN', '2017-01-07 20:54:31', 'admin', 'user_rights', 'id meo user now contain value RACHIT<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-01-07 20:56:49', 'admin', 'client_setup', 'id client user changed from  ABHAY to ARINDAM<br>project name changed from  PROJECT 1 to PROJECT 1<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  RACHIT;  to RACHIT; <br>'),
('add', 'ADMIN', '2017-01-07 20:57:08', 'admin', 'user_rights', 'id meo user now contain value MANISH<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-07 20:57:38', 'admin', 'client_setup', 'id client user now contain value ARINDAM<br>project name now contain value TEST 2<br>id admin group now contain value GROUP NAME 1<br>meo pic now contain value MANISH; <br>'),
('add', 'ADMIN', '2017-01-07 20:58:07', 'admin', 'client_setup', 'id client user now contain value ABHAY<br>project name now contain value TEST 2<br>id admin group now contain value GROUP NAME 1<br>meo pic now contain value MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 20:58:36', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 20:58:53', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from  to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from  to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from  to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from  to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-07 20:59:23', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 20:59:59', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 21:10:32', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 21:24:03', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 21:31:52', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 21:49:57', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 22:11:12', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-07 22:25:49', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('add', 'ADMIN', '2017-01-07 23:56:27', 'admin', 'vessel_name', 'vesselID  now contain value VESSELID3<br>vessel name  now contain value VESSEL3<br>id main vessel type  now contain value VESSEL TYPE 2<br>id vessel type  now contain value CHILD VESSEL TYPE 3<br>'),
('add', 'ADMIN', '2017-01-07 23:56:43', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 1<br>id vessel name  now contain value VESSEL3<br>'),
('update', 'ADMIN', '2017-01-07 23:57:40', 'admin', 'vessel_region', 'id region updates from GROUP BU 1 REGION 1 to GROUP BU 1 REGION 1<br>id vessel name updates from VESSEL3;  to VESSEL3; VESSEL1; VESSEL2; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-07 23:58:39', 'admin', 'vessel_region', 'id region updates from GROUP BU 1 REGION 2 to GROUP BU 1 REGION 2<br>id vessel name updates from VESSEL1; VESSEL2;  to VESSEL1; VESSEL2; VESSEL3; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-07 23:58:59', 'admin', 'vessel_region', 'id region  now contain value GROUP BU 1 REGION 2<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-08 01:41:03', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 02:04:20', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to restricted and access titles changed from none to VESSEL1; <br>Contact / Vessels (MEO) for modify is changed from all to restricted and access titles changed from none to VESSEL1; <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-08 02:05:27', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from VESSEL1;  to VESSEL2; <br>Contact / Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from VESSEL1;  to VESSEL1; <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'MANISH', '2017-01-08 03:33:18', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from VESSEL2;  to VESSEL2; <br>Contact / Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from VESSEL1;  to VESSEL1; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-08 04:26:44', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 04:27:44', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 04:58:07', 'admin', 'user_rights', 'id meo user changed from  MANISH to MANISH<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to restricted and access titles changed from none to MANISH; DEPARTMENT 1<br>Contacts / Shore Personnel for modify is changed from all to restricted and access titles changed from none to MANISH; DEPARTMENT 1<br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from VESSEL2;  to VESSEL2; <br>Contact / Vessels (MEO) for modify is changed from restricted to restricted and access titles changed from VESSEL1; GROUP BU 1 REGION 2 to VESSEL1; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to restricted and access titles changed from none to none<br>Contacts / 3rd Party Vessels for modify is changed from all to restricted and access titles changed from none to none<br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-08 15:15:17', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 15:22:27', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 15:25:29', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>'),
('update', 'ADMIN', '2017-01-08 15:29:19', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>Contacts / Shore Personnel for view is changed fromrestricted to restricted and access titles changed from RACHIT; DEPARTMENT 1 to RACHIT; DEPARTMENT 1<br>Contacts / Shore Personnel for modify is changed fromrestricted to restricted and access titles changed from MANISH; DEPARTMENT 2 to MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from VESSEL1; GROUP BU 1 REGION 2 to VESSEL1; GROUP BU 1 REGION 2<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from VESSEL2; GROUP BU 1 REGION 2 to VESSEL2; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed fromrestricted to restricted and access titles changed from GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1 to GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1<br>Contacts / Organisation Groups for modify is changed fromrestricted to restricted and access titles changed from GRP 2 REG 2 ORG 2; GROUP BU 2 REGION 2 to GRP 2 REG 2 ORG 2; GRP 2 REG 1 ORG 3; GROUP BU 2 REGION 2<br>'),
('update', 'ADMIN', '2017-01-08 15:30:01', 'admin', 'client_setup', 'id client user changed from  ARINDAM to ARINDAM<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>meo pic changed from  MANISH;  to MANISH; <br>Contacts / Shore Personnel for view is changed fromrestricted to restricted and access titles changed from RACHIT; DEPARTMENT 1 to RACHIT; DEPARTMENT 1<br>Contacts / Shore Personnel for modify is changed fromrestricted to restricted and access titles changed from MANISH; DEPARTMENT 2 to MANISH; DEPARTMENT 2<br>Contact / Vessels (MEO) for view is changed fromrestricted to restricted and access titles changed from VESSEL1; GROUP BU 1 REGION 2 to VESSEL1; GROUP BU 1 REGION 2<br>Contact / Vessels (MEO) for modify is changed fromrestricted to restricted and access titles changed from VESSEL2; GROUP BU 1 REGION 2 to VESSEL2; GROUP BU 1 REGION 2<br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed fromrestricted to restricted and access titles changed from GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1 to GRP 1 REG 1 ORG 1; GROUP BU 1 REGION 1<br>Contacts / Organisation Groups for modify is changed fromrestricted to restricted and access titles changed from GRP 2 REG 2 ORG 2; GRP 2 REG 1 ORG 3; GROUP BU 2 REGION 2 to GRP 2 REG 2 ORG 2; GRP 2 REG 1 ORG 3; GROUP BU 2 REGION 2<br>'),
('update', 'ADMIN', '2017-01-08 15:31:04', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-01-09 01:27:12', 'admin', 'meo_users', 'user id now contain value 296<br>user full name now contain value BHARATRAJ MEO USER<br>user email now contain value BHARATRAJ@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QUALITY CONTROL ENGINEER<br>expiry date now contain value 2017-12-01<br>'),
('add', 'ADMIN', '2017-01-09 01:28:39', 'admin', 'client_users', 'client user id now contain value 00296<br>client user full name now contain value BHARATRAJ CLIENT USER<br>client email id now contain value BHARATRAJ+1@SINGSYS.COM<br>id region now contain value GROUP BU 1 REGION 1<br>company now contain value SING SYS<br>designation now contain value QUALITY CONTROL ENGINEER<br>expiry date now contain value 2017-12-31<br>'),
('update', 'ADMIN', '2017-01-09 01:47:11', 'admin', 'groupbu', 'group bu name updates from GROUP BU 1 to HELLO GROUP<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-09 01:47:58', 'admin', 'region', 'id group bu updates from HELLO GROUP to HELLO GROUP<br>region title updates from GROUP BU 1 REGION 1 to HELLO TEST<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-09 01:48:26', 'admin', 'department', 'id region updates from HELLO TEST to HELLO TEST<br>department name updates from DEPARTMENT 1 to DEPARTMENT 1<br>members updates from RACHIT; MANISH;  to RACHIT; MANISH; BHARATRAJ MEO USER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-09 01:53:10', 'admin', 'organisation_group', 'id region now contain value HELLO TEST<br>org group name now contain value HELL<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('delete', 'ADMIN', '2017-01-09 03:28:54', 'admin', 'user_rights', 'user rights in contact section for user \"RACHIT\" has been deleted'),
('delete', 'ADMIN', '2017-01-09 03:29:04', 'admin', 'user_rights', 'user rights in contact section for user \"RACHIT\" has been deleted'),
('add', 'ADMIN', '2017-01-09 03:29:29', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ MEO USER<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-01-09 03:39:27', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-09 04:08:29', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 04:11:33', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('add', 'ADMIN', '2017-01-09 05:16:30', 'admin', 'vessel_name', 'vesselID  now contain value 123<br>vessel name  now contain value TEST VESSEL<br>id main vessel type  now contain value VESSEL TYPE 1<br>id vessel type  now contain value CHILD VESSEL TYPE 1<br>'),
('update', 'ADMIN', '2017-01-09 05:17:33', 'admin', 'vessel_region', 'id region updates from HELLO TEST to HELLO TEST<br>id vessel name updates from VESSEL3; VESSEL1; VESSEL2;  to TEST VESSEL; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-09 05:52:21', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 05:54:42', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('delete', 'ADMIN', '2017-01-09 06:01:10', 'admin', 'organisation_group', 'GRP 1 REG 1 ORG 1 deleted'),
('update', 'ADMIN', '2017-01-09 06:46:10', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-09 06:47:35', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('delete', 'ADMIN', '2017-01-09 23:38:11', 'admin', 'user_rights', 'user rights in contact section for user \"RACHIT\" has been deleted'),
('add', 'ADMIN', '2017-01-09 23:38:59', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ MEO USER<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-01-10 00:02:20', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-10 00:05:28', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to restricted and access titles changed from none to BHARATRAJ MEO USER; <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-10 00:07:41', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from restricted to all <br>Contacts / Shore Personnel for modify is changed from all to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-10 00:08:10', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from restricted to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-01-10 00:11:41', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('update', 'ADMIN', '2017-01-10 00:30:53', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-01-10 00:51:37', 'admin', 'organisation_chart', 'chart title updates from ORG CHART OVERVIEW to ORG CHART OVERVIEW<br>status updates from Active to Active<br>image url updates from OrgChart_1483769276.pdf to OrgChart_1484029297.pdf<br>'),
('add', 'ADMIN', '2017-01-10 04:56:19', 'admin', 'organisation_group', 'id region now contain value HELLO TEST<br>org group name now contain value TEST GROUP<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-01-10 04:58:07', 'admin', 'shore_address', 'shore region now contain value HONG KONG<br>address now contain value TSIM SHA TSUI, HONG KONG<br>full address now contain value 26, NATHAN ROAD<br>'),
('add', 'ADMIN', '2017-01-10 05:03:32', 'admin', 'organisation_group', 'id region now contain value HELLO TEST<br>org group name now contain value SINGSYS PTE LTD<br>member name now contain value PANKAJ; <br>member email now contain value PANKAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-10 19:41:03', 'admin', 'shore_address', 'shore region updates from SINGAPORE to SINGAPORE<br>address updates from SINGSYS SERVICES PTE LTD to HarbourFront Tower Two Harbourfront Place Singapore<br>full address updates from 1 NORTH BRIDGE ROAD #17-10 HIGH STREET CENTRE, SINGAPORE (179094) to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-10 19:41:08', 'admin', 'shore_address', 'shore region updates from SINGAPORE to SINGAPORE<br>address updates from HarbourFront Tower Two Harbourfront Place Singapore to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-10 19:41:40', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from LUCKNOW, UTTAR PRADESH, INDIA to LUCKNOW, UTTAR PRADESH, INDIASING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)<br>full address updates from SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA) to SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-11 04:52:46', 'admin', 'meo_users', 'user id now contain value 7410<br>user full name now contain value BHARATRAJ1<br>user email now contain value BHARATRAJ+11@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TESING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-12 21:31:55', 'admin', 'meo_users', 'user id now contain value 1<br>user full name now contain value REKHA NANDWANI<br>user email now contain value REKHA.NANDWANI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value KNOWLEDGE ANALYST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-12 21:34:32', 'admin', 'meo_users', 'user id now contain value 1232144543<br>user full name now contain value JOVY CHAY <br>user email now contain value JOVY.CHAY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - KNOWLEDGE MANAGEMENT <br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-12 21:41:25', 'admin', 'main_vessel_type', 'type title updates from VESSEL TYPE 1 to DP/ SUBSEA FLEET<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-12 21:41:34', 'admin', 'main_vessel_type', 'type title updates from VESSEL TYPE 2 to OFFSHORE SUPPORT VESSELS<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-12 21:41:42', 'admin', 'main_vessel_type', 'type title updates from VESSEL TYPE 3 to CREWBOATS<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-12 21:41:52', 'admin', 'main_vessel_type', 'type title  now contain value NEAR SHORE VESSELS<br>'),
('add', 'ADMIN', '2017-01-12 21:42:00', 'admin', 'main_vessel_type', 'type title  now contain value BARGES<br>'),
('update', 'ADMIN', '2017-01-12 21:43:43', 'admin', 'vessel_type', 'id main vessel type updates from CREWBOATS to CREWBOATS<br>vessel type updates from CHILD VESSEL TYPE 2 to CREW / UTILITY VESSEL<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-12 21:44:02', 'admin', 'vessel_type', 'id main vessel type updates from DP/ SUBSEA FLEET to DP/ SUBSEA FLEET<br>vessel type updates from CHILD VESSEL TYPE 1 to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-12 21:45:10', 'admin', 'vessel_type', 'id main vessel type  now contain value BARGES<br>vessel type  now contain value ACCOMMODATION BARGE<br>'),
('add', 'ADMIN', '2017-01-12 21:45:29', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value ACCOMMODATION WORKBOAT<br>'),
('update', 'ADMIN', '2017-01-12 21:46:00', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from CHILD VESSEL TYPE 3 to AHT / AHTS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-12 21:48:55', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from ACCOMMODATION WORKBOAT to ACCOMMODATION WORKBOAT<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-12 21:51:05', 'admin', 'vessel_type', 'id main vessel type  now contain value BARGES<br>vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-12 21:51:50', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value COASTAL SURVEY VESSELS<br>'),
('update', 'ADMIN', '2017-01-12 21:52:27', 'admin', 'vessel_type', 'id main vessel type updates from DP/ SUBSEA FLEET to DP/ SUBSEA FLEET<br>vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 AHTS<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-01-12 21:52:39', 'admin', 'vessel_type', 'DP2 AHTS deleted'),
('add', 'ADMIN', '2017-01-12 21:52:57', 'admin', 'vessel_type', 'id main vessel type  now contain value DP/ SUBSEA FLEET<br>vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-12 21:53:17', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-12 21:53:26', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-12 21:53:39', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value MULTICAT / TUGS<br>'),
('add', 'ADMIN', '2017-01-12 21:53:52', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value SEISMIC VESSELS<br>'),
('add', 'ADMIN', '2017-01-12 21:54:10', 'admin', 'vessel_type', 'id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-12 21:56:53', 'admin', 'vessel_name', 'vesselID  now contain value UA<br>vessel name  now contain value UNIWISE ADVANTAGE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('delete', 'ADMIN', '2017-01-12 21:57:00', 'admin', 'vessel_name', 'TEST VESSEL deleted'),
('delete', 'ADMIN', '2017-01-12 21:57:30', 'admin', 'vessel_name', 'VESSEL3 deleted'),
('delete', 'ADMIN', '2017-01-12 21:57:39', 'admin', 'vessel_name', 'VESSEL2 deleted'),
('delete', 'ADMIN', '2017-01-12 21:57:46', 'admin', 'vessel_name', 'VESSEL1 deleted'),
('add', 'ADMIN', '2017-01-12 21:58:19', 'admin', 'vessel_name', 'vesselID  now contain value MS2<br>vessel name  now contain value SOVEREIGN 2<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 21:58:36', 'admin', 'vessel_name', 'vesselID  now contain value MS1<br>vessel name  now contain value SOVERIEGN 1<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 21:59:03', 'admin', 'vessel_name', 'vesselID  now contain value M1<br>vessel name  now contain value MEO MONARCH 1<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 21:59:24', 'admin', 'vessel_name', 'vesselID  now contain value M2<br>vessel name  now contain value MEO MONARCH 2<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-12 22:01:07', 'admin', 'vessel_name', 'vesselID  now contain value ET61<br>vessel name  now contain value UNIWISE ADVENTURE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('update', 'ADMIN', '2017-01-12 22:01:31', 'admin', 'vessel_name', 'vesselID updates from M2 to ET33<br>vessel name updates from MEO MONARCH 2 to MEO MONARCH 2<br>id vessel type updates from DP2 AHTS to DP2 AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-12 22:01:53', 'admin', 'vessel_name', 'vesselID updates from M1 to M011<br>vessel name updates from MEO MONARCH 1 to MEO MONARCH 1<br>id vessel type updates from DP2 AHTS to DP2 AHTS<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 22:02:38', 'admin', 'vessel_name', 'vesselID  now contain value US<br>vessel name  now contain value UNIWISE SUPPORTER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-12 22:02:57', 'admin', 'vessel_name', 'vesselID  now contain value RG<br>vessel name  now contain value RANGER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-12 22:03:13', 'admin', 'vessel_name', 'vesselID  now contain value RES<br>vessel name  now contain value RESOLUTION<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 22:03:29', 'admin', 'vessel_name', 'vesselID  now contain value ENT<br>vessel name  now contain value ENTERPRISE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 22:03:50', 'admin', 'vessel_name', 'vesselID  now contain value END<br>vessel name  now contain value ENDURANCE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 22:04:13', 'admin', 'vessel_name', 'vesselID  now contain value ENDE<br>vessel name  now contain value ENDEAVOUR<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-12 22:04:35', 'admin', 'vessel_name', 'vesselID  now contain value MN<br>vessel name  now contain value MERMAID NUSANTARA<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('update', 'ADMIN', '2017-01-12 22:06:54', 'admin', 'groupbu', 'group bu name updates from GROUP BU 3 to ASEAN- INDONESIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-12 22:07:10', 'admin', 'groupbu', 'group bu name updates from GROUP BU 2 to ASEAN- MALAYSIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-12 22:07:20', 'admin', 'groupbu', 'group bu name updates from HELLO GROUP to ASEAN- BRUNEI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 22:07:39', 'admin', 'groupbu', 'group bu name now contain value ROW- AUSTRALIA<br>group bu order now contain value 4<br>'),
('add', 'ADMIN', '2017-01-12 22:07:51', 'admin', 'groupbu', 'group bu name now contain value ASEAN- THAILAND, SAT<br>group bu order now contain value 5<br>'),
('add', 'ADMIN', '2017-01-12 22:08:03', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST- DUBAI<br>group bu order now contain value 6<br>'),
('add', 'ADMIN', '2017-01-12 22:08:17', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST- QATAR<br>group bu order now contain value 7<br>'),
('add', 'ADMIN', '2017-01-12 22:08:24', 'admin', 'groupbu', 'group bu name now contain value EOS- ROW<br>group bu order now contain value 8<br>'),
('add', 'ADMIN', '2017-01-12 22:08:42', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST- SAUDI ARABIA<br>group bu order now contain value 9<br>'),
('add', 'ADMIN', '2017-01-12 22:08:55', 'admin', 'groupbu', 'group bu name now contain value ASEAN- THAILAND, SKL<br>group bu order now contain value 10<br>'),
('add', 'ADMIN', '2017-01-12 22:09:08', 'admin', 'groupbu', 'group bu name now contain value SVS<br>group bu order now contain value 11<br>'),
('add', 'ADMIN', '2017-01-12 22:09:21', 'admin', 'groupbu', 'group bu name now contain value ROVING- BATAM<br>group bu order now contain value 12<br>'),
('update', 'ADMIN', '2017-01-12 22:10:47', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>region title updates from GROUP BU 3 REGION 1 to INDONESIA<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-12 22:11:01', 'admin', 'region', 'GROUP BU 3 REGION 2 deleted'),
('delete', 'ADMIN', '2017-01-12 22:11:11', 'admin', 'region', 'GROUP BU 2 REGION 2 deleted'),
('update', 'ADMIN', '2017-01-12 22:11:23', 'admin', 'region', 'id group bu updates from ASEAN- MALAYSIA to ASEAN- MALAYSIA<br>region title updates from GROUP BU 2 REGION 1 to MALAYSIA<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-12 22:11:48', 'admin', 'region', 'HELLO TEST deleted'),
('delete', 'ADMIN', '2017-01-12 22:11:54', 'admin', 'region', 'GROUP BU 1 REGION 2 deleted'),
('update', 'ADMIN', '2017-01-12 22:12:31', 'admin', 'groupbu', 'group bu name updates from ASEAN- INDONESIA to ASEAN<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-12 22:12:39', 'admin', 'groupbu', 'ASEAN- MALAYSIA deleted'),
('delete', 'ADMIN', '2017-01-12 22:12:40', 'admin', 'groupbu', ' deleted'),
('delete', 'ADMIN', '2017-01-12 22:12:41', 'admin', 'groupbu', ' deleted'),
('delete', 'ADMIN', '2017-01-12 22:12:46', 'admin', 'groupbu', 'ASEAN- BRUNEI deleted'),
('delete', 'ADMIN', '2017-01-12 22:12:51', 'admin', 'groupbu', 'ASEAN- THAILAND, SAT deleted'),
('delete', 'ADMIN', '2017-01-12 22:12:57', 'admin', 'groupbu', 'ASEAN- THAILAND, SKL deleted'),
('add', 'ADMIN', '2017-01-12 22:13:15', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value THAILAND, SKL<br>group region order now contain value 2<br>'),
('add', 'ADMIN', '2017-01-12 22:13:25', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value SINGAPORE <br>group region order now contain value 3<br>'),
('add', 'ADMIN', '2017-01-12 22:13:35', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value MALAYSIA<br>group region order now contain value 4<br>'),
('add', 'ADMIN', '2017-01-12 22:13:46', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value BRUNEI<br>group region order now contain value 5<br>'),
('add', 'ADMIN', '2017-01-12 22:13:55', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value THAILAND, SAT<br>group region order now contain value 6<br>'),
('update', 'ADMIN', '2017-01-12 22:14:34', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from DEPARTMENT 3 to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from MANISH;  to REKHA NANDWANI; JOVY CHAY ; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-12 22:22:09', 'admin', 'vessel_region', 'id region  now contain value SINGAPORE <br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-12 22:25:29', 'admin', 'organisation_group', 'id region updates from INDONESIA to SINGAPORE <br>org group name updates from GRP 2 REG 1 ORG 3 to MICLYN EXPRESS OFFSHORE<br>member name updates from ORG3 MEMBER1; ORG3 MEMBER2;  to ORG3 MEMBER1; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-13 00:02:26', 'admin', 'vessel_type', 'id main vessel type  now contain value DP/ SUBSEA FLEET<br>vessel type  now contain value TEST<br>'),
('update', 'ADMIN', '2017-01-13 00:03:30', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-13 00:03:43', 'admin', 'vessel_type', 'id main vessel type updates from OFFSHORE SUPPORT VESSELS to OFFSHORE SUPPORT VESSELS<br>vessel type updates from AHT / AHTS to ACCOMMODATION WORKBOAT<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-13 00:27:00', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY (IT)<br>members now contain value JOVY CHAY ; <br>'),
('update', 'ADMIN', '2017-01-13 08:11:49', 'admin', 'vessel_type', 'id main vessel type updates from DP/ SUBSEA FLEET to DP/ SUBSEA FLEET<br>vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-01-15 21:33:47', 'admin', 'meo_users', 'MANISH deleted'),
('add', 'ADMIN', '2017-01-15 21:36:06', 'admin', 'meo_users', 'user id now contain value 123123<br>user full name now contain value LIM HUI SHAN<br>user email now contain value HUISHAN.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value KNOWLEDGE CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-15 21:38:11', 'admin', 'meo_users', 'user id now contain value AWEREWQ<br>user full name now contain value TEST S<br>user email now contain value ASDJFLSDK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASDFSDAFSADF<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-15 21:42:09', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from JOVY CHAY ; REKHA NANDWANI;  to REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-15 22:30:05', 'admin', 'shore_address', 'shore region updates from INDIA to SHARJAH, UAE<br>address updates from LUCKNOW, UTTAR PRADESH, INDIASING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA)SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA) to Hamriyah Free Zone Ground 1 - Al Ettehad Street - United Arab Emirates<br>full address updates from SING SYS SOFTWARE SERVICES PRIVATE LIMITED UNIT 4 TO 8, 1ST FLOOR,  OMAXE AVENUE, LUCKNOW-226025 (INDIA) to MICLYN OFFSHORE (MIDDLE EAST & AFRICA) FZE WAREHOUSE NO. IJ-08/1, HAMRIYAH FREE ZONE, PO BOX NO 42112, SHARJAH, UAE<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 22:30:43', 'admin', 'shore_address', 'shore region updates from HONG KONG to AUSTRALIA<br>address updates from TSIM SHA TSUI, HONG KONG to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br>full address updates from 26, NATHAN ROAD to MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 22:35:34', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from MICLYN EXPRESS OFFSHORE to GROUP OPERATIONS<br>member name updates from ORG3 MEMBER1; ORG3 MEMBER2;  to Group G; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-15 22:35:40', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP OPERATIONS<br>member name updates from Group G; ORG3 MEMBER2;  to GROUP GF; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-15 23:04:56', 'admin', 'organisation_group', 'id region now contain value THAILAND, SAT<br>org group name now contain value ORG GROUP NEW <br>member name now contain value MANISH; <br>member email now contain value MANISHMAHANT@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-01-15 23:05:39', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value ORG GROUP NEW  2<br>member name now contain value BHARAT; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-15 23:24:42', 'admin', 'shore_address', 'shore region updates from SINGAPORE to INDIA<br>address updates from HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 23:24:58', 'admin', 'shore_address', 'shore region updates from AUSTRALIA to INDIA<br>address updates from FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br>full address updates from MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959 to MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 23:25:36', 'admin', 'main_vessel_type', 'type title updates from DP/ SUBSEA FLEET to OFFSHORE SUPPORT VESSELS<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-15 23:25:55', 'admin', 'main_vessel_type', 'type title updates from OFFSHORE SUPPORT VESSELS to NEAR SHORE VESSELS<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-01-15 23:29:00', 'admin', 'meo_users', 'user id now contain value 12345<br>user full name now contain value QWERT<br>user email now contain value ADMIN@MEO.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASDFG<br>expiry date now contain value 2017-01-24<br>'),
('delete', 'ADMIN', '2017-01-16 00:14:37', 'admin', 'meo_users', 'BHARATRAJ1 deleted'),
('delete', 'ADMIN', '2017-01-16 00:14:42', 'admin', 'meo_users', 'BHARATRAJ MEO USER deleted'),
('delete', 'ADMIN', '2017-01-16 00:14:46', 'admin', 'meo_users', 'RACHIT deleted'),
('delete', 'ADMIN', '2017-01-16 00:14:50', 'admin', 'meo_users', 'TEST S deleted'),
('delete', 'ADMIN', '2017-01-16 00:14:55', 'admin', 'meo_users', 'QWERT deleted'),
('add', 'ADMIN', '2017-01-16 00:17:44', 'admin', 'meo_users', 'user id now contain value D00001<br>user full name now contain value BRADLEY MICHAEL MORPHEW<br>user email now contain value BRAD.MORPHEW@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT DESIGNATE IN THAILAND<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:19:01', 'admin', 'department', 'id region now contain value THAILAND, SKL<br>department name now contain value COMMERCIAL<br>members now contain value BRADLEY MICHAEL MORPHEW; <br>'),
('add', 'ADMIN', '2017-01-16 00:28:25', 'admin', 'meo_users', 'user id now contain value E0003<br>user full name now contain value ONG CHEE WEE<br>user email now contain value CHEEWEE.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROJECT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:32:25', 'admin', 'meo_users', 'user id now contain value E0007<br>user full name now contain value SABRIDO RHYAN DELOS REYES<br>user email now contain value RHYAN.SABRIDO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASST. MANAGER - PROJECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:41:55', 'admin', 'meo_users', 'user id now contain value E0008<br>user full name now contain value COLIN DAVID TREWHELLA<br>user email now contain value COLIN.TREWHELLA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GM - OPERATIONS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:43:27', 'admin', 'meo_users', 'user id now contain value E0001<br>user full name now contain value MARK PETER VAN DER MOLEN<br>user email now contain value MARK.VANDERMOLEN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GM - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:44:30', 'admin', 'meo_users', 'user id now contain value E0010<br>user full name now contain value NG WEI LING CANDICE<br>user email now contain value CANDICE.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GENERAL MANAGER - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:46:47', 'admin', 'meo_users', 'user id now contain value E0013<br>user full name now contain value IGLESIAS CARRICHES CLAUDIA<br>user email now contain value CLAUDIA.IGLESIAS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:50:32', 'admin', 'meo_users', 'user id now contain value E0016<br>user full name now contain value MARICAR ZOLETA MANLAPAZ<br>user email now contain value MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DOCUMENT CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:51:51', 'admin', 'meo_users', 'user id now contain value E0022<br>user full name now contain value SUNIL SINGH<br>user email now contain value SUNIL.SINGH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MARINE OPERATIONS MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:53:00', 'admin', 'meo_users', 'user id now contain value E0026<br>user full name now contain value NATALIE WEICHMANN<br>user email now contain value NATALIE.WEICHMANN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:57:16', 'admin', 'meo_users', 'user id now contain value E0031<br>user full name now contain value GOH TING TING<br>user email now contain value TINGTING.GOH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value JUNIOR SECRETARY<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:58:35', 'admin', 'meo_users', 'user id now contain value E0032<br>user full name now contain value CAHYA AWAL<br>user email now contain value CAHYA.AWAL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR COST CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 00:59:53', 'admin', 'meo_users', 'user id now contain value E0033<br>user full name now contain value EUGENE TEO YU-CHNG<br>user email now contain value EUGENE.TEO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:01:10', 'admin', 'meo_users', 'user id now contain value S00001<br>user full name now contain value TAN HEE HUA<br>user email now contain value HEE-HUA.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL MANAGER (CREWBOAT)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:03:28', 'admin', 'meo_users', 'user id now contain value S00004<br>user full name now contain value POH CHING HOON<br>user email now contain value CHING-HOON.POH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:05:27', 'admin', 'meo_users', 'user id now contain value S00036<br>user full name now contain value JOYCELYN WONG PUI YEE<br>user email now contain value JOYCELYN.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:07:16', 'admin', 'meo_users', 'user id now contain value S00058<br>user full name now contain value MOHAMED ARIS BIN MUSA<br>user email now contain value MOHD.ARIS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:10:50', 'admin', 'meo_users', 'user id now contain value S00110<br>user full name now contain value JANE ALLAN<br>user email now contain value JANE.ALLAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GENERAL COUNSEL – GROUP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:14:55', 'admin', 'meo_users', 'user id now contain value S00112<br>user full name now contain value ADAM RALEIGH CLAYTON<br>user email now contain value ADAM.CLAYTON@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT – SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:18:37', 'admin', 'meo_users', 'user id now contain value S00134<br>user full name now contain value HONG SHUMIN<br>user email now contain value SHUMIN.HONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value REGIONAL FINANCE BUSINESS PARTNERSHIP MANAGER, THAI-ASEAN AND SV<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:20:00', 'admin', 'meo_users', 'user id now contain value S00150<br>user full name now contain value NORAZLINA BINTE SANIN<br>user email now contain value NORAZLINA.SANIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 01:21:20', 'admin', 'meo_users', 'user id now contain value S00157<br>user full name now contain value LINA BINTE SOHO<br>user email now contain value LINA.SOHO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - OPERATIONS<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-16 01:41:42', 'admin', 'vessel_type', 'CREW / UTILITY VESSEL deleted'),
('add', 'ADMIN', '2017-01-16 01:43:49', 'admin', 'main_vessel_type', 'type title  now contain value DP/ SUBSEA FLEET<br>'),
('update', 'ADMIN', '2017-01-16 01:44:08', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to DP/ SUBSEA FLEET<br>vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-16 01:44:16', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to DP/ SUBSEA FLEET<br>vessel type updates from DP2 AHTS to DP2 AHTS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-16 01:44:23', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to DP/ SUBSEA FLEET<br>vessel type updates from DP2 PSV to DP2 PSV<br>status updates from active to Active<br>'),
('add', 'ADMIN', '2017-01-16 01:45:14', 'admin', 'vessel_name', 'vesselID  now contain value SO017<br>vessel name  now contain value AOS 8<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:45:58', 'admin', 'vessel_name', 'vesselID  now contain value SP101<br>vessel name  now contain value AOS 1<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:46:21', 'admin', 'vessel_name', 'vesselID  now contain value SP105<br>vessel name  now contain value DNV EXPRESS 18<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:46:49', 'admin', 'vessel_name', 'vesselID  now contain value SP106<br>vessel name  now contain value EXPRESS 3<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:48:43', 'admin', 'vessel_name', 'vesselID  now contain value SP107<br>vessel name  now contain value EXPRESS 4<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:49:07', 'admin', 'vessel_name', 'vesselID  now contain value SP112<br>vessel name  now contain value EXPRESS 19<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:49:56', 'admin', 'vessel_name', 'vesselID  now contain value SP117<br>vessel name  now contain value EXPRESS 24<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:50:25', 'admin', 'vessel_name', 'vesselID  now contain value SP118<br>vessel name  now contain value EXPRESS 25<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:51:00', 'admin', 'vessel_name', 'vesselID  now contain value SP119<br>vessel name  now contain value EXPRESS 26<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:51:25', 'admin', 'vessel_name', 'vesselID  now contain value SP120<br>vessel name  now contain value UNI EXPRESS 21<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:51:46', 'admin', 'vessel_name', 'vesselID  now contain value SP123<br>vessel name  now contain value EXPRESS 31<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:52:20', 'admin', 'vessel_name', 'vesselID  now contain value SP124<br>vessel name  now contain value EXPRESS 32<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:52:44', 'admin', 'vessel_name', 'vesselID  now contain value SP127<br>vessel name  now contain value EXPRESS 35<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 01:53:18', 'admin', 'vessel_name', 'vesselID  now contain value SP128<br>vessel name  now contain value EXPRESS 36<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:03:05', 'admin', 'vessel_name', 'vesselID  now contain value SP131<br>vessel name  now contain value EXPRESS 52<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:03:41', 'admin', 'vessel_name', 'vesselID  now contain value SP132<br>vessel name  now contain value EXPRESS 53<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:04:27', 'admin', 'vessel_name', 'vesselID  now contain value SP133<br>vessel name  now contain value EXPRESS 54<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:11:05', 'admin', 'vessel_name', 'vesselID  now contain value SP134<br>vessel name  now contain value EXPRESS 55<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:12:27', 'admin', 'vessel_name', 'vesselID  now contain value SP135<br>vessel name  now contain value EXPRESS 56<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:12:52', 'admin', 'vessel_name', 'vesselID  now contain value SP136<br>vessel name  now contain value EXPRESS 57<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:16:41', 'admin', 'vessel_name', 'vesselID  now contain value SP137<br>vessel name  now contain value EXPRESS 58<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:17:01', 'admin', 'vessel_name', 'vesselID  now contain value SP138<br>vessel name  now contain value EXPRESS 59<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:17:21', 'admin', 'vessel_name', 'vesselID  now contain value SP139<br>vessel name  now contain value EXPRESS 60<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:17:41', 'admin', 'vessel_name', 'vesselID  now contain value SP140<br>vessel name  now contain value EXPRESS 61<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:18:04', 'admin', 'vessel_name', 'vesselID  now contain value SP141<br>vessel name  now contain value EXPRESS 62<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:18:27', 'admin', 'vessel_name', 'vesselID  now contain value SP142<br>vessel name  now contain value EXPRESS 63<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:18:46', 'admin', 'vessel_name', 'vesselID  now contain value SP143<br>vessel name  now contain value AOS 2<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:19:11', 'admin', 'vessel_name', 'vesselID  now contain value SP145<br>vessel name  now contain value UNI EXPRESS 9<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:19:37', 'admin', 'vessel_name', 'vesselID  now contain value SP146<br>vessel name  now contain value UNI EXPRESS 10<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:19:57', 'admin', 'vessel_name', 'vesselID  now contain value SP147<br>vessel name  now contain value UNI EXPRESS 11<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:20:21', 'admin', 'vessel_name', 'vesselID  now contain value SP148<br>vessel name  now contain value UNI EXPRESS 12<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:22:22', 'admin', 'vessel_name', 'vesselID  now contain value SP149<br>vessel name  now contain value UNI EXPRESS 13<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:22:52', 'admin', 'vessel_name', 'vesselID  now contain value SP150<br>vessel name  now contain value UNI EXPRESS 14<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:23:14', 'admin', 'vessel_name', 'vesselID  now contain value SP151<br>vessel name  now contain value UNI EXPRESS 15<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:23:32', 'admin', 'vessel_name', 'vesselID  now contain value SP152<br>vessel name  now contain value UNI EXPRESS 16<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:23:56', 'admin', 'vessel_name', 'vesselID  now contain value SP153<br>vessel name  now contain value UNI EXPRESS 17<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:24:36', 'admin', 'vessel_name', 'vesselID  now contain value SP154<br>vessel name  now contain value UNI EXPRESS 19<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:24:59', 'admin', 'vessel_name', 'vesselID  now contain value SP155<br>vessel name  now contain value UNI EXPRESS 20<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:25:18', 'admin', 'vessel_name', 'vesselID  now contain value SP160<br>vessel name  now contain value SAMSON SUPPLIER<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:25:46', 'admin', 'vessel_name', 'vesselID  now contain value SP161<br>vessel name  now contain value SAMSON SUPPORTER<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:26:17', 'admin', 'vessel_name', 'vesselID  now contain value SP162<br>vessel name  now contain value EXPRESS 64<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:26:43', 'admin', 'vessel_name', 'vesselID  now contain value SP163<br>vessel name  now contain value EXPRESS 65<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:27:07', 'admin', 'vessel_name', 'vesselID  now contain value SP164<br>vessel name  now contain value EXPRESS 66<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:27:27', 'admin', 'vessel_name', 'vesselID  now contain value SP165<br>vessel name  now contain value EXPRESS 67<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:27:46', 'admin', 'vessel_name', 'vesselID  now contain value SP166<br>vessel name  now contain value UNI EXPRESS 18<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:28:10', 'admin', 'vessel_name', 'vesselID  now contain value SP167<br>vessel name  now contain value EXPRESS 2<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:29:49', 'admin', 'vessel_name', 'vesselID  now contain value SP168<br>vessel name  now contain value EXPRESS 11<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:30:13', 'admin', 'vessel_name', 'vesselID  now contain value SP169<br>vessel name  now contain value EXPRESS 12<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:32:19', 'admin', 'vessel_name', 'vesselID  now contain value SP170<br>vessel name  now contain value EXPRESS 68<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:32:52', 'admin', 'vessel_name', 'vesselID  now contain value SP171<br>vessel name  now contain value EXPRESS 69<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('update', 'ADMIN', '2017-01-16 02:36:02', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to NEAR SHORE VESSELS<br>vessel type updates from MULTICAT / TUGS to MULTICAT / TUGS<br>status updates from active to Active<br>'),
('update', 'ADMIN', '2017-01-16 02:38:18', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to NEAR SHORE VESSELS<br>vessel type updates from MULTICAT / TUGS to MULTICAT / TUGS<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-01-16 02:38:23', 'admin', 'vessel_type', 'TEST deleted'),
('add', 'ADMIN', '2017-01-16 02:39:45', 'admin', 'vessel_name', 'vesselID  now contain value SP176<br>vessel name  now contain value SAMSON 101<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT / TUGS<br>'),
('delete', 'ADMIN', '2017-01-16 02:40:01', 'admin', 'main_vessel_type', 'NEAR SHORE VESSELS deleted'),
('add', 'ADMIN', '2017-01-16 02:41:22', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 02:42:22', 'admin', 'vessel_name', 'vesselID  now contain value SP177<br>vessel name  now contain value EXPRESS 71<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:42:46', 'admin', 'vessel_name', 'vesselID  now contain value SP176<br>vessel name  now contain value EXPRESS 70<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:43:38', 'admin', 'vessel_name', 'vesselID  now contain value SP180<br>vessel name  now contain value EXPRESS 72<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:43:54', 'admin', 'vessel_name', 'vesselID  now contain value SP181<br>vessel name  now contain value EXPRESS 73<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:44:08', 'admin', 'vessel_name', 'vesselID  now contain value SP184<br>vessel name  now contain value UNI EXPRESS 23<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:44:26', 'admin', 'vessel_name', 'vesselID  now contain value SP185<br>vessel name  now contain value UNI EXPRESS 24<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:44:44', 'admin', 'vessel_name', 'vesselID  now contain value SP186<br>vessel name  now contain value EXPRESS 75<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:45:53', 'admin', 'vessel_name', 'vesselID  now contain value SP187<br>vessel name  now contain value EXPRESS 76<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:46:27', 'admin', 'vessel_name', 'vesselID  now contain value SP188<br>vessel name  now contain value EXPRESS 77<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:46:58', 'admin', 'vessel_name', 'vesselID  now contain value SP189<br>vessel name  now contain value EXPRESS 78<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:47:16', 'admin', 'vessel_name', 'vesselID  now contain value SP190<br>vessel name  now contain value EXPRESS 79<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:47:49', 'admin', 'vessel_name', 'vesselID  now contain value SP191<br>vessel name  now contain value EXPRESS 80<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:48:13', 'admin', 'vessel_name', 'vesselID  now contain value SP192<br>vessel name  now contain value EXPRESS 81<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:48:30', 'admin', 'vessel_name', 'vesselID  now contain value SP193<br>vessel name  now contain value EXPRESS 87<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:49:07', 'admin', 'vessel_name', 'vesselID  now contain value SP196<br>vessel name  now contain value EXPRESS 82<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:49:28', 'admin', 'vessel_name', 'vesselID  now contain value SP197<br>vessel name  now contain value EXPRESS 83<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:50:25', 'admin', 'vessel_name', 'vesselID  now contain value SP199<br>vessel name  now contain value EXPRESS 85<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:52:19', 'admin', 'vessel_name', 'vesselID  now contain value SP204<br>vessel name  now contain value MICLYN ENDURANCE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 02:52:57', 'admin', 'vessel_name', 'vesselID  now contain value SP205<br>vessel name  now contain value MICLYN ENERGY<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-16 03:02:43', 'admin', 'vessel_name', 'vesselID  now contain value SP206<br>vessel name  now contain value MICLYN ENTERPRISE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:03:06', 'admin', 'vessel_name', 'vesselID  now contain value SP208<br>vessel name  now contain value MICLYN GRACE<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-16 03:05:52', 'admin', 'vessel_name', 'vesselID  now contain value SP209<br>vessel name  now contain value MICLYN GRAND<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MPSV<br>'),
('add', 'ADMIN', '2017-01-16 03:06:19', 'admin', 'vessel_name', 'vesselID  now contain value SP212<br>vessel name  now contain value MICLYN ONYX<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:10:23', 'admin', 'vessel_name', 'vesselID  now contain value SP213<br>vessel name  now contain value MICLYN OPAL<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:10:50', 'admin', 'vessel_name', 'vesselID  now contain value SP214<br>vessel name  now contain value MICLYN ORION<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:11:12', 'admin', 'vessel_name', 'vesselID  now contain value SP201<br>vessel name  now contain value MICLYN POWER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:11:42', 'admin', 'vessel_name', 'vesselID  now contain value SP218<br>vessel name  now contain value MICLYN VENTURE<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:12:04', 'admin', 'vessel_name', 'vesselID  now contain value SP219<br>vessel name  now contain value MICLYN VICTORY<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:12:38', 'admin', 'vessel_name', 'vesselID  now contain value SP221<br>vessel name  now contain value UNIWISE ADVANCER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:14:25', 'admin', 'vessel_name', 'vesselID  now contain value SP222<br>vessel name  now contain value MAGELLAN 1<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:14:43', 'admin', 'vessel_name', 'vesselID  now contain value SP223<br>vessel name  now contain value MEO VALIANT<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 03:15:11', 'admin', 'vessel_name', 'vesselID  now contain value SP224<br>vessel name  now contain value SEISMIC SUPPORTER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:16:35', 'admin', 'vessel_name', 'vesselID  now contain value SP225<br>vessel name  now contain value MAGELLAN 2<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:17:10', 'admin', 'vessel_name', 'vesselID  now contain value SP226<br>vessel name  now contain value MEO VIGILANT<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 03:17:46', 'admin', 'vessel_name', 'vesselID  now contain value SP227<br>vessel name  now contain value MICLYN CONSTRUCTOR I<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value ACCOMMODATION BARGE<br>'),
('add', 'ADMIN', '2017-01-16 03:19:35', 'admin', 'vessel_name', 'vesselID  now contain value SP228<br>vessel name  now contain value MEO GALAXY<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value ACCOMMODATION WORKBOAT<br>'),
('add', 'ADMIN', '2017-01-16 03:20:11', 'admin', 'vessel_name', 'vesselID  now contain value SP229<br>vessel name  now contain value MEO SOVEREIGN I<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:20:35', 'admin', 'vessel_name', 'vesselID  now contain value SP230	<br>vessel name  now contain value MEO SOVEREIGN II<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-16 03:21:53', 'admin', 'vessel_name', 'vesselID  now contain value SP232<br>vessel name  now contain value UNI EXPRESS 22<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:26:05', 'admin', 'vessel_name', 'vesselID  now contain value SP233<br>vessel name  now contain value MEO RANGER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('add', 'ADMIN', '2017-01-16 03:27:35', 'admin', 'vessel_name', 'vesselID  now contain value SP235<br>vessel name  now contain value TARKA<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 03:28:06', 'admin', 'vessel_name', 'vesselID  now contain value SP236<br>vessel name  now contain value AOS PATTAYA<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 03:28:46', 'admin', 'vessel_name', 'vesselID  now contain value SP237<br>vessel name  now contain value AOS PHUKET<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:31:05', 'admin', 'vessel_name', 'vesselID  now contain value SP238<br>vessel name  now contain value AOS RATCHABURI<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:31:26', 'admin', 'vessel_name', 'vesselID  now contain value SP239<br>vessel name  now contain value UNIWISE RAYONG<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 03:31:46', 'admin', 'vessel_name', 'vesselID  now contain value SP240<br>vessel name  now contain value UNIWISE SONGKHLA<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value MOTTS<br>'),
('add', 'ADMIN', '2017-01-16 03:32:08', 'admin', 'vessel_name', 'vesselID  now contain value SP241<br>vessel name  now contain value CERMAT<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:32:30', 'admin', 'vessel_name', 'vesselID  now contain value SP242<br>vessel name  now contain value CERDIK<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value UTILITY TUG / MULTI-PURPOSE<br>'),
('add', 'ADMIN', '2017-01-16 03:34:08', 'admin', 'vessel_name', 'vesselID  now contain value SP245<br>vessel name  now contain value MEO EMPEROR<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:34:37', 'admin', 'vessel_name', 'vesselID  now contain value SP246<br>vessel name  now contain value MEO EMPRESS<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value AHT / AHTS<br>'),
('add', 'ADMIN', '2017-01-16 03:34:53', 'admin', 'vessel_name', 'vesselID  now contain value SP247<br>vessel name  now contain value EXPRESS 86<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:35:27', 'admin', 'vessel_name', 'vesselID  now contain value SP302<br>vessel name  now contain value MICLYN 181<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:40:34', 'admin', 'vessel_name', 'vesselID  now contain value SP304<br>vessel name  now contain value MICLYN 253<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:41:02', 'admin', 'vessel_name', 'vesselID  now contain value SP307<br>vessel name  now contain value MICLYN 257<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:42:05', 'admin', 'vessel_name', 'vesselID  now contain value SP308<br>vessel name  now contain value MICLYN 258<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:42:35', 'admin', 'vessel_name', 'vesselID  now contain value SP309<br>vessel name  now contain value MICLYN 259<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:43:01', 'admin', 'vessel_name', 'vesselID  now contain value SP310<br>vessel name  now contain value MICLYN 283<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:43:58', 'admin', 'vessel_name', 'vesselID  now contain value SP311<br>vessel name  now contain value MICLYN 285<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:44:36', 'admin', 'vessel_name', 'vesselID  now contain value SP312<br>vessel name  now contain value MICLYN 286<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:45:10', 'admin', 'vessel_name', 'vesselID  now contain value SP313<br>vessel name  now contain value MICLYN 287<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:45:40', 'admin', 'vessel_name', 'vesselID  now contain value SP314<br>vessel name  now contain value MICLYN 288<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:46:06', 'admin', 'vessel_name', 'vesselID  now contain value SP315<br>vessel name  now contain value MICLYN 301<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:46:37', 'admin', 'vessel_name', 'vesselID  now contain value SP316<br>vessel name  now contain value MICLYN 303<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:46:55', 'admin', 'vessel_name', 'vesselID  now contain value SP317<br>vessel name  now contain value MICLYN 305<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:47:12', 'admin', 'vessel_name', 'vesselID  now contain value SP318<br>vessel name  now contain value MICLYN 2510<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:47:30', 'admin', 'vessel_name', 'vesselID  now contain value SP319<br>vessel name  now contain value MICLYN 3316<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:47:50', 'admin', 'vessel_name', 'vesselID  now contain value SP320<br>vessel name  now contain value MICLYN 3317<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:48:14', 'admin', 'vessel_name', 'vesselID  now contain value SP321<br>vessel name  now contain value MICLYN 3318<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:48:34', 'admin', 'vessel_name', 'vesselID  now contain value SP325<br>vessel name  now contain value M 3319<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:48:53', 'admin', 'vessel_name', 'vesselID  now contain value SP326<br>vessel name  now contain value M 3320<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:49:15', 'admin', 'vessel_name', 'vesselID  now contain value SP327<br>vessel name  now contain value MICLYN 3301<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:50:32', 'admin', 'vessel_name', 'vesselID  now contain value SP331<br>vessel name  now contain value MEO GUARDIAN<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value ACCOMMODATION WORKBOAT<br>'),
('add', 'ADMIN', '2017-01-16 03:50:55', 'admin', 'vessel_name', 'vesselID  now contain value SP333<br>vessel name  now contain value EXPRESS 88<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:51:11', 'admin', 'vessel_name', 'vesselID  now contain value SP334<br>vessel name  now contain value EXPRESS 89<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:51:36', 'admin', 'vessel_name', 'vesselID  now contain value SP335	<br>vessel name  now contain value EXPRESS 90<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:51:55', 'admin', 'vessel_name', 'vesselID  now contain value SP336<br>vessel name  now contain value EXPRESS 91<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:52:12', 'admin', 'vessel_name', 'vesselID  now contain value SP337<br>vessel name  now contain value EXPRESS 92<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:52:30', 'admin', 'vessel_name', 'vesselID  now contain value SP338<br>vessel name  now contain value UNI EXPRESS 25<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:53:21', 'admin', 'vessel_name', 'vesselID  now contain value SP340<br>vessel name  now contain value EXPRESS 93<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-01-16 03:53:53', 'admin', 'vessel_name', 'vesselID  now contain value SP341<br>vessel name  now contain value EOS 283<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:54:36', 'admin', 'vessel_name', 'vesselID  now contain value SP345<br>vessel name  now contain value EOS 4001<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:54:57', 'admin', 'vessel_name', 'vesselID  now contain value SP346<br>vessel name  now contain value EOS 4002<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:55:15', 'admin', 'vessel_name', 'vesselID  now contain value SP350<br>vessel name  now contain value EOS 281<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:55:35', 'admin', 'vessel_name', 'vesselID  now contain value SP351<br>vessel name  now contain value EOS 282<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:55:50', 'admin', 'vessel_name', 'vesselID  now contain value SP354<br>vessel name  now contain value EOS 285<br>id main vessel type  now contain value BARGES<br>id vessel type  now contain value BARGES<br>'),
('add', 'ADMIN', '2017-01-16 03:56:09', 'admin', 'vessel_name', 'vesselID  now contain value SP355<br>vessel name  now contain value VOYAGER EXPLORER<br>id main vessel type  now contain value OFFSHORE SUPPORT VESSELS<br>id vessel type  now contain value SEISMIC VESSELS<br>'),
('add', 'ADMIN', '2017-01-16 03:57:08', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value COASTAL SURVEY VESSELS<br>'),
('add', 'ADMIN', '2017-01-16 03:57:29', 'admin', 'vessel_name', 'vesselID  now contain value SP344<br>vessel name  now contain value ALERT<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value COASTAL SURVEY VESSELS<br>'),
('delete', 'ADMIN', '2017-01-16 04:07:27', 'admin', 'vessel_name', 'ENDEAVOUR deleted'),
('update', 'ADMIN', '2017-01-16 04:08:56', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 0000-00-00 to 2017-01-17<br>'),
('update', 'ADMIN', '2017-01-16 04:09:10', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 2017-01-17 to <br>'),
('update', 'ADMIN', '2017-01-16 04:09:19', 'admin', 'vessel_name', 'vesselID updates from SP201 to SP216<br>vessel name updates from MICLYN POWER to MICLYN POWER<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 04:09:32', 'admin', 'vessel_name', 'vesselID  now contain value SP201	<br>vessel name  now contain value ENDEAVOUR<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('delete', 'ADMIN', '2017-01-16 04:09:47', 'admin', 'vessel_name', 'UNIWISE SUPPORTER deleted'),
('add', 'ADMIN', '2017-01-16 04:10:43', 'admin', 'vessel_name', 'vesselID  now contain value SP231<br>vessel name  now contain value UNIWISE SUPPORTER<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 PSV<br>'),
('delete', 'ADMIN', '2017-01-16 04:10:58', 'admin', 'vessel_name', 'RESOLUTION deleted'),
('add', 'ADMIN', '2017-01-16 04:11:14', 'admin', 'vessel_name', 'vesselID  now contain value SP234<br>vessel name  now contain value RESOLUTION<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('delete', 'ADMIN', '2017-01-16 04:11:34', 'admin', 'vessel_name', 'UNIWISE ADVANTAGE deleted'),
('add', 'ADMIN', '2017-01-16 04:11:51', 'admin', 'vessel_name', 'vesselID  now contain value SP243<br>vessel name  now contain value UNIWISE ADVANTAGE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('delete', 'ADMIN', '2017-01-16 04:12:00', 'admin', 'vessel_name', 'UNIWISE ADVENTURE deleted'),
('add', 'ADMIN', '2017-01-16 04:12:22', 'admin', 'vessel_name', 'vesselID  now contain value SP244<br>vessel name  now contain value UNIWISE ADVENTURE<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('delete', 'ADMIN', '2017-01-16 04:12:48', 'admin', 'vessel_name', 'MERMAID NUSANTARA deleted'),
('add', 'ADMIN', '2017-01-16 04:13:15', 'admin', 'vessel_name', 'vesselID  now contain value SP328<br>vessel name  now contain value MERMAID NUSANTARA<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 SUBSEA SUPPORT VESSEL<br>'),
('delete', 'ADMIN', '2017-01-16 04:13:49', 'admin', 'vessel_name', 'MEO MONARCH 1 deleted'),
('delete', 'ADMIN', '2017-01-16 04:13:53', 'admin', 'vessel_name', 'MEO MONARCH 2 deleted'),
('delete', 'ADMIN', '2017-01-16 04:13:54', 'admin', 'vessel_name', ' deleted'),
('add', 'ADMIN', '2017-01-16 04:14:08', 'admin', 'vessel_name', 'vesselID  now contain value SP329<br>vessel name  now contain value MEO MONARCH 1<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-16 04:14:23', 'admin', 'vessel_name', 'vesselID  now contain value SP330<br>vessel name  now contain value MEO MONARCH 2<br>id main vessel type  now contain value DP/ SUBSEA FLEET<br>id vessel type  now contain value DP2 AHTS<br>'),
('add', 'ADMIN', '2017-01-16 04:21:40', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value JAKARTA<br>group region order now contain value 7<br>'),
('add', 'ADMIN', '2017-01-16 04:26:33', 'admin', 'vessel_name', 'vesselID  now contain value SP178<br>vessel name  now contain value SAMSON 6<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 04:26:52', 'admin', 'vessel_name', 'vesselID  now contain value SP179<br>vessel name  now contain value SAMSON 7<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-01-16 06:16:33', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value TST<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-01-16 06:19:02', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 0000-00-00 to 2017-01-17<br>'),
('update', 'ADMIN', '2017-01-16 06:19:07', 'admin', 'meo_users', 'user id updates from 1 to 1<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ANALYST to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 2017-01-17 to <br>'),
('delete', 'ADMIN', '2017-01-16 07:03:34', 'admin', 'department', 'COMMERCIAL deleted'),
('delete', 'ADMIN', '2017-01-16 07:03:40', 'admin', 'department', 'INFORMATION TECHNOLOGY (IT) deleted'),
('delete', 'ADMIN', '2017-01-16 07:03:45', 'admin', 'department', 'KNOWLEDGE MANAGEMENT CENTRE deleted'),
('add', 'ADMIN', '2017-01-16 07:04:34', 'admin', 'department', 'id region now contain value THAILAND, SKL<br>department name now contain value COMMERCIAL<br>members now contain value BRADLEY MICHAEL MORPHEW; <br>'),
('add', 'ADMIN', '2017-01-16 07:05:34', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value KNOWLEDGE MANAGEMENT CENTRE<br>members now contain value REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; <br>'),
('add', 'ADMIN', '2017-01-16 07:06:00', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY (IT)<br>members now contain value JOVY CHAY ; <br>'),
('update', 'ADMIN', '2017-01-16 07:18:29', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from JOVY CHAY ; REKHA NANDWANI; LIM HUI SHAN;  to REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; SABRIDO RHYAN DELOS REYES; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 07:52:55', 'admin', 'meo_users', 'user id now contain value 963<br>user full name now contain value ARINDAM1<br>user email now contain value BHARATRAJ+11@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 08:03:42', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 19:51:53', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:05:53', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-16 20:06:27', 'admin', 'vessel_region', 'id region updates from INDONESIA to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 20:07:05', 'admin', 'vessel_region', 'id region  now contain value INDONESIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:08:21', 'admin', 'vessel_region', 'id region  now contain value BRUNEI<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:33:31', 'admin', 'region', 'id group bu  now contain value SVS<br>region title now contain value SPECIALISED VESSEL SERVICES (SVS)<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 20:45:36', 'admin', 'vessel_region', 'id region  now contain value THAILAND, SKL<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:48:17', 'admin', 'region', 'id group bu  now contain value ROW- AUSTRALIA<br>region title now contain value ROW-AUSTRALIA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 20:56:56', 'admin', 'vessel_region', 'id region  now contain value ROW-AUSTRALIA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 20:58:28', 'admin', 'groupbu', 'group bu name now contain value MIDDLE EAST <br>group bu order now contain value 9<br>'),
('add', 'ADMIN', '2017-01-16 20:59:39', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 21:08:38', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST <br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 21:19:12', 'admin', 'vessel_name', 'vesselID  now contain value SP173<br>vessel name  now contain value SAMSON 101<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('update', 'ADMIN', '2017-01-16 21:20:09', 'admin', 'vessel_region', 'id region updates from ROW-AUSTRALIA to ROW-AUSTRALIA<br>id vessel name updates from MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA;  to MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 21:22:01', 'admin', 'groupbu', 'group bu name now contain value EOS<br>group bu order now contain value 10<br>'),
('add', 'ADMIN', '2017-01-16 21:22:42', 'admin', 'region', 'id group bu  now contain value EOS<br>region title now contain value EOS<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 21:26:09', 'admin', 'vessel_region', 'id region  now contain value EOS<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-16 21:30:39', 'admin', 'groupbu', 'group bu name now contain value ROW<br>group bu order now contain value 11<br>'),
('add', 'ADMIN', '2017-01-16 21:31:10', 'admin', 'region', 'id group bu  now contain value ROW<br>region title now contain value OTHERS<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-16 21:31:50', 'admin', 'vessel_region', 'id region  now contain value OTHERS<br>id vessel name  now contain value SOVERIEGN 1<br>'),
('add', 'ADMIN', '2017-01-16 21:33:44', 'admin', 'vessel_region', 'id region  now contain value SPECIALISED VESSEL SERVICES (SVS)<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-16 21:34:56', 'admin', 'groupbu', 'group bu name updates from ROW to ROW - OTHERS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-16 21:35:05', 'admin', 'groupbu', 'group bu name updates from ROW - OTHERS to ROW - OTHERS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-16 21:57:16', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from JOVY CHAY ; REKHA NANDWANI; LIM HUI SHAN; SABRIDO RHYAN DELOS REYES;  to REKHA NANDWANI; JOVY CHAY ; LIM HUI SHAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-16 22:07:47', 'admin', 'meo_users', 'user id now contain value S00168<br>user full name now contain value LAI CHEE YONG<br>user email now contain value CHEEYONG.LAI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:08:35', 'admin', 'meo_users', 'user id now contain value S00178<br>user full name now contain value DOYLE CHAVEZ FIGUERAS<br>user email now contain value DOYLE.FIGUERAS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value NAVAL ARCHITECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:10:14', 'admin', 'meo_users', 'user id now contain value S00189<br>user full name now contain value AU PEI KWAN<br>user email now contain value PEIKWAN.AU@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:12:03', 'admin', 'meo_users', 'user id now contain value S00193<br>user full name now contain value LIM BENG HWEE<br>user email now contain value BENGHWEE.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER, ENTERPRISE RISK MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:12:37', 'admin', 'meo_users', 'user id now contain value S00197<br>user full name now contain value CHRISTOPHER DAVID WHITE<br>user email now contain value CHRISTOPHER.WHITE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACTING GROUP FINANCIAL CONTROLLER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:13:26', 'admin', 'meo_users', 'user id now contain value S00203<br>user full name now contain value IAN JESTER ERAS REYES<br>user email now contain value IAN.REYES@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value NAVAL ARCHITECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:15:55', 'admin', 'meo_users', 'user id now contain value S00234<br>user full name now contain value ONG PEI LING, WENDY<br>user email now contain value WENDY.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREW PAYROLL EXECUTIVE - HR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:16:35', 'admin', 'meo_users', 'user id now contain value S00239<br>user full name now contain value VERNON LOW CHUN HWEE<br>user email now contain value VERNON.LOW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:18:29', 'admin', 'meo_users', 'user id now contain value S00240<br>user full name now contain value MUHAMMAD ADDY FHAIRUZ FERNANDEZ<br>user email now contain value ADDY.FERNANDEZ@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:20:57', 'admin', 'meo_users', 'user id now contain value S00247<br>user full name now contain value CHEN YING LEI<br>user email now contain value CHEN.YINGLEI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE - CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:22:23', 'admin', 'meo_users', 'user id now contain value S00269<br>user full name now contain value DEREK LO SHEN LEONG<br>user email now contain value DEREK.LO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value REGIONAL FINANCE MANAGER ( MIDDLE EAST) - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:24:36', 'admin', 'meo_users', 'user id now contain value S00278<br>user full name now contain value ONG BOON SENG<br>user email now contain value BOONSENG.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER – HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:40:58', 'admin', 'meo_users', 'user id now contain value S00283<br>user full name now contain value FOONG LAI LENG, LINDY<br>user email now contain value LINDY.FOONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - DOCUMENT CONTROL HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:45:58', 'admin', 'meo_users', 'user id now contain value S00291<br>user full name now contain value WEE HANQUN<br>user email now contain value HANQUN.WEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value LEGAL COUNSEL - LEGAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:48:16', 'admin', 'meo_users', 'user id now contain value S00296<br>user full name now contain value LALITHA NAIR<br>user email now contain value LALITHA.NAIR@MEOROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CERDIT CONTROLLER - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:50:58', 'admin', 'meo_users', 'user id now contain value S00317<br>user full name now contain value BURHANUDDIN BIN MOHAMAD<br>user email now contain value BURHAN.MOHD@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:52:52', 'admin', 'meo_users', 'user id now contain value S00321<br>user full name now contain value VENKATRAMAN SHESHASHAYEE<br>user email now contain value VSHESH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF EXECUTIVE OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:53:32', 'admin', 'meo_users', 'user id now contain value S00322<br>user full name now contain value CHONG SIN KEONG<br>user email now contain value SINKEONG.CHONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:57:44', 'admin', 'meo_users', 'user id now contain value S00327<br>user full name now contain value ANKUSH SHAM AGARWAL<br>user email now contain value ANKUSH.AGARWAL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DEPUTY HEAD - ASEAN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:58:29', 'admin', 'meo_users', 'user id now contain value S00328<br>user full name now contain value LIM CHEE HOE<br>user email now contain value CHEEHOE.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROGRAMMER - FLEET PLANNED MAINTENANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 22:59:35', 'admin', 'meo_users', 'user id now contain value S00329<br>user full name now contain value NORRASHIDAH BINTE MOHAMED<br>user email now contain value NORRASHIDAH.MOHAMED@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value RECEPTIONIST CUM ADMIN ASSISTANT - ADMIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:01:14', 'admin', 'meo_users', 'user id now contain value S00339<br>user full name now contain value SATHISVARAN CHIDAMBARAM<br>user email now contain value SATHIS.CHIDAMBARAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value IT EXECUTIVE - IT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:02:32', 'admin', 'meo_users', 'user id now contain value S00341<br>user full name now contain value XIE ZIHUI<br>user email now contain value ZIHUI.XIE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GL ACCOUNTANT - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:03:06', 'admin', 'meo_users', 'user id now contain value S00343<br>user full name now contain value INDRANIL MAJUMDAR<br>user email now contain value INDRANIL.MAJUMDAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACTING CHIEF OPERATING OFFICER (COO)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:09:22', 'admin', 'meo_users', 'user id now contain value S00349<br>user full name now contain value MILI SANJAY VERMA<br>user email now contain value MILI.VERMA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GROUP COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:11:15', 'admin', 'meo_users', 'user id now contain value S00357<br>user full name now contain value CHENG CAREEN<br>user email now contain value CAREEN.CHENG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT HR MANAGER - HR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:12:24', 'admin', 'meo_users', 'user id now contain value S00358<br>user full name now contain value NANDWANI REKHA DULAMAL<br>user email now contain value HELLOREKHA.NANDWANI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - BUSINESS PROCESS<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-16 23:12:37', 'admin', 'meo_users', 'REKHA NANDWANI deleted'),
('delete', 'ADMIN', '2017-01-16 23:12:48', 'admin', 'meo_users', 'JOVY CHAY  deleted'),
('delete', 'ADMIN', '2017-01-16 23:13:10', 'admin', 'meo_users', 'NANDWANI REKHA DULAMAL deleted'),
('add', 'ADMIN', '2017-01-16 23:13:51', 'admin', 'meo_users', 'user id now contain value S00358<br>user full name now contain value NANDWANI REKHA DULAMAL<br>user email now contain value REKHA.NANDWANI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - BUSINESS PROCESS - KMC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-16 23:17:30', 'admin', 'meo_users', 'user id now contain value S00362<br>user full name now contain value RAO INNA SHREYAS CHANDRAKANTHA<br>user email now contain value SHREYAS.RAO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGEMENT TRAINEE - KNOWLEDGE MGMT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:29:08', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value ACE<br>members now contain value NANDWANI REKHA DULAMAL; <br>'),
('add', 'ADMIN', '2017-01-17 00:29:53', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value TEST<br>members now contain value LIM HUI SHAN; <br>'),
('update', 'ADMIN', '2017-01-17 00:30:24', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from INFORMATION TECHNOLOGY (IT) to INFORMATION TECHNOLOGY (IT)<br>members updates from  to NANDWANI REKHA DULAMAL; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 00:37:08', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>user full name updates from SABRIDO RHYAN DELOS REYES to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:37:09', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>user full name updates from RHYAN DELOS REYES SABRIDO to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:37:28', 'admin', 'meo_users', 'user id updates from E0013 to E0013<br>user full name updates from IGLESIAS CARRICHES CLAUDIA to CLAUDIA IGLESIAS CARRICHES<br>user email updates from CLAUDIA.IGLESIAS@MEOGROUP.COM to CLAUDIA.IGLESIAS@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL EXECUTIVE to COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:40:50', 'admin', 'meo_users', 'user id updates from S00358 to S00358<br>user full name updates from NANDWANI REKHA DULAMAL to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from EXECUTIVE - BUSINESS PROCESS - KMC to EXECUTIVE - BUSINESS PROCESS - KMC<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:41:02', 'admin', 'meo_users', 'user id updates from S00357 to S00357<br>user full name updates from CHENG CAREEN to CAREEN CHENG <br>user email updates from CAREEN.CHENG@MEOGROUP.COM to CAREEN.CHENG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASSISTANT HR MANAGER - HR to ASSISTANT HR MANAGER - HR<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:41:20', 'admin', 'meo_users', 'user id updates from S00362 to S00362<br>user full name updates from RAO INNA SHREYAS CHANDRAKANTHA to SHREYAS CHANDRAKANTHA RAO<br>user email updates from SHREYAS.RAO@MEOGROUP.COM to SHREYAS.RAO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MANAGEMENT TRAINEE - KNOWLEDGE MGMT  to MANAGEMENT TRAINEE - KNOWLEDGE MGMT <br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:41:32', 'admin', 'meo_users', 'user id updates from S00197 to S00197<br>user full name updates from CHRISTOPHER DAVID WHITE to CHRISTOPHER WHITE<br>user email updates from CHRISTOPHER.WHITE@MEOGROUP.COM to CHRISTOPHER.WHITE@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ACTING GROUP FINANCIAL CONTROLLER to ACTING GROUP FINANCIAL CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:41:35', 'admin', 'meo_users', 'user id updates from S00197 to S00197<br>user full name updates from CHRISTOPHER WHITE to CHRISTOPHER WHITE<br>user email updates from CHRISTOPHER.WHITE@MEOGROUP.COM to CHRISTOPHER.WHITE@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ACTING GROUP FINANCIAL CONTROLLER to ACTING GROUP FINANCIAL CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-17 00:41:56', 'admin', 'meo_users', 'user id updates from 123123 to 123123<br>user full name updates from LIM HUI SHAN to HUI SHAN LIM <br>user email updates from HUISHAN.LIM@MEOGROUP.COM to HUISHAN.LIM@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE CONTROLLER to KNOWLEDGE CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-17 00:42:01', 'admin', 'meo_users', 'user id now contain value S00363<br>user full name now contain value VERA ONG SIXIAN<br>user email now contain value VERA.ONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT HR MANAGER - TALENT MANAGEMENT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 00:42:25', 'admin', 'meo_users', 'user id updates from 123123 to 123123<br>user full name updates from HUI SHAN LIM  to LIM HUI SHAN<br>user email updates from HUISHAN.LIM@MEOGROUP.COM to HUISHAN.LIM@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE CONTROLLER to KNOWLEDGE CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-17 00:42:57', 'admin', 'meo_users', 'user id now contain value S00365<br>user full name now contain value TAN LEA JOO<br>user email now contain value LEA.JOO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE MANAGER - ASEAN  (ASEAN FINANCE BIZ PARTNERSHIP)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:43:49', 'admin', 'meo_users', 'user id now contain value S00366<br>user full name now contain value SANDRA  JERNIGAN<br>user email now contain value SANDRA.JERNIGAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASEAN BUSINESS UNIT, ASSISTANT MANAGER - CREWING<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-17 00:44:22', 'admin', 'meo_users', 'LIM HUI SHAN deleted'),
('add', 'ADMIN', '2017-01-17 00:44:55', 'admin', 'meo_users', 'user id now contain value S00367<br>user full name now contain value LIM HUI SHAN<br>user email now contain value HUISHAN.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value KNOWLEDGE CONTROLLER - KMC<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 00:46:37', 'admin', 'meo_users', 'user id updates from S00363 to S00363<br>user full name updates from VERA ONG SIXIAN to VERA ONG <br>user email updates from VERA.ONG@MEOGROUP.COM to VERA.ONG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASSISTANT HR MANAGER - TALENT MANAGEMENT to ASSISTANT HR MANAGER - TALENT MANAGEMENT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-17 00:50:13', 'admin', 'meo_users', 'user id now contain value S00368<br>user full name now contain value NICHOLAS SEET CHONG KUN<br>user email now contain value NICHOLAS.SEET@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL MANAGER - ASEAN BU<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:51:12', 'admin', 'meo_users', 'user id now contain value S00373<br>user full name now contain value LIM LI JU<br>user email now contain value LIJU.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GL  ACCOUNTANT - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:51:56', 'admin', 'meo_users', 'user id now contain value S00375<br>user full name now contain value HEMA  MANOHARAN<br>user email now contain value HEMA.MANOHARAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value AR EXECUTIVE - GROUP FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:53:04', 'admin', 'meo_users', 'user id now contain value S00377<br>user full name now contain value  ARNOLD SILAO<br>user email now contain value ARNOLD.SILAO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE  - SCM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:53:39', 'admin', 'meo_users', 'user id now contain value S00378<br>user full name now contain value AKAASH GANESH<br>user email now contain value AKAASH.GANESH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGEMENT ASSOCIATE - TECHNICAL & OPERATIONS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 00:59:43', 'admin', 'meo_users', 'user id now contain value S00379<br>user full name now contain value LEE WEI JIE<br>user email now contain value WEIJIE.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGEMENT ASSOCIATE - COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:01:02', 'admin', 'meo_users', 'user id now contain value S00382<br>user full name now contain value ABHIJIT DESHMUKH<br>user email now contain value ABHIJIT.DESHMUKH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD - GROUP SCM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:01:43', 'admin', 'meo_users', 'user id now contain value S00383<br>user full name now contain value SOPHIE TAN JIA HUI <br>user email now contain value SOPHIE.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR HR EXECUTIVE - TALENT MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:02:19', 'admin', 'meo_users', 'user id now contain value S00384<br>user full name now contain value HUZAIFA<br>user email now contain value HUZAIFA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SVS BUSINESS UNIT, MANAGER - CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:09:26', 'admin', 'meo_users', 'user id now contain value S00387<br>user full name now contain value LEE SHIN HUAY<br>user email now contain value SHINHUAY.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TAX MANAGER - GROUP LEGAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:11:19', 'admin', 'meo_users', 'user id now contain value S00389<br>user full name now contain value SANKET ASHOK SHUKLA<br>user email now contain value SANKET.SHUKLA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:12:30', 'admin', 'meo_users', 'user id now contain value S00390<br>user full name now contain value KEN LIVINGSTONE<br>user email now contain value KEN.LIVINGSTONE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR MANAGER – TECHNICAL AND OPERATIONS, SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:13:09', 'admin', 'meo_users', 'user id now contain value S00392<br>user full name now contain value JOYCE LIM <br>user email now contain value JOYCE.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR PURCHASING EXECUTIVE - SCM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:13:51', 'admin', 'meo_users', 'user id now contain value S00393<br>user full name now contain value CHAN HUI PENG<br>user email now contain value HUIPENG.CHAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TEAM LEAD (GENERAL LEDGER) - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:15:17', 'admin', 'meo_users', 'user id now contain value S00394<br>user full name now contain value LEONG SOOK MEI<br>user email now contain value SOOKMEI.LEONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT  (CONSOLIDATION & REPORTING) - FINANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:16:04', 'admin', 'meo_users', 'user id now contain value S00395<br>user full name now contain value FARRUKH SHOAIB QURESHI<br>user email now contain value FARRUKH.QURESHI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT - SVS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:16:46', 'admin', 'meo_users', 'user id now contain value T00078<br>user full name now contain value JYNETTE LOWIS <br>user email now contain value JYNETTE.LOWIS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DATA ADMINISTRATOR - KMC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:18:13', 'admin', 'meo_users', 'user id now contain value S00026<br>user full name now contain value ALI HUSSAIN<br>user email now contain value ALI.HUSSAIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASST. OPERATIONS MANAGER - OPS<br>expiry date now contain value <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-17 01:19:12', 'admin', 'meo_users', 'user id now contain value S00316<br>user full name now contain value MATHANRAJ VEERASAMY<br>user email now contain value MATHANRAJ.VEERASAMY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAP BUSINESS ANALYST - IT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:21:31', 'admin', 'meo_users', 'user id now contain value S00319<br>user full name now contain value KISHORE SEGAR<br>user email now contain value KISHORE.SEGAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAP, ABAP DEVELOPER - IT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:22:38', 'admin', 'meo_users', 'user id now contain value S00355<br>user full name now contain value BHARANI KUMAR PALAKODETI<br>user email now contain value KUMAR.PAL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - TECHNICAL ( ASEAN)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:23:25', 'admin', 'meo_users', 'user id now contain value S00352<br>user full name now contain value CLAYTON HOSANNA<br>user email now contain value CLAYTON.HOSANNA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE - FOTC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:26:02', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value MANAGEMENT<br>members now contain value VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; <br>'),
('add', 'ADMIN', '2017-01-17 01:27:05', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ASEAN BU<br>members now contain value ANKUSH SHAM AGARWAL; NICHOLAS SEET CHONG KUN; <br>'),
('add', 'ADMIN', '2017-01-17 01:33:01', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members now contain value ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; <br>'),
('add', 'ADMIN', '2017-01-17 01:34:57', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value SPECIALISED VESSEL SERVICES						<br>members now contain value ADAM RALEIGH CLAYTON; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; BURHANUDDIN BIN MOHAMAD; CHONG SIN KEONG; KEN LIVINGSTONE; <br>'),
('add', 'ADMIN', '2017-01-17 01:35:49', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value GROUP COMMERCIAL						<br>members now contain value MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>'),
('update', 'ADMIN', '2017-01-17 01:35:59', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from GROUP COMMERCIAL						 to GROUP COMMERCIAL						<br>members updates from MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO;  to MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 01:36:00', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from GROUP COMMERCIAL						 to GROUP COMMERCIAL						<br>members updates from MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO;  to MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 01:37:02', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ADMINISTRATION						<br>members now contain value NORRASHIDAH BINTE MOHAMED; <br>'),
('add', 'ADMIN', '2017-01-17 01:37:56', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value HUMAN RESOURCES						<br>members now contain value CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; <br>'),
('add', 'ADMIN', '2017-01-17 01:39:04', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY						<br>members now contain value SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; <br>'),
('add', 'ADMIN', '2017-01-17 01:39:08', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value INFORMATION TECHNOLOGY						<br>members now contain value SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; <br>'),
('update', 'ADMIN', '2017-01-17 01:40:03', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from  to REKHA NANDWANI; LIM HUI SHAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 01:41:13', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members now contain value LAI CHEE YONG; LIM CHEE HOE; <br>'),
('add', 'ADMIN', '2017-01-17 01:50:11', 'admin', 'meo_users', 'user id now contain value 1<br>user full name now contain value DIEDERIK DE BOER<br>user email now contain value DIEDERIK.DEBOER@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EXECUTIVE DIRECTOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 01:57:22', 'admin', 'meo_users', 'user id now contain value E0015<br>user full name now contain value CRIS RYAN INDIG ENTERA<br>user email now contain value CRIS.RYAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SUPERINTENDENT - TECHNICAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 02:01:03', 'admin', 'meo_users', 'user id now contain value E0030<br>user full name now contain value JED IGOT<br>user email now contain value JED.IGOT@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value NAVAL ARCHITECT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 02:07:08', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ENTERPRISE RISK MANAGEMENT						<br>members now contain value LIM BENG HWEE; <br>'),
('add', 'ADMIN', '2017-01-17 02:07:10', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value ENTERPRISE RISK MANAGEMENT						<br>members now contain value LIM BENG HWEE; <br>'),
('add', 'ADMIN', '2017-01-17 02:07:38', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value LEGAL						<br>members now contain value JANE ALLAN; WEE HANQUN; LEE SHIN HUAY; <br>'),
('add', 'ADMIN', '2017-01-17 02:09:02', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value FINANCE<br>members now contain value HONG SHUMIN; CHRISTOPHER WHITE; XIE ZIHUI; TAN LEA JOO; <br>'),
('update', 'ADMIN', '2017-01-17 02:10:52', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 02:12:05', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value SUPPLY CHAIN MANAGEMENT						<br>members now contain value  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; <br>'),
('add', 'ADMIN', '2017-01-17 02:13:00', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value CREWING (LEVEL  5)<br>members now contain value MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; ONG PEI LING, WENDY; CHEN YING LEI; SANDRA  JERNIGAN; HUZAIFA; <br>'),
('add', 'ADMIN', '2017-01-17 02:14:17', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members now contain value TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; <br>'),
('delete', 'ADMIN', '2017-01-17 02:15:54', 'admin', 'department', 'ENTERPRISE RISK MANAGEMENT						 deleted'),
('delete', 'ADMIN', '2017-01-17 02:16:11', 'admin', 'department', 'INFORMATION TECHNOLOGY						 deleted'),
('update', 'ADMIN', '2017-01-17 02:16:39', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 02:18:57', 'admin', 'meo_users', 'user id now contain value S00290<br>user full name now contain value JOAN LAW<br>user email now contain value JOAN.LAW@MOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, IT INFRASTRUCTURE<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-17 02:19:10', 'admin', 'meo_users', 'JOAN LAW deleted'),
('add', 'ADMIN', '2017-01-17 02:19:38', 'admin', 'meo_users', 'user id now contain value S00290<br>user full name now contain value JOAN LAW<br>user email now contain value JOAN.LAW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, IT INFRASTRUCTURE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 02:25:07', 'admin', 'meo_users', 'user id now contain value S00161<br>user full name now contain value EBEN TAN <br>user email now contain value EBEN.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD - GROUP OPERATIONS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:03:36', 'admin', 'meo_users', 'user id now contain value S00331<br>user full name now contain value JOSHUA LAM KHIAN KOK<br>user email now contain value JOSHUA.LAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAP BUSINESS ANALYST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:08:08', 'admin', 'meo_users', 'user id now contain value S00334<br>user full name now contain value NYEIN CHAN AUNG<br>user email now contain value AUNG.NYEINCHAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL MANAGER – ELECTRICAL & AUTOMATION<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:16:07', 'admin', 'meo_users', 'user id now contain value S00337<br>user full name now contain value KELLY ZHANG JING<br>user email now contain value KELLY.ZHANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TEAM LEAD - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:18:09', 'admin', 'meo_users', 'user id now contain value S00332<br>user full name now contain value FRANK TAM<br>user email now contain value FRANK.TAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FPM TESTING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:21:45', 'admin', 'meo_users', 'user id now contain value S00025<br>user full name now contain value RYAN JIANG<br>user email now contain value HAIBO.JIANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER, FPM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:23:35', 'admin', 'meo_users', 'user id now contain value S00081<br>user full name now contain value ELAINE CHUAH<br>user email now contain value ELAINE.CHUAH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - (ROVING FLEET)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:26:13', 'admin', 'meo_users', 'user id now contain value S00204<br>user full name now contain value CHRISTINA LING<br>user email now contain value CHRISTINA.LING@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:30:01', 'admin', 'meo_users', 'user id now contain value S00207<br>user full name now contain value ELIZABETH WONG<br>user email now contain value ELIZABETH.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, CONSOLIDATION AND REPORTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:36:08', 'admin', 'meo_users', 'user id now contain value E0028<br>user full name now contain value SHAWN WONG<br>user email now contain value SHAWN.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROJECT COORDINATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:37:35', 'admin', 'meo_users', 'user id now contain value S00211<br>user full name now contain value ALEZS WONG<br>user email now contain value ALEZS.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD - GROUP CREWING <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 03:50:05', 'admin', 'meo_users', 'user id now contain value S00007<br>user full name now contain value JANICE TENG <br>user email now contain value JANICE.TENG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TEAM LEAD  - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:02:25', 'admin', 'meo_users', 'user id now contain value S00014<br>user full name now contain value DARREN ANG<br>user email now contain value DARREN.ANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF MARKETING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:04:07', 'admin', 'meo_users', 'user id now contain value 225<br>user full name now contain value BHARATRAJ<br>user email now contain value BHARATRAJ+2@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:08:11', 'admin', 'meo_users', 'user id now contain value S00241<br>user full name now contain value ELAINE TAY<br>user email now contain value ELAINE.TAY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR ADMIN ASSISTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:08:16', 'admin', 'meo_users', 'user id now contain value 296<br>user full name now contain value BHARATRAJ MEO USER<br>user email now contain value BHARATRAJ@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:10:25', 'admin', 'meo_users', 'user id now contain value S00297<br>user full name now contain value ALIS KHOO <br>user email now contain value ALIS.KHOO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR EXECUTIVE - AR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:12:34', 'admin', 'meo_users', 'user id now contain value S00253<br>user full name now contain value KAMMY TAN<br>user email now contain value KAMMY.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:13:47', 'admin', 'meo_users', 'user id now contain value S00242<br>user full name now contain value JAMES LIM<br>user email now contain value JAMES.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SCM MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:15:57', 'admin', 'meo_users', 'user id now contain value S00263<br>user full name now contain value LEON LIM<br>user email now contain value LEON.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ANALYST, FPM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:17:49', 'admin', 'meo_users', 'user id now contain value S00180<br>user full name now contain value LEWIS LOW<br>user email now contain value LEWIS.LOW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER, IT SAP & INFRASTRUCTURE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:18:57', 'admin', 'meo_users', 'user id now contain value S00205<br>user full name now contain value KENNETH LEE<br>user email now contain value KENNETH.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:20:10', 'admin', 'meo_users', 'user id now contain value S00282<br>user full name now contain value GLADYS CHUA<br>user email now contain value GLADYS.CHUA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 04:25:35', 'admin', 'meo_users', 'user id now contain value S00335<br>user full name now contain value BELINDA LI<br>user email now contain value BELINDA.LI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCIAL ANALYST<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 04:27:33', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to TECHNICAL OPERATIONS						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 04:29:01', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE;  to LAI CHEE YONG; LIM CHEE HOE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 04:30:08', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members now contain value ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; <br>'),
('add', 'ADMIN', '2017-01-17 19:47:14', 'admin', 'meo_users', 'user id now contain value S00104<br>user full name now contain value JAMIE LEE<br>user email now contain value JAMIE.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CORPORATE SECRETARIAT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 19:48:46', 'admin', 'meo_users', 'user id now contain value S00133<br>user full name now contain value AMELIA NG<br>user email now contain value AMELIA.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 19:51:02', 'admin', 'meo_users', 'user id now contain value S00148<br>user full name now contain value JOVY CHAY<br>user email now contain value JOVY.CHAY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - KNOWLEDGE MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:03:40', 'admin', 'meo_users', 'user id now contain value S00347<br>user full name now contain value DARREN YEOH<br>user email now contain value DARREN.YEOH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER, BPI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:05:08', 'admin', 'meo_users', 'user id now contain value S00361<br>user full name now contain value EDWIN CHANG YONG QUAN<br>user email now contain value YONGQUAN.CHANG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value INVENTORY ANALYST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:08:58', 'admin', 'meo_users', 'user id now contain value S00385<br>user full name now contain value BAY SOO PENG<br>user email now contain value SOOPENG.BAY@MEOGROUP.COM <br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT - GL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:11:24', 'admin', 'meo_users', 'user id now contain value S00386<br>user full name now contain value CHLOE NG<br>user email now contain value CHLOE.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCE EXECUTIVE - AR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:12:53', 'admin', 'meo_users', 'user id now contain value S00388<br>user full name now contain value EUNICE TAN<br>user email now contain value EUNICE.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HR EXECUTIVE - TALENT MANAGEMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:18:05', 'admin', 'meo_users', 'user id now contain value S00002<br>user full name now contain value ERIK TING<br>user email now contain value ERIK.TING@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL CONSULTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:28:57', 'admin', 'meo_users', 'user id now contain value E0025<br>user full name now contain value LIM JUNRONG<br>user email now contain value JUNRONG.LIM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SUPERINTENDENT - TECHNICAL (PROJECTS)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:32:06', 'admin', 'meo_users', 'user id now contain value S00360<br>user full name now contain value LEE PEI ZHEN<br>user email now contain value PEIZHEN.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HR EXECUTIVE - OPERATIONS & SERVICES<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:35:53', 'admin', 'meo_users', 'user id now contain value S00348<br>user full name now contain value JOSEPHINE LEE<br>user email now contain value JOSEPHINE.LEE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GROUP TREASURER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-17 20:39:17', 'admin', 'meo_users', 'user id now contain value S00165<br>user full name now contain value DEREK KOH<br>user email now contain value DEREK.KOH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF FINANCIAL OFFICER<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 20:47:41', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:49:20', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:49:44', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ADMINISTRATION						 to ADMINISTRATION						<br>members updates from NORRASHIDAH BINTE MOHAMED;  to NORRASHIDAH BINTE MOHAMED; ELAINE TAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:50:33', 'admin', 'department', 'id region updates from INDONESIA to SINGAPORE <br>department name updates from HUMAN RESOURCES						 to HUMAN RESOURCES						<br>members updates from CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ;  to CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; EUNICE TAN; LEE PEI ZHEN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:50:54', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:51:58', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from INFORMATION TECHNOLOGY (IT) to INFORMATION TECHNOLOGY (IT)<br>members updates from REKHA NANDWANI;  to SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; JOAN LAW; JOSHUA LAM KHIAN KOK; LEWIS LOW; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-17 20:52:11', 'admin', 'department', 'INFORMATION TECHNOLOGY						 deleted'),
('update', 'ADMIN', '2017-01-17 20:52:27', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>members updates from REKHA NANDWANI; LIM HUI SHAN;  to REKHA NANDWANI; LIM HUI SHAN; JOVY CHAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:52:58', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE;  to LAI CHEE YONG; LIM CHEE HOE; FRANK TAM; RYAN JIANG; LEON LIM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:54:44', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from LEGAL						 to LEGAL						<br>members updates from JANE ALLAN; LEE SHIN HUAY; WEE HANQUN;  to JANE ALLAN; WEE HANQUN; LEE SHIN HUAY; JAMIE LEE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:57:57', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-17 20:58:42', 'admin', 'meo_users', 'user id now contain value S00380<br>user full name now contain value ELAINE LAU<br>user email now contain value ELAINE.LAU@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT - GL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-17 20:59:26', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN; JOSEPHINE LEE; ELIZABETH WONG; BELINDA LI; KELLY ZHANG JING; BAY SOO PENG; GLADYS CHUA; ALIS KHOO ; CHLOE NG; JANICE TENG ; AMELIA NG;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; ELAINE LAU; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 20:59:28', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN; JOSEPHINE LEE; ELIZABETH WONG; BELINDA LI; KELLY ZHANG JING; BAY SOO PENG; GLADYS CHUA; ALIS KHOO ; CHLOE NG; JANICE TENG ; AMELIA NG; ELAINE LAU;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; ELAINE LAU; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:01:01', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SUPPLY CHAIN MANAGEMENT						 to SUPPLY CHAIN MANAGEMENT						<br>members updates from ABHIJIT DESHMUKH; JOYCE LIM ;  ARNOLD SILAO;  to  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; CHRISTINA LING; KAMMY TAN; JAMES LIM; KENNETH LEE; EDWIN CHANG YONG QUAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:01:05', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SUPPLY CHAIN MANAGEMENT						 to SUPPLY CHAIN MANAGEMENT						<br>members updates from ABHIJIT DESHMUKH; JOYCE LIM ;  ARNOLD SILAO; JAMES LIM; CHRISTINA LING; KAMMY TAN; KENNETH LEE; EDWIN CHANG YONG QUAN;  to  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; CHRISTINA LING; KAMMY TAN; JAMES LIM; KENNETH LEE; EDWIN CHANG YONG QUAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:01:25', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from CREWING (LEVEL  5) to CREWING (LEVEL  5)<br>members updates from HUZAIFA; SANDRA  JERNIGAN; ONG PEI LING, WENDY; MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; CHEN YING LEI;  to MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; ONG PEI LING, WENDY; CHEN YING LEI; SANDRA  JERNIGAN; HUZAIFA; ALEZS WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:02:53', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:02:55', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; DARREN YEOH;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:03:05', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from TECHNICAL OPERATIONS						 to TECHNICAL OPERATIONS						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 21:04:27', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from TECHNICAL OPERATIONS						 to TECHNICAL OPERATIONS						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; IAN JESTER ERAS REYES; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; EBEN TAN ; NYEIN CHAN AUNG; ELAINE CHUAH; ERIK TING; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-17 23:10:53', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 00:42:17', 'admin', 'meo_users', 'user id now contain value BN002<br>user full name now contain value LEONARD WONG <br>user email now contain value LEONARD.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value GENERAL MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:43:24', 'admin', 'meo_users', 'user id now contain value BN004<br>user full name now contain value BELINDA WONG<br>user email now contain value BELINDA.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ADMINISTRATIVE EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:44:15', 'admin', 'meo_users', 'user id now contain value BN008<br>user full name now contain value KOK WEI KONG<br>user email now contain value WEIKONG.KOK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WEIKONG.KOK@MEOGROUP.COM<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:45:11', 'admin', 'meo_users', 'user id now contain value BN003<br>user full name now contain value SHAFIQ ABDULLAH <br>user email now contain value SHAFIQ.ABDULLAH@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:46:37', 'admin', 'meo_users', 'user id now contain value BN011<br>user full name now contain value ARDY  BAKAR<br>user email now contain value ARDY.BAKAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:47:13', 'admin', 'meo_users', 'user id now contain value BN010<br>user full name now contain value ALDON PETER YAPP <br>user email now contain value ALDON.PETERYAPP@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:48:02', 'admin', 'meo_users', 'user id now contain value BN007<br>user full name now contain value KENNETH YONG<br>user email now contain value KENNETH.YONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 00:50:01', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value MGMT<br>members now contain value LEONARD WONG ; <br>'),
('add', 'ADMIN', '2017-01-18 00:50:28', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value ACCOUNTING<br>members now contain value TAN LEA JOO; <br>'),
('add', 'ADMIN', '2017-01-18 00:50:46', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value ADMINISTRATION						<br>members now contain value BELINDA WONG; <br>'),
('add', 'ADMIN', '2017-01-18 00:51:18', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value OPERATIONS / TECHNICAL <br>members now contain value KOK WEI KONG; SHAFIQ ABDULLAH ; <br>'),
('add', 'ADMIN', '2017-01-18 00:51:39', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value CREWING<br>members now contain value ARDY  BAKAR; <br>'),
('add', 'ADMIN', '2017-01-18 00:51:56', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value HSQE<br>members now contain value ALDON PETER YAPP ; <br>'),
('add', 'ADMIN', '2017-01-18 00:52:14', 'admin', 'department', 'id region now contain value BRUNEI<br>department name now contain value PURCHASING<br>members now contain value KENNETH YONG; <br>'),
('update', 'ADMIN', '2017-01-18 00:54:30', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from MGMT to MANAGEMENT (BRUNEI)<br>members updates from LEONARD WONG ;  to LEONARD WONG ; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-18 01:08:17', 'admin', 'department', 'ACE deleted'),
('delete', 'ADMIN', '2017-01-18 01:08:24', 'admin', 'department', 'TEST deleted'),
('delete', 'ADMIN', '2017-01-18 01:08:27', 'admin', 'department', ' deleted'),
('add', 'ADMIN', '2017-01-18 01:09:34', 'admin', 'meo_users', 'user id now contain value M015<br>user full name now contain value CAPT. SASITHARAN ELUMALAI<br>user email now contain value SASITHARAN.ELUMALAI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS MANAGER, MALAYSIA<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:11:13', 'admin', 'meo_users', 'user id now contain value M014<br>user full name now contain value LETICIA LAIMAN INGAN<br>user email now contain value LETICIA.INGAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE  SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:13:23', 'admin', 'meo_users', 'user id now contain value M010<br>user full name now contain value AWG FAREEZ SYIDDIQEN<br>user email now contain value AWG.FAREEZ@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPS SUPINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:14:12', 'admin', 'meo_users', 'user id now contain value M012<br>user full name now contain value NURUL AIN KAMARUDDIN<br>user email now contain value NURULAIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:14:51', 'admin', 'meo_users', 'user id now contain value M006<br>user full name now contain value SYED MUBARAK<br>user email now contain value SYED.MUBARAK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECH SUPERTINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:15:37', 'admin', 'meo_users', 'user id now contain value M002<br>user full name now contain value AAN KUSNANDAR<br>user email now contain value AAN.KUSNANDAR@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECH SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:16:08', 'admin', 'meo_users', 'user id now contain value M007<br>user full name now contain value NAOMI GANI<br>user email now contain value NAOMI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:16:50', 'admin', 'meo_users', 'user id now contain value M011<br>user full name now contain value HAZLAN HAMDAN<br>user email now contain value HAZLAN.HAMDAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:18:39', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value MANAGEMENT (MSIA)<br>members now contain value CAPT. SASITHARAN ELUMALAI; <br>'),
('add', 'ADMIN', '2017-01-18 01:19:07', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value HSQE (MSIA)<br>members now contain value LETICIA LAIMAN INGAN; <br>'),
('add', 'ADMIN', '2017-01-18 01:19:38', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value OPERATION (MSIA)<br>members now contain value AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; <br>'),
('add', 'ADMIN', '2017-01-18 01:19:58', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value TECHNICAL (MSIA)<br>members now contain value SYED MUBARAK; AAN KUSNANDAR; <br>'),
('add', 'ADMIN', '2017-01-18 01:20:16', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value CREWING (MSIA)<br>members now contain value NAOMI GANI; <br>'),
('add', 'ADMIN', '2017-01-18 01:21:09', 'admin', 'department', 'id region now contain value MALAYSIA<br>department name now contain value PURCHASING (MSIA)<br>members now contain value HAZLAN HAMDAN; <br>'),
('add', 'ADMIN', '2017-01-18 01:33:04', 'admin', 'meo_users', 'user id now contain value A000480<br>user full name now contain value DAVID NICHOLAS<br>user email now contain value DAVID.NICHOLAS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSEQ MANAGER,  AUS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:33:37', 'admin', 'meo_users', 'user id now contain value A000816<br>user full name now contain value SAM HUTCHINSON<br>user email now contain value SAMUEL.HUTCHINSON@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL & OPERATIONS MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:34:07', 'admin', 'meo_users', 'user id now contain value A000342<br>user full name now contain value VALERIE PRENTICE <br>user email now contain value VALERIE.PRENTICE@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 01:36:26', 'admin', 'department', 'id region now contain value ROW-AUSTRALIA<br>department name now contain value EXECUTIVE (AUS)<br>members now contain value DAVID NICHOLAS; <br>'),
('add', 'ADMIN', '2017-01-18 01:36:57', 'admin', 'department', 'id region now contain value ROW-AUSTRALIA<br>department name now contain value COMMERCIAL (AUS)<br>members now contain value SAM HUTCHINSON; VALERIE PRENTICE ; <br>'),
('add', 'ADMIN', '2017-01-18 01:37:45', 'admin', 'department', 'id region now contain value ROW-AUSTRALIA<br>department name now contain value HUMAN RESOURCE (AUS)<br>members now contain value VALERIE PRENTICE ; <br>'),
('add', 'ADMIN', '2017-01-18 02:16:50', 'admin', 'meo_users', 'user id now contain value ME00001<br>user full name now contain value DENIS WELCH<br>user email now contain value DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT - MIDDLE EAST <br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-18 02:17:40', 'admin', 'meo_users', 'DENIS WELCH deleted'),
('add', 'ADMIN', '2017-01-18 02:18:37', 'admin', 'meo_users', 'user id now contain value ME00108<br>user full name now contain value DENIS WELCH<br>user email now contain value DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS UNIT - MIDDLE EAST <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:20:03', 'admin', 'meo_users', 'user id now contain value ME00066<br>user full name now contain value RIK KREUNEN<br>user email now contain value RIK.KREUNEN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value BUSINESS DEVELOPMENT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:22:06', 'admin', 'meo_users', 'user id now contain value ME00099<br>user full name now contain value MUKUND RAJAMANI <br>user email now contain value MUKUND.RAJAMNI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:24:19', 'admin', 'meo_users', 'user id now contain value ME00100<br>user full name now contain value ANGELA EMATA BAYRON <br>user email now contain value ANGELA.BAYRON@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value COMMERCIAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:26:17', 'admin', 'meo_users', 'user id now contain value ME00111<br>user full name now contain value DEREK LO <br>user email now contain value DEREK.LO@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value REGIONAL FINANCE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:28:26', 'admin', 'meo_users', 'user id now contain value ME00083<br>user full name now contain value SANDESH GOPAL PALAN <br>user email now contain value SANDESH.PALAN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT FINANCE MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:30:21', 'admin', 'meo_users', 'user id now contain value ME00076<br>user full name now contain value NITIN PUROHIT <br>user email now contain value NITIN.PUROHIT@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT FINANCE MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:31:17', 'admin', 'meo_users', 'user id now contain value ME00058<br>user full name now contain value DEEPAK PANDEY <br>user email now contain value DEEPAK.PANDEY@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:32:34', 'admin', 'meo_users', 'user id now contain value ME00024<br>user full name now contain value ASHVITH AMIN<br>user email now contain value ASHVITH.AMIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:33:17', 'admin', 'meo_users', 'user id now contain value ME00084<br>user full name now contain value ABHILASH <br>user email now contain value ABHILASH.H@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:43:02', 'admin', 'meo_users', 'user id now contain value ME00021<br>user full name now contain value SAMWAIL FOUAD<br>user email now contain value SAMWAIL.FOUAD@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PRO<br>expiry date now contain value <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-18 02:45:45', 'admin', 'meo_users', 'user id now contain value ME00037<br>user full name now contain value TAHIR ABBAS<br>user email now contain value -@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DRIVER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:46:43', 'admin', 'meo_users', 'user id now contain value ME00092<br>user full name now contain value RABINDRA DASH <br>user email now contain value RABINDRA.DASH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:47:54', 'admin', 'meo_users', 'user id now contain value ME00060<br>user full name now contain value AISHA FERRER<br>user email now contain value AISHA.FERRER@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:48:42', 'admin', 'meo_users', 'user id now contain value ME00071<br>user full name now contain value ANABEL BALINA<br>user email now contain value ANABEL.BALINA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:49:49', 'admin', 'meo_users', 'user id now contain value ME00097<br>user full name now contain value ANNALYN BUATIS <br>user email now contain value ANNALYN.BUATIS@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:51:16', 'admin', 'meo_users', 'user id now contain value ME00095<br>user full name now contain value AVDHUT DHAYBAR<br>user email now contain value AVDHUT.DHAYBAR@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:53:56', 'admin', 'meo_users', 'user id now contain value ME00022<br>user full name now contain value BISYRUN HASAN BASRI<br>user email now contain value BISYRUN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:55:12', 'admin', 'meo_users', 'user id now contain value ME00038<br>user full name now contain value ALI ESSA M AL OBAIDI<br>user email now contain value ALI.ALOBAIDI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SAUDIZATION COORDINATOR (KSA)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:56:26', 'admin', 'meo_users', 'user id now contain value ME00109<br>user full name now contain value IRY GENSON<br>user email now contain value IRY.GENSON@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SCM MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:57:07', 'admin', 'meo_users', 'user id now contain value ME00031<br>user full name now contain value SAVIO VAZ<br>user email now contain value SAVIO.VAZ@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:57:49', 'admin', 'meo_users', 'user id now contain value ME00079<br>user full name now contain value SUNITHA SHETTY<br>user email now contain value SUNITHA.SHETTY@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:58:37', 'admin', 'meo_users', 'user id now contain value ME00110<br>user full name now contain value LIEZL FABIALA <br>user email now contain value LIEZL.FABIALA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 02:59:22', 'admin', 'meo_users', 'user id now contain value ME00102<br>user full name now contain value LENIN LAMA <br>user email now contain value LENIN.LAMA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:00:20', 'admin', 'meo_users', 'user id now contain value ME00106<br>user full name now contain value HUSSAIN ALGOBA <br>user email now contain value HUSSAIN.ALGOBA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:01:17', 'admin', 'meo_users', 'user id now contain value ME00063<br>user full name now contain value SREENIVASAN NARAYANAN<br>user email now contain value --@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value STORE KEEPER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:03:45', 'admin', 'meo_users', 'user id now contain value ME00004<br>user full name now contain value ABDALLA ABUELGASIM<br>user email now contain value ABDALLA.ABUELGASIM@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:04:58', 'admin', 'meo_users', 'user id now contain value ME00074<br>user full name now contain value SHERIF ABDELHAMID <br>user email now contain value SHERIF.ABDELMONEM@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:07:45', 'admin', 'meo_users', 'user id now contain value ME00011<br>user full name now contain value JOSEPH GEORGE<br>user email now contain value JOSEPH.GEORGE@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT HSQE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:08:39', 'admin', 'meo_users', 'user id now contain value ME00042<br>user full name now contain value RAMLI RASBI<br>user email now contain value RAMLI.RASBI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SUPERINTENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:09:28', 'admin', 'meo_users', 'user id now contain value ME00050<br>user full name now contain value ANNA  LIZA CELLANO<br>user email now contain value ANNA.CELLANO@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:15:43', 'admin', 'meo_users', 'user id now contain value ME00101<br>user full name now contain value RAVINDER HOONJAN <br>user email now contain value RAVINDER.HOONJAN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:18:26', 'admin', 'meo_users', 'user id now contain value ME00090<br>user full name now contain value AAKAAR JAIN<br>user email now contain value AAKAAR.JAIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT OPERATIONS MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:32:10', 'admin', 'meo_users', 'user id now contain value ME00014<br>user full name now contain value SOKARNO ABDALLAH <br>user email now contain value SOKARNO.ABDALLAH@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value BASE MANAGER KSA <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:35:22', 'admin', 'meo_users', 'user id now contain value ME00089<br>user full name now contain value TAMER S.BALBOUL<br>user email now contain value TAMER.BALBOUL@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:37:19', 'admin', 'meo_users', 'user id now contain value ME00025<br>user full name now contain value SALIM KAJIRU<br>user email now contain value SALIM.KAJIRU@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:40:43', 'admin', 'meo_users', 'user id now contain value ME00027<br>user full name now contain value ZOHAIR ABDELRAHIM<br>user email now contain value ZOHAIR.ELRAHIM@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:46:05', 'admin', 'meo_users', 'user id now contain value ME00005<br>user full name now contain value PAUL OCCENOLA<br>user email now contain value PAUL.OCCENOLA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:48:31', 'admin', 'meo_users', 'user id now contain value ME00104<br>user full name now contain value CHANDRASHEKAR VARMA <br>user email now contain value CHANDRASHEKAR.VARMA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS EXECUTIVE <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:49:46', 'admin', 'meo_users', 'user id now contain value ME00023<br>user full name now contain value JASIM HUSSAIN<br>user email now contain value JASSIM.HUSSAIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS ASSISTANT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:50:59', 'admin', 'meo_users', 'user id now contain value ME00093<br>user full name now contain value BASEL KHWAIS<br>user email now contain value BASEL.KHWAIS@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PRO<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:52:06', 'admin', 'meo_users', 'user id now contain value ME00088<br>user full name now contain value CIRION CENOC <br>user email now contain value CIRION.SENOC@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR OPERATIONS SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:56:33', 'admin', 'meo_users', 'user id now contain value ME00073<br>user full name now contain value HEMANTKUMAR PANCHAL <br>user email now contain value HEMANT.PANCHAL@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR TECHNICAL SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:57:22', 'admin', 'meo_users', 'user id now contain value ME00107<br>user full name now contain value VENKATESH <br>user email now contain value VENKATESH.K@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 03:59:46', 'admin', 'meo_users', 'user id now contain value ME00048<br>user full name now contain value VIJAY CHATTE<br>user email now contain value VIJAY.CHATTE@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:00:46', 'admin', 'meo_users', 'user id now contain value ME00096<br>user full name now contain value ALABBAS MAHDI <br>user email now contain value ALABBAS.MAHDI@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT ENGINEER (SAUDI)) <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:01:31', 'admin', 'meo_users', 'user id now contain value ME00082<br>user full name now contain value JOSE WILSON OTO<br>user email now contain value JOSE.WILSON@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT (SAUDI)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:02:12', 'admin', 'meo_users', 'user id now contain value ME00013<br>user full name now contain value HISHAM  AHAMED<br>user email now contain value HISHAM.AHAMED@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT (SAUDI)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:02:53', 'admin', 'meo_users', 'user id now contain value ME00056<br>user full name now contain value YOGESH PATIL<br>user email now contain value YOGESH.PATIL@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SERVICE SUPERVISOR SUPERITENDENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:04:13', 'admin', 'meo_users', 'user id now contain value ME00034<br>user full name now contain value PRADEEP KUMAR<br>user email now contain value ---@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:05:51', 'admin', 'meo_users', 'user id now contain value ME00003<br>user full name now contain value ANDREW AUGUSTIN WOOD<br>user email now contain value ----@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC (SAUDI)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:06:28', 'admin', 'meo_users', 'user id now contain value ME00001<br>user full name now contain value ROMEO DELA CRUZ GACHO<br>user email now contain value ------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value AC TECHNICIAN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:09:38', 'admin', 'meo_users', 'user id now contain value ME00046<br>user full name now contain value VIRGILIO TECSON TIRO<br>user email now contain value -NA-@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WELDER/ MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:10:21', 'admin', 'meo_users', 'user id now contain value ME00055<br>user full name now contain value ELNUR ABDULLAYEV<br>user email now contain value ELNUR@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRICAL ENGINEER SUPERINTENDENT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:11:26', 'admin', 'meo_users', 'user id now contain value ME00078<br>user full name now contain value MANJULA  SAMARAKOON<br>user email now contain value MANJULA.SAMARKOON@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRONICS ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:12:08', 'admin', 'meo_users', 'user id now contain value ME00052<br>user full name now contain value ROBIN ISSAC<br>user email now contain value ROBIN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRONICS ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:13:34', 'admin', 'meo_users', 'user id now contain value ME00105<br>user full name now contain value SAMAN PATHIRANA <br>user email now contain value PATHIRANA@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRONICS ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:14:02', 'admin', 'meo_users', 'user id now contain value ME00043<br>user full name now contain value JINKHIE GALLARZAN<br>user email now contain value JINKHIE.GALLARZAN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR TECHNICAL ASSISTANT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:14:44', 'admin', 'meo_users', 'user id now contain value ME00103<br>user full name now contain value BAPUSO DINDE <br>user email now contain value BAPUSO.DINDE@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL ASSISTANT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:16:00', 'admin', 'meo_users', 'user id now contain value ME00040<br>user full name now contain value KHALID SAOUD A AL SHAMMARY<br>user email now contain value -------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ADMIN ASSISTANT <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:17:30', 'admin', 'meo_users', 'user id now contain value MEO020<br>user full name now contain value HASHIM AL SEFI<br>user email now contain value ------@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DRIVER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:18:45', 'admin', 'meo_users', 'user id now contain value ME00015<br>user full name now contain value ABDUL KADIR BUTHIYABURAYIL<br>user email now contain value ----@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HELPER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:19:39', 'admin', 'meo_users', 'user id now contain value ME00016<br>user full name now contain value THATHAMMA MOHAMMED MOOSA <br>user email now contain value ---@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HELPER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:20:10', 'admin', 'meo_users', 'user id now contain value ME00087<br>user full name now contain value MICHAEL SLY <br>user email now contain value MICHAEL.SLY@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value EOS REGIONAL REPRESENTATIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 04:20:44', 'admin', 'meo_users', 'user id now contain value ME00029<br>user full name now contain value SHIYAS NAZARUDEEN <br>user email now contain value SHIYAS.NAZARUDEEN@MICLYNEXPRESSOFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 19:55:50', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value MANAGEMENT  (ME)<br>members now contain value DENIS WELCH; <br>'),
('add', 'ADMIN', '2017-01-18 19:57:30', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value COMMERCIAL TEAM  (ME)<br>members now contain value RIK KREUNEN; MUKUND RAJAMANI ; ANGELA EMATA BAYRON ; <br>'),
('add', 'ADMIN', '2017-01-18 19:58:22', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value FINANCE TEAM (ME)<br>members now contain value DEREK LO ; SANDESH GOPAL PALAN ; NITIN PUROHIT ; DEEPAK PANDEY ; ASHVITH AMIN; ABHILASH ; <br>'),
('add', 'ADMIN', '2017-01-18 19:59:09', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value HR & ADMIN (ME)<br>members now contain value SAMWAIL FOUAD; TAHIR ABBAS; <br>'),
('add', 'ADMIN', '2017-01-18 20:00:47', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value CREWING DEPARTMENT (ME)<br>members now contain value RABINDRA DASH ; AISHA FERRER; ANABEL BALINA; ANNALYN BUATIS ; AVDHUT DHAYBAR; BISYRUN HASAN BASRI; ALI ESSA M AL OBAIDI; <br>'),
('add', 'ADMIN', '2017-01-18 20:02:30', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value SCM (ME)<br>members now contain value IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; <br>'),
('add', 'ADMIN', '2017-01-18 20:04:09', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value HSQE & TRAINING  (ME)<br>members now contain value ABDALLA ABUELGASIM; SHERIF ABDELHAMID ; JOSEPH GEORGE; RAMLI RASBI; ANNA  LIZA CELLANO; <br>'),
('add', 'ADMIN', '2017-01-18 20:07:06', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value OPERATIONAL (ME)<br>members now contain value RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; <br>'),
('add', 'ADMIN', '2017-01-18 20:11:55', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value  TECHNICAL(ME)					<br>members now contain value HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; <br>'),
('add', 'ADMIN', '2017-01-18 20:12:58', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value KSA TEAM  ASSISTANCE  (ME)<br>members now contain value KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ; <br>'),
('add', 'ADMIN', '2017-01-18 20:14:44', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value KSA TEAM  ASSISTANCE (ME)<br>members now contain value KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ; <br>'),
('add', 'ADMIN', '2017-01-18 20:15:16', 'admin', 'department', 'id region now contain value MIDDLE EAST <br>department name now contain value EOS TEAM (ME)<br>members now contain value MICHAEL SLY ; SHIYAS NAZARUDEEN ; <br>'),
('delete', 'ADMIN', '2017-01-18 20:22:19', 'admin', 'department', 'KSA TEAM  ASSISTANCE (ME) deleted'),
('add', 'ADMIN', '2017-01-18 21:31:53', 'admin', 'meo_users', 'user id now contain value SGS001<br>user full name now contain value DIDI JAYA SAPUTRA<br>user email now contain value DIDI.SAPUTRA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DIRECTOR OF PT. SGS<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:43:19', 'admin', 'meo_users', 'user id now contain value E0020<br>user full name now contain value JOYCE TAN<br>user email now contain value JOYCE.TAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - COMMERCIAL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 21:45:04', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:47:21', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:47:26', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG; DIEDERIK DE BOER;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-18 21:52:19', 'admin', 'meo_users', 'FRANK TAM deleted'),
('add', 'ADMIN', '2017-01-18 21:53:05', 'admin', 'meo_users', 'user id now contain value S00309<br>user full name now contain value FRANK TAM<br>user email now contain value FRANK.TAM@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FPM TESTING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 21:53:39', 'admin', 'meo_users', 'user id now contain value S00332<br>user full name now contain value KEITH NG<br>user email now contain value KEITH.NG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - COMMERCIAL (ASEAN)<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 21:54:15', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM;  to LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM; FRANK TAM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-18 21:54:29', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ASEAN BU to ASEAN BU<br>members updates from ANKUSH SHAM AGARWAL; NICHOLAS SEET CHONG KUN;  to ANKUSH SHAM AGARWAL; NICHOLAS SEET CHONG KUN; KEITH NG; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-18 22:14:54', 'admin', 'meo_users', 'user id now contain value SGS023<br>user full name now contain value ANGGARA MULIA<br>user email now contain value ANGGARA.MULIA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MARKETING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:15:40', 'admin', 'meo_users', 'user id now contain value SGS010<br>user full name now contain value VANESSA TALAVERA AQUINO<br>user email now contain value VANESSA.AQUINO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MARKETING SPECIALIST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:16:20', 'admin', 'meo_users', 'user id now contain value SPS004<br>user full name now contain value YENNY IMELDA MARTHING<br>user email now contain value YENNY.MARTHING@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING MANAGER <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:16:54', 'admin', 'meo_users', 'user id now contain value SPS010<br>user full name now contain value KUNTO WIBISONO<br>user email now contain value KUNTO.WIBISONO@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:20:10', 'admin', 'meo_users', 'user id now contain value SGS024<br>user full name now contain value DODI SETIAGAMA<br>user email now contain value DODI.SETIAGAMA@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:21:15', 'admin', 'meo_users', 'user id now contain value SPS008<br>user full name now contain value AGUS TRI ATMOJO<br>user email now contain value AGUS.ATMOJO@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:21:48', 'admin', 'meo_users', 'user id now contain value SGS020<br>user full name now contain value DEDI SUPRIYADI<br>user email now contain value DEDI.SUPRIYADI@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING & FINANCE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:22:28', 'admin', 'meo_users', 'user id now contain value SPS002<br>user full name now contain value ADI MASTIN<br>user email now contain value ADI.MASTIN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:23:38', 'admin', 'meo_users', 'user id now contain value SGS014<br>user full name now contain value RIZKA NOMITURSILOJATI<br>user email now contain value RIZKA.NOMITURSILOJATI@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:24:45', 'admin', 'meo_users', 'user id now contain value NPP004<br>user full name now contain value DIAN UTAMI<br>user email now contain value DIAN.UTAMI@NPP-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTING STAFF<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:25:18', 'admin', 'meo_users', 'user id now contain value MEOS005<br>user full name now contain value ANDREW KESAULYA<br>user email now contain value ANDREW.KESAULYA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SINGAPORE ACCOUNTING FOR SAP - AP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:27:04', 'admin', 'meo_users', 'user id now contain value SGS002<br>user full name now contain value NAHARADAM WIJAYA<br>user email now contain value NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FLEET MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:30:46', 'admin', 'meo_users', 'user id now contain value SGS019<br>user full name now contain value ALPHARD OKA ARIFIN<br>user email now contain value ALPHARD.ARIFIN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATION STAFF<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:31:57', 'admin', 'meo_users', 'user id now contain value SGS016<br>user full name now contain value YULIANTORO<br>user email now contain value YULIANTORO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:32:43', 'admin', 'meo_users', 'user id now contain value SGS018<br>user full name now contain value PAING WIDODO<br>user email now contain value PAING.WIDODO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL ASSISTANCE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:33:16', 'admin', 'meo_users', 'user id now contain value SGS008<br>user full name now contain value AZIZ ARZIZAL<br>user email now contain value AZIZ.ARZIZAL@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:34:04', 'admin', 'meo_users', 'user id now contain value SPS025<br>user full name now contain value DEKY WERDOKO<br>user email now contain value DEKY.WERDOKO@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:34:21', 'admin', 'meo_users', 'user id now contain value SPS009<br>user full name now contain value ERNA RENSI NORA<br>user email now contain value EMA.RENSINORA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING ADMIN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:34:45', 'admin', 'meo_users', 'user id now contain value SGS006<br>user full name now contain value RICKY KURNIAWAN<br>user email now contain value RICKY.KURNIAWAN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:35:14', 'admin', 'meo_users', 'user id now contain value SGS011<br>user full name now contain value DANI GUNAWAN<br>user email now contain value DANI.GUNAWAN@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HRD MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:36:07', 'admin', 'meo_users', 'user id now contain value SGS027<br>user full name now contain value LIA ANGGRAINY GINTING<br>user email now contain value LIA.GINTING@SPS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value STAFF ADMINISTRATION<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:37:20', 'admin', 'meo_users', 'user id now contain value SGS004<br>user full name now contain value AGUS SETYO BUDI S.<br>user email now contain value -@SGS-OFFSHORE.COM<br>staff client now contain value MEO STAFF<br>designation now contain value DRIVER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:38:20', 'admin', 'meo_users', 'user id now contain value MEOS010<br>user full name now contain value THEO ANDRIAN<br>user email now contain value THEO.ANDRIAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATION EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 22:39:37', 'admin', 'meo_users', 'user id now contain value MEOS009<br>user full name now contain value RENALDO DARMADI<br>user email now contain value RENALDO.DARMADI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATION ASST<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:45:39', 'admin', 'meo_users', 'user id now contain value MEOS012<br>user full name now contain value FIRMAN LESMANA<br>user email now contain value FRIMAN.LESMANA@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:46:50', 'admin', 'meo_users', 'user id now contain value SPS011<br>user full name now contain value SUHARNO<br>user email now contain value -----@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC SUPERVISIOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:48:18', 'admin', 'meo_users', 'user id now contain value SPS012<br>user full name now contain value DRIPRANTO<br>user email now contain value ---------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value FOREMAN MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:48:54', 'admin', 'meo_users', 'user id now contain value SPS017<br>user full name now contain value NUNU DIHARJA<br>user email now contain value --------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:50:02', 'admin', 'meo_users', 'user id now contain value SPS015<br>user full name now contain value M. EGA PERMANA<br>user email now contain value ----------@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:50:58', 'admin', 'meo_users', 'user id now contain value SPS013<br>user full name now contain value KUSTIYO ADI<br>user email now contain value NIL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:51:42', 'admin', 'meo_users', 'user id now contain value SPS014<br>user full name now contain value HENDRA KUSUMA<br>user email now contain value NILL@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:52:33', 'admin', 'meo_users', 'user id now contain value SPS016<br>user full name now contain value M. ISMAIL<br>user email now contain value __@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MECHANIC<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:53:16', 'admin', 'meo_users', 'user id now contain value SPS021<br>user full name now contain value ZAHRUDIN<br>user email now contain value _@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WELDER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:54:17', 'admin', 'meo_users', 'user id now contain value SPS020<br>user full name now contain value EFFENDI SAPUTRA<br>user email now contain value ___@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value WELDER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:55:01', 'admin', 'meo_users', 'user id now contain value SPS019<br>user full name now contain value FIRMAN PERDANA<br>user email now contain value ____@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRICIAN<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:55:27', 'admin', 'meo_users', 'user id now contain value MEOS002<br>user full name now contain value LUKMAN AFFANDY<br>user email now contain value LUKMAN.AFFANDY@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ROVING COMMERCIAL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-18 23:56:25', 'admin', 'meo_users', 'user id updates from S00358 to S00358<br>user full name updates from REKHA NANDWANI to REKHA NANDWANI<br>user email updates from REKHA.NANDWANI@MEOGROUP.COM to REKHA.NANDWANI@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from EXECUTIVE - BUSINESS PROCESS - KMC to KNOWLEDGE ANALYST<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-18 23:57:00', 'admin', 'meo_users', 'user id now contain value MEOS003<br>user full name now contain value CHAIRUDDIN<br>user email now contain value CHAIRUDDIN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SCM SUPERVISIOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-18 23:57:48', 'admin', 'meo_users', 'user id now contain value SPS026<br>user full name now contain value EKO BUDI TARMANTO<br>user email now contain value BUDI.TARMANTO@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PROJECT SUPERINTENDENT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 00:10:15', 'admin', 'vessel_region', 'id region updates from INDONESIA to JAKARTA<br>id vessel name updates from EXPRESS 2; EXPRESS 52; EXPRESS 54; EXPRESS 92; SEISMIC SUPPORTER;  to EXPRESS 2; EXPRESS 52; EXPRESS 54; EXPRESS 92; SEISMIC SUPPORTER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 00:12:13', 'admin', 'region', 'id group bu updates from ROW - OTHERS to ROW - OTHERS<br>region title updates from OTHERS to ROW- OTHERS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 00:12:32', 'admin', 'region', 'id group bu updates from ROW- AUSTRALIA to ROW - OTHERS<br>region title updates from ROW-AUSTRALIA to ROW-AUSTRALIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 00:13:04', 'admin', 'vessel_region', 'id region updates from ROW-AUSTRALIA to ROW- OTHERS<br>id vessel name updates from MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101;  to MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 00:13:19', 'admin', 'vessel_region', 'id region updates from ROW- OTHERS to ROW-AUSTRALIA<br>id vessel name updates from MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101;  to MEO MONARCH 1; MEO MONARCH 2; ALERT; SAMSON 6; SAMSON 7; TARKA; SAMSON 101; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 00:14:16', 'admin', 'groupbu', 'group bu name updates from ROW - OTHERS to ROW <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-19 00:14:38', 'admin', 'groupbu', 'ROW- AUSTRALIA deleted'),
('update', 'ADMIN', '2017-01-19 00:17:38', 'admin', 'vessel_region', 'id region updates from SINGAPORE  to SPECIALISED VESSEL SERVICES (SVS)<br>id vessel name updates from ENDURANCE; ENTERPRISE; SOVEREIGN 2; SOVERIEGN 1; RANGER;  to ENDURANCE; ENTERPRISE; SOVEREIGN 2; SOVERIEGN 1; RANGER; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 00:22:36', 'admin', 'region', 'id group bu updates from ASEAN to ASEAN<br>id entity updates from MICLYN EXPRESS OFFSHORE PTE LTD to <br>region title updates from BRUNEI to BRUNEI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 00:24:35', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - DUBAI<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:24:38', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - DUBAI<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:26:07', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value MANAGEMENT (INDO)<br>members now contain value DIDI JAYA SAPUTRA; <br>'),
('add', 'ADMIN', '2017-01-19 00:26:50', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value MARKETING (INDO)<br>members now contain value ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>'),
('update', 'ADMIN', '2017-01-19 00:28:49', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from MIDDLE EAST  to MIDDLE EAST  - DUBAI <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 00:29:04', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value MIDDLE EAST - KSA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:31:16', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:31:28', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:31:46', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:32:23', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:32:36', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:32:42', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value CREWING (INDO)<br>members now contain value YENNY IMELDA MARTHING; KUNTO WIBISONO; DODI SETIAGAMA; AGUS TRI ATMOJO; <br>'),
('add', 'ADMIN', '2017-01-19 00:34:01', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value ACCOUNTING (INDO)<br>members now contain value DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; <br>'),
('add', 'ADMIN', '2017-01-19 00:34:23', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 00:39:58', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value OPERATIONS / TECHNICAL (INDO)<br>members now contain value NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; <br>'),
('add', 'ADMIN', '2017-01-19 00:40:26', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value PURCHASING (INDO)<br>members now contain value AZIZ ARZIZAL; <br>'),
('add', 'ADMIN', '2017-01-19 00:41:00', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value TRAINING (INDO)<br>members now contain value DEKY WERDOKO; ERNA RENSI NORA; <br>'),
('add', 'ADMIN', '2017-01-19 00:45:01', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value HSQE (INDO)<br>members now contain value RICKY KURNIAWAN; <br>'),
('add', 'ADMIN', '2017-01-19 00:45:27', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value HRD (INDO)<br>members now contain value DANI GUNAWAN; LIA ANGGRAINY GINTING; AGUS SETYO BUDI S.; <br>'),
('update', 'ADMIN', '2017-01-19 00:54:50', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from OPERATIONS / TECHNICAL (INDO) to OPERATIONS / TECHNICAL (INDO)<br>members updates from NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO;  to NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:00:12', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from SOVEREIGN 2 to SOVEREIGN 2<br>id vessel type updates from DP2 AHTS to MULTICAT/  TUGS<br>id entity updates from Array to <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 01:13:43', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR <br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 01:13:55', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 01:23:34', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT to MANAGEMENT (SIN)<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG; DIEDERIK DE BOER;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:23:38', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from MANAGEMENT (SIN) to MANAGEMENT (SIN)<br>members updates from INDRANIL MAJUMDAR; VENKATRAMAN SHESHASHAYEE; DEREK KOH; DARREN ANG; DIEDERIK DE BOER;  to VENKATRAMAN SHESHASHAYEE; INDRANIL MAJUMDAR; DIEDERIK DE BOER; DARREN ANG; DEREK KOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:23:57', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE (SIN)<br>members updates from REKHA NANDWANI; LIM HUI SHAN; JOVY CHAY;  to REKHA NANDWANI; LIM HUI SHAN; JOVY CHAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:24:15', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HUMAN RESOURCES						 to HUMAN RESOURCES (SIN)						<br>members updates from CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; EUNICE TAN; LEE PEI ZHEN;  to CAREEN CHENG ; VERA ONG ; SOPHIE TAN JIA HUI ; EUNICE TAN; LEE PEI ZHEN; <br>status updates from active to active<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-01-19 01:25:01', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; DARREN YEOH;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:25:04', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						 to HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						<br>members updates from ONG BOON SENG; CLAYTON HOSANNA; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; DARREN YEOH;  to ONG BOON SENG; FOONG LAI LENG, LINDY; SANKET ASHOK SHUKLA; CLAYTON HOSANNA; DARREN YEOH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:25:22', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FLEET PLANNED MAINTENANCE (LEVEL 5)						 to FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>members updates from LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM; FRANK TAM;  to LAI CHEE YONG; LIM CHEE HOE; RYAN JIANG; LEON LIM; FRANK TAM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:25:43', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SUPPLY CHAIN MANAGEMENT						 to SUPPLY CHAIN MANAGEMENT (SIN)						<br>members updates from ABHIJIT DESHMUKH; JOYCE LIM ;  ARNOLD SILAO; JAMES LIM; CHRISTINA LING; KAMMY TAN; KENNETH LEE; EDWIN CHANG YONG QUAN;  to  ARNOLD SILAO; ABHIJIT DESHMUKH; JOYCE LIM ; CHRISTINA LING; KAMMY TAN; JAMES LIM; KENNETH LEE; EDWIN CHANG YONG QUAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:26:01', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from TECHNICAL OPERATIONS						 to TECHNICAL OPERATIONS (SIN)						<br>members updates from TAN HEE HUA; BHARANI KUMAR PALAKODETI; ALI HUSSAIN; DOYLE CHAVEZ FIGUERAS; AKAASH GANESH; EBEN TAN ; ERIK TING; NYEIN CHAN AUNG; ELAINE CHUAH; IAN JESTER ERAS REYES;  to TAN HEE HUA; DOYLE CHAVEZ FIGUERAS; IAN JESTER ERAS REYES; AKAASH GANESH; ALI HUSSAIN; BHARANI KUMAR PALAKODETI; EBEN TAN ; NYEIN CHAN AUNG; ELAINE CHUAH; ERIK TING; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:26:17', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from CREWING (LEVEL  5) to CREWING (LEVEL  5) (SIN)<br>members updates from HUZAIFA; SANDRA  JERNIGAN; ONG PEI LING, WENDY; MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; CHEN YING LEI; ALEZS WONG;  to MOHAMED ARIS BIN MUSA; NORAZLINA BINTE SANIN; ONG PEI LING, WENDY; CHEN YING LEI; SANDRA  JERNIGAN; HUZAIFA; ALEZS WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:26:31', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from FINANCE to FINANCE (SIN)<br>members updates from CHRISTOPHER WHITE; HONG SHUMIN; TAN LEA JOO; XIE ZIHUI; LIM LI JU; POH CHING HOON; LALITHA NAIR; HEMA  MANOHARAN; JOYCELYN WONG PUI YEE; AU PEI KWAN; JOSEPHINE LEE; ELIZABETH WONG; BELINDA LI; KELLY ZHANG JING; BAY SOO PENG; GLADYS CHUA; ALIS KHOO ; CHLOE NG; JANICE TENG ; AMELIA NG; ELAINE LAU;  to POH CHING HOON; JOYCELYN WONG PUI YEE; HONG SHUMIN; AU PEI KWAN; CHRISTOPHER WHITE; LALITHA NAIR; XIE ZIHUI; TAN LEA JOO; LIM LI JU; HEMA  MANOHARAN; KELLY ZHANG JING; ELIZABETH WONG; JANICE TENG ; ALIS KHOO ; GLADYS CHUA; BELINDA LI; AMELIA NG; BAY SOO PENG; CHLOE NG; JOSEPHINE LEE; ELAINE LAU; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:26:48', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from LEGAL						 to LEGAL (SIN)						<br>members updates from JANE ALLAN; LEE SHIN HUAY; WEE HANQUN; JAMIE LEE;  to JANE ALLAN; WEE HANQUN; LEE SHIN HUAY; JAMIE LEE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:27:02', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MANAGEMENT (INDO) to MANAGEMENT (INDO)<br>cost centre updates from  to SDFSDFS<br>members updates from DIDI JAYA SAPUTRA;  to DIDI JAYA SAPUTRA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:27:04', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ENTERPRISE RISK MANAGEMENT						 to ENTERPRISE RISK MANAGEMENT (SIN)						<br>members updates from LIM BENG HWEE;  to LIM BENG HWEE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:27:19', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from ADMINISTRATION						 to ADMINISTRATION (SIN)						<br>members updates from NORRASHIDAH BINTE MOHAMED; ELAINE TAY;  to NORRASHIDAH BINTE MOHAMED; ELAINE TAY; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:27:33', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from GROUP COMMERCIAL						 to GROUP COMMERCIAL	(SIN)					<br>members updates from MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO;  to MILI SANJAY VERMA; SHREYAS CHANDRAKANTHA RAO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:27:53', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from SPECIALISED VESSEL SERVICES						 to SPECIALISED VESSEL SERVICES	(SIN)					<br>members updates from ADAM RALEIGH CLAYTON; KEN LIVINGSTONE; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; CHONG SIN KEONG; BURHANUDDIN BIN MOHAMAD;  to ADAM RALEIGH CLAYTON; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; BURHANUDDIN BIN MOHAMAD; CHONG SIN KEONG; KEN LIVINGSTONE; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:28:15', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 01:28:40', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from INFORMATION TECHNOLOGY (IT) to INFORMATION TECHNOLOGY (IT) (SIN)<br>members updates from LEWIS LOW; JOAN LAW; JOSHUA LAM KHIAN KOK; SATHISVARAN CHIDAMBARAM; KISHORE SEGAR; MATHANRAJ VEERASAMY;  to SATHISVARAN CHIDAMBARAM; MATHANRAJ VEERASAMY; KISHORE SEGAR; JOAN LAW; JOSHUA LAM KHIAN KOK; LEWIS LOW; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 01:56:10', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value TEST!@$<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 02:03:35', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value ASDFSW<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 02:51:08', 'admin', 'groupbu', 'group bu name now contain value TEST<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 02:51:20', 'admin', 'region', 'id group bu  now contain value ASEAN<br>region title now contain value A<br>group region order now contain value 1<br>'),
('delete', 'ADMIN', '2017-01-19 03:59:11', 'admin', 'region', 'ASDFSW deleted'),
('delete', 'ADMIN', '2017-01-19 03:59:11', 'admin', 'region', ' deleted'),
('delete', 'ADMIN', '2017-01-19 03:59:42', 'admin', 'groupbu', 'MIDDLE EAST- DUBAI deleted'),
('delete', 'ADMIN', '2017-01-19 03:59:51', 'admin', 'groupbu', 'MIDDLE EAST- QATAR deleted'),
('delete', 'ADMIN', '2017-01-19 03:59:57', 'admin', 'groupbu', 'MIDDLE EAST- SAUDI ARABIA deleted'),
('delete', 'ADMIN', '2017-01-19 04:00:05', 'admin', 'groupbu', 'EOS- ROW deleted'),
('delete', 'ADMIN', '2017-01-19 04:00:19', 'admin', 'groupbu', 'EOS deleted'),
('delete', 'ADMIN', '2017-01-19 04:00:28', 'admin', 'groupbu', 'TEST deleted'),
('delete', 'ADMIN', '2017-01-19 04:00:41', 'admin', 'region', 'A deleted'),
('delete', 'ADMIN', '2017-01-19 04:00:43', 'admin', 'region', ' deleted'),
('add', 'ADMIN', '2017-01-19 04:01:08', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - QATAR<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 04:01:21', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST - KSA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 04:04:30', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value MIDDLE EAST<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 04:04:53', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST<br>department name updates from MANAGEMENT  (ME) to MANAGEMENT  (ME)<br>members updates from DENIS WELCH;  to DENIS WELCH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:05:06', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST<br>department name updates from EOS TEAM (ME) to EOS TEAM (ME)<br>members updates from MICHAEL SLY ; SHIYAS NAZARUDEEN ;  to MICHAEL SLY ; SHIYAS NAZARUDEEN ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:06:57', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from MIDDLE EAST to UAE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:07:47', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from UAE to MIDDLE EAST - UAE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:08:06', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from KSA TEAM  ASSISTANCE  (ME) to KSA TEAM  ASSISTANCE  (ME)<br>members updates from KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ;  to KHALID SAOUD A AL SHAMMARY; HASHIM AL SEFI; ABDUL KADIR BUTHIYABURAYIL; THATHAMMA MOHAMMED MOOSA ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:08:20', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:08:35', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:08:48', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from COMMERCIAL TEAM  (ME) to COMMERCIAL TEAM  (ME)<br>members updates from RIK KREUNEN; MUKUND RAJAMANI ; ANGELA EMATA BAYRON ;  to RIK KREUNEN; MUKUND RAJAMANI ; ANGELA EMATA BAYRON ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:09:01', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:09:14', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from CREWING DEPARTMENT (ME) to CREWING DEPARTMENT (ME)<br>members updates from RABINDRA DASH ; AISHA FERRER; ANABEL BALINA; ANNALYN BUATIS ; AVDHUT DHAYBAR; BISYRUN HASAN BASRI; ALI ESSA M AL OBAIDI;  to RABINDRA DASH ; AISHA FERRER; ANABEL BALINA; ANNALYN BUATIS ; AVDHUT DHAYBAR; BISYRUN HASAN BASRI; ALI ESSA M AL OBAIDI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:09:31', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from HSQE & TRAINING  (ME) to HSQE & TRAINING  (ME)<br>members updates from ABDALLA ABUELGASIM; SHERIF ABDELHAMID ; JOSEPH GEORGE; RAMLI RASBI; ANNA  LIZA CELLANO;  to ABDALLA ABUELGASIM; SHERIF ABDELHAMID ; JOSEPH GEORGE; RAMLI RASBI; ANNA  LIZA CELLANO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:09:44', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from FINANCE TEAM (ME) to FINANCE TEAM (ME)<br>members updates from DEREK LO ; SANDESH GOPAL PALAN ; NITIN PUROHIT ; DEEPAK PANDEY ; ASHVITH AMIN; ABHILASH ;  to DEREK LO ; SANDESH GOPAL PALAN ; NITIN PUROHIT ; DEEPAK PANDEY ; ASHVITH AMIN; ABHILASH ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:09:57', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 04:13:25', 'admin', 'meo_users', 'user id now contain value ME00008<br>user full name now contain value JUANITO BASCON SANTOS <br>user email now contain value JUANITO.SANTOS@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ELECTRICIAN (KSA)<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-19 04:15:36', 'admin', 'meo_users', 'user id now contain value ME00116<br>user full name now contain value CESAR CAYABAN<br>user email now contain value CESAR.CAYABAN@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value INVENTORY & LOGISTICS EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-19 04:16:59', 'admin', 'meo_users', 'user id now contain value ME00117<br>user full name now contain value GEMMA KALAW<br>user email now contain value GEMMA.KALAW@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-19 04:20:44', 'admin', 'meo_users', 'user id now contain value ME00115<br>user full name now contain value SYARLY CAHYADI<br>user email now contain value SYARLY.CAHYADI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PORT CAPTAIN<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 04:20:53', 'admin', 'groupbu', 'group bu name updates from SVS to SINGAPORE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:21:09', 'admin', 'region', 'id group bu updates from ASEAN to SINGAPORE<br>region title updates from SINGAPORE  to SINGAPORE <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-19 04:24:10', 'admin', 'region', 'JAKARTA deleted'),
('delete', 'ADMIN', '2017-01-19 04:24:11', 'admin', 'region', ' deleted'),
('update', 'ADMIN', '2017-01-19 04:24:46', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; JUANITO BASCON SANTOS ; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 04:24:54', 'admin', 'region', 'id group bu  now contain value ROW <br>region title now contain value EOS<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 04:25:16', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; SYARLY CAHYADI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:25:59', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; GEMMA KALAW; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 04:26:26', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; CESAR CAYABAN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 19:48:58', 'admin', 'meo_users', 'user id now contain value SGS028<br>user full name now contain value FATRONI<br>user email now contain value FATRONI@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ACCOUNTANT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 19:49:40', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (INDO)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 19:53:58', 'admin', 'meo_users', 'user id now contain value M016<br>user full name now contain value WONG LOON SENG<br>user email now contain value LOONSENG.WONG@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SUPERINTENDENT<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-19 19:54:18', 'admin', 'department', 'id region updates from MALAYSIA to MALAYSIA<br>department name updates from OPERATION (MSIA) to OPERATION (MSIA)<br>members updates from AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN;  to AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; WONG LOON SENG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 19:54:52', 'admin', 'department', 'id region updates from MALAYSIA to MALAYSIA<br>department name updates from TECHNICAL (MSIA) to TECHNICAL (MSIA)<br>members updates from SYED MUBARAK; AAN KUSNANDAR;  to SYED MUBARAK; AAN KUSNANDAR; WONG LOON SENG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 19:55:07', 'admin', 'department', 'id region updates from MALAYSIA to MALAYSIA<br>department name updates from OPERATION (MSIA) to OPERATION (MSIA)<br>members updates from AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; WONG LOON SENG;  to AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 20:18:29', 'admin', 'vessel_region', 'id region  now contain value THAILAND, SAT<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-19 20:22:20', 'admin', 'vessel_region', 'id region updates from THAILAND, SKL to THAILAND, SKL<br>id vessel name updates from SOVEREIGN 2; ENTERPRISE; AOS 8; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 81; MICLYN ENERGY; UNIWISE ADVANCER; MEO VIGILANT; MICLYN CONSTRUCTOR I; UNIWISE RAYONG; UNIWISE SONGKHLA; MEO EMPEROR; UNIWISE SUPPORTER; UNIWISE ADVENTURE; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 15; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 18; UNI EXPRESS 23; UNI EXPRESS 21; UNI EXPRESS 20; UNI EXPRESS 19; UNI EXPRESS 22; UNI EXPRESS 24; UNI EXPRESS 25; EXPRESS 53; AOS 1; MEO VALIANT; AOS RATCHABURI; AOS PHUKET; AOS PATTAYA;  to SOVEREIGN 2; ENTERPRISE; AOS 8; UNI EXPRESS 21; EXPRESS 35; EXPRESS 36; EXPRESS 53; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; UNI EXPRESS 20; EXPRESS 65; UNI EXPRESS 18; EXPRESS 71; EXPRESS 73; UNI EXPRESS 23; UNI EXPRESS 24; EXPRESS 81; MICLYN ENERGY; UNIWISE ADVANCER; MEO VALIANT; MEO VIGILANT; MICLYN CONSTRUCTOR I; UNI EXPRESS 22; AOS PHUKET; UNIWISE SONGKHLA; MEO EMPEROR; UNI EXPRESS 25; UNIWISE SUPPORTER; UNIWISE ADVENTURE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 20:26:41', 'admin', 'vessel_region', 'id region  now contain value THAILAND, SKL<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-19 20:27:27', 'admin', 'vessel_region', 'id region updates from THAILAND, SKL to THAILAND, SKL<br>id vessel name updates from AOS 8; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 80; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; UNI EXPRESS 18; UNI EXPRESS 21; UNI EXPRESS 22; UNI EXPRESS 23; UNI EXPRESS 24; UNI EXPRESS 25; AOS PHUKET; UNIWISE SONGKHLA; UNIWISE ADVANCER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; UNIWISE SUPPORTER; MICLYN ENTERPRISE; MICLYN ENERGY; MICLYN CONSTRUCTOR I; MEO SOVEREIGN II; MEO VIGILANT;  to AOS 8; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 80; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; UNI EXPRESS 18; UNI EXPRESS 21; UNI EXPRESS 22; UNI EXPRESS 23; UNI EXPRESS 24; UNI EXPRESS 25; AOS PHUKET; UNIWISE SONGKHLA; UNIWISE ADVANCER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; UNIWISE SUPPORTER; MICLYN ENTERPRISE; MICLYN ENERGY; MICLYN CONSTRUCTOR I; MEO SOVEREIGN II; MEO VIGILANT; MEO VIGILANT; MEO VALIANT; MEO EMPRESS; MEO EMPEROR; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 20:31:25', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST  - DUBAI <br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-19 20:32:10', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - KSA<br>id vessel name  now contain value EXPRESS 90<br>'),
('add', 'ADMIN', '2017-01-19 20:32:23', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - QATAR<br>id vessel name  now contain value UNI EXPRESS 20<br>'),
('add', 'ADMIN', '2017-01-19 20:32:47', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - UAE<br>id vessel name  now contain value EXPRESS 19<br>'),
('add', 'ADMIN', '2017-01-19 20:38:58', 'admin', 'region', 'id group bu  now contain value MIDDLE EAST <br>region title now contain value SAUDI<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 20:39:10', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from SAUDI to MIDDLE EAST - SAUDI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 20:41:55', 'admin', 'vessel_region', 'id region  now contain value MIDDLE EAST - SAUDI<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-19 20:51:19', 'admin', 'vessel_region', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>id vessel name updates from EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL;  to EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL; SAMSON SUPPORTER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 20:54:38', 'admin', 'region', 'id group bu  now contain value ROVING- BATAM<br>region title now contain value BATAM<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 20:55:17', 'admin', 'vessel_region', 'id region  now contain value BATAM<br>id vessel name  now contain value EXPRESS 53<br>'),
('add', 'ADMIN', '2017-01-19 21:00:50', 'admin', 'groupbu', 'group bu name now contain value ASEAN- BRUNEI<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 21:01:18', 'admin', 'groupbu', 'group bu name now contain value ASEAN- THAILAND<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 21:01:29', 'admin', 'groupbu', 'group bu name updates from ASEAN to ASEAN- INDONESIA<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 21:01:52', 'admin', 'groupbu', 'group bu name now contain value EOS- ROW<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-19 21:02:16', 'admin', 'groupbu', 'group bu name now contain value SVS<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 21:02:33', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- THAILAND<br>region title updates from THAILAND, SKL to THAILAND, SKL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 21:02:39', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- THAILAND<br>region title updates from THAILAND, SAT to THAILAND, SAT<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 21:02:46', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- BRUNEI<br>region title updates from BRUNEI to BRUNEI<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-19 21:03:01', 'admin', 'groupbu', 'group bu name now contain value ASEAN- MALAYSIA<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-19 21:03:15', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- MALAYSIA<br>region title updates from MALAYSIA to MALAYSIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 21:03:36', 'admin', 'region', 'id group bu updates from ROW  to EOS- ROW<br>region title updates from EOS to EOS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 21:03:46', 'admin', 'region', 'id group bu updates from SINGAPORE to SVS<br>region title updates from SPECIALISED VESSEL SERVICES (SVS) to SPECIALISED VESSEL SERVICES (SVS)<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 21:53:13', 'admin', 'organisation_chart', 'chart title updates from ORG CHART OVERVIEW to ORG CHART OVERVIEW<br>status updates from Active to Active<br>image url updates from OrgChart_1484029297.pdf to OrgChart_1484882593.pdf<br>'),
('update', 'ADMIN', '2017-01-19 21:55:25', 'admin', 'groupbu', 'group bu name updates from ASEAN- THAILAND to THAILAND- UWO<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-19 22:25:49', 'admin', 'shore_address', 'shore region updates from INDIA to SINGAPORE <br>address updates from HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-19 22:26:17', 'admin', 'shore_address', 'shore region updates from INDIA to AUSTRALIA<br>address updates from FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA to FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA<br>full address updates from MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959 to MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-01-19 22:41:32', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from ORG GROUP NEW  2 to KNOWLEDGE MANAGEMENT CENTRE<br>member name updates from BHARAT;  to KM GROUP; <br>member email updates from BHARATRAJ@SINGSYS.COM;  to KMGROUP@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-22 21:48:55', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from KNOWLEDGE MANAGEMENT CENTRE to KNOWLEDGE MANAGEMENT CENTRE<br>member name updates from KM GROUP;  to KM GROUP; <br>member email updates from KMGROUP@MEOGROUP.COM;  to KMGROUP@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 00:59:47', 'admin', 'vessel_name', 'vesselID updates from MS1 to MS1<br>vessel name updates from SOVERIEGN 1 to MEO SOVEREIGN 1<br>id vessel type updates from DP2 AHTS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:15:09', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>region title updates from INDONESIA to INDONESIA - JAKARTA<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-23 01:15:51', 'admin', 'vessel_region', 'id region  now contain value INDONESIA - JAKARTA<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-23 01:34:37', 'admin', 'vessel_region', 'id region  now contain value EOS<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-01-23 01:35:32', 'admin', 'vessel_name', 'vesselID updates from SP219 to SP219<br>vessel name updates from MICLYN VICTORY to MICYLN VICTORY<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:35:50', 'admin', 'vessel_name', 'vesselID updates from SP205 to SP205<br>vessel name updates from MICLYN ENERGY to MICYLC ENERGY<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:36:03', 'admin', 'vessel_name', 'vesselID updates from SP205 to SP205<br>vessel name updates from MICYLC ENERGY to MICYLN ENERGY<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:36:41', 'admin', 'vessel_name', 'vesselID updates from SP208 to SP208<br>vessel name updates from MICLYN GRACE to MICYLN GRACE<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:37:03', 'admin', 'vessel_name', 'vesselID updates from SP209 to SP209<br>vessel name updates from MICLYN GRAND to MICYLN GRAND<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:37:22', 'admin', 'vessel_name', 'vesselID updates from SP212 to SP212<br>vessel name updates from MICLYN ONYX to MICYLN ONYX<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:37:44', 'admin', 'vessel_name', 'vesselID updates from SP213 to SP213<br>vessel name updates from MICLYN OPAL to MICYLN OPAL<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:38:11', 'admin', 'vessel_name', 'vesselID updates from SP214 to SP214<br>vessel name updates from MICLYN ORION to MICYLN ORION<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:38:59', 'admin', 'vessel_name', 'vesselID updates from SP216 to SP216<br>vessel name updates from MICLYN POWER to MICYLN POWER<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:40:36', 'admin', 'vessel_name', 'vesselID updates from SP302 to SP302<br>vessel name updates from MICLYN 181 to MICYLN 181<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:40:53', 'admin', 'vessel_name', 'vesselID updates from SP206 to SP206<br>vessel name updates from MICLYN ENTERPRISE to MICYLN ENTERPRISE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:41:16', 'admin', 'vessel_name', 'vesselID updates from SP218 to SP218<br>vessel name updates from MICLYN VENTURE to MICYLN VENTURE<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:41:54', 'admin', 'vessel_name', 'vesselID updates from SP227 to SP227<br>vessel name updates from MICLYN CONSTRUCTOR I to MICYLN CONSTRUCTOR I<br>id vessel type updates from ACCOMMODATION BARGE to ACCOMMODATION BARGE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:42:11', 'admin', 'vessel_name', 'vesselID updates from SP304 to SP304<br>vessel name updates from MICLYN 253 to MICYLN 253<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:42:27', 'admin', 'vessel_name', 'vesselID updates from SP307 to SP307<br>vessel name updates from MICLYN 257 to MICYLN 257<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:42:43', 'admin', 'vessel_name', 'vesselID updates from SP308 to SP308<br>vessel name updates from MICLYN 258 to MICYLN 258<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:43:00', 'admin', 'vessel_name', 'vesselID updates from SP309 to SP309<br>vessel name updates from MICLYN 259 to MICYLN 259<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:43:15', 'admin', 'vessel_name', 'vesselID updates from SP310 to SP310<br>vessel name updates from MICLYN 283 to MICYLN 283<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:43:28', 'admin', 'vessel_name', 'vesselID updates from SP311 to SP311<br>vessel name updates from MICLYN 285 to MICYLN 285<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:43:40', 'admin', 'vessel_name', 'vesselID updates from SP312 to SP312<br>vessel name updates from MICLYN 286 to MICYLN 286<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:43:50', 'admin', 'vessel_name', 'vesselID updates from SP313 to SP313<br>vessel name updates from MICLYN 287 to MICYLN 287<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:44:03', 'admin', 'vessel_name', 'vesselID updates from SP314 to SP314<br>vessel name updates from MICLYN 288 to MICYLN 288<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:44:13', 'admin', 'vessel_name', 'vesselID updates from SP315 to SP315<br>vessel name updates from MICLYN 301 to MICYLN 301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:44:23', 'admin', 'vessel_name', 'vesselID updates from SP316 to SP316<br>vessel name updates from MICLYN 303 to MICYLN 303<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:44:33', 'admin', 'vessel_name', 'vesselID updates from SP317 to SP317<br>vessel name updates from MICLYN 305 to MICYLN 305<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:44:42', 'admin', 'vessel_name', 'vesselID updates from SP318 to SP318<br>vessel name updates from MICLYN 2510 to MICYLN 2510<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:44:53', 'admin', 'vessel_name', 'vesselID updates from SP319 to SP319<br>vessel name updates from MICLYN 3316 to MICYLN 3316<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:45:04', 'admin', 'vessel_name', 'vesselID updates from SP320 to SP320<br>vessel name updates from MICLYN 3317 to MICYLN 3317<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:45:37', 'admin', 'vessel_name', 'vesselID updates from SP321 to SP321<br>vessel name updates from MICLYN 3318 to MICYLN 3318<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:45:48', 'admin', 'vessel_name', 'vesselID updates from SP327 to SP327<br>vessel name updates from MICLYN 3301 to MICYLN 3301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:45:58', 'admin', 'vessel_name', 'vesselID updates from SP204 to SP204<br>vessel name updates from MICLYN ENDURANCE to MICYLN ENDURANCE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 01:50:56', 'admin', 'vessel_region', 'id region updates from EOS to EOS<br>id vessel name updates from MICYLN VENTURE; EOS 281; EOS 282; EOS 283; EOS 285; EOS 4001; EOS 4002; M 3319; M 3319; M 3319; M 3320;  to MICYLN VENTURE; EOS 281; EOS 282; EOS 283; EOS 285; EOS 4001; EOS 4002; M 3319; M 3319; M 3319; M 3320; MICYLN 253; MICYLN 257; MICYLN 258; MICYLN 259; MICYLN 2510; MICYLN 288; MICYLN 287; MICYLN 286; MICYLN 285; MICYLN 283; MICYLN 259; MICYLN 301; MICYLN 303; MICYLN 305; MICYLN 3301; MICYLN 3316; MICYLN 3317; MICYLN 3318; EOS 281; EOS 281; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 04:03:48', 'admin', 'groupbu', 'group bu name updates from ROVING- BATAM to PTLL - BATAM<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 04:04:21', 'admin', 'groupbu', 'group bu name updates from SINGAPORE to SINGAPORE (MEO)<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-23 04:12:17', 'admin', 'groupbu', 'group bu name now contain value AUSTRALIA<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-23 04:12:40', 'admin', 'region', 'id group bu updates from ROW  to AUSTRALIA<br>region title updates from ROW-AUSTRALIA to AUSTRALIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 04:22:16', 'admin', 'department', 'id region updates from SINGAPORE  to SINGAPORE <br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; MICHAEL SLY ; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:02:40', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS; GEMMA KALAW;  to SAMWAIL FOUAD; TAHIR ABBAS; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:02:44', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:03:28', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; SYARLY CAHYADI;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:04:38', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; JUANITO BASCON SANTOS ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:05:11', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; CESAR CAYABAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:05:54', 'admin', 'department', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (INDO)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:14:43', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from ACCOUNTING to ACCOUNTING (BRUNEI)<br>members updates from TAN LEA JOO;  to TAN LEA JOO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:14:57', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from ADMINISTRATION						 to ADMINISTRATION (BRUNEI)		<br>members updates from BELINDA WONG;  to BELINDA WONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:16:45', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from OPERATIONS / TECHNICAL  to OPERATIONS / TECHNICAL (BRUNEI)<br>members updates from KOK WEI KONG; SHAFIQ ABDULLAH ;  to KOK WEI KONG; SHAFIQ ABDULLAH ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:17:12', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from CREWING to CREWING (BRUNEI)<br>members updates from ARDY  BAKAR;  to ARDY  BAKAR; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:17:35', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from HSQE to HSQE (BRUNEI)<br>members updates from ALDON PETER YAPP ;  to ALDON PETER YAPP ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:18:12', 'admin', 'department', 'id region updates from BRUNEI to BRUNEI<br>department name updates from PURCHASING to PURCHASING (BRUNEI)<br>members updates from KENNETH YONG;  to KENNETH YONG; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:21:34', 'admin', 'department', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (INDO)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:21:51', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from HR & ADMIN (ME) to HR & ADMIN (ME)<br>members updates from SAMWAIL FOUAD; TAHIR ABBAS;  to SAMWAIL FOUAD; TAHIR ABBAS; GEMMA KALAW; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:22:09', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from SCM (ME) to SCM (ME)<br>members updates from IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN;  to IRY GENSON; SAVIO VAZ; SUNITHA SHETTY; LIEZL FABIALA ; LENIN LAMA ; HUSSAIN ALGOBA ; SREENIVASAN NARAYANAN; CESAR CAYABAN; <br>status updates from active to active<br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-01-23 05:22:22', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from  TECHNICAL(ME)					 to  TECHNICAL(ME)					<br>members updates from HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ;  to HEMANTKUMAR PANCHAL ; VENKATESH ; VIJAY CHATTE; ALABBAS MAHDI ; JOSE WILSON OTO; HISHAM  AHAMED; YOGESH PATIL; PRADEEP KUMAR; ANDREW AUGUSTIN WOOD; ROMEO DELA CRUZ GACHO; VIRGILIO TECSON TIRO; ELNUR ABDULLAYEV; MANJULA  SAMARAKOON; ROBIN ISSAC; SAMAN PATHIRANA ; JINKHIE GALLARZAN; BAPUSO DINDE ; JUANITO BASCON SANTOS ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:22:36', 'admin', 'department', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>department name updates from OPERATIONAL (ME) to OPERATIONAL (ME)<br>members updates from RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ;  to RAVINDER HOONJAN ; AAKAAR JAIN; SOKARNO ABDALLAH ; TAMER S.BALBOUL; SALIM KAJIRU; ZOHAIR ABDELRAHIM; PAUL OCCENOLA; CHANDRASHEKAR VARMA ; JASIM HUSSAIN; BASEL KHWAIS; CIRION CENOC ; SYARLY CAHYADI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:30:12', 'admin', 'vessel_name', 'vesselID updates from SP205 to SP205<br>vessel name updates from MICYLN ENERGY to MICLYN ENERGY<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:30:24', 'admin', 'vessel_name', 'vesselID updates from SP208 to SP208<br>vessel name updates from MICYLN GRACE to MICLYN GRACE<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:30:36', 'admin', 'vessel_name', 'vesselID updates from SP209 to SP209<br>vessel name updates from MICYLN GRAND to MICLYN GRAND<br>id vessel type updates from MPSV to MPSV<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:30:47', 'admin', 'vessel_name', 'vesselID updates from SP212 to SP212<br>vessel name updates from MICYLN ONYX to MICLYN ONYX<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:30:59', 'admin', 'vessel_name', 'vesselID updates from SP213 to SP213<br>vessel name updates from MICYLN OPAL to MICLYN OPAL<br>id vessel type updates from UTILITY TUG / MULTI-PURPOSE to UTILITY TUG / MULTI-PURPOSE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:31:13', 'admin', 'vessel_name', 'vesselID updates from SP214 to SP214<br>vessel name updates from MICYLN ORION to MICLYN ORION<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:31:28', 'admin', 'vessel_name', 'vesselID updates from SP216 to SP216<br>vessel name updates from MICYLN POWER to MICLYN POWER<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:31:41', 'admin', 'vessel_name', 'vesselID updates from SP218 to SP218<br>vessel name updates from MICYLN VENTURE to MICLYN VENTURE<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:31:55', 'admin', 'vessel_name', 'vesselID updates from SP219 to SP219<br>vessel name updates from MICYLN VICTORY to MICLYN VICTORY<br>id vessel type updates from AHT / AHTS to AHT / AHTS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:32:06', 'admin', 'vessel_name', 'vesselID updates from SP227 to SP227<br>vessel name updates from MICYLN CONSTRUCTOR I to MICLYN CONSTRUCTOR I<br>id vessel type updates from ACCOMMODATION BARGE to ACCOMMODATION BARGE<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:32:17', 'admin', 'vessel_name', 'vesselID updates from SP302 to SP302<br>vessel name updates from MICYLN 181 to MICLYN 181<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:32:27', 'admin', 'vessel_name', 'vesselID updates from SP304 to SP304<br>vessel name updates from MICYLN 253 to MICLYN 253<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:32:37', 'admin', 'vessel_name', 'vesselID updates from SP307 to SP307<br>vessel name updates from MICYLN 257 to MICLYN 257<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:32:47', 'admin', 'vessel_name', 'vesselID updates from SP308 to SP308<br>vessel name updates from MICYLN 258 to MICLYN 258<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:00', 'admin', 'vessel_name', 'vesselID updates from SP309 to SP309<br>vessel name updates from MICYLN 259 to MICLYN 259<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:10', 'admin', 'vessel_name', 'vesselID updates from SP310 to SP310<br>vessel name updates from MICYLN 283 to MICLYN 283<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:20', 'admin', 'vessel_name', 'vesselID updates from SP311 to SP311<br>vessel name updates from MICYLN 285 to MICLYN 285<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:29', 'admin', 'vessel_name', 'vesselID updates from SP312 to SP312<br>vessel name updates from MICYLN 286 to MICLYN 286<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:38', 'admin', 'vessel_name', 'vesselID updates from SP313 to SP313<br>vessel name updates from MICYLN 287 to MICLYN 287<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:49', 'admin', 'vessel_name', 'vesselID updates from SP314 to SP314<br>vessel name updates from MICYLN 288 to MICLYN 288<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:33:59', 'admin', 'vessel_name', 'vesselID updates from SP315 to SP315<br>vessel name updates from MICYLN 301 to MICLYN 301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:34:07', 'admin', 'vessel_name', 'vesselID updates from SP316 to SP316<br>vessel name updates from MICYLN 303 to MICLYN 303<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:34:17', 'admin', 'vessel_name', 'vesselID updates from SP317 to SP317<br>vessel name updates from MICYLN 305 to MICLYN 305<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:34:27', 'admin', 'vessel_name', 'vesselID updates from SP318 to SP318<br>vessel name updates from MICYLN 2510 to MICLYN 2510<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:34:36', 'admin', 'vessel_name', 'vesselID updates from SP319 to SP319<br>vessel name updates from MICYLN 3316 to MICLYN 3316<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:34:45', 'admin', 'vessel_name', 'vesselID updates from SP320 to SP320<br>vessel name updates from MICYLN 3317 to MICLYN 3317<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:34:54', 'admin', 'vessel_name', 'vesselID updates from SP321 to SP321<br>vessel name updates from MICYLN 3318 to MICLYN 3318<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:35:04', 'admin', 'vessel_name', 'vesselID updates from SP327 to SP327<br>vessel name updates from MICYLN 3301 to MICLYN 3301<br>id vessel type updates from BARGES to BARGES<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:35:14', 'admin', 'vessel_name', 'vesselID updates from SP204 to SP204<br>vessel name updates from MICYLN ENDURANCE to MICLYN ENDURANCE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 05:35:27', 'admin', 'vessel_name', 'vesselID updates from SP206 to SP206<br>vessel name updates from MICYLN ENTERPRISE to MICLYN ENTERPRISE<br>id vessel type updates from DP2 SUBSEA SUPPORT VESSEL to DP2 SUBSEA SUPPORT VESSEL<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-23 06:03:00', 'admin', 'group_name', 'group name updates from GROUP NAME 3 to TEST<br>group description updates from GROUP NAME 3 to GROUP NAME 3<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-24 05:00:37', 'admin', 'meo_users', 'user id now contain value 112<br>emp id now contain value 00296<br>user full name now contain value BHATA<br>user email now contain value BHARATRAJ+1111@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QUALITY CONTROL ENGINEER<br>expiry date now contain value 2017-01-25<br>'),
('update', 'ADMIN', '2017-01-24 05:00:52', 'admin', 'meo_users', 'user id updates from 112 to 112<br>emp id updates from 00296 to 00296<br>user full name updates from BHATA to BHATA<br>user email updates from BHARATRAJ+1111@SINGSYS.COM to BHARATRAJ+1111@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QUALITY CONTROL ENGINEER to QUALITY CONTROL ENGINEER<br>status updates from active to active<br>expiry date updates from 2017-01-25 to <br>'),
('add', 'ADMIN', '2017-01-24 06:50:44', 'admin', 'meo_users', 'user id now contain value 123<br>emp id now contain value 0320<br>user full name now contain value AKASH<br>user email now contain value AKASHKUMAR@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QUALITY ENGINEER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-24 06:56:36', 'admin', 'meo_users', 'user id now contain value 12345678<br>emp id now contain value 12<br>user full name now contain value QWERTY<br>user email now contain value A@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value QCE<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-01-24 06:56:57', 'admin', 'meo_users', 'user id updates from 12345678 to 12345678<br>emp id updates from 12 to 296<br>user full name updates from QWERTY to QWERTY<br>user email updates from A@SINGSYS.COM to A@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 06:57:20', 'admin', 'meo_users', 'user id updates from 12345678 to 12345678<br>emp id updates from 296 to 00296<br>user full name updates from QWERTY to QWERTY<br>user email updates from A@SINGSYS.COM to A@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 06:59:47', 'admin', 'meo_users', 'user id updates from 12345678 to 12345678<br>emp id updates from 00296 to 00296<br>user full name updates from QWERTY to QWERTY<br>user email updates from A@SINGSYS.COM to A@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:14:19', 'admin', 'meo_users', 'user id updates from E0003 to E0003<br>emp id updates from  to 2<br>user full name updates from ONG CHEE WEE to ONG CHEE WEE<br>user email updates from CHEEWEE.ONG@MEOGROUP.COM to CHEEWEE.ONG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from PROJECT MANAGER to PROJECT MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:14:28', 'admin', 'meo_users', 'user id updates from E0007 to E0007<br>emp id updates from  to 3<br>user full name updates from RHYAN DELOS REYES SABRIDO to RHYAN DELOS REYES SABRIDO<br>user email updates from RHYAN.SABRIDO@MEOGROUP.COM to RHYAN.SABRIDO@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from ASST. MANAGER - PROJECT to ASST. MANAGER - PROJECT<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:14:45', 'admin', 'meo_users', 'user id updates from E0008 to E0008<br>emp id updates from  to 4<br>user full name updates from COLIN DAVID TREWHELLA to COLIN DAVID TREWHELLA<br>user email updates from COLIN.TREWHELLA@MEOGROUP.COM to COLIN.TREWHELLA@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GM - OPERATIONS to GM - OPERATIONS<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:14:55', 'admin', 'meo_users', 'user id updates from E0001 to E0001<br>emp id updates from  to 5<br>user full name updates from MARK PETER VAN DER MOLEN to MARK PETER VAN DER MOLEN<br>user email updates from MARK.VANDERMOLEN@MEOGROUP.COM to MARK.VANDERMOLEN@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GM - COMMERCIAL to GM - COMMERCIAL<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:15:05', 'admin', 'meo_users', 'user id updates from E0010 to E0010<br>emp id updates from  to 6<br>user full name updates from NG WEI LING CANDICE to NG WEI LING CANDICE<br>user email updates from CANDICE.NG@MEOGROUP.COM to CANDICE.NG@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GENERAL MANAGER - COMMERCIAL to GENERAL MANAGER - COMMERCIAL<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:15:15', 'admin', 'meo_users', 'user id updates from E0013 to E0013<br>emp id updates from  to 7<br>user full name updates from CLAUDIA IGLESIAS CARRICHES to CLAUDIA IGLESIAS CARRICHES<br>user email updates from CLAUDIA.IGLESIAS@MEOGROUP.COM to CLAUDIA.IGLESIAS@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL EXECUTIVE to COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:15:23', 'admin', 'meo_users', 'user id updates from E0016 to E0016<br>emp id updates from  to 8<br>user full name updates from MARICAR ZOLETA MANLAPAZ to MARICAR ZOLETA MANLAPAZ<br>user email updates from MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM to MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from DOCUMENT CONTROLLER to DOCUMENT CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:15:49', 'admin', 'meo_users', 'user id updates from E0026 to E0026<br>emp id updates from  to 10<br>user full name updates from NATALIE WEICHMANN to NATALIE WEICHMANN<br>user email updates from NATALIE.WEICHMANN@MEOGROUP.COM to NATALIE.WEICHMANN@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL EXECUTIVE to COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:16:04', 'admin', 'meo_users', 'user id updates from E0022 to E0022<br>emp id updates from  to 9<br>user full name updates from SUNIL SINGH to SUNIL SINGH<br>user email updates from SUNIL.SINGH@MEOGROUP.COM to SUNIL.SINGH@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MARINE OPERATIONS MANAGER to MARINE OPERATIONS MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:16:15', 'admin', 'meo_users', 'user id updates from E0031 to E0031<br>emp id updates from  to 11<br>user full name updates from GOH TING TING to GOH TING TING<br>user email updates from TINGTING.GOH@MEOGROUP.COM to TINGTING.GOH@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from JUNIOR SECRETARY to JUNIOR SECRETARY<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-01-24 07:16:25', 'admin', 'meo_users', 'user id updates from E0032 to E0032<br>emp id updates from  to 12<br>user full name updates from CAHYA AWAL to CAHYA AWAL<br>user email updates from CAHYA.AWAL@MEOGROUP.COM to CAHYA.AWAL@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from SENIOR COST CONTROLLER to SENIOR COST CONTROLLER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-01-24 20:45:19', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value KNOWLEDGE MANAGEMNT CENTRE (KMC)<br>member name now contain value KM GROUP; <br>member email now contain value KMGROUP@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-01-25 19:46:40', 'admin', 'groupbu', 'group bu name updates from SINGAPORE (MEO) to GROUP<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-25 19:47:20', 'admin', 'department', 'id region updates from SINGAPORE  to SPECIALISED VESSEL SERVICES (SVS)<br>department name updates from SPECIALISED VESSEL SERVICES	(SIN)					 to SPECIALISED VESSEL SERVICES<br>members updates from ADAM RALEIGH CLAYTON; KEN LIVINGSTONE; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; CHONG SIN KEONG; BURHANUDDIN BIN MOHAMAD;  to ADAM RALEIGH CLAYTON; LINA BINTE SOHO; MUHAMMAD ADDY FHAIRUZ FERNANDEZ; BURHANUDDIN BIN MOHAMAD; CHONG SIN KEONG; KEN LIVINGSTONE; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 00:57:54', 'admin', 'meo_users', 'user id now contain value 11606<br>emp id now contain value 11606<br>user full name now contain value ATTASIT  KORNCHAIYAPRUK<br>user email now contain value ATTASIT.K@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF BUSINESS DEVELOPMENT, MOE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:59:34', 'admin', 'meo_users', 'user id now contain value 11471<br>emp id now contain value 11471<br>user full name now contain value YUTH  METHEEWITUD<br>user email now contain value YUTH.M@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value PEOPLE & ORGANIZATION DIRECTOR ,UNITHAI GROUP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 00:59:56', 'admin', 'meo_users', 'user id now contain value 11074<br>emp id now contain value 11074<br>user full name now contain value PIRIYADIT  CHOOPHUNGART<br>user email now contain value PIRIYADIT.C@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value CHIEF FINANCIAL OFFICER, UNITHAI GROUP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:02:42', 'admin', 'meo_users', 'user id now contain value 11133<br>emp id now contain value 11133<br>user full name now contain value SASITHORN  SURIYACHAN <br>user email now contain value SASITHORN.S@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:05:05', 'admin', 'meo_users', 'user id now contain value 11045<br>emp id now contain value 11045<br>user full name now contain value SIVILAI  CHIRAMANAPHUN<br>user email now contain value SIVILAI.C@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:05:58', 'admin', 'meo_users', 'user id now contain value 11592<br>emp id now contain value 11592<br>user full name now contain value SUKIT  KITPATH<br>user email now contain value KANET.C@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR OFFICER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:06:35', 'admin', 'meo_users', 'user id now contain value 11038<br>emp id now contain value 11038<br>user full name now contain value NARUMON SIRITONGKAM <br>user email now contain value NARUMON.S@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER - FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:07:08', 'admin', 'meo_users', 'user id now contain value 11426<br>emp id now contain value 11426<br>user full name now contain value BENJAWAN  PANKLOM<br>user email now contain value BENJAWAN.P@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value ASST. OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:08:12', 'admin', 'meo_users', 'user id now contain value 11533<br>emp id now contain value 11533<br>user full name now contain value CHADA  PHOONJANTANG<br>user email now contain value CHADA.P@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:08:34', 'admin', 'meo_users', 'user id now contain value 1304<br>emp id now contain value 1304<br>user full name now contain value DAWAPHA  JANTARAPITAK<br>user email now contain value DAWAPHA.D@UNITHAI.COM<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:09:07', 'admin', 'meo_users', 'user id now contain value 71585<br>emp id now contain value 71585<br>user full name now contain value YAOWALUCK  THREECHADARAT<br>user email now contain value YAOWALUCK.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR. OFFICER-FINANCE & ACCOUNTING<br>expiry date now contain value <br>'),
('delete', 'ADMIN', '2017-01-26 01:11:43', 'admin', 'meo_users', 'BRADLEY MICHAEL MORPHEW deleted'),
('add', 'ADMIN', '2017-01-26 01:12:04', 'admin', 'meo_users', 'user id now contain value 71573<br>emp id now contain value 71573<br>user full name now contain value BRAD  MORPHEW<br>user email now contain value BRAD.MORPHEW@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HEAD OF UNIWISE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:12:23', 'admin', 'meo_users', 'user id now contain value 71407<br>emp id now contain value 71407<br>user full name now contain value JON AXEL HAUGLUM<br>user email now contain value JON.AXEL@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR-GM OPERATION<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:12:49', 'admin', 'meo_users', 'user id now contain value 7418<br>emp id now contain value 7418<br>user full name now contain value WARODOM THAMRONGTHANYAWONG<br>user email now contain value WARODOM.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value GM COMMERCIAL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:13:19', 'admin', 'meo_users', 'user id now contain value 71006<br>emp id now contain value 71006<br>user full name now contain value ALISA PHUCHUMNIAN<br>user email now contain value ALISA.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value FINANCIAL BUSINESS PARTNER (FBP) <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:13:42', 'admin', 'meo_users', 'user id now contain value 7974<br>emp id now contain value 7974<br>user full name now contain value NARUEMOL JIRANANTASAK<br>user email now contain value NARUEMOL.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HR MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:14:25', 'admin', 'meo_users', 'user id now contain value 7147<br>emp id now contain value 7147<br>user full name now contain value VANDEE INTAPANYA<br>user email now contain value VANDEE.I@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR. COMMERCIAL OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:15:08', 'admin', 'meo_users', 'user id now contain value 71182<br>emp id now contain value 71182<br>user full name now contain value YINGYOD THONGNAUM<br>user email now contain value YINYOD.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:15:51', 'admin', 'meo_users', 'user id now contain value 7057<br>emp id now contain value 7057<br>user full name now contain value VIPA TEEPAPONG<br>user email now contain value VIPA.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SR. OFFICER- CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:16:10', 'admin', 'meo_users', 'user id now contain value 71436<br>emp id now contain value 71436<br>user full name now contain value PACHARAPORN THUNPRASERT<br>user email now contain value PACHARAPORN.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER- CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:16:50', 'admin', 'meo_users', 'user id now contain value 71529<br>emp id now contain value 71529<br>user full name now contain value NIDA SENGTHONG<br>user email now contain value NIDA.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OFFICER- CREWING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:17:56', 'admin', 'meo_users', 'user id now contain value 71601<br>emp id now contain value 71601<br>user full name now contain value VERNON LOW<br>user email now contain value VERNON.LOW@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value MANAGER - GROUP HSQE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:18:18', 'admin', 'meo_users', 'user id now contain value 71360<br>emp id now contain value 71360<br>user full name now contain value PATTARAPOOM SANTIWEKIN<br>user email now contain value PATTARAPOOM.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE ASSITANT MGE/DDPA<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:18:34', 'admin', 'meo_users', 'user id now contain value 7954<br>emp id now contain value 7954<br>user full name now contain value WORASAK BUAPLOD<br>user email now contain value WORASAK.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:18:57', 'admin', 'meo_users', 'user id now contain value 71505<br>emp id now contain value 71505<br>user full name now contain value PAWARIT ARSAKIT<br>user email now contain value PAWARIT.A@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:19:21', 'admin', 'meo_users', 'user id now contain value 71421<br>emp id now contain value 71421<br>user full name now contain value PANYA BOONANEKSUB<br>user email now contain value PANYA.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE SI - SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:19:55', 'admin', 'meo_users', 'user id now contain value 7949<br>emp id now contain value 7949<br>user full name now contain value APAPAN TEPMANEE<br>user email now contain value APAPAN.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE ASSISTANT MGR-MANAGEMENT SYSTEM COMPLIANCE <br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:20:23', 'admin', 'meo_users', 'user id now contain value 71564<br>emp id now contain value 71564<br>user full name now contain value SUPASSORN  SAENNIEM<br>user email now contain value SUPASSORN.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value HSQE ADMINISTRATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:20:42', 'admin', 'meo_users', 'user id now contain value 71506<br>emp id now contain value 71506<br>user full name now contain value CAPT.PONGSARIT KLOMKHUM<br>user email now contain value PONGSARIT.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:21:01', 'admin', 'meo_users', 'user id now contain value 71462<br>emp id now contain value 71462<br>user full name now contain value CAPT.THIANCHAI DHANKULCHAI<br>user email now contain value THIANCHAI.D@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OPERATIONS BARGE MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:21:24', 'admin', 'meo_users', 'user id now contain value 71513<br>emp id now contain value 71513<br>user full name now contain value THEERADET SAENKET<br>user email now contain value THEERADET.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value JUNIOR OPERATIONS SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:22:01', 'admin', 'meo_users', 'user id now contain value 71578<br>emp id now contain value 71578<br>user full name now contain value SAMPAN  SAMPANWICHAIN<br>user email now contain value SUWIT.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value JUNIOR OPERATIONS SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:22:23', 'admin', 'meo_users', 'user id now contain value 71383<br>emp id now contain value 71383<br>user full name now contain value JARIYA PANKHOUSUK<br>user email now contain value JARIYA.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value OPS.ADMINISTRATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:22:56', 'admin', 'meo_users', 'user id now contain value 71248<br>emp id now contain value 71248<br>user full name now contain value THONGCHAI PETCHARAT<br>user email now contain value THONGCHAI.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value BASE MANAGER -SKL<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:23:20', 'admin', 'meo_users', 'user id now contain value 7773<br>emp id now contain value 7773<br>user full name now contain value PRAPHOJ JAICHAROEN<br>user email now contain value PRAPHOJ.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value BASE MANAGER -SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:23:36', 'admin', 'meo_users', 'user id now contain value 7984<br>emp id now contain value 7984<br>user full name now contain value SITHE SOOKBAN<br>user email now contain value SITHE.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:23:54', 'admin', 'meo_users', 'user id now contain value 71460<br>emp id now contain value 71460<br>user full name now contain value PANUWAT SANGASILAPA<br>user email now contain value PANUWAT@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:24:10', 'admin', 'meo_users', 'user id now contain value 71393<br>emp id now contain value 71393<br>user full name now contain value SUTHAT KUAKOONRAT<br>user email now contain value SUTHAT.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI-SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:24:32', 'admin', 'meo_users', 'user id now contain value 71395<br>emp id now contain value 71395<br>user full name now contain value WANNAPAT TABMAK<br>user email now contain value WANNAPAT.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT TECHICAL EXECUTIVE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:24:49', 'admin', 'meo_users', 'user id now contain value 71543<br>emp id now contain value 71543<br>user full name now contain value SOMBOON POLSWANG<br>user email now contain value SOMBOON.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:25:07', 'admin', 'meo_users', 'user id now contain value 71574<br>emp id now contain value 71574<br>user full name now contain value SURASAK  WEERAWATTANA<br>user email now contain value SURASAK.W@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:25:21', 'admin', 'meo_users', 'user id now contain value 71600<br>emp id now contain value 71600<br>user full name now contain value SATID  THONGSRINUAN  <br>user email now contain value SATID.T@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TECHNICAL SI<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:25:38', 'admin', 'meo_users', 'user id now contain value 71101<br>emp id now contain value 71101<br>user full name now contain value KITTIMA WANNASRI<br>user email now contain value KITTIMA.W@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value UWO PROCUREMENT MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:25:58', 'admin', 'meo_users', 'user id now contain value 71053<br>emp id now contain value 71053<br>user full name now contain value CHARIYA CHAROENSOOK<br>user email now contain value CHARIYA.C@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR ASSISTANT PROCUREMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:26:14', 'admin', 'meo_users', 'user id now contain value 71503<br>emp id now contain value 71503<br>user full name now contain value USAVADEE KETKAEW<br>user email now contain value USAVADEE.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PROCUREMENT OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:26:34', 'admin', 'meo_users', 'user id now contain value 71373<br>emp id now contain value 71373<br>user full name now contain value THIRAYA BOONRAT<br>user email now contain value THIRAYA.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT OFFICER - PROCUREMENT<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:26:59', 'admin', 'meo_users', 'user id now contain value 71504<br>emp id now contain value 71504<br>user full name now contain value NATTAMON KHUNTIKULANON<br>user email now contain value NUTTAMON.K@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PROCUREMENT OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:27:26', 'admin', 'meo_users', 'user id now contain value 71429<br>emp id now contain value 71429<br>user full name now contain value TEEKHAYU MEEKAEW<br>user email now contain value TEEKHAYU.M@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PROCUREMENT OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:27:45', 'admin', 'meo_users', 'user id now contain value 71456<br>emp id now contain value 71456<br>user full name now contain value NUJCHAREE JAMJAENG<br>user email now contain value NUJCHAREE.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value PURCHASING OFFICER - SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:29:02', 'admin', 'meo_users', 'user id now contain value 71476<br>emp id now contain value 71476<br>user full name now contain value DANAI JARI<br>user email now contain value DANAI.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR WAREHOUSE SUPERVISOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:29:22', 'admin', 'meo_users', 'user id now contain value 71020<br>emp id now contain value 71020<br>user full name now contain value AMPOL CHAREANSUP<br>user email now contain value AMPOL.C@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT OFFICER - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:29:39', 'admin', 'meo_users', 'user id now contain value 71317<br>emp id now contain value 71317<br>user full name now contain value SANTI JUATHAI<br>user email now contain value SANTI.J@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:29:58', 'admin', 'meo_users', 'user id now contain value 71367<br>emp id now contain value 71367<br>user full name now contain value SOREEKIN SANGNUAL<br>user email now contain value SORREKIN.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:30:24', 'admin', 'meo_users', 'user id now contain value 71453<br>emp id now contain value 71453<br>user full name now contain value RACHEN  CHAIONKAEW<br>user email now contain value RACHEN.C@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:30:44', 'admin', 'meo_users', 'user id now contain value 71371<br>emp id now contain value 71371<br>user full name now contain value JIRAPORN SUWANNA<br>user email now contain value JIRAPORN.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT - WAREHOUSE<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:31:04', 'admin', 'meo_users', 'user id now contain value 7994<br>emp id now contain value 7994<br>user full name now contain value SITTIPONG SAYCHUMPUN<br>user email now contain value SITTIPONG.SC@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 01:35:01', 'admin', 'meo_users', 'user id now contain value 71056<br>emp id now contain value 71056<br>user full name now contain value SOPON PONPAI<br>user email now contain value SOPON.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:38:30', 'admin', 'region', 'id group bu  now contain value THAILAND- UWO<br>region title now contain value SONGKHLA, SATTAHIP<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-01-26 02:39:30', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 02:41:38', 'admin', 'meo_users', 'user id now contain value 71359<br>emp id now contain value 71359<br>user full name now contain value KANDA RAKPAKDEE<br>user email now contain value KANDA.R@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:43:20', 'admin', 'meo_users', 'user id now contain value 71372<br>emp id now contain value 71372<br>user full name now contain value SUWANNA BOONKUMNED<br>user email now contain value SUWANNA.B@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:43:39', 'admin', 'meo_users', 'user id now contain value 71433<br>emp id now contain value 71433<br>user full name now contain value PHETBUREE SANGMANEE<br>user email now contain value PHETBUREE.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value CREWING OFFICER-SATTAHIP<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:43:56', 'admin', 'meo_users', 'user id now contain value 71508<br>emp id now contain value 71508<br>user full name now contain value PHILIPPE LAUVRAY<br>user email now contain value PHILIPPE.L@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINING MANAGER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:44:25', 'admin', 'meo_users', 'user id now contain value 71567<br>emp id now contain value 71567<br>user full name now contain value KITTISAK  SUWANNSRI<br>user email now contain value KITTISAK.S@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER-TRAINING<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:44:53', 'admin', 'meo_users', 'user id now contain value 71306<br>emp id now contain value 71306<br>user full name now contain value THAMRONGSAK PANJUNSEE<br>user email now contain value THAMRONGSAK.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINER OFFICER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:45:14', 'admin', 'meo_users', 'user id now contain value 71370<br>emp id now contain value 71370<br>user full name now contain value PATHOMPONG PROMYA <br>user email now contain value PATHOMPONG.P@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value TRAINER OFFICER TRAINING COORDINATOR<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:45:38', 'admin', 'meo_users', 'user id now contain value 71463<br>emp id now contain value 71463<br>user full name now contain value MOEHAMAD  ARSYAD<br>user email now contain value MOEHAMAD.A@UNIWISE.CO.TH<br>staff client now contain value MEO STAFF<br>designation now contain value ASSISTANT MANAGER - WORKSHOP & STORES<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-01-26 02:46:45', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value MANAGEMENT (THAI)<br>members now contain value ATTASIT  KORNCHAIYAPRUK; YUTH  METHEEWITUD; PIRIYADIT  CHOOPHUNGART; <br>'),
('add', 'ADMIN', '2017-01-26 02:48:03', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value FINANCE AND ACCOUNTING (THAI)<br>members now contain value SASITHORN  SURIYACHAN ; SIVILAI  CHIRAMANAPHUN; SUKIT  KITPATH; NARUMON SIRITONGKAM ; BENJAWAN  PANKLOM; CHADA  PHOONJANTANG; DAWAPHA  JANTARAPITAK; YAOWALUCK  THREECHADARAT; <br>'),
('add', 'ADMIN', '2017-01-26 02:48:18', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value FINANCE & ACCOUNTING (THAI)<br>members now contain value SASITHORN  SURIYACHAN ; SIVILAI  CHIRAMANAPHUN; SUKIT  KITPATH; NARUMON SIRITONGKAM ; BENJAWAN  PANKLOM; CHADA  PHOONJANTANG; DAWAPHA  JANTARAPITAK; YAOWALUCK  THREECHADARAT; <br>'),
('add', 'ADMIN', '2017-01-26 02:50:00', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT)<br>members now contain value BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; <br>'),
('delete', 'ADMIN', '2017-01-26 02:50:37', 'admin', 'department', 'FINANCE & ACCOUNTING (THAI) deleted'),
('update', 'ADMIN', '2017-01-26 02:50:52', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT) to BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT)<br>members updates from BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK;  to BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; VANDEE INTAPANYA; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 02:52:34', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value CREWING - BKK (THAI)<br>members now contain value YINGYOD THONGNAUM; VIPA TEEPAPONG; PACHARAPORN THUNPRASERT; NIDA SENGTHONG; <br>'),
('add', 'ADMIN', '2017-01-26 02:54:39', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value HSQE (THAI)<br>members now contain value VERNON LOW; PATTARAPOOM SANTIWEKIN; WORASAK BUAPLOD; PAWARIT ARSAKIT; PANYA BOONANEKSUB; <br>'),
('update', 'ADMIN', '2017-01-26 02:55:37', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from HSQE (THAI) to HSQE (THAI)<br>members updates from VERNON LOW; PATTARAPOOM SANTIWEKIN; WORASAK BUAPLOD; PAWARIT ARSAKIT; PANYA BOONANEKSUB;  to VERNON LOW; PATTARAPOOM SANTIWEKIN; WORASAK BUAPLOD; PAWARIT ARSAKIT; PANYA BOONANEKSUB; APAPAN TEPMANEE; SUPASSORN  SAENNIEM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 02:57:54', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value OPERATIONS (THAI)<br>members now contain value CAPT.PONGSARIT KLOMKHUM; CAPT.THIANCHAI DHANKULCHAI; THEERADET SAENKET; SAMPAN  SAMPANWICHAIN; JARIYA PANKHOUSUK; <br>'),
('add', 'ADMIN', '2017-01-26 02:58:43', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value MANAGEMENT (THAI- SKL/SATTAHIP)<br>members now contain value THONGCHAI PETCHARAT; PRAPHOJ JAICHAROEN; <br>'),
('add', 'ADMIN', '2017-01-26 02:59:39', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value TECHNICAL (THAI)<br>members now contain value SITHE SOOKBAN; PANUWAT SANGASILAPA; SUTHAT KUAKOONRAT; WANNAPAT TABMAK; SOMBOON POLSWANG; SURASAK  WEERAWATTANA; SATID  THONGSRINUAN  ; <br>'),
('add', 'ADMIN', '2017-01-26 03:01:00', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value PROCEDUREMET (THAI)<br>members now contain value CHARIYA CHAROENSOOK; USAVADEE KETKAEW; THIRAYA BOONRAT; NATTAMON KHUNTIKULANON; TEEKHAYU MEEKAEW; NUJCHAREE JAMJAENG; KITTISAK  SUWANNSRI; <br>'),
('update', 'ADMIN', '2017-01-26 03:01:30', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from PROCEDUREMET (THAI) to PROCUREMENT (THAI)<br>members updates from KITTISAK  SUWANNSRI; CHARIYA CHAROENSOOK; USAVADEE KETKAEW; NATTAMON KHUNTIKULANON; THIRAYA BOONRAT; TEEKHAYU MEEKAEW; NUJCHAREE JAMJAENG;  to CHARIYA CHAROENSOOK; USAVADEE KETKAEW; THIRAYA BOONRAT; NATTAMON KHUNTIKULANON; TEEKHAYU MEEKAEW; NUJCHAREE JAMJAENG; KITTISAK  SUWANNSRI; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 03:03:20', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value WAREHOUSE<br>members now contain value DANAI JARI; AMPOL CHAREANSUP; SANTI JUATHAI; SOREEKIN SANGNUAL; RACHEN  CHAIONKAEW; JIRAPORN SUWANNA; <br>'),
('add', 'ADMIN', '2017-01-26 03:04:20', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value TRAINING (THAI)<br>members now contain value PHILIPPE LAUVRAY; KITTISAK  SUWANNSRI; THAMRONGSAK PANJUNSEE; PATHOMPONG PROMYA ; <br>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-01-26 03:04:39', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value WORKSHOP (THAI)<br>members now contain value MOEHAMAD  ARSYAD; <br>'),
('update', 'ADMIN', '2017-01-26 03:06:29', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP OPERATIONS<br>member name updates from GROUP GF; ORG3 MEMBER2;  to GROUP GF; ORG3 MEMBER2; <br>member email updates from ORG3@MEMBER1.COM; ORG3@MEMBER2.COM;  to ORG3@MEMBER1.COM; ORG3@MEMBER2.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-26 03:08:29', 'admin', 'department', 'id region now contain value THAILAND - SONGKHLA, SATTAHIP<br>department name now contain value CREWING (THAI)<br>members now contain value SITTIPONG SAYCHUMPUN; SOPON PONPAI; KANDA RAKPAKDEE; SUWANNA BOONKUMNED; PHETBUREE SANGMANEE; <br>'),
('delete', 'ADMIN', '2017-01-26 03:10:08', 'admin', 'region', 'THAILAND, SKL deleted'),
('add', 'ADMIN', '2017-01-26 03:14:44', 'admin', 'region', 'id group bu  now contain value THAILAND- UWO<br>region title now contain value THAILAND - SKL<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-26 03:18:11', 'admin', 'vessel_region', 'id region  now contain value THAILAND - SKL<br>id vessel name  now contain value <br>'),
('add', 'ADMIN', '2017-01-29 23:27:36', 'admin', 'user_rights', 'GROUP NAME 1 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-01-29 23:27:54', 'admin', 'user_rights', 'user rights in admin section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-01-29 23:29:40', 'admin', 'client_users', 'client user id now contain value 0305<br>client user full name now contain value BHARATRAJ+12<br>client email id now contain value BHARATRAJ+12@SINGSYS.COM<br>id region now contain value THAILAND, SAT<br>company now contain value SING SYS<br>designation now contain value QUALITY CONTROL ENGINEER<br>'),
('add', 'ADMIN', '2017-01-29 23:32:19', 'admin', 'user_rights', 'TEST Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-01-29 23:32:41', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-01-29 23:33:27', 'admin', 'user_rights', 'id meo user now contain value JOVY CHAY<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-29 23:33:49', 'admin', 'user_rights', 'id meo user now contain value REKHA NANDWANI<br>id group now contain value TEST<br>Contacts / Shore Personnel for view is restricted with access titles <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-01-29 23:36:13', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI <br>org group name now contain value HELLO MEO TEST<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-01-30 20:39:44', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP OPERATIONS1<br>member name now contain value KM GROUP; <br>member email now contain value KMGROUP@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-01-30 20:39:53', 'admin', 'organisation_group', 'GROUP OPERATIONS deleted'),
('delete', 'ADMIN', '2017-01-30 20:40:15', 'admin', 'organisation_group', 'KNOWLEDGE MANAGEMNT CENTRE (KMC) deleted'),
('delete', 'ADMIN', '2017-01-30 20:40:16', 'admin', 'organisation_group', ' deleted'),
('update', 'ADMIN', '2017-01-31 01:53:10', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS1 to GROUP OPERATIONS<br>member name updates from KM GROUP;  to KM GROUP; TEST ; <br>member email updates from KMGROUP@MEOGROUP.COM;  to KMGROUP@MEOGROUP.COM; TEST@TEST.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-31 01:53:16', 'admin', 'organisation_group', 'TST deleted'),
('delete', 'ADMIN', '2017-01-31 01:53:22', 'admin', 'organisation_group', 'HELLO MEO TEST deleted'),
('delete', 'ADMIN', '2017-01-31 01:53:27', 'admin', 'organisation_group', 'ORG GROUP NEW  deleted'),
('delete', 'ADMIN', '2017-01-31 01:53:30', 'admin', 'organisation_group', 'KNOWLEDGE MANAGEMENT CENTRE deleted'),
('update', 'ADMIN', '2017-01-31 01:53:39', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP OPERATIONS<br>member name updates from KM GROUP; TEST ;  to KM GROUP; TEST ; <br>member email updates from KMGROUP@MEOGROUP.COM; TEST@TEST.COM;  to KMGROUP@MEOGROUP.COM; TEST@TEST.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-01-31 21:22:19', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value INDONESIA BU<br>member name now contain value INDONESIA STAFF; <br>member email now contain value FCFHGF@N; <br>'),
('update', 'ADMIN', '2017-01-31 22:28:26', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from BANGKOK OFICE (MANAGEMENT/HR/COMMERCIAL DEPT) to BANGKOK OFFICE (MANAGEMENT/HR/COMMERCIAL DEPT)<br>members updates from BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; VANDEE INTAPANYA;  to BRAD  MORPHEW; JON AXEL HAUGLUM; WARODOM THAMRONGTHANYAWONG; ALISA PHUCHUMNIAN; NARUEMOL JIRANANTASAK; VANDEE INTAPANYA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-01-31 22:29:45', 'admin', 'department', 'id region updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SONGKHLA, SATTAHIP<br>department name updates from WAREHOUSE to WAREHOUSE (THAI) <br>members updates from DANAI JARI; AMPOL CHAREANSUP; SANTI JUATHAI; SOREEKIN SANGNUAL; RACHEN  CHAIONKAEW; JIRAPORN SUWANNA;  to DANAI JARI; AMPOL CHAREANSUP; SANTI JUATHAI; SOREEKIN SANGNUAL; RACHEN  CHAIONKAEW; JIRAPORN SUWANNA; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-01-31 22:31:17', 'admin', 'groupbu', 'ROW  deleted'),
('add', 'ADMIN', '2017-01-31 22:31:36', 'admin', 'region', 'id group bu  now contain value EOS- ROW<br>region title now contain value ROW- AUSTRALIA<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-31 22:32:37', 'admin', 'region', 'id group bu  now contain value EOS- ROW<br>region title now contain value ROW- OTHERS<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-01-31 23:49:57', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value XYZ<br>member name now contain value AKASH; <br>member email now contain value AKASH@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-01 00:33:05', 'admin', 'vessel_region', 'id region updates from BATAM to THAILAND - SKL<br>id vessel name updates from EXPRESS 53;  to EXPRESS 53; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 00:34:00', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value FBP<br>member name now contain value ACCOUNTS TEAM LEADERS; <br>member email now contain value ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 00:37:29', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from FBP to FINANCE BUSINESS PARTNERSHIP<br>member name updates from ACCOUNTS TEAM LEADERS;  to ACCOUNTS TEAM LEADERS; FPA; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 00:41:57', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST - UAE<br>org group name now contain value FINANCE & SUPPLY CHAIN<br>member name now contain value FINANCE ME; <br>member email now contain value FINANCE_ME@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 00:44:04', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>org group name updates from FINANCE & SUPPLY CHAIN to FINANCE & SUPPLY CHAIN<br>member name updates from FINANCE ME;  to FINANCE ME; <br>member email updates from FINANCE_ME@MEOGROUP.COM;  to FINANCE_ME@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 00:46:02', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from FINANCE BUSINESS PARTNERSHIP to FINANCE BUSINESS PARTNERSHIP<br>member name updates from ACCOUNTS TEAM LEADERS; FPA;  to ACCOUNTS TEAM LEADERS; FPA; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 00:46:19', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>org group name updates from FINANCE & SUPPLY CHAIN to FINANCE & SUPPLY CHAIN<br>member name updates from FINANCE ME;  to FINANCE ME; <br>member email updates from FINANCE_ME@MEOGROUP.COM;  to FINANCE_ME@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 00:57:00', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP HUMAN RESOURCE<br>member name now contain value HUMAN RESOURCE SG; <br>member email now contain value HR@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 01:02:04', 'admin', 'vessel_region', 'id region updates from SPECIALISED VESSEL SERVICES (SVS) to SPECIALISED VESSEL SERVICES (SVS)<br>id vessel name updates from MERMAID NUSANTARA; RESOLUTION; ENDEAVOUR; MICLYN ENDURANCE; VOYAGER EXPLORER;  to MERMAID NUSANTARA; RESOLUTION; ENDEAVOUR; MICLYN ENDURANCE; VOYAGER EXPLORER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 01:02:31', 'admin', 'shore_address', 'shore region now contain value THAILAND <br>address now contain value Bangkok Thailand<br>full address now contain value UNIWISE OFFSHORE LTD <br>'),
('update', 'ADMIN', '2017-02-01 01:03:27', 'admin', 'shore_address', 'shore region updates from THAILAND  to THAILAND <br>address updates from Bangkok Thailand to BANGKOK THAILAND<br>full address updates from UNIWISE OFFSHORE LTD  to UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-01 01:05:18', 'admin', 'shore_address', 'shore region now contain value ABU DHABI, UAE<br>address now contain value Abu Dhabi - United Arab Emirates<br>full address now contain value MICLYN EXPRESS OFFSHORE SHIP MANAGEMENT LLC, OFFICE NO. 601-3B, AL SAMAN TOWER, TOWER B, HAMDAN STREET, PO BOX 10807, ABU DHABI, UAE<br>'),
('add', 'ADMIN', '2017-02-01 01:06:25', 'admin', 'shore_address', 'shore region now contain value DUBAI, UAE<br>address now contain value Dubai - United Arab Emirates<br>full address now contain value EXPRESS OFFSHORE TRANSPORT (UAE) LLC, PORT SAID ACICO BUSINESS PARK OFFICE, 1ST FLOOR OFFICE 100 A13, DUBAI, UAE<br>'),
('add', 'ADMIN', '2017-02-01 01:07:30', 'admin', 'shore_address', 'shore region now contain value BRUNEI<br>address now contain value Brunei<br>full address now contain value MICLYN EXPRESS OFFSHORE (B) SDN BHD, NO.6, SIMPANG 28-5, JALAN MAULANA, KUALA BELAIT KA 1931, BRUNEI DARUSSALAM<br>'),
('add', 'ADMIN', '2017-02-01 01:08:53', 'admin', 'shore_address', 'shore region now contain value MIRI MALAYSIA<br>address now contain value MIRI SARAWAK MALAYSIA<br>full address now contain value BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA<br>'),
('add', 'ADMIN', '2017-02-01 01:10:50', 'admin', 'shore_address', 'shore region now contain value SATTAHIP,  THAILAND<br>address now contain value Sattahip Chon Buri Thailand<br>full address now contain value UNIWISE OFFSHORE LTD, 234/37-38 MU. 6, TAMBOL SATTAHIP, TAMPHUR SATTAHIP, CHONBURI 20180, THAILAND<br>'),
('add', 'ADMIN', '2017-02-01 01:11:41', 'admin', 'shore_address', 'shore region now contain value SONGKHLA THAILAND<br>address now contain value SONGKHLA THAILAND<br>full address now contain value UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND<br>'),
('delete', 'ADMIN', '2017-02-01 01:15:11', 'admin', 'vessel_region', 'SPECIALISED VESSEL SERVICES (SVS) deleted'),
('delete', 'ADMIN', '2017-02-01 01:32:22', 'admin', 'organisation_group', 'XYZ deleted'),
('update', 'ADMIN', '2017-02-01 01:45:58', 'admin', 'vessel_region', 'id region updates from MIDDLE EAST - UAE to MIDDLE EAST - UAE<br>id vessel name updates from EXPRESS 19;  to EXPRESS 19; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 01:51:02', 'admin', 'vessel_region', 'MIDDLE EAST - UAE deleted'),
('update', 'ADMIN', '2017-02-01 01:51:59', 'admin', 'vessel_region', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>id vessel name updates from EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL; SAMSON SUPPORTER;  to EXPRESS 24; EXPRESS 25; EXPRESS 26; EXPRESS 55; EXPRESS 56; EXPRESS 57; EXPRESS 58; EXPRESS 59; EXPRESS 60; EXPRESS 61; EXPRESS 62; EXPRESS 63; EXPRESS 64; EXPRESS 67; EXPRESS 75; EXPRESS 89; EXPRESS 82; EXPRESS 86; MICLYN ORION; MICLYN OPAL; SAMSON SUPPORTER; EXPRESS 90; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 01:54:01', 'admin', 'region', 'id group bu updates from MIDDLE EAST  to MIDDLE EAST <br>region title updates from MIDDLE EAST  - DUBAI  to MIDDLE EAST  - DUBAI, UAE<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 01:55:58', 'admin', 'region', 'MIDDLE EAST - UAE deleted'),
('delete', 'ADMIN', '2017-02-01 01:56:17', 'admin', 'region', 'MIDDLE EAST - KSA deleted'),
('update', 'ADMIN', '2017-02-01 02:03:17', 'admin', 'vessel_region', 'id region updates from THAILAND - SKL to THAILAND - SKL<br>id vessel name updates from AOS 2; AOS 8; EXPRESS 35; EXPRESS 36; EXPRESS 65; EXPRESS 71; EXPRESS 73; EXPRESS 80; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 18; UNI EXPRESS 19; UNI EXPRESS 21; UNI EXPRESS 22; UNI EXPRESS 23; UNI EXPRESS 24; UNI EXPRESS 25; AOS PHUKET; UNIWISE SONGKHLA; UNIWISE ADVANCER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; UNIWISE SUPPORTER; MICLYN CONSTRUCTOR I; MICLYN CONSTRUCTOR I; MICLYN CONSTRUCTOR I; MICLYN ENERGY; MICLYN ENTERPRISE; SOVEREIGN 2; MEO VIGILANT; MEO EMPEROR; MEO EMPEROR; MEO EMPRESS;  to SOVEREIGN 2; AOS 8; UNI EXPRESS 21; EXPRESS 35; EXPRESS 36; AOS 2; UNI EXPRESS 9; UNI EXPRESS 10; UNI EXPRESS 11; UNI EXPRESS 12; UNI EXPRESS 13; UNI EXPRESS 14; UNI EXPRESS 16; UNI EXPRESS 17; UNI EXPRESS 19; EXPRESS 65; UNI EXPRESS 18; EXPRESS 71; EXPRESS 73; UNI EXPRESS 23; UNI EXPRESS 24; EXPRESS 80; MICLYN ENERGY; MICLYN ENTERPRISE; UNIWISE ADVANCER; MEO VIGILANT; MICLYN CONSTRUCTOR I; UNI EXPRESS 22; AOS PHUKET; UNIWISE SONGKHLA; MEO EMPEROR; UNI EXPRESS 25; UNIWISE SUPPORTER; UNIWISE ADVANTAGE; UNIWISE ADVENTURE; EXPRESS 53; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 02:03:28', 'admin', 'vessel_region', 'THAILAND - SKL deleted'),
('add', 'ADMIN', '2017-02-01 02:43:53', 'admin', 'meo_users', 'user id now contain value 0000000000001<br>emp id now contain value 0000000000001<br>user full name now contain value QUEK YEOW RONG<br>user email now contain value YR.QUEK@MEOGROUP.COM<br>staff client now contain value MEO STAFF<br>designation now contain value IT EXECUTIVE<br>expiry date now contain value 2017-12-31<br>'),
('update', 'ADMIN', '2017-02-01 04:22:59', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from FINANCE BUSINESS PARTNERSHIP to GROUP FINANCE<br>member name updates from ACCOUNTS TEAM LEADERS; FPA;  to ACCOUNTS TEAM LEADERS; FPA; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 04:23:12', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP OPERATIONS to GROUP KNOWLEDGE MANAGEMENT<br>member name updates from KM GROUP; TEST ;  to KM GROUP; TEST ; <br>member email updates from KMGROUP@MEOGROUP.COM; TEST@TEST.COM;  to KMGROUP@MEOGROUP.COM; TEST@TEST.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 19:51:24', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value FLEET<br>member name now contain value OPERATIONS INDO; <br>member email now contain value OPSINDO@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 19:59:58', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value SHARED ACCOUNTING SERVICES<br>member name now contain value ACCOUNTS RECEIVABLE; <br>member email now contain value AR_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:07:03', 'admin', 'organisation_group', 'id region now contain value THAILAND - SKL<br>org group name now contain value THAILAND HSQE<br>member name now contain value CREWING THAILAND; <br>member email now contain value CREWING_TH@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:21:09', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST HSQE<br>member name now contain value HSQE DUBAI; <br>member email now contain value HSQE_DUBAI@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:22:16', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value ME HSQE<br>member name now contain value HSQE MIDDLE EAST ; <br>member email now contain value HSQE_ME@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:27:28', 'admin', 'organisation_group', 'id region now contain value THAILAND - SKL<br>org group name now contain value HSQE THAILAND <br>member name now contain value HSQE THAILAND; <br>member email now contain value HSQE_TH@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:27:57', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST TECHNICAL & OPERATIONS<br>member name now contain value OPERATIONS; <br>member email now contain value OPSDEP@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:28:53', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value TECHNICAL & OPERATIONS<br>member name now contain value PROJECT DBS; <br>member email now contain value PROJECT.DBS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:29:46', 'admin', 'organisation_group', 'id region now contain value INDONESIA - JAKARTA<br>org group name now contain value FLEET INDONESIA <br>member name now contain value SHIPYARD ENQUIRY; <br>member email now contain value SHIPYARD.ENQUIRY@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 20:58:21', 'admin', 'shore_address', 'shore region now contain value INDONESIA<br>address now contain value INDONESIA<br>full address now contain value PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 <br>'),
('delete', 'ADMIN', '2017-02-01 21:00:25', 'admin', 'organisation_group', 'FLEET INDONESIA  deleted'),
('delete', 'ADMIN', '2017-02-01 21:13:59', 'admin', 'organisation_group', 'GROUP KNOWLEDGE MANAGEMENT deleted'),
('delete', 'ADMIN', '2017-02-01 21:15:20', 'admin', 'organisation_group', 'INDONESIA BU deleted'),
('update', 'ADMIN', '2017-02-01 21:18:31', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to INDONESIA - JAKARTA<br>org group name updates from TECHNICAL & OPERATIONS to FLEET <br>member name updates from PROJECT DBS;  to OPERATIONS INDO; <br>member email updates from PROJECT.DBS@MEOGROUP.COM;  to OPSINDO@MEOGROUP.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-01 21:19:40', 'admin', 'organisation_group', 'FLEET deleted'),
('add', 'ADMIN', '2017-02-01 21:22:11', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value TECHNICAL & OPERATIONS<br>member name now contain value PROJECT DBS; <br>member email now contain value PROJECT.DBS@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 21:39:30', 'admin', 'organisation_group', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>org group name updates from FLEET  to THAI/ASEAN BU- INDONESIA<br>member name updates from OPERATIONS INDO;  to OPERATIONS INDO; MARKETING JKT; <br>member email updates from OPSINDO@MEOGROUP.COM;  to OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 21:44:28', 'admin', 'organisation_group', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>org group name updates from THAI/ASEAN BU- INDONESIA to THAI/ASEAN BU- INDONESIA<br>member name updates from OPERATIONS INDO; MARKETING JKT;  to OPERATIONS INDO; MARKETING JKT; EOS FINANCE; CREWING JKT; SHIPYARD ENQUIRY; INDONESIA STAFF; <br>member email updates from OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM;  to OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; EOS.FIN-JKK@MEOGROUP.COM; CREWING_JKT@MEOGROUP.COM; SHIPYARD.ENQUIRY@MEOGROUP.COM; ASEAN_ID@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 21:55:00', 'admin', 'organisation_group', 'id region updates from INDONESIA - JAKARTA to INDONESIA - JAKARTA<br>org group name updates from THAI/ASEAN BU- INDONESIA to THAI/ASEAN BU- INDONESIA<br>member name updates from OPERATIONS INDO; MARKETING JKT; EOS FINANCE; CREWING JKT; SHIPYARD ENQUIRY; INDONESIA STAFF;  to OPERATIONS INDO; MARKETING JKT; INDONESIA STAFF; CREWING JKT; SHIPYARD ENQUIRY; EOS FINANCE; <br>member email updates from OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; EOS.FIN-JKK@MEOGROUP.COM; CREWING_JKT@MEOGROUP.COM; SHIPYARD.ENQUIRY@MEOGROUP.COM; ASEAN_ID@MEOGROUP.COM;  to OPSINDO@MEOGROUP.COM; MARKETING.JKT@SGS-OFFSHORE.COM; ASEAN_ID@MEOGROUP.COM; CREWING_JKT@MEOGROUP.COM; SHIPYARD.ENQUIRY@MEOGROUP.COM; EOS.FIN-JKK@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 21:56:14', 'admin', 'department', 'id region updates from AUSTRALIA to AUSTRALIA<br>department name updates from EXECUTIVE (AUS) to EXECUTIVE (AUS)<br>members updates from DAVID NICHOLAS;  to BHARATRAJ; BHARATRAJ MEO USER; DAVID NICHOLAS; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 21:57:08', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value ADMINISTRATION<br>member name now contain value ADMIN SG; <br>member email now contain value ADMIN_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 21:57:33', 'admin', 'organisation_group', 'id region now contain value EOS<br>org group name now contain value EOS<br>member name now contain value EOS; <br>member email now contain value EOS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:04:21', 'admin', 'organisation_group', 'id region now contain value EOS<br>org group name now contain value EOS OPERATIONS<br>member name now contain value SAIPEM.ICHTHYS; EOS OPERATIONS; OPERATIONS AUS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; <br>member email now contain value SAIPEM.ICHTHYS@MEOGROUP.COM; OPS@MEOGROUP.COM; OPERATIONS_AUS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; GHL_MMA@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-01 22:05:58', 'admin', 'organisation_group', 'MIDDLE EAST HSQE deleted'),
('delete', 'ADMIN', '2017-02-01 22:06:04', 'admin', 'organisation_group', 'ME HSQE deleted'),
('delete', 'ADMIN', '2017-02-01 22:06:13', 'admin', 'organisation_group', 'MIDDLE EAST TECHNICAL & OPERATIONS deleted'),
('add', 'ADMIN', '2017-02-01 22:07:04', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value FINANCE & SUPPLY CHAIN ME<br>member name now contain value FINANCE ME; PURCHASING ME; ME PURCHASERS; <br>member email now contain value FINANCE_ME@MEOGROUP.COM; PURCHASING_ME@MEOGROUP.COM; ME_PURCHASERS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:09:07', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP COMMERCIAL<br>member name now contain value COMMUNICATION; SALES AND PURCHASE; GROUP COMMERCIAL; QUIZ; MARKETING SG; <br>member email now contain value COMMUNICATION@MEOGROUP.COM; SNP@MEOGROUP.COM; GROUPCOMMERCIAL@MEOGROUP.COM; QUIZ@MEOGROUP.COM; MARKETING_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:10:39', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP CREWING<br>member name now contain value GROUP PAYROLL SG; PAYROLL AUS; <br>member email now contain value GROUP_PAYROLL_SG@MEOGROUP.COM; PAYROLL_AUS@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 22:11:36', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP CREWING to GROUP CREWING<br>member name updates from GROUP PAYROLL SG; PAYROLL AUS;  to GROUP PAYROLL SG; PAYROLL AUS; CREWING SG; CREW PAYROLL; <br>member email updates from GROUP_PAYROLL_SG@MEOGROUP.COM; PAYROLL_AUS@MEOGROUP.COM;  to GROUP_PAYROLL_SG@MEOGROUP.COM; PAYROLL_AUS@MEOGROUP.COM; CREWING_SG@MEOGROUP.COM; CREW_PAYROLL@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-01 22:16:02', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP FINANCE to GROUP FINANCE<br>member name updates from ACCOUNTS TEAM LEADERS; FPA;  to ACCOUNTS TEAMLEADERS SG; FPA; CONSOL; CHARTER SUMMARY; FINANCE MGRS SG; <br>member email updates from ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM;  to ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM; FPA@MEOGROUP.COM; CONSOL@MEOGROUP.COM; CHARTERSUMMARY@MEOGROUP.COM; FINANCE_MGRS_SG@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 22:17:06', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP FLEET PLANNED MAINTENANCE SYSTEM<br>member name now contain value FPM; <br>member email now contain value FPM@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:18:06', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP HSQE<br>member name now contain value HSQE SG; <br>member email now contain value HSQE_SG@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 22:19:05', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from GROUP HUMAN RESOURCE to GROUP HUMAN RESOURCE<br>member name updates from HUMAN RESOURCE SG;  to HUMAN RESOURCE SG; HR ME; ADMIN ME; <br>member email updates from HR@MEOGROUP.COM;  to HR@MEOGROUP.COM; HR_ME@MEOGROUP.COM; ADMIN_ME@MICLYNEXPRESSOFFSHORE.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 22:20:10', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP IT & SAP TEAM<br>member name now contain value IT INFRASTRUCTURE; MEO APP; SAP SUPPORT; <br>member email now contain value ITHELPDESKTEAM@MEOGROUP.COM; MEO_APP@MEOGROUP.COM; SAP_SUPPORT@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:20:40', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP KNOWLEDGE MANAGEMENT CENTRE<br>member name now contain value KM GROUP; <br>member email now contain value KMGROUP@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:25:16', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP SUPPLY CHAIN MANAGEMENT (SCM)<br>member name now contain value PURCHASING SG; PURCHASING BATAM; <br>member email now contain value PURCHASING_SG@MEOGROUP.COM; PURCHASING_BATAM@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-01 22:28:43', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from TECHNICAL & OPERATIONS to GROUP TECHNICAL & OPERATIONS<br>member name updates from PROJECT DBS;  to PROJECT DBS; OPERATIONS SG; TECHNICAL SG; VPN SGP; GENERAL FLEET GROUP; ROVING FLEET BT; NEWBUILD ENGINEERING SG; <br>member email updates from PROJECT.DBS@MEOGROUP.COM;  to PROJECT.DBS@MEOGROUP.COM; OPSSGP@MEOGROUP.COM; TECHNICAL_SG@MEOGROUP.COM; VPN_SGP@MEOGROUP.COM; GFGROUP@MEOGROUP.COM; ROVING_FLEET_BT@MEOGROUP.COM; NEWBUILD_ENGINEERING_SG@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-01 22:29:52', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP TRAINING<br>member name now contain value TRAINING SG; <br>member email now contain value TRAINING_SG@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-01 22:31:44', 'admin', 'shore_address', 'shore region now contain value HONG KONG<br>address now contain value TSIM SHA TSUI, HONG KONG<br>full address now contain value NATHAN ROAD<br>'),
('add', 'ADMIN', '2017-02-01 22:34:45', 'admin', 'shore_address', 'shore region now contain value SPAIN<br>address now contain value Madrid, Spain<br>full address now contain value UNVIVERSITY OF SPAIN<br>'),
('update', 'ADMIN', '2017-02-01 22:36:15', 'admin', 'shore_address', 'shore region updates from SPAIN to SPAIN<br>address updates from Madrid, Spain to MADRID, SPAIN<br>full address updates from UNVIVERSITY OF SPAIN to UNVIVERSITY OF SPAIN TRSXBYCTVY YTEFTGUJY 5R7F6UTGUY 6RYTGUYH 8TYFUYG YTFUGYI 7TUYIU 76TGH 657FRU 57FU 76UG   RYFTUGYN6FY 67TNUG7H A7UG 767FGUAYIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-01 22:46:06', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-01 22:48:19', 'admin', 'user_rights', 'id meo user changed from  BHARATRAJ to BHARATRAJ<br>id admin group changed from  GROUP NAME 1 to GROUP NAME 1<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from  to  <br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to all <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('add', 'ADMIN', '2017-02-02 00:03:17', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST BU<br>member name now contain value CREWING ME; HSQE ME; HSQE DUBAI; COMMERCIAL ME; QATAR OFFICE; ME STAFF; ME SBGS GHASA; PROJECT GHASHA UAE; ME CREW FEEDBACKL; ME MARINE SYSTEM; OPERATIONS ME; SSAS ME; <br>member email now contain value CREWING_ME@MEOGROUP.COM; HSQE_ME@MEOGROUP.COM; HSQE_DUBAI@MEOGROUP.COM; COMMERCIAL_ME@MEOGROUP.COM; QATAR.OFFICE@MEOGROUP.COM; ME_STAFF@MEOGROUP.COM; MEOGHASA@MEOGROUP.COM; PROJECTGHASHAUAE@MEOGROUP.COM; MECREWFEEDBACK@MEOGROUP.COM; MEMARINESYSTEM@MEOGROUP.COM; OPSDEP@MEOGROUP.COM; SSAS_ME@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-02 00:04:20', 'admin', 'organisation_group', 'id region updates from SINGAPORE  to SINGAPORE <br>org group name updates from SHARED ACCOUNTING SERVICES to SHARED ACCOUNTING SERVICES<br>member name updates from ACCOUNTS RECEIVABLE;  to ACCOUNTS RECEIVABLE; ACCOUNTS PAYABLE; FINANCE SG; DRP TEAM; GENERAL LEDGER ; <br>member email updates from AR_SG@MEOGROUP.COM;  to AR_SG@MEOGROUP.COM; ACCOUNTS_AP_SG@MEOGROUP.COM; FINANCE_SG@MEOGROUP.COM; DRP_TEAM@MEOGROUP.COM; GL_SG@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-02 00:08:40', 'admin', 'organisation_group', 'id region now contain value SPECIALISED VESSEL SERVICES (SVS)<br>org group name now contain value SPECIALISED VESSEL OFFSHORE SERVICES<br>member name now contain value DP/SUBSEA FLEET; SVS; `; <br>member email now contain value SUBSEADP@MEOGROUP.COM; SVS@MEOGROUP.COM; HI@MEO.COM; <br>'),
('delete', 'ADMIN', '2017-02-02 00:09:02', 'admin', 'organisation_group', 'SPECIALISED VESSEL OFFSHORE SERVICES deleted'),
('delete', 'ADMIN', '2017-02-02 00:09:04', 'admin', 'organisation_group', ' deleted'),
('update', 'ADMIN', '2017-02-02 00:09:49', 'admin', 'region', 'id group bu updates from ASEAN- MALAYSIA to ASEAN- MALAYSIA<br>region title updates from MALAYSIA to MALAYSIAA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 00:10:12', 'admin', 'region', 'id group bu updates from ASEAN- MALAYSIA to ASEAN- MALAYSIA<br>region title updates from MALAYSIAA to MALAYSIA<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-02 00:10:19', 'admin', 'organisation_group', 'id region now contain value SPECIALISED VESSEL SERVICES (SVS)<br>org group name now contain value SPECIALISED VESSEL OFFSHORE SERVICES<br>member name now contain value SPECIAL FLEET GROUP; DP/SUBSEA FLEET; SVS; <br>member email now contain value SFGROUP@MEOGROUP.COM; SUBSEADP@MEOGROUP.COM; SVS@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-02 00:11:10', 'admin', 'region', 'BATAM deleted'),
('delete', 'ADMIN', '2017-02-02 00:29:12', 'admin', 'shore_address', 'SPAIN deleted'),
('update', 'ADMIN', '2017-02-02 00:29:36', 'admin', 'shore_address', 'shore region updates from INDONESIA to JAKARTA <br>address updates from INDONESIA to INDONESIA<br>full address updates from PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	  to PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 <br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-02 00:29:51', 'admin', 'shore_address', 'shore region updates from SONGKHLA THAILAND to SONGKHLA, THAILAND<br>address updates from SONGKHLA THAILAND to Songkhla Thailand<br>full address updates from UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND to UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-02 00:30:03', 'admin', 'shore_address', 'shore region updates from THAILAND  to BANGKOK, THAILAND <br>address updates from BANGKOK THAILAND to BANGKOK THAILAND<br>full address updates from UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND to UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-02 00:30:10', 'admin', 'shore_address', 'shore region updates from MIRI MALAYSIA to MIRI, MALAYSIA<br>address updates from MIRI SARAWAK MALAYSIA to MIRI SARAWAK MALAYSIA<br>full address updates from BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA to BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-02 00:30:49', 'admin', 'shore_address', 'shore region updates from JAKARTA  to JAKARTA, INDONESIA<br>address updates from INDONESIA to Jakarta Selatan, Jalan Kuningan Barat IV, West Kuningan, South Jakarta City, Special Capital Region of Jakarta, Indonesia<br>full address updates from PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	  to PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 <br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-02 00:32:17', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST - QATAR<br>org group name now contain value QATAR<br>member name now contain value QATAR OFFICE; <br>member email now contain value QATAR.OFFICE@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 00:32:50', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST - SAUDI<br>org group name now contain value SAUDI ARABIA<br>member name now contain value ME MARINE SYSTEM; <br>member email now contain value MEMARINESYSTEM@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-02 00:32:53', 'admin', 'shore_address', 'shore region updates from HONG KONG to QATAR<br>address updates from TSIM SHA TSUI, HONG KONG to QATAR PETROLEUM, WEST BAY, DOHA, QATAR<br>full address updates from NATHAN ROAD to MICLYN EXPRESS OFFSHORE 14TH FLOOR COMMERCIAL BANK TOWER WEST BAY, DOHA - QATAR DOHA QATAR  97444528374<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-02 00:34:04', 'admin', 'organisation_group', 'id region now contain value AUSTRALIA<br>org group name now contain value EOS OPERATIONS AUS<br>member name now contain value OPERATIONS AUS; <br>member email now contain value OPERATIONS_AUS@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 00:34:46', 'admin', 'shore_address', 'shore region now contain value SAUDI ARABIA<br>address now contain value 31941 Rahima, Riyadh, Saudi Arabia<br>full address now contain value BARWIL AGENCIES BLDG P.O BOX 174, RAHIMA 31941 RAS TANURA, SAUDI ARABIA  966136681376<br>'),
('update', 'ADMIN', '2017-02-02 00:37:10', 'admin', 'department', 'id region updates from SINGAPORE  to EOS<br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; MICHAEL SLY ; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; MICHAEL SLY ; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 00:37:14', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN)<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; MICHAEL SLY ; JOYCE TAN;  to ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; COLIN DAVID TREWHELLA; MARK PETER VAN DER MOLEN; NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; MARICAR ZOLETA MANLAPAZ; SUNIL SINGH; NATALIE WEICHMANN; GOH TING TING; CAHYA AWAL; EUGENE TEO YU-CHNG; LEE WEI JIE; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; MICHAEL SLY ; JOYCE TAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 00:48:17', 'admin', 'organisation_group', 'id region updates from AUSTRALIA to AUSTRALIA<br>org group name updates from EOS OPERATIONS AUS to EOS OPERATIONS AUS<br>member name updates from OPERATIONS AUS;  to OPERATIONS AUS; AUS STAFF; <br>member email updates from OPERATIONS_AUS@MEOGROUP.COM;  to OPERATIONS_AUS@MEOGROUP.COM; AUS_STAFF@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 00:49:55', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from EXPRESS OFFSHORE SOLUTIONS - REST OF WORLD (SIN) to HEAD OF BU<br>members updates from MARK PETER VAN DER MOLEN; COLIN DAVID TREWHELLA; SUNIL SINGH; NG WEI LING CANDICE; ONG CHEE WEE; RHYAN DELOS REYES SABRIDO; CLAUDIA IGLESIAS CARRICHES; EUGENE TEO YU-CHNG; LEE WEI JIE; GOH TING TING; NATALIE WEICHMANN; MARICAR ZOLETA MANLAPAZ; CRIS RYAN INDIG ENTERA; JED IGOT; SHAWN WONG; LIM JUNRONG; CAHYA AWAL; MICHAEL SLY ; JOYCE TAN;  to MARK PETER VAN DER MOLEN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 00:49:57', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS to EOS<br>member name updates from EOS;  to EOS; ROW COMMERCIAL; FINANCE EOS; <br>member email updates from EOS@MEOGROUP.COM;  to EOS@MEOGROUP.COM; CHARTERING@MEOGROUP.COM; FINANCE_EOS@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 00:50:00', 'admin', 'department', 'id region updates from EOS to EOS<br>department name updates from HEAD OF BU to HEAD OF BU<br>members updates from MARK PETER VAN DER MOLEN;  to MARK PETER VAN DER MOLEN; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-02 00:50:14', 'admin', 'organisation_group', 'EOS OPERATIONS deleted'),
('add', 'ADMIN', '2017-02-02 00:50:22', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value OPERATIONS<br>members now contain value COLIN DAVID TREWHELLA; <br>'),
('add', 'ADMIN', '2017-02-02 00:50:59', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FLEET MANAGMENT<br>members now contain value SUNIL SINGH; CRIS RYAN INDIG ENTERA; SHAWN WONG; LIM JUNRONG; <br>'),
('add', 'ADMIN', '2017-02-02 00:51:26', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS PARTNER<br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-02 00:52:58', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS  PARTNER  <br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-02 00:53:25', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS PARTNERS<br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-02 00:53:30', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value FINANCE BUSINESS PARTNERSZ<br>members now contain value CHRISTOPHER WHITE; <br>'),
('add', 'ADMIN', '2017-02-02 00:54:16', 'admin', 'organisation_group', 'id region now contain value EOS<br>org group name now contain value EOS OPERATIONS<br>member name now contain value EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; <br>member email now contain value OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 00:54:19', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value PROJECTS<br>members now contain value RHYAN DELOS REYES SABRIDO; JED IGOT; MICHAEL SLY ; <br>'),
('add', 'ADMIN', '2017-02-02 00:55:06', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value COMMERCIAL<br>members now contain value NG WEI LING CANDICE; CLAUDIA IGLESIAS CARRICHES; NATALIE WEICHMANN; EUGENE TEO YU-CHNG; JOYCE TAN; <br>'),
('add', 'ADMIN', '2017-02-02 00:55:07', 'admin', 'organisation_group', 'id region now contain value AUSTRALIA<br>org group name now contain value GROUP CREWING AUS<br>member name now contain value PAYROLL AUS; <br>member email now contain value PAYROLL_AUS@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-02 00:55:24', 'admin', 'organisation_group', 'GROUP CREWING deleted'),
('add', 'ADMIN', '2017-02-02 00:55:35', 'admin', 'department', 'id region now contain value EOS<br>department name now contain value OPS SUPPORT<br>members now contain value ONG CHEE WEE; MARICAR ZOLETA MANLAPAZ; GOH TING TING; <br>'),
('delete', 'ADMIN', '2017-02-02 00:56:46', 'admin', 'department', 'FINANCE BUSINESS PARTNERSZ deleted'),
('delete', 'ADMIN', '2017-02-02 00:56:49', 'admin', 'department', ' deleted'),
('add', 'ADMIN', '2017-02-02 00:56:53', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP CREWING<br>member name now contain value GROUP PAYROLL SG; CREWING SG; CREW PAYROLL; <br>member email now contain value GROUP_PAYROLL_SG@MEOGROUP.COM; CREWING_SG@MEOGROUP.COM; CREW_PAYROLL@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-02 00:57:04', 'admin', 'department', 'FINANCE BUSINESS PARTNER deleted'),
('delete', 'ADMIN', '2017-02-02 00:57:08', 'admin', 'department', ' deleted'),
('delete', 'ADMIN', '2017-02-02 00:57:19', 'admin', 'organisation_group', 'GROUP HUMAN RESOURCE deleted'),
('delete', 'ADMIN', '2017-02-02 00:57:21', 'admin', 'department', 'FINANCE BUSINESS PARTNERS deleted'),
('delete', 'ADMIN', '2017-02-02 00:57:24', 'admin', 'department', ' deleted');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('add', 'ADMIN', '2017-02-02 00:57:32', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value GROUP HUMAN RESOURCES<br>member name now contain value HR SG; <br>member email now contain value HR@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 00:58:22', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value GROUP HUMAN RESOURCES ME<br>member name now contain value ADMIN ME; HR ME; <br>member email now contain value ADMIN_ME@MICLYNEXPRESSOFFSHORE.COM; HR_ME@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-02 00:59:11', 'admin', 'organisation_group', 'MIDDLE EAST BU deleted'),
('add', 'ADMIN', '2017-02-02 01:06:25', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value MIDDLE EAST BU<br>member name now contain value HSQE ME; HSQE DUBAI; COMMERCIAL ME; CREWING ME; ME STAFF; ME SBGS GHASA; PROJECT GHASHA UAE; ME CREW FEEDBACK; OPERATIONS ME; SSAS ME; <br>member email now contain value HSQE_ME@MEOGROUP.COM; HSQE_DUBAI@MEOGROUP.COM; COMMERCIAL_ME@MEOGROUP.COM; CREWING_ME@MEOGROUP.COM; ME_STAFF@MEOGROUP.COM; MEOGHASA@MEOGROUP.COM; PROJECTGHASHAUAE@MEOGROUP.COM; MECREWFEEDBACK@MEOGROUP.COM; OPSDEP@MEOGROUP.COM; SSAS_ME@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 01:25:36', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value TECHNICAL/ OPERATIONS ME<br>member name now contain value OPERATION KSA; TECHNICAL ME; OPERATIONS ME; OPERATIONS UAE; <br>member email now contain value OPS_KSA@MEOGROUP.COM; TECHNICAL_ME@MEOGROUP.COM; OPS_ME@MEOGROUP.COM; OPSUAE@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 01:30:28', 'admin', 'organisation_group', 'id region now contain value BRUNEI<br>org group name now contain value THAI/ ASEAN BU- BRUNEI<br>member name now contain value BRUNEI; BRUNEI OPS; HSQE BRUNEI; <br>member email now contain value ASEAN_BN@MEOGROUP.COM; BRUNEI.OPS@MEOGROUP.COM; HSQE_BRUNEI@MEOGROUP.COM; <br>'),
('add', 'ADMIN', '2017-02-02 01:35:30', 'admin', 'organisation_group', 'id region now contain value MALAYSIA<br>org group name now contain value THAI/ASEAN BU- MALAYSIA<br>member name now contain value OPERATIONS MY; MY STAFF; <br>member email now contain value OPSMSIA@MEOGROUP.COM; ASEAN_MY@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-02 01:53:09', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND, SAT to THAILAND, SATTAHIP<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 01:53:39', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND - SKL to THAILAND - SONGKHLA<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-02 02:02:21', 'admin', 'organisation_group', 'HSQE THAILAND  deleted'),
('delete', 'ADMIN', '2017-02-02 02:04:38', 'admin', 'organisation_group', 'THAILAND HSQE deleted'),
('add', 'ADMIN', '2017-02-02 02:16:07', 'admin', 'organisation_group', 'id region now contain value SINGAPORE <br>org group name now contain value ASEAN<br>member name now contain value ASEAN SG; ASEAN LT; <br>member email now contain value ASEAN_SG@MEOGROUP.COM; ASEAN_LT@MEOGROUP.COM; <br>'),
('delete', 'ADMIN', '2017-02-02 02:17:04', 'admin', 'region', 'THAILAND, SATTAHIP deleted'),
('update', 'ADMIN', '2017-02-02 02:17:14', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND - SONGKHLA, SATTAHIP to THAILAND - SATTAHIP<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-02 02:20:21', 'admin', 'organisation_group', 'id region now contain value THAILAND - SATTAHIP<br>org group name now contain value THAI/ASEAN BU- UWO<br>member name now contain value HSQE TH; OPERATIONS TH; CREWING TH; <br>member email now contain value HSQE_TH@MEOGROUP.COM; OPSTHAI@MEOGROUP.COM; CREWING_TH@MEOGROUP.COM; <br>'),
('update', 'ADMIN', '2017-02-02 06:16:12', 'admin', 'group_name', 'group name updates from TEST to KMC SYSTEM ADMIN<br>group description updates from GROUP NAME 3 to KMC PERSONNEL ARE THE SYSTEM CONTROLLERS AND HAVE FULL ACCESS RIGHTS TO  ALL SECTIONS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 06:16:26', 'admin', 'group_rights', 'KMC SYSTEM ADMIN Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-02 06:16:53', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-02 06:19:42', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-02-02 06:21:13', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  GROUP NAME 1 to KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from  to all <br>Contact / Vessels (MEO) for view is changed from  to all <br>Contact / Vessels (MEO) for modify is changed from  to all <br>Contacts / 3rd Party Vessels for view is changed from  to all <br>Contacts / 3rd Party Vessels for modify is changed from  to all <br>Contacts / Organisation Groups for view is changed from  to all <br>Contacts / Organisation Groups for modify is changed from  to all <br>'),
('update', 'ADMIN', '2017-02-02 06:22:40', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  KMC SYSTEM ADMIN to KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is changed from all to all <br>Contacts / Shore Personnel for modify is changed from all to all <br>Contact / Vessels (MEO) for view is changed from all to all <br>Contact / Vessels (MEO) for modify is changed from all to all <br>Contacts / 3rd Party Vessels for view is changed from all to all <br>Contacts / 3rd Party Vessels for modify is changed from all to all <br>Contacts / Organisation Groups for view is changed from all to all <br>Contacts / Organisation Groups for modify is changed from all to all <br>'),
('update', 'ADMIN', '2017-02-02 06:37:34', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from TEST REMARKS to NIL<br>'),
('add', 'ADMIN', '2017-02-02 07:12:20', 'admin', 'department', 'id region now contain value SINGAPORE <br>department name now contain value TESTING<br>members now contain value BHARATRAJ; BHARATRAJ MEO USER; <br>'),
('add', 'ADMIN', '2017-02-02 19:55:47', 'admin', 'group_name', 'group name now contain value VESSEL GENERAL USER<br>group description now contain value NL<br>'),
('add', 'ADMIN', '2017-02-02 19:56:01', 'admin', 'group_rights', 'VESSEL GENERAL USER Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-02 20:00:59', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 groups</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('delete', 'ADMIN', '2017-02-02 20:32:17', 'admin', 'department', 'TESTING deleted'),
('update', 'ADMIN', '2017-02-02 20:32:46', 'admin', 'region', 'id group bu updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>region title updates from INDONESIA - JAKARTA to INDONESIA<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:33:30', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MANAGEMENT (INDO) to MANAGEMENT (JKT)<br>members updates from DIDI JAYA SAPUTRA;  to DIDI JAYA SAPUTRA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:33:37', 'admin', 'meo_users', 'user id updates from S00327 to S00327<br>emp id updates from 174 to 174<br>user full name updates from ANKUSH SHAM AGARWAL to ANKUSH AGARWAL<br>user email updates from ANKUSH.AGARWAL@MEOGROUP.COM to ANKUSH.AGARWAL@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from DEPUTY HEAD - ASEAN to DEPUTY HEAD - ASEAN<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 20:33:48', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MARKETING (INDO) to MARKETING (JKT)<br>members updates from ANGGARA MULIA; VANESSA TALAVERA AQUINO;  to ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:33:51', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from MARKETING (JKT) to MARKETING (JKT)<br>members updates from ANGGARA MULIA; VANESSA TALAVERA AQUINO;  to ANGGARA MULIA; VANESSA TALAVERA AQUINO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:34:05', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from CREWING (INDO) to CREWING (JKT)<br>members updates from YENNY IMELDA MARTHING; KUNTO WIBISONO; DODI SETIAGAMA; AGUS TRI ATMOJO;  to YENNY IMELDA MARTHING; KUNTO WIBISONO; DODI SETIAGAMA; AGUS TRI ATMOJO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:34:18', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from ACCOUNTING (INDO) to ACCOUNTING (JKT)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:34:25', 'admin', 'meo_users', 'user id updates from S00368 to S00368<br>emp id updates from 199 to 199<br>user full name updates from NICHOLAS SEET CHONG KUN to NICHOLAS SEET<br>user email updates from NICHOLAS.SEET@MEOGROUP.COM to NICHOLAS.SEET@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from COMMERCIAL MANAGER - ASEAN BU to COMMERCIAL MANAGER - ASEAN BU<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 20:34:41', 'admin', 'meo_users', 'user id updates from S00349 to S00349<br>emp id updates from 187 to 187<br>user full name updates from MILI SANJAY VERMA to MILI  VERMA<br>user email updates from MILI.VERMA@MEOGROUP.COM to MILI.VERMA@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from GROUP COMMERCIAL EXECUTIVE to GROUP COMMERCIAL EXECUTIVE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 20:34:45', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from PURCHASING (INDO) to PURCHASING (JKT)<br>members updates from AZIZ ARZIZAL;  to AZIZ ARZIZAL; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:35:05', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from TRAINING (INDO) to TRAINING (JKT)<br>members updates from DEKY WERDOKO; ERNA RENSI NORA;  to DEKY WERDOKO; ERNA RENSI NORA; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:35:18', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from HRD (INDO) to HRD (JKT)<br>members updates from DANI GUNAWAN; LIA ANGGRAINY GINTING; AGUS SETYO BUDI S.;  to DANI GUNAWAN; LIA ANGGRAINY GINTING; AGUS SETYO BUDI S.; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:35:32', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from OPERATIONS / TECHNICAL (INDO) to OPERATIONS / TECHNICAL (JKT)<br>members updates from NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO;  to NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:35:51', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from HSQE (INDO) to HSQE (JKT)<br>members updates from RICKY KURNIAWAN;  to RICKY KURNIAWAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 20:36:46', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from ACCOUNTING (JKT) to ACCOUNTING (JKT)<br>members updates from DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI;  to DEDI SUPRIYADI; ADI MASTIN; RIZKA NOMITURSILOJATI; DIAN UTAMI; ANDREW KESAULYA; FATRONI; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-02 20:44:30', 'admin', 'department', 'id region now contain value INDONESIA<br>department name now contain value OPERATIONS / TECHNICAL (BATAM)<br>members now contain value THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO; <br>'),
('update', 'ADMIN', '2017-02-02 20:46:31', 'admin', 'department', 'id region updates from INDONESIA to INDONESIA<br>department name updates from OPERATIONS / TECHNICAL (JKT) to OPERATIONS / TECHNICAL (JKT)<br>members updates from NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; THEO ANDRIAN; RENALDO DARMADI; FIRMAN LESMANA; SUHARNO; DRIPRANTO; NUNU DIHARJA; M. EGA PERMANA; KUSTIYO ADI; HENDRA KUSUMA; M. ISMAIL; ZAHRUDIN; EFFENDI SAPUTRA; FIRMAN PERDANA; LUKMAN AFFANDY; CHAIRUDDIN; EKO BUDI TARMANTO;  to NAHARADAM WIJAYA; ALPHARD OKA ARIFIN; YULIANTORO; PAING WIDODO; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-02 22:12:17', 'admin', 'meo_users', 'user id updates from SGS002 to SGS002<br>emp id updates from 220 to 220<br>user full name updates from NAHARADAM WIJAYA to NAHARADAM WIJAJA<br>user email updates from NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM to NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from FLEET MANAGER to FLEET MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-02 22:13:11', 'admin', 'meo_users', 'user id updates from SGS002 to SGS002<br>emp id updates from 220 to 220<br>user full name updates from NAHARADAM WIJAJA to NAHARADAM WIDJAJA<br>user email updates from NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM to NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from FLEET MANAGER to FLEET MANAGER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-02-02 22:25:35', 'admin', 'vessel_region', 'id region  now contain value THAILAND - SATTAHIP<br>id vessel name  now contain value <br>'),
('update', 'ADMIN', '2017-02-03 00:06:50', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS to EOS<br>member name updates from EOS; ROW COMMERCIAL; FINANCE EOS;  to EOS; ROW COMMERCIAL; FINANCE EOS; AUS STAFF; <br>member email updates from EOS@MEOGROUP.COM; CHARTERING@MEOGROUP.COM; FINANCE_EOS@MEOGROUP.COM;  to EOS@MEOGROUP.COM; CHARTERING@MEOGROUP.COM; FINANCE_EOS@MEOGROUP.COM; AUS_STAFF@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 00:11:13', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS OPERATIONS to EOS OPERATIONS<br>member name updates from EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO;  to EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; SAIPEM.ICHTHYS; <br>member email updates from OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM;  to OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; SAIPEM.ICHTHYS@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 00:16:50', 'admin', 'organisation_group', 'id region updates from EOS to EOS<br>org group name updates from EOS OPERATIONS to EOS OPERATIONS<br>member name updates from EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; SAIPEM.ICHTHYS;  to EOS OPERATIONS; CB1 MOB; GHL MMA; BZAN.OPS; SLP-OPS; BUKOM.OPS; TFA01; HMC.ICHTHYS; VEGAPLEYADE; SK316 EOS; EOS ME; EOS.MLS01; EOS BDM; EOS ZTK1B; EOS BBPL; EOS JKK; EOS.OPS JKK; EOS.OPS MMA.PR02; EOS.KMO; SAIPEM.ICHTHYS; OPERATIONS AUS; <br>member email updates from OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; SAIPEM.ICHTHYS@MEOGROUP.COM;  to OPS@MEOGROUP.COM; CB1MOB@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; BZAN.OPS@MEOGROUP.COM; SLP-OPS@MEOGROUP.COM; BUKOM.OPS@MEOGROUP.COM; TFA01@MEOGROUP.COM; HMC.ICHTHYS@MEOGROUP.COM; VEGAPLEYADE@MEOGROUP.COM; SK316.EOS@MEOGROUP.COM; EOS_ME@MEOGROUP.COM; EOS_MLS01@MEOGROUP.COM; EOS_BDM@MEOGROUP.COM; EOS_ZTK1B@MEOGROUP.COM; EOS_BBPL@MEOGROUP.COM; EOS_JKK@MEOGROUP.COM; EOS.OPS_JKK@MEOGROUP.COM; EOS.OPS.MMA.PR02@MEOGROUP.COM; EOS.KMO@MEOGROUP.COM; SAIPEM.ICHTHYS@MEOGROUP.COM; OPERATIONS_AUS@MEOGROUP.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-03 00:35:31', 'admin', 'organisation_group', 'EOS OPERATIONS AUS deleted'),
('add', 'ADMIN', '2017-02-03 00:56:45', 'admin', 'organisation_group', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>org group name now contain value SINGSYS TESTING GROUP<br>member name now contain value BHARATRAJ; BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; BHARATRAJ+1@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-03 01:27:56', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from SINGSYS TESTING GROUP to SINGSYS TESTING GROUP<br>member name updates from BHARATRAJ; BHARATRAJ;  to BHARATRAJ; BHARATRAJ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ+1@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ+1@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 01:52:55', 'admin', 'department', 'id region updates from AUSTRALIA to AUSTRALIA<br>department name updates from HUMAN RESOURCE (AUS) to HUMAN RESOURCE (AUS)<br>members updates from VALERIE PRENTICE ;  to VALERIE PRENTICE ; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 03:27:51', 'admin', 'vessel_region', 'id region updates from MALAYSIA to BRUNEI<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 03:28:01', 'admin', 'vessel_region', 'id region updates from BRUNEI to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 03:29:38', 'admin', 'vessel_region', 'id region updates from MALAYSIA to BRUNEI<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 03:29:47', 'admin', 'vessel_region', 'id region updates from BRUNEI to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 07:27:44', 'admin', 'vessel_name', 'vesselID updates from MS1 to MS1<br>vessel name updates from MEO SOVEREIGN 1 to SOVEREIGN 2<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 07:28:04', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from SOVEREIGN 2 to MEO SOVEREIGN 1<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 11:47:45', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from MEO EMPRESS; EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 83; EXPRESS 85; EXPRESS 87; EXPRESS 93;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 11:50:28', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; MEO EMPRESS; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 22:11:37', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; MEO EMPRESS;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 22:26:09', 'admin', 'vessel_region', 'id region updates from MALAYSIA to MALAYSIA<br>id vessel name updates from EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; EXPRESS 85;  to EXPRESS 66; EXPRESS 68; EXPRESS 69; EXPRESS 70; EXPRESS 80; EXPRESS 87; EXPRESS 83; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-03 23:41:25', 'admin', 'organisation_group', 'id region now contain value INDONESIA<br>org group name now contain value SINGSYS PTE LTD<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('add', 'ADMIN', '2017-02-03 23:44:07', 'admin', 'department', 'id region now contain value MIDDLE EAST  - DUBAI, UAE<br>department name now contain value TESTING<br>members now contain value BHARATRAJ; BHARATRAJ MEO USER; <br>'),
('update', 'ADMIN', '2017-02-03 23:58:28', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ;  to BHARATRAJ; BHARATRAJ 1; <br>member email updates from BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-03 23:59:13', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; BHARATRAJ 1;  to BHARATRAJ; CXNJKNA; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-04 00:00:14', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; CXNJKNA;  to BHARATRAJ; ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-04 00:11:07', 'admin', 'shore_address', 'shore region now contain value LUKNOW<br>address now contain value QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQWERFTGYHJKLASDFGVHBJKLMWAESRXDGKJLMWQAESRDGHJNKLMWAERDTFBHJKLMWEASRDTFHUJKLMDHERK UFYWHUDHNNNNNNNNNNNNHEWLR URFLE RIUHEWIURIEWUHFHEWIUFHWEIUFHIUEHFIUHWEIUFHEFIUIUEHIUFHIEUFHEIUHFIUHNIRCUEFHRTUHRTUHRTHREHNTCHRHVHUTHYURWHTIUHIELRHTOLIHREIQHTGIUREHMETG8QRECL8QRELCLIRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRCERQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWRYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA<br>full address now contain value QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQWERFTGYHJKLASDFGVHBJKLMWAESRXDGKJLMWQAESRDGHJNKLMWAERDTFBHJKLMWEASRDTFHUJKLMDHERK UFYWHUDHNNNNNNNNNNNNHEWLR URFLE RIUHEWIURIEWUHFHEWIUFHWEIUFHIUEHFIUHWEIUFHEFIUIUEHIUFHIEUFHEIUHFIUHNIRCUEFHRTUHRTUHRTHREHNTCHRHVHUTHYURWHTIUHIELRHTOLIHREIQHTGIUREHMETG8QRECL8QRELCLIRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRCERQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWRYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA<br>'),
('delete', 'ADMIN', '2017-02-04 00:15:35', 'admin', 'shore_address', 'LUKNOW deleted'),
('update', 'ADMIN', '2017-02-04 00:28:37', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; ;  to BHARATRAJ; BHARATRAJ1; <br>member email updates from BHARATRAJ@SINGSYS.COM; ;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-04 00:30:26', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; BHARATRAJ1;  to BHARATRAJ; ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-04 00:31:13', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; ;  to BHARATRAJ; BHARATRAJ@SINGSYS.COM; <br>member email updates from BHARATRAJ@SINGSYS.COM; ;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-04 04:52:06', 'admin', 'organisation_group', 'SINGSYS PTE LTD deleted'),
('add', 'ADMIN', '2017-02-04 04:52:27', 'admin', 'organisation_group', 'id region now contain value INDONESIA<br>org group name now contain value SINGSYS PTE LTD<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-04 04:53:45', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ;  to BHARATRAJ; BHARATRAJ; <br>member email updates from BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-04 04:54:20', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; BHARATRAJ;  to BHARATRAJ; BHARATRAJ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-04 04:54:50', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; BHARATRAJ;  to BHARATRAJ; BHARATRAJ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-04 04:55:25', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SINGSYS PTE LTD to SINGSYS PTE LTD<br>member id updates from  to Array<br>member name updates from BHARATRAJ; BHARATRAJ;  to BHARATRAJ; ; <br>member email updates from BHARATRAJ@SINGSYS.COM; BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-05 22:48:08', 'admin', 'department', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>department name updates from TESTING to TESTING<br>members updates from BHARATRAJ; BHARATRAJ MEO USER;  to BHARATRAJ; BHARATRAJ MEO USER; AKASH; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-05 23:39:25', 'admin', 'organisation_group', 'id region now contain value THAILAND - SATTAHIP<br>org group name now contain value TESTING MEMBERS VALIDATION<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-05 23:39:51', 'admin', 'organisation_group', 'id region updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>org group name updates from TESTING MEMBERS VALIDATION to TESTING MEMBERS VALIDATION<br>member id updates from  to Array<br>member name updates from BHARATRAJ;  to BHARATRAJ; ; <br>member email updates from BHARATRAJ@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-05 23:40:15', 'admin', 'organisation_group', 'id region updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>org group name updates from TESTING MEMBERS VALIDATION to TESTING MEMBERS VALIDATION<br>member id updates from  to Array<br>member name updates from BHARATRAJ; ;  to BHARATRAJ; AKASH; <br>member email updates from BHARATRAJ@SINGSYS.COM; ;  to BHARATRAJ@SINGSYS.COM; AKASHKUMAR@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-05 23:40:25', 'admin', 'organisation_group', 'id region updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>org group name updates from TESTING MEMBERS VALIDATION to TESTING MEMBERS VALIDATION<br>member id updates from  to Array<br>member name updates from BHARATRAJ; AKASH;  to BHARATRAJ; AKASH; <br>member email updates from BHARATRAJ@SINGSYS.COM; AKASHKUMAR@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-05 23:42:14', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from MEO SOVEREIGN 1 to SOVEREIGN 2<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-05 23:42:24', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from SOVEREIGN 2 to MEO SOVEREIGN 1<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-06 00:08:01', 'admin', 'group_name', 'group name now contain value SINGSYS TESTING<br>group description now contain value SINGSYS TESTING<br>'),
('add', 'ADMIN', '2017-02-06 00:09:04', 'admin', 'group_rights', 'SINGSYS TESTING has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li></ol>'),
('add', 'ADMIN', '2017-02-06 00:12:14', 'admin', 'user_rights', 'id meo user now contain value BHARATRAJ MEO USER<br>id group now contain value SINGSYS TESTING<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-06 06:41:15', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value Omaxe City, Lucknow, Uttar Pradesh, India<br>full address now contain value OMAXE AVENUE<br>'),
('update', 'ADMIN', '2017-02-06 07:13:59', 'admin', 'organisation_group', 'id region updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>org group name updates from TESTING MEMBERS VALIDATION to TESTING MEMBERS VALIDATION<br>member id updates from  to Array<br>member name updates from BHARATRAJ; AKASH;  to BHARATRAJ; AKASH; <br>member email updates from BHARATRAJ@SINGSYS.COM; AKASHKUMAR@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-06 22:41:29', 'admin', 'meo_users', 'user id updates from 296 to 296<br>emp id updates from 6 to 6<br>user full name updates from BHARATRAJ MEO USER to BHARATRAJ MEO USER<br>user email updates from BHARATRAJ@SINGSYS.COM to BHARATRAJ@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from QCE to QCE<br>status updates from active to active<br>expiry date updates from 0000-00-00 to 2020-02-14<br>'),
('add', 'ADMIN', '2017-02-06 23:35:05', 'admin', 'shore_address', 'shore region now contain value INDIA1<br>address now contain value LUCKNOW<br>full address now contain value OMAXE AVENUE<br>'),
('delete', 'ADMIN', '2017-02-06 23:35:15', 'admin', 'shore_address', 'INDIA1 deleted'),
('update', 'ADMIN', '2017-02-06 23:40:05', 'admin', 'shore_address', 'shore region updates from SINGAPORE  to SINGAPORE <br>address updates from HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Active to Inactive<br>'),
('update', 'ADMIN', '2017-02-06 23:40:19', 'admin', 'shore_address', 'shore region updates from SINGAPORE  to SINGAPORE <br>address updates from HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE to HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br>full address updates from 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254 to 3 HARBOURFRONT PLACE, #11-01/04 HARBOURFRONT TOWER 2, SINGAPORE 099254<br>status updates from Inactive to Active<br>'),
('update', 'ADMIN', '2017-02-06 23:40:51', 'admin', 'groupbu', 'group bu name updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>status updates from active to inactive<br>'),
('update', 'ADMIN', '2017-02-06 23:41:07', 'admin', 'groupbu', 'group bu name updates from ASEAN- INDONESIA to ASEAN- INDONESIA<br>status updates from inactive to active<br>'),
('update', 'ADMIN', '2017-02-06 23:41:23', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>status updates from active to inactive<br>'),
('update', 'ADMIN', '2017-02-06 23:41:40', 'admin', 'region', 'id group bu updates from THAILAND- UWO to THAILAND- UWO<br>region title updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>status updates from inactive to active<br>'),
('delete', 'ADMIN', '2017-02-07 00:52:13', 'admin', 'department', 'TESTING deleted'),
('add', 'ADMIN', '2017-02-07 00:53:15', 'admin', 'department', 'id region now contain value MIDDLE EAST - SAUDI<br>department name now contain value TQC<br>members now contain value BHARATRAJ; BHARATRAJ MEO USER; AKASH; <br>'),
('update', 'ADMIN', '2017-02-07 02:59:16', 'admin', 'department', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>department name updates from TQC to TQC<br>members updates from BHARATRAJ; BHARATRAJ MEO USER; AKASH;  to BHARATRAJ; BHARATRAJ MEO USER; JOSEPH GEORGE; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 02:59:56', 'admin', 'department', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>department name updates from TQC to TQC<br>members updates from BHARATRAJ; BHARATRAJ MEO USER; AKASH; JOSEPH GEORGE;  to BHARATRAJ; BHARATRAJ MEO USER; JOSEPH GEORGE; RAMLI RASBI; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 03:46:41', 'admin', 'department', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>department name updates from TQC to TQC<br>members updates from BHARATRAJ; BHARATRAJ MEO USER; AKASH; JOSEPH GEORGE; RAMLI RASBI;  to BHARATRAJ; BHARATRAJ MEO USER; JOSEPH GEORGE; RAMLI RASBI; PAUL OCCENOLA; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 04:50:26', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-07 04:58:50', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-07 05:00:53', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-07 08:26:11', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from FINANCE & SUPPLY CHAIN ME to FINANCE & SUPPLY CHAIN ME<br>member id updates from  to Array<br>member name updates from FINANCE ME; PURCHASING ME; ME PURCHASERS;  to FINANCE ME; <br>member email updates from FINANCE_ME@MEOGROUP.COM; PURCHASING_ME@MEOGROUP.COM; ME_PURCHASERS@MEOGROUP.COM;  to FINANCE_ME@MEOGROUP.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 08:26:48', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from FINANCE & SUPPLY CHAIN ME to FINANCE & SUPPLY CHAIN ME<br>member id updates from  to Array<br>member name updates from FINANCE ME;  to FINANCE ME; SDWSD; <br>member email updates from FINANCE_ME@MEOGROUP.COM;  to FINANCE_ME@MEOGROUP.COM; DWD@S.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 23:04:34', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from FINANCE & SUPPLY CHAIN ME to FINANCE & SUPPLY CHAIN ME<br>member id updates from  to Array<br>member name updates from FINANCE ME; SDWSD;  to FINANCE ME; ; ; ; ; ; ; FEWFD; <br>member email updates from FINANCE_ME@MEOGROUP.COM; DWD@S.COM;  to FINANCE_ME@MEOGROUP.COM; ; ; ; ; ; ; DDWDC@A.C; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 23:05:00', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from FINANCE & SUPPLY CHAIN ME to FINANCE & SUPPLY CHAIN ME<br>member id updates from  to Array<br>member name updates from FINANCE ME; FEWFD;  to FINANCE ME; FEWFD; ; ; DXADAD; <br>member email updates from FINANCE_ME@MEOGROUP.COM; DDWDC@A.C;  to FINANCE_ME@MEOGROUP.COM; DDWDC@A.C; ; ; FSA@S.CV; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-07 23:05:26', 'admin', 'organisation_group', 'id region updates from MIDDLE EAST  - DUBAI, UAE to MIDDLE EAST  - DUBAI, UAE<br>org group name updates from FINANCE & SUPPLY CHAIN ME to FINANCE & SUPPLY CHAIN ME<br>member id updates from  to Array<br>member name updates from FINANCE ME; FEWFD; DXADAD;  to FINANCE ME; <br>member email updates from FINANCE_ME@MEOGROUP.COM; DDWDC@A.C; FSA@S.CV;  to FINANCE_ME@MEOGROUP.COM; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-08 00:54:22', 'admin', 'vessel_region', 'id region  now contain value ROW- OTHERS<br>id vessel name  now contain value RANGER<br>'),
('add', 'ADMIN', '2017-02-08 02:41:30', 'admin', 'vessel_name', 'vesselID  now contain value TESTVESSEL1<br>vessel name  now contain value TEST VESSEL<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('add', 'ADMIN', '2017-02-08 02:42:38', 'admin', 'groupbu', 'group bu name now contain value INDIA<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-02-08 02:42:52', 'admin', 'region', 'id group bu  now contain value INDIA<br>region title now contain value LUCKNOW<br>group region order now contain value 1<br>'),
('add', 'ADMIN', '2017-02-08 02:43:20', 'admin', 'vessel_region', 'id region  now contain value LUCKNOW<br>id vessel name  now contain value TEST VESSEL<br>'),
('add', 'ADMIN', '2017-02-08 02:44:04', 'admin', 'department', 'id region now contain value LUCKNOW<br>department name now contain value SINGSYS<br>members now contain value BHARATRAJ; BHARATRAJ MEO USER; <br>'),
('update', 'ADMIN', '2017-02-08 03:44:53', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>file name updates from EmailTemplate_1481199252.png to EmailTemplate_1486545293.png<br>'),
('update', 'ADMIN', '2017-02-08 07:19:32', 'contacts', 'shore_personnel', 'Now reports to JOVY CHAY,'),
('update', 'ADMIN', '2017-02-08 07:21:17', 'contacts', 'shore_personnel', 'Mobile 1 now contain 9886439594<br/>Now reports to JOVY CHAY,');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-02-08 07:22:07', 'contacts', 'shore_personnel', 'Mobile 1 updated from 9886439594 to 988643959<br/>Now reports to JOVY CHAY,'),
('update', 'ADMIN', '2017-02-08 07:23:48', 'contacts', 'shore_personnel', 'Notes now contain TESTING<br/>Now reports to JOVY CHAY,'),
('update', 'ADMIN', '2017-02-08 10:58:19', 'contacts', 'vessel', ''),
('update', 'ADMIN', '2017-02-08 10:58:54', 'contacts', 'vessel', ''),
('update', 'ADMIN', '2017-02-08 10:59:43', 'contacts', 'organisation_group', 'Country/City now contain HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br/>'),
('update', 'ADMIN', '2017-02-08 11:00:25', 'contacts', 'vessel', ''),
('update', 'ADMIN', '2017-02-08 11:01:10', 'contacts', 'organisation_group', 'Country/City now contain Jakarta Selatan, Jalan Kuningan Barat IV, West Kuningan, South Jakarta City, Special Capital Region of Jakarta, Indonesia<br/>Now Members are BHARATRAJ,<br/>Function now contain TEST<br/>Notes now contain TESTING<br/>'),
('update', 'ADMIN', '2017-02-08 11:04:21', 'contacts', 'vessel', ''),
('update', 'ADMIN', '2017-02-08 11:05:05', 'contacts', 'vessel', 'Technical pic now contains BHARATRAJ MEO USER,<br/>SCM pic now contains BHARATRAJ,<br/>Operation pic now contains BHARATRAJ,<br/>Emergency contacts now contains BHARATRAJ,JOVY CHAY,<br/>DPA/CSO now contains BHARATRAJ MEO USER,<br/>Crewing pic now contains BHARATRAJ,<br/>'),
('update', 'ADMIN', '2017-02-09 00:20:46', 'contacts', 'shore_personnel', 'Profile image updated to uploads/shoreProfile/20170209135036.png<br/>'),
('update', 'ADMIN', '2017-02-09 00:50:27', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-09 00:55:45', 'contacts', 'vessel', 'Technical pic now contains BHARATRAJ MEO USER,<br/>SCM pic now contains BHARATRAJ,<br/>Operation pic now contains BHARATRAJ,<br/>Emergency contacts now contains BHARATRAJ,<br/>DPA/CSO now contains BHARATRAJ MEO USER,<br/>Crewing pic now contains BHARATRAJ,<br/>'),
('update', 'ADMIN', '2017-02-09 01:38:15', 'admin', 'email_content', 'section updates from CONTACTS / VESSEL CONTACTS / VERIFY to CONTACTS / VESSEL CONTACTS / VERIFY<br>subject updates from VESSEL VERIFICATION to VESSEL VERIFICATION<br>remark updates from NIL to NIL<br>'),
('add', 'ADMIN', '2017-02-09 03:12:44', 'admin', 'shore_address', 'shore region now contain value ASIA<br>address now contain value LUCKNOW, UTTAR PRADESH, INDIA<br>full address now contain value CHOWK, LUCKNOW,UTTAR PRADESH <br>'),
('update', 'ADMIN', '2017-02-09 03:13:10', 'admin', 'shore_address', 'shore region updates from ASIA to INDIA<br>address updates from LUCKNOW, UTTAR PRADESH, INDIA to LUCKNOW, UTTAR PRADESH, INDIA<br>full address updates from CHOWK, LUCKNOW,UTTAR PRADESH  to CHOWK, LUCKNOW,UTTAR PRADESH <br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-09 03:14:08', 'contacts', 'shore_personnel', 'Mobile 1 now contain 7459923323<br/>Skype ID now contain BHARATRAJ.SINGSYS<br/>Notes now contain VERIFYING MEO-CONTACT WEB<br/>'),
('update', 'ADMIN', '2017-02-09 03:17:21', 'contacts', 'vessel', 'Technical pic now contains ,<br/>SCM pic now contains ,<br/>Operation pic now contains ,<br/>Emergency contacts now contains ,<br/>DPA/CSO now contains ,<br/>Crewing pic now contains ,<br/>Area of Operation updates from INDIA to SINGAPORE'),
('update', 'ADMIN', '2017-02-09 03:18:34', 'contacts', 'vessel', 'Technical pic now contains BHARATRAJ MEO USER,<br/>SCM pic now contains ,<br/>Operation pic now contains BHARATRAJ,<br/>Emergency contacts now contains ,<br/>DPA/CSO now contains ,<br/>Crewing pic now contains ,<br/>'),
('update', 'ADMIN', '2017-02-09 03:19:31', 'contacts', 'vessel', 'Technical pic now contains BHARATRAJ MEO USER,<br/>SCM pic now contains ,<br/>Operation pic now contains BHARATRAJ,BHARATRAJ MEO USER,<br/>Emergency contacts now contains ,<br/>DPA/CSO now contains ,<br/>Crewing pic now contains ,<br/>'),
('delete', 'ADMIN', '2017-02-09 03:20:34', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-09 03:30:59', 'admin', 'groupbu', 'group bu name now contain value LUCKNOW<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-02-09 03:31:50', 'admin', 'groupbu', 'group bu name updates from LUCKNOW to LUCKNOW<br>status updates from active to inactive<br>'),
('add', 'ADMIN', '2017-02-09 03:31:51', 'admin', 'shore_address', 'shore region now contain value LUCKNOW<br>address now contain value Omaxe City, Lucknow, Uttar Pradesh, India<br>full address now contain value SING SYS<br>'),
('update', 'ADMIN', '2017-02-09 03:32:13', 'admin', 'groupbu', 'group bu name updates from LUCKNOW to LUCKNOW<br>status updates from inactive to active<br>'),
('update', 'ADMIN', '2017-02-09 03:32:44', 'admin', 'shore_address', 'shore region updates from LUCKNOW to NOIDA<br>address updates from Omaxe City, Lucknow, Uttar Pradesh, India to OMAXE CITY, LUCKNOW, UTTAR PRADESH, INDIA<br>full address updates from SING SYS to SING SYS<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-09 03:33:01', 'admin', 'groupbu', 'group bu name now contain value LUCKNOW1<br>group bu order now contain value 1<br>'),
('delete', 'ADMIN', '2017-02-09 03:33:18', 'admin', 'shore_address', 'NOIDA deleted'),
('delete', 'ADMIN', '2017-02-09 03:33:55', 'admin', 'groupbu', 'LUCKNOW1 deleted'),
('update', 'ADMIN', '2017-02-09 03:34:08', 'admin', 'organisation_chart', 'chart title updates from ORG CHART OVERVIEW to ORG CHART OVERVIEW<br>status updates from Active to Inactive<br>'),
('update', 'ADMIN', '2017-02-09 03:35:19', 'admin', 'organisation_chart', 'chart title updates from ORG CHART OVERVIEW to ORG CHART OVERVIEW<br>status updates from Inactive to Active<br>'),
('add', 'ADMIN', '2017-02-09 03:38:35', 'admin', 'groupbu', 'group bu name now contain value MEO DEVELOPMENT AND TESTING<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-02-09 03:39:33', 'admin', 'groupbu', 'group bu name updates from LUCKNOW to LUCKNOW<br>status updates from active to inactive<br>'),
('update', 'ADMIN', '2017-02-09 03:40:31', 'admin', 'groupbu', 'group bu name updates from MEO DEVELOPMENT AND TESTING to MEO TEAM<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-09 03:40:59', 'admin', 'groupbu', 'MEO TEAM deleted'),
('add', 'ADMIN', '2017-02-09 03:41:38', 'admin', 'region', 'id group bu  now contain value INDIA<br>region title now contain value OMAXE AVENUE<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-02-09 03:42:27', 'admin', 'region', 'id group bu updates from INDIA to INDIA<br>region title updates from OMAXE AVENUE to OMAXE <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-09 03:42:54', 'admin', 'region', 'OMAXE  deleted'),
('add', 'ADMIN', '2017-02-09 03:43:33', 'admin', 'department', 'id region now contain value LUCKNOW<br>department name now contain value MEO<br>members now contain value BHARATRAJ MEO USER; <br>'),
('add', 'ADMIN', '2017-02-09 03:44:15', 'admin', 'region', 'id group bu  now contain value LUCKNOW<br>region title now contain value East<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-02-09 03:44:36', 'admin', 'department', 'id region updates from LUCKNOW to LUCKNOW<br>department name updates from MEO to MEO CONTACT<br>members updates from BHARATRAJ MEO USER;  to BHARATRAJ MEO USER; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-09 03:45:10', 'admin', 'department', 'MEO CONTACT deleted'),
('add', 'ADMIN', '2017-02-09 03:47:59', 'admin', 'organisation_group', 'id region now contain value LUCKNOW<br>org group name now contain value TEST<br>member name now contain value BHARATRAJ; <br>member email now contain value BHARATRAJ+1@SINGSYS.COM; <br>'),
('update', 'ADMIN', '2017-02-09 03:49:04', 'admin', 'organisation_group', 'id region updates from LUCKNOW to LUCKNOW<br>org group name updates from TEST to BF<br>member id updates from  to Array<br>member name updates from BHARATRAJ;  to BHARATRAJ; <br>member email updates from BHARATRAJ+1@SINGSYS.COM;  to BHARATRAJ+1@SINGSYS.COM; <br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-09 03:58:54', 'admin', 'organisation_group', 'BF deleted'),
('add', 'ADMIN', '2017-02-09 03:59:26', 'admin', 'main_vessel_type', 'type title  now contain value TESTING VESSEL<br>'),
('update', 'ADMIN', '2017-02-09 04:00:37', 'admin', 'main_vessel_type', 'type title updates from TESTING VESSEL to TESTING VESS<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-09 04:00:57', 'admin', 'main_vessel_type', 'TESTING VESS deleted'),
('add', 'ADMIN', '2017-02-09 04:01:42', 'admin', 'vessel_type', 'id main vessel type  now contain value NEAR SHORE VESSELS<br>vessel type  now contain value TAMPA<br>'),
('update', 'ADMIN', '2017-02-09 04:02:17', 'admin', 'vessel_type', 'id main vessel type updates from NEAR SHORE VESSELS to NEAR SHORE VESSELS<br>vessel type updates from TAMPA to TAMPA FLORIDA<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-02-09 04:02:41', 'admin', 'vessel_type', 'TAMPA FLORIDA deleted'),
('add', 'ADMIN', '2017-02-09 04:03:27', 'admin', 'vessel_name', 'vesselID  now contain value VS1<br>vessel name  now contain value HELLO VESSEL NAME<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('delete', 'ADMIN', '2017-02-09 04:05:20', 'admin', 'vessel_name', 'HELLO VESSEL NAME deleted'),
('add', 'ADMIN', '2017-02-09 04:07:01', 'admin', '3_vessel_type', 'vessel type name now contain value 3RD PARTY VESSEL NAME<br>'),
('update', 'ADMIN', '2017-02-09 04:07:19', 'admin', '3_vessel_type', 'vessel type name updates from 3RD PARTY VESSEL NAME to 3RD PARTY VESSEL <br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-02-09 04:07:42', 'admin', '3_vessel_type', '3RD PARTY VESSEL  deleted'),
('add', 'ADMIN', '2017-02-09 04:08:14', 'admin', '3_vessel_name', 'vessel name now contain value 3RD PARTY VESSEL<br>id third vessel type now contain value 3RD PARTY VESSEL 2<br>remarks now contain value TESTING<br>'),
('delete', 'ADMIN', '2017-02-09 04:08:31', 'admin', '3_vessel_name', '3RD PARTY VESSEL deleted'),
('add', 'ADMIN', '2017-02-09 04:09:18', 'admin', 'group_name', 'group name now contain value MEO GROUP<br>group description now contain value SINGSYS DEVELOPMENT AND TESTING TEAM<br>'),
('update', 'ADMIN', '2017-02-09 04:09:46', 'admin', 'group_name', 'group name updates from MEO GROUP to MEO GROUP<br>group description updates from SINGSYS DEVELOPMENT AND TESTING TEAM to SINGSYS TEAM<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-09 04:10:00', 'admin', 'group_name', 'MEO GROUP deleted'),
('add', 'ADMIN', '2017-02-09 04:11:03', 'admin', 'meo_users', 'user id now contain value 1011<br>emp id now contain value 11011<br>user full name now contain value RAJ BANGALORE<br>user email now contain value BHARATRAJ+123@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SSE<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-02-09 04:14:24', 'admin', 'meo_users', 'user id updates from 1011 to 1011<br>emp id updates from 11011 to 11011<br>user full name updates from RAJ BANGALORE to RAJ BANGALORE<br>user email updates from BHARATRAJ+123@SINGSYS.COM to BHARATRAJ+123@SINGSYS.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from SSE to SENIOR SOFTWARE ENGINEER<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('delete', 'ADMIN', '2017-02-09 04:15:00', 'admin', 'meo_users', 'RAJ BANGALORE deleted'),
('add', 'ADMIN', '2017-02-09 04:15:56', 'admin', 'client_users', 'client user id now contain value 1011<br>client user full name now contain value BHARAT<br>client email id now contain value BHARATRAJ+21@SINGSYS.COM<br>id region now contain value SINGAPORE <br>company now contain value SINGSYS PTE LTD<br>designation now contain value QCE<br>'),
('update', 'ADMIN', '2017-02-09 04:16:23', 'admin', 'client_users', 'client user id updates from 1011 to 1011<br>client user full name updates from BHARAT to BHARAT<br>client email id updates from BHARATRAJ+21@SINGSYS.COM to BHARATRAJ+21@SINGSYS.COM<br>id region updates from SINGAPORE  to SINGAPORE <br>company updates from SINGSYS PTE LTD to SINGSYS <br>designation updates from QCE to QCE<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-02-09 04:16:45', 'admin', 'client_users', 'BHARAT deleted'),
('add', 'ADMIN', '2017-02-09 04:17:15', 'admin', 'group_rights', 'SINGSYS TESTING Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-02-09 04:17:38', 'admin', 'group_rights', 'group rights in admin section for group \"SINGSYS TESTING\" has been deleted'),
('update', 'ADMIN', '2017-02-09 04:18:26', 'admin', 'department', 'id region updates from MALAYSIA to LUCKNOW<br>department name updates from OPERATION (MSIA) to OPERATION (MSIA)<br>members updates from AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN;  to AWG FAREEZ SYIDDIQEN; NURUL AIN KAMARUDDIN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-09 04:19:01', 'admin', 'department', 'id region updates from LUCKNOW to MALAYSIA<br>department name updates from SINGSYS to SINGSYS<br>members updates from BHARATRAJ; BHARATRAJ MEO USER;  to BHARATRAJ; BHARATRAJ MEO USER; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-09 04:19:09', 'admin', 'meo_users', 'user id now contain value 1012<br>emp id now contain value 1012<br>user full name now contain value MANISH<br>user email now contain value MANISHMAHANT@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SOFTWARE DEVELOPER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-02-09 04:20:28', 'admin', 'department', 'id region now contain value LUCKNOW<br>department name now contain value ASDFGHJKL<br>members now contain value AKASH; <br>'),
('delete', 'ADMIN', '2017-02-09 04:20:46', 'admin', 'department', 'ASDFGHJKL deleted'),
('update', 'ADMIN', '2017-02-09 04:22:43', 'admin', 'organisation_group', 'id region updates from THAILAND - SATTAHIP to THAILAND - SATTAHIP<br>org group name updates from TESTING MEMBERS VALIDATION to TESTING MEMBERS VALIDATION<br>member id updates from  to Array<br>member name updates from BHARATRAJ; AKASH;  to BHARATRAJ; AKASH; <br>member email updates from BHARATRAJ@SINGSYS.COM; AKASHKUMAR@SINGSYS.COM;  to BHARATRAJ@SINGSYS.COM; ; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-09 04:27:16', 'admin', 'meo_users', 'user id now contain value 1013<br>emp id now contain value 1013<br>user full name now contain value RP SINGH CHAUHAN<br>user email now contain value RAHULPRATAP@SINGSYS.COM<br>staff client now contain value MEO STAFF<br>designation now contain value SENIOR SOFTWARE DEVELOPER<br>expiry date now contain value <br>'),
('add', 'ADMIN', '2017-02-09 04:43:15', 'admin', 'main_vessel_type', 'type title  now contain value Main\\<br>'),
('update', 'ADMIN', '2017-02-09 04:43:27', 'admin', 'main_vessel_type', 'type title updates from Main\\ to MAIN<br>status updates from Active to Active<br>'),
('add', 'ADMIN', '2017-02-09 04:48:51', 'admin', 'main_vessel_type', 'type title  now contain value TEST<br>'),
('update', 'ADMIN', '2017-02-09 04:48:59', 'admin', 'main_vessel_type', 'type title updates from TEST to TEST<br>status updates from Active to Inactive<br>'),
('update', 'ADMIN', '2017-02-09 04:50:28', 'admin', 'department', 'id region updates from MIDDLE EAST - SAUDI to MIDDLE EAST - SAUDI<br>department name updates from TQC to TQC<br>members updates from BHARATRAJ; BHARATRAJ MEO USER; AKASH; JOSEPH GEORGE; RAMLI RASBI; PAUL OCCENOLA;  to BHARATRAJ; BHARATRAJ MEO USER; AKASH; MANISH; RP SINGH CHAUHAN; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-09 04:51:25', 'admin', 'main_vessel_type', 'type title updates from TEST to TEST<br>status updates from Inactive to Active<br>'),
('update', 'ADMIN', '2017-02-09 04:51:37', 'admin', 'main_vessel_type', 'type title updates from TEST to TEST<br>status updates from Active to Inactive<br>'),
('add', 'ADMIN', '2017-02-09 04:54:00', 'admin', 'vessel_name', 'vesselID  now contain value TESTING<br>vessel name  now contain value XYZ<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('delete', 'ADMIN', '2017-02-09 04:55:42', 'admin', 'vessel_name', 'XYZ deleted'),
('delete', 'ADMIN', '2017-02-09 04:55:58', 'admin', 'vessel_name', 'TEST VESSEL deleted'),
('add', 'ADMIN', '2017-02-09 04:56:24', 'admin', 'vessel_name', 'vesselID  now contain value HGGF<br>vessel name  now contain value MJFGHM<br>id main vessel type  now contain value NEAR SHORE VESSELS<br>id vessel type  now contain value MULTICAT/  TUGS<br>'),
('delete', 'ADMIN', '2017-02-09 04:56:35', 'admin', 'vessel_name', 'MJFGHM deleted'),
('delete', 'ADMIN', '2017-02-09 04:57:09', 'admin', 'main_vessel_type', 'TEST deleted'),
('update', 'ADMIN', '2017-02-09 04:58:07', 'admin', 'vessel_region', 'id region updates from LUCKNOW to LUCKNOW<br>id vessel name updates from  to SOVEREIGN 2; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-09 05:06:37', 'admin', '3_vessel_type', 'vessel type name now contain value AKASH<br>'),
('add', 'ADMIN', '2017-02-09 05:06:49', 'admin', '3_vessel_type', 'vessel type name now contain value testim<br>'),
('update', 'ADMIN', '2017-02-09 05:08:18', 'admin', '3_vessel_type', 'vessel type name updates from testim to TESTING<br>status updates from active to Active<br>'),
('delete', 'ADMIN', '2017-02-09 05:09:48', 'admin', '3_vessel_type', 'TESTING deleted'),
('add', 'ADMIN', '2017-02-09 05:13:22', 'admin', 'main_vessel_type', 'type title  now contain value TESTING<br>'),
('add', 'ADMIN', '2017-02-09 05:14:04', 'admin', 'vessel_name', 'vesselID  now contain value TEST<br>vessel name  now contain value TESTING<br>id main vessel type  now contain value CREWBOATS<br>id vessel type  now contain value CREW / UTILITY VESSEL<br>'),
('add', 'ADMIN', '2017-02-09 05:16:04', 'admin', 'vessel_region', 'id region  now contain value EAST<br>id vessel name  now contain value TESTING<br>'),
('delete', 'ADMIN', '2017-02-09 05:17:33', 'admin', 'vessel_region', 'East deleted'),
('add', 'ADMIN', '2017-02-09 05:22:14', 'admin', 'region', 'id group bu  now contain value INDIA<br>region title now contain value TESTING PROCESS<br>group region order now contain value 1<br>'),
('update', 'ADMIN', '2017-02-10 00:05:27', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-10 00:06:59', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-10 00:07:28', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-10 00:08:23', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-10 02:42:03', 'contacts', 'organisation_group', 'Now Members are updated ARINDAM1,BHARANI KUMAR PALAKODETI,BHARATRAJ,BHARATRAJ MEO USER,ZOHAIR ABDELRAHIM,<br/>'),
('update', 'ADMIN', '2017-02-10 03:12:11', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-10 04:02:29', 'admin', 'meo_users', 'user id updates from S00367 to S00367<br>emp id updates from 198 to 198<br>user full name updates from LIM HUI SHAN to LIM HUI SHAN<br>user email updates from HUISHAN.LIM@MEOGROUP.COM to HUISHAN.LIM@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE CONTROLLER - KMC to KNOWLEDGE ADMINSTRATOR - KMC<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-10 04:05:00', 'admin', 'meo_users', 'user id updates from S00367 to S00367<br>emp id updates from 198 to 198<br>user full name updates from LIM HUI SHAN to LIM HUI SHAN<br>user email updates from HUISHAN.LIM@MEOGROUP.COM to HUISHAN.LIM@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from KNOWLEDGE ADMINSTRATOR - KMC to KNOWLEDGE ADMINISTRATOR - KMC<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('update', 'ADMIN', '2017-02-10 04:20:55', 'admin', 'user_rights', 'GROUP NAME 2 Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-12 22:10:13', 'contacts', 'vessel', 'SOVEREIGN 2 operation pic updated to VENKATRAMAN SHESHASHAYEE,<br/>'),
('update', 'ADMIN', '2017-02-12 22:10:23', 'contacts', 'organisation_group', 'Country/City now contain HARBOURFRONT TOWER TWO HARBOURFRONT PLACE SINGAPORE<br/>Now Members are VENKATRAMAN SHESHASHAYEE,<br/>'),
('update', 'ADMIN', '2017-02-12 23:21:47', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from LUCKNOW, UTTAR PRADESH, INDIA to LUCKNOW, UTTAR PRADESH, INDIA<br>full address updates from CHOWK, LUCKNOW,UTTAR PRADESH  to CHOWK, LUCKNOW,UTTAR PRADESH <br>status updates from Active to Inactive<br>'),
('add', 'ADMIN', '2017-02-12 23:22:54', 'admin', 'organisation_group', 'id region now contain value TESTING PROCESS<br>org group name now contain value HELLO TQC<br>member name now contain value BHARAT; ; <br>member email now contain value BHARATRAJ+11@SINGSYS.COM; ; <br>'),
('update', 'ADMIN', '2017-02-12 23:23:20', 'admin', 'organisation_group', 'id region updates from TESTING PROCESS to TESTING PROCESS<br>org group name updates from HELLO TQC to HELLO TQC<br>member name updates from BHARAT; ;  to BHARAT; <br>member email updates from BHARATRAJ+11@SINGSYS.COM; ;  to BHARATRAJ+11@SINGSYS.COM; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-13 02:51:23', 'admin', 'vessel_region', 'id region updates from LUCKNOW to LUCKNOW<br>id vessel name updates from SOVEREIGN 2;  to TESTING; <br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-02-13 03:04:22', 'admin', 'organisation_group', 'id region now contain value INDONESIA<br>org group name now contain value SAFDGFGHJK;L<br>member name now contain value DSGFHGJHK; ; <br>member email now contain value SETSE@SDFD.XDG; ; <br>'),
('update', 'ADMIN', '2017-02-13 03:17:09', 'contacts', 'shore_personnel', 'Profile image updated to uploads/shoreProfile/20170213164653.png<br/>Desk Phone now contain +6568296155<br/>Desk Phone now contain +6568296155<br/>'),
('update', 'ADMIN', '2017-02-13 03:34:14', 'contacts', 'shore_personnel', 'Image has been removed.'),
('update', 'ADMIN', '2017-02-13 04:53:03', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SAFDGFGHJK;L to SAFDGFGHJK;L<br>member name updates from DSGFHGJHK; ;  to DSGFHGJHK; ; ; <br>member email updates from SETSE@SDFD.XDG; ;  to SETSE@SDFD.XDG; ; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-13 04:53:35', 'admin', 'organisation_group', 'id region updates from INDONESIA to INDONESIA<br>org group name updates from SAFDGFGHJK;L to SAFDGFGHJK;L<br>member name updates from DSGFHGJHK; ;  to DSGFHGJHK; ; ; ; <br>member email updates from SETSE@SDFD.XDG; ;  to SETSE@SDFD.XDG; ; ; ; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-02-14 02:53:41', 'admin', 'email_content', 'section updates from CONTACTS / VESSEL CONTACTS / VERIFY to CONTACTS / VESSEL CONTACTS / VERIFY<br>subject updates from VESSEL VERIFICATION to VESSEL VERIFICATION<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-14 02:54:17', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-14 02:56:36', 'admin', 'email_content', 'section updates from CONTACTS / VESSEL CONTACTS / VERIFY to CONTACTS / VESSEL CONTACTS / VERIFY<br>subject updates from VESSEL VERIFICATION to VESSEL VERIFICATION<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-14 03:22:34', 'admin', 'group_rights', ' has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li></ul></li></ol>'),
('update', 'JOVY CHAY', '2017-02-14 03:29:16', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'JOVY CHAY', '2017-02-14 03:32:59', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'JOVY CHAY', '2017-02-14 03:35:02', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-14 20:26:50', 'admin', 'organisation_group', 'id region now contain value MALAYSIA<br>org group name now contain value TEST<br>member name now contain value TEST; <br>member email now contain value TEST@TEST; <br>'),
('update', 'ADMIN', '2017-02-14 20:30:38', 'contacts', 'shore_personnel', 'Image has been removed.'),
('update', 'ADMIN', '2017-02-16 11:55:08', 'contacts', 'shore_personnel', 'Profile image of DEREK KOH updated to uploads/shoreProfile/20170217012450.png<br/>'),
('update', 'ADMIN', '2017-02-16 11:56:14', 'contacts', 'shore_personnel', 'Image has been removed.'),
('update', 'ADMIN', '2017-02-16 12:00:21', 'contacts', 'shore_personnel', 'Profile image of DEREK KOH updated to uploads/shoreProfile/20170217013013.png<br/>'),
('add', 'ADMIN', '2017-02-20 06:51:07', 'admin', 'user_rights', 'id meo user now contain value COLIN DAVID TREWHELLA<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 07:13:26', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('delete', 'ADMIN', '2017-02-20 07:14:29', 'admin', 'user_rights', 'user rights in contact section for user \"ONG CHEE WEE\" has been deleted'),
('add', 'ADMIN', '2017-02-20 07:14:47', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-20 07:16:24', 'admin', 'user_rights', 'id meo user now contain value ONG CHEE WEE<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('update', 'ADMIN', '2017-02-20 07:18:15', 'admin', 'group_rights', 'KMC SYSTEM ADMIN has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-20 07:39:45', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  KMC SYSTEM ADMIN to VESSEL GENERAL USER<br>Contacts / Shore Personnel for view is changed from all to restricted and access titles changed from none to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is changed from all to  <br>Contact / Vessels (MEO) for view is changed from all to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from all to  <br>Contacts / 3rd Party Vessels for view is changed from all to  <br>Contacts / 3rd Party Vessels for modify is changed from all to  <br>Contacts / Organisation Groups for view is changed from all to  <br>Contacts / Organisation Groups for modify is changed from all to  <br>'),
('add', 'ADMIN', '2017-02-21 07:44:22', 'admin', 'client_users', 'client user id now contain value CLIENTUSER3<br>client user full name now contain value CLIENT NEW USER 2<br>client email id now contain value CLIENT@NEW.COM<br>id region now contain value MIDDLE EAST - SAUDI<br>company now contain value NEW<br>designation now contain value NONE<br>expiry date now contain value 2017-02-28<br>'),
('add', 'ADMIN', '2017-02-21 07:45:48', 'admin', 'client_setup', 'id client user now contain value CLIENT NEW USER 2<br>project name now contain value NEW<br>id admin group now contain value VESSEL GENERAL USER<br>meo pic now contain value BHARATRAJ; <br>'),
('delete', 'ADMIN', '2017-02-21 07:51:23', 'admin', 'client_setup', 'client user rights in contact section for user \"CLIENT NEW USER 2\" has been deleted'),
('add', 'ADMIN', '2017-02-21 07:52:05', 'admin', 'client_setup', 'id client user now contain value CLIENT NEW USER 2<br>project name now contain value TEST<br>id admin group now contain value GROUP NAME 1<br>meo pic now contain value BHARATRAJ; <br>'),
('add', 'ADMIN', '2017-02-21 07:52:51', 'admin', 'user_rights', 'id meo user now contain value RHYAN DELOS REYES SABRIDO<br>id group now contain value GROUP NAME 1<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('add', 'ADMIN', '2017-02-21 07:53:11', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-21 07:54:19', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  GROUP NAME 1 to VESSEL GENERAL USER<br>meo pic changed from   to BHARANI KUMAR PALAKODETI; <br>'),
('update', 'ADMIN', '2017-02-21 21:42:52', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-21 21:43:40', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-21 21:43:51', 'admin', 'user_rights', 'VESSEL GENERAL USER Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / VESSEL SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-21 22:34:36', 'admin', 'group_rights', 'SINGSYS TESTING Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-21 22:35:09', 'admin', 'group_rights', 'SINGSYS TESTING has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('add', 'ADMIN', '2017-02-21 22:40:00', 'admin', 'user_rights', 'SINGSYS TESTING Now has USER RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN / OTHERS Now has right for view is inactive and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-21 22:40:32', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / ADMIN SETUP Now has changed right for view is inactive and for modify is inactive<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN / OTHERS Now has changed right for view is inactive and for modify is inactive<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-21 22:41:53', 'admin', 'client_setup', 'id client user changed from  ABHAY to ABHAY<br>project name changed from  TEST 2 to TEST 2<br>id admin group changed from  VESSEL GENERAL USER to SINGSYS TESTING<br>meo pic changed from  BHARANI KUMAR PALAKODETI;  to BHARANI KUMAR PALAKODETI; <br>'),
('add', 'ADMIN', '2017-02-21 22:42:08', 'admin', 'user_rights', 'id meo user now contain value MARK PETER VAN DER MOLEN<br>id group now contain value SINGSYS TESTING<br>Contacts / Shore Personnel for view is for all <br>Contacts / Shore Personnel for modify is for all <br>Contact / Vessels (MEO) for view is for all <br>Contact / Vessels (MEO) for modify is for all <br>Contacts / 3rd Party Vessels for view is for all <br>Contacts / 3rd Party Vessels for modify is for all <br>Contacts / Organisation Groups for view is for all <br>Contacts / Organisation Groups for modify is for all <br>'),
('delete', 'ADMIN', '2017-02-21 22:42:46', 'admin', 'client_setup', 'client user rights in contact section for user \"ABHAY\" has been deleted'),
('update', 'ADMIN', '2017-02-21 22:43:14', 'admin', 'group_rights', ' Now has GROUP RIGHTS as below:<br>ADMIN / ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN / VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN / ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN / CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN / OTHERS Now has changed right for view is active and for modify is active<br>status updates from active to active'),
('update', 'ADMIN', '2017-02-21 22:44:42', 'admin', 'user_rights', 'id meo user changed from  ONG CHEE WEE to ONG CHEE WEE<br>id admin group changed from  VESSEL GENERAL USER to SINGSYS TESTING<br>Contacts / Shore Personnel for view is changed from restricted to restricted and access titles changed from KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						 to KNOWLEDGE MANAGEMENT CENTRE (SIN); FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						<br>Contacts / Shore Personnel for modify is changed from  to  <br>Contact / Vessels (MEO) for view is changed from restricted to restricted and access titles changed from none to none<br>Contact / Vessels (MEO) for modify is changed from  to  <br>Contacts / 3rd Party Vessels for view is changed from  to  <br>Contacts / 3rd Party Vessels for modify is changed from  to  <br>Contacts / Organisation Groups for view is changed from  to  <br>Contacts / Organisation Groups for modify is changed from  to  <br>'),
('update', 'ADMIN', '2017-02-21 22:45:40', 'admin', 'group_rights', 'SINGSYS TESTING has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-02-21 22:46:23', 'admin', 'group_rights', 'SINGSYS TESTING has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-21 22:47:11', 'admin', 'group_rights', 'SINGSYS TESTING has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS / SHORE PERSONNEL has right for view and modify as below:<br><ul><li> Modify is for all</li></ul></li><li>CONTACT / VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / 3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS / ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-21 22:49:32', 'admin', 'group_rights', 'SINGSYS TESTING has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with ONG CHEE WEE groups</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> Modify is for all</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-22 00:09:35', 'admin', 'shore_address', 'shore region updates from BRUNEI to BRUNEI<br>address updates from Brunei to BRUNEI<br>full address updates from MICLYN EXPRESS OFFSHORE (B) SDN BHD, NO.6, SIMPANG 28-5, JALAN MAULANA, KUALA BELAIT KA 1931, BRUNEI DARUSSALAM to MICLYN EXPRESS OFFSHORE (B) SDN BHD, NO.6, SIMPANG 28-5, JALAN MAULANA, KUALA BELAIT KA 1931, BRUNEI DARUSSALAM<br>status updates from Active to Active<br>'),
('update', 'ADMIN', '2017-02-22 00:11:59', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>file name updates from N/A to EmailTemplate_1487742119.png<br>'),
('update', 'ADMIN', '2017-02-22 02:18:16', 'contacts', 'shore_personnel', 'Image has been removed.'),
('update', 'ADMIN', '2017-02-22 02:18:19', 'contacts', 'shore_personnel', 'Desk Phone of EUNICE TAN now contain +6568296155<br/>'),
('update', 'ADMIN', '2017-02-22 03:09:51', 'contacts', 'shore_personnel', 'BHARATRAJ now reports to JOVY CHAY,'),
('update', 'ADMIN', '2017-02-23 00:30:29', 'contacts', 'shore_personnel', 'DEREK KOH now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,COLIN DAVID TREWHELLA,'),
('update', 'ADMIN', '2017-02-23 00:34:35', 'contacts', 'shore_personnel', 'DEREK KOH now reports to ONG CHEE WEE,RHYAN DELOS REYES SABRIDO,COLIN DAVID TREWHELLA,'),
('update', 'ADMIN', '2017-02-24 03:30:18', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-24 03:33:44', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY groups</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY groups</li></ul></li></ol>');
INSERT INTO `meo_change_log_entity` (`action`, `modified_by`, `added_on`, `parent_section`, `change_section`, `change_log`) VALUES
('update', 'ADMIN', '2017-02-24 03:34:09', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for restricted with REKHA NANDWANI; JOVY CHAY groups</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY groups</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for all</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with REKHA NANDWANI; JOVY CHAY groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-24 03:48:20', 'admin', 'group_rights', 'VESSEL GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with KNOWLEDGE MANAGEMENT CENTRE (SIN) groups</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for restricted with KNOWLEDGE MANAGEMENT CENTRE (SIN) groups</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('update', 'ADMIN', '2017-02-24 03:59:35', 'contacts', 'shore_personnel', 'Desk Phone of REKHA NANDWANI now contain +6568296157<br/>'),
('update', 'ADMIN', '2017-02-24 04:01:35', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to TEST SUBJECT123<br>remark updates from NIL to NIL<br>file name updates from EmailTemplate_1487742119.png to EmailTemplate_1487928695.pdf<br>'),
('update', 'ADMIN', '2017-02-24 22:56:57', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>OTHERS Now has changed right for view is active and for modify is active<br>'),
('add', 'ADMIN', '2017-02-24 23:40:29', 'admin', 'user_rights', 'id meo user now contain value JOVY CHAY<br>id group now contain value KMC SYSTEM ADMIN<br>Contacts /<br>Shore Personnel for view is for all <br>Contacts /<br>Shore Personnel for modify is for all <br>Contacts /<br>Vessels (MEO) for view is for all <br>Contacts /<br>Vessels (MEO) for modify is for all <br>Contacts /<br>3rd Party Vessels for view is for all <br>Contacts /<br>3rd Party Vessels for modify is for all <br>Contacts /<br>Organisation Groups for view is for all <br>Contacts /<br>Organisation Groups for modify is for all <br>'),
('update', 'JOVY CHAY', '2017-02-24 23:41:36', 'contacts', 'shore_personnel', 'Profile image of JOVY CHAY updated to uploads/shoreProfile/20170225131129.png<br/>JOVY CHAY now reports to INDRANIL MAJUMDAR,'),
('add', 'ADMIN', '2017-02-24 23:42:31', 'admin', 'group_name', 'group name now contain value GENERAL USER<br>group description now contain value NORMAL USER<br>'),
('add', 'ADMIN', '2017-02-24 23:43:03', 'admin', 'group_rights', 'GENERAL USER Now has GROUP RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has right for view is active and for modify is inactive<br>ADMIN /<BR>VESSEL SETUP Now has right for view is active and for modify is inactive<br>ADMIN /<BR>ADMIN SETUP Now has right for view is active and for modify is inactive<br>ADMIN /<BR>CLIENT SETUP Now has right for view is active and for modify is inactive<br>ADMIN /<BR>OTHERS Now has right for view is active and for modify is inactive<br>'),
('add', 'ADMIN', '2017-02-24 23:43:37', 'admin', 'group_rights', 'GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with  groups</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-02-24 23:44:04', 'admin', 'user_rights', 'id meo user changed from  JOVY CHAY to JOVY CHAY<br>id admin group changed from  KMC SYSTEM ADMIN to GENERAL USER<br>Contacts /<br>Shore Personnel for view is changed from all to all <br>Contacts /<br>Shore Personnel for modify is changed from all to restricted and access titles changed from none to none<br>Contacts /<br>Vessels (MEO) for view is changed from all to all <br>Contacts /<br>Vessels (MEO) for modify is changed from all to restricted and access titles changed from none to none<br>Contacts /<br>3rd Party Vessels for view is changed from all to restricted and access titles changed from none to none<br>Contacts /<br>3rd Party Vessels for modify is changed from all to restricted and access titles changed from none to none<br>Contacts /<br>Organisation Groups for view is changed from all to all <br>Contacts /<br>Organisation Groups for modify is changed from all to restricted and access titles changed from none to none<br>'),
('update', 'ADMIN', '2017-02-24 23:44:24', 'admin', 'user_rights', 'GENERAL USER Now has USER RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('update', 'ADMIN', '2017-02-25 01:08:29', 'admin', 'group_rights', 'GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with LIM BENG HWEE; REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN) groups</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with LIM BENG HWEE; REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN); MICLYN ENDURANCE; ENDEAVOUR; MIDDLE EAST  - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with LIM BENG HWEE; REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN); MICLYN ENDURANCE; ENDEAVOUR; MIDDLE EAST  - DUBAI, UAE groups</li><li> Modify is for restricted with LIM BENG HWEE; REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN); MICLYN ENDURANCE; ENDEAVOUR; MIDDLE EAST  - DUBAI, UAE groups</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with LIM BENG HWEE; REKHA NANDWANI; KNOWLEDGE MANAGEMENT CENTRE (SIN); MICLYN ENDURANCE; ENDEAVOUR; MIDDLE EAST  - DUBAI, UAE groups</li></ul></li></ol>'),
('update', 'JOVY CHAY', '2017-02-25 01:15:17', 'contacts', 'shore_personnel', 'JOVY CHAY now reports to INDRANIL MAJUMDAR,'),
('update', 'JOVY CHAY', '2017-02-25 01:15:29', 'contacts', 'shore_personnel', 'JOVY CHAY now reports to INDRANIL MAJUMDAR,'),
('update', 'ADMIN', '2017-02-25 01:43:56', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from TEST SUBJECT123 to MEO Contacts - Pls verify your contact information<br>remark updates from NIL to NIL<br>'),
('update', 'JOVY CHAY', '2017-02-25 02:06:20', 'contacts', 'vessel', 'ENDEAVOUR operation pic updated to REKHA NANDWANI,JOVY CHAY,<br/>'),
('update', 'ADMIN', '2017-02-28 00:34:05', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>OTHERS Now has changed right for view is active and for modify is active<br>'),
('update', 'JOVY CHAY', '2017-02-28 00:35:32', 'admin', 'user_rights', 'GENERAL USER Now has USER RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>VESSEL SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>ADMIN SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>CLIENT SETUP Now has changed right for view is active and for modify is inactive<br>ADMIN /<BR>OTHERS Now has changed right for view is active and for modify is inactive<br>'),
('delete', 'ADMIN', '2017-02-28 01:24:41', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:25:19', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 01:28:13', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:28:57', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 01:30:10', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:30:51', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 01:32:12', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:32:51', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 01:35:18', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:35:57', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 01:36:04', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 01:37:08', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:37:43', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 01:37:48', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 01:39:38', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:40:09', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 01:40:13', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 01:42:17', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:43:09', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 01:43:12', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 01:45:15', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:47:04', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 01:47:08', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 01:47:42', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:48:17', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 01:48:22', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 01:48:54', 'admin', 'shore_address', 'SINGAPORE  deleted'),
('delete', 'ADMIN', '2017-02-28 01:49:26', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 01:49:59', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 01:51:16', 'admin', 'shore_address', 'INDIA deleted'),
('update', 'ADMIN', '2017-02-28 04:42:41', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from MEO Contacts - Pls verify your contact information to MEO Contacts - Pls verify your contact information<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-28 04:44:01', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from MEO Contacts - Pls verify your contact information to MEO Contacts - Pls verify your contact information<br>remark updates from NIL to NIL<br>'),
('update', 'ADMIN', '2017-02-28 04:44:27', 'admin', 'email_content', 'section updates from CONTACTS / SHORE PERSONNEL / VERIFY to CONTACTS / SHORE PERSONNEL / VERIFY<br>subject updates from MEO Contacts - Pls verify your contact information to MEO Contacts - Pls verify your contact information<br>remark updates from NIL to NIL<br>'),
('add', 'ADMIN', '2017-02-28 06:10:44', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 06:11:40', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 06:12:17', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 23:13:46', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:14:29', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 23:15:56', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:17:25', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('delete', 'ADMIN', '2017-02-28 23:19:28', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:20:06', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 23:20:15', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 23:21:07', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:22:05', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 23:22:14', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 23:52:54', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:53:34', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 23:53:41', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 23:54:46', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:55:32', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 23:55:38', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 23:56:43', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:57:24', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 23:57:32', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 23:57:42', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-02-28 23:58:57', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-02-28 23:59:04', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to BANGALORELUCKNOW<br>full address updates from VIJAYNAGAR to VIJAYNAGAROMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-02-28 23:59:14', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:00:30', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:00:38', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:00:47', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:15:59', 'admin', 'groupbu', 'group bu name now contain value Test group<br>group bu order now contain value 1<br>'),
('add', 'ADMIN', '2017-03-01 00:36:49', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:36:56', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:37:06', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:38:49', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:38:56', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:39:05', 'admin', 'shore_address', 'INDIA deleted'),
('delete', 'ADMIN', '2017-03-01 00:40:58', 'admin', 'groupbu', 'Test group deleted'),
('add', 'ADMIN', '2017-03-01 00:41:43', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:41:51', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:42:01', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:42:22', 'admin', 'groupbu', 'group bu name now contain value TEST GROUP<br>group bu order now contain value 1<br>'),
('delete', 'ADMIN', '2017-03-01 00:48:43', 'admin', 'groupbu', 'TEST GROUP deleted'),
('add', 'ADMIN', '2017-03-01 00:49:25', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:49:34', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:49:44', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:49:55', 'admin', 'groupbu', 'group bu name now contain value TEST GROUP<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-03-01 00:50:01', 'admin', 'groupbu', 'group bu name updates from TEST GROUP to TEST GROUPTEST GROUP1<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-03-01 00:50:20', 'admin', 'groupbu', 'TEST GROUPTEST GROUP1 deleted'),
('add', 'ADMIN', '2017-03-01 00:51:53', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:52:03', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:52:16', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:52:25', 'admin', 'groupbu', 'group bu name now contain value TEST GROUP<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-03-01 00:52:30', 'admin', 'groupbu', 'group bu name updates from TEST GROUP to TEST GROUP1<br>status updates from active to active<br>'),
('delete', 'ADMIN', '2017-03-01 00:53:11', 'admin', 'groupbu', 'TEST GROUP1 deleted'),
('add', 'ADMIN', '2017-03-01 00:54:04', 'admin', 'shore_address', 'shore region now contain value INDIA<br>address now contain value BANGALORE<br>full address now contain value VIJAYNAGAR<br>'),
('update', 'ADMIN', '2017-03-01 00:54:13', 'admin', 'shore_address', 'shore region updates from INDIA to INDIA<br>address updates from BANGALORE to LUCKNOW<br>full address updates from VIJAYNAGAR to OMAXE AVENUE<br>status updates from Active to Active<br>'),
('delete', 'ADMIN', '2017-03-01 00:54:22', 'admin', 'shore_address', 'INDIA deleted'),
('add', 'ADMIN', '2017-03-01 00:54:30', 'admin', 'groupbu', 'group bu name now contain value TEST GROUP<br>group bu order now contain value 1<br>'),
('update', 'ADMIN', '2017-03-01 00:54:35', 'admin', 'groupbu', 'group bu name updates from TEST GROUP to TEST GROUP1<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-03-02 19:22:44', 'admin', 'group_name', 'group name now contain value SVS GENERAL USER<br>group description now contain value X<br>'),
('add', 'ADMIN', '2017-03-02 19:23:56', 'admin', 'group_rights', 'SVS GENERAL USER has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with  groups</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with SPECIALISED VESSEL SERVICES (SVS) groups</li></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul><li> View is for restricted with SPECIALISED VESSEL SERVICES (SVS) groups</li><li> Modify is for restricted with SPECIALISED VESSEL SERVICES (SVS) groups</li></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul><li> View is for all</li><li> Modify is for restricted with SPECIALISED VESSEL SERVICES (SVS) groups</li></ul></li></ol>'),
('update', 'ADMIN', '2017-03-02 19:53:39', 'admin', 'user_rights', 'KMC SYSTEM ADMIN Now has USER RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>VESSEL SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>ADMIN SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>CLIENT SETUP Now has changed right for view is active and for modify is active<br>ADMIN /<BR>OTHERS Now has changed right for view is active and for modify is active<br>'),
('update', 'ADMIN', '2017-03-02 21:08:40', 'contacts', 'shore_personnel', 'Image has been removed.'),
('update', 'ADMIN', '2017-03-02 21:35:54', 'contacts', 'shore_personnel', 'Profile image of DEREK KOH updated to uploads/shoreProfile/20170303110549.png<br/>'),
('update', 'ADMIN', '2017-03-02 21:41:29', 'contacts', 'shore_personnel', 'Profile image of DEREK KOH updated to uploads/shoreProfile/20170303111123.png<br/>'),
('update', 'ADMIN', '2017-03-02 21:43:02', 'contacts', 'shore_personnel', 'Profile image of VENKATRAMAN SHESHASHAYEE updated to uploads/shoreProfile/20170303111258.png<br/>'),
('update', 'ADMIN', '2017-03-02 22:01:52', 'contacts', 'vessel', 'SAMSON SUPPLIER technical pic updated to JOSE WILSON OTO,HISHAM  AHAMED,<br/>SAMSON SUPPLIER SCM pic updated to LENIN LAMA ,JASIM HUSSAIN,<br/>SAMSON SUPPLIER operation pic updated to TAMER S.BALBOUL,<br/>SAMSON SUPPLIER emergency contacts updated to RAMLI RASBI,<br/>SAMSON SUPPLIER DPA/CSO updated to ABDALLA ABUELGASIM,ZOHAIR ABDELRAHIM,<br/>SAMSON SUPPLIER crewing pic updated to ANABEL BALINA,BISYRUN HASAN BASRI,<br/>SAMSON SUPPLIER Image has been updated.<br/>'),
('update', 'ADMIN', '2017-03-02 23:27:31', 'admin', 'region', 'id group bu updates from GROUP to GROUP<br>id entity updates from MICLYN EXPRESS OFFSHORE PTE LTD to <br>region title updates from SINGAPORE  to SINGAPORE <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-03-03 00:12:31', 'admin', 'vessel_name', 'vesselID updates from MS2 to MS2<br>vessel name updates from MEO SOVEREIGN 1 to MEO SOVEREIGN 1<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>id entity updates from  to Array<br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-03-10 02:35:48', 'admin', 'region', 'id group bu updates from GROUP to GROUP<br>id entity updates from SINGSYS to <br>region title updates from SINGAPORE  to SINGAPORE <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-03-10 02:36:44', 'admin', 'department', 'id region updates from AUSTRALIA to AUSTRALIA<br>department name updates from HUMAN RESOURCE (AUS) to HUMAN RESOURCE (AUS)<br>cost centre updates from  to DOCC001<br>members updates from VALERIE PRENTICE ; AKASH;  to VALERIE PRENTICE ; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-03-10 02:36:47', 'admin', 'department', 'id region updates from AUSTRALIA to AUSTRALIA<br>department name updates from HUMAN RESOURCE (AUS) to HUMAN RESOURCE (AUS)<br>cost centre updates from DOCC001 to DOCC001<br>members updates from VALERIE PRENTICE ; AKASH;  to VALERIE PRENTICE ; AKASH; <br>status updates from active to active<br>'),
('update', 'ADMIN', '2017-03-16 03:32:07', 'admin', 'meo_users', 'user id updates from S00148 to S00148<br>emp id updates from 136 to 136<br>user full name updates from JOVY CHAY to JOVY CHAY<br>user email updates from JOVY.CHAY@MEOGROUP.COM to JOVY.CHAY@MEOGROUP.COM<br>staff client updates from MEO STAFF to MEO STAFF<br>designation updates from MANAGER - KNOWLEDGE MANAGEMENT to MANAGER - KNOWLEDGE MANAGEMENT<br>domain id updates from  to JOVY.CHAY<br>directory updates from  to MEO.LOCAL<br>status updates from active to active<br>expiry date updates from 0000-00-00 to <br>'),
('add', 'ADMIN', '2017-03-16 03:32:58', 'admin', 'meo_users', 'user id now contain value TEST2<br>emp id now contain value TEST3<br>user full name now contain value JOVY C (TEST)<br>user email now contain value JOVY_CHAY@YAHOO.COM.SG<br>staff client now contain value MEO STAFF<br>designation now contain value TEST DESIGNATION<br>domain id now contain value NIL<br>directory now contain value NIL<br>expiry date now contain value <br>'),
('update', 'ADMIN', '2017-03-29 01:55:26', 'admin', 'vessel_name', 'vesselID updates from MS1 to MS1<br>vessel name updates from SOVEREIGN 2 to SOVEREIGN 2<br>id vessel type updates from MULTICAT/  TUGS to MULTICAT/  TUGS<br>id entity updates from  to Array<br>status updates from active to active<br>'),
('add', 'ADMIN', '2017-03-29 15:44:31', '', '', 'Claim Type <b>CAPEX CLAIM</b> added'),
('add', 'ADMIN', '2017-03-29 15:45:25', '', '', 'Claim Type <b>CAPEX CLAIM</b> added'),
('add', 'ADMIN', '2017-03-29 15:52:19', '', '', 'Claim Type <b>CAPEX CLAIM</b> added'),
('add', 'ADMIN', '2017-03-29 16:41:16', '', '', 'Expense Type <b>TEST</b> added for <b>CAPEX CLAIM</b> claim'),
('add', 'ADMIN', '2017-03-30 03:24:37', '', '', 'Expense Type <b>TEST2</b> added for <b>CAPEX CLAIM</b> claim'),
('add', 'ADMIN', '2017-03-30 03:24:49', '', '', 'Expense Type <b>TEST3</b> added for <b>CAPEX CLAIM</b> claim'),
('add', 'ADMIN', '2017-05-19 04:36:54', 'admin', 'group_rights', 'GROUP NAME 1 has rights for some sections as below:<ol class=\"group-rights-contact\"><li>CONTACTS /<BR>SHORE PERSONNEL has right for view and modify as below:<br><ul><li> View is for all</li></ul></li><li>CONTACTS /<BR>VESSELS (MEO) has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR>3RD PARTY VESSELS has right for view and modify as below:<br><ul></ul></li><li>CONTACTS /<BR>ORGANISATION GROUPS has right for view and modify as below:<br><ul></ul></li></ol>'),
('add', 'ADMIN', '2017-05-19 04:52:08', 'admin', 'group_rights', 'SVS GENERAL USER Now has GROUP RIGHTS as below:<br>ADMIN /<BR>ORGANISATION SETUP Now has right for view is active and for modify is active<br>ADMIN /<BR>VESSEL SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN /<BR>ADMIN SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN /<BR>CLIENT SETUP Now has right for view is inactive and for modify is inactive<br>ADMIN /<BR>OTHERS Now has right for view is inactive and for modify is inactive<br>');

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
('5141c7044c29e3b1f31c1877b078b5d7', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1493014016, '');

-- --------------------------------------------------------

--
-- Table structure for table `meo_claim_expense_type_entity`
--

CREATE TABLE `meo_claim_expense_type_entity` (
  `id_claim` int(11) UNSIGNED NOT NULL,
  `id_type_claim` int(11) NOT NULL,
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
(1, 1, 'MEALS', 'active', '2017-01-17 07:34:03', 'ADMIN', '0000-00-00 00:00:00', ''),
(2, 1, 'TESTING', 'active', '2017-01-17 22:06:04', 'ADMIN', '0000-00-00 00:00:00', ''),
(3, 1, 'FLIGHTS', 'active', '2017-01-17 22:06:20', 'ADMIN', '2017-01-18 11:37:02', 'ADMIN'),
(6, 0, 'TEST', 'active', '2017-01-18 01:40:04', 'ADMIN', '0000-00-00 00:00:00', ''),
(7, 5, 'TEST', 'active', '2017-03-29 16:41:16', 'ADMIN', '0000-00-00 00:00:00', ''),
(8, 5, 'TEST2', 'active', '2017-03-30 03:24:37', 'ADMIN', '0000-00-00 00:00:00', ''),
(9, 5, 'TEST3', 'active', '2017-03-30 03:24:49', 'ADMIN', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `meo_claim_types_entity`
--

CREATE TABLE `meo_claim_types_entity` (
  `id_claim_type` int(11) UNSIGNED NOT NULL,
  `claim_type_name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(200) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_claim_types_entity`
--

INSERT INTO `meo_claim_types_entity` (`id_claim_type`, `claim_type_name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`) VALUES
(1, 'LOCAL CLAIM', 'active', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(2, 'TRAVEL CLAIM', 'active', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(3, 'HR CLAIM', 'active', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(4, 'IT CLAIM', 'active', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(5, 'CAPEX CLAIM', 'active', '2017-03-29 15:52:19', 'ADMIN', '0000-00-00 00:00:00', '');

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
(1, 'CLIENTUSER1', 'ABHAY', 26, 'ABHAY@SINGSYS.COM', 'SINGSYS', 'CEO', NULL, NULL, 'active', '', '2017-01-31', '2017-01-06 11:48:28', '0000-00-00 00:00:00', 'no'),
(2, 'CLIENTUSER3', 'CLIENT NEW USER 2', 59, 'CLIENT@NEW.COM', 'NEW', 'NONE', NULL, NULL, 'active', '', '2017-02-28', '2017-02-21 07:44:22', '0000-00-00 00:00:00', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `meo_client_user_rights_mailroom_entity`
--

CREATE TABLE `meo_client_user_rights_mailroom_entity` (
  `id_client_user` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(180) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_client_user_rights_mailroom_entity`
--

INSERT INTO `meo_client_user_rights_mailroom_entity` (`id_client_user`, `id_group`, `added_on`, `added_by`, `updated_on`, `updated_by`) VALUES
(1, 3, '2017-02-16 06:02:43', 'ADMIN', '2017-02-16 11:33:19', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `meo_commercial_pic`
--

CREATE TABLE `meo_commercial_pic` (
  `id_commercial_pic` int(11) NOT NULL,
  `id_contact_rights` int(11) UNSIGNED NOT NULL,
  `id_meo_user` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_commercial_pic`
--

INSERT INTO `meo_commercial_pic` (`id_commercial_pic`, `id_contact_rights`, `id_meo_user`) VALUES
(2, 5, 106);

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
(1, 'smtp_host', 'ssl://smtp.gmail.com'),
(2, 'smtp_port', '465'),
(3, 'smtp_email', 'singsys123@gmail.com'),
(4, 'smtp_password', 'temp@123'),
(5, 'admin_email', 'bharatraj@singsys.com');

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
(1, 3, 'active', '2017-01-06 12:32:56', '2017-02-20 20:48:15'),
(2, 4, 'active', '2017-02-02 20:00:58', '2017-02-24 17:18:20'),
(3, 5, 'active', '2017-02-06 00:09:03', '2017-02-22 12:19:31'),
(5, 6, 'active', '2017-02-24 23:43:37', '2017-02-25 14:38:29'),
(6, 7, 'active', '2017-03-02 19:23:56', '0000-00-00 00:00:00'),
(7, 1, 'active', '2017-05-19 04:36:54', '0000-00-00 00:00:00');

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
(1, 6, 'view', 'all', '', ''),
(1, 6, 'modify', 'all', '', ''),
(1, 7, 'view', 'all', '', ''),
(1, 7, 'modify', 'all', '', ''),
(1, 8, 'view', 'all', '', ''),
(1, 8, 'modify', 'all', '', ''),
(1, 9, 'view', 'all', '', ''),
(1, 9, 'modify', 'all', '', ''),
(3, 6, 'view', 'restricted', 'personal', '11'),
(3, 6, 'view', 'restricted', 'department', ''),
(3, 6, 'modify', 'all', '', ''),
(3, 7, 'view', 'all', '', ''),
(3, 7, 'modify', 'all', '', ''),
(3, 8, 'view', 'all', '', ''),
(3, 8, 'modify', 'all', '', ''),
(3, 9, 'view', '', '', ''),
(3, 9, 'modify', 'all', '', ''),
(2, 6, 'view', 'all', '', ''),
(2, 6, 'modify', 'restricted', 'personal', ''),
(2, 6, 'modify', 'restricted', 'department', '7'),
(2, 7, 'view', 'restricted', 'vessel', ''),
(2, 7, 'view', 'restricted', 'region', ''),
(2, 7, 'modify', '', '', ''),
(2, 8, 'view', '', '', ''),
(2, 8, 'modify', '', '', ''),
(2, 9, 'view', '', '', ''),
(2, 9, 'modify', '', '', ''),
(5, 6, 'view', 'all', '', ''),
(5, 6, 'modify', 'restricted', 'personal', '60,36'),
(5, 6, 'modify', 'restricted', 'department', '7'),
(5, 7, 'view', 'all', '', ''),
(5, 7, 'modify', 'restricted', 'vessel', '89,159'),
(5, 7, 'modify', 'restricted', 'region', '36'),
(5, 8, 'view', 'restricted', '3_vessel', ''),
(5, 8, 'view', 'restricted', 'vessel_type', ''),
(5, 8, 'modify', 'restricted', '3_vessel', ''),
(5, 8, 'modify', 'restricted', 'vessel_type', ''),
(5, 9, 'view', 'all', '', ''),
(5, 9, 'modify', 'restricted', 'group', ''),
(5, 9, 'modify', 'restricted', 'region', ''),
(6, 6, 'view', 'all', '', ''),
(6, 6, 'modify', 'restricted', 'personal', ''),
(6, 6, 'modify', 'restricted', 'department', ''),
(6, 7, 'view', 'all', '', ''),
(6, 7, 'modify', 'restricted', 'vessel', ''),
(6, 7, 'modify', 'restricted', 'region', '34'),
(6, 8, 'view', 'restricted', '3_vessel', ''),
(6, 8, 'view', 'restricted', 'vessel_type', ''),
(6, 8, 'modify', 'restricted', '3_vessel', ''),
(6, 8, 'modify', 'restricted', 'vessel_type', ''),
(6, 9, 'view', 'all', '', ''),
(6, 9, 'modify', 'restricted', 'group', ''),
(6, 9, 'modify', 'restricted', 'region', ''),
(7, 6, 'view', 'all', '', ''),
(7, 6, 'modify', '', '', ''),
(7, 7, 'view', '', '', ''),
(7, 7, 'modify', '', '', ''),
(7, 8, 'view', '', '', ''),
(7, 8, 'modify', '', '', ''),
(7, 9, 'view', '', '', ''),
(7, 9, 'modify', '', '', '');

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

--
-- Dumping data for table `meo_contact_rights`
--

INSERT INTO `meo_contact_rights` (`id_contact_rights`, `id_client`, `project_name`, `id_admin_group`, `added_on`, `updated_on`) VALUES
(5, 2, 'TEST', 1, '2017-02-21 07:52:05', '0000-00-00 00:00:00');

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
(8, 5, 11, 'active', '2017-02-20 07:16:24', '2017-02-22 12:14:41'),
(9, 1, 12, 'active', '2017-02-21 07:52:51', '0000-00-00 00:00:00'),
(10, 5, 14, 'active', '2017-02-21 22:42:08', '0000-00-00 00:00:00'),
(11, 6, 119, 'active', '2017-02-24 23:40:29', '2017-02-25 13:14:03');

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
(8, 6, 'view', 'restricted', 'personal', '11'),
(8, 6, 'view', 'restricted', 'department', ''),
(8, 6, 'modify', 'all', '', ''),
(8, 7, 'view', 'all', '', ''),
(8, 7, 'modify', 'all', '', ''),
(8, 8, 'view', 'all', '', ''),
(8, 8, 'modify', 'all', '', ''),
(8, 9, 'view', '', '', ''),
(8, 9, 'modify', 'all', '', ''),
(10, 6, 'view', 'restricted', 'personal', '11'),
(10, 6, 'view', 'restricted', 'department', ''),
(10, 6, 'modify', 'all', '', ''),
(10, 7, 'view', 'all', '', ''),
(10, 7, 'modify', 'all', '', ''),
(10, 8, 'view', 'all', '', ''),
(10, 8, 'modify', 'all', '', ''),
(10, 9, 'view', '', '', ''),
(10, 9, 'modify', 'all', '', ''),
(11, 6, 'view', 'all', '', ''),
(11, 6, 'modify', 'restricted', 'personal', '60,36'),
(11, 6, 'modify', 'restricted', 'department', '7'),
(11, 7, 'view', 'all', '', ''),
(11, 7, 'modify', 'restricted', 'vessel', '89,159'),
(11, 7, 'modify', 'restricted', 'region', '36'),
(11, 8, 'view', 'restricted', '3_vessel', ''),
(11, 8, 'view', 'restricted', 'vessel_type', ''),
(11, 8, 'modify', 'restricted', '3_vessel', ''),
(11, 8, 'modify', 'restricted', 'vessel_type', ''),
(11, 9, 'view', 'all', '', ''),
(11, 9, 'modify', 'restricted', 'group', ''),
(11, 9, 'modify', 'restricted', 'region', ''),
(9, 6, 'view', 'all', '', ''),
(9, 6, 'modify', '', '', ''),
(9, 7, 'view', '', '', ''),
(9, 7, 'modify', '', '', ''),
(9, 8, 'view', '', '', ''),
(9, 8, 'modify', '', '', ''),
(9, 9, 'view', '', '', ''),
(9, 9, 'modify', '', '', '');

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

--
-- Dumping data for table `meo_contact_user_rights_association`
--

INSERT INTO `meo_contact_user_rights_association` (`id_contact_rights`, `id_section`, `access_for`, `access_with`, `access_in`, `access_id`) VALUES
(5, 6, 'view', 'all', '', ''),
(5, 6, 'modify', '', '', ''),
(5, 7, 'view', '', '', ''),
(5, 7, 'modify', '', '', ''),
(5, 8, 'view', '', '', ''),
(5, 8, 'modify', '', '', ''),
(5, 9, 'view', '', '', ''),
(5, 9, 'modify', '', '', '');

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

--
-- Dumping data for table `meo_countries`
--

INSERT INTO `meo_countries` (`countryid`, `countryname`, `regionid`, `country_alias`, `dial_code`) VALUES
(1, 'Andorra', 6, 'andorra', '+376'),
(2, 'United Arab Emirates', 1, 'united-arab-emirates', '+971'),
(3, 'Afghanistan', 1, 'afghanistan', '+93'),
(4, 'Antigua and Barbuda', 3, 'antigua-and-barbuda', '+1268'),
(5, 'Anguilla', 3, 'anguilla', '+1 264'),
(6, 'Albania', 6, 'albania', '+355'),
(7, 'Armenia', 1, 'armenia', '+374'),
(8, 'Angola', 2, 'angola', '+244'),
(9, 'Antarctica', 5, 'antarctica', '+672'),
(10, 'Argentina', 4, 'argentina', '+54'),
(11, 'American Samoa', 7, 'american-samoa', '+1 684'),
(12, 'Austria', 6, 'austria', '+43'),
(13, 'Oceania', 7, 'oceania', '+61'),
(14, 'Aruba', 3, 'aruba', '+297'),
(15, 'Åland', 6, 'land', '+358'),
(16, 'Azerbaijan', 1, 'azerbaijan', '+994'),
(17, 'Bosnia and Herzegovina', 6, 'bosnia-and-herzegovina', '+387'),
(18, 'Barbados', 3, 'barbados', '+1 246'),
(19, 'Bangladesh', 1, 'bangladesh', '+880'),
(20, 'Belgium', 6, 'belgium', '+32'),
(21, 'Burkina Faso', 2, 'burkina-faso', '+226'),
(22, 'Bulgaria', 6, 'bulgaria', '+359'),
(23, 'Bahrain', 1, 'bahrain', '+973'),
(24, 'Burundi', 2, 'burundi', '+257'),
(25, 'Benin', 2, 'benin', '+229'),
(26, 'Saint Barthélemy', 3, 'saint-barthlemy', '+590'),
(27, 'Bermuda', 3, 'bermuda', '+1 441'),
(28, 'Brunei', 1, 'brunei', '+673'),
(29, 'Bolivia', 4, 'bolivia', '+591'),
(30, 'Bonaire', 3, 'bonaire', '+599'),
(31, 'Brazil', 4, 'brazil', '+55'),
(32, 'Bahamas', 3, 'bahamas', '+1 242'),
(33, 'Bhutan', 1, 'bhutan', '+975'),
(34, 'Bouvet Island', 5, 'bouvet-island', '+47'),
(35, 'Botswana', 2, 'botswana', '+267'),
(36, 'Belarus', 6, 'belarus', '+375'),
(37, 'Belize', 3, 'belize', '+501'),
(38, 'Canada', 3, 'canada', '+1'),
(39, 'Cocos [Keeling] Islands', 1, 'cocos-keeling-islands', '+61'),
(40, 'Democratic Republic of the Congo', 2, 'democratic-republic-of-the-congo', '+243'),
(41, 'Central 2n Republic', 2, 'central-2n-republic', '+236'),
(42, 'Republic of the Congo', 2, 'republic-of-the-congo', '+242'),
(43, 'Switzerland', 6, 'switzerland', '+41'),
(44, 'Ivory Coast', 2, 'ivory-coast', '+225'),
(45, 'Cook Islands', 7, 'cook-islands', '+682'),
(46, 'Chile', 4, 'chile', '+56'),
(47, 'Cameroon', 2, 'cameroon', '+237'),
(48, 'China', 1, 'china', '+86'),
(49, 'Colombia', 4, 'colombia', '+57'),
(50, 'Costa Rica', 3, 'costa-rica', '+506'),
(51, 'Cuba', 3, 'cuba', '+53'),
(52, 'Cape Verde', 2, 'cape-verde', '+238'),
(53, 'Curacao', 3, 'curacao', '+599'),
(54, 'Christmas Island', 1, 'christmas-island', '+61'),
(55, 'Cyprus', 6, 'cyprus', '+537'),
(56, 'Czech Republic', 6, 'czech-republic', '+420'),
(57, 'Germany', 6, 'germany', '+49'),
(58, 'Djibouti', 2, 'djibouti', '+253'),
(59, 'Denmark', 6, 'denmark', '+45'),
(60, 'Dominica', 3, 'dominica', '+1 767'),
(61, 'Dominican Republic', 3, 'dominican-republic', '+1 849'),
(62, 'Algeria', 2, 'algeria', '+213'),
(63, 'Ecuador', 4, 'ecuador', '+593'),
(64, 'Estonia', 6, 'estonia', '+372'),
(65, 'Egypt', 2, 'egypt', '+20'),
(66, 'Western Sahara', 2, 'western-sahara', '+212'),
(67, 'Eritrea', 2, 'eritrea', '+291'),
(68, 'Spain', 6, 'spain', '+34'),
(69, 'Ethiopia', 2, 'ethiopia', '+251'),
(70, 'Finland', 6, 'finland', '+358'),
(71, 'Fiji', 7, 'fiji', '+679'),
(72, 'Falkland Islands', 4, 'falkland-islands', '+500'),
(73, 'Micronesia', 7, 'micronesia', '+691'),
(74, 'Faroe Islands', 6, 'faroe-islands', '+298'),
(75, 'France', 6, 'france', '+33'),
(76, 'Gabon', 2, 'gabon', '+241'),
(77, 'United Kingdom', 6, 'united-kingdom', '+44'),
(78, 'Grenada', 3, 'grenada', '+1 473'),
(79, 'Georgia', 1, 'georgia', '+995'),
(80, 'French Guiana', 4, 'french-guiana', '+594'),
(81, 'Guernsey', 6, 'guernsey', '+44'),
(82, 'Ghana', 2, 'ghana', '+233'),
(83, 'Gibraltar', 6, 'gibraltar', '+350'),
(84, 'Greenland', 3, 'greenland', '+299'),
(85, 'Gambia', 2, 'gambia', '+220'),
(86, 'Guinea', 2, 'guinea', '+224'),
(87, 'Guadeloupe', 3, 'guadeloupe', '+590'),
(88, 'Equatorial Guinea', 2, 'equatorial-guinea', '+240'),
(89, 'Greece', 6, 'greece', '+30'),
(90, 'South Georgia and the South Sandwich Islands', 5, 'south-georgia-and-the-south-sandwich-islands', '+500'),
(91, 'Guatemala', 3, 'guatemala', '+502'),
(92, 'Guam', 7, 'guam', '+1 671'),
(93, 'Guinea-Bissau', 2, 'guinea-bissau', '+245'),
(94, 'Guyana', 4, 'guyana', '+595'),
(95, 'Hong Kong', 1, 'hong-kong', '+852'),
(96, 'Heard Island and McDonald Islands', 5, 'heard-island-and-mcdonald-islands', '+505'),
(97, 'Honduras', 3, 'honduras', '+504'),
(98, 'Croatia', 6, 'croatia', '+385'),
(99, 'Haiti', 3, 'haiti', '+509'),
(100, 'Hungary', 6, 'hungary', '+36'),
(101, 'Indonesia', 1, 'indonesia', '+62'),
(102, 'Ireland', 6, 'ireland', '+353'),
(103, 'Israel', 1, 'israel', '+972'),
(104, 'Isle of Man', 6, 'isle-of-man', '+44'),
(105, 'India', 1, 'india', '+91'),
(106, 'British Indian Ocean Territory', 1, 'british-indian-ocean-territory', '+246'),
(107, 'Iraq', 1, 'iraq', '+964'),
(108, 'Iran', 1, 'iran', '+98'),
(109, 'Iceland', 6, 'iceland', '+354'),
(110, 'Italy', 6, 'italy', '+39'),
(111, 'Jersey', 6, 'jersey', '+44'),
(112, 'Jamaica', 3, 'jamaica', '+1 876'),
(113, 'Jordan', 1, 'jordan', '+962'),
(114, 'Japan', 1, 'japan', '+81'),
(115, 'Kenya', 2, 'kenya', '+254'),
(116, 'Kyrgyzstan', 1, 'kyrgyzstan', '+996'),
(117, 'Cambodia', 1, 'cambodia', '+855'),
(118, 'Kiribati', 7, 'kiribati', '+686'),
(119, 'Comoros', 2, 'comoros', '+269'),
(120, 'Saint Kitts and Nevis', 3, 'saint-kitts-and-nevis', '+1 869'),
(121, 'North Korea', 1, 'north-korea', '+850'),
(122, 'South Korea', 1, 'south-korea', '+82'),
(123, 'Kuwait', 1, 'kuwait', '+965'),
(124, 'Cayman Islands', 3, 'cayman-islands', '+ 345'),
(125, 'Kazakhstan', 1, 'kazakhstan', '+7 7'),
(126, 'Laos', 1, 'laos', '+856'),
(127, 'Lebanon', 1, 'lebanon', '+961'),
(128, 'Saint Lucia', 3, 'saint-lucia', '+1 758'),
(129, 'Liechtenstein', 6, 'liechtenstein', '+423'),
(130, 'Sri Lanka', 1, 'sri-lanka', '+94'),
(131, 'Liberia', 2, 'liberia', '+231'),
(132, 'Lesotho', 2, 'lesotho', '+266'),
(133, 'Lithuania', 6, 'lithuania', '+370'),
(134, 'Luxembourg', 6, 'luxembourg', '+352'),
(135, 'Latvia', 6, 'latvia', '+371'),
(136, 'Libya', 2, 'libya', '+218'),
(137, 'Morocco', 2, 'morocco', '+212'),
(138, 'Monaco', 6, 'monaco', '+377'),
(139, 'Moldova', 6, 'moldova', '+373'),
(140, 'Montenegro', 6, 'montenegro', '+382'),
(141, 'Saint Martin', 3, 'saint-martin', '+590'),
(142, 'Madagascar', 2, 'madagascar', '+261'),
(143, 'Marshall Islands', 7, 'marshall-islands', '+692'),
(144, 'Macedonia', 6, 'macedonia', '+389'),
(145, 'Mali', 2, 'mali', '+223'),
(146, 'Myanmar [Burma]', 1, 'myanmar-burma', '+95'),
(147, 'Mongolia', 1, 'mongolia', '+976'),
(148, 'Macao', 1, 'macao', '+853'),
(149, 'Northern Mariana Islands', 7, 'northern-mariana-islands', '+1 670'),
(150, 'Martinique', 3, 'martinique', '+596'),
(151, 'Mauritania', 2, 'mauritania', '+222'),
(152, 'Montserrat', 3, 'montserrat', '+1664'),
(153, 'Malta', 6, 'malta', '+356'),
(154, 'Mauritius', 2, 'mauritius', '+230'),
(155, 'Maldives', 1, 'maldives', '+960'),
(156, 'Malawi', 2, 'malawi', '+265'),
(157, 'Mexico', 3, 'mexico', '+52'),
(158, 'Malaysia', 1, 'malaysia', '+60'),
(159, 'Mozambique', 2, 'mozambique', '+258'),
(160, 'Namibia', 2, 'namibia', '+264'),
(161, 'New Caledonia', 7, 'new-caledonia', '+687'),
(162, 'Niger', 2, 'niger', '+227'),
(163, 'Norfolk Island', 7, 'norfolk-island', '+672'),
(164, 'Nigeria', 2, 'nigeria', '+234'),
(165, 'Nicaragua', 3, 'nicaragua', '+505'),
(166, 'Netherlands', 6, 'netherlands', '+31'),
(167, 'Norway', 6, 'norway', '+47'),
(168, 'Nepal', 1, 'nepal', '+977'),
(169, 'Nauru', 7, 'nauru', '+674'),
(170, 'Niue', 7, 'niue', '+683'),
(171, 'New Zealand', 7, 'new-zealand', '+64'),
(172, 'Oman', 1, 'oman', '+968'),
(173, 'Panama', 3, 'panama', '+507'),
(174, 'Peru', 4, 'peru', '+51'),
(175, 'French Polynesia', 7, 'french-polynesia', '+689'),
(176, 'Papua New Guinea', 7, 'papua-new-guinea', '+675'),
(177, 'Philippines', 1, 'philippines', '+63'),
(178, 'Pakistan', 1, 'pakistan', '+92'),
(179, 'Poland', 6, 'poland', '+48'),
(180, 'Saint Pierre and Miquelon', 3, 'saint-pierre-and-miquelon', '+508'),
(181, 'Pitcairn Islands', 7, 'pitcairn-islands', '+64'),
(182, 'Puerto Rico', 3, 'puerto-rico', '+1 939'),
(183, 'Palestine', 1, 'palestine', '+970'),
(184, 'Portugal', 6, 'portugal', '+351'),
(185, 'Palau', 7, 'palau', '+680'),
(186, 'Paraguay', 4, 'paraguay', '+595'),
(187, 'Qatar', 1, 'qatar', '+974'),
(188, 'Réunion', 2, 'runion', '+262'),
(189, 'Romania', 6, 'romania', '+40'),
(190, 'Serbia', 6, 'serbia', '+381'),
(191, 'Russia', 6, 'russia', '+7'),
(192, 'Rwanda', 2, 'rwanda', '+250'),
(193, 'Saudi Arabia', 1, 'saudi-arabia', '+966'),
(194, 'Solomon Islands', 7, 'solomon-islands', '+677'),
(195, 'Seychelles', 2, 'seychelles', '+248'),
(196, 'Sudan', 2, 'sudan', '+249'),
(197, 'Sweden', 6, 'sweden', '+46'),
(198, 'Singapore', 1, 'singapore', '+65'),
(199, 'Saint Helena', 2, 'saint-helena', '+290'),
(200, 'Slovenia', 6, 'slovenia', '+386'),
(201, 'Svalbard and Jan Mayen', 6, 'svalbard-and-jan-mayen', '+47'),
(202, 'Slovakia', 6, 'slovakia', '+421'),
(203, 'Sierra Leone', 2, 'sierra-leone', '+232'),
(204, 'San Marino', 6, 'san-marino', '+378'),
(205, 'Senegal', 2, 'senegal', '+221'),
(206, 'Somalia', 2, 'somalia', '+252'),
(207, 'Suriname', 4, 'suriname', '+597'),
(208, 'South Sudan', 2, 'south-sudan', '+211'),
(209, 'São Tomé and Príncipe', 2, 'so-tom-and-prncipe', '+239'),
(210, 'El Salvador', 3, 'el-salvador', '+503'),
(211, 'Sint Maarten', 3, 'sint-maarten', '+1'),
(212, 'Syria', 1, 'syria', '+963'),
(213, 'Swaziland', 2, 'swaziland', '+268'),
(214, 'Turks and Caicos Islands', 3, 'turks-and-caicos-islands', '+1'),
(215, 'Chad', 2, 'chad', '+235'),
(216, 'French Southern Territories', 5, 'french-southern-territories', '+260'),
(217, 'Togo', 2, 'togo', '+228'),
(218, 'Thailand', 1, 'thailand', '+66'),
(219, 'Tajikistan', 1, 'tajikistan', '+992'),
(220, 'Tokelau', 7, 'tokelau', '+690'),
(221, 'East Timor', 7, 'east-timor', '+670'),
(222, 'Turkmenistan', 1, 'turkmenistan', '+993'),
(223, 'Tunisia', 2, 'tunisia', '+216'),
(224, 'Tonga', 7, 'tonga', '+676'),
(225, 'Turkey', 1, 'turkey', '+90'),
(226, 'Trinidad and Tobago', 3, 'trinidad-and-tobago', '+1 868'),
(227, 'Tuvalu', 7, 'tuvalu', '+688'),
(228, 'Taiwan', 1, 'taiwan', '+886'),
(229, 'Tanzania', 2, 'tanzania', '+255'),
(230, 'Ukraine', 6, 'ukraine', '+380'),
(231, 'Uganda', 2, 'uganda', '+256'),
(232, 'U.S. Minor Outlying Islands', 7, 'us-minor-outlying-islands', '+246'),
(233, 'United States', 3, 'united-states', '+1'),
(234, 'Uruguay', 4, 'uruguay', '+598'),
(235, 'Uzbekistan', 1, 'uzbekistan', '+998'),
(236, 'Vatican City', 6, 'vatican-city', '+379'),
(237, 'Saint Vincent and the Grenadines', 3, 'saint-vincent-and-the-grenadines', '+1 784'),
(238, 'Venezuela', 4, 'venezuela', '+58'),
(239, 'British Virgin Islands', 3, 'british-virgin-islands', '+1'),
(240, 'U.S. Virgin Islands', 3, 'us-virgin-islands', '+1'),
(241, 'Vietnam', 1, 'vietnam', '+84'),
(242, 'Vanuatu', 7, 'vanuatu', '+678'),
(243, 'Wallis and Futuna', 7, 'wallis-and-futuna', '+681'),
(244, 'Samoa', 7, 'samoa', '+685'),
(245, 'Kosovo', 6, 'kosovo', '+383'),
(246, 'Yemen', 1, 'yemen', '+967'),
(247, 'Mayotte', 2, 'mayotte', '+262'),
(248, 'South 2', 2, 'south-2', ''),
(249, 'Zambia', 2, 'zambia', '+260'),
(250, 'Zimbabwe', 2, 'zimbabwe', '+263');

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

--
-- Dumping data for table `meo_currency`
--

INSERT INTO `meo_currency` (`id`, `name`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `currency_code`, `currency_name`, `currrency_symbol`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, 'AFN', 'Afghani', '؋', 'AF.png'),
(2, 'Albania', 'AL', 'ALB', 8, 'ALL', 'Lek', 'Lek', 'AL.png'),
(3, 'Algeria', 'DZ', 'DZA', 12, 'DZD', 'Dinar', NULL, 'DZ.png'),
(4, 'American Samoa', 'AS', 'ASM', 16, 'USD', 'Dollar', '$', 'AS.png'),
(5, 'Andorra', 'AD', 'AND', 20, 'EUR', 'Euro', '€', 'AD.png'),
(6, 'Angola', 'AO', 'AGO', 24, 'AOA', 'Kwanza', 'Kz', 'AO.png'),
(7, 'Anguilla', 'AI', 'AIA', 660, 'XCD', 'Dollar', '$', 'AI.png'),
(10, 'Argentina', 'AR', 'ARG', 32, 'ARS', 'Peso', '$', 'AR.png'),
(11, 'Armenia', 'AM', 'ARM', 51, 'AMD', 'Dram', NULL, 'AM.png'),
(12, 'Aruba', 'AW', 'ABW', 533, 'AWG', 'Guilder', 'ƒ', 'AW.png'),
(13, 'Australia', 'AU', 'AUS', 36, 'AUD', 'Dollar', '$', 'AU.png'),
(14, 'Austria', 'AT', 'AUT', 40, 'EUR', 'Euro', '€', 'AT.png'),
(15, 'Azerbaijan', 'AZ', 'AZE', 31, 'AZN', 'Manat', 'ман', 'AZ.png'),
(16, 'Bahamas', 'BS', 'BHS', 44, 'BSD', 'Dollar', '$', 'BS.png'),
(18, 'Bangladesh', 'BD', 'BGD', 50, 'BDT', 'Taka', NULL, 'BD.png'),
(19, 'Barbados', 'BB', 'BRB', 52, 'BBD', 'Dollar', '$', 'BB.png'),
(20, 'Belarus', 'BY', 'BLR', 112, 'BYR', 'Ruble', 'p.', 'BY.png'),
(21, 'Belgium', 'BE', 'BEL', 56, 'EUR', 'Euro', '€', 'BE.png'),
(22, 'Belize', 'BZ', 'BLZ', 84, 'BZD', 'Dollar', 'BZ$', 'BZ.png'),
(23, 'Benin', 'BJ', 'BEN', 204, 'XOF', 'Franc', NULL, 'BJ.png'),
(24, 'Bermuda', 'BM', 'BMU', 60, 'BMD', 'Dollar', '$', 'BM.png'),
(25, 'Bhutan', 'BT', 'BTN', 64, 'BTN', 'Ngultrum', NULL, 'BT.png'),
(26, 'Bolivia', 'BO', 'BOL', 68, 'BOB', 'Boliviano', '$b', 'BO.png'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'BAM', 'Marka', 'KM', 'BA.png'),
(28, 'Botswana', 'BW', 'BWA', 72, 'BWP', 'Pula', 'P', 'BW.png'),
(29, 'Bouvet Island', 'BV', 'BVT', 74, 'NOK', 'Krone', 'kr', 'BV.png'),
(30, 'Brazil', 'BR', 'BRA', 76, 'BRL', 'Real', 'R$', 'BR.png'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 'USD', 'Dollar', '$', 'IO.png'),
(33, 'Brunei', 'BN', 'BRN', 96, 'BND', 'Dollar', '$', 'BN.png'),
(34, 'Bulgaria', 'BG', 'BGR', 100, 'BGN', 'Lev', 'лв', 'BG.png'),
(35, 'Burkina Faso', 'BF', 'BFA', 854, 'XOF', 'Franc', NULL, 'BF.png'),
(36, 'Burundi', 'BI', 'BDI', 108, 'BIF', 'Franc', NULL, 'BI.png'),
(37, 'Cambodia', 'KH', 'KHM', 116, 'KHR', 'Riels', '៛', 'KH.png'),
(38, 'Cameroon', 'CM', 'CMR', 120, 'XAF', 'Franc', 'FCF', 'CM.png'),
(39, 'Canada', 'CA', 'CAN', 124, 'CAD', 'Dollar', '$', 'CA.png'),
(40, 'Cape Verde', 'CV', 'CPV', 132, 'CVE', 'Escudo', NULL, 'CV.png'),
(41, 'Cayman Islands', 'KY', 'CYM', 136, 'KYD', 'Dollar', '$', 'KY.png'),
(42, 'Central African Republic', 'CF', 'CAF', 140, 'XAF', 'Franc', 'FCF', 'CF.png'),
(43, 'Chad', 'TD', 'TCD', 148, 'XAF', 'Franc', NULL, 'TD.png'),
(44, 'Chile', 'CL', 'CHL', 152, 'CLP', 'Peso', NULL, 'CL.png'),
(45, 'China', 'CN', 'CHN', 156, 'CNY', 'Yuan Renminbi', '¥', 'CN.png'),
(46, 'Christmas Island', 'CX', 'CXR', 162, 'AUD', 'Dollar', '$', 'CX.png'),
(47, 'Cocos Islands', 'CC', 'CCK', 166, 'AUD', 'Dollar', '$', 'CC.png'),
(48, 'Colombia', 'CO', 'COL', 170, 'COP', 'Peso', '$', 'CO.png'),
(49, 'Comoros', 'KM', 'COM', 174, 'KMF', 'Franc', NULL, 'KM.png'),
(50, 'Cook Islands', 'CK', 'COK', 184, 'NZD', 'Dollar', '$', 'CK.png'),
(51, 'Costa Rica', 'CR', 'CRI', 188, 'CRC', 'Colon', '₡', 'CR.png'),
(52, 'Croatia', 'HR', 'HRV', 191, 'HRK', 'Kuna', 'kn', 'HR.png'),
(53, 'Cuba', 'CU', 'CUB', 192, 'CUP', 'Peso', '₱', 'CU.png'),
(54, 'Cyprus', 'CY', 'CYP', 196, 'CYP', 'Pound', NULL, 'CY.png'),
(55, 'Czech Republic', 'CZ', 'CZE', 203, 'CZK', 'Koruna', 'Kč', 'CZ.png'),
(56, 'Democratic Republic of the Congo', 'CD', 'COD', 180, 'CDF', 'Franc', NULL, 'CD.png'),
(57, 'Denmark', 'DK', 'DNK', 208, 'DKK', 'Krone', 'kr', 'DK.png'),
(58, 'Djibouti', 'DJ', 'DJI', 262, 'DJF', 'Franc', NULL, 'DJ.png'),
(59, 'Dominica', 'DM', 'DMA', 212, 'XCD', 'Dollar', '$', 'DM.png'),
(60, 'Dominican Republic', 'DO', 'DOM', 214, 'DOP', 'Peso', 'RD$', 'DO.png'),
(61, 'East Timor', 'TL', 'TLS', 626, 'USD', 'Dollar', '$', 'TL.png'),
(62, 'Ecuador', 'EC', 'ECU', 218, 'USD', 'Dollar', '$', 'EC.png'),
(63, 'Egypt', 'EG', 'EGY', 818, 'EGP', 'Pound', '£', 'EG.png'),
(64, 'El Salvador', 'SV', 'SLV', 222, 'SVC', 'Colone', '$', 'SV.png'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'XAF', 'Franc', 'FCF', 'GQ.png'),
(66, 'Eritrea', 'ER', 'ERI', 232, 'ERN', 'Nakfa', 'Nfk', 'ER.png'),
(67, 'Estonia', 'EE', 'EST', 233, 'EEK', 'Kroon', 'kr', 'EE.png'),
(68, 'Ethiopia', 'ET', 'ETH', 231, 'ETB', 'Birr', NULL, 'ET.png'),
(69, 'Falkland Islands', 'FK', 'FLK', 238, 'FKP', 'Pound', '£', 'FK.png'),
(70, 'Faroe Islands', 'FO', 'FRO', 234, 'DKK', 'Krone', 'kr', 'FO.png'),
(71, 'Fiji', 'FJ', 'FJI', 242, 'FJD', 'Dollar', '$', 'FJ.png'),
(72, 'Finland', 'FI', 'FIN', 246, 'EUR', 'Euro', '€', 'FI.png'),
(73, 'France', 'FR', 'FRA', 250, 'EUR', 'Euro', '€', 'FR.png'),
(74, 'French Guiana', 'GF', 'GUF', 254, 'EUR', 'Euro', '€', 'GF.png'),
(75, 'French Polynesia', 'PF', 'PYF', 258, 'XPF', 'Franc', NULL, 'PF.png'),
(76, 'French Southern Territories', 'TF', 'ATF', 260, 'EUR', 'Euro  ', '€', 'TF.png'),
(77, 'Gabon', 'GA', 'GAB', 266, 'XAF', 'Franc', 'FCF', 'GA.png'),
(78, 'Gambia', 'GM', 'GMB', 270, 'GMD', 'Dalasi', 'D', 'GM.png'),
(79, 'Georgia', 'GE', 'GEO', 268, 'GEL', 'Lari', NULL, 'GE.png'),
(80, 'Germany', 'DE', 'DEU', 276, 'EUR', 'Euro', '€', 'DE.png'),
(81, 'Ghana', 'GH', 'GHA', 288, 'GHC', 'Cedi', '¢', 'GH.png'),
(82, 'Gibraltar', 'GI', 'GIB', 292, 'GIP', 'Pound', '£', 'GI.png'),
(83, 'Greece', 'GR', 'GRC', 300, 'EUR', 'Euro', '€', 'GR.png'),
(84, 'Greenland', 'GL', 'GRL', 304, 'DKK', 'Krone', 'kr', 'GL.png'),
(85, 'Grenada', 'GD', 'GRD', 308, 'XCD', 'Dollar', '$', 'GD.png'),
(86, 'Guadeloupe', 'GP', 'GLP', 312, 'EUR', 'Euro', '€', 'GP.png'),
(87, 'Guam', 'GU', 'GUM', 316, 'USD', 'Dollar', '$', 'GU.png'),
(88, 'Guatemala', 'GT', 'GTM', 320, 'GTQ', 'Quetzal', 'Q', 'GT.png'),
(89, 'Guinea', 'GN', 'GIN', 324, 'GNF', 'Franc', NULL, 'GN.png'),
(90, 'Guinea-Bissau', 'GW', 'GNB', 624, 'XOF', 'Franc', NULL, 'GW.png'),
(91, 'Guyana', 'GY', 'GUY', 328, 'GYD', 'Dollar', '$', 'GY.png'),
(92, 'Haiti', 'HT', 'HTI', 332, 'HTG', 'Gourde', 'G', 'HT.png'),
(93, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, 'AUD', 'Dollar', '$', 'HM.png'),
(94, 'Honduras', 'HN', 'HND', 340, 'HNL', 'Lempira', 'L', 'HN.png'),
(95, 'Hong Kong', 'HK', 'HKG', 344, 'HKD', 'Dollar', '$', 'HK.png'),
(96, 'Hungary', 'HU', 'HUN', 348, 'HUF', 'Forint', 'Ft', 'HU.png'),
(97, 'Iceland', 'IS', 'ISL', 352, 'ISK', 'Krona', 'kr', 'IS.png'),
(98, 'India', 'IN', 'IND', 356, 'INR', 'Rupee', '₹', 'IN.png'),
(99, 'Indonesia', 'ID', 'IDN', 360, 'IDR', 'Rupiah', 'Rp', 'ID.png'),
(100, 'Iran', 'IR', 'IRN', 364, 'IRR', 'Rial', '﷼', 'IR.png'),
(101, 'Iraq', 'IQ', 'IRQ', 368, 'IQD', 'Dinar', NULL, 'IQ.png'),
(102, 'Ireland', 'IE', 'IRL', 372, 'EUR', 'Euro', '€', 'IE.png'),
(103, 'Israel', 'IL', 'ISR', 376, 'ILS', 'Shekel', '₪', 'IL.png'),
(104, 'Italy', 'IT', 'ITA', 380, 'EUR', 'Euro', '€', 'IT.png'),
(105, 'Ivory Coast', 'CI', 'CIV', 384, 'XOF', 'Franc', NULL, 'CI.png'),
(106, 'Jamaica', 'JM', 'JAM', 388, 'JMD', 'Dollar', '$', 'JM.png'),
(107, 'Japan', 'JP', 'JPN', 392, 'JPY', 'Yen', '¥', 'JP.png'),
(108, 'Jordan', 'JO', 'JOR', 400, 'JOD', 'Dinar', NULL, 'JO.png'),
(109, 'Kazakhstan', 'KZ', 'KAZ', 398, 'KZT', 'Tenge', 'лв', 'KZ.png'),
(110, 'Kenya', 'KE', 'KEN', 404, 'KES', 'Shilling', NULL, 'KE.png'),
(111, 'Kiribati', 'KI', 'KIR', 296, 'AUD', 'Dollar', '$', 'KI.png'),
(112, 'Kuwait', 'KW', 'KWT', 414, 'KWD', 'Dinar', NULL, 'KW.png'),
(113, 'Kyrgyzstan', 'KG', 'KGZ', 417, 'KGS', 'Som', 'лв', 'KG.png'),
(114, 'Laos', 'LA', 'LAO', 418, 'LAK', 'Kip', '₭', 'LA.png'),
(115, 'Latvia', 'LV', 'LVA', 428, 'LVL', 'Lat', 'Ls', 'LV.png'),
(116, 'Lebanon', 'LB', 'LBN', 422, 'LBP', 'Pound', '£', 'LB.png'),
(117, 'Lesotho', 'LS', 'LSO', 426, 'LSL', 'Loti', 'L', 'LS.png'),
(118, 'Liberia', 'LR', 'LBR', 430, 'LRD', 'Dollar', '$', 'LR.png'),
(119, 'Libya', 'LY', 'LBY', 434, 'LYD', 'Dinar', NULL, 'LY.png'),
(120, 'Liechtenstein', 'LI', 'LIE', 438, 'CHF', 'Franc', 'CHF', 'LI.png'),
(121, 'Lithuania', 'LT', 'LTU', 440, 'LTL', 'Litas', 'Lt', 'LT.png'),
(122, 'Luxembourg', 'LU', 'LUX', 442, 'EUR', 'Euro', '€', 'LU.png'),
(123, 'Macao', 'MO', 'MAC', 446, 'MOP', 'Pataca', 'MOP', 'MO.png'),
(124, 'Macedonia', 'MK', 'MKD', 807, 'MKD', 'Denar', 'ден', 'MK.png'),
(125, 'Madagascar', 'MG', 'MDG', 450, 'MGA', 'Ariary', NULL, 'MG.png'),
(126, 'Malawi', 'MW', 'MWI', 454, 'MWK', 'Kwacha', 'MK', 'MW.png'),
(127, 'Malaysia', 'MY', 'MYS', 458, 'MYR', 'Ringgit', 'RM', 'MY.png'),
(128, 'Maldives', 'MV', 'MDV', 462, 'MVR', 'Rufiyaa', 'Rf', 'MV.png'),
(129, 'Mali', 'ML', 'MLI', 466, 'XOF', 'Franc', NULL, 'ML.png'),
(130, 'Malta', 'MT', 'MLT', 470, 'MTL', 'Lira', NULL, 'MT.png'),
(131, 'Marshall Islands', 'MH', 'MHL', 584, 'USD', 'Dollar', '$', 'MH.png'),
(132, 'Martinique', 'MQ', 'MTQ', 474, 'EUR', 'Euro', '€', 'MQ.png'),
(133, 'Mauritania', 'MR', 'MRT', 478, 'MRO', 'Ouguiya', 'UM', 'MR.png'),
(134, 'Mauritius', 'MU', 'MUS', 480, 'MUR', 'Rupee', '₨', 'MU.png'),
(135, 'Mayotte', 'YT', 'MYT', 175, 'EUR', 'Euro', '€', 'YT.png'),
(136, 'Mexico', 'MX', 'MEX', 484, 'MXN', 'Peso', '$', 'MX.png'),
(137, 'Micronesia', 'FM', 'FSM', 583, 'USD', 'Dollar', '$', 'FM.png'),
(138, 'Moldova', 'MD', 'MDA', 498, 'MDL', 'Leu', NULL, 'MD.png'),
(139, 'Monaco', 'MC', 'MCO', 492, 'EUR', 'Euro', '€', 'MC.png'),
(140, 'Mongolia', 'MN', 'MNG', 496, 'MNT', 'Tugrik', '₮', 'MN.png'),
(141, 'Montserrat', 'MS', 'MSR', 500, 'XCD', 'Dollar', '$', 'MS.png'),
(142, 'Morocco', 'MA', 'MAR', 504, 'MAD', 'Dirham', NULL, 'MA.png'),
(143, 'Mozambique', 'MZ', 'MOZ', 508, 'MZN', 'Meticail', 'MT', 'MZ.png'),
(144, 'Myanmar', 'MM', 'MMR', 104, 'MMK', 'Kyat', 'K', 'MM.png'),
(145, 'Namibia', 'NA', 'NAM', 516, 'NAD', 'Dollar', '$', 'NA.png'),
(146, 'Nauru', 'NR', 'NRU', 520, 'AUD', 'Dollar', '$', 'NR.png'),
(147, 'Nepal', 'NP', 'NPL', 524, 'NPR', 'Rupee', '₨', 'NP.png'),
(148, 'Netherlands', 'NL', 'NLD', 528, 'EUR', 'Euro', '€', 'NL.png'),
(149, 'Netherlands Antilles', 'AN', 'ANT', 530, 'ANG', 'Guilder', 'ƒ', 'AN.png'),
(150, 'New Caledonia', 'NC', 'NCL', 540, 'XPF', 'Franc', NULL, 'NC.png'),
(151, 'New Zealand', 'NZ', 'NZL', 554, 'NZD', 'Dollar', '$', 'NZ.png'),
(152, 'Nicaragua', 'NI', 'NIC', 558, 'NIO', 'Cordoba', 'C$', 'NI.png'),
(153, 'Niger', 'NE', 'NER', 562, 'XOF', 'Franc', NULL, 'NE.png'),
(154, 'Nigeria', 'NG', 'NGA', 566, 'NGN', 'Naira', '₦', 'NG.png'),
(155, 'Niue', 'NU', 'NIU', 570, 'NZD', 'Dollar', '$', 'NU.png'),
(156, 'Norfolk Island', 'NF', 'NFK', 574, 'AUD', 'Dollar', '$', 'NF.png'),
(157, 'North Korea', 'KP', 'PRK', 408, 'KPW', 'Won', '₩', 'KP.png'),
(158, 'Northern Mariana Islands', 'MP', 'MNP', 580, 'USD', 'Dollar', '$', 'MP.png'),
(159, 'Norway', 'NO', 'NOR', 578, 'NOK', 'Krone', 'kr', 'NO.png'),
(160, 'Oman', 'OM', 'OMN', 512, 'OMR', 'Rial', '﷼', 'OM.png'),
(161, 'Pakistan', 'PK', 'PAK', 586, 'PKR', 'Rupee', '₨', 'PK.png'),
(162, 'Palau', 'PW', 'PLW', 585, 'USD', 'Dollar', '$', 'PW.png'),
(163, 'Palestinian Territory', 'PS', 'PSE', 275, 'ILS', 'Shekel', '₪', 'PS.png'),
(164, 'Panama', 'PA', 'PAN', 591, 'PAB', 'Balboa', 'B/.', 'PA.png'),
(165, 'Papua New Guinea', 'PG', 'PNG', 598, 'PGK', 'Kina', NULL, 'PG.png'),
(166, 'Paraguay', 'PY', 'PRY', 600, 'PYG', 'Guarani', 'Gs', 'PY.png'),
(167, 'Peru', 'PE', 'PER', 604, 'PEN', 'Sol', 'S/.', 'PE.png'),
(168, 'Philippines', 'PH', 'PHL', 608, 'PHP', 'Peso', 'Php', 'PH.png'),
(169, 'Pitcairn', 'PN', 'PCN', 612, 'NZD', 'Dollar', '$', 'PN.png'),
(170, 'Poland', 'PL', 'POL', 616, 'PLN', 'Zloty', 'zł', 'PL.png'),
(171, 'Portugal', 'PT', 'PRT', 620, 'EUR', 'Euro', '€', 'PT.png'),
(172, 'Puerto Rico', 'PR', 'PRI', 630, 'USD', 'Dollar', '$', 'PR.png'),
(173, 'Qatar', 'QA', 'QAT', 634, 'QAR', 'Rial', '﷼', 'QA.png'),
(174, 'Republic of the Congo', 'CG', 'COG', 178, 'XAF', 'Franc', 'FCF', 'CG.png'),
(175, 'Reunion', 'RE', 'REU', 638, 'EUR', 'Euro', '€', 'RE.png'),
(176, 'Romania', 'RO', 'ROU', 642, 'RON', 'Leu', 'lei', 'RO.png'),
(177, 'Russia', 'RU', 'RUS', 643, 'RUB', 'Ruble', 'руб', 'RU.png'),
(178, 'Rwanda', 'RW', 'RWA', 646, 'RWF', 'Franc', NULL, 'RW.png'),
(179, 'Saint Helena', 'SH', 'SHN', 654, 'SHP', 'Pound', '£', 'SH.png'),
(180, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'XCD', 'Dollar', '$', 'KN.png'),
(181, 'Saint Lucia', 'LC', 'LCA', 662, 'XCD', 'Dollar', '$', 'LC.png'),
(182, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'EUR', 'Euro', '€', 'PM.png'),
(183, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 'XCD', 'Dollar', '$', 'VC.png'),
(184, 'Samoa', 'WS', 'WSM', 882, 'WST', 'Tala', 'WS$', 'WS.png'),
(185, 'San Marino', 'SM', 'SMR', 674, 'EUR', 'Euro', '€', 'SM.png'),
(186, 'Sao Tome and Principe', 'ST', 'STP', 678, 'STD', 'Dobra', 'Db', 'ST.png'),
(187, 'Saudi Arabia', 'SA', 'SAU', 682, 'SAR', 'Rial', '﷼', 'SA.png'),
(188, 'Senegal', 'SN', 'SEN', 686, 'XOF', 'Franc', NULL, 'SN.png'),
(189, 'Serbia and Montenegro', 'CS', 'SCG', 891, 'RSD', 'Dinar', 'Дин', 'CS.png'),
(190, 'Seychelles', 'SC', 'SYC', 690, 'SCR', 'Rupee', '₨', 'SC.png'),
(191, 'Sierra Leone', 'SL', 'SLE', 694, 'SLL', 'Leone', 'Le', 'SL.png'),
(192, 'Singapore', 'SG', 'SGP', 702, 'SGD', 'Dollar', '$', 'SG.png'),
(193, 'Slovakia', 'SK', 'SVK', 703, 'SKK', 'Koruna', 'Sk', 'SK.png'),
(194, 'Slovenia', 'SI', 'SVN', 705, 'EUR', 'Euro', '€', 'SI.png'),
(195, 'Solomon Islands', 'SB', 'SLB', 90, 'SBD', 'Dollar', '$', 'SB.png'),
(196, 'Somalia', 'SO', 'SOM', 706, 'SOS', 'Shilling', 'S', 'SO.png'),
(197, 'South Africa', 'ZA', 'ZAF', 710, 'ZAR', 'Rand', 'R', 'ZA.png'),
(198, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'GBP', 'Pound', '£', 'GS.png'),
(199, 'South Korea', 'KR', 'KOR', 410, 'KRW', 'Won', '₩', 'KR.png'),
(200, 'Spain', 'ES', 'ESP', 724, 'EUR', 'Euro', '€', 'ES.png'),
(201, 'Sri Lanka', 'LK', 'LKA', 144, 'LKR', 'Rupee', '₨', 'LK.png'),
(202, 'Sudan', 'SD', 'SDN', 736, 'SDD', 'Dinar', NULL, 'SD.png'),
(203, 'Suriname', 'SR', 'SUR', 740, 'SRD', 'Dollar', '$', 'SR.png'),
(204, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, 'NOK', 'Krone', 'kr', 'SJ.png'),
(205, 'Swaziland', 'SZ', 'SWZ', 748, 'SZL', 'Lilangeni', NULL, 'SZ.png'),
(206, 'Sweden', 'SE', 'SWE', 752, 'SEK', 'Krona', 'kr', 'SE.png'),
(207, 'Switzerland', 'CH', 'CHE', 756, 'CHF', 'Franc', 'CHF', 'CH.png'),
(208, 'Syria', 'SY', 'SYR', 760, 'SYP', 'Pound', '£', 'SY.png'),
(209, 'Taiwan', 'TW', 'TWN', 158, 'TWD', 'Dollar', 'NT$', 'TW.png'),
(210, 'Tajikistan', 'TJ', 'TJK', 762, 'TJS', 'Somoni', NULL, 'TJ.png'),
(211, 'Tanzania', 'TZ', 'TZA', 834, 'TZS', 'Shilling', NULL, 'TZ.png'),
(212, 'Thailand', 'TH', 'THA', 764, 'THB', 'Baht', '฿', 'TH.png'),
(213, 'Togo', 'TG', 'TGO', 768, 'XOF', 'Franc', NULL, 'TG.png'),
(214, 'Tokelau', 'TK', 'TKL', 772, 'NZD', 'Dollar', '$', 'TK.png'),
(215, 'Tonga', 'TO', 'TON', 776, 'TOP', 'Pa\'anga', 'T$', 'TO.png'),
(216, 'Trinidad and Tobago', 'TT', 'TTO', 780, 'TTD', 'Dollar', 'TT$', 'TT.png'),
(217, 'Tunisia', 'TN', 'TUN', 788, 'TND', 'Dinar', NULL, 'TN.png'),
(218, 'Turkey', 'TR', 'TUR', 792, 'TRY', 'Lira', 'YTL', 'TR.png'),
(219, 'Turkmenistan', 'TM', 'TKM', 795, 'TMM', 'Manat', 'm', 'TM.png'),
(220, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 'USD', 'Dollar', '$', 'TC.png'),
(221, 'Tuvalu', 'TV', 'TUV', 798, 'AUD', 'Dollar', '$', 'TV.png'),
(222, 'U.S. Virgin Islands', 'VI', 'VIR', 850, 'USD', 'Dollar', '$', 'VI.png'),
(223, 'Uganda', 'UG', 'UGA', 800, 'UGX', 'Shilling', NULL, 'UG.png'),
(224, 'Ukraine', 'UA', 'UKR', 804, 'UAH', 'Hryvnia', '₴', 'UA.png'),
(225, 'United Arab Emirates', 'AE', 'ARE', 784, 'AED', 'Dirham', NULL, 'AE.png'),
(226, 'United Kingdom', 'GB', 'GBR', 826, 'GBP', 'Pound', '£', 'GB.png'),
(227, 'United States', 'US', 'USA', 840, 'USD', 'Dollar', '$', 'US.png'),
(228, 'United States Minor Outlying Islands', 'UM', 'UMI', 581, 'USD', 'Dollar ', '$', 'UM.png'),
(229, 'Uruguay', 'UY', 'URY', 858, 'UYU', 'Peso', '$U', 'UY.png'),
(230, 'Uzbekistan', 'UZ', 'UZB', 860, 'UZS', 'Som', 'лв', 'UZ.png'),
(231, 'Vanuatu', 'VU', 'VUT', 548, 'VUV', 'Vatu', 'Vt', 'VU.png'),
(232, 'Vatican', 'VA', 'VAT', 336, 'EUR', 'Euro', '€', 'VA.png'),
(233, 'Venezuela', 'VE', 'VEN', 862, 'VEF', 'Bolivar', 'Bs', 'VE.png'),
(234, 'Vietnam', 'VN', 'VNM', 704, 'VND', 'Dong', '₫', 'VN.png'),
(235, 'Wallis and Futuna', 'WF', 'WLF', 876, 'XPF', 'Franc', NULL, 'WF.png'),
(236, 'Western Sahara', 'EH', 'ESH', 732, 'MAD', 'Dirham', NULL, 'EH.png'),
(237, 'Yemen', 'YE', 'YEM', 887, 'YER', 'Rial', '﷼', 'YE.png'),
(238, 'Zambia', 'ZM', 'ZMB', 894, 'ZMK', 'Kwacha', 'ZK', 'ZM.png'),
(239, 'Zimbabwe', 'ZW', 'ZWE', 716, 'ZWD', 'Dollar', 'Z$', 'ZW.png');

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

--
-- Dumping data for table `meo_currencyrate`
--

INSERT INTO `meo_currencyrate` (`id`, `currency_code`, `rate`, `updated_on`) VALUES
(1, 'AFN', '0.01500', '2017-03-30 12:42:53'),
(2, 'ALL', '0.00790', '2017-03-30 12:42:53'),
(3, 'DZD', '0.00910', '2017-03-30 12:42:53'),
(4, 'USD', '1.00000', '2017-03-30 12:43:48'),
(5, 'EUR', '1.07500', '2017-03-30 12:43:49'),
(6, 'AOA', '0.00600', '2017-03-30 12:42:55'),
(7, 'XCD', '0.37040', '2017-03-30 12:43:41'),
(8, 'ARS', '0.06490', '2017-03-30 12:42:55'),
(9, 'AMD', '0.00210', '2017-03-30 12:42:55'),
(10, 'AWG', '0.55870', '2017-03-30 12:42:56'),
(11, 'AUD', '0.76650', '2017-03-30 12:43:47'),
(12, 'AZN', '0.58540', '2017-03-30 12:42:56'),
(13, 'BSD', '1.00000', '2017-03-30 12:42:56'),
(14, 'BDT', '0.01250', '2017-03-30 12:42:57'),
(15, 'BBD', '0.50000', '2017-03-30 12:42:57'),
(16, 'BYR', '0.00000', '2017-03-30 12:42:57'),
(17, 'BZD', '0.50040', '2017-03-30 12:42:57'),
(18, 'XOF', '0.00160', '2017-03-30 12:43:46'),
(19, 'BMD', '1.00000', '2017-03-30 12:42:58'),
(20, 'BTN', '0.01540', '2017-03-30 12:42:59'),
(21, 'BOB', '0.14470', '2017-03-30 12:42:59'),
(22, 'BAM', '0.54970', '2017-03-30 12:42:59'),
(23, 'BWP', '0.09600', '2017-03-30 12:43:00'),
(24, 'NOK', '0.11740', '2017-03-30 12:43:44'),
(25, 'BRL', '0.32020', '2017-03-30 12:43:00'),
(26, 'BND', '0.71650', '2017-03-30 12:43:00'),
(27, 'BGN', '0.54970', '2017-03-30 12:43:01'),
(28, 'BIF', '0.00060', '2017-03-30 12:43:01'),
(29, 'KHR', '0.00020', '2017-03-30 12:43:01'),
(30, 'XAF', '0.00160', '2017-03-30 12:43:40'),
(31, 'CAD', '0.75040', '2017-03-30 12:43:03'),
(32, 'CVE', '0.00970', '2017-03-30 12:43:03'),
(33, 'KYD', '1.21950', '2017-03-30 12:43:03'),
(34, 'CLP', '0.00150', '2017-03-30 12:43:04'),
(35, 'CNY', '0.14510', '2017-03-30 12:43:04'),
(36, 'COP', '0.00030', '2017-03-30 12:43:05'),
(37, 'KMF', '0.00220', '2017-03-30 12:43:05'),
(38, 'NZD', '0.70270', '2017-03-30 12:43:46'),
(39, 'CRC', '0.00180', '2017-03-30 12:43:05'),
(40, 'HRK', '0.14460', '2017-03-30 12:43:05'),
(41, 'CUP', '1.00000', '2017-03-30 12:43:06'),
(42, 'CYP', '0.00000', '2017-03-30 12:43:06'),
(43, 'CZK', '0.03980', '2017-03-30 12:43:06'),
(44, 'CDF', '0.00070', '2017-03-30 12:43:06'),
(45, 'DKK', '0.14450', '2017-03-30 12:43:12'),
(46, 'DJF', '0.00560', '2017-03-30 12:43:07'),
(47, 'DOP', '0.02120', '2017-03-30 12:43:07'),
(48, 'EGP', '0.05480', '2017-03-30 12:43:08'),
(49, 'SVC', '0.11460', '2017-03-30 12:43:08'),
(50, 'ERN', '0.06520', '2017-03-30 12:43:08'),
(51, 'EEK', '0.00000', '2017-03-30 12:43:09'),
(52, 'ETB', '0.04380', '2017-03-30 12:43:09'),
(53, 'FKP', '1.25000', '2017-03-30 12:43:09'),
(54, 'FJD', '0.48190', '2017-03-30 12:43:10'),
(55, 'XPF', '0.00900', '2017-03-30 12:43:49'),
(56, 'GMD', '0.02220', '2017-03-30 12:43:11'),
(57, 'GEL', '0.40980', '2017-03-30 12:43:12'),
(58, 'GHC', '0.00000', '2017-03-30 12:43:12'),
(59, 'GIP', '1.25000', '2017-03-30 12:43:12'),
(60, 'GTQ', '0.13640', '2017-03-30 12:43:13'),
(61, 'GNF', '0.00010', '2017-03-30 12:43:13'),
(62, 'GYD', '0.00480', '2017-03-30 12:43:14'),
(63, 'HTG', '0.01440', '2017-03-30 12:43:16'),
(64, 'HNL', '0.04250', '2017-03-30 12:43:18'),
(65, 'HKD', '0.12870', '2017-03-30 12:43:18'),
(66, 'HUF', '0.00350', '2017-03-30 12:43:18'),
(67, 'ISK', '0.00900', '2017-03-30 12:43:19'),
(68, 'INR', '0.01540', '2017-03-30 12:43:19'),
(69, 'IDR', '0.00010', '2017-03-30 12:43:19'),
(70, 'IRR', '0.00003', '2017-03-30 12:43:19'),
(71, 'IQD', '0.00090', '2017-03-30 12:43:20'),
(72, 'ILS', '0.27620', '2017-03-30 12:43:38'),
(73, 'JMD', '0.00780', '2017-03-30 12:43:23'),
(74, 'JPY', '0.00900', '2017-03-30 12:43:23'),
(75, 'JOD', '1.40940', '2017-03-30 12:43:23'),
(76, 'KZT', '0.00320', '2017-03-30 12:43:23'),
(77, 'KES', '0.00970', '2017-03-30 12:43:23'),
(78, 'KWD', '3.28200', '2017-03-30 12:43:24'),
(79, 'KGS', '0.01460', '2017-03-30 12:43:24'),
(80, 'LAK', '0.00010', '2017-03-30 12:43:24'),
(81, 'LVL', '1.61150', '2017-03-30 12:43:24'),
(82, 'LBP', '0.00070', '2017-03-30 12:43:24'),
(83, 'LSL', '0.07640', '2017-03-30 12:43:24'),
(84, 'LRD', '0.01060', '2017-03-30 12:43:24'),
(85, 'LYD', '0.71940', '2017-03-30 12:43:25'),
(86, 'CHF', '1.00250', '2017-03-30 12:43:45'),
(87, 'LTL', '0.32800', '2017-03-30 12:43:26'),
(88, 'MOP', '0.12490', '2017-03-30 12:43:27'),
(89, 'MKD', '0.01750', '2017-03-30 12:43:27'),
(90, 'MGA', '0.00030', '2017-03-30 12:43:27'),
(91, 'MWK', '0.00140', '2017-03-30 12:43:27'),
(92, 'MYR', '0.22610', '2017-03-30 12:43:29'),
(93, 'MVR', '0.06500', '2017-03-30 12:43:29'),
(94, 'MTL', '0.00000', '2017-03-30 12:43:29'),
(95, 'MRO', '0.00280', '2017-03-30 12:43:30'),
(96, 'MUR', '0.02840', '2017-03-30 12:43:30'),
(97, 'MXN', '0.05340', '2017-03-30 12:43:31'),
(98, 'MDL', '0.05130', '2017-03-30 12:43:32'),
(99, 'MNT', '0.00040', '2017-03-30 12:43:33'),
(100, 'MAD', '0.10000', '2017-03-30 12:43:49'),
(101, 'MZN', '0.01460', '2017-03-30 12:43:34'),
(102, 'MMK', '0.00070', '2017-03-30 12:43:34'),
(103, 'NAD', '0.07640', '2017-03-30 12:43:34'),
(104, 'NPR', '0.00960', '2017-03-30 12:43:35'),
(105, 'ANG', '0.55870', '2017-03-30 12:43:35'),
(106, 'NIO', '0.03370', '2017-03-30 12:43:36'),
(107, 'NGN', '0.00330', '2017-03-30 12:43:36'),
(108, 'KPW', '0.00110', '2017-03-30 12:43:37'),
(109, 'OMR', '2.59740', '2017-03-30 12:43:37'),
(110, 'PKR', '0.00950', '2017-03-30 12:43:38'),
(111, 'PAB', '1.00000', '2017-03-30 12:43:38'),
(112, 'PGK', '0.31450', '2017-03-30 12:43:38'),
(113, 'PYG', '0.00020', '2017-03-30 12:43:39'),
(114, 'PEN', '0.30840', '2017-03-30 12:43:39'),
(115, 'PHP', '0.01990', '2017-03-30 12:43:39'),
(116, 'PLN', '0.25430', '2017-03-30 12:43:39'),
(117, 'QAR', '0.27460', '2017-03-30 12:43:40'),
(118, 'RON', '0.23610', '2017-03-30 12:43:40'),
(119, 'RUB', '0.01760', '2017-03-30 12:43:40'),
(120, 'RWF', '0.00120', '2017-03-30 12:43:40'),
(121, 'SHP', '1.25000', '2017-03-30 12:43:41'),
(122, 'WST', '0.39610', '2017-03-30 12:43:41'),
(123, 'STD', '0.00004', '2017-03-30 12:43:41'),
(124, 'SAR', '0.26670', '2017-03-30 12:43:42'),
(125, 'RSD', '0.00870', '2017-03-30 12:43:42'),
(126, 'SCR', '0.07330', '2017-03-30 12:43:42'),
(127, 'SLL', '0.00010', '2017-03-30 12:43:42'),
(128, 'SGD', '0.71630', '2017-03-30 12:43:42'),
(129, 'SKK', '0.04500', '2017-03-30 12:43:43'),
(130, 'SBD', '0.12820', '2017-03-30 12:43:43'),
(131, 'SOS', '0.00170', '2017-03-30 12:43:43'),
(132, 'ZAR', '0.07650', '2017-03-30 12:43:43'),
(133, 'GBP', '1.24400', '2017-03-30 12:43:48'),
(134, 'KRW', '0.00090', '2017-03-30 12:43:44'),
(135, 'LKR', '0.00660', '2017-03-30 12:43:44'),
(136, 'SDD', '0.00000', '2017-03-30 12:43:44'),
(137, 'SRD', '0.13250', '2017-03-30 12:43:44'),
(138, 'SZL', '0.07640', '2017-03-30 12:43:44'),
(139, 'SEK', '0.11250', '2017-03-30 12:43:45'),
(140, 'SYP', '0.00470', '2017-03-30 12:43:45'),
(141, 'TWD', '0.03300', '2017-03-30 12:43:45'),
(142, 'TJS', '0.12260', '2017-03-30 12:43:45'),
(143, 'TZS', '0.00040', '2017-03-30 12:43:45'),
(144, 'THB', '0.02900', '2017-03-30 12:43:46'),
(145, 'TOP', '0.45260', '2017-03-30 12:43:46'),
(146, 'TTD', '0.14910', '2017-03-30 12:43:46'),
(147, 'TND', '0.44040', '2017-03-30 12:43:46'),
(148, 'TRY', '0.27410', '2017-03-30 12:43:46'),
(149, 'TMM', '0.00000', '2017-03-30 12:43:46'),
(150, 'UGX', '0.00030', '2017-03-30 12:43:47'),
(151, 'UAH', '0.03700', '2017-03-30 12:43:47'),
(152, 'AED', '0.27230', '2017-03-30 12:43:47'),
(153, 'UYU', '0.03520', '2017-03-30 12:43:48'),
(154, 'UZS', '0.00030', '2017-03-30 12:43:48'),
(155, 'VUV', '0.00910', '2017-03-30 12:43:48'),
(156, 'VEF', '0.10010', '2017-03-30 12:43:49'),
(157, 'VND', '0.00000', '2017-03-30 12:43:49'),
(158, 'YER', '0.00400', '2017-03-30 12:43:49'),
(159, 'ZMK', '0.00020', '2017-03-30 12:43:50'),
(160, 'ZWD', '0.00000', '2017-03-30 12:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `meo_department_entity`
--

CREATE TABLE `meo_department_entity` (
  `id_department` int(11) UNSIGNED NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `department_order` int(11) UNSIGNED NOT NULL,
  `cost_centre` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_department_entity`
--

INSERT INTO `meo_department_entity` (`id_department`, `id_region`, `department_name`, `department_order`, `cost_centre`, `status`, `added_on`, `updated_on`) VALUES
(7, 29, 'KNOWLEDGE MANAGEMENT CENTRE (SIN)', 6, '', 'active', '2017-01-16 07:05:33', '2017-02-03 10:15:26'),
(8, 29, 'INFORMATION TECHNOLOGY (IT) (SIN)', 7, '', 'active', '2017-01-16 07:05:59', '2017-02-03 10:15:26'),
(11, 29, 'MANAGEMENT (SIN)', 1, '', 'active', '2017-01-17 01:26:01', '2017-02-03 10:15:26'),
(12, 29, 'ASEAN BU', 2, '', 'active', '2017-01-17 01:27:04', '2017-02-03 10:15:26'),
(13, 58, 'HEAD OF BU', 4, '', 'active', '2017-01-17 01:33:00', '2017-02-09 17:46:42'),
(14, 34, 'SPECIALISED VESSEL SERVICES', 1, '', 'active', '2017-01-17 01:34:56', '2017-02-03 10:15:27'),
(15, 29, 'GROUP COMMERCIAL	(SIN)					', 3, '', 'active', '2017-01-17 01:35:48', '2017-02-03 10:15:26'),
(16, 29, 'ADMINISTRATION (SIN)						', 4, '', 'active', '2017-01-17 01:37:01', '2017-02-03 10:15:26'),
(17, 29, 'HUMAN RESOURCES (SIN)						', 5, '', 'active', '2017-01-17 01:37:55', '2017-02-03 10:15:26'),
(20, 29, 'FLEET PLANNED MAINTENANCE (LEVEL 5) (SIN)						', 8, '', 'active', '2017-01-17 01:41:12', '2017-02-03 10:15:26'),
(21, 29, 'ENTERPRISE RISK MANAGEMENT (SIN)						', 10, '', 'active', '2017-01-17 02:07:06', '2017-02-03 10:15:26'),
(23, 29, 'LEGAL (SIN)						', 9, '', 'active', '2017-01-17 02:07:37', '2017-02-03 10:15:26'),
(24, 29, 'FINANCE (SIN)', 15, '', 'active', '2017-01-17 02:09:01', '2017-02-03 10:15:27'),
(25, 29, 'SUPPLY CHAIN MANAGEMENT (SIN)						', 11, '', 'active', '2017-01-17 02:12:03', '2017-02-03 10:15:26'),
(26, 29, 'CREWING (LEVEL  5) (SIN)', 12, '', 'active', '2017-01-17 02:12:58', '2017-02-03 10:15:26'),
(27, 29, 'TECHNICAL OPERATIONS (SIN)						', 14, '', 'active', '2017-01-17 02:14:15', '2017-02-03 10:15:26'),
(28, 29, 'HEALTH, SAFETY, QUALITY & ENVIRONMENT (SIN)						', 13, '', 'active', '2017-01-17 04:30:04', '2017-02-03 10:15:26'),
(29, 31, 'MANAGEMENT (BRUNEI)', 6, '', 'active', '2017-01-18 00:49:59', '2017-02-03 10:15:24'),
(30, 31, 'ACCOUNTING (BRUNEI)', 4, '', 'active', '2017-01-18 00:50:26', '2017-02-03 10:15:24'),
(31, 31, 'ADMINISTRATION (BRUNEI)		', 5, '', 'active', '2017-01-18 00:50:44', '2017-02-03 10:15:24'),
(32, 31, 'OPERATIONS / TECHNICAL (BRUNEI)', 3, '', 'active', '2017-01-18 00:51:16', '2017-02-03 10:15:24'),
(33, 31, 'CREWING (BRUNEI)', 1, '', 'active', '2017-01-18 00:51:37', '2017-02-03 10:15:24'),
(34, 31, 'HSQE (BRUNEI)', 7, '', 'active', '2017-01-18 00:51:54', '2017-02-03 10:15:24'),
(35, 31, 'PURCHASING (BRUNEI)', 2, '', 'active', '2017-01-18 00:52:12', '2017-02-03 10:15:24'),
(36, 30, 'MANAGEMENT (MSIA)', 1, '', 'active', '2017-01-18 01:18:37', '2017-02-03 10:15:25'),
(37, 30, 'HSQE (MSIA)', 3, '', 'active', '2017-01-18 01:19:04', '2017-02-03 10:15:25'),
(38, 65, 'OPERATION (MSIA)', 1, '', 'active', '2017-01-18 01:19:35', '2017-02-09 17:48:23'),
(39, 30, 'TECHNICAL (MSIA)', 4, '', 'active', '2017-01-18 01:19:56', '2017-02-03 10:15:25'),
(40, 30, 'CREWING (MSIA)', 5, '', 'active', '2017-01-18 01:20:14', '2017-02-03 10:15:26'),
(41, 30, 'PURCHASING (MSIA)', 6, '', 'active', '2017-01-18 01:21:06', '2017-02-03 10:15:26'),
(42, 35, 'EXECUTIVE (AUS)', 3, '', 'active', '2017-01-18 01:36:22', '2017-02-03 10:15:24'),
(43, 35, 'COMMERCIAL (AUS)', 2, '', 'active', '2017-01-18 01:36:54', '2017-02-03 10:15:24'),
(44, 35, 'HUMAN RESOURCE (AUS)', 1, 'DOCC001', 'active', '2017-01-18 01:37:43', '2017-03-10 10:36:44'),
(57, 26, 'MANAGEMENT (JKT)', 1, '', 'active', '2017-01-19 00:26:05', '2017-02-03 10:15:24'),
(58, 26, 'MARKETING (JKT)', 2, '', 'active', '2017-01-19 00:26:48', '2017-02-03 10:15:25'),
(59, 26, 'CREWING (JKT)', 3, '', 'active', '2017-01-19 00:32:39', '2017-02-03 10:15:25'),
(60, 26, 'ACCOUNTING (JKT)', 4, '', 'active', '2017-01-19 00:33:58', '2017-02-03 10:15:25'),
(61, 26, 'OPERATIONS / TECHNICAL (JKT)', 9, '', 'active', '2017-01-19 00:39:55', '2017-02-03 10:16:26'),
(62, 26, 'PURCHASING (JKT)', 5, '', 'active', '2017-01-19 00:40:23', '2017-02-03 10:15:25'),
(63, 26, 'TRAINING (JKT)', 6, '', 'active', '2017-01-19 00:40:57', '2017-02-03 10:15:25'),
(64, 26, 'HSQE (JKT)', 7, '', 'active', '2017-01-19 00:44:58', '2017-02-03 10:15:25'),
(65, 26, 'HRD (JKT)', 8, '', 'active', '2017-01-19 00:45:24', '2017-02-03 10:15:25'),
(66, 61, 'MANAGEMENT (THAI)', 1, '', 'active', '2017-01-26 02:46:42', '2017-02-03 10:15:27'),
(67, 61, 'FINANCE AND ACCOUNTING (THAI)', 2, '', 'active', '2017-01-26 02:47:58', '2017-02-03 10:15:27'),
(69, 61, 'BANGKOK OFFICE (MANAGEMENT/HR/COMMERCIAL DEPT)', 3, '', 'active', '2017-01-26 02:49:57', '2017-02-03 10:15:27'),
(70, 61, 'CREWING - BKK (THAI)', 4, '', 'active', '2017-01-26 02:52:32', '2017-02-03 10:15:27'),
(71, 61, 'HSQE (THAI)', 5, '', 'active', '2017-01-26 02:54:35', '2017-02-03 10:15:27'),
(72, 61, 'OPERATIONS (THAI)', 6, '', 'active', '2017-01-26 02:57:50', '2017-02-03 10:15:27'),
(73, 61, 'MANAGEMENT (THAI- SKL/SATTAHIP)', 7, '', 'active', '2017-01-26 02:58:40', '2017-02-03 10:15:27'),
(74, 61, 'TECHNICAL (THAI)', 8, '', 'active', '2017-01-26 02:59:36', '2017-02-03 10:15:27'),
(75, 61, 'PROCUREMENT (THAI)', 9, '', 'active', '2017-01-26 03:00:55', '2017-02-03 10:15:27'),
(76, 61, 'WAREHOUSE (THAI) ', 10, '', 'active', '2017-01-26 03:03:16', '2017-02-03 10:15:27'),
(77, 61, 'TRAINING (THAI)', 12, '', 'active', '2017-01-26 03:04:18', '2017-02-03 10:15:28'),
(78, 61, 'WORKSHOP (THAI)', 13, '', 'active', '2017-01-26 03:04:36', '2017-02-03 10:15:28'),
(79, 61, 'CREWING (THAI)', 11, '', 'active', '2017-01-26 03:08:25', '2017-02-03 10:15:27'),
(80, 58, 'OPERATIONS', 5, '', 'active', '2017-02-02 00:50:20', '2017-02-09 17:46:42'),
(81, 58, 'FLEET MANAGMENT', 2, '', 'active', '2017-02-02 00:50:56', '2017-02-09 17:46:42'),
(83, 58, 'FINANCE BUSINESS  PARTNER  ', 3, '', 'active', '2017-02-02 00:52:54', '2017-02-09 17:46:42'),
(86, 58, 'PROJECTS', 7, '', 'active', '2017-02-02 00:54:10', '2017-02-09 17:46:42'),
(87, 58, 'COMMERCIAL', 1, '', 'active', '2017-02-02 00:55:02', '2017-02-09 17:46:42'),
(88, 58, 'OPS SUPPORT', 6, '', 'active', '2017-02-02 00:55:32', '2017-02-09 17:46:42'),
(90, 26, 'OPERATIONS / TECHNICAL (BATAM)', 10, '', 'active', '2017-02-02 20:44:25', '2017-02-03 10:15:25'),
(92, 59, 'TQC', 1, '', 'active', '2017-02-07 00:53:11', '2017-02-09 18:20:24'),
(93, 30, 'SINGSYS', 2, '', 'active', '2017-02-08 02:44:01', '2017-02-09 17:48:58');

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
(29, 131, 14),
(36, 138, 74),
(37, 139, 75),
(40, 144, 81),
(41, 145, 82),
(43, 147, 3),
(43, 148, 4),
(12, 51, 6),
(12, 66, 7),
(12, 218, 8),
(11, 56, 4),
(11, 105, 3),
(11, 88, 5),
(7, 65, 105),
(17, 58, 98),
(17, 62, 99),
(17, 73, 100),
(17, 127, 101),
(28, 44, 139),
(28, 87, 140),
(28, 45, 141),
(28, 76, 137),
(28, 120, 138),
(20, 33, 113),
(20, 52, 116),
(20, 98, 112),
(20, 112, 114),
(20, 217, 115),
(25, 72, 122),
(25, 78, 126),
(25, 69, 128),
(25, 111, 123),
(25, 100, 124),
(25, 110, 125),
(25, 114, 127),
(25, 121, 129),
(27, 23, 143),
(27, 86, 146),
(27, 83, 148),
(27, 34, 149),
(27, 70, 151),
(27, 93, 142),
(27, 125, 144),
(27, 95, 145),
(27, 99, 147),
(27, 38, 150),
(26, 74, 131),
(26, 64, 132),
(26, 39, 133),
(26, 26, 134),
(26, 30, 135),
(26, 42, 136),
(26, 103, 130),
(24, 37, 152),
(24, 29, 154),
(24, 63, 155),
(24, 55, 161),
(24, 67, 162),
(24, 24, 164),
(24, 47, 165),
(24, 68, 168),
(24, 25, 170),
(24, 35, 172),
(24, 128, 153),
(24, 101, 156),
(24, 116, 157),
(24, 96, 158),
(24, 122, 159),
(24, 115, 160),
(24, 109, 166),
(24, 123, 167),
(24, 104, 169),
(24, 118, 171),
(24, 130, 163),
(23, 27, 117),
(23, 75, 119),
(23, 46, 120),
(23, 117, 118),
(21, 36, 121),
(16, 53, 97),
(16, 107, 96),
(15, 57, 94),
(15, 61, 95),
(8, 113, 106),
(8, 92, 107),
(8, 94, 109),
(8, 54, 108),
(8, 85, 111),
(8, 84, 110),
(39, 142, 78),
(39, 143, 79),
(39, 262, 80),
(30, 63, 12),
(31, 132, 13),
(32, 133, 10),
(32, 134, 11),
(33, 135, 8),
(34, 136, 15),
(35, 137, 9),
(14, 28, 173),
(14, 77, 174),
(14, 31, 175),
(14, 41, 176),
(14, 50, 177),
(14, 48, 178),
(66, 266, 179),
(66, 267, 180),
(66, 268, 181),
(67, 269, 182),
(67, 270, 183),
(67, 271, 184),
(67, 272, 185),
(67, 273, 186),
(67, 274, 187),
(67, 275, 188),
(67, 276, 189),
(70, 283, 196),
(70, 284, 197),
(70, 285, 198),
(70, 286, 199),
(71, 287, 200),
(71, 288, 201),
(71, 289, 202),
(71, 290, 203),
(71, 291, 204),
(71, 292, 205),
(71, 293, 206),
(72, 294, 207),
(72, 295, 208),
(72, 296, 209),
(72, 297, 210),
(72, 298, 211),
(73, 299, 212),
(73, 300, 213),
(74, 301, 214),
(74, 302, 215),
(74, 303, 216),
(74, 304, 217),
(74, 305, 218),
(74, 306, 219),
(74, 307, 220),
(75, 327, 221),
(75, 309, 222),
(75, 310, 223),
(75, 312, 224),
(75, 311, 225),
(75, 313, 226),
(75, 314, 227),
(77, 326, 239),
(77, 327, 240),
(77, 328, 241),
(77, 329, 242),
(78, 330, 243),
(79, 321, 234),
(79, 322, 235),
(79, 323, 236),
(79, 324, 237),
(79, 325, 238),
(69, 277, 190),
(69, 278, 191),
(69, 279, 192),
(69, 280, 193),
(69, 281, 194),
(69, 282, 195),
(76, 315, 228),
(76, 316, 229),
(76, 317, 230),
(76, 318, 231),
(76, 319, 232),
(76, 320, 233),
(42, 146, 5),
(42, 108, 7),
(13, 14, 16),
(80, 13, 17),
(81, 18, 23),
(81, 89, 24),
(81, 126, 25),
(81, 102, 26),
(83, 37, 33),
(86, 213, 27),
(86, 90, 28),
(86, 12, 29),
(87, 15, 18),
(87, 16, 19),
(87, 216, 20),
(87, 22, 21),
(87, 19, 22),
(88, 11, 30),
(88, 17, 31),
(88, 20, 32),
(57, 215, 4),
(58, 219, 6),
(58, 220, 5),
(59, 221, 7),
(59, 222, 8),
(59, 223, 9),
(59, 224, 10),
(62, 234, 47),
(63, 235, 48),
(63, 236, 49),
(65, 238, 51),
(65, 239, 52),
(65, 240, 53),
(64, 237, 50),
(60, 225, 11),
(60, 226, 12),
(60, 227, 13),
(60, 228, 14),
(60, 229, 15),
(60, 261, 16),
(90, 241, 58),
(90, 242, 59),
(90, 243, 60),
(90, 244, 61),
(90, 245, 62),
(90, 246, 63),
(90, 247, 64),
(90, 248, 65),
(90, 249, 66),
(90, 250, 67),
(90, 251, 68),
(90, 252, 69),
(90, 253, 70),
(90, 254, 71),
(90, 255, 72),
(90, 256, 73),
(61, 230, 54),
(61, 231, 55),
(61, 232, 56),
(61, 233, 57),
(38, 140, 1),
(38, 141, 1),
(93, 108, 1),
(92, 108, 1),
(92, 264, 1),
(92, 334, 1),
(92, 333, 1),
(17, 124, 1),
(42, 106, 1),
(92, 106, 1),
(93, 106, 1),
(7, 60, 1),
(7, 119, 1),
(8, 129, 1),
(11, 129, 2),
(11, 49, 1),
(44, 148, 1),
(44, 264, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meo_designation_list`
--

CREATE TABLE `meo_designation_list` (
  `id_designation` int(11) NOT NULL,
  `designation_name` varchar(250) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `updated_by` varchar(250) NOT NULL,
  `updated_on` datetime NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_designation_list`
--

INSERT INTO `meo_designation_list` (`id_designation`, `designation_name`, `status`, `updated_by`, `updated_on`, `added_on`) VALUES
(1, 'CEO', 'active', '', '0000-00-00 00:00:00', '2017-03-07 00:00:00'),
(2, 'Supervisor', 'active', '', '0000-00-00 00:00:00', '2017-03-07 00:00:00');

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
(1, 'CONTACTS / SHORE PERSONNEL / VERIFY', 'MEO Contacts - Pls verify your contact information', '<div style=\"font-family:calibri; font-size:13px;\">\nHi,\n\nKindly follow this link to view and verify your contact information:\n\n{SHORE_URL}\n\nShould you need further clarifications, feel free to drop us an email at KMGroup@meogroup.com.\n\nBest Regards,\n{USER_NAME}\n</div>', '', 'NIL', '2016-12-06 09:02:55', '0000-00-00 00:00:00'),
(2, 'CONTACTS / VESSELS / VERIFY', 'MEO-CONTACT WEB', 'HI,\n\nKINDLY FOLLOW THE LINK FOR THE SUMMARY OF MY VISIT:\n{PDF_LINK}\n\nMONITOR AND CLOSE OUT DEFECTS/DEFICIENCIES WITH THIS TEMPLATE:\n{EXCEL_LINK}\n\nTHANKS & BEST REGARDS,\n{USER_NAME}\n{USER_DESIGNATION}', 'N/A', 'TEST', '2016-12-06 09:02:55', '0000-00-00 00:00:00'),
(3, 'CONTACTS / VESSEL CONTACTS / VERIFY', 'VESSEL VERIFICATION', 'Hi,\n\nKindly follow this link to view and verify your vessel\'s contact information:\n\n{VESSEL_URL}\n\nShould you need further clarifications, feel free to drop us an email at KMGroup@meogroup.com.\n\nBest Regards,\n{USER_NAME}', 'N/A', 'NIL', '2016-12-06 01:02:55', '0000-00-00 00:00:00');

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
(1, 'ET03', 'MICLYN EXPRESS OFFSHORE PTE LTD', 'active', '2017-01-17 07:46:55', 'ADMIN', '2017-01-18 13:09:51', 'ADMIN'),
(2, 'A123', 'SINGSYS', 'active', '2017-01-17 22:08:04', 'ADMIN', '2017-01-18 11:38:15', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `meo_fare_class`
--

CREATE TABLE `meo_fare_class` (
  `fare_class_id` int(11) NOT NULL,
  `fare_class_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_fare_class`
--

INSERT INTO `meo_fare_class` (`fare_class_id`, `fare_class_name`) VALUES
(1, 'Business'),
(2, 'Economy');

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
(16, 27, 169, '', '', NULL, 'ADMIN', '2017-01-19 22:18:36'),
(20, 27, 167, '', 'SISTER: SAMSON 7', NULL, 'ADMIN', '2017-01-19 23:56:51'),
(21, 27, 168, '', 'EX-NAME: ZUMAIA SEPTIMO ; SISTER: SAMSON 6', NULL, 'ADMIN', '2017-01-19 23:58:49'),
(304, 27, 158, '', '', 'uploads/vesselcontact/20170131212936.png', 'ADMIN', '2017-01-31 07:59:46'),
(357, 27, 112, '', '', 'uploads/vesselcontact/20170201185135.png', 'ADMIN', '2017-02-01 05:21:40'),
(368, 42, 36, 'SINGAPORE', '', NULL, 'ADMIN', '2017-02-02 01:48:01'),
(369, 42, 33, 'ASFSDF', '', NULL, 'ADMIN', '2017-02-02 01:48:55'),
(370, 42, 9, 'ASDFSDF', '', NULL, 'ADMIN', '2017-02-02 01:49:35'),
(372, 38, 45, 'AREWR', '', NULL, 'ADMIN', '2017-02-02 03:42:52'),
(373, 41, 154, 'TEST', '', NULL, 'ADMIN', '2017-02-02 09:40:52'),
(375, 31, 164, '', '', 'uploads/vesselcontact/20170203101600.png', 'ADMIN', '2017-02-02 20:48:00'),
(377, 34, 143, '', 'HULL: HT122206', 'uploads/vesselcontact/20170203102414.png', 'ADMIN', '2017-02-02 20:54:38'),
(381, 40, 35, '', 'EX-NAME: ABEER 32 ; HULL: H354 ', 'uploads/vesselcontact/20170203103115.png', 'ADMIN', '2017-02-02 21:01:20'),
(382, 40, 103, '', 'EX-NAME: PMW SUPPLY ; HULL: YX3058', 'uploads/vesselcontact/20170203103154.png', 'ADMIN', '2017-02-02 21:02:13'),
(383, 40, 66, '', 'EX-NAME: ABEER 41 ; HULL: H241 ; SISTER: EXPRESS 3', 'uploads/vesselcontact/20170203103249.png', 'ADMIN', '2017-02-02 21:02:53'),
(388, 25, 94, '', 'HULL: MSE102 ; SISTER: MICLYN OPAL', 'uploads/vesselcontact/20170203103724.png', 'ADMIN', '2017-02-02 21:07:28'),
(389, 25, 81, '', 'HULL: H222 ; SISTER: EXPRESS 77, 79, 82, 85', 'uploads/vesselcontact/20170203103803.png', 'ADMIN', '2017-02-02 21:08:09'),
(390, 25, 79, '', 'HULL: H204 ; SISTER: EXPRESS 75', 'uploads/vesselcontact/20170203103909.png', 'ADMIN', '2017-02-02 21:09:19'),
(391, 25, 118, '', 'HULL: LS181 ; SISTER: CERDIK', 'uploads/vesselcontact/20170203104030.png', 'ADMIN', '2017-02-02 21:10:36'),
(395, 25, 74, '', 'HULL: H190 ; SISTER: EXPRESS 73', 'uploads/vesselcontact/20170203104330.png', 'ADMIN', '2017-02-02 21:13:33'),
(396, 25, 144, '', 'HULL: H255 ; SISTER:EXPRESS 89, 90, 91, 92, 93', 'uploads/vesselcontact/20170203104422.png', 'ADMIN', '2017-02-02 21:14:27'),
(398, 25, 147, '', 'SISTER: EXPRESS 88, 89, 90, 92, 93 ; BAREBOAT', 'uploads/vesselcontact/20170203104556.png', 'ADMIN', '2017-02-02 21:16:01'),
(399, 25, 119, '', 'HULL: LS182 ; SISTER: CERMAT', 'uploads/vesselcontact/20170203104628.png', 'ADMIN', '2017-02-02 21:16:34'),
(400, 25, 82, '', 'HULL: H231 ; SISTER:EXPRESS 77, 78, 82, 85', 'uploads/vesselcontact/20170203104713.png', 'ADMIN', '2017-02-02 21:17:34'),
(401, 31, 161, '', '', 'uploads/vesselcontact/20170203104950.png', 'ADMIN', '2017-02-02 21:19:54'),
(402, 31, 89, '', '', 'uploads/vesselcontact/20170203105218.png', 'ADMIN', '2017-02-02 21:22:31'),
(404, 27, 166, '', 'HULL:A378M ; SISTER:MONARCH 1', 'uploads/vesselcontact/20170203105420.png', 'ADMIN', '2017-02-02 21:24:23'),
(405, 27, 165, '', 'HULL:A377M ; SISTER:MONARCH 2', 'uploads/vesselcontact/20170203110246.png', 'ADMIN', '2017-02-02 21:32:58'),
(409, 34, 97, '', 'HULL: NC510', 'uploads/vesselcontact/20170203110900.png', 'ADMIN', '2017-02-02 21:39:03'),
(410, 34, 24, '', 'EX-NAME: ABEER 42 ; HULL:H242 ; SISTER: EXPRESS 2', 'uploads/vesselcontact/20170203111006.png', 'ADMIN', '2017-02-02 21:40:10'),
(411, 34, 67, '', '', 'uploads/vesselcontact/20170203111058.png', 'ADMIN', '2017-02-02 21:41:03'),
(412, 34, 107, '', 'EX-NAME: MARINA STAR ; HULL: LS198 ', 'uploads/vesselcontact/20170203111200.png', 'ADMIN', '2017-02-02 21:42:03'),
(413, 34, 93, '', 'HULL: HT0098 ; SISER: MICLYN GRACE', 'uploads/vesselcontact/20170203111319.png', 'ADMIN', '2017-02-02 21:43:22'),
(414, 34, 104, '', 'HULL:H105 ; SISER:MAGELLAN 1', 'uploads/vesselcontact/20170203111414.png', 'ADMIN', '2017-02-02 21:44:27'),
(415, 34, 25, '', 'HULL: H251', 'uploads/vesselcontact/20170203111512.png', 'ADMIN', '2017-02-02 21:45:16'),
(416, 34, 147, '', '', 'uploads/vesselcontact/20170203111549.png', 'ADMIN', '2017-02-02 21:45:53'),
(417, 34, 68, '', '', 'uploads/vesselcontact/20170203111649.png', 'ADMIN', '2017-02-02 21:46:51'),
(418, 34, 101, '', 'HULL:H103 ; SISTER:MAGELLAN 2', 'uploads/vesselcontact/20170203111736.png', 'ADMIN', '2017-02-02 21:47:42'),
(419, 34, 80, '', 'EX-NAME: ZENITH SATU ; HULL: H221 ; SISTER: EXPRESS 78, 79, 82', 'uploads/vesselcontact/20170203111835.png', 'ADMIN', '2017-02-02 21:48:38'),
(420, 34, 23, '', 'EX-NAME: ABEER 3 ; HULL:H355', 'uploads/vesselcontact/20170203111928.png', 'ADMIN', '2017-02-02 21:49:31'),
(421, 34, 111, '', 'HULL: H110 ; SISTER: MEO RESOLUTION ; IF CALLED OUT FROM VSL, NO WILL APPEAR AS +12033467607 OR +12033467608', 'uploads/vesselcontact/20170203112057.png', 'ADMIN', '2017-02-02 21:51:00'),
(422, 34, 99, '', 'HULL: SRC604 \' SISTER: MICLYN VENTURE', 'uploads/vesselcontact/20170203112251.png', 'ADMIN', '2017-02-02 21:53:02'),
(424, 40, 148, '', 'SISTER: EXPRESS 88, 89, 90, 91, 93', 'uploads/vesselcontact/20170203103025.png', 'ADMIN', '2017-02-02 22:11:07'),
(425, 40, 37, '', 'EX-NAME: ABEER 37 ; HULL: H116', 'uploads/vesselcontact/20170202134308.png', 'ADMIN', '2017-02-02 22:11:27'),
(429, 43, 115, '', 'EX-NAME: UNIWISE RATCHABURI, SWISSCO SKY ; HULL:LS115 ; SISTER: 90% SIMILAR TO PHUKET', 'uploads/vesselcontact/20170203135259.png', 'ADMIN', '2017-02-03 00:23:03'),
(430, 43, 22, '', 'EX-NAME: UNIEXPRESS 1, UNIWISE 1, GREEN ARROW ; HULL: H362 ', 'uploads/vesselcontact/20170203135330.png', 'ADMIN', '2017-02-03 00:23:34'),
(431, 43, 84, '', 'HULL: H225 ; SISTER: EXPRESS 80', 'uploads/vesselcontact/20170203135410.png', 'ADMIN', '2017-02-03 00:24:14'),
(433, 43, 54, '', 'HULL: H224 ; SISTER: UNIEXPRESS 9-18', 'uploads/vesselcontact/20170203140931.png', 'ADMIN', '2017-02-03 00:40:07'),
(434, 43, 116, '', 'HULL: H333', 'uploads/vesselcontact/20170203141108.png', 'ADMIN', '2017-02-03 00:41:11'),
(436, 43, 113, '', 'EX-NAME: UNIWISE CHONBURI ; HULL: H107 ; SISTER: UNIWISE SONGKLA', 'uploads/vesselcontact/20170203141208.png', 'ADMIN', '2017-02-03 00:46:21'),
(443, 23, 63, 'TEST2', '', NULL, 'ADMIN', '2017-02-03 22:26:50'),
(449, 23, 69, '', '', '', 'ADMIN', '2017-02-04 01:03:29'),
(452, 23, 83, '', '', 'uploads/vesselcontact/20170204143533.png', 'ADMIN', '2017-02-04 01:05:36'),
(453, 23, 73, '', '', 'uploads/vesselcontact/20170204175056.png', 'ADMIN', '2017-02-04 04:21:04'),
(455, 36, 58, '', 'HULL: H164', 'uploads/vesselcontact/20170206175429.png', 'ADMIN', '2017-02-06 04:24:37'),
(459, 38, 28, '', '', NULL, 'ADMIN', '2017-02-08 07:11:44'),
(462, 34, 92, 'SINGAPORE', 'HULL: HT0097 ; SISTER: MICLYN GRAND', 'uploads/vesselcontact/20170203110736.png', 'ADMIN', '2017-02-08 11:00:25'),
(463, 34, 26, 'SINGAPORE', '', 'uploads/vesselcontact/20170203110429.png', 'ADMIN', '2017-02-08 11:04:21'),
(464, 45, 10, '', '', NULL, 'ADMIN', '2017-02-12 22:10:13'),
(466, 45, 174, '', '', NULL, 'ADMIN', '2017-02-13 04:18:04'),
(467, 31, 157, '', '', 'uploads/vesselcontact/20170203105344.png', 'JOVY CHAY', '2017-02-14 03:42:29'),
(468, 31, 159, '', '', 'uploads/vesselcontact/20170203101351.png', 'JOVY CHAY', '2017-02-25 02:06:20'),
(469, 34, 59, '', 'HULL: H160 ; SISTER: SAMSON SUPPORTER', 'uploads/vesselcontact/20170303113148.png', 'ADMIN', '2017-03-02 22:01:53');

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
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_front_vessel_contact_details`
--

INSERT INTO `meo_front_vessel_contact_details` (`id_vessel_region`, `id_vessel_name`, `details`, `description`, `type`, `added_date`) VALUES
(27, 169, '0429 086 741', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-01-19 22:18:36'),
(27, 169, 'SAMSON.101@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-01-19 22:18:36'),
(27, 167, '0458990244', 'MOBILE', 'phone', '2017-01-19 23:56:51'),
(27, 167, '0477299500', '3G MODEM', 'phone', '2017-01-19 23:56:51'),
(27, 167, '+870773230496', 'SAT', 'phone', '2017-01-19 23:56:51'),
(27, 167, 'SAMSON.6@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-01-19 23:56:51'),
(27, 168, '0499779800', 'MOBILE', 'phone', '2017-01-19 23:58:49'),
(27, 168, ' 0408726171', '3G MODEM', 'phone', '2017-01-19 23:58:49'),
(27, 168, 'SAMSON.7@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-01-19 23:58:49'),
(27, 158, '0447 614 228', 'MOBILE', 'phone', '2017-01-31 07:59:46'),
(27, 158, '0447 614 989', '3G MODEM', 'phone', '2017-01-31 07:59:46'),
(27, 158, '+870 765041646', 'SAT PH', 'phone', '2017-01-31 07:59:46'),
(27, 158, '+870 765041647', 'SAT FAX (450303831@C12.STRATOSMOBILE.NET)', 'phone', '2017-01-31 07:59:46'),
(27, 158, 'ALERT@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-01-31 07:59:46'),
(27, 158, 'MASTER.ALERT@AMOSCONNECT.COM ', '', 'email', '2017-01-31 07:59:46'),
(27, 112, '0428614228', 'MOBILE', 'phone', '2017-02-01 05:21:40'),
(27, 112, 'TARKA@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-02-01 05:21:40'),
(42, 36, '123213', '', 'phone', '2017-02-02 01:48:01'),
(42, 33, '123423', '', 'phone', '2017-02-02 01:48:55'),
(42, 9, '321423423', '', 'phone', '2017-02-02 01:49:35'),
(38, 45, '1234567', '', 'phone', '2017-02-02 03:42:52'),
(34, 143, '+6531520586', 'TELP (VSAT)', 'phone', '2017-02-02 20:54:39'),
(34, 143, '+870773166423', 'TELP (FBB)', 'phone', '2017-02-02 20:54:39'),
(34, 143, '+6531520586', 'VOIP EXT 300', 'phone', '2017-02-02 20:54:39'),
(34, 143, '+6531520587', 'VOIP EXT 301', 'phone', '2017-02-02 20:54:39'),
(34, 143, 'BRIDGE.GUARDIAN@GTMAILPLUS.COM', '', 'email', '2017-02-02 20:54:39'),
(34, 143, 'BRIDGE.GUARDIAN@GTMAILPLUS.COM', '', 'email', '2017-02-02 20:54:39'),
(34, 143, 'CHENG.GUARDIAN@GTMAILPLUS.COM', '', 'email', '2017-02-02 20:54:39'),
(34, 143, 'MEOGUARDIAN@HOTMAIL.COM', '', 'email', '2017-02-02 20:54:39'),
(40, 35, '870773164958', 'SAT', 'phone', '2017-02-02 21:01:20'),
(40, 35, 'EXPRESS52@SKYFILE.COM', '', 'email', '2017-02-02 21:01:20'),
(40, 103, '+870773165395', 'SAT', 'phone', '2017-02-02 21:02:14'),
(40, 103, ' 081372924323', 'MOBILE', 'phone', '2017-02-02 21:02:14'),
(40, 103, 'SMSUPPORTER@SKYFILE.COM', '', 'email', '2017-02-02 21:02:14'),
(40, 66, '870773166440', 'SAT', 'phone', '2017-02-02 21:02:53'),
(40, 66, '081380900537', 'MOBILE', 'phone', '2017-02-02 21:02:53'),
(40, 66, 'EXPRESS2@SKYFILE.COM', '', 'email', '2017-02-02 21:02:53'),
(25, 94, '7170608', '', 'phone', '2017-02-02 21:07:28'),
(25, 94, 'MICLYNONYX@SKYFILE.COM', '', 'email', '2017-02-02 21:07:28'),
(25, 81, '8988623', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:08:09'),
(25, 81, 'EXPRESS78@SKYFILE.COM', '', 'email', '2017-02-02 21:08:09'),
(25, 79, '8772213', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:09:19'),
(25, 79, 'EXPRESS76@SKYFILE.COM', '', 'email', '2017-02-02 21:09:19'),
(25, 118, '8988144', '', 'phone', '2017-02-02 21:10:36'),
(25, 118, 'VESSELCERMAT2014@GMAIL.COM', '', 'email', '2017-02-02 21:10:36'),
(25, 74, '7181145', '', 'phone', '2017-02-02 21:13:34'),
(25, 74, 'EXPRESS72@SKYFILE.COM', '', 'email', '2017-02-02 21:13:34'),
(25, 144, '8727020', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:14:27'),
(25, 144, 'EXPRESS88@SKYFILE.COM', '', 'email', '2017-02-02 21:14:27'),
(25, 119, '7177704', '', 'phone', '2017-02-02 21:16:34'),
(25, 119, 'VESSELCERDIK2014@GMAIL.COM', '', 'email', '2017-02-02 21:16:34'),
(25, 82, '8770050', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:17:34'),
(25, 82, 'EXPRESS79@SKYFILE.COM', '', 'email', '2017-02-02 21:17:34'),
(27, 166, '+ 870773165016', 'FBB VOICE', 'phone', '2017-02-02 21:24:23'),
(27, 166, '+6531520287', '(BRIDGE) VOIP EXT 300', 'phone', '2017-02-02 21:24:23'),
(27, 166, '+6531520289', '(MASTER CABIN) VOIP EXT 301', 'phone', '2017-02-02 21:24:23'),
(27, 166, 'MONARCH2.OFFICER@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-02-02 21:24:23'),
(27, 166, 'MONARCH2.ENGINEER@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-02-02 21:24:23'),
(27, 166, 'MONARCH2.MASTER@SAMSONEXPRESSOFFSHORE.COM.AU', '', 'email', '2017-02-02 21:24:23'),
(27, 165, '+870773165 020', 'FBB VOICE ', 'phone', '2017-02-02 21:32:59'),
(27, 165, '+6531520284', 'VOIP EXT 300', 'phone', '2017-02-02 21:32:59'),
(27, 165, '+6531520285', 'VOIP EXT 301', 'phone', '2017-02-02 21:32:59'),
(27, 165, 'MONARCH1.OFFICER@MEOGROUP.COM', '', 'email', '2017-02-02 21:32:59'),
(27, 165, 'MONARCH1.ENGINEER@MEOGROUP.COM', '', 'email', '2017-02-02 21:32:59'),
(27, 165, 'MONARCH1.MASTER@MEOGROUP.COM', '', 'email', '2017-02-02 21:32:59'),
(34, 97, '+870773166428', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:39:03'),
(34, 97, 'MICLYNPOWER@SKYFILE.COM', '', 'email', '2017-02-02 21:39:03'),
(34, 24, '870773166441', 'SAT', 'phone', '2017-02-02 21:40:11'),
(34, 24, '082123112533', 'MOBILE', 'phone', '2017-02-02 21:40:11'),
(34, 24, '081319241902', 'MOBILE', 'phone', '2017-02-02 21:40:11'),
(34, 24, 'EXPRESS3@SKYFILE.COM', '', 'email', '2017-02-02 21:40:11'),
(34, 67, '+870773165012', '', 'phone', '2017-02-02 21:41:03'),
(34, 67, 'EXPRESS11@SKYFILE.COM', '', 'email', '2017-02-02 21:41:03'),
(34, 107, '+12035973009 ', 'VSAT', 'phone', '2017-02-02 21:42:03'),
(34, 107, '+12035973010', 'VSAT', 'phone', '2017-02-02 21:42:03'),
(34, 107, '+12035973011', 'VSAT', 'phone', '2017-02-02 21:42:03'),
(34, 107, '+12035973012', 'VSAT', 'phone', '2017-02-02 21:42:03'),
(34, 107, '+60173832923', 'MOBILE', 'phone', '2017-02-02 21:42:03'),
(34, 107, '+870773166439', 'MOBILE', 'phone', '2017-02-02 21:42:03'),
(34, 107, 'MEOGALAXY@SKYFILE.COM', '', 'email', '2017-02-02 21:42:03'),
(34, 93, '+870764896246', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:43:22'),
(34, 93, 'MICLYNGRAND@SKYFILE.COM', '', 'email', '2017-02-02 21:43:22'),
(34, 104, '+870773165008', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:44:28'),
(34, 104, 'MAGELLAN2@SKYFILE.COM', '', 'email', '2017-02-02 21:44:28'),
(34, 25, '+870773165011', '', 'phone', '2017-02-02 21:45:16'),
(34, 25, '+971505532463', '', 'phone', '2017-02-02 21:45:16'),
(34, 25, 'EXPRESS4@SKYFILE.COM', '', 'info', '2017-02-02 21:45:16'),
(34, 25, 'EXPRESS4@MEOGROUP.COM', '', 'info', '2017-02-02 21:45:16'),
(34, 68, '+870773165013', '', 'phone', '2017-02-02 21:46:51'),
(34, 68, 'EXPRESS12@SKYFILE.COM', '', 'email', '2017-02-02 21:46:51'),
(34, 101, '+870773165007', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-02 21:47:42'),
(34, 101, 'MAGELLAN1@SKYFILE.COM', '', 'email', '2017-02-02 21:47:42'),
(34, 80, '+881677 735760', '', 'phone', '2017-02-02 21:48:38'),
(34, 80, 'EXPRESS77@MEO.COMMBOX.COM', '', 'email', '2017-02-02 21:48:38'),
(34, 23, '+870773165014', '', 'phone', '2017-02-02 21:49:31'),
(34, 23, '+971505319796', '', 'phone', '2017-02-02 21:49:31'),
(34, 23, 'EXPRESS18@SKYFILE.COM', '', 'email', '2017-02-02 21:49:31'),
(34, 23, 'EXPRESSDNV18@MEOGROUP.COM', '', 'email', '2017-02-02 21:49:31'),
(34, 111, '+870773167134 ', '', 'phone', '2017-02-02 21:51:01'),
(34, 111, '+6531520215', '(EXT. 300)', 'phone', '2017-02-02 21:51:01'),
(34, 111, '+6531520216', '(EXT. 301)', 'phone', '2017-02-02 21:51:01'),
(34, 111, '+6531520217 ', '(EXT. 302)', 'phone', '2017-02-02 21:51:01'),
(34, 111, 'MASTER.MEORANGER@GMAIL.COM', '', 'email', '2017-02-02 21:51:01'),
(34, 111, 'MEORANGER1@GMAIL.COM', '', 'email', '2017-02-02 21:51:01'),
(34, 111, 'CHENG.MEORANGER@GMAIL.COM', '', 'email', '2017-02-02 21:51:01'),
(34, 111, 'MEORANGER@SKYFILE.COM', '', 'email', '2017-02-02 21:51:01'),
(34, 99, '+870773164985', '', 'phone', '2017-02-02 21:53:02'),
(34, 99, 'MICLYNVICTORY@SKYFILE.COM', '', 'email', '2017-02-02 21:53:02'),
(40, 37, '870773164961', 'SAT', 'phone', '2017-02-02 22:11:27'),
(40, 37, 'EXPRESS54@SKYFILE.COM', '', 'email', '2017-02-02 22:11:27'),
(43, 115, '+870773164991', '', 'phone', '2017-02-03 00:23:03'),
(43, 115, 'AOSRATCHABURI@SKYFILE.COM', '', 'email', '2017-02-03 00:23:03'),
(43, 22, '+870773164949', '', 'phone', '2017-02-03 00:23:35'),
(43, 22, 'AOS1@SKYFILE.COM', '', 'email', '2017-02-03 00:23:35'),
(43, 84, '+870773166865', '', 'phone', '2017-02-03 00:24:14'),
(43, 84, 'EXPRESS81@SKYFILE.COM', '', 'email', '2017-02-03 00:24:14'),
(43, 54, '+870773164968', '', 'phone', '2017-02-03 00:40:07'),
(43, 54, 'UNIEXPRESS15@SKYFILE.COM', '', 'email', '2017-02-03 00:40:07'),
(43, 116, '+66823434433', '', 'phone', '2017-02-03 00:41:12'),
(43, 116, 'UNIWISERAYONG@GMAIL.COM', '', 'email', '2017-02-03 00:41:12'),
(43, 113, '+870773164992', '', 'phone', '2017-02-03 00:46:21'),
(43, 113, 'AOSPATTAYA@SKYFILE.COM', '', 'email', '2017-02-03 00:46:21'),
(36, 58, '+870773164981', '', 'phone', '2017-02-06 04:24:37'),
(36, 58, 'UNI EXPRESS 20 <UNIEXPRESS20@SKYFILE.COM>', '', 'email', '2017-02-06 04:24:37'),
(34, 92, '+870773153490 ', 'MINI M / FBB 150 NO / CONTACT', 'phone', '2017-02-08 11:00:25'),
(34, 92, 'MICLYNGRACE@SKYFILE.COM', '', 'email', '2017-02-08 11:00:25'),
(45, 174, 'BHARATRAJ@SINGSYS.COM', 'TESTING', 'email', '2017-02-13 04:18:04'),
(45, 174, 'RAHULPRATAP@SINGSYS.COM', 'QWERTYUIO', 'email', '2017-02-13 04:18:04'),
(31, 157, '123', '', 'phone', '2017-02-14 03:42:29'),
(34, 59, '+870773166422', '', 'phone', '2017-03-02 22:01:53'),
(34, 59, 'SAMSONSUPPLIER@SKYFILE.COM', '', 'email', '2017-03-02 22:01:53');

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
(27, 169, 147, 'technical_pic', '2017-01-19 22:18:36'),
(27, 169, 100, 'scm_pic', '2017-01-19 22:18:36'),
(27, 169, 147, 'operation_pic', '2017-01-19 22:18:36'),
(27, 169, 146, 'emergency_contact', '2017-01-19 22:18:36'),
(27, 169, 18, 'dpa_cso', '2017-01-19 22:18:36'),
(27, 167, 147, 'technical_pic', '2017-01-19 23:56:52'),
(27, 167, 100, 'scm_pic', '2017-01-19 23:56:52'),
(27, 167, 147, 'operation_pic', '2017-01-19 23:56:52'),
(27, 167, 146, 'emergency_contact', '2017-01-19 23:56:52'),
(27, 167, 18, 'dpa_cso', '2017-01-19 23:56:52'),
(27, 168, 147, 'technical_pic', '2017-01-19 23:58:49'),
(27, 168, 100, 'scm_pic', '2017-01-19 23:58:49'),
(27, 168, 147, 'operation_pic', '2017-01-19 23:58:49'),
(27, 168, 146, 'emergency_contact', '2017-01-19 23:58:49'),
(27, 168, 147, 'dpa_cso', '2017-01-19 23:58:49'),
(27, 158, 147, 'technical_pic', '2017-01-31 07:59:47'),
(27, 158, 100, 'scm_pic', '2017-01-31 07:59:47'),
(27, 158, 147, 'operation_pic', '2017-01-31 07:59:47'),
(27, 158, 146, 'emergency_contact', '2017-01-31 07:59:47'),
(27, 158, 147, 'dpa_cso', '2017-01-31 07:59:47'),
(27, 112, 147, 'technical_pic', '2017-02-01 05:21:40'),
(27, 112, 100, 'scm_pic', '2017-02-01 05:21:40'),
(27, 112, 147, 'operation_pic', '2017-02-01 05:21:40'),
(27, 112, 146, 'emergency_contact', '2017-02-01 05:21:40'),
(27, 112, 147, 'dpa_cso', '2017-02-01 05:21:40'),
(34, 143, 192, 'technical_pic', '2017-02-02 20:54:39'),
(34, 143, 193, 'technical_pic', '2017-02-02 20:54:39'),
(34, 143, 171, 'scm_pic', '2017-02-02 20:54:39'),
(34, 143, 172, 'scm_pic', '2017-02-02 20:54:39'),
(34, 143, 181, 'operation_pic', '2017-02-02 20:54:39'),
(34, 143, 182, 'operation_pic', '2017-02-02 20:54:39'),
(34, 143, 178, 'emergency_contact', '2017-02-02 20:54:39'),
(34, 143, 186, 'emergency_contact', '2017-02-02 20:54:39'),
(34, 143, 176, 'dpa_cso', '2017-02-02 20:54:39'),
(34, 143, 186, 'dpa_cso', '2017-02-02 20:54:39'),
(34, 143, 165, 'crewing_pic', '2017-02-02 20:54:39'),
(40, 35, 232, 'technical_pic', '2017-02-02 21:01:20'),
(40, 35, 234, 'scm_pic', '2017-02-02 21:01:20'),
(40, 35, 231, 'operation_pic', '2017-02-02 21:01:20'),
(40, 35, 233, 'operation_pic', '2017-02-02 21:01:20'),
(40, 35, 237, 'emergency_contact', '2017-02-02 21:01:20'),
(40, 35, 237, 'dpa_cso', '2017-02-02 21:01:20'),
(40, 35, 223, 'crewing_pic', '2017-02-02 21:01:20'),
(40, 103, 232, 'technical_pic', '2017-02-02 21:02:14'),
(40, 103, 234, 'scm_pic', '2017-02-02 21:02:14'),
(40, 103, 231, 'operation_pic', '2017-02-02 21:02:14'),
(40, 103, 233, 'operation_pic', '2017-02-02 21:02:14'),
(40, 103, 237, 'emergency_contact', '2017-02-02 21:02:14'),
(40, 103, 237, 'dpa_cso', '2017-02-02 21:02:14'),
(40, 103, 223, 'crewing_pic', '2017-02-02 21:02:14'),
(40, 66, 232, 'technical_pic', '2017-02-02 21:02:54'),
(40, 66, 234, 'scm_pic', '2017-02-02 21:02:54'),
(40, 66, 231, 'operation_pic', '2017-02-02 21:02:54'),
(40, 66, 233, 'operation_pic', '2017-02-02 21:02:54'),
(40, 66, 237, 'emergency_contact', '2017-02-02 21:02:54'),
(40, 66, 237, 'dpa_cso', '2017-02-02 21:02:54'),
(40, 66, 223, 'crewing_pic', '2017-02-02 21:02:54'),
(25, 94, 133, 'technical_pic', '2017-02-02 21:07:28'),
(25, 94, 137, 'scm_pic', '2017-02-02 21:07:28'),
(25, 94, 134, 'operation_pic', '2017-02-02 21:07:28'),
(25, 94, 136, 'emergency_contact', '2017-02-02 21:07:28'),
(25, 94, 136, 'dpa_cso', '2017-02-02 21:07:28'),
(25, 94, 135, 'crewing_pic', '2017-02-02 21:07:28'),
(25, 81, 133, 'technical_pic', '2017-02-02 21:08:09'),
(25, 81, 137, 'scm_pic', '2017-02-02 21:08:09'),
(25, 81, 134, 'operation_pic', '2017-02-02 21:08:09'),
(25, 81, 136, 'emergency_contact', '2017-02-02 21:08:09'),
(25, 81, 136, 'dpa_cso', '2017-02-02 21:08:09'),
(25, 81, 135, 'crewing_pic', '2017-02-02 21:08:09'),
(25, 79, 133, 'technical_pic', '2017-02-02 21:09:19'),
(25, 79, 137, 'scm_pic', '2017-02-02 21:09:19'),
(25, 79, 134, 'operation_pic', '2017-02-02 21:09:19'),
(25, 79, 136, 'emergency_contact', '2017-02-02 21:09:19'),
(25, 79, 136, 'dpa_cso', '2017-02-02 21:09:19'),
(25, 79, 135, 'crewing_pic', '2017-02-02 21:09:19'),
(25, 118, 133, 'technical_pic', '2017-02-02 21:10:36'),
(25, 118, 137, 'scm_pic', '2017-02-02 21:10:36'),
(25, 118, 134, 'operation_pic', '2017-02-02 21:10:36'),
(25, 118, 136, 'emergency_contact', '2017-02-02 21:10:36'),
(25, 118, 136, 'dpa_cso', '2017-02-02 21:10:36'),
(25, 118, 135, 'crewing_pic', '2017-02-02 21:10:36'),
(25, 74, 133, 'technical_pic', '2017-02-02 21:13:34'),
(25, 74, 137, 'scm_pic', '2017-02-02 21:13:34'),
(25, 74, 134, 'operation_pic', '2017-02-02 21:13:34'),
(25, 74, 136, 'emergency_contact', '2017-02-02 21:13:34'),
(25, 74, 136, 'dpa_cso', '2017-02-02 21:13:34'),
(25, 74, 135, 'crewing_pic', '2017-02-02 21:13:34'),
(25, 144, 133, 'technical_pic', '2017-02-02 21:14:27'),
(25, 144, 137, 'scm_pic', '2017-02-02 21:14:27'),
(25, 144, 134, 'operation_pic', '2017-02-02 21:14:27'),
(25, 144, 136, 'emergency_contact', '2017-02-02 21:14:27'),
(25, 144, 136, 'dpa_cso', '2017-02-02 21:14:27'),
(25, 144, 135, 'crewing_pic', '2017-02-02 21:14:27'),
(25, 147, 133, 'technical_pic', '2017-02-02 21:16:01'),
(25, 147, 137, 'scm_pic', '2017-02-02 21:16:01'),
(25, 147, 134, 'operation_pic', '2017-02-02 21:16:01'),
(25, 147, 136, 'emergency_contact', '2017-02-02 21:16:01'),
(25, 147, 136, 'dpa_cso', '2017-02-02 21:16:01'),
(25, 147, 42, 'crewing_pic', '2017-02-02 21:16:01'),
(25, 147, 135, 'crewing_pic', '2017-02-02 21:16:01'),
(25, 119, 133, 'technical_pic', '2017-02-02 21:16:34'),
(25, 119, 137, 'scm_pic', '2017-02-02 21:16:34'),
(25, 119, 134, 'operation_pic', '2017-02-02 21:16:34'),
(25, 119, 136, 'emergency_contact', '2017-02-02 21:16:34'),
(25, 119, 136, 'dpa_cso', '2017-02-02 21:16:34'),
(25, 119, 135, 'crewing_pic', '2017-02-02 21:16:34'),
(25, 82, 133, 'technical_pic', '2017-02-02 21:17:34'),
(25, 82, 137, 'scm_pic', '2017-02-02 21:17:34'),
(25, 82, 134, 'operation_pic', '2017-02-02 21:17:34'),
(25, 82, 136, 'emergency_contact', '2017-02-02 21:17:34'),
(25, 82, 136, 'dpa_cso', '2017-02-02 21:17:34'),
(25, 82, 135, 'crewing_pic', '2017-02-02 21:17:34'),
(27, 166, 100, 'scm_pic', '2017-02-02 21:24:23'),
(27, 166, 146, 'emergency_contact', '2017-02-02 21:24:23'),
(27, 166, 18, 'dpa_cso', '2017-02-02 21:24:23'),
(27, 166, 26, 'crewing_pic', '2017-02-02 21:24:23'),
(27, 166, 64, 'crewing_pic', '2017-02-02 21:24:23'),
(27, 165, 126, 'technical_pic', '2017-02-02 21:32:59'),
(27, 165, 100, 'scm_pic', '2017-02-02 21:32:59'),
(27, 165, 126, 'operation_pic', '2017-02-02 21:32:59'),
(27, 165, 146, 'emergency_contact', '2017-02-02 21:32:59'),
(27, 165, 18, 'dpa_cso', '2017-02-02 21:32:59'),
(27, 165, 26, 'crewing_pic', '2017-02-02 21:32:59'),
(27, 165, 64, 'crewing_pic', '2017-02-02 21:32:59'),
(34, 97, 68, 'technical_pic', '2017-02-02 21:39:03'),
(34, 97, 194, 'technical_pic', '2017-02-02 21:39:03'),
(34, 97, 170, 'scm_pic', '2017-02-02 21:39:03'),
(34, 97, 172, 'scm_pic', '2017-02-02 21:39:03'),
(34, 97, 187, 'operation_pic', '2017-02-02 21:39:03'),
(34, 97, 188, 'operation_pic', '2017-02-02 21:39:03'),
(34, 97, 178, 'emergency_contact', '2017-02-02 21:39:03'),
(34, 97, 186, 'emergency_contact', '2017-02-02 21:39:03'),
(34, 97, 176, 'dpa_cso', '2017-02-02 21:39:03'),
(34, 97, 186, 'dpa_cso', '2017-02-02 21:39:03'),
(34, 97, 163, 'crewing_pic', '2017-02-02 21:39:03'),
(34, 97, 165, 'crewing_pic', '2017-02-02 21:39:03'),
(34, 24, 192, 'technical_pic', '2017-02-02 21:40:11'),
(34, 24, 193, 'technical_pic', '2017-02-02 21:40:11'),
(34, 24, 170, 'scm_pic', '2017-02-02 21:40:11'),
(34, 24, 171, 'scm_pic', '2017-02-02 21:40:11'),
(34, 24, 181, 'operation_pic', '2017-02-02 21:40:11'),
(34, 24, 182, 'operation_pic', '2017-02-02 21:40:11'),
(34, 24, 178, 'emergency_contact', '2017-02-02 21:40:11'),
(34, 24, 186, 'emergency_contact', '2017-02-02 21:40:11'),
(34, 24, 176, 'dpa_cso', '2017-02-02 21:40:11'),
(34, 24, 186, 'dpa_cso', '2017-02-02 21:40:11'),
(34, 24, 165, 'crewing_pic', '2017-02-02 21:40:11'),
(34, 67, 193, 'technical_pic', '2017-02-02 21:41:03'),
(34, 67, 194, 'technical_pic', '2017-02-02 21:41:03'),
(34, 67, 171, 'scm_pic', '2017-02-02 21:41:03'),
(34, 67, 172, 'scm_pic', '2017-02-02 21:41:03'),
(34, 67, 187, 'operation_pic', '2017-02-02 21:41:03'),
(34, 67, 188, 'operation_pic', '2017-02-02 21:41:03'),
(34, 67, 178, 'emergency_contact', '2017-02-02 21:41:03'),
(34, 67, 186, 'emergency_contact', '2017-02-02 21:41:03'),
(34, 67, 176, 'dpa_cso', '2017-02-02 21:41:03'),
(34, 67, 186, 'dpa_cso', '2017-02-02 21:41:03'),
(34, 67, 163, 'crewing_pic', '2017-02-02 21:41:03'),
(34, 67, 165, 'crewing_pic', '2017-02-02 21:41:03'),
(34, 107, 192, 'technical_pic', '2017-02-02 21:42:03'),
(34, 107, 193, 'technical_pic', '2017-02-02 21:42:03'),
(34, 107, 170, 'scm_pic', '2017-02-02 21:42:03'),
(34, 107, 171, 'scm_pic', '2017-02-02 21:42:03'),
(34, 107, 181, 'operation_pic', '2017-02-02 21:42:03'),
(34, 107, 182, 'operation_pic', '2017-02-02 21:42:03'),
(34, 107, 178, 'emergency_contact', '2017-02-02 21:42:03'),
(34, 107, 186, 'emergency_contact', '2017-02-02 21:42:03'),
(34, 107, 176, 'dpa_cso', '2017-02-02 21:42:03'),
(34, 107, 186, 'dpa_cso', '2017-02-02 21:42:03'),
(34, 107, 165, 'crewing_pic', '2017-02-02 21:42:03'),
(34, 93, 192, 'technical_pic', '2017-02-02 21:43:22'),
(34, 93, 194, 'technical_pic', '2017-02-02 21:43:22'),
(34, 93, 170, 'scm_pic', '2017-02-02 21:43:22'),
(34, 93, 172, 'scm_pic', '2017-02-02 21:43:22'),
(34, 93, 187, 'operation_pic', '2017-02-02 21:43:22'),
(34, 93, 188, 'operation_pic', '2017-02-02 21:43:22'),
(34, 93, 178, 'emergency_contact', '2017-02-02 21:43:22'),
(34, 93, 186, 'emergency_contact', '2017-02-02 21:43:22'),
(34, 93, 176, 'dpa_cso', '2017-02-02 21:43:22'),
(34, 93, 186, 'dpa_cso', '2017-02-02 21:43:22'),
(34, 93, 163, 'crewing_pic', '2017-02-02 21:43:22'),
(34, 93, 165, 'crewing_pic', '2017-02-02 21:43:22'),
(34, 104, 192, 'technical_pic', '2017-02-02 21:44:28'),
(34, 104, 194, 'technical_pic', '2017-02-02 21:44:28'),
(34, 104, 171, 'scm_pic', '2017-02-02 21:44:28'),
(34, 104, 172, 'scm_pic', '2017-02-02 21:44:28'),
(34, 104, 181, 'operation_pic', '2017-02-02 21:44:28'),
(34, 104, 182, 'operation_pic', '2017-02-02 21:44:28'),
(34, 104, 178, 'emergency_contact', '2017-02-02 21:44:28'),
(34, 104, 186, 'emergency_contact', '2017-02-02 21:44:28'),
(34, 104, 176, 'dpa_cso', '2017-02-02 21:44:28'),
(34, 104, 186, 'dpa_cso', '2017-02-02 21:44:28'),
(34, 104, 165, 'crewing_pic', '2017-02-02 21:44:28'),
(34, 25, 193, 'technical_pic', '2017-02-02 21:45:16'),
(34, 25, 194, 'technical_pic', '2017-02-02 21:45:16'),
(34, 25, 171, 'scm_pic', '2017-02-02 21:45:16'),
(34, 25, 172, 'scm_pic', '2017-02-02 21:45:16'),
(34, 25, 187, 'operation_pic', '2017-02-02 21:45:16'),
(34, 25, 188, 'operation_pic', '2017-02-02 21:45:16'),
(34, 25, 178, 'emergency_contact', '2017-02-02 21:45:16'),
(34, 25, 186, 'emergency_contact', '2017-02-02 21:45:16'),
(34, 25, 176, 'dpa_cso', '2017-02-02 21:45:16'),
(34, 25, 186, 'dpa_cso', '2017-02-02 21:45:16'),
(34, 25, 163, 'crewing_pic', '2017-02-02 21:45:16'),
(34, 25, 165, 'crewing_pic', '2017-02-02 21:45:16'),
(34, 68, 193, 'technical_pic', '2017-02-02 21:46:51'),
(34, 68, 194, 'technical_pic', '2017-02-02 21:46:51'),
(34, 68, 171, 'scm_pic', '2017-02-02 21:46:51'),
(34, 68, 172, 'scm_pic', '2017-02-02 21:46:51'),
(34, 68, 187, 'operation_pic', '2017-02-02 21:46:51'),
(34, 68, 188, 'operation_pic', '2017-02-02 21:46:51'),
(34, 68, 178, 'emergency_contact', '2017-02-02 21:46:51'),
(34, 68, 186, 'emergency_contact', '2017-02-02 21:46:51'),
(34, 68, 176, 'dpa_cso', '2017-02-02 21:46:51'),
(34, 68, 186, 'dpa_cso', '2017-02-02 21:46:51'),
(34, 68, 163, 'crewing_pic', '2017-02-02 21:46:51'),
(34, 68, 165, 'crewing_pic', '2017-02-02 21:46:51'),
(34, 101, 192, 'technical_pic', '2017-02-02 21:47:42'),
(34, 101, 194, 'technical_pic', '2017-02-02 21:47:42'),
(34, 101, 171, 'scm_pic', '2017-02-02 21:47:42'),
(34, 101, 172, 'scm_pic', '2017-02-02 21:47:42'),
(34, 101, 181, 'operation_pic', '2017-02-02 21:47:42'),
(34, 101, 182, 'operation_pic', '2017-02-02 21:47:42'),
(34, 101, 178, 'emergency_contact', '2017-02-02 21:47:42'),
(34, 101, 186, 'emergency_contact', '2017-02-02 21:47:42'),
(34, 101, 176, 'dpa_cso', '2017-02-02 21:47:42'),
(34, 101, 186, 'dpa_cso', '2017-02-02 21:47:42'),
(34, 101, 165, 'crewing_pic', '2017-02-02 21:47:42'),
(34, 80, 192, 'technical_pic', '2017-02-02 21:48:38'),
(34, 80, 193, 'technical_pic', '2017-02-02 21:48:38'),
(34, 80, 170, 'scm_pic', '2017-02-02 21:48:38'),
(34, 80, 171, 'scm_pic', '2017-02-02 21:48:38'),
(34, 80, 181, 'operation_pic', '2017-02-02 21:48:38'),
(34, 80, 182, 'operation_pic', '2017-02-02 21:48:38'),
(34, 80, 178, 'emergency_contact', '2017-02-02 21:48:38'),
(34, 80, 186, 'emergency_contact', '2017-02-02 21:48:38'),
(34, 80, 176, 'dpa_cso', '2017-02-02 21:48:38'),
(34, 80, 186, 'dpa_cso', '2017-02-02 21:48:38'),
(34, 80, 165, 'crewing_pic', '2017-02-02 21:48:38'),
(34, 23, 193, 'technical_pic', '2017-02-02 21:49:31'),
(34, 23, 194, 'technical_pic', '2017-02-02 21:49:31'),
(34, 23, 171, 'scm_pic', '2017-02-02 21:49:31'),
(34, 23, 172, 'scm_pic', '2017-02-02 21:49:31'),
(34, 23, 187, 'operation_pic', '2017-02-02 21:49:31'),
(34, 23, 188, 'operation_pic', '2017-02-02 21:49:31'),
(34, 23, 178, 'emergency_contact', '2017-02-02 21:49:31'),
(34, 23, 186, 'emergency_contact', '2017-02-02 21:49:31'),
(34, 23, 176, 'dpa_cso', '2017-02-02 21:49:31'),
(34, 23, 186, 'dpa_cso', '2017-02-02 21:49:31'),
(34, 23, 163, 'crewing_pic', '2017-02-02 21:49:31'),
(34, 23, 165, 'crewing_pic', '2017-02-02 21:49:31'),
(34, 111, 192, 'technical_pic', '2017-02-02 21:51:01'),
(34, 111, 193, 'technical_pic', '2017-02-02 21:51:01'),
(34, 111, 170, 'scm_pic', '2017-02-02 21:51:01'),
(34, 111, 171, 'scm_pic', '2017-02-02 21:51:01'),
(34, 111, 181, 'operation_pic', '2017-02-02 21:51:01'),
(34, 111, 182, 'operation_pic', '2017-02-02 21:51:01'),
(34, 111, 178, 'emergency_contact', '2017-02-02 21:51:01'),
(34, 111, 186, 'emergency_contact', '2017-02-02 21:51:01'),
(34, 111, 176, 'dpa_cso', '2017-02-02 21:51:01'),
(34, 111, 186, 'dpa_cso', '2017-02-02 21:51:01'),
(34, 111, 165, 'crewing_pic', '2017-02-02 21:51:01'),
(34, 111, 170, 'crewing_pic', '2017-02-02 21:51:01'),
(34, 99, 192, 'technical_pic', '2017-02-02 21:53:02'),
(34, 99, 193, 'technical_pic', '2017-02-02 21:53:02'),
(34, 99, 170, 'scm_pic', '2017-02-02 21:53:02'),
(34, 99, 172, 'scm_pic', '2017-02-02 21:53:02'),
(34, 99, 181, 'operation_pic', '2017-02-02 21:53:02'),
(34, 99, 182, 'operation_pic', '2017-02-02 21:53:02'),
(34, 99, 176, 'dpa_cso', '2017-02-02 21:53:02'),
(34, 99, 186, 'dpa_cso', '2017-02-02 21:53:02'),
(34, 99, 165, 'crewing_pic', '2017-02-02 21:53:02'),
(40, 148, 232, 'technical_pic', '2017-02-02 22:11:07'),
(40, 148, 234, 'scm_pic', '2017-02-02 22:11:07'),
(40, 148, 231, 'operation_pic', '2017-02-02 22:11:07'),
(40, 148, 233, 'operation_pic', '2017-02-02 22:11:07'),
(40, 148, 237, 'emergency_contact', '2017-02-02 22:11:07'),
(40, 148, 237, 'dpa_cso', '2017-02-02 22:11:07'),
(40, 148, 223, 'crewing_pic', '2017-02-02 22:11:07'),
(40, 37, 232, 'technical_pic', '2017-02-02 22:11:27'),
(40, 37, 234, 'scm_pic', '2017-02-02 22:11:27'),
(40, 37, 231, 'operation_pic', '2017-02-02 22:11:27'),
(40, 37, 233, 'operation_pic', '2017-02-02 22:11:27'),
(40, 37, 237, 'emergency_contact', '2017-02-02 22:11:27'),
(40, 37, 237, 'dpa_cso', '2017-02-02 22:11:27'),
(40, 37, 223, 'crewing_pic', '2017-02-02 22:11:27'),
(43, 115, 303, 'technical_pic', '2017-02-03 00:23:03'),
(43, 115, 314, 'scm_pic', '2017-02-03 00:23:03'),
(43, 115, 295, 'operation_pic', '2017-02-03 00:23:03'),
(43, 115, 297, 'operation_pic', '2017-02-03 00:23:03'),
(43, 115, 289, 'emergency_contact', '2017-02-03 00:23:03'),
(43, 115, 291, 'emergency_contact', '2017-02-03 00:23:03'),
(43, 115, 287, 'dpa_cso', '2017-02-03 00:23:03'),
(43, 115, 289, 'dpa_cso', '2017-02-03 00:23:03'),
(43, 115, 325, 'crewing_pic', '2017-02-03 00:23:03'),
(43, 22, 303, 'technical_pic', '2017-02-03 00:23:35'),
(43, 22, 314, 'scm_pic', '2017-02-03 00:23:35'),
(43, 22, 295, 'operation_pic', '2017-02-03 00:23:35'),
(43, 22, 297, 'operation_pic', '2017-02-03 00:23:35'),
(43, 22, 289, 'emergency_contact', '2017-02-03 00:23:35'),
(43, 22, 291, 'emergency_contact', '2017-02-03 00:23:35'),
(43, 22, 287, 'dpa_cso', '2017-02-03 00:23:35'),
(43, 22, 289, 'dpa_cso', '2017-02-03 00:23:35'),
(43, 22, 325, 'crewing_pic', '2017-02-03 00:23:35'),
(43, 84, 303, 'technical_pic', '2017-02-03 00:24:14'),
(43, 84, 314, 'scm_pic', '2017-02-03 00:24:14'),
(43, 84, 295, 'operation_pic', '2017-02-03 00:24:14'),
(43, 84, 296, 'operation_pic', '2017-02-03 00:24:14'),
(43, 84, 289, 'emergency_contact', '2017-02-03 00:24:14'),
(43, 84, 291, 'emergency_contact', '2017-02-03 00:24:14'),
(43, 84, 287, 'dpa_cso', '2017-02-03 00:24:14'),
(43, 84, 289, 'dpa_cso', '2017-02-03 00:24:14'),
(43, 84, 325, 'crewing_pic', '2017-02-03 00:24:14'),
(43, 54, 303, 'technical_pic', '2017-02-03 00:40:07'),
(43, 54, 314, 'scm_pic', '2017-02-03 00:40:07'),
(43, 54, 295, 'operation_pic', '2017-02-03 00:40:07'),
(43, 54, 297, 'operation_pic', '2017-02-03 00:40:07'),
(43, 54, 291, 'emergency_contact', '2017-02-03 00:40:07'),
(43, 54, 289, 'emergency_contact', '2017-02-03 00:40:07'),
(43, 54, 287, 'dpa_cso', '2017-02-03 00:40:07'),
(43, 54, 289, 'dpa_cso', '2017-02-03 00:40:07'),
(43, 54, 325, 'crewing_pic', '2017-02-03 00:40:07'),
(43, 116, 303, 'technical_pic', '2017-02-03 00:41:12'),
(43, 116, 314, 'scm_pic', '2017-02-03 00:41:12'),
(43, 116, 295, 'operation_pic', '2017-02-03 00:41:12'),
(43, 116, 297, 'operation_pic', '2017-02-03 00:41:12'),
(43, 116, 289, 'emergency_contact', '2017-02-03 00:41:12'),
(43, 116, 291, 'emergency_contact', '2017-02-03 00:41:12'),
(43, 116, 287, 'dpa_cso', '2017-02-03 00:41:12'),
(43, 116, 289, 'dpa_cso', '2017-02-03 00:41:12'),
(43, 116, 325, 'crewing_pic', '2017-02-03 00:41:12'),
(43, 113, 303, 'technical_pic', '2017-02-03 00:46:21'),
(43, 113, 314, 'scm_pic', '2017-02-03 00:46:21'),
(43, 113, 295, 'operation_pic', '2017-02-03 00:46:21'),
(43, 113, 297, 'operation_pic', '2017-02-03 00:46:21'),
(43, 113, 289, 'emergency_contact', '2017-02-03 00:46:21'),
(43, 113, 291, 'emergency_contact', '2017-02-03 00:46:21'),
(43, 113, 287, 'dpa_cso', '2017-02-03 00:46:21'),
(43, 113, 289, 'dpa_cso', '2017-02-03 00:46:21'),
(43, 113, 325, 'crewing_pic', '2017-02-03 00:46:21'),
(36, 58, 193, 'technical_pic', '2017-02-06 04:24:37'),
(36, 58, 194, 'technical_pic', '2017-02-06 04:24:37'),
(36, 58, 170, 'scm_pic', '2017-02-06 04:24:37'),
(36, 58, 171, 'scm_pic', '2017-02-06 04:24:37'),
(36, 58, 182, 'operation_pic', '2017-02-06 04:24:37'),
(36, 58, 191, 'operation_pic', '2017-02-06 04:24:37'),
(36, 58, 178, 'emergency_contact', '2017-02-06 04:24:37'),
(36, 58, 186, 'emergency_contact', '2017-02-06 04:24:37'),
(36, 58, 176, 'dpa_cso', '2017-02-06 04:24:37'),
(36, 58, 186, 'dpa_cso', '2017-02-06 04:24:37'),
(36, 58, 163, 'crewing_pic', '2017-02-06 04:24:37'),
(36, 58, 165, 'crewing_pic', '2017-02-06 04:24:37'),
(38, 28, 106, 'operation_pic', '2017-02-08 07:11:44'),
(34, 92, 192, 'technical_pic', '2017-02-08 11:00:25'),
(34, 92, 194, 'technical_pic', '2017-02-08 11:00:25'),
(34, 92, 170, 'scm_pic', '2017-02-08 11:00:25'),
(34, 92, 172, 'scm_pic', '2017-02-08 11:00:25'),
(34, 92, 187, 'operation_pic', '2017-02-08 11:00:25'),
(34, 92, 188, 'operation_pic', '2017-02-08 11:00:25'),
(34, 92, 178, 'emergency_contact', '2017-02-08 11:00:25'),
(34, 92, 186, 'emergency_contact', '2017-02-08 11:00:25'),
(34, 92, 176, 'dpa_cso', '2017-02-08 11:00:25'),
(34, 92, 186, 'dpa_cso', '2017-02-08 11:00:25'),
(34, 92, 163, 'crewing_pic', '2017-02-08 11:00:25'),
(34, 92, 165, 'crewing_pic', '2017-02-08 11:00:25'),
(34, 26, 108, 'technical_pic', '2017-02-08 11:04:21'),
(34, 26, 106, 'operation_pic', '2017-02-08 11:04:21'),
(45, 10, 49, 'operation_pic', '2017-02-12 22:10:13'),
(31, 159, 60, 'operation_pic', '2017-02-25 02:06:20'),
(31, 159, 119, 'operation_pic', '2017-02-25 02:06:20'),
(34, 59, 196, 'technical_pic', '2017-03-02 22:01:53'),
(34, 59, 197, 'technical_pic', '2017-03-02 22:01:53'),
(34, 59, 173, 'scm_pic', '2017-03-02 22:01:53'),
(34, 59, 189, 'scm_pic', '2017-03-02 22:01:53'),
(34, 59, 184, 'operation_pic', '2017-03-02 22:01:53'),
(34, 59, 179, 'emergency_contact', '2017-03-02 22:01:53'),
(34, 59, 176, 'dpa_cso', '2017-03-02 22:01:53'),
(34, 59, 186, 'dpa_cso', '2017-03-02 22:01:53'),
(34, 59, 164, 'crewing_pic', '2017-03-02 22:01:53'),
(34, 59, 167, 'crewing_pic', '2017-03-02 22:01:53');

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
(3, 'ASEAN- INDONESIA', 'active', '2017-01-06 11:12:05', '2017-03-01 14:23:10', 5),
(11, 'GROUP', 'active', '2017-01-12 22:09:08', '2017-03-01 14:23:10', 1),
(12, 'PTLL - BATAM', 'active', '2017-01-12 22:09:21', '2017-03-01 14:23:10', 11),
(13, 'MIDDLE EAST ', 'active', '2017-01-16 20:58:28', '2017-03-01 14:23:10', 4),
(16, 'ASEAN- BRUNEI', 'active', '2017-01-19 21:00:50', '2017-03-01 14:23:10', 9),
(17, 'THAILAND- UWO', 'active', '2017-01-19 21:01:18', '2017-03-01 14:23:10', 10),
(18, 'EOS- ROW', 'active', '2017-01-19 21:01:52', '2017-03-01 14:23:10', 7),
(19, 'SVS', 'active', '2017-01-19 21:02:16', '2017-03-01 14:23:10', 8),
(20, 'ASEAN- MALAYSIA', 'active', '2017-01-19 21:03:01', '2017-03-01 14:23:11', 12),
(21, 'AUSTRALIA', 'active', '2017-01-23 04:12:17', '2017-03-01 14:23:10', 6),
(22, 'INDIA', 'active', '2017-02-08 02:42:38', '2017-03-01 14:23:10', 2),
(23, 'LUCKNOW', 'inactive', '2017-02-09 03:30:59', '2017-03-01 14:23:10', 3),
(28, 'TEST GROUP1', 'active', '2017-03-01 00:54:30', '2017-03-01 14:24:35', 1);

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
(1, 'GROUP NAME 1', 'GROUP NAME 1', 'active', '2017-01-06 11:36:21', '0000-00-00 00:00:00'),
(2, 'GROUP NAME 2', 'GROUP NAME 2', 'active', '2017-01-06 11:36:35', '0000-00-00 00:00:00'),
(3, 'KMC SYSTEM ADMIN', 'KMC PERSONNEL ARE THE SYSTEM CONTROLLERS AND HAVE FULL ACCESS RIGHTS TO  ALL SECTIONS', 'active', '2017-01-06 11:36:46', '2017-02-02 19:46:12'),
(4, 'VESSEL GENERAL USER', 'NL', 'active', '2017-02-02 19:55:47', '0000-00-00 00:00:00'),
(5, 'SINGSYS TESTING', 'SINGSYS TESTING', 'active', '2017-02-06 00:08:01', '0000-00-00 00:00:00'),
(6, 'GENERAL USER', 'NORMAL USER', 'active', '2017-02-24 23:42:31', '0000-00-00 00:00:00'),
(7, 'SVS GENERAL USER', 'X', 'active', '2017-03-02 19:22:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_group_region_entity`
--

CREATE TABLE `meo_group_region_entity` (
  `id_region` int(11) UNSIGNED NOT NULL,
  `id_entity` int(11) UNSIGNED NOT NULL,
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

INSERT INTO `meo_group_region_entity` (`id_region`, `id_entity`, `region_title`, `id_group_bu`, `status`, `added_on`, `updated_on`, `group_region_order`) VALUES
(26, 1, 'INDONESIA', 3, 'active', '2017-01-06 11:15:26', '2017-05-22 16:14:27', 1),
(29, 1, 'SINGAPORE ', 11, 'active', '2017-01-12 22:13:25', '2017-05-22 16:14:26', 1),
(30, 1, 'MALAYSIA', 20, 'active', '2017-01-12 22:13:35', '2017-05-22 16:14:27', 1),
(31, 1, 'BRUNEI', 16, 'active', '2017-01-12 22:13:46', '2017-05-22 16:14:27', 1),
(34, 1, 'SPECIALISED VESSEL SERVICES (SVS)', 19, 'active', '2017-01-16 20:33:31', '2017-05-22 16:14:27', 1),
(35, 1, 'AUSTRALIA', 21, 'active', '2017-01-16 20:48:17', '2017-05-22 16:14:27', 1),
(36, 1, 'MIDDLE EAST  - DUBAI, UAE', 13, 'active', '2017-01-16 20:59:39', '2017-05-22 16:14:27', 1),
(55, 1, 'MIDDLE EAST - QATAR', 13, 'active', '2017-01-19 04:01:08', '2017-05-22 16:14:27', 2),
(58, 1, 'EOS', 18, 'active', '2017-01-19 04:24:54', '2017-05-22 16:14:27', 2),
(59, 1, 'MIDDLE EAST - SAUDI', 13, 'active', '2017-01-19 20:38:58', '2017-05-22 16:14:27', 3),
(61, 1, 'THAILAND - SATTAHIP', 17, 'active', '2017-01-26 02:38:30', '2017-05-22 16:14:27', 2),
(62, 1, 'THAILAND - SONGKHLA', 17, 'active', '2017-01-26 03:14:44', '2017-05-22 16:14:27', 1),
(63, 1, 'ROW- AUSTRALIA', 18, 'active', '2017-01-31 22:31:36', '2017-05-22 16:14:27', 1),
(64, 1, 'ROW- OTHERS', 18, 'active', '2017-01-31 22:32:37', '2017-05-22 16:14:27', 3),
(65, 1, 'LUCKNOW', 22, 'active', '2017-02-08 02:42:52', '2017-05-22 16:14:27', 1),
(67, 1, 'East', 23, 'active', '2017-02-09 03:44:15', '2017-05-22 16:14:27', 1),
(68, 1, 'TESTING PROCESS', 22, 'active', '2017-02-09 05:22:14', '2017-05-22 16:14:27', 2);

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
(9, 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no'),
(10, 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no'),
(12, 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes');

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
(9, 3, 'active', '2017-02-10 07:34:05', 'ADMIN', '2017-02-13 13:35:26', 'ADMIN'),
(10, 1, 'active', '2017-02-15 04:28:02', 'ADMIN', '0000-00-00 00:00:00', ''),
(12, 4, 'active', '2017-02-17 08:12:05', 'ADMIN', '0000-00-00 00:00:00', '');

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
(4, 3, 'active', '2017-01-06 12:19:30', '2017-02-22 11:12:52'),
(5, 4, 'active', '2017-02-02 19:56:02', '2017-02-22 11:13:40'),
(6, 5, 'active', '2017-02-21 22:34:37', '2017-02-22 12:13:14'),
(7, 6, 'active', '2017-02-24 23:43:03', '0000-00-00 00:00:00'),
(8, 7, 'active', '2017-05-19 04:52:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_mailroom_build_form_approvers_entity`
--

CREATE TABLE `meo_mailroom_build_form_approvers_entity` (
  `id_build_form` int(11) UNSIGNED NOT NULL,
  `id_approvers` varchar(180) NOT NULL,
  `approval_matrix` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_mailroom_build_form_approvers_entity`
--

INSERT INTO `meo_mailroom_build_form_approvers_entity` (`id_build_form`, `id_approvers`, `approval_matrix`) VALUES
(1, '10,28', '099335f8119054e1111dc097b385cf15.png'),
(14, '2,1', 'ca22a3ee6bf95558dd1f43dfa96888ae.jpg'),
(15, '1,1', '282c335f072b7dd367e19f38d3701579.jpg');

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

--
-- Dumping data for table `meo_mailroom_build_form_entity`
--

INSERT INTO `meo_mailroom_build_form_entity` (`id_build_form`, `form_title`, `form_description`, `id_department`, `form_type`, `status_form`, `added_on`, `added_by`, `added_by_id`, `updated_on`, `updated_by`, `updated_by_id`, `attached_form`) VALUES
(1, 'TESTESTT', 'TESTESTEST', 29, 'new', 'submit', '2017-02-22 00:23:35', 'ADMIN', 1, '0000-00-00 00:00:00', '', 0, '64716e7e432df80503332df9113e485d.png'),
(14, 'TRAVEL REQUEST FORM', 'THIS FORM SHALL BE COMPLETED AND APPROVED PRIOR TO BOOKING OF FLIGHT AND ACCOMMODATION.', 8, 'travel_request', 'submit', '2017-03-27 11:57:07', 'ADMIN', 1, '0000-00-00 00:00:00', '', 0, 'c07660a6d29f3fe935943f7d2f09896a.xlsx'),
(15, 'CAPEX / VO', 'The objective  of this technique is to provide a sematic grouping form controls. This allows users to understand the relationship of the controls and interact with the form more quickly and effectively.', 7, 'capex_request', 'submit', '2017-03-27 11:58:50', 'ADMIN', 1, '0000-00-00 00:00:00', '', 0, '43cb70f05f14035732fc347f67f0f2a4.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `meo_mailroom_build_form_privacy_entity`
--

CREATE TABLE `meo_mailroom_build_form_privacy_entity` (
  `id_build_form` int(11) UNSIGNED NOT NULL,
  `privacy_type` enum('public','private') NOT NULL DEFAULT 'public',
  `private_ids` varchar(180) NOT NULL,
  `groups_ids` varchar(150) NOT NULL,
  `personnel_text` varchar(300) NOT NULL,
  `org_text` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_mailroom_build_form_privacy_entity`
--

INSERT INTO `meo_mailroom_build_form_privacy_entity` (`id_build_form`, `privacy_type`, `private_ids`, `groups_ids`, `personnel_text`, `org_text`) VALUES
(1, 'private', '11,13,15', '', '', ''),
(14, 'public', '', '', '', ''),
(15, 'private', '12,14,15,16', '', '', '');

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
(1, 'NEAR SHORE VESSELS', 'Active', '2017-01-06 13:50:31', '2017-01-16 12:55:55'),
(2, 'OFFSHORE SUPPORT VESSELS', 'Active', '2017-01-06 13:50:46', '2017-01-13 11:11:34'),
(3, 'CREWBOATS', 'Active', '2017-01-06 13:50:53', '2017-01-13 11:11:42'),
(5, 'BARGES', 'Active', '2017-01-12 21:42:00', '0000-00-00 00:00:00'),
(6, 'DP/ SUBSEA FLEET', 'Active', '2017-01-16 01:43:49', '0000-00-00 00:00:00'),
(8, 'MAIN', 'Active', '2017-02-09 04:43:15', '2017-02-09 18:13:27'),
(10, 'TESTING', 'Active', '2017-02-09 05:13:22', '0000-00-00 00:00:00');

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
(3, 'Mailroom', 'my-summary', 'active', 2, 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `meo_meoUsers_entity`
--

CREATE TABLE `meo_meoUsers_entity` (
  `id_meo_user` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
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
  `is_verified` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_vessel_verified` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_meoUsers_entity`
--

INSERT INTO `meo_meoUsers_entity` (`id_meo_user`, `user_id`, `emp_id`, `user_full_name`, `user_email`, `staff_client`, `designation`, `domain_id`, `directory`, `status`, `status_reason`, `image`, `mobile1`, `mobile2`, `desk_phone`, `extension`, `skype_id`, `notes`, `expiry_date`, `added_on`, `updated_on`, `updated_by`, `is_verified`, `is_vessel_verified`) VALUES
(11, 'E0003', '20', 'ONG CHEE WEE', 'CHEEWEE.ONG@MEOGROUP.COM', 'staff', 'PROJECT MANAGER', NULL, NULL, 'active', '', NULL, '+6594899378', '', '+6568296198', 217, 'ONG.CHEE.WEE', '', '0000-00-00', '2017-01-16 00:28:29', '2017-01-24 20:44:19', 'ADMIN', 'no', 'no'),
(12, 'E0007', '21', 'RHYAN DELOS REYES SABRIDO', 'RHYAN.SABRIDO@MEOGROUP.COM', 'staff', 'ASST. MANAGER - PROJECT', NULL, NULL, 'active', '', NULL, '+6591079243 ', '', '+6568296112', 305, 'RHYAN.SABRIDO', '', '0000-00-00', '2017-01-16 00:32:30', '2017-01-24 20:44:28', 'ADMIN', 'no', 'no'),
(13, 'E0008', '22', 'COLIN DAVID TREWHELLA', 'COLIN.TREWHELLA@MEOGROUP.COM', 'staff', 'GM - OPERATIONS', NULL, NULL, 'active', '', NULL, '+6591083046', '', '+6568296192', 546, 'COLTRE1', '', '0000-00-00', '2017-01-16 00:41:58', '2017-01-24 20:44:45', 'ADMIN', 'no', 'no'),
(14, 'E0001', '19', 'MARK PETER VAN DER MOLEN', 'MARK.VANDERMOLEN@MEOGROUP.COM', 'staff', 'GM - COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6594899377', '', '+6568296196', 550, 'MARKVANDERMOLEN.WORK', '', '0000-00-00', '2017-01-16 00:43:31', '2017-01-24 20:44:55', 'ADMIN', 'no', 'no'),
(15, 'E0010', '23', 'NG WEI LING CANDICE', 'CANDICE.NG@MEOGROUP.COM', 'staff', 'GENERAL MANAGER - COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6581396428', '', '+6568296185', 543, 'CANDICENGWL', '', '0000-00-00', '2017-01-16 00:44:35', '2017-01-24 20:45:05', 'ADMIN', 'no', 'no'),
(16, 'E0013', '24', 'CLAUDIA IGLESIAS CARRICHES', 'CLAUDIA.IGLESIAS@MEOGROUP.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6590624095', '', '+6568296124', 104, '', '', '0000-00-00', '2017-01-16 00:46:50', '2017-01-24 20:45:15', 'ADMIN', 'no', 'no'),
(17, 'E0016', '26', 'MARICAR ZOLETA MANLAPAZ', 'MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM', 'staff', 'DOCUMENT CONTROLLER', NULL, NULL, 'active', '', NULL, '+6581130605', '', '+6568296033', 553, 'MARICAR ZOLETA1', '', '0000-00-00', '2017-01-16 00:50:35', '2017-01-24 20:45:23', 'ADMIN', 'no', 'no'),
(18, 'E0022', '28', 'SUNIL SINGH', 'SUNIL.SINGH@MEOGROUP.COM', 'staff', 'MARINE OPERATIONS MANAGER', NULL, NULL, 'active', '', NULL, '+6581230486', '', '+6568296197', 545, 'SINGHSUNIL4', '', '0000-00-00', '2017-01-16 00:51:55', '2017-01-24 20:46:04', 'ADMIN', 'no', 'no'),
(19, 'E0026', '30', 'NATALIE WEICHMANN', 'NATALIE.WEICHMANN@MEOGROUP.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '', '', '+6568296168', 503, 'NATALIE.WEICHMANN', '', '0000-00-00', '2017-01-16 00:53:04', '2017-01-24 20:45:49', 'ADMIN', 'no', 'no'),
(20, 'E0031', '33', 'GOH TING TING', 'TINGTING.GOH@MEOGROUP.COM', 'staff', 'JUNIOR SECRETARY', NULL, NULL, 'active', '', NULL, '', '', '+6568299887', 107, '', '', '0000-00-00', '2017-01-16 00:57:20', '2017-01-24 20:46:15', 'ADMIN', 'no', 'no'),
(21, 'E0032', '34', 'CAHYA AWAL', 'CAHYA.AWAL@MEOGROUP.COM', 'staff', 'SENIOR COST CONTROLLER', NULL, NULL, 'active', '', NULL, '+6597728018', '', '+6568296149', 510, 'CAHYA.AWAL', '', '0000-00-00', '2017-01-16 00:58:39', '2017-01-24 20:46:25', 'ADMIN', 'no', 'no'),
(22, 'E0033', '35', 'EUGENE TEO YU-CHNG', 'EUGENE.TEO@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER - COMMERCIAL', NULL, NULL, 'active', '', NULL, '', '', '+6568296188', 537, '', '', '0000-00-00', '2017-01-16 00:59:57', '2017-01-19 16:56:57', 'ADMIN', 'no', 'no'),
(23, 'S00001', '121', 'TAN HEE HUA', 'HEE-HUA.TAN@MEOGROUP.COM', 'staff', 'TECHNICAL MANAGER (CREWBOAT)', NULL, NULL, 'active', '', NULL, '+6590095643', '', '+6568296111', 216, '', '', '0000-00-00', '2017-01-16 01:01:14', '2017-01-19 15:28:00', 'ADMIN', 'no', 'no'),
(24, 'S00004', '123', 'POH CHING HOON', 'CHING-HOON.POH@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296165', 518, 'CHINGHOON88', '', '0000-00-00', '2017-01-16 01:03:33', '2017-01-19 16:10:00', 'ADMIN', 'no', 'no'),
(25, 'S00036', '128', 'JOYCELYN WONG PUI YEE', 'JOYCELYN.WONG@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296166', 635, '', '', '0000-00-00', '2017-01-16 01:05:31', '2017-01-19 16:18:47', 'ADMIN', 'no', 'no'),
(26, 'S00058', '129', 'MOHAMED ARIS BIN MUSA', 'MOHD.ARIS@MEOGROUP.COM', 'staff', 'SENIOR CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6591019562', '', '+6568296103', 610, '', '', '0000-00-00', '2017-01-16 01:07:21', '2017-01-19 15:36:48', 'ADMIN', 'no', 'no'),
(27, 'S00110', '132', 'JANE ALLAN', 'JANE.ALLAN@MEOGROUP.COM', 'staff', 'GENERAL COUNSEL – GROUP', NULL, NULL, 'active', '', NULL, '+6594888633', '', '+6568296130', 221, 'JANE.ALLAN.MEO', '', '0000-00-00', '2017-01-16 01:10:55', '2017-01-19 16:30:24', 'ADMIN', 'no', 'no'),
(28, 'S00112', '133', 'ADAM RALEIGH CLAYTON', 'ADAM.CLAYTON@MEOGROUP.COM', 'staff', 'HEAD OF BUSINESS UNIT – SVS', NULL, NULL, 'active', '', NULL, '+6582985155', '', '+6568296122', 204, 'ADAMCLAYTO', '', '0000-00-00', '2017-01-16 01:14:59', '2017-01-19 16:40:29', 'ADMIN', 'no', 'no'),
(29, 'S00134', '135', 'HONG SHUMIN', 'SHUMIN.HONG@MEOGROUP.COM', 'staff', 'REGIONAL FINANCE BUSINESS PARTNERSHIP MANAGER, THAI-ASEAN AND SV', NULL, NULL, 'active', '', NULL, '+6591803063', '', '+6568296159', 519, 'SHUMIN.MICLYN', '', '0000-00-00', '2017-01-16 01:18:42', '2017-01-19 15:49:18', 'ADMIN', 'no', 'no'),
(30, 'S00150', '137', 'NORAZLINA BINTE SANIN', 'NORAZLINA.SANIN@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6591186005', '', '+6568296135', 613, '', '', '0000-00-00', '2017-01-16 01:20:03', '2017-01-19 15:37:24', 'ADMIN', 'no', 'no'),
(31, 'S00157', '138', 'LINA BINTE SOHO', 'LINA.SOHO@MEOGROUP.COM', 'staff', 'MANAGER - OPERATIONS', NULL, NULL, 'active', '', NULL, '+6594899322', '', '+6568296147', 527, 'LINASOHO.MEO', '', '0000-00-00', '2017-01-16 01:21:24', '2017-01-19 16:46:16', 'ADMIN', 'no', 'no'),
(32, '963', '7', 'ARINDAM1', 'BHARATRAJ+11@SINGSYS.COM', 'staff', 'PM', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 07:52:55', '0000-00-00 00:00:00', '', 'no', 'no'),
(33, 'S00168', '141', 'LAI CHEE YONG', 'CHEEYONG.LAI@MEOGROUP.COM', 'staff', 'SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6597344022', '', '+6568296143', 617, 'CHEEYONG.LAI@OUTLOOK.COM', '', '0000-00-00', '2017-01-16 22:07:47', '2017-01-19 15:20:49', 'ADMIN', 'no', 'no'),
(34, 'S00178', '142', 'DOYLE CHAVEZ FIGUERAS', 'DOYLE.FIGUERAS@MEOGROUP.COM', 'staff', 'NAVAL ARCHITECT', NULL, NULL, 'active', '', NULL, '+6582011486', '', '+6568296142', 524, 'DOYLE.FIGUERAS', '', '0000-00-00', '2017-01-16 22:08:35', '2017-01-19 15:29:40', 'ADMIN', 'no', 'no'),
(35, 'S00189', '144', 'AU PEI KWAN', 'PEIKWAN.AU@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296160', 633, 'PEIKWAN.AU', '', '0000-00-00', '2017-01-16 22:10:15', '2017-01-19 16:19:21', 'ADMIN', 'no', 'no'),
(36, 'S00193', '145', 'LIM BENG HWEE', 'BENGHWEE.LIM@MEOGROUP.COM', 'staff', 'MANAGER, ENTERPRISE RISK MANAGEMENT', NULL, NULL, 'active', '', NULL, '+6597724652', '', '+6568296029', 540, 'BENGHWEELIM', '', '0000-00-00', '2017-01-16 22:12:03', '2017-01-19 16:34:36', 'ADMIN', 'no', 'no'),
(37, 'S00197', '146', 'CHRISTOPHER WHITE', 'CHRISTOPHER.WHITE@MEOGROUP.COM', 'staff', 'ACTING GROUP FINANCIAL CONTROLLER', NULL, NULL, 'active', '', NULL, ' +6598366788 ', '', '+6568296032', 551, 'CHRIS.WHITE.MEO', '', '0000-00-00', '2017-01-16 22:12:37', '2017-01-19 15:48:28', 'ADMIN', 'no', 'no'),
(38, 'S00203', '147', 'IAN JESTER ERAS REYES', 'IAN.REYES@MEOGROUP.COM', 'staff', 'NAVAL ARCHITECT', NULL, NULL, 'active', '', NULL, '+6591079242', '', '+6568296139', 209, 'IAN_JESTER_REYES', '', '0000-00-00', '2017-01-16 22:13:26', '2017-01-19 15:33:16', 'ADMIN', 'no', 'no'),
(39, 'S00234', '152', 'ONG PEI LING, WENDY', 'WENDY.ONG@MEOGROUP.COM', 'staff', 'CREW PAYROLL EXECUTIVE - HR', NULL, NULL, 'active', '', NULL, '', '', '+6568296132', 615, '', '', '0000-00-00', '2017-01-16 22:15:55', '2017-01-19 15:36:07', 'ADMIN', 'no', 'no'),
(40, 'S00239', '153', 'VERNON LOW CHUN HWEE', 'VERNON.LOW@MEOGROUP.COM', 'staff', 'MANAGER - HSQE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 22:16:35', '0000-00-00 00:00:00', '', 'no', 'no'),
(41, 'S00240', '154', 'MUHAMMAD ADDY FHAIRUZ FERNANDEZ', 'ADDY.FERNANDEZ@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, '+6598006304', '', '+6568296127', 222, 'FHAIRUZ.FERNANDEZ', '', '0000-00-00', '2017-01-16 22:18:29', '2017-01-19 16:47:06', 'ADMIN', 'no', 'no'),
(42, 'S00247', '157', 'CHEN YING LEI', 'CHEN.YINGLEI@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE - CREWING', NULL, NULL, 'active', '', NULL, '+6581134569', '', '+6568296105', 609, '', '', '0000-00-00', '2017-01-16 22:20:57', '2017-01-19 15:38:15', 'ADMIN', 'no', 'no'),
(43, 'S00269', '160', 'DEREK LO SHEN LEONG', 'DEREK.LO@MEOGROUP.COM', 'staff', 'REGIONAL FINANCE MANAGER ( MIDDLE EAST) - FINANCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-16 22:22:23', '0000-00-00 00:00:00', '', 'no', 'no'),
(44, 'S00278', '161', 'ONG BOON SENG', 'BOONSENG.ONG@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER – HSQE', NULL, NULL, 'active', '', NULL, '+6590087537', '', '+6568299879', 116, '', '', '0000-00-00', '2017-01-16 22:24:36', '2017-01-19 15:16:54', 'ADMIN', 'no', 'no'),
(45, 'S00283', '163', 'FOONG LAI LENG, LINDY', 'LINDY.FOONG@MEOGROUP.COM', 'staff', 'EXECUTIVE - DOCUMENT CONTROL HSQE', NULL, NULL, 'active', '', NULL, '', '', '+6568296136', 513, 'LINDY.FOONG', '', '0000-00-00', '2017-01-16 22:40:58', '2017-01-19 15:18:16', 'ADMIN', 'no', 'no'),
(46, 'S00291', '165', 'WEE HANQUN', 'HANQUN.WEE@MEOGROUP.COM', 'staff', 'LEGAL COUNSEL - LEGAL', NULL, NULL, 'active', '', NULL, '+6597727705', '', '+6568299882', 223, 'WEE.HANQUN', '', '0000-00-00', '2017-01-16 22:45:58', '2017-01-19 16:32:36', 'ADMIN', 'no', 'no'),
(47, 'S00296', '166', 'LALITHA NAIR', 'LALITHA.NAIR@MEOROUP.COM', 'staff', 'CERDIT CONTROLLER - FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296031', 302, '', '', '0000-00-00', '2017-01-16 22:48:17', '2017-01-19 16:11:01', 'ADMIN', 'no', 'no'),
(48, 'S00317', '170', 'BURHANUDDIN BIN MOHAMAD', 'BURHAN.MOHD@MEOGROUP.COM', 'staff', 'OPERATIONS SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, '+6598375901', '', '+6568296100', 108, '', '', '0000-00-00', '2017-01-16 22:50:58', '2017-01-19 16:50:11', 'ADMIN', 'no', 'no'),
(49, 'S00321', '172', 'VENKATRAMAN SHESHASHAYEE', 'VSHESH@MEOGROUP.COM', 'staff', 'CHIEF EXECUTIVE OFFICER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170303111258.png', '+6583993157', '', '+6568299877', 113, 'VSHESHASHAYEE', '', '0000-00-00', '2017-01-16 22:52:52', '2017-03-03 11:13:02', 'ADMIN', 'no', 'no'),
(50, 'S00322', '173', 'CHONG SIN KEONG', 'SINKEONG.CHONG@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, '+6597720958', '', '+6568299884', 213, 'SKCHONG33', '', '0000-00-00', '2017-01-16 22:53:32', '2017-01-19 16:48:09', 'ADMIN', 'no', 'no'),
(51, 'S00327', '174', 'ANKUSH AGARWAL', 'ANKUSH.AGARWAL@MEOGROUP.COM', 'staff', 'DEPUTY HEAD - ASEAN', NULL, NULL, 'active', '', NULL, '+6597881889', '', '+6568296144', 504, 'ANKUSHAGARWAL1111', '', '0000-00-00', '2017-01-16 22:57:44', '2017-02-03 10:03:37', 'ADMIN', 'no', 'no'),
(52, 'S00328', '175', 'LIM CHEE HOE', 'CHEEHOE.LIM@MEOGROUP.COM', 'staff', 'PROGRAMMER - FLEET PLANNED MAINTENANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296100', 622, 'MEO_CHEEHOE.LIM', '', '0000-00-00', '2017-01-16 22:58:29', '2017-01-19 15:27:16', 'ADMIN', 'no', 'no'),
(53, 'S00329', '176', 'NORRASHIDAH BINTE MOHAMED', 'NORRASHIDAH.MOHAMED@MEOGROUP.COM', 'staff', 'RECEPTIONIST CUM ADMIN ASSISTANT - ADMIN', NULL, NULL, 'active', '', NULL, '', '', '+6568296100', 555, 'NORRA.MOHD', '', '0000-00-00', '2017-01-16 22:59:35', '2017-01-19 16:35:48', 'ADMIN', 'no', 'no'),
(54, 'S00339', '182', 'SATHISVARAN CHIDAMBARAM', 'SATHIS.CHIDAMBARAM@MEOGROUP.COM', 'staff', 'IT EXECUTIVE - IT', NULL, NULL, 'active', '', NULL, '+6592703082', '', '+6568299874', 632, 'SATHIS.CHIDAMBARAM', '', '0000-00-00', '2017-01-16 23:01:14', '2017-01-19 17:11:02', 'ADMIN', 'no', 'no'),
(55, 'S00341', '183', 'XIE ZIHUI', 'ZIHUI.XIE@MEOGROUP.COM', 'staff', 'GL ACCOUNTANT - FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296163', 516, '', '', '0000-00-00', '2017-01-16 23:02:32', '2017-01-19 15:50:55', 'ADMIN', 'no', 'no'),
(56, 'S00343', '184', 'INDRANIL MAJUMDAR', 'INDRANIL.MAJUMDAR@MEOGROUP.COM', 'staff', 'ACTING CHIEF OPERATING OFFICER (COO)', NULL, NULL, 'active', '', NULL, '+6591836988', '', '+6568296137', 381, '', '', '0000-00-00', '2017-01-16 23:03:06', '2017-01-19 15:01:07', 'ADMIN', 'no', 'no'),
(57, 'S00349', '187', 'MILI  VERMA', 'MILI.VERMA@MEOGROUP.COM', 'staff', 'GROUP COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '', '', '+6568296020', 206, '', '', '0000-00-00', '2017-01-16 23:09:22', '2017-02-03 10:04:41', 'ADMIN', 'no', 'no'),
(58, 'S00357', '190', 'CAREEN CHENG ', 'CAREEN.CHENG@MEOGROUP.COM', 'staff', 'ASSISTANT HR MANAGER - HR', NULL, NULL, 'active', '', NULL, '+6596269053', '', '+6568299870', 218, '', '', '0000-00-00', '2017-01-16 23:11:15', '2017-01-19 15:12:45', 'ADMIN', 'no', 'no'),
(60, 'S00358', '191', 'REKHA NANDWANI', 'REKHA.NANDWANI@MEOGROUP.COM', 'staff', 'TESTK', NULL, NULL, 'active', '', '', '', '', '+6568296157', 511, '', '', '0000-00-00', '2017-01-16 23:13:51', '2017-02-24 17:29:35', 'ADMIN', 'no', 'no'),
(61, 'S00362', '194', 'SHREYAS CHANDRAKANTHA RAO', 'SHREYAS.RAO@MEOGROUP.COM', 'staff', 'MANAGEMENT TRAINEE - KNOWLEDGE MGMT ', NULL, NULL, 'active', '', NULL, '', '', '+6568296113', 174, '', '', '0000-00-00', '2017-01-16 23:17:30', '2017-01-19 16:39:29', 'ADMIN', 'no', 'no'),
(62, 'S00363', '195', 'VERA ONG ', 'VERA.ONG@MEOGROUP.COM', 'staff', 'ASSISTANT HR MANAGER - TALENT MANAGEMENT', NULL, NULL, 'active', '', NULL, '+6596269116', '', '+6568296026', 388, '', '', '0000-00-00', '2017-01-17 00:42:01', '2017-01-19 15:14:37', 'ADMIN', 'no', 'no'),
(63, 'S00365', '196', 'TAN LEA JOO', 'LEA.JOO@MEOGROUP.COM', 'staff', 'FINANCE MANAGER - ASEAN  (ASEAN FINANCE BIZ PARTNERSHIP)', NULL, NULL, 'active', '', NULL, '', '', '+6568296014', 508, 'LEA.JOO', '', '0000-00-00', '2017-01-17 00:42:57', '2017-01-19 15:50:25', 'ADMIN', 'no', 'no'),
(64, 'S00366', '197', 'SANDRA  JERNIGAN', 'SANDRA.JERNIGAN@MEOGROUP.COM', 'staff', 'ASEAN BUSINESS UNIT, ASSISTANT MANAGER - CREWING', NULL, NULL, 'active', '', NULL, '+6596269032', '', '+6568296012', 608, '', '', '0000-00-00', '2017-01-17 00:43:49', '2017-01-19 15:35:40', 'ADMIN', 'no', 'no'),
(65, 'S00367', '198', 'LIM HUI SHAN', 'HUISHAN.LIM@MEOGROUP.COM', 'staff', 'KNOWLEDGE ADMINISTRATOR - KMC', NULL, NULL, 'active', '', NULL, '', '', '+6568296177', 533, '', '', '0000-00-00', '2017-01-17 00:44:55', '2017-02-10 17:35:00', 'ADMIN', 'no', 'no'),
(66, 'S00368', '199', 'NICHOLAS SEET', 'NICHOLAS.SEET@MEOGROUP.COM', 'staff', 'COMMERCIAL MANAGER - ASEAN BU', NULL, NULL, 'active', '', NULL, '+6596788005', '', '+6568296109', 176, '', '', '0000-00-00', '2017-01-17 00:50:13', '2017-02-03 10:04:25', 'ADMIN', 'no', 'no'),
(67, 'S00373', '200', 'LIM LI JU', 'LIJU.LIM@MEOGROUP.COM', 'staff', 'GL  ACCOUNTANT - FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296110', 165, '', '', '0000-00-00', '2017-01-17 00:51:12', '2017-01-19 15:51:24', 'ADMIN', 'no', 'no'),
(68, 'S00375', '201', 'HEMA  MANOHARAN', 'HEMA.MANOHARAN@MEOGROUP.COM', 'staff', 'AR EXECUTIVE - GROUP FINANCE', NULL, NULL, 'active', '', NULL, '', '', '+6568296018', 178, '', '', '0000-00-00', '2017-01-17 00:51:56', '2017-01-19 16:11:47', 'ADMIN', 'no', 'no'),
(69, 'S00377', '202', ' ARNOLD SILAO', 'ARNOLD.SILAO@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE  - SCM', NULL, NULL, 'active', '', NULL, '', '', '+6568296119', 208, '', '', '0000-00-00', '2017-01-17 00:53:04', '2017-01-19 15:43:48', 'ADMIN', 'no', 'no'),
(70, 'S00378', '203', 'AKAASH GANESH', 'AKAASH.GANESH@MEOGROUP.COM', 'staff', 'MANAGEMENT ASSOCIATE - TECHNICAL & OPERATIONS', NULL, NULL, 'active', '', NULL, '', '', '+6568296189', 383, '', '', '0000-00-00', '2017-01-17 00:53:40', '2017-01-19 15:30:12', 'ADMIN', 'no', 'no'),
(71, 'S00379', '204', 'LEE WEI JIE', 'WEIJIE.LEE@MEOGROUP.COM', 'staff', 'MANAGEMENT ASSOCIATE - COMMERCIAL', NULL, NULL, 'active', '', NULL, '', '', '+6568296021', 548, '', '', '0000-00-00', '2017-01-17 00:59:43', '2017-01-19 16:58:17', 'ADMIN', 'no', 'no'),
(72, 'S00382', '206', 'ABHIJIT DESHMUKH', 'ABHIJIT.DESHMUKH@MEOGROUP.COM', 'staff', 'HEAD - GROUP SCM', NULL, NULL, 'active', '', NULL, '+6583400650', '', '+6568296173', 523, 'DESH70', '', '0000-00-00', '2017-01-17 01:01:02', '2017-01-19 15:41:36', 'ADMIN', 'no', 'no'),
(73, 'S00383', '207', 'SOPHIE TAN JIA HUI ', 'SOPHIE.TAN@MEOGROUP.COM', 'staff', 'SENIOR HR EXECUTIVE - TALENT MANAGEMENT', NULL, NULL, 'active', '', NULL, '', '', '+6568296171', 531, '', '', '0000-00-00', '2017-01-17 01:01:44', '2017-01-19 15:15:01', 'ADMIN', 'no', 'no'),
(74, 'S00384', '208', 'HUZAIFA', 'HUZAIFA@MEOGROUP.COM', 'staff', 'SVS BUSINESS UNIT, MANAGER - CREWING', NULL, NULL, 'active', '', NULL, '+6591187437', '', '+6568296019', 620, '', '', '0000-00-00', '2017-01-17 01:02:20', '2017-01-19 15:35:10', 'ADMIN', 'no', 'no'),
(75, 'S00387', '211', 'LEE SHIN HUAY', 'SHINHUAY.LEE@MEOGROUP.COM', 'staff', 'TAX MANAGER - GROUP LEGAL', NULL, NULL, 'active', '', NULL, '', '', '+6568296190', 525, '', '', '0000-00-00', '2017-01-17 01:09:26', '2017-01-19 16:31:27', 'ADMIN', 'no', 'no'),
(76, 'S00389', '213', 'SANKET ASHOK SHUKLA', 'SANKET.SHUKLA@MEOGROUP.COM', 'staff', 'MANAGER - HSQE', NULL, NULL, 'active', '', NULL, '+6596267294', '', '+6568296191', 539, '', '', '0000-00-00', '2017-01-17 01:11:19', '2017-01-19 15:19:04', 'ADMIN', 'no', 'no'),
(77, 'S00390', '214', 'KEN LIVINGSTONE', 'KEN.LIVINGSTONE@MEOGROUP.COM', 'staff', 'SENIOR MANAGER – TECHNICAL AND OPERATIONS, SVS', NULL, NULL, 'active', '', NULL, '+6596619355', '', '+6568299880', 115, '', '', '0000-00-00', '2017-01-17 01:12:30', '2017-01-19 16:45:17', 'ADMIN', 'no', 'no'),
(78, 'S00392', '215', 'JOYCE LIM ', 'JOYCE.LIM@MEOGROUP.COM', 'staff', 'SENIOR PURCHASING EXECUTIVE - SCM', NULL, NULL, 'active', '', NULL, '', '', '+6568296028', 106, '', '', '0000-00-00', '2017-01-17 01:13:09', '2017-01-19 15:42:22', 'ADMIN', 'no', 'no'),
(79, 'S00393', '216', 'CHAN HUI PENG', 'HUIPENG.CHAN@MEOGROUP.COM', 'staff', 'TEAM LEAD (GENERAL LEDGER) - FINANCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-17 01:13:51', '0000-00-00 00:00:00', '', 'no', 'no'),
(80, 'S00394', '217', 'LEONG SOOK MEI', 'SOOKMEI.LEONG@MEOGROUP.COM', 'staff', 'ACCOUNTANT  (CONSOLIDATION & REPORTING) - FINANCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-17 01:15:17', '0000-00-00 00:00:00', '', 'no', 'no'),
(81, 'S00395', '218', 'FARRUKH SHOAIB QURESHI', 'FARRUKH.QURESHI@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT - SVS', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-17 01:16:04', '0000-00-00 00:00:00', '', 'no', 'no'),
(82, 'T00078', '252', 'JYNETTE LOWIS ', 'JYNETTE.LOWIS@MEOGROUP.COM', 'staff', 'DATA ADMINISTRATOR - KMC', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-17 01:16:47', '0000-00-00 00:00:00', '', 'no', 'no'),
(83, 'S00026', '127', 'ALI HUSSAIN', 'ALI.HUSSAIN@MEOGROUP.COM', 'staff', 'ASST. OPERATIONS MANAGER - OPS', NULL, NULL, 'active', '', NULL, '+6583220197', '', '+6568296114', 507, 'ALIHUSSAIN3', '', '0000-00-00', '2017-01-17 01:18:13', '2017-01-19 15:29:12', 'ADMIN', 'no', 'no'),
(84, 'S00316', '169', 'MATHANRAJ VEERASAMY', 'MATHANRAJ.VEERASAMY@MEOGROUP.COM', 'staff', 'SAP BUSINESS ANALYST - IT', NULL, NULL, 'active', '', NULL, '', '', '+6568296179', 640, 'YEERA1231', '', '0000-00-00', '2017-01-17 01:19:12', '2017-01-19 17:12:10', 'ADMIN', 'no', 'no'),
(85, 'S00319', '171', 'KISHORE SEGAR', 'KISHORE.SEGAR@MEOGROUP.COM', 'staff', 'SAP, ABAP DEVELOPER - IT', NULL, NULL, 'active', '', NULL, '', '', '+6568299886', 642, 'KISHOREARKS', '', '0000-00-00', '2017-01-17 01:21:31', '2017-01-19 17:11:31', 'ADMIN', 'no', 'no'),
(86, 'S00355', '189', 'BHARANI KUMAR PALAKODETI', 'KUMAR.PAL@MEOGROUP.COM', 'staff', 'MANAGER - TECHNICAL ( ASEAN)', NULL, NULL, 'active', '', NULL, '+6581284396', '', '+6568296154', 538, 'PB.KUMAR7', '', '0000-00-00', '2017-01-17 01:22:38', '2017-01-19 15:28:34', 'ADMIN', 'no', 'no'),
(87, 'S00352', '188', 'CLAYTON HOSANNA', 'CLAYTON.HOSANNA@MEOGROUP.COM', 'staff', 'EXECUTIVE - FOTC', NULL, NULL, 'active', '', NULL, '+6597313357', '', '+6568296169', 177, '', '', '0000-00-00', '2017-01-17 01:23:25', '2017-01-19 15:17:45', 'ADMIN', 'no', 'no'),
(88, '1', '1', 'DIEDERIK DE BOER', 'DIEDERIK.DEBOER@MEOGROUP.COM', 'staff', 'EXECUTIVE DIRECTOR', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170126092835.png', '+6596173794', '', '+6568296161', 502, 'DIEDERIK.DEBOER', '', '0000-00-00', '2017-01-17 01:50:11', '2017-01-26 09:28:38', 'ADMIN', 'no', 'no'),
(89, 'E0015', '25', 'CRIS RYAN INDIG ENTERA', 'CRIS.RYAN@MEOGROUP.COM', 'staff', 'SUPERINTENDENT - TECHNICAL', NULL, NULL, 'active', '', NULL, '+6590623987', '', '+6568299876', 105, 'CRIS.RYAN.WORK', '', '0000-00-00', '2017-01-17 01:57:23', '2017-01-19 17:01:16', 'ADMIN', 'no', 'no'),
(90, 'E0030', '32', 'JED IGOT', 'JED.IGOT@MEOGROUP.COM', 'staff', 'NAVAL ARCHITECT', NULL, NULL, 'active', '', NULL, '', '', '+6568296133', 212, 'JEDIGOT.WK', '', '0000-00-00', '2017-01-17 02:01:03', '2017-01-19 17:02:22', 'ADMIN', 'no', 'no'),
(92, 'S00290', '164', 'JOAN LAW', 'JOAN.LAW@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER, IT INFRASTRUCTURE', NULL, NULL, 'active', '', NULL, '+6596585538', '', '+6568299881', 636, '', '', '0000-00-00', '2017-01-17 02:19:38', '2017-01-19 17:10:05', 'ADMIN', 'no', 'no'),
(93, 'S00161', '139', 'EBEN TAN ', 'EBEN.TAN@MEOGROUP.COM', 'staff', 'HEAD - GROUP OPERATIONS', NULL, NULL, 'active', '', NULL, '+6594899368', '', '+6568296146', 225, 'EBEN.TAN', '', '0000-00-00', '2017-01-17 02:25:07', '2017-01-19 15:31:19', 'ADMIN', 'no', 'no'),
(94, 'S00331', '177', 'JOSHUA LAM KHIAN KOK', 'JOSHUA.LAM@MEOGROUP.COM', 'staff', 'SAP BUSINESS ANALYST', NULL, NULL, 'active', '', NULL, '', '', '+6568296158', 641, 'JLKK23', '', '0000-00-00', '2017-01-17 03:03:36', '2017-01-19 17:10:36', 'ADMIN', 'no', 'no'),
(95, 'S00334', '179', 'NYEIN CHAN AUNG', 'AUNG.NYEINCHAN@MEOGROUP.COM', 'staff', 'TECHNICAL MANAGER – ELECTRICAL & AUTOMATION', NULL, NULL, 'active', '', NULL, '+6590110420', '', '+6568296108', 202, 'AUNG.NYEINCHANAUNG', '', '0000-00-00', '2017-01-17 03:08:08', '2017-01-19 15:32:23', 'ADMIN', 'no', 'no'),
(96, 'S00337', '181', 'KELLY ZHANG JING', 'KELLY.ZHANG@MEOGROUP.COM', 'staff', 'TEAM LEAD - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296167', 517, 'KELLY.ZHANG163', '', '0000-00-00', '2017-01-17 03:16:07', '2017-01-19 16:22:06', 'ADMIN', 'no', 'no'),
(98, 'S00025', '126', 'RYAN JIANG', 'HAIBO.JIANG@MEOGROUP.COM', 'staff', 'MANAGER, FPM', NULL, NULL, 'active', '', NULL, '+6583180829', '', '+6568296013', 605, 'MEO.RYAN', '', '0000-00-00', '2017-01-17 03:21:45', '2017-01-19 15:20:22', 'ADMIN', 'no', 'no'),
(99, 'S00081', '130', 'ELAINE CHUAH', 'ELAINE.CHUAH@MEOGROUP.COM', 'staff', 'MANAGER - (ROVING FLEET)', NULL, NULL, 'active', '', NULL, '+6590086568', '', '+6568296129', 220, '', '', '0000-00-00', '2017-01-17 03:23:35', '2017-01-19 15:32:49', 'ADMIN', 'no', 'no'),
(100, 'S00204', '148', 'CHRISTINA LING', 'CHRISTINA.LING@MEOGROUP.COM', 'staff', 'SENIOR PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6581274373', '', '+6568296138', 380, 'CHRISTINA.LING81', '', '0000-00-00', '2017-01-17 03:26:13', '2017-01-19 15:45:22', 'ADMIN', 'no', 'no'),
(101, 'S00207', '150', 'ELIZABETH WONG', 'ELIZABETH.WONG@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER, CONSOLIDATION AND REPORTING', NULL, NULL, 'active', '', NULL, '', '', '+6568296035', 554, 'ELIZABETH.WONG.Q', '', '0000-00-00', '2017-01-17 03:30:01', '2017-01-19 16:21:02', 'ADMIN', 'no', 'no'),
(102, 'E0028', '31', 'SHAWN WONG', 'SHAWN.WONG@MEOGROUP.COM', 'staff', 'PROJECT COORDINATOR', NULL, NULL, 'active', '', NULL, '+6583389869', '', '+6568296011', 304, '', '', '0000-00-00', '2017-01-17 03:36:08', '2017-01-19 17:03:27', 'ADMIN', 'no', 'no'),
(103, 'S00211', '151', 'ALEZS WONG', 'ALEZS.WONG@MEOGROUP.COM', 'staff', 'HEAD - GROUP CREWING ', NULL, NULL, 'active', '', NULL, '+6584985883', '', '+6568296038', 601, 'ALEZS.WONG', '', '0000-00-00', '2017-01-17 03:37:35', '2017-01-19 15:38:41', 'ADMIN', 'no', 'no'),
(104, 'S00007', '124', 'JANICE TENG ', 'JANICE.TENG@MEOGROUP.COM', 'staff', 'TEAM LEAD  - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296151', 631, 'MEO.JANICETENG', '', '0000-00-00', '2017-01-17 03:50:05', '2017-01-19 16:27:07', 'ADMIN', 'no', 'no'),
(105, 'S00014', '125', 'DARREN ANG', 'DARREN.ANG@MEOGROUP.COM', 'staff', 'CHIEF MARKETING OFFICER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170126092653.png', '+6590095837', '', '+6568296118', 201, 'ANG.DARREN1', '', '0000-00-00', '2017-01-17 04:02:25', '2017-01-26 09:26:57', 'ADMIN', 'no', 'no'),
(106, '225', '5', 'BHARATRAJ', 'BHARATRAJ+2@SINGSYS.COM', 'staff', 'QUALITY CONTROL ENGINEER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170208204927.png', '988643959', '', '', 2147483647, '', 'TESTING', '0000-00-00', '2017-01-17 04:04:07', '2017-02-22 16:39:50', 'ADMIN', 'no', 'no'),
(107, 'S00241', '155', 'ELAINE TAY', 'ELAINE.TAY@MEOGROUP.COM', 'staff', 'SENIOR ADMIN ASSISTANT', NULL, NULL, 'active', '', NULL, '', '', '+6568296025', 387, 'ELAINE.TAY32', '', '0000-00-00', '2017-01-17 04:08:11', '2017-01-19 16:37:03', 'ADMIN', 'no', 'no'),
(108, '296', '6', 'BHARATRAJ MEO USER', 'BHARATRAJ@SINGSYS.COM', 'staff', 'QCE', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170209135036.png', '7459923323', '', '', 91, 'BHARATRAJ.SINGSYS', 'VERIFYING MEO-CONTACT WEB', '2020-02-14', '2017-01-17 04:08:16', '2017-02-09 16:44:08', 'ADMIN', 'no', 'no'),
(109, 'S00297', '167', 'ALIS KHOO ', 'ALIS.KHOO@MEOGROUP.COM', 'staff', 'SENIOR EXECUTIVE - AR', NULL, NULL, 'active', '', NULL, '', '', '+6568296140', 226, 'KHOOALIS', '', '0000-00-00', '2017-01-17 04:10:25', '2017-01-19 16:23:55', 'ADMIN', 'no', 'no'),
(110, 'S00253', '158', 'KAMMY TAN', 'KAMMY.TAN@MEOGROUP.COM', 'staff', 'SENIOR PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6591543996', '', '+6568296170', 535, 'KAMMY.TAN12', '', '0000-00-00', '2017-01-17 04:12:34', '2017-01-19 15:46:18', 'ADMIN', 'no', 'no'),
(111, 'S00242', '156', 'JAMES LIM', 'JAMES.LIM@MEOGROUP.COM', 'staff', 'SCM MANAGER', NULL, NULL, 'active', '', NULL, '+6596346783', '', '+6568296115', 205, '', '', '0000-00-00', '2017-01-17 04:13:47', '2017-01-19 15:44:52', 'ADMIN', 'no', 'no'),
(112, 'S00263', '159', 'LEON LIM', 'LEON.LIM@MEOGROUP.COM', 'staff', 'ANALYST, FPM', NULL, NULL, 'active', '', NULL, '+6596783195', '', '+6568299871', 618, 'MEO_LEONLIM', '', '0000-00-00', '2017-01-17 04:15:58', '2017-01-19 15:21:39', 'ADMIN', 'no', 'no'),
(113, 'S00180', '143', 'LEWIS LOW', 'LEWIS.LOW@MEOGROUP.COM', 'staff', 'MANAGER, IT SAP & INFRASTRUCTURE', NULL, NULL, 'active', '', NULL, '+6582011563', '', '+6568299872', 603, 'LEWIS.LOW', '', '0000-00-00', '2017-01-17 04:17:49', '2017-01-19 17:09:38', 'ADMIN', 'no', 'no'),
(114, 'S00205', '149', 'KENNETH LEE', 'KENNETH.LEE@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '', '', '+6568296176', 530, '', '', '0000-00-00', '2017-01-17 04:18:57', '2017-01-19 15:46:53', 'ADMIN', 'no', 'no'),
(115, 'S00282', '162', 'GLADYS CHUA', 'GLADYS.CHUA@MEOGROUP.COM', 'staff', 'ACCOUNTANT - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296022', 306, 'GLADYS.CHUA99', '', '0000-00-00', '2017-01-17 04:20:10', '2017-01-19 16:23:22', 'ADMIN', 'no', 'no'),
(116, 'S00335', '180', 'BELINDA LI', 'BELINDA.LI@MEOGROUP.COM', 'staff', 'FINANCIAL ANALYST', NULL, NULL, 'active', '', NULL, '', '', '+6568296184', 557, 'LIBAOYI_BELINDA@HOTMAIL.COM', '', '0000-00-00', '2017-01-17 04:25:35', '2017-01-19 16:21:36', 'ADMIN', 'no', 'no'),
(117, 'S00104', '131', 'JAMIE LEE', 'JAMIE.LEE@MEOGROUP.COM', 'staff', 'CORPORATE SECRETARIAT MANAGER', NULL, NULL, 'active', '', NULL, '', '', '+6568296181', 528, 'JAMIELEEMEO', '', '0000-00-00', '2017-01-17 19:47:14', '2017-01-19 16:33:32', 'ADMIN', 'no', 'no'),
(118, 'S00133', '134', 'AMELIA NG', 'AMELIA.NG@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AP', NULL, NULL, 'active', '', NULL, '', '', '+6568296187', 630, 'MEO.AMERIA.NG', '', '0000-00-00', '2017-01-17 19:48:46', '2017-01-19 16:28:14', 'ADMIN', 'no', 'no'),
(119, 'S00148', '136', 'JOVY CHAY', 'JOVY.CHAY@MEOGROUP.COM', 'staff', 'MANAGER - KNOWLEDGE MANAGEMENT', 'JOVY.CHAY', 'MEO.LOCAL', 'active', '', 'uploads/shoreProfile/20170225131129.png', '+6591886220', '', '+6568296125', 214, 'JOVY.CHAY', 'TEST', '0000-00-00', '2017-01-17 19:51:03', '2017-03-16 11:32:07', 'JOVY CHAY', 'no', 'no'),
(120, 'S00347', '185', 'DARREN YEOH', 'DARREN.YEOH@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER, BPI', NULL, NULL, 'active', '', NULL, '+6596269201', '', '+6568296017', 231, '', '', '0000-00-00', '2017-01-17 20:03:41', '2017-01-19 15:19:36', 'ADMIN', 'no', 'no'),
(121, 'S00361', '193', 'EDWIN CHANG YONG QUAN', 'YONGQUAN.CHANG@MEOGROUP.COM', 'staff', 'INVENTORY ANALYST', NULL, NULL, 'active', '', NULL, '', '', '+6568296145', 350, '', '', '0000-00-00', '2017-01-17 20:05:08', '2017-01-19 15:47:40', 'ADMIN', 'no', 'no'),
(122, 'S00385', '209', 'BAY SOO PENG', 'SOOPENG.BAY@MEOGROUP.COM ', 'staff', 'ACCOUNTANT - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296183', 534, '', '', '0000-00-00', '2017-01-17 20:08:58', '2017-01-19 16:22:46', 'ADMIN', 'no', 'no'),
(123, 'S00386', '210', 'CHLOE NG', 'CHLOE.NG@MEOGROUP.COM', 'staff', 'FINANCE EXECUTIVE - AR', NULL, NULL, 'active', '', NULL, '', '', '+6568296123', 542, '', '', '0000-00-00', '2017-01-17 20:11:24', '2017-01-19 16:24:26', 'ADMIN', 'no', 'no'),
(124, 'S00388', '212', 'EUNICE TAN', 'EUNICE.TAN@MEOGROUP.COM', 'staff', 'HR EXECUTIVE - TALENT MANAGEMENT', NULL, NULL, 'active', '', '', '', '', '+6568296155', 301, '', '', '0000-00-00', '2017-01-17 20:12:53', '2017-02-22 15:48:19', 'ADMIN', 'no', 'no'),
(125, 'S00002', '122', 'ERIK TING', 'ERIK.TING@MEOGROUP.COM', 'staff', 'TECHNICAL CONSULTANT', NULL, NULL, 'active', '', NULL, '+6591279029', '', '+6568296102', 203, '', '', '0000-00-00', '2017-01-17 20:18:05', '2017-01-19 15:31:51', 'ADMIN', 'no', 'no'),
(126, 'E0025', '29', 'LIM JUNRONG', 'JUNRONG.LIM@MEOGROUP.COM', 'staff', 'SUPERINTENDENT - TECHNICAL (PROJECTS)', NULL, NULL, 'active', '', NULL, '+6581130553', '', '+6568296107', 210, 'LIM.JUNRONG', '', '0000-00-00', '2017-01-17 20:28:58', '2017-01-19 17:04:10', 'ADMIN', 'no', 'no'),
(127, 'S00360', '192', 'LEE PEI ZHEN', 'PEIZHEN.LEE@MEOGROUP.COM', 'staff', 'HR EXECUTIVE - OPERATIONS & SERVICES', NULL, NULL, 'active', '', NULL, '', '', '+6568296172', 211, '', '', '0000-00-00', '2017-01-17 20:32:06', '2017-01-19 15:15:35', 'ADMIN', 'no', 'no'),
(128, 'S00348', '186', 'JOSEPHINE LEE', 'JOSEPHINE.LEE@MEOGROUP.COM', 'staff', 'GROUP TREASURER', NULL, NULL, 'active', '', NULL, '', '', '+6568299878', 114, '', '', '0000-00-00', '2017-01-17 20:35:53', '2017-01-19 16:19:59', 'ADMIN', 'no', 'no'),
(129, 'S00165', '140', 'DEREK KOH', 'DEREK.KOH@MEOGROUP.COM', 'staff', 'CHIEF FINANCIAL OFFICER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170303111123.png', '+6591859427', '', '+6568296156', 509, 'DEREKTHKOH', '', '0000-00-00', '2017-01-17 20:39:17', '2017-03-03 11:11:28', 'ADMIN', 'no', 'no'),
(130, 'S00380', '205', 'ELAINE LAU', 'ELAINE.LAU@MEOGROUP.COM', 'staff', 'ACCOUNTANT - GL', NULL, NULL, 'active', '', NULL, '', '', '+6568296162', 515, '', '', '0000-00-00', '2017-01-17 20:58:42', '2017-01-19 16:29:03', 'ADMIN', 'no', 'no'),
(131, 'BN002', '11', 'LEONARD WONG ', 'LEONARD.WONG@MEOGROUP.COM', 'staff', 'GENERAL MANAGER', NULL, NULL, 'active', '', NULL, '+6737236336', '', '+6733347737', 0, 'LEONARD.WONGCL', '', '0000-00-00', '2017-01-18 00:42:17', '2017-01-18 14:30:19', 'ADMIN', 'no', 'no'),
(132, 'BN004', '13', 'BELINDA WONG', 'BELINDA.WONG@MEOGROUP.COM', 'staff', 'ADMINISTRATIVE EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6738758028', '', '+6733347773', 0, 'BELINDA53881', '', '0000-00-00', '2017-01-18 00:43:25', '2017-01-18 14:32:50', 'ADMIN', 'no', 'no'),
(133, 'BN008', '15', 'KOK WEI KONG', 'WEIKONG.KOK@MEOGROUP.COM', 'staff', 'WEIKONG.KOK@MEOGROUP.COM', NULL, NULL, 'active', '', NULL, '+6738737086', '', '+6733347767', 0, 'KOKKONG50', '', '0000-00-00', '2017-01-18 00:44:15', '2017-01-18 14:35:28', 'ADMIN', 'no', 'no'),
(134, 'BN003', '12', 'SHAFIQ ABDULLAH ', 'SHAFIQ.ABDULLAH@MEOGROUP.COM', 'staff', 'OPERATIONS SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+6737299786', '', '+6733347767', 0, 'MUHAMMAD SHAFIQ ABDULLAH', '', '0000-00-00', '2017-01-18 00:45:11', '2017-01-18 14:36:11', 'ADMIN', 'no', 'no'),
(135, 'BN011', '17', 'ARDY  BAKAR', 'ARDY.BAKAR@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6737298786', '', '+6733347757', 0, '', '', '0000-00-00', '2017-01-18 00:46:37', '2017-02-02 15:46:54', 'ADMIN', 'no', 'no'),
(136, 'BN010', '16', 'ALDON PETER YAPP ', 'ALDON.PETERYAPP@MEOGROUP.COM', 'staff', 'HSQE SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+6737297786', '', '+6733347727', 0, 'ALDONYAPP', '', '0000-00-00', '2017-01-18 00:47:13', '2017-01-18 14:31:40', 'ADMIN', 'no', 'no'),
(137, 'BN007', '14', 'KENNETH YONG', 'KENNETH.YONG@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6737293386', '', '+6733347774', 0, 'KENNETH.YONG2015', '', '0000-00-00', '2017-01-18 00:48:02', '2017-01-18 14:31:08', 'ADMIN', 'no', 'no'),
(138, 'M015', '43', 'CAPT. SASITHARAN ELUMALAI', 'SASITHARAN.ELUMALAI@MEOGROUP.COM', 'staff', 'OPERATIONS MANAGER, MALAYSIA', NULL, NULL, 'active', '', '', '+60109897196', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-18 01:09:34', '2017-01-26 09:33:43', 'ADMIN', 'no', 'no'),
(139, 'M014', '42', 'LETICIA LAIMAN INGAN', 'LETICIA.INGAN@MEOGROUP.COM', 'staff', 'HSQE  SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+60168545836', '', '', 0, '', '', '0000-00-00', '2017-01-18 01:11:13', '2017-01-18 14:57:08', 'ADMIN', 'no', 'no'),
(140, 'M010', '39', 'AWG FAREEZ SYIDDIQEN', 'AWG.FAREEZ@MEOGROUP.COM', 'staff', 'OPS SUPINTENDENT', NULL, NULL, 'active', '', NULL, '+60168857288', '', '+6085661103', 0, 'AWG.FAREEZ.MEO', '', '0000-00-00', '2017-01-18 01:13:24', '2017-01-18 14:59:02', 'ADMIN', 'no', 'no'),
(141, 'M012', '41', 'NURUL AIN KAMARUDDIN', 'NURULAIN@MEOGROUP.COM', 'staff', 'OPERATIONS SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-18 01:14:12', '2017-01-18 15:00:53', 'ADMIN', 'no', 'no'),
(142, 'M006', '37', 'SYED MUBARAK', 'SYED.MUBARAK@MEOGROUP.COM', 'staff', 'TECH SUPERTINTENDENT', NULL, NULL, 'active', '', NULL, '+60138040671 ', '', '+6085661103', 0, 'SYED.MUBARAKMEO', '', '0000-00-00', '2017-01-18 01:14:51', '2017-01-18 14:55:26', 'ADMIN', 'no', 'no'),
(143, 'M002', '36', 'AAN KUSNANDAR', 'AAN.KUSNANDAR@MEOGROUP.COM', 'staff', 'TECH SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+60178905877 ', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-18 01:15:37', '2017-01-18 14:56:02', 'ADMIN', 'no', 'no'),
(144, 'M007', '38', 'NAOMI GANI', 'NAOMI@MEOGROUP.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+60178022234', '', '+6085661103', 0, 'NAOMI8838', '', '0000-00-00', '2017-01-18 01:16:08', '2017-01-18 14:54:52', 'ADMIN', 'no', 'no'),
(145, 'M011', '40', 'HAZLAN HAMDAN', 'HAZLAN.HAMDAN@MEOGROUP.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+60128515373', '', '+6085661103', 0, '', '', '0000-00-00', '2017-01-18 01:16:50', '2017-01-18 14:54:17', 'ADMIN', 'no', 'no'),
(146, 'A000480', '9', 'DAVID NICHOLAS', 'DAVID.NICHOLAS@MEOGROUP.COM', 'staff', 'HSEQ MANAGER,  AUS', NULL, NULL, 'active', '', NULL, '+61477177716', '', '+61894359218', 0, 'DAVIDNICHOLAS23', '', '0000-00-00', '2017-01-18 01:33:04', '2017-01-18 15:09:50', 'ADMIN', 'no', 'no'),
(147, 'A000816', '10', 'SAM HUTCHINSON', 'SAMUEL.HUTCHINSON@MEOGROUP.COM', 'staff', 'COMMERCIAL & OPERATIONS MANAGER', NULL, NULL, 'active', '', NULL, '+61417868400', '', '+61894359231', 0, '', '', '0000-00-00', '2017-01-18 01:33:37', '2017-02-02 14:35:50', 'ADMIN', 'no', 'no'),
(148, 'A000342', '8', 'VALERIE PRENTICE ', 'VALERIE.PRENTICE@MEOGROUP.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', '', '+61439293999 ', '', '+61894359201', 123, 'ELLIEANDVALERIE', '', '0000-00-00', '2017-01-18 01:34:07', '2017-02-06 16:20:56', 'ADMIN', 'no', 'no'),
(150, 'ME00108', '106', 'DENIS WELCH', 'DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HEAD OF BUSINESS UNIT - MIDDLE EAST ', NULL, NULL, 'active', '', NULL, '+971561911444', '', '', 0, '', '', '0000-00-00', '2017-01-18 02:18:37', '2017-01-19 09:50:49', 'ADMIN', 'no', 'no'),
(151, 'ME00066', '78', 'RIK KREUNEN', 'RIK.KREUNEN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'BUSINESS DEVELOPMENT MANAGER', NULL, NULL, 'active', '', NULL, '+971506408818', '', '', 0, 'RASMANIS78', '', '0000-00-00', '2017-01-18 02:20:03', '2017-01-19 10:56:36', 'ADMIN', 'no', 'no'),
(152, 'ME00099', '97', 'MUKUND RAJAMANI ', 'MUKUND.RAJAMNI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'COMMERCIAL MANAGER ', NULL, NULL, 'active', '', NULL, '+971561719000', '', '', 0, 'MUKUNDRAJAMANI.WORK', '', '0000-00-00', '2017-01-18 02:22:06', '2017-01-19 10:57:10', 'ADMIN', 'no', 'no'),
(153, 'ME00100', '98', 'ANGELA EMATA BAYRON ', 'ANGELA.BAYRON@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'COMMERCIAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971565775980', '', '', 0, '', '', '0000-00-00', '2017-01-18 02:24:19', '2017-01-19 10:57:49', 'ADMIN', 'no', 'no'),
(154, 'ME00111', '109', 'DEREK LO ', 'DEREK.LO@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'REGIONAL FINANCE MANAGER', NULL, NULL, 'active', '', NULL, '+971565096954', '', '', 0, 'DEKBO88', '', '0000-00-00', '2017-01-18 02:26:17', '2017-01-19 10:52:12', 'ADMIN', 'no', 'no'),
(155, 'ME00083', '86', 'SANDESH GOPAL PALAN ', 'SANDESH.PALAN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT FINANCE MANAGER ', NULL, NULL, 'active', '', NULL, '+971501866955', '', '', 0, 'REACHSANDESHPALAN', '', '0000-00-00', '2017-01-18 02:28:27', '2017-01-19 10:52:41', 'ADMIN', 'no', 'no'),
(156, 'ME00076', '82', 'NITIN PUROHIT ', 'NITIN.PUROHIT@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT FINANCE MANAGER ', NULL, NULL, 'active', '', NULL, '+971504098047  ', '', '', 0, 'NITIN.PR19', '', '0000-00-00', '2017-01-18 02:30:21', '2017-02-01 12:34:56', 'ADMIN', 'no', 'no'),
(157, 'ME00058', '75', 'DEEPAK PANDEY ', 'DEEPAK.PANDEY@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, '+971562198878', '', '', 0, 'DEEPAK.PANDEY568', '', '0000-00-00', '2017-01-18 02:31:18', '2017-01-19 10:53:40', 'ADMIN', 'no', 'no'),
(158, 'ME00024', '58', 'ASHVITH AMIN', 'ASHVITH.AMIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, '+971566184192', '', '', 0, 'ASHVITH', '', '0000-00-00', '2017-01-18 02:32:35', '2017-01-19 10:54:06', 'ADMIN', 'no', 'no'),
(159, 'ME00084', '87', 'ABHILASH ', 'ABHILASH.H@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, '+971553725314', '', '', 0, 'ABHILASH1856', '', '0000-00-00', '2017-01-18 02:33:17', '2017-01-19 10:54:45', 'ADMIN', 'no', 'no'),
(160, 'ME00021', '55', 'SAMWAIL FOUAD', 'SAMWAIL.FOUAD@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PRO', NULL, NULL, 'active', '', NULL, '+971567527197', '', '', 0, 'SAMUELFOUAD', '', '0000-00-00', '2017-01-18 02:43:02', '2017-01-19 10:51:04', 'ADMIN', 'no', 'no'),
(161, 'ME00037', '64', 'TAHIR ABBAS', '-@MEOGROUP.COM', 'staff', 'DRIVER', NULL, NULL, 'active', '', NULL, '+971551437886', '', '', 0, '', '', '0000-00-00', '2017-01-18 02:45:45', '2017-01-19 10:51:35', 'ADMIN', 'no', 'no'),
(162, 'ME00092', '92', 'RABINDRA DASH ', 'RABINDRA.DASH@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING MANAGER ', NULL, NULL, 'active', '', NULL, '+971564804891 ', '', '', 0, 'RABINDRA.DASH41', '', '0000-00-00', '2017-01-18 02:46:43', '2017-01-19 10:44:08', 'ADMIN', 'no', 'no'),
(163, 'ME00060', '76', 'AISHA FERRER', 'AISHA.FERRER@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971566526815', '', '', 0, 'EMP.FLEET', '', '0000-00-00', '2017-01-18 02:47:54', '2017-01-19 10:44:45', 'ADMIN', 'no', 'no'),
(164, 'ME00071', '79', 'ANABEL BALINA', 'ANABEL.BALINA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971507083636', '', '', 0, 'ABEL_ANABEL', '', '0000-00-00', '2017-01-18 02:48:43', '2017-01-19 10:45:44', 'ADMIN', 'no', 'no'),
(165, 'ME00097', '96', 'ANNALYN BUATIS ', 'ANNALYN.BUATIS@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971508123426', '', '', 0, 'ANNALYN_BUATIS', '', '0000-00-00', '2017-01-18 02:49:50', '2017-01-19 10:46:43', 'ADMIN', 'no', 'no'),
(166, 'ME00095', '94', 'AVDHUT DHAYBAR', 'AVDHUT.DHAYBAR@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971504091241', '', '', 0, 'AVIDHAYBAR', '', '0000-00-00', '2017-01-18 02:51:16', '2017-01-19 10:47:11', 'ADMIN', 'no', 'no'),
(167, 'ME00022', '56', 'BISYRUN HASAN BASRI', 'BISYRUN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'CREWING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+966503691631', '', '', 0, 'BISYUN69.MICLYN', '', '0000-00-00', '2017-01-18 02:53:56', '2017-01-19 10:47:47', 'ADMIN', 'no', 'no'),
(168, 'ME00038', '65', 'ALI ESSA M AL OBAIDI', 'ALI.ALOBAIDI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SAUDIZATION COORDINATOR (KSA)', NULL, NULL, 'active', '', NULL, '+966554939421', '', '', 0, 'ALI.AL-OBAIDI', '', '0000-00-00', '2017-01-18 02:55:12', '2017-01-19 10:48:44', 'ADMIN', 'no', 'no'),
(169, 'ME00109', '107', 'IRY GENSON', 'IRY.GENSON@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SCM MANAGER', NULL, NULL, 'active', '', NULL, '+971544436403', '', '', 0, '', '', '0000-00-00', '2017-01-18 02:56:26', '2017-01-19 10:37:55', 'ADMIN', 'no', 'no'),
(170, 'ME00031', '62', 'SAVIO VAZ', 'SAVIO.VAZ@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971552720910 ', '', '', 0, 'SAVIO.VAZ25', '', '0000-00-00', '2017-01-18 02:57:07', '2017-01-19 10:38:34', 'ADMIN', 'no', 'no'),
(171, 'ME00079', '84', 'SUNITHA SHETTY', 'SUNITHA.SHETTY@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971501905164', '', '', 0, 'SUNITHASHETTY1312', '', '0000-00-00', '2017-01-18 02:57:50', '2017-01-19 10:40:01', 'ADMIN', 'no', 'no'),
(172, 'ME00110', '108', 'LIEZL FABIALA ', 'LIEZL.FABIALA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971568054060', '', '', 0, '', '', '0000-00-00', '2017-01-18 02:58:37', '2017-01-19 10:40:32', 'ADMIN', 'no', 'no'),
(173, 'ME00102', '100', 'LENIN LAMA ', 'LENIN.LAMA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971565775437', '', '', 0, '', '', '0000-00-00', '2017-01-18 02:59:23', '2017-01-19 10:41:00', 'ADMIN', 'no', 'no'),
(174, 'ME00106', '104', 'HUSSAIN ALGOBA ', 'HUSSAIN.ALGOBA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+966598000400', '', '', 0, 'HUSSAIN.ALGOBA', '', '0000-00-00', '2017-01-18 03:00:21', '2017-01-19 10:41:53', 'ADMIN', 'no', 'no'),
(175, 'ME00063', '77', 'SREENIVASAN NARAYANAN', '--@MEOGROUP.COM', 'staff', 'STORE KEEPER', NULL, NULL, 'active', '', NULL, '+971557348633', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:01:17', '2017-01-19 10:42:26', 'ADMIN', 'no', 'no'),
(176, 'ME00004', '47', 'ABDALLA ABUELGASIM', 'ABDALLA.ABUELGASIM@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HSQE MANAGER', NULL, NULL, 'active', '', NULL, '+971506508620', '', '', 0, 'ABDALLA.MEO', '', '0000-00-00', '2017-01-18 03:03:45', '2017-01-19 10:33:09', 'ADMIN', 'no', 'no'),
(177, 'ME00074', '81', 'SHERIF ABDELHAMID ', 'SHERIF.ABDELMONEM@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TRAINING MANAGER ', NULL, NULL, 'active', '', NULL, '+971504098051 ', '', '', 0, 'SHERIF.RASHWAN4', '', '0000-00-00', '2017-01-18 03:05:10', '2017-01-19 10:34:00', 'ADMIN', 'no', 'no'),
(178, 'ME00011', '50', 'JOSEPH GEORGE', 'JOSEPH.GEORGE@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT HSQE MANAGER', NULL, NULL, 'active', '', NULL, '+971505581776', '', '', 0, 'CAPT.GEOGEMEO', '', '0000-00-00', '2017-01-18 03:07:45', '2017-01-19 10:35:56', 'ADMIN', 'no', 'no'),
(179, 'ME00042', '67', 'RAMLI RASBI', 'RAMLI.RASBI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HSQE SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+971561541091', '', '', 0, 'RAMIL RASBI', '', '0000-00-00', '2017-01-18 03:08:39', '2017-01-19 10:36:37', 'ADMIN', 'no', 'no'),
(180, 'ME00050', '71', 'ANNA  LIZA CELLANO', 'ANNA.CELLANO@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HSQE EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971567614785', '', '', 0, 'ANNA.LIZA.CELLANO', '', '0000-00-00', '2017-01-18 03:09:28', '2017-01-19 10:37:12', 'ADMIN', 'no', 'no'),
(181, 'ME00101', '99', 'RAVINDER HOONJAN ', 'RAVINDER.HOONJAN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS MANAGER ', NULL, NULL, 'active', '', NULL, '+971561411888', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:15:43', '2017-01-19 10:16:07', 'ADMIN', 'no', 'no'),
(182, 'ME00090', '91', 'AAKAAR JAIN', 'AAKAAR.JAIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ASSISTANT OPERATIONS MANAGER ', NULL, NULL, 'active', '', NULL, '+971569399394', '', '', 0, 'AAKAAR.WORK', '', '0000-00-00', '2017-01-18 03:18:26', '2017-01-19 10:17:13', 'ADMIN', 'no', 'no'),
(183, 'ME00014', '52', 'SOKARNO ABDALLAH ', 'SOKARNO.ABDALLAH@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'BASE MANAGER KSA ', NULL, NULL, 'active', '', NULL, '+966505849492', '', '', 0, 'SOKARNO.ABDALLAH', '', '0000-00-00', '2017-01-18 03:32:10', '2017-01-19 10:17:48', 'ADMIN', 'no', 'no'),
(184, 'ME00089', '90', 'TAMER S.BALBOUL', 'TAMER.BALBOUL@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, '+966550819051 ', '', '', 0, 'TAMER.BALBOUL', '', '0000-00-00', '2017-01-18 03:35:22', '2017-01-19 10:19:44', 'ADMIN', 'no', 'no'),
(185, 'ME00025', '59', 'SALIM KAJIRU', 'SALIM.KAJIRU@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, '+966543204241', '', '', 0, 'SALIMAHMEDKAJIRU77', '', '0000-00-00', '2017-01-18 03:37:19', '2017-01-19 10:19:23', 'ADMIN', 'no', 'no'),
(186, 'ME00027', '60', 'ZOHAIR ABDELRAHIM', 'ZOHAIR.ELRAHIM@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, '+966507635505', '', '', 0, 'ZEZOHAIR', '', '0000-00-00', '2017-01-18 03:40:43', '2017-01-19 10:21:44', 'ADMIN', 'no', 'no'),
(187, 'ME00005', '48', 'PAUL OCCENOLA', 'PAUL.OCCENOLA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS SUPERVISOR', NULL, NULL, 'active', '', NULL, '+971509820189', '', '', 0, 'PAULOCCENOLA-OPS', '', '0000-00-00', '2017-01-18 03:46:05', '2017-01-19 10:23:21', 'ADMIN', 'no', 'no'),
(188, 'ME00104', '102', 'CHANDRASHEKAR VARMA ', 'CHANDRASHEKAR.VARMA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS EXECUTIVE ', NULL, NULL, 'active', '', NULL, '+971565096956', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:48:32', '2017-01-19 10:24:16', 'ADMIN', 'no', 'no'),
(189, 'ME00023', '57', 'JASIM HUSSAIN', 'JASSIM.HUSSAIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS ASSISTANT ', NULL, NULL, 'active', '', NULL, '+966506985463', '', '', 0, 'JASSIM.HUSSAIN', '', '0000-00-00', '2017-01-18 03:49:46', '2017-01-19 10:25:11', 'ADMIN', 'no', 'no'),
(190, 'ME00093', '93', 'BASEL KHWAIS', 'BASEL.KHWAIS@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PRO', NULL, NULL, 'active', '', NULL, '+971504098048', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:50:59', '2017-01-19 10:27:32', 'ADMIN', 'no', 'no'),
(191, 'ME00088', '89', 'CIRION CENOC ', 'CIRION.SENOC@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SENIOR OPERATIONS SUPERVISOR', NULL, NULL, 'active', '', NULL, '+97466718939 ', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:52:06', '2017-01-19 10:28:06', 'ADMIN', 'no', 'no'),
(192, 'ME00073', '80', 'HEMANTKUMAR PANCHAL ', 'HEMANT.PANCHAL@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SENIOR TECHNICAL SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971504098049', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:56:33', '2017-01-19 09:54:16', 'ADMIN', 'no', 'no'),
(193, 'ME00107', '105', 'VENKATESH ', 'VENKATESH.K@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971563529669', '', '', 0, '', '', '0000-00-00', '2017-01-18 03:57:22', '2017-01-19 09:54:48', 'ADMIN', 'no', 'no'),
(194, 'ME00048', '70', 'VIJAY CHATTE', 'VIJAY.CHATTE@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971544113735 ', '', '', 0, 'VIJAY.CHATTE', '', '0000-00-00', '2017-01-18 03:59:46', '2017-01-19 09:56:29', 'ADMIN', 'no', 'no'),
(195, 'ME00096', '95', 'ALABBAS MAHDI ', 'ALABBAS.MAHDI@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'PORT ENGINEER (SAUDI)) ', NULL, NULL, 'active', '', NULL, '+966507885668', '', '', 0, 'ALABBASMAHDI', '', '0000-00-00', '2017-01-18 04:00:46', '2017-01-19 09:56:55', 'ADMIN', 'no', 'no'),
(196, 'ME00082', '85', 'JOSE WILSON OTO', 'JOSE.WILSON@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT (SAUDI)', NULL, NULL, 'active', '', NULL, '+966535543205', '', '', 0, 'WILSON556011', '', '0000-00-00', '2017-01-18 04:01:31', '2017-01-19 09:56:10', 'ADMIN', 'no', 'no'),
(197, 'ME00013', '51', 'HISHAM  AHAMED', 'HISHAM.AHAMED@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL SUPERINTENDENT (SAUDI)', NULL, NULL, 'active', '', NULL, '+966501833294', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:02:12', '2017-01-19 09:57:22', 'ADMIN', 'no', 'no');
INSERT INTO `meo_meoUsers_entity` (`id_meo_user`, `user_id`, `emp_id`, `user_full_name`, `user_email`, `staff_client`, `designation`, `domain_id`, `directory`, `status`, `status_reason`, `image`, `mobile1`, `mobile2`, `desk_phone`, `extension`, `skype_id`, `notes`, `expiry_date`, `added_on`, `updated_on`, `updated_by`, `is_verified`, `is_vessel_verified`) VALUES
(198, 'ME00056', '74', 'YOGESH PATIL', 'YOGESH.PATIL@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SERVICE SUPERVISOR SUPERITENDENT', NULL, NULL, 'active', '', NULL, '+971503865963', '', '', 0, 'YOGESH.PATIL82', '', '0000-00-00', '2017-01-18 04:02:53', '2017-01-19 09:57:55', 'ADMIN', 'no', 'no'),
(199, 'ME00034', '63', 'PRADEEP KUMAR', '---@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+971502678113', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:04:13', '2017-01-19 10:01:40', 'ADMIN', 'no', 'no'),
(200, 'ME00003', '46', 'ANDREW AUGUSTIN WOOD', '----@MEOGROUP.COM', 'staff', 'MECHANIC (SAUDI)', NULL, NULL, 'active', '', NULL, '+966501857531', '', '', 0, 'ANDREW36614', '', '0000-00-00', '2017-01-18 04:05:51', '2017-01-19 10:02:24', 'ADMIN', 'no', 'no'),
(201, 'ME00001', '45', 'ROMEO DELA CRUZ GACHO', '------@MEOGROUP.COM', 'staff', 'AC TECHNICIAN', NULL, NULL, 'active', '', NULL, '+966502948321', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:06:28', '2017-01-19 10:03:46', 'ADMIN', 'no', 'no'),
(202, 'ME00046', '69', 'VIRGILIO TECSON TIRO', '-NA-@MEOGROUP.COM', 'staff', 'WELDER/ MECHANIC', NULL, NULL, 'active', '', NULL, '+966509163796', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:09:38', '2017-01-19 10:05:09', 'ADMIN', 'no', 'no'),
(203, 'ME00055', '73', 'ELNUR ABDULLAYEV', 'ELNUR@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ELECTRICAL ENGINEER SUPERINTENDENT ', NULL, NULL, 'active', '', NULL, '+971503865964', '', '', 0, 'ELNUR.ABDULAYEV', '', '0000-00-00', '2017-01-18 04:10:21', '2017-01-19 10:05:46', 'ADMIN', 'no', 'no'),
(204, 'ME00078', '83', 'MANJULA  SAMARAKOON', 'MANJULA.SAMARKOON@MEOGROUP.COM', 'staff', 'ELECTRONICS ENGINEER', NULL, NULL, 'active', '', NULL, '+971564804893 ', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:11:26', '2017-01-19 10:06:19', 'ADMIN', 'no', 'no'),
(205, 'ME00052', '72', 'ROBIN ISSAC', 'ROBIN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ELECTRONICS ENGINEER', NULL, NULL, 'active', '', NULL, '+971555171892', '', '', 0, 'RKISSAC85', '', '0000-00-00', '2017-01-18 04:12:08', '2017-01-19 10:07:03', 'ADMIN', 'no', 'no'),
(206, 'ME00105', '103', 'SAMAN PATHIRANA ', 'PATHIRANA@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'ELECTRONICS ENGINEER', NULL, NULL, 'active', '', NULL, '+971565096957', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:13:34', '2017-01-19 10:12:12', 'ADMIN', 'no', 'no'),
(207, 'ME00043', '68', 'JINKHIE GALLARZAN', 'JINKHIE.GALLARZAN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'SENIOR TECHNICAL ASSISTANT', NULL, NULL, 'active', '', NULL, '+971565096958', '', '', 0, 'MEO.TECHNICAL', '', '0000-00-00', '2017-01-18 04:14:02', '2017-01-19 10:14:05', 'ADMIN', 'no', 'no'),
(208, 'ME00103', '101', 'BAPUSO DINDE ', 'BAPUSO.DINDE@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'TECHNICAL ASSISTANT ', NULL, NULL, 'active', '', NULL, '+971565096955', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:14:44', '2017-01-19 10:14:33', 'ADMIN', 'no', 'no'),
(209, 'ME00040', '66', 'KHALID SAOUD A AL SHAMMARY', '-------@MEOGROUP.COM', 'staff', 'ADMIN ASSISTANT ', NULL, NULL, 'active', '', NULL, '+966532633776', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:16:01', '2017-01-19 09:51:45', 'ADMIN', 'no', 'no'),
(210, 'MEO020', '113', 'HASHIM AL SEFI', '------@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'DRIVER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-18 04:17:30', '0000-00-00 00:00:00', '', 'no', 'no'),
(211, 'ME00015', '53', 'ABDUL KADIR BUTHIYABURAYIL', '----@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HELPER ', NULL, NULL, 'active', '', NULL, '+966559271168', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:18:45', '2017-01-19 09:53:20', 'ADMIN', 'no', 'no'),
(212, 'ME00016', '54', 'THATHAMMA MOHAMMED MOOSA ', '---@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'HELPER', NULL, NULL, 'active', '', NULL, '+966503865054', '', '', 0, '', '', '0000-00-00', '2017-01-18 04:19:39', '2017-01-19 09:53:45', 'ADMIN', 'no', 'no'),
(213, 'ME00087', '88', 'MICHAEL SLY ', 'MICHAEL.SLY@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'EOS REGIONAL REPRESENTATIVE', NULL, NULL, 'active', '', NULL, '+971506381351', '', '', 0, 'MIKESLYEOS ', '', '0000-00-00', '2017-01-18 04:20:10', '2017-01-19 09:49:30', 'ADMIN', 'no', 'no'),
(214, 'ME00029', '61', 'SHIYAS NAZARUDEEN ', 'SHIYAS.NAZARUDEEN@MICLYNEXPRESSOFFSHORE.COM', 'staff', 'OPERATIONS EXECUTIVE', NULL, NULL, 'active', '', NULL, '+971505581779', '', '', 0, 'SHIYAS.NAZARUDEEN', '', '0000-00-00', '2017-01-18 04:20:44', '2017-01-19 09:50:06', 'ADMIN', 'no', 'no'),
(215, 'SGS001', '219', 'DIDI JAYA SAPUTRA', 'DIDI.SAPUTRA@SGS-OFFSHORE.COM', 'staff', 'DIRECTOR OF PT. SGS', NULL, NULL, 'active', '', NULL, '+6281510523372', '', '', 115, 'DIDI.SAPUTRA6', '', '0000-00-00', '2017-01-18 21:31:53', '2017-01-19 16:42:00', 'ADMIN', 'no', 'no'),
(216, 'E0020', '27', 'JOYCE TAN', 'JOYCE.TAN@MEOGROUP.COM', 'staff', 'ASSISTANT MANAGER - COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6598233900', '', '+6568296128', 219, '', '', '0000-00-00', '2017-01-18 21:43:19', '2017-01-19 17:06:02', 'ADMIN', 'no', 'no'),
(217, 'S00309', '168', 'FRANK TAM', 'FRANK.TAM@MEOGROUP.COM', 'staff', 'FPM TESTING OFFICER', NULL, NULL, 'active', '', NULL, '+6596793945', '', '+6568296100', 623, 'MR.FRANK_TAM', '', '0000-00-00', '2017-01-18 21:53:05', '2017-01-19 15:23:46', 'ADMIN', 'no', 'no'),
(218, 'S00332', '178', 'KEITH NG', 'KEITH.NG@MEOGROUP.COM', 'staff', 'MANAGER - COMMERCIAL (ASEAN)', NULL, NULL, 'active', '', NULL, '+6583220193', '', '+6568296101', 307, 'KEITH.NG1976', '', '0000-00-00', '2017-01-18 21:53:39', '2017-01-19 17:09:07', 'ADMIN', 'no', 'no'),
(219, 'SGS023', '231', 'ANGGARA MULIA', 'ANGGARA.MULIA@SGS-OFFSHORE.COM', 'staff', 'MARKETING MANAGER', NULL, NULL, 'active', '', NULL, '+62817101710', '+628118800896', '', 114, '', '', '0000-00-00', '2017-01-18 22:14:54', '2017-01-19 17:30:35', 'ADMIN', 'no', 'no'),
(220, 'SGS010', '224', 'VANESSA TALAVERA AQUINO', 'VANESSA.AQUINO@SGS-OFFSHORE.COM', 'staff', 'MARKETING SPECIALIST', NULL, NULL, 'active', '', NULL, '+6282147427446', '', '', 130, '', '', '0000-00-00', '2017-01-18 22:15:41', '2017-01-19 17:31:12', 'ADMIN', 'no', 'no'),
(221, 'SPS004', '236', 'YENNY IMELDA MARTHING', 'YENNY.MARTHING@SPS-OFFSHORE.COM', 'staff', 'CREWING MANAGER ', NULL, NULL, 'active', '', NULL, '+628119000907', '', '', 109, 'YENNY.MARTHING', '', '0000-00-00', '2017-01-18 22:16:20', '2017-01-19 17:26:41', 'ADMIN', 'no', 'no'),
(222, 'SPS010', '239', 'KUNTO WIBISONO', 'KUNTO.WIBISONO@SPS-OFFSHORE.COM', 'staff', 'CREWING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6285213203063', '', '', 105, '', '', '0000-00-00', '2017-01-18 22:16:54', '2017-01-19 17:27:43', 'ADMIN', 'no', 'no'),
(223, 'SGS024', '232', 'DODI SETIAGAMA', 'DODI.SETIAGAMA@SPS-OFFSHORE.COM', 'staff', 'CREWING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6281320983876', '', '', 106, '', '', '0000-00-00', '2017-01-18 22:20:10', '2017-01-19 17:28:47', 'ADMIN', 'no', 'no'),
(224, 'SPS008', '237', 'AGUS TRI ATMOJO', 'AGUS.ATMOJO@SPS-OFFSHORE.COM', 'staff', 'CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+6281316091221', '', '', 125, '', '', '0000-00-00', '2017-01-18 22:21:16', '2017-01-19 17:29:42', 'ADMIN', 'no', 'no'),
(225, 'SGS020', '230', 'DEDI SUPRIYADI', 'DEDI.SUPRIYADI@SGS-OFFSHORE.COM', 'staff', 'ACCOUNTING & FINANCE MANAGER', NULL, NULL, 'active', '', NULL, '+6281230477872', '', '', 110, 'SUPRIYADIDEDI1', '', '0000-00-00', '2017-01-18 22:21:48', '2017-01-19 17:15:23', 'ADMIN', 'no', 'no'),
(226, 'SPS002', '235', 'ADI MASTIN', 'ADI.MASTIN@SGS-OFFSHORE.COM', 'staff', 'ACCOUNTING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+6281808787968', '', '', 108, 'ADI.MAC82', '', '0000-00-00', '2017-01-18 22:22:29', '2017-01-19 17:16:03', 'ADMIN', 'no', 'no'),
(227, 'SGS014', '226', 'RIZKA NOMITURSILOJATI', 'RIZKA.NOMITURSILOJATI@SGS-OFFSHORE.COM', 'staff', 'ACCOUNTING SUPERVISOR', NULL, NULL, 'active', '', NULL, '+628568497187', '', '', 104, 'OMI.NOMI16', '', '0000-00-00', '2017-01-18 22:23:38', '2017-01-19 17:16:44', 'ADMIN', 'no', 'no'),
(228, 'NPP004', '120', 'DIAN UTAMI', 'DIAN.UTAMI@NPP-OFFSHORE.COM', 'staff', 'ACCOUNTING STAFF', NULL, NULL, 'active', '', NULL, '+628569933991', '', '', 132, 'DIANSRIU0911', '', '0000-00-00', '2017-01-18 22:24:45', '2017-01-19 17:18:57', 'ADMIN', 'no', 'no'),
(229, 'MEOS005', '116', 'ANDREW KESAULYA', 'ANDREW.KESAULYA@SGS-OFFSHORE.COM', 'staff', 'SINGAPORE ACCOUNTING FOR SAP - AP', NULL, NULL, 'active', '', NULL, '+628111461881', '', '', 121, 'ANDREW.KESAULYA', '', '0000-00-00', '2017-01-18 22:25:18', '2017-01-19 17:18:33', 'ADMIN', 'no', 'no'),
(230, 'SGS002', '220', 'NAHARADAM WIDJAJA', 'NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM', 'staff', 'FLEET MANAGER', NULL, NULL, 'active', '', NULL, '+62811171225', '', '', 145, 'ADAM.WIDJAYA', '', '0000-00-00', '2017-01-18 22:27:04', '2017-02-03 11:43:11', 'ADMIN', 'no', 'no'),
(231, 'SGS019', '229', 'ALPHARD OKA ARIFIN', 'ALPHARD.ARIFIN@SGS-OFFSHORE.COM', 'staff', 'OPERATION STAFF', NULL, NULL, 'active', '', NULL, '+628158215630', '', '', 142, '', '', '0000-00-00', '2017-01-18 22:30:46', '2017-01-19 14:39:35', 'ADMIN', 'no', 'no'),
(232, 'SGS016', '227', 'YULIANTORO', 'YULIANTORO@SGS-OFFSHORE.COM', 'staff', 'PORT ENGINEER', NULL, NULL, 'active', '', NULL, '+6281314331483', '', '', 128, '', '', '0000-00-00', '2017-01-18 22:31:57', '2017-01-19 14:40:10', 'ADMIN', 'no', 'no'),
(233, 'SGS018', '228', 'PAING WIDODO', 'PAING.WIDODO@SGS-OFFSHORE.COM', 'staff', 'TECHNICAL ASSISTANCE', NULL, NULL, 'active', '', NULL, '+628567349999', '', '', 112, 'D_ALFAYET', '', '0000-00-00', '2017-01-18 22:32:43', '2017-01-19 14:41:10', 'ADMIN', 'no', 'no'),
(234, 'SGS008', '223', 'AZIZ ARZIZAL', 'AZIZ.ARZIZAL@SGS-OFFSHORE.COM', 'staff', 'PURCHASING EXECUTIVE', NULL, NULL, 'active', '', NULL, '+62812808129', '', '', 129, 'AZIZ.SGS', '', '0000-00-00', '2017-01-18 22:33:16', '2017-01-19 14:38:01', 'ADMIN', 'no', 'no'),
(235, 'SPS025', '250', 'DEKY WERDOKO', 'DEKY.WERDOKO@SGS-OFFSHORE.COM', 'staff', 'TRAINING MANAGER', NULL, NULL, 'active', '', NULL, '+6281213149306', '', '', 138, 'DQ_WERDOKO', '', '0000-00-00', '2017-01-18 22:34:04', '2017-01-19 14:36:07', 'ADMIN', 'no', 'no'),
(236, 'SPS009', '238', 'ERNA RENSI NORA', 'EMA.RENSINORA@MEOGROUP.COM', 'staff', 'TRAINING ADMIN', NULL, NULL, 'active', '', NULL, '+6281375570252', '', '', 138, '', '', '0000-00-00', '2017-01-18 22:34:21', '2017-01-19 14:36:44', 'ADMIN', 'no', 'no'),
(237, 'SGS006', '222', 'RICKY KURNIAWAN', 'RICKY.KURNIAWAN@SGS-OFFSHORE.COM', 'staff', 'HSQE MANAGER', NULL, NULL, 'active', '', NULL, '+6283830902633', '', '', 107, '', '', '0000-00-00', '2017-01-18 22:34:46', '2017-01-19 14:34:03', 'ADMIN', 'no', 'no'),
(238, 'SGS011', '225', 'DANI GUNAWAN', 'DANI.GUNAWAN@SGS-OFFSHORE.COM', 'staff', 'HRD MANAGER', NULL, NULL, 'active', '', NULL, '+6281323611122', '', '', 149, 'DANI.GUNAWAN3', '', '0000-00-00', '2017-01-18 22:35:14', '2017-01-19 14:31:53', 'ADMIN', 'no', 'no'),
(239, 'SGS027', '233', 'LIA ANGGRAINY GINTING', 'LIA.GINTING@SPS-OFFSHORE.COM', 'staff', 'STAFF ADMINISTRATION', NULL, NULL, 'active', '', NULL, '+6281288152251', '', '', 111, '', '', '0000-00-00', '2017-01-18 22:36:07', '2017-01-19 14:32:32', 'ADMIN', 'no', 'no'),
(240, 'SGS004', '221', 'AGUS SETYO BUDI S.', '-@SGS-OFFSHORE.COM', 'staff', 'DRIVER', NULL, NULL, 'active', '', NULL, '+6287784092946', '', '', 112, '', '', '0000-00-00', '2017-01-18 22:37:20', '2017-01-19 14:33:10', 'ADMIN', 'no', 'no'),
(241, 'MEOS010', '118', 'THEO ANDRIAN', 'THEO.ANDRIAN@MEOGROUP.COM', 'staff', 'OPERATION EXECUTIVE', NULL, NULL, 'active', '', NULL, '+6285264444359', '', '', 0, '', '', '0000-00-00', '2017-01-18 22:38:20', '2017-01-19 14:41:37', 'ADMIN', 'no', 'no'),
(242, 'MEOS009', '117', 'RENALDO DARMADI', 'RENALDO.DARMADI@MEOGROUP.COM', 'staff', 'OPERATION ASST', NULL, NULL, 'active', '', NULL, '+628127775559', '', '', 0, '', '', '0000-00-00', '2017-01-18 22:39:37', '2017-01-19 14:42:22', 'ADMIN', 'no', 'no'),
(243, 'MEOS012', '119', 'FIRMAN LESMANA', 'FRIMAN.LESMANA@MEOGROUP.COM', 'staff', 'PORT ENGINEER', NULL, NULL, 'active', '', NULL, '+628117715985', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:45:39', '2017-01-19 14:43:19', 'ADMIN', 'no', 'no'),
(244, 'SPS011', '240', 'SUHARNO', '-----@MEOGROUP.COM', 'staff', 'MECHANIC SUPERVISIOR', NULL, NULL, 'active', '', NULL, '+6281364692741', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:46:50', '2017-01-19 14:43:39', 'ADMIN', 'no', 'no'),
(245, 'SPS012', '241', 'DRIPRANTO', '---------@MEOGROUP.COM', 'staff', 'FOREMAN MECHANIC', NULL, NULL, 'active', '', NULL, '+6281277198871', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:48:18', '2017-01-19 14:44:04', 'ADMIN', 'no', 'no'),
(246, 'SPS017', '246', 'NUNU DIHARJA', '--------@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6282124999976', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:48:54', '2017-01-19 14:45:02', 'ADMIN', 'no', 'no'),
(247, 'SPS015', '244', 'M. EGA PERMANA', '----------@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6282173630011', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:50:02', '2017-01-19 14:45:41', 'ADMIN', 'no', 'no'),
(248, 'SPS013', '242', 'KUSTIYO ADI', 'NIL@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6281268167376', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:50:58', '2017-01-19 14:46:19', 'ADMIN', 'no', 'no'),
(249, 'SPS014', '243', 'HENDRA KUSUMA', 'NILL@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6281289322744', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:51:42', '2017-01-19 14:46:42', 'ADMIN', 'no', 'no'),
(250, 'SPS016', '245', 'M. ISMAIL', '__@MEOGROUP.COM', 'staff', 'MECHANIC', NULL, NULL, 'active', '', NULL, '+6281261594107', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:52:33', '2017-01-19 14:47:11', 'ADMIN', 'no', 'no'),
(251, 'SPS021', '249', 'ZAHRUDIN', '_@MEOGROUP.COM', 'staff', 'WELDER', NULL, NULL, 'active', '', NULL, '+6281386600174', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:53:16', '2017-01-19 14:48:25', 'ADMIN', 'no', 'no'),
(252, 'SPS020', '248', 'EFFENDI SAPUTRA', '___@MEOGROUP.COM', 'staff', 'WELDER', NULL, NULL, 'active', '', NULL, '+6282170476346', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:54:18', '2017-01-19 14:47:49', 'ADMIN', 'no', 'no'),
(253, 'SPS019', '247', 'FIRMAN PERDANA', '____@MEOGROUP.COM', 'staff', 'ELECTRICIAN', NULL, NULL, 'active', '', NULL, '+6281387036364', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:55:02', '2017-01-19 14:48:55', 'ADMIN', 'no', 'no'),
(254, 'MEOS002', '114', 'LUKMAN AFFANDY', 'LUKMAN.AFFANDY@MEOGROUP.COM', 'staff', 'ROVING COMMERCIAL', NULL, NULL, 'active', '', NULL, '+6281277057925', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:55:27', '2017-01-19 14:49:57', 'ADMIN', 'no', 'no'),
(255, 'MEOS003', '115', 'CHAIRUDDIN', 'CHAIRUDDIN@MEOGROUP.COM', 'staff', 'SCM SUPERVISIOR', NULL, NULL, 'active', '', NULL, '+6281365349797', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:57:00', '2017-01-19 14:50:27', 'ADMIN', 'no', 'no'),
(256, 'SPS026', '251', 'EKO BUDI TARMANTO', 'BUDI.TARMANTO@MEOGROUP.COM', 'staff', 'PROJECT SUPERINTENDENT', NULL, NULL, 'active', '', NULL, '+628117717013', '', '', 0, '', '', '0000-00-00', '2017-01-18 23:57:48', '2017-01-19 14:50:58', 'ADMIN', 'no', 'no'),
(257, 'ME00008', '49', 'JUANITO BASCON SANTOS ', 'JUANITO.SANTOS@MEOGROUP.COM', 'staff', 'ELECTRICIAN (KSA)', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 04:13:26', '0000-00-00 00:00:00', '', 'no', 'no'),
(258, 'ME00116', '111', 'CESAR CAYABAN', 'CESAR.CAYABAN@MEOGROUP.COM', 'staff', 'INVENTORY & LOGISTICS EXECUTIVE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 04:15:36', '0000-00-00 00:00:00', '', 'no', 'no'),
(259, 'ME00117', '112', 'GEMMA KALAW', 'GEMMA.KALAW@MEOGROUP.COM', 'staff', 'OFFICE MANAGER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 04:16:59', '0000-00-00 00:00:00', '', 'no', 'no'),
(260, 'ME00115', '110', 'SYARLY CAHYADI', 'SYARLY.CAHYADI@MEOGROUP.COM', 'staff', 'PORT CAPTAIN', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 04:20:44', '0000-00-00 00:00:00', '', 'no', 'no'),
(261, 'SGS028', '234', 'FATRONI', 'FATRONI@MEOGROUP.COM', 'staff', 'ACCOUNTANT', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 19:48:58', '0000-00-00 00:00:00', '', 'no', 'no'),
(262, 'M016', '44', 'WONG LOON SENG', 'LOONSENG.WONG@MEOGROUP.COM', 'staff', 'TECHNICAL SUPERINTENDENT', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-19 19:53:58', '0000-00-00 00:00:00', '', 'no', 'no'),
(263, '112', '2', 'BHATA', 'BHARATRAJ+1111@SINGSYS.COM', 'staff', 'QUALITY CONTROL ENGINEER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-24 05:00:37', '2017-01-24 18:30:52', '', 'no', 'no'),
(264, '123', '3', 'AKASH', 'AKASHKUMAR@SINGSYS.COM', 'staff', 'QUALITY ENGINEER', NULL, NULL, 'active', '', 'uploads/shoreProfile/20170206121542.png', '9886439594', '', '', 971, '', 'TESTING', '0000-00-00', '2017-01-24 06:50:45', '2017-02-06 13:43:46', 'BHARATRAJ MEO USER', 'no', 'no'),
(265, '12345678', '4', 'QWERTY', 'A@SINGSYS.COM', 'staff', 'QCE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-24 06:56:36', '2017-01-24 20:29:47', '', 'no', 'no'),
(266, '11606', '11606', 'ATTASIT  KORNCHAIYAPRUK', 'ATTASIT.K@UNITHAI.COM', 'staff', 'HEAD OF BUSINESS DEVELOPMENT, MOE', NULL, NULL, 'active', '', NULL, '+66987899887', '', '+6622548400', 270, '', '', '0000-00-00', '2017-01-26 00:57:54', '2017-01-26 16:57:45', 'ADMIN', 'no', 'no'),
(267, '11471', '11471', 'YUTH  METHEEWITUD', 'YUTH.M@UNITHAI.COM', 'staff', 'PEOPLE & ORGANIZATION DIRECTOR ,UNITHAI GROUP', NULL, NULL, 'active', '', NULL, '+66922703017', '', '+6622548417', 0, '', '', '0000-00-00', '2017-01-26 00:59:34', '2017-02-01 12:07:05', 'ADMIN', 'no', 'no'),
(268, '11074', '11074', 'PIRIYADIT  CHOOPHUNGART', 'PIRIYADIT.C@UNITHAI.COM', 'staff', 'CHIEF FINANCIAL OFFICER, UNITHAI GROUP', NULL, NULL, 'active', '', NULL, '+66817331507', '', '+6622548400', 253, '', '', '0000-00-00', '2017-01-26 00:59:56', '2017-02-01 12:09:46', 'ADMIN', 'no', 'no'),
(269, '11133', '11133', 'SASITHORN  SURIYACHAN ', 'SASITHORN.S@UNITHAI.COM', 'staff', 'MANAGER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '+66898956823', '', '+6622548400', 230, '', '', '0000-00-00', '2017-01-26 01:02:42', '2017-02-01 12:14:58', 'ADMIN', 'no', 'no'),
(270, '11045', '11045', 'SIVILAI  CHIRAMANAPHUN', 'SIVILAI.C@UNITHAI.COM', 'staff', 'ASSISTANT MANAGER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 273, '', '', '0000-00-00', '2017-01-26 01:05:06', '2017-02-01 12:25:13', 'ADMIN', 'no', 'no'),
(271, '11592', '11592', 'SUKIT  KITPATH', 'KANET.C@UNITHAI.COM', 'staff', 'SENIOR OFFICER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 258, '', '', '0000-00-00', '2017-01-26 01:05:58', '2017-02-01 13:54:46', 'ADMIN', 'no', 'no'),
(272, '11038', '11038', 'NARUMON SIRITONGKAM ', 'NARUMON.S@UNITHAI.COM', 'staff', 'OFFICER - FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '+66814128844', '', '+6622548400', 236, '', '', '0000-00-00', '2017-01-26 01:06:35', '2017-02-01 13:58:49', 'ADMIN', 'no', 'no'),
(273, '11426', '11426', 'BENJAWAN  PANKLOM', 'BENJAWAN.P@UNITHAI.COM', 'staff', 'ASST. OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 263, '', '', '0000-00-00', '2017-01-26 01:07:09', '2017-02-01 14:00:19', 'ADMIN', 'no', 'no'),
(274, '11533', '11533', 'CHADA  PHOONJANTANG', 'CHADA.P@UNITHAI.COM', 'staff', 'OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548401', 238, '', '', '0000-00-00', '2017-01-26 01:08:13', '2017-02-01 15:49:28', 'ADMIN', 'no', 'no'),
(275, '1304', '1304', 'DAWAPHA  JANTARAPITAK', 'DAWAPHA.D@UNITHAI.COM', 'staff', 'OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 263, '', '', '0000-00-00', '2017-01-26 01:08:34', '2017-02-01 15:50:03', 'ADMIN', 'no', 'no'),
(276, '71585', '71585', 'YAOWALUCK  THREECHADARAT', 'YAOWALUCK.T@UNIWISE.CO.TH', 'staff', 'SR. OFFICER-FINANCE & ACCOUNTING', NULL, NULL, 'active', '', NULL, '', '', '+6622548400', 273, '', '', '0000-00-00', '2017-01-26 01:09:07', '2017-02-01 15:49:11', 'ADMIN', 'no', 'no'),
(277, '71573', '71573', 'BRAD  MORPHEW', 'BRAD.MORPHEW@UNIWISE.CO.TH', 'staff', 'HEAD OF UNIWISE', NULL, NULL, 'active', '', NULL, '+66632653171', '', '+0225570602', 111, 'BRAD.MORPHEW99 ', '', '0000-00-00', '2017-01-26 01:12:04', '2017-02-01 15:51:01', 'ADMIN', 'no', 'no'),
(278, '71407', '71407', 'JON AXEL HAUGLUM', 'JON.AXEL@UNIWISE.CO.TH', 'staff', 'SR-GM OPERATION', NULL, NULL, 'active', '', NULL, '+66816286264', '', '+0225570602', 120, 'JON-AXEL73', '', '0000-00-00', '2017-01-26 01:12:24', '2017-02-01 15:57:18', 'ADMIN', 'no', 'no'),
(279, '7418', '7418', 'WARODOM THAMRONGTHANYAWONG', 'WARODOM.T@UNIWISE.CO.TH', 'staff', 'GM COMMERCIAL', NULL, NULL, 'active', '', NULL, '+66816286264', '', '+0225570602', 121, 'WARODOM.T', '', '0000-00-00', '2017-01-26 01:12:49', '2017-02-01 15:59:41', 'ADMIN', 'no', 'no'),
(280, '71006', '71006', 'ALISA PHUCHUMNIAN', 'ALISA.P@UNIWISE.CO.TH', 'staff', 'FINANCIAL BUSINESS PARTNER (FBP) ', NULL, NULL, 'active', '', NULL, '+66897731977', '', '+0225570602', 123, 'ALISA.PHUCHUMNIAN', '', '0000-00-00', '2017-01-26 01:13:19', '2017-02-01 15:59:15', 'ADMIN', 'no', 'no'),
(281, '7974', '7974', 'NARUEMOL JIRANANTASAK', 'NARUEMOL.J@UNIWISE.CO.TH', 'staff', 'HR MANAGER', NULL, NULL, 'active', '', NULL, '+66816204664', '', '+0225570602', 402, 'NARUEMOL.JIRANANTASAK', '', '0000-00-00', '2017-01-26 01:13:42', '2017-02-01 16:01:12', 'ADMIN', 'no', 'no'),
(282, '7147', '7147', 'VANDEE INTAPANYA', 'VANDEE.I@UNIWISE.CO.TH', 'staff', 'SR. COMMERCIAL OFFICER', NULL, NULL, 'active', '', NULL, '+66847281194', '', '+0225570602', 112, '', '', '0000-00-00', '2017-01-26 01:14:25', '2017-02-01 16:02:38', 'ADMIN', 'no', 'no'),
(283, '71182', '71182', 'YINGYOD THONGNAUM', 'YINYOD.T@UNIWISE.CO.TH', 'staff', 'CREWING MANAGER', NULL, NULL, 'active', '', NULL, '+66844385531', '', '+0225570602', 119, '', '', '0000-00-00', '2017-01-26 01:15:08', '2017-02-01 16:03:44', 'ADMIN', 'no', 'no'),
(284, '7057', '7057', 'VIPA TEEPAPONG', 'VIPA.T@UNIWISE.CO.TH', 'staff', 'SR. OFFICER- CREWING', NULL, NULL, 'active', '', NULL, '+66865634702', '', '+0225570602', 118, '', '', '0000-00-00', '2017-01-26 01:15:52', '2017-02-01 16:04:41', 'ADMIN', 'no', 'no'),
(285, '71436', '71436', 'PACHARAPORN THUNPRASERT', 'PACHARAPORN.T@UNIWISE.CO.TH', 'staff', 'OFFICER- CREWING', NULL, NULL, 'active', '', NULL, '+66916340650', '', '+0225570602', 117, '', '', '0000-00-00', '2017-01-26 01:16:11', '2017-02-01 16:05:24', 'ADMIN', 'no', 'no'),
(286, '71529', '71529', 'NIDA SENGTHONG', 'NIDA.S@UNIWISE.CO.TH', 'staff', 'OFFICER- CREWING', NULL, NULL, 'active', '', NULL, '+66899348670', '', '+0225570602', 404, '', '', '0000-00-00', '2017-01-26 01:16:50', '2017-02-01 16:06:13', 'ADMIN', 'no', 'no'),
(287, '71601', '71601', 'VERNON LOW', 'VERNON.LOW@UNIWISE.CO.TH', 'staff', 'MANAGER - GROUP HSQE', NULL, NULL, 'active', '', NULL, '+66632710868', '', '+66743273412', 116, '', '', '0000-00-00', '2017-01-26 01:17:56', '2017-02-01 16:07:25', 'ADMIN', 'no', 'no'),
(288, '71360', '71360', 'PATTARAPOOM SANTIWEKIN', 'PATTARAPOOM.S@UNIWISE.CO.TH', 'staff', 'HSQE ASSITANT MGE/DDPA', NULL, NULL, 'active', '', NULL, '+66819005408', '', '+66743273412', 113, '', '', '0000-00-00', '2017-01-26 01:18:18', '2017-02-01 16:08:17', 'ADMIN', 'no', 'no'),
(289, '7954', '7954', 'WORASAK BUAPLOD', 'WORASAK.B@UNIWISE.CO.TH', 'staff', 'HSQE SI', NULL, NULL, 'active', '', NULL, '+66844385528 ', '', '+66743273412', 117, '', '', '0000-00-00', '2017-01-26 01:18:34', '2017-02-01 16:09:53', 'ADMIN', 'no', 'no'),
(290, '71505', '71505', 'PAWARIT ARSAKIT', 'PAWARIT.A@UNIWISE.CO.TH', 'staff', 'HSQE SI', NULL, NULL, 'active', '', NULL, '+66819049678', '', '+66743273412', 117, '', '', '0000-00-00', '2017-01-26 01:18:57', '2017-02-01 16:12:09', 'ADMIN', 'no', 'no'),
(291, '71421', '71421', 'PANYA BOONANEKSUB', 'PANYA.B@UNIWISE.CO.TH', 'staff', 'HSQE SI - SATTAHIP', NULL, NULL, 'active', '', NULL, '+66817326258', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-26 01:19:21', '2017-02-01 16:14:19', 'ADMIN', 'no', 'no'),
(292, '7949', '7949', 'APAPAN TEPMANEE', 'APAPAN.T@UNIWISE.CO.TH', 'staff', 'HSQE ASSISTANT MGR-MANAGEMENT SYSTEM COMPLIANCE ', NULL, NULL, 'active', '', NULL, '+66819335466', '', '+66743273412', 113, '', '', '0000-00-00', '2017-01-26 01:19:55', '2017-02-01 16:39:59', 'ADMIN', 'no', 'no'),
(293, '71564', '71564', 'SUPASSORN  SAENNIEM', 'SUPASSORN.S@UNIWISE.CO.TH', 'staff', 'HSQE ADMINISTRATOR', NULL, NULL, 'active', '', NULL, '+66817389275', '', '+66743273412', 113, '', '', '0000-00-00', '2017-01-26 01:20:23', '2017-02-01 16:42:10', 'ADMIN', 'no', 'no'),
(294, '71506', '71506', 'CAPT.PONGSARIT KLOMKHUM', 'PONGSARIT.K@UNIWISE.CO.TH', 'staff', 'OPERATIONS MANAGER', NULL, NULL, 'active', '', NULL, '+66847513230', '', '+66743273412', 120, '', '', '0000-00-00', '2017-01-26 01:20:42', '2017-02-01 16:10:58', 'ADMIN', 'no', 'no'),
(295, '71462', '71462', 'CAPT.THIANCHAI DHANKULCHAI', 'THIANCHAI.D@UNIWISE.CO.TH', 'staff', 'OPERATIONS BARGE MANAGER', NULL, NULL, 'active', '', NULL, '+66922714420', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-26 01:21:01', '2017-02-01 16:43:39', 'ADMIN', 'no', 'no'),
(296, '71513', '71513', 'THEERADET SAENKET', 'THEERADET.S@UNIWISE.CO.TH', 'staff', 'JUNIOR OPERATIONS SI', NULL, NULL, 'active', '', NULL, '+66922601135', '', '+66743273412', 118, '', '', '0000-00-00', '2017-01-26 01:21:25', '2017-02-01 16:44:25', 'ADMIN', 'no', 'no'),
(297, '71578', '71578', 'SAMPAN  SAMPANWICHAIN', 'SUWIT.S@UNIWISE.CO.TH', 'staff', 'JUNIOR OPERATIONS SI', NULL, NULL, 'active', '', NULL, '+66632139896', '', '+66743273413', 118, '', '', '0000-00-00', '2017-01-26 01:22:02', '2017-02-01 16:45:14', 'ADMIN', 'no', 'no'),
(298, '71383', '71383', 'JARIYA PANKHOUSUK', 'JARIYA.P@UNIWISE.CO.TH', 'staff', 'OPS.ADMINISTRATOR', NULL, NULL, 'active', '', NULL, '+66835125117', '', '+66743273412', 118, '', '', '0000-00-00', '2017-01-26 01:22:23', '2017-02-01 16:46:25', 'ADMIN', 'no', 'no'),
(299, '71248', '71248', 'THONGCHAI PETCHARAT', 'THONGCHAI.P@UNIWISE.CO.TH', 'staff', 'BASE MANAGER -SKL', NULL, NULL, 'active', '', NULL, '+66854810190', '', '+66743273412', 124, 'THONGCHAI.P@UNIWISE.CO.TH', '', '0000-00-00', '2017-01-26 01:22:56', '2017-02-01 16:48:12', 'ADMIN', 'no', 'no'),
(300, '7773', '7773', 'PRAPHOJ JAICHAROEN', 'PRAPHOJ.J@UNIWISE.CO.TH', 'staff', 'BASE MANAGER -SATTAHIP', NULL, NULL, 'active', '', NULL, '+66819194080', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-26 01:23:21', '2017-02-01 16:48:59', 'ADMIN', 'no', 'no'),
(301, '7984', '7984', 'SITHE SOOKBAN', 'SITHE.S@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66892066089', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-26 01:23:36', '2017-02-01 16:51:27', 'ADMIN', 'no', 'no'),
(302, '71460', '71460', 'PANUWAT SANGASILAPA', 'PANUWAT@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66817504142', '', '+66743273412', 122, '', '', '0000-00-00', '2017-01-26 01:23:54', '2017-02-01 16:51:08', 'ADMIN', 'no', 'no'),
(303, '71393', '71393', 'SUTHAT KUAKOONRAT', 'SUTHAT.K@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI-SATTAHIP', NULL, NULL, 'active', '', NULL, '+66844385527', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-26 01:24:10', '2017-02-01 16:52:14', 'ADMIN', 'no', 'no'),
(304, '71395', '71395', 'WANNAPAT TABMAK', 'WANNAPAT.T@UNIWISE.CO.TH', 'staff', 'ASSISTANT TECHICAL EXECUTIVE', NULL, NULL, 'active', '', NULL, '+66869568452', '', '+66743273412', 119, '', '', '0000-00-00', '2017-01-26 01:24:32', '2017-02-01 16:54:54', 'ADMIN', 'no', 'no'),
(305, '71543', '71543', 'SOMBOON POLSWANG', 'SOMBOON.P@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66614120903', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-26 01:24:49', '2017-02-01 16:56:54', 'ADMIN', 'no', 'no'),
(306, '71574', '71574', 'SURASAK  WEERAWATTANA', 'SURASAK.W@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66625942870', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-26 01:25:07', '2017-02-01 16:58:12', 'ADMIN', 'no', 'no'),
(307, '71600', '71600', 'SATID  THONGSRINUAN  ', 'SATID.T@UNIWISE.CO.TH', 'staff', 'TECHNICAL SI', NULL, NULL, 'active', '', NULL, '+66623524546', '', '+66743273412', 121, '', '', '0000-00-00', '2017-01-26 01:25:21', '2017-02-01 16:59:48', 'ADMIN', 'no', 'no'),
(308, '71101', '71101', 'KITTIMA WANNASRI', 'KITTIMA.W@UNIWISE.CO.TH', 'staff', 'UWO PROCUREMENT MANAGER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-01-26 01:25:38', '0000-00-00 00:00:00', '', 'no', 'no'),
(309, '71053', '71053', 'CHARIYA CHAROENSOOK', 'CHARIYA.C@UNIWISE.CO.TH', 'staff', 'SENIOR ASSISTANT PROCUREMENT', NULL, NULL, 'active', '', NULL, '+66849683693', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-26 01:25:58', '2017-02-01 17:02:48', 'ADMIN', 'no', 'no'),
(310, '71503', '71503', 'USAVADEE KETKAEW', 'USAVADEE.K@UNIWISE.CO.TH', 'staff', 'PROCUREMENT OFFICER', NULL, NULL, 'active', '', NULL, '+66887908460', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-26 01:26:14', '2017-02-01 17:04:37', 'ADMIN', 'no', 'no'),
(311, '71373', '71373', 'THIRAYA BOONRAT', 'THIRAYA.B@UNIWISE.CO.TH', 'staff', 'ASSISTANT OFFICER - PROCUREMENT', NULL, NULL, 'active', '', NULL, '+66956287311', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-26 01:26:34', '2017-02-01 17:06:33', 'ADMIN', 'no', 'no'),
(312, '71504', '71504', 'NATTAMON KHUNTIKULANON', 'NUTTAMON.K@UNIWISE.CO.TH', 'staff', 'PROCUREMENT OFFICER', NULL, NULL, 'active', '', NULL, '+66818619973', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-26 01:26:59', '2017-02-01 17:05:37', 'ADMIN', 'no', 'no'),
(313, '71429', '71429', 'TEEKHAYU MEEKAEW', 'TEEKHAYU.M@UNIWISE.CO.TH', 'staff', 'PROCUREMENT OFFICER', NULL, NULL, 'active', '', NULL, '+66818791026', '', '+66743273412', 107, '', '', '0000-00-00', '2017-01-26 01:27:26', '2017-02-01 17:07:20', 'ADMIN', 'no', 'no'),
(314, '71456', '71456', 'NUJCHAREE JAMJAENG', 'NUJCHAREE.J@UNIWISE.CO.TH', 'staff', 'PURCHASING OFFICER - SATTAHIP', NULL, NULL, 'active', '', NULL, '+66861408982', '', '+6638247596', 0, '', '', '0000-00-00', '2017-01-26 01:27:46', '2017-02-01 17:08:11', 'ADMIN', 'no', 'no'),
(315, '71476', '71476', 'DANAI JARI', 'DANAI.J@UNIWISE.CO.TH', 'staff', 'SENIOR WAREHOUSE SUPERVISOR', NULL, NULL, 'active', '', NULL, '+660856704821', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-26 01:29:02', '2017-02-01 17:09:32', 'ADMIN', 'no', 'no'),
(316, '71020', '71020', 'AMPOL CHAREANSUP', 'AMPOL.C@UNIWISE.CO.TH', 'staff', 'ASSISTANT OFFICER - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66894662749', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-26 01:29:22', '2017-02-01 17:10:20', 'ADMIN', 'no', 'no'),
(317, '71317', '71317', 'SANTI JUATHAI', 'SANTI.J@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66947823790', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-26 01:29:39', '2017-02-01 17:11:11', 'ADMIN', 'no', 'no'),
(318, '71367', '71367', 'SOREEKIN SANGNUAL', 'SORREKIN.S@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66855605962', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-26 01:29:59', '2017-02-01 17:12:03', 'ADMIN', 'no', 'no'),
(319, '71453', '71453', 'RACHEN  CHAIONKAEW', 'RACHEN.C@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66872146414', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-26 01:30:24', '2017-02-01 17:12:43', 'ADMIN', 'no', 'no'),
(320, '71371', '71371', 'JIRAPORN SUWANNA', 'JIRAPORN.S@UNIWISE.CO.TH', 'staff', 'ASSISTANT - WAREHOUSE', NULL, NULL, 'active', '', NULL, '+66815988563', '', '+66743273412', 111, '', '', '0000-00-00', '2017-01-26 01:30:44', '2017-02-01 17:13:36', 'ADMIN', 'no', 'no'),
(321, '7994', '7994', 'SITTIPONG SAYCHUMPUN', 'SITTIPONG.SC@UNIWISE.CO.TH', 'staff', 'SENIOR CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66866863221', '', '+66743273412', 109, '', '', '0000-00-00', '2017-01-26 01:31:04', '2017-02-01 17:14:44', 'ADMIN', 'no', 'no'),
(322, '71056', '71056', 'SOPON PONPAI', 'SOPON.P@UNIWISE.CO.TH', 'staff', 'SENIOR CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66815995218', '', '+66743273412', 109, '', '', '0000-00-00', '2017-01-26 01:35:01', '2017-02-01 17:15:23', 'ADMIN', 'no', 'no'),
(323, '71359', '71359', 'KANDA RAKPAKDEE', 'KANDA.R@UNIWISE.CO.TH', 'staff', 'CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66869933681', '', '+66743273412', 106, '', '', '0000-00-00', '2017-01-26 02:41:38', '2017-02-01 17:16:37', 'ADMIN', 'no', 'no'),
(324, '71372', '71372', 'SUWANNA BOONKUMNED', 'SUWANNA.B@UNIWISE.CO.TH', 'staff', 'CREWING OFFICER', NULL, NULL, 'active', '', NULL, '+66869661880', '', '+66743273412', 106, '', '', '0000-00-00', '2017-01-26 02:43:20', '2017-02-01 17:17:39', 'ADMIN', 'no', 'no'),
(325, '71433', '71433', 'PHETBUREE SANGMANEE', 'PHETBUREE.S@UNIWISE.CO.TH', 'staff', 'CREWING OFFICER-SATTAHIP', NULL, NULL, 'active', '', NULL, '+66935808141', '', '+6638247598', 0, '', '', '0000-00-00', '2017-01-26 02:43:39', '2017-02-01 17:18:41', 'ADMIN', 'no', 'no'),
(326, '71508', '71508', 'PHILIPPE LAUVRAY', 'PHILIPPE.L@UNIWISE.CO.TH', 'staff', 'TRAINING MANAGER', NULL, NULL, 'active', '', NULL, '+66898760837', '', '+66743273412', 108, '', '', '0000-00-00', '2017-01-26 02:43:56', '2017-02-01 17:19:25', 'ADMIN', 'no', 'no'),
(327, '71567', '71567', 'KITTISAK  SUWANNSRI', 'KITTISAK.S@UNIWISE.CO.TH', 'staff', 'ASSISTANT MANAGER-TRAINING', NULL, NULL, 'active', '', NULL, '+66901392727', '', '+66743273412', 108, '', '', '0000-00-00', '2017-01-26 02:44:25', '2017-02-01 17:21:17', 'ADMIN', 'no', 'no'),
(328, '71306', '71306', 'THAMRONGSAK PANJUNSEE', 'THAMRONGSAK.P@UNIWISE.CO.TH', 'staff', 'TRAINER OFFICER', NULL, NULL, 'active', '', NULL, '+66819904757', '', '+66743273412', 108, '', '', '0000-00-00', '2017-01-26 02:44:53', '2017-02-01 17:20:15', 'ADMIN', 'no', 'no'),
(329, '71370', '71370', 'PATHOMPONG PROMYA ', 'PATHOMPONG.P@UNIWISE.CO.TH', 'staff', 'TRAINER OFFICER TRAINING COORDINATOR', NULL, NULL, 'active', '', NULL, '+66869694793', '', '+66743273412', 115, '', '', '0000-00-00', '2017-01-26 02:45:15', '2017-02-01 17:22:10', 'ADMIN', 'no', 'no'),
(330, '71463', '71463', 'MOEHAMAD  ARSYAD', 'MOEHAMAD.A@UNIWISE.CO.TH', 'staff', 'ASSISTANT MANAGER - WORKSHOP & STORES', NULL, NULL, 'active', '', NULL, '+660854810186', '', '+66743273412', 110, '', '', '0000-00-00', '2017-01-26 02:45:38', '2017-02-01 17:22:53', 'ADMIN', 'no', 'no'),
(331, '0000000000001', '0000000000001', 'QUEK YEOW RONG', 'YR.QUEK@MEOGROUP.COM', 'staff', 'IT EXECUTIVE', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '2017-12-31', '2017-02-01 02:43:53', '0000-00-00 00:00:00', '', 'no', 'no'),
(333, '1012', '1012', 'MANISH', 'MANISHMAHANT@SINGSYS.COM', 'staff', 'SOFTWARE DEVELOPER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-02-09 04:19:09', '0000-00-00 00:00:00', '', 'no', 'no'),
(334, '1013', '1013', 'RP SINGH CHAUHAN', 'RAHULPRATAP@SINGSYS.COM', 'staff', 'SENIOR SOFTWARE DEVELOPER', NULL, NULL, 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-02-09 04:27:17', '0000-00-00 00:00:00', '', 'no', 'no'),
(335, 'TEST2', 'TEST3', 'JOVY C (TEST)', 'JOVY_CHAY@YAHOO.COM.SG', 'staff', 'TEST DESIGNATION', 'NIL', 'NIL', 'active', '', NULL, NULL, NULL, NULL, 0, NULL, '', '0000-00-00', '2017-03-16 03:32:58', '0000-00-00 00:00:00', '', 'no', 'no');

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
(182, 52, 'dept'),
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
(215, 57, 'dept'),
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
(220, 59, 'dept'),
(105, 11, 'dept'),
(88, 11, 'dept'),
(138, 36, 'dept'),
(266, 66, 'dept'),
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
(264, 91, 'dept'),
(264, 6, 'location'),
(264, 108, 'reports_to'),
(148, 43, 'dept'),
(148, 181, 'org'),
(148, 3, 'location'),
(148, 119, 'reports_to'),
(148, 60, 'reports_to'),
(124, 17, 'dept'),
(124, 0, 'client_view_access'),
(106, 42, 'dept'),
(106, 92, 'dept'),
(106, 93, 'dept'),
(106, 1, 'location'),
(106, 119, 'reports_to'),
(106, 0, 'client_view_access'),
(60, 7, 'dept'),
(60, 1, 'location'),
(119, 7, 'dept'),
(119, 1, 'location'),
(119, 56, 'reports_to'),
(129, 8, 'dept'),
(129, 11, 'dept'),
(129, 11, 'reports_to'),
(129, 12, 'reports_to'),
(129, 13, 'reports_to'),
(49, 11, 'dept');

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
(1, 'ORG CHART OVERVIEW', 'OrgChart_1484882593.pdf', 'Active', '2017-01-06 11:07:56', '2017-02-09 17:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `meo_org_groups_detail`
--

CREATE TABLE `meo_org_groups_detail` (
  `id` int(11) NOT NULL,
  `id_groups_members` int(11) UNSIGNED NOT NULL,
  `id_meo_user` varchar(250) NOT NULL,
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

INSERT INTO `meo_org_groups_detail` (`id`, `id_groups_members`, `id_meo_user`, `group_functions`, `group_note`, `country_city`, `added_on`, `updated_on`, `updated_by`) VALUES
(3, 108, '86,106,108,60,32,186', '', '', '', '2017-02-04 02:09:54', '2004-02-17 15:39:54', 'ADMIN'),
(4, 263, '', '', '', '1', '2017-02-04 04:52:52', '2004-02-17 18:22:52', 'ADMIN'),
(5, 147, '', '', '', '', '2017-02-06 00:56:34', '2006-02-17 14:26:34', 'ADMIN'),
(6, 266, '', '', '', '1', '2017-02-08 10:59:43', '2009-02-17 00:29:43', 'ADMIN'),
(7, 187, '106', 'TEST', 'TESTING', '11', '2017-02-08 11:01:10', '2009-02-17 00:31:10', 'ADMIN'),
(8, 107, '49', '', '', '1', '2017-02-12 22:10:23', '2013-02-17 11:40:23', 'ADMIN');

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
(17, 'GROUP FINANCE', 29, 1, 'active', '2017-02-01 00:33:59', '2017-02-02 11:46:01'),
(21, 'SHARED ACCOUNTING SERVICES', 29, 2, 'active', '2017-02-01 19:59:58', '2017-02-02 13:34:18'),
(27, 'THAI/ASEAN BU- INDONESIA', 26, 1, 'active', '2017-02-01 20:28:52', '2017-02-02 11:25:00'),
(29, 'GROUP TECHNICAL & OPERATIONS', 29, 3, 'active', '2017-02-01 21:22:11', '2017-02-02 11:58:42'),
(30, 'ADMINISTRATION', 29, 4, 'active', '2017-02-01 21:57:07', '0000-00-00 00:00:00'),
(31, 'EOS', 58, 1, 'active', '2017-02-01 21:57:32', '2017-02-03 13:36:49'),
(33, 'FINANCE & SUPPLY CHAIN ME', 36, 1, 'active', '2017-02-01 22:07:03', '2017-02-08 12:35:26'),
(34, 'GROUP COMMERCIAL', 29, 5, 'active', '2017-02-01 22:09:06', '0000-00-00 00:00:00'),
(36, 'GROUP FLEET PLANNED MAINTENANCE SYSTEM', 29, 6, 'active', '2017-02-01 22:17:06', '0000-00-00 00:00:00'),
(37, 'GROUP HSQE', 29, 7, 'active', '2017-02-01 22:18:05', '0000-00-00 00:00:00'),
(38, 'GROUP IT & SAP TEAM', 29, 8, 'active', '2017-02-01 22:20:09', '0000-00-00 00:00:00'),
(39, 'GROUP KNOWLEDGE MANAGEMENT CENTRE', 29, 9, 'active', '2017-02-01 22:20:39', '0000-00-00 00:00:00'),
(40, 'GROUP SUPPLY CHAIN MANAGEMENT (SCM)', 29, 10, 'active', '2017-02-01 22:25:15', '0000-00-00 00:00:00'),
(41, 'GROUP TRAINING', 29, 11, 'active', '2017-02-01 22:29:51', '0000-00-00 00:00:00'),
(44, 'SPECIALISED VESSEL OFFSHORE SERVICES', 34, 1, 'active', '2017-02-02 00:10:17', '0000-00-00 00:00:00'),
(45, 'QATAR', 55, 1, 'active', '2017-02-02 00:32:16', '0000-00-00 00:00:00'),
(46, 'SAUDI ARABIA', 59, 1, 'active', '2017-02-02 00:32:49', '0000-00-00 00:00:00'),
(48, 'EOS OPERATIONS', 58, 2, 'active', '2017-02-02 00:54:11', '2017-02-03 13:46:49'),
(49, 'GROUP CREWING AUS', 35, 1, 'active', '2017-02-02 00:55:06', '0000-00-00 00:00:00'),
(50, 'GROUP CREWING', 29, 12, 'active', '2017-02-02 00:56:51', '0000-00-00 00:00:00'),
(51, 'GROUP HUMAN RESOURCES', 29, 13, 'active', '2017-02-02 00:57:30', '0000-00-00 00:00:00'),
(52, 'GROUP HUMAN RESOURCES ME', 36, 2, 'active', '2017-02-02 00:58:19', '0000-00-00 00:00:00'),
(53, 'MIDDLE EAST BU', 36, 3, 'active', '2017-02-02 01:06:23', '0000-00-00 00:00:00'),
(54, 'TECHNICAL/ OPERATIONS ME', 36, 4, 'active', '2017-02-02 01:25:35', '0000-00-00 00:00:00'),
(55, 'THAI/ ASEAN BU- BRUNEI', 31, 1, 'active', '2017-02-02 01:30:26', '0000-00-00 00:00:00'),
(56, 'THAI/ASEAN BU- MALAYSIA', 30, 1, 'active', '2017-02-02 01:35:29', '0000-00-00 00:00:00'),
(57, 'ASEAN', 29, 14, 'active', '2017-02-02 02:16:05', '0000-00-00 00:00:00'),
(58, 'THAI/ASEAN BU- UWO', 61, 1, 'active', '2017-02-02 02:20:20', '0000-00-00 00:00:00'),
(59, 'SINGSYS TESTING GROUP', 36, 5, 'active', '2017-02-03 00:56:43', '2017-02-03 14:57:55'),
(61, 'SINGSYS PTE LTD', 26, 2, 'active', '2017-02-04 04:52:25', '2017-02-04 18:25:25'),
(62, 'TESTING MEMBERS VALIDATION', 61, 2, 'active', '2017-02-05 23:39:24', '2017-02-09 17:52:42'),
(63, 'HELLO TQC', 68, 1, 'active', '2017-02-12 23:22:52', '2017-02-13 12:53:19'),
(64, 'SAFDGFGHJK;L', 26, 3, 'active', '2017-02-13 03:04:20', '2017-02-13 18:23:35'),
(65, 'TEST', 30, 2, 'active', '2017-02-14 20:26:48', '0000-00-00 00:00:00');

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
(64, 27, 'OPERATIONS INDO', 'OPSINDO@MEOGROUP.COM', 24),
(65, 27, 'MARKETING JKT', 'MARKETING.JKT@SGS-OFFSHORE.COM', 25),
(66, 27, 'INDONESIA STAFF', 'ASEAN_ID@MEOGROUP.COM', 26),
(67, 27, 'CREWING JKT', 'CREWING_JKT@MEOGROUP.COM', 27),
(68, 27, 'SHIPYARD ENQUIRY', 'SHIPYARD.ENQUIRY@MEOGROUP.COM', 28),
(69, 27, 'EOS FINANCE', 'EOS.FIN-JKK@MEOGROUP.COM', 29),
(70, 30, 'ADMIN SG', 'ADMIN_SG@MEOGROUP.COM', 24),
(96, 34, 'COMMUNICATION', 'COMMUNICATION@MEOGROUP.COM', 32),
(97, 34, 'SALES AND PURCHASE', 'SNP@MEOGROUP.COM', 33),
(98, 34, 'GROUP COMMERCIAL', 'GROUPCOMMERCIAL@MEOGROUP.COM', 34),
(99, 34, 'QUIZ', 'QUIZ@MEOGROUP.COM', 35),
(100, 34, 'MARKETING SG', 'MARKETING_SG@MEOGROUP.COM', 36),
(107, 17, 'ACCOUNTS TEAMLEADERS SG', 'ACCOUNTS_TEAMLEADERS_SG@MEOGROUP.COM', 1),
(108, 17, 'FPA', 'FPA@MEOGROUP.COM', 2),
(109, 17, 'CONSOL', 'CONSOL@MEOGROUP.COM', 3),
(110, 17, 'CHARTER SUMMARY', 'CHARTERSUMMARY@MEOGROUP.COM', 4),
(111, 17, 'FINANCE MGRS SG', 'FINANCE_MGRS_SG@MEOGROUP.COM', 5),
(112, 36, 'FPM', 'FPM@MEOGROUP.COM', 37),
(113, 37, 'HSQE SG', 'HSQE_SG@MEOGROUP.COM', 38),
(117, 38, 'IT INFRASTRUCTURE', 'ITHELPDESKTEAM@MEOGROUP.COM', 39),
(118, 38, 'MEO APP', 'MEO_APP@MEOGROUP.COM', 40),
(119, 38, 'SAP SUPPORT', 'SAP_SUPPORT@MEOGROUP.COM', 41),
(120, 39, 'KM GROUP', 'KMGROUP@MEOGROUP.COM', 42),
(121, 40, 'PURCHASING SG', 'PURCHASING_SG@MEOGROUP.COM', 43),
(122, 40, 'PURCHASING BATAM', 'PURCHASING_BATAM@MEOGROUP.COM', 44),
(123, 29, 'PROJECT DBS', 'PROJECT.DBS@MEOGROUP.COM', 17),
(124, 29, 'OPERATIONS SG', 'OPSSGP@MEOGROUP.COM', 18),
(125, 29, 'TECHNICAL SG', 'TECHNICAL_SG@MEOGROUP.COM', 19),
(126, 29, 'VPN SGP', 'VPN_SGP@MEOGROUP.COM', 20),
(127, 29, 'GENERAL FLEET GROUP', 'GFGROUP@MEOGROUP.COM', 21),
(128, 29, 'ROVING FLEET BT', 'ROVING_FLEET_BT@MEOGROUP.COM', 22),
(129, 29, 'NEWBUILD ENGINEERING SG', 'NEWBUILD_ENGINEERING_SG@MEOGROUP.COM', 23),
(130, 41, 'TRAINING SG', 'TRAINING_SG@MEOGROUP.COM', 45),
(143, 21, 'ACCOUNTS RECEIVABLE', 'AR_SG@MEOGROUP.COM', 6),
(144, 21, 'ACCOUNTS PAYABLE', 'ACCOUNTS_AP_SG@MEOGROUP.COM', 7),
(145, 21, 'FINANCE SG', 'FINANCE_SG@MEOGROUP.COM', 8),
(146, 21, 'DRP TEAM', 'DRP_TEAM@MEOGROUP.COM', 9),
(147, 21, 'GENERAL LEDGER ', 'GL_SG@MEOGROUP.COM', 10),
(151, 44, 'SPECIAL FLEET GROUP', 'SFGROUP@MEOGROUP.COM', 46),
(152, 44, 'DP/SUBSEA FLEET', 'SUBSEADP@MEOGROUP.COM', 47),
(153, 44, 'SVS', 'SVS@MEOGROUP.COM', 48),
(154, 45, 'QATAR OFFICE', 'QATAR.OFFICE@MEOGROUP.COM', 23),
(155, 46, 'ME MARINE SYSTEM', 'MEMARINESYSTEM@MEOGROUP.COM', 22),
(181, 49, 'PAYROLL AUS', 'PAYROLL_AUS@MEOGROUP.COM', 31),
(182, 50, 'GROUP PAYROLL SG', 'GROUP_PAYROLL_SG@MEOGROUP.COM', 73),
(183, 50, 'CREWING SG', 'CREWING_SG@MEOGROUP.COM', 74),
(184, 50, 'CREW PAYROLL', 'CREW_PAYROLL@MEOGROUP.COM', 75),
(185, 51, 'HR SG', 'HR@MEOGROUP.COM', 76),
(186, 52, 'ADMIN ME', 'ADMIN_ME@MICLYNEXPRESSOFFSHORE.COM', 3),
(187, 52, 'HR ME', 'HR_ME@MEOGROUP.COM', 2),
(188, 53, 'HSQE ME', 'HSQE_ME@MEOGROUP.COM', 4),
(189, 53, 'HSQE DUBAI', 'HSQE_DUBAI@MEOGROUP.COM', 12),
(190, 53, 'COMMERCIAL ME', 'COMMERCIAL_ME@MEOGROUP.COM', 10),
(191, 53, 'CREWING ME', 'CREWING_ME@MEOGROUP.COM', 9),
(192, 53, 'ME STAFF', 'ME_STAFF@MEOGROUP.COM', 11),
(193, 53, 'ME SBGS GHASA', 'MEOGHASA@MEOGROUP.COM', 8),
(194, 53, 'PROJECT GHASHA UAE', 'PROJECTGHASHAUAE@MEOGROUP.COM', 7),
(195, 53, 'ME CREW FEEDBACK', 'MECREWFEEDBACK@MEOGROUP.COM', 6),
(196, 53, 'OPERATIONS ME', 'OPSDEP@MEOGROUP.COM', 5),
(197, 53, 'SSAS ME', 'SSAS_ME@MEOGROUP.COM', 13),
(198, 54, 'OPERATION KSA', 'OPS_KSA@MEOGROUP.COM', 14),
(199, 54, 'TECHNICAL ME', 'TECHNICAL_ME@MEOGROUP.COM', 15),
(200, 54, 'OPERATIONS ME', 'OPS_ME@MEOGROUP.COM', 16),
(201, 54, 'OPERATIONS UAE', 'OPSUAE@MEOGROUP.COM', 17),
(202, 55, 'BRUNEI', 'ASEAN_BN@MEOGROUP.COM', 93),
(203, 55, 'BRUNEI OPS', 'BRUNEI.OPS@MEOGROUP.COM', 94),
(204, 55, 'HSQE BRUNEI', 'HSQE_BRUNEI@MEOGROUP.COM', 95),
(205, 56, 'OPERATIONS MY', 'OPSMSIA@MEOGROUP.COM', 96),
(206, 56, 'MY STAFF', 'ASEAN_MY@MEOGROUP.COM', 97),
(207, 57, 'ASEAN SG', 'ASEAN_SG@MEOGROUP.COM', 98),
(208, 57, 'ASEAN LT', 'ASEAN_LT@MEOGROUP.COM', 99),
(209, 58, 'HSQE TH', 'HSQE_TH@MEOGROUP.COM', 100),
(210, 58, 'OPERATIONS TH', 'OPSTHAI@MEOGROUP.COM', 101),
(211, 58, 'CREWING TH', 'CREWING_TH@MEOGROUP.COM', 102),
(212, 31, 'EOS', 'EOS@MEOGROUP.COM', 32),
(213, 31, 'ROW COMMERCIAL', 'CHARTERING@MEOGROUP.COM', 33),
(214, 31, 'FINANCE EOS', 'FINANCE_EOS@MEOGROUP.COM', 34),
(215, 31, 'AUS STAFF', 'AUS_STAFF@MEOGROUP.COM', 35),
(236, 48, 'EOS OPERATIONS', 'OPS@MEOGROUP.COM', 51),
(237, 48, 'CB1 MOB', 'CB1MOB@MEOGROUP.COM', 63),
(238, 48, 'GHL MMA', 'BZAN.OPS@MEOGROUP.COM', 64),
(239, 48, 'BZAN.OPS', 'BZAN.OPS@MEOGROUP.COM', 65),
(240, 48, 'SLP-OPS', 'SLP-OPS@MEOGROUP.COM', 66),
(241, 48, 'BUKOM.OPS', 'BUKOM.OPS@MEOGROUP.COM', 67),
(242, 48, 'TFA01', 'TFA01@MEOGROUP.COM', 68),
(243, 48, 'HMC.ICHTHYS', 'HMC.ICHTHYS@MEOGROUP.COM', 69),
(244, 48, 'VEGAPLEYADE', 'VEGAPLEYADE@MEOGROUP.COM', 70),
(245, 48, 'SK316 EOS', 'SK316.EOS@MEOGROUP.COM', 62),
(246, 48, 'EOS ME', 'EOS_ME@MEOGROUP.COM', 61),
(247, 48, 'EOS.MLS01', 'EOS_MLS01@MEOGROUP.COM', 60),
(248, 48, 'EOS BDM', 'EOS_BDM@MEOGROUP.COM', 52),
(249, 48, 'EOS ZTK1B', 'EOS_ZTK1B@MEOGROUP.COM', 53),
(250, 48, 'EOS BBPL', 'EOS_BBPL@MEOGROUP.COM', 54),
(251, 48, 'EOS JKK', 'EOS_JKK@MEOGROUP.COM', 55),
(252, 48, 'EOS.OPS JKK', 'EOS.OPS_JKK@MEOGROUP.COM', 56),
(253, 48, 'EOS.OPS MMA.PR02', 'EOS.OPS.MMA.PR02@MEOGROUP.COM', 57),
(254, 48, 'EOS.KMO', 'EOS.KMO@MEOGROUP.COM', 58),
(255, 48, 'SAIPEM.ICHTHYS', 'SAIPEM.ICHTHYS@MEOGROUP.COM', 59),
(256, 48, 'OPERATIONS AUS', 'OPERATIONS_AUS@MEOGROUP.COM', 71),
(259, 59, 'BHARATRAJ', 'BHARATRAJ@SINGSYS.COM', 20),
(260, 59, 'BHARATRAJ', 'BHARATRAJ+1@SINGSYS.COM', 21),
(263, 61, 'BHARATRAJ', 'BHARATRAJ@SINGSYS.COM', 30),
(264, 62, 'BHARATRAJ', 'BHARATRAJ@SINGSYS.COM', 0),
(266, 33, 'FINANCE ME', 'FINANCE_ME@MEOGROUP.COM', 1),
(267, 63, 'BHARAT', 'BHARATRAJ+11@SINGSYS.COM', 0),
(269, 64, 'DSGFHGJHK', 'SETSE@SDFD.XDG', 0),
(270, 64, '', '', 0),
(271, 65, 'TEST', 'TEST@TEST', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meo_sections_entity`
--

CREATE TABLE `meo_sections_entity` (
  `id_section` int(11) UNSIGNED NOT NULL,
  `section_title` varchar(250) NOT NULL,
  `alias` enum('admin','contacts') NOT NULL DEFAULT 'admin',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_sections_entity`
--

INSERT INTO `meo_sections_entity` (`id_section`, `section_title`, `alias`, `created_on`) VALUES
(1, 'Admin /<br>Organisation Setup', 'admin', '2016-11-28 16:50:12'),
(2, 'Admin /<br>Vessel Setup', 'admin', '2016-11-28 16:50:36'),
(3, 'Admin /<br>Admin Setup', 'admin', '2016-11-28 16:51:33'),
(4, 'Admin /<br>Client Setup', 'admin', '2016-11-28 16:51:33'),
(5, 'Admin /<br>Others', 'admin', '2016-11-28 16:51:53'),
(6, 'Contacts /<br>Shore Personnel', 'contacts', '2016-12-04 20:52:26'),
(7, 'Contacts /<br>Vessels (MEO)', 'contacts', '2016-12-04 20:53:07'),
(8, 'Contacts /<br>3rd Party Vessels', 'contacts', '2016-12-04 20:53:07'),
(9, 'Contacts /<br>Organisation Groups', 'contacts', '2016-12-04 20:53:30');

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
(2, 'SHARJAH, UAE', 'Hamriyah Free Zone Ground 1 - Al Ettehad Street - United Arab Emirates', 'MICLYN OFFSHORE (MIDDLE EAST & AFRICA) FZE WAREHOUSE NO. IJ-08/1, HAMRIYAH FREE ZONE, PO BOX NO 42112, SHARJAH, UAE', 'Active', '2017-01-06 10:43:42', '2017-01-16 12:00:05'),
(3, 'AUSTRALIA', 'FREMANTLE, WESTERN AUSTRALIA, AUSTRALIA', 'MICLYN EXPRESS OFFSHORE (AUSTRALASIA) CORNER MEWS ROAD AND CAPO D’ORLANDO DRIVE FREMANTLE, WESTERN AUSTRALIA 6160 P.O. BOX 1864, FREMANTLE, WESTERN AUSTRALIA 6959', 'Active', '2017-01-10 04:58:07', '2017-01-20 11:56:17'),
(4, 'BANGKOK, THAILAND ', 'BANGKOK THAILAND', 'UNIWISE OFFSHORE LTD  25 ALMA LINK BUILDING, 11 FLOOR, SOI CHITLOM, PLOENCHIT ROAD, PATHUMWAN, BANKOK 10330, THAILAND', 'Active', '2017-02-01 01:02:31', '2017-02-02 14:00:03'),
(5, 'ABU DHABI, UAE', 'Abu Dhabi - United Arab Emirates', 'MICLYN EXPRESS OFFSHORE SHIP MANAGEMENT LLC, OFFICE NO. 601-3B, AL SAMAN TOWER, TOWER B, HAMDAN STREET, PO BOX 10807, ABU DHABI, UAE', 'Active', '2017-02-01 01:05:18', '0000-00-00 00:00:00'),
(6, 'DUBAI, UAE', 'Dubai - United Arab Emirates', 'EXPRESS OFFSHORE TRANSPORT (UAE) LLC, PORT SAID ACICO BUSINESS PARK OFFICE, 1ST FLOOR OFFICE 100 A13, DUBAI, UAE', 'Active', '2017-02-01 01:06:25', '0000-00-00 00:00:00'),
(7, 'BRUNEI', 'BRUNEI', 'MICLYN EXPRESS OFFSHORE (B) SDN BHD, NO.6, SIMPANG 28-5, JALAN MAULANA, KUALA BELAIT KA 1931, BRUNEI DARUSSALAM', 'Active', '2017-02-01 01:07:31', '2017-02-22 13:39:35'),
(8, 'MIRI, MALAYSIA', 'MIRI SARAWAK MALAYSIA', 'BINTANG SAMUDERA SDN BHD, LOT 2328 1ST FLOOR JALAN DATO MUIP BULATAN COMMERCIAL CENTRE, PIASAU, 98000 MIRI, SARAWAK, MALAYSIA', 'Active', '2017-02-01 01:08:53', '2017-02-02 14:00:10'),
(9, 'SATTAHIP,  THAILAND', 'Sattahip Chon Buri Thailand', 'UNIWISE OFFSHORE LTD, 234/37-38 MU. 6, TAMBOL SATTAHIP, TAMPHUR SATTAHIP, CHONBURI 20180, THAILAND', 'Active', '2017-02-01 01:10:50', '0000-00-00 00:00:00'),
(10, 'SONGKHLA, THAILAND', 'Songkhla Thailand', 'UNIWISE OFFSHORE LTD, 28 SUKHUM ROAD, TAMBOL BORYANG, AMPHUR MUANG, SONGKHLA90000, THAILAND', 'Active', '2017-02-01 01:11:41', '2017-02-02 13:59:51'),
(11, 'JAKARTA, INDONESIA', 'Jakarta Selatan, Jalan Kuningan Barat IV, West Kuningan, South Jakarta City, Special Capital Region of Jakarta, Indonesia', 'PT. SUKSES GRAHA SAMUDERA GD. PUSAT PERFILMAN H. USMAR ISMAIL JL. HR. RASUNA SAID KAV C. NO 22, KUNINGAN  JAKARTA SELATAN 12940, INDONESIA TEL: +62 21 5278823	  FAX: +62 21 5278819	 ', 'Active', '2017-02-01 20:58:22', '2017-02-02 14:00:49'),
(12, 'QATAR', 'QATAR PETROLEUM, WEST BAY, DOHA, QATAR', 'MICLYN EXPRESS OFFSHORE 14TH FLOOR COMMERCIAL BANK TOWER WEST BAY, DOHA - QATAR DOHA QATAR  97444528374', 'Active', '2017-02-01 22:31:44', '2017-02-02 14:02:53'),
(14, 'SAUDI ARABIA', '31941 Rahima, Riyadh, Saudi Arabia', 'BARWIL AGENCIES BLDG P.O BOX 174, RAHIMA 31941 RAS TANURA, SAUDI ARABIA  966136681376', 'Active', '2017-02-02 00:34:46', '0000-00-00 00:00:00');

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
(1, '3RD PARTY VESSEL NAME1', 1, 'VESSEL REMARK', 'active', '', '2017-01-06 14:11:28', '0000-00-00 00:00:00'),
(2, '3RD PARTY VESSEL NAME2', 2, 'VESSEL REMARK', 'active', '', '2017-01-06 14:12:36', '0000-00-00 00:00:00');

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
(1, '3RD PARTY VESSEL 1', 'active', '2017-01-06 14:07:57', '2017-01-07 14:38:07'),
(2, '3RD PARTY VESSEL 2', 'active', '2017-01-06 14:08:14', '0000-00-00 00:00:00'),
(3, '3RD PARTY VESSEL 3', 'active', '2017-01-06 14:08:22', '0000-00-00 00:00:00'),
(5, 'AKASH', 'active', '2017-02-09 05:06:37', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `meo_travel_discussion`
--

INSERT INTO `meo_travel_discussion` (`id_travel_discussion`, `id_travel_request`, `requester_id`, `discussion_message`, `date_time`, `link`, `attachement`, `image`) VALUES
(1, 1, 1, 'TEST MESSAGE', '2017-03-09 11:15:34', '', '', ''),
(2, 5, 1, 'MY TEST MESSAGE', '2017-03-09 02:05:30', '', '', ''),
(3, 5, 1, 'TEST MESSAGE WITH ATTACHMENT', '2017-03-09 02:06:53', '', '', ''),
(4, 5, 1, 'THIRD MESSAGE', '2017-03-09 02:10:23', '', '', ''),
(5, 7, 1, '343434 FSFSFSFS', '2017-03-09 04:57:10', '', '', ''),
(6, 11, 1, 'JHKHJKYJ', '2017-03-09 05:36:59', '', '', ''),
(7, 14, 1, 'MY MESSAGE', '2017-03-09 09:07:59', '', '', ''),
(8, 15, 1, 'MY MESSAGE', '2017-03-09 09:43:04', '', '', '');

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

--
-- Dumping data for table `meo_travel_discussion_attachment`
--

INSERT INTO `meo_travel_discussion_attachment` (`id_discussion_attachment`, `id_travel_discussion`, `discussion_attachment`, `added_on`) VALUES
(1, 3, 'cafa643cfd45a49383998d68af1b36b5.xls', '2017-03-09 14:06:53'),
(2, 4, 'afc579dd36e62ac117d63bd50f71348b.xls', '2017-03-09 14:10:23');

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

--
-- Dumping data for table `meo_travel_discussion_image_attachment`
--

INSERT INTO `meo_travel_discussion_image_attachment` (`id_discussion_image`, `id_travel_discussion`, `discussion_image`, `added_on`) VALUES
(1, 3, '8a4e1c9982ae42d0ddf56bd82ba317f6.jpg', '2017-03-09 14:06:53'),
(2, 4, '3ee5dfaceb85fb84091bf7b9751053d6.jpg', '2017-03-09 14:10:23');

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

--
-- Dumping data for table `meo_travel_discussion_link_attachment`
--

INSERT INTO `meo_travel_discussion_link_attachment` (`id_discussion_link`, `id_travel_discussion`, `discussion_link`, `added_on`) VALUES
(1, 4, 'WWW.GOOGLE.COM', '2017-03-09 14:10:23');

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

--
-- Dumping data for table `meo_travel_discussion_notifiers`
--

INSERT INTO `meo_travel_discussion_notifiers` (`id_travel_notifier`, `id_travel_discussion`, `notify_to`, `added_on`) VALUES
(1, 1, '26', '2017-03-09 11:15:34'),
(2, 1, '29', '2017-03-09 11:15:34'),
(3, 2, '24', '2017-03-09 14:05:31'),
(4, 2, '29', '2017-03-09 14:05:31'),
(5, 3, '27', '2017-03-09 14:06:53'),
(6, 3, '21', '2017-03-09 14:06:53'),
(7, 3, '29', '2017-03-09 14:06:53'),
(8, 4, '26', '2017-03-09 14:10:23'),
(9, 4, '11', '2017-03-09 14:10:23'),
(10, 5, '29', '2017-03-09 16:57:10'),
(11, 5, '28', '2017-03-09 16:57:10'),
(12, 6, '11', '2017-03-09 17:36:59'),
(13, 7, '27', '2017-03-09 21:07:59'),
(14, 7, '17', '2017-03-09 21:07:59'),
(15, 7, '26', '2017-03-09 21:07:59'),
(16, 8, '14', '2017-03-09 21:43:05'),
(17, 8, '23', '2017-03-09 21:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_request`
--

CREATE TABLE `meo_travel_request` (
  `id_travel_request` int(11) NOT NULL,
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

--
-- Dumping data for table `meo_travel_request`
--

INSERT INTO `meo_travel_request` (`id_travel_request`, `requester_id`, `id_meo_user`, `billing_entity_type`, `billing_entity_id`, `purpose_of_travel`, `trip_type`, `flight_details`, `airline`, `fare_class_list`, `travel_period_from`, `travel_period_to`, `est_airfare_currency`, `est_airfare_price`, `accomodation_details`, `daily_room_rate_currency`, `daily_room_rate_price`, `hotel_cost_currency`, `hotel_cost_price`, `status`, `added_on`, `updated_on`) VALUES
(1, 1, 20, 'department', '7', 'TEST PURPOSE', 'one-way', 'TEST FLIGHT', 'AIRLINE TEST', 'business', '2017-03-08', '0000-00-00', 98, '12.00', 'ASSAS', 98, '121.00', 98, '1210.00', 'draft', '2017-03-09 11:15:34', '2017-03-09 11:15:34'),
(2, 1, 11, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 12:09:59', '2017-03-09 12:09:59'),
(3, 1, 11, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 12:39:33', '2017-03-09 12:39:33'),
(4, 1, 11, 'region', NULL, 'ASDFGH', '', 'ASDFGH', 'SINGAPORE AIRLINES', 'business', '2017-03-08', '0000-00-00', 225, '1000.00', 'ASDFGHJKS', 225, '123456.00', 225, '1234.00', 'submitted', '2017-03-09 12:45:32', '2017-03-09 12:45:32'),
(5, 1, 12, 'vessel', '10', 'MY TEST PURPOSE', 'one-way', 'TEST FLIGHT', 'TEST AIRLINE', 'economy', '2017-03-08', '0000-00-00', 30, '22.00', 'ACCOMODATION TEST', 30, '123.00', 30, '12345.00', 'draft', '2017-03-09 14:10:22', '2017-03-09 14:10:22'),
(6, 1, 11, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 16:32:39', '2017-03-09 16:32:39'),
(7, 1, 12, 'department', '7', 'ASASASA', 'roundtrip', 'ASASAS', 'ASASAS', 'business', '2017-03-06', '2017-03-09', 69, '33.00', 'ADEWE', 69, '4343.00', 69, '3434.00', 'draft', '2017-03-09 17:08:49', '2017-03-09 17:08:49'),
(8, 1, 11, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 16:58:50', '2017-03-09 16:58:50'),
(9, 1, 265, '', '', 'TESTING', '', 'SSDF', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 17:32:52', '2017-03-09 17:32:52'),
(10, 1, 265, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 17:33:47', '2017-03-09 17:33:47'),
(11, 1, 34, 'vessel', '17', 'MY PURPOSE TO CHECK', 'one-way', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 19:20:29', '2017-03-09 19:20:29'),
(12, 1, 36, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-09 17:37:33', '2017-03-09 17:37:33'),
(14, 1, 12, 'vessel', '9,46', 'SNDSNDSNDS D', 'one-way', 'DSDSDSD', 'DSDSDSDSDD', 'business', '2017-03-06', '0000-00-00', 18, '343434.00', 'ZXZSD', 18, '4343.00', 18, '99999999.99', 'draft', '2017-03-09 21:07:58', '2017-03-09 21:07:58'),
(15, 1, 15, 'vessel', '15', 'DSDSDSD', 'one-way', 'WQWQWQ', 'QWQWQWQ', 'business', '2017-03-01', '0000-00-00', 4, '3323.00', 'DSKNDNSDN', 4, '434.00', 4, '343434.00', 'draft', '2017-03-09 21:43:04', '2017-03-09 21:43:04'),
(17, 1, 11, 'vessel', '112,94,112', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-03-29 22:51:21', '2017-03-29 22:51:21'),
(18, 1, 11, 'vessel', '95', 'dxsdsdsdsdsd', '', 'dsdsdsds', 'DSDSDSDS', 'business', '2017-03-15', '0000-00-00', 225, '4443.00', 'dsdsdsdsd', 225, '121.00', 225, '1210.00', 'submitted', '2017-03-29 23:39:24', '2017-03-29 23:39:24'),
(19, 1, 11, '', '', '', '', '', '', 'business', '0000-00-00', '0000-00-00', 225, '0.00', '', 225, '0.00', 225, '0.00', 'draft', '2017-06-14 16:27:31', '2017-06-14 16:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `meo_travel_request_approvers`
--

CREATE TABLE `meo_travel_request_approvers` (
  `id_travel_request_approver` int(11) NOT NULL,
  `id_travel_request` int(11) NOT NULL,
  `approvers_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_travel_request_approvers`
--

INSERT INTO `meo_travel_request_approvers` (`id_travel_request_approver`, `id_travel_request`, `approvers_id`, `date_time`, `added_on`) VALUES
(1, 1, 15, '2017-03-08 16:06:19', '2017-03-08 16:06:19'),
(2, 1, 57, '2017-03-08 16:06:19', '2017-03-08 16:06:19'),
(3, 1, 27, '2017-03-09 11:15:34', '2017-03-09 11:15:34'),
(4, 1, 29, '2017-03-09 11:15:34', '2017-03-09 11:15:34'),
(5, 2, 11, '2017-03-09 12:09:59', '2017-03-09 12:09:59'),
(6, 2, 11, '2017-03-09 12:09:59', '2017-03-09 12:09:59'),
(7, 3, 11, '2017-03-09 12:39:34', '2017-03-09 12:39:34'),
(8, 3, 11, '2017-03-09 12:39:34', '2017-03-09 12:39:34'),
(9, 4, 106, '2017-03-09 12:45:32', '2017-03-09 12:45:32'),
(10, 4, 106, '2017-03-09 12:45:32', '2017-03-09 12:45:32'),
(11, 5, 16, '2017-03-09 14:05:31', '2017-03-09 14:05:31'),
(12, 5, 39, '2017-03-09 14:05:31', '2017-03-09 14:05:31'),
(13, 5, 11, '2017-03-09 14:10:23', '2017-03-09 14:10:23'),
(14, 5, 11, '2017-03-09 14:10:23', '2017-03-09 14:10:23'),
(15, 6, 11, '2017-03-09 16:32:39', '2017-03-09 16:32:39'),
(16, 6, 11, '2017-03-09 16:32:39', '2017-03-09 16:32:39'),
(20, 8, 11, '2017-03-09 16:58:51', '2017-03-09 16:58:51'),
(21, 8, 11, '2017-03-09 16:58:51', '2017-03-09 16:58:51'),
(24, 7, 11, '2017-03-09 17:08:50', '2017-03-09 17:08:50'),
(25, 7, 11, '2017-03-09 17:08:50', '2017-03-09 17:08:50'),
(26, 9, 11, '2017-03-09 17:32:52', '2017-03-09 17:32:52'),
(27, 9, 11, '2017-03-09 17:32:52', '2017-03-09 17:32:52'),
(28, 10, 11, '2017-03-09 17:33:47', '2017-03-09 17:33:47'),
(29, 10, 11, '2017-03-09 17:33:47', '2017-03-09 17:33:47'),
(33, 12, 11, '2017-03-09 17:37:33', '2017-03-09 17:37:33'),
(34, 12, 11, '2017-03-09 17:37:33', '2017-03-09 17:37:33'),
(37, 11, 11, '2017-03-09 19:20:29', '2017-03-09 19:20:29'),
(38, 11, 11, '2017-03-09 19:20:29', '2017-03-09 19:20:29'),
(39, 11, 106, '2017-03-09 19:20:29', '2017-03-09 19:20:29'),
(40, 11, 21, '2017-03-09 19:20:29', '2017-03-09 19:20:29'),
(41, 14, 13, '2017-03-09 21:07:59', '2017-03-09 21:07:59'),
(42, 14, 28, '2017-03-09 21:07:59', '2017-03-09 21:07:59'),
(43, 14, 29, '2017-03-09 21:07:59', '2017-03-09 21:07:59'),
(44, 15, 14, '2017-03-09 21:43:05', '2017-03-09 21:43:05'),
(45, 15, 23, '2017-03-09 21:43:05', '2017-03-09 21:43:05'),
(46, 16, 11, '2017-03-14 15:36:02', '2017-03-14 15:36:02'),
(47, 16, 11, '2017-03-14 15:36:02', '2017-03-14 15:36:02'),
(48, 13, 11, '2017-03-29 13:45:26', '2017-03-29 13:45:26'),
(49, 13, 11, '2017-03-29 13:45:26', '2017-03-29 13:45:26'),
(50, 17, 11, '2017-03-29 22:51:21', '2017-03-29 22:51:21'),
(51, 17, 11, '2017-03-29 22:51:21', '2017-03-29 22:51:21'),
(52, 18, 11, '2017-03-29 23:39:24', '2017-03-29 23:39:24'),
(53, 18, 11, '2017-03-29 23:39:24', '2017-03-29 23:39:24'),
(54, 19, 11, '2017-06-14 16:27:32', '2017-06-14 16:27:32'),
(55, 19, 11, '2017-06-14 16:27:32', '2017-06-14 16:27:32');

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

--
-- Dumping data for table `meo_travel_request_countries`
--

INSERT INTO `meo_travel_request_countries` (`id_travel_request_country`, `id_travel_request`, `from_country_id`, `to_country_id`, `added_on`) VALUES
(1, 1, 3, 36, '2017-03-09 11:15:34'),
(2, 2, 3, 3, '2017-03-09 12:09:59'),
(3, 3, 3, 3, '2017-03-09 12:39:34'),
(4, 4, 198, 105, '2017-03-09 12:45:32'),
(7, 5, 3, 19, '2017-03-09 14:10:23'),
(8, 6, 3, 3, '2017-03-09 16:32:39'),
(10, 8, 3, 3, '2017-03-09 16:58:51'),
(12, 7, 3, 5, '2017-03-09 17:08:50'),
(13, 7, 8, 17, '2017-03-09 17:08:50'),
(14, 9, 105, 198, '2017-03-09 17:32:52'),
(15, 10, 3, 3, '2017-03-09 17:33:47'),
(17, 12, 3, 3, '2017-03-09 17:37:33'),
(19, 11, 3, 3, '2017-03-09 19:20:29'),
(20, 14, 3, 3, '2017-03-09 21:07:59'),
(21, 15, 3, 3, '2017-03-09 21:43:04'),
(22, 15, 3, 1, '2017-03-09 21:43:04'),
(25, 17, 3, 3, '2017-03-29 22:51:21'),
(26, 18, 3, 3, '2017-03-29 23:39:24'),
(27, 19, 3, 3, '2017-06-14 16:27:32');

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

--
-- Dumping data for table `meo_travel_request_privacy`
--

INSERT INTO `meo_travel_request_privacy` (`id_travel_privacy`, `id_travel_request`, `privacy_type`, `personnel_ids`, `group_ids`) VALUES
(14, 1, 'private', NULL, NULL),
(15, 2, 'public', NULL, NULL),
(16, 3, 'public', NULL, NULL),
(17, 4, 'private', NULL, NULL),
(18, 5, 'public', NULL, NULL),
(19, 5, 'public', NULL, NULL),
(20, 5, 'public', NULL, NULL),
(21, 6, 'public', NULL, NULL),
(23, 8, 'public', NULL, NULL),
(25, 7, 'private', '12,14', '21,29,30'),
(26, 9, 'public', NULL, NULL),
(27, 10, 'public', NULL, NULL),
(29, 12, 'public', NULL, NULL),
(31, 11, 'public', NULL, NULL),
(32, 14, 'private', NULL, NULL),
(33, 15, 'private', NULL, NULL),
(34, 16, 'private', '11,12,13,14', '21,29,34'),
(35, 13, 'public', '', NULL),
(36, 17, 'public', '', NULL),
(37, 18, 'public', '', NULL),
(38, 19, 'public', '', NULL);

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
(1, 'ADMIN', 'ADMIN', 'sana@singsys.com', 0x383437313837, 'Super Admin', '2016-10-03 17:56:03', '2017-07-07 05:20:36'),
(4, 'CLIENTUSER1', 'ABHAY', 'ABHAY@SINGSYS.COM', 0x313233343536, 'Client', '2017-01-06 11:48:22', '2017-01-20 17:25:10'),
(5, 'CLIENTUSER2', 'ARINDAM', 'ARINDAM@SINGSYS.COM', 0x313233343536, 'Client', '2017-01-06 11:51:12', '2017-01-09 15:39:57'),
(7, '00296', 'BHARATRAJ CLIENT USER', 'BHARATRAJ+1@SINGSYS.COM', 0x4c75636b6e6f772531, 'Client', '2017-01-09 01:28:39', '2017-01-17 21:11:34'),
(15, 'E0003', 'ONG CHEE WEE', 'CHEEWEE.ONG@MEOGROUP.COM', 0x343933313331, 'MEO User', '2017-01-16 00:28:25', '0000-00-00 00:00:00'),
(16, 'E0007', 'SABRIDO RHYAN DELOS REYES', 'RHYAN.SABRIDO@MEOGROUP.COM', 0x353831323237, 'MEO User', '2017-01-16 00:32:25', '0000-00-00 00:00:00'),
(17, 'E0008', 'COLIN DAVID TREWHELLA', 'COLIN.TREWHELLA@MEOGROUP.COM', 0x343339353832, 'MEO User', '2017-01-16 00:41:55', '0000-00-00 00:00:00'),
(18, 'E0001', 'MARK PETER VAN DER MOLEN', 'MARK.VANDERMOLEN@MEOGROUP.COM', 0x343639393531, 'MEO User', '2017-01-16 00:43:27', '0000-00-00 00:00:00'),
(19, 'E0010', 'NG WEI LING CANDICE', 'CANDICE.NG@MEOGROUP.COM', 0x373636323532, 'MEO User', '2017-01-16 00:44:30', '0000-00-00 00:00:00'),
(20, 'E0013', 'IGLESIAS CARRICHES CLAUDIA', 'CLAUDIA.IGLESIAS@MEOGROUP.COM', 0x343631313834, 'MEO User', '2017-01-16 00:46:47', '0000-00-00 00:00:00'),
(21, 'E0016', 'MARICAR ZOLETA MANLAPAZ', 'MARICAR.ZOLETAMANLAPAZ@MEOGROUP.COM', 0x313739363231, 'MEO User', '2017-01-16 00:50:32', '0000-00-00 00:00:00'),
(22, 'E0022', 'SUNIL SINGH', 'SUNIL.SINGH@MEOGROUP.COM', 0x393137323538, 'MEO User', '2017-01-16 00:51:51', '0000-00-00 00:00:00'),
(23, 'E0026', 'NATALIE WEICHMANN', 'NATALIE.WEICHMANN@MEOGROUP.COM', 0x313234323138, 'MEO User', '2017-01-16 00:53:00', '0000-00-00 00:00:00'),
(24, 'E0031', 'GOH TING TING', 'TINGTING.GOH@MEOGROUP.COM', 0x353936393634, 'MEO User', '2017-01-16 00:57:16', '0000-00-00 00:00:00'),
(25, 'E0032', 'CAHYA AWAL', 'CAHYA.AWAL@MEOGROUP.COM', 0x353539333434, 'MEO User', '2017-01-16 00:58:35', '0000-00-00 00:00:00'),
(26, 'E0033', 'EUGENE TEO YU-CHNG', 'EUGENE.TEO@MEOGROUP.COM', 0x393533353834, 'MEO User', '2017-01-16 00:59:53', '0000-00-00 00:00:00'),
(27, 'S00001', 'TAN HEE HUA', 'HEE-HUA.TAN@MEOGROUP.COM', 0x393937323537, 'MEO User', '2017-01-16 01:01:10', '0000-00-00 00:00:00'),
(28, 'S00004', 'POH CHING HOON', 'CHING-HOON.POH@MEOGROUP.COM', 0x383238393535, 'MEO User', '2017-01-16 01:03:28', '0000-00-00 00:00:00'),
(29, 'S00036', 'JOYCELYN WONG PUI YEE', 'JOYCELYN.WONG@MEOGROUP.COM', 0x323132393937, 'MEO User', '2017-01-16 01:05:27', '0000-00-00 00:00:00'),
(30, 'S00058', 'MOHAMED ARIS BIN MUSA', 'MOHD.ARIS@MEOGROUP.COM', 0x313536323438, 'MEO User', '2017-01-16 01:07:16', '0000-00-00 00:00:00'),
(31, 'S00110', 'JANE ALLAN', 'JANE.ALLAN@MEOGROUP.COM', 0x373432333535, 'MEO User', '2017-01-16 01:10:50', '0000-00-00 00:00:00'),
(32, 'S00112', 'ADAM RALEIGH CLAYTON', 'ADAM.CLAYTON@MEOGROUP.COM', 0x313438383739, 'MEO User', '2017-01-16 01:14:55', '0000-00-00 00:00:00'),
(33, 'S00134', 'HONG SHUMIN', 'SHUMIN.HONG@MEOGROUP.COM', 0x313335383439, 'MEO User', '2017-01-16 01:18:38', '0000-00-00 00:00:00'),
(34, 'S00150', 'NORAZLINA BINTE SANIN', 'NORAZLINA.SANIN@MEOGROUP.COM', 0x383434343737, 'MEO User', '2017-01-16 01:20:00', '0000-00-00 00:00:00'),
(35, 'S00157', 'LINA BINTE SOHO', 'LINA.SOHO@MEOGROUP.COM', 0x343739333638, 'MEO User', '2017-01-16 01:21:20', '0000-00-00 00:00:00'),
(36, '963', 'ARINDAM1', 'BHARATRAJ+11@SINGSYS.COM', 0x393933383732, 'MEO User', '2017-01-16 07:52:55', '0000-00-00 00:00:00'),
(37, 'S00168', 'LAI CHEE YONG', 'CHEEYONG.LAI@MEOGROUP.COM', 0x373133363932, 'MEO User', '2017-01-16 22:07:47', '0000-00-00 00:00:00'),
(38, 'S00178', 'DOYLE CHAVEZ FIGUERAS', 'DOYLE.FIGUERAS@MEOGROUP.COM', 0x393239343831, 'MEO User', '2017-01-16 22:08:35', '0000-00-00 00:00:00'),
(39, 'S00189', 'AU PEI KWAN', 'PEIKWAN.AU@MEOGROUP.COM', 0x373633373136, 'MEO User', '2017-01-16 22:10:14', '0000-00-00 00:00:00'),
(40, 'S00193', 'LIM BENG HWEE', 'BENGHWEE.LIM@MEOGROUP.COM', 0x363232383237, 'MEO User', '2017-01-16 22:12:03', '0000-00-00 00:00:00'),
(41, 'S00197', 'CHRISTOPHER DAVID WHITE', 'CHRISTOPHER.WHITE@MEOGROUP.COM', 0x373138383434, 'MEO User', '2017-01-16 22:12:37', '0000-00-00 00:00:00'),
(42, 'S00203', 'IAN JESTER ERAS REYES', 'IAN.REYES@MEOGROUP.COM', 0x363536383933, 'MEO User', '2017-01-16 22:13:26', '0000-00-00 00:00:00'),
(43, 'S00234', 'ONG PEI LING, WENDY', 'WENDY.ONG@MEOGROUP.COM', 0x313335333338, 'MEO User', '2017-01-16 22:15:55', '0000-00-00 00:00:00'),
(44, 'S00239', 'VERNON LOW CHUN HWEE', 'VERNON.LOW@MEOGROUP.COM', 0x393132373632, 'MEO User', '2017-01-16 22:16:35', '0000-00-00 00:00:00'),
(45, 'S00240', 'MUHAMMAD ADDY FHAIRUZ FERNANDEZ', 'ADDY.FERNANDEZ@MEOGROUP.COM', 0x323332353139, 'MEO User', '2017-01-16 22:18:29', '0000-00-00 00:00:00'),
(46, 'S00247', 'CHEN YING LEI', 'CHEN.YINGLEI@MEOGROUP.COM', 0x393234333731, 'MEO User', '2017-01-16 22:20:57', '0000-00-00 00:00:00'),
(47, 'S00269', 'DEREK LO SHEN LEONG', 'DEREK.LO@MEOGROUP.COM', 0x313831343731, 'MEO User', '2017-01-16 22:22:23', '0000-00-00 00:00:00'),
(48, 'S00278', 'ONG BOON SENG', 'BOONSENG.ONG@MEOGROUP.COM', 0x343332383536, 'MEO User', '2017-01-16 22:24:36', '0000-00-00 00:00:00'),
(49, 'S00283', 'FOONG LAI LENG, LINDY', 'LINDY.FOONG@MEOGROUP.COM', 0x373639383736, 'MEO User', '2017-01-16 22:40:58', '0000-00-00 00:00:00'),
(50, 'S00291', 'WEE HANQUN', 'HANQUN.WEE@MEOGROUP.COM', 0x383535373938, 'MEO User', '2017-01-16 22:45:58', '0000-00-00 00:00:00'),
(51, 'S00296', 'LALITHA NAIR', 'LALITHA.NAIR@MEOROUP.COM', 0x313231343431, 'MEO User', '2017-01-16 22:48:17', '0000-00-00 00:00:00'),
(52, 'S00317', 'BURHANUDDIN BIN MOHAMAD', 'BURHAN.MOHD@MEOGROUP.COM', 0x313233343431, 'MEO User', '2017-01-16 22:50:58', '0000-00-00 00:00:00'),
(53, 'S00321', 'VENKATRAMAN SHESHASHAYEE', 'VSHESH@MEOGROUP.COM', 0x363337343832, 'MEO User', '2017-01-16 22:52:52', '0000-00-00 00:00:00'),
(54, 'S00322', 'CHONG SIN KEONG', 'SINKEONG.CHONG@MEOGROUP.COM', 0x363237333334, 'MEO User', '2017-01-16 22:53:32', '0000-00-00 00:00:00'),
(55, 'S00327', 'ANKUSH SHAM AGARWAL', 'ANKUSH.AGARWAL@MEOGROUP.COM', 0x353132393837, 'MEO User', '2017-01-16 22:57:44', '0000-00-00 00:00:00'),
(56, 'S00328', 'LIM CHEE HOE', 'CHEEHOE.LIM@MEOGROUP.COM', 0x343237343433, 'MEO User', '2017-01-16 22:58:29', '0000-00-00 00:00:00'),
(57, 'S00329', 'NORRASHIDAH BINTE MOHAMED', 'NORRASHIDAH.MOHAMED@MEOGROUP.COM', 0x393435343138, 'MEO User', '2017-01-16 22:59:35', '0000-00-00 00:00:00'),
(58, 'S00339', 'SATHISVARAN CHIDAMBARAM', 'SATHIS.CHIDAMBARAM@MEOGROUP.COM', 0x313133383431, 'MEO User', '2017-01-16 23:01:14', '0000-00-00 00:00:00'),
(59, 'S00341', 'XIE ZIHUI', 'ZIHUI.XIE@MEOGROUP.COM', 0x383135393838, 'MEO User', '2017-01-16 23:02:32', '0000-00-00 00:00:00'),
(60, 'S00343', 'INDRANIL MAJUMDAR', 'INDRANIL.MAJUMDAR@MEOGROUP.COM', 0x333239313131, 'MEO User', '2017-01-16 23:03:06', '0000-00-00 00:00:00'),
(61, 'S00349', 'MILI SANJAY VERMA', 'MILI.VERMA@MEOGROUP.COM', 0x313431393833, 'MEO User', '2017-01-16 23:09:22', '0000-00-00 00:00:00'),
(62, 'S00357', 'CHENG CAREEN', 'CAREEN.CHENG@MEOGROUP.COM', 0x323339393636, 'MEO User', '2017-01-16 23:11:15', '0000-00-00 00:00:00'),
(64, 'S00358', 'NANDWANI REKHA DULAMAL', 'REKHA.NANDWANI@MEOGROUP.COM', 0x323435363233, 'MEO User', '2017-01-16 23:13:51', '2017-02-13 01:36:36'),
(65, 'S00362', 'RAO INNA SHREYAS CHANDRAKANTHA', 'SHREYAS.RAO@MEOGROUP.COM', 0x323332383136, 'MEO User', '2017-01-16 23:17:30', '0000-00-00 00:00:00'),
(66, 'S00363', 'VERA ONG SIXIAN', 'VERA.ONG@MEOGROUP.COM', 0x353833363436, 'MEO User', '2017-01-17 00:42:01', '0000-00-00 00:00:00'),
(67, 'S00365', 'TAN LEA JOO', 'LEA.JOO@MEOGROUP.COM', 0x343635343836, 'MEO User', '2017-01-17 00:42:57', '0000-00-00 00:00:00'),
(68, 'S00366', 'SANDRA  JERNIGAN', 'SANDRA.JERNIGAN@MEOGROUP.COM', 0x393937323831, 'MEO User', '2017-01-17 00:43:49', '0000-00-00 00:00:00'),
(69, 'S00367', 'LIM HUI SHAN', 'HUISHAN.LIM@MEOGROUP.COM', 0x313134353832, 'MEO User', '2017-01-17 00:44:55', '0000-00-00 00:00:00'),
(297, 'S00368', 'NICHOLAS SEET CHONG KUN', 'NICHOLAS.SEET@MEOGROUP.COM', 0x383732333437, 'MEO User', '2017-01-17 00:50:13', '0000-00-00 00:00:00'),
(298, 'S00373', 'LIM LI JU', 'LIJU.LIM@MEOGROUP.COM', 0x373439383739, 'MEO User', '2017-01-17 00:51:12', '0000-00-00 00:00:00'),
(299, 'S00375', 'HEMA  MANOHARAN', 'HEMA.MANOHARAN@MEOGROUP.COM', 0x373332333533, 'MEO User', '2017-01-17 00:51:56', '0000-00-00 00:00:00'),
(300, 'S00377', ' ARNOLD SILAO', 'ARNOLD.SILAO@MEOGROUP.COM', 0x323734353239, 'MEO User', '2017-01-17 00:53:04', '0000-00-00 00:00:00'),
(301, 'S00378', 'AKAASH GANESH', 'AKAASH.GANESH@MEOGROUP.COM', 0x333436323234, 'MEO User', '2017-01-17 00:53:40', '0000-00-00 00:00:00'),
(302, 'S00379', 'LEE WEI JIE', 'WEIJIE.LEE@MEOGROUP.COM', 0x353339323635, 'MEO User', '2017-01-17 00:59:43', '0000-00-00 00:00:00'),
(303, 'S00382', 'ABHIJIT DESHMUKH', 'ABHIJIT.DESHMUKH@MEOGROUP.COM', 0x323637363839, 'MEO User', '2017-01-17 01:01:02', '0000-00-00 00:00:00'),
(304, 'S00383', 'SOPHIE TAN JIA HUI ', 'SOPHIE.TAN@MEOGROUP.COM', 0x393537343334, 'MEO User', '2017-01-17 01:01:44', '0000-00-00 00:00:00'),
(305, 'S00384', 'HUZAIFA', 'HUZAIFA@MEOGROUP.COM', 0x313439313433, 'MEO User', '2017-01-17 01:02:20', '0000-00-00 00:00:00'),
(306, 'S00387', 'LEE SHIN HUAY', 'SHINHUAY.LEE@MEOGROUP.COM', 0x363633353135, 'MEO User', '2017-01-17 01:09:26', '0000-00-00 00:00:00'),
(307, 'S00389', 'SANKET ASHOK SHUKLA', 'SANKET.SHUKLA@MEOGROUP.COM', 0x343634343536, 'MEO User', '2017-01-17 01:11:19', '0000-00-00 00:00:00'),
(308, 'S00390', 'KEN LIVINGSTONE', 'KEN.LIVINGSTONE@MEOGROUP.COM', 0x393736333833, 'MEO User', '2017-01-17 01:12:30', '0000-00-00 00:00:00'),
(309, 'S00392', 'JOYCE LIM ', 'JOYCE.LIM@MEOGROUP.COM', 0x393132343338, 'MEO User', '2017-01-17 01:13:09', '0000-00-00 00:00:00'),
(310, 'S00393', 'CHAN HUI PENG', 'HUIPENG.CHAN@MEOGROUP.COM', 0x333933373231, 'MEO User', '2017-01-17 01:13:51', '0000-00-00 00:00:00'),
(311, 'S00394', 'LEONG SOOK MEI', 'SOOKMEI.LEONG@MEOGROUP.COM', 0x313634373138, 'MEO User', '2017-01-17 01:15:17', '0000-00-00 00:00:00'),
(312, 'S00395', 'FARRUKH SHOAIB QURESHI', 'FARRUKH.QURESHI@MEOGROUP.COM', 0x363936363232, 'MEO User', '2017-01-17 01:16:04', '0000-00-00 00:00:00'),
(313, 'T00078', 'JYNETTE LOWIS ', 'JYNETTE.LOWIS@MEOGROUP.COM', 0x393731343838, 'MEO User', '2017-01-17 01:16:47', '0000-00-00 00:00:00'),
(314, 'S00026', 'ALI HUSSAIN', 'ALI.HUSSAIN@MEOGROUP.COM', 0x323838353938, 'MEO User', '2017-01-17 01:18:13', '0000-00-00 00:00:00'),
(315, 'S00316', 'MATHANRAJ VEERASAMY', 'MATHANRAJ.VEERASAMY@MEOGROUP.COM', 0x393837383737, 'MEO User', '2017-01-17 01:19:12', '0000-00-00 00:00:00'),
(316, 'S00319', 'KISHORE SEGAR', 'KISHORE.SEGAR@MEOGROUP.COM', 0x393339353436, 'MEO User', '2017-01-17 01:21:31', '0000-00-00 00:00:00'),
(317, 'S00355', 'BHARANI KUMAR PALAKODETI', 'KUMAR.PAL@MEOGROUP.COM', 0x353834333532, 'MEO User', '2017-01-17 01:22:38', '0000-00-00 00:00:00'),
(318, 'S00352', 'CLAYTON HOSANNA', 'CLAYTON.HOSANNA@MEOGROUP.COM', 0x343436323734, 'MEO User', '2017-01-17 01:23:25', '0000-00-00 00:00:00'),
(319, '1', 'DIEDERIK DE BOER', 'DIEDERIK.DEBOER@MEOGROUP.COM', 0x393235333335, 'MEO User', '2017-01-17 01:50:11', '0000-00-00 00:00:00'),
(320, 'E0015', 'CRIS RYAN INDIG ENTERA', 'CRIS.RYAN@MEOGROUP.COM', 0x363238313438, 'MEO User', '2017-01-17 01:57:23', '0000-00-00 00:00:00'),
(321, 'E0030', 'JED IGOT', 'JED.IGOT@MEOGROUP.COM', 0x333736343937, 'MEO User', '2017-01-17 02:01:03', '0000-00-00 00:00:00'),
(323, 'S00290', 'JOAN LAW', 'JOAN.LAW@MEOGROUP.COM', 0x313833383331, 'MEO User', '2017-01-17 02:19:38', '0000-00-00 00:00:00'),
(324, 'S00161', 'EBEN TAN ', 'EBEN.TAN@MEOGROUP.COM', 0x353633363837, 'MEO User', '2017-01-17 02:25:07', '0000-00-00 00:00:00'),
(325, 'S00331', 'JOSHUA LAM KHIAN KOK', 'JOSHUA.LAM@MEOGROUP.COM', 0x353932343531, 'MEO User', '2017-01-17 03:03:36', '0000-00-00 00:00:00'),
(326, 'S00334', 'NYEIN CHAN AUNG', 'AUNG.NYEINCHAN@MEOGROUP.COM', 0x313735343738, 'MEO User', '2017-01-17 03:08:08', '0000-00-00 00:00:00'),
(327, 'S00337', 'KELLY ZHANG JING', 'KELLY.ZHANG@MEOGROUP.COM', 0x313338383332, 'MEO User', '2017-01-17 03:16:07', '0000-00-00 00:00:00'),
(329, 'S00025', 'RYAN JIANG', 'HAIBO.JIANG@MEOGROUP.COM', 0x363338373536, 'MEO User', '2017-01-17 03:21:45', '0000-00-00 00:00:00'),
(330, 'S00081', 'ELAINE CHUAH', 'ELAINE.CHUAH@MEOGROUP.COM', 0x353732383339, 'MEO User', '2017-01-17 03:23:35', '0000-00-00 00:00:00'),
(331, 'S00204', 'CHRISTINA LING', 'CHRISTINA.LING@MEOGROUP.COM', 0x323934343431, 'MEO User', '2017-01-17 03:26:13', '0000-00-00 00:00:00'),
(332, 'S00207', 'ELIZABETH WONG', 'ELIZABETH.WONG@MEOGROUP.COM', 0x353133373439, 'MEO User', '2017-01-17 03:30:01', '0000-00-00 00:00:00'),
(333, 'E0028', 'SHAWN WONG', 'SHAWN.WONG@MEOGROUP.COM', 0x313538323338, 'MEO User', '2017-01-17 03:36:08', '0000-00-00 00:00:00'),
(334, 'S00211', 'ALEZS WONG', 'ALEZS.WONG@MEOGROUP.COM', 0x363737353838, 'MEO User', '2017-01-17 03:37:35', '0000-00-00 00:00:00'),
(335, 'S00007', 'JANICE TENG ', 'JANICE.TENG@MEOGROUP.COM', 0x373639343437, 'MEO User', '2017-01-17 03:50:05', '0000-00-00 00:00:00'),
(336, 'S00014', 'DARREN ANG', 'DARREN.ANG@MEOGROUP.COM', 0x313432353833, 'MEO User', '2017-01-17 04:02:25', '0000-00-00 00:00:00'),
(337, '225', 'BHARATRAJ', 'BHARATRAJ+2@SINGSYS.COM', 0x333539333533, 'MEO User', '2017-01-17 04:04:07', '0000-00-00 00:00:00'),
(338, 'S00241', 'ELAINE TAY', 'ELAINE.TAY@MEOGROUP.COM', 0x333938353634, 'MEO User', '2017-01-17 04:08:11', '0000-00-00 00:00:00'),
(339, '296', 'BHARATRAJ MEO USER', 'BHARATRAJ@SINGSYS.COM', 0x4c75636b6e6f772531, 'MEO User', '2017-01-17 04:08:16', '2017-02-06 13:40:34'),
(340, 'S00297', 'ALIS KHOO ', 'ALIS.KHOO@MEOGROUP.COM', 0x323438313738, 'MEO User', '2017-01-17 04:10:25', '0000-00-00 00:00:00'),
(341, 'S00253', 'KAMMY TAN', 'KAMMY.TAN@MEOGROUP.COM', 0x373133353638, 'MEO User', '2017-01-17 04:12:34', '0000-00-00 00:00:00'),
(342, 'S00242', 'JAMES LIM', 'JAMES.LIM@MEOGROUP.COM', 0x373631353532, 'MEO User', '2017-01-17 04:13:47', '0000-00-00 00:00:00'),
(343, 'S00263', 'LEON LIM', 'LEON.LIM@MEOGROUP.COM', 0x383937333333, 'MEO User', '2017-01-17 04:15:58', '0000-00-00 00:00:00'),
(344, 'S00180', 'LEWIS LOW', 'LEWIS.LOW@MEOGROUP.COM', 0x343431333131, 'MEO User', '2017-01-17 04:17:49', '0000-00-00 00:00:00'),
(345, 'S00205', 'KENNETH LEE', 'KENNETH.LEE@MEOGROUP.COM', 0x323235353932, 'MEO User', '2017-01-17 04:18:57', '0000-00-00 00:00:00'),
(346, 'S00282', 'GLADYS CHUA', 'GLADYS.CHUA@MEOGROUP.COM', 0x343439343933, 'MEO User', '2017-01-17 04:20:10', '0000-00-00 00:00:00'),
(347, 'S00335', 'BELINDA LI', 'BELINDA.LI@MEOGROUP.COM', 0x363432373836, 'MEO User', '2017-01-17 04:25:35', '0000-00-00 00:00:00'),
(348, 'S00104', 'JAMIE LEE', 'JAMIE.LEE@MEOGROUP.COM', 0x343838373435, 'MEO User', '2017-01-17 19:47:14', '0000-00-00 00:00:00'),
(349, 'S00133', 'AMELIA NG', 'AMELIA.NG@MEOGROUP.COM', 0x313437343736, 'MEO User', '2017-01-17 19:48:46', '0000-00-00 00:00:00'),
(350, 'S00148', 'JOVY CHAY', 'JOVY.CHAY@MEOGROUP.COM', 0x373635313838, 'MEO User', '2017-01-17 19:51:02', '2017-03-01 16:15:19'),
(351, 'S00347', 'DARREN YEOH', 'DARREN.YEOH@MEOGROUP.COM', 0x313136313838, 'MEO User', '2017-01-17 20:03:41', '0000-00-00 00:00:00'),
(352, 'S00361', 'EDWIN CHANG YONG QUAN', 'YONGQUAN.CHANG@MEOGROUP.COM', 0x313736343339, 'MEO User', '2017-01-17 20:05:08', '0000-00-00 00:00:00'),
(353, 'S00385', 'BAY SOO PENG', 'SOOPENG.BAY@MEOGROUP.COM ', 0x393535313933, 'MEO User', '2017-01-17 20:08:58', '0000-00-00 00:00:00'),
(354, 'S00386', 'CHLOE NG', 'CHLOE.NG@MEOGROUP.COM', 0x383434323333, 'MEO User', '2017-01-17 20:11:24', '0000-00-00 00:00:00'),
(355, 'S00388', 'EUNICE TAN', 'EUNICE.TAN@MEOGROUP.COM', 0x353236383334, 'MEO User', '2017-01-17 20:12:53', '0000-00-00 00:00:00'),
(356, 'S00002', 'ERIK TING', 'ERIK.TING@MEOGROUP.COM', 0x343934323236, 'MEO User', '2017-01-17 20:18:05', '0000-00-00 00:00:00'),
(357, 'E0025', 'LIM JUNRONG', 'JUNRONG.LIM@MEOGROUP.COM', 0x333135393436, 'MEO User', '2017-01-17 20:28:58', '0000-00-00 00:00:00'),
(358, 'S00360', 'LEE PEI ZHEN', 'PEIZHEN.LEE@MEOGROUP.COM', 0x313331383632, 'MEO User', '2017-01-17 20:32:06', '0000-00-00 00:00:00'),
(359, 'S00348', 'JOSEPHINE LEE', 'JOSEPHINE.LEE@MEOGROUP.COM', 0x353836383933, 'MEO User', '2017-01-17 20:35:53', '0000-00-00 00:00:00'),
(360, 'S00165', 'DEREK KOH', 'DEREK.KOH@MEOGROUP.COM', 0x333732333731, 'MEO User', '2017-01-17 20:39:17', '0000-00-00 00:00:00'),
(361, 'S00380', 'ELAINE LAU', 'ELAINE.LAU@MEOGROUP.COM', 0x363233393332, 'MEO User', '2017-01-17 20:58:42', '0000-00-00 00:00:00'),
(362, 'BN002', 'LEONARD WONG ', 'LEONARD.WONG@MEOGROUP.COM', 0x313437343835, 'MEO User', '2017-01-18 00:42:17', '0000-00-00 00:00:00'),
(363, 'BN004', 'BELINDA WONG', 'BELINDA.WONG@MEOGROUP.COM', 0x353636313635, 'MEO User', '2017-01-18 00:43:24', '0000-00-00 00:00:00'),
(364, 'BN008', 'KOK WEI KONG', 'WEIKONG.KOK@MEOGROUP.COM', 0x383933313834, 'MEO User', '2017-01-18 00:44:15', '0000-00-00 00:00:00'),
(365, 'BN003', 'SHAFIQ ABDULLAH ', 'SHAFIQ.ABDULLAH@MEOGROUP.COM', 0x363733383432, 'MEO User', '2017-01-18 00:45:11', '0000-00-00 00:00:00'),
(366, 'BN011', 'ARDY  BAKAR', 'ARDY.BAKAR@MEOGROUP.COM', 0x353135353536, 'MEO User', '2017-01-18 00:46:37', '0000-00-00 00:00:00'),
(367, 'BN010', 'ALDON PETER YAPP ', 'ALDON.PETERYAPP@MEOGROUP.COM', 0x353337323337, 'MEO User', '2017-01-18 00:47:13', '0000-00-00 00:00:00'),
(368, 'BN007', 'KENNETH YONG', 'KENNETH.YONG@MEOGROUP.COM', 0x313739323638, 'MEO User', '2017-01-18 00:48:02', '0000-00-00 00:00:00'),
(369, 'M015', 'CAPT. SASITHARAN ELUMALAI', 'SASITHARAN.ELUMALAI@MEOGROUP.COM', 0x333635373434, 'MEO User', '2017-01-18 01:09:34', '0000-00-00 00:00:00'),
(370, 'M014', 'LETICIA LAIMAN INGAN', 'LETICIA.INGAN@MEOGROUP.COM', 0x343533383733, 'MEO User', '2017-01-18 01:11:13', '0000-00-00 00:00:00'),
(371, 'M010', 'AWG FAREEZ SYIDDIQEN', 'AWG.FAREEZ@MEOGROUP.COM', 0x383232383731, 'MEO User', '2017-01-18 01:13:23', '0000-00-00 00:00:00'),
(372, 'M012', 'NURUL AIN KAMARUDDIN', 'NURULAIN@MEOGROUP.COM', 0x373832383934, 'MEO User', '2017-01-18 01:14:12', '0000-00-00 00:00:00'),
(373, 'M006', 'SYED MUBARAK', 'SYED.MUBARAK@MEOGROUP.COM', 0x363934353733, 'MEO User', '2017-01-18 01:14:51', '0000-00-00 00:00:00'),
(374, 'M002', 'AAN KUSNANDAR', 'AAN.KUSNANDAR@MEOGROUP.COM', 0x363133373131, 'MEO User', '2017-01-18 01:15:37', '0000-00-00 00:00:00'),
(375, 'M007', 'NAOMI GANI', 'NAOMI@MEOGROUP.COM', 0x343631363539, 'MEO User', '2017-01-18 01:16:08', '0000-00-00 00:00:00'),
(376, 'M011', 'HAZLAN HAMDAN', 'HAZLAN.HAMDAN@MEOGROUP.COM', 0x373339373937, 'MEO User', '2017-01-18 01:16:50', '0000-00-00 00:00:00'),
(377, 'A000480', 'DAVID NICHOLAS', 'DAVID.NICHOLAS@MEOGROUP.COM', 0x333931393933, 'MEO User', '2017-01-18 01:33:04', '0000-00-00 00:00:00'),
(378, 'A000816', 'SAM HUTCHINSON', 'SAMUEL.HUTCHINSON@MEOGROUP.COM', 0x313537343934, 'MEO User', '2017-01-18 01:33:37', '0000-00-00 00:00:00'),
(379, 'A000342', 'VALERIE PRENTICE ', 'VALERIE.PRENTICE@MEOGROUP.COM', 0x383339363739, 'MEO User', '2017-01-18 01:34:07', '0000-00-00 00:00:00'),
(381, 'ME00108', 'DENIS WELCH', 'DENIS.WELCH@MICLYNEXPRESSOFFSHORE.COM', 0x353332353332, 'MEO User', '2017-01-18 02:18:37', '0000-00-00 00:00:00'),
(382, 'ME00066', 'RIK KREUNEN', 'RIK.KREUNEN@MICLYNEXPRESSOFFSHORE.COM', 0x313237333939, 'MEO User', '2017-01-18 02:20:03', '0000-00-00 00:00:00'),
(383, 'ME00099', 'MUKUND RAJAMANI ', 'MUKUND.RAJAMNI@MICLYNEXPRESSOFFSHORE.COM', 0x333834343639, 'MEO User', '2017-01-18 02:22:06', '0000-00-00 00:00:00'),
(384, 'ME00100', 'ANGELA EMATA BAYRON ', 'ANGELA.BAYRON@MICLYNEXPRESSOFFSHORE.COM', 0x363136373438, 'MEO User', '2017-01-18 02:24:19', '0000-00-00 00:00:00'),
(385, 'ME00111', 'DEREK LO ', 'DEREK.LO@MICLYNEXPRESSOFFSHORE.COM', 0x353735393839, 'MEO User', '2017-01-18 02:26:17', '0000-00-00 00:00:00'),
(386, 'ME00083', 'SANDESH GOPAL PALAN ', 'SANDESH.PALAN@MICLYNEXPRESSOFFSHORE.COM', 0x323731393636, 'MEO User', '2017-01-18 02:28:26', '0000-00-00 00:00:00'),
(387, 'ME00076', 'NITIN PUROHIT ', 'NITIN.PUROHIT@MICLYNEXPRESSOFFSHORE.COM', 0x393732373435, 'MEO User', '2017-01-18 02:30:21', '0000-00-00 00:00:00'),
(388, 'ME00058', 'DEEPAK PANDEY ', 'DEEPAK.PANDEY@MICLYNEXPRESSOFFSHORE.COM', 0x393732333137, 'MEO User', '2017-01-18 02:31:17', '0000-00-00 00:00:00'),
(389, 'ME00024', 'ASHVITH AMIN', 'ASHVITH.AMIN@MICLYNEXPRESSOFFSHORE.COM', 0x323332323235, 'MEO User', '2017-01-18 02:32:35', '0000-00-00 00:00:00'),
(390, 'ME00084', 'ABHILASH ', 'ABHILASH.H@MICLYNEXPRESSOFFSHORE.COM', 0x343535333334, 'MEO User', '2017-01-18 02:33:17', '0000-00-00 00:00:00'),
(391, 'ME00021', 'SAMWAIL FOUAD', 'SAMWAIL.FOUAD@MICLYNEXPRESSOFFSHORE.COM', 0x373633343532, 'MEO User', '2017-01-18 02:43:02', '0000-00-00 00:00:00'),
(392, 'ME00037', 'TAHIR ABBAS', '-@MEOGROUP.COM', 0x343539353639, 'MEO User', '2017-01-18 02:45:45', '0000-00-00 00:00:00'),
(393, 'ME00092', 'RABINDRA DASH ', 'RABINDRA.DASH@MICLYNEXPRESSOFFSHORE.COM', 0x353336363931, 'MEO User', '2017-01-18 02:46:43', '0000-00-00 00:00:00'),
(394, 'ME00060', 'AISHA FERRER', 'AISHA.FERRER@MICLYNEXPRESSOFFSHORE.COM', 0x313833373931, 'MEO User', '2017-01-18 02:47:54', '0000-00-00 00:00:00'),
(395, 'ME00071', 'ANABEL BALINA', 'ANABEL.BALINA@MICLYNEXPRESSOFFSHORE.COM', 0x363535343638, 'MEO User', '2017-01-18 02:48:42', '0000-00-00 00:00:00'),
(396, 'ME00097', 'ANNALYN BUATIS ', 'ANNALYN.BUATIS@MICLYNEXPRESSOFFSHORE.COM', 0x383133393231, 'MEO User', '2017-01-18 02:49:49', '0000-00-00 00:00:00'),
(397, 'ME00095', 'AVDHUT DHAYBAR', 'AVDHUT.DHAYBAR@MICLYNEXPRESSOFFSHORE.COM', 0x383638313331, 'MEO User', '2017-01-18 02:51:16', '0000-00-00 00:00:00'),
(398, 'ME00022', 'BISYRUN HASAN BASRI', 'BISYRUN@MICLYNEXPRESSOFFSHORE.COM', 0x353237333538, 'MEO User', '2017-01-18 02:53:56', '0000-00-00 00:00:00'),
(399, 'ME00038', 'ALI ESSA M AL OBAIDI', 'ALI.ALOBAIDI@MICLYNEXPRESSOFFSHORE.COM', 0x313334313837, 'MEO User', '2017-01-18 02:55:12', '0000-00-00 00:00:00'),
(400, 'ME00109', 'IRY GENSON', 'IRY.GENSON@MICLYNEXPRESSOFFSHORE.COM', 0x363836323333, 'MEO User', '2017-01-18 02:56:26', '0000-00-00 00:00:00'),
(401, 'ME00031', 'SAVIO VAZ', 'SAVIO.VAZ@MICLYNEXPRESSOFFSHORE.COM', 0x343935343737, 'MEO User', '2017-01-18 02:57:07', '0000-00-00 00:00:00'),
(402, 'ME00079', 'SUNITHA SHETTY', 'SUNITHA.SHETTY@MICLYNEXPRESSOFFSHORE.COM', 0x353739353839, 'MEO User', '2017-01-18 02:57:49', '0000-00-00 00:00:00'),
(403, 'ME00110', 'LIEZL FABIALA ', 'LIEZL.FABIALA@MICLYNEXPRESSOFFSHORE.COM', 0x393436373334, 'MEO User', '2017-01-18 02:58:37', '0000-00-00 00:00:00'),
(404, 'ME00102', 'LENIN LAMA ', 'LENIN.LAMA@MICLYNEXPRESSOFFSHORE.COM', 0x353934343836, 'MEO User', '2017-01-18 02:59:23', '0000-00-00 00:00:00'),
(405, 'ME00106', 'HUSSAIN ALGOBA ', 'HUSSAIN.ALGOBA@MICLYNEXPRESSOFFSHORE.COM', 0x333231323539, 'MEO User', '2017-01-18 03:00:20', '0000-00-00 00:00:00'),
(406, 'ME00063', 'SREENIVASAN NARAYANAN', '--@MEOGROUP.COM', 0x353537383238, 'MEO User', '2017-01-18 03:01:17', '0000-00-00 00:00:00'),
(407, 'ME00004', 'ABDALLA ABUELGASIM', 'ABDALLA.ABUELGASIM@MICLYNEXPRESSOFFSHORE.COM', 0x333137373139, 'MEO User', '2017-01-18 03:03:45', '0000-00-00 00:00:00'),
(408, 'ME00074', 'SHERIF ABDELHAMID ', 'SHERIF.ABDELMONEM@MICLYNEXPRESSOFFSHORE.COM', 0x343234353438, 'MEO User', '2017-01-18 03:05:10', '0000-00-00 00:00:00'),
(409, 'ME00011', 'JOSEPH GEORGE', 'JOSEPH.GEORGE@MICLYNEXPRESSOFFSHORE.COM', 0x313934383434, 'MEO User', '2017-01-18 03:07:45', '0000-00-00 00:00:00'),
(410, 'ME00042', 'RAMLI RASBI', 'RAMLI.RASBI@MICLYNEXPRESSOFFSHORE.COM', 0x333634373733, 'MEO User', '2017-01-18 03:08:39', '0000-00-00 00:00:00'),
(411, 'ME00050', 'ANNA  LIZA CELLANO', 'ANNA.CELLANO@MICLYNEXPRESSOFFSHORE.COM', 0x373831383937, 'MEO User', '2017-01-18 03:09:28', '0000-00-00 00:00:00'),
(412, 'ME00101', 'RAVINDER HOONJAN ', 'RAVINDER.HOONJAN@MICLYNEXPRESSOFFSHORE.COM', 0x393335363333, 'MEO User', '2017-01-18 03:15:43', '0000-00-00 00:00:00'),
(413, 'ME00090', 'AAKAAR JAIN', 'AAKAAR.JAIN@MICLYNEXPRESSOFFSHORE.COM', 0x323731363533, 'MEO User', '2017-01-18 03:18:26', '0000-00-00 00:00:00'),
(414, 'ME00014', 'SOKARNO ABDALLAH ', 'SOKARNO.ABDALLAH@MICLYNEXPRESSOFFSHORE.COM', 0x353431313231, 'MEO User', '2017-01-18 03:32:10', '0000-00-00 00:00:00'),
(415, 'ME00089', 'TAMER S.BALBOUL', 'TAMER.BALBOUL@MICLYNEXPRESSOFFSHORE.COM', 0x383637393131, 'MEO User', '2017-01-18 03:35:22', '0000-00-00 00:00:00'),
(416, 'ME00025', 'SALIM KAJIRU', 'SALIM.KAJIRU@MICLYNEXPRESSOFFSHORE.COM', 0x353833373334, 'MEO User', '2017-01-18 03:37:19', '0000-00-00 00:00:00'),
(417, 'ME00027', 'ZOHAIR ABDELRAHIM', 'ZOHAIR.ELRAHIM@MICLYNEXPRESSOFFSHORE.COM', 0x383133333133, 'MEO User', '2017-01-18 03:40:43', '0000-00-00 00:00:00'),
(418, 'ME00005', 'PAUL OCCENOLA', 'PAUL.OCCENOLA@MICLYNEXPRESSOFFSHORE.COM', 0x333438373936, 'MEO User', '2017-01-18 03:46:05', '0000-00-00 00:00:00'),
(419, 'ME00104', 'CHANDRASHEKAR VARMA ', 'CHANDRASHEKAR.VARMA@MICLYNEXPRESSOFFSHORE.COM', 0x373235383236, 'MEO User', '2017-01-18 03:48:31', '0000-00-00 00:00:00'),
(420, 'ME00023', 'JASIM HUSSAIN', 'JASSIM.HUSSAIN@MICLYNEXPRESSOFFSHORE.COM', 0x333933353833, 'MEO User', '2017-01-18 03:49:46', '0000-00-00 00:00:00'),
(421, 'ME00093', 'BASEL KHWAIS', 'BASEL.KHWAIS@MICLYNEXPRESSOFFSHORE.COM', 0x343335393631, 'MEO User', '2017-01-18 03:50:59', '0000-00-00 00:00:00'),
(422, 'ME00088', 'CIRION CENOC ', 'CIRION.SENOC@MICLYNEXPRESSOFFSHORE.COM', 0x333839343836, 'MEO User', '2017-01-18 03:52:06', '0000-00-00 00:00:00'),
(423, 'ME00073', 'HEMANTKUMAR PANCHAL ', 'HEMANT.PANCHAL@MICLYNEXPRESSOFFSHORE.COM', 0x333938333937, 'MEO User', '2017-01-18 03:56:33', '0000-00-00 00:00:00'),
(424, 'ME00107', 'VENKATESH ', 'VENKATESH.K@MICLYNEXPRESSOFFSHORE.COM', 0x343232323234, 'MEO User', '2017-01-18 03:57:22', '0000-00-00 00:00:00'),
(425, 'ME00048', 'VIJAY CHATTE', 'VIJAY.CHATTE@MICLYNEXPRESSOFFSHORE.COM', 0x323338373939, 'MEO User', '2017-01-18 03:59:46', '0000-00-00 00:00:00'),
(426, 'ME00096', 'ALABBAS MAHDI ', 'ALABBAS.MAHDI@MICLYNEXPRESSOFFSHORE.COM', 0x333938323839, 'MEO User', '2017-01-18 04:00:46', '0000-00-00 00:00:00'),
(427, 'ME00082', 'JOSE WILSON OTO', 'JOSE.WILSON@MICLYNEXPRESSOFFSHORE.COM', 0x313233373433, 'MEO User', '2017-01-18 04:01:31', '0000-00-00 00:00:00'),
(428, 'ME00013', 'HISHAM  AHAMED', 'HISHAM.AHAMED@MICLYNEXPRESSOFFSHORE.COM', 0x393133313838, 'MEO User', '2017-01-18 04:02:12', '0000-00-00 00:00:00'),
(429, 'ME00056', 'YOGESH PATIL', 'YOGESH.PATIL@MICLYNEXPRESSOFFSHORE.COM', 0x343933343233, 'MEO User', '2017-01-18 04:02:53', '0000-00-00 00:00:00'),
(430, 'ME00034', 'PRADEEP KUMAR', '---@MEOGROUP.COM', 0x313835393339, 'MEO User', '2017-01-18 04:04:13', '0000-00-00 00:00:00'),
(431, 'ME00003', 'ANDREW AUGUSTIN WOOD', '----@MEOGROUP.COM', 0x343531313938, 'MEO User', '2017-01-18 04:05:51', '0000-00-00 00:00:00'),
(432, 'ME00001', 'ROMEO DELA CRUZ GACHO', '------@MEOGROUP.COM', 0x323539393539, 'MEO User', '2017-01-18 04:06:28', '0000-00-00 00:00:00'),
(433, 'ME00046', 'VIRGILIO TECSON TIRO', '-NA-@MEOGROUP.COM', 0x383232313435, 'MEO User', '2017-01-18 04:09:38', '0000-00-00 00:00:00'),
(434, 'ME00055', 'ELNUR ABDULLAYEV', 'ELNUR@MICLYNEXPRESSOFFSHORE.COM', 0x343738343532, 'MEO User', '2017-01-18 04:10:21', '0000-00-00 00:00:00'),
(435, 'ME00078', 'MANJULA  SAMARAKOON', 'MANJULA.SAMARKOON@MEOGROUP.COM', 0x333932373732, 'MEO User', '2017-01-18 04:11:26', '0000-00-00 00:00:00'),
(436, 'ME00052', 'ROBIN ISSAC', 'ROBIN@MICLYNEXPRESSOFFSHORE.COM', 0x313635373838, 'MEO User', '2017-01-18 04:12:08', '0000-00-00 00:00:00'),
(437, 'ME00105', 'SAMAN PATHIRANA ', 'PATHIRANA@MICLYNEXPRESSOFFSHORE.COM', 0x353338333937, 'MEO User', '2017-01-18 04:13:34', '0000-00-00 00:00:00'),
(438, 'ME00043', 'JINKHIE GALLARZAN', 'JINKHIE.GALLARZAN@MICLYNEXPRESSOFFSHORE.COM', 0x333431343838, 'MEO User', '2017-01-18 04:14:02', '0000-00-00 00:00:00'),
(439, 'ME00103', 'BAPUSO DINDE ', 'BAPUSO.DINDE@MICLYNEXPRESSOFFSHORE.COM', 0x333334313832, 'MEO User', '2017-01-18 04:14:44', '0000-00-00 00:00:00'),
(440, 'ME00040', 'KHALID SAOUD A AL SHAMMARY', '-------@MEOGROUP.COM', 0x353838383831, 'MEO User', '2017-01-18 04:16:00', '0000-00-00 00:00:00'),
(441, 'MEO020', 'HASHIM AL SEFI', '------@MICLYNEXPRESSOFFSHORE.COM', 0x313133333339, 'MEO User', '2017-01-18 04:17:30', '0000-00-00 00:00:00'),
(442, 'ME00015', 'ABDUL KADIR BUTHIYABURAYIL', '----@MICLYNEXPRESSOFFSHORE.COM', 0x353331343938, 'MEO User', '2017-01-18 04:18:45', '0000-00-00 00:00:00'),
(443, 'ME00016', 'THATHAMMA MOHAMMED MOOSA ', '---@MICLYNEXPRESSOFFSHORE.COM', 0x343535343237, 'MEO User', '2017-01-18 04:19:39', '0000-00-00 00:00:00'),
(444, 'ME00087', 'MICHAEL SLY ', 'MICHAEL.SLY@MICLYNEXPRESSOFFSHORE.COM', 0x333731363732, 'MEO User', '2017-01-18 04:20:10', '0000-00-00 00:00:00'),
(445, 'ME00029', 'SHIYAS NAZARUDEEN ', 'SHIYAS.NAZARUDEEN@MICLYNEXPRESSOFFSHORE.COM', 0x333933343736, 'MEO User', '2017-01-18 04:20:44', '0000-00-00 00:00:00'),
(446, 'SGS001', 'DIDI JAYA SAPUTRA', 'DIDI.SAPUTRA@SGS-OFFSHORE.COM', 0x333836373931, 'MEO User', '2017-01-18 21:31:53', '0000-00-00 00:00:00'),
(447, 'E0020', 'JOYCE TAN', 'JOYCE.TAN@MEOGROUP.COM', 0x383838323337, 'MEO User', '2017-01-18 21:43:19', '0000-00-00 00:00:00'),
(448, 'S00309', 'FRANK TAM', 'FRANK.TAM@MEOGROUP.COM', 0x383634373837, 'MEO User', '2017-01-18 21:53:05', '0000-00-00 00:00:00'),
(449, 'S00332', 'KEITH NG', 'KEITH.NG@MEOGROUP.COM', 0x353232383136, 'MEO User', '2017-01-18 21:53:39', '0000-00-00 00:00:00'),
(450, 'SGS023', 'ANGGARA MULIA', 'ANGGARA.MULIA@SGS-OFFSHORE.COM', 0x323434333531, 'MEO User', '2017-01-18 22:14:54', '0000-00-00 00:00:00'),
(451, 'SGS010', 'VANESSA TALAVERA AQUINO', 'VANESSA.AQUINO@SGS-OFFSHORE.COM', 0x363638373835, 'MEO User', '2017-01-18 22:15:41', '0000-00-00 00:00:00'),
(452, 'SPS004', 'YENNY IMELDA MARTHING', 'YENNY.MARTHING@SPS-OFFSHORE.COM', 0x393133383434, 'MEO User', '2017-01-18 22:16:20', '0000-00-00 00:00:00'),
(453, 'SPS010', 'KUNTO WIBISONO', 'KUNTO.WIBISONO@SPS-OFFSHORE.COM', 0x313239313335, 'MEO User', '2017-01-18 22:16:54', '0000-00-00 00:00:00'),
(454, 'SGS024', 'DODI SETIAGAMA', 'DODI.SETIAGAMA@SPS-OFFSHORE.COM', 0x313739393539, 'MEO User', '2017-01-18 22:20:10', '0000-00-00 00:00:00'),
(455, 'SPS008', 'AGUS TRI ATMOJO', 'AGUS.ATMOJO@SPS-OFFSHORE.COM', 0x343233313938, 'MEO User', '2017-01-18 22:21:16', '0000-00-00 00:00:00'),
(456, 'SGS020', 'DEDI SUPRIYADI', 'DEDI.SUPRIYADI@SGS-OFFSHORE.COM', 0x383739323533, 'MEO User', '2017-01-18 22:21:48', '0000-00-00 00:00:00'),
(457, 'SPS002', 'ADI MASTIN', 'ADI.MASTIN@SGS-OFFSHORE.COM', 0x363434313537, 'MEO User', '2017-01-18 22:22:29', '0000-00-00 00:00:00'),
(458, 'SGS014', 'RIZKA NOMITURSILOJATI', 'RIZKA.NOMITURSILOJATI@SGS-OFFSHORE.COM', 0x343932313236, 'MEO User', '2017-01-18 22:23:38', '0000-00-00 00:00:00'),
(459, 'NPP004', 'DIAN UTAMI', 'DIAN.UTAMI@NPP-OFFSHORE.COM', 0x393939393335, 'MEO User', '2017-01-18 22:24:45', '0000-00-00 00:00:00'),
(460, 'MEOS005', 'ANDREW KESAULYA', 'ANDREW.KESAULYA@SGS-OFFSHORE.COM', 0x373138323337, 'MEO User', '2017-01-18 22:25:18', '0000-00-00 00:00:00'),
(461, 'SGS002', 'NAHARADAM WIJAYA', 'NAHARADAM.WIDJAJA@SGS-OFFSHORE.COM', 0x313932313531, 'MEO User', '2017-01-18 22:27:04', '0000-00-00 00:00:00'),
(462, 'SGS019', 'ALPHARD OKA ARIFIN', 'ALPHARD.ARIFIN@SGS-OFFSHORE.COM', 0x373737373532, 'MEO User', '2017-01-18 22:30:46', '0000-00-00 00:00:00'),
(463, 'SGS016', 'YULIANTORO', 'YULIANTORO@SGS-OFFSHORE.COM', 0x343933363333, 'MEO User', '2017-01-18 22:31:57', '0000-00-00 00:00:00'),
(464, 'SGS018', 'PAING WIDODO', 'PAING.WIDODO@SGS-OFFSHORE.COM', 0x383132323533, 'MEO User', '2017-01-18 22:32:43', '0000-00-00 00:00:00'),
(465, 'SGS008', 'AZIZ ARZIZAL', 'AZIZ.ARZIZAL@SGS-OFFSHORE.COM', 0x393534333532, 'MEO User', '2017-01-18 22:33:16', '0000-00-00 00:00:00'),
(466, 'SPS025', 'DEKY WERDOKO', 'DEKY.WERDOKO@SGS-OFFSHORE.COM', 0x313137393339, 'MEO User', '2017-01-18 22:34:04', '0000-00-00 00:00:00'),
(467, 'SPS009', 'ERNA RENSI NORA', 'EMA.RENSINORA@MEOGROUP.COM', 0x323334363334, 'MEO User', '2017-01-18 22:34:21', '0000-00-00 00:00:00'),
(468, 'SGS006', 'RICKY KURNIAWAN', 'RICKY.KURNIAWAN@SGS-OFFSHORE.COM', 0x373337343132, 'MEO User', '2017-01-18 22:34:46', '0000-00-00 00:00:00'),
(469, 'SGS011', 'DANI GUNAWAN', 'DANI.GUNAWAN@SGS-OFFSHORE.COM', 0x393235313334, 'MEO User', '2017-01-18 22:35:14', '0000-00-00 00:00:00'),
(470, 'SGS027', 'LIA ANGGRAINY GINTING', 'LIA.GINTING@SPS-OFFSHORE.COM', 0x373938363532, 'MEO User', '2017-01-18 22:36:07', '0000-00-00 00:00:00'),
(471, 'SGS004', 'AGUS SETYO BUDI S.', '-@SGS-OFFSHORE.COM', 0x363436373735, 'MEO User', '2017-01-18 22:37:20', '0000-00-00 00:00:00'),
(472, 'MEOS010', 'THEO ANDRIAN', 'THEO.ANDRIAN@MEOGROUP.COM', 0x343136343736, 'MEO User', '2017-01-18 22:38:20', '0000-00-00 00:00:00'),
(473, 'MEOS009', 'RENALDO DARMADI', 'RENALDO.DARMADI@MEOGROUP.COM', 0x353339373234, 'MEO User', '2017-01-18 22:39:37', '0000-00-00 00:00:00'),
(474, 'MEOS012', 'FIRMAN LESMANA', 'FRIMAN.LESMANA@MEOGROUP.COM', 0x393737353932, 'MEO User', '2017-01-18 23:45:39', '0000-00-00 00:00:00'),
(475, 'SPS011', 'SUHARNO', '-----@MEOGROUP.COM', 0x393539373435, 'MEO User', '2017-01-18 23:46:50', '0000-00-00 00:00:00'),
(476, 'SPS012', 'DRIPRANTO', '---------@MEOGROUP.COM', 0x343238353531, 'MEO User', '2017-01-18 23:48:18', '0000-00-00 00:00:00'),
(477, 'SPS017', 'NUNU DIHARJA', '--------@MEOGROUP.COM', 0x323831343632, 'MEO User', '2017-01-18 23:48:54', '0000-00-00 00:00:00'),
(478, 'SPS015', 'M. EGA PERMANA', '----------@MEOGROUP.COM', 0x313838383231, 'MEO User', '2017-01-18 23:50:02', '0000-00-00 00:00:00'),
(479, 'SPS013', 'KUSTIYO ADI', 'NIL@MEOGROUP.COM', 0x363237373333, 'MEO User', '2017-01-18 23:50:58', '0000-00-00 00:00:00'),
(480, 'SPS014', 'HENDRA KUSUMA', 'NILL@MEOGROUP.COM', 0x383135353339, 'MEO User', '2017-01-18 23:51:42', '0000-00-00 00:00:00'),
(481, 'SPS016', 'M. ISMAIL', '__@MEOGROUP.COM', 0x393734333231, 'MEO User', '2017-01-18 23:52:33', '0000-00-00 00:00:00'),
(482, 'SPS021', 'ZAHRUDIN', '_@MEOGROUP.COM', 0x383334373132, 'MEO User', '2017-01-18 23:53:16', '0000-00-00 00:00:00'),
(483, 'SPS020', 'EFFENDI SAPUTRA', '___@MEOGROUP.COM', 0x323337373939, 'MEO User', '2017-01-18 23:54:18', '0000-00-00 00:00:00'),
(484, 'SPS019', 'FIRMAN PERDANA', '____@MEOGROUP.COM', 0x353838313131, 'MEO User', '2017-01-18 23:55:02', '0000-00-00 00:00:00'),
(485, 'MEOS002', 'LUKMAN AFFANDY', 'LUKMAN.AFFANDY@MEOGROUP.COM', 0x323833323536, 'MEO User', '2017-01-18 23:55:27', '0000-00-00 00:00:00'),
(486, 'MEOS003', 'CHAIRUDDIN', 'CHAIRUDDIN@MEOGROUP.COM', 0x313238383233, 'MEO User', '2017-01-18 23:57:00', '0000-00-00 00:00:00'),
(487, 'SPS026', 'EKO BUDI TARMANTO', 'BUDI.TARMANTO@MEOGROUP.COM', 0x393639313539, 'MEO User', '2017-01-18 23:57:48', '0000-00-00 00:00:00'),
(488, 'ME00008', 'JUANITO BASCON SANTOS ', 'JUANITO.SANTOS@MEOGROUP.COM', 0x343338363737, 'MEO User', '2017-01-19 04:13:25', '0000-00-00 00:00:00'),
(489, 'ME00116', 'CESAR CAYABAN', 'CESAR.CAYABAN@MEOGROUP.COM', 0x333633363434, 'MEO User', '2017-01-19 04:15:36', '0000-00-00 00:00:00'),
(490, 'ME00117', 'GEMMA KALAW', 'GEMMA.KALAW@MEOGROUP.COM', 0x373435313439, 'MEO User', '2017-01-19 04:16:59', '0000-00-00 00:00:00'),
(491, 'ME00115', 'SYARLY CAHYADI', 'SYARLY.CAHYADI@MEOGROUP.COM', 0x353439333534, 'MEO User', '2017-01-19 04:20:44', '0000-00-00 00:00:00'),
(492, 'SGS028', 'FATRONI', 'FATRONI@MEOGROUP.COM', 0x373733353232, 'MEO User', '2017-01-19 19:48:58', '0000-00-00 00:00:00'),
(493, 'M016', 'WONG LOON SENG', 'LOONSENG.WONG@MEOGROUP.COM', 0x333632363939, 'MEO User', '2017-01-19 19:53:58', '0000-00-00 00:00:00'),
(494, '', 'Bharataj MEO User', 'bharatraj@singsys.com', '', 'MEO User', '2017-01-20 03:54:04', '0000-00-00 00:00:00'),
(495, '112', 'BHATA', 'BHARATRAJ+1111@SINGSYS.COM', 0x383134353236, 'MEO User', '2017-01-24 05:00:37', '0000-00-00 00:00:00'),
(496, '123', 'AKASH', 'AKASHKUMAR@SINGSYS.COM', 0x363939313932, 'MEO User', '2017-01-24 06:50:44', '0000-00-00 00:00:00'),
(497, '12345678', 'QWERTY', 'A@SINGSYS.COM', 0x393838383835, 'MEO User', '2017-01-24 06:56:36', '0000-00-00 00:00:00'),
(498, '11606', 'ATTASIT  KORNCHAIYAPRUK', 'ATTASIT.K@UNITHAI.COM', 0x333739333637, 'MEO User', '2017-01-26 00:57:54', '0000-00-00 00:00:00'),
(499, '11471', 'YUTH  METHEEWITUD', 'YUTH.M@UNITHAI.COM', 0x333936333234, 'MEO User', '2017-01-26 00:59:34', '0000-00-00 00:00:00'),
(500, '11074', 'PIRIYADIT  CHOOPHUNGART', 'PIRIYADIT.C@UNITHAI.COM', 0x393537313937, 'MEO User', '2017-01-26 00:59:56', '0000-00-00 00:00:00'),
(501, '11133', 'SASITHORN  SURIYACHAN ', 'SASITHORN.S@UNITHAI.COM', 0x333739393834, 'MEO User', '2017-01-26 01:02:42', '0000-00-00 00:00:00'),
(502, '11045', 'SIVILAI  CHIRAMANAPHUN', 'SIVILAI.C@UNITHAI.COM', 0x373737323731, 'MEO User', '2017-01-26 01:05:06', '0000-00-00 00:00:00'),
(503, '11592', 'SUKIT  KITPATH', 'KANET.C@UNITHAI.COM', 0x393733323134, 'MEO User', '2017-01-26 01:05:58', '0000-00-00 00:00:00'),
(504, '11038', 'NARUMON SIRITONGKAM ', 'NARUMON.S@UNITHAI.COM', 0x333239323832, 'MEO User', '2017-01-26 01:06:35', '0000-00-00 00:00:00'),
(505, '11426', 'BENJAWAN  PANKLOM', 'BENJAWAN.P@UNITHAI.COM', 0x323437323632, 'MEO User', '2017-01-26 01:07:09', '0000-00-00 00:00:00'),
(506, '11533', 'CHADA  PHOONJANTANG', 'CHADA.P@UNITHAI.COM', 0x383737363739, 'MEO User', '2017-01-26 01:08:13', '0000-00-00 00:00:00'),
(507, '1304', 'DAWAPHA  JANTARAPITAK', 'DAWAPHA.D@UNITHAI.COM', 0x343135393936, 'MEO User', '2017-01-26 01:08:34', '0000-00-00 00:00:00'),
(508, '71585', 'YAOWALUCK  THREECHADARAT', 'YAOWALUCK.T@UNIWISE.CO.TH', 0x373637323832, 'MEO User', '2017-01-26 01:09:07', '0000-00-00 00:00:00'),
(509, '71573', 'BRAD  MORPHEW', 'BRAD.MORPHEW@UNIWISE.CO.TH', 0x343335383231, 'MEO User', '2017-01-26 01:12:04', '0000-00-00 00:00:00'),
(510, '71407', 'JON AXEL HAUGLUM', 'JON.AXEL@UNIWISE.CO.TH', 0x373933323733, 'MEO User', '2017-01-26 01:12:23', '0000-00-00 00:00:00'),
(511, '7418', 'WARODOM THAMRONGTHANYAWONG', 'WARODOM.T@UNIWISE.CO.TH', 0x363439373137, 'MEO User', '2017-01-26 01:12:49', '0000-00-00 00:00:00'),
(512, '71006', 'ALISA PHUCHUMNIAN', 'ALISA.P@UNIWISE.CO.TH', 0x383232313139, 'MEO User', '2017-01-26 01:13:19', '0000-00-00 00:00:00'),
(513, '7974', 'NARUEMOL JIRANANTASAK', 'NARUEMOL.J@UNIWISE.CO.TH', 0x313533393335, 'MEO User', '2017-01-26 01:13:42', '0000-00-00 00:00:00'),
(514, '7147', 'VANDEE INTAPANYA', 'VANDEE.I@UNIWISE.CO.TH', 0x353638353634, 'MEO User', '2017-01-26 01:14:25', '0000-00-00 00:00:00'),
(515, '71182', 'YINGYOD THONGNAUM', 'YINYOD.T@UNIWISE.CO.TH', 0x383834373237, 'MEO User', '2017-01-26 01:15:08', '0000-00-00 00:00:00'),
(516, '7057', 'VIPA TEEPAPONG', 'VIPA.T@UNIWISE.CO.TH', 0x323339373631, 'MEO User', '2017-01-26 01:15:51', '0000-00-00 00:00:00'),
(517, '71436', 'PACHARAPORN THUNPRASERT', 'PACHARAPORN.T@UNIWISE.CO.TH', 0x393832353431, 'MEO User', '2017-01-26 01:16:11', '0000-00-00 00:00:00'),
(518, '71529', 'NIDA SENGTHONG', 'NIDA.S@UNIWISE.CO.TH', 0x363933343539, 'MEO User', '2017-01-26 01:16:50', '0000-00-00 00:00:00'),
(519, '71601', 'VERNON LOW', 'VERNON.LOW@UNIWISE.CO.TH', 0x383539313637, 'MEO User', '2017-01-26 01:17:56', '0000-00-00 00:00:00'),
(520, '71360', 'PATTARAPOOM SANTIWEKIN', 'PATTARAPOOM.S@UNIWISE.CO.TH', 0x343231323735, 'MEO User', '2017-01-26 01:18:18', '0000-00-00 00:00:00'),
(521, '7954', 'WORASAK BUAPLOD', 'WORASAK.B@UNIWISE.CO.TH', 0x313434373633, 'MEO User', '2017-01-26 01:18:34', '0000-00-00 00:00:00'),
(522, '71505', 'PAWARIT ARSAKIT', 'PAWARIT.A@UNIWISE.CO.TH', 0x353736323933, 'MEO User', '2017-01-26 01:18:57', '0000-00-00 00:00:00'),
(523, '71421', 'PANYA BOONANEKSUB', 'PANYA.B@UNIWISE.CO.TH', 0x373832323132, 'MEO User', '2017-01-26 01:19:21', '0000-00-00 00:00:00'),
(524, '7949', 'APAPAN TEPMANEE', 'APAPAN.T@UNIWISE.CO.TH', 0x383234383233, 'MEO User', '2017-01-26 01:19:55', '0000-00-00 00:00:00'),
(525, '71564', 'SUPASSORN  SAENNIEM', 'SUPASSORN.S@UNIWISE.CO.TH', 0x333434343835, 'MEO User', '2017-01-26 01:20:23', '0000-00-00 00:00:00'),
(526, '71506', 'CAPT.PONGSARIT KLOMKHUM', 'PONGSARIT.K@UNIWISE.CO.TH', 0x333637313531, 'MEO User', '2017-01-26 01:20:42', '0000-00-00 00:00:00'),
(527, '71462', 'CAPT.THIANCHAI DHANKULCHAI', 'THIANCHAI.D@UNIWISE.CO.TH', 0x323439333535, 'MEO User', '2017-01-26 01:21:01', '0000-00-00 00:00:00'),
(528, '71513', 'THEERADET SAENKET', 'THEERADET.S@UNIWISE.CO.TH', 0x323632313332, 'MEO User', '2017-01-26 01:21:24', '0000-00-00 00:00:00'),
(529, '71578', 'SAMPAN  SAMPANWICHAIN', 'SUWIT.S@UNIWISE.CO.TH', 0x373138343934, 'MEO User', '2017-01-26 01:22:02', '0000-00-00 00:00:00'),
(530, '71383', 'JARIYA PANKHOUSUK', 'JARIYA.P@UNIWISE.CO.TH', 0x343932343935, 'MEO User', '2017-01-26 01:22:23', '0000-00-00 00:00:00'),
(531, '71248', 'THONGCHAI PETCHARAT', 'THONGCHAI.P@UNIWISE.CO.TH', 0x313734323537, 'MEO User', '2017-01-26 01:22:56', '0000-00-00 00:00:00'),
(532, '7773', 'PRAPHOJ JAICHAROEN', 'PRAPHOJ.J@UNIWISE.CO.TH', 0x363632323332, 'MEO User', '2017-01-26 01:23:21', '0000-00-00 00:00:00'),
(533, '7984', 'SITHE SOOKBAN', 'SITHE.S@UNIWISE.CO.TH', 0x373734393433, 'MEO User', '2017-01-26 01:23:36', '0000-00-00 00:00:00'),
(534, '71460', 'PANUWAT SANGASILAPA', 'PANUWAT@UNIWISE.CO.TH', 0x363138383138, 'MEO User', '2017-01-26 01:23:54', '0000-00-00 00:00:00'),
(535, '71393', 'SUTHAT KUAKOONRAT', 'SUTHAT.K@UNIWISE.CO.TH', 0x363236313838, 'MEO User', '2017-01-26 01:24:10', '0000-00-00 00:00:00'),
(536, '71395', 'WANNAPAT TABMAK', 'WANNAPAT.T@UNIWISE.CO.TH', 0x393535343134, 'MEO User', '2017-01-26 01:24:32', '0000-00-00 00:00:00'),
(537, '71543', 'SOMBOON POLSWANG', 'SOMBOON.P@UNIWISE.CO.TH', 0x353838353239, 'MEO User', '2017-01-26 01:24:49', '0000-00-00 00:00:00'),
(538, '71574', 'SURASAK  WEERAWATTANA', 'SURASAK.W@UNIWISE.CO.TH', 0x313833313537, 'MEO User', '2017-01-26 01:25:07', '0000-00-00 00:00:00'),
(539, '71600', 'SATID  THONGSRINUAN  ', 'SATID.T@UNIWISE.CO.TH', 0x353634353731, 'MEO User', '2017-01-26 01:25:21', '0000-00-00 00:00:00'),
(540, '71101', 'KITTIMA WANNASRI', 'KITTIMA.W@UNIWISE.CO.TH', 0x313635373935, 'MEO User', '2017-01-26 01:25:38', '0000-00-00 00:00:00'),
(541, '71053', 'CHARIYA CHAROENSOOK', 'CHARIYA.C@UNIWISE.CO.TH', 0x343832343938, 'MEO User', '2017-01-26 01:25:58', '0000-00-00 00:00:00'),
(542, '71503', 'USAVADEE KETKAEW', 'USAVADEE.K@UNIWISE.CO.TH', 0x313435313432, 'MEO User', '2017-01-26 01:26:14', '0000-00-00 00:00:00'),
(543, '71373', 'THIRAYA BOONRAT', 'THIRAYA.B@UNIWISE.CO.TH', 0x323535393238, 'MEO User', '2017-01-26 01:26:34', '0000-00-00 00:00:00'),
(544, '71504', 'NATTAMON KHUNTIKULANON', 'NUTTAMON.K@UNIWISE.CO.TH', 0x313434353733, 'MEO User', '2017-01-26 01:26:59', '0000-00-00 00:00:00'),
(545, '71429', 'TEEKHAYU MEEKAEW', 'TEEKHAYU.M@UNIWISE.CO.TH', 0x333737343739, 'MEO User', '2017-01-26 01:27:26', '0000-00-00 00:00:00'),
(546, '71456', 'NUJCHAREE JAMJAENG', 'NUJCHAREE.J@UNIWISE.CO.TH', 0x373435373234, 'MEO User', '2017-01-26 01:27:45', '0000-00-00 00:00:00'),
(547, '71476', 'DANAI JARI', 'DANAI.J@UNIWISE.CO.TH', 0x353835363236, 'MEO User', '2017-01-26 01:29:02', '0000-00-00 00:00:00'),
(548, '71020', 'AMPOL CHAREANSUP', 'AMPOL.C@UNIWISE.CO.TH', 0x313731323837, 'MEO User', '2017-01-26 01:29:22', '0000-00-00 00:00:00'),
(549, '71317', 'SANTI JUATHAI', 'SANTI.J@UNIWISE.CO.TH', 0x373133363735, 'MEO User', '2017-01-26 01:29:39', '0000-00-00 00:00:00'),
(550, '71367', 'SOREEKIN SANGNUAL', 'SORREKIN.S@UNIWISE.CO.TH', 0x373138343833, 'MEO User', '2017-01-26 01:29:59', '0000-00-00 00:00:00'),
(551, '71453', 'RACHEN  CHAIONKAEW', 'RACHEN.C@UNIWISE.CO.TH', 0x373932383231, 'MEO User', '2017-01-26 01:30:24', '0000-00-00 00:00:00'),
(552, '71371', 'JIRAPORN SUWANNA', 'JIRAPORN.S@UNIWISE.CO.TH', 0x373938383136, 'MEO User', '2017-01-26 01:30:44', '0000-00-00 00:00:00'),
(553, '7994', 'SITTIPONG SAYCHUMPUN', 'SITTIPONG.SC@UNIWISE.CO.TH', 0x363339313738, 'MEO User', '2017-01-26 01:31:04', '0000-00-00 00:00:00'),
(554, '71056', 'SOPON PONPAI', 'SOPON.P@UNIWISE.CO.TH', 0x323533353931, 'MEO User', '2017-01-26 01:35:01', '0000-00-00 00:00:00'),
(555, '71359', 'KANDA RAKPAKDEE', 'KANDA.R@UNIWISE.CO.TH', 0x373639363934, 'MEO User', '2017-01-26 02:41:38', '0000-00-00 00:00:00'),
(556, '71372', 'SUWANNA BOONKUMNED', 'SUWANNA.B@UNIWISE.CO.TH', 0x373233353835, 'MEO User', '2017-01-26 02:43:20', '0000-00-00 00:00:00'),
(557, '71433', 'PHETBUREE SANGMANEE', 'PHETBUREE.S@UNIWISE.CO.TH', 0x323531333439, 'MEO User', '2017-01-26 02:43:39', '0000-00-00 00:00:00'),
(558, '71508', 'PHILIPPE LAUVRAY', 'PHILIPPE.L@UNIWISE.CO.TH', 0x373432383734, 'MEO User', '2017-01-26 02:43:56', '0000-00-00 00:00:00'),
(559, '71567', 'KITTISAK  SUWANNSRI', 'KITTISAK.S@UNIWISE.CO.TH', 0x393132333535, 'MEO User', '2017-01-26 02:44:25', '0000-00-00 00:00:00'),
(560, '71306', 'THAMRONGSAK PANJUNSEE', 'THAMRONGSAK.P@UNIWISE.CO.TH', 0x353138373135, 'MEO User', '2017-01-26 02:44:53', '0000-00-00 00:00:00'),
(561, '71370', 'PATHOMPONG PROMYA ', 'PATHOMPONG.P@UNIWISE.CO.TH', 0x353935383733, 'MEO User', '2017-01-26 02:45:15', '0000-00-00 00:00:00'),
(562, '71463', 'MOEHAMAD  ARSYAD', 'MOEHAMAD.A@UNIWISE.CO.TH', 0x333737353337, 'MEO User', '2017-01-26 02:45:38', '0000-00-00 00:00:00'),
(563, '0305', 'BHARATRAJ+12', 'BHARATRAJ+12@SINGSYS.COM', 0x313231353634, 'Client', '2017-01-29 23:29:40', '0000-00-00 00:00:00'),
(564, '0000000000001', 'QUEK YEOW RONG', 'YR.QUEK@MEOGROUP.COM', 0x313734323437, 'MEO User', '2017-02-01 02:43:53', '0000-00-00 00:00:00'),
(567, '1012', 'MANISH', 'MANISHMAHANT@SINGSYS.COM', 0x4c75636b6e6f772531, 'MEO User', '2017-02-09 04:19:09', '2017-02-09 17:53:58'),
(568, '1013', 'RP SINGH CHAUHAN', 'RAHULPRATAP@SINGSYS.COM', 0x4c75636b6e6f772531, 'MEO User', '2017-02-09 04:27:16', '2017-02-09 18:18:57'),
(569, 'CLIENTUSER3', 'CLIENT NEW USER 2', 'CLIENT@NEW.COM', 0x393835343938, 'Client', '2017-02-21 07:44:22', '0000-00-00 00:00:00'),
(570, 'TEST2', 'JOVY C (TEST)', 'JOVY_CHAY@YAHOO.COM.SG', 0x323736313237, 'MEO User', '2017-03-16 03:32:58', '2017-03-16 11:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_rights_mailroom_entity`
--

CREATE TABLE `meo_user_rights_mailroom_entity` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(180) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_rights_mailroom_entity`
--

INSERT INTO `meo_user_rights_mailroom_entity` (`id_user`, `id_group`, `added_on`, `added_by`, `updated_on`, `updated_by`) VALUES
(11, 5, '2017-02-15 10:00:35', 'ADMIN', '2017-03-10 10:38:38', 'ADMIN'),
(126, 1, '2017-04-20 13:27:44', 'ADMIN', '0000-00-00 00:00:00', '');

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
(2, 3, 119, 'active', '2017-01-29 23:32:19', '2017-03-03 09:23:39'),
(3, 3, 60, 'active', '2017-01-29 23:32:42', '2017-02-25 12:26:57'),
(4, 5, 215, 'active', '2017-02-21 22:40:00', '0000-00-00 00:00:00');

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
(4, 1, 'active', 'active'),
(4, 2, 'active', 'active'),
(4, 3, 'active', 'active'),
(4, 4, 'active', 'active'),
(4, 5, 'active', 'active'),
(3, 1, 'active', 'active'),
(3, 2, 'active', 'active'),
(3, 3, 'active', 'active'),
(3, 4, 'active', 'active'),
(3, 5, 'active', 'active'),
(2, 1, 'active', 'active'),
(2, 2, 'active', 'active'),
(2, 3, 'active', 'active'),
(2, 4, 'active', 'active'),
(2, 5, 'active', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `meo_verification_log`
--

CREATE TABLE `meo_verification_log` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) DEFAULT NULL,
  `id_vessel_region` int(11) DEFAULT NULL,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `section` enum('shore','vessel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_verification_log`
--

INSERT INTO `meo_verification_log` (`id_user`, `id_vessel_name`, `id_vessel_region`, `sent_on`, `section`) VALUES
(238, NULL, NULL, '2017-02-01 07:19:39', 'shore'),
(238, NULL, NULL, '2017-02-01 07:25:18', 'shore'),
(44, NULL, NULL, '2017-02-01 07:25:37', 'shore'),
(44, NULL, NULL, '2017-02-01 07:43:46', 'shore'),
(148, NULL, NULL, '2017-02-01 21:56:40', 'shore'),
(106, NULL, NULL, '2017-02-01 21:56:43', 'shore'),
(44, NULL, NULL, '2017-02-02 02:47:13', 'shore'),
(87, NULL, NULL, '2017-02-02 02:47:16', 'shore'),
(45, NULL, NULL, '2017-02-02 02:47:20', 'shore'),
(44, NULL, NULL, '2017-02-02 02:47:24', 'shore'),
(87, NULL, NULL, '2017-02-02 02:47:28', 'shore'),
(45, NULL, NULL, '2017-02-02 02:47:32', 'shore'),
(106, NULL, NULL, '2017-02-02 07:12:56', 'shore'),
(108, NULL, NULL, '2017-02-02 07:13:00', 'shore'),
(108, NULL, NULL, '2017-02-03 01:53:53', 'shore'),
(106, NULL, NULL, '2017-02-03 01:53:56', 'shore'),
(264, NULL, NULL, '2017-02-03 01:53:59', 'shore'),
(108, NULL, NULL, '2017-02-08 03:45:35', 'shore'),
(108, NULL, NULL, '2017-02-09 00:46:36', 'shore'),
(108, NULL, NULL, '2017-02-09 00:51:07', 'shore'),
(108, NULL, NULL, '2017-02-09 00:57:11', 'vessel'),
(106, NULL, NULL, '2017-02-09 00:57:18', 'vessel'),
(108, NULL, NULL, '2017-02-09 01:36:55', 'vessel'),
(106, NULL, NULL, '2017-02-09 01:36:59', 'vessel'),
(60, NULL, NULL, '2017-02-10 02:29:31', 'shore'),
(65, NULL, NULL, '2017-02-10 02:29:35', 'shore'),
(119, NULL, NULL, '2017-02-10 02:29:38', 'shore'),
(108, NULL, NULL, '2017-02-13 03:24:12', 'shore'),
(60, NULL, NULL, '2017-02-14 02:48:51', 'shore'),
(65, NULL, NULL, '2017-02-14 02:48:55', 'shore'),
(119, NULL, NULL, '2017-02-14 02:48:59', 'shore'),
(60, NULL, NULL, '2017-02-14 03:12:07', 'shore'),
(119, NULL, NULL, '2017-02-14 03:12:11', 'shore'),
(215, NULL, NULL, '2017-02-20 23:27:31', 'shore'),
(106, NULL, NULL, '2017-02-21 21:44:51', 'shore'),
(0, 174, 45, '2017-02-21 21:47:57', 'vessel'),
(0, 174, 45, '2017-02-21 21:48:01', 'vessel'),
(0, 174, 45, '2017-02-21 21:55:34', 'vessel'),
(106, NULL, NULL, '2017-02-22 01:06:37', 'shore'),
(106, NULL, NULL, '2017-02-22 03:09:22', 'shore'),
(60, NULL, NULL, '2017-02-24 03:55:41', 'shore'),
(65, NULL, NULL, '2017-02-24 03:55:45', 'shore'),
(60, NULL, NULL, '2017-02-24 03:55:49', 'shore'),
(65, NULL, NULL, '2017-02-24 03:55:53', 'shore'),
(119, NULL, NULL, '2017-02-24 23:35:53', 'shore'),
(108, NULL, NULL, '2017-02-28 04:45:16', 'shore');

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
  `updated_on` datetime NOT NULL,
  `id_entity` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_name_entity`
--

INSERT INTO `meo_vessel_name_entity` (`id_vessel_name`, `vesselID`, `vessel_name`, `id_main_vessel_type`, `id_vessel_type`, `status`, `status_reason`, `added_on`, `updated_on`, `id_entity`) VALUES
(9, 'MS2', 'MEO SOVEREIGN 1', 1, 22, 'active', '', '2017-01-12 21:58:19', '2017-03-03 11:12:31', 1),
(10, 'MS1', 'SOVEREIGN 2', 1, 22, 'active', '', '2017-01-12 21:58:36', '2017-03-29 09:55:26', 1),
(15, 'RG', 'RANGER', 1, 13, 'active', '', '2017-01-12 22:02:57', '0000-00-00 00:00:00', 2),
(17, 'ENT', 'ENTERPRISE', 1, 1, 'active', '', '2017-01-12 22:03:30', '0000-00-00 00:00:00', 2),
(18, 'END', 'ENDURANCE', 1, 1, 'active', '', '2017-01-12 22:03:50', '0000-00-00 00:00:00', 2),
(21, 'SO017', 'AOS 8', 3, 4, 'active', '', '2017-01-16 01:45:14', '0000-00-00 00:00:00', 2),
(22, 'SP101', 'AOS 1', 3, 4, 'active', '', '2017-01-16 01:45:58', '0000-00-00 00:00:00', 2),
(23, 'SP105', 'DNV EXPRESS 18', 3, 4, 'active', '', '2017-01-16 01:46:21', '0000-00-00 00:00:00', 2),
(24, 'SP106', 'EXPRESS 3', 3, 4, 'active', '', '2017-01-16 01:46:49', '0000-00-00 00:00:00', 2),
(25, 'SP107', 'EXPRESS 4', 3, 4, 'active', '', '2017-01-16 01:48:43', '0000-00-00 00:00:00', 2),
(26, 'SP112', 'EXPRESS 19', 3, 4, 'active', '', '2017-01-16 01:49:07', '0000-00-00 00:00:00', 2),
(27, 'SP117', 'EXPRESS 24', 3, 4, 'active', '', '2017-01-16 01:49:56', '0000-00-00 00:00:00', 2),
(28, 'SP118', 'EXPRESS 25', 3, 4, 'active', '', '2017-01-16 01:50:25', '0000-00-00 00:00:00', 2),
(29, 'SP119', 'EXPRESS 26', 3, 4, 'active', '', '2017-01-16 01:51:00', '0000-00-00 00:00:00', 2),
(30, 'SP120', 'UNI EXPRESS 21', 3, 4, 'active', '', '2017-01-16 01:51:25', '0000-00-00 00:00:00', 2),
(31, 'SP123', 'EXPRESS 31', 3, 4, 'active', '', '2017-01-16 01:51:46', '0000-00-00 00:00:00', 2),
(32, 'SP124', 'EXPRESS 32', 3, 4, 'active', '', '2017-01-16 01:52:20', '0000-00-00 00:00:00', 2),
(33, 'SP127', 'EXPRESS 35', 3, 4, 'active', '', '2017-01-16 01:52:44', '0000-00-00 00:00:00', 2),
(34, 'SP128', 'EXPRESS 36', 3, 4, 'active', '', '2017-01-16 01:53:18', '0000-00-00 00:00:00', 2),
(35, 'SP131', 'EXPRESS 52', 3, 4, 'active', '', '2017-01-16 02:03:05', '0000-00-00 00:00:00', 2),
(36, 'SP132', 'EXPRESS 53', 3, 4, 'active', '', '2017-01-16 02:03:41', '0000-00-00 00:00:00', 2),
(37, 'SP133', 'EXPRESS 54', 3, 4, 'active', '', '2017-01-16 02:04:27', '0000-00-00 00:00:00', 2),
(38, 'SP134', 'EXPRESS 55', 3, 4, 'active', '', '2017-01-16 02:11:05', '0000-00-00 00:00:00', 2),
(39, 'SP135', 'EXPRESS 56', 3, 4, 'active', '', '2017-01-16 02:12:27', '0000-00-00 00:00:00', 2),
(40, 'SP136', 'EXPRESS 57', 3, 4, 'active', '', '2017-01-16 02:12:52', '0000-00-00 00:00:00', 2),
(41, 'SP137', 'EXPRESS 58', 3, 4, 'active', '', '2017-01-16 02:16:41', '0000-00-00 00:00:00', 2),
(42, 'SP138', 'EXPRESS 59', 3, 4, 'active', '', '2017-01-16 02:17:01', '0000-00-00 00:00:00', 2),
(43, 'SP139', 'EXPRESS 60', 3, 4, 'active', '', '2017-01-16 02:17:21', '0000-00-00 00:00:00', 2),
(44, 'SP140', 'EXPRESS 61', 3, 4, 'active', '', '2017-01-16 02:17:41', '0000-00-00 00:00:00', 2),
(45, 'SP141', 'EXPRESS 62', 3, 4, 'active', '', '2017-01-16 02:18:04', '0000-00-00 00:00:00', 2),
(46, 'SP142', 'EXPRESS 63', 3, 4, 'active', '', '2017-01-16 02:18:27', '0000-00-00 00:00:00', 2),
(47, 'SP143', 'AOS 2', 3, 4, 'active', '', '2017-01-16 02:18:46', '0000-00-00 00:00:00', 2),
(48, 'SP145', 'UNI EXPRESS 9', 3, 4, 'active', '', '2017-01-16 02:19:11', '0000-00-00 00:00:00', 2),
(49, 'SP146', 'UNI EXPRESS 10', 3, 4, 'active', '', '2017-01-16 02:19:37', '0000-00-00 00:00:00', 2),
(50, 'SP147', 'UNI EXPRESS 11', 3, 4, 'active', '', '2017-01-16 02:19:57', '0000-00-00 00:00:00', 2),
(51, 'SP148', 'UNI EXPRESS 12', 3, 4, 'active', '', '2017-01-16 02:20:21', '0000-00-00 00:00:00', 2),
(52, 'SP149', 'UNI EXPRESS 13', 3, 4, 'active', '', '2017-01-16 02:22:22', '0000-00-00 00:00:00', 2),
(53, 'SP150', 'UNI EXPRESS 14', 3, 4, 'active', '', '2017-01-16 02:22:52', '0000-00-00 00:00:00', 2),
(54, 'SP151', 'UNI EXPRESS 15', 3, 4, 'active', '', '2017-01-16 02:23:14', '0000-00-00 00:00:00', 2),
(55, 'SP152', 'UNI EXPRESS 16', 3, 4, 'active', '', '2017-01-16 02:23:32', '0000-00-00 00:00:00', 2),
(56, 'SP153', 'UNI EXPRESS 17', 3, 4, 'active', '', '2017-01-16 02:23:56', '0000-00-00 00:00:00', 2),
(57, 'SP154', 'UNI EXPRESS 19', 3, 4, 'active', '', '2017-01-16 02:24:36', '0000-00-00 00:00:00', 2),
(58, 'SP155', 'UNI EXPRESS 20', 3, 4, 'active', '', '2017-01-16 02:24:59', '0000-00-00 00:00:00', 2),
(59, 'SP160', 'SAMSON SUPPLIER', 3, 4, 'active', '', '2017-01-16 02:25:19', '0000-00-00 00:00:00', 2),
(60, 'SP161', 'SAMSON SUPPORTER', 3, 4, 'active', '', '2017-01-16 02:25:46', '0000-00-00 00:00:00', 2),
(61, 'SP162', 'EXPRESS 64', 3, 4, 'active', '', '2017-01-16 02:26:17', '0000-00-00 00:00:00', 2),
(62, 'SP163', 'EXPRESS 65', 3, 4, 'active', '', '2017-01-16 02:26:44', '0000-00-00 00:00:00', 2),
(63, 'SP164', 'EXPRESS 66', 3, 4, 'active', '', '2017-01-16 02:27:07', '0000-00-00 00:00:00', 2),
(64, 'SP165', 'EXPRESS 67', 3, 4, 'active', '', '2017-01-16 02:27:27', '0000-00-00 00:00:00', 2),
(65, 'SP166', 'UNI EXPRESS 18', 3, 4, 'active', '', '2017-01-16 02:27:46', '0000-00-00 00:00:00', 2),
(66, 'SP167', 'EXPRESS 2', 3, 4, 'active', '', '2017-01-16 02:28:10', '0000-00-00 00:00:00', 2),
(67, 'SP168', 'EXPRESS 11', 3, 4, 'active', '', '2017-01-16 02:29:49', '0000-00-00 00:00:00', 2),
(68, 'SP169', 'EXPRESS 12', 3, 4, 'active', '', '2017-01-16 02:30:13', '0000-00-00 00:00:00', 2),
(69, 'SP170', 'EXPRESS 68', 3, 4, 'active', '', '2017-01-16 02:32:20', '0000-00-00 00:00:00', 2),
(70, 'SP171', 'EXPRESS 69', 3, 4, 'active', '', '2017-01-16 02:32:52', '0000-00-00 00:00:00', 2),
(72, 'SP177', 'EXPRESS 71', 3, 4, 'active', '', '2017-01-16 02:42:22', '0000-00-00 00:00:00', 2),
(73, 'SP176', 'EXPRESS 70', 3, 4, 'active', '', '2017-01-16 02:42:46', '0000-00-00 00:00:00', 2),
(74, 'SP180', 'EXPRESS 72', 3, 4, 'active', '', '2017-01-16 02:43:38', '0000-00-00 00:00:00', 2),
(75, 'SP181', 'EXPRESS 73', 3, 4, 'active', '', '2017-01-16 02:43:54', '0000-00-00 00:00:00', 2),
(76, 'SP184', 'UNI EXPRESS 23', 3, 4, 'active', '', '2017-01-16 02:44:08', '0000-00-00 00:00:00', 2),
(77, 'SP185', 'UNI EXPRESS 24', 3, 4, 'active', '', '2017-01-16 02:44:26', '0000-00-00 00:00:00', 2),
(78, 'SP186', 'EXPRESS 75', 3, 4, 'active', '', '2017-01-16 02:44:44', '0000-00-00 00:00:00', 2),
(79, 'SP187', 'EXPRESS 76', 3, 4, 'active', '', '2017-01-16 02:45:53', '0000-00-00 00:00:00', 2),
(80, 'SP188', 'EXPRESS 77', 3, 4, 'active', '', '2017-01-16 02:46:27', '0000-00-00 00:00:00', 2),
(81, 'SP189', 'EXPRESS 78', 3, 4, 'active', '', '2017-01-16 02:46:58', '0000-00-00 00:00:00', 2),
(82, 'SP190', 'EXPRESS 79', 3, 4, 'active', '', '2017-01-16 02:47:16', '0000-00-00 00:00:00', 2),
(83, 'SP191', 'EXPRESS 80', 3, 4, 'active', '', '2017-01-16 02:47:49', '0000-00-00 00:00:00', 2),
(84, 'SP192', 'EXPRESS 81', 3, 4, 'active', '', '2017-01-16 02:48:13', '0000-00-00 00:00:00', 2),
(85, 'SP193', 'EXPRESS 87', 3, 4, 'active', '', '2017-01-16 02:48:30', '0000-00-00 00:00:00', 2),
(86, 'SP196', 'EXPRESS 82', 3, 4, 'active', '', '2017-01-16 02:49:07', '0000-00-00 00:00:00', 2),
(87, 'SP197', 'EXPRESS 83', 3, 4, 'active', '', '2017-01-16 02:49:28', '0000-00-00 00:00:00', 2),
(88, 'SP199', 'EXPRESS 85', 3, 4, 'active', '', '2017-01-16 02:50:25', '0000-00-00 00:00:00', 2),
(89, 'SP204', 'MICLYN ENDURANCE', 6, 1, 'active', '', '2017-01-16 02:52:19', '2017-01-23 19:05:14', 2),
(90, 'SP205', 'MICLYN ENERGY', 2, 15, 'active', '', '2017-01-16 02:52:57', '2017-01-23 19:00:12', 2),
(91, 'SP206', 'MICLYN ENTERPRISE', 6, 1, 'active', '', '2017-01-16 03:02:43', '2017-01-23 19:05:27', 2),
(92, 'SP208', 'MICLYN GRACE', 2, 15, 'active', '', '2017-01-16 03:03:06', '2017-01-23 19:00:24', 2),
(93, 'SP209', 'MICLYN GRAND', 2, 15, 'active', '', '2017-01-16 03:05:52', '2017-01-23 19:00:36', 2),
(94, 'SP212', 'MICLYN ONYX', 2, 18, 'active', '', '2017-01-16 03:06:19', '2017-01-23 19:00:47', 2),
(95, 'SP213', 'MICLYN OPAL', 2, 18, 'active', '', '2017-01-16 03:10:23', '2017-01-23 19:00:59', 2),
(96, 'SP214', 'MICLYN ORION', 2, 8, 'active', '', '2017-01-16 03:10:50', '2017-01-23 19:01:13', 2),
(97, 'SP216', 'MICLYN POWER', 2, 8, 'active', '', '2017-01-16 03:11:12', '2017-01-23 19:01:28', 2),
(98, 'SP218', 'MICLYN VENTURE', 2, 8, 'active', '', '2017-01-16 03:11:43', '2017-01-23 19:01:42', 2),
(99, 'SP219', 'MICLYN VICTORY', 2, 8, 'active', '', '2017-01-16 03:12:04', '2017-01-23 19:01:55', 2),
(100, 'SP221', 'UNIWISE ADVANCER', 2, 8, 'active', '', '2017-01-16 03:12:38', '0000-00-00 00:00:00', 2),
(101, 'SP222', 'MAGELLAN 1', 2, 8, 'active', '', '2017-01-16 03:14:25', '0000-00-00 00:00:00', 2),
(102, 'SP223', 'MEO VALIANT', 2, 14, 'active', '', '2017-01-16 03:14:43', '0000-00-00 00:00:00', 2),
(103, 'SP224', 'SEISMIC SUPPORTER', 2, 18, 'active', '', '2017-01-16 03:15:12', '0000-00-00 00:00:00', 2),
(104, 'SP225', 'MAGELLAN 2', 2, 8, 'active', '', '2017-01-16 03:16:35', '0000-00-00 00:00:00', 2),
(105, 'SP226', 'MEO VIGILANT', 2, 14, 'active', '', '2017-01-16 03:17:10', '0000-00-00 00:00:00', 2),
(106, 'SP227', 'MICLYN CONSTRUCTOR I', 5, 6, 'active', '', '2017-01-16 03:17:46', '2017-01-23 19:02:06', 2),
(107, 'SP228', 'MEO GALAXY', 2, 3, 'active', '', '2017-01-16 03:19:35', '0000-00-00 00:00:00', 2),
(108, 'SP229', 'MEO SOVEREIGN I', 6, 5, 'active', '', '2017-01-16 03:20:12', '0000-00-00 00:00:00', 2),
(109, 'SP230	', 'MEO SOVEREIGN II', 6, 5, 'active', '', '2017-01-16 03:20:35', '0000-00-00 00:00:00', 2),
(110, 'SP232', 'UNI EXPRESS 22', 3, 4, 'active', '', '2017-01-16 03:21:53', '0000-00-00 00:00:00', 2),
(111, 'SP233', 'MEO RANGER', 6, 13, 'active', '', '2017-01-16 03:26:05', '0000-00-00 00:00:00', 2),
(112, 'SP235', 'TARKA', 1, 22, 'active', '', '2017-01-16 03:27:35', '0000-00-00 00:00:00', 2),
(113, 'SP236', 'AOS PATTAYA', 2, 14, 'active', '', '2017-01-16 03:28:06', '0000-00-00 00:00:00', 2),
(114, 'SP237', 'AOS PHUKET', 2, 18, 'active', '', '2017-01-16 03:28:46', '0000-00-00 00:00:00', 2),
(115, 'SP238', 'AOS RATCHABURI', 2, 18, 'active', '', '2017-01-16 03:31:05', '0000-00-00 00:00:00', 2),
(116, 'SP239', 'UNIWISE RAYONG', 2, 14, 'active', '', '2017-01-16 03:31:26', '0000-00-00 00:00:00', 2),
(117, 'SP240', 'UNIWISE SONGKHLA', 2, 14, 'active', '', '2017-01-16 03:31:47', '0000-00-00 00:00:00', 2),
(118, 'SP241', 'CERMAT', 2, 18, 'active', '', '2017-01-16 03:32:08', '0000-00-00 00:00:00', 2),
(119, 'SP242', 'CERDIK', 2, 18, 'active', '', '2017-01-16 03:32:30', '0000-00-00 00:00:00', 2),
(120, 'SP245', 'MEO EMPEROR', 2, 8, 'active', '', '2017-01-16 03:34:09', '0000-00-00 00:00:00', 2),
(121, 'SP246', 'MEO EMPRESS', 2, 8, 'active', '', '2017-01-16 03:34:37', '0000-00-00 00:00:00', 2),
(122, 'SP247', 'EXPRESS 86', 3, 4, 'active', '', '2017-01-16 03:34:53', '0000-00-00 00:00:00', 2),
(123, 'SP302', 'MICLYN 181', 5, 10, 'active', '', '2017-01-16 03:35:27', '2017-01-23 19:02:17', 2),
(124, 'SP304', 'MICLYN 253', 5, 10, 'active', '', '2017-01-16 03:40:34', '2017-01-23 19:02:27', 2),
(125, 'SP307', 'MICLYN 257', 5, 10, 'active', '', '2017-01-16 03:41:02', '2017-01-23 19:02:37', 2),
(126, 'SP308', 'MICLYN 258', 5, 10, 'active', '', '2017-01-16 03:42:05', '2017-01-23 19:02:47', 2),
(127, 'SP309', 'MICLYN 259', 5, 10, 'active', '', '2017-01-16 03:42:35', '2017-01-23 19:03:00', 2),
(128, 'SP310', 'MICLYN 283', 5, 10, 'active', '', '2017-01-16 03:43:01', '2017-01-23 19:03:10', 2),
(129, 'SP311', 'MICLYN 285', 5, 10, 'active', '', '2017-01-16 03:43:59', '2017-01-23 19:03:20', 2),
(130, 'SP312', 'MICLYN 286', 5, 10, 'active', '', '2017-01-16 03:44:36', '2017-01-23 19:03:29', 2),
(131, 'SP313', 'MICLYN 287', 5, 10, 'active', '', '2017-01-16 03:45:10', '2017-01-23 19:03:39', 2),
(132, 'SP314', 'MICLYN 288', 5, 10, 'active', '', '2017-01-16 03:45:40', '2017-01-23 19:03:49', 2),
(133, 'SP315', 'MICLYN 301', 5, 10, 'active', '', '2017-01-16 03:46:07', '2017-01-23 19:03:59', 2),
(134, 'SP316', 'MICLYN 303', 5, 10, 'active', '', '2017-01-16 03:46:37', '2017-01-23 19:04:07', 2),
(135, 'SP317', 'MICLYN 305', 5, 10, 'active', '', '2017-01-16 03:46:55', '2017-01-23 19:04:17', 2),
(136, 'SP318', 'MICLYN 2510', 5, 10, 'active', '', '2017-01-16 03:47:12', '2017-01-23 19:04:27', 2),
(137, 'SP319', 'MICLYN 3316', 5, 10, 'active', '', '2017-01-16 03:47:30', '2017-01-23 19:04:36', 2),
(138, 'SP320', 'MICLYN 3317', 5, 10, 'active', '', '2017-01-16 03:47:50', '2017-01-23 19:04:45', 2),
(139, 'SP321', 'MICLYN 3318', 5, 10, 'active', '', '2017-01-16 03:48:14', '2017-01-23 19:04:54', 2),
(140, 'SP325', 'M 3319', 5, 10, 'active', '', '2017-01-16 03:48:34', '0000-00-00 00:00:00', 2),
(141, 'SP326', 'M 3320', 5, 10, 'active', '', '2017-01-16 03:48:53', '0000-00-00 00:00:00', 2),
(142, 'SP327', 'MICLYN 3301', 5, 10, 'active', '', '2017-01-16 03:49:15', '2017-01-23 19:05:04', 2),
(143, 'SP331', 'MEO GUARDIAN', 2, 3, 'active', '', '2017-01-16 03:50:32', '0000-00-00 00:00:00', 2),
(144, 'SP333', 'EXPRESS 88', 3, 4, 'active', '', '2017-01-16 03:50:55', '0000-00-00 00:00:00', 2),
(145, 'SP334', 'EXPRESS 89', 3, 4, 'active', '', '2017-01-16 03:51:11', '0000-00-00 00:00:00', 2),
(146, 'SP335	', 'EXPRESS 90', 3, 4, 'active', '', '2017-01-16 03:51:36', '0000-00-00 00:00:00', 2),
(147, 'SP336', 'EXPRESS 91', 3, 4, 'active', '', '2017-01-16 03:51:55', '0000-00-00 00:00:00', 2),
(148, 'SP337', 'EXPRESS 92', 3, 4, 'active', '', '2017-01-16 03:52:12', '0000-00-00 00:00:00', 2),
(149, 'SP338', 'UNI EXPRESS 25', 3, 4, 'active', '', '2017-01-16 03:52:30', '0000-00-00 00:00:00', 2),
(150, 'SP340', 'EXPRESS 93', 3, 4, 'active', '', '2017-01-16 03:53:21', '0000-00-00 00:00:00', 2),
(151, 'SP341', 'EOS 283', 5, 10, 'active', '', '2017-01-16 03:53:53', '0000-00-00 00:00:00', 2),
(152, 'SP345', 'EOS 4001', 5, 10, 'active', '', '2017-01-16 03:54:36', '0000-00-00 00:00:00', 2),
(153, 'SP346', 'EOS 4002', 5, 10, 'active', '', '2017-01-16 03:54:57', '0000-00-00 00:00:00', 2),
(154, 'SP350', 'EOS 281', 5, 10, 'active', '', '2017-01-16 03:55:15', '0000-00-00 00:00:00', 2),
(155, 'SP351', 'EOS 282', 5, 10, 'active', '', '2017-01-16 03:55:35', '0000-00-00 00:00:00', 2),
(156, 'SP354', 'EOS 285', 5, 10, 'active', '', '2017-01-16 03:55:50', '0000-00-00 00:00:00', 2),
(157, 'SP355', 'VOYAGER EXPLORER', 2, 17, 'active', '', '2017-01-16 03:56:09', '0000-00-00 00:00:00', 2),
(158, 'SP344', 'ALERT', 1, 23, 'active', '', '2017-01-16 03:57:29', '0000-00-00 00:00:00', 2),
(159, 'SP201	', 'ENDEAVOUR', 6, 1, 'active', '', '2017-01-16 04:09:32', '0000-00-00 00:00:00', 2),
(160, 'SP231', 'UNIWISE SUPPORTER', 6, 13, 'active', '', '2017-01-16 04:10:43', '0000-00-00 00:00:00', 2),
(161, 'SP234', 'RESOLUTION', 6, 1, 'active', '', '2017-01-16 04:11:14', '0000-00-00 00:00:00', 2),
(162, 'SP243', 'UNIWISE ADVANTAGE', 6, 5, 'active', '', '2017-01-16 04:11:51', '0000-00-00 00:00:00', 2),
(163, 'SP244', 'UNIWISE ADVENTURE', 6, 5, 'active', '', '2017-01-16 04:12:22', '0000-00-00 00:00:00', 2),
(164, 'SP328', 'MERMAID NUSANTARA', 6, 1, 'active', '', '2017-01-16 04:13:15', '0000-00-00 00:00:00', 2),
(165, 'SP329', 'MEO MONARCH 1', 6, 5, 'active', '', '2017-01-16 04:14:08', '0000-00-00 00:00:00', 2),
(166, 'SP330', 'MEO MONARCH 2', 6, 5, 'active', '', '2017-01-16 04:14:23', '0000-00-00 00:00:00', 2),
(167, 'SP178', 'SAMSON 6', 1, 22, 'active', '', '2017-01-16 04:26:33', '0000-00-00 00:00:00', 2),
(168, 'SP179', 'SAMSON 7', 1, 22, 'active', '', '2017-01-16 04:26:52', '0000-00-00 00:00:00', 2),
(169, 'SP173', 'SAMSON 101', 1, 22, 'active', '', '2017-01-16 21:19:12', '0000-00-00 00:00:00', 2),
(174, 'TEST', 'TESTING', 3, 4, 'active', '', '2017-02-09 05:14:04', '0000-00-00 00:00:00', 2);

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
(23, 30, 'active', '2017-01-16 20:05:53', '2017-02-04 11:56:09'),
(25, 31, 'active', '2017-01-16 20:08:21', '0000-00-00 00:00:00'),
(27, 35, 'active', '2017-01-16 20:56:56', '2017-01-19 13:43:19'),
(31, 34, 'active', '2017-01-16 21:33:44', '2017-02-01 14:32:04'),
(34, 36, 'active', '2017-01-19 20:31:25', '0000-00-00 00:00:00'),
(36, 55, 'active', '2017-01-19 20:32:23', '0000-00-00 00:00:00'),
(38, 59, 'active', '2017-01-19 20:41:55', '2017-02-01 15:21:59'),
(40, 26, 'active', '2017-01-23 01:15:51', '0000-00-00 00:00:00'),
(41, 58, 'active', '2017-01-23 01:34:37', '2017-01-23 15:20:56'),
(42, 62, 'active', '2017-01-26 03:18:11', '2017-02-01 15:33:17'),
(43, 61, 'active', '2017-02-02 22:25:35', '0000-00-00 00:00:00'),
(44, 64, 'active', '2017-02-08 00:54:22', '0000-00-00 00:00:00'),
(45, 65, 'active', '2017-02-08 02:43:21', '2017-02-13 16:21:23');

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
(11, 25, 119, 20),
(12, 25, 118, 14),
(13, 25, 94, 13),
(14, 25, 74, 17),
(15, 25, 79, 18),
(16, 25, 81, 15),
(17, 25, 82, 21),
(18, 25, 144, 16),
(19, 25, 147, 19),
(26, 27, 165, 31),
(27, 27, 166, 27),
(28, 27, 158, 28),
(29, 27, 167, 30),
(30, 27, 168, 33),
(31, 27, 112, 32),
(32, 27, 169, 29),
(44, 34, 25, 12),
(45, 34, 67, 8),
(46, 34, 68, 14),
(47, 34, 23, 17),
(48, 34, 26, 1),
(49, 34, 59, 3),
(50, 34, 92, 2),
(51, 34, 93, 10),
(52, 34, 97, 4),
(53, 34, 111, 16),
(54, 34, 143, 5),
(55, 34, 101, 15),
(56, 34, 104, 11),
(57, 34, 24, 7),
(58, 34, 80, 6),
(59, 34, 147, 13),
(60, 34, 99, 18),
(61, 34, 107, 9),
(63, 36, 58, 52),
(87, 40, 66, 5),
(88, 40, 35, 4),
(89, 40, 37, 2),
(90, 40, 148, 1),
(91, 40, 103, 3),
(92, 41, 98, 63),
(93, 41, 154, 70),
(94, 41, 155, 55),
(95, 41, 151, 62),
(96, 41, 156, 65),
(97, 41, 152, 76),
(98, 41, 153, 58),
(99, 41, 140, 75),
(102, 41, 141, 69),
(103, 41, 124, 64),
(104, 41, 125, 77),
(105, 41, 126, 59),
(106, 41, 127, 72),
(107, 41, 136, 74),
(108, 41, 132, 56),
(109, 41, 131, 73),
(110, 41, 130, 60),
(111, 41, 129, 78),
(112, 41, 128, 66),
(113, 41, 127, 72),
(114, 41, 133, 67),
(115, 41, 134, 79),
(116, 41, 135, 61),
(117, 41, 142, 54),
(118, 41, 137, 57),
(119, 41, 138, 68),
(120, 41, 139, 53),
(163, 31, 164, 23),
(164, 31, 161, 25),
(165, 31, 159, 22),
(166, 31, 89, 24),
(167, 31, 157, 26),
(169, 38, 27, 13),
(170, 38, 28, 1),
(171, 38, 29, 10),
(172, 38, 38, 20),
(173, 38, 39, 8),
(174, 38, 40, 18),
(175, 38, 41, 6),
(176, 38, 42, 15),
(177, 38, 43, 3),
(178, 38, 44, 12),
(179, 38, 45, 22),
(180, 38, 46, 9),
(181, 38, 61, 19),
(182, 38, 64, 7),
(183, 38, 78, 17),
(184, 38, 145, 5),
(185, 38, 86, 14),
(186, 38, 122, 2),
(187, 38, 96, 16),
(188, 38, 95, 4),
(189, 38, 60, 11),
(190, 38, 146, 21),
(191, 42, 9, 133),
(192, 42, 21, 136),
(193, 42, 30, 116),
(194, 42, 33, 131),
(195, 42, 34, 111),
(196, 42, 47, 126),
(197, 42, 48, 142),
(198, 42, 49, 122),
(199, 42, 50, 138),
(200, 42, 51, 118),
(201, 42, 52, 134),
(202, 42, 53, 114),
(203, 42, 55, 129),
(204, 42, 56, 109),
(205, 42, 57, 125),
(206, 42, 62, 141),
(207, 42, 65, 121),
(208, 42, 72, 137),
(209, 42, 75, 117),
(210, 42, 76, 132),
(211, 42, 77, 112),
(212, 42, 83, 127),
(213, 42, 90, 113),
(214, 42, 91, 135),
(215, 42, 100, 128),
(216, 42, 105, 108),
(217, 42, 106, 119),
(218, 42, 110, 143),
(219, 42, 114, 124),
(220, 42, 117, 140),
(221, 42, 120, 120),
(222, 42, 149, 123),
(223, 42, 160, 115),
(224, 42, 162, 130),
(225, 42, 163, 110),
(226, 42, 36, 139),
(227, 43, 22, 102),
(228, 43, 84, 104),
(229, 43, 54, 107),
(230, 43, 115, 106),
(231, 43, 113, 103),
(232, 43, 116, 105),
(290, 23, 63, 11),
(291, 23, 69, 7),
(292, 23, 70, 10),
(293, 23, 73, 6),
(294, 23, 83, 9),
(295, 23, 85, 12),
(296, 23, 87, 8),
(297, 44, 15, 1),
(300, 45, 174, 1);

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
(1, 'DP2 SUBSEA SUPPORT VESSEL', 'active', 6, '2017-01-06 13:53:48', '2017-01-16 15:14:08'),
(3, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-06 13:54:34', '2017-01-13 13:33:43'),
(4, 'CREW / UTILITY VESSEL', 'active', 3, '2017-01-12 21:43:43', '0000-00-00 00:00:00'),
(5, 'DP2 AHTS', 'active', 6, '2017-01-12 21:44:02', '2017-01-16 15:14:16'),
(6, 'ACCOMMODATION BARGE', 'active', 5, '2017-01-12 21:45:10', '0000-00-00 00:00:00'),
(7, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-12 21:45:29', '2017-01-13 11:18:55'),
(8, 'AHT / AHTS', 'active', 2, '2017-01-12 21:45:59', '0000-00-00 00:00:00'),
(9, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-12 21:48:55', '0000-00-00 00:00:00'),
(10, 'BARGES', 'active', 5, '2017-01-12 21:51:05', '0000-00-00 00:00:00'),
(13, 'DP2 PSV', 'active', 6, '2017-01-12 21:52:57', '2017-01-16 15:14:23'),
(14, 'MOTTS', 'active', 2, '2017-01-12 21:53:17', '0000-00-00 00:00:00'),
(15, 'MPSV', 'active', 2, '2017-01-12 21:53:26', '0000-00-00 00:00:00'),
(17, 'SEISMIC VESSELS', 'active', 2, '2017-01-12 21:53:52', '0000-00-00 00:00:00'),
(18, 'UTILITY TUG / MULTI-PURPOSE', 'active', 2, '2017-01-12 21:54:10', '0000-00-00 00:00:00'),
(20, 'AHT / AHTS', 'active', 2, '2017-01-13 00:03:30', '0000-00-00 00:00:00'),
(21, 'ACCOMMODATION WORKBOAT', 'active', 2, '2017-01-13 00:03:43', '0000-00-00 00:00:00'),
(22, 'MULTICAT/  TUGS', 'active', 1, '2017-01-16 02:41:22', '0000-00-00 00:00:00'),
(23, 'COASTAL SURVEY VESSELS', 'active', 1, '2017-01-16 03:57:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meo_admin_section_accessibility`
--
ALTER TABLE `meo_admin_section_accessibility`
  ADD KEY `id_group_access` (`id_group_access`),
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_group_access_2` (`id_group_access`),
  ADD KEY `id_section_2` (`id_section`);

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
-- Indexes for table `meo_claim_expense_type_entity`
--
ALTER TABLE `meo_claim_expense_type_entity`
  ADD PRIMARY KEY (`id_claim`);

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
-- Indexes for table `meo_client_user_rights_mailroom_entity`
--
ALTER TABLE `meo_client_user_rights_mailroom_entity`
  ADD KEY `id_client_user` (`id_client_user`,`id_group`),
  ADD KEY `id_group` (`id_group`);

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
  ADD KEY `id_group_bu` (`id_group_bu`),
  ADD KEY `id_entity` (`id_entity`);

--
-- Indexes for table `meo_group_rights_access_mailroom`
--
ALTER TABLE `meo_group_rights_access_mailroom`
  ADD KEY `id_group_right` (`id_group_right`);

--
-- Indexes for table `meo_group_rights_mailroom_entity`
--
ALTER TABLE `meo_group_rights_mailroom_entity`
  ADD PRIMARY KEY (`id_rights`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  ADD PRIMARY KEY (`id_admin_access`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_group_2` (`id_group`);

--
-- Indexes for table `meo_mailroom_build_form_approvers_entity`
--
ALTER TABLE `meo_mailroom_build_form_approvers_entity`
  ADD KEY `id_build_form` (`id_build_form`);

--
-- Indexes for table `meo_mailroom_build_form_entity`
--
ALTER TABLE `meo_mailroom_build_form_entity`
  ADD PRIMARY KEY (`id_build_form`),
  ADD KEY `id_department` (`id_department`);

--
-- Indexes for table `meo_mailroom_build_form_privacy_entity`
--
ALTER TABLE `meo_mailroom_build_form_privacy_entity`
  ADD KEY `id_build_form` (`id_build_form`);

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
  ADD KEY `member_id` (`id_meo_user`),
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
-- Indexes for table `meo_user_rights_mailroom_entity`
--
ALTER TABLE `meo_user_rights_mailroom_entity`
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_user` (`id_user`);

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
-- Indexes for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  ADD PRIMARY KEY (`id_vessel_name`),
  ADD KEY `id_main_vessel_type` (`id_main_vessel_type`),
  ADD KEY `id_vessel_type` (`id_vessel_type`),
  ADD KEY `id_entity` (`id_entity`);

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
-- Indexes for table `meo_vessel_type_entity`
--
ALTER TABLE `meo_vessel_type_entity`
  ADD PRIMARY KEY (`id_vessel_type`),
  ADD KEY `id_main_vessel_type` (`id_main_vessel_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meo_capex_discussion`
--
ALTER TABLE `meo_capex_discussion`
  MODIFY `id_capex_discussion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
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
  MODIFY `id_capex_notifier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `meo_capex_request`
--
ALTER TABLE `meo_capex_request`
  MODIFY `id_capex_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `meo_capex_request_approvers`
--
ALTER TABLE `meo_capex_request_approvers`
  MODIFY `id_capex_request_approvers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `meo_capex_request_privacy`
--
ALTER TABLE `meo_capex_request_privacy`
  MODIFY `id_capex_privacy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
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
-- AUTO_INCREMENT for table `meo_claim_expense_type_entity`
--
ALTER TABLE `meo_claim_expense_type_entity`
  MODIFY `id_claim` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `meo_claim_types_entity`
--
ALTER TABLE `meo_claim_types_entity`
  MODIFY `id_claim_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  MODIFY `id_client_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  MODIFY `id_commercial_pic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_config_options`
--
ALTER TABLE `meo_config_options`
  MODIFY `id_config` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_contact_admin_rights`
--
ALTER TABLE `meo_contact_admin_rights`
  MODIFY `id_contact_admin_right` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meo_contact_rights`
--
ALTER TABLE `meo_contact_rights`
  MODIFY `id_contact_rights` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_contact_rights_admin`
--
ALTER TABLE `meo_contact_rights_admin`
  MODIFY `id_user_right_contact` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `meo_countries`
--
ALTER TABLE `meo_countries`
  MODIFY `countryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `meo_currency`
--
ALTER TABLE `meo_currency`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `meo_currencyrate`
--
ALTER TABLE `meo_currencyrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `meo_department_entity`
--
ALTER TABLE `meo_department_entity`
  MODIFY `id_department` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `meo_designation_list`
--
ALTER TABLE `meo_designation_list`
  MODIFY `id_designation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `fare_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_front_vessel_contact`
--
ALTER TABLE `meo_front_vessel_contact`
  MODIFY `id_front_vessel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;
--
-- AUTO_INCREMENT for table `meo_group_bu_entity`
--
ALTER TABLE `meo_group_bu_entity`
  MODIFY `id_group_bu` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `meo_group_name_entity`
--
ALTER TABLE `meo_group_name_entity`
  MODIFY `id_group_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meo_group_region_entity`
--
ALTER TABLE `meo_group_region_entity`
  MODIFY `id_region` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `meo_group_rights_mailroom_entity`
--
ALTER TABLE `meo_group_rights_mailroom_entity`
  MODIFY `id_rights` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  MODIFY `id_admin_access` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `meo_mailroom_build_form_entity`
--
ALTER TABLE `meo_mailroom_build_form_entity`
  MODIFY `id_build_form` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `meo_main_vessel_type_entity`
--
ALTER TABLE `meo_main_vessel_type_entity`
  MODIFY `id_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `meo_menu_entity`
--
ALTER TABLE `meo_menu_entity`
  MODIFY `id_menu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `meo_meoUsers_entity`
--
ALTER TABLE `meo_meoUsers_entity`
  MODIFY `id_meo_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `meo_organization_chart_entity`
--
ALTER TABLE `meo_organization_chart_entity`
  MODIFY `id_chart` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_org_groups_detail`
--
ALTER TABLE `meo_org_groups_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `meo_org_groups_entity`
--
ALTER TABLE `meo_org_groups_entity`
  MODIFY `id_org_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `meo_org_groups_members_entity`
--
ALTER TABLE `meo_org_groups_members_entity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT for table `meo_sections_entity`
--
ALTER TABLE `meo_sections_entity`
  MODIFY `id_section` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `meo_shore_addresses`
--
ALTER TABLE `meo_shore_addresses`
  MODIFY `id_address` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `meo_thirdParty_vesselName`
--
ALTER TABLE `meo_thirdParty_vesselName`
  MODIFY `id_third_vessel_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_thirdParty_vesselType`
--
ALTER TABLE `meo_thirdParty_vesselType`
  MODIFY `id_third_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_travel_discussion`
--
ALTER TABLE `meo_travel_discussion`
  MODIFY `id_travel_discussion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_attachment`
--
ALTER TABLE `meo_travel_discussion_attachment`
  MODIFY `id_discussion_attachment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_image_attachment`
--
ALTER TABLE `meo_travel_discussion_image_attachment`
  MODIFY `id_discussion_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_link_attachment`
--
ALTER TABLE `meo_travel_discussion_link_attachment`
  MODIFY `id_discussion_link` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_travel_discussion_notifiers`
--
ALTER TABLE `meo_travel_discussion_notifiers`
  MODIFY `id_travel_notifier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `meo_travel_request`
--
ALTER TABLE `meo_travel_request`
  MODIFY `id_travel_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `meo_travel_request_approvers`
--
ALTER TABLE `meo_travel_request_approvers`
  MODIFY `id_travel_request_approver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `meo_travel_request_countries`
--
ALTER TABLE `meo_travel_request_countries`
  MODIFY `id_travel_request_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `meo_travel_request_privacy`
--
ALTER TABLE `meo_travel_request_privacy`
  MODIFY `id_travel_privacy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `meo_users_entity`
--
ALTER TABLE `meo_users_entity`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;
--
-- AUTO_INCREMENT for table `meo_user_right_admin`
--
ALTER TABLE `meo_user_right_admin`
  MODIFY `id_user_right_admin` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  MODIFY `id_vessel_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `meo_vessel_region_entity`
--
ALTER TABLE `meo_vessel_region_entity`
  MODIFY `id_vessel_region` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `meo_vessel_region_member_entity`
--
ALTER TABLE `meo_vessel_region_member_entity`
  MODIFY `id_region_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
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
-- Constraints for table `meo_client_user_rights_mailroom_entity`
--
ALTER TABLE `meo_client_user_rights_mailroom_entity`
  ADD CONSTRAINT `meo_client_user_rights_mailroom_entity_ibfk_1` FOREIGN KEY (`id_client_user`) REFERENCES `meo_client_users_entity` (`id_client_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_client_user_rights_mailroom_entity_ibfk_2` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `meo_front_vessel_contact`
--
ALTER TABLE `meo_front_vessel_contact`
  ADD CONSTRAINT `meo_front_vessel_contact_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `meo_front_vessel_contact_details`
--
ALTER TABLE `meo_front_vessel_contact_details`
  ADD CONSTRAINT `meo_front_vessel_contact_details_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `meo_front_vessel_contact_details_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `meo_group_region_entity_ibfk_1` FOREIGN KEY (`id_group_bu`) REFERENCES `meo_group_bu_entity` (`id_group_bu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_group_region_entity_ibfk_2` FOREIGN KEY (`id_entity`) REFERENCES `meo_entity_list` (`id_entity`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  ADD CONSTRAINT `meo_group_section_access_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_mailroom_build_form_approvers_entity`
--
ALTER TABLE `meo_mailroom_build_form_approvers_entity`
  ADD CONSTRAINT `meo_mailroom_build_form_approvers_entity_ibfk_1` FOREIGN KEY (`id_build_form`) REFERENCES `meo_mailroom_build_form_entity` (`id_build_form`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_mailroom_build_form_entity`
--
ALTER TABLE `meo_mailroom_build_form_entity`
  ADD CONSTRAINT `meo_mailroom_build_form_entity_ibfk_1` FOREIGN KEY (`id_department`) REFERENCES `meo_department_entity` (`id_department`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_mailroom_build_form_privacy_entity`
--
ALTER TABLE `meo_mailroom_build_form_privacy_entity`
  ADD CONSTRAINT `meo_mailroom_build_form_privacy_entity_ibfk_1` FOREIGN KEY (`id_build_form`) REFERENCES `meo_mailroom_build_form_entity` (`id_build_form`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `meo_thirdParty_vesselName`
--
ALTER TABLE `meo_thirdParty_vesselName`
  ADD CONSTRAINT `meo_thirdParty_vesselName_ibfk_1` FOREIGN KEY (`id_third_vessel_type`) REFERENCES `meo_thirdParty_vesselType` (`id_third_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_user_rights_mailroom_entity`
--
ALTER TABLE `meo_user_rights_mailroom_entity`
  ADD CONSTRAINT `meo_user_rights_mailroom_entity_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_user_rights_mailroom_entity_ibfk_2` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  ADD CONSTRAINT `meo_vessel_name_entity_ibfk_1` FOREIGN KEY (`id_main_vessel_type`) REFERENCES `meo_main_vessel_type_entity` (`id_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_vessel_name_entity_ibfk_2` FOREIGN KEY (`id_vessel_type`) REFERENCES `meo_vessel_type_entity` (`id_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_vessel_name_entity_ibfk_3` FOREIGN KEY (`id_entity`) REFERENCES `meo_entity_list` (`id_entity`) ON DELETE CASCADE ON UPDATE CASCADE;

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
