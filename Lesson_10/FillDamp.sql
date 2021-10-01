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
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (11, 1, 'delectus', '2002-03-02 16:31:01', '1971-12-19 21:45:09');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (12, 2, 'velit', '1988-03-21 03:38:52', '2003-06-30 05:43:57');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (13, 1, 'officiis', '1983-06-16 19:33:18', '1978-07-14 18:33:32');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (14, 2, 'optio', '1980-11-12 14:47:27', '2011-07-13 05:29:20');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (15, 1, 'ipsum', '1972-12-14 16:20:05', '2019-05-26 23:23:40');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (16, 2, 'eveniet', '1973-10-03 20:27:51', '1984-12-13 16:07:09');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (17, 1, 'at', '1973-05-13 18:48:25', '1978-09-16 22:33:08');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (18, 2, 'accusantium', '2013-07-05 10:53:27', '1987-03-12 00:10:44');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (19, 1, 'labore', '2008-12-09 07:33:37', '1997-07-30 05:03:33');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (20, 2, 'dolor', '2001-02-11 23:56:05', '1993-09-21 08:16:35');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (21, 1, 'animi', '2001-04-03 06:22:43', '2014-08-24 01:45:09');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (22, 2, 'aut', '1977-08-01 04:55:34', '1993-09-28 06:34:06');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (23, 1, 'quia', '1988-10-29 06:52:56', '1984-06-06 09:12:03');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (24, 2, 'labore', '1979-05-30 10:46:02', '1994-06-20 19:07:50');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (25, 1, 'autem', '1981-12-22 05:52:47', '1979-08-17 11:38:39');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (26, 2, 'cumque', '2000-02-17 09:10:05', '2012-02-16 23:39:50');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (27, 1, 'eligendi', '2013-03-13 01:43:59', '1991-04-01 13:32:15');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (28, 2, 'nulla', '2009-03-29 21:34:02', '2004-09-06 04:55:37');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (29, 1, 'explicabo', '1986-10-19 10:51:46', '1999-04-18 14:34:11');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (30, 2, 'qui', '1998-10-03 03:12:26', '2010-07-10 07:42:51');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (31, 1, 'consequatur', '1994-06-10 11:03:11', '1983-08-08 19:56:16');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (32, 2, 'et', '2017-04-12 10:51:22', '2013-07-08 09:27:29');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (33, 1, 'minima', '1980-11-29 23:12:17', '1995-05-27 08:59:03');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (34, 2, 'inventore', '2010-03-02 07:59:45', '2003-06-27 23:35:51');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (35, 1, 'non', '2004-01-03 16:10:52', '2003-11-04 21:47:34');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (36, 2, 'eaque', '1990-06-19 13:55:16', '2008-03-29 20:18:01');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (37, 1, 'velit', '2014-06-29 19:22:59', '2016-03-08 21:58:32');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (38, 2, 'est', '1983-01-11 08:03:01', '1991-11-02 12:22:40');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (39, 1, 'velit', '1977-09-30 22:12:24', '1987-03-21 21:16:41');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (40, 2, 'ut', '2016-10-25 05:29:57', '2001-03-06 04:05:01');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (41, 1, 'ut', '1992-09-23 23:38:03', '1992-01-22 00:32:53');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (42, 2, 'consequatur', '2018-01-02 22:44:20', '1976-10-12 12:17:41');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (43, 1, 'ipsum', '1999-05-29 07:27:57', '2008-05-06 11:39:54');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (44, 2, 'et', '1995-10-12 17:09:42', '1987-06-14 10:50:26');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (45, 1, 'ut', '1974-04-03 05:20:11', '1991-09-18 10:30:21');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (46, 2, 'cumque', '2011-12-07 03:26:42', '1988-02-03 22:16:15');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (47, 1, 'rerum', '2004-06-21 14:30:41', '1975-12-26 19:08:43');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (48, 2, 'delectus', '2016-04-08 19:35:51', '2006-09-24 19:30:11');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (49, 1, 'nemo', '1980-01-27 17:11:34', '1982-04-08 18:11:00');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (50, 2, 'inventore', '1990-12-24 11:28:53', '2021-03-24 00:23:29');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (51, 1, 'necessitatibus', '2002-02-19 15:54:34', '2019-11-26 17:44:06');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (52, 2, 'quibusdam', '2002-02-12 17:43:34', '1975-03-01 11:21:57');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (53, 1, 'esse', '2003-07-23 00:18:13', '2007-11-12 14:12:30');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (54, 2, 'voluptas', '1976-05-18 09:06:58', '2020-08-23 09:55:48');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (55, 1, 'at', '2015-12-14 12:37:04', '2016-05-27 12:26:39');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (56, 2, 'doloribus', '2011-03-28 02:10:44', '2001-09-02 21:18:39');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (57, 1, 'odit', '1975-12-06 18:30:44', '1980-02-25 10:40:11');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (58, 2, 'laboriosam', '2000-06-21 08:22:49', '1973-11-23 07:38:52');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (59, 1, 'nisi', '1976-03-31 09:57:40', '1987-08-01 17:18:19');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (60, 2, 'mollitia', '1972-09-30 07:31:57', '2014-09-20 15:54:55');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (61, 1, 'molestias', '1978-04-05 04:59:43', '1977-12-21 22:00:56');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (62, 2, 'aut', '2012-09-05 13:59:24', '1976-04-16 15:54:34');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (63, 1, 'eum', '1971-05-11 17:29:47', '1994-01-15 02:05:06');
INSERT INTO `categories` (`id`, `table_category_id`, `name`, `created_at`, `updated_at`) VALUES (64, 2, 'animi', '1972-02-01 18:51:08', '1992-05-27 12:14:43');


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
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (11, 'perferendis', NULL, 1, '1986-10-07 09:56:34', '1993-07-19 23:38:33');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (12, 'esse', NULL, 2, '1975-08-02 05:54:05', '2010-02-18 13:33:52');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (13, 'odio', NULL, 3, '2015-10-27 18:25:58', '1973-10-09 10:08:53');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (14, 'necessitatibus', NULL, 4, '1982-09-10 22:02:24', '2015-08-04 12:18:03');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (15, 'veritatis', NULL, 5, '1977-06-08 03:56:04', '1995-03-03 11:40:42');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (16, 'porro', NULL, 6, '1993-05-25 10:09:30', '2014-11-11 20:05:58');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (17, 'illo', NULL, 7, '2007-10-04 07:36:27', '2011-04-11 10:03:30');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (18, 'omnis', NULL, 8, '1983-06-01 15:47:01', '2009-08-09 16:22:17');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (19, 'cum', NULL, 9, '1989-07-21 07:51:55', '2013-10-28 14:26:31');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (20, 'consequatur', NULL, 10, '2020-10-07 05:04:31', '1975-09-28 19:52:36');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (21, 'magnam', NULL, 1, '1978-05-19 12:32:10', '2005-05-19 10:04:25');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (22, 'iste', NULL, 2, '1997-05-29 14:09:42', '2014-11-13 15:52:06');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (23, 'ex', NULL, 3, '2016-08-08 00:37:12', '1992-04-06 04:58:12');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (24, 'doloribus', NULL, 4, '2000-12-10 23:27:41', '2008-02-03 12:35:43');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (25, 'perspiciatis', NULL, 5, '2009-12-30 20:04:56', '2020-10-23 02:19:23');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (26, 'aspernatur', NULL, 6, '2018-09-11 08:23:22', '2006-01-06 13:24:43');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (27, 'ea', NULL, 7, '1989-09-04 02:19:07', '1997-07-22 23:05:20');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (28, 'doloremque', NULL, 8, '1991-04-25 07:13:57', '1977-09-22 14:34:28');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (29, 'et', NULL, 9, '2014-09-02 12:25:03', '1999-07-25 01:17:38');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (30, 'minima', NULL, 10, '1999-12-20 02:33:12', '1991-01-30 05:14:32');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (31, 'facere', NULL, 1, '1979-08-23 12:12:31', '2011-01-02 16:18:21');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (32, 'dolor', NULL, 2, '2017-10-07 16:56:34', '2006-09-17 14:40:36');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (33, 'cumque', NULL, 3, '1971-07-28 23:56:15', '1977-08-07 20:33:40');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (34, 'numquam', NULL, 4, '1979-05-07 14:47:22', '1986-06-21 22:07:17');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (35, 'aperiam', NULL, 5, '1992-10-19 01:48:31', '2020-09-11 21:38:09');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (36, 'aut', NULL, 6, '2010-03-02 00:42:07', '2012-11-24 14:48:10');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (37, 'molestiae', NULL, 7, '2001-06-10 04:40:00', '2014-01-10 01:54:59');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (38, 'maxime', NULL, 8, '1970-07-26 01:10:17', '2004-10-26 04:48:22');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (39, 'officia', NULL, 9, '2000-11-24 17:49:29', '2014-08-11 02:52:25');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (40, 'deserunt', NULL, 10, '1990-07-19 11:40:54', '1995-01-04 21:08:06');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (41, 'non', NULL, 1, '1970-01-25 19:37:49', '1977-11-16 11:04:55');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (42, 'consectetur', NULL, 2, '1998-05-23 08:22:31', '2018-04-14 14:11:47');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (43, 'at', NULL, 3, '1981-06-07 03:50:10', '2018-05-24 05:43:52');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (44, 'incidunt', NULL, 4, '1994-03-24 20:19:58', '2003-06-04 10:34:29');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (45, 'quasi', NULL, 5, '1983-02-05 01:16:23', '1972-10-21 19:24:02');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (46, 'sapiente', NULL, 6, '2015-02-05 17:48:16', '1982-01-17 07:40:52');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (47, 'voluptas', NULL, 7, '1979-07-11 21:27:37', '1998-05-30 06:14:57');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (48, 'harum', NULL, 8, '1989-06-23 03:12:39', '1972-06-27 15:28:05');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (49, 'ut', NULL, 9, '1994-09-17 04:50:18', '1997-06-05 17:24:35');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (50, 'possimus', NULL, 10, '1994-04-22 15:27:00', '1975-09-02 08:40:05');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (51, 'enim', NULL, 1, '1984-11-07 16:47:51', '1995-01-03 00:15:39');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (52, 'quae', NULL, 2, '1975-03-26 20:13:47', '1973-05-31 10:29:25');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (53, 'molestias', NULL, 3, '2003-05-26 03:44:14', '1976-01-27 15:32:15');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (54, 'sed', NULL, 4, '2001-10-28 08:08:49', '2008-05-30 03:27:11');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (55, 'beatae', NULL, 5, '1970-06-19 18:00:07', '2017-07-21 00:15:01');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (56, 'reiciendis', NULL, 6, '2012-05-26 04:49:29', '1986-12-20 04:14:41');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (57, 'quis', NULL, 7, '2017-06-01 15:15:46', '2002-12-17 14:40:24');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (58, 'quia', NULL, 8, '1989-08-10 07:51:47', '1973-09-22 12:39:31');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (59, 'eos', NULL, 9, '2015-03-29 10:49:37', '1994-11-10 15:25:21');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (60, 'quas', NULL, 10, '2009-01-15 23:48:50', '1970-10-04 01:48:09');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (61, 'facilis', NULL, 1, '2002-06-18 19:39:48', '2018-04-17 22:05:18');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (62, 'pariatur', NULL, 2, '1980-01-23 20:26:43', '2018-10-06 20:33:39');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (63, 'ipsa', NULL, 3, '2010-05-19 00:21:00', '2008-11-23 09:07:35');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (64, 'maiores', NULL, 4, '1977-12-17 04:29:28', '1991-12-18 21:54:09');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (65, 'sit', NULL, 5, '1991-04-01 07:19:05', '1991-06-01 11:20:08');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (66, 'in', NULL, 6, '2017-04-02 21:58:25', '1980-03-20 10:22:35');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (67, 'dolores', NULL, 7, '2001-05-31 17:40:06', '1971-07-15 03:32:30');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (68, 'voluptatem', NULL, 8, '2017-12-15 13:05:26', '2016-01-29 12:29:54');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (69, 'sunt', NULL, 9, '1991-12-17 07:15:29', '2002-01-08 00:49:33');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (70, 'repudiandae', NULL, 10, '1997-07-26 03:54:12', '2001-07-18 01:12:42');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (71, 'assumenda', NULL, 1, '2014-10-03 21:10:08', '1993-10-13 05:58:02');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (72, 'exercitationem', NULL, 2, '1995-06-22 16:36:01', '2011-04-09 04:45:56');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (73, 'a', NULL, 3, '1996-03-05 16:07:24', '2003-03-09 11:29:56');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (74, 'rerum', NULL, 4, '2007-05-25 17:33:18', '1970-10-04 01:54:22');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (75, 'temporibus', NULL, 5, '2001-03-05 10:46:20', '2018-12-16 19:56:42');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (76, 'natus', NULL, 6, '1977-02-16 03:03:31', '1973-03-14 23:03:25');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (77, 'voluptatum', NULL, 7, '1971-06-03 16:53:19', '1984-04-20 03:11:56');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (78, 'sequi', NULL, 8, '1988-03-28 23:18:33', '1973-06-29 12:59:12');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (79, 'tempora', NULL, 9, '2012-04-04 13:02:29', '1994-07-07 20:41:58');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (80, 'dolorem', NULL, 10, '1987-03-06 19:29:03', '2018-04-01 03:00:00');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (81, 'architecto', NULL, 1, '2011-01-06 03:52:26', '1995-10-05 21:03:56');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (82, 'eum', NULL, 2, '1976-11-14 18:41:36', '1992-09-13 10:05:18');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (83, 'debitis', NULL, 3, '2008-07-21 10:08:55', '2000-11-11 20:18:32');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (84, 'blanditiis', NULL, 4, '1995-05-03 11:07:59', '1991-11-25 01:44:52');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (85, 'minus', NULL, 5, '2000-06-20 14:05:40', '1973-09-12 14:19:32');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (86, 'explicabo', NULL, 6, '2016-12-27 18:32:20', '2008-04-28 13:57:53');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (87, 'neque', NULL, 7, '1991-12-15 16:52:01', '2014-10-12 11:42:22');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (88, 'quod', NULL, 8, '2002-10-11 03:23:47', '1980-09-01 11:19:19');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (89, 'voluptatibus', NULL, 9, '1994-05-15 22:21:35', '1990-05-20 11:38:40');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (90, 'tenetur', NULL, 10, '1980-05-11 15:20:45', '1995-08-24 00:03:17');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (91, 'cupiditate', NULL, 1, '1977-09-24 02:36:05', '2001-10-17 16:29:54');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (92, 'quisquam', NULL, 2, '1992-05-13 20:32:02', '1978-06-05 16:13:18');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (93, 'occaecati', NULL, 3, '2000-05-04 21:03:30', '1982-02-21 19:26:06');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (94, 'repellat', NULL, 4, '2018-10-09 09:58:29', '1994-08-06 01:03:06');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (95, 'mollitia', NULL, 5, '2017-11-18 06:44:44', '1979-07-10 17:57:44');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (96, 'nobis', NULL, 6, '2004-11-23 02:27:52', '1981-05-26 08:19:01');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (97, 'itaque', NULL, 7, '2019-02-17 04:49:20', '1984-12-16 00:00:38');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (98, 'saepe', NULL, 8, '1997-03-01 04:29:56', '2010-02-16 08:10:01');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (99, 'hic', NULL, 9, '2009-07-06 19:00:20', '1989-09-24 18:46:27');
INSERT INTO `ml_models_hyperparameters` (`id`, `name`, `value`, `ml_model_id`, `created_at`, `updated_at`) VALUES (100, 'ipsum', NULL, 10, '2016-12-16 22:50:10', '2005-09-22 14:42:35');


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
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (11, 11, 'at', '1994-11-19 14:17:30', '2018-04-26 00:41:06');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (12, 12, 'voluptate', '1970-12-17 23:21:19', '1980-05-20 23:08:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (13, 13, 'et', '2018-07-18 11:13:37', '2002-05-28 11:40:43');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (14, 14, 'aut', '1978-07-13 00:42:00', '2002-06-01 05:45:19');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (15, 15, 'ab', '1983-09-19 23:25:01', '1987-02-15 23:06:58');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (16, 16, 'placeat', '2010-06-02 21:56:13', '2009-04-05 20:11:14');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (17, 17, 'laboriosam', '1989-11-03 11:40:38', '1971-06-07 23:51:25');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (18, 18, 'tempore', '1979-12-19 01:22:49', '1985-04-09 13:43:54');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (19, 19, 'consequuntur', '1988-02-14 09:02:39', '2007-04-27 16:23:52');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (20, 20, 'modi', '2018-10-24 02:35:28', '1972-10-08 04:17:18');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (21, 21, 'et', '1982-04-24 09:29:44', '2012-05-22 18:48:18');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (22, 22, 'sapiente', '1995-07-22 11:37:38', '1979-11-21 18:04:55');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (23, 23, 'perferendis', '2021-06-01 17:53:57', '2001-04-26 18:49:55');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (24, 24, 'impedit', '1977-03-13 06:53:27', '1991-01-28 15:49:21');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (25, 25, 'tempore', '1990-08-13 22:29:44', '2013-06-17 13:26:56');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (26, 26, 'consequatur', '1976-09-10 08:39:30', '1993-01-04 07:59:01');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (27, 27, 'aperiam', '2018-08-08 15:17:42', '1984-07-06 09:09:05');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (28, 28, 'rerum', '2000-01-11 08:39:50', '2015-06-02 14:47:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (29, 29, 'error', '2012-06-16 17:13:10', '1997-12-11 02:52:26');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (30, 30, 'non', '2005-09-08 13:20:16', '1974-08-16 00:47:39');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (31, 31, 'dolores', '2006-01-31 05:34:36', '2006-04-27 09:17:13');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (32, 32, 'qui', '1987-11-27 00:04:46', '1998-06-17 22:41:54');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (33, 33, 'amet', '1997-03-26 17:11:30', '2013-12-10 14:18:44');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (34, 34, 'iste', '2016-07-24 18:12:53', '1977-04-16 16:36:23');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (35, 35, 'temporibus', '1972-01-10 10:42:43', '2011-02-20 08:23:51');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (36, 36, 'provident', '1979-10-01 02:46:07', '1994-02-01 01:03:52');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (37, 37, 'aspernatur', '2004-04-04 03:13:57', '1983-05-14 02:32:33');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (38, 38, 'nisi', '2002-08-06 00:43:20', '1972-10-08 09:04:18');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (39, 39, 'quia', '2010-10-14 22:06:49', '2005-02-06 05:17:12');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (40, 40, 'nisi', '2010-01-15 18:27:31', '1986-04-20 20:24:00');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (41, 41, 'nemo', '2010-02-13 09:17:47', '2017-01-31 11:19:32');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (42, 42, 'est', '1993-02-22 09:26:45', '1974-09-02 18:30:40');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (43, 43, 'magni', '2006-05-21 08:12:06', '2000-02-12 12:19:21');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (44, 44, 'ducimus', '1983-01-05 04:28:23', '1976-02-01 04:20:37');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (45, 45, 'et', '1981-11-28 17:42:21', '1977-06-13 04:29:01');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (46, 46, 'repellat', '1998-04-20 06:14:21', '1998-01-08 23:40:50');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (47, 47, 'consequuntur', '2014-03-01 02:22:30', '1979-11-15 17:03:57');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (48, 48, 'eveniet', '1972-03-29 18:35:44', '1974-03-22 18:00:20');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (49, 49, 'nesciunt', '1972-04-17 20:59:39', '1989-09-05 23:14:07');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (50, 50, 'magnam', '1999-06-27 13:25:11', '2017-11-16 12:24:41');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (51, 51, 'et', '1978-03-14 01:21:11', '2008-02-22 08:42:48');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (52, 52, 'quasi', '2005-07-19 23:45:59', '1979-03-12 10:29:58');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (53, 53, 'hic', '1992-03-06 11:52:04', '1993-11-10 03:41:02');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (54, 54, 'natus', '2014-12-03 08:13:32', '1972-11-18 14:09:52');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (55, 55, 'molestiae', '1994-06-06 14:39:35', '2017-05-11 06:42:20');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (56, 56, 'sequi', '1996-11-14 15:28:16', '1981-01-27 18:23:33');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (57, 57, 'quod', '2005-01-14 23:19:53', '1971-07-15 17:51:33');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (58, 58, 'impedit', '1971-08-28 15:53:46', '2007-08-16 11:55:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (59, 59, 'minus', '1991-07-17 18:36:05', '1978-08-24 13:10:22');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (60, 60, 'qui', '1973-04-15 16:14:44', '2003-10-23 10:08:02');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (61, 61, 'quisquam', '1971-12-06 04:36:56', '1995-09-18 11:20:05');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (62, 62, 'nobis', '1971-08-04 16:31:51', '2015-03-09 06:36:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (63, 63, 'consequatur', '2006-06-29 07:07:09', '1976-05-07 01:50:32');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (64, 64, 'deleniti', '1982-03-05 05:39:37', '1998-09-11 08:46:33');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (65, 65, 'et', '1985-05-26 01:21:42', '1974-12-02 09:07:54');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (66, 66, 'qui', '1985-05-23 04:07:49', '1991-02-07 22:14:08');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (67, 67, 'dolores', '1995-03-02 17:00:28', '1970-06-02 07:12:10');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (68, 68, 'placeat', '2010-10-15 05:31:55', '1979-04-03 07:40:01');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (69, 69, 'placeat', '1974-06-01 01:46:22', '2003-09-16 04:29:31');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (70, 70, 'culpa', '2010-10-15 10:02:24', '1993-04-23 00:01:42');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (71, 71, 'non', '1997-08-24 12:06:36', '2008-08-24 01:09:54');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (72, 72, 'quae', '1986-11-24 13:52:51', '2019-08-31 12:23:43');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (73, 73, 'enim', '2007-08-08 18:38:22', '2005-07-10 23:11:29');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (74, 74, 'aperiam', '1972-08-18 00:52:14', '2010-12-23 01:57:58');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (75, 75, 'delectus', '1975-08-16 22:19:55', '1984-05-22 18:12:42');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (76, 76, 'quidem', '1971-02-15 15:50:36', '1979-06-06 23:51:57');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (77, 77, 'natus', '1983-01-25 11:02:15', '1981-11-23 20:48:55');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (78, 78, 'est', '1970-03-02 21:14:45', '2004-07-22 01:10:40');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (79, 79, 'nemo', '1990-07-02 17:21:07', '1975-06-07 04:31:43');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (80, 80, 'et', '2015-05-22 03:14:56', '1992-08-28 02:12:10');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (81, 81, 'mollitia', '2015-06-03 15:31:37', '1994-04-14 21:00:04');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (82, 82, 'voluptas', '1982-03-21 20:12:05', '1973-05-23 11:22:42');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (83, 83, 'sit', '2020-10-23 12:29:31', '1979-01-23 19:20:57');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (84, 84, 'aut', '2003-12-09 01:39:14', '1990-05-24 05:48:34');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (85, 85, 'qui', '1973-06-19 06:31:12', '1988-01-11 23:59:18');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (86, 86, 'quia', '2002-01-01 16:46:56', '1992-03-16 15:12:32');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (87, 87, 'at', '2011-11-01 05:59:31', '2000-10-07 15:25:11');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (88, 88, 'totam', '1972-09-07 19:53:56', '2013-07-16 02:06:29');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (89, 89, 'deserunt', '2006-06-02 07:02:12', '1974-07-05 20:25:54');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (90, 90, 'illo', '1982-02-08 21:57:16', '1984-04-21 18:38:00');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (91, 91, 'et', '2012-04-20 05:52:05', '1992-08-15 21:51:52');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (92, 92, 'corrupti', '1982-11-20 17:38:12', '1996-02-27 22:45:32');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (93, 93, 'et', '2012-10-31 19:41:01', '2020-04-16 19:58:10');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (94, 94, 'et', '2013-02-06 11:35:53', '1979-01-04 15:39:06');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (95, 95, 'vel', '2016-09-15 05:29:41', '2016-08-05 02:57:57');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (96, 96, 'sapiente', '1999-08-15 22:38:10', '1978-02-07 13:26:24');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (97, 97, 'deleniti', '1980-07-28 23:19:02', '2013-09-29 18:01:54');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (98, 98, 'eveniet', '1971-10-22 10:45:44', '1975-12-24 06:52:56');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (99, 99, 'ut', '1983-05-06 10:51:23', '1989-04-20 06:06:43');
INSERT INTO `partner_product_categoris` (`id`, `partner_id`, `name`, `created_at`, `updated_at`) VALUES (100, 100, 'officiis', '2010-10-16 14:51:42', '2021-09-30 15:21:35');


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
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (11, 11, 'Qui molestiae deserunt dolorum laboriosam quas accusamus. Non cum similique fugit cupiditate nostrum consectetur ex culpa. Molestias aut numquam consectetur eos ratione exercitationem.', '1996-10-28 06:16:36', '1994-05-16 01:39:55', '1971-04-17 22:50:45');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (12, 12, 'Cum aut et aliquid ut est. Dolore nisi culpa numquam omnis animi doloremque. Dolores possimus minima alias unde qui. Quo reiciendis perspiciatis voluptatum voluptatum consequatur.', '2015-02-16 01:00:46', '1973-03-26 13:50:35', '1979-07-04 15:51:24');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (13, 13, 'Facilis modi hic non voluptatem et non. Et eveniet tempore enim ea alias itaque facilis. Sit placeat officiis sapiente facilis ea.', '1984-07-14 08:28:46', '1989-01-12 06:43:14', '1982-07-16 19:36:41');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (14, 14, 'Dolores sit est dignissimos voluptatem saepe nemo officiis. Illum autem impedit et voluptas ipsa. Qui assumenda porro reprehenderit voluptas hic iste.', '1983-03-17 23:35:41', '1981-09-23 10:03:15', '1987-02-13 06:55:23');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (15, 15, 'Debitis impedit corrupti est sit vitae. Officia tempore tenetur dolore accusantium expedita quia. Ex accusantium omnis quia odit repellat et. Doloribus doloribus dolore vel omnis et nam et labore.', '2014-10-12 00:43:11', '1982-03-01 23:42:05', '2017-02-20 18:17:31');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (16, 16, 'Eius dolores eveniet maiores. A vel inventore debitis quia nulla. Molestias totam accusamus quos sed mollitia quam harum.', '1998-09-23 03:50:51', '1975-01-11 03:32:13', '2009-07-05 21:22:34');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (17, 17, 'Autem eum voluptatem deserunt qui blanditiis. Voluptas aut odit voluptates reiciendis. Sed minus odit et ullam.', '2003-02-12 03:13:34', '2019-10-08 04:47:25', '2003-05-10 21:15:23');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (18, 18, 'Repellat enim impedit a rerum odio ipsum veniam enim. Expedita aut recusandae voluptas nobis sit delectus.', '1970-11-01 23:28:44', '2007-02-10 07:40:54', '2009-03-08 04:18:32');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (19, 19, 'Adipisci quis repellat voluptate quam. Quia voluptatem itaque explicabo et. Eligendi corrupti exercitationem qui aut vel modi excepturi laborum.', '1987-11-08 10:11:37', '2009-07-19 10:09:37', '1998-01-05 07:17:30');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (20, 20, 'Sint nam vitae omnis aut. Aut aut similique commodi placeat nisi sint. Sint quaerat nostrum molestiae. Molestias deserunt voluptatem ea earum voluptatem fugiat.', '2017-08-28 04:38:57', '1973-02-06 09:47:16', '2008-10-28 09:35:02');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (21, 21, 'Aperiam explicabo numquam quo autem ipsa cumque. Ut sed tenetur rerum qui sed voluptatem deleniti est. Ut in enim odio quis.', '2011-08-01 12:01:10', '2015-09-20 05:31:51', '1997-10-02 06:06:21');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (22, 22, 'Mollitia voluptatibus sunt facilis velit. Et inventore sed sit. Aut illum aut corrupti ipsum voluptas.', '2021-02-16 01:49:15', '1991-06-03 01:51:24', '2016-06-06 16:54:44');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (23, 23, 'Qui autem sequi soluta qui accusantium qui occaecati. Repudiandae eveniet repudiandae expedita doloremque provident officia. Distinctio corrupti praesentium aperiam molestiae cupiditate. Eveniet reprehenderit aut odio occaecati voluptatibus dolore doloremque nulla.', '2015-10-05 03:59:51', '2008-04-21 20:38:11', '2010-04-08 01:36:06');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (24, 24, 'Adipisci tenetur in et voluptate eos et omnis. Nemo et est reiciendis cumque corporis atque mollitia vero. Laborum nulla non cupiditate ullam qui.', '1973-09-17 12:17:15', '2010-05-17 19:59:57', '1977-07-04 17:39:17');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (25, 25, 'Omnis nihil quasi praesentium et dolorum ut. Sed ipsa laborum illo molestiae debitis et. Debitis aut et voluptatem. Et voluptate consequatur ipsa omnis quaerat.', '1991-12-13 01:09:31', '1991-01-04 21:56:43', '1982-08-20 04:23:15');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (26, 26, 'Illum non hic saepe vel harum. Ex et suscipit dolorem. Omnis eius reiciendis architecto sunt quidem ea incidunt.', '2014-08-05 00:58:27', '2000-08-01 06:31:10', '1986-08-09 22:33:13');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (27, 27, 'Laudantium nisi fugit dolorem qui tenetur est dignissimos. Quia quasi corporis consectetur dicta ratione voluptas sunt aut. Commodi quod iusto iure.', '2017-10-18 13:15:56', '2009-09-18 04:45:46', '2010-09-27 18:30:12');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (28, 28, 'Voluptas qui et sunt quisquam. Corrupti occaecati enim natus provident eligendi eveniet ipsum. Et porro assumenda rerum nulla vel neque.', '1981-06-15 05:30:58', '1992-07-26 11:18:52', '1973-01-05 06:32:08');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (29, 29, 'Ut vero expedita quod minus ut tempora consequuntur rerum. Et nostrum necessitatibus ut molestiae impedit nulla dolorem. Nihil commodi modi id alias distinctio id et.', '2002-06-05 17:53:03', '1971-07-01 14:06:04', '1975-06-06 07:47:49');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (30, 30, 'Reprehenderit minus tempora aspernatur accusamus doloremque repudiandae. Molestiae vel laudantium odio. Alias dolor placeat ad vel atque.', '1988-06-04 09:01:33', '2006-12-08 13:29:41', '1998-03-29 09:51:03');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (31, 31, 'Laudantium sint voluptates quia consequuntur aspernatur ipsum. Perspiciatis voluptatem tempore magnam repellendus et eligendi praesentium. Quasi enim quis qui sit voluptatem id. Rem necessitatibus occaecati omnis quam. Esse cumque fugiat et quidem repudiandae enim.', '2003-04-17 16:15:59', '1982-08-28 18:07:09', '1971-10-24 02:35:51');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (32, 32, 'Voluptatem architecto et a deserunt et consequatur voluptas. Quia vel recusandae saepe aliquam ut. Asperiores nemo et est maxime. Nihil nisi est non qui.', '2019-05-06 15:35:23', '2008-05-15 10:23:17', '1995-02-14 16:42:58');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (33, 33, 'Et qui sit similique eaque qui. Consequuntur perferendis enim nostrum praesentium natus veritatis laborum. Quia natus ut minus voluptas. Aspernatur itaque sed accusamus sunt unde molestias quod.', '1971-01-21 01:31:10', '1995-10-12 04:54:08', '1979-12-05 03:11:14');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (34, 34, 'Error non quod voluptatem quis sint ducimus. Qui explicabo eos voluptatem unde nesciunt voluptatem. Rerum voluptatum architecto accusamus ut odio optio est quo.', '2004-10-27 13:30:08', '2015-04-18 19:23:15', '2012-08-26 22:22:05');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (35, 35, 'Porro ab sint fugiat velit voluptatum. Modi totam nobis aut earum sint exercitationem. In quasi maiores quis qui.', '1984-03-23 16:21:37', '1982-10-18 17:59:19', '2014-03-17 21:30:15');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (36, 36, 'Qui fugiat aut adipisci et. Numquam autem quibusdam minima iusto ipsum mollitia. In sunt blanditiis tenetur placeat sapiente. Odio non sint non ut dignissimos.', '1996-01-06 13:46:11', '1993-02-25 10:00:54', '1975-07-12 00:36:44');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (37, 37, 'Est qui modi vero et et praesentium quaerat. Autem commodi occaecati quas tempore tempora odio. Sit corrupti consectetur delectus rerum. Corrupti a perspiciatis illum voluptate voluptatem.', '1983-07-31 19:53:36', '2000-12-28 04:47:40', '1984-03-16 20:50:19');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (38, 38, 'Quo aut numquam autem. Iste quo explicabo occaecati itaque est qui est. Animi itaque modi corporis voluptas qui. In voluptatem ut itaque.', '1992-07-29 07:18:50', '1991-03-20 20:34:11', '1990-04-24 20:29:51');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (39, 39, 'Amet accusamus odit magni delectus rerum. Alias amet voluptas ut nobis adipisci voluptas est.', '1992-05-29 00:23:55', '1974-04-12 19:35:40', '2011-12-18 02:21:14');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (40, 40, 'Eaque labore blanditiis sint non sequi. Incidunt tempore eaque perspiciatis aut. Aspernatur enim ab rerum ut.', '1996-02-20 22:54:37', '2016-10-31 11:23:36', '2016-01-04 21:39:57');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (41, 41, 'Sit consectetur vero voluptate consequatur cupiditate omnis. Eum et eveniet labore excepturi. Libero occaecati a accusamus sint nulla.', '1971-05-02 16:57:42', '2012-09-16 23:08:35', '2011-12-28 12:39:51');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (42, 42, 'Vitae et cupiditate et vero. Eius aut qui quas ut a qui voluptas quia. Sit maxime iure illum aliquid nihil sint consequatur. Magni alias eveniet voluptatum adipisci est recusandae aliquid.', '2001-09-21 14:14:31', '2004-05-12 08:47:17', '2007-07-04 08:00:02');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (43, 43, 'Id minima dignissimos et laborum aut. Consectetur eum blanditiis saepe ex quis iure et autem. Eveniet explicabo odio ea amet dolores illo natus. Corrupti eos dolor quae voluptatem. Est aut id aperiam consequatur excepturi sed illum facilis.', '2001-09-20 00:42:55', '2017-10-17 12:20:04', '1998-03-25 23:08:51');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (44, 44, 'Et eum qui rerum occaecati adipisci. Excepturi blanditiis praesentium nisi sit saepe aliquam expedita. Praesentium earum sunt est qui id et esse. Consequuntur dolore nostrum aut dicta tenetur officiis.', '1989-11-24 18:23:42', '1981-03-04 06:21:27', '1982-06-04 11:27:32');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (45, 45, 'Autem est quis velit aliquid. Doloremque et voluptates optio. Quia voluptatem dolores aut cumque velit. Vero velit nulla porro beatae et.', '2021-09-04 19:11:54', '1993-06-23 14:26:02', '2012-11-27 09:18:31');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (46, 46, 'Quis aut quia illo doloribus molestiae. Nostrum non alias enim qui vero. Aut voluptatem autem optio vel. Nobis quis corrupti repellendus ullam omnis quia.', '1992-04-25 10:03:50', '1973-08-14 06:50:25', '1979-06-22 20:30:06');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (47, 47, 'Est voluptas harum voluptatem reiciendis adipisci quam. Dolores et reprehenderit omnis ut blanditiis nesciunt. Soluta ipsa illo in.', '2021-08-21 14:23:40', '2011-01-16 13:26:47', '2014-05-16 19:10:10');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (48, 48, 'Molestias soluta velit quis animi eius aspernatur. Alias voluptas facere voluptatem. Consequuntur quisquam suscipit accusamus dolor ut quas placeat. Voluptatem dolores inventore autem odio.', '1993-04-23 11:01:06', '2006-03-22 12:41:39', '1999-07-24 22:20:30');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (49, 49, 'Ut possimus culpa aperiam officia ut numquam. Et eum est ex perferendis voluptatem. Ducimus quaerat ut voluptatem perspiciatis molestias ea.', '1980-03-09 03:09:37', '1976-12-17 19:25:17', '1990-12-01 18:36:55');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (50, 50, 'Voluptates odio adipisci voluptate occaecati ea neque. Maxime quas unde eos laudantium et earum dolores consequatur. Eum incidunt autem a ut minima mollitia facere et.', '1977-01-22 00:07:38', '1990-04-11 18:22:51', '2010-09-28 08:03:08');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (51, 51, 'Qui consequatur qui et delectus distinctio. Et sint ut ut iusto dignissimos. Ratione impedit quia molestiae molestiae similique dolorem molestiae dolor.', '2013-07-09 09:45:50', '2013-08-05 06:08:49', '2019-06-28 06:20:22');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (52, 52, 'Omnis et et consequatur dolores odit quibusdam. Accusantium enim voluptatem aut illum quam enim in.', '2007-03-07 14:42:30', '1987-06-05 11:07:41', '2004-08-13 04:03:37');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (53, 53, 'Voluptatibus mollitia eum aliquam sed ut. Quo ullam necessitatibus assumenda perferendis iste omnis mollitia repellendus. Fugiat ut ad hic laudantium. Aspernatur aut animi quos sapiente.', '1972-10-11 17:53:09', '2019-08-31 23:45:48', '1998-10-01 12:14:16');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (54, 54, 'Maiores dolores tempore ea excepturi. Qui cum sed dolores. Voluptate est quisquam explicabo est.', '2020-09-16 06:45:59', '1996-02-20 00:53:09', '1991-07-31 23:18:00');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (55, 55, 'Vel corporis id iste sed mollitia debitis. Sed cumque inventore nobis quia occaecati.', '1998-03-05 06:24:18', '2004-04-25 10:34:15', '2002-01-26 21:54:21');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (56, 56, 'Dignissimos voluptas adipisci consequatur maxime autem molestiae a. Ipsa maiores rem quibusdam sed architecto repudiandae non dignissimos. Incidunt inventore esse aut dicta non et sit eos. Maxime voluptates qui quae et ut cum quis.', '1992-05-03 12:28:59', '1991-11-23 19:45:24', '1991-03-05 12:38:45');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (57, 57, 'Tempora in tenetur iusto eaque doloribus et veniam. Est provident non excepturi numquam eius corporis ea pariatur.', '2008-07-01 08:40:42', '2010-04-22 18:11:10', '2011-06-06 10:12:47');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (58, 58, 'Nisi minus hic blanditiis et qui quo perferendis unde. Sit eligendi error hic quis corporis libero rerum. Quo porro quo dolores repellendus maiores.', '1975-04-26 23:00:13', '2003-08-13 01:52:22', '2003-06-26 17:08:37');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (59, 59, 'Reprehenderit velit natus sit voluptas qui qui. Non consectetur optio exercitationem consequuntur explicabo soluta. Ea neque aperiam at veritatis voluptatem id quae. Ut magnam perferendis exercitationem eaque quo dolorem sequi quasi.', '1995-02-15 13:00:21', '1976-08-01 16:40:28', '2008-03-19 06:05:29');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (60, 60, 'Rem aut temporibus sit modi hic est. Magni non aut dolorum sint non.', '1973-10-16 23:29:25', '1987-03-21 02:16:55', '1982-02-17 07:32:10');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (61, 61, 'Provident omnis fugiat voluptatem vitae in. Dolorum et minima id occaecati. Ipsam ipsam ab aut non consectetur nemo distinctio perspiciatis. Eum suscipit sit qui earum quis.', '1976-04-04 08:45:16', '1986-11-02 11:40:18', '1978-02-11 09:32:08');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (62, 62, 'Similique est et perferendis assumenda. Exercitationem odit dolorem non vel quas. Ut voluptatem eaque laborum doloremque qui. Quia optio sunt veritatis laboriosam. Unde eaque ullam unde tempora.', '1988-03-18 02:05:58', '1991-11-22 19:26:37', '1991-01-28 13:09:55');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (63, 63, 'Laborum harum nihil est ut est. Quia in qui dignissimos sed reprehenderit magnam at nam. Non et quod quas rem mollitia. Est magni molestias labore quam aut quas distinctio repellat.', '2004-02-19 13:12:19', '1994-04-30 20:39:36', '2019-01-09 12:15:24');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (64, 64, 'Est voluptas incidunt illum. Esse aut sunt assumenda. Iure hic vel dolorem qui illum et. Sint necessitatibus iure in cupiditate sapiente molestias.', '1980-07-14 18:31:31', '2007-04-23 06:35:57', '1983-08-03 23:49:55');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (65, 65, 'Commodi voluptas aut et voluptatem. Harum nemo et velit voluptatum tempore.', '2016-09-02 13:12:59', '1992-11-13 06:28:41', '2020-10-09 12:54:12');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (66, 66, 'Nulla vero architecto sed libero. Velit libero natus rerum vel quisquam. Voluptatem sequi incidunt sunt. Et optio sunt ea et. Quia occaecati nobis animi velit.', '1988-06-05 12:44:51', '2010-08-05 13:33:13', '1991-12-07 10:21:52');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (67, 67, 'Libero beatae dolore voluptas cupiditate alias. Sed molestiae ducimus iste earum iure. Maiores quo laudantium ut dolor voluptas soluta.', '1980-01-04 02:47:50', '2017-09-06 05:18:54', '1989-09-19 23:04:41');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (68, 68, 'Doloremque blanditiis velit doloribus voluptate consequuntur cum iusto. Nisi ea eaque enim et maxime dolores. Quia vero corporis ut saepe repudiandae voluptate. Delectus est laboriosam perferendis rem qui maxime doloribus. Placeat nemo animi error quia autem veritatis.', '2013-11-16 13:05:49', '1978-07-06 20:22:38', '2012-07-25 01:41:15');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (69, 69, 'Exercitationem natus et sunt libero. Qui pariatur quidem aut cumque. Et repellendus molestiae aperiam amet molestias exercitationem quidem.', '1995-03-20 13:07:15', '1994-11-11 21:04:53', '2015-02-20 15:45:15');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (70, 70, 'Sit tempora nulla eum impedit veritatis provident quibusdam. Et fuga deserunt reiciendis enim distinctio aut. Quibusdam tempore eveniet et ratione. Doloribus voluptatibus ut non sapiente.', '1997-01-01 15:37:05', '1971-02-20 18:05:25', '2003-02-09 21:02:40');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (71, 71, 'Non incidunt ut cupiditate est. Perspiciatis ab dolorum culpa ex sit dolore vel. Sequi vitae ea minus est consequatur libero.', '2003-07-24 18:47:35', '2020-04-30 16:24:10', '1984-01-20 22:15:48');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (72, 72, 'Totam fuga est consequatur reprehenderit est. Dignissimos mollitia amet quibusdam sit deserunt quia quidem. Et doloribus sit nihil asperiores minus. Eum perferendis distinctio id voluptas sit quibusdam vel sit.', '2002-07-05 18:09:33', '1985-09-29 11:30:12', '1995-05-03 06:08:19');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (73, 73, 'Et repudiandae commodi enim ut asperiores voluptatem saepe ducimus. Qui ea consequatur inventore sed. Vero libero illum quisquam. Est asperiores quas vero et quibusdam ea quam.', '1987-07-12 06:57:13', '2018-01-25 01:21:53', '2005-02-08 17:34:15');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (74, 74, 'Quia quaerat aliquid magni possimus et officiis ducimus eaque. Tempora et vitae nulla delectus eos dolores eos. Officiis magni tenetur voluptatibus libero quia quisquam consequatur.', '2016-10-13 11:40:11', '2011-03-16 14:11:59', '2007-07-16 17:06:19');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (75, 75, 'Natus culpa praesentium quia ratione quasi voluptatem. Libero eum laboriosam doloremque libero velit. Commodi voluptatem eos exercitationem nemo doloribus omnis occaecati. Non omnis molestias asperiores molestias.', '1997-05-06 09:49:22', '2016-05-11 19:12:10', '2002-10-09 17:51:04');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (76, 76, 'Qui commodi saepe incidunt ut est. Aperiam sint vel et mollitia ipsa autem. Cumque voluptas qui mollitia accusamus. Porro et nihil tempora repudiandae recusandae quis dolor. Rerum aut ex non assumenda.', '2012-07-01 10:59:21', '1976-06-12 07:40:44', '1987-07-08 13:19:18');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (77, 77, 'Error aliquid sint saepe eligendi ipsum maiores. Quasi placeat et reiciendis quo. Odit enim ut dolorum consequatur. Cumque dolores neque harum ut.', '1974-11-23 19:45:56', '2015-11-13 06:29:23', '1972-05-27 18:58:32');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (78, 78, 'Ipsa non corrupti nam tenetur quo esse. Nemo commodi repudiandae libero voluptatem exercitationem. Sint et qui reprehenderit commodi reprehenderit. Eum impedit eum quaerat sequi.', '1976-01-10 20:55:27', '1974-10-25 20:59:39', '1974-09-27 15:15:09');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (79, 79, 'Dolor consequuntur commodi qui consectetur ut ipsam ut. Ducimus aliquam deserunt velit quia molestiae aut. Dolorem repellat culpa aperiam reprehenderit dolores.', '2015-03-27 17:19:55', '1974-10-29 07:01:27', '1999-03-05 22:49:00');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (80, 80, 'Eos dolores explicabo et qui esse. Ducimus id sit vel illum et quos. Eaque est ducimus illum.', '2000-05-10 11:39:16', '2019-06-05 19:35:20', '1980-08-04 09:41:03');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (81, 81, 'Mollitia cumque qui corrupti esse quae consequatur sed. Quia tempora sed dolorem. Sapiente voluptates temporibus nam temporibus dicta rerum. Eos qui quidem velit similique.', '1996-05-08 08:55:37', '2002-03-28 12:54:11', '1994-04-09 03:26:16');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (82, 82, 'Repellendus quae sunt labore consectetur repellendus adipisci vero voluptate. Nemo beatae nihil reprehenderit sit. Omnis ut reprehenderit dolor eos doloremque et.', '2007-05-01 06:57:54', '1976-01-22 23:36:13', '1973-02-07 00:43:10');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (83, 83, 'Quis laboriosam fugiat et doloribus molestias. Dolor ab incidunt rem commodi vel. Id ullam est sint. Facilis ad explicabo maxime voluptatem suscipit fuga.', '2017-05-10 12:42:31', '2015-08-27 05:30:34', '1973-06-09 00:05:57');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (84, 84, 'Placeat sit repudiandae vel. Quasi expedita ullam quia quaerat et consequatur ut. Odio ratione reprehenderit quos.', '1993-12-22 08:06:25', '1981-08-21 00:53:29', '2009-12-02 01:33:06');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (85, 85, 'Qui molestiae non ex et eaque. Consectetur molestias provident saepe. Reprehenderit qui voluptatibus velit necessitatibus. Error doloribus voluptates earum odio commodi consequatur error.', '1988-06-20 15:53:44', '1982-12-04 01:45:59', '2009-12-30 08:21:58');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (86, 86, 'Modi quis cupiditate magni ratione veritatis doloribus. Quae ipsam tempore quia non sed laboriosam. Ut deleniti consequatur vitae. Dignissimos impedit voluptatem totam ab et doloribus provident.', '1995-01-19 02:23:33', '2015-09-05 04:08:10', '1991-07-20 13:24:29');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (87, 87, 'Sunt aspernatur numquam perferendis aut est et. Optio quisquam fuga officiis quis.', '2012-06-24 18:06:50', '1984-01-14 23:17:10', '1977-02-27 21:41:27');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (88, 88, 'Atque consequatur accusamus ut sint ut nobis quibusdam qui. Quis perferendis vel et distinctio. Ipsa voluptates rerum possimus nobis quam. Voluptatem cupiditate labore non fuga autem deleniti dicta ut.', '1971-04-15 01:12:04', '1992-08-23 12:55:15', '2004-04-23 23:07:17');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (89, 89, 'Animi at natus dolor ex. Possimus vero laudantium accusamus provident laborum rerum laborum est. Tempore tenetur hic esse.', '1999-07-06 22:16:05', '2000-11-22 06:24:05', '2007-07-26 19:33:25');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (90, 90, 'Sunt distinctio asperiores porro consequatur ducimus iure hic. Veniam voluptatum incidunt soluta labore quis temporibus modi. Dolore et dolorum explicabo.', '2011-01-16 22:42:27', '1979-12-31 14:04:30', '2000-05-18 13:13:19');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (91, 91, 'Provident numquam ut repudiandae dolore inventore saepe aspernatur. Aspernatur ipsum cumque consequatur id aut. Pariatur sed et vero enim deserunt distinctio. Aut dolorem voluptatem doloremque ipsum in.', '1978-10-24 20:11:12', '1982-11-26 06:39:54', '2005-02-27 17:58:19');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (92, 92, 'Dolor provident enim quam ut enim cumque. Voluptas corrupti porro culpa adipisci. Sunt perspiciatis odit quae tempora. Nemo sed dignissimos rerum velit id.', '2005-09-26 02:11:16', '1975-06-17 20:44:22', '2006-10-31 18:48:56');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (93, 93, 'Quis deserunt pariatur quia magni ut non aut. Expedita ut laboriosam soluta mollitia in aut repellat. Molestias est ad soluta placeat voluptas et.', '2001-11-02 15:09:33', '1975-02-16 20:21:32', '2017-01-08 02:11:12');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (94, 94, 'Et mollitia rerum ipsa cum eligendi est. Consequatur corporis repellat ut vero laboriosam repellat sapiente repudiandae.', '1987-01-13 09:33:32', '1995-02-19 06:43:04', '2007-11-23 21:24:16');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (95, 95, 'Eveniet velit similique est quam. Autem recusandae perferendis aperiam odit aperiam quisquam est consequatur. A et quibusdam laborum eum enim aut suscipit qui.', '1992-10-08 11:13:19', '1994-12-26 17:00:54', '2000-04-09 06:30:28');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (96, 96, 'Qui corporis assumenda dolorem non cumque in. Quibusdam voluptatum facere voluptatem nihil molestiae. Sed tempora autem animi quia sint.', '2021-08-07 23:07:20', '1977-02-20 00:40:35', '1990-09-13 18:00:02');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (97, 97, 'Dolore quis totam consequatur quasi quidem. Voluptatem praesentium esse corporis repellendus deleniti similique. Corporis consequatur odio vitae veniam voluptatem incidunt qui sit.', '1995-11-15 20:24:05', '2018-05-06 15:15:29', '1971-08-20 00:10:57');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (98, 98, 'Quo libero commodi soluta molestiae. Quia iste consequatur dolor ut quisquam.', '1990-03-06 17:32:54', '1970-09-15 15:32:38', '1981-03-04 21:24:59');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (99, 99, 'Dolores odit id quis ipsa ut explicabo sed. Quasi harum sit molestiae officia aut minima est. Reprehenderit debitis officiis ut omnis sed.', '1970-10-19 03:34:34', '2006-08-19 23:33:30', '1979-05-24 22:48:28');
INSERT INTO `partner_reviews` (`id`, `partner_id`, `body`, `created_on`, `created_at`, `updated_at`) VALUES (100, 100, 'Quia recusandae molestiae qui enim optio necessitatibus distinctio. Ducimus consectetur assumenda eius omnis explicabo tenetur. Voluptatem cupiditate dolor voluptatem vero aut voluptatem nobis.', '2008-01-31 03:35:16', '2014-04-16 16:13:37', '1975-03-15 03:02:24');


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
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (11, 'perspiciatis', '', '101900955.6', '', 'http://www.howebailey.com/', '1981-09-19 11:43:43', '1986-10-07 01:52:20');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (12, 'maiores', '', '492965.869', '', 'http://www.robelthiel.com/', '1975-01-07 16:21:40', '1985-10-29 16:17:51');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (13, 'est', '', '342441.8424', '', 'http://www.dubuque.info/', '2000-01-02 22:26:34', '2012-04-30 10:00:05');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (14, 'pariatur', '', '11224191.772366', '', 'http://www.wilderman.org/', '1998-04-04 06:46:38', '1981-10-24 23:59:50');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (15, 'ut', '', '372226.1354', '', 'http://www.lebsacktromp.com/', '1997-12-12 12:41:20', '2012-08-18 02:52:47');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (16, 'animi', '', '2.92773219', '', 'http://mcdermottbogan.com/', '2013-08-31 16:40:01', '2012-12-20 09:27:37');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (17, 'est', '', '4164895.844846', '', 'http://www.gradydaniel.net/', '2006-12-21 07:39:42', '2006-12-18 05:35:27');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (18, 'quam', '', '9914824.16457', '', 'http://kuvalis.com/', '2004-06-09 13:21:33', '1998-05-03 10:30:34');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (19, 'atque', '', '', '', 'http://stracke.com/', '1982-08-06 09:29:28', '2005-10-10 05:57:33');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (20, 'quis', '', '', '', 'http://bruenschuppe.com/', '2007-07-02 18:37:16', '1984-02-19 03:48:50');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (21, 'explicabo', '', '9104.678166', '', 'http://marvin.com/', '2003-05-18 02:33:40', '2010-02-19 02:17:16');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (22, 'vel', '', '', '', 'http://www.rosenbaum.info/', '1996-04-10 23:30:48', '2008-06-05 17:01:04');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (23, 'dolorem', '', '2.909', '', 'http://www.altenwerth.biz/', '2007-06-12 11:49:13', '1997-12-21 15:32:26');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (24, 'qui', '', '45.39979', '', 'http://www.schowalterruecker.net/', '1979-02-14 00:01:49', '2012-09-11 11:45:05');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (25, 'sequi', '', '5189507.936', '', 'http://www.langosh.com/', '2001-08-23 23:02:10', '1972-03-02 23:21:42');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (26, 'porro', '', '74478.08208', '', 'http://kohlergoyette.biz/', '1971-06-27 05:06:32', '1970-08-06 12:39:55');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (27, 'ea', '', '6532.0316937', '', 'http://www.kuhlman.com/', '1980-03-27 06:50:01', '2012-09-09 23:39:03');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (28, 'aut', '', '0.3', '', 'http://www.hamill.com/', '2010-08-28 13:29:31', '2007-05-28 01:34:36');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (29, 'soluta', '', '3569611.219', '', 'http://www.gutkowski.com/', '1989-08-07 07:47:27', '1974-01-20 20:25:31');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (30, 'cupiditate', '', '4.08', '', 'http://schaden.net/', '1978-08-06 08:03:05', '2018-11-25 21:11:51');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (31, 'perspiciatis', '', '7.6765523', '', 'http://weimannyost.com/', '2017-02-20 11:23:23', '1973-01-29 15:17:57');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (32, 'exercitationem', '', '111909.9', '', 'http://www.kiehn.com/', '2018-10-28 14:05:45', '1981-04-10 19:40:55');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (33, 'est', '', '7874.3723', '', 'http://lemkeweber.com/', '2017-09-04 22:34:24', '2006-07-18 17:39:31');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (34, 'corporis', '', '', '', 'http://kreigerlesch.com/', '1983-02-26 08:14:05', '2009-02-03 18:10:07');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (35, 'consequatur', '', '10', '', 'http://www.hamillnader.com/', '1987-07-04 11:44:00', '1991-05-28 03:06:03');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (36, 'soluta', '', '60337598.18', '', 'http://www.breitenberg.org/', '2019-05-19 01:42:48', '2006-05-24 13:25:54');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (37, 'ipsa', '', '7879713.003762', '', 'http://johns.com/', '1973-07-09 01:47:00', '1995-12-06 15:26:42');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (38, 'sed', '', '25.1', '', 'http://jacobs.com/', '1999-09-29 18:39:12', '1995-06-15 07:16:47');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (39, 'officia', '', '399029.04099398', '', 'http://schaeferleuschke.com/', '1970-03-24 01:42:31', '1977-09-22 16:41:38');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (40, 'sint', '', '1', '', 'http://www.conn.com/', '2000-01-24 20:50:09', '1997-03-14 23:46:18');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (41, 'ratione', '', '171126253.99', '', 'http://www.macejkovic.com/', '2008-01-27 20:44:16', '2021-02-10 15:54:22');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (42, 'facilis', '', '864142310.37212', '', 'http://mclaughlin.org/', '1977-11-11 11:42:59', '1975-07-23 10:13:10');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (43, 'ipsum', '', '97466.5', '', 'http://torp.com/', '1979-12-20 17:52:38', '1999-09-17 05:40:52');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (44, 'numquam', '', '543.028', '', 'http://konopelskilind.net/', '2011-05-18 22:09:57', '1996-01-09 16:01:07');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (45, 'placeat', '', '2090703.92', '', 'http://kreigerhudson.info/', '1983-09-28 19:31:19', '2019-12-07 19:11:57');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (46, 'non', '', '3.334683118', '', 'http://www.buckridge.net/', '2013-12-08 13:21:36', '1995-04-02 21:20:36');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (47, 'molestiae', '', '23328', '', 'http://www.boyle.com/', '1980-07-24 19:28:39', '1986-07-01 11:21:16');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (48, 'tenetur', '', '2010.88168644', '', 'http://www.koepp.com/', '2002-03-02 00:09:57', '1988-10-18 05:53:11');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (49, 'aut', '', '', '', 'http://www.pfefferturcotte.com/', '2010-11-06 09:56:29', '1979-03-20 01:04:54');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (50, 'dolore', '', '', '', 'http://www.zulaufpurdy.net/', '1984-05-26 16:39:57', '1992-12-20 19:26:24');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (51, 'corrupti', '', '384583.5', '', 'http://balistrerilarson.com/', '1978-09-16 20:27:23', '2011-09-13 13:40:44');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (52, 'praesentium', '', '2.391694', '', 'http://welch.com/', '1981-07-17 22:02:07', '2008-03-21 15:09:10');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (53, 'id', '', '23890.0098212', '', 'http://crooksfay.net/', '2000-06-20 15:10:47', '1973-08-08 05:40:01');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (54, 'ipsum', '', '', '', 'http://www.homenick.net/', '2009-01-19 00:24:59', '1990-04-18 15:46:21');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (55, 'sed', '', '191.62', '', 'http://www.stokeskonopelski.com/', '2000-03-11 04:30:27', '1989-04-29 13:03:04');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (56, 'est', '', '138', '', 'http://aufderharpfeffer.com/', '1987-12-19 22:41:16', '2002-03-29 17:47:21');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (57, 'incidunt', '', '1.84615266', '', 'http://www.turcotte.com/', '1997-02-19 08:19:19', '2010-10-13 23:27:02');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (58, 'amet', '', '3.64', '', 'http://www.gaylord.com/', '1975-01-22 12:12:32', '1989-08-22 11:38:55');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (59, 'sunt', '', '', '', 'http://www.schillerkoepp.com/', '1984-09-08 08:06:26', '1995-05-09 05:59:40');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (60, 'ullam', '', '32312052.17', '', 'http://www.wyman.com/', '1987-01-23 17:42:18', '1990-11-09 09:18:22');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (61, 'voluptas', '', '230.733', '', 'http://www.doyledaniel.org/', '2002-03-15 17:28:57', '2009-03-17 20:06:52');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (62, 'aut', '', '54779499.953752', '', 'http://www.marquardt.info/', '2006-03-06 09:56:17', '2003-01-13 23:35:56');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (63, 'voluptate', '', '3711.5', '', 'http://greenfelder.com/', '1986-05-12 21:57:34', '1984-12-15 20:12:58');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (64, 'aut', '', '83476136.1944', '', 'http://www.stantonoconner.org/', '2009-10-06 00:50:18', '1990-04-13 19:13:16');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (65, 'recusandae', '', '602388.695', '', 'http://www.greenfelder.com/', '1982-07-15 02:30:02', '2011-10-03 10:53:35');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (66, 'dolorem', '', '102.4438', '', 'http://oreilly.com/', '2018-09-22 18:02:14', '1981-03-27 03:12:44');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (67, 'dolores', '', '735.47516386', '', 'http://www.romaguera.com/', '1989-04-10 04:55:31', '2003-03-17 16:37:38');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (68, 'sint', '', '5.71100035', '', 'http://www.dickiking.com/', '1991-04-06 15:08:34', '1998-03-02 06:19:41');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (69, 'quod', '', '25.97', '', 'http://www.sanfordschaden.com/', '2002-06-25 18:02:56', '1971-01-11 06:53:20');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (70, 'eligendi', '', '3049940.8', '', 'http://mclaughlin.biz/', '1994-02-14 03:50:44', '1976-04-30 16:10:55');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (71, 'aliquid', '', '5074.8876', '', 'http://adams.com/', '2007-11-24 11:23:01', '1988-03-29 16:37:33');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (72, 'corporis', '', '0.0232025', '', 'http://ratke.biz/', '1986-06-28 23:40:31', '2010-04-25 10:01:52');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (73, 'repellendus', '', '37.368', '', 'http://www.hauck.net/', '2012-09-28 11:43:38', '2010-06-30 05:48:29');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (74, 'et', '', '466688.073', '', 'http://mertzorn.org/', '1988-01-04 08:27:53', '2005-01-07 05:14:11');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (75, 'qui', '', '', '', 'http://www.reichel.com/', '1977-07-25 14:31:47', '2018-03-06 21:06:37');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (76, 'tempore', '', '2.8522', '', 'http://www.stehr.com/', '1999-04-01 08:05:54', '1993-01-04 09:13:58');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (77, 'consequatur', '', '308.031839516', '', 'http://adamsgibson.com/', '2007-03-02 19:21:56', '1990-03-09 05:42:01');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (78, 'quis', '', '6.47714', '', 'http://thiel.org/', '1986-10-30 00:25:50', '1982-03-02 13:21:49');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (79, 'sed', '', '2393474.34254', '', 'http://goldnermuller.com/', '2021-05-16 07:28:44', '1980-07-07 01:20:39');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (80, 'fugiat', '', '57.2746488', '', 'http://www.dach.biz/', '1985-09-10 08:52:20', '1980-06-07 12:47:55');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (81, 'molestiae', '', '', '', 'http://www.oberbrunner.net/', '2007-12-19 18:54:44', '2005-04-27 04:59:20');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (82, 'sequi', '', '', '', 'http://www.aufderhargulgowski.com/', '1978-04-16 01:05:29', '2009-11-23 08:23:41');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (83, 'molestias', '', '21528.1084915', '', 'http://sanford.biz/', '2016-09-29 22:50:42', '2007-06-25 15:28:14');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (84, 'dolores', '', '109201.2', '', 'http://howellondricka.biz/', '1990-01-22 18:46:53', '2017-11-08 23:38:23');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (85, 'maxime', '', '1', '', 'http://www.carrolljacobi.com/', '1978-09-09 05:37:04', '2002-09-24 06:07:27');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (86, 'mollitia', '', '729.42139303', '', 'http://turnerschaden.net/', '1984-11-01 19:06:30', '2019-06-29 22:40:50');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (87, 'ut', '', '2878914.9', '', 'http://www.schneider.org/', '2012-11-16 07:10:43', '2009-09-23 00:51:08');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (88, 'velit', '', '', '', 'http://goldner.info/', '2018-10-09 19:35:28', '1981-07-14 23:44:34');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (89, 'quam', '', '5465798.8281845', '', 'http://klein.info/', '1976-08-23 15:45:31', '1977-06-29 23:52:41');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (90, 'sint', '', '1434292.9976143', '', 'http://www.sporer.com/', '2015-09-16 01:14:07', '2001-10-25 01:45:07');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (91, 'dolor', '', '0.48', '', 'http://koepp.org/', '1973-12-07 08:00:43', '2005-12-30 05:41:32');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (92, 'qui', '', '22.196523615', '', 'http://bergnaumhickle.com/', '2015-03-16 01:53:30', '1971-10-06 12:49:25');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (93, 'fugiat', '', '66035.367816', '', 'http://www.roob.com/', '2003-06-25 10:25:09', '2016-11-19 01:07:40');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (94, 'nam', '', '12.984', '', 'http://langhaley.biz/', '1975-04-28 00:49:27', '2015-07-26 02:08:30');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (95, 'placeat', '', '2752.05391691', '', 'http://parisianlynch.com/', '1996-10-03 19:54:01', '1977-08-21 09:48:34');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (96, 'et', '', '58977165.67', '', 'http://upton.com/', '2002-12-03 14:39:52', '2020-07-10 07:02:43');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (97, 'rerum', '', '5512', '', 'http://yostdach.info/', '2015-08-29 11:24:59', '1999-05-11 20:57:14');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (98, 'eaque', '', '357979', '', 'http://www.ward.org/', '1979-09-06 05:06:19', '2001-09-06 01:46:06');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (99, 'voluptates', '', '46503.505746', '', 'http://www.crona.com/', '2020-03-01 14:54:43', '2016-04-23 19:52:15');
INSERT INTO `partners` (`id`, `name`, `offer`, `min_cost_offer`, `discription`, `link`, `created_at`, `updated_at`) VALUES (100, 'minus', '', '113676619.2', '', 'http://www.moen.com/', '1993-02-11 20:36:03', '1979-06-09 02:17:01');


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
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (155, 11, 11, '1982-08-16 22:22:53', '1976-07-25 20:02:06', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (156, 12, 12, '1972-07-14 14:37:55', '1976-07-07 18:31:28', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (157, 13, 13, '2006-07-16 10:55:29', '2018-03-03 11:21:53', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (158, 14, 14, '1975-05-17 22:46:25', '2019-12-24 17:01:04', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (159, 15, 15, '1999-05-16 03:00:46', '1978-09-27 23:00:11', 4);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (160, 16, 16, '1982-10-30 08:55:22', '1990-12-23 20:32:28', 4);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (161, 17, 17, '2005-02-09 03:46:45', '2016-06-13 12:44:46', 4);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (162, 18, 18, '1979-05-11 08:32:42', '2013-07-18 16:05:39', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (163, 19, 19, '1994-08-10 22:43:08', '1998-08-29 12:34:32', 5);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (164, 20, 20, '1978-07-05 01:38:05', '1993-05-08 08:53:35', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (165, 21, 21, '1986-11-03 08:20:31', '1990-04-08 06:17:39', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (166, 22, 22, '1974-11-06 23:47:18', '1994-09-30 18:10:42', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (167, 23, 23, '2019-06-24 07:48:24', '2003-08-09 07:06:24', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (168, 24, 24, '1997-04-06 23:52:25', '1972-05-14 16:36:33', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (169, 25, 25, '2016-05-19 21:13:46', '2004-03-26 07:20:14', 2);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (170, 26, 26, '1982-12-03 13:35:13', '1999-02-09 03:15:26', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (171, 27, 27, '2012-02-09 10:24:13', '1999-02-01 08:59:43', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (172, 28, 28, '1976-10-18 13:10:29', '1980-03-25 13:33:15', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (173, 29, 29, '2003-09-29 03:36:34', '1971-12-21 20:57:04', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (174, 30, 30, '2019-06-06 01:03:37', '1981-07-12 09:13:25', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (175, 31, 31, '1998-11-17 09:21:30', '2014-03-05 06:43:40', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (176, 32, 32, '1976-02-15 09:08:37', '2003-03-15 16:06:23', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (177, 33, 33, '2007-10-30 07:43:35', '1992-10-14 19:13:27', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (178, 34, 34, '1982-03-01 01:28:56', '2000-09-12 15:52:44', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (179, 35, 35, '1977-11-06 08:27:16', '1975-10-26 18:21:47', 2);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (180, 36, 36, '1975-01-31 17:16:49', '1983-09-26 19:46:13', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (181, 37, 37, '1984-07-04 22:18:19', '2012-03-31 12:07:59', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (182, 38, 38, '1970-06-22 11:51:01', '1999-03-31 17:10:41', 6);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (183, 39, 39, '1978-08-20 13:40:58', '1995-07-12 08:53:22', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (184, 40, 40, '1988-12-19 19:17:20', '2017-11-07 21:16:05', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (185, 41, 41, '2015-04-11 10:53:26', '1986-04-04 04:54:06', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (186, 42, 42, '1975-07-22 06:42:01', '2018-06-04 10:56:07', 2);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (187, 43, 43, '2019-01-12 04:27:01', '2010-06-25 05:55:13', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (188, 44, 44, '1978-08-02 19:40:02', '1993-04-24 11:27:19', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (189, 45, 45, '2002-09-08 02:38:55', '1992-08-24 13:14:12', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (190, 46, 46, '1970-01-05 14:08:11', '1973-02-19 18:02:57', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (191, 47, 47, '2006-05-12 13:26:25', '1987-08-27 13:01:01', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (192, 48, 48, '1986-10-09 18:59:06', '2016-04-04 18:14:22', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (193, 49, 49, '1976-02-08 06:17:39', '2021-07-26 03:09:14', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (194, 50, 50, '1973-04-27 01:53:28', '2017-02-14 03:00:57', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (195, 51, 51, '1975-09-24 20:54:54', '1982-12-12 03:43:32', 6);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (196, 52, 52, '1971-05-17 14:17:05', '1983-12-18 11:08:42', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (197, 53, 53, '2001-03-30 13:21:04', '1979-02-15 04:10:20', 9);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (198, 54, 54, '1978-07-21 04:10:21', '1999-01-15 10:44:03', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (199, 55, 55, '2014-10-06 17:34:41', '2011-02-26 16:11:51', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (200, 56, 56, '1972-09-02 19:21:26', '2014-06-20 13:03:30', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (201, 57, 57, '1984-03-26 10:37:54', '1998-11-17 19:09:29', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (202, 58, 58, '1986-01-20 13:15:37', '2000-09-14 15:09:52', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (203, 59, 59, '2011-09-23 11:15:28', '1997-02-26 07:53:33', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (204, 60, 60, '1988-09-06 19:35:39', '2015-09-25 04:23:28', 7);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (205, 61, 61, '2015-10-07 07:51:20', '1987-01-29 04:45:47', 1);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (206, 62, 62, '1995-08-12 13:44:47', '1985-04-23 23:04:15', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (207, 63, 63, '1982-09-03 09:21:28', '1978-05-23 06:41:07', 6);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (208, 64, 64, '1976-04-30 23:05:16', '1977-01-09 19:12:59', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (209, 1, 65, '1973-06-09 20:22:12', '2014-11-18 18:31:55', 8);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (210, 2, 66, '2019-03-05 00:04:58', '2019-12-11 00:38:55', 0);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (211, 3, 67, '1995-12-17 10:49:53', '1977-12-14 07:46:01', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (212, 4, 68, '2014-11-30 05:12:40', '1981-12-13 14:45:51', 6);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (213, 5, 69, '1987-02-08 00:06:48', '1971-01-14 16:29:32', 3);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (214, 6, 70, '2021-03-30 04:54:57', '2006-10-23 12:31:29', 5);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (215, 7, 71, '1985-01-20 09:25:20', '1994-11-04 20:55:30', 5);
INSERT INTO `partners__categories` (`id`, `category_id`, `partner_id`, `created_at`, `updated_at`, `best_ml_model_id`) VALUES (216, 8, 72, '1984-01-22 05:59:57', '2019-02-26 07:14:29', 5);


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


