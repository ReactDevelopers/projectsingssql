-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 05:49 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `category` enum('Soft Skill','Safety','Adhoc','Foundation Program','Induction Program','WSQ','Procurement','Uncategorised') COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_requirement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_requisite` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_attendees`
--

CREATE TABLE `course_attendees` (
  `id` int(10) UNSIGNED NOT NULL,
  `running_course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL,
  `result` enum('Absent','Attended','Cancelled','Registered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessment_result` enum('Pass','Fail') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oganization_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('1','2','3','4','5','6') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `body`, `subject`, `type`, `created_at`, `updated_at`) VALUES
(1, '<p>Dear {Supervisor},</p><p>This is an automated notification from SgWA to inform you that you have been signed up for a course. The course details are shown below:</p><p>{title}</p><p><u>Course Details</u></p><p>{startdate}</p><p>Please note that if multiple training sessions are indicated (e.g. for WSQ courses), you are required to attend&nbsp;<strong><u>ALL</u></strong>&nbsp;of the sessions.</p><p>You will receive a copy of the course confirmation letter once the registration is successful.</p><p>CC- Supervisors, please note that your officer has been signed up for the above course.</p><p>Thank you.</p><p>Please contact {AdminName}&nbsp;&nbsp;at {AdminEmail}, should you require further assistance.</p><p>&nbsp;</p><p><u>Important note:</u></p><p>With reference to HR Circular 2/2015, absentees will be required pay a penalty of 50% of the course fee (inclusive of GST) capped at S$100 per absence wef 1 Feb 2015. The penalty will be waived for reasons related medical leave and child sick leave when supported with valid medical certificates. For absence due critical work, the penalty will be waived if the officer can produce his/her Director\'s endorsement on email. The endorsement has to be submitted to SgWA by the end of the course day with the reason(s) why the officer had missed training.</p>', 'TRAINING NOTIFICATION - COURSE SIGN UP: {Title}-{StartDate} to {EndDate}', '1', '2018-03-15 08:17:39', NULL),
(2, '<p>Dear {Supervisor},</p><p>This is a Training Management System generated notification to inform you that your staff&nbsp;{OfficerName}, has signed up for {title}&nbsp;on {startdate}.</p><p>You will receive a copy of the course confirmation letter once the registration is successful.</p><p>Thank you.</p>', 'COURSE SIGN UP IN TMS - {Title} {StartDate}', '2', '2018-03-15 08:17:39', NULL),
(3, '<p>Dear {Supervisor},</p><p>This is a Training Management System generated notification to inform you that you have signed up your staff {OfficerName} for {title} on {startdate}.</p><p>You will receive a copy of the course confirmation letter once the registration is successful.</p><p>Thank you.</p>', 'COURSE SIGN UP IN TMS - {Title} {StartDate}', '3', '2018-03-15 08:17:39', NULL),
(4, '<p>Dear {Trainer},</p><p>This is an automated notification from SgWA to inform you that you have been signed up as a trainer to conduct a course. The course details are shown below:</p><p>{title}</p><p><u>Course Details</u></p><p>{startdate}</p><p>Please note that if multiple training sessions are indicated (e.g. for WSQ courses), you are required to attend&nbsp;<strong><u>ALL</u></strong>&nbsp;of the sessions.</p><p>You will receive a copy of the course confirmation letter once the sign-up is successful.</p><p>CC- Supervisors, please note that your officer will be conducting training for the above course. Thank you.</p><p>Please contact {AdminName}&nbsp;&nbsp;at {AdminEmail}, should you require further assistance.</p><p>Thank you.</p><p>&nbsp;</p><p><u>Important note:</u></p><p>With reference to HR Circular 2/2015, absentees will be required pay a penalty of 50% of the course fee (inclusive of GST) capped at S$100 per absence wef 1 Feb 2015. This penalty is also applicable to in-house trainers. The penalty will be waived for reasons related medical leave and child sick leave when supported with valid medical certificates. For absence due critical work, the penalty will be waived if the officer can produce his/her Director\'s endorsement on email. The endorsement has to be submitted to SgWA by the end of the course day with the reason(s) why the officer had missed training.</p><p>&nbsp;</p><p><br></p><h4>&nbsp;</h4><p><br></p>', 'TRAINING NOTIFICATION - COURSE SIGN UP: {Title}-{StartDate} to {EndDate}', '4', '2018-03-15 08:17:39', NULL),
(5, '', '', '5', '2018-03-15 08:17:39', NULL),
(6, '', '', '6', '2018-03-15 08:17:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2018_01_10_055059_create_departments_table', 1),
(8, '2018_01_10_061119_create_role_table', 1),
(9, '2018_01_10_061247_update_user_table_column', 1),
(10, '2018_01_10_071228_create_course_table', 1),
(11, '2018_01_10_134043_create_course_run_table', 1),
(12, '2018_01_10_142110_create_running_course_booking_table', 1),
(13, '2018_01_10_142952_create_course_attendees_table', 1),
(14, '2018_01_10_143624_create_email_template_table', 1),
(15, '2018_01_13_063010_create_updated_user_during_hrdu', 1),
(16, '2018_01_25_054424_increate_website_column_length_in_course_table', 1),
(17, '2018_01_25_080455_add_assessment_start_date_column_in_running_course_table', 1),
(18, '2018_01_25_093710_update_available_slot_type_int_to_varchar', 1),
(19, '2018_02_20_113344_add_unique_key_in_booking_attendance_table', 1),
(23, '2018_02_25_061429_permissions', 2),
(25, '2018_02_25_112837_roles_permissions', 3),
(28, '2018_02_28_112550_hrdu_update_for_tms', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, ' Personal Access Client', 'hrEOncDa0tqeuE1WydeJP1AA5IUTQ87c169FY4mW', 'http://localhost', 1, 0, 0, '2018-03-15 08:17:44', '2018-03-15 08:17:44'),
(2, NULL, ' Password Grant Client', 'XZHGv4WmRL3ldaTSvTUlxlrc9jWi5w8mkEgYnqc7', 'http://localhost', 0, 1, 0, '2018-03-15 08:17:44', '2018-03-15 08:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-15 08:17:44', '2018-03-15 08:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`name`, `section`, `title`, `description`) VALUES
('booking-change_status', 'booking', 'booking-change_status', 'booking-change_status'),
('booking-change_status_info', 'booking', 'booking-change_status_info', 'booking-change_status_info'),
('booking-change_test_status', 'booking', 'booking-change_test_status', 'booking-change_test_status'),
('booking-list', 'booking', 'booking-list', 'booking-list'),
('booking-list_as_supervisor', 'booking', 'booking-list_as_supervisor', 'booking-list_as_supervisor'),
('booking-list_self', 'booking', 'booking-list_self', 'booking-list_self'),
('course-create', 'course', 'course-create', 'course-create'),
('course-delete', 'course', 'course-delete', 'course-delete'),
('course-info', 'course', 'course-info', 'course-info'),
('course-list', 'course', 'course-list', 'course-list'),
('course-list_of_category', 'running_course', 'course-list_of_category', 'course-list_of_category'),
('course-update', 'course', 'course-update', 'course-update'),
('department-create', 'department', 'department-create', 'department-create'),
('department-delete', 'department', 'department-delete', 'department-delete'),
('department-import', 'department', 'department-import', 'department-import'),
('department-info', 'department', 'department-info', 'department-info'),
('department-list', 'department', 'department-list', 'department-list'),
('department-report', 'department', 'department-report', 'department-report'),
('department-update', 'department', 'department-update', 'department-update'),
('email_template-info', 'email_template', 'email_template-info', 'email_template-info'),
('email_template-update', 'email_template', 'email_template-update', 'email_template-update'),
('running_course-bulksignup', 'running_course', 'running_course-bulksignup', 'running_course-bulksignup'),
('running_course-create', 'running_course', 'running_course-create', 'running_course-create'),
('running_course-delete', 'running_course', 'running_course-delete', 'running_course-delete'),
('running_course-info', 'running_course', 'running_course-info', 'running_course-info'),
('running_course-list', 'running_course', 'running_course-list', 'running_course-list'),
('running_course-present_list', 'running_course', 'running_course-present_list', 'running_course-present_list'),
('running_course-signup', 'running_course', 'running_course-signup', 'running_course-signup'),
('running_course-update', 'running_course', 'running_course-update', 'running_course-update'),
('training_history-change_status', 'training_history', 'training_history-change_status', 'training_history-change_status'),
('training_history-change_test_status', 'training_history', 'training_history-change_test_status', 'training_history-change_test_status'),
('training_history-delete', 'training_history', 'training_history-delete', 'training_history-delete'),
('training_history-import', 'training_history', 'training_history-import', 'training_history-import'),
('training_history-list', 'training_history', 'training_history-list', 'training_history-list'),
('training_history-list_self', 'training_history', 'training_history-list_self', 'training_history-list_self'),
('training_history-report', 'training_history', 'training_history-report', 'training_history-report'),
('user-delete', 'user', 'user-delete', 'user-delete'),
('user-import', 'user', 'user-import', 'user-import'),
('user-info', 'user', 'user-info', 'user-info'),
('user-list', 'user', 'user-list', 'user-list'),
('user-update', 'user', 'user-update', 'user-update');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', NULL, NULL),
(2, 'admin', 'Admin', 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `permission_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`permission_name`, `role_id`) VALUES
('booking-change_status', 1),
('booking-change_status_info', 1),
('booking-change_test_status', 1),
('booking-list', 1),
('booking-list_as_supervisor', 1),
('booking-list_self', 1),
('course-create', 1),
('course-delete', 1),
('course-info', 1),
('course-list', 1),
('course-list_of_category', 1),
('course-update', 1),
('department-create', 1),
('department-delete', 1),
('department-import', 1),
('department-info', 1),
('department-list', 1),
('department-report', 1),
('department-update', 1),
('email_template-info', 1),
('email_template-update', 1),
('running_course-bulksignup', 1),
('running_course-create', 1),
('running_course-delete', 1),
('running_course-info', 1),
('running_course-list', 1),
('running_course-present_list', 1),
('running_course-signup', 1),
('running_course-update', 1),
('training_history-change_status', 1),
('training_history-change_test_status', 1),
('training_history-delete', 1),
('training_history-import', 1),
('training_history-list', 1),
('training_history-list_self', 1),
('training_history-report', 1),
('user-delete', 1),
('user-import', 1),
('user-info', 1),
('user-list', 1),
('user-update', 1),
('booking-list_as_supervisor', 2),
('booking-list_self', 2),
('course-list', 2),
('running_course-present_list', 2),
('running_course-signup', 2),
('training_history-list_self', 2);

-- --------------------------------------------------------

--
-- Table structure for table `running_courses`
--

CREATE TABLE `running_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `available_slots` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_run_type` enum('Normal','Consecutive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessment_start_date` date DEFAULT NULL,
  `vendor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_requirement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `assessment_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `running_course_booking`
--

CREATE TABLE `running_course_booking` (
  `id` int(10) UNSIGNED NOT NULL,
  `running_course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `approver_id` int(10) UNSIGNED NOT NULL,
  `status` enum('Absent','Attended','Cancelled','Pending','Successfully Registered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_email_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assessment_result` enum('Pass','Fail') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_trainer` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `running_course_dates`
--

CREATE TABLE `running_course_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `running_course_id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updated_user_during_hrdu`
--

CREATE TABLE `updated_user_during_hrdu` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `old_department_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activate` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pubnet_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `num_success_login` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_success_login_attemp` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pubnet_id`, `department_id`, `designation`, `division`, `branch`, `section`, `role_id`, `num_success_login`, `last_success_login_attemp`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Janis Pollich', 'hitesh@singsys.com', 99999, NULL, NULL, NULL, NULL, NULL, 1, 4, '2018-03-19 05:31:07', '$2y$10$0CjZg8hL5/sJrOvr7WlkH.t0jAY7dqc4p7EEDyiLQVYpdJJHJo9aO', '6b6zgEynbj', '2018-03-15 08:17:47', '2018-03-19 05:31:07', NULL);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `track_user_who_moved_another_department_or_reactive` AFTER UPDATE ON `users` FOR EACH ROW BEGIN IF (NEW.department_id <> OLD.department_id OR (OLD.deleted_at IS NOT NULL AND NEW.deleted_at IS NULL) ) THEN INSERT INTO updated_user_during_hrdu (`user_id`,`old_department_name`,`is_activate`) VALUES (`OLD`.`id`, (SELECT name from `departments` WHERE `id` = OLD.department_id) , IF(OLD.deleted_at IS NOT NULL AND NEW.deleted_at IS NULL,'Y','N') ) ON DUPLICATE KEY UPDATE `old_department_name` = VALUES(`old_department_name`), `is_activate` = VALUES(`is_activate`); END IF; END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_attendees`
--
ALTER TABLE `course_attendees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_attendees_running_course_id_user_id_unique` (`running_course_id`,`user_id`),
  ADD KEY `course_attendees_user_id_foreign` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`permission_name`,`role_id`),
  ADD KEY `role_permission_role_id_foreign` (`role_id`);

--
-- Indexes for table `running_courses`
--
ALTER TABLE `running_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `running_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `running_course_booking`
--
ALTER TABLE `running_course_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `running_course_booking_running_course_id_user_id_unique` (`running_course_id`,`user_id`),
  ADD KEY `running_course_booking_user_id_foreign` (`user_id`),
  ADD KEY `running_course_booking_approver_id_foreign` (`approver_id`);

--
-- Indexes for table `running_course_dates`
--
ALTER TABLE `running_course_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `running_course_dates_running_course_id_foreign` (`running_course_id`);

--
-- Indexes for table `updated_user_during_hrdu`
--
ALTER TABLE `updated_user_during_hrdu`
  ADD KEY `updated_user_during_hrdu_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_pubnet_id_unique` (`pubnet_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_attendees`
--
ALTER TABLE `course_attendees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `running_courses`
--
ALTER TABLE `running_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `running_course_booking`
--
ALTER TABLE `running_course_booking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `running_course_dates`
--
ALTER TABLE `running_course_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_attendees`
--
ALTER TABLE `course_attendees`
  ADD CONSTRAINT `course_attendees_running_course_id_foreign` FOREIGN KEY (`running_course_id`) REFERENCES `running_courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_attendees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_name_foreign` FOREIGN KEY (`permission_name`) REFERENCES `permissions` (`name`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `running_courses`
--
ALTER TABLE `running_courses`
  ADD CONSTRAINT `running_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `running_course_booking`
--
ALTER TABLE `running_course_booking`
  ADD CONSTRAINT `running_course_booking_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `running_course_booking_running_course_id_foreign` FOREIGN KEY (`running_course_id`) REFERENCES `running_courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `running_course_booking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `running_course_dates`
--
ALTER TABLE `running_course_dates`
  ADD CONSTRAINT `running_course_dates_running_course_id_foreign` FOREIGN KEY (`running_course_id`) REFERENCES `running_courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `updated_user_during_hrdu`
--
ALTER TABLE `updated_user_during_hrdu`
  ADD CONSTRAINT `updated_user_during_hrdu_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
