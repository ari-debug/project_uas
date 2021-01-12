-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Mar 2019 pada 23.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 13, 30, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(8, 'Gitar', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(21, 11, 30, 1),
(22, 12, 32, 1),
(23, 13, 30, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 8, 'Yamaha APX 500 II', '<h2><strong>Advanced Scalloped X-bracing</strong></h2>\r\n\r\n<p>We have carefully scalloped the bracing on the Earth-Mini Adirondack providing that big tone with the classic bang of vintage acoustics from the golden age of guitar building.</p>\r\n\r\n<h3><strong>3/4 Scale</strong></h3>\r\n\r\n<p>The 3/4 scale makes for a professional sounding travel guitar along with the superb sound of the Solid Adirondack Spruce Top.</p>\r\n\r\n<h3><strong>Specifications:</strong></h3>\r\n\r\n<ul>\r\n	<li>CONSTRUCTION: Dovetail Neck Joint</li>\r\n	<li>CUTAWAY: N/A</li>\r\n	<li>BODY: 3/4 mini Dreadnought (82x101mm body depth), Solid Adirondack Spruce Top with Mahogany Back and Sides</li>\r\n	<li>NECK: Mahogany</li>\r\n	<li>BINDING: N/A</li>\r\n	<li>FRETBOARD: Rosewood, 43mm Nut Width</li>\r\n	<li>FRETS: 20</li>\r\n	<li>SCALE: 22 3/4&quot; (578mm)</li>\r\n	<li>INLAY: White Dot</li>\r\n	<li>TUNERS: Die cast Nickel with Black Knobs</li>\r\n	<li>BRIDGE: Rosewood</li>\r\n	<li>ELECTRONICS: FISHMAN Equipped version available</li>\r\n	<li>STRINGS: D&#39;Addario USA EXP16 Light</li>\r\n	<li>BRACING: Advanced Scalloped X Bracing</li>\r\n</ul>\r\n', 'yamaha-apx-500-ii', 2500000, 'yamaha-apx-500-ii.jpg', '2019-03-31', 2),
(31, 8, 'Cort Earth Mini Adirondack', '<h2><strong>Advanced Scalloped X-bracing</strong></h2>\r\n\r\n<p>We have carefully scalloped the bracing on the Earth-Mini Adirondack providing that big tone with the classic bang of vintage acoustics from the golden age of guitar building.</p>\r\n\r\n<h3><strong>3/4 Scale</strong></h3>\r\n\r\n<p>The 3/4 scale makes for a professional sounding travel guitar along with the superb sound of the Solid Adirondack Spruce Top.</p>\r\n\r\n<h3><strong>Specifications:</strong></h3>\r\n\r\n<ul>\r\n	<li>CONSTRUCTION: Dovetail Neck Joint</li>\r\n	<li>CUTAWAY: N/A</li>\r\n	<li>BODY: 3/4 mini Dreadnought (82x101mm body depth), Solid Adirondack Spruce Top with Mahogany Back and Sides</li>\r\n	<li>NECK: Mahogany</li>\r\n	<li>BINDING: N/A</li>\r\n	<li>FRETBOARD: Rosewood, 43mm Nut Width</li>\r\n	<li>FRETS: 20</li>\r\n	<li>SCALE: 22 3/4&quot; (578mm)</li>\r\n	<li>INLAY: White Dot</li>\r\n	<li>TUNERS: Die cast Nickel with Black Knobs</li>\r\n	<li>BRIDGE: Rosewood</li>\r\n	<li>ELECTRONICS: FISHMAN Equipped version available</li>\r\n	<li>STRINGS: D&#39;Addario USA EXP16 Light</li>\r\n	<li>BRACING: Advanced Scalloped X Bracing</li>\r\n</ul>\r\n', 'cort-earth-mini-adirondack', 3790000, 'cort-earth-mini-adirondack.png', '2018-11-28', 2),
(32, 8, 'Anymo Guitar Salamina Nylon', '<h3>Anymo Salamina Mahogany (Nylon String)</h3>\r\n\r\n<p>Body Back : Solid Mahogany<br />\r\nBody Top : Solid Spruce<br />\r\nBody Binding : Mahogany<br />\r\nNeck : One piece Mahogany<br />\r\nFingerboard : East Indian Rosewood<br />\r\nBridge : East Indian Rosewood<br />\r\nNut : Bone<br />\r\nSaddle : Bone<br />\r\nScale Length : 25.5&Prime;<br />\r\nNut width : 1.89&Prime;<br />\r\nBody Thickness : 0.314&Prime;<br />\r\nNumber of Frets : 20<br />\r\nPickup : Passive Undersaddle Piezo<br />\r\nFinishing : Matte Polyurethane Finish<br />\r\nMachine head : 3+3 slotted tuner.<br />\r\nCasing : Anymo Custom softcase<br />\r\nStrap : Anymo Custom strap</p>\r\n', 'anymo-guitar-salamina-nylon', 7765000, 'anymo-guitar-salamina-nylon.jpg', '2018-11-28', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(11, 13, 'PAY-6D226524LD555551JLP7ELJI', '2018-11-28'),
(12, 14, 'PAY-75C262676M7689914LP7KCUI', '2018-11-28'),
(13, 14, 'PAYID-LSQS5TY6GA96407AS9670246', '2019-03-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'irvan_gen@hotmail.com', '$2y$10$7Y2hDHXEz.GwntOi3zVXU.qnfBayAHDYwQ/Y/azYl5AIWig.n0dX6', 1, 'Irvan', 'Nurfazri Mauludin', '', '', 'irvan.jpg', 1, '', '', '2018-05-01'),
(14, 'my_ujang@gmail.com', '$2y$10$8Hkl9jG8RNRXQK8g4w.1SeqUCwJCWzhqRcH.bBeg4XLuflNCQnboK', 0, 'Ujang', 'Ini', 'Cilamokay', '085888888888', 'ujang.jpg', 1, '', '', '2018-11-28'),
(15, 'dean@ompong.com', '$2y$10$LocdvrqN3hFkzHN4kMBdeO8F93gZbqhzPRqBI4PA5.q0o.hc8X..q', 0, 'Dean', 'Opik', 'Karawang', '0858888888654', 'FB_20170108_03_10_01_Saved_Picture.jpg', 1, '', '', '2018-11-28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
