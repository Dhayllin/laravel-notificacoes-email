-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 03-Set-2018 às 17:31
-- Versão do servidor: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.31-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notificacoes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dhayllin Jesus', 'dhayllin@hotmail.com', '$2y$10$.Nw0cK0/uaIZebEMjz5.H.RrLPgYIPCJhO3CEtvEYrOaOyenFBitG', 'kSXL6ybGwUfo0NdlJXqAi58CR80ZEMkgnzqgNHJ4VnzC4J0zbF3CdyDQkBM4', '2018-09-02 23:22:54', '2018-09-02 23:22:54'),
(2, 'Teste 123', 'dhayllin@hotmail.comn', 'q212', NULL, '2018-09-03 21:46:05', '2018-09-03 21:46:05'),
(3, 'Teste 1234', 'dhayllin@hotmail.comddd', 'asg', NULL, '2018-09-03 21:47:34', '2018-09-03 21:47:34'),
(4, 'Dhayllin Jesus ssss', 'dhayllin@hotmail.comndd', 'qwwqew', NULL, '2018-09-03 21:48:04', '2018-09-03 21:48:04'),
(5, 'Dhayllin Mail', 'dhaylindj@gmail.com', '$2y$10$6cTaLAvSsYVSNq.un5EAieszTf4LMvoMQ88TSPwAHMayw.USvJmoO', NULL, '2018-09-03 22:29:18', '2018-09-03 22:29:18'),
(6, 'Dhayllin Mail', 'dhaylindj@gmail.com', '$2y$10$zZ69GB0ShU/CgjLg9MLV2OYxgrYJSNciIiK/ru5JvVFq9GDwOtopC', NULL, '2018-09-03 22:31:29', '2018-09-03 22:31:29'),
(7, 'Dhayllin Mail', 'dhaylindj@gmail.com', '$2y$10$HbYaUAGWAxD1TmfCjU8NO.uxCAAni94PKfhHVCQpO/TkXOTjGWvTO', NULL, '2018-09-03 22:35:17', '2018-09-03 22:35:17'),
(8, 'Dhayllin Mail2', 'dhaylindj@gmail.com', '$2y$10$U6J7x9TWtJf9IDW71kMh7OsU.hx13m7HMV2CCNRAYeCVSRoqSZ/JO', NULL, '2018-09-03 22:35:44', '2018-09-03 22:35:44'),
(9, 'Dhayllin Mail3', 'dhaylindj@gmail.com', '$2y$10$f6wrxOozVsNd5IjIVbXuvO2qmnjWnN74hSquaHeW5AYndxw/Y70sG', NULL, '2018-09-03 22:39:13', '2018-09-03 22:39:13'),
(10, 'Dhayllin Mail3', 'dhaylindj@gmail.com', '$2y$10$8K0gKQRaoec3HtW0EMUqK.87gX1CfxAV.mcBjhAOpTImY8quCUO76', NULL, '2018-09-03 22:40:15', '2018-09-03 22:40:15'),
(11, 'sistemaflexsite', 'dhaylindj@gmail.com', '$2y$10$2Lqv81HbzyMSGKGAysPqUe3iBg6sJOJpEXFCQ0MjGhD4OGzVfveHq', NULL, '2018-09-03 22:42:19', '2018-09-03 22:42:19'),
(12, 'sistemaflexsite', 'dhaylindj@gmail.com', '$2y$10$KHCYgku/DrFMx/FXbaPea.dmMW9dMdOX10xqrtBA9Lic0fcWgaBOu', NULL, '2018-09-03 22:56:02', '2018-09-03 22:56:02'),
(13, 'D Mail 4', 'dhaylindj@gmail.com', '$2y$10$lE6Up5mfkLhfjSXmjZwQGOlBTIL4ckH27f.Kji0id5qGvhuKZrqxi', NULL, '2018-09-03 22:57:13', '2018-09-03 22:57:13'),
(14, 'Dhayllin Mail 5', 'dhayllin@hotmail.com', '$2y$10$6YfnZ6.5amBWPelhsCOMv.XvoyzmskcM7glRRmsAT.JTqyr5DKjDa', NULL, '2018-09-03 23:04:17', '2018-09-03 23:04:17'),
(15, 'Dhayllin Jesusss', 'dhayllin@hotmail.com', '$2y$10$qEZ0QgkwVd.twJG1y7bKa.gfEijwIWafl6bmoEg25wnIRhhhdkve2', NULL, '2018-09-03 23:06:24', '2018-09-03 23:06:24'),
(16, 'Dhayllin Jesus MAIL', 'dhayllin@hotmail.com', '$2y$10$1umNAM6aNi/iXEFs0vs9HOfEkJX4b7x30atJKOTTR8N6eJziZz1d2', NULL, '2018-09-03 23:21:42', '2018-09-03 23:21:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
