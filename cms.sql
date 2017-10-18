-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2017 at 06:08 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'JAVA'),
(3, 'C#'),
(4, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(3, 32, 'admin', 'ad@mail.com', 'COMMENT', 'approved', '2017-10-18'),
(4, 35, 'marko', 'marko@mail.com', 'COMMENTTTT', 'approved', '2017-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(32, 2, 'Post 6', '', 'admin', '2017-10-18', 'lambo_1.jpg', '<p>Text messaging<span style="color: #222222; font-family: sans-serif;">, or&nbsp;</span>texting<span style="color: #222222; font-family: sans-serif;">, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Mobile phone" href="https://en.wikipedia.org/wiki/Mobile_phone">mobile phones</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablets</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktops</a><span style="color: #222222; font-family: sans-serif;">/</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a><span style="color: #222222; font-family: sans-serif;">, or other devices. Text messages may be sent over a&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cellular network" href="https://en.wikipedia.org/wiki/Cellular_network">cellular network</a><span style="color: #222222; font-family: sans-serif;">, or may also be sent via an&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a><span style="color: #222222; font-family: sans-serif;">&nbsp;connection.</span></p>', 'post6', '0', 'draft', 0),
(33, 1, 'Post 5', '', 'admin', '2017-10-18', 'lambo_1.jpg', '<p>Text messaging<span style="color: #222222; font-family: sans-serif;">, or&nbsp;</span>texting<span style="color: #222222; font-family: sans-serif;">, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Mobile phone" href="https://en.wikipedia.org/wiki/Mobile_phone">mobile phones</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablets</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktops</a><span style="color: #222222; font-family: sans-serif;">/</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a><span style="color: #222222; font-family: sans-serif;">, or other devices. Text messages may be sent over a&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cellular network" href="https://en.wikipedia.org/wiki/Cellular_network">cellular network</a><span style="color: #222222; font-family: sans-serif;">, or may also be sent via an&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a><span style="color: #222222; font-family: sans-serif;">&nbsp;connection.</span></p>', 'post5', '0', 'draft', 0),
(34, 4, 'Post 4', '', 'admin', '2017-10-18', 'lambo_1.jpg', '<p>Text messaging<span style="color: #222222; font-family: sans-serif;">, or&nbsp;</span>texting<span style="color: #222222; font-family: sans-serif;">, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Mobile phone" href="https://en.wikipedia.org/wiki/Mobile_phone">mobile phones</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablets</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktops</a><span style="color: #222222; font-family: sans-serif;">/</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a><span style="color: #222222; font-family: sans-serif;">, or other devices. Text messages may be sent over a&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cellular network" href="https://en.wikipedia.org/wiki/Cellular_network">cellular network</a><span style="color: #222222; font-family: sans-serif;">, or may also be sent via an&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a><span style="color: #222222; font-family: sans-serif;">&nbsp;connection.</span></p>', 'post4', '0', 'published', 0),
(35, 3, 'Post 3', '', 'admin', '2017-10-18', 'lambo_1.jpg', '<p>Text messaging<span style="color: #222222; font-family: sans-serif;">, or&nbsp;</span>texting<span style="color: #222222; font-family: sans-serif;">, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Mobile phone" href="https://en.wikipedia.org/wiki/Mobile_phone">mobile phones</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablets</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktops</a><span style="color: #222222; font-family: sans-serif;">/</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a><span style="color: #222222; font-family: sans-serif;">, or other devices. Text messages may be sent over a&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cellular network" href="https://en.wikipedia.org/wiki/Cellular_network">cellular network</a><span style="color: #222222; font-family: sans-serif;">, or may also be sent via an&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a><span style="color: #222222; font-family: sans-serif;">&nbsp;connection.</span></p>', 'post3', '0', 'published', 0),
(36, 2, 'Post 2', '', 'admin', '2017-10-18', 'lambo_1.jpg', '<p>Text messaging<span style="color: #222222; font-family: sans-serif;">, or&nbsp;</span>texting<span style="color: #222222; font-family: sans-serif;">, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Mobile phone" href="https://en.wikipedia.org/wiki/Mobile_phone">mobile phones</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablets</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktops</a><span style="color: #222222; font-family: sans-serif;">/</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a><span style="color: #222222; font-family: sans-serif;">, or other devices. Text messages may be sent over a&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cellular network" href="https://en.wikipedia.org/wiki/Cellular_network">cellular network</a><span style="color: #222222; font-family: sans-serif;">, or may also be sent via an&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a><span style="color: #222222; font-family: sans-serif;">&nbsp;connection.</span></p>', 'post2', '0', 'published', 0),
(37, 1, 'Post 1', '', 'admin', '2017-10-18', 'lambo_1.jpg', '<p>Text messaging<span style="color: #222222; font-family: sans-serif;">, or&nbsp;</span>texting<span style="color: #222222; font-family: sans-serif;">, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Mobile phone" href="https://en.wikipedia.org/wiki/Mobile_phone">mobile phones</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablets</a><span style="color: #222222; font-family: sans-serif;">,&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktops</a><span style="color: #222222; font-family: sans-serif;">/</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a><span style="color: #222222; font-family: sans-serif;">, or other devices. Text messages may be sent over a&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cellular network" href="https://en.wikipedia.org/wiki/Cellular_network">cellular network</a><span style="color: #222222; font-family: sans-serif;">, or may also be sent via an&nbsp;</span><a style="text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a><span style="color: #222222; font-family: sans-serif;">&nbsp;connection.</span></p>', 'post1', '0', 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `token`) VALUES
(43, 'root', '$2y$12$7XvkAWArZj9swo4amwz.uONwgIRXAcdg3cG3Is6N1oQNtlLWjH2U2', 'root', 'root', 'root@mail.com', '', 'subscriber', '48842ce9b3e19bc1881f09a63bdec0ea7369017ceefd280aa317e36fc388e742f3629bf7a41608f435a3032e57d93f4d38d1'),
(45, 'admin', '$2y$10$F3AmIZ2cJXLTYDN9PeDvmuJ9eqcGpO6uTFoiadPm1oOa94.kzqx3O', 'admin', 'admin', 'admin@mail.com', '', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(3) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(2, 't7tf0kqje1vuhdr1p0v198j3t7', 1507845343),
(3, '1qsmck7gcg7s6hf35dm79eb4l2', 1507850613),
(4, '022m136mi88e0329r3jdu0m6t2', 1507907651),
(5, 'l69jsaj2mnbqecb7lan8boo182', 1507933643),
(6, 'mqrcr1q4aknmfa29cr2f3p69i5', 1508008231),
(7, 'o660k3of1pvkl6d6v4aj157jp5', 1508091234),
(8, 'u73216uf213iq966hsd6agnfm7', 1508108732),
(9, '251cd6c7p616pr43pr7frimsk0', 1508169581),
(10, 'asr3pbs4haaja4g9qluh0lsg96', 1508189027),
(11, 'gkhvlufrjnrivkbjvh6ugam193', 1508246912),
(12, '2cbvj3hqblpv36t6o1k75e0br5', 1508337556),
(13, 'omr5j96lvkmi0pe48icc45chb3', 1508340915),
(14, 'jji1mhrlhnmdidjhkfqtvhu1i1', 1508342777);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
