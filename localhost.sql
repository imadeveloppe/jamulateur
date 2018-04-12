-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 12 Avril 2018 à 17:18
-- Version du serveur :  10.1.26-MariaDB-0+deb9u1
-- Version de PHP :  7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jamulateur`
--
CREATE DATABASE IF NOT EXISTS `jamulateur` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `jamulateur`;

-- --------------------------------------------------------

--
-- Structure de la table `JamMobile`
--

CREATE TABLE `JamMobile` (
  `idJamMobile` int(11) NOT NULL,
  `nbrJours` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `JamMobile`
--

INSERT INTO `JamMobile` (`idJamMobile`, `nbrJours`, `price`, `TotalPrice`) VALUES
(1, 1, 0, 25000),
(2, 2, 0, 31000),
(3, 3, 0, 38500),
(4, 4, 0, 46000),
(5, 5, 0, 53500),
(6, 6, 0, 61000),
(7, 7, 0, 68500),
(8, 8, 0, 76000),
(9, 9, 0, 83500),
(10, 10, 0, 91000),
(11, 11, 0, 98500),
(12, 12, 0, 106000),
(13, 13, 0, 113500),
(14, 14, 0, 121000),
(15, 15, 0, 128500),
(16, 16, 0, 136000),
(17, 17, 0, 143500),
(18, 18, 0, 151000),
(19, 19, 0, 158500),
(20, 20, 0, 166000),
(21, 21, 0, 173500),
(22, 22, 0, 181000),
(23, 23, 0, 188500),
(24, 24, 0, 196000),
(25, 25, 0, 203500),
(26, 26, 0, 211000),
(27, 27, 0, 218500),
(28, 28, 0, 226000),
(29, 29, 0, 233500),
(30, 30, 0, 241000),
(31, 31, 0, 248500),
(32, 32, 0, 256000),
(33, 33, 0, 263500),
(34, 34, 0, 271000),
(35, 35, 0, 278500),
(36, 36, 0, 286000),
(37, 37, 0, 293500),
(38, 38, 0, 301000),
(39, 39, 0, 308500),
(40, 40, 0, 316000),
(41, 41, 0, 323500),
(42, 42, 0, 331000),
(43, 43, 0, 338500),
(44, 44, 0, 346000),
(45, 45, 0, 353500),
(46, 46, 0, 361000),
(47, 47, 0, 368500),
(48, 48, 0, 376000),
(49, 49, 0, 383500),
(50, 50, 0, 391000),
(51, 51, 0, 398500),
(52, 52, 0, 406000),
(53, 53, 0, 413500),
(54, 54, 0, 421000),
(55, 55, 0, 428500),
(56, 56, 0, 436000),
(57, 57, 0, 443500),
(58, 58, 0, 451000),
(59, 59, 0, 458500),
(60, 60, 0, 466000),
(61, 61, 0, 473500),
(62, 62, 0, 481000),
(63, 63, 0, 488500),
(64, 64, 0, 496000),
(65, 65, 0, 503500),
(66, 66, 0, 511000),
(67, 67, 0, 518500),
(68, 68, 0, 526000),
(69, 69, 0, 533500),
(70, 70, 0, 541000),
(71, 71, 0, 548500),
(72, 72, 0, 556000),
(73, 73, 0, 563500),
(74, 74, 0, 571000),
(75, 75, 0, 578500),
(76, 76, 0, 586000),
(77, 77, 0, 593500),
(78, 78, 0, 601000),
(79, 79, 0, 608500),
(80, 80, 0, 616000),
(81, 81, 0, 623500),
(82, 82, 0, 631000),
(83, 83, 0, 638500),
(84, 84, 0, 646000),
(85, 85, 0, 653500),
(86, 86, 0, 661000),
(87, 87, 0, 668500),
(88, 88, 0, 676000),
(89, 89, 0, 683500),
(90, 90, 0, 691000);

-- --------------------------------------------------------

--
-- Structure de la table `JamSon`
--

CREATE TABLE `JamSon` (
  `idJamSon` int(11) NOT NULL,
  `nbrJours` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `JamSon`
--

INSERT INTO `JamSon` (`idJamSon`, `nbrJours`, `price`) VALUES
(1, 1, 4100),
(2, 2, 5700),
(3, 3, 7300),
(4, 4, 8900),
(5, 5, 10500),
(6, 6, 12100),
(7, 7, 13700),
(8, 8, 15300),
(9, 9, 16900),
(10, 10, 18500),
(11, 11, 20100),
(12, 12, 21700),
(13, 13, 23300),
(14, 14, 24900),
(15, 15, 26500),
(16, 16, 28100),
(17, 17, 29700),
(18, 18, 31300),
(19, 19, 32900),
(20, 20, 34500),
(21, 21, 36100),
(22, 22, 37700),
(23, 23, 39300),
(24, 24, 40900),
(25, 25, 42500),
(26, 26, 44100),
(27, 27, 45700),
(28, 28, 47300),
(29, 29, 48900),
(30, 30, 50500),
(31, 31, 52100),
(32, 32, 53700),
(33, 33, 55300),
(34, 34, 56900),
(35, 35, 58500),
(36, 36, 60100),
(37, 37, 61700),
(38, 38, 63300),
(39, 39, 64900),
(40, 40, 66500),
(41, 41, 68100),
(42, 42, 69700),
(43, 43, 71300),
(44, 44, 72900),
(45, 45, 74500),
(46, 46, 76100),
(47, 47, 77700),
(48, 48, 79300),
(49, 49, 80900),
(50, 50, 82500),
(51, 51, 84100),
(52, 52, 85700),
(53, 53, 87300),
(54, 54, 88900),
(55, 55, 90500),
(56, 56, 92100),
(57, 57, 93700),
(58, 58, 95300),
(59, 59, 96900),
(60, 60, 98500),
(61, 61, 100100),
(62, 62, 101700),
(63, 63, 103300),
(64, 64, 104900),
(65, 65, 106500),
(66, 66, 108100),
(67, 67, 109700),
(68, 68, 111300),
(69, 69, 112900),
(70, 70, 114500),
(71, 71, 116100),
(72, 72, 117700),
(73, 73, 119300),
(74, 74, 120900),
(75, 75, 122500),
(76, 76, 124100),
(77, 77, 125700),
(78, 78, 127300),
(79, 79, 128900),
(80, 80, 130500),
(81, 81, 132100),
(82, 82, 133700),
(83, 83, 135300),
(84, 84, 136900),
(85, 85, 138500),
(86, 86, 140100),
(87, 87, 141700),
(88, 88, 143300),
(89, 89, 144900),
(90, 90, 146500);

-- --------------------------------------------------------

--
-- Structure de la table `autres`
--

CREATE TABLE `autres` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `autres`
--

INSERT INTO `autres` (`id`, `slug`, `price`) VALUES
(1, 'priceHebergementImage', 300),
(2, 'priceHebergementSon', 300),
(3, 'priceDeplacementImage', 8),
(4, 'priceDeplacementSon', 8),
(5, 'priceJamionImage', 100),
(6, 'priceTechnicienImage', 100),
(7, 'priceVehiculeSon', 100),
(8, 'priceTechnicienSon', 110),
(9, 'taxeSacem', 6),
(10, 'priceGardiennage', 50),
(11, 'nbrTechnicienImage', 5),
(12, 'nbrTechnicienSon', 7),
(13, 'nbrJamions', 10),
(14, 'nbrUnitesSon', 6);

-- --------------------------------------------------------

--
-- Structure de la table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `contents`
--

INSERT INTO `contents` (`id`, `slug`, `content`) VALUES
(1, 'conditions_generales', '<h1 style=\"box-sizing: border-box; margin: 0px 0px 10px; text-align: center;\"><span style=\"font-size: 12pt;\"><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">CONDITIONS GENERALES DE VENTES</span></span></h1>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 8pt;\">Toutes les prestations ex&eacute;cut&eacute;es par ATHEM &amp; SKERTZ&Ograve;, quel qu&rsquo;en soit la dur&eacute;e ou l&rsquo;objet, sauf conventions particuli&egrave;res, emportent acceptation par le CLIENT des conditions g&eacute;n&eacute;rales ci-apr&egrave;s et, en l&rsquo;absence de toute clause contraire, les pr&eacute;sentes conditions g&eacute;n&eacute;rales pr&eacute;valent sur les conditions g&eacute;n&eacute;rales du CLIENT. Cependant, les conditions particuli&egrave;res pouvant gurer sur les devis &eacute;tablis par ATHEM &amp; SKERTZ&Ograve; pr&eacute;vaudront sur les pr&eacute;sentes conditions g&eacute;n&eacute;rales.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 8pt;\">En cons&eacute;quence, le fait de passer commande &agrave; ATHEM &amp; SKERTZ&Ograve; implique l&rsquo;adh&eacute;sion enti&egrave;re et sans r&eacute;serve du CLIENT aux pr&eacute;sentes conditions g&eacute;n&eacute;rales, &agrave; l&rsquo;exclusion de tous autres documents &eacute;mis par le CLIENT.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE I &mdash; COMMANDES</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 8pt;\">Toute commande du CLIENT ne deviendra d&eacute;finitive qu&rsquo;&agrave; compter du retour par ce dernier du devis &eacute;tabli pr&eacute;alablement par ATHEM &amp; SKERTZ&Ograve;, dat&eacute;, rev&ecirc;tu du cachet commercial et sign&eacute; par le CLIENT ou toute personne d&ucirc;ment habilit&eacute;e par lui. &agrave; d&eacute;faut de devis retourn&eacute; sign&eacute;, ATHEM &amp; SKERTZ&Ograve; acceptera les bons de commande qui pourraient, n&eacute;anmoins, lui &ecirc;tre adress&eacute;s par le CLIENT &agrave; la condition qu&rsquo;il y soit fait express&eacute;ment r&eacute;f&eacute;rence au devis, ainsi qu&rsquo;aux conditions particuli&egrave;res et g&eacute;n&eacute;rales qui y figurent sans qu&rsquo;il soit possible de modi er unilat&eacute;ralement l&rsquo;un quelconque de leurs termes. Le bon de commande devra obligatoirement mentionner le nom, le num&eacute;ro et la date du devis, ainsi que le prix pr&eacute;vu &agrave; ce dernier, et reprendre les conditions de r&egrave;glement du devis. Les documents relatifs &agrave; une commande devront rappeler les r&eacute;f&eacute;rences gurant sur le devis. &agrave; d&eacute;faut, il ne pourra leur &ecirc;tre donn&eacute; suite et ATHEM &amp; SKERTZ&Ograve; d&eacute;cline toute responsabilit&eacute; dans les cons&eacute;quences qui en r&eacute;sulteraient.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE II &mdash; LIEU D&rsquo;EX&Eacute;CUTION ET/OU DE LIVRAISON</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 8pt;\">L&rsquo;ensemble des fournitures et/ou prestations seront livr&eacute;es et/ou ex&eacute;cut&eacute;es par ATHEM &amp; SKERTZ&Ograve; au lieu stipul&eacute; sur le devis. Pour le cas o&ugrave; des fournitures et/ou prestations devraient &ecirc;tre livr&eacute;es ou ex&eacute;cut&eacute;es en dehors des locaux d&rsquo;ATHEM &amp; SKERTZ&Ograve;, le CLIENT s&rsquo;emploiera &agrave; obtenir toutes autorisations d&rsquo;acc&egrave;s, publics ou priv&eacute;s, et/ou d&rsquo;installations. Il s&rsquo;assurera par ailleurs que ses propres assurances couvrent l&rsquo;ensemble des risques li&eacute;s aux interventions d&rsquo;ATHEM &amp; SKERTZ&Ograve; tant pendant l&rsquo;ex&eacute;cution des prestations que pendant leur exploitation.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE III &mdash; AUTORISATIONS ADMINISTRATIVES</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 8pt;\">Les prestations command&eacute;es par le CLIENT n&eacute;cessitant une autorisation administrative ne pourront &ecirc;tre ex&eacute;cut&eacute;es qu&rsquo;apr&egrave;s obtention de cette autorisation par le CLIENT.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: start;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE IV &mdash; CLAUSE DE R&Eacute;SERVE DE PROPRI&Eacute;T&Eacute;</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Le CLIENT ne deviendra propri&eacute;taire des marchandises fournies par ATHEM &amp; SKERTZ&Ograve;, ou des ouvrages r&eacute;alis&eacute;s par ATHEM &amp; SKERTZ&Ograve;, qu&rsquo;apr&egrave;s paiement int&eacute;gral du prix en principal et accessoires. La simple remise d&rsquo;un titre cr&eacute;ant une obligation &agrave; payer, traite ou autre, ne constitue pas un paiement au sens de la pr&eacute;sente clause, la cr&eacute;ance originaire du vendeur sur l&rsquo;acheteur subsistant avec toutes les garanties qui y sont attach&eacute;es, y compris la r&eacute;serve de propri&eacute;t&eacute; jusqu&rsquo;&agrave; ce que ledit effet de commerce ait &eacute;t&eacute; effectivement pay&eacute;. Les dispositions ci-dessus ne font pas obstacle, d&egrave;s la livraison des marchandises et/ou l&rsquo;installation des ouvrages r&eacute;alis&eacute;s et/ou la r&eacute;alisation des prestations ex&eacute;cut&eacute;es par ATHEM &amp; SKERTZ&Ograve;, au transfert au CLIENT des risques de perte ou de d&eacute;t&eacute;rioration de l&rsquo;ensemble des biens soumis &agrave; la pr&eacute;sente r&eacute;serve de propri&eacute;t&eacute; ainsi que des dommages qu&rsquo;ils pourraient occasionner. Le CLIENT s&rsquo;engage &agrave; souscrire une assurance garantissant les risques n&eacute;s &agrave; compter de la livraison des marchandises et/ou de l&rsquo;ex&eacute;cution de l&rsquo;ouvrage. En cas de saisie ou de toute autre intervention d&rsquo;un tiers sur les biens objet du pr&eacute;sent contrat conclu avec ATHEM &amp; SKERTZ&Ograve;, le CLIENT devra imp&eacute;rativement en informer ATHEM &amp; SKERTZ&Ograve; sans d&eacute;lai afin de lui permettre de s&rsquo;y opposer et de pr&eacute;server ses droits. Le CLIENT s&rsquo;interdit en outre de donner en gage ou de c&eacute;der &agrave; titre de garantie la propri&eacute;t&eacute; des marchandises livr&eacute;es par ATHEM &amp; SKERTZ&Ograve; et/ou des ouvrages r&eacute;alis&eacute;s par elle. &agrave; d&eacute;faut de paiement, par le CLIENT, de toute somme restant due &agrave; ATHEM &amp; SKERTZ&Ograve;, en d&eacute;pit d&rsquo;une mise en demeure par lettre recommand&eacute;e demeur&eacute;e sans effet pendant un d&eacute;lai de quinze jours, ATHEM &amp; SKERTZ&Ograve; pourra proc&eacute;der &agrave; la d&eacute;pose, aux frais du CLIENT, de l&rsquo;ensemble des dispositifs (installations, structures, toiles, ...) install&eacute;s par elle pour le compte du CLIENT.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE V &mdash; SOUS-TRAITANCE</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">ATHEM &amp; SKERTZ&Ograve; pourra sous-traiter tout ou partie des prestations command&eacute;es par le CLIENT, &agrave; charge de respecter les dispositions de la loi n&deg; 75-1334 du 31 d&eacute;cembre 1975 et notamment son article 3. ATHEM &amp; SKERTZ&Ograve; demeurera alors seule responsable de l&rsquo;ex&eacute;cution de ses prestations et/ou travaux et demeurera &eacute;galement l&rsquo;unique interlocuteur du CLIENT. ATHEM &amp; SKERTZ&Ograve; sera tenue de faire respecter, par ses sous traitants, l&rsquo;ensemble des stipulations pr&eacute;vues, tant aux conditions g&eacute;n&eacute;rales qu&rsquo;aux conditions particuli&egrave;res.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE VI &mdash; OBLIGATIONS D&rsquo;ATHEM &amp; SKERTZ&Ograve;</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">ATHEM &amp; SKERTZ&Ograve; s&rsquo;engage &agrave; ex&eacute;cuter les prestations qui lui auront &eacute;t&eacute; con &eacute;es par le CLIENT dans les r&egrave;gles de l&rsquo;art et conform&eacute;ment &agrave; la r&eacute;glementation en vigueur. ATHEM &amp; SKERTZ&Ograve; s&rsquo;engage &eacute;galement &agrave; ce que les marchandises livr&eacute;es ainsi que l&rsquo;ensemble des prestations ex&eacute;cut&eacute;es soient conformes aux termes de la commande.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE VII &mdash; OBLIGATIONS DU CLIENT</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Le CLIENT s&rsquo;engage &agrave; fournir dans les meilleurs d&eacute;lais tout document n&eacute;cessaire &agrave; l&rsquo;accomplissement par ATHEM &amp; SKERTZ&Ograve; de ses prestations ; v&eacute;rifier ses droits sur chacun des emplacements retenus et fournir tout justificatif sur demande expresse d&rsquo;ATHEM &amp; SKERTZ&Ograve;, faire son affaire si celle-ci est requise, de l&rsquo;intervention d&rsquo;un bureau de contr&ocirc;le li&eacute;e &agrave; l&rsquo;installation de la structure et/ou toile et/ou volume et/ou installation de projection, prendre &agrave; sa charge tous les frais compl&eacute;mentaires r&eacute;sultant d&rsquo;&eacute;ventuelles modi cations impos&eacute;es par un bureau de contr&ocirc;le, mandater un coordinateur s&eacute;curit&eacute; dans les cas pr&eacute;vus par la loi.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Tout document relatif &agrave; une commande devra en rappeler les r&eacute;f&eacute;rences gurant sur le devis lui-m&ecirc;me. &agrave; d&eacute;faut, il ne pourra lui &ecirc;tre donn&eacute; aucune suite.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Sauf les cas o&ugrave; ATHEM &amp; SKERTZ&Ograve; en serait elle-m&ecirc;me, directement ou indirectement cr&eacute;ateur, le CLIENT demeurera seul responsable, aussi bien vis-&agrave;-vis de ses propres clients que des tiers, des images et messages gurant sur les toiles, volumes install&eacute;s ou projections r&eacute;alis&eacute;es sur les &eacute;quipements mis &agrave; sa disposition par ATHEM &amp; SKERTZ&Ograve;.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">De plus, en application des dispositions de l&rsquo;article L 581-5 du code de l&rsquo;environnement, le CLIENT autorise ATHEM &amp; SKERTZ&Ograve; &agrave; faire figurer son nom et son num&eacute;ro de t&eacute;l&eacute;phone sur tous les ouvrages r&eacute;alis&eacute;s au moyen d&rsquo;un panneau, ou de tout autre dispositif, d&rsquo;une dimension d&rsquo;environ 0,40 m&egrave;tre de haut sur 1 m&egrave;tre de large.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE VIII &ndash; R&Eacute;CEPTION</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Apr&egrave;s installation effectu&eacute;e pour le compte du CLIENT une r&eacute;ception sera organis&eacute;e pour permettre au CLIENT de constater que l&rsquo;ouvrage a &eacute;t&eacute; ex&eacute;cut&eacute; conform&eacute;ment aux termes du devis. Cette r&eacute;ception sera consign&eacute;e par un proc&egrave;s-verbal sign&eacute; par ATHEM &amp; SKERTZ&Ograve; et par le CLIENT qui comportera une &eacute;ventuelle liste de r&eacute;serves.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Le CLIENT sera convoqu&eacute; par lettre simple ou par mail mentionnant la date et l&rsquo;heure de cette r&eacute;ception. &agrave; d&eacute;faut pour le CLIENT de se rendre &agrave; cette r&eacute;ception, ATHEM &amp; SKERTZ&Ograve; &eacute;tablira un proc&egrave;s-verbal qui sera adress&eacute; au CLIENT, sous 48 heures, par lettre recommand&eacute;e avec avis de r&eacute;ception. Le CLIENT disposera d&rsquo;un d&eacute;lai de 2 jours ouvr&eacute;s pour, le cas &eacute;ch&eacute;ant, faire part de toutes r&eacute;serves. &agrave; d&eacute;faut d&rsquo;observation dans ce d&eacute;lai, l&rsquo;ouvrage sera consid&eacute;r&eacute; comme valablement r&eacute;ceptionn&eacute; par le CLIENT sans r&eacute;serve.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Sauf clause contraire figurant dans les conditions particuli&egrave;res les risques de pertes ou de d&eacute;t&eacute;rioration de l&rsquo;ensemble des &eacute;l&eacute;ments composant chacun des ouvrages seront transf&eacute;r&eacute;s au CLIENT au fur et &agrave; mesure de leurs livraisons effectives, le CLIENT devenant alors seul responsable de leur gardiennage et de leur &eacute;tat. Par la suite, une fois les ouvrages install&eacute;s, le CLIENT sera seul responsable de leur gardiennage et de leur maintenance jusqu&rsquo;&agrave; leur d&eacute;pose effective.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE IX- D&Eacute;VELOPPEMENT DURABLE</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Le cas &eacute;ch&eacute;ant, ATHEM &amp; SKERTZ&Ograve; pourra &ecirc;tre amen&eacute;e, afin de se mettre en conformit&eacute; avec la r&eacute;glementation applicable concernant en particulier l&rsquo;&eacute;limination des d&eacute;chets, &agrave; facturer au CLIENT une contribution ou toute autre charge ou taxe qui serait impos&eacute;e par la r&eacute;glementation.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE X &mdash; P&Eacute;NALIT&Eacute;S DE RETARD</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Toutes sommes non pay&eacute;es, &agrave; l&rsquo;&eacute;ch&eacute;ance gurant sur la facture, entra&icirc;nent l&rsquo;application de p&eacute;nalit&eacute;s de retard d&rsquo;un montant &eacute;gal &agrave; douze pour cent (12%) major&eacute; du taux d&rsquo;int&eacute;r&ecirc;t appliqu&eacute; par la Banque centrale europ&eacute;enne &agrave; son op&eacute;ration de re nancement la plus r&eacute;cente.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Ces p&eacute;nalit&eacute;s seront exigibles sans qu&rsquo;une lettre de rappel soit n&eacute;cessaire et se calculeront d&egrave;s la date d&rsquo;&eacute;ch&eacute;ance gurant sur la facture jusqu&rsquo;au jour du paiement effectif conform&eacute;ment aux dispositions de l&rsquo;article L441-6 du code de commerce.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">De plus, ATHEM &amp; SKERTZ&Ograve; pourra suspendre l&rsquo;ensemble des prestations, ou commandes en cours, sans pr&eacute;judice de toute autre voie d&rsquo;action, notamment sur le plan judiciaire. Le CLIENT devra rembourser &agrave; ATHEM &amp; SKERTZ&Ograve; tous les frais occasionn&eacute;s par le recouvrement contentieux des sommes dues, y compris les honoraires d&rsquo;of ciers minist&eacute;riels et d&rsquo;avocats.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XI &mdash; CONFIDENTIALIT&Eacute;</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Les parties s&rsquo;engagent &agrave; garder confidentielle toute information technique, industrielle, nanci&egrave;re ou commerciale qu&rsquo;elles auront &eacute;t&eacute; amen&eacute;es &agrave; conna&icirc;tre &agrave; l&rsquo;occasion de leurs relations. Elles s&rsquo;engagent &agrave; faire pr&eacute;server cette confidentialit&eacute; par leurs employ&eacute;s ainsi que par tout tiers inform&eacute; par chacune d&rsquo;elle de quelque mani&egrave;re que ce soit de ce contrat. Cet engagement continuera &agrave; &ecirc;tre en vigueur m&ecirc;me apr&egrave;s l&rsquo;expiration du contrat.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XII &mdash; PROPRI&Eacute;T&Eacute; INTELLECTUELLE</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">En vertu des dispositions des articles L 112-1 et suivants du code de la propri&eacute;t&eacute; intellectuelle, tous les plans, croquis, sc&eacute;narios ou synopsis, maquettes, photos, documents, pr&eacute;sentations et ouvrages, m&ecirc;me inachev&eacute;s, demeureront la propri&eacute;t&eacute; exclusive d&rsquo;ATHEM &amp; SKERTZ&Ograve;. Le CLIENT s&rsquo;engage &agrave; ne pas communiquer &agrave; des tiers les plans, &eacute;l&eacute;ments de calcul, pi&egrave;ces d&eacute;crites et de mani&egrave;re g&eacute;n&eacute;rale tous documents et informations qui pourraient lui &ecirc;tre remis. Le CLIENT s&rsquo;engage &eacute;galement &agrave; ne pas les utiliser pour d&rsquo;autres op&eacute;rations. Plus g&eacute;n&eacute;ralement, le CLIENT s&rsquo;engage &agrave; respecter la propri&eacute;t&eacute; industrielle des proc&eacute;d&eacute;s mis en &oelig;uvres par ATHEM &amp; SKERTZ&Ograve;.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Sauf clause contraire figurant aux devis ou aux conditions particuli&egrave;res, les droits d&rsquo;auteur r&eacute;sultant des cr&eacute;ations graphiques con&ccedil;ues et r&eacute;alis&eacute;es en ex&eacute;cution d&rsquo;un devis pr&eacute;sent&eacute; par ATHEM &amp; SKERTZ&Ograve; sont c&eacute;d&eacute;es au CLIENT selon les modalit&eacute;s suivantes :</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">- cession des droits de reproduction, de repr&eacute;sentation et de communication au public des &eacute;l&eacute;ments constituant tout ou partie de l&rsquo;&oelig;uvre r&eacute;alis&eacute;e par ATHEM &amp; SKERTZ&Ograve; dans le cadre du pr&eacute;sent contrat &agrave; l&rsquo;exclusion :</span></p>\r\n<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">des droits de reproduction, repr&eacute;sentation ou communication au public dans le cadre de toute op&eacute;ration d&rsquo;achat d&rsquo;espace publicitaire (presse, t&eacute;l&eacute;vision, Internet, affichage) ;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">de tout droit d&rsquo;adaptation de l&rsquo;&oelig;uvre graphique, enti&egrave;re ou partielle, notamment par modi cation, restriction ou ajout de nouveaux &eacute;l&eacute;ments ;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">de toute reproduction de l&rsquo;&oelig;uvre pour toute autre application distincte de celle pour laquelle elle a &eacute;t&eacute; initialement cr&eacute;&eacute;e.</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">- cession des droits d&rsquo;auteur y attach&eacute;s pour une dur&eacute;e de un an et un territoire illimit&eacute;.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">ATHEM &amp; SKERTZ&Ograve; pourra, dans le cadre de la promotion de son activit&eacute;, faire librement r&eacute;f&eacute;rence &agrave; la conception et &agrave; la r&eacute;alisation tant des dispositifs de communication et /ou de spectacle, objet du pr&eacute;sent contrat, que de toute cr&eacute;ation r&eacute;alis&eacute;e &agrave; cette occasion. ATHEM &amp; SKERTZ&Ograve; est ainsi, le cas &eacute;ch&eacute;ant, d&rsquo;ores et d&eacute;j&agrave; autoris&eacute;e par le CLIENT &agrave; reproduire sa marque et son logo pour les besoins de cette communication interne ou externe.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XIII &mdash; CESSION</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Aucune partie ne pourra c&eacute;der ou transf&eacute;rer, partiellement ou en totalit&eacute;, ses droits et obligations dans le cadre du pr&eacute;sent contrat, sans l&rsquo;autorisation pr&eacute;alable et &eacute;crite de l&rsquo;autre partie.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XIV &mdash; FORCE MAJEURE</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Les parties ne seront pas tenues pour responsables de tout retard ou inex&eacute;cution lorsque la cause du retard ou de l&rsquo;inex&eacute;cution ne d&eacute;pend pas de la partie d&eacute;faillante mais r&eacute;sulte d&rsquo;un cas de force majeure, &agrave; condition que l&rsquo;autre partie soit inform&eacute;e promptement du retard ou du manquement, de m&ecirc;me que de la cause et du retard envisag&eacute;. En cas d&rsquo;inex&eacute;cution due &agrave; un cas de temp&ecirc;te, ATHEM &amp; SKERTZ&Ograve; fournira le bulletin m&eacute;t&eacute;o du jour.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XV&mdash; R&Eacute;SILIATION</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Au cas o&ugrave; l&rsquo;une des parties n&rsquo;ex&eacute;cuterait pas l&rsquo;une des obligations d&eacute;coulant, tant des pr&eacute;sentes conditions g&eacute;n&eacute;rales que des conditions particuli&egrave;res, elle pourrait &ecirc;tre mise en demeure par l&rsquo;autre partie, par lettre recommand&eacute;e avec avis de r&eacute;ception, d&rsquo;ex&eacute;cuter ses engagements. &agrave; d&eacute;faut de d&eacute;but d&rsquo;ex&eacute;cution dans les quinze jours suivants cette mise en demeure, le cr&eacute;ancier de l&rsquo;obligation inex&eacute;cut&eacute;e pourra r&eacute;silier de plein droit le contrat, sans pr&eacute;judice de tous dommages et int&eacute;r&ecirc;ts qui pourraient &ecirc;tre allou&eacute;s par les tribunaux.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XVI&mdash;DROIT APPLICABLE &ndash; R&Egrave;GLEMENT DES LITIGES</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Le contrat est soumis au droit fran&ccedil;ais &agrave; l&rsquo;exclusion de tout autre l&eacute;gislation&nbsp;</span><span style=\"font-size: 8pt;\">Les parties se r&eacute;uniront a n de r&eacute;soudre &agrave; l&rsquo;amiable toute dif cult&eacute; ou contestation, de quelque nature qu&rsquo;elle soit, pouvant r&eacute;sulter de l&rsquo;interpr&eacute;tation, de l&rsquo;ex&eacute;cution ou de la r&eacute;siliation du pr&eacute;sent contrat.&nbsp;</span><span style=\"font-size: 8pt;\">A d&eacute;faut d&rsquo;accord amiable, les parties feront attribution expresse de juridiction au tribunal de commerce de Paris, et ce m&ecirc;me en cas de pluralit&eacute; de d&eacute;fendeurs et d&rsquo;appel en garantie.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XVII &mdash; &Eacute;LECTION DE DOMICILE</strong></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-size: 8pt;\">Pour l&rsquo;application des dispositions des conditions g&eacute;n&eacute;rales et particuli&egrave;res, les parties font express&eacute;ment &eacute;lection de domicile &agrave; leur si&egrave;ge respectif. Toute modification dans la situation personnelle de chacune des parties devra aussit&ocirc;t faire l&rsquo;objet d&rsquo;une noti cation &agrave; l&rsquo;autre partie par lettre recommand&eacute;e avec avis de r&eacute;ception.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: center;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 12pt;\">GENERAL TERMS AND CONDITIONS OF SALE</span></strong></span><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">All services performed by ATHEM &amp; SKERTZ&Ograve;, whatever the duration or subject matter, unless otherwise agreed, entail acceptance by the CUSTOMER of the following general conditions and, in the absence of any clause to the contrary, these general conditions prevail over the general conditions of the CUSTOMER. However, the special conditions that may appear on the quotes established by ATHEM &amp; SKERTZ&Ograve; will prevail over these general conditions.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Accordingly, placing an order with ATHEM &amp; SKERTZ&Ograve; implies the CUSTOMER\'s full and unreserved acceptance of these general conditions, to the exclusion of all other documents issued by the CUSTOMER.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE I - ORDERS</strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Any order from the CUSTOMER will only become final when it returns the quote previously established by ATHEM &amp; SKERTZ&Ograve;, dated, bearing the commercial stamp and signed by the CUSTOMER or any person duly authorised by it. If the quote is not returned signed, ATHEM &amp; SKERTZ&Ograve; will accept the purchase orders which may nevertheless be sent to it by the CUSTOMER provided that they expressly refer to the quote, and to the special and general conditions it contains without the possibility to unilaterally modify any of their terms. The purchase order must mention the name, number and date of the quote, and the price it expresses, and reproduce the payment conditions of the quote. Documents relating to an order must indicate the references shown on the quote. Otherwise, they will not be taken into account and ATHEM &amp; SKERTZ&Ograve; waives all liability for any resulting consequences.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE II &mdash; PLACE OF PERFORMANCE AND/OR DELIVERY</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">All supplies and/or services will be delivered and/or performed by ATHEM &amp; SKERTZ&Ograve; at the place specified in the quote. If supplies and/or services are to be delivered or performed outside the premises of ATHEM &amp; SKERTZ&Ograve;, the CUSTOMER will endeavour to obtain all public or private access authorisations and/or facilities. It will also ensure that its own insurance covers all the risks related to the interventions of ATHEM &amp; SKERTZ&Ograve; both during the exercise of the services and during their operation.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><strong><span lang=\"EN-GB\" style=\"font-size: 10pt; font-family: \'Helvetica Neue\'; color: #333333;\">ARTICLE III &mdash; ADMINISTRATIVES AUTHORISATIONS</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Services ordered by the CUSTOMER requiring an administrative authorisation can only be executed after the CUSTOMER has obtained this authorisation.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE IV &mdash; RETENTION OF TITLE</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The CUSTOMER shall only become the owner of the goods supplied by ATHEM &amp; SKERTZ&Ograve;, or the works carried out by ATHEM &amp; SKERTZ&Ograve;, after full payment of the price in principal and accessories. The mere delivery of a title creating an obligation to pay, bill of exchange or other, does not constitute a payment within the meaning of this clause, the original claim of the buyer subsisting with all the attached guarantees, including the retention of title, until said commercial paper has actually been paid. The above provision shall not prevent, from the delivery of goods and/or installation of works performed by ATHEM &amp; SKERTZ&Ograve;, the transfer to the CUSTOMER of the risks of loss or deterioration of all the property subject to this retention of title and the damage they may cause. The CUSTOMER undertakes to take out insurance guaranteeing the risks from the delivery of the goods and/or the execution of the work. In the event of seizure or any other intervention by a third party on the property under this agreement with ATHEM &amp; SKERTZ&Ograve;, the CUSTOMER must inform ATHEM &amp; SKERTZ&Ograve; immediately so it can oppose the intervention and preserve its rights. The CUSTOMER also undertakes not to pledge or assign as collateral the ownership of the goods delivered by ATHEM &amp; SKERTZ&Ograve; and/or the works performed by it. In the absence of payment by the CUSTOMER of any amount remaining due to ATHEM &amp; SKERTZ&Ograve;, despite formal notice sent by registered letter which remains unheeded for fifteen days, ATHEM &amp; SKERTZ&Ograve; pay proceed, at the CUSTOMER\'s expense, with the removal of all elements (installations, structures, canvasses, etc.) installed by it on behalf of the CUSTOMER.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE V - SUBCONTRACTING</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">ATHEM &amp; SKERTZ&Ograve; may subcontract all or part of the services ordered by the CUSTOMER, subject to compliance with the provisions of Law no. 75-1334 of December 31, 1975 and n particular its Article 3. ATHEM &amp; SKERTZ&Ograve; will therefore remain solely responsible for the performance of its services and/or works and will also remain the sole contact for the CUSTOMER. ATHEM &amp; SKERTZ&Ograve; must ensure that its subcontractors comply with all the provisions of the general conditions and of the special conditions.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE VI &mdash; OBLIGATIONS OF ATHEM &amp; SKERTZ&Ograve;</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">ATHEM &amp; SKERTZ&Ograve; undertakes to perform the services entrusted to it by the CUSTOMER in accordance with professional standards and in accordance with the regulations in force. ATHEM &amp; SKERTZ&Ograve; also undertakes to ensure that the goods delivered and all services performed comply with the terms of the order.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE VII &mdash; OBLIGATIONS OF THE CUSTOMER</strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The CUSTOMER undertakes to promptly provide any document necessary for the performance of its services by ATHEM &amp; SKERTZ&Ograve;, to check its rights on each of the selected sites and provide any supporting document at the express request of ATHEM &amp; SKERTZ&Ograve;, to take responsibility if necessary for the intervention of a design office related to the installation of the structure and/or canvas and/or volume and/or projection installation, to bear all additional costs resulting from any modifications imposed by a design office and to mandate a safety coordinator in the cases provided for by law. </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Any document relating to an order must show the references appearing on the quote itself; otherwise, it may not be taken into account.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Except in cases where ATHEM &amp; SKERTZ&Ograve; is itself the creator, directly or indirectly, the CUSTOMER will remain solely liable, both vis-&agrave;-vis its own customers and third parties, for the images and messages on the canvasses, the volumes installed or projections made on the equipment made available to it by ATHEM &amp; SKERTZ&Ograve;.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Furthermore, pursuant to the provisions of Article L 581-5 of the Environment Code, the CUSTOMER authorises ATHEM &amp; SKERTZ&Ograve; to include its name and telephone number on all works carried out by means of a sign, or any other device, of a size of about 0.40 meters high by 1 meter wide.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE VIII &ndash; ACCEPTANCE</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">After the installation carried out on behalf of the CUSTOMER, an acceptance operation will be organised to enable the CUSTOMER to check that the work has been executed in accordance with the terms of the quote. This acceptance will be recorded in a report signed by ATHEM &amp; SKERTZ&Ograve; and by the CUSTOMER which will include a list of any reservations.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The CUSTOMER will be summoned by simple letter or email mentioning the date and time of this acceptance operation. If the CUSTOMER fails to attend this acceptance operation, ATHEM &amp; SKERTZ&Ograve; will draw up a report which will be sent to the CUSTOMER within 48 hours, by registered letter with acknowledgement of receipt. The CUSTOMER will have a period of 2 business days to indicate any reservations. If no observation is made within this period, the work will be considered validly accepted by the CUSTOMER without reservation.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Unless otherwise stipulated in the special conditions, the risks of loss or damage of all the elements composing each structure will be transferred to the CUSTOMER as and when they are actually delivered, with the CUSTOMER then becoming solely responsible for their custody and condition. Subsequently, once the works are installed, the CUSTOMER will be solely responsible for their custody and maintenance until their effective removal.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE IX- SUSTAINABLE DEVELOPMENT</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">If necessary, ATHEM &amp; SKERTZ&Ograve; may be required, to comply in particular with the applicable regulations concerning waste removal, to charge the CUSTOMER a contribution or any other charge or tax that may be imposed by the regulations.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE X &mdash; LATE PENALTIES</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Any sums not paid on the due date shown on the invoice will result in the application of late penalties of an amount equal to twelve percent (12%) plus the interest rate applied by the European Central Bank to its most recent refinancing operation.&nbsp;</span><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">These penalties will be due without the need for a reminder and will be calculated from the due date shown on the invoice until the date of actual payment, in accordance with the provisions of Article L441-6 of the Commercial Code.&nbsp;</span><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">In addition, ATHEM &amp; SKERTZ&Ograve; may suspend all services or orders in progress, without prejudice to any other course of action, including court action. The CUSTOMER must reimburse ATHEM &amp; SKERTZ&Ograve; for all costs incurred for the recovery of the amounts due, including the fees of departmental officers and lawyers.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE XI &mdash; CONFIDENTIALITY</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The parties undertake to keep confidential any technical, industrial, financial or commercial information they may come to know in the course of their relations. They undertake to ensure that this confidentiality is preserved by their employees as well as by any third party informed by each of them in any way whatsoever of this agreement. This commitment will continue to be in force even after the expiry of the agreement.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE XII &mdash; INTELLECTUAL PROPERTY</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Pursuant to the provisions of Articles L 112-1 et seq. of the Intellectual Property Code, all plans, sketches, scenarios or synopses, models, photos, documents, presentations and works, even incomplete, shall remain the exclusive property of ATHEM &amp; SKERTZ&Ograve;. The CUSTOMER undertakes not to communicate to third parties the plans, elements of calculation, described parts and generally any documents and information which may be given to it. The CUSTOMER also undertakes not to use them for other operations. More generally, the CUSTOMER undertakes to respect the industrial property of the processes implemented by ATHEM &amp; SKERTZ&Ograve;.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Unless otherwise stipulated in the quote or special conditions, the copyrights resulting from the graphic creations designed and realised in execution of a quote presented by ATHEM &amp; SKERTZ&Ograve; are transferred to the CUSTOMER as follows:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">- assignment of the rights of reproduction, representation and communication to the public of the elements constituting all or part of the work realised by ATHEM &amp; SKERTZ&Ograve; within the framework of this contract, excluding:</span></p>\r\n<ul>\r\n<li><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">the rights of reproduction, representation or communication to the public within the framework of any operation for the purchase of advertising space (press, television, internet, posters);</span></li>\r\n<li><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">any right of adaptation of the graphic work, in whole or in part, in particular by modification, restriction or addition of new elements;</span></li>\r\n<li><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">any reproduction of the work for any other application different from that for which it was originally created;</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">- assignment of the attached copyrights for a period of one year and for an unlimited territory.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">ATHEM &amp; SKERTZ&Ograve; may, within the framework of the promotion of its activity, freely refer to the design and realisation both of communication and/or show devices, the subject matter of this contract, as well as any creations realised on this occasion. ATHEM &amp; SKERTZ&Ograve; is thus, if necessary, authorised by the CUSTOMER to reproduce its trademark and logo for the purposes of this internal or external communication.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE XIII &mdash; ASSIGNMENT</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Neither party may assign or transfer its rights and obligations under this contract, in whole or in part, without the prior written authorisation of the other party.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE XIV &mdash; FORCE MAJEURE</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The parties will not be held liable for any delay or non-performance when it is not attributable to the defaulting party but to a force majeure event, provided that the other party is promptly informed of the delay or breach, along with the cause and expected delay. In case of breach due to a storm, ATHEM &amp; SKERTZ&Ograve; will provide the weather report of the day.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><strong><span style=\"font-size: 10pt;\">ARTICLE XV&mdash; TERMINATION</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">In the event that one of the parties fails to fulfil one of the obligations arising from both these general conditions and the special conditions, it may be given formal notice by the other party, by registered letter with acknowledgement of receipt, to fulfil its commitments. Failing execution within fifteen days of this formal notice, the creditor of the unfulfilled obligation may terminate the contract as of right, without prejudice to any damages it may be awarded by the courts.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XVI&mdash;APPLICABLE LAW - DISPUTE SETTLEMENT</strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The contract is governed by French law, to the exclusion of any other law.&nbsp;</span><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">The parties will meet to amicably resolve any difficulty or dispute, of any nature whatsoever, that may result from the interpretation, performance or termination of this contract.&nbsp;</span><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\">Failing an amicable agreement, the parties expressly grant jurisdiction to the Commercial Court of Paris, even in the case of multiple defendants and the introduction of third parties.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><span style=\"font-size: 10pt;\"><strong>ARTICLE XVII &mdash; ELECTION OF DOMICILE</strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; font-family: \'Helvetica Neue\'; color: #333333;\"><span style=\"font-size: 10pt;\"><span style=\"font-size: 10.666666984558105px; orphans: 2; widows: 2;\">For the application of the provisions of the general and special conditions, the parties expressly elect domicile at their respective registered offices. Any change in the personal situation of each party must be immediately notified to the other party by registered letter with acknowledgement of receipt.</span></span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; text-justify: inter-ideograph;\">&nbsp;</p>');
INSERT INTO `contents` (`id`, `slug`, `content`) VALUES
(2, 'adresse_depot', '2 rue René Bazin 75016 Paris, France');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `idDevis` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `lieu` varchar(200) NOT NULL,
  `rueEvent` varchar(200) NOT NULL,
  `cpEvent` varchar(10) NOT NULL,
  `villeEvent` varchar(100) NOT NULL,
  `distance` int(11) NOT NULL,
  `largeur` int(11) NOT NULL,
  `hauteur` int(11) NOT NULL,
  `dateDebut` varchar(100) NOT NULL,
  `dateFin` varchar(100) NOT NULL,
  `visuel` varchar(100) NOT NULL,
  `nbrBoucles` int(11) NOT NULL,
  `son` varchar(100) NOT NULL,
  `options` varchar(300) NOT NULL,
  `video_jamions` int(11) NOT NULL,
  `video_techniciens` int(11) NOT NULL,
  `video_hebergement` int(11) NOT NULL,
  `video_transport` int(11) NOT NULL,
  `sonorisation_unite` int(11) NOT NULL,
  `sonorisation_techniciens` int(11) NOT NULL,
  `sonorisation_hebergement` int(11) NOT NULL,
  `sonorisation_transport` int(11) NOT NULL,
  `sonorisation_taxe_sacem` float NOT NULL,
  `autre_gardinnage` int(11) NOT NULL,
  `remise_montant` float NOT NULL,
  `remise_pourcentage` float NOT NULL,
  `remise_label` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `societe` varchar(200) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `dateDevis` int(11) NOT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `devis`
--

INSERT INTO `devis` (`idDevis`, `type`, `lieu`, `rueEvent`, `cpEvent`, `villeEvent`, `distance`, `largeur`, `hauteur`, `dateDebut`, `dateFin`, `visuel`, `nbrBoucles`, `son`, `options`, `video_jamions`, `video_techniciens`, `video_hebergement`, `video_transport`, `sonorisation_unite`, `sonorisation_techniciens`, `sonorisation_hebergement`, `sonorisation_transport`, `sonorisation_taxe_sacem`, `autre_gardinnage`, `remise_montant`, `remise_pourcentage`, `remise_label`, `email`, `tel`, `societe`, `fname`, `lname`, `address1`, `address2`, `cp`, `ville`, `dateDevis`, `deleted`) VALUES
(3, 1, 'Paris', 'Rue', '75003', 'Paris', 0, 300, 870, '1505340000', '1505599200', 'pretJammer', 3, 'pretJammer', 'captationVideo,siteWeb,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a.aghyay@gmail.com', '00331245678', '', 'Jack', 'Jack', 'Adresse', '', '75003', 'Paris', 1504891447, 1),
(19, 1, 'sqd', 'sqd', '67500', 'sdf', 0, 620, 610, '1521586800', '1527199200', 'creationOriginale', 4, 'pretJammer', 'captationVideo,siteWeb,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0134453423', 'd', 'd', 'd', 'f', '', '94350', 'ZEr', 1505072405, 1),
(20, 2, 'la chaumiÃ¨re', '12 rue de la chaumiÃ¨re', '94360', 'Bry sur Marne', 0, 120, 120, '1513033200', '1513292400', 'pretJammer', 5, 'creationOriginale', 'captationVideo,siteWeb,liveVideo,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0134453423', 'Zento', 'Laurent', 'Molinari', '92 rue Anatole France', '', '92300', 'Levallois-Perret', 1505073046, 1),
(21, 2, 'qweqwe', 'qweqwe', '12321', 'asdasd', 0, 120, 120, '1505772000', '1506549600', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '232423432423434', 'EI', 'imad', 'Rhanimi', '289, Lot Hassan 2 Askejour', '', '40000', 'Marrakech', 1505125896, 1),
(22, 3, 'asdasd', 'asdsd', '342434', 'asdasd', 0, 120, 120, '1505858400', '1506722400', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '232423432423434', 'EI', 'imad', 'Rhanimi', '289, Lot Hassan 2 Askejour', '', '40000', 'Marrakech', 1505126015, 1),
(23, 3, 'asdasd', 'asdsd', '342434', 'asdasd', 0, 120, 120, '1505858400', '1506722400', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '232423432423434', 'EI', 'imad', 'Rhanimi', '289, Lot Hassan 2 Askejour', '', '40000', 'Marrakech', 1505126287, 1),
(24, 1, 'rue d ela pompe ', 'de la pompe ', '75016', 'Paris', 0, 270, 660, '1506722400', '1509055200', 'creationOriginale', 5, 'creationOriginale', 'captationVideo,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'mnassih@gmail.com', '0101010101', 'zen', 'kk', 'kk', 'kk', 'kk', '98563', 'paris', 1505147801, 1),
(25, 2, 'asdsa', 'asdsd', '234324', 'adasdas', 0, 510, 120, '1506463200', '1506722400', 'pretJammer', 1, 'pasDeSon', 'liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '0699955119', 'EI', 'Imad', 'Rhanimi', '289, Lot Hassan 2 Askejour', '', '40000', 'Marrakech', 1505213717, 1),
(26, 1, 'Lieu', 'Rue', '12456', 'Paris', 0, 120, 120, '1505858400', '1506722400', 'performanceArt', 3, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a.aghyay@gmail.com', '1234567890', 'Soc', 'nom', 'prenom', 'Adresse', '', '73584', 'Paris', 1505235368, 1),
(27, 1, 'Lieu', 'Rue', '12456', 'Paris', 0, 120, 120, '1505858400', '1506722400', 'performanceArt', 3, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a.aghyay@gmail.com', '1234567890', 'Soc', 'nom', 'prenom', 'Adresse', '', '73584', 'Paris', 1505236175, 1),
(28, 1, 'paris', 'rue du fleur', '72005', 'paris', 0, 490, 520, '1505685600', '1506463200', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '0932849023', 'EI', 'John', 'Doe', 'adresse', '', '72005', 'Paris', 1505236419, 1),
(29, 1, 'paris', 'rue du fleur', '72005', 'paris', 0, 490, 520, '1505685600', '1506463200', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '0932849023', 'EI', 'John', 'Doe', 'adresse', '', '72005', 'Paris', 1505236535, 1),
(30, 1, 'paris', 'rue du fleur', '72005', 'paris', 0, 490, 520, '1505685600', '1506463200', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '0932849023', 'EI', 'John', 'Doe', 'adresse', '', '72005', 'Paris', 1505236595, 1),
(31, 1, 'Paris', 'Rue des fleur', '12345', 'Paris', 0, 460, 660, '1526421600', '1527717600', 'pretJammer', 1, 'pasDeSon', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '0612345678', 'EI', 'Imad', 'Rhanimi', '289, Lot Hassan 2 Askejour', '', '40000', 'Marrakech', 1505238376, 1),
(32, 1, 'La chaumiÃ¨re', '12 rue de la chaumiÃ¨re', '94360', 'Bry sur Marne', 0, 600, 700, '1505858400', '1506031200', 'creationOriginale', 8, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0139123423', 'Zento', 'Laurent', 'Molinari', '92 rue Anatole France', '', '92300', 'Levallois-Perret', 1505307237, 1),
(33, 1, 'la chaumiÃ¨re', '92 rue anatole france', '92300', 'Levallois-Perret', 0, 330, 610, '1505772000', '1505944800', 'creationOriginale', 5, 'pretJammer', 'captationVideo,liveVideo,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'julie@athem-skertzo.com', '0142646459', 'Athem the company', 'Julie', 'Regard', '12 rue de la chaumiÃ¨re', '', '94360', 'Bry sur Marne', 1505308520, 1),
(34, 1, 'la chaumiÃ¨re', '12 rue de la chaumiÃ¨re', '94360', 'Bry sur Marne', 0, 390, 790, '1505858400', '1506031200', 'pretJammer', 5, 'creationOriginale', 'liveVideo,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'thierry.rudowski@zento.fr', '0142646459', 'Athem the company', 'Thierry', 'Rudowski', '12 rue de la chaumiÃ¨re', '', '94360', 'Bry sur Marne', 1505308872, 1),
(35, 1, 'Paris', 'rue du fleur', '12345', 'Paris', 0, 120, 120, '1505685600', '1506549600', 'pretJammer', 6, 'pretJammer', 'captationVideo,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '0612345678', 'EI', 'Imad', 'Rhanimi', '289, Gueliz', '', '40000', 'Marrakech', 1505317133, 1),
(36, 2, 'asdadasd', 'asdsad', '324234', 'asdasdad', 0, 120, 120, '1505772000', '1506722400', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'asdasd@asdas.sd', '23423234234234', 'adasdasd', 'Imad', 'Rhanimi', '289, Lot Hassan 2 Askejour', '', '40000', 'Marrakech', 1505317577, 1),
(37, 1, 'PARIS', 'Rue des fleurs', '12333', 'Paris', 0, 120, 120, '1505426400', '1506722400', 'pretJammer', 5, 'pretJammer', 'captationVideo,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.developpe@gmail.com', '0123456789', 'EI', 'imad', 'Ghanimi', 'Adresse', '', '12345', 'Paris', 1505319432, 1),
(38, 1, 'lile', 'rue de france', '12345', 'lile', 0, 470, 660, '1505685600', '1506722400', 'pretJammer', 1, 'pretJammer', 'captationVideo,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.developpe@gmail.com', '0612345678', 'Engineering Insid', 'Imad', 'Dev', '289 rue de france', '', '12345', 'Lile', 1505320132, 1),
(39, 1, 'lieu', 'rue', '14526', 'ville', 0, 120, 120, '1505944800', '1506031200', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a.aghyay@gmail.com', '33312334585775563333', 'societe', 'fname', 'lname', 'address1', 'address2', '12345', 'ville', 1505323015, 1),
(40, 1, 'chaumiÃ¨re', '12 rue de la chaumiÃ¨re', '94360', 'Bry sur marne', 0, 550, 480, '1506376800', '1506549600', 'creationOriginale', 5, 'pretJammer', 'captationVideo,siteWeb,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@zento.fr', '0134233445', 'zer', 'r', 'z', 'z', 'z', '94360', 'ZER', 1505323045, 1),
(41, 1, 'chaumiÃ¨re', '12 rue la chaumiÃ¨re', '94360', 'Bry sur marne', 0, 550, 430, '1521500400', '1524175200', 'creationOriginale', 4, 'creationOriginale', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0134233445', 'f', 'aa', 'ezr', 'er', 'zer', '94340', 'zer', 1505323235, 1),
(42, 3, 'Mon endroit', '50B Grande Rue', '78240', 'Aigremont', 0, 470, 540, '1505858400', '1506031200', 'pretJammer', 4, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.Fr', '+33156453423', 'Zento', 'Laurent', 'Molinari', '92 rue Anatole France', '', '92300', 'Levallois-Perret', 1505372557, 1),
(43, 3, 'Aigremont', '50b grande rue', '78240', 'Aigremont', 0, 370, 570, '1513724400', '1513983600', 'creationOriginale', 6, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Laurent.molinari@yahoo.fr', '0989405522', 'Zento', 'Laurent', 'Molinari', '50b grande rue', '', '78240', 'Aigremont', 1505372943, 1),
(44, 2, 'Eye', 'Eye', '765489', 'Tut', 0, 510, 850, '1505944800', '1506204000', 'creationOriginale', 5, 'pretJammer', 'captationVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Laurent.molinari@yahoo.fr', '9087654398', 'Zento', 'Laurent', 'Molinari', 'Q', 'E', '45367', 'Eyeye', 1505374240, 1),
(45, 2, 'Rennes', 'Place de la mairie', '35000', 'Rennes', 0, 410, 640, '1505858400', '1505944800', 'creationOriginale', 1, 'creationOriginale', 'siteWeb,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'kristell@athem-skertzo.com', '0644212501', 'Athem', 'Kristell', 'BARBIER', '2 Rue RenÃ© Bazin', '', '75016', 'Paris', 1505730794, 0),
(46, 3, 'sdfds', '12 rue de la chaumiÃ¨re', '94360', 'zerz', 0, 52, 56, '1506463200', '1506722400', 'pretJammer', 4, 'pretJammer', 'captationVideo,liveVideo,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@zento.fr', '0980405030', 'dsf', 'dfs', 'f', 'fd', 'fds', '78240', 'Aigremont', 1506001721, 1),
(47, 8, 'La chaumiÃ¨re', 'Rue Anatole France', '92300', 'Levallois-Perret', 4, 10, 10, '1506549600', '1506722400', 'performanceArt', 18, 'creationOriginale', 'captationVideo,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0139453423', 'Zento', 'Laurent', 'Molinari', 'zrerz', '', '78240', 'aigremont', 1506364938, 1),
(48, 3, 'la chaumiÃ¨re', 'Rue de la ChaumiÃ¨re', '94360', 'Bry-sur-Marne', 18, 41, 53, '1506549600', '1506722400', 'pretJammer', 5, 'pretJammer', 'captationVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0134234556', 'Zento', 'la', 'd', 'ee', '', '043456', 'eee', 1506405833, 1),
(49, 8, 'azeaez', 'Rue Charles de Gaulle', '78350', 'Les Loges-en-Josas', 12, 10, 10, '1506636000', '1506722400', 'creationOriginale', 10, 'pretJammer', 'captationVideo,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0139231234', 'Zento', 'laurent', 'Molinari', '12 rue de la chaumiÃ¨re', '', '94360', 'Bry sur Marne', 1506439904, 1),
(50, 2, 'la chaumier', 'Rue de la Grande ChaumiÃ¨re', '75006', 'Paris', 4, 10, 10, '1506636000', '1506722400', 'pretJammer', 8, 'creationOriginale', 'captationVideo,siteWeb,liveVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'contact@zento.fr', '0139123445', 'Zento', 'Laurent ', 'Molinari', 'aezaa', '', '93234', 'er', 1506440434, 1),
(51, 3, 'zeez', 'Rue Anatole France', '29200', 'Brest', 501, 30, 10, '1508968800', '1509141600', 'creationOriginale', 49, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin,affiche', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0134233445', 'Zento', 'Laurent', 'Molinari', '92 rue anatole France', '', '92300', 'Levallois-Perret', 1507123499, 1),
(52, 2, 'a dÃ©finir', 'Rue de la ChaumiÃ¨re', '94360', 'Bry-sur-Marne', 19, 35, 53, '1508277600', '1508536800', 'pretJammer', 4, 'pretJammer', 'captationVideo,siteWeb,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0134233445', 'zento', 'nicolas', 'mura', '92 rue anatole france', '', '92300', 'Levallois', 1507272949, 1),
(53, 8, 'a dÃ©finir', 'Place de la Mairie', '35000', 'Rennes', 300, 10, 43, '1508882400', '1509141600', 'pretJammer', 1, 'creationOriginale', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.Fr', '0134234345', 'ze', 'h', 'h', 'h', 'h', '93234', 'zer', 1507274646, 1),
(54, 3, 'RERER', 'Rue de Lille', '59200', 'Tourcoing', 217, 10, 10, '1508277600', '1508450400', 'pretJammer', 7, 'pretJammer', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0123344556', 'Zento', 'Laurent', 'Molinari', '12 rue de la chaumiÃ¨re', '', '94360', 'Bry sur Marne', 1507294071, 1),
(55, 11, 'a dÃ©finir', 'Place de la Mairie', '35000', 'Rennes', 300, 10, 10, '1508364000', '1509055200', 'performanceArt', 21, 'creationOriginale', 'captationVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'contact@zento.fr', '0123435465', 'zento', 'laurent', 'Molinarri', '92 rue Anatole France', '', '92300', 'Levallois-Perret', 1507294171, 1),
(56, 8, 'a dÃ©finir', 'Place de la Mairie', '35000', 'Rennes', 300, 32, 34, '1508882400', '1509055200', 'creationOriginale', 10, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'contact@zento.fr', '0123344556', 'u', 'u', 'u', 'u', 'u', '78345', 'erer', 1507294329, 1),
(57, 10, 'a dÃ©finir', 'Place de la Gare', '67000', 'Strasbourg', 403, 54, 10, '1508882400', '1509141600', 'pretJammer', 1, 'pasDeSon', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'contact@zento.Fr', '1234455601', 'a', 'y', 'y', 'y', 'y', '78965', 'ZERZ', 1507294425, 1),
(58, 3, 'LIEU', 'RUE', '75000', 'Paris', 10, 10, 10, '1507500000', '1507586400', 'pretJammer', 1, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'test@zento.com', '0612345678', 'zento', 'test', 'test', 'ADRESSE', '', '75000', 'Paris', 1507311597, 1),
(59, 8, 'LIEU', 'RUE', '75000', 'paris', 10, 10, 10, '1507500000', '1507586400', 'pretJammer', 1, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'test@zento', '0612345678', 'SOCIÃ‰TÃ‰', 'NOM', 'NOM', 'ADRESSE', '', '75000', 'paris', 1507311815, 1),
(60, 8, 'LIEU', 'Rue', '75000', 'paris', 8, 10, 10, '1508104800', '1508191200', 'pretJammer', 1, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'test@zento.com', '0612345678', 'SOCIÃ‰TÃ‰', 'NOM', 'NOM', 'ADRESSE', '', '1234567', 'paris', 1507312292, 1),
(61, 3, 'TEST', 'Rue de Rivoli', '75000', 'Paris', 8, 10, 10, '1508191200', '1508277600', 'performanceArt', 5, 'pretJammer', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'test@zento.com', '0612345678', 'SOCIÃ‰TÃ‰', 'NOM', 'NOM', 'ADRESSE', '', '1234567', 'parid', 1507313972, 1),
(62, 3, 'la chaumere', 'place de la mairie', '35000', 'Rennes', 302, 10, 10, '1508277600', '1508450400', 'creationOriginale', 19, 'pretJammer', 'captationVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '0123344556', 'eza', 'ko', 'io', 'io', 'io', '93456', 'EZR', 1507533144, 1),
(63, 8, 'aez', 'Place de la Gare', '67000', 'Strasbourg', 406, 10, 10, '1508364000', '1509055200', 'pretJammer', 4, 'pretJammer', 'captationVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'contact@zento.fr', '0123344556', 'ze', 'e', 'u', 'u', 'u', '34000', 'erzr', 1507533228, 1),
(64, 12, 'zaea', 'place de la mairie', '35000', 'Rennes', 302, 10, 10, '1508796000', '1508968800', 'creationOriginale', 43, 'pretJammer', 'captationVideo,liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@zento.fr', '0123453423', 'aezeza', 'e', 'e', 'e', '', '34000', 'ville', 1507533319, 1),
(65, 12, 'BORDEAUX', 'Place de la Mairie', '33440', 'Saint-Louis-de-Montferrand', 482, 80, 76, '1510354800', '1510441200', 'pretJammer', 2, 'pasDeSon', 'liveVideo,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'kristell@athem-skertzo.COM', '0644212501', 'ATHEM', 'BARBIER', 'KRISTELL', '2 RUE RENE BAZIN ', '', '75016', 'PARIS', 1507881000, 0),
(66, 2, 'concer', 'Rue la Fayette', '75009', 'Paris', 7, 52, 10, '1508882400', '1509055200', 'pretJammer', 5, 'pretJammer', 'captationVideo,liveVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@yahoo.fr', '013423344556', 'ezzr', 'r', 'd', 'd', 'dd', '94360', 'Bry sur marne', 1508317932, 1),
(67, 3, 'rennes', 'Place de la Mairie', '35000', 'Rennes', 302, 10, 10, '1508968800', '1509055200', 'pretJammer', 1, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'kristell.barbier@gmail.com', '0644212501', 'ATHEM', 'BARBIER', 'KRISTELL', '2 RUE RENE BAZIN', '', '75016', 'PARIS', 1508322312, 0),
(68, 8, 'RENNES', 'Place de la Mairie', '35000', 'Rennes', 302, 67, 58, '1508796000', '1508968800', 'pretJammer', 1, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'kristell@athem-skertzo.com', '0644212501', 'ATHEM', 'BARBIER', 'KRISTELL', '2 RUE RENE BAZIN', '', '75016', 'PARIS', 1508322502, 0),
(69, 12, 'RENNES', 'Place de la Mairie', '35000', 'Rennes', 302, 66, 95, '1508882400', '1509404400', 'pretJammer', 1, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'kristell@athem-skertzo.com', '0644212501', 'ATHEM', 'BARBIER', 'KRISTELL', '2 RUE RENE BAZIN', '', '75016', 'PARIS', 1508323080, 0),
(70, 2, 'my event', 'Rue de la ChaumiÃ¨re', '94360', 'Bry-sur-Marne', 20, 65, 33, '1508882400', '1509055200', 'creationOriginale', 50, 'pretJammer', 'siteWeb,GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'contact@zento.fr', '0123453423', 'z', 'a', 'a', 'r', 'o', '93200', 'AZE', 1508328824, 1),
(71, 11, 'Concern', 'Rue de la Grande ChaumiÃ¨re', '75006', 'Paris', 6, 54, 10, '1508882400', '1509141600', 'performanceArt', 25, 'creationOriginale', 'captationVideo,liveVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@zento.fr', '0130453423', 'zeaee', 'eze', 'ze', 'ze', 'ze', '92300', 'Levallois', 1508572666, 1),
(72, 3, 'azeza', 'Rue Anatole France', '92300', 'Levallois-Perret', 5, 41, 10, '1508882400', '1509055200', 'creationOriginale', 20, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'laurent.molinari@zento.fr', '0123121224', 'zeaeza', 'AAA', 'LL', 'aa', 'L', '92300', 'z', 1508573239, 1),
(73, 12, 'MÃ‰DIATHÃˆQUE PONT CROIX', '26 rue du Docteur NÃ©Ã¯s', '29790', 'Pont-Croix', 506, 40, 30, '1520031600', '1520118000', 'creationOriginale', 5, 'pasDeSon', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'philippe@athem-skertzo.com', '0607320921', 'ATHEM', 'PHILIPPE', 'LIGOT', '2 rue RenÃ© Bazin', '', '75016', 'PARIS', 1512460894, 0),
(74, 12, 'MÃ‰DIATHÃˆQUE ', 'RUE DE LA PRISON', '29790', 'Pont-Croix', 506, 50, 40, '1520031600', '1520118000', 'creationOriginale', 5, 'pasDeSon', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'philippe@athem-skertzo.com', '0298704066', 'MAIRIE DE PONT CROIX', 'BENOIT', 'LAURIOU', '26 rue du Docteur NÃ©Ã¯s', '', '29790', 'PONT CROIX', 1512461304, 0),
(75, 3, 'Lieu', 'Rue de la Flamme', '21370', 'PlombiÃ¨res-lÃ¨s-Dijon', 262, 10, 10, '1514242800', '1514415600', 'creationOriginale', 10, 'creationOriginale', 'captationVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'imad.rhanimi@gmail.com', '06933344223', 'TEST', 'Bill', 'gamin', 'address de tesr', '', '75001', 'Paris', 1512554549, 0),
(76, 21, 'levallois perret', 'Rue Anatole France', '92300', 'Levallois-Perret', 4, 10, 10, '1513983600', '1514242800', 'pretJammer', 2, 'pretJammer', 'captationVideo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'almostafa.nassih@zento.fr', '0180884901', 'Test ZENTO', 'NAssih', 'Al Mostafa', '92 rue anatole france', '', '92300', 'levallois perret', 1512555266, 1),
(77, 14, 'chz nous', '92 Rue Anatole France, Levallois-Perret, France', '92300', 'Levallois-Perret', 4, 10, 10, '1514502000', '1514588400', 'pretJammer', 3, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'mathieu.fortin@zento.fr', '01223456789', 'Zento', 'Molinari', 'Laurent', '92 rue anatole France', 'On teste', '92300', 'Levallois-Perret', 1513761313, 1),
(78, 3, 'Mairie de Paris', 'Rue de Lobau', '75004', 'Paris', 6, 65, 74, '1514934000', '1515106800', 'creationOriginale', 10, 'pasDeSon', 'GestDemarAdmin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'philippe@athem.fr', '0607320921', 'ATHEM & SKERTZÃ’', 'PHILIPPE', 'LIGOT', '2 rue RenÃ© Bazin', '', '75016', 'PARIS', 1514462628, 0),
(79, 14, 'LA DEFENSE ', 'Place de la DÃ©fense', '92800', 'Puteaux', 4, 10, 10, '1521154800', '1521759600', 'creationOriginale', 15, 'creationOriginale', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'elodie@athem-skertzo.com', '0617745315', 'ATHEM', 'ELODIE', 'LEPINE', '2 RUE RENÃ‰ BAZIN', '', '75016', 'PARIS', 1517323204, 0),
(80, 3, 'Paris', 'Rue de la Roquette', '75011', 'Paris', 8, 10, 10, '1523923200', '1524009600', 'pretJammer', 1, 'creationOriginale', '', 2, 3, 1, 1, 2, 4, 1, 1, 1, 1, 0, 3.6, 'Offre', 'imad.rhanimi@gmail.com', '0699955119', 'Zento', 'Dev', 'Demo', 'Rue du Faubourg Saint-Honoré, Paris, France', 'Rue du Faubourg Saint-Honoré', '75008', 'Paris', 1523443060, 1),
(81, 2, 'Aoa', 'Rue de Rivoli', '75004', 'Paris', 6, 30, 10, '1524614400', '1524787200', 'creationOriginale', 10, 'pretJammer', 'captationVideo,siteWeb,liveVideo', 2, 1, 1, 1, 2, 4, 1, 1, 0, 0, 1500, 0, 'Ma remise', 'laurent.molinari@yahoo.fr', '0912345678', 'Zento', 'Molinari', 'Laurent', 'Ayah', '', '94360', 'Bru sur Marne', 1523472248, 1),
(82, 3, 'un lieu', 'Rue de la Grande Chaumière', '75006', 'Paris', 5, 10, 29, '1524009600', '1524182400', 'creationOriginale', 10, 'pretJammer', 'captationVideo,liveVideo', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1500, 0, 'Remise exceptionnelle de test', 'laurent.molinari@zento.fr', '0611499949', 'Zento', 'Molinari', 'Laurent', '12 rue de la chaumière', '', '94360', 'Bry sur Marne', 1523516430, 1),
(83, 12, 'aze', 'Rue des Alouettes', '36300', 'Le Blanc', 262, 25, 10, '1524009600', '1524700800', 'creationOriginale', 5, 'pretJammer', 'captationVideo,liveVideo', 1, 2, 0, 1, 3, 4, 0, 0, 0, 0, 0, 5, '', 'laurent.molinari@zento.fr', '01233445556', 'ze', 'j', 'j', 'j', 'j', '92300', 'j', 1523517164, 0),
(84, 3, 'ma ville', 'Rue de Rivoli', '75004', 'Paris', 6, 10, 10, '1524096000', '1524182400', 'creationOriginale', 5, 'pretJammer', 'captationVideo,liveVideo', 1, 2, 1, 0, 3, 4, 1, 0, 0, 1, 0, 0, '', 'contact@zento.fr', '0123243445', 'a', 'a', 'a', 'a', 'az', '92300', 'aze', 1523517288, 0),
(85, 14, 'aaa', 'Rue des Bordeaux', '94220', 'Charenton-le-Pont', 11, 10, 10, '1524096000', '1524268800', 'pretJammer', 2, 'creationOriginale', 'captationVideo,liveVideo,affiche', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '', 'contact@zento.fr', '0611499949', 'zerzezr', 'ezr', 'er', 'zer', 'zr', '94360', 'bru', 1523518933, 0),
(86, 3, 'Marrakech', '289, Lot Hassan 2 Askejour', '75004', 'Paris', 6, 10, 10, '1524096000', '1524182400', 'creationOriginale', 5, 'pretJammer', 'captationVideo,liveVideo', 1, 2, 1, 0, 3, 4, 1, 0, 0, 1, 0, 0, '', 'imad.rhanimi@gmail.com', '0699955119', 'EI', 'Espagne', 'EN', 'Rue du Faubourg Saint-Honoré, Paris, France', 'Rue du Faubourg Saint-Honoré', '75008', 'Paris', 1523530409, 1),
(87, 3, 'Marrakech', '289, Lot Hassan 2 Askejour', '75004', 'Paris', 6, 10, 10, '1524096000', '1524182400', 'creationOriginale', 5, 'pretJammer', 'captationVideo,liveVideo', 1, 2, 1, 0, 3, 4, 1, 0, 1, 1, 0, 0, '', 'imad.rhanimi@gmail.com', '0699955119', 'EI', 'EI', 'EI', 'Rue du Faubourg Saint-Honoré, Paris, France', 'Rue du Faubourg Saint-Honoré', '75008', 'Paris', 1523530545, 1),
(88, 3, 'Paris', 'rue abc', '75004', 'Paris', 6, 10, 10, '1524096000', '1524182400', 'creationOriginale', 5, 'pretJammer', 'captationVideo,liveVideo', 1, 2, 1, 1, 3, 4, 1, 1, 1, 1, 0, 0, '', 'imad.rhanimi@gmail.com', '0699955119', 'ei', 'ei', 'ei', 'Rue du Faubourg Saint-Honoré, Paris, France', 'Rue du Faubourg Saint-Honoré', '75008', 'Paris', 1523531850, 1),
(89, 3, 'le lieu', 'Rue Anatole France', '92300', 'Levallois-Perret', 4, 37, 10, '1524614400', '1524873600', 'creationOriginale', 15, 'creationOriginale', 'captationVideo,liveVideo', 1, 2, 1, 1, 2, 4, 1, 1, 1, 1, 0, 5, 'ceci est une remise', 'contact@zento.fr', '0980405522', 'Zento', 'Molinari', 'Laurent', '12 rue de la cazae', '', '94360', 'Bry sur marne', 1523540709, 0),
(90, 11, '54 rue des alouettes', 'Rue des Alouettes', '36300', 'Le Blanc', 262, 10, 10, '1524614400', '1525046400', 'pretJammer', 1, 'creationOriginale', '', 2, 2, 1, 1, 3, 6, 1, 1, 1, 1, 0, 3, '', 'contact@zento.fr', '0654342312', 't', 't', 't', 'tt', 'tt', '94360', 'Bry sur Marne', 1523541392, 0);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `idOption` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `options`
--

INSERT INTO `options` (`idOption`, `slug`, `name`, `description`, `price`) VALUES
(1, 'captationVideo', 'captation \r\nvidéo', 'Lorem ipsum dolor sit amet, consectetur adipisicing ', 3500),
(2, 'siteWeb', 'site web \r\ndédié', 'elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 5000),
(3, 'liveVideo', 'vidéo live \r\ninternet', 'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit', 2500),
(4, 'GestDemarAdmin', 'gestion des \r\ndémarches \r\nadministratives', 'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 2500),
(5, 'affiche', 'Affiche de\r\nlancement', 'Excepteur sint occaecat cupidatat non proident Duis aute irure', 1200);

-- --------------------------------------------------------

--
-- Structure de la table `representant`
--

CREATE TABLE `representant` (
  `idRep` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `function` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `tel` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `representant`
--

INSERT INTO `representant` (`idRep`, `name`, `function`, `email`, `tel`) VALUES
(1, 'Philippe LIGOT', 'Associé', 'techdev@zento.fr', '06.07.32.09.21');

-- --------------------------------------------------------

--
-- Structure de la table `son`
--

CREATE TABLE `son` (
  `idSon` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `son`
--

INSERT INTO `son` (`idSon`, `slug`, `name`, `description`, `price`) VALUES
(1, 'creationOriginale', 'création \r\noriginale', '>>>     Bande son de très haute qualité, réalisée sur mesure en fonction  de vos demandes de scénario et de contenus', 2500),
(2, 'pretJammer', 'Musique \r\nexistante', '>>>   Utilisation de musiques existantes soumises à droit d\'auteur.', 3500),
(3, 'pasDeSon', 'Pas\r\nde son', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `idType` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `types`
--

INSERT INTO `types` (`idType`, `name`, `deleted`) VALUES
(2, 'SPECTACLE HISTORIQUE', 0),
(3, 'CONCERT', 0),
(4, 'Type 3', 1),
(8, 'CÉLÉBRATION', 0),
(9, 'Festival', 1),
(10, 'FESTIVAL', 0),
(11, 'ANNIVERSAIRE', 0),
(12, 'INAUGURATION', 0),
(13, 'VERNISSAGE', 0),
(14, 'LANCEMENT DE PRODUIT', 0),
(15, 'ÉVÈNEMENT CORPORATE', 0),
(16, 'MUSÉOGRAPHIE', 0),
(17, 'HOMMAGE', 0),
(18, 'SPECTACLE LIVE', 0),
(19, 'STREET MARKETING', 0),
(20, 'VALORISATION PATRIMONIALE', 0),
(21, 'AUTRE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `uploads`
--

CREATE TABLE `uploads` (
  `idFile` int(11) NOT NULL,
  `idDevis` int(11) NOT NULL,
  `fileName` text NOT NULL,
  `realName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `uploads`
