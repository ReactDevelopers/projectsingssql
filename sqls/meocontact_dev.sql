-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2017 at 09:00 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meocontact_dev`
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

-- --------------------------------------------------------

--
-- Table structure for table `meo_change_log_entity`
--

CREATE TABLE `meo_change_log_entity` (
  `action` enum('add','update','delete') NOT NULL,
  `modified_by` varchar(250) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_section` enum('admin','contacts') NOT NULL DEFAULT 'admin',
  `change_section` enum('shore_address','organisation_chart','groupbu','department','organisation_group','shore_personnel','vessel','region','main_vessel_type','vessel_type,','vessel_name,','vessel_region,','3_vessel_type,','3_vessel_name,','group_name,','meo_users,','client_users,','group_rights,','user_rights,','client_setup','email_content') NOT NULL,
  `change_log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('2325e41404dc4fef0adbdc1e38ed5842', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', 1495114263, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:4:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"Admin\";s:6:\"userid\";s:1:\"1\";s:9:\"user_type\";s:1:\"1\";}}'),
('c7061b1c8ab2571751afe01255acf112', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1493104067, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_data\";a:4:{s:5:\"email\";s:17:\"info@meogroup.com\";s:4:\"name\";s:5:\"Admin\";s:6:\"userid\";s:1:\"1\";s:9:\"user_type\";s:1:\"1\";}}'),
('cfd89b18bf8e90a366fbfb2c2bf3c7df', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1493287648, ''),
('56da1e2d2b00f17d88d1f9a288a8eaa5', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', 1495102185, 'a:1:{s:17:\"flash:old:success\";s:35:\"Request has been sent successfully.\";}');

-- --------------------------------------------------------

--
-- Table structure for table `meo_client_users_entity`
--

CREATE TABLE `meo_client_users_entity` (
  `id_client_user` int(11) UNSIGNED NOT NULL,
  `client_user_id` varchar(150) NOT NULL,
  `client_user_full_name` varchar(255) NOT NULL,
  `client_email_id` varchar(200) NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `company` varchar(255) NOT NULL,
  `designation` varchar(150) NOT NULL,
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

INSERT INTO `meo_client_users_entity` (`id_client_user`, `client_user_id`, `client_user_full_name`, `client_email_id`, `id_region`, `company`, `designation`, `status`, `status_reason`, `expiry_date`, `added_on`, `updated_on`, `is_verified`) VALUES
(1, '296', 'BHARATR', 'BHARATRAJ@SINGSYS.COM', 2, 'TEST SINGSYS', 'QCE', 'active', '', '2016-12-14', '2016-12-14 07:01:06', '0000-00-00 00:00:00', 'no');

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
(1, 1, 'active', '2016-12-08 10:39:34', '0000-00-00 00:00:00'),
(2, 2, 'active', '2016-12-09 05:29:50', '0000-00-00 00:00:00');

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
(1, 6, 'modify', 'restricted', 'department', '5'),
(1, 6, 'modify', 'restricted', 'personal', ''),
(1, 7, 'view', 'all', '', ''),
(1, 7, 'modify', 'restricted', 'region', '1,2'),
(1, 7, 'modify', 'restricted', 'vessel', ''),
(1, 8, 'view', 'all', '', ''),
(1, 8, 'modify', 'restricted', 'vessel_type', '1'),
(1, 8, 'modify', 'restricted', 'vessel', '2'),
(1, 9, 'view', 'all', '', ''),
(1, 9, 'modify', 'restricted', 'region', '3'),
(1, 9, 'modify', 'restricted', 'group', '2'),
(2, 6, 'view', 'all', '', ''),
(2, 6, 'modify', 'restricted', 'department', '5'),
(2, 6, 'modify', 'restricted', 'personal', '1'),
(2, 7, 'view', 'restricted', 'region', '1'),
(2, 7, 'view', 'restricted', 'vessel', '1'),
(2, 7, 'modify', 'all', '', ''),
(2, 8, 'view', 'all', '', ''),
(2, 8, 'modify', 'restricted', 'vessel_type', '2'),
(2, 8, 'modify', 'restricted', 'vessel', '2'),
(2, 9, 'view', 'restricted', 'region', '3'),
(2, 9, 'view', 'restricted', 'group', '1'),
(2, 9, 'modify', 'all', '', '');

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
-- Table structure for table `meo_department_entity`
--

CREATE TABLE `meo_department_entity` (
  `id_department` int(11) UNSIGNED NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `id_region` int(11) UNSIGNED NOT NULL,
  `department_order` int(11) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_department_entity`
