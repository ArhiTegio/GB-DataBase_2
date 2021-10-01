DROP DATABASE IF EXISTS RecSbSpas;
CREATE DATABASE RecSbSpas;
USE RecSbSpas;


CREATE TABLE `ml_models` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `body` json DEFAULT NULL COMMENT 'Основная структура модели',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

CREATE TABLE `options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название',
  `value_str` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Значение строка',
  `value_int` int DEFAULT '0' COMMENT 'Значение число',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

CREATE TABLE `partners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название партнера',
  `offer` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название партнера',
  `min_cost_offer` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название партнера',
  `discription` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Описание партнера',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL ссылка',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
);

CREATE TABLE `table_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Идентификатор названия типа категории',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `table_category_id` int unsigned NOT NULL COMMENT 'Идентификатор названия типа категории',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Идентификатор названия типа категории',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `type_category_table_category_id` (`table_category_id`),
  CONSTRAINT `type_category_table_category_id` FOREIGN KEY (`table_category_id`) REFERENCES `table_categories` (`id`)
);

CREATE TABLE `ml_models_hyperparameters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название гиперпараметра',
  `value` json DEFAULT NULL COMMENT 'Гиперпараметр модели',
  `ml_model_id` int unsigned NOT NULL COMMENT 'Идентификатор модели',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ml_models_hyperparameters__ml_model_id` (`ml_model_id`),
  CONSTRAINT `ml_models_hyperparameters__ml_model_id` FOREIGN KEY (`ml_model_id`) REFERENCES `ml_models` (`id`)
);

CREATE TABLE `ml_models_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `value` json DEFAULT NULL COMMENT 'Значение строка',
  `ml_model_id` int unsigned NOT NULL COMMENT 'Идентификатор модели',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ml_models_options__ml_model_id` (`ml_model_id`),
  CONSTRAINT `ml_models_options__ml_model_id` FOREIGN KEY (`ml_model_id`) REFERENCES `ml_models` (`id`)
);

CREATE TABLE `partner_product_categoris` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `partner_id` int unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `name` varchar(255) NOT NULL COMMENT 'Название категории продукции',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `partner_product_categoris__partner_id` (`partner_id`),
  CONSTRAINT `partner_product_categoris__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);

CREATE TABLE `partner_profile` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `partner_id` int unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `address` json DEFAULT NULL COMMENT 'Адресс партнера',
  `summary_description` varchar(4096) DEFAULT '' COMMENT 'Общее описание партнера',
  `created_on` datetime DEFAULT NULL COMMENT 'Дата создания',
  `min_cost_product` decimal(10,0) DEFAULT '0' COMMENT 'Минимальная цена продукции',
  `max_cost_product` decimal(10,0) DEFAULT '0' COMMENT 'Максимальная цена продукции',
  `avg_cost_product` decimal(10,0) DEFAULT '0' COMMENT 'Средняя цена продукции',
  `mod_cost_product` decimal(10,0) DEFAULT '0' COMMENT 'Мода цены продукции',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `partner_profile__partner_id` (`partner_id`),
  CONSTRAINT `partner_profile__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);

CREATE TABLE `partner_reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `partner_id` int unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `body` varchar(2048) NOT NULL DEFAULT '' COMMENT 'Отзыв о партнере',
  `created_on` datetime DEFAULT NULL COMMENT 'Дата создания отзыва',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `partner_cat__partner_id` (`partner_id`),
  CONSTRAINT `partner_cat__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);

CREATE TABLE `partners__categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `category_id` int unsigned NOT NULL COMMENT 'Идентификатор типа категории',
  `partner_id` int unsigned NOT NULL COMMENT 'Идентификатор названия типа категории',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  `best_ml_model_id` int unsigned DEFAULT NULL COMMENT 'Идентификатор лучшей модели',
  PRIMARY KEY (`id`),
  KEY `partners_categories__category_id` (`category_id`),
  KEY `partners_categories__partner_id` (`partner_id`),
  CONSTRAINT `partners_categories__category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `partners_categories__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);