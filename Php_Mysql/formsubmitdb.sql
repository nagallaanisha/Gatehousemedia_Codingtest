-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2017 at 07:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formsubmitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `userdata_table`
--

CREATE TABLE `userdata_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phonenumber` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata_table`
--

INSERT INTO `userdata_table` (`id`, `name`, `phonenumber`) VALUES
(43, 'Anisha', 4846803762),
(44, 'John', 9497849548),
(45, 'Naveen', 9497849548);

-- --------------------------------------------------------

--
-- Table structure for table `useremail_table`
--

CREATE TABLE `useremail_table` (
  `e_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useremail_table`
--

INSERT INTO `useremail_table` (`e_id`, `id`, `email`) VALUES
(42, 43, 'nagalla.anisha1989@gmail.com'),
(43, 44, 'john@gmail.com'),
(44, 45, 'nava@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdata_table`
--
ALTER TABLE `userdata_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useremail_table`
--
ALTER TABLE `useremail_table`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userdata_table`
--
ALTER TABLE `userdata_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `useremail_table`
--
ALTER TABLE `useremail_table`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `useremail_table`
--
ALTER TABLE `useremail_table`
  ADD CONSTRAINT `useremail_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `userdata_table` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
