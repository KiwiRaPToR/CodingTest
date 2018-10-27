-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------


-- Dumping database structure for codingtest
CREATE DATABASE IF NOT EXISTS `codingtest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `codingtest`;

-- Dumping structure for table codingtest.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table codingtest.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2014_10_12_000000_create_users_table', 1),
	(14, '2014_10_12_100000_create_password_resets_table', 1),
	(15, '2018_10_27_054056_create_tasks_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table codingtest.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table codingtest.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table codingtest.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Test One', 'test1@test.com', NULL, '$2y$10$/cNBPIBoI0O3H2Op6gIM5Ov6aVxWyOIba9EXxxIfKXWD4v0tEH.hK', 'ojcCBK37o6tUDyRoswt6w4oHEFJeX193OixoGNynWn3jgdN9oYFwEiRiG22d', '2018-10-27 20:47:28', '2018-10-27 20:47:28'),
	(2, 'Test Two', 'test2@test.com', NULL, '$2y$10$wSb6UsiQjzQ0cqZvNkNnHe5xpTlkE6tcjuKwjQ0/PFsl4GUOy.k.G', 'XxBI1mc6ZlitmFZ6JdK5fnFUk93K8h63o6HvTS0NAFDTFwZWTbNCsEhOGxFU', '2018-10-27 20:47:42', '2018-10-27 20:47:42'),
	(3, 'Test Three', 'test3@test.com', NULL, '$2y$10$xINLB0ZBquiy8Bc13qIbMOAeZPFwqU6NRnOb5zPFiszbjHK5Lb/Va', 'gUnw5VmTat5svtLlzM5eHNhs09nvneQJzzwtjfwcDjVvbcxR997embsfVSfl', '2018-10-27 20:47:52', '2018-10-27 20:47:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_user_id_foreign` (`user_id`),
  CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table codingtest.tasks: ~0 rows (approximately)
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`id`, `user_id`, `title`, `is_complete`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Et sint eaque sed.', 1, '2018-10-27 20:47:58', '2018-10-28 00:10:19'),
	(2, 1, 'Sunt ut cum tempore.', 1, '2018-10-27 20:47:58', '2018-10-28 00:12:33'),
	(3, 1, 'Omnis est quam possimus.', 1, '2018-10-27 20:47:58', '2018-10-28 01:00:18'),
	(4, 1, 'Ad expedita corrupti cupiditate asperiores nisi officiis.', 1, '2018-10-27 20:47:58', '2018-10-28 09:16:18'),
	(5, 1, 'Et ut dolor eos ratione quod est.', 1, '2018-10-27 20:47:58', '2018-10-28 09:19:13'),
	(6, 1, 'Expedita quia sit molestiae quos.', 1, '2018-10-27 20:47:58', '2018-10-28 09:20:35'),
	(7, 1, 'Iusto qui accusantium consequatur temporibus.', 1, '2018-10-27 20:47:58', '2018-10-28 09:22:32'),
	(8, 1, 'Dolor et dolores saepe dolorem accusamus.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(9, 1, 'Aut quae culpa eius occaecati.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(10, 1, 'Autem officiis vel aspernatur hic enim.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(11, 2, 'Tempora autem dolorum fuga consectetur ab vero.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(12, 2, 'Quod vitae itaque sit doloremque velit error.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(13, 2, 'Et quae ducimus non qui et.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(14, 2, 'Voluptatem voluptatem iure temporibus illum mollitia eveniet.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(15, 2, 'Quis amet et sed minus.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(16, 2, 'Neque architecto quibusdam similique iusto.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(17, 2, 'Magni id mollitia aperiam sunt recusandae deserunt numquam illum.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(18, 2, 'Officiis nihil ea qui dolorem.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(19, 2, 'In itaque quis dolores vel natus sed.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(20, 2, 'Mollitia enim id harum dolores labore ad.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(21, 2, 'Nostrum soluta omnis illum aut.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(22, 2, 'Corrupti et vitae omnis corporis saepe atque quibusdam.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(23, 2, 'Illum consequatur odio aut consequatur mollitia.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(24, 2, 'Cupiditate eum atque dolorum inventore laborum ut.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(25, 2, 'Inventore omnis et aut id sit pariatur non.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(26, 2, 'Odit voluptas dicta nobis ut labore atque.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(27, 2, 'Et illum accusamus officiis molestias aliquid.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(28, 2, 'Voluptatem est ipsa sit corporis.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(29, 2, 'Et nemo assumenda ut dolorem aut enim numquam.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(30, 3, 'Fugiat deleniti possimus laborum pariatur ullam vitae modi est.', 1, '2018-10-27 20:47:58', '2018-10-28 01:16:49'),
	(31, 3, 'Dolore perferendis ullam asperiores dicta quia.', 1, '2018-10-27 20:47:58', '2018-10-28 01:16:50'),
	(32, 3, 'Rerum necessitatibus necessitatibus dolores.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(33, 3, 'Impedit harum laboriosam culpa voluptatem in hic.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(34, 3, 'Repellat molestiae saepe et aut quis autem dolorem.', 1, '2018-10-27 20:47:58', '2018-10-28 01:16:54'),
	(35, 3, 'Dicta quidem non dolor itaque sed.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(36, 3, 'Quia ea assumenda neque veritatis.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(37, 3, 'Laudantium distinctio error sed debitis ut mollitia pariatur et.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(38, 3, 'Et deserunt velit fugiat placeat.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(39, 3, 'Est ut saepe voluptatem rerum ullam dolorem cupiditate.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(40, 3, 'Enim dolorem incidunt dolorem quisquam.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58'),
	(41, 3, 'Ullam vel perferendis debitis aut nobis recusandae.', 0, '2018-10-27 20:47:58', '2018-10-27 20:47:58');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
