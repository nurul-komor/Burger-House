-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2022 at 04:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_project`
--
CREATE DATABASE IF NOT EXISTS `college_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `college_project`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`) VALUES
(2, 'admin', 'aabb2100033f0352fe7458e412495148', 'customer@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `email`, `phone`, `address`, `status`) VALUES
(43, 'Mark', '1adbb3178591fd5bb0c248518f39bf6d', 'customer@help.com', '0154878515', 'Test address', 1),
(44, 'Mark', '1adbb3178591fd5bb0c248518f39bf6d', 'customer@help.com', '0154878515', 'Test address', 1),
(45, '32423', '40bdf41c62637e3b882e6cbcc466b65f', 'customer@help.com', '42424fsdfas', '25235', 1),
(47, 'customer', '41417f0c44cf81bac621887d703f6605', 'customer@gmail.com', '', 'lorem ipsum', 1),
(48, 'Customer', '91fc8dee4f5d7efc32dba8aa7b5a616f', 'customer@gmail.com', '01849785215', 'lreomdlskfla', 1);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `food_title` varchar(100) NOT NULL,
  `food_image` varchar(100) DEFAULT NULL,
  `old_price` varchar(11) DEFAULT NULL,
  `new_price` varchar(100) NOT NULL,
  `items` varchar(11) NOT NULL,
  `sold_out` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `food_name`, `food_title`, `food_image`, `old_price`, `new_price`, `items`, `sold_out`, `status`) VALUES
(43, 'Burger 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62fa80b25a3a6_1660584114.png', '160', '130', '50', '', 1),
(44, 'Burger 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62fa80c62f08a_1660584134.png', '160', '130', '65', '', 1),
(45, 'Burger 3', '', '62fa80e6d72d5_1660584166.png', '60', '36', '50', '', 1),
(46, 'Burger 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62fa80b25a3a6_1660584114.png', '160', '130', '50', '', 1),
(47, 'Burger 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62fa80c62f08a_1660584134.png', '160', '130', '65', '', 1),
(48, 'Burger 6', '', '62fa80e6d72d5_1660584166.png', '60', '36', '50', '', 1),
(49, 'Burger 88', 'lorem ipsum', '637e3550440cc_1669215568.png', '100', '50', '100', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `people` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `date`, `people`, `email`, `time`) VALUES
(1, 'XPLORE ASIA', '2022-07-12', '3', 'nurulkomor52@gmail.com', '00:00:00.000000'),
(3, 'XPLORE ASIA', '2022-07-08', '33', 'nurulkomor52@gmail.com', '00:00:00.000000'),
(4, 'XPLORE ASIA', '2022-07-08', '33', 'nurulkomor53@gmail.com', '00:00:00.000000'),
(5, 'XPLORE ASIA', '2022-06-30', '5', 'sadmanhossain96@gmail.com', '00:00:00.000000'),
(24, 'XPLORE ASIA', '2022-07-07', '4', 'nurulkomor52@gmail.com', '00:00:00.000000'),
(27, 'XPLORE ASIA', '2022-07-07', '2', 'sadmanhossain96@gmail.com', '21:16:00.000000'),
(28, 'XPLORE ASIA', '2022-07-08', '3', 'sadmanhossain96@gmail.com', '12:15:00.000000'),
(29, 'XPLORE ASIA', '2022-07-06', '1', 'nurulkomor52@gmail.com', '23:20:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `products` text NOT NULL,
  `address` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `username`, `phone`, `products`, `address`, `price`, `status`) VALUES
(75, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '285.00', 'Placed'),
(76, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(77, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(78, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(80, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(81, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(83, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(85, 'customer', 'Cusomter Name', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '155.00', 'Placed'),
(86, 'customer', 'Cusomter Name', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '', 'Placed'),
(87, 'customer', 'Cusomter Name', 'Burger 6(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '190.00', 'Delivered'),
(88, '', '', 'Burger 5(quantity:1 pcs)Burger 5(quantity:1 pcs)', '', '50.00', 'Delivered'),
(89, 'Test Name', '01860081978', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'lorem ipsum', '155.00', 'Placed'),
(90, 'Test Name', '01860081978', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'lorem ipsum', '155.00', 'Delivered'),
(91, 'Test Name', '01860081978', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', 'lorem ipsum', '155.00', 'Delivered'),
(92, 'Test Name', '01860081978', 'Burger 2(quantity:1 pcs)', 'lorem ipsum', '30.00', 'Placed'),
(93, '', '', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', '', '155.00', 'Placed'),
(94, '', '', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', '', '155.00', 'Placed'),
(95, '', '', 'Burger 4(quantity:1 pcs)Burger 1(quantity:1 pcs)', '', '195.00', 'Placed'),
(96, '', '', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', '', '155.00', 'Placed'),
(97, 'customer', '01860081845', 'Burger 4(quantity:0 pcs)Burger 5(quantity:0 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum', '155.00', 'Placed'),
(98, 'customer', '01860081845', '', 'Lorem Ipsum', '155.00', 'Placed'),
(99, 'customer', '01860081978', 'Burger 6(quantity:0 pcs)Burger 5(quantity:0 pcs)Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum', '155.00', 'Delivered'),
(100, 'customer', '01860081845', 'Burger 5(quantity:0 pcs)Burger 4(quantity:0 pcs)Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', '97 Great Russell Street,London,United Kingdom', '155.00', 'Placed'),
(101, 'customer', '01860081845', 'Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Delivered'),
(102, 'customer', '01860081845', 'Burger 5(quantity:1 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Placed'),
(103, 'customer', '01860081845', 'Burger 5(quantity:6 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '795.00', 'Delivered'),
(104, 'customer', '01860081845', 'Burger 5(quantity:1 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Delivered'),
(105, 'customer', '01860081845', 'Burger 4(quantity:5 pcs)', '97 Great Russell Street,London,United Kingdom', '900.00', 'Delivered'),
(106, 'customer', '01860081845', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', '97 Great Russell Street,London,United Kingdom', '155.00', 'Delivered'),
(107, 'customer', '01860081845', 'Burger 4(quantity:4 pcs)Burger 5(quantity:5 pcs)', '97 Great Russell Street,London,United Kingdom', '1165.00', 'Delivered'),
(108, 'customer', '01860081845', 'Burger 5(quantity:5 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Delivered'),
(109, 'customer', '01860081845', 'Burger 6(quantity:6 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '765.00', 'Delivered'),
(110, 'Test Name', '01860081978', 'Burger 4(quantity:1 pcs)', 'Khulshi,Chittagong', '130.00', 'Delivered'),
(111, 'customer', '01860081845', 'Burger 5(quantity:4 pcs)Burger 6(quantity:4 pcs)Burger 5(quantity:8 pcs)Burger 4(quantity:4 pcs)', 'Abdul Hamid Road, Foy\'s Lake, Chittagong', '964.00', 'Delivered'),
(112, 'Test Name', '01860081845', 'Burger 6(quantity:4 pcs)Burger 6(quantity:7 pcs)Burger 5(quantity:9 pcs)', 'Test', '621.00', 'Delivered'),
(113, 'Mark', '0154878515', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Test address', '155.00', 'Delivered'),
(114, 'Mark', '0154878515', 'Burger 6(quantity:9 pcs)', 'Test address', '324.00', 'Placed'),
(115, 'Mark', '0154878515', 'Burger 4(quantity:1 pcs)', 'Test address', '260.00', 'Delivered'),
(116, 'customer', '', 'Burger 6(quantity:1 pcs)Burger 5(quantity:1 pcs)', 'lorem ipsum', '202.00', 'Placed'),
(117, 'Customer', '01849785215', 'Burger 3(quantity:1 pcs)Burger 3(quantity:1 pcs)Burger 2(quantity:1 pcs)', 'lreomdlskfla', '202.00', 'Placed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- Database: `laravel_crud`
--
CREATE DATABASE IF NOT EXISTS `laravel_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `birthday`, `address`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ff', 'fasfa@fff', NULL, 'f', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2022-11-21 00:16:13', '2022-11-21 00:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_02_091910_create_customers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_first`
--
CREATE DATABASE IF NOT EXISTS `laravel_first` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_first`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_30_091332_create_test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('M','F','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'test', 'fsafa@gfasf', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 1, 'VeHniM5yvS5wuSdGytduiHHeZrwW8lh5X3qPKGas', '2022-11-21 00:30:07', '2022-11-21 00:30:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `test_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `laravel_second`
--
CREATE DATABASE IF NOT EXISTS `laravel_second` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_second`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `birthday`, `address`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'nurulkomor52@gmail.cm', '1970-01-01', 'safas', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2022-11-21 06:34:45', '2022-11-21 00:39:43', '2022-11-21 00:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_02_091910_create_customers', 1),
(6, '2022_10_06_062918_add_deleted_at_to_customers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `medicine_store`
--
CREATE DATABASE IF NOT EXISTS `medicine_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `medicine_store`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '1 for active,\r\n0 for deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', 'aabb2100033f0352fe7458e412495148', 1),
(2, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 0);

