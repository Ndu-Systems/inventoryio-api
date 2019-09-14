-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2019 at 12:04 AM
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
-- Database: `inventoryiodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `AttributeId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
('57600c70-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Rolex', '2019-09-14 14:58:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 14:58:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Mercedece Benz', '2019-09-14 15:55:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:55:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7057ccf3-d40d-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Colt', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('745dacb7-d3f4-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 19:57:28', 'postman', '2019-09-10 19:57:28', 'postman', 1),
('8c143c75-d584-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Isuzu', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9f32cf78-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'Marvel', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('a0549079-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Audi', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ff011748-d40d-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'BMW', '2019-09-10 23:00:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:00:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catergory`
--

CREATE TABLE `catergory` (
  `CatergoryId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catergory`
--

INSERT INTO `catergory` (`CatergoryId`, `CompanyId`, `Name`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Van', '2019-09-10 23:00:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:00:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('157d625f-d65f-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Shoes', '2019-09-13 21:45:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 21:45:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sport', '2019-09-10 23:01:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:01:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Hatchback', '2019-09-10 22:25:52', 'postman', '2019-09-10 22:25:52', 'postman', 1),
('33785b3d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Sedan', '2019-09-10 22:25:59', 'postman', '2019-09-10 22:25:59', 'postman', 1),
('3dd53c98-d663-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '324', '2019-09-13 22:15:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:15:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Watch', '2019-09-14 14:58:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 14:58:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('84b84ba4-d3f5-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 20:05:05', 'postman', '2019-09-10 20:05:05', 'postman', 1),
('8aa30563-d3f5-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Hatchback', '2019-09-10 20:05:15', 'postman', '2019-09-10 20:05:15', 'postman', 1),
('a42e206b-d668-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'DDDDDDDD', '2019-09-13 22:54:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:54:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Wagon Sport', '2019-09-14 20:15:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cc7fc05c-d662-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sam', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'T-SHIRT', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `TelephoneNumber` varchar(20) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyId`, `Name`, `Website`, `TelephoneNumber`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('4523af94-d172-11e9-b97c-48f17f8d4d88', 'Factory Websites', 'websitesfactory.co.za', '0746958064', '2019-09-07 15:19:38', 'SYSTEM', '2019-09-07 15:19:38', 'SYSTEM', 1),
('94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'ndu-systems.net', '0842529472', '2019-09-07 15:07:32', 'SYSTEM', '2019-09-07 15:07:32', 'SYSTEM', 1),
('f972ae4e-d244-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'The Willaim', '011454545', '2019-09-08 16:27:44', '673267837128', '2019-09-08 16:27:44', 'SYSTEM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `ImageId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `OtherId` varchar(225) NOT NULL,
  `Url` text NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ImageId`, `CompanyId`, `OtherId`, `Url`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('2684e738-d73a-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', '1ff4af11-d73a-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568498036marvel.jpg', '2019-09-14 23:53:56', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:53:56', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('4e741665-d6f5-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568468461bmw.jpg', '2019-09-14 15:41:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:41:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5196285d-d739-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', '4816abad-d739-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568497679agentsofshield.jpg', '2019-09-14 23:47:59', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:47:59', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('571e9023-d6f0-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'bb5f9a84-d6ef-11e9-a5a1-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568466328Rolex Datejust 41 116334.jpg', '2019-09-14 15:05:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:05:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6c397364-d724-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568488704Golf.jpg', '2019-09-14 21:18:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 21:18:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6fde484c-d724-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/15684887103a785c9e-af47-4a52-bb74-0a2db5a0dab8.jpg', '2019-09-14 21:18:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 21:18:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8970a265-d739-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', '81ccc2d8-d739-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568497772avengers.jpg', '2019-09-14 23:49:33', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:49:33', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('91eb73b1-d6f0-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568466427rolex.jpg', '2019-09-14 15:07:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:07:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('933e1266-d6f7-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568469436amg.jpg', '2019-09-14 15:57:16', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:57:16', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c0202690-d71c-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568485409rs6-2.jpg', '2019-09-14 20:23:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:23:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c9ef23f9-d71c-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'd142a93c-d71b-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568485425rs6-2.jpg', '2019-09-14 20:23:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:23:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d99b0f96-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'd142a93c-d71b-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568485022rs6.jpg', '2019-09-14 20:17:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:17:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f530929c-d727-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568490222rolex2.jpg', '2019-09-14 21:43:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 21:43:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f6d46cdc-d739-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'efb7a14b-d739-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568497956spiderman.jpg', '2019-09-14 23:52:36', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:52:36', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrdersId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `ParntersId` varchar(225) DEFAULT NULL,
  `OrderType` varchar(100) NOT NULL,
  `Total` decimal(10,0) NOT NULL,
  `ExpectedDate` text,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrdersId`, `CompanyId`, `ParntersId`, `OrderType`, `Total`, `ExpectedDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('c5028951-d6ed-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1000', '', '2019-09-14 14:47:11', 'postman', '2019-09-14 14:47:11', 'postman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `Id` int(11) NOT NULL,
  `OrderId` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `Quantity` varchar(225) NOT NULL,
  `subTotal` decimal(10,0) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `Description` text,
  `UnitPrice` varchar(20) DEFAULT NULL,
  `UnitCost` decimal(10,0) DEFAULT '0',
  `Code` varchar(50) DEFAULT NULL,
  `SKU` varchar(20) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `LowStock` int(10) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `BrandId`, `CatergoryId`, `CompanyId`, `SupplierId`, `Name`, `Description`, `UnitPrice`, `UnitCost`, `Code`, `SKU`, `Quantity`, `LowStock`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('1ff4af11-d73a-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Marvel logo (Red)', 'Marvel Merchendise', '900', '700', '122454874521', '123456789540', 0, 0, '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('4816abad-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Agents ', 'News ', '500', '350', '12345487576321', '1234548757', 0, 0, '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '57600c70-d6ef-11e9-a5a1-c8f7501047dc', '5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 Flex Genie', 'New and exciting', '50000', '45000', '12345678142', '1234586', 0, 0, '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('62bdfb82-d724-11e9-a568-c8f7501047dc', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Golf GTI MK7', 'DSG GTI', '500000', '350000', '5877469857', '123456789', 0, 0, '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', 'ff011748-d40d-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 BMW - 330i (G20)', 'M-Sport Launch Edition Auto with 11000km', '749990', '600000', '334578641', '5605464', 0, 0, '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('81ccc2d8-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Avengers (black)', 'White logo A - Snap', '600', '400', '2134587651', '245878000', 0, 0, '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', '63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'AMG 45GL', '2019 Compact coupe convertable', '800000', '750000', '3657894115', '3657894115', 0, 0, '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d142a93c-d71b-11e9-a568-c8f7501047dc', 'a0549079-d71b-11e9-a568-c8f7501047dc', 'b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'RS6 V8 TSI', 'Turbo charged twin turbo', '600000', '450000', '123456785978', '12345784', 0, 0, '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('efb7a14b-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Spiderman Logo (Red)', 'Homecoming 2018 Merch', '500', '350', '12345678951', '12345678950', 0, 0, '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `Id` int(10) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `AttributeId` varchar(225) NOT NULL,
  `AttributeValue` varchar(200) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `Name`, `Surname`, `CellphoneNumber`, `Password`, `CompanyId`, `RoleId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('81de5b36-d170-11e9-b97c-48f17f8d4d88', 'ndu@mail.com', 'Ndumiso', '', '26784545', '1111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 1, '2019-09-07 15:07:58', 'web', '2019-09-07 15:07:34', 'web', 1),
('ba6257ea-d307-11e9-a45b-0050569fd205', 'freedom.khanyile1@gmail.com', 'Freedom', '', '0746958064', '1111', '4523af94-d172-11e9-b97c-48f17f8d4d88', 1, '2019-09-09 15:42:55', 'web', '2019-09-09 15:42:55', 'web', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_store`
--

CREATE TABLE `user_store` (
  `Id` int(10) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `StoreId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrdersId`);

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
