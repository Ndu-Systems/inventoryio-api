

ALTER TABLE `company` ADD `Description` TEXT NULL AFTER `Name`;
ALTER TABLE `company` ADD `Type` VARCHAR(150) NULL AFTER `Description`; 

