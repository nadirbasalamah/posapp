-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 05:01 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(11) NOT NULL,
  `nm_app` varchar(255) DEFAULT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `home_txt` text,
  `footer_txt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nm_app`, `nama_toko`, `alamat_toko`, `home_txt`, `footer_txt`) VALUES
(1, 'POSApp', 'Toko Serba Ada', 'Jl. Kepastian dan Yakin No. 11 - Kota', '<strong>POSApp (Point of Sales)</strong> adalah aplikasi sederhana yang dapat digunakan untuk mengontrol keluar masuk barang serta dapat melakukan transaksi penjualan secara langsung.', '');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` bigint(20) NOT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `kategori_barang` int(11) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga_beli` bigint(20) DEFAULT NULL,
  `harga_jual` bigint(20) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `waktu_masuk` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `kategori_barang`, `nama_barang`, `satuan`, `harga_beli`, `harga_jual`, `tanggal_masuk`, `waktu_masuk`) VALUES
(1, 'HAN2018021711', 1, 'Xiaomi Note 5a', '1', 1625000, 1795000, '2018-02-17', '12:14:08'),
(2, 'HAN2018021712', 1, 'Xiaomi Redmi 4a', '1', 1505000, 1605000, '2018-02-17', '12:14:51'),
(3, 'HAN2018021713', 1, 'Xiaomi Redmi 4x Prime RAM 3GB', '1', 1929000, 2029000, '2018-02-17', '12:48:16'),
(4, 'HAN2018021714', 1, 'Xiaomi Redmi Note 5a Prime RAM 3GB', '1', 2000000, 2099000, '2018-02-17', '12:48:33'),
(5, 'HAN2018021715', 1, 'Xiaomi Mi A1 RAM 4GB ', '1', 2790000, 2990000, '2018-02-17', '12:17:57'),
(6, 'HAN2018021816', 1, 'Xiaomi Redmi Note 4x 3/32', '1', 2250000, 2399000, '2018-02-18', '09:41:26'),
(7, 'HAN2018021717', 1, 'Xiaomi Redmi 4a 16 GB Gold', '1', 1354000, 1494000, '2018-02-17', '12:19:40'),
(8, 'HAN2018021718', 1, 'Samsung J2 Prime', '1', 1338000, 1438000, '2018-02-17', '12:20:37'),
(9, 'HAN2018021719', 1, 'Samsung Galaxy A7 2017', '1', 3370000, 3490000, '2018-02-17', '12:21:19'),
(10, 'HAN20180217110', 1, 'Samsung S8 Plus 64GB', '1', 8349000, 8499000, '2018-02-17', '12:21:59'),
(11, 'HAN20180217111', 1, 'Samsung S7 Edge', '1', 4440000, 4550000, '2018-02-17', '12:22:43'),
(12, 'HAN20180217112', 1, 'Samsung Galaxy A3 2017', '1', 3229000, 3349000, '2018-02-17', '12:23:16'),
(13, 'HAN20180217113', 1, 'Samsung J5 J5000G 2015', '1', 1450000, 1600000, '2018-02-17', '12:23:55'),
(14, 'HAN20180217114', 1, 'Samsung Galaxy J5 Pro 2017', '1', 3050000, 3129000, '2018-02-17', '12:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `barang_master`
--

CREATE TABLE `barang_master` (
  `id_bmaster` bigint(20) NOT NULL,
  `id_br` bigint(20) DEFAULT NULL,
  `stok` bigint(20) DEFAULT NULL,
  `tglup` date DEFAULT NULL,
  `wktup` time DEFAULT NULL,
  `tipe` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_master`
--

INSERT INTO `barang_master` (`id_bmaster`, `id_br`, `stok`, `tglup`, `wktup`, `tipe`) VALUES
(1, 1, 12, '2018-02-17', '12:14:08', 'masuk'),
(2, 2, 12, '2018-02-17', '12:14:51', 'masuk'),
(3, 3, 12, '2018-02-17', '12:15:48', 'masuk'),
(4, 4, 12, '2018-02-17', '12:16:56', 'masuk'),
(5, 5, 12, '2018-02-17', '12:17:57', 'masuk'),
(6, 6, 12, '2018-02-17', '12:18:43', 'masuk'),
(7, 7, 12, '2018-02-17', '12:19:40', 'masuk'),
(8, 8, 12, '2018-02-17', '12:20:37', 'masuk'),
(9, 9, 12, '2018-02-17', '12:21:19', 'masuk'),
(10, 10, 12, '2018-02-17', '12:21:59', 'masuk'),
(11, 11, 12, '2018-02-17', '12:22:43', 'masuk'),
(12, 12, 12, '2018-02-17', '12:23:16', 'masuk'),
(13, 13, 12, '2018-02-17', '12:23:55', 'masuk'),
(14, 14, 12, '2018-02-17', '12:31:08', 'masuk'),
(15, 1, -1, '2018-02-17', '12:33:42', 'keluar'),
(16, 2, -1, '2018-02-17', '12:35:46', 'keluar'),
(17, 5, -1, '2018-02-17', '12:38:42', 'keluar'),
(18, 7, -1, '2018-02-17', '12:39:24', 'keluar'),
(19, 9, -1, '2018-02-17', '12:40:24', 'keluar'),
(20, 10, -1, '2018-02-17', '12:42:02', 'keluar'),
(21, 14, -1, '2018-02-17', '12:42:36', 'keluar'),
(22, 12, -1, '2018-02-17', '12:43:11', 'keluar'),
(23, 8, -1, '2018-02-17', '12:43:42', 'keluar'),
(24, 13, -1, '2018-02-17', '12:44:02', 'keluar'),
(25, 11, -1, '2018-02-17', '12:44:14', 'keluar'),
(26, 6, -1, '2018-02-17', '12:47:58', 'keluar'),
(27, 3, -1, '2018-02-17', '12:49:05', 'keluar'),
(28, 4, -1, '2018-02-17', '12:49:23', 'keluar'),
(29, 3, 1, '2018-02-17', '12:39:50', 'masuk'),
(30, 3, -1, '2018-02-17', '12:50:57', 'keluar'),
(31, 6, -1, '2018-02-18', '09:41:42', 'keluar'),
(32, 6, -1, '2018-02-18', '09:44:53', 'keluar'),
(33, 14, -1, '2018-02-18', '09:45:20', 'keluar');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `kode_kategori` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `kode_kategori`) VALUES
(1, 'Handphone', 'HAN'),
(2, 'Kartu Perdana', 'KAR');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_master` bigint(20) DEFAULT NULL,
  `id_brg` bigint(20) DEFAULT NULL,
  `jml_jual` bigint(20) DEFAULT NULL,
  `sub_total` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_master`, `id_brg`, `jml_jual`, `sub_total`) VALUES
(1, 1, 1, 1, 1795000),
(2, 2, 2, 1, 1605000),
(3, 3, 5, 1, 2990000),
(4, 4, 7, 1, 1494000),
(5, 5, 9, 1, 3490000),
(6, 6, 10, 1, 8499000),
(7, 7, 14, 1, 3129000),
(8, 8, 12, 1, 3349000),
(9, 9, 8, 1, 1438000),
(10, 10, 13, 1, 1600000),
(11, 11, 11, 1, 4550000),
(12, 12, 6, 1, 2399000),
(13, 13, 3, 1, 2029000),
(14, 14, 4, 1, 2099000),
(15, 15, 3, 1, 2029000),
(16, 16, 6, 1, 2399000),
(17, 17, 6, 1, 2399000),
(18, 18, 14, 1, 3129000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_master`
--

CREATE TABLE `penjualan_master` (
  `id_pjmaster` bigint(20) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_trx` bigint(20) DEFAULT NULL,
  `grand_total` bigint(20) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `bayar` bigint(20) DEFAULT NULL,
  `kembalian` bigint(20) DEFAULT NULL,
  `keterangan` text,
  `tgl_trx` date DEFAULT NULL,
  `waktu_trx` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_master`
--

INSERT INTO `penjualan_master` (`id_pjmaster`, `id_user`, `no_trx`, `grand_total`, `diskon`, `total`, `bayar`, `kembalian`, `keterangan`, `tgl_trx`, `waktu_trx`) VALUES
(1, 1, 201802171, 1795000, 5, 1705250, 1750000, 44750, '', '2018-02-17', '12:33:42'),
(2, 1, 201802172, 1605000, 0, 1605000, 1610000, 5000, '', '2018-02-17', '12:35:45'),
(3, 1, 201802173, 2990000, 1, 2960100, 3000000, 39900, '', '2018-02-17', '12:38:42'),
(4, 1, 201802174, 1494000, 0, 1494000, 1500000, 6000, '', '2018-02-17', '12:39:24'),
(5, 1, 201802175, 3490000, 1, 3455100, 3500000, 44900, '', '2018-02-17', '12:40:24'),
(6, 1, 201802176, 8499000, 0, 8499000, 8500000, 1000, '', '2018-02-17', '12:42:02'),
(7, 1, 201802177, 3129000, 0, 3129000, 3200000, 71000, '', '2018-02-17', '12:42:36'),
(8, 1, 201802178, 3349000, 0, 3349000, 3400000, 51000, '', '2018-02-17', '12:43:11'),
(9, 1, 201802179, 1438000, 0, 1438000, 1500000, 62000, '', '2018-02-17', '12:43:42'),
(10, 1, 201802180, 1600000, 0, 1600000, 1600000, 0, '', '2018-02-17', '12:44:02'),
(11, 1, 201802181, 4550000, 0, 4550000, 4550000, 0, '', '2018-02-17', '12:44:14'),
(12, 1, 201802182, 2399000, 0, 2399000, 2400000, 1000, '', '2018-02-17', '12:47:58'),
(13, 1, 201802183, 2029000, 1, 2008710, 2010000, 1290, '', '2018-02-17', '12:49:05'),
(14, 1, 201802184, 2099000, 0, 2099000, 2100000, 1000, '', '2018-02-17', '12:49:23'),
(15, 1, 201802185, 2029000, 0, 2029000, 2000000, -29000, '', '2018-02-17', '12:50:57'),
(16, 1, 201802186, 2399000, 0, 2399000, 2400000, 1000, '', '2018-02-18', '09:41:42'),
(17, 2, 201802187, 2399000, 1, 2375010, 2400000, 24990, '', '2018-02-18', '09:44:53'),
(18, 2, 201802188, 3129000, 0, 3129000, 3130000, 1000, '', '2018-02-18', '09:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `satuan`) VALUES
(1, 'Unit'),
(2, 'Pcs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `akses_user` int(11) DEFAULT NULL,
  `status_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `akses_user`, `status_user`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1, 1),
(2, 'erfandibagus', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Erfandi Bagus', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_master`
--
ALTER TABLE `barang_master`
  ADD PRIMARY KEY (`id_bmaster`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_master`
--
ALTER TABLE `penjualan_master`
  ADD PRIMARY KEY (`id_pjmaster`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `barang_master`
--
ALTER TABLE `barang_master`
  MODIFY `id_bmaster` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `penjualan_master`
--
ALTER TABLE `penjualan_master`
  MODIFY `id_pjmaster` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
