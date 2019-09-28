-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 09:54 AM
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
('124ac938-e130-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'w', '2019-09-27 16:06:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 16:06:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('22460081-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'merc', '2019-09-10 23:01:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:01:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('256f9dc6-d58b-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'KIA', '2019-09-12 20:28:41', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 20:28:41', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2a13f21d-dfde-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Germex', '2019-09-25 23:48:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 23:48:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 0),
('394a1196-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 22:26:09', 'postman', '2019-09-10 22:26:09', 'postman', 1),
('3f3427ab-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Toyota', '2019-09-10 22:26:19', 'postman', '2019-09-10 22:26:19', 'postman', 1),
('57600c70-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Rolex', '2019-09-14 14:58:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 14:58:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Mercedece Benz', '2019-09-14 15:55:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:55:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7057ccf3-d40d-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Colt', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('745dacb7-d3f4-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 19:57:28', 'postman', '2019-09-10 19:57:28', 'postman', 1),
('75a04f90-e12f-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Test', '2019-09-27 16:02:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 16:02:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8c143c75-d584-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Isuzu', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9f32cf78-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'Marvel', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('a0549079-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Audi', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a322b855-e175-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'TEst1', '2019-09-28 00:24:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 00:24:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c48bbf2e-e175-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'testqqq', '2019-09-28 00:25:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 00:25:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c57b6b5d-e159-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Bluesil', '2019-09-27 21:05:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:05:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d7983423-e175-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'da', '2019-09-28 00:26:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 00:26:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d82d1c4d-e12f-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'New bb', '2019-09-27 16:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 16:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
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
('d06f91a1-e159-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Body', '2019-09-27 21:05:47', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:05:47', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'T-SHIRT', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('d7145d3e-dfbc-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'clothing', '2019-09-25 19:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
('4523af94-d172-11e9-b97c-48f17f8d4d88', 'Factory Websites', 'websitesfactory.co.za', '0746958064', '2019-09-07 15:19:38', 'SYSTEM', '2019-09-07 15:19:38', 'SYSTEM', 1),
('94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'ndu-systems.net', '0842529472', '2019-09-07 15:07:32', 'SYSTEM', '2019-09-07 15:07:32', 'SYSTEM', 1),
('f972ae4e-d244-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'The Willaim', '011454545', '2019-09-08 16:27:44', '673267837128', '2019-09-08 16:27:44', 'SYSTEM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `ConfigId` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Value` varchar(100) NOT NULL,
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

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ImageId`, `CompanyId`, `OtherId`, `Url`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('21994cd1-dfbe-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'f7f77f35-dfbc-11e9-850f-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569434331Capture.PNG', '2019-09-25 19:58:51', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:41:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 2),
('23e1ef76-dea4-11e9-adb6-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569313204homepage_new_datejust_36_0001_1050x825.webp', '2019-09-24 10:20:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 10:20:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('29562e84-e062-11e9-aa8a-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569504781Capture.PNG', '2019-09-26 15:33:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 15:41:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 2),
('3b2b9b07-dfbc-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569433515RE1Yevk.png', '2019-09-25 19:45:15', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:45:15', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4a0762d4-e15a-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'd6b01266-e159-11e9-9302-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569611351VAJ100-1.jpg', '2019-09-27 21:09:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:09:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5514c077-e15a-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'd6b01266-e159-11e9-9302-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569611370VAJ100-1.jpg', '2019-09-27 21:09:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:09:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 2),
('629139d2-dfbe-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'f7f77f35-dfbc-11e9-850f-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569434440Capture.PNG', '2019-09-25 20:00:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:40:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 2),
('85894c35-df08-11e9-a724-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569356330SGN0724.jpg', '2019-09-24 22:18:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:18:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d263c1e3-df08-11e9-a724-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569356459BrandImage.dib', '2019-09-24 22:20:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:20:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d5b5cc5a-dea3-11e9-adb6-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'http://localhost:8200/inventoryio-api/api/upload/uploads/156931307317090315.jpg', '2019-09-24 10:17:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 10:17:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d64b245d-dedd-11e9-a724-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'http://localhost:8200/inventoryio-api/api/upload/uploads/1569337997200803-xl-irish-brown-bread.jpg', '2019-09-24 17:13:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 17:13:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrdersId` varchar(225) NOT NULL,
  `OrderId` int(10) NOT NULL,
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
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrdersId`, `OrderId`, `CompanyId`, `ParntersId`, `OrderType`, `Total`, `Paid`, `Due`, `ExpectedDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('d471c766-e0ea-11e9-993f-48f17f8d4d88', 10, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '100187', '100187', '0', NULL, '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d75de234-e0ea-11e9-993f-48f17f8d4d88', 11, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1100000', '1100000', '0', NULL, '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:16', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('da3d1629-e0ea-11e9-993f-48f17f8d4d88', 12, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '2499980', '2499980', '0', NULL, '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b5c30fb6-e15a-11e9-9302-48f17f8d4d88', 13, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', '1350600', '0', '1350600', NULL, '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`Id`, `OrderId`, `ProductId`, `ProductName`, `UnitPrice`, `Quantity`, `subTotal`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0008e665-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('00097e62-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0009b88f-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '1', '500000', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0009f077-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', 'c54e67a9-dd62-11e9-8ffb-c8f7501047dc', 'BMW M3', '2500000', '1', '2500000', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('000a22e7-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', 'AMG 45GL', '800000', '1', '800000', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('000a8879-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', '749990', '1', '749990', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('04caae7b-dc88-11e9-9da6-c8f7501047dc', '04c3fad2-dc88-11e9-9da6-c8f7501047dc', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '1', '500000', '2019-09-21 17:53:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 17:53:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0a2483a1-dfbb-11e9-850f-48f17f8d4d88', '0a19dac0-dfbb-11e9-850f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-25 19:36:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:36:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0ce9a2ec-de09-11e9-adb6-48f17f8d4d88', '0ce4977b-de09-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0cea4583-de09-11e9-adb6-48f17f8d4d88', '0ce4977b-de09-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0cea7c4f-de09-11e9-adb6-48f17f8d4d88', '0ce4977b-de09-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '2', '1000000', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1975207d-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '25', '2', '40', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19756370-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', 'sasaS', '25', '3', '6', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19759d3d-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', '25', '1', '11', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1d586a06-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', '25', '5', '125', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d58ccbe-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '294bd779-da43-11e9-8f19-48f17f8d4d88', 'Coke 2l', '25', '5', '125', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d591892-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '45591137-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', '25', '6', '150', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d59464e-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', 'aa9b65d1-da42-11e9-8f19-48f17f8d4d88', 'Bread', '25', '3', '45', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('221a299d-dc7d-11e9-84fb-c8f7501047dc', '22147e50-dc7d-11e9-84fb-c8f7501047dc', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '1', '500000', '2019-09-21 16:36:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 16:36:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277c6652-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '25', '2', '40', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277ca77c-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', 'sasaS', '25', '3', '6', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277ce1fd-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', '25', '1', '11', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('280de48d-db17-11e9-889b-48f17f8d4d88', '27ffbdec-db17-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '20', '5', '100', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2b91db93-de07-11e9-adb6-48f17f8d4d88', '2b8d4070-de07-11e9-adb6-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', '749990', '1', '749990', '2019-09-23 15:36:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:36:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3dffc3ba-dea4-11e9-adb6-48f17f8d4d88', '3df69136-dea4-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3e002c3b-dea4-11e9-adb6-48f17f8d4d88', '3df69136-dea4-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '1', '500000', '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('47e2d033-dd32-11e9-8ffb-c8f7501047dc', '47db4965-dd32-11e9-8ffb-c8f7501047dc', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('47e3d56e-dd32-11e9-8ffb-c8f7501047dc', '47db4965-dd32-11e9-8ffb-c8f7501047dc', 'd142a93c-d71b-11e9-a568-c8f7501047dc', 'RS6 V8 TSI', '600000', '1', '600000', '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4ddb8fbb-db0d-11e9-889b-48f17f8d4d88', '494779ff-db0d-11e9-889b-48f17f8d4d88', '0b03b46c-d40a-11e9-9f95-48f17f8d4d88', 'Polo', '250000', '2', '500000', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4ddc6ef6-db0d-11e9-889b-48f17f8d4d88', '494779ff-db0d-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '2', '500000', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('59538a12-e097-11e9-993f-48f17f8d4d88', '5949f09f-e097-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-26 21:53:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:53:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('598be9fd-ded8-11e9-adb6-48f17f8d4d88', '5985c3d1-ded8-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-24 16:33:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:33:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c8239e8-db0e-11e9-889b-48f17f8d4d88', '5c75d725-db0e-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '1', '250000', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c82c8f7-db0e-11e9-889b-48f17f8d4d88', '5c75d725-db0e-11e9-889b-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'UP', '250000', '1', '250000', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('663cf57d-de12-11e9-adb6-48f17f8d4d88', '663290b7-de12-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '2', '1000000', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('663d5717-de12-11e9-adb6-48f17f8d4d88', '663290b7-de12-11e9-adb6-48f17f8d4d88', '8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', 'AMG 45GL', '800000', '1', '800000', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('663da89f-de12-11e9-adb6-48f17f8d4d88', '663290b7-de12-11e9-adb6-48f17f8d4d88', 'c54e67a9-dd62-11e9-8ffb-c8f7501047dc', 'BMW M3', '2500000', '5', '12500000', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('66a7cbd2-de11-11e9-adb6-48f17f8d4d88', '669d1fdf-de11-11e9-adb6-48f17f8d4d88', 'd142a93c-d71b-11e9-a568-c8f7501047dc', 'RS6 V8 TSI', '600000', '3', '1800000', '2019-09-23 16:49:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:49:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6a328bb4-e0e8-11e9-993f-48f17f8d4d88', '6a272ddf-e0e8-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '3', '150000', '2019-09-27 07:34:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:34:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('70da3588-e0e8-11e9-993f-48f17f8d4d88', '70cfedce-e0e8-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '2', '300', '2019-09-27 07:34:14', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:34:14', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('77bf4f95-dfba-11e9-850f-48f17f8d4d88', '77b4bb76-dfba-11e9-850f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', '37', '1', '37', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('77c0fa45-dfba-11e9-850f-48f17f8d4d88', '77b4bb76-dfba-11e9-850f-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', '75', '1', '75', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('77c14155-dfba-11e9-850f-48f17f8d4d88', '77b4bb76-dfba-11e9-850f-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', '20', '4', '80', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('82b100ee-e098-11e9-993f-48f17f8d4d88', '82a84fe1-e098-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-26 22:02:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:02:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('87859e03-e098-11e9-993f-48f17f8d4d88', '87786b1c-e098-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '3', '450', '2019-09-26 22:02:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:02:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('90524e98-dfbe-11e9-850f-48f17f8d4d88', '904adb03-dfbe-11e9-850f-48f17f8d4d88', 'f7f77f35-dfbc-11e9-850f-48f17f8d4d88', 'Swimwear', '350', '3', '1050', '2019-09-25 20:01:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 20:01:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9684dc00-e0e8-11e9-993f-48f17f8d4d88', '967c0832-e0e8-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-27 07:35:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:35:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9715099d-e0e9-11e9-993f-48f17f8d4d88', '97082092-e0e9-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-27 07:42:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:42:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9c08e7d8-e0ea-11e9-993f-48f17f8d4d88', '9c006182-e0ea-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-27 07:49:46', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:49:46', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e21a2e6-e097-11e9-993f-48f17f8d4d88', '9e18d5a2-e097-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-26 21:55:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:55:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9c07b7-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '2L Fanta', '20', '2', '40', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9cd95c-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', '20', '2', '40', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9d3066-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '341a62c9-d38d-11e9-a3ca-48f17f8d4d88', 'Brown bread', '15', '1', '15', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aa5bf7fd-dc97-11e9-9da6-c8f7501047dc', 'aa508ac6-dc97-11e9-9da6-c8f7501047dc', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-21 19:45:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 19:45:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b2c7efc5-de98-11e9-adb6-48f17f8d4d88', 'b2c10452-de98-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-24 08:58:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 08:58:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b40bcd1e-e097-11e9-993f-48f17f8d4d88', 'b402bfbe-e097-11e9-993f-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', '749990', '1', '749990', '2019-09-26 21:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b5cc45a0-e15a-11e9-9302-48f17f8d4d88', 'b5c30fb6-e15a-11e9-9302-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '4', '600', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b5cd3433-e15a-11e9-9302-48f17f8d4d88', 'b5c30fb6-e15a-11e9-9302-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '450000', '3', '1350000', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b91074dc-ddf8-11e9-adb6-48f17f8d4d88', 'b90c541a-ddf8-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-23 13:53:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 13:53:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('bc3cf54d-e0e8-11e9-993f-48f17f8d4d88', 'bc34e3da-e0e8-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-27 07:36:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:36:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('bc611332-e097-11e9-993f-48f17f8d4d88', 'bc5772ae-e097-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-26 21:56:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:56:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c1864c38-e0e8-11e9-993f-48f17f8d4d88', 'c17c8582-e0e8-11e9-993f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '1', '500000', '2019-09-27 07:36:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:36:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3517a61-db0e-11e9-889b-48f17f8d4d88', 'c33faac2-db0e-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', '250000', '1', '250000', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3521d56-db0e-11e9-889b-48f17f8d4d88', 'c33faac2-db0e-11e9-889b-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'Black Polo TSI 1.2', '250000', '2', '500000', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3af059d-dfba-11e9-850f-48f17f8d4d88', 'c3a6a8a6-dfba-11e9-850f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '2', '1000000', '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3afbf56-dfba-11e9-850f-48f17f8d4d88', 'c3a6a8a6-dfba-11e9-850f-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', '749990', '1', '749990', '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
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
('d478ef7c-e0ea-11e9-993f-48f17f8d4d88', 'd471c766-e0ea-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d479490f-e0ea-11e9-993f-48f17f8d4d88', 'd471c766-e0ea-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d479cb33-e0ea-11e9-993f-48f17f8d4d88', 'd471c766-e0ea-11e9-993f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', '37', '1', '37', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d765b0cd-e0ea-11e9-993f-48f17f8d4d88', 'd75de234-e0ea-11e9-993f-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d7662ed9-e0ea-11e9-993f-48f17f8d4d88', 'd75de234-e0ea-11e9-993f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '2', '1000000', '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d78e7f26-df08-11e9-a724-48f17f8d4d88', 'd788f387-df08-11e9-a724-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', '37', '11', '407', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d78f87a4-df08-11e9-a724-48f17f8d4d88', 'd788f387-df08-11e9-a724-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', '20', '2', '40', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d790bdf8-df08-11e9-a724-48f17f8d4d88', 'd788f387-df08-11e9-a724-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', '75', '1', '75', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('da461458-e0ea-11e9-993f-48f17f8d4d88', 'da3d1629-e0ea-11e9-993f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '2', '1000000', '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('da466768-e0ea-11e9-993f-48f17f8d4d88', 'da3d1629-e0ea-11e9-993f-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', '749990', '2', '1499980', '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('dc4b8a0c-dedd-11e9-a724-48f17f8d4d88', 'dc45da6b-dedd-11e9-a724-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', '20', '2', '40', '2019-09-24 17:13:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 17:13:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e43cefa8-e0e7-11e9-993f-48f17f8d4d88', 'e436ec4a-e0e7-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-27 07:30:19', '50150', '2019-09-27 07:30:19', '50150', 1),
('e43d2ffa-e0e7-11e9-993f-48f17f8d4d88', 'e436ec4a-e0e7-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-27 07:30:19', '50150', '2019-09-27 07:30:19', '50150', 1),
('e59b6cbe-dc7b-11e9-84fb-c8f7501047dc', 'e592db2d-dc7b-11e9-84fb-c8f7501047dc', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '1', '50000', '2019-09-21 16:27:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 16:27:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e74a85fe-e0e7-11e9-993f-48f17f8d4d88', 'e745ac24-e0e7-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', '150', '1', '150', '2019-09-27 07:30:24', '187', '2019-09-27 07:30:24', '187', 1),
('e74af62e-e0e7-11e9-993f-48f17f8d4d88', 'e745ac24-e0e7-11e9-993f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', '37', '1', '37', '2019-09-27 07:30:24', '187', '2019-09-27 07:30:24', '187', 1),
('ead5f52b-da44-11e9-8f19-48f17f8d4d88', 'eacfd91e-da44-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', '25', '5', '125', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('ec7bb2bd-e098-11e9-993f-48f17f8d4d88', 'ec74312a-e098-11e9-993f-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', '75', '1', '75', '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ec7c0794-e098-11e9-993f-48f17f8d4d88', 'ec74312a-e098-11e9-993f-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', '20', '1', '20', '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f139cff8-dfbe-11e9-850f-48f17f8d4d88', 'f1305af7-dfbe-11e9-850f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', '37', '1', '37', '2019-09-25 20:04:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 20:04:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f46c7abf-de13-11e9-adb6-48f17f8d4d88', 'f4673a17-de13-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f46ce54d-de13-11e9-adb6-48f17f8d4d88', 'f4673a17-de13-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', '50000', '3', '150000', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f46d4ecd-de13-11e9-adb6-48f17f8d4d88', 'f4673a17-de13-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', '500000', '3', '1500000', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('fe8b4e29-dc7b-11e9-84fb-c8f7501047dc', 'fe82e06e-dc7b-11e9-84fb-c8f7501047dc', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', '50000', '2', '100000', '2019-09-21 16:27:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 16:27:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
('1265be58-dc8e-11e9-9da6-c8f7501047dc', 'can_sell_products', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 18:37:16', 'SYS', '2019-09-21 18:37:16', 'SYS', 1),
('60dde6f1-dd5d-11e9-8ffb-c8f7501047dc', 'can_read_products', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 19:21:06', 'SYS', '2019-09-22 19:21:06', 'SYS', 1),
('da59f011-dc8e-11e9-9da6-c8f7501047dc', 'can_order_products', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 18:42:51', 'SYS', '2019-09-22 19:20:43', 'SYS', 1);

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
('0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '57600c70-d6ef-11e9-a5a1-c8f7501047dc', '5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 Flex Genie', 'New and exciting', '450000', '41000', '1234567814', '1234586', 0, 0, '2019-09-21 15:45:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 15:19:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1ff4af11-d73a-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Marvel logo (Red)', 'Marvel Merchendise', '900', '700', '122454874521', '123456789540', 0, 0, '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('2126dad9-df0a-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Mouse', ' ', '150', '120', '', 'd', 1, 0, '2019-09-24 22:30:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:30:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('417ffc60-df08-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Peri peri source', ' xxx hot Peri peri source', '37', '25', '', 'HSC', 10, 5, '2019-09-24 22:16:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:16:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4816abad-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Agents ', 'News ', '500', '350', '12345487576321', '1234548757', 0, 0, '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '57600c70-d6ef-11e9-a5a1-c8f7501047dc', '5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 Flex Genie', 'New and exciting', '50000', '45000', '12345678142', '1234586', 0, 0, '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('62bdfb82-d724-11e9-a568-c8f7501047dc', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Golf GTI MK7', 'DSG GTI', '500000', '350000', '5877469857', '123456789', 0, 0, '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', 'ff011748-d40d-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 BMW - 330i (G20)', 'M-Sport Launch Edition Auto with 11000km', '749990', '600000', '334578641', '5605464', 0, 0, '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('81ccc2d8-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Avengers (black)', 'White logo A - Snap', '600', '400', '2134587651', '245878000', 0, 0, '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', '63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'AMG 45GL', '2019 Compact coupe convertable', '800000', '750000', '3657894115', '3657894115', 0, 0, '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aa4825ec-df08-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '60 Eggs', ' 60 Lg Eggs', '75', '45', '', 'EGGZ1', 20, 10, '2019-09-24 22:19:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:19:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c13b768a-dedd-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Bread', 'Bread', '20', '12', ' ', ' ', 0, 0, '2019-09-24 17:12:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 17:12:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c54e67a9-dd62-11e9-8ffb-c8f7501047dc', 'ff011748-d40d-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'BMW M3', '2020 BMW M3 Competion Pack', '2500000', '1500000', '852369741', '963258741', 0, 0, '2019-09-22 19:59:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 19:59:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d142a93c-d71b-11e9-a568-c8f7501047dc', 'a0549079-d71b-11e9-a568-c8f7501047dc', 'b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'RS6 V8 TSI', 'Turbo charged twin turbo', '600000', '450000', '123456785978', '12345784', 0, 0, '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d6b01266-e159-11e9-9302-48f17f8d4d88', 'c57b6b5d-e159-11e9-9302-48f17f8d4d88', 'd06f91a1-e159-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Vaseline', ' ', '12', '8', '', '#v123', 1, 0, '2019-09-27 21:05:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:05:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('efb7a14b-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Spiderman Logo (Red)', 'Homecoming 2018 Merch', '500', '350', '12345678951', '12345678950', 0, 0, '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('f7f77f35-dfbc-11e9-850f-48f17f8d4d88', '', 'd7145d3e-dfbc-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Swimwear', ' Swimwear', '350', '200', '', '121212', 5, 2, '2019-09-25 19:50:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:50:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
(1, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Owner', '2019-09-07 15:12:32', 'sys', '2019-09-07 15:12:32', 'sys', 1),
(2, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Manager', '2019-09-22 19:19:00', 'sys', '2019-09-22 19:19:00', 'sys', 1),
(3, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Assistant ', '2019-09-24 17:07:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 17:07:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
(1, 2, 'df160233-dca7-11e9-9da6-c8f7501047dc', '2019-09-22 19:13:16', 'sys', '2019-09-22 19:13:16', 'sys', 1),
(2, 2, '1265be58-dc8e-11e9-9da6-c8f7501047dc', '2019-09-22 19:21:33', 'sys', '2019-09-22 19:21:33', 'sys', 1),
(3, 2, '60dde6f1-dd5d-11e9-8ffb-c8f7501047dc', '2019-09-22 19:21:53', 'sys', '2019-09-22 19:21:53', 'sys', 1),
(4, 1, 'da59f011-dc8e-11e9-9da6-c8f7501047dc', '2019-09-22 19:22:18', 'sys', '2019-09-22 19:22:18', 'sys', 1),
(5, 1, '60dde6f1-dd5d-11e9-8ffb-c8f7501047dc', '2019-09-22 19:22:37', 'sys', '2019-09-22 19:22:37', 'sys', 1),
(6, 1, '1265be58-dc8e-11e9-9da6-c8f7501047dc', '2019-09-22 19:23:06', 'sys', '2019-09-22 19:23:06', 'sys', 1);

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

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`StoreId`, `Name`, `Address`, `TelephoneNumber`, `CompanyId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('9a8252d4-dd5c-11e9-8ffb-c8f7501047dc', 'Ndu Systems Sandton', 'Sandton City, 2500', '011560054', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 19:15:34', 'sys', '2019-09-22 19:18:04', 'sys', 1),
('adb5d410-dd5c-11e9-8ffb-c8f7501047dc', 'Ndu Systems Durban', 'Umhlanga rocks, 3001', '011560054', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 19:16:06', 'sys', '2019-09-22 19:16:06', 'sys', 1),
('6976f494-dedb-11e9-adb6-48f17f8d4d88', 'Ndu Systems Four ways mall', 'not set', '0444545574', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:55:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:55:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('72e79cd8-e09b-11e9-993f-48f17f8d4d88', 'AA', 'not set', '12', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:23:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:23:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `Name`, `Surname`, `CellphoneNumber`, `Password`, `CompanyId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('81de5b36-d170-11e9-b97c-48f17f8d4d88', 'ndu@mail.com', 'Ndumiso', '', '26784545', '111111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-07 15:07:58', 'web', '2019-09-27 23:24:09', 'web', 1),
('ba6257ea-d307-11e9-a45b-0050569fd205', 'freedom.khanyile1@gmail.com', 'Freedom', '', '0746958064', '1111', '4523af94-d172-11e9-b97c-48f17f8d4d88', '2019-09-09 15:42:55', 'web', '2019-09-09 15:42:55', 'web', 1),
('fc3b79be-e161-11e9-9302-48f17f8d4d88', 'tebaza@mai.com', 'Tebza', '', '787878787', '6666', '', '2019-09-27 22:04:17', 'web', '2019-09-27 22:04:17', 'web', 1),
('fe045d55-dc80-11e9-84fb-c8f7501047dc', 'ndu.systems@gmail.com', 'Zwide', 'Nxumalo', '27746958064', '12345', NULL, '2019-09-21 17:03:38', 'web', '2019-09-21 17:03:38', 'web', 1),
('fe806151-e09b-11e9-993f-48f17f8d4d88', 'test@mail', 'Test', 'test', '713821321', '1111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:27:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:27:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`Id`, `UserId`, `RoleId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, 'ba6257ea-d307-11e9-a45b-0050569fd205', 1, '2019-09-22 19:24:17', 'sys', '2019-09-22 19:24:17', 'sys', 1),
(2, '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1, '2019-09-22 19:25:30', 'sys', '2019-09-22 19:25:30', 'sys', 1),
(3, '81de5b36-d170-11e9-b97c-48f17f8d4d88', 2, '2019-09-22 19:46:26', 'sys', '2019-09-22 19:46:26', 'sys', 1);

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
-- Dumping data for table `user_store`
--

INSERT INTO `user_store` (`Id`, `UserId`, `StoreId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, 'ba6257ea-d307-11e9-a45b-0050569fd205', '9a8252d4-dd5c-11e9-8ffb-c8f7501047dc', '2019-09-22 19:29:58', 'sys', '2019-09-22 19:29:58', 'sys', 1),
(2, '81de5b36-d170-11e9-b97c-48f17f8d4d88', '9a8252d4-dd5c-11e9-8ffb-c8f7501047dc', '2019-09-22 19:31:25', 'sys', '2019-09-22 19:31:25', 'sys', 1);

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
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`ConfigId`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ImageId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`Id`);

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
-- AUTO_INCREMENT for table `attribute_item`
--
ALTER TABLE `attribute_item`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `ConfigId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `RoleId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_store`
--
ALTER TABLE `user_store`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
