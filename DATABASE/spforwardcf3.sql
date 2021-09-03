-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 04:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spforwardcf3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `solusi` text NOT NULL,
  `penyebab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `solusi`, `penyebab`) VALUES
('P001', 'Bercak Daun (Curvularia sp)', 'Pembibitan kelapa sawit yang standar seperti sanitasi  sumber  inokulum  penyakit  bercak daun dengan cara memotong  daun yang menunjukan  gejala  serangan penyakit  ringan sampai  sedang. dan aplikasi fungisida tetap dilaksanakan  hingga  gejala serangan penyakit bercak daun menjadi  sedikit  dan  bibit dikategorikan sehat', ''),
('P002', 'Busuk Pangkal Batang (Ganoderma)', 'Pengendalian secara dini dan terpadu pada setiap tahap budidaya kelapa sawit: Replanting (sanitasi dan pengutipan akar dan batang kelapa sawit), bibit sawit tahan Ganoderma, aplikasi agen hayati pada pembibitan dan lubang tanam, serta pada tanaman menghasilkan dengan mengaplikasikan parit isolasi, pembedahan, dan pembumbunan ', ''),
('P003', 'Penyakit Tajuk (Crown Disease)', 'karena penyebab penyakitnya belum diketahui, sampai sekarang tidak ada anjuran pengelolaan yang dapat diberikan dengan mantap. \r\nSehubungan dengan adanya jamur pada bagian yang membusuk pada tanaman yang sakit tajuk, ada yang berusaha untuk menyembuhkannya dengan memakai fungisida. Namun karena masih diragukan bahwa jamur yang menyebabkan penyakit, perawatan dengan fungisida memberikan hasil yang tidak menentu. Sebelum diperlakukan, janur dipotong sedalam mungkin (sedekat mungkin dengan titik tumbuh). Bagian yang terbuka disemprot dengan fungisida sampai basah benar. Pada pemotongan tadi hanya janur yang belum membuka yang dibuang. Daun-daun sakit yang lebih tua tidak perlu dipotong, karena perkembangan jamur akan berhenti jika janur membuka. Bahkan pemotongan ini akan menyebabkan tanaman muda yang sakit kehilangan banyak jaringan yang dapat mengadakan asimilasi yang sangat diperlukannya.', ''),
('P004', 'Karat Daun', 'Pengendalian  penyakit  karat  daun  dapat dilakukan  secara  preventif  dengan  melakukan managemen pelepah yang sesuai standar. Pelepah jangan terlalu banyak dan mendorong kelembapan udara. \r\nApabila  sudah  terjadi  epidemi  penyakit,  maka dapat  dilakukan  tindakan  pengendalian  berupa penyemprotan  dengan  tembaga  oksida  dengan dosis  2,5  -  5  gram  /  2  liter  air  dengan  interval penyemprotan satu minggu.', ''),
('P005', 'Penyakit Busuk Pupus (Spear rot)', 'mengetahui infeksi penyakit sedini mungkin, oleh karena itu  sensus  penyakit  sebaiknya  dilakukan  2-3  kali  per tahun,  terutama  pada  daerah  yang  telah  terinfestasi. Tanaman terinfeksi digolongkan menjadi tiga kelompok: 1) tanaman dengan gejala serangan awal, bila dijumpai bercak klorosis/nekrosis pada daun tombak; 2) tanaman dengan gejala serangan lanjut, bila pembusukan terjadi pada  daun  tombak;  dan  3)  tanaman  dengan  gejala serangan berat, bila infeksi mencapai titik tumbuh dan disertai pengeringan pada beberapa pelepah', ''),
('P006', 'Anthracnose', 'harus  dimusnahkan  dengan  cara  dicabut  dari polibeg dan tanaman dibakar pada lokasi yang berjauhan.  Pemusnahan  dilakukan  bersamaan dengan  pembakaran  potongan  daun  bibit-bibit dengan gejala serangan ringan sampai sedang.Untuk  menekan penyebaran sumber inokulum, area isolasi diberi pembatas  plastik  yang  membatasi  area  lokasi isolasi dengan area pemukiman pekerja.Semua  bibit  harus  diaplikasi  fungisida dengan bahan aktif berbeda dari yang selama ini digunakan.', ''),
('P007', 'Busuk Buah (Marasmius Palmivorus)', 'Melakukan  kastrasi  yaitu  membuang  semua bunga,  baik  bunga  jantan  maupun  bunga betina  pada  tanaman  belum  menghasilkan (TBM).\r\nMelakukan sanitasi dengan membuang semua tandan dan bunga yang membusuk di pohon dan membakarnya. Tindakan  khususnya  jika  serangan  busuk tandan  berat  dianjurkan  melakukan penyemprotan fungisida difeconazol. Konsentrasi yang dianjurkan adalah 0,1 – 0,2%dengan rotasi 10-14 hari. Untuk memperoleh hasil  yang  lebih baik dianjurkan untuk menambahkan 10-20ml bahan perekat ke dalam tiap 10l suspensi.', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`, `keterangan`) VALUES
('G01', 'Gejala awal berupa bercak berwarna kecokelatan', ''),
('G02', 'Gejala membusuknya daun secara kering yang dimulai dari tepi daun dan berkembang melebar ke tengah', ''),
('G03', 'Gejala lanjut berupa bercak berwarna cokelat tua dengan tepian bewarna kekuningan', ''),
('G04', 'Bercak daun dengan intensitas berat, bercak bersatu dan menyebabkan jaringan daun mengering dan mati', ''),
('G05', 'Gejala awal pada tanaman menguningnya hampir seluruh pelepah daun', ''),
('G06', 'Pada tanaman TBM, gejala diikuti dengan nekrosisnya daun dan terjadinya akumulasi daun tombak lebih dari 3', ''),
('G07', 'Pada tanaman TM, gejala lanjut berupa patahnya semua pelepah dan akumulasi daun tombak. Akhirnya terjadi pembusukan pada pangkal batang dan tanaman selanjutnya tumbang', ''),
('G08', 'Jaringan yang sakit mengakibatkan kematian tanaman', ''),
('G09', 'Pelepah yang bengkok dan pada bengkokan ini anak daunnya kecil atau robek-robek', ''),
('G10', 'Gejala ini umumnya tampak pada tanaman belum menghasilkan / tanaman muda', ''),
('G11', 'daun-daun tua tidak mengkilat, kotor, dan berwarna kemerahan', ''),
('G12', 'Koloni ganggang menyatu menutupi permukaan helai daun', ''),
('G13', 'Anak-anak daun yang masih terlipat itu tampak busuk pada sudut atau tengahnya', ''),
('G14', 'Beberapa helai daun tombak membusuk dan mengering', ''),
('G15', 'Pembusukan terus terjadi hingga menyebabkan daun tombak dapat dengan mudah dicabut', ''),
('G16', 'Pada daging buah (mesokarp) menjadi lembek dan berubah warna menjadi coklat kemudian menghitam', ''),
('G17', 'Penyakit ini mulai meyerang buah yang berumur 2 – 4 bulan, akan tetapi tandan muda dan bunga pun bisa diserang', ''),
('G18', 'Gejala awal biasanya ditandai adanya berkas-berkas miselia jamur berwarna putih menyebar pada kulit buah dalam satu tandan yang masih mentah', ''),
('G19', 'Gejala awal dapat berupa kemunculan bercak klorosis/ nekrosis pada daun tombak', ''),
('G20', 'Karat muda berwarna hijau kelabu, sedangkan yang tua merah bata', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(5) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `hasil_konsultasi` varchar(255) NOT NULL,
  `kepercayaan` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `nik`, `nama`, `no_hp`, `jk`, `alamat`, `tgl`, `hasil_konsultasi`, `kepercayaan`) VALUES
