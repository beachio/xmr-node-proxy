CREATE DATABASE proxy;
GRANT ALL ON proxy.* TO proxy@`127.0.0.1` IDENTIFIED BY '98erhfiuehw987fh23d';
GRANT ALL ON proxy.* TO proxy@localhost IDENTIFIED BY '98erhfiuehw987fh23d';
FLUSH PRIVILEGES;
USE proxy;
ALTER DATABASE proxy DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE TABLE `hashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` varchar(256) DEFAULT NULL,
  `blocks` int(11) DEFAULT '0',
  `hashes` int(11) DEFAULT '0',
  `last_share` int(11) DEFAULT '0',
  `last_contract` int(11) DEFAULT '0',
  `session_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `total_hashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` varchar(256) DEFAULT NULL,
  `blocks` int(11) DEFAULT '0',
  `hashes` int(11) DEFAULT '0',
  `last_blocks` int(11) DEFAULT '0',
  `last_hashes` int(11) DEFAULT '0',
  `last_session_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `not_awarded` INT(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
