-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 20 jan. 2019 à 19:37
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `siteweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`) VALUES
(1, 'yann.lefevre@isen.yncrea.fr', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `content`
--

INSERT INTO `content` (`id`, `text`) VALUES
('intro_title', 'Software Engineering Student'),
('about_text', 'Currently in the second year of the <a href=\"https://www.isen-mediterranee.fr/fr/content/cir_cpa32_dcc5.htm\">Computer Sciences and Networks Cycle</a> at <a href=\"https://www.isen-mediterranee.fr/\">ISEN Toulon</a>, my professional goal is to become an engineer in the software engineering sector. I am open to any proposal for internships or professional experience.                 If you are interested in my profile, you can download my resume using the button below :');

-- --------------------------------------------------------

--
-- Structure de la table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `text`) VALUES
(1, 'Retro Pinball', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.'),
(2, 'Mathematical Beauty', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.'),
(3, 'Square Arena', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.'),
(4, 'Crossfit Drakon', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.'),
(5, 'Database Manager', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.'),
(6, 'Personal Website', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.');

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`id`, `name`, `number`, `icon`) VALUES
(1, 'C Language', 81, 'fab fa-cuttlefish'),
(2, 'Processing', 60, 'fab fa-java'),
(3, 'Php', 65, 'fab fa-php'),
(4, 'Javascript', 40, 'fab fa-js-square'),
(5, 'SQL', 68, 'fas fa-database'),
(6, 'HTML5', 84, 'fab fa-html5'),
(7, 'CSS3', 82, 'fab fa-css3-alt'),
(8, 'Linux', 55, 'fab fa-linux');

-- --------------------------------------------------------

--
-- Structure de la table `work`
--

DROP TABLE IF EXISTS `work`;
CREATE TABLE IF NOT EXISTS `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `work`
--

INSERT INTO `work` (`id`, `title`, `text`, `icon`, `date`) VALUES
(1, 'Summer Job: Restaurant Waiter at La Figuiere : ', 'Responsible for the care of customers: reception, order taking, service...<br>Development of my human relations.', 'fas fa-glass-martini-alt', 'June 2013 - July 2013'),
(2, 'Summer Job: Gardener and Housekeeper : ', 'In charge of the maintenance of gardens for private individuals.<br>Development of my rigor, my punctuality and my sense of responsibility.', 'fas fa-tree mr-3', 'June 2017 - July 2017'),
(3, 'Communication Officer at Junior Isen-Toulon : ', 'Member of the communication team of Junior Isen-Toulon : posters creation, social networks administration, events management...<br>Development of my team spirit and my knowledges about communication tools.', 'fas fa-comment-dots mr-3', 'September 2017 - May 2018'),
(4, 'Associative Internship: Forest Fire Protection : ', 'Member of a team working on fires and prevention actions.<br>Development of my team spirit and my risk management.', 'fab fa-free-code-camp mr-3', 'June 2018 - July 2018'),
(5, 'Summer Job: Gardener and Housekeeper : ', 'In charge of the maintenance of gardens for private individuals.<br>Development of my rigor, my punctuality and my sense of responsibility.', 'fas fa-tree mr-3', 'July 2018 - August 2018'),
(6, 'Head of Communications at Junior Isen-Toulon : ', 'In charge of the communication team of Junior Isen-Toulon : team management, posters creation, social networks administration, events management...<br>Development of my leadership, my team spirit and my knowledges about communication tools.', 'fas fa-comment-dots mr-3', 'May 2018 - Today');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
