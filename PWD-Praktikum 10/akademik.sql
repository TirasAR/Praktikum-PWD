-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2021 pada 05.44
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `NIM` varchar(5) NOT NULL,
  `kodeMK` varchar(5) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `khs`
--

INSERT INTO `khs` (`NIM`, `kodeMK`, `nilai`) VALUES
('MHS01', '21PWD', 'A'),
('MHS02', '21PWD', 'B'),
('MHS03', '21PWD', 'B+'),
('MHS04', '21PWD', 'A-'),
('MHS05', '21PWD', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Prodi` varchar(30) DEFAULT NULL,
  `nim` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tgllhr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`Prodi`, `nim`, `nama`, `jkel`, `alamat`, `tgllhr`) VALUES
('Teknik Informatika', 'MHS01', 'Siti Aminah', 'P', 'SOLO', '1995-10-01'),
('Teknik Informatika', 'MHS02', 'Rita', 'P', 'SOLO', '1999-01-01'),
('Teknik Informatika', 'MHS03', 'Amirudin', 'L', 'SEMARANG', '1998-08-11'),
('Teknik Informatika', 'MHS04', 'Siti Maryam', 'P', 'JAKARTA', '1995-04-15'),
('Teknik Informatika', 'MHS05', 'Rama', 'L', 'BANDUNG', '1995-04-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(5) NOT NULL,
  `namaMK` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `namaMK`, `sks`, `sem`) VALUES
('21DM', 'Data Mining', 3, 5),
('21KK', 'Keamanan Komputer', 3, 5),
('21PM', 'Pembelajaran Mesin', 3, 5),
('21PMB', 'Pemrograman Mobile', 3, 5),
('21PWD', 'Pemrograman Web Dinamis', 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama_lengkap`, `email`, `level`) VALUES
('adji', 'adji321', 'adji ramadhan', 'adji@gmail.com', NULL),
('Tiras', '9bfac042cc84d986584fff22656892cf', 'Tiras Adji Ramadhanki', 'tiras@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `kodeMK` (`kodeMK`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD CONSTRAINT `khs_ibfk_1` FOREIGN KEY (`kodeMK`) REFERENCES `matakuliah` (`kode`),
  ADD CONSTRAINT `khs_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
