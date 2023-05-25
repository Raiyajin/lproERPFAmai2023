-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 mai 2023 à 14:25
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `texte` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_right` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `texte`, `is_right`, `id_question`) VALUES
(1, 'Gsm', 0, 1),
(2, 'Infrarouge', 0, 1),
(3, 'Bluetooth', 0, 1),
(4, 'Wifi', 1, 1),
(5, 'Orsay', 0, 2),
(6, 'Palais du Louvre', 1, 2),
(7, 'Palais du luxembourg', 0, 2),
(8, 'Le Louxor', 0, 3),
(9, 'Le Melies', 0, 3),
(10, 'Le grand REX', 1, 3),
(11, 'Cité des sciences', 0, 4),
(12, 'Musée du CNAM', 1, 4),
(13, 'Les musées insolites', 0, 4),
(15, 'café théâtre', 1, 5),
(16, 'entrée des catacombes', 0, 5),
(17, 'vrai', 0, 6),
(18, 'faux, elle est dans le 7ème arrondissement', 1, 6),
(19, 'Sévigné', 0, 7),
(20, 'Henri 4', 0, 7),
(21, 'Louis le Grand', 1, 7),
(22, 'tour Effeil', 1, 8),
(23, 'tour Zamanski', 0, 8),
(24, 'tour de la défense', 0, 8),
(25, 'Rue de Rivoli', 1, 9),
(26, 'Champs Elysées', 0, 9),
(27, 'Rue de l\'opéra', 0, 9),
(28, 'Rue de Rivoli', 0, 10),
(29, 'Champs Elysées', 1, 10),
(30, 'Tours de la défense', 0, 10),
(31, 'Montparnasse', 0, 11),
(32, 'Gare du nord', 0, 11),
(33, 'Gare Sait L', 1, 11),
(34, 'Rue de Rivoli', 1, 12),
(35, 'Champs Elysées', 0, 12),
(36, 'Tours de la défense', 0, 12);

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `config`
--

INSERT INTO `config` (`id`, `key`, `value`) VALUES
(1, 'server_key', 'iot1235'),
(2, 'qrcode', 'NpByCBlFecN2cayuq4mL');

-- --------------------------------------------------------

--
-- Structure de la table `detail_groupe`
--

CREATE TABLE `detail_groupe` (
  `id` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `presence`
--

CREATE TABLE `presence` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `type` int(11) NOT NULL,
  `qr_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `presence`
--

INSERT INTO `presence` (`id`, `id_user`, `time`, `type`, `qr_code`) VALUES
(14, 2, '2023-05-25 13:59:37', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `texte` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `theme` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `niveau` int(11) DEFAULT 10,
  `is_mult` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `texte`, `theme`, `niveau`, `is_mult`) VALUES
