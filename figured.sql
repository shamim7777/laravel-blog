-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2016 at 09:39 AM
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'PHP'),
(2, 'MySQL'),
(3, 'Javascript'),
(4, 'Mongo'),
(5, 'HTML5'),
(6, 'Others');

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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `on_post`, `from_user`, `body`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'test\r\n', '2016-12-07 07:50:24', '2016-12-07 07:50:24'),
(2, 14, 1, 'xx', '2016-12-08 01:34:09', '2016-12-08 01:34:09'),
(3, 14, 1, 'zzx', '2016-12-08 01:34:14', '2016-12-08 01:34:14');

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
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Others',
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
(5, 'Others', 1, 'Test Draft', '<p>Lorem ipsum dolor sit amet, salutandi qualisque consulatu sit et, id ius semper doctus definiebas. Sea te noster platonem scripserit, debitis honestatis ne est. Discere docendi corrumpit eos te. Ut est complectitur comprehensam. Ne quo sumo utamur, vix prompta fierent ancillae at.</p>\r\n<p>Vix graeci epicuri maiestatis cu, iudicabit consetetur sit eu. Usu diam dicam no. At malis ubique eirmod his, cibo dolore possim eu vis. Cibo veniam recteque no his. Usu adipiscing reprimique reformidans id, no vix rebum volutpat, eros eirmod vix cu. At eum dolor nostrud.</p>\r\n<p>Mel et oporteat definitiones. Ad quo dolorem expetendis scribentur. Vix ex mentitum gubergren, rebum nullam democritum mei in. Modo philosophia consectetuer cu quo, adhuc scripserit scriptorem cum ad, graeco aeterno intellegam in pri.</p>\r\n<p>Te soleat docendi contentiones usu, illum epicuri necessitatibus ne sed. Ut ceteros oportere hendrerit qui. Facilisis forensibus instructior mea te. Ei mutat noluisse nam, inani complectitur te vim, sanctus patrioque concludaturque vix ex. Cu qui alienum propriae, eu quas clita his. In vis alii liber, ea duo brute aperiam recusabo. Postea electram moderatius ei eos.</p>\r\n<p>Suas indoctum est ad. Nec et augue inimicus, qui purto reque postulant ut. Et nihil laoreet repudiandae sed, pri ea docendi postulant voluptatibus. Eum cu dicat mollis.</p>\r\n<p>Delenit quaestio salutatus ea eum, ne zril volumus nec. Nec ex vivendo reprehendunt. Pri no suas qualisque, mei eu sumo philosophia. Legimus urbanitas ut his, dolorem sententiae eu sea. Eu tale officiis vel, duo noluisse complectitur id. Te debet gubergren cum, utinam fabellas at est, etiam possit pro an.</p>\r\n<p>Vis ea alii illum cotidieque, ne aeterno consetetur sea. Nec ne propriae cotidieque, cu sumo facilis omittam eos, per eu discere perfecto electram. Usu clita impedit ad, his ex illum iudicabit. Ei quo illum porro scribentur, vim agam erat eloquentiam eu. Nonumy partiendo nec ut, vel an senserit urbanitas intellegebat.</p>\r\n<p>Et pri autem utroque. Vim te deserunt scriptorem, ei mea rebum malorum. Quas primis referrentur pri cu, ut vim simul decore legimus. Pri at perfecto lobortis salutandi, te sit utamur dignissim voluptatum, id nominavi sensibus philosophia vix. No vix detraxit constituto, ius harum patrioque et. Quaerendum eloquentiam in nec, nulla possim expetendis at eos.</p>\r\n<p>Omnesque recusabo ad nec. Cum eros indoctum ad. Aeque audire salutandi cu eam, mea veri illum adolescens ea. Impedit oporteat pri ad, vel ex eius assentior consetetur. Eu usu mediocrem contentiones. Ne aliquip dissentias est, rebum vivendo contentiones id nec, mea noluisse facilisis ei. Et vel propriae suavitate, an iriure scribentur has.</p>\r\n<p>Prima dictas explicari vim te. Ea mentitum qualisque definitiones mel, porro indoctum has te. Eam cu appetere honestatis quaerendum. Sea at esse essent admodum, alia agam abhorreant nam ne. Nam id errem debitis torquatos, graeco qualisque scripserit eos ex.</p>', 'test-draft', 0, '2016-12-06 06:56:05', '2016-12-06 06:56:05'),
(6, 'Mongo', 1, 'Test Mongo post', '<p>Lorem Ipsum &ndash; tas ir teksta salikums, kuru izmanto poligrāfijā un maketē&scaron;anas darbos. Lorem Ipsum ir kļuvis par vispārpieņemtu teksta aizvietotāju kop&scaron; 16. gadsimta sākuma. Tajā laikā kāds nezināms iespiedējs izveidoja teksta fragmentu, lai nodrukātu grāmatu ar burtu paraugiem. Tas ir ne tikai pārdzīvojis piecus gadsimtus, bet bez ievērojamām izmaiņām saglabājies arī mūsdienās, pārejot uz datorizētu teksta apstrādi. Tā popularizē&scaron;anai 60-tajos gados kalpoja Letraset burtu paraugu publicē&scaron;ana ar Lorem Ipsum teksta fragmentiem un, nesenā pagātnē, tādas maketē&scaron;anas programmas kā Aldus PageMaker, kuras &scaron;ablonu paraugos ir izmantots Lorem Ipsum teksts.</p>', 'test-mongo-post', 1, '2016-12-07 07:15:51', '2016-12-07 07:15:51'),
(7, 'PHP', 1, 'Others', '<p><img src="//images/uploads/ax.png" alt="" />&nbsp;&nbsp;</p>\n<p>&nbsp;</p>\n<p><img src="../images/uploads/ax2.png" alt="" /></p>\n<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<h3>Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h3>\n<p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</p>\n<h3>1914 translation by H. Rackham</h3>\n<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>\n<h3>Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h3>\n<p>"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."</p>\n<h3>1914 translation by H. Rackham</h3>\n<p>"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'others', 1, '2016-12-07 07:49:51', '2016-12-07 10:50:40'),
(8, 'PHP', 1, 'dsfsd', '<p><strong>saassaa</strong>s</p>', 'asas', 1, '2016-12-07 11:06:54', '2016-12-07 11:07:34'),
(9, 'PHP', 1, 'dsd', '<p>dsds</p>', 'dsd', 1, '2016-12-07 11:09:15', '2016-12-07 11:09:15'),
(10, 'PHP', 1, 'asassadsada', '<p>saas</p>', 'asassadsada', 1, '2016-12-07 11:14:01', '2016-12-07 11:14:01'),
(11, 'PHP', 1, 'asdas', '<p>as</p>', 'asdas', 1, '2016-12-07 11:14:35', '2016-12-07 11:14:35'),
(12, 'PHP', 1, 'dssd', '<p>sdds</p>', 'dssd', 1, '2016-12-07 11:16:50', '2016-12-07 11:16:50'),
(13, 'PHP', 1, 'assasadasdasdas', '<p>assa</p>', 'assasadasdasdas', 1, '2016-12-07 11:18:09', '2016-12-07 11:18:09'),
(14, 'PHP', 1, 'assasadasdasdassas', '<p>assa</p>', 'assasadasdasdassas', 1, '2016-12-07 11:18:54', '2016-12-07 11:18:54'),
(15, 'PHP', 1, 'sdds333', '<p>dsd</p>', 'sdds333', 1, '2016-12-07 11:21:00', '2016-12-07 11:21:00'),
(17, 'PHP', 1, 'asdssa', '<p>asas</p>', 'asdssa', 1, '2016-12-07 11:23:11', '2016-12-07 11:23:11'),
(18, 'PHP', 1, 'assas', '<p>saas</p>', 'assas', 1, '2016-12-07 11:23:51', '2016-12-07 11:23:51'),
(19, 'PHP', 1, 'assascxcx', '<p>saas</p>', 'assascxcx', 1, '2016-12-07 11:24:02', '2016-12-07 11:24:02'),
(20, 'PHP', 1, 'asassaassa', '<p>assa</p>', 'asassaassa', 1, '2016-12-07 11:24:34', '2016-12-07 11:24:34'),
(21, 'PHP', 1, 'sasa11121', '<p>asas</p>', 'sasa11121', 1, '2016-12-07 11:25:55', '2016-12-07 11:25:55'),
(24, 'PHP', 1, 'assa', '<p>sa</p>', 'assa', 1, '2016-12-07 11:31:18', '2016-12-07 11:31:18'),
(25, 'PHP', 1, 'sdas', '<p>sad<img src="images/uploads/images1.jpg" alt="" /></p>\n<p>', 'sdas', 1, '2016-12-07 11:31:54', '2016-12-07 11:31:54'),
(27, 'PHP', 5, 'Unit test post title', 'This is unit test blog body.', 'unit-test-post-title', 1, '2016-12-08 02:07:26', '2016-12-08 02:07:26'),
(28, 'PHP', 5, 'Unit test post title 51 ', 'This is unit test blog body .17', 'unit-test-post-title-51', 1, '2016-12-08 02:10:55', '2016-12-08 02:10:55'),
(29, 'PHP', 5, 'Unit test post title 14 ', 'This is unit test blog body .71', 'unit-test-post-title-14', 1, '2016-12-08 02:12:32', '2016-12-08 02:12:32'),
(30, 'PHP', 5, 'Unit test post title 99 ', 'This is unit test blog body .10', 'unit-test-post-title-99', 1, '2016-12-08 02:16:07', '2016-12-08 02:16:07'),
(31, 'PHP', 1, 'asdss', '<p>asdasdas</p>', 'asdss', 1, '2016-12-08 02:16:33', '2016-12-08 02:16:33'),
(32, 'PHP', 5, 'Unit test post title 43 ', 'This is unit test blog body .32', 'unit-test-post-title-43', 1, '2016-12-08 02:16:57', '2016-12-08 02:16:57'),
(33, 'PHP', 5, 'Unit test post title 74 ', 'This is unit test blog body .69', 'unit-test-post-title-74', 1, '2016-12-08 02:17:33', '2016-12-08 02:17:33'),
(35, 'PHP', 5, 'Unit test edit post title 63 ', 'This is unit test blog body .1481186104', 'unit-test-post-title-73', 1, '2016-12-08 02:19:57', '2016-12-08 02:35:04'),
(36, 'PHP', 5, 'Unit test post title 78 ', 'This is unit test blog body .48', 'unit-test-post-title-78', 1, '2016-12-08 02:24:55', '2016-12-08 02:24:55'),
(38, 'PHP', 5, 'Unit test post title 48 ', 'This is unit test blog body .50', 'unit-test-post-title-48', 1, '2016-12-08 02:26:01', '2016-12-08 02:26:01'),
(39, 'PHP', 5, 'Unit test post title 66 ', 'This is unit test blog body .62', 'unit-test-post-title-66', 1, '2016-12-08 02:27:14', '2016-12-08 02:27:14'),
(41, 'PHP', 5, 'Unit test post title 23 ', 'This is unit test blog body .3', 'unit-test-post-title-23', 1, '2016-12-08 02:32:25', '2016-12-08 02:32:25'),
(42, 'PHP', 5, 'Unit test post title 8 ', 'This is unit test blog body .78', 'unit-test-post-title-8', 1, '2016-12-08 02:33:01', '2016-12-08 02:33:01'),
(43, 'PHP', 5, 'Unit test post title 89 ', 'This is unit test blog body .33', 'unit-test-post-title-89', 1, '2016-12-08 02:33:37', '2016-12-08 02:33:37'),
(45, 'PHP', 5, 'Unit test post title 1481186103 ', 'This is unit test blog body .1481186103', 'unit-test-post-title-1481186103', 1, '2016-12-08 02:35:03', '2016-12-08 02:35:03');

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
(1, 'Shamim', 'shamim7777@gmail.com', '$2y$10$.rwwiBPAvDj/uKl6aPMclejq5PmKQGcUrdNNK.dAWscQgHBBh2fBe', 'author', 'PlMyruCMpLPOIHCbsJnLYjshoxa7uTQMRkRpl51pQ4u1s88x1j5swysCOdD7', '2016-12-06 03:46:56', '2016-12-08 01:43:31'),
(2, 'bob', 'hello1@in.com', '$2y$10$2R4enMR4XOyj0qDkrmI58OGkX2cLY7fcAou0zi8OqrL2OqbTjpMey', 'author', NULL, '2016-12-08 00:24:23', '2016-12-08 00:24:23'),
(3, 'Shamim', 'shamim77771@gmail.com', '$2y$10$RcwADKjXBwJlnN9APVNrLuBD.iN/8Fxtl5HAXFk3be5cnzGL6DSUW', 'author', 'qRaWTQTveePxs2E0yyohZdm8t53ifps7mz50sEfvEEyt1ALKgrZ4lGEyXyzm', '2016-12-08 01:44:20', '2016-12-08 01:54:12'),
(4, 'bob', 'hello1@test.com', '$2y$10$2kJqO7m5KJgb71MGM3hmOuEL2D/SfZKPhNA3ZFXP7b5UpwGBC6TFy', 'author', NULL, '2016-12-08 01:44:39', '2016-12-08 01:44:39'),
(5, 'Shamim Unit Test', 'shamim7777+1@gmail.com', '$2y$10$Fwm9iK7kHZ.EQNoF9Ygo4epij/6JqmK7XDyyfDBOiKLwW5rBzF7ee', 'author', NULL, '2016-12-08 01:58:38', '2016-12-08 01:58:38'),
(6, 'Shamim Unit Test', 'shamim7777+.22@gmail.com', '$2y$10$h59ctY/j.2PYIlyc/OoZc.hXi6BBearidZGX2Vp8XcL4od1L5zJqe', 'author', NULL, '2016-12-08 02:02:39', '2016-12-08 02:02:39'),
(7, 'Shamim Unit Test', 'shamim7777+.54@gmail.com', '$2y$10$mF0vZCNzUmPHxDVDDGhPguExj//GsjP1OxHgzk4qW0ZF3kOcKPnRC', 'author', NULL, '2016-12-08 02:04:57', '2016-12-08 02:04:57'),
(8, 'Shamim Unit Test', 'shamim7777+.43@gmail.com', '$2y$10$KV1IvPxMYiE.ZyPPpAfsCetC59T0DXbvgEiKkqzIzyu4zTd4Shrk2', 'author', NULL, '2016-12-08 02:05:08', '2016-12-08 02:05:08'),
(9, 'Shamim Unit Test', 'shamim7777+.28@gmail.com', '$2y$10$d8xtBj4AMnaHs8vDC3Lr4ehLFSTXIMZbph8FQ8P/rE5wo6FRqHYgW', 'author', NULL, '2016-12-08 02:07:26', '2016-12-08 02:07:26'),
(10, 'Shamim Unit Test', 'shamim7777+.18@gmail.com', '$2y$10$nccOwn0D6sCXx1qe.t9vkepQuE.afYe5plWUvrVD1Tm8Tj.NSDee6', 'author', NULL, '2016-12-08 02:10:00', '2016-12-08 02:10:00'),
(11, 'Shamim Unit Test', 'shamim7777+69@gmail.com', '$2y$10$5E7yNPcrK.4cXWBMO.QYtOJ/YByUlQgY0NXgdFywfKppmsj//e/tS', 'author', NULL, '2016-12-08 02:10:54', '2016-12-08 02:10:54'),
(12, 'Shamim Unit Test', 'shamim7777+21@gmail.com', '$2y$10$xAM74E3SXV8WgM/9yFfkpO9kgXMAUjCjFnQJs.t/1sbiZn4Bu.mQ6', 'author', NULL, '2016-12-08 02:12:32', '2016-12-08 02:12:32'),
(13, 'Shamim Unit Test', 'shamim7777+43@gmail.com', '$2y$10$Q0XFXFDuzj91VeZ0Q4oReuHopE9T2xUACtV4g2ymF5veNZmrPuppi', 'author', NULL, '2016-12-08 02:16:06', '2016-12-08 02:16:06'),
(14, 'Shamim Unit Test', 'shamim7777+83@gmail.com', '$2y$10$3ZdZ6fqfsrbyA0HdsIpoYu8VF5nCTtGkOGB2EsGwCnC0NzoR6Gvvy', 'author', NULL, '2016-12-08 02:16:56', '2016-12-08 02:16:56'),
(15, 'Shamim Unit Test', 'shamim7777+53@gmail.com', '$2y$10$GD9f43HAdqs2nl1jJhfgNON22elA.1sD1FggpXanc6Ist.4weuvOO', 'author', NULL, '2016-12-08 02:17:33', '2016-12-08 02:17:33'),
(16, 'Shamim Unit Test', 'shamim7777+48@gmail.com', '$2y$10$xgmudJWcdaOpl.gHVz2kQOuRrJSLLTtGRNePWCYVlDIqRZDBX2ERu', 'author', NULL, '2016-12-08 02:19:56', '2016-12-08 02:19:56'),
(17, 'Shamim Unit Test', 'shamim7777+3@gmail.com', '$2y$10$GsC6bMlJJTeu0YvRzTkoH.MAnKcs.JBqeaC3GEqd.ToyOcFaLlfPy', 'author', NULL, '2016-12-08 02:24:55', '2016-12-08 02:24:55'),
(18, 'Shamim Unit Test', 'shamim7777+96@gmail.com', '$2y$10$XRt0j3IFB.efQeKVHvSiOeZv6EtAcw9.QYnYcDQy7UZn6PWqeWlUG', 'author', NULL, '2016-12-08 02:25:18', '2016-12-08 02:25:18'),
(19, 'Shamim Unit Test', 'shamim7777+89@gmail.com', '$2y$10$H/L3ycUFGc025CP5AloFtu/nV7kPF0x9G49gu3xZWorii8F1SGdse', 'author', NULL, '2016-12-08 02:26:00', '2016-12-08 02:26:00'),
(20, 'Shamim Unit Test', 'shamim7777+86@gmail.com', '$2y$10$9g8KKW.ND0MxCW3RoBSYCe.icQhwb3cdZbF4mr.OjAaAjC7ZVpRXC', 'author', NULL, '2016-12-08 02:27:14', '2016-12-08 02:27:14'),
(21, 'Shamim Unit Test', 'shamim7777+94@gmail.com', '$2y$10$Ma1rxPq2bU1tDXxHa4blGefeYWlPmhC3VaV2lm8.b94iiPK8Gdwa6', 'author', NULL, '2016-12-08 02:27:48', '2016-12-08 02:27:48'),
(22, 'Shamim Unit Test', 'shamim7777+91@gmail.com', '$2y$10$jmzPxbZvOAzeEahNj2SZoOczx4BC69DQkU8Glh4oAbgHqkV.I4AgC', 'author', NULL, '2016-12-08 02:29:34', '2016-12-08 02:29:34'),
(23, 'Shamim Unit Test', 'shamim7777+84@gmail.com', '$2y$10$5Q583VMkmRuwenv5NCM3O.vrr3va3d6niIhFZiTeRMcpWyU5Lvsqi', 'author', NULL, '2016-12-08 02:32:24', '2016-12-08 02:32:24'),
(24, 'Shamim Unit Test', 'shamim7777+63@gmail.com', '$2y$10$Zk2fAxl5y86fWCEHNUaFqOxhXn1UKmsIYuD8idNqA1dDlX3U9cX6.', 'author', NULL, '2016-12-08 02:33:00', '2016-12-08 02:33:00'),
(25, 'Shamim Unit Test', 'shamim7777+1481186079@gmail.com', '$2y$10$wKkLmmJ5Bdyiot8XRQZ7semqavL114HUbddmPZ.GbAlKe76DHsy7m', 'author', NULL, '2016-12-08 02:34:39', '2016-12-08 02:34:39'),
(26, 'Shamim Unit Test', 'shamim7777+1481186103@gmail.com', '$2y$10$7DHFzwhmMYFDZdqgVMkSJOleD0hqUBiyvPD5ihEKwaLFEnW1SZ0am', 'author', NULL, '2016-12-08 02:35:03', '2016-12-08 02:35:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
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
