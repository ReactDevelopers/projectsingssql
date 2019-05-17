-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2017 at 09:43 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aipro_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
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
  `testimonial_name` varchar(100) NOT NULL,
  `testimonial_designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
