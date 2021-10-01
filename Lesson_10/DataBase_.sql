DROP DATABASE IF EXISTS RecSbSpas;
CREATE DATABASE RecSbSpas;
USE RecSbSpas;


CREATE TABLE `ml_models` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `name` varchar(255) NOT NULL COMMENT '��������',
  `body` json DEFAULT NULL COMMENT '�������� ��������� ������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

CREATE TABLE `options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '��������',
  `value_str` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '�������� ������',
  `value_int` int DEFAULT '0' COMMENT '�������� �����',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

CREATE TABLE `partners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '�������� ��������',
  `offer` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '�������� ��������',
  `min_cost_offer` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '�������� ��������',
  `discription` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '�������� ��������',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL ������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`)
);

CREATE TABLE `table_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '������������� �������� ���� ���������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `table_category_id` int unsigned NOT NULL COMMENT '������������� �������� ���� ���������',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '������������� �������� ���� ���������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  KEY `type_category_table_category_id` (`table_category_id`),
  CONSTRAINT `type_category_table_category_id` FOREIGN KEY (`table_category_id`) REFERENCES `table_categories` (`id`)
);

CREATE TABLE `ml_models_hyperparameters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `name` varchar(255) NOT NULL COMMENT '�������� ��������������',
  `value` json DEFAULT NULL COMMENT '������������� ������',
  `ml_model_id` int unsigned NOT NULL COMMENT '������������� ������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ml_models_hyperparameters__ml_model_id` (`ml_model_id`),
  CONSTRAINT `ml_models_hyperparameters__ml_model_id` FOREIGN KEY (`ml_model_id`) REFERENCES `ml_models` (`id`)
);

CREATE TABLE `ml_models_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `name` varchar(255) NOT NULL COMMENT '��������',
  `value` json DEFAULT NULL COMMENT '�������� ������',
  `ml_model_id` int unsigned NOT NULL COMMENT '������������� ������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ml_models_options__ml_model_id` (`ml_model_id`),
  CONSTRAINT `ml_models_options__ml_model_id` FOREIGN KEY (`ml_model_id`) REFERENCES `ml_models` (`id`)
);

CREATE TABLE `partner_product_categoris` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `partner_id` int unsigned NOT NULL COMMENT '������������� ��������',
  `name` varchar(255) NOT NULL COMMENT '�������� ��������� ���������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  KEY `partner_product_categoris__partner_id` (`partner_id`),
  CONSTRAINT `partner_product_categoris__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);

CREATE TABLE `partner_profile` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `partner_id` int unsigned NOT NULL COMMENT '������������� ��������',
  `address` json DEFAULT NULL COMMENT '������ ��������',
  `summary_description` varchar(4096) DEFAULT '' COMMENT '����� �������� ��������',
  `created_on` datetime DEFAULT NULL COMMENT '���� ��������',
  `min_cost_product` decimal(10,0) DEFAULT '0' COMMENT '����������� ���� ���������',
  `max_cost_product` decimal(10,0) DEFAULT '0' COMMENT '������������ ���� ���������',
  `avg_cost_product` decimal(10,0) DEFAULT '0' COMMENT '������� ���� ���������',
  `mod_cost_product` decimal(10,0) DEFAULT '0' COMMENT '���� ���� ���������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  KEY `partner_profile__partner_id` (`partner_id`),
  CONSTRAINT `partner_profile__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);

CREATE TABLE `partner_reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `partner_id` int unsigned NOT NULL COMMENT '������������� ��������',
  `body` varchar(2048) NOT NULL DEFAULT '' COMMENT '����� � ��������',
  `created_on` datetime DEFAULT NULL COMMENT '���� �������� ������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  KEY `partner_cat__partner_id` (`partner_id`),
  CONSTRAINT `partner_cat__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);

CREATE TABLE `partners__categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� ������',
  `category_id` int unsigned NOT NULL COMMENT '������������� ���� ���������',
  `partner_id` int unsigned NOT NULL COMMENT '������������� �������� ���� ���������',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
  `best_ml_model_id` int unsigned DEFAULT NULL COMMENT '������������� ������ ������',
  PRIMARY KEY (`id`),
  KEY `partners_categories__category_id` (`category_id`),
  KEY `partners_categories__partner_id` (`partner_id`),
  CONSTRAINT `partners_categories__category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `partners_categories__partner_id` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`)
);