--

INSERT INTO `uploads` (`idFile`, `idDevis`, `fileName`, `realName`) VALUES
(1, 36, '1505317577_cv.pdf', 'cv.pdf'),
(2, 37, '1505319432_cv.pdf', 'cv.pdf'),
(3, 38, '1505320132_maxpeopleworld920039-3200513.jpg', 'maxpeopleworld920039-3200513.jpg'),
(4, 38, '1505320132_time-warp-event-neu.jpg', 'time-warp-event-neu.jpg'),
(5, 38, '1505320132_maxresdefault.jpg', 'maxresdefault.jpg'),
(6, 38, '1505320132_concert-braderie-lille-2017.jpg', 'concert-braderie-lille-2017.jpg'),
(7, 39, '1505323015_03.jpg', '03.jpg'),
(8, 39, '1505323015_02.jpg', '02.jpg'),
(10, 41, '1505323235_carbontrack-formation-transfert-2017.pptx', 'Carbontrack-Formation-Transfert-2017.pptx'),
(11, 42, '1505372557_carbontrack-formation-transfert-2017.pptx', 'Carbontrack-Formation-Transfert-2017.pptx'),
(12, 42, '1505372557_contrat.pdf', 'Contrat.pdf'),
(13, 44, '1505374240_20170722-122116.jpg', '20170722_122116.jpg'),
(14, 52, '1507272949_capture-décran-2017-10-06-à-08.45.25.png', 'Capture dâ€™Ã©cran 2017-10-06 Ã  08.45.25.png'),
(15, 53, '1507274646_capture-décran-2017-10-06-à-09.09.15.png', 'Capture dâ€™Ã©cran 2017-10-06 Ã  09.09.15.png');

