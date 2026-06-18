-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2026 pada 09.07
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_kelas_panduekaprastyo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(50) DEFAULT NULL,
  `lokasi_kampus` varchar(50) DEFAULT NULL,
  `jenis_prestasi` varchar(50) DEFAULT NULL,
  `tingkat_prestasi` varchar(30) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(50) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzi', 'SMA Negeri 1 Jakarta', 85.50, 250000.00, 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMA Negeri 3 Bandung', 78.00, 250000.00, 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'MAN 2 Yogyakarta', 90.25, 250000.00, 'Reguler', 'Ilmu Komputer', 'Kampus B', NULL, NULL, NULL, NULL),
(4, 'Dedi Wijaya', 'SMK Kebangsaan', 82.10, 250000.00, 'Reguler', 'Teknik Elektro', 'Kampus Utama', NULL, NULL, NULL, NULL),
(5, 'Eka Putri', 'SMA Kristen 1', 88.00, 250000.00, 'Reguler', 'Manajemen', 'Kampus B', NULL, NULL, NULL, NULL),
(6, 'Fahri Hamzah', 'SMA Negeri 5 Surabaya', 79.90, 250000.00, 'Reguler', 'Akuntansi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(7, 'Gita Gutawa', 'SMA Labschool', 92.00, 250000.00, 'Reguler', 'Teknik Informatika', 'Kampus B', NULL, NULL, NULL, NULL),
(8, 'Hendra Setiawan', 'SMA Olahraga Riau', 84.00, 250000.00, 'Prestasi', NULL, NULL, 'Bulutangkis', 'Nasional', NULL, NULL),
(9, 'Indah Permata', 'SMA Negeri 1 Solo', 95.00, 250000.00, 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(10, 'Joko Widodo', 'SMA Negeri 6 Surakarta', 86.50, 250000.00, 'Prestasi', NULL, NULL, 'Karya Ilmiah Remaja', 'Provinsi', NULL, NULL),
(11, 'Kevin Sanjaya', 'SMA Khusus Atlet', 80.00, 250000.00, 'Prestasi', NULL, NULL, 'Bulutangkis', 'Internasional', NULL, NULL),
(12, 'Lesti Kejora', 'SMA Negeri 1 Cianjur', 87.30, 250000.00, 'Prestasi', NULL, NULL, 'Menyanyi Solo', 'Nasional', NULL, NULL),
(13, 'Maia Estianty', 'SMA Negeri 2 Surabaya', 89.00, 250000.00, 'Prestasi', NULL, NULL, 'Cipta Lagu', 'Provinsi', NULL, NULL),
(14, 'Nadiem Makarim', 'SMA Kanisius', 96.00, 250000.00, 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Internasional', NULL, NULL),
(15, 'Oki Setiana', 'SMA Negeri 1 Medan', 88.50, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-990/DIKNAS/2026', 'Kementerian Pendidikan'),
(16, 'Putra Perdana', 'SMAN 3 Semarang', 85.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-112/PERHUB/2026', 'Kementerian Perhubungan'),
(17, 'Qori Sandioriva', 'SMA Negeri 1 Banda Aceh', 83.40, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-404/KOMINFO/2026', 'Kementerian Kominfo'),
(18, 'Rian Ardianto', 'SMA Negeri 1 Bantul', 81.20, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-771/BKN/2026', 'Badan Kepegawaian Negara'),
(19, 'Siti Badriah', 'SMA Negeri 1 Bekasi', 86.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-882/KEMENKEU/2026', 'Kementerian Keuangan'),
(20, 'Taufik Hidayat', 'SMA Negeri 1 Bandung', 89.10, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-551/KEMENHAN/2026', 'Kementerian Pertahanan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
