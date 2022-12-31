-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Dec 31. 01:37
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizza`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_price` int(11) NOT NULL,
  `delivery_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL,
  `is_ready` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_data`, `email`, `shipping_price`, `delivery_method`, `total`, `is_ready`, `created_at`, `updated_at`) VALUES
(29, 11, '{\"first_name\":\"TesztVeznév001\",\"last_name\":\"TesztKernév002\",\"shipping_zip\":\"1010\",\"shipping_city\":\"Budapest\",\"shipping_street\":\"Teszt utca\",\"shipping_nr\":\"10\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"TesztVeznév001 TesztKernév002\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1010\",\"billing_city\":\"Budapest\",\"billing_street\":\"Teszt utca\",\"billing_nr\":\"10\",\"email\":\"teszt@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'teszt@gmail.com', 1000, 'kiszallitas', 4700, 0, '2022-12-22 17:24:13', '2022-12-31 00:31:19'),
(30, 5, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út 11\",\"shipping_nr\":\"1\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út 11\",\"billing_nr\":\"11\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 2200, 1, '2022-12-22 17:26:57', '2022-12-22 17:47:56'),
(31, 5, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út 11\",\"shipping_nr\":\"1\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út 11\",\"billing_nr\":\"1\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 4900, 0, '2022-12-22 17:34:49', NULL),
(32, 5, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út 11\",\"shipping_nr\":\"1\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út 11\",\"billing_nr\":\"1\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 7300, 0, '2022-12-22 17:37:00', NULL),
(33, 5, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út \",\"shipping_nr\":\"1111\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út \",\"billing_nr\":\"1111\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 2500, 0, '2022-12-22 17:40:30', NULL),
(34, 5, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út \",\"shipping_nr\":\"1\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út \",\"billing_nr\":\"1\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 4800, 1, '2022-12-22 17:46:28', '2022-12-22 17:48:08'),
(35, 10, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út \",\"shipping_nr\":\"111\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út \",\"billing_nr\":\"111\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 4800, 1, '2022-12-22 17:46:42', '2022-12-31 00:06:46'),
(36, 5, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1028\",\"shipping_city\":\"Budapest, II.\",\"shipping_street\":\"Máriaremetei Út\",\"shipping_nr\":\"1\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1028\",\"billing_city\":\"Budapest, II.\",\"billing_street\":\"Máriaremetei Út\",\"billing_nr\":\"1\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"szemelyes\"}', 'farkasbence@gmail.com', 0, 'szemelyes', 2200, 1, '2022-12-30 23:56:50', '2022-12-31 00:06:40'),
(37, 10, '{\"first_name\":\"Farkas\",\"last_name\":\"Bence\",\"shipping_zip\":\"1010\",\"shipping_city\":\"Budapest\",\"shipping_street\":\"Teszt utca\",\"shipping_nr\":\"10\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Farkas Bence\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1010\",\"billing_city\":\"Budapest\",\"billing_street\":\"Teszt utca\",\"billing_nr\":\"10\",\"email\":\"farkasbence@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'farkasbence@gmail.com', 1000, 'kiszallitas', 26500, 1, '2022-12-31 00:06:08', '2022-12-31 00:06:25'),
(38, 10, '{\"first_name\":\"TesztVeznév001\",\"last_name\":\"TesztKernév001\",\"shipping_zip\":\"1010\",\"shipping_city\":\"Budapest\",\"shipping_street\":\"Teszt utca\",\"shipping_nr\":\"2\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"TesztVeznév001 TesztKernév001\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1010\",\"billing_city\":\"Budapest\",\"billing_street\":\"Teszt utca\",\"billing_nr\":\"2\",\"email\":\"teszt@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'teszt@gmail.com', 1000, 'kiszallitas', 2200, 1, '2022-12-31 00:10:35', '2022-12-31 00:10:43'),
(39, 0, '{\"first_name\":\"Teszt\",\"last_name\":\"Elek\",\"shipping_zip\":\"1212\",\"shipping_city\":\"Budapest\",\"shipping_street\":\"Teszt út\",\"shipping_nr\":\"12\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Teszt Elek\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1212\",\"billing_city\":\"Budapest\",\"billing_street\":\"Teszt út\",\"billing_nr\":\"12\",\"email\":\"tesztelek@gmail.com\",\"delivery-method\":\"szemelyes\"}', 'tesztelek@gmail.com', 0, 'szemelyes', 2500, 0, '2022-12-31 00:28:57', NULL),
(40, 11, '{\"first_name\":\"Teszt\",\"last_name\":\"Teszt\",\"shipping_zip\":\"1000\",\"shipping_city\":\"Budapest\",\"shipping_street\":\"Fő utca\",\"shipping_nr\":\"22\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Teszt Teszt\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1000\",\"billing_city\":\"Budapest\",\"billing_street\":\"Fő utca\",\"billing_nr\":\"22\",\"email\":\"teszt@gmail.com\",\"delivery-method\":\"kiszallitas\"}', 'teszt@gmail.com', 1000, 'kiszallitas', 4700, 0, '2022-12-31 00:31:02', '2022-12-31 00:31:19'),
(41, 12, '{\"first_name\":\"Kis\",\"last_name\":\"Kis\",\"shipping_zip\":\"1212\",\"shipping_city\":\"Budapest\",\"shipping_street\":\"Petőfi utca\",\"shipping_nr\":\"4\",\"copy-shipping-billing\":\"on\",\"billing_name\":\"Kis Kis\",\"billing_tax_nr\":\"\",\"billing_zip\":\"1212\",\"billing_city\":\"Budapest\",\"billing_street\":\"Petőfi utca\",\"billing_nr\":\"4\",\"email\":\"kiskis@gmail.com\",\"delivery-method\":\"szemelyes\"}', 'kiskis@gmail.com', 0, 'szemelyes', 28700, 1, '2022-12-31 00:32:37', '2022-12-31 00:33:22');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `order_pizzas`
--

CREATE TABLE `order_pizzas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pizza_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `pizza_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topping_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`topping_list`)),
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `order_pizzas`
--

INSERT INTO `order_pizzas` (`id`, `pizza_id`, `order_id`, `pizza_name`, `topping_list`, `size`, `price`, `quantity`, `subtotal`, `created_at`, `updated_at`) VALUES
(35, 1, 25, 'Suprame', '[{\"id\":\"3\",\"name\":\"Szálami\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2300, 1, 2300, '2022-12-22 17:23:04', NULL),
(36, 2, 25, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-22 17:23:04', NULL),
(37, 4, 29, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 1, 2500, '2022-12-22 17:24:13', NULL),
(38, 2, 29, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-22 17:24:13', NULL),
(39, 2, 30, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-22 17:26:57', NULL),
(40, 1, 31, 'Suprame', '[{\"id\":\"3\",\"name\":\"Szálami\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2300, 1, 2300, '2022-12-22 17:34:49', NULL),
(41, 3, 31, 'Songoku', '[{\"id\":\"2\",\"name\":\"Sonka\",\"created_at\":null,\"updated_at\":null},{\"id\":\"6\",\"name\":\"Gomba\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"11\",\"name\":\"Kukorica\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2600, 1, 2600, '2022-12-22 17:34:49', NULL),
(42, 2, 32, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-22 17:37:00', NULL),
(43, 3, 32, 'Songoku', '[{\"id\":\"2\",\"name\":\"Sonka\",\"created_at\":null,\"updated_at\":null},{\"id\":\"6\",\"name\":\"Gomba\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"11\",\"name\":\"Kukorica\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2600, 1, 2600, '2022-12-22 17:37:00', NULL),
(44, 4, 32, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 1, 2500, '2022-12-22 17:37:00', NULL),
(45, 4, 33, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 1, 2500, '2022-12-22 17:40:31', NULL),
(46, 2, 34, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-22 17:46:28', NULL),
(47, 3, 34, 'Songoku', '[{\"id\":\"2\",\"name\":\"Sonka\",\"created_at\":null,\"updated_at\":null},{\"id\":\"6\",\"name\":\"Gomba\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"11\",\"name\":\"Kukorica\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2600, 1, 2600, '2022-12-22 17:46:28', NULL),
(48, 2, 35, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-22 17:46:42', NULL),
(49, 3, 35, 'Songoku', '[{\"id\":\"2\",\"name\":\"Sonka\",\"created_at\":null,\"updated_at\":null},{\"id\":\"6\",\"name\":\"Gomba\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"11\",\"name\":\"Kukorica\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2600, 1, 2600, '2022-12-22 17:46:42', NULL),
(50, 2, 36, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-30 23:56:50', NULL),
(51, 3, 37, 'Songoku', '[{\"id\":\"2\",\"name\":\"Sonka\",\"created_at\":null,\"updated_at\":null},{\"id\":\"6\",\"name\":\"Gomba\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"11\",\"name\":\"Kukorica\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2600, 1, 2600, '2022-12-31 00:06:08', NULL),
(52, 1, 37, 'Suprame', '[{\"id\":\"3\",\"name\":\"Szálami\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2300, 1, 2300, '2022-12-31 00:06:08', NULL),
(53, 2, 37, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 3, 6600, '2022-12-31 00:06:08', NULL),
(54, 4, 37, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 6, 15000, '2022-12-31 00:06:08', NULL),
(55, 2, 38, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-31 00:10:35', NULL),
(56, 4, 39, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 1, 2500, '2022-12-31 00:28:57', NULL),
(57, 2, 40, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-31 00:31:02', NULL),
(58, 4, 40, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 1, 2500, '2022-12-31 00:31:02', NULL),
(59, 1, 41, 'Suprame', '[{\"id\":\"3\",\"name\":\"Szálami\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2300, 5, 11500, '2022-12-31 00:32:37', NULL),
(60, 4, 41, 'Magyaros', '[{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"9\",\"name\":\"Kolbász\",\"created_at\":null,\"updated_at\":null},{\"id\":\"7\",\"name\":\"Bacon\",\"created_at\":null,\"updated_at\":null},{\"id\":\"8\",\"name\":\"Paradicsom\",\"created_at\":null,\"updated_at\":null},{\"id\":\"10\",\"name\":\"Csemegeuborka\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2500, 6, 15000, '2022-12-31 00:32:37', NULL),
(61, 2, 41, 'Mexicoi', '[{\"id\":\"5\",\"name\":\"Bab\",\"created_at\":null,\"updated_at\":null},{\"id\":\"1\",\"name\":\"Sajt\",\"created_at\":null,\"updated_at\":null},{\"id\":\"4\",\"name\":\"Csirke\",\"created_at\":null,\"updated_at\":null}]', 'Normál', 2200, 1, 2200, '2022-12-31 00:32:37', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizzas`
--

CREATE TABLE `pizzas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deal` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `pizzas`
--

INSERT INTO `pizzas` (`id`, `url`, `name`, `image`, `description`, `hot_deal`, `created_at`, `updated_at`) VALUES
(1, 'suprame', 'Suprame', '1.jpg', '', 1, NULL, NULL),
(2, 'mexicoi', 'Mexicoi', '2.jpg', '', 1, NULL, NULL),
(3, 'songoku', 'Songoku', '3.jpg', '', 1, NULL, NULL),
(4, 'magyaros', 'Magyaros', '5.jpg', '', 1, NULL, NULL),
(5, 'paradicsomos', 'paradicsomos', '12.jpg', '', 0, NULL, NULL),
(6, 'parmai', 'pármai', '11.jpg', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizzas_sizes`
--

CREATE TABLE `pizzas_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pizza_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `pizzas_sizes`
--

INSERT INTO `pizzas_sizes` (`id`, `pizza_id`, `size_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2300, NULL, NULL),
(2, 1, 2, 4100, NULL, NULL),
(3, 2, 1, 2200, NULL, NULL),
(4, 2, 2, 3900, NULL, NULL),
(5, 3, 1, 2600, NULL, NULL),
(6, 3, 2, 4500, NULL, NULL),
(7, 4, 1, 2500, NULL, NULL),
(8, 4, 2, 4300, NULL, NULL),
(0, 5, 1, 1800, NULL, NULL),
(0, 5, 2, 2600, NULL, NULL),
(0, 6, 1, 2300, NULL, NULL),
(0, 6, 2, 3400, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizzas_toppings`
--

CREATE TABLE `pizzas_toppings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pizza_id` bigint(20) UNSIGNED NOT NULL,
  `topping_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `pizzas_toppings`
--

INSERT INTO `pizzas_toppings` (`id`, `pizza_id`, `topping_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 2, 5, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 4, NULL, NULL),
(6, 3, 2, NULL, NULL),
(7, 3, 6, NULL, NULL),
(8, 3, 1, NULL, NULL),
(9, 3, 11, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 9, NULL, NULL),
(12, 4, 7, NULL, NULL),
(13, 4, 8, NULL, NULL),
(14, 4, 10, NULL, NULL),
(0, 5, 1, NULL, NULL),
(0, 5, 8, NULL, NULL),
(0, 6, 12, NULL, NULL),
(0, 6, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `default`, `created_at`, `updated_at`) VALUES
(1, 'Normál', 1, NULL, NULL),
(2, 'Nagy', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `toppings`
--

CREATE TABLE `toppings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `toppings`
--

INSERT INTO `toppings` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sajt', NULL, NULL),
(2, 'Sonka', NULL, NULL),
(3, 'Szálami', NULL, NULL),
(4, 'Csirke', NULL, NULL),
(5, 'Bab', NULL, NULL),
(6, 'Gomba', NULL, NULL),
(7, 'Bacon', NULL, NULL),
(8, 'Paradicsom', NULL, NULL),
(9, 'Kolbász', NULL, NULL),
(10, 'Csemegeuborka', NULL, NULL),
(11, 'Kukorica', NULL, NULL),
(12, 'Pármai sonka', NULL, NULL),
(13, 'Rukkola', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` int(11) NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_nr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_tax_nr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` int(11) NOT NULL,
  `billing_nr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_token` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `is_admin`, `first_name`, `last_name`, `email`, `new_email`, `email_verified_at`, `password`, `shipping_zip`, `shipping_city`, `shipping_street`, `shipping_nr`, `billing_name`, `billing_tax_nr`, `billing_zip`, `billing_nr`, `billing_street`, `billing_city`, `remember_token`, `verification_token`, `created_at`, `updated_at`) VALUES
(9, 0, 'Teszt', 'Elek', 'tesztelek@gmail.com', NULL, '2022-12-22 18:47:08', 'c334246cfc6455f1e084c7646a04f432', 0, '', '', NULL, NULL, NULL, 0, NULL, '', '', NULL, NULL, '2022-12-22 17:47:08', NULL),
(10, 1, 'Farkas', 'Bence', 'farkasbence@gmail.com', NULL, '2022-12-31 01:01:36', 'c334246cfc6455f1e084c7646a04f432', 0, '', '', NULL, NULL, NULL, 0, NULL, '', '', NULL, NULL, '2022-12-31 00:01:36', '2022-12-31 00:01:49'),
(11, 0, 'Teszt', 'Béla', 'teszt@gmail.com', NULL, '2022-12-31 01:31:19', 'c334246cfc6455f1e084c7646a04f432', 0, '', '', NULL, NULL, NULL, 0, NULL, '', '', NULL, NULL, '2022-12-31 00:31:19', NULL),
(12, 0, 'Kis', 'Kis', 'kiskis@gmail.com', NULL, '2022-12-31 01:32:48', 'c334246cfc6455f1e084c7646a04f432', 0, '', '', NULL, NULL, NULL, 0, NULL, '', '', NULL, NULL, '2022-12-31 00:32:48', NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `order_pizzas`
--
ALTER TABLE `order_pizzas`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- A tábla indexei `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `order_pizzas`
--
ALTER TABLE `order_pizzas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
