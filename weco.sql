-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 30 mars 2026 à 09:33
-- Version du serveur : 9.4.0
-- Version de PHP : 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `weco`
--

-- --------------------------------------------------------

--
-- Structure de la table `catégories`
--

CREATE TABLE `catégories` (
  `id` bigint UNSIGNED NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catégories`
--

INSERT INTO `catégories` (`id`, `categorie`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Article', 'Article', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(2, 'Problème', 'Problème', '2026-03-24 19:50:48', '2026-03-24 19:50:48');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint UNSIGNED NOT NULL,
  `Id_user` bigint UNSIGNED NOT NULL,
  `Id_publication` bigint UNSIGNED NOT NULL,
  `content_com` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `Id_user`, `Id_publication`, `content_com`, `created_at`, `updated_at`) VALUES
(1, 2, 17, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi culpa quaerat ea porro eum sint libero! Labore explicabo ut ad cupiditate odit, nisi asperiores veritatis autem error quisquam enim debitis!', '2026-03-26 12:13:17', '2026-03-26 12:13:17'),
(2, 2, 11, 'teste', '2026-03-26 10:56:56', '2026-03-26 10:56:56'),
(3, 2, 35, 'libero unde ullam magnam incidunt quaerat ratione sint asperiores. Sapiente optio dolore perspiciatis excepturi asperiores.', '2026-03-26 10:59:07', '2026-03-26 10:59:07'),
(4, 1, 17, 'cum voluptas quo magnam optio perferendis iusto? Omnis voluptatibus distinctio laboriosam, sed alias incidunt similique asperiores earum quibusdam, minus, aliquid nemo reprehenderit eum. Laborum sequi obcaecati incidunt repellat aperiam adipisci delectus, dolore ut illum accusantium cumque doloribus assumenda a perferendis eos nulla non modi? Deleniti maiores tempora porro fugiat esse officia dicta voluptate placeat, non, maxime soluta, corporis cumque nesciunt ducimus aspernatur est. Distinctio eveniet impedit et minima dolorem.', '2026-03-26 11:00:47', '2026-03-26 11:00:47'),
(5, 1, 11, 'accusantium mollitia architecto autem, placeat pariatur, esse sed saepe minus illo eum voluptatem distinctio! Tenetur ad perspiciatis rerum accusamus id distinctio ut doloribus ipsa harum maxime facere,', '2026-03-26 11:05:15', '2026-03-26 11:05:15'),
(6, 5, 35, 'Mety ka', '2026-03-26 11:09:34', '2026-03-26 11:09:34'),
(7, 6, 35, 'mety', '2026-03-26 11:43:08', '2026-03-26 11:43:08'),
(8, 2, 17, 'teste', '2026-03-27 01:24:37', '2026-03-27 01:24:37'),
(9, 7, 5, 'Mety be', '2026-03-27 01:32:46', '2026-03-27 01:32:46'),
(10, 1, 37, 'Wow', '2026-03-27 01:39:55', '2026-03-27 01:39:55'),
(11, 2, 36, 'ILYBIDKHTTYBIKYDLMB', '2026-03-29 06:20:30', '2026-03-29 06:20:30'),
(12, 2, 15, 'Pretty \nlittle baby', '2026-03-29 11:24:54', '2026-03-29 11:24:54');

-- --------------------------------------------------------

--
-- Structure de la table `contenirs`
--

CREATE TABLE `contenirs` (
  `id` bigint UNSIGNED NOT NULL,
  `Id_domaine` bigint UNSIGNED NOT NULL,
  `User_Id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contenirs`
--

INSERT INTO `contenirs` (`id`, `Id_domaine`, `User_Id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(2, 3, 1, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(3, 4, 1, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(4, 3, 2, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(5, 4, 2, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(6, 6, 2, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(7, 1, 3, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(8, 2, 3, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(9, 6, 3, '2026-03-24 19:50:49', '2026-03-24 19:50:49'),
(10, 1, 4, '2026-03-25 04:40:03', '2026-03-25 04:40:03'),
(11, 2, 4, '2026-03-25 04:40:03', '2026-03-25 04:40:03'),
(12, 5, 4, '2026-03-25 04:40:03', '2026-03-25 04:40:03'),
(13, 2, 5, '2026-03-25 19:56:53', '2026-03-25 19:56:53'),
(14, 5, 5, '2026-03-25 19:56:53', '2026-03-25 19:56:53'),
(15, 6, 5, '2026-03-25 19:56:53', '2026-03-25 19:56:53'),
(16, 2, 6, '2026-03-26 11:40:22', '2026-03-26 11:40:22'),
(17, 3, 6, '2026-03-26 11:40:22', '2026-03-26 11:40:22'),
(18, 6, 6, '2026-03-26 11:40:22', '2026-03-26 11:40:22'),
(19, 3, 7, '2026-03-27 01:30:58', '2026-03-27 01:30:58'),
(20, 4, 7, '2026-03-27 01:30:58', '2026-03-27 01:30:58'),
(21, 5, 7, '2026-03-27 01:30:58', '2026-03-27 01:30:58');

-- --------------------------------------------------------

--
-- Structure de la table `domaines`
--

CREATE TABLE `domaines` (
  `id` bigint UNSIGNED NOT NULL,
  `Domaine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `domaines`
--

INSERT INTO `domaines` (`id`, `Domaine`, `created_at`, `updated_at`) VALUES
(1, 'Technologie', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(2, 'Musique', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(3, 'Programmation', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(4, 'Design', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(5, 'Santé', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(6, 'Sport', '2026-03-24 19:50:48', '2026-03-24 19:50:48'),
(7, 'Son', '2026-03-26 11:41:57', '2026-03-26 11:41:57');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_02_25_102356_create_catégories_table', 1),
(6, '2026_02_25_103801_create_domaines_table', 1),
(7, '2026_02_25_185053_create_publications_table', 1),
(8, '2026_02_25_190508_create_commentaires_table', 1),
(9, '2026_03_24_201659_create_contenirs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `publications`
--

CREATE TABLE `publications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsDraft` tinyint(1) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `id_categorie` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_domaine` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `publications`
--

INSERT INTO `publications` (`id`, `title`, `content`, `IsDraft`, `images`, `slug`, `user_id`, `id_categorie`, `created_at`, `updated_at`, `id_domaine`) VALUES
(1, 'Illo cumque magni culpa nihil aliquid nostrum ut repellendus.', 'Aspernatur eius fuga iure. Veritatis in qui vel architecto voluptatem natus. Totam harum hic et ea et unde voluptas. Vero ea ratione hic quia dolorem.\n\nQui et error nihil autem quisquam asperiores rerum. Placeat dolorem consequatur consequatur numquam temporibus consequatur nihil libero. Unde voluptas tenetur ipsa aut.\n\nEt mollitia incidunt aliquam. Nam eius totam quas omnis iure nam. Repellat eum sint voluptatem et incidunt. Et numquam expedita culpa rerum quia sequi.', 0, 'https://picsum.photos/seed/4213/640/480', 'Illo cumque magni culpa nihil aliquid nostrum ut repellendus.', 1, 2, '2026-02-14 18:53:41', '2026-02-14 18:53:41', 6),
(2, 'Ea soluta quia nam quam sit qui.', 'Molestiae facere omnis quidem ullam quasi ut. Quam enim natus ullam sit. Nobis beatae illo facilis est. Ducimus sed et fugit alias. Est fugiat delectus et adipisci.\n\nNon sapiente aut voluptates blanditiis perferendis accusamus. Soluta error aut eius assumenda doloremque. Saepe sed et modi maiores vel. Natus nisi eos autem mollitia ullam vitae aliquid.\n\nCumque iste exercitationem illum vitae et illum. Repellat suscipit non repellendus et. Labore saepe facere illo libero. Corporis dolores dolores est necessitatibus nemo ea id.', 0, 'https://picsum.photos/seed/1638/640/480', 'Ea soluta quia nam quam sit qui.', 3, 2, '2026-03-07 14:12:19', '2026-03-07 14:12:19', 1),
(3, 'Ad quia quia sunt sunt.', 'Quos atque facilis possimus vero. Quaerat ut hic itaque et error. Repellat voluptas eum voluptatem laboriosam ut ullam. Qui dolores natus minus et.\n\nVoluptate soluta alias nihil non eaque omnis facilis voluptatem. Dolores accusantium ipsam modi at temporibus voluptas praesentium. Labore magnam sit harum minus et fugiat et.\n\nQuia consectetur in ut perferendis assumenda incidunt. Eum odit earum et consequatur. Saepe in nisi voluptate quae.', 0, 'https://picsum.photos/seed/152/640/480', 'Ad quia quia sunt sunt.', 3, 2, '2026-02-07 01:54:15', '2026-02-07 01:54:15', 3),
(4, 'Enim voluptas aliquid non esse repellendus praesentium.', 'Consequatur ducimus voluptatem dolores vel non. Dolorem exercitationem aperiam et commodi. Sequi reiciendis ducimus reprehenderit in est illo.\n\nRepellat eligendi qui nostrum facilis mollitia harum. Veniam quia perspiciatis consequatur rem veritatis quo vel. Distinctio culpa neque in minima. Repellendus est enim ex.\n\nVoluptas sed rerum aut tenetur. Error ullam at nostrum aliquid eos.', 0, 'https://picsum.photos/seed/5259/640/480', 'Enim voluptas aliquid non esse repellendus praesentium.', 3, 2, '2026-03-20 19:20:42', '2026-03-20 19:20:42', 5),
(5, 'Architecto eos assumenda aut occaecati sunt.', 'Numquam itaque non praesentium tempora. Qui eius vero quae eligendi assumenda quod dolore. Sit dolorum voluptatum asperiores quis. Commodi tempora doloribus qui id rerum eveniet harum esse.\n\nSaepe ad magnam sint id quidem eveniet velit cupiditate. Hic harum quia ut esse nihil. Maxime quae molestiae dolore aut. Eaque beatae aliquam excepturi sit aut.\n\nPerspiciatis illo accusantium cum omnis quae sit distinctio. Doloribus id nesciunt saepe quod harum provident quaerat. Omnis cupiditate qui autem tenetur ratione.', 0, 'https://picsum.photos/seed/5622/640/480', 'Architecto eos assumenda aut occaecati sunt.', 1, 1, '2026-03-04 11:36:50', '2026-03-04 11:36:50', 4),
(6, 'Voluptatem temporibus harum rem illo deleniti et.', 'Necessitatibus in aut consequatur cum qui dolorum nesciunt. Sit numquam vitae aut. Assumenda accusantium ut nesciunt quae.\n\nNumquam et consectetur qui incidunt. Dignissimos aut in ut optio totam eius error. Error iste molestiae voluptatem accusantium aliquid cum. Placeat voluptatibus hic dolore quaerat.\n\nTotam harum atque eaque cum illo doloribus. Molestiae non nisi consectetur labore asperiores. Non error exercitationem dolorum excepturi numquam facilis suscipit. Aut quia quam at quibusdam quaerat voluptatem harum.', 0, 'https://picsum.photos/seed/7903/640/480', 'Voluptatem temporibus harum rem illo deleniti et.', 3, 2, '2026-02-15 16:46:00', '2026-02-15 16:46:00', 4),
(7, 'Saepe consequuntur sint impedit nisi facilis ratione.', 'Molestiae tenetur accusantium voluptate illo modi. Nulla occaecati sit qui sapiente amet soluta. Odio eum debitis dolor ea ab hic. Velit laborum vitae voluptatem non ut sed pariatur.\n\nCulpa aut aut non rerum deleniti. Accusamus aut qui nihil omnis. Repellat itaque eligendi sed et cumque dolorem.\n\nEst consequatur quos nam ab. Velit illo animi dicta molestiae minus.', 0, 'https://picsum.photos/seed/140/640/480', 'Saepe consequuntur sint impedit nisi facilis ratione.', 1, 1, '2026-02-22 01:44:13', '2026-02-22 01:44:13', 6),
(8, 'Ab voluptatum cumque ipsum recusandae quod provident a.', 'Aut saepe consectetur sit quam optio. Sit expedita rerum esse deserunt magnam explicabo. Placeat expedita laborum porro explicabo.\n\nQui natus quisquam cupiditate consequatur quia rerum. Et sed adipisci illo autem rerum deleniti magnam. Dolores suscipit illum eum amet.\n\nQuisquam distinctio vitae ab fugit. Doloremque autem praesentium quasi debitis. Officiis esse excepturi aspernatur aut fuga nostrum ut molestiae. Voluptatem quia voluptas delectus aut voluptatibus asperiores.', 0, 'https://picsum.photos/seed/4156/640/480', 'Ab voluptatum cumque ipsum recusandae quod provident a.', 3, 1, '2026-02-01 03:48:07', '2026-02-01 03:48:07', 5),
(9, 'Ut minus aliquam sed voluptatem.', 'Sequi voluptate qui aut vitae. Doloremque id non non similique et. Qui quia non sapiente deleniti.\n\nQuasi numquam dolore doloribus in quisquam harum doloremque. Eaque minima non et quis. Sit magnam dolorum cupiditate eveniet.\n\nEst voluptate repellendus explicabo quia dolorem sed. Non iste reprehenderit a velit labore aliquid dicta ut. Placeat molestias dolorem veniam tempora. Minima autem dicta molestias consequatur quo quidem laboriosam.', 0, 'https://picsum.photos/seed/9624/640/480', 'Ut minus aliquam sed voluptatem.', 2, 2, '2026-03-17 17:32:56', '2026-03-17 17:32:56', 4),
(10, 'Molestiae dolorum in saepe ducimus est.', 'Aspernatur impedit tempore odio ut animi est. Et consequatur animi optio et. Ut blanditiis deserunt mollitia harum reprehenderit quaerat.\n\nPossimus harum iure quas voluptatem ut totam distinctio qui. Ut odio qui optio ipsa. Aut ut perspiciatis voluptatem doloribus recusandae totam et expedita.\n\nAccusantium et id amet voluptatibus est et dignissimos. Eaque dignissimos vel ut quam et dolorem libero maiores. Doloremque dolorem ipsam qui modi vero tenetur. Ad voluptatem molestias qui sequi voluptas nobis.', 0, 'https://picsum.photos/seed/1732/640/480', 'Molestiae dolorum in saepe ducimus est.', 3, 2, '2026-03-11 07:39:27', '2026-03-11 07:39:27', 2),
(11, 'Pariatur et voluptas nisi iure quis.', 'Et illum ut ut illum culpa. Id animi dignissimos et qui et eos. Ut voluptatum sit quia quisquam vel libero accusantium. Voluptas corrupti vero nulla et fugit expedita.\n\nQui animi ea sequi ipsum sunt voluptas inventore. Harum ipsam quasi perspiciatis magni. Harum quia sed eos inventore qui cum.\n\nQuo provident non provident maiores quos qui rerum. Sit corrupti id quasi consectetur doloremque labore. Natus sit earum laborum. Earum autem ea molestiae ut itaque.', 0, 'https://picsum.photos/seed/9603/640/480', 'Pariatur et voluptas nisi iure quis.', 3, 1, '2026-03-17 01:10:53', '2026-03-17 01:10:53', 4),
(12, 'Harum quia et autem dolores tempore molestiae.', 'Dolor quia iusto itaque laudantium. Odit laborum possimus nihil facere commodi eum rerum. Est non est consequatur quam.\n\nSuscipit commodi neque rerum sapiente beatae non quas. Aut ducimus atque ea delectus exercitationem. Ratione aliquam sint doloribus omnis quia omnis velit. Dolores in reprehenderit consequatur et nisi. Aspernatur dolor sunt non nisi et sit et doloremque.\n\nQui quisquam doloribus quia voluptas qui ipsum. Eveniet corporis laborum quia. Vel beatae odio autem recusandae est. Qui ipsum id harum exercitationem explicabo.', 0, 'https://picsum.photos/seed/7141/640/480', 'Harum quia et autem dolores tempore molestiae.', 2, 2, '2026-02-01 05:53:41', '2026-02-01 05:53:41', 1),
(13, 'Cupiditate fuga rerum eveniet tempora perspiciatis.', 'Aliquid est cum totam accusamus tempore voluptatum accusamus. Et dolorem ipsa est distinctio alias sed eius. Eligendi mollitia ad et tenetur pariatur omnis eveniet. Delectus repellendus rem voluptatem officia.\n\nVoluptatibus aut in sapiente quis a quo accusantium. Ab omnis dolore ex id ex. Deserunt non ut expedita quia culpa. Et voluptas eum provident.\n\nModi occaecati laudantium qui. Totam aut velit quo. Ad nulla modi rerum ipsam nostrum alias. Tenetur tempore enim expedita.', 0, 'https://picsum.photos/seed/6912/640/480', 'Cupiditate fuga rerum eveniet tempora perspiciatis.', 1, 2, '2026-03-22 03:31:11', '2026-03-22 03:31:11', 5),
(14, 'Facilis amet incidunt iste.', 'Recusandae culpa et iure officia perferendis voluptatem. Cupiditate atque corrupti id dolor.\n\nLaboriosam tempora velit aliquam nesciunt dolor similique. Quia in a dicta et facere molestiae labore natus. Rerum tempore praesentium quia libero eum. Iure quisquam sapiente deleniti.\n\nEnim quis distinctio qui eaque molestiae. Facere consequuntur quia suscipit nihil occaecati. Dolores a voluptatem corporis eius corrupti cum.', 0, 'https://picsum.photos/seed/1258/640/480', 'Facilis amet incidunt iste.', 3, 2, '2026-03-16 21:13:33', '2026-03-16 21:13:33', 6),
(15, 'Sunt ea fuga quae voluptatibus.', 'Corrupti laborum eos optio autem corporis officia. Nulla omnis mollitia autem sit facere iure quod. Cum eos necessitatibus delectus praesentium doloremque autem.\n\nQuod at consequuntur aliquam pariatur consequatur quo vitae consequatur. Eos inventore commodi provident rem molestiae. Nihil nulla architecto qui aut provident. Rerum maxime ut et delectus excepturi reprehenderit sit. Voluptatibus corporis ut optio nobis repudiandae.\n\nMolestias tempore quam dolor odio. Iusto laboriosam ut incidunt impedit accusamus repellat. Natus commodi numquam mollitia voluptatem dolorem. Recusandae ut rerum ut voluptatem.', 0, 'https://picsum.photos/seed/9860/640/480', 'Sunt ea fuga quae voluptatibus.', 3, 1, '2026-03-21 18:21:23', '2026-03-21 18:21:23', 1),
(16, 'Nesciunt et laborum corporis sit sunt.', 'Cum voluptatem et mollitia cumque. Molestias delectus culpa voluptatem veniam. Commodi ut ab voluptatem rerum dolorum.\n\nRepellendus molestiae facere amet vel. Veritatis quia quo a consequatur. Vero nemo voluptatibus est ut adipisci eum.\n\nEa sit perferendis ut quis rerum eligendi eius. Quo quia est dolores natus nemo voluptates qui. Nostrum sint ut voluptatibus commodi. Aut alias saepe adipisci et cumque aperiam amet.', 0, 'https://picsum.photos/seed/9262/640/480', 'Nesciunt et laborum corporis sit sunt.', 2, 1, '2026-02-27 06:49:36', '2026-02-27 06:49:36', 6),
(17, 'Aspernatur id ipsum aut ut quis.', 'Et perferendis reprehenderit similique tempora corporis. Iusto libero laboriosam sit dicta. Repellendus occaecati quia aut cupiditate mollitia modi.\n\nAut labore ullam quas reprehenderit officia. Distinctio aut et alias. Officia quia illo magni non voluptatibus sed porro. Consequatur minus sint commodi iste.\n\nExcepturi omnis ducimus excepturi enim et tempora sint nesciunt. Esse et quis non unde officia voluptates. Nihil autem et atque reprehenderit magni laboriosam.', 0, 'https://picsum.photos/seed/6158/640/480', 'Aspernatur id ipsum aut ut quis.', 1, 1, '2026-03-23 11:28:54', '2026-03-23 11:28:54', 4),
(18, 'Perspiciatis consequuntur et fugit quis.', 'Repellat dolore aliquam similique dolor modi ipsa sapiente. Consequuntur tempora facere voluptatum. Et odit et illo et ratione. Et officia iure ab velit. Vero voluptate veniam maiores ad soluta.\n\nId perferendis omnis nihil totam et quae. Dolorem repellendus repudiandae dolores dicta debitis nemo. Libero aliquam et ut quibusdam doloribus saepe consequatur sapiente.\n\nVoluptatem quis quam vitae in temporibus aliquam aspernatur laborum. Dolorem voluptas nulla quia occaecati. Minima incidunt maiores explicabo commodi.', 0, 'https://picsum.photos/seed/2075/640/480', 'Perspiciatis consequuntur et fugit quis.', 2, 2, '2026-01-26 16:51:42', '2026-01-26 16:51:42', 1),
(19, 'Illo ab est natus magni recusandae.', 'Cumque sint vel error architecto. Omnis enim sunt aut quaerat quia. Quibusdam repellendus ipsa perspiciatis illo qui. Quia quidem dolorum in delectus iure.\n\nEum et quo libero mollitia. Maxime nesciunt numquam nisi id. Nesciunt accusamus soluta esse in vel ullam. Et et deserunt veniam quas.\n\nAtque aut et ducimus occaecati. Aliquid eos deleniti labore est. Voluptas qui qui molestiae laudantium sit qui.', 0, 'https://picsum.photos/seed/8416/640/480', 'Illo ab est natus magni recusandae.', 2, 2, '2026-03-05 02:09:31', '2026-03-05 02:09:31', 2),
(20, 'A distinctio quod qui dolor.', 'Nostrum commodi debitis quisquam modi fuga. Quae distinctio rem doloremque non. Sit animi numquam voluptates doloribus laborum et eveniet.\n\nQuod possimus ex quasi. Doloribus quidem doloribus iure iste ut. Ratione sunt est est autem.\n\nNesciunt possimus dignissimos ut velit id. Ipsa dolores quo sint soluta. Quo quae incidunt enim ad.', 0, 'https://picsum.photos/seed/708/640/480', 'A distinctio quod qui dolor.', 3, 1, '2026-02-01 04:56:13', '2026-02-01 04:56:13', 5),
(21, 'Debitis suscipit aspernatur quia repellat praesentium.', 'Sint facere libero libero. Numquam nisi quibusdam enim saepe. Cumque doloribus rerum rem dolor perspiciatis adipisci culpa. Amet pariatur sit fugit molestiae voluptatem doloribus excepturi possimus.\n\nAmet qui corrupti quia quae voluptate ut. Sed molestiae et aperiam optio aut qui voluptatum. Quaerat quam voluptatum architecto et.\n\nVel voluptas explicabo pariatur sequi sequi. Eos velit et et cumque sed. Explicabo eveniet veniam nostrum sapiente deleniti. Ut incidunt quisquam eaque ipsa beatae non praesentium error.', 0, 'https://picsum.photos/seed/9669/640/480', 'Debitis suscipit aspernatur quia repellat praesentium.', 1, 2, '2026-01-30 12:16:59', '2026-01-30 12:16:59', 6),
(22, 'Enim in temporibus tenetur omnis enim ea.', 'Mollitia vel quia dolorum quo veniam est et. Culpa placeat aliquam nisi consectetur. Quo et non et ut iure. Et dolorem rerum magni sit est.\n\nUt consectetur voluptas velit nam dolorem voluptatem doloribus. Cupiditate exercitationem quia magnam inventore. Velit fuga ut illo. Aliquid magnam sed exercitationem deleniti est corporis nihil.\n\nAliquam recusandae nam consequuntur in magni laudantium aut. Similique iste vitae occaecati consectetur minus natus. Quis numquam maxime hic dolores vel iste non.', 0, 'https://picsum.photos/seed/3913/640/480', 'Enim in temporibus tenetur omnis enim ea.', 1, 2, '2026-01-25 13:22:27', '2026-01-25 13:22:27', 6),
(23, 'Dolorum dolorem est numquam perspiciatis quod quod impedit voluptas.', 'Vel et rerum fugiat esse qui deserunt sint. Perspiciatis et qui quibusdam ea. Sit quia aut voluptas rerum doloribus deleniti.\n\nCommodi laboriosam veritatis in aliquid. Omnis aut aut numquam et cupiditate debitis earum. Modi consequuntur nesciunt ipsa repudiandae neque assumenda neque nam.\n\nMinima et iure vel modi nihil. Hic sed voluptatem ea aut.', 0, 'https://picsum.photos/seed/613/640/480', 'Dolorum dolorem est numquam perspiciatis quod quod impedit voluptas.', 3, 1, '2026-02-23 07:50:20', '2026-02-23 07:50:20', 6),
(24, 'Impedit velit laboriosam voluptatem quam qui voluptatem animi.', 'Dicta velit quos necessitatibus qui. Laudantium ut cumque voluptatem delectus ea et quam. Voluptas nesciunt ullam eaque dolor nisi non cum. Praesentium vero voluptatem quod aut et eum.\n\nQuia omnis voluptas excepturi voluptatum ducimus et quidem. Earum alias occaecati tenetur tempore. Earum eveniet consequatur autem.\n\nRepudiandae rerum quae necessitatibus nam consectetur. Quas necessitatibus voluptas unde. Voluptates aut iste molestias voluptatem et perferendis distinctio. Et sapiente aut et id cupiditate sed.', 0, 'https://picsum.photos/seed/624/640/480', 'Impedit velit laboriosam voluptatem quam qui voluptatem animi.', 1, 1, '2026-03-10 07:28:54', '2026-03-10 07:28:54', 6),
(25, 'Assumenda est minus corporis fugit autem.', 'Nostrum repellendus qui optio quam. Ut consequuntur quae temporibus ipsum aliquid et. Voluptatem iste temporibus facilis asperiores quasi soluta impedit.\n\nEt quia alias dolorem aut dolore. Dolores dolore sint esse et libero quos aut. Nesciunt nisi ut earum laudantium dolor.\n\nQuia suscipit unde aut eum quia vitae dolor. Aperiam laudantium libero dolorem eligendi sint velit fugit.', 0, 'https://picsum.photos/seed/1304/640/480', 'Assumenda est minus corporis fugit autem.', 1, 2, '2026-03-06 18:06:23', '2026-03-06 18:06:23', 3),
(26, 'Nam aut rerum quis natus consequatur necessitatibus.', 'Amet perspiciatis delectus voluptatem nemo voluptatem. Saepe rerum consectetur qui.\n\nIpsam est aut laudantium dolorem veniam suscipit. Libero ex aut pariatur consequuntur minima. Esse fugiat soluta dolorum nihil qui rerum. Pariatur et sequi sed.\n\nEnim dicta iusto repellat quia voluptatibus aperiam. Voluptate minus ipsum optio tenetur in assumenda mollitia aliquam.', 0, 'https://picsum.photos/seed/8665/640/480', 'Nam aut rerum quis natus consequatur necessitatibus.', 3, 2, '2026-02-03 10:26:56', '2026-02-03 10:26:56', 6),
(27, 'Aut asperiores architecto dolor dolores ut quam.', 'Animi veniam ratione eaque voluptatum culpa qui aut tempore. Corrupti nostrum non a ea est nam. Molestiae voluptas saepe beatae numquam consequatur. Voluptates eos alias non asperiores.\n\nEt sit qui dignissimos non saepe corrupti. Est iusto quas rerum enim sed quaerat. Aliquid doloribus enim molestias ut omnis a.\n\nQuos dolor ducimus dolor. Beatae voluptates omnis natus mollitia. Neque dignissimos adipisci saepe perspiciatis aut.', 0, 'https://picsum.photos/seed/1632/640/480', 'Aut asperiores architecto dolor dolores ut quam.', 3, 1, '2026-02-12 16:55:59', '2026-02-12 16:55:59', 4),
(28, 'Dolor sed saepe sed modi.', 'Explicabo cumque aut praesentium voluptatem tempora modi. Quia impedit totam deserunt fugit. Quod expedita aut quidem quae aut repellat aut.\n\nUllam tempora sed architecto animi. Qui aut aut qui. Impedit tempore illo optio atque voluptates. Nulla veniam voluptate deleniti corrupti ipsa ut.\n\nQuos tenetur hic veniam aut eum. Temporibus itaque excepturi quos et. Aliquam quis id voluptatem dolor cum ut dolorem. Voluptatem quo et architecto ipsam aliquid minus sapiente.', 0, 'https://picsum.photos/seed/6588/640/480', 'Dolor sed saepe sed modi.', 2, 1, '2026-02-15 08:09:51', '2026-02-15 08:09:51', 5),
(29, 'Dolor numquam aliquid voluptatem.', 'Aut voluptatem eos magni. Alias doloremque exercitationem nesciunt rerum expedita enim sit inventore. Accusamus aspernatur soluta distinctio et. Neque numquam corrupti ab cupiditate odit magnam animi.\n\nNesciunt voluptas consequatur dicta. Non ut quia corporis aut maiores architecto. Quos consequatur amet doloribus est nisi sequi possimus et. Quaerat sequi sit sed minus dolor tempora.\n\nEst facilis non animi veniam doloribus qui impedit. Nostrum eius quo dignissimos in cumque quia. Nihil repellendus expedita odio sed in.', 0, 'https://picsum.photos/seed/7356/640/480', 'Dolor numquam aliquid voluptatem.', 3, 1, '2026-03-12 15:44:28', '2026-03-12 15:44:28', 1),
(30, 'Ratione enim amet qui quia.', 'Esse est culpa ab possimus ut. Nobis aut fugit dolorum qui voluptas voluptate quaerat. Et ut non esse saepe quia a. Dolores optio iure sequi ea.\n\nAssumenda voluptate porro est omnis et voluptatem dolor. Totam et rerum reiciendis corrupti suscipit placeat accusamus. Aspernatur nisi iure quae maiores consequatur nesciunt. Aut ipsum assumenda delectus sed exercitationem quia quisquam hic.\n\nDolor sapiente quas animi aut cupiditate. Eveniet corporis illo est provident facilis quibusdam quod et. Voluptatem rerum iusto dolores aut. Error nulla sunt qui nesciunt blanditiis.', 0, 'https://picsum.photos/seed/4727/640/480', 'Ratione enim amet qui quia.', 1, 1, '2026-03-03 14:16:21', '2026-03-03 14:16:21', 4),
(31, 'Corporis aut necessitatibus et sit soluta et iusto.', 'Unde maiores eos consequuntur minima. Atque voluptate ratione sit quia.\n\nAutem minima quos tenetur enim et aut. Consequatur nihil mollitia soluta ratione ea. Quasi quibusdam quibusdam totam quidem dolorem unde. In vel voluptatibus dolor assumenda optio omnis.\n\nDolorem ratione voluptatibus earum occaecati. Magni vero et minima quae accusantium magni quam ullam. Voluptates voluptate commodi maxime exercitationem eius.', 0, 'https://picsum.photos/seed/3664/640/480', 'Corporis aut necessitatibus et sit soluta et iusto.', 3, 2, '2026-02-05 17:04:37', '2026-02-05 17:04:37', 2),
(32, 'Recusandae beatae labore est nostrum dolorem perferendis et.', 'Cupiditate et recusandae ex saepe dolorem similique debitis. Quis non repellendus voluptas et accusamus quidem sint ut. Iusto earum a dignissimos.\n\nVoluptate quaerat nihil dolores qui. Nisi similique vel nesciunt accusamus ullam. Vitae voluptatem rem consectetur ipsam et eum et corrupti. Quia aperiam incidunt illum non culpa.\n\nTempora possimus nulla molestias voluptas. Dolor adipisci tempore doloribus quisquam possimus. Explicabo ipsum placeat minima. Architecto sed sequi quam eos eum excepturi.', 0, 'https://picsum.photos/seed/9076/640/480', 'Recusandae beatae labore est nostrum dolorem perferendis et.', 1, 2, '2026-02-17 07:01:14', '2026-02-17 07:01:14', 4),
(33, 'Architecto in recusandae accusantium eius voluptas et.', 'Qui animi ipsum et quis expedita. Itaque alias ratione dolorum. Consequatur odit voluptatem maxime esse ipsa temporibus. Non dolorem et nesciunt est illo ea.\n\nEos qui vel reiciendis. Inventore corrupti illo nemo ex. Corporis molestias veniam deleniti nisi consequatur ex ut ducimus.\n\nRatione non vel in distinctio unde neque quidem. Dolores eveniet tenetur non. Animi dolores eum eaque voluptas quasi voluptates consequatur. Beatae ut corporis fuga sit occaecati vero.', 0, 'https://picsum.photos/seed/2320/640/480', 'Architecto in recusandae accusantium eius voluptas et.', 2, 1, '2026-03-01 17:47:08', '2026-03-01 17:47:08', 3),
(34, 'Temporibus quia aut dolorum consectetur non.', 'Delectus ea similique qui repellendus tempore qui. Ducimus eligendi sint voluptas illo. Repellendus autem temporibus at sunt.\n\nFugiat et et voluptas mollitia quis aut. Optio sunt repudiandae odit aperiam ut et accusamus.\n\nQui incidunt natus velit sed qui culpa voluptas. Nihil quo ipsum et quisquam. Quia dignissimos optio est porro at error quam. Sit perspiciatis qui alias error.', 0, 'https://picsum.photos/seed/5592/640/480', 'Temporibus quia aut dolorum consectetur non.', 2, 2, '2026-03-06 04:25:04', '2026-03-06 04:25:04', 5),
(35, 'Distinctio fuga quas dolor assumenda esse unde.', 'Aliquam expedita a consequuntur tempora totam porro vitae. Nam esse quae autem culpa quam necessitatibus veritatis sapiente. Corporis earum ex voluptas est veniam hic voluptas.\n\nAmet aut enim quo maiores. Et et soluta ea velit minus minus sed consequatur. Rem cumque ex ipsam facere. Facere eius aut omnis dolorem impedit veniam.\n\nSuscipit aut numquam deleniti et. Molestias corporis autem et sit laudantium perferendis. Nihil voluptas ea error rerum adipisci esse quia est. Ipsam et commodi quis aut tempore ea illo.', 0, 'https://picsum.photos/seed/3210/640/480', 'Distinctio fuga quas dolor assumenda esse unde.', 1, 1, '2026-03-14 05:09:09', '2026-03-14 05:09:09', 6),
(36, 'Lorem ipsum dolor sit amet consectetur', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rerum, officia totam temporibus, rem deleniti hic incidunt eum impedit molestiae quod pariatur cupiditate! Voluptas voluptate adipisci, reprehenderit nulla quidem maxime rerum sint, sed facere unde nam corporis quod quasi numquam. Mollitia, libero \r\n\r\ncorporis expedita et, laborum ea at eius atque accusantium dolores ipsa assumenda. Deserunt doloremque culpa iste ipsa reprehenderit pariatur blanditiis nam cum, error quo exercitationem quas? Molestias, ipsam doloremque!\r\n\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Blanditiis veritatis sed qui non iusto provident et suscipit eum eius tenetur.', 0, 'images/SVLt1hmkV3RheCCx7li0Hq5gfIVMujCWxp5C4Oba.jpg', 'lorem-ipsum-dolor-sit-amet-consectetur', 1, 1, '2026-03-26 05:28:50', '2026-03-26 05:28:50', 1),
(37, 'Python', 'dsferyetyueeyurtyutyr', 0, 'images/DrjDuEn14zVQ7C7Y70beEcSqNvAC8KZXnM2FOvYQ.jpg', 'python', 6, 1, '2026-03-26 11:42:23', '2026-03-26 11:42:23', 7);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Heritsimba voary', 'heritsimbav@gmail.com', NULL, '$2y$10$Z1J2WtpD07HrTW6WnRKes.kcvSxYAjQkK3icZaWJWK9Hu7yV8ofii', NULL, '2026-03-04 05:18:03', '2026-03-04 05:18:03'),
(2, 'Ratojoarimanantsoa', 'alyratojo@gmail.com', NULL, '$2y$10$aPAngSxIpbfqVdrIX/1sq.tbXIcGYS2aMkxZB4qjTt0kO/FmKqAHW', NULL, '2026-03-04 05:20:25', '2026-03-04 05:20:25'),
(3, 'Heritsimba Mira', 'mi@gmail.com', NULL, '$2y$10$cFkaON9zcIeB9YMgKQ5I3uzUZUtoxRxp/4YneERFD1bhRHGd/w2qO', NULL, '2026-03-04 05:23:16', '2026-03-04 05:23:16'),
(4, 'Rakoto', 'rakoto@gmail.com', NULL, '$2y$10$Gj0T/y8pFsZNpAbQrSHgCu.gYa8LESQzT/LO4vNcpKVMpG7dQIghW', NULL, '2026-03-25 04:32:44', '2026-03-25 04:32:44'),
(5, 'Rasoa Marie', 'rasoa@gmail.com', NULL, '$2y$10$dJ5VDal3e5ayNVjRzJsk/OS2mZigTxA3jqsF0jhlw/aNeFlVwZXae', NULL, '2026-03-25 19:56:36', '2026-03-25 19:56:36'),
(6, 'Micha Nomenjanahary', 'johnjoe@gmail.com', NULL, '$2y$10$b6xrh29ED209XEF6nu0UJe269w9xjVsLzfdQGAvJtpiFvZ9JXYgom', NULL, '2026-03-26 11:40:03', '2026-03-26 11:40:03'),
(7, 'Pierette', 'pierette@gmail.com', NULL, '$2y$10$csfZNa9poM6/F8UYHN7aIe3PSt9/KwF.wwP5wAAJgr9.6jwH8OPv.', NULL, '2026-03-27 01:30:37', '2026-03-27 01:30:37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `catégories`
--
ALTER TABLE `catégories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaires_id_user_foreign` (`Id_user`),
  ADD KEY `commentaires_id_publication_foreign` (`Id_publication`);

--
-- Index pour la table `contenirs`
--
ALTER TABLE `contenirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contenirs_id_domaine_foreign` (`Id_domaine`),
  ADD KEY `contenirs_user_id_foreign` (`User_Id`);

--
-- Index pour la table `domaines`
--
ALTER TABLE `domaines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publications_user_id_foreign` (`user_id`),
  ADD KEY `publications_id_categorie_foreign` (`id_categorie`),
  ADD KEY `publications_id_domaine_foreign` (`id_domaine`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `catégories`
--
ALTER TABLE `catégories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `contenirs`
--
ALTER TABLE `contenirs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `domaines`
--
ALTER TABLE `domaines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_id_publication_foreign` FOREIGN KEY (`Id_publication`) REFERENCES `publications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaires_id_user_foreign` FOREIGN KEY (`Id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contenirs`
--
ALTER TABLE `contenirs`
  ADD CONSTRAINT `contenirs_id_domaine_foreign` FOREIGN KEY (`Id_domaine`) REFERENCES `domaines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contenirs_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `publications_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `catégories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `publications_id_domaine_foreign` FOREIGN KEY (`id_domaine`) REFERENCES `domaines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `publications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
