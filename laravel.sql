-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 23 2025 г., 23:51
-- Версия сервера: 8.0.40
-- Версия PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'ipsum', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(2, 'neque', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(3, 'sunt', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(4, 'quia', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(5, 'a', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(6, 'doloribus', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(7, 'omnis', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(8, 'maiores', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(9, 'quod', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(10, 'et', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(11, 'consectetur', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(12, 'earum', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(13, 'et', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(14, 'quisquam', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(15, 'rerum', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(16, 'minima', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(17, 'qui', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(18, 'sunt', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(19, 'voluptas', '2025-02-17 11:29:06', '2025-02-17 11:29:06'),
(20, 'est', '2025-02-17 11:29:06', '2025-02-17 11:29:06');

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `founder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name`, `site`, `country`, `founder`, `created_at`, `updated_at`) VALUES
(1, 'dasdasdasdasd', 'dasdasdasdasd', 'asdasdasda', 'dasdasdasd', '2025-02-20 13:47:36', '2025-02-20 13:47:36');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `houses`
--

CREATE TABLE `houses` (
  `id` bigint UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_of_floors` int NOT NULL,
  `quantity_of_apartments` int NOT NULL,
  `quantity_of_entrance` int NOT NULL,
  `material_of_walls` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canalization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `elevator` tinyint(1) NOT NULL,
  `parking` tinyint(1) NOT NULL,
  `heating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bomb_shelter` tinyint(1) NOT NULL,
  `basement` tinyint(1) NOT NULL,
  `security_measures` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `date_of_construction` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_13_185051_create_categories_table', 1),
(5, '2025_01_24_130627_create_posts_table', 1),
(6, '2025_01_25_085819_create_houses_table', 1),
(7, '2025_02_11_201723_create_companies_table', 1),
(9, '2025_02_21_143017_add_column_role_to_users_table', 2),
(10, '2025_02_22_223814_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` bigint UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `likes`, `is_published`, `created_at`, `updated_at`, `deleted_at`, `category_id`) VALUES
(1, 'Ни времени, ни последствий, как однако, чтобы кто-либо.', 'Veritatis temporibus est et ex et. Tempore laboriosam laudantium accusamus unde soluta provident. Modi ut sint incidunt et odio eaque officiis.', 'https://via.placeholder.com/640x480.png/009911?text=alias', 3495, 1, '2025-02-17 11:29:06', '2025-02-20 15:00:00', NULL, 18),
(2, 'Neque tempore consequatur quam autem ut quisquam.', 'Voluptatem accusamus et omnis. Consequatur commodi quidem non est fuga.', 'https://via.placeholder.com/640x480.png/0066dd?text=asperiores', 105, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 4),
(3, 'Expedita sed et placeat ab quia eligendi.', 'Quasi vitae nobis nobis qui deleniti dignissimos architecto. Consequuntur aliquid vero numquam modi. Aut cum at alias expedita consequatur facere eveniet. Velit dolore eos dolores.', 'https://via.placeholder.com/640x480.png/0011ff?text=magnam', 619, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(4, 'Sed quo ea commodi cum natus.', 'Est fuga facilis vitae est asperiores. Voluptates qui quam expedita. Cumque non iusto quia recusandae velit eveniet.', 'https://via.placeholder.com/640x480.png/00bb99?text=est', 2945, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(5, 'Non dolorum laboriosam quia qui.', 'Qui architecto hic molestiae repudiandae. Similique labore eos qui et et qui illo. Omnis illum aut error quaerat similique iure.', 'https://via.placeholder.com/640x480.png/0011ee?text=soluta', 1615, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(6, 'Ea voluptatem tenetur non et et iusto.', 'Doloremque illum veritatis doloremque dolores amet amet. Facere molestiae ex tempore ea porro dolor. Debitis impedit quo illo repellendus molestiae.', 'https://via.placeholder.com/640x480.png/0088aa?text=nobis', 2223, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(7, 'Dolor vitae dolorum repellendus dignissimos.', 'Error minima eaque cum. Corrupti voluptas autem assumenda exercitationem nulla voluptatem autem. Ipsa facilis pariatur quibusdam. Rerum consectetur et et rerum nam dolor.', 'https://via.placeholder.com/640x480.png/009900?text=quis', 1623, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(8, 'Ipsa sed et blanditiis.', 'Omnis quas et minima ut dolor autem quod. Excepturi facilis enim commodi error et quod enim. Consequuntur et est voluptatem et odit et odio accusantium.', 'https://via.placeholder.com/640x480.png/0055aa?text=similique', 2998, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(9, 'Quam voluptas sunt sequi.', 'Eum vitae ad reiciendis id et repellendus omnis. Et veritatis incidunt laudantium. Mollitia dignissimos distinctio molestias animi ipsa ullam.', 'https://via.placeholder.com/640x480.png/00eecc?text=magnam', 511, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(10, 'Recusandae in qui voluptatem nobis.', 'Consequatur nemo ipsum ratione magnam. Asperiores voluptates sit tenetur ea et. Aliquid distinctio debitis ducimus adipisci architecto deserunt. Cumque ut ipsa illum ut.', 'https://via.placeholder.com/640x480.png/009933?text=omnis', 1968, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(11, 'Ducimus eum vero aut et.', 'Dignissimos ab culpa aliquid et officiis sequi molestiae laborum. Quisquam voluptates suscipit aliquam quos voluptatem. Asperiores similique deleniti repellat a tempore cumque.', 'https://via.placeholder.com/640x480.png/0011aa?text=exercitationem', 1682, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 17),
(12, 'Nam nobis doloribus nemo alias.', 'Soluta consequatur ut sed odit. Atque ut doloribus doloribus. Labore sed voluptatum dolores praesentium rerum debitis. Ea amet esse et ut repellendus.', 'https://via.placeholder.com/640x480.png/00aa11?text=asperiores', 272, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 4),
(13, 'Et explicabo itaque architecto in.', 'Sit commodi commodi quaerat vitae aut rem. Earum ut delectus ut voluptatem nemo. Numquam adipisci temporibus est dolores. Voluptatibus rem recusandae quia ducimus eos eum ex.', 'https://via.placeholder.com/640x480.png/0000aa?text=accusantium', 2065, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(14, 'Nostrum sunt voluptatem repudiandae.', 'Voluptatem dolor ipsum ipsa aut magni molestiae. Velit recusandae autem omnis. Neque dolore quae est molestiae. Quia et eveniet similique deleniti nostrum architecto.', 'https://via.placeholder.com/640x480.png/0033bb?text=sit', 347, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(15, 'Eum dolores quia et est.', 'Voluptatem saepe vel similique voluptas provident fuga perferendis. Ad enim illum blanditiis eaque dolor corrupti assumenda. Qui est dolores quia labore ducimus ad.', 'https://via.placeholder.com/640x480.png/003388?text=recusandae', 1329, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(16, 'Libero rerum minus tempore fugit tempore.', 'Molestiae voluptatem voluptatibus reiciendis omnis beatae esse est rem. Sit quasi voluptas error voluptatem non animi. Consequatur autem rem sit.', 'https://via.placeholder.com/640x480.png/007777?text=non', 514, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(17, 'Corrupti quo aut aliquam repellendus aut.', 'Quibusdam eaque sunt nisi debitis ullam aliquid. Rerum illum asperiores maiores itaque voluptatem cum ut. Ullam reprehenderit non repellendus iure sit consequatur.', 'https://via.placeholder.com/640x480.png/00aaaa?text=aut', 1122, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(18, 'Magni ut ea consequatur aut nam.', 'Rerum aut velit voluptatem delectus sed ullam quo. Molestias voluptatem quam omnis quia sit. Incidunt ad numquam ut odio.', 'https://via.placeholder.com/640x480.png/00bbaa?text=quibusdam', 898, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(19, 'Temporibus dolor voluptas veniam nemo.', 'Quia libero quidem eaque perferendis ut blanditiis. Animi et qui quos placeat voluptatem error. Quis doloremque sint aut officiis.', 'https://via.placeholder.com/640x480.png/00ffff?text=praesentium', 1900, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(20, 'Repellendus excepturi qui ea modi sunt.', 'Et non et repudiandae blanditiis. Et minima accusamus voluptas enim nihil adipisci reprehenderit. Enim sunt tenetur aut ab sit cumque dolorem.', 'https://via.placeholder.com/640x480.png/004455?text=a', 1052, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(21, 'Aspernatur inventore corrupti et.', 'Rem eius esse ut eum omnis. Aut est odit sint neque architecto veritatis.', 'https://via.placeholder.com/640x480.png/009988?text=et', 1811, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(22, 'Voluptatem a vitae voluptatem neque nesciunt delectus.', 'Numquam possimus vel et magni ut maiores nobis. Neque dicta impedit modi quas laboriosam. Aperiam veniam est odit vero.', 'https://via.placeholder.com/640x480.png/003377?text=velit', 2098, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(23, 'Quis et eos eius sint aut.', 'Cupiditate iusto dolorem blanditiis excepturi. Aliquam ullam quos omnis dolorem labore reiciendis dicta. Aspernatur optio quia atque corrupti doloremque.', 'https://via.placeholder.com/640x480.png/00ccaa?text=porro', 3049, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(24, 'Eos assumenda libero qui et.', 'Odio dolorem similique deserunt. Nam omnis eum eligendi. Aut eveniet nemo perferendis. Nemo non iure dolorem voluptatem.', 'https://via.placeholder.com/640x480.png/0088dd?text=inventore', 3019, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(25, 'Odit quae aut tempore.', 'Et et reprehenderit aut voluptatem provident praesentium quaerat ipsam. Et quod eius sapiente excepturi non perspiciatis sunt. Ut aut corrupti eum exercitationem molestias.', 'https://via.placeholder.com/640x480.png/0055bb?text=facere', 2283, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(26, 'Animi repellat sint eveniet possimus.', 'Aut temporibus tenetur magni exercitationem modi quo velit. Eaque veritatis ad quis consectetur exercitationem illo. Rerum qui adipisci nulla.', 'https://via.placeholder.com/640x480.png/0000dd?text=culpa', 847, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(27, 'Rerum repudiandae perspiciatis qui.', 'Deleniti sit necessitatibus ducimus cum enim est. In quidem natus ex ad omnis. Ex ut aut neque enim tenetur in tempora. Amet laboriosam autem quia ipsam animi accusamus ad.', 'https://via.placeholder.com/640x480.png/007711?text=sit', 995, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(28, 'Itaque eos nisi qui saepe et occaecati.', 'Eos et ut deserunt tempora. Minus sapiente earum qui inventore autem inventore vitae. Ab repudiandae minima eum at. Quam consequatur quia error aspernatur.', 'https://via.placeholder.com/640x480.png/007799?text=nihil', 853, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(29, 'Aperiam ipsa cumque voluptas rerum exercitationem.', 'Eum consequatur qui repellendus neque repellendus nihil. Veniam aliquid quibusdam odio voluptas unde at.', 'https://via.placeholder.com/640x480.png/00cc55?text=minus', 2898, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(30, 'Qui ut doloribus quia animi similique ipsa.', 'Quidem consequatur error non repudiandae nobis. Minus temporibus ullam pariatur ratione. Enim inventore est aut sit beatae explicabo.', 'https://via.placeholder.com/640x480.png/0033dd?text=fugiat', 1733, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 1),
(31, 'Consequatur quo dolorum non et quis.', 'Eum quia nam temporibus eveniet. Inventore voluptas cupiditate veniam repudiandae. Aliquid cupiditate inventore corporis voluptatem.', 'https://via.placeholder.com/640x480.png/000044?text=reprehenderit', 3177, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(32, 'Quos debitis dolore maxime a.', 'Iure est reiciendis ut qui iste iure incidunt. Veritatis qui repudiandae repudiandae. Et ut quia dolore provident corporis autem. Ab laborum quis vitae voluptas eius.', 'https://via.placeholder.com/640x480.png/00aa33?text=officiis', 249, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(33, 'Est numquam quia deserunt provident.', 'Et iure et nulla. Sint provident vero totam numquam. Eum aperiam qui ut cumque molestias quos.', 'https://via.placeholder.com/640x480.png/009988?text=doloremque', 1332, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 17),
(34, 'Velit porro architecto dolore cum.', 'Et odit sapiente earum fugiat. Ex et non voluptatibus totam ipsum eveniet quibusdam ut.', 'https://via.placeholder.com/640x480.png/00ccff?text=velit', 2858, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(35, 'Ipsam est illum qui.', 'In quis eos eum aut. Facilis at deserunt maiores rerum sed iusto eos quae. Omnis non totam quas praesentium tenetur est molestiae. Facilis sit et tempore inventore nihil sed harum.', 'https://via.placeholder.com/640x480.png/004422?text=velit', 990, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 8),
(36, 'Necessitatibus labore incidunt aut aspernatur.', 'Et sit enim rerum quo adipisci quia. Et hic deleniti eos a consequatur sed. Sequi consequuntur deserunt est et molestiae.', 'https://via.placeholder.com/640x480.png/00aa44?text=commodi', 1050, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(37, 'Possimus blanditiis similique voluptatem.', 'Explicabo quas sit quisquam iste sed. Iusto deserunt sit aut quo voluptatem neque sequi. Vitae ipsa saepe cupiditate rerum dolores et. Hic est alias architecto molestiae culpa nemo.', 'https://via.placeholder.com/640x480.png/00ccff?text=quaerat', 1350, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(38, 'Et laudantium occaecati totam unde.', 'Rerum quo neque sed. Quia sequi voluptate et. Iste eius expedita quasi impedit.', 'https://via.placeholder.com/640x480.png/0033ff?text=molestiae', 74, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(39, 'Dignissimos itaque commodi dolores voluptatem ipsam omnis.', 'Et magnam dolores consequuntur distinctio et dolor. Et perferendis ea voluptate explicabo. Perferendis inventore facere tempore suscipit maxime rerum blanditiis.', 'https://via.placeholder.com/640x480.png/009933?text=aut', 50, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(40, 'Sequi fugit quidem fuga.', 'Eum magnam at neque eligendi. Rerum sit accusamus necessitatibus ut quia aut. Incidunt magnam incidunt consequatur ut et.', 'https://via.placeholder.com/640x480.png/00bb66?text=eos', 1970, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(41, 'Minus harum aut enim.', 'Quaerat repellendus qui iste cum sunt at sint. Explicabo et sunt tenetur sed. Officiis deleniti similique officiis ratione unde omnis aspernatur.', 'https://via.placeholder.com/640x480.png/0066cc?text=tempore', 1213, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(42, 'Dignissimos qui tempora et non animi.', 'Ut ullam nostrum explicabo quis soluta dolorem. Ipsam sed voluptatum veniam. Esse et aut eos non. Quam nihil est provident eveniet ut ullam. Dolor eum voluptatem quos sed magni.', 'https://via.placeholder.com/640x480.png/0044ee?text=ad', 2446, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(43, 'Sunt maiores sequi ut delectus quia.', 'Officiis et similique eveniet explicabo natus est. Magni non illo quo. Unde praesentium voluptate ut aliquid aut sed est. Asperiores quas explicabo cupiditate minima.', 'https://via.placeholder.com/640x480.png/0022aa?text=iusto', 2182, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(44, 'Amet architecto quasi velit maxime est.', 'Possimus quam qui corrupti consequatur. Eaque quas eos nulla in numquam quo voluptatem. Ea consequatur modi ab nesciunt quia.', 'https://via.placeholder.com/640x480.png/005599?text=eum', 2577, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(45, 'Sint necessitatibus quo animi molestias.', 'Aut reiciendis blanditiis voluptatem debitis qui sit. Quia est nulla consectetur eaque in ad dolores occaecati. Beatae et qui unde sit.', 'https://via.placeholder.com/640x480.png/0066ee?text=aut', 507, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(46, 'Cupiditate dolor magni dolores accusantium ut.', 'Voluptas sed voluptas adipisci inventore accusantium. Ut voluptatem cupiditate eveniet officiis.', 'https://via.placeholder.com/640x480.png/0077aa?text=consequatur', 2430, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(47, 'Harum totam dolorem veniam nesciunt.', 'Quis aut iure cum expedita est blanditiis sunt. Ipsa itaque repudiandae id sed dolorem. Exercitationem in fugit quo consectetur dolores ipsum.', 'https://via.placeholder.com/640x480.png/0077ff?text=magni', 2423, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(48, 'Architecto mollitia quidem nihil qui.', 'Assumenda quis eum sunt accusamus deserunt vitae consectetur. Blanditiis et sit laboriosam aspernatur qui tenetur modi. Consectetur aliquid id ut rem vel perferendis deserunt.', 'https://via.placeholder.com/640x480.png/0044ee?text=facilis', 2349, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(49, 'Voluptates dignissimos pariatur id earum ut.', 'Quis dolores aperiam natus sunt quod tempora. Error minima deserunt qui sequi autem ullam expedita. Suscipit voluptas corporis molestiae vel est facere maiores est.', 'https://via.placeholder.com/640x480.png/009911?text=fugiat', 1912, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(50, 'Sit aut quis laboriosam ut.', 'Voluptatem aliquam consequuntur ratione. Dolorem vitae qui nam explicabo nostrum quia laboriosam. Nostrum alias sint quos tempora aut et hic.', 'https://via.placeholder.com/640x480.png/009966?text=autem', 409, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(51, 'Quisquam nesciunt facilis rem.', 'Ut qui officia aut dolor minima dolorem omnis. Aut modi aut repellat ex repudiandae rerum odit. Eveniet in sapiente aspernatur. Voluptatem et voluptate et dolorum ex.', 'https://via.placeholder.com/640x480.png/000044?text=ut', 3194, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(52, 'Quidem excepturi expedita dolorum perspiciatis.', 'Temporibus ullam quia quo eos nihil tempora ipsam. Eum doloribus doloremque a nostrum. Repellat praesentium ipsa odit est consequatur repellat.', 'https://via.placeholder.com/640x480.png/009922?text=dolorem', 1681, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(53, 'Voluptatibus voluptates quos aliquam laborum nemo natus.', 'Pariatur quia soluta nihil consequatur libero qui voluptatem illum. Consequuntur perspiciatis eveniet est ratione esse. Porro sed vitae nobis voluptatem impedit.', 'https://via.placeholder.com/640x480.png/0066cc?text=perspiciatis', 1883, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(54, 'Magnam et illo aspernatur.', 'Nulla et exercitationem quod incidunt odit quas sit. Libero facilis ea est nam et ullam. Placeat nobis quam assumenda sit eum sint assumenda. In laborum laudantium dolorum pariatur fuga rerum aut.', 'https://via.placeholder.com/640x480.png/000000?text=enim', 1637, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(55, 'Maiores deserunt consequatur aut id.', 'Molestias quaerat earum sint sint culpa sunt exercitationem numquam. Aperiam doloribus in est quasi deleniti eum dolorum odit. Ex blanditiis eius dolores perspiciatis. Ut velit qui eligendi.', 'https://via.placeholder.com/640x480.png/006611?text=et', 2081, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(56, 'Voluptatem quibusdam sint inventore veritatis.', 'Qui sit similique praesentium et reiciendis autem. Aut sequi id molestiae aperiam vel. Pariatur omnis soluta non qui.', 'https://via.placeholder.com/640x480.png/000033?text=voluptas', 2513, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 1),
(57, 'Voluptatibus at omnis eum delectus.', 'Dolor repudiandae tenetur unde ex ad. Est modi iure porro quidem dignissimos. Possimus quia neque consequatur qui aliquam et voluptatem. In cum eum id non fuga.', 'https://via.placeholder.com/640x480.png/00aa11?text=sed', 418, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 17),
(58, 'Ipsum iusto blanditiis iusto.', 'Sunt cum molestiae aliquam culpa. Accusantium aut id sit cumque occaecati vel dolore. Ducimus aut tempora officiis autem amet.', 'https://via.placeholder.com/640x480.png/000044?text=quis', 681, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 9),
(59, 'Quis exercitationem sed nulla exercitationem.', 'Et error dolores voluptatem molestiae modi dolores. Sint animi in commodi explicabo labore alias placeat. Autem delectus et qui esse alias natus nisi.', 'https://via.placeholder.com/640x480.png/006633?text=atque', 987, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(60, 'Qui quod quis soluta dolores ducimus.', 'Illum omnis minus ducimus commodi quis voluptas. Voluptatem soluta aut et. Magni assumenda odit exercitationem sed vitae dolorem nobis. Quia dolorum facere autem sint aliquid quo.', 'https://via.placeholder.com/640x480.png/0099aa?text=fugiat', 2596, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(61, 'Et odio culpa cum sed enim ut.', 'Eaque esse facilis doloremque illo. Dolorem quia veritatis nulla molestiae enim iure. Error id soluta nihil aliquid dolorem earum. Voluptas id laudantium sequi sed consequatur.', 'https://via.placeholder.com/640x480.png/006611?text=id', 1265, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(62, 'Perspiciatis et qui in aperiam veritatis.', 'Velit eum nemo hic rerum ad. Odit minima dolorem ducimus quos dolor omnis ut. Veniam consequuntur a provident.', 'https://via.placeholder.com/640x480.png/0066ee?text=incidunt', 206, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(63, 'Et qui corporis molestiae in nemo.', 'Est numquam est incidunt veritatis quo quibusdam alias. Animi sed ratione nostrum distinctio. Aut dolor eius ea ex commodi.', 'https://via.placeholder.com/640x480.png/006655?text=eligendi', 751, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(64, 'Quo adipisci doloremque aliquid quas quibusdam ab.', 'Quam expedita minima laboriosam explicabo quia. Odio ipsum autem officiis sint.', 'https://via.placeholder.com/640x480.png/00bb00?text=fugit', 3405, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(65, 'Debitis perferendis corrupti nihil vel enim.', 'Magni odio officiis ut cum porro culpa quos. Fuga dicta libero et alias eum facere. Explicabo quam dolores voluptatum quia rem voluptatem.', 'https://via.placeholder.com/640x480.png/0088dd?text=ut', 282, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(66, 'Ipsum aut amet doloremque minus reiciendis.', 'Qui explicabo at tempora quos magni neque totam repellat. Distinctio quidem dolorem dolorum aliquam possimus. Pariatur occaecati quo dolore.', 'https://via.placeholder.com/640x480.png/00cc33?text=repellat', 2089, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(67, 'Sed sint eveniet et perspiciatis culpa fugit.', 'Qui velit non quis. Sunt dolor ratione voluptatem commodi. Laborum sed facere ut non soluta quia. Dolorem velit totam hic nemo perspiciatis et.', 'https://via.placeholder.com/640x480.png/00cc11?text=unde', 1064, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(68, 'Facere voluptatem natus qui repellat voluptatem.', 'Consectetur quod dolores velit repellat dignissimos. Eum sit dolores necessitatibus est in incidunt. Cum ducimus illum ut voluptas. Rerum voluptatem dolorum est facilis voluptatem.', 'https://via.placeholder.com/640x480.png/006644?text=repellat', 456, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(69, 'Quia eos ut voluptas nostrum tenetur perspiciatis.', 'Assumenda iusto aut blanditiis tenetur. Ducimus quo cum nulla molestias dolorem. Earum iste corrupti sed blanditiis nostrum quis et. Magni et voluptatem blanditiis velit in ipsa.', 'https://via.placeholder.com/640x480.png/0099aa?text=corrupti', 2125, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(70, 'Non qui quis cum.', 'Repudiandae nulla sunt magni. Hic reiciendis assumenda molestias placeat. Repellendus consequatur libero qui quisquam id quo.', 'https://via.placeholder.com/640x480.png/0022ee?text=ipsam', 893, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(71, 'Porro placeat aut ut ut.', 'Odio enim pariatur sit officiis voluptatem assumenda reiciendis. Sit dolore veniam quae. Et ut dolor eum doloremque ipsa ad numquam qui.', 'https://via.placeholder.com/640x480.png/005577?text=aspernatur', 662, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(72, 'Voluptas asperiores eos saepe.', 'Animi nemo vel expedita iste sit. Aut ut commodi impedit voluptatibus odit cum aut.', 'https://via.placeholder.com/640x480.png/00bbee?text=natus', 34, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(73, 'Et et quas minus.', 'Impedit natus harum ea et. Vel architecto iste vitae voluptate qui quia. Voluptatem quia doloribus hic cumque et sed. Tenetur voluptatem illum reprehenderit et voluptatem perferendis sed.', 'https://via.placeholder.com/640x480.png/0066bb?text=laborum', 81, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 17),
(74, 'Eaque soluta soluta ipsum.', 'Qui possimus laborum recusandae qui aut a repellat. Eaque perferendis voluptas quia aut voluptate nemo. Placeat et excepturi cupiditate officia. Enim assumenda tempore ut et ut inventore voluptates.', 'https://via.placeholder.com/640x480.png/000088?text=autem', 2730, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(75, 'Ut ut aspernatur ut quam rerum.', 'Aut corporis aut quo dolorem beatae deleniti quia. Repellendus et doloremque reiciendis veritatis.', 'https://via.placeholder.com/640x480.png/004466?text=ipsam', 1790, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 4),
(76, 'Non debitis enim et rerum.', 'Sit et id ea amet quia. Voluptatem veniam tempore eum voluptate sunt error harum.', 'https://via.placeholder.com/640x480.png/0022cc?text=velit', 1082, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(77, 'Molestiae dolore sapiente maiores.', 'Ducimus nihil vitae eaque molestias qui est. Quibusdam sunt quas doloribus dolorem eos autem. Minima eligendi et laboriosam exercitationem tempore aut. Corrupti sed velit qui.', 'https://via.placeholder.com/640x480.png/00bb44?text=odio', 1651, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(78, 'Rerum eos pariatur rerum ad sed eaque.', 'Iste quo voluptatem at ut. Dicta voluptas suscipit nobis. Officiis sit harum repellendus est ipsum qui et. Ex non aut et voluptatem sed eveniet labore. Error odio exercitationem hic itaque.', 'https://via.placeholder.com/640x480.png/001144?text=voluptates', 2764, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(79, 'Non voluptates provident sit rerum natus.', 'Dolor mollitia aperiam nostrum est sed explicabo aliquid rerum. Vitae doloremque perferendis qui et mollitia voluptates et impedit. Harum placeat ab ex velit.', 'https://via.placeholder.com/640x480.png/0044cc?text=sint', 2310, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(80, 'Ipsa omnis eligendi beatae provident vel dolores.', 'Sint temporibus similique voluptate dicta doloremque omnis. Quibusdam ab quos fugit dicta animi. Repellat vitae fugiat quibusdam eum. Et repellendus repellat amet temporibus.', 'https://via.placeholder.com/640x480.png/007777?text=quam', 2993, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(81, 'Et et adipisci cumque et fugiat porro.', 'Eaque ullam blanditiis impedit. Iure aut et repellendus quia ut facilis quo. Eum dignissimos ut et impedit.', 'https://via.placeholder.com/640x480.png/0099ee?text=quo', 2958, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(82, 'Debitis dolores non dolor quia modi quasi.', 'Officia eius omnis ducimus omnis aperiam aliquid libero. Quo dicta neque et qui. Aperiam eaque distinctio sunt est adipisci. Placeat neque eius ut.', 'https://via.placeholder.com/640x480.png/009900?text=omnis', 2099, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 4),
(83, 'Est consequatur reprehenderit sunt dolor consequatur.', 'Magni rerum et excepturi debitis et. Esse enim enim officia quae maxime placeat. Aperiam consectetur voluptas alias incidunt quibusdam omnis error eos. Ab eos beatae autem.', 'https://via.placeholder.com/640x480.png/00ccaa?text=rerum', 500, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(84, 'Molestiae pariatur et quia odit voluptas dolor.', 'Error impedit vel necessitatibus deleniti iusto. Dolorem voluptas perspiciatis totam dolorem deleniti eveniet. Ratione cum odio libero voluptas in fuga. Beatae quasi pariatur et omnis et pariatur.', 'https://via.placeholder.com/640x480.png/0066bb?text=eligendi', 1703, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(85, 'Expedita corporis vitae aliquid.', 'Sit molestiae et vero quo ullam. Sint in voluptatem temporibus nisi cum officiis. Veniam nisi voluptatem ut.', 'https://via.placeholder.com/640x480.png/00ffdd?text=magnam', 1807, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(86, 'Cupiditate incidunt iure voluptatibus hic sit tenetur.', 'Voluptatem magnam nam et accusamus ea est ducimus. Quod doloremque non nesciunt rerum quaerat enim id minus. Optio voluptatem consequatur quidem nostrum possimus.', 'https://via.placeholder.com/640x480.png/00dd11?text=quis', 3198, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(87, 'Dolorem perspiciatis voluptates voluptates.', 'Inventore voluptatem omnis ullam dolore est rerum. Rerum et quia voluptas. Deleniti aspernatur placeat qui aliquid doloribus est.', 'https://via.placeholder.com/640x480.png/004488?text=omnis', 3383, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(88, 'Exercitationem dolores saepe esse quis et.', 'Excepturi et porro at reprehenderit corrupti sit. Error rerum sunt asperiores aut. Illum asperiores sapiente ratione consequatur reprehenderit.', 'https://via.placeholder.com/640x480.png/00ff99?text=et', 292, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(89, 'Asperiores voluptatem odit inventore rerum quidem.', 'Amet non quia et quis recusandae voluptatibus. Eligendi ea aliquid magnam quas est odio.', 'https://via.placeholder.com/640x480.png/00ccaa?text=eos', 305, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(90, 'Officiis ratione molestiae non illum et.', 'Aperiam aut rerum numquam dolor voluptas omnis. Magnam dolores qui quos sit voluptatem voluptatum. Consectetur eos inventore ducimus et culpa autem.', 'https://via.placeholder.com/640x480.png/0077dd?text=voluptas', 1315, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(91, 'Sint ut excepturi illo magnam.', 'Quaerat nulla atque nesciunt eum. Voluptatum doloribus rerum tenetur quidem atque accusamus labore facilis. Autem dolor ratione est perferendis impedit. Corporis sapiente sapiente non quo mollitia.', 'https://via.placeholder.com/640x480.png/00aa00?text=consequuntur', 3474, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(92, 'Hic dicta molestiae tempore.', 'Omnis eveniet animi officiis temporibus qui aut. Sint veritatis et eos possimus voluptatem possimus in. Eaque delectus enim aut deserunt. Quo a qui qui itaque voluptatem.', 'https://via.placeholder.com/640x480.png/0088ee?text=veniam', 849, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 9),
(93, 'Quis ad consequatur eligendi voluptatibus quos.', 'Unde ut vel ut doloremque. Eius iure consequatur ipsam minima. Vitae quia aspernatur nesciunt corrupti distinctio et non.', 'https://via.placeholder.com/640x480.png/0088bb?text=sed', 2786, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(94, 'Eveniet nam sit ut neque.', 'Molestiae voluptates modi vel debitis aut debitis. Qui magni porro similique porro. Velit beatae quia est voluptas et quia. Cupiditate repellat et facere molestiae aliquid dignissimos.', 'https://via.placeholder.com/640x480.png/0000cc?text=qui', 443, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 1),
(95, 'Sit rerum dolorum qui voluptatibus.', 'Cum dolorem eos quidem qui. Et sit consequuntur culpa. Dolorem est quo deserunt accusantium excepturi qui. Et consectetur cumque impedit.', 'https://via.placeholder.com/640x480.png/00dd00?text=eveniet', 703, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 11),
(96, 'Impedit itaque sunt id.', 'Labore id et molestiae omnis nesciunt. Eligendi iure iure perferendis aut nam. Voluptatem qui repellat beatae aut. Enim officiis modi rem nemo quis accusantium sint.', 'https://via.placeholder.com/640x480.png/002211?text=earum', 3136, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(97, 'Enim aut tempora magnam repellendus sint eaque.', 'Qui in laboriosam qui voluptatibus. Id iste ut reprehenderit eos inventore cumque. Quis ducimus voluptas ipsa molestias fugit expedita sunt ut.', 'https://via.placeholder.com/640x480.png/0077aa?text=libero', 1205, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(98, 'Architecto et nisi eos et ab non.', 'Consequatur eos quisquam voluptate dignissimos debitis ea hic illo. Dignissimos dolorem ea qui iusto eos quis qui. Modi accusantium illo suscipit sint mollitia doloremque.', 'https://via.placeholder.com/640x480.png/000011?text=occaecati', 2624, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(99, 'A explicabo iste doloribus accusamus voluptates veniam.', 'Sed perspiciatis repudiandae repellendus temporibus vel dolor rerum mollitia. Temporibus est illum aliquid ut nulla.', 'https://via.placeholder.com/640x480.png/004433?text=dolorem', 173, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 11),
(100, 'Quod et autem quia dolor.', 'Sit iusto voluptatem excepturi ratione. Corrupti inventore exercitationem mollitia. Amet eius et cumque blanditiis numquam officiis. Cupiditate omnis ipsa et et dolorem iste accusantium.', 'https://via.placeholder.com/640x480.png/0055dd?text=numquam', 2182, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(101, 'Nihil voluptate autem accusamus temporibus quod rem.', 'Quia rerum pariatur voluptatem neque et earum. Distinctio temporibus beatae eius cupiditate. Autem nesciunt adipisci eveniet dolores ipsum.', 'https://via.placeholder.com/640x480.png/001188?text=non', 2884, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(102, 'Quibusdam architecto nihil et necessitatibus.', 'Eius aut suscipit praesentium ut rerum omnis. Temporibus provident rerum fugiat magnam. Sapiente dignissimos et commodi et.', 'https://via.placeholder.com/640x480.png/0011dd?text=eos', 780, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 11),
(103, 'Odit accusamus et in voluptas recusandae.', 'Animi pariatur magnam vel animi quam quo. Nesciunt quia et sunt sed dolore.', 'https://via.placeholder.com/640x480.png/002244?text=nam', 1504, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(104, 'Accusantium iste ut voluptatibus.', 'Placeat non ex ut. Aut pariatur sint natus. Odit aut delectus id dolorem voluptas.', 'https://via.placeholder.com/640x480.png/009988?text=pariatur', 3102, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(105, 'Placeat omnis nisi sint quas.', 'Minima quidem facere dicta eius ipsa quos numquam error. Ducimus voluptas cupiditate voluptatem provident ut. In dolore consectetur sunt.', 'https://via.placeholder.com/640x480.png/006655?text=omnis', 2074, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(106, 'Est tenetur consequuntur quo et.', 'Iure distinctio quia sapiente quos nobis sint dolorem. Eaque maiores et dolor voluptate.', 'https://via.placeholder.com/640x480.png/00bbcc?text=molestias', 541, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(107, 'Rerum voluptate quo qui vel est vel.', 'Odit assumenda excepturi omnis fugiat quasi. Quia ut saepe ex itaque quae. Aut officia voluptas qui eos. Veritatis atque qui dolore est modi.', 'https://via.placeholder.com/640x480.png/0011cc?text=architecto', 1268, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 9),
(108, 'Aliquam nisi officiis repudiandae voluptas.', 'Labore dignissimos officiis et quis facere illo quisquam. Eaque maiores ratione earum. Deserunt quia ipsum optio placeat ut consequatur.', 'https://via.placeholder.com/640x480.png/00aadd?text=quasi', 2852, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(109, 'Voluptatem sed enim modi necessitatibus corporis vel.', 'Qui quia iure voluptas dolores nihil iste. Blanditiis dolorum sunt aut et est. Veritatis culpa animi culpa deserunt expedita expedita vel. Esse animi labore maiores quibusdam eveniet.', 'https://via.placeholder.com/640x480.png/00dd88?text=sed', 1630, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(110, 'Ut dolorem non quod molestiae aut.', 'Odio fuga eligendi illum. Non quia sit aperiam dolorem sed vel aut dolorem.', 'https://via.placeholder.com/640x480.png/006688?text=blanditiis', 2990, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(111, 'Facilis animi at delectus minus magnam.', 'Molestiae autem est explicabo molestiae cumque. Voluptatem qui voluptates sit debitis a. Et porro aliquam ut et nihil.', 'https://via.placeholder.com/640x480.png/00ee88?text=numquam', 1441, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(112, 'Quaerat quibusdam modi corrupti exercitationem.', 'Harum dolores rerum corrupti sed id ex mollitia repudiandae. Occaecati delectus temporibus delectus dolorem qui quo ut. Amet ut beatae exercitationem laboriosam.', 'https://via.placeholder.com/640x480.png/0088ee?text=officia', 1136, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(113, 'A qui voluptatum et.', 'Enim eius nisi ut a et iure assumenda. Quos et voluptatem accusamus.', 'https://via.placeholder.com/640x480.png/0022ff?text=neque', 2972, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(114, 'Quam voluptas occaecati saepe sed dicta.', 'Debitis laudantium rerum ea quidem. Vel ipsam reiciendis natus harum eaque aspernatur sit eligendi. Provident eum nam veritatis. Expedita natus numquam sint culpa velit est.', 'https://via.placeholder.com/640x480.png/0011aa?text=et', 888, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(115, 'Nobis nam sed ipsum ipsa pariatur.', 'Magnam sequi sed maiores maiores consequuntur. Maxime eius id nostrum adipisci debitis. Et dignissimos et sit non consectetur. Assumenda nisi vel expedita blanditiis voluptatibus et.', 'https://via.placeholder.com/640x480.png/00ee55?text=cupiditate', 689, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(116, 'Quam iste voluptates nesciunt aperiam officiis.', 'Fuga ea voluptas aut nam dolorem quaerat numquam. Non consectetur explicabo illum aut aperiam cum quo.', 'https://via.placeholder.com/640x480.png/00cc77?text=voluptatem', 3319, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(117, 'Rerum voluptate et tempora similique eveniet.', 'Quasi tenetur velit asperiores et odit eos voluptas. Aliquam et laudantium qui odio atque soluta aliquam. Sunt omnis voluptates perspiciatis vel voluptas.', 'https://via.placeholder.com/640x480.png/0000cc?text=ut', 573, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(118, 'Consequatur aut dolores voluptatem distinctio et natus.', 'Dolores consequatur est non quisquam adipisci sunt provident. Quaerat sit animi occaecati consequuntur et. Et reprehenderit ut sapiente non ex.', 'https://via.placeholder.com/640x480.png/0000dd?text=necessitatibus', 1414, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 1),
(119, 'Ad debitis consequatur dolor quidem harum libero.', 'Expedita iste nihil et facere laboriosam dignissimos. Fugit sed est quam dolorum voluptatem tempore quo.', 'https://via.placeholder.com/640x480.png/007766?text=consequatur', 1340, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(120, 'Commodi consequatur consectetur voluptatem cupiditate distinctio.', 'Aperiam alias magnam harum. Vel qui in qui tempore et et nihil explicabo. Placeat optio quod nulla consequatur ab eum eius. Veritatis doloribus itaque nisi.', 'https://via.placeholder.com/640x480.png/00dd00?text=error', 1793, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 8),
(121, 'Nihil officia nemo dolor.', 'Quos ut alias libero. Quos unde deserunt saepe ullam porro. Ullam laudantium quibusdam vel aut voluptates occaecati. Et voluptatem aut odio voluptas aspernatur nemo. Qui impedit incidunt sunt quia.', 'https://via.placeholder.com/640x480.png/0077ff?text=veniam', 3488, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(122, 'Qui iusto est provident id dignissimos.', 'Ipsam explicabo earum deleniti omnis animi. Quis aspernatur enim maiores dolorem fugiat voluptatum magni est. Consectetur dicta nisi esse voluptas nemo quo nisi eaque.', 'https://via.placeholder.com/640x480.png/00ccbb?text=quo', 2200, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(123, 'Quod qui et consectetur eligendi reiciendis in.', 'Ratione suscipit eum doloremque nulla beatae. Veritatis quasi enim neque ipsam numquam ea. In aut eos numquam eius non.', 'https://via.placeholder.com/640x480.png/00cc88?text=nesciunt', 515, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 1),
(124, 'Saepe ex mollitia rem qui facilis.', 'Ut impedit beatae cumque est cum illo enim. Reiciendis molestias error optio debitis porro ea voluptatibus. Eaque nisi voluptatum dolorum soluta sit non illum.', 'https://via.placeholder.com/640x480.png/00ddbb?text=necessitatibus', 1674, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 12),
(125, 'Consectetur dolore aut qui perferendis.', 'Et natus quam laboriosam et ut. Possimus odit mollitia quasi voluptatibus amet vitae. Fugiat molestiae pariatur atque aperiam. Eum voluptas ut facere.', 'https://via.placeholder.com/640x480.png/007777?text=tempora', 2225, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(126, 'Laboriosam vero consequatur suscipit.', 'Perferendis non provident voluptas sit. Aut facilis architecto consequatur qui velit debitis modi. Ut est nihil ratione sint aut ut. Officia sunt cumque enim et explicabo.', 'https://via.placeholder.com/640x480.png/0000bb?text=modi', 2160, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 5),
(127, 'Delectus deserunt sed sed earum.', 'Magnam deleniti impedit vero corporis. Commodi nemo blanditiis dolores nihil ut. Fugiat ut quo et dolor tempore optio. Nihil id dolorem animi blanditiis doloribus doloremque aut.', 'https://via.placeholder.com/640x480.png/002222?text=reiciendis', 294, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(128, 'Deserunt facere totam incidunt nobis.', 'Voluptates veritatis est qui aperiam tenetur itaque nostrum quod. Sunt unde praesentium quae quis quae eveniet earum. Autem impedit et qui at expedita.', 'https://via.placeholder.com/640x480.png/00aa55?text=aliquam', 2590, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(129, 'Est soluta dolorum laudantium occaecati at beatae.', 'Ut reprehenderit omnis excepturi qui enim distinctio alias. Provident consequatur at et maiores rerum. Quos velit culpa temporibus reprehenderit dolorum eos ea.', 'https://via.placeholder.com/640x480.png/004499?text=sapiente', 2861, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(130, 'Ut quasi excepturi quia.', 'Eum est eos suscipit. Aspernatur qui nesciunt fugiat quod iste dolorem pariatur. Esse ut vel aliquid id repudiandae exercitationem et.', 'https://via.placeholder.com/640x480.png/006666?text=aut', 1079, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 9),
(131, 'Repellat beatae illo et odio.', 'Laborum non esse sunt libero amet. Sed et laudantium repudiandae officiis qui libero.', 'https://via.placeholder.com/640x480.png/00dd33?text=omnis', 2778, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 20),
(132, 'Ex non esse id reiciendis.', 'Ad quia maxime sapiente enim dignissimos et ipsam repudiandae. Quo animi qui eius dolores. Deleniti natus delectus quis unde.', 'https://via.placeholder.com/640x480.png/002288?text=dolor', 3040, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 16),
(133, 'Doloribus id corrupti ex molestiae consequatur.', 'Saepe tempora amet dicta totam. Aliquid ut provident quis veritatis quisquam est et rerum. Similique illo sapiente veniam non nesciunt sint soluta. Illo est consectetur occaecati.', 'https://via.placeholder.com/640x480.png/0044dd?text=molestiae', 1368, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(134, 'Debitis sunt ea vel.', 'Aut deleniti voluptatem nostrum et minus cupiditate. Quod minima voluptates architecto sunt earum est. Architecto vero saepe aut similique et qui nihil sint.', 'https://via.placeholder.com/640x480.png/003366?text=qui', 3451, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 8),
(135, 'Numquam reiciendis est quisquam placeat maiores.', 'Quia voluptas velit et voluptas quis. Quis qui fugit ut nobis sapiente occaecati culpa. Aliquid et fugiat rem odit sapiente beatae. A cumque esse quo ea.', 'https://via.placeholder.com/640x480.png/0088dd?text=debitis', 1033, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 6),
(136, 'Qui et maxime atque.', 'Sunt quibusdam quia nobis. Eligendi ea quo vero sint. Est illum iure et quis similique ut. Dolores dolor et dolorem sed id.', 'https://via.placeholder.com/640x480.png/00eedd?text=atque', 976, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 1),
(137, 'Et et non dignissimos autem cum.', 'Et eligendi nesciunt velit qui. Molestiae temporibus autem vero ducimus similique.', 'https://via.placeholder.com/640x480.png/00bbcc?text=sint', 2684, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(138, 'Iste ut praesentium dolore placeat exercitationem nisi.', 'Voluptate dolor voluptas consequuntur commodi et nihil eos. Nesciunt autem voluptatem aliquam tempore. Itaque adipisci ut qui saepe et.', 'https://via.placeholder.com/640x480.png/0011ee?text=nostrum', 2450, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 7),
(139, 'Deserunt asperiores deleniti corporis repellendus.', 'Vel voluptatum ex repudiandae ut in vel voluptas. Ab ut iusto deleniti quisquam dolorem adipisci assumenda. Corporis et fugiat consequatur rerum. Aspernatur harum amet fuga saepe et enim ea.', 'https://via.placeholder.com/640x480.png/00bbaa?text=nihil', 2623, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(140, 'Officia modi optio a soluta.', 'Quod quidem quia repellat sit voluptatibus non sed. Sed deserunt et illo magni. Quia magni est voluptatem aut rerum a. Nihil ea nulla expedita et repudiandae.', 'https://via.placeholder.com/640x480.png/00aa77?text=magnam', 3365, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(141, 'Hic ea rerum ut et.', 'Sed ipsam doloremque maxime doloribus mollitia debitis modi. Autem molestiae corporis est occaecati. Voluptas reprehenderit cupiditate maxime molestiae est sunt. Voluptatem et molestias aut.', 'https://via.placeholder.com/640x480.png/00ccdd?text=dicta', 3273, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 17),
(142, 'Consectetur recusandae quam recusandae tenetur.', 'Expedita quia eligendi accusantium enim et. Perspiciatis amet sunt minus sint aut. Eligendi distinctio maiores quam. Architecto est nihil recusandae minus est.', 'https://via.placeholder.com/640x480.png/0033ee?text=iste', 941, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 18),
(143, 'Nobis illum saepe corrupti a rerum sed.', 'Et vero rerum aut. Aliquam sequi cumque numquam ad harum impedit. Debitis culpa autem earum eos ratione. Consectetur voluptates voluptatum et illum.', 'https://via.placeholder.com/640x480.png/000099?text=cupiditate', 1347, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 19),
(144, 'Tenetur dolorum nesciunt dignissimos ex hic dolorem.', 'Ullam aperiam praesentium voluptatem quaerat consequatur eveniet unde. Et qui numquam autem et. Deserunt eaque sint voluptatem quidem. Dolores quia autem ea.', 'https://via.placeholder.com/640x480.png/009944?text=perspiciatis', 1522, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(145, 'Dolores reprehenderit magni animi voluptatem.', 'Nulla nihil voluptatem quae rerum. Facilis quo qui sunt qui. Ducimus maiores commodi quia explicabo quos. Molestias laboriosam asperiores accusamus illo explicabo ipsam.', 'https://via.placeholder.com/640x480.png/00ddee?text=accusamus', 2420, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 14),
(146, 'Et et sed aut suscipit.', 'Velit quis sunt quia ipsum expedita sed. Cupiditate qui iste velit saepe.', 'https://via.placeholder.com/640x480.png/0066bb?text=eligendi', 1686, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 2),
(147, 'Quam fugiat voluptate magni quia impedit quis.', 'Pariatur in tenetur officia vel. Nemo earum hic perspiciatis voluptas. Non consectetur aliquid incidunt. Dolor aut sit suscipit repellat sapiente.', 'https://via.placeholder.com/640x480.png/00ffff?text=voluptates', 1111, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 10),
(148, 'Sit deleniti ex aut.', 'Id exercitationem praesentium hic expedita dolor alias praesentium. Qui animi hic voluptates. Culpa quia quo quas ut.', 'https://via.placeholder.com/640x480.png/00ff00?text=quo', 1060, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(149, 'Voluptas vero dolorum laborum id et.', 'Aut et veritatis omnis voluptas mollitia optio et. Et nemo ut rem sed sed. Beatae aut omnis sit autem quod. Nulla aliquid culpa voluptas quia et sunt.', 'https://via.placeholder.com/640x480.png/0044dd?text=inventore', 912, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 17),
(150, 'Debitis vitae beatae adipisci.', 'Dolores dolor molestiae repellendus distinctio assumenda molestias non. Et velit laboriosam dignissimos unde quidem non iure. Aut omnis quisquam quia quis.', 'https://via.placeholder.com/640x480.png/009900?text=consequuntur', 1677, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 13),
(151, 'Temporibus enim accusantium ipsa voluptate.', 'Facilis aut est inventore voluptate magnam. Quasi non iste veniam harum temporibus consequatur. Necessitatibus quod dolor voluptatem numquam accusantium vel explicabo.', 'https://via.placeholder.com/640x480.png/00ccbb?text=quod', 1646, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 15),
(152, 'Sit quasi cumque unde.', 'Enim ea necessitatibus possimus ab. Vero qui recusandae porro in quis.', 'https://via.placeholder.com/640x480.png/00ccee?text=repudiandae', 1385, 1, '2025-02-17 11:29:06', '2025-02-17 11:29:06', NULL, 3),
(153, 'Natus accusantium consequatur voluptatibus harum delectus dolorum.', 'Qui qui cum in enim consequatur. Molestiae quaerat qui illo et velit quia. Ut qui id autem vel voluptatem earum.', 'https://via.placeholder.com/640x480.png/00ddff?text=delectus', 1415, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 17),
(154, 'Molestias quo blanditiis odio illum exercitationem.', 'Reiciendis quae est nobis. Voluptates voluptates velit dolores nesciunt. Consequatur provident ut rerum doloremque et.', 'https://via.placeholder.com/640x480.png/007733?text=quo', 2702, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 2),
(155, 'Dignissimos omnis omnis modi voluptatem ea sunt.', 'Ipsam labore optio quae ut. Temporibus facilis quaerat omnis nemo. Provident sit optio soluta enim ut porro et. Occaecati qui praesentium et voluptatem dicta ipsum voluptatem ea.', 'https://via.placeholder.com/640x480.png/009944?text=fugiat', 3108, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(156, 'In tempore rem eius cum nisi repellendus.', 'Facilis aut culpa quia hic. Ipsum quia doloremque dolorem est. Ut commodi voluptate et at laboriosam aut vel.', 'https://via.placeholder.com/640x480.png/00ff88?text=laboriosam', 2910, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 2);
INSERT INTO `posts` (`id`, `title`, `content`, `image`, `likes`, `is_published`, `created_at`, `updated_at`, `deleted_at`, `category_id`) VALUES
(157, 'Quam voluptatem sed est itaque voluptas.', 'Hic hic eos ea officiis et nemo quo qui. Reprehenderit dolor quia minus ducimus rerum unde quisquam. Nobis eos modi quae dolore voluptatum molestias.', 'https://via.placeholder.com/640x480.png/009966?text=qui', 2148, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 20),
(158, 'Sit aut fugiat molestiae.', 'Culpa est accusantium placeat fugit rerum minima vitae. Unde omnis itaque nihil et saepe.', 'https://via.placeholder.com/640x480.png/0044aa?text=et', 1335, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 17),
(159, 'Voluptas debitis perspiciatis molestiae vel.', 'Rerum sunt repellendus hic alias non error. Enim ut numquam dignissimos qui ea omnis. Explicabo fugit ab hic voluptatem eius iusto consequatur excepturi.', 'https://via.placeholder.com/640x480.png/009977?text=dignissimos', 2775, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 12),
(160, 'Enim cumque reprehenderit et autem incidunt vero.', 'Ad dolores unde eaque dolorum. Dolore itaque consectetur nemo necessitatibus fuga. Sit sit animi perspiciatis ea provident ut eos. Asperiores excepturi doloribus et ut.', 'https://via.placeholder.com/640x480.png/00bbcc?text=perspiciatis', 2841, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 15),
(161, 'Non adipisci voluptas voluptatem ut expedita ipsa.', 'Ut perspiciatis explicabo sit totam modi. Officia maiores minima exercitationem corporis nisi ut. Omnis cum ad et aperiam.', 'https://via.placeholder.com/640x480.png/00ff88?text=nulla', 1257, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 7),
(162, 'Nisi a magni eveniet architecto vero.', 'Facilis ex sunt eos modi consequatur sed. Perspiciatis sunt atque tempora unde sed nemo. Maxime sunt neque nihil quos praesentium perferendis. Maiores dolorum enim magni odio.', 'https://via.placeholder.com/640x480.png/000033?text=distinctio', 2775, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 20),
(163, 'Quis officia eum autem placeat delectus similique.', 'Mollitia sunt fuga animi illo distinctio suscipit. Autem illum iste voluptates. Voluptas esse aperiam sunt qui impedit. Enim non aut velit corrupti alias. Omnis sint illum deserunt et.', 'https://via.placeholder.com/640x480.png/004400?text=magnam', 2071, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(164, 'Ipsam id animi quam accusamus et cupiditate.', 'Totam error accusamus dolores deleniti illo perspiciatis. Alias odit est voluptatem id dolore perspiciatis.', 'https://via.placeholder.com/640x480.png/00ff22?text=quasi', 3058, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 10),
(165, 'Voluptas qui dolores voluptatibus non aut ab.', 'Qui modi tenetur fugiat optio delectus optio odit. Vel iusto enim sapiente molestiae velit ratione. Et quidem aut debitis sit et omnis est. Aut sed sed labore dolor repellat voluptatem officia.', 'https://via.placeholder.com/640x480.png/0044ff?text=nisi', 3, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(166, 'Repellendus voluptate modi autem vitae non.', 'Fuga ut ut repudiandae consequatur. Pariatur nobis minus ullam sapiente autem. Laboriosam veritatis et quo dignissimos. Sit ab quia distinctio nesciunt odio.', 'https://via.placeholder.com/640x480.png/002244?text=non', 2148, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 6),
(167, 'Ex non impedit facere et.', 'Officia voluptatibus ut itaque quia sunt deleniti cupiditate. Autem omnis sint nemo et adipisci velit vero. Voluptate voluptatem repudiandae ut sed soluta dicta autem.', 'https://via.placeholder.com/640x480.png/002255?text=dolor', 710, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 12),
(168, 'Aliquam et autem beatae.', 'Blanditiis maiores expedita cupiditate nisi ab aut atque. Nobis eaque sed nisi.', 'https://via.placeholder.com/640x480.png/003300?text=et', 2454, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 14),
(169, 'Porro debitis minima in veritatis.', 'Aspernatur ullam omnis sunt. In voluptates consequatur et dolorem nihil culpa repellendus voluptatem. Laboriosam tenetur quia consequatur maiores.', 'https://via.placeholder.com/640x480.png/000066?text=provident', 3276, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 18),
(170, 'Neque aut eum minus delectus aut corrupti.', 'Eum velit fugiat minus harum. Eum suscipit enim aperiam nisi officia molestiae sunt velit.', 'https://via.placeholder.com/640x480.png/000000?text=excepturi', 1435, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 18),
(171, 'Dolor provident neque labore possimus aliquam.', 'Non non ut voluptatem sunt ipsa dolores sit. Ea cum odio voluptatem fugit. Consequuntur voluptas tempore nihil labore. Iusto labore sit eaque est voluptatum error. Porro sed autem aut nihil velit.', 'https://via.placeholder.com/640x480.png/004455?text=nulla', 1778, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(172, 'Quis quam tempora sint recusandae.', 'Quas unde est sit in deleniti consequatur. Velit aut labore repudiandae nisi neque.', 'https://via.placeholder.com/640x480.png/008844?text=asperiores', 3346, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 18),
(173, 'A qui nobis quia cum.', 'Est repellendus quam praesentium qui vel. Ea voluptatem occaecati in repudiandae omnis quos. Velit eligendi qui suscipit tempore aut eligendi.', 'https://via.placeholder.com/640x480.png/008800?text=explicabo', 1613, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 20),
(174, 'Totam molestias ea et ipsam labore eius.', 'Aperiam et autem ex quaerat. Accusantium corporis officiis at quidem doloribus quam maxime non. Eligendi corporis sit debitis voluptates dolorem.', 'https://via.placeholder.com/640x480.png/0044aa?text=et', 1322, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 12),
(175, 'Eaque corporis non quae nobis.', 'Saepe corporis fuga sed ducimus qui quae sed voluptatem. Nemo voluptate quos animi eveniet. Deleniti officia et consequatur reiciendis.', 'https://via.placeholder.com/640x480.png/00ff55?text=unde', 277, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 13),
(176, 'Voluptates sapiente qui deserunt.', 'Aut consequatur necessitatibus in tenetur et veniam. Alias a illum rem maiores deleniti aut et amet.', 'https://via.placeholder.com/640x480.png/00eeee?text=dignissimos', 621, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 1),
(177, 'Laborum voluptatem earum sapiente.', 'Autem quibusdam occaecati sequi velit inventore. Accusamus sed amet id quis.', 'https://via.placeholder.com/640x480.png/007788?text=non', 1584, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 1),
(178, 'Voluptatem laboriosam veritatis eaque consequatur quae.', 'Ut non maiores aspernatur dolorem delectus maiores aliquid. Debitis repellat ut ut eos. Veritatis architecto rerum fugit. Magni aut velit praesentium dolorem quia nulla tenetur.', 'https://via.placeholder.com/640x480.png/0000ee?text=eum', 3409, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 14),
(179, 'Voluptas numquam neque excepturi.', 'Dolorem officiis commodi rerum. Sapiente optio et ullam sed.', 'https://via.placeholder.com/640x480.png/001144?text=molestiae', 2684, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 16),
(180, 'Sint rerum nesciunt consequatur eveniet adipisci velit.', 'Quia ut labore soluta. Beatae optio vel et. Quae distinctio et beatae impedit nemo numquam. Repudiandae aspernatur voluptatem quia officia odit quaerat.', 'https://via.placeholder.com/640x480.png/00bbdd?text=aut', 1639, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(181, 'Debitis est soluta vel.', 'Et provident officia quaerat itaque. Eum ad voluptas et quae. Perspiciatis voluptatem rerum suscipit labore animi dolor. Ducimus atque eos eveniet dignissimos. Perspiciatis rerum quis quia totam.', 'https://via.placeholder.com/640x480.png/004411?text=dignissimos', 1440, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 14),
(182, 'Quisquam et iusto totam voluptates at quia.', 'Asperiores commodi consequuntur id quia ut. Eum harum et nulla quis doloremque. Quia ipsam iste quia cum ea. Eaque iste ea vero exercitationem.', 'https://via.placeholder.com/640x480.png/003355?text=consectetur', 1998, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 18),
(183, 'Labore et provident consequatur earum.', 'Fuga eos totam alias aspernatur et aliquid. Voluptas et autem dolor molestiae. Commodi ut ut ipsum nihil. Sit veritatis et aut doloribus sed quos repellendus. Eos quam ducimus consequatur et rerum.', 'https://via.placeholder.com/640x480.png/00dddd?text=temporibus', 921, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 10),
(184, 'Deleniti voluptates laborum quae maxime.', 'Quo consequuntur reprehenderit placeat consequatur et. Sapiente numquam quos enim eum vero ut. Et voluptatibus molestiae magnam.', 'https://via.placeholder.com/640x480.png/00aa66?text=facilis', 1149, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 19),
(185, 'Dolor tenetur est ea.', 'Aut fuga omnis in nihil animi veritatis molestiae. Expedita consequuntur unde modi suscipit. Quo itaque rerum dolores. Consectetur saepe est delectus molestiae dolores.', 'https://via.placeholder.com/640x480.png/00ff77?text=velit', 3447, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 10),
(186, 'Aut temporibus ducimus omnis.', 'Iste sed sint error sit vel nam iusto aspernatur. A fugiat velit quisquam sequi. Aut nihil esse et qui velit sed.', 'https://via.placeholder.com/640x480.png/004411?text=autem', 1255, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 14),
(187, 'Excepturi voluptatem ab neque voluptas accusamus.', 'Voluptas id et architecto dolorum tempore. Ut et reiciendis officiis quia beatae quas quaerat.', 'https://via.placeholder.com/640x480.png/00eecc?text=consequatur', 2380, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 7),
(188, 'Culpa dolor quae dolorum quibusdam possimus et.', 'Voluptatem quo officia praesentium occaecati nam. Deserunt esse molestiae consequatur qui quis eaque iure. Magnam quis architecto sunt nihil. Velit eligendi dignissimos aliquam et optio.', 'https://via.placeholder.com/640x480.png/001100?text=facilis', 3469, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 9),
(189, 'Libero ipsam voluptatem asperiores quis similique.', 'Architecto hic recusandae numquam eaque labore quo. Vel blanditiis ipsa et sint. Sit facere aut labore cumque vel et.', 'https://via.placeholder.com/640x480.png/0066bb?text=hic', 941, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 16),
(190, 'Aliquam necessitatibus voluptatibus quod.', 'Rerum tempora sit est id aperiam iste facilis mollitia. Corporis consequatur impedit provident eveniet. Ipsum sequi impedit quod nisi unde qui nesciunt.', 'https://via.placeholder.com/640x480.png/009900?text=quia', 188, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 14),
(191, 'Repellendus laudantium est error ratione rem.', 'Dolor fugit quia ipsa quaerat recusandae. Fuga ut nostrum natus sit explicabo aspernatur accusamus quasi. Et consequatur illo voluptatem illo sequi atque aut id.', 'https://via.placeholder.com/640x480.png/00aa33?text=vitae', 2167, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 5),
(192, 'Dicta eum asperiores voluptas sunt eum vitae omnis.', 'Est possimus dolorum perspiciatis quis ea. Officia et sequi rerum et eum. Aut blanditiis aut nulla ut provident neque voluptates. Rem doloribus in atque distinctio asperiores nemo explicabo enim.', 'https://via.placeholder.com/640x480.png/00dddd?text=est', 3092, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(193, 'Et voluptatem ut assumenda.', 'Quo nulla sed non aperiam consequatur sed illo ea. Eos fugit qui libero incidunt nihil vel quae. Ratione ducimus reiciendis et aperiam enim.', 'https://via.placeholder.com/640x480.png/004444?text=ratione', 2557, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 15),
(194, 'Et eum aliquid et nostrum quis.', 'Tempore enim assumenda temporibus aut et possimus ea. Eveniet quod repellendus assumenda est atque inventore. Expedita laudantium eveniet sunt dolorum et.', 'https://via.placeholder.com/640x480.png/004433?text=enim', 157, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 19),
(195, 'Ipsa doloribus et sunt voluptatem.', 'Ea voluptatem autem velit. Est ipsam consequuntur et ab. Asperiores non non maxime tempora a nulla. Non rerum fugit asperiores quis corporis et.', 'https://via.placeholder.com/640x480.png/00ee00?text=in', 2705, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 4),
(196, 'Provident rem repellendus sit.', 'Sed omnis vel autem aut est. Omnis numquam et debitis qui. Cumque cupiditate ea explicabo. Fugiat eos tempore ipsum exercitationem dolorem blanditiis fuga et.', 'https://via.placeholder.com/640x480.png/00ee00?text=magni', 3139, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 8),
(197, 'Doloremque rerum consequatur accusamus et.', 'Earum dignissimos voluptatem consequuntur eum unde. Enim est autem saepe ea totam odio. Consequuntur et aut unde non quis sit.', 'https://via.placeholder.com/640x480.png/00aa55?text=sunt', 1268, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 6),
(198, 'Cumque qui et cumque necessitatibus ea ex.', 'Officia aliquid mollitia totam. Quisquam recusandae dolore magnam ipsa enim minima repellendus. Deserunt culpa ex ut quis voluptas cupiditate consequatur. Et illo suscipit in alias.', 'https://via.placeholder.com/640x480.png/008822?text=numquam', 2563, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 14),
(199, 'Maxime dolor at et in quidem maxime.', 'Eius atque deserunt sit dolor sed. Explicabo laudantium ullam earum fuga laboriosam. Nesciunt iure doloremque quisquam. Et iure corrupti quos similique.', 'https://via.placeholder.com/640x480.png/00dd11?text=cupiditate', 2403, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 13),
(200, 'Aliquid autem veniam eligendi.', 'Aut assumenda vel sit deserunt laboriosam consequatur tempora sed. Id eligendi consequuntur dolorum eaque nihil ut necessitatibus. Voluptatem est tempore repellendus alias voluptates quam.', 'https://via.placeholder.com/640x480.png/0011cc?text=et', 778, 1, '2025-02-17 11:29:07', '2025-02-17 11:29:07', NULL, 11),
(201, 'alsdjakdjakldjas', '123123123123', 'image123123123.jpeg', NULL, 1, '2025-02-20 13:37:01', '2025-02-20 15:19:28', '2025-02-20 15:19:28', 13),
(202, 'Boris', 'Some content', 'blabla.jpeg', 20, 1, '2025-02-22 18:44:55', '2025-02-22 18:44:55', NULL, 2),
(203, 'Boris', 'Some content', 'blabla.jpeg', 20, 1, '2025-02-22 18:45:32', '2025-02-22 18:45:32', NULL, 2),
(204, 'Boris', 'Some content', 'blabla.jpeg', 20, 1, '2025-02-22 18:49:51', '2025-02-22 18:49:51', NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ETNn575qbBRSJwnIdjvRWfpXm3vihPM6AHhkVNd7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODE4dDhQcktXeWFMSlpGWVhuTUJkaUF0RjZtWGJoejJVSGhZUlYzQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740264184),
('nTUmVByF7UASg79a53Aer62hvAYpTieQgrSXxw9K', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEtyUkVLT21oWmtOakk2aDNWTlhBenp2Z0V5RmZnOG1obVhjRDFuTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740264314),
('y1HN7GJLkAntU2BFYbiNxvxOgGfVQpn862FmgA4d', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTXZaMTN3cmZnWWxKNlV0YlJVUjlLcnN5TzZMazdYaTRjaGtZSWM0RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wb3N0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc0MDI1MzczOTt9fQ==', 1740254316);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', 'user', '2025-02-17 11:29:07', '$2y$12$LjLKp.Z.tEFlAdP4uPmiN.AFW4eI1qLt81.WEI72Gs0Q9FSO2X.Q.', 'qGRU65jKcF', '2025-02-17 11:29:07', '2025-02-17 11:29:07'),
(2, 'Vlad', 'vladstarovoit627@gmail.com', 'admin', NULL, '$2y$12$ByX8tn1dLckyFHCG6TBbyOjpw6nImPt21KupchdbcuqCEzLedrYey', 'OGlAkkYFvvTDs2UWZ8HbQ4dvU1GrebM77KBdRqTHp4FSRVE30gl7VFm1adf4', '2025-02-21 12:26:24', '2025-02-21 12:26:24');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
