-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 07 Décembre 2022 à 16:53
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence_location2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_clients` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `e-mail` varchar(20) NOT NULL,
  PRIMARY KEY (`code_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_clients`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `e-mail`) VALUES
('Id_01', 'MAMA Joe', '0000-00-00', 'avocat', 769104204, '110 Boulevard charle', 91700, 'Nanterre', 'Gigachad@gmail.com'),
('Id_02', 'LEBRON James', '0000-00-00', 'psychiatre', 783117284, '36 avenue Henri barb', 91500, 'Ivry-sur-seine', 'Ripbozo@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `immatriculation`, `caution`) VALUES
('AD1', 2, '2022-12-05', 154, 'Id_01', 'dsfrgrdgr', 250),
('AD2', 2, '2022-12-02', 621, 'Id_02', 'IDK-420', 250);

-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE IF NOT EXISTS `reparation` (
  `Num_reparation` int(11) NOT NULL,
  `date_reparation` date DEFAULT NULL,
  `duree_reparation` varchar(100) DEFAULT NULL,
  `cout_reparation` varchar(255) DEFAULT NULL,
  `responsable_rep` varchar(255) DEFAULT NULL,
  `immatriculation` varchar(255) DEFAULT NULL,
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparation`
--

INSERT INTO `reparation` (`Num_reparation`, `date_reparation`, `duree_reparation`, `cout_reparation`, `responsable_rep`, `immatriculation`) VALUES
(1, '2022-12-08', '2semaine', '2000', 'Léon', 'dsfrgrdgr'),
(2, '2022-12-25', '1semaine', '500', 'Bob', 'IDK-420');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL DEFAULT '0',
  `carburant` varchar(10) NOT NULL DEFAULT '0',
  `couleur` varchar(20) NOT NULL DEFAULT '0',
  `nbr_place` int(11) NOT NULL DEFAULT '0',
  `nbr_porte` int(11) NOT NULL DEFAULT '0',
  `prix_achat` varchar(255) DEFAULT '0',
  `etat` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('dsfrgrdgr', 'Ford', 'Shelby gt 500', 250, 'diesel', 'bleu', 2, 3, '200 000€', 'NEUF'),
('IDK-420', 'Nissan', 'GTR', 300, 'diesel', 'blanc', 2, 3, '245 000€', 'NEUF');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_clients`);

--
-- Contraintes pour la table `reparation`
--
ALTER TABLE `reparation`
  ADD CONSTRAINT `reparation_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
