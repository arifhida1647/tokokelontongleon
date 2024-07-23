-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 08:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bulan_tahun`
--

CREATE TABLE `tb_bulan_tahun` (
  `id` int(11) UNSIGNED NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` year(4) NOT NULL,
  `bln_thn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_bulan_tahun`
--

INSERT INTO `tb_bulan_tahun` (`id`, `bulan`, `tahun`, `bln_thn`) VALUES
(1, 'Jan', '2020', '01-2020'),
(2, 'Feb', '2020', '02-2020'),
(3, 'Mar', '2020', '03-2020'),
(4, 'Apr', '2020', '04-2020'),
(5, 'Mei', '2020', '05-2020'),
(6, 'Jun', '2020', '06-2020'),
(7, 'Jul', '2020', '07-2020'),
(8, 'Agu', '2020', '08-2020'),
(9, 'Sep', '2020', '09-2020'),
(10, 'Okt', '2020', '10-2020'),
(11, 'Nov', '2020', '11-2020'),
(12, 'Des', '2020', '12-2020'),
(13, 'Jan', '2021', '01-2021'),
(14, 'Feb', '2021', '02-2021'),
(15, 'Mar', '2021', '03-2021'),
(16, 'Apr', '2021', '04-2021'),
(17, 'Mei', '2021', '05-2021'),
(18, 'Jun', '2021', '06-2021'),
(19, 'Jul', '2021', '07-2021'),
(20, 'Agu', '2021', '08-2021'),
(21, 'Sep', '2021', '09-2021'),
(22, 'Okt', '2021', '10-2021'),
(23, 'Nov', '2021', '11-2021'),
(24, 'Des', '2021', '12-2021'),
(25, 'Jan', '2022', '01-2022'),
(26, 'Feb', '2022', '02-2022'),
(27, 'Mar', '2022', '03-2022'),
(28, 'Apr', '2022', '04-2022'),
(29, 'Mei', '2022', '05-2022'),
(30, 'Jun', '2022', '06-2022'),
(31, 'Jul', '2022', '07-2022'),
(32, 'Agu', '2022', '08-2022'),
(33, 'Sep', '2022', '09-2022'),
(34, 'Okt', '2022', '10-2022'),
(35, 'Nov', '2022', '11-2022'),
(36, 'Des', '2022', '12-2022'),
(37, 'Jan', '2023', '01-2023'),
(38, 'Feb', '2023', '02-2023'),
(39, 'Mar', '2023', '03-2023'),
(40, 'Apr', '2023', '04-2023'),
(41, 'Mei', '2023', '05-2023'),
(42, 'Jun', '2023', '06-2023'),
(43, 'Jul', '2023', '07-2023'),
(44, 'Agu', '2023', '08-2023'),
(45, 'Sep', '2023', '09-2023'),
(46, 'Okt', '2023', '10-2023'),
(47, 'Nov', '2023', '11-2023'),
(48, 'Des', '2023', '12-2023'),
(49, 'Jan', '2024', '01-2024'),
(50, 'Feb', '2024', '02-2024'),
(51, 'Mar', '2024', '03-2024'),
(52, 'Apr', '2024', '04-2024'),
(53, 'Mei', '2024', '05-2024'),
(54, 'Jun', '2024', '06-2024'),
(55, 'Jul', '2024', '07-2024'),
(56, 'Agu', '2024', '08-2024'),
(57, 'Sep', '2024', '09-2024'),
(58, 'Okt', '2024', '10-2024'),
(59, 'Nov', '2024', '11-2024'),
(60, 'Des', '2024', '12-2024'),
(61, 'Jan', '2025', '01-2025'),
(62, 'Feb', '2025', '02-2025'),
(63, 'Mar', '2025', '03-2025'),
(64, 'Apr', '2025', '04-2025'),
(65, 'Mei', '2025', '05-2025'),
(66, 'Jun', '2025', '06-2025'),
(67, 'Jul', '2025', '07-2025'),
(68, 'Agu', '2025', '08-2025'),
(69, 'Sep', '2025', '09-2025'),
(70, 'Okt', '2025', '10-2025'),
(71, 'Nov', '2025', '11-2025'),
(72, 'Des', '2025', '12-2025'),
(73, 'Jan', '2026', '01-2026'),
(74, 'Feb', '2026', '02-2026'),
(75, 'Mar', '2026', '03-2026'),
(76, 'Apr', '2026', '04-2026'),
(77, 'Mei', '2026', '05-2026'),
(78, 'Jun', '2026', '06-2026'),
(79, 'Jul', '2026', '07-2026'),
(80, 'Agu', '2026', '08-2026'),
(81, 'Sep', '2026', '09-2026'),
(82, 'Okt', '2026', '10-2026'),
(83, 'Nov', '2026', '11-2026'),
(84, 'Des', '2026', '12-2026'),
(85, 'Jan', '2027', '01-2027'),
(86, 'Feb', '2027', '02-2027'),
(87, 'Mar', '2027', '03-2027'),
(88, 'Apr', '2027', '04-2027'),
(89, 'Mei', '2027', '05-2027'),
(90, 'Jun', '2027', '06-2027'),
(91, 'Jul', '2027', '07-2027'),
(92, 'Agu', '2027', '08-2027'),
(93, 'Sep', '2027', '09-2027'),
(94, 'Okt', '2027', '10-2027'),
(95, 'Nov', '2027', '11-2027'),
(96, 'Des', '2027', '12-2027'),
(97, 'Jan', '2028', '01-2028'),
(98, 'Feb', '2028', '02-2028'),
(99, 'Mar', '2028', '03-2028'),
(100, 'Apr', '2028', '04-2028'),
(101, 'Mei', '2028', '05-2028'),
(102, 'Jun', '2028', '06-2028'),
(103, 'Jul', '2028', '07-2028'),
(104, 'Agu', '2028', '08-2028'),
(105, 'Sep', '2028', '09-2028'),
(106, 'Okt', '2028', '10-2028'),
(107, 'Nov', '2028', '11-2028'),
(108, 'Des', '2028', '12-2028'),
(109, 'Jan', '2029', '01-2029'),
(110, 'Feb', '2029', '02-2029'),
(111, 'Mar', '2029', '03-2029'),
(112, 'Apr', '2029', '04-2029'),
(113, 'Mei', '2029', '05-2029'),
(114, 'Jun', '2029', '06-2029'),
(115, 'Jul', '2029', '07-2029'),
(116, 'Agu', '2029', '08-2029'),
(117, 'Sep', '2029', '09-2029'),
(118, 'Okt', '2029', '10-2029'),
(119, 'Nov', '2029', '11-2029'),
(120, 'Des', '2029', '12-2029'),
(121, 'Jan', '2030', '01-2030'),
(122, 'Feb', '2030', '02-2030'),
(123, 'Mar', '2030', '03-2030'),
(124, 'Apr', '2030', '04-2030'),
(125, 'Mei', '2030', '05-2030'),
(126, 'Jun', '2030', '06-2030'),
(127, 'Jul', '2030', '07-2030'),
(128, 'Agu', '2030', '08-2030'),
(129, 'Sep', '2030', '09-2030'),
(130, 'Okt', '2030', '10-2030'),
(131, 'Nov', '2030', '11-2030'),
(132, 'Des', '2030', '12-2030');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_item` varchar(100) NOT NULL,
  `id_kategori` int(11) UNSIGNED NOT NULL,
  `id_unit` int(11) UNSIGNED NOT NULL,
  `id_pemasok` int(11) UNSIGNED NOT NULL,
  `harga` int(11) UNSIGNED NOT NULL,
  `stok` int(11) UNSIGNED NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id`, `nama_item`, `id_kategori`, `id_unit`, `id_pemasok`, `harga`, `stok`, `updated_at`) VALUES
