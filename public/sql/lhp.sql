
USE `lhp`;


CREATE TABLE IF NOT EXISTS `contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table guitar.contents: ~3 rows (approximately)
INSERT INTO `contents` (`id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '<h1 style=""><font size="7">Connor Owen Guitar</font></h1><h1 style="">\n<font size="6">Guitarist | South Wales, UK</font></h1><div><font size="4">I\'m a professional guitarist based in South Wales, UK, with over a decade of experience in live performance and studio work. I hold a BMus (Hons) degree in Contemporary Music Performance from the University of South Wales (2019) and achieved Grade 8 certification with Rockschool in 2015.</font></div><div>\n<br></div><div>\n<font size="4">My playing is shaped by a broad range of musical influences, with a particular passion for rock, metal, soul, and jazz. Artists who have significantly inspired my style include Pink Floyd, Avenged Sevenfold, Bill Withers, Foo Fighters, Snarky Puppy, Nick Johnston, Miles Davis, Animals As Leaders, Stevie Wonder, and Chick Corea.</font></div><div>\n<br></div><div>\n<font size="4">I currently perform regularly at weddings, private events, and venues across South Wales and beyond, both as a soloist and alongside various acts. I’m also a guitarist for Rhiannon – The Fleetwood Mac Tribute, bringing classic hits to life in pubs, clubs, and theatres throughout the region.</font></div><div><br></div><div><br></div>', NULL, '2025-04-19 05:51:59', NULL),
	(2, '<h1 style=""><font size="7">Connor Owen Guitar</font></h1><h1 style=""><font size="6">Guitar Tuition</font></h1><div><br></div><font size="4">With nearly a decade of teaching experience, I offer guitar lessons tailored to students of all ages and skill levels. Whether you\'re a complete beginner or looking to refine advanced techniques, I provide a supportive and engaging learning environment to help you reach your musical goals.</font><div><br></div><div>\n\n<font size="4">During my formal training, I gained experience with both the Rockschool and Trinity Rock &amp; Pop syllabi. I\'m happy to prepare students for graded exams using any accredited syllabus—or, if you prefer, we can focus on learning to play your favourite songs and developing your unique playing style.</font></div><div><br></div><div>\n\n<font size="4">In addition to guitar tuition, I also offer instruction in recording and music production. As an Apple Certified User of Logic Pro, I can provide guidance for those interested in recording for personal projects or seeking support with GCSE or A Level Music Technology coursework.</font></div><div><br></div><div>\n\n<font size="4">Lessons are available in person or online via video call, offering flexibility and accessibility no matter your location.</font></div><div><br></div><div><hr id="null"></div><div>\n<div style="text-align: left;"><font size="6">Tuition Rates:</font></div></div><div><div style="text-align: center;"></div><ul><li style="text-align: left;"><font size="4">£12.50 – 30-minute lesson</font></li><li style="text-align: left;"><font size="4">£22.00 – 1-hour lesson</font></li></ul></div><div><font size="4"></font></div><div style="text-align: left;"><font size="4">Block booking discounts are available—please get in touch for more information or to arrange your first lesson.</font></div><div style="text-align: left;"><font size="4"><br></font></div><div style="text-align: left;"><font size="4"><br></font></div>', NULL, '2025-04-13 08:22:36', NULL),
	(3, '<h1 style="color: rgb(33, 37, 41); white-space-collapse: preserve;"><font size="7">Connor Owen Guitar</font></h1><div><font size="6">Contact Connor</font></div><h2 style=""><font size="4"><b>All Enquiries</b></font></h2><h1><p style="white-space-collapse: preserve;"><font size="4"><span class="fa fa-phone fa-lg" style=""></span> Phone: 07463704677</font></p><p style="white-space-collapse: preserve;"><font size="4"><span class="fa fa-envelope fa-lg" style=""></span> Email: contact@connorowenguitar.co.uk</font></p></h1>\n', NULL, '2025-04-13 08:14:51', NULL);

-- Dumping structure for table guitar.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table guitar.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table guitar.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table guitar.migrations: ~5 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2014_10_12_000000_create_users_table', 1),
	(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(8, '2014_10_12_100000_create_password_resets_table', 1),
	(9, '2019_08_19_000000_create_failed_jobs_table', 1),
	(10, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Dumping structure for table guitar.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table guitar.password_resets: ~0 rows (approximately)

-- Dumping structure for table guitar.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table guitar.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table guitar.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table guitar.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table guitar.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table guitar.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
	(1, 'Admin User', 'admin@connorowenguitar.com', NULL, '$2y$12$oyPZUowPPg1zdwfXuUF6C.1v1vScyUchBIN1aUoSD0WY2vcJaBg3m', NULL, '2025-04-08 05:43:50', '2025-04-08 05:44:02', 1),
	(2, 'Garry Owen', 'jpgx40x@aol.com', NULL, '$2y$12$JUm9ZP1lmx.p8vSCtKvGFuQ9MQ9SvG2xBWPPR9n/QWLATjEA6fOrG', 'rAYTSy7o0Un3fcQHBRy7wttcob8XUtnVjwmcrf8qe1w33caOUiZogjChpWFl', '2025-04-11 07:38:22', '2025-04-11 07:38:22', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
