-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 10:32 AM
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
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_item` varchar(100) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `id_pemasok` int(11) UNSIGNED NOT NULL,
  `harga` int(11) UNSIGNED NOT NULL,
  `stok` int(11) UNSIGNED NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id`, `nama_item`, `kategori`, `unit`, `id_pemasok`, `harga`, `stok`, `updated_at`) VALUES
(1, 'Sarimi Duo', 'Makanan', 'Bungkus', 2, 2500, 2, '2024-08-27 08:22:22'),
(2, 'Minyak Goreng', 'Lain-lain', 'Kg', 2, 20000, 8, '2024-08-27 08:22:12'),
(3, 'Rokok Djarum Super', 'Lain-lain', 'Bungkus', 1, 20000, 11, '2024-08-27 08:22:01'),
(4, 'Garam Dapur', 'Makanan', 'Kg', 1, 2500, 20, '2024-08-27 08:21:52'),
(5, 'Tolak Angin', 'Minuman', 'Liter', 1, 3000, 43, '2024-08-27 08:21:15'),
(6, 'Gula Pasir', 'Makanan', 'Kg', 1, 10000, 32, '2024-08-27 08:20:59'),
(7, 'Sprit', 'Minuman', 'Liter', 3, 5003, 4, '2024-08-27 08:20:39'),
(21, 'Coba', 'Minuman', 'Bungkus', 3, 2000, 23, '2024-08-27 08:24:41');

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
(16, 'coba', '888888', 'Jaksel', '2024-08-20 08:56:44');

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
(105, 1, 40000, 50000, 10000, '', '2024-07-23', 14, 'sukses'),
(107, 15, 20000, 55000, 35000, 'a', '2024-08-20', 15, 'sukses'),
(109, 1, 5000, 10000, 5000, '', '2024-08-27', 14, 'sukses');

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
(11, 'masuk', 7, 3, 2, 'Masuk', 14, '2024-07-22 13:27:07'),
(12, 'masuk', 21, 3, 20, 'test', 14, '2024-08-19 12:48:27'),
(13, 'keluar', 21, 3, 1, 'test', 14, '2024-08-19 12:50:50'),
(14, 'masuk', 21, 3, 1, 'rrr', 15, '2024-08-19 12:58:53'),
(15, 'masuk', 21, 3, 10, 'test', 15, '2024-08-19 13:00:56'),
(16, 'keluar', 21, 3, 10, 'test', 15, '2024-08-19 13:01:24'),
(17, 'masuk', 21, 3, 2, 'test', 14, '2024-08-27 08:24:54'),
(18, 'keluar', 21, 3, 2, 'test', 14, '2024-08-27 08:25:04');

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
(54, 105, 14, 2, 2, 20000, 0, 40000),
(62, 107, 15, 3, 1, 20000, 0, 20000),
(63, 109, 14, 1, 2, 2500, 0, 5000);

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
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemasok` (`id_pemasok`);

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
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  ADD CONSTRAINT `tb_item_id_pemasok_foreign` FOREIGN KEY (`id_pemasok`) REFERENCES `tb_pemasok` (`id`) ON UPDATE CASCADE;

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
