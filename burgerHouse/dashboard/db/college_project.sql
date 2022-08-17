-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 08:47 AM
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
-- Database: `college_project`
--

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
(46, 'customer', '664593e579231d8b14f77c9efc6761cd', 'customer@help.com', '0154878515', '43242', 1);

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
  `sold_out` varchar(100) NOT NULL,
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
(48, 'Burger 6', '', '62fa80e6d72d5_1660584166.png', '60', '36', '50', '', 1);

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
(113, 'Mark', '0154878515', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Test address', '155.00', 'Delivered');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