(1, 'Quelle technologie permet de se connecter à un réseau sans fil ?', 'Technologie', 1, 1),
(2, 'Musée qui fut une maison des rois de France ?', 'arrdt_5', 1, 1),
(3, 'Salle de cinema féerique', 'arrdt_2', 1, 1),
(4, 'Un musée des premières machines volantes', 'arrdt_3', 1, 1),
(5, 'Double-fond sur la place sainte Catherine', 'arrdt_4', 2, 1),
(6, 'Cet arrondissement abrite la chambre des députés', 'arrdt_6', 1, 1),
(7, 'Un lycée public renommmé pour les sciences est au coeur de cet arrondissement', 'arrdt_5', 2, 1),
(8, 'Peut-être la plus haute emblème de la France', 'arrdt_7', 1, 1),
(9, 'La plus belle avenue de Paris', 'arrdt_8', 1, 1),
(10, 'XXX', 'arrdt_9', 1, 0),
(11, 'quelle gare est située dans cet arrondissement', 'arrdt_10', 1, 0),
(12, 'Cet arrondissement abrite depuis peu un musée immersif', 'arrdt_11', 2, 0),
(13, 'Quelle gare est située dans cet arrondissement', 'arrdt_12', 1, 0),
(14, 'On y fabrique de très belles tapisseries', 'arrdt_13', 1, 0),
(15, 'Quelle est la hauteur de la tour Montparnasse', 'arrdt_14', 2, 0),
(16, 'Quel est l\'hôpital européen sitié dans cet arrondissement', 'arrdt_15', 1, 0),
(17, 'Un pont très célèbre des photographes et cinéastes', 'arrdt_16', 2, 0),
(18, 'Cet arrondissement abrite 2 très beaux parcs : Batignole et Monceau', 'arrdt_17', 1, 0),
(19, 'Où acheter des tissus au mètre', 'arrdt_18', 2, 0),
(20, 'Un musée pour vivre la Musique', 'arrdt_19', 1, 0),
(21, 'Dernière demeure de Edith Piaf', 'arrdt_20', 2, 0),
(31, 'Quelle technologie permet de se connecter à un réseau sans fil ?', 'Technologie', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `token`
--

INSERT INTO `token` (`id`, `id_user`, `token`, `time`) VALUES
(1, 1, '0e700c97a56f97b1643f66bdbbedee54', '0000-00-00 00:00:00'),
(2, 2, 'd341bf3069c4866272b03e601eb55472', '2022-11-28 16:54:21'),
(3, 3, 'bac0c0dfa7570bfde1954c9540e8b624', '2022-11-28 16:00:09'),
(4, 4, '26d11c8e68899f2fef671e3331da3a8f', '0000-00-00 00:00:00'),
(5, 5, '30e63bcb8f7a714c125e4444c7ede3fa', '0000-00-00 00:00:00'),
(6, 6, '07c66436211349179ed48ec1c4862cda', '0000-00-00 00:00:00'),
(7, 7, 'e8147e7f62c9307276567064eec13817', '0000-00-00 00:00:00'),
(8, 8, 'd637564f60ac9cdd247c06c22589d957', '0000-00-00 00:00:00'),
(9, 9, 'f0ae11f8e137d2f00f6afaaf3c4b679a', '0000-00-00 00:00:00'),
(10, 10, '47009fb3c5609b31ce86c27b3a38f380', '0000-00-00 00:00:00'),
(11, 11, 'ff62a446ed478449ea2ebbf6050c5259', '0000-00-00 00:00:00'),
(12, 12, 'b59a061e7a5a0c265115da40d126d95f', '0000-00-00 00:00:00'),
(13, 13, 'cc104af992a405df8ac3e51bca04bfc2', '0000-00-00 00:00:00'),
(14, 14, '190811329c36f74289e112b1b9ff1fc0', '0000-00-00 00:00:00'),
(15, 15, 'bac0c0dfa7570bfde1954c9540e8b624ff', '2022-06-01 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `present` int(11) NOT NULL DEFAULT 0,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `photo`, `present`, `score`) VALUES
(1, 'achaouche', 'azerty', 'Ahmed', 'Chaouche', 'http://localhost/classroom_server/photos/photo-chaouche.jpg', 1, 2),
(2, 'jmilie', 'azerty', 'Jean-Michel', 'Ilié', NULL, 1, 3),
(3, 'farouk', 'azerty', 'Farouk', 'Meddah', NULL, 1, 20),
(4, 'Florian', '11040', 'Florian', 'CODEBECQ', NULL, 0, NULL),
(5, 'Thomas', '11042', 'Thomas', 'GIRBE', NULL, 0, NULL),
(6, 'Yassine', '11043', 'Yassine', 'HAFFOUD', NULL, 0, NULL),
(7, 'Tracy', '4537', 'Tracy', 'HONG', NULL, 0, NULL),
(8, 'Anthony', '11045', 'Anthony', 'MATHIEU', NULL, 0, NULL),
(9, 'Kevin', '11044', 'Kévin', 'METRI', NULL, 0, NULL),
(10, 'Gabriel', '11046', 'Gabriel', 'MICUCCI', NULL, 0, NULL),
(11, 'Sofiane', '11047', 'Sofiane', 'OMRANI', NULL, 0, NULL),
(12, 'Aboubakar', '11050', 'Aboubakar', 'SYLLA', NULL, 0, NULL),
(13, 'Livio', '11051', 'Livio', 'TINNIRELLO', NULL, 0, NULL),
(14, 'Pierre', '11052', 'Pierre', 'VALIERGUE', NULL, 0, NULL),
(15, 'Yann', '11053', 'Yann', 'WULFMAN', NULL, 0, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ANSWER` (`id_question`);

--
-- Index pour la table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `detail_groupe`
--
ALTER TABLE `detail_groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_groupe` (`id_groupe`,`id_user`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Index pour la table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `detail_groupe`
--
ALTER TABLE `detail_groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `presence`
--
ALTER TABLE `presence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11054;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
