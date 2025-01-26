-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.9.0.6999
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table practical_db.lt_course
CREATE TABLE IF NOT EXISTS `lt_course` (
  `id_course` int(2) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_course`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table practical_db.lt_course: ~3 rows (approximately)
INSERT IGNORE INTO `lt_course` (`id_course`, `course_name`) VALUES
	(1, 'TEKNOLOGI MAKLUMAT'),
	(2, 'TEKNOLOGI MAKLUMAT (WEB DEVELOPER)'),
	(3, 'TEKNOLOGI MAKLUMAT (SECURITY SYSTEM)');

-- Dumping structure for table practical_db.lt_gender
CREATE TABLE IF NOT EXISTS `lt_gender` (
  `id_gender` int(2) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table practical_db.lt_gender: ~3 rows (approximately)
INSERT IGNORE INTO `lt_gender` (`id_gender`, `gender_name`) VALUES
	(1, 'LELAKI'),
	(2, 'PEREMPUAN'),
	(3, 'LAIN-LAIN');

-- Dumping structure for table practical_db.lt_ipta
CREATE TABLE IF NOT EXISTS `lt_ipta` (
  `id_ipta` int(2) NOT NULL AUTO_INCREMENT,
  `ipta_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ipta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table practical_db.lt_ipta: ~3 rows (approximately)
INSERT IGNORE INTO `lt_ipta` (`id_ipta`, `ipta_name`) VALUES
	(1, 'POLITEKNIK SULTAN ABDUL HALIM MU’ADZAM SHAH'),
	(2, 'POLITEKNIK TUNKU SYED SARIJUDDIN'),
	(3, 'POLITEKNIK BALIK PULAU');

-- Dumping structure for table practical_db.lt_level
CREATE TABLE IF NOT EXISTS `lt_level` (
  `id_level` int(2) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table practical_db.lt_level: ~2 rows (approximately)
INSERT IGNORE INTO `lt_level` (`id_level`, `level_name`) VALUES
	(1, 'ADMIN'),
	(2, 'INTERN');

-- Dumping structure for table practical_db.tb_maklumat
CREATE TABLE IF NOT EXISTS `tb_maklumat` (
  `id_maklumat` int(2) NOT NULL AUTO_INCREMENT,
  `image_users` varchar(250) DEFAULT NULL,
  `resume_users` varchar(250) DEFAULT NULL,
  `id_users` int(2) DEFAULT NULL,
  `id_gender` int(2) DEFAULT NULL,
  `tarikh_lahir` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `no_tel` varchar(250) DEFAULT NULL,
  `id_ipta` int(2) DEFAULT NULL,
  `no_matrik` varchar(250) DEFAULT NULL,
  `id_course` int(2) DEFAULT NULL,
  `tarikh_mula` varchar(250) DEFAULT NULL,
  `tarikh_tamat` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_maklumat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping structure for table practical_db.tb_users
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id_users` int(2) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) DEFAULT NULL,
  `user_ic` varchar(50) DEFAULT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `user_pass` varchar(150) DEFAULT NULL,
  `user_level` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `user_ic` (`user_ic`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
