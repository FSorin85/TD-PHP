-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: 20 Mars 2015 à 15:35
-- Version du serveur: 5.5.27-log
-- Version de PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tele`
--
DROP DATABASE IF EXISTS tele; 
CREATE DATABASE tele; 
USE tele;

-- --------------------------------------------------------

--
-- Structure de la table `chaine`
--


CREATE TABLE IF NOT EXISTS `chaine` (
  `chaine_id` int NOT NULL AUTO_INCREMENT,
  `nom_chaine` varchar(20) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` char(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `telephone` char(14) NOT NULL,
  `payante` int(1) NOT NULL,
  `fax` char(14) DEFAULT NULL,
  PRIMARY KEY (`chaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chaine`
--

INSERT INTO `chaine` (`chaine_id`, `nom_chaine`, `adresse`, `code_postal`, `ville`, `telephone`, `payante`, `fax`) VALUES
(1, 'tf1', '1 quai point du jour', '92100', 'boulogne billancourt', '0141411234', b'0', NULL),
(2, 'france 2', '7 espl. h de france', '75907', 'paris', '0156224242', b'0', NULL),
(3, 'france 3', '2 rue gaetan rondeau', '44200', 'nantes', '0240994444', b'0', '0240994455'),
(4, 'canal +', '85 qu andre citroen', '75015', 'paris', '0144251000', b'0', '0144251234'),
(5, 'arte', '2 rue de la fonderie', '67000', 'strasbourg', '0388142222', b'0', NULL),
(6, 'm 6', '89 av ch de gaulle', '92575', 'neuilly sur seine', '0141926000', b'0', '0141926610'),
(7, 'rtl 9', '22 rue bayard', '75008', 'paris', '0140704070', b'1', NULL),
(8, 'tmc', '51 bd chapelle', '75010', 'paris', '0148781616', b'1', '0148781671'),
(9, 'tv 5', '19 r cognacq jay', '75007', 'paris', '0144185555', b'1', '0144185505'),
(10, 'eurosport', 'imm. quai ouest', '92100', 'boulogne billancourt', '0146106100', b'1', '0146106161'),
(11, 'cine cinema', '89 av ch de gaulle', '92200', 'neuilly sur seine', '0146404400', b'1', NULL),
(12, 'cinestar', '87 rue des rosiers', '92500', 'rueil malmaison', '0147497171', b'1', '0147499360'),
(13, 'paris premiere', '14 pl vins de france', '75012', 'paris', '0153448282', b'1', '0153448249'),
(14, 'canal jimmy', '18 rue des platanes', '75036', 'paris', '0154235847', b'1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table programmation
--

CREATE TABLE programmation (
  programmation_id int NOT NULL,
  chaine_id int NOT NULL,
  programme_id int NOT NULL,
  date_diffusion date NOT NULL,
  heure Time NOT NULL,
  PRIMARY KEY (programmation_id)
);


--
-- Contenu de la table programmation
--

INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(1 ,1, 1, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(2 ,1, 2, '2015-05-01', '15:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(3 ,1, 3, '2015-05-01', '17:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(4 ,1, 3, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(5 ,1, 3, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(6 ,1, 3, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(7 ,1, 3, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(8 ,1, 3, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(9 ,1, 4, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(10 ,1, 5, '2015-05-01', '14:30:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(11 ,1, 5, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(12 ,1, 33, '2015-05-04', '12:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(13 ,1, 34, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(14 ,1, 34, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(15 ,1, 34, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(16 ,1, 34, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(17 ,1, 66, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(18 ,1, 66, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(19 ,1, 66, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(20 ,1, 66, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(21 ,1, 66, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(22 ,1, 67, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(23 ,1, 68, '2015-05-02', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(24 ,1, 68, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(25 ,1, 68, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(26 ,1, 68, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(27 ,1, 69, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(28 ,1, 70, '2015-05-02', '13:48:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(29 ,1, 70, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(30 ,1, 70, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(31 ,1, 70, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(32 ,1, 101, '2015-05-06', '12:30:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(33 ,1, 102, '2015-05-06', '15:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(34 ,1, 130, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(35 ,1, 131, '2015-05-03', '14:24:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(36 ,1, 160, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(37 ,1, 161, '2015-05-05', '14:12:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(38 ,2, 6, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(39 ,2, 7, '2015-05-01', '14:30:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(40 ,2, 8, '2015-05-01', '16:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(41 ,2, 9, '2015-05-01', '16:48:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(42 ,2, 35, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(43 ,2, 35, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(44 ,2, 35, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(45 ,2, 35, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(46 ,2, 36, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(47 ,2, 36, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(48 ,2, 36, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(49 ,2, 36, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(50 ,2, 37, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(51 ,2, 38, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(52 ,2, 38, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(53 ,2, 38, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(54 ,2, 38, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(55 ,2, 39, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(56 ,2, 39, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(57 ,2, 39, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(58 ,2, 39, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(59 ,2, 40, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(60 ,2, 41, '2015-05-04', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(61 ,2, 56, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(62 ,2, 56, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(63 ,2, 56, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(64 ,2, 56, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(65 ,2, 75, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(66 ,2, 75, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(67 ,2, 75, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(68 ,2, 75, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(69 ,2, 88, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(70 ,2, 88, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(71 ,2, 88, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(72 ,2, 103, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(73 ,2, 103, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(74 ,2, 103, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(75 ,2, 104, '2015-05-06', '13:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(76 ,2, 105, '2015-05-06', '14:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(77 ,2, 106, '2015-05-06', '17:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(78 ,2, 132, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(79 ,2, 132, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(80 ,2, 132, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(81 ,2, 132, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(82 ,2, 133, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(83 ,2, 134, '2015-05-03', '13:54:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(84 ,2, 162, '2015-05-03', '15:48:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(85 ,2, 162, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(86 ,2, 162, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(87 ,2, 163, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(88 ,2, 164, '2015-05-05', '14:30:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(89 ,3, 10, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(90 ,3, 11, '2015-05-01', '14:54:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(91 ,3, 42, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(92 ,3, 42, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(93 ,3, 43, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(94 ,3, 43, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(95 ,3, 44, '2015-05-04', '12:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(96 ,3, 45, '2015-05-04', '13:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(97 ,3, 57, '2015-05-04', '16:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(98 ,3, 57, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(99 ,3, 57, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(100 ,3, 59, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(101 ,3, 77, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(102 ,3, 77, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(103 ,3, 77, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(104 ,3, 77, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(105 ,3, 77, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(106 ,3, 78, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(107 ,3, 79, '2015-05-02', '14:24:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(108 ,3, 107, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(109 ,3, 107, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(110 ,3, 107, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(111 ,3, 108, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(112 ,3, 109, '2015-05-06', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(113 ,3, 110, '2015-05-06', '15:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(114 ,3, 111, '2015-05-06', '16:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(115 ,3, 136, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(116 ,3, 136, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(117 ,3, 136, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(118 ,3, 136, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(119 ,3, 137, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(120 ,3, 138, '2015-05-03', '14:54:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(121 ,3, 165, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(122 ,3, 165, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(123 ,3, 166, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(124 ,3, 167, '2015-05-05', '12:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(125 ,3, 167, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(126 ,3, 168, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(127 ,3, 168, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(128 ,3, 168, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(129 ,3, 168, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(130 ,3, 168, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(131 ,3, 169, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(132 ,4, 12, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(133 ,4, 12, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(134 ,4, 13, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(135 ,4, 13, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(136 ,4, 14, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(137 ,4, 24, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(138 ,4, 46, '2015-05-04', '13:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(139 ,4, 47, '2015-05-04', '15:12:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(140 ,4, 47, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(141 ,4, 48, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(142 ,4, 48, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(143 ,4, 81, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(144 ,4, 81, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(145 ,4, 82, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(146 ,4, 82, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(147 ,4, 83, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(148 ,4, 83, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(149 ,4, 111, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(150,4, 112, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(151 ,4, 112, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(152 ,4, 113, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(153 ,4, 113, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(154 ,4, 114, '2015-05-06', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(155 ,4, 115, '2015-05-06', '15:54:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(156 ,4, 116, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(157 ,4, 116, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(158 ,4, 139, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(159 ,4, 139, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(160 ,4, 140, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(161 ,4, 140, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(162 ,4, 141, '2015-05-03', '14:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(163 ,4, 142, '2015-05-03', '15:48:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(164 ,4, 143, '2015-05-03', '17:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(165 ,4, 170, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(166 ,4, 171, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(167 ,4, 171, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(168 ,4, 172, '2015-05-05', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(169 ,4, 173, '2015-05-05', '15:54:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(170 ,5, 15, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(171 ,5, 49, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(172 ,5, 51, '2015-05-04', '12:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(173 ,5, 84, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(174 ,5, 86, '2015-05-02', '14:24:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(175 ,5, 119, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(176 ,5, 122, '2015-05-06', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(177 ,5, 148, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(178 ,5, 174, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(179 ,5, 178, '2015-05-05', '13:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(180 ,5, 179, '2015-05-05', '15:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(181 ,6, 16, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(182 ,6, 17, '2015-05-01', '12:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(183 ,6, 18, '2015-05-01', '14:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(184 ,6, 18, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(185 ,6, 50, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(186 ,6, 52, '2015-05-04', '13:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(187 ,6, 53, '2015-05-04', '15:12:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(188 ,6, 85, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(189 ,6, 87, '2015-05-02', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(190 ,6, 118, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(191 ,6, 120, '2015-05-06', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(192 ,6, 121, '2015-05-06', '16:24:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(193 ,6, 144, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(194 ,6, 145, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(195 ,6, 145, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(196 ,6, 146, '2015-05-03', '12:12:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(197 ,6, 147, '2015-05-03', '13:48:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(198 ,6, 175, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(199 ,6, 176, '2015-05-05', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(200 ,6, 177, '2015-05-05', '16:24:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(201 ,7, 20, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(202 ,7, 25, '2015-05-01', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(203 ,7, 58, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(204,7, 88, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(205 ,7, 88, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(206 ,7, 88, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(207 ,7, 88, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(208 ,7, 88, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(209 ,7, 89, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(210 ,7, 90, '2015-05-02', '14:12:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(211 ,7, 123, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(212,7, 149, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(213 ,7, 151, '2015-05-03', '14:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(214 ,7, 155, '2015-05-03', '15:54:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(215 ,7, 180, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(216 ,7, 181, '2015-05-05', '14:30:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(217 ,8, 23, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(218 ,8, 27, '2015-05-01', '13:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(219 ,8, 54, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(220 ,8, 63, '2015-05-04', '14:18:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(221 ,8, 64, '2015-05-04', '16:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(222 ,8, 91, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(223 ,8, 93, '2015-05-02', '14:06:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(224 ,8, 124, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(225 ,8, 150, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(226 ,8, 182, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(227 ,9, 6, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(228 ,9, 26, '2015-05-01', '14:30:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(229 ,9, 26, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(230 ,9, 29, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(231 ,9, 56, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(232 ,9, 56, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(233 ,9, 56, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(234 ,9, 56, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(235 ,9, 56, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(236 ,9, 57, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(237 ,9, 57, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(238 ,9, 57, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(239 ,9, 57, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(240 ,9, 57, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(241 ,9, 57, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(242 ,9, 92, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(243 ,9, 135, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(244 ,10, 95, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(245 ,10, 96, '2015-05-02', '12:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(246 ,11, 21, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(247 ,11, 21, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(248 ,11, 22, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(249 ,11, 22, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(250 ,11, 22, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(251 ,11, 22, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(252 ,11, 59, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(253 ,11, 59, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(254 ,11, 62, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(255 ,11, 62, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(256 ,11, 62, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(257 ,11, 65, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(258 ,11, 65, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(259 ,11, 65, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(260 ,11, 97, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(261 ,11, 97, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(262 ,11, 98, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(263 ,11, 98, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(264 ,11, 125, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(265 ,11, 125, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(266 ,11, 125, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(267 ,11, 126, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(268 ,11, 126, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(269 ,11, 156, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(270 ,11, 156, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(271 ,11, 156, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(273 ,11, 157, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(274 ,11, 157, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(275 ,11, 157, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(276 ,11, 184, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(277 ,11, 184, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(278 ,11, 184, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(279 ,12, 31, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(280 ,12, 31, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(281 ,12, 31, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(282 ,12, 32, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(283 ,12, 32, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(284 ,12, 32, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(285 ,12, 55, '2015-05-04', '14:36:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(286 ,12, 55, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(287 ,12, 61, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(288 ,12, 61, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(289 ,12, 61, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(290 ,12, 61, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(291 ,12, 99, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(292 ,12, 99, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(293 ,12, 100, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(294 ,12, 100, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(295 ,12, 100, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(296 ,12, 100, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(297 ,12, 127, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(298 ,12, 127, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(299 ,12, 128, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(301 ,12, 128, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(302 ,12, 128, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(303 ,12, 129, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(304 ,12, 129, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(305 ,12, 158, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(306 ,12, 158, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(307 ,12, 159, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(308 ,12, 159, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(309 ,12, 159, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(310 ,12, 185, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(311 ,12, 185, '2015-05-06', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(312 ,12, 186, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(313 ,12, 186, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(314 ,12, 186, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(315 ,12, 187, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(316 ,12, 187, '2015-05-05', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(317 ,13, 28, '2015-05-01', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(318 ,13, 30, '2015-05-01', '14:42:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(319 ,13, 60, '2015-05-04', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(320 ,13, 94, '2015-05-02', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(321 ,13, 152, '2015-05-03', '12:00:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(322 ,13, 153, '2015-05-03', '13:48:00');
INSERT INTO programmation (programmation_id,chaine_id, programme_id, date_diffusion, heure) VALUES(323 ,13, 154, '2015-05-03', '15:54:00');

-- --------------------------------------------------------

--
-- Structure de la table programmes
--

CREATE TABLE IF NOT EXISTS `programmes` (
  `programme_id` int NOT NULL AUTO_INCREMENT,
  `realisateur_id` int NOT NULL,
  `type_id` int NOT NULL,
  `duree` int NOT NULL,
  `nom_programme` varchar(25) NOT NULL,
  PRIMARY KEY (`programme_id`),
  KEY `fk_programm_realiseur_id` (`realisateur_id`),
  KEY `fk_programm_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table programmes
--

INSERT INTO `programmes` (`programme_id`, `realisateur_id`, `type_id`, `duree`, `nom_programme`) VALUES 
('1', 1, '2', 165, 'braveheart'),
('10', 9, '1', 145, 'sports dimanche'),
('100', 59, '2', 105, 'randonnee pr un tueur'),
('101', 151, '1', 140, 'les ptites canailles'),
('102', 152, '1', 110, 'sans aucun doute'),
('103', 132, '1', 55, 'hartley coeurs a vif'),
('104', 153, '1', 75, 'bouillon de culture'),
('105', 155, '1', 135, 'qu est il arrive a b jane'),
('106', 154, '1', 120, 'p.j.:baby-sitter'),
('107', 129, '1', 55, 'on s occupe de vous'),
('108', 156, '1', 105, 'le retour du pere'),
('109', 159, '1', 60, 'ls dossiers de l histoire'),
('11', 10, '1', 60, 'politique dimanche'),
('110', 157, '1', 65, 'thalassa'),
('111', 176, '1', 95, 'l equipe du dimanche'),
('112', 75, '1', 50, '1 an de +'),
('113', 160, '2', 105, 'le festin chinois'),
('114', 161, '1', 90, 'tempete ds un verre d eau'),
('115', 162, '1', 25, 'en route pr ls oscars'),
('116', 174, '1', 85, 'm kael ctre w n compagny'),
('117', 163, '1', 85, 'menteur menteur'),
('118', 164, '2', 105, 'un troublant secret'),
('119', 167, '1', 105, 'les sables mouvants'),
('12', 11, '1', 115, 'on connait la chanson'),
('120', 165, '1', 115, 'mister biz'),
('121', 166, '2', 110, 'x-files'),
('122', 141, '2', 90, 'prise d otages en direct'),
('123', 169, '3', 95, 'joy a moscou'),
('124', 168, '2', 105, 'detours amoureux'),
('125', 170, '2', 125, 'seven'),
('126', 175, '3', 75, 'le gang des violeuses'),
('127', 13, '1', 100, 'le cercle des amies'),
('128', 171, '1', 105, 'trois places pr le 26'),
('129', 93, '3', 95, 'les nuits avec cherry'),
('13', 13, '2', 110, 'les annees rebelles'),
('130', 53, '1', 120, 'les visiteurs'),
('131', 62, '1', 60, 'ouragan chez ls brock'),
('132', 65, '1', 40, 'qui est qui ?'),
('133', 110, '1', 95, 'les montagnes bleues (2)'),
('134', 66, '1', 95, 'la vie a l endroit'),
('135', 68, '1', 30, 'grands ;urmands'),
('136', 69, '1', 5, 'un livre un jour'),
('137', 70, '1', 145, 'bouvard du rire'),
('138', 71, '1', 55, 'nimbus'),
('139', 72, '1', 110, 'looking for richard'),
('14', 12, '1', 115, 'the end of violence'),
('140', 73, '1', 100, 'haute trahison'),
('141', 74, '2', 90, 'la fille d en face'),
('142', 78, '1', 95, 'oiseau plumage de cristal'),
('143', 79, '1', 375, 'foot:jour d europe'),
('144', 80, '1', 95, 'la trahison du pere'),
('145', 81, '1', 10, 'e=m6'),
('146', 83, '2', 80, 'la nuit du mal'),
('147', 82, '1', 120, 'ls chemins impossibles'),
('148', 84, '1', 200, 'georges perec'),
('149', 85, '2', 100, 'meurtres sur repondeur'),
('15', 14, '1', 60, 'les carnets de noe'),
('150', 88, '1', 100, 'hocus pocus'),
('151', 87, '3', 95, 'confessions erotiques'),
('152', 94, '1', 90, 'le gai savoir'),
('153', 95, '1', 105, 'etats d ame'),
('154', 96, '3', 50, 'courts particuliers'),
('155', 86, '2', 100, 'contact mortel'),
('156', 89, '1', 90, 'de la neige pour noel ?'),
('157', 90, '2', 110, 'nom de code : nina'),
('158', 91, '2', 105, 'billy bathgate'),
('159', 92, '1', 130, 'le nom de la rose'),
('16', 15, '1', 30, 'sports evenement:stockcar'),
('160', 124, '1', 110, 'navarro'),
('161', 123, '2', 110, 'piege a domicile'),
('162', 125, '1', 80, 'c est au programme'),
('163', 126, '1', 125, 'envoye special'),
('164', 127, '3', 105, 'les grand fusil'),
('165', 128, '1', 70, 'un jour en france'),
('166', 130, '1', 35, 'cote jardins'),
('167', 131, '1', 35, 'le kadox'),
('168', 9, '1', 10, 'tout le sport'),
('169', 133, '2', 150, 'au nom du pere'),
('17', 17, '3', 85, 'amours detournes'),
('170', 134, '2', 90, 'l evasion parfaite'),
('171', 135, '1', 105, 'pilotes de choix'),
('172', 137, '1', 90, 'les amateurs'),
('173', 138, '2', 95, 'les chiens enrages'),
('174', 77, '1', 80, 'des lames et des femmes'),
('175', 139, '1', 105, 'blessure d amour'),
('176', 140, '1', 115, 'le miroir se brisa'),
('177', 78, '3', 105, 'suspiria'),
('178', 142, '1', 100, 'el dorado'),
('179', 143, '1', 185, 'guerres aux mains sales'),
('18', 16, '1', 120, 'zone interdite'),
('180', 144, '2', 125, 'histoire de bruce lee'),
('181', 145, '1', 110, 'les copains d abord'),
('182', 146, '1', 115, 'brewester & 6 chenapans'),
('183', 150, '1', 110, 'cape et poignard'),
('184', 147, '1', 145, 'une etoile est nee'),
('185', 148, '1', 95, 'la salle de bain'),
('186', 149, '1', 100, 'qd ls jumelles s emmelent'),
('187', 120, '1', 100, 'le club des ex'),
('19', 18, '2', 105, 'meteor'),
('2', 2, '1', 100, 'les rois du sport'),
('20', 19, '1', 105, 'la bataille el alamein'),
('21', 24, '2', 105, 'folie amoureuse'),
('22', 26, '3', 90, 'le cavalier du diable'),
('23', 41, '1', 50, 'cosby mysteries'),
('24', 106, '1', 85, 'par amour pour gillian'),
('25', 20, '3', 115, 'psychose 2'),
('26', 23, '1', 105, 'mambo et tcha tcha'),
('27', 21, '1', 125, 'bataille rio de la plata'),
('28', 29, '2', 135, 'henry et june'),
('29', 158, '1', 55, 'faut pas rever'),
('3', 8, '1', 30, 'le juste prix'),
('30', 22, '1', 100, 'au hasard baltazar'),
('31', 28, '1', 110, 'monsieur le depute'),
('32', 27, '1', 130, 'last action hero'),
('33', 98, '1', 210, 'foot:ligue des champions'),
('34', 61, '1', 40, 'exclusif'),
('35', 63, '1', 25, 'amour, gloire et beaute'),
('36', 99, '1', 40, 'les z amours'),
('37', 35, '1', 60, 'derrick:mauvaise reussite'),
('38', 36, '1', 40, 'la chance aux chansons'),
('39', 64, '1', 30, 'ds chiffres & des lettres'),
('4', 4, '1', 125, 'football : metz-nantes'),
('40', 100, '1', 105, 'nora'),
('41', 101, '1', 110, 'ca se discute'),
('42', 67, '1', 25, 'a table'),
('43', 102, '1', 35, 'c est pas sorcier'),
('44', 104, '1', 50, 'un siecle d ecrivains'),
('45', 103, '1', 130, 'des racines et des ailes'),
('46', 105, '1', 75, ';r;'),
('47', 107, '2', 120, 'speed 2'),
('48', 108, '1', 90, 'un grand cri d amour'),
('49', 109, '1', 30, 'au nom de la loi'),
('5', 5, '1', 35, 'video gag'),
('50', 110, '1', 55, 'coeur caraibes'),
('51', 113, '1', 145, 'ariane a naxos'),
('52', 111, '1', 105, 'vacances volees'),
('53', 112, '1', 100, 'ally mcbeal'),
('54', 115, '1', 115, 'richard coeur de lion'),
('55', 121, '1', 90, 'la croix et la maniere'),
('56', 172, '1', 25, 'pyramide'),
('57', 37, '1', 30, 'questions pr un champion'),
('58', 114, '1', 220, 'operation nadine'),
('59', 119, '1', 135, 'yanks'),
('6', 6, '1', 125, 'vivement dimanche'),
('60', 122, '1', 55, 'special lingerie'),
('61', 38, '1', 105, 'jumanji'),
('62', 118, '2', 110, 'bound'),
('63', 116, '1', 120, 'taggart:fausse note'),
('64', 51, '1', 105, 'gil blas de santiliane'),
('65', 117, '1', 100, 'un sac de billes'),
('66', 30, '1', 50, 'les feux de l amour'),
('67', 33, '1', 105, 'un homme en colere'),
('68', 31, '1', 55, 'arabesque'),
('69', 34, '1', 90, 'y a pas photo !'),
('7', 7, '1', 80, 'stade 2'),
('70', 32, '1', 25, 'sunset beach'),
('71', 35, '1', 65, 'derrick:tous a bord'),
('72', 37, '1', 35, 'ds chiffres & des lettres'),
('73', 110, '1', 105, 'les montagnes bleues (1)'),
('74', 39, '1', 50, 'l entretien'),
('75', 173, '1', 30, 'amoureusement votre'),
('76', 40, '1', 105, 'les louves'),
('77', 41, '1', 30, 'cosby'),
('78', 43, '1', 120, 'le nouveau monde'),
('79', 42, '2', 130, 'les valseuses'),
('8', 6, '1', 35, 'vive dimanche prochain'),
('80', 44, '2', 120, 'ne pas avaler'),
('81', 136, '2', 115, 'les pleins pouvoirs'),
('82', 162, '1', 5, 'le journal du cinema'),
('83', 75, '1', 55, 't.v. +'),
('84', 45, '1', 120, 'le septieme jure'),
('85', 46, '1', 105, 'scene menage au paradis'),
('86', 48, '1', 85, 'i was on mars'),
('87', 47, '2', 115, 'money train'),
('88', 35, '1', 55, 'derrick'),
('89', 49, '1', 110, 'les tortues ninja'),
('9', 3, '2', 110, 'piege a grande vitesse'),
('90', 50, '2', 95, 'descente aux enfers'),
('91', 51, '1', 105, 'gil blas de santiliane'),
('92', 53, '2', 105, 'les petits calins'),
('93', 52, '2', 105, 'outland'),
('94', 60, '1', 95, 'man trouble'),
('95', 54, '1', 30, 'rallye raid'),
('96', 55, '1', 60, 'boxe:cooper/gaudens'),
('97', 56, '1', 105, 'un joueur a la hauteur'),
('98', 57, '1', 115, 'les revoltes du bounty'),
('99', 58, '2', 95, 'just friends');
-- --------------------------------------------------------

--
-- Structure de la table realisateur
--

CREATE TABLE IF NOT EXISTS `realisateur` (
  `realisateur_id` int NOT NULL AUTO_INCREMENT,
  `nom_realisateur` varchar(50) NOT NULL,
  PRIMARY KEY (`realisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table realisateur
--

INSERT INTO realisateur (realisateur_id, nom_realisateur) VALUES(1, 'mel gibson'),
(2, 'pierre colombier'),
(3, 'geoff murphy'),
(4, 'thierry roland'),
(5, 'bernard montiel'),
(6, 'michel drucker'),
(7, 'pierre sled'),
(8, 'philippe risoli'),
(9, 'henri sannier'),
(10, 'christine okrent'),
(11, 'alain resnais'),
(12, 'wim wenders'),
(13, 'pat o connor'),
(14, 'olivier chiabodo'),
(15, 'yves noel'),
(16, 'bernard de la villar'),
(17, 'a. isserman'),
(18, 'ronald neame'),
(19, 'giorgio ferroni'),
(20, 'richard franklin'),
(21, 'michael powell'),
(22, 'robert bresson'),
(23, 'bernadette lafont'),
(24, 'robbie coltrane'),
(25, 'robin davis'),
(26, 'ernest dickerson'),
(27, 'john mc tiernan'),
(28, 'jonathan lynn'),
(29, 'philip kaufman'),
(30, 'eric braeden'),
(31, 'angela lansbury'),
(32, 'clive robertson'),
(33, 'denis malleval'),
(34, 'pierre bataille'),
(35, 'horst tappert'),
(36, 'pascal sevran'),
(37, 'julien lepers'),
(38, 'robin williams'),
(39, 'alain duhamel'),
(40, 'jean marc seban'),
(41, 'bill cosby'),
(42, 'bertrand blier'),
(43, 'alain corneau'),
(44, 'gary oldman'),
(45, 'georges lautner'),
(46, 'di drew'),
(47, 'joseph ruben'),
(48, 'dani levy'),
(49, 'stuart gillard'),
(50, 'bill corcoran'),
(51, 'rene jolivet'),
(52, 'peter hyams'),
(53, 'jean marie poire'),
(54, 'gerard fusil'),
(55, 'd. jefferson'),
(56, 'p. michael glaser'),
(57, 'lewis milestone'),
(58, 'marc h. wajnberg'),
(59, 'roger spottiswoode'),
(60, 'bob rafelson'),
(61, 'emmanuelle gaume'),
(62, 'david jones'),
(63, 'john mc cook'),
(64, 'laurent romejko'),
(65, 'pepita'),
(66, 'mireille dumas'),
(67, 'maite'),
(68, 'j.l. petitrenaud'),
(69, 'olivier barrot'),
(70, 'philippe bouvard'),
(71, 'elise lucet'),
(72, 'al pacino'),
(73, 'g. pan cosmatos'),
(74, 'eric schaeffer'),
(75, 'm. olivier fogiel'),
(76, 'christophe smith'),
(77, 'j.p. zern'),
(78, 'dario argento'),
(79, 'philippe bruet'),
(80, 'brian dennehy'),
(81, 'caroline avon'),
(82, 'françois clemenceau'),
(83, 'nathaniel gutman'),
(84, 'b. queysanne'),
(85, 'gary sherman'),
(86, 'hal barwood'),
(87, 'ellen c.'),
(88, 'kenny ortega'),
(89, 'sandrine veysset'),
(90, 'john badham'),
(91, 'robert benton'),
(92, 'jean j. annaud'),
(93, 'cherry b.'),
(94, 'franz o. giesbert'),
(95, 'jacques fansten'),
(96, 'gilles bourdos'),
(97, 'lagaf'),
(98, 'roger zabel'),
(99, 'j. l. reichmann'),
(100, 'edouard molinaro'),
(101, 'j. l. delarue'),
(102, 'frederic courant'),
(103, 'patrick de carolis'),
(104, 'bernard rapp'),
(105, 'eugene lourie'),
(106, 'michael pressman'),
(107, 'jan de bont'),
(108, 'josiane balasko'),
(109, 'steve mac queen'),
(110, 'paolo barzman'),
(111, 'olivier panchot'),
(112, 'calista flockhart'),
(113, 'felix breisach'),
(114, 'john strickland'),
(115, 'rex harrison'),
(116, 'peter barberfleming'),
(117, 'paul e. schulmann'),
(118, 'larry wachowski'),
(119, 'john schlesinger'),
(120, 'hugh wilson'),
(121, 'ben lewin'),
(122, 'lagerfield'),
(123, 'r. d. anderson'),
(124, 'nicolas ribowski'),
(125, 'sophie davant'),
(126, 'paul nahon'),
(127, 'duccio tessari'),
(128, 'marie laure augry'),
(129, 'valerie expert'),
(130, 'daniel danneyrolles'),
(131, 'alexandre debanne'),
(132, 'martin tony'),
(133, 'jim sheridan'),
(134, 'armand mastroianni'),
(135, 'robert markowitz'),
(136, 'clint eastwood'),
(137, 'alan taylor'),
(138, 'mario bava'),
(139, 'jack bender'),
(140, 'guy hamilton'),
(141, 'bernd schadewald'),
(142, 'marcel herbier'),
(143, 'reinhart lohmann'),
(144, 'rob cohen'),
(145, 'lawrence kasdan'),
(146, 'daniel petrie'),
(147, 'george cukor'),
(148, 'john m. lvoff'),
(149, 'jim abrahams'),
(150, 'fritz lang'),
(151, 'arthur'),
(152, 'julien courbet'),
(153, 'bernard pivot'),
(154, 'frederic krevine'),
(155, 'robert aldrich'),
(156, 'rick wallace'),
(157, 'georges pernoud'),
(158, 'sylvain augier'),
(159, 'alain de sedouy'),
(160, 'tsui hark'),
(161, 'arnold barkus'),
(162, 'isabelle giordano'),
(163, 'tom shadyac'),
(164, 's. pillsbury'),
(165, 'olivier carreras'),
(166, 'chris carpenter'),
(167, 'paul carpita'),
(168, 'noel black'),
(169, 'jean y. pavel'),
(170, 'david fincher'),
(171, 'jacques demy'),
(172, 'jacques vidermann'),
(173, 'philip brown'),
(174, 'michael kael'),
(175, 'jodie melrose'),
(176, 'thierry gilardi');

-- --------------------------------------------------------

--
-- Structure de la table type_diffusion
--

CREATE TABLE IF NOT EXISTS `type_diffusion` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(25) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `type_diffusion` (`type_id`, `libelle`) VALUES
('1', 'pour la famille'),
('2', 'scene delicate'),
('3', 'pour adulte');


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `programmation`
--
ALTER TABLE programmes ADD CONSTRAINT FK_programmes_realisateur_id FOREIGN KEY (realisateur_id) REFERENCES realisateur(realisateur_id);
ALTER TABLE programmes ADD CONSTRAINT FK_programmes_type_id FOREIGN KEY (type_id) REFERENCES type_diffusion(type_id);

--
-- Contraintes pour la table `programmes`
--
ALTER TABLE programmation ADD CONSTRAINT FK_programmation_chaine_id FOREIGN KEY (chaine_id) REFERENCES chaine(chaine_id);
ALTER TABLE programmation ADD CONSTRAINT FK_programmation_programme_id FOREIGN KEY (programme_id) REFERENCES programmes(programme_id);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
