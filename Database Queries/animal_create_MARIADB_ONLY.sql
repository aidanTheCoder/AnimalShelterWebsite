-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for animals
DROP DATABASE IF EXISTS `animals`;
CREATE DATABASE IF NOT EXISTS `animals` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `animals`;

-- Dumping structure for table animals.adoption
DROP TABLE IF EXISTS `adoption`;
CREATE TABLE IF NOT EXISTS `adoption` (
  `animal_id` int(11) NOT NULL AUTO_INCREMENT,
  `adoptable_as_of` datetime DEFAULT NULL,
  `adoptable_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Dumping data for table animals.adoption: ~40 rows (approximately)
/*!40000 ALTER TABLE `adoption` DISABLE KEYS */;
INSERT INTO `adoption` (`animal_id`, `adoptable_as_of`, `adoptable_status`) VALUES
	(1, '2021-02-01 00:00:00', 1),
	(2, '2020-10-11 00:00:00', 1),
	(3, '2020-11-21 00:00:00', 1),
	(4, '2021-09-06 00:00:00', 1),
	(5, '2021-11-23 00:00:00', 1),
	(6, NULL, 0),
	(7, '2021-04-29 00:00:00', 1),
	(8, '2021-08-29 00:00:00', 1),
	(9, NULL, 0),
	(10, '2020-01-13 00:00:00', 1),
	(11, '2020-02-15 00:00:00', 1),
	(12, '2021-11-18 00:00:00', 1),
	(13, '2021-10-31 00:00:00', 1),
	(14, '2021-04-03 00:00:00', 1),
	(15, '2020-05-20 00:00:00', 1),
	(16, NULL, 0),
	(17, '2021-05-05 00:00:00', 1),
	(18, '2019-07-24 00:00:00', 1),
	(19, '2019-03-11 00:00:00', 1),
	(20, '2021-09-13 00:00:00', 1),
	(21, '2021-08-22 00:00:00', 1),
	(22, '2021-10-21 00:00:00', 1),
	(23, '2021-09-09 00:00:00', 1),
	(24, NULL, 0),
	(25, '2021-01-18 00:00:00', 1),
	(26, '2021-05-18 00:00:00', 1),
	(27, '2021-11-27 00:00:00', 1),
	(28, '2020-02-17 00:00:00', 1),
	(29, NULL, 0),
	(30, '2020-08-22 00:00:00', 1),
	(31, '2021-12-04 00:00:00', 1),
	(32, '2021-11-10 00:00:00', 1),
	(33, '2021-03-09 00:00:00', 1),
	(34, NULL, 0),
	(35, '2021-02-19 00:00:00', 1),
	(36, '2021-07-10 00:00:00', 1),
	(37, '2020-07-23 00:00:00', 1),
	(38, '2020-09-18 00:00:00', 1),
	(39, NULL, 0),
	(40, '2021-10-26 00:00:00', 1);
/*!40000 ALTER TABLE `adoption` ENABLE KEYS */;

-- Dumping structure for table animals.animal
DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `animal_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_type` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `breed` varchar(30) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `animal_age` varchar(15) DEFAULT NULL,
  `fixed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table animals.animal: ~40 rows (approximately)
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` (`animal_id`, `animal_type`, `sex`, `color`, `size`, `breed`, `weight`, `animal_age`, `fixed`) VALUES
	(1, 'dog', 'female', 'white', 'small', 'poodle', 15, 'old', 1),
	(2, 'dog', 'male', 'mix', 'small', 'beagle', 20, 'medium-aged', 0),
	(3, 'dog', 'male', 'brown', 'small', 'pug', 18, 'old', 1),
	(4, 'dog', 'male', 'mix', 'large', 'german shepherd', 60, 'young', 0),
	(5, 'dog', 'male', 'mix', 'medium', 'mix', 20, 'old', 1),
	(6, 'dog', 'female', 'mix', 'medium', 'pitbull', 55, 'old', 1),
	(7, 'dog', 'female', 'brown', 'small', 'terrier', 10, 'young', 0),
	(8, 'dog', 'male', 'brown', 'small', 'mix', 14, 'medium-aged', 1),
	(10, 'dog', 'male', 'mix', 'large', 'german shepherd', 70, 'old', 0),
	(11, 'dog', 'female', 'mix', 'medium', 'boxer', 45, 'medium-aged', 1),
	(12, 'dog', 'female', 'brown', 'small', 'chihuahua', 6, 'old', 0),
	(13, 'dog', 'female', 'mix', 'large', 'mix', 70, 'old', 1),
	(14, 'dog', 'female', 'white', 'small', 'maltese', 7, 'medium-aged', 1),
	(15, 'dog', 'female', 'black', 'large', 'german-shepherd', 65, 'old', 1),
	(16, 'dog', 'male', 'black', 'large', 'labrador', 65, 'medium-aged', 0),
	(17, 'dog', 'female', 'white', 'small', 'maltese', 10, 'medium-aged', 0),
	(18, 'dog', 'female', 'mix', 'small', 'mix', 20, 'medium-aged', 1),
	(19, 'dog', 'male', 'mix', 'small', 'chihuahua', 9, 'old', 1),
	(20, 'dog', 'male', 'mix', 'small', 'pug', 17, 'medium-aged', 1),
	(21, 'dog', 'female', 'mix', 'medium', 'husky', 40, 'medium-aged', 0),
	(22, 'dog', 'male', 'mix', 'medium', 'bulldog', 40, 'old', 1),
	(23, 'cat', 'female', 'orange', 'medium', 'domestic medium hair', 13, 'old', 0),
	(24, 'cat', 'male', 'mix', 'medium', 'domestic shorthair', 11, 'medium-aged', 1),
	(25, 'cat', 'male', 'grey', 'small', 'unknown', 9, 'young', 0),
	(26, 'cat', 'female', 'mix', 'large', 'domestic shorthair', 19, 'old', 1),
	(27, 'cat', 'female', 'mix', 'medium', 'siamese', 12, 'medium-aged', 0),
	(28, 'cat', 'male', 'mix', 'medium', 'american shorthair', 12, 'young', 0),
	(29, 'cat', 'female', 'mix', 'medium', 'domestic shorthair', 13, 'medium-aged', 0),
	(30, 'cat', 'female', 'grey', 'small', 'tabby', 8, 'young', 0),
	(31, 'cat', 'male', 'mix', 'medium', 'domestic medium hair', 12, 'medium-aged', 1),
	(32, 'cat', 'male', 'black', 'medium', 'bombay', 14, 'medium-aged', 1),
	(33, 'cat', 'female', 'orange', 'medium', 'domestic shorthair', 14, 'medium-aged', 0),
	(34, 'cat', 'female', 'black', 'medium', 'domestic shorthair', 13, 'medium-aged', 1),
	(35, 'cat', 'male', 'mix', 'medium', 'american shorthair', 12, 'young', 1),
	(36, 'cat', 'female', 'black', 'medium', 'domestic shorthair', 13, 'medium-aged', 0),
	(37, 'cat', 'female', 'mix', 'small', 'domestic shorthair', 12, 'medium-aged', 0),
	(38, 'horse', 'male', 'white', 'large', 'appaloosa', NULL, 'young', 1),
	(39, 'horse', 'male', 'white', 'large', 'quarterhorse', NULL, 'old', 0),
	(40, 'horse', 'male', 'white', 'large', 'arabian', NULL, 'medium-aged', 1),
	(41, 'horse', 'female', 'white', 'large', 'arabian', NULL, 'medium-aged', 0);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;

-- Dumping structure for table animals.animal_information
DROP TABLE IF EXISTS `animal_information`;
CREATE TABLE IF NOT EXISTS `animal_information` (
  `animal_id` int(11) NOT NULL AUTO_INCREMENT,
  `admission` date DEFAULT NULL,
  `location_found` varchar(30) DEFAULT NULL,
  `adoptable_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Dumping data for table animals.animal_information: ~40 rows (approximately)
/*!40000 ALTER TABLE `animal_information` DISABLE KEYS */;
INSERT INTO `animal_information` (`animal_id`, `admission`, `location_found`, `adoptable_status`) VALUES
	(1, '2021-01-15', 'Elmwood Avenue', 1),
	(2, '2020-10-11', 'State Highway 89', 1),
	(3, '2020-11-01', 'State Highway 89', 1),
	(4, '2021-09-06', 'West Fork Street', 1),
	(5, '2021-10-23', 'Skips Lane', 1),
	(6, '2021-11-25', 'State Highway 89', 0),
	(7, '2021-04-29', 'Crowfield Road', 1),
	(8, '2021-08-29', 'Lodgeville Road', 1),
	(9, '2021-11-20', 'Farm Meadow Drive', 0),
	(10, '2020-01-13', 'State Route 69', 1),
	(11, '2020-02-15', 'State Highway 89', 1),
	(12, '2021-11-18', 'Kelly Drive', 1),
	(13, '2021-10-31', 'Polk Street', 1),
	(14, '2021-04-03', 'White Pine Lane', 1),
	(15, '2020-05-20', 'State Route 69', 1),
	(16, '2021-11-29', 'State Highway 89', 0),
	(17, '2021-05-05', 'Dogwood Road', 1),
	(18, '2019-07-24', 'Clifford Street', 1),
	(19, '2019-03-11', 'East Avenue', 1),
	(20, '2021-09-13', 'Blane Street', 1),
	(21, '2021-08-22', 'State Route 69', 1),
	(22, '2021-10-21', 'State Route 69', 1),
	(23, '2021-09-09', 'Coplin Avenue', 1),
	(24, '2021-12-01', 'Pretty View Lane', 0),
	(25, '2021-01-18', 'State Highway 89', 1),
	(26, '2021-05-18', 'State Highway 89', 1),
	(27, '2021-11-27', 'Browning Lane', 1),
	(28, '2020-02-17', 'Ingram Road', 1),
	(29, '2021-12-02', 'State Highway 89', 0),
	(30, '2020-08-22', 'Middleville Road', 1),
	(31, '2021-12-04', 'Terra Cotta Street', 1),
	(32, '2021-11-10', 'State Route 69', 1),
	(33, '2021-03-09', 'State Highway 89', 1),
	(34, '2021-11-30', 'Round Table Drive', 0),
	(35, '2021-02-19', 'Renwick Drive', 1),
	(36, '2021-07-10', 'State Route 69', 1),
	(37, '2020-07-23', 'Barnes Street', 1),
	(38, '2020-09-18', 'State Highway 89', 1),
	(39, '2021-11-22', 'State Route 69', 0),
	(40, '2021-10-26', 'Steele Street', 1);
/*!40000 ALTER TABLE `animal_information` ENABLE KEYS */;

-- Dumping structure for table animals.missing
DROP TABLE IF EXISTS `missing`;
CREATE TABLE IF NOT EXISTS `missing` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `animal_type` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `breed` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table animals.missing: ~10 rows (approximately)
/*!40000 ALTER TABLE `missing` DISABLE KEYS */;
INSERT INTO `missing` (`first_name`, `last_name`, `email`, `last_seen`, `animal_type`, `sex`, `color`, `size`, `breed`) VALUES
	('ari', 'cara', 'ari_cara@yahoo.com', '2021-09-19', 'cat', 'male', 'mix', 'medium', 'american shorthair'),
	('talen', 'fernando', 'tal.fernando@gmail.com', '2020-03-26', 'cat', 'male', 'white', 'small', 'domestic shorthair'),
	('Kerry', 'Ford', 'fordfkerry@gmail.com', '2021-01-20', 'cat', 'female', 'orange', 'medium', 'domestic shorthair'),
	('joe', 'goldberg', 'joegold@yahoo.com', '2020-03-16', 'dog', 'female', 'mix', 'small', 'shih tzu'),
	('edith', 'jones', 'jonesfamily@hotmail.com', '2019-12-30', 'cat', 'male', 'mix', 'medium', 'domestic shorthair'),
	('malina', 'lam', 'malina.lam@gmail.com', '2021-12-01', 'dog', 'male', 'white', 'small', 'poodle'),
	('emma', 'peters', 'emmapeters120@gmail.com', '2020-01-01', 'dog', 'female', 'brown', 'large', 'labrador'),
	('virginia', 'rios', 'riosvirginia@gmail.com', '2021-07-04', 'cat', 'female', 'mix', 'medium', 'domestic shorthair'),
	('thomas', 'wheeler', 'thomaswheelers@rocketmail.com', '2021-04-04', 'cat', 'female', 'black', 'medium', 'american shorthair'),
	('amina', 'zillah', 'zillah1@gmail.com', '2021-10-30', 'dog', 'male', 'brown', 'small', 'chihuahua');
/*!40000 ALTER TABLE `missing` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
