USE vk;

CREATE TABLE `likes_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� �����',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '�������� ���� ������� ��� �����',
  `created_at` datetime DEFAULT current_timestamp() COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� �����',
  `user_id` int unsigned NOT NULL COMMENT '������������� ������������ users',
  `likes_types_id` int unsigned NOT NULL COMMENT '������������� ���� ������� ��� ������',
  `created_at` datetime DEFAULT current_timestamp() COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  CONSTRAINT `likes_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_likes_types_id` FOREIGN KEY (`likes_types_id`) REFERENCES `likes_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE users ADD CONSTRAINT �heck_phone CHECK (REGEXP_LIKE(phone, '^\\+7[0-9]{10}$')) ;


CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '������������� �����',
  `user_id` int unsigned NOT NULL COMMENT '������������� ������������ users',
  `media_id` int unsigned NOT NULL COMMENT '������������� ���� ������� ��� ������',
  `title` varchar(512) NOT NULL COMMENT "�������� �����",
  `body` varchar(4096) NOT NULL COMMENT "���� �����",
  `created_at` datetime DEFAULT current_timestamp() COMMENT '����� �������� ������',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '����� ���������� ������',
  PRIMARY KEY (`id`),
  CONSTRAINT `posts_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;