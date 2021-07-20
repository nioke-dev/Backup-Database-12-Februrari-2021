-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2021 pada 10.32
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `isbn` int(11) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `penerbit` varchar(40) NOT NULL,
  `jumlah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`isbn`, `judul`, `penerbit`, `jumlah`) VALUES
(67272, 'Dasar Java', 'Dicoding', '100'),
(98368, 'Dasar HTML', 'Dicoding', '100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_pinjam`
--

CREATE TABLE `history_pinjam` (
  `id_history` int(11) NOT NULL,
  `isbn_id` varchar(255) DEFAULT NULL,
  `tgl_pinjam` varchar(255) DEFAULT NULL,
  `jumlah_peminjaman` varchar(255) DEFAULT NULL,
  `id_pinjam` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `isbn_id` varchar(255) DEFAULT NULL,
  `tgl_pinjam` varchar(255) DEFAULT NULL,
  `jumlah_peminjaman` varchar(255) DEFAULT NULL,
  `id_pinjam` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `tr_pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
UPDATE buku SET jumlah = jumlah - NEW.jumlah_peminjaman 
WHERE buku.isbn = NEW.isbn_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `isbn_id` int(255) DEFAULT NULL,
  `tgl_pinjam` varchar(255) DEFAULT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL,
  `jumlah_pengembalian` varchar(255) DEFAULT NULL,
  `id_pinjam` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `pengembalian`
--
DELIMITER $$
CREATE TRIGGER `tr_kembali` AFTER INSERT ON `pengembalian` FOR EACH ROW BEGIN
UPDATE buku SET jumlah = jumlah + NEW.jumlah_pengembalian 
WHERE buku.isbn = NEW.isbn_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(3, 'admin', 'admin', '1'),
(6, 'user', 'user', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `history_pinjam`
--
ALTER TABLE `history_pinjam`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `history_pinjam`
--
ALTER TABLE `history_pinjam`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
