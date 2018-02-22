-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2018 at 12:36 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Video Games', '2018-02-14 23:04:38', '2018-02-14 23:04:38'),
(2, 'Consoles', '2018-02-14 23:04:48', '2018-02-14 23:04:48'),
(3, 'Console Accessories', '2018-02-14 23:05:09', '2018-02-14 23:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `category_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`category_id`, `code`, `name`, `price`, `created_at`, `updated_at`) VALUES
(2, '2ds_xl', 'Nintendo New 2ds XL', 149.99, '2018-02-14 23:24:21', '2018-02-14 23:24:21'),
(2, '3ds_xl', 'Nintendo New 3ds XL', 229.99, '2018-02-14 23:23:42', '2018-02-14 23:23:42'),
(3, 'cont_ps4', 'PS4 Controller', 59.99, '2018-02-14 23:25:45', '2018-02-14 23:25:45'),
(3, 'cont_switch_pro', 'Nintendo Switch Pro Controller', 69.99, '2018-02-14 23:28:42', '2018-02-14 23:28:42'),
(3, 'cont_swtich_joy', 'Nintendo Switch Joy-Cons', 79.99, '2018-02-14 23:28:42', '2018-02-14 23:28:42'),
(3, 'cont_xbox_elite', 'Xbox One Elite Controller', 149.99, '2018-02-14 23:25:45', '2018-02-14 23:25:45'),
(1, 'end_nigh', 'The End Is Nigh', 29.99, '2018-02-14 23:15:50', '2018-02-14 23:15:50'),
(1, 'gta_v', 'GTA V', 39.99, '2018-02-14 23:19:48', '2018-02-14 23:19:48'),
(1, 'isaac_rebirth', 'The Binding of Isaac: Rebirth+', 39.99, '2018-02-14 23:17:43', '2018-02-14 23:17:43'),
(1, 'mario_odyssey', 'Super Mario Odyssey', 59.99, '2018-02-14 23:15:50', '2018-02-14 23:15:50'),
(1, 'meat_boy', 'Super Meat Boy', 14.99, '2018-02-14 23:20:37', '2018-02-14 23:20:37'),
(1, 'mon_hunt', 'Monster Hunter World', 59.99, '2018-02-14 23:18:51', '2018-02-14 23:18:51'),
(2, 'ps4', 'PS4', 299.99, '2018-02-14 23:22:11', '2018-02-14 23:22:11'),
(1, 'rime', 'Rime', 29.99, '2018-02-14 23:19:48', '2018-02-14 23:19:48'),
(1, 'snip_plus', 'Snipperclips Plus', 29.99, '2018-02-14 23:17:43', '2018-02-14 23:17:43'),
(2, 'switch', 'Nintendo Switch', 299.99, '2018-02-14 23:23:42', '2018-02-14 23:23:42'),
(2, 'xb_one_s', 'Xbox One S', 279.99, '2018-02-14 23:22:11', '2018-02-14 23:22:11'),
(1, 'zero_dawn', 'Horizon Zero Dawn', 59.99, '2018-02-14 23:18:51', '2018-02-14 23:18:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
