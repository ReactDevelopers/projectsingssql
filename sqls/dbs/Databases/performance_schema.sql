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
-- Database: `performance_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `cond_instances`
--

CREATE TABLE `cond_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_current`
--

CREATE TABLE `events_waits_current` (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `SPINS` int(10) UNSIGNED DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `OPERATION` varchar(16) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) UNSIGNED DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_history`
--

CREATE TABLE `events_waits_history` (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `SPINS` int(10) UNSIGNED DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `OPERATION` varchar(16) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) UNSIGNED DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_history_long`
--

CREATE TABLE `events_waits_history_long` (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `SPINS` int(10) UNSIGNED DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `OPERATION` varchar(16) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) UNSIGNED DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_instance`
--

CREATE TABLE `events_waits_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_thread_by_event_name`
--

CREATE TABLE `events_waits_summary_by_thread_by_event_name` (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_global_by_event_name`
--

CREATE TABLE `events_waits_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_instances`
--

CREATE TABLE `file_instances` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OPEN_COUNT` int(10) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_summary_by_event_name`
--

CREATE TABLE `file_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_summary_by_instance`
--

CREATE TABLE `file_summary_by_instance` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mutex_instances`
--

CREATE TABLE `mutex_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `LOCKED_BY_THREAD_ID` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `performance_timers`
--

CREATE TABLE `performance_timers` (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL,
  `TIMER_FREQUENCY` bigint(20) DEFAULT NULL,
  `TIMER_RESOLUTION` bigint(20) DEFAULT NULL,
  `TIMER_OVERHEAD` bigint(20) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

--
-- Dumping data for table `performance_timers`
--

INSERT INTO `performance_timers` (`TIMER_NAME`, `TIMER_FREQUENCY`, `TIMER_RESOLUTION`, `TIMER_OVERHEAD`) VALUES
('CYCLE', NULL, NULL, NULL),
('NANOSECOND', NULL, NULL, NULL),
('MICROSECOND', NULL, NULL, NULL),
('MILLISECOND', NULL, NULL, NULL),
('TICK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rwlock_instances`
--

CREATE TABLE `rwlock_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `WRITE_LOCKED_BY_THREAD_ID` int(11) DEFAULT NULL,
  `READ_LOCKED_BY_COUNT` int(10) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_consumers`
--

CREATE TABLE `setup_consumers` (
  `NAME` varchar(64) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_consumers`
--

INSERT INTO `setup_consumers` (`NAME`, `ENABLED`) VALUES
('events_waits_current', 'YES'),
('events_waits_history', 'YES'),
('events_waits_history_long', 'YES'),
('events_waits_summary_by_thread_by_event_name', 'YES'),
('events_waits_summary_by_event_name', 'YES'),
('events_waits_summary_by_instance', 'YES'),
('file_summary_by_event_name', 'YES'),
('file_summary_by_instance', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `setup_instruments`
--

CREATE TABLE `setup_instruments` (
  `NAME` varchar(128) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL,
  `TIMED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_timers`
--

CREATE TABLE `setup_timers` (
  `NAME` varchar(64) NOT NULL,
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_timers`
--

INSERT INTO `setup_timers` (`NAME`, `TIMER_NAME`) VALUES
('wait', 'CYCLE');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `THREAD_ID` int(11) NOT NULL,
  `PROCESSLIST_ID` int(11) DEFAULT NULL,
  `NAME` varchar(128) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
