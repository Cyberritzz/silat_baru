-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2023 pada 15.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `userID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`userID`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tanding`
--

CREATE TABLE `jadwal_tanding` (
  `id_partai` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kelas` varchar(55) NOT NULL,
  `gelanggang` varchar(2) NOT NULL,
  `partai` varchar(4) NOT NULL,
  `nm_merah` varchar(55) NOT NULL,
  `kontingen_merah` varchar(55) NOT NULL,
  `nm_biru` varchar(55) NOT NULL,
  `kontingen_biru` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT '-',
  `pemenang` varchar(150) NOT NULL DEFAULT '-',
  `babak` varchar(55) DEFAULT NULL,
  `medali` varchar(2) NOT NULL DEFAULT '0',
  `aktif` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_tanding`
--

INSERT INTO `jadwal_tanding` (`id_partai`, `tgl`, `kelas`, `gelanggang`, `partai`, `nm_merah`, `kontingen_merah`, `nm_biru`, `kontingen_biru`, `status`, `pemenang`, `babak`, `medali`, `aktif`) VALUES
(3, '0000-00-00', 'A Putra Dewasa', 'A', '1', 'BALMOND', 'jepang', 'MARTIS', 'thailand', '( 0-0 )', 'MARTIS (thailand)', 'PENYISIHAN', '0', '0'),
(4, '2017-12-01', 'A PUTRA DEWASA', 'A', '1', 'Yudha', 'Setia Hati Organisasi', 'Yogasara', 'Tapak Suci', '-', '-', 'PENYISIHAN', '0', '1'),
(5, '2017-12-01', 'A PUTRA DEWASA', 'A', '2', 'Eman', 'Matahari', 'Rizki', 'Setia hati terate', '-', '-', 'PENYISIHAN', '0', '0'),
(6, '2017-12-01', 'A PUTRA DEWASA', 'A', '3', 'Sapta', 'Perisai Diri', 'Lubix', 'Setia hati organisasi', '-', '-', 'PENYISIHAN', '0', '0'),
(7, '2017-12-01', 'A PUTRA DEWASA', 'A', '4', 'Muklis', 'Setia hati terate', 'Rizal', 'Tapak Suci', '-', '-', 'PENYISIHAN', '0', '0'),
(8, '2017-12-01', 'A PUTRA DEWASA', 'A', '5', 'Roma', 'Canda Birawa', 'Ramli', 'Perisai Diri', '-', '-', 'PEREMPAT FINAL', '0', '0'),
(9, '2017-12-01', 'A PUTRA DEWASA', 'A', '6', 'Irama', 'Matahari', 'Robi', 'Setia hati terate', '-', '-', 'PEREMPAT FINAL', '0', '1'),
(10, '2017-12-01', 'A PUTRA DEWASA', 'A', '7', 'Isran', 'Perisai Diri', 'Suganda', 'Canda Birawa', '-', '-', 'SEMIFINAL', '0', '0'),
(11, '2017-12-01', 'A PUTRA DEWASA', 'A', '8', 'Azis', 'Setia hati terate', 'Reza', 'Tapak Suci', '-', '-', 'SEMIFINAL', '0', '1'),
(12, '2017-12-01', 'A PUTRA DEWASA', 'A', '9', 'Gagap', 'Setia Hati Organisasi', 'Oktavianus', 'Matahari', '-', '-', 'FINAL', '3', '0'),
(13, '2023-06-05', 'A PUTRA DEWASA', 'A', '10', 'Brian', 'Setia Hati Organisasi', 'Gamma', 'Perisai Diri', '( 0-1 )', 'Gamma (Perisai Diri)', 'FINAL', '0', '0'),
(14, '0000-00-00', 'A Putra Dewasa', 'SI', '1', 'HARIS', 'jepang', 'WIDI', 'thailand', '-', '-', 'PENYISIHAN', '0', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tgr`
--

CREATE TABLE `jadwal_tgr` (
  `id_partai` int(11) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `golongan` varchar(55) NOT NULL,
  `noundian` varchar(4) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `kontingen` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelastanding`
--

CREATE TABLE `kelastanding` (
  `ID_kelastanding` int(11) NOT NULL,
  `nm_kelastanding` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelastanding`
--

INSERT INTO `kelastanding` (`ID_kelastanding`, `nm_kelastanding`) VALUES
(1, 'KELAS A'),
(2, 'KELAS B'),
(3, 'KELAS C'),
(4, 'KELAS D'),
(5, 'KELAS E'),
(6, 'KELAS F'),
(7, 'KELAS G'),
(8, 'KELAS H'),
(9, 'KELAS I'),
(10, 'KELAS J');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `ID_konfirmasi` int(11) NOT NULL,
  `bank_tujuan` varchar(55) NOT NULL,
  `bank_pengirim` varchar(55) NOT NULL,
  `norek_pengirim` varchar(35) NOT NULL,
  `nm_pengirim` varchar(35) NOT NULL,
  `kontak` varchar(35) NOT NULL,
  `tgl_transfer` varchar(15) NOT NULL,
  `jumlah` varchar(35) NOT NULL,
  `bukti` varchar(128) NOT NULL,
  `catatan` text NOT NULL,
  `datetime` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'OPEN'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `medali`
--

CREATE TABLE `medali` (
  `id_medali` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `kontingen` varchar(55) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `medali` varchar(25) NOT NULL,
  `id_partai_FK` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `medali`
--

INSERT INTO `medali` (`id_medali`, `nama`, `kontingen`, `kelas`, `medali`, `id_partai_FK`) VALUES
(1, 'Oktavianus', 'Matahari', 'A PUTRA DEWASA', 'Perak', '12'),
(2, 'Gagap', 'Setia Hati Organisasi', 'A PUTRA DEWASA', 'Emas', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_atlet`
--

CREATE TABLE `nilai_atlet` (
  `id_nilaiatlet` int(11) NOT NULL,
  `no_partai` varchar(5) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `kontingen` varchar(100) NOT NULL,
  `hukuman` varchar(5) NOT NULL DEFAULT '0',
  `nilai` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_atlet`
--

INSERT INTO `nilai_atlet` (`id_nilaiatlet`, `no_partai`, `nama`, `kontingen`, `hukuman`, `nilai`) VALUES
(3, '1', 'BALMOND', 'jepang', '-3', '3'),
(4, '1', 'MARTIS', 'thailand', '-1', '20'),
(5, '10', 'Brian', 'Setia Hati Organisasi', '-4', '12'),
(6, '10', 'Gamma', 'Perisai Diri', '-8', '15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_ganda`
--

CREATE TABLE `nilai_ganda` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_juri` int(11) NOT NULL,
  `teknik_serang` int(11) NOT NULL,
  `mantap_kompak` int(11) NOT NULL,
  `serasi` int(11) NOT NULL,
  `hukum_1` int(11) NOT NULL,
  `hukum_2` int(11) NOT NULL,
  `hukum_3` int(11) NOT NULL,
  `hukum_4` int(11) NOT NULL,
  `hukum_5` int(11) NOT NULL,
  `hukum_6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_regu`
--

CREATE TABLE `nilai_regu` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_juri` int(11) NOT NULL,
  `jurus1` int(11) NOT NULL,
  `jurus2` int(11) NOT NULL,
  `jurus3` int(11) NOT NULL,
  `jurus4` int(11) NOT NULL,
  `jurus5` int(11) NOT NULL,
  `jurus6` int(11) NOT NULL,
  `jurus7` int(11) NOT NULL,
  `jurus8` int(11) NOT NULL,
  `jurus9` int(11) NOT NULL,
  `jurus10` int(11) NOT NULL,
  `jurus11` int(11) NOT NULL,
  `jurus12` int(11) NOT NULL,
  `kemantapan` int(11) NOT NULL,
  `hukum_1` int(11) NOT NULL,
  `hukum_2` int(11) NOT NULL,
  `hukum_3` int(11) NOT NULL,
  `hukum_4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tanding`
--

CREATE TABLE `nilai_tanding` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` varchar(5) NOT NULL,
  `id_juri` varchar(1) NOT NULL,
  `button` varchar(55) NOT NULL,
  `nilai` int(11) NOT NULL,
  `sudut` varchar(55) NOT NULL,
  `babak` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_tanding`
--

INSERT INTO `nilai_tanding` (`id_nilai`, `id_jadwal`, `id_juri`, `button`, `nilai`, `sudut`, `babak`) VALUES
(3, '3', '1', '1', 1, 'MERAH', '1'),
(4, '3', '1', '1+1', 2, 'MERAH', '1'),
(5, '3', '1', '-1', -1, 'MERAH', '1'),
(6, '3', '1', '-1', -1, 'BIRU', '1'),
(7, '3', '1', '1+1', 2, 'BIRU', '1'),
(8, '3', '1', '1+2', 3, 'BIRU', '1'),
(9, '3', '1', '2', 2, 'BIRU', '1'),
(10, '3', '1', '1+3', 4, 'BIRU', '1'),
(11, '3', '1', '1', 1, 'MERAH', '2'),
(12, '3', '1', '1+1', 2, 'MERAH', '2'),
(13, '3', '1', '-2', -2, 'MERAH', '2'),
(14, '3', '1', '1+2', 3, 'BIRU', '2'),
(15, '3', '1', '1+3', 4, 'BIRU', '2'),
(16, '3', '1', '3', 3, 'BIRU', '2'),
(17, '13', '1', '1', 1, 'MERAH', '1'),
(18, '13', '1', '1+1', 2, 'MERAH', '1'),
(19, '13', '1', '-1', -1, 'MERAH', '1'),
(20, '13', '1', '-1', -1, 'BIRU', '1'),
(21, '13', '1', '1+1', 2, 'BIRU', '1'),
(22, '13', '1', '1', 1, 'BIRU', '1'),
(23, '13', '1', '1+2', 3, 'BIRU', '1'),
(24, '13', '1', '-2', -2, 'BIRU', '1'),
(25, '13', '1', '1+2', 3, 'BIRU', '1'),
(26, '13', '1', '2', 2, 'BIRU', '1'),
(27, '13', '1', '1+2', 3, 'MERAH', '1'),
(28, '13', '1', '1+1', 2, 'MERAH', '1'),
(29, '13', '1', '-1', -1, 'MERAH', '2'),
(30, '13', '1', '1+1', 2, 'MERAH', '2'),
(31, '13', '1', '1', 1, 'MERAH', '2'),
(32, '13', '1', '2', 2, 'MERAH', '2'),
(33, '13', '1', '1+2', 3, 'MERAH', '2'),
(34, '13', '1', '-2', -2, 'MERAH', '2'),
(35, '13', '1', '1+1', 2, 'BIRU', '2'),
(36, '13', '1', '1+2', 3, 'BIRU', '2'),
(37, '13', '1', '1+3', 4, 'BIRU', '2'),
(38, '13', '1', '3', 3, 'BIRU', '2'),
(39, '13', '1', '-2', -2, 'BIRU', '2'),
(40, '13', '1', '-1', -1, 'BIRU', '2'),
(41, '13', '1', '-2', -2, 'BIRU', '2'),
(59, '4', '1', '1', 1, 'MERAH', '1'),
(60, '4', '1', '1', 1, 'BIRU', '1'),
(61, '4', '1', '1', 1, 'MERAH', '1'),
(62, '4', '1', '1', 1, 'BIRU', '1'),
(63, '4', '1', '1', 1, 'BIRU', '1'),
(64, '4', '1', '2', 2, 'BIRU', '1'),
(65, '4', '1', '1', 1, 'BIRU', '1'),
(66, '4', '1', '2', 2, 'BIRU', '1'),
(67, '4', '1', '1', 1, 'BIRU', '1'),
(68, '4', '1', '2', 2, 'BIRU', '1'),
(69, '4', '2', '1', 1, 'MERAH', '1'),
(70, '4', '2', '1', 1, 'BIRU', '1'),
(71, '4', '2', '2', 2, 'BIRU', '1'),
(72, '4', '2', '2', 2, 'MERAH', '1'),
(73, '4', '2', '2', 2, 'MERAH', '1'),
(74, '4', '2', '2', 2, 'MERAH', '1'),
(75, '4', '2', '2', 2, 'MERAH', '1'),
(76, '4', '2', '2', 2, 'MERAH', '1'),
(77, '4', '2', '2', 2, 'MERAH', '1'),
(78, '4', '2', '2', 2, 'MERAH', '1'),
(79, '4', '2', '2', 2, 'BIRU', '1'),
(80, '4', '2', '2', 2, 'BIRU', '1'),
(81, '4', '2', '2', 2, 'BIRU', '1'),
(84, '4', '2', '2', 2, 'BIRU', '1'),
(85, '4', '2', '2', 2, 'BIRU', '1'),
(86, '4', '2', '2', 2, 'BIRU', '1'),
(87, '4', '3', '1', 1, 'MERAH', '1'),
(88, '4', '3', '1', 1, 'MERAH', '1'),
(89, '4', '3', '1', 1, 'MERAH', '1'),
(90, '4', '3', '1', 1, 'MERAH', '1'),
(91, '4', '3', '1', 1, 'MERAH', '1'),
(92, '4', '3', '1', 1, 'BIRU', '1'),
(93, '4', '3', '1', 1, 'BIRU', '1'),
(94, '4', '3', '1', 1, 'BIRU', '1'),
(95, '4', '3', '2', 2, 'BIRU', '1'),
(96, '4', '3', '2', 2, 'MERAH', '1'),
(97, '4', '3', '1', 1, 'MERAH', '1'),
(98, '4', '4', '-1', -1, 'MERAH', '1'),
(99, '4', '4', '3', 3, 'MERAH', '1'),
(100, '4', '4', '-5', -5, 'MERAH', '1'),
(101, '4', '4', '-5', -5, 'BIRU', '1'),
(102, '4', '4', '-2', -2, 'BIRU', '1'),
(103, '4', '4', '0', 0, 'BIRU', '1'),
(104, '4', '4', '3', 3, 'MERAH', '1'),
(105, '11', '1', '1', 1, 'MERAH', '1'),
(106, '11', '1', '2', 2, 'MERAH', '1'),
(107, '11', '1', '1', 1, 'BIRU', '1'),
(108, '11', '1', '2', 2, 'BIRU', '1'),
(109, '11', '1', '1', 1, 'BIRU', '1'),
(110, '11', '1', '1', 1, 'BIRU', '1'),
(111, '11', '1', '1', 1, 'MERAH', '1'),
(112, '11', '1', '1', 1, 'MERAH', '1'),
(113, '11', '1', '1', 1, 'BIRU', '1'),
(114, '11', '2', '1', 1, 'BIRU', '1'),
(115, '11', '2', '1', 1, 'MERAH', '1'),
(116, '11', '2', '1', 1, 'BIRU', '1'),
(179, '14', '1', '2', 2, 'MERAH', '1'),
(180, '14', '1', '1', 1, 'MERAH', '1'),
(183, '14', '1', '1', 1, 'MERAH', '1'),
(186, '14', '1', '2', 2, 'BIRU', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tunggal`
--

CREATE TABLE `nilai_tunggal` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_juri` int(11) NOT NULL,
  `jurus1` int(11) NOT NULL,
  `jurus2` int(11) NOT NULL,
  `jurus3` int(11) NOT NULL,
  `jurus4` int(11) NOT NULL,
  `jurus5` int(11) NOT NULL,
  `jurus6` int(11) NOT NULL,
  `jurus7` int(11) NOT NULL,
  `jurus8` int(11) NOT NULL,
  `jurus9` int(11) NOT NULL,
  `jurus10` int(11) NOT NULL,
  `jurus11` int(11) NOT NULL,
  `jurus12` int(11) NOT NULL,
  `jurus13` int(11) NOT NULL,
  `jurus14` int(11) NOT NULL,
  `kemantapan` int(11) NOT NULL,
  `hukum_1` int(11) NOT NULL,
  `hukum_2` int(11) NOT NULL,
  `hukum_3` int(11) NOT NULL,
  `hukum_4` int(11) NOT NULL,
  `hukum_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `ID_peserta` int(11) NOT NULL,
  `nm_lengkap` varchar(35) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tpt_lahir` varchar(55) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tb` int(11) NOT NULL,
  `bb` int(11) NOT NULL,
  `kelas` varchar(21) NOT NULL,
  `asal_sekolah` varchar(55) NOT NULL,
  `kategori_tanding` varchar(10) NOT NULL,
  `golongan` varchar(15) NOT NULL,
  `kode_gr` varchar(32) NOT NULL,
  `kelas_tanding_FK` varchar(4) NOT NULL,
  `kontingen` varchar(100) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `ktp` varchar(128) NOT NULL,
  `akta_lahir` varchar(128) NOT NULL,
  `ijazah` varchar(128) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `undian`
--

CREATE TABLE `undian` (
  `id_undian` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `no_undian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `undian_tgr`
--

CREATE TABLE `undian_tgr` (
  `id_undiantgr` int(11) NOT NULL,
  `idpesertatgr` varchar(32) NOT NULL,
  `no_undian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_habis`
--

CREATE TABLE `waktu_habis` (
  `waktu_expired` int(10) DEFAULT NULL,
  `waktu_input` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wasit_juri`
--

CREATE TABLE `wasit_juri` (
  `id_juri` int(11) NOT NULL,
  `nm_juri` varchar(55) NOT NULL,
  `pass_juri` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wasit_juri`
--

INSERT INTO `wasit_juri` (`id_juri`, `nm_juri`, `pass_juri`) VALUES
(1, 'JURI 1', '5f4dcc3b5aa765d61d8327deb882cf99'),
(2, 'JURI 2', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'JURI 3', '5f4dcc3b5aa765d61d8327deb882cf99'),
(4, 'DEWAN 1', '5f4dcc3b5aa765d61d8327deb882cf99'),
(5, 'DEWAN 2', '5f4dcc3b5aa765d61d8327deb882cf99');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userID`);

--
-- Indeks untuk tabel `jadwal_tanding`
--
ALTER TABLE `jadwal_tanding`
  ADD PRIMARY KEY (`id_partai`);

--
-- Indeks untuk tabel `jadwal_tgr`
--
ALTER TABLE `jadwal_tgr`
  ADD PRIMARY KEY (`id_partai`);

--
-- Indeks untuk tabel `kelastanding`
--
ALTER TABLE `kelastanding`
  ADD PRIMARY KEY (`ID_kelastanding`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`ID_konfirmasi`);

--
-- Indeks untuk tabel `medali`
--
ALTER TABLE `medali`
  ADD PRIMARY KEY (`id_medali`);

--
-- Indeks untuk tabel `nilai_atlet`
--
ALTER TABLE `nilai_atlet`
  ADD PRIMARY KEY (`id_nilaiatlet`);

--
-- Indeks untuk tabel `nilai_ganda`
--
ALTER TABLE `nilai_ganda`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_regu`
--
ALTER TABLE `nilai_regu`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_tanding`
--
ALTER TABLE `nilai_tanding`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_tunggal`
--
ALTER TABLE `nilai_tunggal`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`ID_peserta`);

--
-- Indeks untuk tabel `undian`
--
ALTER TABLE `undian`
  ADD PRIMARY KEY (`id_undian`);

--
-- Indeks untuk tabel `undian_tgr`
--
ALTER TABLE `undian_tgr`
  ADD PRIMARY KEY (`id_undiantgr`);

--
-- Indeks untuk tabel `wasit_juri`
--
ALTER TABLE `wasit_juri`
  ADD PRIMARY KEY (`id_juri`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tanding`
--
ALTER TABLE `jadwal_tanding`
  MODIFY `id_partai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tgr`
--
ALTER TABLE `jadwal_tgr`
  MODIFY `id_partai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelastanding`
--
ALTER TABLE `kelastanding`
  MODIFY `ID_kelastanding` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `ID_konfirmasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `medali`
--
ALTER TABLE `medali`
  MODIFY `id_medali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nilai_atlet`
--
ALTER TABLE `nilai_atlet`
  MODIFY `id_nilaiatlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nilai_ganda`
--
ALTER TABLE `nilai_ganda`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_regu`
--
ALTER TABLE `nilai_regu`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_tanding`
--
ALTER TABLE `nilai_tanding`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT untuk tabel `nilai_tunggal`
--
ALTER TABLE `nilai_tunggal`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `ID_peserta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `undian`
--
ALTER TABLE `undian`
  MODIFY `id_undian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `undian_tgr`
--
ALTER TABLE `undian_tgr`
  MODIFY `id_undiantgr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wasit_juri`
--
ALTER TABLE `wasit_juri`
  MODIFY `id_juri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
