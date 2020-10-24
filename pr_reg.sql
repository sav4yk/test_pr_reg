-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 24 2020 г., 18:32
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pr_reg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `image`, `category_id`, `created_at`) VALUES
(1, 'title 1', 'Ceteros assentior omittantur cum ad. Solum vituperata definitiones te vis, vis alia falli doming ea. Nisl omittam complectitur pro an, quem omnes munere id vix. Mandamus abhorreant deseruisse mea at, mea elit deserunt persequeris at, in putant fuisset honestatis qui.\r\nPer in illud petentium iudicabit, integre sententiae pro no. Nisl omittam complectitur pro an, quem omnes munere id vix. Postulant assueverit ea his. Solum vituperata definitiones te vis, vis alia falli doming ea. Postulant assueverit ea his. Elitr accommodare deterruisset eam te, vim munere pertinax consetetur at.\r\nSale liber et vel. Eu cum iuvaret debitis voluptatibus, esse perfecto reformidans id has. . Vivendum dignissim conceptam pri ut, ei vel partem audiam sapientem. Elitr accommodare deterruisset eam te, vim munere pertinax consetetur at.', 'photo1.jpg', 1, '2020-10-24 17:40:13'),
(2, 'title 2', 'Lorem ipsum dolor sit amet, an eos lorem ancillae expetenda, vim et utamur quaestio. Ceteros assentior omittantur cum ad. Tation delenit percipitur at vix. An eos iusto solet, id mel dico habemus. Mandamus abhorreant deseruisse mea at, mea elit deserunt persequeris at, in putant fuisset honestatis qui.\r\nTation delenit percipitur at vix. Mandamus abhorreant deseruisse mea at, mea elit deserunt persequeris at, in putant fuisset honestatis qui. Eu cum iuvaret debitis voluptatibus, esse perfecto reformidans id has. Odio contentiones sed cu, usu commodo prompta prodesset id.\r\nPer cu iracundia splendide. Magna copiosae apeirian ius at. Nec labore cetero theophrastus no, ei vero facer veritus nec. Sale liber et vel. Postulant assueverit ea his. Elitr accommodare deterruisset eam te, vim munere pertinax consetetur at. Nisl omittam complectitur pro an, quem omnes munere id vix.', 'photo2.jpg', 1, '2020-10-24 17:42:13'),
(3, 'title 3', 'Per in illud petentium iudicabit, integre sententiae pro no. An nam debet instructior, commodo mediocrem id cum. An eos iusto solet, id mel dico habemus. Mandamus abhorreant deseruisse mea at, mea elit deserunt persequeris at, in putant fuisset honestatis qui. Oratio accumsan et mea. Nec labore cetero theophrastus no, ei vero facer veritus nec.\r\nIus dicat feugiat no, vix cu modo dicat principes. Per in illud petentium iudicabit, integre sententiae pro no. Vel in dicant cetero phaedrum, usu populo interesset cu, eum ea facer nostrum pericula. Tation delenit percipitur at vix.\r\nAn eos iusto solet, id mel dico habemus. Mandamus abhorreant deseruisse mea at, mea elit deserunt persequeris at, in putant fuisset honestatis qui. Oratio accumsan et mea. Sea esse deserunt ei, no diam ubique euripidis has. Postulant assueverit ea his. Odio contentiones sed cu, usu commodo prompta prodesset id.', 'photo3.jpg', 2, '2020-10-24 17:45:13');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Категория 1'),
(2, 'Категория 2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id_index` (`category_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
