-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 13 2020 г., 17:12
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_for_labs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `ID` int NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Phone_number` varchar(12) NOT NULL,
  `Wage` float NOT NULL DEFAULT '0',
  `Address` varchar(100) NOT NULL,
  `Experience` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`ID`, `Full_Name`, `Phone_number`, `Wage`, `Address`, `Experience`) VALUES
(1, 'Бушмакина А.В.', '89966900345', 20000, 'ПК, г.Пермь, ул.Дедюкина, д.11, кв.2', 1),
(2, 'Дигорь В.В.', '89998745567', 55600, 'ПК, г.Пермь, ул.Ленина, д.45, кв.15', 3),
(3, 'Ермакова Т.А.', '82546234534', 44000, 'ПК, г.Пермь, ул.Окулова, д.3, кв. 1', 3),
(4, 'Некрасов К.Л.', '89043145632', 50000, 'ПК, г.Пермь, ул.Коминтерна, д.13, кв.20', 4),
(5, 'Селиверстов Е.В.', '89524004245', 33000, 'ПК, г.Пермь, ул. Максима Горького, д.76, кв.1', 2),
(6, 'Хлебова Д.Л.', '89756746223', 60000, 'ПК, г.Краснокамск, ул.Большевистская, д.36, кв.10  ', 4),
(7, 'Лаврова А.Н.', '89043562542', 67000, 'ПК, г.Пермь, ул.Труда, д.71, кв.5', 4),
(8, 'Чакина П.К.', '89345678765', 50000, 'ПК, г.Пермь, ул.Льва Толстова, д.10, кв.24', 3),
(9, 'Горбунов Е.Ю.', '89334562352', 30000, 'ПК, г.Пермь, ул.Плеханова, д.7, кв.11', 1),
(10, 'Ахидов С.А.', '89345678923', 33000, 'ПК, г.Пермь, ул.Водопроводная 3-я, д.5, кв.2', 1),
(11, 'Зорина И.В.', '89765434567', 45000, 'ПК, г.Пермь, ул.Сухобруса, д.16а, кв.2', 2),
(12, 'Анохина К.И.', '89254357234', 80000, 'ПК, г.Пермь, ул.Хохрякова, д.6а, кв.5', 5),
(13, 'Морозов В.Ю.', '83547237259', 68000, 'ПК, г.Пермь, ул.Монастырская, д.96, кв.4', 5),
(14, 'Казанцев А.А,', '89765432234', 56000, 'ПК, г.Пермь, ул.Петропавловская, д.12, кв.8', 4),
(15, 'Пермякова П.С.', '89063456789', 65000, 'ПК, г.Пермь, ул.Советская, д.3, кв.20', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
