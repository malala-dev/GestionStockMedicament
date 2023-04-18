-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 25 fév. 2023 à 06:34
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_medicament`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idc` int(11) NOT NULL,
  `idf` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`idc`, `idf`, `date`) VALUES
(10, 1, '24/02/2023'),
(11, 1, '24/02/2023'),
(14, 4, '25/02/2023');

-- --------------------------------------------------------

--
-- Structure de la table `commandez`
--

CREATE TABLE `commandez` (
  `idcz` int(11) NOT NULL,
  `idc` int(11) NOT NULL,
  `idp` int(11) NOT NULL,
  `qteCommandez` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commandez`
--

INSERT INTO `commandez` (`idcz`, `idc`, `idp`, `qteCommandez`) VALUES
(12, 0, 2, 30),
(13, 9, 3, 79),
(14, 10, 3, 4),
(15, 10, 2, 10),
(16, 11, 2, 60),
(22, 14, 5, 10),
(23, 14, 6, 20);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `idf` int(11) NOT NULL,
  `nomf` varchar(100) NOT NULL,
  `prenomf` varchar(80) NOT NULL,
  `adressef` varchar(80) NOT NULL,
  `sexef` varchar(20) NOT NULL,
  `telf` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`idf`, `nomf`, `prenomf`, `adressef`, `sexef`, `telf`) VALUES
(4, 'F1', 'f1', 'Ambalavao', 'Femme', '0345652145');

-- --------------------------------------------------------

--
-- Structure de la table `fsortir`
--

CREATE TABLE `fsortir` (
  `idFs` int(11) NOT NULL,
  `ids` int(11) NOT NULL,
  `idp` int(11) NOT NULL,
  `qteSort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fsortir`
--

INSERT INTO `fsortir` (`idFs`, `ids`, `idp`, `qteSort`) VALUES
(8, 6, 2, 15),
(10, 6, 3, 19);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `idl` int(11) NOT NULL,
  `idc` int(11) NOT NULL,
  `datel` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`idl`, `idc`, `datel`) VALUES
(15, 14, '25/02/2023');

-- --------------------------------------------------------

--
-- Structure de la table `magasinier`
--

CREATE TABLE `magasinier` (
  `idm` int(11) NOT NULL,
  `nomm` varchar(120) NOT NULL,
  `prenomm` varchar(80) NOT NULL,
  `adressem` varchar(80) NOT NULL,
  `sexe` varchar(30) NOT NULL,
  `telm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `magasinier`
--

INSERT INTO `magasinier` (`idm`, `nomm`, `prenomm`, `adressem`, `sexe`, `telm`) VALUES
(5, 'M1', 'm1', 'Fianarantsoa', 'Homme', '0340289144');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idp` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `type` varchar(80) NOT NULL,
  `qualite` varchar(80) NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idp`, `nom`, `type`, `qualite`, `prix`, `stock`) VALUES
(5, 'A', 'PILULE', 'NEUF', 4500, 10),
(6, 'B', 'PILULE', 'NEUF', 6000, 20);

-- --------------------------------------------------------

--
-- Structure de la table `sortir`
--

CREATE TABLE `sortir` (
  `ids` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sortir`
--

INSERT INTO `sortir` (`ids`, `idm`, `date`) VALUES
(7, 1, '24/02/2023');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idc`);

--
-- Index pour la table `commandez`
--
ALTER TABLE `commandez`
  ADD PRIMARY KEY (`idcz`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`idf`);

--
-- Index pour la table `fsortir`
--
ALTER TABLE `fsortir`
  ADD PRIMARY KEY (`idFs`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`idl`);

--
-- Index pour la table `magasinier`
--
ALTER TABLE `magasinier`
  ADD PRIMARY KEY (`idm`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idp`);

--
-- Index pour la table `sortir`
--
ALTER TABLE `sortir`
  ADD PRIMARY KEY (`ids`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `commandez`
--
ALTER TABLE `commandez`
  MODIFY `idcz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `fsortir`
--
ALTER TABLE `fsortir`
  MODIFY `idFs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `idl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `magasinier`
--
ALTER TABLE `magasinier`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sortir`
--
ALTER TABLE `sortir`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
