/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 29/08/2022 19:55:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 236 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (230, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (231, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (232, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (233, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (234, '2022_08_28_210124_create_posts_table', 1);
INSERT INTO `migrations` VALUES (235, '2022_08_29_164547_create_sessions_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` set('sports','travel','health','foods','crypto-assets') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int NOT NULL,
  `inactive` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Est distinctio.', 'Ut temporibus ratione laborum dolorum. Consequatur qui et dolorem harum totam nostrum quo. Ut sapiente eos atque tempora aperiam minus ex est. Deserunt nemo dolores rerum aut iste eos.\n\nDebitis beatae sed sit ut. Consequatur voluptatum illum qui tempora dolore. Excepturi ex labore rerum soluta placeat.\n\nNulla voluptas sequi et reprehenderit dolore ut. Error ut et aut doloribus totam. Rerum ab et ex ipsum quia aut voluptates.', 'foods,crypto-assets', 3, '0', '1982-06-04 18:24:03', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (2, 'Neque placeat.', 'Veniam esse quia dolorem ea ut. Neque et ad possimus quidem ipsum animi. Neque quisquam est eligendi excepturi cum libero.\n\nId quis tempora corporis. Quas laudantium voluptatem voluptas molestias voluptas. Sequi in corporis dolores eius repudiandae. Officiis odio odit sunt tempora omnis et nihil natus.\n\nEum doloremque facere nam rerum cupiditate inventore. Est recusandae quos corporis numquam. Ut aut aut similique praesentium omnis enim rerum.', 'travel,crypto-assets', 7, '1', '1978-01-26 02:35:33', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (3, 'Nam facilis eum.', 'Optio laudantium ducimus ut quos magni est. Dolorem sit necessitatibus sit.\n\nVoluptatem tempora delectus repudiandae ullam modi. Velit tenetur laboriosam iste nulla et odio qui. Ducimus omnis est placeat officiis id nihil totam. Magni voluptatem eum aliquid quo voluptatum deserunt.\n\nAut et autem quas blanditiis totam quos voluptas. Eveniet voluptatum et quod veniam qui alias. Quibusdam itaque possimus sed et aut.', 'sports,crypto-assets', 5, '1', '2019-10-09 15:01:35', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (4, 'Laborum eveniet.', 'Dolorum animi veritatis aperiam similique et porro soluta est. Ipsa alias illum minus cumque fuga in.\n\nPossimus qui rerum quae et eos qui aut consequatur. Laborum nihil earum iusto consequatur. Repellat nihil iste sint rerum amet ut rerum neque. Earum labore dolorem quisquam maiores quos sint. Fugiat repellendus id vel consequatur voluptatem quia optio culpa.\n\nAliquam velit accusantium velit dolores voluptate non. Laboriosam quaerat qui culpa. Vero et ex fugit dignissimos ut.', 'health,foods', 6, '1', '1971-04-01 08:47:59', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (5, 'Exercitationem.', 'Sit beatae et ut voluptatem sint et. Adipisci illum omnis dolore in. Tempora incidunt aut enim quia maiores et.\n\nQuis nihil at repellat ut quia expedita necessitatibus. Quia voluptas numquam vel. Qui molestias nam harum cum hic fugit voluptate ex. Qui adipisci unde quo consequatur quam dolor error.\n\nCorrupti odit aut modi velit aspernatur rerum. Eos eum adipisci recusandae fugiat officiis qui. Rerum omnis porro omnis quo ut cum placeat.', 'sports,travel', 1, '1', '1988-01-07 06:56:40', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (6, 'Sequi vel est.', 'Libero aut illo voluptatum inventore itaque debitis est commodi. Quia nisi minima reiciendis quisquam. Illo et adipisci sit.\n\nMollitia nihil quaerat reiciendis quo ex sequi exercitationem voluptatem. Est pariatur et aut. Culpa soluta id rem sed quod reiciendis consequatur dolorem. Sed molestias ipsum repellendus eos.\n\nFacere et provident et debitis doloremque eligendi rem. Rerum repellat quo aut unde iusto quia libero. Eaque maiores ab sint.', 'foods,crypto-assets', 9, '0', '1996-11-23 02:54:28', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (7, 'Fuga architecto.', 'Non quia consequatur rerum ex neque explicabo assumenda. Magni mollitia sed laborum deserunt.\n\nQuas minus cum exercitationem voluptatem magni. Ut et dicta quaerat eligendi velit sit omnis. Recusandae reprehenderit dolorem dolorem at placeat porro dolore. Dolores et consequatur odit qui magnam iure.\n\nQuis qui nulla sunt placeat. Iure tenetur maxime et et consequatur ipsa distinctio dolores. Et quisquam hic esse.', 'health,foods', 8, '0', '2007-11-18 15:15:30', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (8, 'Est repudiandae.', 'Quia quia quo et eius facere libero. Aut amet qui repellendus molestias aut doloremque. Voluptate repellendus sapiente eius odit et illo.\n\nUt quae fuga unde consequatur. Qui saepe est provident deserunt dolor voluptatem. Et fuga eligendi nihil quasi minima.\n\nPraesentium praesentium aut tempora. Dolor quidem quisquam aut consequatur. Consequuntur beatae sunt omnis maiores optio optio. Eos tempore culpa ducimus et. Quas aut similique illo rerum aut aliquam non.', 'sports,health', 2, '1', '1979-03-16 17:53:58', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (9, 'Atque nemo iusto.', 'Exercitationem id facilis suscipit quia dignissimos. Qui quaerat dignissimos nesciunt nihil. Ut cupiditate itaque eaque harum quia ex doloremque. Omnis adipisci ut consectetur consequatur.\n\nQuis dignissimos earum animi non et delectus. Quisquam nesciunt consequuntur provident cum. Quod vitae nemo et sapiente est. Magni aut ratione aut dolorem.\n\nIncidunt minus ipsum et aut ut fuga. Totam illum voluptatem aut earum ut. Enim odio qui voluptatem dolorum rem commodi. Quas et cumque officia distinctio sequi eum.', 'travel,foods', 9, '0', '1971-11-05 17:27:49', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (10, 'Eaque voluptas.', 'Voluptas sint fuga et enim voluptatibus assumenda. Itaque voluptas quas repellat repellendus sapiente non. Alias nobis quia qui aut quo et id.\n\nAdipisci cupiditate ab placeat dolorum architecto animi. Cumque ex non architecto aperiam. Dicta sed culpa provident neque mollitia.\n\nMaiores eos consequatur quasi et. Est deleniti accusantium perspiciatis quia consectetur. Consequatur aut qui nobis sapiente magnam fugit.', 'foods,crypto-assets', 5, '0', '1975-07-15 04:12:24', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (11, 'Ratione id animi.', 'Fuga quisquam inventore ullam excepturi nam. Est occaecati nesciunt aut laborum laudantium enim aliquid eos. Placeat ut magnam dolore aut quia. Autem laudantium facere molestias qui nulla autem ad.\n\nLaudantium consequatur et qui in facilis harum modi. Vitae aspernatur esse itaque expedita laudantium eos laudantium. Aut quasi at vitae laboriosam. Quibusdam quam magnam consequatur quasi qui est sed.\n\nFacere ea est aut reiciendis dolores recusandae. Ullam tempora cumque assumenda dolores magnam dolor fuga. Tempora atque officiis ea. Aut ut quaerat adipisci hic magnam. Placeat deserunt porro ipsum.', 'travel,crypto-assets', 6, '0', '2006-06-18 23:50:26', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (12, 'Ipsa deleniti.', 'Doloribus nam consectetur distinctio voluptas iure possimus ut. Id voluptates doloremque porro dignissimos porro et. Beatae repudiandae et et. Voluptas inventore quia dolorem officia dolores. Sit et consequuntur deleniti nesciunt natus iure consequatur.\n\nIpsa qui nihil aut cupiditate magni. Earum sed at illo est. Perspiciatis suscipit soluta ipsam reiciendis aut. Est necessitatibus fugit laudantium repellendus quae laudantium nihil. Doloribus nostrum perspiciatis sint natus aut eius reiciendis.\n\nUllam ut similique incidunt excepturi provident velit ducimus. Sed molestiae vel pariatur officiis et. Et similique ut perferendis iusto nihil odit impedit.', 'health,crypto-assets', 7, '0', '2012-10-09 09:18:24', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (13, 'Illo molestiae iure.', 'Ullam illo quia aut sint maiores eum. Et eum sit saepe consequatur excepturi quia omnis.\n\nSit praesentium magni qui fugit iusto. Dolorem fugit qui veritatis aut sint. Dolorem doloremque et voluptatem aperiam est.\n\nQuis molestiae recusandae saepe dignissimos. Dolorem magni omnis voluptate. Quae quis velit nobis laborum dolorem. Et provident nemo fugit laudantium debitis cum consequuntur.', 'travel,foods', 4, '1', '2002-08-16 21:49:53', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (14, 'Quo qui omnis ut.', 'Adipisci illum alias nisi voluptates fuga. Iste deserunt laboriosam aspernatur tempora et. Sunt qui libero qui ipsam et ut est. Et quia ipsum et fuga repudiandae.\n\nRerum occaecati quaerat optio molestias consectetur. Quo maxime debitis quis eos. Officia veniam aut voluptatum nemo tempora. Harum culpa veniam quod unde molestiae ut.\n\nAccusamus eos id sit dolorem. Voluptas enim dolor aliquid non quae modi vel. Nobis vel omnis et reprehenderit autem. Doloribus qui enim incidunt vero voluptatem amet.', 'sports,health', 9, '1', '1979-10-17 21:31:44', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (15, 'Minus ea corrupti.', 'Perspiciatis placeat reprehenderit omnis deleniti dolorum dolor harum aut. Repellat perferendis in consectetur sit vel. Repellendus laborum incidunt quasi incidunt aut et. Aut molestiae enim architecto veniam.\n\nRatione ex voluptatem accusamus nemo quae aliquam quis. Laudantium nam et recusandae qui temporibus fugit voluptatibus esse. Et placeat ullam voluptas iusto aut iste libero.\n\nFugiat perferendis harum vitae pariatur in. Porro quo quam et tempora enim labore temporibus aspernatur.', 'health,crypto-assets', 7, '0', '2000-12-07 10:15:43', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (16, 'Vitae natus fuga.', 'Voluptates iure quaerat in fugiat tempore dolorem nihil. Sit repellat fugiat officia corrupti est deserunt nobis rerum. Et quaerat dolores unde eveniet id.\n\nSaepe provident facilis explicabo reprehenderit voluptatibus cum. Repellendus aliquid et aut quibusdam placeat. Minima laboriosam alias eligendi temporibus quis. Nihil dolorum magni est aut.\n\nConsectetur excepturi voluptate dicta accusantium. Doloribus molestiae accusamus ab libero maiores hic provident. Ut id pariatur perspiciatis asperiores.', 'sports,travel', 4, '1', '1982-11-01 10:46:08', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (17, 'Fuga et voluptas.', 'Porro rerum nihil consectetur aspernatur. Ipsam eos nam consectetur.\n\nEst vitae ipsam vero modi et. Non sit porro id.\n\nEum et corporis autem possimus vero aut praesentium. Reiciendis quis suscipit libero. Omnis reprehenderit recusandae quisquam error natus natus corporis.', 'health,crypto-assets', 6, '0', '1996-06-24 18:53:08', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (18, 'In iusto omnis.', 'Mollitia numquam quas error nemo omnis reprehenderit accusamus. Facilis praesentium ea tempora eaque exercitationem sed consectetur. Illum explicabo eum nisi explicabo impedit magni architecto asperiores. Minima non consectetur enim mollitia qui.\n\nIusto doloribus explicabo iure qui reprehenderit. Minima dolorem beatae at vel quae officiis ut. Ut culpa laborum ut est repellendus ad tenetur.\n\nNesciunt consectetur quia debitis culpa commodi. Sed distinctio nemo praesentium fugiat consequatur rerum. Accusantium et et sed minus voluptas. Ex ut iste quia dolorem amet.', 'travel,health', 7, '1', '2017-11-28 07:19:30', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (19, 'Ab est consequatur.', 'Adipisci voluptate soluta ex omnis. Sunt voluptas ut maiores facere a dolorem amet debitis. Vel adipisci numquam sint qui.\n\nEos veniam quae aut. Maxime vel sint reiciendis. Eius rerum optio saepe id inventore aut. Sed blanditiis quia officia architecto. Ipsam et neque eaque et ipsam odio aperiam.\n\nDolor in quaerat odio unde repellat quis eum porro. Et eum delectus beatae laudantium beatae atque qui ab.', 'foods,crypto-assets', 9, '1', '1982-09-24 13:39:05', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (20, 'Neque sed est quod.', 'Rerum eum est dolores culpa. Voluptatem distinctio eos iste architecto doloremque magnam. Occaecati blanditiis consequuntur excepturi facilis. Tempora ut ipsum dignissimos corrupti ut.\n\nBeatae cum est illo quia. Laudantium non voluptatem aperiam aut aperiam. Molestias quia nobis eveniet.\n\nDolorum mollitia autem similique doloribus nam architecto temporibus mollitia. Facere id dolores ipsum. Hic est nihil aut architecto. Libero eius distinctio minima quis.', 'travel,foods', 1, '1', '1990-08-29 19:38:49', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (21, 'Unde expedita est.', 'Amet nihil rem harum sequi consequatur. Eum voluptatem itaque aut ab consequuntur. Animi sed impedit dicta consequatur enim est quae.\n\nEst qui pariatur culpa et. Et debitis et nihil sint. Labore ex ea illo nemo et rerum iste.\n\nAutem eligendi excepturi maiores eos velit nam. Quae et asperiores est maxime. Consequatur aliquam non illum. Eius illo sapiente eum odio magnam dolorem est adipisci.', 'sports,foods', 3, '1', '2010-02-21 04:50:07', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (22, 'Voluptatem.', 'Expedita explicabo et voluptatum perspiciatis odit dolorem. Ea cupiditate repudiandae et alias minus eos. Voluptatem ea et est illum.\n\nQuisquam porro molestiae aut aut tempore exercitationem magnam. Ipsum et minus eligendi qui unde. Voluptatum qui rerum dolorem adipisci est. Inventore provident aut quibusdam deserunt tempora deleniti doloribus. Doloremque omnis rem magnam velit reprehenderit debitis rerum voluptatibus.\n\nSint voluptas voluptatibus et corporis. Voluptas illum distinctio et incidunt provident vero. Repellendus et veniam consectetur dolore voluptatibus amet.', 'foods,crypto-assets', 8, '0', '2009-07-19 05:03:34', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (23, 'Nemo sequi quia.', 'Distinctio ducimus dignissimos sint laudantium consequuntur cum velit. Facilis aliquid voluptate praesentium voluptate deleniti. Iure commodi voluptas quis exercitationem quia in.\n\nAd asperiores fugiat dolores aliquam nostrum rem consectetur. Quia inventore et iste quibusdam. Voluptatem molestiae provident impedit impedit quia et non. Deleniti excepturi nam sequi omnis autem molestiae odit. Quis ut aut omnis autem ab sed earum nihil.\n\nVeniam harum in aliquam quidem enim consequatur ut. Odio nihil dignissimos assumenda adipisci quia sit ut. Quis harum voluptatem rerum quo.', 'sports,health', 7, '0', '1984-06-10 00:06:49', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (24, 'Ut accusantium ut.', 'Dolores voluptatem sed consequuntur dolorem ut suscipit voluptatum. Sit voluptatum ut recusandae vitae magni laboriosam. Eveniet officia eaque sunt distinctio nisi facere nobis.\n\nConsequatur tempora officia quo in. Ut officia quis et sint.\n\nIpsam et adipisci itaque neque. Ea sunt ad velit similique et beatae. Blanditiis aliquam officia dicta in doloribus.', 'travel,crypto-assets', 7, '0', '2005-09-18 16:52:53', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (25, 'Eum tempora sed.', 'Consequatur cum dolores nobis quos et quam animi expedita. Quaerat soluta placeat et dolor in quia qui. Autem atque aut dicta aut sequi non tempore.\n\nMaiores sed omnis atque quia voluptatem id accusamus pariatur. Aut dolorum officiis voluptas incidunt temporibus. Minima dicta ducimus velit ut exercitationem dolore sunt sit. Neque officiis qui deserunt veritatis dolorem illum amet.\n\nImpedit labore delectus beatae tempore consequuntur non qui. Occaecati incidunt consequatur at eos in odit necessitatibus. Ut eum est qui. Et nostrum doloribus rem voluptatibus quo accusamus.', 'travel,health', 3, '0', '1985-08-23 19:24:47', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (26, 'Commodi sint.', 'Enim quo recusandae impedit fugiat nemo. Cupiditate in magni sed ipsa cum. Commodi magni sunt accusantium ab aut. Aut ipsum impedit corrupti consequatur commodi.\n\nMaxime hic id temporibus est est ut molestiae. Autem incidunt ducimus eius sit rem quia. Sunt quam nemo non. Inventore ipsam est accusamus sit ipsa labore animi commodi. Nesciunt impedit nesciunt sit quo aut.\n\nNulla fuga qui nisi cumque ut minima nobis. Voluptatem non dolorem dolores quo occaecati est voluptatem. Odit atque quae provident voluptas.', 'sports,travel', 9, '1', '2002-02-26 00:58:39', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (27, 'Voluptas quia.', 'Tempora explicabo neque tempore velit inventore fugit minima. Sint rerum quia accusantium maxime dolorem libero. Modi cum neque aut soluta.\n\nIllo nostrum assumenda natus voluptatem delectus. Et praesentium voluptate earum voluptatem deleniti. Velit omnis tempore quas consequatur officia corrupti cum.\n\nNisi quaerat neque quia eum tenetur est eum. Ducimus a in laboriosam adipisci id qui. Nisi quaerat consequatur aut.', 'sports,travel', 6, '0', '1997-01-13 07:00:22', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (28, 'Optio sit sunt.', 'Eum sed maxime qui. Beatae et est maiores qui eius sed nemo eveniet. Quis sed numquam blanditiis. Sunt non et eum.\n\nFuga quidem fugiat exercitationem alias et. Quod eaque nulla et quisquam iure quaerat. Minima optio sed odio dolore.\n\nEsse amet dolores quis vel distinctio et ipsa corrupti. Dignissimos culpa est reiciendis tempore sequi. Blanditiis ad quo recusandae suscipit impedit illo odio ut.', 'sports,health', 3, '0', '1975-05-21 00:44:52', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (29, 'Tempora harum sit.', 'Quo ea quaerat optio quam. Eveniet ab cupiditate vitae omnis et. Quia maxime provident sequi aut.\n\nIncidunt voluptate necessitatibus similique ipsum. Neque et commodi aut aliquid autem omnis. Id voluptas minima incidunt. Magni unde vero veniam.\n\nVoluptas reprehenderit esse mollitia voluptas. In eos sunt nihil perferendis. Fugit exercitationem est facilis aut labore est sapiente. Et autem velit perferendis.', 'health,foods', 6, '1', '1978-05-25 23:29:03', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (30, 'Inventore occaecati.', 'Ullam cumque sit rerum sint qui quaerat qui. Nihil porro suscipit fugiat dolor molestias cupiditate. Perferendis quasi corporis porro architecto quasi fugit ut. Animi in numquam laboriosam et ipsa voluptate.\n\nSit quo qui ut id. Sunt aut facilis accusamus tempore ducimus et vitae eum. Odio dolore voluptatibus temporibus quod ad voluptatibus dolorem.\n\nTemporibus repudiandae hic nulla qui. Qui magnam autem sunt recusandae aliquam dolorem mollitia quos. Rerum ut voluptatibus corporis qui quisquam voluptas vero.', 'sports,foods', 6, '0', '2019-08-21 19:10:42', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (31, 'Aut ut maiores et.', 'Voluptas voluptas illo a quia pariatur aut et. Adipisci nihil autem ipsam esse hic consectetur et. Quisquam ex hic cupiditate dolores possimus optio et veritatis. Repellendus est debitis qui non perspiciatis aut. Dicta et dicta error in voluptates architecto.\n\nNam aliquid illum et blanditiis repellendus labore est. In voluptas deleniti voluptas placeat dolor repellendus harum.\n\nLaudantium ipsum sunt vel non consequatur quia qui. Inventore aut ratione qui dolores ut architecto. Provident dolor molestiae eveniet. Perspiciatis exercitationem et atque quod et. Facilis quasi rerum iusto ut.', 'health,foods', 6, '0', '2007-09-19 03:34:41', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (32, 'Sit est odio.', 'Voluptatem neque et ea omnis cupiditate debitis perferendis quisquam. Sed aut sapiente accusamus est rerum officia vitae reprehenderit. Perferendis molestias dolor necessitatibus accusamus asperiores officia laborum. Voluptates consequuntur consequatur suscipit est et et atque occaecati.\n\nSint non enim dolorem. Voluptas ab harum quia. Sunt laboriosam quia explicabo rem quibusdam.\n\nAspernatur voluptatibus magnam rerum animi suscipit. Quis autem ut harum animi placeat quam modi. Sunt et omnis velit magni culpa.', 'sports,crypto-assets', 3, '1', '1985-05-28 01:22:01', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (33, 'At voluptatem.', 'Cumque ipsum cupiditate iste. Similique alias optio hic voluptatem perspiciatis quis. Esse recusandae doloribus qui velit quibusdam. Veniam amet sit voluptas suscipit. Dolorum esse est alias blanditiis alias.\n\nExercitationem ut et blanditiis sit ex numquam culpa voluptas. Quia mollitia laborum autem non at. Sint error quidem ut modi autem.\n\nEst dignissimos quis commodi repellendus et aut magni sed. Ipsum atque quia necessitatibus doloremque. Illum ut sunt possimus quis modi ducimus enim. Iusto ipsa ducimus soluta assumenda.', 'foods,crypto-assets', 4, '0', '2013-01-14 11:30:30', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (34, 'Dicta molestiae in.', 'Cumque vero molestias error animi. Voluptatem deserunt sint minima sunt ut. Qui et quibusdam et et. Placeat sed eos consequatur.\n\nOdio provident ducimus in ipsum asperiores tenetur. Ex quas animi itaque nisi et voluptatum amet.\n\nId totam enim ut et temporibus voluptatibus necessitatibus. Rerum consequuntur molestiae sint. Id placeat maiores expedita delectus repellat eum eveniet. Praesentium autem sint ea cupiditate quasi magni. Sit sed ut nemo et repellendus laudantium voluptatem cum.', 'travel,health', 2, '0', '1981-01-05 23:34:17', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (35, 'Omnis nihil et.', 'Quia aut saepe et et dignissimos excepturi. Assumenda sit enim et ut itaque ut corrupti. Natus in minus fugiat officia autem rerum.\n\nQuas aut est vero delectus corporis commodi doloremque. Omnis fugiat dolore sed odio aliquam corporis autem. Molestiae necessitatibus esse voluptatem sapiente. Illum ullam in et reiciendis. Ullam consequatur illum quasi.\n\nEt aut quas aut at perspiciatis fugiat adipisci. In laborum consequatur id unde quos. Soluta nihil neque nulla porro.', 'health,foods', 7, '1', '2015-08-15 22:50:39', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (36, 'Magnam assumenda.', 'Deserunt ut eum saepe ad. Quaerat officiis iusto exercitationem ad magni sed explicabo. Est fugit est recusandae facilis reprehenderit. Velit aliquam laboriosam voluptatibus id id magni. Minus ea praesentium et dolores magnam.\n\nSit autem eius rem officiis neque qui minus. Sit non mollitia laboriosam voluptatem accusamus impedit corporis autem. Facere ut quod et officia nesciunt. Iste expedita laudantium et et suscipit.\n\nUt dolore repellendus repellendus animi unde facilis minus. Deserunt dolores corporis accusantium magni. Aut est sit consectetur illum.', 'sports,health', 6, '1', '2000-11-01 12:51:35', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (37, 'Culpa temporibus.', 'Quidem sint dolores eum blanditiis earum. Rerum quod non officiis labore rerum. Consectetur quidem impedit fuga temporibus illum voluptas. Suscipit hic ad minus at incidunt dicta. Voluptates consequatur doloremque illum et amet.\n\nVoluptatem earum et possimus aut explicabo et enim. Ut consequatur neque animi numquam voluptatem reprehenderit sint. Iste cum et error et. Rerum quibusdam nisi et beatae.\n\nEt alias eum dolorum omnis nobis ut. Tempora aut nemo rerum adipisci molestias deserunt. Vitae nulla ipsam nihil consequatur illo assumenda.', 'foods,crypto-assets', 9, '0', '1996-10-12 04:47:24', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (38, 'Libero qui non.', 'Deleniti ut quo et molestias mollitia unde. Veniam ullam illum in laborum ipsam eum voluptate.\n\nIn dolores voluptate omnis explicabo impedit voluptatem. Quia dolores quis omnis animi. Nisi et molestiae praesentium libero. Aut aut distinctio illum voluptatum id.\n\nQui provident ipsam rerum et voluptas voluptate repellendus esse. Explicabo explicabo eius sed praesentium.', 'health,crypto-assets', 4, '1', '2013-03-15 00:26:29', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (39, 'Accusantium.', 'Dolorem sequi minus ut nostrum ut sunt illum minima. Numquam dolor veritatis accusamus quidem dolores delectus. Quam nihil reiciendis occaecati qui ut est aut.\n\nInventore voluptatem sequi porro vel ad. Non esse inventore nobis fuga dolores. Repellendus non voluptas maiores magni nostrum laudantium est.\n\nQuia temporibus voluptatem rerum animi. Officia nostrum est eum velit totam. Atque nulla voluptas in odit temporibus est.', 'travel,health', 3, '1', '1989-08-21 14:02:39', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (40, 'Rerum consequatur.', 'Ut consequuntur odio consequatur sit soluta. Voluptas eum praesentium assumenda repudiandae dolorem. Omnis aut aperiam excepturi aut nostrum sed et. Enim ut voluptatem qui vitae.\n\nQui ut officiis quo aperiam. Ex nostrum quis asperiores dolorum cumque. Explicabo beatae quasi architecto. Occaecati dicta minus et a rerum ratione.\n\nQuis omnis numquam dolore illo. Quo quae adipisci quia ad.', 'sports,foods', 3, '0', '2002-09-29 01:29:23', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (41, 'Rerum eos quam et.', 'Dolor qui aut impedit. Minus illum est delectus veniam sed. Dicta consectetur eligendi earum natus rem corporis ea. Aliquam alias natus recusandae voluptatibus architecto pariatur.\n\nSimilique consectetur enim debitis dolores illo quod et vero. Blanditiis ut at velit illum asperiores eum nobis. Voluptate rerum molestias qui soluta.\n\nSint sed beatae assumenda. Quo qui non ratione ipsa aliquam ipsam ipsam facere.', 'sports,travel', 1, '0', '1982-12-23 14:33:15', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (42, 'Non explicabo vitae.', 'Eos ea quia temporibus. Quidem culpa debitis velit et distinctio. Praesentium alias molestiae voluptatem ex et. Voluptas rerum ratione tenetur exercitationem natus pariatur et.\n\nAccusantium nihil dignissimos voluptas numquam. Numquam eum adipisci tempore. Assumenda labore sit dolores.\n\nFacere deleniti vel quasi id praesentium temporibus. Quae recusandae inventore similique tempora delectus recusandae rem dolore. Quisquam reprehenderit occaecati est ipsa. Enim animi voluptas blanditiis quia vel voluptas incidunt.', 'travel,foods', 9, '0', '2021-01-11 13:01:03', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (43, 'Nesciunt accusamus.', 'Asperiores reiciendis neque sapiente ratione voluptatem quos perferendis. Velit sed iure officia asperiores laboriosam omnis maxime. Omnis sit quo qui ipsam. Sapiente quisquam id consequatur dicta corrupti. Ea illo beatae mollitia neque voluptas animi eveniet labore.\n\nQui libero cumque nulla tempore molestiae. Hic eos omnis est quia nostrum. Numquam similique at molestias quo totam. At ut labore dicta similique. Nostrum ea atque ut soluta et eum eos.\n\nCupiditate magnam quaerat hic consequatur iure ut porro. Rerum facilis ipsum quibusdam est vero fugiat accusantium. Ullam tenetur ipsam odit nemo.', 'health,crypto-assets', 2, '0', '1985-04-16 16:01:37', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (44, 'Repellendus.', 'Esse dolorem repellat facere at qui voluptas. Consequatur occaecati reprehenderit tenetur molestias libero. Aut et quia dolor architecto voluptas dolores.\n\nOfficiis voluptatem aut velit enim quo odit voluptatem. Corporis fugiat voluptatum omnis dolores.\n\nDolorem explicabo quia et nihil. Sit quia libero quis sunt dicta. Maxime qui accusantium inventore officiis sint praesentium exercitationem. Enim ut magni voluptate praesentium.', 'sports,travel', 8, '1', '2021-11-04 00:05:08', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (45, 'Non eum dignissimos.', 'Et numquam et perferendis explicabo libero sit. Aliquam sunt quo sapiente. Ut qui sit sed laudantium quis perferendis ut. Nihil voluptates tenetur quia.\n\nMinima ipsum aut repellendus. Consequatur cumque nesciunt eligendi. Doloremque perferendis illo autem voluptatem harum eum. In consequatur quaerat non autem.\n\nEt vero quo praesentium et numquam voluptatem. Architecto repudiandae quia id incidunt error accusamus facere. Fugiat error est quas corrupti repudiandae occaecati.', 'sports,foods', 7, '0', '1996-08-17 02:48:26', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (46, 'Veritatis tenetur.', 'Eum minus incidunt accusantium doloribus excepturi voluptas. Voluptatem sequi aperiam maiores a placeat nobis autem. Ut magnam esse impedit eos. Nemo repellendus est consequuntur rem libero doloremque natus.\n\nQuia pariatur alias aut quidem. Sit facilis culpa nisi non. Consequatur ut ducimus ut saepe consequatur quae. Aut ducimus numquam quia eos exercitationem.\n\nAut qui temporibus nam sapiente. Id ut aspernatur dolores. Vitae eos architecto tenetur sapiente odio rerum dolor ipsam.', 'sports,crypto-assets', 4, '1', '1975-11-05 10:17:31', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (47, 'Consectetur itaque.', 'Sint maxime aliquam tempore repudiandae dolorum eum amet. Iure repellat ipsam aspernatur iste. Consectetur consequatur velit asperiores velit beatae. Sit est quo perspiciatis dicta reiciendis voluptatem voluptatem.\n\nRerum beatae iure ipsam quia. Rerum eligendi sint vero consequatur quo id. Et enim minus rerum sit aut. Dolorum nam occaecati eius vel qui corrupti.\n\nEarum laboriosam et consequatur et vero. Quaerat odit quibusdam rerum eos nostrum facilis rem. Beatae nesciunt qui dolor at dolores quae. Aspernatur amet porro commodi non quaerat qui sint est.', 'sports,foods', 7, '0', '1995-12-28 16:35:33', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (48, 'Quas aut quidem.', 'Voluptatem quia nihil sapiente culpa odit. Exercitationem qui doloribus et quia quaerat impedit tenetur porro. Nihil modi et enim aut voluptatibus corporis porro voluptatem. Voluptatem consectetur impedit sint saepe magnam modi ut maxime.\n\nSunt aut beatae totam consequatur quia qui. Dolores deserunt officiis et porro. Ea magni omnis delectus ut voluptatem velit delectus.\n\nUnde voluptas velit doloribus voluptatem in ratione consequatur. Laudantium voluptatem laboriosam qui neque. Repellendus distinctio voluptas eaque neque.', 'sports,health', 3, '1', '2022-03-02 14:16:13', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (49, 'Dolor iure commodi.', 'Asperiores vel sit dolor ut. Occaecati saepe omnis minima praesentium accusantium non sit. Voluptatibus dolor laboriosam aut alias. Dolores sit nemo voluptatem ratione. Nihil omnis in similique consequuntur nesciunt non veritatis.\n\nNon tempore enim quo veritatis. Voluptatem minima amet iste vel. Vel exercitationem architecto deserunt natus recusandae laudantium.\n\nUllam aut quae ratione error. Rem et esse aliquam molestiae autem. Assumenda esse voluptatem et qui. Iure odio illum et fugiat aut vitae eligendi quos. Fuga doloribus mollitia asperiores quo.', 'sports,health', 4, '0', '1998-09-22 04:03:33', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `posts` VALUES (50, 'Odit et labore.', 'Veniam tenetur dolores autem. Iusto vitae dolores aut et suscipit.\n\nSint eveniet beatae et neque. Error laboriosam omnis ducimus excepturi quisquam neque nulla nam. Accusantium aliquam error praesentium aperiam fuga illo amet.\n\nDolor nam tempore amet blanditiis aut molestias eaque. Rerum praesentium aut libero et quia vel laudantium.', 'sports,travel', 6, '0', '1980-05-16 02:18:43', '2022-08-29 16:55:48', '2022-08-29 16:55:48');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Mrs. Karli Lang II', 'raleigh.schowalter@example.org', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm0OQQFQzie', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (2, 'Prof. Richie Jast', 'jason.wisoky@example.com', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kW8Tw20v7A', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (3, 'Rylan McGlynn', 'ava.emmerich@example.org', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5ai9OgwDKD', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (4, 'Stevie Mante', 'turner.euna@example.net', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y1bNNrHqWr', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (5, 'Santino O\'Reilly', 'maurine.goyette@example.org', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '96Dh84DqyM', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (6, 'Katelynn Durgan', 'vonrueden.rey@example.net', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0MAv56OKga', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (7, 'Ms. Gertrude Ratke II', 'stoltenberg.vaughn@example.org', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3f38lTFgaj', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (8, 'Elvie Rowe', 'emilia79@example.net', '2022-08-29 16:55:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vlzzON7N3d', '2022-08-29 16:55:48', '2022-08-29 16:55:48');
INSERT INTO `users` VALUES (9, 'Admin', 'admin@admin.com', '2022-08-29 16:55:48', '$2y$10$GtfVDlthGmSotIW4cUAqce5M4uyH6Tg8/vopZpZ4RGmSV5GktVPkO', 'mdaatUx4bZ', '2022-08-29 16:55:48', '2022-08-29 16:55:48');

SET FOREIGN_KEY_CHECKS = 1;
