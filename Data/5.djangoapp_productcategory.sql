-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.36 - MySQL Community Server - GPL
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


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;

-- Dumping structure for table test.djangoapp_productcategory
CREATE TABLE IF NOT EXISTS `djangoapp_productcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test.djangoapp_productcategory: ~5 rows (approximately)
DELETE FROM `djangoapp_productcategory`;
INSERT INTO `djangoapp_productcategory` (`id`, `category_name`, `category_description`) VALUES
	(1, 'Money Management', 'Money Management'),
	(2, 'Wealth Management', 'Wealth Management Description Goes Here'),
	(3, 'Financial Services', 'Financial Services Description'),
	(4, 'Enterprise Architecture', 'Enterprise Architecture (EA) is crucial for financial organizations to navigate regulatory compliance, manage risks, and maintain competitiveness. In the financial sector, EA aligns business objectives with IT systems and infrastructure, providing a framework for designing, implementing, and integrating various enterprise components.'),
	(5, 'Business Process Management', 'a Business Process Management (BPM) tool, used for documentation, analysis, and optimization of business processes. It enables the visualization of process flows and standard operating procedures (SOPs), provides visibility into how they operate, and help');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
