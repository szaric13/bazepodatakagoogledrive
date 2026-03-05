-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 06:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `googledrive`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslogs`
--

CREATE TABLE `accesslogs` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_LOGA` int(11) NOT NULL,
  `IP_ADRESA` varchar(15) NOT NULL,
  `VREME_LOGIN` datetime NOT NULL,
  `VREME_LOGOUT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accesslogs`
--

INSERT INTO `accesslogs` (`ID_KORISNIKA`, `ID_LOGA`, `IP_ADRESA`, `VREME_LOGIN`, `VREME_LOGOUT`) VALUES
(2, 4, 'ree61', '2023-03-31 16:16:49', '2023-03-31 17:16:49'),
(4, 1, '13123d', '2024-03-31 18:15:36', '2024-03-31 18:35:36'),
(4, 2, '13123d', '2024-03-30 18:16:04', '2024-03-30 18:18:04'),
(6, 3, '1231dtt', '2024-01-31 17:16:24', '2024-01-31 18:16:24'),
(10, 5, 'erertrrrr6', '2021-02-21 18:17:17', '2022-01-11 18:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `aktivnosti`
--

CREATE TABLE `aktivnosti` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_VLASNIKA_FAJLA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_AKTIVNOSTI` int(11) NOT NULL,
  `AKCIJA` char(10) NOT NULL,
  `VREME_AKTIVNOSTI` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aktivnosti`
--

INSERT INTO `aktivnosti` (`ID_KORISNIKA`, `ID_VLASNIKA_FAJLA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_AKTIVNOSTI`, `AKCIJA`, `VREME_AKTIVNOSTI`) VALUES
(4, 4, 32, 120, 61, 1, 'edit', '2024-03-31 16:18:51'),
(4, 4, 32, 120, 61, 5, 'edit', '2024-03-31 16:22:16'),
(6, 8, 31, 120, 63, 4, 'edit', '2024-03-31 16:21:44'),
(2, 10, 32, 110, 64, 3, 'edit', '2024-03-31 16:21:21'),
(4, 10, 32, 110, 64, 2, 'edit', '2024-03-31 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `deljenja`
--

CREATE TABLE `deljenja` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_PODELE` int(11) NOT NULL,
  `KO_JE_PODELIO` int(11) NOT NULL,
  `KOME_JE_PODELIO` int(11) NOT NULL,
  `VREME_PODELE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deljenja`
--

INSERT INTO `deljenja` (`ID_KORISNIKA`, `ID_PODELE`, `KO_JE_PODELIO`, `KOME_JE_PODELIO`, `VREME_PODELE`) VALUES
(2, 1, 2, 6, '2024-03-31 18:38:01'),
(4, 2, 4, 8, '2024-03-31 18:38:26'),
(6, 3, 6, 10, '2024-03-31 18:38:46'),
(8, 4, 8, 10, '2024-03-31 18:39:10'),
(10, 5, 10, 2, '2024-03-31 18:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `fajlovi`
--

CREATE TABLE `fajlovi` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_FOLDERA` int(11) DEFAULT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `FAJ_ID_KORISNIKA` int(11) DEFAULT NULL,
  `FAJ_ID_VERZIJE` int(11) DEFAULT NULL,
  `FAJ_ID_TIPA_FAJLA` int(11) DEFAULT NULL,
  `FAJ_ID_FAJLA` int(11) DEFAULT NULL,
  `ID_PREVIEWA` varchar(30) DEFAULT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `IME` varchar(25) NOT NULL,
  `VELICINA` int(11) NOT NULL,
  `DATUM_KREACIJE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fajlovi`
--

INSERT INTO `fajlovi` (`ID_KORISNIKA`, `ID_FAJLA`, `ID_FOLDERA`, `ID_TIPA_FAJLA`, `FAJ_ID_KORISNIKA`, `FAJ_ID_VERZIJE`, `FAJ_ID_TIPA_FAJLA`, `FAJ_ID_FAJLA`, `ID_PREVIEWA`, `ID_VERZIJE`, `IME`, `VELICINA`, `DATUM_KREACIJE`) VALUES
(2, 60, NULL, 105, NULL, NULL, NULL, NULL, NULL, 31, 'fajl1', 31, '2024-03-28 17:49:54'),
(4, 61, 12, 120, NULL, NULL, NULL, NULL, NULL, 32, 'fajl2', 778, '2024-03-28 17:50:57'),
(4, 62, 15, 100, NULL, NULL, NULL, NULL, NULL, 35, 'fajl3', 51, '2024-03-28 17:51:35'),
(8, 63, 14, 120, NULL, NULL, NULL, NULL, NULL, 31, 'fajl4', 23, '2024-03-28 17:52:11'),
(10, 64, 15, 110, NULL, NULL, NULL, NULL, NULL, 32, 'fajl5', 13, '2024-03-28 17:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `fajlovi_za_deljenje`
--

CREATE TABLE `fajlovi_za_deljenje` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_PODELE` int(11) NOT NULL,
  `ID_VLASNIKA_FAJLA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fajlovi_za_deljenje`
--

INSERT INTO `fajlovi_za_deljenje` (`ID_KORISNIKA`, `ID_PODELE`, `ID_VLASNIKA_FAJLA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`) VALUES
(6, 3, 8, 31, 120, 63),
(8, 4, 8, 31, 120, 63),
(2, 1, 10, 32, 110, 64),
(4, 2, 10, 32, 110, 64),
(10, 5, 10, 32, 110, 64);

-- --------------------------------------------------------

--
-- Table structure for table `fajlpreview`
--

CREATE TABLE `fajlpreview` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_PREVIEWA` varchar(30) NOT NULL,
  `IDFAJLA` int(11) NOT NULL,
  `PREVIEW_LINK` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fajlpreview`
--

INSERT INTO `fajlpreview` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_PREVIEWA`, `IDFAJLA`, `PREVIEW_LINK`) VALUES
(2, 31, 105, 60, 'fasfaf', 60, 'link1'),
(4, 32, 120, 61, 'weqe', 61, 'link2'),
(4, 35, 100, 62, 'dfsfsdf', 62, 'yjuyjuy'),
(8, 31, 120, 63, 'ghhfgh', 63, 'tyhytht'),
(10, 32, 110, 64, 'yujuy', 64, 'wetwty');

-- --------------------------------------------------------

--
-- Table structure for table `favoriti`
--

CREATE TABLE `favoriti` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_FAVORITA` int(11) NOT NULL,
  `DATUM_DODAVANJA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favoriti`
--

INSERT INTO `favoriti` (`ID_KORISNIKA`, `ID_FAVORITA`, `DATUM_DODAVANJA`) VALUES
(2, 9, '2021-12-12'),
(4, 8, '2021-12-12'),
(8, 5, '2021-12-12'),
(8, 6, '2021-12-12'),
(10, 7, '2021-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `favorit_fajl`
--

CREATE TABLE `favorit_fajl` (
  `ID_VLASNIKA_FAJLA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_FAVORITA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorit_fajl`
--

INSERT INTO `favorit_fajl` (`ID_VLASNIKA_FAJLA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_KORISNIKA`, `ID_FAVORITA`) VALUES
(8, 31, 120, 63, 10, 7),
(10, 32, 110, 64, 2, 9),
(10, 32, 110, 64, 4, 8),
(10, 32, 110, 64, 8, 5),
(10, 32, 110, 64, 8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `folderi`
--

CREATE TABLE `folderi` (
  `ID_FOLDERA` int(11) NOT NULL,
  `ID_KORISNIKA` int(11) DEFAULT NULL,
  `ID_NADFOLDERA` int(11) DEFAULT NULL,
  `IME` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folderi`
--

INSERT INTO `folderi` (`ID_FOLDERA`, `ID_KORISNIKA`, `ID_NADFOLDERA`, `IME`) VALUES
(11, 6, NULL, 'folder1'),
(12, 6, 11, 'folder2'),
(13, 2, NULL, 'folder3'),
(14, NULL, 11, 'folder4'),
(15, 10, NULL, 'folder5');

-- --------------------------------------------------------

--
-- Table structure for table `istorije`
--

CREATE TABLE `istorije` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_ISTORIJE` int(11) NOT NULL,
  `AKCIJA` char(10) NOT NULL,
  `VREME_IZMENE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `istorije`
--

INSERT INTO `istorije` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_ISTORIJE`, `AKCIJA`, `VREME_IZMENE`) VALUES
(2, 31, 105, 60, 74, 'create', '2024-03-31 16:46:17'),
(4, 32, 120, 61, 78, 'edit', '2024-03-31 16:47:00'),
(8, 31, 120, 63, 72, 'edit', '2024-03-31 16:45:45'),
(10, 32, 110, 64, 70, 'edit', '2024-03-31 16:45:17'),
(10, 32, 110, 64, 76, 'edit', '2024-03-31 16:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `FAJ_ID_KORISNIKA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_KOMENTARA` int(11) NOT NULL,
  `TEKST_KOMENTARA` text NOT NULL,
  `VREME_KOMENTARA` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`FAJ_ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_KORISNIKA`, `ID_KOMENTARA`, `TEKST_KOMENTARA`, `VREME_KOMENTARA`) VALUES
(8, 31, 120, 63, 10, 5, 'qqqqwwwweeeee', '2024-03-31 16:26:28'),
(10, 32, 110, 64, 2, 3, 'wewfwef', '2024-03-31 16:25:30'),
(10, 32, 110, 64, 4, 1, 'asdasdasd', '2024-03-31 16:24:48'),
(10, 32, 110, 64, 6, 2, 'sadwe', '2024-03-31 16:25:10'),
(10, 32, 110, 64, 8, 4, 'weretyer', '2024-03-31 16:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `kome_je_podeljeno`
--

CREATE TABLE `kome_je_podeljeno` (
  `ID_POSILJAOCA` int(11) NOT NULL,
  `ID_PODELE` int(11) NOT NULL,
  `ID_PRIMAOCA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kome_je_podeljeno`
--

INSERT INTO `kome_je_podeljeno` (`ID_POSILJAOCA`, `ID_PODELE`, `ID_PRIMAOCA`) VALUES
(2, 1, 6),
(4, 2, 8),
(6, 3, 10),
(8, 4, 10),
(10, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `STO_ID_KORISNIKA` int(11) DEFAULT NULL,
  `ID_STORAGEA` int(11) DEFAULT NULL,
  `USERNAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PASSWORD` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`ID_KORISNIKA`, `STO_ID_KORISNIKA`, `ID_STORAGEA`, `USERNAME`, `EMAIL`, `PASSWORD`) VALUES
(2, NULL, NULL, 'pekmez', 'blabla@mm.cc', 'qwerty'),
(4, NULL, NULL, 'djem', 'woowoo@ll.pp', 'wertyu'),
(6, NULL, NULL, 'marmelada', 'peepee@hh.aa', 'ertyui'),
(8, NULL, NULL, 'margarin', 'heehee@mm.jj', 'rtyuio'),
(10, NULL, NULL, 'sir', 'ddos@gg.wp', 'tyuiop');

-- --------------------------------------------------------

--
-- Table structure for table `labeli`
--

CREATE TABLE `labeli` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_LABELE` int(11) NOT NULL,
  `IME` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labeli`
--

INSERT INTO `labeli` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_LABELE`, `IME`) VALUES
(2, 31, 105, 60, 1, 'l1'),
(4, 32, 120, 61, 2, 'l2'),
(4, 35, 100, 62, 3, 'l3'),
(8, 31, 120, 63, 4, 'l4'),
(10, 32, 110, 64, 5, 'l5');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL,
  `ID_METADATE` int(11) NOT NULL,
  `KLJUC` int(11) NOT NULL,
  `VREDNOST` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_METADATE`, `KLJUC`, `VREDNOST`) VALUES
(2, 31, 105, 60, 1, 1, '51515'),
(2, 31, 105, 60, 5, 8, 'lowderghytr'),
(4, 32, 120, 61, 2, 2, '1231231'),
(4, 35, 100, 62, 3, 3, 'hyterttgd'),
(10, 32, 110, 64, 4, 6, 'yrtgr');

-- --------------------------------------------------------

--
-- Table structure for table `notifikacije`
--

CREATE TABLE `notifikacije` (
  `ID_NOTIFIKACIJE` int(11) NOT NULL,
  `ID_KORISNIKA` int(11) DEFAULT NULL,
  `TIP_NOTIFIKACIJE` varchar(25) NOT NULL,
  `PORUKA` text NOT NULL,
  `JEL_PROCITANA` tinyint(1) NOT NULL,
  `VREME_NOTIFIKACIJE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifikacije`
--

INSERT INTO `notifikacije` (`ID_NOTIFIKACIJE`, `ID_KORISNIKA`, `TIP_NOTIFIKACIJE`, `PORUKA`, `JEL_PROCITANA`, `VREME_NOTIFIKACIJE`) VALUES
(1, 8, 'not1', 'por3', 1, '2024-03-31 16:07:24'),
(2, 10, 'not2', 'ergtrg', 0, '2024-03-31 16:07:44'),
(3, 8, 'not3', 'ytjyjyu', 1, '2024-03-31 16:08:03'),
(4, 6, 'not1', 'retertre', 1, '2024-03-31 16:08:18'),
(5, 8, 'not3', 'tgrregr', 0, '2024-03-31 16:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `permisije`
--

CREATE TABLE `permisije` (
  `ID_PERMISIJE` int(11) NOT NULL,
  `ID_VLASNIKA_FAJLA` int(11) DEFAULT NULL,
  `ID_VERZIJE` int(11) DEFAULT NULL,
  `ID_TIPA_FAJLA` int(11) DEFAULT NULL,
  `ID_FAJLA` int(11) DEFAULT NULL,
  `ID_KORISNIKA` int(11) DEFAULT NULL,
  `TIP` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permisije`
--

INSERT INTO `permisije` (`ID_PERMISIJE`, `ID_VLASNIKA_FAJLA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_KORISNIKA`, `TIP`) VALUES
(1, 2, 31, 105, 60, 8, 'r'),
(2, 4, 35, 100, 62, 10, 'w'),
(3, 10, 32, 110, 64, 2, 'r/w'),
(4, 10, 32, 110, 64, 6, 'r/w'),
(5, 2, 31, 105, 60, 10, 'r');

-- --------------------------------------------------------

--
-- Table structure for table `podesavanja`
--

CREATE TABLE `podesavanja` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_PODESAVANJA` int(11) NOT NULL,
  `VREDNOST_PODESAVANJA` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `podesavanja`
--

INSERT INTO `podesavanja` (`ID_KORISNIKA`, `ID_PODESAVANJA`, `VREDNOST_PODESAVANJA`) VALUES
(2, 3, '54t4'),
(4, 1, 'adw3'),
(6, 2, 'g5g4w'),
(6, 5, 'we1qq'),
(10, 4, 'gtr6');

-- --------------------------------------------------------

--
-- Table structure for table `spam`
--

CREATE TABLE `spam` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_SPAMA` int(11) NOT NULL,
  `RAZLOG` text NOT NULL,
  `DATUM_REPORTA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spam`
--

INSERT INTO `spam` (`ID_KORISNIKA`, `ID_SPAMA`, `RAZLOG`, `DATUM_REPORTA`) VALUES
(2, 1, 'random1', '2022-01-01'),
(2, 2, 'asdasdasd', '2021-01-01'),
(8, 5, 'eeeee', '2020-01-01'),
(8, 6, 'hghghghghg', '2022-01-01'),
(10, 7, 'ttrtrtrtryrgr', '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `spam_fajl`
--

CREATE TABLE `spam_fajl` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_SPAMA` int(11) NOT NULL,
  `ID_VLASNIKA_FAJLA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spam_fajl`
--

INSERT INTO `spam_fajl` (`ID_KORISNIKA`, `ID_SPAMA`, `ID_VLASNIKA_FAJLA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`) VALUES
(8, 6, 4, 35, 100, 62),
(2, 2, 8, 31, 120, 63),
(10, 7, 8, 31, 120, 63),
(2, 1, 10, 32, 110, 64),
(8, 5, 10, 32, 110, 64);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_STORAGEA` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `USED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`ID_KORISNIKA`, `ID_STORAGEA`, `TOTAL`, `USED`) VALUES
(2, 3, 128, 53),
(4, 1, 128, 31),
(6, 5, 128, 54),
(8, 7, 256, 133),
(10, 9, 1024, 788);

-- --------------------------------------------------------

--
-- Table structure for table `tipovifajlova`
--

CREATE TABLE `tipovifajlova` (
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `IME` varchar(25) NOT NULL,
  `ICON` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipovifajlova`
--

INSERT INTO `tipovifajlova` (`ID_TIPA_FAJLA`, `IME`, `ICON`) VALUES
(100, 'tip1', NULL),
(105, 'tip2', NULL),
(110, 'tip3', NULL),
(115, 'tip4', NULL),
(120, 'tip5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_TRASHA` int(11) NOT NULL,
  `DATUM_BRISANJA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`ID_KORISNIKA`, `ID_TRASHA`, `DATUM_BRISANJA`) VALUES
(2, 1, '2020-02-02'),
(2, 2, '2020-02-02'),
(8, 3, '2020-02-02'),
(8, 5, '2020-02-02'),
(10, 4, '2020-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `trash_fajl`
--

CREATE TABLE `trash_fajl` (
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_TRASHA` int(11) NOT NULL,
  `ID_VLASNIKA_FAJLA` int(11) NOT NULL,
  `ID_VERZIJE` int(11) NOT NULL,
  `ID_TIPA_FAJLA` int(11) NOT NULL,
  `ID_FAJLA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trash_fajl`
--

INSERT INTO `trash_fajl` (`ID_KORISNIKA`, `ID_TRASHA`, `ID_VLASNIKA_FAJLA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`) VALUES
(10, 4, 2, 31, 105, 60),
(8, 5, 4, 35, 100, 62),
(2, 2, 8, 31, 120, 63),
(2, 1, 10, 32, 110, 64),
(8, 3, 10, 32, 110, 64);

-- --------------------------------------------------------

--
-- Table structure for table `verzije`
--

CREATE TABLE `verzije` (
  `ID_VERZIJE` int(11) NOT NULL,
  `VREME_VERZIJE` date NOT NULL,
  `NOTES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verzije`
--

INSERT INTO `verzije` (`ID_VERZIJE`, `VREME_VERZIJE`, `NOTES`) VALUES
(30, '2024-03-04', 'popravljeno ovono'),
(31, '2024-02-12', 'ima ovo, ali nema ono'),
(32, '2023-01-26', 'nova funkcionalnost, slabija optimalnost???'),
(34, '2024-03-30', 'najnovija verzija'),
(35, '2024-02-13', 'hotfix verzije pustene u prohod prethodnog dana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslogs`
--
ALTER TABLE `accesslogs`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_LOGA`);

--
-- Indexes for table `aktivnosti`
--
ALTER TABLE `aktivnosti`
  ADD PRIMARY KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_KORISNIKA`,`ID_FAJLA`,`ID_AKTIVNOSTI`),
  ADD KEY `FK_AKTIVNOS_AKTIVNOST_FAJLOVI` (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`),
  ADD KEY `FK_AKTIVNOS_KORISNIKO_KORISNIC` (`ID_KORISNIKA`);

--
-- Indexes for table `deljenja`
--
ALTER TABLE `deljenja`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_PODELE`);

--
-- Indexes for table `fajlovi`
--
ALTER TABLE `fajlovi`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`),
  ADD KEY `FK_FAJLOVI_FAJLPREVI_FAJLPREV` (`FAJ_ID_KORISNIKA`,`FAJ_ID_VERZIJE`,`FAJ_ID_TIPA_FAJLA`,`FAJ_ID_FAJLA`,`ID_PREVIEWA`),
  ADD KEY `FK_FAJLOVI_FOLDER_SA_FOLDERI` (`ID_FOLDERA`),
  ADD KEY `FK_FAJLOVI_TIP_FAJLA_TIPOVIFA` (`ID_TIPA_FAJLA`),
  ADD KEY `FK_FAJLOVI_VERZIJA_F_VERZIJE` (`ID_VERZIJE`);

--
-- Indexes for table `fajlovi_za_deljenje`
--
ALTER TABLE `fajlovi_za_deljenje`
  ADD PRIMARY KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_KORISNIKA`,`ID_PODELE`,`ID_FAJLA`),
  ADD KEY `FK_FAJLOVI__FAJLOVI_Z_DELJENJA` (`ID_KORISNIKA`,`ID_PODELE`),
  ADD KEY `FK_FAJLOVI__FAJLOVI_Z_FAJLOVI` (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`);

--
-- Indexes for table `fajlpreview`
--
ALTER TABLE `fajlpreview`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`,`ID_PREVIEWA`);

--
-- Indexes for table `favoriti`
--
ALTER TABLE `favoriti`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_FAVORITA`);

--
-- Indexes for table `favorit_fajl`
--
ALTER TABLE `favorit_fajl`
  ADD PRIMARY KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_KORISNIKA`,`ID_FAJLA`,`ID_FAVORITA`),
  ADD KEY `FK_FAVORIT__FAVORIT_F_FAJLOVI` (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`),
  ADD KEY `FK_FAVORIT__FAVORIT_F_FAVORITI` (`ID_KORISNIKA`,`ID_FAVORITA`);

--
-- Indexes for table `folderi`
--
ALTER TABLE `folderi`
  ADD PRIMARY KEY (`ID_FOLDERA`),
  ADD KEY `FK_FOLDERI_KORISNIKO_KORISNIC` (`ID_KORISNIKA`),
  ADD KEY `FK_FOLDERI_SUBFOLDER_FOLDERI` (`ID_NADFOLDERA`);

--
-- Indexes for table `istorije`
--
ALTER TABLE `istorije`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`,`ID_ISTORIJE`);

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`FAJ_ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`,`ID_KORISNIKA`,`ID_KOMENTARA`),
  ADD KEY `FK_KOMENTAR_KORISNIKO_KORISNIC` (`ID_KORISNIKA`);

--
-- Indexes for table `kome_je_podeljeno`
--
ALTER TABLE `kome_je_podeljeno`
  ADD PRIMARY KEY (`ID_POSILJAOCA`,`ID_PODELE`,`ID_PRIMAOCA`),
  ADD KEY `FK_KOME_JE__KOME_JE_P_KORISNIC` (`ID_PRIMAOCA`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`ID_KORISNIKA`),
  ADD KEY `FK_KORISNIC_KORISNIKO_STORAGE` (`STO_ID_KORISNIKA`,`ID_STORAGEA`);

--
-- Indexes for table `labeli`
--
ALTER TABLE `labeli`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`,`ID_LABELE`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`,`ID_METADATE`);

