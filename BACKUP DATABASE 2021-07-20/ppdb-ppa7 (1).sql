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
-- Database: `ppdb-ppa7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'budi', '12345', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `entry_pendaftaran`
--

CREATE TABLE `entry_pendaftaran` (
  `No_Pendaftaran` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `Tempat_Lahir` varchar(255) NOT NULL,
  `Tgl_Bln_Thn` varchar(255) NOT NULL,
  `Kelamin` varchar(255) NOT NULL,
  `RT_RW` varchar(255) NOT NULL,
  `Dusun` varchar(255) NOT NULL,
  `Kabupaten` varchar(255) NOT NULL,
  `Kecamatan` varchar(255) NOT NULL,
  `Desa` varchar(255) NOT NULL,
  `Kode_Pos` varchar(255) NOT NULL,
  `Telpon_HP` varchar(255) NOT NULL,
  `Nama_Ayah` varchar(255) NOT NULL,
  `Nama_Ibu` varchar(255) NOT NULL,
  `Penghasilan` varchar(255) NOT NULL,
  `Asal_Sekolah` varchar(255) NOT NULL,
  `Nama_Sekolah` varchar(255) NOT NULL,
  `Tanggal_Daftar` varchar(255) NOT NULL,
  `Petugas` varchar(255) NOT NULL,
  `bind` int(11) NOT NULL,
  `bing` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `sertifikat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `entry_pendaftaran`
--

INSERT INTO `entry_pendaftaran` (`No_Pendaftaran`, `password`, `nisn`, `nik`, `nama`, `Tempat_Lahir`, `Tgl_Bln_Thn`, `Kelamin`, `RT_RW`, `Dusun`, `Kabupaten`, `Kecamatan`, `Desa`, `Kode_Pos`, `Telpon_HP`, `Nama_Ayah`, `Nama_Ibu`, `Penghasilan`, `Asal_Sekolah`, `Nama_Sekolah`, `Tanggal_Daftar`, `Petugas`, `bind`, `bing`, `mtk`, `ipa`, `foto`, `sertifikat`) VALUES
(1, '123', '005', '3513184408790001', 'nurul', 'probolinggo', '2004-01-08', 'Laki-Laki', '08 / 03', 'Krajan', 'Probolinggo', 'Gending', 'Banyuanyar Lor', '67272', '082335152095', 'Mursyid', 'Agustine', '3.000.000 s/d 5.000.000', 'SMP', 'SMPN 2 GENDING', '21 Maret 2021', 'Panitia', 0, 0, 0, 0, 'slider1.jpg', ''),
(2, '123', '004', '', 'Samsul Maulana', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', ''),
(3, '123', '003', '', 'Cinta Mayasari', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', ''),
(4, '123', '002', '', 'Vera Hariyah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', ''),
(5, '123', '001', '', 'Sipol', 'probolinggo', '2003-06-25', 'Laki-Laki', '005 / 002', 'Krajan', 'Probolinggo', 'Gending', 'Banyuanyar Lor', '67272', '085231533324', 'Samosir', 'Adiarja', '1.000.000 s/d 2.000.000', 'SMP', 'MTS N 2 PROBOLINGGO', '2021-03-30', 'Osis', 0, 0, 0, 0, '3x4.png', ''),
(6, '123', '123', '', 'saya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filedownload`
--

CREATE TABLE `filedownload` (
  `id` int(11) NOT NULL,
  `filename` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `filedownload`
--

INSERT INTO `filedownload` (`id`, `filename`) VALUES
(1, 'Formulir Kosong.xlsx'),
(2, 'Book1.xlsx'),
(3, 'new.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `nama`, `ket`) VALUES
(1, 'kelulusan', 'DISEMBUNYIKAN'),
(2, 'petunjuk', '<ol>\r\n	<li>Petunjuk ini</li>\r\n	<li>ada di menu setting&nbsp;</li>\r\n	<li>silahkan diubah</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>'),
(3, 'kontak', '<ul>\r\n	<li>saya : 081232323</li>\r\n	<li>Dia : 087654</li>\r\n	<li>Kamu : 08978654</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `npsn` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL DEFAULT 'Pilih Jenis Kelamin',
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(13) NOT NULL,
  `ayah` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `Asal_Sekolah` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `bind` int(11) NOT NULL,
  `bing` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `sertifikat` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `password`, `npsn`, `nama`, `jk`, `tempat_lahir`, `tgl_lahir`, `alamat`, `telp`, `ayah`, `ibu`, `Asal_Sekolah`, `foto`, `bind`, `bing`, `mtk`, `sertifikat`, `status`) VALUES
('001', '123', '1234', 'Budi', 'Laki-Laki', 'Bangunsari', '2020-04-22', 'Bangunsari Purwodadi Musi Rawas', '081234567890', 'Rifqie', 'Nuraini', 'SDN MANGUNHARJO', 'mura2.png', 56, 77, 90, 'Dok baru 2019-11-24 09.34.03_1.jpg', 'DITOLAK'),
('002', '123', '3456', 'ABU', 'Perempuan', 'Ciawi', '2020-05-21', 'Rumahku di Jakarta', '081234567890', 'Ayah', 'Ibu', 'SDN 01 Asal', '2526734946.jpg', 73, 77, 45, '', 'DITERIMA'),
('003', '123', '', 'ifa', 'Pilih Jenis Kelamin', '', '0000-00-00', '', '', '', '', '', '', 0, 0, 0, '', ''),
('5252', '123', '', 'ifa', 'Pilih Jenis Kelamin', '', '0000-00-00', '', '', '', '', '', '', 0, 0, 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `entry_pendaftaran`
--
ALTER TABLE `entry_pendaftaran`
  ADD PRIMARY KEY (`No_Pendaftaran`);

--
-- Indeks untuk tabel `filedownload`
--
ALTER TABLE `filedownload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `entry_pendaftaran`
--
ALTER TABLE `entry_pendaftaran`
  MODIFY `No_Pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `filedownload`
--
ALTER TABLE `filedownload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
