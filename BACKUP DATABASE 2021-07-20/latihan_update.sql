-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2021 pada 10.37
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
-- Database: `latihan_update`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`) VALUES
(1, 'Joni', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_1`
--

CREATE TABLE `siswa_1` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  `hobi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa_1`
--

INSERT INTO `siswa_1` (`id`, `nama`, `kelas`, `gender`, `provinsi`, `hobi`) VALUES
(1, 'Kumala', 'X', 'Pria', 'Jawa Timur', 'Ngoding'),
(14, 'nurul', 'X', 'Pria', 'Jawa Timur', 'Musikal Ngoding ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_2`
--

CREATE TABLE `siswa_2` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `agama` varchar(40) NOT NULL,
  `hobi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa_2`
--

INSERT INTO `siswa_2` (`id`, `nama`, `kelas`, `gender`, `agama`, `hobi`) VALUES
(3, 'samsul', '11', 'Pria', 'Islam', 'Membaca  '),
(5, 'nurul', '11', 'Pria', 'Islam', 'Membaca  '),
(8, 'ibnu', '13', 'Pria', 'Islam', 'Ngoding  Membaca');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa_1`
--
ALTER TABLE `siswa_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa_2`
--
ALTER TABLE `siswa_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa_1`
--
ALTER TABLE `siswa_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `siswa_2`
--
ALTER TABLE `siswa_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
