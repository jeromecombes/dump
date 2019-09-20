-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: infocom94
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absences`
--

DROP TABLE IF EXISTS `absences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL DEFAULT '0',
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `motif` text NOT NULL,
  `motif_autre` text NOT NULL,
  `commentaires` text NOT NULL,
  `etat` text NOT NULL,
  `demande` datetime NOT NULL,
  `valide` int(11) NOT NULL DEFAULT '0',
  `validation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide_n1` int(11) NOT NULL DEFAULT '0',
  `validation_n1` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pj1` int(1) DEFAULT '0',
  `pj2` int(1) DEFAULT '0',
  `so` int(1) DEFAULT '0',
  `groupe` varchar(14) DEFAULT NULL,
  `cal_name` varchar(300) NOT NULL,
  `ical_key` text NOT NULL,
  `uid` text,
  `rrule` text,
  `id_origin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cal_name` (`cal_name`),
  KEY `perso_id` (`perso_id`),
  KEY `debut` (`debut`),
  KEY `fin` (`fin`),
  KEY `groupe` (`groupe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absences`
--

LOCK TABLES `absences` WRITE;
/*!40000 ALTER TABLE `absences` DISABLE KEYS */;
/*!40000 ALTER TABLE `absences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `absences_infos`
--

DROP TABLE IF EXISTS `absences_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absences_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debut` date NOT NULL DEFAULT '0000-00-00',
  `fin` date NOT NULL DEFAULT '0000-00-00',
  `texte` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absences_infos`
--

LOCK TABLES `absences_infos` WRITE;
/*!40000 ALTER TABLE `absences_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `absences_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `absences_recurrentes`
--

DROP TABLE IF EXISTS `absences_recurrentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absences_recurrentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL,
  `perso_id` int(11) DEFAULT NULL,
  `event` text,
  `end` enum('0','1') NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` varchar(20) NOT NULL DEFAULT '',
  `last_check` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `perso_id` (`perso_id`),
  KEY `end` (`end`),
  KEY `last_check` (`last_check`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absences_recurrentes`
--

