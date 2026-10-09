-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 07:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhagoweyne_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `age` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_added` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `age`, `sex`, `address`, `city`, `phone`, `date_added`) VALUES
(3, 'abdi', '78', 'Male', 'halane', 'Borama', '098765', '2025-05-10'),
(4, 'apdiwasac', '33', 'Male', 'halane', 'Hargeisa', '789777', '2025-05-13'),
(5, 'abdi', '55', 'Male', 'halane', 'Hargeisa', '234567', '2025-05-13'),
(6, 'Khadar Ahmed', '28', 'Male', 'Hodan', 'Mogadishu', '0612345678', '2025-06-01'),
(7, 'Asha Ali', '34', 'Female', 'Iftin', 'Borama', '0634567890', '2025-06-01'),
(8, 'Mohamed Yusuf', '40', 'Male', 'Hargeysa Road', 'Hargeisa', '0659876543', '2025-06-01'),
(9, 'Nasteexo Hassan', '25', 'Female', 'Gacan Libaax', 'Hargeisa', '0681122334', '2025-06-01'),
(10, 'Abdirahman Muse', '30', 'Male', 'Wadajir', 'Mogadishu', '0623456789', '2025-06-01'),
(11, 'Fadumo Omar', '29', 'Female', 'Shaqaalaha', 'Burao', '0611122233', '2025-06-01'),
(12, 'Liban Abdi', '35', 'Male', 'Jidka Afgooye', 'Mogadishu', '0699988776', '2025-06-01'),
(13, 'Ruqiya Abshir', '22', 'Female', 'Degmada 26ka', 'Borama', '0634433221', '2025-06-01'),
(14, 'Yusuf Hassan', '31', 'Male', 'KM4', 'Mogadishu', '0616655443', '2025-06-01'),
(15, 'Hodan Mohamed', '27', 'Female', 'Sha’ab Area', 'Garowe', '0647788990', '2025-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(252) NOT NULL,
  `age` varchar(252) NOT NULL,
  `gender` varchar(252) NOT NULL,
  `phone` varchar(252) NOT NULL,
  `shift` varchar(252) NOT NULL,
  `part` varchar(252) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `age`, `gender`, `phone`, `shift`, `part`) VALUES
(1, 'abdirahim', '66', 'Male', '0987654', 'Morning', 'Cashier'),
(3, 'yuha', '99', 'Male', '09876', 'Evening', 'Cashier'),
(4, 'Khadar Yusuf', '29', 'Male', '0612345678', 'Morning', 'Cashier'),
(5, 'Asha Ali', '32', 'Female', '0634567890', 'Evening', 'Stock Manager'),
(6, 'Mohamed Abdi', '45', 'Male', '0659876543', 'Morning', 'Supervisor'),
(7, 'Nasteexo Ahmed', '27', 'Female', '0681122334', 'Evening', 'Receptionist'),
(8, 'Abdirahman Omar', '38', 'Male', '0623456789', 'Morning', 'Delivery'),
(9, 'Fadumo Ismail', '30', 'Female', '0611122233', 'Evening', 'Inventory'),
(10, 'Liban Hassan', '36', 'Male', '0699988776', 'Morning', 'Cashier'),
(11, 'Ruqiya Mohamed', '25', 'Female', '0634433221', 'Evening', 'Support'),
(12, 'Yusuf Abdullahi', '40', 'Male', '0616655443', 'Morning', 'Stock Keeper'),
(13, 'Hodan Jama', '28', 'Female', '0647788990', 'Evening', 'Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_name` varchar(252) NOT NULL,
  `quantity` varchar(252) NOT NULL,
  `price` varchar(252) NOT NULL,
  `total_price` varchar(252) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_name`, `quantity`, `price`, `total_price`, `employee_id`) VALUES
(1, 'totti0', '7', '10009', '70063', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `phone` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`, `customer_name`, `payment_date`, `phone`, `salary`, `quantity`) VALUES
(1, 'Cash', 'waliid', '2025-05-16', '09876', 90.00, 90);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(252) NOT NULL,
  `category` varchar(252) NOT NULL,
  `price` varchar(252) NOT NULL,
  `instock` varchar(252) NOT NULL,
  `product_type` varchar(252) NOT NULL,
  `date` varchar(252) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`, `instock`, `product_type`, `date`) VALUES
(3, 'tottiii', 'hg', '32', '1', 'hjb', ''),
(5, 'Caano NIDO', 'Cunto', '15000', '50', 'Caanaha', ''),
(6, 'Bariis Basmati', 'Cunto', '22000', '30', 'Raashin', ''),
(7, 'Saliid Hayat', 'Cunto', '18000', '40', 'Saliid', ''),
(8, 'Cabitaan CocaCola', 'Cabitaan', '7000', '100', 'Cabitaan', ''),
(9, 'Biyo Maax', 'Cabitaan', '3000', '80', 'Biyo', ''),
(10, 'Bur Sita', 'Cunto', '12000', '60', 'Bur', ''),
(11, 'Shaah Lipton', 'Cunto', '9000', '90', 'Shaah', ''),
(12, 'Buskud Digestive', 'Macmacaan', '10000', '45', 'Buskud', ''),
(13, 'Sabuun Lux', 'Nadaafad', '5000', '70', 'Sabuun', ''),
(14, 'Daqiiq', 'Cunto', '11000', '65', 'Daqiiq', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `product_name` varchar(252) NOT NULL,
  `quantity` varchar(252) NOT NULL,
  `price` varchar(252) NOT NULL,
  `total_price` varchar(252) NOT NULL,
  `sales_date` varchar(252) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `product_name`, `quantity`, `price`, `total_price`, `sales_date`) VALUES
(2, 'totti', '90', '900', '81000', '2025-05-10'),
(3, 'Caano NIDO', '10', '15000', '150000', '2025-06-01'),
(4, 'Bariis Basmati', '5', '22000', '110000', '2025-06-01'),
(5, 'Saliid Hayat', '8', '18000', '144000', '2025-06-01'),
(6, 'Cabitaan CocaCola', '12', '7000', '84000', '2025-06-01'),
(7, 'Biyo Maax', '20', '3000', '60000', '2025-06-01'),
(8, 'Bur Sita', '7', '12000', '84000', '2025-06-01'),
(9, 'Shaah Lipton', '9', '9000', '81000', '2025-06-01'),
(10, 'Buskud Digestive', '6', '10000', '60000', '2025-06-01'),
(11, 'Sabuun Lux', '10', '5000', '50000', '2025-06-01'),
(12, 'Daqiiq', '4', '11000', '44000', '2025-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(252) NOT NULL,
  `supplier_phone` varchar(252) NOT NULL,
  `city` varchar(252) NOT NULL,
  `amount` varchar(252) NOT NULL,
  `customer_name` varchar(252) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_phone`, `city`, `amount`, `customer_name`) VALUES
(8, 'Abdullahi Company', '0612345678', 'Hargeisa', '1500', 'Khadar'),
(9, 'Sagal Supplies', '0634567890', 'Borama', '2200', 'Asha'),
(10, 'Golis Traders', '0623456789', 'Garowe', '3000', 'Mohamed'),
(11, 'Darwiish Import', '0659876543', 'Laascaanood', '1800', 'Nasteexo'),
(12, 'Waberi Services', '0681122334', 'Beledweyne', '2100', 'Abdirahman');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(252) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(252) NOT NULL,
  `gender` varchar(252) NOT NULL,
  `role` varchar(252) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `full_name`, `password`, `gender`, `role`) VALUES
(7, 'admin', 'abdirahim', '123', 'male', 'admin'),
(9, 'manager', NULL, '123', 'male', 'Manager'),
(11, 'admin1', NULL, '123', 'Male', 'Admin'),
(12, 'abdirahim', NULL, '123', 'Male', 'Admin'),
(13, 'abdirahim', NULL, '123', 'Male', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
