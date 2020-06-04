USE db-tugas5;
CREATE TABLE `combo` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `value` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `combo` (`id`, `value`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA'),
(4, 'S1'),
(5, 'S2'),
(6, 'S3');


CREATE TABLE `film` (
  `film_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `judul` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL,
  `foto_poster` longblob NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `pendidikan` (
  `pendidikan_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nama_sekolah` varchar(30) NOT NULL,
  `jenis_pendidikan` varchar(20) NOT NULL,
  `tahun_awal` year(4) NOT NULL,
  `tahun_akhir` year(4) NOT NULL,
  `nilai_akhir` decimal(10,0) NOT NULL,
  `deskripsi` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `skills` (
  `skills_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nama_skills` varchar(20) NOT NULL,
  `penguasaan` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT
) ENGINE=InnoDB DEFAULT CHARSET=latin1;