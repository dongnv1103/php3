-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 04, 2021 lúc 04:02 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dong_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `show_menu` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `show_menu`, `created_at`, `updated_at`) VALUES
(1, 'Kailey Stamm', 1, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(2, 'Prof. Terence Abbott', 1, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(3, 'Chris Lakin', 1, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(4, 'Modesto Moen', 0, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(5, 'Don Turner', 1, 1, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(6, 'Jalon Bernier Jr.', 1, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(7, 'Henriette Trantow', 0, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(8, 'Nelle Roberts', 1, 0, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(9, 'Jarred Pollich IV', 1, 1, '2021-07-24 06:45:11', '2021-07-24 06:45:11'),
(10, 'Nathaniel Hoppe', 1, 1, '2021-07-24 06:45:11', '2021-07-24 06:45:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_30_130639_create_table_categories', 1),
(5, '2021_06_30_132006_create_table_products', 1),
(6, '2021_07_19_101116_alter_table_users_add_colum_phone_number', 1),
(7, '2021_07_19_103631_alter_table_products_add_fk_cate_id', 1),
(8, '2021_07_24_135943_create-table-rooms', 2),
(9, '2021_07_24_140143_create-table-servies', 2),
(10, '2021_07_24_140214_create-table-room_servies', 2),
(11, '2021_07_24_142512_create-table-room_servies', 3),
(12, '2021_07_25_011227_create-table-services', 4),
(13, '2021_07_25_011301_create-table-room_services', 4),
(14, '2021_07_25_014455_create-table-services', 5),
(15, '2021_07_25_014525_create-table-room_services', 5),
(16, '2021_07_25_014936_create-table-room_services', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `cate_id`, `image`, `price`, `status`, `quantity`, `detail`, `created_at`, `updated_at`) VALUES
(2, 'Guiseppe Herzog', 8, 'uploads/products/ca6a8a1be18e57ab7870a3f8f94f5701.png', 854, 0, 71, 'Iste excepturi voluptate mollitia maiores. Repudiandae molestias ea et quia sit. Qui ut quis temporibus et labore est omnis.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(3, 'Twila Herzog I', 3, 'uploads/products/a5ba690397329141fc3fdcf152222df8.png', 408, 0, 50, 'Impedit saepe nobis qui fugit deleniti aut ullam. Qui omnis qui aspernatur illum. Sit praesentium fugiat magnam perferendis rerum quisquam minima.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(4, 'Dr. Ubaldo Grant IV', 10, 'uploads/products/b82781a35445ff4f4243e017f8f9cdba.png', 791, 0, 81, 'Dolor aliquid aut dolore et nisi. Et dignissimos magnam autem facilis. Eaque possimus sed sunt.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(6, 'Lydia Prosacco', 2, 'uploads/products/9287d2cdc4942de01b556b788dcabd4b.png', 223, 1, 84, 'Corrupti a quia aperiam quos illo eos ex. Ex labore quidem sit illo magnam quaerat animi. Unde quos ad rem. Laboriosam amet qui et. Ut ullam mollitia voluptatem error ullam et voluptas.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(7, 'Mr. Louvenia Tremblay I', 10, 'uploads/products/4f1186fc4cf32c97f697d998bb8a5183.png', 773, 0, 34, 'Eos quod consectetur labore qui. Ut ratione aut facilis est eum. Sint et doloremque saepe et et vitae tempora. Error ad eveniet eos quos aut dolor.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(8, 'Gayle Sanford', 9, 'uploads/products/2978c74b7d4919cbf347b717aa1d2e16.png', 715, 1, 82, 'Nesciunt et voluptates qui magni dicta voluptates. In aut id voluptatem cupiditate reprehenderit cumque est. Non tenetur aspernatur ducimus voluptatem ipsam sit alias.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(9, 'Jettie Franecki', 6, 'uploads/products/d555848824be9a0c182f06dd46469099.png', 515, 1, 50, 'Voluptatem molestiae enim expedita. Velit consequuntur voluptatem quibusdam.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(10, 'Leo Rowe', 2, 'uploads/products/5f38dfb4ba6cb0c0229b4077942a22e5.png', 467, 0, 32, 'Ea fuga aut enim voluptatem ut et. Deleniti ipsa ut est. Cupiditate officia aliquam voluptatem impedit soluta. Quod ex quia adipisci quae sed magnam ea ut.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(11, 'Laurie Witting', 10, 'uploads/products/7e55033c0ca488d9ef9f7f020505259d.png', 914, 0, 82, 'Aliquam nihil dolor vel sed. Officia molestiae odit voluptas qui modi a. Tempora quo eaque et at et omnis labore. At et facilis facilis exercitationem qui qui consequatur eaque.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(12, 'Archibald Jast', 5, 'uploads/products/e6fd02f6bc5dc5a6a991735f198610eb.png', 414, 0, 29, 'Facilis ipsa aut in et dolorem aut. Tempore et numquam voluptatem occaecati maiores. Vero quia dolorem odit sed quod.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(13, 'Danyka Hauck', 3, 'uploads/products/23bf712b69d6c48761c1f35755cc387e.png', 142, 1, 34, 'Autem modi fugit veniam neque blanditiis. Illum necessitatibus molestiae ex tenetur.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(14, 'Kayden Huels', 4, 'uploads/products/5ec4a561e8b9e89fb869add7e9477dc5.png', 450, 0, 39, 'Sint esse quae et fuga mollitia adipisci consequatur. Voluptatum dolorum et odio exercitationem. Aperiam tenetur ipsa quis eaque occaecati.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(15, 'Beau Spinka', 2, 'uploads/products/9298b9b7f3d649692e08c114de2ef3df.png', 948, 1, 34, 'Cumque dolorum et alias occaecati. Asperiores numquam quaerat incidunt ea eius nihil. Exercitationem iusto iusto rem aut ipsa et harum eos. Quo praesentium quia dignissimos et occaecati eum.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(16, 'Ms. Beatrice Ankunding', 6, 'uploads/products/b6fd7e0ca3b9fb336e55ece926341eb4.png', 993, 1, 34, 'Quia fugiat commodi dignissimos possimus. Officiis qui error non similique neque repellendus. Laborum cumque odit quod aut. Eum laboriosam ipsum et ratione.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(17, 'Wilber Emard MD', 5, 'uploads/products/cb9dfe8a4aa56f2e21f5327776cd6d9f.png', 987, 0, 17, 'Quia et doloremque veniam quos voluptate similique. At ab saepe et voluptatem. Dolorem molestiae quisquam similique id tenetur. Nihil modi sapiente rem architecto consequuntur eos.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(18, 'Dr. Felicity Mraz', 9, 'uploads/products/17839330f6b4f21e847f718307743ea6.png', 405, 1, 22, 'Sint hic maxime voluptas repellendus. Possimus dolore eum perspiciatis et corrupti. Unde veniam saepe unde pariatur rem non. Natus eum nemo et nobis.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(19, 'Jaydon D\'Amore', 10, 'uploads/products/cad58517a4476486fdab1884199d7805.png', 507, 1, 53, 'Quia suscipit perspiciatis perspiciatis sunt. Non quis quo vitae ut quia exercitationem. Aut laudantium libero et eaque non.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(20, 'Mr. Glen Rolfson', 7, 'uploads/products/71e0548008177e8a7a36129c38b7a769.png', 905, 0, 10, 'Cupiditate exercitationem eum ullam. Voluptatem laudantium reprehenderit optio modi sit. Eum totam consequatur enim labore quo blanditiis.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(21, 'Afton Keebler', 5, 'uploads/products/8f76917e38c753823839becd015f8990.png', 743, 1, 29, 'Cumque id modi culpa sed repellendus. Et quidem voluptatem est aspernatur. Qui architecto quas dignissimos aut itaque. In aut non eum quas.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(22, 'Dr. Kristin Greenfelder IV', 3, 'uploads/products/f7a3961fd9b66804ea7b7853fd3e0b35.png', 383, 1, 68, 'Id explicabo et in vel. Consequatur adipisci magni rem vitae repellat. Et qui aut cum explicabo blanditiis dolores enim qui.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(23, 'Catherine Schmidt', 8, 'uploads/products/1a552e1b572b8419f41335b1f93dcc0e.png', 243, 0, 14, 'Illo maxime suscipit et veniam odit doloribus omnis. Et adipisci ut occaecati mollitia dolores laudantium rem. Blanditiis facilis sed esse maxime quidem. Et est culpa itaque fugit nam optio et enim.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(24, 'Edward Lockman', 7, 'uploads/products/ec5ddcd8dd491618d4dd1bfa3be6ca8e.png', 907, 0, 74, 'Consequatur sit id ratione quia quo dolor. Saepe necessitatibus impedit facere. Nemo consectetur ut qui voluptas. Quisquam nisi esse sunt esse.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(25, 'Ebba Jakubowski', 7, 'uploads/products/5deb93644d6b2a236dbf74530607f2fb.png', 756, 1, 48, 'Dolorum voluptas natus totam neque nam animi repudiandae. Earum quidem officiis a rerum. Eum quia quis et sit et minima ut.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(26, 'Etha Murphy', 7, 'uploads/products/c0b8fe6e597e5a70b5d5f8a6f4b38280.png', 886, 1, 13, 'Nesciunt in facilis veritatis illum aut. Odit doloribus corporis sit maxime. Dolor voluptas et et fugiat praesentium.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(27, 'Laron Kiehn', 8, 'uploads/products/cf591eb9e09532a7f6b31108620afc9e.png', 895, 1, 17, 'Corrupti ipsum expedita tempora et vitae. Dolores ipsum eos sint reiciendis. Accusantium et dicta itaque ut voluptatibus. Placeat amet non aut dolores eum.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(28, 'Tomasa Wiegand I', 2, 'uploads/products/34368f12cf7d3e0fcc1010d768f345fd.png', 593, 1, 80, 'Aut praesentium pariatur ut doloremque. Sapiente consequuntur fugiat explicabo laboriosam est fuga est. Id dolorem minima esse atque qui ipsum. Officiis et vel commodi amet exercitationem eos.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(29, 'Raphaelle Ruecker', 3, 'uploads/products/67beba61d79192467fefaec8da9a901c.png', 674, 1, 81, 'Velit et voluptas facilis aut. Quia et est autem iusto. Velit nam dolorum sequi explicabo saepe provident. Et et harum quisquam reprehenderit. Provident molestiae et maiores voluptas ad.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(30, 'Dr. Jamarcus Beatty', 2, 'uploads/products/07632709895032022bbdb8a819d29a78.png', 362, 0, 19, 'Dolorem qui reiciendis omnis facilis commodi. Qui suscipit illum veritatis ipsam harum sunt explicabo.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(31, 'Braulio Wolf', 3, 'uploads/products/361188142cc5a1ad3b7490419961973c.png', 732, 0, 10, 'Eos a enim earum ut quibusdam voluptatem. Eum odit magnam voluptatem et vitae magni harum eveniet. Qui quia libero nesciunt autem dolores provident necessitatibus.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(32, 'Vidal Grant', 2, 'uploads/products/6fa02ffdd178ce630566ff477589c491.png', 922, 1, 21, 'Sed non et deleniti voluptates reprehenderit quidem. Id tempore cumque itaque eius. Tenetur quod facere eos aut voluptatem.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(33, 'Horacio Wunsch', 3, 'uploads/products/232f76eee86813adef8a14189fce1a72.png', 332, 0, 69, 'Reprehenderit sed reiciendis omnis. Suscipit quidem debitis qui dicta quia quia non numquam. Impedit consequatur voluptatem ad id itaque aut non.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(34, 'Shaun Champlin', 7, 'uploads/products/3e6752eee1e74dac77ed400dc0691e42.png', 183, 1, 43, 'Deleniti nisi sapiente tempore unde laudantium aut reprehenderit. Iste rerum cupiditate nam molestiae delectus. Ut molestias aut quas tenetur quasi.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(35, 'Nicolette Wilkinson', 2, 'uploads/products/c1747e5a074a332def9100cfa411f20f.png', 464, 0, 23, 'Explicabo veritatis voluptatem ut voluptas molestias. Eos mollitia rerum voluptas laboriosam ducimus. Consequatur provident saepe illum et sint tenetur delectus. Est rerum possimus numquam est iusto.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(36, 'Mr. Felipe Collier I', 3, 'uploads/products/5238bf1cb20c3c4d53241958d03ebf47.png', 958, 1, 44, 'Accusamus explicabo aut porro explicabo aliquam dolor. Amet sequi aut facilis libero. Quam quaerat eos eius qui et dolores.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(37, 'Dr. Sarina Reynolds', 10, 'uploads/products/c245bcae571af0bd96d619b7a000f60f.png', 973, 1, 37, 'Voluptates quaerat voluptate reprehenderit veritatis sed debitis voluptatem perferendis. Exercitationem sequi laudantium optio. Enim explicabo labore blanditiis est illum. Tempore ut officiis qui.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(38, 'Kyler O\'Connell', 2, 'uploads/products/d67031916ddbe19350c04df2d2f0ae53.png', 274, 0, 16, 'Est et quo error. Nisi sed ea deleniti doloribus. Fuga quo est fugiat quia et. Qui est et voluptates. Aliquam distinctio voluptatibus similique sint.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(39, 'Gerda Hammes', 1, 'uploads/products/c6e0010db563e3a117b50b7483968a31.png', 789, 1, 86, 'Commodi labore non et eum id qui fugit consequatur. Eligendi sapiente ut voluptatem sed id quas. Eum maxime voluptatem non iste. Magni sint possimus quas voluptatem.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(40, 'Maurice Beahan', 7, 'uploads/products/9f17ffddf35ce5b4b55265d7608a865e.png', 572, 1, 25, 'Ex consequatur consequatur fuga quo assumenda sed. Maiores corporis at qui facilis. Accusantium rerum natus iste et aspernatur. Voluptatum vel quidem quos qui illum ad iusto perferendis.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(41, 'Giovanni Orn', 10, 'uploads/products/d08c5146bc400bb2bf971e6ca0f9c376.png', 651, 1, 74, 'Aliquid ut quia dicta quos voluptatibus. Voluptatibus quia facilis animi dicta quod neque.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(42, 'Dr. Jonas Gutkowski MD', 10, 'uploads/products/4917785d83583d61033ac773895a82fd.png', 126, 1, 15, 'In et ex sunt qui maxime sequi. Dolorem eum aliquid sed animi et. Ut earum quia deleniti ullam.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(43, 'Prof. Idella Runte V', 8, 'uploads/products/58f03b8315235b1fa1bd6b747d3e2c41.png', 759, 1, 18, 'Et voluptate eligendi in aperiam optio blanditiis in impedit. Ipsam illum est doloremque natus. Sapiente beatae quae aliquid suscipit quis ratione.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(44, 'Tony Hettinger Jr.', 3, 'uploads/products/d20372bfc6f5b6698e166cf332f12403.png', 870, 1, 49, 'Dolores totam et reiciendis ea non incidunt qui. Quia ut sed praesentium enim blanditiis corporis accusamus ut. Assumenda ut voluptas commodi totam consequatur incidunt modi.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(45, 'Ms. Kelsie Cartwright PhD', 2, 'uploads/products/558f17f587c6b1464d3db1539bdaf764.png', 699, 1, 38, 'Sequi voluptatem repellat nostrum ex blanditiis. Quidem eligendi dolore enim quas debitis sint culpa. Quia et est vitae maxime.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(46, 'Dr. Emily Stiedemann', 3, 'uploads/products/bb9ff523340c8717cfaca4a9213f94e2.png', 967, 0, 16, 'Est ratione id distinctio debitis. Velit explicabo dolorum facere inventore reiciendis ullam voluptates. Aut cumque debitis inventore occaecati nobis. Similique et mollitia repellat eos.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(47, 'Imelda Balistreri V', 1, 'uploads/products/f572f13f81a80797ccbe74fe70cf2cec.png', 181, 0, 16, 'Amet totam veritatis consectetur et corrupti debitis. Nam minima unde voluptatem aut. Saepe consectetur et maxime itaque in blanditiis. Nisi ad in sed veritatis quisquam assumenda.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(48, 'Mrs. Carli Friesen', 1, 'uploads/products/c14739b5a4f2d461b255ec1a61595289.png', 110, 0, 74, 'Error eum qui impedit rem. Sunt quia et voluptas sed rerum. Molestiae et est et doloremque quis ratione non.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(49, 'Vidal Klein V', 7, 'uploads/products/7d7ed30a26c721ba028143cf62821153.png', 581, 1, 12, 'Necessitatibus non et voluptatum rerum omnis molestiae impedit. Nihil sit alias quia eaque voluptatem illum repudiandae quas.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(50, 'Mariah Heaney', 9, 'uploads/products/c5ea81ee3e43e45df01f9059c711b9cf.png', 516, 0, 27, 'Veritatis recusandae similique in veritatis culpa doloribus. Accusamus molestiae eos veniam accusantium sed. Molestias rerum labore aut a eius. Et delectus ea aliquam rerum. Aliquid atque hic est ut.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(51, 'Devan Larkin', 8, 'uploads/products/68da75c3be149d8b68a4c3cf92efce62.png', 201, 0, 36, 'Magni sed consectetur rerum. Tempore eius distinctio maxime autem ut laudantium commodi. Voluptatem ut et reiciendis facere.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(52, 'Mr. Lucius Konopelski', 5, 'uploads/products/eb1cd441e3cd58ac4415a867da632afb.png', 864, 0, 22, 'Minus quo harum suscipit voluptas et ratione assumenda. Eum consequuntur qui fuga dolor officia accusantium nesciunt magni. At provident qui atque molestiae exercitationem sapiente.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(53, 'Prof. Hadley Hamill', 6, 'uploads/products/09663a41a8cd2c7c712389067005739d.png', 759, 0, 80, 'Ullam ipsam rerum veritatis dignissimos aut ab. Dolores ea corporis reiciendis harum perspiciatis soluta ipsam. Et vitae sint nemo veritatis qui eius rerum veniam.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(54, 'Mattie Homenick', 10, 'uploads/products/0284a2921a3d7bdfb75ecf2b2bf8a844.png', 982, 0, 72, 'Et ducimus non fugiat amet illo modi nobis rerum. Aperiam dolore aut aperiam consequatur consequatur velit. Dolorem ut cumque laborum. Odit earum excepturi praesentium eum. Qui non quia vel id dicta.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(55, 'Melody Wilderman', 5, 'uploads/products/1c85ca9f3a01ec36feb97b88466f6910.png', 804, 1, 64, 'Reiciendis reiciendis cum expedita commodi quis. Fugit totam quos harum molestiae et tempore beatae. Dolore vero accusamus aspernatur velit rem vel.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(56, 'Maudie Hickle PhD', 3, 'uploads/products/60bd8aaf7ecaa51ecf9cd09974c13249.png', 718, 0, 48, 'Fuga minus inventore est sequi rem repellat accusantium. Quo itaque eum et ipsum laborum. Soluta et provident voluptas minima dicta aut quas. Doloribus sed cumque dolorem id qui dignissimos.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(57, 'Prof. Muriel Spencer', 8, 'uploads/products/8d7109b10981f2ddf8d4dda737e142e4.png', 276, 0, 62, 'Quo dolor non at nesciunt. Atque ab consectetur sit in sint eaque harum. Provident eius quibusdam accusantium ea.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(58, 'Iva Stoltenberg', 4, 'uploads/products/e0ff10b9ed334cfb622ec77ae1659f96.png', 670, 0, 55, 'Delectus omnis iste consequatur quo dolorum numquam doloremque rem. Doloremque id nihil ullam sequi architecto aut voluptas.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(59, 'Kory Olson', 8, 'uploads/products/31aa4a6044f7b412b507944f7095b2bd.png', 216, 0, 64, 'Molestiae dolores est ipsum quia totam recusandae quia. Nulla quia est est est laboriosam nobis aperiam. Vitae quis quia consequuntur deserunt impedit.', '2021-07-24 06:47:36', '2021-07-24 06:47:36'),
(60, 'Jessika Kiehn', 5, 'uploads/products/154d2b3c011296c927a6fa826ae3faff.png', 350, 1, 20, 'Repellendus non earum dignissimos corrupti voluptatem et. Quaerat quidem quis ipsam cupiditate est autem veritatis. Voluptatem sequi accusantium a aspernatur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(61, 'Marcia Williamson', 7, 'uploads/products/cbc7b738aee2618be90d932121f95882.png', 434, 1, 76, 'Dolor corrupti similique aut eum dolorem et omnis officiis. Et totam nostrum dolor quisquam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(62, 'Treva Miller DDS', 2, 'uploads/products/14cb4648a0119920847bde502ebe76c6.png', 895, 0, 59, 'Asperiores iure ipsam suscipit quibusdam sequi magnam velit. Aut nihil dolorem recusandae enim. Expedita occaecati error ipsam quo quia.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(63, 'Jailyn Welch', 3, 'uploads/products/3c95e4a71b3307dc37a0dfb086b55632.png', 683, 0, 84, 'Labore et a doloribus optio. Ratione magnam aspernatur sapiente eius. Modi vel ex earum doloremque sequi placeat consequatur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(64, 'Dr. Ewell Bruen', 1, 'uploads/products/68c5559f61c2905414e1d96ad61ea396.png', 376, 1, 14, 'Mollitia id aspernatur ipsam nam quos. Et dolorem rem et est iure recusandae quod.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(65, 'Miss Karianne Hudson', 1, 'uploads/products/9d085ad5a95d51b85d70024f7327f54a.png', 694, 0, 76, 'Cumque velit maxime ut dolor rerum debitis eveniet. Consectetur voluptate quod velit libero quia quis. Iusto tempore harum rerum impedit.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(66, 'Mrs. Maybell Buckridge DDS', 5, 'uploads/products/c22a856ea71a9a3e67ab38a81ec3ae09.png', 590, 0, 88, 'Repellat dolorum voluptate velit minima aperiam optio ullam explicabo. Sunt dignissimos minima labore ducimus quaerat. Alias quis iusto ullam sint excepturi modi.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(67, 'Carmela Okuneva', 9, 'uploads/products/c5ba5d1de74a0599ad7920eb058c9287.png', 463, 1, 71, 'In enim voluptas et temporibus est veniam ut. Est nostrum illo atque corrupti eveniet ut qui. Quasi nisi consectetur facilis est velit iusto id qui. Omnis at rerum laborum molestiae.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(68, 'Jeanne Murray', 5, 'uploads/products/b5a8ee3c3d0af6b1afbf98f24703f53e.png', 523, 0, 21, 'Repellendus unde ut corporis sunt aliquam ut nemo. Explicabo ut enim modi est architecto sint ipsa. Rem dolor sunt aperiam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(69, 'Adolphus Padberg', 8, 'uploads/products/bb527eafdcb45f6cf8a610385c858d18.png', 520, 0, 65, 'Nihil voluptatem libero et illo accusamus et sit unde. Minus eius quas aut aut eligendi tenetur possimus aliquid. Soluta dolorum qui ut unde.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(70, 'Freeda Stoltenberg', 4, 'uploads/products/a9bbe34f8b16da0f7523a2a6f6bf40d1.png', 652, 1, 47, 'Ut deleniti nostrum expedita odit quaerat. Nihil molestiae recusandae incidunt voluptas et nostrum velit qui. Ut dolores esse esse corrupti qui incidunt est. Pariatur qui a voluptatum odit non.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(71, 'Verna Pouros', 10, 'uploads/products/a81ce25055fb63de97216aa89494172b.png', 471, 0, 48, 'Excepturi ipsa voluptatem quis enim et impedit nobis. Ea recusandae quibusdam dolores est sed.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(72, 'Mara Wisozk', 3, 'uploads/products/a4a3547eb89936f6fc515de2cf377287.png', 868, 1, 84, 'Quam qui velit ea quam. Suscipit quis nihil vel voluptatum velit eum. Rerum ducimus molestiae aspernatur quo sint quasi dolor.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(73, 'Ms. Sally Raynor MD', 1, 'uploads/products/7b8573bacd621f3e6accd72c4b441eb0.png', 552, 1, 48, 'Dolorem vel qui nemo autem tenetur. Temporibus eos ratione similique consequatur ab dolorem cumque. Esse vel quia sed veritatis ut ipsum repellat impedit.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(74, 'Estelle Balistreri', 7, 'uploads/products/52f193c14e8006e358502b8df71c567e.png', 332, 1, 16, 'Id laudantium omnis est dolores consequuntur aliquid tempore impedit. Aut cumque modi fugiat ex corrupti repellendus quam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(75, 'Mrs. Jayda Hudson MD', 8, 'uploads/products/9c9f112c2f1327e5c50f0c77a5af9c00.png', 184, 0, 80, 'Quaerat veniam nihil qui aut. Ullam id laborum non ea provident. Illo ad debitis alias eum debitis sunt eius vitae. Modi adipisci temporibus sit magnam dignissimos sit vitae.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(76, 'Alycia Frami', 8, 'uploads/products/2f2cd46ccee8e2e526745080506fc21b.png', 310, 1, 35, 'Unde quo delectus consequatur. Quia ut necessitatibus officiis blanditiis iste fuga nam consequatur. Incidunt molestiae aut velit.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(77, 'Miss Thalia Turner III', 5, 'uploads/products/b8c423ace4511303db207ad542b6a370.png', 396, 1, 86, 'Libero quia deserunt sint non omnis. Molestias dolorem quis quam eos quos. Officia beatae numquam voluptas repellendus voluptatem ut a nesciunt.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(78, 'Angeline Runte', 6, 'uploads/products/fbfc3850b2a36e7172f97be767f91879.png', 580, 1, 29, 'Enim inventore ut libero minus. Numquam perspiciatis enim adipisci quidem earum illo. Aut magni velit quas porro non. Necessitatibus nulla ea a quibusdam totam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(79, 'Blair Goodwin', 3, 'uploads/products/4a6dc764ba57f48c950f772c9ffe0752.png', 538, 0, 78, 'Optio ut et ipsum quo animi vel unde. Ut placeat assumenda porro assumenda saepe aut adipisci. Inventore qui quia error sunt officiis fuga. Sunt delectus illo aut voluptatum.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(80, 'Prof. Nellie Huel I', 7, 'uploads/products/3ae6393e3c0d378e906d9d315a688aa4.png', 213, 0, 77, 'Perferendis et voluptatem sint dignissimos sed. Quia suscipit voluptatem laudantium. Reiciendis et nostrum ut sit ut natus maxime esse.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(81, 'Mr. Wilford Casper MD', 9, 'uploads/products/28f6b67796573a6aa00338817fa49a25.png', 779, 0, 17, 'Quos soluta laudantium dolore ducimus veniam odio. Ullam qui at libero sapiente ea similique. Velit ut est et molestias modi non non. Qui illum quis assumenda deserunt et nobis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(82, 'Vern Huels', 3, 'uploads/products/f30cb8b3361960c8a9881fc8e596c41b.png', 143, 0, 58, 'Et veritatis cupiditate fugit maiores explicabo doloribus consequatur. Et magni neque animi quia repellat voluptas hic. Qui corrupti temporibus sunt sit quis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(83, 'Geovany Ortiz', 8, 'uploads/products/fdbc422dfa0cfd9ea3ab5eeb22e2af06.png', 947, 0, 13, 'Sit ad aut sit explicabo sed at et. Exercitationem nulla id nulla aut atque impedit. Velit debitis quo quia dignissimos similique inventore.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(84, 'Prof. Abelardo McGlynn', 7, 'uploads/products/5e855758fc4c07e8c42f31cd9f828784.png', 318, 0, 60, 'Eligendi at aliquid autem nostrum voluptas. Non aut quis cumque ut aut minus. Ipsa incidunt est eum itaque qui. Quasi dolores provident sint et.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(85, 'Ben Gottlieb', 8, 'uploads/products/e8cdad967842011a38ec8841cd7a29a9.png', 830, 1, 12, 'Culpa eum deleniti consequatur doloribus expedita cumque laboriosam. Voluptates et a praesentium est fugit perspiciatis fugit. Neque totam fugit officiis alias a possimus harum dolorem.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(86, 'Maryse Pfannerstill', 5, 'uploads/products/1f0278878988a49c3bb2fe933d99ad67.png', 709, 0, 60, 'Eaque iure consequatur nihil sint non vitae deleniti debitis. Id id ipsum ut ut illo eum. Molestiae tempore in voluptatem ut fuga.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(87, 'Liam Kessler', 8, 'uploads/products/0d384afd0b57cefc87980c4ff0d0a08f.png', 565, 0, 13, 'Et qui odit in repudiandae occaecati ad. Itaque quod accusantium totam similique voluptatem veritatis veritatis. Est repellat voluptas nihil eveniet sunt.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(88, 'Mrs. Chloe Krajcik', 6, 'uploads/products/1748ecd7d49b49cd4df278c2243dc9e6.png', 271, 0, 35, 'Unde iste ea minima dignissimos earum nisi officia est. Ut animi aspernatur dolorum sed ea quo esse. Ipsam placeat nemo enim sit.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(89, 'Ida Haag', 6, 'uploads/products/59cec1dbe81402701ffe9b75eca78b01.png', 673, 1, 57, 'Vel nulla in quas ut sint et voluptatem nulla. Quis quasi delectus reprehenderit. Quasi sequi aut fugit architecto quo.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(90, 'Dr. Winnifred Abernathy', 5, 'uploads/products/40a5ddc7819090a202bf27f6109f6295.png', 139, 1, 71, 'Veritatis facere culpa at culpa sed aperiam. Eligendi aut ducimus eaque fugit dicta asperiores.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(91, 'Bridget Sanford', 6, 'uploads/products/6b778d3d58efa2f5a9c779231c65e939.png', 114, 1, 48, 'Modi inventore rerum labore quo quia et id. Earum adipisci ea sapiente deleniti et laboriosam est. Dolorum eius dignissimos necessitatibus dicta tempore.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(92, 'Maritza O\'Kon', 4, 'uploads/products/17c6d17d5f7d918d94fcb96533fa48ea.png', 616, 0, 46, 'Et repudiandae id ut harum esse magnam nulla. Labore est non laborum explicabo deleniti laborum quia perspiciatis. Nisi laudantium autem ut qui totam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(93, 'Bailee Lind', 3, 'uploads/products/9a130c2255429e11fcda5d546ddb9f74.png', 729, 1, 20, 'Quasi et iste suscipit consectetur magnam id. Maiores dolor id quod iure sit saepe aut. Corporis possimus modi dolores eos voluptatum.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(94, 'Delilah Schamberger', 9, 'uploads/products/8e0d480c6b6340a0391518d5e135fff0.png', 230, 1, 74, 'Aut non dignissimos vero corporis. Ipsam ut quo unde accusantium quisquam reiciendis. Eum libero omnis in rerum.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(95, 'Miss Jayda Reichert', 2, 'uploads/products/4ae1417fd9ab61350933b6fded34eccc.png', 725, 0, 49, 'Veritatis nam error commodi in doloribus blanditiis rerum tenetur. Sed sequi nam eius natus ex veritatis. Quae voluptates quod voluptas dolores eaque. Nulla tempora facere impedit sit libero.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(96, 'Hyman Hill Sr.', 9, 'uploads/products/890f7d3fcdbf2bfebe966a92f053ac03.png', 341, 0, 64, 'Ipsa incidunt perspiciatis expedita in voluptates. Beatae qui est sunt corporis distinctio quia. Natus ut qui maxime rerum. Aperiam dignissimos est beatae sit. Et eum enim aut voluptates tempora.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(97, 'Johnson Will', 3, 'uploads/products/b24e0329ea9a7089c5d0bb0f102edb7b.png', 110, 1, 49, 'Quis omnis blanditiis magni tenetur in debitis soluta. Rerum tempora deleniti asperiores quos molestiae. Architecto possimus quaerat in totam sunt. Aut et rerum et ducimus aut.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(98, 'Zelda Will', 5, 'uploads/products/1b9fa0bed013cad69f6cb1cf9ce2839a.png', 426, 1, 25, 'Provident voluptate qui iure quis. Perspiciatis omnis et dolores corrupti repellat modi incidunt ut. Et soluta ea totam aut unde dolorem.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(99, 'Eliza Mayert III', 3, 'uploads/products/b9c4c4f390b73db457f7dbc209439a94.png', 400, 0, 48, 'Eum ex corporis sunt aut odit et. Harum exercitationem aut beatae ab doloribus dolorem consequatur. Minima ut officiis incidunt. Ut eos similique rerum alias.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(100, 'Lorine Simonis', 5, 'uploads/products/21875449e1662457cb475d745ec0a756.png', 702, 1, 81, 'Id rem nam et doloremque accusamus ipsam. Magni sapiente id dicta aut esse vero omnis facilis. Fuga accusamus aut quos.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(101, 'Mallory Ferry III', 4, 'uploads/products/99f1609f9891fc300dc902b5604f8d3b.png', 711, 0, 54, 'Dicta repellendus voluptatum possimus. Voluptas magnam commodi vel doloremque est. Recusandae dolores sed natus in corrupti aut inventore. Perspiciatis quo quaerat et deleniti.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(102, 'Ms. Earlene Legros', 2, 'uploads/products/f49792af1533cd2ed8f4c7064031d294.png', 104, 0, 51, 'Ut exercitationem quisquam odit nisi magni ut odio numquam. Consequatur assumenda aut dolor quae. Recusandae error dolores totam esse doloremque sunt.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(103, 'Ambrose Rolfson', 10, 'uploads/products/edc1d2ef91ff5e9046bef78584b1d238.png', 367, 1, 32, 'Ipsa dolor minus commodi nemo et. Facere eum assumenda molestias aliquid. Illo similique molestiae voluptas laudantium ut qui et. Et ipsam suscipit dolores facilis non veniam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(104, 'Dr. Eden Waelchi Jr.', 9, 'uploads/products/d0261a66e8f7aaa63e4861a5af806a0b.png', 798, 0, 12, 'Aut quis alias natus. Impedit ut saepe sint deserunt dolore. Consequuntur nobis aspernatur quia vitae eaque quos.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(105, 'Prof. Katelin Miller', 7, 'uploads/products/df776f7e706304320565f9ffccf402b8.png', 653, 0, 83, 'Officia velit eveniet quisquam sit dolor nihil. Non earum voluptas illum. Praesentium dolor qui mollitia earum quos non tenetur aut. Accusamus dolores vel quia qui tempore facere.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(106, 'Dr. Ray O\'Conner V', 8, 'uploads/products/9fc280135180d2236da7d0af3af2dae7.png', 108, 0, 35, 'Eligendi iusto qui et aut similique. Porro dolorem est esse qui officiis sit. Magnam et est doloribus sunt qui optio voluptas. Sit quo voluptate expedita placeat tempora assumenda ut.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(107, 'Pedro Dibbert', 9, 'uploads/products/c0159d632de8d7771ca876d5af4708f8.png', 833, 1, 26, 'Dicta ut ut consequuntur repudiandae. Quidem odio aut exercitationem labore.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(108, 'Mrs. Abagail Spinka', 3, 'uploads/products/306194133f4845c12c8133e0b710983e.png', 746, 1, 27, 'Incidunt consequatur et cum enim et architecto. Consequatur id officia autem. Et omnis et similique quis et illo omnis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(109, 'Kailee Romaguera II', 5, 'uploads/products/5584d182aacf330c008a73128540386a.png', 566, 0, 67, 'Laborum assumenda consequuntur dolorem possimus magni aut odit. Voluptas quis blanditiis quibusdam ut dolorum fuga rerum. Adipisci ratione nihil animi labore. Numquam sint magnam eum illum optio.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(110, 'Armani Little Jr.', 3, 'uploads/products/7bcb151621ba503496a48426162c4e6b.png', 138, 1, 88, 'Voluptatem sint quia perferendis sunt quisquam vel. Consequatur qui autem at eum non molestias aut. Similique enim possimus enim quos ut. Omnis et eos perspiciatis voluptate enim soluta non.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(111, 'Ila Grimes', 3, 'uploads/products/d1e041cce5a91b7567baa0e36cbe2c58.png', 932, 1, 37, 'Laborum a autem similique odit sit quam. Consequatur sed ducimus et perferendis nam deserunt in. Et qui et suscipit molestiae qui dolor. Cumque id minus voluptatibus a voluptate vel ab.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(112, 'Elian Leuschke', 1, 'uploads/products/5e2018c9ed618e75901e20b371f16746.png', 409, 0, 66, 'Laudantium dolor voluptas tempore autem consequatur. Iure inventore ullam rerum labore iure et commodi. Nostrum odit fugit odit hic eius voluptas.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(113, 'Kyra Hill', 10, 'uploads/products/fb81b72795e3d0a1de0521331030259d.png', 434, 1, 23, 'Alias deleniti vel vitae autem sit. Quia cumque vitae ad voluptas animi rem in. Sint eveniet laborum in et expedita aut eaque voluptatem. Explicabo eum fuga quidem eveniet.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(114, 'Magali Pouros', 1, 'uploads/products/0fb2ba621e7056b2e69996ca3888a27c.png', 539, 1, 36, 'Vitae sit quos optio officia provident maiores ea. Molestiae voluptas iste sed minima error. Sunt sunt autem laboriosam possimus.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(115, 'Mr. Will Stehr Sr.', 3, 'uploads/products/f53d690566f75a1e3fb8f1e5357d787b.png', 749, 0, 33, 'Id qui corrupti velit maxime vero illum. Qui quaerat ducimus tempore rerum repellat. Ipsa non animi necessitatibus. Dolores dolorum minima aliquid architecto voluptatem.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(116, 'Ms. Alessandra Hudson Jr.', 2, 'uploads/products/db21633c9263c5e0802a0ff1c96b84fc.png', 438, 1, 26, 'Nihil ut in cum et sunt et voluptate. Ex quia magni quae nostrum quasi eaque praesentium. Perspiciatis vero eaque corporis. Saepe dolorum sed aliquam sapiente eius nemo eaque.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(117, 'Franco Schneider', 6, 'uploads/products/ac40f65a20c0cae018542c85e3f0f4da.png', 744, 0, 56, 'Alias in ullam saepe asperiores voluptatem. Excepturi illo aut voluptas non. Dolor quia velit officia ratione praesentium aut.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(118, 'Angus Lockman', 5, 'uploads/products/7d22c4b0ab8097baf2ff30c58b03fe84.png', 560, 1, 43, 'Velit mollitia dignissimos alias qui. Voluptatem inventore in porro explicabo ut beatae nemo.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(119, 'Shana Koss', 6, 'uploads/products/39046296fba207f9d8d26c23753e18d4.png', 553, 1, 57, 'Quibusdam placeat quidem fugit qui et est esse. Architecto dolore possimus id dolorum id nostrum. Quis itaque dicta ea eum. Id unde est quo exercitationem cumque voluptatem.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(120, 'Nicholaus Spinka', 1, 'uploads/products/ff3fb1ae12593038fb4137bc826c7bf9.png', 588, 0, 10, 'Commodi facere dolore quibusdam a doloremque est. Magnam non et quidem. Aut temporibus fugit nostrum quisquam voluptates reprehenderit qui. Doloribus quibusdam eveniet in illum.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(121, 'Ms. Barbara Johnston DVM', 10, 'uploads/products/fdb71397ceb3957c193ad54b71a2b4a5.png', 831, 1, 55, 'Nobis occaecati dolores sit dignissimos dolor. Fugit et totam ipsam est. Vero adipisci repellendus quam pariatur non.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(122, 'Nannie Dare', 6, 'uploads/products/c922cc625eb5ce8c5566a0bd44f74108.png', 702, 0, 10, 'Odit ducimus sed nostrum facere et. Tempora voluptas facere corrupti exercitationem. Veniam est nulla ut consequuntur exercitationem qui architecto.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(123, 'Korbin Gottlieb', 9, 'uploads/products/89b97f7a014171954fd14a634cc3b35f.png', 248, 0, 78, 'Ad autem blanditiis minima fuga cumque. Veritatis error magni sunt quia qui. Voluptatum dolores aut autem id.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(124, 'Brisa Ryan V', 4, 'uploads/products/53aedf0c5d0384c9539f02eafed05ea1.png', 908, 1, 47, 'Fuga exercitationem dicta adipisci officia. Porro accusamus et nemo est eligendi. Debitis atque voluptas delectus consectetur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(125, 'Dr. Gavin Rau', 8, 'uploads/products/93a95f16100d5a8b969d57d138677690.png', 766, 1, 51, 'Odit pariatur omnis enim qui eaque. Hic exercitationem ea perferendis. Suscipit omnis neque id velit.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(126, 'Brody Mosciski', 5, 'uploads/products/08d9b441b00aa27617917a3c6b2eb0cc.png', 657, 0, 41, 'Quam iure deleniti non qui cumque voluptas sequi. Placeat ea aut dolor. Similique autem cum consequatur qui.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(127, 'Jailyn Champlin', 8, 'uploads/products/8333faca36b15188705405c304fa6341.png', 627, 1, 25, 'Alias hic ipsam et aliquam. Nulla blanditiis modi nulla autem corrupti. Eos et id quis adipisci. Pariatur accusantium et voluptatibus. Temporibus et iure vero. Et qui sint quibusdam error eaque.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(128, 'Misty Erdman', 9, 'uploads/products/c7278544a9a2ebd0f6517f0947d2c11d.png', 591, 1, 10, 'Consequatur saepe ea unde pariatur ad ea. Debitis incidunt cumque consequuntur quia. Aliquid tempore libero laborum tenetur ad est cumque.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(129, 'Jesse Lesch', 1, 'uploads/products/40098edd72c95d9bd09427007a6117fe.png', 164, 0, 83, 'Dolores quae quidem qui. Quos voluptatibus nam libero inventore at est et. Velit fugiat sapiente eos dolorem.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(130, 'Prof. Maxwell Dickens PhD', 8, 'uploads/products/e47aef30dbae30aa4a9d1d7e990f8a07.png', 174, 1, 61, 'Id sint ducimus perspiciatis. Dolores ducimus et amet nostrum et. Sapiente rerum molestias qui iste in qui excepturi. Fugit soluta error beatae qui rerum commodi cum et.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(131, 'Mr. Terrill Kuhlman I', 1, 'uploads/products/0a245997540745c9ede263462624b288.png', 738, 0, 54, 'Animi et tenetur nobis pariatur consequatur reprehenderit. Ad voluptas voluptates molestiae est et. Veniam quia hic alias. Aliquid a aut aut officia.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(132, 'Ms. Itzel Torphy', 7, 'uploads/products/e835377d507c154d49f1bf01a88d1da3.png', 908, 0, 74, 'In id ut nemo dolores nisi dolor minima. Sit quia quis cupiditate consequuntur. Tempore eum alias qui quisquam vero voluptates non. Est perferendis quo libero nam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(133, 'Araceli Carroll', 5, 'uploads/products/acabf3afd7ae0e2e9435b78f98f5eb91.png', 717, 0, 15, 'Sint et et ipsum nihil beatae. Enim sint ratione quo et. Et optio adipisci porro. Atque quia veniam provident aperiam consequatur. Ullam eveniet accusamus inventore.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(134, 'Mr. Ryan Heaney DVM', 5, 'uploads/products/d3f7bab83fa74247fb0b652fa7972f12.png', 322, 1, 30, 'Minus fuga rerum quia ut voluptatem aliquam assumenda quia. Quia illum est earum iure illum recusandae. Aut autem natus et. Excepturi dignissimos quia odio et omnis animi.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(135, 'Pearlie Beier', 6, 'uploads/products/3dea56dd7e33d8f096a6e5f12f06d6d0.png', 576, 0, 63, 'Non earum consequuntur itaque perspiciatis eum sed. Qui ipsa aut est voluptas atque praesentium quaerat omnis. Magnam sint rerum dignissimos adipisci enim.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(136, 'Amos Considine', 1, 'uploads/products/dbf5119db61c445c97b3864209c0e28f.png', 841, 1, 52, 'A illum unde ut ab aut. Praesentium eum qui ut exercitationem sunt. Impedit quam accusantium vero laudantium sunt eveniet neque. Ut labore omnis et aperiam consequuntur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(137, 'Edmond Miller', 7, 'uploads/products/46e5fa18dab561dae65b7d5022e4a061.png', 620, 1, 69, 'Quae quaerat aut perferendis et qui expedita repellendus. Unde quibusdam cum autem quia quasi blanditiis nulla.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(138, 'Ramiro Beatty', 7, 'uploads/products/384f28fccf115a7587019922225d899c.png', 131, 1, 62, 'Quod aliquam quo eaque natus est. Exercitationem maxime ipsum occaecati modi beatae consequatur qui laudantium. Sint omnis doloremque saepe ea. Nostrum quis expedita ut accusantium.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(139, 'Roderick Ernser DVM', 5, 'uploads/products/4482e9cc3b82bbca463fc5b1366a5e9a.png', 637, 0, 61, 'Eius et consequatur quaerat sit. Deleniti voluptates consequatur placeat quo id delectus. Ad et voluptas ipsam nisi ut id. Vel voluptatem saepe nobis totam quo.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(140, 'Pattie Klein', 6, 'uploads/products/c79f675f73dc14f3ffe0e633a2b60b77.png', 163, 1, 63, 'Qui aperiam eaque adipisci. Assumenda quos repellat suscipit repellendus numquam ipsa. Maxime corporis id in est commodi reiciendis nemo. Quis incidunt dolorem voluptate ipsa.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(141, 'Dell Howe', 9, 'uploads/products/5c1a6d5d2f0a9d0b4b4b614afdcd645c.png', 134, 1, 20, 'Eum sint corrupti animi pariatur in ut tenetur. Aut libero nihil aut omnis commodi. Et qui rem ullam quibusdam animi. Esse sunt aut voluptas numquam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(142, 'Judge Macejkovic DDS', 5, 'uploads/products/140a65d44cdf1be0fb8e4bf1cb463699.png', 403, 1, 89, 'Sed et voluptatibus eos nesciunt repudiandae quis voluptate. Et sunt perspiciatis error reiciendis id. Aut quia eos sint suscipit quas illo voluptatem. Quis animi perspiciatis tempore perspiciatis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(143, 'Dr. Colt Weissnat', 1, 'uploads/products/2fda8863690eeb1ac9191ce5887ddbb2.png', 122, 1, 81, 'Fuga eaque harum quibusdam est. Voluptate aliquid molestiae est quia nihil minus. Amet et vel qui et assumenda beatae. Illo maxime tempore vero aliquam temporibus.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(144, 'Marielle Bogan', 8, 'uploads/products/e7d811acf9e9648b2f33e4415a2dfa77.png', 777, 1, 87, 'A repellendus rerum velit et. Et illum asperiores necessitatibus hic unde maxime dignissimos quia. Doloremque nobis voluptates odit aut voluptates consectetur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(145, 'Leo Wehner', 8, 'uploads/products/91f642617c367d012243fd2e831b9bde.png', 927, 1, 35, 'Consequatur aperiam quisquam incidunt omnis. Similique et voluptas necessitatibus aut laborum praesentium qui. Et nemo placeat qui.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(146, 'Dr. Geovanni Pollich DVM', 7, 'uploads/products/59621cec806d176c3676977c054cf15b.png', 524, 0, 35, 'Dolore eius voluptatem optio quas quia. Rem reiciendis tempora dolores autem culpa aut recusandae. Accusantium in consequatur ullam quis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(147, 'Johnnie Zemlak', 9, 'uploads/products/23c89d9af1bb7c5bfd14f93cc54822a4.png', 989, 0, 32, 'Placeat et in sint reprehenderit. Sit earum velit exercitationem nemo et. Quia minus non iure quaerat.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(148, 'Ian Feest DDS', 4, 'uploads/products/b2d13ff2d66b0ab853a644b422479427.png', 410, 0, 17, 'Dolore laboriosam fuga magni sit. Nihil ad modi error est ut. Ipsum quia sit et esse nisi. Qui adipisci quaerat quia saepe quo molestias.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(149, 'Otis Satterfield DVM', 3, 'uploads/products/5aab7f8b1f72092037b9f377422da64f.png', 108, 0, 54, 'Aut voluptates architecto id et et. Temporibus ea deleniti architecto eum exercitationem dignissimos blanditiis. Iusto molestias quae dicta omnis excepturi laboriosam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(150, 'Dr. Verlie Osinski', 2, 'uploads/products/93d93a7b00c59f772f3c2b6844689b16.png', 129, 1, 46, 'Impedit laborum in consequatur et. Officia ut maiores autem tempore quae corrupti voluptatem. Illum odio nesciunt odio assumenda.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(151, 'Johnnie Kreiger', 1, 'uploads/products/f540914e67b94a0c9c8dc6fbd26bc6a7.png', 118, 0, 30, 'Necessitatibus modi et voluptatem rerum non. Reprehenderit dolor et et aut et ex iure. Ratione est ipsum vero repellendus et nisi. Ipsa ut est molestiae provident porro.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(152, 'Buck Dickinson', 2, 'uploads/products/d6aeccc0aecc1d4690885b97bd793684.png', 234, 1, 45, 'Et eos iste voluptatem nam omnis. Vero sed porro repellat. Voluptas omnis libero necessitatibus omnis suscipit qui qui. Soluta nemo nobis harum occaecati molestiae occaecati ut.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(153, 'Dr. Delbert Barton V', 10, 'uploads/products/172af4801bbefd9baab7001088d16512.png', 492, 0, 32, 'Sunt vitae nihil est commodi corporis qui. Facere accusamus et totam rem omnis est numquam odio. Et officia nulla aut in. Sint doloribus nemo id necessitatibus aspernatur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(154, 'Lizzie Lynch', 2, 'uploads/products/b4146efaa9fe00379f258ff15fb9fbe4.png', 705, 0, 47, 'Placeat ipsum velit illo consequatur. Velit autem explicabo molestiae qui perferendis qui. Delectus illo consequatur eligendi aliquid est reprehenderit. In est et et facere quos quis velit ea.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(155, 'Sincere Rosenbaum', 8, 'uploads/products/428ad9f94c4acbe970e76cb7a00689e7.png', 940, 0, 89, 'Aut et ipsa maxime magnam architecto. Voluptates voluptatem quos sunt ut consectetur corporis. Est laboriosam cumque repellat rerum eligendi. Aut cum quia libero sit recusandae libero at.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(156, 'Dr. Noemi Conroy PhD', 4, 'uploads/products/a1f1d288c1048d17a079c0e19947d1bf.png', 152, 1, 43, 'Omnis nihil perspiciatis et est. Vel fuga in alias accusantium. Quis placeat explicabo quo aliquam asperiores. Debitis non at laboriosam sit et veniam. Nisi sunt exercitationem est sed.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(157, 'Miguel Kerluke Sr.', 1, 'uploads/products/dd62353c25aa935a5d98f93f9b85b2a8.png', 765, 1, 80, 'Facere est earum doloribus. Qui pariatur nostrum vel laborum voluptatem id qui. Facere aut quod corporis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(158, 'Rylan Leannon', 10, 'uploads/products/4425fafb77f74322a31dda19446254fe.png', 918, 1, 47, 'Minima molestias amet labore quia quod qui. Et assumenda magni voluptatibus dolorum temporibus. Aut rerum at sequi debitis architecto sed. Earum alias autem optio voluptatem unde.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(159, 'Dr. Raymond Fay DDS', 1, 'uploads/products/ebf8ddcd741e0d1859223c59c1d37dad.png', 832, 0, 83, 'Optio non est ducimus culpa tenetur velit quia. Doloremque error et delectus possimus. Repellat alias velit autem voluptatem tempora asperiores fugiat.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(160, 'Marguerite Jacobi', 10, 'uploads/products/7777e291838751b21afe6c42fe71cf1e.png', 817, 1, 65, 'Id corrupti et omnis repellendus dolorem sit alias. Enim et et sunt tempora sed est. Nulla enim sapiente voluptatem non ut.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(161, 'Gunnar Nolan', 8, 'uploads/products/c3a3682d6fd7d8c89550d372a26f03c0.png', 105, 1, 16, 'Mollitia tenetur dicta tempore minima alias ea delectus. Vel molestiae praesentium accusantium et alias. Laboriosam molestiae omnis non facilis numquam quasi vero.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(162, 'Pinkie Mraz', 4, 'uploads/products/3a00933deacc994280df4d499c5bd39f.png', 983, 1, 48, 'Ipsa occaecati voluptatem nisi atque mollitia rerum suscipit. Sed eum porro voluptatibus at ut aliquid vel. Impedit adipisci rerum doloribus ad aliquid tempore.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(163, 'Mr. Merritt O\'Kon', 8, 'uploads/products/af09f0a4733f1ff23b1c177ec5a2af23.png', 341, 0, 38, 'Repellat corporis tenetur dignissimos culpa eveniet. Dolor et ullam consectetur odio. Sapiente quibusdam et tempore dolores. Accusamus occaecati a minus et ex consequuntur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(164, 'Izabella Zulauf', 9, 'uploads/products/4d6695f032f6c27670000d795b2eaf50.png', 772, 1, 31, 'Ratione distinctio quo voluptatem rerum. Quia delectus aut soluta recusandae expedita ipsum. Est et optio consequatur. Autem voluptas porro aut ipsam aliquid tenetur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(165, 'Horace Eichmann Sr.', 10, 'uploads/products/2a68807dfe0a35ba6133896d22c635ea.png', 826, 1, 71, 'Reiciendis quibusdam in ea consequatur dolores iusto quia. Quasi libero vel quia nihil aut sapiente. Numquam maiores cum est tempora.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(166, 'Sandra Hand III', 6, 'uploads/products/534d56596159f301a1da2a3f6d458902.png', 679, 1, 14, 'Quis porro exercitationem inventore dolorem voluptas consectetur et. Reprehenderit at inventore eos aut asperiores. Qui iusto neque non non. Aut omnis et mollitia deleniti commodi.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(167, 'Mrs. Cheyanne Balistreri', 3, 'uploads/products/0fa4c82f68d9c62de20c854514b1f8f6.png', 978, 1, 25, 'Atque blanditiis magni dolorem unde id. Sint sapiente natus et non nulla vero rem. Dolor temporibus quod odit dignissimos consectetur molestiae. Quod omnis quibusdam incidunt est quod.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(168, 'Marquise Yost', 1, 'uploads/products/2a9c841a57b607e645f12f8e9195ea33.png', 462, 0, 61, 'Reprehenderit enim et inventore quae rerum rerum. Nulla rerum aut quod vitae veritatis animi repellendus. Est ullam impedit iste repudiandae maxime aliquam a.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(169, 'Ulises Connelly', 7, 'uploads/products/9f9470ff19afdc817fe616da96411646.png', 619, 0, 37, 'Quo omnis voluptatum enim delectus id sit voluptatem. Velit voluptatum molestiae eum quo sit. Rerum et sequi tempore similique amet. Ducimus et incidunt omnis nobis nobis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(170, 'Prof. Rafael Wiza', 9, 'uploads/products/d37407f059e92bb57986dac32bf7da10.png', 644, 0, 33, 'Sint optio quia et aliquid impedit. Totam similique quia sit et dicta. Id sunt et blanditiis. Omnis et aut occaecati dolore voluptatum praesentium.', '2021-07-24 06:47:37', '2021-07-24 06:47:37');
INSERT INTO `products` (`id`, `name`, `cate_id`, `image`, `price`, `status`, `quantity`, `detail`, `created_at`, `updated_at`) VALUES
(171, 'Vita Ortiz', 6, 'uploads/products/c5eb8b2e957ac2d508f52b364c973e61.png', 808, 1, 62, 'Voluptatem voluptatum ut quam enim repudiandae. Quas in impedit praesentium et sequi et odio. Quisquam dignissimos ratione dolor reiciendis est consequuntur.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(172, 'Guy Murray', 9, 'uploads/products/c9aff3dbbbafebcdee0025d227247dd2.png', 762, 1, 84, 'Ea laudantium accusamus maiores facere debitis quas quae. Accusamus optio dolore facere reprehenderit consequatur sit. Eos odio cum dolore praesentium molestiae rerum. Eveniet eos deleniti qui ea et.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(173, 'Prof. Graham Botsford I', 9, 'uploads/products/85704fb90e4fafa2ae80b846560d9b11.png', 378, 0, 39, 'Officiis omnis debitis omnis. Laudantium quae blanditiis dolorum. Inventore suscipit sit non voluptas consectetur voluptatibus aut. Laborum numquam placeat laboriosam ducimus fugiat.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(174, 'Dr. Leonora Daugherty', 7, 'uploads/products/d815cd8db0abdc6a13288f0328d60585.png', 502, 0, 89, 'Corporis in sint inventore vel praesentium repellendus. Reiciendis cum beatae beatae explicabo adipisci voluptas magni. Et enim recusandae est et libero ea et. Aliquid quis quibusdam eos non.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(175, 'Dr. Judah Ebert Jr.', 1, 'uploads/products/bc3b6781d7003601736c6453459d84fe.png', 811, 1, 75, 'Minus accusamus qui tempore nihil tempore. Fugiat unde quo voluptatibus sint. Et necessitatibus consequuntur reprehenderit modi ipsam doloribus.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(176, 'Marvin Strosin', 10, 'uploads/products/aa41f55e2a02a97b1b6efda784d6b798.png', 338, 0, 39, 'Sed ab est enim enim atque. Delectus qui ut ipsum consequatur veniam et quod. Ea qui tenetur at. Quasi voluptates et voluptas et rerum vitae.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(177, 'Phyllis Hintz', 8, 'uploads/products/fb96cf01dd233d174115e3024f8e9c0f.png', 887, 1, 82, 'Voluptatem natus incidunt perferendis. Placeat excepturi quia nostrum quidem porro exercitationem. Id consectetur laborum aut animi sunt harum saepe perspiciatis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(178, 'Kylee O\'Keefe MD', 4, 'uploads/products/b1c84bdc6d05c61e8995ba922599aaca.png', 533, 0, 49, 'Tenetur ipsa est dolorum in dignissimos rem vel. Fugit voluptas earum quasi illum.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(179, 'Candace Schiller', 3, 'uploads/products/5fac90f2fc95ec3abb02423e0eb2aba0.png', 778, 0, 21, 'Quia possimus incidunt voluptas consequatur. Voluptates exercitationem autem eius debitis ullam. Molestiae voluptas quia inventore a laudantium tempora in.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(180, 'Ms. Kenya Larkin', 2, 'uploads/products/2b4f798a3368a9d0262ff7efae2a396a.png', 769, 0, 14, 'Eos eius eum quisquam nihil accusantium eos quia. Placeat et deleniti aut aliquam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(181, 'Koby Hermiston', 2, 'uploads/products/30361c23516df659f4d1f438b4092178.png', 129, 1, 50, 'Delectus et natus ratione et labore omnis labore. Omnis exercitationem delectus velit nihil. Animi laudantium nulla quis.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(182, 'Miss Nicolette Schultz', 2, 'uploads/products/7c3f576c2197aae40102bd0782e0868a.png', 327, 1, 53, 'Dolores inventore necessitatibus voluptatem aut. Libero quisquam id voluptatem totam animi. Ut est voluptatem et nostrum. Consectetur quisquam aut laboriosam fuga.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(183, 'Dorthy Gutmann', 8, 'uploads/products/43c869b714162261213750778bb01ccf.png', 498, 1, 13, 'Rerum blanditiis ut debitis minus. Vel qui id assumenda placeat. Beatae totam aut cumque assumenda. Porro voluptatum quis id repellendus ipsa voluptates.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(184, 'Donavon Nicolas DVM', 4, 'uploads/products/d0da0d05c691a8e11c39ee4af1a9df11.png', 798, 1, 86, 'Amet esse libero sed. Voluptatum maiores ab excepturi dolor minima doloremque dolor. Iure eum autem blanditiis nulla.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(185, 'Osvaldo Leffler', 5, 'uploads/products/213d44af5c8926faaf2015d580f3abe5.png', 746, 1, 79, 'Recusandae quo in laboriosam corrupti adipisci sapiente saepe. Vitae vel eligendi molestiae. Recusandae et a velit numquam. Minus ipsam libero minima nobis enim. Velit dolores animi qui quidem quam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(186, 'Deja Larkin I', 4, 'uploads/products/6caf8d207c245cdd42491aa3e66336d3.png', 736, 1, 72, 'Porro aliquid sit aperiam dolorem. Rerum est placeat non vel nostrum. Tempora dolores enim aut vel tempora amet.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(187, 'Mr. Kristofer Greenfelder Jr.', 8, 'uploads/products/1cf7b44c367d244374bb0e97914c6103.png', 311, 1, 87, 'Facilis rerum et et voluptas provident voluptas ratione sed. Suscipit nulla consectetur vero rerum sed delectus suscipit. Tempore rerum veritatis sint ut et aut. Mollitia nisi pariatur aliquam quos.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(188, 'Penelope Zemlak', 6, 'uploads/products/72bee8b894eab8db125eee4db970d792.png', 822, 1, 85, 'Quis velit ipsam dolorum nesciunt. Eaque nam sint repellendus rerum et et mollitia. Voluptatibus at accusantium est aperiam beatae possimus.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(189, 'Ms. Sonia Blanda Jr.', 4, 'uploads/products/bd46e7b98e02b1eec362fabbd9628266.png', 429, 1, 74, 'Et quia totam dolorum eligendi qui dignissimos accusantium. Voluptatem eaque qui beatae. Est aut et dignissimos. Temporibus ipsam in soluta. Error eos quas ut quos voluptatibus ut a voluptas.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(190, 'Stuart Deckow', 3, 'uploads/products/c4c6298adcc9374588ee7bfa09be4ae2.png', 390, 1, 14, 'Id dolores asperiores porro aut culpa. Error vitae voluptatibus mollitia corporis et et. Deleniti debitis sint molestiae quisquam.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(191, 'Juvenal Kuhic', 4, 'uploads/products/07ed2d591b234cdb8e5636a9ac38a534.png', 198, 0, 87, 'Adipisci sed eius ut praesentium. Occaecati corporis magni quasi quod. Sunt consectetur ad occaecati.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(192, 'Dr. Mortimer Hagenes MD', 4, 'uploads/products/3050a32eaa8b5383ba3b79e7bdcd5411.png', 445, 1, 89, 'Accusantium fugit sit nostrum doloribus consequatur non. Quia quia est ut. Qui omnis officia quisquam ratione. Autem sed et voluptatum laudantium nihil eveniet molestias aut.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(193, 'Deangelo Schaden', 10, 'uploads/products/c926c04e416025f6a626e037fa3617dc.png', 832, 1, 13, 'Sit eum repudiandae qui. Eos et in amet eligendi in et nesciunt nobis. Voluptatibus velit consequatur accusantium vel expedita sed.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(194, 'Sincere Miller II', 10, 'uploads/products/a2a5feeabf50b4d7694701d4261f13c2.png', 885, 1, 24, 'Dolor et quas tempora autem et aperiam quae. Ad minima ut sunt ab neque omnis. Aliquid ut repudiandae accusamus ab impedit incidunt. Dolorem delectus corporis dolor dolore voluptatem est animi.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(195, 'Mrs. Alessandra Veum II', 2, 'uploads/products/230b6470691e12e5ab3a9a60671d783a.png', 690, 1, 62, 'Dolorem sed illum reiciendis ipsam. Assumenda qui ut eius fugiat quibusdam occaecati officiis consequuntur. Occaecati ipsa iusto ipsa qui culpa vero.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(196, 'Flavie Hoppe MD', 9, 'uploads/products/9c9ec9e00ab5a2dd155f0cf054e979a5.png', 100, 0, 17, 'Illum optio at sed facilis. Nulla in asperiores doloribus id. Officiis eum sunt ex quod. Magnam similique eos impedit numquam. Libero hic voluptatum perferendis doloremque.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(197, 'Mylene Wolff', 3, 'uploads/products/aca3ab27d9d876faa3ca320896a84ee0.png', 123, 1, 46, 'Tempora et non harum repudiandae. Eum eligendi doloremque deserunt. Recusandae debitis facilis nihil in quia.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(198, 'Mr. Noe Crooks', 3, 'uploads/products/e156a78f99514404709e979193d387e4.png', 189, 1, 62, 'Et beatae ipsam et quis aut quia. Quia et maxime amet assumenda tempore ullam veritatis. Tenetur ducimus omnis sed voluptatem.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(199, 'Ms. Casandra Crona', 7, 'uploads/products/5cde8a29b4a26be6c7272b7b415fb9f9.png', 608, 0, 47, 'Quas voluptatum praesentium excepturi. Quaerat voluptas iste inventore quia suscipit.', '2021-07-24 06:47:37', '2021-07-24 06:47:37'),
(200, 'Tanya Collins', 10, 'uploads/products/52f452365e9b9cb6d7e12b07cad666e0.png', 429, 1, 69, 'Ab debitis et eos asperiores. Est sed id impedit. Ea qui eos laudantium minus voluptas saepe.', '2021-07-24 06:47:37', '2021-07-24 06:47:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `floor`, `image`, `detail`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Frederic Lowe', 5, 'uploads/rooms/a6d47a22ecc920d7295259571564a3f6.png', 'Sed nisi maxime rerum aliquid est et odit. Officiis dolorem nihil nostrum sed quisquam. Tempore accusantium exercitationem illo asperiores aut odit hic repudiandae.', 207, '2021-07-24 18:30:56', '2021-07-24 18:30:56'),
(2, 'Aracely Krajcik', 2, 'uploads/rooms/a95fde4eea9617a33350f6c78d7d59fa.png', 'Eos ratione nisi nobis provident sunt beatae tempore. Rerum sit officiis alias maiores ea repellat.', 326, '2021-07-24 18:30:56', '2021-07-24 18:30:56'),
(3, 'Ladarius Bergnaum', 2, 'uploads/rooms/1eb415263e4b448408e2bf4dbac2b4ed.png', 'Culpa autem fugiat deserunt quo ipsum quis aliquam. Dolores ea ut doloribus in et enim reiciendis. Velit dolores sunt quisquam nam.', 601, '2021-07-24 18:30:56', '2021-07-24 18:30:56'),
(4, 'Anthony Kuhn', 1, 'uploads/rooms/751275adf81981461089ff90e7f423a5.png', 'Quo autem tempore voluptatibus nobis excepturi vel. Aut hic et sint quo ut velit. Ut explicabo nesciunt eos.', 292, '2021-07-24 18:30:56', '2021-07-24 18:30:56'),
(5, 'Mrs. Ebony Bogisich', 3, 'uploads/rooms/d48c63e51eff742f543be8884a116df1.png', 'Ratione cum aperiam error sed. Animi mollitia et et fuga. A quam rerum inventore dolores autem. Dolorem dolore iure eos dolorem. Sed dolore molestias non beatae qui praesentium.', 344, '2021-07-24 18:30:57', '2021-07-24 18:30:57'),
(7, 'Demo', 1, 'uploads/products/60fd24235b9e2-tải xuống.jpg', 'Phòng rất tốtttt', 10000, '2021-07-25 01:43:15', '2021-07-25 01:50:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_services`
--

CREATE TABLE `room_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `additional_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room_services`
--

INSERT INTO `room_services` (`id`, `room_id`, `service_id`, `additional_price`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 264, '2021-07-24 18:52:42', '2021-07-24 18:52:42'),
(2, 4, 5, 510, '2021-07-24 18:52:42', '2021-07-24 18:52:42'),
(3, 3, 1, 460, '2021-07-24 18:52:42', '2021-07-24 18:52:42'),
(4, 1, 2, 669, '2021-07-24 18:52:42', '2021-07-24 18:52:42'),
(5, 2, 4, 584, '2021-07-24 18:52:42', '2021-07-24 18:52:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Nels Bogan', 'uploads/services/26eaf99b5a79b22e5f28a7323c49ce25.png', '2021-07-24 18:47:30', '2021-07-24 18:47:30'),
(2, 'Noah Williamson', 'uploads/services/569bd52b4afe10cc65c91d9930cff936.png', '2021-07-24 18:47:30', '2021-07-24 18:47:30'),
(3, 'Barney Dickens', 'uploads/services/6666c4bc670fe72a57ae485f132cc8f6.png', '2021-07-24 18:47:30', '2021-07-24 18:47:30'),
(4, 'Mr. Ron Huel III', 'uploads/services/e3c47ccfe0ecd4aed76180f42c2d9cc0.png', '2021-07-24 18:47:30', '2021-07-24 18:47:30'),
(5, 'Johnpaul Hammes', 'uploads/services/a562578696019b6116178237390f2a73.png', '2021-07-24 18:47:30', '2021-07-24 18:47:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone_number`) VALUES
(1, 'Moises Abshire', 'shanahan.lowell@example.net', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qJLvwbOS3I', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '855.504.1675'),
(2, 'Macey Lind', 'croberts@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '370mKyIVms', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(877) 880-9860'),
(3, 'Miss Margarette Medhurst', 'igoyette@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pvsatok5Y8', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '1-866-268-5809'),
(4, 'Fatima Daniel', 'melisa48@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bV2ikHw19Y', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(844) 778-7655'),
(5, 'Rebeca Schmidt', 'gina23@example.com', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JIIYifdf2B', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(866) 477-0984'),
(6, 'Ricky Casper', 'macejkovic.margaret@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CqVK24GscR', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '800.888.3150'),
(7, 'Trenton Kshlerin', 'roman35@example.com', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uIyPtmMzve', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '844.801.5462'),
(8, 'Mrs. Norene Crona MD', 'lilyan14@example.net', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o0Kf4smBcN', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(888) 430-3090'),
(9, 'Miss Audra Konopelski DDS', 'stoltenberg.martine@example.net', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TP9em1xVXz', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(866) 275-5132'),
(10, 'Eudora Koss Sr.', 'wunsch.daphne@example.net', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WSBruPxtDC', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '888.734.4820'),
(11, 'Dr. Tatum Lehner I', 'garfield32@example.net', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2y5AWc8VsY', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '1-844-238-0091'),
(12, 'Emmett McGlynn', 'anahi.jerde@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SkTEZstZl3', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(877) 951-7599'),
(13, 'Wanda Lubowitz', 'alang@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HatXXiXPwn', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(888) 264-6338'),
(14, 'Valentin Thiel PhD', 'freida.cassin@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1M7Ht4wDNd', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '1-888-460-0444'),
(15, 'Prof. Orrin McClure', 'makenzie.hoeger@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o6XLSZbE9p', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(866) 494-4274'),
(16, 'Stanton Krajcik', 'gborer@example.com', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qKTXa4tOz8', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '877.472.4099'),
(17, 'Moriah Hettinger', 'rohara@example.com', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Slj7lxqhPR', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '800.989.5064'),
(18, 'Prof. Warren Aufderhar', 'ernser.yessenia@example.org', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DvzlaRB9uh', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(800) 610-9987'),
(19, 'Sandy Purdy PhD', 'aracely.tillman@example.com', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nh1xjx5pyV', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '(888) 868-5776'),
(20, 'Adolphus Schowalter', 'jacobs.leonardo@example.net', '2021-07-24 06:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1aD760dTFH', '2021-07-24 06:45:33', '2021-07-24 06:45:33', '1-855-902-5262');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room_services`
--
ALTER TABLE `room_services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `room_services`
--
ALTER TABLE `room_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
