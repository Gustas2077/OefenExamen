-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2023 at 08:43 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvcframework-v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `annuleerles`
--

DROP TABLE IF EXISTS `annuleerles`;
CREATE TABLE IF NOT EXISTS `annuleerles` (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `LesId` int UNSIGNED NOT NULL,
  `Reden` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `LesId` (`LesId`)
) ENGINE=InnoDB AUTO_INCREMENT=2363 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annuleerles`
--

INSERT INTO `annuleerles` (`Id`, `LesId`, `Reden`) VALUES
(2346, 49, 'Ik ben ziek'),
(2347, 45, 'Ik ben erg ziek en heb geen energie'),
(2351, 49, 'Heb geen zin'),
(2352, 56, 'Het is geen leuke instructeur'),
(2353, 45, 'Geen zin'),
(2355, 55, 'Ik ben moe'),
(2362, 45, 'dfs');

-- --------------------------------------------------------

--
-- Table structure for table `instructeur`
--

DROP TABLE IF EXISTS `instructeur`;
CREATE TABLE IF NOT EXISTS `instructeur` (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Naam` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructeur`
--

INSERT INTO `instructeur` (`Id`, `Email`, `Naam`) VALUES
(3, 'groen@mail.nl', 'Groen'),
(4, 'konijn@google.com', 'Konijn'),
(6, 'frasi@google.sp', 'Frasi');

-- --------------------------------------------------------

--
-- Table structure for table `instructeur1`
--

DROP TABLE IF EXISTS `instructeur1`;
CREATE TABLE IF NOT EXISTS `instructeur1` (
  `Id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(50) NOT NULL,
  `Tussenvoegsel` varchar(12) NOT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `Mobiel` varchar(12) NOT NULL,
  `DatumInDienst` date NOT NULL,
  `AantalSterren` varchar(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructeur1`
--

INSERT INTO `instructeur1` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `DatumInDienst`, `AantalSterren`) VALUES
(1, 'Li', '', 'Zhan', '06-28493827', '2015-04-17', '***'),
(2, 'Leroy', '', 'Boerhaven', '06-39398734', '2018-06-25', '*'),
(3, 'Yoeri', 'Van', 'Veen', '06-24383291', '2010-05-12', '***'),
(4, 'Bert', 'Van', 'Sali', '06-48293823', '2023-01-10', '****'),
(5, 'Mohammed', 'El', 'Yassidi', '06-34291234', '2010-06-14', '*****');

-- --------------------------------------------------------

--
-- Table structure for table `leerling`
--

DROP TABLE IF EXISTS `leerling`;
CREATE TABLE IF NOT EXISTS `leerling` (
  `Id` smallint UNSIGNED NOT NULL,
  `Naam` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leerling`
--

INSERT INTO `leerling` (`Id`, `Naam`) VALUES
(3, 'Konijn'),
(4, 'Slavink'),
(6, 'Otto');

-- --------------------------------------------------------

--
-- Table structure for table `leerling1`
--

DROP TABLE IF EXISTS `leerling1`;
CREATE TABLE IF NOT EXISTS `leerling1` (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(50) NOT NULL,
  `Woonplaats` varchar(100) NOT NULL,
  `Postcode` varchar(6) NOT NULL,
  `Straat` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leerling1`
--

INSERT INTO `leerling1` (`Id`, `Naam`, `Woonplaats`, `Postcode`, `Straat`) VALUES
(3, 'Konijn', 'Utrecht', '3590UV', 'Laan 45'),
(4, 'Slavink', 'Nieuwegein', '3678II', 'Overweg 7'),
(6, 'Otto', 'Houten', '3822AS', 'Groenlo 44');

-- --------------------------------------------------------

--
-- Table structure for table `les`
--

DROP TABLE IF EXISTS `les`;
CREATE TABLE IF NOT EXISTS `les` (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Datum` datetime DEFAULT NULL,
  `LeerlingId` int UNSIGNED NOT NULL,
  `InstructeurId` int UNSIGNED NOT NULL,
  `Is_geannuleerd` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`Id`),
  KEY `LeerlingId` (`LeerlingId`),
  KEY `InstructeurId` (`InstructeurId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `les`
--

INSERT INTO `les` (`Id`, `Datum`, `LeerlingId`, `InstructeurId`, `Is_geannuleerd`) VALUES
(45, '2022-05-20 14:30:00', 3, 3, b'1'),
(46, '2022-05-20 10:30:00', 6, 6, b'0'),
(47, '2022-05-20 09:30:00', 4, 4, b'0'),
(48, '2022-05-21 15:00:00', 6, 6, b'0'),
(49, '2022-05-22 15:00:00', 3, 3, b'0'),
(50, '2022-05-28 15:00:00', 4, 4, b'0'),
(51, '2022-05-20 15:30:00', 3, 4, b'0'),
(52, '2022-05-20 17:30:00', 3, 3, b'0'),
(53, '2022-05-20 05:30:00', 3, 3, b'0'),
(54, '2022-05-20 12:30:00', 4, 4, b'0'),
(55, '2022-05-20 14:30:00', 3, 3, b'0'),
(56, '2022-05-20 09:30:00', 3, 6, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `lessen`
--

DROP TABLE IF EXISTS `lessen`;
CREATE TABLE IF NOT EXISTS `lessen` (
  `ID` smallint UNSIGNED NOT NULL,
  `Datum` date NOT NULL,
  `Leerling` smallint UNSIGNED NOT NULL,
  `Onderdeel` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_leerling_PK_Leerling_Id` (`Leerling`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lessen`
--

INSERT INTO `lessen` (`ID`, `Datum`, `Leerling`, `Onderdeel`) VALUES
(42, '2022-06-11', 3, 'Achteruit rijden'),
(43, '2022-06-14', 3, 'Achteruit rijden'),
(44, '2022-06-16', 6, 'File rijden'),
(45, '2022-06-20', 3, 'Stadsverkeer'),
(46, '2022-06-20', 6, 'Parkeren'),
(47, '2022-06-21', 4, 'Achteruit rijden'),
(48, '2022-06-21', 6, 'Parkeren'),
(49, '2022-06-22', 3, 'Parkeren');

-- --------------------------------------------------------

--
-- Table structure for table `opmerkingen`
--

DROP TABLE IF EXISTS `opmerkingen`;
CREATE TABLE IF NOT EXISTS `opmerkingen` (
  `ID` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Les` smallint UNSIGNED NOT NULL,
  `Opmerkingen` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opmerkingen`
--

INSERT INTO `opmerkingen` (`ID`, `Les`, `Opmerkingen`) VALUES
(1, 42, 'Dit is een test'),
(2, 42, 'Dit is een test'),
(3, 42, 'test'),
(4, 49, 'Dit is een test'),
(5, 49, 'lkl'),
(6, 49, 'Dit is een opmerking'),
(7, 49, 'lkj'),
(8, 49, 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `persoon`
--

DROP TABLE IF EXISTS `persoon`;
CREATE TABLE IF NOT EXISTS `persoon` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `TypePersoonId` int NOT NULL,
  `Voornaam` varchar(100) NOT NULL,
  `Tussenvoegsel` varchar(100) DEFAULT NULL,
  `Achternaam` varchar(100) NOT NULL,
  `Roepnaam` varchar(100) NOT NULL,
  `IsVolwassen` tinyint(1) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `Opmerking` varchar(100) NOT NULL,
  `DatumAangemaakt` date NOT NULL,
  `DatumGewijzigd` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `PersoonId` (`TypePersoonId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `persoon`
--

INSERT INTO `persoon` (`Id`, `TypePersoonId`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Roepnaam`, `IsVolwassen`, `IsActive`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 'Mazin', '', 'Jamil', 'Mazin', 1, 1, '', '2023-03-29', '2023-03-29'),
(2, 1, 'Arjan', 'de', 'Ruijter', 'Arjan', 1, 1, '', '2023-03-29', '2023-03-29'),
(3, 1, 'Hans', NULL, 'Odijk', 'Hans', 1, 1, '', '2023-03-29', '2023-03-29'),
(4, 1, 'Dennis', 'van', 'Wakeren', 'Dennis', 1, 1, '', '2023-03-29', '2023-03-29'),
(5, 2, 'Wilco', 'Van de', 'Grift', 'Wilco', 1, 1, '', '2023-03-29', '2023-03-29'),
(6, 3, 'Tom', NULL, 'Sanders', 'Tom', 0, 1, '', '2023-03-29', '2023-03-29'),
(7, 3, 'Andrew', NULL, 'Sanders', 'Andrew', 0, 1, '', '2023-03-29', '2023-03-29'),
(8, 3, 'Julian', NULL, 'Kaldenheuvel', 'Julian', 1, 1, '', '2023-03-29', '2023-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `spel`
--

DROP TABLE IF EXISTS `spel`;
CREATE TABLE IF NOT EXISTS `spel` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PersoonId` int NOT NULL,
  `ReserveringId` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PersoonId` (`PersoonId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `spel`
--

INSERT INTO `spel` (`Id`, `PersoonId`, `ReserveringId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `typevoertuig`
--

DROP TABLE IF EXISTS `typevoertuig`;
CREATE TABLE IF NOT EXISTS `typevoertuig` (
  `Id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `TypeVoertuig` varchar(50) NOT NULL,
  `Rijbewijscategorie` varchar(2) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typevoertuig`
--

INSERT INTO `typevoertuig` (`Id`, `TypeVoertuig`, `Rijbewijscategorie`) VALUES
(1, 'Personenauto', 'B'),
(2, 'Vrachtwagen', 'C'),
(3, 'Bus', 'D'),
(4, 'Bromfiets', 'AM');

-- --------------------------------------------------------

--
-- Table structure for table `uitslag`
--

DROP TABLE IF EXISTS `uitslag`;
CREATE TABLE IF NOT EXISTS `uitslag` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SpelId` int NOT NULL,
  `AantalPunten` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `SpelId` (`SpelId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `uitslag`
--

INSERT INTO `uitslag` (`Id`, `SpelId`, `AantalPunten`) VALUES
(1, 1, 290),
(2, 2, 300),
(3, 3, 120),
(4, 4, 34),
(5, 6, 234),
(6, 7, 299),
(7, 8, 255);

-- --------------------------------------------------------

--
-- Table structure for table `voertuig`
--

DROP TABLE IF EXISTS `voertuig`;
CREATE TABLE IF NOT EXISTS `voertuig` (
  `Id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Kenteken` varchar(12) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Bouwjaar` varchar(10) NOT NULL,
  `Brandstof` varchar(10) NOT NULL,
  `TypeVoertuigId` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Voertuig_TypeVoertuigId_TypeVoertuig_Id` (`TypeVoertuigId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voertuig`
--

INSERT INTO `voertuig` (`Id`, `Kenteken`, `Type`, `Bouwjaar`, `Brandstof`, `TypeVoertuigId`) VALUES
(1, 'AU-67-IO', 'Volkswagen', '12-06-2017', 'Diesel', 1),
(2, 'TR-24-OP', 'DAF', '23-05-2019', 'Diesel', 2),
(3, 'TH-78-KL', 'Mercedes', '01-01-2023', 'Benzine', 1),
(4, '90-KL-TR', 'Fiat 500', '12-09-2021', 'Benzine', 1),
(5, '34-TK-LP', 'Scania', '13-03-2015', 'Diesel', 2),
(6, 'YY-OP-78', 'BMW M5', '13-05-2022', 'Diesel', 1),
(7, 'UU-HH-JK', 'M.A.N', '03-12-2017', 'Diesel', 2),
(8, 'ST-FZ-28', 'Citroën', '20-01-2018', 'Elektrisch', 1),
(9, '123-FR-T', 'Piaggio ZIP', '01-02-2021', 'Benzine', 4),
(10, 'DRS-52-P', 'Vespa', '21-03-2022', 'Benzine', 4),
(11, 'STP-12-U', 'Kymco', '02-07-2022', 'Benzine', 4),
(12, '45-SD-23', 'Renault', '01-01-2023', 'Diesel', 3);

-- --------------------------------------------------------

--
-- Table structure for table `voertuiginstructeur`
--

DROP TABLE IF EXISTS `voertuiginstructeur`;
CREATE TABLE IF NOT EXISTS `voertuiginstructeur` (
  `Id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `VoertuigId` smallint UNSIGNED NOT NULL,
  `Instructeur1Id` smallint UNSIGNED NOT NULL,
  `DatumToekenning` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_VoertuigInstructeur_VoertuigId_Voertuig_Id` (`VoertuigId`),
  KEY `FK_VoertuigInstructeur_Instructeur1Id_Instructeur1_Id` (`Instructeur1Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voertuiginstructeur`
--

INSERT INTO `voertuiginstructeur` (`Id`, `VoertuigId`, `Instructeur1Id`, `DatumToekenning`) VALUES
(1, 1, 5, '2017-06-18'),
(2, 3, 1, '2021-09-26'),
(3, 9, 1, '2021-09-27'),
(4, 3, 4, '2022-08-01'),
(5, 5, 1, '2019-08-30'),
(6, 10, 5, '2020-02-02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annuleerles`
--
ALTER TABLE `annuleerles`
  ADD CONSTRAINT `annuleerles_ibfk_1` FOREIGN KEY (`LesId`) REFERENCES `les` (`Id`);

--
-- Constraints for table `les`
--
ALTER TABLE `les`
  ADD CONSTRAINT `les_ibfk_1` FOREIGN KEY (`LeerlingId`) REFERENCES `leerling1` (`Id`);

--
-- Constraints for table `lessen`
--
ALTER TABLE `lessen`
  ADD CONSTRAINT `FK_leerling_PK_Leerling_Id` FOREIGN KEY (`Leerling`) REFERENCES `leerling` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uitslag`
--
ALTER TABLE `uitslag`
  ADD CONSTRAINT `SpelId` FOREIGN KEY (`SpelId`) REFERENCES `persoon` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `voertuig`
--
ALTER TABLE `voertuig`
  ADD CONSTRAINT `FK_Voertuig_TypeVoertuigId_TypeVoertuig_Id` FOREIGN KEY (`TypeVoertuigId`) REFERENCES `typevoertuig` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `voertuiginstructeur`
--
ALTER TABLE `voertuiginstructeur`
  ADD CONSTRAINT `FK_VoertuigInstructeur_Instructeur1Id_Instructeur1_Id` FOREIGN KEY (`Instructeur1Id`) REFERENCES `instructeur1` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VoertuigInstructeur_VoertuigId_Voertuig_Id` FOREIGN KEY (`VoertuigId`) REFERENCES `voertuig` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
