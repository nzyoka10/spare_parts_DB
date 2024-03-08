-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 02:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spare_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carmodels`
--

CREATE TABLE `carmodels` (
  `ModelID` int(11) NOT NULL,
  `ModelName` varchar(100) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `EngineType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carmodels`
--

INSERT INTO `carmodels` (`ModelID`, `ModelName`, `Year`, `EngineType`) VALUES
(1, 'Camry', 2020, 'Gasoline'),
(2, 'Corolla', 2019, 'Hybrid'),
(3, 'RAV4', 2021, 'Electric'),
(4, 'Highlander', 2018, 'Gasoline'),
(5, 'Prius', 2017, 'Hybrid');

-- --------------------------------------------------------

--
-- Table structure for table `carparts`
--

CREATE TABLE `carparts` (
  `CarModelID` int(11) DEFAULT NULL,
  `PartID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `PartID` int(11) NOT NULL,
  `PartName` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`PartID`, `PartName`, `Description`, `Price`) VALUES
(101, 'Brake Pad', 'Replacement brake pad for Toyota cars', 50.00),
(102, 'Oil Filter', 'Oil filter suitable for Toyota engines', 10.00),
(103, 'Headlight Assembly', 'Complete headlight assembly', 150.00),
(104, 'Spark Plug', 'High-quality spark plug for Toyota engines', 7.50),
(105, 'Air Filter', 'Air filter designed for Toyota vehicles', 15.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carmodels`
--
ALTER TABLE `carmodels`
  ADD PRIMARY KEY (`ModelID`);

--
-- Indexes for table `carparts`
--
ALTER TABLE `carparts`
  ADD KEY `CarModelID` (`CarModelID`),
  ADD KEY `PartID` (`PartID`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`PartID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carparts`
--
ALTER TABLE `carparts`
  ADD CONSTRAINT `carparts_ibfk_1` FOREIGN KEY (`CarModelID`) REFERENCES `carmodels` (`ModelID`),
  ADD CONSTRAINT `carparts_ibfk_2` FOREIGN KEY (`PartID`) REFERENCES `parts` (`PartID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
