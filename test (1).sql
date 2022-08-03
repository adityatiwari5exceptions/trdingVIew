-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 01:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `financial_instruments`
--

CREATE TABLE `financial_instruments` (
  `financial_instruments_id` int(50) NOT NULL,
  `financial_instruments_mapping_id` int(11) DEFAULT NULL,
  `financial_instruments_name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial_instruments`
--

INSERT INTO `financial_instruments` (`financial_instruments_id`, `financial_instruments_mapping_id`, `financial_instruments_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'aditya', '2022-07-28 10:36:55', '2022-07-28 10:36:55'),
(2, NULL, 'aditya123', '2022-07-28 10:37:00', '2022-07-28 10:37:00'),
(3, NULL, 'test123', '2022-07-28 10:37:06', '2022-07-28 10:37:06'),
(4, NULL, 'test', '2022-07-28 10:37:11', '2022-07-28 10:37:11'),
(5, 2, 'test345', '2022-07-28 10:37:17', '2022-07-28 10:37:17'),
(6, NULL, 'abcdd', '2022-07-28 10:37:22', '2022-07-28 10:37:22'),
(7, NULL, 'xyz', '2022-07-28 10:37:30', '2022-07-28 10:37:30'),
(8, 7, 'test456', '2022-07-28 10:37:37', '2022-07-28 10:37:37'),
(9, NULL, 'test567', '2022-07-28 10:37:44', '2022-07-28 10:37:44'),
(10, NULL, 'test34', '2022-07-28 10:37:52', '2022-07-28 10:37:52'),
(11, NULL, 'test3412', '2022-07-28 10:37:55', '2022-07-28 10:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `icon_financials_instruments`
--

CREATE TABLE `icon_financials_instruments` (
  `id` int(50) NOT NULL,
  `indicator_icons_id` int(50) DEFAULT NULL,
  `financials_instruments_id` int(50) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icon_financials_instruments`
--

INSERT INTO `icon_financials_instruments` (`id`, `indicator_icons_id`, `financials_instruments_id`, `updated_at`, `created_at`) VALUES
(1, 1, 2, '2022-08-02 06:29:11', '2022-08-02 06:29:11'),
(2, 2, 4, '2022-08-02 06:29:11', '2022-08-02 06:29:11'),
(3, 1, 7, '2022-08-02 06:29:11', '2022-08-02 06:29:11'),
(4, 1, 8, '2022-08-02 06:29:11', '2022-08-02 06:29:11'),
(5, 3, 9, '2022-08-02 06:29:11', '2022-08-02 06:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `icon_strategies_mapping`
--

CREATE TABLE `icon_strategies_mapping` (
  `id` int(50) NOT NULL,
  `indicator_icons_id` int(250) DEFAULT NULL,
  `strategies_mapping_id` int(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icon_strategies_mapping`
--

INSERT INTO `icon_strategies_mapping` (`id`, `indicator_icons_id`, `strategies_mapping_id`, `updated_at`, `created_at`) VALUES
(7, 1, 1, '2022-08-01 07:17:44', '2022-08-01 12:47:44'),
(8, 1, 2, '2022-08-01 07:17:44', '2022-08-01 12:47:44'),
(9, 1, 3, '2022-08-01 07:17:44', '2022-08-01 12:47:44'),
(10, 1, 1, '2022-08-01 07:18:52', '2022-08-01 12:48:52'),
(11, 1, 2, '2022-08-01 07:18:52', '2022-08-01 12:48:52'),
(12, 1, 3, '2022-08-01 07:18:52', '2022-08-01 12:48:52'),
(13, 2, 1, '2022-08-01 07:46:01', '2022-08-01 13:16:01'),
(14, 2, 5, '2022-08-01 07:46:01', '2022-08-01 13:16:01'),
(15, 2, 3, '2022-08-01 07:46:01', '2022-08-01 13:16:01'),
(16, 2, 5, '2022-08-01 07:46:01', '2022-08-01 13:16:01'),
(17, 3, 2, '2022-08-01 07:48:07', '2022-08-01 13:18:07'),
(18, 3, 4, '2022-08-01 07:48:07', '2022-08-01 13:18:07'),
(19, 3, 6, '2022-08-01 07:48:07', '2022-08-01 13:18:07'),
(20, 4, 2, '2022-08-01 07:52:45', '2022-08-01 13:22:45'),
(21, 4, 4, '2022-08-01 07:52:45', '2022-08-01 13:22:45'),
(22, 4, 6, '2022-08-01 07:52:45', '2022-08-01 13:22:45'),
(23, 4, 14, '2022-08-01 07:52:45', '2022-08-01 13:22:45'),
(24, 5, 10, '2022-08-01 07:56:47', '2022-08-01 13:26:47'),
(25, 5, 10, '2022-08-01 07:57:14', '2022-08-01 13:27:14'),
(26, 5, 12, '2022-08-01 07:57:14', '2022-08-01 13:27:14'),
(27, 5, 17, '2022-08-01 07:57:14', '2022-08-01 13:27:14'),
(28, 5, 6, '2022-08-01 07:57:14', '2022-08-01 13:27:14'),
(29, 5, 9, '2022-08-01 07:57:14', '2022-08-01 13:27:14'),
(30, 5, 10, '2022-08-01 23:46:20', '2022-08-02 05:16:20'),
(31, 5, 12, '2022-08-01 23:46:20', '2022-08-02 05:16:20'),
(32, 5, 17, '2022-08-01 23:46:20', '2022-08-02 05:16:20'),
(33, 5, 6, '2022-08-01 23:46:20', '2022-08-02 05:16:20'),
(34, 5, 9, '2022-08-01 23:46:20', '2022-08-02 05:16:20'),
(35, 5, 10, '2022-08-01 23:47:42', '2022-08-02 05:17:42'),
(36, 5, 12, '2022-08-01 23:47:42', '2022-08-02 05:17:42'),
(37, 5, 17, '2022-08-01 23:47:42', '2022-08-02 05:17:42'),
(38, 5, 6, '2022-08-01 23:47:42', '2022-08-02 05:17:42'),
(39, 5, 9, '2022-08-01 23:47:42', '2022-08-02 05:17:42'),
(40, 5, 10, '2022-08-01 23:47:54', '2022-08-02 05:17:54'),
(41, 5, 12, '2022-08-01 23:47:54', '2022-08-02 05:17:54'),
(42, 5, 17, '2022-08-01 23:47:54', '2022-08-02 05:17:54'),
(43, 5, 6, '2022-08-01 23:47:54', '2022-08-02 05:17:54'),
(44, 5, 9, '2022-08-01 23:47:54', '2022-08-02 05:17:54'),
(45, 5, 9, '2022-08-01 23:54:40', '2022-08-02 05:24:40'),
(46, 5, 9, '2022-08-01 23:55:06', '2022-08-02 05:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `icon_timeframes_mapping`
--

CREATE TABLE `icon_timeframes_mapping` (
  `id` int(50) NOT NULL,
  `indicator_icons_id` int(50) DEFAULT NULL,
  `timeframes_id` int(250) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icon_timeframes_mapping`
--

INSERT INTO `icon_timeframes_mapping` (`id`, `indicator_icons_id`, `timeframes_id`, `updated_at`, `created_at`) VALUES
(1, 1, 4, '2022-08-02 05:27:42', '2022-08-02 05:27:42'),
(2, 1, 4, '2022-08-02 05:28:07', '2022-08-02 05:28:07'),
(3, 3, 1, '2022-08-02 05:28:48', '2022-08-02 05:28:48'),
(4, 3, 2, '2022-08-02 05:28:48', '2022-08-02 05:28:48'),
(5, 3, 1, '2022-08-02 05:29:01', '2022-08-02 05:29:01'),
(6, 3, 2, '2022-08-02 05:29:01', '2022-08-02 05:29:01'),
(7, 3, 1, '2022-08-02 05:29:57', '2022-08-02 05:29:57'),
(8, 3, 2, '2022-08-02 05:29:57', '2022-08-02 05:29:57'),
(9, 3, 3, '2022-08-02 05:29:57', '2022-08-02 05:29:57'),
(10, 4, 1, '2022-08-02 05:30:34', '2022-08-02 05:30:34'),
(11, 4, 2, '2022-08-02 05:30:34', '2022-08-02 05:30:34'),
(12, 4, 3, '2022-08-02 05:30:35', '2022-08-02 05:30:35'),
(13, 4, 5, '2022-08-02 05:30:35', '2022-08-02 05:30:35'),
(14, 4, 6, '2022-08-02 05:30:35', '2022-08-02 05:30:35'),
(15, 4, 1, '2022-08-02 05:31:17', '2022-08-02 05:31:17'),
(16, 4, 2, '2022-08-02 05:31:17', '2022-08-02 05:31:17'),
(17, 4, 3, '2022-08-02 05:31:17', '2022-08-02 05:31:17'),
(18, 4, 5, '2022-08-02 05:31:17', '2022-08-02 05:31:17'),
(19, 4, 6, '2022-08-02 05:31:17', '2022-08-02 05:31:17'),
(20, 4, 7, '2022-08-02 05:31:17', '2022-08-02 05:31:17'),
(21, 4, 1, '2022-08-02 06:29:51', '2022-08-02 06:29:51'),
(22, 4, 2, '2022-08-02 06:29:51', '2022-08-02 06:29:51'),
(23, 4, 3, '2022-08-02 06:29:52', '2022-08-02 06:29:52'),
(24, 4, 5, '2022-08-02 06:29:52', '2022-08-02 06:29:52'),
(25, 4, 6, '2022-08-02 06:29:52', '2022-08-02 06:29:52'),
(26, 4, 7, '2022-08-02 06:29:52', '2022-08-02 06:29:52'),
(27, 4, 5, '2022-08-02 06:29:52', '2022-08-02 06:29:52'),
(28, 5, 1, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(29, 5, 2, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(30, 5, 3, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(31, 5, 5, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(32, 5, 6, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(33, 5, 7, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(34, 5, 5, '2022-08-02 06:30:23', '2022-08-02 06:30:23'),
(35, 9, 1, '2022-08-02 07:21:49', '2022-08-02 07:21:49'),
(36, 9, 2, '2022-08-02 07:21:49', '2022-08-02 07:21:49'),
(37, 9, 3, '2022-08-02 07:21:49', '2022-08-02 07:21:49'),
(38, 9, 5, '2022-08-02 07:21:49', '2022-08-02 07:21:49'),
(39, 9, 6, '2022-08-02 07:21:49', '2022-08-02 07:21:49'),
(40, 9, 7, '2022-08-02 07:21:49', '2022-08-02 07:21:49'),
(41, 9, 5, '2022-08-02 07:21:50', '2022-08-02 07:21:50'),
(42, 9, 0, '2022-08-02 09:52:51', '2022-08-02 09:52:51'),
(43, 9, 0, '2022-08-02 09:53:37', '2022-08-02 09:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(50) NOT NULL,
  `image_name` varchar(250) NOT NULL,
  `image_url` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `image_name`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'imagetest1', 'C:\\xampp\\tmp\\php7C87.tmp', '2022-08-01 07:31:23', '2022-08-01 07:31:23'),
(2, 'imagetest1', 'C:\\xampp\\tmp\\phpF090.tmp', '2022-08-01 07:31:52', '2022-08-01 07:31:52'),
(3, 'imagetest1', 'C:\\xampp\\tmp\\php4F89.tmp', '2022-08-01 07:32:17', '2022-08-01 07:32:17'),
(4, 'imagetest123', 'REXy5qKkIF1GDGx9U4kMoxr6gHxGIBloksYvZB78.png', '2022-08-01 07:33:00', '2022-08-01 07:33:00'),
(5, 'imagetest123234', 'VatArKW43Zk9NIKNhzJhYqyAnXvdfRv8K6aSa6jw.png', '2022-08-01 07:33:36', '2022-08-01 07:33:36'),
(6, 'image_aditya', 'yuL6gJ6eH0W7j4zjtL0Xv3r7Xr9troLCVCMBGNr2.png', '2022-08-01 07:45:57', '2022-08-01 07:45:57'),
(7, 'imagetest', 'SdG0WwfBPBfm6FiFpXxPa4KnF6fkJxl03f0xBPnF.png', '2022-08-01 10:26:40', '2022-08-01 10:26:40'),
(8, 'image1', 'public/apiDoc/UYXQYlF57kiqkdiKUNtLPM2q6JBNo3HhlcIesat0.png', '2022-08-01 10:33:23', '2022-08-01 10:33:23'),
(9, 'image1', 'public/apiDoc/cfq94GjA2ow7QN1PrTWdqd8EOMjVATIucZePSR1w.png', '2022-08-01 10:33:47', '2022-08-01 10:33:47'),
(10, 'image123', 'public/apiDoc/sqzUo4kGUVE7ca3AZs65gjYCQpd7cvfgYTFFqPxZ.png', '2022-08-01 10:38:51', '2022-08-01 10:38:51'),
(11, 'image1233', 'public/apiDoc/sOzFdiGXlAfZarD2Gg5I50QWRJhNKNiwWTUqpyQD.png', '2022-08-01 10:39:15', '2022-08-01 10:39:15'),
(12, 'image1233', 'public/apiDoc/RPlx5IoKRO3vN65As5U1JnNEM5WODNnA3xNI9FE8.png', '2022-08-01 10:43:56', '2022-08-01 10:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `indicator_icons`
--

CREATE TABLE `indicator_icons` (
  `indicator_icons_id` int(50) NOT NULL,
  `icon_name` varchar(250) NOT NULL,
  `icon_url` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indicator_icons`
--

INSERT INTO `indicator_icons` (`indicator_icons_id`, `icon_name`, `icon_url`, `created_at`, `updated_at`) VALUES
(1, 'axc123', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:18', '2022-07-28 10:41:18'),
(2, 'axc1231', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:22', '2022-07-28 10:41:22'),
(3, 'test12', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:26', '2022-07-28 10:41:26'),
(4, 'aditya12', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:33', '2022-07-28 10:41:33'),
(5, 'test567', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:38', '2022-07-28 10:41:38'),
(6, 'test56', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:41', '2022-07-28 10:41:41'),
(7, 'test6', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:45', '2022-07-28 10:41:45'),
(8, 'test7', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:49', '2022-07-28 10:41:49'),
(9, 'test9', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:53', '2022-07-28 10:41:53'),
(10, 'test99', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:55', '2022-07-28 10:41:55'),
(11, 'test999', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:41:58', '2022-07-28 10:41:58'),
(12, 'test1299', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:42:02', '2022-07-28 10:42:02'),
(13, 'xzr', 'https://www.w3schools.com/sql/sql_join_inner.asp', '2022-07-28 10:42:13', '2022-07-28 10:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `strategies`
--

CREATE TABLE `strategies` (
  `strategies_id` int(50) NOT NULL,
  `strategies_mapping_id` int(50) DEFAULT NULL,
  `strategies_name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strategies`
--

INSERT INTO `strategies` (`strategies_id`, `strategies_mapping_id`, `strategies_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'strategiestest1', '2022-07-28 10:25:06', '2022-07-28 10:25:06'),
(2, NULL, 'strategiestest12', '2022-07-28 10:25:21', '2022-07-28 10:25:21'),
(3, 4, 'strategies123', '2022-07-28 10:25:31', '2022-07-28 10:25:31'),
(4, NULL, 'strategies1233', '2022-07-28 10:25:34', '2022-07-28 10:25:34'),
(5, NULL, 'xyz1214', '2022-07-28 10:25:45', '2022-07-28 10:25:45'),
(6, NULL, 'test123', '2022-07-28 10:25:51', '2022-07-28 10:25:51'),
(7, NULL, 'aditya12', '2022-07-28 10:26:27', '2022-07-28 10:26:27'),
(8, NULL, 'Strategies345', '2022-07-28 10:26:33', '2022-07-28 10:26:33'),
(9, NULL, 'Strategies347', '2022-07-28 10:26:37', '2022-07-28 10:26:37'),
(10, NULL, 'Strategies348', '2022-07-28 10:26:43', '2022-07-28 10:26:43'),
(11, NULL, 'Strategies349', '2022-07-28 10:26:46', '2022-07-28 10:26:46'),
(12, 5, 'strategies56', '2022-08-01 06:27:57', '2022-08-01 06:27:57'),
(13, NULL, 'strategies56', '2022-08-01 06:36:45', '2022-08-01 06:36:45'),
(14, NULL, 'strategies5611', '2022-08-01 06:37:02', '2022-08-01 06:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `timeframes`
--

CREATE TABLE `timeframes` (
  `timeframes_id` int(50) NOT NULL,
  `icon_time_mapping_id` int(11) DEFAULT NULL,
  `timeframes_name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeframes`
--

INSERT INTO `timeframes` (`timeframes_id`, `icon_time_mapping_id`, `timeframes_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'test45', '2022-07-28 10:32:48', '2022-07-28 10:32:48'),
(2, 4, 'tes12', '2022-07-28 10:33:00', '2022-07-28 10:33:00'),
(3, 4, 'timeframestest123', '2022-07-28 10:33:09', '2022-07-28 10:33:09'),
(4, 0, 'timeframestest', '2022-07-28 10:33:14', '2022-07-28 10:33:14'),
(5, 0, 'xyz123', '2022-07-28 10:33:21', '2022-07-28 10:33:21'),
(6, 0, 'xyz12345', '2022-07-28 10:33:28', '2022-07-28 10:33:28'),
(7, 0, 'test12345', '2022-07-28 10:33:34', '2022-07-28 10:33:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financial_instruments`
--
ALTER TABLE `financial_instruments`
  ADD PRIMARY KEY (`financial_instruments_id`);

--
-- Indexes for table `icon_financials_instruments`
--
ALTER TABLE `icon_financials_instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icon_strategies_mapping`
--
ALTER TABLE `icon_strategies_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icon_timeframes_mapping`
--
ALTER TABLE `icon_timeframes_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `indicator_icons`
--
ALTER TABLE `indicator_icons`
  ADD PRIMARY KEY (`indicator_icons_id`);

--
-- Indexes for table `strategies`
--
ALTER TABLE `strategies`
  ADD PRIMARY KEY (`strategies_id`);

--
-- Indexes for table `timeframes`
--
ALTER TABLE `timeframes`
  ADD PRIMARY KEY (`timeframes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financial_instruments`
--
ALTER TABLE `financial_instruments`
  MODIFY `financial_instruments_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `icon_financials_instruments`
--
ALTER TABLE `icon_financials_instruments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `icon_strategies_mapping`
--
ALTER TABLE `icon_strategies_mapping`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `icon_timeframes_mapping`
--
ALTER TABLE `icon_timeframes_mapping`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `indicator_icons`
--
ALTER TABLE `indicator_icons`
  MODIFY `indicator_icons_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `strategies`
--
ALTER TABLE `strategies`
  MODIFY `strategies_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `timeframes`
--
ALTER TABLE `timeframes`
  MODIFY `timeframes_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