--
-- Indexes for table `notifikacije`
--
ALTER TABLE `notifikacije`
  ADD PRIMARY KEY (`ID_NOTIFIKACIJE`),
  ADD KEY `FK_NOTIFIKA_KORISNIKO_KORISNIC` (`ID_KORISNIKA`);

--
-- Indexes for table `permisije`
--
ALTER TABLE `permisije`
  ADD PRIMARY KEY (`ID_PERMISIJE`),
  ADD KEY `FK_PERMISIJ_PERMISIJE_FAJLOVI` (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`),
  ADD KEY `FK_PERMISIJ_STA_KORIS_KORISNIC` (`ID_KORISNIKA`);

--
-- Indexes for table `podesavanja`
--
ALTER TABLE `podesavanja`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_PODESAVANJA`);

--
-- Indexes for table `spam`
--
ALTER TABLE `spam`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_SPAMA`);

--
-- Indexes for table `spam_fajl`
--
ALTER TABLE `spam_fajl`
  ADD PRIMARY KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_KORISNIKA`,`ID_SPAMA`,`ID_FAJLA`),
  ADD KEY `FK_SPAM_FAJ_SPAM_FAJL_SPAM` (`ID_KORISNIKA`,`ID_SPAMA`),
  ADD KEY `FK_SPAM_FAJ_SPAM_FAJL_FAJLOVI` (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_STORAGEA`);

--
-- Indexes for table `tipovifajlova`
--
ALTER TABLE `tipovifajlova`
  ADD PRIMARY KEY (`ID_TIPA_FAJLA`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`ID_KORISNIKA`,`ID_TRASHA`);

--
-- Indexes for table `trash_fajl`
--
ALTER TABLE `trash_fajl`
  ADD PRIMARY KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_KORISNIKA`,`ID_TRASHA`,`ID_FAJLA`),
  ADD KEY `FK_TRASH_FA_TRASH_FAJ_TRASH` (`ID_KORISNIKA`,`ID_TRASHA`),
  ADD KEY `FK_TRASH_FA_TRASH_FAJ_FAJLOVI` (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`);

--
-- Indexes for table `verzije`
--
ALTER TABLE `verzije`
  ADD PRIMARY KEY (`ID_VERZIJE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accesslogs`
--
ALTER TABLE `accesslogs`
  ADD CONSTRAINT `FK_ACCESSLO_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `aktivnosti`
--
ALTER TABLE `aktivnosti`
  ADD CONSTRAINT `FK_AKTIVNOS_AKTIVNOST_FAJLOVI` FOREIGN KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`),
  ADD CONSTRAINT `FK_AKTIVNOS_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `deljenja`
--
ALTER TABLE `deljenja`
  ADD CONSTRAINT `FK_DELJENJA_KO_JE_POD_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `fajlovi`
--
ALTER TABLE `fajlovi`
  ADD CONSTRAINT `FK_FAJLOVI_FAJLPREVI_FAJLPREV` FOREIGN KEY (`FAJ_ID_KORISNIKA`,`FAJ_ID_VERZIJE`,`FAJ_ID_TIPA_FAJLA`,`FAJ_ID_FAJLA`,`ID_PREVIEWA`) REFERENCES `fajlpreview` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`, `ID_PREVIEWA`),
  ADD CONSTRAINT `FK_FAJLOVI_FOLDER_SA_FOLDERI` FOREIGN KEY (`ID_FOLDERA`) REFERENCES `folderi` (`ID_FOLDERA`),
  ADD CONSTRAINT `FK_FAJLOVI_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`),
  ADD CONSTRAINT `FK_FAJLOVI_TIP_FAJLA_TIPOVIFA` FOREIGN KEY (`ID_TIPA_FAJLA`) REFERENCES `tipovifajlova` (`ID_TIPA_FAJLA`),
  ADD CONSTRAINT `FK_FAJLOVI_VERZIJA_F_VERZIJE` FOREIGN KEY (`ID_VERZIJE`) REFERENCES `verzije` (`ID_VERZIJE`);

