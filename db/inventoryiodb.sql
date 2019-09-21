-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Sep 21, 2019 at 02:20 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7
=======
-- Generation Time: Sep 15, 2019 at 12:04 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02

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
<<<<<<< HEAD
('9cd3f1f9-da41-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', 'Soft drinks', '2019-09-18 20:24:55', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:24:55', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('e5ac104d-da41-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', 'Cococola', '2019-09-18 20:26:57', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:26:57', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
=======
('9f32cf78-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'Marvel', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('a0549079-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Audi', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02
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
<<<<<<< HEAD
('cc7fc05c-d662-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sam', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ddf0f07c-da43-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', 'Fruits', '2019-09-18 20:41:03', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:41:03', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('ec07d17f-da41-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', 'Soft drinks', '2019-09-18 20:27:07', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:27:07', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1);
=======
('b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Wagon Sport', '2019-09-14 20:15:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cc7fc05c-d662-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sam', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'T-SHIRT', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1);
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02

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
<<<<<<< HEAD
('4523af94-d172-11e9-b97c-48f17f8d4d88', 'ds', 'ds', 's', '2019-09-07 15:19:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-07 15:19:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('857f1d2c-da41-11e9-8f19-48f17f8d4d88', 'Jozi Spazza', 'www.spazz.co.za', '07845455457', '2019-09-18 20:24:15', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:24:15', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'ndu-systems.net', '0842529472', '2019-09-07 15:07:32', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-07 15:07:32', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f972ae4e-d244-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'The Willaim', '011454545', '2019-09-08 16:27:44', '673267837128', '2019-09-08 16:27:44', '7382737283', 1);
=======
('4523af94-d172-11e9-b97c-48f17f8d4d88', 'Factory Websites', 'websitesfactory.co.za', '0746958064', '2019-09-07 15:19:38', 'SYSTEM', '2019-09-07 15:19:38', 'SYSTEM', 1),
('94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'ndu-systems.net', '0842529472', '2019-09-07 15:07:32', 'SYSTEM', '2019-09-07 15:07:32', 'SYSTEM', 1),
('f972ae4e-d244-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'The Willaim', '011454545', '2019-09-08 16:27:44', '673267837128', '2019-09-08 16:27:44', 'SYSTEM', 1);
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02

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
<<<<<<< HEAD
('0c6b5479-d6d2-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '46fd465c-d40e-11e9-9f95-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568453325620x349.webp', '2019-09-14 11:28:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 11:28:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('110f83ef-d6ca-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568449896620x349 (1).webp', '2019-09-14 10:31:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 10:31:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('13e9e6f8-db09-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '4e9d1dab-d65f-11e9-857f-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/156891676414572328_1105784546208763_379747298283873589_n.jpg', '2019-09-19 20:12:44', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:12:44', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3076ad51-d6e0-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '341a62c9-d38d-11e9-a3ca-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568459398200803-xl-irish-brown-bread.jpg', '2019-09-14 13:09:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 13:09:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3aabb151-d6e0-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '19d5d8ff-d256-11e9-b97c-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568459415a04cd3bceaa922890686dbe27220e115_1024x1024.webp', '2019-09-14 13:10:15', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 13:10:15', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('446e1bfc-d6e0-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568459431Coke-2L-Bottle.jpg', '2019-09-14 13:10:32', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 13:10:32', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('586c71f6-da42-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568831409a04cd3bceaa922890686dbe27220e115_1024x1024.webp', '2019-09-18 20:30:09', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:30:09', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('5a03690b-d6e3-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/156846075661-08aEJS8L._SX679_.jpg', '2019-09-14 13:32:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 13:32:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7726e185-d6dd-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568458228maxresdefault.jpg', '2019-09-14 12:50:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 12:50:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7c60b540-d6dd-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568458237volkswagen-polo-2015-961l.jpg', '2019-09-14 12:50:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 12:50:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c613679c-d681-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '0b03b46c-d40a-11e9-9f95-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568418847620x349.webp', '2019-09-14 01:54:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 01:54:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f377906b-da42-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', 'aa9b65d1-da42-11e9-8f19-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568831669200803-xl-irish-brown-bread.jpg', '2019-09-18 20:34:29', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:34:29', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('f9b7e24c-d6c9-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1568449857vw-up-gti-by-bb-automobiltechnik.jpg', '2019-09-14 10:30:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 10:30:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);
=======
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
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02

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
<<<<<<< HEAD
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
=======
  `ExpectedDate` text,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrdersId`, `CompanyId`, `ParntersId`, `OrderType`, `Total`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('01d48028-d995-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:49:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:49:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0b28f5bc-d991-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:20:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:20:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0d48d07f-d991-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:21:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:21:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0fdbe861-d991-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:21:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:21:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('15bf9de3-db0d-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '750000', '2019-09-19 20:41:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:41:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1756ce88-d995-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:49:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:49:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('195cda23-d9d7-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '57', '2019-09-18 07:42:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:42:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('196d945f-d9d8-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '57', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19c0ca1c-d98f-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '40', '2019-09-17 23:07:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:07:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', '', 'Sell', '445', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '57', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('27ffbdec-db17-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '100', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('28a96cf8-db09-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1596', '2019-09-19 20:13:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:13:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('29c62aec-d6ef-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1000', '2019-09-14 14:57:09', 'postman', '2019-09-14 14:57:09', 'postman', 1),
('32e432b2-db0c-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '500000', '2019-09-19 20:35:05', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:35:05', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('40b55fa8-d9d7-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '57', '2019-09-18 07:43:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:43:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('494779ff-db0d-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1000000', '2019-09-19 20:42:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4f9881ed-d988-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '0', '2019-09-17 22:18:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 22:18:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('50e8d91b-d988-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '0', '2019-09-17 22:18:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 22:18:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c75d725-db0e-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '500000', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5dc76c45-d991-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:23:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:23:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5fcec4b0-d991-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:23:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:23:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('620450c7-d991-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:23:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:23:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('68e3a143-d986-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1000', '2019-09-17 22:04:52', 'postman', '2019-09-17 22:04:52', 'postman', 1),
('749c9235-da52-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', '', 'Sell', '75', '2019-09-18 22:25:29', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 22:25:29', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('91572e59-d9d6-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '57', '2019-09-18 07:38:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:38:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e8ec07e-db15-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '95', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9f4b6f09-d995-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:53:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:53:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a7bc20db-d987-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '750000', '2019-09-17 22:13:46', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 22:13:46', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a9bbb992-d9d7-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '57', '2019-09-18 07:46:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:46:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aad24cd3-d994-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:46:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:46:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c33faac2-db0e-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '750000', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c5028951-d6ed-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1000', '2019-09-14 14:47:11', 'postman', '2019-09-14 14:47:11', 'postman', 1),
('cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '2902624', '2019-09-19 21:00:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d976c564-d994-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:48:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:48:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e4e6444a-d988-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '250000', '2019-09-17 22:22:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 22:22:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e748ba7b-db0c-11e9-889b-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1000000', '2019-09-19 20:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('eacfd91e-da44-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', '', 'Sell', '125', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('f5cf0d0d-d98f-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:13:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:13:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f7aa6cf0-d990-11e9-87f9-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '46', '2019-09-17 23:20:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-17 23:20:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `Id` varchar(225) NOT NULL,
  `OrderId` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `ProductName` text DEFAULT NULL,
  `UnitPrice` decimal(10,0) DEFAULT NULL,
  `Quantity` varchar(225) NOT NULL,
  `subTotal` decimal(10,0) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`Id`, `OrderId`, `ProductId`, `ProductName`, `UnitPrice`, `Quantity`, `subTotal`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('1975207d-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '25', '2', '40', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19756370-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', 'sasaS', '25', '3', '6', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19759d3d-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', '25', '1', '11', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1d586a06-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', '25', '5', '125', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d58ccbe-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '294bd779-da43-11e9-8f19-48f17f8d4d88', 'Coke 2l', '25', '5', '125', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d591892-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '45591137-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', '25', '6', '150', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d59464e-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', 'aa9b65d1-da42-11e9-8f19-48f17f8d4d88', 'Bread', '25', '3', '45', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('277c6652-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '25', '2', '40', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277ca77c-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', 'sasaS', '25', '3', '6', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277ce1fd-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', '25', '1', '11', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('280de48d-db17-11e9-889b-48f17f8d4d88', '27ffbdec-db17-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '20', '5', '100', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4ddb8fbb-db0d-11e9-889b-48f17f8d4d88', '494779ff-db0d-11e9-889b-48f17f8d4d88', '0b03b46c-d40a-11e9-9f95-48f17f8d4d88', 'Polo', '250000', '2', '500000', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4ddc6ef6-db0d-11e9-889b-48f17f8d4d88', '494779ff-db0d-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '2', '500000', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c8239e8-db0e-11e9-889b-48f17f8d4d88', '5c75d725-db0e-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '1', '250000', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c82c8f7-db0e-11e9-889b-48f17f8d4d88', '5c75d725-db0e-11e9-889b-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'UP', '250000', '1', '250000', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9c07b7-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '2L Fanta', '20', '2', '40', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9cd95c-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '20', '2', '40', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9d3066-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '341a62c9-d38d-11e9-a3ca-48f17f8d4d88', 'Brown bread', '15', '1', '15', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3517a61-db0e-11e9-889b-48f17f8d4d88', 'c33faac2-db0e-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '1', '250000', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3521d56-db0e-11e9-889b-48f17f8d4d88', 'c33faac2-db0e-11e9-889b-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'Black Polo TSI 1.2', '250000', '2', '500000', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbc78a8-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '0b03b46c-d40a-11e9-9f95-48f17f8d4d88', 'Polo', '250000', '2', '500000', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbd0ce7-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '2', '500000', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbd4987-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', '11', '2', '22', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbd8984-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'UP', '250000', '2', '500000', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbdd0af-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'Black Polo TSI 1.2', '250000', '2', '500000', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbe16f3-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '2L Fanta', '20', '2', '40', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbe5f26-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '2af16af1-d253-11e9-b97c-48f17f8d4d88', 'dad', '88', '1', '88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbea68b-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '20', '2', '40', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbee550-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '33e4fecf-d245-11e9-b97c-48f17f8d4d88', 'Bread', '15', '2', '30', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbf22f1-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '3c211e2a-d253-11e9-b97c-48f17f8d4d88', 'DSA', '1', '2', '2', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbf5dc4-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '46fd465c-d40e-11e9-9f95-48f17f8d4d88', 'amg 45', '450000', '2', '900000', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbf9a46-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '4e9d1dab-d65f-11e9-857f-48f17f8d4d88', 'Carvella', '1200', '2', '2400', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbfc692-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '535942fd-d253-11e9-b97c-48f17f8d4d88', 'WQ', '1', '2', '2', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ead5f52b-da44-11e9-8f19-48f17f8d4d88', 'eacfd91e-da44-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', '25', '5', '125', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1);

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
<<<<<<< HEAD
('0b03b46c-d40a-11e9-9f95-48f17f8d4d88', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Polo', '', '250000', '198000', '2', '2', 0, 0, '2019-09-10 22:32:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 22:32:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'sasaS', '', '2', '2', '2132', 'SD', 0, 0, '2019-09-10 07:51:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 07:51:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0f507307-d630-11e9-b692-48f17f8d4d88', '3f3427ab-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Yaris ', 'Orange toyota yaris', '250000', '175000', ' ', ' ', 0, 0, '2019-09-13 16:09:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 16:09:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1028ac34-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Suger', '', '11', '0', '11', '11', 0, 0, '2019-09-08 18:08:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:08:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('15489da7-d458-11e9-9269-48f17f8d4d88', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'UP', '', '250000', '198000', '11 222 55 4485', '125487', 0, 0, '2019-09-11 07:50:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-11 07:50:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('159bb35f-d4ce-11e9-9492-48f17f8d4d88', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Black Polo TSI 1.2', '', '250000', '210000', '1545', '15', 0, 0, '2019-09-11 21:55:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-11 21:55:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2L Fanta', '', '20', '0', '111', '111', 20, 20, '2019-09-08 18:30:20', 'postman', '2019-09-08 18:30:20', 'postman', 1),
('25823c2f-d3f4-11e9-9f95-48f17f8d4d88', NULL, NULL, '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'VW', '', NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-10 19:55:16', 'postman', '2019-09-10 19:55:16', 'postman', 1),
('271800b9-d256-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2L Coke', '', '20', '0', '111', '111', 20, 20, '2019-09-08 18:30:42', 'postman', '2019-09-08 18:30:42', 'postman', 1),
('294bd779-da43-11e9-8f19-48f17f8d4d88', 'e5ac104d-da41-11e9-8f19-48f17f8d4d88', '', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', NULL, 'Coke 2l', ' ', '25', '18', ' ', ' ', 0, 0, '2019-09-18 20:36:00', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:36:00', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('2af16af1-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'dad', '', '88', '0', 'NMN', 'NMN', 0, 0, '2019-09-08 18:09:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:09:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'e5ac104d-da41-11e9-8f19-48f17f8d4d88', 'ec07d17f-da41-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', NULL, 'Fanta orange 2l', 'Fanta orange 2l', '25', '18', ' 432', ' 432', 0, 0, '2019-09-18 20:28:54', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:28:54', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('33e4fecf-d245-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Bread', '', '15', '0', '11 888 88 77545 487878', '11', 0, 0, '2019-09-08 16:29:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 16:29:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('341a62c9-d38d-11e9-a3ca-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Brown bread', '', '15', '10', '666 777 77878 12', '666', 0, 0, '2019-09-10 07:38:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 07:38:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3c211e2a-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'DSA', '', '1', '0', '1', '1', 0, 0, '2019-09-08 18:09:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:09:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('45591137-da42-11e9-8f19-48f17f8d4d88', 'e5ac104d-da41-11e9-8f19-48f17f8d4d88', 'ec07d17f-da41-11e9-8f19-48f17f8d4d88', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', NULL, 'Fanta orange 2l', 'Fanta orange 2l', '25', '18', ' 432', ' 432', 0, 0, '2019-09-18 20:29:37', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:29:37', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('46fd465c-d40e-11e9-9f95-48f17f8d4d88', '22460081-d40e-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'amg 45', '', '450000', '420000', '1122', '123', 0, 0, '2019-09-10 23:02:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:02:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4e9d1dab-d65f-11e9-857f-48f17f8d4d88', '', '157d625f-d65f-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Carvella', 'Black carvela  cago', '1200', '750', '787382131', '7832', 0, 0, '2019-09-13 21:47:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 21:47:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5013b0ea-d245-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2L Sprite', '', '20', '0', '111', '111', 20, 20, '2019-09-08 16:30:09', 'postman', '2019-09-08 16:30:09', 'postman', 1),
('535942fd-d253-11e9-b97c-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'WQ', '', '1', '0', 'DS', 'DS', 0, 0, '2019-09-08 18:10:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-08 18:10:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('57fbb27a-d668-11e9-857f-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'test333', 'test333', '444', '344', '32', '243', 0, 0, '2019-09-13 22:52:05', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:52:05', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('58320d0e-d630-11e9-b692-48f17f8d4d88', '256f9dc6-d58b-11e9-a017-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'sasas', 's', '2', '1', '2', '2', 0, 0, '2019-09-13 16:11:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 16:11:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8127ec68-d331-11e9-8a1a-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Polo Vivo', '', '2000000', '1580000', '4455555 45451 4545 4545', '154545', 0, 0, '2019-09-09 20:41:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-09 20:41:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('831f0928-d664-11e9-857f-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'test11', 'test1', '22', '11', '222', '11', 0, 0, '2019-09-13 22:24:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:24:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8ae4a833-d38e-11e9-a3ca-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'eew', '', '222', '222', '2222 434', '22', 0, 0, '2019-09-10 07:47:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 07:47:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9283553a-d604-11e9-a3ca-48f17f8d4d88', '7057ccf3-d40d-11e9-9f95-48f17f8d4d88', '066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'test aboservable', 'test', '55', '0', '0', '0', 0, 0, '2019-09-13 10:57:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 10:57:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a409a04c-da43-11e9-8f19-48f17f8d4d88', '', '', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', NULL, 'grapes', ' ', '15', '10', ' ', ' ', 0, 0, '2019-09-18 20:39:26', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:39:26', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('a707c2c4-d584-11e9-a017-48f17f8d4d88', '8c143c75-d584-11e9-a017-48f17f8d4d88', '066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'KB', '', '250000', '18000', ' ', ' ', 0, 0, '2019-09-12 19:42:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 19:42:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aa9b65d1-da42-11e9-8f19-48f17f8d4d88', '', '', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', NULL, 'Bread', 'brown bread', '15', '13', ' ', ' ', 0, 0, '2019-09-18 20:32:27', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:32:27', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('b57bc683-d66f-11e9-857f-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'tesy', 'tesy', '33', '12', '31312c 23423', '1212', 0, 0, '2019-09-13 23:44:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 23:44:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('eb1a5f1a-d666-11e9-857f-48f17f8d4d88', '256f9dc6-d58b-11e9-a017-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'test22', 'test22', '222', '22', '2', '2', 0, 0, '2019-09-13 22:41:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:41:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);
=======
('1ff4af11-d73a-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Marvel logo (Red)', 'Marvel Merchendise', '900', '700', '122454874521', '123456789540', 0, 0, '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('4816abad-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Agents ', 'News ', '500', '350', '12345487576321', '1234548757', 0, 0, '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '57600c70-d6ef-11e9-a5a1-c8f7501047dc', '5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 Flex Genie', 'New and exciting', '50000', '45000', '12345678142', '1234586', 0, 0, '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('62bdfb82-d724-11e9-a568-c8f7501047dc', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Golf GTI MK7', 'DSG GTI', '500000', '350000', '5877469857', '123456789', 0, 0, '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', 'ff011748-d40d-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 BMW - 330i (G20)', 'M-Sport Launch Edition Auto with 11000km', '749990', '600000', '334578641', '5605464', 0, 0, '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('81ccc2d8-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Avengers (black)', 'White logo A - Snap', '600', '400', '2134587651', '245878000', 0, 0, '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', '63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'AMG 45GL', '2019 Compact coupe convertable', '800000', '750000', '3657894115', '3657894115', 0, 0, '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d142a93c-d71b-11e9-a568-c8f7501047dc', 'a0549079-d71b-11e9-a568-c8f7501047dc', 'b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'RS6 V8 TSI', 'Turbo charged twin turbo', '600000', '450000', '123456785978', '12345784', 0, 0, '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('efb7a14b-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Spiderman Logo (Red)', 'Homecoming 2018 Merch', '500', '350', '12345678951', '12345678950', 0, 0, '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1);
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02

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
<<<<<<< HEAD
('3136116d-da17-11e9-87f9-48f17f8d4d88', 'ds@dsfd', 'ewqe', '', '3232', '2222', '', 1, '2019-09-18 15:21:15', 'web', '2019-09-18 15:21:15', 'web', 1),
('418bddd5-da19-11e9-87f9-48f17f8d4d88', 'dsa@dad', 'dsad', '', '23243', '1111', '', 1, '2019-09-18 15:36:01', 'web', '2019-09-18 15:36:01', 'web', 1),
('81de5b36-d170-11e9-b97c-48f17f8d4d88', 'ndu@mail.com', 'Ndumiso', '', '26784545', '1111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 1, '2019-09-07 15:07:58', 'web', '2019-09-18 15:43:22', 'web', 1),
('8c8b0019-d65e-11e9-857f-48f17f8d4d88', 'john@mail.com', 'John', 'Doe', '065454545', 'pass', '', 1, '2019-09-13 21:41:58', 'web', '2019-09-13 21:41:58', 'web', 1),
('9305d506-da17-11e9-87f9-48f17f8d4d88', 'dsfds@dsfds', 'dsds', '', '3233', '1111', '', 1, '2019-09-18 15:23:59', 'web', '2019-09-18 15:25:18', 'web', 1),
('b069dca0-da19-11e9-87f9-48f17f8d4d88', 'sma@mail.com', 'Sma', '', 'Lee', '1111', '857f1d2c-da41-11e9-8f19-48f17f8d4d88', 1, '2019-09-18 15:39:07', 'web', '2019-09-18 20:24:15', 'web', 1),
('d42b28cf-da18-11e9-87f9-48f17f8d4d88', 'dsa@das', 'dsadsa', '', '321321', 'eeee', '', 1, '2019-09-18 15:32:58', 'web', '2019-09-18 15:35:16', 'web', 1),
('e8118720-da16-11e9-87f9-48f17f8d4d88', 'themba@mail.com', 'Themba', '', '15454545', 'pass', '', 1, '2019-09-18 15:19:12', 'web', '2019-09-18 15:19:12', 'web', 1);
=======
('81de5b36-d170-11e9-b97c-48f17f8d4d88', 'ndu@mail.com', 'Ndumiso', '', '26784545', '1111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 1, '2019-09-07 15:07:58', 'web', '2019-09-07 15:07:34', 'web', 1),
('ba6257ea-d307-11e9-a45b-0050569fd205', 'freedom.khanyile1@gmail.com', 'Freedom', '', '0746958064', '1111', '4523af94-d172-11e9-b97c-48f17f8d4d88', 1, '2019-09-09 15:42:55', 'web', '2019-09-09 15:42:55', 'web', 1);
>>>>>>> 98a3b4803415999a6b993d251094232822fb3a02

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
