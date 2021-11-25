-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2021 pada 03.36
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, '12 ', 'RPL 1'),
(2, '12', 'RPL 2'),
(3, '12', 'TKJ 1'),
(4, '12', 'TKJ 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `nominal_bayar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_siswa`, `id_spp`, `tgl_bayar`, `nominal_bayar`) VALUES
(1, 2, 5, '2021-05-19', 200000),
(2, 15, 3, '2021-04-01', 200000),
(3, 7, 2, '2021-02-10', 150000),
(4, 4, 6, '2021-08-16', 200000),
(5, 7, 3, '2021-03-25', 250000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(255) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama_siswa` varchar(35) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `status_active` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `id_kelas`, `status_active`, `created_at`, `updated_at`) VALUES
(1, '11901601', 'ADE IRAWATI', 'L', 'DAWUAN', 1, 'NON-ACTIVE', NULL, '2021-11-25 09:59:08'),
(2, '11901610', 'AGAN FRAHASTA', 'L', 'CICADAS\r\n', 1, 'ACTIVE', NULL, NULL),
(3, '11901618', 'AHMAD ALFARIZKI', 'L', 'SAGALAHERANG\r\n', 1, 'ACTIVE', NULL, NULL),
(4, '11901660', 'ANDREA IBRAHIM', 'L', 'SUKAMELANG', 1, 'ACTIVE', NULL, NULL),
(5, '11901718', 'CHANDRA MAULANA SAPUTRA', 'L', 'TANJUNGSIANG', 1, 'ACTIVE', NULL, NULL),
(6, '11901779', 'DIMAS ALVAREZEL SUSENDI', 'L', 'SUBANG', 1, 'ACTIVE', NULL, NULL),
(7, '11901803', 'DWI YANTI RAHMATIKA', 'P', 'PAGADEN', 1, 'ACTIVE', NULL, NULL),
(8, '11901804', 'DWIYANA NUGRAHA', 'L', 'JALAN CAGAK', 1, 'ACTIVE', NULL, NULL),
(9, '11901807', 'EKA LESTARI', 'P', 'SUMURBARANG\r\n', 1, 'ACTIVE', NULL, NULL),
(10, '11901823', 'FADHILAH NURAMADHAN', 'L', 'SUBANG', 1, 'ACTIVE', NULL, NULL),
(11, '11901598', 'ABDULLAH GHAZY AL FATTAH', 'L', 'KALIJATI', 3, 'ACTIVE', NULL, NULL),
(12, '11901622', 'AINUN PERMATASARI', 'P', 'PERUM', 3, 'ACTIVE', NULL, NULL),
(13, '11901626', 'AKBAR GILANG RAMADHAN', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(14, '11901656', 'ANDIKA PRATAMA', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(15, '11901667', 'ANGGA', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(16, '11901685', 'ARIF HIDAYAT', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(17, '11901691', 'ASEP SAEPULOH', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(18, '11901711', 'CAHYA ZAELANI', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(19, '11901746', 'DEDE RAMADHAN', 'L', 'SUBANG', 3, 'ACTIVE', NULL, NULL),
(20, '11901758', 'DEWANDA ABRIEL FAHREZY AKBAR', 'L', 'CINANGSI', 3, 'ACTIVE', NULL, NULL),
(21, '11902313', 'THALAL ATHA NABIL', 'L', 'CINANGSI', 1, 'ACTIVE', '2021-11-24 08:47:00', '2021-11-24 08:47:00'),
(23, '11902223', 'SALMA LABIBAH', 'P', 'KASOMALANG', 1, 'ACTIVE', '2021-11-24 08:50:18', '2021-11-24 08:50:18'),
(24, '11902352', 'WILDAN SOLIHAN', 'L', 'PAGADEN', 1, 'ACTIVE', '2021-11-24 08:52:13', '2021-11-24 08:52:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `nama_spp` varchar(15) NOT NULL,
  `nominal_tagihan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `nama_spp`, `nominal_tagihan`) VALUES
(1, 'SPP JANUARI', 200000),
(2, 'SPP FEBRUARI', 200000),
(3, 'SPP MARET', 200000),
(4, 'SPP APRIL', 200000),
(5, 'SPP MEI', 200000),
(6, 'SPP JUNI', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '$2a$12$GBGRO0pYTwS4Ugxrp2o/Be5igADGXB2//YmjSmfL4/A6LIKdVHxCi', NULL, '2021-10-27 08:21:16', '2021-10-27 08:21:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_siswa`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
