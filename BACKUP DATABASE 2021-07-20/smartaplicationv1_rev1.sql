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
-- Database: `smartaplicationv1_rev1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_admin`
--

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL,
  `XSekolah` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XTingkat` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `XIp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XAlamat` text COLLATE latin1_general_ci NOT NULL,
  `XKec` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKab` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XProp` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XTelp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XFax` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XEmail` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWeb` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XLogo` text COLLATE latin1_general_ci NOT NULL,
  `XBanner` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XKepSek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XAdmin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XPicAdmin` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWarna` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatus` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XNIPKepsek` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XNIPAdmin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XLogin` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XH1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XH3` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XH2` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XFolderPusat` tinytext COLLATE latin1_general_ci NOT NULL COMMENT 'jika folder Smart_Aplication1 diubah',
  `XLoginUtama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XeLearning` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_admin`
--

INSERT INTO `cbt_admin` (`Urut`, `XSekolah`, `XTingkat`, `XIp`, `XAlamat`, `XKec`, `XKab`, `XProp`, `XTelp`, `XFax`, `XEmail`, `XWeb`, `XLogo`, `XBanner`, `XKepSek`, `XAdmin`, `XPicAdmin`, `XWarna`, `XStatus`, `XKodeSekolah`, `XNIPKepsek`, `XNIPAdmin`, `XLogin`, `XH1`, `XH3`, `XH2`, `XFolderPusat`, `XLoginUtama`, `XeLearning`) VALUES
(15, 'MA. FATAHILLAH', 'MA', '127.0.0.1', 'Jl. Pon.Pes Fatahillah', '13', '13', '35', '0000-000000', '-', 'mafatahillah40@gmail.com', 'www.fatahillah.com', 'logo2.jpg', 'logo.png', 'MUHLASI, S.Pd', 'MUH. HAMIM, S.Kom', 'icon.gif', '#0D913A', '1', '69886300', '-', '-', 'login.jpg', 'MA. FATAHILLAH', 'Smart_Aplication Login', 'SUMBERKERANG GENDING ', 'pusat', 'e-learning.jpg', 'e-learning.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_header`
--

CREATE TABLE `cbt_header` (
  `Urut` int(1) NOT NULL,
  `Header` varchar(10) NOT NULL,
  `HeaderUjian` int(1) NOT NULL DEFAULT 1,
  `XNilaiKelas` varchar(20) NOT NULL DEFAULT '0',
  `HakAkses` varchar(20) NOT NULL DEFAULT '0',
  `LoginPanel` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cbt_header`
--

INSERT INTO `cbt_header` (`Urut`, `Header`, `HeaderUjian`, `XNilaiKelas`, `HakAkses`, `LoginPanel`) VALUES
(1, '0', 0, '0', '1', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `Urutan` int(11) NOT NULL,
  `Urut` int(11) NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XKodeUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL,
  `XTokenUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XA` int(11) NOT NULL,
  `XB` int(11) NOT NULL,
  `XC` int(11) NOT NULL,
  `XD` int(11) NOT NULL,
  `XE` int(11) NOT NULL,
  `XJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTemp` text COLLATE latin1_general_ci NOT NULL,
  `XJawabanEsai` text COLLATE latin1_general_ci NOT NULL,
  `XKodeJawab` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `XNilaiJawab` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XNilaiEsai` float NOT NULL,
  `XRagu` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XMulai` float NOT NULL,
  `XPutar` int(11) NOT NULL,
  `XMulaiV` float NOT NULL,
  `XPutarV` int(11) NOT NULL,
  `XTglJawab` date NOT NULL,
  `XJamJawab` time NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XUserJawab` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Campur` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(1) NOT NULL,
  `XUserPeriksa` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XTglPeriksa` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJamPeriksa` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`Urutan`, `Urut`, `XNomerSoal`, `XKodeUjian`, `XKodeKelas`, `XKodeJurusan`, `XKodeMapel`, `XKodeSoal`, `XJenisSoal`, `XTokenUjian`, `XA`, `XB`, `XC`, `XD`, `XE`, `XJawaban`, `XTemp`, `XJawabanEsai`, `XKodeJawab`, `XNilaiJawab`, `XNilai`, `XNilaiEsai`, `XRagu`, `XMulai`, `XPutar`, `XMulaiV`, `XPutarV`, `XTglJawab`, `XJamJawab`, `XKunciJawaban`, `XUserJawab`, `Campur`, `XSetId`, `XSemester`, `XUserPeriksa`, `XTglPeriksa`, `XJamPeriksa`, `XNamaKelas`) VALUES
(1, 1, 1, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 3, 4, 2, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '5', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(2, 2, 2, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 2, 1, 5, 4, 3, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(3, 3, 3, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 3, 1, 5, 4, 2, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '2', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(4, 4, 4, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 3, 5, 4, 2, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(5, 5, 5, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 1, 3, 4, 2, 5, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '3', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(6, 6, 6, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 3, 2, 1, 4, 5, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '2', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(7, 7, 7, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 3, 4, 1, 2, 5, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(8, 8, 8, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 1, 5, 2, 3, 4, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(9, 9, 9, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 1, 2, 3, 5, 4, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(10, 10, 10, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 1, 3, 5, 4, 2, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '5', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(11, 11, 11, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 3, 4, 2, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(12, 12, 12, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 1, 4, 2, 5, 3, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '2', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(13, 13, 13, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 4, 2, 3, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(14, 14, 14, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 4, 5, 2, 3, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '5', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(15, 15, 15, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 2, 4, 5, 3, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(16, 16, 16, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 1, 2, 3, 4, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '3', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(17, 17, 17, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 3, 5, 2, 4, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(18, 18, 18, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 4, 5, 3, 2, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(19, 19, 19, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 4, 3, 2, 1, 5, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(20, 20, 20, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 3, 4, 2, 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(21, 21, 21, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 2, 3, 4, 1, 5, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(22, 22, 22, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 3, 1, 4, 2, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(23, 23, 23, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 1, 3, 4, 2, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(24, 24, 24, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 5, 4, 2, 1, 3, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '1', '6988630001', '', '2020/2021', 2, '', '', '', ''),
(25, 25, 25, 'UAS', 'XII', 'IPS', '001', '001', 1, 'ZHTEO', 4, 5, 2, 1, 3, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2021-03-12', '00:00:00', '4', '6988630001', '', '2020/2021', 2, '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_kelas`
--

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_kelas`
--

INSERT INTO `cbt_kelas` (`Urut`, `XKodeLevel`, `XNamaKelas`, `XKodeJurusan`, `XKodeKelas`, `XStatusKelas`, `XKodeSekolah`) VALUES
(1, '012', 'DUA BELAS', 'IPS', 'XII', '', 'ALL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_mapel`
--

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XPersenUH` int(11) NOT NULL,
  `XPersenUTS` int(11) NOT NULL,
  `XPersenUAS` int(11) NOT NULL,
  `XKKM` float NOT NULL,
  `XMapelAgama` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_mapel`
--

INSERT INTO `cbt_mapel` (`Urut`, `XKodeMapel`, `XNamaMapel`, `XPersenUH`, `XPersenUTS`, `XPersenUAS`, `XKKM`, `XMapelAgama`, `XKodeSekolah`) VALUES
(1, '001', 'EKONOMI', 0, 0, 100, 75, 'Y', 'ALL'),
(2, '002', 'GEOGRAFI', 0, 0, 100, 75, 'Y', 'ALL'),
(3, '003', 'SOSIOLOGI', 0, 0, 100, 75, 'Y', 'ALL'),
(4, '004', 'SEJARAH', 0, 0, 100, 75, 'Y', 'ALL'),
(5, '005', 'BAHASA INDONESIA', 0, 0, 100, 75, 'N', 'ALL'),
(6, '006', 'BAHASA INGGRIS', 0, 0, 100, 75, 'N', 'ALL'),
(7, '007', 'MATEMATIKA', 0, 0, 100, 75, 'N', 'ALL'),
(8, '008', 'BAHASA ARAB', 0, 0, 100, 80, 'A', 'ALL'),
(9, '009', 'FIQIH', 0, 0, 100, 80, 'A', 'ALL'),
(10, '010', 'FIQIH', 0, 0, 100, 80, 'A', 'ALL'),
(11, '011', 'AQIDAH AKHLAK', 0, 0, 100, 80, 'A', 'ALL'),
(12, '012', 'QURDIST', 0, 0, 100, 80, 'A', 'ALL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_nilai`
--

CREATE TABLE `cbt_nilai` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) NOT NULL,
  `XNIK` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) NOT NULL,
  `XTokenUjian` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XTgl` date NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XBenar` int(11) NOT NULL,
  `XSalah` int(11) NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XPersenPil` float NOT NULL,
  `XPersenEsai` float NOT NULL,
  `XEsai` float NOT NULL,
  `XTotalNilai` float NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XNamaKelas` varchar(20) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XStatus` enum('0','1','9') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_paketsoal`
--

CREATE TABLE `cbt_paketsoal` (
  `Urut` int(11) NOT NULL,
  `XKodeKelas` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XLevel` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeLevel` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSesi` varchar(11) COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `XJenisSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XPersenPil` int(11) NOT NULL,
  `XPersenEsai` int(11) NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL DEFAULT 5,
  `XJumSoal` int(11) NOT NULL,
  `JumUjian` int(11) NOT NULL,
  `XAcakSoal` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `XGuru` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XStatusSoal` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XTglBuat` date NOT NULL,
  `XKodeSekolah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XPaketSoal` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSemua` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'T'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `cbt_paketsoal`
--

INSERT INTO `cbt_paketsoal` (`Urut`, `XKodeKelas`, `XLevel`, `XKodeJurusan`, `XKodeMapel`, `XKodeLevel`, `XSesi`, `XJenisSoal`, `XPilGanda`, `XEsai`, `XPersenPil`, `XPersenEsai`, `XKodeSoal`, `XJumPilihan`, `XJumSoal`, `JumUjian`, `XAcakSoal`, `XGuru`, `XSetId`, `XStatusSoal`, `XTglBuat`, `XKodeSekolah`, `XPaketSoal`, `XSemua`) VALUES
(1, 'XII', 'MA', 'IPS', '001', '', '1', 0, 50, 0, 100, 0, '001', 5, 50, 0, '', 'admin', '', 'Y', '2021-03-12', 'ALL', '', 'T');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_server`
--

CREATE TABLE `cbt_server` (
  `id` int(3) NOT NULL,
  `XServer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cbt_server`
--

INSERT INTO `cbt_server` (`id`, `XServer`) VALUES
(1, 'lokal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_setid`
--

CREATE TABLE `cbt_setid` (
  `Urut` int(11) NOT NULL,
  `XKodeAY` varchar(10) NOT NULL,
  `XNamaAY` varchar(100) NOT NULL,
  `XStatus` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cbt_setid`
--

INSERT INTO `cbt_setid` (`Urut`, `XKodeAY`, `XNamaAY`, `XStatus`) VALUES
(3, '2020/2021', 'Tahun Pelajaran 2020/2020', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_sinc`
--

CREATE TABLE `cbt_sinc` (
  `id` int(10) NOT NULL,
  `XServerId` varchar(50) NOT NULL,
  `XData1` enum('0','1') NOT NULL,
  `XData2` enum('0','1') NOT NULL,
  `XData3` enum('0','1') NOT NULL,
  `XData4` enum('0','1') NOT NULL,
  `XData5` enum('0','1') NOT NULL,
  `XData6` enum('0','1') NOT NULL,
  `XData7` enum('0','1') NOT NULL,
  `XData8` enum('0','1') NOT NULL,
  `XData9` enum('0','1') NOT NULL,
  `XData10` enum('0','1') NOT NULL,
  `XData11` enum('0','1') NOT NULL,
  `XData12` enum('0','1') NOT NULL,
  `XTanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_siswa`
--

CREATE TABLE `cbt_siswa` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNIK` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaSiswa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJenisKelamin` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPassword` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `XFoto` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XAgama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `XRuang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilihan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_siswa`
--

INSERT INTO `cbt_siswa` (`Urut`, `XNomerUjian`, `XNIK`, `XKodeJurusan`, `XNamaSiswa`, `XKodeKelas`, `XKodeLevel`, `XJenisKelamin`, `XPassword`, `XFoto`, `XAgama`, `XSetId`, `XSesi`, `XRuang`, `XKodeSekolah`, `XPilihan`, `XNamaKelas`) VALUES
(1, '6988630001', '3048451094', 'IPS', 'ALYA WULANDARI', 'XII', '012', 'P', '6988630001', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(2, '6988630002', '0005018432', 'IPS', 'BADRUS SHOLEH', 'XII', '012', 'L', '6988630002', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(3, '6988630003', '3039235855', 'IPS', 'DEWI FITROTI', 'XII', '012', 'P', '6988630003', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(4, '6988630004', '0035481726', 'IPS', 'DIANA FITHRIAH', 'XII', '012', 'P', '6988630004', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(5, '6988630005', '0025069101', 'IPS', 'DINI RAHMATIKA', 'XII', '012', 'P', '6988630005', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(6, '6988630006', '0033824414', 'IPS', 'ERLIN NUR FADILA', 'XII', '012', 'P', '6988630006', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(7, '6988630007', '0027706496', 'IPS', 'IMRO ATUS SHOLEHA', 'XII', '012', 'P', '6988630007', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(8, '6988630008', ' 003848603', 'IPS', 'ITARIA', 'XII', '012', 'P', '6988630008', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(9, '6988630009', '3046862055', 'IPS', 'JUMA`ATI', 'XII', '012', 'P', '6988630009', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(10, '6988630010', '0039333723', 'IPS', 'MAISARO', 'XII', '012', 'P', '6988630010', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(11, '6988630011', '0032047556', 'IPS', 'MILLATUL FITRIYAH EL-HAMZIYAH', 'XII', '012', 'P', '6988630011', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(12, '6988630012', '0031487128', 'IPS', 'NAVA DWI AGUSTINA SARI', 'XII', '012', 'P', '6988630012', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(13, '6988630013', '3031562172', 'IPS', 'RISKA AGUSTIN', 'XII', '012', 'P', '6988630013', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(14, '6988630014', '0035624996', 'IPS', 'ROBIATUL ADAWIYAH', 'XII', '012', 'P', '6988630014', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(15, '6988630015', '0038058749', 'IPS', 'SA`DIYAH SAFITRI', 'XII', '012', 'P', '6988630015', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(16, '6988630016', '3031709297', 'IPS', 'SAKINAH MAWARDAH', 'XII', '012', 'P', '6988630016', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(17, '6988630017', '0027686088', 'IPS', 'WILDA WULANDARI', 'XII', '012', 'P', '6988630017', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS'),
(18, '6988630018', '0024558858', 'IPS', 'ZAMRUDA ARDILA', 'XII', '012', 'P', '6988630018', '', 'ISLAM', '2020/2021', '1', '', '', '', 'DUA BELAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_siswa_ujian`
--

CREATE TABLE `cbt_siswa_ujian` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XNISN` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `XJamUjian` time NOT NULL,
  `XMulaiUjian` time NOT NULL,
  `XLastUpdate` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XTargetUjian` time NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XSelesaiUjian` time NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XGetIP` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_siswa_ujian`
--

INSERT INTO `cbt_siswa_ujian` (`Urut`, `XNomerUjian`, `XNISN`, `XKodeKelas`, `XKodeMapel`, `XKodeSoal`, `XPilGanda`, `XEsai`, `XJumSoal`, `XTglUjian`, `XJamUjian`, `XMulaiUjian`, `XLastUpdate`, `XSisaWaktu`, `XLamaUjian`, `XTargetUjian`, `XTokenUjian`, `XSelesaiUjian`, `XSetId`, `XKodeUjian`, `XSesi`, `XStatusUjian`, `XKodeSekolah`, `XGetIP`, `XNamaKelas`) VALUES
(1, '6988630001', '', 'XII', '001', '001', 50, 0, 50, '2021-03-12 13:49:49', '20:48:00', '20:49:49', '20:49:49', '', '00:10:00', '00:00:00', 'ZHTEO', '00:00:00', '', '', 1, '1', '', '::1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `Urut` int(11) NOT NULL,
  `XKodeMapel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL DEFAULT 1,
  `XNomerSoal` int(11) NOT NULL,
  `XRagu` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XTanya` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAudioTanya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XVideoTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKategori` int(11) NOT NULL DEFAULT 1,
  `XAcakSoal` enum('A','T') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `XAcakOpsi` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAgama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XLevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeKelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSkolah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cbt_soal`
--

INSERT INTO `cbt_soal` (`Urut`, `XKodeMapel`, `XKodeSoal`, `XJenisSoal`, `XNomerSoal`, `XRagu`, `XTanya`, `XAudioTanya`, `XVideoTanya`, `XGambarTanya`, `XJawab1`, `XJawab2`, `XJawab3`, `XJawab4`, `XJawab5`, `XGambarJawab1`, `XGambarJawab2`, `XGambarJawab3`, `XGambarJawab4`, `XGambarJawab5`, `XKunciJawaban`, `XKategori`, `XAcakSoal`, `XAcakOpsi`, `XAgama`, `XLevel`, `XKodeKelas`, `XKodeSkolah`) VALUES
(1, '001', '001', 1, 1, '', ' Setamat dari SMA, Andi mempunyai dua pilihan, kursus komputer dengan biaya Rp.700.000,- sebulan atau bekerja dibengkel dengan upah Rp.3000.000,- perbulan.Andi memilih untuk mengambil kursus komputer. Maka besarnya biaya peluangnya adalah....', '', '', '', '.Rp200.000,00', 'Rp700,000.00', 'Rp730,000.00', 'Rp900,000.00', 'Rp3,000,000.00', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(2, '001', '001', 1, 2, '', 'Perhatikan alat pemuas kebutuhan berikut ini! 1. Kompor dengan oven   \n2. Tinta dengan balpoint  \n3. Mobil dengan motor\n4. Sepatu dengan kaos kaki\n5. Beras dengan jagung\n6. Kopi dengan gula\nDari alat pemuas di atas, yang merupakan contoh benda komplementer adalah.\n', '', '', '', '1,2, dan 3', '1,3, dan 5', '2,3, dan 4', '2,4, dan 6', '4,5, dan 6', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(3, '001', '001', 1, 3, '', 'Indonesia adalah sebuah negara yang kaya akan sumber daya alam, bahkan pada tahun 90-an Indonesia sempat mendapatkan penghargaan swasembada pangan. Swasembada pangan merupakan kondisi dimana Indonesia mampu memenuhi kebutuhan seluruh masyarakatnya tanpa harus melakukan impor. Namun saat ini, Indonesia harus melakukan impor untuk memenuhi kebutuhan seluruh masyarakatnya yang semakin banyak. Dari ilustrasi diatas, maka terjadinya kelangkaan disebabkan oleh faktorâ€¦.', '', '', '', 'Perbedaan letak geografis', 'Pertumbuhan pendu', 'Kemampuan produksi', 'Sumber daya alam yang terbatas', 'Kurangnya sumber daya manusia', '', '', '', '', '', '2', 2, 'T', 'Y', '', '', '', ''),
(4, '001', '001', 1, 4, '', ' Pada saat menjelang ujian nasional Azizah mencatat segala kebutuhannya, berikut kebutuhan yang di catat azizah:\n1. Bayar uang ujian  \n2. Bayar uang les  \n3. Membeli tas baru   \n4. Membeli peralatan tulis baru\n5. Membeli buku tentang soal-sola UN\n6. Membeli jam tangan baru\n\nBerdasrakan data tersebut maka sekala prioritas kebutuhan yang harus di utamakan azizah adalahâ€¦\n', '', '', '', '1, 2, 3', '1, 3, 4', '1, 4, 5', '1, 2, 5', '2, 4, 6', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(5, '001', '001', 1, 5, '', 'Terbatasnya jumlah garam yang ada membuat harga garam menjadi tinggi. Tingginya harga garam sangat berdampak besar dalam kehidupan masyarakat salah satu akibatnya adalah membuat semua produk yang berkaitan dengan garam menjadi ikut melambung. Cara mengatasi permasalahan tersebut adalahâ€¦.', '', '', '', 'Melakukan stok garam sebanyak mungkin sebelum harga lebih tinggi', 'jangan memasak atau berproduksi menggunakan garam', 'menambah jumlah pasokan garam untuk menurunkan harga', 'menghimbau untuk meminimalisir pemakaian garam', 'mengadakan hari garam gratis', '', '', '', '', '', '3', 2, 'T', 'Y', '', '', '', ''),
(6, '001', '001', 1, 6, '', 'Pak Marpaung memiliki toko/kios yang baru selesai dibangun. Dia memiliki keinginan untuk membuka usaha. Akan tetapi ada beberapa masalah yang dihadapi sebelum memulai usaha, yaitu:\nA. apakah ingin menjual pakaian jadi atau sepatu.\nB. menentukan cara mengelola usaha dilakukan sendiri atau bekerja sama dengan pihak lain.\nC. dari sekarang Bu Marpaung terus mempertimbangkan waktu yang tepat untuk memulai usaha.\nD. target konsumen yang dituju apakah laki-laki atau perempuan, anak-anak atau dewasa.\nE. menentukan dimana tempat yang paling tepat untuk memulai usaha.\nF. menetapkan berapa modal yang harus disediakan.\nDari masalah Bu Marpaung di atas, yang termasuk masalah ekonomi modern adalah... .\n', '', '', '', ' (1), (2), dan (3)  ', '(1), (2), dan (4)', '(2), (3), dan (4)', ' (2), (4), dan (5)', '(3), (5), dan (6)', '', '', '', '', '', '2', 2, 'T', 'Y', '', '', '', ''),
(7, '001', '001', 1, 7, '', 'Instrumen â€“ instrumen pasar uang dan pasar modal sebagai berikut:\n1. Saham  \n2. Call Money \n3. Surat Utang Negara\n4. Sertifikat Bank Indonesia \n5. Obligasi\nYang termasuk instrumen pasar uang adalah nomor ....\n', '', '', '', '1, 2 dan 3', '1, 3 dan 4', '1, 4 dan 5', '2, 3 dan 4', '2, 4 dan 5', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(8, '001', '001', 1, 8, '', 'Berikut ini fungsi bank umum dan bank sentral:\n1) menghimpun dana dari masyarakat   \n2) mengatur dan mengawasi bank   \n3) menyalurkan kredit kepada masyarakat.\n4)  menetapkan dan melaksanakan kebijakan moneter\n5)  mengatur dan menjaga sistem pembayaran\nDari data di atas yang termasuk fungsi bank sentral adalah....\n', '', '', '', '1, 2, dan 3', '1, 2, dan 4', '2, 3, dan 4', '2, 4, dan 5', '3, 4, dan 5', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(9, '001', '001', 1, 9, '', 'Puspa adalah seorang pelajar uangnya saku Rp. 15.000 per hari,. Untuk hari ini dia minta ditambah menjadi Rp. 25.000 karena takut kegiatan sekolahnya sampai malam, maka puspa dalam memegang uang termasuk motif...', '', '', '', 'spekulasi', 'menabung', 'prestise', 'Berjaga-jaga', 'Transaksi', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(10, '001', '001', 1, 10, '', 'Pernyataan di bawah ini merupakan kebaikan dan kekurangan dari perusahaan perseorangan:\n1. Mudah dalam mengambil keputusan  \n2. Laba perusahaan jatuh ke tangan satu orang \n3. Tanggung jawab pemilik tidak terbatas  \n4. Kelangsungan hidup perusahaan kurang terjamin\n5. Pendirian badan usaha mudah dan murah\n6. Kerugian ditanggung sendiri\n Pernyataan di atas yang merupakan kelemahan dari perusahaan perseorangan adalah....\n', '', '', '', '1, 2 dan 3        ', '1, 3 dan 5 ', '1, 4 dan 6', '2, 4 dan 5', '3, 4 dan 6', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(11, '001', '001', 1, 11, '', 'Perhatikan data berikut.\nâ€¢ Pendapatan pajak                         Rp25.500.000,00\nâ€¢ Laba                                             Rp15.000.000,00\nâ€¢ Pengeluaran pemerintah           Rp17.500.000,00\nâ€¢ Pendapatan bunga                       Rp9.400.000,00\nâ€¢ Pendapatan sewa                          Rp12.200.000,00\nâ€¢ Investasi                                            Rp64.500.000,00\nâ€¢ Impor                                                  Rp14.600.000,00\nâ€¢ Ekspor                                                Rp13.300.000,00\nâ€¢ Konsumsi                                          Rp38.200.000,00\nBerdasarkan data tersebut, maka besar pendapatan nasional dengan pendekatan pengeluaran adalah â€¦.\n', '', '', '', 'Rp98,000,000.00', 'Rp110,200,000.00', 'Rp114,000,000.00', 'Rp118,900,000.00', 'Rp120,200,000.00', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(12, '001', '001', 1, 12, '', 'Diketahui data perekonomian negara Oscar sebagai berikut ini.\nâ€¢ PDB                                                                            Rp90.000.000,00\nâ€¢ Pendapatan Neto terhadap luar negeri       Rp8.500.000,00\nâ€¢ Pajak tidak langsung                                          Rp13.500.000,00\nâ€¢ Penyusutan                                                            Rp8.200.000,00\nâ€¢ Subsidi                                                                  Rp3.500.000,00\nâ€¢ Iuran asuransi                                                       Rp760.000,00\nâ€¢ Laba ditahan                                                         Rp600.000,00\nâ€¢ Transfer payment                                                 Rp300.000,00\nâ€¢ Pajak langsung                                                     Rp250.000,00\nBerdasarkan data tersebut, maka Personal Income yang diperoleh negara adalah â€¦.\n', '', '', '', 'Rp51,000,000.00', 'Rp61,640,000.00', 'Rp71,000,000.00', 'Rp81,460,000.00', 'Rp91,660,000.00', '', '', '', '', '', '2', 2, 'T', 'Y', '', '', '', ''),
(13, '001', '001', 1, 13, '', 'Tabel PNB beberapa negara pada tahun tertentu sebagai berikut :\nNo      Negara   ï“ Penduduk (juta)   PNB (juta)\n1          A            150                             450.000\n2          B            280                             420.000\n3          C             360                            360.000\n4          D            160                            320.000\n5          E             200                            300.000\nBerdasarkan data diatas, negara yang pendapatan per kapitanya paling tinggi adalah negaraâ€¦.\n', '', '', '', 'A', 'B', 'C', 'D', 'E', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(14, '001', '001', 1, 14, '', 'Di bawah ini adalah keberhasilan dan kegagalan pembangunan ekonomi di Indonesia:\n1. Tingkat inflasi yang masih cukup tinggi sangat dirasakan oleh masyarakat kelas bawah terutama untuk memenuhi kebutuhan sembilan bahan pokok\n2. Pemerataan pendapatan nasional masih sangat mencolok antara masyarakat bawah dengan masyarakat menengah ke atas\n3. Menurunnya tingkat kelahiran yang merupakan keberhasilan program Keluarga Berencana yang dicanangkan sejak tahun 1970an\n4. Meningkatnya masyarakat melek huruf akibat suksesnya program wajib belajar 9 tahun pada akhir-akhir ini.\nGambaran di atas yang merupakan keberhasilan pembangunan ekonomi di Indonesia adalah â€¦.\n', '', '', '', '1 dan 2 ', '1 dan 3', '2 dan 3', '2 dan 4', '3 dan 4', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(15, '001', '001', 1, 15, '', 'Masalah pokok ketenagakerjaan yang dihadapi oleh pemerintah Indonesia adalah....', '', '', '', 'Rendahnya kualitas tenaga kerja', 'Tingginya tingkat produktivitas', 'Kemajuan teknologi', 'Kesempatan kerja yang besar', 'Tingginya minat untuk berwiraswasta', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(16, '001', '001', 1, 16, '', 'Dengan kemajuan ilmu pengetahuan dan teknologi, maka setiap tenaga kerja harus dapat meningkatkan potensi atau kemampuan untuk memenuhi tuntutan zaman yang semakin maju, supaya tidak tertinggal atau gagap teknologi (gaptek). Cara untuk mengatasi masalah tersebut adalah ....', '', '', '', 'Membuka proyek padat karya', 'Memberi pinjaman dengan bunga rendah', 'Meningkatkan pendidikan dan IPTEK', 'Memberi informasi lowongan kerja', 'Program transmigrasi ke daerah timur', '', '', '', '', '', '3', 2, 'T', 'Y', '', '', '', ''),
(17, '001', '001', 1, 17, '', 'Pada tahun 2017 harga barang A adalah Rp. 12.000, sedangkan  pada tahun dasar barang tersebut adalah Rp. 10.500. Jika hitung dengan menggunakan metode agregatif sederhana maka besarnya indeks harga pada tahun 2017 adalah...', '', '', '', '114.20%', '87.50%', '14.28%', '1.14%', '0.88%', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(18, '001', '001', 1, 18, '', 'Suatu kondisi dimana inflasi per tahun berada diatas angka 100%  disebut dengan inflasi....', '', '', '', 'Inflansi ringan', 'Inflasi sedang', 'Inflasi berat', 'Hiper inflasi', 'Inflasi dalam negeri', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(19, '001', '001', 1, 19, '', 'Ketika uang yang beredar lebih banyak dibanding barang yang ada, maka hal ini akan meningkatkan harga suatu barang sehingga harga barang-barang akan cenderung mahal. Hal yang dapat dilakukan oleh Bank Indonesia sebagai penyeimbang nilai rupiah adalahâ€¦.', '', '', '', 'meningkatkan suku bunga bank', 'menurunkan tingkat cadangan minimum', 'menaikkan pajak', 'mendorong produksi agar barang bertambah', 'membeli surat berharga BI', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(20, '001', '001', 1, 20, '', '', '', '', 'soal20_ekonomi.PNG', 'A1, B1, dan C1', 'A1, B2, dan B3', 'A1, A2, dan B2', 'A2, B1, dan C3', 'A3, B2, dan C3', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(21, '001', '001', 1, 21, '', 'Sudah 2 tahun ini daya beli masyarakat menurun disebabkan banyaknya pengangguran di daerah tersebut. Hal ini merupakan dampak penganguran dari segi ....', '', '', '', 'Ekonomi', 'Politik', 'Ekonomi', 'Sosial dan Budaya', 'Pendidikan', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(22, '001', '001', 1, 22, '', 'Khaniya membeli sepatu melalui aplikasi belanja daring. Saat memilih produk, Khaniya melihat harga jual sepatu dari luar negeri lebih murah. Setelah mengetahui harga awal, Khaniya melakukan pencarian melalui internet mengenai harga produk tersebut di negara asalnya. Atas informasi yang diperoleh, ternyata harga jual produk lebih tinggi di negara asalnya. Berdasarkan wacana tersebut, kebijakan yang diterapkan oleh negara yang menjual produk sepatu tersebut adalah â€¦.', '', '', '', 'Dumping', 'Tarif', 'Kuota', 'Premi', 'Devaluasi', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(23, '001', '001', 1, 23, '', 'Tania ingin berlibur ke Amerika Serikat liburan semester ini. Menurut informasi dari travel yang digunakan,Tania harus menyediakan US$250 per hari jika ingin berlibur kesana, nilai kurs yang berlaku pada saat ini, yaitu kurs jual US$1 = Rp15.000,00 dan kurs beli US$1 = Rp14.500,00. Jika Tania ingin berlibur selama seminggu, total Rupiah yang harus disiapkan oleh Tania adalah â€¦.', '', '', '', 'Rp3,750,000.00', 'Rp3,625,000.00', 'Rp25,375,000.00', 'Rp26,250,000.00', 'Rp30,000,000.00', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(24, '001', '001', 1, 24, '', 'Transaksi berikut yang digolongkan sebagai transaksi debet pada neraca pembayaran adalah â€¦.', '', '', '', 'investasi jangka panjang yang ditanamkan penduduk di negara lain', 'ekspor barang', 'penjualan emas kepada penduduk negara lain', 'penerimaan bunga dan deviden dari penduduk negara lain', 'investasi jangka pendek yang ditanamkan oleh penduduk negara lain', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(25, '001', '001', 1, 25, '', 'Untuk merangsang produk barang yang berorientasi ekspor pemerintah telah menetapkan kebijakan pemberian subsidi BBM terhadap perusahaan yang berorientasi ekspor. Dampak yang diinginkan oleh pemerintah dari kebijakan ini adalah....', '', '', '', 'akibat adanya subsidi BBM maka pengusaha memperoleh keuntungan yang lebih besar dari biasanya.', 'adanya subsidi BBM maka biaya produksi menjadi rendah sehingga meningkatkan jumlah produsinya.', 'akibat subsidi BBM akan mengurangi barang impor sehingga devisa negara bertambah dengan cepat.', 'adanya subsidi BBM harga barang berorientasi ekspor menjadi murah dan mampu bersaing dengan produk negara lain.', 'subsidi BBM akan merangsang masyarakat untuk menjadi wirausaha sehingga dapat menyedot pengangguran.', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(26, '001', '001', 2, 26, '', 'Berikut adalah pihak-pihak pemakai informasi akuntansi:\n1. Menejer\n2. Pemilik perusahaan\n3. Karyawan\n4. Kreditur\n5. Konsumen\nDari data di atas yang termasuk dari pihak ekstern adalahâ€¦ .\n', '', '', '', '1, 2, 3 dan 4', '1, 2, 4 dan 5', '1, 2, 4 dan 5', '1, 3, 4 dan 5', '2, 3, 4 dan 5', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(27, '001', '001', 2, 27, '', 'Informasi akuntansi dapat dimengerti oleh pemakai bila dinyatakan dalam bentuk istilah yang sesuai dengan tingkat pengetahuan pemakai. Hal ini merupakan salah satu kualitas informasi akuntansi yaituâ€¦ .', '', '', '', 'Konsisten', 'Relevan', 'Dapat diuji', 'Dapat dimengerti', 'Perbandingan antara manfaat dan biaya', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(28, '001', '001', 2, 28, '', 'Perhatikan tahapan proses akuntansi berikut:\n1. Penyusunan bukti-bukti transaksi\n2. Pencatatan ke dalam jurnal \n3. Posting ke buku besar\n4. Penyusunan neraca saldo\n5. Penyusunan laporan keuangan\nBerdasarkan proses akuntansi diatas yang termasuk dalam proses akuntansi tahap pencatatan dan penggolongan adalah nomor â€¦ .\n', '', '', '', '1, 2 dan 3', '1, 2 dan 4', '1, 2 dan 5', '2, 3 dan 4', '3, 4 dan 5', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(29, '001', '001', 2, 29, '', 'Contoh dari Transaksi intern adalahâ€¦â€¦', '', '', '', 'Transaksi dengan pihak bank', 'Transaksi dengan pihak pembukuan', 'Transaksi dengan dinas pajak', 'Transaksi dengan langganan', 'Transaksi dengan konsumen', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(30, '001', '001', 2, 30, '', 'System akuntansi adalah â€¦ .', '', '', '', 'Sistem akuntansi adalah sebuah ikhtisar yang terdiri dari catatan manual atau komputerisasi transaksi keuangan untuk tujuan rekaman, mengkategorikan, menganalisis dan melaporkan informasi manajemen keuangan yang tepat waktu.', 'Sumber informasi terpercaya dalam hal perubahan dan perbandingan sumber ekonomi setelah terjadinya kegiatan usaha dari waktu ke waktu', 'Akuntansi memproses bukti transaksi menjadi bentuk informasi akuntansi dalam bentuk laporan keuangan yang digunakan untuk proses pengambilan keputusan', 'Suatu system informasi yang mampu mengukur kegiatan bisnis, memproses data menjadi laporan, dan mengkomunikasikan hasilnya kepada para pengambil keputusan', 'Suatu system untuk mengukur dan mengelolah transaksi keuangan serta memberikan hasil pengelolaan tersebut dalam bentuk informasi kepada pihak-pihak intern dan ekstern', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(31, '001', '001', 2, 31, '', 'Pihak yang memiliki kepentingan terhadap perusahaan tetapi tidak terlibat secara langsung dalam membuat berbagai kebijakan/ keputusan operasional perusahaan disebutâ€¦ .', '', '', '', 'Pihak intern', 'Pihak ekstern', 'Pihak utama', '', 'Pihak investor', '', '', '', '', '', '2', 2, 'T', 'Y', '', '', '', ''),
(32, '001', '001', 2, 32, '', 'Dalam masalah perpajakan, pemerintah perlu mengetahui keuntungan suatu perusahaan untuk â€¦ .', '', '', '', 'Menentukan besarnya pemasukan', 'Menentukan besarnya pengeluaran', 'Mengetahui rasionalitas perusahaan', 'Mengetahui posisi keuangan suatu perusahaan', 'Menghitung besarnya pajak penghasilan perusahaan yang bersangkutan', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(33, '001', '001', 2, 33, '', 'Akun-akun yang terdapat pada perusahaan jasa bengkel \"Maju\" sebagai berikut: \n 1.  Kas       \n2.  Beban dibayar di muka    \n3.  Peralatan      \n4.  Perlengkapan    \n5.  Pendapatan diterima di muka \n Yang tergolong akun harta lancar adalah ...\n', '', '', '', '1, 2, dan 3', '1, 2, dan 4', '1, 3, dan 5', '2, 3, dan 4', '2, 4, dan 5', '', '', '', '', '', '2', 2, 'T', 'Y', '', '', '', ''),
(34, '001', '001', 2, 34, '', 'Fa. Karimun mempunyai data keuangan sebagai berikut: \n1. Beban bunga     \n2. kas  \n3. Beban gaji    \n4. Utang gaji     \n5. Peralatan \n Berdasarkan data di atas, Fa. Karimun yang termasuk dalam kelompok neraca adalah ...\n', '', '', '', '1, 2 dan 3', '1, 3, dan 4', '2, 3 dan 4', '3, 4 dan 5', '2, 4 dan 5', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(35, '001', '001', 2, 35, '', 'Pembelian peralatan kantor seharga Rp 3.000.000,00 dibayar tunai Rp 1.500.000,00 dan sisanya dibayar kemudian, dari transaksi diatas dalam persamaan akuntansinya adalah....', '', '', '', 'peralatan kantor ( - ) Rp 3.000.000,00 Utang ( + ) Rp 1.500.000,00 Kas ( - ) Rp   1.500.000,00', 'peralatan kantor ( + ) Rp 3.000.000,00 Kas ( - ) Rp 3.000.000,00', 'peralatan kantor ( + ) Rp 3.000.000,00 Kas ( + ) Rp 1.500.000,00 Utang ( + )Rp 1.500.000,00', 'peralatan kantor ( + ) Rp 3.000.000,00 Kas ( - ) Rp 1.500.000,00 Utang ( + ) Rp 1.500.00,00', 'peralatan kantor ( + ) Rp 3.000.000,00 Kas ( - ) Rp 1.500.000,00 Utang ( - ) Rp 1.500.000,00', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(36, '001', '001', 2, 36, '', 'Diketahui seorang mendirikan sebuah perusahaan dengan menginvestasikan uang tunai sejumlah Rp. 5.000.000, 00 maka besarnya modal dalam persamaan akuntansi yaituâ€¦ .', '', '', '', '0 (kosong)', 'Rp. 1.000.000, 00', 'Rp. 4.000.000,00', 'Rp. 5.000.000,00', 'Rp. 10.000.000, 00', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(37, '001', '001', 2, 37, '', '', '', '', 'SOAL37_EKONOMI.PNG', 'A. Kas Rp900.000,00   \n Penjualan Rp900.000,00\n', 'B. Kas Rp900.000,00   \n  Perlengkapan salon Rp900.000,00\n', 'C. Perlengkapan salonRp900.000,00 \n  Utang usaha  Rp900.000,00\n', 'D. Perlengkapan salon Rp900.000,00 \n Kas   Rp900.000,00\n', 'E. Peralatan salon  Rp900.000,00 \n Kas   Rp900.000,00\n', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(38, '001', '001', 2, 38, '', 'Service Electronik Maju telah menyelesaikan service TV milik Pak Handoko dengan biaya service Rp.450.000,00 dari jumlah tersebut baru diterima Rp.300.000,00 dan sisanya akan dibayar bulan depan.Kejadian di atas akan dicatat dalam jurnal umum oleh Service Electronik Maju adalah....', '', '', '', 'A. Kas     Rp.300.000,00    \n     Utang usaha    Rp.150.000,00   \n  Pendapatan jasa service   Rp.450.000,00 \n', 'B. Kas     Rp.300.000,00   \n Pendapatan jasa service  Rp.150.000,00   \n   Utang usaha   Rp.450.000,00\n', 'C. Kas     Rp.300.000,00   \n Piutang usaha   Rp.150.000,00   \n Pendapatan jasa service   Rp.450.000,00\n', 'D. Pendapatan jasa   Rp.450.000,00   \n  Kas     Rp.300.000,00\n  Utang usaha    Rp.150.000,00\n', 'E. Pendapatan Jasa   Rp.450.000,00   \n  Kas     Rp.300.000,00\n  Piutang usaha    Rp.150.000,00\n', '', '', '', '', '', '3', 2, 'T', 'Y', '', '', '', ''),
(39, '001', '001', 2, 39, '', '', '', '', 'SOAL39_EKONOMI.PNG', '', '', '', '', '', 'JAWABANASOAL39_EKONOMI.PNG', 'JAWABANBSOAL 39_EKONOMI.PNG', 'JAWABANCSOAL39_EKONOMI.PNG', 'JAWABANDSOAL39_EKONOMI.PNG', 'JAWABANESOAL39_EKONOMI.PNG', '2', 2, 'T', 'Y', '', '', '', ''),
(40, '001', '001', 2, 40, '', 'Dalam neraca sisa Service Electro Budi per 31 Desember 2017 terdapat akun sewa dibayar di muka bersaldo debet Rp3.600.000,00. Data penyesuaian per 31 Desember 2017 dinyatakan bahwa sewa dibayar pada tanggal 3 Oktober 2017 untuk jangka satu tahun. Berdasarkan data di atas maka jurnal penyesuaian yang dibuat oleh Service Electro Budi adalah....', '', '', '', 'A. Sewa dibayar di muka   Rp900.000,00 \n Beban sewa  Rp900.000,00\n', 'B. Sewa dibayar di muka Rp2.700.000,00 \n  Beban sewa  Rp2.700.000,00\n', 'C. Beban sewa Rp900.000,00  \n   Sewa dibayar di muka Rp900.000,00\n', 'D. Beban sewa Rp2.700.000,00 \n Sewa dibayar di muka  Rp2.700.000,00\n', 'E. Beban sewa Rp3.600.000,00  \n  Sewa dibayar di muka  Rp3,600.000,00\n', '', '', '', '', '', '3', 2, 'T', 'Y', '', '', '', ''),
(41, '001', '001', 2, 41, '', 'Dalam neraca sisa terdapat akun perlengkapan kantor bersaldo debet Rp500.000,00. Data penyesuaian menyatakan bahwa persediaan perlengkapan kantor pada akhir periode sebesar Rp200.000,00. Berdasarkan data di atas maka jurnal penyesuaiannya adalah....', '', '', '', 'A. Beban perlengkapan kantor  Rp200.000,00  -\nPerlengkapan kantor          -   Rp200.000,00\n', 'A. Beban perlengkapan kantor  Rp200.000,00  -\nPerlengkapan kantor          -   Rp200.000,00\n', 'C. Beban perlengkapan kantor  Rp300.000,00      -\nPerlengkapan kantor           -   Rp300.000,00\n', 'D. Beban perlengkapan kantor  Rp500.000,00            -\nPerlengkapan kantor            -    Rp500.000,00\n', 'E. Beban perlengkapan kantor  Rp700.000,00            -\nPerlengkapan kantor                 -              Rp700.000,00\n', '', '', '', '', '', '3', 2, 'T', 'Y', '', '', '', ''),
(42, '001', '001', 2, 42, '', 'Diketahui data perusahaan:\nï‚§ Modal 1 Jan 2018  Rp12.500.000,00  \nï‚§ Pendapatan usaha  Rp3.250.000,00\nï‚§ Pendapatan lain-lain  Rp250.000,00  \nï‚§ Beban usaha    Rp2.100.000,00\nï‚§ Pengambilan pribadi/prive Rp 500.000,00\nBerdasarkan data diatas maka perusahaan mengalami  â€¦.\n', '', '', '', 'Laba Rp. 1.400.000,00', 'Rugi Rp. 1.400.000,00', 'Laba Rp. 13.400.000,00', 'Rugi Rp. 13.400.000', 'Laba Rp. 18.600.000,00', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(43, '001', '001', 2, 43, '', 'Data yang dimiliki perusahaan jasa Bakri pada tanggal 31 Desember 2018 sebagai berikut:\nï¶ Pendapatan jasa  Rp5.000.000,00\nï¶ Beban usaha   Rp2.500.000,00\nï¶ Beban bunga   Rp   300.000,00\nï¶ Pengambilan prive  Rp3.000.000,00\nBerdasarkan data di atas maka jurnal penutup yang tepat adalah... .\n', '', '', '', '', '', '', '', '', 'jawabanAsoal43_ekonomi.png', 'jawabanBsoal43_ekonomi.png', 'jawabanCsoal43_ekonomi.png', 'jawabanDsoal43_ekonomi.png', 'jawabanEsoal43_ekonomi.png', '2', 2, 'T', 'Y', '', '', '', ''),
(44, '001', '001', 2, 44, '', ' Dalam neraca sisa Salon Metro per 31 Desember 2018 terdapat akun sewa dibayar di muka bersaldo debet Rp3.600.000,00. Data penyesuaian per 31 Desember 2018 dinyatakan bahwa sewa dibayar pada tanggal 3 Oktober 2018 untuk janka satu tahun. Berdasarkan data di atas maka jurnal pembalik yang dibuat oleh Salon Metro adalah....', '', '', '', 'A. Sewa dibayar di muka   Rp900.000,00 \n Beban sewa  Rp900.000,00\n', 'B. Sewa dibayar di muka Rp2.700.000,00 \n  Beban sewa  Rp2.700.000,00\n', 'C. Beban sewa Rp900.000,00  \n   Sewa dibayar di muka Rp900.000,00\n', 'D. Beban sewa Rp2.700.000,00 \n Sewa dibayar di muka  Rp2.700.000,00\n', 'E. Beban sewa Rp3.600.000,00  \n  Sewa dibayar di muka  Rp3,600.000,00\n', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(45, '001', '001', 2, 45, '', 'PDâ€ SEMAR ULUNGâ€ mempunyai data per 31 Desember 2017 Sebagai berikut:\nâ€¢ Pembelian barang dagang                Rp120.000.000,00 \nâ€¢ Penjualan      Rp150.000.000,00\nâ€¢ Persediaan barang dagang per 1 Januari2017 Rp40.000.000,00\nâ€¢ Beban Angkut pembelian   Rp3.000,000,00\nâ€¢ Potongan Pembelian      Rp8.000.000,00  \nâ€¢ Potongan penjualan    Rp4.000.000,00\nâ€¢ Retur pembelian    Rp4.500.000,00\nâ€¢ Persediaan barang dagang per 31 Desembe r2017 Rp  25.000.000,00. \n       Dari data di atas besarnya Harga Pokok Penjualan PDâ€ SEMAR   ULUNGâ€ adalah â€¦.\n', '', '', '', 'Rp125,500,000.00', 'Rp133,500,000.00', 'Rp145,500,000.00', 'Rp150,000,000.00', 'Rp165,000,000.00', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(46, '001', '001', 2, 46, '', 'Data  keuangan sebagian dari PD  â€œNURMARTâ€  sebagai berikut:\nïƒ˜ Penjualan   Rp20.000.000,00\nïƒ˜ Retur  penjualan  Rp2.000.000,00\nïƒ˜ Potongan penjualan Rp150.000,00 \nïƒ˜ Persediaan per 1 Januari 2017  Rp2.000.000,00\nïƒ˜ Persediaan per 31 Desember 2017 Rp1.750.000,00 \nïƒ˜ Pembelian bersih  Rp10.000.000,00\nïƒ˜ Beban Gaji  Rp1.000.000,00 \nïƒ˜ Beban lain-lain  Rp600.000,00\nDari data di atas besarnya laba bersih setelah pajak  PD Nurmart  adalah â€¦.\n', '', '', '', 'Rp3.300,000,00', 'Rp4,500,000.00', 'Rp5,000,000.00', 'Rp5,500,000.00', 'Rp6,000,000.00', '', '', '', '', '', '5', 2, 'T', 'Y', '', '', '', ''),
(47, '001', '001', 2, 47, '', 'Diketahui data perusahaan PD. ABADI:\nâ€¢ Modal 1 Jan 2019  Rp12.500.000,00 \nâ€¢ Pendapatan usaha  Rp3.250.000,00\nâ€¢ Pendapatan lain-lain Rp250.000,00  \nâ€¢ Beban usaha   Rp2.100.000,00\nâ€¢ Pengambilan pribadi/prive Rp 500.000,00\nMaka modal 31 Desember 2019 perusahaan adalahâ€¦.\n', '', '', '', 'Rp. 17.600.000,00', 'Rp. 14.400.000,00', 'Rp. 13.850.000,00', 'Rp. 13.400.000,00', 'Rp. 1400.000,00', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(48, '001', '001', 2, 48, '', '', '', '', 'SOAL48_EKONOMI.PNG', '1 , 2 dan 3', '1 , 2 dan 4', '2 , 4 dan 5', '2 , 4 dan 6', '4 , 5 dan 6', '', '', '', '', '', '4', 2, 'T', 'Y', '', '', '', ''),
(49, '001', '001', 2, 49, '', '', '', '', 'SOAL49_EKONOMI.PNG', '1, 2, dan 3', '1, 2, dan 4', '2, 4, dan 5', '2, 4, dan 6', '3, 5, dan 6', '', '', '', '', '', '1', 2, 'T', 'Y', '', '', '', ''),
(50, '001', '001', 2, 50, '', 'Sebagian transaksi UD â€œ SAHABAT â€ pada bulan Juni 2019 sebagai berikut:\n06 Juni 2019 Dijual barang dagang pada toko Maju Rp3.000.000,00 Syarat 3/10,n/90\n17 Juni 2019 Diterima pelunasan piutang toko Abadi Rp1.500.000,00\n20 Juni 2019 Dijual tunai peralatan kantor bekas pakai Rp500.000,00\n Transaksi tersebut dicatat dalam jurnal penerimaan kas yang benar adalah ....\n', '', '', '', '', '', '', '', '', 'JawabanAsoal50_ekonomi.png', 'JawabanBsoal50_ekonomi.png', 'JawabanCsoal50_ekonomi.png', 'JawabanDsoal50_ekonomi.png', 'JawabanEsoal50_ekonomi.png', '4', 2, 'T', 'Y', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(5) NOT NULL,
  `XNamaUjian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cbt_tes`
--

INSERT INTO `cbt_tes` (`Urut`, `XKodeUjian`, `XNamaUjian`) VALUES
(1, 'UH', 'Ulangan Harian'),
(2, 'UTS', 'Ujian Tengah Semester'),
(3, 'UAS', 'Ujian Akhir Semester'),
(4, 'TO1', 'Try Out I'),
(5, 'TO2', 'Try Out II'),
(6, 'TO3', 'Try Out III'),
(7, 'TO4', 'Try Out IV'),
(8, 'TO5', 'Try Out V');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_tugas`
--

CREATE TABLE `cbt_tugas` (
  `Urut` int(11) NOT NULL,
  `XLevel` varchar(10) NOT NULL,
  `XNIK` varchar(10) NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeJurusan` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XNilaiTugas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_ujian`
--

CREATE TABLE `cbt_ujian` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XLambat` enum('0','1') COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XAcakSoal` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTglUjian` date NOT NULL,
  `XJamUjian` time NOT NULL,
  `XBatasMasuk` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XIdleTime` int(11) NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XGuru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XTglBuat` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XProktor` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XNIPProktor` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPengawas` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XNIPPengawas` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XCatatan` text COLLATE latin1_general_ci NOT NULL,
  `XSesi` varchar(11) COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `XTampil` int(11) NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XStatusToken` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XPdf` int(1) NOT NULL,
  `XFilePdf` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XListening` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `cbt_ujian`
--

INSERT INTO `cbt_ujian` (`Urut`, `XKodeUjian`, `XSemester`, `XKodeLevel`, `XKodeKelas`, `XKodeJurusan`, `XKodeMapel`, `XKodeSoal`, `XLambat`, `XJumPilihan`, `XJumSoal`, `XPilGanda`, `XEsai`, `XAcakSoal`, `XTglUjian`, `XJamUjian`, `XBatasMasuk`, `XSisaWaktu`, `XLamaUjian`, `XIdleTime`, `XTokenUjian`, `XGuru`, `XTglBuat`, `XSetId`, `XStatusUjian`, `XProktor`, `XNIPProktor`, `XPengawas`, `XNIPPengawas`, `XCatatan`, `XSesi`, `XTampil`, `XKodeSekolah`, `XStatusToken`, `XLevel`, `XPdf`, `XFilePdf`, `XListening`) VALUES
(1, 'UAS', 2, '', 'XII', 'IPS', '001', '001', '', 5, 50, 50, 0, '', '2021-03-12', '20:48:00', '20:55:00', '', '00:10:00', 0, 'ZHTEO', 'admin', '', '2020/2021', '1', '', '', '', '', '', '1', 1, '', '1', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_upload_file`
--

CREATE TABLE `cbt_upload_file` (
  `Urut` int(11) NOT NULL,
  `XNamaFile` varchar(250) NOT NULL,
  `XFolder` varchar(250) NOT NULL,
  `XCreated` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_user`
--

CREATE TABLE `cbt_user` (
  `Urut` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `Alamat` text NOT NULL,
  `HP` varchar(20) NOT NULL,
  `Faxs` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `login` int(1) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `XPoto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cbt_user`
--

INSERT INTO `cbt_user` (`Urut`, `Username`, `Password`, `NIP`, `Nama`, `Alamat`, `HP`, `Faxs`, `Email`, `login`, `Status`, `XPoto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'MUH. HAMIM, S.Kom', '', '', '', '', 1, '1', 'icon.gif'),
(13, 'guru', '77e69c137812518e359196bb2f5e9bb9', '', 'MUHAMMAD MURSYID, S.E', '', '', '', '', 2, '1', 'guru.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_zona`
--

CREATE TABLE `cbt_zona` (
  `Urut` int(10) NOT NULL,
  `XZona` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cbt_zona`
--

INSERT INTO `cbt_zona` (`Urut`, `XZona`) VALUES
(1, 'Asia/Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inf_lokasi`
--

CREATE TABLE `inf_lokasi` (
  `lokasi_ID` int(11) NOT NULL,
  `lokasi_kode` varchar(50) NOT NULL DEFAULT '',
  `lokasi_nama` varchar(100) NOT NULL DEFAULT '',
  `lokasi_propinsi` int(2) NOT NULL,
  `lokasi_kabupatenkota` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `lokasi_kecamatan` int(2) UNSIGNED ZEROFILL NOT NULL,
  `lokasi_kelurahan` int(4) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `inf_lokasi`
--

INSERT INTO `inf_lokasi` (`lokasi_ID`, `lokasi_kode`, `lokasi_nama`, `lokasi_propinsi`, `lokasi_kabupatenkota`, `lokasi_kecamatan`, `lokasi_kelurahan`) VALUES
(1, '35.00.00.0000', 'JAWA TIMUR', 35, 00, 00, 0000),
(2, '35.00.00.0000', 'KABUPATEN PROBOLINGGO', 35, 13, 00, 0000),
(3, '35.13.01.0000', 'PAITON', 35, 13, 01, 0000),
(4, '35.13.02.0000', 'KRAKSAAN', 35, 13, 02, 0000),
(5, '35.13.03.0000', 'PAJARAKAN', 35, 13, 03, 0000),
(6, '35.13.04.0000', 'TIRIS', 35, 13, 04, 0000),
(7, '35.13.05.0000', 'KRUCIL', 35, 13, 05, 0000),
(8, '35.13.06.0000', 'BESUK', 35, 13, 06, 0000),
(9, '35.13.07.0000', 'DRINGU', 35, 13, 07, 0000),
(10, '35.13.08.0000', 'BANYUANYAR', 35, 13, 08, 0000),
(11, '35.13.09.0000', 'MARON', 35, 13, 09, 0000),
(12, '35.13.10.0000', 'TEGALSIWALAN', 35, 13, 10, 0000),
(13, '35.13.11.0000', 'LECES', 35, 13, 11, 0000),
(14, '35.13.12.0000', 'GADING', 35, 13, 12, 0000),
(15, '35.13.13.0000', 'GENDING', 35, 13, 13, 0000),
(16, '35.13.14.0000', 'TONGAS', 35, 13, 14, 0000),
(17, '35.13.15.0000', 'KOTA ANYAR', 35, 13, 15, 0000),
(18, '35.13.16.0000', 'KREJENGAN', 35, 13, 16, 0000),
(19, '35.13.17.0000', 'KURIPAN', 35, 13, 17, 0000),
(20, '35.13.18.0000', 'LUMBANG', 35, 13, 18, 0000),
(21, '35.13.19.0000', 'SUKAPURA', 35, 13, 19, 0000),
(22, '35.13.20.0000', 'PAKUNIRAN', 35, 13, 20, 0000),
(23, '35.13.21.0000', 'WONOMERTO', 35, 13, 21, 0000),
(24, '35.13.22.0000', 'SUMBERASIH', 35, 13, 22, 0000),
(25, '35.00.01.0000', 'SUMBER', 35, 13, 23, 0000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `server_pusat`
--

CREATE TABLE `server_pusat` (
  `Urut` int(11) NOT NULL,
  `XServerId` varchar(50) NOT NULL,
  `XSekolah` varchar(200) NOT NULL,
  `XIPSekolah` varchar(50) NOT NULL,
  `XStatus` enum('0','1') NOT NULL,
  `XPass` varchar(50) NOT NULL,
  `XDbName` varchar(50) NOT NULL,
  `XUsername` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `server_pusat`
--

INSERT INTO `server_pusat` (`Urut`, `XServerId`, `XSekolah`, `XIPSekolah`, `XStatus`, `XPass`, `XDbName`, `XUsername`) VALUES
(1, '69886300', 'SMART APLICATION', 'localhost', '1', '', 'db_ct', 'root');

-- --------------------------------------------------------

--
-- Struktur dari tabel `server_sekolah`
--

CREATE TABLE `server_sekolah` (
  `Urut` int(11) NOT NULL,
  `XServerId` varchar(50) NOT NULL,
  `XSekolah` varchar(200) NOT NULL,
  `XIPSekolah` varchar(50) NOT NULL,
  `XStatus` enum('0','1') NOT NULL,
  `XAlamatSek` text NOT NULL,
  `XStatusSinc` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cbt_admin`
--
ALTER TABLE `cbt_admin`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_header`
--
ALTER TABLE `cbt_header`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`Urutan`);

--
-- Indeks untuk tabel `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  ADD PRIMARY KEY (`Urut`),
  ADD KEY `Urut` (`Urut`);

--
-- Indeks untuk tabel `cbt_server`
--
ALTER TABLE `cbt_server`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cbt_setid`
--
ALTER TABLE `cbt_setid`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_sinc`
--
ALTER TABLE `cbt_sinc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `cbt_zona`
--
ALTER TABLE `cbt_zona`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `inf_lokasi`
--
ALTER TABLE `inf_lokasi`
  ADD PRIMARY KEY (`lokasi_ID`),
  ADD KEY `lokasi_kode` (`lokasi_kode`),
  ADD KEY `lokasi_propinsi` (`lokasi_propinsi`),
  ADD KEY `lokasi_kabupatenkota` (`lokasi_kabupatenkota`),
  ADD KEY `lokasi_kecamatan` (`lokasi_kecamatan`),
  ADD KEY `lokasi_kelurahan` (`lokasi_kelurahan`);

--
-- Indeks untuk tabel `server_pusat`
--
ALTER TABLE `server_pusat`
  ADD PRIMARY KEY (`Urut`);

--
-- Indeks untuk tabel `server_sekolah`
--
ALTER TABLE `server_sekolah`
  ADD PRIMARY KEY (`Urut`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cbt_admin`
--
ALTER TABLE `cbt_admin`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `cbt_header`
--
ALTER TABLE `cbt_header`
  MODIFY `Urut` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `Urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_server`
--
ALTER TABLE `cbt_server`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_setid`
--
ALTER TABLE `cbt_setid`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cbt_sinc`
--
ALTER TABLE `cbt_sinc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `cbt_zona`
--
ALTER TABLE `cbt_zona`
  MODIFY `Urut` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `inf_lokasi`
--
ALTER TABLE `inf_lokasi`
  MODIFY `lokasi_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `server_pusat`
--
ALTER TABLE `server_pusat`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
