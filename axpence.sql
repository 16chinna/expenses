-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 02:42 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axpence`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(3) NOT NULL,
  `name` varchar(300) NOT NULL,
  `discription` varchar(600) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `name`, `discription`, `userid`) VALUES
(2, 'fuel', 'testing fuel', 1),
(3, 'grocery', 'grocery description testing', 1),
(4, 'social service', 'social service testing', 1),
(5, 'food1', 'food testing', 1),
(6, 'fuell', 'fuel description', 2),
(7, 'food', 'food discription', 2),
(8, 'food', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `chart_data_column`
--

CREATE TABLE `chart_data_column` (
  `month` varchar(10) NOT NULL,
  `sale` int(3) NOT NULL,
  `profit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chart_data_column`
--

INSERT INTO `chart_data_column` (`month`, `sale`, `profit`) VALUES
('Jan', 300, 150),
('Feb', 200, 130),
('Mar', 300, 200),
('April', 400, 300),
('May', 300, 200),
('Jun', 200, 100),
('July', 200, 150);

-- --------------------------------------------------------

--
-- Table structure for table `expence`
--

CREATE TABLE `expence` (
  `exid` int(3) NOT NULL,
  `catid` int(3) NOT NULL,
  `date` varchar(30) NOT NULL,
  `amount` varchar(110) NOT NULL,
  `discription` text NOT NULL,
  `image` varchar(20) NOT NULL,
  `status` varchar(40) NOT NULL,
  `ramain` varchar(80) NOT NULL DEFAULT '0',
  `due_date` varchar(50) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expence`
--

INSERT INTO `expence` (`exid`, `catid`, `date`, `amount`, `discription`, `image`, `status`, `ramain`, `due_date`, `userid`) VALUES
(4, 2, '2018-03-09', '225', 'grocery description testing', '96887.jpg', 'complete', '', '', 1),
(6, 3, '2019-03-10', '300', 'grocery  teting expence', '2.jpg', 'complete', '', '', 1),
(7, 2, '2019-03-16', '200', 'teting fuel payment ', 'Nozzle-960x409.jpg', 'complete', '', '', 1),
(8, 4, '2019-03-23', '500', 'social service testing', 'neha.jpeg', 'pending', '300', '2019-03-16', 1),
(9, 5, '2019-03-22', '1500', 'testing', '1-1.jpg', 'complete', '', '', 1),
(10, 6, '2019-03-20', '200', 'fuel 80 feet road', 'Chrysanthemum.jpg', 'pending', '100', '2019-03-30', 2),
(11, 8, '2019-03-09', '200', 'ioplkio', 'Penguins.jpg', 'complete', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(3) NOT NULL,
  `type` varchar(225) NOT NULL,
  `money` varchar(40) NOT NULL,
  `limitex` varchar(100) NOT NULL,
  `limitend` varchar(100) NOT NULL,
  `remain` varchar(300) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `type`, `money`, `limitex`, `limitend`, `remain`, `userid`) VALUES
(4, 'salary', '60000', '10000', '9800', '59800', 3);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(3, 'vesu', 'vesu@gmail.com', '7485966589', '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `expence`
--
ALTER TABLE `expence`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expence`
--
ALTER TABLE `expence`
  MODIFY `exid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
