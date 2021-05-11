-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 12:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logger`
--

-- --------------------------------------------------------

--
-- Table structure for table `logger_info`
--

CREATE TABLE `logger_info` (
  `ID` int(11) NOT NULL,
  `activity_date` varchar(30) NOT NULL,
  `start_time` varchar(25) NOT NULL,
  `end_time` varchar(25) NOT NULL,
  `time_used` int(11) NOT NULL,
  `Date_recorded` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logger_info`
--

INSERT INTO `logger_info` (`ID`, `activity_date`, `start_time`, `end_time`, `time_used`, `Date_recorded`) VALUES
(2, '20-10-03', '09:00', '10:30', 90, '2020-08-03'),
(3, '20-08-03', '12:00', '13:30', 90, '2020-08-03'),
(4, '20-08-03', '10:45', '14:30', 225, '2020-08-03'),
(5, '19-04-03', '05:00', '06:30', 90, '2020-08-05'),
(6, '20-07-06', '13:30', '14:00', 30, '2020-08-05'),
(7, '20-08-06', '09:00', '10:30', 90, '2020-08-06'),
(8, '20-08-06', '04:55', '05:55', 60, '2020-08-06'),
(9, '20-08-06', '10:45', '14:25', 220, '2020-08-06'),
(10, '20-08-07', '03:00', '04:00', 60, '2020-08-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logger_info`
--
ALTER TABLE `logger_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logger_info`
--
ALTER TABLE `logger_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