--
-- Constraints for table `fajlovi_za_deljenje`
--
ALTER TABLE `fajlovi_za_deljenje`
  ADD CONSTRAINT `FK_FAJLOVI__FAJLOVI_Z_DELJENJA` FOREIGN KEY (`ID_KORISNIKA`,`ID_PODELE`) REFERENCES `deljenja` (`ID_KORISNIKA`, `ID_PODELE`),
  ADD CONSTRAINT `FK_FAJLOVI__FAJLOVI_Z_FAJLOVI` FOREIGN KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`);

--
-- Constraints for table `fajlpreview`
--
ALTER TABLE `fajlpreview`
  ADD CONSTRAINT `FK_FAJLPREV_FAJLPREVI_FAJLOVI` FOREIGN KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`);

--
-- Constraints for table `favoriti`
--
ALTER TABLE `favoriti`
  ADD CONSTRAINT `FK_FAVORITI_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `favorit_fajl`
--
ALTER TABLE `favorit_fajl`
  ADD CONSTRAINT `FK_FAVORIT__FAVORIT_F_FAJLOVI` FOREIGN KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`),
  ADD CONSTRAINT `FK_FAVORIT__FAVORIT_F_FAVORITI` FOREIGN KEY (`ID_KORISNIKA`,`ID_FAVORITA`) REFERENCES `favoriti` (`ID_KORISNIKA`, `ID_FAVORITA`);