LOCK TABLES `absences_recurrentes` WRITE;
/*!40000 ALTER TABLE `absences_recurrentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `absences_recurrentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acces`
--

DROP TABLE IF EXISTS `acces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `groupe_id` int(11) NOT NULL,
  `groupe` text NOT NULL,
  `page` varchar(50) NOT NULL,
  `ordre` int(2) NOT NULL DEFAULT '0',
  `categorie` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acces`
--

LOCK TABLES `acces` WRITE;
/*!40000 ALTER TABLE `acces` DISABLE KEYS */;
INSERT INTO `acces` VALUES (1,'Authentification',99,'','authentification.php',0,''),(2,'Planning - Index',99,'','planning/index.php',0,''),(3,'Planning par poste - Index',99,'','planning/poste/index.php',0,''),(4,'Planning par poste - Semaine',99,'','planning/poste/semaine.php',0,''),(5,'Aide',99,'','/help',0,''),(6,'Absences - Index',100,'','absences/index.php',0,''),(7,'Absences - Voir',100,'','absences/voir.php',0,''),(8,'Absences - Ajouter',100,'','absences/ajouter.php',0,''),(9,'Personnel - Password',100,'','personnel/password.php',0,''),(10,'Admin Index',100,'','admin/index.php',0,''),(11,'Agenda - index',100,'Agenda','agenda/index.php',0,''),(12,'Absences - Modif',100,'','absences/modif.php',0,''),(13,'Absences - Modif2',100,'','absences/modif2.php',0,''),(14,'Absences - Suppression',100,'','absences/delete.php',0,''),(15,'Absences - Infos',201,'Gestion des absences, validation niveau 1','/absences/info',30,'Absences'),(16,'Personnel - Index',4,'Voir les fiches des agents','personnel/index.php',60,'Agents'),(17,'Personnel - Modif',4,'Voir les fiches des agents','personnel/modif.php',60,'Agents'),(18,'Liste des postes - Index',5,'Gestion des postes','postes/index.php',160,'Postes'),(19,'Liste des postes - Modif',5,'Gestion des postes','postes/modif.php',160,'Postes'),(20,'Liste des postes - Valid',5,'Gestion des postes','postes/valid.php',160,'Postes'),(21,'Planning Poste - Suppression',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/poste/supprimer.php',110,'Planning'),(22,'Planning Poste - Importer un mod&egrave;le',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/poste/importer.php',110,'Planning'),(23,'Planning Poste - Enregistrer un mod&egrave;le',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/poste/enregistrer.php',110,'Planning'),(24,'Statistiques',17,'Acc&egrave;s au statistiques','statistiques/index.php',170,'Statistiques'),(25,'stats agents par poste',17,'Acc&egrave;s au statistiques','statistiques/agents.php',170,'Statistiques'),(26,'stats postes par agent',17,'Acc&egrave;s au statistiques','statistiques/postes.php',170,'Statistiques'),(27,'Statistiques Postes de renfort',17,'Acc&egrave;s au statistiques','statistiques/postes_renfort.php',170,'Statistiques'),(28,'Statistiques par poste (synth&egrave;se)',17,'Acc&egrave;s au statistiques','statistiques/postes_synthese.php',170,'Statistiques'),(29,'Statistiques',17,'Acc&egrave;s au statistiques','statistiques/service.php',170,'Statistiques'),(30,'Statistiques',17,'Acc&egrave;s au statistiques','statistiques/statut.php',170,'Statistiques'),(31,'Feuille de temps-  index',17,'Acc&egrave;s au statistiques','statistiques/temps.php',170,'Statistiques'),(32,'Liste des agents pr&eacute;sents et absents',1301,'Acc&egrave;s aux statistiques Pr&eacute;sents / Absents','/statistics/attendeesmissing',171,'Statistiques'),(33,'Configuration avanc&eacute;e',20,'Configuration avanc&eacute;e','/config',0,''),(34,'Personnel - Suppression',21,'Gestion des agents','personnel/suppression.php',70,'Agents'),(35,'Personnel - Valid',21,'Gestion des agents','personnel/valid.php',70,'Agents'),(36,'Gestion du personnel',21,'Gestion des agents','',70,'Agents'),(37,'Configuration des tableaux',22,'Configuration des tableaux','planning/postes_cfg/index.php',140,'Planning'),(38,'Configuration des horaires des tableaux',22,'Configuration des tableaux','planning/postes_cfg/horaires.php',140,'Planning'),(39,'Configuration des horaires des tableaux',22,'Configuration des tableaux','planning/postes_cfg/copie.php',140,'Planning'),(40,'Configuration des lignes des tableaux',22,'Configuration des tableaux','planning/postes_cfg/lignes.php',140,'Planning'),(41,'Activit&eacute;s - Index',5,'Gestion des postes','activites/index.php',160,'Postes'),(42,'Activit&eacute;s - Modification',5,'Gestion des postes','activites/modif.php',160,'Postes'),(43,'Activit&eacute;s - Validation',5,'Gestion des postes','activites/valid.php',160,'Postes'),(44,'Planning - Mod&egrave;les',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/modeles/index.php',110,'Planning'),(45,'Planning - Mod&egrave;les',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/modeles/modif.php',110,'Planning'),(46,'Planning - Mod&egrave;les',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/modeles/valid.php',110,'Planning'),(47,'Personnel - Suppression liste',21,'Gestion des agents','personnel/suppression-liste.php',70,'Agents'),(48,'Configuration des tableaux - Modif',22,'Configuration des tableaux','planning/postes_cfg/modif.php',140,'Planning'),(49,'Informations',23,'Informations','infos/index.php',0,''),(50,'Informations',23,'Informations','infos/modif.php',0,''),(51,'Informations',23,'Informations','infos/supprime.php',0,''),(52,'Informations',23,'Informations','infos/ajout.php',0,''),(53,'Configuration des tableaux - Modif',22,'Configuration des tableaux','planning/postes_cfg/lignes_sep.php',140,'Planning'),(54,'Configuration des tableaux - Modif',22,'Configuration des tableaux','planning/postes_cfg/groupes.php',140,'Planning'),(55,'Configuration des tableaux - Modif',22,'Configuration des tableaux','planning/postes_cfg/groupes2.php',140,'Planning'),(56,'Modification des plannings - menudiv',1001,'Modification des plannings','planning/poste/menudiv.php',120,'Planning'),(57,'Modification des plannings - majdb',1001,'Modification des plannings','planning/poste/majdb.php',120,'Planning'),(58,'Personnel - Importation',21,'Gestion des agents','personnel/import.php',70,'Agents'),(59,'Jours f&eacute;ri&eacute;s',25,'Gestion des jours f&eacute;ri&eacute;s','joursFeries/index.php',0,''),(60,'Jours f&eacute;ri&eacute;s',25,'Gestion des jours f&eacute;ri&eacute;s','joursFeries/valid.php',0,''),(61,'Voir les agendas de tous',3,'Voir les agendas de tous','',55,'Agendas'),(62,'Modifier ses propres absences',6,'Modifier ses propres absences','',20,'Absences'),(63,'Statistiques',17,'Acc&egrave;s au statistiques','statistiques/samedis.php',170,'Statistiques'),(64,'Gestion des absences, validation niveau 2',501,'Gestion des absences, validation niveau 2','',40,'Absences'),(65,'Statistiques',17,'Acc&egrave;s au statistiques','statistiques/absences.php',170,'Statistiques'),(66,'Gestion des absences, pi&egrave;ces justificatives',701,'Gestion des absences, pi&egrave;ces justificatives','',50,'Absences'),(67,'Planning Hebdo - Index',1101,'Gestion des heures de pr&eacute;sences, validation niveau 1','planningHebdo/index.php',80,'Heures de prÃ©sence'),(68,'Planning Hebdo - Configuration',1101,'Gestion des heures de pr&eacute;sences, validation niveau 1','planningHebdo/configuration.php',80,'Heures de prÃ©sence'),(69,'Planning Hebdo - Modif',100,'','planningHebdo/modif.php',0,''),(70,'Planning Hebdo - Mon Compte',100,'','monCompte.php',0,''),(71,'Planning Hebdo - Validation',100,'','planningHebdo/valid.php',0,''),(72,'Planning Hebdo - suppression',1101,'Gestion des heures de pr&eacute;sences, validation niveau 1','planningHebdo/supprime.php',80,'Heures de prÃ©sence'),(73,'Planning Hebdo - Admin N2',1201,'Gestion des heures de pr&eacute;sences, validation niveau 2','',90,'Heures de prÃ©sence'),(74,'Modification des commentaires des plannings',801,'Modification des commentaires des plannings','',130,'Planning'),(75,'Griser les cellules des plannings',901,'Griser les cellules des plannings','',125,'Planning'),(76,'Notifications / Validations',21,'Gestion des agents','notifications/index.php',70,'Agents'),(77,'Agents volants',301,'Cr&eacute;ation / modification des plannings, utilisation et gestion des mod&egrave;les','planning/volants/index.php',110,'Planning'),(78,'CongÃ©s - Index',100,'','conges/index.php',0,''),(79,'CongÃ©s - Liste',100,'','conges/voir.php',0,''),(80,'CongÃ©s - Enregistrer',100,'','conges/enregistrer.php',0,''),(81,'CongÃ©s - Modifier',100,'','conges/modif.php',0,''),(82,'Gestion des cong&eacute;s, validation niveau 2',601,'Gestion des cong&eacute;s, validation niveau 2','',76,'CongÃ©s'),(83,'CongÃ©s - Infos',100,'','conges/infos.php',0,''),(84,'CongÃ©s - r&eacute;cuperations',100,'','conges/recuperations.php',0,''),(85,'CongÃ©s - R&eacute;cup&eacute;ration',100,'','conges/recuperation_modif.php',0,''),(86,'Gestion des cong&eacute;s, validation niveau 1',401,'Gestion des cong&eacute;s, validation niveau 1','',75,'CongÃ©s'),(87,'CongÃ©s - Compte &Eacute;pargne Temps',100,'','conges/cet.php',0,''),(88,'CongÃ©s - Cr&eacute;dits',100,'','conges/credits.php',0,''),(89,'CongÃ©s - R&eacute;cup&eacute;rations',100,'','conges/recuperation_valide.php',0,''),(90,'CongÃ©s - Poser des r&eacute;cup&eacute;rations',100,'','conges/recup_pose.php',0,'');
/*!40000 ALTER TABLE `acces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activites`
--

DROP TABLE IF EXISTS `activites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `supprime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activites`
--

LOCK TABLES `activites` WRITE;
/*!40000 ALTER TABLE `activites` DISABLE KEYS */;
INSERT INTO `activites` VALUES (1,'Assistance audiovisuel','2019-09-19 17:38:32'),(2,'Assistance autoformation','2019-09-19 17:36:42'),(3,'Communication','2019-09-19 17:38:35'),(4,'Communication r&eacute;serve','2019-09-19 17:38:40'),(5,'Inscription',NULL),(6,'Pr&ecirc;t/retour de document',NULL),(7,'Pr&ecirc;t de mat&eacute;riel','2019-09-19 17:36:45'),(8,'Rangement',NULL),(9,'Renseignement',NULL),(10,'Renseignement bibliographique','2019-09-19 17:36:50'),(11,'Renseignement r&eacute;serve',NULL),(12,'Renseignement sp&eacute;cialis&eacute;','2019-09-19 17:38:47');
/*!40000 ALTER TABLE `activites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appel_dispo`
--

DROP TABLE IF EXISTS `appel_dispo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appel_dispo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` int(11) NOT NULL DEFAULT '1',
  `poste` int(11) NOT NULL DEFAULT '0',
  `date` varchar(10) DEFAULT NULL,
  `debut` varchar(8) DEFAULT NULL,
  `fin` varchar(8) DEFAULT NULL,
  `destinataires` text,
  `sujet` text,
  `message` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appel_dispo`
--

LOCK TABLES `appel_dispo` WRITE;
/*!40000 ALTER TABLE `appel_dispo` DISABLE KEYS */;
/*!40000 ALTER TABLE `appel_dispo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `valeur` text NOT NULL,
  `commentaires` text NOT NULL,
  `categorie` varchar(100) NOT NULL,
  `valeurs` text NOT NULL,
  `ordre` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'Version','info','19.04.01','Version de l&apos;application',' Divers','',0),(2,'URL','info','http://infocom94','URL de l&apos;application',' Divers','',10),(3,'Mail-IsEnabled','boolean','0','Active ou d&eacute;sactive l&apos;envoi des mails','Messagerie','',10),(4,'toutlemonde','boolean','0','Affiche ou non l&apos;utilisateur \"tout le monde\" dans le menu.','Planning','',5),(5,'Mail-IsMail-IsSMTP','enum','IsSMTP','Classe &agrave; utiliser : SMTP, fonction PHP IsMail','Messagerie','IsSMTP,IsMail',10),(6,'Mail-WordWrap','','50','','Messagerie','',10),(7,'Mail-Hostname','','','Nom d\'h&ocirc;te du serveur pour l&apos;envoi des mails.','Messagerie','',10),(8,'Mail-Host','','','Nom FQDN ou IP du serveur SMTP.','Messagerie','',10),(9,'Mail-Port','','25','Port du serveur SMTP','Messagerie','',10),(10,'Mail-SMTPSecure','enum','','Cryptage utilis&eacute; par le serveur STMP.','Messagerie',',ssl,tls',10),(11,'Mail-SMTPAuth','boolean','0','Le serveur SMTP requiert-il une authentification?','Messagerie','',10),(12,'Mail-Username','','','Nom d&apos;utilisateur pour le serveur SMTP.','Messagerie','',10),(13,'Mail-Password','password','::4f13fec2bcd1be9a76e9491cebaa4167','Mot de passe pour le serveur SMTP','Messagerie','',10),(14,'Mail-From','','no-reply@planningbiblio.fr','Adresse email de l&apos;expediteur.','Messagerie','',10),(15,'Mail-FromName','','Planning','Nom de l&apos;expediteur.','Messagerie','',10),(16,'Mail-Signature','textarea','Ce message a Ã©tÃ© envoyÃ© par Planning Biblio.\r\nMerci de ne pas y rÃ©pondre.','Signature des e-mails','Messagerie','',10),(17,'Dimanche','boolean','0','Utiliser le planning le dimanche',' Divers','',20),(18,'nb_semaine','enum','1','Nombre de semaine pour l\'emploi du temps','Heures de prÃ©sence','1,2,3',0),(19,'dateDebutPlHebdo','date','','Date de d&eacute;but permettant la rotation des plannings hebdomadaires (pour l&apos;utilisation de 3 plannings hebdomadaires. Format JJ/MM/AAAA)','Heures de prÃ©sence','',0),(20,'ctrlHresAgents','boolean','1','Contr&ocirc;le des heures des agents le samedi et le dimanche','Planning','',0),(21,'agentsIndispo','boolean','1','Afficher les agents indisponibles','Planning','',5),(22,'Granularite','enum2','60','Granularit&eacute; des champs horaires.',' Divers','[[60,\"Heure\"],[30,\"Demi-heure\"],[15,\"Quart d&apos;heure\"],[5,\"5 minutes\"]]',30),(23,'Absences-planning','enum2','0','Afficher la liste des absences sur la page du planning','Absences','[[0,\"\"],[1,\"simple\"],[2,\"d&eacute;taill&eacute;\"],[3,\"absents et pr&eacute;sents\"]]',25),(24,'Auth-Mode','enum','SQL','M&eacute;thode d&apos;authentification','Authentification','SQL,LDAP,LDAP-SQL,CAS,CAS-SQL',7),(25,'Absences-apresValidation','boolean','1','Autoriser l&apos;enregistrement des absences apr&egrave;s validation des plannings','Absences','',10),(26,'Absences-planningVide','boolean','1','Autoriser le d&eacute;p&ocirc;t d&apos;absences sur des plannings en cours d&apos;&eacute;laboration','Absences','',8),(27,'Multisites-nombre','enum','7','Nombre de sites','Multisites','1,2,3,4,5,6,7,8,9,10',10),(28,'Multisites-site1','text','Alfortville','Nom du site NÂ°1','Multisites','',20),(29,'Multisites-site1-mail','text','','Adresses e-mails de la cellule planning du site NÂ°1, sÃ©parÃ©es par des ;','Multisites','',25),(30,'Multisites-site2','text','CrÃ©teil','Nom du site NÂ°2','Multisites','',30),(31,'Multisites-site2-mail','text','','Adresses e-mails de la cellule planning du site NÂ°2, sÃ©parÃ©es par des ;','Multisites','',35),(32,'Multisites-site3','text','Limeil-BrÃ©vannes','Nom du site NÂ°3','Multisites','',40),(33,'Multisites-site3-mail','text','','Adresses e-mails de la cellule planning du site NÂ°3, sÃ©parÃ©es par des ;','Multisites','',45),(34,'Multisites-site4','text','MÃ©diathÃ¨que Mobile','Nom du site NÂ°4','Multisites','',50),(35,'Multisites-site4-mail','text','','Adresses e-mails de la cellule planning du site NÂ°4, sÃ©parÃ©es par des ;','Multisites','',55),(36,'Multisites-site5','text','Boissy Saint-LÃ©ger','Nom du site NÂ°5','Multisites','',60),(37,'Multisites-site5-mail','text','','Adresses e-mails de la cellule planning du site NÂ°5, sÃ©parÃ©es par des ;','Multisites','',65),(38,'Multisites-site6','text','Bonneuil sur Marne','Nom du site NÂ°6','Multisites','',70),(39,'Multisites-site6-mail','text','','Adresses e-mails de la cellule planning du site NÂ°6, sÃ©parÃ©es par des ;','Multisites','',75),(40,'Multisites-site7','text','Maison Alfort','Nom du site NÂ°7','Multisites','',80),(41,'Multisites-site7-mail','text','','Adresses e-mails de la cellule planning du site NÂ°7, sÃ©parÃ©es par des ;','Multisites','',85),(42,'Multisites-site8','text','','Nom du site NÂ°8','Multisites','',90),(43,'Multisites-site8-mail','text','','Adresses e-mails de la cellule planning du site NÂ°8, sÃ©parÃ©es par des ;','Multisites','',95),(44,'Multisites-site9','text','','Nom du site NÂ°9','Multisites','',100),(45,'Multisites-site9-mail','text','','Adresses e-mails de la cellule planning du site NÂ°9, sÃ©parÃ©es par des ;','Multisites','',105),(46,'Multisites-site10','text','','Nom du site NÂ°10','Multisites','',110),(47,'Multisites-site10-mail','text','','Adresses e-mails de la cellule planning du site NÂ°1O, sÃ©parÃ©es par des ;','Multisites','',115),(48,'hres4semaines','boolean','0','Afficher le total d\'heures des 4 derniÃ¨res semaine dans le menu','Planning','',5),(49,'Auth-Anonyme','boolean','0','Autoriser les logins anonymes','Authentification','',7),(50,'EDTSamedi','enum2','0','Emplois du temps diff&eacute;rents les semaines o&ugrave; le samedi est travaill&eacute; et les semaines &agrave; ouverture restreinte','Heures de prÃ©sence','[[0, \"D&eacute;sactiv&eacute;\"], [1, \"Emploi du temps diff&eacute;rent les semaines avec samedi travaill&eacute;\"], [2, \"Emploi du temps diff&eacute;rent les semaines avec samedi travaill&eacute; et les semaines &agrave; ouverture restreinte\"]]',0),(51,'ClasseParService','boolean','0','Classer les agents par service dans le menu d&eacute;roulant du planning','Planning','',5),(52,'Alerte2SP','boolean','1','Alerter si l&apos;agent fera 2 plages de service public de suite','Planning','',5),(53,'CatAFinDeService','boolean','0','Alerter si aucun agent de cat&eacute;gorie A n&apos;est plac&eacute; en fin de service','Planning','',0),(54,'Conges-Recuperations','enum2','0','Traiter les r&eacute;cup&eacute;rations comme les cong&eacute;s (Assembler), ou les traiter s&eacute;par&eacute;ment (Dissocier)','CongÃ©s','[[0,\"Assembler\"],[1,\"Dissocier\"]]',3),(55,'Recup-Agent','enum2','0','Type de champ pour la r&eacute;cup&eacute;ration des samedis dans la fiche des agents.<br/>Rien [vide], champ <b>texte</b> ou <b>menu d&eacute;roulant</b>','CongÃ©s','[[0,\"\"],[1,\"Texte\"],[2,\"Menu dÃ©roulant\"]]',40),(56,'Recup-SamediSeulement','boolean','0','Autoriser les demandes de rÃ©cupÃ©ration des samedis seulement','CongÃ©s','',20),(57,'Recup-Uneparjour','boolean','1','Autoriser une seule demande de r&eacute;cup&eacute;ration par jour','CongÃ©s','',15),(58,'Recup-DeuxSamedis','boolean','0','Autoriser les demandes de rÃ©cupÃ©ration pour 2 samedis','CongÃ©s','',30),(59,'Recup-DelaiDefaut','text','7','Delai pour les demandes de rÃ©cupÃ©ration par d&eacute;faut (en jours)','CongÃ©s','',40),(60,'Recup-DelaiTitulaire1','enum2','0','Delai pour les demandes de rÃ©cupÃ©ration des titulaires pour 1 samedi (en mois)','CongÃ©s','[[-1,\"DÃ©faut\"],[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]]',50),(61,'Recup-DelaiTitulaire2','enum2','0','Delai pour les demandes de rÃ©cupÃ©ration des titulaires pour 2 samedis (en mois)','CongÃ©s','[[-1,\"DÃ©faut\"],[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]]',60),(62,'Recup-DelaiContractuel1','enum2','0','Delai pour les demandes de rÃ©cupÃ©ration des contractuels pour 1 samedi (en semaines)','CongÃ©s','[[-1,\"DÃ©faut\"],[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]]',70),(63,'Recup-DelaiContractuel2','enum2','0','Delai pour les demandes de rÃ©cupÃ©ration des contractuels pour 2 samedis (en semaines)','CongÃ©s','[[-1,\"DÃ©faut\"],[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]]',80),(64,'Recup-notifications1','checkboxes','[\"2\"]','Destinataires des notifications de nouvelles demandes de crÃ©dit de rÃ©cupÃ©rations','CongÃ©s','[[0,\"Agents ayant le droit de gÃ©rer les rÃ©cupÃ©rations\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concernÃ©\"]]',100),(65,'Recup-notifications2','checkboxes','[\"2\"]','Destinataires des notifications de modification de crÃ©dit de rÃ©cupÃ©rations','CongÃ©s','[[0,\"Agents ayant le droit de gÃ©rer les rÃ©cupÃ©rations\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concernÃ©\"]]',100),(66,'Recup-notifications3','checkboxes','[\"1\"]','Destinataires des notifications des validations de crÃ©dit de rÃ©cupÃ©rations niveau 1','CongÃ©s','[[0,\"Agents ayant le droit de gÃ©rer les rÃ©cupÃ©rations\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concernÃ©\"]]',100),(67,'Recup-notifications4','checkboxes','[\"3\"]','Destinataires des notifications des validations de crÃ©dit de rÃ©cupÃ©rations niveau 2','CongÃ©s','[[0,\"Agents ayant le droit de gÃ©rer les rÃ©cupÃ©rations\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concernÃ©\"]]',100),(68,'Conges-Rappels','boolean','0','Activer / D&eacute;sactiver l&apos;envoi de rappels s&apos;il y a des cong&eacute;s non-valid&eacute;s','CongÃ©s','',6),(69,'Conges-Rappels-Jours','text','14','Nombre de jours &agrave; contr&ocirc;ler pour l&apos;envoi de rappels sur les cong&eacute;s non-valid&eacute;s','CongÃ©s','',7),(70,'Conges-Rappels-N1','checkboxes','[\"Mail-Planning\"]','A qui envoyer les rappels sur les cong&eacute;s non-valid&eacute;s au niveau 1','CongÃ©s','[[\"Mail-Planning\",\"La cellule planning\"],[\"mails_responsables\",\"Les responsables hi&eacute;rarchiques\"]]',8),(71,'Conges-Rappels-N2','checkboxes','[\"mails_responsables\"]','A qui envoyer les rappels sur les cong&eacute;s non-valid&eacute;s au niveau 2','CongÃ©s','[[\"Mail-Planning\",\"La cellule planning\"],[\"mails_responsables\",\"Les responsables hi&eacute;rarchiques\"]]',9),(72,'Conges-Validation-N2','enum2','0','La validation niveau 2 des cong&eacute;s peut se faire directement ou doit attendre la validation niveau 1','CongÃ©s','[[0,\"Validation directe autoris&eacute;e\"],[1,\"Le cong&eacute; doit &ecirc;tre valid&eacute; au niveau 1\"]]',4),(73,'Conges-Enable','boolean','0','Activer le module CongÃ©s','CongÃ©s','',1),(74,'Absences-validation','boolean','0','Les absences doivent &ecirc;tre valid&eacute;es par un administrateur avant d&apos;&ecirc;tre prises en compte','Absences','',30),(75,'Absences-non-validees','boolean','1','Dans les plannings, afficher en rouge les agents pour lesquels une absence non-valid&eacute;e est enregistr&eacute;e','Absences','',35),(76,'Absences-agent-preselection','boolean','1','PrÃ©sÃ©lectionner l&apos;agent connectÃ© lors de l&apos;ajout d&apos;une nouvelle absence.','Absences','',36),(77,'Absences-tous','boolean','0','Autoriser l&apos;enregistrement d&apos;absences pour tous les agents en une fois','Absences','',37),(78,'Absences-adminSeulement','boolean','0','Autoriser la saisie des absences aux administrateurs seulement.','Absences','',20),(79,'Mail-Planning','textarea','','Adresses e-mails de la cellule planning, s&eacute;par&eacute;es par des ;','Messagerie','',10),(80,'Planning-sansRepas','boolean','1','Afficher une notification pour les Sans Repas dans le menu d&eacute;roulant et dans le planning','Planning','',10),(81,'Planning-dejaPlace','boolean','1','Afficher une notification pour les agents d&eacute;j&agrave; plac&eacute; sur un poste dans le menu d&eacute;roulant du planning','Planning','',20),(82,'Planning-Heures','boolean','1','Afficher les heures &agrave; c&ocirc;t&eacute; du nom des agents dans le menu du planning','Planning','',25),(83,'Absences-notifications1','checkboxes','[\"0\",\"1\",\"2\",\"3\"]','Destinataires des notifications de nouvelles absences','Absences','[[0,\"Agents ayant le droit de g&eacute;rer les absences\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concern&eacute;\"]]',40),(84,'Absences-notifications2','checkboxes','[\"0\",\"1\",\"2\",\"3\"]','Destinataires des notifications de modification d&apos;absences','Absences','[[0,\"Agents ayant le droit de g&eacute;rer les absences\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concern&eacute;\"]]',50),(85,'Absences-notifications3','checkboxes','[\"1\"]','Destinataires des notifications des validations niveau 1','Absences','[[0,\"Agents ayant le droit de g&eacute;rer les absences\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concern&eacute;\"]]',60),(86,'Absences-notifications4','checkboxes','[\"3\"]','Destinataires des notifications des validations niveau 2','Absences','[[0,\"Agents ayant le droit de g&eacute;rer les absences\"],[1,\"Responsables directs\"],[2,\"Cellule planning\"],[3,\"Agent concern&eacute;\"]]',65),(87,'Absences-notifications-agent-par-agent','boolean','0','Gestion des notifications et des droits de validations agent par agent. Si cette option est activÃ©e, les paramÃ¨tres Absences-notifications1, 2, 3 et 4 seront Ã©crasÃ©s par les choix fait dans la page de configuration des notifications du menu Administration - Notifications / Validations','Absences','',67),(88,'Absences-notifications-titre','text','','Titre personnalis&eacute; pour les notifications de nouvelles absences','Absences','',70),(89,'Absences-notifications-message','textarea','','Message personnalis&eacute; pour les notifications de nouvelles absences','Absences','',80),(90,'Statistiques-Heures','textarea','','Afficher des statistiques sur les cr&eacute;neaux horaires voulus. Les cr&eacute;neaux doivent &ecirc;tre au format 00h00-00h00 et s&eacute;par&eacute;s par des ; Exemple : 19h00-20h00; 20h00-21h00; 21h00-22h00','Statistiques','',10),(91,'Affichage-theme','text','light_blue','Th&egrave;me de l&apos;application.','Affichage','',10),(92,'Affichage-titre','text','','Titre affich&eacute; sur la page d&apos;accueil','Affichage','',20),(93,'Affichage-etages','boolean','0','Afficher les &eacute;tages des postes dans le planning','Affichage','',30),(94,'Planning-NbAgentsCellule','enum','2','Nombre d&apos;agents maximum par cellule','Planning','1,2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18,19,20',2),(95,'Planning-lignesVides','boolean','1','Afficher ou non les lignes vides dans les plannings valid&eacute;s','Planning','',3),(96,'Planning-SR-debut','enum2','12:00:00','Heure de d&eacute;but pour la v&eacute;rification des sans repas','Planning','[[\"11:00:00\",\"11h00\"],[\"11:15:00\",\"11h15\"],[\"11:30:00\",\"11h30\"],[\"11:45:00\",\"11h45\"],[\"12:00:00\",\"12h00\"],[\"12:15:00\",\"12h15\"],[\"12:30:00\",\"12h30\"],[\"12:45:00\",\"12h45\"],[\"13:00:00\",\"13h00\"],[\"13:15:00\",\"13h15\"],[\"13:30:00\",\"13h30\"],[\"13:45:00\",\"13h45\"],[\"14:00:00\",\"14h00\"],[\"14:15:00\",\"14h15\"],[\"14:30:00\",\"14h30\"],[\"14:45:00\",\"14h45\"]]',11),(97,'Planning-SR-fin','enum2','14:00:00','Heure de fin pour la v&eacute;rification des sans repas','Planning','[[\"11:15:00\",\"11h15\"],[\"11:30:00\",\"11h30\"],[\"11:45:00\",\"11h45\"],[\"12:00:00\",\"12h00\"],[\"12:15:00\",\"12h15\"],[\"12:30:00\",\"12h30\"],[\"12:45:00\",\"12h45\"],[\"13:00:00\",\"13h00\"],[\"13:15:00\",\"13h15\"],[\"13:30:00\",\"13h30\"],[\"13:45:00\",\"13h45\"],[\"14:00:00\",\"14h00\"],[\"14:15:00\",\"14h15\"],[\"14:30:00\",\"14h30\"],[\"14:45:00\",\"14h45\"],[\"15:00:00\",\"15h00\"]]',12),(98,'Planning-Absences-Heures-Hebdo','boolean','0','Prendre en compte les absences pour calculer le nombre d&apos;heures de SP &agrave; effectuer. (Module PlanningHebdo requis)','Planning','',30),(99,'CAS-Debug','boolean','0','Activer le dÃ©bogage pour CAS. CrÃ©Ã© un fichier \"cas_debug.txt\" dans le dossier \"[TEMP]\"','CAS','',50),(100,'PlanningHebdo','boolean','1','Utiliser ou non le module &ldquo;Planning Hebdo&rdquo;. Ce module permet d&apos;enregistrer plusieurs plannings de pr&eacute;sence par agent en d&eacute;finissant des p&eacute;riodes d&apos;utilisation. (Incompatible avec l&apos;option EDTSamedi)','Heures de prÃ©sence','',40),(101,'PlanningHebdo-Agents','boolean','1','Autoriser les agents &agrave; saisir leurs plannings de pr&eacute;sence (avec le module Planning Hebdo). Les plannings saisis devront &ecirc;tre valid&eacute;s par un administrateur.','Heures de prÃ©sence','',50),(102,'PlanningHebdo-Pause2','boolean','0','2 pauses dans une journ&eacute;e','Heures de prÃ©sence','',60),(103,'PlanningHebdo-notifications1','checkboxes','[\"0\",\"4\"]','Destinataires des notifications de nouveaux plannings de pr&eacute;sence','Heures de prÃ©sence','[[0,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 1\"],[1,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 2\"],[2,\"Responsables directs\"],[3,\"Cellule planning\"],[4,\"Agent concern&eacute;\"]]',70),(104,'PlanningHebdo-notifications2','checkboxes','[\"0\",\"4\"]','Destinataires des notifications de modification de planning de pr&eacute;sence','Heures de prÃ©sence','[[0,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 1\"],[1,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 2\"],[2,\"Responsables directs\"],[3,\"Cellule planning\"],[4,\"Agent concern&eacute;\"]]',72),(105,'PlanningHebdo-notifications3','checkboxes','[\"1\"]','Destinataires des notifications des validations niveau 1','Heures de prÃ©sence','[[0,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 1\"],[1,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 2\"],[2,\"Responsables directs\"],[3,\"Cellule planning\"],[4,\"Agent concern&eacute;\"]]',74),(106,'PlanningHebdo-notifications4','checkboxes','[\"4\"]','Destinataires des notifications des validations niveau 2','Heures de prÃ©sence','[[0,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 1\"],[1,\"Agents ayant le droit de valider les heures de pr&eacute;sence au niveau 2\"],[2,\"Responsables directs\"],[3,\"Cellule planning\"],[4,\"Agent concern&eacute;\"]]',76),(107,'PlanningHebdo-notifications-agent-par-agent','boolean','0','Gestion des notifications et des droits de validations agent par agent. Si cette option est activÃ©e, les paramÃ¨tres PlanningHebdo-notifications1, 2, 3 et 4 seront Ã©crasÃ©s par les choix fait dans la page de configuration des notifications du menu Administration - Notifications / Validations','Heures de prÃ©sence','',80),(108,'PlanningHebdo-Validation-N2','enum2','0','La validation niveau 2 des plannings de pr&eacute;sence peut se faire directement ou doit attendre la validation niveau 1','Heures de prÃ©sence','[[0,\"Validation directe autoris&eacute;e\"],[1,\"Le planning doit &ecirc;tre valid&eacute; au niveau 1\"]]',85),(109,'Planning-Notifications','boolean','0','Envoyer une notification aux agents lors de la validation des plannings les concernant','Planning','',40),(110,'Planning-TableauxMasques','boolean','1','Autoriser le masquage de certains tableaux du planning','Planning','',50),(111,'Planning-AppelDispo','boolean','0','Permettre l&apos;envoi d&apos;un mail aux agents disponibles pour leur demander s&apos;ils sont volontaires pour occuper le poste choisi.','Planning','',60),(112,'Planning-AppelDispoSujet','text','Appel Ã  disponibilitÃ© [poste] [date] [debut]-[fin]','Sujet du mail pour les appels &agrave; disponibilit&eacute;','Planning','',70),(113,'Planning-AppelDispoMessage','textarea','Chers tous,\r\n\r\nLe poste [poste] est vacant le [date] de [debut] Ã  [fin].\r\n\r\nSi vous souhaitez occuper ce poste, vous pouvez rÃ©pondre Ã  cet e-mail.\r\n\r\nCordialement,\r\nLa cellule planning','Corps du mail pour les appels &agrave; disponibilit&eacute;','Planning','',80),(114,'LDAP-Host','','','Nom d&apos;h&ocirc;te ou adresse IP du serveur LDAP','LDAP','',10),(115,'LDAP-Port','','','Port du serveur LDAP','LDAP','',20),(116,'LDAP-Protocol','enum','ldap','Protocol utilis&eacute;','LDAP','ldap,ldaps',30),(117,'LDAP-Suffix','','','Base LDAP','LDAP','',40),(118,'LDAP-Filter','','','Filtre LDAP. OpenLDAP essayez \"(objectclass=inetorgperson)\" , Active Directory essayez \"(&(objectCategory=person)(objectClass=user))\". Vous pouvez bien-s&ucirc;r personnaliser votre filtre.','LDAP','',50),(119,'LDAP-RDN','','','DN de connexion au serveur LDAP, laissez vide si connexion anonyme','LDAP','',60),(120,'LDAP-Password','password','::c89061ceff28672488ec50e4c36fe3e6','Mot de passe de connexion','LDAP','',70),(121,'LDAP-ID-Attribute','enum','uid','Attribut d&apos;authentification (OpenLDAP : uid, Active Directory : samaccountname)','LDAP','uid,samaccountname,supannAliasLogin',80),(122,'LDAP-Matricule','text','','Attribut &agrave; importer dans le champ matricule (optionnel)','LDAP','',90),(123,'CAS-Hostname','','','Nom d&apos;h&ocirc;te du serveur CAS','CAS','',30),(124,'CAS-Port','','8080','Port serveur CAS','CAS','',30),(125,'CAS-Version','enum','2.0','Version du serveur CAS','CAS','2.0,3.0,4.0',30),(126,'CAS-CACert','','','Chemin absolut du certificat de l&apos;Autorit&eacute; de Certification. Si pas renseign&eacute;, l&apos;identit&eacute; du serveur ne sera pas v&eacute;rifi&eacute;e.','CAS','',30),(127,'CAS-SSLVersion','enum2','1','Version SSL/TLS &agrave; utiliser pour les &eacute;changes avec le serveur CAS','CAS','[[1,\"TLSv1\"],[4,\"TLSv1_0\"],[5,\"TLSv1_1\"],[6,\"TLSv1_2\"]]',45),(128,'CAS-ServiceURL','text','','URL de Planning Biblio. A renseigner seulement si la redirection ne fonctionne pas aprÃ¨s authentification sur le serveur CAS, si vous utilisez un Reverse Proxy par exemple.','CAS','',47),(129,'CAS-URI','','cas','Page de connexion CAS','CAS','',30),(130,'CAS-URI-Logout','','cas/logout','Page de d&eacute;connexion CAS','CAS','',30),(131,'Rappels-Actifs','boolean','0','Activer les rappels','Rappels','',10),(132,'Rappels-Jours','enum2','3','Nombre de jours &agrave; contr&ocirc;ler pour les rappels','Rappels','[[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7]]',20),(133,'Rappels-Renfort','boolean','0','Contr&ocirc;ler les postes de renfort lors des rappels','Rappels','',30),(134,'IPBlocker-TimeChecked','text','10','Recherche les &eacute;checs d&apos;authentification lors des N derni&egrave;res minutes. ( 0 = IPBlocker d&eacute;sactiv&eacute; )','Authentification','',40),(135,'IPBlocker-Attempts','text','5','Nombre d&apos;&eacute;checs d&apos;authentification autoris&eacute;s lors des N derni&egrave;res minutes','Authentification','',50),(136,'IPBlocker-Wait','text','10','Temps de blocage de l&apos;IP en minutes','Authentification','',60),(137,'ICS-Server1','text','','URL du 1<sup>er</sup> serveur ICS avec la variable OpenURL entre crochets. Ex: http://server.domain.com/calendars/[email].ics','ICS','',10),(138,'ICS-Pattern1','text','','Motif d&apos;absence pour les &eacute;v&eacute;nements import&eacute;s du 1<sup>er</sup> serveur. Ex: Agenda Personnel','ICS','',20),(139,'ICS-Status1','enum2','CONFIRMED','Importer tous les &eacute;v&eacute;nements ou seulement les &eacute;v&eacute;nements confirm&eacute;s (attribut STATUS = CONFIRMED). Si \"tous\" est choisi, les &eacute;v&eacute;nements non-confirm&eacute;s seront enregistr&eacute;s comme des absences en attente de validation','ICS','[[\"CONFIRMED\",\"Confirm&eacute;s\"],[\"ALL\",\"Tous\"]]',22),(140,'ICS-Server2','text','','URL du 2<sup>&egrave;me</sup> serveur ICS avec la variable OpenURL entre crochets. Ex: http://server2.domain.com/holiday/[login].ics','ICS','',30),(141,'ICS-Pattern2','text','','Motif d&apos;absence pour les &eacute;v&eacute;nements import&eacute;s du 2<sup>&egrave;me</sup> serveur. Ex: CongÃ©s','ICS','',40),(142,'ICS-Status2','enum2','CONFIRMED','Importer tous les &eacute;v&eacute;nements ou seulement les &eacute;v&eacute;nements confirm&eacute;s (attribut STATUS = CONFIRMED). Si \"tous\" est choisi, les &eacute;v&eacute;nements non-confirm&eacute;s seront enregistr&eacute;s comme des absences en attente de validation','ICS','[[\"CONFIRMED\",\"Confirm&eacute;s\"],[\"ALL\",\"Tous\"]]',42),(143,'ICS-Server3','boolean','0','Utiliser une URL d&eacute;finie pour chaque agent dans le menu Administration / Les agents','ICS','',44),(144,'ICS-Pattern3','text','','Motif d&apos;absence pour les &eacute;v&eacute;nements import&eacute;s depuis l&apos;URL d&eacute;finie dans la fiche des agents. Ex: Agenda personnel','ICS','',45),(145,'ICS-Status3','enum2','CONFIRMED','Importer tous les &eacute;v&eacute;nements ou seulement les &eacute;v&eacute;nements confirm&eacute;s (attribut STATUS = CONFIRMED). Si \"tous\" est choisi, les &eacute;v&eacute;nements non-confirm&eacute;s seront enregistr&eacute;s comme des absences en attente de validation','ICS','[[\"CONFIRMED\",\"Confirm&eacute;s\"],[\"ALL\",\"Tous\"]]',47),(146,'ICS-Export','boolean','0','Autoriser l&apos;exportation des plages de service public sous forme de calendriers ICS. Un calendrier par agent, accessible &agrave; l&apos;adresse [SERVER]/ics/calendar.php?login=[login_de_l_agent]','ICS','',60),(147,'ICS-Code','boolean','1','Prot&eacute;ger les calendriers ICS par des codes de faÃ§on &agrave; ce qu&apos;on ne puisse pas deviner les URLs. Si l&apos;option est activ&eacute;e, les URL seront du type : [SERVER]/ics/calendar.php?login=[login_de_l_agent]&amp;code=[code_al&eacute;atoire]','ICS','',70),(148,'PlanningHebdo-CSV','text','','Emplacement du fichier CSV &agrave; importer (importation automatis&eacute;e) Ex: /dossier/fichier.csv','Heures de prÃ©sence','',90),(149,'Agenda-Plannings-Non-Valides','boolean','1','Afficher ou non les plages de service public des plannings non valid&eacute;s dans les agendas.','Agenda','',10),(150,'Planning-agents-volants','boolean','0','Utiliser le module \"Agents volants\" permettant de diff&eacute;rencier un groupe d&apos;agents dans le planning','Planning','',90),(151,'Hamac-csv','text','','Chemin d&apos;acc&egrave;s au fichier CSV pour l&apos;importation des absences depuis Hamac','Hamac','',10),(152,'Hamac-motif','text','','Motif pour les absences import&eacute;s depuis Hamac. Ex: Hamac','Hamac','',20),(153,'Hamac-status','enum2','1,2,3,5,6','Importer les absences valid&eacute;es et en attente de validation ou seulement les absences valid&eacute;es.','Hamac','[[\"1,2,3,5,6\",\"Valid&eacute;es et en attente de validation\"],[\"2\",\"Valid&eacute;es\"]]',30),(154,'Hamac-id','enum2','login','Champ Planning Biblio &agrave; utiliser pour mapper les agents.','Hamac','[[\"login\",\"Login\"],[\"matricule\",\"Matricule\"]]',40);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conges`
--

DROP TABLE IF EXISTS `conges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `commentaires` text COLLATE utf8_bin,
  `refus` text COLLATE utf8_bin,
  `heures` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `debit` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `saisie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `saisie_par` int(11) NOT NULL,
  `modif` int(11) NOT NULL DEFAULT '0',
  `modification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide_n1` int(11) NOT NULL DEFAULT '0',
  `validation_n1` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide` int(11) NOT NULL DEFAULT '0',
  `validation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `solde_prec` float DEFAULT NULL,
  `solde_actuel` float DEFAULT NULL,
  `recup_prec` float DEFAULT NULL,
  `recup_actuel` float DEFAULT NULL,
  `reliquat_prec` float DEFAULT NULL,
  `reliquat_actuel` float DEFAULT NULL,
  `anticipation_prec` float DEFAULT NULL,
  `anticipation_actuel` float DEFAULT NULL,
  `supprime` int(11) NOT NULL DEFAULT '0',
  `suppr_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `information` int(11) NOT NULL DEFAULT '0',
  `info_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conges`
--

LOCK TABLES `conges` WRITE;
/*!40000 ALTER TABLE `conges` DISABLE KEYS */;
INSERT INTO `conges` VALUES (1,1,'2019-09-19 00:00:00','2019-09-19 00:00:00',NULL,NULL,NULL,NULL,'2019-09-19 12:21:08',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0,0,0,0,0,0,0,0,'0000-00-00 00:00:00',999999999,'2019-09-19 12:21:08');
/*!40000 ALTER TABLE `conges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conges_cet`
--

DROP TABLE IF EXISTS `conges_cet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conges_cet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL,
  `jours` int(11) NOT NULL DEFAULT '0',
  `commentaires` text COLLATE utf8_bin,
  `saisie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `saisie_par` int(11) NOT NULL,
  `modif` int(11) NOT NULL DEFAULT '0',
  `modification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide_n1` int(11) NOT NULL DEFAULT '0',
  `validation_n1` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide_n2` int(11) NOT NULL DEFAULT '0',
  `validation_n2` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `refus` text COLLATE utf8_bin,
  `solde_prec` float DEFAULT NULL,
  `solde_actuel` float DEFAULT NULL,
  `annee` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conges_cet`
--

LOCK TABLES `conges_cet` WRITE;
/*!40000 ALTER TABLE `conges_cet` DISABLE KEYS */;
/*!40000 ALTER TABLE `conges_cet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conges_infos`
--

DROP TABLE IF EXISTS `conges_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conges_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `texte` text COLLATE utf8_bin,
  `saisie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conges_infos`
--

LOCK TABLES `conges_infos` WRITE;
/*!40000 ALTER TABLE `conges_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `conges_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m` varchar(2) DEFAULT NULL,
  `h` varchar(2) DEFAULT NULL,
  `dom` varchar(2) DEFAULT NULL,
  `mon` varchar(2) DEFAULT NULL,
  `dow` varchar(2) DEFAULT NULL,
  `command` varchar(200) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `last` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron`
--

LOCK TABLES `cron` WRITE;
/*!40000 ALTER TABLE `cron` DISABLE KEYS */;
INSERT INTO `cron` VALUES (1,'0','0','*','*','*','planningHebdo/cron.daily.php','Daily Cron for planningHebdo module','2019-09-19 14:21:08'),(2,'0','0','1','1','*','conges/cron.jan1.php','Cron CongÃ©s 1er Janvier','2019-09-19 14:21:08'),(3,'0','0','1','9','*','conges/cron.sept1.php','Cron CongÃ©s 1er Septembre','2019-09-19 14:21:08');
/*!40000 ALTER TABLE `cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edt_samedi`
--

DROP TABLE IF EXISTS `edt_samedi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edt_samedi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL,
  `semaine` date DEFAULT NULL,
  `tableau` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edt_samedi`
--

LOCK TABLES `edt_samedi` WRITE;
/*!40000 ALTER TABLE `edt_samedi` DISABLE KEYS */;
/*!40000 ALTER TABLE `edt_samedi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heures_absences`
--

DROP TABLE IF EXISTS `heures_absences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heures_absences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semaine` date DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `heures` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heures_absences`
--

LOCK TABLES `heures_absences` WRITE;
/*!40000 ALTER TABLE `heures_absences` DISABLE KEYS */;
INSERT INTO `heures_absences` VALUES (8,'2019-09-16',1568907766,'[]'),(9,'2019-09-23',1568908133,'[]');
/*!40000 ALTER TABLE `heures_absences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heures_sp`
--

DROP TABLE IF EXISTS `heures_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heures_sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semaine` date DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `heures` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heures_sp`
--

LOCK TABLES `heures_sp` WRITE;
/*!40000 ALTER TABLE `heures_sp` DISABLE KEYS */;
INSERT INTO `heures_sp` VALUES (8,'2019-09-16',1568907766,'{\"5\":\"10\",\"6\":\"35\",\"8\":\"18\",\"10\":\"35\",\"11\":\"35\",\"16\":\"18\",\"18\":\"18\",\"20\":\"18\",\"26\":\"10\",\"28\":\"18\",\"48\":\"18\",\"29\":\"10\",\"34\":\"35\",\"38\":\"18\",\"44\":\"10\",\"45\":\"10\",\"47\":\"18\",\"49\":\"35\",\"103\":\"35\",\"56\":\"10\",\"3\":\"18\",\"65\":\"18\",\"164\":\"35\",\"71\":\"35\",\"74\":\"10\",\"31\":\"18\",\"68\":\"16\",\"101\":\"35\",\"97\":\"0\",\"99\":\"35\",\"104\":\"18\",\"121\":\"18\",\"109\":\"35\",\"114\":\"18\",\"120\":\"0\",\"46\":\"35\",\"17\":\"18\",\"107\":\"10\",\"106\":\"10\",\"30\":\"18\",\"22\":\"35\",\"58\":\"35\",\"73\":\"35\",\"36\":\"18\",\"24\":\"10\",\"7\":\"18\",\"35\":\"18\",\"2\":0}'),(9,'2019-09-23',1568908133,'{\"5\":\"10\",\"6\":\"35\",\"8\":\"18\",\"10\":\"35\",\"11\":\"35\",\"16\":\"18\",\"18\":\"18\",\"20\":\"18\",\"26\":\"10\",\"28\":\"18\",\"48\":\"18\",\"29\":\"10\",\"34\":\"35\",\"38\":\"18\",\"44\":\"10\",\"45\":\"10\",\"47\":\"18\",\"49\":\"35\",\"103\":\"35\",\"56\":\"10\",\"3\":\"18\",\"65\":\"18\",\"164\":\"35\",\"71\":\"35\",\"74\":\"10\",\"31\":\"18\",\"68\":\"16\",\"101\":\"35\",\"97\":\"0\",\"99\":\"35\",\"104\":\"18\",\"121\":\"18\",\"109\":\"35\",\"114\":\"18\",\"120\":\"0\",\"46\":\"35\",\"17\":\"18\",\"107\":\"10\",\"106\":\"10\",\"30\":\"18\",\"22\":\"35\",\"58\":\"35\",\"73\":\"35\",\"36\":\"18\",\"24\":\"10\",\"7\":\"18\",\"35\":\"18\",\"2\":0}');
/*!40000 ALTER TABLE `heures_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hidden_tables`
--

DROP TABLE IF EXISTS `hidden_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hidden_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL DEFAULT '0',
  `tableau` int(11) NOT NULL DEFAULT '0',
  `hidden_tables` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hidden_tables`
--

LOCK TABLES `hidden_tables` WRITE;
/*!40000 ALTER TABLE `hidden_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `hidden_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `texte` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_blocker`
--

DROP TABLE IF EXISTS `ip_blocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_blocker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `status` (`status`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_blocker`
--

LOCK TABLES `ip_blocker` WRITE;
/*!40000 ALTER TABLE `ip_blocker` DISABLE KEYS */;
INSERT INTO `ip_blocker` VALUES (1,'127.0.0.1','admin','failed','2019-09-19 12:20:56'),(2,'127.0.0.1','admin','success','2019-09-19 12:21:07');
/*!40000 ALTER TABLE `ip_blocker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jours_feries`
--

DROP TABLE IF EXISTS `jours_feries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jours_feries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annee` varchar(10) DEFAULT NULL,
  `jour` date DEFAULT NULL,
  `ferie` int(1) DEFAULT NULL,
  `fermeture` int(1) DEFAULT NULL,
  `nom` text,
  `commentaire` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jours_feries`
--

LOCK TABLES `jours_feries` WRITE;
/*!40000 ALTER TABLE `jours_feries` DISABLE KEYS */;
/*!40000 ALTER TABLE `jours_feries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lignes`
--

DROP TABLE IF EXISTS `lignes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lignes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lignes`
--

LOCK TABLES `lignes` WRITE;
/*!40000 ALTER TABLE `lignes` DISABLE KEYS */;
INSERT INTO `lignes` VALUES (1,'Magasins'),(2,'Mezzanine'),(3,'Rez de chauss&eacute;e'),(4,'Rez de jardin');
/*!40000 ALTER TABLE `lignes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text,
  `program` varchar(30) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `niveau1` int(11) NOT NULL,
  `niveau2` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `condition` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,10,0,'Absences','absences/voir.php',NULL),(2,10,10,'Voir les absences','absences/voir.php',NULL),(3,10,20,'Ajouter une absence','absences/ajouter.php',NULL),(4,10,30,'Informations','/absences/info',NULL),(5,15,0,'CongÃ©s','conges/voir.php','config=Conges-Enable'),(6,15,10,'Liste des cong&eacute;s','conges/voir.php','config=Conges-Enable'),(7,15,15,'Liste des r&eacute;cup&eacute;rations','conges/voir.php&amp;recup=1','config=Conges-Enable;Conges-Recuperations'),(8,15,20,'Poser des cong&eacute;s','conges/enregistrer.php','config=Conges-Enable'),(9,15,24,'Poser des r&eacute;cup&eacute;rations','conges/recup_pose.php','config=Conges-Enable;Conges-Recuperations'),(10,15,26,'R&eacute;cup&eacute;rations','conges/recuperations.php','config=Conges-Enable'),(11,15,30,'Informations','conges/infos.php','config=Conges-Enable'),(12,15,40,'Cr&eacute;dits','conges/credits.php','config=Conges-Enable'),(13,20,0,'Agenda','agenda/index.php',NULL),(14,30,0,'Planning','planning/poste/index.php',NULL),(15,30,90,'Agents volants','planning/volants/index.php','config=Planning-agents-volants'),(16,40,0,'Statistiques','statistiques/index.php',NULL),(17,40,10,'Feuille de temps','statistiques/temps.php',NULL),(18,40,20,'Par agent','statistiques/agents.php',NULL),(19,40,30,'Par poste','statistiques/postes.php',NULL),(20,40,40,'Par poste (Synth&egrave;se)','statistiques/postes_synthese.php',NULL),(21,40,50,'Postes de renfort','statistiques/postes_renfort.php',NULL),(22,40,24,'Par service','statistiques/service.php',NULL),(23,40,60,'Samedis','statistiques/samedis.php',NULL),(24,40,70,'Absences','statistiques/absences.php',NULL),(25,40,80,'Pr&eacute;sents / absents','/statistics/attendeesmissing',NULL),(26,40,26,'Par statut','statistiques/statut.php',NULL),(27,50,0,'Administration','admin/index.php',NULL),(28,50,10,'Informations','infos/index.php',NULL),(29,50,20,'Les activit&eacute;s','activites/index.php',NULL),(30,50,30,'Les agents','personnel/index.php',NULL),(31,50,40,'Les postes','postes/index.php',NULL),(32,50,50,'Les mod&egrave;les','planning/modeles/index.php',NULL),(33,50,60,'Les tableaux','planning/postes_cfg/index.php',NULL),(34,50,70,'Jours de fermeture','joursFeries/index.php',NULL),(35,50,75,'Plannings de pr&eacute;sence','planningHebdo/index.php','config=PlanningHebdo'),(36,50,77,'Notifications / Validations','notifications/index.php','config=Absences-notifications-agent-par-agent'),(37,50,80,'Configuration','/config',NULL),(38,60,0,'Aide','/help',NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `mail` text NOT NULL,
  `statut` text NOT NULL,
  `categorie` varchar(30) NOT NULL DEFAULT '',
  `service` text NOT NULL,
  `arrivee` date NOT NULL DEFAULT '0000-00-00',
  `depart` date NOT NULL DEFAULT '0000-00-00',
  `postes` text NOT NULL,
  `actif` varchar(20) NOT NULL DEFAULT 'true',
  `droits` varchar(500) NOT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `commentaires` text NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `heures_hebdo` varchar(6) NOT NULL,
  `heures_travail` float NOT NULL,
  `sites` text NOT NULL,
  `temps` text NOT NULL,
  `informations` text NOT NULL,
  `recup` text NOT NULL,
  `supprime` enum('0','1','2') NOT NULL DEFAULT '0',
  `mails_responsables` text NOT NULL,
  `matricule` varchar(100) NOT NULL DEFAULT '',
  `code_ics` varchar(100) DEFAULT NULL,
  `url_ics` text,
  `check_ics` varchar(10) DEFAULT '[1,1,1]',
  `check_hamac` int(1) NOT NULL DEFAULT '1',
  `conges_credit` float DEFAULT NULL,
  `conges_reliquat` float DEFAULT NULL,
  `conges_anticipation` float DEFAULT NULL,
  `recup_samedi` float DEFAULT NULL,
  `conges_annuel` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES (1,'JÃ©rÃ´me','Combes','Combes.Jerome@example.com','','','','0000-00-00','0000-00-00','[\"\"]','Inactif','[3,4,5,6,9,17,20,21,22,23,25,99,100,201,202,301,302,401,402,501,502,601,602,701,801,802,901,1001,1002,1101,1201,1301]','Combes.Jerome','5f4dcc3b5aa765d61d8327deb882cf99','Compte cr&eacute;&eacute; lors de l&apos;installation du planning','2019-09-19 14:21:07','',0,'[2]','','','','0','','',NULL,NULL,'[1,1,1]',1,NULL,NULL,0,0,NULL),(2,'Tout le monde','','.Tout le monde@example.com','','','','0000-00-00','0000-00-00','[\"\"]','Actif','[99,100]','.Tout le monde','','Compte cr&eacute;&eacute; lors de l&apos;installation du planning','0000-00-00 00:00:00','',0,'[1]','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\"],[\"\",\"\",\"\",\"\"]]','','','0','','',NULL,NULL,'[1,1,1]',1,NULL,NULL,0,0,NULL),(3,'Cyril','Beck','Beck.Cyril@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Beck.Cyril','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-05 00:14:50','18',35,'[2]','{\"0\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:15:00\",\"\",\"\",\"17:00:00\"],\"2\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"13:15:00\"],\"4\":[\"09:30:00\",\"15:00:00\",\"17:00:00\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:15:00\",\"\",\"\",\"17:00:00\"],\"9\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"13:15:00\"],\"11\":[\"09:30:00\",\"15:00:00\",\"17:00:00\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','22','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',0,0.5,0,0,22.25,317.417),(5,'Adele','Pele','Pele.Adele@example.com','Conservateur','Titulaire','','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"22\",\"5\",\"17\",\"25\",\"23\",\"13\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"501\",\"502\",\"503\",\"504\",\"505\",\"506\",\"507\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",\"301\",\"302\",\"1001\",\"1002\",\"901\",\"902\",\"801\",\"802\",1,8,99,100]','Pele.Adele','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 19:16:11','10',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"1\":[\"09:00:00\",\"10:30:00\",\"16:00:00\",\"18:00:00\"],\"2\":[\"09:00:00\",\"14:00:00\",\"16:00:00\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"12:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"8\":[\"09:00:00\",\"10:30:00\",\"16:00:00\",\"18:00:00\"],\"9\":[\"09:00:00\",\"14:00:00\",\"16:00:00\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"12:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,24.75,0,0,14.75,357),(66,'Agent_66','','','Autre','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_66','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(6,'Alexandre','Bourgois','Bourgois.Alexandre@example.com','Magasinier','Titulaire','','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"807\",99,100]','Bourgois.Alexandre','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 10:39:09','35',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"\",\"\",\"\",\"\"],\"2\":[\"10:00:00\",\"\",\"\",\"20:00:00\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"\",\"\",\"\",\"\"],\"9\":[\"10:00:00\",\"\",\"\",\"19:00:00\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,227,0,0,0,357),(7,'Sandrine','Gaston','Gaston.Sandrine@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Gaston.Sandrine','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 21:09:32','18',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,0,0,0,0,357),(8,'Alexis','Girault','Girault.Alexis@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Girault.Alexis','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 12:11:12','18',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"10:00:00\",\"12:00:00\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"10:00:00\",\"12:00:00\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,150,0,0,0,357),(9,'Agent_9','','','Conservateur','Titulaire','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_9','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(10,'Alice','Janin','Janin.Alice@example.com','Magasinier','Titulaire','Coord. de droit','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"3\",99,100]','Janin.Alice','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-01 10:22:14','35',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"16:15:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"4\":[\"09:00:00\",\"10:00:00\",\"15:00:00\",\"16:30:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"16:15:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"11\":[\"09:00:00\",\"10:00:00\",\"15:00:00\",\"16:30:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,289.5,0,0,4.75,357),(150,'Agent_150','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_150','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(11,'Amandine','Quemener','Quemener.Amandine@example.com','Magasinier','','','0000-00-00','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','Quemener.Amandine','5f4dcc3b5aa765d61d8327deb882cf99','','2018-05-07 16:33:36','35',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,0,1,10,357),(59,'Ambre','Lair','Lair.Ambre@example.com','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','Lair.Ambre','5f4dcc3b5aa765d61d8327deb882cf99','Suppression d&eacute;finitive le 02/12/2014','0000-00-00 00:00:00','0',0,'[2]','','','','2','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(60,'Agent_60','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_60','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(12,'Agent_12','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_12','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(13,'Agent_13','','','Magasinier','Titulaire','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_13','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(14,'Andrea','Saillard','Saillard.Andrea@example.com','Conservateur','Titulaire','Mission documentation &eacute;lectronique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','Saillard.Andrea','5f4dcc3b5aa765d61d8327deb882cf99','Suppression d&eacute;finitive le 28/06/2017','0000-00-00 00:00:00','',0,'[1]','','','','2','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(15,'AndrÃ©','Touchard','Touchard.Andre@example.com','Conservateur','Titulaire','D&eacute;partement des collections','2014-10-01','2015-09-08','[\"\"]','Supprim&eacute;','[201,9,501,\"17\",\"4\",\"3\",99,100]','Touchard.Andre','5f4dcc3b5aa765d61d8327deb882cf99','','2015-06-22 12:37:43','8',35,'[2]','{\"0\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"20:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"14:30:00\"],\"2\":[\"12:15:00\",\"\",\"\",\"19:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"15:30:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"19:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"14:30:00\"],\"9\":[\"12:15:00\",\"\",\"\",\"19:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"15:30:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(16,'Angelina','Bouillon','Bouillon.Angelina@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Bouillon.Angelina','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 16:12:16','18',35,'[1]','{\"0\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"\",\"\",\"\",\"\"],\"2\":[\"09:00:00\",\"\",\"\",\"15:45:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"14:00:00\",\"15:00:00\",\"17:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"\",\"\",\"\",\"\"],\"9\":[\"09:00:00\",\"\",\"\",\"15:45:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"14:00:00\",\"15:00:00\",\"17:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,113.75,0,0,16.75,357),(62,'Agent_62','','','Magasinier','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_62','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(17,'Louis','Margasse','Margasse.Louis@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",601,\"201\",\"501\",\"401\",1,8,99,100]','Margasse.Louis','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 17:58:40','18',35,'[2]','{\"0\":[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"18:00:00\"],\"1\":[\"09:00:00\",\"10:00:00\",\"11:00:00\",\"17:15:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"09:00:00\",\"10:00:00\",\"12:00:00\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"18:00:00\"],\"8\":[\"09:00:00\",\"10:00:00\",\"11:00:00\",\"17:15:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"09:00:00\",\"10:00:00\",\"12:00:00\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,85.5833,0,0,11.25,285.583),(18,'Anna','Faucon','Faucon.Anna@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[\"1001\",99,100]','Faucon.Anna','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 17:59:05','18',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,173.75,0,0,4,357),(19,'Agent_19','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_19','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(20,'Anne','Bobo','Bobo.Anne@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Bobo.Anne','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 16:36:43','18',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"2\":[\"13:30:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"4\":[\"10:00:00\",\"\",\"\",\"17:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"9\":[\"13:30:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"11\":[\"10:00:00\",\"\",\"\",\"17:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,102.25,0,0,0,357),(21,'Antoine','Vigier','Vigier.Antoine@example.com','Biblioth&eacute;caire','Titulaire','D&eacute;partement des collections','2014-10-01','2015-07-31','[\"\"]','Supprim&eacute;','[201,9,501,\"17\",\"4\",\"3\",99,100]','Vigier.Antoine','5f4dcc3b5aa765d61d8327deb882cf99','','2015-06-22 14:03:20','8',35,'[2]','{\"0\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"19:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"20:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"19:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(22,'Martine','Conte','Conte.Martine@example.com','Magasinier','Titulaire','','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','Conte.Martine','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 19:02:57','35',35,'[1]','{\"0\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"10:15:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"10:15:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,99.5,0,0,10,357),(23,'Agent_23','','','','Titulaire','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_23','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(24,'Renaud','Godefroy','Godefroy.Renaud@example.com','Conservateur','Titulaire','','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"701\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"23\",\"201\",\"203\",\"206\",\"207\",\"501\",\"503\",\"506\",\"507\",\"401\",\"403\",\"406\",\"407\",\"301\",\"1001\",\"801\",1,8,99,100]','Godefroy.Renaud','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-03 16:12:22','10',35,'[1]','{\"0\":[\"09:30:00\",\"10:00:00\",\"13:00:00\",\"13:30:00\"],\"1\":[\"09:30:00\",\"10:00:00\",\"12:00:00\",\"18:00:00\"],\"2\":[\"09:30:00\",\"\",\"\",\"13:30:00\"],\"3\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:30:00\",\"10:00:00\",\"12:00:00\",\"14:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:30:00\",\"10:00:00\",\"13:00:00\",\"13:30:00\"],\"8\":[\"09:30:00\",\"10:00:00\",\"12:00:00\",\"18:00:00\"],\"9\":[\"09:30:00\",\"\",\"\",\"13:30:00\"],\"10\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"10:00:00\",\"12:00:00\",\"14:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,78.75,0,0,0,357),(25,'Benjamin','Le roy','Le roy.Benjamin@example.com','','Titulaire','','2014-10-01','0000-00-00','[\"\"]','Supprim&eacute;','[99,100]','Le roy.Benjamin','5f4dcc3b5aa765d61d8327deb882cf99','','2018-11-30 09:07:22','10',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,0.25,0,0,0,119),(26,'Benjamin','Pinon','Pinon.Benjamin@example.com','Conservateur','Titulaire','Direction','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",601,\"17\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"501\",\"502\",\"503\",\"504\",\"505\",\"506\",\"507\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",1,8,99,100]','Pinon.Benjamin','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 14:51:46','10',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"10:30:00\",\"13:00:00\",\"13:00:00\"],\"2\":[\"09:00:00\",\"10:00:00\",\"11:00:00\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"4\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"10:30:00\",\"13:00:00\",\"13:00:00\"],\"9\":[\"09:00:00\",\"10:00:00\",\"11:00:00\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"11\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,106.75,0,0,71.5,357),(27,'Bernard','Bouton','Bouton.Bernard@example.com','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','Bouton.Bernard','5f4dcc3b5aa765d61d8327deb882cf99','Suppression d&eacute;finitive le 02/12/2014','0000-00-00 00:00:00','0',0,'[2]','','','','2','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(28,'Bernard','Delage','Delage.Bernard@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Delage.Bernard','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-03 17:17:49','18',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"15:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"15:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"15:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"15:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,183.917,0,0,19.5,357),(29,'Camille','Danet','Danet.Camille@example.com','Conservateur','Titulaire','','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",601,\"17\",\"201\",\"501\",\"401\",1,8,99,100]','Danet.Camille','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-03 16:45:44','10',35,'[2]','{\"0\":[\"10:00:00\",\"14:00:00\",\"15:00:00\",\"18:00:00\"],\"1\":[\"09:30:00\",\"\",\"\",\"14:00:00\"],\"2\":[\"09:30:00\",\"13:00:00\",\"16:00:00\",\"18:00:00\"],\"3\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"14:00:00\",\"15:00:00\",\"18:00:00\"],\"8\":[\"09:30:00\",\"\",\"\",\"14:00:00\"],\"9\":[\"09:30:00\",\"13:00:00\",\"16:00:00\",\"18:00:00\"],\"10\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,94,0,0,2.25,357),(30,'Marie','Deprez','Deprez.Marie@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Deprez.Marie','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 12:21:38','18',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"14:45:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"14:00:00\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"14:45:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"14:00:00\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,16,0,0,0,178.5),(31,'Emmanuelle','Gantrel','Gantrel.Emmanuelle@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Gantrel.Emmanuelle','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-03 10:37:49','18',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"09:00:00\",\"\",\"\",\"17:45:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"12:30:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"09:00:00\",\"\",\"\",\"17:45:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"12:30:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,80,0,0,2.25,232.25),(32,'Candice','Brochard','Brochard.Candice@example.com','BibliothÃ©caire assistant spÃ©cialisÃ© classe exceptionnelle','Titulaire','D&eacute;partement des collections','2014-10-01','0000-00-00','[\"\"]','Supprim&eacute;','[99,100]','Brochard.Candice','5f4dcc3b5aa765d61d8327deb882cf99','','2018-07-27 10:14:23','10',35,'[1]','{\"0\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,357,0,0,0,357),(33,'Agent_33','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_33','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(34,'Candice','Gros','Gros.Candice@example.com','Magasinier','Titulaire','Bib. St Charles','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','Gros.Candice','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 09:21:13','35',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"09:00:00\",\"\",\"\",\"17:15:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"09:00:00\",\"\",\"\",\"17:15:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,53.417,0,0,0,249.917),(168,'Agent_168','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','Mission appui &agrave; la recherche','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_168','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(35,'William','Chatel','Chatel.William@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Chatel.William','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 13:51:16','18',35,'[2]','{\"0\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"10:00:00\",\"14:00:00\",\"15:00:00\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"10:00:00\",\"14:00:00\",\"15:00:00\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,0,0,0,0,302.75),(36,'Paul','Chaudron','Chaudron.Paul@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Chaudron.Paul','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 17:03:13','18',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"4\":[\"09:00:00\",\"14:00:00\",\"15:00:00\",\"16:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"11\":[\"09:00:00\",\"14:00:00\",\"15:00:00\",\"16:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,26.25,0,0,0,357),(64,'Capucine','Chenu','Chenu.Capucine@example.com','Magasinier','','','2014-12-01','2015-02-27','[\"\"]','Supprim&eacute;','[99,100]','Chenu.Capucine','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','6',0,'[1]','{\"0\":[\"09:30:00\",\"\",\"\",\"19:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:30:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:30:00\",\"\",\"\",\"19:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"\",\"\",\"13:30:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(37,'Gaetan','Merle','Merle.Gaetan@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','D&eacute;partement de l&#39;informatique','2014-10-01','2015-08-31','[\"\"]','Supprim&eacute;','[99,100]','Merle.Gaetan','5f4dcc3b5aa765d61d8327deb882cf99','','2015-07-07 10:31:20','10',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"20:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(38,'Capucine','Tricot','Tricot.Capucine@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[\"6\",\"9\",\"701\",\"3\",\"4\",601,\"201\",\"501\",\"401\",1,8,99,100]','Tricot.Capucine','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-03 16:17:09','18',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"09:30:00\",\"10:00:00\",\"11:00:00\",\"18:00:00\"],\"2\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:30:00\",\"\",\"\",\"14:15:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"09:30:00\",\"10:00:00\",\"11:00:00\",\"18:00:00\"],\"9\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"\",\"\",\"14:15:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,104.583,0,0,32,285.583),(39,'Agent_39','','','Magasinier','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_39','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(40,'Agent_40','','','','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_40','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(41,'Agent_41','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe exceptionnelle','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_41','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(42,'Agent_42','','','Magasinier','Titulaire','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_42','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(43,'Agent_43','','','Biblioth&eacute;caire','Contractuel','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_43','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(44,'Chloe','Carette','Carette.Chloe@example.com','Conservateur','Titulaire','','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"207\",\"507\",\"407\",1,8,99,100]','Carette.Chloe','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-02 13:48:03','10',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"10:00:00\",\"10:30:00\",\"13:00:00\",\"18:00:00\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"10:30:00\",\"13:00:00\",\"18:00:00\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,352,0,0,0,357),(45,'Christian','Goujon','Goujon.Christian@example.com','Conservateur','Titulaire','','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",601,\"17\",\"201\",\"501\",\"401\",1,8,99,100]','Goujon.Christian','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 17:14:54','10',35,'[2]','{\"0\":[\"10:00:00\",\"11:00:00\",\"12:00:00\",\"20:00:00\"],\"1\":[\"10:30:00\",\"10:30:00\",\"13:00:00\",\"18:30:00\"],\"2\":[\"09:45:00\",\"\",\"\",\"15:30:00\"],\"3\":[\"10:30:00\",\"\",\"\",\"18:30:00\"],\"4\":[\"10:30:00\",\"\",\"\",\"18:30:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"10:00:00\",\"11:00:00\",\"12:00:00\",\"20:00:00\"],\"8\":[\"10:30:00\",\"10:30:00\",\"13:00:00\",\"18:30:00\"],\"9\":[\"09:45:00\",\"\",\"\",\"15:30:00\"],\"10\":[\"10:30:00\",\"\",\"\",\"18:30:00\"],\"11\":[\"10:30:00\",\"\",\"\",\"18:30:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,129.25,0,0,6.75,357),(46,'Laurence','Amasson','Amasson.Laurence@example.com','Magasinier','Titulaire','','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','Amasson.Laurence','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 17:59:05','35',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"15:45:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"15:45:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,7,0,0,0,357),(47,'Claire','Valette','Valette.Claire@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Valette.Claire','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 17:26:15','18',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"10:00:00\",\"10:00:00\",\"11:00:00\",\"18:00:00\"],\"2\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"10:00:00\",\"11:00:00\",\"18:00:00\"],\"9\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,7.5,0,0,1.25,357),(48,'Brigitte','Delmas','Delmas.Brigitte@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Delmas.Brigitte','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 19:15:11','18',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"14:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"14:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,146,0,0,4,357),(49,'Clarisse','Pignon','Pignon.Clarisse@example.com','Magasinier','Titulaire','','2014-10-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"201\",\"207\",\"501\",\"507\",\"401\",\"407\",1,8,99,100]','Pignon.Clarisse','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-03 15:49:24','35',35,'[2]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"\",\"\",\"\",\"\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"\",\"\",\"\",\"\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"09:30:00\",\"\",\"\",\"20:00:00\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,185.25,0,0,0,357),(50,'Clarisse','Silva','Silva.Clarisse@example.com','Conservateur','Titulaire','D&eacute;partement des collections','2014-10-01','2015-09-09','[\"\"]','Supprim&eacute;','[201,9,501,\"17\",\"4\",\"3\",99,100]','Silva.Clarisse','5f4dcc3b5aa765d61d8327deb882cf99','','2015-06-09 17:15:41','6',17.5,'[1]','{\"0\":[\"09:15:00\",\"11:00:00\",\"12:00:00\",\"19:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"14:30:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"14:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:15:00\",\"11:00:00\",\"12:00:00\",\"20:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"9\":[\"09:00:00\",\"14:00:00\",\"\",\"\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"14:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(51,'Agent_51','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_51','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(52,'Agent_52','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_52','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(53,'Agent_53','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_53','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(54,'Agent_54','','','Etudiant','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_54','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(55,'Agent_55','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_55','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(63,'ClÃ©ment','Maurin','Maurin.Clement@example.com','Magasinier','Contractuel','','2014-12-01','2015-01-14','[\"\"]','Supprim&eacute;','[99,100]','Maurin.Clement','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','17',0,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"19:00:00\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"20:00:00\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(56,'ClÃ©ment','Normand','Normand.Clement@example.com','Conservateur','Titulaire','Direction','2014-10-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"501\",\"502\",\"503\",\"504\",\"505\",\"506\",\"507\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",1,8,99,100]','Normand.Clement','5f4dcc3b5aa765d61d8327deb882cf99','','2019-04-04 15:34:55','10',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"\",\"\",\"\",\"\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"\",\"\",\"\",\"\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"18:00:00\",\"\",\"\",\"20:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,17.5,0,0,2.25,357),(57,'Coline','Ragot','Ragot.Coline@example.com','Conservateur','Titulaire','D&eacute;partement de l&#39;informatique','2014-10-01','2015-08-31','[\"\"]','Supprim&eacute;','[201,9,501,\"17\",\"4\",\"3\",99,100]','Ragot.Coline','5f4dcc3b5aa765d61d8327deb882cf99','','2015-06-22 12:17:54','6',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"1\":[\"09:30:00\",\"10:30:00\",\"14:00:00\",\"19:00:00\"],\"2\":[\"09:30:00\",\"10:00:00\",\"18:00:00\",\"19:00:00\"],\"3\":[\"09:15:00\",\"11:30:00\",\"14:30:00\",\"18:30:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"8\":[\"09:30:00\",\"10:30:00\",\"14:00:00\",\"20:00:00\"],\"9\":[\"09:30:00\",\"10:00:00\",\"18:00:00\",\"20:00:00\"],\"10\":[\"09:15:00\",\"11:30:00\",\"14:30:00\",\"18:30:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(61,'Agent_61','','','AENES','Titulaire','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_61','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(58,'MichaÃ«l','Masson','Masson.Michael@example.com','Magasinier','Titulaire','','2014-12-02','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"6\",\"3\",\"4\",\"21\",\"22\",\"5\",\"17\",\"25\",\"23\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"501\",\"502\",\"503\",\"504\",\"505\",\"506\",\"507\",\"301\",\"302\",\"303\",\"304\",\"305\",\"306\",\"307\",\"1001\",\"1002\",\"1003\",\"1004\",\"1005\",\"1006\",\"1007\",\"801\",\"802\",\"803\",\"804\",\"805\",\"806\",\"807\",6,9,99,100]','Masson.Michael','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2014-12-02 11:46:09','2019-04-04 17:32:40','35',35,'[\"1\"]','{\"0\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:30:00\",\"\",\"\",\"13:30:00\"],\"3\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:30:00\",\"\",\"\",\"13:30:00\"],\"10\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',0,89.083,0,0,4,357),(65,'Damien','Bret','Bret.Damien@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2015-01-05','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','Bret.Damien','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2015-01-14 09:13:15','2019-04-03 19:42:31','18',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"15:45:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"15:45:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,129.75,0,0,0,357),(68,'Gaetan','Merle','Merle.Gaetan@example.com','Moniteur','Contractuel','','2017-09-11','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','damien.merle','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2015-02-06 17:01:01','2019-04-02 18:01:56','16',16,'[1]','{\"0\":[\"11:00:00\",\"\",\"\",\"19:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"19:00:00\"],\"3\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"11:00:00\",\"14:00:00\",\"15:00:00\",\"20:00:00\"],\"5\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"7\":[\"11:00:00\",\"\",\"\",\"19:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"19:00:00\"],\"10\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"11:00:00\",\"14:00:00\",\"15:00:00\",\"19:00:00\"],\"12\":[\"09:00:00\",\"\",\"\",\"13:00:00\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,0,0,0,357),(69,'David','Nicol','Nicol.David@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','david.nicol','5f4dcc3b5aa765d61d8327deb882cf99','Suppression dÃ©finitive le 13/11/2017','0000-00-00 00:00:00','',0,'[2]','','','','2','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(164,'David','Rigault','Rigault.David@example.com','Magasinier','Contractuel','','2017-11-13','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','david.rigault','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-11-15 17:26:58','2019-04-04 17:31:43','35',35,'[1]','','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,125.75,0,0,2.25,357),(70,'Elena','Fischer','Fischer.Elena@example.com','Conservateur','','','2015-03-02','2015-03-24','[\"\"]','Supprim&eacute;','[99,100]','elena.fischer','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','6',35,'[1]','{\"0\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(71,'Elena','Fradin','Fradin.Elena@example.com','Magasinier','','','0000-00-00','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','elena.fradin','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','35',35,'[2]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"\",\"\",\"\",\"\"],\"2\":[\"\",\"\",\"\",\"\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"\",\"\",\"\",\"\"],\"9\":[\"\",\"\",\"\",\"\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"\",\"\",\"\",\"\"]}','Agents sans nom pour &eacute;viter saisie absence au 1er dans l&#039;ordre alphab&eacute;tique','','0','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,0,0,357),(72,'Elena','Valette','Valette.Elena@example.com','Biblioth&eacute;caire','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','elena.valette','5f4dcc3b5aa765d61d8327deb882cf99','Suppression dÃ©finitive le 13/12/2018','0000-00-00 00:00:00','',0,'[1]','','','','2','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,NULL,NULL,NULL),(190,'Agent_190','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_190','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(74,'Elisa','Perret','Perret.Elisa@example.com','Conservateur','Titulaire','Coord. de droit','2015-09-07','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"201\",\"202\",\"204\",\"206\",\"501\",\"502\",\"504\",\"506\",\"401\",\"402\",\"404\",\"406\",1,8,99,100]','elisa.perret','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2015-09-07 16:33:42','2019-04-04 16:55:54','10',35,'[1]','{\"0\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"18:00:00\"],\"1\":[\"09:00:00\",\"10:30:00\",\"13:00:00\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"12:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"18:00:00\"],\"8\":[\"09:00:00\",\"10:30:00\",\"13:00:00\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"12:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,174.75,0,0,18.75,357),(73,'Myriam','Tournier','Tournier.Myriam@example.com','Magasinier','Titulaire','','2015-04-01','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"6\",\"3\",\"4\",\"21\",\"22\",\"5\",\"17\",\"202\",\"502\",\"301\",\"302\",\"1001\",\"1002\",\"902\",\"802\",6,9,99,100]','elisa.tournier','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2015-04-18 09:59:37','2019-04-04 15:58:55','35',35,'[\"2\"]','{\"0\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',0,127.75,0,0,12.5,357),(96,'Agent_96','','','Autre','','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_96','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(75,'Agent_75','','','Etudiant','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_75','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(76,'Agent_76','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_76','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(77,'Agent_77','','','Moniteur','Contractuel','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_77','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(78,'Agent_78','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_78','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(79,'Agent_79','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_79','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(80,'Agent_80','','','Conservateur','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_80','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(82,'Agent_82','','','BibliothÃ©caire assistant spÃ©cialisÃ© classe normal','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_82','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(95,'Agent_95','','','Etudiant','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_95','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(81,'Agent_81','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_81','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(83,'Agent_83','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_83','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(84,'Agent_84','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_84','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(85,'Agent_85','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_85','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(86,'Agent_86','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','D&eacute;partement de l&#39;informatique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_86','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(87,'Agent_87','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_87','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(88,'Agent_88','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_88','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(89,'Agent_89','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_89','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(90,'Agent_90','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','D&eacute;partement de l&#39;informatique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_90','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(91,'Agent_91','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_91','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(92,'Agent_92','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_92','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(93,'Agent_93','','','Biblioth&eacute;caire','Titulaire','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_93','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(94,'Guillaume','Perin','Perin.Guillaume@example.com','BibliothÃ©caire','Titulaire','','2016-04-04','0000-00-00','[\"\"]','Supprim&eacute;','[601,\"4\",\"3\",\"201\",\"501\",\"401\",1,9,8,99,100]','guillaume.perin','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-04-04 16:05:05','2018-07-27 12:25:09','8',35,'[1]','{\"0\":[\"09:45:00\",\"11:00:00\",\"12:00:00\",\"17:30:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:30:00\",\"\",\"\",\"17:30:00\"],\"3\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:30:00\",\"\",\"\",\"15:30:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:45:00\",\"11:00:00\",\"12:00:00\",\"17:30:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:30:00\",\"\",\"\",\"17:30:00\"],\"10\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"\",\"\",\"15:30:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,348.25,0,0,0,357),(100,'Agent_100','','','','Contractuel','Coord. de droit','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_100','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(125,'Agent_125','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_125','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(101,'Heloise','Baret','Baret.Heloise@example.com','Magasinier','Contractuel','','2016-09-06','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"3\",\"4\",99,100]','heloise.baret','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-06 13:09:45','2019-04-03 14:47:45','35',35,'[2]','{\"0\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"17:30:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"15:30:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"11:00:00\",\"12:00:00\",\"17:30:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"15:30:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,164.5,0,0,0,357),(98,'Agent_98','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_98','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(97,'Jade','Garreau','Garreau.Jade@example.com','Technicien','Titulaire','Coord. de droit','2016-05-23','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','jade.garreau','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-05-23 10:32:18','2019-04-01 11:59:28','0',17.5,'[2]','{\"0\":[\"11:00:00\",\"\",\"\",\"19:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"12:30:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"4\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"11:00:00\",\"\",\"\",\"19:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"12:30:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"17:00:00\"],\"11\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,144.5,0,0,0,178.5),(102,'Agent_102','','','BibliothÃ©caire','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_102','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(99,'Jean','Michon','Michon.Jean@example.com','Magasinier','Titulaire','','2016-09-05','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"6\",\"9\",\"701\",\"3\",\"4\",601,\"201\",\"501\",\"401\",\"301\",\"1001\",1,8,99,100]','jean.michon','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-05 15:18:01','2019-04-04 13:17:47','35',35,'[2]','{\"0\":[\"10:15:00\",\"11:00:00\",\"12:00:00\",\"18:00:00\"],\"1\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:15:00\",\"\",\"\",\"16:45:00\"],\"3\":[\"09:15:00\",\"\",\"\",\"16:45:00\"],\"4\":[\"09:15:00\",\"\",\"\",\"16:30:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:15:00\",\"11:00:00\",\"12:00:00\",\"18:00:00\"],\"8\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:15:00\",\"\",\"\",\"16:45:00\"],\"10\":[\"09:15:00\",\"\",\"\",\"16:45:00\"],\"11\":[\"09:15:00\",\"\",\"\",\"16:30:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,82.25,0,0,1,357),(103,'Claude','Wolf','Wolf.Claude@example.com','Magasinier','Titulaire','','2016-09-06','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[\"6\",\"701\",\"3\",\"201\",\"501\",6,9,99,100]','jean-claude.wolf','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-06 13:32:03','2019-04-04 23:52:53','35',35,'[\"2\"]','{\"0\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:30:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"17:30:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:30:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',0,87,0,0,0,357),(104,'Jean-Luc','Huguet','Huguet.Jean-Luc@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2016-09-06','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','jean-luc.huguet','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-06 13:38:39','2019-02-21 16:57:15','18',35,'[1]','{\"0\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"11:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,1.25,0,0,0,208.25),(105,'Agent_105','','','Conservateur','Titulaire','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_105','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(106,'Marc','Ville','Ville.Marc@example.com','Conservateur','Titulaire','','2016-09-01','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",601,\"17\",\"201\",\"501\",\"401\",1,8,99,100]','jean-marc.ville','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-07 17:42:49','2019-04-05 00:11:48','10',35,'[1]','{\"0\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"09:30:00\",\"10:00:00\",\"12:00:00\",\"18:00:00\"],\"2\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"13:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"09:30:00\",\"10:00:00\",\"12:00:00\",\"18:00:00\"],\"9\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"13:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:30:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,50.25,0,0,0,357),(107,'Luc','Bailly','Bailly.Luc@example.com','Conservateur','Titulaire','','2016-09-09','0000-00-00','[\"11\",\"9\"]','Actif','[\"6\",\"3\",\"4\",\"17\",\"201\",\"501\",6,9,99,100]','jean-marie.bailly','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-09 14:36:49','2019-04-04 09:30:46','10',35,'[\"2\"]','{\"0\":[\"09:15:00\",\"\",\"\",\"17:45:00\"],\"1\":[\"09:15:00\",\"10:30:00\",\"12:00:00\",\"17:30:00\"],\"2\":[\"09:15:00\",\"\",\"\",\"17:30:00\"],\"3\":[\"09:15:00\",\"\",\"\",\"15:30:00\"],\"4\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:15:00\",\"\",\"\",\"17:45:00\"],\"8\":[\"09:15:00\",\"10:30:00\",\"12:00:00\",\"17:30:00\"],\"9\":[\"09:15:00\",\"\",\"\",\"17:30:00\"],\"10\":[\"09:15:00\",\"\",\"\",\"15:30:00\"],\"11\":[\"09:15:00\",\"\",\"\",\"18:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',0,84,0,0,16.5,357),(121,'Jean-Marie','Guillaume','Guillaume.Jean-Marie@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission appui &agrave; la recherche','2017-06-22','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[99,100]','jean-marie.guillaume','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-06-22 17:18:19','2019-03-14 14:28:47','18',35,'[2]','','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,184.833,0,0,6,285.583),(108,'Agent_108','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','D&eacute;partement de l&#39;informatique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_108','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(109,'Jean-Paul','Brown','Brown.Jean-Paul@example.com','Magasinier','Titulaire','','2016-09-14','0000-00-00','[\"5\",\"6\",\"8\"]','Actif','[99,100]','jean-paul.brown','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-09-14 11:14:40','2019-04-04 15:00:36','35',35,'[2]','{\"0\":[\"09:00:00\",\"\",\"\",\"17:45:00\"],\"1\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"2\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"09:00:00\",\"\",\"\",\"17:45:00\"],\"8\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"9\":[\"09:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"16:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,168,0,0,0,357),(110,'Agent_110','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_110','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(111,'Agent_111','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_111','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(112,'Agent_112','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_112','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(113,'Agent_113','','','BibliothÃ©caire assistant spÃ©cialisÃ© classe normal','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_113','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(114,'Joseph','Lemaitre','Lemaitre.Joseph@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Bib. Broca','2016-11-18','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"22\",\"5\",\"17\",\"202\",\"502\",\"402\",\"302\",\"1002\",\"902\",\"802\",1,8,99,100]','joseph.lemaitre','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-11-18 14:53:56','2019-04-03 21:55:10','18',35,'[1]','{\"0\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"\",\"\",\"\",\"\"],\"4\":[\"\",\"\",\"\",\"\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"\",\"\",\"\",\"\"],\"11\":[\"\",\"\",\"\",\"\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,157,0,0,0,456),(115,'Agent_115','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_115','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(116,'Julien','Boisson','Boisson.Julien@example.com','Biblioth&eacute;caire','Contractuel','','2016-11-30','0000-00-00','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"701\",\"3\",\"4\",601,\"24\",\"17\",\"201\",\"501\",\"401\",\"301\",\"1001\",\"801\",1,8,99,100]','julien.boisson','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2016-11-30 13:45:26','2018-09-10 13:23:43','6',35,'[1]','{\"0\":[\"\",\"\",\"\",\"\"],\"1\":[\"\",\"\",\"\",\"\"],\"2\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"4\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"\",\"\",\"\",\"\"],\"8\":[\"\",\"\",\"\",\"\"],\"9\":[\"09:00:00\",\"\",\"\",\"16:30:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"11\":[\"09:00:00\",\"\",\"\",\"13:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,0,0,0,357),(117,'Agent_117','','','','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_117','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(149,'Agent_149','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_149','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(120,'Juliette','Ollivier','Ollivier.Juliette@example.com','IGE','Titulaire','Bib. St Charles','2017-06-22','0000-00-00','[\"5\",\"6\",\"8\",\"11\",\"9\"]','Actif','[\"9\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"205\",\"505\",\"405\",\"301\",\"305\",\"805\",1001,1,8,1005,6,99,100]','juliette.ollivier','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-06-22 17:15:29','2019-04-04 13:17:12','0',0,'[1]','','','','0','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,53,0,0,0,357),(118,'Justine','Drouot','Drouot.Justine@example.com','Biblioth&eacute;caire','Titulaire','D&eacute;partement des services publics','2017-04-03','2019-09-18','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"3\",\"4\",601,\"201\",\"501\",\"401\",\"1001\",1,8,99,100]','justine.drouot','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-04-03 16:33:10','2019-04-04 15:00:31','8',35,'[1]','{\"0\":[\"10:00:00\",\"\",\"\",\"16:00:00\"],\"1\":[\"10:00:00\",\"\",\"\",\"16:00:00\"],\"2\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"3\":[\"10:00:00\",\"\",\"\",\"16:00:00\"],\"4\":[\"10:00:00\",\"\",\"\",\"19:00:00\"],\"5\":[\"\",\"\",\"\",\"\"],\"7\":[\"10:00:00\",\"\",\"\",\"16:00:00\"],\"8\":[\"10:00:00\",\"\",\"\",\"16:00:00\"],\"9\":[\"10:00:00\",\"\",\"\",\"18:00:00\"],\"10\":[\"10:00:00\",\"\",\"\",\"16:00:00\"],\"11\":[\"10:00:00\",\"\",\"\",\"19:00:00\"],\"12\":[\"\",\"\",\"\",\"\"]}','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,88.25,0,0,0,357),(119,'Agent_119','','','Biblioth&eacute;caire','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_119','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(122,'Agent_122','','','Technicien','Titulaire','Bib. J. Lagroye','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_122','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(123,'Agent_123','','','Magasinier','Titulaire','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_123','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(124,'Agent_124','','','Magasinier','Titulaire','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_124','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(127,'Agent_127','','','Magasinier','Titulaire','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_127','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(126,'Agent_126','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_126','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(148,'Agent_148','','','','','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_148','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(145,'Agent_145','','','BibliothÃ©caire','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_145','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(128,'Laurent','Coulon','Coulon.Laurent@example.com','','','','0000-00-00','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','laurent.coulon','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','0',0,'[1]','','Agent pour les planning de prÃ©sence type pour les pÃ©riodes de fermeture. \r\nAttention : en cas de jours fÃ©riÃ©s, vÃ©rifier que le jour fÃ©riÃ©s comportera   heures dans le planning de prÃ©sence.','','1','contact@jeromecombes.com','',NULL,'','[1,1,1]',1,357,0,0,0,357),(129,'Leane','Pele','Pele.Leane@example.com','','','','0000-00-00','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','leane.pele','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','0',0,'[2]','','Agent pour les planning de prÃ©sence type pour les pÃ©riodes de fermeture. \r\nAttention : en cas de jours fÃ©riÃ©s, vÃ©rifier que le jour fÃ©riÃ© comportera 5h45  heures dans le planning de prÃ©sence.','','1','contact@jeromecombes.com','',NULL,'','[1,1,1]',1,357,0,0,0,357),(130,'Leane','Wendling','Wendling.Leane@example.com','','','','0000-00-00','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','leane.wendling','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','0',0,'[1]','','Agent pour les planning de prÃ©sence type pour les pÃ©riodes de fermeture. \r\nAttention : en cas de jours fÃ©riÃ©s, vÃ©rifier que le jour fÃ©riÃ© comportera  4h15 heures dans le planning de prÃ©sence.','','1','contact@jeromecombes.com','',NULL,'','[1,1,1]',1,357,0,0,0,357),(131,'Lena','Dutertre','Dutertre.Lena@example.com','','','','0000-00-00','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','lena.dutertre','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','0',0,'[2]','','','','1','contact@jeromecombes.com','',NULL,'','[1,1,1]',1,357,0,0,0,357),(132,'Agent_132','','','BibliothÃ©caire assistant spÃ©cialisÃ© classe normal','Contractuel','Coord. de droit','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_132','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(133,'Lily','Martin','Martin.Lily@example.com','','Titulaire','Bib. Cuzin','2017-09-04','2019-09-18','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"203\",\"501\",\"503\",\"401\",\"403\",\"301\",\"303\",\"1001\",\"1003\",\"803\",8,1,99,100]','lily.martin','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-09-04 17:24:11','2019-04-02 11:12:12','0',0,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,242.583,0,0,0,285.583),(134,'Agent_134','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_134','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(135,'Lily','Romero','Romero.Lily@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','','2017-09-01','2019-09-18','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"22\",\"5\",\"17\",\"25\",\"23\",\"13\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"501\",\"502\",\"503\",\"504\",\"505\",\"506\",\"507\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",\"301\",\"302\",\"303\",\"304\",\"305\",\"306\",\"307\",\"1001\",\"1002\",\"1003\",\"1004\",\"1005\",\"1006\",\"1007\",\"901\",\"801\",\"802\",\"803\",\"804\",\"805\",\"806\",\"807\",1,8,99,100]','lily.romero','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-09-04 17:47:54','2019-04-04 19:30:22','10',35,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,112.5,0,0,0,357),(136,'Lily','Trouillet','Trouillet.Lily@example.com','Magasinier','Titulaire','','2017-09-05','0000-00-00','[\"\"]','Supprim&eacute;','[99,100]','lily.trouillet','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-09-05 12:23:09','2018-10-10 11:11:11','17',35,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,357,0,0,0,357),(137,'Lionel','Pierret','Pierret.Lionel@example.com','','Titulaire','Bib. Cuzin','2017-09-05','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','lionel.pierret','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-09-05 15:40:37','2019-04-04 10:02:20','0',0,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,226,0,0,0,357),(179,'Lise','Grantelle','Grantelle.Lise@example.com','Conservateur','Titulaire','D&eacute;partement des services publics','2018-09-03','2019-09-18','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"701\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"23\",\"201\",\"501\",\"401\",\"301\",\"1001\",\"801\",1,8,99,100]','lise.gantrelle','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2018-09-04 10:47:55','2019-04-04 16:03:41','6',35,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,11.5,0,0,8.25,357),(138,'Lise','Morisset','Morisset.Lise@example.com','','Titulaire','','2017-09-01','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','lise.morisset','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-09-06 13:59:06','2019-04-04 12:26:27','10',35,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,137,0,0,2.75,357),(139,'Agent_139','','','BibliothÃ©caire','Titulaire','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_139','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(140,'Agent_140','','','BibliothÃ©caire assistant spÃ©cialisÃ© classe normal','Titulaire','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_140','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(141,'Agent_141','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_141','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(142,'Agent_142','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_142','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(143,'Agent_143','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_143','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(144,'Agent_144','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_144','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(155,'Agent_155','','','Magasinier','Contractuel','D&eacute;partement de l&amp;#39;informatique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_155','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(146,'Lucien','Ducos','Ducos.Lucien@example.com','','Contractuel','','2017-09-01','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','lucien.ducos','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-09-11 11:41:05','2019-04-01 17:04:35','10',35,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,4,0,0,357),(165,'Agent_165','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_165','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(147,'Agent_147','','','BibliothÃ©caire assistant spÃ©cialisÃ© classe normal','Contractuel','Coord. de droit','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_147','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(151,'Agent_151','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_151','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(152,'Agent_152','','','AENES','Contractuel','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_152','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(154,'Agent_154','','','BibliothÃ©caire assistant spÃ©cialisÃ© classe normal','Contractuel','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_154','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(153,'Agent_153','','','Moniteur','Contractuel','','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_153','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(156,'Maeva','Genty','Genty.Maeva@example.com','Magasinier','Contractuel','','2017-10-02','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','maeva.genty','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-09 14:03:33','2019-04-04 12:59:33','17',35,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,77.25,0,0,33,357),(157,'Maeva','Renaud','Renaud.Maeva@example.com','','Contractuel','Coord. de droit','2017-09-13','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','maeva.renaud','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-09 14:14:36','2019-04-04 18:07:35','10',35,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,76.75,0,0,0,357),(158,'Manon','Chatelet','Chatelet.Manon@example.com','Moniteur','Contractuel','','2017-09-11','0000-00-00','[\"\"]','Supprim&eacute;','[99,100]','manon.chatelet','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-09 14:48:02','2018-06-28 10:23:03','12',12,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,357,0,0,0,357),(159,'Manon','Travers','Travers.Manon@example.com','Technicien','Contractuel','Bib. J. Lagroye','2017-10-09','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','manon.travers','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-09 16:38:59','2019-04-01 17:50:07','0',35,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,337.5,0,0,0,357),(160,'Agent_160','','','','Contractuel','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_160','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(161,'Margaux','Breuil','Breuil.Margaux@example.com','Moniteur','Contractuel','','2017-09-11','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','margaux.breuil','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-11 11:55:30','2019-03-29 10:11:09','15',15,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,0,0,0,357),(162,'Margaux','Serra','Serra.Margaux@example.com','Moniteur','Contractuel','','2017-09-11','0000-00-00','[\"\"]','Supprim&eacute;','[99,100]','margaux.serra','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-11 11:57:58','2018-03-21 17:51:33','16',16,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,0,0,0,357),(163,'Marianne','Dumont','Dumont.Marianne@example.com','Moniteur','Contractuel','','2017-10-23','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','marianne.dumont','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2017-10-25 14:09:47','2019-03-29 18:06:09','15',15,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,357,0,0,0,357),(166,'Marie','Chazal','Chazal.Marie@example.com','AENES','Titulaire','Direction','2018-02-01','2019-09-18','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"3\",\"4\",\"21\",601,\"24\",\"17\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"501\",\"502\",\"503\",\"504\",\"505\",\"506\",\"507\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",1,8,99,100]','marie.chazal','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2018-02-01 15:07:47','2019-04-04 09:02:38','0',0,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,41.5,0,0,0,357),(167,'Agent_167','','','Autre','Contractuel','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_167','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(169,'Marion','Fuentes','Fuentes.Marion@example.com','','','','0000-00-00','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','marion.fuentes','5f4dcc3b5aa765d61d8327deb882cf99','','0000-00-00 00:00:00','0',0,'[2]','','','','1','contact@jeromecombes.com','',NULL,'','[0,0,0]',1,357,0,0,0,357),(170,'Agent_170','','','Conservateur','Titulaire','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_170','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(171,'Agent_171','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_171','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(172,'Agent_172','','','Magasinier','Contractuel','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_172','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(173,'Agent_173','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe sup&eacute;rieure','Titulaire','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_173','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(174,'Agent_174','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission documentation &eacute;lectronique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_174','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(175,'Meline','Dubourg','Dubourg.Meline@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','D&eacute;partement des collections','2018-08-31','2019-09-18','[\"\"]','Supprim&eacute;','[99,100]','meline.dubourg','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2018-08-31 13:26:40','2019-04-04 17:00:40','10',35,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,100.25,0,0,5,357),(189,'Meline','Marchand','Marchand.Meline@example.com','','','','2018-12-18','2019-09-18','[\"\"]','Supprim&eacute;','a:2:{i:0;i:99;i:1;i:100;}','meline.marchand','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2018-12-18 10:49:03','2019-02-12 12:06:11','',0,'[2]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[1,1,1]',1,NULL,0,NULL,NULL,NULL),(191,'Agent_191','','','Autre','Contractuel','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_191','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(176,'Melissa','Marechal','Marechal.Melissa@example.com','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe sup&eacute;rieure','Titulaire','D&eacute;partement des collections','2018-09-03','2019-09-18','[\"\"]','Supprim&eacute;','[\"6\",\"9\",\"3\",601,\"201\",\"501\",\"401\",1,8,99,100]','melissa.marechal','5f4dcc3b5aa765d61d8327deb882cf99','Importation LDAP 2018-09-03 12:32:04','2019-04-04 17:24:41','10',35,'[1]','','','','1','contact@jeromecombes.com','',NULL,NULL,'[0,0,0]',1,92,0,0,21,357),(177,'Agent_177','','','Biblioth&eacute;caire assistant sp&eacute;cialis&eacute; classe normal','Titulaire','Mission documentation &eacute;lectronique','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_177','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(178,'Agent_178','','','Magasinier','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_178','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(180,'Agent_180','','','AENES','Titulaire','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_180','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(183,'Agent_183','','','Moniteur','','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_183','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(181,'Agent_181','','','Magasinier','Contractuel','D&eacute;partement des collections','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_181','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(182,'Agent_182','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_182','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(184,'Agent_184','','','Moniteur','','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_184','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(185,'Agent_185','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_185','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(188,'Agent_188','','','Moniteur','','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_188','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(187,'Agent_187','','','Etudiant','','Bib. Broca','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_187','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(186,'Agent_186','','','','Contractuel','Coord. de droit','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_186','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(192,'Agent_192','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_192','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(193,'Agent_193','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_193','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(194,'Agent_194','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_194','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(195,'Agent_195','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_195','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(196,'Agent_196','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_196','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(197,'Agent_197','','','Moniteur','Contractuel','D&eacute;partement des services publics','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_197','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(198,'Agent_198','','','Biblioth&eacute;caire','Titulaire','Direction','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_198','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[1]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(199,'Agent_199','','','Magasinier','Contractuel','Coord. de droit','0000-00-00','0000-00-00','[\"\"]','Supprim&eacute;','','deleted_199','','Suppression dÃ©finitive le 18/09/2019','0000-00-00 00:00:00','',0,'[2]','','','','2','','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_notes`
--

DROP TABLE IF EXISTS `pl_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `site` int(3) NOT NULL DEFAULT '1',
  `text` text,
  `perso_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_notes`
--

LOCK TABLES `pl_notes` WRITE;
/*!40000 ALTER TABLE `pl_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pl_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_notifications`
--

DROP TABLE IF EXISTS `pl_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) DEFAULT NULL,
  `site` int(2) NOT NULL DEFAULT '1',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `site` (`site`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_notifications`
--

LOCK TABLES `pl_notifications` WRITE;
/*!40000 ALTER TABLE `pl_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `pl_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste`
--

DROP TABLE IF EXISTS `pl_poste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `poste` int(11) NOT NULL DEFAULT '0',
  `absent` enum('0','1','2') NOT NULL DEFAULT '0',
  `chgt_login` int(4) DEFAULT NULL,
  `chgt_time` datetime NOT NULL,
  `debut` time NOT NULL,
  `fin` time NOT NULL,
  `supprime` enum('0','1') DEFAULT '0',
  `site` int(3) DEFAULT '1',
  `grise` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `site` (`site`)
) ENGINE=MyISAM AUTO_INCREMENT=780 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste`
--

LOCK TABLES `pl_poste` WRITE;
/*!40000 ALTER TABLE `pl_poste` DISABLE KEYS */;
INSERT INTO `pl_poste` VALUES (1,30,'2019-09-19',10,'0',1,'2019-09-19 15:58:30','10:00:00','11:00:00','0',1,'0'),(2,34,'2019-09-19',10,'0',1,'2019-09-19 15:58:32','11:00:00','12:00:00','0',1,'0'),(3,31,'2019-09-19',37,'0',1,'2019-09-19 15:58:47','10:00:00','11:00:00','0',2,'0'),(4,35,'2019-09-19',38,'0',1,'2019-09-19 15:58:48','10:00:00','11:00:00','0',2,'0'),(5,29,'2019-09-19',47,'0',1,'2019-09-19 15:58:51','10:00:00','11:00:00','0',2,'0'),(6,45,'2019-09-19',48,'0',1,'2019-09-19 15:58:53','10:00:00','11:00:00','0',2,'0'),(7,30,'2019-09-19',5,'0',1,'2019-09-19 16:07:15','11:00:00','12:00:00','0',1,'0'),(8,104,'2019-09-19',6,'0',1,'2019-09-19 16:07:16','10:00:00','11:00:00','0',1,'0'),(9,38,'2019-09-19',8,'0',1,'2019-09-19 16:07:18','11:00:00','12:00:00','0',1,'0'),(10,18,'2019-09-19',7,'0',1,'2019-09-19 16:07:20','13:00:00','14:00:00','0',1,'0'),(11,104,'2019-09-19',12,'0',1,'2019-09-19 16:07:21','11:00:00','12:00:00','0',1,'0'),(12,101,'2019-09-19',48,'0',1,'2019-09-19 16:07:25','11:00:00','12:00:00','0',2,'0'),(13,35,'2019-09-19',38,'0',1,'2019-09-19 16:07:30','14:00:00','15:00:00','0',2,'0'),(14,11,'2019-09-19',47,'0',1,'2019-09-19 16:07:32','15:00:00','16:00:00','0',2,'0'),(15,11,'2019-09-19',48,'0',1,'2019-09-19 16:07:34','16:00:00','17:00:00','0',2,'0'),(16,3,'2019-09-19',46,'0',1,'2019-09-19 16:07:51','14:00:00','16:00:00','0',2,'0'),(17,45,'2019-09-19',43,'0',1,'2019-09-19 16:07:52','14:00:00','16:00:00','0',2,'0'),(18,47,'2019-09-19',40,'0',1,'2019-09-19 16:07:54','14:00:00','16:00:00','0',2,'0'),(19,3,'2019-09-19',46,'0',1,'2019-09-19 16:07:56','16:00:00','18:00:00','0',2,'0'),(20,5,'2019-09-19',43,'0',1,'2019-09-19 16:07:57','16:00:00','18:00:00','0',2,'0'),(21,101,'2019-09-19',55,'0',1,'2019-09-19 16:08:02','14:00:00','15:00:00','0',2,'0'),(22,29,'2019-09-19',52,'0',1,'2019-09-19 16:08:04','14:00:00','15:00:00','0',2,'0'),(23,38,'2019-09-19',24,'0',1,'2019-09-19 16:16:06','10:00:00','11:00:00','0',1,'0'),(24,56,'2019-09-19',36,'0',1,'2019-09-19 16:17:26','11:00:00','12:00:00','0',1,'0'),(25,30,'2019-09-19',6,'0',1,'2019-09-19 16:17:31','13:00:00','14:00:00','0',1,'0'),(26,34,'2019-09-19',8,'0',1,'2019-09-19 16:17:32','13:00:00','14:00:00','0',1,'0'),(27,22,'2019-09-19',10,'0',1,'2019-09-19 16:17:34','13:00:00','14:00:00','0',1,'0'),(28,44,'2019-09-19',11,'0',1,'2019-09-19 16:17:36','13:00:00','14:00:00','0',1,'0'),(29,65,'2019-09-19',47,'0',1,'2019-09-19 16:17:42','14:00:00','15:00:00','0',2,'0'),(30,71,'2019-09-19',48,'0',1,'2019-09-19 16:17:44','14:00:00','15:00:00','0',2,'0'),(31,73,'2019-09-19',42,'0',1,'2019-09-19 16:17:45','14:00:00','15:00:00','0',2,'0'),(32,121,'2019-09-19',48,'0',1,'2019-09-19 16:19:47','12:00:00','13:00:00','0',2,'0'),(33,109,'2019-09-19',37,'0',1,'2019-09-19 16:19:48','12:00:00','13:00:00','0',2,'0'),(34,107,'2019-09-19',38,'0',1,'2019-09-19 16:19:49','12:00:00','13:00:00','0',2,'0'),(35,114,'2019-09-19',36,'0',1,'2019-09-19 17:40:47','10:00:00','11:00:00','0',1,'0'),(36,120,'2019-09-19',4,'0',1,'2019-09-19 17:41:13','10:00:00','11:00:00','0',1,'0'),(37,58,'2019-09-19',7,'0',1,'2019-09-19 17:41:21','10:00:00','11:00:00','0',1,'0'),(38,44,'2019-09-19',24,'0',1,'2019-09-19 17:42:47','11:00:00','12:00:00','0',1,'0'),(39,38,'2019-09-19',24,'0',1,'2019-09-19 17:42:57','13:00:00','14:00:00','0',1,'0'),(40,74,'2019-09-19',36,'0',1,'2019-09-19 17:42:59','13:00:00','14:00:00','0',1,'0'),(41,164,'2019-09-19',4,'0',1,'2019-09-19 17:43:02','13:00:00','14:00:00','0',1,'0'),(42,104,'2019-09-19',5,'0',1,'2019-09-19 17:43:04','13:00:00','14:00:00','0',1,'0'),(43,114,'2019-09-19',24,'0',1,'2019-09-19 17:43:07','14:00:00','15:00:00','0',1,'0'),(44,28,'2019-09-19',36,'0',1,'2019-09-19 17:43:11','14:00:00','15:00:00','0',1,'0'),(45,20,'2019-09-19',4,'0',1,'2019-09-19 17:43:13','14:00:00','15:00:00','0',1,'0'),(46,16,'2019-09-19',5,'0',1,'2019-09-19 17:43:16','14:00:00','15:00:00','0',1,'0'),(47,8,'2019-09-19',6,'0',1,'2019-09-19 17:43:18','14:00:00','15:00:00','0',1,'0'),(48,114,'2019-09-19',4,'0',1,'2019-09-19 17:43:21','11:00:00','12:00:00','0',1,'0'),(49,164,'2019-09-19',5,'0',1,'2019-09-19 17:43:24','10:00:00','11:00:00','0',1,'0'),(50,46,'2019-09-19',6,'0',1,'2019-09-19 17:43:26','11:00:00','12:00:00','0',1,'0'),(51,58,'2019-09-19',7,'0',1,'2019-09-19 17:43:30','11:00:00','12:00:00','0',1,'0'),(52,46,'2019-09-19',7,'0',1,'2019-09-19 17:43:33','14:00:00','15:00:00','0',1,'0'),(53,10,'2019-09-19',8,'0',1,'2019-09-19 17:43:36','14:00:00','15:00:00','0',1,'0'),(54,56,'2019-09-19',24,'0',1,'2019-09-19 17:43:41','15:00:00','16:00:00','0',1,'0'),(55,44,'2019-09-19',36,'0',1,'2019-09-19 17:43:44','15:00:00','16:00:00','0',1,'0'),(56,18,'2019-09-19',4,'0',1,'2019-09-19 17:43:47','15:00:00','16:00:00','0',1,'0'),(57,38,'2019-09-19',6,'0',1,'2019-09-19 17:43:56','15:00:00','16:00:00','0',1,'0'),(58,6,'2019-09-19',7,'0',1,'2019-09-19 17:43:59','15:00:00','16:00:00','0',1,'0'),(59,164,'2019-09-19',10,'0',1,'2019-09-19 17:44:05','15:00:00','16:00:00','0',1,'0'),(60,74,'2019-09-19',13,'0',1,'2019-09-19 17:44:13','10:00:00','11:00:00','0',1,'0'),(61,106,'2019-09-19',14,'0',1,'2019-09-19 17:44:15','10:00:00','11:00:00','0',1,'0'),(62,106,'2019-09-19',13,'0',1,'2019-09-19 17:44:18','11:00:00','12:00:00','0',1,'0'),(63,56,'2019-09-19',13,'0',1,'2019-09-19 17:44:25','13:00:00','14:00:00','0',1,'0'),(64,30,'2019-09-16',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(65,34,'2019-09-16',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(66,30,'2019-09-16',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(67,104,'2019-09-16',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(68,38,'2019-09-16',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(69,18,'2019-09-16',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(70,104,'2019-09-16',12,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(71,38,'2019-09-16',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(72,56,'2019-09-16',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(73,30,'2019-09-16',6,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(74,34,'2019-09-16',8,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(75,22,'2019-09-16',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(76,44,'2019-09-16',11,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(77,114,'2019-09-16',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(78,120,'2019-09-16',4,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(79,58,'2019-09-16',7,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(80,44,'2019-09-16',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(81,38,'2019-09-16',24,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(82,74,'2019-09-16',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(83,164,'2019-09-16',4,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(84,104,'2019-09-16',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(85,114,'2019-09-16',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(86,28,'2019-09-16',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(87,20,'2019-09-16',4,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(88,16,'2019-09-16',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(89,8,'2019-09-16',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(90,114,'2019-09-16',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(91,164,'2019-09-16',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(92,46,'2019-09-16',6,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(93,58,'2019-09-16',7,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(94,46,'2019-09-16',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(95,10,'2019-09-16',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(96,56,'2019-09-16',24,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(97,44,'2019-09-16',36,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(98,18,'2019-09-16',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(99,38,'2019-09-16',6,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(100,6,'2019-09-16',7,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(101,164,'2019-09-16',10,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(102,74,'2019-09-16',13,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(103,106,'2019-09-16',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(104,106,'2019-09-16',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(105,56,'2019-09-16',13,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(106,30,'2019-09-17',10,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(107,34,'2019-09-17',10,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(108,30,'2019-09-17',5,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(109,104,'2019-09-17',6,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(110,38,'2019-09-17',8,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(111,18,'2019-09-17',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(112,104,'2019-09-17',12,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(113,38,'2019-09-17',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(114,56,'2019-09-17',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(115,30,'2019-09-17',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(116,34,'2019-09-17',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(117,22,'2019-09-17',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(118,44,'2019-09-17',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(119,114,'2019-09-17',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(120,120,'2019-09-17',4,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(121,58,'2019-09-17',7,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(122,44,'2019-09-17',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(123,38,'2019-09-17',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(124,74,'2019-09-17',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(125,164,'2019-09-17',4,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(126,104,'2019-09-17',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(127,114,'2019-09-17',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(128,28,'2019-09-17',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(129,20,'2019-09-17',4,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(130,16,'2019-09-17',5,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(131,8,'2019-09-17',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(132,114,'2019-09-17',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(133,164,'2019-09-17',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(134,46,'2019-09-17',6,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(135,58,'2019-09-17',7,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(136,46,'2019-09-17',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(137,10,'2019-09-17',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(138,56,'2019-09-17',24,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(139,44,'2019-09-17',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(140,18,'2019-09-17',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(141,38,'2019-09-17',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(142,6,'2019-09-17',7,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(143,164,'2019-09-17',10,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(144,74,'2019-09-17',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(145,106,'2019-09-17',14,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(146,106,'2019-09-17',13,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(147,56,'2019-09-17',13,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(148,30,'2019-09-18',10,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(149,34,'2019-09-18',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(150,30,'2019-09-18',5,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(151,104,'2019-09-18',6,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(152,38,'2019-09-18',8,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(153,18,'2019-09-18',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(154,104,'2019-09-18',12,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(155,38,'2019-09-18',24,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(156,56,'2019-09-18',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(157,30,'2019-09-18',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(158,34,'2019-09-18',8,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(159,22,'2019-09-18',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(160,44,'2019-09-18',11,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(161,114,'2019-09-18',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(162,120,'2019-09-18',4,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(163,58,'2019-09-18',7,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(164,44,'2019-09-18',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(165,38,'2019-09-18',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(166,74,'2019-09-18',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(167,164,'2019-09-18',4,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(168,104,'2019-09-18',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(169,114,'2019-09-18',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(170,28,'2019-09-18',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(171,20,'2019-09-18',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(172,16,'2019-09-18',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(173,8,'2019-09-18',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(174,114,'2019-09-18',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(175,164,'2019-09-18',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(176,46,'2019-09-18',6,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(177,58,'2019-09-18',7,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(178,46,'2019-09-18',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(179,10,'2019-09-18',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(180,56,'2019-09-18',24,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(181,44,'2019-09-18',36,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(182,18,'2019-09-18',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(183,38,'2019-09-18',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(184,6,'2019-09-18',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(185,164,'2019-09-18',10,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(186,74,'2019-09-18',13,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(187,106,'2019-09-18',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(188,106,'2019-09-18',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(189,56,'2019-09-18',13,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(190,30,'2019-09-20',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(191,34,'2019-09-20',10,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(192,30,'2019-09-20',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(193,104,'2019-09-20',6,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(194,38,'2019-09-20',8,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(195,18,'2019-09-20',7,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(196,104,'2019-09-20',12,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(197,38,'2019-09-20',24,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(198,56,'2019-09-20',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(199,30,'2019-09-20',6,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(200,34,'2019-09-20',8,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(201,22,'2019-09-20',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(202,44,'2019-09-20',11,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(203,114,'2019-09-20',36,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(204,120,'2019-09-20',4,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(205,58,'2019-09-20',7,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(206,44,'2019-09-20',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(207,38,'2019-09-20',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(208,74,'2019-09-20',36,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(209,164,'2019-09-20',4,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(210,104,'2019-09-20',5,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(211,114,'2019-09-20',24,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(212,28,'2019-09-20',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(213,20,'2019-09-20',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(214,16,'2019-09-20',5,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(215,8,'2019-09-20',6,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(216,114,'2019-09-20',4,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(217,164,'2019-09-20',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(218,46,'2019-09-20',6,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(219,58,'2019-09-20',7,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(220,46,'2019-09-20',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(221,10,'2019-09-20',8,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(222,56,'2019-09-20',24,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(223,44,'2019-09-20',36,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(224,18,'2019-09-20',4,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(225,38,'2019-09-20',6,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(226,6,'2019-09-20',7,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(227,164,'2019-09-20',10,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(228,74,'2019-09-20',13,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(229,106,'2019-09-20',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(230,106,'2019-09-20',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(231,56,'2019-09-20',13,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(232,30,'2019-09-21',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(233,34,'2019-09-21',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(234,30,'2019-09-21',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(235,104,'2019-09-21',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(236,38,'2019-09-21',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(237,18,'2019-09-21',7,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(238,104,'2019-09-21',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(239,38,'2019-09-21',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(240,56,'2019-09-21',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(241,30,'2019-09-21',6,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(242,34,'2019-09-21',8,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(243,22,'2019-09-21',10,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(244,44,'2019-09-21',11,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(245,114,'2019-09-21',36,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(246,120,'2019-09-21',4,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(247,58,'2019-09-21',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(248,44,'2019-09-21',24,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(249,38,'2019-09-21',24,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(250,74,'2019-09-21',36,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(251,164,'2019-09-21',4,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(252,104,'2019-09-21',5,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(253,114,'2019-09-21',24,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(254,28,'2019-09-21',36,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(255,20,'2019-09-21',4,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(256,16,'2019-09-21',5,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(257,8,'2019-09-21',6,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(258,114,'2019-09-21',4,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(259,164,'2019-09-21',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(260,46,'2019-09-21',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(261,58,'2019-09-21',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(262,46,'2019-09-21',7,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(263,10,'2019-09-21',8,'2',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(264,56,'2019-09-21',24,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(265,44,'2019-09-21',36,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(266,18,'2019-09-21',4,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(267,38,'2019-09-21',6,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(268,6,'2019-09-21',7,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(269,164,'2019-09-21',10,'2',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(270,74,'2019-09-21',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(271,106,'2019-09-21',14,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(272,106,'2019-09-21',13,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(273,56,'2019-09-21',13,'2',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(567,56,'2019-09-23',13,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(566,106,'2019-09-23',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(565,106,'2019-09-23',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(564,74,'2019-09-23',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(563,164,'2019-09-23',10,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(562,6,'2019-09-23',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(561,38,'2019-09-23',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(560,18,'2019-09-23',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(559,44,'2019-09-23',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(558,56,'2019-09-23',24,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(557,10,'2019-09-23',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(556,46,'2019-09-23',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(555,58,'2019-09-23',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(554,46,'2019-09-23',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(553,164,'2019-09-23',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(552,114,'2019-09-23',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(551,8,'2019-09-23',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(550,16,'2019-09-23',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(549,20,'2019-09-23',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(548,28,'2019-09-23',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(547,114,'2019-09-23',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(546,104,'2019-09-23',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(545,164,'2019-09-23',4,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(544,74,'2019-09-23',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(543,38,'2019-09-23',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(542,44,'2019-09-23',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(541,58,'2019-09-23',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(540,120,'2019-09-23',4,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(539,114,'2019-09-23',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(538,44,'2019-09-23',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(537,22,'2019-09-23',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(536,34,'2019-09-23',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(535,30,'2019-09-23',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(534,56,'2019-09-23',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(533,38,'2019-09-23',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(532,104,'2019-09-23',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(531,18,'2019-09-23',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(530,38,'2019-09-23',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(529,104,'2019-09-23',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(528,30,'2019-09-23',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(527,34,'2019-09-23',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(526,30,'2019-09-23',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(609,56,'2019-09-24',13,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(608,106,'2019-09-24',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(607,106,'2019-09-24',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(606,74,'2019-09-24',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(605,164,'2019-09-24',10,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(604,6,'2019-09-24',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(603,38,'2019-09-24',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(602,18,'2019-09-24',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(601,44,'2019-09-24',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(600,56,'2019-09-24',24,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(599,10,'2019-09-24',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(598,46,'2019-09-24',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(597,58,'2019-09-24',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(596,46,'2019-09-24',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(595,164,'2019-09-24',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(594,114,'2019-09-24',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(593,8,'2019-09-24',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(592,16,'2019-09-24',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(591,20,'2019-09-24',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(590,28,'2019-09-24',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(589,114,'2019-09-24',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(588,104,'2019-09-24',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(587,164,'2019-09-24',4,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(586,74,'2019-09-24',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(585,38,'2019-09-24',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(584,44,'2019-09-24',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(583,58,'2019-09-24',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(582,120,'2019-09-24',4,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(581,114,'2019-09-24',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(580,44,'2019-09-24',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(579,22,'2019-09-24',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(578,34,'2019-09-24',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(577,30,'2019-09-24',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(576,56,'2019-09-24',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(575,38,'2019-09-24',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(574,104,'2019-09-24',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(573,18,'2019-09-24',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(572,38,'2019-09-24',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(571,104,'2019-09-24',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(570,30,'2019-09-24',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(569,34,'2019-09-24',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(568,30,'2019-09-24',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(651,56,'2019-09-25',13,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(650,106,'2019-09-25',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(649,106,'2019-09-25',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(648,74,'2019-09-25',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(647,164,'2019-09-25',10,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(646,6,'2019-09-25',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(645,38,'2019-09-25',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(644,18,'2019-09-25',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(643,44,'2019-09-25',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(642,56,'2019-09-25',24,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(641,10,'2019-09-25',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(640,46,'2019-09-25',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(639,58,'2019-09-25',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(638,46,'2019-09-25',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(637,164,'2019-09-25',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(636,114,'2019-09-25',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(635,8,'2019-09-25',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(634,16,'2019-09-25',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(633,20,'2019-09-25',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(632,28,'2019-09-25',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(631,114,'2019-09-25',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(630,104,'2019-09-25',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(629,164,'2019-09-25',4,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(628,74,'2019-09-25',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(627,38,'2019-09-25',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(626,44,'2019-09-25',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(625,58,'2019-09-25',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(624,120,'2019-09-25',4,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(623,114,'2019-09-25',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(622,44,'2019-09-25',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(621,22,'2019-09-25',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(620,34,'2019-09-25',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(619,30,'2019-09-25',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(618,56,'2019-09-25',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(617,38,'2019-09-25',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(616,104,'2019-09-25',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(615,18,'2019-09-25',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(614,38,'2019-09-25',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(613,104,'2019-09-25',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(612,30,'2019-09-25',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(611,34,'2019-09-25',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(610,30,'2019-09-25',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(693,56,'2019-09-26',13,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(692,106,'2019-09-26',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(691,106,'2019-09-26',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(690,74,'2019-09-26',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(689,164,'2019-09-26',10,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(688,6,'2019-09-26',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(687,38,'2019-09-26',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(686,18,'2019-09-26',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(685,44,'2019-09-26',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(684,56,'2019-09-26',24,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(683,10,'2019-09-26',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(682,46,'2019-09-26',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(681,58,'2019-09-26',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(680,46,'2019-09-26',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(679,164,'2019-09-26',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(678,114,'2019-09-26',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(677,8,'2019-09-26',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(676,16,'2019-09-26',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(675,20,'2019-09-26',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(674,28,'2019-09-26',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(673,114,'2019-09-26',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(672,30,'2019-09-26',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(671,34,'2019-09-26',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(670,30,'2019-09-26',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(669,104,'2019-09-26',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(668,38,'2019-09-26',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(667,18,'2019-09-26',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(666,104,'2019-09-26',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(665,38,'2019-09-26',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(664,56,'2019-09-26',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(663,30,'2019-09-26',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(662,34,'2019-09-26',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(661,22,'2019-09-26',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(660,44,'2019-09-26',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(659,114,'2019-09-26',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(658,120,'2019-09-26',4,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(657,58,'2019-09-26',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(656,44,'2019-09-26',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(655,38,'2019-09-26',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(654,74,'2019-09-26',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(653,164,'2019-09-26',4,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(652,104,'2019-09-26',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(735,56,'2019-09-27',13,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(734,106,'2019-09-27',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(733,106,'2019-09-27',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(732,74,'2019-09-27',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(731,164,'2019-09-27',10,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(730,6,'2019-09-27',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(729,38,'2019-09-27',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(728,18,'2019-09-27',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(727,44,'2019-09-27',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(726,56,'2019-09-27',24,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(725,10,'2019-09-27',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(724,46,'2019-09-27',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(723,58,'2019-09-27',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(722,46,'2019-09-27',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(721,164,'2019-09-27',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(720,114,'2019-09-27',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(719,8,'2019-09-27',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(718,16,'2019-09-27',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(717,20,'2019-09-27',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(716,28,'2019-09-27',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(715,114,'2019-09-27',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(714,104,'2019-09-27',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(713,164,'2019-09-27',4,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(712,74,'2019-09-27',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(711,38,'2019-09-27',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(710,44,'2019-09-27',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(709,58,'2019-09-27',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(708,120,'2019-09-27',4,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(707,114,'2019-09-27',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(706,44,'2019-09-27',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(705,22,'2019-09-27',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(704,34,'2019-09-27',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(703,30,'2019-09-27',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(702,56,'2019-09-27',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(701,38,'2019-09-27',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(700,104,'2019-09-27',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(699,18,'2019-09-27',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(698,38,'2019-09-27',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(697,104,'2019-09-27',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(696,30,'2019-09-27',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(695,34,'2019-09-27',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(694,30,'2019-09-27',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(777,56,'2019-09-28',13,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(776,106,'2019-09-28',13,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(775,106,'2019-09-28',14,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(774,74,'2019-09-28',13,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(773,164,'2019-09-28',10,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(772,6,'2019-09-28',7,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(771,38,'2019-09-28',6,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(770,18,'2019-09-28',4,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(769,44,'2019-09-28',36,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(768,56,'2019-09-28',24,'0',NULL,'0000-00-00 00:00:00','15:00:00','16:00:00','0',1,'0'),(767,10,'2019-09-28',8,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(766,46,'2019-09-28',7,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(765,58,'2019-09-28',7,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(764,46,'2019-09-28',6,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(763,164,'2019-09-28',5,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(762,114,'2019-09-28',4,'0',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(761,8,'2019-09-28',6,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(760,16,'2019-09-28',5,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(759,20,'2019-09-28',4,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(758,28,'2019-09-28',36,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(757,114,'2019-09-28',24,'0',NULL,'0000-00-00 00:00:00','14:00:00','15:00:00','0',1,'0'),(756,104,'2019-09-28',5,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(755,164,'2019-09-28',4,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(754,74,'2019-09-28',36,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(753,38,'2019-09-28',24,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(752,44,'2019-09-28',24,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(751,58,'2019-09-28',7,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(750,120,'2019-09-28',4,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(749,114,'2019-09-28',36,'0',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(748,44,'2019-09-28',11,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(747,22,'2019-09-28',10,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(746,34,'2019-09-28',8,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(745,30,'2019-09-28',6,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(744,56,'2019-09-28',36,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(743,38,'2019-09-28',24,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(742,104,'2019-09-28',12,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(741,18,'2019-09-28',7,'0',NULL,'0000-00-00 00:00:00','13:00:00','14:00:00','0',1,'0'),(740,38,'2019-09-28',8,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(739,104,'2019-09-28',6,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(738,30,'2019-09-28',5,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(737,34,'2019-09-28',10,'2',NULL,'0000-00-00 00:00:00','11:00:00','12:00:00','0',1,'0'),(736,30,'2019-09-28',10,'2',NULL,'0000-00-00 00:00:00','10:00:00','11:00:00','0',1,'0'),(778,31,'2019-09-26',38,'0',1,'2019-09-19 17:48:54','13:00:00','14:00:00','0',2,'0'),(779,121,'2019-09-26',47,'0',1,'2019-09-19 17:48:58','14:00:00','15:00:00','0',2,'0');
/*!40000 ALTER TABLE `pl_poste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_cellules`
--

DROP TABLE IF EXISTS `pl_poste_cellules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_cellules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `tableau` int(11) NOT NULL,
  `ligne` int(11) NOT NULL,
  `colonne` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=494 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_cellules`
--

LOCK TABLES `pl_poste_cellules` WRITE;
/*!40000 ALTER TABLE `pl_poste_cellules` DISABLE KEYS */;
INSERT INTO `pl_poste_cellules` VALUES (1,1,1,0,1),(2,1,1,0,9),(3,1,1,1,1),(4,1,1,1,9),(5,1,1,3,1),(6,1,1,4,1),(7,1,1,6,1),(8,1,1,7,1),(9,1,1,7,9),(10,1,1,8,1),(11,1,1,8,9),(12,1,1,9,1),(13,1,1,9,9),(14,1,1,10,1),(15,1,1,10,9),(16,1,1,11,1),(17,1,1,11,9),(18,1,1,12,1),(19,1,1,14,1),(20,1,1,15,1),(21,1,1,15,9),(22,1,1,16,1),(23,1,1,16,9),(24,1,1,17,1),(25,1,1,17,9),(26,1,1,18,1),(27,1,1,18,9),(28,1,1,19,1),(29,1,1,19,9),(30,1,1,20,1),(31,1,1,20,9),(32,1,1,21,1),(33,1,1,21,9),(34,1,1,22,1),(35,1,1,22,9),(36,1,1,23,1),(37,1,1,23,8),(38,1,1,23,9),(39,1,2,0,1),(40,1,2,0,4),(41,1,3,0,12),(42,1,3,1,12),(43,1,3,2,12),(44,1,3,3,12),(45,1,3,4,12),(46,1,3,5,12),(47,1,3,6,12),(48,1,3,7,12),(49,1,3,8,12),(50,1,3,9,12),(51,1,3,10,12),(477,3,3,3,5),(476,3,3,3,4),(475,3,3,3,3),(474,3,3,3,2),(473,3,3,3,1),(472,3,3,2,5),(471,3,3,2,4),(470,3,3,2,3),(469,3,3,2,2),(468,3,3,2,1),(467,3,3,1,5),(466,3,3,1,4),(465,3,3,1,3),(385,2,3,6,12),(384,2,3,5,12),(383,2,3,4,12),(382,2,3,3,12),(381,2,3,2,12),(380,2,3,1,12),(379,2,3,0,12),(378,2,2,0,4),(377,2,2,0,1),(376,2,1,16,10),(375,2,1,16,9),(374,2,1,16,1),(373,2,1,14,1),(372,2,1,13,1),(371,2,1,12,1),(370,2,1,11,10),(369,2,1,11,9),(368,2,1,11,1),(367,2,1,10,10),(366,2,1,10,9),(365,2,1,10,1),(364,2,1,9,10),(363,2,1,9,9),(362,2,1,9,1),(361,2,1,7,10),(360,2,1,7,9),(359,2,1,7,1),(358,2,1,6,1),(357,2,1,5,1),(356,2,1,4,1),(355,2,1,3,1),(354,2,1,2,1),(353,2,1,1,10),(352,2,1,1,9),(351,2,1,1,1),(350,2,1,0,10),(349,2,1,0,9),(348,2,1,0,1),(493,3,5,3,7),(492,3,5,3,6),(491,3,5,3,2),(490,3,5,3,1),(489,3,5,2,7),(488,3,5,2,6),(487,3,5,2,2),(486,3,5,2,1),(485,3,5,1,7),(484,3,5,1,6),(483,3,5,1,2),(482,3,5,1,1),(481,3,5,0,7),(480,3,5,0,6),(479,3,5,0,2),(478,3,5,0,1),(464,3,3,1,2),(463,3,3,1,1),(462,3,3,0,5),(461,3,3,0,4),(460,3,3,0,3),(459,3,3,0,2),(458,3,3,0,1),(457,3,2,0,4),(456,3,2,0,1),(455,3,1,6,1),(454,3,1,5,1),(453,3,1,4,1),(452,3,1,3,1),(451,3,1,2,1),(450,3,1,1,10),(449,3,1,1,9),(448,3,1,1,1),(447,3,1,0,10),(446,3,1,0,9),(445,3,1,0,1);
/*!40000 ALTER TABLE `pl_poste_cellules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_horaires`
--

DROP TABLE IF EXISTS `pl_poste_horaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_horaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debut` time NOT NULL DEFAULT '00:00:00',
  `fin` time NOT NULL DEFAULT '00:00:00',
  `tableau` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_horaires`
--

LOCK TABLES `pl_poste_horaires` WRITE;
/*!40000 ALTER TABLE `pl_poste_horaires` DISABLE KEYS */;
INSERT INTO `pl_poste_horaires` VALUES (1,'09:00:00','10:00:00',1,1),(2,'10:00:00','11:30:00',1,1),(3,'11:30:00','13:00:00',1,1),(4,'13:00:00','14:30:00',1,1),(5,'14:30:00','16:00:00',1,1),(6,'16:00:00','17:30:00',1,1),(7,'17:30:00','19:00:00',1,1),(8,'19:00:00','20:00:00',1,1),(9,'20:00:00','22:00:00',1,1),(10,'09:00:00','14:00:00',2,1),(11,'14:00:00','16:00:00',2,1),(12,'16:00:00','18:00:00',2,1),(13,'18:00:00','22:00:00',2,1),(14,'09:00:00','10:00:00',3,1),(15,'10:00:00','11:00:00',3,1),(16,'11:00:00','12:00:00',3,1),(17,'12:00:00','13:00:00',3,1),(18,'13:00:00','14:00:00',3,1),(19,'14:00:00','15:00:00',3,1),(20,'15:00:00','16:00:00',3,1),(21,'16:00:00','17:00:00',3,1),(22,'17:00:00','18:00:00',3,1),(23,'18:00:00','19:00:00',3,1),(24,'19:00:00','20:00:00',3,1),(25,'20:00:00','22:00:00',3,1),(75,'19:00:00','20:00:00',3,2),(74,'18:00:00','19:00:00',3,2),(73,'17:00:00','18:00:00',3,2),(72,'16:00:00','17:00:00',3,2),(71,'15:00:00','16:00:00',3,2),(70,'14:00:00','15:00:00',3,2),(69,'13:00:00','14:00:00',3,2),(68,'12:00:00','13:00:00',3,2),(67,'11:00:00','12:00:00',3,2),(66,'10:00:00','11:00:00',3,2),(65,'09:00:00','10:00:00',3,2),(64,'18:00:00','22:00:00',2,2),(63,'16:00:00','18:00:00',2,2),(62,'14:00:00','16:00:00',2,2),(61,'09:00:00','14:00:00',2,2),(60,'19:00:00','22:00:00',1,2),(59,'17:00:00','19:00:00',1,2),(58,'16:00:00','17:00:00',1,2),(57,'15:00:00','16:00:00',1,2),(56,'14:00:00','15:00:00',1,2),(55,'13:00:00','14:00:00',1,2),(54,'12:00:00','13:00:00',1,2),(53,'11:00:00','12:00:00',1,2),(52,'10:00:00','11:00:00',1,2),(51,'09:00:00','10:00:00',1,2),(76,'20:00:00','22:00:00',3,2),(225,'20:00:00','22:00:00',6,3),(224,'18:00:00','20:00:00',6,3),(223,'16:00:00','18:00:00',6,3),(222,'14:00:00','16:00:00',6,3),(221,'12:00:00','14:00:00',6,3),(220,'10:00:00','12:00:00',6,3),(219,'09:00:00','10:00:00',6,3),(218,'20:00:00','22:00:00',5,3),(217,'18:00:00','20:00:00',5,3),(216,'16:00:00','18:00:00',5,3),(215,'14:00:00','16:00:00',5,3),(214,'12:00:00','14:00:00',5,3),(213,'10:00:00','12:00:00',5,3),(212,'09:00:00','10:00:00',5,3),(211,'20:00:00','22:00:00',4,3),(210,'18:00:00','20:00:00',4,3),(209,'16:00:00','18:00:00',4,3),(208,'14:00:00','16:00:00',4,3),(207,'12:00:00','14:00:00',4,3),(206,'10:00:00','12:00:00',4,3),(205,'09:00:00','10:00:00',4,3),(204,'20:00:00','22:00:00',3,3),(203,'19:00:00','20:00:00',3,3),(202,'18:00:00','19:00:00',3,3),(201,'17:00:00','18:00:00',3,3),(200,'16:00:00','17:00:00',3,3),(199,'15:00:00','16:00:00',3,3),(198,'14:00:00','15:00:00',3,3),(197,'13:00:00','14:00:00',3,3),(196,'12:00:00','13:00:00',3,3),(195,'11:00:00','12:00:00',3,3),(194,'10:00:00','11:00:00',3,3),(193,'09:00:00','10:00:00',3,3),(192,'18:00:00','22:00:00',2,3),(191,'16:00:00','18:00:00',2,3),(190,'14:00:00','16:00:00',2,3),(189,'09:00:00','14:00:00',2,3),(188,'19:00:00','22:00:00',1,3),(187,'17:00:00','19:00:00',1,3),(186,'16:00:00','17:00:00',1,3),(185,'15:00:00','16:00:00',1,3),(184,'14:00:00','15:00:00',1,3),(183,'13:00:00','14:00:00',1,3),(182,'12:00:00','13:00:00',1,3),(181,'11:00:00','12:00:00',1,3),(180,'10:00:00','11:00:00',1,3),(179,'09:00:00','10:00:00',1,3);
/*!40000 ALTER TABLE `pl_poste_horaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_lignes`
--

DROP TABLE IF EXISTS `pl_poste_lignes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_lignes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `tableau` int(11) NOT NULL,
  `ligne` int(11) NOT NULL,
  `poste` varchar(30) NOT NULL,
  `type` enum('poste','ligne','titre','classe') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_lignes`
--

LOCK TABLES `pl_poste_lignes` WRITE;
/*!40000 ALTER TABLE `pl_poste_lignes` DISABLE KEYS */;
INSERT INTO `pl_poste_lignes` VALUES (1,1,1,0,'24','poste'),(2,1,1,1,'36','poste'),(3,1,1,2,'3','ligne'),(4,1,1,3,'4','poste'),(5,1,1,4,'5','poste'),(6,1,1,6,'6','poste'),(7,1,1,7,'7','poste'),(8,1,1,8,'8','poste'),(9,1,1,9,'9','poste'),(10,1,1,10,'10','poste'),(11,1,1,11,'11','poste'),(12,1,1,12,'12','poste'),(13,1,1,13,'4','ligne'),(14,1,1,15,'13','poste'),(15,1,1,16,'14','poste'),(16,1,1,17,'15','poste'),(17,1,1,18,'16','poste'),(18,1,1,19,'17','poste'),(19,1,1,20,'19','poste'),(20,1,1,21,'20','poste'),(21,1,1,22,'21','poste'),(22,1,1,23,'22','poste'),(23,1,1,0,'Mezzanine','titre'),(24,1,2,0,'23','poste'),(25,1,2,0,'R&eacute;serve','titre'),(26,1,3,0,'28','poste'),(27,1,3,1,'25','poste'),(28,1,3,2,'26','poste'),(29,1,3,3,'27','poste'),(30,1,3,4,'29','poste'),(31,1,3,5,'30','poste'),(32,1,3,6,'31','poste'),(33,1,3,7,'32','poste'),(34,1,3,8,'33','poste'),(35,1,3,9,'34','poste'),(36,1,3,10,'35','poste'),(37,1,3,0,'Rangement','titre'),(405,3,4,2,'51','poste'),(404,3,4,1,'50','poste'),(403,3,4,0,'49','poste'),(402,3,3,3,'52','poste'),(401,3,3,2,'55','poste'),(400,3,3,1,'54','poste'),(399,3,3,0,'53','poste'),(398,3,2,2,'40','poste'),(304,2,3,6,'27','poste'),(303,2,3,5,'26','poste'),(302,2,3,4,'25','poste'),(301,2,3,3,'28','poste'),(300,2,3,2,'22','poste'),(299,2,3,1,'21','poste'),(298,2,3,0,'20','poste'),(297,2,2,2,'9','poste'),(296,2,2,1,'15','poste'),(295,2,2,0,'23','poste'),(294,2,1,16,'19','poste'),(293,2,1,15,'17','poste'),(292,2,1,14,'16','poste'),(291,2,1,13,'14','poste'),(290,2,1,12,'13','poste'),(289,2,1,11,'4','ligne'),(288,2,1,10,'12','poste'),(287,2,1,9,'11','poste'),(286,2,1,8,'10','poste'),(285,2,1,7,'8','poste'),(284,2,1,6,'7','poste'),(283,2,1,5,'6','poste'),(282,2,1,4,'5','poste'),(281,2,1,3,'4','poste'),(280,2,1,2,'3','ligne'),(278,2,1,0,'24','poste'),(279,2,1,1,'36','poste'),(277,2,3,0,'rouge','classe'),(276,2,3,0,'Conservatoire','titre'),(275,2,2,0,'jaune','classe'),(274,2,2,0,'Med. Ile St Pierre','titre'),(273,2,1,0,'bleu','classe'),(272,2,1,0,'Med. Pole culturel','titre'),(409,3,5,3,'59','poste'),(408,3,5,2,'57','poste'),(407,3,5,1,'56','poste'),(406,3,5,0,'58','poste'),(397,3,2,1,'43','poste'),(396,3,2,0,'46','poste'),(395,3,1,6,'39','poste'),(394,3,1,5,'42','poste'),(393,3,1,4,'48','poste'),(392,3,1,3,'47','poste'),(391,3,1,2,'3','ligne'),(390,3,1,1,'38','poste'),(389,3,1,0,'37','poste'),(388,3,6,0,'rouge','classe'),(387,3,6,0,'Conservatoire','titre'),(386,3,5,0,'violet','classe'),(384,3,4,0,'vert','classe'),(385,3,5,0,'MÃ©dia-LudothÃ¨que','titre'),(383,3,4,0,'Relais Village','titre'),(382,3,3,0,'Bleuets','titre'),(381,3,2,0,'jaune','classe'),(380,3,2,0,'La Croix des MÃ¨ches','titre'),(379,3,1,0,'bleu','classe'),(378,3,1,0,'Abbaye Nelson Mandela','titre');
/*!40000 ALTER TABLE `pl_poste_lignes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_modeles`
--

DROP TABLE IF EXISTS `pl_poste_modeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_modeles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `perso_id` int(11) NOT NULL,
  `poste` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `debut` time NOT NULL,
  `fin` time NOT NULL,
  `tableau` varchar(20) NOT NULL,
  `jour` varchar(10) NOT NULL,
  `site` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_modeles`
--

LOCK TABLES `pl_poste_modeles` WRITE;
/*!40000 ALTER TABLE `pl_poste_modeles` DISABLE KEYS */;
INSERT INTO `pl_poste_modeles` VALUES (1,'Jeudi',30,10,'','10:00:00','11:00:00','','',1),(2,'Jeudi',34,10,'','11:00:00','12:00:00','','',1),(3,'Jeudi',30,5,'','11:00:00','12:00:00','','',1),(4,'Jeudi',104,6,'','10:00:00','11:00:00','','',1),(5,'Jeudi',38,8,'','11:00:00','12:00:00','','',1),(6,'Jeudi',18,7,'','13:00:00','14:00:00','','',1),(7,'Jeudi',104,12,'','11:00:00','12:00:00','','',1),(8,'Jeudi',38,24,'','10:00:00','11:00:00','','',1),(9,'Jeudi',56,36,'','11:00:00','12:00:00','','',1),(10,'Jeudi',30,6,'','13:00:00','14:00:00','','',1),(11,'Jeudi',34,8,'','13:00:00','14:00:00','','',1),(12,'Jeudi',22,10,'','13:00:00','14:00:00','','',1),(13,'Jeudi',44,11,'','13:00:00','14:00:00','','',1),(14,'Jeudi',114,36,'','10:00:00','11:00:00','','',1),(15,'Jeudi',120,4,'','10:00:00','11:00:00','','',1),(16,'Jeudi',58,7,'','10:00:00','11:00:00','','',1),(17,'Jeudi',44,24,'','11:00:00','12:00:00','','',1),(18,'Jeudi',38,24,'','13:00:00','14:00:00','','',1),(19,'Jeudi',74,36,'','13:00:00','14:00:00','','',1),(20,'Jeudi',164,4,'','13:00:00','14:00:00','','',1),(21,'Jeudi',104,5,'','13:00:00','14:00:00','','',1),(22,'Jeudi',114,24,'','14:00:00','15:00:00','','',1),(23,'Jeudi',28,36,'','14:00:00','15:00:00','','',1),(24,'Jeudi',20,4,'','14:00:00','15:00:00','','',1),(25,'Jeudi',16,5,'','14:00:00','15:00:00','','',1),(26,'Jeudi',8,6,'','14:00:00','15:00:00','','',1),(27,'Jeudi',114,4,'','11:00:00','12:00:00','','',1),(28,'Jeudi',164,5,'','10:00:00','11:00:00','','',1),(29,'Jeudi',46,6,'','11:00:00','12:00:00','','',1),(30,'Jeudi',58,7,'','11:00:00','12:00:00','','',1),(31,'Jeudi',46,7,'','14:00:00','15:00:00','','',1),(32,'Jeudi',10,8,'','14:00:00','15:00:00','','',1),(33,'Jeudi',56,24,'','15:00:00','16:00:00','','',1),(34,'Jeudi',44,36,'','15:00:00','16:00:00','','',1),(35,'Jeudi',18,4,'','15:00:00','16:00:00','','',1),(36,'Jeudi',38,6,'','15:00:00','16:00:00','','',1),(37,'Jeudi',6,7,'','15:00:00','16:00:00','','',1),(38,'Jeudi',164,10,'','15:00:00','16:00:00','','',1),(39,'Jeudi',74,13,'','10:00:00','11:00:00','','',1),(40,'Jeudi',106,14,'','10:00:00','11:00:00','','',1),(41,'Jeudi',106,13,'','11:00:00','12:00:00','','',1),(42,'Jeudi',56,13,'','13:00:00','14:00:00','','',1),(105,'Semaine type 1',104,5,'','13:00:00','14:00:00','','4',1),(104,'Semaine type 1',164,4,'','13:00:00','14:00:00','','4',1),(103,'Semaine type 1',74,36,'','13:00:00','14:00:00','','4',1),(102,'Semaine type 1',38,24,'','13:00:00','14:00:00','','4',1),(101,'Semaine type 1',44,24,'','11:00:00','12:00:00','','4',1),(100,'Semaine type 1',58,7,'','10:00:00','11:00:00','','4',1),(99,'Semaine type 1',120,4,'','10:00:00','11:00:00','','4',1),(98,'Semaine type 1',114,36,'','10:00:00','11:00:00','','4',1),(97,'Semaine type 1',44,11,'','13:00:00','14:00:00','','4',1),(96,'Semaine type 1',22,10,'','13:00:00','14:00:00','','4',1),(95,'Semaine type 1',34,8,'','13:00:00','14:00:00','','4',1),(94,'Semaine type 1',30,6,'','13:00:00','14:00:00','','4',1),(93,'Semaine type 1',56,36,'','11:00:00','12:00:00','','4',1),(92,'Semaine type 1',38,24,'','10:00:00','11:00:00','','4',1),(91,'Semaine type 1',104,12,'','11:00:00','12:00:00','','4',1),(90,'Semaine type 1',18,7,'','13:00:00','14:00:00','','4',1),(89,'Semaine type 1',38,8,'','11:00:00','12:00:00','','4',1),(88,'Semaine type 1',104,6,'','10:00:00','11:00:00','','4',1),(87,'Semaine type 1',30,5,'','11:00:00','12:00:00','','4',1),(86,'Semaine type 1',34,10,'','11:00:00','12:00:00','','4',1),(85,'Semaine type 1',30,10,'','10:00:00','11:00:00','','4',1),(106,'Semaine type 1',114,24,'','14:00:00','15:00:00','','4',1),(107,'Semaine type 1',28,36,'','14:00:00','15:00:00','','4',1),(108,'Semaine type 1',20,4,'','14:00:00','15:00:00','','4',1),(109,'Semaine type 1',16,5,'','14:00:00','15:00:00','','4',1),(110,'Semaine type 1',8,6,'','14:00:00','15:00:00','','4',1),(111,'Semaine type 1',114,4,'','11:00:00','12:00:00','','4',1),(112,'Semaine type 1',164,5,'','10:00:00','11:00:00','','4',1),(113,'Semaine type 1',46,6,'','11:00:00','12:00:00','','4',1),(114,'Semaine type 1',58,7,'','11:00:00','12:00:00','','4',1),(115,'Semaine type 1',46,7,'','14:00:00','15:00:00','','4',1),(116,'Semaine type 1',10,8,'','14:00:00','15:00:00','','4',1),(117,'Semaine type 1',56,24,'','15:00:00','16:00:00','','4',1),(118,'Semaine type 1',44,36,'','15:00:00','16:00:00','','4',1),(119,'Semaine type 1',18,4,'','15:00:00','16:00:00','','4',1),(120,'Semaine type 1',38,6,'','15:00:00','16:00:00','','4',1),(121,'Semaine type 1',6,7,'','15:00:00','16:00:00','','4',1),(122,'Semaine type 1',164,10,'','15:00:00','16:00:00','','4',1),(123,'Semaine type 1',74,13,'','10:00:00','11:00:00','','4',1),(124,'Semaine type 1',106,14,'','10:00:00','11:00:00','','4',1),(125,'Semaine type 1',106,13,'','11:00:00','12:00:00','','4',1),(126,'Semaine type 1',56,13,'','13:00:00','14:00:00','','4',1),(127,'Semaine type 1',30,10,'','10:00:00','11:00:00','','1',1),(128,'Semaine type 1',34,10,'','11:00:00','12:00:00','','1',1),(129,'Semaine type 1',30,5,'','11:00:00','12:00:00','','1',1),(130,'Semaine type 1',104,6,'','10:00:00','11:00:00','','1',1),(131,'Semaine type 1',38,8,'','11:00:00','12:00:00','','1',1),(132,'Semaine type 1',18,7,'','13:00:00','14:00:00','','1',1),(133,'Semaine type 1',104,12,'','11:00:00','12:00:00','','1',1),(134,'Semaine type 1',38,24,'','10:00:00','11:00:00','','1',1),(135,'Semaine type 1',56,36,'','11:00:00','12:00:00','','1',1),(136,'Semaine type 1',30,6,'','13:00:00','14:00:00','','1',1),(137,'Semaine type 1',34,8,'','13:00:00','14:00:00','','1',1),(138,'Semaine type 1',22,10,'','13:00:00','14:00:00','','1',1),(139,'Semaine type 1',44,11,'','13:00:00','14:00:00','','1',1),(140,'Semaine type 1',114,36,'','10:00:00','11:00:00','','1',1),(141,'Semaine type 1',120,4,'','10:00:00','11:00:00','','1',1),(142,'Semaine type 1',58,7,'','10:00:00','11:00:00','','1',1),(143,'Semaine type 1',44,24,'','11:00:00','12:00:00','','1',1),(144,'Semaine type 1',38,24,'','13:00:00','14:00:00','','1',1),(145,'Semaine type 1',74,36,'','13:00:00','14:00:00','','1',1),(146,'Semaine type 1',164,4,'','13:00:00','14:00:00','','1',1),(147,'Semaine type 1',104,5,'','13:00:00','14:00:00','','1',1),(148,'Semaine type 1',114,24,'','14:00:00','15:00:00','','1',1),(149,'Semaine type 1',28,36,'','14:00:00','15:00:00','','1',1),(150,'Semaine type 1',20,4,'','14:00:00','15:00:00','','1',1),(151,'Semaine type 1',16,5,'','14:00:00','15:00:00','','1',1),(152,'Semaine type 1',8,6,'','14:00:00','15:00:00','','1',1),(153,'Semaine type 1',114,4,'','11:00:00','12:00:00','','1',1),(154,'Semaine type 1',164,5,'','10:00:00','11:00:00','','1',1),(155,'Semaine type 1',46,6,'','11:00:00','12:00:00','','1',1),(156,'Semaine type 1',58,7,'','11:00:00','12:00:00','','1',1),(157,'Semaine type 1',46,7,'','14:00:00','15:00:00','','1',1),(158,'Semaine type 1',10,8,'','14:00:00','15:00:00','','1',1),(159,'Semaine type 1',56,24,'','15:00:00','16:00:00','','1',1),(160,'Semaine type 1',44,36,'','15:00:00','16:00:00','','1',1),(161,'Semaine type 1',18,4,'','15:00:00','16:00:00','','1',1),(162,'Semaine type 1',38,6,'','15:00:00','16:00:00','','1',1),(163,'Semaine type 1',6,7,'','15:00:00','16:00:00','','1',1),(164,'Semaine type 1',164,10,'','15:00:00','16:00:00','','1',1),(165,'Semaine type 1',74,13,'','10:00:00','11:00:00','','1',1),(166,'Semaine type 1',106,14,'','10:00:00','11:00:00','','1',1),(167,'Semaine type 1',106,13,'','11:00:00','12:00:00','','1',1),(168,'Semaine type 1',56,13,'','13:00:00','14:00:00','','1',1),(169,'Semaine type 1',30,10,'','10:00:00','11:00:00','','2',1),(170,'Semaine type 1',34,10,'','11:00:00','12:00:00','','2',1),(171,'Semaine type 1',30,5,'','11:00:00','12:00:00','','2',1),(172,'Semaine type 1',104,6,'','10:00:00','11:00:00','','2',1),(173,'Semaine type 1',38,8,'','11:00:00','12:00:00','','2',1),(174,'Semaine type 1',18,7,'','13:00:00','14:00:00','','2',1),(175,'Semaine type 1',104,12,'','11:00:00','12:00:00','','2',1),(176,'Semaine type 1',38,24,'','10:00:00','11:00:00','','2',1),(177,'Semaine type 1',56,36,'','11:00:00','12:00:00','','2',1),(178,'Semaine type 1',30,6,'','13:00:00','14:00:00','','2',1),(179,'Semaine type 1',34,8,'','13:00:00','14:00:00','','2',1),(180,'Semaine type 1',22,10,'','13:00:00','14:00:00','','2',1),(181,'Semaine type 1',44,11,'','13:00:00','14:00:00','','2',1),(182,'Semaine type 1',114,36,'','10:00:00','11:00:00','','2',1),(183,'Semaine type 1',120,4,'','10:00:00','11:00:00','','2',1),(184,'Semaine type 1',58,7,'','10:00:00','11:00:00','','2',1),(185,'Semaine type 1',44,24,'','11:00:00','12:00:00','','2',1),(186,'Semaine type 1',38,24,'','13:00:00','14:00:00','','2',1),(187,'Semaine type 1',74,36,'','13:00:00','14:00:00','','2',1),(188,'Semaine type 1',164,4,'','13:00:00','14:00:00','','2',1),(189,'Semaine type 1',104,5,'','13:00:00','14:00:00','','2',1),(190,'Semaine type 1',114,24,'','14:00:00','15:00:00','','2',1),(191,'Semaine type 1',28,36,'','14:00:00','15:00:00','','2',1),(192,'Semaine type 1',20,4,'','14:00:00','15:00:00','','2',1),(193,'Semaine type 1',16,5,'','14:00:00','15:00:00','','2',1),(194,'Semaine type 1',8,6,'','14:00:00','15:00:00','','2',1),(195,'Semaine type 1',114,4,'','11:00:00','12:00:00','','2',1),(196,'Semaine type 1',164,5,'','10:00:00','11:00:00','','2',1),(197,'Semaine type 1',46,6,'','11:00:00','12:00:00','','2',1),(198,'Semaine type 1',58,7,'','11:00:00','12:00:00','','2',1),(199,'Semaine type 1',46,7,'','14:00:00','15:00:00','','2',1),(200,'Semaine type 1',10,8,'','14:00:00','15:00:00','','2',1),(201,'Semaine type 1',56,24,'','15:00:00','16:00:00','','2',1),(202,'Semaine type 1',44,36,'','15:00:00','16:00:00','','2',1),(203,'Semaine type 1',18,4,'','15:00:00','16:00:00','','2',1),(204,'Semaine type 1',38,6,'','15:00:00','16:00:00','','2',1),(205,'Semaine type 1',6,7,'','15:00:00','16:00:00','','2',1),(206,'Semaine type 1',164,10,'','15:00:00','16:00:00','','2',1),(207,'Semaine type 1',74,13,'','10:00:00','11:00:00','','2',1),(208,'Semaine type 1',106,14,'','10:00:00','11:00:00','','2',1),(209,'Semaine type 1',106,13,'','11:00:00','12:00:00','','2',1),(210,'Semaine type 1',56,13,'','13:00:00','14:00:00','','2',1),(211,'Semaine type 1',30,10,'','10:00:00','11:00:00','','3',1),(212,'Semaine type 1',34,10,'','11:00:00','12:00:00','','3',1),(213,'Semaine type 1',30,5,'','11:00:00','12:00:00','','3',1),(214,'Semaine type 1',104,6,'','10:00:00','11:00:00','','3',1),(215,'Semaine type 1',38,8,'','11:00:00','12:00:00','','3',1),(216,'Semaine type 1',18,7,'','13:00:00','14:00:00','','3',1),(217,'Semaine type 1',104,12,'','11:00:00','12:00:00','','3',1),(218,'Semaine type 1',38,24,'','10:00:00','11:00:00','','3',1),(219,'Semaine type 1',56,36,'','11:00:00','12:00:00','','3',1),(220,'Semaine type 1',30,6,'','13:00:00','14:00:00','','3',1),(221,'Semaine type 1',34,8,'','13:00:00','14:00:00','','3',1),(222,'Semaine type 1',22,10,'','13:00:00','14:00:00','','3',1),(223,'Semaine type 1',44,11,'','13:00:00','14:00:00','','3',1),(224,'Semaine type 1',114,36,'','10:00:00','11:00:00','','3',1),(225,'Semaine type 1',120,4,'','10:00:00','11:00:00','','3',1),(226,'Semaine type 1',58,7,'','10:00:00','11:00:00','','3',1),(227,'Semaine type 1',44,24,'','11:00:00','12:00:00','','3',1),(228,'Semaine type 1',38,24,'','13:00:00','14:00:00','','3',1),(229,'Semaine type 1',74,36,'','13:00:00','14:00:00','','3',1),(230,'Semaine type 1',164,4,'','13:00:00','14:00:00','','3',1),(231,'Semaine type 1',104,5,'','13:00:00','14:00:00','','3',1),(232,'Semaine type 1',114,24,'','14:00:00','15:00:00','','3',1),(233,'Semaine type 1',28,36,'','14:00:00','15:00:00','','3',1),(234,'Semaine type 1',20,4,'','14:00:00','15:00:00','','3',1),(235,'Semaine type 1',16,5,'','14:00:00','15:00:00','','3',1),(236,'Semaine type 1',8,6,'','14:00:00','15:00:00','','3',1),(237,'Semaine type 1',114,4,'','11:00:00','12:00:00','','3',1),(238,'Semaine type 1',164,5,'','10:00:00','11:00:00','','3',1),(239,'Semaine type 1',46,6,'','11:00:00','12:00:00','','3',1),(240,'Semaine type 1',58,7,'','11:00:00','12:00:00','','3',1),(241,'Semaine type 1',46,7,'','14:00:00','15:00:00','','3',1),(242,'Semaine type 1',10,8,'','14:00:00','15:00:00','','3',1),(243,'Semaine type 1',56,24,'','15:00:00','16:00:00','','3',1),(244,'Semaine type 1',44,36,'','15:00:00','16:00:00','','3',1),(245,'Semaine type 1',18,4,'','15:00:00','16:00:00','','3',1),(246,'Semaine type 1',38,6,'','15:00:00','16:00:00','','3',1),(247,'Semaine type 1',6,7,'','15:00:00','16:00:00','','3',1),(248,'Semaine type 1',164,10,'','15:00:00','16:00:00','','3',1),(249,'Semaine type 1',74,13,'','10:00:00','11:00:00','','3',1),(250,'Semaine type 1',106,14,'','10:00:00','11:00:00','','3',1),(251,'Semaine type 1',106,13,'','11:00:00','12:00:00','','3',1),(252,'Semaine type 1',56,13,'','13:00:00','14:00:00','','3',1),(253,'Semaine type 1',30,10,'','10:00:00','11:00:00','','5',1),(254,'Semaine type 1',34,10,'','11:00:00','12:00:00','','5',1),(255,'Semaine type 1',30,5,'','11:00:00','12:00:00','','5',1),(256,'Semaine type 1',104,6,'','10:00:00','11:00:00','','5',1),(257,'Semaine type 1',38,8,'','11:00:00','12:00:00','','5',1),(258,'Semaine type 1',18,7,'','13:00:00','14:00:00','','5',1),(259,'Semaine type 1',104,12,'','11:00:00','12:00:00','','5',1),(260,'Semaine type 1',38,24,'','10:00:00','11:00:00','','5',1),(261,'Semaine type 1',56,36,'','11:00:00','12:00:00','','5',1),(262,'Semaine type 1',30,6,'','13:00:00','14:00:00','','5',1),(263,'Semaine type 1',34,8,'','13:00:00','14:00:00','','5',1),(264,'Semaine type 1',22,10,'','13:00:00','14:00:00','','5',1),(265,'Semaine type 1',44,11,'','13:00:00','14:00:00','','5',1),(266,'Semaine type 1',114,36,'','10:00:00','11:00:00','','5',1),(267,'Semaine type 1',120,4,'','10:00:00','11:00:00','','5',1),(268,'Semaine type 1',58,7,'','10:00:00','11:00:00','','5',1),(269,'Semaine type 1',44,24,'','11:00:00','12:00:00','','5',1),(270,'Semaine type 1',38,24,'','13:00:00','14:00:00','','5',1),(271,'Semaine type 1',74,36,'','13:00:00','14:00:00','','5',1),(272,'Semaine type 1',164,4,'','13:00:00','14:00:00','','5',1),(273,'Semaine type 1',104,5,'','13:00:00','14:00:00','','5',1),(274,'Semaine type 1',114,24,'','14:00:00','15:00:00','','5',1),(275,'Semaine type 1',28,36,'','14:00:00','15:00:00','','5',1),(276,'Semaine type 1',20,4,'','14:00:00','15:00:00','','5',1),(277,'Semaine type 1',16,5,'','14:00:00','15:00:00','','5',1),(278,'Semaine type 1',8,6,'','14:00:00','15:00:00','','5',1),(279,'Semaine type 1',114,4,'','11:00:00','12:00:00','','5',1),(280,'Semaine type 1',164,5,'','10:00:00','11:00:00','','5',1),(281,'Semaine type 1',46,6,'','11:00:00','12:00:00','','5',1),(282,'Semaine type 1',58,7,'','11:00:00','12:00:00','','5',1),(283,'Semaine type 1',46,7,'','14:00:00','15:00:00','','5',1),(284,'Semaine type 1',10,8,'','14:00:00','15:00:00','','5',1),(285,'Semaine type 1',56,24,'','15:00:00','16:00:00','','5',1),(286,'Semaine type 1',44,36,'','15:00:00','16:00:00','','5',1),(287,'Semaine type 1',18,4,'','15:00:00','16:00:00','','5',1),(288,'Semaine type 1',38,6,'','15:00:00','16:00:00','','5',1),(289,'Semaine type 1',6,7,'','15:00:00','16:00:00','','5',1),(290,'Semaine type 1',164,10,'','15:00:00','16:00:00','','5',1),(291,'Semaine type 1',74,13,'','10:00:00','11:00:00','','5',1),(292,'Semaine type 1',106,14,'','10:00:00','11:00:00','','5',1),(293,'Semaine type 1',106,13,'','11:00:00','12:00:00','','5',1),(294,'Semaine type 1',56,13,'','13:00:00','14:00:00','','5',1),(295,'Semaine type 1',30,10,'','10:00:00','11:00:00','','6',1),(296,'Semaine type 1',34,10,'','11:00:00','12:00:00','','6',1),(297,'Semaine type 1',30,5,'','11:00:00','12:00:00','','6',1),(298,'Semaine type 1',104,6,'','10:00:00','11:00:00','','6',1),(299,'Semaine type 1',38,8,'','11:00:00','12:00:00','','6',1),(300,'Semaine type 1',18,7,'','13:00:00','14:00:00','','6',1),(301,'Semaine type 1',104,12,'','11:00:00','12:00:00','','6',1),(302,'Semaine type 1',38,24,'','10:00:00','11:00:00','','6',1),(303,'Semaine type 1',56,36,'','11:00:00','12:00:00','','6',1),(304,'Semaine type 1',30,6,'','13:00:00','14:00:00','','6',1),(305,'Semaine type 1',34,8,'','13:00:00','14:00:00','','6',1),(306,'Semaine type 1',22,10,'','13:00:00','14:00:00','','6',1),(307,'Semaine type 1',44,11,'','13:00:00','14:00:00','','6',1),(308,'Semaine type 1',114,36,'','10:00:00','11:00:00','','6',1),(309,'Semaine type 1',120,4,'','10:00:00','11:00:00','','6',1),(310,'Semaine type 1',58,7,'','10:00:00','11:00:00','','6',1),(311,'Semaine type 1',44,24,'','11:00:00','12:00:00','','6',1),(312,'Semaine type 1',38,24,'','13:00:00','14:00:00','','6',1),(313,'Semaine type 1',74,36,'','13:00:00','14:00:00','','6',1),(314,'Semaine type 1',164,4,'','13:00:00','14:00:00','','6',1),(315,'Semaine type 1',104,5,'','13:00:00','14:00:00','','6',1),(316,'Semaine type 1',114,24,'','14:00:00','15:00:00','','6',1),(317,'Semaine type 1',28,36,'','14:00:00','15:00:00','','6',1),(318,'Semaine type 1',20,4,'','14:00:00','15:00:00','','6',1),(319,'Semaine type 1',16,5,'','14:00:00','15:00:00','','6',1),(320,'Semaine type 1',8,6,'','14:00:00','15:00:00','','6',1),(321,'Semaine type 1',114,4,'','11:00:00','12:00:00','','6',1),(322,'Semaine type 1',164,5,'','10:00:00','11:00:00','','6',1),(323,'Semaine type 1',46,6,'','11:00:00','12:00:00','','6',1),(324,'Semaine type 1',58,7,'','11:00:00','12:00:00','','6',1),(325,'Semaine type 1',46,7,'','14:00:00','15:00:00','','6',1),(326,'Semaine type 1',10,8,'','14:00:00','15:00:00','','6',1),(327,'Semaine type 1',56,24,'','15:00:00','16:00:00','','6',1),(328,'Semaine type 1',44,36,'','15:00:00','16:00:00','','6',1),(329,'Semaine type 1',18,4,'','15:00:00','16:00:00','','6',1),(330,'Semaine type 1',38,6,'','15:00:00','16:00:00','','6',1),(331,'Semaine type 1',6,7,'','15:00:00','16:00:00','','6',1),(332,'Semaine type 1',164,10,'','15:00:00','16:00:00','','6',1),(333,'Semaine type 1',74,13,'','10:00:00','11:00:00','','6',1),(334,'Semaine type 1',106,14,'','10:00:00','11:00:00','','6',1),(335,'Semaine type 1',106,13,'','11:00:00','12:00:00','','6',1),(336,'Semaine type 1',56,13,'','13:00:00','14:00:00','','6',1);
/*!40000 ALTER TABLE `pl_poste_modeles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_modeles_tab`
--

DROP TABLE IF EXISTS `pl_poste_modeles_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_modeles_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `jour` int(11) NOT NULL,
  `tableau` int(11) NOT NULL,
  `site` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_modeles_tab`
--

LOCK TABLES `pl_poste_modeles_tab` WRITE;
/*!40000 ALTER TABLE `pl_poste_modeles_tab` DISABLE KEYS */;
INSERT INTO `pl_poste_modeles_tab` VALUES (1,'Jeudi',9,2,1),(3,'Semaine type 1',4,2,1),(4,'Semaine type 1',1,2,1),(5,'Semaine type 1',2,2,1),(6,'Semaine type 1',3,2,1),(7,'Semaine type 1',5,2,1),(8,'Semaine type 1',6,2,1);
/*!40000 ALTER TABLE `pl_poste_modeles_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_tab`
--

DROP TABLE IF EXISTS `pl_poste_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableau` int(20) NOT NULL,
  `nom` text NOT NULL,
  `site` int(2) NOT NULL DEFAULT '1',
  `supprime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_tab`
--

LOCK TABLES `pl_poste_tab` WRITE;
/*!40000 ALTER TABLE `pl_poste_tab` DISABLE KEYS */;
INSERT INTO `pl_poste_tab` VALUES (1,1,'Tableau 1',1,NULL),(2,2,'Alforville standard',1,NULL),(3,3,'CrÃ©teil standard',2,NULL);
/*!40000 ALTER TABLE `pl_poste_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_tab_affect`
--

DROP TABLE IF EXISTS `pl_poste_tab_affect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_tab_affect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `tableau` int(11) NOT NULL,
  `site` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_tab_affect`
--

LOCK TABLES `pl_poste_tab_affect` WRITE;
/*!40000 ALTER TABLE `pl_poste_tab_affect` DISABLE KEYS */;
INSERT INTO `pl_poste_tab_affect` VALUES (1,'2019-09-19',2,1),(2,'2019-09-19',3,2),(3,'2019-09-16',2,1),(4,'2019-09-17',2,1),(5,'2019-09-18',2,1),(6,'2019-09-20',2,1),(7,'2019-09-21',2,1),(15,'2019-09-23',2,1),(16,'2019-09-24',2,1),(17,'2019-09-25',2,1),(18,'2019-09-26',2,1),(19,'2019-09-27',2,1),(20,'2019-09-28',2,1),(21,'2019-09-29',0,1),(22,'2019-09-26',3,2);
/*!40000 ALTER TABLE `pl_poste_tab_affect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_tab_grp`
--

DROP TABLE IF EXISTS `pl_poste_tab_grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_tab_grp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  `lundi` int(11) DEFAULT NULL,
  `mardi` int(11) DEFAULT NULL,
  `mercredi` int(11) DEFAULT NULL,
  `jeudi` int(11) DEFAULT NULL,
  `vendredi` int(11) DEFAULT NULL,
  `samedi` int(11) DEFAULT NULL,
  `dimanche` int(11) DEFAULT NULL,
  `site` int(2) NOT NULL DEFAULT '1',
  `supprime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_tab_grp`
--

LOCK TABLES `pl_poste_tab_grp` WRITE;
/*!40000 ALTER TABLE `pl_poste_tab_grp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pl_poste_tab_grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_poste_verrou`
--

DROP TABLE IF EXISTS `pl_poste_verrou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_poste_verrou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `verrou` int(1) NOT NULL DEFAULT '0',
  `validation` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `perso` int(11) NOT NULL DEFAULT '0',
  `verrou2` int(1) NOT NULL DEFAULT '0',
  `validation2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `perso2` int(11) NOT NULL DEFAULT '0',
  `vivier` int(1) NOT NULL DEFAULT '0',
  `site` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_poste_verrou`
--

LOCK TABLES `pl_poste_verrou` WRITE;
/*!40000 ALTER TABLE `pl_poste_verrou` DISABLE KEYS */;
/*!40000 ALTER TABLE `pl_poste_verrou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planning_hebdo`
--

DROP TABLE IF EXISTS `planning_hebdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planning_hebdo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `temps` text NOT NULL,
  `saisie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modif` int(11) NOT NULL DEFAULT '0',
  `modification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide_n1` int(11) NOT NULL DEFAULT '0',
  `validation_n1` timestamp NULL DEFAULT NULL,
  `valide` int(11) NOT NULL DEFAULT '0',
  `validation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actuel` int(1) NOT NULL DEFAULT '0',
  `remplace` int(11) NOT NULL DEFAULT '0',
  `cle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cle` (`cle`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planning_hebdo`
--

LOCK TABLES `planning_hebdo` WRITE;
/*!40000 ALTER TABLE `planning_hebdo` DISABLE KEYS */;
INSERT INTO `planning_hebdo` VALUES (1,3,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:46:13',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:46:13',0,0,NULL),(2,5,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:46:38',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:46:38',0,0,NULL),(3,6,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:46:53',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:46:53',0,0,NULL),(4,7,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:47:11',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:47:11',0,0,NULL),(5,8,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:47:26',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:47:26',0,0,NULL),(6,10,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:47:52',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:47:52',0,0,NULL),(7,11,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:48:08',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:48:08',0,0,NULL),(8,16,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:48:26',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:48:26',0,0,NULL),(9,18,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:48:41',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:48:41',0,0,NULL),(10,20,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"\"]]','2019-09-19 13:48:57',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:48:57',0,0,NULL),(11,22,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:54:31',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:54:31',0,0,NULL),(12,24,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:54:40',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:54:40',0,0,NULL),(13,28,'2019-09-01','2022-09-30','[[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:54:48',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:54:48',0,0,NULL),(14,29,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 13:56:10',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:56:10',0,0,NULL),(15,30,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:57:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:57:00',0,0,NULL),(16,31,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 13:57:09',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:57:09',0,0,NULL),(17,34,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:57:21',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:57:21',0,0,NULL),(18,35,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 13:57:29',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:57:29',0,0,NULL),(19,38,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:57:41',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:57:41',0,0,NULL),(20,44,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:57:51',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:57:51',0,0,NULL),(21,45,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 13:58:01',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:58:01',0,0,NULL),(22,56,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:58:09',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:58:09',0,0,NULL),(23,45,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 13:59:16',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:59:16',0,0,NULL),(24,46,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:59:27',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:59:27',0,0,NULL),(25,58,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 13:59:36',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:59:36',0,0,NULL),(26,65,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 13:59:50',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 13:59:50',0,0,NULL),(27,164,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:00:02',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:00:02',0,0,NULL),(28,71,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:00:14',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:00:14',0,0,NULL),(29,74,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:00:22',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:00:22',0,0,NULL),(30,73,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:00:32',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:00:32',0,0,NULL),(31,73,'2019-09-01','2022-09-30','[[\"09:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"09:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"09:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:00:52',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:00:52',0,0,NULL),(32,101,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:01:01',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:01:01',0,0,NULL),(33,97,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:01:36',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:01:36',0,0,NULL),(34,1,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:01:44',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:01:44',0,0,NULL),(35,99,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:01:56',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:01:56',0,0,NULL),(36,99,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:02:22',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:02:22',0,0,NULL),(37,104,'2019-09-01','2022-09-30','[[\"09:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"09:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"09:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:02:51',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:02:51',0,0,NULL),(38,103,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"2\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:03:05',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:05',0,0,NULL),(39,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:12',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:12',0,0,NULL),(40,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:20',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:20',0,0,NULL),(41,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:27',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:27',0,0,NULL),(42,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:34',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:34',0,0,NULL),(43,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:41',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:41',0,0,NULL),(44,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:48',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:48',0,0,NULL),(45,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:03:54',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:03:54',0,0,NULL),(46,104,'2019-09-01','2022-09-30','[[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"13:00:00\",\"\",\"\",\"20:00:00\",\"1\"],[\"12:00:00\",\"\",\"\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"12:00:00\",\"13:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:04:01',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:04:01',0,0,NULL),(47,106,'2019-09-01','2022-09-30','[[\"13:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"1\"],[\"12:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:18:46',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:18:46',0,0,NULL),(48,107,'2019-09-01','2022-09-30','[[\"13:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"2\"],[\"12:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:18:54',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:18:54',0,0,NULL),(49,121,'2019-09-01','2022-09-30','[[\"13:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"2\"],[\"12:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:19:09',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:19:09',0,0,NULL),(50,109,'2019-09-01','2022-09-30','[[\"13:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"2\"],[\"12:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"2\"],[\"\",\"\",\"\",\"\",\"2\"]]','2019-09-19 14:19:16',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:19:16',0,0,NULL),(51,114,'2019-09-01','2022-09-30','[[\"13:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"1\"],[\"12:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:19:30',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:19:30',0,0,NULL),(52,120,'2019-09-01','2022-09-30','[[\"13:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"20:00:00\",\"1\"],[\"12:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"09:00:00\",\"13:00:00\",\"14:00:00\",\"17:00:00\",\"1\"],[\"\",\"\",\"\",\"\",\"1\"]]','2019-09-19 14:19:42',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'2019-09-19 14:19:42',0,0,NULL);
/*!40000 ALTER TABLE `planning_hebdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planning_hebdo_periodes`
--

DROP TABLE IF EXISTS `planning_hebdo_periodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planning_hebdo_periodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annee` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `dates` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planning_hebdo_periodes`
--

LOCK TABLES `planning_hebdo_periodes` WRITE;
/*!40000 ALTER TABLE `planning_hebdo_periodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `planning_hebdo_periodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postes`
--

DROP TABLE IF EXISTS `postes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `groupe` text NOT NULL,
  `groupe_id` int(11) NOT NULL DEFAULT '0',
  `obligatoire` varchar(15) NOT NULL,
  `etage` text NOT NULL,
  `activites` text NOT NULL,
  `statistiques` enum('0','1') DEFAULT '1',
  `bloquant` enum('0','1') DEFAULT '1',
  `site` int(1) DEFAULT '1',
  `categories` text,
  `supprime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postes`
--

LOCK TABLES `postes` WRITE;
/*!40000 ALTER TABLE `postes` DISABLE KEYS */;
INSERT INTO `postes` VALUES (4,'Inscription 1','',0,'Obligatoire','RDC','[\"5\"]','1','1',1,NULL,NULL),(5,'Retour','',0,'Obligatoire','RDC','[\"6\"]','1','1',1,NULL,NULL),(6,'Pr&ecirc;t / retour 1','',0,'Obligatoire','RDC','[\"6\"]','1','1',1,NULL,NULL),(7,'Pr&ecirc;t / retour 2','',0,'Renfort','RDC','[\"6\"]','1','1',1,NULL,NULL),(8,'Pr&ecirc;t / retour 3','',0,'Renfort','RDC','[\"6\"]','1','1',1,NULL,NULL),(9,'Pr&ecirc;t / retour 4','',0,'Renfort','RDC','[\"6\"]','1','1',1,NULL,NULL),(10,'Inscription 2','',0,'Renfort','RDC','[\"5\"]','1','1',1,NULL,NULL),(11,'Communication RDC','',0,'Renfort','RDC','[\"6\"]','1','1',1,NULL,NULL),(12,'Renseignement RDC','',0,'Obligatoire','RDC','[\"9\"]','1','1',1,NULL,NULL),(13,'Renseignement sp&eacute;cialis&eacute; 1','',0,'Obligatoire','RDJ','[\"9\"]','1','1',1,NULL,NULL),(14,'Renseignement sp&eacute;cialis&eacute; 2','',0,'Renfort','RDJ','[\"9\"]','1','1',1,NULL,NULL),(15,'Renseignement sp&eacute;cialis&eacute; 3','',0,'Renfort','RDJ','[\"9\"]','1','1',1,NULL,NULL),(16,'Communication (banque 1)','',0,'Obligatoire','RDJ','[\"6\"]','1','1',1,'[]',NULL),(17,'Communication (banque 2)','',0,'Renfort','RDJ','[\"6\"]','1','1',1,NULL,NULL),(19,'Communication (coordination)','',0,'Obligatoire','RDJ','[\"6\"]','1','1',1,NULL,NULL),(20,'Communication (magasin 1)','',0,'Obligatoire','RDJ','[\"6\"]','1','1',1,NULL,NULL),(21,'Communication (magasin 2)','',0,'Obligatoire','RDJ','[\"6\"]','1','1',1,NULL,NULL),(22,'Communication (magasin 3)','',0,'Renfort','RDJ','[\"6\"]','1','1',1,NULL,NULL),(23,'Consultation de la r&eacute;serve','',0,'Obligatoire','RDJ','[\"11\"]','1','1',1,NULL,NULL),(24,'Audiovisuel et autoformation','',0,'Obligatoire','Mezzanine','[\"9\"]','1','1',1,'[]',NULL),(25,'Rangement 2','',0,'Obligatoire','RDC','[\"8\"]','1','1',1,NULL,NULL),(26,'Rangement 3','',0,'Obligatoire','RDC','[\"8\"]','1','1',1,NULL,NULL),(27,'Rangement 4','',0,'Renfort','RDC','[\"8\"]','1','1',1,NULL,NULL),(28,'Rangement 1','',0,'Obligatoire','Mezzanine','[\"8\"]','1','1',1,NULL,NULL),(29,'Rangement 5','',0,'Obligatoire','RDJ','[\"8\"]','1','1',1,NULL,NULL),(30,'Rangement 6','',0,'Obligatoire','RDJ','[\"8\"]','1','1',1,NULL,NULL),(31,'Rangement 7','',0,'Renfort','RDJ','[\"8\"]','1','1',1,NULL,NULL),(32,'Rangement 8','',0,'Renfort','RDJ','[\"8\"]','1','1',1,NULL,NULL),(33,'Rangement 9','',0,'Renfort','RDJ','[\"8\"]','1','1',1,NULL,NULL),(34,'Rangement 10','',0,'Obligatoire','Magasins','[\"8\"]','1','1',1,NULL,NULL),(35,'Rangement 11','',0,'Obligatoire','Magasins','[\"8\"]','1','1',1,NULL,NULL),(36,'Renseignement kiosque','',0,'Renfort','Mezzanine','[\"9\"]','1','1',1,NULL,NULL),(37,'Inscriptions 1','',0,'Obligatoire','Mandela','[\"5\"]','1','1',2,'[]',NULL),(38,'Inscriptions 2','',0,'Obligatoire','RDC','[\"5\"]','1','1',2,'[]',NULL),(39,'PrÃªt / Retour','',0,'Obligatoire','Mandela','[\"6\"]','1','1',2,'[]',NULL),(40,'PrÃªt / Retour','',0,'Obligatoire','M&egrave;ches','[\"6\"]','1','1',2,'[]',NULL),(41,'PrÃªt / Retour 3','',0,'Obligatoire','','[\"6\"]','1','1',1,'[]',NULL),(42,'Renseignements','',0,'Obligatoire','Mandela','[\"9\"]','1','1',2,'[]',NULL),(43,'Renseignements','',0,'Obligatoire','M&egrave;ches','[\"9\"]','1','1',2,'[]',NULL),(44,'Renseignements spÃ©cialisÃ©','',0,'Obligatoire','','[\"9\"]','1','1',2,'[]',NULL),(45,'Auto-formation','',0,'Obligatoire','RDC','[\"9\"]','1','1',2,'[]',NULL),(46,'Jeux vidÃ©os','',0,'Obligatoire','RDC','[\"9\"]','1','1',2,'[]',NULL),(47,'Espace Jeunesse','',0,'Obligatoire','Mandela','[\"9\"]','1','1',2,'[]',NULL),(48,'LittÃ©rature','',0,'Obligatoire','RDC','[\"9\"]','1','1',2,'[]',NULL),(49,'PrÃªt / Retour 1','',0,'Obligatoire','village','[\"6\"]','1','1',2,'[]',NULL),(50,'PrÃªt / Retour 2','',0,'Obligatoire','village','[\"6\"]','1','1',2,'[]',NULL),(51,'Renseignements','',0,'Obligatoire','village','[\"9\"]','1','1',2,'[]',NULL),(52,'Animations','',0,'Obligatoire','Bleuets','[\"9\"]','1','1',2,'[]',NULL),(53,'PrÃªt / Retour 1','',0,'Obligatoire','Bleuets','[\"6\"]','1','1',2,'[]',NULL),(54,'PrÃªt / Retour 2','',0,'Obligatoire','Bleuets','[\"6\"]','1','1',2,'[]',NULL),(55,'Renseignements','',0,'Obligatoire','Bleuets','[\"9\"]','1','1',2,'[]',NULL),(56,'CD','',0,'Obligatoire','Ludoth&egrave;que','[\"9\"]','1','1',2,'[]',NULL),(57,'DVD','',0,'Obligatoire','Ludoth&egrave;que','[\"9\"]','1','1',2,'[]',NULL),(58,'BD','',0,'Obligatoire','Ludoth&egrave;que','[\"9\"]','1','1',2,'[]',NULL),(59,'Jeux vidÃ©os','',0,'Obligatoire','Ludoth&egrave;que','[\"9\"]','1','1',2,'[]',NULL);
/*!40000 ALTER TABLE `postes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recuperations`
--

DROP TABLE IF EXISTS `recuperations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recuperations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `heures` float DEFAULT NULL,
  `etat` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `commentaires` text COLLATE utf8_bin,
  `saisie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `saisie_par` int(11) NOT NULL,
  `modif` int(11) NOT NULL DEFAULT '0',
  `modification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valide_n1` int(11) NOT NULL DEFAULT '0',
  `validation_n1` datetime DEFAULT NULL,
  `valide` int(11) NOT NULL DEFAULT '0',
  `validation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `refus` text COLLATE utf8_bin,
  `solde_prec` float DEFAULT NULL,
  `solde_actuel` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recuperations`
--

LOCK TABLES `recuperations` WRITE;
/*!40000 ALTER TABLE `recuperations` DISABLE KEYS */;
/*!40000 ALTER TABLE `recuperations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsables`
--

DROP TABLE IF EXISTS `responsables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perso_id` int(11) NOT NULL DEFAULT '0',
  `responsable` int(11) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsables`
--

LOCK TABLES `responsables` WRITE;
/*!40000 ALTER TABLE `responsables` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_abs`
--

DROP TABLE IF EXISTS `select_abs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_abs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` text NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_abs`
--

LOCK TABLES `select_abs` WRITE;
/*!40000 ALTER TABLE `select_abs` DISABLE KEYS */;
INSERT INTO `select_abs` VALUES (1,'Non justifi&eacute;e',1,0),(2,'CongÃ©s pay&eacute;s',2,0),(3,'Maladie',3,0),(4,'Cong&eacute; maternit&eacute;',4,0),(5,'R&eacute;union syndicale',5,0),(6,'Gr&egrave;ve',6,0),(7,'Formation',7,0),(8,'Concours',8,0),(9,'Stage',9,0),(10,'R&eacute;union',10,0),(11,'Entretien',11,0),(12,'Autre',12,0);
/*!40000 ALTER TABLE `select_abs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_categories`
--

DROP TABLE IF EXISTS `select_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` text NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_categories`
--

LOCK TABLES `select_categories` WRITE;
/*!40000 ALTER TABLE `select_categories` DISABLE KEYS */;
INSERT INTO `select_categories` VALUES (1,'Cat&eacute;gorie A',10),(2,'Cat&eacute;gorie B',20),(3,'Cat&eacute;gorie C',30);
/*!40000 ALTER TABLE `select_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_etages`
--

DROP TABLE IF EXISTS `select_etages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_etages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` text NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_etages`
--

LOCK TABLES `select_etages` WRITE;
/*!40000 ALTER TABLE `select_etages` DISABLE KEYS */;
INSERT INTO `select_etages` VALUES (24,'Mezzanine',0),(25,'RDC',1),(26,'RDJ',2),(27,'Magasins',3),(28,'village',4),(29,'Bleuets',5),(30,'Mandela',6),(31,'M&egrave;ches',7),(32,'Ludoth&egrave;que',8);
/*!40000 ALTER TABLE `select_etages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_groupes`
--

DROP TABLE IF EXISTS `select_groupes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_groupes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` text NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_groupes`
--

LOCK TABLES `select_groupes` WRITE;
/*!40000 ALTER TABLE `select_groupes` DISABLE KEYS */;
/*!40000 ALTER TABLE `select_groupes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_services`
--

DROP TABLE IF EXISTS `select_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` text NOT NULL,
  `rang` int(11) NOT NULL,
  `couleur` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_services`
--

LOCK TABLES `select_services` WRITE;
/*!40000 ALTER TABLE `select_services` DISABLE KEYS */;
INSERT INTO `select_services` VALUES (1,'P&ocirc;le public',1,''),(2,'P&ocirc;le conservation',2,''),(3,'P&ocirc;le collection',3,''),(4,'P&ocirc;le informatique',4,''),(5,'P&ocirc;le administratif',5,''),(6,'Direction',6,'');
/*!40000 ALTER TABLE `select_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_statuts`
--

DROP TABLE IF EXISTS `select_statuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_statuts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` text NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  `couleur` varchar(7) NOT NULL,
  `categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_statuts`
--

LOCK TABLES `select_statuts` WRITE;
/*!40000 ALTER TABLE `select_statuts` DISABLE KEYS */;
INSERT INTO `select_statuts` VALUES (1,'Conservateur',1,'',1),(2,'Biblioth&eacute;caire',2,'',1),(3,'AB',3,'',0),(4,'BAS',4,'',2),(5,'Magasinier',5,'',3),(6,'Etudiant',6,'',3),(7,'Garde de nuit',7,'',0),(8,'Autre',8,'',0);
/*!40000 ALTER TABLE `select_statuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volants`
--

DROP TABLE IF EXISTS `volants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `perso_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volants`
--

LOCK TABLES `volants` WRITE;
/*!40000 ALTER TABLE `volants` DISABLE KEYS */;
/*!40000 ALTER TABLE `volants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20  8:57:04
