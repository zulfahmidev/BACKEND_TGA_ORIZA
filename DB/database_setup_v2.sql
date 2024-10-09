-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2024 pada 09.41
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
-- Database: `db_biasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_results`
--

CREATE TABLE `data_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `transportasi` varchar(255) NOT NULL,
  `status_ayah` varchar(255) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `penghasilan_ayah` varchar(255) NOT NULL,
  `status_ibu` varchar(255) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `penghasilan_ibu` varchar(255) NOT NULL,
  `jarak_rumah` varchar(255) NOT NULL,
  `jumlah_tanggungan` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_results`
--

INSERT INTO `data_results` (`id`, `nama`, `transportasi`, `status_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `status_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `jarak_rumah`, `jumlah_tanggungan`, `kelas`, `created_at`) VALUES
(568, 'Marvino Afanda', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(569, 'MIFTAHUL AZZAHRA', 'Sepeda motor', 'Hidup', 'Buruh', '500,000 - 999,999', 'Hidup', 'buruh', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(570, 'RIHADATHUL AISYI', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '500,000 - 999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:59'),
(571, 'AHMAD SHALEH NST', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(572, 'Aidil Adha', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(573, 'Aisya Fakhira', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(574, 'Azhar Hidayat', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(575, 'Cindy Delova', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(576, 'Deon Azkanio Ananta', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(577, 'Havizul Khairi', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '8', 'Tidak Layak', '2024-10-09 07:22:59'),
(578, 'Isam', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(579, 'Khozainil Asyfatila', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(580, 'M. Al Pasha', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(581, 'Miftahul Nurjannah', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(582, 'Muhammad Iqram', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '9', 'Layak', '2024-10-09 07:23:00'),
(583, 'NAIRA PANESA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(584, 'Tiara Anggina', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:23:00'),
(585, 'ARISA AZHARA LUBIS', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:23:00'),
(586, 'FAIZ NAUFAL', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(587, 'HASYIFA', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(588, 'Humayra Putri Dissa', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:23:00'),
(589, 'M. DANIEL HERFI ALMUZANY', 'Jalan kaki', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(590, 'Mifratul Reski', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:23:00'),
(591, 'MUHAMMAD MIRZA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(592, 'Nisaul Hasanah', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(593, 'RAKHA WIJDAN MAULANA', 'Sepeda motor', 'Hidup', 'Pedagang Besar', '2,000,000 - 4,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:23:00'),
(594, 'LATIFA QATRIN NADA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(595, 'SAJIDUR RAHMAN', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(596, 'DHIA SILMI ATIYAH', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(597, 'Fauzi Hadi', 'Sepeda motor', 'Hidup', 'Nelayan', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:23:00'),
(598, 'ABI ALHIDAYAT', 'Sepeda motor', 'Hidup', 'Pedagang Besar', '2,000,000 - 4,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(599, 'FITRIANI', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(600, 'ABDUL RESKI', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '2 Km', '6', 'Layak', '2024-10-09 07:23:00'),
(601, 'Adib Muzakki', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(602, 'Al Hilal', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(603, 'ALJASIR', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(604, 'Alwi', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:23:00'),
(605, 'ARIANDA AFTAR', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(606, 'Aulia Pajri', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '6', 'Layak', '2024-10-09 07:23:00'),
(607, 'AURA DWI HAIFA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(608, 'AZZIQRA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(609, 'Fauzan Pratama', 'Sepeda', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(610, 'Imam Raiwan Adha', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(611, 'KEYZA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(612, 'Mozalia Andini', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:23:00'),
(613, 'Mulia Ananda', 'Sepeda', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(614, 'Nazla Syafitri', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(615, 'NILWA AL KAHFI', 'Sepeda', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(616, 'Rahmat Afandi', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(617, 'RAPI JULIA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(618, 'SUCI MARHAMAH', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(619, 'SYIFA NAFISA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(620, 'YUGA ANUGRAH', 'Andong/bendi/sado/dokar/delman/becak', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '5', 'Layak', '2024-10-09 07:23:00'),
(621, 'ZAHRA', 'Sepeda', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:23:00'),
(622, 'Zaskia Ramadani', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(623, 'Zikra Mardiah HRP', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(624, 'Afifi', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(625, 'Aditiya Ilham', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(626, 'Ahmad Arazoki', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '2 Km', '5', 'Layak', '2024-10-09 07:23:00'),
(627, 'Ahmad Rizki Pratama', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:23:00'),
(628, 'Aldison', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(629, 'Alghiffari', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(630, 'Alya Salsabila', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(631, 'AZZAHRA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(632, 'Chika Raihanun', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '3', 'Layak', '2024-10-09 07:23:00'),
(633, 'Fahrisa Bilhusain', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:23:00'),
(634, 'Fajar Ramadhan', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(635, 'GENDIS ANIDA SALWA RAMANDANI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:23:00'),
(636, 'HERI SANJAYA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:23:00'),
(637, 'IBNU MUBAROK', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:23:00'),
(638, 'IKHSANUL HAMDI', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Tidak Layak', '2024-10-09 07:23:00'),
(639, 'Khairunnisa', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:23:00'),
(640, 'M. Benzema', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:23:00'),
(641, 'MAYSA NUR RAMADHANI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(642, 'MUHAMMAD PADLAN', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(643, 'Riska Amanda', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:23:00'),
(644, 'Riski Aulia', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:23:00'),
(645, 'RIZKI HIDAYAT', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:23:00'),
(646, 'Salwa Aini', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:23:00'),
(647, 'Syafiiq Muzakki', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:23:00'),
(648, 'ZUL AFNAN', 'Sepeda', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '5', 'Layak', '2024-10-09 07:23:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tests`
--

CREATE TABLE `data_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `transportasi` varchar(255) NOT NULL,
  `status_ayah` varchar(255) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `penghasilan_ayah` varchar(255) NOT NULL,
  `status_ibu` varchar(255) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `penghasilan_ibu` varchar(255) NOT NULL,
  `jarak_rumah` varchar(255) NOT NULL,
  `jumlah_tanggungan` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_tests`
--

INSERT INTO `data_tests` (`id`, `nama`, `transportasi`, `status_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `status_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `jarak_rumah`, `jumlah_tanggungan`, `kelas`, `created_at`) VALUES
(3089, 'Marvino Afanda', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3090, 'MIFTAHUL AZZAHRA', 'Sepeda motor', 'Hidup', 'Buruh', '500,000 - 999,999', 'Hidup', 'buruh', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3091, 'RIHADATHUL AISYI', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '500,000 - 999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:59'),
(3092, 'AHMAD SHALEH NST', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3093, 'Aidil Adha', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3094, 'Aisya Fakhira', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3095, 'Azhar Hidayat', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3096, 'Cindy Delova', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3097, 'Deon Azkanio Ananta', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(3098, 'Havizul Khairi', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '8', 'Layak', '2024-10-09 07:22:59'),
(3099, 'Isam', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3100, 'Khozainil Asyfatila', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3101, 'M. Al Pasha', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3102, 'Miftahul Nurjannah', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3103, 'Muhammad Iqram', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '9', 'Layak', '2024-10-09 07:22:59'),
(3104, 'NAIRA PANESA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3105, 'Tiara Anggina', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3106, 'ARISA AZHARA LUBIS', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:59'),
(3107, 'FAIZ NAUFAL', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3108, 'HASYIFA', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(3109, 'Humayra Putri Dissa', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:59'),
(3110, 'M. DANIEL HERFI ALMUZANY', 'Jalan kaki', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3111, 'Mifratul Reski', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(3112, 'MUHAMMAD MIRZA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3113, 'Nisaul Hasanah', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3114, 'RAKHA WIJDAN MAULANA', 'Sepeda motor', 'Hidup', 'Pedagang Besar', '2,000,000 - 4,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:59'),
(3115, 'LATIFA QATRIN NADA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3116, 'SAJIDUR RAHMAN', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3117, 'DHIA SILMI ATIYAH', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3118, 'Fauzi Hadi', 'Sepeda motor', 'Hidup', 'Nelayan', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:59'),
(3119, 'ABI ALHIDAYAT', 'Sepeda motor', 'Hidup', 'Pedagang Besar', '2,000,000 - 4,999,999', 'Hidup', 'Pedagang kecil', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3120, 'FITRIANI', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3121, 'ABDUL RESKI', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '2 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3122, 'Adib Muzakki', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3123, 'Al Hilal', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3124, 'ALJASIR', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3125, 'Alwi', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:22:59'),
(3126, 'ARIANDA AFTAR', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3127, 'Aulia Pajri', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3128, 'AURA DWI HAIFA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3129, 'AZZIQRA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3130, 'Fauzan Pratama', 'Sepeda', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3131, 'Imam Raiwan Adha', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3132, 'KEYZA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3133, 'Mozalia Andini', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3134, 'Mulia Ananda', 'Sepeda', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3135, 'Nazla Syafitri', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3136, 'NILWA AL KAHFI', 'Sepeda', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3137, 'Rahmat Afandi', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3138, 'RAPI JULIA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3139, 'SUCI MARHAMAH', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3140, 'SYIFA NAFISA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3141, 'YUGA ANUGRAH', 'Andong/bendi/sado/dokar/delman/becak', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '5', 'Layak', '2024-10-09 07:22:59'),
(3142, 'ZAHRA', 'Sepeda', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(3143, 'Zaskia Ramadani', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3144, 'Zikra Mardiah HRP', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3145, 'Afifi', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3146, 'Aditiya Ilham', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3147, 'Ahmad Arazoki', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '2 Km', '5', 'Layak', '2024-10-09 07:22:59'),
(3148, 'Ahmad Rizki Pratama', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:22:59'),
(3149, 'Aldison', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3150, 'Alghiffari', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3151, 'Alya Salsabila', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3152, 'AZZAHRA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3153, 'Chika Raihanun', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(3154, 'Fahrisa Bilhusain', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:59'),
(3155, 'Fajar Ramadhan', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3156, 'GENDIS ANIDA SALWA RAMANDANI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:59'),
(3157, 'HERI SANJAYA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:59'),
(3158, 'IBNU MUBAROK', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:22:59'),
(3159, 'IKHSANUL HAMDI', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3160, 'Khairunnisa', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3161, 'M. Benzema', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:59'),
(3162, 'MAYSA NUR RAMADHANI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3163, 'MUHAMMAD PADLAN', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3164, 'Riska Amanda', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:59'),
(3165, 'Riski Aulia', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:22:59'),
(3166, 'RIZKI HIDAYAT', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:59'),
(3167, 'Salwa Aini', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:59'),
(3168, 'Syafiiq Muzakki', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:59'),
(3169, 'ZUL AFNAN', 'Sepeda', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '5', 'Layak', '2024-10-09 07:22:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_trains`
--

CREATE TABLE `data_trains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `transportasi` varchar(255) NOT NULL,
  `status_ayah` varchar(255) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `penghasilan_ayah` varchar(255) NOT NULL,
  `status_ibu` varchar(255) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `penghasilan_ibu` varchar(255) NOT NULL,
  `jarak_rumah` varchar(255) NOT NULL,
  `jumlah_tanggungan` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_trains`
--

INSERT INTO `data_trains` (`id`, `nama`, `transportasi`, `status_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `status_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `jarak_rumah`, `jumlah_tanggungan`, `kelas`, `created_at`) VALUES
(7004, 'Adinda Novita', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7005, 'Aditya Rahman', 'Sepeda motor', 'Hidup', 'Nelayan', '2,000,000 - 4,999,999', 'Hidup', 'Lainnya', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7006, 'Clarrisa Salsabila Anggiat', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7007, 'Diva Elfary', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7008, 'HAPITZ SAPUTRA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7009, 'JUNISFU SYAKBAN', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7010, 'Kania', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7011, 'KEISYA OLIFIYA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7012, 'Khaira Mawaddah', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7013, 'MAULANA AKBAR', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7014, 'MUHAMMAD SADIQ', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7015, 'Naura Sagita', 'Sepeda motor', 'Hidup', 'Petani', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7016, 'NIZAM AL FATIH', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7017, 'Raisa Aprilia', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7018, 'Salman Al Farizi', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7019, 'Salsabila', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Lainnya', 'Kurang dari 500,000', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7020, 'Sera Vona', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7021, 'SYAHRUL RAMADHANI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7022, 'TALITA ZAHRA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7023, 'YUDIT PRATAMA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7024, 'Adli Rahadi', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7025, 'Anggina', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7026, 'ANJANI', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7027, 'ANNISA FITRI YARSINA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7028, 'Annisa Putri Sheltina', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7029, 'Az-Zahra', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7030, 'Chantika Putri', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7031, 'Dara Ayu', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7032, 'FATIH MAULANA AL ZIKRI', 'Sepeda motor', 'Hidup', 'Tidak bekerja', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7033, 'Firzanatul Faiqa', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7034, 'Liona Zalentya', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '2,000,000 - 4,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7035, 'Muhammad Zikri Ramadhan', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7036, 'NADYATUL KHAIRA', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7037, 'Naura Latisha', 'Sepeda motor', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7038, 'NAYLA KHAIRUNNISA', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7039, 'RAUF NAUFAL', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7040, 'Riski Adha', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7041, 'RIZKIYA AZILA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7042, 'Syarif Hidayatullah', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7043, 'AHMAD AL FATIH', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Pedagang kecil', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7044, 'ALFA ZIDAN', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7045, 'Aulia Arafa', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7046, 'Defin Andaru', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7047, 'FADHIL UMARA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7048, 'FAUZIA RAFIVA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7049, 'JEFRI AULIA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7050, 'Nailil Najmi', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7051, 'NURY AFIFAH', 'Sepeda motor', 'Hidup', 'Buruh', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7052, 'Putri Hayana', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7053, 'Reni Asnita', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7054, 'Reza Alvando', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7055, 'Selma Anita', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7056, 'SHANALA DWI KANIA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7057, 'SHOFI SALSABILA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7058, 'Siska Yulia', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7059, 'Siti Aisyah', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7060, 'SYAIFAH NUR\'ASWA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', 'Kurang dari 500,000', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7061, 'SYAKILLA KHAIRANI', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7062, 'Abil Kahfi', 'Sepeda motor', 'Hidup', 'Buruh', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:22'),
(7063, 'Ahmat Fatir', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7064, 'Alfa Roza', 'Sepeda motor', 'Hidup', 'Tidak bekerja', 'Tidak Berpenghasilan', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7065, 'Alfa Rozi', 'Sepeda motor', 'Hidup', 'Tidak bekerja', 'Tidak Berpenghasilan', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7066, 'ARIFAT MUBAROQ', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Wafat', 'Sudah Meninggal', 'Tidak berpenghasilan', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7067, 'ASYFAF MAULANA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7068, 'Ghina Alifatun Nisa', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7069, 'RIZKI ADITIA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7070, 'Syaqilla Al Zahra', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7071, 'Yunisa Safitri', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7072, 'Adiba Khanza Azzahra', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7073, 'Azzahra Hairani', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '7', 'Layak', '2024-10-09 07:22:22'),
(7074, 'DELLA KUMALA SARI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:22'),
(7075, 'IHSAINIL LATIFA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:22'),
(7076, 'KEVIN ROMERO', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7077, 'M. JEFRI', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:22'),
(7078, 'MUHAMMAD EMTEINN', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '8', 'Layak', '2024-10-09 07:22:22'),
(7079, 'MUHAMMAD NADIL MUMTAZAR', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:22'),
(7080, 'Nabil Alfarizi', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'Lainnya', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:22'),
(7081, 'RENDI SAPUTRA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7082, 'RIKI AULIA PUTRA', 'Sepeda motor', 'Hidup', 'lainnya', 'Kurang dari 500,000', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7083, 'Syafrian Dinil Haqqi', 'Sepeda motor', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '3 Km', '4', 'Tidak Layak', '2024-10-09 07:22:22'),
(7084, 'ABDUL HAKIM', 'Jalan kaki', 'Hidup', 'Petani', 'Kurang dari 500,000', 'Hidup', 'Lainnya', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:22:22'),
(7085, 'AFIQAH RAISA PANE', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7086, 'Ahmad Reski', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7087, 'ALFITRA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7088, 'Annisa', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7089, 'ASYIFA ZASKIA PUTRI', 'Mobil/bus antar jemput', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Wirausaha', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7090, 'DHIA SILMI ATIYAH', 'Lainnya', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7091, 'Evan Calvary Berlan', 'Lainnya', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Wirausaha', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7092, 'Indah Syaputri', 'Lainnya', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:22'),
(7093, 'Naurah Iftinan Lubis', 'Lainnya', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Wirausaha', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7094, 'Naurah Rayyani', 'Lainnya', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Wirausaha', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7095, 'Nikma Udia', 'Lainnya', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Wirausaha', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7096, 'NURUL FAUZIAN', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '5', 'Layak', '2024-10-09 07:22:22'),
(7097, 'RAYHAN ALFAIRUZ', 'Lainnya', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7098, 'Wijaya', 'Lainnya', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7099, 'ZASKYA AMANDA', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '2', 'Layak', '2024-10-09 07:22:22'),
(7100, 'ZHIDQY ALTAF', 'Jalan kaki', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:22'),
(7101, 'AHMAD RIHADI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:22'),
(7102, 'Alfinita Risa', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:22'),
(7103, 'Gifran Habibi', 'Lainnya', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:22'),
(7104, 'JIHAN HANIFAH', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:22'),
(7105, 'Khairul Amri', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:22'),
(7106, 'M. Afiq', 'Jalan kaki', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '5', 'Layak', '2024-10-09 07:22:22'),
(7107, 'MUHAMMAD NAUFAL MAJID', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:22'),
(7108, 'NADYA ALMIRA', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '3', 'Layak', '2024-10-09 07:22:22'),
(7109, 'NIPA RAISA', 'Jalan kaki', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:22:22'),
(7110, 'ALFI HABIBI AZIZI', 'Sepeda', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'wiraswasta', '500,000 - 999,999', '2 Km', '1', 'Tidak Layak', '2024-10-09 07:22:22'),
(7111, 'ELIZA FITRI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:22'),
(7112, 'FAIZ HARDIAN', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:22'),
(7113, 'Ibnu Umar Abdul Aziz', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:22'),
(7114, 'Nahdatul Humairoh', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7115, 'Nurhafiza', 'Sepeda motor', 'Hidup', 'Nelayan', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7116, 'Sinta', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '3 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7117, 'WARDATUL HILMI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7118, 'Yunisa Nada Aulia', 'Sepeda motor', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7119, 'AHMAD RINALDI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:23'),
(7120, 'ALDONA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7121, 'AMIRUL IHSAN', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7122, 'DELLA RAHMADHANI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:23'),
(7123, 'EFIKA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7124, 'GLENKISY ANDRA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7125, 'HUSNUL FIKRI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7126, 'KHAIFAN', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7127, 'KHOIRUL AZZAM', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7128, 'MUHAMMAD MAULANA', 'Sepeda motor', 'Hidup', 'Petani', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7129, 'NAURA ZILVA KANAYA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7130, 'NAZLA SALSABILA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7131, 'Rafika Zalimah', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7132, 'RATNA SARI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '7', 'Tidak Layak', '2024-10-09 07:22:23'),
(7133, 'RENDIKA', 'Sepeda motor', 'Hidup', 'Petani', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7134, 'SALMA GAITASA, R', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7135, 'THALITA SAKINA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7136, 'WALIDA ZAHIRA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', 'Kurang dari 500,000', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7137, 'ADIL SURYADI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7138, 'Afifa Syahira', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7139, 'Ahmat Rafiki', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Layak', '2024-10-09 07:22:23'),
(7140, 'AHSANI TAQWIM', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7141, 'AISYAH', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7142, 'ARDIANSYAH', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7143, 'Buana Reza Murtila', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7144, 'Diki Rinaldi', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7145, 'FITRIYANI', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7146, 'JEFRI SAPUTRA', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Wafat', 'Sudah Meninggal', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7147, 'KHAIRIL ANWAR', 'Jalan kaki', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7148, 'MUHAMMAD NASUHA', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7149, 'Riski Rokinando Sgr', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7150, 'SALU', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:23'),
(7151, 'WAHYU SANDI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7152, 'YUNI MAYSAROH', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7153, 'AHMAD HABIBI', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7154, 'Alya Humairo', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7155, 'Ayu Astuti', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '6', 'Layak', '2024-10-09 07:22:23'),
(7156, 'Dhafi Al Akbar', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7157, 'FARHAN LUBIS', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Lainnya', 'Kurang dari 500,000', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7158, 'FERRY FERNANDO', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7159, 'Fisaldi', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7160, 'GEA NABITA ZAHRA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7161, 'HENNISA KHEYSA', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7162, 'KAIFA SIKTA', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:23'),
(7163, 'MUNAWAROH', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7164, 'NAILA JUHAIRA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '2 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7165, 'NEYSHA ALHILA', 'Sepeda motor', 'Hidup', 'Buruh', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7166, 'Nur Aisyah', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '2 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7167, 'Pram Yoga', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7168, 'RADITYA WAHYUNO LBS', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7169, 'REZKI MAULANA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7170, 'SAPUTRA', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7171, 'WAHYU PRANATA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7172, 'Zakiyah Fitri Wulandari', 'Sepeda motor', 'Hidup', 'Tidak bekerja', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7173, 'Afgan Asisi', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:23'),
(7174, 'AFIF ELHAM', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7175, 'Ahmad Sariful Mahyar NST', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7176, 'Aisyah', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7177, 'ANDINI', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7178, 'Andrea Fahreza', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7179, 'ANGGI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '7', 'Tidak Layak', '2024-10-09 07:22:23'),
(7180, 'Arul Syahbana', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '8', 'Layak', '2024-10-09 07:22:23'),
(7181, 'BAGUS RAMADHAN', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23'),
(7182, 'Daniel Inesta', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7183, 'Elsa', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7184, 'FAJAR RAIHAN', 'Sepeda motor', 'Hidup', 'Nelayan', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7185, 'KHAILA ASFANISA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7186, 'M. REHAN', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '8', 'Layak', '2024-10-09 07:22:23'),
(7187, 'Maisaroh', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7188, 'Muhammad Rayhan', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:23'),
(7189, 'RAUDATUN NISA', 'Jalan kaki', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7190, 'TONA AHMAT DAHARI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:23'),
(7191, 'Yulpa Hadia', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Lainnya', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7192, 'ZALFA LULU NAZIFHA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7193, 'ABYAN SYAHIRAN LUBIS', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7194, 'AKILA FITRI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7195, 'ALIANA SOFIA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7196, 'ANGGA SAPUTRA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7197, 'GEMILANG AL GAZALI', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7198, 'GIBRAN AHMAD RHAMADHAN', 'Sepeda motor', 'Hidup', 'lainnya', '2,000,000 - 4,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7199, 'ILHAM ALYADI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7200, 'ABIGAIL NARENDRA PANCASAKTI', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7201, 'AKHTAN BASTIAN', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7202, 'ALESHA SASIKIRANA ALIFA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7203, 'ALIFA EPENDI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7204, 'AMIRA FAIZAH RITONGA', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Lainnya', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7205, 'AQILLA FARIZA MUFIA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7206, 'AQILLA RAMADHANI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7207, 'AYLIN DALISHA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7208, 'DIARA ADINDA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7209, 'FATHIR AHMAD AZAMI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7210, 'IMAM KHOIRIL MUNTASI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7211, 'M ZAIDAN AL HAFIZ', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7212, 'RANIA HUMAIRAH ZIDNI', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7213, 'RIHADATUL AISYA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '3 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7214, 'SOFIA INDAH', 'Sepeda motor', 'Hidup', 'Petani', '2,000,000 - 4,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7215, 'WABIL HAIDI', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7216, 'NAIMA ULFATUNISA', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7217, 'AIRA AQILLA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7218, 'ALVARO GAVRIEL ANDIKA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '2,000,000 - 4,999,999', 'Hidup', 'Lainnya', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7219, 'ASYRAF MAULANA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7220, 'SADDAM HUSYEN', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7221, 'AHMAD RIFALDI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7222, 'AULYA', 'Sepeda motor', 'Hidup', 'lainnya', 'Kurang dari 500,000', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7223, 'Padhil Arif', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7224, 'Andrika Putra Pratama', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7225, 'RANDI AKBAR', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7226, 'Faris Akbad', 'Jalan kaki', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23'),
(7227, 'Muhammad Ilham', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7228, 'MUTMAINNAH', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '7', 'Layak', '2024-10-09 07:22:23'),
(7229, 'Nur Hidayah', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23'),
(7230, 'Prandira Grebia', 'Jalan kaki', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '6', 'Layak', '2024-10-09 07:22:23'),
(7231, 'Rezkia Nasiva', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23'),
(7232, 'ULUL AZMI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7233, 'AHMAD SHALEH', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7234, 'Nur Asyifa', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7235, 'Sa\'abian Syahputra', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7236, 'UMMUL MAGFIROH NST', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23'),
(7237, 'AHMAD RIFALDI', 'Jalan kaki', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '7', 'Layak', '2024-10-09 07:22:23'),
(7238, 'AHMAD SIDDIQ', 'Sepeda', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'Lainnya', 'Kurang dari 500,000', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7239, 'HAYATUL HUSNA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7240, 'MUHAMMAD ALFIN FAUZI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '8', 'Layak', '2024-10-09 07:22:23'),
(7241, 'ZULHADI', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23'),
(7242, 'AHMAD PAJAR', 'Sepeda motor', 'Hidup', 'lainnya', 'Kurang dari 500,000', 'Hidup', 'wiraswasta', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7243, 'HAYATUL HUSNA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7244, 'IVAN MAOLANA DEVKAN', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7245, 'MUHAMMAD FADIL', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7246, 'REVAN PANDARAMAN HARAHAP', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7247, 'RISKI ROKI NANDO SIREGAR', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '2 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7248, 'Shaikul Bimantara', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7249, 'SUCI MUNAWAROH', 'Jalan kaki', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '3', 'Layak', '2024-10-09 07:22:23'),
(7250, 'WELLY WULANDARI', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7251, 'AIRIN ANNISA AJMALIA', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7252, 'AL AZKA PUTRA', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7253, 'AZKA ALFARIZI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '2,000,000 - 4,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7254, 'AZRAN PRATAMA', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7255, 'BANATUL QISWAH', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7256, 'BINTANG ASKA YANDALA', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7257, 'FIONA ZEA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7258, 'JULIA PITRI', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7259, 'MARCEL MUHAMMAD SAIB', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7260, 'MUHAMMAD AZZAM', 'Sepeda motor', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7261, 'NADINE SAFA ALEYSIA ANGGIAT', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7262, 'NAURA ELZYRA LUBIS', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7263, 'NURUL FITRI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '5', 'Tidak Layak', '2024-10-09 07:22:23'),
(7264, 'RAYHAN PRATAMA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7265, 'RAYUNA ANINDIA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '5,000,000 - 20,000,000', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7266, 'RHOUDATUL UKHTY', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7267, 'SHOLEHAN', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7268, 'SYAFIQA APRIBI', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7269, 'VIONA ANJANI MAURISKA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7270, 'ZAIN IBRAHIM', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7271, 'ZAKI MIRZA', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7272, 'AKBAR PRAYOGA RAMBE', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '4 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7273, 'AKIF WAFI RAJENDRA', 'Andong/bendi/sado/dokar/delman/becak', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '4 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7274, 'ALGAZALI', 'Andong/bendi/sado/dokar/delman/becak', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7275, 'ALIFIA ALMAHIRA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7276, 'ALTAN MUTTAQI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7277, 'ARSAKHA FATHIANLDEN', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23');
INSERT INTO `data_trains` (`id`, `nama`, `transportasi`, `status_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `status_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `jarak_rumah`, `jumlah_tanggungan`, `kelas`, `created_at`) VALUES
(7278, 'ARSY BERLIAN DISSA', 'Andong/bendi/sado/dokar/delman/becak', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7279, 'ARUMI RAFIFAH LUBIS', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7280, 'HANA AQILA PUTRI', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7281, 'MAR\'ATUL MUTHIA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7282, 'MUHAMMAD RIDWAN ASYIFI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7283, 'NABILA AZZAHRA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7284, 'NAJLA AQILA SAPUTRI', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'buruh', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7285, 'NAJWA HANIPA', 'Andong/bendi/sado/dokar/delman/becak', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7286, 'NAJWA VELICIA', 'Sepeda motor', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7287, 'NANDA FERDIAN', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '2,000,000 - 4,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '2 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7288, 'NURUL HAFIZAH', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '4 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7289, 'RATIH KHOIRUNNISA', 'Sepeda motor', 'Hidup', 'Petani', 'Kurang dari 500,000', 'Hidup', 'petani', '500,000 - 999,999', '2 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7290, 'RIZIQ HABIBI', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'PNS/TNI/POLRI', '2,000,000 - 4,999,999', '0 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7291, 'RIZKIA ANGGINA', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '2 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7292, 'WARDAH RIZKIA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '0 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7293, 'ZULKARNAIN', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7294, 'AHMAD FAREL', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7295, 'AHMAD FAUZULLAH RAHMAN', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7296, 'ALFIAN RIZKI', 'Sepeda motor', 'Hidup', 'PNS/TNI/Polri', '2,000,000 - 4,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7297, 'ARJUNA PERSADA', 'Sepeda motor', 'Hidup', 'Buruh', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7298, 'AUFA AKHIMZA ARDANI', 'Lainnya', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7299, 'BAYU SAMUDRA', 'Lainnya', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7300, 'BRIAN ALFHAT', 'Lainnya', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'wiraswasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7301, 'ELSA SAKIRA', 'Lainnya', 'Hidup', 'lainnya', 'Tidak Berpenghasilan', 'Hidup', 'petani', '500,000 - 999,999', '3 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7302, 'FAIRUZ AKBAR', 'Lainnya', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7303, 'HABIBAH SYAPUTRI', 'Lainnya', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'petani', '500,000 - 999,999', '1 Km', '6', 'Tidak Layak', '2024-10-09 07:22:23'),
(7304, 'HARIS ATHA HIBATULLAH', 'Lainnya', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7305, 'HAYATUL ILMI', 'Lainnya', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7306, 'NAJLA FAKHIRAH', 'Lainnya', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'buruh', '500,000 - 999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7307, 'RAISYA HIDAYATUL', 'Lainnya', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7308, 'RAYHAN MUNADHIL LUBIS', 'Lainnya', 'Hidup', 'Karyawan Swasta', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7309, 'ADILA NISA ARDANI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '4 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7310, 'NUR HALIZA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7311, 'ILYA HAZIZI HUSNA', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '2 Km', '4', 'Layak', '2024-10-09 07:22:23'),
(7312, 'MAHESYA PUTRA', 'Sepeda motor', 'Hidup', 'Petani', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7313, 'MUZAKQIFUL ABY', 'Sepeda motor', 'Hidup', 'lainnya', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7314, 'Ahmad Al Habsi', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7315, 'AULIA FAIS', 'Sepeda motor', 'Hidup', 'Pedagang Kecil', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7316, 'ILYA RAHMA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7317, 'KHANZA DEWI ARAFAT', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7318, 'Raihan Pratama', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7319, 'HARMAYANI', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '5 Km', '1', 'Tidak Layak', '2024-10-09 07:22:23'),
(7320, 'MUHAMMAD ARIF', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '4', 'Tidak Layak', '2024-10-09 07:22:23'),
(7321, 'NABILA RIZKI', 'Sepeda motor', 'Hidup', 'Petani', '2,000,000 - 4,999,999', 'Hidup', 'petani', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7322, 'Ahmad Ridho', 'Sepeda motor', 'Hidup', 'Wiraswasta', '1,000,000 - 1,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '3 Km', '7', 'Tidak Layak', '2024-10-09 07:22:23'),
(7323, 'AZZAHRATUL FAIZA', 'Sepeda motor', 'Hidup', 'Karyawan Swasta', '500,000 - 999,999', 'Hidup', 'petani', 'Kurang dari 500,000', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7324, 'Fajri', 'Sepeda motor', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7325, 'MUFIDAH PUTRI AUFA', 'Sepeda motor', 'Hidup', 'Wiraswasta', '500,000 - 999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7326, 'Muhammad Rafa Al Wafi', 'Sepeda motor', 'Hidup', 'Wiraswasta', '2,000,000 - 4,999,999', 'Hidup', 'Karyawan swasta', '1,000,000 - 1,999,999', '1 Km', '3', 'Tidak Layak', '2024-10-09 07:22:23'),
(7327, 'Mutia Hafid Lubis', 'Sepeda motor', 'Wafat', 'Sudah Meninggal', 'Tidak Berpenghasilan', 'Hidup', 'wiraswasta', '500,000 - 999,999', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7328, 'AISYAH PRICILLA', 'Sepeda motor', 'Hidup', 'Petani', '1,000,000 - 1,999,999', 'Wafat', 'Sudah Meninggal', 'Tidak berpenghasilan', '1 Km', '2', 'Tidak Layak', '2024-10-09 07:22:23'),
(7329, 'Aulia Rahman', 'Jalan kaki', 'Hidup', 'Petani', '500,000 - 999,999', 'Hidup', 'Tidak Bekerja', 'Tidak berpenghasilan', '1 Km', '5', 'Layak', '2024-10-09 07:22:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `token_identifier` text NOT NULL,
  `destroy_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login_logs`
--

INSERT INTO `login_logs` (`id`, `token_identifier`, `destroy_at`, `created_at`) VALUES
(2, '2f5d02d6-095b-48c6-8033-e7ca2528c0ca', NULL, '2024-09-29 07:13:39'),
(3, 'fadece07-eff1-4e10-851b-6f5ab34e7442', NULL, '2024-10-02 05:28:13'),
(4, 'a57929e2-bdf2-4594-a5e6-fb4a850f77d5', NULL, '2024-10-02 05:51:24'),
(5, '4aa79c9e-bd07-4e74-8d9f-66e96288ddfa', NULL, '2024-10-02 05:51:41'),
(6, 'bead2df2-00e0-413d-aff3-852d5c684e23', NULL, '2024-10-02 05:57:42'),
(7, 'd058285b-f727-4d37-9f1a-e3eba5cde007', NULL, '2024-10-02 07:45:29'),
(8, '978f3b82-2021-4a1f-bdc6-a6526f1a6daa', NULL, '2024-10-02 08:09:09'),
(9, '3c91373c-a6c5-4926-b26a-e0d192ba3adc', NULL, '2024-10-02 08:10:50'),
(10, '996894e7-9b12-4277-bf8e-543c5bc1fc1e', NULL, '2024-10-02 08:40:57'),
(11, 'bc42c99e-c215-4b97-80bf-ac9f84b77ff7', NULL, '2024-10-02 14:04:00'),
(12, '6e6fddd9-0c49-4605-bf32-e0325c7d6a58', NULL, '2024-10-09 14:06:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$12$Oday.btypiZEptQHaMWpo.4E9doViCu39NPyDQakJ5X58wNBYCpbq', '2024-09-26 15:32:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `variables`
--

CREATE TABLE `variables` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `variables`
--

INSERT INTO `variables` (`id`, `key`, `value`) VALUES
(1, 'TP', '37'),
(2, 'TN', '40'),
(3, 'FP', '0'),
(4, 'FN', '4'),
(5, 'accuracy', '0.9506172839506173'),
(6, 'recall', '0.9024390243902439'),
(7, 'precission', '1'),
(8, 'F1Score', '0.9487179487179488');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_results`
--
ALTER TABLE `data_results`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_tests`
--
ALTER TABLE `data_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_trains`
--
ALTER TABLE `data_trains`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `variables`
--
ALTER TABLE `variables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_results`
--
ALTER TABLE `data_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT untuk tabel `data_tests`
--
ALTER TABLE `data_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3170;

--
-- AUTO_INCREMENT untuk tabel `data_trains`
--
ALTER TABLE `data_trains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7330;

--
-- AUTO_INCREMENT untuk tabel `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `variables`
--
ALTER TABLE `variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
