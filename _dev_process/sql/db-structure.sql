-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Users'
-- 
-- ---

DROP TABLE IF EXISTS `Users`;
        
CREATE TABLE `Users` (
  `id` INT NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(16) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Category'
-- 
-- ---

DROP TABLE IF EXISTS `Category`;

CREATE TABLE `Category` (
    `id` INT NULL AUTO_INCREMENT DEFAULT NULL,
    `name` VARCHAR(255) NULL DEFAULT NULL,
    `description` TEXT NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
);

-- ---
-- Table 'Posts'
-- 
-- ---

DROP TABLE IF EXISTS `Posts`;
        
CREATE TABLE `Posts` (
  `id` INT NULL AUTO_INCREMENT DEFAULT NULL,
  `title` VARCHAR(255) NULL DEFAULT NULL,
  `content` MEDIUMTEXT NULL DEFAULT NULL,
  `Category_id` INT NULL DEFAULT NULL,
  `Users_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Posts` ADD FOREIGN KEY (Category_id) REFERENCES `Category` (`id`);
ALTER TABLE `Posts` ADD FOREIGN KEY (Users_id) REFERENCES `Users` (`id`);

-- ---
-- Table Properties
-- ---

ALTER TABLE `Users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
ALTER TABLE `Category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
ALTER TABLE `Posts` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ---
-- Test Data
-- ---

INSERT INTO `Users` (`id`,`username`,`email`,`password`) VALUES
('1','admin','admin@zfblog.com','8910ee7d68dfff68460731ea37eb0d406d07862d'),
('2','John','john@zfblog.com','8910ee7d68dfff68460731ea37eb0d406d07862d'),
('3','Smith','smith@zfblog.com','8910ee7d68dfff68460731ea37eb0d406d07862d'),
('4','Bob','bob@zfblog.com','8910ee7d68dfff68460731ea37eb0d406d07862d');

INSERT INTO `Category` (`id`, `name`, `description`) VALUES
('1', 'Uncategorized', 'Uncategorized posts'),
('2', 'News', 'News Posts'),
('3', 'Featured Stories', 'Featured Stories');

INSERT INTO `Posts` (`id`,`title`,`content`, `Category_id`,`Users_id`) VALUES
('1','Post - 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum aliquam, leo quis volutpat porttitor, arcu felis mattis mauris, quis hendrerit eros velit quis augue. Proin mollis, nisl eget placerat egestas, mauris velit volutpat sapien, non rutrum tellus sem nec sem. Etiam nec purus sem. Nullam vestibulum suscipit erat, quis imperdiet lacus porta vitae. Nullam dolor nulla, tincidunt nec adipiscing quis, aliquam id risus. Donec non urna odio, at tincidunt purus. Suspendisse in orci ut sapien luctus dictum. Vivamus faucibus, orci quis iaculis blandit, nisi lorem laoreet quam, eget euismod erat enim condimentum felis. Etiam est diam, egestas luctus pretium at, facilisis sed elit. Praesent consequat laoreet neque, in eleifend purus egestas ac. Duis blandit quam id massa elementum accumsan. Proin lacinia mollis velit, et bibendum lorem egestas eu. Curabitur euismod, nisi id lobortis congue, erat sapien scelerisque nisi, a pulvinar nulla nibh eget tortor. Nunc scelerisque volutpat odio, sed sollicitudin tellus hendrerit vel.', '2', '1'),
('2','Post - 2','Proin tortor mi, bibendum ac accumsan hendrerit, suscipit eu lectus. In elementum, lorem quis tempor dignissim, nibh enim eleifend nunc, ut sodales purus orci eget leo. Ut sit amet neque non augue ornare ullamcorper. Mauris metus velit, congue vel consectetur eu, placerat et risus. Quisque congue tortor quis leo lobortis tempus. Aliquam euismod molestie lectus, at elementum felis feugiat id. Nulla risus nulla, laoreet et malesuada eget, adipiscing accumsan justo. Curabitur non libero eget orci ultricies semper a vitae felis. Aenean interdum venenatis velit, eu mollis magna dictum sit amet. Quisque dapibus urna et lorem rhoncus non sodales est sodales. Maecenas quis metus eu dolor imperdiet lacinia quis et nibh. Curabitur pharetra mauris ut augue pretium quis dapibus ligula consequat.', '2', '2'),
('3','Post - 3','Cras quis erat mi. Curabitur semper arcu sed mi interdum cursus. Maecenas tincidunt ipsum eu metus mollis quis euismod tortor placerat. Nunc enim purus, bibendum id elementum et, aliquam ac quam. Ut a iaculis lorem. Nunc quis malesuada lorem. Nam quis lacus nec orci tempor feugiat quis a metus. Quisque nec diam id augue fringilla fringilla. Etiam sed turpis vitae orci aliquam commodo. Fusce quis elit lacus. Nam tincidunt commodo suscipit. Nulla non tortor diam.', '2', '3'),
('4','Post - 4','Nam ante neque, porttitor sed fermentum vel, vestibulum sed tortor. Vivamus sit amet neque ut nulla fermentum convallis sed vitae tortor. Nunc ultricies, nibh aliquet congue hendrerit, nibh augue placerat elit, eu sagittis sem leo congue mi. Fusce ac bibendum purus. Fusce id lectus massa. Quisque at faucibus urna. Nulla pretium pretium lorem, non scelerisque metus auctor eu. Pellentesque ornare egestas dapibus. Vestibulum at sapien risus, sit amet placerat magna. Fusce consequat, tortor ut aliquam sagittis, turpis risus porttitor lacus, in pharetra dolor ligula eu ipsum. Fusce ut nulla ac dolor adipiscing accumsan. Fusce sollicitudin ullamcorper tellus quis sollicitudin.', '2', '4'),
('5','Post - 5','Maecenas non elit eu nisl egestas volutpat. Nulla ut tempor ante. Sed ultrices molestie tortor, a ultricies mi blandit consectetur. Suspendisse potenti. Duis purus elit, commodo et elementum sit amet, iaculis non nulla. Cras euismod consequat consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis egestas nisl in purus hendrerit quis fringilla lectus bibendum. Nunc urna massa, ornare vel faucibus eu, vulputate non augue.', '2', '1'),
('6','Post - 6','Curabitur viverra convallis ipsum, ac bibendum erat luctus sit amet. Integer lobortis lacus sed quam luctus sed porttitor metus hendrerit. Morbi ullamcorper auctor diam sed egestas. Donec sed orci purus. Suspendisse mattis venenatis nunc, at ullamcorper magna auctor ultricies. Pellentesque et nulla augue. Vivamus rhoncus odio nec sapien ultrices eleifend. Pellentesque volutpat ipsum a enim dignissim eget rutrum dolor aliquet. Maecenas bibendum pellentesque turpis sit amet consectetur. Nunc vitae urna in sapien consectetur semper. Curabitur eget consequat velit. Donec pellentesque fermentum est ut porta.', '2', '2'),
('7','Post - 7','Aenean ullamcorper, libero in dictum molestie, urna nibh interdum massa, non fringilla diam tellus condimentum odio. Duis vel urna nisl, dignissim elementum arcu. Duis quis nunc at ligula pellentesque euismod id non leo. Nulla in mattis lacus. Aliquam erat volutpat. Nulla facilisi. Ut adipiscing aliquam mauris et vehicula. Sed mollis libero tellus.', '3','3'),
('8','Post - 8','Aliquam semper ullamcorper tellus quis scelerisque. Integer blandit posuere felis vitae pharetra. Phasellus euismod, velit ut posuere adipiscing, justo mi dignissim diam, et blandit nisl sem non urna. Donec nec sapien nisi. Fusce scelerisque sodales faucibus. Pellentesque blandit enim eget orci tempus tempus. Aliquam erat volutpat.', '3', '4'),
('9','Post - 9','Nulla lacinia varius aliquam. Nulla tincidunt auctor lorem et convallis. Pellentesque in diam auctor odio adipiscing bibendum. Praesent eros nisl, tristique sit amet dictum ac, tincidunt ac diam. Etiam porta, mi quis dapibus molestie, elit orci viverra arcu, sit amet tincidunt sem velit sed lectus. Nullam aliquam dictum libero a eleifend. Quisque posuere sollicitudin lacus, in tempus turpis varius vel. Mauris consectetur iaculis porta.', '3', '1'),
('10','Post - 10','Vivamus interdum iaculis feugiat. Quisque euismod vulputate semper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean placerat aliquam velit ut lacinia. Curabitur eu urna nec nunc elementum ullamcorper sed in magna. Etiam ullamcorper volutpat pellentesque. Sed suscipit magna sed tortor vulputate vel malesuada felis sodales. Phasellus ac luctus nibh. Fusce porta pharetra consectetur. Cras nisl urna, facilisis vel euismod non, iaculis in neque. Ut iaculis, diam vel scelerisque sollicitudin, est est rutrum mauris, id condimentum diam nunc a lectus. In libero nunc, consequat non scelerisque eu, dapibus pharetra lorem. Pellentesque ac mauris sed ligula ultricies molestie ut sit amet mi.', '3', '2');