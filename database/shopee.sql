-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'Samsung Galaxy S24 Ultra', 1299.00, './assets/products/1.jpg', '2024-05-05 18:08:57'), -- NOW()
(2, 'Samsung', 'Samsung Galaxy S24', 799.00, './assets/products/2.jpeg', '2024-05-05 18:08:57'),
(3, 'Redmi', 'Redmi Note 12 Pro+ 5G', 370.00, './assets/products/3.webp', '2024-05-05 18:08:57'),
(4, 'Redmi', 'Redmi Note 11 Pro+ 5G', 299.00, './assets/products/4.png', '2024-05-05 18:08:57'),
(5, 'Redmi', 'Redmi A3', 89.00, './assets/products/5.png', '2024-05-05 18:08:57'),
(6, 'Redmi', 'Redmi 13c', 120.00, './assets/products/6.png', '2024-05-05 18:08:57'),
(7, 'Redmi', 'Redmi 12 5G', 122.00, './assets/products/8.png', '2024-05-05 18:08:57'),
(8, 'Redmi', 'Redmi A1+', 89.00, './assets/products/10.png', '2024-05-05 18:08:57'),
(9, 'Samsung', 'Samsung Galaxy S23 ultra', 1199.00, './assets/products/11.jpeg', '2024-05-05 18:08:57'),
(10, 'Samsung', 'Samsung Galaxy S23', 799.00, './assets/products/12.jpg', '2024-05-05 18:08:57'),
(11, 'Apple', 'iPhone 15 pro', 999.00, './assets/products/13.jpeg', '2024-05-05 18:08:57'),
(12, 'Apple', 'iPhone 15', 799.00, './assets/products/14.jpeg', '2024-05-05 18:08:57'),
(13, 'Apple', 'iPhone 14 pro', 152.00, './assets/products/15.jpg', '2024-05-05 18:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Navoda', 'Chathurya', '2024-04-01 13:07:17'),
(2, 'Pawani', 'Uthpalawanna', '2024-05-01 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