--
-- Constraints for table `folderi`
--
ALTER TABLE `folderi`
  ADD CONSTRAINT `FK_FOLDERI_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`),
  ADD CONSTRAINT `FK_FOLDERI_SUBFOLDER_FOLDERI` FOREIGN KEY (`ID_NADFOLDERA`) REFERENCES `folderi` (`ID_FOLDERA`);

--
-- Constraints for table `istorije`
--
ALTER TABLE `istorije`
  ADD CONSTRAINT `FK_ISTORIJE_ISTORIJA__FAJLOVI` FOREIGN KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`);

--
-- Constraints for table `komentari`
--
ALTER TABLE `komentari`
  ADD CONSTRAINT `FK_KOMENTAR_KOMENTARI_FAJLOVI` FOREIGN KEY (`FAJ_ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`),
  ADD CONSTRAINT `FK_KOMENTAR_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `kome_je_podeljeno`
--
ALTER TABLE `kome_je_podeljeno`
  ADD CONSTRAINT `FK_KOME_JE__KOME_JE_P_DELJENJA` FOREIGN KEY (`ID_POSILJAOCA`,`ID_PODELE`) REFERENCES `deljenja` (`ID_KORISNIKA`, `ID_PODELE`),
  ADD CONSTRAINT `FK_KOME_JE__KOME_JE_P_KORISNIC` FOREIGN KEY (`ID_PRIMAOCA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD CONSTRAINT `FK_KORISNIC_KORISNIKO_STORAGE` FOREIGN KEY (`STO_ID_KORISNIKA`,`ID_STORAGEA`) REFERENCES `storage` (`ID_KORISNIKA`, `ID_STORAGEA`);

--
-- Constraints for table `labeli`
--
ALTER TABLE `labeli`
  ADD CONSTRAINT `FK_LABELI_LABELA_FA_FAJLOVI` FOREIGN KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`);

