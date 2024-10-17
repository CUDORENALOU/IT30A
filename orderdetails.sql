-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 10:15 AM
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
-- Database: `cudoddl`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `ProductID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `UnitPrice` decimal(3,2) DEFAULT NULL,
  `Discount` decimal(3,2) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`ProductID`, `OrderID`, `Quantity`, `UnitPrice`, `Discount`, `StatusID`) VALUES
(1, 1, 5, 9.99, 0.10, 1),
(2, 2, 10, 9.99, 0.15, 1),
(3, 3, 7, 9.99, 0.05, 2),
(4, 4, 12, 9.99, 0.20, 2),
(5, 5, 8, 9.99, 0.08, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`ProductID`,`OrderID`),
  ADD KEY `OrderID` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
