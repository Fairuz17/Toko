-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2021 pada 16.09
-- Versi server: 8.0.23
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barang_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int NOT NULL,
  `jenis_barang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `merk_barang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ukuran` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stock` int NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `jenis_barang`, `merk_barang`, `ukuran`, `stock`, `harga`) VALUES
(102, 'Keramik Golongan A', 'Roman', '20 x 20', 30, 87000),
(103, 'Berkah Bulan Ramadhan', 'Tahril', 'Religi', -31, 0),
(104, 'Keramik Warna Tua', 'Arwana', '20 x 20', 90, 37500),
(105, 'Keramik Pure Color', 'Milan', '50 x 50', 65, 94500),
(107, 'Marmer', 'Sejahtera', '40 x 40', 65, 120000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `id_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `nama_pembeli`, `id_barang`) VALUES
(1, 'userbaru', '120000'),
(2, 'userbaru', '107'),
(3, 'userbaru', '107'),
(4, 'userbaru', '107'),
(5, 'userbaru', '107'),
(6, 'userbaru', '107'),
(7, 'userbaru', '107'),
(8, 'userbaru', '107'),
(9, 'userbaru', '107'),
(10, 'userbaru', '103'),
(11, 'userbaru', '102'),
(12, 'user', '104'),
(13, 'user', '102'),
(14, 'user', '105'),
(15, 'user', '107');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` int NOT NULL,
  `alamat` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nama_pembeli` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role` int NOT NULL,
  `no_telp` int NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `kondisi` int NOT NULL,
  `jumlah_harga` int NOT NULL,
  `jumlah_beli` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nama_pembeli`, `password`, `role`, `no_telp`, `alamat`, `kondisi`, `jumlah_harga`, `jumlah_beli`) VALUES
('aaa', '111', 1, 1, '', 0, 0, 0),
('admin', 'admin', 2, 0, '', 0, 0, 0),
('asd', '111', 1, 0, '', 0, 0, 0),
('carl_jonson', '123', 1, 1, '', 0, 0, 0),
('qwe', 'qwe', 1, 1, '', 0, 0, 0),
('root', '123', 1, 1, '', 0, 0, 0),
('user', 'user', 1, 2147483647, 'Jl. Temanggung No 5 Purwokerto', 0, 600000, 5),
('userbaru', '123', 1, 1111, 'dasda', 0, 2670000, 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nama_pembeli`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
