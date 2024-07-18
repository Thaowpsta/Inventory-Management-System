-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 08:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Description`, `Photo`, `Stock`) VALUES
(1, 'Product A', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-A.png', 12341),
(2, 'Product B', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-B.png', 42),
(3, 'Product C', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-C.png', 100),
(4, 'Product D', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-D.png', 155),
(5, 'Product E', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-E.png', 151),
(6, 'Product F', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-F-502x650.png', 100),
(7, 'Product G', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-G-502x650.png', 100),
(8, 'Product H', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-H-502x650.png', 100),
(9, 'Product I', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-I-502x650.png', 100),
(10, 'Product J', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-J-502x650.png', 130),
(11, 'Product K', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-K-502x650.png', 100),
(12, 'Product L', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-L-503x650.png', 100),
(13, 'Product M', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-M-503x650.png', 100),
(14, 'Product N', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-N-502x650.png', 100),
(15, 'Product O', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-O-503x650.png', 100),
(16, 'Product P', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-P-503x650.png', 100),
(17, 'Product Q', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-Q-502x650.png', 100),
(18, 'Product R', 'Product description generators leverage the power of artificial intelligence to churn out quality product descriptions in a matter of seconds', 'Printable-Letter-R-503x650.png', 100);

-- --------------------------------------------------------

--
-- Table structure for table `stock_request`
--

CREATE TABLE `stock_request` (
  `ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Warehouse_ID` int(11) NOT NULL,
  `Supervisor_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Status` enum('Pending','Approved','Rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_request`
--

INSERT INTO `stock_request` (`ID`, `Product_ID`, `Warehouse_ID`, `Supervisor_ID`, `Quantity`, `Status`) VALUES
(2, 1, 1, 2, 10, 'Approved'),
(3, 5, 2, 3, 20, 'Rejected'),
(4, 10, 3, 4, 30, 'Approved'),
(5, 2, 1, 2, 10, 'Approved'),
(6, 2, 1, 2, 12, 'Approved'),
(7, 1, 1, 2, 12321, 'Pending'),
(8, 1, 1, 2, 12321, 'Rejected'),
(9, 1, 1, 2, 12321, 'Approved'),
(10, 1, 1, 2, 12321, 'Pending'),
(11, 1, 1, 2, 12321, 'Pending'),
(12, 1, 1, 2, 12321, 'Pending'),
(13, 2, 1, 2, 13, 'Pending'),
(14, 3, 1, 2, 3545, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Type` enum('Admin','Supervisor') NOT NULL DEFAULT 'Supervisor',
  `Token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Email`, `Password`, `Phone`, `Status`, `Type`, `Token`) VALUES
(1, 'Admin@admin.com', '$2b$10$yT3Lxix4dz0c.VJhDHk5fuky1yKowNZoXUenqY0aVUK044qV9vhCq', '01010', 'Active', 'Admin', '8e6ce1ee341b'),
(2, 'Batool@gmail.com', '$2b$10$yT3Lxix4dz0c.VJhDHk5fuky1yKowNZoXUenqY0aVUK044qV9vhCq', '13142252', 'Active', 'Supervisor', '70bc3fa97a6bdc8c1e707a962ac803d3'),
(3, 'Ziad@Gmail.com', '$2b$10$YIt3G09Dc1CQqxGB1vums.Obu5hDp2Bh26.4qROqK3DNEiusqBDzS', '23432424', 'Active', 'Supervisor', '73b6de83e84f'),
(4, 'ALI@gmail.com', '$2b$10$Hd79xsDMR/nq16FrWyEodeFGVTB3DcYwqIuaduid/V7VPG57pVzoS', '2343242', 'Active', 'Supervisor', '529a2535dfa0'),
(5, 'Testosa@gmail.com', '$2b$10$YOrxXu5tdP6SVNFQHYRZ/uAIpm3RNdqa8lqqiORpRTbbto4pX7hIK', '324242342', 'Active', 'Supervisor', '876b0724f8c8'),
(6, 'besho@Gmail.com', '$2b$10$OBXRdT4U2qEdOuk3t4o7WeMi7MhJBa.gAWNDYz0HivRCuUWyDmn/a', '234234', 'Active', 'Supervisor', '40a4884731e8');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `Supervisor_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`ID`, `Name`, `Location`, `Status`, `Capacity`, `Supervisor_ID`) VALUES
(1, 'Batool\'s warehouse', 'Madinaty', 'Active', 100, 2),
(2, 'Ziad\'s warehouse', 'Nasrcity', 'Active', 1000, 3),
(3, 'Ali\'s warehouse', 'Fifth settlement', 'Active', 1000, 4),
(4, 'Testosa\'s warehouse', 'Newcairo', 'Active', 1, 5),
(5, 'Eden\'s warehouse', 'Giza', 'Active', 1000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_product`
--

CREATE TABLE `warehouse_product` (
  `Warehouse_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_product`
--

INSERT INTO `warehouse_product` (`Warehouse_ID`, `Product_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(3, 11),
(4, 12),
(4, 13),
(5, 14),
(5, 15),
(5, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stock_request`
--
ALTER TABLE `stock_request`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `stock_request_ibfk_1` (`Product_ID`),
  ADD KEY `stock_request_ibfk_2` (`Warehouse_ID`),
  ADD KEY `stock_request_ibfk_3` (`Supervisor_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `warehouse_ibfk_1` (`Supervisor_ID`);

--
-- Indexes for table `warehouse_product`
--
ALTER TABLE `warehouse_product`
  ADD PRIMARY KEY (`Warehouse_ID`,`Product_ID`),
  ADD KEY `warehouse_product_ibfk_2` (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stock_request`
--
ALTER TABLE `stock_request`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`Supervisor_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouse_product`
--
ALTER TABLE `warehouse_product`
  ADD CONSTRAINT `warehouse_product_ibfk_1` FOREIGN KEY (`Warehouse_ID`) REFERENCES `warehouse` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_product_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