(1, 'Sarimi Duo', 1, 2, 2, 2500, 0, '2024-07-21 09:13:54'),
(2, 'Minyak Goreng', 4, 4, 2, 20000, 8, '2024-07-19 23:44:52'),
(3, 'Rokok Djarum Super', 6, 6, 1, 20000, 20, '2024-07-19 23:44:52'),
(4, 'Garam Dapur', 4, 5, 1, 2500, 20, '2024-07-19 23:44:52'),
(5, 'Tolak Angin', 3, 2, 1, 3000, 43, '2024-07-19 23:44:52'),
(6, 'Gula Pasir', 5, 4, 1, 10000, 32, '2024-07-19 23:44:52'),
(7, 'Sprit', 4, 6, 3, 5003, 4, '2024-07-21 11:17:45'),
(21, 'Coba', 5, 5, 3, 2000, 3, '2024-07-22 04:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `nama_kategori`, `updated_at`) VALUES
(1, 'Makanan', '2021-10-12 18:31:03'),
(2, 'Minuman', '2021-10-19 22:19:43'),
(3, 'Obat', '2021-10-19 21:56:16'),
(4, 'Sembako', '2021-10-20 21:25:30'),
(5, 'Atk', '2024-07-19 23:35:43'),
(6, 'Lain-lain', '2024-07-19 23:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telp_pelanggan` varchar(20) NOT NULL,
  `alamat_pelanggan` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id`, `nama_pelanggan`, `telp_pelanggan`, `alamat_pelanggan`, `updated_at`) VALUES
(1, 'Umum', '-', '-', '2022-05-02 21:52:31'),
(15, 'arif', '99998', 'jakarta', '2024-07-20 01:24:09'),
(16, 'coba', '888888', 'Jaksel', '2024-07-21 08:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemasok`
--

CREATE TABLE `tb_pemasok` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_pemasok` varchar(100) NOT NULL,
  `telp_pemasok` varchar(20) NOT NULL,
  `alamat_pemasok` varchar(100) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_pemasok`
--

INSERT INTO `tb_pemasok` (`id`, `nama_pemasok`, `telp_pemasok`, `alamat_pemasok`, `keterangan`, `updated_at`) VALUES
(1, 'Pt. Jaya Abadi', '98732783', 'Jakarta', '', '2022-01-21 18:54:53'),
(2, 'Cv Sejahtera', '98732783', 'Bandung', '', '2022-01-21 18:55:08'),
(3, 'Toko Mulia', '09298', 'Bandung', '', '2022-05-02 22:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_pelanggan` int(11) UNSIGNED NOT NULL,
  `total_harga` int(11) UNSIGNED DEFAULT NULL,
  `tunai` int(11) UNSIGNED DEFAULT NULL,
  `kembalian` int(11) UNSIGNED DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id`, `id_pelanggan`, `total_harga`, `tunai`, `kembalian`, `catatan`, `tanggal`, `id_user`, `status`) VALUES
(86, 1, 5000, 10000, 5000, 'aaaaa', '2024-07-21', 14, 'sukses'),
(87, 1, 15000, 100000, 85000, 'aa', '2024-07-21', 14, 'sukses'),
(89, 1, 55000, 55000, 0, '', '2024-07-21', 14, 'sukses'),
(94, 1, 7500, 55000, 47500, 'a', '2024-07-21', 14, 'sukses'),
(95, 1, 125000, 140000, 15000, 'a', '2024-07-21', 14, 'sukses'),
(97, 1, 46000, 50000, 4000, 'beli', '2024-07-21', 14, 'sukses'),
(98, 1, 40000, 100000, 60000, 'test kasir', '2024-07-21', 3, 'sukses'),
(99, 16, 400000, 1000000, 600000, 'belanja', '2024-07-21', 14, 'sukses'),
(102, 1, 5000, 10000, 5000, 'belanja', '2024-07-22', 14, 'sukses'),
(105, 1, 40000, 50000, 10000, '', '2024-07-23', 14, 'sukses');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id_stok` int(11) UNSIGNED NOT NULL,
  `tipe` enum('masuk','keluar') DEFAULT NULL,
  `id_item` int(11) UNSIGNED NOT NULL,
  `id_pemasok` int(11) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `tipe`, `id_item`, `id_pemasok`, `jumlah`, `keterangan`, `id_user`, `updated_at`) VALUES
(5, 'masuk', 6, 3, 2, 'Masuk', 14, '2024-07-20 00:18:18'),
(6, 'masuk', 7, 3, 2, 'Masuk', 14, '2024-07-20 00:19:35'),
(7, 'keluar', 7, 3, 2, 'belanja', 14, '2024-07-20 00:47:08'),
(8, 'keluar', 7, 3, 23, 'belanja', 14, '2024-07-20 00:47:39'),
(9, 'masuk', 21, 3, 2, 'Masuk', 14, '2024-07-21 08:40:57'),
(10, 'keluar', 21, 3, 3, 'Keluar', 14, '2024-07-21 08:41:22'),
(11, 'masuk', 7, 3, 2, 'Masuk', 14, '2024-07-22 13:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) UNSIGNED NOT NULL,
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_item` int(11) UNSIGNED NOT NULL,
  `jumlah_item` int(11) UNSIGNED NOT NULL,
  `harga_item` int(11) UNSIGNED NOT NULL,
  `diskon_item` int(11) UNSIGNED DEFAULT NULL,
  `subtotal` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_penjualan`, `id_user`, `id_item`, `jumlah_item`, `harga_item`, `diskon_item`, `subtotal`) VALUES
(12, 86, 14, 1, 2, 2500, 0, 5000),
(13, 87, 14, 1, 2, 2500, 0, 5000),
(14, 87, 14, 4, 2, 2500, 0, 5000),
(15, 89, 14, 2, 2, 20000, 0, 40000),
(18, 94, 14, 1, 3, 2500, 0, 7500),
(20, 95, 14, 1, 40, 2500, 0, 100000),
(21, 95, 14, 1, 10, 2500, 0, 25000),
(22, 97, 14, 3, 2, 20000, 0, 40000),
(23, 97, 14, 5, 2, 3000, 0, 6000),
(24, 98, 3, 3, 2, 20000, 0, 40000),
(25, 99, 14, 2, 20, 20000, 0, 400000),
(53, 102, 14, 1, 2, 2500, 0, 5000),
(54, 105, 14, 2, 2, 20000, 0, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_unit`
--

CREATE TABLE `tb_unit` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_unit` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_unit`
--

INSERT INTO `tb_unit` (`id`, `nama_unit`, `updated_at`) VALUES
(1, 'Botol', '2022-05-01 16:07:11'),
(2, 'Pcs', '2021-10-12 18:31:25'),
(3, 'Buah', '2021-10-12 18:31:29'),
(4, 'Kg', '2022-05-02 21:57:21'),
(5, 'Gram', '2022-05-02 21:58:11'),
(6, 'Bungkus', '2024-07-19 16:52:15'),
(8, 'Liter', '2024-07-21 08:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `role` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `username`, `role`, `password`) VALUES
(3, 'kasir', 'Kasir', '12345678'),
(14, 'owner', 'Owner', '12345678'),
(15, 'admin', 'Admin', '12345678'),
(16, 'leon123', 'Kasir', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bulan_tahun`
--
ALTER TABLE `tb_bulan_tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_item_id_unit_foreign` (`id_unit`),
  ADD KEY `id_kategori_id_unit` (`id_kategori`,`id_unit`),
  ADD KEY `id_pemasok` (`id_pemasok`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pemasok`
--
ALTER TABLE `tb_pemasok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_penjualan_id_user_foreign` (`id_user`),
  ADD KEY `id_pelanggan_id_user` (`id_pelanggan`,`id_user`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `tb_stok_id_pemasok_foreign` (`id_pemasok`),
  ADD KEY `tb_stok_id_user_foreign` (`id_user`),
  ADD KEY `id_item_id_pemasok_id_user` (`id_item`,`id_pemasok`,`id_user`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `tb_transaksi_id_item_foreign` (`id_item`),
  ADD KEY `fk_user` (`id_user`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `tb_unit`
--
ALTER TABLE `tb_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bulan_tahun`
--
ALTER TABLE `tb_bulan_tahun`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pemasok`
--
ALTER TABLE `tb_pemasok`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tb_unit`
--
ALTER TABLE `tb_unit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD CONSTRAINT `tb_item_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_item_id_pemasok_foreign` FOREIGN KEY (`id_pemasok`) REFERENCES `tb_pemasok` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_item_id_unit_foreign` FOREIGN KEY (`id_unit`) REFERENCES `tb_unit` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `tb_penjualan_id_pelanggan_foreign` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penjualan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD CONSTRAINT `tb_stok_id_item_foreign` FOREIGN KEY (`id_item`) REFERENCES `tb_item` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_stok_id_pemasok_foreign` FOREIGN KEY (`id_pemasok`) REFERENCES `tb_pemasok` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_stok_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tb_penjualan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_transaksi_id_item_foreign` FOREIGN KEY (`id_item`) REFERENCES `tb_item` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
