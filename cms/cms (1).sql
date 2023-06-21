-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 jun 2023 om 12:39
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'JavaScript'),
(3, 'HTML'),
(4, 'SCSS'),
(15, 'CSS'),
(17, 'lorem ipsum');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(2, 7, 'Bilal el koudadi', 'wijnruit12@hotmail.com', 'hey Bilal, dit is bilal van de verleede. ga weer hard gymen als school voorbij is, haal ook creatine', 'approved', '2023-06-18'),
(4, 4, 'edwin Diaz', 'edwin@outlook.com', 'hey edwin here', 'approved', '2023-06-18'),
(5, 4, 'wesdvs', 'wijnruit12@hotmail.com', 'fdsbvrtesdfxbdv', 'unapproved', '2023-06-18'),
(6, 4, 'rfdxdcvz ', 'ervdsaxcz@tregsd', 'revsd', 'unapproved', '2023-06-18'),
(7, 4, 'trbevdsrfzx', 'rt@adfsbzsreasd', 'weASFD23W', 'unapproved', '2023-06-18'),
(8, 4, 'Jeroen Dijkstra', 'DIJJ@ma-web.nl', 'Bilal dat is meer dan de rest', 'unapproved', '2023-06-18'),
(9, 4, 'Jeroen Dijkstra', 'DIJJ@ma-web.nl', 'WOW dat is meer dan rest', 'approved', '2023-06-18');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(4, 1, 'Yubtub', 'Bilal el Koudadi', '2023-06-18', 'image_2.jpg', 'Bilal made over 65% of progress with the end project\r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        ', 'Javascript, JAVA', 5, 'published'),
(7, 1, 'some lorem ipsum', 'lorem', '2023-06-18', 'image_4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore facilis commodi, eaque in cupiditate repudiandae, fugiat libero tenetur obcaecati suscipit ab. Repellat velit illum natus reiciendis explicabo, veritatis hic. Laudantium!\r\n\r\n        \r\n\r\n        \r\n\r\n        \r\n\r\n        ', 'lorem ipsum, javascript', 4, 'published');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(4, 'EdwinSuperman', '<br /><b>Warning</b>:  Undefined variable $user_password in <b>C:Users31685OneDriveBureaubladMaXammpxamphtdocsmajaar-22.4udemydemocmsadminincludesedit_user.php</b> on line <b>119</b><br />', 'Bilal', 'Koudadi', 'wijnruit12@hotmail.com', '', 'subscriber', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
