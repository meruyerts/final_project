-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 20 2016 г., 15:12
-- Версия сервера: 5.5.39
-- Версия PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ecommerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
`brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Mango'),
(2, 'Dorothy Perkins'),
(3, 'Bershka'),
(4, 'Befree'),
(5, 'Versace'),
(6, 'Dolce Gabbana');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(0, '::1', 4),
(0, '::1', 4),
(3, '::1', 4),
(1, '::1', 4),
(2, '::1', 4),
(9, '::1', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Dress'),
(2, 'Trousers'),
(3, 'T-shirt'),
(4, 'Skirt'),
(5, 'Palto'),
(6, 'Shoes');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`id` int(11) NOT NULL,
  `email` text NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `email`, `title`, `message`) VALUES
(1, 'meruyert.slamova@is.sdu.edu.kz', 'sajvcjds', 'hewjajhwhegsvgh');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(100) NOT NULL,
  `product_cat` text NOT NULL,
  `product_brand` text NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(7, 'Dress', 'Mango', 'Befree', 80000, 'hi guys', 'befree5.jpg', 'DELL\r\n		'),
(9, 'Dress', 'Dolce Gabbana', 'Dolce Gabbana', 245000, 'It is cool to use', 'dolce1.jpg', 'iPad, Samsung\r\n		'),
(10, 'Trousers', 'Bershka', 'Bershka', 120000, '<p>I AM JOKING</p>', 'bershka2.jpg', 'HP, LAPTOPS\r\n		'),
(11, 'Dress', 'Bershka', 'Bershka', 50000, '<p>It is a wonderfull device</p>', 'bershka4.jpg', 'hdsjfkjaf'),
(12, 'Dress', 'Odjii', 'Odjii', 27367, '<p>hsadvg</p>', 'odji3.jpg', 'sabdv,dsbh\r\n		');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `username`, `login`, `password`, `type`, `email`) VALUES
(3, 'Meruyert', 'meruyert', '12345', 1, 'meruyerts@mail.ru'),
(4, 'Gaukhar', 'gaukhar', 'gaukhar', 0, 'gaukhar@gmail.com'),
(5, 'Meruyert Slamova', 'meru', 'meru', 0, 'meruyert.slamova@is.sdu.edu.kz'),
(6, 'Slamova', 'slamova', 'slamova', 0, '11d.gaukhars@gmail.com'),
(8, 'Gaukhar', 'Gabbi', 'gabbi', 1, 'gabbi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
