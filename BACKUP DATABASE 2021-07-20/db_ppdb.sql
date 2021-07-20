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
-- Database: `db_ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `no_pendaftaran` int(11) NOT NULL,
  `no_un_pendaftar` varchar(255) DEFAULT NULL,
  `nama_pendaftar` varchar(255) DEFAULT NULL,
  `nilai_ppdb` double DEFAULT NULL,
  `jurusan_pendaftaran` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`no_pendaftaran`, `no_un_pendaftar`, `nama_pendaftar`, `nilai_ppdb`, `jurusan_pendaftaran`, `status`) VALUES
(29, '1234567891234567', 'Muhammad Nurul Mustofa', 84.75, 'RPL (Rekayasa Perangkat Lunak)', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `no_register` int(11) NOT NULL,
  `no_un` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `school_origin` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `bindo` double DEFAULT NULL,
  `mtk` double DEFAULT NULL,
  `ipa` double DEFAULT NULL,
  `bing` double DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `register`
--

INSERT INTO `register` (`no_register`, `no_un`, `name`, `gender`, `birth_date`, `address`, `school_origin`, `religion`, `bindo`, `mtk`, `ipa`, `bing`, `password`) VALUES
(3, '1234567891234567', 'Muhammad Nurul Mustofa', 'Laki - Laki', '08 januari 2004', 'Dusun Krajan, RT 8 RW 3 Banyuanyar Lor Gending Probolinggo', 'SMPN 2 GENDING', 'Islam', 80, 84, 90, 85, 'syarifah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `register_admin`
--

CREATE TABLE `register_admin` (
  `no_register` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `register_admin`
--

INSERT INTO `register_admin` (`no_register`, `username`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `agama`, `password`) VALUES
(1, 'nurulmustofa', 'nurul mustofa', 'Laki - Laki', '8 januari 2004', 'banyuanyar lor rt 8 rw 3', 'islam', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`no_pendaftaran`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`no_register`);

--
-- Indeks untuk tabel `register_admin`
--
ALTER TABLE `register_admin`
  ADD PRIMARY KEY (`no_register`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `no_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `no_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `register_admin`
--
ALTER TABLE `register_admin`
  MODIFY `no_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
