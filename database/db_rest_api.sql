-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 12:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkYW5pbCIsImVtYWlsIjoiZGFuaWxAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjEsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wNS0wN1QxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE2NTE5OTIzNTQsImV4cCI6MTY1MTk5Mzc5NH0.LjsUDj7-bFTCgUyGfGzcyS4HHhQVUP58xKxIHKiW6GM', '192.168.1.8'),
(2, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkYW5pbCIsImVtYWlsIjoiZGFuaWxAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjEsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wNS0wN1QxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE2NTE5OTI0MDksImV4cCI6MTY1MTk5Mzg0OX0.kttvtE2vxFJXH2aLl8bAFf6RMp7PDXG1NVPshq9zVlY', '192.168.1.8'),
(3, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MTk5MjQ2NiwiZXhwIjoxNjUxOTkyNDk2fQ.fa65FpEeRvDRz036ujjPsWGrfTodSJFNVE6wQ9nVXIg', '192.168.1.8'),
(4, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjAwMTQ4MiwiZXhwIjoxNjUyMDAxNTEyfQ.ugkUQpVIOrF1PtmrSuBFIEfohRrb9ksAYwgZjbUHiwU', '192.168.1.8'),
(5, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjAwMzgzNiwiZXhwIjoxNjUyMDA1Mjc2fQ.IjmwxUp5fF1GgZ6YUR72anXZO02lOzKThQdlVCgWqoI', '192.168.1.8'),
(6, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjAwNDE5OCwiZXhwIjoxNjUyMDA1NjM4fQ._ygg2yZn-pVgMlPQH9WChTtkRqOnaVYZwXkWDX3IWRM', '192.168.1.8'),
(7, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjAwNDIwMCwiZXhwIjoxNjUyMDA1NjQwfQ.TLMKQSGj6W8I2BUbaUMkVUldixTtG08fWrM7Qq_ujDs', '192.168.1.8'),
(8, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjAwNDgzMSwiZXhwIjoxNjUyMDA2MjcxfQ.jycfJqeAVEUaU0YXp_AuvFFZkSPT5d_eeGhJdz0TppU', '192.168.1.8'),
(9, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjAwNTAwNSwiZXhwIjoxNjUyMDA2NDQ1fQ.wlNk6QFXU8ufKgLQCUrCw9a4GRNhK35rkVSB4UiUxcE', '192.168.1.8'),
(10, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJGYWphciBxIiwiZW1haWwiOiJmYWphckBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MSwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIyLTA1LTA3VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTY1MjE2MDI5NSwiZXhwIjoxNjUyMTYxNzM1fQ.pNSYkGioEEVlS5_9hHLXvKZp8HCuMlhcRWJcg5u67s4', '192.168.1.8');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `id_matakuliah`, `id_mahasiswa`) VALUES
(1, '2022-05-02', 1, 5),
(2, '2022-05-02', 5, 5),
(3, '2022-05-02', 2, 5),
(4, '2022-05-02', 4, 5),
(5, '2022-05-02', 3, 2),
(6, '2022-05-02', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(2, 1119090, 'Radiansyah', 'Accounting'),
(3, 11190012, 'Popi Yurino', 'Sistem Informasi'),
(4, 11190014, 'Nino Renata', 'Teknik Informatika'),
(5, 11190015, 'Adinda Rahayu', 'Sistem Informasi'),
(7, 11190016, 'Dody Kurnia', 'Teknik Informatika'),
(8, 111909011, 'Raditya', 'Teknik Informatika'),
(9, 11128731, 'Reza ', 'SIstem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Algoritma Dasar', 3),
(2, 'Rekayasa Perangkat Lunak', 3),
(3, 'Web Programming ', 3),
(4, 'Dasar Pemrograman', 3),
(5, 'Bahasa Inggris', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'Andika ', 'andika@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2022-05-06'),
(5, 'Fajar q', 'fajar616@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2022-05-08'),
(6, 'Fajar q', 'fajar@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2022-05-08'),
(7, 'danil', 'danil@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2022-05-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
