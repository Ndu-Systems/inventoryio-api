-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 05:05 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

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

-- --------------------------------------------------------

--
-- Table structure for table `catergory`
--

CREATE TABLE `catergory` (
  `CatergoryId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Parent` varchar(50) DEFAULT NULL,
  `CatergoryType` varchar(100) DEFAULT NULL,
  `Description` text NOT NULL,
  `ImageUrl` varchar(500) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catergory`
--

INSERT INTO `catergory` (`CatergoryId`, `CompanyId`, `Name`, `Parent`, `CatergoryType`, `Description`, `ImageUrl`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0cb6d51d-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Dresses', 'e0649511-cfc3-11ea-8a5b-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958260105536008752_2_1_1.webp', '2020-07-27 07:00:11', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-27 07:00:11', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('2c226bef-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Men', '', 'parent', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958260631775452615_2_3_1.webp', '2020-07-27 07:01:03', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-27 07:01:03', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('33470dbc-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Shoes', '2c226bef-cfc6-11ea-8a5b-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958260742412520040_2_1_1 (1).webp', '2020-07-27 07:01:15', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-27 07:01:15', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('3b246c4b-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Suits', '2c226bef-cfc6-11ea-8a5b-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958260882.png', '2020-07-27 07:01:29', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-27 07:01:29', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('9cb371fb-d8a2-11ea-8017-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Kids', '', 'parent', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15968003509007702712_1_1_1.webp', '2020-08-07 13:39:11', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-07 13:39:11', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('a86141fc-d1bf-11ea-bba5-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Accessories', '2c226bef-cfc6-11ea-8a5b-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15960431668435303800_2_1_1.webp', '2020-07-29 19:19:28', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-29 19:19:28', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('a880d75b-d8a2-11ea-8017-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'T-Shirts', '9cb371fb-d8a2-11ea-8017-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15968003709007702712_1_1_1.webp', '2020-08-07 13:39:31', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-07 13:39:31', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('c48fe23a-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'New in', '2c226bef-cfc6-11ea-8a5b-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958263184087302251_1_1_1.jpg', '2020-07-27 07:05:19', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-27 07:05:19', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('d04c4727-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', 'Men', '', 'parent', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959225450ebf0348-9e53-4fce-95ec-7817bb41fe55.jpg', '2020-07-28 09:49:06', '0489dd05-c80d-11ea-8523-48f17f8d4d88', '2020-07-28 09:49:06', '0489dd05-c80d-11ea-8523-48f17f8d4d88', 1),
('e0649511-cfc3-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Ladies', '', 'parent', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958250766050637800_2_1_1.webp', '2020-07-27 06:44:37', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-27 06:44:37', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('e5ac2975-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', 'New in', 'd04c4727-d0a6-11ea-919f-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959225808fbf07ab-ee84-451d-ba3c-b4f5324b041f.jpg', '2020-07-28 09:49:42', '0489dd05-c80d-11ea-8523-48f17f8d4d88', '2020-07-28 09:49:42', '0489dd05-c80d-11ea-8523-48f17f8d4d88', 1),
('ee53dc25-d09d-11ea-919f-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Jackets', 'e0649511-cfc3-11ea-8a5b-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959187444369053712_2_1_1.webp', '2020-07-28 08:45:31', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-07-28 08:45:45', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('ef1d9d24-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', 'Ladies', '', 'parent', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595922597d396d66f-5d12-4490-a674-f61648d0cc56.jpg', '2020-07-28 09:49:58', '0489dd05-c80d-11ea-8523-48f17f8d4d88', '2020-07-28 09:49:58', '0489dd05-c80d-11ea-8523-48f17f8d4d88', 1),
('f71e3c07-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', 'New in', 'ef1d9d24-d0a6-11ea-919f-48f17f8d4d88', 'child', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595922610b9aa0747-f17b-4df5-9031-9910d46735ae.jpg', '2020-07-28 09:50:11', '0489dd05-c80d-11ea-8523-48f17f8d4d88', '2020-07-28 09:50:11', '0489dd05-c80d-11ea-8523-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `Type` varchar(150) DEFAULT NULL,
  `Website` varchar(100) NOT NULL,
  `Shop` int(1) DEFAULT 1,
  `Handler` varchar(50) DEFAULT NULL,
  `TelephoneNumber` varchar(20) NOT NULL,
  `Prefix` varchar(6) DEFAULT NULL,
  `ParentId` varchar(225) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyId`, `Name`, `Description`, `Type`, `Website`, `Shop`, `Handler`, `TelephoneNumber`, `Prefix`, `ParentId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('048895c3-c80d-11ea-8523-48f17f8d4d88', 'Style Starved', '', NULL, '', 1, NULL, '', NULL, NULL, '2020-07-17 11:08:02', 'web', '2020-07-17 11:08:02', 'web', 1),
('9d9ce22e-db96-11ea-a510-48f17f8d4d88', 'My Company', '', NULL, '', 1, NULL, '', NULL, NULL, '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1),
('9da13c8b-db96-11ea-a510-48f17f8d4d88', 'My Company', '', NULL, '', 1, NULL, '', NULL, NULL, '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1),
('c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Zara SA', '', 'Ndu Systems', 'Ndu Systems', 1, 'zara_fourways', '+27842529472', '', '', '2020-07-19 21:41:05', 'web', '2020-08-07 13:24:21', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `ConfigId` varchar(255) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `GroupKey` varchar(100) DEFAULT NULL,
  `Label` varchar(255) NOT NULL,
  `Value` varchar(5000) NOT NULL,
  `IsRequired` tinyint(1) NOT NULL DEFAULT 1,
  `FieldType` varchar(15) NOT NULL DEFAULT 'text',
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`ConfigId`, `CompanyId`, `Name`, `Type`, `GroupKey`, `Label`, `Value`, `IsRequired`, `FieldType`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('04c7abeb-db92-11ea-a510-48f17f8d4d88', '04c74040-db92-11ea-a510-48f17f8d4d88', 'shippingFee', 'shippingFee', 'this is the order shipping', '', '', 1, 'string', '2020-08-11 07:17:58', 'system', '2020-08-11 07:17:58', 'system', 1),
('04c81866-db92-11ea-a510-48f17f8d4d88', '04c74040-db92-11ea-a510-48f17f8d4d88', 'shippingFee', 'shippingFee', 'this is the order shipping', '', '', 1, 'string', '2020-08-11 07:17:58', 'system', '2020-08-11 07:17:58', 'system', 1),
('e423058b-db91-11ea-a510-48f17f8d4d88', 'e42248ac-db91-11ea-a510-48f17f8d4d88', 'shippingFee', 'shippingFee', 'this is the order shipping', '', '', 1, 'string', '2020-08-11 07:17:03', 'system', '2020-08-11 07:17:03', 'system', 1);

-- --------------------------------------------------------

--
-- Table structure for table `creditnote`
--

CREATE TABLE `creditnote` (
  `CreditnoteId` varchar(225) NOT NULL,
  `CreditNoteNo` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `OrderId` varchar(100) NOT NULL,
  `Total` decimal(20,0) NOT NULL,
  `Reason` text DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `ImageId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `OtherId` varchar(225) NOT NULL,
  `Url` text NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrdersId` varchar(225) NOT NULL,
  `OrderId` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `ParntersId` varchar(225) DEFAULT NULL,
  `ParntersEmail` varchar(225) NOT NULL,
  `Notes` text NOT NULL,
  `OrderType` varchar(100) NOT NULL,
  `Total` varchar(10) NOT NULL,
  `Paid` varchar(10) DEFAULT '0.00',
  `Due` varchar(10) DEFAULT NULL,
  `ExpectedDate` text DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrdersId`, `OrderId`, `CompanyId`, `ParntersId`, `ParntersEmail`, `Notes`, `OrderType`, `Total`, `Paid`, `Due`, `ExpectedDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `Status`, `StatusId`) VALUES
('04c74040-db92-11ea-a510-48f17f8d4d88', 3, 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', '65b0ac0e-db90-11ea-a510-48f17f8d4d88', 'queries@ndu-systems.net', '', 'Sell', '1799.00', '0.00', '1799.00', NULL, '2020-08-11 07:17:58', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:17:58', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 'new', 1),
('8b72ee95-db91-11ea-a510-48f17f8d4d88', 1, 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', '65b0ac0e-db90-11ea-a510-48f17f8d4d88', 'queries@ndu-systems.net', '', 'Sell', '599.00', '0.00', '599.00', NULL, '2020-08-11 07:14:34', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:14:34', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 'new', 1),
('e42248ac-db91-11ea-a510-48f17f8d4d88', 2, 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', '65b0ac0e-db90-11ea-a510-48f17f8d4d88', 'queries@ndu-systems.net', '', 'Sell', '599.00', '0.00', '599.00', NULL, '2020-08-11 07:17:03', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:17:03', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 'new', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_options`
--

CREATE TABLE `order_options` (
  `Id` int(10) NOT NULL,
  `OrderId` varchar(225) NOT NULL,
  `ProductId` varchar(225) DEFAULT NULL,
  `OrderProductId` varchar(225) NOT NULL,
  `OptionId` varchar(225) NOT NULL,
  `ValueId` int(10) NOT NULL,
  `OptionValue` varchar(300) NOT NULL,
  `OptionName` varchar(200) DEFAULT NULL,
  `ValuePrice` decimal(10,0) NOT NULL,
  `ValueIdQty` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `CreateDate` datetime DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `Id` varchar(225) NOT NULL,
  `OrderId` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) DEFAULT NULL,
  `ProductName` text DEFAULT NULL,
  `UnitPrice` varchar(10) DEFAULT NULL,
  `Quantity` varchar(225) NOT NULL,
  `subTotal` varchar(10) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`Id`, `OrderId`, `ProductId`, `CompanyId`, `ProductName`, `UnitPrice`, `Quantity`, `subTotal`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('04c77ab0-db92-11ea-a510-48f17f8d4d88', '04c74040-db92-11ea-a510-48f17f8d4d88', 'db18a289-d8a2-11ea-8017-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Girts top', '599.00', '1', '599.00', '2020-08-11 07:17:58', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:17:58', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('04c7e79c-db92-11ea-a510-48f17f8d4d88', '04c74040-db92-11ea-a510-48f17f8d4d88', '272dedc6-d1c0-11ea-bba5-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'CHAIN WITH LACQUERED PENDANT', '1200.00', '1', '1200.00', '2020-08-11 07:17:58', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:17:58', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('e422adfb-db91-11ea-a510-48f17f8d4d88', 'e42248ac-db91-11ea-a510-48f17f8d4d88', 'db18a289-d8a2-11ea-8017-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'Girts top', '599.00', '1', '599.00', '2020-08-11 07:17:03', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:17:03', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `PartnerId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `PartnerType` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) DEFAULT NULL,
  `CellphoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(225) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Address` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`PartnerId`, `CompanyId`, `PartnerType`, `Name`, `Surname`, `CellphoneNumber`, `EmailAddress`, `Password`, `Address`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('65b0ac0e-db90-11ea-a510-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 'customer', 'Ndumiso', 'Mthembu', '+27842529472', 'queries@ndu-systems.net', '', '270 Marshall St, City and Suburban, Johannesburg, 2094', '2020-08-11 07:06:21', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 07:06:21', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permision_actions`
--

CREATE TABLE `permision_actions` (
  `Id` int(10) NOT NULL,
  `PermissionId` varchar(225) NOT NULL,
  `Action` varchar(50) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `PermissionId` varchar(225) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`PermissionId`, `Name`, `CompanyId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('1115f7a8-c80a-11ea-8523-48f17f8d4d88', 'can_configure', '11155686-c80a-11ea-8523-48f17f8d4d88', '2020-07-17 10:46:55', 'web', '2020-07-17 10:46:55', 'web', 1),
('49265b5a-c80c-11ea-8523-48f17f8d4d88', 'can_configure', '49258741-c80c-11ea-8523-48f17f8d4d88', '2020-07-17 11:02:48', 'web', '2020-07-17 11:02:48', 'web', 1),
('548154ab-c80a-11ea-8523-48f17f8d4d88', 'can_configure', '54802526-c80a-11ea-8523-48f17f8d4d88', '2020-07-17 10:48:48', 'web', '2020-07-17 10:48:48', 'web', 1),
('9d9e5d95-db96-11ea-a510-48f17f8d4d88', 'can_configure', '9d9ce22e-db96-11ea-a510-48f17f8d4d88', '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1),
('9da236a0-db96-11ea-a510-48f17f8d4d88', 'can_configure', '9da13c8b-db96-11ea-a510-48f17f8d4d88', '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1),
('a6832b6d-c80b-11ea-8523-48f17f8d4d88', 'can_configure', 'a682602b-c80b-11ea-8523-48f17f8d4d88', '2020-07-17 10:58:15', 'web', '2020-07-17 10:58:15', 'web', 1),
('da91a8da-c80b-11ea-8523-48f17f8d4d88', 'can_configure', 'da90ee21-c80b-11ea-8523-48f17f8d4d88', '2020-07-17 10:59:42', 'web', '2020-07-17 10:59:42', 'web', 1);

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
  `Description` text DEFAULT NULL,
  `UnitPrice` varchar(20) DEFAULT NULL,
  `UnitCost` decimal(10,0) DEFAULT 0,
  `Code` varchar(50) DEFAULT NULL,
  `SKU` varchar(20) DEFAULT NULL,
  `TrackInventory` tinyint(1) DEFAULT NULL,
  `Shop` int(1) DEFAULT NULL,
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

INSERT INTO `product` (`ProductId`, `BrandId`, `CatergoryId`, `CompanyId`, `SupplierId`, `Name`, `Description`, `UnitPrice`, `UnitCost`, `Code`, `SKU`, `TrackInventory`, `Shop`, `Quantity`, `LowStock`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0bad8364-c9f9-11ea-ae4d-48f17f8d4d88', '', 'c48fe23a-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Swarter', '', '800', '0', '3', '', 1, NULL, 100, 0, '2020-07-19 21:50:06', '', '2020-07-27 07:05:52', '', 0),
('12ab9712-d09e-11ea-919f-48f17f8d4d88', '', 'ee53dc25-d09d-11ea-919f-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Long jacket', '', '1600', '0', '9', '', 1, NULL, 10, 0, '2020-07-28 08:46:32', '', '2020-07-28 08:46:32', '', 0),
('20d396f6-c9f9-11ea-ae4d-48f17f8d4d88', '', 'c48fe23a-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Solder bomber', '', '590', '0', '4', '', 1, NULL, 100, 0, '2020-07-19 21:50:42', '', '2020-07-27 07:07:29', '', 0),
('272dedc6-d1c0-11ea-bba5-48f17f8d4d88', '', 'a86141fc-d1bf-11ea-bba5-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'CHAIN WITH LACQUERED PENDANT', '', '1200', '0', '11', '', 1, NULL, 9, 0, '2020-07-29 19:23:00', '', '2020-08-11 07:17:57', '', 0),
('35322ba8-c9f6-11ea-ae4d-48f17f8d4d88', '', 'e5ac2975-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', NULL, 'Red and white tracksuit', '', '350', '0', '6', '', 1, NULL, 25, 0, '2020-07-19 21:29:47', '', '2020-07-28 09:50:21', '', 0),
('45d34ac2-c9f9-11ea-ae4d-48f17f8d4d88', '', '3b246c4b-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Suit', '', '2000', '0', '5', '', 1, NULL, 100, 0, '2020-07-19 21:51:44', '', '2020-07-27 07:05:34', '', 0),
('493fbc53-c9bb-11ea-a345-48f17f8d4d88', '', 'f71e3c07-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', NULL, 'Val-vet dress polo neck dress', '', '350', '0', '1', '', 1, NULL, 15, 0, '2020-07-19 14:28:01', '', '2020-07-28 09:50:46', '', 0),
('61746230-c9f8-11ea-ae4d-48f17f8d4d88', '', '3b246c4b-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Yellow suit', '', '500', '0', '1', '', 1, NULL, 15, 0, '2020-07-19 21:45:21', '', '2020-07-29 07:01:44', '', 0),
('619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'f71e3c07-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', NULL, 'Hot maroon midi dress', '', '600', '0', '4', '', 1, NULL, 15, 0, '2020-07-19 14:57:20', '', '2020-07-28 09:50:40', '', 0),
('8d18ec8e-cfdc-11ea-8a5b-48f17f8d4d88', '', '0cb6d51d-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Midi brown dress', '', '1100', '0', '7', '', 1, NULL, 15, 0, '2020-07-27 09:41:15', '', '2020-07-27 09:41:15', '', 0),
('8d7f2239-d1c2-11ea-bba5-48f17f8d4d88', '', '', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, '120', '', '1000', '0', '13', '', 1, NULL, 10, 0, '2020-07-29 19:40:11', '', '2020-07-29 19:40:11', '', 0),
('93340ec0-c9f4-11ea-ae4d-48f17f8d4d88', '', 'e5ac2975-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', NULL, 'Black polo neck', '', '380', '0', '5', '', 1, NULL, 20, 0, '2020-07-19 21:18:06', '', '2020-07-28 09:50:26', '', 0),
('a16f16f3-dbe2-11ea-9bae-48f17f8d4d88', '', 'c48fe23a-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, '11', '', '500', '0', '16', '', 1, NULL, 10, 0, '2020-08-11 16:55:00', '', '2020-08-11 16:55:00', '', 1),
('b7fa5d90-db96-11ea-a510-48f17f8d4d88', '', '', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'dsd', '', '332', '0', '15', '', 1, NULL, 2, 0, '2020-08-11 07:51:36', '', '2020-08-11 09:51:26', '', 0),
('b89972e0-cfdc-11ea-8a5b-48f17f8d4d88', '', '0cb6d51d-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'PRINTED MIDI DRESS', '', '1200', '0', '8', '', 1, NULL, 15, 0, '2020-07-27 09:42:28', '', '2020-07-27 09:42:28', '', 0),
('c5c3973f-c848-11ea-8523-48f17f8d4d88', '', 'f71e3c07-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', NULL, 'Navy dress', '', '350', '0', '2', '', 1, NULL, 10, 0, '2020-07-17 18:15:46', '', '2020-07-28 09:50:52', '', 0),
('c667a2ca-d1bf-11ea-bba5-48f17f8d4d88', '', 'a86141fc-d1bf-11ea-bba5-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'RIBBED COTTON HAT', '', '250', '0', '10', '', 1, NULL, 20, 0, '2020-07-29 19:20:18', '', '2020-07-29 19:20:34', '', 0),
('ce6f0b20-c848-11ea-8523-48f17f8d4d88', '', 'e5ac2975-d0a6-11ea-919f-48f17f8d4d88', '048895c3-c80d-11ea-8523-48f17f8d4d88', NULL, 'Two color track suits', '', '600', '0', '3', '', 1, NULL, 22, 0, '2020-07-17 18:16:01', '', '2020-07-28 09:50:32', '', 0),
('cf5d1d4f-c9f8-11ea-ae4d-48f17f8d4d88', '', 'c48fe23a-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'hot jacket', '', '1000', '0', '2', '', 1, NULL, 50, 0, '2020-07-19 21:48:25', '', '2020-08-11 09:51:33', '', 0),
('db18a289-d8a2-11ea-8017-48f17f8d4d88', '', 'a880d75b-d8a2-11ea-8017-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Girts top', '', '599', '0', '14', '', 1, NULL, 28, 0, '2020-08-07 13:40:56', '', '2020-08-11 07:17:57', '', 0),
('fa4e6f3a-d1c1-11ea-bba5-48f17f8d4d88', '', '', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'wq', '', '100', '0', '12', '', 1, NULL, 0, 0, '2020-07-29 19:36:04', '', '2020-07-29 19:40:33', '', 0),
('febd8c0d-cfc6-11ea-8a5b-48f17f8d4d88', '', '33470dbc-cfc6-11ea-8a5b-48f17f8d4d88', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', NULL, 'Classic formal shoes', '', '1200', '0', '6', '', 1, NULL, 30, 0, '2020-07-27 07:06:57', '', '2020-07-27 07:07:15', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE `productoptions` (
  `Id` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name1` varchar(100) NOT NULL,
  `Name2` varchar(100) NOT NULL,
  `Name3` varchar(100) NOT NULL,
  `Name4` varchar(100) NOT NULL,
  `Name5` varchar(100) NOT NULL,
  `Value1` varchar(100) NOT NULL,
  `Value2` varchar(100) NOT NULL,
  `Value3` varchar(100) NOT NULL,
  `Value4` varchar(100) NOT NULL,
  `Value5` varchar(100) NOT NULL,
  `ImageUrl1` varchar(500) NOT NULL,
  `ImageUrl2` varchar(500) NOT NULL,
  `ImageUrl3` varchar(500) NOT NULL,
  `Quantity` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productoptions`
--

INSERT INTO `productoptions` (`Id`, `ProductId`, `CompanyId`, `Name1`, `Name2`, `Name3`, `Name4`, `Name5`, `Value1`, `Value2`, `Value3`, `Value4`, `Value5`, `ImageUrl1`, `ImageUrl2`, `ImageUrl3`, `Quantity`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0bae4b0a-c9f9-11ea-ae4d-48f17f8d4d88', '0bad8364-c9f9-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'L', 'orange', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228471775452615_1_1_1.webp', '', '', '50', '2020-07-19 21:50:06', '', '2020-07-27 07:05:52', '', 1),
('12ad2d76-d09e-11ea-919f-48f17f8d4d88', '12ab9712-d09e-11ea-919f-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '30', 'gray', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959187884369053712_2_1_1.webp', '', '', '10', '2020-07-28 08:46:32', '', '2020-07-28 08:46:32', '', 1),
('1ee38366-c9b8-11ea-a345-48f17f8d4d88', 'c5c3973f-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 's', 'navy', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/159592194017618056-61f2-4594-affc-38ff3e7e9820.jpg', '', '', '10', '2020-07-19 14:05:21', '', '2020-07-28 09:50:52', '', 1),
('24ff36be-c9f9-11ea-ae4d-48f17f8d4d88', '20d396f6-c9f9-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'l', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228324.png', '', '', '100', '2020-07-19 21:50:49', '', '2020-07-27 07:07:29', '', 1),
('261f1c4c-c9f5-11ea-ae4d-48f17f8d4d88', '93340ec0-c9f4-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595921764a225c163-ba3f-4daf-b8bf-bd0229c382fe.jpg', '', '', '10', '2020-07-19 21:22:13', '', '2020-07-28 09:50:26', '', 1),
('26aee793-c9f4-11ea-ae4d-48f17f8d4d88', '619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '30', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595921812c693ea8e-2edf-44e5-a1f7-2fb01f9e4070.jpg', '', '', '5', '2020-07-19 21:15:04', '', '2020-07-28 09:50:40', '', 1),
('272e602c-d1c0-11ea-bba5-48f17f8d4d88', '272dedc6-d1c0-11ea-bba5-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15960432538435303800_1_1_1.webp', '', '', '10', '2020-07-29 19:23:00', '', '2020-07-29 19:23:54', '', 1),
('314796db-c9b8-11ea-a345-48f17f8d4d88', 'ce6f0b20-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'maroon', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959219246cced1f1-bf3b-4df7-b8b7-1d43d8ae0f79.jpg', '', '', '10', '2020-07-19 14:05:52', '', '2020-07-28 09:50:32', '', 1),
('3532dbd7-c9f6-11ea-ae4d-48f17f8d4d88', '35322ba8-c9f6-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'white', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959217140ebf0348-9e53-4fce-95ec-7817bb41fe55.jpg', '', '', '5', '2020-07-19 21:29:47', '', '2020-07-28 09:50:21', '', 1),
('40cf239c-d0a5-11ea-919f-48f17f8d4d88', '619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '34', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595921855a915cb45-c5c4-4e23-b5d9-09b1966d28ab.jpg', '', '', '5', '2020-07-28 09:37:56', '', '2020-07-28 09:50:40', '', 1),
('45d41fdb-c9f9-11ea-ae4d-48f17f8d4d88', '45d34ac2-c9f9-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'M', 'Grey', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228162.png', '', '', '100', '2020-07-19 21:51:44', '', '2020-07-27 07:05:34', '', 1),
('4940db11-c9bb-11ea-a345-48f17f8d4d88', '', '', 'Size', 'Colour', '', '', '', 'S', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595161653115d0a1d-6852-42a6-baa3-70f8209a4656.jpg', '', '', '5', '2020-07-19 14:28:01', '', '2020-07-19 14:28:01', '', 1),
('49411998-c9bb-11ea-a345-48f17f8d4d88', '', '', 'Size', 'Colour', '', '', '', 'S', 'brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15951616742734f234-e443-433b-b739-4225c576ebd3.jpg', '', '', '5', '2020-07-19 14:28:01', '', '2020-07-19 14:28:01', '', 1),
('5b3f4534-c9b8-11ea-a345-48f17f8d4d88', 'ce6f0b20-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'M', 'maroon', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959219278fbf07ab-ee84-451d-ba3c-b4f5324b041f.jpg', '', '', '2', '2020-07-19 14:07:03', '', '2020-07-28 09:50:32', '', 1),
('61751d49-c9f8-11ea-ae4d-48f17f8d4d88', '61746230-c9f8-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '30', 'Gold', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228783.png', '', '', '5', '2020-07-19 21:45:21', '', '2020-07-29 07:01:44', '', 1),
('61757147-c9f8-11ea-ae4d-48f17f8d4d88', '61746230-c9f8-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '32', 'Gold', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228860706685308_2_3_1.webp', '', '', '5', '2020-07-19 21:45:21', '', '2020-07-29 07:01:44', '', 1),
('6175de26-c9f8-11ea-ae4d-48f17f8d4d88', '61746230-c9f8-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '34', 'Gold', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228890706685308_2_2_1.webp', '', '', '5', '2020-07-19 21:45:21', '', '2020-07-29 07:01:44', '', 1),
('619be609-c9bf-11ea-ae4d-48f17f8d4d88', '619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '32', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595921815d396d66f-5d12-4490-a674-f61648d0cc56.jpg', '', '', '5', '2020-07-19 14:57:20', '', '2020-07-28 09:50:40', '', 1),
('619c4844-c9bf-11ea-ae4d-48f17f8d4d88', '619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'white', '', '', '', '', '', '', '10', '2020-07-19 14:57:20', '', '2020-07-19 14:59:25', '', 2),
('6eed45db-c9f2-11ea-ae4d-48f17f8d4d88', '619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 's', 'white', '', '', '', '', '', '', '100', '2020-07-19 21:02:46', '', '2020-07-19 21:02:53', '', 2),
('71168a36-c9ff-11ea-ae4d-48f17f8d4d88', '0bad8364-c9f9-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'M', 'orange', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228511775452615_2_3_1.webp', '', '', '50', '2020-07-19 22:35:53', '', '2020-07-27 07:05:52', '', 1),
('7cfa9bd1-c849-11ea-8523-48f17f8d4d88', 'ce6f0b20-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'RED', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595002639d502cec2-7378-4d8f-9587-d55727f0208c.jpg', '', '', '10', '2020-07-17 18:20:54', '', '2020-07-19 13:58:09', '', 2),
('85f49063-c9f6-11ea-ae4d-48f17f8d4d88', '35322ba8-c9f6-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'M', 'white', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15959217245123eb62-adc3-4769-a4f3-a88770b4df2a.jpg', '', '', '10', '2020-07-19 21:32:03', '', '2020-07-28 09:50:21', '', 1),
('85f532d7-c9f6-11ea-ae4d-48f17f8d4d88', '35322ba8-c9f6-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'L', 'white', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595921728e7851dc5-76a0-465c-b12e-6d7c886b3562.jpg', '', '', '10', '2020-07-19 21:32:03', '', '2020-07-28 09:50:21', '', 1),
('879fb807-c9bc-11ea-ae4d-48f17f8d4d88', '493fbc53-c9bb-11ea-a345-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 's', 'brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/159592189136e89762-1ad6-4e4a-80bc-8ba7adace042.jpg', '', '', '10', '2020-07-19 14:36:55', '', '2020-07-28 09:50:46', '', 1),
('879fff87-c9bc-11ea-ae4d-48f17f8d4d88', '493fbc53-c9bb-11ea-a345-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 's', 'black', '', '', '', '', '', '', '5', '2020-07-19 14:36:55', '', '2020-07-28 09:50:46', '', 1),
('8d198719-cfdc-11ea-8a5b-48f17f8d4d88', '8d18ec8e-cfdc-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '30', 'brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958355635536008752_1_1_1.webp', '', '', '5', '2020-07-27 09:41:15', '', '2020-07-27 09:41:15', '', 1),
('8d19e3b3-cfdc-11ea-8a5b-48f17f8d4d88', '8d18ec8e-cfdc-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '32', 'brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958355705536008752_2_2_1.webp', '', '', '5', '2020-07-27 09:41:15', '', '2020-07-27 09:41:15', '', 1),
('8d1a276b-cfdc-11ea-8a5b-48f17f8d4d88', '8d18ec8e-cfdc-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '34', 'brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958355835536008752_2_1_1.webp', '', '', '5', '2020-07-27 09:41:15', '', '2020-07-27 09:41:15', '', 1),
('8d7fe373-d1c2-11ea-bba5-48f17f8d4d88', '8d7f2239-d1c2-11ea-bba5-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '', '', '', '', '', '', '', '', '10', '2020-07-29 19:40:11', '', '2020-07-29 19:40:11', '', 1),
('933517b2-c9f4-11ea-ae4d-48f17f8d4d88', '93340ec0-c9f4-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'M', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/159592177009ceb400-ecd9-47dd-bd5e-11f0d5ced708.jpg', '', '', '10', '2020-07-19 21:18:06', '', '2020-07-28 09:50:26', '', 1),
('933557f9-c9f4-11ea-ae4d-48f17f8d4d88', '93340ec0-c9f4-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'L', 'black', '', '', '', '', '', '', '10', '2020-07-19 21:18:06', '', '2020-07-28 09:36:14', '', 2),
('9c10e9cd-c9f1-11ea-ae4d-48f17f8d4d88', '619ae6b9-c9bf-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'white', '', '', '', '', '', '', '100', '2020-07-19 20:56:53', '', '2020-07-19 20:56:58', '', 2),
('a1715331-dbe2-11ea-9bae-48f17f8d4d88', 'a16f16f3-dbe2-11ea-9bae-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '10', '1', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1597157699smartmockups_kdjzs2qx.png', '', '', '10', '2020-08-11 16:55:00', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', '2020-08-11 16:55:00', 'c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 1),
('ac480ecc-c849-11ea-8523-48f17f8d4d88', 'c5c3973f-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'RED', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1595002639d502cec2-7378-4d8f-9587-d55727f0208c.jpg', '', '', '10', '2020-07-17 18:22:13', '', '2020-07-19 14:05:21', '', 2),
('b7fbf471-db96-11ea-a510-48f17f8d4d88', 'b7fa5d90-db96-11ea-a510-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '2', '2', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1597125081smartmockups_kdadcggi.png', '', '', '2', '2020-08-11 07:51:36', '', '2020-08-11 09:51:26', '', 1),
('b89a511c-cfdc-11ea-8a5b-48f17f8d4d88', 'b89972e0-cfdc-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '30', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958357294886266800_1_1_1.webp', '', '', '5', '2020-07-27 09:42:28', '', '2020-07-27 09:42:28', '', 1),
('b89ab216-cfdc-11ea-8a5b-48f17f8d4d88', 'b89972e0-cfdc-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '34', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958357324886266800_2_1_1.webp', '', '', '5', '2020-07-27 09:42:28', '', '2020-07-27 09:42:28', '', 1),
('b89aff45-cfdc-11ea-8a5b-48f17f8d4d88', 'b89972e0-cfdc-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '36', '', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958357344886266800_2_2_1.webp', '', '', '5', '2020-07-27 09:42:28', '', '2020-07-27 09:42:28', '', 1),
('c66a1183-d1bf-11ea-bba5-48f17f8d4d88', 'c667a2ca-d1bf-11ea-bba5-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '', 'Brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15960431919065323704_1_1_1.jpg', '', '', '10', '2020-07-29 19:20:18', '', '2020-07-29 19:20:34', '', 1),
('c66b0f18-d1bf-11ea-bba5-48f17f8d4d88', 'c667a2ca-d1bf-11ea-bba5-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '', 'Brown', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15960432009065323704_2_1_1.jpg', '', '', '10', '2020-07-29 19:20:18', '', '2020-07-29 19:20:34', '', 1),
('ccf669f3-c849-11ea-8523-48f17f8d4d88', 'c5c3973f-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'M', 'Black', '', '', '', '', '', '', '3', '2020-07-17 18:23:08', '', '2020-07-19 13:57:30', '', 2),
('ccf718c9-c849-11ea-8523-48f17f8d4d88', 'c5c3973f-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'Black', '', '', '', '', '', '', '5', '2020-07-17 18:23:08', '', '2020-07-19 13:57:49', '', 2),
('cf5e50e9-c9f8-11ea-ae4d-48f17f8d4d88', 'cf5d1d4f-c9f8-11ea-ae4d-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'L', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958228698062407710_1_1_1.webp', '', '', '50', '2020-07-19 21:48:25', '', '2020-08-11 09:51:33', '', 1),
('db1a2a54-d8a2-11ea-8017-48f17f8d4d88', 'db18a289-d8a2-11ea-8017-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'White', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15968004509007702712_1_1_1.webp', '', '', '30', '2020-08-07 13:40:56', '', '2020-08-07 13:40:56', '', 1),
('f8845c84-c9b7-11ea-a345-48f17f8d4d88', 'ce6f0b20-c848-11ea-8523-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', 'S', 'black', '', '', '', '', '', '', '10', '2020-07-19 14:04:17', '', '2020-07-28 09:50:32', '', 1),
('febe21a1-cfc6-11ea-8a5b-48f17f8d4d88', 'febd8c0d-cfc6-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '8', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958263972422520040_2_1_1.webp', '', '', '10', '2020-07-27 07:06:57', '', '2020-07-27 07:07:15', '', 1),
('febeba2b-cfc6-11ea-8a5b-48f17f8d4d88', 'febd8c0d-cfc6-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '7', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958264012422520040_1_1_1.webp', '', '', '10', '2020-07-27 07:06:57', '', '2020-07-27 07:07:15', '', 1),
('febfafaa-cfc6-11ea-8a5b-48f17f8d4d88', 'febd8c0d-cfc6-11ea-8a5b-48f17f8d4d88', '', 'Size', 'Colour', '', '', '', '9', 'black', '', '', '', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15958264062422520040_2_5_1.webp', '', '', '10', '2020-07-27 07:06:57', '', '2020-07-27 07:07:15', '', 1);

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
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `QuotationId` varchar(225) NOT NULL,
  `QuoteId` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `ParntersId` varchar(225) DEFAULT NULL,
  `OrderType` varchar(100) NOT NULL,
  `Total` decimal(10,0) NOT NULL,
  `Paid` decimal(10,0) DEFAULT 0,
  `Due` decimal(10,0) DEFAULT NULL,
  `ExpectedDate` text DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_products`
--

CREATE TABLE `quotation_products` (
  `Id` varchar(225) NOT NULL,
  `QuotationId` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) DEFAULT NULL,
  `ProductName` text DEFAULT NULL,
  `UnitPrice` varchar(10) DEFAULT NULL,
  `Quantity` varchar(225) NOT NULL,
  `subTotal` varchar(10) NOT NULL,
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
(1, '11155686-c80a-11ea-8523-48f17f8d4d88', 'Owner', '2020-07-17 10:46:55', 'web', '2020-07-17 10:46:55', 'web', 1),
(2, '54802526-c80a-11ea-8523-48f17f8d4d88', 'Owner', '2020-07-17 10:48:48', 'web', '2020-07-17 10:48:48', 'web', 1),
(3, 'a682602b-c80b-11ea-8523-48f17f8d4d88', 'Owner', '2020-07-17 10:58:15', 'web', '2020-07-17 10:58:15', 'web', 1),
(4, 'da90ee21-c80b-11ea-8523-48f17f8d4d88', 'Owner', '2020-07-17 10:59:42', 'web', '2020-07-17 10:59:42', 'web', 1),
(5, '49258741-c80c-11ea-8523-48f17f8d4d88', 'Owner', '2020-07-17 11:02:48', 'web', '2020-07-17 11:02:48', 'web', 1),
(6, '9d9ce22e-db96-11ea-a510-48f17f8d4d88', 'Owner', '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1),
(7, '9da13c8b-db96-11ea-a510-48f17f8d4d88', 'Owner', '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `Id` int(10) NOT NULL,
  `RoleId` int(10) NOT NULL,
  `PermissionId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`Id`, `RoleId`, `PermissionId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, 1, '1115f7a8-c80a-11ea-8523-48f17f8d4d88', '2020-07-17 10:46:55', 'web', '2020-07-17 10:46:55', 'web', 1),
(2, 2, '548154ab-c80a-11ea-8523-48f17f8d4d88', '2020-07-17 10:48:48', 'web', '2020-07-17 10:48:48', 'web', 1),
(3, 3, 'a6832b6d-c80b-11ea-8523-48f17f8d4d88', '2020-07-17 10:58:15', 'web', '2020-07-17 10:58:15', 'web', 1),
(4, 4, 'da91a8da-c80b-11ea-8523-48f17f8d4d88', '2020-07-17 10:59:42', 'web', '2020-07-17 10:59:42', 'web', 1),
(5, 5, '49265b5a-c80c-11ea-8523-48f17f8d4d88', '2020-07-17 11:02:48', 'web', '2020-07-17 11:02:48', 'web', 1),
(6, 6, '9d9e5d95-db96-11ea-a510-48f17f8d4d88', '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1),
(7, 7, '9da236a0-db96-11ea-a510-48f17f8d4d88', '2020-08-11 07:50:52', 'signup-social', '2020-08-11 07:50:52', 'signup-social', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `StoreId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `TelephoneNumber` varchar(20) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `SupportId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Message` varchar(100) NOT NULL,
  `CallBack` tinyint(1) DEFAULT NULL,
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
  `UserType` varchar(30) DEFAULT NULL,
  `Email` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `CellphoneNumber` varchar(225) NOT NULL,
  `Address` text DEFAULT NULL,
  `Password` varchar(25) NOT NULL,
  `CompanyId` varchar(225) DEFAULT NULL,
  `RoleId` int(10) DEFAULT NULL,
  `SecurityToken` varchar(225) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserType`, `Email`, `Name`, `Surname`, `CellphoneNumber`, `Address`, `Password`, `CompanyId`, `RoleId`, `SecurityToken`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0489dd05-c80d-11ea-8523-48f17f8d4d88', 'Business', 'info@style.con', 'Ndumiso', 'Mthembu', '', '', '12345', '048895c3-c80d-11ea-8523-48f17f8d4d88', 1, NULL, '2020-07-17 11:08:02', 'web', '2020-07-17 11:08:02', 'web', 1),
('c8ea3fb5-c9f7-11ea-ae4d-48f17f8d4d88', 'Business', 'info@zara.com', 'Ndu', '', '', '', '123456', 'c8e913aa-c9f7-11ea-ae4d-48f17f8d4d88', 1, NULL, '2020-07-19 21:41:05', 'web', '2020-07-19 21:41:05', 'web', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`ConfigId`);

--
-- Indexes for table `creditnote`
--
ALTER TABLE `creditnote`
  ADD PRIMARY KEY (`CreditnoteId`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ImageId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrdersId`);

--
-- Indexes for table `order_options`
--
ALTER TABLE `order_options`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`PartnerId`);

--
-- Indexes for table `permision_actions`
--
ALTER TABLE `permision_actions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`PermissionId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`QuoteId`);

--
-- Indexes for table `quotation_products`
--
ALTER TABLE `quotation_products`
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
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`SupportId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user_store`
--
ALTER TABLE `user_store`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_options`
--
ALTER TABLE `order_options`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `QuoteId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_store`
--
ALTER TABLE `user_store`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
