ALTER TABLE `product` ADD `ProductAvailability` VARCHAR(400) NOT NULL AFTER `LowStock`, ADD `PreparingDays` DECIMAL(10) NULL DEFAULT '1' AFTER `ProductAvailability`;


CREATE TABLE `productprocess` (
  `Id` varchar(225) NOT NULL,
  `ProductId` varchar(225) NOT NULL,
  `CompanyId` varchar(225) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `AssignedUser` varchar(100) NOT NULL,
  `StartdDatetime` datetime  NULL DEFAULT null,
   `FinishDatetime` datetime  NULL  DEFAULT null,
  `NotifyCustomer` int(1) NOT NULL  DEFAULT 0,
  `NotifyMessage` varchar(400)  NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `notification` (
  `Id` varchar(225) NOT NULL,
  `OtherId` varchar(225) NOT NULL,
  `Type` varchar(225) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Channel` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1