CREATE TABLE `djangoapp_productcategory` (
	`id` BIGINT(19) NOT NULL AUTO_INCREMENT,
	`category_name` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`category_description` LONGTEXT NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;
