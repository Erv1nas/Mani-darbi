-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table car_registration.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `fuel` varchar(20) DEFAULT NULL,
  `registration_number` varchar(20) DEFAULT NULL,
  `vin` varchar(17) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `photo` blob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vin` (`vin`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table car_registration.cars: ~5 rows (approximately)
INSERT INTO `cars` (`id`, `user_id`, `make`, `model`, `year`, `color`, `fuel`, `registration_number`, `vin`, `price`, `description`, `photo`) VALUES
	(128, NULL, 'Ford', '525D', 2003, 'Blue', 'Diesel', 'MJ-265', 'WWRR45L554YEGDDDL', '4000', 'kkkkkk', _binary 0x5b222e2e5c2f70686f746f5c2f6c656a757069656c5c7530313031645c7530313133742e6a7067222c222e2e5c2f70686f746f5c2f323032302d706f72736368652d74617963616e2e6a7067225d),
	(129, NULL, 'Toyota', '525D', 2003, 'Red', 'Diesel', 'ERNN1', 'WWRR9923554YEGDDF', '3000', 'ssssszzz', _binary 0x5b222e2e5c2f70686f746f5c2f323032302d706f72736368652d74617963616e2e6a7067222c222e2e5c2f70686f746f5c2f6c656a757069656c5c7530313031645c7530313133742e6a7067225d),
	(130, NULL, 'Nissan', 'af', 2003, 'Silver', 'Diesel', 'ERNN1', 'WWRR4533777YEGDDD', '2000', 'dddddd', _binary 0x5b222e2e5c2f70686f746f5c2f6c656a757069656c5c7530313031645c7530313133742e6a7067225d),
	(131, NULL, 'Honda', '525D', 2003, 'Red', 'Gasoline', 'test1', 'WWRRV23554YEGDDDV', '3000', 'auto no vacijas', _binary 0x5b222e2e5c2f70686f746f5c2f704955786866474f56322d322e3858564132527830772e6a7067222c222e2e5c2f70686f746f5c2f6c656a757069656c5c7530313031645c7530313133742e6a7067222c222e2e5c2f70686f746f5c2f696d616765732e6a7067222c222e2e5c2f70686f746f5c2f323032302d706f72736368652d74617963616e2e6a7067225d),
	(133, NULL, 'Chevrolet', 'civic', 2222, 'Lime', 'Gasoline', 'test4', 'WWRR4523554YEGDKD', '340002', 'hgyufyfuyfuyf', _binary 0x5b222e2e5c2f70686f746f5c2f704955786866474f56322d322e3858564132527830772e6a7067222c222e2e5c2f70686f746f5c2f6c656a757069656c5c7530313031645c7530313133742e6a7067222c222e2e5c2f70686f746f5c2f323032302d706f72736368652d74617963616e2e6a7067225d);

-- Dumping structure for table car_registration.car_photos
CREATE TABLE IF NOT EXISTS `car_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `photo_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `car_photos_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table car_registration.car_photos: ~0 rows (approximately)

-- Dumping structure for table car_registration.color
CREATE TABLE IF NOT EXISTS `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table car_registration.color: ~20 rows (approximately)
INSERT INTO `color` (`color_id`, `color`) VALUES
	(1, 'Red'),
	(2, 'Blue'),
	(3, 'Black'),
	(4, 'White'),
	(5, 'Silver'),
	(6, 'Green'),
	(7, 'Yellow'),
	(8, 'Orange'),
	(9, 'Purple'),
	(10, 'Pink'),
	(11, 'Brown'),
	(12, 'Gray'),
	(13, 'Gold'),
	(14, 'Cyan'),
	(15, 'Magenta'),
	(16, 'Lime'),
	(17, 'Maroon'),
	(18, 'Navy'),
	(19, 'Olive'),
	(20, 'Teal');

-- Dumping structure for table car_registration.make_brand
CREATE TABLE IF NOT EXISTS `make_brand` (
  `make_id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table car_registration.make_brand: ~18 rows (approximately)
INSERT INTO `make_brand` (`make_id`, `make`) VALUES
	(1, 'Toyota'),
	(2, 'Ford'),
	(3, 'Honda'),
	(4, 'Chevrolet'),
	(5, 'BMW'),
	(6, 'Volvo'),
	(7, 'Mazda'),
	(8, 'Cupra'),
	(9, 'Audi'),
	(10, 'Mercedes-Benz'),
	(11, 'Nissan'),
	(12, 'Hyundai'),
	(13, 'Kia'),
	(14, 'Volkswagen'),
	(15, 'Subaru'),
	(16, 'Jaguar'),
	(17, 'Porsche'),
	(18, 'Saab');

-- Dumping structure for table car_registration.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`),
  UNIQUE KEY `username_4` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table car_registration.users: ~9 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `profile_picture`) VALUES
	(29, 'Uldis', '$2y$10$TT/L8GNKKvla3buTdYe8fONftynbnMQZVeCP4ciSSmJBXfD8hNRRG', 'ers@gmai.com', '2024-09-20 05:21:04', NULL),
	(30, 'martins', '$2y$10$PGo6XpsA9uIdN/QpbSkBp.2/4ip4FAfqbd3Z..C6KRQzNCAF3FT.S', 'amo@gmail.com', '2024-09-23 09:50:25', NULL),
	(31, 'elis', '$2y$10$QC.IRfj87DYRLB3lLzvZU.s/HIU7MdO/j0lohMOLovqFogt24Rrny', 'amo@gmail.com', '2024-10-11 20:09:37', NULL),
	(32, 'ervins', '$2y$10$H/TCc6O9G6M9OTZnrJgMbeH/0xGa7t3mdsTFpNRk9uMRsPlG.6OVS', 'amo@gmail.com', '2024-10-22 05:53:16', NULL),
	(33, 'Ervinas', '$2y$10$rHintUrvQjykIzvarpIyHuj4Pvi0h/MFQc48xL81XvbcLWyGnwdXS', 'test@example.us', '2024-10-30 12:12:24', NULL),
	(34, 'Ervinass', '$2y$10$7rE3u2we4OWeVnCpENqd8.3nC.px59bCzq1mSJ.2BqTRDLMntQMoW', 'amo@gmail.com', '2024-11-19 11:42:17', NULL),
	(35, 'Ervinasss', '$2y$10$9J7rklW162WbYx81gcFHi.TLWJKTjVR5QU/4u35dFAGq/6n69pgcy', 'liga3333@inbox.lv', '2024-11-19 11:43:17', NULL),
	(36, 'Armands', '$2y$10$0RIh3MC6w//o8wYNys65Du429i4nwxDAa0ZwkKuRrvXtfrrKNdOQ6', NULL, '2024-11-19 11:46:59', NULL),
	(37, 'Ralfs', '$2y$10$lF2AIISX/Wufd4WM7pNs1uJt26YS81Q1sUAD1sHep18kxWbpmzb3m', NULL, '2024-11-19 12:10:14', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
