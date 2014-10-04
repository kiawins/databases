
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'books'
--
-- ---

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `publishDate` DATE(255) NULL DEFAULT NULL,
  `title` VARCHAR(255) NULL DEFAULT NULL,
  `author` VARCHAR(255) NULL DEFAULT NULL,
  `genre` VARCHAR(255) NULL DEFAULT NULL,
  `new field` INTEGER NULL DEFAULT NULL,
  `new field` INTEGER NULL DEFAULT NULL,
  `quantity` INTEGER(64) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
--
-- ---

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `firstName` VARCHAR(255) NULL DEFAULT NULL,
  `lastName` VARCHAR(255) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `id_books` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `users` ADD FOREIGN KEY (id_books) REFERENCES `books` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `books` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `books` (`id`,`publishDate`,`title`,`author`,`genre`,`new field`,`new field`,`quantity`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `users` (`id`,`firstName`,`lastName`,`address`,`id_books`) VALUES
-- ('','','','','');

