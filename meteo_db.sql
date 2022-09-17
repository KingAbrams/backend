-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 17 sep. 2022 à 18:53
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `meteo_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_nom` varchar(50) NOT NULL,
  `position_date` varchar(50) NOT NULL,
  `position_temps` varchar(50) NOT NULL,
  `position_temperature` int(4) NOT NULL,
  `position_humidite` int(4) NOT NULL,
  `position_vent` int(4) NOT NULL,
  `position_play` varchar(50) NOT NULL DEFAULT 'Faux',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`position_id`, `position_nom`, `position_date`, `position_temps`, `position_temperature`, `position_humidite`, `position_vent`, `position_play`) VALUES
(3, 'Paris', '2022-09-17T16:45:50.074Z', 'ciel dégagé', 17, 43, 23, 'Faux'),
(6, 'Toamasina', '2022-09-17T16:55:32.571Z', 'nuageux', 23, 78, 10, 'Faux'),
(9, 'Fianarantsoa', '2022-09-17T16:57:56.069Z', 'partiellement nuageux', 14, 89, 14, 'Faux'),
(10, 'Paris', '2022-09-17T17:33:26.143Z', 'ciel dégagé', 16, 47, 19, 'Faux'),
(11, 'Tuléar', '2022-09-17T17:47:50.749Z', 'nuageux', 23, 82, 12, 'Faux'),
(12, 'Tuléar', '2022-09-17T17:49:06.192Z', 'nuageux', 23, 82, 12, 'Faux'),
(13, 'Tuléar', '2022-09-17T17:50:04.856Z', 'nuageux', 23, 82, 12, 'Faux');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
