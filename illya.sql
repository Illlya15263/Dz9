-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Жов 08 2023 р., 11:40
-- Версія сервера: 10.4.28-MariaDB
-- Версія PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `illya`
--

-- --------------------------------------------------------

--
-- Структура таблиці `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `description`) VALUES
(1, 'Зарядка', '29.9', 'Норм зарядка'),
(2, 'Дріт', '25.9', '._.👍');

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `goods_id` text DEFAULT NULL,
  `subject_id` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `addres` text DEFAULT NULL,
  `prise` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `goods_id`, `subject_id`, `amount`, `addres`, `prise`) VALUES
(1, '23', '1', 0, '1', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `product` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `subject`
--

INSERT INTO `subject` (`id`, `product`, `name`, `email`, `password`, `order`) VALUES
(1, 'Зарядка', 'Ілля', 'weyfgd@gmail.com', 'Qwerty123', 13),
(2, 'Дріт', 'Данило', 'wfghgd@gmail.com', 'Qwerty823', 23);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
