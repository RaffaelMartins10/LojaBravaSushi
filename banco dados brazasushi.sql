-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jun-2019 às 06:28
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brazasushi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `brands`
--

CREATE TABLE `brands` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(6, 'Sushi'),
(7, 'Antipasti'),
(8, 'Menu'),
(9, 'Bevande'),
(10, 'Vegetariano'),
(11, 'Piatti Brasiliani'),
(12, 'Uramaki Speciali ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `sub`, `name`) VALUES
(12, 0, 'Antipasti'),
(13, 0, 'Tartare'),
(14, 0, 'Tartare Speciali  (Salsa Tartufo, Limone, Hondashi) '),
(15, 0, 'Carpacci (salsa ponzu, pesto) 10pz '),
(16, 0, 'Carpacci Speciali (Salsa tartufo, Soia, Limone) 10pz '),
(17, 0, 'Poke'),
(18, 0, 'Sashimi - 6pz'),
(19, 0, 'Nigiri - 2pz'),
(20, 0, 'Nigiri Speciali - 2pz'),
(21, 0, 'Hossomaki - 6pz'),
(22, 0, 'Gunkan - 2pz'),
(23, 0, 'Temaki Classici'),
(24, 0, 'Temaki Speciali (Alga di Soia)'),
(25, 0, 'Uramaki Classici - 8pz'),
(26, 0, 'Uramaki Speciali - 8pz'),
(27, 0, 'Hot\'s - 8pz'),
(34, 0, 'Menu'),
(35, 0, 'Salatini Brasiliani 10pz'),
(36, 0, 'Menu Kids'),
(37, 0, 'Dolce'),
(38, 0, 'Bevande'),
(39, 0, 'Vegetariano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `coupon_type` int(11) NOT NULL DEFAULT '0',
  `coupon_value` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `options`
--

CREATE TABLE `options` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `options`
--

INSERT INTO `options` (`id`, `name`) VALUES
(1, 'Cor'),
(2, 'Tamanho'),
(3, 'Memória RAM'),
(4, 'Polegadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '0',
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`) VALUES
(1, 'Super Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_items`
--

CREATE TABLE `permission_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `permission_items`
--

INSERT INTO `permission_items` (`id`, `name`, `slug`) VALUES
(1, 'Criar Cupom de Oferta', 'cupons_create'),
(2, 'Ver Permissões', 'permissions_view'),
(3, 'Ver Categorias', 'categories_view'),
(4, 'Ver Páginas', 'pages_view'),
(5, 'Ver Marcas', 'brands_view'),
(6, 'Ver Produtos', 'products_view'),
(7, 'Ver Usuários', 'users_view');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_links`
--

CREATE TABLE `permission_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_permission_group` int(11) NOT NULL,
  `id_permission_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `permission_links`
--

INSERT INTO `permission_links` (`id`, `id_permission_group`, `id_permission_item`) VALUES
(98, 1, 1),
(99, 1, 2),
(100, 1, 3),
(101, 1, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL DEFAULT '0',
  `id_brand` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `description` text,
  `stock` int(11) DEFAULT '1',
  `price` float NOT NULL,
  `price_from` float DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `sale` tinyint(1) DEFAULT NULL,
  `bestseller` tinyint(1) DEFAULT NULL,
  `new_product` tinyint(1) DEFAULT NULL,
  `options` varchar(200) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `length` float DEFAULT NULL,
  `diameter` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `id_category`, `id_brand`, `name`, `description`, `stock`, `price`, `price_from`, `rating`, `featured`, `sale`, `bestseller`, `new_product`, `options`, `weight`, `width`, `height`, `length`, `diameter`) VALUES
(14, 12, 7, 'Edamame', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(15, 12, 7, 'Wakame', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(16, 12, 7, 'Riso', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(17, 12, 7, 'Sunomono', '', 1, 1, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(18, 13, 6, 'Salmone, Riso o Avocado', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(19, 13, 6, 'Tonno, Riso o Avocado', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(20, 13, 6, 'Ricciola, Riso o Avocado', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(21, 13, 6, 'Branzino, Riso o Avocado', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(22, 14, 6, 'Salmone, Riso o Avocado', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(23, 14, 6, 'Tonno, Riso o Avocado', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(24, 14, 6, 'Ricciola, Riso o Avocado', '', 1, 10, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(25, 14, 6, 'Branzino, Riso o Avocado', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(26, 18, 7, 'Salmone', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(27, 15, 6, 'Tonno', '', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(28, 15, 6, 'Ricciola', '', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(29, 15, 6, 'Branzino', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(30, 15, 6, 'Mix 12pz', '', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(31, 16, 6, 'Salmone', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(32, 16, 6, 'Tonno', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(33, 16, 6, 'Ricciola', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(34, 16, 6, 'Branzino', '', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(35, 16, 6, 'Mix 12pz', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(36, 17, 6, 'Salmone', '<p>Riso, Carota, Cetriolo, Ravanelli, Avocado, Pomodoro Rosso, Cipolla Crispy</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(37, 17, 6, 'Tonno', '<p>Riso Ravanelli, Wakame, Mango, Edamame, Mango, Avocado, Mandorle</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(38, 17, 6, 'Pesce Bianco', '<p>Riso, Carota, Polpa di Granchio, Avocado, Mango, Pomodori Rossi, Erba Cipollina</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(39, 17, 6, 'Alice Marinata', '<p>Riso, Misticanza, Edamame, Pomodori Secchi, Avocado, Carota, Nocciola</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(40, 17, 6, 'Pollo', '<p>Riso, Rucola, Fragola, Cetriolo, Carota, Avocado, Edamame, Sesamo</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(41, 17, 6, 'Gamberi', '<p>Riso, Misticanza, Mango, Carota, Avocado, Ravanelli, Nachos</p>', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(42, 18, 6, 'Salmone', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(43, 18, 6, 'Tonno', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(44, 18, 6, 'Ricciola', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(45, 18, 6, 'Branzino', '', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(46, 18, 6, 'Mix', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(47, 19, 6, 'Salmone', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(48, 19, 6, 'Tonno', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(49, 19, 6, 'Ricciola', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(50, 19, 6, 'Branzino', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(51, 19, 6, 'Anguilla', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(52, 19, 6, 'Capasanta', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(53, 20, 6, 'Salmone Scottato', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(54, 20, 6, 'Tonno Scottato', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(55, 20, 6, 'Ricciola Tartufo', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(56, 20, 6, 'Branzino Lime', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(57, 20, 6, 'Capasanta Pesto', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(58, 20, 6, 'Gambero Rosso', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(59, 21, 6, 'Salmone', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(60, 21, 6, 'Salmone Cotto', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(61, 21, 6, 'Tonno', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(62, 21, 6, 'Ricciola', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(63, 21, 6, 'Branzino', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(64, 22, 6, 'Salmone, Philadelphia, Erba Cipollina', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(65, 22, 6, 'Salmone Scottato, Philadelphia, Aglio Porro', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(66, 22, 6, 'Tonno, Maionese, Sesamo, Olio di Sesamo', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(67, 22, 6, 'Ricciola, Maionese, Lime', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(68, 22, 6, 'Anguilla', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(69, 23, 6, 'Salmone, Avocado, Philadelphia', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(70, 23, 6, 'Spicy Salmone, Avocado', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(71, 23, 6, 'Salmone Cotto, Avocado, Philadelphia', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(72, 23, 6, 'Tonno, Avocado, Philadelphia', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(73, 23, 6, 'Spicy Tonno, Avocado', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(74, 23, 6, 'Pesce Bianco, Maionese, Avocado', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(75, 23, 6, 'Salmone, Gamberi, Maionese', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(76, 24, 6, 'Salmone, Philadelphia, Erba Cipollina', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(77, 24, 6, 'Tonno, Maionese, Aglio Porro', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(78, 24, 6, 'Pesce Bianco, Avocado, Miele, Nocciola', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(79, 24, 6, 'Spicy Salmone, Avocado, Cipolla Crispy', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(80, 24, 6, 'Gamberi, Polpa di Granchio Spicy, Maionese, Philadelphia, Teriyaki', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(81, 24, 6, 'Gamberi, Maionese, Crema Pistacchio, Granella di Pistacchio', '', 1, 5, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(82, 24, 6, 'Pollo, Rucola, Avocado, Maionese, Grana, Aceto Balsamico', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(83, 25, 6, 'Salmone, Avocado, Philadelphia', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(84, 25, 6, 'Spicy Salmone, Maionese, Avocado', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(85, 25, 6, 'Salmone Cotto, Avocado, Philadelphia', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(86, 25, 6, 'Tonno, Avocado, Philadelphia', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(87, 25, 6, 'Spicy Tonno, Maionese, Avocado', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(88, 25, 6, 'California', '<p>Polpa di Granchio, Maionese, Avocado</p>', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(89, 26, 12, 'Paraiso', '<p>Maionese Piccante, Avocado, Salmone, Cipolla Crispy, Teriyaki, Sesamo</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(90, 26, 12, 'Carnaval', '<p>Philadelphia, Nocciola, Mango, Salmone, Salmone Scottato, Mandorle, Teriyaki, Sesamo</p>', 1, 10, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(91, 26, 12, 'Salvador', '<p>Maionese, Avocado, Misticanza, Salmone, Alga di Soia Piccante, Teriyaki</p>', 1, 10, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(92, 26, 12, 'Estrela', '<p>Philadelfia, Rucola, Salmone Cotto, Alga di Soia Gialla, Teriyaki, Maionese, Mandorle</p>', 1, 11, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(93, 26, 12, 'Mamma Mia', '<p>Maionese, Cetriolo, Tonno, Olio Sesamo, Ricciola, Pomodorino Giallo, Basilico, Olio EVO</p>', 1, 11, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(94, 26, 12, 'Sampa', '<p>Tonno Marinato al Lime, Avocado, Rucola, Tonno Scottato, Mandorle</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(95, 26, 12, 'Funk', '<p>Maionese, Gamberi in Tempura, Avocado, Salsa Pistacchio, Granella di Pistacchio, Teriyaki</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(96, 26, 12, 'Arco Iris', '<p>Mango, Gamberi in Tempura, Salmone, Tonno, Ricciola, Branzino, Avocado Teriyaki, Maionese</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(97, 26, 12, 'Rock', '<p>Philadelphia, Gamberi in Tempura, Salmone, Lime, Pasta Kataifi, Teriyaki</p>', 1, 11, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(98, 26, 12, 'Pagode', '<p>Philadelphia, Maionese, Gamberi in Tempura, Salmone, Polpa di Granchio Spicy, Teriyaki</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(99, 26, 12, 'Tropical', '<p>Salsa rosa, Gamberi in Tempura, Cheddar, Teriyaki</p>', 1, 11, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(100, 26, 12, 'Leblon', '<p>Salsa Menta, Gambero Crudo, Branzino, Lime, Uova Tobiko</p>', 1, 10, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(101, 26, 12, 'Braza', '<p>Avocado, Maionese, Gambero Rosso, Capasanta, Sale</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(102, 26, 12, 'Nuts', '<p>Maionese, Avocado, Rucola, Pollo, Grana, Aceto Balsamico</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(103, 26, 12, 'Meu Amor', '<p>Pesce Bianco, Avocado, Miele, Capasanta Scottata, Tartare di Gamberi</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(104, 26, 12, 'Samba', '<p>Rucola, Cetriolo Marinato, Pesce Bianco, Peperoncino</p>', 1, 10, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(105, 26, 12, 'Minas', '<p>Polpa di Granchio, Avocado, Tartare Salmone Spicy Scottato</p>', 1, 10, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(106, 27, 6, 'Bahia', '<p>Alga di Soia, Philadelphia, Sesamo, Gamberi Fry, Salsa dello Chef</p>', 1, 12, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(107, 27, 6, 'Rio', '<p>Salmone, Philadelphia, Mango, Teriyaki</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(108, 27, 6, 'Copacabana', '<p>Philadelphia, Banana, Dolce di Latte</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(109, 27, 6, 'SensaÃ§ao', '<p>Philadelphia, Fragola, Nutella</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(110, 39, 10, 'Poke', '<p>Feta, Misticanza, Avocado, Pomodori Secchi, Carota, Edamame, Mais</p>', 1, 8, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(111, 39, 10, 'Hossomaki Cetriolon 6pz', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(112, 39, 10, 'Hossomaki  Avocado 6pz', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(113, 39, 10, 'Hossomaki Carota 6pz', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(114, 39, 10, 'Hossomaki Rucola 6pz', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(115, 39, 10, 'Gunka Avocado 2pz', '<p>Cetriolo, Tartare di Avocado, Olio EVO, Sesamo</p>', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(116, 39, 10, 'Gunka Edamame 2pz', '<p>Cetriolo, Edamame, Olio EVO, Sale</p>', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(117, 39, 10, 'Temaki 1pz', '<p>Rucola, Avocado, Cetriolo</p>', 1, 3, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(118, 39, 10, 'Uramaki Pantanal 8pz', '<p>Philadelphia, Rucola, Avocado, Pomodori Secchi</p>', 1, 7, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(119, 39, 10, 'Uramaki Natureba 8pz', '<p>Avocado, Misticanza, Mango, Carota</p>', 1, 7, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(120, 34, 8, 'Small 22pz', '<p>1 Uramaki Classic (8pz), 1 Hossomaki (6pz), Nigiri mix (4pz), Sashimi Mix (4pz)</p>', 1, 20, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(121, 34, 8, 'Large 40pz', '<p>1 Uramaki Classic (8pz), 1 Uramaki Speciali (8pz), 2 Hossomaki (6pz), Nigiri mix (4pz), Sashimi Mix (6pz) 2 Temaki Classic (2pz)</p>', 1, 45, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(122, 35, 11, 'Coxinha ( Pollo )', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(123, 35, 11, 'Risoles de Carne ( Carne )', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(124, 35, 11, 'Risoles de Pizza', '<p>Prosciutto Cotto, Formaggio, Origano</p>', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(125, 35, 11, 'Coquete de Salsicha ( Wurstel )', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(126, 35, 11, 'Bolinha de Queijo ( Formaggio )', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(127, 35, 11, 'Bolinha Picante ( Formaggio, Peperoncino )', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(128, 35, 11, 'Kibe', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(129, 35, 11, 'Mix 14pz', '', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(130, 36, 8, 'Mix 13 pz', '<p>4 pz - Uramaki Salmone Cotto, Avocado, Philadelphia 3 pz - Hosomaki Salmone Cotto 2 pz - Nigiri Salmone Scottato 4 pz - Salatini Brasiliani ( 1 Coxinha, 1 Risoles de Carne,1 Risoles di Pizza, 1 Croquete)</p>', 1, 9, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(131, 36, 8, 'Sushi 11 pz', '<p>4 pz - Uramaki Salmone Cotto, Avocado, Philadelphia 3 pz - Hosomaki Salmone Cotto 4 pz - Nigiri Salmone Scottato</p>', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(132, 36, 8, 'Salatini Mix 6pz', '<p>Salatini Brasiliani ( 1 Coxinha, 1 Risoles de Carne, 2 Risoles di Pizza, 2 Croquetes ), Patatine fritte</p>', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(133, 37, 9, 'SoufflÃ¨ al Cioccolato', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(134, 37, 9, 'Mochi', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(135, 37, 9, 'Cheesecake', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(136, 38, 9, 'Acqua', '', 1, 1, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(137, 38, 9, 'Coca Cola', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(138, 38, 9, 'TÃ¨', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(139, 38, 9, 'Moretti 33c', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(140, 38, 9, 'Moretti 66cl', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(141, 38, 9, 'Heineken 33cl', '', 1, 2, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(142, 38, 9, 'Heineken 66c', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(143, 38, 9, 'Corona', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(144, 38, 9, 'Brahma', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(145, 38, 9, 'Asahi 33cl', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(146, 38, 9, 'Asahi 66cl', '', 1, 4, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(147, 38, 9, 'Saporo 33cl', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(148, 38, 9, 'Saporo 66cl', '', 1, 6, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(149, 38, 9, 'SakÃ©', '', 1, 7, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(150, 38, 9, 'Vino Bianco 20cl', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(151, 38, 9, 'Vino Rosso 20cl', '', 1, 3, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(152, 38, 9, 'Vino Bianco 75cl', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(153, 38, 9, 'Vino Rosso 75cl', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(154, 38, 9, 'Prosecco 75cl', '', 1, 8, 0, NULL, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products_images`
--

INSERT INTO `products_images` (`id`, `id_product`, `url`) VALUES
(1, 1, '1.jpg'),
(2, 2, '2.jpg'),
(3, 3, '3.jpg'),
(4, 4, '4.jpg'),
(5, 5, '4.jpg'),
(6, 6, '4.jpg'),
(7, 7, '7.jpg'),
(8, 8, '4.jpg'),
(9, 1, '4.jpg'),
(11, 1, '3.jpg'),
(12, 12, 'b89b0be85b0eb58e8f3c623c34f6299e.jpg'),
(13, 12, '3b3c6636f0f75ee5e7eb122ac7331e0f.jpg'),
(14, 13, '9d8f959850adaf8153b7b1785cf0541a.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products_options`
--

CREATE TABLE `products_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT '0',
  `id_option` int(11) NOT NULL DEFAULT '0',
  `p_value` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products_options`
--

INSERT INTO `products_options` (`id`, `id_product`, `id_option`, `p_value`) VALUES
(4, 2, 1, 'Azul'),
(5, 2, 2, '19cm'),
(6, 3, 1, 'Branco'),
(7, 3, 2, '20cm'),
(8, 4, 1, 'Preto'),
(9, 4, 4, '17'),
(10, 5, 1, 'Vermelho'),
(11, 6, 1, 'Cinza'),
(12, 6, 2, '18cm'),
(13, 6, 4, '20'),
(14, 7, 2, '18cm'),
(15, 7, 4, '19'),
(16, 8, 4, '18'),
(17, 11, 1, 'Branco'),
(18, 11, 3, '4GB'),
(19, 12, 1, 'Azul'),
(20, 12, 3, '2GB'),
(21, 13, 1, 'Vermelho'),
(25, 1, 1, 'Azul'),
(26, 1, 2, '23cm'),
(27, 1, 4, '31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_coupon` int(11) DEFAULT '0',
  `total_amount` float NOT NULL DEFAULT '0',
  `payment_type` varchar(100) DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `purchases_products`
--

CREATE TABLE `purchases_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_purchase` int(11) NOT NULL DEFAULT '0',
  `id_product` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `product_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `purchase_transactions`
--

CREATE TABLE `purchase_transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_purchase` int(11) NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `transaction_code` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rates`
--

CREATE TABLE `rates` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL DEFAULT '0',
  `date_rated` datetime NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rates`
--

INSERT INTO `rates` (`id`, `id_product`, `id_user`, `date_rated`, `points`, `comment`) VALUES
(2, 1, 1, '2018-09-28 21:27:36', 4, 'Produto meio ruim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_permission` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(32) DEFAULT '',
  `telefone` text NOT NULL,
  `cep` text NOT NULL,
  `rua` text NOT NULL,
  `numero` text NOT NULL,
  `complemento` text NOT NULL,
  `bairro` text NOT NULL,
  `cidade` text NOT NULL,
  `estado` text NOT NULL,
  `cpf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `id_permission`, `email`, `password`, `name`, `admin`, `token`, `telefone`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cpf`) VALUES
(1, 1, 'suporte@b7web.com.br', 'e10adc3949ba59abbe56e057f20f883e', 'Bonieky Lacerdaasdfasdf', 1, '3fadf669da203e989bf6503110e00dee', '', '', '', '', '', '', '', '', ''),
(2, 0, 'c41388735159787216280@sandbox.pagseguro.com.br', 'W7kkCD0atP6lLf8h', 'Sandbox Pagseguro', 0, '', '', '', '', '', '', '', '', '', ''),
(5, 1, 'raffaelmartins10@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Raffael Martins', 1, 'c3cfe0992767cd7825a3cc3488868082', '', '', '', '', '', '', '', '', ''),
(6, 0, 'testemp@hotmail.com', '123', '', 0, '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_items`
--
ALTER TABLE `permission_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_links`
--
ALTER TABLE `permission_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases_products`
--
ALTER TABLE `purchases_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_transactions`
--
ALTER TABLE `purchase_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission_items`
--
ALTER TABLE `permission_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permission_links`
--
ALTER TABLE `permission_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `purchases_products`
--
ALTER TABLE `purchases_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `purchase_transactions`
--
ALTER TABLE `purchase_transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
