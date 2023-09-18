-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 05:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tritech-lead-mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_table`
--

CREATE TABLE `campaign_table` (
  `id` int(11) NOT NULL,
  `campaignName` varchar(255) NOT NULL,
  `budget` int(10) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign_table`
--

INSERT INTO `campaign_table` (`id`, `campaignName`, `budget`, `type`) VALUES
(1, 'Christmas Offer', 45000, 'Leaflet'),
(2, 'Seasonal Offers', 40000, 'Leaflet'),
(3, 'Annual Charity', 22000, 'Charity and Donation'),
(6, 'New offer', 75000, 'Youtube Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`id`, `customerName`, `contact`, `email`, `timestamp`) VALUES
(1, 'Naveendra Danushan', 712065459, 'naviya@gmail.com', '2022-09-15 14:55:10.528610'),
(2, 'Vinod', 714565465, 'vinod@gmail.com', '2022-09-15 14:54:49.064826'),
(3, 'Yohan', 754786415, 'yohan@gmail.com', '2022-09-15 14:55:03.432696');

-- --------------------------------------------------------

--
-- Table structure for table `lead_table`
--

CREATE TABLE `lead_table` (
  `id` int(11) NOT NULL,
  `leadName` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_table`
--

INSERT INTO `lead_table` (`id`, `leadName`, `contact`, `email`, `status`) VALUES
(1, 'Ruchira B', 712046598, 'ruchira@gmail.com', 'Consideration'),
(2, 'Eshitha', 712015465, 'eshitha@gmail.com', 'Follow up'),
(3, 'Yohan', 712015465, 'yohan@gmail.com', 'Not Interested'),
(4, 'Vinod', 78263212, 'vinod@gmail.com', 'Consideration'),
(5, 'Naveendra', 715465489, 'naveendra@gmail.com', 'Interested');

-- --------------------------------------------------------

--
-- Table structure for table `salesman_table`
--

CREATE TABLE `salesman_table` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesman_table`
--

INSERT INTO `salesman_table` (`id`, `name`, `contact`, `email`) VALUES
(1, 'Eshitha S', 786762534, 'eshitha@gmail.com'),
(2, 'Naveendra', 754656595, 'nav@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `username`, `password`, `usertype`) VALUES
(1, 'Ruchira B', 'Ruchira', '123', 'Admin'),
(2, 'Naveendra', 'naveendra', '123', 'Admin'),
(3, 'Eshitha S', 'eshitha', '123', 'Admin'),
(4, 'Yohan', 'yohan', '123', 'Admin'),
(5, 'Vinod', 'vinod', '123', 'Admin'),
(6, 'user', 'newuser', '123', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaign_table`
--
ALTER TABLE `campaign_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_table`
--
ALTER TABLE `lead_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesman_table`
--
ALTER TABLE `salesman_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaign_table`
--
ALTER TABLE `campaign_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lead_table`
--
ALTER TABLE `lead_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salesman_table`
--
ALTER TABLE `salesman_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
