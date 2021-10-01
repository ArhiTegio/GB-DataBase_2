#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `table_category_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор названия типа категории',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Идентификатор названия типа категории',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `type_category_table_category_id` (`table_category_id`),
  CONSTRAINT `type_category_table_category_id` FOREIGN KEY (`table_category_id`) REFERENCES `table_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (1, 1, 'modi', '1988-08-11 14:10:18', '2007-07-12 01:15:44');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (2, 2, 'temporibus', '1979-05-13 03:26:11', '2001-09-10 20:20:19');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (3, 1, 'aut', '1991-02-25 18:08:32', '2007-08-03 08:39:28');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (4, 2, 'alias', '2005-04-08 00:27:24', '2008-02-10 20:45:25');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (5, 1, 'unde', '1972-12-25 11:07:56', '2014-10-13 19:22:15');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (6, 2, 'rerum', '2017-01-04 02:48:21', '1981-07-18 07:54:01');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (7, 1, 'vel', '2015-01-04 23:48:05', '2018-04-10 03:29:57');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (8, 2, 'repellat', '2018-05-16 06:39:49', '1987-01-18 23:36:41');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (9, 1, 'rerum', '1991-12-16 02:54:14', '2005-12-05 00:31:23');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (10, 2, 'ut', '1978-03-12 18:18:01', '1989-11-24 22:20:49');


#
# TABLE STRUCTURE FOR: ml_models
#

DROP TABLE IF EXISTS `ml_models`;

CREATE TABLE `ml_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название',
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Основная структура модели' CHECK (json_valid(`body`)),
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (1, 'nostrum', NULL, '2001-10-07 01:07:26', '1981-01-14 22:33:58');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (2, 'blanditiis', NULL, '1975-06-10 07:35:56', '1999-02-12 11:00:46');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (3, 'aut', NULL, '2014-12-20 16:47:41', '1978-03-30 00:44:25');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (4, 'quia', NULL, '2013-07-13 11:43:03', '2008-05-07 23:53:15');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (5, 'eos', NULL, '1980-12-06 22:18:35', '1985-04-21 22:00:17');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (6, 'et', NULL, '1992-02-09 13:01:19', '1971-03-07 10:49:30');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (7, 'qui', NULL, '1971-09-17 20:07:46', '2015-06-11 15:46:20');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (8, 'recusandae', NULL, '2018-07-17 21:25:09', '1993-06-24 23:58:21');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (9, 'delectus', NULL, '1976-10-09 18:43:03', '2006-09-03 19:46:59');
INSERT INTO `ml_models` (`id`, `name`, `body`, `created_at`, `updated_at`) VALUES (10, 'sit', NULL, '2011-02-10 00:43:39', '2002-04-27 04:01:09');


#
# TABLE STRUCTURE FOR: ml_models_hyperparameters
#

DROP TABLE IF EXISTS `ml_models_hyperparameters`;

