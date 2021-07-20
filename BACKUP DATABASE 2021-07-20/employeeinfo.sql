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
-- Database: `employeedata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `EID` int(50) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Surname` varchar(40) NOT NULL,
  `Username` varchar(1) NOT NULL,
  `Passsword` varchar(1) NOT NULL,
  `Age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employeeinfo`
--

INSERT INTO `employeeinfo` (`EID`, `Name`, `Surname`, `Username`, `Passsword`, `Age`) VALUES
(1, 'Mark', 'Boner', '1', '1', 35),
(2, 'Jhon', 'Tesar', '2', '2', 25);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`EID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
