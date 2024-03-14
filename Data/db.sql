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


-- Dumping database structure for vendorappdb
CREATE DATABASE IF NOT EXISTS `vendorappdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vendorappdb`;

-- Dumping structure for table vendorappdb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.auth_group: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.auth_permission: ~24 rows (approximately)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add product category', 7, 'add_productcategory'),
	(26, 'Can change product category', 7, 'change_productcategory'),
	(27, 'Can delete product category', 7, 'delete_productcategory'),
	(28, 'Can view product category', 7, 'view_productcategory');

-- Dumping structure for table vendorappdb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.auth_user: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.auth_user_groups: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.auth_user_user_permissions: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `website` longtext,
  `established_year` varchar(10) NOT NULL DEFAULT '1964',
  `location_countries` json DEFAULT NULL,
  `location_cities` json DEFAULT NULL,
  `contact_telephone` json DEFAULT NULL,
  `address` json DEFAULT NULL,
  `employee_count` varchar(255) DEFAULT NULL,
  `has_internal_professional_services` tinyint DEFAULT NULL,
  `last_demo_date` date DEFAULT NULL,
  `last_reviewed_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.companies: ~0 rows (approximately)
INSERT INTO `companies` (`id`, `name`, `website`, `established_year`, `location_countries`, `location_cities`, `contact_telephone`, `address`, `employee_count`, `has_internal_professional_services`, `last_demo_date`, `last_reviewed_date`) VALUES
	(1, 'ADDEPAR, INC.', 'https://addepar.com/', '2009', '"United States of America, United Kingdom, Ireland, India"', '"Mountain View, New York City, Chicago, Salt lake City, Dublin, Edinburgh, London, Pune "', '"[Moutain View] +1 855 464 6268"', '"[Mountain View] 787 Castro St. Mountain View, CA 94041, [New York] 335 Madison Ave, 25th floor, New York, NY 10017, [Chicago] 167 N Green Street, Chicago IL 60607, [Salt lake City] 460 West 50 North, Suite 125 Salt Lake Citiy, UT 84101, [Dublin] 10 Ely Place, Dublin 2 D02 HR98, [Edinburgh] 80 Geporge Street Office, 01-101, Edinburgh, EH2 3BU, [London] 23 Bedford Square (1st Floor) London, WC1B 3HH, [Pune] 10th Floor, Fountainhead Tower 1, Viman Nagar, Pune 411014"', '"501 - 1,000"', 0, '2023-01-18', '2023-01-18'),
	(2, 'BOC Group', 'https://www.boc-group.com', '1995', '"Austria, France, Germany, Greece, Ireland, Poland, Spain, Switzerland. "', '"Wien, Paris, Berlin, Chalikida, Dublin, Warszawa, Madrid, Winterthur"', '"[Wien] +43 1 9051081 0, [Paris] +33 1 5324 53 83, [Berlin] +49 30 226925 10, [Chalkida] +30 222 1308676, [Dublin] +353 1 287 01 29, [Warszawa] +48 22 628 00 15, [Madrid] +34 91 781 18 80, [Winterhur] +41 52260375 0"', '"[Wein] Operngasse 20b 1040 Wien, [Paris] 5 Rue du Helder 75009 Paris, [Berlin] Naglerstrabe 5 10245 Berlin, [Chalkida] 4, Dimarxou Sarafianou Street 34100, Chalkida, Evia, [Dublin] 21 Priory Ofice Park, Stillorgan, Bunlin A94 F660, [Warszawa] 1. Panska 96 lok. 59 00-837 Warszawa, [Madrid] Iberica, S.L.U. Velazquez, 71 28006 Madrid, [Winterhur] Zurcherstrasse 21 8400 Winterthur, , , "', '"1,000+"', 1, NULL, '2023-08-03'),
	(3, 'Allvue', 'https://www.allvuesystems.com/', '2007', '"United States of America, United Kingdom, Poland, India"', '"Miami, Chicago, New York, San Diego, London, Krakow"', '"[Miami] +1 305 901 7060, [London] +44 207 154 1010"', '"[Miami] 396 Alhambra Circle, 11th Floor, Coral Gables, FL 33134, [Chicago] 200 W Monroe, #1330, Chicago, IL 60606, [New York] 1407 Broadway, 36th Floor, New York, NY 10018, [San Diego] 12526 High Bluff Drive, Suite 160 SanDiego, CA 92130, [London] Becket House, 7th FLoor, 36 Old Jewry, London EC2R 8DD, [Krakow] Fabryczna Office Park, Building 1, 8th Floor, aleja Pokoju, 18, 31-564 Krakow"', '"101-250"', 1, '2023-02-08', '2023-02-08'),
	(4, 'AltHub', 'https://althub.com/', '2017', '"United States of America"', '"New York"', '" [New York] +1 646 665 4990"', '"[New York] 135 Madison Ave, New York, NY 10016"', '"11-50"', 0, '2023-02-23', '2023-02-23'),
	(5, 'Alveo', 'https://www.alveotech.com/', '1991', '"United Kingdom, United States of America, Singapore, The Netherlands"', '"New York, London, Singapore, Herenveen"', '"+1 212 445 1076"', '"Alveo USA, 1350 Broadway, Suite 1530,, New York, NY 10018"', '"11-50"', 0, '2023-03-07', '2023-07-13'),
	(6, 'Appian', 'https://appian.com/', '2016', '"United States of America, Canada, Mexico, United Kingdom, Netherlands, Frrance, Germany, Italy, Jordon, Spain, Sweden, Switzerland, Australia, Singapore, Japan, India"', '"McLean, London, Sydney"', '"[McLean] +1703 442 8844, [London] +44 203 514 2838, [Sydney] +61 2 8317 6698"', '"[McLean] 7950 Joes Branch Dr., McLean, VA 22102, [London] 20 Fenchurch Street, 25th Floor, London EC3M 3BY, [Sydney] 25 Martin Place, Sydney New South Wales, 2000 Australia"', '"1,000+"', 1, '2023-04-05', '2023-04-05'),
	(7, 'CloudAttribution', 'https://www.cloudattribution.com/', '2012', '"United Kingdom, United States of America"', '"London, Chicago"', '"+442045265821"', '"(London) Thornton House,, Thornton Road,, Wimbledon,, London SW19 4NG, , (Chicago) One Lincoln Center, 18W140 Butterfield Road, Oakbrook Terrace, Suite 1500, Oak Brook, Illinois, 60181, USA"', '"51-100"', 0, '2023-06-16', '2023-06-16'),
	(8, 'Coherent Global', 'https://www.coherent.global/', '2017', '"United States of America, United Kingdom, Hong Kong, Australia, Japan, Philippines, South Africa"', '"New York, Miami, London, Hong Kong, Sydney, Tokyo, Manila, Johannesburg"', NULL, NULL, '"101-250"', 0, '2023-08-02', '2023-08-02'),
	(9, 'Du.Co', 'https://du.co/', '2010', '"United Kingdom, Singapore, United States of America, Poland"', '"London, Singapore, New York, Boston, Wroclaw"', '"[London] +442031119294, [Singapore] +6568170494, [New York] +12123536541, [Boston] +12123536542, [Wroclaw] +48718814546"', '"[London] 49 Clerkenwell Green,London, EC1R 0EB, [Singapore] WeWorks c/o Duco Technology, CityHouse, 36 Robinson Road, Singapore 068877, [New York] 9 East 40th Street, Floor 6, New York, NY 10016, [Boston] 34 Farnsworth Street, Suite 301, Boston, MA 02210, [Wroclaw] ul. Marii Curie Skłodowskiej 12 50-381 Wrocław"', '"101-250"', 0, NULL, '2023-05-04'),
	(10, 'Dynamo Software', 'https://www.dynamosoftware.com/', '1998', '"United States of America, Bulgaria, United Kingdom, Singapore, Hong Kong"', '"Watertown, Sofia, London, Singapore, Hong Kong"', '"[Watertown] +1 866 439 6266, [Sofia] +359 2 960 6939, [London] +44 203 743 8849, [Singapore] +65 6681 6736, [Hong Kong] +852 3653 5398"', '"[Watertown] 480 Pleasant Street, Suite B200, Watertown, MA 02472, [Sofia] Krastova Vada District, 14 Filip Kutev Street, Floor 5, 1407 Sofia, [London] 40 Gracechurch Street, London EC3V 0BT, [Singapore] 21 Collyer Quay, #02-01 Singapore 049320, [Hong Kong] 1102, 11/F, 90 Connaught Road Central, Sheung Wan, Hong Kong"', '"51-100"', 1, '2023-07-05', '2023-07-05'),
	(11, 'Ezops', 'https://www.ezops.com/', '2014', '"United States of America, Ireland, India"', '"San Fransisco, New York, New Brunswick, New Jersey, Dublin, Noida"', '"[New York] +1 212 739 7345"', '"[San Fransisco] 717 Market St #100, San Francisco, [New York] 463 7th Avenue, #1504, New York, NY 10018, [Dublin] 2 Dublin Landings, Dublin Docklands, Dublin, [Noida] Plot no B, 5, Rajat Vihar, Block B, Khora Colony, Sector 62"', '"101-250"', 0, '2023-05-31', '2023-07-21'),
	(12, 'Finbourne Technology', 'https://www.finbourne.com/', '2016', '"United Kingdom, United States of America, Singapore"', '"London, New York, Singapore"', '"[London] +44 203 880 1307"', '"[London] 1 Carter Lane, London, England, EC4V 5ER, [New York] Industrious Bryant Park off Fifth, 25 W 39th st, 7th Floor, New York, 10018, [Singapore] 790, Level 7 Capital Square, 23 Church Street, Singapore, 049481"', '"101-250"', 1, '2023-08-05', '2023-08-05'),
	(13, 'Freyda', 'https://freyda.io/', '2018', '"United Kingdom"', '"Bristol"', '"Online only"', '"[Bristol] Suite 9, Westbury Court Church Road, Westbury-On-Trym, Bristol, BS9 3EF"', '"1-10"', 0, '2022-12-02', '2022-12-02'),
	(14, 'IBM', 'https://www.ibm.com/watsonx', '2023', '"United States of America, United Kingdom"', '"Armonk, London"', '"[Armonk] +1 914 499 1900, [London] +44 203 397 3350"', '"[Armonk] 1 New orchard, Rd, Armonk, NY 10504, [London] 15Th Floor, Wework, 10 York Rd, London SE1 7ND"', '"1,000+"', 1, '2023-08-10', '2023-08-10'),
	(15, 'Limina', 'https://www.limina.com', '2014', '"Sweden, United Kingdom"', '"Stockholm, London"', '"[Stockholm] +46 8 128 743 01, [London] +44 20 8142 7457"', '"[Stockholm] Kungsgatan 64, 111 22, [London] No. 1 Poultry, London, EC2R 8EJ"', '"11-50"', 0, '2022-11-16', '2022-11-16');

-- Dumping structure for table vendorappdb.djangoapp_productcategory
CREATE TABLE IF NOT EXISTS `djangoapp_productcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.djangoapp_productcategory: ~0 rows (approximately)
INSERT INTO `djangoapp_productcategory` (`id`, `category_name`, `category_description`) VALUES
	(1, 'test', 'heloooo'),
	(2, 'Everything Working', 'Finee'),
	(3, 'Money Management', 'Money ManagementMoney ManagementMoney ManagementMoney Management');

