-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 08, 2022 at 01:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`id`, `name`) VALUES
(1, 'cast 1'),
(2, 'cast 2'),
(3, 'cast 3'),
(4, 'cast 4'),
(5, 'cast 5'),
(6, 'cast 6');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'cate 1'),
(2, 'cate 2'),
(3, 'cate 3'),
(4, 'cate 4'),
(5, 'cate 5'),
(6, 'cate 6');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `name`) VALUES
(1, 'dir 1'),
(2, 'dir 2'),
(3, 'dir 3'),
(4, 'dir 4');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `directorid` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `categoryid`, `created_at`, `description`, `directorid`, `duration`, `name`, `thumbnail`, `updated_at`, `url`, `view`) VALUES
(1, 1, '2022-01-06 08:17:53', 'phim 1 desc', 1, 100, 'phim 1', 'https://i.ibb.co/N3ZpTnD/phim1.jpg', '2022-01-06 08:17:53', 'adjiaw', 10000),
(2, 2, '2022-01-06 08:17:53', 'phim 2 desc', 3, 100, 'phim 2 ', 'https://i.ibb.co/BLvhf1n/phim2.jpg', '2022-01-06 08:17:53', 'ooakowd', 90000),
(3, 1, '2022-01-06 08:41:00', 'phim 3 desc', 2, 100, 'phim 3', 'https://i.ibb.co/1mLWKzw/phim3.jpg', '2022-01-06 08:41:00', 'kjaiwdji', 100000),
(4, 1, '2022-01-06 08:41:00', 'phim 4 desc', 3, 40, 'phim 4', 'https://i.ibb.co/qrzJ37m/phim4.jpg', '2022-01-06 08:41:00', 'adawdawdawd', 50000),
(5, 2, '2022-01-06 08:43:01', 'phim 5 desc', 4, 60, 'phim 5', 'https://i.ibb.co/tMKVzqZ/phim5.jpg', '2022-01-06 08:43:01', 'hadhiawdawd', 100000),
(6, 3, '2022-01-06 08:43:01', 'phim 6 desc', 2, 40, 'phim 6 ', 'https://i.ibb.co/j61D3vw/phim6.jpg', '2022-01-06 08:43:01', 'adwdawdawdawd', 1000),
(7, 3, '2022-01-06 08:44:30', 'phim 7 desc', 3, 70, 'phim 7', 'https://i.ibb.co/qW4LR3j/phim7.jpg', '2022-01-06 08:44:30', 'dakwodkaowd', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE `movie_cast` (
  `movieid` int(11) NOT NULL,
  `castid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`movieid`, `castid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 6),
(3, 3),
(3, 5),
(5, 4),
(5, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKeryblahh21x5l6f0nfsu8v0n7` (`categoryid`),
  ADD KEY `FKq867msy9fpdbt7odcgrl16jx3` (`directorid`);

--
-- Indexes for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD PRIMARY KEY (`movieid`,`castid`),
  ADD KEY `FKierla4vj0rc5myy2xkperpwjg` (`castid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `FKeryblahh21x5l6f0nfsu8v0n7` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKq867msy9fpdbt7odcgrl16jx3` FOREIGN KEY (`directorid`) REFERENCES `director` (`id`);

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `FK3rie7r8vlrhdcqy99y67cafmy` FOREIGN KEY (`movieid`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `FKierla4vj0rc5myy2xkperpwjg` FOREIGN KEY (`castid`) REFERENCES `cast` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
