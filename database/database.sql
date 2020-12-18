-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2020 г., 02:50
-- Версия сервера: 5.5.53
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `khorezm_silk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'News', 'news', '2020-09-25 10:08:38', '2020-09-25 22:30:24');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', 'fruits', '2020-11-17 11:15:08', '2020-11-17 11:15:08'),
(2, 'Vegetables', 'vegetables', '2020-11-17 11:16:01', '2020-11-17 11:16:01'),
(3, 'Dried fruits', 'dried-fruits', '2020-11-17 11:16:38', '2020-11-17 11:16:38'),
(4, 'Dried vegetables', 'dried-vegetables', '2020-11-17 11:17:40', '2020-11-17 11:17:40');

-- --------------------------------------------------------

--
-- Структура таблицы `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-11-18 11:47:58', '2020-11-18 11:47:58'),
(3, 3, 1, '2020-11-18 11:54:03', '2020-11-18 11:54:03'),
(5, 2, 1, '2020-11-18 12:10:25', '2020-11-18 12:10:25'),
(6, 4, 2, '2020-11-18 13:23:00', '2020-11-18 13:23:00'),
(7, 5, 2, '2020-11-18 13:23:43', '2020-11-18 13:23:43'),
(8, 6, 2, '2020-11-18 13:28:34', '2020-11-18 13:28:34'),
(9, 7, 2, '2020-11-18 13:29:20', '2020-11-18 13:29:20'),
(10, 8, 3, '2020-11-18 13:40:49', '2020-11-18 13:40:49'),
(11, 9, 3, '2020-11-18 13:42:31', '2020-11-18 13:42:31'),
(12, 10, 3, '2020-11-18 13:43:17', '2020-11-18 13:43:17'),
(13, 11, 3, '2020-11-18 13:44:40', '2020-11-18 13:44:40'),
(15, 12, 3, '2020-11-18 13:46:29', '2020-11-18 13:46:29'),
(17, 13, 4, '2020-11-18 13:48:51', '2020-11-18 13:48:51'),
(18, 14, 4, '2020-11-18 13:49:44', '2020-11-18 13:49:44'),
(19, 15, 4, '2020-11-18 13:50:45', '2020-11-18 13:50:45'),
(20, 17, 4, '2020-11-18 13:55:12', '2020-11-18 13:55:12'),
(21, 18, 4, '2020-11-18 13:56:07', '2020-11-18 13:56:07'),
(22, 19, 4, '2020-11-18 13:58:06', '2020-11-18 13:58:06'),
(23, 20, 4, '2020-11-18 14:00:32', '2020-11-18 14:00:32');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '\"\"', 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '\"\"', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 0, 0, 1, 1, 1, 1, '\"\"', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '\"\"', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\",\"crop\":{\"width\":\"600\",\"height\":\"302\"}},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"600\",\"height\":\"302\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 0, 0, 1, 1, 1, 1, '\"\"', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 0, 0, 1, 1, 1, 1, '\"\"', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '\"\"', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 0, 0, 1, 1, 1, 1, '\"\"', 4),
(18, 2, 'body', 'rich_text_box', 'body', 0, 0, 1, 1, 1, 1, '\"\"', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 0, 0, 1, 1, 1, 1, '\"\"', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 0, 0, 1, 1, 1, 1, '\"\"', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '\"\"', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '\"\"', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '\"\"', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '\"\"', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"\\\",\\\"null\\\":\\\"\\\",\\\"options\\\":{\\\"\\\":\\\"-- None --\\\"},\\\"relationship\\\":{\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"name\\\"}}\"', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":1}\"', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '\"{\\\"slugify\\\":{\\\"origin\\\":\\\"name\\\"}}\"', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '\"\"', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '\"\"', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '\"\"', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '\"\"', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(55, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '\"\\\"\\\"\"', 1),
(56, 7, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"{\\\"validation\\\":{\\\"rule\\\":\\\"max:100\\\"}}\"', 2),
(57, 7, 'slug', 'hidden', 'slug', 0, 0, 0, 1, 1, 1, '\"{\\\"default\\\":\\\"0\\\"}\"', 3),
(58, 7, 'details', 'hidden', 'Details', 0, 0, 0, 1, 1, 1, '\"{\\\"default\\\":\\\"0\\\"}\"', 4),
(59, 7, 'price', 'hidden', 'price', 0, 0, 0, 1, 1, 1, '\"null\"', 5),
(60, 7, 'description', 'hidden', 'Description', 0, 0, 0, 1, 1, 1, '\"{\\\"default\\\":\\\"0\\\"}\"', 6),
(61, 7, 'featured', 'hidden', 'Featured', 0, 0, 0, 1, 1, 1, '\"\\\"{\\\\\\\"on\\\\\\\":\\\\\\\"Yes\\\\\\\",\\\\\\\"off\\\\\\\":\\\\\\\"No\\\\\\\"}\\\"\"', 7),
(62, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '\"{\\\"quality\\\":\\\"70%\\\",\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"', 8),
(63, 7, 'images', 'hidden', 'Images', 0, 0, 0, 1, 1, 1, '\"\\\"\\\"\"', 9),
(64, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '\"\\\"\\\"\"', 10),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '\"\\\"\\\"\"', 11),
(66, 7, 'quantity', 'hidden', 'Quantity', 0, 0, 0, 1, 1, 1, '\"\\\"\\\"\"', 8),
(67, 8, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(68, 8, 'code', 'text', 'code', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(69, 8, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '\"{\\\"default\\\":\\\"fixed\\\",\\\"options\\\":{\\\"fixed\\\":\\\"Fixed Value\\\",\\\"percent\\\":\\\"Percent Off\\\"}}\"', 3),
(70, 8, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '\"{\\\"null\\\":\\\"\\\"}\"', 4),
(71, 8, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '\"{\\\"null\\\":\\\"\\\"}\"', 5),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '\"\"', 6),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '\"\"', 7),
(74, 9, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(75, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(76, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(79, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(80, 10, 'product_id', 'number', 'Product Id', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(81, 10, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(82, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(83, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(84, 11, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '\"\"', 1),
(85, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, '\"\"', 2),
(86, 11, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 0, '\"\"', 3),
(87, 11, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 0, '\"\"', 4),
(88, 11, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 0, '\"\"', 5),
(89, 11, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 0, '\"\"', 6),
(90, 11, 'billing_province', 'text', 'Billing Province', 1, 0, 1, 1, 1, 0, '\"\"', 7),
(91, 11, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 0, 1, 1, 1, 0, '\"\"', 8),
(92, 11, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 0, '\"\"', 9),
(93, 11, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 1, 1, 1, 1, 0, '\"\"', 10),
(94, 11, 'billing_discount', 'number', 'Discount', 1, 1, 1, 0, 0, 0, '\"\"', 11),
(95, 11, 'billing_discount_code', 'text', 'Discount Code', 0, 0, 1, 0, 0, 0, '\"\"', 12),
(96, 11, 'billing_subtotal', 'number', 'Subtotal', 1, 1, 1, 0, 0, 0, '\"\"', 13),
(97, 11, 'billing_tax', 'number', 'Tax', 1, 1, 1, 0, 0, 0, '\"\"', 14),
(98, 11, 'billing_total', 'number', 'Total', 1, 1, 1, 0, 0, 0, '\"\"', 15),
(99, 11, 'payment_gateway', 'text', 'Payment Gateway', 1, 0, 1, 0, 0, 0, '\"\"', 16),
(100, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 0, 0, '\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"', 17),
(101, 11, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, '\"\"', 18),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 19),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 20),
(104, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(106, 12, 'desc', 'text_area', 'Desc', 0, 0, 1, 1, 1, 1, '{}', 3),
(107, 12, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{}', 4),
(108, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(109, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(110, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(111, 15, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\",\"crop\":{\"width\":\"1100\",\"height\":\"600\"}},{\"name\":\"cropped\",\"crop\":{\"width\":\"370\",\"height\":\"200\"}}]}', 2),
(112, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(113, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(114, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 16, 'author_full_name', 'text', 'Author Full Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(116, 16, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 3),
(117, 16, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 4),
(118, 16, 'content', 'text_area', 'Content', 0, 1, 1, 1, 1, 1, '{}', 5),
(119, 16, 'rate', 'text', 'Rate', 0, 1, 1, 1, 1, 1, '{}', 6),
(120, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(121, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-09-25 10:08:38', '2020-11-12 09:42:54'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-09-25 10:08:38', '2020-11-14 14:32:45'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UsersController', '', 1, 0, NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-09-25 10:08:39', '2020-11-18 12:10:06'),
(8, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, '', '', 1, 0, NULL, '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(9, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, '', '', 1, 0, NULL, '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(10, 'category-product', 'category-product', 'Category Product', 'Category Products', 'voyager-categories', 'App\\CategoryProduct', NULL, '', '', 1, 0, NULL, '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(11, 'orders', 'orders', 'Order', 'Orders', 'voyager-documentation', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', '', 1, 0, NULL, '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(12, 'slides', 'slides', 'Slide', 'Slides', 'voyager-photos', 'App\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-16 11:07:28', '2020-10-16 11:17:29'),
(13, 'Gallery', 'gallery', 'Gallery', 'Galleries', NULL, 'App\\Gallery', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-11-14 15:27:04', '2020-11-14 15:27:04'),
(15, 'galleries', 'gallerys', 'Gallery', 'Galleries', 'voyager-images', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-14 15:33:28', '2020-11-14 15:35:40'),
(16, 'reviews', 'reviews', 'Review', 'Reviews', 'voyager-thumbs-up', 'App\\Review', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":\"author_full_name\",\"scope\":null}', '2020-12-11 13:13:24', '2020-12-11 13:18:07');

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'gallerys\\November2020\\Mxl2Y34CIb7YUYI81kY9.JPG', '2020-11-14 15:34:49', '2020-11-14 15:34:49'),
(2, 'gallerys\\November2020\\HoHscC2uDzVSM7iaOOrd.JPG', '2020-11-14 15:35:03', '2020-11-14 15:35:03'),
(3, 'gallerys\\November2020\\oSsMGd4cpZo0FbwSH7Id.JPG', '2020-11-14 15:35:18', '2020-11-14 15:35:18'),
(4, 'gallerys\\November2020\\8i05X2frRYfbGL321wEs.JPG', '2020-11-14 16:12:32', '2020-11-14 16:12:32'),
(5, 'gallerys\\November2020\\a09IzOpG0vStTZJKsi3v.JPG', '2020-11-15 02:25:40', '2020-11-15 02:25:40'),
(6, 'gallerys\\November2020\\zk1JuVteoiSVnf7D03Ym.JPG', '2020-11-15 02:25:54', '2020-11-15 02:25:54'),
(7, 'gallerys\\November2020\\rYCxCGALP2D2riMaZD4L.JPG', '2020-11-15 02:26:20', '2020-11-15 02:26:20'),
(8, 'gallerys\\November2020\\4XBk0orKIrKLon3JIidq.JPG', '2020-11-15 02:47:17', '2020-11-15 02:47:17'),
(9, 'gallerys\\November2020\\xSCIyMQEQ642fonrKEQP.JPG', '2020-11-15 02:51:00', '2020-11-15 02:51:43'),
(10, 'gallerys\\November2020\\EHfDrPfzukFJdpLglNX0.JPG', '2020-11-15 02:52:17', '2020-11-15 02:52:17');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(2, 'main', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(3, 'footer', '2020-09-25 10:08:39', '2020-09-25 10:08:39');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-09-25 10:08:38', '2020-09-25 10:08:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2020-09-25 10:08:38', '2020-12-12 12:36:10', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 4, '2020-09-25 10:08:38', '2020-10-16 11:03:45', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 9, '2020-09-25 10:08:38', '2020-12-12 12:36:10', 'voyager.users.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2020-09-25 10:08:38', '2020-10-16 11:03:45', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 10, '2020-09-25 10:08:38', '2020-12-12 12:36:10', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2020-09-25 10:08:38', '2020-12-12 12:36:10', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2020-09-25 10:08:38', '2020-09-25 10:08:39', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2020-09-25 10:08:38', '2020-09-25 10:08:39', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2020-09-25 10:08:38', '2020-09-25 10:08:39', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2020-09-25 10:08:38', '2020-12-12 12:36:10', 'voyager.settings.index', NULL),
(14, 1, 'Products', '/admin/products', '_self', 'voyager-bag', NULL, NULL, 2, '2020-09-25 10:08:39', '2020-10-16 11:03:19', NULL, NULL),
(15, 1, 'Categories', '/admin/category', '_self', 'voyager-tag', NULL, NULL, 3, '2020-09-25 10:08:39', '2020-10-16 11:03:19', NULL, NULL),
(18, 2, 'Shop', '', '_self', NULL, NULL, NULL, 1, '2020-09-25 10:08:39', '2020-09-25 10:08:39', 'shop.index', NULL),
(19, 2, 'About', '#', '_self', NULL, NULL, NULL, 2, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(20, 2, 'Blog', 'https://blog.laravelecommerceexample.ca', '_self', NULL, NULL, NULL, 2, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(21, 3, 'Follow Me:', '', '_self', NULL, NULL, NULL, 1, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(22, 3, 'fa-globe', 'http://andremadarang.com', '_self', NULL, NULL, NULL, 2, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(23, 3, 'fa-youtube', 'http://youtube.com/drehimself', '_self', NULL, NULL, NULL, 2, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(24, 3, 'fa-github', 'http://github.com/drehimself', '_self', NULL, NULL, NULL, 2, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(25, 3, 'fa-twitter', 'http://twitter.com/drehimself', '_self', NULL, NULL, NULL, 2, '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL, NULL),
(26, 1, 'Slides', '', '_self', 'voyager-photos', '#000000', NULL, 6, '2020-10-16 11:07:28', '2020-12-12 12:36:10', 'voyager.slides.index', 'null'),
(28, 1, 'Galleries', '', '_self', 'voyager-images', '#000000', NULL, 7, '2020-11-14 15:33:28', '2020-12-12 12:36:10', 'voyager.gallerys.index', 'null'),
(29, 1, 'Reviews', '', '_self', 'voyager-thumbs-up', '#000000', NULL, 6, '2020-12-11 13:13:24', '2020-12-11 13:15:23', 'voyager.reviews.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_11_26_013050_add_user_role_relationship', 1),
(25, '2017_11_26_015000_create_user_roles_table', 1),
(26, '2017_12_11_054653_create_products_table', 1),
(27, '2018_01_11_060124_create_category_table', 1),
(28, '2018_01_11_060548_create_category_product_table', 1),
(29, '2018_01_14_215535_create_coupons_table', 1),
(30, '2018_02_08_021546_add_image_to_products_table', 1),
(31, '2018_02_08_032544_add_images_to_products_table', 1),
(32, '2018_02_25_005243_create_orders_table', 1),
(33, '2018_02_25_010522_create_order_product_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(38, '2018_04_23_012009_create_user_roles_table_fix', 1),
(39, '2018_06_29_032914_add_quantity_to_products_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'About us', 'LLC \"PERFECT LOGISTICS\" was established on January 23, 2017 in the Bagat district of the Khorezm region, the Republic of Uzbekistan. Taxpayer identification number 304558504.\n\nThe main goal of the company is to export fresh and dried packaged fruits, vegetables and fruits of Uzbekistan to foreign markets.\n\nTo achieve this goal, the company built and put into operation 2 hectares of greenhouses in 2018. Every year we collect 500 tons of tomato harvest from the greenhouse.', '<div id=\"lines-section\">\n<div class=\"navigator\">\n<div class=\"navigator-circle-top\">&nbsp;</div>\n<div class=\"navigator-circle-mid\">&nbsp;</div>\n<div class=\"navigator-circle-bottom\">&nbsp;</div>\n<div class=\"navigator-stick\">&nbsp;</div>\n</div>\n<div class=\"years-section\">\n<div class=\"years-content years-content\">\n<div class=\"years-date\">\n<div>2019</div>\n</div>\n<div class=\"years-txt\">In 2019, the refrigeration complex of the Turkish company \"Ko\'rkmas Panel\" with a volume of 1600 tons was built. This gave us a fourfold increase in exports in 2019 to $ 580,000. For information, the volume of exports in 2018 amounted to 163,300 US dollars.</div>\n</div>\n<div class=\"years-content years-content-2\">\n<div class=\"years-date\">\n<div>2019</div>\n</div>\n<div class=\"years-txt\">In 2019, buildings were built for the installation of a line for deep processing of fresh fruit, vegetables and fruits, which are obtained by sizing and sorting vegetables and fruits for laying in refrigerators. Also, a line from the Turkish company \"Go\'ztepe\" was purchased and put into operation. Which gave us a further increase in the volume of exported products, such as dried paprika, leeks, eggplant, pumpkin, red beet and apple, pear, quince, etc. <br />The volume of investments for the creation of this complex for: growing, receiving, sorting - sizing, processing - drying, storing and exporting packaged agricultural products amounted to more than 8 million US dollars.</div>\n</div>\n<div class=\"years-content years-content-3\">\n<div class=\"years-date\">\n<div>2020</div>\n</div>\n<div class=\"years-txt\">In January 2020, our company became a \"Cluster for Horticulture and Fruit Vegetables\" with a volume of 1204 hectares of land, of which: 567.5 hectares of orchards, 166.2 hectares of vineyards, and 470 hectares of fruit vegetables. This allows our company to plan in advance the volume of products that we can get for the ripening season, and also, based on the order of the customers, we can sow the crop that our client requires. The planned volume of accepted products in 2020 will amount to 16,300 tons and export will reach 3.5 million US dollars.</div>\n</div>\n</div>\n</div>', 'pages\\November2020\\l1Bsi1aPofplHpX5f7he.png', 'about-us', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-09-25 10:08:39', '2020-11-22 10:09:32');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(2, 'browse_bread', NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(3, 'browse_database', NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(4, 'browse_media', NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(5, 'browse_compass', NULL, '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(6, 'browse_menus', 'menus', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(7, 'read_menus', 'menus', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(8, 'edit_menus', 'menus', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(9, 'add_menus', 'menus', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(10, 'delete_menus', 'menus', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(11, 'browse_pages', 'pages', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(12, 'read_pages', 'pages', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(13, 'edit_pages', 'pages', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(14, 'add_pages', 'pages', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(15, 'delete_pages', 'pages', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(16, 'browse_roles', 'roles', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(17, 'read_roles', 'roles', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(18, 'edit_roles', 'roles', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(19, 'add_roles', 'roles', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(20, 'delete_roles', 'roles', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(21, 'browse_users', 'users', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(22, 'read_users', 'users', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(23, 'edit_users', 'users', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(24, 'add_users', 'users', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(25, 'delete_users', 'users', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(26, 'browse_posts', 'posts', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(27, 'read_posts', 'posts', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(28, 'edit_posts', 'posts', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(29, 'add_posts', 'posts', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(30, 'delete_posts', 'posts', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(31, 'browse_categories', 'categories', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(32, 'read_categories', 'categories', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(33, 'edit_categories', 'categories', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(34, 'add_categories', 'categories', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(35, 'delete_categories', 'categories', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(36, 'browse_settings', 'settings', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(37, 'read_settings', 'settings', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(38, 'edit_settings', 'settings', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(39, 'add_settings', 'settings', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(40, 'delete_settings', 'settings', '2020-09-25 10:08:38', '2020-09-25 10:08:38', NULL),
(41, 'browse_products', 'products', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(42, 'read_products', 'products', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(43, 'edit_products', 'products', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(44, 'add_products', 'products', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(45, 'delete_products', 'products', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(46, 'browse_coupons', 'coupons', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(47, 'read_coupons', 'coupons', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(48, 'edit_coupons', 'coupons', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(49, 'add_coupons', 'coupons', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(50, 'delete_coupons', 'coupons', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(51, 'browse_category', 'category', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(52, 'read_category', 'category', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(53, 'edit_category', 'category', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(54, 'add_category', 'category', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(55, 'delete_category', 'category', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(56, 'browse_category-product', 'category-product', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(57, 'read_category-product', 'category-product', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(58, 'edit_category-product', 'category-product', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(59, 'add_category-product', 'category-product', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(60, 'delete_category-product', 'category-product', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(61, 'browse_orders', 'orders', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(62, 'read_orders', 'orders', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(63, 'edit_orders', 'orders', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(64, 'add_orders', 'orders', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(65, 'delete_orders', 'orders', '2020-09-25 10:08:39', '2020-09-25 10:08:39', NULL),
(66, 'browse_slides', 'slides', '2020-10-16 11:07:28', '2020-10-16 11:07:28', NULL),
(67, 'read_slides', 'slides', '2020-10-16 11:07:28', '2020-10-16 11:07:28', NULL),
(68, 'edit_slides', 'slides', '2020-10-16 11:07:28', '2020-10-16 11:07:28', NULL),
(69, 'add_slides', 'slides', '2020-10-16 11:07:28', '2020-10-16 11:07:28', NULL),
(70, 'delete_slides', 'slides', '2020-10-16 11:07:28', '2020-10-16 11:07:28', NULL),
(71, 'browse_Gallery', 'Gallery', '2020-11-14 15:27:04', '2020-11-14 15:27:04', NULL),
(72, 'read_Gallery', 'Gallery', '2020-11-14 15:27:04', '2020-11-14 15:27:04', NULL),
(73, 'edit_Gallery', 'Gallery', '2020-11-14 15:27:04', '2020-11-14 15:27:04', NULL),
(74, 'add_Gallery', 'Gallery', '2020-11-14 15:27:04', '2020-11-14 15:27:04', NULL),
(75, 'delete_Gallery', 'Gallery', '2020-11-14 15:27:04', '2020-11-14 15:27:04', NULL),
(76, 'browse_galleries', 'galleries', '2020-11-14 15:33:28', '2020-11-14 15:33:28', NULL),
(77, 'read_galleries', 'galleries', '2020-11-14 15:33:28', '2020-11-14 15:33:28', NULL),
(78, 'edit_galleries', 'galleries', '2020-11-14 15:33:28', '2020-11-14 15:33:28', NULL),
(79, 'add_galleries', 'galleries', '2020-11-14 15:33:28', '2020-11-14 15:33:28', NULL),
(80, 'delete_galleries', 'galleries', '2020-11-14 15:33:28', '2020-11-14 15:33:28', NULL),
(81, 'browse_reviews', 'reviews', '2020-12-11 13:13:24', '2020-12-11 13:13:24', NULL),
(82, 'read_reviews', 'reviews', '2020-12-11 13:13:24', '2020-12-11 13:13:24', NULL),
(83, 'edit_reviews', 'reviews', '2020-12-11 13:13:24', '2020-12-11 13:13:24', NULL),
(84, 'add_reviews', 'reviews', '2020-12-11 13:13:24', '2020-12-11 13:13:24', NULL),
(85, 'delete_reviews', 'reviews', '2020-12-11 13:13:24', '2020-12-11 13:13:24', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(13, 1),
(13, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(8, 3, 1, 'Yarn Dyed Vichy Silk Fabric (6A Grade)', '', 'Yarn Dyed Vichy Silk Fabric for Chic Garment dresses, shirts and so on. Material: 7% Mulberry Silk + 93% Cotton', '<p>Yarn Dyed Vichy Silk Fabric for Chic Garment dresses, shirts and so on. <span style=\"color: #222222; font-family: Roboto, Arial, \'Microsoft YaHei\', sans-serif; font-size: 16px;\">Material: 7% Mulberry Silk + 93% Cotton</span></p>', 'posts\\December2020\\My8cwcQMGwZAPTEXNgMr.jpg', 'yarn-dyed-vichy-silk-fabric-6a-grade', '', '', 'PUBLISHED', 0, '2020-12-18 18:23:34', '2020-12-18 18:29:10'),
(9, 3, 1, 'Yarn Dyed Vichy Silk Fabric (6A Grade)', '', 'Yarn Dyed Vichy Silk Fabric for Chic Garment dresses, shirts and so on. Material: 7% Mulberry Silk + 93% Cotton', '<p>Yarn Dyed Vichy Silk Fabric for Chic Garment dresses, shirts and so on.&nbsp;<span style=\"color: #222222; font-family: Roboto, Arial, \'Microsoft YaHei\', sans-serif; font-size: 16px;\">Material: 7% Mulberry Silk + 93% Cotton</span></p>', 'posts\\December2020\\umYd8Kqrl1mRbANlboHQ.jpg', 'yarn-dyed-vichy-silk-fabric-6a-grade', '', '', 'PUBLISHED', 0, '2020-12-18 18:31:19', '2020-12-18 18:31:19'),
(10, 3, 1, 'Yarn Dyed Vichy Silk Fabric (6A Grade)', '', 'Yarn Dyed Vichy Silk Fabric for Chic Garment dresses, shirts and so on. Material: 7% Mulberry Silk + 93% Cotton', '<p>Yarn Dyed Vichy Silk Fabric for Chic Garment dresses, shirts and so on.&nbsp;<span style=\"color: #222222; font-family: Roboto, Arial, \'Microsoft YaHei\', sans-serif; font-size: 16px;\">Material: 7% Mulberry Silk + 93% Cotton</span></p>', 'posts\\December2020\\yxlsKsd3xNy58rXxe5up.jpg', 'yarn-dyed-vichy-silk-fabric-6a-grade', '', '', 'PUBLISHED', 0, '2020-12-18 18:32:19', '2020-12-18 18:32:19'),
(11, 3, 1, 'Experienced with several projects in fabric', '', 'Experienced with several projects in fabric experienced with several projects in fabric', '<p>Experienced with several projects in fabric experienced with several projects in fabric</p>', 'posts\\December2020\\VfY3BOazp7OsWhPkp0UH.jpg', 'experienced-with-several-projects-in-fabric', '', '', 'PUBLISHED', 0, '2020-12-18 18:45:16', '2020-12-18 18:45:16');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(4) DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '0', '', 0, '', NULL, NULL, 'products\\November2020\\qfqSayka3kIhMwNVri6m.png', NULL, '2020-11-18 16:47:00', '2020-11-18 16:47:00'),
(2, 'Grenades', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\qABESkpKPWsI4RuS1ny5.png', NULL, '2020-11-18 16:52:00', '2020-11-18 12:04:00'),
(3, 'Grapes', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\qvElDdwfWdEldsnVB2r1.png', NULL, '2020-11-18 16:53:00', '2020-11-18 16:53:00'),
(4, 'Cabbage', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\p9LuOdEnkjq8NvAGGgJm.png', NULL, '2020-11-18 18:22:00', '2020-11-18 18:22:00'),
(5, 'Carrot', 'carrot-2', '', 0, '', NULL, NULL, 'products\\November2020\\auSRkGBOnwSLYy6Aun1a.png', NULL, '2020-11-18 18:23:00', '2020-11-18 18:23:00'),
(6, 'Pomidor', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\NqKPN6Lise4wBPrxyo1U.png', NULL, '2020-11-18 18:28:00', '2020-11-18 18:28:00'),
(7, 'Cucumbers', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\Y6XYLrYGxPrRwnMpXBFA.png', NULL, '2020-11-18 18:29:00', '2020-11-18 18:29:00'),
(8, 'Raisins', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\mFYHrsvpdx4o47b680BQ.png', NULL, '2020-11-18 18:40:00', '2020-11-18 18:40:00'),
(9, 'Apricot', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\TmUE4CaktLEMFZKD9GBr.png', NULL, '2020-11-18 18:41:00', '2020-11-18 18:41:00'),
(10, 'Apples', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\eNwUQ7Gt2plWtz1DpEio.png', NULL, '2020-11-18 18:43:00', '2020-11-18 18:43:00'),
(11, 'Black plum', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\mNhKunBqST4tVI0krNOJ.png', NULL, '2020-11-18 18:44:00', '2020-11-18 18:44:00'),
(12, 'Melon', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\uZW5VShRSp3Db76uKoDg.png', NULL, '2020-11-18 18:45:00', '2020-11-18 13:46:29'),
(13, 'Eggplant', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\3XGYDUo894yrtclsFsYr.png', NULL, '2020-11-18 18:48:00', '2020-11-18 18:48:00'),
(14, 'Pumpkin', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\5FGHcZmcio69zHP5q2Z5.png', NULL, NULL, NULL),
(15, 'Beet', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\qWu8dqMiQnkPSUd7Ukov.png', NULL, NULL, NULL),
(17, 'Dried carrots', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\oK62FlpMJGvkTmVpUESH.png', NULL, '2020-11-18 18:55:00', '2020-11-18 18:55:00'),
(18, 'Paprika', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\ZQ2LNcg80NTFtX3UAJpn.png', NULL, NULL, NULL),
(19, 'Dried cabbage', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\GAgVIu0AgN4ppnowXLkd.png', NULL, NULL, NULL),
(20, 'Leek', NULL, '', 0, '', NULL, NULL, 'products\\November2020\\chs9sxAm0YIIw3sV4wV5.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `author_full_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` tinytext COLLATE utf8mb4_unicode_ci,
  `rate` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `author_full_name`, `photo`, `type`, `content`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'Mansurbek', 'reviews\\December2020\\H4708W36tKbl3TWIXsl0.jpg', 'Marketolog', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere tenetur nam non in consectetur officia, id consequatur fugiat voluptates nesciunt sit. Ullam, suscipit velit?', 3, '2020-12-18 14:53:17', '2020-12-18 14:53:17'),
(1, 'Jaloladdin', 'reviews\\December2020\\w4shBqKzy6XcUCNLI9bk.jpg', 'Businessman', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere tenetur nam non in consectetur officia, id consequatur fugiat voluptates nesciunt sit. Ullam, suscipit velit?', 5, '2020-12-18 14:54:32', '2020-12-18 15:47:20'),
(3, 'Rasulbek', 'reviews\\December2020\\TFGh8Qz0egnWpgnzJMrx.jpg', 'Savdogar', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere tenetur nam non in consectetur officia, id consequatur fugiat voluptates nesciunt sit. Ullam, suscipit velit?', 2, '2020-12-18 15:00:00', '2020-12-18 17:55:19'),
(1, 'Farida', 'reviews\\December2020\\pXZNl0sBtNViwmBHeile.jpg', 'Shoira', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere tenetur nam non in consectetur officia, id consequatur fugiat voluptates nesciunt sit. Ullam, suscipit velit?', 4, '2020-12-18 15:02:00', '2020-12-18 15:47:20'),
(1, 'Temurbek', 'reviews\\December2020\\jqyERM1QwyhTioGJuxeJ.jpg', 'Senator', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere tenetur nam non in consectetur officia, id consequatur fugiat voluptates nesciunt sit. Ullam, suscipit velit?', 5, '2020-12-18 17:53:18', '2020-12-18 17:53:18');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(2, 'user', 'Normal User', '2020-09-25 10:08:38', '2020-09-25 10:08:38'),
(3, 'adminweb', 'Admin Web', '2020-09-25 10:08:39', '2020-09-25 10:08:39');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Khorezm Silk', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Back Office. Control panel of Khorezm Silk.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', '5', '', 'text', 6, 'Site'),
(12, 'site.header_phone', 'Header phone', 'xorazm-ipagi@gmail.ru', NULL, 'text', 7, 'Site'),
(13, 'site.contact_name_fist', 'Contact name first', 'Mukhammadjon Abdirimov', NULL, 'text', 8, 'Site'),
(14, 'site.contact_name_fist_ru', 'Contact name first RU', 'Мухаммаджон Абдиримов', NULL, 'text', 9, 'Site'),
(15, 'site.contact_name_second', 'Contact name second', 'Zafarbek Otajonov', NULL, 'text', 10, 'Site'),
(16, 'site.contact_name_second_ru', 'Contact name second RU', 'Зафарбек Отажонов', NULL, 'text', 11, 'Site'),
(17, 'site.contact_first_phone', 'Conact first phone', '+998(99) 309-51-54', NULL, 'text', 12, 'Site'),
(18, 'site.contact_second_phone', 'Contact  second phone', '+998(99) 309-51-54', NULL, 'text', 13, 'Site'),
(19, 'site.contact_first_tg', 'Conact first Telegram', 'bankermumish', NULL, 'text', 14, 'Site'),
(20, 'site.contact_second_tg', 'Conact second Telegram', 'zafarbeyofficial', NULL, 'text', 15, 'Site'),
(21, 'site.address_en', 'Address ENG', 'Republic of Uzbekistan Khorezm region, Urgench city, str V. Fayazova 1A', NULL, 'text', 16, 'Site'),
(22, 'site.address_ru', 'Address RU', 'Республика Узбекистан Хорезмская область, г.Ургенч, улю В.Фаяазова 1А', NULL, 'text', 17, 'Site'),
(23, 'site.mail_index', 'Mail index ENG', 'Bagat, mail index 220200', NULL, 'text', 18, 'Site'),
(24, 'site.mail_index_ru', 'Mail index RUS', 'Багетская область, почтовый индекс: 220200', NULL, 'text', 19, 'Site'),
(25, 'site.feedback_sender_id', 'Feedback sender profiel ID (Telegram)', '1263710143', NULL, 'text', 20, 'Site'),
(26, 'site.instagram_url', 'Instagram address', 'https://instagram.com', NULL, 'text', 21, 'Site'),
(27, 'site.facebook_url', 'Facebook address', 'https://facebook.com', NULL, 'text', 22, 'Site'),
(28, 'site.telegram_url', 'Telegram address', 'https://telegram.org', NULL, 'text', 23, 'Site'),
(30, 'site.home_intro_ru', 'Home introduction RU', 'Мы изготовливаес декортивные подушки,\r\nпостельное белье, салфетки под приборы,\r\nфартуки, прихватки и рукавацы', NULL, 'text_area', 24, 'Site'),
(31, 'site.home_intro_eng', 'Home introduction ENG', 'We make decorative pillows, soft linens, \r\ntowels, convinient aprons and \r\ndifferent potholders', NULL, 'text_area', 25, 'Site'),
(33, 'site.home_big_intro_ru', 'Home big introduction RU', 'является дочерной, компанией, входящая в состав компании \"Вahmal Сrоuр\" ведёт свою деятельность основным образом занимается изготовлением и переработкой шелкопряда, так же изготовлением различных готовых текстильных изделий готовых продукции. И продукции из шёлка, также мы работаем под заказ на ваше усмотрение.                                                                                   \r\n\r\nМы занимаемся реализацией внутренного рынка, а также ведём экспорт и импорттекстильной продукции товарооборотом в год среднем не менее 5 миллионов долларов. Мы можем представить вам различного рода текстильную продукцию изготовленную в нашей компаний имеющую ряд сертификатов качеств.', NULL, 'text_area', 26, 'Site'),
(34, 'site.home_big_intro_eng', 'Home big introduction ENG', 'is a subsidiary company, a part of the company \"Bahmal Сrоup\" conducts its activities mainly engaged in the manufacture and processing of silkworms, as well as the manufacture of various finished textile products of finished products. \r\nAnd silk products, we also work on order at your discretion.\r\n\r\nWe are engaged in the implementation of the domestic market, and also export and import textile products with an average annual turnover of at least $ 5 million. \r\nWe can present to you various kinds of textile products manufactured in our company that have a number of quality certificates.', NULL, 'text_area', 27, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` tinytext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Birinchi slide', 'Test', 'slides\\October2020\\czAqY3MRZcKfcZd48crQ.jpg', '2020-10-16 11:08:51', '2020-10-16 11:08:51');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2020-09-25 10:08:39', '2020-09-25 10:08:39'),
(34, 'menu_items', 'title', 26, 'ru', 'Slides', '2020-10-16 11:10:04', '2020-10-16 11:10:04'),
(35, 'data_rows', 'display_name', 104, 'ru', 'Id', '2020-10-16 11:17:29', '2020-10-16 11:17:29'),
(36, 'data_rows', 'display_name', 105, 'ru', 'Title', '2020-10-16 11:17:29', '2020-10-16 11:17:29'),
(37, 'data_rows', 'display_name', 106, 'ru', 'Desc', '2020-10-16 11:17:29', '2020-10-16 11:17:29'),
(38, 'data_rows', 'display_name', 107, 'ru', 'Image', '2020-10-16 11:17:29', '2020-10-16 11:17:29'),
(39, 'data_types', 'display_name_singular', 12, 'ru', 'Slide', '2020-10-16 11:17:29', '2020-10-16 11:17:29'),
(40, 'data_types', 'display_name_plural', 12, 'ru', 'Slides', '2020-10-16 11:17:29', '2020-10-16 11:17:29'),
(41, 'data_rows', 'display_name', 1, 'ru', 'ID', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(42, 'data_rows', 'display_name', 2, 'ru', 'Author', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(43, 'data_rows', 'display_name', 3, 'ru', 'Category', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(44, 'data_rows', 'display_name', 4, 'ru', 'Title', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(45, 'data_rows', 'display_name', 51, 'ru', 'seo_title', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(46, 'data_rows', 'display_name', 5, 'ru', 'excerpt', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(47, 'data_rows', 'display_name', 6, 'ru', 'Body', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(48, 'data_rows', 'display_name', 7, 'ru', 'Post Image', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(49, 'data_rows', 'display_name', 8, 'ru', 'slug', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(50, 'data_rows', 'display_name', 9, 'ru', 'meta_description', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(51, 'data_rows', 'display_name', 10, 'ru', 'meta_keywords', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(52, 'data_rows', 'display_name', 11, 'ru', 'status', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(53, 'data_rows', 'display_name', 52, 'ru', 'featured', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(54, 'data_rows', 'display_name', 12, 'ru', 'created_at', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(55, 'data_rows', 'display_name', 13, 'ru', 'updated_at', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(56, 'data_types', 'display_name_singular', 1, 'ru', 'Post', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(57, 'data_types', 'display_name_plural', 1, 'ru', 'Posts', '2020-11-10 10:44:51', '2020-11-10 10:44:51'),
(82, 'posts', 'title', 8, 'ru', 'Мега скидки в честь нового года целых 50%', '2020-11-12 09:46:29', '2020-12-18 18:29:10'),
(83, 'posts', 'body', 8, 'ru', '<p style=\"box-sizing: border-box; margin-top: 0px; font-size: 16px; line-height: 1.8em; color: rgba(9, 9, 16, 0.7); margin-bottom: 2em; font-family: scandia-web, sans-serif;\">The&nbsp;<code class=\" language-php\" style=\"box-sizing: border-box; font-family: source-code-pro, monospace; font-size: 0.8rem; line-height: 1.9; color: #ca473f; background: #fbfbfd; padding: 0px 0.25em; white-space: pre; word-spacing: normal; word-break: normal; overflow-wrap: normal; tab-size: 4; hyphens: none; box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px;\">implode</code>&nbsp;method joins the items in a collection. Its arguments depend on the type of items in the collection. If the collection contains arrays or objects, you should pass the key of the attributes you wish to join, and the \"glue\" string you wish to place between the values:</p>\n<pre class=\" language-php\" style=\"box-sizing: border-box; overflow: auto; font-family: monospace, monospace; font-size: 16px; color: #ca473f; background: #fbfbfd; word-break: normal; overflow-wrap: normal; tab-size: 4; hyphens: none; padding: 1em; margin-top: 0.5em; margin-bottom: 2em; max-width: 100%; box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px;\"><code class=\" language-php\" style=\"box-sizing: border-box; font-family: source-code-pro, monospace; font-size: 0.8rem; line-height: 1.9; color: #090910; background: none; word-spacing: normal; word-break: normal; overflow-wrap: normal; tab-size: 4; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: border-box; color: #0782b1;\">$collection</span> <span class=\"token operator\" style=\"box-sizing: border-box;\">=</span> <span class=\"token function\" style=\"box-sizing: border-box; color: #ca473f;\">collect</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">(</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">[</span>\n    <span class=\"token punctuation\" style=\"box-sizing: border-box;\">[</span><span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'account_id\'</span> <span class=\"token operator\" style=\"box-sizing: border-box;\">=</span><span class=\"token operator\" style=\"box-sizing: border-box;\">&gt;</span> <span class=\"token number\" style=\"box-sizing: border-box; color: #981d15;\">1</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">,</span> <span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'product\'</span> <span class=\"token operator\" style=\"box-sizing: border-box;\">=</span><span class=\"token operator\" style=\"box-sizing: border-box;\">&gt;</span> <span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'Desk\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">]</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">,</span>\n    <span class=\"token punctuation\" style=\"box-sizing: border-box;\">[</span><span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'account_id\'</span> <span class=\"token operator\" style=\"box-sizing: border-box;\">=</span><span class=\"token operator\" style=\"box-sizing: border-box;\">&gt;</span> <span class=\"token number\" style=\"box-sizing: border-box; color: #981d15;\">2</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">,</span> <span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'product\'</span> <span class=\"token operator\" style=\"box-sizing: border-box;\">=</span><span class=\"token operator\" style=\"box-sizing: border-box;\">&gt;</span> <span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'Chair\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">]</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">,</span>\n<span class=\"token punctuation\" style=\"box-sizing: border-box;\">]</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">)</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">;</span>\n\n<span class=\"token variable\" style=\"box-sizing: border-box; color: #0782b1;\">$collection</span><span class=\"token operator\" style=\"box-sizing: border-box;\">-</span><span class=\"token operator\" style=\"box-sizing: border-box;\">&gt;</span><span class=\"token function\" style=\"box-sizing: border-box; color: #ca473f;\">implode</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">(</span><span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\'product\'</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">,</span> <span class=\"token single-quoted-string string\" style=\"box-sizing: border-box; color: #669900;\">\', \'</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">)</span><span class=\"token punctuation\" style=\"box-sizing: border-box;\">;</span>\n\n<span class=\"token comment\" style=\"box-sizing: border-box; color: #93939e;\">// Desk, Chair</span></code></pre>', '2020-11-12 09:46:29', '2020-11-12 09:46:29'),
(84, 'posts', 'slug', 8, 'ru', 'testovoj-stat-ya-3', '2020-11-12 09:46:29', '2020-11-22 10:14:22'),
(88, 'data_rows', 'display_name', 14, 'ru', 'id', '2020-11-14 13:56:02', '2020-11-14 13:56:02'),
(89, 'data_rows', 'display_name', 15, 'ru', 'author_id', '2020-11-14 13:56:02', '2020-11-14 13:56:02'),
(90, 'data_rows', 'display_name', 16, 'ru', 'title', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(91, 'data_rows', 'display_name', 17, 'ru', 'excerpt', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(92, 'data_rows', 'display_name', 18, 'ru', 'body', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(93, 'data_rows', 'display_name', 25, 'ru', 'image', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(94, 'data_rows', 'display_name', 19, 'ru', 'slug', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(95, 'data_rows', 'display_name', 20, 'ru', 'meta_description', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(96, 'data_rows', 'display_name', 21, 'ru', 'meta_keywords', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(97, 'data_rows', 'display_name', 22, 'ru', 'status', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(98, 'data_rows', 'display_name', 23, 'ru', 'created_at', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(99, 'data_rows', 'display_name', 24, 'ru', 'updated_at', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(100, 'data_types', 'display_name_singular', 2, 'ru', 'Page', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(101, 'data_types', 'display_name_plural', 2, 'ru', 'Pages', '2020-11-14 13:56:03', '2020-11-14 13:56:03'),
(102, 'pages', 'title', 1, 'ru', 'Hello World', '2020-11-14 13:56:31', '2020-11-14 13:56:31'),
(103, 'pages', 'body', 1, 'ru', '<div id=\"lines-section\">\n<div class=\"navigator\">\n<div class=\"navigator-circle-top\">&nbsp;</div>\n<div class=\"navigator-circle-mid\">&nbsp;</div>\n<div class=\"navigator-circle-bottom\">&nbsp;</div>\n<div class=\"navigator-stick\">&nbsp;</div>\n</div>\n<div class=\"years-section\">\n<div class=\"years-content years-content\">\n<div class=\"years-date\">\n<div>2019</div>\n</div>\n<div class=\"years-txt\">2019 году был построен Холодильный комплекс Турецкой компании &laquo;Ko&rsquo;rkmas Panel&raquo; с объемом на 1600 тонн. Что дало нам увеличить объем экспорта в 2019 году на четыре раза и составил 580.000 долларов США. Для информации объем экспорта в 2018 году составил 163300 долларов США.</div>\n</div>\n<div class=\"years-content years-content-2\">\n<div class=\"years-date\">\n<div>2019</div>\n</div>\n<div class=\"years-txt\">В 2019 году была построена здания для установки линии для глубокого переработки свежей плода овощи и фруктов, которые получаем при калибровке и сортировке овощей и фруктов для закладки в холодильные камеры. Также была закуплена линия из Турецкой компании &laquo;Go&rsquo;ztepe&raquo; и внедрен в эксплуатацию. Что дало нам еще увеличить объем экспортируемых продукции, таких как сушенная паприка, лук порей, баклажаны, тыква, свекла красная и из фруктов яблоко, груша, айва и т.д. <br /><br />Объем инвестиции для создания данного комплекса по: выращиванию, приемку, сортировку &ndash; калибровку, переработке &ndash; сушению, хранению и экспорта фасованных сельхозпродукции составил более чем 8 млн долларов США.</div>\n</div>\n<div class=\"years-content years-content-3\">\n<div class=\"years-date\">\n<div>2020</div>\n</div>\n<div class=\"years-txt\">В январе 2020 года наша компания стало &laquo;Кластером по садоводству и плода овощи&raquo; с объемом земли 1204 гектаров, из них: 567,5 га сады, 166,2га виноградники, и 470га на плода овощи. Это дает нашей компании за ранее по планировать объем продукции которые мы можем получить к сезону созревания, а также исходя из заказа клиентов можем посеять ту культуру которую потребует наш клиент. Планируемый объем принимаемой продукции в 2020 году составит 16300 тн и экспорт будет достигать 3,5 млн, долларов США.</div>\n</div>\n</div>\n</div>', '2020-11-14 13:56:31', '2020-11-14 14:33:53'),
(104, 'pages', 'slug', 1, 'ru', 'hello-world', '2020-11-14 13:56:31', '2020-11-14 13:56:31'),
(105, 'pages', 'excerpt', 1, 'ru', 'ООО «PERFECT LOGISTICS» был создан 23 января 2017 года в Багатском районе Хорезмской области, Республики Узбекистан. Идентификационный номер налогоплательщика №304558504. \n\nОсновная цель компании – это экспорт свежей и сушенной фасованной плода овощи и фруктов Узбекистана на внешние рынки. \n\nДля достижения поставленной цели со стороны компании был построен и внедрен в эксплуатацию 2 гектара теплицы в 2018 году. Ежегодно с теплицы собираем 500тн урожая помидора.', '2020-11-14 14:33:53', '2020-11-14 14:33:53'),
(107, 'data_rows', 'display_name', 110, 'ru', 'Id', '2020-11-14 15:33:52', '2020-11-14 15:33:52'),
(108, 'data_rows', 'display_name', 111, 'ru', 'Image', '2020-11-14 15:33:52', '2020-11-14 15:33:52'),
(109, 'data_rows', 'display_name', 112, 'ru', 'Created At', '2020-11-14 15:33:52', '2020-11-14 15:33:52'),
(110, 'data_rows', 'display_name', 113, 'ru', 'Updated At', '2020-11-14 15:33:52', '2020-11-14 15:33:52'),
(111, 'data_types', 'display_name_singular', 15, 'ru', 'Gallery', '2020-11-14 15:33:52', '2020-11-14 15:33:52'),
(112, 'data_types', 'display_name_plural', 15, 'ru', 'Galleries', '2020-11-14 15:33:52', '2020-11-14 15:33:52'),
(113, 'menu_items', 'title', 28, 'ru', 'Galleries', '2020-11-14 15:34:31', '2020-11-14 15:34:31'),
(114, 'category', 'name', 1, 'ru', 'Фрукты', '2020-11-17 11:15:08', '2020-11-17 11:15:08'),
(115, 'category', 'name', 2, 'ru', 'Oвощи', '2020-11-17 11:16:01', '2020-11-17 11:16:01'),
(116, 'category', 'name', 3, 'ru', 'Сухофрукты', '2020-11-17 11:16:38', '2020-11-17 11:16:38'),
(117, 'category', 'name', 4, 'ru', 'Сушеные овощи', '2020-11-17 11:17:40', '2020-11-17 11:17:40'),
(118, 'data_rows', 'display_name', 55, 'ru', 'Id', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(119, 'data_rows', 'display_name', 56, 'ru', 'name', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(120, 'data_rows', 'display_name', 57, 'ru', 'slug', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(121, 'data_rows', 'display_name', 58, 'ru', 'Details', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(122, 'data_rows', 'display_name', 59, 'ru', 'price', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(123, 'data_rows', 'display_name', 60, 'ru', 'Description', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(124, 'data_rows', 'display_name', 61, 'ru', 'Featured', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(125, 'data_rows', 'display_name', 66, 'ru', 'Quantity', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(126, 'data_rows', 'display_name', 62, 'ru', 'Image', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(127, 'data_rows', 'display_name', 63, 'ru', 'Images', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(128, 'data_rows', 'display_name', 64, 'ru', 'Created At', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(129, 'data_rows', 'display_name', 65, 'ru', 'Updated At', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(130, 'data_types', 'display_name_singular', 7, 'ru', 'Product', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(131, 'data_types', 'display_name_plural', 7, 'ru', 'Products', '2020-11-18 11:33:05', '2020-11-18 11:33:05'),
(132, 'products', 'name', 1, 'ru', 'Яблоки', '2020-11-18 11:47:58', '2020-11-18 11:47:58'),
(133, 'products', 'name', 2, 'ru', 'Гранаты', '2020-11-18 11:53:05', '2020-11-18 11:53:05'),
(134, 'products', 'name', 3, 'ru', 'Винограды', '2020-11-18 11:54:03', '2020-11-18 11:54:03'),
(135, 'products', 'name', 4, 'ru', 'Капуста', '2020-11-18 13:23:00', '2020-11-18 13:23:00'),
(136, 'products', 'name', 5, 'ru', 'Морковь', '2020-11-18 13:23:43', '2020-11-18 13:23:43'),
(137, 'products', 'name', 6, 'ru', 'Помидор', '2020-11-18 13:28:34', '2020-11-18 13:28:34'),
(138, 'products', 'name', 7, 'ru', 'Огурцы', '2020-11-18 13:29:20', '2020-11-18 13:29:20'),
(139, 'products', 'name', 8, 'ru', 'Изюм', '2020-11-18 13:40:49', '2020-11-18 13:40:49'),
(140, 'products', 'name', 9, 'ru', 'Абрикос', '2020-11-18 13:42:31', '2020-11-18 13:42:31'),
(141, 'products', 'name', 10, 'ru', 'Яблоки', '2020-11-18 13:43:17', '2020-11-18 13:43:17'),
(142, 'products', 'name', 11, 'ru', 'Черная слива', '2020-11-18 13:44:40', '2020-11-18 13:44:40'),
(143, 'products', 'name', 12, 'ru', 'Дыня', '2020-11-18 13:45:19', '2020-11-18 13:46:29'),
(144, 'products', 'name', 13, 'ru', 'Баклажан', '2020-11-18 13:48:40', '2020-11-18 13:48:40'),
(145, 'products', 'name', 14, 'ru', 'Тыква', '2020-11-18 13:49:44', '2020-11-18 13:49:44'),
(146, 'products', 'name', 15, 'ru', 'Свекла', '2020-11-18 13:50:45', '2020-11-18 13:50:45'),
(147, 'products', 'name', 17, 'ru', 'Сушеные морковь', '2020-11-18 13:55:12', '2020-11-18 13:55:12'),
(148, 'products', 'name', 18, 'ru', 'Паприка', '2020-11-18 13:56:07', '2020-11-18 13:56:07'),
(149, 'products', 'name', 19, 'ru', 'Сушеная капуста', '2020-11-18 13:58:06', '2020-11-18 13:58:06'),
(150, 'products', 'name', 20, 'ru', 'Лук-порей', '2020-11-18 14:00:32', '2020-11-18 14:00:32'),
(151, 'posts', 'title', 10, 'ru', 'Мега скидки в честь нового года целых 50%', '2020-11-22 10:14:06', '2020-12-18 18:32:19'),
(152, 'posts', 'body', 10, 'ru', '<p><span style=\"color: #585858; font-family: Montserrat; font-size: 25px; letter-spacing: -0.625px;\">Практически все страны мира заинтересованы в выращивании земляники садовой. В период с 2008 по 2018 год мировое производство клубники увеличилось на 39,4%, согласно данным, опубликованным Продовольственной и сельскохозяйственной организацией Объединенных Наций (ФАО). В лидерах отмечен Китай. Если в 2008 году китайские фермеры произвели 1,9 миллиона тонн этой ягоды, то в 2018 году показатель увеличился до 3 миллионов тонн. В других странах картина аналогичная.&nbsp;</span></p>', '2020-11-22 10:14:06', '2020-11-22 10:14:06'),
(153, 'posts', 'slug', 10, 'ru', 'testovoj-stat-ya-2', '2020-11-22 10:14:06', '2020-11-22 10:14:06'),
(157, 'posts', 'title', 12, 'ru', 'Морковь', '2020-11-22 10:16:34', '2020-11-22 10:16:34'),
(158, 'posts', 'body', 12, 'ru', '<p>Морковь</p>', '2020-11-22 10:16:34', '2020-11-22 10:16:34'),
(159, 'posts', 'slug', 12, 'ru', 'morkov', '2020-11-22 10:16:34', '2020-11-22 10:16:34'),
(160, 'posts', 'title', 13, 'ru', 'Болгарская', '2020-11-22 10:18:09', '2020-11-22 10:18:09'),
(161, 'posts', 'body', 13, 'ru', '<p>Болгарская</p>', '2020-11-22 10:18:09', '2020-11-22 10:18:09'),
(162, 'posts', 'slug', 13, 'ru', 'bolgarskaya', '2020-11-22 10:18:09', '2020-11-22 10:18:09'),
(163, 'data_rows', 'display_name', 114, 'ru', 'Id', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(164, 'data_rows', 'display_name', 115, 'ru', 'Author Full Name', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(165, 'data_rows', 'display_name', 116, 'ru', 'Photo', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(166, 'data_rows', 'display_name', 117, 'ru', 'Type', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(167, 'data_rows', 'display_name', 118, 'ru', 'Content', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(168, 'data_rows', 'display_name', 119, 'ru', 'Rate', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(169, 'data_rows', 'display_name', 120, 'ru', 'Created At', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(170, 'data_rows', 'display_name', 121, 'ru', 'Updated At', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(171, 'data_types', 'display_name_singular', 16, 'ru', 'Review', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(172, 'data_types', 'display_name_plural', 16, 'ru', 'Reviews', '2020-12-11 13:14:56', '2020-12-11 13:14:56'),
(173, 'menu_items', 'title', 29, 'ru', 'Reviews', '2020-12-11 13:15:23', '2020-12-11 13:15:23');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$Dw/fhEGSsNV1wr0etb9LMORKe4vhSHJBccMwtE0tQz1xnOYvoxW0K', '75jLQJCWntpAqOD3gtDh5V6KQwW9cBP23YUIWjN5pAtENltsgZl2G7thx5YU', '{\"locale\":\"en\"}', '2020-09-25 10:08:39', '2020-11-22 10:04:42'),
(3, 1, 'Zafarbek Otajonov', 'zafarbek@mail.com', 'users/November2020/CremLXMorDdEEQfpZ1bE.jpg', '$2y$10$epZF7uKP7GRJH9ojmSX0MOZgVUlst1M1ELsmj71nMdGV9uTCa.yhK', NULL, '{\"locale\":\"en\"}', '2020-09-25 22:54:27', '2020-11-20 02:41:16');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