-- Dumping structure for table vendorappdb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.django_admin_log: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.django_content_type: ~6 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'djangoapp', 'productcategory'),
	(6, 'sessions', 'session');

-- Dumping structure for table vendorappdb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.django_migrations: ~18 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-03-13 23:45:23.153290'),
	(2, 'auth', '0001_initial', '2024-03-13 23:45:25.046090'),
	(3, 'admin', '0001_initial', '2024-03-13 23:45:25.298170'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-13 23:45:25.307157'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-13 23:45:25.315410'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-13 23:45:25.440373'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-13 23:45:25.526277'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-03-13 23:45:25.551344'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-03-13 23:45:25.559367'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-03-13 23:45:25.670903'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-03-13 23:45:25.675911'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-13 23:45:25.681910'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-03-13 23:45:25.816600'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-13 23:45:25.911954'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-03-13 23:45:25.936954'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-03-13 23:45:25.943956'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-13 23:45:26.056511'),
	(18, 'sessions', '0001_initial', '2024-03-13 23:45:26.112869'),
	(19, 'djangoapp', '0001_initial', '2024-03-14 02:36:54.539290');

-- Dumping structure for table vendorappdb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.django_session: ~0 rows (approximately)

-- Dumping structure for table vendorappdb.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cloud_type` varchar(255) NOT NULL,
  `business_areas` json DEFAULT NULL,
  `modules` json DEFAULT NULL,
  `financial_services_client_types` json DEFAULT NULL,
  `additional_information` longtext,
  `is_document_attached` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `fk_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.products: ~17 rows (approximately)