-- --------------------------------------------------------

--
-- Structure de la table `visuel`
--

CREATE TABLE `visuel` (
  `idVisuel` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `visuel`
--

INSERT INTO `visuel` (`idVisuel`, `slug`, `name`, `description`, `price`) VALUES
(1, 'creationOriginale', 'Création\r\noriginale', '>>>    Images animées de très haute qualité, réalisées sur mesure en fonction de vos souhaits de scénario et de contenu.\r\n\r\n>>>    Ci-dessous choisissez la durée voulue de la projection.', 6000),
(2, 'pretJammer', 'Prêt à \r\njammer', '>>>    Séquences d\'images animées inédites de haute qualité d’une durée de 1 minute chacune. \r\n\r\nUne ou plusieurs séquences forment une boucle complète qui se répète sur la durée voulue. \r\n\r\nEnsuite, vous choisissez :\r\n\r\n(1) les séquences dans une bibliothèque d’images animées,\r\n  \r\n(2) les couleurs dominantes souhaitées. \r\n\r\nRapide à mettre en oeuvre, économique et original.\r\n\r\n>>>    Ci-dessous choisissez le nombre de boucle(s) souhaitée(s).', 2500),
(3, 'performanceArt', 'Performance\r\nart', '>>>    Performance d’artiste(s) réalisé en projection lumière sur un édifice. \r\n\r\nElle peut n’être exécutée qu’une fois ou réitérée, s’appuyer ou non sur un scénario ou être improvisée. \r\n\r\nLe collectif Jam Project réunit des artistes de divers horizons (streets artist, plasticiens, photographe, danseurs, etc.) réalisant ce type de performance totalement inédite.', 3500);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `JamMobile`
--
ALTER TABLE `JamMobile`
  ADD PRIMARY KEY (`idJamMobile`),
  ADD KEY `idJamMobile` (`idJamMobile`);

--
-- Index pour la table `JamSon`
--
ALTER TABLE `JamSon`
  ADD PRIMARY KEY (`idJamSon`),
  ADD KEY `idJamSon` (`idJamSon`);

--
-- Index pour la table `autres`
--
ALTER TABLE `autres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`idDevis`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`idOption`),
  ADD KEY `idOption` (`idOption`);

--
-- Index pour la table `representant`
--
ALTER TABLE `representant`
  ADD PRIMARY KEY (`idRep`);

--
-- Index pour la table `son`
--
ALTER TABLE `son`
  ADD PRIMARY KEY (`idSon`),
  ADD KEY `idSon` (`idSon`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`idType`);

--
-- Index pour la table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`idFile`);

--
-- Index pour la table `visuel`
--
ALTER TABLE `visuel`
  ADD PRIMARY KEY (`idVisuel`),
  ADD KEY `idVisuel` (`idVisuel`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `autres`
--
ALTER TABLE `autres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `idDevis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `representant`
--
ALTER TABLE `representant`
  MODIFY `idRep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `idFile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
