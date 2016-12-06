-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2016 at 02:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `figured`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `on_post` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table1', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_06_073745_posts', 2),
(4, '2016_12_06_073804_comments1', 2),
(5, '2014_10_12_000000_create_users_table', 3),
(6, '2016_12_06_073804_comments', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` enum('PHP','Javascript','MySQL','DevOps','Others') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Others',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Others', 1, 'Hello world', '<p>Lorem ipsum dolor sit amet, salutandi qualisque consulatu sit et, id ius semper doctus definiebas. Sea te noster platonem scripserit, debitis honestatis ne est. Discere docendi corrumpit eos te. Ut est complectitur comprehensam. Ne quo sumo utamur, vix prompta fierent ancillae at.</p>\r\n<p>Vix graeci epicuri maiestatis cu, iudicabit consetetur sit eu. Usu diam dicam no. At malis ubique eirmod his, cibo dolore possim eu vis. Cibo veniam recteque no his. Usu adipiscing reprimique reformidans id, no vix rebum volutpat, eros eirmod vix cu. At eum dolor nostrud.</p>\r\n<p>Mel et oporteat definitiones. Ad quo dolorem expetendis scribentur. Vix ex mentitum gubergren, rebum nullam democritum mei in. Modo philosophia consectetuer cu quo, adhuc scripserit scriptorem cum ad, graeco aeterno intellegam in pri.</p>\r\n<p>Te soleat docendi contentiones usu, illum epicuri necessitatibus ne sed. Ut ceteros oportere hendrerit qui. Facilisis forensibus instructior mea te. Ei mutat noluisse nam, inani complectitur te vim, sanctus patrioque concludaturque vix ex. Cu qui alienum propriae, eu quas clita his. In vis alii liber, ea duo brute aperiam recusabo. Postea electram moderatius ei eos.</p>\r\n<p>Suas indoctum est ad. Nec et augue inimicus, qui purto reque postulant ut. Et nihil laoreet repudiandae sed, pri ea docendi postulant voluptatibus. Eum cu dicat mollis.</p>\r\n<p>Delenit quaestio salutatus ea eum, ne zril volumus nec. Nec ex vivendo reprehendunt. Pri no suas qualisque, mei eu sumo philosophia. Legimus urbanitas ut his, dolorem sententiae eu sea. Eu tale officiis vel, duo noluisse complectitur id. Te debet gubergren cum, utinam fabellas at est, etiam possit pro an.</p>\r\n<p>Vis ea alii illum cotidieque, ne aeterno consetetur sea. Nec ne propriae cotidieque, cu sumo facilis omittam eos, per eu discere perfecto electram. Usu clita impedit ad, his ex illum iudicabit. Ei quo illum porro scribentur, vim agam erat eloquentiam eu. Nonumy partiendo nec ut, vel an senserit urbanitas intellegebat.</p>\r\n<p>Et pri autem utroque. Vim te deserunt scriptorem, ei mea rebum malorum. Quas primis referrentur pri cu, ut vim simul decore legimus. Pri at perfecto lobortis salutandi, te sit utamur dignissim voluptatum, id nominavi sensibus philosophia vix. No vix detraxit constituto, ius harum patrioque et. Quaerendum eloquentiam in nec, nulla possim expetendis at eos.</p>\r\n<p>Omnesque recusabo ad nec. Cum eros indoctum ad. Aeque audire salutandi cu eam, mea veri illum adolescens ea. Impedit oporteat pri ad, vel ex eius assentior consetetur. Eu usu mediocrem contentiones. Ne aliquip dissentias est, rebum vivendo contentiones id nec, mea noluisse facilisis ei. Et vel propriae suavitate, an iriure scribentur has.</p>\r\n<p>Prima dictas explicari vim te. Ea mentitum qualisque definitiones mel, porro indoctum has te. Eam cu appetere honestatis quaerendum. Sea at esse essent admodum, alia agam abhorreant nam ne. Nam id errem debitis torquatos, graeco qualisque scripserit eos ex.</p>', 'hello-world', 1, '2016-12-06 03:51:30', '2016-12-06 06:55:17'),
(3, 'Javascript', 1, 'Lorem Ipsum 2', '<p>Lorem ipsum dolor sit amet, nusquam intellegat delicatissimi his et, ad zril dolorum est, sit at mediocrem salutandi liberavisse. Cu usu dicat vitae assentior, pro petentium dissentiet ei. Facer elitr copiosae quo an, dolores corrumpit duo eu. Et electram iracundia mel, usu ceteros iudicabit et, odio elit consulatu est eu. Ei usu sale paulo explicari. Vix ei omnis nostro senserit, veri iracundia mnesarchum nec an.</p>\r\n<p>Imperdiet tincidunt persecuti mei at, an clita atomorum maiestatis sea. Te sit eirmod ponderum, duo eu posse iriure accusata. Oblique voluptatum duo ad. Rationibus persequeris comprehensam vim eu. Ubique graece posidonium mel an, sit deseruisse reprehendunt ei. Assum noluisse an vix, te vivendo patrioque cum, an vidit delenit petentium vim.</p>\r\n<p>Ne suas modus pri, vero viderer eum te. Inani utroque repudiare pri ex. Mea in iudicabit vituperata. His id alia agam omittantur, ubique altera philosophia eos id. In dolore inimicus vim, vim ullum postea feugiat ad.</p>\r\n<p>Has dico senserit patrioque et, ius ut clita nullam. Ei per doming iudicabit, ne sed libris comprehensam. Eu consetetur quaerendum nec, eum ex idque docendi maluisset, nec at perfecto insolens reprehendunt. In saepe decore graeco usu, sea eu aliquam inermis scripserit. Eu sea vero choro honestatis, recusabo corrumpit vim an. Eam congue temporibus id, vix ad quod menandri.</p>\r\n<p>Nam et temporibus scribentur eloquentiam, quem nostrud sit ad. Nonumes delectus cu pro, qui nostro fabellas reformidans id. Vim ei vide libris. Sit ea natum labore, facilis deserunt electram cu his.</p>', 'esdsa', 1, '2016-12-06 05:55:25', '2016-12-06 06:54:27'),
(4, 'PHP', 1, 'Lorem Ipsum ', '<p>Lorem ipsum dolor sit amet, duo propriae assentior ea. Laoreet voluptua qui ad. Natum veniam repudiare ut vis, ipsum tractatos scriptorem ut nam. Eius liber ea mel, te diam oratio laboramus vix. Ea ludus corrumpit pro, vim id stet nihil instructior.</p>\r\n<p>Ad nobis splendide pri. Vero argumentum ei sit. Est an noster perpetua, at eum choro integre iuvaret. No nostro possim feugait cum. Et vix latine euripidis honestatis, nec te aeque laboramus efficiantur, pri ex nusquam nominavi percipitur.</p>\r\n<p>Te sea iusto salutatus. Facete percipit ut nec. Pro inimicus iudicabit eloquentiam at, quando quodsi vim an. Usu te iisque repudiare, his ad tritani accusata, timeam aeterno corrumpit mea ne. Ex vel dolorem probatus, erat possim euripidis in pri.</p>\r\n<p>Virtute vituperatoribus an sea. Phaedrum hendrerit definitiones eos ne, nec tritani repudiare ex. Mea ad facer pertinax maluisset, consequuntur signiferumque nec te. Eleifend oportere id mel, pri sale everti et. Ei facete persius saperet sit, an eum omittam accumsan, pri et odio elitr mandamus.</p>\r\n<p>Ei ius magna utroque. Ex quo eripuit disputationi. Et dicat hendrerit vis, illud veritus cu his. An case reformidans duo. Qui cibo scaevola phaedrum cu.</p>\r\n<p>Est case vide impedit cu, tritani oporteat splendide ut mea, duo ne fabellas hendrerit. Putent theophrastus eu pro, ex mei legere aeterno eleifend. Id mei nobis pertinacia. Quo agam viris delicatissimi et.</p>\r\n<p>Discere ponderum te nec, ut illum possit ius. Sea quod nobis evertitur ex, an ludus regione corpora vel. Pro errem singulis cu, et postea lucilius honestatis per, ut mei tacimates vulputate. Qui habeo audiam percipitur an. Id eos accusamus principes, mel laoreet ceteros ne.</p>\r\n<p>Ad atqui invenire disputando pri. Ei sed graeci melius persecuti, putant molestiae incorrupte ex nec. Et novum legendos mandamus quo, integre mandamus est ad. Vel eu molestiae pertinacia, pri eu hinc vivendo. Mei unum nostro in, no ius maiestatis definitiones.</p>\r\n<p>Ut vix magna dictas. Has tollit exerci ad. Et cetero civibus assentior his, virtute incorrupte neglegentur ex vim. Cu natum voluptatum suscipiantur mei, partem prompta molestiae in ius. His et iusto congue corpora.</p>\r\n<p>Vel ne quidam disputando, duo an vidisse civibus, vim ea nobis aeterno. Id porro affert equidem duo. Brute maiorum ut ius. Mundi nonumy inciderint sed ut, quod fabellas incorrupte ne pro, eam te suas epicuri. Iudico dolores efficiendi eos cu, mel id exerci aliquando. Nam autem persius ex.</p>', 'mysql', 1, '2016-12-06 05:56:25', '2016-12-06 06:54:56'),
(5, 'Others', 1, 'Test Draft', '<p>Lorem ipsum dolor sit amet, salutandi qualisque consulatu sit et, id ius semper doctus definiebas. Sea te noster platonem scripserit, debitis honestatis ne est. Discere docendi corrumpit eos te. Ut est complectitur comprehensam. Ne quo sumo utamur, vix prompta fierent ancillae at.</p>\r\n<p>Vix graeci epicuri maiestatis cu, iudicabit consetetur sit eu. Usu diam dicam no. At malis ubique eirmod his, cibo dolore possim eu vis. Cibo veniam recteque no his. Usu adipiscing reprimique reformidans id, no vix rebum volutpat, eros eirmod vix cu. At eum dolor nostrud.</p>\r\n<p>Mel et oporteat definitiones. Ad quo dolorem expetendis scribentur. Vix ex mentitum gubergren, rebum nullam democritum mei in. Modo philosophia consectetuer cu quo, adhuc scripserit scriptorem cum ad, graeco aeterno intellegam in pri.</p>\r\n<p>Te soleat docendi contentiones usu, illum epicuri necessitatibus ne sed. Ut ceteros oportere hendrerit qui. Facilisis forensibus instructior mea te. Ei mutat noluisse nam, inani complectitur te vim, sanctus patrioque concludaturque vix ex. Cu qui alienum propriae, eu quas clita his. In vis alii liber, ea duo brute aperiam recusabo. Postea electram moderatius ei eos.</p>\r\n<p>Suas indoctum est ad. Nec et augue inimicus, qui purto reque postulant ut. Et nihil laoreet repudiandae sed, pri ea docendi postulant voluptatibus. Eum cu dicat mollis.</p>\r\n<p>Delenit quaestio salutatus ea eum, ne zril volumus nec. Nec ex vivendo reprehendunt. Pri no suas qualisque, mei eu sumo philosophia. Legimus urbanitas ut his, dolorem sententiae eu sea. Eu tale officiis vel, duo noluisse complectitur id. Te debet gubergren cum, utinam fabellas at est, etiam possit pro an.</p>\r\n<p>Vis ea alii illum cotidieque, ne aeterno consetetur sea. Nec ne propriae cotidieque, cu sumo facilis omittam eos, per eu discere perfecto electram. Usu clita impedit ad, his ex illum iudicabit. Ei quo illum porro scribentur, vim agam erat eloquentiam eu. Nonumy partiendo nec ut, vel an senserit urbanitas intellegebat.</p>\r\n<p>Et pri autem utroque. Vim te deserunt scriptorem, ei mea rebum malorum. Quas primis referrentur pri cu, ut vim simul decore legimus. Pri at perfecto lobortis salutandi, te sit utamur dignissim voluptatum, id nominavi sensibus philosophia vix. No vix detraxit constituto, ius harum patrioque et. Quaerendum eloquentiam in nec, nulla possim expetendis at eos.</p>\r\n<p>Omnesque recusabo ad nec. Cum eros indoctum ad. Aeque audire salutandi cu eam, mea veri illum adolescens ea. Impedit oporteat pri ad, vel ex eius assentior consetetur. Eu usu mediocrem contentiones. Ne aliquip dissentias est, rebum vivendo contentiones id nec, mea noluisse facilisis ei. Et vel propriae suavitate, an iriure scribentur has.</p>\r\n<p>Prima dictas explicari vim te. Ea mentitum qualisque definitiones mel, porro indoctum has te. Eam cu appetere honestatis quaerendum. Sea at esse essent admodum, alia agam abhorreant nam ne. Nam id errem debitis torquatos, graeco qualisque scripserit eos ex.</p>', 'test-draft', 0, '2016-12-06 06:56:05', '2016-12-06 06:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','author','subscriber') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shamim', 'shamim7777@gmail.com', '$2y$10$.rwwiBPAvDj/uKl6aPMclejq5PmKQGcUrdNNK.dAWscQgHBBh2fBe', 'author', NULL, '2016-12-06 03:46:56', '2016-12-06 03:46:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_on_post_foreign` (`on_post`),
  ADD KEY `comments_from_user_foreign` (`from_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_on_post_foreign` FOREIGN KEY (`on_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