INSERT INTO `products` (`id`, `company_id`, `name`, `type`, `description`, `cloud_type`, `business_areas`, `modules`, `financial_services_client_types`, `additional_information`, `is_document_attached`) VALUES
	(1, 1, 'ADDEPAR', 'Wealth Management', 'An American wealth management platform for registered investment advisors, specializing in data aggregation, analytics, and portfolio reporting.', 'Cloud Based', '"Data Aggregation, Analytics, Portfolio Reporting"', '"Addepar"', '"Wealth Management, Family Offices, Broker Dealers"', 'Addepar software facilitates both visualizing an investment portfolio\'s exposures at the individual asset class and also tabulating the portfolio\'s total value according to real time value of the assets under management., In September 2016, Salesforce.com announced their partnership with Addepar for Salesforce\'s Wave Financial Services Cloud for financial advisers, making it easier to see across asset classes and produce a single visual for their clients.', 0),
	(2, 2, 'ADOIT', 'Enterprise Architecture', 'ADOIT is an enterprise architecture management tool that provides functionalities and methods for enterprise analysis, design, planning, and implementation. The platform supports alignment and improvement of dependencies between business and IT as well as', 'Cloud Enabled', '"Enterprise Architecture"', '"Enterprise Architecture Suite"', NULL, 'Gartner Magic Quadrant Leader in EA 2022, ADOIT is based on various international standards such as TOGAF, ArchiMate, ITIL, and COBIT. It is ArchiMate 3.1 and TOGAF-9 certified., ADOIT is used for the optimization of enterprise architectures. It covers a wide application field from the establishment of EA know-how, the definition and implementation of architectural principles, the establishment of business capability management, installation of compliance and IT risk management, to the integration of process management initiatives.', 0),
	(3, 2, 'ADONIS', 'Business Process Management', 'a Business Process Management (BPM) tool, used for documentation, analysis, and optimization of business processes. It enables the visualization of process flows and standard operating procedures (SOPs), provides visibility into how they operate, and help', 'Cloud Enabled', '"Process Automation, Business Process Management, Ideation, Audit, Compliance, Integration,"', '"Business Process Management"', '"Asset Management, Investment Banks, "', 'ADONIS is designed as a golden source of organizations\' process data, and thus supports the end-to-end management and improvement of their business processes.[1] It is an HTML 5 web-based application, fully BPMN 2.0 compliant, and conformant with various other international standards and best practices such as BPMM, DMN and ISO 9000.', 0),
	(4, 2, 'ADOGRC', 'Governance', 'Governance, risk, control and compliance suite.', 'Cloud Enabled', '"Risk Management, Compliance, Security, Regulation, Audit"', '"Risk Management, Compliance & Policy Management, Information Security Management System, General Data Protection Regulation, Internal Revision & Audit Management"', '"Asset Management, Investment Banks, "', NULL, 0),
	(5, 3, 'Allvue', 'Alternative investment', 'Allvue Systems is a leading provider of investment management solutions for fund managers, investors, and administrators in the alternative investments industry', 'Cloud Based', '"Capital Raising, Sourcing & Execution, Investment Management, Back Office, Investment Management"', '"Pipeline Management, Research Management, Trade Order Management, Compliance, Portfolio Management, Fund Performance & Portfolio Monitoring, Performance Attribution, Fund Finance, Business Intelligence, Fund Accounting, Investment Accounting, Corporate Accounting, Investor Portal, Asset Servicing, Equity Essentials, Private Equity Essentials, Venture Capital Essentials, "', '"Alternative Asset Managers, Fund Administrators, Retail Banking, Insurance, Family Office"', NULL, 0),
	(6, 4, 'Invisage', 'Data Transformation, Alternative Investments', 'Enhance and transform raw data into ready-to-use products for investment and corporate users.  Uses machine learning to test various use cases, generate signals and verify the insights of the data.  Built as a sales enablement platform, AltHub supports al', '\'\'', '"Identify and validate data, Data preparation, Machine learning for data verification and signal identification, "', '"Invisage Platform"', '"Alternative Asset Managers"', NULL, 0),
	(7, 5, 'Alveo', 'Data Management', 'Cloud-based market data integration, reference data, analytics and Data-as-a-Service solutions for financial services.', 'Cloud Native', '"Data Sourcing, Data Mastering, Data Quality, Data Access, Data Distribution, Data Analytics"', '"Market Data in the cloud, Data Management & Analytics, Risk Data Management, Reference Data Management, ESG Data Management, Independent Valuation, Regulatory Repoting"', '"Retail Banking, Asset Managers, Insurance Companies, Central Banks, Clearing Houses"', NULL, 0),
	(8, 6, 'Appian', 'Process Automation', 'Build applications and workflows rapidly, with a low-code automation platform, utilising AI. ', 'Cloud Native', '"Process Automation, "', '"Appian Platform"', '"Wealth Management, Asset Management, Retail Banking, Investment Banking"', 'low-code application development, digital process automation (DPA), intelligent business process management systems (iBPMS), and dynamic case management (DCM).', 0),
	(9, 7, 'CloudAttribution', 'Performance', 'Cloud-based performance attribution reporting system for fixed income and multi-asset portfolios.', 'Cloud Native', '"Performance attribution"', '"Reporting and Analysis tool (Report Hub), Passive Investment Attribution tool"', '"Asset Management, "', 'Strategy tagging, Transaction-based tagging, PDF reporting, Excel Reporting, APIs to pull data', 0),
	(10, 8, 'SPARK', 'Data Management, Data Transformation', 'Spark is a cloud-based logic engine that converts complex business logic from Excel models into APIs.', 'Cloud Native', '"Convert spreadsheets into ready-to-integrate APIs, Centralize, secure and audit business logic, Automate complex modeling, testing and business impact simulation"', '"SPARK"', '"Insurance, Retail Banking, Asset Management"', 'Can separate data and logic, either maintain ss as input or take data from another source and then compute. Can be desk top based in ss or into another system (i.e. data from snowflake, transformed by coherent, and into PowerBI) - any changes made in spark will also feed into the excel sheet (every upload ss is stored, auditable, reviewed  -can also go back and restore a previous version), Shell is an exact replica of the excel ss - but in SPARK, multiple users on the same version of SS, permissions based access. Can then be confirmed to pull data directly from source and not ss,  data can then be published out to a warehouse/ powerbi/ another system (can also track what source was entered into that destination - either straight through or maker/checker process) 3) can create a form sheet with inputs from ss and logic and then replace ss altogether, Once in the system can track how many times a ss is accessed and used', 0),
	(11, 9, 'Du.Co', 'Data Management', 'No code data preparation, consolidation, reconciliation and distribution', 'Cloud Native', '"Cash Management, Transaction Reporting, Regulatory Reporting"', '"Duco Platform, Data Prep, Data Reconciliaiton"', '"Investment Banking, Insurance, FinTech, "', NULL, 0),
	(12, 10, 'Dynamo', 'Alternative Investment', 'Alternative investments investment management platform for both GPs and LPs.', 'Cloud Native', '"Alternative investments"', '"CRM & deal management, Investor relations, Fundraising & Marketing, Portfolio Monitoring & Valuation, Fund Accounting, Research Management, Portfolio Management, Data Automation, HoldingsInsight, Investor Portal, ESG"', '"Alternative Asset Managers, Asset Managers, Service Providers"', NULL, 1),
	(13, 11, 'EZOPS ARO', 'Data Transformation', 'Low code data transformation, reconciliations, predictive analytics, anomaly detection, workflow management, IPA Bots, and reporting.', 'Cloud Native', '"Data Migration, Automation, User-defined Technologies, Regulatory, Compliance, Reconciliation, Fund Administration"', '"Data Modeler, Data Reconciliation, Curie Prediction, Intelligent Process Automation, Insights"', '"Investment Banking, Asset Management, Service Proviers, Custodians, Retail Banking, Insurance, Corporate Treasury, Fund Administration, "', NULL, 1),
	(14, 12, 'Finbourne', 'Data Management', 'Offering global investment management, banking and capital markets firms an interoperable approach to data management by providing a consolidated and trusted view of your financial data across the front, middle and back office on the cloud.', 'Cloud Native', '"Data storage, Financial record keeping, Portfolio Management, Data Distribution"', '"LUSID - Operational Data Store (ODS), LUSID - IBOR & ABOR, LUSID - Portfolio Management (PMS), Luminesce - Data Virtualisation"', '"Alternative Asset Managers, Asset Management, Service Providers, Retail Banking, Investment Banking"', 'Citisoft has done a round table with Finbourne in Copenhagen and will be doing another one in London.', 1),
	(15, 13, 'Freyda', 'Data Transformation', 'A cloud-based solution helping financial institutions to process, interpret and analyse data from their documents. using machine learning, natural language processing and artificial intelligence to help organizations transform unstructured data from docum', 'Cloud Native', '"Natural Language Processing (NLP)"', '"Data Extraction, Search Engine, Data Approval, Dashboard, Analytics, Data Export"', '"Alternative Asset Managers, Asset Management, Fund Administrators"', 'Partnership with LemonEdge and ECI., Received backing from the Google for Startups Black Founders Fund in 2021.', 0),
	(16, 14, 'IBM watsonX', 'Artificial Intelligence', 'watsonx is an AI and data platform with a set of AI assistants designed to help scale and accelerate the impact of AI with trusted data across the business.', 'Cloud Native', '"Generative AI, Machine Learning, Data Storage, Data Management, Automation"', '"watsonx.ai, watsonx.data, watson.governance, watsonx Orchestrate, watsonx Assistant, watsonx Code Assistant"', '"Investment Banking, Asset Management, Service Proviers, Custodians, Retail Banking, Insurance, Corporate Treasury, Fund Administration, "', NULL, 1),
	(17, 15, 'Limina IMS', 'Portfolio Management, Trading ', 'Limina IMS is a cross-asset investment management platform that includes an OMS and a real-time IBOR that provides a real-time view of data (current, forward-looking and historical).', 'Cloud Native', '"Portfolio Manager, Trader, Operations, Compliance, Risk"', '"OMS Front Office, Investment & Portfolio Risk Management, Investment Book of Record (IBOR), Data Management"', '"Asset Management"', 'Designed for institutional investment managers to fit governance processes and oversight requirements, while still reaping the benefits of true cloud., Open platform that integrates with your existing ecosystem of service providers and technologies., Founded by investment management professionals., ', 0);

-- Dumping structure for table vendorappdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vendorappdb.users: ~0 rows (approximately)
INSERT INTO `users` (`Name`) VALUES
	('Jithin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
