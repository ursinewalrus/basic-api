-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2017 at 01:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basic-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_groups`
--

CREATE TABLE `ad_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_groups`
--

INSERT INTO `ad_groups` (`id`, `name`, `status`, `campaign_id`) VALUES
(1, 'Facebook Ads - Napice', 'ENABLED', 1),
(2, 'Google Ads - Napice', 'ENABLED', 1),
(3, 'Yahoo Ads - Napice', 'OFFLINE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `advertising_channel_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `status`, `budget`, `advertising_channel_type`) VALUES
(1, 'Interplanetary Cruise', 'OFF', 3000, 'SEARCH'),
(2, 'Police Station', 'ON', 2000, 'DISPLAY'),
(6, 'test', 'test', 2000, 'test'),
(7, 'test', 'test', 2000, 'test'),
(8, 'test', 'test', 2000, 'test'),
(9, 'test', 'test', 2000, 'test'),
(10, 'test', 'test', 2000, 'test'),
(11, 'test', 'test', 2000, 'test'),
(12, 'test', 'test', 2000, 'test'),
(13, 'test', 'test', 2000, 'test'),
(14, 'test', 'test', 2000, 'test'),
(15, 'test', 'test', 2000, 'test'),
(16, 'test', 'test', 2000, 'test'),
(17, 'test', 'test', 2000, 'test'),
(18, 'test', 'test', 2000, 'test'),
(19, 'test', 'test', 2000, 'test'),
(20, 'test', 'test', 2000, 'test'),
(21, 'testauto', 'test', 1, 'test'),
(22, 'testauto', 'test', 1, 'test'),
(23, 'testauto', 'test', 1, 'test'),
(24, 'testauto', 'test', 1, 'test'),
(25, 'testauto', 'test', 1, 'test'),
(26, 'testauto', 'test', 1, 'test'),
(27, 'testauto', 'test', 1, 'test'),
(28, 'testauto', 'test', 1, 'test'),
(29, 'testauto', 'test', 1, 'test'),
(30, 'testauto', 'test', 1, 'test'),
(31, 'testauto', 'test', 1, 'test'),
(32, 'test', 'test', 2000, 'test'),
(33, 'testauto', 'test', 1, 'test'),
(34, 'testauto', 'test', 1, 'test'),
(35, 'testauto', 'test', 1, 'test'),
(36, 'test', 'test', 2000, 'test'),
(37, 'testUpdate', 'test', 1, 'test'),
(38, 'testauto', 'test', 1, 'test'),
(39, 'testauto', 'test', 1, 'test'),
(40, 'test', 'test', 2000, 'test'),
(41, 'testUpdate', 'test', 1, 'test'),
(42, 'testauto', 'test', 1, 'test'),
(43, 'testauto', 'test', 1, 'test'),
(44, 'test', 'test', 2000, 'test'),
(45, 'testUpdate', 'test', 1, 'test'),
(46, 'testauto', 'test', 1, 'test'),
(47, 'testauto', 'test', 1, 'test'),
(48, 'test', 'test', 2000, 'test'),
(49, 'testUpdate', 'test', 1, 'test'),
(50, 'testauto', 'test', 1, 'test'),
(51, 'testauto', 'test', 1, 'test'),
(52, 'test', 'test', 2000, 'test'),
(53, 'testUpdate', 'test', 1, 'test'),
(55, 'testauto', 'test', 1, 'test'),
(56, 'testauto', 'test', 1, 'test'),
(57, 'test', 'test', 2000, 'test'),
(58, 'testUpdate', 'test', 1, 'test'),
(59, 'testauto', 'test', 1, 'test'),
(60, 'testauto', 'test', 1, 'test'),
(61, 'test', 'test', 2000, 'test'),
(62, 'testUpdate', 'test', 1, 'test'),
(64, 'testauto', 'test', 1, 'test'),
(65, 'testauto', 'test', 1, 'test'),
(66, 'test', 'test', 2000, 'test'),
(67, 'testUpdate', 'test', 1, 'test'),
(69, 'testauto', 'test', 1, 'test'),
(70, 'testauto', 'test', 1, 'test'),
(71, 'test', 'test', 2000, 'test'),
(72, 'testUpdate', 'test', 1, 'test'),
(73, 'testauto', 'test', 1, 'test'),
(74, 'testauto', 'test', 1, 'test'),
(75, 'test', 'test', 2000, 'test'),
(76, 'testUpdate', 'test', 1, 'test'),
(77, 'testauto', 'test', 1, 'test'),
(78, 'testauto', 'test', 1, 'test'),
(79, 'test', 'test', 2000, 'test'),
(80, 'testUpdate', 'test', 1, 'test'),
(82, 'testauto', 'test', 1, 'test'),
(83, 'testauto', 'test', 1, 'test'),
(84, 'test', 'test', 2000, 'test'),
(85, 'testUpdate', 'test', 1, 'test'),
(87, 'testauto', 'test', 1, 'test'),
(88, 'testauto', 'test', 1, 'test'),
(89, 'test', 'test', 2000, 'test'),
(90, 'testUpdate', 'test', 1, 'test'),
(92, 'testauto', 'test', 1, 'test'),
(93, 'testauto', 'test', 1, 'test'),
(94, 'test', 'test', 2000, 'test'),
(95, 'testUpdate', 'test', 1, 'test'),
(97, 'testauto', 'test', 1, 'test'),
(98, 'testauto', 'test', 1, 'test'),
(99, 'test', 'test', 2000, 'test'),
(100, 'testUpdate', 'test', 1, 'test'),
(102, 'testauto', 'test', 1, 'test'),
(103, 'testauto', 'test', 1, 'test'),
(104, 'test', 'test', 2000, 'test'),
(105, 'testUpdate', 'test', 1, 'test'),
(107, 'testauto', 'test', 1, 'test'),
(108, 'testauto', 'test', 1, 'test'),
(109, 'test', 'test', 2000, 'test'),
(110, 'testUpdate', 'test', 1, 'test'),
(112, 'testauto', 'test', 1, 'test'),
(113, 'testauto', 'test', 1, 'test'),
(114, 'test', 'test', 2000, 'test'),
(115, 'testUpdate', 'test', 1, 'test'),
(117, 'testauto', 'test', 1, 'test'),
(118, 'testauto', 'test', 1, 'test'),
(119, 'test', 'test', 2000, 'test'),
(120, 'testUpdate', 'test', 1, 'test'),
(122, 'testauto', 'test', 1, 'test'),
(123, 'testauto', 'test', 1, 'test'),
(124, 'test', 'test', 2000, 'test'),
(125, 'testUpdate', 'test', 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `expanded_text_ads`
--

CREATE TABLE `expanded_text_ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `xsi_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_group_id` int(10) UNSIGNED NOT NULL,
  `headline_part1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline_part2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expanded_text_ads`
--

INSERT INTO `expanded_text_ads` (`id`, `xsi_type`, `ad_group_id`, `headline_part1`, `headline_part2`, `description`, `path1`, `path2`) VALUES
(1, 'ExpandedTextAd', 1, 'Developers from Mars', '\'\'', 'Buy your tickets now!', 'all-inclusive', 'deals'),
(2, 'ExpandedTextAd', 3, 'We are looking for the best designers', 'Best in the galaxy', 'We are a team of product builders and are looking for designers', 'all-inclusive', 'deals');

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
(1, '2017_06_23_212827_create_campaigns_table', 1),
(2, '2017_06_23_212837_create_ad_groups_table', 1),
(3, '2017_06_23_212851_create_expanded_text_ad_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_groups`
--
ALTER TABLE `ad_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_groups_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expanded_text_ads`
--
ALTER TABLE `expanded_text_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expanded_text_ad_ad_group_id_foreign` (`ad_group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_groups`
--
ALTER TABLE `ad_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `expanded_text_ads`
--
ALTER TABLE `expanded_text_ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_groups`
--
ALTER TABLE `ad_groups`
  ADD CONSTRAINT `ad_groups_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`);

--
-- Constraints for table `expanded_text_ads`
--
ALTER TABLE `expanded_text_ads`
  ADD CONSTRAINT `expanded_text_ad_ad_group_id_foreign` FOREIGN KEY (`ad_group_id`) REFERENCES `ad_groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
