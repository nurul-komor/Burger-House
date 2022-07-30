-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2022 at 08:58 AM
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
(2, 'admin', 'root1234', 'customer@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `phone`, `address`) VALUES
(36, 'Test Name', 'sadmanhossain96@gmail.com', '01860081978', 'lorem ipsum'),
(37, 'customer', 'cusomter@gmail.com', '01860081845', 'Lorem Ipsum'),
(39, 'customer', 'cusomter@gmail.com', '01860081845', '97 Great Russell Street,London,United Kingdom'),
(40, 'Test Name', 'nurulkomor52@gmail.com', '01860081978', 'Khulshi,Chittagong');

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
(28, 'Burger 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62e3be4af0a18_1659092554.png', '60', '40', '70', '', 1),
(29, 'Burger 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62e3be677af97_1659092583.png', '40', '30', '60', '', 1),
(30, 'Burger 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62e3be780f778_1659092600.png', '60', '30', '80', '', 1),
(31, 'Burger 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62e3be8706479_1659092615.png', '160', '130', '50', '', 1),
(32, 'Burger 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62e3beaa73ebd_1659092650.png', '30', '25', '70', '', 1),
(34, 'Burger 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '62e3c23e313f5_1659093566.png', '', '35', '65', '', 1);

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
(24, 'XPLORE ASIA', '2022-07-07', '4', 'nurulkomor52@gmail.com', '00:00:00.000000');

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
(87, 'customer', 'Cusomter Name', 'Burger 6(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange', '190.00', 'Placed'),
(88, '', '', 'Burger 5(quantity:1 pcs)Burger 5(quantity:1 pcs)', '', '50.00', 'Placed'),
(89, 'Test Name', '01860081978', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'lorem ipsum', '155.00', 'Placed'),
(90, 'Test Name', '01860081978', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'lorem ipsum', '155.00', 'Placed'),
(91, 'Test Name', '01860081978', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', 'lorem ipsum', '155.00', 'Placed'),
(92, 'Test Name', '01860081978', 'Burger 2(quantity:1 pcs)', 'lorem ipsum', '30.00', 'Placed'),
(93, '', '', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', '', '155.00', 'Placed'),
(94, '', '', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', '', '155.00', 'Placed'),
(95, '', '', 'Burger 4(quantity:1 pcs)Burger 1(quantity:1 pcs)', '', '195.00', 'Placed'),
(96, '', '', 'Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', '', '155.00', 'Placed'),
(97, 'customer', '01860081845', 'Burger 4(quantity:0 pcs)Burger 5(quantity:0 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum', '155.00', 'Placed'),
(98, 'customer', '01860081845', '', 'Lorem Ipsum', '155.00', 'Placed'),
(99, 'customer', '01860081978', 'Burger 6(quantity:0 pcs)Burger 5(quantity:0 pcs)Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', 'Lorem Ipsum', '155.00', 'Placed'),
(100, 'customer', '01860081845', 'Burger 5(quantity:0 pcs)Burger 4(quantity:0 pcs)Burger 5(quantity:1 pcs)Burger 4(quantity:1 pcs)', '97 Great Russell Street,London,United Kingdom', '155.00', 'Placed'),
(101, 'customer', '01860081845', 'Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Placed'),
(102, 'customer', '01860081845', 'Burger 5(quantity:1 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Placed'),
(103, 'customer', '01860081845', 'Burger 5(quantity:6 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '795.00', 'Placed'),
(104, 'customer', '01860081845', 'Burger 5(quantity:1 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Placed'),
(105, 'customer', '01860081845', 'Burger 4(quantity:5 pcs)', '97 Great Russell Street,London,United Kingdom', '900.00', 'Placed'),
(106, 'customer', '01860081845', 'Burger 4(quantity:1 pcs)Burger 5(quantity:1 pcs)', '97 Great Russell Street,London,United Kingdom', '155.00', 'Placed'),
(107, 'customer', '01860081845', 'Burger 4(quantity:4 pcs)Burger 5(quantity:5 pcs)', '97 Great Russell Street,London,United Kingdom', '1165.00', 'Placed'),
(108, 'customer', '01860081845', 'Burger 5(quantity:5 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '670.00', 'Placed'),
(109, 'customer', '01860081845', 'Burger 6(quantity:6 pcs)Burger 4(quantity:4 pcs)', '97 Great Russell Street,London,United Kingdom', '765.00', 'Placed'),
(110, 'Test Name', '01860081978', 'Burger 4(quantity:1 pcs)', 'Khulshi,Chittagong', '130.00', 'Placed');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;