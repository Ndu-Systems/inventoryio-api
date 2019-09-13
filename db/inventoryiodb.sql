-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2019 at 09:17 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventoryiodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `AttributeId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_item`
--

CREATE TABLE `attribute_item` (
  `Id` int(11) NOT NULL,
  `AttributeId` varchar(225) NOT NULL,
  `AttributeValue` varchar(200) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `BrandId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`BrandId`, `CompanyId`, `Name`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('22460081-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'merc', '2019-09-10 23:01:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:01:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('256f9dc6-d58b-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'KIA', '2019-09-12 20:28:41', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 20:28:41', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('394a1196-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 22:26:09', 'postman', '2019-09-10 22:26:09', 'postman', 1),
('3f3427ab-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Toyota', '2019-09-10 22:26:19', 'postman', '2019-09-10 22:26:19', 'postman', 1),
('7057ccf3-d40d-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Colt', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('745dacb7-d3f4-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 19:57:28', 'postman', '2019-09-10 19:57:28', 'postman', 1),
('8c143c75-d584-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Isuzu', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ff011748-d40d-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'BMW', '2019-09-10 23:00:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:00:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catergory`
--

CREATE TABLE `catergory` (
  `CatergoryId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catergory`
--

INSERT INTO `catergory` (`CatergoryId`, `CompanyId`, `Name`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Van', '2019-09-10 23:00:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:00:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sport', '2019-09-10 23:01:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:01:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Hatchback', '2019-09-10 22:25:52', 'postman', '2019-09-10 22:25:52', 'postman', 1),
('33785b3d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Sedan', '2019-09-10 22:25:59', 'postman', '2019-09-10 22:25:59', 'postman', 1),
('84b84ba4-d3f5-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 20:05:05', 'postman', '2019-09-10 20:05:05', 'postman', 1),
('8aa30563-d3f5-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Hatchback', '2019-09-10 20:05:15', 'postman', '2019-09-10 20:05:15', 'postman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `TelephoneNumber` varchar(20) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyId`, `Name`, `Website`, `TelephoneNumber`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('4523af94-d172-11e9-b97c-48f17f8d4d88', 'ds', 'ds', 's', '2019-09-07 15:19:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-07 15:19:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'ndu-systems.net', '0842529472', '2019-09-07 15:07:32', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-07 15:07:32', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f972ae4e-d244-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'The Willaim', '011454545', '2019-09-08 16:27:44', '673267837128', '2019-09-08 16:27:44', '7382737283', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `ImageId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `OtherId` varchar(225) NOT NULL,
  `Url` text NOT NULL,
  `CreateDate` date NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` date NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ImageId`, `CompanyId`, `OtherId`, `Url`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('469f8e4c-d630-11e9-b692-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'http://localhost:8200/inventoryiodb-api/api/upload/uploads/1568383844620x349 (1).webp', '2019-09-13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('883d48d4-d5a3-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '46fd465c-d40e-11e9-9f95-48f17f8d4d88', 'http://localhost:8200/inventoryiodb-api/api/upload/uploads/1568323395Volkswagen-Polo-2.0-GTI-DSG-Automaat-200-PK.jpg', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c5582f19-d5a3-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'a707c2c4-d584-11e9-a017-48f17f8d4d88', 'http://localhost:8200/inventoryiodb-api/api/upload/uploads/1568323497xriderfront.jpg', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c597a75c-d5a2-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '46fd465c-d40e-11e9-9f95-48f17f8d4d88', 'http://localhost:8200/inventoryiodb-api/api/upload/uploads/1568323068vw-polo-1-2tsi-comfortline-2017-id-53550238-type-main.jpg', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cb24cb3a-d5a0-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '46fd465c-d40e-11e9-9f95-48f17f8d4d88', 'http://localhost:8200/inventoryiodb-api/api/upload/uploads/1568322219620x349.webp', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f3926ae1-d5a3-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'http://localhost:8200/inventoryiodb-api/api/upload/uploads/1568323575vw-up-gti-by-bb-automobiltechnik.jpg', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderId` varchar(225) NOT NULL,
  `ParntersId` varchar(225) DEFAULT NULL,
  `OrderType` varchar(100) NOT NULL,
  `ExpectedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `Id` int(11) NOT NULL,
  `OrderId` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `Quantity` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parnter`
--

CREATE TABLE `parnter` (
  `ParntersId` varchar(225) NOT NULL,
  `ParnterType` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `CellphoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(225) NOT NULL,
  `Address` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` varchar(225) NOT NULL,
  `BrandId` varchar(225) DEFAULT NULL,
  `CatergoryId` varchar(225) DEFAULT NULL,
  `CompanyId` varchar(225) DEFAULT NULL,
  `SupplierId` varchar(225) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` text DEFAULT current_timestamp(),
  `UnitPrice` varchar(20) DEFAULT NULL,
  `UnitCost` decimal(10,0) DEFAULT 0,
  `Code` varchar(50) DEFAULT NULL,
  `SKU` varchar(20) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `LowStock` int(10) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `BrandId`, `CatergoryId`, `CompanyId`, `SupplierId`, `Name`, `Description`, `UnitPrice`, `UnitCost`, `Code`, `SKU`, `Quantity`, `LowStock`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0b03b46c-d40a-11e9-9f95-48f17f8d4d88', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Polo', '', '250000', '198000', '2', '2', 0, 0, '2019-09-10 22:32:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 22:32:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'sasaS', '', '2', '2', '2132', 'SD', 0, 0, '2019-09-10 07:51:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 07:51:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0f507307-d630-11e9-b692-48f17f8d4d88', '3f3427ab-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Yaris ', 'Orange toyota yaris', '250000', '175000', ' ', ' ', 0, 0, '2019-09-13 16:09:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 16:09:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1028ac34-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Suger', '', '11', '0', '11', '11', 0, 0, '2019-09-08 18:08:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:08:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('15489da7-d458-11e9-9269-48f17f8d4d88', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'UP', '', '250000', '198000', '11 222 55 4485', '125487', 0, 0, '2019-09-11 07:50:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-11 07:50:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('159bb35f-d4ce-11e9-9492-48f17f8d4d88', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Black Polo TSI 1.2', '', '250000', '210000', '1545', '15', 0, 0, '2019-09-11 21:55:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-11 21:55:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2L Fanta', '', '20', '0', '111', '111', 20, 20, '2019-09-08 18:30:20', 'postman', '2019-09-08 18:30:20', 'postman', 1),
('25823c2f-d3f4-11e9-9f95-48f17f8d4d88', NULL, NULL, '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'VW', '', NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-10 19:55:16', 'postman', '2019-09-10 19:55:16', 'postman', 1),
('271800b9-d256-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2L Fanta', '', '20', '0', '111', '111', 20, 20, '2019-09-08 18:30:42', 'postman', '2019-09-08 18:30:42', 'postman', 1),
('2af16af1-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'dad', '', '88', '0', 'NMN', 'NMN', 0, 0, '2019-09-08 18:09:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:09:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('33e4fecf-d245-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Bread', '', '15', '0', '11 888 88 77545 487878', '11', 0, 0, '2019-09-08 16:29:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 16:29:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('341a62c9-d38d-11e9-a3ca-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Brown bread', '', '15', '10', '666 777 77878 12', '666', 0, 0, '2019-09-10 07:38:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 07:38:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3c211e2a-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'DSA', '', '1', '0', '1', '1', 0, 0, '2019-09-08 18:09:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:09:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('46fd465c-d40e-11e9-9f95-48f17f8d4d88', '22460081-d40e-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'amg 45', '', '450000', '420000', '1122', '123', 0, 0, '2019-09-10 23:02:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:02:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5013b0ea-d245-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2L Fanta', '', '20', '0', '111', '111', 20, 20, '2019-09-08 16:30:09', 'postman', '2019-09-08 16:30:09', 'postman', 1),
('535942fd-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'WQ', '', '1', '0', 'DS', 'DS', 0, 0, '2019-09-08 18:10:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:10:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('58320d0e-d630-11e9-b692-48f17f8d4d88', '256f9dc6-d58b-11e9-a017-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'sasas', 's', '2', '1', '2', '2', 0, 0, '2019-09-13 16:11:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 16:11:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8127ec68-d331-11e9-8a1a-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Polo Vivo', '', '2000000', '1580000', '4455555 45451 4545 4545', '154545', 0, 0, '2019-09-09 20:41:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-09 20:41:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8ae4a833-d38e-11e9-a3ca-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'eew', '', '222', '222', '2222 434', '22', 0, 0, '2019-09-10 07:47:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 07:47:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9283553a-d604-11e9-a3ca-48f17f8d4d88', '7057ccf3-d40d-11e9-9f95-48f17f8d4d88', '066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'test aboservable', 'test', '55', '0', '0', '0', 0, 0, '2019-09-13 10:57:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 10:57:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a707c2c4-d584-11e9-a017-48f17f8d4d88', '8c143c75-d584-11e9-a017-48f17f8d4d88', '066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'KB', '', '250000', '18000', ' ', ' ', 0, 0, '2019-09-12 19:42:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 19:42:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `Id` int(10) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `AttributeId` varchar(225) NOT NULL,
  `AttributeValue` varchar(200) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE `product_item` (
  `Id` int(10) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `Code` varchar(100) NOT NULL,
  `Scanned` int(1) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleId` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleId`, `CompanyId`, `Name`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Owner', '2019-09-07 15:12:32', 'sys', '2019-09-07 15:12:32', 'sys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `Id` int(10) NOT NULL,
  `RoleId` int(10) NOT NULL,
  `TableName` varchar(100) NOT NULL,
  `AccessCode` varchar(2) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `StoreId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `TelephoneNumber` varchar(20) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `CellphoneNumber` varchar(225) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `CompanyId` varchar(225) DEFAULT NULL,
  `RoleId` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `Name`, `Surname`, `CellphoneNumber`, `Password`, `CompanyId`, `RoleId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('81de5b36-d170-11e9-b97c-48f17f8d4d88', 'ndu@mail.com', 'Ndumiso', '', '26784545', '1111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 1, '2019-09-07 15:07:58', 'web', '2019-09-07 15:07:34', 'web', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_store`
--

CREATE TABLE `user_store` (
  `Id` int(10) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `StoreId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_item`
--
ALTER TABLE `attribute_item`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BrandId`);

--
-- Indexes for table `catergory`
--
ALTER TABLE `catergory`
  ADD PRIMARY KEY (`CatergoryId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyId`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ImageId`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_store`
--
ALTER TABLE `user_store`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_item`
--
ALTER TABLE `attribute_item`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_store`
--
ALTER TABLE `user_store`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
