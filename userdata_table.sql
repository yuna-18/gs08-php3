-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql3104.db.sakura.ne.jp
-- 生成日時: 2025 年 1 月 03 日 06:20
-- サーバのバージョン： 8.0.40
-- PHP のバージョン: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `snowtapir22_musifo-test`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `userdata_table`
--

CREATE TABLE `userdata_table` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `furigana` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `music_category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subscribe_mail` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- テーブルのデータのダンプ `userdata_table`
--

INSERT INTO `userdata_table` (`id`, `name`, `furigana`, `email`, `music_category`, `subscribe_mail`, `date`) VALUES
(2, 'a', 'a', 'a', 'オーケストラ, 室内楽・アンサンブル', 0, '2024-12-27 01:36:07'),
(3, 'a', 'aiu', 'a', 'オーケストラ, 室内楽・アンサンブル, ソロ', 0, '2024-12-27 01:39:22'),
(4, 'a', 'aiu', 'a', 'オーケストラ, 室内楽・アンサンブル, ソロ', 0, '2024-12-27 01:43:02'),
(6, 'a', 'a', 'a', 'オーケストラ, 室内楽・アンサンブル', 0, '2024-12-27 02:48:59'),
(7, 'あ', 'あ', 'あ', '室内楽・アンサンブル', 0, '2024-12-27 02:51:51'),
(9, 'a', 'ab', 'a', '', 1, '2025-01-03 05:34:08'),
(10, 'akj', 'bb', 'テスト', 'オーケストラ, ソロ', 0, '2024-12-27 03:08:56'),
(11, 'ああ', 'bb', 'テスト', 'オーケストラ, 吹奏楽, 室内楽・アンサンブル, ジャズ, ソロ', 0, '2024-12-27 03:34:24'),
(14, 'ああ', 'いい', 'うう', 'オーケストラ, 室内楽・アンサンブル, ソロ', 1, '2024-12-27 03:44:52'),
(15, 'aaa', 'aああ', 'aああ', 'オーケストラ, 吹奏楽, 室内楽・アンサンブル', 1, '2025-01-03 06:05:31'),
(16, 'akj', 'bb', 'テスト', '吹奏楽, ジャズ', 0, '2024-12-27 03:52:39'),
(17, 'aaa', 'bb', 'a', '吹奏楽, 室内楽・アンサンブル, ジャズ', 1, '2025-01-03 05:37:44'),
(18, 'a', 'a', 'テスト', 'ジャズ', 1, '2025-01-03 02:05:22'),
(19, 'a', 'a', 'a', '室内楽・アンサンブル', 1, '2025-01-03 02:57:27'),
(20, 'a', 'ab', 'a', 'オーケストラ, 室内楽・アンサンブル, ソロ', 0, '2025-01-03 05:39:04'),
(21, 'a', 'a', 'a', 'オーケストラ, 吹奏楽, 室内楽・アンサンブル', 1, '2025-01-03 03:01:14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `userdata_table`
--
ALTER TABLE `userdata_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `userdata_table`
--
ALTER TABLE `userdata_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
