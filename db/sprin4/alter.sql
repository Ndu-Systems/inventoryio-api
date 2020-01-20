ALTER TABLE `quotation_products` ADD `CompanyId` VARCHAR(225) NULL DEFAULT NULL AFTER `ProductId`;
ALTER TABLE `order_products` ADD `CompanyId` VARCHAR(225) NULL DEFAULT NULL AFTER `ProductId`;