(408, '', 'Anthracnose', 'a21', 'Laki - Laki', 'unand', '22:02 - 02 September 2021', 'Busuk Pangkal Batang (Ganoderma)', 'Positif'),
(407, '', 'Anthracnose', 'a21', 'Laki - Laki', 'unand', '22:02 - 02 September 2021', '', ''),
(406, '', 'Anthracnose', '09', 'Laki - Laki', 'unand', '22:00 - 02 September 2021', 'Penyakit Tajuk (Crown Disease)', 'Positif'),
(404, '', 'Anthracnose', '09', '', 'unand', '18:02 - 28 Juli 2021', 'Bercak Daun (Curvularia sp)', 'Positif'),
(405, '', 'Anthracnose', '09', 'Laki - Laki', 'unand', '22:00 - 02 September 2021', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `ID` int(11) NOT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`ID`, `kode_gejala`, `jawaban`) VALUES
(1, 'G01', 'Ya'),
(2, 'G03', 'Ya'),
(3, 'G04', 'Tidak'),
(4, 'G05', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(16) DEFAULT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `mb` double DEFAULT NULL,
  `md` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`, `mb`, `md`) VALUES
(117, 'P001', 'G01', 1, 0.4),
(118, 'P001', 'G03', 1, 0.5),
(119, 'P001', 'G04', 1, 0.6),
(120, 'P002', 'G05', 1, 0.5),
(121, 'P002', 'G06', 1, 0.6),
(122, 'P002', 'G07', 1, 0.4),
(123, 'P003', 'G09', 1, 0.3),
(124, 'P003', 'G10', 1, 0.4),
(125, 'P003', 'G13', 1, 0.4),
(126, 'P004', 'G11', 1, 0.4),
(127, 'P004', 'G12', 1, 0.4),
(128, 'P004', 'G20', 1, 0.4),
(129, 'P005', 'G14', 1, 0.5),
(130, 'P005', 'G15', 1, 0.5),
(131, 'P005', 'G19', 1, 0.3),
(132, 'P006', 'G02', 1, 0.3),
(133, 'P006', 'G08', 1, 0.8),
(134, 'P007', 'G16', 1, 0.3),
(135, 'P007', 'G17', 0.3, 0.3),
(136, 'P007', 'G18', 1, 0.3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
