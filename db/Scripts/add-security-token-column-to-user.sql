ALTER TABLE `users` ADD `SecurityToken` VARCHAR(225) NULL AFTER `RoleId`;
ALTER TABLE `config` ADD `GroupKey` VARCHAR(100) NULL AFTER `Type`;
