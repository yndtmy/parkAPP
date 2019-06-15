-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2019 at 02:46 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsf_d03_db30`
--
CREATE DATABASE IF NOT EXISTS `gsf_d03_db30` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gsf_d03_db30`;

-- --------------------------------------------------------

--
-- Table structure for table `07_30_yonedatomoyo`
--

CREATE TABLE `07_30_yonedatomoyo` (
  `id` int(12) NOT NULL,
  `name1` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `url1` text COLLATE utf8_unicode_ci,
  `toilet` int(11) NOT NULL,
  `toilet_comment` text COLLATE utf8_unicode_ci,
  `slide` int(11) NOT NULL,
  `sandbox` int(11) NOT NULL,
  `swing` int(11) NOT NULL,
  `ball` int(11) NOT NULL,
  `drink` int(11) NOT NULL,
  `date1` datetime NOT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `07_30_yonedatomoyo`
--

INSERT INTO `07_30_yonedatomoyo` (`id`, `name1`, `address1`, `url1`, `toilet`, `toilet_comment`, `slide`, `sandbox`, `swing`, `ball`, `drink`, `date1`, `comment`) VALUES
(1, '大濠公園 西側児童遊園(どんぐり公園)', '福岡県福岡市中央区大濠公園１', 'https://goo.gl/maps/hKpFWpvtgEDmTwNr7', 1, 'オムツ替え台あり\r\n公園の外にあり', 1, 1, 1, 2, 1, '2019-06-09 03:58:06', 'くじら公園(大濠公園内)に比べ低年齢向け\r\n日陰あり'),
(2, '大濠公園 東側児童遊園（くじら公園）', '福岡県福岡市中央区大濠公園１−１', 'https://www.ohorikouen.jp/', 1, '公園外の外周にあり\r\nオムツ替え台あり', 1, 2, 1, 2, 2, '2019-06-09 14:51:13', '階段で舞鶴公園と繋がっています'),
(3, '鳥飼公園', '福岡県福岡市中央区鳥飼２丁目４', 'なし', 2, 'なし', 1, 1, 2, 1, 1, '2019-06-09 14:55:11', '広くはない\r\nファエンスで囲まれているのでボール遊びが安心してできる'),
(4, '鳥飼３号公園', '福岡県福岡市中央区鳥飼１丁目４', 'なし', 2, 'なし', 1, 2, 2, 2, 1, '2019-06-09 14:57:01', '時期によっては雑草がひどい'),
(5, '草香江公園', '福岡県福岡市中央区草香江２丁目１７', 'https://www.midorimachi.jp/park/detail.php?code=306033', 2, 'なし', 2, 2, 2, 1, 2, '2019-06-09 14:58:53', '遊具が何もない\r\nボールなど必須'),
(6, '舞鶴公園', '福岡県福岡市中央区城内１', 'https://www.midorimachi.jp/maiduru/', 1, 'オムツ替え可能', 2, 2, 2, 1, 1, '2019-06-09 15:01:08', 'かなり広い・テントやレジャーシートを引いている人多数\r\n週末はイベントをしている可能性が高い\r\n'),
(7, '舞鶴公園西広場', '福岡県福岡市中央区城内２−２', 'https://www.midorimachi.jp/maiduru/', 1, 'オムツ替え可能', 1, 1, 2, 1, 1, '2019-06-09 15:03:41', 'とても広い\r\n桜の時期はとても綺麗です'),
(8, '六本松公園', 'なし', 'なし', 1, 'オムツ替え台あり', 1, 2, 2, 1, 2, '2019-06-09 17:42:18', '特になし');

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, 'みかづき', 'https://www.amazon.co.jp/みかづき-集英社文庫-森-絵都/dp/4087458067/ref=sr_1_1?__mk_ja_JP=カタカナ&keywords=みかづき&qid=1560000211&s=gateway&sr=8-1', '本屋大賞2017第2位\r\n学習塾の走り出し・経営3世代奮闘記', '2019-06-08 22:35:30'),
(2, '限界集落株式会社', 'https://www.amazon.co.jp/s?k=%E9%99%90%E7%95%8C%E9%9B%86%E8%90%BD&i=stripbooks&__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&ref=nb_sb_noss_1', 'ITおじさん→過疎・高齢化・雇用問題・食糧自給率→解決に奮闘', '2019-06-08 22:43:53'),
(3, '生きるぼくら', 'https://www.amazon.co.jp/%E7%94%9F%E3%81%8D%E3%82%8B%E3%81%BC%E3%81%8F%E3%82%89-%E5%8E%9F%E7%94%B0%E3%83%9E%E3%83%8F/dp/4198634718', 'ひきこもり→農業家', '2019-06-08 22:47:25'),
(4, '平成くんさようなら', 'https://www.amazon.co.jp/%E5%B9%B3%E6%88%90%E3%81%8F%E3%82%93%E3%80%81%E3%81%95%E3%82%88%E3%81%86%E3%81%AA%E3%82%89-%E5%8F%A4%E5%B8%82-%E6%86%B2%E5%AF%BF/dp/4163909230', 'おしゃれ生活切り取り小説\r\n安楽死\r\nGoogle Homeの宣伝', '2019-06-08 22:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(1, 'php課題', '2019-06-08', 'むずかしー', '2019-06-08 15:34:32'),
(2, 'JavaScript課題', '2019-06-08', '余裕？', '2019-06-08 15:35:51'),
(3, 'スーパー', '2019-06-08', '醤油\r\n豚肉', '2019-06-08 15:38:27'),
(4, 'ツルハドラッグ', '2019-06-08', '箱ティッシュ', '2019-06-08 15:39:23'),
(5, '保育園', '2019-06-10', '箱ティッシュ(お名前書く)', '2019-06-08 15:41:51'),
(6, '父の日(亀)', '2019-06-08', 'プレゼント選ぶ', '2019-06-08 15:43:11'),
(7, '父の日(米)', '2019-06-08', 'プレゼント選ぶ', '2019-06-08 15:43:25'),
(8, '保育園', '2019-06-10', '雑巾もっていく', '2019-06-08 15:44:04'),
(9, '100均', '2019-06-08', 'ビニール袋', '2019-06-08 15:44:55'),
(11, '123', '2019-06-15', 'hh', '2019-06-08 17:35:51'),
(12, 'テスト1', '2019-06-14', 'qqq', '2019-06-08 22:14:25'),
(13, 'テスト1', '2019-06-15', 'qwe', '2019-06-08 22:15:22'),
(14, 'テスト1', '2019-06-08', 'qqq', '2019-06-08 22:16:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `07_30_yonedatomoyo`
--
ALTER TABLE `07_30_yonedatomoyo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `07_30_yonedatomoyo`
--
ALTER TABLE `07_30_yonedatomoyo`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
