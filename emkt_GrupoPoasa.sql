-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-08-2022 a las 22:07:06
-- Versión del servidor: 5.7.32
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `emkt_GrupoPoasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `type`) VALUES
(1, NULL, 1, 'Construcción', 'construccion', '2022-02-01 17:02:32', '2022-03-08 13:34:48', 'proyecto'),
(2, NULL, 1, 'Diseño', 'diseno', '2022-02-01 17:02:32', '2022-03-18 12:36:58', 'proyecto'),
(3, NULL, 1, 'Supervisión', 'supervision', '2022-03-08 13:35:26', '2022-03-08 13:35:26', 'proyecto'),
(4, NULL, 1, 'Techos', 'techos', '2022-03-08 13:35:48', '2022-03-08 13:35:48', 'proyecto'),
(5, NULL, 1, 'Arquitectura', 'arquitectura', '2022-03-17 23:18:34', '2022-03-17 23:18:34', 'blog'),
(7, NULL, 1, 'Diseño', 'diseno-blog', '2022-03-17 23:19:10', '2022-03-17 23:19:10', 'blog');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_proyect`
--

CREATE TABLE `category_proyect` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `proyect_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_proyect`
--

INSERT INTO `category_proyect` (`id`, `category_id`, `proyect_id`, `created_at`, `updated_at`) VALUES
(3, 1, 2, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 1, 5, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 1, 3, NULL, NULL),
(11, 2, 2, NULL, NULL),
(12, 2, 5, NULL, NULL),
(13, 3, 5, NULL, NULL),
(14, 1, 6, NULL, NULL),
(15, 2, 6, NULL, NULL),
(16, 3, 6, NULL, NULL),
(17, 1, 7, NULL, NULL),
(18, 2, 7, NULL, NULL),
(19, 3, 7, NULL, NULL),
(20, 1, 8, NULL, NULL),
(21, 2, 8, NULL, NULL),
(22, 3, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cites_contacts`
--

CREATE TABLE `cites_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cites_contacts`
--

INSERT INTO `cites_contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`, `country`, `type`) VALUES
(40, 'Mauricio Josué Alfaro', 'm@g.com', '7777777', 'Prueba', '2022-03-17 13:16:00', '2022-03-17 13:16:00', NULL, NULL),
(41, 'm', 'm@fde.com', '558445', '2021', '2022-03-17 13:42:42', '2022-03-17 13:42:42', NULL, NULL),
(42, 'Mauri', 'm@g.com', '73555577', 'prueba', '2022-03-17 13:47:16', '2022-03-17 13:47:16', NULL, NULL),
(43, 'malfaro', 'm@g.com', '725487', 'Prueba', '2022-03-17 16:04:09', '2022-03-17 16:04:09', NULL, 'Citas-Web'),
(44, 'Mauri', 'admin@admin.com', NULL, 'Preuba', '2022-03-17 16:14:52', '2022-03-17 16:14:52', 'Andorra', 'Contacto-Web'),
(45, 'Mauricio', 'admin@admin.com', NULL, 'Pruebas', '2022-03-17 16:18:42', '2022-03-17 16:18:42', 'Antigua y Barbuda', 'Contacto-Web'),
(46, 'Alkindi', 'alkindi.rivas@gmail.com', '22577777', 'Test', '2022-03-17 16:30:34', '2022-03-17 16:30:34', NULL, 'Citas-Web'),
(47, 'Alkindi', 'alkindi.rivas@gmail.com', '22577777', 'test', '2022-03-17 16:32:30', '2022-03-17 16:32:30', 'Arabia Saudita', 'Contacto-Web'),
(48, 'Marcela Cárcamo', 'proyectos@e-mktcompany.com', '70215442', 'test', '2022-04-05 23:16:39', '2022-04-05 23:16:39', 'El Salvador', 'Contacto-Web'),
(49, 'Programación', 'proyectos@emkt.com.sv', '70215442', 'test', '2022-04-05 23:17:44', '2022-04-05 23:17:44', NULL, 'Citas-Web'),
(50, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:19:51', '2022-06-24 14:19:51', NULL, 'Citas-Web'),
(51, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:19:56', '2022-06-24 14:19:56', NULL, 'Citas-Web'),
(52, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:19:58', '2022-06-24 14:19:58', NULL, 'Citas-Web'),
(53, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:20:00', '2022-06-24 14:20:00', NULL, 'Citas-Web'),
(54, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:20:24', '2022-06-24 14:20:24', NULL, 'Citas-Web'),
(55, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:21:58', '2022-06-24 14:21:58', 'El Salvador', 'Contacto-Web'),
(56, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:22:00', '2022-06-24 14:22:00', 'El Salvador', 'Contacto-Web'),
(57, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:22:03', '2022-06-24 14:22:03', 'El Salvador', 'Contacto-Web'),
(58, 'Andrea Michelle Valencia', 'avalencia@e-mktcompany.com', '70883014', 'Prueba EMKT', '2022-06-24 14:23:27', '2022-06-24 14:23:27', 'El Salvador', 'Contacto-Web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultures`
--

CREATE TABLE `cultures` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` binary(255) NOT NULL DEFAULT '1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cultures`
--

INSERT INTO `cultures` (`id`, `icon`, `title`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cultures/March2022/DN74W6f5dSrvMn5mFF4j.png', 'Visión', 'Un socio fuerte y confiable: construyendo un legado duradero para nuestros empleados, nuestros clientes y nuestra nación.', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 14:18:00', '2022-03-07 14:29:29'),
(2, 'cultures/March2022/M4zCbrulA2CkHWvvtOag.png', 'Misión', '<p>Proveer a la regi&oacute;n con construcciones confiables y de alta calidad lo cual se consigue por la implementaci&oacute;n constante de tecnolog&iacute;a, maquinar&iacute;a innovadora, mano de obra profesional, altamente capacitada y el dominio logrado a trav&eacute;s de m&aacute;s de 30 a&ntilde;os de experiencia.</p>', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 14:20:00', '2022-03-16 13:18:06'),
(3, 'cultures/March2022/QkCMvQnq9g1tsXak5YRS.png', 'Valores', '<ul>\r\n<li>Compromiso con nuestros colaboradores.</li>\r\n<li>Innovaci&oacute;n en nuestros procesos.</li>\r\n<li>Calidad, rigor y solvencia.</li>\r\n<li>Excelencia en el trabajo.</li>\r\n<li>Transparencia en nuestras relaciones.</li>\r\n<li>Integridad y rectitud en nuestro actuar.</li>\r\n<li>Respeto por la comunidad y el medio ambiente.</li>\r\n<li>Confianza y credibilidad de nuestros clientes.</li>\r\n<li>Honestidad</li>\r\n</ul>', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 14:34:19', '2022-03-07 14:34:19'),
(4, 'cultures/March2022/grL3zZxvc7xek2HF3ukb.png', 'Nuestra Promesa', '<p>Construir un mejor ma&ntilde;ana, ahora</p>', 0x300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 14:44:00', '2022-03-09 14:17:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
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
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'code_editor', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 8),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 9),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 12),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(55, 6, 'image', 'image', 'Page Image (Banner)', 0, 1, 1, 1, 1, 1, '{}', 5),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'count', 'number', 'Count', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 9, 'icon', 'image', 'Icon', 1, 1, 1, 1, 1, 1, '{}', 2),
(63, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(64, 9, 'text', 'rich_text_box', 'Text', 1, 1, 1, 1, 1, 1, '{}', 4),
(65, 9, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(67, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(68, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 10, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 10, 'text', 'markdown_editor', 'Text', 0, 1, 1, 1, 1, 1, '{}', 4),
(72, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(73, 10, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{}', 6),
(74, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(76, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(78, 11, 'text', 'text', 'Text', 1, 1, 1, 1, 1, 1, '{}', 3),
(79, 11, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(80, 11, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 5),
(81, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(82, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(83, 4, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"Blog\",\"options\":{\"blog\":\"Blog\",\"proyecto\":\"Proyecto\"}}', 6),
(84, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(86, 12, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:proyects,slug\",\"messages\":{\"unique\":\"Ingrese un valor \\u00fanico.\"}},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(87, 12, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(88, 12, 'cover', 'image', 'Cover', 1, 0, 1, 1, 1, 1, '{}', 5),
(89, 12, 'excerpt', 'text', 'Excerpt', 1, 1, 1, 1, 1, 1, '{}', 8),
(90, 12, 'description', 'rich_text_box', 'Description', 1, 0, 1, 1, 1, 1, '{}', 9),
(91, 12, 'gallery', 'multiple_images', 'Gallery', 0, 0, 1, 1, 1, 1, '{}', 7),
(92, 12, 'client', 'text', 'Client', 1, 1, 1, 1, 1, 1, '{}', 10),
(93, 12, 'ubication', 'text', 'Ubication', 1, 1, 1, 1, 1, 1, '{}', 11),
(95, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 12),
(96, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(97, 12, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{\"on\":\"ACTIVO\",\"off\":\"INACTIVO\",\"checked\":true}', 15),
(99, 12, 'proyect_belongstomany_category_relationship', 'relationship', 'categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_proyect\",\"pivot\":\"1\",\"taggable\":\"on\"}', 16),
(100, 12, 'title_cover', 'rich_text_box', 'Title Cover', 1, 0, 1, 1, 1, 1, '{}', 14),
(101, 11, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 6),
(102, 12, 'image_slider', 'image', 'Image Slider', 0, 1, 1, 1, 1, 1, '{}', 6),
(103, 6, 'image_content', 'image', 'Imagen Contenido', 0, 0, 1, 1, 1, 1, '{}', 6),
(104, 6, 'title_body', 'text', 'Title Body', 0, 1, 1, 1, 1, 1, '{}', 7),
(105, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 13, 'name', 'text', 'Nombre', 0, 1, 1, 0, 0, 1, '{}', 2),
(107, 13, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 1, '{}', 3),
(108, 13, 'phone', 'text', 'Teléfono', 0, 1, 1, 0, 0, 1, '{}', 4),
(109, 13, 'comment', 'text_area', 'Comentario', 0, 1, 1, 0, 0, 1, '{}', 5),
(110, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(111, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(112, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(114, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(115, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(116, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(117, 13, 'country', 'text', 'País', 0, 1, 1, 1, 1, 1, '{}', 6),
(118, 13, 'type', 'text', 'Tipo Formulario', 0, 1, 1, 1, 1, 1, '{}', 7),
(119, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 17, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(121, 17, 'category', 'select_dropdown', 'Category', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"construccion\":\"Construcci\\u00f3n\",\"diseno\":\"Dise\\u00f1o\",\"supervision\":\"Supervisi\\u00f3n\"}}', 3),
(122, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(123, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
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
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-02-01 17:01:40', '2022-02-01 17:01:40'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-02-01 17:01:40', '2022-02-01 17:01:40'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-02-01 17:01:41', '2022-02-01 17:01:41'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-02-01 17:02:24', '2022-03-08 13:32:28'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-02-01 17:02:33', '2022-02-01 17:02:33'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-02-01 17:02:46', '2022-03-16 14:40:32'),
(7, 'meters', 'meters', 'Meter', 'Meters', 'voyager-dashboard', 'App\\Meter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-02-28 18:12:06', '2022-02-28 18:12:06'),
(9, 'cultures', 'cultures', 'Cultura', 'Culturas', 'voyager-company', 'App\\Culture', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-07 14:13:24', '2022-03-07 14:30:48'),
(10, 'times', 'times', 'Timeline', 'TimesTimeline', 'voyager-alarm-clock', 'App\\Time', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-07 14:59:44', '2022-03-07 16:05:24'),
(11, 'mservices', 'mservices', 'Servicio', 'Servicios', 'voyager-paint-bucket', 'App\\Mservice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-07 17:02:00', '2022-03-09 15:04:53'),
(12, 'proyects', 'proyects', 'Proyect', 'Proyects', 'voyager-rocket', 'App\\Proyect', NULL, 'App\\Http\\Controllers\\ProjectController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-08 13:50:16', '2022-03-18 00:06:40'),
(13, 'cites_contacts', 'cites-contacts', 'Contacto Cita', 'Contacto Citas', NULL, 'App\\CitesContact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-16 16:26:55', '2022-03-17 16:03:46'),
(14, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', NULL, 'App\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-17 14:18:22', '2022-03-17 14:18:22'),
(17, 'galeries', 'galeries', 'Galery', 'Galeries', 'voyager-images', 'App\\Galery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-24 17:11:06', '2022-03-24 17:12:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeries`
--

CREATE TABLE `galeries` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galeries`
--

INSERT INTO `galeries` (`id`, `image`, `category`, `created_at`, `updated_at`) VALUES
(1, 'galeries/March2022/8cU98FOxQe8VPpssvxXv.webp', 'construccion', '2022-03-24 17:14:23', '2022-03-24 17:14:23'),
(2, 'galeries/March2022/aCA9ZbpEBd5f8BudCXc1.webp', 'construccion', '2022-03-24 17:14:38', '2022-03-24 17:14:38'),
(3, 'galeries/March2022/LuVjOjG143qqzOqVBA66.webp', 'construccion', '2022-03-24 17:14:50', '2022-03-24 17:14:50'),
(4, 'galeries/March2022/V5CoJE8bHIuATrewRyUS.webp', 'construccion', '2022-03-24 17:15:08', '2022-03-24 17:15:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-02-01 17:01:52', '2022-02-01 17:01:52'),
(2, 'menu-principal-movil', '2022-03-02 16:46:14', '2022-03-02 16:52:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
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
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-02-01 17:01:53', '2022-02-01 17:01:53', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-02-01 17:01:53', '2022-02-28 18:13:19', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-02-01 17:01:54', '2022-02-01 17:01:54', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-02-01 17:01:55', '2022-02-01 17:01:55', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2022-02-01 17:01:55', '2022-03-24 17:13:17', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-02-01 17:01:56', '2022-02-28 18:13:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-02-01 17:01:57', '2022-02-28 18:13:24', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-02-01 17:01:57', '2022-02-28 18:13:24', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-02-01 17:01:58', '2022-02-28 18:13:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2022-02-01 17:01:59', '2022-03-24 17:13:17', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2022-02-01 17:02:28', '2022-02-28 18:13:21', 'voyager.categories.index', NULL),
(12, 1, 'Blog', '', '_self', 'voyager-news', '#000000', NULL, 5, '2022-02-01 17:02:41', '2022-03-18 10:13:18', 'voyager.posts.index', 'null'),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2022-02-01 17:02:53', '2022-02-28 18:13:21', 'voyager.pages.index', NULL),
(14, 1, 'Contador', '', '_self', 'voyager-dashboard', '#000000', 25, 1, '2022-02-28 18:12:12', '2022-03-07 16:54:50', 'voyager.meters.index', 'null'),
(15, 2, 'INICIO', '/', '_self', NULL, '#000000', NULL, 1, '2022-03-02 16:48:33', '2022-03-02 16:51:11', NULL, ''),
(16, 2, 'QUIÉNES SOMOS', '/acerca-de-poasa', '_self', NULL, '#000000', NULL, 2, '2022-03-02 16:48:58', '2022-03-02 16:51:12', NULL, ''),
(17, 2, 'PROYECTOS', '/proyectos', '_self', NULL, '#000000', NULL, 3, '2022-03-02 16:49:26', '2022-03-02 16:51:12', NULL, ''),
(18, 2, 'SERVICIOS', '/servicios', '_self', NULL, '#000000', NULL, 4, '2022-03-02 16:50:26', '2022-03-02 16:51:13', NULL, ''),
(19, 2, 'DISEÑO', '/servicios/diseno', '_self', NULL, '#000000', 18, 1, '2022-03-02 16:50:59', '2022-03-04 18:05:40', NULL, ''),
(20, 2, 'BLOG', '/blog', '_self', NULL, '#000000', NULL, 5, '2022-03-02 16:51:33', '2022-03-07 16:37:56', NULL, ''),
(21, 2, 'CONTACTO', '/contacto', '_self', NULL, '#000000', NULL, 6, '2022-03-02 16:51:50', '2022-03-07 16:37:56', NULL, ''),
(22, 2, 'SUPERVISIÓN', '/servicios/supervision', '_self', NULL, '#000000', 18, 2, '2022-03-04 18:00:34', '2022-03-10 17:52:24', NULL, ''),
(23, 1, 'Cultura', '', '_self', 'voyager-company', '#000000', 25, 2, '2022-03-07 14:13:24', '2022-03-07 16:54:50', 'voyager.cultures.index', 'null'),
(24, 1, 'Timeline', '', '_self', 'voyager-alarm-clock', '#000000', 25, 3, '2022-03-07 14:59:44', '2022-03-07 16:54:55', 'voyager.times.index', 'null'),
(25, 1, 'Modulos  Poasa', '', '_self', 'voyager-params', '#000000', NULL, 9, '2022-03-07 16:52:47', '2022-03-17 13:13:52', NULL, ''),
(26, 1, 'Servicios', '', '_self', 'voyager-paint-bucket', NULL, 25, 4, '2022-03-07 17:02:00', '2022-03-07 17:02:15', 'voyager.mservices.index', NULL),
(27, 1, 'Proyectos', '', '_self', 'voyager-rocket', '#000000', 25, 5, '2022-03-08 13:50:16', '2022-03-09 14:03:54', 'voyager.proyects.index', 'null'),
(28, 2, 'CONSTRUCCIÓN', '/servicios/construccion', '_self', NULL, '#000000', 18, 3, '2022-03-10 17:53:16', '2022-03-10 17:53:20', NULL, ''),
(29, 1, 'Contacto Citas', '', '_self', 'voyager-paper-plane', '#000000', 30, 1, '2022-03-16 16:26:55', '2022-03-17 13:15:25', 'voyager.cites-contacts.index', 'null'),
(30, 1, 'Formularios Contacto', '', '_self', 'voyager-mail', '#000000', NULL, 8, '2022-03-17 13:13:28', '2022-03-17 13:13:52', NULL, ''),
(31, 1, 'Newsletters', '', '_self', 'voyager-hook', '#000000', 30, 2, '2022-03-17 14:18:22', '2022-03-17 14:19:31', 'voyager.newsletters.index', 'null'),
(34, 1, 'Galeria', '', '_self', 'voyager-images', '#000000', 25, 6, '2022-03-24 17:11:06', '2022-03-24 17:13:34', 'voyager.galeries.index', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meters`
--

CREATE TABLE `meters` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `meters`
--

INSERT INTO `meters` (`id`, `title`, `count`, `created_at`, `updated_at`) VALUES
(1, 'AÑOS DE EXPERIENCIA', 30, '2022-02-28 18:14:05', '2022-02-28 18:14:05'),
(2, 'MIEMBROS DEL EQUIPO', 300, '2022-02-28 18:14:33', '2022-02-28 18:14:33'),
(3, 'PROYECTOS', 1000, '2022-02-28 18:14:56', '2022-02-28 18:14:56'),
(4, 'HORAS TRABAJADAS EN PROYECTOS', 50000, '2022-02-28 18:20:24', '2022-02-28 18:20:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mservices`
--

CREATE TABLE `mservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` binary(255) NOT NULL DEFAULT '1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mservices`
--

INSERT INTO `mservices` (`id`, `title`, `text`, `image`, `status`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Construcción', 'Innovación & Experiencia', 'mservices/March2022/BKVfCbGZG54cSX3HG3DH.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 17:03:00', '2022-03-09 15:05:45', '/servicios/construccion'),
(2, 'Supervisión', 'Apoyo y Coordinación', 'mservices/March2022/3HAyGiIB0zvXcixeLZTs.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 17:03:00', '2022-03-09 15:12:56', '/servicios/supervision'),
(3, 'Diseño', 'Funcionalidad y Belleza', 'mservices/March2022/lLMV7DMoBzu52mSXdFXi.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 17:04:00', '2022-03-09 15:05:19', '/servicios/diseno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `newsletters`
--

INSERT INTO `newsletters` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(18, 'malfaro', 'admin@admin.com', '2022-03-18 15:09:56', '2022-03-18 15:09:56'),
(19, 'Daniel', 'administrador@admin.com', '2022-03-24 22:01:30', '2022-03-24 22:01:30'),
(20, 'marcela', 'proyectos@e-mktcompany.com', '2022-04-05 23:16:47', '2022-04-05 23:16:47'),
(21, 'Emkt prueba', 'proyectos@e-mktcompany.com', '2022-04-05 23:23:44', '2022-04-05 23:23:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_body` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `image_content`, `title_body`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-02-01 17:02:56', '2022-02-01 17:02:56', NULL, NULL),
(2, 1, 'Inicio', '<h1 class=\"text-white title-cover w-75 mx-auto p-5\">\r\n        El placer de contar con un aliado estratégico en tus \r\n            <strong class=\"text-uppercase\">proyectos de construcción</strong>\r\n            con calidad internacional, a un precio justo en tiempos récord de instalación\r\n</h1>', NULL, 'pages\\February2022\\BAv3dFLBpWuHNy5Sy4B6.webp', 'inicio', NULL, NULL, 'ACTIVE', '2022-02-28 16:16:16', '2022-03-16 13:10:09', NULL, NULL),
(3, 1, 'Acerca de Poasa', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase\">\r\n    CONOCE ACERCA DE <strong class=\"\">NOSOTROS</strong>\r\n</h1>', '<h2>Sobre Nosotros</h2>\r\n<p>Grupo Poasa es una reconocida empresa de contrataci&oacute;n general con una cartera de clientes que abarca el mercado regional, y exhibe una amplia experiencia en el mundo de desarrollo de obras civiles. Con una capacidad comprobada para entregar proyectos altamente cotizados, hoy continuamos colaborando con destacadas empresas en un amplio n&uacute;mero de industrias para dar forma a las ciudades y construir los horizontes del ma&ntilde;ana.</p>\r\n<p>Construimos relaciones que duran con nuestros clientes, porque nuestros intereses siempre est&aacute;n alineados con los suyos. Desde el inicio, nos consideramos parte de su equipo y cada decisi&oacute;n se toma con su fecha l&iacute;mite y sus objetivos en mente, lo que culmina en resultados exitosos y relaciones duraderas.</p>\r\n<p>Este es el prop&oacute;sito compartido por todos en POASA, aportamos experiencia y conocimientos combinados a cada trabajo, y cada miembro del equipo se enorgullece de su contribuci&oacute;n a nuestra fuerza colectiva para continuar formando un mejor legado.</p>\r\n<p>Con cada proyecto, moldeamos el futuro. Nuestro enfoque es generar valor a trav&eacute;s de nuestros proyectos, con el ﬁn de mejorar la calidad de vida de las personas.</p>', 'pages/March2022/wmXcFWojEHWFn36fwphx.webp', 'acerca-de-poasa', NULL, NULL, 'ACTIVE', '2022-03-16 13:35:09', '2022-03-16 13:35:09', NULL, NULL),
(4, 1, 'Proyectos', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase\">\r\n    CONOCE MÁS ACERCA DE <br> <strong class=\"\">NUESTROS PROYECTOS</strong>\r\n</h1>', NULL, 'pages/March2022/EmuEVNLrQvu8uFHYevjn.webp', 'proyectos', NULL, NULL, 'ACTIVE', '2022-03-16 13:41:19', '2022-03-16 13:41:19', NULL, NULL),
(5, 1, 'Servicios', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase animate__animated animate__zoomInDown\">\r\n    EL PLACER DE CONTAR CON UN <strong>ALIADO ESTRATÉGICO </strong> EN TUS PROYECTOS CON CALIDAD INTERNACIONAL\r\n</h1>', '<h2 class=\"text-center text-uppercase\">Nuestros Servicios</h2>\r\n<hr class=\"w-75 mx-auto d-block mb-4\" />\r\n<p class=\"w-75 text-center mx-auto\">Grupo Poasa es una reconocida empresa de contrataci&oacute;n general con una cartera de clientes que abarca el mercado regional, y exhibe una amplia experiencia en el mundo de desarrollo de obras civiles, ofrecemos:</p>', 'pages/March2022/3iRDPxFwv15FApz4a0Cn.webp', 'servicios', NULL, NULL, 'ACTIVE', '2022-03-16 13:45:40', '2022-03-16 13:47:11', NULL, NULL),
(6, 1, 'maquinaria', NULL, '<h2 class=\"font-90\">MAQUINARIA</h2>\r\n<p>POASA cuenta con la maquinaria pesada y equipo liviano necesario para el desarrollo de grandes proyectos de construcci&oacute;n, as&iacute; como tambi&eacute;n el personal t&eacute;cnico capacitado para la utilizaci&oacute;n de estas.</p>\r\n<p>La experiencia proviene de un fuerte deseo de aprender. Siempre estamos adquiriendo y aplicando nuevos conocimientos para mejorar la seguridad y la eficiencia al tiempo de desarrollo. Cuando te unes a POASA, obtienes mano de obra de calidad a un excelente valor ejecutado de una manera responsable y sostenible.</p>\r\n<p><a class=\"btn bg-black text-white mb-5\" href=\"#\">Ver m&aacute;s</a></p>', 'pages/March2022/csywhzLloMWYCKfwk84r.webp', 'maquinaria', NULL, NULL, 'ACTIVE', '2022-03-16 13:51:02', '2022-03-16 13:51:02', NULL, NULL),
(7, 1, 'Servicios Supervisión', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase animate__animated animate__zoomInDown\">\r\n    <strong>APOYO Y COORDINACIÓN</strong>\r\n</h1>', '<p>Durante los a&ntilde;os de actividad de Grupo Poasa se han ejecutado supervisi&oacute;n de proyectos teniendo como objetivo principal la Direcci&oacute;n y Control de la obra que implica revisar que el trabajo sea realizado de acuerdo a lo establecido en planos y especificaciones constructivas para contribuir a que se cumplan los objetivos del proyecto. Podemos destacar dentro de esta tipolog&iacute;a de proyectos, se ha desarrollado la supervisi&oacute;n de obras de mitigaci&oacute;n, elaboraci&oacute;n de taludes, dise&ntilde;o vial, puentes, edificios, naves industriales entre otros.</p>', 'pages/March2022/bv0XfNQKNOwGMF1kmdmG.webp', 'servicios-supervision', NULL, NULL, 'ACTIVE', '2022-03-16 14:45:29', '2022-03-16 14:45:29', 'pages/March2022/YpGjX5bxXyMmDhKuPkA4.webp', 'Supervisión'),
(8, 1, 'Servicios Diseño', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase animate__animated animate__zoomInDown\">\r\n    <strong>APOYO Y COORDINACIÓN</strong>\r\n</h1>', '<p>Grupo POASA ha ejecutado diversos proyectos en el &aacute;rea de ingenier&iacute;a civil y arquitectura para clientes que requieren estudios multidisciplinarios. En varios de nuestros proyectos, el alcance de nuestro contrato incluye ingenier&iacute;a estructural, arquitectura, dise&ntilde;o el&eacute;ctrico, dise&ntilde;o hidr&aacute;ulico, estudios de suelo y tramitolog&iacute;a.</p>', 'pages/March2022/CzMCoaDdOTCMjowX6hjd.webp', 'servicios-diseno', NULL, NULL, 'ACTIVE', '2022-03-16 14:57:58', '2022-03-16 14:57:58', 'pages/March2022/rffd7tQ2TqQkEYT6gxkM.webp', 'Diseños en ingeniería civil y arquitectura'),
(9, 1, 'Servicio Diseño2', NULL, '<p>Nuestro equipo ha desarrollado a lo largo de los m&aacute;s de 30 a&ntilde;os de experiencia en la consultor&iacute;a estructural proyectos para edificaciones de uso comercial, vivienda, naves industriales e institucionales, entre otros. Dichos proyectos se han dise&ntilde;ado en pr&aacute;cticamente todos los materiales de construcci&oacute;n disponibles hoy en d&iacute;a en el pa&iacute;s. Actualmente se est&aacute; introduciendo el uso del concreto postensado y del acero estructural, ambos de poco uso en la construcci&oacute;n salvadore&ntilde;a.</p>', NULL, 'servicio-diseno2', NULL, NULL, 'ACTIVE', '2022-03-16 15:00:07', '2022-04-06 14:35:44', 'pages/March2022/iwE3jzZyZ5Em6kHVzZaA.webp', 'Diseño y calculo estructural de edificaciones en concreto, acero y mampostería'),
(10, 1, 'Blog', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase\">\r\n    <strong class=\"\">BLOG</strong>\r\n</h1>', '<p>Es una reconocida empresa de contrataci&oacute;n general con una cartera de clientes que abarca el mercado regional, y exhibe una amplia experiencia en el mundo de desarrollo de obras civiles.</p>', 'pages/March2022/LDJ9IWBVuJ5ADpr2BZie.webp', 'blog', NULL, NULL, 'ACTIVE', '2022-03-18 10:03:58', '2022-03-18 10:11:01', 'pages/March2022/2bNehnjpJjsiGbWTas2f.webp', 'GRUPO POASA'),
(11, 1, 'Contacto', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase\">\r\n    CONTÁCTANOS,<br><strong class=\"\"> ESTAMOS PARA AYUDARTE</strong>\r\n</h1>', NULL, 'pages/March2022/LgFJ3k0BhhHafa4fuaHl.webp', 'contacto', NULL, NULL, 'ACTIVE', '2022-03-24 16:43:00', '2022-03-24 16:44:38', NULL, NULL),
(12, 1, 'Construcción', '<h1 class=\"text-white title-cover w-75 mx-auto p-5 text-uppercase\">\r\n    DISEÑAMOS Y CONSTRUIMOS<br><strong class=\"\"> SUEÑOS EN REALIDAD</strong>\r\n</h1>', '<p>Grupo Poasa ha sido el ejecutor de m&aacute;s de 350 proyectos de construcci&oacute;n general y especializada de edificios y obras de ingenier&iacute;a civil dentro de los cuales se encuentran Edificios de oficinas, laboratorios, estacionamientos construidos en concreto y acero estructural entre otros. Destaca la construcci&oacute;n de Naves industriales siendo pioneros en fabricaci&oacute;n y utilizaci&oacute;n del sistema de L&aacute;mina Standing seam brindando un servicio integral en el desarrollo de proyectos industriales.</p>\r\n<h4>Servicios de Construcci&oacute;n, tramites:</h4>\r\n<ul>\r\n<li>1. Factibilidad de Proyectos.</li>\r\n<li>2. L&iacute;nea de construcci&oacute;n.</li>\r\n<li>3. Calificaci&oacute;n del lugar.</li>\r\n<li>4. Revisi&oacute;n vial.</li>\r\n<li>5. Permisos de construcci&oacute;n.</li>\r\n<li>6. Factibilidad y habilitaci&oacute;n de servicios en ANDA.</li>\r\n<li>7. Factibilidad y habilitaci&oacute;n de servicios de Energ&iacute;a El&eacute;ctrica.</li>\r\n<li>8. Permisos de terracer&iacute;a.</li>\r\n<li>9. Permisos de demolici&oacute;n.</li>\r\n<li>10. Permiso Ambiental.</li>\r\n<li>11. Permiso de Bomberos.</li>\r\n<li>12. Factibilidad Aguas lluvias.</li>\r\n<li>13. Recepci&oacute;n de Obra.</li>\r\n<li>14. Permiso de Habitar.</li>\r\n<li>15. Permiso en Ministerio de Trabajo.</li>\r\n</ul>', 'pages/March2022/4F43I1igwY9GtuOUUuwx.webp', 'construccion', NULL, NULL, 'ACTIVE', '2022-03-24 16:51:42', '2022-03-24 16:51:42', 'pages/March2022/KLpnQ8whNFyTemUj6vkr.webp', 'Construcción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-02-01 17:02:01', '2022-02-01 17:02:01'),
(2, 'browse_bread', NULL, '2022-02-01 17:02:01', '2022-02-01 17:02:01'),
(3, 'browse_database', NULL, '2022-02-01 17:02:02', '2022-02-01 17:02:02'),
(4, 'browse_media', NULL, '2022-02-01 17:02:02', '2022-02-01 17:02:02'),
(5, 'browse_compass', NULL, '2022-02-01 17:02:02', '2022-02-01 17:02:02'),
(6, 'browse_menus', 'menus', '2022-02-01 17:02:03', '2022-02-01 17:02:03'),
(7, 'read_menus', 'menus', '2022-02-01 17:02:03', '2022-02-01 17:02:03'),
(8, 'edit_menus', 'menus', '2022-02-01 17:02:04', '2022-02-01 17:02:04'),
(9, 'add_menus', 'menus', '2022-02-01 17:02:04', '2022-02-01 17:02:04'),
(10, 'delete_menus', 'menus', '2022-02-01 17:02:05', '2022-02-01 17:02:05'),
(11, 'browse_roles', 'roles', '2022-02-01 17:02:05', '2022-02-01 17:02:05'),
(12, 'read_roles', 'roles', '2022-02-01 17:02:06', '2022-02-01 17:02:06'),
(13, 'edit_roles', 'roles', '2022-02-01 17:02:06', '2022-02-01 17:02:06'),
(14, 'add_roles', 'roles', '2022-02-01 17:02:07', '2022-02-01 17:02:07'),
(15, 'delete_roles', 'roles', '2022-02-01 17:02:07', '2022-02-01 17:02:07'),
(16, 'browse_users', 'users', '2022-02-01 17:02:08', '2022-02-01 17:02:08'),
(17, 'read_users', 'users', '2022-02-01 17:02:08', '2022-02-01 17:02:08'),
(18, 'edit_users', 'users', '2022-02-01 17:02:09', '2022-02-01 17:02:09'),
(19, 'add_users', 'users', '2022-02-01 17:02:09', '2022-02-01 17:02:09'),
(20, 'delete_users', 'users', '2022-02-01 17:02:10', '2022-02-01 17:02:10'),
(21, 'browse_settings', 'settings', '2022-02-01 17:02:10', '2022-02-01 17:02:10'),
(22, 'read_settings', 'settings', '2022-02-01 17:02:11', '2022-02-01 17:02:11'),
(23, 'edit_settings', 'settings', '2022-02-01 17:02:11', '2022-02-01 17:02:11'),
(24, 'add_settings', 'settings', '2022-02-01 17:02:11', '2022-02-01 17:02:11'),
(25, 'delete_settings', 'settings', '2022-02-01 17:02:12', '2022-02-01 17:02:12'),
(26, 'browse_categories', 'categories', '2022-02-01 17:02:29', '2022-02-01 17:02:29'),
(27, 'read_categories', 'categories', '2022-02-01 17:02:30', '2022-02-01 17:02:30'),
(28, 'edit_categories', 'categories', '2022-02-01 17:02:30', '2022-02-01 17:02:30'),
(29, 'add_categories', 'categories', '2022-02-01 17:02:31', '2022-02-01 17:02:31'),
(30, 'delete_categories', 'categories', '2022-02-01 17:02:31', '2022-02-01 17:02:31'),
(31, 'browse_posts', 'posts', '2022-02-01 17:02:42', '2022-02-01 17:02:42'),
(32, 'read_posts', 'posts', '2022-02-01 17:02:42', '2022-02-01 17:02:42'),
(33, 'edit_posts', 'posts', '2022-02-01 17:02:43', '2022-02-01 17:02:43'),
(34, 'add_posts', 'posts', '2022-02-01 17:02:43', '2022-02-01 17:02:43'),
(35, 'delete_posts', 'posts', '2022-02-01 17:02:44', '2022-02-01 17:02:44'),
(36, 'browse_pages', 'pages', '2022-02-01 17:02:54', '2022-02-01 17:02:54'),
(37, 'read_pages', 'pages', '2022-02-01 17:02:54', '2022-02-01 17:02:54'),
(38, 'edit_pages', 'pages', '2022-02-01 17:02:54', '2022-02-01 17:02:54'),
(39, 'add_pages', 'pages', '2022-02-01 17:02:55', '2022-02-01 17:02:55'),
(40, 'delete_pages', 'pages', '2022-02-01 17:02:55', '2022-02-01 17:02:55'),
(41, 'browse_meters', 'meters', '2022-02-28 18:12:09', '2022-02-28 18:12:09'),
(42, 'read_meters', 'meters', '2022-02-28 18:12:10', '2022-02-28 18:12:10'),
(43, 'edit_meters', 'meters', '2022-02-28 18:12:10', '2022-02-28 18:12:10'),
(44, 'add_meters', 'meters', '2022-02-28 18:12:11', '2022-02-28 18:12:11'),
(45, 'delete_meters', 'meters', '2022-02-28 18:12:11', '2022-02-28 18:12:11'),
(46, 'browse_cultures', 'cultures', '2022-03-07 14:13:24', '2022-03-07 14:13:24'),
(47, 'read_cultures', 'cultures', '2022-03-07 14:13:24', '2022-03-07 14:13:24'),
(48, 'edit_cultures', 'cultures', '2022-03-07 14:13:24', '2022-03-07 14:13:24'),
(49, 'add_cultures', 'cultures', '2022-03-07 14:13:24', '2022-03-07 14:13:24'),
(50, 'delete_cultures', 'cultures', '2022-03-07 14:13:24', '2022-03-07 14:13:24'),
(51, 'browse_times', 'times', '2022-03-07 14:59:44', '2022-03-07 14:59:44'),
(52, 'read_times', 'times', '2022-03-07 14:59:44', '2022-03-07 14:59:44'),
(53, 'edit_times', 'times', '2022-03-07 14:59:44', '2022-03-07 14:59:44'),
(54, 'add_times', 'times', '2022-03-07 14:59:44', '2022-03-07 14:59:44'),
(55, 'delete_times', 'times', '2022-03-07 14:59:44', '2022-03-07 14:59:44'),
(56, 'browse_mservices', 'mservices', '2022-03-07 17:02:00', '2022-03-07 17:02:00'),
(57, 'read_mservices', 'mservices', '2022-03-07 17:02:00', '2022-03-07 17:02:00'),
(58, 'edit_mservices', 'mservices', '2022-03-07 17:02:00', '2022-03-07 17:02:00'),
(59, 'add_mservices', 'mservices', '2022-03-07 17:02:00', '2022-03-07 17:02:00'),
(60, 'delete_mservices', 'mservices', '2022-03-07 17:02:00', '2022-03-07 17:02:00'),
(61, 'browse_proyects', 'proyects', '2022-03-08 13:50:16', '2022-03-08 13:50:16'),
(62, 'read_proyects', 'proyects', '2022-03-08 13:50:16', '2022-03-08 13:50:16'),
(63, 'edit_proyects', 'proyects', '2022-03-08 13:50:16', '2022-03-08 13:50:16'),
(64, 'add_proyects', 'proyects', '2022-03-08 13:50:16', '2022-03-08 13:50:16'),
(65, 'delete_proyects', 'proyects', '2022-03-08 13:50:16', '2022-03-08 13:50:16'),
(66, 'browse_cites_contacts', 'cites_contacts', '2022-03-16 16:26:55', '2022-03-16 16:26:55'),
(67, 'read_cites_contacts', 'cites_contacts', '2022-03-16 16:26:55', '2022-03-16 16:26:55'),
(68, 'edit_cites_contacts', 'cites_contacts', '2022-03-16 16:26:55', '2022-03-16 16:26:55'),
(69, 'add_cites_contacts', 'cites_contacts', '2022-03-16 16:26:55', '2022-03-16 16:26:55'),
(70, 'delete_cites_contacts', 'cites_contacts', '2022-03-16 16:26:55', '2022-03-16 16:26:55'),
(71, 'browse_newsletters', 'newsletters', '2022-03-17 14:18:22', '2022-03-17 14:18:22'),
(72, 'read_newsletters', 'newsletters', '2022-03-17 14:18:22', '2022-03-17 14:18:22'),
(73, 'edit_newsletters', 'newsletters', '2022-03-17 14:18:22', '2022-03-17 14:18:22'),
(74, 'add_newsletters', 'newsletters', '2022-03-17 14:18:22', '2022-03-17 14:18:22'),
(75, 'delete_newsletters', 'newsletters', '2022-03-17 14:18:22', '2022-03-17 14:18:22'),
(86, 'browse_galeries', 'galeries', '2022-03-24 17:11:06', '2022-03-24 17:11:06'),
(87, 'read_galeries', 'galeries', '2022-03-24 17:11:06', '2022-03-24 17:11:06'),
(88, 'edit_galeries', 'galeries', '2022-03-24 17:11:06', '2022-03-24 17:11:06'),
(89, 'add_galeries', 'galeries', '2022-03-24 17:11:06', '2022-03-24 17:11:06'),
(90, 'delete_galeries', 'galeries', '2022-03-24 17:11:06', '2022-03-24 17:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
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
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
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
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 5, 'Tecnologías y tendencias en el mercado inmobiliario para el 2022', NULL, 'Te contamos más sobre las nuevas tecnologías y tendencias que están influyendo en el sector inmobiliario y se mantendrán en el 2022', '<p>Parte de las nuevas tendencias y tecnolog&iacute;a en el mercado inmobiliario es reconocer como el mundo para todos los sectores ha cambiado debido a la covid-19. El sector inmobiliario no es ajeno a estos cambios, sin embargo, no todo ha sido negativo, ya que gracias a la nueva normalidad que fue en primera instancia una obligaci&oacute;n, la industria en todos los sectores se vio en la necesidad de innovar e implementar nuevas formas y maneras de seguir aportando valor en sus productos o servicios.</p>\r\n<p>Los nuevos servicios digitales a trav&eacute;s de internet ya son parte del diario vivir y permite realizar casi cualquier tipo de gesti&oacute;n a trav&eacute;s de una aplicaci&oacute;n m&oacute;vil o dispositivo con acceso a internet. De la misma forma, el sector est&aacute; introduciendo tambi&eacute;n en sus procesos tecnolog&iacute;as m&aacute;s disruptivas como pueden ser la inteligencia artificial, el big data o el icloud en el sector inmobiliario. (Cinco d&iacute;as, 2021)</p>\r\n<p>Seg&uacute;n la &uacute;ltima encuesta sobre el uso de TIC y del comercio electr&oacute;nico en las empresas ofrecida por el Instituto Nacional de Estad&iacute;stica (INE), en el sector de la construcci&oacute;n destaca el internet de las cosas (IoT) como una de las nuevas tecnolog&iacute;as m&aacute;s utilizadas, con un 11,8% de las empresas usando esta tecnolog&iacute;a. (Cinco d&iacute;as, 2021)</p>\r\n<p>Te contamos m&aacute;s sobre las nuevas tecnolog&iacute;as y tendencias que est&aacute;n influyendo en el sector inmobiliario y se mantendr&aacute;n en el 2022:</p>', 'posts/March2022/BcR8R18PrPZBYERvT8Vj.webp', 'tecnologias-y-tendencias-en-el-mercado-inmobiliario-para-el-2022', NULL, NULL, 'PUBLISHED', 1, '2022-03-18 10:22:19', '2022-03-18 16:20:16'),
(6, 1, 5, 'Construcción de Naves Industriales: desbroce solar, cimentación y estructura.', NULL, 'Las naves industriales son una locación construida específicamente para alojar aquellos materiales, productos o maquinaria de una industria. También es definida como una instalación para realizar actividades industriales de producción, manufactura, ensamblaje, almacenaje y distribución', '<p>Si est&aacute;s sumergido en el mundo de la construcci&oacute;n este tema ser&aacute; de tu inter&eacute;s; m&aacute;s de alguna vez te habr&aacute;s preguntado cu&aacute;l es el proceso de construcci&oacute;n para naves industriales.</p>\r\n<p>Hoy te contamos un poco sobre el proceso de construcci&oacute;n de este impresionante edificio industrial, no sin antes contarte &iquest;Qu&eacute; es una nave industrial?</p>\r\n<p>Las naves industriales son una locaci&oacute;n construida espec&iacute;ficamente para alojar aquellos materiales, productos o maquinaria de una industria. Tambi&eacute;n es definida como una instalaci&oacute;n para realizar actividades industriales de producci&oacute;n, manufactura, ensamblaje, almacenaje y distribuci&oacute;n. (Ramirez)</p>\r\n<p>Puestos en contexto, pasamos a la parte de construcci&oacute;n y los pasos o procesos que deben seguirse para una nave industrial de calidad.</p>', 'posts/March2022/Pn741pGtg0Sj73bt676m.webp', 'construccion-de-naves-industriales-desbroce-solar-cimentacion-y-estructura', NULL, NULL, 'PUBLISHED', 1, '2022-03-18 10:59:02', '2022-03-18 10:59:13'),
(7, 1, 7, 'Control de calidad en las obras y su importancia en la construcción.', NULL, 'Para las empresas constructoras o que se dedican a esta área es de suma importancia contar con un buen proceso de control de calidad en las edificaciones, no solo por el compromiso que en ellos se encuentra de poder brindar una construcción en buen estado sino por los costos extras que pueden causar algunas sorpresas desagradables en medio de la ejecución del proyecto.', '<p>Evita retrasos en tus proyectos y costes mucho m&aacute;s altos con un buen servicio de control de calidad.</p>\r\n<p>Para las empresas constructoras o que se dedican a esta &aacute;rea es de suma importancia contar con un buen proceso de control de calidad en las edificaciones, no solo por el compromiso que en ellos se encuentra de poder brindar una construcci&oacute;n en buen estado sino por los costos extras que pueden causar algunas sorpresas desagradables en medio de la ejecuci&oacute;n del proyecto.</p>\r\n<p>El control de calidad en las obras la podemos definir como una verificaci&oacute;n t&eacute;cnica de materiales y a su vez de la manera en c&oacute;mo se ejecuta la construcci&oacute;n y asegurar que el proceso cumpla con las caracter&iacute;sticas y especificaciones t&eacute;cnicas necesarias para evitar futuras fallas, el objetivo del control de calidad es proporcionar la supervisi&oacute;n del trabajo que se est&aacute; realizando para que las condiciones del proyecto sean las m&aacute;s adecuadas hasta el &eacute;xito en su finalizaci&oacute;n. (Uni Control Laboratorio, 2019)</p>\r\n<p>Hay que recordar que las edificaciones deben cumplir par&aacute;metros de larga vida &uacute;til, adem&aacute;s de que suponen una gran inversi&oacute;n y es necesario que sea ejecutado de la manera correcta.</p>\r\n<p>Si hablamos de control de calidad se deben contemplar al menos 4 aspectos importantes:</p>', 'posts/March2022/xFxFPXbUxecz7oDzfWk9.webp', 'control-de-calidad-en-las-obras-y-su-importancia-en-la-construccion', NULL, NULL, 'PUBLISHED', 0, '2022-03-18 11:04:03', '2022-03-18 11:04:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_category`
--

CREATE TABLE `project_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `proyect_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `project_category`
--

INSERT INTO `project_category` (`id`, `category_id`, `proyect_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyects`
--

CREATE TABLE `proyects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` longtext COLLATE utf8mb4_unicode_ci,
  `client` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubication` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` binary(255) NOT NULL,
  `title_cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyects`
--

INSERT INTO `proyects` (`id`, `name`, `slug`, `image`, `cover`, `excerpt`, `description`, `gallery`, `client`, `ubication`, `created_at`, `updated_at`, `status`, `title_cover`, `image_slider`) VALUES
(2, 'Ampliación Centro Comercial Las Azaleas', 'ampliacion-centro-comercial-las-azaleas', 'proyects/March2022/JDLKWKVod0EgLslGfV6G.jpg', 'proyects/March2022/kf5MBMmDtYzQjknUMBeo.jpg', 'Diseño y Construcción de un Edificio de 5 niveles para estacionamiento y locales comerciales como parte de la ampliación del centro comercial existente. A=6926.42m²', '<p>Dise&ntilde;o y Construcci&oacute;n de un Edificio de 5 niveles para estacionamiento y locales comerciales como parte de la ampliaci&oacute;n del centro comercial existente. A=6926.42m&sup2;</p>', '[\"proyects\\/March2022\\/IVN0j4zjcYb5IpYeD2zd.jpg\",\"proyects\\/March2022\\/nlRzFH7gZEwObLdaJfht.jpg\",\"proyects\\/March2022\\/AkrZBf0VgSft3H7ibmPh.jpg\",\"proyects\\/March2022\\/kvWByKRIi8z9xncufLiP.jpg\"]', 'Centro Comercial Las Azaleas', 'San Salvador', '2022-03-08 13:59:00', '2022-03-10 12:20:15', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '<p>Centro Comercial <br /><strong class=\"\">Las Azaleas</strong></p>', 'proyects/March2022/pv40y1YsBaI8yFUuGNRd.jpg'),
(3, 'Complejo Industrial Grupo Miguel', 'complejo-industrial-grupo-miguel', 'proyects/March2022/BJFu7oQiF6IwIztSmK3T.jpg', 'proyects/March2022/pm5RRh6Uirdp2jKIKBep.jpg', 'Construcción de 8 Naves Industriales, Edificio de Oficinas, áreas de apoyo, áreas deportivas en un A=50,000.0m²', '<p>Construcci&oacute;n de 8 Naves Industriales, Edificio de Oficinas, &Aacute;reas de apoyo, &aacute;reas deportivas en un A=50,000.0m&sup2;</p>', '[\"proyects\\/March2022\\/QEvU84DIKeFploIUnstF.webp\",\"proyects\\/March2022\\/4VuxY15b4sm4jX1kvdvU.webp\",\"proyects\\/March2022\\/Xxo5wnU6fxkqpe9UbUkK.webp\",\"proyects\\/March2022\\/GKfmFpAc3RGVzgfg32ee.webp\",\"proyects\\/March2022\\/9RNVmpzM5hOKRvBh2TPo.webp\",\"proyects\\/March2022\\/yoChUmOEmWE4yHYzdSl4.webp\",\"proyects\\/March2022\\/WnGL9aTHtypYjkjxZJCm.webp\",\"proyects\\/March2022\\/JUiUdZZU1J3HpN8htpcQ.webp\"]', 'Grupo Miguel', 'Santa Tecla', '2022-03-08 16:37:00', '2022-03-18 14:36:00', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '<p>Complejo Industrial <br /><strong class=\"\">Grupo Miguel</strong></p>', 'proyects/March2022/6BzOu1lg8hyiKuUH1c5X.jpg'),
(5, 'Guticia Nave Industrial', 'guticia-nave-industrial', 'proyects/March2022/amy4CB1UbRd0Yt6UrNYd.jpg', 'proyects/March2022/nMDxauoY2nqci1OSShqX.jpg', 'Bodega de almacenaje de 3,266.55m² con sus Muelles de carga y descarga, área de oficinas en primer nivel (109.44m²) y segundo nivel (349.96m²)', '<p>El complejo est&aacute; conformado por un &aacute;rea de Bodega de almacenaje de 3,266.55m&sup2; con sus Muelles de carga y descarga, &aacute;rea de oficinas en primer nivel (109.44m&sup2;) y segundo nivel (349.96m&sup2;), Delegaci&oacute;n de Aduana (100.30m&sup2;)</p>\r\n<p>Estacionamiento vehicular, caseta de vigilancia (8.93m&sup2;), comedor de empleados (75.53m&sup2;), estaci&oacute;n de c&aacute;maras de control (12.89m&sup2;), subestaci&oacute;n el&eacute;ctrica (14.18m&sup2;) y &aacute;reas verdes.</p>', '[\"proyects\\/March2022\\/v3gO20PMFMY4r1RywLdi.jpg\",\"proyects\\/March2022\\/TP0em1QfQt583bF3zSgd.jpg\",\"proyects\\/March2022\\/WsU1lsDbePFcfUgvqfFl.jpg\",\"proyects\\/March2022\\/L3a2VMYTMQpPKX6FQo1F.jpg\"]', 'Guticia de El Salvador, S.A. de C.V.', 'San Salvador', '2022-03-08 17:40:00', '2022-03-18 14:35:35', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '<p>Guticia <br /><strong class=\"\">Nave Industrial</strong></p>', 'proyects/March2022/IQntJmfcABtRjGqG6MX0.jpg'),
(6, 'Arias Edificio de parqueo', 'arias-edificio-de-parqueo', 'proyects/March2022/EpFFiwEJxzg88JUdAWN0.jpg', 'proyects/March2022/ELZTLM21VmNPI2y5dTwK.jpg', 'Edificio de 4 niveles de 4,574.29m² de construcción, el cual comprenderá 2 niveles de estacionamiento vehicular, y 2 niveles de oficinas privadas', '<p>La propuesta consiste en un edificio de 4 niveles de 4,574.29m&sup2; de construcci&oacute;n, el cual comprender&aacute; 2 niveles de estacionamiento vehicular, y 2 niveles de oficinas privadas con sus respectivas &aacute;reas complementarias tales como: cubo de escaleras principal, escaleras de emergencia, ascensor, servicios sanitarios, caseta de vigilancia, terrazas.</p>', '[\"proyects\\/March2022\\/zscAwJY01bwYM7eD4JaA.webp\",\"proyects\\/March2022\\/0qZglqHDGdM41oVLusuy.webp\",\"proyects\\/March2022\\/fNMDxQSH2EZEiAG2m4Vx.webp\",\"proyects\\/March2022\\/9sjPdmVnCa3nk3JE3VGd.webp\",\"proyects\\/March2022\\/wr96GkgqT1h7jymXPDiD.webp\",\"proyects\\/March2022\\/OOHW2GRfuu5uP1zvFa1w.webp\",\"proyects\\/March2022\\/5ZaShsXFE0103Wx5lXZm.webp\",\"proyects\\/March2022\\/Mjb3u03B4tFYwx8m5mwt.webp\"]', 'Arias El Salvador', 'San Salvador', '2022-03-10 11:50:00', '2022-03-10 12:00:29', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '<p>Parqueo<br /><strong>Edificio Arias</strong></p>', 'proyects/March2022/DPnXd6vwgYBagJJuOk8C.jpg'),
(7, 'Vittoria Construcción de edificio', 'vittoria-construccion-de-edificio', 'proyects/March2022/iZ71F2LgizfX85PBGu7I.jpg', 'proyects/March2022/dKeO3xkr0WvwrfFowhOg.jpg', 'Diseño y construcción de un edificio de 4 niveles (2 de estacionamientos y 2 de oficinas)', '<p>Dise&ntilde;o y construcci&oacute;n de un edificio de 4 niveles (2 de estacionamientos y 2 de oficinas)</p>', '[\"proyects\\/March2022\\/0AiOatUUuQ66qfRC8eRh.webp\",\"proyects\\/March2022\\/X2TWIpqjTVJDeb1T6fLr.webp\",\"proyects\\/March2022\\/kzPFDGCOrp8Az7uihc1k.webp\",\"proyects\\/March2022\\/qvHKq3cKXITC8tNmQVdG.webp\",\"proyects\\/March2022\\/fGttjByWvXElbZ5TsMsd.webp\",\"proyects\\/March2022\\/Bonjx5JkdUpSWrVTbb6q.webp\",\"proyects\\/March2022\\/WDmo4ndXIGB7MfuFshkx.webp\",\"proyects\\/March2022\\/ea2I6G6ZunChZi9ktGnR.webp\",\"proyects\\/March2022\\/fUz7Zj8163xqZ7j3fhz0.webp\"]', 'Edificio Vittoria', 'San Salvador', '2022-03-10 12:07:00', '2022-03-10 12:31:13', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '<p>Construcci&oacute;n de edificio <br /><strong>Vittoria</strong></p>', 'proyects/March2022/LTVjqBccbvRT8cFNICbW.jpg'),
(8, 'Centro Comercial Santa Rosa Primera Etapa', 'centro-comercial-santa-rosa-primera-etapa', 'proyects/March2022/oCCnPDA2QAJz3f2uw4dU.jpg', 'proyects/March2022/zWGu4kufS1En1aRuFBFZ.jpg', 'Diseño y Construcción de Primera Etapa que incluye el supermercado, con un total de 5,300.00m² aprox.', '<p>Dise&ntilde;o y Construcci&oacute;n de Primera Etapa que incluye el supermercado, con un total de 5,300.00m&sup2; aprox.</p>', '[\"proyects\\/March2022\\/jjSRyyEDk9lsI741hkQL.webp\",\"proyects\\/March2022\\/MuIW4t8oUP9j6CgjiuMY.webp\",\"proyects\\/March2022\\/EchPEiq6kZYavBH9ZGBb.webp\",\"proyects\\/March2022\\/5JtKTc5CPAmt5KEpATOe.webp\",\"proyects\\/March2022\\/GF4sMrpuVcJqxM59hGLX.webp\",\"proyects\\/March2022\\/X1jZ4TE2xA4RTLOOkwsD.webp\"]', 'Centro Comercial Santa Rosa', 'Santa Tecla', '2022-03-10 12:29:00', '2022-03-10 12:41:58', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '<p>Centro Comercial <br /><strong>Santa Rosa</strong></p>', 'proyects/March2022/q8smWRtj6yhVzy5syRVl.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-02-01 17:02:00', '2022-02-01 17:02:00'),
(2, 'user', 'Normal User', '2022-02-01 17:02:00', '2022-02-01 17:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
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
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Grupo Poasa', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2022\\uLGGrbNjiLTk52CWl9Pk.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Grupo Poasa', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', NULL, '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.favicon', 'Favicon', 'settings\\February2022\\wjUIbtMn5mIcWpkfFOnR.png', NULL, 'image', 6, 'Site'),
(13, 'site.phone', 'Teléfono', '25560339', NULL, 'text', 9, 'Site'),
(14, 'site.address', 'Dirección', 'Residencial Bosques de Santa Teresa Block A 1 Ciudad Merliot Santa Tecla La Libertad, El Salvador', NULL, 'text', 8, 'Site'),
(15, 'site.email', 'Email', 'recepcion@grupopoasa.com', NULL, 'text', 10, 'Site'),
(16, 'site.linkFB', 'Link Facebook', 'https://www.facebook.com/GrupoPoasaElSalvador', NULL, 'text', 11, 'Site'),
(18, 'site.instagram', 'Link Instagram', 'https://www.instagram.com/grupopoasasv/', NULL, 'text', 12, 'Site'),
(19, 'site.linkedin', 'Link Linkedin', 'https://sv.linkedin.com/company/grupopoasa', NULL, 'text', 13, 'Site'),
(20, 'site.youtube', 'Link Youtube', 'https://www.youtube.com/channel/UCJm3xMMGrbVkLBGznHdlcVg', NULL, 'text', 14, 'Site'),
(21, 'site.footerEMKT', 'Footer EMKT', '<p class=\"text-white text-center d-inline-block\">Grupo Poasa 2022 all Right Reserved Powered By </p>\r\n<a href=\"https://e-mktcompany.com/\" class=\"d-inline-block\" target=\"_blank\">\r\n<img src=\"/images/logo-emkt.png\" alt=\"\">\r\n</a>', NULL, 'code_editor', 16, 'Site'),
(22, 'site.whatsapp', 'WhatsApp', '77479507', NULL, 'text', 15, 'Site'),
(23, 'remitentes.citas_home', 'Remitentes Formulario Citas', 'mauricio@emkt.com.sv', NULL, 'text', 17, 'Remitentes'),
(24, 'remitentes.newsletter', 'Remitente Newsletter', 'mauricio@emkt.com.sv', NULL, 'text', 18, 'Remitentes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `times`
--

CREATE TABLE `times` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `year` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` binary(255) DEFAULT '1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `times`
--

INSERT INTO `times` (`id`, `title`, `year`, `text`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primer Proyecto de Construcción “Villas Colonias”', '1987', NULL, NULL, 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:01:34', '2022-03-07 15:01:34'),
(2, 'Constitución de POASA', '1990', NULL, NULL, 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:01:55', '2022-03-07 15:01:55'),
(3, 'Primera construcción de Nave Industrial Salvador International.', '1991', NULL, 'times/March2022/4Wo0tcKZUB746GGkoVf7.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:03:59', '2022-03-07 15:03:59'),
(4, 'Aparición en Medios de Comunicación', '2001', NULL, NULL, 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:04:00', '2022-03-07 15:04:50'),
(5, 'Nuevo edificio Oficinas POASA', '2003', NULL, 'times/March2022/7LnJWsHt8QxM8bMs1Yzl.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:04:00', '2022-03-07 15:24:25'),
(6, 'Diseño y construcción de Complejo de Grupo Miguel', '2004', NULL, NULL, 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:25:31', '2022-03-07 15:25:31'),
(7, 'Nace la sub división POASA techos', '2015', NULL, 'times/March2022/RDgHeNwrYZEbqQry7j6v.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:26:02', '2022-03-07 15:26:02'),
(8, 'Se inicia la construcción del Estacionamiento y Oficinas Arias', '2019', NULL, NULL, 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:26:21', '2022-03-07 15:26:21'),
(9, 'Diseño, construcción de las Oficinas y bodegas Guticia', '2020', NULL, NULL, 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:26:37', '2022-03-07 15:26:37'),
(10, 'Introducción del concreto pos tensado y del acero estructural', '2022', NULL, 'times/March2022/jFCg3RjP7UitdUwqVy4P.jpg', 0x310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2022-03-07 15:27:00', '2022-03-07 16:40:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
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
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-02-01 17:02:57', '2022-02-01 17:02:57'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-02-01 17:02:57', '2022-02-01 17:02:57'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-02-01 17:02:58', '2022-02-01 17:02:58'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-02-01 17:02:59', '2022-02-01 17:02:59'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-02-01 17:02:59', '2022-02-01 17:02:59'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-02-01 17:03:00', '2022-02-01 17:03:00'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-02-01 17:03:01', '2022-02-01 17:03:01'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-02-01 17:03:02', '2022-02-01 17:03:02'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-02-01 17:03:02', '2022-02-01 17:03:02'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-02-01 17:03:03', '2022-02-01 17:03:03'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-02-01 17:03:04', '2022-02-01 17:03:04'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-02-01 17:03:04', '2022-02-01 17:03:04'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-02-01 17:03:05', '2022-02-01 17:03:05'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-02-01 17:03:06', '2022-02-01 17:03:06'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-02-01 17:03:06', '2022-02-01 17:03:06'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-02-01 17:03:07', '2022-02-01 17:03:07'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-02-01 17:03:07', '2022-02-01 17:03:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-02-01 17:03:08', '2022-02-01 17:03:08'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-02-01 17:03:08', '2022-02-01 17:03:08'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-02-01 17:03:09', '2022-02-01 17:03:09'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-02-01 17:03:10', '2022-02-01 17:03:10'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-02-01 17:03:11', '2022-02-01 17:03:11'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-02-01 17:03:11', '2022-02-01 17:03:11'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-02-01 17:03:12', '2022-02-01 17:03:12'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-02-01 17:03:13', '2022-02-01 17:03:13'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-02-01 17:03:13', '2022-02-01 17:03:13'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-02-01 17:03:14', '2022-02-01 17:03:14'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-02-01 17:03:15', '2022-02-01 17:03:15'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-02-01 17:03:15', '2022-02-01 17:03:15'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-02-01 17:03:16', '2022-02-01 17:03:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/March2022/125zyAqZ63HPiEGPR1Fc.png', NULL, '$2y$10$EHHkj/hvnAQYsT88kxkwiuwgt4coza0bb3VglpUq3sst7XIcDK37i', 'JCBlotFCT6iWeCzIuPHiKDXqSoBeHHBNDRTCJoSEjhlhUUc7WXI2oYED04XO', '{\"locale\":\"es\"}', '2022-02-01 17:02:33', '2022-03-02 16:02:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `category_proyect`
--
ALTER TABLE `category_proyect`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cites_contacts`
--
ALTER TABLE `cites_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `meters`
--
ALTER TABLE `meters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mservices`
--
ALTER TABLE `mservices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyects`
--
ALTER TABLE `proyects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proyects_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `category_proyect`
--
ALTER TABLE `category_proyect`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cites_contacts`
--
ALTER TABLE `cites_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `meters`
--
ALTER TABLE `meters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `mservices`
--
ALTER TABLE `mservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `project_category`
--
ALTER TABLE `project_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyects`
--
ALTER TABLE `proyects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `times`
--
ALTER TABLE `times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
