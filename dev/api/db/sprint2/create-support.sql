-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2019 at 05:05 PM
-- Server version: 5.7.28-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mnqmryug_dev`
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
('0aafe88d-e600-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'Tests 2', '2019-10-03 19:05:46', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 19:05:46', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('10664ace-e5bd-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Green lander ', '2019-10-03 11:06:19', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 11:06:19', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('124ac938-e130-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'w', '2019-09-27 16:06:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 16:06:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1aaf2cd9-e600-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'Test 5', '2019-10-03 19:06:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 19:06:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('2150e082-e49d-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'test', '2019-10-02 00:45:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 00:45:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('22460081-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'merc', '2019-09-10 23:01:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:01:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('256f9dc6-d58b-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'KIA', '2019-09-12 20:28:41', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 20:28:41', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('25c86184-f9cc-11e9-987f-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', 'Konvikt', '2019-10-28 23:44:41', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-28 23:44:41', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('27dd4942-e2e1-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Thenji Collection', '2019-09-29 19:47:07', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 19:47:07', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('2a13f21d-dfde-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Germex', '2019-09-25 23:48:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 23:48:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 0),
('394a1196-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 22:26:09', 'postman', '2019-09-10 22:26:09', 'postman', 1),
('3f3427ab-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Toyota', '2019-09-10 22:26:19', 'postman', '2019-09-10 22:26:19', 'postman', 1),
('3f40c927-e5a8-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'test', '2019-10-03 08:37:18', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:37:18', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4369bfef-e515-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'FABLE MOUNTAIN', '2019-10-02 15:05:09', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:05:09', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('46c0aaf2-e1e8-11e9-abbd-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '11', '2019-09-28 14:05:34', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 14:05:34', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4899e3a9-02e0-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Water', '2019-11-09 13:01:30', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:01:30', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('4bf57eac-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Bridgestone', '2019-10-02 15:34:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:34:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4ff0534f-e1e8-11e9-abbd-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'ui', '2019-09-28 14:05:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 14:05:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('52c29874-e5a6-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'TSW', '2019-10-03 08:23:32', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:23:32', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('54b5877f-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Goodyear', '2019-10-02 15:34:16', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:34:16', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('57600c70-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Rolex', '2019-09-14 14:58:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 14:58:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c67df71-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Continental', '2019-10-02 15:34:29', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:34:29', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Mercedece Benz', '2019-09-14 15:55:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:55:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6983b8cd-e46f-11e9-bc5d-0050569fd205', '12cf03f6-e46f-11e9-bc5d-0050569fd205', 'Puma', '2019-10-01 19:17:57', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:17:57', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('7057ccf3-d40d-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Colt', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 22:56:19', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('74512919-e457-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'COFFEE', '2019-10-01 16:26:27', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 16:26:27', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('745dacb7-d3f4-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 19:57:28', 'postman', '2019-09-10 19:57:28', 'postman', 1),
('75a04f90-e12f-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Test', '2019-09-27 16:02:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 16:02:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('85576016-e457-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'WINE', '2019-10-01 16:26:56', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 16:26:56', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('888c5e79-e5a6-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'RBP', '2019-10-03 08:25:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:25:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8b41eba2-e514-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'RUPERT & ROTHSCHILD', '2019-10-02 15:00:00', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:00:00', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('8c143c75-d584-11e9-a017-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Isuzu', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-12 19:41:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9453ec53-f978-11e9-987f-363532eb0721', 'n/a', 'Mulher ', '2019-10-28 13:46:29', '30fbbfbc-f978-11e9-987f-363532eb0721', '2019-10-28 13:46:29', '30fbbfbc-f978-11e9-987f-363532eb0721', 1),
('9510a66f-e5e9-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Ndu', '2019-10-03 16:25:00', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:25:00', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('9d74c31a-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Milk', '2019-11-09 12:56:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:56:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('9f32cf78-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'Marvel', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:35:50', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('a0549079-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Audi', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a322b855-e175-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'TEst1', '2019-09-28 00:24:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 00:24:57', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('a936b995-e5e9-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Cat 4', '2019-10-03 16:25:34', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:25:34', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('ac5439cb-00d2-11ea-91af-363532eb0721', '9a6037a0-e688-11e9-bc5d-0050569fd205', 'Mulher Swimwear ', '2019-11-06 22:19:02', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-06 22:19:02', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('ae04c589-e5ee-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'Tea ', '2019-10-03 17:01:29', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 17:01:29', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('af73b174-00d2-11ea-91af-363532eb0721', '9a6037a0-e688-11e9-bc5d-0050569fd205', 'Mulher Swimwear ', '2019-11-06 22:19:07', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-06 22:19:07', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('b949c5cd-e5a3-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'DUNLOP', '2019-10-03 08:04:56', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:04:56', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c39af95e-02cb-11ea-91af-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Monate Coffee', '2019-11-09 10:34:37', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 10:34:37', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('c48bbf2e-e175-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'testqqq', '2019-09-28 00:25:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 00:25:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c4bd30c9-00d2-11ea-91af-363532eb0721', '9a6037a0-e688-11e9-bc5d-0050569fd205', 'Mulher Swimwear ', '2019-11-06 22:19:43', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-06 22:19:43', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('c57b6b5d-e159-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Bluesil', '2019-09-27 21:05:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:05:29', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c5acb43d-e5e8-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Home', '2019-10-03 16:19:12', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:19:12', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('c792a06c-e515-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'DE TOREN', '2019-10-02 15:08:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:08:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('c8e33adb-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'Car Insurance ', '2019-11-05 19:22:03', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:22:03', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('cdf7d3f5-00d2-11ea-91af-363532eb0721', '9a6037a0-e688-11e9-bc5d-0050569fd205', 'Mulher Swimwear ', '2019-11-06 22:19:58', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-06 22:19:58', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('d01900bd-e5a6-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'LEXANI', '2019-10-03 08:27:03', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:27:03', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d7983423-e175-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'da', '2019-09-28 00:26:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 00:26:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d7cdefd9-e35b-11e9-bc5d-0050569fd205', 'n/a', 'Coffe', '2019-09-30 10:25:21', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 10:25:21', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('d82d1c4d-e12f-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'New bb', '2019-09-27 16:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 16:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('db0d891c-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'Perishable Foods', '2019-11-05 19:22:34', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:22:34', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('e0413444-e529-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Back2Black', '2019-10-02 17:32:43', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 17:32:43', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('e2ea95e5-e47a-11e9-bc5d-0050569fd205', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', 'Zalou. ', '2019-10-01 20:40:05', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-10-01 20:40:05', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('e5865380-e5e8-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Accossiries ', '2019-10-03 16:20:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:20:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('e899e373-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'Enterprise Meats', '2019-11-05 19:22:57', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:22:57', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('f222dc55-e35c-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Yealink', '2019-09-30 10:33:15', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-30 10:33:15', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('f354490f-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'Life Cover', '2019-11-05 19:23:15', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:23:15', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('f5e9d774-e5e8-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '6', '2019-10-03 16:20:33', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:20:33', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('f9587770-e35e-11e9-bc5d-0050569fd205', 'a8e9befd-e35e-11e9-bc5d-0050569fd205', 'Yealink', '2019-09-30 10:47:46', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:47:46', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('fe7cffe5-e5a5-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'BBS', '2019-10-03 08:21:11', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:21:11', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
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
('03b79ea1-e5e9-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Office ', '2019-10-03 16:20:56', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:20:56', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('066130f0-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Van', '2019-09-10 23:00:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:00:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('077a8d82-e51b-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '205/40R17', '2019-10-02 15:46:26', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:46:26', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('0a9c6333-e35f-11e9-bc5d-0050569fd205', 'a8e9befd-e35e-11e9-bc5d-0050569fd205', 'Telephone', '2019-09-30 10:48:15', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:48:15', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('118746bc-00d3-11ea-91af-363532eb0721', '9a6037a0-e688-11e9-bc5d-0050569fd205', 'Lingerie ', '2019-11-06 22:21:52', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-06 22:21:52', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('157d625f-d65f-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Shoes', '2019-09-13 21:45:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 21:45:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('17e28e81-e35d-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'SIP Phone', '2019-09-30 10:34:18', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-30 10:34:18', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('245d2a5c-e6d3-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', 'Ladies', '2019-10-04 20:16:53', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:16:53', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sport', '2019-09-10 23:01:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-10 23:01:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Hatchback', '2019-09-10 22:25:52', 'postman', '2019-09-10 22:25:52', 'postman', 1),
('3246f0ff-e6d3-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', 'Uni-sex', '2019-10-04 20:17:16', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:17:16', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('33785b3d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Sedan', '2019-09-10 22:25:59', 'postman', '2019-09-10 22:25:59', 'postman', 1),
('38d9fc30-f9cc-11e9-987f-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', 'Printed T-shirt', '2019-10-28 23:45:13', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-28 23:45:13', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('39907d83-e2e1-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Necklace', '2019-09-29 19:47:37', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 19:47:37', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('3dd53c98-d663-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '324', '2019-09-13 22:15:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:15:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('44c3f2a7-e6d3-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', 'Men - Shirt', '2019-10-04 20:17:47', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:17:47', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('4aaa291d-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '1kg Beans', '2019-11-09 12:54:24', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:54:24', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '250g Beans', '2019-11-09 12:54:40', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:54:40', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Watch', '2019-09-14 14:58:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 14:58:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6f1645db-02e0-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Sparkling', '2019-11-09 13:02:34', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:02:34', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('6fca7387-e51a-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'MAG', '2019-10-02 15:42:11', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:42:11', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('716d5a86-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '250g Ground', '2019-11-09 12:55:29', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:55:29', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'TYRE', '2019-10-02 15:35:07', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:35:07', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7574508c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'COFFEE', '2019-10-01 16:55:07', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 16:55:07', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('772c826d-02e0-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Still ', '2019-11-09 13:02:48', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:02:48', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('84b84ba4-d3f5-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'VW', '2019-09-10 20:05:05', 'postman', '2019-09-10 20:05:05', 'postman', 1),
('87ae0cee-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Bean Flavored  ', '2019-11-09 13:10:25', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:10:25', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8aa30563-d3f5-11e9-9f95-48f17f8d4d88', '4c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Hatchback', '2019-09-10 20:05:15', 'postman', '2019-09-10 20:05:15', 'postman', 1),
('8b7f4671-f978-11e9-987f-363532eb0721', 'n/a', 'Two Piece', '2019-10-28 13:46:14', '30fbbfbc-f978-11e9-987f-363532eb0721', '2019-10-28 13:46:14', '30fbbfbc-f978-11e9-987f-363532eb0721', 1),
('8ce57ffb-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Ground Flavored  ', '2019-11-09 13:10:34', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:10:34', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8eb73c16-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '2nd Hand Tyre', '2019-10-02 15:35:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:35:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('94faad66-e514-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'WINE', '2019-10-02 15:00:17', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:00:17', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('99558bcf-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Brand New', '2019-10-02 15:36:12', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:36:12', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('9f3fb40e-e5e9-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Cqt1', '2019-10-03 16:25:17', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-03 16:25:17', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('9fad0f91-e5aa-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '205/65R15', '2019-10-03 08:54:19', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:54:19', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a42e206b-d668-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'DDDDDDDD', '2019-09-13 22:54:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:54:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ab1432f8-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'Insurance', '2019-11-05 19:21:13', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:21:13', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('acf3596b-e366-11e9-bc5d-0050569fd205', 'c753fd7b-e363-11e9-bc5d-0050569fd205', 'Coffee', '2019-09-30 11:42:53', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 11:42:53', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('b16de9ac-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Normal', '2019-11-09 12:57:16', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:57:16', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Wagon Sport', '2019-09-14 20:15:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 20:15:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b6188d56-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'Supermarket', '2019-11-05 19:21:32', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:21:32', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('b73ab1a6-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Bean Non-Flavored ', '2019-11-09 13:11:45', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:11:45', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('bb28d608-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Ground Non-Flavored ', '2019-11-09 13:11:51', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:11:51', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('bf3e1fa4-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Lactose Free', '2019-11-09 12:57:39', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:57:39', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('c589ec5d-e5aa-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '265/70R17', '2019-10-03 08:55:23', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:55:23', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c5ce3456-e29b-11e9-abbd-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Electronics', '2019-09-29 11:30:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 11:30:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cc54bfc5-e46f-11e9-bc5d-0050569fd205', '12cf03f6-e46f-11e9-bc5d-0050569fd205', 'Sneaker', '2019-10-01 19:20:43', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:20:43', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('cc7fc05c-d662-11e9-857f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'sam', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-13 22:12:23', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d06f91a1-e159-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Body', '2019-09-27 21:05:47', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:05:47', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d0bd5f52-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Almond Milk', '2019-11-09 12:58:09', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:58:09', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('d5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', 'T-SHIRT', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:37:22', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('d6ce766b-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Low Fat', '2019-11-09 12:58:19', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:58:19', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('d7145d3e-dfbc-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'clothing', '2019-09-25 19:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ecc3c622-02de-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'Coffee', '2019-11-09 12:51:46', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 12:51:46', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('f0305162-e2e1-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Headpiece', '2019-09-29 19:52:43', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-29 19:52:43', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('f8ebe9a8-00d2-11ea-91af-363532eb0721', '9a6037a0-e688-11e9-bc5d-0050569fd205', 'Lingerie ', '2019-11-06 22:21:10', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-06 22:21:10', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('fcfd2a2b-e47a-11e9-bc5d-0050569fd205', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', 'Summer collection', '2019-10-01 20:40:49', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-10-01 20:40:49', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1);

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
('0c852198-ffae-11e9-91af-363532eb0721', 'Cakes wow', 'na', 'na', '2019-11-05 11:24:21', 'web', '2019-11-05 11:24:21', 'web', 1),
('0c89e134-02ca-11ea-91af-363532eb0721', 'Monate Coffee', 'na', 'na', '2019-11-09 10:22:20', 'web', '2019-11-09 10:22:20', 'web', 1),
('12cf03f6-e46f-11e9-bc5d-0050569fd205', 'Thabani Trading Assoc', 'https://pivotalgroup.co.za/', '0115564547888', '2019-10-01 19:15:31', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:15:31', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('159fe132-008b-11ea-91af-363532eb0721', 'Themba', 'na', 'na', '2019-11-06 13:46:35', 'web', '2019-11-06 13:46:35', 'web', 1),
('23b82588-e370-11e9-bc5d-0050569fd205', 'MONATE COFFEE', 'monatecoffee.com', '0115483300', '2019-09-30 12:50:38', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-09-30 12:50:38', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('2a87e487-f66b-11e9-987f-363532eb0721', 'TwitterCompany', 'na', 'na', '2019-10-24 16:32:54', 'web', '2019-10-24 16:32:54', 'web', 1),
('2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Thenji Enterprise', 'thenj.com', '0115454545', '2019-09-29 19:40:07', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 19:40:07', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('30f96e3f-f978-11e9-987f-363532eb0721', 'Mulher Swimwear', 'na', 'na', '2019-10-28 13:43:42', 'web', '2019-10-28 13:43:42', 'web', 1),
('31e21ef1-e6a7-11e9-bc5d-0050569fd205', 'Shibobo', 'Shibobo', '0623974330', '2019-10-04 15:02:18', '0e497316-e6a7-11e9-bc5d-0050569fd205', '2019-10-04 15:02:18', '0e497316-e6a7-11e9-bc5d-0050569fd205', 1),
('3743426f-ea70-11e9-91ab-0050569fd205', 'Waasha', 'Waasha.co.za', '0763395833', '2019-10-09 10:38:49', 'f80e8313-ea6f-11e9-91ab-0050569fd205', '2019-10-09 10:38:49', 'f80e8313-ea6f-11e9-91ab-0050569fd205', 1),
('3a458a6c-008b-11ea-91af-363532eb0721', 'Impact ', 'na', 'na', '2019-11-06 13:47:36', 'web', '2019-11-06 13:47:36', 'web', 1),
('3ff37466-e486-11e9-bc5d-0050569fd205', 'T Js Car Wash', 'T Js Car Wash', '0633326548', '2019-10-01 22:01:26', '17d29327-e486-11e9-bc5d-0050569fd205', '2019-10-01 22:01:26', '17d29327-e486-11e9-bc5d-0050569fd205', 1),
('41094864-f668-11e9-987f-363532eb0721', 'TestCompany', 'na', 'na', '2019-10-24 16:12:03', 'web', '2019-10-24 16:12:03', 'web', 1),
('4523af94-d172-11e9-b97c-48f17f8d4d88', 'Factory Websites', 'websitesfactory.co.za', '0746958064', '2019-09-07 15:19:38', 'SYSTEM', '2019-09-07 15:19:38', 'SYSTEM', 1),
('49a75007-fff0-11e9-91af-363532eb0721', 'Inventoryio-Demo', 'na', 'na', '2019-11-05 19:18:30', 'web', '2019-11-05 19:18:30', 'web', 1),
('4b1f410b-e523-11e9-bc5d-0050569fd205', 'Konvict', 'www.konvict.co.za', '0746958064', '2019-10-02 16:45:35', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-02 16:45:35', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('4c9ce60d-e370-11e9-bc5d-0050569fd205', 'MONATE COFFEE', 'monatecoffee.com', '0115483300', '2019-09-30 12:51:47', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-09-30 12:51:47', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('5048f837-f66c-11e9-987f-363532eb0721', 'Nyoka Brand Suppliers ', 'na', 'na', '2019-10-24 16:41:07', 'web', '2019-10-24 16:41:07', 'web', 1),
('5461f5f7-f668-11e9-987f-363532eb0721', 'TestCompany', 'na', 'na', '2019-10-24 16:12:36', 'web', '2019-10-24 16:12:36', 'web', 1),
('6cf1f3f5-e6b2-11e9-bc5d-0050569fd205', 'Lokshin Online Learning Academy', 'loxionlearning.com', '0826430926', '2019-10-04 16:22:41', '2e065d78-e6b2-11e9-bc5d-0050569fd205', '2019-10-04 16:22:41', '2e065d78-e6b2-11e9-bc5d-0050569fd205', 1),
('7e292e79-e44d-11e9-bc5d-0050569fd205', 'd', 'd', 'd', '2019-10-01 15:15:09', '7667809a-e44d-11e9-bc5d-0050569fd205', '2019-10-01 15:15:09', '7667809a-e44d-11e9-bc5d-0050569fd205', 1),
('94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'ndu-systems.net', '0842529472', '2019-09-07 15:07:32', 'SYSTEM', '2019-09-07 15:07:32', 'SYSTEM', 1),
('9a6037a0-e688-11e9-bc5d-0050569fd205', 'Mulher Swimwear ', 'Www.mulherswimwear.co.za', '0614723377 ', '2019-10-04 11:23:19', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-10-04 11:23:19', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('9b8ea912-e518-11e9-bc5d-0050569fd205', 'CITY MAG,WHEEL REPAIRS & TYRES', 'www.citymag.co.za', '0837735895', '2019-10-02 15:29:06', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:29:06', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a8e9befd-e35e-11e9-bc5d-0050569fd205', 'KBNET TECH', 'www.kbnet.co.za', '0786422445666', '2019-09-30 10:45:31', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:45:31', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('ac9db3c5-e47a-11e9-bc5d-0050569fd205', 'Zalou. ', 'Zalou.com ', '0731207109 ', '2019-10-01 20:38:34', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-10-01 20:38:34', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('af8c0a6c-e35e-11e9-bc5d-0050569fd205', 'KBNET TECH', 'www.kbnet.co.za', '0786422445666', '2019-09-30 10:45:42', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:45:42', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('b1a0bfbe-e35e-11e9-bc5d-0050569fd205', 'KBNET TECH', 'www.kbnet.co.za', '0786422445666', '2019-09-30 10:45:45', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:45:45', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('b5fdc28c-05e4-11ea-abc0-4ad9491261dd', 'isithebe burial', 'na', 'na', '2019-11-13 09:10:45', 'web', '2019-11-13 09:10:45', 'web', 1),
('be2a0a18-e35e-11e9-bc5d-0050569fd205', 'KBNET TECH', 'www.kbnet.co.za', '0786422445666', '2019-09-30 10:46:06', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:46:06', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('c753fd7b-e363-11e9-bc5d-0050569fd205', 'Pivotal Group', 'www', '0873105900', '2019-09-30 11:22:09', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 11:22:09', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('cd9a7862-e363-11e9-bc5d-0050569fd205', 'Pivotal Group', 'www.pivotalgroup.co.za', '0873105900', '2019-09-30 11:22:20', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 11:22:20', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('d33b5a5b-e35e-11e9-bc5d-0050569fd205', 'KBNET TECH', 'www.kbnet.co.za', '0786422445666', '2019-09-30 10:46:42', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:46:42', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('dfd5ee69-e6ac-11e9-bc5d-0050569fd205', 'Noted clothing ', 'Na', '035828872', '2019-10-04 15:42:57', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 15:42:57', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('e81ad518-005b-11ea-91af-363532eb0721', 'Chan Kottin', 'na', 'na', '2019-11-06 08:08:52', 'web', '2019-11-06 08:08:52', 'web', 1),
('f972ae4e-d244-11e9-b97c-48f17f8d4d88', 'Ndu Systems', 'The Willaim', '011454545', '2019-09-08 16:27:44', '673267837128', '2019-09-08 16:27:44', 'SYSTEM', 1),
('ff4fe4de-e44b-11e9-bc5d-0050569fd205', 'Ndu Systems', 'Ndu Systems', 'Ndu Systems', '2019-10-01 15:04:26', '325b02d3-e43c-11e9-bc5d-0050569fd205', '2019-10-01 15:04:26', '325b02d3-e43c-11e9-bc5d-0050569fd205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `ConfigId` int(10) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Value` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`ConfigId`, `CompanyId`, `Name`, `Value`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(6, '3243324', 'OrderPrefix', 'ORD-', '2019-09-29 13:02:45', '', '2019-09-29 13:02:45', '', 1),
(7, '4324324', 'InvoicePrefix', 'INV-2019-', '2019-09-29 13:02:45', '', '2019-09-29 13:02:45', '', 1);

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
('00106ef4-e51c-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-dd0543c6-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570024402205_55R16 CONTINENTAL SPORT CONTACT 2 (91W) â€” tyres.co.za.html', '2019-10-02 15:53:23', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:53:29', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('035f80a8-e6ae-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', '8ede24b8-e6ad-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570197065Screenshot_20191004_155032.jpg', '2019-10-04 15:51:06', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 15:51:06', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('041c5843-f713-11e9-987f-363532eb0721', '3743426f-ea70-11e9-91ab-0050569fd205', 'f80e8313-ea6f-11e9-91ab-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571999665IMG-20191025-WA0004.jpg', '2019-10-25 12:34:25', 'f80e8313-ea6f-11e9-91ab-0050569fd205', '2019-10-25 12:34:25', 'f80e8313-ea6f-11e9-91ab-0050569fd205', 1),
('06cde3f9-fdff-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-06cd6a13-fdff-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760697', '2019-11-03 07:58:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:01:07', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('081cf193-f6a2-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '1fa390e8-f687-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571951138InstaSave', '2019-10-24 23:05:39', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:05:39', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('0a0cb008-02ef-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'cb435b3c-02ed-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573303627iio.jpg', '2019-11-09 14:47:07', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:47:07', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('0babb68b-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '0baaf6db-02e1-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573297428iio.jpg', '2019-11-09 13:06:57', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:06:57', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('0ef0d609-f631-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '0ef06688-f631-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571902612download.png', '2019-10-24 09:36:57', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:36:57', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('0ef1b35d-f631-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '0ef06688-f631-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571902612SHo6Fub.jpg', '2019-10-24 09:36:57', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:36:57', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('0f5f8fab-e2e2-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569779614headband.jpg', '2019-09-29 19:53:35', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-29 19:53:35', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('0ffa7567-02ea-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '0ff9ae70-02ea-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301454iio.jpg', '2019-11-09 14:11:30', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:11:30', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('104ebe66-02eb-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '104dcbe8-02eb-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301918iio.jpg', '2019-11-09 14:18:40', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:18:40', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('1b3d88cb-f6a6-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571952888InstaSave', '2019-10-24 23:34:49', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:34:49', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1be982e3-f705-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571993692pp.jfif', '2019-10-25 10:54:52', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 10:54:52', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1c0e3f6c-f88e-11e9-987f-363532eb0721', '23b82588-e370-11e9-bc5d-0050569fd205', '704bf544-e517-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572162484IMG_20181022_203427_846.jpg', '2019-10-27 09:48:05', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-27 09:48:05', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('1ec99632-e5a6-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '1971058a-e5a6-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570083725BBS-FI-R-bronze-seitlich-mitVentil_frei_web.png', '2019-10-03 08:22:05', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:22:05', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1fa42356-f687-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '1fa390e8-f687-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571939560InstaSave', '2019-10-24 19:53:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:53:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('2148451e-e42c-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'removed-4c104caa-e35d-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/156992137915699213685006152657601033986878.jpg', '2019-10-01 11:16:19', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:16:35', '5506426f-e2e1-11e9-bc5d-0050569fd205', 2),
('224dacac-ffae-11e9-91af-363532eb0721', '0c852198-ffae-11e9-91af-363532eb0721', '0c874339-ffae-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572945897iio.jpg', '2019-11-05 11:24:57', '0c874339-ffae-11e9-91af-363532eb0721', '2019-11-05 11:24:57', '0c874339-ffae-11e9-91af-363532eb0721', 1),
('23b9c2ae-fe1a-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '23b93d30-fe1a-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572772349iio.jpg', '2019-11-03 11:13:03', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 11:13:03', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('23ba3bba-fe1a-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '23b93d30-fe1a-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572772357iio.jpg', '2019-11-03 11:13:03', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 11:13:03', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('29372bc6-02e9-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '293460c8-02e9-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301040iio.jpg', '2019-11-09 14:05:03', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:05:03', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('29971191-02e2-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '2996657d-02e2-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573297999iio.jpg', '2019-11-09 13:14:57', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:14:57', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('2bb1475e-e6ad-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', '148d64c6-e6ad-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570196704InstaSave', '2019-10-04 15:45:04', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 15:45:04', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('2cd25d96-e513-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', '0fb993dd-e513-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570020612mabonengbrew.JPG', '2019-10-02 14:50:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 14:50:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('2ce02dfb-fff1-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', '2cd7f8de-fff1-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572974655iio.jpg', '2019-11-05 19:24:51', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:24:51', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('3326580a-f721-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '3325dac6-f721-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572005753images (1).jpeg', '2019-10-25 14:15:57', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 14:15:57', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('35e1851b-e367-11e9-bc5d-0050569fd205', 'c753fd7b-e363-11e9-bc5d-0050569fd205', 'cdd86351-e366-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/156983680315698367570281243501995.jpg', '2019-09-30 11:46:43', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 11:46:43', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('37a32211-0497-11ea-80c4-4ad9491261dd', '9a6037a0-e688-11e9-bc5d-0050569fd205', '7feffeff-e688-11e9-bc5d-0050569fd205', 'https://inventoryio.co.za/api/api/upload/uploads/1573485810iio.jpg', '2019-11-11 17:23:30', '7feffeff-e688-11e9-bc5d-0050569fd205', '2019-11-11 17:23:30', '7feffeff-e688-11e9-bc5d-0050569fd205', 1),
('3a1a5be4-ffae-11e9-91af-363532eb0721', '0c852198-ffae-11e9-91af-363532eb0721', '0c874339-ffae-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572945937iio.jpg', '2019-11-05 11:25:37', '0c874339-ffae-11e9-91af-363532eb0721', '2019-11-05 11:25:37', '0c874339-ffae-11e9-91af-363532eb0721', 1),
('3d31af59-fd44-11e9-91af-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572680513pineapple-supply-co-FivolqHz3bg-unsplash.jpg', '2019-11-02 09:41:53', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-02 09:41:53', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('3e6cde66-f6a7-11e9-987f-363532eb0721', '3743426f-ea70-11e9-91ab-0050569fd205', 'f80e8313-ea6f-11e9-91ab-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571953377DSC_0740.JPG', '2019-10-24 23:42:57', 'f80e8313-ea6f-11e9-91ab-0050569fd205', '2019-10-24 23:42:57', 'f80e8313-ea6f-11e9-91ab-0050569fd205', 1),
('3ef1da4b-f630-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '3ef1315b-f630-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571899191dsa.jpg', '2019-10-24 09:31:08', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:31:08', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('418b5e08-f6a9-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/157195424140643aad-0b01-485f-99c0-59ca080e6b4c.jpg', '2019-10-24 23:57:22', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:57:22', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4204cd2a-e5a4-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '3bc765d0-e5a4-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570082925TYRER13.jpg', '2019-10-03 08:08:45', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:08:45', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('43674bcf-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777531iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('4367a950-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777546iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('4367f63a-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777549iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('43684420-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777549iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('436890db-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777551iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('4368e020-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777552iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('43693218-fe26-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '43662134-fe26-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572777552iio.jpg', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('442487c9-fe13-11e9-91af-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572769430iio.jpg', '2019-11-03 10:23:51', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-03 10:23:51', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('447cf943-e49d-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569969971Capture.JPG', '2019-10-02 00:46:12', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 00:46:12', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('44d86893-02eb-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '44d795d6-02eb-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301983iio.jpg', '2019-11-09 14:20:08', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:20:08', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('4ad4a367-fdff-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4ad4272e-fdff-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760833iio.jpg', '2019-11-03 08:00:52', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:00:52', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4c66fdb7-f62d-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4c6536c5-f62d-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571900980InstaSave', '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4c682fbd-f62d-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4c6536c5-f62d-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571900987InstaSave', '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4c695c0d-f62d-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4c6536c5-f62d-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571900988InstaSave', '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('510a7e78-e8fd-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570451029legacy cofee.JPG', '2019-10-07 14:23:49', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-07 14:23:49', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('52e68a51-02e9-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '52e5f00a-02e9-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301139iio.jpg', '2019-11-09 14:06:12', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:06:12', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('532e071e-f630-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '532d9305-f630-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571899191dsa.jpg', '2019-10-24 09:31:42', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:31:42', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('53611528-e6ad-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', '48ffe7f7-e6ad-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570196770InstaSave', '2019-10-04 15:46:11', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 15:46:11', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('5369f335-f62b-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '53696c98-f62b-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571899191dsa.jpg', '2019-10-24 08:55:55', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:55:55', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('53c35bf1-fff1-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', '53c2c7c4-fff1-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572974732iio.jpg', '2019-11-05 19:25:56', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:25:56', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('547aa1d0-e540-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'removed-bfe0152e-e514-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570040006dsa.jpg', '2019-10-02 20:13:26', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 21:16:13', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 2),
('5502f35d-e51c-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-dd0543c6-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570024545contR16.JPG', '2019-10-02 15:55:45', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 17:23:14', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('55f4f338-02ca-11ea-91af-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '0c8c1818-02ca-11ea-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573287863iio.jpg', '2019-11-09 10:24:23', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 10:24:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('5722a44d-f631-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '572220fa-f631-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/157190273588a63d31-3e32-4a9b-94d1-be154bdb59c6.jpg', '2019-10-24 09:38:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:38:58', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5722f875-f631-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '572220fa-f631-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571902735O1CN01c9aZ4j2KLpPs7WAzM__787299541_2048x2048.jpg', '2019-10-24 09:38:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:38:58', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('57712100-02ea-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '57703b24-02ea-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301575iio.jpg', '2019-11-09 14:13:30', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:13:30', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('57d76cd3-0967-11ea-bec8-4ad9491261dd', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'https://inventoryio.co.za/api/api/upload/uploads/1574015004iio.jpg', '2019-11-17 20:23:24', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-17 20:23:24', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('58451dd6-e49d-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'removed-49e930fb-e45b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569970004Capture.JPG', '2019-10-02 00:46:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 00:47:19', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 2),
('5891b65c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'removed-49e930fb-e45b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569941658Capture.JPG', '2019-10-01 16:54:19', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 00:47:10', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 2),
('5a9de3cb-fe13-11e9-91af-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572769468iio.jpg', '2019-11-03 10:24:28', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-03 10:24:28', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('5f27dfb6-e5a5-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '52f44ac0-e5a5-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570083403rim1.jpg', '2019-10-03 08:16:44', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:16:44', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5f3f3aa6-f63d-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '5f3ec6db-f63d-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571907870InstaSave', '2019-10-24 11:05:06', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 11:05:06', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6013c732-fede-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '601325fb-fede-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572856649iio.jpg', '2019-11-04 10:37:45', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:37:45', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('65dcd481-e35d-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'removed-4c104caa-e35d-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569832588image.jpg', '2019-09-30 10:36:29', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-10-01 11:13:38', '97aec45d-e2df-11e9-bc5d-0050569fd205', 2),
('66d3f7cb-fe1a-11e9-91af-363532eb0721', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '70648b1d-e47a-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572772495iio.jpg', '2019-11-03 11:14:55', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 11:14:55', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('69be1474-02ef-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573303741iio.jpg', '2019-11-09 14:49:48', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:49:48', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('6a3a9e32-e5bd-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4b593bda-e5bd-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/157009372915700936990234074677762300603347.jpg', '2019-10-03 11:08:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 11:08:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6b251a90-fdff-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-06cd6a13-fdff-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760906', '2019-11-03 08:01:46', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:02:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('6c3563f6-f9cc-11e9-987f-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', '6c34d999-f9cc-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572299186IMG_20191028_234131_413.jpg', '2019-10-28 23:46:39', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-28 23:46:39', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('6c794893-fe06-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572763915iio.jpg', '2019-11-03 08:51:55', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:51:55', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6cb0a2cd-e42d-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569921935basket.jpg', '2019-10-01 11:25:35', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:25:35', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('6cc4a304-02e5-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '6cc39a01-02e5-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573299496iio.jpg', '2019-11-09 13:38:18', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:38:18', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('6fafb042-fdff-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '06cd6a13-fdff-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760914iio.jpg', '2019-11-03 08:01:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:01:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7001dfdb-fff1-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', '700131a7-fff1-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572974782iio.jpg', '2019-11-05 19:26:44', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:26:44', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('71081f72-fdfe-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-71078b38-fdfe-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760422', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 07:55:23', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('710895bc-fdfe-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '71078b38-fdfe-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760450iio.jpg', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7109051e-fdfe-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '71078b38-fdfe-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760454iio.jpg', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7109781f-fdfe-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '71078b38-fdfe-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760461iio.jpg', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('723c3a13-fdff-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '06cd6a13-fdff-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572760918iio.jpg', '2019-11-03 08:01:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:01:58', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('733aba36-f6a1-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-1fa390e8-f687-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/15719508890e0a47e0-4934-48ac-a209-26da725c3c58.jpg', '2019-10-24 23:01:29', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:01:49', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('734896c8-f6a1-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-1fa390e8-f687-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/157195088940643aad-0b01-485f-99c0-59ca080e6b4c.jpg', '2019-10-24 23:01:29', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:01:57', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('7557b7ca-e5a4-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'dd0543c6-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570083011TYRER13.jpg', '2019-10-03 08:10:11', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:10:11', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('78c9721b-009c-11ea-91af-363532eb0721', '23b82588-e370-11e9-bc5d-0050569fd205', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'https://inventoryio.co.za/api/api/upload/uploads/1573048262iio.jpg', '2019-11-06 15:51:02', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:51:02', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('78d9a461-009c-11ea-91af-363532eb0721', '23b82588-e370-11e9-bc5d-0050569fd205', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'https://inventoryio.co.za/api/api/upload/uploads/1573048262iio.jpg', '2019-11-06 15:51:03', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:51:03', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('78dba4b1-009c-11ea-91af-363532eb0721', '23b82588-e370-11e9-bc5d-0050569fd205', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'https://inventoryio.co.za/api/api/upload/uploads/1573048262iio.jpg', '2019-11-06 15:51:03', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:51:03', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('7c117ebe-f631-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '7c110674-f631-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571902788InstaSave', '2019-10-24 09:40:00', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:40:00', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7edba303-0335-11ea-80c4-4ad9491261dd', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'https://inventoryio.co.za/api/api/upload/uploads/1573333888iio.jpg', '2019-11-09 23:11:28', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-09 23:11:28', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('8008e742-02ed-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '80083201-02ed-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573302733iio.jpg', '2019-11-09 14:36:06', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:36:06', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('81f5aefb-e515-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', '7cd35931-e515-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570021614NIGHTSKY.JPG', '2019-10-02 15:06:54', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:06:54', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('8501882f-e5a4-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4c43a581-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570083037TYRER13.jpg', '2019-10-03 08:10:38', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:10:38', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8531d9c8-f5c5-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'ndu', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571854082Screenshot (20).png', '2019-10-23 20:47:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:47:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('87122807-fff1-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', '87110bf9-fff1-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572974824iio.jpg', '2019-11-05 19:27:22', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:27:22', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('87338752-f713-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-1971058a-e5a6-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/15719998854.PNG', '2019-10-25 12:38:05', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 12:38:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('8840a18b-02e9-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '883fc2b8-02e9-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301258iio.jpg', '2019-11-09 14:07:42', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:07:42', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8a9b68e7-f6e4-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571979703IMG_20191023_074105_607.jpg', '2019-10-25 07:01:44', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 07:01:44', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8abfa6ce-02ef-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '8abee732-02ef-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573303817iio.jpg', '2019-11-09 14:50:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:50:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8bfca4dd-f6a6-11e9-987f-363532eb0721', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'f55adf15-e29a-11e9-abbd-48f17f8d4d88', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571953077InstaSave', '2019-10-24 23:37:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:37:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8c09358e-fe02-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '8c08bced-fe02-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572762188iio.jpg', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8c099a82-fe02-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '8c08bced-fe02-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572762199iio.jpg', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8c0a75ef-fe02-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '8c08bced-fe02-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572762232iio.jpg', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8c0ae1cc-fe02-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '8c08bced-fe02-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572762232iio.jpg', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8c0b3be7-fe02-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '8c08bced-fe02-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572762232iio.jpg', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8c0b97a4-fe02-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '8c08bced-fe02-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572762232iio.jpg', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8c39525b-f713-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-1971058a-e5a6-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/15719998932.PNG', '2019-10-25 12:38:14', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 12:38:37', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('8dee0fa2-02ec-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '8dec8ac1-02ec-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573302419iio.jpg', '2019-11-09 14:29:20', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:29:20', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8e8d1398-e5a2-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-dd0543c6-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570082194205_55R16 CONTINENTAL SPORT CONTACT 2 (91W) â€” tyres.co.za.html', '2019-10-03 07:56:35', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 07:58:12', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('9091531a-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861471iio.jpg', '2019-11-04 11:57:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:57:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('9926b33b-e35f-11e9-bc5d-0050569fd205', 'a8e9befd-e35e-11e9-bc5d-0050569fd205', '8b7eaa93-e35f-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569833534image.jpg', '2019-09-30 10:52:14', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:52:14', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('9f8ae63d-e2e0-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569778998952x598.jpg', '2019-09-29 19:43:18', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 19:43:18', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('a09debd6-f6a6-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571953112pp.jfif', '2019-10-24 23:38:33', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:38:33', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a26e818a-e51b-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', '4c43a581-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570024245TYRER17', '2019-10-02 15:50:46', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:50:46', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a485c97c-f6e4-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571979747IMG_20191023_074134_276.jpg', '2019-10-25 07:02:28', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 07:02:28', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a4f13065-fede-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-601325fb-fede-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572856781iio.jpg', '2019-11-04 10:39:41', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:48:34', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('a538dd86-fff1-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'a5382261-fff1-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572974866iio.jpg', '2019-11-05 19:28:13', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:28:13', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('a8f20725-e512-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', '65794968-e512-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570020391freedomcofee.JPG', '2019-10-02 14:46:31', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 14:46:31', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('a9948941-fdfe-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/157276057815727605618498826507545568299790.jpg', '2019-11-03 07:56:22', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 07:56:22', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('acc010d0-f6a6-11e9-987f-363532eb0721', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571953133pp.jfif', '2019-10-24 23:38:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:38:53', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ae51b589-e42c-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569921616basket.jpg', '2019-10-01 11:20:16', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:20:23', '5506426f-e2e1-11e9-bc5d-0050569fd205', 2),
('af63f2af-f88e-11e9-987f-363532eb0721', '23b82588-e370-11e9-bc5d-0050569fd205', '704bf544-e517-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572162731isaiah-mcclean-DrVJk1EaPSc-unsplash.jpg', '2019-10-27 09:52:12', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-27 09:52:12', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('b2a48830-008f-11ea-91af-363532eb0721', '5048f837-f66c-11e9-987f-363532eb0721', 'b2a3853b-008f-11ea-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573042752iio.jpg', '2019-11-06 14:19:36', '504b2c84-f66c-11e9-987f-363532eb0721', '2019-11-06 14:19:36', '504b2c84-f66c-11e9-987f-363532eb0721', 1),
('b3a8d13c-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-b3a83a69-fee9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861509iio.jpg', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:59:26', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('b3a923ef-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-b3a83a69-fee9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861512iio.jpg', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:59:15', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('b3a9760c-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'b3a83a69-fee9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861513iio.jpg', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('b3a9c523-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'b3a83a69-fee9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861514iio.jpg', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('b3aa2c8e-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-b3a83a69-fee9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861515iio.jpg', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:59:22', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('b3aa8423-fee9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-b3a83a69-fee9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572861516iio.jpg', '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:59:18', '41f977a7-e518-11e9-bc5d-0050569fd205', 2),
('b411a285-f9cc-11e9-987f-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', 'b410ebcc-f9cc-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572299289IMG_20191028_234209_625.jpg', '2019-10-28 23:48:40', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-28 23:48:40', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('b4522935-02e9-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'b4518105-02e9-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573301326iio.jpg', '2019-11-09 14:08:56', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:08:56', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('b597babd-f978-11e9-987f-363532eb0721', 'n/a', 'b13f68e8-f978-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572263244DSC_0573.jpg', '2019-10-28 13:47:24', '30fbbfbc-f978-11e9-987f-363532eb0721', '2019-10-28 13:47:24', '30fbbfbc-f978-11e9-987f-363532eb0721', 1),
('bbc20256-fed9-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'bbc1878e-fed9-11e9-91af-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572854597iio.jpg', '2019-11-04 10:04:32', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:04:32', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('bd0667da-fe62-11e9-91af-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572803563iio.jpg', '2019-11-03 19:52:44', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-03 19:52:44', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('befd77bc-f62c-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'befcf88e-f62c-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571899191dsa.jpg', '2019-10-24 09:06:05', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 09:06:05', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c4a3ec48-fff1-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', 'c4a2fd7d-fff1-11e9-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1572974917iio.jpg', '2019-11-05 19:29:06', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:29:06', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('c55e4450-fe04-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572763205iio.jpg', '2019-11-03 08:40:05', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:40:05', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c762e8e6-fa77-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '5f3ec6db-f63d-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572372796354b5577-2348-4715-8409-127b2cf8127b.jpg', '2019-10-29 20:13:16', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:13:16', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c799eb0a-0098-11ea-91af-363532eb0721', '3a458a6c-008b-11ea-91af-363532eb0721', '3a479066-008b-11ea-91af-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573046676iio.jpg', '2019-11-06 15:24:37', '3a479066-008b-11ea-91af-363532eb0721', '2019-11-06 15:24:37', '3a479066-008b-11ea-91af-363532eb0721', 1),
('c7a145e1-e514-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'bfe0152e-e514-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570021301wineclassique.JPG', '2019-10-02 15:01:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:01:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('c86f986d-f712-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571999565IMG_20191023_074105_607.jpg', '2019-10-25 12:32:45', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 12:32:45', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c9235f3b-e5a5-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'c215ad48-e5a5-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570083581rim2.jpg', '2019-10-03 08:19:41', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:19:41', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('ca9530de-e41e-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'removed-4c104caa-e35d-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569915650IMG_20190928_010904_251.jpg', '2019-10-01 09:40:51', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:22:50', '5506426f-e2e1-11e9-bc5d-0050569fd205', 2),
('cd72e219-02e5-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'cd71df61-02e5-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573299634iio.jpg', '2019-11-09 13:41:00', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:41:00', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('d0618de9-02e8-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'd060ca79-02e8-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573300922iio.jpg', '2019-11-09 14:02:33', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:02:33', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('d151ae22-f63c-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'd15128fa-f63c-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571907645InstaSave', '2019-10-24 11:01:08', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 11:01:08', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d27c3951-fe04-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572763227iio.jpg', '2019-11-03 08:40:27', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-03 08:40:27', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d34d9b03-f62b-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'd34d0b79-f62b-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1571899191dsa.jpg', '2019-10-24 08:59:30', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:59:30', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d35fa0ff-e5a2-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'removed-dd0543c6-e51b-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570082310Contin205R16.JPG', '2019-10-03 07:58:30', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 08:09:58', '41f977a7-e518-11e9-bc5d-0050569fd205', 2);
INSERT INTO `image` (`ImageId`, `CompanyId`, `OtherId`, `Url`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('d40cc1a9-f712-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '41f977a7-e518-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/15719995844.PNG', '2019-10-25 12:33:05', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 12:33:05', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d4158a8a-fece-11e9-91af-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', 'ef6cecb1-f62a-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/1572849988iio.jpg', '2019-11-04 08:46:28', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 08:46:28', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('ddd50232-fa77-11e9-987f-363532eb0721', '9b8ea912-e518-11e9-bc5d-0050569fd205', '5f3ec6db-f63d-11e9-987f-363532eb0721', 'https://www.inventoryio.co.za/api/api/upload/uploads/157237283317bcc438-24a7-43c7-8bb0-f011efb406dd.jpg', '2019-10-29 20:13:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:13:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('de64294e-e46f-11e9-bc5d-0050569fd205', '12cf03f6-e46f-11e9-bc5d-0050569fd205', 'd4cd04d5-e46f-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1569950472PNA.webp', '2019-10-01 19:21:13', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:21:13', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('e7d65446-02e6-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'e7d5a7aa-02e6-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573300101iio.jpg', '2019-11-09 13:48:54', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:48:54', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('e95fc93c-e515-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'https://www.inventoryio.co.za/api/api/upload/uploads/1570021787delicate.JPG', '2019-10-02 15:09:48', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:09:48', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('f88b2e2d-02e4-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', '8d636a0c-02e4-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573299303iio.jpg', '2019-11-09 13:35:03', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:35:03', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('fb286b6a-f6a6-11e9-987f-363532eb0721', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'f55adf15-e29a-11e9-abbd-48f17f8d4d88', 'https://www.inventoryio.co.za/api/api/upload/uploads/157195326440643aad-0b01-485f-99c0-59ca080e6b4c.jpg', '2019-10-24 23:41:05', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:41:05', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('fce22c09-02ee-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', 'fce162b2-02ee-11ea-bc5e-363532eb0721', 'https://inventoryio.co.za/api/api/upload/uploads/1573303581iio.jpg', '2019-11-09 14:46:45', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:46:45', '0c8c1818-02ca-11ea-91af-363532eb0721', 1);

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
  `Paid` decimal(10,0) DEFAULT '0',
  `Due` decimal(10,0) DEFAULT NULL,
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

INSERT INTO `orders` (`OrdersId`, `OrderId`, `CompanyId`, `ParntersId`, `OrderType`, `Total`, `Paid`, `Due`, `ExpectedDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('d471c766-e0ea-11e9-993f-48f17f8d4d88', 10, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 100187, 100187, 0, NULL, '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d75de234-e0ea-11e9-993f-48f17f8d4d88', 11, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1100000, 1100000, 0, NULL, '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:16', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('da3d1629-e0ea-11e9-993f-48f17f8d4d88', 12, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 2499980, 2499980, 0, NULL, '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b5c30fb6-e15a-11e9-9302-48f17f8d4d88', 13, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1350600, 1350600, 0, NULL, '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-28 14:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('db1941b2-e2ab-11e9-abbd-48f17f8d4d88', 14, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1000000, 0, 1000000, NULL, '2019-09-29 13:25:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:25:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e9abbccf-e2ad-11e9-abbd-48f17f8d4d88', 15, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1424, 0, 1424, NULL, '2019-09-29 13:40:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:40:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7cddfe9d-e2b0-11e9-abbd-48f17f8d4d88', 16, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1500, 0, 1500, NULL, '2019-09-29 13:58:44', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:58:44', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b06842c9-e2b0-11e9-abbd-48f17f8d4d88', 17, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 300, 0, 300, NULL, '2019-09-29 14:00:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:00:11', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('038da776-e2b6-11e9-abbd-48f17f8d4d88', 18, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 395, 0, 395, NULL, '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('22905eb7-e2b6-11e9-abbd-48f17f8d4d88', 19, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1385, 0, 1385, NULL, '2019-09-29 14:39:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:39:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3233d508-e2b6-11e9-abbd-48f17f8d4d88', 20, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 596, 0, 596, NULL, '2019-09-29 14:39:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:39:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('44b004cc-e2b6-11e9-abbd-48f17f8d4d88', 21, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 22501200, 0, 22501200, NULL, '2019-09-29 14:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('89749618-e2b6-11e9-abbd-48f17f8d4d88', 22, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 20260500, 0, 20260500, NULL, '2019-09-29 14:42:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:42:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c37aa970-e2b7-11e9-abbd-48f17f8d4d88', 23, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 196, 0, 196, NULL, '2019-09-29 14:50:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:50:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7cfdc6f3-e2ba-11e9-abbd-48f17f8d4d88', 24, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 9753000, 0, 9753000, NULL, '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('bfe9aff3-e2bc-11e9-abbd-48f17f8d4d88', 25, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 1950, 0, 1950, NULL, '2019-09-29 15:26:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:26:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('dbb9a90f-e2c0-11e9-abbd-48f17f8d4d88', 26, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 4500750, 0, 4500750, NULL, '2019-09-29 15:55:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:55:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', 27, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 2253272, 0, 2253272, NULL, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7438ed6c-e2ea-11e9-bc5d-0050569fd205', 28, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 1050, 1050, 0, NULL, '2019-09-29 20:53:41', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 21:23:55', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('37ed16db-e2ee-11e9-bc5d-0050569fd205', 29, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 4000, 4000, 0, NULL, '2019-09-29 21:20:37', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-29 21:23:47', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('ec8b04e2-e349-11e9-bc5d-0050569fd205', 30, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 1750, 1750, 0, NULL, '2019-09-30 08:17:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-30 08:17:13', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('b8bb3c83-e35f-11e9-bc5d-0050569fd205', 31, 'a8e9befd-e35e-11e9-bc5d-0050569fd205', '', 'Sell', 2400, 2400, 0, NULL, '2019-09-30 10:53:07', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:53:54', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('d885e57b-e430-11e9-bc5d-0050569fd205', 32, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 2800, 2800, 0, NULL, '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:50:12', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('6ada4504-e43a-11e9-bc5d-0050569fd205', 33, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 2550, 2550, 0, NULL, '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:58:45', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('85c157dc-e43a-11e9-bc5d-0050569fd205', 34, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 2400, 2400, 0, NULL, '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 13:00:30', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('7952084b-e46c-11e9-bc5d-0050569fd205', 35, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 1500, 1500, 0, NULL, '2019-10-01 18:56:55', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-07 14:21:49', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('f6721f21-e46f-11e9-bc5d-0050569fd205', 36, '12cf03f6-e46f-11e9-bc5d-0050569fd205', '', 'Sell', 3600, 3600, 0, NULL, '2019-10-01 19:21:53', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:21:58', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('edd18789-e49c-11e9-bc5d-0050569fd205', 37, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 1500, 1500, 0, NULL, '2019-10-02 00:43:46', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 00:43:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('6ca1dd54-e521-11e9-bc5d-0050569fd205', 38, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 350, 350, 0, NULL, '2019-10-02 16:32:13', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 16:35:44', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('41863356-e522-11e9-bc5d-0050569fd205', 39, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 2400, 0, 2400, NULL, '2019-10-02 16:38:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 16:38:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c5470f1a-e528-11e9-bc5d-0050569fd205', 40, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 7400, 2500, 4900, NULL, '2019-10-02 17:24:48', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 17:25:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('51263f49-e53b-11e9-bc5d-0050569fd205', 41, 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '', 'Sell', 1050, 1050, 0, NULL, '2019-10-02 19:37:33', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-10-02 19:37:39', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('74241911-e549-11e9-bc5d-0050569fd205', 42, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 840, 840, 0, NULL, '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 21:18:49', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('908f10b0-e5bd-11e9-bc5d-0050569fd205', 43, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 1700, 1700, 0, NULL, '2019-10-03 11:09:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 11:10:17', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7c473952-e5ef-11e9-bc5d-0050569fd205', 44, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 280, 280, 0, NULL, '2019-10-03 17:07:15', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 17:07:28', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('9328225c-e5ef-11e9-bc5d-0050569fd205', 45, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 140, 140, 0, NULL, '2019-10-03 17:07:54', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 17:07:58', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('238b17b9-e5ff-11e9-bc5d-0050569fd205', 46, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 650, 650, 0, NULL, '2019-10-03 18:59:18', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-07 14:21:46', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('b510c697-e673-11e9-bc5d-0050569fd205', 47, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 615, 615, 0, NULL, '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 08:53:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e1dff34b-e6aa-11e9-bc5d-0050569fd205', 48, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 2925, 2925, 0, NULL, '2019-10-04 15:28:41', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-07 14:21:43', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('f0adb40d-e6d1-11e9-bc5d-0050569fd205', 49, 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', '', 'Sell', 350, 0, 350, NULL, '2019-10-04 20:08:17', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:08:17', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('2010e350-e6d2-11e9-bc5d-0050569fd205', 50, 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', '', 'Sell', 4450, 4450, 0, NULL, '2019-10-04 20:09:36', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:09:42', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('842e515c-e804-11e9-bc5d-0050569fd205', 51, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 1015, 1015, 0, NULL, '2019-10-06 08:42:50', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-06 08:43:04', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('7f0a9a70-e8d0-11e9-bc5d-0050569fd205', 52, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 800, 800, 0, NULL, '2019-10-07 09:02:59', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-07 09:03:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('90f42a5a-e8d0-11e9-bc5d-0050569fd205', 53, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '', 'Sell', 2400, 2400, 0, NULL, '2019-10-07 09:03:29', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-07 09:03:31', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('fc0cd809-e8fc-11e9-bc5d-0050569fd205', 54, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 1000, 1000, 0, NULL, '2019-10-07 14:21:26', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-07 14:21:39', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('823ac4df-ecf0-11e9-91ab-0050569fd205', 55, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 30000, 0, 30000, NULL, '2019-10-12 15:02:13', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-12 15:02:13', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('501faa70-ef8f-11e9-8677-0050569fd205', 56, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 122800, 0, 122800, NULL, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5f014524-f687-11e9-987f-363532eb0721', 57, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 19324, 0, 19324, NULL, '2019-10-24 19:54:48', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:48', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('67bad2ad-f6a7-11e9-987f-363532eb0721', 58, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 411, 0, 411, NULL, '2019-10-24 23:44:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:44:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1ac31d2d-f6a9-11e9-987f-363532eb0721', 59, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 150174, 0, 150174, NULL, '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5a5cabaf-f6a9-11e9-987f-363532eb0721', 60, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 6554, 0, 6554, NULL, '2019-10-24 23:58:03', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:58:03', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('176078c3-f7eb-11e9-987f-363532eb0721', 61, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 19000, 0, 19000, NULL, '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('46fb6696-f800-11e9-987f-363532eb0721', 62, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 370, 0, 370, NULL, '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('46f355fd-f801-11e9-987f-363532eb0721', 63, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 690, 0, 690, NULL, '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4fad425e-f801-11e9-987f-363532eb0721', 64, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 170, 170, 0, NULL, '2019-10-26 17:00:12', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 17:01:25', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('9ef32ca1-f8ce-11e9-987f-363532eb0721', 65, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 71696, 0, 71696, NULL, '2019-10-27 17:29:52', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-27 17:29:52', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4df1bfef-f949-11e9-987f-363532eb0721', 66, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 525, 525, 0, NULL, '2019-10-28 08:08:04', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:54:38', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('a276a624-f953-11e9-987f-363532eb0721', 67, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 260, 260, 0, NULL, '2019-10-28 09:22:01', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-28 09:24:12', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('6cbe0117-fa78-11e9-987f-363532eb0721', 68, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 35730, 0, 35730, NULL, '2019-10-29 20:17:53', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:53', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6c84f2c9-fd3a-11e9-91af-363532eb0721', 69, '4b1f410b-e523-11e9-bc5d-0050569fd205', '', 'Sell', 500, 500, 0, NULL, '2019-11-02 08:31:38', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-02 08:32:08', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('0e00cfdd-fd44-11e9-91af-363532eb0721', 70, '4b1f410b-e523-11e9-bc5d-0050569fd205', '', 'Sell', 500, 500, 0, NULL, '2019-11-02 09:40:34', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-02 09:40:54', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('6392df65-fe25-11e9-91af-363532eb0721', 71, 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', '', 'Sell', 1500, 0, 1500, NULL, '2019-11-03 12:33:34', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:33:34', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('eaed6136-fed9-11e9-91af-363532eb0721', 72, '9b8ea912-e518-11e9-bc5d-0050569fd205', '', 'Sell', 1000010604, 0, 1000010604, NULL, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('e7bf290e-fee5-11e9-91af-363532eb0721', 73, '4b1f410b-e523-11e9-bc5d-0050569fd205', '', 'Sell', 250, 250, 0, NULL, '2019-11-04 11:31:40', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-09 23:15:03', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('c6212526-008f-11ea-91af-363532eb0721', 74, '5048f837-f66c-11e9-987f-363532eb0721', '', 'Sell', 12500, 12500, 0, NULL, '2019-11-06 14:20:09', '504b2c84-f66c-11e9-987f-363532eb0721', '2019-11-06 14:20:15', '504b2c84-f66c-11e9-987f-363532eb0721', 1),
('8b9360d7-009c-11ea-91af-363532eb0721', 75, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 170, 170, 0, NULL, '2019-11-06 15:51:34', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:54:32', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('b948e2eb-009c-11ea-91af-363532eb0721', 76, '23b82588-e370-11e9-bc5d-0050569fd205', '', 'Sell', 200, 200, 0, NULL, '2019-11-06 15:52:51', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:54:25', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('84c2a2bf-023f-11ea-91af-363532eb0721', 77, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 300, 0, 300, NULL, '2019-11-08 17:50:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-08 17:50:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5ab24ee1-02aa-11ea-91af-363532eb0721', 78, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '', 'Sell', 399, 0, 399, NULL, '2019-11-09 06:35:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d6aea23e-050c-11ea-80c4-4ad9491261dd', 79, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 190, 0, 190, NULL, '2019-11-12 07:25:28', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-12 07:25:28', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('dbe3d5c5-050c-11ea-80c4-4ad9491261dd', 80, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 190, 190, 0, NULL, '2019-11-12 07:25:37', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-12 07:26:28', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('b3fd0b6c-0787-11ea-bec8-4ad9491261dd', 81, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 190, 190, 0, NULL, '2019-11-15 11:10:00', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:10:17', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('c333e04c-0788-11ea-bec8-4ad9491261dd', 82, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 190, 190, 0, NULL, '2019-11-15 11:17:36', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:17:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('50717203-078a-11ea-bec8-4ad9491261dd', 83, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 885, 885, 0, NULL, '2019-11-15 11:28:42', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:29:08', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('7f0dbfb3-09c4-11ea-bec8-4ad9491261dd', 84, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 905, 905, 0, NULL, '2019-11-18 07:30:13', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:30:20', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('a8986f85-09c4-11ea-bec8-4ad9491261dd', 85, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 370, 370, 0, NULL, '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:26', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('253a91f5-09cb-11ea-bec8-4ad9491261dd', 86, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 910, 0, 910, NULL, '2019-11-18 08:17:49', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 08:17:49', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('ea7c611e-0ae9-11ea-bec8-4ad9491261dd', 87, '4b1f410b-e523-11e9-bc5d-0050569fd205', '', 'Sell', 750, 750, 0, NULL, '2019-11-19 18:30:36', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-19 18:30:50', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('47fa8054-0b53-11ea-bdbf-4ad9491261dd', 88, '0c89e134-02ca-11ea-91af-363532eb0721', '', 'Sell', 1625, 1625, 0, NULL, '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:05:02', '0c8c1818-02ca-11ea-91af-363532eb0721', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `Id` varchar(225) NOT NULL,
  `OrderId` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `ProductName` text,
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
('0008e665-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('00097e62-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0009b88f-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '1', 500000, '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0009f077-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', 'c54e67a9-dd62-11e9-8ffb-c8f7501047dc', 'BMW M3', 2500000, '1', 2500000, '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('000a22e7-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', 'AMG 45GL', 800000, '1', 800000, '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('000a8879-deda-11e9-adb6-48f17f8d4d88', 'ffffb742-ded9-11e9-adb6-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', 749990, '1', 749990, '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:45:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0398643f-e2b6-11e9-abbd-48f17f8d4d88', '038da776-e2b6-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '2', 300, '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0398b8c3-e2b6-11e9-abbd-48f17f8d4d88', '038da776-e2b6-11e9-abbd-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '1', 75, '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('039901a7-e2b6-11e9-abbd-48f17f8d4d88', '038da776-e2b6-11e9-abbd-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', 20, '1', 20, '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:38:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('04caae7b-dc88-11e9-9da6-c8f7501047dc', '04c3fad2-dc88-11e9-9da6-c8f7501047dc', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '1', 500000, '2019-09-21 17:53:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 17:53:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0a2483a1-dfbb-11e9-850f-48f17f8d4d88', '0a19dac0-dfbb-11e9-850f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-25 19:36:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:36:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0ce9a2ec-de09-11e9-adb6-48f17f8d4d88', '0ce4977b-de09-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0cea4583-de09-11e9-adb6-48f17f8d4d88', '0ce4977b-de09-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0cea7c4f-de09-11e9-adb6-48f17f8d4d88', '0ce4977b-de09-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '2', 1000000, '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:50:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0e32c261-fd44-11e9-91af-363532eb0721', '0e00cfdd-fd44-11e9-91af-363532eb0721', '6c34d999-f9cc-11e9-987f-363532eb0721', 'Konvikt (White/Black) ', 250, '2', 500, '2019-11-02 09:40:34', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-02 09:40:34', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('17966d5e-f7eb-11e9-987f-363532eb0721', '176078c3-f7eb-11e9-987f-363532eb0721', '3325dac6-f721-11e9-987f-363532eb0721', 'Rotray ', 5000, '2', 10000, '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1797268f-f7eb-11e9-987f-363532eb0721', '176078c3-f7eb-11e9-987f-363532eb0721', '1fa390e8-f687-11e9-987f-363532eb0721', 'Red chair ', 4000, '2', 8000, '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('17977ad0-f7eb-11e9-987f-363532eb0721', '176078c3-f7eb-11e9-987f-363532eb0721', '3ef1315b-f630-11e9-987f-363532eb0721', 'ndutest24', 500, '2', 1000, '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-26 14:21:09', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1975207d-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', 25, '2', 40, '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19756370-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', 'sasaS', 25, '3', 6, '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('19759d3d-d9d8-11e9-87f9-48f17f8d4d88', '196d945f-d9d8-11e9-87f9-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', 25, '1', 11, '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:49:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1b37241e-f6a9-11e9-987f-363532eb0721', '1ac31d2d-f6a9-11e9-987f-363532eb0721', 'f55adf15-e29a-11e9-abbd-48f17f8d4d88', 'Peri peri source', 100, '1', 100, '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1b379b9c-f6a9-11e9-987f-363532eb0721', '1ac31d2d-f6a9-11e9-987f-363532eb0721', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '3', 150000, '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1b37ee79-f6a9-11e9-987f-363532eb0721', '1ac31d2d-f6a9-11e9-987f-363532eb0721', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '2', 74, '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1d586a06-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', 25, '5', 125, '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d58ccbe-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '294bd779-da43-11e9-8f19-48f17f8d4d88', 'Coke 2l', 25, '5', 125, '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d591892-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', '45591137-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', 25, '6', 150, '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('1d59464e-da45-11e9-8f19-48f17f8d4d88', '1d51c1d0-da45-11e9-8f19-48f17f8d4d88', 'aa9b65d1-da42-11e9-8f19-48f17f8d4d88', 'Bread', 25, '3', 45, '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:49:59', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('2048b5b0-e6d2-11e9-bc5d-0050569fd205', '2010e350-e6d2-11e9-bc5d-0050569fd205', '48ffe7f7-e6ad-11e9-bc5d-0050569fd205', 'Red long dress', 500, '4', 2000, '2019-10-04 20:09:37', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:09:37', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('20490663-e6d2-11e9-bc5d-0050569fd205', '2010e350-e6d2-11e9-bc5d-0050569fd205', '148d64c6-e6ad-11e9-bc5d-0050569fd205', 'Noted t-shirt', 350, '4', 1400, '2019-10-04 20:09:37', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:09:37', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('204938d8-e6d2-11e9-bc5d-0050569fd205', '2010e350-e6d2-11e9-bc5d-0050569fd205', '8ede24b8-e6ad-11e9-bc5d-0050569fd205', 'Noted red and black ', 350, '3', 1050, '2019-10-04 20:09:37', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:09:37', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('221a299d-dc7d-11e9-84fb-c8f7501047dc', '22147e50-dc7d-11e9-84fb-c8f7501047dc', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '1', 500000, '2019-09-21 16:36:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 16:36:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2297b330-e2b6-11e9-abbd-48f17f8d4d88', '22905eb7-e2b6-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '8', 1200, '2019-09-29 14:39:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:39:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('22981e0f-e2b6-11e9-abbd-48f17f8d4d88', '22905eb7-e2b6-11e9-abbd-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '5', 185, '2019-09-29 14:39:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:39:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('23cd1926-e5ff-11e9-bc5d-0050569fd205', '238b17b9-e5ff-11e9-bc5d-0050569fd205', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'DÃ‰LICATE DE TOREN', 130, '5', 650, '2019-10-03 18:59:19', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 18:59:19', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('255bc322-09cb-11ea-bec8-4ad9491261dd', '253a91f5-09cb-11ea-bec8-4ad9491261dd', '8abee732-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 1kg Bean', 310, '1', 310, '2019-11-18 08:17:49', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 08:17:49', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('255c5081-09cb-11ea-bec8-4ad9491261dd', '253a91f5-09cb-11ea-bec8-4ad9491261dd', '6cc39a01-02e5-11ea-bc5e-363532eb0721', 'Living the Legacy 1kg Bean', 300, '2', 600, '2019-11-18 08:17:49', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 08:17:49', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('277c6652-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', 25, '2', 40, '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277ca77c-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '0ce8c8d7-d38f-11e9-a3ca-48f17f8d4d88', 'sasaS', 25, '3', 6, '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('277ce1fd-d9d8-11e9-87f9-48f17f8d4d88', '2774d9ad-d9d8-11e9-87f9-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', 25, '1', 11, '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-18 07:50:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('280de48d-db17-11e9-889b-48f17f8d4d88', '27ffbdec-db17-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', 20, '5', 100, '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:53:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2b91db93-de07-11e9-adb6-48f17f8d4d88', '2b8d4070-de07-11e9-adb6-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', 749990, '1', 749990, '2019-09-23 15:36:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 15:36:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('32372b72-e2b6-11e9-abbd-48f17f8d4d88', '3233d508-e2b6-11e9-abbd-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '8', 296, '2019-09-29 14:39:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:39:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('323795d6-e2b6-11e9-abbd-48f17f8d4d88', '3233d508-e2b6-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '2', 300, '2019-09-29 14:39:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:39:36', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3829f4bd-e2ee-11e9-bc5d-0050569fd205', '37ed16db-e2ee-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'zulu headband', 250, '10', 2500, '2019-09-29 21:20:38', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-29 21:20:38', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('382a8794-e2ee-11e9-bc5d-0050569fd205', '37ed16db-e2ee-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'Beads', 150, '10', 1500, '2019-09-29 21:20:38', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-29 21:20:38', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('3dffc3ba-dea4-11e9-adb6-48f17f8d4d88', '3df69136-dea4-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('3e002c3b-dea4-11e9-adb6-48f17f8d4d88', '3df69136-dea4-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '1', 500000, '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 10:20:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('41d567be-e522-11e9-bc5d-0050569fd205', '41863356-e522-11e9-bc5d-0050569fd205', 'dd0543c6-e51b-11e9-bc5d-0050569fd205', 'CONTINTAL', 1200, '2', 2400, '2019-10-02 16:38:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 16:38:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('44b5bf3e-e2b6-11e9-abbd-48f17f8d4d88', '44b004cc-e2b6-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '8', 1200, '2019-09-29 14:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('44b6340f-e2b6-11e9-abbd-48f17f8d4d88', '44b004cc-e2b6-11e9-abbd-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 450000, '50', 22500000, '2019-09-29 14:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:40:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('472eee15-f800-11e9-987f-363532eb0721', '46fb6696-f800-11e9-987f-363532eb0721', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'LEGACY', 85, '2', 170, '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('472ff4e4-f800-11e9-987f-363532eb0721', '46fb6696-f800-11e9-987f-363532eb0721', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'DÃ‰LICATE DE TOREN', 130, '1', 130, '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4730d47d-f800-11e9-987f-363532eb0721', '46fb6696-f800-11e9-987f-363532eb0721', '65794968-e512-11e9-bc5d-0050569fd205', 'Freedom Brew', 70, '1', 70, '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:52:48', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('47440664-f801-11e9-987f-363532eb0721', '46f355fd-f801-11e9-987f-363532eb0721', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'LEGACY', 85, '1', 85, '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4744742c-f801-11e9-987f-363532eb0721', '46f355fd-f801-11e9-987f-363532eb0721', '7cd35931-e515-11e9-bc5d-0050569fd205', '2014 NIGHT SKY', 165, '1', 165, '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4744c3c0-f801-11e9-987f-363532eb0721', '46f355fd-f801-11e9-987f-363532eb0721', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '1', 250, '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('474518cd-f801-11e9-987f-363532eb0721', '46f355fd-f801-11e9-987f-363532eb0721', 'bfe0152e-e514-11e9-bc5d-0050569fd205', '2016 RUPERT & ROTHSCHILD CLASSIQUE', 190, '1', 190, '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 16:59:58', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('47e2d033-dd32-11e9-8ffb-c8f7501047dc', '47db4965-dd32-11e9-8ffb-c8f7501047dc', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('47e3d56e-dd32-11e9-8ffb-c8f7501047dc', '47db4965-dd32-11e9-8ffb-c8f7501047dc', 'd142a93c-d71b-11e9-a568-c8f7501047dc', 'RS6 V8 TSI', 600000, '1', 600000, '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 14:12:43', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('48127498-0b53-11ea-bdbf-4ad9491261dd', '47fa8054-0b53-11ea-bdbf-4ad9491261dd', '8abee732-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 1kg Bean', 310, '1', 310, '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('481349a5-0b53-11ea-bdbf-4ad9491261dd', '47fa8054-0b53-11ea-bdbf-4ad9491261dd', '104dcbe8-02eb-11ea-bc5e-363532eb0721', 'Maboneng Brew 1kg Bean', 310, '3', 930, '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('4814327b-0b53-11ea-bdbf-4ad9491261dd', '47fa8054-0b53-11ea-bdbf-4ad9491261dd', '52e5f00a-02e9-11ea-bc5e-363532eb0721', 'Freedom Brew 250g Ground ', 85, '1', 85, '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('4818fe05-0b53-11ea-bdbf-4ad9491261dd', '47fa8054-0b53-11ea-bdbf-4ad9491261dd', '6cc39a01-02e5-11ea-bc5e-363532eb0721', 'Living the Legacy 1kg Bean', 300, '1', 300, '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('4ddb8fbb-db0d-11e9-889b-48f17f8d4d88', '494779ff-db0d-11e9-889b-48f17f8d4d88', '0b03b46c-d40a-11e9-9f95-48f17f8d4d88', 'Polo', 250000, '2', 500000, '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4ddc6ef6-db0d-11e9-889b-48f17f8d4d88', '494779ff-db0d-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', 250000, '2', 500000, '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:42:59', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('4e64a9fb-f949-11e9-987f-363532eb0721', '4df1bfef-f949-11e9-987f-363532eb0721', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'LEGACY', 85, '1', 85, '2019-10-28 08:08:05', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-28 08:08:05', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4e6716e4-f949-11e9-987f-363532eb0721', '4df1bfef-f949-11e9-987f-363532eb0721', 'bfe0152e-e514-11e9-bc5d-0050569fd205', '2016 RUPERT & ROTHSCHILD CLASSIQUE', 190, '1', 190, '2019-10-28 08:08:05', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-28 08:08:05', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4e689d9d-f949-11e9-987f-363532eb0721', '4df1bfef-f949-11e9-987f-363532eb0721', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '1', 250, '2019-10-28 08:08:05', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-28 08:08:05', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('4ffa081c-f801-11e9-987f-363532eb0721', '4fad425e-f801-11e9-987f-363532eb0721', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'LEGACY', 85, '2', 170, '2019-10-26 17:00:13', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-26 17:00:13', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('50587aa2-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', '1971058a-e5a6-11e9-bc5d-0050569fd205', 'BBS FI-R Wheel - 20x11.5 / 5x112 / 40mm Offset', 5000, '7', 35000, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5058b738-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', 'c215ad48-e5a5-11e9-bc5d-0050569fd205', 'BMW E30 CONCAVE ALLOY MAG 527 TYRE PACK', 7500, '8', 60000, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5058e2e9-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', 'dd0543c6-e51b-11e9-bc5d-0050569fd205', 'CONTINENTAL', 1200, '6', 7200, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('50590bab-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', '4c43a581-e51b-11e9-bc5d-0050569fd205', 'Goodyear Tyre', 350, '4', 1400, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('50593396-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', '3bc765d0-e5a4-11e9-bc5d-0050569fd205', 'Dunlop ', 700, '5', 3500, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('505969a2-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', '4b593bda-e5bd-11e9-bc5d-0050569fd205', 'Green lander 205 45 17', 850, '2', 1700, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('505990af-ef8f-11e9-8677-0050569fd205', '501faa70-ef8f-11e9-8677-0050569fd205', '52f44ac0-e5a5-11e9-bc5d-0050569fd205', '18 Audi Machined/Black Wheels Rims', 7000, '2', 14000, '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('50c51434-078a-11ea-bec8-4ad9491261dd', '50717203-078a-11ea-bec8-4ad9491261dd', '8abee732-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 1kg Bean', 310, '1', 310, '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('50c5a147-078a-11ea-bec8-4ad9491261dd', '50717203-078a-11ea-bec8-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '1', 95, '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('50c61e13-078a-11ea-bec8-4ad9491261dd', '50717203-078a-11ea-bec8-4ad9491261dd', 'fce162b2-02ee-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Bean ', 95, '1', 95, '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('50c68951-078a-11ea-bec8-4ad9491261dd', '50717203-078a-11ea-bec8-4ad9491261dd', '8dec8ac1-02ec-11ea-bc5e-363532eb0721', 'Loxion Kofi 250g Bean', 85, '1', 85, '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('50c70510-078a-11ea-bec8-4ad9491261dd', '50717203-078a-11ea-bec8-4ad9491261dd', '80083201-02ed-11ea-bc5e-363532eb0721', 'Loxion Kofi 1kg Bean', 300, '1', 300, '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:43', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('5234c36f-e53b-11e9-bc5d-0050569fd205', '51263f49-e53b-11e9-bc5d-0050569fd205', '37dc6136-e47b-11e9-bc5d-0050569fd205', 'Tshirt', 150, '7', 1050, '2019-10-02 19:37:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-10-02 19:37:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('59538a12-e097-11e9-993f-48f17f8d4d88', '5949f09f-e097-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-26 21:53:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:53:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('598be9fd-ded8-11e9-adb6-48f17f8d4d88', '5985c3d1-ded8-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-24 16:33:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 16:33:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5aa8ce50-f6a9-11e9-987f-363532eb0721', '5a5cabaf-f6a9-11e9-987f-363532eb0721', '1fa390e8-f687-11e9-987f-363532eb0721', 'Red chair ', 4000, '1', 4000, '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5aa943e6-f6a9-11e9-987f-363532eb0721', '5a5cabaf-f6a9-11e9-987f-363532eb0721', '7c110674-f631-11e9-987f-363532eb0721', 'Moseenter ', 777, '2', 1554, '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5aa9a07a-f6a9-11e9-987f-363532eb0721', '5a5cabaf-f6a9-11e9-987f-363532eb0721', '532d9305-f630-11e9-987f-363532eb0721', 'ndutest24', 500, '2', 1000, '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5c8239e8-db0e-11e9-889b-48f17f8d4d88', '5c75d725-db0e-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', 250000, '1', 250000, '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5c82c8f7-db0e-11e9-889b-48f17f8d4d88', '5c75d725-db0e-11e9-889b-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'UP', 250000, '1', 250000, '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:50:33', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5ff20e1f-f687-11e9-987f-363532eb0721', '5f014524-f687-11e9-987f-363532eb0721', '1fa390e8-f687-11e9-987f-363532eb0721', 'Red chair ', 4000, '3', 12000, '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5ff2ef10-f687-11e9-987f-363532eb0721', '5f014524-f687-11e9-987f-363532eb0721', '5f3ec6db-f63d-11e9-987f-363532eb0721', 'Washing bassin', 888, '3', 2664, '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5ff416e3-f687-11e9-987f-363532eb0721', '5f014524-f687-11e9-987f-363532eb0721', 'd15128fa-f63c-11e9-987f-363532eb0721', '3d Table', 609, '2', 1218, '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5ff461af-f687-11e9-987f-363532eb0721', '5f014524-f687-11e9-987f-363532eb0721', '7c110674-f631-11e9-987f-363532eb0721', 'Moseenter ', 777, '2', 1554, '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5ff4b00b-f687-11e9-987f-363532eb0721', '5f014524-f687-11e9-987f-363532eb0721', '4c6536c5-f62d-11e9-987f-363532eb0721', 'Crush', 444, '2', 888, '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5ff507a5-f687-11e9-987f-363532eb0721', '5f014524-f687-11e9-987f-363532eb0721', 'befcf88e-f62c-11e9-987f-363532eb0721', 'ndutest24', 500, '2', 1000, '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('63c3862d-fe25-11e9-91af-363532eb0721', '6392df65-fe25-11e9-91af-363532eb0721', '23b93d30-fe1a-11e9-91af-363532eb0721', 'Long dress', 1200, '1', 1200, '2019-11-03 12:33:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:33:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('63c46c3e-fe25-11e9-91af-363532eb0721', '6392df65-fe25-11e9-91af-363532eb0721', '37dc6136-e47b-11e9-bc5d-0050569fd205', 'Tshirt', 150, '2', 300, '2019-11-03 12:33:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:33:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('663cf57d-de12-11e9-adb6-48f17f8d4d88', '663290b7-de12-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '2', 1000000, '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('663d5717-de12-11e9-adb6-48f17f8d4d88', '663290b7-de12-11e9-adb6-48f17f8d4d88', '8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', 'AMG 45GL', 800000, '1', 800000, '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('663da89f-de12-11e9-adb6-48f17f8d4d88', '663290b7-de12-11e9-adb6-48f17f8d4d88', 'c54e67a9-dd62-11e9-8ffb-c8f7501047dc', 'BMW M3', 2500000, '5', 12500000, '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('66a7cbd2-de11-11e9-adb6-48f17f8d4d88', '669d1fdf-de11-11e9-adb6-48f17f8d4d88', 'd142a93c-d71b-11e9-a568-c8f7501047dc', 'RS6 V8 TSI', 600000, '3', 1800000, '2019-09-23 16:49:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 16:49:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('679a3228-02aa-11ea-91af-363532eb0721', '5ab24ee1-02aa-11ea-91af-363532eb0721', 'f55adf15-e29a-11e9-abbd-48f17f8d4d88', 'Peri peri source', 100, '1', 100, '2019-11-09 06:35:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('679ae1d4-02aa-11ea-91af-363532eb0721', '5ab24ee1-02aa-11ea-91af-363532eb0721', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '3', 225, '2019-11-09 06:35:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('679b51be-02aa-11ea-91af-363532eb0721', '5ab24ee1-02aa-11ea-91af-363532eb0721', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '2', 74, '2019-11-09 06:35:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('67fa68c4-f6a7-11e9-987f-363532eb0721', '67bad2ad-f6a7-11e9-987f-363532eb0721', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '4', 300, '2019-10-24 23:44:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:44:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('67fb1cd5-f6a7-11e9-987f-363532eb0721', '67bad2ad-f6a7-11e9-987f-363532eb0721', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '3', 111, '2019-10-24 23:44:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:44:07', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6a328bb4-e0e8-11e9-993f-48f17f8d4d88', '6a272ddf-e0e8-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '3', 150000, '2019-09-27 07:34:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:34:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6b18965c-e43a-11e9-bc5d-0050569fd205', '6ada4504-e43a-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'Traditional basket ', 800, '1', 800, '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('6b18dcc5-e43a-11e9-bc5d-0050569fd205', '6ada4504-e43a-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'zulu headband', 250, '1', 250, '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('6b1908f5-e43a-11e9-bc5d-0050569fd205', '6ada4504-e43a-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'Beads', 150, '10', 1500, '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:58:36', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('6cb8d971-fd3a-11e9-91af-363532eb0721', '6c84f2c9-fd3a-11e9-91af-363532eb0721', 'b410ebcc-f9cc-11e9-987f-363532eb0721', 'Konvikt (Black) ', 250, '2', 500, '2019-11-02 08:31:38', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-02 08:31:38', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('6d1a5e87-e521-11e9-bc5d-0050569fd205', '6ca1dd54-e521-11e9-bc5d-0050569fd205', '4c43a581-e51b-11e9-bc5d-0050569fd205', 'Goodyear Tyre', 350, '1', 350, '2019-10-02 16:32:13', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 16:32:13', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6d4e9ac9-fa78-11e9-987f-363532eb0721', '6cbe0117-fa78-11e9-987f-363532eb0721', '3325dac6-f721-11e9-987f-363532eb0721', 'Rotray ', 5000, '3', 15000, '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6d4f425e-fa78-11e9-987f-363532eb0721', '6cbe0117-fa78-11e9-987f-363532eb0721', '1fa390e8-f687-11e9-987f-363532eb0721', 'Red chair ', 4000, '4', 16000, '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6d4f9e20-fa78-11e9-987f-363532eb0721', '6cbe0117-fa78-11e9-987f-363532eb0721', '5f3ec6db-f63d-11e9-987f-363532eb0721', 'Washing bassin', 888, '3', 2664, '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6d4feec0-fa78-11e9-987f-363532eb0721', '6cbe0117-fa78-11e9-987f-363532eb0721', '572220fa-f631-11e9-987f-363532eb0721', 'noou', 33, '2', 66, '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6d5045aa-fa78-11e9-987f-363532eb0721', '6cbe0117-fa78-11e9-987f-363532eb0721', '3ef1315b-f630-11e9-987f-363532eb0721', 'ndutest24', 500, '2', 1000, '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6d509f1f-fa78-11e9-987f-363532eb0721', '6cbe0117-fa78-11e9-987f-363532eb0721', 'd34d0b79-f62b-11e9-987f-363532eb0721', 'ndutest24', 500, '2', 1000, '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('70da3588-e0e8-11e9-993f-48f17f8d4d88', '70cfedce-e0e8-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '2', 300, '2019-09-27 07:34:14', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:34:14', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('745bde45-e549-11e9-bc5d-0050569fd205', '74241911-e549-11e9-bc5d-0050569fd205', '65794968-e512-11e9-bc5d-0050569fd205', 'Freedom Brew', 70, '2', 140, '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('745c5fcd-e549-11e9-bc5d-0050569fd205', '74241911-e549-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '2', 500, '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('745c9728-e549-11e9-bc5d-0050569fd205', '74241911-e549-11e9-bc5d-0050569fd205', '0fb993dd-e513-11e9-bc5d-0050569fd205', 'Maboneng Brew', 100, '2', 200, '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 21:18:45', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('74778f39-e2ea-11e9-bc5d-0050569fd205', '7438ed6c-e2ea-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'zulu headband', 250, '3', 750, '2019-09-29 20:53:41', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 20:53:41', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('7478820a-e2ea-11e9-bc5d-0050569fd205', '7438ed6c-e2ea-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'Beads', 150, '2', 300, '2019-09-29 20:53:41', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 20:53:41', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('77bf4f95-dfba-11e9-850f-48f17f8d4d88', '77b4bb76-dfba-11e9-850f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '1', 37, '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('77c0fa45-dfba-11e9-850f-48f17f8d4d88', '77b4bb76-dfba-11e9-850f-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '1', 75, '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('77c14155-dfba-11e9-850f-48f17f8d4d88', '77b4bb76-dfba-11e9-850f-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', 20, '4', 80, '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:32:37', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('799ad5d4-e46c-11e9-bc5d-0050569fd205', '7952084b-e46c-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '6', 1500, '2019-10-01 18:56:55', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 18:56:55', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('7c8a2802-e5ef-11e9-bc5d-0050569fd205', '7c473952-e5ef-11e9-bc5d-0050569fd205', '65794968-e512-11e9-bc5d-0050569fd205', 'Freedom Brew', 70, '4', 280, '2019-10-03 17:07:16', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 17:07:16', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('7d083f91-e2ba-11e9-abbd-48f17f8d4d88', '7cfdc6f3-e2ba-11e9-abbd-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 450000, '5', 2250000, '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7d089008-e2ba-11e9-abbd-48f17f8d4d88', '7cfdc6f3-e2ba-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '20', 3000, '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7d08badb-e2ba-11e9-abbd-48f17f8d4d88', '7cfdc6f3-e2ba-11e9-abbd-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '15', 7500000, '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('7f2abee7-09c4-11ea-bec8-4ad9491261dd', '7f0dbfb3-09c4-11ea-bec8-4ad9491261dd', '8abee732-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 1kg Bean', 310, '2', 620, '2019-11-18 07:30:13', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:30:13', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('7f2c2642-09c4-11ea-bec8-4ad9491261dd', '7f0dbfb3-09c4-11ea-bec8-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '2', 190, '2019-11-18 07:30:14', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:30:14', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('7f2ca0dc-09c4-11ea-bec8-4ad9491261dd', '7f0dbfb3-09c4-11ea-bec8-4ad9491261dd', 'fce162b2-02ee-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Bean ', 95, '1', 95, '2019-11-18 07:30:14', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:30:14', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('7f405264-e8d0-11e9-bc5d-0050569fd205', '7f0a9a70-e8d0-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'Traditional basket ', 800, '1', 800, '2019-10-07 09:02:59', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-07 09:02:59', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('7ff38741-e2b0-11e9-abbd-48f17f8d4d88', '7cddfe9d-e2b0-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '10', 1500, '2019-09-29 13:58:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:58:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('82a2103e-ecf0-11e9-91ab-0050569fd205', '823ac4df-ecf0-11e9-91ab-0050569fd205', 'c215ad48-e5a5-11e9-bc5d-0050569fd205', 'BMW E30 CONCAVE ALLOY MAG 527 TYRE PACK', 7500, '4', 30000, '2019-10-12 15:02:13', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-12 15:02:13', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('82b100ee-e098-11e9-993f-48f17f8d4d88', '82a84fe1-e098-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-26 22:02:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:02:04', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('849a7996-e804-11e9-bc5d-0050569fd205', '842e515c-e804-11e9-bc5d-0050569fd205', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'DÃ‰LICATE DE TOREN', 130, '4', 520, '2019-10-06 08:42:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-06 08:42:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('849ccc10-e804-11e9-bc5d-0050569fd205', '842e515c-e804-11e9-bc5d-0050569fd205', '7cd35931-e515-11e9-bc5d-0050569fd205', '2014 NIGHT SKY', 165, '3', 495, '2019-10-06 08:42:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-06 08:42:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('84e0921a-023f-11ea-91af-363532eb0721', '84c2a2bf-023f-11ea-91af-363532eb0721', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '2', 300, '2019-11-08 17:50:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-08 17:50:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('86094909-e43a-11e9-bc5d-0050569fd205', '85c157dc-e43a-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'Traditional basket ', 800, '2', 1600, '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('8609d741-e43a-11e9-bc5d-0050569fd205', '85c157dc-e43a-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'zulu headband', 250, '2', 500, '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('860a848d-e43a-11e9-bc5d-0050569fd205', '85c157dc-e43a-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'Beads', 150, '2', 300, '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('87859e03-e098-11e9-993f-48f17f8d4d88', '87786b1c-e098-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '3', 450, '2019-09-26 22:02:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:02:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('897cd98c-e2b6-11e9-abbd-48f17f8d4d88', '89749618-e2b6-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '70', 10500, '2019-09-29 14:42:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:42:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('897d14fd-e2b6-11e9-abbd-48f17f8d4d88', '89749618-e2b6-11e9-abbd-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 450000, '45', 20250000, '2019-09-29 14:42:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:42:03', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8bc4480f-009c-11ea-91af-363532eb0721', '8b9360d7-009c-11ea-91af-363532eb0721', '400a31bd-e8fd-11e9-bc5d-0050569fd205', 'LEGACY', 85, '2', 170, '2019-11-06 15:51:34', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:51:34', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('90524e98-dfbe-11e9-850f-48f17f8d4d88', '904adb03-dfbe-11e9-850f-48f17f8d4d88', 'f7f77f35-dfbc-11e9-850f-48f17f8d4d88', 'Swimwear', 350, '3', 1050, '2019-09-25 20:01:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 20:01:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('90c8053f-e5bd-11e9-bc5d-0050569fd205', '908f10b0-e5bd-11e9-bc5d-0050569fd205', '4b593bda-e5bd-11e9-bc5d-0050569fd205', 'Green lander 205 45 17', 850, '2', 1700, '2019-10-03 11:09:55', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 11:09:55', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('91229ef8-e8d0-11e9-bc5d-0050569fd205', '90f42a5a-e8d0-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'Traditional basket ', 800, '3', 2400, '2019-10-07 09:03:29', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-07 09:03:29', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('93af97b7-e5ef-11e9-bc5d-0050569fd205', '9328225c-e5ef-11e9-bc5d-0050569fd205', '65794968-e512-11e9-bc5d-0050569fd205', 'Freedom Brew', 70, '2', 140, '2019-10-03 17:07:54', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-03 17:07:54', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('9684dc00-e0e8-11e9-993f-48f17f8d4d88', '967c0832-e0e8-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-27 07:35:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:35:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9715099d-e0e9-11e9-993f-48f17f8d4d88', '97082092-e0e9-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-27 07:42:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:42:28', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9c08e7d8-e0ea-11e9-993f-48f17f8d4d88', '9c006182-e0ea-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-27 07:49:46', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:49:46', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e21a2e6-e097-11e9-993f-48f17f8d4d88', '9e18d5a2-e097-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-26 21:55:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:55:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9c07b7-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '2L Fanta', 20, '2', 40, '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9cd95c-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', 20, '2', 40, '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9e9d3066-db15-11e9-889b-48f17f8d4d88', '9e8ec07e-db15-11e9-889b-48f17f8d4d88', '341a62c9-d38d-11e9-a3ca-48f17f8d4d88', 'Brown bread', 15, '1', 15, '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:42:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('9fd06b78-f8ce-11e9-987f-363532eb0721', '9ef32ca1-f8ce-11e9-987f-363532eb0721', '0ef06688-f631-11e9-987f-363532eb0721', 'Moo', 23232, '3', 69696, '2019-10-27 17:29:53', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-27 17:29:53', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('9fd0ff29-f8ce-11e9-987f-363532eb0721', '9ef32ca1-f8ce-11e9-987f-363532eb0721', '532d9305-f630-11e9-987f-363532eb0721', 'ndutest24', 500, '4', 2000, '2019-10-27 17:29:53', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-27 17:29:53', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a2aa6bfa-f953-11e9-987f-363532eb0721', 'a276a624-f953-11e9-987f-363532eb0721', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'DÃ‰LICATE DE TOREN', 130, '2', 260, '2019-10-28 09:22:01', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-28 09:22:01', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('a8b85c2a-09c4-11ea-bec8-4ad9491261dd', 'a8986f85-09c4-11ea-bec8-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '1', 95, '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('a8b9b564-09c4-11ea-bec8-4ad9491261dd', 'a8986f85-09c4-11ea-bec8-4ad9491261dd', 'fce162b2-02ee-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Bean ', 95, '1', 95, '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('a8ba432c-09c4-11ea-bec8-4ad9491261dd', 'a8986f85-09c4-11ea-bec8-4ad9491261dd', 'cb435b3c-02ed-11ea-bc5e-363532eb0721', 'Loxion Kofi 250g Ground ', 85, '1', 85, '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('a8bab2af-09c4-11ea-bec8-4ad9491261dd', 'a8986f85-09c4-11ea-bec8-4ad9491261dd', '44d795d6-02eb-11ea-bc5e-363532eb0721', 'Maboneng Brew 250g Ground ', 95, '1', 95, '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('aa5bf7fd-dc97-11e9-9da6-c8f7501047dc', 'aa508ac6-dc97-11e9-9da6-c8f7501047dc', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-21 19:45:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 19:45:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aca6ffd2-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', 'd6b01266-e159-11e9-9302-48f17f8d4d88', 'Vaseline', 12, '55', 660, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aca77580-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', 'f7f77f35-dfbc-11e9-850f-48f17f8d4d88', 'Swimwear', 350, '5', 1750, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aca7eca4-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', 'f55adf15-e29a-11e9-abbd-48f17f8d4d88', 'Peri peri source', 37, '4', 148, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('aca9a83d-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '3', 450, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('acaa14e5-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '2', 150, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('acaa8dfa-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '2', 74, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('acaaf76a-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', 20, '2', 40, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);
INSERT INTO `order_products` (`Id`, `OrderId`, `ProductId`, `ProductName`, `UnitPrice`, `Quantity`, `subTotal`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('acab6dae-e2c5-11e9-abbd-48f17f8d4d88', 'ac95b69a-e2c5-11e9-abbd-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 450000, '5', 2250000, '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b1745620-e2b0-11e9-abbd-48f17f8d4d88', 'b06842c9-e2b0-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '2', 300, '2019-09-29 14:00:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:00:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b2c7efc5-de98-11e9-adb6-48f17f8d4d88', 'b2c10452-de98-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-24 08:58:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 08:58:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b40bcd1e-e097-11e9-993f-48f17f8d4d88', 'b402bfbe-e097-11e9-993f-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', 749990, '1', 749990, '2019-09-26 21:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b43469ee-0787-11ea-bec8-4ad9491261dd', 'b3fd0b6c-0787-11ea-bec8-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '2', 190, '2019-11-15 11:10:01', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:10:01', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('b5472832-e673-11e9-bc5d-0050569fd205', 'b510c697-e673-11e9-bc5d-0050569fd205', '65794968-e512-11e9-bc5d-0050569fd205', 'Freedom Brew', 70, '1', 70, '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('b547f993-e673-11e9-bc5d-0050569fd205', 'b510c697-e673-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '1', 250, '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('b5483de5-e673-11e9-bc5d-0050569fd205', 'b510c697-e673-11e9-bc5d-0050569fd205', '7cd35931-e515-11e9-bc5d-0050569fd205', '2014 NIGHT SKY', 165, '1', 165, '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('b548b718-e673-11e9-bc5d-0050569fd205', 'b510c697-e673-11e9-bc5d-0050569fd205', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'DÃ‰LICATE DE TOREN', 130, '1', 130, '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 08:53:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('b5cc45a0-e15a-11e9-9302-48f17f8d4d88', 'b5c30fb6-e15a-11e9-9302-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '4', 600, '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b5cd3433-e15a-11e9-9302-48f17f8d4d88', 'b5c30fb6-e15a-11e9-9302-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 450000, '3', 1350000, '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 21:12:12', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b8dbb6f5-e35f-11e9-bc5d-0050569fd205', 'b8bb3c83-e35f-11e9-bc5d-0050569fd205', '8b7eaa93-e35f-11e9-bc5d-0050569fd205', 'Yealink T40 P', 800, '3', 2400, '2019-09-30 10:53:07', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:53:07', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('b91074dc-ddf8-11e9-adb6-48f17f8d4d88', 'b90c541a-ddf8-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-23 13:53:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 13:53:13', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b991a577-009c-11ea-91af-363532eb0721', 'b948e2eb-009c-11ea-91af-363532eb0721', '0fb993dd-e513-11e9-bc5d-0050569fd205', 'Maboneng Brew', 100, '2', 200, '2019-11-06 15:52:51', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:52:51', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('bc3cf54d-e0e8-11e9-993f-48f17f8d4d88', 'bc34e3da-e0e8-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-27 07:36:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:36:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('bc611332-e097-11e9-993f-48f17f8d4d88', 'bc5772ae-e097-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-26 21:56:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 21:56:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('bff6c43c-e2bc-11e9-abbd-48f17f8d4d88', 'bfe9aff3-e2bc-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '13', 1950, '2019-09-29 15:26:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:26:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c1864c38-e0e8-11e9-993f-48f17f8d4d88', 'c17c8582-e0e8-11e9-993f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '1', 500000, '2019-09-27 07:36:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:36:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3517a61-db0e-11e9-889b-48f17f8d4d88', 'c33faac2-db0e-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', 250000, '1', 250000, '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3521d56-db0e-11e9-889b-48f17f8d4d88', 'c33faac2-db0e-11e9-889b-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'Black Polo TSI 1.2', 250000, '2', 500000, '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 20:53:26', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c361de88-0788-11ea-bec8-4ad9491261dd', 'c333e04c-0788-11ea-bec8-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '2', 190, '2019-11-15 11:17:36', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:17:36', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('c3822c5a-e2b7-11e9-abbd-48f17f8d4d88', 'c37aa970-e2b7-11e9-abbd-48f17f8d4d88', 'f55adf15-e29a-11e9-abbd-48f17f8d4d88', 'Peri peri source', 37, '4', 148, '2019-09-29 14:50:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:50:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3826f30-e2b7-11e9-abbd-48f17f8d4d88', 'c37aa970-e2b7-11e9-abbd-48f17f8d4d88', 'd6b01266-e159-11e9-9302-48f17f8d4d88', 'Vaseline', 12, '4', 48, '2019-09-29 14:50:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 14:50:49', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3af059d-dfba-11e9-850f-48f17f8d4d88', 'c3a6a8a6-dfba-11e9-850f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '2', 1000000, '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c3afbf56-dfba-11e9-850f-48f17f8d4d88', 'c3a6a8a6-dfba-11e9-850f-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', 749990, '1', 749990, '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 19:34:45', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c575e14e-e528-11e9-bc5d-0050569fd205', 'c5470f1a-e528-11e9-bc5d-0050569fd205', '4c43a581-e51b-11e9-bc5d-0050569fd205', 'Goodyear Tyre', 350, '4', 1400, '2019-10-02 17:24:48', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 17:24:48', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c57733db-e528-11e9-bc5d-0050569fd205', 'c5470f1a-e528-11e9-bc5d-0050569fd205', 'dd0543c6-e51b-11e9-bc5d-0050569fd205', 'CONTINTAL', 1200, '5', 6000, '2019-10-02 17:24:48', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 17:24:48', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c6475e52-008f-11ea-91af-363532eb0721', 'c6212526-008f-11ea-91af-363532eb0721', 'b2a3853b-008f-11ea-91af-363532eb0721', 'Dell laptop ', 2500, '5', 12500, '2019-11-06 14:20:09', '504b2c84-f66c-11e9-987f-363532eb0721', '2019-11-06 14:20:09', '504b2c84-f66c-11e9-987f-363532eb0721', 1),
('cbbc78a8-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '0b03b46c-d40a-11e9-9f95-48f17f8d4d88', 'Polo', 250000, '2', 500000, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbd0ce7-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '0f507307-d630-11e9-b692-48f17f8d4d88', 'Yaris ', 250000, '2', 500000, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbd4987-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '1028ac34-d253-11e9-b97c-48f17f8d4d88', 'Suger', 11, '2', 22, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbd8984-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '15489da7-d458-11e9-9269-48f17f8d4d88', 'UP', 250000, '2', 500000, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbdd0af-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '159bb35f-d4ce-11e9-9492-48f17f8d4d88', 'Black Polo TSI 1.2', 250000, '2', 500000, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbe16f3-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '19d5d8ff-d256-11e9-b97c-48f17f8d4d88', '2L Fanta', 20, '2', 40, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbe5f26-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '2af16af1-d253-11e9-b97c-48f17f8d4d88', 'dad', 88, '1', 88, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbea68b-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '271800b9-d256-11e9-b97c-48f17f8d4d88', '2L Coke', 20, '2', 40, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbee550-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '33e4fecf-d245-11e9-b97c-48f17f8d4d88', 'Bread', 15, '2', 30, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbf22f1-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '3c211e2a-d253-11e9-b97c-48f17f8d4d88', 'DSA', 1, '2', 2, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbf5dc4-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '46fd465c-d40e-11e9-9f95-48f17f8d4d88', 'amg 45', 450000, '2', 900000, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbf9a46-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '4e9d1dab-d65f-11e9-857f-48f17f8d4d88', 'Carvella', 1200, '2', 2400, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cbbfc692-db0f-11e9-889b-48f17f8d4d88', 'cbb04cdc-db0f-11e9-889b-48f17f8d4d88', '535942fd-d253-11e9-b97c-48f17f8d4d88', 'WQ', 1, '2', 2, '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-19 21:00:50', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d478ef7c-e0ea-11e9-993f-48f17f8d4d88', 'd471c766-e0ea-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d479490f-e0ea-11e9-993f-48f17f8d4d88', 'd471c766-e0ea-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d479cb33-e0ea-11e9-993f-48f17f8d4d88', 'd471c766-e0ea-11e9-993f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '1', 37, '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d6fa2683-050c-11ea-80c4-4ad9491261dd', 'd6aea23e-050c-11ea-80c4-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '2', 190, '2019-11-12 07:25:29', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-12 07:25:29', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('d765b0cd-e0ea-11e9-993f-48f17f8d4d88', 'd75de234-e0ea-11e9-993f-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d7662ed9-e0ea-11e9-993f-48f17f8d4d88', 'd75de234-e0ea-11e9-993f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '2', 1000000, '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:25', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d78e7f26-df08-11e9-a724-48f17f8d4d88', 'd788f387-df08-11e9-a724-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '11', 407, '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d78f87a4-df08-11e9-a724-48f17f8d4d88', 'd788f387-df08-11e9-a724-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', 20, '2', 40, '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d790bdf8-df08-11e9-a724-48f17f8d4d88', 'd788f387-df08-11e9-a724-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '1', 75, '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 22:21:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d8c903dc-e430-11e9-bc5d-0050569fd205', 'd885e57b-e430-11e9-bc5d-0050569fd205', '4c104caa-e35d-11e9-bc5d-0050569fd205', 'Traditional basket ', 800, '2', 1600, '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('d8c9cb25-e430-11e9-bc5d-0050569fd205', 'd885e57b-e430-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'zulu headband', 250, '3', 750, '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('d8ca1f71-e430-11e9-bc5d-0050569fd205', 'd885e57b-e430-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'Beads', 150, '3', 450, '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 11:50:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('da461458-e0ea-11e9-993f-48f17f8d4d88', 'da3d1629-e0ea-11e9-993f-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '2', 1000000, '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('da466768-e0ea-11e9-993f-48f17f8d4d88', 'da3d1629-e0ea-11e9-993f-48f17f8d4d88', '6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', '2019 BMW - 330i (G20)', 749990, '2', 1499980, '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-27 07:51:30', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('db231946-e2ab-11e9-abbd-48f17f8d4d88', 'db1941b2-e2ab-11e9-abbd-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '2', 1000000, '2019-09-29 13:25:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:25:35', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('dbc2427b-e2c0-11e9-abbd-48f17f8d4d88', 'dbb9a90f-e2c0-11e9-abbd-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 450000, '10', 4500000, '2019-09-29 15:55:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:55:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('dbc2875a-e2c0-11e9-abbd-48f17f8d4d88', 'dbb9a90f-e2c0-11e9-abbd-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '5', 750, '2019-09-29 15:55:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:55:55', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('dc0357d4-050c-11ea-80c4-4ad9491261dd', 'dbe3d5c5-050c-11ea-80c4-4ad9491261dd', '69bccc6d-02ef-11ea-bc5e-363532eb0721', 'Soweto Taste 250g Ground ', 95, '2', 190, '2019-11-12 07:25:37', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-12 07:25:37', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('dc4b8a0c-dedd-11e9-a724-48f17f8d4d88', 'dc45da6b-dedd-11e9-a724-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', 20, '2', 40, '2019-09-24 17:13:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 17:13:27', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e2184c51-e6aa-11e9-bc5d-0050569fd205', 'e1dff34b-e6aa-11e9-bc5d-0050569fd205', 'e33f137a-e515-11e9-bc5d-0050569fd205', 'DÃ‰LICATE DE TOREN', 130, '4', 520, '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e219b499-e6aa-11e9-bc5d-0050569fd205', 'e1dff34b-e6aa-11e9-bc5d-0050569fd205', '7cd35931-e515-11e9-bc5d-0050569fd205', '2014 NIGHT SKY', 165, '3', 495, '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e21a3dc6-e6aa-11e9-bc5d-0050569fd205', 'e1dff34b-e6aa-11e9-bc5d-0050569fd205', 'bfe0152e-e514-11e9-bc5d-0050569fd205', '2016 RUPERT & ROTHSCHILD CLASSIQUE', 190, '4', 760, '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e21a8cb9-e6aa-11e9-bc5d-0050569fd205', 'e1dff34b-e6aa-11e9-bc5d-0050569fd205', '0fb993dd-e513-11e9-bc5d-0050569fd205', 'Maboneng Brew', 100, '4', 400, '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e21ac4c5-e6aa-11e9-bc5d-0050569fd205', 'e1dff34b-e6aa-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '3', 750, '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-04 15:28:42', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e43cefa8-e0e7-11e9-993f-48f17f8d4d88', 'e436ec4a-e0e7-11e9-993f-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-27 07:30:19', '50150', '2019-09-27 07:30:19', '50150', 1),
('e43d2ffa-e0e7-11e9-993f-48f17f8d4d88', 'e436ec4a-e0e7-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-27 07:30:19', '50150', '2019-09-27 07:30:19', '50150', 1),
('e59b6cbe-dc7b-11e9-84fb-c8f7501047dc', 'e592db2d-dc7b-11e9-84fb-c8f7501047dc', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '1', 50000, '2019-09-21 16:27:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 16:27:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e74a85fe-e0e7-11e9-993f-48f17f8d4d88', 'e745ac24-e0e7-11e9-993f-48f17f8d4d88', '2126dad9-df0a-11e9-a724-48f17f8d4d88', 'Mouse', 150, '1', 150, '2019-09-27 07:30:24', '187', '2019-09-27 07:30:24', '187', 1),
('e74af62e-e0e7-11e9-993f-48f17f8d4d88', 'e745ac24-e0e7-11e9-993f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '1', 37, '2019-09-27 07:30:24', '187', '2019-09-27 07:30:24', '187', 1),
('e7eaf67b-fee5-11e9-91af-363532eb0721', 'e7bf290e-fee5-11e9-91af-363532eb0721', '6c34d999-f9cc-11e9-987f-363532eb0721', 'Konvikt (White/Black) ', 250, '1', 250, '2019-11-04 11:31:40', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-04 11:31:40', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('e9b304c5-e2ad-11e9-abbd-48f17f8d4d88', 'e9abbccf-e2ad-11e9-abbd-48f17f8d4d88', 'f7f77f35-dfbc-11e9-850f-48f17f8d4d88', 'Swimwear', 350, '4', 1400, '2019-09-29 13:40:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:40:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('e9b37dcf-e2ad-11e9-abbd-48f17f8d4d88', 'e9abbccf-e2ad-11e9-abbd-48f17f8d4d88', 'd6b01266-e159-11e9-9302-48f17f8d4d88', 'Vaseline', 12, '2', 24, '2019-09-29 13:40:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 13:40:18', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ea9be48a-0ae9-11ea-bec8-4ad9491261dd', 'ea7c611e-0ae9-11ea-bec8-4ad9491261dd', 'b410ebcc-f9cc-11e9-987f-363532eb0721', 'Konvikt (Black) ', 250, '2', 500, '2019-11-19 18:30:36', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-19 18:30:36', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('ea9cbc23-0ae9-11ea-bec8-4ad9491261dd', 'ea7c611e-0ae9-11ea-bec8-4ad9491261dd', '6c34d999-f9cc-11e9-987f-363532eb0721', 'Konvikt (White/Black) ', 250, '1', 250, '2019-11-19 18:30:36', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-19 18:30:36', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('ead5f52b-da44-11e9-8f19-48f17f8d4d88', 'eacfd91e-da44-11e9-8f19-48f17f8d4d88', '2bc4d937-da42-11e9-8f19-48f17f8d4d88', 'Fanta orange 2l', 25, '5', 125, '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', '2019-09-18 20:48:34', 'b069dca0-da19-11e9-87f9-48f17f8d4d88', 1),
('eb1c3db2-fed9-11e9-91af-363532eb0721', 'eaed6136-fed9-11e9-91af-363532eb0721', 'bbc1878e-fed9-11e9-91af-363532eb0721', 'Coffee', 15, '4', 60, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('eb1cdff9-fed9-11e9-91af-363532eb0721', 'eaed6136-fed9-11e9-91af-363532eb0721', '8c08bced-fe02-11e9-91af-363532eb0721', 's', 22, '2', 44, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('eb1d3aa8-fed9-11e9-91af-363532eb0721', 'eaed6136-fed9-11e9-91af-363532eb0721', '4ad4272e-fdff-11e9-91af-363532eb0721', 'test', 200, '2', 400, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('eb1d9a99-fed9-11e9-91af-363532eb0721', 'eaed6136-fed9-11e9-91af-363532eb0721', '06cd6a13-fdff-11e9-91af-363532eb0721', 'Cup', 50, '2', 100, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('eb1df79e-fed9-11e9-91af-363532eb0721', 'eaed6136-fed9-11e9-91af-363532eb0721', '71078b38-fdfe-11e9-91af-363532eb0721', 'ndu', 500000000, '2', 1000000000, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('eb1e533a-fed9-11e9-91af-363532eb0721', 'eaed6136-fed9-11e9-91af-363532eb0721', '3325dac6-f721-11e9-987f-363532eb0721', 'Rotray ', 5000, '2', 10000, '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('ec7bb2bd-e098-11e9-993f-48f17f8d4d88', 'ec74312a-e098-11e9-993f-48f17f8d4d88', 'aa4825ec-df08-11e9-a724-48f17f8d4d88', '60 Eggs', 75, '1', 75, '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ec7c0794-e098-11e9-993f-48f17f8d4d88', 'ec74312a-e098-11e9-993f-48f17f8d4d88', 'c13b768a-dedd-11e9-a724-48f17f8d4d88', 'Bread', 20, '1', 20, '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:05:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ecc29a69-e349-11e9-bc5d-0050569fd205', 'ec8b04e2-e349-11e9-bc5d-0050569fd205', 'ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', 'zulu headband', 250, '4', 1000, '2019-09-30 08:17:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-30 08:17:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('ecc34668-e349-11e9-bc5d-0050569fd205', 'ec8b04e2-e349-11e9-bc5d-0050569fd205', '696fe4ae-e2e0-11e9-bc5d-0050569fd205', 'Beads', 150, '5', 750, '2019-09-30 08:17:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-09-30 08:17:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('ee17a51e-e49c-11e9-bc5d-0050569fd205', 'edd18789-e49c-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '6', 1500, '2019-10-02 00:43:47', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 00:43:47', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('f0e2ebfe-e6d1-11e9-bc5d-0050569fd205', 'f0adb40d-e6d1-11e9-bc5d-0050569fd205', '8ede24b8-e6ad-11e9-bc5d-0050569fd205', 'Noted red and black ', 350, '100', 350, '2019-10-04 20:08:17', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:08:17', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('f139cff8-dfbe-11e9-850f-48f17f8d4d88', 'f1305af7-dfbe-11e9-850f-48f17f8d4d88', '417ffc60-df08-11e9-a724-48f17f8d4d88', 'Peri peri source', 37, '1', 37, '2019-09-25 20:04:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-25 20:04:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f46c7abf-de13-11e9-adb6-48f17f8d4d88', 'f4673a17-de13-11e9-adb6-48f17f8d4d88', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f46ce54d-de13-11e9-adb6-48f17f8d4d88', 'f4673a17-de13-11e9-adb6-48f17f8d4d88', '5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '2019 Flex Genie', 50000, '3', 150000, '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f46d4ecd-de13-11e9-adb6-48f17f8d4d88', 'f4673a17-de13-11e9-adb6-48f17f8d4d88', '62bdfb82-d724-11e9-a568-c8f7501047dc', 'Golf GTI MK7', 500000, '3', 1500000, '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-23 17:08:09', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f6bc5709-e46f-11e9-bc5d-0050569fd205', 'f6721f21-e46f-11e9-bc5d-0050569fd205', 'd4cd04d5-e46f-11e9-bc5d-0050569fd205', 'RS-X Reinvention Sneakers', 1800, '2', 3600, '2019-10-01 19:21:54', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:21:54', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('fc3d3ec4-e8fc-11e9-bc5d-0050569fd205', 'fc0cd809-e8fc-11e9-bc5d-0050569fd205', '49e930fb-e45b-11e9-bc5d-0050569fd205', 'Shaka\'s Rock', 250, '4', 1000, '2019-10-07 14:21:27', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-10-07 14:21:27', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('fe8b4e29-dc7b-11e9-84fb-c8f7501047dc', 'fe82e06e-dc7b-11e9-84fb-c8f7501047dc', '0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '2019 Flex Genie', 50000, '2', 100000, '2019-09-21 16:27:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 16:27:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1);

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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`PartnerId`, `CompanyId`, `PartnerType`, `Name`, `Surname`, `CellphoneNumber`, `EmailAddress`, `Password`, `Address`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('27e2e62a-044e-11ea-80c4-4ad9491261dd', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', 'customer', 'Jj', 'H', '86', 'mrnnmthembu@gmail.com', '', '', '2019-11-11 08:40:31', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-11-11 08:40:31', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permision_actions`
--

CREATE TABLE `permision_actions` (
  `Id` int(10) NOT NULL,
  `PermissionId` varchar(225) NOT NULL,
  `Action` varchar(50) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`PermissionId`, `Name`, `CompanyId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('00c8ce1d-e558-11e9-bc5d-0050569fd205', 'can_add_products', '4b1f410b-e523-11e9-bc5d-0050569fd205', '2019-10-02 23:02:54', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-02 23:02:54', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('05c678d6-e45a-11e9-bc5d-0050569fd205', 'can_add_products', '23b82588-e370-11e9-bc5d-0050569fd205', '2019-10-01 16:44:50', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 16:44:50', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('05fb6122-e558-11e9-bc5d-0050569fd205', 'can_order_products', '4b1f410b-e523-11e9-bc5d-0050569fd205', '2019-10-02 23:03:03', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-02 23:03:03', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('0c863c82-ffae-11e9-91af-363532eb0721', 'can_configure', '0c852198-ffae-11e9-91af-363532eb0721', '2019-11-05 11:24:21', 'web', '2019-11-05 11:24:21', 'web', 1),
('0c8b1873-02ca-11ea-91af-363532eb0721', 'can_configure', '0c89e134-02ca-11ea-91af-363532eb0721', '2019-11-09 10:22:20', 'web', '2019-11-09 10:22:20', 'web', 1),
('1265be58-dc8e-11e9-9da6-c8f7501047dc', 'can_sell_products', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 18:37:16', 'SYS', '2019-09-21 18:37:16', 'SYS', 1),
('15a1d446-008b-11ea-91af-363532eb0721', 'can_configure', '159fe132-008b-11ea-91af-363532eb0721', '2019-11-06 13:46:35', 'web', '2019-11-06 13:46:35', 'web', 1),
('2a88d75b-f66b-11e9-987f-363532eb0721', 'can_configure', '2a87e487-f66b-11e9-987f-363532eb0721', '2019-10-24 16:32:54', 'web', '2019-10-24 16:32:54', 'web', 1),
('30fabf3b-f978-11e9-987f-363532eb0721', 'can_configure', '30f96e3f-f978-11e9-987f-363532eb0721', '2019-10-28 13:43:42', 'web', '2019-10-28 13:43:42', 'web', 1),
('3a46a025-008b-11ea-91af-363532eb0721', 'can_configure', '3a458a6c-008b-11ea-91af-363532eb0721', '2019-11-06 13:47:36', 'web', '2019-11-06 13:47:36', 'web', 1),
('3e892019-e55a-11e9-bc5d-0050569fd205', 'can_read_products', '4b1f410b-e523-11e9-bc5d-0050569fd205', '2019-10-02 23:18:57', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-02 23:18:57', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('410d2a1f-f668-11e9-987f-363532eb0721', 'can_configure', '41094864-f668-11e9-987f-363532eb0721', '2019-10-24 16:12:03', 'web', '2019-10-24 16:12:03', 'web', 1),
('49a905a4-fff0-11e9-91af-363532eb0721', 'can_configure', '49a75007-fff0-11e9-91af-363532eb0721', '2019-11-05 19:18:30', 'web', '2019-11-05 19:18:30', 'web', 1),
('504a54ff-f66c-11e9-987f-363532eb0721', 'can_configure', '5048f837-f66c-11e9-987f-363532eb0721', '2019-10-24 16:41:07', 'web', '2019-10-24 16:41:07', 'web', 1),
('5462be21-f668-11e9-987f-363532eb0721', 'can_configure', '5461f5f7-f668-11e9-987f-363532eb0721', '2019-10-24 16:12:36', 'web', '2019-10-24 16:12:36', 'web', 1),
('60dde6f1-dd5d-11e9-8ffb-c8f7501047dc', 'can_read_products', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 19:21:06', 'SYS', '2019-09-22 19:21:06', 'SYS', 1),
('b5fefde1-05e4-11ea-abc0-4ad9491261dd', 'can_configure', 'b5fdc28c-05e4-11ea-abc0-4ad9491261dd', '2019-11-13 09:10:45', 'web', '2019-11-13 09:10:45', 'web', 1),
('da59f011-dc8e-11e9-9da6-c8f7501047dc', 'can_order_products', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-21 18:42:51', 'SYS', '2019-09-22 19:20:43', 'SYS', 1),
('e81cd0d8-005b-11ea-91af-363532eb0721', 'can_configure', 'e81ad518-005b-11ea-91af-363532eb0721', '2019-11-06 08:08:52', 'web', '2019-11-06 08:08:52', 'web', 1);

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
('06cd6a13-fdff-11e9-91af-363532eb0721', '5c67df71-e519-11e9-bc5d-0050569fd205', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Cup', ' ', '50', 8, '', 'na', -1, NULL, '2019-11-03 07:58:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('0baaf6db-02e1-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', 'bb28d608-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Living the LEGACY 250g Bean', ' ', '85', 0, '', 'N/A', 8, 3, '2019-11-09 13:06:57', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:40:10', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('0c1f21ca-dc76-11e9-84fb-c8f7501047dc', '57600c70-d6ef-11e9-a5a1-c8f7501047dc', '5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 Flex Genie', 'New and exciting', '450000', 41000, '1234567814', '1234586', 35, 7, '2019-09-21 15:45:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('0ef06688-f631-11e9-987f-363532eb0721', '10664ace-e5bd-11e9-bc5d-0050569fd205', '6fca7387-e51a-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Moo', ' ', '23232', 323, '', 'na', 30, 33, '2019-10-24 09:36:57', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-27 17:29:52', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('0fb993dd-e513-11e9-bc5d-0050569fd205', '74512919-e457-11e9-bc5d-0050569fd205', '7574508c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, 'Maboneng Brew', 'Coffee beans', '100', 70, '', 'MB101', 42, 10, '2019-10-02 14:49:24', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-11-06 15:52:51', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('0ff9ae70-02ea-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '716d5a86-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Shakaâ€™s Rock 250 Ground ', ' ', '85', 0, '', 'MAB01-1-1', 7, 3, '2019-11-09 14:11:30', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:11:30', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('104dcbe8-02eb-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '4aaa291d-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Maboneng Brew 1kg Bean', ' ', '310', 0, '', 'MAB02', 0, 3, '2019-11-09 14:18:40', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('12a62f68-f5c4-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc2', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:36:48', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:36:48', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('148d64c6-e6ad-11e9-bc5d-0050569fd205', '', '', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', NULL, 'Noted t-shirt', ' ', '350', 300, '', 'Tsh', 26, 10, '2019-10-04 15:44:26', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:09:36', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('1971058a-e5a6-11e9-bc5d-0050569fd205', 'fe7cffe5-e5a5-11e9-bc5d-0050569fd205', '6fca7387-e51a-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'BBS FI-R Wheel - 20x11.5 / 5x112 / 40mm Offset', ' BBS FI-R Wheel - 20x11.5 / 5x112 / 40mm Offset', '5000', 4500, '', 'BBS-FI-112', 8, 5, '2019-10-03 08:21:56', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-25 12:38:19', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1fa390e8-f687-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Red chair ', ' ', '4000', 2800, '', 'na', 50, 2, '2019-10-24 19:53:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-31 09:33:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('1ff4af11-d73a-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Marvel logo (Red)', 'Marvel Merchendise', '900', 700, '122454874521', '123456789540', 0, 0, '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:53:45', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('2126dad9-df0a-11e9-a724-48f17f8d4d88', '2a13f21d-dfde-11e9-850f-48f17f8d4d88', 'c5ce3456-e29b-11e9-abbd-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Mouse', ' ', '150', 120, ' ', 'd', 0, 3, '2019-09-24 22:30:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-08 17:50:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('23b93d30-fe1a-11e9-91af-363532eb0721', 'e2ea95e5-e47a-11e9-bc5d-0050569fd205', 'fcfd2a2b-e47a-11e9-bc5d-0050569fd205', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', NULL, 'Long dress', ' ', '1200', 800, '', 'na', 9, 4, '2019-11-03 11:13:03', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:33:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('2407b643-f5c3-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:30:08', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:30:08', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('293460c8-02e9-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Freedom Brew 250g Bean', ' ', '85', 0, '', 'na', 8, 3, '2019-11-09 14:05:03', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:05:03', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('2996657d-02e2-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '87ae0cee-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Monate Decaf 250g Bean Flavoured', ' ', '115', 0, '', 'N/A', 0, 3, '2019-11-09 13:14:57', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:44:57', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('2cd7f8de-fff1-11e9-91af-363532eb0721', 'f354490f-fff0-11e9-91af-363532eb0721', 'ab1432f8-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', NULL, '1 Family Insurance', ' ', '250', 250, '', 'life-123', 10, 5, '2019-11-05 19:24:51', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:24:51', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('3325dac6-f721-11e9-987f-363532eb0721', '4bf57eac-e519-11e9-bc5d-0050569fd205', '6fca7387-e51a-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Rotray ', ' ', '5000', 4100, '', 'na', 43, 10, '2019-10-25 14:15:57', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('37dc6136-e47b-11e9-bc5d-0050569fd205', 'e2ea95e5-e47a-11e9-bc5d-0050569fd205', 'fcfd2a2b-e47a-11e9-bc5d-0050569fd205', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', NULL, 'Tshirt', ' ', '150', 70, '', '56473345', 1, 2, '2019-10-01 20:42:28', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:33:35', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('3bc765d0-e5a4-11e9-bc5d-0050569fd205', 'b949c5cd-e5a3-11e9-bc5d-0050569fd205', '99558bcf-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Dunlop ', ' Second hand Tyre 205/40/R16\"', '700', 500, '1111', 'D101', 5, 4, '2019-10-03 08:08:35', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('3ef1315b-f630-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 6, 0, '2019-10-24 09:31:08', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('400a31bd-e8fd-11e9-bc5d-0050569fd205', '74512919-e457-11e9-bc5d-0050569fd205', '7574508c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, 'LEGACY', ' COFFEE BEANS', '85', 60, '', 'L101', 12, 5, '2019-10-07 14:23:21', '704bf544-e517-11e9-bc5d-0050569fd205', '2019-11-06 15:51:34', '704bf544-e517-11e9-bc5d-0050569fd205', 1),
('417ffc60-df08-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Peri peri source', 'etra hot Peri peri source', '37', 25, ' ', 'HSC', 41, 5, '2019-09-24 22:16:56', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('43662134-fe26-11e9-91af-363532eb0721', 'e2ea95e5-e47a-11e9-bc5d-0050569fd205', 'fcfd2a2b-e47a-11e9-bc5d-0050569fd205', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', NULL, 'Ndu', ' ', '200', 120, '', 'na', 100, 40, '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', '2019-11-03 12:39:50', '70648b1d-e47a-11e9-bc5d-0050569fd205', 1),
('44d795d6-02eb-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '716d5a86-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Maboneng Brew 250g Ground ', ' ', '95', 0, '', 'MAB01', 7, 3, '2019-11-09 14:20:08', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('4816abad-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Agents ', 'News ', '500', 350, '12345487576321', '1234548757', 0, 0, '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:47:43', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('48ffe7f7-e6ad-11e9-bc5d-0050569fd205', '', '', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', NULL, 'Red long dress', ' ', '500', 380, '', 'Cap ', 96, 50, '2019-10-04 15:45:53', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:09:36', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('49e930fb-e45b-11e9-bc5d-0050569fd205', '74512919-e457-11e9-bc5d-0050569fd205', '7574508c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, 'Shaka\'s Rock', ' Coffee beans', '250', 100, '11111111', 'SR101', 12, 6, '2019-10-01 16:53:54', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-28 08:08:04', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('4ad4272e-fdff-11e9-91af-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'test', ' ', '200', 20, '', 'na', -1, 2, '2019-11-03 08:00:52', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4b593bda-e5bd-11e9-bc5d-0050569fd205', '10664ace-e5bd-11e9-bc5d-0050569fd205', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Green lander 205 45 17', ' ', '850', 700, '', 'Gl', 0, 2, '2019-10-03 11:07:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4c104caa-e35d-11e9-bc5d-0050569fd205', '27dd4942-e2e1-11e9-bc5d-0050569fd205', '', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', NULL, 'Traditional basket ', 'Yealink Sip phone ', '800', 60, '1212121212231', 'YSIP101', 41, 5, '2019-09-30 10:35:45', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-07 09:03:29', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('4c43a581-e51b-11e9-bc5d-0050569fd205', '54b5877f-e519-11e9-bc5d-0050569fd205', '8eb73c16-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Goodyear Tyre', ' 175/40R17\'\'', '350', 300, ' ', 'GYR17', 16, 30, '2019-10-02 15:48:21', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('4c6536c5-f62d-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Crush', ' ', '444', 222, '', 'na', 20, 83, '2019-10-24 09:10:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:49', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5264b66d-d6f0-11e9-a5a1-c8f7501047dc', '57600c70-d6ef-11e9-a5a1-c8f7501047dc', '5dfa3060-d6ef-11e9-a5a1-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 Flex Genie', 'New and exciting', '50000', 45000, '12345678142', '1234586', 182, 0, '2019-09-14 15:05:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-24 23:56:17', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('52e5f00a-02e9-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '716d5a86-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Freedom Brew 250g Ground ', ' ', '85', 0, '', 'MAB01-1-1-1', 7, 3, '2019-11-09 14:06:12', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('52f44ac0-e5a5-11e9-bc5d-0050569fd205', '888c5e79-e5a6-11e9-bc5d-0050569fd205', '6fca7387-e51a-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, '18 Audi Machined/Black Wheels Rims', ' Set Of 4 Rims NEW!', '7000', 5000, '111', 'AUD-321-18-MB', 8, 3, '2019-10-03 08:16:23', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('532d9305-f630-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 4, 0, '2019-10-24 09:31:42', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-27 17:29:52', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('53696c98-f62b-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 10, 0, '2019-10-24 08:55:55', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:55:55', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('53c2c7c4-fff1-11e9-91af-363532eb0721', 'c8e33adb-fff0-11e9-91af-363532eb0721', 'ab1432f8-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', NULL, 'Left Insurance', ' ', '1800', 1000, '', 'car-123', 50, 10, '2019-11-05 19:25:56', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:25:56', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('572220fa-f631-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'noou', ' ', '33', 33, '', 'na', 31, NULL, '2019-10-24 09:38:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('57703b24-02ea-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Maboneng Brew 250g Bean', ' ', '95', 0, '', 'na', 4, 3, '2019-11-09 14:13:30', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:13:30', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('58f0ab00-f594-11e9-987f-363532eb0721', '4bf57eac-e519-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Good morning ', ' ', '600', 6000, '', 'na', 66, 10, '2019-10-23 14:55:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 14:55:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5a64f79d-f5c6-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc2510s', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:53:08', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:53:08', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('5f3ec6db-f63d-11e9-987f-363532eb0721', '54b5877f-e519-11e9-bc5d-0050569fd205', '99558bcf-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Washing bassin', ' ', '888', 0, '', 'na', 60, 6, '2019-10-24 11:05:06', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('601325fb-fede-11e9-91af-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Keyboard ', ' ', '11', 1, '', 'na', 11, 1, '2019-11-04 10:37:45', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:39:43', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('62bdfb82-d724-11e9-a568-c8f7501047dc', '394a1196-d409-11e9-9f95-48f17f8d4d88', '2f1dd86d-d409-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Golf GTI MK7', 'DSG GTI', '500000', 350000, '5877469857', '123456789', 0, 0, '2019-09-14 21:18:08', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 15:10:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('65794968-e512-11e9-bc5d-0050569fd205', '74512919-e457-11e9-bc5d-0050569fd205', '7574508c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, 'Freedom Brew', '  Coffee beans', '70', 50, '101010101', 'FB101', 0, 5, '2019-10-02 14:44:38', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-26 16:52:48', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('696fe4ae-e2e0-11e9-bc5d-0050569fd205', '', '', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', NULL, 'Beads', ' ', '150', 80, '787878 ', 'B123', 68, 30, '2019-09-29 19:41:48', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
('69bccc6d-02ef-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '716d5a86-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Soweto Taste 250g Ground ', ' ', '95', 0, '', 'MAB01-1-1-1-1', 0, 3, '2019-11-09 14:49:48', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('6ae05f7d-f5c4-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc25', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:39:16', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:39:16', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('6ae6f763-d6f4-11e9-a5a1-c8f7501047dc', 'ff011748-d40d-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019 BMW - 330i (G20)', 'M-Sport Launch Edition Auto with 11000km', '749990', 600000, '334578641', '5605464', 0, 0, '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:34:40', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6c34d999-f9cc-11e9-987f-363532eb0721', '25c86184-f9cc-11e9-987f-363532eb0721', '38d9fc30-f9cc-11e9-987f-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', NULL, 'Konvikt (White/Black) ', ' ', '250', 125, '', 'kvt-01', 4, 5, '2019-10-28 23:46:39', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-19 18:36:18', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('6cc39a01-02e5-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '4aaa291d-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Living the Legacy 1kg Bean', ' ', '300', 0, '', 'MAB02-1', 0, 3, '2019-11-09 13:38:18', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('700131a7-fff1-11e9-91af-363532eb0721', 'db0d891c-fff0-11e9-91af-363532eb0721', 'b6188d56-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', NULL, 'Fruits Mix', ' ', '50', 25, '', 'fruit-123', 60, 10, '2019-11-05 19:26:44', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:26:44', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('71078b38-fdfe-11e9-91af-363532eb0721', 'd01900bd-e5a6-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndu', ' ', '500000000', 99999, '', 'na', 0, NULL, '2019-11-03 07:54:47', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 16:34:41', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7c110674-f631-11e9-987f-363532eb0721', 'fe7cffe5-e5a5-11e9-bc5d-0050569fd205', '99558bcf-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Moseenter ', ' ', '777', 66, '', 'na', 62, 55, '2019-10-24 09:40:00', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 23:58:04', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('7cd35931-e515-11e9-bc5d-0050569fd205', '4369bfef-e515-11e9-bc5d-0050569fd205', '94faad66-e514-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2014 NIGHT SKY', '  FABLE MOUNTAIN VINEYARDS', '165', 120, '', 'FM101', 32, 10, '2019-10-02 15:06:46', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-26 16:59:58', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('7e6878d4-f5c4-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc25', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:39:49', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:39:49', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('80083201-02ed-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '4aaa291d-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Loxion Kofi 1kg Bean', ' ', '300', 0, '', 'MAB02-1-1-1-2', 2, 3, '2019-11-09 14:36:06', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:42', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('81ccc2d8-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Avengers (black)', 'White logo A - Snap', '600', 400, '2134587651', '245878000', 0, 0, '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:49:20', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('822e8654-f629-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 10, 0, '2019-10-24 08:42:54', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:42:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('85315856-f5c5-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc2510', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:47:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:47:10', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('87110bf9-fff1-11e9-91af-363532eb0721', 'db0d891c-fff0-11e9-91af-363532eb0721', 'b6188d56-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', NULL, 'Vegitables', ' ', '150', 100, '', 'veg-123', 50, 10, '2019-11-05 19:27:22', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:27:22', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('883fc2b8-02e9-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Shakaâ€™s Rock 250g Bean ', ' ', '85', 0, '', 'na', 6, 3, '2019-11-09 14:07:42', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:07:42', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8aadcceb-d6f7-11e9-a5a1-c8f7501047dc', '63fe669f-d6f7-11e9-a5a1-c8f7501047dc', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'AMG 45GL', '2019 Compact coupe convertable', '800000', 750000, '3657894115', '3657894115', 0, 0, '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-14 15:57:01', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('8abee732-02ef-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '4aaa291d-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Soweto Taste 1kg Bean', ' ', '310', 0, '', 'MAB02-1-1-1-1', -2, 3, '2019-11-09 14:50:43', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-20 07:04:50', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8b7eaa93-e35f-11e9-bc5d-0050569fd205', 'f9587770-e35e-11e9-bc5d-0050569fd205', '0a9c6333-e35f-11e9-bc5d-0050569fd205', 'a8e9befd-e35e-11e9-bc5d-0050569fd205', NULL, 'Yealink T40 P', 'Sip phones', '800', 600, '1232231', 'T40P', 17, 5, '2019-09-30 10:51:51', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', '2019-09-30 10:53:07', 'cd3cf692-e35d-11e9-bc5d-0050569fd205', 1),
('8c08bced-fe02-11e9-91af-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 's', ' ', '22', 22, '', 'na', 0, 2, '2019-11-03 08:24:10', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('8d636a0c-02e4-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', 'bb28d608-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Monate Decaf 250g Bean  Non-Flavoured', ' ', '105', 0, '', 'na', 10, 3, '2019-11-09 13:32:03', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:46:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8dec8ac1-02ec-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Loxion Kofi 250g Bean', ' ', '85', 0, '', 'na', 7, 3, '2019-11-09 14:29:20', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:28:42', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8ede24b8-e6ad-11e9-bc5d-0050569fd205', '', '44c3f2a7-e6d3-11e9-bc5d-0050569fd205', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', NULL, 'Noted red and black ', ' ', '350', 300, '', 'Tsh', 47, 5, '2019-10-04 15:47:51', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 20:18:08', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('9b4074d1-f62a-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 10, 0, '2019-10-24 08:50:46', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:50:46', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('a5382261-fff1-11e9-91af-363532eb0721', 'e899e373-fff0-11e9-91af-363532eb0721', 'b6188d56-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', NULL, 'A Grade Meat', ' ', '250', 150, '', 'meats-123', 50, 10, '2019-11-05 19:28:13', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:28:19', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('a82a8f0b-f5c4-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc25', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:40:59', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:40:59', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('aa4825ec-df08-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '60 Eggs', ' 60 Lg Eggs', '75', 45, '', 'EGGZ1', 10, 10, '2019-09-24 22:19:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('b13f68e8-f978-11e9-987f-363532eb0721', '9453ec53-f978-11e9-987f-363532eb0721', '8b7f4671-f978-11e9-987f-363532eb0721', 'n/a', NULL, 'Red Bandeu Bikini', ' ', '300', 90, '', '145', 20, 2, '2019-10-28 13:47:17', '30fbbfbc-f978-11e9-987f-363532eb0721', '2019-10-28 13:47:26', '30fbbfbc-f978-11e9-987f-363532eb0721', 1),
('b2a3853b-008f-11ea-91af-363532eb0721', '', '', '5048f837-f66c-11e9-987f-363532eb0721', NULL, 'Dell laptop ', ' ', '8500', 6200, '', 'na', 50, NULL, '2019-11-06 14:19:36', '504b2c84-f66c-11e9-987f-363532eb0721', '2019-11-07 09:30:04', '504b2c84-f66c-11e9-987f-363532eb0721', 1),
('b3946def-f629-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 10, 0, '2019-10-24 08:44:17', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:44:17', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('b3a83a69-fee9-11e9-91af-363532eb0721', '54b5877f-e519-11e9-bc5d-0050569fd205', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Test', ' ', '500', 0, '', 'na', 50, 2, '2019-11-04 11:58:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 11:59:30', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('b410ebcc-f9cc-11e9-987f-363532eb0721', '25c86184-f9cc-11e9-987f-363532eb0721', '38d9fc30-f9cc-11e9-987f-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', NULL, 'Konvikt (Black) ', ' ', '250', 125, '', 'kvt-02', 4, 5, '2019-10-28 23:48:40', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-19 18:30:36', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('b4518105-02e9-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '4aaa291d-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Shakaâ€™s Rock 1kg Bean ', ' ', '300', 0, '', 'MAB02-1-1', 7, 3, '2019-11-09 14:08:56', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:08:56', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('bb895416-f62a-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 10, 0, '2019-10-24 08:51:40', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 08:51:40', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('bbc1878e-fed9-11e9-91af-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Coffee', ' ', '15', 10, '', 'na', 6, NULL, '2019-11-04 10:04:32', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:05:51', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('bdab5ed6-f592-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'test new', ' ', '5000', 4500, '', 'na', 10, 5, '2019-10-23 14:43:40', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 14:43:40', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('befcf88e-f62c-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 8, 0, '2019-10-24 09:06:05', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:49', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('bfe0152e-e514-11e9-bc5d-0050569fd205', '8b41eba2-e514-11e9-bc5d-0050569fd205', '7574508c-e45b-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2016 RUPERT & ROTHSCHILD CLASSIQUE', ' CLASSIQUE', '190', 100, '', 'RRC101', 44, 10, '2019-10-02 15:01:29', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-28 08:08:04', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('c13b768a-dedd-11e9-a724-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Bread', 'Bread', '20', 12, ' 3213 332143243243', ' bb123', 27, 5, '2019-09-24 17:12:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('c215ad48-e5a5-11e9-bc5d-0050569fd205', '52c29874-e5a6-11e9-bc5d-0050569fd205', '6fca7387-e51a-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'BMW E30 CONCAVE ALLOY MAG 527 TYRE PACK', ' BMW E30 CONCAVE ALLOY MAG 527 TYRE PACK NEW', '7500', 5000, '1111', 'BMWE3001', 0, 4, '2019-10-03 08:19:30', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('c4a2fd7d-fff1-11e9-91af-363532eb0721', 'e899e373-fff0-11e9-91af-363532eb0721', 'b6188d56-fff0-11e9-91af-363532eb0721', '49a75007-fff0-11e9-91af-363532eb0721', NULL, 'Polony Extra', ' ', '250', 100, '', 'polo-123', 120, 10, '2019-11-05 19:29:06', '49aa0dc7-fff0-11e9-91af-363532eb0721', '2019-11-05 19:29:06', '49aa0dc7-fff0-11e9-91af-363532eb0721', 1),
('c54e67a9-dd62-11e9-8ffb-c8f7501047dc', 'ff011748-d40d-11e9-9f95-48f17f8d4d88', '283c46c3-d40e-11e9-9f95-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'BMW M3', '2020 BMW M3 Competion Pack', '2500000', 1500000, '852369741', '963258741', 0, 0, '2019-09-22 19:59:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-22 19:59:42', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('cb435b3c-02ed-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Loxion Kofi 250g Ground ', ' ', '85', 0, '', 'MAB01-1-1-1-2', 7, 3, '2019-11-09 14:38:12', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('cd71df61-02e5-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', 'bb28d608-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Living The LEGACY 250g Ground', ' ', '85', 0, '', 'MAB01-1', 8, 3, '2019-11-09 13:41:00', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:41:00', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('cdd86351-e366-11e9-bc5d-0050569fd205', '', '', 'c753fd7b-e363-11e9-bc5d-0050569fd205', NULL, 'Coffee beans ', ' Coffee beans', '1', 1, '1233', 'BN123', 20, 5, '2019-09-30 11:43:49', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 11:47:40', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('d060ca79-02e8-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '716d5a86-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Monate Decaf 250g Ground Non-Flavoured', ' ', '115', 0, '', 'na', 10, 3, '2019-11-09 14:02:33', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 14:02:33', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('d142a93c-d71b-11e9-a568-c8f7501047dc', 'a0549079-d71b-11e9-a568-c8f7501047dc', 'b3150f0b-d71b-11e9-a568-c8f7501047dc', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'RS6 V8 TSI', 'Turbo charged twin turbo', '600000', 450000, '123456785978', '12345784', 20, 30, '2019-09-14 20:16:48', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 18:40:16', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('d15128fa-f63c-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, '3d Table', ' ', '609', 300, '', 'na', 18, 5, '2019-10-24 11:01:08', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-24 19:54:49', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d34d0b79-f62b-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 8, 0, '2019-10-24 08:59:30', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-29 20:17:54', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('d4cd04d5-e46f-11e9-bc5d-0050569fd205', '6983b8cd-e46f-11e9-bc5d-0050569fd205', 'cc54bfc5-e46f-11e9-bc5d-0050569fd205', '12cf03f6-e46f-11e9-bc5d-0050569fd205', NULL, 'RS-X Reinvention Sneakers', ' ', '1800', 1200, '', ' RXS-01', 98, 30, '2019-10-01 19:20:57', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:21:53', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('d6b01266-e159-11e9-9302-48f17f8d4d88', 'c57b6b5d-e159-11e9-9302-48f17f8d4d88', 'd06f91a1-e159-11e9-9302-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Vaseline', ' ', '12', 8, '15454 4545 4545', '#v123', 0, 0, '2019-09-27 21:05:58', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 16:30:24', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('dd0543c6-e51b-11e9-bc5d-0050569fd205', '5c67df71-e519-11e9-bc5d-0050569fd205', '99558bcf-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'CONTINENTAL', ' 205/55R16', '1200', 1000, '1111111', 'CCR16', 2, 5, '2019-10-02 15:52:24', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-15 23:04:01', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('e33f137a-e515-11e9-bc5d-0050569fd205', '', '94faad66-e514-11e9-bc5d-0050569fd205', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, 'DÃ‰LICATE DE TOREN', 'DÃ‰LICATE-DE TOREN', '130', 55, ' ', 'DDT101', 43, 10, '2019-10-02 15:09:38', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-28 09:22:01', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('e50976e6-f592-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'test new1', ' ', '5000', 4500, '', 'na', 10, 5, '2019-10-23 14:44:46', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 14:44:46', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('e7d5a7aa-02e6-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '8ce57ffb-02e1-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Monate Decaf 250g Ground Flavored', ' ', '115', 0, '', 'na', 0, 3, '2019-11-09 13:48:54', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-09 13:48:54', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('ebd4e603-f5c5-11e9-987f-363532eb0721', '3f40c927-e5a8-11e9-bc5d-0050569fd205', '72f06087-e519-11e9-bc5d-0050569fd205', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'cc2510', ' ', '11', 1, '', 'na', 1, 1, '2019-10-23 20:50:02', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-23 20:50:02', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('ef6cecb1-f62a-11e9-987f-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'ndutest24', ' ', '500', 280, '', 'na', 10, 0, '2019-10-24 08:53:07', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 08:46:44', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('efb7a14b-d739-11e9-a568-c8f7501047dc', '9f32cf78-d737-11e9-a568-c8f7501047dc', 'd5f42399-d737-11e9-a568-c8f7501047dc', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, 'Spiderman Logo (Red)', 'Homecoming 2018 Merch', '500', 350, '12345678951', '12345678950', 0, 0, '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', '2019-09-14 23:52:24', 'ba6257ea-d307-11e9-a45b-0050569fd205', 1),
('f55adf15-e29a-11e9-abbd-48f17f8d4d88', '', '', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Peri peri source', 'Xtra hot Peri peri source', '100', 50, ' ', 'HSC', 0, 5, '2019-09-29 11:24:38', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-09 06:35:52', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f74e9fc8-fedb-11e9-91af-363532eb0721', '', '', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, 'Love ', ' ', '200', 10, '', 'na', 10, NULL, '2019-11-04 10:20:31', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-11-04 10:37:59', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('f7f77f35-dfbc-11e9-850f-48f17f8d4d88', '', 'd7145d3e-dfbc-11e9-850f-48f17f8d4d88', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, 'Swimwear', ' Swimwear', '1000', 100, ' ', '121212', 0, 2, '2019-09-25 19:50:31', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-29 18:31:39', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('f946aa0b-0090-11ea-91af-363532eb0721', '', '', '5048f837-f66c-11e9-987f-363532eb0721', NULL, 'JBL Charge 3 Portable Bluetooth Speaker, 20 W', ' ', '2200', 1600, '', 'na', 10, NULL, '2019-11-06 14:28:44', '504b2c84-f66c-11e9-987f-363532eb0721', '2019-11-06 14:30:25', '504b2c84-f66c-11e9-987f-363532eb0721', 1),
('fce162b2-02ee-11ea-bc5e-363532eb0721', 'c39af95e-02cb-11ea-91af-363532eb0721', '549a1ea5-02df-11ea-bc5e-363532eb0721', '0c89e134-02ca-11ea-91af-363532eb0721', NULL, 'Soweto Taste 250g Bean ', ' ', '95', 0, '', 'na', 3, 3, '2019-11-09 14:46:45', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-18 07:31:23', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('ffa1cfe2-e2e1-11e9-bc5d-0050569fd205', '27dd4942-e2e1-11e9-bc5d-0050569fd205', 'f0305162-e2e1-11e9-bc5d-0050569fd205', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', NULL, 'zulu headband', ' ', '250', 100, '', 'H12', 77, 25, '2019-09-29 19:53:09', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 12:59:21', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1);

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
(1, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Owner', '2019-09-07 15:12:32', 'sys', '2019-09-07 15:12:32', 'sys', 1),
(2, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Manager', '2019-09-22 19:19:00', 'sys', '2019-09-22 19:19:00', 'sys', 1),
(3, '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', 'Assistant ', '2019-09-24 17:07:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-24 17:07:22', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
(4, '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', 'Caisher', '2019-10-01 13:01:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', '2019-10-01 13:01:05', '5506426f-e2e1-11e9-bc5d-0050569fd205', 1),
(5, '23b82588-e370-11e9-bc5d-0050569fd205', 'Manager', '2019-10-01 16:28:05', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 16:28:05', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
(6, '23b82588-e370-11e9-bc5d-0050569fd205', 'Supervisor', '2019-10-01 16:31:32', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-01 16:31:32', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
(7, '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Admin', '2019-10-02 15:39:30', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:39:30', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
(8, '9b8ea912-e518-11e9-bc5d-0050569fd205', 'Mechanic', '2019-10-02 15:39:50', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:39:50', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
(9, '4b1f410b-e523-11e9-bc5d-0050569fd205', 'Staff', '2019-10-02 22:44:45', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-02 22:44:45', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
(10, '41094864-f668-11e9-987f-363532eb0721', 'Owner', '2019-10-24 16:12:03', 'web', '2019-10-24 16:12:03', 'web', 1),
(11, '5461f5f7-f668-11e9-987f-363532eb0721', 'Owner', '2019-10-24 16:12:36', 'web', '2019-10-24 16:12:36', 'web', 1),
(12, '2a87e487-f66b-11e9-987f-363532eb0721', 'Owner', '2019-10-24 16:32:54', 'web', '2019-10-24 16:32:54', 'web', 1),
(13, '5048f837-f66c-11e9-987f-363532eb0721', 'Owner', '2019-10-24 16:41:07', 'web', '2019-10-24 16:41:07', 'web', 1),
(14, '30f96e3f-f978-11e9-987f-363532eb0721', 'Owner', '2019-10-28 13:43:42', 'web', '2019-10-28 13:43:42', 'web', 1),
(15, '4b1f410b-e523-11e9-bc5d-0050569fd205', 'Manager', '2019-11-01 23:07:04', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-01 23:07:04', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
(16, '0c852198-ffae-11e9-91af-363532eb0721', 'Owner', '2019-11-05 11:24:21', 'web', '2019-11-05 11:24:21', 'web', 1),
(17, '49a75007-fff0-11e9-91af-363532eb0721', 'Owner', '2019-11-05 19:18:30', 'web', '2019-11-05 19:18:30', 'web', 1),
(18, 'e81ad518-005b-11ea-91af-363532eb0721', 'Owner', '2019-11-06 08:08:52', 'web', '2019-11-06 08:08:52', 'web', 1),
(19, '159fe132-008b-11ea-91af-363532eb0721', 'Owner', '2019-11-06 13:46:35', 'web', '2019-11-06 13:46:35', 'web', 1),
(20, '3a458a6c-008b-11ea-91af-363532eb0721', 'Owner', '2019-11-06 13:47:36', 'web', '2019-11-06 13:47:36', 'web', 1),
(21, '0c89e134-02ca-11ea-91af-363532eb0721', 'Owner', '2019-11-09 10:22:20', 'web', '2019-11-09 10:22:20', 'web', 1),
(22, 'b5fdc28c-05e4-11ea-abc0-4ad9491261dd', 'Owner', '2019-11-13 09:10:45', 'web', '2019-11-13 09:10:45', 'web', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `Id` int(10) NOT NULL,
  `RoleId` int(10) NOT NULL,
  `PermissionId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
(6, 1, '1265be58-dc8e-11e9-9da6-c8f7501047dc', '2019-09-22 19:23:06', 'sys', '2019-09-22 19:23:06', 'sys', 1),
(7, 6, '05c678d6-e45a-11e9-bc5d-0050569fd205', '2019-10-06 17:31:16', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-06 17:31:16', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
(8, 5, '05c678d6-e45a-11e9-bc5d-0050569fd205', '2019-10-06 17:31:36', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-06 17:31:36', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
(9, 10, '410d2a1f-f668-11e9-987f-363532eb0721', '2019-10-24 16:12:04', 'web', '2019-10-24 16:12:04', 'web', 1),
(10, 11, '5462be21-f668-11e9-987f-363532eb0721', '2019-10-24 16:12:36', 'web', '2019-10-24 16:12:36', 'web', 1),
(11, 12, '2a88d75b-f66b-11e9-987f-363532eb0721', '2019-10-24 16:32:54', 'web', '2019-10-24 16:32:54', 'web', 1),
(12, 13, '504a54ff-f66c-11e9-987f-363532eb0721', '2019-10-24 16:41:07', 'web', '2019-10-24 16:41:07', 'web', 1),
(13, 14, '30fabf3b-f978-11e9-987f-363532eb0721', '2019-10-28 13:43:42', 'web', '2019-10-28 13:43:42', 'web', 1),
(14, 9, '3e892019-e55a-11e9-bc5d-0050569fd205', '2019-10-30 17:32:00', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-30 17:32:00', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
(15, 16, '0c863c82-ffae-11e9-91af-363532eb0721', '2019-11-05 11:24:21', 'web', '2019-11-05 11:24:21', 'web', 1),
(16, 17, '49a905a4-fff0-11e9-91af-363532eb0721', '2019-11-05 19:18:30', 'web', '2019-11-05 19:18:30', 'web', 1),
(17, 18, 'e81cd0d8-005b-11ea-91af-363532eb0721', '2019-11-06 08:08:52', 'web', '2019-11-06 08:08:52', 'web', 1),
(18, 19, '15a1d446-008b-11ea-91af-363532eb0721', '2019-11-06 13:46:35', 'web', '2019-11-06 13:46:35', 'web', 1),
(19, 20, '3a46a025-008b-11ea-91af-363532eb0721', '2019-11-06 13:47:36', 'web', '2019-11-06 13:47:36', 'web', 1),
(20, 21, '0c8b1873-02ca-11ea-91af-363532eb0721', '2019-11-09 10:22:20', 'web', '2019-11-09 10:22:20', 'web', 1),
(21, 22, 'b5fefde1-05e4-11ea-abc0-4ad9491261dd', '2019-11-13 09:10:45', 'web', '2019-11-13 09:10:45', 'web', 1);

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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
('72e79cd8-e09b-11e9-993f-48f17f8d4d88', 'AA', 'not set', '12', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:23:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:23:06', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('1b91a3a6-e2e1-11e9-bc5d-0050569fd205', 'Tenji Bryanston', ' Main Rd Bryanston', '011887845', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', '2019-09-29 19:46:46', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 19:46:46', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('f70fd20e-e363-11e9-bc5d-0050569fd205', 'Pivotal Group', 'Silver Point Bryanston', '0873105900', 'c753fd7b-e363-11e9-bc5d-0050569fd205', '2019-09-30 11:23:29', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', '2019-09-30 11:23:29', 'b4a32eea-e35b-11e9-bc5d-0050569fd205', 1),
('3c171f59-e36f-11e9-bc5d-0050569fd205', 'MONATE COFFEE', 'Cedar Square Fourways ', '0115483300', 'n/a', '2019-09-30 12:44:10', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-09-30 12:44:10', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('6253244a-e46f-11e9-bc5d-0050569fd205', 'Santon Branch', 'not set', '017878746554', '12cf03f6-e46f-11e9-bc5d-0050569fd205', '2019-10-01 19:17:45', 'c3758771-e46e-11e9-bc5d-0050569fd205', '2019-10-01 19:17:45', 'c3758771-e46e-11e9-bc5d-0050569fd205', 1),
('0fac83af-e517-11e9-bc5d-0050569fd205', 'Monate Coffee', 'ShopeNo133 Cedar Square, Cedar Rd, Fourways, Johannesburg, 2068,', '0115483300', '23b82588-e370-11e9-bc5d-0050569fd205', '2019-10-02 15:18:02', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:18:02', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('25b2c0db-e519-11e9-bc5d-0050569fd205', 'GARDENS MALL BRANCH', 'SHOP177 BraFischer Road Randburg', '0736221118', '9b8ea912-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:32:58', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:32:58', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('3355424b-e555-11e9-bc5d-0050569fd205', 'Konvict Sandton', 'Sandton City, Konvict store', '01155468775', '4b1f410b-e523-11e9-bc5d-0050569fd205', '2019-10-02 22:42:50', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-02 22:42:50', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('7edc9b1c-e5be-11e9-bc5d-0050569fd205', 'Power save ', 'not set', 'Not set ', '9b8ea912-e518-11e9-bc5d-0050569fd205', '2019-10-03 11:16:34', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-03 11:16:34', '41f977a7-e518-11e9-bc5d-0050569fd205', 1),
('ebc665ee-e6ac-11e9-bc5d-0050569fd205', 'Bryanston ', 'not set', '011727181', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 15:43:17', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-04 15:43:17', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1);

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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`SupportId`, `CompanyId`, `UserId`, `Subject`, `Message`, `CallBack`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('1d02c7d1-0210-11ea-91af-363532eb0721', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 'Wrong info', 'Hi team, I get the wrong count after login.', 1, '2019-11-08 12:11:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-08 12:11:21', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('2e763bbb-0212-11ea-91af-363532eb0721', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 'Hey there', 'Hi team, I get the wrong count after login.d', 1, '2019-11-08 12:26:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-08 12:26:10', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('5e5c615c-0211-11ea-91af-363532eb0721', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 'e', 'ew', 0, '2019-11-08 12:20:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-11-08 12:20:20', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('6c463f86-0761-11ea-bec8-4ad9491261dd', '0c89e134-02ca-11ea-91af-363532eb0721', '0c8c1818-02ca-11ea-91af-363532eb0721', 'Testing', 'Hellow testing ', 1, '2019-11-15 06:35:59', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 06:35:59', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('8905b7cf-0307-11ea-bc5e-363532eb0721', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'Response form is working ', 'This is a test from my phone', 1, '2019-11-09 17:42:28', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-09 17:42:28', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('c44c18b9-0335-11ea-80c4-4ad9491261dd', '4b1f410b-e523-11e9-bc5d-0050569fd205', '1154faf5-e523-11e9-bc5d-0050569fd205', 'Sanity test', 'Sent from Inventory-io for Konvikt,', 1, '2019-11-09 23:13:24', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-09 23:13:24', '1154faf5-e523-11e9-bc5d-0050569fd205', 1);

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
  `RoleId` int(10) DEFAULT NULL,
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
('0c874339-ffae-11e9-91af-363532eb0721', 'ndumiso@gmail.com', 'John', '', '084545787', 'ndumiso@gmail.com', '0c852198-ffae-11e9-91af-363532eb0721', 16, '2019-11-05 11:24:21', 'web', '2019-11-05 11:24:21', 'web', 1),
('0c8c1818-02ca-11ea-91af-363532eb0721', 'tumi@monatecoffee.com', 'Tumi', 'Khobane', '0848060892', 'Password', '0c89e134-02ca-11ea-91af-363532eb0721', 21, '2019-11-09 10:22:20', 'web', '2019-11-09 10:22:20', 'web', 1),
('0e497316-e6a7-11e9-bc5d-0050569fd205', 'sthembelmkhize@gmail.com', 'Zamanie', '', '0817177350', 'Zamanie59', '31e21ef1-e6a7-11e9-bc5d-0050569fd205', NULL, '2019-10-04 15:01:18', 'web', '2019-10-04 15:02:18', 'web', 1),
('0e9afaa9-e8d2-11e9-bc5d-0050569fd205', 'tumik@prince.co', 'Tumi', 'Khobane', '0115483300', '1111', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2019-10-07 09:14:09', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-07 09:14:09', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('1154faf5-e523-11e9-bc5d-0050569fd205', 'ndu@live.com', 'nduduzo', '', '0746958064', '12345', '4b1f410b-e523-11e9-bc5d-0050569fd205', NULL, '2019-10-02 16:43:58', 'web', '2019-10-02 16:45:36', 'web', 1),
('15a3966e-008b-11ea-91af-363532eb0721', 'themba2@gmail.com', 'Themba', '', '01245545', 'themba2@gmail.com', '159fe132-008b-11ea-91af-363532eb0721', 19, '2019-11-06 13:46:35', 'web', '2019-11-06 13:46:35', 'web', 1),
('17d29327-e486-11e9-bc5d-0050569fd205', 'zamokuhleh4@gmail.com', 'zamokuhle', '', '0633326548', 'title12', '3ff37466-e486-11e9-bc5d-0050569fd205', NULL, '2019-10-01 22:00:18', 'web', '2019-10-01 22:01:26', 'web', 1),
('2a899557-f66b-11e9-987f-363532eb0721', 'free@twitter.co.za', 'Free', 'Khanyile', '0746958064 ', '12345', '2a87e487-f66b-11e9-987f-363532eb0721', 12, '2019-10-24 16:32:54', 'web', '2019-10-24 16:32:54', 'web', 1),
('2a983487-e8c3-11e9-bc5d-0050569fd205', 'lindo@noted.com', 'lindo', 'gabela', 'na', '12345', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', NULL, '2019-10-07 07:27:34', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', '2019-10-07 11:16:32', 'bfb9480e-e6ac-11e9-bc5d-0050569fd205', 1),
('2e065d78-e6b2-11e9-bc5d-0050569fd205', 'lokshinlearning@gmail.com', 'samkelo', 'magoqo', '0826430926', 'Mbongeni281@', '6cf1f3f5-e6b2-11e9-bc5d-0050569fd205', NULL, '2019-10-04 16:20:56', 'web', '2019-10-04 16:22:42', 'web', 1),
('30fbbfbc-f978-11e9-987f-363532eb0721', 'petuniaza1@outlook.com', 'petunia', 'sibuyi', '0614723377', 'Petunia.77', '30f96e3f-f978-11e9-987f-363532eb0721', 14, '2019-10-28 13:43:42', 'web', '2019-10-28 13:43:42', 'web', 1),
('325b02d3-e43c-11e9-bc5d-0050569fd205', 'test@ndu.net', 'Test', '', '124545', 'test@ndu.net', 'ff4fe4de-e44b-11e9-bc5d-0050569fd205', NULL, '2019-10-01 13:11:20', 'web', '2019-10-01 15:04:27', 'web', 1),
('3a479066-008b-11ea-91af-363532eb0721', 'mxolisi@gmail.com', 'Mxolisi', '', '0763395833', '12345', '3a458a6c-008b-11ea-91af-363532eb0721', 20, '2019-11-06 13:47:36', 'web', '2019-11-06 13:47:36', 'web', 1),
('41f977a7-e518-11e9-bc5d-0050569fd205', 'citymag@mail.com', 'City', 'Mag', '0837735895', '12345', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, '2019-10-02 15:26:36', 'web', '2019-10-02 15:29:06', 'web', 1),
('49aa0dc7-fff0-11e9-91af-363532eb0721', 'sky@mail.com', 'Sky', 'Nzuza', '0746958064', '12345', '49a75007-fff0-11e9-91af-363532eb0721', 17, '2019-11-05 19:18:30', 'web', '2019-11-05 19:18:30', 'web', 1),
('4dbb4f45-e555-11e9-bc5d-0050569fd205', 'ndwandwe@gmail.com', 'Mmukeli', 'Ndwandwe', '071458745', '12345', '4b1f410b-e523-11e9-bc5d-0050569fd205', NULL, '2019-10-02 22:43:35', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-11-19 18:42:13', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('504b2c84-f66c-11e9-987f-363532eb0721', 'enquiries.nyokabsup@mail.com', 'Nonkululeko', '', '0729647656', '201000728', '5048f837-f66c-11e9-987f-363532eb0721', 13, '2019-10-24 16:41:07', 'web', '2019-10-24 16:41:07', 'web', 1),
('54641011-f668-11e9-987f-363532eb0721', 'freedom.khanyile2@gmail.com', 'Freedom', 'Khanyile', '0746958064', '12345', '5461f5f7-f668-11e9-987f-363532eb0721', 11, '2019-10-24 16:12:36', 'web', '2019-10-24 16:12:36', 'web', 1),
('5506426f-e2e1-11e9-bc5d-0050569fd205', 'john@thenji.com', 'John ', 'Doe', '0824587874', '12345', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', NULL, '2019-09-29 19:48:23', '97aec45d-e2df-11e9-bc5d-0050569fd205', '2019-09-29 19:49:25', '97aec45d-e2df-11e9-bc5d-0050569fd205', 1),
('704bf544-e517-11e9-bc5d-0050569fd205', 'tumi@mail.com', 'Tumi ', 'Khobane', '0115483300', '12345', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2019-10-02 15:20:44', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-07 13:21:36', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('70648b1d-e47a-11e9-bc5d-0050569fd205', 'tanyankomontez2@gmail.com', 'Sibahle', '', '0731207109 ', '130796', 'ac9db3c5-e47a-11e9-bc5d-0050569fd205', NULL, '2019-10-01 20:36:53', 'web', '2019-10-01 20:38:34', 'web', 1),
('7667809a-e44d-11e9-bc5d-0050569fd205', 'test@test.test', 'test@test.test', '', 'test@test.test', 'test@test.test', '7e292e79-e44d-11e9-bc5d-0050569fd205', NULL, '2019-10-01 15:14:56', 'web', '2019-10-01 15:15:09', 'web', 1),
('7ecb1941-0788-11ea-bec8-4ad9491261dd', 'ndu@gmail.com', 'ndu', 'mthembu', '084252745', '1111', '0c89e134-02ca-11ea-91af-363532eb0721', 21, '2019-11-15 11:15:41', '0c8c1818-02ca-11ea-91af-363532eb0721', '2019-11-15 11:15:41', '0c8c1818-02ca-11ea-91af-363532eb0721', 1),
('7feffeff-e688-11e9-bc5d-0050569fd205', 'Hello@mulherswimwear.co.za', 'Petunia', 'Sibuyi', '0614723377 ', 'Petunia.77', '9a6037a0-e688-11e9-bc5d-0050569fd205', NULL, '2019-10-04 11:22:34', 'web', '2019-10-04 11:23:19', 'web', 1),
('8064e489-e909-11e9-bc5d-0050569fd205', 'freedom@mail.com', 'Freedom', 'Khanyile', '0746958064', '12345', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019-10-07 15:51:02', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-10-07 15:51:51', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('81de5b36-d170-11e9-b97c-48f17f8d4d88', 'ndu@mail.com', 'Ndumiso', '', '26784545', '12345', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019-09-07 15:07:58', 'web', '2019-09-27 23:24:09', 'web', 1),
('97aec45d-e2df-11e9-bc5d-0050569fd205', 'thenji@mail.com', 'Thenjiwe', 'Mlanga', '0785464545', '12345', '2d3aafa8-e2e0-11e9-bc5d-0050569fd205', NULL, '2019-09-29 19:35:56', 'web', '2019-09-29 19:40:07', 'web', 1),
('99ae6f3b-e8d3-11e9-bc5d-0050569fd205', 'mxolisip@gmail.com', 'Mxolisi', 'Ndlangamandla', '0746958064', '12345', '4b1f410b-e523-11e9-bc5d-0050569fd205', NULL, '2019-10-07 09:25:12', '1154faf5-e523-11e9-bc5d-0050569fd205', '2019-10-07 09:25:41', '1154faf5-e523-11e9-bc5d-0050569fd205', 1),
('9f675421-e517-11e9-bc5d-0050569fd205', 'mokati@mail.com', 'Mokati', 'Serobe ', '0115483300', '1111', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2019-10-02 15:22:03', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-02 15:22:03', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('abb86234-e8d1-11e9-bc5d-0050569fd205', 'tumik@monatecoffee.co.za', 'Tumi', 'Khobane', '0115483300', '1111', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2019-10-07 09:11:23', 'c57c153d-e36e-11e9-bc5d-0050569fd205', '2019-10-07 09:11:23', 'c57c153d-e36e-11e9-bc5d-0050569fd205', 1),
('b4a32eea-e35b-11e9-bc5d-0050569fd205', 'maria@mail.com', 'Maria', '', '0763246678', '12345', 'c753fd7b-e363-11e9-bc5d-0050569fd205', NULL, '2019-09-30 10:24:22', 'web', '2019-09-30 11:22:09', 'web', 1),
('b60027ed-05e4-11ea-abc0-4ad9491261dd', 'isithebeburial612@gmail.com', 'selby', '', '0733268826', '0324592843', 'b5fdc28c-05e4-11ea-abc0-4ad9491261dd', 22, '2019-11-13 09:10:45', 'web', '2019-11-13 09:10:45', 'web', 1),
('ba6257ea-d307-11e9-a45b-0050569fd205', 'freedom.khanyile1@gmail.com', 'Freedom', '', '0746958064', '1111', '4523af94-d172-11e9-b97c-48f17f8d4d88', NULL, '2019-09-09 15:42:55', 'web', '2019-09-09 15:42:55', 'web', 1),
('bfb9480e-e6ac-11e9-bc5d-0050569fd205', 'admin@noted.co.za', 'Admin', '', '084 252 9472 ', '12345', 'dfd5ee69-e6ac-11e9-bc5d-0050569fd205', NULL, '2019-10-04 15:42:03', 'web', '2019-10-04 15:42:58', 'web', 1),
('c3758771-e46e-11e9-bc5d-0050569fd205', 'thabani@mail.com', 'Thabani', '', '0279878781', 'thabani@mail.com', '12cf03f6-e46f-11e9-bc5d-0050569fd205', NULL, '2019-10-01 19:13:18', 'web', '2019-10-01 19:15:32', 'web', 1),
('c57c153d-e36e-11e9-bc5d-0050569fd205', 'prince@mail.com', 'Prince', 'Skhumbuzo', '0720117072', '12345', '23b82588-e370-11e9-bc5d-0050569fd205', NULL, '2019-09-30 12:40:51', 'web', '2019-09-30 12:50:38', 'web', 1),
('cd3cf692-e35d-11e9-bc5d-0050569fd205', 'kbnet@mail.com', 'KBNET', '', '1234577766', '12345', 'a8e9befd-e35e-11e9-bc5d-0050569fd205', NULL, '2019-09-30 10:39:22', 'web', '2019-09-30 10:45:31', 'web', 1),
('dfd1f43d-e44d-11e9-bc5d-0050569fd205', 'sa@sad.cooms', 'Sandile', '', '0245778', 'sa@sad.cooms', '', NULL, '2019-10-01 15:17:53', 'web', '2019-10-01 15:17:53', 'web', 1),
('e81df331-005b-11ea-91af-363532eb0721', 'channel@gmail.com', 'Channel', '', '0215778787', 'channel@gmail.com', 'e81ad518-005b-11ea-91af-363532eb0721', 18, '2019-11-06 08:08:52', 'web', '2019-11-06 08:08:52', 'web', 1),
('f80e8313-ea6f-11e9-91ab-0050569fd205', 'mxolisipn@gmail.com', 'Mxolisi', '', '0763395833', 'Password', '3743426f-ea70-11e9-91ab-0050569fd205', NULL, '2019-10-09 10:37:03', 'web', '2019-10-09 10:38:49', 'web', 1),
('fc3b79be-e161-11e9-9302-48f17f8d4d88', 'tebaza@mai.com', 'Tebza', '', '787878787', '6666', '', NULL, '2019-09-27 22:04:17', 'web', '2019-09-27 22:04:17', 'web', 1),
('fe045d55-dc80-11e9-84fb-c8f7501047dc', 'ndu.systems@gmail.com', 'Zwide', 'Nxumalo', '27746958064', '12345', NULL, NULL, '2019-09-21 17:03:38', 'web', '2019-09-21 17:03:38', 'web', 1),
('fe806151-e09b-11e9-993f-48f17f8d4d88', 'test@mail', 'Test', 'test', '713821321', '1111', '94c5b3cf-d170-11e9-b97c-48f17f8d4d88', NULL, '2019-09-26 22:27:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', '2019-09-26 22:27:00', '81de5b36-d170-11e9-b97c-48f17f8d4d88', 1),
('ffc8b900-e519-11e9-bc5d-0050569fd205', 'john@mail.com', 'John', 'Ibiyemi', '0837735895', '1111', '9b8ea912-e518-11e9-bc5d-0050569fd205', NULL, '2019-10-02 15:39:03', '41f977a7-e518-11e9-bc5d-0050569fd205', '2019-10-02 15:39:03', '41f977a7-e518-11e9-bc5d-0050569fd205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- AUTO_INCREMENT for table `attribute_item`
--
ALTER TABLE `attribute_item`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `ConfigId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
  MODIFY `RoleId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