CREATE TABLE `ml_models_hyperparameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название гиперпараметра',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Гиперпараметр модели' CHECK (json_valid(`value`)),
  `ml_model_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор модели',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ml_models_hyperparameters__ml_model_id` (`ml_model_id`),
  CONSTRAINT `ml_models_hyperparameters__ml_model_id` FOREIGN KEY (`ml_model_id`) REFERENCES `ml_models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (1, 'earum', NULL, 1, '1999-11-14 13:51:04', '1990-12-19 01:34:49');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (2, 'atque', NULL, 2, '1978-03-14 19:08:54', '1983-08-01 14:51:22');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (3, 'velit', NULL, 3, '2006-05-28 08:40:12', '2021-07-02 20:32:01');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (4, 'modi', NULL, 4, '1990-10-25 06:01:38', '1982-05-09 22:32:26');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (5, 'accusantium', NULL, 5, '1996-02-03 11:52:52', '1992-03-15 11:54:34');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (6, 'qui', NULL, 6, '2011-06-16 11:36:21', '1998-05-26 01:20:19');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (7, 'est', NULL, 7, '1989-02-06 20:03:18', '1990-02-20 01:54:27');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (8, 'nam', NULL, 8, '1975-02-24 04:27:36', '2005-03-10 04:06:44');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (9, 'optio', NULL, 9, '1991-04-27 20:04:19', '2019-04-17 07:19:30');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (10, 'placeat', NULL, 10, '2021-02-18 11:14:01', '2020-01-02 14:40:45');

#
# TABLE STRUCTURE FOR: ml_models_options
#

DROP TABLE IF EXISTS `ml_models_options`;

CREATE TABLE `ml_models_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Значение строка' CHECK (json_valid(`value`)),
  `ml_model_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор модели',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ml_models_options__ml_model_id` (`ml_model_id`),
  CONSTRAINT `ml_models_options__ml_model_id` FOREIGN KEY (`ml_model_id`) REFERENCES `ml_models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (1, 'facere', NULL, 1, '1997-10-07 20:21:25', '2008-08-23 11:30:26');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (2, 'quia', NULL, 2, '1973-08-02 03:22:23', '2008-07-01 18:50:05');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (3, 'nostrum', NULL, 3, '1993-04-02 03:33:33', '2021-01-17 04:33:44');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (4, 'quo', NULL, 4, '1977-12-07 23:51:36', '2015-04-20 01:23:01');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (5, 'alias', NULL, 5, '1999-01-19 03:10:41', '2008-03-26 12:55:40');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (6, 'aspernatur', NULL, 6, '1999-02-10 11:53:58', '2020-06-06 04:07:31');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (7, 'voluptate', NULL, 7, '2016-03-06 19:58:56', '2005-02-04 07:27:43');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (8, 'non', NULL, 8, '1992-11-09 14:26:30', '1970-03-10 22:28:39');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (9, 'quisquam', NULL, 9, '1985-06-02 01:28:23', '1986-11-28 22:28:51');
INSERT INTO `ml_models_options` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (10, 'quaerat', NULL, 10, '2000-02-04 09:15:01', '2011-10-09 02:16:59');


#
# TABLE STRUCTURE FOR: options
#

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название',
  `value_str` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Значение строка',
  `value_int` int(11) DEFAULT 0 COMMENT 'Значение число',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (1, 'velit', '', 0, '2006-03-14 03:14:42', '1988-08-09 05:08:23');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (2, 'sit', '', 0, '1985-06-02 02:37:20', '2013-08-14 02:14:00');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (3, 'placeat', '', 0, '1993-07-11 12:16:57', '1992-04-01 11:05:58');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (4, 'expedita', '', 0, '1989-12-11 07:31:59', '1987-06-18 15:34:16');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (5, 'voluptas', '', 0, '1997-04-06 19:15:15', '1978-10-21 18:01:56');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (6, 'est', '', 0, '1981-01-24 00:51:20', '1995-10-30 12:16:15');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (7, 'cum', '', 0, '2017-09-21 08:48:53', '1997-10-19 21:34:37');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (8, 'id', '', 0, '1985-11-02 09:00:55', '1970-04-26 18:53:23');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (9, 'perspiciatis', '', 0, '1971-10-14 23:48:55', '1991-05-09 20:50:00');
INSERT INTO `options` (`id`, `name`, `value_str`, `value_int`, `created_at`, `updated_at`) VALUES (10, 'quis', '', 0, '1974-05-15 23:34:45', '1997-07-29 07:39:39');


#
# TABLE STRUCTURE FOR: partner_product_categoris
#

DROP TABLE IF EXISTS `partner_product_categoris`;

CREATE TABLE `partner_product_categoris` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `partner_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название категории продукции',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `partner_product_categoris__partner_id` (`partner_id`),
  CONSTRAINT `partner_product_categoris__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (1, 1, 'fuga', '1996-05-12 10:39:01', '2006-06-30 05:57:35');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (2, 2, 'itaque', '1971-01-05 01:41:42', '1996-08-28 22:23:03');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (3, 3, 'voluptas', '2015-03-15 02:19:14', '1998-08-15 03:16:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (4, 4, 'debitis', '1970-08-21 03:19:59', '1979-11-02 00:09:28');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (5, 5, 'voluptates', '2012-09-14 13:54:43', '2005-10-08 18:38:52');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (6, 6, 'aliquid', '1975-02-23 19:23:23', '2018-09-03 17:04:41');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (7, 7, 'atque', '1973-01-27 15:43:40', '2018-12-19 07:37:51');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (8, 8, 'est', '1994-05-11 01:01:00', '2003-05-08 13:06:56');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (9, 9, 'consequatur', '2002-01-13 01:15:07', '1975-03-05 20:17:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (10, 10, 'voluptatem', '2018-09-20 10:08:23', '2007-10-09 06:29:41');

#
# TABLE STRUCTURE FOR: partner_profile
#

DROP TABLE IF EXISTS `partner_profile`;

CREATE TABLE `partner_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `partner_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Адресс партнера' CHECK (json_valid(`address`)),
  `summary_description` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Общее описание партнера',
  `created_on` datetime DEFAULT NULL COMMENT 'Дата создания',
  `min_cost_product` decimal(10,0) DEFAULT 0 COMMENT 'Минимальная цена продукции',
  `max_cost_product` decimal(10,0) DEFAULT 0 COMMENT 'Максимальная цена продукции',
  `avg_cost_product` decimal(10,0) DEFAULT 0 COMMENT 'Средняя цена продукции',
  `mod_cost_product` decimal(10,0) DEFAULT 0 COMMENT 'Мода цены продукции',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `partner_profile__partner_id` (`partner_id`),
  CONSTRAINT `partner_profile__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: partner_reviews
