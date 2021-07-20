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
-- Database: `kancah_pena`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_majalah`
--

CREATE TABLE `tb_detail_majalah` (
  `id_edisi` char(6) NOT NULL,
  `page1` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `artikel` longtext NOT NULL,
  `edisi` varchar(30) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tahun` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_majalah`
--

INSERT INTO `tb_detail_majalah` (`id_edisi`, `page1`, `judul`, `artikel`, `edisi`, `bulan`, `tahun`) VALUES
('112020', '1.jpg', 'Maspion IT Bersinergi', 'Maspion adalah salah satu produsen perkakas yang cukup besar di Indonesia.Perusahaan ini berdiri sekitar 1962 dan memproduksi perabot rumah tangga dengan bahan plastik seperti ember,baskom,dan sebagainya.Maspion merupakan singkatan dari M=Mengajak A=Anda S=Selalu P=Percaya I=Industri O=Olahan N=Nasional.Dan saat ini Maspion Group telah memiliki cabang tersebar di Jawa Timur dan Jawa Barat terutama daerah Cibitung,Jakarta.', 'November 2020', 'November', '2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_edisi`
--

CREATE TABLE `tb_edisi` (
  `id_edisi` varchar(6) NOT NULL,
  `edisi` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_edisi`
--

INSERT INTO `tb_edisi` (`id_edisi`, `edisi`) VALUES
('112020', 'November 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_img_majalah`
--

CREATE TABLE `tb_img_majalah` (
  `id_edisi` varchar(6) NOT NULL,
  `edisi` varchar(30) NOT NULL,
  `page1` varchar(100) NOT NULL,
  `page2` varchar(100) NOT NULL,
  `page3` varchar(100) NOT NULL,
  `page4` varchar(100) NOT NULL,
  `page5` varchar(100) NOT NULL,
  `page6` varchar(100) NOT NULL,
  `page7` varchar(100) NOT NULL,
  `page8` varchar(100) NOT NULL,
  `page9` varchar(100) NOT NULL,
  `page10` varchar(100) NOT NULL,
  `page11` varchar(100) NOT NULL,
  `page12` varchar(100) NOT NULL,
  `page13` varchar(100) NOT NULL,
  `page14` varchar(100) NOT NULL,
  `page15` varchar(100) NOT NULL,
  `page16` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_img_majalah`
--

INSERT INTO `tb_img_majalah` (`id_edisi`, `edisi`, `page1`, `page2`, `page3`, `page4`, `page5`, `page6`, `page7`, `page8`, `page9`, `page10`, `page11`, `page12`, `page13`, `page14`, `page15`, `page16`) VALUES
('112020', 'November 2020', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg', '11.jpg', '12.jpg', '13.jpg', '14.jpg', '15.jpg', '16.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_koment` int(11) NOT NULL,
  `wakt_koment` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama` varchar(25) NOT NULL,
  `koment` text NOT NULL,
  `status_bls` int(1) NOT NULL,
  `status_filter` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komentar`
--

INSERT INTO `tb_komentar` (`id_koment`, `wakt_koment`, `nama`, `koment`, `status_bls`, `status_filter`) VALUES
(1, '0000-00-00 00:00:00', 'M.Badrut Tamam', 'Saya Mau Berkomentar', 0, 1),
(2, '2020-11-27 23:50:58', 'M.Badrut Tamam', 'Aku berkomentar', 0, 1),
(3, '2020-11-28 19:41:25', 'M.Badrut Tamam', 'Komentar kedua', 0, 1),
(4, '2020-11-28 20:45:53', 'M Wahyudi', 'Ini Komentar Wahyudi', 0, 1),
(5, '2020-11-29 19:39:53', 'Nurul', 'coba komentar', 0, 1),
(6, '2020-11-30 15:50:54', 'M.Badrut Tamam', 'Saya Membalas', 5, 0),
(7, '2020-11-30 16:24:41', 'Mamat', 'Saya Balas juga', 2, 0),
(8, '2020-11-30 16:31:03', 'Nur Kholifah', 'Ini Tanggapan', 0, 0),
(9, '2020-11-30 23:32:33', 'Nur Kholifah', 'Ini Tanggapan', 0, 1),
(10, '2020-12-02 04:09:02', 'M.Badrut Tamam', 'Komentar', 0, 0),
(11, '2020-12-04 03:04:01', 'Tamam', 'Cova alert', 0, 0),
(12, '2020-12-04 03:05:24', 'Yudi', 'Alert 2', 0, 1),
(13, '2020-12-03 20:06:42', 'mell', 'oooooohh', 12, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_majalah`
--

CREATE TABLE `tb_majalah` (
  `id_edisi` char(6) NOT NULL,
  `tgl_terbit` datetime NOT NULL,
  `big_topic` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_majalah`
--

INSERT INTO `tb_majalah` (`id_edisi`, `tgl_terbit`, `big_topic`) VALUES
('112020', '2020-12-03 23:36:37', 'Maspion IT Bersinergi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_detail_majalah`
--
ALTER TABLE `tb_detail_majalah`
  ADD PRIMARY KEY (`id_edisi`);

--
-- Indeks untuk tabel `tb_edisi`
--
ALTER TABLE `tb_edisi`
  ADD PRIMARY KEY (`id_edisi`);

--
-- Indeks untuk tabel `tb_img_majalah`
--
ALTER TABLE `tb_img_majalah`
  ADD PRIMARY KEY (`id_edisi`);

--
-- Indeks untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_koment`);

--
-- Indeks untuk tabel `tb_majalah`
--
ALTER TABLE `tb_majalah`
  ADD PRIMARY KEY (`id_edisi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_koment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
