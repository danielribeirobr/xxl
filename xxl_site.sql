-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: mysql.danielribeiro.com
-- Tempo de geração: 05/04/2016 às 19:25
-- Versão do servidor: 5.6.25-log
-- Versão do PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `xxl_site`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `conf`
--

CREATE TABLE `conf` (
  `conf_id` int(10) UNSIGNED NOT NULL,
  `conf_name` varchar(20) NOT NULL,
  `conf` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `conf`
--

INSERT INTO `conf` (`conf_id`, `conf_name`, `conf`) VALUES
(1, 'stylebook_sizes', 'a:2:{s:5:"thumb";a:2:{s:1:"w";i:85;s:1:"h";i:85;}s:5:"image";a:2:{s:1:"w";i:960;s:1:"h";i:455;}}'),
(2, 'home_sizes', 'a:2:{s:5:"thumb";a:2:{s:1:"w";i:85;s:1:"h";i:85;}s:5:"image";a:2:{s:1:"w";i:960;s:1:"h";i:540;}}'),
(3, 'blog_sizes', 'a:2:{s:5:"thumb";a:2:{s:1:"w";i:85;s:1:"h";i:85;}s:5:"image";a:2:{s:1:"w";i:470;s:1:"h";i:515;}}'),
(4, 'vlog_sizes', 'a:2:{s:5:"thumb";a:2:{s:1:"w";i:85;s:1:"h";i:85;}s:5:"image";a:2:{s:1:"w";i:470;s:1:"h";i:515;}}'),
(5, 'site-email', 'xxl@xxl.com.br, tiu@xxl.com.br'),
(6, 'tamanhos', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}'),
(7, 'product_sizes', 'a:2:{s:5:"thumb";a:2:{s:1:"w";i:212;s:1:"h";i:247;}s:5:"image";a:2:{s:1:"w";i:415;s:1:"h";i:464;}}'),
(8, 'categories', 'a:6:{i:0;s:9:"Camisetas";i:1;s:6:"Blusas";i:2;s:7:"CalÃ§as";i:3;s:8:"Bermudas";i:4;s:6:"BonÃ©s";i:5;s:11:"AcessÃ³rios";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cor`
--

CREATE TABLE `cor` (
  `id` int(10) UNSIGNED NOT NULL,
  `cor` varchar(100) NOT NULL,
  `hex` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cor`
--

INSERT INTO `cor` (`id`, `cor`, `hex`) VALUES
(1, 'Amarelo', '#F9F002'),
(2, 'Azul', '#6A9DE8'),
(3, 'Branco', '#FFFFFF'),
(4, 'Cinza', '#666666'),
(5, 'Preto', '#000000'),
(6, 'Verde', '#054A15'),
(7, 'Vermelho', '#B40000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dealer`
--

CREATE TABLE `dealer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` text,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `info` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `dealer`
--

INSERT INTO `dealer` (`id`, `name`, `phone`, `address`, `city`, `state`, `info`) VALUES
(6, 'Pentagono', NULL, 'Rua SÃ£o CristovÃ£o, 40 AracajÃº ', 'AracajÃº ', 'SE', NULL),
(7, 'Atitude', NULL, 'Rua Benjamin  Constant, 1160 \r\n', 'Araraquara', 'SP', NULL),
(8, 'Castelli', NULL, 'Av. 9 de Julho, 1206 \r\n', 'Araraquara ', 'SP', NULL),
(9, ' Rap style', NULL, 'Rua Otone Correa, 2000\r\n', 'MatÃ£o', 'SP', NULL),
(10, 'Francy', NULL, 'Rua Rui barbosa, 990\r\n', 'MatÃ£o', 'SP', NULL),
(11, 'Freestyle hip hop ', NULL, 'Av. Jacinto Ferreira de SÃ¡\r\n\r\n', 'ourinhos ', 'SP', NULL),
(12, 'Luiza Modas ', NULL, 'Rua Antonio Prado, 270\r\n', 'Angatuba ', 'SP', NULL),
(13, 'Art  Modas ', NULL, 'Rua JoÃ£O Satino de Almeida Leme, 369\r\n', 'SÃ£o Roque', 'SP', NULL),
(14, 'Art  Modas', NULL, 'Av. Tiradentes, 240\r\n', 'Piracicaba', 'SP', NULL),
(15, 'Tiozinho do Rap', NULL, 'Rua Antonio Ipiranga, 100 loja 165\r\n', 'Guarulhos', 'SP', NULL),
(16, 'Ponto X', NULL, 'Av. Monteiro Lobato, 70\r\n', 'Osasco', 'SP', NULL),
(17, 'K129', NULL, 'Rua DNA. Primitiva Bianco, 244 loja 29\r\n', 'Osasco', 'SP', NULL),
(18, 'Cia Way', NULL, 'Rod. Antonio Heil, 250\r\n', 'Brusque', 'SC', NULL),
(19, 'Hip Hop Store', NULL, 'AV. Nereu Ramos, 3961\r\n', 'Itapema', 'SP', NULL),
(20, 'Sula Jam', NULL, 'Rua 24 de Maio, 62 loja 138\r\n', 'SÃ£o Paulo', 'SP', NULL),
(21, 'Simbol', NULL, 'Av. Interlagos, 225 loja 239\r\n', 'SÃ£o Paulo ', 'SP', NULL),
(22, 'Americanino ', NULL, 'Av. Ibirapuera, 3107 loja 27\r\n', 'SÃ£o Paulo', 'SP', NULL),
(23, 'Ponto Certo ', NULL, 'Av. Marechal Teodoro, 392 ', 'Jaragua do Sul', 'SC', NULL),
(24, ' Sangue Bom ', NULL, 'Rua Olimpo Miranda Jr 247', 'Itajai', 'SC', NULL),
(25, 'Moda Jovem', NULL, 'Av. Pulo Fontes, 1101 lj.1', 'Florianopolis', 'SC', NULL),
(26, 'Mandala', NULL, 'Av. 7 de Setembro, 1171', 'Bage', 'RS', NULL),
(27, 'Vida Nua ', NULL, 'Rua. Saldanha Marinho, 511 lj. 02', 'Bento Goncalves', 'RS', NULL),
(28, 'DN Radical ', NULL, 'Rua. 15 de Novembro, 666 lj. 28', 'Pelotas', 'RS', NULL),
(29, 'Abreu e Lamel', NULL, 'Av. 1 de Maio, 1483', 'Gramado', 'RS', NULL),
(30, 'Mega Pop', NULL, 'Rua. Dr. Flores, 22 lj.83', 'Santa Cruz do Sul', 'RS', NULL),
(31, 'Dorinho', NULL, 'Rua. 28 de Setembro, 252', 'Lajeado', 'RS', NULL),
(32, 'Fenix', NULL, 'Rua. JÃºlio de Castilho, 630', 'Lajeado', 'RS', NULL),
(33, 'Long Long Hip Hop', NULL, 'Rua. dos Andradas, 31 lj. C', 'Rio de Janeiro', 'RJ', NULL),
(34, 'Friends', NULL, 'Rua. Apodi, 152', 'Natal', 'RN', NULL),
(35, 'Rooster', NULL, 'Av. 7 de setembro, 85', 'Porto Velho', 'RO', NULL),
(36, 'Rail ', NULL, 'Rua. Tabaqui, 595', 'Boa Vista', 'RR', NULL),
(37, 'FC', NULL, 'Av. Via das Flores, 2138', 'Boa Vista', 'RR', NULL),
(38, 'Toda Hora ', NULL, 'Rua. JosÃ© BonifÃ¡cio, 556', 'SÃ£o Leopoldo', 'RS', NULL),
(39, 'PÃ­er Imports', NULL, 'Rua. dos Andradas, 144 lj.08', 'Porto Alegre', 'RS', NULL),
(40, 'Visual Modas', NULL, 'Av. Brasil, 3434 lj. 58', 'Porto Alegre', 'RS', NULL),
(41, 'Arena Hip Hop ', NULL, 'Av. Brasil, 3434 lj. 58', 'MaringÃ¡ ', 'PR', NULL),
(42, 'Peregrino ', NULL, 'Av. Almirante Barroso, 2162 lj. 02', 'Toledo', 'PR', NULL),
(43, 'Street Rock', NULL, 'Rua. Eliseu Martins, 1267 sl.01', 'Teresina', 'PI', NULL),
(44, 'Hip Hop Store', NULL, 'Rua. Balduino Taques, 445 lj. 05', 'Ponta Grossa', 'PR', NULL),
(45, 'Max Tango', NULL, 'Rua. Saldanha Marinho, 1549', 'Guarapuava ', 'PR', NULL),
(46, 'Kalifas', NULL, 'Rua. Getulio Vargas, 1597', 'Guarapuava', 'PR', NULL),
(47, 'Tribo\'s', NULL, 'Rua. Dep.Odon Bezerra,184 lj. 148', 'JoÃ£o Pessoa', 'PB', NULL),
(48, 'W249', NULL, 'Av.GeneralÃ­ssimo Deodoro, 1586', 'BelÃ©m ', 'PA', NULL),
(49, 'Star Loose', NULL, 'Rua. Primeiro de Maio, 1622', 'Curitiba ', 'PR', NULL),
(50, '100% Hip Hop', NULL, 'Rua. Monsenhor Celso, 132', 'Curitiba', 'PR', NULL),
(51, 'Epidemia ', NULL, 'Rua. OlegÃ¡rio Maciel, 322', 'Patos de Minas', 'MG', NULL),
(52, 'King Kris Skatewear', NULL, 'Rua. Mariana, 176', 'Ipatinga ', 'MG', NULL),
(53, 'Wave Land ', NULL, 'Rua. da Aurora, 175 lj.b', 'Recife', 'PE', NULL),
(54, 'Urban Wave ', NULL, 'Av. Conde da Boa Vista, 311 lj 05', 'Recife', 'PE', NULL),
(55, 'Sobrinho ', NULL, 'Av. Presidente Carlos Luiz, 300 lj. 3088', 'JoÃ£o Pessoa', 'PB', NULL),
(56, 'ConexÃ£o Direta', NULL, 'Av. Amazonas, 471 lj. 45', 'Belo Horizonte ', 'MG', NULL),
(57, 'Free Style ', NULL, 'Rua. Praia do Canela, 359 lj. 01', 'Mariana ', 'MG', NULL),
(58, 'A Moda Magazine', NULL, 'Rua. Dr. Hebster, 274', 'Pedro Leopoldo', 'MG', NULL),
(59, 'Angel Skateboards', NULL, 'Rua. Rio de Janeiro, 630 lj. 43', 'Belo Horizonte', 'MG', NULL),
(60, 'Vitral e Silva ', NULL, 'Av. Miguel JoÃ£o, 591', 'AnÃ¡polis', 'GO', NULL),
(61, 'J.  Pires', NULL, 'Av. JerÃ´nimo de Albuquerque MaranhÃ£o, 619 lj. 14', 'SÃ£o Luis', 'MA', NULL),
(62, 'Victoria By Surf', NULL, 'Rua. Ricardo Franco, 10', 'CuiabÃ¡', 'MT', NULL),
(63, 'Tribos ', NULL, 'Rua. Marcelino Pires, 2066', 'Dourados ', 'MS', NULL),
(64, 'Mil Grau ', NULL, 'Av. Anhanguera, 8044 lj.10', 'GoiÃ¢nia ', 'GO', NULL),
(65, 'Tornado ', NULL, 'Av. Anhanguera, 8044 QDA8321 lj. 77', 'GoiÃ¢nia', 'GO', NULL),
(66, 'A Fortaleza ', NULL, 'Rua. 4C Quadra, 83, lote 12', 'Aparecida de GoIÃ¢nia ', 'GO', NULL),
(67, 'Ipanema ConfecÃ§Ãµes', NULL, 'Rua.  Rui Barbosa, 153', 'AnÃ¡polis', 'GO', NULL),
(68, 'Bronx Rap Street ', NULL, 'Rua. Senador Pompeo, 834 sl. 233', 'Fortaleza', 'CE', NULL),
(69, 'Bronx North Shoppin', NULL, 'Av. Bezerra de Menezes, 2450 lj. 243', 'Fortaleza', 'CE', NULL),
(70, 'Kings ', NULL, 'Av.JerÃ´nimo Monteiro, 1690 lj. 52', 'Vila Velha ', 'ES', NULL),
(71, 'Players Hip Hop ', NULL, 'Av. Rio Branco, 1645 lj. 14', 'VitÃ³ria', 'ES', NULL),
(72, 'Tribo do Rap ', NULL, 'Rua. QNE, 17 Cj.F Casa 23', 'Brasilia ', 'DF', NULL),
(73, 'Planeta Surf ', NULL, 'Rua. QNE, Lote 7 lj.02', 'Brasilia', 'DF', NULL),
(74, 'Central Hip Hop', NULL, 'Rua. Isias Trexo, lote 100 cnj.E Box.24', 'Brasilia', 'DF', NULL),
(75, 'Stylo Black ', NULL, 'Rua. QND 12, conj.2 lote.36 lj. 01', 'Brasilia', 'DF', NULL),
(76, 'Karine ', NULL, 'Rua. do ComÃ©rcio, 679 sl. 08', 'MaceiÃ³', 'AL', NULL),
(77, 'Tribus Street Shop ', NULL, 'Rua. Conselheiro Junqueira, 8 lj. 103', 'Salvador ', 'BA', NULL),
(78, 'SÃ³ BalanÃ§o ', NULL, 'Rua. QE 34, Casa. 44', 'Brasilia', 'DF', NULL),
(79, 'Moda e Cia', NULL, 'Rua. C 10, Lote.8 lj.02', 'Brasilia', 'DF', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `image`
--

CREATE TABLE `image` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('stylebook','home','blog','vlog','product') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file` varchar(150) NOT NULL,
  `thumb` varchar(150) NOT NULL,
  `original` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `image`
--

INSERT INTO `image` (`id`, `type`, `title`, `date`, `file`, `thumb`, `original`) VALUES
(57, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326211520_6 xxl s.jpg', '1326211520_th_6 xxl s.jpg', '1326211520_6 xxl s.jpg'),
(58, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326212585_7 xxl s.jpg', '1326212585_th_7 xxl s.jpg', '1326212585_7 xxl s.jpg'),
(59, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326212669_5 xxl s.jpg', '1326212669_th_5 xxl s.jpg', '1326212669_5 xxl s.jpg'),
(60, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326212716_4 xxl s.jpg', '1326212716_th_4 xxl s.jpg', '1326212716_4 xxl s.jpg'),
(61, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326212764_3 xxl s.jpg', '1326212764_th_3 xxl s.jpg', '1326212764_3 xxl s.jpg'),
(62, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326212823_2 xxl s.jpg', '1326212823_th_2 xxl s.jpg', '1326212823_2 xxl s.jpg'),
(63, 'home', '.:XXL2011:.', '2012-03-08 13:29:34', '1326212846_1 xxl s.jpg', '1326212846_th_1 xxl s.jpg', '1326212846_1 xxl s.jpg'),
(66, 'blog', '.:XXL2011:.', '2012-03-08 13:29:34', '1326216861_9 xxl s.jpg', '1326216861_th_9 xxl s.jpg', '1326216861_9 xxl s.jpg'),
(75, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326244955_1 xxl sb.jpg', '1326244955_th_1 xxl sb.jpg', '1326244955_1 xxl sb.jpg'),
(76, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326244996_2 xxl sb.jpg', '1326244996_th_2 xxl sb.jpg', '1326244996_2 xxl sb.jpg'),
(77, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326245115_3 xxl sb.jpg', '1326245115_th_3 xxl sb.jpg', '1326245115_3 xxl sb.jpg'),
(78, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326245135_4 xxl sb.jpg', '1326245135_th_4 xxl sb.jpg', '1326245135_4 xxl sb.jpg'),
(79, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326245154_5 xxl sb.jpg', '1326245154_th_5 xxl sb.jpg', '1326245154_5 xxl sb.jpg'),
(80, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248073_6 xxl sb.jpg', '1326248073_th_6 xxl sb.jpg', '1326248073_6 xxl sb.jpg'),
(81, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248348_7 xxl sb.jpg', '1326248348_th_7 xxl sb.jpg', '1326248348_7 xxl sb.jpg'),
(82, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248427_8 xxl sb.jpg', '1326248427_th_8 xxl sb.jpg', '1326248427_8 xxl sb.jpg'),
(83, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248450_9 xxl sb.jpg', '1326248450_th_9 xxl sb.jpg', '1326248450_9 xxl sb.jpg'),
(84, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248574_10 xxl sb.jpg', '1326248574_th_10 xxl sb.jpg', '1326248574_10 xxl sb.jpg'),
(85, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248597_11 xxl sb.jpg', '1326248597_th_11 xxl sb.jpg', '1326248597_11 xxl sb.jpg'),
(86, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248621_12 xxl sb copy.jpg', '1326248621_th_12 xxl sb copy.jpg', '1326248621_12 xxl sb copy.jpg'),
(87, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248647_13 xxl sb.jpg', '1326248647_th_13 xxl sb.jpg', '1326248647_13 xxl sb.jpg'),
(89, 'stylebook', 'xxl 11', '2012-03-08 13:29:34', '1326248704_15xxl sb.jpg', '1326248704_th_15xxl sb.jpg', '1326248704_15xxl sb.jpg'),
(91, 'vlog', '.:XXL2011:.', '2012-03-08 13:29:34', '1326282969_fundoblog.jpg', '1326282969_th_fundoblog.jpg', '1326282969_fundoblog.jpg'),
(92, 'product', 'Image for product: 1', '2012-03-08 13:29:34', '1330285691_catalog-1.png', '1330285691_th_catalog-1.png', '1330285691_catalog-1.png'),
(93, 'product', 'Image for product: 2', '2012-03-08 13:29:34', '1330362050_10 933.jpg', '1330362050_th_10 933.jpg', '1330362050_10 933.jpg'),
(94, 'product', 'Image for product: 4', '2012-03-08 13:29:34', '1330362296_30 357.jpg', '1330362296_th_30 357.jpg', '1330362296_30 357.jpg'),
(95, 'product', 'Image for product: 6', '2012-03-08 13:29:34', '1330368265_10 933 detalhe.jpg', '1330368265_th_10 933 detalhe.jpg', '1330368265_10 933 detalhe.jpg'),
(96, 'product', 'Image for product: 2', '2012-03-08 13:29:34', '1330387556_10.933 (2).jpg', '1330387556_th_10.933 (2).jpg', '1330387556_10.933 (2).jpg'),
(99, 'product', 'Image for product: 7', '2012-03-08 13:29:34', '1330522290_30 357  frente.jpg', '1330522290_th_30 357  frente.jpg', '1330522290_30 357  frente.jpg'),
(100, 'product', 'Image for product: 7', '2012-03-08 13:29:34', '1330522382_30 357 costas.jpg', '1330522382_th_30 357 costas.jpg', '1330522382_30 357 costas.jpg'),
(101, 'product', 'Image for product: 7', '2012-03-08 13:29:34', '1330522435_30 357 bordado.jpg', '1330522435_th_30 357 bordado.jpg', '1330522435_30 357 bordado.jpg'),
(102, 'product', 'Image for product: 7', '2012-03-08 13:29:34', '1330522494_30 357  lavagem.jpg', '1330522494_th_30 357  lavagem.jpg', '1330522494_30 357  lavagem.jpg'),
(103, 'product', 'Image for product: 7', '2012-03-08 13:29:34', '1330522887_30 357 aviamento.jpg', '1330522887_th_30 357 aviamento.jpg', '1330522887_30 357 aviamento.jpg'),
(104, 'product', 'Image for product: 8', '2012-03-08 13:29:34', '1330523986_50 247 aviamento.jpg', '1330523986_th_50 247 aviamento.jpg', '1330523986_50 247 aviamento.jpg'),
(105, 'product', 'Image for product: 8', '2012-03-08 13:29:34', '1330524059_50 247 bordado.jpg', '1330524059_th_50 247 bordado.jpg', '1330524059_50 247 bordado.jpg'),
(106, 'product', 'Image for product: 8', '2012-03-08 13:29:34', '1330524154_50 247 costas.jpg', '1330524154_th_50 247 costas.jpg', '1330524154_50 247 costas.jpg'),
(107, 'product', 'Image for product: 8', '2012-03-08 13:29:34', '1330524298_50 247 frente.jpg', '1330524298_th_50 247 frente.jpg', '1330524298_50 247 frente.jpg'),
(108, 'product', 'Image for product: 9', '2012-03-08 13:29:34', '1330524392_50 247 frente.jpg', '1330524392_th_50 247 frente.jpg', '1330524392_50 247 frente.jpg'),
(109, 'product', 'Image for product: 9', '2012-03-08 13:29:34', '1330524439_50 247 costas.jpg', '1330524439_th_50 247 costas.jpg', '1330524439_50 247 costas.jpg'),
(110, 'product', 'Image for product: 9', '2012-03-08 13:29:34', '1330524504_50 247 bordado.jpg', '1330524504_th_50 247 bordado.jpg', '1330524504_50 247 bordado.jpg'),
(111, 'product', 'Image for product: 9', '2012-03-08 13:29:34', '1330524626_50 247 aviamento.jpg', '1330524626_th_50 247 aviamento.jpg', '1330524626_50 247 aviamento.jpg'),
(112, 'product', 'Image for product: 10', '2012-03-08 13:29:34', '1330527110_10 979 frente.jpg', '1330527110_th_10 979 frente.jpg', '1330527110_10 979 frente.jpg'),
(113, 'product', 'Image for product: 10', '2012-03-08 13:29:34', '1330527152_10 979 detalhe.jpg', '1330527152_th_10 979 detalhe.jpg', '1330527152_10 979 detalhe.jpg'),
(114, 'product', 'Image for product: 11', '2012-03-08 13:29:34', '1330527331_10 933.jpg', '1330527331_th_10 933.jpg', '1330527331_10 933.jpg'),
(115, 'product', 'Image for product: 11', '2012-03-08 13:29:34', '1330527426_10 933 detalhe.jpg', '1330527426_th_10 933 detalhe.jpg', '1330527426_10 933 detalhe.jpg'),
(116, 'product', 'Image for product: 12', '2012-03-08 13:29:34', '1330535775_30 358 frente.jpg', '1330535775_th_30 358 frente.jpg', '1330535775_30 358 frente.jpg'),
(117, 'product', 'Image for product: 12', '2012-03-08 13:29:34', '1330536391_30 358 costas.JPG', '1330536391_th_30 358 costas.JPG', '1330536391_30 358 costas.JPG'),
(118, 'product', 'Image for product: 12', '2012-03-08 13:29:34', '1330536436_30 358 bordado.jpg', '1330536436_th_30 358 bordado.jpg', '1330536436_30 358 bordado.jpg'),
(119, 'product', 'Image for product: 12', '2012-03-08 13:29:34', '1330536504_30 358 aviamento.JPG', '1330536504_th_30 358 aviamento.JPG', '1330536504_30 358 aviamento.JPG'),
(120, 'product', 'Image for product: 12', '2012-03-08 13:29:34', '1330536572_30 358 lavagem.JPG', '1330536572_th_30 358 lavagem.JPG', '1330536572_30 358 lavagem.JPG'),
(121, 'product', 'Image for product: 13', '2012-03-08 13:29:34', '1330538019_50 281 frente.JPG', '1330538019_th_50 281 frente.JPG', '1330538019_50 281 frente.JPG'),
(122, 'product', 'Image for product: 13', '2012-03-08 13:29:34', '1330538113_50 281 costas.jpg', '1330538113_th_50 281 costas.jpg', '1330538113_50 281 costas.jpg'),
(123, 'product', 'Image for product: 13', '2012-03-08 13:29:34', '1330538216_50 281 bordado.jpg', '1330538216_th_50 281 bordado.jpg', '1330538216_50 281 bordado.jpg'),
(124, 'product', 'Image for product: 14', '2012-03-08 13:29:34', '1330555339_40 345 frente.jpg', '1330555339_th_40 345 frente.jpg', '1330555339_40 345 frente.jpg'),
(125, 'product', 'Image for product: 14', '2012-03-08 13:29:34', '1330555447_40 345 costas.jpg', '1330555447_th_40 345 costas.jpg', '1330555447_40 345 costas.jpg'),
(126, 'product', 'Image for product: 14', '2012-03-08 13:29:34', '1330555546_40 345 bordado.jpg', '1330555546_th_40 345 bordado.jpg', '1330555546_40 345 bordado.jpg'),
(127, 'product', 'Image for product: 14', '2012-03-08 13:29:34', '1330555570_40 345 aviamento.jpg', '1330555570_th_40 345 aviamento.jpg', '1330555570_40 345 aviamento.jpg'),
(128, 'product', 'Image for product: 14', '2012-03-08 13:29:34', '1330555666_40 345 lavagem.jpg', '1330555666_th_40 345 lavagem.jpg', '1330555666_40 345 lavagem.jpg'),
(129, 'product', 'Image for product: 15', '2012-03-08 13:29:34', '1330555999_10 917 frente.jpg', '1330555999_th_10 917 frente.jpg', '1330555999_10 917 frente.jpg'),
(130, 'product', 'Image for product: 15', '2012-03-08 13:29:34', '1330556022_10 917 detalhe.jpg', '1330556022_th_10 917 detalhe.jpg', '1330556022_10 917 detalhe.jpg'),
(131, 'product', 'Image for product: 16', '2012-03-08 13:29:34', '1330556488_80.336.JPG', '1330556488_th_80.336.JPG', '1330556488_80.336.JPG'),
(132, 'product', 'Image for product: 16', '2012-03-08 13:29:34', '1330556505_80.336C.JPG', '1330556505_th_80.336C.JPG', '1330556505_80.336C.JPG'),
(133, 'product', 'Image for product: 17', '2012-03-08 13:29:34', '1330556608_80.781.JPG', '1330556608_th_80.781.JPG', '1330556608_80.781.JPG'),
(134, 'product', 'Image for product: 17', '2012-03-08 13:29:34', '1330556648_80.781C.JPG', '1330556648_th_80.781C.JPG', '1330556648_80.781C.JPG'),
(135, 'product', 'Image for product: ', '2012-03-08 13:29:34', '1330556776_80.776.JPG', '1330556776_th_80.776.JPG', '1330556776_80.776.JPG'),
(136, 'product', 'Image for product: ', '2012-03-08 13:29:34', '1330556786_80.776.JPG', '1330556786_th_80.776.JPG', '1330556786_80.776.JPG'),
(137, 'product', 'Image for product: ', '2012-03-08 13:29:34', '1330556803_80.776.JPG', '1330556803_th_80.776.JPG', '1330556803_80.776.JPG'),
(138, 'product', 'Image for product: ', '2012-03-08 13:29:34', '1330556823_80.799.JPG', '1330556823_th_80.799.JPG', '1330556823_80.799.JPG'),
(139, 'product', 'Image for product: 19', '2012-03-08 13:29:34', '1330556873_80.776.JPG', '1330556873_th_80.776.JPG', '1330556873_80.776.JPG'),
(140, 'product', 'Image for product: 20', '2012-03-08 13:29:34', '1330556930_80.777.JPG', '1330556930_th_80.777.JPG', '1330556930_80.777.JPG'),
(141, 'product', 'Image for product: 21', '2012-03-08 13:29:34', '1330557014_50.541.JPG', '1330557014_th_50.541.JPG', '1330557014_50.541.JPG'),
(142, 'product', 'Image for product: 21', '2012-03-08 13:29:34', '1330557027_80.541A.JPG', '1330557027_th_80.541A.JPG', '1330557027_80.541A.JPG'),
(143, 'product', 'Image for product: 21', '2012-03-08 13:29:34', '1330557041_80.541D.JPG', '1330557041_th_80.541D.JPG', '1330557041_80.541D.JPG'),
(144, 'product', 'Image for product: 22', '2012-03-08 13:29:34', '1330557143_80.546.JPG', '1330557143_th_80.546.JPG', '1330557143_80.546.JPG'),
(145, 'product', 'Image for product: 22', '2012-03-08 13:29:34', '1330557164_80.546A.JPG', '1330557164_th_80.546A.JPG', '1330557164_80.546A.JPG'),
(146, 'product', 'Image for product: 22', '2012-03-08 13:29:34', '1330557190_80.546D.JPG', '1330557190_th_80.546D.JPG', '1330557190_80.546D.JPG'),
(147, 'product', 'Image for product: 23', '2012-03-08 19:48:02', '1331236081_80.327 testeira 3.jpg', '1331236081_th_80.327 testeira 3.jpg', '1331236081_o_80.327 testeira 3.jpg'),
(148, 'product', 'Image for product: 24', '2012-03-08 19:49:29', '1331236168_80.007 bandana.JPG', '1331236168_th_80.007 bandana.JPG', '1331236168_o_80.007 bandana.JPG'),
(149, 'product', 'Image for product: 25', '2012-03-08 19:51:05', '1331236265_80.328 testeira 1.JPG', '1331236265_th_80.328 testeira 1.JPG', '1331236265_o_80.328 testeira 1.JPG'),
(150, 'product', 'Image for product: 26', '2012-03-08 19:56:50', '1331236610_80.464 testeira 2.JPG', '1331236610_th_80.464 testeira 2.JPG', '1331236610_o_80.464 testeira 2.JPG'),
(154, 'product', 'Image for product: 33', '2012-03-08 20:44:01', '1331239415_80.866  meia 1 a.jpg', '1331239415_th_80.866  meia 1 a.jpg', '1331239415_o_80.866  meia 1 a.jpg'),
(156, 'product', 'Image for product: 34', '2012-03-08 20:49:45', '1331239773_80.867 meia 3 a.JPG', '1331239773_th_80.867 meia 3 a.JPG', '1331239773_o_80.867 meia 3 a.JPG'),
(171, 'product', 'Image for product: 47', '2012-03-08 21:23:31', '1331241810_10.933 5 a.jpg', '1331241810_th_10.933 5 a.jpg', '1331241810_o_10.933 5 a.jpg'),
(172, 'product', 'Image for product: 47', '2012-03-08 21:23:57', '1331241836_10.933 5 b.jpg', '1331241836_th_10.933 5 b.jpg', '1331241836_o_10.933 5 b.jpg'),
(191, 'product', 'Image for product: 41', '2012-03-08 21:48:03', '1331243283_80.873 cinto 2.jpg', '1331243283_th_80.873 cinto 2.jpg', '1331243283_o_80.873 cinto 2.jpg'),
(192, 'product', 'Image for product: 40', '2012-03-08 21:48:41', '1331243321_80.873 cinto 1.jpg', '1331243321_th_80.873 cinto 1.jpg', '1331243321_o_80.873 cinto 1.jpg'),
(193, 'product', 'Image for product: 39', '2012-03-08 21:49:26', '1331243366_80.872 munhequeira 2.JPG', '1331243366_th_80.872 munhequeira 2.JPG', '1331243366_o_80.872 munhequeira 2.JPG'),
(194, 'product', 'Image for product: 38', '2012-03-08 21:50:06', '1331243405_80.871 munhequeira 1.JPG', '1331243405_th_80.871 munhequeira 1.JPG', '1331243405_o_80.871 munhequeira 1.JPG'),
(195, 'product', 'Image for product: 36', '2012-03-08 21:50:44', '1331243444_80.870 munhequeira 3.jpg', '1331243444_th_80.870 munhequeira 3.jpg', '1331243444_o_80.870 munhequeira 3.jpg'),
(196, 'product', 'Image for product: 35', '2012-03-08 21:52:35', '1331243555_80.868 meia 2 a.JPG', '1331243555_th_80.868 meia 2 a.JPG', '1331243555_o_80.868 meia 2 a.JPG'),
(197, 'product', 'Image for product: 34', '2012-03-08 21:53:09', '1331243589_80.867 meia 3 b.JPG', '1331243589_th_80.867 meia 3 b.JPG', '1331243589_o_80.867 meia 3 b.JPG'),
(198, 'product', 'Image for product: 33', '2012-03-08 21:54:24', '1331243664_80.866 meia 1 b.JPG', '1331243664_th_80.866 meia 1 b.JPG', '1331243664_o_80.866 meia 1 b.JPG'),
(200, 'product', 'Image for product: 28', '2012-03-08 21:57:27', '1331243846_80.863 carteia 1 a.jpg', '1331243846_th_80.863 carteia 1 a.jpg', '1331243846_o_80.863 carteia 1 a.jpg'),
(215, 'product', 'Image for product: 61', '2012-03-08 22:11:36', '1331244694_28.023 12 c.jpg', '1331244694_th_28.023 12 c.jpg', '1331244694_o_28.023 12 c.jpg'),
(216, 'product', 'Image for product: 61', '2012-03-08 22:12:00', '1331244720_28.023 12 d.jpg', '1331244720_th_28.023 12 d.jpg', '1331244720_o_28.023 12 d.jpg'),
(217, 'product', 'Image for product: 61', '2012-03-08 22:12:39', '1331244758_28.023 12 a.JPG', '1331244758_th_28.023 12 a.JPG', '1331244758_o_28.023 12 a.JPG'),
(218, 'product', 'Image for product: ', '2012-03-08 22:14:00', '1331244840_28.028  15 a.jpg', '1331244840_th_28.028  15 a.jpg', '1331244840_o_28.028  15 a.jpg'),
(219, 'product', 'Image for product: ', '2012-03-08 22:14:13', '1331244852_28.028  15 a.jpg', '1331244852_th_28.028  15 a.jpg', '1331244852_o_28.028  15 a.jpg'),
(220, 'product', 'Image for product: ', '2012-03-08 22:14:36', '1331244875_28.028  15 a.jpg', '1331244875_th_28.028  15 a.jpg', '1331244875_o_28.028  15 a.jpg'),
(224, 'product', 'Image for product: 64', '2012-03-08 22:17:20', '1331245040_80.852 5  frente.jpg', '1331245040_th_80.852 5  frente.jpg', '1331245040_o_80.852 5  frente.jpg'),
(225, 'product', 'Image for product: 64', '2012-03-08 22:17:37', '1331245056_80.852 5  esc.jpg', '1331245056_th_80.852 5  esc.jpg', '1331245056_o_80.852 5  esc.jpg'),
(226, 'product', 'Image for product: 64', '2012-03-08 22:17:53', '1331245073_80.852 5  direito.jpg', '1331245073_th_80.852 5  direito.jpg', '1331245073_o_80.852 5  direito.jpg'),
(227, 'product', 'Image for product: 65', '2012-03-08 22:18:49', '1331245128_80.854  frente.jpg', '1331245128_th_80.854  frente.jpg', '1331245128_o_80.854  frente.jpg'),
(228, 'product', 'Image for product: 65', '2012-03-08 22:19:08', '1331245148_80.854 4 costas.jpg', '1331245148_th_80.854 4 costas.jpg', '1331245148_o_80.854 4 costas.jpg'),
(229, 'product', 'Image for product: 65', '2012-03-08 22:20:54', '1331245254_80.854 4 direta.jpg', '1331245254_th_80.854 4 direta.jpg', '1331245254_o_80.854 4 direta.jpg'),
(230, 'product', 'Image for product: 65', '2012-03-08 22:21:38', '1331245298_80.854 4 esc.jpg', '1331245298_th_80.854 4 esc.jpg', '1331245298_o_80.854 4 esc.jpg'),
(231, 'product', 'Image for product: 66', '2012-03-08 22:22:32', '1331245352_80.875 2 frente.jpg', '1331245352_th_80.875 2 frente.jpg', '1331245352_o_80.875 2 frente.jpg'),
(232, 'product', 'Image for product: 66', '2012-03-08 22:22:53', '1331245372_80.875 2 perfil.jpg', '1331245372_th_80.875 2 perfil.jpg', '1331245372_o_80.875 2 perfil.jpg'),
(233, 'product', 'Image for product: 67', '2012-03-08 22:23:35', '1331245415_80.877 6  frente.jpg', '1331245415_th_80.877 6  frente.jpg', '1331245415_o_80.877 6  frente.jpg'),
(234, 'product', 'Image for product: 67', '2012-03-08 22:23:50', '1331245429_80.877 6  perfil.jpg', '1331245429_th_80.877 6  perfil.jpg', '1331245429_o_80.877 6  perfil.jpg'),
(235, 'product', 'Image for product: 68', '2012-03-08 22:24:27', '1331245466_80.878 1 frente.jpg', '1331245466_th_80.878 1 frente.jpg', '1331245466_o_80.878 1 frente.jpg'),
(236, 'product', 'Image for product: 68', '2012-03-08 22:24:42', '1331245482_80.878 1 perfil.jpg', '1331245482_th_80.878 1 perfil.jpg', '1331245482_o_80.878 1 perfil.jpg'),
(237, 'product', 'Image for product: 69', '2012-03-08 22:25:26', '1331245525_80.880 3  frente.jpg', '1331245525_th_80.880 3  frente.jpg', '1331245525_o_80.880 3  frente.jpg'),
(238, 'product', 'Image for product: 69', '2012-03-08 22:25:41', '1331245540_80.880 3  perfil.jpg', '1331245540_th_80.880 3  perfil.jpg', '1331245540_o_80.880 3  perfil.jpg'),
(239, 'product', 'Image for product: 70', '2012-03-08 22:27:00', '1331245617_80.880 7  frente.jpg', '1331245617_th_80.880 7  frente.jpg', '1331245617_o_80.880 7  frente.jpg'),
(240, 'product', 'Image for product: 70', '2012-03-08 22:27:57', '1331245674_80.880 7  perfil.jpg', '1331245674_th_80.880 7  perfil.jpg', '1331245674_o_80.880 7  perfil.jpg'),
(241, 'product', 'Image for product: 71', '2012-03-08 22:29:59', '1331245798_  .JPG', '1331245798_th_  .JPG', '1331245798_o_  .JPG'),
(242, 'product', 'Image for product: 71', '2012-03-08 22:30:24', '1331245823_50.273 3  b.jpg', '1331245823_th_50.273 3  b.jpg', '1331245823_o_50.273 3  b.jpg'),
(243, 'product', 'Image for product: 71', '2012-03-08 22:30:50', '1331245850_50.273 3  e.JPG', '1331245850_th_50.273 3  e.JPG', '1331245850_o_50.273 3  e.JPG'),
(244, 'product', 'Image for product: 71', '2012-03-08 22:31:21', '1331245880_50.273 3  d.JPG', '1331245880_th_50.273 3  d.JPG', '1331245880_o_50.273 3  d.JPG'),
(245, 'product', 'Image for product: 71', '2012-03-08 22:31:50', '1331245909_50.273 3  f.JPG', '1331245909_th_50.273 3  f.JPG', '1331245909_o_50.273 3  f.JPG'),
(246, 'product', 'Image for product: 74', '2012-03-09 01:28:49', '1331256528_carteiraA.jpg', '1331256528_th_carteiraA.jpg', '1331256528_o_carteiraA.jpg'),
(248, 'product', 'Image for product: 76', '2012-03-09 14:37:30', '1331303849_50.275 10 a.JPG', '1331303849_th_50.275 10 a.JPG', '1331303849_o_50.275 10 a.JPG'),
(249, 'product', 'Image for product: 76', '2012-03-09 14:37:55', '1331303874_50.275 10 b.jpg', '1331303874_th_50.275 10 b.jpg', '1331303874_o_50.275 10 b.jpg'),
(250, 'product', 'Image for product: 76', '2012-03-09 14:38:19', '1331303899_50.275 10 c.jpg', '1331303899_th_50.275 10 c.jpg', '1331303899_o_50.275 10 c.jpg'),
(251, 'product', 'Image for product: 76', '2012-03-09 14:40:47', '1331304046_50.275 10 d.JPG', '1331304046_th_50.275 10 d.JPG', '1331304046_o_50.275 10 d.JPG'),
(252, 'product', 'Image for product: 77', '2012-03-09 14:43:05', '1331304185_50.276 11 a.JPG', '1331304185_th_50.276 11 a.JPG', '1331304185_o_50.276 11 a.JPG'),
(253, 'product', 'Image for product: 77', '2012-03-09 14:44:31', '1331304271_50.276 11 b.JPG', '1331304271_th_50.276 11 b.JPG', '1331304271_o_50.276 11 b.JPG'),
(254, 'product', 'Image for product: 77', '2012-03-09 14:44:51', '1331304291_50.276 11 c.jpg', '1331304291_th_50.276 11 c.jpg', '1331304291_o_50.276 11 c.jpg'),
(255, 'product', 'Image for product: 77', '2012-03-09 14:46:51', '1331304410_50.276 11 d.JPG', '1331304410_th_50.276 11 d.JPG', '1331304410_o_50.276 11 d.JPG'),
(256, 'product', 'Image for product: 79', '2012-03-09 14:48:20', '1331304499_50.277 12 a.JPG', '1331304499_th_50.277 12 a.JPG', '1331304499_o_50.277 12 a.JPG'),
(257, 'product', 'Image for product: 79', '2012-03-09 14:49:36', '1331304576_50.277 12 b.jpg', '1331304576_th_50.277 12 b.jpg', '1331304576_o_50.277 12 b.jpg'),
(258, 'product', 'Image for product: 79', '2012-03-09 14:51:52', '1331304711_50.277 12 c.jpg', '1331304711_th_50.277 12 c.jpg', '1331304711_o_50.277 12 c.jpg'),
(259, 'product', 'Image for product: 79', '2012-03-09 14:53:51', '1331304831_50.277 12 e.JPG', '1331304831_th_50.277 12 e.JPG', '1331304831_o_50.277 12 e.JPG'),
(260, 'product', 'Image for product: 80', '2012-03-09 14:54:51', '1331304891_50.278 9  a.jpg', '1331304891_th_50.278 9  a.jpg', '1331304891_o_50.278 9  a.jpg'),
(261, 'product', 'Image for product: 80', '2012-03-09 14:55:20', '1331304920_50.278 9  b.JPG', '1331304920_th_50.278 9  b.JPG', '1331304920_o_50.278 9  b.JPG'),
(262, 'product', 'Image for product: 80', '2012-03-09 14:56:04', '1331304963_50.278 9  c.JPG', '1331304963_th_50.278 9  c.JPG', '1331304963_o_50.278 9  c.JPG'),
(263, 'product', 'Image for product: 80', '2012-03-09 14:56:53', '1331305013_50.278 9  f.JPG', '1331305013_th_50.278 9  f.JPG', '1331305013_o_50.278 9  f.JPG'),
(264, 'product', 'Image for product: 81', '2012-03-09 14:57:59', '1331305079_50.279 6 a.jpg', '1331305079_th_50.279 6 a.jpg', '1331305079_o_50.279 6 a.jpg'),
(265, 'product', 'Image for product: 81', '2012-03-09 14:58:21', '1331305101_50.279 6 b.JPG', '1331305101_th_50.279 6 b.JPG', '1331305101_o_50.279 6 b.JPG'),
(266, 'product', 'Image for product: 81', '2012-03-09 14:58:48', '1331305127_50.279 6 c.JPG', '1331305127_th_50.279 6 c.JPG', '1331305127_o_50.279 6 c.JPG'),
(267, 'product', 'Image for product: 81', '2012-03-09 14:59:17', '1331305157_50.279 6 d.JPG', '1331305157_th_50.279 6 d.JPG', '1331305157_o_50.279 6 d.JPG'),
(268, 'product', 'Image for product: 82', '2012-03-09 15:00:25', '1331305225_50.280 2  a.JPG', '1331305225_th_50.280 2  a.JPG', '1331305225_o_50.280 2  a.JPG'),
(269, 'product', 'Image for product: 82', '2012-03-09 15:00:50', '1331305250_50.280 2  b.jpg', '1331305250_th_50.280 2  b.jpg', '1331305250_o_50.280 2  b.jpg'),
(270, 'product', 'Image for product: 82', '2012-03-09 15:01:21', '1331305281_50.280 2  d.JPG', '1331305281_th_50.280 2  d.JPG', '1331305281_o_50.280 2  d.JPG'),
(271, 'product', 'Image for product: 82', '2012-03-09 15:01:55', '1331305315_50.280 2  c.jpg', '1331305315_th_50.280 2  c.jpg', '1331305315_o_50.280 2  c.jpg'),
(272, 'product', 'Image for product: 83', '2012-03-09 15:02:50', '1331305370_50.281 7 a.JPG', '1331305370_th_50.281 7 a.JPG', '1331305370_o_50.281 7 a.JPG'),
(273, 'product', 'Image for product: 83', '2012-03-09 15:03:29', '1331305408_50.281 7 b.JPG', '1331305408_th_50.281 7 b.JPG', '1331305408_o_50.281 7 b.JPG'),
(274, 'product', 'Image for product: 83', '2012-03-09 15:03:53', '1331305433_50.281 7 d.JPG', '1331305433_th_50.281 7 d.JPG', '1331305433_o_50.281 7 d.JPG'),
(275, 'product', 'Image for product: 83', '2012-03-09 15:04:17', '1331305457_50.281 7 c.jpg', '1331305457_th_50.281 7 c.jpg', '1331305457_o_50.281 7 c.jpg'),
(276, 'product', 'Image for product: ', '2012-03-09 15:05:47', '1331305546_50.282 8 a.JPG', '1331305546_th_50.282 8 a.JPG', '1331305546_o_50.282 8 a.JPG'),
(277, 'product', 'Image for product: 87', '2012-03-09 15:09:52', '1331305791_50.282 8 a.JPG', '1331305791_th_50.282 8 a.JPG', '1331305791_o_50.282 8 a.JPG'),
(278, 'product', 'Image for product: 87', '2012-03-09 15:10:23', '1331305822_50.282 8 b.JPG', '1331305822_th_50.282 8 b.JPG', '1331305822_o_50.282 8 b.JPG'),
(279, 'product', 'Image for product: 87', '2012-03-09 15:11:07', '1331305867_50.282  8 d.JPG', '1331305867_th_50.282  8 d.JPG', '1331305867_o_50.282  8 d.JPG'),
(280, 'product', 'Image for product: 87', '2012-03-09 15:11:48', '1331305907_50.282 8 c.jpg', '1331305907_th_50.282 8 c.jpg', '1331305907_o_50.282 8 c.jpg'),
(281, 'product', 'Image for product: 88', '2012-03-09 15:12:59', '1331305979_50.283 5 a.JPG', '1331305979_th_50.283 5 a.JPG', '1331305979_o_50.283 5 a.JPG'),
(282, 'product', 'Image for product: 88', '2012-03-09 15:13:48', '1331306027_50.283 5 b.jpg', '1331306027_th_50.283 5 b.jpg', '1331306027_o_50.283 5 b.jpg'),
(283, 'product', 'Image for product: 88', '2012-03-09 15:14:24', '1331306064_50.283 5 c.jpg', '1331306064_th_50.283 5 c.jpg', '1331306064_o_50.283 5 c.jpg'),
(284, 'product', 'Image for product: 89', '2012-03-09 15:15:37', '1331306136_50.287 1 a.jpg', '1331306136_th_50.287 1 a.jpg', '1331306136_o_50.287 1 a.jpg'),
(285, 'product', 'Image for product: 89', '2012-03-09 15:16:06', '1331306165_50.287 1 b.jpg', '1331306165_th_50.287 1 b.jpg', '1331306165_o_50.287 1 b.jpg'),
(286, 'product', 'Image for product: 89', '2012-03-09 15:16:43', '1331306203_50.287 1 c.JPG', '1331306203_th_50.287 1 c.JPG', '1331306203_o_50.287 1 c.JPG'),
(287, 'product', 'Image for product: 89', '2012-03-09 15:18:36', '1331306315_50.287 1 e.jpg', '1331306315_th_50.287 1 e.jpg', '1331306315_o_50.287 1 e.jpg'),
(288, 'product', 'Image for product: 90', '2012-03-09 15:20:08', '1331306408_50.288 4 a.JPG', '1331306408_th_50.288 4 a.JPG', '1331306408_o_50.288 4 a.JPG'),
(289, 'product', 'Image for product: 90', '2012-03-09 15:20:39', '1331306438_50.288 4 b.jpg', '1331306438_th_50.288 4 b.jpg', '1331306438_o_50.288 4 b.jpg'),
(290, 'product', 'Image for product: 90', '2012-03-09 15:21:13', '1331306472_50.288 4 d.JPG', '1331306472_th_50.288 4 d.JPG', '1331306472_o_50.288 4 d.JPG'),
(291, 'product', 'Image for product: 90', '2012-03-09 15:21:48', '1331306508_50.288 4 e.jpg', '1331306508_th_50.288 4 e.jpg', '1331306508_o_50.288 4 e.jpg'),
(292, 'product', 'Image for product: 91', '2012-03-09 15:56:05', '1331308564_30.353 helanca 16 a.jpg', '1331308564_th_30.353 helanca 16 a.jpg', '1331308564_o_30.353 helanca 16 a.jpg'),
(293, 'product', 'Image for product: 91', '2012-03-09 15:56:25', '1331308584_30.353 helanca 16 b.JPG', '1331308584_th_30.353 helanca 16 b.JPG', '1331308584_o_30.353 helanca 16 b.JPG'),
(294, 'product', 'Image for product: 91', '2012-03-09 15:56:49', '1331308608_30.353 helanca 16 c.jpg', '1331308608_th_30.353 helanca 16 c.jpg', '1331308608_o_30.353 helanca 16 c.jpg'),
(297, 'product', 'Image for product: 92', '2012-03-09 15:59:08', '1331308747_30.358 RELAXED 11 a.JPG', '1331308747_th_30.358 RELAXED 11 a.JPG', '1331308747_o_30.358 RELAXED 11 a.JPG'),
(298, 'product', 'Image for product: 92', '2012-03-09 15:59:27', '1331308766_30.358 RELAXED 11 b.jpg', '1331308766_th_30.358 RELAXED 11 b.jpg', '1331308766_o_30.358 RELAXED 11 b.jpg'),
(299, 'product', 'Image for product: 92', '2012-03-09 15:59:47', '1331308787_30.358 RELAXED 11 c.jpg', '1331308787_th_30.358 RELAXED 11 c.jpg', '1331308787_o_30.358 RELAXED 11 c.jpg'),
(300, 'product', 'Image for product: 92', '2012-03-09 16:00:10', '1331308809_30.358 RELAXED 11 d.JPG', '1331308809_th_30.358 RELAXED 11 d.JPG', '1331308809_o_30.358 RELAXED 11 d.JPG'),
(301, 'product', 'Image for product: 92', '2012-03-09 16:00:48', '1331308847_30.358 RELAXED 11 e.JPG', '1331308847_th_30.358 RELAXED 11 e.JPG', '1331308847_o_30.358 RELAXED 11 e.JPG'),
(302, 'product', 'Image for product: 93', '2012-03-09 16:02:55', '1331308973_30.359 OVER SIZE 8 a.JPG', '1331308973_th_30.359 OVER SIZE 8 a.JPG', '1331308973_o_30.359 OVER SIZE 8 a.JPG'),
(303, 'product', 'Image for product: 93', '2012-03-09 16:03:34', '1331309013_30.359 OVER SIZE 8 b.JPG', '1331309013_th_30.359 OVER SIZE 8 b.JPG', '1331309013_o_30.359 OVER SIZE 8 b.JPG'),
(304, 'product', 'Image for product: 93', '2012-03-09 16:04:22', '1331309061_30.359 OVER SIZE 8 c.jpg', '1331309061_th_30.359 OVER SIZE 8 c.jpg', '1331309061_o_30.359 OVER SIZE 8 c.jpg'),
(305, 'product', 'Image for product: 93', '2012-03-09 16:05:02', '1331309101_30.359 OVER SIZE 8 d.jpg', '1331309101_th_30.359 OVER SIZE 8 d.jpg', '1331309101_o_30.359 OVER SIZE 8 d.jpg'),
(306, 'product', 'Image for product: 94', '2012-03-09 16:06:07', '1331309166_30.360 OVER SIZE  6 a.JPG', '1331309166_th_30.360 OVER SIZE  6 a.JPG', '1331309166_o_30.360 OVER SIZE  6 a.JPG'),
(307, 'product', 'Image for product: 94', '2012-03-09 16:07:19', '1331309239_30.360 OVER SIZE 6 b.jpg', '1331309239_th_30.360 OVER SIZE 6 b.jpg', '1331309239_o_30.360 OVER SIZE 6 b.jpg'),
(308, 'product', 'Image for product: 94', '2012-03-09 16:07:38', '1331309258_30.360 OVER SIZE 6 c.JPG', '1331309258_th_30.360 OVER SIZE 6 c.JPG', '1331309258_o_30.360 OVER SIZE 6 c.JPG'),
(309, 'product', 'Image for product: 94', '2012-03-09 16:08:07', '1331309286_30.360 OVER SIZE 6 d.JPG', '1331309286_th_30.360 OVER SIZE 6 d.JPG', '1331309286_o_30.360 OVER SIZE 6 d.JPG'),
(310, 'product', 'Image for product: 95', '2012-03-09 16:09:07', '1331309346_30.362 3 a.JPG', '1331309346_th_30.362 3 a.JPG', '1331309346_o_30.362 3 a.JPG'),
(311, 'product', 'Image for product: 95', '2012-03-09 16:09:29', '1331309368_30.362 3 b.jpg', '1331309368_th_30.362 3 b.jpg', '1331309368_o_30.362 3 b.jpg'),
(312, 'product', 'Image for product: 95', '2012-03-09 16:09:47', '1331309386_30.362 3 c.jpg', '1331309386_th_30.362 3 c.jpg', '1331309386_o_30.362 3 c.jpg'),
(313, 'product', 'Image for product: 96', '2012-03-09 16:10:37', '1331309437_30.363 1 a.JPG', '1331309437_th_30.363 1 a.JPG', '1331309437_o_30.363 1 a.JPG'),
(314, 'product', 'Image for product: 96', '2012-03-09 16:12:06', '1331309526_30.363 1 b.JPG', '1331309526_th_30.363 1 b.JPG', '1331309526_o_30.363 1 b.JPG'),
(315, 'product', 'Image for product: 96', '2012-03-09 16:12:25', '1331309544_30.363 1 c.JPG', '1331309544_th_30.363 1 c.JPG', '1331309544_o_30.363 1 c.JPG'),
(316, 'product', 'Image for product: 97', '2012-03-09 16:13:46', '1331309625_30.364 4 a.JPG', '1331309625_th_30.364 4 a.JPG', '1331309625_o_30.364 4 a.JPG'),
(317, 'product', 'Image for product: 97', '2012-03-09 16:14:23', '1331309662_30.364 4 b.jpg', '1331309662_th_30.364 4 b.jpg', '1331309662_o_30.364 4 b.jpg'),
(318, 'product', 'Image for product: 97', '2012-03-09 16:14:47', '1331309686_30.364 4 d.JPG', '1331309686_th_30.364 4 d.JPG', '1331309686_o_30.364 4 d.JPG'),
(319, 'product', 'Image for product: 98', '2012-03-09 16:15:43', '1331309743_30.365 2 a.jpg', '1331309743_th_30.365 2 a.jpg', '1331309743_o_30.365 2 a.jpg'),
(320, 'product', 'Image for product: 98', '2012-03-09 16:16:29', '1331309788_30.365 2 b.JPG', '1331309788_th_30.365 2 b.JPG', '1331309788_o_30.365 2 b.JPG'),
(321, 'product', 'Image for product: 98', '2012-03-09 16:16:46', '1331309805_30.365 2 c.jpg', '1331309805_th_30.365 2 c.jpg', '1331309805_o_30.365 2 c.jpg'),
(322, 'product', 'Image for product: 99', '2012-03-09 16:18:11', '1331309890_30.366 OVER SIZE 5 a.JPG', '1331309890_th_30.366 OVER SIZE 5 a.JPG', '1331309890_o_30.366 OVER SIZE 5 a.JPG'),
(323, 'product', 'Image for product: 99', '2012-03-09 16:18:34', '1331309914_30.366 OVER SIZE  5 b.jpg', '1331309914_th_30.366 OVER SIZE  5 b.jpg', '1331309914_o_30.366 OVER SIZE  5 b.jpg'),
(324, 'product', 'Image for product: 99', '2012-03-09 16:19:43', '1331309982_30.366 OVER SIZE  5 c.jpg', '1331309982_th_30.366 OVER SIZE  5 c.jpg', '1331309982_o_30.366 OVER SIZE  5 c.jpg'),
(325, 'product', 'Image for product: 99', '2012-03-09 16:20:35', '1331310034_30.366 OVER SIZE  5 d.jpg', '1331310034_th_30.366 OVER SIZE  5 d.jpg', '1331310034_o_30.366 OVER SIZE  5 d.jpg'),
(326, 'product', 'Image for product: 100', '2012-03-09 16:21:38', '1331310097_30.367 RELAXED 7 a.JPG', '1331310097_th_30.367 RELAXED 7 a.JPG', '1331310097_o_30.367 RELAXED 7 a.JPG'),
(327, 'product', 'Image for product: 100', '2012-03-09 16:22:22', '1331310141_30.367 RELAXED 7 b.jpg', '1331310141_th_30.367 RELAXED 7 b.jpg', '1331310141_o_30.367 RELAXED 7 b.jpg'),
(328, 'product', 'Image for product: 100', '2012-03-09 16:22:44', '1331310164_30.367 RELAXED 7 c.JPG', '1331310164_th_30.367 RELAXED 7 c.JPG', '1331310164_o_30.367 RELAXED 7 c.JPG'),
(329, 'product', 'Image for product: 100', '2012-03-09 16:23:09', '1331310188_30.367 RELAXED 7 d.jpg', '1331310188_th_30.367 RELAXED 7 d.jpg', '1331310188_o_30.367 RELAXED 7 d.jpg'),
(330, 'product', 'Image for product: 101', '2012-03-09 16:24:09', '1331310249_30.368 BASICA 10 a.JPG', '1331310249_th_30.368 BASICA 10 a.JPG', '1331310249_o_30.368 BASICA 10 a.JPG'),
(331, 'product', 'Image for product: 101', '2012-03-09 16:24:38', '1331310277_30.368 BASICA 10 b.jpg', '1331310277_th_30.368 BASICA 10 b.jpg', '1331310277_o_30.368 BASICA 10 b.jpg'),
(332, 'product', 'Image for product: 101', '2012-03-09 16:25:12', '1331310311_30.368 BASICA 10 c.jpg', '1331310311_th_30.368 BASICA 10 c.jpg', '1331310311_o_30.368 BASICA 10 c.jpg'),
(333, 'product', 'Image for product: 101', '2012-03-09 16:25:41', '1331310341_30.368 BASICA 10 d.JPG', '1331310341_th_30.368 BASICA 10 d.JPG', '1331310341_o_30.368 BASICA 10 d.JPG'),
(334, 'product', 'Image for product: 102', '2012-03-09 16:27:04', '1331310421_30.369 OVER SIZE 12 a.JPG', '1331310421_th_30.369 OVER SIZE 12 a.JPG', '1331310421_o_30.369 OVER SIZE 12 a.JPG'),
(335, 'product', 'Image for product: 102', '2012-03-09 16:27:29', '1331310448_30.369 OVER SIZ 12 b.JPG', '1331310448_th_30.369 OVER SIZ 12 b.JPG', '1331310448_o_30.369 OVER SIZ 12 b.JPG'),
(336, 'product', 'Image for product: 102', '2012-03-09 16:27:57', '1331310475_30.369 OVER SIZ 12 c.JPG', '1331310475_th_30.369 OVER SIZ 12 c.JPG', '1331310475_o_30.369 OVER SIZ 12 c.JPG'),
(337, 'product', 'Image for product: 102', '2012-03-09 16:28:33', '1331310512_30.369 OVER SIZ 12 d.JPG', '1331310512_th_30.369 OVER SIZ 12 d.JPG', '1331310512_o_30.369 OVER SIZ 12 d.JPG'),
(338, 'product', 'Image for product: 103', '2012-03-09 16:29:57', '1331310596_30.371 OVER SIZE  9 a.JPG', '1331310596_th_30.371 OVER SIZE  9 a.JPG', '1331310596_o_30.371 OVER SIZE  9 a.JPG'),
(339, 'product', 'Image for product: 103', '2012-03-09 16:30:37', '1331310637_30.371 OVER SIZE 9 b.JPG', '1331310637_th_30.371 OVER SIZE 9 b.JPG', '1331310637_o_30.371 OVER SIZE 9 b.JPG'),
(340, 'product', 'Image for product: 103', '2012-03-09 16:31:08', '1331310667_30.371 OVER SIZE 9 c.JPG', '1331310667_th_30.371 OVER SIZE 9 c.JPG', '1331310667_o_30.371 OVER SIZE 9 c.JPG'),
(341, 'product', 'Image for product: 103', '2012-03-09 16:31:35', '1331310695_30.371 OVER SIZE 9 d.JPG', '1331310695_th_30.371 OVER SIZE 9 d.JPG', '1331310695_o_30.371 OVER SIZE 9 d.JPG'),
(342, 'product', 'Image for product: 104', '2012-03-09 16:32:40', '1331310759_30.374 helanca 15 a.JPG', '1331310759_th_30.374 helanca 15 a.JPG', '1331310759_o_30.374 helanca 15 a.JPG'),
(343, 'product', 'Image for product: 104', '2012-03-09 16:36:29', '1331310988_30.374 helanca 15 b.JPG', '1331310988_th_30.374 helanca 15 b.JPG', '1331310988_o_30.374 helanca 15 b.JPG'),
(344, 'product', 'Image for product: 104', '2012-03-09 16:36:49', '1331311008_30.374 helanca 15 c.JPG', '1331311008_th_30.374 helanca 15 c.JPG', '1331311008_o_30.374 helanca 15 c.JPG'),
(345, 'product', 'Image for product: 105', '2012-03-09 17:30:44', '1331314243_40.340 BERMA 3 A.JPG', '1331314243_th_40.340 BERMA 3 A.JPG', '1331314243_o_40.340 BERMA 3 A.JPG'),
(346, 'product', 'Image for product: 105', '2012-03-09 17:31:06', '1331314266_40.340 BERMA 3 B.jpg', '1331314266_th_40.340 BERMA 3 B.jpg', '1331314266_o_40.340 BERMA 3 B.jpg'),
(347, 'product', 'Image for product: 105', '2012-03-09 17:36:30', '1331314589_40.340 BERMA 3 C.JPG', '1331314589_th_40.340 BERMA 3 C.JPG', '1331314589_o_40.340 BERMA 3 C.JPG'),
(348, 'product', 'Image for product: 105', '2012-03-09 17:37:02', '1331314621_40.340 BERMA 3 D.JPG', '1331314621_th_40.340 BERMA 3 D.JPG', '1331314621_o_40.340 BERMA 3 D.JPG'),
(349, 'product', 'Image for product: ', '2012-03-09 17:37:58', '1331314677_40.344 BERMA 2 A.JPG', '1331314677_th_40.344 BERMA 2 A.JPG', '1331314677_o_40.344 BERMA 2 A.JPG'),
(350, 'product', 'Image for product: ', '2012-03-09 17:38:27', '1331314706_40.344 BERMA 2 A.JPG', '1331314706_th_40.344 BERMA 2 A.JPG', '1331314706_o_40.344 BERMA 2 A.JPG'),
(351, 'product', 'Image for product: ', '2012-03-09 17:39:00', '1331314739_40.344 BERMA 2 A.JPG', '1331314739_th_40.344 BERMA 2 A.JPG', '1331314739_o_40.344 BERMA 2 A.JPG'),
(352, 'product', 'Image for product: ', '2012-03-09 17:39:43', '1331314782_40.344 BERMA 2 A.JPG', '1331314782_th_40.344 BERMA 2 A.JPG', '1331314782_o_40.344 BERMA 2 A.JPG'),
(353, 'product', 'Image for product: 109', '2012-03-09 17:41:11', '1331314871_40.344 BERMA 2 A.JPG', '1331314871_th_40.344 BERMA 2 A.JPG', '1331314871_o_40.344 BERMA 2 A.JPG'),
(354, 'product', 'Image for product: 109', '2012-03-09 17:41:32', '1331314891_40.344 BERMA 2 B.JPG', '1331314891_th_40.344 BERMA 2 B.JPG', '1331314891_o_40.344 BERMA 2 B.JPG'),
(355, 'product', 'Image for product: 109', '2012-03-09 17:41:56', '1331314915_40.344 BERMA 2 C.JPG', '1331314915_th_40.344 BERMA 2 C.JPG', '1331314915_o_40.344 BERMA 2 C.JPG'),
(356, 'product', 'Image for product: 109', '2012-03-09 17:42:29', '1331314948_40.344 BERMA 2 D.JPG', '1331314948_th_40.344 BERMA 2 D.JPG', '1331314948_o_40.344 BERMA 2 D.JPG'),
(357, 'product', 'Image for product: 110', '2012-03-09 17:44:25', '1331315065_40.345 BERMA 4 A.JPG', '1331315065_th_40.345 BERMA 4 A.JPG', '1331315065_o_40.345 BERMA 4 A.JPG'),
(358, 'product', 'Image for product: 110', '2012-03-09 17:44:50', '1331315089_40.345 BERMA 4 B.JPG', '1331315089_th_40.345 BERMA 4 B.JPG', '1331315089_o_40.345 BERMA 4 B.JPG'),
(359, 'product', 'Image for product: 110', '2012-03-09 17:45:16', '1331315116_40.345 BERMA 4 C.JPG', '1331315116_th_40.345 BERMA 4 C.JPG', '1331315116_o_40.345 BERMA 4 C.JPG'),
(360, 'product', 'Image for product: 110', '2012-03-09 17:45:34', '1331315134_40.345 BERMA 4 D.JPG', '1331315134_th_40.345 BERMA 4 D.JPG', '1331315134_o_40.345 BERMA 4 D.JPG'),
(361, 'product', 'Image for product: 43', '2012-03-09 17:47:34', '1331315254_10.904 10 a.JPG', '1331315254_th_10.904 10 a.JPG', '1331315254_o_10.904 10 a.JPG'),
(362, 'product', 'Image for product: 43', '2012-03-09 17:48:14', '1331315294_10.904 10 b.jpg', '1331315294_th_10.904 10 b.jpg', '1331315294_o_10.904 10 b.jpg'),
(363, 'product', 'Image for product: 44', '2012-03-09 17:49:08', '1331315347_10.910 11 a.JPG', '1331315347_th_10.910 11 a.JPG', '1331315347_o_10.910 11 a.JPG'),
(364, 'product', 'Image for product: 44', '2012-03-09 17:49:21', '1331315360_10.910 11 b.jpg', '1331315360_th_10.910 11 b.jpg', '1331315360_o_10.910 11 b.jpg'),
(365, 'product', 'Image for product: 46', '2012-03-09 17:49:55', '1331315395_10.917 7 a.JPG', '1331315395_th_10.917 7 a.JPG', '1331315395_o_10.917 7 a.JPG'),
(366, 'product', 'Image for product: 46', '2012-03-09 17:50:13', '1331315412_10.917 7 b.JPG', '1331315412_th_10.917 7 b.JPG', '1331315412_o_10.917 7 b.JPG'),
(367, 'product', 'Image for product: 48', '2012-03-09 17:52:07', '1331315524_10.948 9 a.JPG', '1331315524_th_10.948 9 a.JPG', '1331315524_o_10.948 9 a.JPG'),
(368, 'product', 'Image for product: 48', '2012-03-09 17:52:33', '1331315552_10.948 9 b.JPG', '1331315552_th_10.948 9 b.JPG', '1331315552_o_10.948 9 b.JPG'),
(369, 'product', 'Image for product: 49', '2012-03-09 17:53:35', '1331315615_10.976 3 a.JPG', '1331315615_th_10.976 3 a.JPG', '1331315615_o_10.976 3 a.JPG'),
(370, 'product', 'Image for product: 49', '2012-03-09 17:54:21', '1331315661_10.976 3 b.jpg', '1331315661_th_10.976 3 b.jpg', '1331315661_o_10.976 3 b.jpg'),
(371, 'product', 'Image for product: 51', '2012-03-09 17:55:05', '1331315704_10.979 4 a.JPG', '1331315704_th_10.979 4 a.JPG', '1331315704_o_10.979 4 a.JPG'),
(372, 'product', 'Image for product: 51', '2012-03-09 17:55:42', '1331315742_10.979 4 b.jpg', '1331315742_th_10.979 4 b.jpg', '1331315742_o_10.979 4 b.jpg'),
(373, 'product', 'Image for product: 52', '2012-03-09 17:57:08', '1331315828_10.997 6 a.JPG', '1331315828_th_10.997 6 a.JPG', '1331315828_o_10.997 6 a.JPG'),
(374, 'product', 'Image for product: 52', '2012-03-09 17:57:37', '1331315856_10.997 6 b.JPG', '1331315856_th_10.997 6 b.JPG', '1331315856_o_10.997 6 b.JPG'),
(375, 'product', 'Image for product: 53', '2012-03-09 17:59:14', '1331315953_11.008 8 a.jpg', '1331315953_th_11.008 8 a.jpg', '1331315953_o_11.008 8 a.jpg'),
(376, 'product', 'Image for product: 53', '2012-03-09 17:59:32', '1331315971_11.008 8 b.JPG', '1331315971_th_11.008 8 b.JPG', '1331315971_o_11.008 8 b.JPG'),
(377, 'product', 'Image for product: 54', '2012-03-09 18:00:19', '1331316018_11.012 1 a (1).JPG', '1331316018_th_11.012 1 a (1).JPG', '1331316018_o_11.012 1 a (1).JPG'),
(378, 'product', 'Image for product: 54', '2012-03-09 18:00:46', '1331316046_11.012 1 b.JPG', '1331316046_th_11.012 1 b.JPG', '1331316046_o_11.012 1 b.JPG'),
(379, 'product', 'Image for product: 56', '2012-03-09 18:01:33', '1331316091_11.018 2 a.JPG', '1331316091_th_11.018 2 a.JPG', '1331316091_o_11.018 2 a.JPG'),
(380, 'product', 'Image for product: 56', '2012-03-09 18:02:56', '1331316160_11.018 2 b.JPG', '1331316160_th_11.018 2 b.JPG', '1331316160_o_11.018 2 b.JPG'),
(381, 'product', 'Image for product: 57', '2012-03-09 18:03:33', '1331316213_11.023 camiseta 16 a.JPG', '1331316213_th_11.023 camiseta 16 a.JPG', '1331316213_o_11.023 camiseta 16 a.JPG'),
(382, 'product', 'Image for product: 57', '2012-03-09 18:03:58', '1331316237_11.023 camiseta 16 b.JPG', '1331316237_th_11.023 camiseta 16 b.JPG', '1331316237_o_11.023 camiseta 16 b.JPG'),
(383, 'product', 'Image for product: 58', '2012-03-09 18:05:04', '1331316302_11.024 camiseta 17 a.JPG', '1331316302_th_11.024 camiseta 17 a.JPG', '1331316302_o_11.024 camiseta 17 a.JPG'),
(384, 'product', 'Image for product: 58', '2012-03-09 18:05:28', '1331316327_11.024 camiseta 17 b.jpg', '1331316327_th_11.024 camiseta 17 b.jpg', '1331316327_o_11.024 camiseta 17 b.jpg'),
(385, 'product', 'Image for product: 59', '2012-03-09 18:06:13', '1331316373_28.020 14 a.JPG', '1331316373_th_28.020 14 a.JPG', '1331316373_o_28.020 14 a.JPG'),
(386, 'product', 'Image for product: 59', '2012-03-09 18:06:36', '1331316395_28.020  14 b.JPG', '1331316395_th_28.020  14 b.JPG', '1331316395_o_28.020  14 b.JPG'),
(387, 'product', 'Image for product: 59', '2012-03-09 18:06:56', '1331316416_28.020  14 c.jpg', '1331316416_th_28.020  14 c.jpg', '1331316416_o_28.020  14 c.jpg'),
(388, 'product', 'Image for product: 60', '2012-03-09 18:07:44', '1331316463_28.021 13 a.jpg', '1331316463_th_28.021 13 a.jpg', '1331316463_o_28.021 13 a.jpg'),
(389, 'product', 'Image for product: 60', '2012-03-09 18:08:01', '1331316481_28.021 13 b.jpg', '1331316481_th_28.021 13 b.jpg', '1331316481_o_28.021 13 b.jpg'),
(390, 'product', 'Image for product: 61', '2012-03-09 18:09:03', '1331316543_28.023 12 b.jpg', '1331316543_th_28.023 12 b.jpg', '1331316543_o_28.023 12 b.jpg'),
(391, 'product', 'Image for product: 113', '2012-03-09 18:11:56', '1331316716_10.933 5 a.jpg', '1331316716_th_10.933 5 a.jpg', '1331316716_o_10.933 5 a.jpg'),
(392, 'product', 'Image for product: 113', '2012-03-09 18:12:34', '1331316754_10.933 5 b.jpg', '1331316754_th_10.933 5 b.jpg', '1331316754_o_10.933 5 b.jpg'),
(393, 'product', 'Image for product: 63', '2012-03-09 18:13:25', '1331316804_28.028  15 a.jpg', '1331316804_th_28.028  15 a.jpg', '1331316804_o_28.028  15 a.jpg'),
(394, 'product', 'Image for product: 63', '2012-03-09 18:13:45', '1331316825_28.028 15 b.JPG', '1331316825_th_28.028 15 b.JPG', '1331316825_o_28.028 15 b.JPG'),
(395, 'product', 'Image for product: 63', '2012-03-09 18:14:04', '1331316843_28.028 15 c.jpg', '1331316843_th_28.028 15 c.jpg', '1331316843_o_28.028 15 c.jpg'),
(396, 'product', 'Image for product: 118', '2012-03-12 14:04:03', '1331561042_80.864 carteia 1 a.JPG', '1331561042_th_80.864 carteia 1 a.JPG', '1331561042_o_80.864 carteia 1 a.JPG'),
(397, 'product', 'Image for product: 118', '2012-03-12 14:10:18', '1331561417_80.864 carteia 1 c.JPG', '1331561417_th_80.864 carteia 1 c.JPG', '1331561417_o_80.864 carteia 1 c.JPG'),
(398, 'product', 'Image for product: 28', '2012-03-12 14:14:05', '1331561645_80.864 carteia 1 c.JPG', '1331561645_th_80.864 carteia 1 c.JPG', '1331561645_o_80.864 carteia 1 c.JPG'),
(399, 'product', 'Image for product: 120', '2012-03-12 14:18:32', '1331561911_80.865 carteia 1 a.JPG', '1331561911_th_80.865 carteia 1 a.JPG', '1331561911_o_80.865 carteia 1 a.JPG'),
(400, 'product', 'Image for product: 120', '2012-03-12 14:23:59', '1331562239_80.864 carteia 1 c.JPG', '1331562239_th_80.864 carteia 1 c.JPG', '1331562239_o_80.864 carteia 1 c.JPG'),
(401, 'product', 'Image for product: 121', '2012-03-12 18:36:37', '1331577396_40.307 BERMA 1 A.JPG', '1331577396_th_40.307 BERMA 1 A.JPG', '1331577396_o_40.307 BERMA 1 A.JPG'),
(402, 'product', 'Image for product: 121', '2012-03-12 18:37:12', '1331577431_40.307 BERMA 1 B.JPG', '1331577431_th_40.307 BERMA 1 B.JPG', '1331577431_o_40.307 BERMA 1 B.JPG'),
(403, 'product', 'Image for product: 121', '2012-03-12 18:37:34', '1331577453_40.307 BERMA 1 C.JPG', '1331577453_th_40.307 BERMA 1 C.JPG', '1331577453_o_40.307 BERMA 1 C.JPG'),
(404, 'product', 'Image for product: 121', '2012-03-12 18:37:53', '1331577472_40.307 BERMA 1 D.jpg', '1331577472_th_40.307 BERMA 1 D.jpg', '1331577472_o_40.307 BERMA 1 D.jpg'),
(405, 'product', 'Image for product: 122', '2012-03-12 18:39:13', '1331577552_40.346 berma 5 a.JPG', '1331577552_th_40.346 berma 5 a.JPG', '1331577552_o_40.346 berma 5 a.JPG'),
(406, 'product', 'Image for product: 122', '2012-03-12 18:39:31', '1331577571_40.346 berma 5 b.jpg', '1331577571_th_40.346 berma 5 b.jpg', '1331577571_o_40.346 berma 5 b.jpg'),
(407, 'product', 'Image for product: 122', '2012-03-12 18:39:56', '1331577595_40.346 berma 5 c.JPG', '1331577595_th_40.346 berma 5 c.JPG', '1331577595_o_40.346 berma 5 c.JPG'),
(408, 'product', 'Image for product: 122', '2012-03-12 18:40:22', '1331577620_berma 5 d.JPG', '1331577620_th_berma 5 d.JPG', '1331577620_o_berma 5 d.JPG'),
(409, 'product', 'Image for product: 123', '2012-03-12 18:42:03', '1331577723_50.286 elanka 1 a.JPG', '1331577723_th_50.286 elanka 1 a.JPG', '1331577723_o_50.286 elanka 1 a.JPG'),
(410, 'product', 'Image for product: 123', '2012-03-12 18:42:22', '1331577742_50.286  elanka 1 b.JPG', '1331577742_th_50.286  elanka 1 b.JPG', '1331577742_o_50.286  elanka 1 b.JPG'),
(411, 'product', 'Image for product: 123', '2012-03-12 18:42:47', '1331577767_50.286  elanka 1 c.JPG', '1331577767_th_50.286  elanka 1 c.JPG', '1331577767_o_50.286  elanka 1 c.JPG'),
(412, 'product', 'Image for product: 123', '2012-03-12 18:43:08', '1331577787_50.286  elanka 1 d.JPG', '1331577787_th_50.286  elanka 1 d.JPG', '1331577787_o_50.286  elanka 1 d.JPG'),
(413, 'product', 'Image for product: 124', '2012-03-12 18:45:04', '1331577903_30.370 jeans 15 a.JPG', '1331577903_th_30.370 jeans 15 a.JPG', '1331577903_o_30.370 jeans 15 a.JPG'),
(414, 'product', 'Image for product: 124', '2012-03-12 18:45:37', '1331577937_30.370 jeans 15 b.JPG', '1331577937_th_30.370 jeans 15 b.JPG', '1331577937_o_30.370 jeans 15 b.JPG'),
(415, 'product', 'Image for product: 124', '2012-03-12 18:46:09', '1331577969_30.370 jeans 15 c.JPG', '1331577969_th_30.370 jeans 15 c.JPG', '1331577969_o_30.370 jeans 15 c.JPG'),
(416, 'product', 'Image for product: 124', '2012-03-12 18:48:56', '1331578135_30.370 jeans 15 d.JPG', '1331578135_th_30.370 jeans 15 d.JPG', '1331578135_o_30.370 jeans 15 d.JPG'),
(422, 'home', 'xxl 12', '2012-03-15 13:46:40', '1331819199_xxl site ok 1.JPG', '1331819199_th_xxl site ok 1.JPG', '1331819199_o_xxl site ok 1.JPG'),
(423, 'home', 'xxl 12', '2012-03-16 15:16:36', '1331910995_ok 1.jpg', '1331910995_th_ok 1.jpg', '1331910995_o_ok 1.jpg'),
(425, 'home', 'xxlfrom ', '2012-03-16 15:28:10', '1331911690_ok 2.jpg', '1331911690_th_ok 2.jpg', '1331911690_o_ok 2.jpg'),
(426, 'product', 'Image for product: 126', '2012-03-19 11:50:41', '1332157841_80.335 1 b.JPG', '1332157841_th_80.335 1 b.JPG', '1332157841_o_80.335 1 b.JPG'),
(427, 'product', 'Image for product: 126', '2012-03-19 11:51:23', '1332157883_80.335 1 a.JPG', '1332157883_th_80.335 1 a.JPG', '1332157883_o_80.335 1 a.JPG'),
(428, 'product', 'Image for product: 129', '2012-03-19 11:53:07', '1332157987_80.335 2c.JPG', '1332157987_th_80.335 2c.JPG', '1332157987_o_80.335 2c.JPG'),
(430, 'product', 'Image for product: 129', '2012-03-19 11:55:35', '1332158135_80.335 2b.JPG', '1332158135_th_80.335 2b.JPG', '1332158135_o_80.335 2b.JPG'),
(431, 'product', 'Image for product: 130', '2012-03-19 11:56:58', '1332158217_80.336 1b.JPG', '1332158217_th_80.336 1b.JPG', '1332158217_o_80.336 1b.JPG'),
(432, 'product', 'Image for product: 130', '2012-03-19 12:00:00', '1332158399_80.336 1a.JPG', '1332158399_th_80.336 1a.JPG', '1332158399_o_80.336 1a.JPG'),
(433, 'product', 'Image for product: ', '2012-03-19 13:58:30', '1332165509_80.801.JPG', '1332165509_th_80.801.JPG', '1332165509_o_80.801.JPG'),
(434, 'product', 'Image for product: ', '2012-03-19 14:00:32', '1332165632_80.801.JPG', '1332165632_th_80.801.JPG', '1332165632_o_80.801.JPG'),
(435, 'product', 'Image for product: 136', '2012-03-19 14:01:28', '1332165688_80.801.JPG', '1332165688_th_80.801.JPG', '1332165688_o_80.801.JPG'),
(436, 'product', 'Image for product: 136', '2012-03-19 14:02:03', '1332165723_DSCN6676.JPG', '1332165723_th_DSCN6676.JPG', '1332165723_o_DSCN6676.JPG'),
(437, 'product', 'Image for product: 136', '2012-03-19 14:04:54', '1332165894_DSCN6677.JPG', '1332165894_th_DSCN6677.JPG', '1332165894_o_DSCN6677.JPG');

-- --------------------------------------------------------

--
-- Estrutura para tabela `module`
--

CREATE TABLE `module` (
  `module_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) NOT NULL,
  `access_level` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `module`
--

INSERT INTO `module` (`module_id`, `module`, `access_level`, `description`) VALUES
(2, 'login', '', 'Login / Logout module'),
(3, 'admin', '|admin|', 'Administrator screen'),
(18, 'admin_image', '|admin|', ''),
(11, 'content', '', 'Front end module'),
(20, 'admin_dealer', '|admin|', 'Manager dealers'),
(21, 'admin_product', '|admin|', 'Gerenciamento de produtos'),
(22, 'catalog', '', 'Frontend do catalogo'),
(23, 'admin_order', '|admin|', 'Visualizacao de pedidos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `document` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `order`
--

INSERT INTO `order` (`order_id`, `name`, `date`, `email`, `phone`, `document`) VALUES
(1, 'gfdsa', '2012-02-27 16:28:15', 'abc@abc.com', '555555', '12344cvbnmk,l./'),
(2, 'fghjkl', '2012-02-27 16:41:35', 'abc@abc.com', '11111111111', 'dfghjkl;');

-- --------------------------------------------------------

--
-- Estrutura para tabela `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `color_id`, `size`, `qty`) VALUES
(1, 1, 2, 1, 'P', 1),
(2, 2, 2, 1, 'P', 21),
(3, 2, 2, 1, 'M', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `sizes` text,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `product`
--

INSERT INTO `product` (`product_id`, `category`, `name`, `description`, `sizes`, `status`) VALUES
(2, 'Camisetas', 'linexxl', 'XXL Stripes T Shirt', 'a:3:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";}', 0),
(113, 'Camisetas', 'Special Stripes Tee', 'Special Stripes Tee', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(43, 'Camisetas', 'Premium Kings Tee', 'Premium Kings Tee 10.904 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(23, 'AcessÃ³rios', 'Dry Forhead - Colors', 'Testeira atoalhada 80.327', 'a:3:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";}', 1),
(24, 'AcessÃ³rios', 'Bandana Kings', 'Bandana 80.007 ', 'a:0:{}', 1),
(25, 'AcessÃ³rios', 'Dry Forhead - Ink', 'Testeira 80.328 ', 'a:1:{i:0;s:1:"P";}', 1),
(26, 'AcessÃ³rios', 'Dry Forhead - XXL', 'Testeira 80.464 ', 'a:1:{i:0;s:1:"G";}', 1),
(28, 'AcessÃ³rios', 'Bill Holder - XXL', 'Carteira 80.863 ', 'a:0:{}', 1),
(33, 'AcessÃ³rios', 'Special Sox - XXL', 'Meia em algodÃ£o 80.866  ', 'a:0:{}', 1),
(34, 'AcessÃ³rios', 'Special Sox - XXL', 'Meia em algodÃ£o 80.867 ', 'a:0:{}', 1),
(35, 'AcessÃ³rios', 'Special Sox - XXL', 'Meia em algodÃ£o 80.868 ', 'a:0:{}', 1),
(36, 'AcessÃ³rios', 'Wrister - XXL', 'Munhequeira 80.870 ', 'a:0:{}', 1),
(38, 'AcessÃ³rios', 'Wrister - XXL', 'Munhequeira 80.871 ', 'a:0:{}', 1),
(39, 'AcessÃ³rios', 'Wrister - XXL', 'Munhequeira 80.872 ', 'a:0:{}', 1),
(40, 'AcessÃ³rios', 'Strong Belt - XXL', 'Cinto 80.873 ', 'a:0:{}', 1),
(41, 'AcessÃ³rios', 'Strong Belt - XXL', 'Cinto 80.873 ', 'a:0:{}', 1),
(44, 'Camisetas', 'The XXL Co. Tee', 'Camiseta 10.910 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(46, 'Camisetas', 'XXL Seal Tee', 'Camiseta 10.917 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(48, 'Camisetas', 'Legendary Kings Tee', 'Camiseta 10.948 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(49, 'Camisetas', 'XXL Cans Tee', 'Camiseta 10.976', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(51, 'Camisetas', 'Boombox Town Tee', 'Camiseta 10.979 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(52, 'Camisetas', 'Straight Tee', 'Camiseta 10.997 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(53, 'Camisetas', 'Only the finest Tee', 'Camiseta 11.008 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(54, 'Camisetas', 'Loyalty Seal Tee', 'Camiseta', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(56, 'Camisetas', 'Royalty Loyalty Tee', 'Camiseta 11.018 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(57, 'Camisetas', 'XXL Life Tee', 'Camiseta 11.023 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(58, 'Camisetas', 'The XXL Award Tee', 'Camiseta 11.024 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(59, 'Camisetas', 'SP BR Kings Tee', 'Camiseta 28.020 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(60, 'Camisetas', 'Loyalty Front Tee', 'Camiseta 28.021 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(61, 'Camisetas', 'Urban Kings Tee', 'Camiseta 28.023 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(63, 'Camisetas', 'Dripped Tee', 'Camiseta 28.028 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(64, 'BonÃ©s', 'Cap Kings', 'BonÃ© 80.852 ', 'a:0:{}', 1),
(65, 'BonÃ©s', 'Cap Geo-Metricz', 'BonÃ© 80.854  ', 'a:0:{}', 1),
(66, 'BonÃ©s', 'Cap Straight', 'BonÃ© 80.875 ', 'a:0:{}', 1),
(67, 'BonÃ©s', 'Cap Seal', 'BonÃ© 80.877 ', 'a:0:{}', 1),
(68, 'BonÃ©s', 'Cap Geo-Metricz X', '80.878 ', 'a:0:{}', 1),
(69, 'BonÃ©s', 'Cap XXL Front', 'BonÃ© 80.880 ', 'a:0:{}', 1),
(70, 'BonÃ©s', 'Cap XXL Front Hard', 'BonÃ© 80.880 ', 'a:0:{}', 1),
(71, 'Blusas', 'XXL Stamps Hoodie', 'Moleton 50.273 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(76, 'Blusas', 'Only the finest Hoodie', 'Blusa em elanca 50.275  ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(77, 'Blusas', 'Crown Hoodie', 'Blusa em elanca 50.276  ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(79, 'Blusas', 'XXL Life Hoodie', 'Blusa em moleton 50.277 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(80, 'Blusas', 'Geo-Metricz Hoodie', 'Blusa em elanca 50.278   ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(81, 'Blusas', 'XXL Front Hoodie', 'Blusa em moleton 50.279  ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(82, 'Blusas', 'XXL Perspective Tee', 'Blusa em moleton 50.280 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(83, 'Blusas', 'Geo-Metricz X Hoodie', 'Blusa em moleton 50.281 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(87, 'Blusas', 'XXL Front Hoodie', 'Blusa em elanca 50.282 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(88, 'Blusas', 'Super Soft Hoodie', 'Blusa em plush 50.283 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(89, 'Blusas', '+55 Hoodie', 'Blusa em moleton 50.287 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(90, 'Blusas', 'Geo-Metricz Hoodie', 'Blusa em moleton 50.288 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(91, 'CalÃ§as', 'Soft Pantz', 'CalÃ§a em elanca 30.353 ', 'a:6:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";i:5;s:3:"EXG";}', 1),
(92, 'CalÃ§as', 'Relaxed Jeans', '30.358 RELAXED ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(93, 'CalÃ§as', 'Over Size Black Jeans', '30.359 OVER SIZE ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(94, 'CalÃ§as', 'Over Size Jeans', '30.360 OVER SIZE  ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(95, 'CalÃ§as', 'Soft Pantz', 'CalÃ§a em elanca 30.362 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(96, 'CalÃ§as', 'Soft Pantz', 'CalÃ§a em elanca 30.363 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(97, 'CalÃ§as', 'Soft Pantz', 'CalÃ§a em elanca 30.364 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(98, 'CalÃ§as', 'Soft Pantz', 'CalÃ§a em elanca 30.365 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(99, 'CalÃ§as', 'Over Size Jeans', '30.366 OVER SIZE ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(100, 'CalÃ§as', 'Relaxed Jeans', '30.367 RELAXED ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(101, 'CalÃ§as', 'Basic Jeans', '30.368 BASICA ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(102, 'CalÃ§as', 'Over Size Jeans', '30.369 OVER SIZE ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(103, 'CalÃ§as', 'Over Size Black Jeans', '30.371 OVER SIZE  ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(104, 'CalÃ§as', 'Soft Pantz', 'CalÃ§a em elanca 30.374 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(105, 'Bermudas', 'Berma Jeans', '40.340 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(118, 'AcessÃ³rios', '80 864', '80 864', 'a:0:{}', 1),
(109, 'Bermudas', 'Berma Jeans', '40.344 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(110, 'Bermudas', 'Berma Black Jeans', '40.345 ', 'a:5:{i:0;s:1:"P";i:1;s:1:"M";i:2;s:1:"G";i:3;s:2:"GG";i:4;s:2:"EG";}', 1),
(136, 'BonÃ©s', '80.801', NULL, 'a:0:{}', 1),
(120, 'AcessÃ³rios', '80 865', '80 865', 'a:0:{}', 1),
(121, 'Bermudas', '40.307 ', '40.307 ', 'a:0:{}', 1),
(122, 'Bermudas', '40.346 ', '40.346 ', 'a:0:{}', 1),
(123, 'Blusas', '50.286 elanka ', '50.286 elanka ', 'a:0:{}', 1),
(124, 'CalÃ§as', '30.370 ', '30.370 ', 'a:0:{}', 1),
(133, '', 'New Product', NULL, NULL, 1),
(126, 'BonÃ©s', '80.3351', '80.3351', 'a:0:{}', 1),
(135, '', 'New Product', NULL, NULL, 1),
(129, 'BonÃ©s', '80.3352', '80.3352', 'a:0:{}', 1),
(130, 'BonÃ©s', '80.3361', '80.3361', 'a:0:{}', 1),
(134, '', 'New Product', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_image_color`
--

CREATE TABLE `product_image_color` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `front` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `product_image_color`
--

INSERT INTO `product_image_color` (`product_id`, `image_id`, `color_id`, `front`) VALUES
(1, 92, 1, 1),
(2, 93, 1, 1),
(4, 94, 2, 1),
(6, 95, 1, 1),
(2, 96, 1, 1),
(7, 99, 5, 1),
(7, 100, 5, 1),
(7, 101, 5, 1),
(7, 102, 5, 1),
(7, 103, 5, 1),
(8, 104, 6, 1),
(8, 105, 6, 1),
(8, 106, 6, 1),
(8, 107, 6, 1),
(9, 108, 6, 1),
(9, 109, 6, 1),
(9, 110, 6, 1),
(9, 111, 6, 1),
(10, 112, 2, 1),
(10, 113, 2, 1),
(11, 114, 1, 1),
(11, 115, 2, 1),
(12, 116, 5, 1),
(12, 117, 5, 1),
(12, 118, 5, 1),
(12, 119, 5, 1),
(12, 120, 5, 1),
(13, 121, 2, 1),
(13, 122, 2, 1),
(13, 123, 2, 1),
(14, 124, 5, 1),
(14, 125, 5, 1),
(14, 126, 5, 1),
(14, 127, 5, 1),
(14, 128, 5, 1),
(15, 129, 5, 1),
(15, 130, 5, 1),
(16, 131, 5, 1),
(16, 132, 5, 1),
(17, 133, 1, 1),
(17, 134, 1, 1),
(19, 139, 5, 1),
(20, 140, 5, 1),
(21, 141, 5, 1),
(21, 142, 5, 1),
(21, 143, 5, 1),
(22, 144, 5, 1),
(22, 145, 5, 1),
(22, 146, 5, 1),
(23, 147, 3, 1),
(24, 148, 7, 1),
(25, 149, 3, 1),
(26, 150, 3, 1),
(28, 200, 5, 1),
(33, 154, 3, 0),
(33, 198, 3, 1),
(34, 156, 3, 0),
(34, 197, 3, 1),
(35, 196, 3, 1),
(36, 195, 3, 1),
(38, 194, 3, 1),
(39, 193, 3, 1),
(40, 192, 5, 1),
(41, 191, 5, 1),
(43, 362, 4, 0),
(43, 361, 4, 1),
(44, 364, 5, 0),
(44, 363, 5, 1),
(46, 366, 2, 0),
(46, 365, 2, 1),
(47, 171, 1, 0),
(47, 172, 1, 0),
(48, 368, 2, 0),
(48, 367, 2, 1),
(49, 370, 5, 0),
(49, 369, 5, 1),
(51, 372, 7, 0),
(51, 371, 7, 1),
(52, 374, 7, 0),
(52, 373, 7, 1),
(53, 376, 4, 0),
(53, 375, 4, 1),
(54, 378, 1, 0),
(54, 377, 1, 1),
(56, 380, 7, 0),
(56, 379, 7, 1),
(57, 382, 5, 0),
(57, 381, 5, 1),
(58, 384, 2, 0),
(58, 383, 2, 1),
(59, 387, 5, 0),
(59, 386, 5, 0),
(59, 385, 5, 1),
(60, 389, 2, 0),
(60, 388, 2, 1),
(61, 217, 7, 1),
(61, 390, 7, 0),
(61, 215, 7, 0),
(61, 216, 7, 0),
(63, 395, 3, 0),
(63, 394, 3, 0),
(63, 393, 3, 1),
(64, 224, 6, 1),
(64, 225, 6, 0),
(64, 226, 6, 0),
(65, 227, 5, 1),
(65, 228, 5, 0),
(65, 229, 5, 0),
(65, 230, 5, 0),
(66, 231, 5, 1),
(66, 232, 5, 0),
(67, 233, 5, 1),
(67, 234, 5, 0),
(68, 235, 5, 1),
(68, 236, 5, 0),
(69, 237, 5, 1),
(69, 238, 5, 0),
(70, 239, 7, 1),
(70, 240, 7, 0),
(71, 241, 2, 1),
(71, 242, 2, 0),
(71, 243, 2, 0),
(71, 244, 2, 0),
(71, 245, 2, 0),
(74, 246, 4, 1),
(76, 248, 5, 1),
(76, 249, 5, 0),
(76, 250, 5, 0),
(76, 251, 5, 0),
(77, 252, 5, 1),
(77, 253, 5, 0),
(77, 254, 5, 0),
(77, 255, 5, 0),
(79, 256, 7, 1),
(79, 257, 7, 0),
(79, 258, 7, 0),
(79, 259, 7, 0),
(80, 260, 5, 1),
(80, 261, 5, 0),
(80, 262, 5, 0),
(80, 263, 5, 0),
(81, 264, 6, 1),
(81, 265, 6, 0),
(81, 266, 6, 0),
(81, 267, 6, 0),
(82, 268, 5, 1),
(82, 269, 5, 0),
(82, 270, 5, 0),
(82, 271, 5, 0),
(83, 272, 2, 1),
(83, 273, 2, 0),
(83, 274, 2, 0),
(83, 275, 2, 0),
(87, 277, 2, 1),
(87, 278, 2, 0),
(87, 279, 2, 0),
(87, 280, 2, 0),
(88, 281, 5, 1),
(88, 282, 5, 0),
(88, 283, 5, 0),
(89, 284, 7, 1),
(89, 285, 7, 0),
(89, 286, 7, 0),
(89, 287, 7, 0),
(90, 288, 7, 1),
(90, 289, 7, 0),
(90, 290, 7, 0),
(90, 291, 7, 0),
(91, 292, 5, 1),
(91, 293, 5, 0),
(91, 294, 5, 0),
(92, 298, 5, 0),
(92, 297, 5, 1),
(92, 299, 5, 0),
(92, 300, 5, 0),
(92, 301, 5, 0),
(93, 302, 2, 1),
(93, 303, 2, 0),
(93, 304, 2, 0),
(93, 305, 2, 0),
(94, 306, 2, 1),
(94, 307, 2, 0),
(94, 308, 2, 0),
(94, 309, 2, 0),
(95, 310, 5, 1),
(95, 311, 5, 0),
(95, 312, 5, 0),
(96, 313, 5, 1),
(96, 314, 5, 0),
(96, 315, 5, 0),
(97, 316, 2, 1),
(97, 317, 2, 0),
(97, 318, 2, 0),
(98, 319, 5, 1),
(98, 320, 5, 0),
(98, 321, 5, 0),
(99, 322, 5, 1),
(99, 323, 5, 0),
(99, 324, 5, 0),
(99, 325, 5, 0),
(100, 326, 2, 1),
(100, 327, 2, 0),
(100, 328, 2, 0),
(100, 329, 2, 0),
(101, 330, 5, 1),
(101, 331, 5, 0),
(101, 332, 5, 0),
(101, 333, 5, 0),
(102, 334, 2, 1),
(102, 335, 2, 0),
(102, 336, 2, 0),
(102, 337, 2, 0),
(103, 338, 5, 1),
(103, 339, 5, 0),
(103, 340, 5, 0),
(103, 341, 5, 0),
(104, 342, 5, 1),
(104, 343, 5, 0),
(104, 344, 5, 0),
(105, 345, 2, 1),
(105, 346, 2, 0),
(105, 347, 2, 0),
(105, 348, 2, 0),
(109, 353, 5, 1),
(109, 354, 5, 0),
(109, 355, 5, 0),
(109, 356, 5, 0),
(110, 357, 6, 1),
(110, 358, 5, 0),
(110, 359, 5, 0),
(110, 360, 5, 0),
(113, 391, 1, 1),
(113, 392, 1, 0),
(118, 396, 5, 1),
(118, 397, 5, 0),
(28, 398, 5, 0),
(120, 399, 5, 1),
(120, 400, 5, 0),
(121, 401, 2, 1),
(121, 402, 2, 0),
(121, 403, 2, 0),
(121, 404, 2, 0),
(122, 405, 2, 1),
(122, 406, 2, 0),
(122, 407, 2, 0),
(122, 408, 2, 0),
(123, 409, 2, 1),
(123, 410, 2, 0),
(123, 411, 2, 0),
(123, 412, 2, 0),
(124, 413, 2, 1),
(124, 414, 2, 0),
(124, 415, 2, 0),
(124, 416, 2, 0),
(126, 426, 5, 1),
(126, 427, 5, 0),
(129, 428, 3, 1),
(129, 430, 3, 0),
(130, 431, 5, 1),
(130, 432, 5, 0),
(136, 435, 2, 1),
(136, 436, 2, 0),
(136, 437, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT '0',
  `levels` text NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`user_id`, `login`, `name`, `email`, `password`, `status`, `levels`, `date_add`) VALUES
(1, 'admin', 'Administrador', 'danielribeiro2001@gmail.com', 'admin', 1, '|admin|', '2008-04-19 18:03:22');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `conf`
--
ALTER TABLE `conf`
  ADD PRIMARY KEY (`conf_id`);

--
-- Índices de tabela `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Índices de tabela `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Índices de tabela `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Índices de tabela `product_image_color`
--
ALTER TABLE `product_image_color`
  ADD PRIMARY KEY (`product_id`,`image_id`,`color_id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `conf`
--
ALTER TABLE `conf`
  MODIFY `conf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `cor`
--
ALTER TABLE `cor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `dealer`
--
ALTER TABLE `dealer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de tabela `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT de tabela `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de tabela `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