--
-- Constraints for table `metadata`
--
ALTER TABLE `metadata`
  ADD CONSTRAINT `FK_METADATA_METAPODAC_FAJLOVI` FOREIGN KEY (`ID_KORISNIKA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`);

--
-- Constraints for table `notifikacije`
--
ALTER TABLE `notifikacije`
  ADD CONSTRAINT `FK_NOTIFIKA_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `permisije`
--
ALTER TABLE `permisije`
  ADD CONSTRAINT `FK_PERMISIJ_PERMISIJE_FAJLOVI` FOREIGN KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`),
  ADD CONSTRAINT `FK_PERMISIJ_STA_KORIS_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `podesavanja`
--
ALTER TABLE `podesavanja`
  ADD CONSTRAINT `FK_PODESAVA_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `spam`
--
ALTER TABLE `spam`
  ADD CONSTRAINT `FK_SPAM_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `spam_fajl`
--
ALTER TABLE `spam_fajl`
  ADD CONSTRAINT `FK_SPAM_FAJ_SPAM_FAJL_FAJLOVI` FOREIGN KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`),
  ADD CONSTRAINT `FK_SPAM_FAJ_SPAM_FAJL_SPAM` FOREIGN KEY (`ID_KORISNIKA`,`ID_SPAMA`) REFERENCES `spam` (`ID_KORISNIKA`, `ID_SPAMA`);

--
-- Constraints for table `storage`
--
ALTER TABLE `storage`
  ADD CONSTRAINT `FK_STORAGE_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `trash`
--
ALTER TABLE `trash`
  ADD CONSTRAINT `FK_TRASH_KORISNIKO_KORISNIC` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`ID_KORISNIKA`);

--
-- Constraints for table `trash_fajl`
--
ALTER TABLE `trash_fajl`
  ADD CONSTRAINT `FK_TRASH_FA_TRASH_FAJ_FAJLOVI` FOREIGN KEY (`ID_VLASNIKA_FAJLA`,`ID_VERZIJE`,`ID_TIPA_FAJLA`,`ID_FAJLA`) REFERENCES `fajlovi` (`ID_KORISNIKA`, `ID_VERZIJE`, `ID_TIPA_FAJLA`, `ID_FAJLA`),
  ADD CONSTRAINT `FK_TRASH_FA_TRASH_FAJ_TRASH` FOREIGN KEY (`ID_KORISNIKA`,`ID_TRASHA`) REFERENCES `trash` (`ID_KORISNIKA`, `ID_TRASHA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
