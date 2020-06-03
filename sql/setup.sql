USE db-tugas5;
CREATE TABLE `combo` (
  `id` int(11) NOT NULL,
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
  `film_id` int(11) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL,
  `foto_poster` longblob NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `pendidikan` (
  `pendidikan_id` int(11) NOT NULL,
  `nama_sekolah` varchar(30) NOT NULL,
  `jenis_pendidikan` varchar(20) NOT NULL,
  `tahun_awal` year(4) NOT NULL,
  `tahun_akhir` year(4) NOT NULL,
  `nilai_akhir` decimal(10,0) NOT NULL,
  `deskripsi` varchar(20) NOT NULL,
  `combo_box_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `pendidikan` (`pendidikan_id`, `nama_sekolah`, `jenis_pendidikan`, `tahun_awal`, `tahun_akhir`, `nilai_akhir`, `deskripsi`, `combo_box_id`, `user_id`) VALUES
(4, 'Duta Wacana', 'S1', 2017, 2021, '4', 'Test doang', 0, 0),
(5, 'SMA 5', 'SMA', 2014, 2017, '80', 'ya gitulah', 0, 0);



CREATE TABLE `skills` (
  `skills_id` int(11) NOT NULL,
  `nama_skills` varchar(20) NOT NULL,
  `penguasaan` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `skills` (`skills_id`, `nama_skills`, `penguasaan`, `user_id`) VALUES
(1, 'Bahasa inggris', '50%', 0),
(3, 'bahasa indo', '30%', 0);



CREATE TABLE `user` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`pendidikan_id`);


ALTER TABLE `skills`
  ADD PRIMARY KEY (`skills_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `pendidikan`
  MODIFY `pendidikan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `skills`
  MODIFY `skills_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

