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
(1, 'Laptop & Laptop chargers', 'SAMSUNG Galaxy Book 2 Intel Core i5 12th Gen 1235U - (8 GB/512 GB SSD/Windows 11 Home) NP550 Thin and Light Laptop', 42000, './assets/products/10.png', '2020-03-28 11:08:57'), -- NOW()
(2, 'Laptop & Laptop chargers', 'Lappy Power 85W Laptop Adapter/Charger 20V/4.25A Apple Magsafe 2, MacBook Pro (15-inch 2015) 85 W Adapter  (Power Cord Included)', 1500, './assets/products/13.png', '2020-03-28 11:08:57'),
(3, ' Hostel', 'Ladies Hostel', 4500, './assets/products/14.png', '2020-03-28 11:08:57'),
(4, ' Hostel', 'Sharda Ladies Hostel(Sukhsagar Nagar)', 7000, './assets/products/15.png', '2020-03-28 11:08:57'),
(5, 'Laptop & Laptop chargers', 'HP AMD Ryzen 5 Hexa Core 5500U - (8 GB/512 GB SSD/Windows 11 Home) 15s- eq2144au Thin and Light Laptop', 35000, './assets/products/12.png', '2020-03-28 11:08:57'),
(6, ' Stationary', 'Swarnalekha HARDY Pen 2 Pcs. & 2 Pcs. Extra Refill, Mat...', 250, './assets/products/5.png', '2020-03-28 11:08:57'),
(7, 'Electronics Components', 'ESP8266(Node MCU)', 300, './assets/products/3.png', '2020-03-28 11:08:57'),
(8, 'Laptop & Laptop Chargers', '90 W Adapter', 700, './assets/products/4.png', '2020-03-28 11:08:57'),
(9, ' Hostel', 'BOYS Hostel(Chintamani Nagar)', 9000, './assets/products/16.jpeg', '2020-03-28 11:08:57'),
(10, ' Stationary ', 'Drafter', 1000, './assets/products/6.png', '2020-03-28 11:08:57'),
(11, 'Electronics Components', 'robotics gallery Ultrasonic Distance Sensor Module HC SR04 For Arduino uno Electronic Components', 200, './assets/products/8.png', '2020-03-28 11:08:57'),
(12, 'Laptop & Laptop Chargers border', 'ASUS Vivobook 15 Intel Core i3 11th Gen 1115G4', 25000, './assets/products/2.png', '2020-03-28 11:08:57');



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
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

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