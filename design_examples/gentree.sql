gentree.sql





-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Mom'
--
-- ---

DROP TABLE IF EXISTS `Mom`;

CREATE TABLE `Mom` (
  `SSN` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` INTEGER NULL DEFAULT NULL,
  `husband` VARCHAR NULL DEFAULT NULL,
  `children` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`SSN`)
);

-- ---
-- Table 'Dad'
--
-- ---

DROP TABLE IF EXISTS `Dad`;

CREATE TABLE `Dad` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  `wife` VARCHAR NULL DEFAULT NULL,
  `children` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'kid'
--
-- ---

DROP TABLE IF EXISTS `kid`;

CREATE TABLE `kid` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'kid'
--
-- ---

DROP TABLE IF EXISTS `kid`;

CREATE TABLE `kid` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'GrandMa'
--
-- ---

DROP TABLE IF EXISTS `GrandMa`;

CREATE TABLE `GrandMa` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'GrandPa'
--
-- ---

DROP TABLE IF EXISTS `GrandPa`;

CREATE TABLE `GrandPa` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `Mom` ADD FOREIGN KEY (husband) REFERENCES `Dad` (`id`);
ALTER TABLE `Mom` ADD FOREIGN KEY (children) REFERENCES `kid` (`id`);
ALTER TABLE `Mom` ADD FOREIGN KEY (children) REFERENCES `kid` (`id`);
ALTER TABLE `Dad` ADD FOREIGN KEY (wife) REFERENCES `Mom` (`SSN`);
ALTER TABLE `Dad` ADD FOREIGN KEY (children) REFERENCES `kid` (`id`);
ALTER TABLE `Dad` ADD FOREIGN KEY (children) REFERENCES `kid` (`id`);
ALTER TABLE `GrandMa` ADD FOREIGN KEY (id) REFERENCES `GrandPa` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Mom` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Dad` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `kid` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `kid` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `GrandMa` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `GrandPa` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Mom` (`SSN`,`name`,`husband`,`children`) VALUES
-- ('','','','');
-- INSERT INTO `Dad` (`id`,`name`,`wife`,`children`) VALUES
-- ('','','','');
-- INSERT INTO `kid` (`id`) VALUES
-- ('');
-- INSERT INTO `kid` (`id`) VALUES
-- ('');
-- INSERT INTO `GrandMa` (`id`) VALUES
-- ('');
-- INSERT INTO `GrandPa` (`id`) VALUES
-- ('');

