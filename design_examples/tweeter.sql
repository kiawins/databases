
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'userTable'
--
-- ---

DROP TABLE IF EXISTS `userTable`;

CREATE TABLE `userTable` (
  `id` INT(64) NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `firstName` VARCHAR(64) NULL DEFAULT NULL,
  `lastName` VARCHAR(255) NULL DEFAULT NULL,
  `userName` VARCHAR(64) NULL AUTO_INCREMENT DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `website` VARCHAR(255) NULL DEFAULT NULL,
  `description` MEDIUMTEXT(255) NULL DEFAULT NULL,
  `location` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `avatar` INTEGER(64) NULL DEFAULT NULL,
  `backgroundPicture` INTEGER(64) NULL DEFAULT NULL,
  `followers` INT NULL DEFAULT NULL,
  `following` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'video'
--
-- ---

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `path` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'photo'
--
-- ---

DROP TABLE IF EXISTS `photo`;

CREATE TABLE `photo` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `path` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'avatars'
--
-- ---

DROP TABLE IF EXISTS `avatars`;

CREATE TABLE `avatars` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `path` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'tweetTable'
--
-- ---

DROP TABLE IF EXISTS `tweetTable`;

CREATE TABLE `tweetTable` (
  `id` INTEGER(255) NULL AUTO_INCREMENT DEFAULT NULL,
  `message` MEDIUMTEXT(160) NULL DEFAULT NULL,
  `dateTime` DATETIME(255) NULL DEFAULT NULL,
  `date` DATE(255) NULL DEFAULT NULL,
  `time` TIME(255) NULL DEFAULT NULL,
  `photo` INTEGER NULL DEFAULT NULL,
  `video` INT NULL DEFAULT NULL,
  `retweets` INT(255) NULL DEFAULT NULL,
  `favorites` INT(255) NULL DEFAULT NULL,
  `user` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `userTable` ADD FOREIGN KEY (avatar) REFERENCES `avatars` (`id`);
ALTER TABLE `userTable` ADD FOREIGN KEY (followers) REFERENCES `userTable` (`id`);
ALTER TABLE `userTable` ADD FOREIGN KEY (following) REFERENCES `userTable` (`id`);
ALTER TABLE `tweetTable` ADD FOREIGN KEY (photo) REFERENCES `photo` (`id`);
ALTER TABLE `tweetTable` ADD FOREIGN KEY (video) REFERENCES `video` (`id`);
ALTER TABLE `tweetTable` ADD FOREIGN KEY (retweets) REFERENCES `userTable` (`id`);
ALTER TABLE `tweetTable` ADD FOREIGN KEY (favorites) REFERENCES `userTable` (`id`);
ALTER TABLE `tweetTable` ADD FOREIGN KEY (user) REFERENCES `userTable` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `userTable` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `video` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `photo` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `avatars` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tweetTable` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `userTable` (`id`,`firstName`,`lastName`,`userName`,`password`,`website`,`description`,`location`,`email`,`avatar`,`backgroundPicture`,`followers`,`following`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `video` (`id`,`path`) VALUES
-- ('','');
-- INSERT INTO `photo` (`id`,`path`) VALUES
-- ('','');
-- INSERT INTO `avatars` (`id`,`path`) VALUES
-- ('','');
-- INSERT INTO `tweetTable` (`id`,`message`,`dateTime`,`date`,`time`,`photo`,`video`,`retweets`,`favorites`,`user`) VALUES
-- ('','','','','','','','','','');

