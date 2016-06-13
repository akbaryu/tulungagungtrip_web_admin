-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2015 at 04:12 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wisatangawi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akomodasi`
--

CREATE TABLE IF NOT EXISTS `tb_akomodasi` (
  `id_akomodasi` int(11) NOT NULL,
  `kategori` enum('spbu','transport','rmsakit') DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akomodasi`
--

INSERT INTO `tb_akomodasi` (`id_akomodasi`, `kategori`, `nama`, `alamat`, `image`, `langitude`, `latitude`) VALUES
(1, 'transport', 'Terminal Bis Kartonegoro', 'Jl. Dr.Radjiman', 'bis.jpg', 111.418, -7.4041),
(2, 'transport', 'Stasiun Geneng', 'Geneng', 'kereta.jpg', 111.419, -7.49851),
(3, 'transport', 'Stasiun Kedunggalar', 'Kedunggalar', 'kereta.jpg', 111.302, -7.42012),
(4, 'transport', 'Stasiun Walikukun', 'Walikukun', 'kereta.jpg', 111.224, -7.402);

-- --------------------------------------------------------

--
-- Table structure for table `tb_atm`
--

CREATE TABLE IF NOT EXISTS `tb_atm` (
  `id_atm` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kategori` enum('bri','bca','bni','bjatim','bmandiri') DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_atm`
--

INSERT INTO `tb_atm` (`id_atm`, `nama`, `alamat`, `kategori`, `image`, `langitude`, `latitude`) VALUES
(4, 'Bank Mandiri', 'Jl. Raya Ngawi-Caruban', 'bmandiri', 'bank_mandiri.png', 111.546, -7.44133),
(2, 'Bank Jatim Kedungmiri Sambirejo', 'Jl. Ngawi-Solo Timur Nyami Kedungmiri Sambirejo Mantingan', 'bjatim', 'bank_jatim.png', 111.608, -7.45857),
(3, 'BRI Kedungmiri Sambirejo', 'Jl. Ngawi-Solo Timur Nyami Kedungmiri Sambirejo Mantingan', 'bri', 'bank_bri.png', 111.608, -7.45842),
(5, 'Bank Bri', 'Jl. Raya Ngawi-Caruban', 'bri', 'bank_bri.png', 111.524, -7.43038),
(6, 'ATM Bri', 'Jl. Sukowati Kec.Ngawi', 'bri', 'bank_bri.png', 111.457, -7.40692),
(7, 'Bank Bni', 'Jl. Pb. Sudirman', 'bni', 'bank_bni.png', 111.442, -7.41037),
(8, 'Bank Bri', 'Jl. Pb. Sudirman', 'bri', 'bank_bri.png', 111.442, -7.41037),
(9, 'ATM BCA', 'JL Panglima Besar Sudirman', 'bca', 'bank_bca.png', 111.442, -7.41037),
(10, 'Bank Bni', 'JL. Panglima Besar Sudirman', 'bni', 'bank_bni.png', 111.438, -7.40848),
(11, 'Bank Mandiri', 'JL. Panglima Besar Sudirman', 'bmandiri', 'bank_mandiri.png', 111.438, -7.40848),
(12, 'Bank Bri', 'JL. Panglima Besar Sudirman', 'bri', 'bank_bri.png', 111.437, -7.40802),
(13, 'Bank Bri', 'Jl. Raya Solo', 'bri', 'bank_bri.png', 111.377, -7.39577),
(14, 'Bank Bri', 'Jl. Ngawi-Solo Timur Nyami Kedungmiri Sambirejo Mantingan', 'bri', 'bank_bri.png', 111.143, -7.36385),
(15, 'Bank Bca', 'Jl. Sultan Agung', 'bca', 'bank_bca.png', 111.447, -7.3971),
(16, 'Bank Bni', 'JL Jaksa Agung Suprapto', 'bni', 'bank_bni.png', 111.446, -7.40361),
(17, 'Bank Mandiri', 'Jl. Jaksa Agung Suprapto', 'bmandiri', 'bank_mandiri.png', 111.447, -7.40077),
(18, 'Bank Jatim', 'JL. Yos Sudarso', 'bjatim', 'bank_jatim.png', 111.445, -7.40456),
(19, 'Bank Bni', 'JL. Yos Sudarso', 'bni', 'bank_bni.png', 111.444, -7.40652);

-- --------------------------------------------------------

--
-- Table structure for table `tb_info`
--

CREATE TABLE IF NOT EXISTS `tb_info` (
  `id_info` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info`
--

INSERT INTO `tb_info` (`id_info`, `nama`, `info`, `tanggal`) VALUES
(2, 'Tradisi Tahunan, Tawun Gelar Ritual Keduk Beji', 'Tanggal Pelaksanaan : 26 November 2012\r\nTempat Pelaksanaan  : Tawun\r\nJam Pelaksanaan     : 03.30 - selesai\r\n\r\nMasyarakat Desa Tawun, Kecamatan Kasreman-Ngawi mempunyai tradisi tahunan yang cukup unik. Dipercaya sebagai sarana menolak petaka atau tolak balak, masyarakat setempat gelar ritual Keduk Beji, yang diadakan sekali dalam setahun, tepatnya pada hari Selasa Kliwon menurut penanggalan Jawa.\r\n\r\nHal ini sebagai sarana penghormatan kepada Eyang Ludro Joyo atas sumber penghidupan Keduk Beji. Prosesi upacara adat ini di awali ratusan peserta berkumpul di sumber berukuran 20 x 30 meter. Ritual dimulai dengan melakukan pengerukan atau pembersihan kotoran dengan mengambil sampah dan daun-daun yang mengotori sumber mata air Beji yang berada di Desa Tawun. Terlihat seluruh peserta yang terdiri atas kalangan anak-anak, remaja, dewasa hingga orang tua tumpah ruah menceburkan diri ke kolam.\r\n\r\n', '2015-08-19'),
(4, 'Pentas Ludruk se-Jawa Timur', 'Pemerintah Kabupaten Ngawi melalui  Dinas Pariwisata, Kebudayaan, Pemuda dan Olahraga (Dispariyapura) menyelenggaran Pentas Ludruk se-Jawa Timur dalam rangka memeriahkan peringatan Hari Jadi Ngawi yang ke 657 dan HUT RI ke 70 bertempat di Alun-alun Merdeka, Minggu (26/07).\r\n\r\nKegiatan tersebut bertujuan memberikan fasilitas kepada seniman untuk terus berkarya supaya  kekayaan budaya ini tetap utuh, tidak direbut oleh Negara Lain.', '2015-07-20'),
(5, 'AGENDA GEBYAR NGAWI RAMAH 655 TAHUN DAN HUT RI KE 68', 'Dimulai 15 maret kmrin sudah terlampui..\r\n25 Juni s/d 7 Juli : Pasar malam di Eks Kantor Banwas.\r\n1 Juli : Kitanan massal  Kantor Dekopinda / Pengajian akbar Ustad Muhammad Nur Maulana di alun2\r\n2 Juli : Ziarah makam leluhur di TMP, Ngawi Purba, Ngrambe, Sine\r\n2-3 Juli : Turnamen Catur Pelajar di SDN Margomulyo 1\r\n3 Juli : Jamasan Pusaka di Pendopo Wedya Graha / Final Festival music of the month di alun2 \r\n4 Juli : Kitanan Massal, Donor Darah, Bantuan sembako dan selimut (kepada janda veteran, Penyandang cacat bawaan, Penderita Thalasemia, dan Lansia). Bantuan peralatan sekolah Panti Rahayu .di Pendopo Wedya Graha \r\nDan Pagelaran wayang kulit (H.sukron suwondo)di halaman sekretariat daerah\r\nPelayanan Dasar Kesehatan Gratis pukesmas di Pukesmas sekabupaten Ngawi\r\n4-6 Juli : Pameran Produk Unggulan dan Pasar murah di alun2\r\n5 Juli : Pentas Wayang Apem Bersama Kirun CS di Alun2\r\n6 Juli : Malam tirakat hari jadi Ngawi ke 655 di Pendopo Wedya Graha\r\nPentas Seni Sanggar dan Pentas Anak Sekolah di Alun2\r\nNgawi Purba Performance Festival di  Benteng Pendem\r\n6-7 Juli : Jambore Nasional Motor CB di Terminal Kortonegoro\r\n7 Juli : Upacara Hari Jd kota Ngawi ke 655 di Pendopo Wedya Graha\r\nPagelaran Wayang Kulit KiMantep Sudarsono di Alun2\r\n14 Juli : Semaan Al-Quran Hafidz di Pendopo Wedya Graha\r\n15 Juli : Bagi Sembako dan buka puasa kaum dhuafa bersama Bupati Ngawi dan JTV di Pendopo Wedya Graha\r\n15-31 Juli : Lomba Kreatifitas Lingkungan di Kota Ngawi\r\n8/9 Agust : Open House di Pendopo Wedya Graha\r\n9/10 Agust : Halal Bihalal Warga Ngawi Perantauan di Pendopo Wedya Graha\r\n9-24 Agust : Pasar Malam di Alun2\r\n16 Agust : Pengukuhan Paskibraka dan malam tirakatan HUT RI ke 68 di Pendopo Wedya Graha\r\n17 Agust : Apel Kehormatan dan Renungan Suci di Taman Makam Pahlawan\r\nUpacara Detik2 Proklamasi di Alun2\r\nZiarah Taman Makam Pahlawan di TMP\r\nPemberian Remisi di LAPAS\r\nPenurunan Bendera Merah Putih di Alun2\r\nResepsi Kenegaraan di Pendopo Wedya Graha\r\n19-20 : Pawai Pembangunan/KARNAVAL Start Finish Alun2\r\n23-24 : Kejuaraan Whusu di Lapangan Basket Alun2\r\n26 Agust : Lomba Olahraga Permainan Tradisional di Alun2\r\n27 Agust :Gerak Jalan Pelajar di Alun', '2015-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE IF NOT EXISTS `tb_pengguna` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `level` enum('kades','penduduk','operator') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`user_id`, `username`, `password`, `nama_pengguna`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Cahyo Sasmito', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rmibadah`
--

CREATE TABLE IF NOT EXISTS `tb_rmibadah` (
  `id_rmibadah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kategori` enum('masjid','gereja','vihara','pura') DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rmibadah`
--

INSERT INTO `tb_rmibadah` (`id_rmibadah`, `nama`, `alamat`, `kategori`, `image`, `langitude`, `latitude`) VALUES
(2, 'Masjid Jami Al Barokah', 'Jl. Puhti Karang Jati', 'masjid', 'masjid.jpg', 111.6, -7.48193),
(5, 'Masjid Baitur Rahmat', 'JL. Trunojoyo', 'masjid', 'masjid.jpg', 111.439, -7.40889),
(4, 'Masjid Jami At-Taqwa', 'Jl. Raya Ngawi-Caruban, Kedungprahu', 'masjid', 'masjid.jpg', 111.553, -7.44424),
(6, 'Masjid Darul Muttaqin', 'JL. Panglima Besar Sudirman', 'masjid', 'masjid.jpg', 111.436, -7.4077),
(7, 'Gereja Baptis Indonesia', 'Jl. PB. Sudirman No.96', 'gereja', 'gereja.jpg', 111.433, -7.40695),
(8, 'Masjid Jami Al Hidayah', 'Jl. Raya Solo', 'masjid', 'masjid.jpg', 111.38, -7.39647),
(9, 'Gspii', 'Jl. Raya Solo', 'gereja', 'gereja.jpg', 111.37, -7.39494),
(10, 'Masjid Al Wadi', 'Desa Sidolaju, Widodaran', 'masjid', 'masjid.jpg', 111.268, -7.38412),
(11, 'Masjid Al-Hikmah', 'Jl. Raya Solo-Ngawi Banjarejo', 'masjid', 'masjid.jpg', 111.246, -7.37971),
(12, 'Masjid Al-Hikmah', 'Jl. Raya Solo-Ngawi Banjarejo', 'masjid', 'masjid.jpg', 111.237, -7.37787),
(13, 'Gereja Utusan Pantekosta ', 'Jl. Dr. Sutomo No.19', 'gereja', 'gereja.jpg', 111.446, -7.39807),
(14, 'Vihara Sin Hin Kiong', 'JL. Doktor Wahidin', 'vihara', 'vihara.jpg', 111.446, -7.39246),
(15, 'Vihara Vimalakirti', 'Kesongo, Kedung Putri, Paron', 'vihara', 'vihara.jpg', 111.386, -7.48374);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rmsakit`
--

CREATE TABLE IF NOT EXISTS `tb_rmsakit` (
  `id_rmsakit` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` int(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rmsakit`
--

INSERT INTO `tb_rmsakit` (`id_rmsakit`, `nama`, `alamat`, `telp`, `image`, `langitude`, `latitude`) VALUES
(1, 'RS Widodo', 'Jalan Yos Sudarso No.8', 35172212, 'rs_widodo.jpg', 111.444, -7.40649),
(2, 'RSI At-Tin Husada ', 'Jl.Raya Ngawi-Solo Km.4, Kec.Watuwalang', 35172212, 'rs_at-tin.jpg', 111.415, -7.40445),
(3, 'RSUD Dr. Soeroto', 'Jl. Dr Wahidin Sudirohusodo No.27', 35172212, 'rs_dr-soeroto.jpg', 111.446, -7.39186);

-- --------------------------------------------------------

--
-- Table structure for table `tb_spbu`
--

CREATE TABLE IF NOT EXISTS `tb_spbu` (
  `id_spbu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spbu`
--

INSERT INTO `tb_spbu` (`id_spbu`, `nama`, `alamat`, `image`, `langitude`, `latitude`) VALUES
(4, 'Spbu Pertamina', 'Jl. Raya Ngawi-Caruban', 'spbu.png', 111.538, -7.43762),
(5, 'Spbu 563201', 'Jl. Sukowati', 'spbu.png', 111.457, -7.40684),
(3, 'Spbu 54-63205', 'Jl. Raya Ngawi-Caruban', 'spbu.png', 111.563, -7.4464),
(6, 'Spbu', 'Ngawi', 'spbu.png', 111.412, -7.40318),
(7, 'Spbu', 'Jl. Raya Ngawi-Solo Watualang', 'spbu.png', 111.401, -7.40168),
(8, 'Spbu 54,362,12', 'Jl. Raya Solo', 'spbu.png', 111.368, -7.39528),
(9, 'Spbu 54-632-09', 'Jl. Raya Solo KM.9', 'spbu.png', 111.339, -7.39587),
(10, 'Spbu Pertamina', 'Jl. Ngawi-Solo Gendingan', 'spbu.png', 111.22, -7.37528),
(11, 'Spbu Pertamina', 'Jl. Ngawi-Solo Tim. Nyami Kedungmiri Sambirejo Mantingan', 'spbu.png', 111.15, -7.3643);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transport`
--

CREATE TABLE IF NOT EXISTS `tb_transport` (
  `id_transport` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transport`
--

INSERT INTO `tb_transport` (`id_transport`, `nama`, `alamat`, `image`, `langitude`, `latitude`) VALUES
(1, 'Stasiun Paron', 'Jl. Raya Paron', 'kereta.png', 111.387, -7.44194),
(2, 'Terminal Bis Kartonegoro', 'Jl. Dr.Radjiman', 'bis.png', 111.418, -7.4041),
(3, 'Stasiun Geneng', 'Geneng', 'kereta.png', 111.419, -7.49851),
(5, 'Stasiun Kedunggalar', 'Kedunggalar', 'kereta.png', 111.302, -7.42012),
(6, 'Stasiun Walikukun', 'Walikukun', 'kereta.png', 111.224, -7.402);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisata`
--

CREATE TABLE IF NOT EXISTS `tb_wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kategori` enum('alam','sejarah','budaya','keluarga') DEFAULT NULL,
  `fasilitas` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisata`
--

INSERT INTO `tb_wisata` (`id_wisata`, `nama`, `alamat`, `kategori`, `fasilitas`, `keterangan`, `image`, `image2`, `image3`, `image4`, `image5`, `langitude`, `latitude`) VALUES
(3, 'Perkebunan Teh Jamus', ' Desa Girikerto Kecamatan Sine', 'alam', '', 'Kabupaten Ngawi banyak menyimpan tempat wisata yang bisa dinikmati sebagai obyek wisata keluarga. Kebun Teh Jamus adalah salah satunya. Perkebunan ini terletak di lereng Gunung Lawu, tepatnya di desa Giringkerto, kecamatan Sine. Selain berhawa sejuk, di lokasi ini juga terdapat beberapa tempat unik dan bersejarah.\r\n\r\nSebelum memasuki kawasan kebun teh Jamus,di sepanjang jalan para pengunjung akan menemui banyak lahan yang ditumbuhi pohon-pohon besar dan rindang, dan hamparan hijau lahan perkebunan teh.\r\n\r\nKebun Teh Jamus merupakan unit perkebunan terbesar di Ngawi. Agrowisata berwawasan lingkungan hidup ini sudah mulai terkonsep sejak tahun 1993 dan meraih penghargaan tingkat nasional nominasi Kalpataru tahun 2004 kategori Pembina Lingkungan Hidup pada peringatan hari Lingkungan Hidup sedunia pada tanggal 5 Juni 2004 di Istana Negara Jakarta.\r\n\r\nSebagai daya tarik lainnya, di sekitar obyek wisata ini terdapat air terjun Grojogan Songo Tuk Pakel. Ada pula makam tua pendiri Kebun Teh Jamus Van Der Rappart (1826-1910) asal Belanda. Daya tarik lain adalah Jamus Borobudur Hill (bukit Borobudur), yaitu bukit setinggi 35,4 meter yang terlihat seperti lahan teh biasa, namun jika dipandang dari kejauhan, nampak sebuah bukit mirip berbentuk candi borobudur.', 'wisata_jamus1.jpg', 'wisata_jamus2.jpg', 'wisata_jamus3.jpg', 'wisata_jamus4.jpg', 'wisata_jamus5.jpg', 111.184, -7.56177),
(4, 'Sentra Kerajinan Bonggol Jati', 'Kec Ngawi, Bringin, Widodaren dan Mantingan.', 'budaya', '--', 'Kerajinan yang unik dan mempesona merupakan kesan yang tercipta dan kerajinan gembol kayu jati. Dengan bahan baku berasal dari tonggak kayu jati yang telah tua umurnya dan termakan oleh binatang perusak kayu serta didukung oleh tekstur akar-akar yang berliukkan menjadikan tonggak kayu jati ini semakin unik.\r\n\r\nOleh para pengrajin gembol kayu jati ini diubah menjadi barang bernilai seni tinggi yang banyak diminati oleh kolektor benda antik baik dalam maupun luar negeri. Dengan menyesuaikan bentuk tekstur kayu yang ada maka ukirlah berbagai macam bentuk flora dan fauna yang banyak terdapat di hutan  tropis nusantara. Pangsa pasar yang telah dijangkau untuk produk gembol kayu jati adalah kota-kota besar di pulau Jawa seperti Surabaya, Solo, Jogjakarta, Semarang, Bandung, Jakarta hingga ke pulau Bali. Sentra kerajinan gembol jati berada dikecamatan Ngawi, Bringin, Widodaren dan Mantingan.\r\n\r\nDisamping kerajinan gembol kayu jati di Kabupaten Ngawi terdapat juga kerajinan limbah kayu jati. Sama seperti kerajinan gembol, kerajinan ini juga memanfaatkan kayu jati sebagai bahan utamanya. Kayu jati yang dipergunakan adalah limbah atau hasil yang tidak terpakai yang berasal dari penebangan kayu jati baik dari akar maupun dari batang pohon jati yang biasanya hanya dimanfaatkan sebagai kayu bakar oleh masyarakat.', 'wisata_gembol1.jpg', 'wisata_gembol2.jpg', 'wisata_gembol3.jpg', 'wisata_gembol4.jpg', 'wisata_gembol5.jpg', 111.585, -7.34852),
(5, 'Taman Wisata Tawun', 'Desa Tawun Kec.Kasreman', 'keluarga', '', 'Taman rekreasi Tawun adalah taman rekreasi dan kolam renang yang terletak sekitar 7Km sebelah timur kota Ngawi.\r\n\r\nDalam taman rekreasi ini, selain kolam renang juga terdapat danau buatan yang dilengkapi dengan kano, kebun binatang mini, area memancing dan kolam kura-kura.\r\n\r\nSetiap setahun sekali pada hari selasa Kliwon, tepatnya sesuai kalender Jawa, selalu diadakan ritual tradisional Keduk Beji, sebagai upacara ucap syukur setelah panen.', 'wisata_tawun.jpg', 'wisata_tawun2.jpg', 'wisata_tawun3.jpg', 'wisata_tawun4.jpg', 'wisata_tawun5.jpg', 111.49, -7.41286),
(6, 'Museum Rumah K.R.T Dr. Radjiman Wedyodiningrat', 'Dusun Dirgo Desa Walikukun', 'sejarah', '--', 'Rumah Peninggalan dr. KRT Radjiman Wedyodiningrat ini merupakanm rumah peninggalan tokoh pendiri dan pemrakarsa Badan Pergerakan Usaha Persiapan Kemerdekaan Indonesia ( BPUPKI). Dirumah ini terdapat patung  KRT Radjiman Wedyodiningrat dan perabot, alat-alat rumah tangga serta benda-benda pusaka milik KRT Radjiman Wediadinngrat yang masih terawat dengan baik hingga kini.  ', 'wisata_drrajiman1.jpg', 'wisata_drrajiman2.jpg', 'wisata_drrajiman3.jpg', 'wisata_drrajiman4.jpg', 'wisata_drrajiman5.jpg', 111.222, -7.3931),
(7, 'Monumen Soerjo', '', 'sejarah', '', 'Monumen Suryo, dari namanya mudah dipastikan bahwa monumen ini berdiri untuk menghormati Gubernur Jawa Timur pertama, Bapak Serjo.\r\n\r\nMonumen ini berdiri di kawasan hutan jati, di kawasan jalan raya Ngawi- Solo. Monumen ini di bangun untuk memperingati tewasnya Gubernur Suyo yang di bunuh olek PKI.\r\n\r\nSelain sebagai monumem peringatan, di kawasan obyek wisata ini juga bisa di kunjungi layaknya obyek wisata rekreasi keluarga, karena suasananya yang nyaman dan hijau serta pohon-pohon mahoni di sekitar hutan sangat cocok untuk mereka yang ingin melewatkan hari libur dengan tenang dan damai.', 'wisata_soerjo5.jpg', 'wisata_soerjo2.jpg', 'wisata_soerjo3.jpg', 'wisata_soerjo4.jpg', 'wisata_soerjo1.jpg', 111.284, -7.37883),
(8, 'Pesanggrahan Srigati', 'desa Babatan kec. Paron.', 'sejarah', '', 'Lokasi wisata Srigati ini berada 4 KM dari jalan raya Paron - Jogorogo, tepatnya di Desa Babadan, Kecamatan Paron, Kabupaten Ngawi. Konon tempat ini dulunya adalah tempat peristirahatan Prabu Brawijaya V setelah lari dari kerajaan Majapahit karena kerajaan diserbu oleh bala tentara Demak dibawah pimpinan Raden Patah.\r\n\r\nSrigati berada di daerah hutan dan merupakan kawasan hutan jati Alas ketonggo. Selain sebagai tempat wisata spiritual, lokasi ini juga digunakan untuk bumi perkemahan.\r\n\r\nDi lokasi wisata spritual Srigati ini, terdapat Pelenggahan Agung yang banyak dijadikan sebagai tempat bermeditasi bagi mereka yang ingin kelancaran dalam usaha dan kehidupan pada umumnya. Masyarakat sekitar percaya bahwa Pelenggahan tersebut merupakan tempat dimana Raden Wijaya bertapa mencari petunjuk sebelum membangun kerajaan majapahit\r\n\r\nDi Srigati juga ada sebuah batu besar yang biasa di sebut "Watu Gede" atau Batu Besar, konon disinilah merupakan pintu gerbang kerajaan "Dunia Lain" yang ada disana. ada juga tempat bertemunya dua muara sunga yang disebut "Kali Tempuk" yang sering digunakan untuk mandi bagi mereka yang mendalami ilmu kekebalan.Dan masih banyak tempat-tempat dengan aura ''mistis'' lainnya.', 'wisata_srigari1.jpg', 'wisata_srigari2.jpg', 'wisata_srigari3.jpg', 'wisata_srigari4.jpg', 'wisata_srigari5.jpg', 111.327, -7.48582),
(9, 'Air Terjun Srambang', '', 'alam', '', 'Air terjun Srampang, keindahan yang tersembunyi di hutan gunung Lawu. Air terjun ini terletak di Kecamatan Jogo-Rogo, kaki Gunung Sewu, Ngawi.\r\n\r\nUntuk menuju ke air terjun, pengunjung harus terlebih dahulu melewati hutan di gunung Lawu, melewati jalan yang terjal, rimbunnya bunga liar dan teduhnya hutan pinus. Perjalanan ke air terjun Srambang memang akan sangat melelahkan, karena harus melewati lebih dari 20 tanjakan dan turunan yang licin dan terjal. Tetapi, sesampainya di lokasi air terjun, semua kelelahan terbayar dengan keindahan yang luar biasa elok.\r\n\r\nUdara yang dingin dan segar, percikan air terjun, hijaunya hutan dan suasana di sekitar air terjun adalah menu utama yang ditawarkan air terjun dengan tinggi 25 M ini. Untuk masuk ke lokasi air terjun, pengunjung diharuskan membayar tiket masuk sebesar Rp. 2,500 dengan jam maksimal kunjungan jam 3 sore. ', 'wisata_srambang1.jpg', 'image2', 'image3', 'image4', 'image5', 111.216, -7.56329),
(10, 'Air Terjun Pengantin', '', 'alam', 'Terdapat tempat parkir untuk sepeda motor dan mobil walaupun tidak terlalu luas. Selain itu juga tersedia toilet di area Air Terjun Pengantin yang berada di bawah. Sayangnya hanya terdapat satu toilet saja di area bawah. Terdapat juga warung-warung kecil di depan rumah warga yang berada di dekat pintu masuk Air Terjun. Untuk beribadah (Sholat), pengunjung dapat menggunakan mushola yang letaknya tidak jauh dari Air Terjun Pengantin.', 'Wisata Air Terjun Pengantin adalah nama yang diberikan oleh warga sekitar air terjun. Alasan kenapa diberi nama Air Terjun Pengantinalam air terjun pengantin ngawi jawa timur adalah karena air terjun tersebut berjumlah dua buah dan berada dalam satu lokasi yang sama dan berdekatan. Berdasarkan penuturan penduduk sekitar, sebenarnya air terjun ini dulunya bernama Grojokan Jumog atau Dugji. Grojokan merupakan sebutan orang Jawa dari air yang jatuh ke bawah. Namun karena air terjun terbelah menjadi dua bagian, maka air terjun ini dinamai Air Terjun Pengantin.\r\n\r\nTidak terdapat cerita mistik seperti film horor Air Terjun Pengantin, karena memang tempat ini bukan tempat yang terdapat dalam film horor tersebut.  Air Terjun Pengantin merupakan air terjun yang masih baru. Hal tersebut karena wisata ini baru dibuka dan diresmikan pada tahun 2011.\r\n\r\nakses air terjun pengantin ngawi jawa timurAir terjun dengan tinggi 12 meter ini mengalir deras kebawah dengan tebing batu yang sedikit landai. Jika anda berkunjung dimusim penghujan, maka aliran air terjun bisa membesar dua kali lipat dibandingkan hari-hari biasanya. Namun anda perlu berhati-hati jika berkunjung dimusim penghujan karena sangat rawan banjir. Ketika musim panas, aliran air terjun akan mengecil namun suasana yang sejuk masih tetap terasa karena di depan air terjun terdapat pepohonan yang cukup rindang untuk berteduh sambil duduk dan menikmati suara air dan suasana alam yang sejuk dan nyaman.', 'wisata_pengantin.jpg', 'wisata_pengantin1.jpg', 'image3', 'image4', 'image5', 111.213, -7.5571),
(11, 'Industri Gamelan', '', 'budaya', '--', 'Salah satu kekayaan budaya Indonesia yang terkenal dalam bidang musik adalah seni gamelan. Perajin gamelan  ternama di Kabupaten Ngawi terdapat di Desa Mojo Kecamatan Bringin Kabupaten Ngawi. Bahan baku gamelan terbuat dari perunggu super dan kuningan. Adapun daerah pemasarannya sudah menembus pasar di luar pulau jawa.', 'wisata_gamelan1.jpg', 'wisata_gamelan2.jpg', 'wisata_gamelan3.jpg', 'wisata_gamelan4.jpg', 'wisata_gamelan5.jpg', 111.585, -7.34852),
(13, 'Waterboom Tirto Nirmolo', 'Jl. Raya Ngawi-Madiun KM. 7, Kec. Ngawi', 'keluarga', '', 'Water Boom Tirto Nirmolo adalah sebuah obyek wisata pemandian di Kota Ngawi yang berupa kolam renang. Water Boom ini terletak di jalan raya Ngawi - Madiun. Tepatnya di Desa Tempuran, Kecamatan Paron, Kabupaten Ngawi. Karena letaknya dipinggir jalan raya, sehingga memudahkan para pengunjung untuk mencapainya.\r\n\r\nWater Boom TirtoNirmolo tidak hanya menawarkan kolam renang saja, tetapi juga dilengkapi berbagai fasilitas, berikut ini fasilitas-fasilitas yang dapat pengunjung nikmati diantaranya adalah Kolam Renang Seluncur, Kolam Renang Laba-laba, Kolam Air Mancur, Kolam Renang Ember Tumpah, Kolam Renang Dewasa dan Anak-anak, Gedung Film 3D, Boom-boom Boat, Becak Family, Kereta Gantung, Kereta Electrik, Moto ATV, Flyng Fox, Boom-boom Car, Animal Electrik, Bianglala, Panggung Festival dan Rest Parking Area.', 'wisata_waterboom1.jpg', 'wisata_waterboom2.jpg', 'wisata_waterboom3.jpg', 'wisata_waterboom4.jpg', 'wisata_waterboom5.jpg', 111.43, -7.46728),
(14, 'Waduk Pondok', 'desa Dero Kec.Bringin', 'keluarga', '', 'Bendungan ini terletak di desa Dero Bringin, sekitar 6 Km sebelah timur Kota Ngawi.\r\n\r\nLokasi bendungan Pondok ini merupakan obyek wisata yang sering dikunjungi. Selain sebagai sarana irigasi dan pembangkit tenaga listrik, bendungan ini juga dimanfaatkan sebagi obyek wisata. Di bendungan Pondok ini terdapat areal memancing, motor boat, lahan berkemah, taman bermain dan beberapa tempat makan untuk berekreasi keluarga.\r\n\r\nObyek wisata bendungan Pondok ini memiliki luas 2.596 hektar dan dikelilingi oleh hutan mahoni dan pohon jati. Sangat cocok untuk digunakan obyek wisata keluarga.', 'wisata_waduk_pondok1.jpg', 'wisata_waduk_pondok2.jpg', 'wisata_waduk_pondok3.jpg', 'wisata_waduk_pondok4.jpg', 'wisata_waduk_pondok5.jpg', 111.562, -7.41059),
(36, 'Coba Wisata', 'Nginden ', 'sejarah', '', 'ini keterangan coba', 'wisata_magrove1.jpg', 'wisata_magrove2.jpg', 'wisata_magrove3.jpg', 'wisata_magrove4.jpg', '', 111.324, -7.33544),
(37, 'Mangrove Surabaya', 'Jl. Raya Wonorejo No. 1 Rungkut', 'sejarah', '', 'Objek wisata ini mempunya nilai eksotis, diantaranya karena menggunakan perahu nelayan yang asli untuk menuju area mangrove. Begitu masuk ke area ini, pengunjung dapat melihat hutan mangrove, laut, serta flora fauna yang menarik.\r\n\r\nDi sepanjang perjalanan menuju area mangrove, Anda juga dapat melihat binatang liar seperti monyet berekor panjang dan berbagai spesies burung. Wisatawan yang berminat datang ke tempat ini juga bisa ikut menanam dan merawat bakau di area tersebut. Keberadaan WAM juga', 'wisata_magrove5.jpg', 'wisata_magrove2.jpg', 'wisata_magrove3.jpg', 'wisata_magrove4.jpg', '', 112.823, -7.31003),
(33, 'Arca Banteng (Reco Banteng)', 'Desa Wonorejo, Kec.Kedunggalar', 'sejarah', '--', 'Lokasi Wisata Arca Banteng berada di Dusun Reco Banteng, Desa Wonorejo, Kecamatan Kedunggalar, 22 Km dari Kota Ngawi Jawa Timur. Arca Banteng adalah benda purbakala peninggalan jaman Kerajaan Majapahit.\r\n\r\nPada jaman dahulu ada sebuah Dusun yang jauh dari keramaian dan hanya di huni oleh beberapa warga saja,  pada tahun 1938 sesepuh Dusun Karang Belek yang bernama mbah Soikromo. Beliau menuturkan kepada warganya bahwa beliau mendapatkan petunjuk dari para leluhur untuk membongkar gundukan tanah aneh yang berada disebelah selatan dusun.\r\n\r\nDi katakan aneh karena gundukan tanah tersebut selalu di tunggui/dijaga oleh hewan-hewan liar yang disebut Banteng.\r\nSetelah disetujui oleh semua warga, tepatnya pada hari Jumat Legi dengan menggunakan cangkul Mbah Soikromo dan semua warga membongkar gundukan tanah itu dan menemukan 2(dua) patung peninggalan leluhur yang beragama Hindu Siwa, patung tersebut bernama Ganesha dan Nandi. \r\nSetelah penemuan itu Mbah Soikromo hendak mengganti nama dusun Karang Belek dengan nama baru dan sekaligus memberi nama temuan tersebut. Karena sebelum di temukan Arca semua warga melihat suatu kejadian aneh yakni melihat banyak hewan Banteng maka nama dusun dan penemuan tersebut dinamakan Arca Banteng/Reco Banteng.', 'wisata_banteng1.jpg', 'wisata_banteng2.jpg', 'wisata_banteng3.jpg', 'wisata_banteng4.jpg', 'wisata_banteng5.jpg', 111.285, -7.46027),
(17, 'Pemandian Hargo Dumilah', 'Desa Setono, Kecamatan Ngrambe', 'keluarga', '', 'Suasana yang asri itulah terlihat dari kolam pemandian Hargo Dumilah yang berada di lereng utara Gunung Lawu tepatnya di Desa Setono, Kecamatan Ngrambe, Atau berada di sebelah selatan Kota Ngawi yang berjarak 30 Kilometer. Kerindangan pohon jati yang berjajar ditepi kolam menambah anggunnya suasana kolam pemandian Hargo Dumilah. Apalagi berlatar belakang Gunung Lawu dan areal persawahan, cukup sudah alam yang natural melengkapi keindahan sekaligus memberikan nuansa tersendiri bagi para pengunjungnya untuk berelaksasi bersama keluarga.\r\n\r\nKolam pemandian Hargo Dumilah bukan sekedar tempat mandi saja akan tetapi memberikan pesona yang memanjakan bagi para pengunjungnya, dengan ticket masuk Rp 5000 sampai sepuasnya dilengkapi 12 tempat lesehan berupa rumah panggung kecil atau biasa di sebut dengan saung yang berbahan baku dari bambu menambah nilai artistik khas alam. Di harapkan pengunjungnya bukan saja menikmati kolam pemandiannya saja, tetapi bisa sebagai tempat transit untuk beristirahat sambil menikmati wisata kuliner. Lidah para pengunjung akan dimanjakan dengan masakan ikan bakar dan bakso. Khusus untuk masakan ikan bakar tersedia berbagai menu ikanya mulai dari gurami bakar satu porsi Rp 20.000, ikan patin bakar Rp 17.000, dan ikan lele bakar hanya Rp 7.000. Kemudian untuk pengunjung sendiri bisa menikmati kolam pemandian ini antara pukul 08.00 WIB sampai 21.00 WIB.', 'wisata_hargo_dumilah1.jpg', 'wisata_hargo_dumilah2.jpg', 'wisata_hargo_dumilah3.jpg', 'wisata_hargo_dumilah4.jpg', 'wisata_hargo_dumilah5.jpg', 111.246, -7.51418),
(1, 'Museum Trinil', 'Desa Kawu Kec. Kedunggalar', 'sejarah', 'Fasilitas yang ada adalah :\r\n- Museum dan Pendopo peristirahatan\r\n- Tempat cenderamata (souvenir)\r\n- Diorama fosil purbakala lengkap dengan identitas dan dekskripsinya\r\n- Mushola dan arena bermain anak\r\n- Bumi perkemahan\r\n- Toilet dan kamar mandi.', 'Museum Trinil adalah museum kepurbakalaan yang terletak di di Dsun Pilang, desa Kawu, kecamatan Kedunggalar, sekitar 14 Km dari kota Ngawi.\r\n\r\nMuseum ini ditemukan oleh seorang berkewarganegaraan Belanda, Eugene Dubois. Fosil yang paling populer yang pernah ditemukan di Ngawi, yaitu Pithecanthropus Erectus, ada di museum bersejarah ini.\r\nDisamping manusia purba didalam museum sendiri juga banyak ditemukan berbagai macam fosil binatang purba, yang paling terkenal adalang ditemukan gading gajah purba.', 'wisata_trinil.jpg', 'wisata_trinil2.jpg', 'wisata_trinil6.jpg', 'wisata_trinil4.jpg', 'wisata_trinil5.jpg', 111.344, -7.37944),
(27, 'Air Terjun Suwono', 'desa Hargomulyo kec. Ngrambe', 'alam', '', 'Air Terjun Suwono berada di Desa Hargomulyo, Kecamatan Ngrambe, Kabupaten Ngawi, Jawa Timur, terdapat sebuah air terjun yang masih alami. Nama air terjun tersebut adalah Air Terjun Suwono. Air terjun ini memiliki ketinggian kurang lebih sekitar 30 meter dan memiliki 2 percabangan terjunan. Suasananya yang masih alami membuat para wisatawan merasa damai dengan hawa sejuk dan asri karena dikelilingi hutan pinus.\r\n\r\nSelain pemandangan hutan pinus, terdapat juga pemandangan perkebunan teh Jamus milik Pemkab Ngawi yang berada tidak jauh dari lokasi air terjun. Faktor geografis tersebut lah yang membuat Air Terjun Suwono memiliki nilai lebih dibandingkan air terjun yang ada di Kabupaten Ngawi.\r\n\r\nPerpaduan hutan dengan hamparan kebun teh yang sangat luas serta memiliki ketinggian yang relatif tinggi membuat air terjun ini begitu menawan dan memiliki peluang menjadi objek wisata andalan Kabupaten Ngawi. Daya tarik lain dari Air Terjun Suwono yaitu debit airnya yang tidak berubah meskipun pada musim kemarau sekalipun. Dengan kelebihan tersebut, air terjun ini dapat dinikmati sepanjang waktu tanpa musim kunjungan.', '', NULL, NULL, NULL, NULL, 111.205, -7.55265),
(28, 'Benteng Van De Bosch', 'Jl. Untung Suropati, Kec. Ngawi', 'sejarah', '', 'Peninggalan pada masa kolonial Belanda ini masyarakat biasa menyebut Benteng Pendem.\r\n\r\nLetak Benteng benteng ini sangat strategis karena berada disudut pertemuan sungai bengawan Solo dan sungai Madiun. Benteng ini dulu sengaja dibuat lebih  rendah dari tanah sekitar yang dikelilingi oleh tanah tinggi sehingga terlihat dari luar terpendam.\r\n\r\nDidalam benteng ini sendiri terdapat makam K.H Muhammad Nursalim, yaitu salah satu pengikut pangeran Diponegoro yang ditangkap oleh Belanda dan dibawa ke Benteng ini, konon katany K.H Muhammad Nursalim ini adalah orang yang menyebarkan agama islam pertama di Ngawi,  dan memiliki kesaktian yang tinggi,yaitu tidak mempan ditembak, oleh karena itu maka beliau dikubur hidup hidup.', 'wisata_benteng1.jpg', 'wisata_benteng2.jpg', 'wisata_benteng3.jpg', 'wisata_benteng4.jpg', 'wisata_benteng5.jpg', 111.453, -7.39135),
(29, 'Air Terjun Watu Jonggol', 'Desa Pandansari Kec.Sine', 'alam', '', 'Sumber Air Kamulyan Watu Jonggol ini merupakan wisata alam yang menawarkan keindahan air terjun alami setinggi 45 meter, terletak di Desa Pandansari, Kecamatan Sine, Kabupaten Ngawi. Pesona wisata alam yang masih anyar ini terdapat pula lokasi air terjun lain yang tak kalah indahnya serta 2 kolam renang yang airnya berasal dari sumber mata air Watu Jonggol.\r\n\r\nSebelum menuju ke Sumber Air Kamulyan Watu Jonggol, pengunjung dapat menikmati indahnya pemandangan hutan yang berada di sisi jalan. Setelah melakukan perjalanan dengan pemandangan hutan yang eksotik dan melewati sederetan batu yang tertata alami maka akan terlihat tumpukan batuan alam yang tersusun secara artistik seperti keluar dari permukaan tebing dengan air terjun yang mengalir deras kebawah secara begitu indah. ', 'wisata_watu_jonggol1.jpg', 'wisata_watu_jonggol2.jpg', 'wisata_watu_jonggol3.jpg', 'wisata_watu_jonggol4.jpg', 'wisata_watu_jonggol5.jpg', 111.164, -7.54193),
(30, 'Bumi Perkemahan Selondo', ' Desa Ngrayudan, Kecamatan Jogorogo', 'alam', '', 'Bumi Perkemahan Selondo terletak di Desa Ngrayudan, Kecamatan Jogorogo, Kabupaten Ngawi, berjarak 30 Km dari pusat kota Ngawi. Letaknya yang berada di kaki Gunung Lawu membuat Selondo memberikan hawa yang sangat sejuk dan nyaman.\r\n\r\nSelondo berasal dari kata selo(jawa) yang mempunyai arti batu dan ondo(jawa) yang mempunyai arti tangga, Selondo berarti tangga batu. Kawasan ini biasa digunakan sebagai Bumi Perkemahan (buper) oleh anak-anak Pecinta Alam maupun Pramuka dan PMR. Pemandangan yang indah berlatar belakang hutan pinus serta kesejukan udara pegunungan mendukung kegiatan adventure dan penjelajahan serta out bond.\r\n\r\nMedannya yang naik turun cocok untuk menguji kekuatan fisik para pengikut organisasi kemanusiaan maupun kemasyarakatan. Terdapat pula sebuah sungai yang indah dengan jembatan layang yang membelah sungai tersebut, terdapat pula area rock climbing bagi yang punya nyali dan bernuansa meningkatkan adrenalin.', 'wisata_selondo1.jpg', 'wisata_selondo2.jpg', 'wisata_selondo3.jpg', 'wisata_selondo4.jpg', 'wisata_selondo5.jpg', 111.142, -7.58347),
(31, 'Rumah Batu Hargomulyo', 'Dus.Bulurejo Desa.Hargomulyo Kec.Ngrambe', 'alam', '--', 'Bangunan dengan luas 400 m2  yang terletak di lereng gunung Lawu ini dibangun dengan menggunakan material 100% dari Batu. Batu-batu ini disusun tanpa menggunakan bahan lain selain batu alam. Dibangun pada  Tahun 1977 dengan menggunakan peralatan yang sederhana batu-batu alam tersebut dipotong  dan kemudian disusun  hingga terbentuklah rumah batu ini. Didukung dengan suasana alam yang masih asri, rumah batu Hargomulyo ini layak jadi pilihan wisata rekreasi untuk mengagumi arsitektur cantik  ini', 'wisata_rumah_batu1.jpg', 'wisata_rumah_batu2.jpg', 'wisata_rumah_batu3.jpg', 'wisata_rumah_batu4.jpg', 'wisata_rumah_batu5.jpg', 111.221, -7.5501);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_akomodasi`
--
ALTER TABLE `tb_akomodasi`
  ADD PRIMARY KEY (`id_akomodasi`);

--
-- Indexes for table `tb_atm`
--
ALTER TABLE `tb_atm`
  ADD PRIMARY KEY (`id_atm`);

--
-- Indexes for table `tb_info`
--
ALTER TABLE `tb_info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_rmibadah`
--
ALTER TABLE `tb_rmibadah`
  ADD PRIMARY KEY (`id_rmibadah`);

--
-- Indexes for table `tb_rmsakit`
--
ALTER TABLE `tb_rmsakit`
  ADD PRIMARY KEY (`id_rmsakit`);

--
-- Indexes for table `tb_spbu`
--
ALTER TABLE `tb_spbu`
  ADD PRIMARY KEY (`id_spbu`);

--
-- Indexes for table `tb_transport`
--
ALTER TABLE `tb_transport`
  ADD PRIMARY KEY (`id_transport`);

--
-- Indexes for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_akomodasi`
--
ALTER TABLE `tb_akomodasi`
  MODIFY `id_akomodasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_atm`
--
ALTER TABLE `tb_atm`
  MODIFY `id_atm` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_info`
--
ALTER TABLE `tb_info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_rmibadah`
--
ALTER TABLE `tb_rmibadah`
  MODIFY `id_rmibadah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_rmsakit`
--
ALTER TABLE `tb_rmsakit`
  MODIFY `id_rmsakit` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_spbu`
--
ALTER TABLE `tb_spbu`
  MODIFY `id_spbu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_transport`
--
ALTER TABLE `tb_transport`
  MODIFY `id_transport` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