#

DROP TABLE IF EXISTS `partner_reviews`;

CREATE TABLE `partner_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `partner_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `body` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Отзыв о партнере',
  `created_on` datetime DEFAULT NULL COMMENT 'Дата создания отзыва',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `partner_cat__partner_id` (`partner_id`),
  CONSTRAINT `partner_cat__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (1, 1, 'Quod dignissimos recusandae quo similique. In molestiae et est quia velit reiciendis. Maiores amet molestiae ipsum voluptatem sapiente vel eos sunt.', '2004-01-12 17:55:19', '2012-05-13 08:30:53', '1977-08-25 10:46:01');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (2, 2, 'Voluptas deserunt aliquid cupiditate veritatis ut. Consequatur laboriosam impedit non sit sed. Quo qui sint perspiciatis hic est voluptatem enim ipsa.', '2008-06-17 09:13:40', '1972-12-31 10:36:21', '2005-07-14 12:38:33');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (3, 3, 'Nam nihil magnam pariatur sint. Cumque dolorum numquam aliquid qui voluptatem aperiam possimus mollitia. Et ipsam molestiae ullam illum.', '1998-11-21 10:11:34', '1980-06-18 06:31:38', '1983-11-11 12:18:01');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (4, 4, 'Ipsum explicabo odit praesentium quae. Ut qui magnam nihil assumenda officiis qui debitis. Optio ut asperiores cumque qui itaque commodi nostrum quos.', '1970-12-20 04:55:07', '1996-02-15 10:33:18', '1972-05-06 14:24:10');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (5, 5, 'Cumque sequi mollitia voluptatem nihil. Et tempora aliquid cupiditate aperiam consequuntur cum. Velit aut molestiae necessitatibus similique libero. Eum eos consequatur delectus odit eos.', '1990-11-07 19:36:36', '1990-06-11 23:48:08', '1987-11-08 20:05:34');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (6, 6, 'Aut saepe quae asperiores ratione et. Doloremque praesentium quibusdam aut. Voluptatem iusto similique dicta voluptatem vitae in.', '2009-08-11 09:10:56', '1983-09-06 17:55:47', '1976-07-13 18:54:09');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (7, 7, 'Animi voluptatem est sunt incidunt eos commodi sit nisi. Odio est explicabo ex ipsa voluptates animi minus. Atque voluptatum iusto cum vitae autem voluptatem error reiciendis.', '1974-03-12 21:36:21', '2011-05-29 16:56:15', '2006-03-16 19:43:08');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (8, 8, 'Sit minus fugit dolorum consequatur consequatur sint. Praesentium quis provident et porro quae atque accusantium. Veniam debitis incidunt explicabo sequi eum et.', '2004-10-25 01:55:18', '2011-07-08 22:09:54', '2007-05-14 04:25:27');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (9, 9, 'Dolor est cumque labore cupiditate tempore ut nisi. Aspernatur maxime doloremque qui natus enim quas. Nemo modi sapiente consequatur qui doloremque quibusdam non quia.', '2013-07-03 19:59:25', '1993-10-10 10:52:47', '2013-09-29 05:01:29');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (10, 10, 'Hic error rerum eum eius. Fuga non illum provident eos reiciendis quam esse cum. Hic fugiat et nisi quo. Tempore dolorem magnam aliquid magnam reprehenderit repudiandae quia.', '1985-12-19 03:24:00', '2005-09-06 06:20:23', '1994-05-26 23:10:58');

#
# TABLE STRUCTURE FOR: partners
#

DROP TABLE IF EXISTS `partners`;

CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название партнера',
  `offer` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название партнера',
  `min_cost_offer` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название партнера',
  `discription` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Описание партнера',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL ссылка',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (1, 'unde', '', '119651.58', '', 'http://creminbernhard.com/', '1993-09-10 22:46:31', '1995-02-28 21:06:17');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (2, 'doloribus', '', '42.865', '', 'http://www.stoltenberg.com/', '1973-01-19 19:20:07', '2001-05-22 12:38:26');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (3, 'itaque', '', '18704.383141', '', 'http://www.weissnat.biz/', '1980-03-14 20:10:37', '2020-06-28 14:42:57');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (4, 'aut', '', '351915068.99', '', 'http://www.ullrichfisher.com/', '1982-12-14 08:57:38', '2013-06-21 05:58:33');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (5, 'ex', '', '10923', '', 'http://www.handtoy.org/', '2014-11-26 07:03:01', '2002-01-14 19:11:09');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (6, 'perspiciatis', '', '198.586', '', 'http://muellerdickinson.org/', '2014-05-31 21:58:13', '2021-02-26 13:59:30');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (7, 'voluptatem', '', '7.60767359', '', 'http://www.kreiger.com/', '1979-10-21 21:43:51', '2012-01-12 05:47:50');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (8, 'occaecati', '', '886.36878756', '', 'http://www.walsh.net/', '2020-02-26 01:23:28', '1989-07-10 11:57:22');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (9, 'id', '', '146306.23425', '', 'http://www.klein.info/', '1982-05-16 05:29:52', '1973-06-27 17:08:39');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (10, 'aut', '', '1459', '', 'http://osinski.com/', '1984-10-13 10:56:54', '2007-02-08 21:33:13');


#
# TABLE STRUCTURE FOR: partners__categories
#

DROP TABLE IF EXISTS `partners__categories`;

CREATE TABLE `partners__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `category_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор типа категории',
  `partner_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор названия типа категории',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  `best_ml_model_id` int(10) unsigned DEFAULT NULL COMMENT 'Идентификатор лучшей модели',
  PRIMARY KEY (`id`),
  KEY `partners_categories__category_id` (`category_id`),
  KEY `partners_categories__partner_id` (`partner_id`),
  CONSTRAINT `partners_categories__category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `partners_categories__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (145, 1, 1, '1983-07-19 15:17:56', '1988-05-09 00:58:54', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (146, 2, 2, '2019-02-04 16:28:43', '1975-01-13 01:11:11', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (147, 3, 3, '1992-02-21 03:33:47', '1970-11-25 12:59:30', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (148, 4, 4, '2004-04-09 05:08:39', '2017-02-21 02:29:16', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (149, 5, 5, '2008-10-15 11:55:19', '2015-09-26 23:36:26', 6);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (150, 6, 6, '1993-08-17 20:45:48', '2017-10-30 11:32:29', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (151, 7, 7, '2020-04-01 03:41:35', '2006-04-21 13:44:28', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (152, 8, 8, '1982-12-17 14:29:13', '1976-07-13 11:04:08', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (153, 9, 9, '1998-05-27 22:45:24', '2008-04-19 14:49:56', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (154, 10, 10, '1978-01-19 08:53:40', '1989-05-22 00:07:42', 8);


#
# TABLE STRUCTURE FOR: table_categories
#

DROP TABLE IF EXISTS `table_categories`;

CREATE TABLE `table_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Идентификатор названия типа категории',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `table_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'est', '1984-08-04 01:42:08', '1974-10-07 18:37:25');
INSERT INTO `table_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'voluptate', '1993-01-13 13:14:58', '1990-01-20 18:10:24');


