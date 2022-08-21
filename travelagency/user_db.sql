-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 04:47 PM
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
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `Place` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `cost` bigint(8) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `Place`, `description`, `cost`, `images`) VALUES
(1, 'Dubai', '3 NIGHTS | 4 DAYS', 50000, 'Dubai.jpg'),
(2, 'Los Angeles', '5 NIGHTS | 6 DAYS', 70000, 'la.jpg'),
(3, 'Thailand', '6 NIGHTS | 7 DAYS', 20000, 'th.jpg'),
(4, 'Maldives', '3 NIGHTS | 4 DAYS', 45000, 'Maldives.jpg'),
(5, 'Singapore', '4 NIGHTS | 5 DAYS', 55000, 'singapore.jpg'),
(6, 'Australia', '4 NIGHTS | 5 DAYS', 55000, 'abc.jpg'),
(7, 'Bali', '2 Night | 3 Days', 60000, 'bali.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `res_id` int(11) NOT NULL,
  `res_date` date NOT NULL,
  `res_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`res_id`, `res_date`, `res_name`) VALUES
(1, '2022-08-30', 'hari');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(8, 'Enu mhjn', 'enu@gmail.com', 'enu', 'user'),
(9, 'enima', 'enima@gmail.com', '18e56cc266d46439149db1a0c8698221', 'user'),
(12, 'swostika', 'test@gmail.com', 'd00f5d5217896fb7fd601412cb890830', 'user'),
(13, 'nova', 'nova@mail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 'user'),
(14, 'inima', 'admin@admin.com', '1844156d4166d94387f1a4ad031ca5fa', 'user'),
(15, 'indra', 'indra@gmail.com', 'e24f6e3ce19ee0728ff1c443e4ff488d', 'user'),
(16, 'admin', 'admin@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
