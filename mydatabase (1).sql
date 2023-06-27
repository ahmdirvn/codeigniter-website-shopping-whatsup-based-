-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 12:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(1, 'ipanaku', 'bef3a9269fca129a2fa332e2b804efa3');

-- --------------------------------------------------------

--
-- Table structure for table `whatastore_categories`
--

CREATE TABLE `whatastore_categories` (
  `id` int(6) UNSIGNED NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whatastore_categories`
--

INSERT INTO `whatastore_categories` (`id`, `category`) VALUES
(1, 'SARIMI');

-- --------------------------------------------------------

--
-- Table structure for table `whatastore_config`
--

CREATE TABLE `whatastore_config` (
  `id` int(6) UNSIGNED NOT NULL,
  `config` varchar(150) NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whatastore_config`
--

INSERT INTO `whatastore_config` (`id`, `config`, `value`) VALUES
(1, 'cfg', '{\"websitetitle\":\"Toko kelontong Ibuk\",\"maincolor\":\"#33A1F2\",\"secondcolor\":\"#B9E9FC\",\"about\":\"<p>Sederhana,Simple dan Bisa Dimana Saja<\\/p>\",\"language\":\"id\",\"thumbnailmode\":\"0\",\"logo\":\"f631pz54tj.jpg\",\"adminwhatsapp\":\"6285712123782\",\"currencysymbol\":\"Rp\",\"baseurl\":\"http:\\/\\/localhost\\/WhatsUpShop-master\\/\",\"enablerecentpostsliders\":\"1\",\"enablefacebookcomment\":\"1\",\"enablepublishdate\":\"1\",\"disabledecimals\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `whatastore_messages`
--

CREATE TABLE `whatastore_messages` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `message` varchar(1300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whatastore_messages`
--

INSERT INTO `whatastore_messages` (`id`, `date`, `message`) VALUES
(1, '1679976550091', 'ORDER ID: 9243/2023-3-28 11:8:41\nDATE: Tue Mar 28 2023 11:08:41 GMT+0700 (Western Indonesia Time)\n- MI SEDAP x 1 = $ 3000.00\nTotal Semua = $ 3000.00\nNama: IRVAN\nHape: 085382492394298490\nAlamat: NGROTO\nMetode Pengiriman: Take Away\nORDER NOTES: CEPET YA'),
(2, '1680231484948', 'ORDER ID: 9170/2023-3-31 9:57:16\nDATE: Fri Mar 31 2023 09:57:16 GMT+0700 (Western Indonesia Time)\n- MI SEDAP x 2 = Rp 4.00\nTotal Semua = Rp 4.00\nNama: sfsda\nHape: 085226457536\nAlamat: JEPARA\nMetode Pengiriman: Take Away\nORDER NOTES: cepetya'),
(3, '1680231652585', 'ORDER ID: 8154/2023-3-31 10:0:16\nDATE: Fri Mar 31 2023 10:00:16 GMT+0700 (Western Indonesia Time)\n- MI SEDAP x 2 = Rp 4.00\nTotal Semua = Rp 4.00\nNama: sfsdfs\nHape: 087838292901\nAlamat: jepara\nMetode Pengiriman: Dining\nORDER NOTES: dsdfs');

-- --------------------------------------------------------

--
-- Table structure for table `whatastore_posts`
--

CREATE TABLE `whatastore_posts` (
  `id` int(6) UNSIGNED NOT NULL,
  `postid` varchar(70) NOT NULL,
  `catid` int(6) NOT NULL,
  `normalprice` float NOT NULL,
  `discountprice` float NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 NOT NULL,
  `time` varchar(150) NOT NULL,
  `options` varchar(200) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `moreimages` text NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whatastore_posts`
--

INSERT INTO `whatastore_posts` (`id`, `postid`, `catid`, `normalprice`, `discountprice`, `title`, `time`, `options`, `picture`, `moreimages`, `content`) VALUES
(1, 'ezogtqpsct', 1, 3000000, 280, 'SARIMI', '1679976489461', '', 'j9cl6gh96p.jpg', '', '<p>SARIMI ENAK</p>'),
(2, 'rvdcsplcig', 1, 3000, 0, 'MI SEDAP', '1679976869970', '', '1ermbs0r8i.jpg', '', '<p>MI SEDAP ENAK</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatastore_categories`
--
ALTER TABLE `whatastore_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatastore_config`
--
ALTER TABLE `whatastore_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatastore_messages`
--
ALTER TABLE `whatastore_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatastore_posts`
--
ALTER TABLE `whatastore_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whatastore_categories`
--
ALTER TABLE `whatastore_categories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whatastore_config`
--
ALTER TABLE `whatastore_config`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whatastore_messages`
--
ALTER TABLE `whatastore_messages`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `whatastore_posts`
--
ALTER TABLE `whatastore_posts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
