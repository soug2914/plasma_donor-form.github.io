-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table plasma_donar.test
CREATE TABLE IF NOT EXISTS `test` (
  `s.no` int(3) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `gender` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`s.no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table plasma_donar.test: ~5 rows (approximately)
DELETE FROM `test`;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`s.no`, `name`, `age`, `gender`, `phone`, `address`, `city`, `state`, `date`) VALUES
	(1, 'Testing', 25, 'Female', '1234567894', 'Sariedhela', 'Dhanbad', 'Jharkhand', '19-05-2021 22:45:14'),
	(2, 'Testing', 25, 'Female', '1234567894', 'Sariedhela', 'Dhanbad', 'Jharkhand', '19-05-2021 22:45:37'),
	(3, 'Testing', 25, 'Female', '1234567894', 'Sariedhela', 'Dhanbad', 'Jharkhand', '19-05-2021 22:45:51'),
	(4, 'Testing_2', 20, 'Female', '1234567894', 'Hirapur', 'Dhanbad', 'Jharkhand', '19-05-2021 22:46:20'),
	(5, 'Testing_3', 25, 'Female', '1234567894', 'Hirapur', 'Dhanbad', 'Jharkhand', '19-05-2021 22:46:56');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
