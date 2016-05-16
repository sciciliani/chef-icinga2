-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: icinga2
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Current Database: `icinga2`
--

/*!40000 DROP DATABASE IF EXISTS `icinga2`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `icinga2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `icinga2`;

--
-- Table structure for table `icinga_acknowledgements`
--

DROP TABLE IF EXISTS `icinga_acknowledgements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_acknowledgements` (
  `acknowledgement_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_sticky` smallint(6) DEFAULT '0',
  `persistent_comment` smallint(6) DEFAULT '0',
  `notify_contacts` smallint(6) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`acknowledgement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Current and historical host and service acknowledgements';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_acknowledgements`
--

LOCK TABLES `icinga_acknowledgements` WRITE;
/*!40000 ALTER TABLE `icinga_acknowledgements` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_acknowledgements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_commands`
--

DROP TABLE IF EXISTS `icinga_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_commands` (
  `command_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `command_line` text,
  PRIMARY KEY (`command_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`config_type`),
  KEY `commands_i_id_idx` (`instance_id`),
  KEY `command_object_idx` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1 COMMENT='Command definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commands`
--

LOCK TABLES `icinga_commands` WRITE;
/*!40000 ALTER TABLE `icinga_commands` DISABLE KEYS */;
INSERT INTO `icinga_commands` VALUES (1,1,1,3,' \"/usr/lib/nagios/plugins/check_by_ssh\"'),(2,1,1,4,' \"/usr/lib/nagios/plugins/check_clamd\"'),(3,1,1,5,'<internal>'),(4,1,1,6,'<internal>'),(5,1,1,7,' \"/usr/lib/nagios/plugins/check_dhcp\"'),(6,1,1,8,' \"/usr/lib/nagios/plugins/check_dig\"'),(7,1,1,9,' \"/usr/lib/nagios/plugins/check_disk\"'),(8,1,1,10,' \"/usr/lib/nagios/plugins/check_apt\"'),(9,1,1,11,' \"/usr/lib/nagios/plugins/check_disk_smb\"'),(10,1,1,12,' \"/usr/lib/nagios/plugins/check_dummy\" \"$dummy_state$\" \"$dummy_text$\"'),(11,1,1,13,' \"/usr/lib/nagios/plugins/check_dns\"'),(12,1,1,14,' \"/usr/lib/nagios/plugins/check_fping\" \"$fping_address$\" \"-4\"'),(13,1,1,15,' \"/usr/lib/nagios/plugins/check_fping\" \"$fping_address$\" \"-6\"'),(14,1,1,16,' \"/usr/lib/nagios/plugins/check_ping\"'),(15,1,1,17,' \"/usr/lib/nagios/plugins/check_ftp\"'),(16,1,1,18,' \"/usr/lib/nagios/plugins/check_ping\" \"-4\"'),(17,1,1,19,' \"/usr/lib/nagios/plugins/check_hpjd\"'),(18,1,1,20,' \"/usr/lib/nagios/plugins/check_ping\" \"-6\"'),(19,1,1,21,'<internal>'),(20,1,1,22,' \"/usr/lib/nagios/plugins/check_icmp\"'),(21,1,1,23,'<internal>'),(22,1,1,24,' \"/usr/lib/nagios/plugins/check_imap\"'),(23,1,1,25,' \"/usr/lib/nagios/plugins/check_http\"'),(24,1,1,26,' \"/usr/lib/nagios/plugins/check_ldap\"'),(25,1,1,27,' \"/usr/lib/nagios/plugins/check_load\"'),(26,1,1,28,' \"/usr/lib/nagios/plugins/check_mailq\"'),(27,1,1,29,' \"/usr/lib/nagios/plugins/negate\"'),(28,1,1,30,' \"/usr/lib/nagios/plugins/check_mysql\"'),(29,1,1,31,' \"/usr/lib/nagios/plugins/check_nrpe\"'),(30,1,1,32,' \"/usr/lib/nagios/plugins/check_nt\"'),(31,1,1,33,' \"/usr/lib/nagios/plugins/check_ntp_time\"'),(32,1,1,34,' \"/usr/lib/nagios/plugins/check_ntp_peer\"'),(33,1,1,35,' \"/usr/lib/nagios/plugins/check_dummy\" \"$dummy_state$\" \"$dummy_text$\"'),(34,1,1,36,' \"/usr/lib/nagios/plugins/check_pgsql\"'),(35,1,1,37,' \"/usr/lib/nagios/plugins/check_ping\"'),(36,1,1,38,' \"/usr/lib/nagios/plugins/check_ping\" \"-4\"'),(37,1,1,39,' \"/usr/lib/nagios/plugins/check_pop\"'),(38,1,1,40,' \"/usr/lib/nagios/plugins/check_procs\"'),(39,1,1,41,'<internal>'),(40,1,1,42,' \"/usr/lib/nagios/plugins/check_simap\"'),(41,1,1,43,' \"/usr/lib/nagios/plugins/check_smtp\"'),(42,1,1,44,' \"/usr/lib/nagios/plugins/check_snmp\"'),(43,1,1,45,' \"/usr/lib/nagios/plugins/check_snmp\"'),(44,1,1,46,' \"/usr/lib/nagios/plugins/check_snmp\"'),(45,1,1,47,' \"/usr/lib/nagios/plugins/check_spop\"'),(46,1,1,48,' \"/usr/lib/nagios/plugins/check_ssh\"'),(47,1,1,49,' \"/usr/lib/nagios/plugins/check_tcp\"'),(48,1,1,50,' \"/usr/lib/nagios/plugins/check_ssmtp\"'),(49,1,1,51,' \"/usr/lib/nagios/plugins/check_swap\"'),(50,1,1,52,' \"/usr/lib/nagios/plugins/check_tcp\"'),(51,1,1,53,' \"/usr/lib/nagios/plugins/check_udp\" \"-H\" \"$udp_address$\" \"-p\" \"$udp_port$\"'),(52,1,1,54,' \"/usr/lib/nagios/plugins/check_ups\"'),(53,1,1,55,' \"/usr/lib/nagios/plugins/check_users\"'),(54,1,1,56,' \"/usr/lib/nagios/plugins/check_ping\" \"-6\"'),(55,1,1,57,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(56,1,1,58,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(57,1,1,84,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(58,1,1,85,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(59,1,1,99,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(60,1,1,100,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(61,1,1,101,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(62,1,1,102,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(63,1,1,103,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(64,1,1,104,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(65,1,1,105,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(66,1,1,106,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(67,1,1,110,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(68,1,1,111,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(69,1,1,114,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(70,1,1,115,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(71,1,1,118,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(72,1,1,119,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(73,1,1,120,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(74,1,1,121,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(75,1,1,122,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(76,1,1,123,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(77,1,1,124,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(78,1,1,125,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(79,1,1,126,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(80,1,1,127,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(81,1,1,128,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(82,1,1,129,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(83,1,1,130,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(84,1,1,131,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(85,1,1,132,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(86,1,1,133,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(87,1,1,134,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(88,1,1,135,' \"/etc/icinga2/scripts/mail-service-notification.sh\"');
/*!40000 ALTER TABLE `icinga_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_commenthistory`
--

DROP TABLE IF EXISTS `icinga_commenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_commenthistory` (
  `commenthistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `comment_type` smallint(6) DEFAULT '0',
  `entry_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_persistent` smallint(6) DEFAULT '0',
  `comment_source` smallint(6) DEFAULT '0',
  `expires` smallint(6) DEFAULT '0',
  `expiration_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletion_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletion_time_usec` int(11) DEFAULT '0',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`commenthistory_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`comment_time`,`internal_comment_id`),
  KEY `commenthistory_delete_idx` (`instance_id`,`comment_time`,`internal_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commenthistory`
--

LOCK TABLES `icinga_commenthistory` WRITE;
/*!40000 ALTER TABLE `icinga_commenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_commenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_comments`
--

DROP TABLE IF EXISTS `icinga_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_comments` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `comment_type` smallint(6) DEFAULT '0',
  `entry_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_persistent` smallint(6) DEFAULT '0',
  `comment_source` smallint(6) DEFAULT '0',
  `expires` smallint(6) DEFAULT '0',
  `expiration_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`comment_time`,`internal_comment_id`),
  KEY `comments_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Usercomments on Icinga objects';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_comments`
--

LOCK TABLES `icinga_comments` WRITE;
/*!40000 ALTER TABLE `icinga_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_configfiles`
--

DROP TABLE IF EXISTS `icinga_configfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_configfiles` (
  `configfile_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `configfile_type` smallint(6) DEFAULT '0',
  `configfile_path` varchar(255) DEFAULT '',
  PRIMARY KEY (`configfile_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`configfile_type`,`configfile_path`),
  KEY `configfiles_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration files';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_configfiles`
--

LOCK TABLES `icinga_configfiles` WRITE;
/*!40000 ALTER TABLE `icinga_configfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_configfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_configfilevariables`
--

DROP TABLE IF EXISTS `icinga_configfilevariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_configfilevariables` (
  `configfilevariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `configfile_id` bigint(20) unsigned DEFAULT '0',
  `varname` varchar(64) DEFAULT '',
  `varvalue` text,
  PRIMARY KEY (`configfilevariable_id`),
  KEY `configfilevariables_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration file variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_configfilevariables`
--

LOCK TABLES `icinga_configfilevariables` WRITE;
/*!40000 ALTER TABLE `icinga_configfilevariables` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_configfilevariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_conninfo`
--

DROP TABLE IF EXISTS `icinga_conninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_conninfo` (
  `conninfo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `agent_name` varchar(32) DEFAULT '',
  `agent_version` varchar(32) DEFAULT '',
  `disposition` varchar(32) DEFAULT '',
  `connect_source` varchar(32) DEFAULT '',
  `connect_type` varchar(32) DEFAULT '',
  `connect_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disconnect_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_checkin_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bytes_processed` bigint(20) unsigned DEFAULT '0',
  `lines_processed` bigint(20) unsigned DEFAULT '0',
  `entries_processed` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`conninfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='IDO2DB daemon connection information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_conninfo`
--

LOCK TABLES `icinga_conninfo` WRITE;
/*!40000 ALTER TABLE `icinga_conninfo` DISABLE KEYS */;
INSERT INTO `icinga_conninfo` VALUES (1,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 21:14:54','0000-00-00 00:00:00','2016-05-14 21:14:54','2016-05-14 21:14:54','0000-00-00 00:00:00',0,0,0),(2,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 21:33:55','0000-00-00 00:00:00','2016-05-14 21:33:55','2016-05-14 21:33:55','0000-00-00 00:00:00',0,0,0),(3,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 22:55:00','0000-00-00 00:00:00','2016-05-14 22:55:00','2016-05-14 22:55:00','0000-00-00 00:00:00',0,0,0),(4,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 22:58:43','0000-00-00 00:00:00','2016-05-14 22:58:43','2016-05-14 22:58:43','0000-00-00 00:00:00',0,0,0),(5,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:23:08','0000-00-00 00:00:00','2016-05-14 23:23:08','2016-05-14 23:23:08','0000-00-00 00:00:00',0,0,0),(6,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:30:41','0000-00-00 00:00:00','2016-05-14 23:30:41','2016-05-14 23:30:41','0000-00-00 00:00:00',0,0,0),(7,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:35:29','0000-00-00 00:00:00','2016-05-14 23:35:29','2016-05-14 23:35:29','0000-00-00 00:00:00',0,0,0),(8,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:37:31','0000-00-00 00:00:00','2016-05-14 23:37:31','2016-05-14 23:37:31','0000-00-00 00:00:00',0,0,0),(9,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:55:36','0000-00-00 00:00:00','2016-05-14 23:55:36','2016-05-14 23:55:36','0000-00-00 00:00:00',0,0,0),(10,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:57:19','0000-00-00 00:00:00','2016-05-14 23:57:19','2016-05-14 23:57:19','0000-00-00 00:00:00',0,0,0),(11,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-15 20:59:02','0000-00-00 00:00:00','2016-05-15 20:59:02','2016-05-15 20:59:02','0000-00-00 00:00:00',0,0,0),(12,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-15 21:34:02','0000-00-00 00:00:00','2016-05-15 21:34:02','2016-05-15 21:34:02','0000-00-00 00:00:00',0,0,0),(13,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 00:55:10','0000-00-00 00:00:00','2016-05-16 00:55:10','2016-05-16 00:55:10','0000-00-00 00:00:00',0,0,0),(14,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 00:55:37','0000-00-00 00:00:00','2016-05-16 00:55:37','2016-05-16 00:55:37','0000-00-00 00:00:00',0,0,0),(15,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 14:36:26','0000-00-00 00:00:00','2016-05-16 14:36:26','2016-05-16 14:36:26','0000-00-00 00:00:00',0,0,0),(16,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 15:24:13','0000-00-00 00:00:00','2016-05-16 15:24:13','2016-05-16 15:24:13','0000-00-00 00:00:00',0,0,0),(17,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 15:25:05','0000-00-00 00:00:00','2016-05-16 15:25:05','2016-05-16 15:25:05','0000-00-00 00:00:00',0,0,0);
/*!40000 ALTER TABLE `icinga_conninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contact_addresses`
--

DROP TABLE IF EXISTS `icinga_contact_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contact_addresses` (
  `contact_address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_id` bigint(20) unsigned DEFAULT '0',
  `address_number` smallint(6) DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  PRIMARY KEY (`contact_address_id`),
  UNIQUE KEY `contact_id` (`contact_id`,`address_number`),
  KEY `contact_addresses_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contact addresses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contact_addresses`
--

LOCK TABLES `icinga_contact_addresses` WRITE;
/*!40000 ALTER TABLE `icinga_contact_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contact_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contact_notificationcommands`
--

DROP TABLE IF EXISTS `icinga_contact_notificationcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contact_notificationcommands` (
  `contact_notificationcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_id` bigint(20) unsigned DEFAULT '0',
  `notification_type` smallint(6) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` varchar(255) DEFAULT '',
  PRIMARY KEY (`contact_notificationcommand_id`),
  UNIQUE KEY `contact_id` (`contact_id`,`notification_type`,`command_object_id`,`command_args`),
  KEY `contact_notifcommands_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contact host and service notification commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contact_notificationcommands`
--

LOCK TABLES `icinga_contact_notificationcommands` WRITE;
/*!40000 ALTER TABLE `icinga_contact_notificationcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contact_notificationcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactgroup_members`
--

DROP TABLE IF EXISTS `icinga_contactgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactgroup_members` (
  `contactgroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`contactgroup_member_id`),
  KEY `contactgroup_members_i_id_idx` (`instance_id`),
  KEY `cntgrpmbrs_cgid_coid` (`contactgroup_id`,`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='Contactgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroup_members`
--

LOCK TABLES `icinga_contactgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_contactgroup_members` VALUES (17,1,1,68);
/*!40000 ALTER TABLE `icinga_contactgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactgroups`
--

DROP TABLE IF EXISTS `icinga_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactgroups` (
  `contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  PRIMARY KEY (`contactgroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`contactgroup_object_id`),
  KEY `contactgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contactgroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroups`
--

LOCK TABLES `icinga_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_contactgroups` VALUES (1,1,1,69,'Icinga 2 Admin Group');
/*!40000 ALTER TABLE `icinga_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactnotificationmethods`
--

DROP TABLE IF EXISTS `icinga_contactnotificationmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactnotificationmethods` (
  `contactnotificationmethod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contactnotification_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  PRIMARY KEY (`contactnotificationmethod_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`contactnotification_id`,`start_time`,`start_time_usec`),
  KEY `contact_notif_meth_notif_idx` (`contactnotification_id`,`command_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notification methods';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotificationmethods`
--

LOCK TABLES `icinga_contactnotificationmethods` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotificationmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contactnotificationmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactnotifications`
--

DROP TABLE IF EXISTS `icinga_contactnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactnotifications` (
  `contactnotification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `notification_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contactnotification_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`contact_object_id`,`start_time`,`start_time_usec`),
  KEY `contact_notification_idx` (`notification_id`,`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotifications`
--

LOCK TABLES `icinga_contactnotifications` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotifications` DISABLE KEYS */;
INSERT INTO `icinga_contactnotifications` VALUES (1,1,1,68,'2016-05-14 21:31:24',49138,'2016-05-14 21:31:24',49138,NULL),(2,1,2,68,'2016-05-14 22:03:04',588375,'2016-05-14 22:03:04',588375,NULL),(3,1,3,68,'2016-05-14 22:33:09',251579,'2016-05-14 22:33:09',251579,NULL),(4,1,4,68,'2016-05-14 23:03:13',388420,'2016-05-14 23:03:13',388420,NULL),(5,1,5,68,'2016-05-14 23:33:16',694267,'2016-05-14 23:33:16',694267,NULL),(6,1,6,68,'2016-05-15 00:03:18',791244,'2016-05-15 00:03:18',791244,NULL),(7,1,7,68,'2016-05-15 00:33:22',982095,'2016-05-15 00:33:22',982095,NULL),(8,1,8,68,'2016-05-16 00:55:14',322529,'2016-05-16 00:55:14',322529,NULL),(9,1,9,68,'2016-05-16 00:59:32',786437,'2016-05-16 00:59:32',786437,NULL),(10,1,10,68,'2016-05-16 01:29:37',466902,'2016-05-16 01:29:37',466902,NULL),(11,1,11,68,'2016-05-16 01:59:41',620251,'2016-05-16 01:59:41',620251,NULL),(12,1,12,68,'2016-05-16 02:00:18',312005,'2016-05-16 02:00:18',312005,NULL),(13,1,13,68,'2016-05-16 02:29:45',973594,'2016-05-16 02:29:45',973594,NULL),(14,1,14,68,'2016-05-16 02:59:50',436490,'2016-05-16 02:59:50',436490,NULL),(15,1,15,68,'2016-05-16 03:00:18',312011,'2016-05-16 03:00:18',312011,NULL),(16,1,16,68,'2016-05-16 03:29:54',554383,'2016-05-16 03:29:54',554383,NULL),(17,1,17,68,'2016-05-16 03:59:59',244230,'2016-05-16 03:59:59',244230,NULL),(18,1,18,68,'2016-05-16 04:30:03',199098,'2016-05-16 04:30:03',199098,NULL),(19,1,19,68,'2016-05-16 05:00:07',930763,'2016-05-16 05:00:07',930763,NULL),(20,1,20,68,'2016-05-16 05:30:12',600455,'2016-05-16 05:30:12',600455,NULL),(21,1,21,68,'2016-05-16 06:00:16',976023,'2016-05-16 06:00:16',976023,NULL),(22,1,22,68,'2016-05-16 06:30:21',622772,'2016-05-16 06:30:21',622772,NULL),(23,1,23,68,'2016-05-16 07:00:26',126287,'2016-05-16 07:00:26',126287,NULL),(24,1,24,68,'2016-05-16 07:30:30',626333,'2016-05-16 07:30:30',626333,NULL),(25,1,25,68,'2016-05-16 08:00:34',944051,'2016-05-16 08:00:34',944051,NULL),(26,1,26,68,'2016-05-16 08:30:39',638124,'2016-05-16 08:30:39',638124,NULL),(27,1,27,68,'2016-05-16 09:00:43',468277,'2016-05-16 09:00:43',468277,NULL),(28,1,28,68,'2016-05-16 09:30:48',284162,'2016-05-16 09:30:48',284162,NULL),(29,1,29,68,'2016-05-16 10:00:52',562025,'2016-05-16 10:00:52',562025,NULL),(30,1,30,68,'2016-05-16 10:30:56',901103,'2016-05-16 10:30:56',901103,NULL),(31,1,31,68,'2016-05-16 11:01:01',421102,'2016-05-16 11:01:01',421102,NULL),(32,1,32,68,'2016-05-16 11:31:06',205142,'2016-05-16 11:31:06',205142,NULL),(33,1,33,68,'2016-05-16 15:06:25',51589,'2016-05-16 15:06:25',51589,NULL),(34,1,34,68,'2016-05-16 15:36:25',513551,'2016-05-16 15:36:25',513551,NULL),(35,1,35,68,'2016-05-16 16:06:29',963624,'2016-05-16 16:06:29',963624,NULL),(36,1,36,68,'2016-05-16 16:36:34',384624,'2016-05-16 16:36:34',384624,NULL),(37,1,37,68,'2016-05-16 17:06:38',587899,'2016-05-16 17:06:38',587899,NULL),(38,1,38,68,'2016-05-16 17:36:43',373392,'2016-05-16 17:36:43',373392,NULL);
/*!40000 ALTER TABLE `icinga_contactnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contacts`
--

DROP TABLE IF EXISTS `icinga_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contacts` (
  `contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `email_address` varchar(255) DEFAULT '',
  `pager_address` varchar(64) DEFAULT '',
  `host_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `service_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `host_notifications_enabled` smallint(6) DEFAULT '0',
  `service_notifications_enabled` smallint(6) DEFAULT '0',
  `can_submit_commands` smallint(6) DEFAULT '0',
  `notify_service_recovery` smallint(6) DEFAULT '0',
  `notify_service_warning` smallint(6) DEFAULT '0',
  `notify_service_unknown` smallint(6) DEFAULT '0',
  `notify_service_critical` smallint(6) DEFAULT '0',
  `notify_service_flapping` smallint(6) DEFAULT '0',
  `notify_service_downtime` smallint(6) DEFAULT '0',
  `notify_host_recovery` smallint(6) DEFAULT '0',
  `notify_host_down` smallint(6) DEFAULT '0',
  `notify_host_unreachable` smallint(6) DEFAULT '0',
  `notify_host_flapping` smallint(6) DEFAULT '0',
  `notify_host_downtime` smallint(6) DEFAULT '0',
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`contact_object_id`),
  KEY `contacts_i_id_idx` (`instance_id`),
  KEY `contacts_object_id_idx` (`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contact definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contacts`
--

LOCK TABLES `icinga_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_contacts` DISABLE KEYS */;
INSERT INTO `icinga_contacts` VALUES (1,1,1,68,'Icinga 2 Admin','root@localhost','',0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1);
/*!40000 ALTER TABLE `icinga_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactstatus`
--

DROP TABLE IF EXISTS `icinga_contactstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactstatus` (
  `contactstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `host_notifications_enabled` smallint(6) DEFAULT '0',
  `service_notifications_enabled` smallint(6) DEFAULT '0',
  `last_host_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_service_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_attributes` int(11) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contactstatus_id`),
  UNIQUE KEY `contact_object_id` (`contact_object_id`),
  KEY `contactstatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contact status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactstatus`
--

LOCK TABLES `icinga_contactstatus` WRITE;
/*!40000 ALTER TABLE `icinga_contactstatus` DISABLE KEYS */;
INSERT INTO `icinga_contactstatus` VALUES (1,1,68,'2016-05-16 15:25:05',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,0,82);
/*!40000 ALTER TABLE `icinga_contactstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_customvariables`
--

DROP TABLE IF EXISTS `icinga_customvariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_customvariables` (
  `customvariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `has_been_modified` smallint(6) DEFAULT '0',
  `varname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `varvalue` text,
  `is_json` smallint(6) DEFAULT '0',
  `session_token` int(11) DEFAULT NULL,
  PRIMARY KEY (`customvariable_id`),
  UNIQUE KEY `object_id_2` (`object_id`,`config_type`,`varname`),
  KEY `varname` (`varname`),
  KEY `customvariables_i_id_idx` (`instance_id`),
  KEY `cv_session_del_idx` (`session_token`)
) ENGINE=InnoDB AUTO_INCREMENT=700 DEFAULT CHARSET=latin1 COMMENT='Custom variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariables`
--

LOCK TABLES `icinga_customvariables` WRITE;
/*!40000 ALTER TABLE `icinga_customvariables` DISABLE KEYS */;
INSERT INTO `icinga_customvariables` VALUES (234,1,86,1,0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463412305),(235,1,86,1,0,'http_vhosts','{\"Icinga Web 2\":{\"http_uri\":\"/icingaweb2\"},\"http\":{\"http_uri\":\"/\"}}',1,1463412305),(236,1,86,1,0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463412305),(237,1,86,1,0,'os','Linux',0,1463412305),(238,1,91,1,0,'http_uri','/',0,1463412305),(239,1,93,1,0,'disk_partitions','/',0,1463412305),(240,1,95,1,0,'backup_downtime','02:00-03:00',0,1463412305),(243,1,108,1,0,'http_uri','/icingaweb2',0,1463412305),(244,1,112,1,0,'http_port','8080',0,1463412305),(245,1,116,1,0,'mysql_port','3206',0,1463412305),(246,1,116,1,0,'mysql_password','pwtoor',0,1463412305),(247,1,116,1,0,'mysql_username','root',0,1463412305),(474,1,3,1,0,'by_ssh_address','$check_address$',0,1463412305),(475,1,3,1,0,'by_ssh_quiet','false',0,1463412305),(476,1,3,1,0,'check_address','Object of type \'Function\'',0,1463412305),(477,1,3,1,0,'check_ipv4','false',0,1463412305),(478,1,3,1,0,'check_ipv6','false',0,1463412305),(479,1,4,1,0,'clamd_mismatch','warn',0,1463412305),(480,1,4,1,0,'clamd_refuse','crit',0,1463412305),(481,1,4,1,0,'clamd_ssl','false',0,1463412305),(482,1,4,1,0,'clamd_timeout','10',0,1463412305),(483,1,6,1,0,'cluster_zone','$host.name$',0,1463412305),(484,1,7,1,0,'dhcp_unicast','false',0,1463412305),(485,1,8,1,0,'check_address','Object of type \'Function\'',0,1463412305),(486,1,8,1,0,'check_ipv4','false',0,1463412305),(487,1,8,1,0,'check_ipv6','false',0,1463412305),(488,1,8,1,0,'dig_server','$check_address$',0,1463412305),(489,1,9,1,0,'disk_cfree','10%',0,1463412305),(490,1,9,1,0,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"devtmpfs\",\"devfs\",\"mtmfs\"]',1,1463412305),(491,1,9,1,0,'disk_inode_cfree','10%',0,1463412305),(492,1,9,1,0,'disk_inode_wfree','20%',0,1463412305),(493,1,9,1,0,'disk_megabytes','true',0,1463412305),(494,1,9,1,0,'disk_wfree','20%',0,1463412305),(495,1,13,1,0,'check_address','Object of type \'Function\'',0,1463412305),(496,1,13,1,0,'check_ipv4','false',0,1463412305),(497,1,13,1,0,'check_ipv6','false',0,1463412305),(498,1,13,1,0,'dns_expected_answer','$check_address$',0,1463412305),(499,1,13,1,0,'dns_lookup','$host.name$',0,1463412305),(500,1,13,1,0,'dns_timeout','10',0,1463412305),(501,1,12,1,0,'dummy_state','0',0,1463412305),(502,1,12,1,0,'dummy_text','Check was successful.',0,1463412305),(503,1,14,1,0,'fping_address','$address$',0,1463412305),(504,1,14,1,0,'fping_cpl','15',0,1463412305),(505,1,14,1,0,'fping_crta','200',0,1463412305),(506,1,14,1,0,'fping_interval','500',0,1463412305),(507,1,14,1,0,'fping_number','5',0,1463412305),(508,1,14,1,0,'fping_wpl','5',0,1463412305),(509,1,14,1,0,'fping_wrta','100',0,1463412305),(510,1,15,1,0,'fping_address','$address6$',0,1463412305),(511,1,15,1,0,'fping_cpl','15',0,1463412305),(512,1,15,1,0,'fping_crta','200',0,1463412305),(513,1,15,1,0,'fping_interval','500',0,1463412305),(514,1,15,1,0,'fping_number','5',0,1463412305),(515,1,15,1,0,'fping_wpl','5',0,1463412305),(516,1,15,1,0,'fping_wrta','100',0,1463412305),(517,1,17,1,0,'check_address','Object of type \'Function\'',0,1463412305),(518,1,17,1,0,'check_ipv4','false',0,1463412305),(519,1,17,1,0,'check_ipv6','false',0,1463412305),(520,1,17,1,0,'ftp_address','$check_address$',0,1463412305),(521,1,17,1,0,'ftp_mismatch','warn',0,1463412305),(522,1,17,1,0,'ftp_refuse','crit',0,1463412305),(523,1,17,1,0,'ftp_ssl','false',0,1463412305),(524,1,17,1,0,'ftp_timeout','10',0,1463412305),(525,1,11,1,0,'disk_smb_cused','95%',0,1463412305),(526,1,11,1,0,'disk_smb_wused','85%',0,1463412305),(527,1,16,1,0,'check_address','Object of type \'Function\'',0,1463412305),(528,1,16,1,0,'check_ipv4','false',0,1463412305),(529,1,16,1,0,'check_ipv6','false',0,1463412305),(530,1,16,1,0,'ping_address','$check_address$',0,1463412305),(531,1,16,1,0,'ping_cpl','100',0,1463412305),(532,1,16,1,0,'ping_crta','5000',0,1463412305),(533,1,16,1,0,'ping_wpl','80',0,1463412305),(534,1,16,1,0,'ping_wrta','3000',0,1463412305),(535,1,18,1,0,'ping_address','$address$',0,1463412305),(536,1,18,1,0,'ping_cpl','100',0,1463412305),(537,1,18,1,0,'ping_crta','5000',0,1463412305),(538,1,18,1,0,'ping_wpl','80',0,1463412305),(539,1,18,1,0,'ping_wrta','3000',0,1463412305),(540,1,20,1,0,'ping_address','$address6$',0,1463412305),(541,1,20,1,0,'ping_cpl','100',0,1463412305),(542,1,20,1,0,'ping_crta','5000',0,1463412305),(543,1,20,1,0,'ping_wpl','80',0,1463412305),(544,1,20,1,0,'ping_wrta','3000',0,1463412305),(545,1,19,1,0,'check_address','Object of type \'Function\'',0,1463412305),(546,1,19,1,0,'check_ipv4','false',0,1463412305),(547,1,19,1,0,'check_ipv6','false',0,1463412305),(548,1,19,1,0,'hpjd_address','$check_address$',0,1463412305),(549,1,22,1,0,'icmp_address','$address$',0,1463412305),(550,1,22,1,0,'icmp_cpl','15',0,1463412305),(551,1,22,1,0,'icmp_crta','200',0,1463412305),(552,1,22,1,0,'icmp_wpl','5',0,1463412305),(553,1,22,1,0,'icmp_wrta','100',0,1463412305),(554,1,24,1,0,'check_address','Object of type \'Function\'',0,1463412305),(555,1,24,1,0,'check_ipv4','false',0,1463412305),(556,1,24,1,0,'check_ipv6','false',0,1463412305),(557,1,24,1,0,'imap_address','$check_address$',0,1463412305),(558,1,25,1,0,'check_address','Object of type \'Function\'',0,1463412305),(559,1,25,1,0,'check_ipv4','$http_ipv4$',0,1463412305),(560,1,25,1,0,'check_ipv6','$http_ipv6$',0,1463412305),(561,1,25,1,0,'http_address','$check_address$',0,1463412305),(562,1,25,1,0,'http_invertregex','false',0,1463412305),(563,1,25,1,0,'http_linespan','false',0,1463412305),(564,1,25,1,0,'http_sni','false',0,1463412305),(565,1,25,1,0,'http_ssl','false',0,1463412305),(566,1,26,1,0,'check_address','Object of type \'Function\'',0,1463412305),(567,1,26,1,0,'check_ipv4','false',0,1463412305),(568,1,26,1,0,'check_ipv6','false',0,1463412305),(569,1,26,1,0,'ldap_address','$check_address$',0,1463412305),(570,1,26,1,0,'ldap_timeout','10',0,1463412305),(571,1,26,1,0,'ldap_v2','true',0,1463412305),(572,1,26,1,0,'ldap_v3','false',0,1463412305),(573,1,26,1,0,'ldap_verbose','false',0,1463412305),(574,1,27,1,0,'load_cload1','10',0,1463412305),(575,1,27,1,0,'load_cload15','4',0,1463412305),(576,1,27,1,0,'load_cload5','6',0,1463412305),(577,1,27,1,0,'load_percpu','false',0,1463412305),(578,1,27,1,0,'load_wload1','5',0,1463412305),(579,1,27,1,0,'load_wload15','3',0,1463412305),(580,1,27,1,0,'load_wload5','4',0,1463412305),(581,1,30,1,0,'check_address','Object of type \'Function\'',0,1463412305),(582,1,30,1,0,'check_ipv4','false',0,1463412305),(583,1,30,1,0,'check_ipv6','false',0,1463412305),(584,1,30,1,0,'mysql_hostname','$check_address$',0,1463412305),(585,1,29,1,0,'negate_timeout_result','UNKNOWN',0,1463412305),(586,1,31,1,0,'check_address','Object of type \'Function\'',0,1463412305),(587,1,31,1,0,'check_ipv4','$nrpe_ipv4$',0,1463412305),(588,1,31,1,0,'check_ipv6','$nrpe_ipv6$',0,1463412305),(589,1,31,1,0,'nrpe_address','$check_address$',0,1463412305),(590,1,31,1,0,'nrpe_no_ssl','false',0,1463412305),(591,1,31,1,0,'nrpe_timeout_unknown','false',0,1463412305),(592,1,32,1,0,'check_address','Object of type \'Function\'',0,1463412305),(593,1,32,1,0,'check_ipv4','false',0,1463412305),(594,1,32,1,0,'check_ipv6','false',0,1463412305),(595,1,32,1,0,'nscp_address','$check_address$',0,1463412305),(596,1,32,1,0,'nscp_port','12489',0,1463412305),(597,1,32,1,0,'nscp_showall','false',0,1463412305),(598,1,34,1,0,'check_address','Object of type \'Function\'',0,1463412305),(599,1,34,1,0,'check_ipv4','false',0,1463412305),(600,1,34,1,0,'check_ipv6','false',0,1463412305),(601,1,34,1,0,'ntp_address','$check_address$',0,1463412305),(602,1,33,1,0,'check_address','Object of type \'Function\'',0,1463412305),(603,1,33,1,0,'check_ipv4','false',0,1463412305),(604,1,33,1,0,'check_ipv6','false',0,1463412305),(605,1,33,1,0,'ntp_address','$check_address$',0,1463412305),(606,1,35,1,0,'dummy_state','3',0,1463412305),(607,1,35,1,0,'dummy_text','No Passive Check Result Received.',0,1463412305),(608,1,36,1,0,'check_address','Object of type \'Function\'',0,1463412305),(609,1,36,1,0,'check_ipv4','false',0,1463412305),(610,1,36,1,0,'check_ipv6','false',0,1463412305),(611,1,36,1,0,'pgsql_hostname','$check_address$',0,1463412305),(612,1,37,1,0,'check_address','Object of type \'Function\'',0,1463412305),(613,1,37,1,0,'check_ipv4','false',0,1463412305),(614,1,37,1,0,'check_ipv6','false',0,1463412305),(615,1,37,1,0,'ping_address','$check_address$',0,1463412305),(616,1,37,1,0,'ping_cpl','15',0,1463412305),(617,1,37,1,0,'ping_crta','200',0,1463412305),(618,1,37,1,0,'ping_wpl','5',0,1463412305),(619,1,37,1,0,'ping_wrta','100',0,1463412305),(620,1,38,1,0,'ping_address','$address$',0,1463412305),(621,1,38,1,0,'ping_cpl','15',0,1463412305),(622,1,38,1,0,'ping_crta','200',0,1463412305),(623,1,38,1,0,'ping_wpl','5',0,1463412305),(624,1,38,1,0,'ping_wrta','100',0,1463412305),(625,1,56,1,0,'ping_address','$address6$',0,1463412305),(626,1,56,1,0,'ping_cpl','15',0,1463412305),(627,1,56,1,0,'ping_crta','200',0,1463412305),(628,1,56,1,0,'ping_wpl','5',0,1463412305),(629,1,56,1,0,'ping_wrta','100',0,1463412305),(630,1,39,1,0,'check_address','Object of type \'Function\'',0,1463412305),(631,1,39,1,0,'check_ipv4','false',0,1463412305),(632,1,39,1,0,'check_ipv6','false',0,1463412305),(633,1,39,1,0,'pop_address','$check_address$',0,1463412305),(634,1,42,1,0,'check_address','Object of type \'Function\'',0,1463412305),(635,1,42,1,0,'check_ipv4','false',0,1463412305),(636,1,42,1,0,'check_ipv6','false',0,1463412305),(637,1,42,1,0,'simap_address','$check_address$',0,1463412305),(638,1,40,1,0,'procs_critical','400',0,1463412305),(639,1,40,1,0,'procs_nokthreads','false',0,1463412305),(640,1,40,1,0,'procs_traditional','false',0,1463412305),(641,1,40,1,0,'procs_warning','250',0,1463412305),(642,1,43,1,0,'check_address','Object of type \'Function\'',0,1463412305),(643,1,43,1,0,'check_ipv4','false',0,1463412305),(644,1,43,1,0,'check_ipv6','false',0,1463412305),(645,1,43,1,0,'smtp_address','$check_address$',0,1463412305),(646,1,44,1,0,'snmp_address','Object of type \'Function\'',0,1463412305),(647,1,44,1,0,'snmp_community','public',0,1463412305),(648,1,44,1,0,'snmp_invert_search','false',0,1463412305),(649,1,44,1,0,'snmp_timeout','10',0,1463412305),(650,1,45,1,0,'snmp_address','Object of type \'Function\'',0,1463412305),(651,1,45,1,0,'snmp_community','public',0,1463412305),(652,1,45,1,0,'snmp_invert_search','false',0,1463412305),(653,1,45,1,0,'snmp_oid','1.3.6.1.2.1.1.3.0',0,1463412305),(654,1,45,1,0,'snmp_timeout','10',0,1463412305),(655,1,47,1,0,'check_address','Object of type \'Function\'',0,1463412305),(656,1,47,1,0,'check_ipv4','false',0,1463412305),(657,1,47,1,0,'check_ipv6','false',0,1463412305),(658,1,47,1,0,'spop_address','$check_address$',0,1463412305),(659,1,48,1,0,'check_address','Object of type \'Function\'',0,1463412305),(660,1,48,1,0,'check_ipv4','false',0,1463412305),(661,1,48,1,0,'check_ipv6','false',0,1463412305),(662,1,48,1,0,'ssh_address','$check_address$',0,1463412305),(663,1,46,1,0,'check_address','Object of type \'Function\'',0,1463412305),(664,1,46,1,0,'check_ipv4','false',0,1463412305),(665,1,46,1,0,'check_ipv6','false',0,1463412305),(666,1,46,1,0,'snmpv3_address','$check_address$',0,1463412305),(667,1,46,1,0,'snmpv3_auth_alg','SHA',0,1463412305),(668,1,46,1,0,'snmpv3_priv_alg','AES',0,1463412305),(669,1,46,1,0,'snmpv3_seclevel','authPriv',0,1463412305),(670,1,46,1,0,'snmpv3_timeout','10',0,1463412305),(671,1,49,1,0,'check_address','Object of type \'Function\'',0,1463412305),(672,1,49,1,0,'check_ipv4','false',0,1463412305),(673,1,49,1,0,'check_ipv6','false',0,1463412305),(674,1,49,1,0,'ssl_address','$check_address$',0,1463412305),(675,1,50,1,0,'check_address','Object of type \'Function\'',0,1463412305),(676,1,50,1,0,'check_ipv4','false',0,1463412305),(677,1,50,1,0,'check_ipv6','false',0,1463412305),(678,1,50,1,0,'ssmtp_address','$check_address$',0,1463412305),(679,1,51,1,0,'swap_cfree','25',0,1463412305),(680,1,51,1,0,'swap_wfree','50',0,1463412305),(681,1,53,1,0,'check_address','Object of type \'Function\'',0,1463412305),(682,1,53,1,0,'check_ipv4','$udp_ipv4$',0,1463412305),(683,1,53,1,0,'check_ipv6','$udp_ipv6$',0,1463412305),(684,1,53,1,0,'udp_address','$check_address$',0,1463412305),(685,1,52,1,0,'check_address','Object of type \'Function\'',0,1463412305),(686,1,52,1,0,'check_ipv4','$tcp_ipv4$',0,1463412305),(687,1,52,1,0,'check_ipv6','$tcp_ipv6$',0,1463412305),(688,1,52,1,0,'tcp_address','$check_address$',0,1463412305),(689,1,52,1,0,'tcp_all','false',0,1463412305),(690,1,52,1,0,'tcp_mismatch','warn',0,1463412305),(691,1,52,1,0,'tcp_refuse','crit',0,1463412305),(692,1,52,1,0,'tcp_timeout','10',0,1463412305),(693,1,54,1,0,'check_address','Object of type \'Function\'',0,1463412305),(694,1,54,1,0,'check_ipv4','false',0,1463412305),(695,1,54,1,0,'check_ipv6','false',0,1463412305),(696,1,54,1,0,'ups_address','$check_address$',0,1463412305),(697,1,54,1,0,'ups_name','ups',0,1463412305),(698,1,55,1,0,'users_cgreater','50',0,1463412305),(699,1,55,1,0,'users_wgreater','20',0,1463412305);
/*!40000 ALTER TABLE `icinga_customvariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_customvariablestatus`
--

DROP TABLE IF EXISTS `icinga_customvariablestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_customvariablestatus` (
  `customvariablestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `has_been_modified` smallint(6) DEFAULT '0',
  `varname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `varvalue` text,
  `is_json` smallint(6) DEFAULT '0',
  `session_token` int(11) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customvariablestatus_id`),
  UNIQUE KEY `object_id_2` (`object_id`,`varname`),
  KEY `varname` (`varname`),
  KEY `customvariablestatus_i_id_idx` (`instance_id`),
  KEY `cvs_session_del_idx` (`session_token`)
) ENGINE=InnoDB AUTO_INCREMENT=700 DEFAULT CHARSET=latin1 COMMENT='Custom variable status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariablestatus`
--

LOCK TABLES `icinga_customvariablestatus` WRITE;
/*!40000 ALTER TABLE `icinga_customvariablestatus` DISABLE KEYS */;
INSERT INTO `icinga_customvariablestatus` VALUES (234,1,86,'2016-05-16 15:25:05',0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463412305,NULL),(235,1,86,'2016-05-16 15:25:05',0,'http_vhosts','{\"Icinga Web 2\":{\"http_uri\":\"/icingaweb2\"},\"http\":{\"http_uri\":\"/\"}}',1,1463412305,NULL),(236,1,86,'2016-05-16 15:25:05',0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463412305,NULL),(237,1,86,'2016-05-16 15:25:05',0,'os','Linux',0,1463412305,NULL),(238,1,91,'2016-05-16 15:25:05',0,'http_uri','/',0,1463412305,NULL),(239,1,93,'2016-05-16 15:25:05',0,'disk_partitions','/',0,1463412305,NULL),(240,1,95,'2016-05-16 15:25:05',0,'backup_downtime','02:00-03:00',0,1463412305,NULL),(243,1,108,'2016-05-16 15:25:05',0,'http_uri','/icingaweb2',0,1463412305,NULL),(244,1,112,'2016-05-16 15:25:05',0,'http_port','8080',0,1463412305,NULL),(245,1,116,'2016-05-16 15:25:05',0,'mysql_port','3206',0,1463412305,NULL),(246,1,116,'2016-05-16 15:25:05',0,'mysql_password','pwtoor',0,1463412305,NULL),(247,1,116,'2016-05-16 15:25:05',0,'mysql_username','root',0,1463412305,NULL),(474,1,3,'2016-05-16 15:25:05',0,'by_ssh_address','$check_address$',0,1463412305,NULL),(475,1,3,'2016-05-16 15:25:05',0,'by_ssh_quiet','false',0,1463412305,NULL),(476,1,3,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(477,1,3,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(478,1,3,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(479,1,4,'2016-05-16 15:25:05',0,'clamd_mismatch','warn',0,1463412305,NULL),(480,1,4,'2016-05-16 15:25:05',0,'clamd_refuse','crit',0,1463412305,NULL),(481,1,4,'2016-05-16 15:25:05',0,'clamd_ssl','false',0,1463412305,NULL),(482,1,4,'2016-05-16 15:25:05',0,'clamd_timeout','10',0,1463412305,NULL),(483,1,6,'2016-05-16 15:25:05',0,'cluster_zone','$host.name$',0,1463412305,NULL),(484,1,7,'2016-05-16 15:25:05',0,'dhcp_unicast','false',0,1463412305,NULL),(485,1,8,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(486,1,8,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(487,1,8,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(488,1,8,'2016-05-16 15:25:05',0,'dig_server','$check_address$',0,1463412305,NULL),(489,1,9,'2016-05-16 15:25:05',0,'disk_cfree','10%',0,1463412305,NULL),(490,1,9,'2016-05-16 15:25:05',0,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"devtmpfs\",\"devfs\",\"mtmfs\"]',1,1463412305,NULL),(491,1,9,'2016-05-16 15:25:05',0,'disk_inode_cfree','10%',0,1463412305,NULL),(492,1,9,'2016-05-16 15:25:05',0,'disk_inode_wfree','20%',0,1463412305,NULL),(493,1,9,'2016-05-16 15:25:05',0,'disk_megabytes','true',0,1463412305,NULL),(494,1,9,'2016-05-16 15:25:05',0,'disk_wfree','20%',0,1463412305,NULL),(495,1,13,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(496,1,13,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(497,1,13,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(498,1,13,'2016-05-16 15:25:05',0,'dns_expected_answer','$check_address$',0,1463412305,NULL),(499,1,13,'2016-05-16 15:25:05',0,'dns_lookup','$host.name$',0,1463412305,NULL),(500,1,13,'2016-05-16 15:25:05',0,'dns_timeout','10',0,1463412305,NULL),(501,1,12,'2016-05-16 15:25:05',0,'dummy_state','0',0,1463412305,NULL),(502,1,12,'2016-05-16 15:25:05',0,'dummy_text','Check was successful.',0,1463412305,NULL),(503,1,14,'2016-05-16 15:25:05',0,'fping_address','$address$',0,1463412305,NULL),(504,1,14,'2016-05-16 15:25:05',0,'fping_cpl','15',0,1463412305,NULL),(505,1,14,'2016-05-16 15:25:05',0,'fping_crta','200',0,1463412305,NULL),(506,1,14,'2016-05-16 15:25:05',0,'fping_interval','500',0,1463412305,NULL),(507,1,14,'2016-05-16 15:25:05',0,'fping_number','5',0,1463412305,NULL),(508,1,14,'2016-05-16 15:25:05',0,'fping_wpl','5',0,1463412305,NULL),(509,1,14,'2016-05-16 15:25:05',0,'fping_wrta','100',0,1463412305,NULL),(510,1,15,'2016-05-16 15:25:05',0,'fping_address','$address6$',0,1463412305,NULL),(511,1,15,'2016-05-16 15:25:05',0,'fping_cpl','15',0,1463412305,NULL),(512,1,15,'2016-05-16 15:25:05',0,'fping_crta','200',0,1463412305,NULL),(513,1,15,'2016-05-16 15:25:05',0,'fping_interval','500',0,1463412305,NULL),(514,1,15,'2016-05-16 15:25:05',0,'fping_number','5',0,1463412305,NULL),(515,1,15,'2016-05-16 15:25:05',0,'fping_wpl','5',0,1463412305,NULL),(516,1,15,'2016-05-16 15:25:05',0,'fping_wrta','100',0,1463412305,NULL),(517,1,17,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(518,1,17,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(519,1,17,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(520,1,17,'2016-05-16 15:25:05',0,'ftp_address','$check_address$',0,1463412305,NULL),(521,1,17,'2016-05-16 15:25:05',0,'ftp_mismatch','warn',0,1463412305,NULL),(522,1,17,'2016-05-16 15:25:05',0,'ftp_refuse','crit',0,1463412305,NULL),(523,1,17,'2016-05-16 15:25:05',0,'ftp_ssl','false',0,1463412305,NULL),(524,1,17,'2016-05-16 15:25:05',0,'ftp_timeout','10',0,1463412305,NULL),(525,1,11,'2016-05-16 15:25:05',0,'disk_smb_cused','95%',0,1463412305,NULL),(526,1,11,'2016-05-16 15:25:05',0,'disk_smb_wused','85%',0,1463412305,NULL),(527,1,16,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(528,1,16,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(529,1,16,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(530,1,16,'2016-05-16 15:25:05',0,'ping_address','$check_address$',0,1463412305,NULL),(531,1,16,'2016-05-16 15:25:05',0,'ping_cpl','100',0,1463412305,NULL),(532,1,16,'2016-05-16 15:25:05',0,'ping_crta','5000',0,1463412305,NULL),(533,1,16,'2016-05-16 15:25:05',0,'ping_wpl','80',0,1463412305,NULL),(534,1,16,'2016-05-16 15:25:05',0,'ping_wrta','3000',0,1463412305,NULL),(535,1,18,'2016-05-16 15:25:05',0,'ping_address','$address$',0,1463412305,NULL),(536,1,18,'2016-05-16 15:25:05',0,'ping_cpl','100',0,1463412305,NULL),(537,1,18,'2016-05-16 15:25:05',0,'ping_crta','5000',0,1463412305,NULL),(538,1,18,'2016-05-16 15:25:05',0,'ping_wpl','80',0,1463412305,NULL),(539,1,18,'2016-05-16 15:25:05',0,'ping_wrta','3000',0,1463412305,NULL),(540,1,20,'2016-05-16 15:25:05',0,'ping_address','$address6$',0,1463412305,NULL),(541,1,20,'2016-05-16 15:25:05',0,'ping_cpl','100',0,1463412305,NULL),(542,1,20,'2016-05-16 15:25:05',0,'ping_crta','5000',0,1463412305,NULL),(543,1,20,'2016-05-16 15:25:05',0,'ping_wpl','80',0,1463412305,NULL),(544,1,20,'2016-05-16 15:25:05',0,'ping_wrta','3000',0,1463412305,NULL),(545,1,19,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(546,1,19,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(547,1,19,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(548,1,19,'2016-05-16 15:25:05',0,'hpjd_address','$check_address$',0,1463412305,NULL),(549,1,22,'2016-05-16 15:25:05',0,'icmp_address','$address$',0,1463412305,NULL),(550,1,22,'2016-05-16 15:25:05',0,'icmp_cpl','15',0,1463412305,NULL),(551,1,22,'2016-05-16 15:25:05',0,'icmp_crta','200',0,1463412305,NULL),(552,1,22,'2016-05-16 15:25:05',0,'icmp_wpl','5',0,1463412305,NULL),(553,1,22,'2016-05-16 15:25:05',0,'icmp_wrta','100',0,1463412305,NULL),(554,1,24,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(555,1,24,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(556,1,24,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(557,1,24,'2016-05-16 15:25:05',0,'imap_address','$check_address$',0,1463412305,NULL),(558,1,25,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(559,1,25,'2016-05-16 15:25:05',0,'check_ipv4','$http_ipv4$',0,1463412305,NULL),(560,1,25,'2016-05-16 15:25:05',0,'check_ipv6','$http_ipv6$',0,1463412305,NULL),(561,1,25,'2016-05-16 15:25:05',0,'http_address','$check_address$',0,1463412305,NULL),(562,1,25,'2016-05-16 15:25:05',0,'http_invertregex','false',0,1463412305,NULL),(563,1,25,'2016-05-16 15:25:05',0,'http_linespan','false',0,1463412305,NULL),(564,1,25,'2016-05-16 15:25:05',0,'http_sni','false',0,1463412305,NULL),(565,1,25,'2016-05-16 15:25:05',0,'http_ssl','false',0,1463412305,NULL),(566,1,26,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(567,1,26,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(568,1,26,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(569,1,26,'2016-05-16 15:25:05',0,'ldap_address','$check_address$',0,1463412305,NULL),(570,1,26,'2016-05-16 15:25:05',0,'ldap_timeout','10',0,1463412305,NULL),(571,1,26,'2016-05-16 15:25:05',0,'ldap_v2','true',0,1463412305,NULL),(572,1,26,'2016-05-16 15:25:05',0,'ldap_v3','false',0,1463412305,NULL),(573,1,26,'2016-05-16 15:25:05',0,'ldap_verbose','false',0,1463412305,NULL),(574,1,27,'2016-05-16 15:25:05',0,'load_cload1','10',0,1463412305,NULL),(575,1,27,'2016-05-16 15:25:05',0,'load_cload15','4',0,1463412305,NULL),(576,1,27,'2016-05-16 15:25:05',0,'load_cload5','6',0,1463412305,NULL),(577,1,27,'2016-05-16 15:25:05',0,'load_percpu','false',0,1463412305,NULL),(578,1,27,'2016-05-16 15:25:05',0,'load_wload1','5',0,1463412305,NULL),(579,1,27,'2016-05-16 15:25:05',0,'load_wload15','3',0,1463412305,NULL),(580,1,27,'2016-05-16 15:25:05',0,'load_wload5','4',0,1463412305,NULL),(581,1,30,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(582,1,30,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(583,1,30,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(584,1,30,'2016-05-16 15:25:05',0,'mysql_hostname','$check_address$',0,1463412305,NULL),(585,1,29,'2016-05-16 15:25:05',0,'negate_timeout_result','UNKNOWN',0,1463412305,NULL),(586,1,31,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(587,1,31,'2016-05-16 15:25:05',0,'check_ipv4','$nrpe_ipv4$',0,1463412305,NULL),(588,1,31,'2016-05-16 15:25:05',0,'check_ipv6','$nrpe_ipv6$',0,1463412305,NULL),(589,1,31,'2016-05-16 15:25:05',0,'nrpe_address','$check_address$',0,1463412305,NULL),(590,1,31,'2016-05-16 15:25:05',0,'nrpe_no_ssl','false',0,1463412305,NULL),(591,1,31,'2016-05-16 15:25:05',0,'nrpe_timeout_unknown','false',0,1463412305,NULL),(592,1,32,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(593,1,32,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(594,1,32,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(595,1,32,'2016-05-16 15:25:05',0,'nscp_address','$check_address$',0,1463412305,NULL),(596,1,32,'2016-05-16 15:25:05',0,'nscp_port','12489',0,1463412305,NULL),(597,1,32,'2016-05-16 15:25:05',0,'nscp_showall','false',0,1463412305,NULL),(598,1,34,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(599,1,34,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(600,1,34,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(601,1,34,'2016-05-16 15:25:05',0,'ntp_address','$check_address$',0,1463412305,NULL),(602,1,33,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(603,1,33,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(604,1,33,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(605,1,33,'2016-05-16 15:25:05',0,'ntp_address','$check_address$',0,1463412305,NULL),(606,1,35,'2016-05-16 15:25:05',0,'dummy_state','3',0,1463412305,NULL),(607,1,35,'2016-05-16 15:25:05',0,'dummy_text','No Passive Check Result Received.',0,1463412305,NULL),(608,1,36,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(609,1,36,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(610,1,36,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(611,1,36,'2016-05-16 15:25:05',0,'pgsql_hostname','$check_address$',0,1463412305,NULL),(612,1,37,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(613,1,37,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(614,1,37,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(615,1,37,'2016-05-16 15:25:05',0,'ping_address','$check_address$',0,1463412305,NULL),(616,1,37,'2016-05-16 15:25:05',0,'ping_cpl','15',0,1463412305,NULL),(617,1,37,'2016-05-16 15:25:05',0,'ping_crta','200',0,1463412305,NULL),(618,1,37,'2016-05-16 15:25:05',0,'ping_wpl','5',0,1463412305,NULL),(619,1,37,'2016-05-16 15:25:05',0,'ping_wrta','100',0,1463412305,NULL),(620,1,38,'2016-05-16 15:25:05',0,'ping_address','$address$',0,1463412305,NULL),(621,1,38,'2016-05-16 15:25:05',0,'ping_cpl','15',0,1463412305,NULL),(622,1,38,'2016-05-16 15:25:05',0,'ping_crta','200',0,1463412305,NULL),(623,1,38,'2016-05-16 15:25:05',0,'ping_wpl','5',0,1463412305,NULL),(624,1,38,'2016-05-16 15:25:05',0,'ping_wrta','100',0,1463412305,NULL),(625,1,56,'2016-05-16 15:25:05',0,'ping_address','$address6$',0,1463412305,NULL),(626,1,56,'2016-05-16 15:25:05',0,'ping_cpl','15',0,1463412305,NULL),(627,1,56,'2016-05-16 15:25:05',0,'ping_crta','200',0,1463412305,NULL),(628,1,56,'2016-05-16 15:25:05',0,'ping_wpl','5',0,1463412305,NULL),(629,1,56,'2016-05-16 15:25:05',0,'ping_wrta','100',0,1463412305,NULL),(630,1,39,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(631,1,39,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(632,1,39,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(633,1,39,'2016-05-16 15:25:05',0,'pop_address','$check_address$',0,1463412305,NULL),(634,1,42,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(635,1,42,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(636,1,42,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(637,1,42,'2016-05-16 15:25:05',0,'simap_address','$check_address$',0,1463412305,NULL),(638,1,40,'2016-05-16 15:25:05',0,'procs_critical','400',0,1463412305,NULL),(639,1,40,'2016-05-16 15:25:05',0,'procs_nokthreads','false',0,1463412305,NULL),(640,1,40,'2016-05-16 15:25:05',0,'procs_traditional','false',0,1463412305,NULL),(641,1,40,'2016-05-16 15:25:05',0,'procs_warning','250',0,1463412305,NULL),(642,1,43,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(643,1,43,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(644,1,43,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(645,1,43,'2016-05-16 15:25:05',0,'smtp_address','$check_address$',0,1463412305,NULL),(646,1,44,'2016-05-16 15:25:05',0,'snmp_address','Object of type \'Function\'',0,1463412305,NULL),(647,1,44,'2016-05-16 15:25:05',0,'snmp_community','public',0,1463412305,NULL),(648,1,44,'2016-05-16 15:25:05',0,'snmp_invert_search','false',0,1463412305,NULL),(649,1,44,'2016-05-16 15:25:05',0,'snmp_timeout','10',0,1463412305,NULL),(650,1,45,'2016-05-16 15:25:05',0,'snmp_address','Object of type \'Function\'',0,1463412305,NULL),(651,1,45,'2016-05-16 15:25:05',0,'snmp_community','public',0,1463412305,NULL),(652,1,45,'2016-05-16 15:25:05',0,'snmp_invert_search','false',0,1463412305,NULL),(653,1,45,'2016-05-16 15:25:05',0,'snmp_oid','1.3.6.1.2.1.1.3.0',0,1463412305,NULL),(654,1,45,'2016-05-16 15:25:05',0,'snmp_timeout','10',0,1463412305,NULL),(655,1,47,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(656,1,47,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(657,1,47,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(658,1,47,'2016-05-16 15:25:05',0,'spop_address','$check_address$',0,1463412305,NULL),(659,1,48,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(660,1,48,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(661,1,48,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(662,1,48,'2016-05-16 15:25:05',0,'ssh_address','$check_address$',0,1463412305,NULL),(663,1,46,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(664,1,46,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(665,1,46,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(666,1,46,'2016-05-16 15:25:05',0,'snmpv3_address','$check_address$',0,1463412305,NULL),(667,1,46,'2016-05-16 15:25:05',0,'snmpv3_auth_alg','SHA',0,1463412305,NULL),(668,1,46,'2016-05-16 15:25:05',0,'snmpv3_priv_alg','AES',0,1463412305,NULL),(669,1,46,'2016-05-16 15:25:05',0,'snmpv3_seclevel','authPriv',0,1463412305,NULL),(670,1,46,'2016-05-16 15:25:05',0,'snmpv3_timeout','10',0,1463412305,NULL),(671,1,49,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(672,1,49,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(673,1,49,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(674,1,49,'2016-05-16 15:25:05',0,'ssl_address','$check_address$',0,1463412305,NULL),(675,1,50,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(676,1,50,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(677,1,50,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(678,1,50,'2016-05-16 15:25:05',0,'ssmtp_address','$check_address$',0,1463412305,NULL),(679,1,51,'2016-05-16 15:25:05',0,'swap_cfree','25',0,1463412305,NULL),(680,1,51,'2016-05-16 15:25:05',0,'swap_wfree','50',0,1463412305,NULL),(681,1,53,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(682,1,53,'2016-05-16 15:25:05',0,'check_ipv4','$udp_ipv4$',0,1463412305,NULL),(683,1,53,'2016-05-16 15:25:05',0,'check_ipv6','$udp_ipv6$',0,1463412305,NULL),(684,1,53,'2016-05-16 15:25:05',0,'udp_address','$check_address$',0,1463412305,NULL),(685,1,52,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(686,1,52,'2016-05-16 15:25:05',0,'check_ipv4','$tcp_ipv4$',0,1463412305,NULL),(687,1,52,'2016-05-16 15:25:05',0,'check_ipv6','$tcp_ipv6$',0,1463412305,NULL),(688,1,52,'2016-05-16 15:25:05',0,'tcp_address','$check_address$',0,1463412305,NULL),(689,1,52,'2016-05-16 15:25:05',0,'tcp_all','false',0,1463412305,NULL),(690,1,52,'2016-05-16 15:25:05',0,'tcp_mismatch','warn',0,1463412305,NULL),(691,1,52,'2016-05-16 15:25:05',0,'tcp_refuse','crit',0,1463412305,NULL),(692,1,52,'2016-05-16 15:25:05',0,'tcp_timeout','10',0,1463412305,NULL),(693,1,54,'2016-05-16 15:25:05',0,'check_address','Object of type \'Function\'',0,1463412305,NULL),(694,1,54,'2016-05-16 15:25:05',0,'check_ipv4','false',0,1463412305,NULL),(695,1,54,'2016-05-16 15:25:05',0,'check_ipv6','false',0,1463412305,NULL),(696,1,54,'2016-05-16 15:25:05',0,'ups_address','$check_address$',0,1463412305,NULL),(697,1,54,'2016-05-16 15:25:05',0,'ups_name','ups',0,1463412305,NULL),(698,1,55,'2016-05-16 15:25:05',0,'users_cgreater','50',0,1463412305,NULL),(699,1,55,'2016-05-16 15:25:05',0,'users_wgreater','20',0,1463412305,NULL);
/*!40000 ALTER TABLE `icinga_customvariablestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_dbversion`
--

DROP TABLE IF EXISTS `icinga_dbversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_dbversion` (
  `dbversion_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  `version` varchar(10) DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dbversion_id`),
  UNIQUE KEY `dbversion` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_dbversion`
--

LOCK TABLES `icinga_dbversion` WRITE;
/*!40000 ALTER TABLE `icinga_dbversion` DISABLE KEYS */;
INSERT INTO `icinga_dbversion` VALUES (1,'idoutils','1.14.0','2016-05-14 20:58:36','2016-05-14 20:58:36');
/*!40000 ALTER TABLE `icinga_dbversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_downtimehistory`
--

DROP TABLE IF EXISTS `icinga_downtimehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_downtimehistory` (
  `downtimehistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `downtime_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `internal_downtime_id` bigint(20) unsigned DEFAULT '0',
  `triggered_by_id` bigint(20) unsigned DEFAULT '0',
  `is_fixed` smallint(6) DEFAULT '0',
  `duration` bigint(20) DEFAULT '0',
  `scheduled_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `was_started` smallint(6) DEFAULT '0',
  `actual_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_start_time_usec` int(11) DEFAULT '0',
  `actual_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_end_time_usec` int(11) DEFAULT '0',
  `was_cancelled` smallint(6) DEFAULT '0',
  `is_in_effect` smallint(6) DEFAULT '0',
  `trigger_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`downtimehistory_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`entry_time`,`internal_downtime_id`),
  KEY `sla_idx_dohist` (`object_id`,`actual_start_time`,`actual_end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Historical scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_downtimehistory`
--

LOCK TABLES `icinga_downtimehistory` WRITE;
/*!40000 ALTER TABLE `icinga_downtimehistory` DISABLE KEYS */;
INSERT INTO `icinga_downtimehistory` VALUES (1,1,1,95,'2016-05-16 02:00:37','icingaadmin','Scheduled downtime for backup',3,0,1,0,'2016-05-17 02:00:00','2016-05-17 03:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0,0,'0000-00-00 00:00:00','icinga2!load!ip-10-0-0-210-1463364037-0',82);
/*!40000 ALTER TABLE `icinga_downtimehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpoints`
--

DROP TABLE IF EXISTS `icinga_endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpoints` (
  `endpoint_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `identity` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`endpoint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Endpoint configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpoints`
--

LOCK TABLES `icinga_endpoints` WRITE;
/*!40000 ALTER TABLE `icinga_endpoints` DISABLE KEYS */;
INSERT INTO `icinga_endpoints` VALUES (1,1,1,2,1,'ip-10-0-0-210','ip-10-0-0-210'),(2,1,82,83,1,'icinga2','icinga2');
/*!40000 ALTER TABLE `icinga_endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpointstatus`
--

DROP TABLE IF EXISTS `icinga_endpointstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpointstatus` (
  `endpointstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `identity` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `is_connected` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`endpointstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Endpoint status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpointstatus`
--

LOCK TABLES `icinga_endpointstatus` WRITE;
/*!40000 ALTER TABLE `icinga_endpointstatus` DISABLE KEYS */;
INSERT INTO `icinga_endpointstatus` VALUES (1,1,1,2,'2016-05-14 21:14:54','ip-10-0-0-210','ip-10-0-0-210',1),(2,1,82,83,'2016-05-16 15:25:05','icinga2','icinga2',1);
/*!40000 ALTER TABLE `icinga_endpointstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_eventhandlers`
--

DROP TABLE IF EXISTS `icinga_eventhandlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_eventhandlers` (
  `eventhandler_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`eventhandler_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`start_time`,`start_time_usec`),
  KEY `eventhandlers_i_id_idx` (`instance_id`),
  KEY `eventhandlers_time_id_idx` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service event handlers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_eventhandlers`
--

LOCK TABLES `icinga_eventhandlers` WRITE;
/*!40000 ALTER TABLE `icinga_eventhandlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_eventhandlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_externalcommands`
--

DROP TABLE IF EXISTS `icinga_externalcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_externalcommands` (
  `externalcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `command_type` smallint(6) DEFAULT '0',
  `command_name` varchar(128) DEFAULT '',
  `command_args` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`externalcommand_id`),
  KEY `externalcommands_i_id_idx` (`instance_id`),
  KEY `externalcommands_time_id_idx` (`entry_time`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Historical record of processed external commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_externalcommands`
--

LOCK TABLES `icinga_externalcommands` WRITE;
/*!40000 ALTER TABLE `icinga_externalcommands` DISABLE KEYS */;
INSERT INTO `icinga_externalcommands` VALUES (1,1,'2016-05-14 23:15:57',54,'SCHEDULE_FORCED_SVC_CHECK','icinga2;http;1463267757',82),(2,1,'2016-05-14 23:35:53',98,'SCHEDULE_FORCED_HOST_CHECK','docker-apache2;1463268953',82),(3,1,'2016-05-14 23:38:11',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463269091',82),(4,1,'2016-05-14 23:55:46',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463270146',82),(5,1,'2016-05-14 23:57:23',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463270243',82),(6,1,'2016-05-16 00:56:27',98,'SCHEDULE_FORCED_HOST_CHECK','docker-apache2;1463360187',82),(7,1,'2016-05-16 00:56:32',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360192',82),(8,1,'2016-05-16 00:57:41',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360261',82),(9,1,'2016-05-16 00:57:51',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360271',82),(10,1,'2016-05-16 00:58:47',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360327',82),(11,1,'2016-05-16 15:22:47',98,'SCHEDULE_FORCED_HOST_CHECK','docker-apache2;1463412167',82),(12,1,'2016-05-16 15:22:51',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463412171',82),(13,1,'2016-05-16 15:24:17',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463412257',82),(14,1,'2016-05-16 15:25:09',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463412309',82);
/*!40000 ALTER TABLE `icinga_externalcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_flappinghistory`
--

DROP TABLE IF EXISTS `icinga_flappinghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_flappinghistory` (
  `flappinghistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `event_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_time_usec` int(11) DEFAULT '0',
  `event_type` smallint(6) DEFAULT '0',
  `reason_type` smallint(6) DEFAULT '0',
  `flapping_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `low_threshold` double DEFAULT '0',
  `high_threshold` double DEFAULT '0',
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`flappinghistory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Current and historical record of host and service flapping';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_flappinghistory`
--

LOCK TABLES `icinga_flappinghistory` WRITE;
/*!40000 ALTER TABLE `icinga_flappinghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_flappinghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_contactgroups`
--

DROP TABLE IF EXISTS `icinga_host_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_contactgroups` (
  `host_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_contactgroup_id`),
  KEY `host_contactgroups_i_id_idx` (`instance_id`),
  KEY `hstcntgrps_hid_cgoid` (`host_id`,`contactgroup_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='Host contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contactgroups`
--

LOCK TABLES `icinga_host_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_host_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_host_contactgroups` VALUES (17,1,2,69);
/*!40000 ALTER TABLE `icinga_host_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_contacts`
--

DROP TABLE IF EXISTS `icinga_host_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_contacts` (
  `host_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_contact_id`),
  KEY `host_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='Host contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contacts`
--

LOCK TABLES `icinga_host_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_host_contacts` DISABLE KEYS */;
INSERT INTO `icinga_host_contacts` VALUES (17,1,2,68);
/*!40000 ALTER TABLE `icinga_host_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_parenthosts`
--

DROP TABLE IF EXISTS `icinga_host_parenthosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_parenthosts` (
  `host_parenthost_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `parent_host_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_parenthost_id`),
  KEY `host_parenthosts_i_id_idx` (`instance_id`),
  KEY `hstprnthsts_hid_phoid` (`host_id`,`parent_host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Parent hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_parenthosts`
--

LOCK TABLES `icinga_host_parenthosts` WRITE;
/*!40000 ALTER TABLE `icinga_host_parenthosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_parenthosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostchecks`
--

DROP TABLE IF EXISTS `icinga_hostchecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostchecks` (
  `hostcheck_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `check_type` smallint(6) DEFAULT '0',
  `is_raw_check` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hostcheck_id`),
  KEY `hostchecks_i_id_idx` (`instance_id`),
  KEY `hostchecks_time_id_idx` (`start_time`),
  KEY `hostchks_h_obj_id_idx` (`host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostchecks`
--

LOCK TABLES `icinga_hostchecks` WRITE;
/*!40000 ALTER TABLE `icinga_hostchecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostchecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostdependencies`
--

DROP TABLE IF EXISTS `icinga_hostdependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostdependencies` (
  `hostdependency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `dependent_host_object_id` bigint(20) unsigned DEFAULT '0',
  `dependency_type` smallint(6) DEFAULT '0',
  `inherits_parent` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `fail_on_up` smallint(6) DEFAULT '0',
  `fail_on_down` smallint(6) DEFAULT '0',
  `fail_on_unreachable` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hostdependency_id`),
  KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`,`dependent_host_object_id`,`dependency_type`,`inherits_parent`,`fail_on_up`,`fail_on_down`,`fail_on_unreachable`),
  KEY `hostdependencies_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host dependency definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostdependencies`
--

LOCK TABLES `icinga_hostdependencies` WRITE;
/*!40000 ALTER TABLE `icinga_hostdependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostdependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalation_contactgroups`
--

DROP TABLE IF EXISTS `icinga_hostescalation_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalation_contactgroups` (
  `hostescalation_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostescalation_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostescalation_contactgroup_id`),
  UNIQUE KEY `instance_id` (`hostescalation_id`,`contactgroup_object_id`),
  KEY `hostesc_cgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalation_contactgroups`
--

LOCK TABLES `icinga_hostescalation_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalation_contactgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalation_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalation_contacts`
--

DROP TABLE IF EXISTS `icinga_hostescalation_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalation_contacts` (
  `hostescalation_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostescalation_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostescalation_contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`hostescalation_id`,`contact_object_id`),
  KEY `hostesc_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalation_contacts`
--

LOCK TABLES `icinga_hostescalation_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalation_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalation_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalations`
--

DROP TABLE IF EXISTS `icinga_hostescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalations` (
  `hostescalation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `first_notification` smallint(6) DEFAULT '0',
  `last_notification` smallint(6) DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `escalate_on_recovery` smallint(6) DEFAULT '0',
  `escalate_on_down` smallint(6) DEFAULT '0',
  `escalate_on_unreachable` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hostescalation_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`,`timeperiod_object_id`,`first_notification`,`last_notification`),
  KEY `hostesc_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalations`
--

LOCK TABLES `icinga_hostescalations` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup_members`
--

DROP TABLE IF EXISTS `icinga_hostgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup_members` (
  `hostgroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostgroup_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostgroup_member_id`),
  KEY `hostgroup_members_i_id_idx` (`instance_id`),
  KEY `hstgrpmbrs_hgid_hoid` (`hostgroup_id`,`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='Hostgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_members`
--

LOCK TABLES `icinga_hostgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_hostgroup_members` VALUES (17,1,1,86);
/*!40000 ALTER TABLE `icinga_hostgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroups`
--

DROP TABLE IF EXISTS `icinga_hostgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroups` (
  `hostgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `hostgroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `notes` text,
  `notes_url` text,
  `action_url` text,
  PRIMARY KEY (`hostgroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`hostgroup_object_id`),
  KEY `hostgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Hostgroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroups`
--

LOCK TABLES `icinga_hostgroups` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroups` DISABLE KEYS */;
INSERT INTO `icinga_hostgroups` VALUES (1,1,1,62,'Linux Servers','','',''),(2,1,1,63,'Windows Servers','','','');
/*!40000 ALTER TABLE `icinga_hostgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hosts`
--

DROP TABLE IF EXISTS `icinga_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hosts` (
  `host_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `address` varchar(128) DEFAULT '',
  `address6` varchar(128) DEFAULT '',
  `check_command_object_id` bigint(20) unsigned DEFAULT '0',
  `check_command_args` text,
  `eventhandler_command_object_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_command_args` text,
  `notification_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `failure_prediction_options` varchar(128) DEFAULT '',
  `check_interval` double DEFAULT '0',
  `retry_interval` double DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `first_notification_delay` double DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `notify_on_down` smallint(6) DEFAULT '0',
  `notify_on_unreachable` smallint(6) DEFAULT '0',
  `notify_on_recovery` smallint(6) DEFAULT '0',
  `notify_on_flapping` smallint(6) DEFAULT '0',
  `notify_on_downtime` smallint(6) DEFAULT '0',
  `stalk_on_up` smallint(6) DEFAULT '0',
  `stalk_on_down` smallint(6) DEFAULT '0',
  `stalk_on_unreachable` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `flap_detection_on_up` smallint(6) DEFAULT '0',
  `flap_detection_on_down` smallint(6) DEFAULT '0',
  `flap_detection_on_unreachable` smallint(6) DEFAULT '0',
  `low_flap_threshold` double DEFAULT '0',
  `high_flap_threshold` double DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `freshness_checks_enabled` smallint(6) DEFAULT '0',
  `freshness_threshold` int(11) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `retain_status_information` smallint(6) DEFAULT '0',
  `retain_nonstatus_information` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `obsess_over_host` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `icon_image` text,
  `icon_image_alt` text,
  `vrml_image` text,
  `statusmap_image` text,
  `have_2d_coords` smallint(6) DEFAULT '0',
  `x_2d` smallint(6) DEFAULT '0',
  `y_2d` smallint(6) DEFAULT '0',
  `have_3d_coords` smallint(6) DEFAULT '0',
  `x_3d` double DEFAULT '0',
  `y_3d` double DEFAULT '0',
  `z_3d` double DEFAULT '0',
  PRIMARY KEY (`host_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`),
  KEY `host_object_id` (`host_object_id`),
  KEY `hosts_i_id_idx` (`instance_id`),
  KEY `hosts_host_object_id_idx` (`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Host definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hosts`
--

LOCK TABLES `icinga_hosts` WRITE;
/*!40000 ALTER TABLE `icinga_hosts` DISABLE KEYS */;
INSERT INTO `icinga_hosts` VALUES (1,1,1,67,'ip-10-0-0-210','ip-10-0-0-210','127.0.0.1','::1',16,'',0,NULL,0,0,'',1,0.5,3,0,30,0,0,1,1,1,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0),(2,1,1,86,'icinga2','icinga2','127.0.0.1','::1',16,'',0,NULL,0,0,'',1,0.5,3,0,30,0,0,1,1,1,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0),(3,1,1,107,'www.google.com','www.google.com','74.125.136.84','',25,'',0,NULL,0,0,'',5,1,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,30,30,1,1,300,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0),(4,1,1,112,'docker-apache2','docker-apache2','127.0.0.1','',25,'',0,NULL,0,0,'',5,1,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,30,30,1,1,300,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0),(5,1,1,116,'docker-mysql','docker-mysql','127.0.0.1','',30,'',0,NULL,0,0,'',5,1,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,30,30,1,1,300,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `icinga_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hoststatus`
--

DROP TABLE IF EXISTS `icinga_hoststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hoststatus` (
  `hoststatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `check_source` text,
  `current_state` smallint(6) DEFAULT '0',
  `has_been_checked` smallint(6) DEFAULT '0',
  `should_be_scheduled` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_type` smallint(6) DEFAULT '0',
  `last_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state` smallint(6) DEFAULT '0',
  `last_time_up` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_down` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_unreachable` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_type` smallint(6) DEFAULT '0',
  `last_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_more_notifications` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `problem_has_been_acknowledged` smallint(6) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `current_notification_number` smallint(6) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `is_flapping` smallint(6) DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `scheduled_downtime_depth` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_host` smallint(6) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `original_attributes` text,
  `event_handler` text,
  `check_command` text,
  `normal_check_interval` double DEFAULT '0',
  `retry_check_interval` double DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `is_reachable` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hoststatus_id`),
  UNIQUE KEY `object_id` (`host_object_id`),
  KEY `hoststatus_i_id_idx` (`instance_id`),
  KEY `hoststatus_stat_upd_time_idx` (`status_update_time`),
  KEY `hoststatus_current_state_idx` (`current_state`),
  KEY `hoststatus_check_type_idx` (`check_type`),
  KEY `hoststatus_state_type_idx` (`state_type`),
  KEY `hoststatus_last_state_chg_idx` (`last_state_change`),
  KEY `hoststatus_notif_enabled_idx` (`notifications_enabled`),
  KEY `hoststatus_problem_ack_idx` (`problem_has_been_acknowledged`),
  KEY `hoststatus_act_chks_en_idx` (`active_checks_enabled`),
  KEY `hoststatus_pas_chks_en_idx` (`passive_checks_enabled`),
  KEY `hoststatus_event_hdl_en_idx` (`event_handler_enabled`),
  KEY `hoststatus_flap_det_en_idx` (`flap_detection_enabled`),
  KEY `hoststatus_is_flapping_idx` (`is_flapping`),
  KEY `hoststatus_p_state_chg_idx` (`percent_state_change`),
  KEY `hoststatus_latency_idx` (`latency`),
  KEY `hoststatus_ex_time_idx` (`execution_time`),
  KEY `hoststatus_sch_downt_d_idx` (`scheduled_downtime_depth`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Current host status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hoststatus`
--

LOCK TABLES `icinga_hoststatus` WRITE;
/*!40000 ALTER TABLE `icinga_hoststatus` DISABLE KEYS */;
INSERT INTO `icinga_hoststatus` VALUES (1,1,67,'2016-05-14 21:32:34','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.037000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','ip-10-0-0-210',0,1,1,1,3,'2016-05-14 21:32:34','2016-05-14 21:33:30',0,'2016-05-14 21:02:06','2016-05-14 21:02:06',0,'2016-05-14 21:32:34','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,4.001132965087891,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,1),(2,1,86,'2016-05-16 18:01:31','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.049000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','icinga2',0,1,1,1,3,'2016-05-16 18:01:31','2016-05-16 18:02:27',0,'2016-05-14 21:33:09','2016-05-14 21:33:09',0,'2016-05-16 18:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,4.001871109008789,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,82),(3,1,107,'2016-05-16 00:55:10','HTTP OK: HTTP/1.1 301 Moved Permanently - 662 bytes in 0.410 second response time ','','time=0.410339s;;;0.000000 size=662B;;;0','icinga2',0,1,1,1,3,'2016-05-16 00:51:01','2016-05-16 00:56:00',0,'2016-05-14 23:31:14','2016-05-14 23:31:14',0,'2016-05-16 00:51:01','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,0.41153979301452637,0,0,1,0,0,'null','','http',5,1,0,1,82),(4,1,112,'2016-05-16 17:57:49','HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.001 second response time ','','time=0.000880s;;;0.000000 size=11783B;;;0','icinga2',0,1,1,1,3,'2016-05-16 17:57:49','2016-05-16 18:02:49',0,'2016-05-16 15:22:47','2016-05-16 15:22:47',0,'2016-05-16 17:57:49','2016-05-16 15:20:45','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,0.0026290416717529297,0,0,1,0,0,'null','','http',5,1,0,1,82),(5,1,116,'2016-05-16 17:57:49','Uptime: 9314  Threads: 1  Questions: 103  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.011','','Connections=39c;;; Open_files=18;;; Open_tables=26;;; Qcache_free_memory=16759696;;; Qcache_hits=0c;;; Qcache_inserts=0c;;; Qcache_lowmem_prunes=0c;;; Qcache_not_cached=1c;;; Qcache_queries_in_cache=0;;; Queries=104c;;; Questions=65c;;; Table_locks_waited=0c;;; Threads_connected=1;;; Threads_running=1;;; Uptime=9314c;;;','icinga2',0,1,1,1,3,'2016-05-16 17:57:49','2016-05-16 18:02:49',0,'2016-05-16 15:25:09','2016-05-16 15:25:09',0,'2016-05-16 17:57:49','2016-05-16 15:24:21','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,0.005384922027587891,0,0,1,0,0,'null','','mysql',5,1,0,1,82);
/*!40000 ALTER TABLE `icinga_hoststatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_instances`
--

DROP TABLE IF EXISTS `icinga_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_instances` (
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(64) DEFAULT '',
  `instance_description` varchar(128) DEFAULT '',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Location names of various Icinga installations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_instances`
--

LOCK TABLES `icinga_instances` WRITE;
/*!40000 ALTER TABLE `icinga_instances` DISABLE KEYS */;
INSERT INTO `icinga_instances` VALUES (1,'default','');
/*!40000 ALTER TABLE `icinga_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_logentries`
--

DROP TABLE IF EXISTS `icinga_logentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_logentries` (
  `logentry_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `logentry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `logentry_type` int(11) DEFAULT '0',
  `logentry_data` text,
  `realtime_data` smallint(6) DEFAULT '0',
  `inferred_data_extracted` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`logentry_id`),
  KEY `loge_time_idx` (`logentry_time`),
  KEY `loge_inst_id_time_idx` (`instance_id`,`logentry_time`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 COMMENT='Historical record of log entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_logentries`
--

LOCK TABLES `icinga_logentries` WRITE;
/*!40000 ALTER TABLE `icinga_logentries` DISABLE KEYS */;
INSERT INTO `icinga_logentries` VALUES (1,1,'2016-05-14 21:31:24','2016-05-14 21:31:24',54471,524288,'SERVICE NOTIFICATION: icingaadmin;ip-10-0-0-210;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,70,1),(2,1,'2016-05-14 22:03:04','2016-05-14 22:03:04',589884,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(3,1,'2016-05-14 22:33:09','2016-05-14 22:33:09',256958,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(4,1,'2016-05-14 23:03:13','2016-05-14 23:03:13',396909,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(5,1,'2016-05-14 23:31:14','2016-05-14 23:31:14',260371,1024,'HOST ALERT: www.google.com;UP;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 662 bytes in 0.418 second response time ',0,0,107,82),(6,1,'2016-05-14 23:31:18','2016-05-14 23:31:18',8357,8192,'SERVICE ALERT: www.google.com;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 87.41 ms',0,0,109,82),(7,1,'2016-05-14 23:31:28','2016-05-14 23:31:28',762298,8192,'SERVICE ALERT: icinga2;Icinga Web 2;OK;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ',0,0,108,82),(8,1,'2016-05-14 23:33:16','2016-05-14 23:33:16',697913,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(9,1,'2016-05-14 23:35:53','2016-05-14 23:35:53',29721,1024,'HOST ALERT: docker-apache2;UP;HARD;1;HTTP OK: HTTP/1.1 200 OK - 262 bytes in 0.001 second response time ',0,0,112,82),(10,1,'2016-05-14 23:36:19','2016-05-14 23:36:19',781528,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(11,1,'2016-05-14 23:37:49','2016-05-14 23:37:49',502033,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(12,1,'2016-05-14 23:38:11','2016-05-14 23:38:11',612724,2048,'HOST ALERT: docker-mysql;DOWN;HARD;1;Lost connection to MySQL server at \'reading initial communication packet\', system error: 0',0,0,116,82),(13,1,'2016-05-14 23:38:49','2016-05-14 23:38:49',501544,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(14,1,'2016-05-14 23:57:23','2016-05-14 23:57:23',225347,1024,'HOST ALERT: docker-mysql;UP;HARD;1;Uptime: 298  Threads: 1  Questions: 38  Slow queries: 0  Opens: 48  Flush tables: 1  Open tables: 41  Queries per second avg: 0.127',0,0,116,82),(15,1,'2016-05-14 23:57:36','2016-05-14 23:57:36',133627,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(16,1,'2016-05-15 00:03:18','2016-05-15 00:03:18',793927,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(17,1,'2016-05-15 00:33:22','2016-05-15 00:33:22',983299,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(18,1,'2016-05-15 21:00:28','2016-05-15 21:00:28',591911,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;1;Connection refused',0,0,112,82),(19,1,'2016-05-15 21:00:28','2016-05-15 21:00:28',592884,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(20,1,'2016-05-15 21:01:28','2016-05-15 21:01:28',592140,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;2;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(21,1,'2016-05-15 21:01:28','2016-05-15 21:01:28',592585,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;2;Connection refused',0,0,112,82),(22,1,'2016-05-15 21:02:28','2016-05-15 21:02:28',592422,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;3;Connection refused',0,0,112,82),(23,1,'2016-05-15 21:02:28','2016-05-15 21:02:28',592808,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;3;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(24,1,'2016-05-15 21:03:28','2016-05-15 21:03:28',592657,2048,'HOST ALERT: docker-apache2;DOWN;HARD;1;Connection refused',0,0,112,82),(25,1,'2016-05-15 21:03:28','2016-05-15 21:03:28',593168,2048,'HOST ALERT: docker-mysql;DOWN;HARD;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(26,1,'2016-05-15 21:03:39','2016-05-15 21:03:39',938791,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(27,1,'2016-05-15 21:04:28','2016-05-15 21:04:28',134794,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(28,1,'2016-05-16 00:55:14','2016-05-16 00:55:14',322314,8192,'SERVICE ALERT: icinga2;Icinga Web 2;OK;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ',0,0,108,82),(29,1,'2016-05-16 00:55:14','2016-05-16 00:55:14',326272,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;Icinga Web 2;RECOVERY (OK);http;HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ',0,0,108,82),(30,1,'2016-05-16 00:56:27','2016-05-16 00:56:27',735110,1024,'HOST ALERT: docker-apache2;UP;HARD;1;HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.001 second response time ',0,0,112,82),(31,1,'2016-05-16 00:56:49','2016-05-16 00:56:49',390753,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(32,1,'2016-05-16 00:58:47','2016-05-16 00:58:47',340277,1024,'HOST ALERT: docker-mysql;UP;HARD;1;Uptime: 74  Threads: 1  Questions: 16  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.216',0,0,116,82),(33,1,'2016-05-16 00:59:22','2016-05-16 00:59:22',618828,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(34,1,'2016-05-16 00:59:32','2016-05-16 00:59:32',791249,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(35,1,'2016-05-16 01:29:37','2016-05-16 01:29:37',476851,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(36,1,'2016-05-16 01:59:41','2016-05-16 01:59:41',636790,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(37,1,'2016-05-16 02:00:18','2016-05-16 02:00:18',320625,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;load;DOWNTIMESTART (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,95,82),(38,1,'2016-05-16 02:29:45','2016-05-16 02:29:45',974241,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(39,1,'2016-05-16 02:59:50','2016-05-16 02:59:50',444833,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(40,1,'2016-05-16 03:00:18','2016-05-16 03:00:18',320703,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;load;DOWNTIMEEND (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,95,82),(41,1,'2016-05-16 03:29:54','2016-05-16 03:29:54',555727,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(42,1,'2016-05-16 03:40:45','2016-05-16 03:40:45',391814,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;1;Connection refused',0,0,112,82),(43,1,'2016-05-16 03:41:18','2016-05-16 03:41:18',622165,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(44,1,'2016-05-16 03:41:45','2016-05-16 03:41:45',391938,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;2;Connection refused',0,0,112,82),(45,1,'2016-05-16 03:42:18','2016-05-16 03:42:18',622291,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;2;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(46,1,'2016-05-16 03:42:45','2016-05-16 03:42:45',392400,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;3;Connection refused',0,0,112,82),(47,1,'2016-05-16 03:43:18','2016-05-16 03:43:18',622693,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;3;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(48,1,'2016-05-16 03:43:45','2016-05-16 03:43:45',392302,2048,'HOST ALERT: docker-apache2;DOWN;HARD;1;Connection refused',0,0,112,82),(49,1,'2016-05-16 03:43:49','2016-05-16 03:43:49',390815,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(50,1,'2016-05-16 03:44:18','2016-05-16 03:44:18',622024,2048,'HOST ALERT: docker-mysql;DOWN;HARD;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(51,1,'2016-05-16 03:44:22','2016-05-16 03:44:22',618788,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(52,1,'2016-05-16 03:59:59','2016-05-16 03:59:59',247467,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(53,1,'2016-05-16 04:30:03','2016-05-16 04:30:03',200658,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(54,1,'2016-05-16 05:00:07','2016-05-16 05:00:07',931359,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(55,1,'2016-05-16 05:30:12','2016-05-16 05:30:12',603300,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(56,1,'2016-05-16 06:00:16','2016-05-16 06:00:16',979454,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(57,1,'2016-05-16 06:30:21','2016-05-16 06:30:21',627459,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(58,1,'2016-05-16 07:00:26','2016-05-16 07:00:26',126666,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(59,1,'2016-05-16 07:30:30','2016-05-16 07:30:30',630336,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(60,1,'2016-05-16 08:00:34','2016-05-16 08:00:34',947454,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(61,1,'2016-05-16 08:30:39','2016-05-16 08:30:39',643342,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(62,1,'2016-05-16 09:00:43','2016-05-16 09:00:43',469723,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(63,1,'2016-05-16 09:30:48','2016-05-16 09:30:48',287467,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(64,1,'2016-05-16 10:00:52','2016-05-16 10:00:52',563602,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(65,1,'2016-05-16 10:30:56','2016-05-16 10:30:56',901439,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(66,1,'2016-05-16 11:01:01','2016-05-16 11:01:01',423437,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(67,1,'2016-05-16 11:31:06','2016-05-16 11:31:06',206864,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(68,1,'2016-05-16 15:06:25','2016-05-16 15:06:25',53558,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(69,1,'2016-05-16 15:22:47','2016-05-16 15:22:47',926986,1024,'HOST ALERT: docker-apache2;UP;HARD;1;HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.002 second response time ',0,0,112,82),(70,1,'2016-05-16 15:23:41','2016-05-16 15:23:41',668919,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.05 ms',0,0,113,82),(71,1,'2016-05-16 15:25:09','2016-05-16 15:25:09',656284,1024,'HOST ALERT: docker-mysql;UP;HARD;1;Uptime: 154  Threads: 1  Questions: 10  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.064',0,0,116,82),(72,1,'2016-05-16 15:25:54','2016-05-16 15:25:54',200874,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.05 ms',0,0,117,82),(73,1,'2016-05-16 15:36:25','2016-05-16 15:36:25',515090,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(74,1,'2016-05-16 16:06:29','2016-05-16 16:06:29',969587,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(75,1,'2016-05-16 16:36:34','2016-05-16 16:36:34',389640,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(76,1,'2016-05-16 17:06:38','2016-05-16 17:06:38',588300,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(77,1,'2016-05-16 17:36:43','2016-05-16 17:36:43',373750,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82);
/*!40000 ALTER TABLE `icinga_logentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notifications`
--

DROP TABLE IF EXISTS `icinga_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notifications` (
  `notification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `notification_type` smallint(6) DEFAULT '0',
  `notification_reason` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `escalated` smallint(6) DEFAULT '0',
  `contacts_notified` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`start_time`,`start_time_usec`),
  KEY `notification_idx` (`notification_type`,`object_id`,`start_time`),
  KEY `notification_object_id_idx` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COMMENT='Historical record of host and service notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notifications`
--

LOCK TABLES `icinga_notifications` WRITE;
/*!40000 ALTER TABLE `icinga_notifications` DISABLE KEYS */;
INSERT INTO `icinga_notifications` VALUES (1,1,1,0,70,'2016-05-14 21:31:24',49138,'2016-05-14 21:31:24',49138,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,1),(2,1,1,0,87,'2016-05-14 22:03:04',588375,'2016-05-14 22:03:04',588375,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(3,1,1,0,87,'2016-05-14 22:33:09',251579,'2016-05-14 22:33:09',251579,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(4,1,1,0,87,'2016-05-14 23:03:13',388420,'2016-05-14 23:03:13',388420,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(5,1,1,0,87,'2016-05-14 23:33:16',694267,'2016-05-14 23:33:16',694267,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(6,1,1,0,87,'2016-05-15 00:03:18',791244,'2016-05-15 00:03:18',791244,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(7,1,1,0,87,'2016-05-15 00:33:22',982095,'2016-05-15 00:33:22',982095,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(8,1,1,0,108,'2016-05-16 00:55:14',322529,'2016-05-16 00:55:14',322529,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','',0,1,82),(9,1,1,0,87,'2016-05-16 00:59:32',786437,'2016-05-16 00:59:32',786437,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(10,1,1,0,87,'2016-05-16 01:29:37',466902,'2016-05-16 01:29:37',466902,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(11,1,1,0,87,'2016-05-16 01:59:41',620251,'2016-05-16 01:59:41',620251,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(12,1,1,5,95,'2016-05-16 02:00:18',312005,'2016-05-16 02:00:18',312005,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,82),(13,1,1,0,87,'2016-05-16 02:29:45',973594,'2016-05-16 02:29:45',973594,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(14,1,1,0,87,'2016-05-16 02:59:50',436490,'2016-05-16 02:59:50',436490,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(15,1,1,6,95,'2016-05-16 03:00:18',312011,'2016-05-16 03:00:18',312011,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,82),(16,1,1,0,87,'2016-05-16 03:29:54',554383,'2016-05-16 03:29:54',554383,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(17,1,1,0,87,'2016-05-16 03:59:59',244230,'2016-05-16 03:59:59',244230,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(18,1,1,0,87,'2016-05-16 04:30:03',199098,'2016-05-16 04:30:03',199098,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(19,1,1,0,87,'2016-05-16 05:00:07',930763,'2016-05-16 05:00:07',930763,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(20,1,1,0,87,'2016-05-16 05:30:12',600455,'2016-05-16 05:30:12',600455,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(21,1,1,0,87,'2016-05-16 06:00:16',976023,'2016-05-16 06:00:16',976023,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(22,1,1,0,87,'2016-05-16 06:30:21',622772,'2016-05-16 06:30:21',622772,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(23,1,1,0,87,'2016-05-16 07:00:26',126287,'2016-05-16 07:00:26',126287,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(24,1,1,0,87,'2016-05-16 07:30:30',626333,'2016-05-16 07:30:30',626333,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(25,1,1,0,87,'2016-05-16 08:00:34',944051,'2016-05-16 08:00:34',944051,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(26,1,1,0,87,'2016-05-16 08:30:39',638124,'2016-05-16 08:30:39',638124,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(27,1,1,0,87,'2016-05-16 09:00:43',468277,'2016-05-16 09:00:43',468277,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(28,1,1,0,87,'2016-05-16 09:30:48',284162,'2016-05-16 09:30:48',284162,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(29,1,1,0,87,'2016-05-16 10:00:52',562025,'2016-05-16 10:00:52',562025,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(30,1,1,0,87,'2016-05-16 10:30:56',901103,'2016-05-16 10:30:56',901103,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(31,1,1,0,87,'2016-05-16 11:01:01',421102,'2016-05-16 11:01:01',421102,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(32,1,1,0,87,'2016-05-16 11:31:06',205142,'2016-05-16 11:31:06',205142,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(33,1,1,0,87,'2016-05-16 15:06:25',51589,'2016-05-16 15:06:25',51589,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(34,1,1,0,87,'2016-05-16 15:36:25',513551,'2016-05-16 15:36:25',513551,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(35,1,1,0,87,'2016-05-16 16:06:29',963624,'2016-05-16 16:06:29',963624,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(36,1,1,0,87,'2016-05-16 16:36:34',384624,'2016-05-16 16:36:34',384624,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(37,1,1,0,87,'2016-05-16 17:06:38',587899,'2016-05-16 17:06:38',587899,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(38,1,1,0,87,'2016-05-16 17:36:43',373392,'2016-05-16 17:36:43',373392,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82);
/*!40000 ALTER TABLE `icinga_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_objects`
--

DROP TABLE IF EXISTS `icinga_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_objects` (
  `object_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `objecttype_id` bigint(20) unsigned DEFAULT '0',
  `name1` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `name2` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `is_active` smallint(6) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `objecttype_id` (`objecttype_id`,`name1`,`name2`),
  KEY `objects_objtype_id_idx` (`objecttype_id`),
  KEY `objects_name1_idx` (`name1`),
  KEY `objects_name2_idx` (`name2`),
  KEY `objects_inst_id_idx` (`instance_id`),
  KEY `sla_idx_obj` (`objecttype_id`,`is_active`,`name1`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1 COMMENT='Current and historical objects of all kinds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_objects`
--

LOCK TABLES `icinga_objects` WRITE;
/*!40000 ALTER TABLE `icinga_objects` DISABLE KEYS */;
INSERT INTO `icinga_objects` VALUES (1,1,13,'ip-10-0-0-210',NULL,0),(2,1,14,'ip-10-0-0-210',NULL,0),(3,1,12,'check_by_ssh',NULL,1),(4,1,12,'check_clamd',NULL,1),(5,1,12,'check_cluster',NULL,1),(6,1,12,'check_cluster-zone',NULL,1),(7,1,12,'check_dhcp',NULL,1),(8,1,12,'check_dig',NULL,1),(9,1,12,'check_disk',NULL,1),(10,1,12,'check_apt',NULL,1),(11,1,12,'check_disk_smb',NULL,1),(12,1,12,'check_dummy',NULL,1),(13,1,12,'check_dns',NULL,1),(14,1,12,'check_fping4',NULL,1),(15,1,12,'check_fping6',NULL,1),(16,1,12,'check_hostalive',NULL,1),(17,1,12,'check_ftp',NULL,1),(18,1,12,'check_hostalive4',NULL,1),(19,1,12,'check_hpjd',NULL,1),(20,1,12,'check_hostalive6',NULL,1),(21,1,12,'check_icinga',NULL,1),(22,1,12,'check_icmp',NULL,1),(23,1,12,'check_ido',NULL,1),(24,1,12,'check_imap',NULL,1),(25,1,12,'check_http',NULL,1),(26,1,12,'check_ldap',NULL,1),(27,1,12,'check_load',NULL,1),(28,1,12,'check_mailq',NULL,1),(29,1,12,'check_negate',NULL,1),(30,1,12,'check_mysql',NULL,1),(31,1,12,'check_nrpe',NULL,1),(32,1,12,'check_nscp',NULL,1),(33,1,12,'check_ntp_time',NULL,1),(34,1,12,'check_ntp_peer',NULL,1),(35,1,12,'check_passive',NULL,1),(36,1,12,'check_pgsql',NULL,1),(37,1,12,'check_ping',NULL,1),(38,1,12,'check_ping4',NULL,1),(39,1,12,'check_pop',NULL,1),(40,1,12,'check_procs',NULL,1),(41,1,12,'check_random',NULL,1),(42,1,12,'check_simap',NULL,1),(43,1,12,'check_smtp',NULL,1),(44,1,12,'check_snmp',NULL,1),(45,1,12,'check_snmp-uptime',NULL,1),(46,1,12,'check_snmpv3',NULL,1),(47,1,12,'check_spop',NULL,1),(48,1,12,'check_ssh',NULL,1),(49,1,12,'check_ssl',NULL,1),(50,1,12,'check_ssmtp',NULL,1),(51,1,12,'check_swap',NULL,1),(52,1,12,'check_tcp',NULL,1),(53,1,12,'check_udp',NULL,1),(54,1,12,'check_ups',NULL,1),(55,1,12,'check_users',NULL,1),(56,1,12,'check_ping6',NULL,1),(57,1,12,'notification_mail-host-notification',NULL,0),(58,1,12,'notification_mail-service-notification',NULL,0),(59,1,9,'24x7',NULL,1),(60,1,9,'9to5',NULL,1),(61,1,9,'never',NULL,1),(62,1,3,'linux-servers',NULL,1),(63,1,3,'windows-servers',NULL,1),(64,1,4,'disk',NULL,1),(65,1,4,'http',NULL,1),(66,1,4,'ping',NULL,1),(67,1,1,'ip-10-0-0-210',NULL,0),(68,1,10,'icingaadmin',NULL,1),(69,1,11,'icingaadmins',NULL,1),(70,1,2,'ip-10-0-0-210','apt',0),(71,1,2,'ip-10-0-0-210','ping4',0),(72,1,2,'ip-10-0-0-210','ping6',0),(73,1,2,'ip-10-0-0-210','ssh',0),(74,1,2,'ip-10-0-0-210','http',0),(75,1,2,'ip-10-0-0-210','disk',0),(76,1,2,'ip-10-0-0-210','disk /',0),(77,1,2,'ip-10-0-0-210','icinga',0),(78,1,2,'ip-10-0-0-210','load',0),(79,1,2,'ip-10-0-0-210','procs',0),(80,1,2,'ip-10-0-0-210','swap',0),(81,1,2,'ip-10-0-0-210','users',0),(82,1,13,'icinga2',NULL,1),(83,1,14,'icinga2',NULL,1),(84,1,12,'notification_mail-host-notification',NULL,0),(85,1,12,'notification_mail-service-notification',NULL,0),(86,1,1,'icinga2',NULL,1),(87,1,2,'icinga2','apt',1),(88,1,2,'icinga2','ping4',1),(89,1,2,'icinga2','ping6',1),(90,1,2,'icinga2','ssh',1),(91,1,2,'icinga2','http',1),(92,1,2,'icinga2','disk',1),(93,1,2,'icinga2','disk /',1),(94,1,2,'icinga2','icinga',1),(95,1,2,'icinga2','load',1),(96,1,2,'icinga2','procs',1),(97,1,2,'icinga2','swap',1),(98,1,2,'icinga2','users',1),(99,1,12,'notification_mail-host-notification',NULL,0),(100,1,12,'notification_mail-service-notification',NULL,0),(101,1,12,'notification_mail-host-notification',NULL,0),(102,1,12,'notification_mail-service-notification',NULL,0),(103,1,12,'notification_mail-host-notification',NULL,0),(104,1,12,'notification_mail-service-notification',NULL,0),(105,1,12,'notification_mail-host-notification',NULL,0),(106,1,12,'notification_mail-service-notification',NULL,0),(107,1,1,'www.google.com',NULL,0),(108,1,2,'icinga2','Icinga Web 2',1),(109,1,2,'www.google.com','ping4',0),(110,1,12,'notification_mail-host-notification',NULL,0),(111,1,12,'notification_mail-service-notification',NULL,0),(112,1,1,'docker-apache2',NULL,1),(113,1,2,'docker-apache2','ping4',1),(114,1,12,'notification_mail-host-notification',NULL,0),(115,1,12,'notification_mail-service-notification',NULL,0),(116,1,1,'docker-mysql',NULL,1),(117,1,2,'docker-mysql','ping4',1),(118,1,12,'notification_mail-host-notification',NULL,0),(119,1,12,'notification_mail-service-notification',NULL,0),(120,1,12,'notification_mail-host-notification',NULL,0),(121,1,12,'notification_mail-service-notification',NULL,0),(122,1,12,'notification_mail-host-notification',NULL,0),(123,1,12,'notification_mail-service-notification',NULL,0),(124,1,12,'notification_mail-host-notification',NULL,0),(125,1,12,'notification_mail-service-notification',NULL,0),(126,1,12,'notification_mail-host-notification',NULL,0),(127,1,12,'notification_mail-service-notification',NULL,0),(128,1,12,'notification_mail-host-notification',NULL,0),(129,1,12,'notification_mail-service-notification',NULL,0),(130,1,12,'notification_mail-host-notification',NULL,0),(131,1,12,'notification_mail-service-notification',NULL,0),(132,1,12,'notification_mail-host-notification',NULL,0),(133,1,12,'notification_mail-service-notification',NULL,0),(134,1,12,'notification_mail-host-notification',NULL,1),(135,1,12,'notification_mail-service-notification',NULL,1);
/*!40000 ALTER TABLE `icinga_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_processevents`
--

DROP TABLE IF EXISTS `icinga_processevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_processevents` (
  `processevent_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `event_type` smallint(6) DEFAULT '0',
  `event_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_time_usec` int(11) DEFAULT '0',
  `process_id` bigint(20) unsigned DEFAULT '0',
  `program_name` varchar(16) DEFAULT '',
  `program_version` varchar(20) DEFAULT '',
  `program_date` varchar(10) DEFAULT '',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`processevent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical Icinga process events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_processevents`
--

LOCK TABLES `icinga_processevents` WRITE;
/*!40000 ALTER TABLE `icinga_processevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_processevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_programstatus`
--

DROP TABLE IF EXISTS `icinga_programstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_programstatus` (
  `programstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `program_version` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `program_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `program_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endpoint_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `is_currently_running` smallint(6) DEFAULT '0',
  `process_id` bigint(20) unsigned DEFAULT '0',
  `daemon_mode` smallint(6) DEFAULT '0',
  `last_command_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_log_rotation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `disable_notif_expire_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_service_checks_enabled` smallint(6) DEFAULT '0',
  `passive_service_checks_enabled` smallint(6) DEFAULT '0',
  `active_host_checks_enabled` smallint(6) DEFAULT '0',
  `passive_host_checks_enabled` smallint(6) DEFAULT '0',
  `event_handlers_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_hosts` smallint(6) DEFAULT '0',
  `obsess_over_services` smallint(6) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `global_host_event_handler` text,
  `global_service_event_handler` text,
  `config_dump_in_progress` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`programstatus_id`),
  UNIQUE KEY `instance_id` (`instance_id`),
  KEY `programstatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6628 DEFAULT CHARSET=latin1 COMMENT='Current program status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_programstatus`
--

LOCK TABLES `icinga_programstatus` WRITE;
/*!40000 ALTER TABLE `icinga_programstatus` DISABLE KEYS */;
INSERT INTO `icinga_programstatus` VALUES (6627,1,'r2.4.7-1','2016-05-16 18:02:23','2016-05-16 15:25:05','0000-00-00 00:00:00','icinga2',1,4701,1,'2016-05-16 18:02:23','0000-00-00 00:00:00',1,'0000-00-00 00:00:00',1,1,1,1,1,1,0,1,0,0,0,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `icinga_programstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_runtimevariables`
--

DROP TABLE IF EXISTS `icinga_runtimevariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_runtimevariables` (
  `runtimevariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `varname` varchar(64) DEFAULT '',
  `varvalue` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`runtimevariable_id`),
  KEY `runtimevariables_i_id_idx` (`instance_id`),
  KEY `runtimevars_iid_varn` (`instance_id`,`varname`)
) ENGINE=InnoDB AUTO_INCREMENT=26509 DEFAULT CHARSET=latin1 COMMENT='Runtime variables from the Icinga daemon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_runtimevariables`
--

LOCK TABLES `icinga_runtimevariables` WRITE;
/*!40000 ALTER TABLE `icinga_runtimevariables` DISABLE KEYS */;
INSERT INTO `icinga_runtimevariables` VALUES (26505,1,'total_services','15',NULL),(26506,1,'total_scheduled_services','15',NULL),(26507,1,'total_hosts','3',NULL),(26508,1,'total_scheduled_hosts','3',NULL);
/*!40000 ALTER TABLE `icinga_runtimevariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_scheduleddowntime`
--

DROP TABLE IF EXISTS `icinga_scheduleddowntime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_scheduleddowntime` (
  `scheduleddowntime_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `downtime_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `internal_downtime_id` bigint(20) unsigned DEFAULT '0',
  `triggered_by_id` bigint(20) unsigned DEFAULT '0',
  `is_fixed` smallint(6) DEFAULT '0',
  `duration` bigint(20) DEFAULT '0',
  `scheduled_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `was_started` smallint(6) DEFAULT '0',
  `actual_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_start_time_usec` int(11) DEFAULT '0',
  `is_in_effect` smallint(6) DEFAULT '0',
  `trigger_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`scheduleddowntime_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`entry_time`,`internal_downtime_id`),
  KEY `scheduleddowntime_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COMMENT='Current scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_scheduleddowntime`
--

LOCK TABLES `icinga_scheduleddowntime` WRITE;
/*!40000 ALTER TABLE `icinga_scheduleddowntime` DISABLE KEYS */;
INSERT INTO `icinga_scheduleddowntime` VALUES (1,1,1,78,'2016-05-14 20:57:31','icingaadmin','Scheduled downtime for backup',1,0,1,0,'2016-05-15 02:00:00','2016-05-15 03:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0',1),(26,1,1,95,'2016-05-16 02:00:37','icingaadmin','Scheduled downtime for backup',3,0,1,0,'2016-05-17 02:00:00','2016-05-17 03:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga2!load!ip-10-0-0-210-1463364037-0',82),(27,1,1,95,'2016-05-14 21:32:55','icingaadmin','Scheduled downtime for backup',1,0,1,0,'2016-05-15 02:00:00','2016-05-15 03:00:00',1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga2!load!icinga2-1463261575-0',82),(28,1,1,95,'2016-05-15 20:58:52','icingaadmin','Scheduled downtime for backup',2,0,1,0,'2016-05-16 02:00:00','2016-05-16 03:00:00',1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga2!load!ip-10-0-0-210-1463345932-0',82);
/*!40000 ALTER TABLE `icinga_scheduleddowntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_contactgroups`
--

DROP TABLE IF EXISTS `icinga_service_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_contactgroups` (
  `service_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`service_contactgroup_id`),
  KEY `service_contactgroups_i_id_idx` (`instance_id`),
  KEY `scgrps_sid_cgoid` (`service_id`,`contactgroup_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1 COMMENT='Service contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contactgroups`
--

LOCK TABLES `icinga_service_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_service_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_service_contactgroups` VALUES (204,1,13,69),(205,1,14,69),(206,1,15,69),(207,1,16,69),(208,1,17,69),(209,1,18,69),(210,1,19,69),(211,1,20,69),(212,1,21,69),(213,1,22,69),(214,1,23,69),(215,1,24,69),(216,1,25,69);
/*!40000 ALTER TABLE `icinga_service_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_contacts`
--

DROP TABLE IF EXISTS `icinga_service_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_contacts` (
  `service_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`service_contact_id`),
  KEY `service_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1 COMMENT='Service contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contacts`
--

LOCK TABLES `icinga_service_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_service_contacts` DISABLE KEYS */;
INSERT INTO `icinga_service_contacts` VALUES (204,1,13,68),(205,1,14,68),(206,1,15,68),(207,1,16,68),(208,1,17,68),(209,1,18,68),(210,1,19,68),(211,1,20,68),(212,1,21,68),(213,1,22,68),(214,1,23,68),(215,1,24,68),(216,1,25,68);
/*!40000 ALTER TABLE `icinga_service_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicechecks`
--

DROP TABLE IF EXISTS `icinga_servicechecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicechecks` (
  `servicecheck_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `check_type` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`servicecheck_id`),
  KEY `servicechecks_i_id_idx` (`instance_id`),
  KEY `servicechecks_time_id_idx` (`start_time`),
  KEY `servicechks_s_obj_id_idx` (`service_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical service checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicechecks`
--

LOCK TABLES `icinga_servicechecks` WRITE;
/*!40000 ALTER TABLE `icinga_servicechecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicechecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicedependencies`
--

DROP TABLE IF EXISTS `icinga_servicedependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicedependencies` (
  `servicedependency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `dependent_service_object_id` bigint(20) unsigned DEFAULT '0',
  `dependency_type` smallint(6) DEFAULT '0',
  `inherits_parent` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `fail_on_ok` smallint(6) DEFAULT '0',
  `fail_on_warning` smallint(6) DEFAULT '0',
  `fail_on_unknown` smallint(6) DEFAULT '0',
  `fail_on_critical` smallint(6) DEFAULT '0',
  PRIMARY KEY (`servicedependency_id`),
  KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`,`dependent_service_object_id`,`dependency_type`,`inherits_parent`,`fail_on_ok`,`fail_on_warning`,`fail_on_unknown`,`fail_on_critical`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service dependency definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicedependencies`
--

LOCK TABLES `icinga_servicedependencies` WRITE;
/*!40000 ALTER TABLE `icinga_servicedependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicedependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalation_contactgroups`
--

DROP TABLE IF EXISTS `icinga_serviceescalation_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalation_contactgroups` (
  `serviceescalation_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `serviceescalation_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`serviceescalation_contactgroup_id`),
  UNIQUE KEY `instance_id` (`serviceescalation_id`,`contactgroup_object_id`),
  KEY `serviceesc_cgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalation_contactgroups`
--

LOCK TABLES `icinga_serviceescalation_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalation_contactgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalation_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalation_contacts`
--

DROP TABLE IF EXISTS `icinga_serviceescalation_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalation_contacts` (
  `serviceescalation_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `serviceescalation_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`serviceescalation_contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`serviceescalation_id`,`contact_object_id`),
  KEY `serviceesc_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalation_contacts`
--

LOCK TABLES `icinga_serviceescalation_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalation_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalation_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalations`
--

DROP TABLE IF EXISTS `icinga_serviceescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalations` (
  `serviceescalation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `first_notification` smallint(6) DEFAULT '0',
  `last_notification` smallint(6) DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `escalate_on_recovery` smallint(6) DEFAULT '0',
  `escalate_on_warning` smallint(6) DEFAULT '0',
  `escalate_on_unknown` smallint(6) DEFAULT '0',
  `escalate_on_critical` smallint(6) DEFAULT '0',
  PRIMARY KEY (`serviceescalation_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`,`timeperiod_object_id`,`first_notification`,`last_notification`),
  KEY `serviceesc_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalations`
--

LOCK TABLES `icinga_serviceescalations` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroup_members`
--

DROP TABLE IF EXISTS `icinga_servicegroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroup_members` (
  `servicegroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `servicegroup_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`servicegroup_member_id`),
  KEY `servicegroup_members_i_id_idx` (`instance_id`),
  KEY `sgmbrs_sgid_soid` (`servicegroup_id`,`service_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1 COMMENT='Servicegroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup_members`
--

LOCK TABLES `icinga_servicegroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup_members` DISABLE KEYS */;
INSERT INTO `icinga_servicegroup_members` VALUES (119,1,3,88),(120,1,3,89),(121,1,2,91),(122,1,1,92),(123,1,1,93),(124,1,2,108),(125,1,3,113),(126,1,3,117);
/*!40000 ALTER TABLE `icinga_servicegroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroups`
--

DROP TABLE IF EXISTS `icinga_servicegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroups` (
  `servicegroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `servicegroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `notes` text,
  `notes_url` text,
  `action_url` text,
  PRIMARY KEY (`servicegroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`servicegroup_object_id`),
  KEY `servicegroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Servicegroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroups`
--

LOCK TABLES `icinga_servicegroups` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroups` DISABLE KEYS */;
INSERT INTO `icinga_servicegroups` VALUES (1,1,1,64,'Disk Checks','','',''),(2,1,1,65,'HTTP Checks','','',''),(3,1,1,66,'Ping Checks','','','');
/*!40000 ALTER TABLE `icinga_servicegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_services`
--

DROP TABLE IF EXISTS `icinga_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_services` (
  `service_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `check_command_object_id` bigint(20) unsigned DEFAULT '0',
  `check_command_args` text,
  `eventhandler_command_object_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_command_args` text,
  `notification_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `failure_prediction_options` varchar(64) DEFAULT '',
  `check_interval` double DEFAULT '0',
  `retry_interval` double DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `first_notification_delay` double DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `notify_on_warning` smallint(6) DEFAULT '0',
  `notify_on_unknown` smallint(6) DEFAULT '0',
  `notify_on_critical` smallint(6) DEFAULT '0',
  `notify_on_recovery` smallint(6) DEFAULT '0',
  `notify_on_flapping` smallint(6) DEFAULT '0',
  `notify_on_downtime` smallint(6) DEFAULT '0',
  `stalk_on_ok` smallint(6) DEFAULT '0',
  `stalk_on_warning` smallint(6) DEFAULT '0',
  `stalk_on_unknown` smallint(6) DEFAULT '0',
  `stalk_on_critical` smallint(6) DEFAULT '0',
  `is_volatile` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `flap_detection_on_ok` smallint(6) DEFAULT '0',
  `flap_detection_on_warning` smallint(6) DEFAULT '0',
  `flap_detection_on_unknown` smallint(6) DEFAULT '0',
  `flap_detection_on_critical` smallint(6) DEFAULT '0',
  `low_flap_threshold` double DEFAULT '0',
  `high_flap_threshold` double DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `freshness_checks_enabled` smallint(6) DEFAULT '0',
  `freshness_threshold` int(11) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `retain_status_information` smallint(6) DEFAULT '0',
  `retain_nonstatus_information` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `obsess_over_service` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `icon_image` text,
  `icon_image_alt` text,
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`),
  KEY `service_object_id` (`service_object_id`),
  KEY `services_i_id_idx` (`instance_id`),
  KEY `services_host_object_id_idx` (`host_object_id`),
  KEY `services_combined_object_idx` (`service_object_id`,`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COMMENT='Service definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_services`
--

LOCK TABLES `icinga_services` WRITE;
/*!40000 ALTER TABLE `icinga_services` DISABLE KEYS */;
INSERT INTO `icinga_services` VALUES (1,1,1,67,70,'apt',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(2,1,1,67,71,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(3,1,1,67,72,'ping6',56,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(4,1,1,67,73,'ssh',48,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(5,1,1,67,74,'http',25,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(6,1,1,67,75,'disk',9,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(7,1,1,67,76,'disk /',9,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(8,1,1,67,77,'icinga',21,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(9,1,1,67,78,'load',27,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(10,1,1,67,79,'procs',40,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(11,1,1,67,80,'swap',51,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(12,1,1,67,81,'users',55,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(13,1,1,86,87,'apt',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(14,1,1,86,88,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(15,1,1,86,89,'ping6',56,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(16,1,1,86,90,'ssh',48,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(17,1,1,86,91,'http',25,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(18,1,1,86,92,'disk',9,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(19,1,1,86,93,'disk /',9,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(20,1,1,86,94,'icinga',21,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(21,1,1,86,95,'load',27,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(22,1,1,86,96,'procs',40,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(23,1,1,86,97,'swap',51,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(24,1,1,86,98,'users',55,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(25,1,1,86,108,'Icinga Web 2',25,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(26,1,1,107,109,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(27,1,1,112,113,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(28,1,1,116,117,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','');
/*!40000 ALTER TABLE `icinga_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicestatus`
--

DROP TABLE IF EXISTS `icinga_servicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicestatus` (
  `servicestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `check_source` text,
  `current_state` smallint(6) DEFAULT '0',
  `has_been_checked` smallint(6) DEFAULT '0',
  `should_be_scheduled` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_type` smallint(6) DEFAULT '0',
  `last_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state` smallint(6) DEFAULT '0',
  `last_time_ok` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_warning` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_unknown` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_critical` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_type` smallint(6) DEFAULT '0',
  `last_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_more_notifications` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `problem_has_been_acknowledged` smallint(6) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `current_notification_number` smallint(6) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `is_flapping` smallint(6) DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `scheduled_downtime_depth` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_service` smallint(6) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `original_attributes` text,
  `event_handler` text,
  `check_command` text,
  `normal_check_interval` double DEFAULT '0',
  `retry_check_interval` double DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `is_reachable` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`servicestatus_id`),
  UNIQUE KEY `object_id` (`service_object_id`),
  KEY `servicestatus_i_id_idx` (`instance_id`),
  KEY `srvcstatus_stat_upd_time_idx` (`status_update_time`),
  KEY `srvcstatus_current_state_idx` (`current_state`),
  KEY `srvcstatus_check_type_idx` (`check_type`),
  KEY `srvcstatus_state_type_idx` (`state_type`),
  KEY `srvcstatus_last_state_chg_idx` (`last_state_change`),
  KEY `srvcstatus_notif_enabled_idx` (`notifications_enabled`),
  KEY `srvcstatus_problem_ack_idx` (`problem_has_been_acknowledged`),
  KEY `srvcstatus_act_chks_en_idx` (`active_checks_enabled`),
  KEY `srvcstatus_pas_chks_en_idx` (`passive_checks_enabled`),
  KEY `srvcstatus_event_hdl_en_idx` (`event_handler_enabled`),
  KEY `srvcstatus_flap_det_en_idx` (`flap_detection_enabled`),
  KEY `srvcstatus_is_flapping_idx` (`is_flapping`),
  KEY `srvcstatus_p_state_chg_idx` (`percent_state_change`),
  KEY `srvcstatus_latency_idx` (`latency`),
  KEY `srvcstatus_ex_time_idx` (`execution_time`),
  KEY `srvcstatus_sch_downt_d_idx` (`scheduled_downtime_depth`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COMMENT='Current service status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicestatus`
--

LOCK TABLES `icinga_servicestatus` WRITE;
/*!40000 ALTER TABLE `icinga_servicestatus` DISABLE KEYS */;
INSERT INTO `icinga_servicestatus` VALUES (1,1,70,'2016-05-14 21:32:49','APT WARNING: 70 packages available for upgrade (0 critical updates). ','','available_upgrades=70;;;0 critical_updates=0;;;0','ip-10-0-0-210',1,1,1,1,5,'2016-05-14 21:32:49','2016-05-14 21:33:49',0,'2016-05-14 21:01:22','2016-05-14 21:01:22',1,'0000-00-00 00:00:00','2016-05-14 21:32:49','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-14 21:31:24','2016-05-14 22:01:24',0,1,0,0,1,1,1,1,0,0,0,0,0.657263994216919,0,0,1,0,0,'null','','apt',1,0.5,0,1,1),(2,1,71,'2016-05-14 21:32:54','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.036000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:54','2016-05-14 21:33:50',0,'2016-05-14 21:02:03','2016-05-14 21:02:03',0,'2016-05-14 21:32:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,4.001168966293335,0,0,1,0,0,'null','','ping4',1,0.5,0,1,1),(3,1,72,'2016-05-14 21:32:20','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.040000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:20','2016-05-14 21:33:16',0,'2016-05-14 21:01:22','2016-05-14 21:01:22',0,'2016-05-14 21:32:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,4.0011279582977295,0,0,1,0,0,'null','','ping6',1,0.5,0,1,1),(4,1,73,'2016-05-14 21:31:57','SSH OK - OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.4 (protocol 2.0) ','','time=0.004454s;;;0.000000;10.000000','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:31:57','2016-05-14 21:32:57',0,'2016-05-14 21:01:50','2016-05-14 21:01:50',0,'2016-05-14 21:31:57','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0055751800537109375,0,0,1,0,0,'null','','ssh',1,0.5,0,1,1),(5,1,74,'2016-05-14 21:32:21','HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.000 second response time ','','time=0.000375s;;;0.000000 size=11783B;;;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:21','2016-05-14 21:33:21',0,'2016-05-14 21:01:32','2016-05-14 21:01:32',0,'2016-05-14 21:32:21','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0015249252319335938,0,0,1,0,0,'null','','http',1,0.5,0,1,1),(6,1,75,'2016-05-14 21:32:05','DISK OK - free space: / 5934 MB (79% inode=84%):','','/=1564MB;6339;7131;0;7924','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:05','2016-05-14 21:33:05',0,'2016-05-14 21:01:38','2016-05-14 21:01:38',0,'2016-05-14 21:32:05','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0008339881896972656,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(7,1,76,'2016-05-14 21:32:28','DISK OK - free space: / 5935 MB (79% inode=84%):','','/=1564MB;6339;7131;0;7924','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:28','2016-05-14 21:33:28',0,'2016-05-14 21:01:29','2016-05-14 21:01:29',0,'2016-05-14 21:32:28','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0007910728454589844,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(8,1,77,'2016-05-14 21:32:51','Icinga 2 has been running for 17 minutes and 57 seconds. Version: r2.4.7-1','','active_host_checks=0.016666666666666666 passive_host_checks=0 active_host_checks_1min=1 passive_host_checks_1min=0 active_host_checks_5min=5 passive_host_checks_5min=0 active_host_checks_15min=15 passive_host_checks_15min=0 active_service_checks=0.20000000000000001 passive_service_checks=0 active_service_checks_1min=12 passive_service_checks_1min=0 active_service_checks_5min=60 passive_service_checks_5min=0 active_service_checks_15min=180 passive_service_checks_15min=0 min_latency=0 max_latency=0 avg_latency=0 min_execution_time=0 max_execution_time=0 avg_execution_time=0.72308176755905151 num_services_ok=11 num_services_warning=1 num_services_critical=0 num_services_unknown=0 num_services_pending=0 num_services_unreachable=0 num_services_flapping=0 num_services_in_downtime=0 num_services_acknowledged=0 uptime=1077.365198135376 num_hosts_up=1 num_hosts_down=0 num_hosts_pending=0 num_hosts_unreachable=0 num_hosts_flapping=0 num_hosts_in_downtime=0 num_hosts_acknowledged=0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:51','2016-05-14 21:33:51',0,'2016-05-14 21:01:24','2016-05-14 21:01:24',0,'2016-05-14 21:32:51','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.00009584426879882812,0,0,1,0,0,'null','','icinga',1,0.5,0,1,1),(9,1,78,'2016-05-14 21:31:56','OK - load average: 0.06, 0.03, 0.05','','load1=0.060;5.000;10.000;0; load5=0.030;4.000;6.000;0; load15=0.050;3.000;4.000;0;','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:31:56','2016-05-14 21:32:56',0,'2016-05-14 21:01:59','2016-05-14 21:01:59',0,'2016-05-14 21:31:56','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0015959739685058594,0,0,1,0,0,'null','','load',1,0.5,0,1,1),(10,1,79,'2016-05-14 21:32:34','PROCS OK: 133 processes ','','procs=133;250;400;0;','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:34','2016-05-14 21:33:34',0,'2016-05-14 21:01:30','2016-05-14 21:01:30',0,'2016-05-14 21:32:34','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0054399967193603516,0,0,1,0,0,'null','','procs',1,0.5,0,1,1),(11,1,80,'2016-05-14 21:32:39','SWAP OK - 100% free (0 MB out of 0 MB) ','','swap=0MB;0;0;0;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:39','2016-05-14 21:33:39',0,'2016-05-14 21:01:42','2016-05-14 21:01:42',0,'2016-05-14 21:32:39','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0008962154388427734,0,0,1,0,0,'null','','swap',1,0.5,0,1,1),(12,1,81,'2016-05-14 21:32:54','USERS OK - 1 users currently logged in ','','users=1;20;50;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:54','2016-05-14 21:33:54',0,'2016-05-14 21:01:28','2016-05-14 21:01:28',0,'2016-05-14 21:32:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0008199214935302734,0,0,1,0,0,'null','','users',1,0.5,0,1,1),(13,1,87,'2016-05-16 18:01:48','APT WARNING: 67 packages available for upgrade (0 critical updates). ','','available_upgrades=67;;;0 critical_updates=0;;;0','icinga2',1,1,1,1,5,'2016-05-16 18:01:48','2016-05-16 18:02:47',0,'2016-05-14 21:33:16','2016-05-14 21:33:16',1,'0000-00-00 00:00:00','2016-05-16 18:01:48','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-16 17:36:43','2016-05-16 18:06:43',0,1,0,0,43,1,1,1,0,0,0,0,0.6113789081573486,0,0,1,0,0,'null','','apt',1,0.5,0,1,82),(14,1,88,'2016-05-16 18:01:27','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.053000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 18:01:27','2016-05-16 18:02:23',0,'2016-05-14 21:33:22','2016-05-14 21:33:22',0,'2016-05-16 18:01:27','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,4.001024007797241,0,0,1,0,0,'null','','ping4',1,0.5,0,1,82),(15,1,89,'2016-05-16 18:02:15','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.039000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 18:02:15','2016-05-16 18:03:11',0,'2016-05-14 21:33:28','2016-05-14 21:33:28',0,'2016-05-16 18:02:15','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,3.9985239505767822,0,0,1,0,0,'null','','ping6',1,0.5,0,1,82),(16,1,90,'2016-05-16 18:01:44','SSH OK - OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.4 (protocol 2.0) ','','time=0.004694s;;;0.000000;10.000000','icinga2',0,1,1,1,5,'2016-05-16 18:01:44','2016-05-16 18:02:44',0,'2016-05-14 21:33:20','2016-05-14 21:33:20',0,'2016-05-16 18:01:44','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.005449056625366211,0,0,1,0,0,'null','','ssh',1,0.5,0,1,82),(17,1,91,'2016-05-16 18:01:47','HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.000 second response time ','','time=0.000416s;;;0.000000 size=11783B;;;0','icinga2',0,1,1,1,5,'2016-05-16 18:01:47','2016-05-16 18:02:47',0,'2016-05-16 00:55:01','2016-05-16 00:55:01',0,'2016-05-16 18:01:47','0000-00-00 00:00:00','0000-00-00 00:00:00','2016-05-16 00:54:01',1,'2016-05-16 00:55:01','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0016028881072998047,0,0,1,0,0,'null','','http',1,0.5,0,1,82),(18,1,92,'2016-05-16 18:01:47','DISK OK - free space: / 4056 MB (54% inode=74%):','','/=3443MB;6339;7131;0;7924','icinga2',0,1,1,1,5,'2016-05-16 18:01:47','2016-05-16 18:02:47',0,'2016-05-14 21:33:53','2016-05-14 21:33:53',0,'2016-05-16 18:01:47','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0008409023284912109,0,0,1,0,0,'null','','disk',1,0.5,0,1,82),(19,1,93,'2016-05-16 18:02:17','DISK OK - free space: / 4056 MB (54% inode=74%):','','/=3443MB;6339;7131;0;7924','icinga2',0,1,1,1,5,'2016-05-16 18:02:17','2016-05-16 18:03:17',0,'2016-05-14 21:33:23','2016-05-14 21:33:23',0,'2016-05-16 18:02:17','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0008342266082763672,0,0,1,0,0,'null','','disk',1,0.5,0,1,82),(20,1,94,'2016-05-16 18:02:04','Icinga 2 has been running for 2 hours, 36 minutes and 59 seconds. Version: r2.4.7-1','','active_host_checks=0.016666666666666666 passive_host_checks=0 active_host_checks_1min=1 passive_host_checks_1min=0 active_host_checks_5min=7 passive_host_checks_5min=0 active_host_checks_15min=21 passive_host_checks_15min=0 active_service_checks=0.25 passive_service_checks=0 active_service_checks_1min=15 passive_service_checks_1min=0 active_service_checks_5min=75 passive_service_checks_5min=0 active_service_checks_15min=225 passive_service_checks_15min=0 min_latency=0 max_latency=0 avg_latency=0 min_execution_time=0 max_execution_time=0 avg_execution_time=1.1088778018951415 num_services_ok=14 num_services_warning=1 num_services_critical=0 num_services_unknown=0 num_services_pending=0 num_services_unreachable=0 num_services_flapping=0 num_services_in_downtime=0 num_services_acknowledged=0 uptime=9419.4687340259552 num_hosts_up=3 num_hosts_down=0 num_hosts_pending=0 num_hosts_unreachable=0 num_hosts_flapping=0 num_hosts_in_downtime=0 num_hosts_acknowledged=0','icinga2',0,1,1,1,5,'2016-05-16 18:02:04','2016-05-16 18:03:04',0,'2016-05-14 21:33:34','2016-05-14 21:33:34',0,'2016-05-16 18:02:04','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.00010514259338378906,0,0,1,0,0,'null','','icinga',1,0.5,0,1,82),(21,1,95,'2016-05-16 18:02:06','OK - load average: 0.00, 0.01, 0.05','','load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.050;3.000;4.000;0;','icinga2',0,1,1,1,5,'2016-05-16 18:02:06','2016-05-16 18:03:06',0,'2016-05-14 21:33:46','2016-05-14 21:33:46',0,'2016-05-16 18:02:06','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-16 03:00:18','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0012829303741455078,0,0,1,0,0,'null','','load',1,0.5,0,1,82),(22,1,96,'2016-05-16 18:01:27','PROCS OK: 142 processes ','','procs=142;250;400;0;','icinga2',0,1,1,1,5,'2016-05-16 18:01:27','2016-05-16 18:02:27',0,'2016-05-14 21:33:10','2016-05-14 21:33:10',0,'2016-05-16 18:01:27','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.006587982177734375,0,0,1,0,0,'null','','procs',1,0.5,0,1,82),(23,1,97,'2016-05-16 18:02:05','SWAP OK - 100% free (0 MB out of 0 MB) ','','swap=0MB;0;0;0;0','icinga2',0,1,1,1,5,'2016-05-16 18:02:05','2016-05-16 18:03:05',0,'2016-05-14 21:33:11','2016-05-14 21:33:11',0,'2016-05-16 18:02:05','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0008900165557861328,0,0,1,0,0,'null','','swap',1,0.5,0,1,82),(24,1,98,'2016-05-16 18:01:55','USERS OK - 2 users currently logged in ','','users=2;20;50;0','icinga2',0,1,1,1,5,'2016-05-16 18:01:55','2016-05-16 18:02:55',0,'2016-05-14 21:33:42','2016-05-14 21:33:42',0,'2016-05-16 18:01:55','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0007798671722412109,0,0,1,0,0,'null','','users',1,0.5,0,1,82),(25,1,108,'2016-05-16 18:02:06','HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','','time=0.000372s;;;0.000000 size=537B;;;0','icinga2',0,1,1,1,5,'2016-05-16 18:02:06','2016-05-16 18:03:06',0,'2016-05-16 00:55:14','2016-05-16 00:55:14',0,'2016-05-16 18:02:06','2016-05-15 23:19:14','0000-00-00 00:00:00','2016-05-16 00:54:14',1,'2016-05-16 00:55:14','2016-05-16 18:06:43',0,1,0,0,0,1,1,1,0,0,0,0,0.0015339851379394531,0,0,1,0,0,'null','','http',1,0.5,0,1,82),(26,1,109,'2016-05-16 00:55:35','PING OK - Packet loss = 0%, RTA = 88.94 ms','','rta=88.945000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 00:55:35','2016-05-16 00:56:31',0,'2016-05-15 23:37:05','2016-05-15 23:37:35',0,'2016-05-16 00:55:35','2016-05-15 23:36:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,4.1159257888793945,0,0,1,0,0,'null','','ping4',1,0.5,0,1,82),(27,1,113,'2016-05-16 18:01:25','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.051000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 18:01:25','2016-05-16 18:02:21',0,'2016-05-14 23:36:19','2016-05-14 23:36:19',0,'2016-05-16 18:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,4.002078056335449,0,0,1,0,0,'null','','ping4',1,0.5,0,1,82),(28,1,117,'2016-05-16 18:01:54','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.046000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 18:01:54','2016-05-16 18:02:50',0,'2016-05-14 23:37:49','2016-05-14 23:37:49',0,'2016-05-16 18:01:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,4.0002360343933105,0,0,1,0,0,'null','','ping4',1,0.5,0,1,82);
/*!40000 ALTER TABLE `icinga_servicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_statehistory`
--

DROP TABLE IF EXISTS `icinga_statehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_statehistory` (
  `statehistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `state_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_time_usec` int(11) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state_change` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_state` smallint(6) DEFAULT '0',
  `last_hard_state` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `check_source` varchar(255) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`statehistory_id`),
  KEY `statehist_i_id_o_id_s_ty_s_ti` (`instance_id`,`object_id`,`state_type`,`state_time`),
  KEY `statehist_state_idx` (`object_id`,`state`),
  KEY `sla_idx_sthist` (`object_id`,`state_time`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COMMENT='Historical host and service state changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_statehistory`
--

LOCK TABLES `icinga_statehistory` WRITE;
/*!40000 ALTER TABLE `icinga_statehistory` DISABLE KEYS */;
INSERT INTO `icinga_statehistory` VALUES (1,1,'2016-05-14 23:31:14',260231,107,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 662 bytes in 0.418 second response time ','','icinga2',82),(2,1,'2016-05-14 23:31:18',8209,109,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 87.41 ms','','icinga2',82),(3,1,'2016-05-14 23:31:28',762182,108,1,0,1,1,5,3,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','','icinga2',82),(4,1,'2016-05-14 23:35:53',29599,112,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 200 OK - 262 bytes in 0.001 second response time ','','icinga2',82),(5,1,'2016-05-14 23:36:19',781383,113,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.04 ms','','icinga2',82),(6,1,'2016-05-14 23:37:49',501888,117,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.04 ms','','icinga2',82),(7,1,'2016-05-14 23:38:11',612622,116,1,1,1,1,3,1,1,'Lost connection to MySQL server at \'reading initial communication packet\', system error: 0','','icinga2',82),(8,1,'2016-05-14 23:57:23',225177,116,1,0,1,1,3,1,0,'Uptime: 298  Threads: 1  Questions: 38  Slow queries: 0  Opens: 48  Flush tables: 1  Open tables: 41  Queries per second avg: 0.127','','icinga2',82),(9,1,'2016-05-15 21:00:28',591803,112,1,1,0,1,3,0,0,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(10,1,'2016-05-15 21:00:28',592776,116,1,1,0,1,3,0,0,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(11,1,'2016-05-15 21:03:28',592542,112,1,1,1,1,3,1,1,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(12,1,'2016-05-15 21:03:28',593054,116,1,1,1,1,3,1,1,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(13,1,'2016-05-16 00:55:14',322173,108,1,0,1,1,5,2,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','','icinga2',82),(14,1,'2016-05-16 00:56:27',734987,112,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.001 second response time ','','icinga2',82),(15,1,'2016-05-16 00:58:47',340131,116,1,0,1,1,3,1,0,'Uptime: 74  Threads: 1  Questions: 16  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.216','','icinga2',82),(16,1,'2016-05-16 03:40:45',391707,112,1,1,0,1,3,0,0,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(17,1,'2016-05-16 03:41:18',621977,116,1,1,0,1,3,0,0,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(18,1,'2016-05-16 03:43:45',392189,112,1,1,1,1,3,1,1,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(19,1,'2016-05-16 03:44:18',621902,116,1,1,1,1,3,1,1,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(20,1,'2016-05-16 15:22:47',926852,112,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.002 second response time ','','icinga2',82),(21,1,'2016-05-16 15:25:09',656102,116,1,0,1,1,3,1,0,'Uptime: 154  Threads: 1  Questions: 10  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.064','','icinga2',82);
/*!40000 ALTER TABLE `icinga_statehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_systemcommands`
--

DROP TABLE IF EXISTS `icinga_systemcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_systemcommands` (
  `systemcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`systemcommand_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`start_time`,`start_time_usec`),
  KEY `systemcommands_i_id_idx` (`instance_id`),
  KEY `systemcommands_time_id_idx` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical system commands that are executed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_systemcommands`
--

LOCK TABLES `icinga_systemcommands` WRITE;
/*!40000 ALTER TABLE `icinga_systemcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_systemcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiod_timeranges`
--

DROP TABLE IF EXISTS `icinga_timeperiod_timeranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiod_timeranges` (
  `timeperiod_timerange_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_id` bigint(20) unsigned DEFAULT '0',
  `day` smallint(6) DEFAULT '0',
  `start_sec` int(11) DEFAULT '0',
  `end_sec` int(11) DEFAULT '0',
  PRIMARY KEY (`timeperiod_timerange_id`),
  KEY `timeperiod_timeranges_i_id_idx` (`instance_id`),
  KEY `tperiod_tid_d_ss_es` (`timeperiod_id`,`day`,`start_sec`,`end_sec`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod_timeranges`
--

LOCK TABLES `icinga_timeperiod_timeranges` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` DISABLE KEYS */;
INSERT INTO `icinga_timeperiod_timeranges` VALUES (193,1,2,5,32400,61200),(194,1,2,1,32400,61200),(195,1,2,4,32400,61200),(196,1,2,2,32400,61200),(197,1,2,3,32400,61200),(198,1,1,5,0,0),(199,1,1,1,0,0),(200,1,1,6,0,0),(201,1,1,0,0,0),(202,1,1,4,0,0),(203,1,1,2,0,0),(204,1,1,3,0,0);
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiods`
--

DROP TABLE IF EXISTS `icinga_timeperiods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiods` (
  `timeperiod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  PRIMARY KEY (`timeperiod_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`timeperiod_object_id`),
  KEY `timeperiods_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiods`
--

LOCK TABLES `icinga_timeperiods` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiods` DISABLE KEYS */;
INSERT INTO `icinga_timeperiods` VALUES (1,1,1,59,'Icinga 2 24x7 TimePeriod'),(2,1,1,60,'Icinga 2 9to5 TimePeriod'),(3,1,1,61,'Icinga 2 never TimePeriod');
/*!40000 ALTER TABLE `icinga_timeperiods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zones`
--

DROP TABLE IF EXISTS `icinga_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `parent_zone_object_id` bigint(20) unsigned DEFAULT '0',
  `is_global` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Zone configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zones`
--

LOCK TABLES `icinga_zones` WRITE;
/*!40000 ALTER TABLE `icinga_zones` DISABLE KEYS */;
INSERT INTO `icinga_zones` VALUES (1,1,2,1,0,0),(2,1,83,1,0,0);
/*!40000 ALTER TABLE `icinga_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zonestatus`
--

DROP TABLE IF EXISTS `icinga_zonestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zonestatus` (
  `zonestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parent_zone_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`zonestatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Zone status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zonestatus`
--

LOCK TABLES `icinga_zonestatus` WRITE;
/*!40000 ALTER TABLE `icinga_zonestatus` DISABLE KEYS */;
INSERT INTO `icinga_zonestatus` VALUES (1,1,2,'2016-05-14 21:14:54',0),(2,1,83,'2016-05-16 15:25:05',0);
/*!40000 ALTER TABLE `icinga_zonestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `icinga_web`
--

/*!40000 DROP DATABASE IF EXISTS `icinga_web`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `icinga_web` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `icinga_web`;

--
-- Table structure for table `cronk`
--

DROP TABLE IF EXISTS `cronk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronk` (
  `cronk_id` int(11) NOT NULL AUTO_INCREMENT,
  `cronk_uid` varchar(45) DEFAULT NULL,
  `cronk_name` varchar(45) DEFAULT NULL,
  `cronk_description` varchar(100) DEFAULT NULL,
  `cronk_xml` longtext,
  `cronk_user_id` int(11) DEFAULT NULL,
  `cronk_system` tinyint(1) DEFAULT '0',
  `cronk_created` datetime NOT NULL,
  `cronk_modified` datetime NOT NULL,
  PRIMARY KEY (`cronk_id`),
  UNIQUE KEY `cronk_uid_UNIQUE_idx` (`cronk_uid`),
  KEY `cronk_user_id_idx` (`cronk_user_id`),
  CONSTRAINT `cronk_cronk_user_id_nsm_user_user_id` FOREIGN KEY (`cronk_user_id`) REFERENCES `nsm_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronk`
--

LOCK TABLES `cronk` WRITE;
/*!40000 ALTER TABLE `cronk` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronk_category`
--

DROP TABLE IF EXISTS `cronk_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronk_category` (
  `cc_id` int(11) NOT NULL AUTO_INCREMENT,
  `cc_uid` varchar(45) NOT NULL,
  `cc_name` varchar(45) DEFAULT NULL,
  `cc_visible` tinyint(4) DEFAULT '0',
  `cc_position` int(11) DEFAULT '0',
  `cc_system` tinyint(1) DEFAULT '0',
  `cc_created` datetime NOT NULL,
  `cc_modified` datetime NOT NULL,
  PRIMARY KEY (`cc_id`),
  UNIQUE KEY `cc_uid_UNIQUE_idx` (`cc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronk_category`
--

LOCK TABLES `cronk_category` WRITE;
/*!40000 ALTER TABLE `cronk_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronk_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronk_category_cronk`
--

DROP TABLE IF EXISTS `cronk_category_cronk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronk_category_cronk` (
  `ccc_cc_id` int(11) NOT NULL DEFAULT '0',
  `ccc_cronk_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ccc_cc_id`,`ccc_cronk_id`),
  KEY `cronk_category_cronk_ccc_cronk_id_cronk_cronk_id` (`ccc_cronk_id`),
  CONSTRAINT `cronk_category_cronk_ccc_cc_id_cronk_category_cc_id` FOREIGN KEY (`ccc_cc_id`) REFERENCES `cronk_category` (`cc_id`),
  CONSTRAINT `cronk_category_cronk_ccc_cronk_id_cronk_cronk_id` FOREIGN KEY (`ccc_cronk_id`) REFERENCES `cronk` (`cronk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronk_category_cronk`
--

LOCK TABLES `cronk_category_cronk` WRITE;
/*!40000 ALTER TABLE `cronk_category_cronk` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronk_category_cronk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronk_principal_category`
--

DROP TABLE IF EXISTS `cronk_principal_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronk_principal_category` (
  `principal_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`principal_id`,`category_id`),
  KEY `cronk_principal_category_category_id_cronk_category_cc_id` (`category_id`),
  CONSTRAINT `cronk_principal_category_category_id_cronk_category_cc_id` FOREIGN KEY (`category_id`) REFERENCES `cronk_category` (`cc_id`),
  CONSTRAINT `cronk_principal_category_principal_id_nsm_principal_principal_id` FOREIGN KEY (`principal_id`) REFERENCES `nsm_principal` (`principal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronk_principal_category`
--

LOCK TABLES `cronk_principal_category` WRITE;
/*!40000 ALTER TABLE `cronk_principal_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronk_principal_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronk_principal_cronk`
--

DROP TABLE IF EXISTS `cronk_principal_cronk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronk_principal_cronk` (
  `cpc_principal_id` int(11) NOT NULL DEFAULT '0',
  `cpc_cronk_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cpc_principal_id`,`cpc_cronk_id`),
  KEY `cronk_principal_cronk_cpc_cronk_id_cronk_cronk_id` (`cpc_cronk_id`),
  CONSTRAINT `ccnp` FOREIGN KEY (`cpc_principal_id`) REFERENCES `nsm_principal` (`principal_id`),
  CONSTRAINT `cronk_principal_cronk_cpc_cronk_id_cronk_cronk_id` FOREIGN KEY (`cpc_cronk_id`) REFERENCES `cronk` (`cronk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronk_principal_cronk`
--

LOCK TABLES `cronk_principal_cronk` WRITE;
/*!40000 ALTER TABLE `cronk_principal_cronk` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronk_principal_cronk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_db_version`
--

DROP TABLE IF EXISTS `nsm_db_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_db_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `version` varchar(32) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_db_version`
--

LOCK TABLES `nsm_db_version` WRITE;
/*!40000 ALTER TABLE `nsm_db_version` DISABLE KEYS */;
INSERT INTO `nsm_db_version` VALUES (1,'icinga-web/v1.11.2','2016-05-14 20:58:17','2016-05-14 20:58:17');
/*!40000 ALTER TABLE `nsm_db_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_log`
--

DROP TABLE IF EXISTS `nsm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_level` int(11) NOT NULL,
  `log_message` text NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_log`
--

LOCK TABLES `nsm_log` WRITE;
/*!40000 ALTER TABLE `nsm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nsm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_principal`
--

DROP TABLE IF EXISTS `nsm_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_principal` (
  `principal_id` int(11) NOT NULL AUTO_INCREMENT,
  `principal_user_id` int(11) DEFAULT NULL,
  `principal_role_id` int(11) DEFAULT NULL,
  `principal_type` varchar(4) NOT NULL,
  `principal_disabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`principal_id`),
  KEY `principal_collection_idx_idx` (`principal_user_id`,`principal_role_id`,`principal_type`),
  KEY `principal_user_id_idx` (`principal_user_id`),
  KEY `principal_role_id_idx` (`principal_role_id`),
  CONSTRAINT `nsm_principal_principal_role_id_nsm_role_role_id` FOREIGN KEY (`principal_role_id`) REFERENCES `nsm_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `nsm_principal_principal_user_id_nsm_user_user_id` FOREIGN KEY (`principal_user_id`) REFERENCES `nsm_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_principal`
--

LOCK TABLES `nsm_principal` WRITE;
/*!40000 ALTER TABLE `nsm_principal` DISABLE KEYS */;
INSERT INTO `nsm_principal` VALUES (1,1,NULL,'user',0),(2,NULL,2,'role',0),(3,NULL,3,'role',0),(4,NULL,1,'role',0),(5,NULL,4,'role',0);
/*!40000 ALTER TABLE `nsm_principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_principal_target`
--

DROP TABLE IF EXISTS `nsm_principal_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_principal_target` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_principal_id` int(11) NOT NULL,
  `pt_target_id` int(11) NOT NULL,
  PRIMARY KEY (`pt_id`),
  KEY `pt_target_id_ix_idx` (`pt_target_id`),
  KEY `pt_principal_id_ix_idx` (`pt_principal_id`),
  CONSTRAINT `nsm_principal_target_pt_principal_id_nsm_principal_principal_id` FOREIGN KEY (`pt_principal_id`) REFERENCES `nsm_principal` (`principal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `nsm_principal_target_pt_target_id_nsm_target_target_id` FOREIGN KEY (`pt_target_id`) REFERENCES `nsm_target` (`target_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_principal_target`
--

LOCK TABLES `nsm_principal_target` WRITE;
/*!40000 ALTER TABLE `nsm_principal_target` DISABLE KEYS */;
INSERT INTO `nsm_principal_target` VALUES (1,2,8),(2,2,13),(3,3,9),(4,3,10),(5,3,11),(6,4,8),(7,5,7),(8,3,15),(9,3,16),(10,3,17),(11,3,18),(12,4,20),(13,3,21);
/*!40000 ALTER TABLE `nsm_principal_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_role`
--

DROP TABLE IF EXISTS `nsm_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(40) NOT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `role_disabled` tinyint(4) NOT NULL DEFAULT '0',
  `role_created` datetime NOT NULL,
  `role_modified` datetime NOT NULL,
  `role_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `role_parent_idx` (`role_parent`),
  CONSTRAINT `nsm_role_role_parent_nsm_role_role_id` FOREIGN KEY (`role_parent`) REFERENCES `nsm_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_role`
--

LOCK TABLES `nsm_role` WRITE;
/*!40000 ALTER TABLE `nsm_role` DISABLE KEYS */;
INSERT INTO `nsm_role` VALUES (1,'icinga_user','The default representation of a ICINGA user',0,'2016-05-14 20:58:17','2016-05-14 20:58:17',NULL),(2,'appkit_user','Appkit user test',0,'2016-05-14 20:58:17','2016-05-14 20:58:17',NULL),(3,'appkit_admin','AppKit admin',0,'2016-05-14 20:58:17','2016-05-14 20:58:17',2),(4,'guest','Unauthorized Guest',0,'2016-05-14 20:58:17','2016-05-14 20:58:17',NULL);
/*!40000 ALTER TABLE `nsm_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_session`
--

DROP TABLE IF EXISTS `nsm_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_session` (
  `session_entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `session_name` varchar(255) NOT NULL,
  `session_data` longtext NOT NULL,
  `session_checksum` varchar(255) NOT NULL,
  `session_created` datetime NOT NULL,
  `session_modified` datetime NOT NULL,
  PRIMARY KEY (`session_entry_id`),
  UNIQUE KEY `session_id_idx` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_session`
--

LOCK TABLES `nsm_session` WRITE;
/*!40000 ALTER TABLE `nsm_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `nsm_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_target`
--

DROP TABLE IF EXISTS `nsm_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_target` (
  `target_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_name` varchar(45) NOT NULL,
  `target_description` varchar(100) DEFAULT NULL,
  `target_class` varchar(80) DEFAULT NULL,
  `target_type` varchar(45) NOT NULL,
  PRIMARY KEY (`target_id`),
  UNIQUE KEY `target_key_unique_target_name_idx` (`target_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_target`
--

LOCK TABLES `nsm_target` WRITE;
/*!40000 ALTER TABLE `nsm_target` DISABLE KEYS */;
INSERT INTO `nsm_target` VALUES (1,'IcingaHostgroup','Limit data access to specific hostgroups','IcingaDataHostgroupPrincipalTarget','icinga'),(2,'IcingaServicegroup','Limit data access to specific servicegroups','IcingaDataServicegroupPrincipalTarget','icinga'),(3,'IcingaHostCustomVariablePair','Limit data access to specific custom variables','IcingaDataHostCustomVariablePrincipalTarget','icinga'),(4,'IcingaServiceCustomVariablePair','Limit data access to specific custom variables','IcingaDataServiceCustomVariablePrincipalTarget','icinga'),(5,'IcingaContactgroup','Limit data access to users contact group membership','IcingaDataContactgroupPrincipalTarget','icinga'),(6,'IcingaCommandRo','Limit access to commands','IcingaDataCommandRoPrincipalTarget','icinga'),(7,'appkit.access','Access to login-page (which, actually, means no access)','','credential'),(8,'icinga.user','Access to icinga','','credential'),(9,'appkit.admin.groups','Access to group related data (e.g. share cronks)','','credential'),(10,'appkit.admin.users','Access to user related data (provider)','','credential'),(11,'appkit.admin','Access to admin panel ','','credential'),(12,'appkit.user.dummy','Basic right for users','','credential'),(13,'appkit.api.access','Access to web-based api adapter','','credential'),(14,'icinga.demoMode','Hide features like password reset which are not wanted in demo systems','','credential'),(15,'icinga.cronk.category.admin','Enables category admin features','','credential'),(16,'icinga.cronk.log','Allow user to view icinga-log','','credential'),(17,'icinga.control.view','Allow user to view icinga status','','credential'),(18,'icinga.control.admin','Allow user to administrate the icinga process','','credential'),(19,'IcingaCommandRestrictions','Disable critical commands for this user','IcingaDataCommandRestrictionPrincipalTarget','icinga'),(20,'icinga.cronk.custom','Allow user to create and modify custom cronks','','credential'),(21,'icinga.cronk.admin','Allow user to edit and delete all cronks','','credential'),(22,'IcingaService','Limit data access to specific services','IcingaDataServicePrincipalTarget','icinga'),(23,'IcingaHost','Limit data access to specific hosts','IcingaDataHostPrincipalTarget','icinga');
/*!40000 ALTER TABLE `nsm_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_target_value`
--

DROP TABLE IF EXISTS `nsm_target_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_target_value` (
  `tv_pt_id` int(11) NOT NULL DEFAULT '0',
  `tv_key` varchar(45) NOT NULL DEFAULT '',
  `tv_val` varchar(45) NOT NULL,
  PRIMARY KEY (`tv_pt_id`,`tv_key`),
  CONSTRAINT `nsm_target_value_tv_pt_id_nsm_principal_target_pt_id` FOREIGN KEY (`tv_pt_id`) REFERENCES `nsm_principal_target` (`pt_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_target_value`
--

LOCK TABLES `nsm_target_value` WRITE;
/*!40000 ALTER TABLE `nsm_target_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `nsm_target_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_user`
--

DROP TABLE IF EXISTS `nsm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(127) NOT NULL,
  `user_lastname` varchar(40) NOT NULL,
  `user_firstname` varchar(40) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_salt` varchar(64) NOT NULL,
  `user_authsrc` varchar(45) NOT NULL DEFAULT 'internal',
  `user_authid` text,
  `user_authkey` varchar(64) DEFAULT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_description` varchar(255) DEFAULT NULL,
  `user_disabled` tinyint(4) NOT NULL DEFAULT '1',
  `user_created` datetime NOT NULL,
  `user_modified` datetime NOT NULL,
  `user_last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_unique_idx` (`user_name`),
  KEY `user_search_idx` (`user_name`,`user_authsrc`,`user_disabled`,`user_authid`(127))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_user`
--

LOCK TABLES `nsm_user` WRITE;
/*!40000 ALTER TABLE `nsm_user` DISABLE KEYS */;
INSERT INTO `nsm_user` VALUES (1,0,'root','Root','Enoch','42bc5093863dce8c150387a5bb7e3061cf3ea67d2cf1779671e1b0f435e953a1','0c099ae4627b144f3a7eaa763ba43b10fd5d1caa8738a98f11bb973bebc52ccd','internal',NULL,NULL,'root@localhost.local',NULL,0,'2016-05-14 20:58:17','2016-05-14 20:58:17',NULL);
/*!40000 ALTER TABLE `nsm_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_user_preference`
--

DROP TABLE IF EXISTS `nsm_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_user_preference` (
  `upref_id` int(11) NOT NULL AUTO_INCREMENT,
  `upref_user_id` int(11) NOT NULL,
  `upref_val` varchar(100) DEFAULT NULL,
  `upref_longval` longtext,
  `upref_key` varchar(50) NOT NULL,
  `upref_created` datetime NOT NULL,
  `upref_modified` datetime NOT NULL,
  PRIMARY KEY (`upref_id`),
  UNIQUE KEY `upref_user_key_unique_idx` (`upref_user_id`,`upref_key`),
  KEY `upref_search_key_idx_idx` (`upref_key`),
  KEY `principal_role_id_ix_idx` (`upref_user_id`),
  CONSTRAINT `nsm_user_preference_upref_user_id_nsm_user_user_id` FOREIGN KEY (`upref_user_id`) REFERENCES `nsm_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_user_preference`
--

LOCK TABLES `nsm_user_preference` WRITE;
/*!40000 ALTER TABLE `nsm_user_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `nsm_user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsm_user_role`
--

DROP TABLE IF EXISTS `nsm_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsm_user_role` (
  `usro_user_id` int(11) NOT NULL DEFAULT '0',
  `usro_role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usro_user_id`,`usro_role_id`),
  KEY `nsm_user_role_ix_idx` (`usro_role_id`),
  CONSTRAINT `nsm_user_role_usro_role_id_nsm_role_role_id` FOREIGN KEY (`usro_role_id`) REFERENCES `nsm_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `nsm_user_role_usro_user_id_nsm_user_user_id` FOREIGN KEY (`usro_user_id`) REFERENCES `nsm_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsm_user_role`
--

LOCK TABLES `nsm_user_role` WRITE;
/*!40000 ALTER TABLE `nsm_user_role` DISABLE KEYS */;
INSERT INTO `nsm_user_role` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `nsm_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `icingaweb_db`
--

/*!40000 DROP DATABASE IF EXISTS `icingaweb_db`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `icingaweb_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `icingaweb_db`;

--
-- Table structure for table `icingaweb_group`
--

DROP TABLE IF EXISTS `icingaweb_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`),
  KEY `fk_icingaweb_group_parent_id` (`parent`),
  CONSTRAINT `fk_icingaweb_group_parent_id` FOREIGN KEY (`parent`) REFERENCES `icingaweb_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_group`
--

LOCK TABLES `icingaweb_group` WRITE;
/*!40000 ALTER TABLE `icingaweb_group` DISABLE KEYS */;
INSERT INTO `icingaweb_group` VALUES (1,'Administrators',NULL,'2016-05-14 21:15:52',NULL);
/*!40000 ALTER TABLE `icingaweb_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icingaweb_group_membership`
--

DROP TABLE IF EXISTS `icingaweb_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_group_membership` (
  `group_id` int(10) unsigned NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`,`username`),
  CONSTRAINT `fk_icingaweb_group_membership_icingaweb_group` FOREIGN KEY (`group_id`) REFERENCES `icingaweb_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_group_membership`
--

LOCK TABLES `icingaweb_group_membership` WRITE;
/*!40000 ALTER TABLE `icingaweb_group_membership` DISABLE KEYS */;
INSERT INTO `icingaweb_group_membership` VALUES (1,'admin','2016-05-14 21:15:52',NULL);
/*!40000 ALTER TABLE `icingaweb_group_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icingaweb_user`
--

DROP TABLE IF EXISTS `icingaweb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_user` (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password_hash` varbinary(255) NOT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_user`
--

LOCK TABLES `icingaweb_user` WRITE;
/*!40000 ALTER TABLE `icingaweb_user` DISABLE KEYS */;
INSERT INTO `icingaweb_user` VALUES ('admin',1,'$1$u¼ý!ÑFçÔ$iRtm9znqkzaZ2TQiyenaP1','2016-05-14 21:15:52',NULL);
/*!40000 ALTER TABLE `icingaweb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icingaweb_user_preference`
--

DROP TABLE IF EXISTS `icingaweb_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_user_preference` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) NOT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_user_preference`
--

LOCK TABLES `icingaweb_user_preference` WRITE;
/*!40000 ALTER TABLE `icingaweb_user_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `icingaweb_user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `director`
--

/*!40000 DROP DATABASE IF EXISTS `director`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `director` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `director`;

--
-- Table structure for table `director_activity_log`
--

DROP TABLE IF EXISTS `director_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_type` varchar(64) NOT NULL,
  `object_name` varchar(255) NOT NULL,
  `action_name` enum('create','delete','modify') NOT NULL,
  `old_properties` text COMMENT 'Property hash, JSON',
  `new_properties` text COMMENT 'Property hash, JSON',
  `author` varchar(64) NOT NULL,
  `change_time` datetime NOT NULL,
  `checksum` varbinary(20) NOT NULL,
  `parent_checksum` varbinary(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_idx` (`change_time`),
  KEY `search_idx` (`object_name`),
  KEY `search_idx2` (`object_type`(32),`object_name`(64),`change_time`),
  KEY `checksum` (`checksum`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_activity_log`
--

LOCK TABLES `director_activity_log` WRITE;
/*!40000 ALTER TABLE `director_activity_log` DISABLE KEYS */;
INSERT INTO `director_activity_log` VALUES (1,'icinga_apiuser','root','create',NULL,'{\"object_name\":\"root\",\"object_type\":\"external_object\",\"password\":\"a5ffa477794f1c68\"}','admin','2016-05-14 21:35:07','a~Ïoã<Lî½kã[õÐüo²ºQ',NULL),(2,'icinga_zone','icinga2','create',NULL,'{\"object_name\":\"icinga2\",\"object_type\":\"external_object\"}','admin','2016-05-14 21:35:34','ÙñF·ö»(uð5çqö\Zà&Ï]ê','a~Ïoã<Lî½kã[õÐüo²ºQ'),(3,'icinga_endpoint','icinga2','create',NULL,'{\"apiuser\":\"root\",\"host\":\"icinga2\",\"log_duration\":86400,\"object_name\":\"icinga2\",\"object_type\":\"external_object\",\"port\":\"5665\",\"zone\":\"icinga2\"}','admin','2016-05-14 21:35:34','PÔµãHMciBŽ§ÆÆRcp\Z˜','ÙñF·ö»(uð5çqö\Zà&Ï]ê'),(4,'icinga_command','apt','create',NULL,'{\"arguments\":{\"--critical\":{\"value\":\"$apt_critical$\",\"description\":\"If the full package information of any of the upgradable packages match this REGEXP, the plugin will return CRITICAL status. Can be specified multiple times.\"},\"--dist-upgrade\":{\"value\":\"$apt_dist_upgrade$\",\"description\":\"Perform a dist-upgrade instead of normal upgrade. Like with -U OPTS can be provided to override the default options.\"},\"--exclude\":{\"value\":\"$apt_exclude$\",\"description\":\"Exclude packages matching REGEXP from the list of packages that would otherwise be included. Can be specified multiple times.\"},\"--extra-opts\":{\"value\":\"$apt_extra_opts$\",\"description\":\"Read options from an ini file.\"},\"--include\":{\"value\":\"$apt_include$\",\"description\":\"Include only packages matching REGEXP. Can be specified multiple times the values will be combined together.\"},\"--timeout\":{\"value\":\"$apt_timeout$\",\"description\":\"Seconds before plugin times out (default: 10).\"},\"--upgrade\":{\"value\":\"$apt_upgrade$\",\"description\":\"[Default] Perform an upgrade. If an optional OPTS argument is provided, apt-get will be run with these command line options instead of the default.\"}},\"command\":\"check_apt\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"apt\",\"object_type\":\"external_object\",\"timeout\":300}','admin','2016-05-14 21:35:34','†˜\"ÄhÔ6ä¶œ	\'ÎYšNî]','PÔµãHMciBŽ§ÆÆRcp\Z˜'),(5,'icinga_command','by_ssh','create',NULL,'{\"arguments\":{\"-C\":{\"type\":\"Function\",\"body\":\"\\/* Unable to fetch function body through API *\\/\"},\"-H\":\"$by_ssh_address$\",\"-c\":\"$by_ssh_crit$\",\"-i\":\"$by_ssh_identity$\",\"-l\":\"$by_ssh_logname$\",\"-o\":{\"value\":\"$by_ssh_options$\",\"description\":\"Provide ssh options (may be repeated)\"},\"-p\":\"$by_ssh_port$\",\"-q\":{\"set_if\":\"$by_ssh_quiet$\"},\"-t\":\"$by_ssh_timeout$\",\"-w\":\"$by_ssh_warn$\"},\"command\":\"check_by_ssh\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"by_ssh\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"by_ssh_address\":\"$check_address$\",\"by_ssh_quiet\":false,\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false}}','admin','2016-05-14 21:35:34',',1æ³ûcÑ¶våÆ?¬ç+þ¹º¸','†˜\"ÄhÔ6ä¶œ	\'ÎYšNî]'),(6,'icinga_command','clamd','create',NULL,'{\"arguments\":{\"-A\":{\"set_if\":\"$clamd_all$\",\"description\":\"All expect strings need to occur in server response. Default is any.\"},\"-D\":{\"value\":\"$clamd_certificate$\",\"description\":\"Minimum number of days a certificate has to be valid. 1st value is number of days for warning, 2nd is critical (if not specified: 0) - seperated by comma.\"},\"-E_quit\":{\"order\":\"3\",\"set_if\":\"$clamd_escape_quit$\",\"description\":\"Can use \\n, \\r, \\t or \\\\ in quit string. Default is \\r\\n added to end of quit.\"},\"-E_send\":{\"order\":\"1\",\"set_if\":\"$clamd_escape_send$\",\"description\":\"Enable usage of \\n, \\r, \\t or \\\\ in send string. Default is nothing.\"},\"-H\":{\"value\":\"$clamd_address$\",\"required\":true,\"description\":\"The host\'s address or unix socket (must be an absolute path).\"},\"-M\":{\"value\":\"$clamd_mismatch$\",\"description\":\"Accept expected string mismatches with states ok, warn, crit. Defaults to warn.\"},\"-S\":{\"set_if\":\"$clamd_ssl$\",\"description\":\"Use SSL for the connection.\"},\"-c\":{\"value\":\"$clamd_ctime$\",\"description\":\"Response time to result in critical status (seconds).\"},\"-d\":{\"value\":\"$clamd_delay$\",\"description\":\"Seconds to wait between sending string and polling for response.\"},\"-e\":{\"value\":\"$clamd_expect$\",\"repeat_key\":true,\"description\":\"String to expect in server response (may be repeated).\"},\"-j\":{\"set_if\":\"$clamd_jail$\",\"description\":\"Hide output from TCP socket.\"},\"-m\":{\"value\":\"$clamd_maxbytes$\",\"description\":\"Close connection once more than this number of bytes are received.\"},\"-p\":{\"value\":\"$clamd_port$\",\"description\":\"Port number (default: none).\"},\"-q\":{\"value\":\"$clamd_quit$\",\"order\":\"4\",\"description\":\"String to send server to initiate a clean close of the connection.\"},\"-r\":{\"value\":\"$clamd_refuse$\",\"description\":\"Accept TCP refusals with states ok, warn, crit. Defaults to crit.\"},\"-s\":{\"value\":\"$clamd_send$\",\"order\":\"2\",\"description\":\"String to send to the server.\"},\"-t\":{\"value\":\"$clamd_timeout$\",\"description\":\"Seconds before connection times out. Defaults to 10.\"},\"-w\":{\"value\":\"$clamd_wtime$\",\"description\":\"Response time to result in warning status (seconds).\"}},\"command\":\"check_clamd\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"clamd\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"clamd_mismatch\":\"warn\",\"clamd_refuse\":\"crit\",\"clamd_ssl\":false,\"clamd_timeout\":10}}','admin','2016-05-14 21:35:34','ˆ³.§2zŒf,ñK¬½!aV†Åýß',',1æ³ûcÑ¶våÆ?¬ç+þ¹º¸'),(7,'icinga_command','cluster','create',NULL,'{\"methods_execute\":\"PluginCheck\",\"object_name\":\"cluster\",\"object_type\":\"external_object\",\"timeout\":60}','admin','2016-05-14 21:35:34','«\"Ão‚•!¡]ýhAÜKž!Èè','ˆ³.§2zŒf,ñK¬½!aV†Åýß'),(8,'icinga_command','cluster-zone','create',NULL,'{\"methods_execute\":\"PluginCheck\",\"object_name\":\"cluster-zone\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"cluster_zone\":\"$host.name$\"}}','admin','2016-05-14 21:35:34','ÿŸ/Î^»/¾8T^¨¡jUŒˆœC','«\"Ão‚•!¡]ýhAÜKž!Èè'),(9,'icinga_command','dhcp','create',NULL,'{\"arguments\":{\"-i\":\"$dhcp_interface$\",\"-m\":\"$dhcp_mac$\",\"-r\":\"$dhcp_requestedip$\",\"-s\":\"$dhcp_serverip$\",\"-t\":\"$dhcp_timeout$\",\"-u\":{\"set_if\":\"$dhcp_unicast$\"}},\"command\":\"check_dhcp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"dhcp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"dhcp_unicast\":false}}','admin','2016-05-14 21:35:34','9a=7·9›ÔA²y7ÊPS','ÿŸ/Î^»/¾8T^¨¡jUŒˆœC'),(10,'icinga_command','dig','create',NULL,'{\"arguments\":{\"-A\":\"$dig_arguments$\",\"-H\":\"$dig_server$\",\"-T\":\"$dig_record_type$\",\"-a\":\"$dig_expected_address$\",\"-c\":\"$dig_critical$\",\"-l\":{\"value\":\"$dig_lookup$\",\"required\":true},\"-p\":\"$dig_port$\",\"-r\":\"$dig_retries$\",\"-t\":\"$dig_timeout$\",\"-w\":\"$dig_warning$\"},\"command\":\"check_dig\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"dig\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"dig_server\":\"$check_address$\"}}','admin','2016-05-14 21:35:34','uËˆ¿b®n U\Z‘=v·ÃLH','9a=7·9›ÔA²y7ÊPS'),(11,'icinga_command','disk','create',NULL,'{\"arguments\":{\"-A\":{\"set_if\":\"$disk_all$\",\"description\":\"Explicitly select all paths. This is equivalent to -R .*\"},\"-C\":{\"set_if\":\"$disk_clear$\",\"description\":\"Clear thresholds\"},\"-E\":{\"set_if\":\"$disk_exact_match$\",\"description\":\"For paths or partitions specified with -p, only check for exact paths\"},\"-I\":{\"value\":\"$disk_ignore_eregi_path$\",\"order\":\"2\",\"repeat_key\":true,\"description\":\"Regular expression to ignore selected path\\/partition (case insensitive) (may be repeated)\"},\"-K\":{\"value\":\"$disk_inode_cfree$\",\"description\":\"Exit with CRITICAL status if less than PERCENT of inode space is free\"},\"-L\":{\"set_if\":\"$disk_stat_remote_fs$\",\"description\":\"Only check local filesystems against thresholds. Yet call stat on remote filesystems to test if they are accessible (e.g. to detect Stale NFS Handles)\"},\"-M\":{\"set_if\":\"$disk_mountpoint$\",\"description\":\"Display the mountpoint instead of the partition\"},\"-R\":{\"value\":\"$disk_eregi_path$\",\"repeat_key\":true,\"description\":\"Case insensitive regular expression for path\\/partition (may be repeated)\"},\"-W\":{\"value\":\"$disk_inode_wfree$\",\"description\":\"Exit with WARNING status if less than PERCENT of inode space is free\"},\"-X\":{\"value\":\"$disk_exclude_type$\",\"repeat_key\":true,\"description\":\"Ignore all filesystems of indicated type (may be repeated)\"},\"-c\":{\"value\":\"$disk_cfree$\",\"order\":\"-3\",\"required\":true,\"description\":\"Exit with CRITICAL status if less than INTEGER units of disk are free or Exit with CRITCAL status if less than PERCENT of disk space is free\"},\"-e\":{\"set_if\":\"$disk_errors_only$\",\"description\":\"Display only devices\\/mountpoints with errors\"},\"-f\":{\"set_if\":\"$disk_ignore_reserved$\",\"description\":\"Don\'t account root-reserved blocks into freespace in perfdata\"},\"-g\":{\"value\":\"$disk_group$\",\"description\":\"Group paths. Thresholds apply to (free-)space of all partitions together\"},\"-i\":{\"value\":\"$disk_ignore_ereg_path$\",\"order\":\"2\",\"repeat_key\":true,\"description\":\"Regular expression to ignore selected path or partition (may be repeated)\"},\"-k\":{\"set_if\":\"$disk_kilobytes$\",\"description\":\"Same as --units kB\"},\"-l\":{\"set_if\":\"$disk_local$\",\"description\":\" Only check local filesystems\"},\"-m\":{\"set_if\":\"$disk_megabytes$\",\"description\":\"Same as --units MB\"},\"-p\":{\"value\":\"$disk_partitions$\",\"order\":\"1\",\"repeat_key\":true,\"description\":\"Path or partition (may be repeated)\"},\"-p_old\":{\"value\":\"$disk_partition$\",\"order\":\"1\"},\"-r\":{\"value\":\"$disk_ereg_path$\",\"repeat_key\":true,\"description\":\"Regular expression for path or partition (may be repeated)\"},\"-t\":{\"value\":\"$disk_timeout$\",\"description\":\"Seconds before connection times out (default: 10)\"},\"-u\":{\"value\":\"$disk_units$\",\"description\":\"Choose bytes, kB, MB, GB, TB (default: MB)\"},\"-w\":{\"value\":\"$disk_wfree$\",\"order\":\"-3\",\"required\":true,\"description\":\"Exit with WARNING status if less than INTEGER units of disk are free or Exit with WARNING status if less than PERCENT of disk space is free\"},\"-x\":{\"value\":\"$disk_partitions_excluded$\",\"description\":\"Ignore device (only works if -p unspecified)\"},\"-x_old\":\"$disk_partition_excluded$\"},\"command\":\"check_disk\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"disk\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"disk_cfree\":\"10%\",\"disk_exclude_type\":[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"devtmpfs\",\"devfs\",\"mtmfs\"],\"disk_inode_cfree\":\"10%\",\"disk_inode_wfree\":\"20%\",\"disk_megabytes\":true,\"disk_wfree\":\"20%\"}}','admin','2016-05-14 21:35:34','ŠÙ«@.Œó6ÌypÆ„¹8','uËˆ¿b®n U\Z‘=v·ÃLH'),(12,'icinga_command','disk_smb','create',NULL,'{\"arguments\":{\"-H\":{\"value\":\"$disk_smb_hostname$\",\"description\":\"NetBIOS name of the server.\"},\"-P\":{\"value\":\"$disk_smb_port$\",\"description\":\"Port to be used to connect to. Some Windows boxes use 139, others 445 (Defaults to smbclient default if omitted).\"},\"-W\":{\"value\":\"$disk_smb_workgroup$\",\"description\":\"Workgroup or Domain used (Defaults to \'WORKGROUP\' if omitted).\"},\"-a\":{\"value\":\"$disk_smb_address$\",\"description\":\"IP-address of HOST (only necessary if HOST is in another network).\"},\"-c\":{\"value\":\"$disk_smb_cused$\",\"description\":\"Percent of used space at which a critical will be generated (Defaults: 95%)\"},\"-p\":{\"value\":\"$disk_smb_password$\",\"description\":\"Password to log in to server. (Defaults to an empty password if omitted).\"},\"-s\":{\"value\":\"$disk_smb_share$\",\"description\":\"Share name to be tested.\"},\"-u\":{\"value\":\"$disk_smb_username$\",\"description\":\"Username to log in to server. (Defaults to \'guest\' if omitted).\"},\"-w\":{\"value\":\"$disk_smb_wused$\",\"description\":\"Percent of used space at which a warning will be generated (Default: 85%).\"}},\"command\":\"check_disk_smb\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"disk_smb\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"disk_smb_cused\":\"95%\",\"disk_smb_wused\":\"85%\"}}','admin','2016-05-14 21:35:34',']²q·4a¾-hÁ(ûd;·@d','ŠÙ«@.Œó6ÌypÆ„¹8'),(13,'icinga_command','dns','create',NULL,'{\"arguments\":{\"-A\":{\"set_if\":\"$dns_authoritative$\"},\"-H\":{\"value\":\"$dns_lookup$\",\"description\":\"The name or address you want to query.\"},\"-a\":{\"value\":\"$dns_expected_answers$\",\"description\":\"Optional ip address or host you expect the DNS server to return. Host must end with a dot (.). This option can be repeated multiple times (Returns OK if any value match). If multiple addresses are returned at once, you have to match the whole string of addresses separated with commas (sorted alphabetically).\"},\"-a_old\":\"$dns_expected_answer$\",\"-c\":{\"value\":\"$dns_ctime$\",\"description\":\"Return critical if elapsed time exceeds value.\"},\"-s\":{\"value\":\"$dns_server$\",\"description\":\"Optional DNS server you want to use for the lookup.\"},\"-t\":{\"value\":\"$dns_timeout$\",\"description\":\"Seconds before connection times out. Defaults to 10.\"},\"-w\":{\"value\":\"$dns_wtime$\",\"description\":\"Return warning if elapsed time exceeds value.\"}},\"command\":\"check_dns\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"dns\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"dns_expected_answer\":\"$check_address$\",\"dns_lookup\":\"$host.name$\",\"dns_timeout\":10}}','admin','2016-05-14 21:35:34','¨íía;¼¢?ÄÜ»%¬úŸ',']²q·4a¾-hÁ(ûd;·@d'),(14,'icinga_command','dummy','create',NULL,'{\"command\":\"check_dummy $dummy_state$ $dummy_text$\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"dummy\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"dummy_state\":0,\"dummy_text\":\"Check was successful.\"}}','admin','2016-05-14 21:35:35','«‚d]pÍ@ü‘(ÞèüÅëƒñö','¨íía;¼¢?ÄÜ»%¬úŸ'),(15,'icinga_command','fping4','create',NULL,'{\"arguments\":{\"-I\":\"$fping_source_interface$\",\"-S\":\"$fping_source_ip$\",\"-T\":\"$fping_target_timeout$\",\"-b\":\"$fping_bytes$\",\"-c\":\"$fping_crta$,$fping_cpl$%\",\"-i\":\"$fping_interval$\",\"-n\":\"$fping_number$\",\"-w\":\"$fping_wrta$,$fping_wpl$%\"},\"command\":\"check_fping $fping_address$ -4\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"fping4\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"fping_address\":\"$address$\",\"fping_cpl\":15,\"fping_crta\":200,\"fping_interval\":500,\"fping_number\":5,\"fping_wpl\":5,\"fping_wrta\":100}}','admin','2016-05-14 21:35:35','»	3.\\ŽÑbg`Ì‘\r{€âÀ`','«‚d]pÍ@ü‘(ÞèüÅëƒñö'),(16,'icinga_command','fping6','create',NULL,'{\"arguments\":{\"-I\":\"$fping_source_interface$\",\"-S\":\"$fping_source_ip$\",\"-T\":\"$fping_target_timeout$\",\"-b\":\"$fping_bytes$\",\"-c\":\"$fping_crta$,$fping_cpl$%\",\"-i\":\"$fping_interval$\",\"-n\":\"$fping_number$\",\"-w\":\"$fping_wrta$,$fping_wpl$%\"},\"command\":\"check_fping $fping_address$ -6\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"fping6\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"fping_address\":\"$address6$\",\"fping_cpl\":15,\"fping_crta\":200,\"fping_interval\":500,\"fping_number\":5,\"fping_wpl\":5,\"fping_wrta\":100}}','admin','2016-05-14 21:35:35','Fï„–8+ï~4]oôŸ×=Ö\\Qä','»	3.\\ŽÑbg`Ì‘\r{€âÀ`'),(17,'icinga_command','hostalive','create',NULL,'{\"arguments\":{\"-H\":\"$ping_address$\",\"-c\":\"$ping_crta$,$ping_cpl$%\",\"-p\":\"$ping_packets$\",\"-t\":\"$ping_timeout$\",\"-w\":\"$ping_wrta$,$ping_wpl$%\"},\"command\":\"check_ping\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"hostalive\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ping_address\":\"$check_address$\",\"ping_cpl\":100,\"ping_crta\":5000,\"ping_wpl\":80,\"ping_wrta\":3000}}','admin','2016-05-14 21:35:35','8S}QÄ-n+PÍ’*','Fï„–8+ï~4]oôŸ×=Ö\\Qä'),(18,'icinga_command','ftp','create',NULL,'{\"arguments\":{\"-A\":{\"set_if\":\"$ftp_all$\",\"description\":\"All expect strings need to occur in server response. Default is any.\"},\"-D\":{\"value\":\"$ftp_certificate$\",\"description\":\"Minimum number of days a certificate has to be valid. 1st value is number of days for warning, 2nd is critical (if not specified: 0) - seperated by comma.\"},\"-E_quit\":{\"order\":\"3\",\"set_if\":\"$ftp_escape_quit$\",\"description\":\"Can use \\n, \\r, \\t or \\\\ in quit string. Default is \\r\\n added to end of quit.\"},\"-E_send\":{\"order\":\"1\",\"set_if\":\"$ftp_escape_send$\",\"description\":\"Enable usage of \\n, \\r, \\t or \\\\ in send string. Default is nothing.\"},\"-H\":{\"value\":\"$ftp_address$\",\"description\":\"The host\'s address. Defaults to $address$ or $address6$ if the address attribute is not set.\"},\"-M\":{\"value\":\"$ftp_mismatch$\",\"description\":\"Accept expected string mismatches with states ok, warn, crit. Defaults to warn.\"},\"-S\":{\"set_if\":\"$ftp_ssl$\",\"description\":\"Use SSL for the connection.\"},\"-c\":{\"value\":\"$ftp_ctime$\",\"description\":\"Response time to result in critical status (seconds).\"},\"-d\":{\"value\":\"$ftp_delay$\",\"description\":\"Seconds to wait between sending string and polling for response.\"},\"-e\":{\"value\":\"$ftp_expect$\",\"description\":\"String to expect in server response (may be repeated).\"},\"-j\":{\"set_if\":\"$ftp_jail$\",\"description\":\"Hide output from TCP socket.\"},\"-m\":{\"value\":\"$ftp_maxbytes$\",\"description\":\"Close connection once more than this number of bytes are received.\"},\"-p\":{\"value\":\"$ftp_port$\",\"description\":\"The FTP port number. Defaults to none\"},\"-q\":{\"value\":\"$ftp_quit$\",\"order\":\"4\",\"description\":\"String to send server to initiate a clean close of the connection.\"},\"-r\":{\"value\":\"$ftp_refuse$\",\"description\":\"Accept TCP refusals with states ok, warn, crit. Defaults to crit.\"},\"-s\":{\"value\":\"$ftp_send$\",\"order\":\"2\",\"description\":\"String to send to the server.\"},\"-t\":{\"value\":\"$ftp_timeout$\",\"description\":\"Seconds before connection times out. Defaults to 10.\"},\"-w\":{\"value\":\"$ftp_wtime$\",\"description\":\"Response time to result in warning status (seconds).\"}},\"command\":\"check_ftp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ftp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ftp_address\":\"$check_address$\",\"ftp_mismatch\":\"warn\",\"ftp_refuse\":\"crit\",\"ftp_ssl\":false,\"ftp_timeout\":10}}','admin','2016-05-14 21:35:35','÷ døOv^ã¼Ò(8µáp*¸^','8S}QÄ-n+PÍ’*'),(19,'icinga_command','hostalive4','create',NULL,'{\"arguments\":{\"-H\":\"$ping_address$\",\"-c\":\"$ping_crta$,$ping_cpl$%\",\"-p\":\"$ping_packets$\",\"-t\":\"$ping_timeout$\",\"-w\":\"$ping_wrta$,$ping_wpl$%\"},\"command\":\"check_ping -4\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"hostalive4\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"ping_address\":\"$address$\",\"ping_cpl\":100,\"ping_crta\":5000,\"ping_wpl\":80,\"ping_wrta\":3000}}','admin','2016-05-14 21:35:35','r÷–›$^\"À´ üæ3Ú\\/51~','÷ døOv^ã¼Ò(8µáp*¸^'),(20,'icinga_command','hostalive6','create',NULL,'{\"arguments\":{\"-H\":\"$ping_address$\",\"-c\":\"$ping_crta$,$ping_cpl$%\",\"-p\":\"$ping_packets$\",\"-t\":\"$ping_timeout$\",\"-w\":\"$ping_wrta$,$ping_wpl$%\"},\"command\":\"check_ping -6\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"hostalive6\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"ping_address\":\"$address6$\",\"ping_cpl\":100,\"ping_crta\":5000,\"ping_wpl\":80,\"ping_wrta\":3000}}','admin','2016-05-14 21:35:35','¤ª\\ó ¸íîã°å*h0ÝÂ×åq','r÷–›$^\"À´ üæ3Ú\\/51~'),(21,'icinga_command','hpjd','create',NULL,'{\"arguments\":{\"-C\":\"$hpjd_community$\",\"-H\":\"$hpjd_address$\",\"-p\":\"$hpjd_port$\"},\"command\":\"check_hpjd\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"hpjd\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"hpjd_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:35','^Án†6Ûf\'îCKœ°¡ªŽg','¤ª\\ó ¸íîã°å*h0ÝÂ×åq'),(22,'icinga_command','icinga','create',NULL,'{\"methods_execute\":\"PluginCheck\",\"object_name\":\"icinga\",\"object_type\":\"external_object\",\"timeout\":60}','admin','2016-05-14 21:35:35','†)2„”þçÃ¨j\0P†´¢','^Án†6Ûf\'îCKœ°¡ªŽg'),(23,'icinga_command','icmp','create',NULL,'{\"arguments\":{\"-H\":{\"value\":\"$icmp_address$\",\"order\":\"1\",\"repeat_key\":false},\"-I\":\"$icmp_target_interval$\",\"-b\":\"$icmp_data_bytes$\",\"-c\":\"$icmp_crta$,$icmp_cpl$%\",\"-i\":\"$icmp_packet_interval$\",\"-m\":\"$icmp_hosts_alive$\",\"-n\":\"$icmp_packets$\",\"-s\":\"$icmp_source$\",\"-t\":\"$icmp_timeout$\",\"-w\":\"$icmp_wrta$,$icmp_wpl$%\"},\"command\":\"check_icmp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"icmp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"icmp_address\":\"$address$\",\"icmp_cpl\":15,\"icmp_crta\":200,\"icmp_wpl\":5,\"icmp_wrta\":100}}','admin','2016-05-14 21:35:35','ÿýü/Œ›˜ V òÑŠÝ#¹^','†)2„”þçÃ¨j\0P†´¢'),(24,'icinga_command','ido','create',NULL,'{\"methods_execute\":\"PluginCheck\",\"object_name\":\"ido\",\"object_type\":\"external_object\",\"timeout\":60}','admin','2016-05-14 21:35:35','¨xE:?é|U\\ÊpƒÇê/YQ3','ÿýü/Œ›˜ V òÑŠÝ#¹^'),(25,'icinga_command','imap','create',NULL,'{\"arguments\":{\"-H\":\"$imap_address$\",\"-p\":\"$imap_port$\",\"-t\":\"$imap_timeout$\"},\"command\":\"check_imap\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"imap\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"imap_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:35','©ËîMaÃˆ@\\sªüÒÑÍ´Uò’','¨xE:?é|U\\ÊpƒÇê/YQ3'),(26,'icinga_command','http','create',NULL,'{\"arguments\":{\"-6\":{\"set_if\":\"$http_ipv6$\",\"description\":\"Use IPv6 only\"},\"-4\":{\"set_if\":\"$http_ipv4$\",\"description\":\"Use IPv4 only\"},\"--invert-regex\":{\"set_if\":\"$http_invertregex$\",\"description\":\"Return CRITICAL if found, OK if not\"},\"--no-body\":{\"set_if\":\"$http_ignore_body$\"},\"--sni\":{\"set_if\":\"$http_sni$\"},\"-A\":{\"value\":\"$http_useragent$\",\"description\":\"String to be sent in http header as User Agent\"},\"-C\":{\"value\":\"$http_certificate$\",\"description\":\"Minimum number of days a certificate has to be valid. Port defaults to 443.\"},\"-E\":{\"set_if\":\"$http_extendedperfdata$\",\"description\":\"Print additional perfdata\"},\"-H\":\"$http_vhost$\",\"-I\":\"$http_address$\",\"-J\":{\"value\":\"$http_clientcert$\",\"description\":\"Name of file contains the client certificate (PEM format)\"},\"-K\":{\"value\":\"$http_privatekey$\",\"description\":\"Name of file contains the private key (PEM format)\"},\"-M\":{\"value\":\"$http_maxage$\",\"description\":\"Warn if document is more than seconds old\"},\"-P\":{\"value\":\"$http_post$\",\"description\":\"URL encoded http POST data\"},\"-R\":{\"value\":\"$http_expect_body_eregi$\",\"order\":\"2\",\"description\":\"Search page for case-insensitive regex\"},\"-S\":{\"set_if\":\"$http_ssl$\"},\"-S1\":{\"set_if\":\"$http_ssl_force_tlsv1$\"},\"-S1+\":{\"set_if\":\"$http_ssl_force_tlsv1_or_higher$\"},\"-S1.1\":{\"set_if\":\"$http_ssl_force_tlsv1_1$\"},\"-S1.1+\":{\"set_if\":\"$http_ssl_force_tlsv1_1_or_higher$\"},\"-S1.2\":{\"set_if\":\"$http_ssl_force_tlsv1_2$\"},\"-S1.2+\":{\"set_if\":\"$http_ssl_force_tlsv1_2_or_higher$\"},\"-S2\":{\"set_if\":\"$http_ssl_force_sslv2$\"},\"-S2+\":{\"set_if\":\"$http_ssl_force_sslv2_or_higher$\"},\"-S3\":{\"set_if\":\"$http_ssl_force_sslv3$\"},\"-S3+\":{\"set_if\":\"$http_ssl_force_sslv3_or_higher$\"},\"-T\":{\"value\":\"$http_contenttype$\",\"description\":\"Specify Content-Type header when POSTing\"},\"-a\":{\"value\":\"$http_auth_pair$\",\"description\":\"Username:password on sites with basic authentication\"},\"-b\":{\"value\":\"$http_proxy_auth_pair$\",\"description\":\"Username:password on proxy-servers with basic authentication\"},\"-c\":\"$http_critical_time$\",\"-d\":{\"value\":\"$http_headerstring$\",\"description\":\"String to expect in the response headers\"},\"-e\":\"$http_expect$\",\"-f\":{\"value\":\"$http_onredirect$\",\"description\":\"How to handle redirect pages\"},\"-j\":{\"value\":\"$http_method$\",\"description\":\"Set http method (for example: HEAD, OPTIONS, TRACE, PUT, DELETE)\"},\"-k\":{\"value\":\"$http_header$\",\"description\":\"Any other tags to be sent in http header\"},\"-l\":{\"order\":\"1\",\"set_if\":\"$http_linespan$\",\"description\":\"Allow regex to span newline\"},\"-m\":{\"value\":\"$http_pagesize$\",\"description\":\"Minim page size required:Maximum page size required\"},\"-p\":\"$http_port$\",\"-r\":{\"value\":\"$http_expect_body_regex$\",\"order\":\"2\",\"description\":\"Search page for regex\"},\"-s\":{\"value\":\"$http_string$\",\"description\":\"String to expect in the content\"},\"-t\":{\"value\":\"$http_timeout$\",\"description\":\"Seconds before connection times out\"},\"-u\":\"$http_uri$\",\"-w\":\"$http_warn_time$\"},\"command\":\"check_http\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"http\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":\"$http_ipv4$\",\"check_ipv6\":\"$http_ipv6$\",\"http_address\":\"$check_address$\",\"http_invertregex\":false,\"http_linespan\":false,\"http_sni\":false,\"http_ssl\":false}}','admin','2016-05-14 21:35:35','Ìû[„×äVŸÿãÊ³Ó‰','©ËîMaÃˆ@\\sªüÒÑÍ´Uò’'),(27,'icinga_command','ldap','create',NULL,'{\"arguments\":{\"-3\":{\"set_if\":\"$ldap_v3$\",\"description\":\"Use LDAP protocol version 3\"},\"-2\":{\"set_if\":\"$ldap_v2$\",\"description\":\"Use LDAP protocol version 2\"},\"-D\":{\"value\":\"$ldap_bind$\",\"description\":\"ldap bind DN (if required)\"},\"-H\":{\"value\":\"$ldap_address$\",\"description\":\"Host name, IP Address, or unix socket (must be an absolute path)\"},\"-P\":{\"value\":\"$ldap_pass$\",\"description\":\"ldap password (if required)\"},\"-S\":{\"set_if\":\"$ldap_ssl$\",\"description\":\"use ldaps (ldap v2 ssl method). this also sets the default port to 636\"},\"-T\":{\"set_if\":\"$ldap_starttls$\",\"description\":\"use starttls mechanism introduced in protocol version 3\"},\"-a\":{\"value\":\"$ldap_attr$\",\"description\":\"ldap attribute to search (default: \\\"(objectclass=*)\\\"\"},\"-b\":{\"value\":\"$ldap_base$\",\"required\":true,\"description\":\"ldap base (eg. ou=my unit, o=my org, c=at\"},\"-c\":{\"value\":\"$ldap_critical$\",\"description\":\"Response time to result in critical status (seconds)\"},\"-p\":{\"value\":\"$ldap_port$\",\"description\":\"Port number (default: 389)\"},\"-t\":{\"value\":\"$ldap_timeout$\",\"description\":\"Seconds before connection times out (default: 10)\"},\"-v\":{\"set_if\":\"$ldap_verbose$\",\"description\":\"Show details for command-line debugging\"},\"-w\":{\"value\":\"$ldap_warning$\",\"description\":\"Response time to result in warning status (seconds)\"}},\"command\":\"check_ldap\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ldap\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ldap_address\":\"$check_address$\",\"ldap_timeout\":10,\"ldap_v2\":true,\"ldap_v3\":false,\"ldap_verbose\":false}}','admin','2016-05-14 21:35:35','\"Øiªë¼{>ýI¦w\0—DS8','Ìû[„×äVŸÿãÊ³Ó‰'),(28,'icinga_command','load','create',NULL,'{\"arguments\":{\"-c\":{\"value\":\"$load_cload1$,$load_cload5$,$load_cload15$\",\"description\":\"Exit with CRITICAL status if load average exceed CLOADn; the load average format is the same used by \'uptime\' and \'w\'\"},\"-r\":{\"set_if\":\"$load_percpu$\",\"description\":\"Divide the load averages by the number of CPUs (when possible)\"},\"-w\":{\"value\":\"$load_wload1$,$load_wload5$,$load_wload15$\",\"description\":\"Exit with WARNING status if load average exceeds WLOADn\"}},\"command\":\"check_load\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"load\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"load_cload1\":10,\"load_cload15\":4,\"load_cload5\":6,\"load_percpu\":false,\"load_wload1\":5,\"load_wload15\":3,\"load_wload5\":4}}','admin','2016-05-14 21:35:35','×t˜³+áuqžrùã×MKÓ”À','\"Øiªë¼{>ýI¦w\0—DS8'),(29,'icinga_command','mailq','create',NULL,'{\"arguments\":{\"-C\":{\"value\":\"$mailq_domain_critical$\",\"description\":\"Min. number of messages for same domain in queue to generate critical alert ( W < C )\"},\"-M\":{\"value\":\"$mailq_servertype$\",\"description\":\"[ sendmail | qmail | postfix | exim | nullmailer ] (default = autodetect)\"},\"-W\":{\"value\":\"$mailq_domain_warning$\",\"description\":\"Min. number of messages for same domain in queue to generate warning\"},\"-c\":{\"value\":\"$mailq_critical$\",\"required\":true,\"description\":\"Min. number of messages in queue to generate critical alert ( w < c )\"},\"-t\":{\"value\":\"$mailq_timeout$\",\"description\":\"Plugin timeout in seconds (default = 15)\"},\"-w\":{\"value\":\"$mailq_warning$\",\"required\":true,\"description\":\"Min. number of messages in queue to generate warning\"}},\"command\":\"check_mailq\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"mailq\",\"object_type\":\"external_object\",\"timeout\":60}','admin','2016-05-14 21:35:36','CÝØ\"ãžoÿ9Ï„dðÜvb££Y','×t˜³+áuqžrùã×MKÓ”À'),(30,'icinga_command','negate','create',NULL,'{\"arguments\":{\"--wrapped-plugin\":{\"value\":{\"type\":\"Function\",\"body\":\"\\/* Unable to fetch function body through API *\\/\"},\"order\":\"1\"},\"-T\":\"$negate_timeout_result$\",\"-c\":\"$negate_critical$\",\"-o\":\"$negate_ok$\",\"-s\":{\"set_if\":\"$negate_substitute$\"},\"-t\":\"$negate_timeout$\",\"-w\":\"$negate_warning$\"},\"command\":\"negate\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"negate\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"negate_timeout_result\":\"UNKNOWN\"}}','admin','2016-05-14 21:35:36','%]¬)/j ÞÕ„Ïy¶¯ó','CÝØ\"ãžoÿ9Ï„dðÜvb££Y'),(31,'icinga_command','mysql','create',NULL,'{\"arguments\":{\"-C\":\"$mysql_cacert$\",\"-D\":\"$mysql_cadir$\",\"-H\":\"$mysql_hostname$\",\"-L\":\"$mysql_ciphers$\",\"-P\":\"$mysql_port$\",\"-S\":{\"set_if\":\"$mysql_check_slave$\"},\"-a\":\"$mysql_cert$\",\"-c\":\"$mysql_critical$\",\"-d\":\"$mysql_database$\",\"-f\":\"$mysql_file$\",\"-g\":\"$mysql_group$\",\"-k\":\"$mysql_key$\",\"-l\":{\"set_if\":\"$mysql_ssl$\"},\"-n\":{\"set_if\":\"$mysql_ignore_auth$\"},\"-p\":\"$mysql_password$\",\"-s\":\"$mysql_socket$\",\"-u\":\"$mysql_username$\",\"-w\":\"$mysql_warning$\"},\"command\":\"check_mysql\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"mysql\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"mysql_hostname\":\"$check_address$\"}}','admin','2016-05-14 21:35:36','ÊEÆ˜ñd™ºAÚ]¸ƒK8|À;9','%]¬)/j ÞÕ„Ïy¶¯ó'),(32,'icinga_command','nscp','create',NULL,'{\"arguments\":{\"-H\":\"$nscp_address$\",\"-c\":\"$nscp_crit$\",\"-d\":{\"value\":\"SHOWALL\",\"set_if\":\"$nscp_showall$\",\"description\":\"Use with SERVICESTATE to see working services or PROCSTATE for running processes\"},\"-l\":{\"value\":\"$nscp_params$\",\"repeat_key\":false},\"-p\":\"$nscp_port$\",\"-s\":\"$nscp_password$\",\"-t\":\"$nscp_timeout$\",\"-v\":{\"value\":\"$nscp_variable$\",\"required\":true},\"-w\":\"$nscp_warn$\"},\"command\":\"check_nt\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"nscp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"nscp_address\":\"$check_address$\",\"nscp_port\":12489,\"nscp_showall\":false}}','admin','2016-05-14 21:35:36','E¤vªÆ:oÞÅrÄh³©ÀÐbv•','ÊEÆ˜ñd™ºAÚ]¸ƒK8|À;9'),(33,'icinga_command','nrpe','create',NULL,'{\"arguments\":{\"-6\":{\"set_if\":\"$nrpe_ipv6$\",\"description\":\"Use IPv6 only\"},\"-4\":{\"set_if\":\"$nrpe_ipv4$\",\"description\":\"Use IPv4 only\"},\"-H\":\"$nrpe_address$\",\"-a\":{\"value\":\"$nrpe_arguments$\",\"order\":\"1\",\"repeat_key\":false},\"-c\":\"$nrpe_command$\",\"-n\":{\"set_if\":\"$nrpe_no_ssl$\",\"description\":\"Do not use SSL.\"},\"-p\":\"$nrpe_port$\",\"-t\":\"$nrpe_timeout$\",\"-u\":{\"set_if\":\"$nrpe_timeout_unknown$\",\"description\":\"Make socket timeouts return an UNKNOWN state instead of CRITICAL\"}},\"command\":\"check_nrpe\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"nrpe\",\"object_type\":\"external_object\",\"timeout\":300,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":\"$nrpe_ipv4$\",\"check_ipv6\":\"$nrpe_ipv6$\",\"nrpe_address\":\"$check_address$\",\"nrpe_no_ssl\":false,\"nrpe_timeout_unknown\":false}}','admin','2016-05-14 21:35:36','Õ?\nëáGC]o³jøm€(ƒï','E¤vªÆ:oÞÅrÄh³©ÀÐbv•'),(34,'icinga_command','ntp_peer','create',NULL,'{\"arguments\":{\"-C\":\"$ntp_cstratum$\",\"-H\":\"$ntp_address$\",\"-W\":\"$ntp_wstratum$\",\"-c\":\"$ntp_critical$\",\"-j\":\"$ntp_wjitter$\",\"-k\":\"$ntp_cjitter$\",\"-m\":\"$ntp_wsource$\",\"-n\":\"$ntp_csource$\",\"-p\":\"$ntp_port$\",\"-t\":\"$ntp_timeout$\",\"-w\":\"$ntp_warning$\"},\"command\":\"check_ntp_peer\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ntp_peer\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ntp_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:36','ôs»k‚h†—zYÄ/£Ö™(','Õ?\nëáGC]o³jøm€(ƒï'),(35,'icinga_command','ntp_time','create',NULL,'{\"arguments\":{\"-H\":\"$ntp_address$\",\"-c\":\"$ntp_critical$\",\"-o\":\"$ntp_timeoffset$\",\"-p\":\"$ntp_port$\",\"-q\":\"$ntp_quit$\",\"-t\":\"$ntp_timeout$\",\"-w\":\"$ntp_warning$\"},\"command\":\"check_ntp_time\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ntp_time\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ntp_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:36','£lêÇ\'HÔQ£ý\"+õÑ8¼D‘\n','ôs»k‚h†—zYÄ/£Ö™('),(36,'icinga_command','passive','create',NULL,'{\"command\":\"check_dummy $dummy_state$ $dummy_text$\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"passive\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"dummy_state\":3,\"dummy_text\":\"No Passive Check Result Received.\"}}','admin','2016-05-14 21:35:36','Ãd+ÌäU»Ã\r|X:2D u<','£lêÇ\'HÔQ£ý\"+õÑ8¼D‘\n'),(37,'icinga_command','pgsql','create',NULL,'{\"arguments\":{\"-C\":\"$pgsql_query_critical$\",\"-H\":\"$pgsql_hostname$\",\"-P\":\"$pgsql_port$\",\"-W\":\"$pgsql_query_warning$\",\"-c\":\"$pgsql_critical$\",\"-d\":\"$pgsql_database$\",\"-l\":\"$pgsql_username$\",\"-o\":\"$pgsql_options$\",\"-p\":\"$pgsql_password$\",\"-q\":\"$pgsql_query$\",\"-t\":\"$pgsql_timeout$\",\"-w\":\"$pgsql_warning$\"},\"command\":\"check_pgsql\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"pgsql\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"pgsql_hostname\":\"$check_address$\"}}','admin','2016-05-14 21:35:36','¨Ùª¢Ü  °cþí½ê#','Ãd+ÌäU»Ã\r|X:2D u<'),(38,'icinga_command','ping','create',NULL,'{\"arguments\":{\"-H\":\"$ping_address$\",\"-c\":\"$ping_crta$,$ping_cpl$%\",\"-p\":\"$ping_packets$\",\"-t\":\"$ping_timeout$\",\"-w\":\"$ping_wrta$,$ping_wpl$%\"},\"command\":\"check_ping\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ping\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ping_address\":\"$check_address$\",\"ping_cpl\":15,\"ping_crta\":200,\"ping_wpl\":5,\"ping_wrta\":100}}','admin','2016-05-14 21:35:36','ŠôR;U$qŠ	@ZsYû','¨Ùª¢Ü  °cþí½ê#'),(39,'icinga_command','ping4','create',NULL,'{\"arguments\":{\"-H\":\"$ping_address$\",\"-c\":\"$ping_crta$,$ping_cpl$%\",\"-p\":\"$ping_packets$\",\"-t\":\"$ping_timeout$\",\"-w\":\"$ping_wrta$,$ping_wpl$%\"},\"command\":\"check_ping -4\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ping4\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"ping_address\":\"$address$\",\"ping_cpl\":15,\"ping_crta\":200,\"ping_wpl\":5,\"ping_wrta\":100}}','admin','2016-05-14 21:35:36','–{ÅN¿_áó*ã‹’ïÕ¼ßœš','ŠôR;U$qŠ	@ZsYû'),(40,'icinga_command','ping6','create',NULL,'{\"arguments\":{\"-H\":\"$ping_address$\",\"-c\":\"$ping_crta$,$ping_cpl$%\",\"-p\":\"$ping_packets$\",\"-t\":\"$ping_timeout$\",\"-w\":\"$ping_wrta$,$ping_wpl$%\"},\"command\":\"check_ping -6\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ping6\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"ping_address\":\"$address6$\",\"ping_cpl\":15,\"ping_crta\":200,\"ping_wpl\":5,\"ping_wrta\":100}}','admin','2016-05-14 21:35:36','£¢PÿÙï\0oS·‘m?ÞÚµv>÷','–{ÅN¿_áó*ã‹’ïÕ¼ßœš'),(41,'icinga_command','pop','create',NULL,'{\"arguments\":{\"-H\":\"$pop_address$\",\"-p\":\"$pop_port$\",\"-t\":\"$pop_timeout$\"},\"command\":\"check_pop\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"pop\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"pop_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:36','*+Û™\nÎ2¥zE;’Å)D=’c','£¢PÿÙï\0oS·‘m?ÞÚµv>÷'),(42,'icinga_command','random','create',NULL,'{\"methods_execute\":\"PluginCheck\",\"object_name\":\"random\",\"object_type\":\"external_object\",\"timeout\":60}','admin','2016-05-14 21:35:36','+¾¹ü(Ã”¡÷üÓ¨5^Ÿ·Ìã1','*+Û™\nÎ2¥zE;’Å)D=’c'),(43,'icinga_command','simap','create',NULL,'{\"arguments\":{\"-H\":\"$simap_address$\",\"-p\":\"$simap_port$\",\"-t\":\"$simap_timeout$\"},\"command\":\"check_simap\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"simap\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"simap_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:36','koùWÑ&§ÝÕÃ^@°_»×}®','+¾¹ü(Ã”¡÷üÓ¨5^Ÿ·Ìã1'),(44,'icinga_command','procs','create',NULL,'{\"arguments\":{\"--ereg-argument-array\":{\"value\":\"$procs_argument_regex$\",\"description\":\"Only scan for processes with args that contain the regex STRING\"},\"-C\":{\"value\":\"$procs_command$\",\"description\":\"Only scan for exact matches of COMMAND (without path)\"},\"-P\":{\"value\":\"$procs_pcpu$\",\"description\":\"Only scan for processes with PCPU higher than indicated\"},\"-T\":{\"set_if\":\"$procs_traditional$\",\"description\":\"Filter own process the traditional way by PID instead of \\/proc\\/pid\\/exe\"},\"-a\":{\"value\":\"$procs_argument$\",\"description\":\"Only scan for processes with args that contain STRING\"},\"-c\":{\"value\":\"$procs_critical$\",\"description\":\"Generate critical state if metric is outside this range\"},\"-k\":{\"set_if\":\"$procs_nokthreads$\",\"description\":\"Only scan for non kernel threads\"},\"-m\":{\"value\":\"$procs_metric$\",\"description\":\"Check thresholds against metric\"},\"-p\":{\"value\":\"$procs_ppid$\",\"description\":\"Only scan for children of the parent process ID indicated\"},\"-r\":{\"value\":\"$procs_rss$\",\"description\":\"Only scan for processes with RSS higher than indicated\"},\"-s\":{\"value\":\"$procs_state$\",\"description\":\"Only scan for processes that have one or more of the status flags you specify\"},\"-t\":{\"value\":\"$procs_timeout$\",\"description\":\"Seconds before plugin times out\"},\"-u\":{\"value\":\"$procs_user$\",\"description\":\"Only scan for processes with user name or ID indicated\"},\"-w\":{\"value\":\"$procs_warning$\",\"description\":\"Generate warning state if metric is outside this range\"},\"-z\":{\"value\":\"$procs_vsz$\",\"description\":\"Only scan for processes with VSZ higher than indicated\"}},\"command\":\"check_procs\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"procs\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"procs_critical\":400,\"procs_nokthreads\":false,\"procs_traditional\":false,\"procs_warning\":250}}','admin','2016-05-14 21:35:36','6´¶L5\0…¾ÿÍÆÞùp','koùWÑ&§ÝÕÃ^@°_»×}®'),(45,'icinga_command','smtp','create',NULL,'{\"arguments\":{\"-A\":\"$smtp_authtype$\",\"-C\":\"$smtp_command$\",\"-D\":\"$smtp_certificate_age$\",\"-F\":\"$smtp_helo_fqdn$\",\"-H\":\"$smtp_address$\",\"-P\":\"$smtp_authpass$\",\"-R\":\"$smtp_response$\",\"-S\":\"$smtp_starttls$\",\"-U\":\"$smtp_authuser$\",\"-c\":\"$smtp_critical$\",\"-e\":\"$smtp_expect$\",\"-f\":\"$smtp_mail_from$\",\"-p\":\"$smtp_port$\",\"-q\":\"$smtp_ignore_quit$\",\"-t\":\"$smtp_timeout$\",\"-w\":\"$smtp_warning$\"},\"command\":\"check_smtp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"smtp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"smtp_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:37','Ó€9ü¬yqˆþcˆùÝqµT£','6´¶L5\0…¾ÿÍÆÞùp'),(46,'icinga_command','snmp','create',NULL,'{\"arguments\":{\"--invert-search\":{\"set_if\":\"$snmp_invert_search$\",\"description\":\"Invert search result and return CRITICAL if found\"},\"--rate\":{\"set_if\":\"$snmp_rate$\",\"description\":\"Enable rate calculation\"},\"--rate-multiplier\":\"$snmp_rate_multiplier$\",\"-C\":\"$snmp_community$\",\"-H\":\"$snmp_address$\",\"-P\":\"$snmp_version$\",\"-R\":\"$snmp_eregi$\",\"-c\":\"$snmp_crit$\",\"-l\":\"$snmp_label$\",\"-m\":\"$snmp_miblist$\",\"-n\":{\"set_if\":\"$snmp_getnext$\",\"description\":\"Use SNMP GETNEXT instead of SNMP GET\"},\"-o\":\"$snmp_oid$\",\"-p\":\"$snmp_port$\",\"-r\":\"$snmp_ereg$\",\"-s\":\"$snmp_string$\",\"-t\":\"$snmp_timeout$\",\"-u\":\"$snmp_units$\",\"-w\":\"$snmp_warn$\"},\"command\":\"check_snmp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"snmp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"snmp_address\":{\"type\":\"Function\"},\"snmp_community\":\"public\",\"snmp_invert_search\":false,\"snmp_timeout\":\"10\"}}','admin','2016-05-14 21:35:37','?ŒÆŽiDÈ¬ôÚaÛœä=Œr˜¾','Ó€9ü¬yqˆþcˆùÝqµT£'),(47,'icinga_command','snmp-uptime','create',NULL,'{\"arguments\":{\"--invert-search\":{\"set_if\":\"$snmp_invert_search$\",\"description\":\"Invert search result and return CRITICAL if found\"},\"--rate\":{\"set_if\":\"$snmp_rate$\",\"description\":\"Enable rate calculation\"},\"--rate-multiplier\":\"$snmp_rate_multiplier$\",\"-C\":\"$snmp_community$\",\"-H\":\"$snmp_address$\",\"-P\":\"$snmp_version$\",\"-R\":\"$snmp_eregi$\",\"-c\":\"$snmp_crit$\",\"-l\":\"$snmp_label$\",\"-m\":\"$snmp_miblist$\",\"-n\":{\"set_if\":\"$snmp_getnext$\",\"description\":\"Use SNMP GETNEXT instead of SNMP GET\"},\"-o\":\"$snmp_oid$\",\"-p\":\"$snmp_port$\",\"-r\":\"$snmp_ereg$\",\"-s\":\"$snmp_string$\",\"-t\":\"$snmp_timeout$\",\"-u\":\"$snmp_units$\",\"-w\":\"$snmp_warn$\"},\"command\":\"check_snmp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"snmp-uptime\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"snmp_address\":{\"type\":\"Function\"},\"snmp_community\":\"public\",\"snmp_invert_search\":false,\"snmp_oid\":\"1.3.6.1.2.1.1.3.0\",\"snmp_timeout\":\"10\"}}','admin','2016-05-14 21:35:37','Â@`JýâCÛÔÃS“¨ ™ýwÍ','?ŒÆŽiDÈ¬ôÚaÛœä=Œr˜¾'),(48,'icinga_command','spop','create',NULL,'{\"arguments\":{\"-H\":\"$spop_address$\",\"-p\":\"$spop_port$\",\"-t\":\"$spop_timeout$\"},\"command\":\"check_spop\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"spop\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"spop_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:37','&-ÒÙ\'¶HruN‚-£F·\\¬','Â@`JýâCÛÔÃS“¨ ™ýwÍ'),(49,'icinga_command','ssh','create',NULL,'{\"arguments\":{\"-p\":\"$ssh_port$\",\"-t\":\"$ssh_timeout$\",\"host\":{\"value\":\"$ssh_address$\",\"order\":\"1\"}},\"command\":\"check_ssh\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ssh\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ssh_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:37','7!ù ˆ§¦Ó>­U/\0\0o!!´ ±','&-ÒÙ\'¶HruN‚-£F·\\¬'),(50,'icinga_command','snmpv3','create',NULL,'{\"arguments\":{\"--invert-search\":{\"set_if\":\"$snmpv3_invert_search$\",\"description\":\"Invert search result and return CRITICAL if found\"},\"--rate\":{\"set_if\":\"$snmpv3_rate$\",\"description\":\"Enable rate calculation\"},\"--rate-multiplier\":\"$snmpv3_rate_multiplier$\",\"-A\":{\"value\":\"$snmpv3_auth_key$\",\"description\":\"SNMPv3 authentication password\"},\"-H\":{\"value\":\"$snmpv3_address$\",\"description\":\"Host name, IP Address, or unix socket (must be an absolute path)\"},\"-L\":{\"value\":\"$snmpv3_seclevel$\",\"description\":\"SNMPv3 securityLevel\"},\"-P\":{\"value\":3,\"description\":\"SNMP protocol version\"},\"-R\":{\"value\":\"$snmpv3_eregi$\",\"description\":\"Return OK state (for that OID) if case-insensitive extended REGEX matches\"},\"-U\":{\"value\":\"$snmpv3_user$\",\"description\":\"SNMPv3 username\"},\"-X\":{\"value\":\"$snmpv3_priv_key$\",\"description\":\"SNMPv3 privacy password\"},\"-a\":{\"value\":\"$snmpv3_auth_alg$\",\"description\":\"SNMPv3 auth proto\"},\"-c\":{\"value\":\"$snmpv3_crit$\",\"description\":\"Critical threshold range(s)\"},\"-l\":{\"value\":\"$snmpv3_label$\",\"description\":\"Prefix label for output from plugin\"},\"-n\":{\"set_if\":\"$snmpv3_getnext$\",\"description\":\"Use SNMP GETNEXT instead of SNMP GET\"},\"-o\":{\"value\":\"$snmpv3_oid$\",\"description\":\"Object identifier(s) or SNMP variables whose value you wish to query\"},\"-r\":{\"value\":\"$snmpv3_ereg$\",\"description\":\"Return OK state (for that OID) if extended regular expression REGEX matches\"},\"-s\":{\"value\":\"$snmpv3_string$\",\"description\":\"Return OK state (for that OID) if STRING is an exact match\"},\"-t\":\"$snmpv3_timeout$\",\"-u\":\"$snmpv3_units$\",\"-w\":{\"value\":\"$snmpv3_warn$\",\"description\":\"Warning threshold range(s)\"},\"-x\":{\"value\":\"$snmpv3_priv_alg$\",\"description\":\"SNMPv3 priv proto (default DES)\"}},\"command\":\"check_snmp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"snmpv3\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"snmpv3_address\":\"$check_address$\",\"snmpv3_auth_alg\":\"SHA\",\"snmpv3_priv_alg\":\"AES\",\"snmpv3_seclevel\":\"authPriv\",\"snmpv3_timeout\":\"10\"}}','admin','2016-05-14 21:35:37','^/èÉÍ[Ô0%‰,*a¾ö¿´.','7!ù ˆ§¦Ó>­U/\0\0o!!´ ±'),(51,'icinga_command','ssl','create',NULL,'{\"arguments\":{\"--ssl\":{},\"--timeout\":\"$ssl_timeout$\",\"-D\":\"$ssl_cert_valid_days_warn$,$ssl_cert_valid_days_critical$\",\"-H\":\"$ssl_address$\",\"-p\":\"$ssl_port$\"},\"command\":\"check_tcp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ssl\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ssl_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:37','§g4„ÝoFª?rº¯ðõQiPÁ','^/èÉÍ[Ô0%‰,*a¾ö¿´.'),(52,'icinga_command','swap','create',NULL,'{\"arguments\":{\"-c\":\"$swap_cfree$%\",\"-w\":\"$swap_wfree$%\"},\"command\":\"check_swap\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"swap\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"swap_cfree\":25,\"swap_wfree\":50}}','admin','2016-05-14 21:35:37','µ[Üø¸¹FŠŒézD—Ò,”H°','§g4„ÝoFª?rº¯ðõQiPÁ'),(53,'icinga_command','ssmtp','create',NULL,'{\"arguments\":{\"-H\":\"$ssmtp_address$\",\"-p\":\"$ssmtp_port$\"},\"command\":\"check_ssmtp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ssmtp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ssmtp_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:37','éVýCÑ‚™¡édé¶øþ¥Á','µ[Üø¸¹FŠŒézD—Ò,”H°'),(54,'icinga_command','udp','create',NULL,'{\"arguments\":{\"-6\":{\"set_if\":\"$udp_ipv6$\",\"description\":\"Use IPv6 only\"},\"-4\":{\"set_if\":\"$udp_ipv4$\",\"description\":\"Use IPv4 only\"},\"-e\":{\"value\":\"$udp_expect$\",\"required\":true},\"-q\":\"$udp_quit$\",\"-s\":{\"value\":\"$udp_send$\",\"required\":true}},\"command\":\"check_udp -H $udp_address$ -p $udp_port$\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"udp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":\"$udp_ipv4$\",\"check_ipv6\":\"$udp_ipv6$\",\"udp_address\":\"$check_address$\"}}','admin','2016-05-14 21:35:37','MÇ.4×ç{äK7/¿ê”“›¾','éVýCÑ‚™¡édé¶øþ¥Á'),(55,'icinga_command','ups','create',NULL,'{\"arguments\":{\"-H\":{\"value\":\"$ups_address$\",\"required\":true,\"description\":\"Address of the upsd server\"},\"-T\":{\"set_if\":\"$ups_celsius$\",\"description\":\"Display temperature in degrees Celsius instead of Fahrenheit\"},\"-c\":{\"value\":\"$ups_critical$\",\"description\":\"Critical threshold for the selected variable\"},\"-p\":{\"value\":\"$ups_port$\",\"description\":\"Port number (default: 3493)\"},\"-t\":{\"value\":\"$ups_timeout$\",\"description\":\"Seconds before the connection times out (default: 10)\"},\"-u\":{\"value\":\"$ups_name$\",\"required\":true,\"description\":\"Name of the UPS to monitor\"},\"-v\":{\"value\":\"$ups_variable$\",\"description\":\"Variable to monitor, valid strings are LINE, TEMP, BATTPCT or LOADPCT\"},\"-w\":{\"value\":\"$ups_warning$\",\"description\":\"Warning threshold for the selected variable\"}},\"command\":\"check_ups\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"ups\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":false,\"check_ipv6\":false,\"ups_address\":\"$check_address$\",\"ups_name\":\"ups\"}}','admin','2016-05-14 21:35:37','ë(óâì°¾¿p‚\në6Á+lÎ/$','MÇ.4×ç{äK7/¿ê”“›¾'),(56,'icinga_command','tcp','create',NULL,'{\"arguments\":{\"-6\":{\"set_if\":\"$tcp_ipv6$\",\"description\":\"Use IPv6 only\"},\"-4\":{\"set_if\":\"$tcp_ipv4$\",\"description\":\"Use IPv4 only\"},\"-A\":{\"set_if\":\"$tcp_all$\",\"description\":\"All expect strings need to occur in server response. Defaults to false.\"},\"-D\":{\"value\":\"$tcp_certificate$\",\"description\":\"Minimum number of days a certificate has to be valid. 1st value is number of days for warning, 2nd is critical (if not specified: 0) - seperated by comma.\"},\"-E_quit\":{\"order\":\"3\",\"set_if\":\"$tcp_escape_quit$\",\"description\":\"Enable usage of \\n, \\r, \\t or \\\\ in quit string.\"},\"-E_send\":{\"order\":\"1\",\"set_if\":\"$tcp_escape_send$\",\"description\":\"Enable usage of \\n, \\r, \\t or \\\\ in send string.\"},\"-H\":{\"value\":\"$tcp_address$\",\"description\":\"Host name, IP Address, or unix socket (must be an absolute path).\"},\"-M\":{\"value\":\"$tcp_mismatch$\",\"description\":\"Accept expected string mismatches with states ok, warn, crit. Defaults to warn.\"},\"-S\":{\"set_if\":\"$tcp_ssl$\",\"description\":\"Use SSL for the connection.\"},\"-c\":{\"value\":\"$tcp_ctime$\",\"description\":\"Response time to result in critical status (seconds).\"},\"-d\":{\"value\":\"$tcp_delay$\",\"description\":\"Seconds to wait between sending string and polling for response.\"},\"-e\":{\"value\":\"$tcp_expect$\",\"description\":\"String to expect in server response (may be repeated).\"},\"-j\":{\"set_if\":\"$tcp_jail$\",\"description\":\"Hide output from TCP socket.\"},\"-m\":{\"value\":\"$tcp_maxbytes$\",\"description\":\"Close connection once more than this number of bytes are received.\"},\"-p\":{\"value\":\"$tcp_port$\",\"description\":\"The TCP port number.\"},\"-q\":{\"value\":\"$tcp_quit$\",\"order\":\"4\",\"description\":\"String to send server to initiate a clean close of the connection.\"},\"-r\":{\"value\":\"$tcp_refuse$\",\"description\":\"Accept TCP refusals with states ok, warn, crit. Defaults to crit.\"},\"-s\":{\"value\":\"$tcp_send$\",\"order\":\"2\",\"description\":\"String to send to the server.\"},\"-t\":{\"value\":\"$tcp_timeout$\",\"description\":\"Seconds before connection times out. Defaults to 10.\"},\"-w\":{\"value\":\"$tcp_wtime$\",\"description\":\"Response time to result in warning status (seconds).\"}},\"command\":\"check_tcp\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"tcp\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"check_address\":{\"type\":\"Function\"},\"check_ipv4\":\"$tcp_ipv4$\",\"check_ipv6\":\"$tcp_ipv6$\",\"tcp_address\":\"$check_address$\",\"tcp_all\":false,\"tcp_mismatch\":\"warn\",\"tcp_refuse\":\"crit\",\"tcp_timeout\":10}}','admin','2016-05-14 21:35:37','b10óe}uC\râžšzøA.Ÿ“Ö','ë(óâì°¾¿p‚\në6Á+lÎ/$'),(57,'icinga_command','users','create',NULL,'{\"arguments\":{\"-c\":\"$users_cgreater$\",\"-w\":\"$users_wgreater$\"},\"command\":\"check_users\",\"methods_execute\":\"PluginCheck\",\"object_name\":\"users\",\"object_type\":\"external_object\",\"timeout\":60,\"vars\":{\"users_cgreater\":50,\"users_wgreater\":20}}','admin','2016-05-14 21:35:37','ÖÆ¼_€4±\\Ùô±Fš»ÜÄÀ´','b10óe}uC\râžšzøA.Ÿ“Ö'),(58,'icinga_host','apache2-docker','create',NULL,'{\"check_command\":\"http\",\"check_interval\":1,\"enable_active_checks\":true,\"enable_passive_checks\":false,\"max_check_attempts\":\"3\",\"object_name\":\"apache2-docker\",\"object_type\":\"template\",\"retry_interval\":1}','admin','2016-05-14 22:54:31','…«„Hÿz[‘á°ð_mêáöà','ÖÆ¼_€4±\\Ùô±Fš»ÜÄÀ´'),(59,'icinga_service','Web Server','create',NULL,'{\"check_command\":\"http\",\"check_interval\":1,\"enable_active_checks\":true,\"max_check_attempts\":\"3\",\"object_name\":\"Web Server\",\"object_type\":\"template\",\"retry_interval\":1}','admin','2016-05-14 22:57:19','?ë›îÉK$2ÿîÑÅÃÖ@S','…«„Hÿz[‘á°ð_mêáöà'),(60,'icinga_service','Web Server','create',NULL,'{\"host\":\"apache2-docker\",\"imports\":[\"Web Server\"],\"object_name\":\"Web Server\",\"object_type\":\"object\"}','admin','2016-05-14 22:57:50','é…»¨4ÐŸ(Ï®\"T!‹!}','?ë›îÉK$2ÿîÑÅÃÖ@S'),(61,'icinga_host','apache2-docker','modify','{\"object_name\":\"apache2-docker\",\"object_type\":\"template\",\"check_command\":\"http\",\"max_check_attempts\":\"3\",\"check_interval\":\"1\",\"retry_interval\":\"1\",\"enable_active_checks\":\"y\",\"enable_passive_checks\":\"n\",\"vars\":{}}','{\"check_command\":\"ping\",\"check_interval\":\"1\",\"enable_active_checks\":true,\"enable_passive_checks\":false,\"max_check_attempts\":\"3\",\"object_name\":\"apache2-docker\",\"object_type\":\"template\",\"retry_interval\":\"1\"}','admin','2016-05-14 22:58:06','âZ	*L¾b1}Ëg\"FZ¥La¶','é…»¨4ÐŸ(Ï®\"T!‹!}'),(62,'icinga_host','apache2-docker','delete','{\"object_name\":\"apache2-docker\",\"object_type\":\"template\",\"check_command\":\"ping\",\"max_check_attempts\":\"3\",\"check_interval\":\"1\",\"retry_interval\":\"1\",\"enable_active_checks\":\"y\",\"enable_passive_checks\":\"n\",\"vars\":{}}',NULL,'admin','2016-05-14 23:36:10','iµ;f&Žæ«dsŠ–~hæ¢ZO','âZ	*L¾b1}Ëg\"FZ¥La¶'),(63,'icinga_service','Web Server','delete','{\"object_name\":\"Web Server\",\"object_type\":\"template\",\"check_command\":\"http\",\"max_check_attempts\":\"3\",\"check_interval\":\"1\",\"retry_interval\":\"1\",\"enable_active_checks\":\"y\",\"vars\":{}}',NULL,'admin','2016-05-14 23:36:15','–Hî¤$•9Î«“hbÖÿÈ¤Z','iµ;f&Žæ«dsŠ–~hæ¢ZO');
/*!40000 ALTER TABLE `director_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_datafield`
--

DROP TABLE IF EXISTS `director_datafield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_datafield` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(64) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text,
  `datatype` varchar(255) NOT NULL,
  `format` enum('string','json','expression') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `search_idx` (`varname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_datafield`
--

LOCK TABLES `director_datafield` WRITE;
/*!40000 ALTER TABLE `director_datafield` DISABLE KEYS */;
/*!40000 ALTER TABLE `director_datafield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_datafield_setting`
--

DROP TABLE IF EXISTS `director_datafield_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_datafield_setting` (
  `datafield_id` int(10) unsigned NOT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  PRIMARY KEY (`datafield_id`,`setting_name`),
  CONSTRAINT `datafield_id_settings` FOREIGN KEY (`datafield_id`) REFERENCES `director_datafield` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_datafield_setting`
--

LOCK TABLES `director_datafield_setting` WRITE;
/*!40000 ALTER TABLE `director_datafield_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `director_datafield_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_datalist`
--

DROP TABLE IF EXISTS `director_datalist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_datalist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `list_name` (`list_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_datalist`
--

LOCK TABLES `director_datalist` WRITE;
/*!40000 ALTER TABLE `director_datalist` DISABLE KEYS */;
/*!40000 ALTER TABLE `director_datalist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_datalist_entry`
--

DROP TABLE IF EXISTS `director_datalist_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_datalist_entry` (
  `list_id` int(10) unsigned NOT NULL,
  `entry_name` varchar(255) NOT NULL,
  `entry_value` text,
  `format` enum('string','expression','json') DEFAULT NULL,
  PRIMARY KEY (`list_id`,`entry_name`),
  CONSTRAINT `director_datalist_value_datalist` FOREIGN KEY (`list_id`) REFERENCES `director_datalist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_datalist_entry`
--

LOCK TABLES `director_datalist_entry` WRITE;
/*!40000 ALTER TABLE `director_datalist_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `director_datalist_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_deployment_log`
--

DROP TABLE IF EXISTS `director_deployment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_deployment_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `config_checksum` varbinary(20) DEFAULT NULL,
  `last_activity_checksum` varbinary(20) NOT NULL,
  `peer_identity` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `abort_time` datetime DEFAULT NULL,
  `duration_connection` int(10) unsigned DEFAULT NULL COMMENT 'The time it took to connect to an Icinga node (ms)',
  `duration_dump` int(10) unsigned DEFAULT NULL COMMENT 'Time spent dumping the config (ms)',
  `stage_name` varchar(96) DEFAULT NULL,
  `stage_collected` enum('y','n') DEFAULT NULL,
  `connection_succeeded` enum('y','n') DEFAULT NULL,
  `dump_succeeded` enum('y','n') DEFAULT NULL,
  `startup_succeeded` enum('y','n') DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT 'The user that triggered this deployment',
  `startup_log` mediumtext,
  PRIMARY KEY (`id`),
  KEY `config_checksum` (`config_checksum`),
  CONSTRAINT `config_checksum` FOREIGN KEY (`config_checksum`) REFERENCES `director_generated_config` (`checksum`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_deployment_log`
--

LOCK TABLES `director_deployment_log` WRITE;
/*!40000 ALTER TABLE `director_deployment_log` DISABLE KEYS */;
INSERT INTO `director_deployment_log` VALUES (1,'›+œÝû“0Fk\Z.B?f	´[','…«„Hÿz[‘á°ð_mêáöà','icinga2','2016-05-14 22:54:58',NULL,NULL,NULL,120,'icinga2-1463266498-2',NULL,NULL,'y','y',NULL,'information/cli: Icinga application loader (version: r2.4.7-1)\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/icinga2.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/constants.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/zones.conf\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/itl\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/command.conf\ninformation/Utility: Loading library \'libmethods.so\'\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/command-icinga.conf\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/timeperiod.conf\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/plugins\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/command-plugins.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/api.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/checker.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/command.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/ido-mysql.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/mainlog.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/notification.conf\ninformation/Utility: Loading library \'libchecker.so\'\ninformation/Utility: Loading library \'libcompat.so\'\ninformation/Utility: Loading library \'libdb_ido_mysql.so\'\ninformation/Utility: Loading library \'libnotification.so\'\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/api-users.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/app.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/apt.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/commands.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/downtimes.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/groups.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/hosts.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/notifications.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/satellite.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/services.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/templates.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/timeperiods.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/users.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/../active.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/icinga2!load!icinga2-1463261575-0.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266498-2/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266498-2/../active.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266498-2/zones.d/director-global/001-director-basics.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266498-2/zones.d/icinga2/host_templates.conf\ninformation/ConfigItem: Committing config items\ninformation/ApiListener: My API identity: icinga2\nwarning/ConfigObject: Ignoring config object \'ip-10-0-0-210-1463259451-0\' of type \'Downtime\' due to errors: Error: Validation failed for object \'ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0\' of type \'Downtime\'; Attribute \'host_name\': Object \'ip-10-0-0-210\' of type \'Host\' does not exist.\nLocation: in /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf: 1:0-1:59\n/var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf(1): object Downtime \"ip-10-0-0-210-1463259451-0\" ignore_on_error {\n                                                                                                                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n/var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf(2):  author = \"icingaadmin\"\n/var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf(3):  comment = \"Scheduled downtime for backup\"\n\nwarning/ApplyRule: Apply rule \'satellite-host\' (in /etc/icinga2/conf.d/satellite.conf: 29:1-29:41) for type \'Dependency\' does not match anywhere!\ninformation/ConfigItem: Instantiated 1 FileLogger.\ninformation/ConfigItem: Instantiated 1 ApiUser.\ninformation/ConfigItem: Instantiated 1 ApiListener.\ninformation/ConfigItem: Instantiated 1 Zone.\ninformation/ConfigItem: Instantiated 1 Endpoint.\ninformation/ConfigItem: Instantiated 54 CheckCommands.\ninformation/ConfigItem: Instantiated 2 NotificationCommands.\ninformation/ConfigItem: Instantiated 13 Notifications.\ninformation/ConfigItem: Instantiated 1 IcingaApplication.\ninformation/ConfigItem: Instantiated 1 Host.\ninformation/ConfigItem: Instantiated 2 HostGroups.\ninformation/ConfigItem: Instantiated 1 User.\ninformation/ConfigItem: Instantiated 1 UserGroup.\ninformation/ConfigItem: Instantiated 1 Downtime.\ninformation/ConfigItem: Instantiated 12 Services.\ninformation/ConfigItem: Instantiated 3 TimePeriods.\ninformation/ConfigItem: Instantiated 3 ServiceGroups.\ninformation/ConfigItem: Instantiated 1 ScheduledDowntime.\ninformation/ConfigItem: Instantiated 1 ExternalCommandListener.\ninformation/ConfigItem: Instantiated 1 IdoMysqlConnection.\ninformation/ConfigItem: Instantiated 1 NotificationComponent.\ninformation/ConfigItem: Instantiated 1 CheckerComponent.\ninformation/ScriptGlobal: Dumping variables to file \'/var/cache/icinga2/icinga2.vars\'\ninformation/cli: Finished validating the configuration file(s).\n'),(2,'¨=kWö£Í9î—Í=U‡kh','âZ	*L¾b1}Ëg\"FZ¥La¶','icinga2','2016-05-14 22:58:42',NULL,NULL,NULL,40,'icinga2-1463266722-0',NULL,NULL,'y','y',NULL,'information/cli: Icinga application loader (version: r2.4.7-1)\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/icinga2.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/constants.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/zones.conf\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/itl\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/command.conf\ninformation/Utility: Loading library \'libmethods.so\'\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/command-icinga.conf\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/timeperiod.conf\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/plugins\ninformation/ConfigCompiler: Compiling config file: /usr/share/icinga2/include/command-plugins.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/api.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/checker.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/command.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/ido-mysql.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/mainlog.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/features-enabled/notification.conf\ninformation/Utility: Loading library \'libchecker.so\'\ninformation/Utility: Loading library \'libcompat.so\'\ninformation/Utility: Loading library \'libdb_ido_mysql.so\'\ninformation/Utility: Loading library \'libnotification.so\'\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/api-users.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/app.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/apt.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/commands.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/downtimes.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/groups.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/hosts.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/notifications.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/satellite.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/services.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/templates.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/timeperiods.conf\ninformation/ConfigCompiler: Compiling config file: /etc/icinga2/conf.d/users.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/../active.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/icinga2!load!icinga2-1463261575-0.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266498-2/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/include.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266498-2/../active.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/../active.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/zones.d/director-global/001-director-basics.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/zones.d/icinga2/host_templates.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/zones.d/icinga2/service_templates.conf\ninformation/ConfigCompiler: Compiling config file: /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/zones.d/icinga2/services.conf\ninformation/ConfigItem: Committing config items\ninformation/ApiListener: My API identity: icinga2\nwarning/ConfigObject: Ignoring config object \'ip-10-0-0-210-1463259451-0\' of type \'Downtime\' due to errors: Error: Validation failed for object \'ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0\' of type \'Downtime\'; Attribute \'host_name\': Object \'ip-10-0-0-210\' of type \'Host\' does not exist.\nLocation: in /var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf: 1:0-1:59\n/var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf(1): object Downtime \"ip-10-0-0-210-1463259451-0\" ignore_on_error {\n                                                                                                                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n/var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf(2):  author = \"icingaadmin\"\n/var/lib/icinga2/api/packages/_api/ip-10-0-0-210-1463259451-1/conf.d/downtimes/ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0.conf(3):  comment = \"Scheduled downtime for backup\"\n\nwarning/ApplyRule: Apply rule \'satellite-host\' (in /etc/icinga2/conf.d/satellite.conf: 29:1-29:41) for type \'Dependency\' does not match anywhere!\nwarning/ApplyRule: Apply rule \'Web Server\' (in /var/lib/icinga2/api/packages/director/icinga2-1463266722-0/zones.d/icinga2/services.conf: 1:0-1:25) for type \'Service\' does not match anywhere!\ninformation/ConfigItem: Instantiated 1 FileLogger.\ninformation/ConfigItem: Instantiated 1 ApiUser.\ninformation/ConfigItem: Instantiated 1 ApiListener.\ninformation/ConfigItem: Instantiated 1 Zone.\ninformation/ConfigItem: Instantiated 1 Endpoint.\ninformation/ConfigItem: Instantiated 54 CheckCommands.\ninformation/ConfigItem: Instantiated 2 NotificationCommands.\ninformation/ConfigItem: Instantiated 13 Notifications.\ninformation/ConfigItem: Instantiated 1 IcingaApplication.\ninformation/ConfigItem: Instantiated 1 Host.\ninformation/ConfigItem: Instantiated 2 HostGroups.\ninformation/ConfigItem: Instantiated 1 User.\ninformation/ConfigItem: Instantiated 1 UserGroup.\ninformation/ConfigItem: Instantiated 1 Downtime.\ninformation/ConfigItem: Instantiated 12 Services.\ninformation/ConfigItem: Instantiated 3 TimePeriods.\ninformation/ConfigItem: Instantiated 3 ServiceGroups.\ninformation/ConfigItem: Instantiated 1 ScheduledDowntime.\ninformation/ConfigItem: Instantiated 1 ExternalCommandListener.\ninformation/ConfigItem: Instantiated 1 IdoMysqlConnection.\ninformation/ConfigItem: Instantiated 1 NotificationComponent.\ninformation/ConfigItem: Instantiated 1 CheckerComponent.\ninformation/ScriptGlobal: Dumping variables to file \'/var/cache/icinga2/icinga2.vars\'\ninformation/cli: Finished validating the configuration file(s).\n');
/*!40000 ALTER TABLE `director_deployment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_generated_config`
--

DROP TABLE IF EXISTS `director_generated_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_generated_config` (
  `checksum` varbinary(20) NOT NULL COMMENT 'SHA1(last_activity_checksum;file_path=checksum;file_path=checksum;...)',
  `director_version` varchar(64) DEFAULT NULL,
  `director_db_version` int(10) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL COMMENT 'Config generation duration (ms)',
  `first_activity_checksum` varbinary(20) NOT NULL,
  `last_activity_checksum` varbinary(20) NOT NULL,
  PRIMARY KEY (`checksum`),
  KEY `director_generated_config_activity` (`last_activity_checksum`),
  CONSTRAINT `director_generated_config_activity` FOREIGN KEY (`last_activity_checksum`) REFERENCES `director_activity_log` (`checksum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_generated_config`
--

LOCK TABLES `director_generated_config` WRITE;
/*!40000 ALTER TABLE `director_generated_config` DISABLE KEYS */;
INSERT INTO `director_generated_config` VALUES ('›+œÝû“0Fk\Z.B?f	´[',NULL,NULL,7,'…«„Hÿz[‘á°ð_mêáöà','…«„Hÿz[‘á°ð_mêáöà'),('¨=kWö£Í9î—Í=U‡kh',NULL,NULL,8,'âZ	*L¾b1}Ëg\"FZ¥La¶','âZ	*L¾b1}Ëg\"FZ¥La¶');
/*!40000 ALTER TABLE `director_generated_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_generated_config_file`
--

DROP TABLE IF EXISTS `director_generated_config_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_generated_config_file` (
  `config_checksum` varbinary(20) NOT NULL,
  `file_checksum` varbinary(20) NOT NULL,
  `file_path` varchar(128) NOT NULL COMMENT 'e.g. zones/nafta/hosts.conf',
  PRIMARY KEY (`config_checksum`,`file_path`),
  KEY `search_idx` (`file_checksum`),
  CONSTRAINT `director_generated_config_file_config` FOREIGN KEY (`config_checksum`) REFERENCES `director_generated_config` (`checksum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `director_generated_config_file_file` FOREIGN KEY (`file_checksum`) REFERENCES `director_generated_file` (`checksum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_generated_config_file`
--

LOCK TABLES `director_generated_config_file` WRITE;
/*!40000 ALTER TABLE `director_generated_config_file` DISABLE KEYS */;
INSERT INTO `director_generated_config_file` VALUES ('¨=kWö£Í9î—Í=U‡kh','œfïËüŠ7Â¹Gè =|5¦3þ','zones.d/icinga2/services.conf'),('›+œÝû“0Fk\Z.B?f	´[','+\0\\ÄÌÜ‹ý#õöy1=\\Å¾í','zones.d/director-global/001-director-basics.conf'),('¨=kWö£Í9î—Í=U‡kh','+\0\\ÄÌÜ‹ý#õöy1=\\Å¾í','zones.d/director-global/001-director-basics.conf'),('¨=kWö£Í9î—Í=U‡kh','d;æ@‰fïîˆÒ¤…8=Ð','zones.d/icinga2/service_templates.conf'),('›+œÝû“0Fk\Z.B?f	´[','§vp…À—þY„/Wê–ëüÝö¾','zones.d/icinga2/host_templates.conf'),('¨=kWö£Í9î—Í=U‡kh','Ò`=$ø>d©Ë\"LF–•?õ“\ZŠ','zones.d/icinga2/host_templates.conf');
/*!40000 ALTER TABLE `director_generated_config_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_generated_file`
--

DROP TABLE IF EXISTS `director_generated_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_generated_file` (
  `checksum` varbinary(20) NOT NULL COMMENT 'SHA1(content)',
  `content` mediumtext NOT NULL,
  `cnt_object` int(10) unsigned NOT NULL DEFAULT '0',
  `cnt_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`checksum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_generated_file`
--

LOCK TABLES `director_generated_file` WRITE;
/*!40000 ALTER TABLE `director_generated_file` DISABLE KEYS */;
INSERT INTO `director_generated_file` VALUES ('œfïËüŠ7Â¹Gè =|5¦3þ','apply Service \"Web Server\" {\n    import \"Web Server\"\n\n\n    assign where \"apache2-docker\" in host.templates\n}\n\n',1,0),('+\0\\ÄÌÜ‹ý#õöy1=\\Å¾í','\nconst DirectorStageDir = dirname(dirname(current_filename))\n',0,0),('d;æ@‰fïîˆÒ¤…8=Ð','template Service \"Web Server\" {\n    check_command = \"http\"\n    max_check_attempts = \"3\"\n    check_interval = 1s\n    retry_interval = 1s\n    enable_active_checks = true\n}\n\n',0,1),('§vp…À—þY„/Wê–ëüÝö¾','template Host \"apache2-docker\" {\n    check_command = \"http\"\n    max_check_attempts = \"3\"\n    check_interval = 1s\n    retry_interval = 1s\n    enable_active_checks = true\n    enable_passive_checks = false\n}\n\n',0,1),('Ò`=$ø>d©Ë\"LF–•?õ“\ZŠ','template Host \"apache2-docker\" {\n    check_command = \"ping\"\n    max_check_attempts = \"3\"\n    check_interval = 1s\n    retry_interval = 1s\n    enable_active_checks = true\n    enable_passive_checks = false\n}\n\n',0,1);
/*!40000 ALTER TABLE `director_generated_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_schema_migration`
--

DROP TABLE IF EXISTS `director_schema_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_schema_migration` (
  `schema_version` smallint(5) unsigned NOT NULL,
  `migration_time` datetime NOT NULL,
  PRIMARY KEY (`schema_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_schema_migration`
--

LOCK TABLES `director_schema_migration` WRITE;
/*!40000 ALTER TABLE `director_schema_migration` DISABLE KEYS */;
INSERT INTO `director_schema_migration` VALUES (92,'2016-05-14 21:30:44');
/*!40000 ALTER TABLE `director_schema_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_setting`
--

DROP TABLE IF EXISTS `director_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_setting` (
  `setting_name` varchar(64) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  PRIMARY KEY (`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_setting`
--

LOCK TABLES `director_setting` WRITE;
/*!40000 ALTER TABLE `director_setting` DISABLE KEYS */;
INSERT INTO `director_setting` VALUES ('master_zone','icinga2');
/*!40000 ALTER TABLE `director_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_apiuser`
--

DROP TABLE IF EXISTS `icinga_apiuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_apiuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template','external_object') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `password` varchar(255) DEFAULT NULL,
  `client_dn` varchar(64) DEFAULT NULL,
  `permissions` text COMMENT 'JSON-encoded permissions',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_apiuser`
--

LOCK TABLES `icinga_apiuser` WRITE;
/*!40000 ALTER TABLE `icinga_apiuser` DISABLE KEYS */;
INSERT INTO `icinga_apiuser` VALUES (1,'root','external_object','n','a5ffa477794f1c68',NULL,NULL);
/*!40000 ALTER TABLE `icinga_apiuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_command`
--

DROP TABLE IF EXISTS `icinga_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_command` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template','external_object') NOT NULL COMMENT 'external_object is an attempt to work with existing commands',
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `methods_execute` varchar(64) DEFAULT NULL,
  `command` text,
  `timeout` smallint(5) unsigned DEFAULT NULL,
  `zone_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`,`zone_id`),
  KEY `icinga_command_zone` (`zone_id`),
  CONSTRAINT `icinga_command_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_command`
--

LOCK TABLES `icinga_command` WRITE;
/*!40000 ALTER TABLE `icinga_command` DISABLE KEYS */;
INSERT INTO `icinga_command` VALUES (1,'apt','external_object','n','PluginCheck','check_apt',300,NULL),(2,'by_ssh','external_object','n','PluginCheck','check_by_ssh',60,NULL),(3,'clamd','external_object','n','PluginCheck','check_clamd',60,NULL),(4,'cluster','external_object','n','PluginCheck',NULL,60,NULL),(5,'cluster-zone','external_object','n','PluginCheck',NULL,60,NULL),(6,'dhcp','external_object','n','PluginCheck','check_dhcp',60,NULL),(7,'dig','external_object','n','PluginCheck','check_dig',60,NULL),(8,'disk','external_object','n','PluginCheck','check_disk',60,NULL),(9,'disk_smb','external_object','n','PluginCheck','check_disk_smb',60,NULL),(10,'dns','external_object','n','PluginCheck','check_dns',60,NULL),(11,'dummy','external_object','n','PluginCheck','check_dummy $dummy_state$ $dummy_text$',60,NULL),(12,'fping4','external_object','n','PluginCheck','check_fping $fping_address$ -4',60,NULL),(13,'fping6','external_object','n','PluginCheck','check_fping $fping_address$ -6',60,NULL),(14,'hostalive','external_object','n','PluginCheck','check_ping',60,NULL),(15,'ftp','external_object','n','PluginCheck','check_ftp',60,NULL),(16,'hostalive4','external_object','n','PluginCheck','check_ping -4',60,NULL),(17,'hostalive6','external_object','n','PluginCheck','check_ping -6',60,NULL),(18,'hpjd','external_object','n','PluginCheck','check_hpjd',60,NULL),(19,'icinga','external_object','n','PluginCheck',NULL,60,NULL),(20,'icmp','external_object','n','PluginCheck','check_icmp',60,NULL),(21,'ido','external_object','n','PluginCheck',NULL,60,NULL),(22,'imap','external_object','n','PluginCheck','check_imap',60,NULL),(23,'http','external_object','n','PluginCheck','check_http',60,NULL),(24,'ldap','external_object','n','PluginCheck','check_ldap',60,NULL),(25,'load','external_object','n','PluginCheck','check_load',60,NULL),(26,'mailq','external_object','n','PluginCheck','check_mailq',60,NULL),(27,'negate','external_object','n','PluginCheck','negate',60,NULL),(28,'mysql','external_object','n','PluginCheck','check_mysql',60,NULL),(29,'nscp','external_object','n','PluginCheck','check_nt',60,NULL),(30,'nrpe','external_object','n','PluginCheck','check_nrpe',300,NULL),(31,'ntp_peer','external_object','n','PluginCheck','check_ntp_peer',60,NULL),(32,'ntp_time','external_object','n','PluginCheck','check_ntp_time',60,NULL),(33,'passive','external_object','n','PluginCheck','check_dummy $dummy_state$ $dummy_text$',60,NULL),(34,'pgsql','external_object','n','PluginCheck','check_pgsql',60,NULL),(35,'ping','external_object','n','PluginCheck','check_ping',60,NULL),(36,'ping4','external_object','n','PluginCheck','check_ping -4',60,NULL),(37,'ping6','external_object','n','PluginCheck','check_ping -6',60,NULL),(38,'pop','external_object','n','PluginCheck','check_pop',60,NULL),(39,'random','external_object','n','PluginCheck',NULL,60,NULL),(40,'simap','external_object','n','PluginCheck','check_simap',60,NULL),(41,'procs','external_object','n','PluginCheck','check_procs',60,NULL),(42,'smtp','external_object','n','PluginCheck','check_smtp',60,NULL),(43,'snmp','external_object','n','PluginCheck','check_snmp',60,NULL),(44,'snmp-uptime','external_object','n','PluginCheck','check_snmp',60,NULL),(45,'spop','external_object','n','PluginCheck','check_spop',60,NULL),(46,'ssh','external_object','n','PluginCheck','check_ssh',60,NULL),(47,'snmpv3','external_object','n','PluginCheck','check_snmp',60,NULL),(48,'ssl','external_object','n','PluginCheck','check_tcp',60,NULL),(49,'swap','external_object','n','PluginCheck','check_swap',60,NULL),(50,'ssmtp','external_object','n','PluginCheck','check_ssmtp',60,NULL),(51,'udp','external_object','n','PluginCheck','check_udp -H $udp_address$ -p $udp_port$',60,NULL),(52,'ups','external_object','n','PluginCheck','check_ups',60,NULL),(53,'tcp','external_object','n','PluginCheck','check_tcp',60,NULL),(54,'users','external_object','n','PluginCheck','check_users',60,NULL);
/*!40000 ALTER TABLE `icinga_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_command_argument`
--

DROP TABLE IF EXISTS `icinga_command_argument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_command_argument` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `command_id` int(10) unsigned NOT NULL,
  `argument_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '-x, --host',
  `argument_value` text,
  `argument_format` enum('string','expression','json') DEFAULT NULL,
  `key_string` varchar(64) DEFAULT NULL COMMENT 'Overrides name',
  `description` text,
  `skip_key` enum('y','n') DEFAULT NULL,
  `set_if` varchar(255) DEFAULT NULL,
  `set_if_format` enum('string','expression','json') DEFAULT NULL,
  `sort_order` smallint(6) DEFAULT NULL,
  `repeat_key` enum('y','n') DEFAULT NULL COMMENT 'Useful with array values',
  `required` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_idx` (`command_id`,`argument_name`),
  KEY `sort_idx` (`command_id`,`sort_order`),
  CONSTRAINT `icinga_command_argument_command` FOREIGN KEY (`command_id`) REFERENCES `icinga_command` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_command_argument`
--

LOCK TABLES `icinga_command_argument` WRITE;
/*!40000 ALTER TABLE `icinga_command_argument` DISABLE KEYS */;
INSERT INTO `icinga_command_argument` VALUES (1,1,'--critical','$apt_critical$','string',NULL,'If the full package information of any of the upgradable packages match this REGEXP, the plugin will return CRITICAL status. Can be specified multiple times.',NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'--dist-upgrade','$apt_dist_upgrade$','string',NULL,'Perform a dist-upgrade instead of normal upgrade. Like with -U OPTS can be provided to override the default options.',NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'--exclude','$apt_exclude$','string',NULL,'Exclude packages matching REGEXP from the list of packages that would otherwise be included. Can be specified multiple times.',NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'--extra-opts','$apt_extra_opts$','string',NULL,'Read options from an ini file.',NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'--include','$apt_include$','string',NULL,'Include only packages matching REGEXP. Can be specified multiple times the values will be combined together.',NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'--timeout','$apt_timeout$','string',NULL,'Seconds before plugin times out (default: 10).',NULL,NULL,NULL,NULL,NULL,NULL),(7,1,'--upgrade','$apt_upgrade$','string',NULL,'[Default] Perform an upgrade. If an optional OPTS argument is provided, apt-get will be run with these command line options instead of the default.',NULL,NULL,NULL,NULL,NULL,NULL),(8,2,'-C','/* Unable to fetch function body through API */','expression',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,'-H','$by_ssh_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,'-c','$by_ssh_crit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,'-i','$by_ssh_identity$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,2,'-l','$by_ssh_logname$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,2,'-o','$by_ssh_options$','string',NULL,'Provide ssh options (may be repeated)',NULL,NULL,NULL,NULL,NULL,NULL),(14,2,'-p','$by_ssh_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,2,'-q',NULL,NULL,NULL,NULL,NULL,'$by_ssh_quiet$',NULL,NULL,NULL,NULL),(16,2,'-t','$by_ssh_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,2,'-w','$by_ssh_warn$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,'-A',NULL,NULL,NULL,'All expect strings need to occur in server response. Default is any.',NULL,'$clamd_all$',NULL,NULL,NULL,NULL),(19,3,'-D','$clamd_certificate$','string',NULL,'Minimum number of days a certificate has to be valid. 1st value is number of days for warning, 2nd is critical (if not specified: 0) - seperated by comma.',NULL,NULL,NULL,NULL,NULL,NULL),(20,3,'-E_quit',NULL,NULL,NULL,'Can use \n, \r, 	 or \\ in quit string. Default is \r\n added to end of quit.',NULL,'$clamd_escape_quit$',NULL,3,NULL,NULL),(21,3,'-E_send',NULL,NULL,NULL,'Enable usage of \n, \r, 	 or \\ in send string. Default is nothing.',NULL,'$clamd_escape_send$',NULL,1,NULL,NULL),(22,3,'-H','$clamd_address$','string',NULL,'The host\'s address or unix socket (must be an absolute path).',NULL,NULL,NULL,NULL,NULL,'y'),(23,3,'-M','$clamd_mismatch$','string',NULL,'Accept expected string mismatches with states ok, warn, crit. Defaults to warn.',NULL,NULL,NULL,NULL,NULL,NULL),(24,3,'-S',NULL,NULL,NULL,'Use SSL for the connection.',NULL,'$clamd_ssl$',NULL,NULL,NULL,NULL),(25,3,'-c','$clamd_ctime$','string',NULL,'Response time to result in critical status (seconds).',NULL,NULL,NULL,NULL,NULL,NULL),(26,3,'-d','$clamd_delay$','string',NULL,'Seconds to wait between sending string and polling for response.',NULL,NULL,NULL,NULL,NULL,NULL),(27,3,'-e','$clamd_expect$','string',NULL,'String to expect in server response (may be repeated).',NULL,NULL,NULL,NULL,'y',NULL),(28,3,'-j',NULL,NULL,NULL,'Hide output from TCP socket.',NULL,'$clamd_jail$',NULL,NULL,NULL,NULL),(29,3,'-m','$clamd_maxbytes$','string',NULL,'Close connection once more than this number of bytes are received.',NULL,NULL,NULL,NULL,NULL,NULL),(30,3,'-p','$clamd_port$','string',NULL,'Port number (default: none).',NULL,NULL,NULL,NULL,NULL,NULL),(31,3,'-q','$clamd_quit$','string',NULL,'String to send server to initiate a clean close of the connection.',NULL,NULL,NULL,4,NULL,NULL),(32,3,'-r','$clamd_refuse$','string',NULL,'Accept TCP refusals with states ok, warn, crit. Defaults to crit.',NULL,NULL,NULL,NULL,NULL,NULL),(33,3,'-s','$clamd_send$','string',NULL,'String to send to the server.',NULL,NULL,NULL,2,NULL,NULL),(34,3,'-t','$clamd_timeout$','string',NULL,'Seconds before connection times out. Defaults to 10.',NULL,NULL,NULL,NULL,NULL,NULL),(35,3,'-w','$clamd_wtime$','string',NULL,'Response time to result in warning status (seconds).',NULL,NULL,NULL,NULL,NULL,NULL),(36,6,'-i','$dhcp_interface$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,6,'-m','$dhcp_mac$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,6,'-r','$dhcp_requestedip$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,6,'-s','$dhcp_serverip$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,6,'-t','$dhcp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,6,'-u',NULL,NULL,NULL,NULL,NULL,'$dhcp_unicast$',NULL,NULL,NULL,NULL),(42,7,'-A','$dig_arguments$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,7,'-H','$dig_server$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,7,'-T','$dig_record_type$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,7,'-a','$dig_expected_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,7,'-c','$dig_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,7,'-l','$dig_lookup$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'y'),(48,7,'-p','$dig_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,7,'-r','$dig_retries$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,7,'-t','$dig_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,7,'-w','$dig_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,8,'-A',NULL,NULL,NULL,'Explicitly select all paths. This is equivalent to -R .*',NULL,'$disk_all$',NULL,NULL,NULL,NULL),(53,8,'-C',NULL,NULL,NULL,'Clear thresholds',NULL,'$disk_clear$',NULL,NULL,NULL,NULL),(54,8,'-E',NULL,NULL,NULL,'For paths or partitions specified with -p, only check for exact paths',NULL,'$disk_exact_match$',NULL,NULL,NULL,NULL),(55,8,'-I','$disk_ignore_eregi_path$','string',NULL,'Regular expression to ignore selected path/partition (case insensitive) (may be repeated)',NULL,NULL,NULL,2,'y',NULL),(56,8,'-K','$disk_inode_cfree$','string',NULL,'Exit with CRITICAL status if less than PERCENT of inode space is free',NULL,NULL,NULL,NULL,NULL,NULL),(57,8,'-L',NULL,NULL,NULL,'Only check local filesystems against thresholds. Yet call stat on remote filesystems to test if they are accessible (e.g. to detect Stale NFS Handles)',NULL,'$disk_stat_remote_fs$',NULL,NULL,NULL,NULL),(58,8,'-M',NULL,NULL,NULL,'Display the mountpoint instead of the partition',NULL,'$disk_mountpoint$',NULL,NULL,NULL,NULL),(59,8,'-R','$disk_eregi_path$','string',NULL,'Case insensitive regular expression for path/partition (may be repeated)',NULL,NULL,NULL,NULL,'y',NULL),(60,8,'-W','$disk_inode_wfree$','string',NULL,'Exit with WARNING status if less than PERCENT of inode space is free',NULL,NULL,NULL,NULL,NULL,NULL),(61,8,'-X','$disk_exclude_type$','string',NULL,'Ignore all filesystems of indicated type (may be repeated)',NULL,NULL,NULL,NULL,'y',NULL),(62,8,'-c','$disk_cfree$','string',NULL,'Exit with CRITICAL status if less than INTEGER units of disk are free or Exit with CRITCAL status if less than PERCENT of disk space is free',NULL,NULL,NULL,-3,NULL,'y'),(63,8,'-e',NULL,NULL,NULL,'Display only devices/mountpoints with errors',NULL,'$disk_errors_only$',NULL,NULL,NULL,NULL),(64,8,'-f',NULL,NULL,NULL,'Don\'t account root-reserved blocks into freespace in perfdata',NULL,'$disk_ignore_reserved$',NULL,NULL,NULL,NULL),(65,8,'-g','$disk_group$','string',NULL,'Group paths. Thresholds apply to (free-)space of all partitions together',NULL,NULL,NULL,NULL,NULL,NULL),(66,8,'-i','$disk_ignore_ereg_path$','string',NULL,'Regular expression to ignore selected path or partition (may be repeated)',NULL,NULL,NULL,2,'y',NULL),(67,8,'-k',NULL,NULL,NULL,'Same as --units kB',NULL,'$disk_kilobytes$',NULL,NULL,NULL,NULL),(68,8,'-l',NULL,NULL,NULL,' Only check local filesystems',NULL,'$disk_local$',NULL,NULL,NULL,NULL),(69,8,'-m',NULL,NULL,NULL,'Same as --units MB',NULL,'$disk_megabytes$',NULL,NULL,NULL,NULL),(70,8,'-p','$disk_partitions$','string',NULL,'Path or partition (may be repeated)',NULL,NULL,NULL,1,'y',NULL),(71,8,'-p_old','$disk_partition$','string',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(72,8,'-r','$disk_ereg_path$','string',NULL,'Regular expression for path or partition (may be repeated)',NULL,NULL,NULL,NULL,'y',NULL),(73,8,'-t','$disk_timeout$','string',NULL,'Seconds before connection times out (default: 10)',NULL,NULL,NULL,NULL,NULL,NULL),(74,8,'-u','$disk_units$','string',NULL,'Choose bytes, kB, MB, GB, TB (default: MB)',NULL,NULL,NULL,NULL,NULL,NULL),(75,8,'-w','$disk_wfree$','string',NULL,'Exit with WARNING status if less than INTEGER units of disk are free or Exit with WARNING status if less than PERCENT of disk space is free',NULL,NULL,NULL,-3,NULL,'y'),(76,8,'-x','$disk_partitions_excluded$','string',NULL,'Ignore device (only works if -p unspecified)',NULL,NULL,NULL,NULL,NULL,NULL),(77,8,'-x_old','$disk_partition_excluded$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,9,'-H','$disk_smb_hostname$','string',NULL,'NetBIOS name of the server.',NULL,NULL,NULL,NULL,NULL,NULL),(79,9,'-P','$disk_smb_port$','string',NULL,'Port to be used to connect to. Some Windows boxes use 139, others 445 (Defaults to smbclient default if omitted).',NULL,NULL,NULL,NULL,NULL,NULL),(80,9,'-W','$disk_smb_workgroup$','string',NULL,'Workgroup or Domain used (Defaults to \'WORKGROUP\' if omitted).',NULL,NULL,NULL,NULL,NULL,NULL),(81,9,'-a','$disk_smb_address$','string',NULL,'IP-address of HOST (only necessary if HOST is in another network).',NULL,NULL,NULL,NULL,NULL,NULL),(82,9,'-c','$disk_smb_cused$','string',NULL,'Percent of used space at which a critical will be generated (Defaults: 95%)',NULL,NULL,NULL,NULL,NULL,NULL),(83,9,'-p','$disk_smb_password$','string',NULL,'Password to log in to server. (Defaults to an empty password if omitted).',NULL,NULL,NULL,NULL,NULL,NULL),(84,9,'-s','$disk_smb_share$','string',NULL,'Share name to be tested.',NULL,NULL,NULL,NULL,NULL,NULL),(85,9,'-u','$disk_smb_username$','string',NULL,'Username to log in to server. (Defaults to \'guest\' if omitted).',NULL,NULL,NULL,NULL,NULL,NULL),(86,9,'-w','$disk_smb_wused$','string',NULL,'Percent of used space at which a warning will be generated (Default: 85%).',NULL,NULL,NULL,NULL,NULL,NULL),(87,10,'-A',NULL,NULL,NULL,NULL,NULL,'$dns_authoritative$',NULL,NULL,NULL,NULL),(88,10,'-H','$dns_lookup$','string',NULL,'The name or address you want to query.',NULL,NULL,NULL,NULL,NULL,NULL),(89,10,'-a','$dns_expected_answers$','string',NULL,'Optional ip address or host you expect the DNS server to return. Host must end with a dot (.). This option can be repeated multiple times (Returns OK if any value match). If multiple addresses are returned at once, you have to match the whole string of addresses separated with commas (sorted alphabetically).',NULL,NULL,NULL,NULL,NULL,NULL),(90,10,'-a_old','$dns_expected_answer$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,10,'-c','$dns_ctime$','string',NULL,'Return critical if elapsed time exceeds value.',NULL,NULL,NULL,NULL,NULL,NULL),(92,10,'-s','$dns_server$','string',NULL,'Optional DNS server you want to use for the lookup.',NULL,NULL,NULL,NULL,NULL,NULL),(93,10,'-t','$dns_timeout$','string',NULL,'Seconds before connection times out. Defaults to 10.',NULL,NULL,NULL,NULL,NULL,NULL),(94,10,'-w','$dns_wtime$','string',NULL,'Return warning if elapsed time exceeds value.',NULL,NULL,NULL,NULL,NULL,NULL),(95,12,'-I','$fping_source_interface$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,12,'-S','$fping_source_ip$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,12,'-T','$fping_target_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,12,'-b','$fping_bytes$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,12,'-c','$fping_crta$,$fping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,12,'-i','$fping_interval$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,12,'-n','$fping_number$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,12,'-w','$fping_wrta$,$fping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,13,'-I','$fping_source_interface$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,13,'-S','$fping_source_ip$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,13,'-T','$fping_target_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,13,'-b','$fping_bytes$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,13,'-c','$fping_crta$,$fping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,13,'-i','$fping_interval$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,13,'-n','$fping_number$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,13,'-w','$fping_wrta$,$fping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,14,'-H','$ping_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,14,'-c','$ping_crta$,$ping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,14,'-p','$ping_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,14,'-t','$ping_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,14,'-w','$ping_wrta$,$ping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,15,'-A',NULL,NULL,NULL,'All expect strings need to occur in server response. Default is any.',NULL,'$ftp_all$',NULL,NULL,NULL,NULL),(117,15,'-D','$ftp_certificate$','string',NULL,'Minimum number of days a certificate has to be valid. 1st value is number of days for warning, 2nd is critical (if not specified: 0) - seperated by comma.',NULL,NULL,NULL,NULL,NULL,NULL),(118,15,'-E_quit',NULL,NULL,NULL,'Can use \n, \r, 	 or \\ in quit string. Default is \r\n added to end of quit.',NULL,'$ftp_escape_quit$',NULL,3,NULL,NULL),(119,15,'-E_send',NULL,NULL,NULL,'Enable usage of \n, \r, 	 or \\ in send string. Default is nothing.',NULL,'$ftp_escape_send$',NULL,1,NULL,NULL),(120,15,'-H','$ftp_address$','string',NULL,'The host\'s address. Defaults to $address$ or $address6$ if the address attribute is not set.',NULL,NULL,NULL,NULL,NULL,NULL),(121,15,'-M','$ftp_mismatch$','string',NULL,'Accept expected string mismatches with states ok, warn, crit. Defaults to warn.',NULL,NULL,NULL,NULL,NULL,NULL),(122,15,'-S',NULL,NULL,NULL,'Use SSL for the connection.',NULL,'$ftp_ssl$',NULL,NULL,NULL,NULL),(123,15,'-c','$ftp_ctime$','string',NULL,'Response time to result in critical status (seconds).',NULL,NULL,NULL,NULL,NULL,NULL),(124,15,'-d','$ftp_delay$','string',NULL,'Seconds to wait between sending string and polling for response.',NULL,NULL,NULL,NULL,NULL,NULL),(125,15,'-e','$ftp_expect$','string',NULL,'String to expect in server response (may be repeated).',NULL,NULL,NULL,NULL,NULL,NULL),(126,15,'-j',NULL,NULL,NULL,'Hide output from TCP socket.',NULL,'$ftp_jail$',NULL,NULL,NULL,NULL),(127,15,'-m','$ftp_maxbytes$','string',NULL,'Close connection once more than this number of bytes are received.',NULL,NULL,NULL,NULL,NULL,NULL),(128,15,'-p','$ftp_port$','string',NULL,'The FTP port number. Defaults to none',NULL,NULL,NULL,NULL,NULL,NULL),(129,15,'-q','$ftp_quit$','string',NULL,'String to send server to initiate a clean close of the connection.',NULL,NULL,NULL,4,NULL,NULL),(130,15,'-r','$ftp_refuse$','string',NULL,'Accept TCP refusals with states ok, warn, crit. Defaults to crit.',NULL,NULL,NULL,NULL,NULL,NULL),(131,15,'-s','$ftp_send$','string',NULL,'String to send to the server.',NULL,NULL,NULL,2,NULL,NULL),(132,15,'-t','$ftp_timeout$','string',NULL,'Seconds before connection times out. Defaults to 10.',NULL,NULL,NULL,NULL,NULL,NULL),(133,15,'-w','$ftp_wtime$','string',NULL,'Response time to result in warning status (seconds).',NULL,NULL,NULL,NULL,NULL,NULL),(134,16,'-H','$ping_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,16,'-c','$ping_crta$,$ping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,16,'-p','$ping_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,16,'-t','$ping_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,16,'-w','$ping_wrta$,$ping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,17,'-H','$ping_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,17,'-c','$ping_crta$,$ping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,17,'-p','$ping_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,17,'-t','$ping_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,17,'-w','$ping_wrta$,$ping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,18,'-C','$hpjd_community$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,18,'-H','$hpjd_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,18,'-p','$hpjd_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,20,'-H','$icmp_address$','string',NULL,NULL,NULL,NULL,NULL,1,'n',NULL),(148,20,'-I','$icmp_target_interval$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,20,'-b','$icmp_data_bytes$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,20,'-c','$icmp_crta$,$icmp_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,20,'-i','$icmp_packet_interval$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,20,'-m','$icmp_hosts_alive$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,20,'-n','$icmp_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,20,'-s','$icmp_source$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,20,'-t','$icmp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,20,'-w','$icmp_wrta$,$icmp_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,22,'-H','$imap_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,22,'-p','$imap_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,22,'-t','$imap_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,23,'-6',NULL,NULL,NULL,'Use IPv6 only',NULL,'$http_ipv6$',NULL,NULL,NULL,NULL),(161,23,'-4',NULL,NULL,NULL,'Use IPv4 only',NULL,'$http_ipv4$',NULL,NULL,NULL,NULL),(162,23,'--invert-regex',NULL,NULL,NULL,'Return CRITICAL if found, OK if not',NULL,'$http_invertregex$',NULL,NULL,NULL,NULL),(163,23,'--no-body',NULL,NULL,NULL,NULL,NULL,'$http_ignore_body$',NULL,NULL,NULL,NULL),(164,23,'--sni',NULL,NULL,NULL,NULL,NULL,'$http_sni$',NULL,NULL,NULL,NULL),(165,23,'-A','$http_useragent$','string',NULL,'String to be sent in http header as User Agent',NULL,NULL,NULL,NULL,NULL,NULL),(166,23,'-C','$http_certificate$','string',NULL,'Minimum number of days a certificate has to be valid. Port defaults to 443.',NULL,NULL,NULL,NULL,NULL,NULL),(167,23,'-E',NULL,NULL,NULL,'Print additional perfdata',NULL,'$http_extendedperfdata$',NULL,NULL,NULL,NULL),(168,23,'-H','$http_vhost$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,23,'-I','$http_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,23,'-J','$http_clientcert$','string',NULL,'Name of file contains the client certificate (PEM format)',NULL,NULL,NULL,NULL,NULL,NULL),(171,23,'-K','$http_privatekey$','string',NULL,'Name of file contains the private key (PEM format)',NULL,NULL,NULL,NULL,NULL,NULL),(172,23,'-M','$http_maxage$','string',NULL,'Warn if document is more than seconds old',NULL,NULL,NULL,NULL,NULL,NULL),(173,23,'-P','$http_post$','string',NULL,'URL encoded http POST data',NULL,NULL,NULL,NULL,NULL,NULL),(174,23,'-R','$http_expect_body_eregi$','string',NULL,'Search page for case-insensitive regex',NULL,NULL,NULL,2,NULL,NULL),(175,23,'-S',NULL,NULL,NULL,NULL,NULL,'$http_ssl$',NULL,NULL,NULL,NULL),(176,23,'-S1',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_tlsv1$',NULL,NULL,NULL,NULL),(177,23,'-S1+',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_tlsv1_or_higher$',NULL,NULL,NULL,NULL),(178,23,'-S1.1',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_tlsv1_1$',NULL,NULL,NULL,NULL),(179,23,'-S1.1+',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_tlsv1_1_or_higher$',NULL,NULL,NULL,NULL),(180,23,'-S1.2',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_tlsv1_2$',NULL,NULL,NULL,NULL),(181,23,'-S1.2+',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_tlsv1_2_or_higher$',NULL,NULL,NULL,NULL),(182,23,'-S2',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_sslv2$',NULL,NULL,NULL,NULL),(183,23,'-S2+',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_sslv2_or_higher$',NULL,NULL,NULL,NULL),(184,23,'-S3',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_sslv3$',NULL,NULL,NULL,NULL),(185,23,'-S3+',NULL,NULL,NULL,NULL,NULL,'$http_ssl_force_sslv3_or_higher$',NULL,NULL,NULL,NULL),(186,23,'-T','$http_contenttype$','string',NULL,'Specify Content-Type header when POSTing',NULL,NULL,NULL,NULL,NULL,NULL),(187,23,'-a','$http_auth_pair$','string',NULL,'Username:password on sites with basic authentication',NULL,NULL,NULL,NULL,NULL,NULL),(188,23,'-b','$http_proxy_auth_pair$','string',NULL,'Username:password on proxy-servers with basic authentication',NULL,NULL,NULL,NULL,NULL,NULL),(189,23,'-c','$http_critical_time$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,23,'-d','$http_headerstring$','string',NULL,'String to expect in the response headers',NULL,NULL,NULL,NULL,NULL,NULL),(191,23,'-e','$http_expect$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,23,'-f','$http_onredirect$','string',NULL,'How to handle redirect pages',NULL,NULL,NULL,NULL,NULL,NULL),(193,23,'-j','$http_method$','string',NULL,'Set http method (for example: HEAD, OPTIONS, TRACE, PUT, DELETE)',NULL,NULL,NULL,NULL,NULL,NULL),(194,23,'-k','$http_header$','string',NULL,'Any other tags to be sent in http header',NULL,NULL,NULL,NULL,NULL,NULL),(195,23,'-l',NULL,NULL,NULL,'Allow regex to span newline',NULL,'$http_linespan$',NULL,1,NULL,NULL),(196,23,'-m','$http_pagesize$','string',NULL,'Minim page size required:Maximum page size required',NULL,NULL,NULL,NULL,NULL,NULL),(197,23,'-p','$http_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(198,23,'-r','$http_expect_body_regex$','string',NULL,'Search page for regex',NULL,NULL,NULL,2,NULL,NULL),(199,23,'-s','$http_string$','string',NULL,'String to expect in the content',NULL,NULL,NULL,NULL,NULL,NULL),(200,23,'-t','$http_timeout$','string',NULL,'Seconds before connection times out',NULL,NULL,NULL,NULL,NULL,NULL),(201,23,'-u','$http_uri$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,23,'-w','$http_warn_time$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,24,'-3',NULL,NULL,NULL,'Use LDAP protocol version 3',NULL,'$ldap_v3$',NULL,NULL,NULL,NULL),(204,24,'-2',NULL,NULL,NULL,'Use LDAP protocol version 2',NULL,'$ldap_v2$',NULL,NULL,NULL,NULL),(205,24,'-D','$ldap_bind$','string',NULL,'ldap bind DN (if required)',NULL,NULL,NULL,NULL,NULL,NULL),(206,24,'-H','$ldap_address$','string',NULL,'Host name, IP Address, or unix socket (must be an absolute path)',NULL,NULL,NULL,NULL,NULL,NULL),(207,24,'-P','$ldap_pass$','string',NULL,'ldap password (if required)',NULL,NULL,NULL,NULL,NULL,NULL),(208,24,'-S',NULL,NULL,NULL,'use ldaps (ldap v2 ssl method). this also sets the default port to 636',NULL,'$ldap_ssl$',NULL,NULL,NULL,NULL),(209,24,'-T',NULL,NULL,NULL,'use starttls mechanism introduced in protocol version 3',NULL,'$ldap_starttls$',NULL,NULL,NULL,NULL),(210,24,'-a','$ldap_attr$','string',NULL,'ldap attribute to search (default: \"(objectclass=*)\"',NULL,NULL,NULL,NULL,NULL,NULL),(211,24,'-b','$ldap_base$','string',NULL,'ldap base (eg. ou=my unit, o=my org, c=at',NULL,NULL,NULL,NULL,NULL,'y'),(212,24,'-c','$ldap_critical$','string',NULL,'Response time to result in critical status (seconds)',NULL,NULL,NULL,NULL,NULL,NULL),(213,24,'-p','$ldap_port$','string',NULL,'Port number (default: 389)',NULL,NULL,NULL,NULL,NULL,NULL),(214,24,'-t','$ldap_timeout$','string',NULL,'Seconds before connection times out (default: 10)',NULL,NULL,NULL,NULL,NULL,NULL),(215,24,'-v',NULL,NULL,NULL,'Show details for command-line debugging',NULL,'$ldap_verbose$',NULL,NULL,NULL,NULL),(216,24,'-w','$ldap_warning$','string',NULL,'Response time to result in warning status (seconds)',NULL,NULL,NULL,NULL,NULL,NULL),(217,25,'-c','$load_cload1$,$load_cload5$,$load_cload15$','string',NULL,'Exit with CRITICAL status if load average exceed CLOADn; the load average format is the same used by \'uptime\' and \'w\'',NULL,NULL,NULL,NULL,NULL,NULL),(218,25,'-r',NULL,NULL,NULL,'Divide the load averages by the number of CPUs (when possible)',NULL,'$load_percpu$',NULL,NULL,NULL,NULL),(219,25,'-w','$load_wload1$,$load_wload5$,$load_wload15$','string',NULL,'Exit with WARNING status if load average exceeds WLOADn',NULL,NULL,NULL,NULL,NULL,NULL),(220,26,'-C','$mailq_domain_critical$','string',NULL,'Min. number of messages for same domain in queue to generate critical alert ( W < C )',NULL,NULL,NULL,NULL,NULL,NULL),(221,26,'-M','$mailq_servertype$','string',NULL,'[ sendmail | qmail | postfix | exim | nullmailer ] (default = autodetect)',NULL,NULL,NULL,NULL,NULL,NULL),(222,26,'-W','$mailq_domain_warning$','string',NULL,'Min. number of messages for same domain in queue to generate warning',NULL,NULL,NULL,NULL,NULL,NULL),(223,26,'-c','$mailq_critical$','string',NULL,'Min. number of messages in queue to generate critical alert ( w < c )',NULL,NULL,NULL,NULL,NULL,'y'),(224,26,'-t','$mailq_timeout$','string',NULL,'Plugin timeout in seconds (default = 15)',NULL,NULL,NULL,NULL,NULL,NULL),(225,26,'-w','$mailq_warning$','string',NULL,'Min. number of messages in queue to generate warning',NULL,NULL,NULL,NULL,NULL,'y'),(226,27,'--wrapped-plugin','/* Unable to fetch function body through API */','expression',NULL,NULL,'y',NULL,NULL,1,NULL,NULL),(227,27,'-T','$negate_timeout_result$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,27,'-c','$negate_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,27,'-o','$negate_ok$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,27,'-s',NULL,NULL,NULL,NULL,NULL,'$negate_substitute$',NULL,NULL,NULL,NULL),(231,27,'-t','$negate_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,27,'-w','$negate_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,28,'-C','$mysql_cacert$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,28,'-D','$mysql_cadir$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,28,'-H','$mysql_hostname$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,28,'-L','$mysql_ciphers$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,28,'-P','$mysql_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,28,'-S',NULL,NULL,NULL,NULL,NULL,'$mysql_check_slave$',NULL,NULL,NULL,NULL),(239,28,'-a','$mysql_cert$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,28,'-c','$mysql_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,28,'-d','$mysql_database$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,28,'-f','$mysql_file$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,28,'-g','$mysql_group$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,28,'-k','$mysql_key$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,28,'-l',NULL,NULL,NULL,NULL,NULL,'$mysql_ssl$',NULL,NULL,NULL,NULL),(246,28,'-n',NULL,NULL,NULL,NULL,NULL,'$mysql_ignore_auth$',NULL,NULL,NULL,NULL),(247,28,'-p','$mysql_password$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,28,'-s','$mysql_socket$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,28,'-u','$mysql_username$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,28,'-w','$mysql_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,29,'-H','$nscp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,29,'-c','$nscp_crit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,29,'-d','SHOWALL','string',NULL,'Use with SERVICESTATE to see working services or PROCSTATE for running processes',NULL,'$nscp_showall$',NULL,NULL,NULL,NULL),(254,29,'-l','$nscp_params$','string',NULL,NULL,NULL,NULL,NULL,NULL,'n',NULL),(255,29,'-p','$nscp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,29,'-s','$nscp_password$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,29,'-t','$nscp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,29,'-v','$nscp_variable$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'y'),(259,29,'-w','$nscp_warn$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,30,'-6',NULL,NULL,NULL,'Use IPv6 only',NULL,'$nrpe_ipv6$',NULL,NULL,NULL,NULL),(261,30,'-4',NULL,NULL,NULL,'Use IPv4 only',NULL,'$nrpe_ipv4$',NULL,NULL,NULL,NULL),(262,30,'-H','$nrpe_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,30,'-a','$nrpe_arguments$','string',NULL,NULL,NULL,NULL,NULL,1,'n',NULL),(264,30,'-c','$nrpe_command$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,30,'-n',NULL,NULL,NULL,'Do not use SSL.',NULL,'$nrpe_no_ssl$',NULL,NULL,NULL,NULL),(266,30,'-p','$nrpe_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,30,'-t','$nrpe_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,30,'-u',NULL,NULL,NULL,'Make socket timeouts return an UNKNOWN state instead of CRITICAL',NULL,'$nrpe_timeout_unknown$',NULL,NULL,NULL,NULL),(269,31,'-C','$ntp_cstratum$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,31,'-H','$ntp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,31,'-W','$ntp_wstratum$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,31,'-c','$ntp_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,31,'-j','$ntp_wjitter$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,31,'-k','$ntp_cjitter$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,31,'-m','$ntp_wsource$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,31,'-n','$ntp_csource$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,31,'-p','$ntp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,31,'-t','$ntp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,31,'-w','$ntp_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,32,'-H','$ntp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,32,'-c','$ntp_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,32,'-o','$ntp_timeoffset$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(283,32,'-p','$ntp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,32,'-q','$ntp_quit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,32,'-t','$ntp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,32,'-w','$ntp_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,34,'-C','$pgsql_query_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(288,34,'-H','$pgsql_hostname$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,34,'-P','$pgsql_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,34,'-W','$pgsql_query_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,34,'-c','$pgsql_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(292,34,'-d','$pgsql_database$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(293,34,'-l','$pgsql_username$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(294,34,'-o','$pgsql_options$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(295,34,'-p','$pgsql_password$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(296,34,'-q','$pgsql_query$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(297,34,'-t','$pgsql_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(298,34,'-w','$pgsql_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(299,35,'-H','$ping_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(300,35,'-c','$ping_crta$,$ping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,35,'-p','$ping_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,35,'-t','$ping_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(303,35,'-w','$ping_wrta$,$ping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(304,36,'-H','$ping_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(305,36,'-c','$ping_crta$,$ping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(306,36,'-p','$ping_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(307,36,'-t','$ping_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(308,36,'-w','$ping_wrta$,$ping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(309,37,'-H','$ping_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,37,'-c','$ping_crta$,$ping_cpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,37,'-p','$ping_packets$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(312,37,'-t','$ping_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(313,37,'-w','$ping_wrta$,$ping_wpl$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(314,38,'-H','$pop_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(315,38,'-p','$pop_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(316,38,'-t','$pop_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(317,40,'-H','$simap_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(318,40,'-p','$simap_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(319,40,'-t','$simap_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(320,41,'--ereg-argument-array','$procs_argument_regex$','string',NULL,'Only scan for processes with args that contain the regex STRING',NULL,NULL,NULL,NULL,NULL,NULL),(321,41,'-C','$procs_command$','string',NULL,'Only scan for exact matches of COMMAND (without path)',NULL,NULL,NULL,NULL,NULL,NULL),(322,41,'-P','$procs_pcpu$','string',NULL,'Only scan for processes with PCPU higher than indicated',NULL,NULL,NULL,NULL,NULL,NULL),(323,41,'-T',NULL,NULL,NULL,'Filter own process the traditional way by PID instead of /proc/pid/exe',NULL,'$procs_traditional$',NULL,NULL,NULL,NULL),(324,41,'-a','$procs_argument$','string',NULL,'Only scan for processes with args that contain STRING',NULL,NULL,NULL,NULL,NULL,NULL),(325,41,'-c','$procs_critical$','string',NULL,'Generate critical state if metric is outside this range',NULL,NULL,NULL,NULL,NULL,NULL),(326,41,'-k',NULL,NULL,NULL,'Only scan for non kernel threads',NULL,'$procs_nokthreads$',NULL,NULL,NULL,NULL),(327,41,'-m','$procs_metric$','string',NULL,'Check thresholds against metric',NULL,NULL,NULL,NULL,NULL,NULL),(328,41,'-p','$procs_ppid$','string',NULL,'Only scan for children of the parent process ID indicated',NULL,NULL,NULL,NULL,NULL,NULL),(329,41,'-r','$procs_rss$','string',NULL,'Only scan for processes with RSS higher than indicated',NULL,NULL,NULL,NULL,NULL,NULL),(330,41,'-s','$procs_state$','string',NULL,'Only scan for processes that have one or more of the status flags you specify',NULL,NULL,NULL,NULL,NULL,NULL),(331,41,'-t','$procs_timeout$','string',NULL,'Seconds before plugin times out',NULL,NULL,NULL,NULL,NULL,NULL),(332,41,'-u','$procs_user$','string',NULL,'Only scan for processes with user name or ID indicated',NULL,NULL,NULL,NULL,NULL,NULL),(333,41,'-w','$procs_warning$','string',NULL,'Generate warning state if metric is outside this range',NULL,NULL,NULL,NULL,NULL,NULL),(334,41,'-z','$procs_vsz$','string',NULL,'Only scan for processes with VSZ higher than indicated',NULL,NULL,NULL,NULL,NULL,NULL),(335,42,'-A','$smtp_authtype$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(336,42,'-C','$smtp_command$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(337,42,'-D','$smtp_certificate_age$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(338,42,'-F','$smtp_helo_fqdn$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(339,42,'-H','$smtp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(340,42,'-P','$smtp_authpass$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(341,42,'-R','$smtp_response$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(342,42,'-S','$smtp_starttls$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(343,42,'-U','$smtp_authuser$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(344,42,'-c','$smtp_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(345,42,'-e','$smtp_expect$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(346,42,'-f','$smtp_mail_from$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(347,42,'-p','$smtp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(348,42,'-q','$smtp_ignore_quit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(349,42,'-t','$smtp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(350,42,'-w','$smtp_warning$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(351,43,'--invert-search',NULL,NULL,NULL,'Invert search result and return CRITICAL if found',NULL,'$snmp_invert_search$',NULL,NULL,NULL,NULL),(352,43,'--rate',NULL,NULL,NULL,'Enable rate calculation',NULL,'$snmp_rate$',NULL,NULL,NULL,NULL),(353,43,'--rate-multiplier','$snmp_rate_multiplier$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(354,43,'-C','$snmp_community$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(355,43,'-H','$snmp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(356,43,'-P','$snmp_version$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(357,43,'-R','$snmp_eregi$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(358,43,'-c','$snmp_crit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(359,43,'-l','$snmp_label$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(360,43,'-m','$snmp_miblist$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(361,43,'-n',NULL,NULL,NULL,'Use SNMP GETNEXT instead of SNMP GET',NULL,'$snmp_getnext$',NULL,NULL,NULL,NULL),(362,43,'-o','$snmp_oid$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(363,43,'-p','$snmp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(364,43,'-r','$snmp_ereg$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(365,43,'-s','$snmp_string$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(366,43,'-t','$snmp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(367,43,'-u','$snmp_units$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(368,43,'-w','$snmp_warn$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(369,44,'--invert-search',NULL,NULL,NULL,'Invert search result and return CRITICAL if found',NULL,'$snmp_invert_search$',NULL,NULL,NULL,NULL),(370,44,'--rate',NULL,NULL,NULL,'Enable rate calculation',NULL,'$snmp_rate$',NULL,NULL,NULL,NULL),(371,44,'--rate-multiplier','$snmp_rate_multiplier$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(372,44,'-C','$snmp_community$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(373,44,'-H','$snmp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(374,44,'-P','$snmp_version$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(375,44,'-R','$snmp_eregi$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(376,44,'-c','$snmp_crit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(377,44,'-l','$snmp_label$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(378,44,'-m','$snmp_miblist$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(379,44,'-n',NULL,NULL,NULL,'Use SNMP GETNEXT instead of SNMP GET',NULL,'$snmp_getnext$',NULL,NULL,NULL,NULL),(380,44,'-o','$snmp_oid$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(381,44,'-p','$snmp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(382,44,'-r','$snmp_ereg$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(383,44,'-s','$snmp_string$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(384,44,'-t','$snmp_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(385,44,'-u','$snmp_units$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(386,44,'-w','$snmp_warn$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(387,45,'-H','$spop_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(388,45,'-p','$spop_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(389,45,'-t','$spop_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(390,46,'-p','$ssh_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(391,46,'-t','$ssh_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(392,46,'host','$ssh_address$','string',NULL,NULL,'y',NULL,NULL,1,NULL,NULL),(393,47,'--invert-search',NULL,NULL,NULL,'Invert search result and return CRITICAL if found',NULL,'$snmpv3_invert_search$',NULL,NULL,NULL,NULL),(394,47,'--rate',NULL,NULL,NULL,'Enable rate calculation',NULL,'$snmpv3_rate$',NULL,NULL,NULL,NULL),(395,47,'--rate-multiplier','$snmpv3_rate_multiplier$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(396,47,'-A','$snmpv3_auth_key$','string',NULL,'SNMPv3 authentication password',NULL,NULL,NULL,NULL,NULL,NULL),(397,47,'-H','$snmpv3_address$','string',NULL,'Host name, IP Address, or unix socket (must be an absolute path)',NULL,NULL,NULL,NULL,NULL,NULL),(398,47,'-L','$snmpv3_seclevel$','string',NULL,'SNMPv3 securityLevel',NULL,NULL,NULL,NULL,NULL,NULL),(399,47,'-P','3','json',NULL,'SNMP protocol version',NULL,NULL,NULL,NULL,NULL,NULL),(400,47,'-R','$snmpv3_eregi$','string',NULL,'Return OK state (for that OID) if case-insensitive extended REGEX matches',NULL,NULL,NULL,NULL,NULL,NULL),(401,47,'-U','$snmpv3_user$','string',NULL,'SNMPv3 username',NULL,NULL,NULL,NULL,NULL,NULL),(402,47,'-X','$snmpv3_priv_key$','string',NULL,'SNMPv3 privacy password',NULL,NULL,NULL,NULL,NULL,NULL),(403,47,'-a','$snmpv3_auth_alg$','string',NULL,'SNMPv3 auth proto',NULL,NULL,NULL,NULL,NULL,NULL),(404,47,'-c','$snmpv3_crit$','string',NULL,'Critical threshold range(s)',NULL,NULL,NULL,NULL,NULL,NULL),(405,47,'-l','$snmpv3_label$','string',NULL,'Prefix label for output from plugin',NULL,NULL,NULL,NULL,NULL,NULL),(406,47,'-n',NULL,NULL,NULL,'Use SNMP GETNEXT instead of SNMP GET',NULL,'$snmpv3_getnext$',NULL,NULL,NULL,NULL),(407,47,'-o','$snmpv3_oid$','string',NULL,'Object identifier(s) or SNMP variables whose value you wish to query',NULL,NULL,NULL,NULL,NULL,NULL),(408,47,'-r','$snmpv3_ereg$','string',NULL,'Return OK state (for that OID) if extended regular expression REGEX matches',NULL,NULL,NULL,NULL,NULL,NULL),(409,47,'-s','$snmpv3_string$','string',NULL,'Return OK state (for that OID) if STRING is an exact match',NULL,NULL,NULL,NULL,NULL,NULL),(410,47,'-t','$snmpv3_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,47,'-u','$snmpv3_units$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(412,47,'-w','$snmpv3_warn$','string',NULL,'Warning threshold range(s)',NULL,NULL,NULL,NULL,NULL,NULL),(413,47,'-x','$snmpv3_priv_alg$','string',NULL,'SNMPv3 priv proto (default DES)',NULL,NULL,NULL,NULL,NULL,NULL),(414,48,'--ssl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(415,48,'--timeout','$ssl_timeout$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(416,48,'-D','$ssl_cert_valid_days_warn$,$ssl_cert_valid_days_critical$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(417,48,'-H','$ssl_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(418,48,'-p','$ssl_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(419,49,'-c','$swap_cfree$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(420,49,'-w','$swap_wfree$%','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(421,50,'-H','$ssmtp_address$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(422,50,'-p','$ssmtp_port$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(423,51,'-6',NULL,NULL,NULL,'Use IPv6 only',NULL,'$udp_ipv6$',NULL,NULL,NULL,NULL),(424,51,'-4',NULL,NULL,NULL,'Use IPv4 only',NULL,'$udp_ipv4$',NULL,NULL,NULL,NULL),(425,51,'-e','$udp_expect$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'y'),(426,51,'-q','$udp_quit$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(427,51,'-s','$udp_send$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'y'),(428,52,'-H','$ups_address$','string',NULL,'Address of the upsd server',NULL,NULL,NULL,NULL,NULL,'y'),(429,52,'-T',NULL,NULL,NULL,'Display temperature in degrees Celsius instead of Fahrenheit',NULL,'$ups_celsius$',NULL,NULL,NULL,NULL),(430,52,'-c','$ups_critical$','string',NULL,'Critical threshold for the selected variable',NULL,NULL,NULL,NULL,NULL,NULL),(431,52,'-p','$ups_port$','string',NULL,'Port number (default: 3493)',NULL,NULL,NULL,NULL,NULL,NULL),(432,52,'-t','$ups_timeout$','string',NULL,'Seconds before the connection times out (default: 10)',NULL,NULL,NULL,NULL,NULL,NULL),(433,52,'-u','$ups_name$','string',NULL,'Name of the UPS to monitor',NULL,NULL,NULL,NULL,NULL,'y'),(434,52,'-v','$ups_variable$','string',NULL,'Variable to monitor, valid strings are LINE, TEMP, BATTPCT or LOADPCT',NULL,NULL,NULL,NULL,NULL,NULL),(435,52,'-w','$ups_warning$','string',NULL,'Warning threshold for the selected variable',NULL,NULL,NULL,NULL,NULL,NULL),(436,53,'-6',NULL,NULL,NULL,'Use IPv6 only',NULL,'$tcp_ipv6$',NULL,NULL,NULL,NULL),(437,53,'-4',NULL,NULL,NULL,'Use IPv4 only',NULL,'$tcp_ipv4$',NULL,NULL,NULL,NULL),(438,53,'-A',NULL,NULL,NULL,'All expect strings need to occur in server response. Defaults to false.',NULL,'$tcp_all$',NULL,NULL,NULL,NULL),(439,53,'-D','$tcp_certificate$','string',NULL,'Minimum number of days a certificate has to be valid. 1st value is number of days for warning, 2nd is critical (if not specified: 0) - seperated by comma.',NULL,NULL,NULL,NULL,NULL,NULL),(440,53,'-E_quit',NULL,NULL,NULL,'Enable usage of \n, \r, 	 or \\ in quit string.',NULL,'$tcp_escape_quit$',NULL,3,NULL,NULL),(441,53,'-E_send',NULL,NULL,NULL,'Enable usage of \n, \r, 	 or \\ in send string.',NULL,'$tcp_escape_send$',NULL,1,NULL,NULL),(442,53,'-H','$tcp_address$','string',NULL,'Host name, IP Address, or unix socket (must be an absolute path).',NULL,NULL,NULL,NULL,NULL,NULL),(443,53,'-M','$tcp_mismatch$','string',NULL,'Accept expected string mismatches with states ok, warn, crit. Defaults to warn.',NULL,NULL,NULL,NULL,NULL,NULL),(444,53,'-S',NULL,NULL,NULL,'Use SSL for the connection.',NULL,'$tcp_ssl$',NULL,NULL,NULL,NULL),(445,53,'-c','$tcp_ctime$','string',NULL,'Response time to result in critical status (seconds).',NULL,NULL,NULL,NULL,NULL,NULL),(446,53,'-d','$tcp_delay$','string',NULL,'Seconds to wait between sending string and polling for response.',NULL,NULL,NULL,NULL,NULL,NULL),(447,53,'-e','$tcp_expect$','string',NULL,'String to expect in server response (may be repeated).',NULL,NULL,NULL,NULL,NULL,NULL),(448,53,'-j',NULL,NULL,NULL,'Hide output from TCP socket.',NULL,'$tcp_jail$',NULL,NULL,NULL,NULL),(449,53,'-m','$tcp_maxbytes$','string',NULL,'Close connection once more than this number of bytes are received.',NULL,NULL,NULL,NULL,NULL,NULL),(450,53,'-p','$tcp_port$','string',NULL,'The TCP port number.',NULL,NULL,NULL,NULL,NULL,NULL),(451,53,'-q','$tcp_quit$','string',NULL,'String to send server to initiate a clean close of the connection.',NULL,NULL,NULL,4,NULL,NULL),(452,53,'-r','$tcp_refuse$','string',NULL,'Accept TCP refusals with states ok, warn, crit. Defaults to crit.',NULL,NULL,NULL,NULL,NULL,NULL),(453,53,'-s','$tcp_send$','string',NULL,'String to send to the server.',NULL,NULL,NULL,2,NULL,NULL),(454,53,'-t','$tcp_timeout$','string',NULL,'Seconds before connection times out. Defaults to 10.',NULL,NULL,NULL,NULL,NULL,NULL),(455,53,'-w','$tcp_wtime$','string',NULL,'Response time to result in warning status (seconds).',NULL,NULL,NULL,NULL,NULL,NULL),(456,54,'-c','$users_cgreater$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(457,54,'-w','$users_wgreater$','string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `icinga_command_argument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_command_field`
--

DROP TABLE IF EXISTS `icinga_command_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_command_field` (
  `command_id` int(10) unsigned NOT NULL,
  `datafield_id` int(10) unsigned NOT NULL,
  `is_required` enum('y','n') NOT NULL,
  PRIMARY KEY (`command_id`,`datafield_id`),
  KEY `icinga_command_field_datafield` (`datafield_id`),
  CONSTRAINT `icinga_command_field_command` FOREIGN KEY (`command_id`) REFERENCES `icinga_command` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_command_field_datafield` FOREIGN KEY (`datafield_id`) REFERENCES `director_datafield` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_command_field`
--

LOCK TABLES `icinga_command_field` WRITE;
/*!40000 ALTER TABLE `icinga_command_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_command_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_command_inheritance`
--

DROP TABLE IF EXISTS `icinga_command_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_command_inheritance` (
  `command_id` int(10) unsigned NOT NULL,
  `parent_command_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`command_id`,`parent_command_id`),
  UNIQUE KEY `unique_order` (`command_id`,`weight`),
  KEY `icinga_command_inheritance_parent_command` (`parent_command_id`),
  CONSTRAINT `icinga_command_inheritance_command` FOREIGN KEY (`command_id`) REFERENCES `icinga_command` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_command_inheritance_parent_command` FOREIGN KEY (`parent_command_id`) REFERENCES `icinga_command` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_command_inheritance`
--

LOCK TABLES `icinga_command_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_command_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_command_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_command_var`
--

DROP TABLE IF EXISTS `icinga_command_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_command_var` (
  `command_id` int(10) unsigned NOT NULL,
  `varname` varchar(255) NOT NULL,
  `varvalue` text,
  `format` enum('string','expression','json') NOT NULL DEFAULT 'string',
  PRIMARY KEY (`command_id`,`varname`),
  CONSTRAINT `icinga_command_var_command` FOREIGN KEY (`command_id`) REFERENCES `icinga_command` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_command_var`
--

LOCK TABLES `icinga_command_var` WRITE;
/*!40000 ALTER TABLE `icinga_command_var` DISABLE KEYS */;
INSERT INTO `icinga_command_var` VALUES (2,'by_ssh_address','$check_address$','string'),(2,'by_ssh_quiet','false','json'),(2,'check_address','{\"type\":\"Function\"}','json'),(2,'check_ipv4','false','json'),(2,'check_ipv6','false','json'),(3,'clamd_mismatch','warn','string'),(3,'clamd_refuse','crit','string'),(3,'clamd_ssl','false','json'),(3,'clamd_timeout','10','json'),(5,'cluster_zone','$host.name$','string'),(6,'dhcp_unicast','false','json'),(7,'check_address','{\"type\":\"Function\"}','json'),(7,'check_ipv4','false','json'),(7,'check_ipv6','false','json'),(7,'dig_server','$check_address$','string'),(8,'disk_cfree','10%','string'),(8,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"devtmpfs\",\"devfs\",\"mtmfs\"]','json'),(8,'disk_inode_cfree','10%','string'),(8,'disk_inode_wfree','20%','string'),(8,'disk_megabytes','true','json'),(8,'disk_wfree','20%','string'),(9,'disk_smb_cused','95%','string'),(9,'disk_smb_wused','85%','string'),(10,'check_address','{\"type\":\"Function\"}','json'),(10,'check_ipv4','false','json'),(10,'check_ipv6','false','json'),(10,'dns_expected_answer','$check_address$','string'),(10,'dns_lookup','$host.name$','string'),(10,'dns_timeout','10','json'),(11,'dummy_state','0','json'),(11,'dummy_text','Check was successful.','string'),(12,'fping_address','$address$','string'),(12,'fping_cpl','15','json'),(12,'fping_crta','200','json'),(12,'fping_interval','500','json'),(12,'fping_number','5','json'),(12,'fping_wpl','5','json'),(12,'fping_wrta','100','json'),(13,'fping_address','$address6$','string'),(13,'fping_cpl','15','json'),(13,'fping_crta','200','json'),(13,'fping_interval','500','json'),(13,'fping_number','5','json'),(13,'fping_wpl','5','json'),(13,'fping_wrta','100','json'),(14,'check_address','{\"type\":\"Function\"}','json'),(14,'check_ipv4','false','json'),(14,'check_ipv6','false','json'),(14,'ping_address','$check_address$','string'),(14,'ping_cpl','100','json'),(14,'ping_crta','5000','json'),(14,'ping_wpl','80','json'),(14,'ping_wrta','3000','json'),(15,'check_address','{\"type\":\"Function\"}','json'),(15,'check_ipv4','false','json'),(15,'check_ipv6','false','json'),(15,'ftp_address','$check_address$','string'),(15,'ftp_mismatch','warn','string'),(15,'ftp_refuse','crit','string'),(15,'ftp_ssl','false','json'),(15,'ftp_timeout','10','json'),(16,'ping_address','$address$','string'),(16,'ping_cpl','100','json'),(16,'ping_crta','5000','json'),(16,'ping_wpl','80','json'),(16,'ping_wrta','3000','json'),(17,'ping_address','$address6$','string'),(17,'ping_cpl','100','json'),(17,'ping_crta','5000','json'),(17,'ping_wpl','80','json'),(17,'ping_wrta','3000','json'),(18,'check_address','{\"type\":\"Function\"}','json'),(18,'check_ipv4','false','json'),(18,'check_ipv6','false','json'),(18,'hpjd_address','$check_address$','string'),(20,'icmp_address','$address$','string'),(20,'icmp_cpl','15','json'),(20,'icmp_crta','200','json'),(20,'icmp_wpl','5','json'),(20,'icmp_wrta','100','json'),(22,'check_address','{\"type\":\"Function\"}','json'),(22,'check_ipv4','false','json'),(22,'check_ipv6','false','json'),(22,'imap_address','$check_address$','string'),(23,'check_address','{\"type\":\"Function\"}','json'),(23,'check_ipv4','$http_ipv4$','string'),(23,'check_ipv6','$http_ipv6$','string'),(23,'http_address','$check_address$','string'),(23,'http_invertregex','false','json'),(23,'http_linespan','false','json'),(23,'http_sni','false','json'),(23,'http_ssl','false','json'),(24,'check_address','{\"type\":\"Function\"}','json'),(24,'check_ipv4','false','json'),(24,'check_ipv6','false','json'),(24,'ldap_address','$check_address$','string'),(24,'ldap_timeout','10','json'),(24,'ldap_v2','true','json'),(24,'ldap_v3','false','json'),(24,'ldap_verbose','false','json'),(25,'load_cload1','10','json'),(25,'load_cload15','4','json'),(25,'load_cload5','6','json'),(25,'load_percpu','false','json'),(25,'load_wload1','5','json'),(25,'load_wload15','3','json'),(25,'load_wload5','4','json'),(27,'negate_timeout_result','UNKNOWN','string'),(28,'check_address','{\"type\":\"Function\"}','json'),(28,'check_ipv4','false','json'),(28,'check_ipv6','false','json'),(28,'mysql_hostname','$check_address$','string'),(29,'check_address','{\"type\":\"Function\"}','json'),(29,'check_ipv4','false','json'),(29,'check_ipv6','false','json'),(29,'nscp_address','$check_address$','string'),(29,'nscp_port','12489','json'),(29,'nscp_showall','false','json'),(30,'check_address','{\"type\":\"Function\"}','json'),(30,'check_ipv4','$nrpe_ipv4$','string'),(30,'check_ipv6','$nrpe_ipv6$','string'),(30,'nrpe_address','$check_address$','string'),(30,'nrpe_no_ssl','false','json'),(30,'nrpe_timeout_unknown','false','json'),(31,'check_address','{\"type\":\"Function\"}','json'),(31,'check_ipv4','false','json'),(31,'check_ipv6','false','json'),(31,'ntp_address','$check_address$','string'),(32,'check_address','{\"type\":\"Function\"}','json'),(32,'check_ipv4','false','json'),(32,'check_ipv6','false','json'),(32,'ntp_address','$check_address$','string'),(33,'dummy_state','3','json'),(33,'dummy_text','No Passive Check Result Received.','string'),(34,'check_address','{\"type\":\"Function\"}','json'),(34,'check_ipv4','false','json'),(34,'check_ipv6','false','json'),(34,'pgsql_hostname','$check_address$','string'),(35,'check_address','{\"type\":\"Function\"}','json'),(35,'check_ipv4','false','json'),(35,'check_ipv6','false','json'),(35,'ping_address','$check_address$','string'),(35,'ping_cpl','15','json'),(35,'ping_crta','200','json'),(35,'ping_wpl','5','json'),(35,'ping_wrta','100','json'),(36,'ping_address','$address$','string'),(36,'ping_cpl','15','json'),(36,'ping_crta','200','json'),(36,'ping_wpl','5','json'),(36,'ping_wrta','100','json'),(37,'ping_address','$address6$','string'),(37,'ping_cpl','15','json'),(37,'ping_crta','200','json'),(37,'ping_wpl','5','json'),(37,'ping_wrta','100','json'),(38,'check_address','{\"type\":\"Function\"}','json'),(38,'check_ipv4','false','json'),(38,'check_ipv6','false','json'),(38,'pop_address','$check_address$','string'),(40,'check_address','{\"type\":\"Function\"}','json'),(40,'check_ipv4','false','json'),(40,'check_ipv6','false','json'),(40,'simap_address','$check_address$','string'),(41,'procs_critical','400','json'),(41,'procs_nokthreads','false','json'),(41,'procs_traditional','false','json'),(41,'procs_warning','250','json'),(42,'check_address','{\"type\":\"Function\"}','json'),(42,'check_ipv4','false','json'),(42,'check_ipv6','false','json'),(42,'smtp_address','$check_address$','string'),(43,'snmp_address','{\"type\":\"Function\"}','json'),(43,'snmp_community','public','string'),(43,'snmp_invert_search','false','json'),(43,'snmp_timeout','10','string'),(44,'snmp_address','{\"type\":\"Function\"}','json'),(44,'snmp_community','public','string'),(44,'snmp_invert_search','false','json'),(44,'snmp_oid','1.3.6.1.2.1.1.3.0','string'),(44,'snmp_timeout','10','string'),(45,'check_address','{\"type\":\"Function\"}','json'),(45,'check_ipv4','false','json'),(45,'check_ipv6','false','json'),(45,'spop_address','$check_address$','string'),(46,'check_address','{\"type\":\"Function\"}','json'),(46,'check_ipv4','false','json'),(46,'check_ipv6','false','json'),(46,'ssh_address','$check_address$','string'),(47,'check_address','{\"type\":\"Function\"}','json'),(47,'check_ipv4','false','json'),(47,'check_ipv6','false','json'),(47,'snmpv3_address','$check_address$','string'),(47,'snmpv3_auth_alg','SHA','string'),(47,'snmpv3_priv_alg','AES','string'),(47,'snmpv3_seclevel','authPriv','string'),(47,'snmpv3_timeout','10','string'),(48,'check_address','{\"type\":\"Function\"}','json'),(48,'check_ipv4','false','json'),(48,'check_ipv6','false','json'),(48,'ssl_address','$check_address$','string'),(49,'swap_cfree','25','json'),(49,'swap_wfree','50','json'),(50,'check_address','{\"type\":\"Function\"}','json'),(50,'check_ipv4','false','json'),(50,'check_ipv6','false','json'),(50,'ssmtp_address','$check_address$','string'),(51,'check_address','{\"type\":\"Function\"}','json'),(51,'check_ipv4','$udp_ipv4$','string'),(51,'check_ipv6','$udp_ipv6$','string'),(51,'udp_address','$check_address$','string'),(52,'check_address','{\"type\":\"Function\"}','json'),(52,'check_ipv4','false','json'),(52,'check_ipv6','false','json'),(52,'ups_address','$check_address$','string'),(52,'ups_name','ups','string'),(53,'check_address','{\"type\":\"Function\"}','json'),(53,'check_ipv4','$tcp_ipv4$','string'),(53,'check_ipv6','$tcp_ipv6$','string'),(53,'tcp_address','$check_address$','string'),(53,'tcp_all','false','json'),(53,'tcp_mismatch','warn','string'),(53,'tcp_refuse','crit','string'),(53,'tcp_timeout','10','json'),(54,'users_cgreater','50','json'),(54,'users_wgreater','20','json');
/*!40000 ALTER TABLE `icinga_command_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpoint`
--

DROP TABLE IF EXISTS `icinga_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int(10) unsigned DEFAULT NULL,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template','external_object') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `host` varchar(255) DEFAULT NULL COMMENT 'IP address / hostname of remote node',
  `port` smallint(5) unsigned DEFAULT NULL COMMENT '5665 if not set',
  `log_duration` varchar(32) DEFAULT NULL COMMENT '1d if not set',
  `apiuser_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`),
  KEY `icinga_endpoint_zone` (`zone_id`),
  KEY `icinga_apiuser` (`apiuser_id`),
  CONSTRAINT `icinga_apiuser` FOREIGN KEY (`apiuser_id`) REFERENCES `icinga_apiuser` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_endpoint_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpoint`
--

LOCK TABLES `icinga_endpoint` WRITE;
/*!40000 ALTER TABLE `icinga_endpoint` DISABLE KEYS */;
INSERT INTO `icinga_endpoint` VALUES (1,1,'icinga2','external_object','n','icinga2',5665,'86400',1);
/*!40000 ALTER TABLE `icinga_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpoint_inheritance`
--

DROP TABLE IF EXISTS `icinga_endpoint_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpoint_inheritance` (
  `endpoint_id` int(10) unsigned NOT NULL,
  `parent_endpoint_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`endpoint_id`,`parent_endpoint_id`),
  UNIQUE KEY `unique_order` (`endpoint_id`,`weight`),
  KEY `icinga_endpoint_inheritance_parent_endpoint` (`parent_endpoint_id`),
  CONSTRAINT `icinga_endpoint_inheritance_endpoint` FOREIGN KEY (`endpoint_id`) REFERENCES `icinga_endpoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_endpoint_inheritance_parent_endpoint` FOREIGN KEY (`parent_endpoint_id`) REFERENCES `icinga_endpoint` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpoint_inheritance`
--

LOCK TABLES `icinga_endpoint_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_endpoint_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_endpoint_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host`
--

DROP TABLE IF EXISTS `icinga_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `display_name` varchar(255) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `address6` varchar(45) DEFAULT NULL,
  `check_command_id` int(10) unsigned DEFAULT NULL,
  `max_check_attempts` mediumint(8) unsigned DEFAULT NULL,
  `check_period_id` int(10) unsigned DEFAULT NULL,
  `check_interval` varchar(8) DEFAULT NULL,
  `retry_interval` varchar(8) DEFAULT NULL,
  `enable_notifications` enum('y','n') DEFAULT NULL,
  `enable_active_checks` enum('y','n') DEFAULT NULL,
  `enable_passive_checks` enum('y','n') DEFAULT NULL,
  `enable_event_handler` enum('y','n') DEFAULT NULL,
  `enable_flapping` enum('y','n') DEFAULT NULL,
  `enable_perfdata` enum('y','n') DEFAULT NULL,
  `event_command_id` int(10) unsigned DEFAULT NULL,
  `flapping_threshold` smallint(5) unsigned DEFAULT NULL,
  `volatile` enum('y','n') DEFAULT NULL,
  `zone_id` int(10) unsigned DEFAULT NULL,
  `command_endpoint_id` int(10) unsigned DEFAULT NULL,
  `notes` text,
  `notes_url` varchar(255) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `icon_image_alt` varchar(255) DEFAULT NULL,
  `has_agent` enum('y','n') DEFAULT NULL,
  `master_should_connect` enum('y','n') DEFAULT NULL,
  `accept_config` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`),
  KEY `search_idx` (`display_name`),
  KEY `icinga_host_zone` (`zone_id`),
  KEY `icinga_host_check_period` (`check_period_id`),
  KEY `icinga_host_check_command` (`check_command_id`),
  KEY `icinga_host_event_command` (`event_command_id`),
  KEY `icinga_host_command_endpoint` (`command_endpoint_id`),
  CONSTRAINT `icinga_host_check_command` FOREIGN KEY (`check_command_id`) REFERENCES `icinga_command` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_check_period` FOREIGN KEY (`check_period_id`) REFERENCES `icinga_timeperiod` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_command_endpoint` FOREIGN KEY (`command_endpoint_id`) REFERENCES `icinga_endpoint` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_event_command` FOREIGN KEY (`event_command_id`) REFERENCES `icinga_command` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host`
--

LOCK TABLES `icinga_host` WRITE;
/*!40000 ALTER TABLE `icinga_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_field`
--

DROP TABLE IF EXISTS `icinga_host_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_field` (
  `host_id` int(10) unsigned NOT NULL COMMENT 'Makes only sense for templates',
  `datafield_id` int(10) unsigned NOT NULL,
  `is_required` enum('y','n') NOT NULL,
  PRIMARY KEY (`host_id`,`datafield_id`),
  KEY `icinga_host_field_datafield` (`datafield_id`),
  CONSTRAINT `icinga_host_field_datafield` FOREIGN KEY (`datafield_id`) REFERENCES `director_datafield` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_field_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_field`
--

LOCK TABLES `icinga_host_field` WRITE;
/*!40000 ALTER TABLE `icinga_host_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_inheritance`
--

DROP TABLE IF EXISTS `icinga_host_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_inheritance` (
  `host_id` int(10) unsigned NOT NULL,
  `parent_host_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`host_id`,`parent_host_id`),
  UNIQUE KEY `unique_order` (`host_id`,`weight`),
  KEY `icinga_host_inheritance_parent_host` (`parent_host_id`),
  CONSTRAINT `icinga_host_inheritance_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_inheritance_parent_host` FOREIGN KEY (`parent_host_id`) REFERENCES `icinga_host` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_inheritance`
--

LOCK TABLES `icinga_host_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_host_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_service`
--

DROP TABLE IF EXISTS `icinga_host_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_service` (
  `host_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`host_id`,`service_id`),
  KEY `icinga_host_service_service` (`service_id`),
  CONSTRAINT `icinga_host_service_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_host_service_service` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_service`
--

LOCK TABLES `icinga_host_service` WRITE;
/*!40000 ALTER TABLE `icinga_host_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_var`
--

DROP TABLE IF EXISTS `icinga_host_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_var` (
  `host_id` int(10) unsigned NOT NULL,
  `varname` varchar(255) NOT NULL,
  `varvalue` text,
  `format` enum('string','json','expression') DEFAULT NULL,
  PRIMARY KEY (`host_id`,`varname`),
  KEY `search_idx` (`varname`),
  CONSTRAINT `icinga_host_var_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_var`
--

LOCK TABLES `icinga_host_var` WRITE;
/*!40000 ALTER TABLE `icinga_host_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup`
--

DROP TABLE IF EXISTS `icinga_hostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`),
  KEY `search_idx` (`display_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup`
--

LOCK TABLES `icinga_hostgroup` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup_host`
--

DROP TABLE IF EXISTS `icinga_hostgroup_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup_host` (
  `hostgroup_id` int(10) unsigned NOT NULL,
  `host_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`hostgroup_id`,`host_id`),
  KEY `icinga_hostgroup_host_host` (`host_id`),
  CONSTRAINT `icinga_hostgroup_host_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_hostgroup_host_hostgroup` FOREIGN KEY (`hostgroup_id`) REFERENCES `icinga_hostgroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_host`
--

LOCK TABLES `icinga_hostgroup_host` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostgroup_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup_inheritance`
--

DROP TABLE IF EXISTS `icinga_hostgroup_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup_inheritance` (
  `hostgroup_id` int(10) unsigned NOT NULL,
  `parent_hostgroup_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`hostgroup_id`,`parent_hostgroup_id`),
  UNIQUE KEY `unique_order` (`hostgroup_id`,`weight`),
  KEY `icinga_hostgroup_inheritance_parent_hostgroup` (`parent_hostgroup_id`),
  CONSTRAINT `icinga_hostgroup_inheritance_hostgroup` FOREIGN KEY (`hostgroup_id`) REFERENCES `icinga_hostgroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_hostgroup_inheritance_parent_hostgroup` FOREIGN KEY (`parent_hostgroup_id`) REFERENCES `icinga_hostgroup` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_inheritance`
--

LOCK TABLES `icinga_hostgroup_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostgroup_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup_parent`
--

DROP TABLE IF EXISTS `icinga_hostgroup_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup_parent` (
  `hostgroup_id` int(10) unsigned NOT NULL,
  `parent_hostgroup_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`hostgroup_id`,`parent_hostgroup_id`),
  KEY `icinga_hostgroup_parent_parent` (`parent_hostgroup_id`),
  CONSTRAINT `icinga_hostgroup_parent_hostgroup` FOREIGN KEY (`hostgroup_id`) REFERENCES `icinga_hostgroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_hostgroup_parent_parent` FOREIGN KEY (`parent_hostgroup_id`) REFERENCES `icinga_hostgroup` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_parent`
--

LOCK TABLES `icinga_hostgroup_parent` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostgroup_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification`
--

DROP TABLE IF EXISTS `icinga_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) DEFAULT NULL,
  `object_type` enum('object','template','apply') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `host_id` int(10) unsigned DEFAULT NULL,
  `service_id` int(10) unsigned DEFAULT NULL,
  `times_begin` int(10) unsigned DEFAULT NULL,
  `times_end` int(10) unsigned DEFAULT NULL,
  `notification_interval` int(10) unsigned DEFAULT NULL,
  `command_id` int(10) unsigned DEFAULT NULL,
  `period_id` int(10) unsigned DEFAULT NULL,
  `zone_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icinga_notification_host` (`host_id`),
  KEY `icinga_notification_service` (`service_id`),
  KEY `icinga_notification_command` (`command_id`),
  KEY `icinga_notification_period` (`period_id`),
  KEY `icinga_notification_zone` (`zone_id`),
  CONSTRAINT `icinga_notification_command` FOREIGN KEY (`command_id`) REFERENCES `icinga_command` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_period` FOREIGN KEY (`period_id`) REFERENCES `icinga_timeperiod` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_service` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification`
--

LOCK TABLES `icinga_notification` WRITE;
/*!40000 ALTER TABLE `icinga_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_assignment`
--

DROP TABLE IF EXISTS `icinga_notification_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_assignment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_id` int(10) unsigned NOT NULL,
  `filter_string` text NOT NULL,
  `assign_type` enum('assign','ignore') NOT NULL DEFAULT 'assign',
  PRIMARY KEY (`id`),
  KEY `icinga_notification_assignment` (`notification_id`),
  CONSTRAINT `icinga_notification_assignment` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_assignment`
--

LOCK TABLES `icinga_notification_assignment` WRITE;
/*!40000 ALTER TABLE `icinga_notification_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_inheritance`
--

DROP TABLE IF EXISTS `icinga_notification_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_inheritance` (
  `notification_id` int(10) unsigned NOT NULL,
  `parent_notification_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`notification_id`,`parent_notification_id`),
  UNIQUE KEY `unique_order` (`notification_id`,`weight`),
  KEY `icinga_notification_inheritance_parent_notification` (`parent_notification_id`),
  CONSTRAINT `icinga_notification_inheritance_notification` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_inheritance_parent_notification` FOREIGN KEY (`parent_notification_id`) REFERENCES `icinga_notification` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_inheritance`
--

LOCK TABLES `icinga_notification_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_notification_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_states_set`
--

DROP TABLE IF EXISTS `icinga_notification_states_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_states_set` (
  `notification_id` int(10) unsigned NOT NULL,
  `property` enum('OK','Warning','Critical','Unknown','Up','Down') NOT NULL,
  `merge_behaviour` enum('override','extend','blacklist') NOT NULL DEFAULT 'override' COMMENT 'override: = [], extend: += [], blacklist: -= []',
  PRIMARY KEY (`notification_id`,`property`,`merge_behaviour`),
  CONSTRAINT `icinga_notification_states_set_notification` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_states_set`
--

LOCK TABLES `icinga_notification_states_set` WRITE;
/*!40000 ALTER TABLE `icinga_notification_states_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_states_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_types_set`
--

DROP TABLE IF EXISTS `icinga_notification_types_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_types_set` (
  `notification_id` int(10) unsigned NOT NULL,
  `property` enum('DowntimeStart','DowntimeEnd','DowntimeRemoved','Custom','Acknowledgement','Problem','Recovery','FlappingStart','FlappingEnd') NOT NULL,
  `merge_behaviour` enum('override','extend','blacklist') NOT NULL DEFAULT 'override' COMMENT 'override: = [], extend: += [], blacklist: -= []',
  PRIMARY KEY (`notification_id`,`property`,`merge_behaviour`),
  CONSTRAINT `icinga_notification_types_set_notification` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_types_set`
--

LOCK TABLES `icinga_notification_types_set` WRITE;
/*!40000 ALTER TABLE `icinga_notification_types_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_types_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_user`
--

DROP TABLE IF EXISTS `icinga_notification_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_user` (
  `notification_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`notification_id`,`user_id`),
  KEY `icinga_notification_user_user` (`user_id`),
  CONSTRAINT `icinga_notification_user_notification` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_user_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_user`
--

LOCK TABLES `icinga_notification_user` WRITE;
/*!40000 ALTER TABLE `icinga_notification_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_usergroup`
--

DROP TABLE IF EXISTS `icinga_notification_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_usergroup` (
  `notification_id` int(10) unsigned NOT NULL,
  `usergroup_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`notification_id`,`usergroup_id`),
  KEY `icinga_notification_usergroup_usergroup` (`usergroup_id`),
  CONSTRAINT `icinga_notification_usergroup_notification` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_notification_usergroup_usergroup` FOREIGN KEY (`usergroup_id`) REFERENCES `icinga_usergroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_usergroup`
--

LOCK TABLES `icinga_notification_usergroup` WRITE;
/*!40000 ALTER TABLE `icinga_notification_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notification_var`
--

DROP TABLE IF EXISTS `icinga_notification_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notification_var` (
  `notification_id` int(10) unsigned NOT NULL,
  `varname` varchar(255) NOT NULL,
  `varvalue` text,
  `format` enum('string','json','expression') DEFAULT NULL,
  PRIMARY KEY (`notification_id`,`varname`),
  KEY `search_idx` (`varname`),
  CONSTRAINT `icinga_notification_var_notification` FOREIGN KEY (`notification_id`) REFERENCES `icinga_notification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notification_var`
--

LOCK TABLES `icinga_notification_var` WRITE;
/*!40000 ALTER TABLE `icinga_notification_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_notification_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service`
--

DROP TABLE IF EXISTS `icinga_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template','apply') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `display_name` varchar(255) DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `check_command_id` int(10) unsigned DEFAULT NULL,
  `max_check_attempts` mediumint(8) unsigned DEFAULT NULL,
  `check_period_id` int(10) unsigned DEFAULT NULL,
  `check_interval` varchar(8) DEFAULT NULL,
  `retry_interval` varchar(8) DEFAULT NULL,
  `enable_notifications` enum('y','n') DEFAULT NULL,
  `enable_active_checks` enum('y','n') DEFAULT NULL,
  `enable_passive_checks` enum('y','n') DEFAULT NULL,
  `enable_event_handler` enum('y','n') DEFAULT NULL,
  `enable_flapping` enum('y','n') DEFAULT NULL,
  `enable_perfdata` enum('y','n') DEFAULT NULL,
  `event_command_id` int(10) unsigned DEFAULT NULL,
  `flapping_threshold` smallint(5) unsigned DEFAULT NULL,
  `volatile` enum('y','n') DEFAULT NULL,
  `zone_id` int(10) unsigned DEFAULT NULL,
  `command_endpoint_id` int(10) unsigned DEFAULT NULL,
  `notes` text,
  `notes_url` varchar(255) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `icon_image_alt` varchar(255) DEFAULT NULL,
  `use_agent` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_key` (`object_name`,`host_id`),
  KEY `icinga_service_host` (`host_id`),
  KEY `icinga_service_zone` (`zone_id`),
  KEY `icinga_service_check_period` (`check_period_id`),
  KEY `icinga_service_check_command` (`check_command_id`),
  KEY `icinga_service_event_command` (`event_command_id`),
  KEY `icinga_service_command_endpoint` (`command_endpoint_id`),
  CONSTRAINT `icinga_service_check_command` FOREIGN KEY (`check_command_id`) REFERENCES `icinga_command` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_check_period` FOREIGN KEY (`check_period_id`) REFERENCES `icinga_timeperiod` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_command_endpoint` FOREIGN KEY (`command_endpoint_id`) REFERENCES `icinga_endpoint` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_event_command` FOREIGN KEY (`event_command_id`) REFERENCES `icinga_command` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_host` FOREIGN KEY (`host_id`) REFERENCES `icinga_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service`
--

LOCK TABLES `icinga_service` WRITE;
/*!40000 ALTER TABLE `icinga_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_assignment`
--

DROP TABLE IF EXISTS `icinga_service_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_assignment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `filter_string` text NOT NULL,
  `assign_type` enum('assign','ignore') NOT NULL DEFAULT 'assign',
  PRIMARY KEY (`id`),
  KEY `icinga_service_assignment` (`service_id`),
  CONSTRAINT `icinga_service_assignment` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_assignment`
--

LOCK TABLES `icinga_service_assignment` WRITE;
/*!40000 ALTER TABLE `icinga_service_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_service_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_field`
--

DROP TABLE IF EXISTS `icinga_service_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_field` (
  `service_id` int(10) unsigned NOT NULL COMMENT 'Makes only sense for templates',
  `datafield_id` int(10) unsigned NOT NULL,
  `is_required` enum('y','n') NOT NULL,
  PRIMARY KEY (`service_id`,`datafield_id`),
  KEY `icinga_service_field_datafield` (`datafield_id`),
  CONSTRAINT `icinga_service_field_datafield` FOREIGN KEY (`datafield_id`) REFERENCES `director_datafield` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_field_service` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_field`
--

LOCK TABLES `icinga_service_field` WRITE;
/*!40000 ALTER TABLE `icinga_service_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_service_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_inheritance`
--

DROP TABLE IF EXISTS `icinga_service_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_inheritance` (
  `service_id` int(10) unsigned NOT NULL,
  `parent_service_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`service_id`,`parent_service_id`),
  UNIQUE KEY `unique_order` (`service_id`,`weight`),
  KEY `icinga_service_inheritance_parent_service` (`parent_service_id`),
  CONSTRAINT `icinga_service_inheritance_parent_service` FOREIGN KEY (`parent_service_id`) REFERENCES `icinga_service` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_service_inheritance_service` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_inheritance`
--

LOCK TABLES `icinga_service_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_service_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_service_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_var`
--

DROP TABLE IF EXISTS `icinga_service_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_var` (
  `service_id` int(10) unsigned NOT NULL,
  `varname` varchar(255) NOT NULL,
  `varvalue` text,
  `format` enum('string','json','expression') DEFAULT NULL,
  PRIMARY KEY (`service_id`,`varname`),
  KEY `search_idx` (`varname`),
  CONSTRAINT `icinga_service_var_service` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_var`
--

LOCK TABLES `icinga_service_var` WRITE;
/*!40000 ALTER TABLE `icinga_service_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_service_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroup`
--

DROP TABLE IF EXISTS `icinga_servicegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) DEFAULT NULL,
  `object_type` enum('object','template') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`),
  KEY `search_idx` (`display_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup`
--

LOCK TABLES `icinga_servicegroup` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroup_inheritance`
--

DROP TABLE IF EXISTS `icinga_servicegroup_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroup_inheritance` (
  `servicegroup_id` int(10) unsigned NOT NULL,
  `parent_servicegroup_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`servicegroup_id`,`parent_servicegroup_id`),
  UNIQUE KEY `unique_order` (`servicegroup_id`,`weight`),
  KEY `icinga_servicegroup_inheritance_parent_servicegroup` (`parent_servicegroup_id`),
  CONSTRAINT `icinga_servicegroup_inheritance_parent_servicegroup` FOREIGN KEY (`parent_servicegroup_id`) REFERENCES `icinga_servicegroup` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_servicegroup_inheritance_servicegroup` FOREIGN KEY (`servicegroup_id`) REFERENCES `icinga_servicegroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup_inheritance`
--

LOCK TABLES `icinga_servicegroup_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicegroup_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroup_service`
--

DROP TABLE IF EXISTS `icinga_servicegroup_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroup_service` (
  `servicegroup_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`servicegroup_id`,`service_id`),
  KEY `icinga_servicegroup_service_service` (`service_id`),
  CONSTRAINT `icinga_servicegroup_service_service` FOREIGN KEY (`service_id`) REFERENCES `icinga_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_servicegroup_service_servicegroup` FOREIGN KEY (`servicegroup_id`) REFERENCES `icinga_servicegroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup_service`
--

LOCK TABLES `icinga_servicegroup_service` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicegroup_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiod`
--

DROP TABLE IF EXISTS `icinga_timeperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiod` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `update_method` varchar(64) DEFAULT NULL COMMENT 'Usually LegacyTimePeriod',
  `zone_id` int(10) unsigned DEFAULT NULL,
  `object_type` enum('object','template') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`,`zone_id`),
  KEY `icinga_timeperiod_zone` (`zone_id`),
  CONSTRAINT `icinga_timeperiod_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod`
--

LOCK TABLES `icinga_timeperiod` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_timeperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiod_inheritance`
--

DROP TABLE IF EXISTS `icinga_timeperiod_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiod_inheritance` (
  `timeperiod_id` int(10) unsigned NOT NULL,
  `parent_timeperiod_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`timeperiod_id`,`parent_timeperiod_id`),
  UNIQUE KEY `unique_order` (`timeperiod_id`,`weight`),
  KEY `icinga_timeperiod_inheritance_parent_timeperiod` (`parent_timeperiod_id`),
  CONSTRAINT `icinga_timeperiod_inheritance_parent_timeperiod` FOREIGN KEY (`parent_timeperiod_id`) REFERENCES `icinga_timeperiod` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_timeperiod_inheritance_timeperiod` FOREIGN KEY (`timeperiod_id`) REFERENCES `icinga_timeperiod` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod_inheritance`
--

LOCK TABLES `icinga_timeperiod_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_timeperiod_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiod_range`
--

DROP TABLE IF EXISTS `icinga_timeperiod_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiod_range` (
  `timeperiod_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeperiod_key` varchar(255) NOT NULL COMMENT 'monday, ...',
  `timeperiod_value` varchar(255) NOT NULL COMMENT '00:00-24:00, ...',
  `range_type` enum('include','exclude') NOT NULL DEFAULT 'include' COMMENT 'include -> ranges {}, exclude ranges_ignore {} - not yet',
  `merge_behaviour` enum('set','add','substract') NOT NULL DEFAULT 'set' COMMENT 'set -> = {}, add -> += {}, substract -> -= {}',
  PRIMARY KEY (`timeperiod_id`,`range_type`,`timeperiod_key`),
  CONSTRAINT `icinga_timeperiod_range_timeperiod` FOREIGN KEY (`timeperiod_id`) REFERENCES `icinga_timeperiod` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod_range`
--

LOCK TABLES `icinga_timeperiod_range` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_timeperiod_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_user`
--

DROP TABLE IF EXISTS `icinga_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) DEFAULT NULL,
  `object_type` enum('object','template') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `display_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pager` varchar(255) DEFAULT NULL,
  `enable_notifications` enum('y','n') DEFAULT NULL,
  `period_id` int(10) unsigned DEFAULT NULL,
  `zone_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`,`zone_id`),
  KEY `icinga_user_zone` (`zone_id`),
  CONSTRAINT `icinga_user_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_user`
--

LOCK TABLES `icinga_user` WRITE;
/*!40000 ALTER TABLE `icinga_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_user_field`
--

DROP TABLE IF EXISTS `icinga_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_user_field` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Makes only sense for templates',
  `datafield_id` int(10) unsigned NOT NULL,
  `is_required` enum('y','n') NOT NULL,
  PRIMARY KEY (`user_id`,`datafield_id`),
  KEY `icinga_user_field_datafield` (`datafield_id`),
  CONSTRAINT `icinga_user_field_datafield` FOREIGN KEY (`datafield_id`) REFERENCES `director_datafield` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_user_field_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_user_field`
--

LOCK TABLES `icinga_user_field` WRITE;
/*!40000 ALTER TABLE `icinga_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_user_inheritance`
--

DROP TABLE IF EXISTS `icinga_user_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_user_inheritance` (
  `user_id` int(10) unsigned NOT NULL,
  `parent_user_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`,`parent_user_id`),
  UNIQUE KEY `unique_order` (`user_id`,`weight`),
  KEY `icinga_user_inheritance_parent_user` (`parent_user_id`),
  CONSTRAINT `icinga_user_inheritance_parent_user` FOREIGN KEY (`parent_user_id`) REFERENCES `icinga_user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_user_inheritance_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_user_inheritance`
--

LOCK TABLES `icinga_user_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_user_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_user_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_user_states_set`
--

DROP TABLE IF EXISTS `icinga_user_states_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_user_states_set` (
  `user_id` int(10) unsigned NOT NULL,
  `property` enum('OK','Warning','Critical','Unknown','Up','Down') NOT NULL,
  `merge_behaviour` enum('override','extend','blacklist') NOT NULL DEFAULT 'override' COMMENT 'override: = [], extend: += [], blacklist: -= []',
  PRIMARY KEY (`user_id`,`property`,`merge_behaviour`),
  CONSTRAINT `icinga_user_states_set_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_user_states_set`
--

LOCK TABLES `icinga_user_states_set` WRITE;
/*!40000 ALTER TABLE `icinga_user_states_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_user_states_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_user_types_set`
--

DROP TABLE IF EXISTS `icinga_user_types_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_user_types_set` (
  `user_id` int(10) unsigned NOT NULL,
  `property` enum('DowntimeStart','DowntimeEnd','DowntimeRemoved','Custom','Acknowledgement','Problem','Recovery','FlappingStart','FlappingEnd') NOT NULL,
  `merge_behaviour` enum('override','extend','blacklist') NOT NULL DEFAULT 'override' COMMENT 'override: = [], extend: += [], blacklist: -= []',
  PRIMARY KEY (`user_id`,`property`,`merge_behaviour`),
  CONSTRAINT `icinga_user_types_set_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_user_types_set`
--

LOCK TABLES `icinga_user_types_set` WRITE;
/*!40000 ALTER TABLE `icinga_user_types_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_user_types_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_user_var`
--

DROP TABLE IF EXISTS `icinga_user_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_user_var` (
  `user_id` int(10) unsigned NOT NULL,
  `varname` varchar(255) NOT NULL,
  `varvalue` text,
  `format` enum('string','json','expression') NOT NULL DEFAULT 'string',
  PRIMARY KEY (`user_id`,`varname`),
  KEY `search_idx` (`varname`),
  CONSTRAINT `icinga_user_var_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_user_var`
--

LOCK TABLES `icinga_user_var` WRITE;
/*!40000 ALTER TABLE `icinga_user_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_user_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_usergroup`
--

DROP TABLE IF EXISTS `icinga_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_usergroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`),
  KEY `search_idx` (`display_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_usergroup`
--

LOCK TABLES `icinga_usergroup` WRITE;
/*!40000 ALTER TABLE `icinga_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_usergroup_inheritance`
--

DROP TABLE IF EXISTS `icinga_usergroup_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_usergroup_inheritance` (
  `usergroup_id` int(10) unsigned NOT NULL,
  `parent_usergroup_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`usergroup_id`,`parent_usergroup_id`),
  UNIQUE KEY `unique_order` (`usergroup_id`,`weight`),
  KEY `icinga_usergroup_inheritance_parent_usergroup` (`parent_usergroup_id`),
  CONSTRAINT `icinga_usergroup_inheritance_parent_usergroup` FOREIGN KEY (`parent_usergroup_id`) REFERENCES `icinga_usergroup` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_usergroup_inheritance_usergroup` FOREIGN KEY (`usergroup_id`) REFERENCES `icinga_usergroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_usergroup_inheritance`
--

LOCK TABLES `icinga_usergroup_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_usergroup_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_usergroup_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_usergroup_parent`
--

DROP TABLE IF EXISTS `icinga_usergroup_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_usergroup_parent` (
  `usergroup_id` int(10) unsigned NOT NULL,
  `parent_usergroup_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usergroup_id`,`parent_usergroup_id`),
  KEY `icinga_usergroup_parent_parent` (`parent_usergroup_id`),
  CONSTRAINT `icinga_usergroup_parent_parent` FOREIGN KEY (`parent_usergroup_id`) REFERENCES `icinga_usergroup` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_usergroup_parent_usergroup` FOREIGN KEY (`usergroup_id`) REFERENCES `icinga_usergroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_usergroup_parent`
--

LOCK TABLES `icinga_usergroup_parent` WRITE;
/*!40000 ALTER TABLE `icinga_usergroup_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_usergroup_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_usergroup_user`
--

DROP TABLE IF EXISTS `icinga_usergroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_usergroup_user` (
  `usergroup_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usergroup_id`,`user_id`),
  KEY `icinga_usergroup_user_user` (`user_id`),
  CONSTRAINT `icinga_usergroup_user_user` FOREIGN KEY (`user_id`) REFERENCES `icinga_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icinga_usergroup_user_usergroup` FOREIGN KEY (`usergroup_id`) REFERENCES `icinga_usergroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_usergroup_user`
--

LOCK TABLES `icinga_usergroup_user` WRITE;
/*!40000 ALTER TABLE `icinga_usergroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_usergroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zone`
--

DROP TABLE IF EXISTS `icinga_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `object_name` varchar(255) NOT NULL,
  `object_type` enum('object','template','external_object') NOT NULL,
  `disabled` enum('y','n') NOT NULL DEFAULT 'n',
  `is_global` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_name` (`object_name`),
  KEY `icinga_zone_parent` (`parent_id`),
  CONSTRAINT `icinga_zone_parent` FOREIGN KEY (`parent_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zone`
--

LOCK TABLES `icinga_zone` WRITE;
/*!40000 ALTER TABLE `icinga_zone` DISABLE KEYS */;
INSERT INTO `icinga_zone` VALUES (1,NULL,'icinga2','external_object','n','n');
/*!40000 ALTER TABLE `icinga_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zone_inheritance`
--

DROP TABLE IF EXISTS `icinga_zone_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zone_inheritance` (
  `zone_id` int(10) unsigned NOT NULL,
  `parent_zone_id` int(10) unsigned NOT NULL,
  `weight` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`zone_id`,`parent_zone_id`),
  UNIQUE KEY `unique_order` (`zone_id`,`weight`),
  KEY `icinga_zone_inheritance_parent_zone` (`parent_zone_id`),
  CONSTRAINT `icinga_zone_inheritance_parent_zone` FOREIGN KEY (`parent_zone_id`) REFERENCES `icinga_zone` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `icinga_zone_inheritance_zone` FOREIGN KEY (`zone_id`) REFERENCES `icinga_zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zone_inheritance`
--

LOCK TABLES `icinga_zone_inheritance` WRITE;
/*!40000 ALTER TABLE `icinga_zone_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_zone_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_row_modifier`
--

DROP TABLE IF EXISTS `import_row_modifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_row_modifier` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` int(10) unsigned NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `provider_class` varchar(72) NOT NULL,
  `priority` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_idx` (`property_name`),
  KEY `row_modifier_import_source` (`source_id`),
  CONSTRAINT `row_modifier_import_source` FOREIGN KEY (`source_id`) REFERENCES `import_source` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_row_modifier`
--

LOCK TABLES `import_row_modifier` WRITE;
/*!40000 ALTER TABLE `import_row_modifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_row_modifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_row_modifier_setting`
--

DROP TABLE IF EXISTS `import_row_modifier_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_row_modifier_setting` (
  `row_modifier_id` int(10) unsigned NOT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text,
  PRIMARY KEY (`row_modifier_id`,`setting_name`),
  CONSTRAINT `row_modifier_settings` FOREIGN KEY (`row_modifier_id`) REFERENCES `import_row_modifier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_row_modifier_setting`
--

LOCK TABLES `import_row_modifier_setting` WRITE;
/*!40000 ALTER TABLE `import_row_modifier_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_row_modifier_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_run`
--

DROP TABLE IF EXISTS `import_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_run` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` int(10) unsigned NOT NULL,
  `rowset_checksum` varbinary(20) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `succeeded` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `import_run_source` (`source_id`),
  KEY `import_run_rowset` (`rowset_checksum`),
  CONSTRAINT `import_run_rowset` FOREIGN KEY (`rowset_checksum`) REFERENCES `imported_rowset` (`checksum`) ON UPDATE CASCADE,
  CONSTRAINT `import_run_source` FOREIGN KEY (`source_id`) REFERENCES `import_source` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_run`
--

LOCK TABLES `import_run` WRITE;
/*!40000 ALTER TABLE `import_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_source`
--

DROP TABLE IF EXISTS `import_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_name` varchar(64) NOT NULL,
  `key_column` varchar(64) NOT NULL,
  `provider_class` varchar(72) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_idx` (`key_column`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_source`
--

LOCK TABLES `import_source` WRITE;
/*!40000 ALTER TABLE `import_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_source_setting`
--

DROP TABLE IF EXISTS `import_source_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_source_setting` (
  `source_id` int(10) unsigned NOT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  PRIMARY KEY (`source_id`,`setting_name`),
  CONSTRAINT `import_source_settings_source` FOREIGN KEY (`source_id`) REFERENCES `import_source` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_source_setting`
--

LOCK TABLES `import_source_setting` WRITE;
/*!40000 ALTER TABLE `import_source_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_source_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imported_property`
--

DROP TABLE IF EXISTS `imported_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imported_property` (
  `checksum` varbinary(20) NOT NULL,
  `property_name` varchar(64) NOT NULL,
  `property_value` mediumtext NOT NULL,
  `format` enum('string','expression','json') DEFAULT NULL,
  PRIMARY KEY (`checksum`),
  KEY `search_idx` (`property_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imported_property`
--

LOCK TABLES `imported_property` WRITE;
/*!40000 ALTER TABLE `imported_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `imported_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imported_row`
--

DROP TABLE IF EXISTS `imported_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imported_row` (
  `checksum` varbinary(20) NOT NULL COMMENT 'sha1(object_name;property_checksum;...)',
  `object_name` varchar(255) NOT NULL,
  PRIMARY KEY (`checksum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imported_row`
--

LOCK TABLES `imported_row` WRITE;
/*!40000 ALTER TABLE `imported_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `imported_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imported_row_property`
--

DROP TABLE IF EXISTS `imported_row_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imported_row_property` (
  `row_checksum` varbinary(20) NOT NULL,
  `property_checksum` varbinary(20) NOT NULL,
  PRIMARY KEY (`row_checksum`,`property_checksum`),
  KEY `imported_row_property_property` (`property_checksum`),
  CONSTRAINT `imported_row_property_property` FOREIGN KEY (`property_checksum`) REFERENCES `imported_property` (`checksum`) ON UPDATE CASCADE,
  CONSTRAINT `imported_row_property_row` FOREIGN KEY (`row_checksum`) REFERENCES `imported_row` (`checksum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imported_row_property`
--

LOCK TABLES `imported_row_property` WRITE;
/*!40000 ALTER TABLE `imported_row_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `imported_row_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imported_rowset`
--

DROP TABLE IF EXISTS `imported_rowset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imported_rowset` (
  `checksum` varbinary(20) NOT NULL,
  PRIMARY KEY (`checksum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imported_rowset`
--

LOCK TABLES `imported_rowset` WRITE;
/*!40000 ALTER TABLE `imported_rowset` DISABLE KEYS */;
/*!40000 ALTER TABLE `imported_rowset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imported_rowset_row`
--

DROP TABLE IF EXISTS `imported_rowset_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imported_rowset_row` (
  `rowset_checksum` varbinary(20) NOT NULL,
  `row_checksum` varbinary(20) NOT NULL,
  PRIMARY KEY (`rowset_checksum`,`row_checksum`),
  KEY `imported_rowset_row_row` (`row_checksum`),
  CONSTRAINT `imported_rowset_row_row` FOREIGN KEY (`row_checksum`) REFERENCES `imported_row` (`checksum`) ON UPDATE CASCADE,
  CONSTRAINT `imported_rowset_row_rowset` FOREIGN KEY (`rowset_checksum`) REFERENCES `imported_rowset` (`checksum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imported_rowset_row`
--

LOCK TABLES `imported_rowset_row` WRITE;
/*!40000 ALTER TABLE `imported_rowset_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `imported_rowset_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_property`
--

DROP TABLE IF EXISTS `sync_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL,
  `source_id` int(10) unsigned NOT NULL,
  `source_expression` varchar(255) NOT NULL,
  `destination_field` varchar(64) DEFAULT NULL,
  `priority` smallint(5) unsigned NOT NULL,
  `filter_expression` text,
  `merge_policy` enum('override','merge') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sync_property_rule` (`rule_id`),
  KEY `sync_property_source` (`source_id`),
  CONSTRAINT `sync_property_rule` FOREIGN KEY (`rule_id`) REFERENCES `sync_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sync_property_source` FOREIGN KEY (`source_id`) REFERENCES `import_source` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_property`
--

LOCK TABLES `sync_property` WRITE;
/*!40000 ALTER TABLE `sync_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_rule`
--

DROP TABLE IF EXISTS `sync_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL,
  `object_type` enum('host','service','command','user','hostgroup','servicegroup','usergroup','datalistEntry','endpoint','zone') NOT NULL,
  `update_policy` enum('merge','override','ignore') NOT NULL,
  `purge_existing` enum('y','n') NOT NULL DEFAULT 'n',
  `filter_expression` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_rule`
--

LOCK TABLES `sync_rule` WRITE;
/*!40000 ALTER TABLE `sync_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_run`
--

DROP TABLE IF EXISTS `sync_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_run` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned DEFAULT NULL,
  `rule_name` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `duration_ms` int(10) unsigned DEFAULT NULL,
  `objects_deleted` int(10) unsigned DEFAULT '0',
  `objects_created` int(10) unsigned DEFAULT '0',
  `objects_modified` int(10) unsigned DEFAULT '0',
  `last_former_activity` varbinary(20) DEFAULT NULL,
  `last_related_activity` varbinary(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sync_run_rule` (`rule_id`),
  CONSTRAINT `sync_run_rule` FOREIGN KEY (`rule_id`) REFERENCES `sync_rule` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_run`
--

LOCK TABLES `sync_run` WRITE;
/*!40000 ALTER TABLE `sync_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_run` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-16 18:02:24

GRANT USAGE ON *.* TO 'director'@'localhost' IDENTIFIED BY PASSWORD '*8AB4B931BB2138C7FE48142B75B45895E4F39A9A';
GRANT ALL PRIVILEGES ON `director`.* TO 'director'@'localhost';
GRANT USAGE ON *.* TO 'icinga2'@'localhost' IDENTIFIED BY PASSWORD '*83D2B69B2DFCC5E10A85E29C3EF5378455D58DAA';
GRANT ALL PRIVILEGES ON `icinga2`.* TO 'icinga2'@'localhost';
GRANT USAGE ON *.* TO 'icinga_web'@'localhost' IDENTIFIED BY PASSWORD '*BFF9A2079642462560F3571F20590990AFD5A771';
GRANT ALL PRIVILEGES ON `icinga_web`.* TO 'icinga_web'@'localhost';
GRANT USAGE ON *.* TO 'icingaweb_db'@'localhost' IDENTIFIED BY PASSWORD '*2BC9DBCD12FADAE3FC8FA87EBD06DD660E1DF6AC';
GRANT CREATE TEMPORARY TABLES, EXECUTE ON `icingaweb\_db`.* TO 'icingaweb_db'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `icingaweb_db`.`icingaweb_user` TO 'icingaweb_db'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `icingaweb_db`.`icingaweb_group` TO 'icingaweb_db'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `icingaweb_db`.`icingaweb_user_preference` TO 'icingaweb_db'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `icingaweb_db`.`icingaweb_group_membership` TO 'icingaweb_db'@'localhost';

