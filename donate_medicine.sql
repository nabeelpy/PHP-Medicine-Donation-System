-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 04:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donate_medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `do_medicine` varchar(255) DEFAULT NULL,
  `do_date` date DEFAULT NULL,
  `do_manufacturer` varchar(255) DEFAULT NULL,
  `do_quantity` int(11) DEFAULT NULL,
  `do_city` varchar(255) DEFAULT NULL,
  `do_pharmacy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `do_medicine`, `do_date`, `do_manufacturer`, `do_quantity`, `do_city`, `do_pharmacy`) VALUES
(1, 'panadol', '2021-11-16', 'iphone', 50, 'multan', 'rashed pharmacy'),
(2, 'panadol', '2021-11-16', 'iphone', 50, 'multan', 'rashed pharmacy'),
(3, 'desprine', '2021-11-16', 'apple', 20, 'multan', 'ali pharmacy'),
(4, 'panadol', '2021-11-16', 'apple', 50, 'multan', 'rashed pharmacy'),
(5, 'panadol', '2021-11-17', 'iphone', 50, 'multan', 'rashed pharmacy'),
(6, 'panadol', '2021-11-18', 'iphone', 60, 'multan', 'ali pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `reciever`
--

CREATE TABLE `reciever` (
  `re_id` int(11) NOT NULL,
  `re_reciever` varchar(250) DEFAULT NULL,
  `re_number` int(11) DEFAULT NULL,
  `re_medicine` varchar(250) DEFAULT NULL,
  `re_date` date DEFAULT NULL,
  `re_manufacturer` varchar(250) DEFAULT NULL,
  `re_quantity` int(11) DEFAULT NULL,
  `re_city` varchar(250) DEFAULT NULL,
  `re_pharmacy` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reciever`
--

INSERT INTO `reciever` (`re_id`, `re_reciever`, `re_number`, `re_medicine`, `re_date`, `re_manufacturer`, `re_quantity`, `re_city`, `re_pharmacy`) VALUES
(1, 'faiq', 2147483647, 'panadol', '2021-11-18', 'iphone', 50, 'multan', 'rashed pharmacy'),
(2, 'faiq', 2147483647, 'panadol', '2021-11-18', 'iphone', 50, 'multan', 'rashed pharmacy'),
(3, 'faiq', 2147483647, 'panadol', '2021-11-18', 'iphone', 50, 'multan', 'rashed pharmacy'),
(4, 'faiq', 2147483647, 'panadol', '2021-11-18', 'iphone', 50, 'multan', 'rashed pharmacy'),
(5, 'faiq', 2147483647, 'panadol', '2021-11-18', 'iphone', 50, 'multan', 'rashed pharmacy'),
(6, 'faiq', 2147483647, 'panadol', '2021-11-18', 'iphone', 50, 'multan', 'rashed pharmacy'),
(7, 'rizwan', 2147483647, 'desprine', '2021-11-16', 'apple', 5, 'multan', 'ali pharmacy'),
(8, 'faiq', 2147483647, 'panadol', '2021-11-25', 'iphone', 3, 'multan', 'rashed pharmacy'),
(9, 'faiq', 2147483647, 'panadol', '2021-11-25', 'iphone', 9, 'multan', 'rashed pharmacy'),
(10, 'rizwan', 2147483647, 'panadol', '2021-11-30', 'apple', 50, 'multan', 'rashed pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `signup_form`
--

CREATE TABLE `signup_form` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup_form`
--

INSERT INTO `signup_form` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Samra', 'Anwar', 'demo@gmail.com', '12345'),
(2, 'joni', 'ha', 'joni@gmail.com', '12345678'),
(3, 'mughees', 'ahmed', 'mughees@gmail.com', '12345678'),
(4, 'mughees', 'ahmed', 'mughees@gmail.com', '12345678'),
(5, 'mughees', 'lala', 'lala@gmail.com', '12345678'),
(6, 'hello', 'world', 'hello@gmail.com', '12345678'),
(7, 'faiq', 'ahmed', 'faiq70@gmail.com', 'bhailog'),
(8, 'nabeel', 'ahmed', 'nabeel.py@gmail.com', '12345678'),
(9, 'kashan', 'ahmed', 'kashan@gmail.com', '12345'),
(10, 'mohsin', 'ahmed', 'mohsin@gmail.com', '12345'),
(11, 'usman', 'ali', 'usman@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reciever`
--
ALTER TABLE `reciever`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `signup_form`
--
ALTER TABLE `signup_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reciever`
--
ALTER TABLE `reciever`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signup_form`
--
ALTER TABLE `signup_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
