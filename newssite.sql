-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 10 2018 г., 07:09
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newssite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articeles`
--

CREATE TABLE `articeles` (
  `id` int(3) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `shrotdesc` varchar(255) CHARACTER SET ucs2 DEFAULT NULL,
  `date` datetime NOT NULL,
  `section` varchar(255) CHARACTER SET ucs2 DEFAULT NULL,
  `text` text CHARACTER SET utf8,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(3) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text` text CHARACTER SET utf8,
  `date` datetime DEFAULT NULL,
  `id_news` int(11) DEFAULT NULL,
  `id_articels` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(3) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `shrotdesc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text` text CHARACTER SET utf8,
  `date` datetime DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `section` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `shrotdesc`, `text`, `date`, `author`, `section`) VALUES
(1, 'SportForever', NULL, NULL, NULL, 'John', NULL),
(2, 'SportForever', NULL, NULL, NULL, NULL, NULL),
(3, 'Real News', 'Краткое описание новости', 'Это полное описание новости', '2018-04-17 07:13:14', 'John', NULL),
(7, 'ervrev', 'frvrf', 'rfvrfv', NULL, 'Тестовый болванчик', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `section`
--

CREATE TABLE `section` (
  `id` int(3) NOT NULL,
  `name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`) VALUES
(1, 'John', 'john@exaample.ru', '123456', 'admin'),
(12, 'Тестовый болванчик', NULL, NULL, NULL),
(13, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(14, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(15, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(16, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(17, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(18, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(19, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(20, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(21, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(22, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(23, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(24, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(25, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(26, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(27, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(28, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(29, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(30, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(31, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(32, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(33, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(34, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(35, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(36, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(37, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(38, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(39, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(40, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(41, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(42, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(43, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(44, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(45, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(46, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(47, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(48, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(49, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(50, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(51, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(52, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(53, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(54, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(55, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(56, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(57, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(58, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(59, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(60, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(61, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(62, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(63, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(64, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(65, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(66, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(67, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(68, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(69, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(70, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin'),
(71, 'Тестовый болванчик', 'test@test.tu', '123456', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articeles`
--
ALTER TABLE `articeles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articeles`
--
ALTER TABLE `articeles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `section`
--
ALTER TABLE `section`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articeles`
--
ALTER TABLE `articeles`
  ADD CONSTRAINT `articeles_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`name`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`name`);

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