-- --------------------------------------------------------

--
-- Table structure for table `allproducts`
--

CREATE TABLE `allproducts` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `old_price` varchar(11) DEFAULT NULL,
  `new_price` varchar(100) NOT NULL,
  `items` varchar(11) NOT NULL,
  `sold_out` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allproducts`
--

INSERT INTO `allproducts` (`id`, `product_name`, `productId`, `cat_id`, `product_title`, `product_image`, `old_price`, `new_price`, `items`, `sold_out`, `status`) VALUES
(52, 'Napa Shirap (60 Ml)', 'NapaShirap(60ml)_1659966836', 37, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '62f11574de562_1659966836.jpeg', '120', '80', '200', '197', 1),
(53, 'Test', 'Test_1659966904', 36, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '62f115b89ef12_1659966904.jpg', '100', '40', '', '', 0),
(54, 'Thermometer', 'thermometer_1659966942', 29, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '62f115dec3731_1659966942.jpg', '', '40', '50', '30', 1),
(55, 'Rabeca (20 Mg)', 'Rabeca(20mg)_1659968196', 37, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '62f11ac48fe3a_1659968196.jpg', '', '40', '150', '', 1),
(56, 'Test', 'Test_1660112458', 37, '', '62f34e4a8d683_1660112458.jpg', '', '50', '50', '', 0),
(57, 'Test', 'Test_1660112511', 37, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '62f34e7fee236_1660112511.jpg', '', '', '200', '', 0),
(58, 'Atorvastatin', 'Atorvastatin_1660225581', 37, '', '62f5082d9ff05_1660225581.jpg', '', '500', '100', '', 1),
(59, 'Euthyrox', 'Euthyrox_1660225625', 37, '', '62f508591152f_1660225625.JPG', '', '300', '500', '', 1),
(60, 'Losartan', 'Losartan_1660226700', 37, '', '62f50c8c8e75b_1660226700.jpg', '', '500', '500', '', 1),
(61, 'Gabapentin', 'Gabapentin_1660226783', 37, '', '62f50cdf0ddb7_1660226783.jpg', '280', '260', '150', '', 1),
(62, 'Hydrochlorothiazide', 'Hydrochlorothiazide_1660226905', 37, '', '62f50d5901a35_1660226905.jpg', '420', '400', '300', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`) VALUES
(25, 'Homeopathy', 0),
(26, 'Vitamins And Suppliments', 0),
(27, 'Ayurveda', 0),
(28, 'Health Food & Drinks', 0),
(29, 'Healthcare devices', 1),
(30, 'Skincare', 0),
(37, 'Medicine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customerId` varchar(255) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customerId`, `customer_email`, `password`, `phone`, `address`, `status`) VALUES
(3, 'Mark', 'Mark1660155865', 'Customer@help.com', '1adbb3178591fd5bb0c248518f39bf6d', '0154878515', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', 1),
(8, 'Rahul', 'Rahul1660205345', 'rahul@yahoo.com', '1adbb3178591fd5bb0c248518f39bf6d', '015674591542', '04,Gulshan,Dhaka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `products` text NOT NULL,
  `address` text NOT NULL,
  `total` varchar(10) NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `email`, `phone`, `products`, `address`, `total`, `payment_status`, `status`) VALUES
(1, 'Mark', 'Customer@help.com', '0154878515', 'Rabeca (20 Mg)(3)Thermometer(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '210', 1, 1),
(2, 'Mark', 'Customer@help.com', '0154878515', 'Rabeca (20 Mg)(3)Thermometer(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '210', 1, 1),
(3, 'Mark', 'Customer@help.com', '0154878515', 'Rabeca (20 Mg)(3)Thermometer(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '210', 1, 1),
(4, 'Mark', 'Customer@help.com', '0154878515', 'Rabeca (20 Mg)(3)Thermometer(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '210', 1, 1),
(5, 'Mark', 'Customer@help.com', '0154878515', 'Napa Shirap (60 Ml)(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '130', 1, 1),
(6, 'Mark', 'Customer@help.com', '0154878515', 'Napa Shirap (60 Ml)(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '130', 1, 1),
(7, 'Mark', 'Customer@help.com', '0154878515', 'Rabeca (20 Mg)(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '90', 1, 1),
(8, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(9, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(10, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(11, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(12, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(13, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(14, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(15, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)Euthyrox(3)Thermometer(5)Atorvastatin(5)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '4150', 1, 1),
(16, 'Mark', 'Customer@help.com', '0154878515', '', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '', 1, 1),
(17, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '550', 1, 1),
(18, 'Mark', 'Customer@help.com', '0154878515', '', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '', 1, 1),
(19, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '550', 1, 1),
(20, 'Mark', 'Customer@help.com', '0154878515', 'Euthyrox(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '350', 1, 0),
(21, 'Mark', 'Customer@help.com', '0154878515', 'Euthyrox(1)Losartan(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '850', 1, 1),
(22, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(3)Euthyrox(4)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '2750', 1, 1),
(23, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(4)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '2050', 1, 0),
(24, 'Mark', 'Customer@help.com', '0154878515', 'Losartan(4)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '2050', 3, 1),
(25, 'Mark', 'Customer@help.com', '0154878515', 'Gabapentin(1)', '07,Foy\'s Lake Housing Society, Foy\'s Lake Chittagong', '310', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allproducts`
--
ALTER TABLE `allproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customerId` (`customerId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `allproducts`
--
ALTER TABLE `allproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `mobile_shop`
--
CREATE DATABASE IF NOT EXISTS `mobile_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mobile_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Corwin, Schultz and Rohan', 'https://via.placeholder.com/640x480.png/0000aa?text=eligendi', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(2, 'Ullrich Inc', 'https://via.placeholder.com/640x480.png/0000bb?text=expedita', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(3, 'Conn Group', 'https://via.placeholder.com/640x480.png/00ff99?text=molestiae', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(4, 'Kuhn and Sons', 'https://via.placeholder.com/640x480.png/00ddaa?text=consectetur', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(5, 'Grimes Inc', 'https://via.placeholder.com/640x480.png/0044aa?text=hic', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(6, 'Lesch Ltd', 'https://via.placeholder.com/640x480.png/0099aa?text=sunt', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(7, 'Gutkowski, Hirthe and Quigley', 'https://via.placeholder.com/640x480.png/0022cc?text=magnam', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(8, 'Frami Ltd', 'https://via.placeholder.com/640x480.png/00aa44?text=laborum', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(9, 'Dach-Heathcote', 'https://via.placeholder.com/640x480.png/00aa11?text=eligendi', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(10, 'Labadie LLC', 'https://via.placeholder.com/640x480.png/009933?text=aut', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(11, 'Ruecker Inc', 'https://via.placeholder.com/640x480.png/008866?text=ipsam', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(12, 'Rath-Schinner', 'https://via.placeholder.com/640x480.png/0000dd?text=in', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(13, 'VonRueden PLC', 'https://via.placeholder.com/640x480.png/005588?text=consequuntur', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(14, 'Gorczany-Armstrong', 'https://via.placeholder.com/640x480.png/0099bb?text=omnis', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(15, 'Sawayn and Sons', 'https://via.placeholder.com/640x480.png/004400?text=ullam', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(16, 'Welch, Boyle and Tremblay', 'https://via.placeholder.com/640x480.png/006655?text=et', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(17, 'Conroy-Rosenbaum', 'https://via.placeholder.com/640x480.png/00ff11?text=in', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(18, 'Bruen PLC', 'https://via.placeholder.com/640x480.png/008899?text=provident', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(19, 'Jerde Inc', 'https://via.placeholder.com/640x480.png/00ccee?text=non', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(20, 'Becker LLC', 'https://via.placeholder.com/640x480.png/0099ff?text=autem', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(21, 'Zemlak-Feeney', 'https://via.placeholder.com/640x480.png/0099ff?text=natus', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(22, 'Torp-Hill', 'https://via.placeholder.com/640x480.png/0077aa?text=repellendus', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(23, 'Harris PLC', 'https://via.placeholder.com/640x480.png/005522?text=et', 1, '2022-11-22 06:31:56', '2022-11-22 06:31:56', NULL),
(24, 'Schinner, Gulgowski and Hermann', 'https://via.placeholder.com/640x480.png/003355?text=omnis', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(25, 'Conroy and Sons', 'https://via.placeholder.com/640x480.png/002277?text=quis', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(26, 'Russel PLC', 'https://via.placeholder.com/640x480.png/0088ff?text=quibusdam', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(27, 'Hayes, Beier and Larkin', 'https://via.placeholder.com/640x480.png/0033cc?text=doloribus', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(28, 'Connelly Ltd', 'https://via.placeholder.com/640x480.png/00ccee?text=voluptate', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(29, 'Hickle-Cremin', 'https://via.placeholder.com/640x480.png/0044bb?text=rerum', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(30, 'Grant-Bode', 'https://via.placeholder.com/640x480.png/00ffdd?text=ad', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(31, 'Roberts-Grimes', 'https://via.placeholder.com/640x480.png/00ffbb?text=ea', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(32, 'Abbott-Bins', 'https://via.placeholder.com/640x480.png/005555?text=rerum', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(33, 'Considine, Braun and Walker', 'https://via.placeholder.com/640x480.png/00ee66?text=repellendus', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(34, 'Ledner Group', 'https://via.placeholder.com/640x480.png/0099ee?text=et', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(35, 'Schroeder-Hartmann', 'https://via.placeholder.com/640x480.png/002211?text=ipsum', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(36, 'Jacobs, Larkin and Lemke', 'https://via.placeholder.com/640x480.png/0077bb?text=nemo', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(37, 'Anderson Ltd', 'https://via.placeholder.com/640x480.png/00aa33?text=aut', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(38, 'Gottlieb-Stokes', 'https://via.placeholder.com/640x480.png/004433?text=debitis', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(39, 'Cruickshank-Hudson', 'https://via.placeholder.com/640x480.png/00bb77?text=esse', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(40, 'Ruecker, Murphy and Dooley', 'https://via.placeholder.com/640x480.png/00ee66?text=cupiditate', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(41, 'Champlin, Pollich and Langosh', 'https://via.placeholder.com/640x480.png/0022ee?text=eos', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(42, 'Auer, Schultz and Murazik', 'https://via.placeholder.com/640x480.png/008811?text=quis', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(43, 'Mann and Sons', 'https://via.placeholder.com/640x480.png/0055dd?text=ullam', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(44, 'Quitzon-Kertzmann', 'https://via.placeholder.com/640x480.png/00bb99?text=et', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(45, 'Ward Group', 'https://via.placeholder.com/640x480.png/00cc55?text=enim', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(46, 'Feil-Beahan', 'https://via.placeholder.com/640x480.png/00ee88?text=qui', 1, '2022-11-22 06:31:57', '2022-11-22 06:31:57', NULL),
(47, 'Borer, Effertz and Muller', 'https://via.placeholder.com/640x480.png/004444?text=perferendis', 1, '2022-11-22 06:31:58', '2022-11-22 06:31:58', NULL),
(48, 'Mueller, Strosin and Witting', 'https://via.placeholder.com/640x480.png/007722?text=dolores', 1, '2022-11-22 06:31:58', '2022-11-22 06:31:58', NULL),
(49, 'Lesch, Wunsch and Welch', 'https://via.placeholder.com/640x480.png/0088aa?text=enim', 1, '2022-11-22 06:31:58', '2022-11-22 06:31:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `email`, `password`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pansy Bernier PhD', '+1-385-984-6972', 'eloisa52@hotmail.com', '$2y$10$Erg9QZQE/quhIdSRb.5OzuOxNwqC063DRH0sFal2Spvm2aRRMqFSe', '880 Elody Shoals\nLeannonberg, WY 28371-6263', 1, '2022-11-22 06:31:50', '2022-11-22 06:31:50', NULL),
(2, 'Ms. Kaelyn Shields III', '(458) 242-2593', 'zkeebler@damore.biz', '$2y$10$AV7HL6FpC.xu8DpfqDVejOF0ExwpEvkFozDOebcafP8WN/mKiInrO', '3974 Evalyn Well Apt. 937\nIciefort, DE 80798', 1, '2022-11-22 06:31:50', '2022-11-22 06:31:50', NULL),
(3, 'Orland Koch', '+1-775-406-1809', 'qschultz@gmail.com', '$2y$10$GNmgiLr4h8oXRTuuIfVvW.ewhlKIXVnJEPyZ9jLu.Qju1oWngBaQG', '46279 Nolan Causeway\nNew Hermannburgh, VA 56808-2944', 1, '2022-11-22 06:31:50', '2022-11-22 06:31:50', NULL),
(4, 'Katheryn O\'Hara', '(336) 299-1930', 'jaren.steuber@romaguera.com', '$2y$10$Ynj/inrYLkWplWu0YTAb2OAmnezpwLnWi7MHKrRowa18/MUOlu8kO', '4947 Lysanne Drive\nSouth Myah, NJ 24173-0279', 1, '2022-11-22 06:31:50', '2022-11-22 06:31:50', NULL),
(5, 'Ms. Carolyn Gusikowski MD', '(678) 761-9632', 'shirthe@yahoo.com', '$2y$10$JqusRM78tKzudqh3Zfjf2.PbljMEs2b0Ahua.4MqYBkBPJKJX55Da', '60627 Streich Flats Suite 984\nSouth Lauryside, IN 90973-0119', 1, '2022-11-22 06:31:50', '2022-11-22 06:31:50', NULL),
(6, 'Prof. Leilani Haley II', '423-914-7581', 'strosin.ozella@hotmail.com', '$2y$10$9dTO6eXqwURXhPylNaXTvuG7n0H0IhONnL/oFowxtSrPBy4.3JLm6', '6495 Farrell Path\nLake Stanton, NE 11642-4185', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(7, 'Catharine Paucek', '+19175636448', 'ulindgren@klocko.org', '$2y$10$GW1ypo.9WBMikZbQM1wzTuwa9aCPVK5qc.ncDjUOLKy2ETIbO3j9y', '884 Nikolaus Heights Apt. 668\nCrooksfort, MI 98049-7837', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(8, 'Dr. Nels Terry', '+1.701.818.8291', 'jessika90@turner.com', '$2y$10$AmRw22Ixufst7J9CmR/j0.Cwuzzy4zqdK2g5iitp0nVLPH6muLgCa', '1088 Ora Motorway Apt. 197\nPort Kathlynville, WV 80853', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(9, 'Nicola Connelly DVM', '+1 (360) 656-0536', 'qmclaughlin@harvey.org', '$2y$10$SJuAxSZ6/MdOum4TCo4bZO5A5kniSAwjbGPqYFXJdNqa.atDg2SEq', '628 Haag Run Apt. 335\nElianefort, LA 14593', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(10, 'Jess Corwin', '+1.720.951.5581', 'rowan.kozey@gmail.com', '$2y$10$M62eGDAr0nHQwEZdnibsve51KiKl8VO4ipAh9oVg72ySTc.tEwdJa', '55878 Richard Wall Suite 451\nWest Cale, NC 86881-2277', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(11, 'Howell Kohler I', '531.454.2925', 'reta.turner@hotmail.com', '$2y$10$lAvsDcGSQkySDdG.D4ComeNQcyqbCCRPA2UzMAvNczPLepg4qg.E2', '197 Runte Square\nTessbury, HI 68448-6240', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(12, 'Annamarie Denesik', '1-401-379-3820', 'wkihn@gmail.com', '$2y$10$lqvPwZozqwAXwxz7Kazyce7/ucyrULNcr6OPZzZNJrwi9hfanBmdO', '21857 Mraz Bridge Suite 039\nBernadettebury, KS 83030-3723', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(13, 'Zita Hammes', '+1-484-258-1778', 'dedric63@goyette.com', '$2y$10$jiFv7NB0Jof/TV10BAtm.O3cILElZAq/kxcqOQ5.Wsn7suaAXtFJ6', '6000 Effertz Mountain Apt. 403\nCloydview, NV 18665', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(14, 'Mr. Kris Lemke', '+1-434-955-1048', 'hortense53@rohan.com', '$2y$10$W0nC34mLYUHRlUknrDzAkur8kAvGaClW3gZ8Aef.CywlnDBQDBgOa', '74576 Glover Alley\nDaynahaven, MO 04073', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(15, 'Hilario Friesen PhD', '+1 (725) 882-4180', 'lmccullough@baumbach.net', '$2y$10$19SDBDgP/7mfKIFmf/L7UeCYo6gsYj5YgE0ozUrGQEBHnZ/XGrf2q', '7344 VonRueden Street\nNorth Jace, TX 83280', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(16, 'Dr. Arjun Schaden I', '682-335-1255', 'earl.daugherty@balistreri.com', '$2y$10$JOUnVUEx62r3WZoxDCwWHOuT416vteRGppbBqvh9dSNrTaoBldO5e', '647 Isidro Prairie\nPierceton, CT 44405-2342', 1, '2022-11-22 06:31:51', '2022-11-22 06:31:51', NULL),
(17, 'Josefa O\'Conner', '1-859-938-6605', 'nbradtke@yahoo.com', '$2y$10$zVLk6GBaiMJj5UafcjIxqe0XaMZ/Hfdm932iRlUfJH3BzaD8VtCmO', '61955 Wiza Crest\nSouth Monica, WI 27197-4999', 1, '2022-11-22 06:31:52', '2022-11-22 06:31:52', NULL),
(18, 'Dr. Caroline Schaden', '+1 (458) 292-1983', 'christiansen.alessia@mcglynn.com', '$2y$10$A3yW4ZziHraLR8NKYHQL1uS79iliJRkuUTCZaRL38hCyvKX5bGajm', '10343 Herzog Trail Suite 929\nNorth Oliver, UT 34581', 1, '2022-11-22 06:31:52', '2022-11-22 06:31:52', NULL),
(19, 'Rosina Hackett', '423.800.0910', 'morar.larue@reilly.com', '$2y$10$hHiXNA1uBi7ACtNwiSfgf..0jCLjbz4XNo3EFfVm2damS293N9LZG', '6342 Madie Fort\nSouth Armando, NE 84192', 1, '2022-11-22 06:31:52', '2022-11-22 06:31:52', NULL),
(20, 'Pascale Homenick', '(540) 640-5610', 'ryder59@king.net', '$2y$10$sAHcWp/wMlP1HJs/sPn7ouOv4MhYKWKNY6/AN4/KFvKTFWIHN3clK', '4332 Berge Tunnel Apt. 453\nSouth Jermain, RI 92730-8399', 1, '2022-11-22 06:31:52', '2022-11-22 06:31:52', NULL),
(21, 'Earnestine Ferry', '281.482.6493', 'kenna.reinger@hotmail.com', '$2y$10$3e9KA90Omez5Xo3xfREz7u7Uws6dkuG50//Niryp7VCxfvFNAnMnG', '23641 Schulist Stream Suite 604\nEast Buford, MI 13119-5817', 1, '2022-11-22 06:31:52', '2022-11-22 06:31:52', NULL),
(22, 'Mr. Colten Mann', '(564) 610-9212', 'krystal26@gmail.com', '$2y$10$qz450DYaL0..4ixP6/8UHe7bjAmbpPE3kwcwylF4OPOMLABNWLOEK', '523 Halvorson Islands\nSouth Dewitt, IN 88496-5285', 1, '2022-11-22 06:31:52', '2022-11-22 06:31:52', NULL),
(23, 'Johanna Daniel', '+1-585-453-5530', 'shirley25@hotmail.com', '$2y$10$SZdzTpwF6eSeSmn.zaCV0uxFNNX5mPbCnyuWUay03qJBvJOZSSp9O', '83975 Jaida Ferry\nMuellerview, CA 61233', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(24, 'Idella Glover', '+1.571.502.3814', 'bframi@hotmail.com', '$2y$10$TcwjA6botTXqsPnuNUwsJuWpfvA3KeZizJkoZrTbhrDT9kfRbxRgm', '5076 Vincenzo Forge Suite 921\nDelphiaburgh, ME 27126-8185', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(25, 'Gisselle Casper', '918-203-2931', 'maggio.eliane@hotmail.com', '$2y$10$RSbcVthNkHDTeqWHatu/a.IgsWrG0/bzJmSlNixQVJM2qTQVXIL3G', '3714 Langosh Flat Apt. 714\nWest Darlenebury, AL 02272-6694', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(26, 'Eric Luettgen Sr.', '1-757-807-1290', 'urenner@turcotte.com', '$2y$10$d.nS1SfMtGyAwd91IuyxuurfBSWoJiUJVWMArKO7I6divJOpMqJwq', '854 Wehner Keys Suite 573\nAufderharport, MA 01583-2361', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(27, 'Coralie Koepp', '+1-240-528-7932', 'frussel@volkman.com', '$2y$10$/0DxcSLiXuyyZFUnQkM7MOGq3I2SY6zqk4/Z5U8zPLWd5clV/dd6C', '2162 Price Ranch\nLake Alexandria, KS 32105-8098', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(28, 'Twila Dickens', '1-484-623-9885', 'tziemann@gmail.com', '$2y$10$PCF7BPtpIS4rbeHhHQbS0eCkAMgJlP/T18RiukzjyVniivi.i7awm', '19201 Cummings Freeway\nPort Junius, WV 51448-7844', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(29, 'Prof. Jonathon Schumm I', '775.494.5762', 'ferne03@muller.com', '$2y$10$JK/F145HR8o8TxGJzmG7Meex8jbCz.eQ7Fnt.GvcVLxzn8Hvf1ePa', '803 Kelton Divide Suite 920\nMurraybury, NV 20367-3409', 1, '2022-11-22 06:31:53', '2022-11-22 06:31:53', NULL),
(30, 'Estelle Berge', '+17634281254', 'gaylord.jovanny@yahoo.com', '$2y$10$Is4SpHT.BbsjC9T13F.sCuHRKTXlviNrw5wSKg5XITSBQQTs2qxwO', '20437 Schneider Points\nQuigleyview, OK 33998-3405', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(31, 'Malinda Simonis', '651-741-6022', 'maria.homenick@yahoo.com', '$2y$10$aU4jBzCGsAvjGrBfJJFvIu9v475aggucf479lz8bH5f11R34jbVSW', '688 Florence Green\nLake Cecelia, NE 11847-7641', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(32, 'Ms. Alexandrine Kessler', '925.381.3494', 'thiel.carson@gmail.com', '$2y$10$iE869oGV8DVo06zX4oaMnuRZpEzR2.n11MtgUa/UuR1npsoBA9xvS', '2976 Hane Key Apt. 434\nYazminhaven, MT 83651', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(33, 'Dr. Aletha Kuhlman III', '731-745-1703', 'ferne.jerde@gmail.com', '$2y$10$hFJvY5W8Qs6JsN.By9v54Ov5S0qJyB15yJxlFWALneT61My1oVdtS', '1823 Theodore Skyway\nNorth Emile, MD 27691-8573', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(34, 'Dr. Myrl Goldner PhD', '+18624141763', 'giovani22@hotmail.com', '$2y$10$yQtTeNK5B0fLEOko8cjMjOzMdyAFS.qsz9ikUU.FBEl4kHdrMifum', '56779 O\'Hara Parkways Suite 801\nElliottshire, ID 53173', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(35, 'Dr. Kim Howell III', '352.997.6794', 'adeline.wunsch@gmail.com', '$2y$10$U5/N2eWpl6RFgAiB244GwuH70veOIdDhAY18FDBv5HzS4qCOJIog2', '8659 Abernathy Unions\nWalkerfurt, AZ 99546', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(36, 'Sherman Willms', '(913) 577-0782', 'omer.medhurst@keeling.com', '$2y$10$DAMw2UlOf91966QPNzqIUOby.9vO35IcP6o0x2piercj7e4BjwpDy', '44332 Nikolaus Row Apt. 136\nAlleneberg, GA 94304-9644', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(37, 'Nelle Langosh', '+1-269-242-1144', 'ljacobs@block.com', '$2y$10$TwwD7WZTT9TuhZ0RNzKTtuN2y5gYoctMe.PQpPOt3xygpeb4vQIW.', '66285 Heidenreich Roads\nEzequielmouth, NE 61259', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(38, 'Stephany Morar', '458-631-0639', 'lsanford@hotmail.com', '$2y$10$0aM9LLuFlk1UIkTPvVRp8eVzV4VvAl8qYFt.XFYNe2EDW1cqvNwke', '23027 Gibson Mountains Apt. 278\nMorissettebury, GA 88965-3835', 1, '2022-11-22 06:31:54', '2022-11-22 06:31:54', NULL),
(39, 'Prof. Gordon Emard Sr.', '(757) 709-4668', 'plockman@flatley.net', '$2y$10$pDThKdBwtkKR9.T9xwUWkORkcTdahWLJlMJDqfHVIkEcw84ptslDe', '94156 Terry Lodge Suite 535\nNew Joyceview, AR 93852-9914', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(40, 'Reilly Zulauf', '+16577065359', 'neal87@kihn.com', '$2y$10$hpS7HI.k01a.AHUF/vsVj.2eyXPPo8D6kgYwh.8zy1hlXDXXEIsZ6', '2567 Armando Estates\nHaleyhaven, MD 03604', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(41, 'Dejon Donnelly', '1-336-939-5449', 'corbin.harvey@hotmail.com', '$2y$10$flu3iZgCayYrrIeBsrJLR.fRnAdjWkgch/YY/ctRtfm6OigSeVxnS', '1770 Shad Canyon\nEast Groverbury, LA 22742-2339', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(42, 'Cecelia Turner', '(818) 308-0331', 'ubreitenberg@borer.org', '$2y$10$9NlJOHPCmfs72pMhqcQ2eulNS1zLTo1g8snoIvCbQQY8h7pMqYQaW', '98615 Renner Ports\nDibbertshire, NJ 67650', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(43, 'Edward Dickens PhD', '+1-667-679-5866', 'prohaska.keyshawn@yahoo.com', '$2y$10$EB0/ZIqkfSO5nJ2fndlzT.DEz16nQMPp14szS9TqAP16sUrRr3fW.', '8617 Witting Mews\nPort Biankahaven, NH 43263-1298', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(44, 'Mr. Dalton Dare V', '+18389078157', 'vidal.mccullough@yahoo.com', '$2y$10$1emQGthD222YvfjXq.gnluzPyOkvU/s0n5A84oKfonbH1Q7CoRewu', '82039 Camila Corners\nLake Enabury, NV 25771-3381', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(45, 'Ms. Sabryna Pfeffer IV', '+1.808.315.5897', 'pat58@gorczany.com', '$2y$10$ECvIub5FR5JWnANYbacWbOaWExd9RpQN3kVT6bO8h.Iu06A2e9Tly', '176 Schimmel Pine\nLake Milan, ID 27459-5006', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(46, 'Reva Johns', '970-259-0099', 'cathy24@yahoo.com', '$2y$10$W6jkEA6Fz6Z19967BU/0vORx4O9Z2BN0YTqfg8dxEXSNaskPuf5o6', '81047 Gay Greens Suite 346\nGusikowskitown, KS 62844-1276', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(47, 'Dr. Jerald Langworth IV', '719.997.0505', 'pharvey@gmail.com', '$2y$10$DKhBBf7gREEHFmhfqx2VzeEQ5gMY5jVE08ErYt0nO9Tn0cb09N1KG', '1887 Ernestine Throughway Suite 628\nPort Ramirotown, WI 17456-1174', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(48, 'Jake Pollich', '+1-872-867-2810', 'khessel@metz.com', '$2y$10$CgJyczOOboTuHAfuxTvP0udT.YjcN5SYbSFWSV58mMQNXlxTblItC', '255 Alexane Prairie\nNorth Abigale, ID 35987', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL),
(49, 'Golda Senger', '(740) 265-6474', 'lheathcote@rippin.com', '$2y$10$DjS76cnWzOwKJkNE7BZnk.ag7VuFANC8kysfe0CfhcfI5vmqkL5LK', '86558 Smith Orchard Apt. 446\nMillerhaven, DC 36303-2082', 1, '2022-11-22 06:31:55', '2022-11-22 06:31:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_17_133405_create_suppliers_table', 1),
(6, '2022_10_17_134317_create_customers_table', 1),
(7, '2022_10_17_134429_create_salesmen_table', 1),
(8, '2022_10_17_134458_create_payment_types_table', 1),
(9, '2022_10_17_134509_create_brands_table', 1),
(10, '2022_10_17_134605_create_sales_table', 1),
(11, '2022_10_17_140519_create_purchases_table', 1),
(12, '2022_10_17_144417_create_admins_table', 1),
(13, '2022_10_18_173155_create_products_table', 1),
(14, '2022_10_19_175426_add_deleted_at_to_customers_table', 1),
(15, '2022_10_20_130710_add_deleted_at_to_brands_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(14,2) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `imei_1`, `imei_2`, `model_no`, `product_code`, `qty`, `price`, `details`, `product_image`, `brand_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Reynolds PLC', '573349401043201', '099814099973121', '.', '|', 1669120318, 999.99, 'Culpa odio in rerum vitae ipsam. Ut dolore aut consectetur aut eius omnis minima. Omnis voluptatem accusantium nam vero accusamus et id quos. Deleniti aut ut laborum libero.', 'https://via.placeholder.com/640x480.png/00ff33?text=quis', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(2, 'Hoppe, Rolfson and Lemke', '190159149614319', '523630946643014', '8', ']', 1669120318, 999.99, 'Et omnis et et ea. Magni est ut ea magni laborum ut. Qui harum neque eaque voluptatem omnis atque saepe et.', 'https://via.placeholder.com/640x480.png/00aabb?text=eveniet', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(3, 'Crooks, Murazik and Glover', '166466551098166', '957236247170403', '1', '2', 1669120318, 999.99, 'Ea et sit provident inventore. Quo odit deserunt sed exercitationem at quasi est. Quibusdam dicta ex optio sed eligendi quis architecto. Velit commodi iste maxime aut minima explicabo voluptatem.', 'https://via.placeholder.com/640x480.png/003366?text=ab', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(4, 'Predovic, Ruecker and Baumbach', '104976283931398', '403883723489037', 'T', '6', 1669120318, 999.99, 'Perspiciatis soluta sint commodi nihil similique. Reiciendis non est est assumenda quia. Quibusdam quibusdam assumenda itaque ad facilis aut dolor odit.', 'https://via.placeholder.com/640x480.png/00ffff?text=ut', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(5, 'Robel Group', '506880611625868', '740855771416460', 'N', '2', 1669120318, 999.99, 'Voluptatem minima minima consequuntur nemo. Aut non suscipit suscipit est facere perferendis eos aut. Ducimus fugit qui odit et voluptatem.', 'https://via.placeholder.com/640x480.png/006666?text=ut', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(6, 'Balistreri Inc', '965915127495838', '417847059438391', 'N', '4', 1669120318, 999.99, 'Pariatur hic fuga dolorum est qui enim. Sit quia modi quia ut rem fuga ut magnam.', 'https://via.placeholder.com/640x480.png/00cc11?text=aspernatur', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(7, 'Koch, Daniel and Padberg', '844015150324315', '935979232825252', '|', ']', 1669120318, 999.99, 'Quam reiciendis sit id. Voluptatem sed cupiditate nemo sint qui reprehenderit sit. Eveniet et delectus rerum totam eos ullam. Quia totam sed consequatur.', 'https://via.placeholder.com/640x480.png/0077bb?text=quis', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(8, 'Jerde-Ortiz', '718043684108213', '643142856351799', '9', '%', 1669120318, 999.99, 'Sint aliquam sed vero omnis qui quas. Consequatur pariatur voluptatibus reprehenderit dolorem unde. Tempore dolore doloribus illum debitis ut ducimus.', 'https://via.placeholder.com/640x480.png/006666?text=in', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(9, 'Bogan, Pacocha and Rempel', '924735673657965', '034915467450036', 'O', '7', 1669120318, 999.99, 'Voluptas aut aut consequatur est repellat placeat ab. Vel quisquam earum nisi eius eaque quaerat. Optio odio aspernatur animi facilis voluptatem ut nisi repudiandae.', 'https://via.placeholder.com/640x480.png/005588?text=consequatur', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(10, 'Fisher Group', '995719096744190', '093156309983318', 'u', '=', 1669120318, 999.99, 'Blanditiis tempora laborum vero quam. Nemo tenetur labore animi necessitatibus aut nostrum vitae. Qui molestias qui ex ut. Et facere a qui id. Quo iste necessitatibus velit ipsa ipsa hic ipsum eos.', 'https://via.placeholder.com/640x480.png/006655?text=hic', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(11, 'Davis and Sons', '961068451295889', '752835473823614', '6', 'Y', 1669120318, 999.99, 'Sit beatae voluptatibus velit enim atque aperiam. Neque et delectus veniam voluptatum. Vel itaque illo odit ut dolorem voluptatum assumenda excepturi.', 'https://via.placeholder.com/640x480.png/0099cc?text=dolores', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(12, 'Schulist-Dickens', '886728040352119', '364025026367240', '7', 'Z', 1669120318, 999.99, 'Architecto aspernatur animi dolores molestiae nam et nemo. Placeat blanditiis quae qui quos id veritatis. Fugit quibusdam quidem natus suscipit odio eos.', 'https://via.placeholder.com/640x480.png/00ee33?text=rem', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(13, 'Ritchie-Hoppe', '180367993770606', '441364577376012', 'd', 'h', 1669120318, 999.99, 'Aut rerum ex explicabo harum. Pariatur nulla consequatur aut. Unde est et et qui.', 'https://via.placeholder.com/640x480.png/00ee22?text=impedit', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(14, 'Ward, Tillman and Thompson', '533816796594526', '583003214272832', 'F', 'N', 1669120318, 999.99, 'Quidem beatae quis sapiente voluptate. Commodi animi saepe perspiciatis et culpa et eos. Odit commodi pariatur quasi cum.', 'https://via.placeholder.com/640x480.png/006633?text=dolorem', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(15, 'Tromp, Stark and Murphy', '159111291862203', '851418534435528', '8', 'G', 1669120318, 999.99, 'Facilis quas reprehenderit molestiae nam totam magnam. Et et eos quaerat qui ab. Illum minima eos quisquam repudiandae esse ducimus similique rerum.', 'https://via.placeholder.com/640x480.png/0077ff?text=voluptatibus', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(16, 'Fisher and Sons', '555917079696401', '724680238461325', '>', '+', 1669120318, 999.99, 'Molestias quae voluptatem ut. Dolor neque dolor nemo eius repudiandae nulla. Debitis quia et libero sint autem vitae porro. Dicta provident aliquam et animi numquam et.', 'https://via.placeholder.com/640x480.png/0088ff?text=voluptate', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(17, 'Smith-Hansen', '270631733582477', '134357839568089', 'r', '?', 1669120318, 999.99, 'Exercitationem deleniti quia magni commodi. Rem eveniet sed quia laboriosam. Accusantium dolores exercitationem minus. Voluptas quia sint nemo porro et. Quo enim ipsa corrupti et.', 'https://via.placeholder.com/640x480.png/0022aa?text=veritatis', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(18, 'Donnelly, Kilback and Mayer', '060383156485895', '629282277094392', 'P', '\"', 1669120318, 999.99, 'Quasi et vitae voluptas quo sed assumenda. Sed velit nihil ea voluptas perspiciatis reprehenderit nostrum nobis.', 'https://via.placeholder.com/640x480.png/0066dd?text=ratione', 1, 1, NULL, '2022-11-22 06:31:58', '2022-11-22 06:31:58'),
(19, 'Huel-Hill', '339049556326428', '184174543770102', '{', 'c', 1669120319, 999.99, 'Modi minus id odit commodi natus temporibus. Quia ea dolores non quibusdam veritatis.', 'https://via.placeholder.com/640x480.png/00dd77?text=voluptatum', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(20, 'Rodriguez PLC', '944765583701013', '681007319830809', 'e', 'Z', 1669120319, 999.99, 'Doloremque dolore rem corrupti nam eius explicabo recusandae. Aut quod dolor asperiores veniam. Impedit repellendus cumque dicta aut.', 'https://via.placeholder.com/640x480.png/0044aa?text=saepe', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(21, 'Jacobs Inc', '751851013266090', '370764204608106', '|', 'H', 1669120319, 999.99, 'Voluptatum qui maxime dolorem vitae. Quia et cumque autem ut est.', 'https://via.placeholder.com/640x480.png/00ff77?text=nisi', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(22, 'Feest, Kunde and Schneider', '011700095884682', '232237042088961', '=', 'z', 1669120319, 999.99, 'Consequatur magni dolor vero eos nemo qui et laudantium. Adipisci animi laudantium magni nulla. Corporis omnis placeat iusto error qui ratione. Voluptas recusandae numquam quae sed.', 'https://via.placeholder.com/640x480.png/00aadd?text=ea', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(23, 'Corkery-Pouros', '382916496184560', '217591257954740', 'h', '\'', 1669120319, 999.99, 'Qui minus quisquam eius rerum consequatur. Quia doloremque et voluptatem doloribus ut nostrum est. Totam eos consequatur illo facere recusandae officiis est at.', 'https://via.placeholder.com/640x480.png/005566?text=quo', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(24, 'Rau, Konopelski and Wilkinson', '160273484652325', '247647865227517', 'w', 'z', 1669120319, 999.99, 'Doloribus ut dolorum iure saepe quisquam maiores praesentium. Error laborum voluptatum non id officiis. Mollitia ullam eligendi cumque consequatur ut eum.', 'https://via.placeholder.com/640x480.png/00dd77?text=nobis', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(25, 'Wiegand-Haley', '743667402317547', '983982359379526', 'Q', 'q', 1669120319, 999.99, 'Id et repellendus qui ratione. Cupiditate cum deserunt eum quod. Culpa temporibus optio dolor atque fuga ipsa laboriosam velit. Et in consequuntur sit perferendis maiores saepe esse.', 'https://via.placeholder.com/640x480.png/003399?text=laborum', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(26, 'Bailey-Cassin', '249354045843150', '362979923789942', 'n', '@', 1669120319, 999.99, 'Sit dolorem ut consequuntur iusto nihil. Modi voluptatum eum voluptatem est maiores maiores. Odit suscipit animi modi eos.', 'https://via.placeholder.com/640x480.png/0022cc?text=dolorum', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(27, 'Connelly, Fay and Cremin', '998682165832956', '607283856041008', 'n', 'd', 1669120319, 999.99, 'Accusantium quo tenetur aut aspernatur numquam fugit natus quasi. Vero voluptas voluptatum sit repellat amet iure.', 'https://via.placeholder.com/640x480.png/003355?text=quisquam', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(28, 'Zulauf, Friesen and Towne', '174575629420549', '425740772544357', 'K', '8', 1669120319, 999.99, 'Ipsam voluptatibus suscipit dicta odio. Sint quo voluptates est alias. Iusto molestiae facilis perspiciatis qui vel nemo molestiae.', 'https://via.placeholder.com/640x480.png/00cc55?text=rerum', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(29, 'Lockman-Reichert', '039715396245241', '273254142131997', '2', '\'', 1669120319, 999.99, 'Cumque quos autem nesciunt expedita odit. Tempora voluptas ad dolor laudantium.', 'https://via.placeholder.com/640x480.png/00cc22?text=fugiat', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(30, 'Rau, Donnelly and Bartoletti', '620217844950097', '731904377628630', 'a', 'b', 1669120319, 999.99, 'Cum quo aliquid vel nostrum. Ut iste voluptatem quia eligendi. Dolor voluptates delectus recusandae quasi explicabo itaque temporibus quasi.', 'https://via.placeholder.com/640x480.png/004411?text=sed', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(31, 'Hoppe Group', '044224450723840', '385706200950167', 'Q', 'c', 1669120319, 999.99, 'Autem corrupti tempore eius officia praesentium fugit. Omnis id veritatis earum nam qui consequatur. Ad atque expedita quia ratione.', 'https://via.placeholder.com/640x480.png/001133?text=ut', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(32, 'Schroeder-Treutel', '513702477107214', '283732112745233', 'a', '5', 1669120319, 999.99, 'Eaque vitae magni vel impedit recusandae officiis. Ea quia sit est consequatur. Quod dolorum iste blanditiis.', 'https://via.placeholder.com/640x480.png/0022ff?text=voluptates', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(33, 'Hodkiewicz and Sons', '461855564558756', '339773533912519', ',', 'g', 1669120319, 999.99, 'Voluptate tenetur enim natus in sit consequatur explicabo non. Nihil et error quam vel laudantium quas. Aut error modi dolore sit temporibus earum. Dolor eum voluptatem sed quis assumenda vel ex.', 'https://via.placeholder.com/640x480.png/0055ff?text=id', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(34, 'Fisher Inc', '505963657487475', '102553371189395', 'S', '9', 1669120319, 999.99, 'Sapiente nobis facere magnam consequatur quasi dolorem. Et delectus sapiente inventore id et voluptates commodi hic. Itaque nihil voluptas non soluta.', 'https://via.placeholder.com/640x480.png/008844?text=inventore', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(35, 'Yost Ltd', '473565545395576', '345652237919685', 'S', '+', 1669120319, 999.99, 'Velit est aliquid molestias ratione ut quia ad. Mollitia tempora molestiae voluptas voluptas incidunt. Nesciunt quod nesciunt harum provident voluptatem voluptas.', 'https://via.placeholder.com/640x480.png/00dd44?text=voluptas', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(36, 'Jacobson-Nienow', '624402339415725', '822065042113869', 'm', 'S', 1669120319, 999.99, 'Voluptatem ut assumenda sint et quam laboriosam. Optio molestiae quidem ut culpa. Tempore praesentium qui officia tempora quia qui. Sequi quia at eveniet consequatur nesciunt adipisci maiores.', 'https://via.placeholder.com/640x480.png/0099aa?text=tenetur', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(37, 'Russel Ltd', '816342589459536', '986460464961873', '<', 'r', 1669120319, 999.99, 'Alias omnis dolorem corporis magnam natus rem impedit. Iste voluptas ducimus quo alias.', 'https://via.placeholder.com/640x480.png/004400?text=pariatur', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(38, 'Larson-Luettgen', '759660926188826', '138061690086464', 'k', '+', 1669120319, 999.99, 'Doloribus consequatur ad fugit sed et. Quasi dolorem suscipit facilis magnam magnam et. Recusandae sapiente omnis et molestiae et. Eum eius consequatur quidem et.', 'https://via.placeholder.com/640x480.png/00ff55?text=sit', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(39, 'O\'Kon PLC', '904482874002915', '440842146200103', '~', '^', 1669120319, 999.99, 'Blanditiis nihil enim iure vel. Et itaque expedita dolorum exercitationem. Quos dicta doloremque fuga autem. Explicabo ut aliquam excepturi nihil error.', 'https://via.placeholder.com/640x480.png/005566?text=et', 1, 1, NULL, '2022-11-22 06:31:59', '2022-11-22 06:31:59'),
(40, 'Tillman-Olson', '266021555820765', '776084372902649', '[', 'd', 1669120320, 999.99, 'Minus consequatur quia quaerat hic est consectetur ut. Atque facere temporibus exercitationem quo. Cumque voluptates voluptatem placeat ut eaque sed. Animi quia ratione unde maxime odio sapiente.', 'https://via.placeholder.com/640x480.png/008855?text=quia', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(41, 'Carroll, Mertz and Schneider', '245161195555888', '787970867757273', 'H', 'W', 1669120320, 999.99, 'Cumque culpa aliquid aut et reprehenderit dolore qui. Perspiciatis et natus eos ut qui. Sed et in accusantium qui. Molestiae eveniet voluptatem tempore ullam corrupti quod qui.', 'https://via.placeholder.com/640x480.png/00aa66?text=dicta', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(42, 'Lemke, Leuschke and Daugherty', '954216195922313', '291376797749365', 'S', 'G', 1669120320, 999.99, 'Officia iure quas laudantium maxime. Nemo sed eos nesciunt dolorem. Aut beatae est error perferendis optio vel.', 'https://via.placeholder.com/640x480.png/00ddee?text=inventore', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(43, 'Turner-Barton', '649752611830657', '014931127751006', ',', 'C', 1669120320, 999.99, 'Qui dolorum accusamus explicabo nihil magni nobis. Voluptatibus ipsam necessitatibus est mollitia nobis atque. Quis modi modi hic fugiat incidunt quod.', 'https://via.placeholder.com/640x480.png/009955?text=illo', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(44, 'Lind-Wisoky', '034656124718239', '631642989505777', 'O', '!', 1669120320, 999.99, 'Debitis laborum vero et doloribus aut aliquam. Adipisci odio repellat minus eveniet quo. Est tenetur voluptate vero eius. Ut voluptatem quo qui est odio.', 'https://via.placeholder.com/640x480.png/0055dd?text=pariatur', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(45, 'Legros-Beatty', '445555701237204', '360866103193734', '$', '!', 1669120320, 999.99, 'Dicta consequatur est enim molestias laboriosam perferendis aut. Ut maxime soluta voluptatem molestiae. Nisi voluptate fuga explicabo et possimus vel ea. Quo at quis tenetur non aut voluptatem non.', 'https://via.placeholder.com/640x480.png/0022dd?text=enim', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(46, 'Sauer, Jones and Kerluke', '298200066865509', '994709827460977', '!', 'x', 1669120320, 999.99, 'Eaque qui ipsum quis magnam et voluptatem. Non at totam et et aut. Excepturi ab vel dolore ratione architecto facilis. Dolor sunt nemo pariatur omnis.', 'https://via.placeholder.com/640x480.png/0099cc?text=omnis', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(47, 'Powlowski Group', '942185838478980', '479449846569987', 'E', 'C', 1669120320, 999.99, 'Voluptas dolorem sunt dicta odit illo quibusdam architecto enim. Qui pariatur asperiores cupiditate quo. Placeat mollitia repudiandae et rem qui recusandae magni. Sed accusamus quisquam odio optio.', 'https://via.placeholder.com/640x480.png/007733?text=quisquam', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(48, 'Weissnat, Hintz and Lueilwitz', '117455726943398', '458236308334025', 'E', '!', 1669120320, 999.99, 'Ut consequatur quibusdam dolorum omnis. Qui nam aliquam delectus dolore. Et soluta accusantium assumenda minima ut praesentium.', 'https://via.placeholder.com/640x480.png/0000ff?text=iusto', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00'),
(49, 'Haley PLC', '482177221416665', '794898615801914', '2', 'x', 1669120320, 999.99, 'Nesciunt architecto et nostrum vel magni rem. Aut sit ut maxime iusto fugit illum pariatur. Nostrum est ad explicabo a. Totam rerum quis tenetur quasi perspiciatis architecto cum.', 'https://via.placeholder.com/640x480.png/00bb66?text=aut', 1, 1, NULL, '2022-11-22 06:32:00', '2022-11-22 06:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesmen`
--

CREATE TABLE `salesmen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesmen`
--
ALTER TABLE `salesmen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesmen`
--
ALTER TABLE `salesmen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);
--
-- Database: `passport`
--
CREATE DATABASE IF NOT EXISTS `passport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `passport`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'oZJNC1yEjwAykaDo8UWNnzDj2T1lyzSUQ2M9QgJV', NULL, 'http://localhost', 1, 0, 0, '2022-11-19 07:20:12', '2022-11-19 07:20:12'),
(2, NULL, 'Laravel Password Grant Client', 'b8Eyoo5EkqH9qaSiIOWYYCSVnq8TWmd7xleavqNm', 'users', 'http://localhost', 0, 1, 0, '2022-11-19 07:20:12', '2022-11-19 07:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-19 07:20:12', '2022-11-19 07:20:12');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"college_project\",\"table\":\"customers\"},{\"db\":\"college_project\",\"table\":\"foods\"},{\"db\":\"passport\",\"table\":\"oauth_clients\"},{\"db\":\"passport\",\"table\":\"oauth_auth_codes\"},{\"db\":\"passport\",\"table\":\"oauth_access_tokens\"},{\"db\":\"mobile_shop\",\"table\":\"payment_types\"},{\"db\":\"mobile_shop\",\"table\":\"password_resets\"},{\"db\":\"mobile_shop\",\"table\":\"migrations\"},{\"db\":\"mobile_shop\",\"table\":\"failed_jobs\"},{\"db\":\"mobile_shop\",\"table\":\"customers\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'mobile_shop', 'brands', '{\"sorted_col\":\"`brands`.`id` ASC\"}', '2022-10-20 15:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-23 15:22:32', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `root`
--
CREATE DATABASE IF NOT EXISTS `root` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `root`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
