-- 30/09/2019
ALTER TABLE `users` ADD `TestCol` INT NULL AFTER `StatusId`;

-- 30/09/2019
ALTER TABLE `users` ADD `TestCol2` VARCHAR(225) NULL AFTER `StatusId`;

--Then wegonna run this on production when ever we deploying a new version

