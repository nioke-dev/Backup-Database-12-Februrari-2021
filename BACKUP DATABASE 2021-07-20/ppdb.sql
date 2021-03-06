-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2021 pada 10.38
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
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`no`, `username`, `password`) VALUES
(1, 'samsul', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `NISN` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `asal_sekolah` varchar(25) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `jenis_kel` varchar(25) NOT NULL,
  `agama` varchar(25) NOT NULL,
  `no_tel` varchar(25) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ayah` varchar(25) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `agamaa` varchar(25) NOT NULL,
  `no_tell` varchar(25) NOT NULL,
  `ibu` varchar(25) NOT NULL,
  `pekerjaann` varchar(25) NOT NULL,
  `agamai` varchar(25) NOT NULL,
  `no_teel` varchar(25) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `mtk` varchar(25) NOT NULL,
  `ipa` varchar(25) NOT NULL,
  `bindo` varchar(25) NOT NULL,
  `bing` varchar(25) NOT NULL,
  `RataRata` varchar(25) NOT NULL,
  `keterangan` varchar(25) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `no` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`no`, `kode`) VALUES
(1, 'samsulTamvan'),
(2, 'edoCantik'),
(3, 'omNurul'),
(4, 'mastahIbnu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `token`
--
ALTER TABLE `token`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
