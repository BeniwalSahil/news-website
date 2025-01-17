-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2025 at 07:42 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advertindiaco_news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'SPORTS', 3),
(2, 'Entertainment', 2),
(3, 'Farming', 5),
(4, 'Health', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(1, 'Patriots Stock Report: 3 up, 3 down', 'After a disastrous 2-8 start, it\'s finally the bye week in New England. The Patriots organization hoped to be sitting in a better spot after 10 games, but this is the situation they find themselves in.\n\nWith there not being a game this weekend, I thought it would be a good time to fill out another Patriots stock report.\n\nKeep in mind, that I\'m basing this off of a recent play. For that reason, a guy like Christian Gonzalez, whose stock is through the roof, won\'t be listed, simply because he\'s injured and hasn\'t played.\n\nWith all that in mind, here\'s my Patriots stock report.', '1', '14 Jan, 2025', 1, 'club.jpg'),
(10, 'Some ideas for health blog posts', 'A health blog is a website or online journal that features articles about health and wellness. Health blogs can cover a range of topics, including diet, fitness, disease management, and more. \r\nWhat can a health blog post include? Health tips and advice, Personal stories and anecdotes, Analysis of health trends, Discussion of health research, and Information on disease prevention and management', '3', '15 Jan, 2025', 1, 'club.jpg'),
(11, 'Latest Blogs Posts on Medical Tests and Health Advice', 'Health Blogs. All; Recent; Most Popular; Trending. The Hidden Dangers of HMPV ... GLUCOSE (POST PRANDIAL 2 Hrs.) | · VITAMIN B12 (CYANOCOBALAMIN) | · VITAMIN D ...\r\nHealth Blogs. All; Recent; Most Popular; Trending. The Hidden Dangers of HMPV ... GLUCOSE (POST PRANDIAL 2 Hrs.) | · VITAMIN B12 (CYANOCOBALAMIN) | · VITAMIN D ...\r\n', '4', '15 Jan, 2025', 1, 'club.jpg'),
(3, 'Best Entertainment Blogs and Websites', 'Choose from one of the most popular entertainment blogs. Subscribe to your favorite entertainment blogs for free.\r\nCelebrity Gossip and Entertainment News, Covering Celebrity News and Hollywood Rumors. Get All The Latest Gossip at TMZ - Thirty Mile Zone.', '3', '14 Jan, 2025', 1, 'club.jpg'),
(4, 'Growing fruit means having orchards devoted to fruit. ', 'Many people still live by subsistence farming, on a small farm. They can only grow enough food to feed the farmer, his family, and his animals. The yield is the amount of food grown on a given amount of land, and it is often low. This is because subsistence farmers are generally less educated, and they have less money to buy equipment. Drought and other problems sometimes cause famines. Where yields are low, deforestation can provide new land to grow more food. This provides more nutrition for the farmer\'s family, but can be bad for the country and the surrounding environment over many years.', '3', '14 Jan, 2025', 1, 'club.jpg'),
(15, 'This article is about the Republic of India. For other uses, see India (disambiguation).', 'India, officially the Republic of India,[j][20] is a country in South Asia. It is the most populous country in the world and the seventh-largest by area. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[k] China, Nepal, and Bhutan to the north; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; its Andaman and Nicobar Islands share a maritime border with Thailand, Myanmar, and Indonesia.', '2', '15 Jan, 2025', 4, 'wedw.jpeg'),
(13, 'Entertainment', 'Entertainmnet complete for coming that alloese', '3', '15 Jan, 2025', 4, 'club.jpg'),
(14, 'Testing purpose', 'testing main using that case', '1', '15 Jan, 2025', 4, 'club.jpg'),
(9, 'Keep in mind, that', 'After a disastrous 2-8 start, it\'s finally the bye week in New England. The Patriots organization hoped to be sitting in a better spot after 10 games, but this is the situation they find themselves in.\r\n\r\nWith there not being a game this weekend, I thought it would be a good time to fill out another Patriots stock report.\r\n\r\nKeep in mind, that I\'m basing this off of a recent play. For that reason, a guy like Christian Gonzalez, whose stock is through the roof, won\'t be listed, simply because he\'s injured and hasn\'t played.\r\n\r\nWith all that in mind, here\'s my Patriots stock report.', '3', '14 Jan, 2025', 1, 'club.jpg'),
(20, 'system clone', 'clonecloneclonecloneclonecloneclone', '3', '17 Jan, 2025', 4, '1737095881-bannerq.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `web_id` int NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`web_id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'NEWS UPDATE SYSTEM', 'news.jpg', '©Copyright 2025 <a href=\"https://advertindia.co.in/vin_ecom/news-site/\">SKB BENIWAL</a>. All rights reserved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(1, 'Sahil', 'Beniwal', 'skb.beniwal', 'c44a471bd78cc6c2fea32b9fe028d30a', 1),
(4, 'Amit', 'Kumar', 'AmitKumar', '1334cb7a5c37286ff46907a1e431b619', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`web_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `web_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