--

INSERT INTO `meo_department_entity` (`id_department`, `department_name`, `id_region`, `department_order`, `status`, `added_on`, `updated_on`) VALUES
(1, 'ATEST', 2, 1, 'active', '2016-12-08 10:46:58', '0000-00-00 00:00:00'),
(2, 'TEST DEPARTMENT11', 1, 1, 'active', '2016-12-14 12:32:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_department_member_entity`
--

CREATE TABLE `meo_department_member_entity` (
  `id_department_member` int(11) UNSIGNED NOT NULL,
  `id_member` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_department_member_entity`
--

INSERT INTO `meo_department_member_entity` (`id_department_member`, `id_member`) VALUES
(1, 5),
(2, 7),
(2, 5);

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
(1, 'CONTACTS / SHORE PERSONNEL / VERIFY', 'TEST SUBJECT', 'HI,\n\nKINDLY FOLLOW THE LINK FOR THE SUMMARY OF MY VISIT:\n{PDF_LINK}\n\nMONITOR AND CLOSE OUT DEFECTS/DEFICIENCIES WITH THIS TEMPLATE:\n{EXCEL_LINK}\n\nTHANKS & BEST REGARDS,\n{USER_NAME}\n{USER_DESIGNATION}', 'EmailTemplate_1481117712.jpg', 'TEST REMARKS', '2016-12-07 12:02:55', '0000-00-00 00:00:00'),
(2, 'CONTACTS / VESSELS / VERIFY', '{XXXX} {XXXX} on {XXXX}', 'Hi,\r\n\r\nKindly follow the link for the summary of my visit:\r\n{pdf_link}\r\n\r\nMonitor and close out defects/deficiencies with this template:\r\n{excel_link}\r\n\r\nThanks & Best Regards,\r\n{user_name}\r\n{user_designation}', '{XXXX} {XXXX} on {XXXX}', 'XXXXXX', '2016-12-07 12:02:55', '0000-00-00 00:00:00');

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
(1, 'Corporate', 'active', '2016-11-17 07:22:41', '2016-11-17 15:23:40', 4),
(2, 'Asean', 'active', '2016-11-17 07:22:51', '2016-11-17 15:23:40', 1),
(3, 'EOS-ROW', 'active', '2016-11-17 07:23:07', '2016-11-17 15:23:40', 2),
(4, 'MIDDLE EAST', 'active', '2016-11-17 07:23:22', '2016-11-17 15:23:40', 3);

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
(1, 'SYSTEM ADMINISTRATOR', 'PERSON WHO HAS FULL ADMINISTRATIVE RIGHTS TO THE SYSTEM. USUALLY A KMC, HR PERSONNEL OR AN APPOINTER REGIONAL ADMINISTRATOR', 'active', '2016-12-06 08:49:43', '0000-00-00 00:00:00'),
(2, 'TQC', 'TESTING IS VERY IMPORTANT', 'active', '2016-12-06 09:30:26', '0000-00-00 00:00:00');

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
(1, 'Easter Land', 4, 'active', '2016-11-23 07:55:29', '0000-00-00 00:00:00', 1),
(2, 'Europe Easter', 3, 'active', '2016-11-23 07:55:49', '0000-00-00 00:00:00', 2);

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
(1, 'drve', 'Active', '2016-11-24 08:53:26', '0000-00-00 00:00:00'),
(2, 'TEST', 'Active', '2016-12-01 11:12:33', '0000-00-00 00:00:00'),
(3, 'TESTINGGGGGGGGGGGGGGGG', 'Active', '2016-12-01 11:12:49', '0000-00-00 00:00:00');

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
(1, 'Dashboard', 'superadmin-dashboard', 'active', 0, 0, 'admin'),
(2, 'User Management', 'superadmin-userlisting', 'inactive', 1, 0, 'admin'),
(3, 'Shore Personnel', 'superadmin-userlisting', 'inactive', 0, 2, 'admin'),
(4, 'Vessel Contacts', 'superadmin-vessellisting', 'inactive', 1, 2, 'admin'),
(5, 'Organizational Group', 'superadmin-org-grouplisting', 'inactive', 2, 2, 'admin'),
(6, 'Department Management', 'superadmin-departmentlist', 'inactive', 2, 0, 'admin'),
(7, 'Region Management', 'superadmin-regionlisting', 'inactive', 3, 0, 'admin'),
(8, 'Dashboard', 'user-dashboard', 'active', 0, 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `meo_meoUsers_entity`
--

CREATE TABLE `meo_meoUsers_entity` (
  `id_meo_user` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `user_full_name` varchar(255) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `staff_client` enum('staff','client') NOT NULL,
  `designation` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `status_reason` varchar(100) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `is_verified` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_meoUsers_entity`
--

INSERT INTO `meo_meoUsers_entity` (`id_meo_user`, `user_id`, `user_full_name`, `user_email`, `staff_client`, `designation`, `status`, `status_reason`, `expiry_date`, `added_on`, `updated_on`, `is_verified`) VALUES
(5, 'SDAFADS', 'SDFASDF', '', 'client', 'FGDRGFD', 'active', '', '2016-12-10', '2016-12-06 09:33:07', '0000-00-00 00:00:00', 'no'),
(6, 'XCVXCVXC', 'XVXVXCVX', '', 'client', 'XCVXCVCX', 'active', '', '2016-12-22', '2016-12-06 09:33:25', '0000-00-00 00:00:00', 'no'),
(7, '296', 'BHARAT', 'BHARATRAJ@SINGSYS.COM', 'staff', 'QCE', 'active', '', '2016-12-15', '2016-12-14 12:10:53', '0000-00-00 00:00:00', 'no');

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
(1, 'Management, Singapore', 'uploads/org_charts/20160928211523.png', 'Active', '2016-09-28 13:01:56', '0000-00-00 00:00:00');

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
(6, 'TEST', 1, 1, 'active', '2016-12-05 11:02:58', '0000-00-00 00:00:00'),
(7, 'EUROPE', 2, 1, 'active', '2016-12-05 11:03:58', '0000-00-00 00:00:00'),
(8, 'NEW TEST', 2, 2, 'active', '2016-12-05 11:04:39', '2016-12-05 19:04:53'),
(9, 'GROUP OPERATION', 1, 2, 'active', '2016-12-05 11:06:01', '0000-00-00 00:00:00'),
(10, 'GROUP 2', 1, 3, 'active', '2016-12-05 11:06:51', '0000-00-00 00:00:00'),
(11, 'CLIENT', 2, 3, 'active', '2016-12-05 11:07:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_org_groups_members_entity`
--

CREATE TABLE `meo_org_groups_members_entity` (
  `id_org_group` int(11) UNSIGNED NOT NULL,
  `member_group_name` varchar(225) NOT NULL,
  `member_group_email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_org_groups_members_entity`
--

INSERT INTO `meo_org_groups_members_entity` (`id_org_group`, `member_group_name`, `member_group_email`) VALUES
(1, 'TEST NAME', 'TESTNAME@GMAIL.COM'),
(1, 'TEST NAME 2', 'TESTNAME2@GMAIL.COM'),
(2, 'NEXT TEXT1', 'NEXT@NEXT.COM'),
(2, 'NEXT TEXT2', 'NEXT@NEXT2.COM'),
(3, 'EASTER1', 'EASTER1@GMAIL.COM'),
(3, 'EASTER2', 'EASTER2@GMAIL.COM'),
(4, 'MIDLE MAN', 'MIDDLE@GMAIL.COM'),
(4, 'MIDDLE SECOND PERSON', 'MIDDLE1@GMAIL.COM'),
(4, 'MIDDLE THIRD PERSON', 'MIDDLE2@GMAIL.COM'),
(5, 'EASTERN1', 'EASTER2@GMAIL.COME'),
(5, 'EASTER 2', 'EASTERN21@GMAIL.COM'),
(6, 'TSET1', 'TEST1@GNAAS.DFG'),
(6, 'EASTER ', 'EASTER1@GMAIL.COM'),
(7, 'TEST EUROTPE', 'TEST@TEST.COM'),
(7, 'TEST EASTER', 'TEST@EASTER.COM'),
(8, 'NEW 1', 'NEW@TEST.COM'),
(8, 'NEW 2', 'NEW2@TEST.COM'),
(9, 'GROUP1', 'GROUP1@GMAIL.COM'),
(9, 'GROUP_1', 'GROUP_1@GMAIL'),
(10, 'GROUP2 ', 'GROUP2@GMAIL.COM'),
(10, 'GROUP_2', 'GROUP_2@GMAIL.COM'),
(11, 'CLIENT1', 'CLIENT1@GMAIL.COM'),
(11, 'CLIENT2', 'CLINET2@GMAIL.COM');

-- --------------------------------------------------------

--
-- Table structure for table `meo_permission_entity`
--

CREATE TABLE `meo_permission_entity` (
  `id_permission` int(11) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_permission_entity`
--

INSERT INTO `meo_permission_entity` (`id_permission`, `title`, `parent_id`, `created_on`, `updated_on`) VALUES
(1, 'View', 0, '2016-10-04 21:21:44', '0000-00-00 00:00:00'),
(2, 'Modify', 0, '2016-10-04 21:21:44', '0000-00-00 00:00:00'),
(3, 'View Co-owned', 0, '2016-10-04 21:22:23', '0000-00-00 00:00:00'),
(4, 'View 3rd Party', 0, '2016-10-04 21:22:23', '0000-00-00 00:00:00'),
(5, 'Modify Co-owned', 0, '2016-10-04 21:22:57', '0000-00-00 00:00:00'),
(6, 'Modify 3rd Party', 0, '2016-10-04 21:22:57', '0000-00-00 00:00:00'),
(7, 'All', 3, '2016-10-04 21:23:34', '0000-00-00 00:00:00'),
(8, 'Restricted', 3, '2016-10-04 21:23:34', '0000-00-00 00:00:00'),
(9, 'All', 4, '2016-10-04 21:24:35', '0000-00-00 00:00:00'),
(10, 'Restricted', 4, '2016-10-04 21:24:35', '0000-00-00 00:00:00'),
(11, 'All', 5, '2016-10-04 21:25:45', '0000-00-00 00:00:00'),
(12, 'Restricted', 5, '2016-10-04 21:25:45', '0000-00-00 00:00:00'),
(13, 'All', 6, '2016-10-04 21:25:45', '0000-00-00 00:00:00'),
(14, 'Restricted', 6, '2016-10-04 21:25:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_role_access_entity`
--

CREATE TABLE `meo_role_access_entity` (
  `id_role_access` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `id_permission` int(11) UNSIGNED NOT NULL,
  `id_role` int(11) UNSIGNED NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Admin / Organisation Setup', 'admin', '2016-11-29 19:50:12'),
(2, 'Admin / Vessel Setup', 'admin', '2016-11-29 19:50:36'),
(3, 'Admin / Admin Setup', 'admin', '2016-11-29 19:51:33'),
(4, 'Admin / Client Setup', 'admin', '2016-11-29 19:51:33'),
(5, 'Admin / Others', 'admin', '2016-11-29 19:51:53'),
(6, 'Contacts / Shore Personnel', 'contacts', '2016-12-05 23:52:26'),
(7, 'Contact / Vessels (MEO)', 'contacts', '2016-12-05 23:53:07'),
(8, 'Contacts / 3rd Party Vessels', 'contacts', '2016-12-05 23:53:07'),
(9, 'Contacts / Organisation Groups', 'contacts', '2016-12-05 23:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `meo_shore_addresses`
--

CREATE TABLE `meo_shore_addresses` (
  `id_address` int(11) UNSIGNED NOT NULL,
  `shore_region` varchar(120) NOT NULL,
  `address` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_shore_addresses`
--

INSERT INTO `meo_shore_addresses` (`id_address`, `shore_region`, `address`, `status`, `created_on`, `updated_on`) VALUES
(1, 'Singapore', 'Singaparna, Tasikmalaya, West Java, Indonesia', 'Active', '2016-09-28 07:00:13', '2016-11-07 18:32:41');

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
(1, '3RD PARTY VESSEL NAME1', 1, 'TEST', 'active', '', '2016-12-08 06:22:57', '0000-00-00 00:00:00'),
(2, '3RD PARTY VESSEL NAME2', 1, 'TEST', 'active', '', '2016-12-08 06:23:13', '0000-00-00 00:00:00'),
(3, '3RD PARTY VESSEL NAME1', 2, 'TEST', 'active', '', '2016-12-08 06:23:29', '0000-00-00 00:00:00'),
(4, '3RD PARTY VESSEL NAME2', 2, 'TEST', 'active', '', '2016-12-08 06:23:40', '0000-00-00 00:00:00');

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
(1, 'VESSEL TYPE1', 'active', '2016-12-08 06:21:58', '2016-12-08 14:22:17'),
(2, 'VESSEL TYPE2', 'active', '2016-12-08 06:22:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meo_users_entity`
--

CREATE TABLE `meo_users_entity` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` blob NOT NULL,
  `alias` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `last_logged_in` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_users_entity`
--

INSERT INTO `meo_users_entity` (`id_user`, `full_name`, `designation`, `email`, `password`, `alias`, `created_on`, `updated_on`, `last_logged_in`) VALUES
(1, 'Admin', '', 'info@meogroup.com', 0x313233343536, 'Super admin', '2016-10-04 20:56:03', '0000-00-00 00:00:00', '2017-05-18 18:15:25'),
(2, 'User', '', 'user@meogroup.com', 0x313233343536, '', '2016-11-28 03:23:19', '0000-00-00 00:00:00', '2017-04-25 11:24:25');

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
(8, 2, 6, 'active', '2016-12-14 12:10:21', '0000-00-00 00:00:00'),
(17, 2, 7, 'active', '2016-12-15 05:07:27', '2016-12-15 13:07:53'),
(18, 2, 5, 'active', '2016-12-15 05:07:41', '0000-00-00 00:00:00');

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
(8, 1, 'active', 'active'),
(8, 2, 'active', 'active'),
(8, 3, 'active', 'active'),
(8, 4, 'active', 'active'),
(8, 5, 'active', 'active'),
(18, 1, 'inactive', 'active'),
(18, 2, 'inactive', 'active'),
(18, 3, 'inactive', 'inactive'),
(18, 4, 'inactive', 'inactive'),
(18, 5, 'inactive', 'active'),
(17, 1, 'active', 'inactive'),
(17, 2, 'inactive', 'inactive'),
(17, 3, 'inactive', 'active'),
(17, 4, 'inactive', 'inactive'),
(17, 5, 'inactive', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_role_access_entity`
--

CREATE TABLE `meo_user_role_access_entity` (
  `id_user_access` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_section` int(11) UNSIGNED NOT NULL,
  `id_role` int(11) UNSIGNED NOT NULL,
  `id_permission` int(11) UNSIGNED NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_role_entity`
--

CREATE TABLE `meo_user_role_entity` (
  `id_user_role` int(11) UNSIGNED NOT NULL,
  `role_title` varchar(120) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_role_entity`
--

INSERT INTO `meo_user_role_entity` (`id_user_role`, `role_title`, `created_on`, `updated_on`, `status`) VALUES
(3, 'General User', '2016-10-04 19:29:49', '0000-00-00 00:00:00', 'Active'),
(4, 'System Adiministrator', '2016-10-04 19:30:13', '0000-00-00 00:00:00', 'Active'),
(5, 'Client', '2016-10-04 19:30:30', '0000-00-00 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_type_association`
--

CREATE TABLE `meo_user_type_association` (
  `id_assoc` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_type` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_type_association`
--

INSERT INTO `meo_user_type_association` (`id_assoc`, `id_user`, `id_type`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `meo_user_type_entity`
--

CREATE TABLE `meo_user_type_entity` (
  `id_type` int(11) UNSIGNED NOT NULL,
  `user_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_user_type_entity`
--

INSERT INTO `meo_user_type_entity` (`id_type`, `user_type`) VALUES
(1, 'Super Admin'),
(2, 'User');

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
(1, 'SFSDFSSD', 'FSDFSDFSDFSD', 2, 1, 'active', '', '2016-12-07 09:19:04', '0000-00-00 00:00:00'),
(2, 'SDFSDFSDFSD', 'SDFSDFDSFSFS', 2, 1, 'active', '', '2016-12-07 09:19:29', '0000-00-00 00:00:00');

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
(11, 1, 'active', '2016-12-07 09:54:15', '2016-12-07 18:39:01'),
(12, 2, 'active', '2016-12-07 09:55:32', '2016-12-07 18:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `meo_vessel_region_member_entity`
--

CREATE TABLE `meo_vessel_region_member_entity` (
  `id_vessel_region` int(11) UNSIGNED NOT NULL,
  `id_vessel_name` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meo_vessel_region_member_entity`
--

INSERT INTO `meo_vessel_region_member_entity` (`id_vessel_region`, `id_vessel_name`) VALUES
(11, 1),
(12, 2),
(12, 1);

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
(1, 'TEST 1', 'active', 2, '2016-12-01 12:34:12', '0000-00-00 00:00:00');

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
  ADD KEY `id_section_2` (`id_section`),
  ADD KEY `id_section_3` (`id_section`),
  ADD KEY `id_group_access_3` (`id_group_access`);

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
-- Indexes for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  ADD PRIMARY KEY (`id_client_user`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  ADD PRIMARY KEY (`id_commercial_pic`),
  ADD KEY `id_contact_rights` (`id_contact_rights`),
  ADD KEY `id_meo_user` (`id_meo_user`),
  ADD KEY `id_contact_rights_2` (`id_contact_rights`),
  ADD KEY `id_meo_user_2` (`id_meo_user`);

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
-- Indexes for table `meo_contact_user_rights_association`
--
ALTER TABLE `meo_contact_user_rights_association`
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_contact_rights` (`id_contact_rights`),
  ADD KEY `id_contact_rights_2` (`id_contact_rights`),
  ADD KEY `id_section_2` (`id_section`);

--
-- Indexes for table `meo_department_entity`
--
ALTER TABLE `meo_department_entity`
  ADD PRIMARY KEY (`id_department`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `meo_department_member_entity`
--
ALTER TABLE `meo_department_member_entity`
  ADD KEY `id_department_member` (`id_department_member`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `meo_email_templates`
--
ALTER TABLE `meo_email_templates`
  ADD PRIMARY KEY (`id_email_templates`);

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
-- Indexes for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  ADD PRIMARY KEY (`id_admin_access`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_group_2` (`id_group`);

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
  ADD PRIMARY KEY (`id_meo_user`);

--
-- Indexes for table `meo_organization_chart_entity`
--
ALTER TABLE `meo_organization_chart_entity`
  ADD PRIMARY KEY (`id_chart`);

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
  ADD KEY `id_org_group` (`id_org_group`);

--
-- Indexes for table `meo_permission_entity`
--
ALTER TABLE `meo_permission_entity`
  ADD PRIMARY KEY (`id_permission`);

--
-- Indexes for table `meo_role_access_entity`
--
ALTER TABLE `meo_role_access_entity`
  ADD PRIMARY KEY (`id_role_access`),
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_permission` (`id_permission`),
  ADD KEY `id_role` (`id_role`);

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
-- Indexes for table `meo_users_entity`
--
ALTER TABLE `meo_users_entity`
  ADD PRIMARY KEY (`id_user`);

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
-- Indexes for table `meo_user_role_access_entity`
--
ALTER TABLE `meo_user_role_access_entity`
  ADD PRIMARY KEY (`id_user_access`);

--
-- Indexes for table `meo_user_role_entity`
--
ALTER TABLE `meo_user_role_entity`
  ADD PRIMARY KEY (`id_user_role`);

--
-- Indexes for table `meo_user_type_association`
--
ALTER TABLE `meo_user_type_association`
  ADD PRIMARY KEY (`id_assoc`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `meo_user_type_entity`
--
ALTER TABLE `meo_user_type_entity`
  ADD PRIMARY KEY (`id_type`);

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
-- AUTO_INCREMENT for table `meo_ci_cookies`
--
ALTER TABLE `meo_ci_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  MODIFY `id_client_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  MODIFY `id_commercial_pic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_config_options`
--
ALTER TABLE `meo_config_options`
  MODIFY `id_config` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_contact_admin_rights`
--
ALTER TABLE `meo_contact_admin_rights`
  MODIFY `id_contact_admin_right` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_contact_rights`
--
ALTER TABLE `meo_contact_rights`
  MODIFY `id_contact_rights` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_department_entity`
--
ALTER TABLE `meo_department_entity`
  MODIFY `id_department` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_email_templates`
--
ALTER TABLE `meo_email_templates`
  MODIFY `id_email_templates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_group_bu_entity`
--
ALTER TABLE `meo_group_bu_entity`
  MODIFY `id_group_bu` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_group_name_entity`
--
ALTER TABLE `meo_group_name_entity`
  MODIFY `id_group_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_group_region_entity`
--
ALTER TABLE `meo_group_region_entity`
  MODIFY `id_region` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  MODIFY `id_admin_access` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_main_vessel_type_entity`
--
ALTER TABLE `meo_main_vessel_type_entity`
  MODIFY `id_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `meo_menu_entity`
--
ALTER TABLE `meo_menu_entity`
  MODIFY `id_menu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `meo_meoUsers_entity`
--
ALTER TABLE `meo_meoUsers_entity`
  MODIFY `id_meo_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meo_organization_chart_entity`
--
ALTER TABLE `meo_organization_chart_entity`
  MODIFY `id_chart` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_org_groups_entity`
--
ALTER TABLE `meo_org_groups_entity`
  MODIFY `id_org_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `meo_permission_entity`
--
ALTER TABLE `meo_permission_entity`
  MODIFY `id_permission` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `meo_role_access_entity`
--
ALTER TABLE `meo_role_access_entity`
  MODIFY `id_role_access` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_sections_entity`
--
ALTER TABLE `meo_sections_entity`
  MODIFY `id_section` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `meo_shore_addresses`
--
ALTER TABLE `meo_shore_addresses`
  MODIFY `id_address` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `meo_thirdParty_vesselName`
--
ALTER TABLE `meo_thirdParty_vesselName`
  MODIFY `id_third_vessel_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meo_thirdParty_vesselType`
--
ALTER TABLE `meo_thirdParty_vesselType`
  MODIFY `id_third_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_users_entity`
--
ALTER TABLE `meo_users_entity`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_user_right_admin`
--
ALTER TABLE `meo_user_right_admin`
  MODIFY `id_user_right_admin` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `meo_user_role_access_entity`
--
ALTER TABLE `meo_user_role_access_entity`
  MODIFY `id_user_access` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meo_user_role_entity`
--
ALTER TABLE `meo_user_role_entity`
  MODIFY `id_user_role` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meo_user_type_association`
--
ALTER TABLE `meo_user_type_association`
  MODIFY `id_assoc` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_user_type_entity`
--
ALTER TABLE `meo_user_type_entity`
  MODIFY `id_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_vessel_name_entity`
--
ALTER TABLE `meo_vessel_name_entity`
  MODIFY `id_vessel_name` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meo_vessel_region_entity`
--
ALTER TABLE `meo_vessel_region_entity`
  MODIFY `id_vessel_region` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `meo_vessel_type_entity`
--
ALTER TABLE `meo_vessel_type_entity`
  MODIFY `id_vessel_type` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Constraints for table `meo_client_users_entity`
--
ALTER TABLE `meo_client_users_entity`
  ADD CONSTRAINT `meo_client_users_entity_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `meo_group_region_entity` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_commercial_pic`
--
ALTER TABLE `meo_commercial_pic`
  ADD CONSTRAINT `meo_commercial_pic_ibfk_1` FOREIGN KEY (`id_contact_rights`) REFERENCES `meo_contact_rights` (`id_contact_rights`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_commercial_pic_ibfk_2` FOREIGN KEY (`id_meo_user`) REFERENCES `meo_meoUsers_entity` (`id_meo_user`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `meo_group_region_entity`
--
ALTER TABLE `meo_group_region_entity`
  ADD CONSTRAINT `meo_group_region_entity_ibfk_1` FOREIGN KEY (`id_group_bu`) REFERENCES `meo_group_bu_entity` (`id_group_bu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_group_section_access`
--
ALTER TABLE `meo_group_section_access`
  ADD CONSTRAINT `meo_group_section_access_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `meo_group_name_entity` (`id_group_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_org_groups_entity`
--
ALTER TABLE `meo_org_groups_entity`
  ADD CONSTRAINT `meo_org_groups_entity_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `meo_group_region_entity` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_role_access_entity`
--
ALTER TABLE `meo_role_access_entity`
  ADD CONSTRAINT `meo_role_access_entity_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `meo_sections_entity` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_role_access_entity_ibfk_2` FOREIGN KEY (`id_permission`) REFERENCES `meo_permission_entity` (`id_permission`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_role_access_entity_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `meo_user_role_entity` (`id_user_role`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `meo_user_type_association`
--
ALTER TABLE `meo_user_type_association`
  ADD CONSTRAINT `meo_user_type_association_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `meo_users_entity` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_user_type_association_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `meo_user_type_entity` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `meo_vessel_region_member_entity_ibfk_1` FOREIGN KEY (`id_vessel_region`) REFERENCES `meo_vessel_region_entity` (`id_vessel_region`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meo_vessel_region_member_entity_ibfk_2` FOREIGN KEY (`id_vessel_name`) REFERENCES `meo_vessel_name_entity` (`id_vessel_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meo_vessel_type_entity`
--
ALTER TABLE `meo_vessel_type_entity`
  ADD CONSTRAINT `meo_vessel_type_entity_ibfk_1` FOREIGN KEY (`id_main_vessel_type`) REFERENCES `meo_main_vessel_type_entity` (`id_vessel_type`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
