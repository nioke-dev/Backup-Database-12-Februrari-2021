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
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `no_induk` varchar(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`no_induk`, `nama`, `nama_wali`, `tanggal_lahir`, `telepon`, `alamat`) VALUES
('S001', 'Ahmad Yusuf', 'Yusuf', '2002-03-11', '081202834957', 'Jl. Perintis Kemerdekaan No.20'),
('S003', 'Rahmad nnnn', 'Syahrul', '2003-04-14', '081340673920', 'Jl. Tentara Pelajar No.3'),
('S004', 'Ridwan Rahman', 'Rahman', '2002-09-18', '081186746305', 'Jl. AP. Pettarani No.2'),
('S005', 'Putri Nur Hakim', 'Hakim', '2001-09-29', '081195826486', 'Jl. Sultan Alauddin No.5');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`no_induk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
