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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1 COMMENT='Command definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commands`
--

LOCK TABLES `icinga_commands` WRITE;
/*!40000 ALTER TABLE `icinga_commands` DISABLE KEYS */;
INSERT INTO `icinga_commands` VALUES (1,1,1,3,' \"/usr/lib/nagios/plugins/check_by_ssh\"'),(2,1,1,4,' \"/usr/lib/nagios/plugins/check_clamd\"'),(3,1,1,5,'<internal>'),(4,1,1,6,'<internal>'),(5,1,1,7,' \"/usr/lib/nagios/plugins/check_dhcp\"'),(6,1,1,8,' \"/usr/lib/nagios/plugins/check_dig\"'),(7,1,1,9,' \"/usr/lib/nagios/plugins/check_disk\"'),(8,1,1,10,' \"/usr/lib/nagios/plugins/check_apt\"'),(9,1,1,11,' \"/usr/lib/nagios/plugins/check_disk_smb\"'),(10,1,1,12,' \"/usr/lib/nagios/plugins/check_dummy\" \"$dummy_state$\" \"$dummy_text$\"'),(11,1,1,13,' \"/usr/lib/nagios/plugins/check_dns\"'),(12,1,1,14,' \"/usr/lib/nagios/plugins/check_fping\" \"$fping_address$\" \"-4\"'),(13,1,1,15,' \"/usr/lib/nagios/plugins/check_fping\" \"$fping_address$\" \"-6\"'),(14,1,1,16,' \"/usr/lib/nagios/plugins/check_ping\"'),(15,1,1,17,' \"/usr/lib/nagios/plugins/check_ftp\"'),(16,1,1,18,' \"/usr/lib/nagios/plugins/check_ping\" \"-4\"'),(17,1,1,19,' \"/usr/lib/nagios/plugins/check_hpjd\"'),(18,1,1,20,' \"/usr/lib/nagios/plugins/check_ping\" \"-6\"'),(19,1,1,21,'<internal>'),(20,1,1,22,' \"/usr/lib/nagios/plugins/check_icmp\"'),(21,1,1,23,'<internal>'),(22,1,1,24,' \"/usr/lib/nagios/plugins/check_imap\"'),(23,1,1,25,' \"/usr/lib/nagios/plugins/check_http\"'),(24,1,1,26,' \"/usr/lib/nagios/plugins/check_ldap\"'),(25,1,1,27,' \"/usr/lib/nagios/plugins/check_load\"'),(26,1,1,28,' \"/usr/lib/nagios/plugins/check_mailq\"'),(27,1,1,29,' \"/usr/lib/nagios/plugins/negate\"'),(28,1,1,30,' \"/usr/lib/nagios/plugins/check_mysql\"'),(29,1,1,31,' \"/usr/lib/nagios/plugins/check_nrpe\"'),(30,1,1,32,' \"/usr/lib/nagios/plugins/check_nt\"'),(31,1,1,33,' \"/usr/lib/nagios/plugins/check_ntp_time\"'),(32,1,1,34,' \"/usr/lib/nagios/plugins/check_ntp_peer\"'),(33,1,1,35,' \"/usr/lib/nagios/plugins/check_dummy\" \"$dummy_state$\" \"$dummy_text$\"'),(34,1,1,36,' \"/usr/lib/nagios/plugins/check_pgsql\"'),(35,1,1,37,' \"/usr/lib/nagios/plugins/check_ping\"'),(36,1,1,38,' \"/usr/lib/nagios/plugins/check_ping\" \"-4\"'),(37,1,1,39,' \"/usr/lib/nagios/plugins/check_pop\"'),(38,1,1,40,' \"/usr/lib/nagios/plugins/check_procs\"'),(39,1,1,41,'<internal>'),(40,1,1,42,' \"/usr/lib/nagios/plugins/check_simap\"'),(41,1,1,43,' \"/usr/lib/nagios/plugins/check_smtp\"'),(42,1,1,44,' \"/usr/lib/nagios/plugins/check_snmp\"'),(43,1,1,45,' \"/usr/lib/nagios/plugins/check_snmp\"'),(44,1,1,46,' \"/usr/lib/nagios/plugins/check_snmp\"'),(45,1,1,47,' \"/usr/lib/nagios/plugins/check_spop\"'),(46,1,1,48,' \"/usr/lib/nagios/plugins/check_ssh\"'),(47,1,1,49,' \"/usr/lib/nagios/plugins/check_tcp\"'),(48,1,1,50,' \"/usr/lib/nagios/plugins/check_ssmtp\"'),(49,1,1,51,' \"/usr/lib/nagios/plugins/check_swap\"'),(50,1,1,52,' \"/usr/lib/nagios/plugins/check_tcp\"'),(51,1,1,53,' \"/usr/lib/nagios/plugins/check_udp\" \"-H\" \"$udp_address$\" \"-p\" \"$udp_port$\"'),(52,1,1,54,' \"/usr/lib/nagios/plugins/check_ups\"'),(53,1,1,55,' \"/usr/lib/nagios/plugins/check_users\"'),(54,1,1,56,' \"/usr/lib/nagios/plugins/check_ping\" \"-6\"'),(55,1,1,57,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(56,1,1,58,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(57,1,1,84,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(58,1,1,85,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(59,1,1,99,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(60,1,1,100,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(61,1,1,101,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(62,1,1,102,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(63,1,1,103,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(64,1,1,104,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(65,1,1,105,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(66,1,1,106,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(67,1,1,110,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(68,1,1,111,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(69,1,1,114,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(70,1,1,115,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(71,1,1,118,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(72,1,1,119,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(73,1,1,120,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(74,1,1,121,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(75,1,1,122,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(76,1,1,123,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(77,1,1,124,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(78,1,1,125,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(79,1,1,126,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(80,1,1,127,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(81,1,1,128,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(82,1,1,129,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(83,1,1,130,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(84,1,1,131,' \"/etc/icinga2/scripts/mail-service-notification.sh\"');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='IDO2DB daemon connection information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_conninfo`
--

LOCK TABLES `icinga_conninfo` WRITE;
/*!40000 ALTER TABLE `icinga_conninfo` DISABLE KEYS */;
INSERT INTO `icinga_conninfo` VALUES (1,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 21:14:54','0000-00-00 00:00:00','2016-05-14 21:14:54','2016-05-14 21:14:54','0000-00-00 00:00:00',0,0,0),(2,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 21:33:55','0000-00-00 00:00:00','2016-05-14 21:33:55','2016-05-14 21:33:55','0000-00-00 00:00:00',0,0,0),(3,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 22:55:00','0000-00-00 00:00:00','2016-05-14 22:55:00','2016-05-14 22:55:00','0000-00-00 00:00:00',0,0,0),(4,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 22:58:43','0000-00-00 00:00:00','2016-05-14 22:58:43','2016-05-14 22:58:43','0000-00-00 00:00:00',0,0,0),(5,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:23:08','0000-00-00 00:00:00','2016-05-14 23:23:08','2016-05-14 23:23:08','0000-00-00 00:00:00',0,0,0),(6,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:30:41','0000-00-00 00:00:00','2016-05-14 23:30:41','2016-05-14 23:30:41','0000-00-00 00:00:00',0,0,0),(7,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:35:29','0000-00-00 00:00:00','2016-05-14 23:35:29','2016-05-14 23:35:29','0000-00-00 00:00:00',0,0,0),(8,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:37:31','0000-00-00 00:00:00','2016-05-14 23:37:31','2016-05-14 23:37:31','0000-00-00 00:00:00',0,0,0),(9,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:55:36','0000-00-00 00:00:00','2016-05-14 23:55:36','2016-05-14 23:55:36','0000-00-00 00:00:00',0,0,0),(10,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-14 23:57:19','0000-00-00 00:00:00','2016-05-14 23:57:19','2016-05-14 23:57:19','0000-00-00 00:00:00',0,0,0),(11,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-15 20:59:02','0000-00-00 00:00:00','2016-05-15 20:59:02','2016-05-15 20:59:02','0000-00-00 00:00:00',0,0,0),(12,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-15 21:34:02','0000-00-00 00:00:00','2016-05-15 21:34:02','2016-05-15 21:34:02','0000-00-00 00:00:00',0,0,0),(13,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 00:55:10','0000-00-00 00:00:00','2016-05-16 00:55:10','2016-05-16 00:55:10','0000-00-00 00:00:00',0,0,0),(14,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 00:55:37','0000-00-00 00:00:00','2016-05-16 00:55:37','2016-05-16 00:55:37','0000-00-00 00:00:00',0,0,0),(15,1,'icinga2 db_ido_mysql','r2.4.7-1','','','INITIAL','2016-05-16 14:36:26','0000-00-00 00:00:00','2016-05-16 14:36:26','2016-05-16 14:36:26','0000-00-00 00:00:00',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='Contactgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroup_members`
--

LOCK TABLES `icinga_contactgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_contactgroup_members` VALUES (15,1,1,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotifications`
--

LOCK TABLES `icinga_contactnotifications` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotifications` DISABLE KEYS */;
INSERT INTO `icinga_contactnotifications` VALUES (1,1,1,68,'2016-05-14 21:31:24',49138,'2016-05-14 21:31:24',49138,NULL),(2,1,2,68,'2016-05-14 22:03:04',588375,'2016-05-14 22:03:04',588375,NULL),(3,1,3,68,'2016-05-14 22:33:09',251579,'2016-05-14 22:33:09',251579,NULL),(4,1,4,68,'2016-05-14 23:03:13',388420,'2016-05-14 23:03:13',388420,NULL),(5,1,5,68,'2016-05-14 23:33:16',694267,'2016-05-14 23:33:16',694267,NULL),(6,1,6,68,'2016-05-15 00:03:18',791244,'2016-05-15 00:03:18',791244,NULL),(7,1,7,68,'2016-05-15 00:33:22',982095,'2016-05-15 00:33:22',982095,NULL),(8,1,8,68,'2016-05-16 00:55:14',322529,'2016-05-16 00:55:14',322529,NULL),(9,1,9,68,'2016-05-16 00:59:32',786437,'2016-05-16 00:59:32',786437,NULL),(10,1,10,68,'2016-05-16 01:29:37',466902,'2016-05-16 01:29:37',466902,NULL),(11,1,11,68,'2016-05-16 01:59:41',620251,'2016-05-16 01:59:41',620251,NULL),(12,1,12,68,'2016-05-16 02:00:18',312005,'2016-05-16 02:00:18',312005,NULL),(13,1,13,68,'2016-05-16 02:29:45',973594,'2016-05-16 02:29:45',973594,NULL),(14,1,14,68,'2016-05-16 02:59:50',436490,'2016-05-16 02:59:50',436490,NULL),(15,1,15,68,'2016-05-16 03:00:18',312011,'2016-05-16 03:00:18',312011,NULL),(16,1,16,68,'2016-05-16 03:29:54',554383,'2016-05-16 03:29:54',554383,NULL),(17,1,17,68,'2016-05-16 03:59:59',244230,'2016-05-16 03:59:59',244230,NULL),(18,1,18,68,'2016-05-16 04:30:03',199098,'2016-05-16 04:30:03',199098,NULL),(19,1,19,68,'2016-05-16 05:00:07',930763,'2016-05-16 05:00:07',930763,NULL),(20,1,20,68,'2016-05-16 05:30:12',600455,'2016-05-16 05:30:12',600455,NULL),(21,1,21,68,'2016-05-16 06:00:16',976023,'2016-05-16 06:00:16',976023,NULL),(22,1,22,68,'2016-05-16 06:30:21',622772,'2016-05-16 06:30:21',622772,NULL),(23,1,23,68,'2016-05-16 07:00:26',126287,'2016-05-16 07:00:26',126287,NULL),(24,1,24,68,'2016-05-16 07:30:30',626333,'2016-05-16 07:30:30',626333,NULL),(25,1,25,68,'2016-05-16 08:00:34',944051,'2016-05-16 08:00:34',944051,NULL),(26,1,26,68,'2016-05-16 08:30:39',638124,'2016-05-16 08:30:39',638124,NULL),(27,1,27,68,'2016-05-16 09:00:43',468277,'2016-05-16 09:00:43',468277,NULL),(28,1,28,68,'2016-05-16 09:30:48',284162,'2016-05-16 09:30:48',284162,NULL),(29,1,29,68,'2016-05-16 10:00:52',562025,'2016-05-16 10:00:52',562025,NULL),(30,1,30,68,'2016-05-16 10:30:56',901103,'2016-05-16 10:30:56',901103,NULL),(31,1,31,68,'2016-05-16 11:01:01',421102,'2016-05-16 11:01:01',421102,NULL),(32,1,32,68,'2016-05-16 11:31:06',205142,'2016-05-16 11:31:06',205142,NULL);
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
INSERT INTO `icinga_contactstatus` VALUES (1,1,68,'2016-05-16 14:36:26',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,0,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=latin1 COMMENT='Custom variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariables`
--

LOCK TABLES `icinga_customvariables` WRITE;
/*!40000 ALTER TABLE `icinga_customvariables` DISABLE KEYS */;
INSERT INTO `icinga_customvariables` VALUES (234,1,86,1,0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463409386),(235,1,86,1,0,'http_vhosts','{\"Icinga Web 2\":{\"http_uri\":\"/icingaweb2\"},\"http\":{\"http_uri\":\"/\"}}',1,1463409386),(236,1,86,1,0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463409386),(237,1,86,1,0,'os','Linux',0,1463409386),(238,1,91,1,0,'http_uri','/',0,1463409386),(239,1,93,1,0,'disk_partitions','/',0,1463409386),(240,1,95,1,0,'backup_downtime','02:00-03:00',0,1463409386),(243,1,108,1,0,'http_uri','/icingaweb2',0,1463409386),(244,1,112,1,0,'http_port','8080',0,1463409386),(245,1,116,1,0,'mysql_port','3206',0,1463409386),(246,1,116,1,0,'mysql_password','wptoor',0,1463409386),(247,1,116,1,0,'mysql_username','root',0,1463409386);
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
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=latin1 COMMENT='Custom variable status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariablestatus`
--

LOCK TABLES `icinga_customvariablestatus` WRITE;
/*!40000 ALTER TABLE `icinga_customvariablestatus` DISABLE KEYS */;
INSERT INTO `icinga_customvariablestatus` VALUES (234,1,86,'2016-05-16 14:36:26',0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463409386,NULL),(235,1,86,'2016-05-16 14:36:26',0,'http_vhosts','{\"Icinga Web 2\":{\"http_uri\":\"/icingaweb2\"},\"http\":{\"http_uri\":\"/\"}}',1,1463409386,NULL),(236,1,86,'2016-05-16 14:36:26',0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463409386,NULL),(237,1,86,'2016-05-16 14:36:26',0,'os','Linux',0,1463409386,NULL),(238,1,91,'2016-05-16 14:36:26',0,'http_uri','/',0,1463409386,NULL),(239,1,93,'2016-05-16 14:36:26',0,'disk_partitions','/',0,1463409386,NULL),(240,1,95,'2016-05-16 14:36:26',0,'backup_downtime','02:00-03:00',0,1463409386,NULL),(243,1,108,'2016-05-16 14:36:26',0,'http_uri','/icingaweb2',0,1463409386,NULL),(244,1,112,'2016-05-16 14:36:26',0,'http_port','8080',0,1463409386,NULL),(245,1,116,'2016-05-16 14:36:26',0,'mysql_port','3206',0,1463409386,NULL),(246,1,116,'2016-05-16 14:36:26',0,'mysql_password','wptoor',0,1463409386,NULL),(247,1,116,'2016-05-16 14:36:26',0,'mysql_username','root',0,1463409386,NULL);
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
INSERT INTO `icinga_endpointstatus` VALUES (1,1,1,2,'2016-05-14 21:14:54','ip-10-0-0-210','ip-10-0-0-210',1),(2,1,82,83,'2016-05-16 14:36:26','icinga2','icinga2',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Historical record of processed external commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_externalcommands`
--

LOCK TABLES `icinga_externalcommands` WRITE;
/*!40000 ALTER TABLE `icinga_externalcommands` DISABLE KEYS */;
INSERT INTO `icinga_externalcommands` VALUES (1,1,'2016-05-14 23:15:57',54,'SCHEDULE_FORCED_SVC_CHECK','icinga2;http;1463267757',82),(2,1,'2016-05-14 23:35:53',98,'SCHEDULE_FORCED_HOST_CHECK','docker-apache2;1463268953',82),(3,1,'2016-05-14 23:38:11',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463269091',82),(4,1,'2016-05-14 23:55:46',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463270146',82),(5,1,'2016-05-14 23:57:23',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463270243',82),(6,1,'2016-05-16 00:56:27',98,'SCHEDULE_FORCED_HOST_CHECK','docker-apache2;1463360187',82),(7,1,'2016-05-16 00:56:32',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360192',82),(8,1,'2016-05-16 00:57:41',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360261',82),(9,1,'2016-05-16 00:57:51',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360271',82),(10,1,'2016-05-16 00:58:47',98,'SCHEDULE_FORCED_HOST_CHECK','docker-mysql;1463360327',82);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='Host contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contactgroups`
--

LOCK TABLES `icinga_host_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_host_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_host_contactgroups` VALUES (15,1,2,69);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='Host contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contacts`
--

LOCK TABLES `icinga_host_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_host_contacts` DISABLE KEYS */;
INSERT INTO `icinga_host_contacts` VALUES (15,1,2,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='Hostgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_members`
--

LOCK TABLES `icinga_hostgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_hostgroup_members` VALUES (15,1,1,86);
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
INSERT INTO `icinga_hoststatus` VALUES (1,1,67,'2016-05-14 21:32:34','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.037000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','ip-10-0-0-210',0,1,1,1,3,'2016-05-14 21:32:34','2016-05-14 21:33:30',0,'2016-05-14 21:02:06','2016-05-14 21:02:06',0,'2016-05-14 21:32:34','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,4.001132965087891,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,1),(2,1,86,'2016-05-16 14:39:50','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.053000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','icinga2',0,1,1,1,3,'2016-05-16 14:39:50','2016-05-16 14:40:46',0,'2016-05-14 21:33:09','2016-05-14 21:33:09',0,'2016-05-16 14:39:50','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,4.002424001693726,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,82),(3,1,107,'2016-05-16 00:55:10','HTTP OK: HTTP/1.1 301 Moved Permanently - 662 bytes in 0.410 second response time ','','time=0.410339s;;;0.000000 size=662B;;;0','icinga2',0,1,1,1,3,'2016-05-16 00:51:01','2016-05-16 00:56:00',0,'2016-05-14 23:31:14','2016-05-14 23:31:14',0,'2016-05-16 00:51:01','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,0.41153979301452637,0,0,1,0,0,'null','','http',5,1,0,1,82),(4,1,112,'2016-05-16 14:36:26','Connection refused','HTTP CRITICAL - Unable to open TCP socket','','icinga2',1,1,1,1,3,'2016-05-16 11:55:45','2016-05-16 14:40:45',0,'2016-05-16 03:40:45','2016-05-16 03:43:45',1,'2016-05-16 03:35:45','2016-05-16 11:55:45','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,0.0016551017761230469,0,0,1,0,0,'null','','http',5,1,0,1,82),(5,1,116,'2016-05-16 14:37:29','Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','','icinga2',1,1,1,1,3,'2016-05-16 14:37:29','2016-05-16 14:42:29',0,'2016-05-16 03:41:18','2016-05-16 03:44:18',1,'2016-05-16 03:36:18','2016-05-16 14:37:29','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,0.0038340091705322266,0,0,1,0,0,'null','','mysql',5,1,0,1,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 COMMENT='Historical record of log entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_logentries`
--

LOCK TABLES `icinga_logentries` WRITE;
/*!40000 ALTER TABLE `icinga_logentries` DISABLE KEYS */;
INSERT INTO `icinga_logentries` VALUES (1,1,'2016-05-14 21:31:24','2016-05-14 21:31:24',54471,524288,'SERVICE NOTIFICATION: icingaadmin;ip-10-0-0-210;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,70,1),(2,1,'2016-05-14 22:03:04','2016-05-14 22:03:04',589884,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(3,1,'2016-05-14 22:33:09','2016-05-14 22:33:09',256958,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(4,1,'2016-05-14 23:03:13','2016-05-14 23:03:13',396909,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(5,1,'2016-05-14 23:31:14','2016-05-14 23:31:14',260371,1024,'HOST ALERT: www.google.com;UP;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 662 bytes in 0.418 second response time ',0,0,107,82),(6,1,'2016-05-14 23:31:18','2016-05-14 23:31:18',8357,8192,'SERVICE ALERT: www.google.com;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 87.41 ms',0,0,109,82),(7,1,'2016-05-14 23:31:28','2016-05-14 23:31:28',762298,8192,'SERVICE ALERT: icinga2;Icinga Web 2;OK;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ',0,0,108,82),(8,1,'2016-05-14 23:33:16','2016-05-14 23:33:16',697913,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(9,1,'2016-05-14 23:35:53','2016-05-14 23:35:53',29721,1024,'HOST ALERT: docker-apache2;UP;HARD;1;HTTP OK: HTTP/1.1 200 OK - 262 bytes in 0.001 second response time ',0,0,112,82),(10,1,'2016-05-14 23:36:19','2016-05-14 23:36:19',781528,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(11,1,'2016-05-14 23:37:49','2016-05-14 23:37:49',502033,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(12,1,'2016-05-14 23:38:11','2016-05-14 23:38:11',612724,2048,'HOST ALERT: docker-mysql;DOWN;HARD;1;Lost connection to MySQL server at \'reading initial communication packet\', system error: 0',0,0,116,82),(13,1,'2016-05-14 23:38:49','2016-05-14 23:38:49',501544,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(14,1,'2016-05-14 23:57:23','2016-05-14 23:57:23',225347,1024,'HOST ALERT: docker-mysql;UP;HARD;1;Uptime: 298  Threads: 1  Questions: 38  Slow queries: 0  Opens: 48  Flush tables: 1  Open tables: 41  Queries per second avg: 0.127',0,0,116,82),(15,1,'2016-05-14 23:57:36','2016-05-14 23:57:36',133627,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(16,1,'2016-05-15 00:03:18','2016-05-15 00:03:18',793927,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(17,1,'2016-05-15 00:33:22','2016-05-15 00:33:22',983299,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 70 packages available for upgrade (0 critical updates). ',0,0,87,82),(18,1,'2016-05-15 21:00:28','2016-05-15 21:00:28',591911,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;1;Connection refused',0,0,112,82),(19,1,'2016-05-15 21:00:28','2016-05-15 21:00:28',592884,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(20,1,'2016-05-15 21:01:28','2016-05-15 21:01:28',592140,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;2;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(21,1,'2016-05-15 21:01:28','2016-05-15 21:01:28',592585,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;2;Connection refused',0,0,112,82),(22,1,'2016-05-15 21:02:28','2016-05-15 21:02:28',592422,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;3;Connection refused',0,0,112,82),(23,1,'2016-05-15 21:02:28','2016-05-15 21:02:28',592808,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;3;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(24,1,'2016-05-15 21:03:28','2016-05-15 21:03:28',592657,2048,'HOST ALERT: docker-apache2;DOWN;HARD;1;Connection refused',0,0,112,82),(25,1,'2016-05-15 21:03:28','2016-05-15 21:03:28',593168,2048,'HOST ALERT: docker-mysql;DOWN;HARD;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(26,1,'2016-05-15 21:03:39','2016-05-15 21:03:39',938791,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(27,1,'2016-05-15 21:04:28','2016-05-15 21:04:28',134794,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(28,1,'2016-05-16 00:55:14','2016-05-16 00:55:14',322314,8192,'SERVICE ALERT: icinga2;Icinga Web 2;OK;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ',0,0,108,82),(29,1,'2016-05-16 00:55:14','2016-05-16 00:55:14',326272,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;Icinga Web 2;RECOVERY (OK);http;HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ',0,0,108,82),(30,1,'2016-05-16 00:56:27','2016-05-16 00:56:27',735110,1024,'HOST ALERT: docker-apache2;UP;HARD;1;HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.001 second response time ',0,0,112,82),(31,1,'2016-05-16 00:56:49','2016-05-16 00:56:49',390753,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(32,1,'2016-05-16 00:58:47','2016-05-16 00:58:47',340277,1024,'HOST ALERT: docker-mysql;UP;HARD;1;Uptime: 74  Threads: 1  Questions: 16  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.216',0,0,116,82),(33,1,'2016-05-16 00:59:22','2016-05-16 00:59:22',618828,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(34,1,'2016-05-16 00:59:32','2016-05-16 00:59:32',791249,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(35,1,'2016-05-16 01:29:37','2016-05-16 01:29:37',476851,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(36,1,'2016-05-16 01:59:41','2016-05-16 01:59:41',636790,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(37,1,'2016-05-16 02:00:18','2016-05-16 02:00:18',320625,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;load;DOWNTIMESTART (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,95,82),(38,1,'2016-05-16 02:29:45','2016-05-16 02:29:45',974241,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(39,1,'2016-05-16 02:59:50','2016-05-16 02:59:50',444833,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(40,1,'2016-05-16 03:00:18','2016-05-16 03:00:18',320703,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;load;DOWNTIMEEND (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,95,82),(41,1,'2016-05-16 03:29:54','2016-05-16 03:29:54',555727,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(42,1,'2016-05-16 03:40:45','2016-05-16 03:40:45',391814,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;1;Connection refused',0,0,112,82),(43,1,'2016-05-16 03:41:18','2016-05-16 03:41:18',622165,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(44,1,'2016-05-16 03:41:45','2016-05-16 03:41:45',391938,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;2;Connection refused',0,0,112,82),(45,1,'2016-05-16 03:42:18','2016-05-16 03:42:18',622291,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;2;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(46,1,'2016-05-16 03:42:45','2016-05-16 03:42:45',392400,2048,'HOST ALERT: docker-apache2;DOWN;SOFT;3;Connection refused',0,0,112,82),(47,1,'2016-05-16 03:43:18','2016-05-16 03:43:18',622693,2048,'HOST ALERT: docker-mysql;DOWN;SOFT;3;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(48,1,'2016-05-16 03:43:45','2016-05-16 03:43:45',392302,2048,'HOST ALERT: docker-apache2;DOWN;HARD;1;Connection refused',0,0,112,82),(49,1,'2016-05-16 03:43:49','2016-05-16 03:43:49',390815,8192,'SERVICE ALERT: docker-apache2;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,113,82),(50,1,'2016-05-16 03:44:18','2016-05-16 03:44:18',622024,2048,'HOST ALERT: docker-mysql;DOWN;HARD;1;Can\'t connect to MySQL server on \'127.0.0.1\' (111)',0,0,116,82),(51,1,'2016-05-16 03:44:22','2016-05-16 03:44:22',618788,8192,'SERVICE ALERT: docker-mysql;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.04 ms',0,0,117,82),(52,1,'2016-05-16 03:59:59','2016-05-16 03:59:59',247467,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(53,1,'2016-05-16 04:30:03','2016-05-16 04:30:03',200658,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(54,1,'2016-05-16 05:00:07','2016-05-16 05:00:07',931359,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(55,1,'2016-05-16 05:30:12','2016-05-16 05:30:12',603300,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(56,1,'2016-05-16 06:00:16','2016-05-16 06:00:16',979454,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(57,1,'2016-05-16 06:30:21','2016-05-16 06:30:21',627459,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(58,1,'2016-05-16 07:00:26','2016-05-16 07:00:26',126666,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(59,1,'2016-05-16 07:30:30','2016-05-16 07:30:30',630336,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(60,1,'2016-05-16 08:00:34','2016-05-16 08:00:34',947454,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(61,1,'2016-05-16 08:30:39','2016-05-16 08:30:39',643342,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(62,1,'2016-05-16 09:00:43','2016-05-16 09:00:43',469723,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(63,1,'2016-05-16 09:30:48','2016-05-16 09:30:48',287467,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(64,1,'2016-05-16 10:00:52','2016-05-16 10:00:52',563602,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(65,1,'2016-05-16 10:30:56','2016-05-16 10:30:56',901439,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(66,1,'2016-05-16 11:01:01','2016-05-16 11:01:01',423437,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82),(67,1,'2016-05-16 11:31:06','2016-05-16 11:31:06',206864,524288,'SERVICE NOTIFICATION: icingaadmin;icinga2;apt;PROBLEM (WARNING);apt;APT WARNING: 67 packages available for upgrade (0 critical updates). ',0,0,87,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='Historical record of host and service notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notifications`
--

LOCK TABLES `icinga_notifications` WRITE;
/*!40000 ALTER TABLE `icinga_notifications` DISABLE KEYS */;
INSERT INTO `icinga_notifications` VALUES (1,1,1,0,70,'2016-05-14 21:31:24',49138,'2016-05-14 21:31:24',49138,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,1),(2,1,1,0,87,'2016-05-14 22:03:04',588375,'2016-05-14 22:03:04',588375,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(3,1,1,0,87,'2016-05-14 22:33:09',251579,'2016-05-14 22:33:09',251579,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(4,1,1,0,87,'2016-05-14 23:03:13',388420,'2016-05-14 23:03:13',388420,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(5,1,1,0,87,'2016-05-14 23:33:16',694267,'2016-05-14 23:33:16',694267,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(6,1,1,0,87,'2016-05-15 00:03:18',791244,'2016-05-15 00:03:18',791244,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(7,1,1,0,87,'2016-05-15 00:33:22',982095,'2016-05-15 00:33:22',982095,1,'APT WARNING: 70 packages available for upgrade (0 critical updates). ','',0,1,82),(8,1,1,0,108,'2016-05-16 00:55:14',322529,'2016-05-16 00:55:14',322529,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','',0,1,82),(9,1,1,0,87,'2016-05-16 00:59:32',786437,'2016-05-16 00:59:32',786437,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(10,1,1,0,87,'2016-05-16 01:29:37',466902,'2016-05-16 01:29:37',466902,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(11,1,1,0,87,'2016-05-16 01:59:41',620251,'2016-05-16 01:59:41',620251,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(12,1,1,5,95,'2016-05-16 02:00:18',312005,'2016-05-16 02:00:18',312005,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,82),(13,1,1,0,87,'2016-05-16 02:29:45',973594,'2016-05-16 02:29:45',973594,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(14,1,1,0,87,'2016-05-16 02:59:50',436490,'2016-05-16 02:59:50',436490,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(15,1,1,6,95,'2016-05-16 03:00:18',312011,'2016-05-16 03:00:18',312011,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,82),(16,1,1,0,87,'2016-05-16 03:29:54',554383,'2016-05-16 03:29:54',554383,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(17,1,1,0,87,'2016-05-16 03:59:59',244230,'2016-05-16 03:59:59',244230,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(18,1,1,0,87,'2016-05-16 04:30:03',199098,'2016-05-16 04:30:03',199098,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(19,1,1,0,87,'2016-05-16 05:00:07',930763,'2016-05-16 05:00:07',930763,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(20,1,1,0,87,'2016-05-16 05:30:12',600455,'2016-05-16 05:30:12',600455,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(21,1,1,0,87,'2016-05-16 06:00:16',976023,'2016-05-16 06:00:16',976023,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(22,1,1,0,87,'2016-05-16 06:30:21',622772,'2016-05-16 06:30:21',622772,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(23,1,1,0,87,'2016-05-16 07:00:26',126287,'2016-05-16 07:00:26',126287,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(24,1,1,0,87,'2016-05-16 07:30:30',626333,'2016-05-16 07:30:30',626333,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(25,1,1,0,87,'2016-05-16 08:00:34',944051,'2016-05-16 08:00:34',944051,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(26,1,1,0,87,'2016-05-16 08:30:39',638124,'2016-05-16 08:30:39',638124,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(27,1,1,0,87,'2016-05-16 09:00:43',468277,'2016-05-16 09:00:43',468277,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(28,1,1,0,87,'2016-05-16 09:30:48',284162,'2016-05-16 09:30:48',284162,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(29,1,1,0,87,'2016-05-16 10:00:52',562025,'2016-05-16 10:00:52',562025,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(30,1,1,0,87,'2016-05-16 10:30:56',901103,'2016-05-16 10:30:56',901103,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(31,1,1,0,87,'2016-05-16 11:01:01',421102,'2016-05-16 11:01:01',421102,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82),(32,1,1,0,87,'2016-05-16 11:31:06',205142,'2016-05-16 11:31:06',205142,1,'APT WARNING: 67 packages available for upgrade (0 critical updates). ','',0,1,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1 COMMENT='Current and historical objects of all kinds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_objects`
--

LOCK TABLES `icinga_objects` WRITE;
/*!40000 ALTER TABLE `icinga_objects` DISABLE KEYS */;
INSERT INTO `icinga_objects` VALUES (1,1,13,'ip-10-0-0-210',NULL,0),(2,1,14,'ip-10-0-0-210',NULL,0),(3,1,12,'check_by_ssh',NULL,0),(4,1,12,'check_clamd',NULL,0),(5,1,12,'check_cluster',NULL,0),(6,1,12,'check_cluster-zone',NULL,0),(7,1,12,'check_dhcp',NULL,0),(8,1,12,'check_dig',NULL,0),(9,1,12,'check_disk',NULL,0),(10,1,12,'check_apt',NULL,0),(11,1,12,'check_disk_smb',NULL,0),(12,1,12,'check_dummy',NULL,0),(13,1,12,'check_dns',NULL,0),(14,1,12,'check_fping4',NULL,0),(15,1,12,'check_fping6',NULL,0),(16,1,12,'check_hostalive',NULL,0),(17,1,12,'check_ftp',NULL,0),(18,1,12,'check_hostalive4',NULL,0),(19,1,12,'check_hpjd',NULL,0),(20,1,12,'check_hostalive6',NULL,0),(21,1,12,'check_icinga',NULL,0),(22,1,12,'check_icmp',NULL,0),(23,1,12,'check_ido',NULL,0),(24,1,12,'check_imap',NULL,0),(25,1,12,'check_http',NULL,0),(26,1,12,'check_ldap',NULL,0),(27,1,12,'check_load',NULL,0),(28,1,12,'check_mailq',NULL,0),(29,1,12,'check_negate',NULL,0),(30,1,12,'check_mysql',NULL,0),(31,1,12,'check_nrpe',NULL,0),(32,1,12,'check_nscp',NULL,0),(33,1,12,'check_ntp_time',NULL,0),(34,1,12,'check_ntp_peer',NULL,0),(35,1,12,'check_passive',NULL,0),(36,1,12,'check_pgsql',NULL,0),(37,1,12,'check_ping',NULL,0),(38,1,12,'check_ping4',NULL,0),(39,1,12,'check_pop',NULL,0),(40,1,12,'check_procs',NULL,0),(41,1,12,'check_random',NULL,0),(42,1,12,'check_simap',NULL,0),(43,1,12,'check_smtp',NULL,0),(44,1,12,'check_snmp',NULL,0),(45,1,12,'check_snmp-uptime',NULL,0),(46,1,12,'check_snmpv3',NULL,0),(47,1,12,'check_spop',NULL,0),(48,1,12,'check_ssh',NULL,0),(49,1,12,'check_ssl',NULL,0),(50,1,12,'check_ssmtp',NULL,0),(51,1,12,'check_swap',NULL,0),(52,1,12,'check_tcp',NULL,0),(53,1,12,'check_udp',NULL,0),(54,1,12,'check_ups',NULL,0),(55,1,12,'check_users',NULL,0),(56,1,12,'check_ping6',NULL,0),(57,1,12,'notification_mail-host-notification',NULL,0),(58,1,12,'notification_mail-service-notification',NULL,0),(59,1,9,'24x7',NULL,1),(60,1,9,'9to5',NULL,1),(61,1,9,'never',NULL,1),(62,1,3,'linux-servers',NULL,1),(63,1,3,'windows-servers',NULL,1),(64,1,4,'disk',NULL,1),(65,1,4,'http',NULL,1),(66,1,4,'ping',NULL,1),(67,1,1,'ip-10-0-0-210',NULL,0),(68,1,10,'icingaadmin',NULL,1),(69,1,11,'icingaadmins',NULL,1),(70,1,2,'ip-10-0-0-210','apt',0),(71,1,2,'ip-10-0-0-210','ping4',0),(72,1,2,'ip-10-0-0-210','ping6',0),(73,1,2,'ip-10-0-0-210','ssh',0),(74,1,2,'ip-10-0-0-210','http',0),(75,1,2,'ip-10-0-0-210','disk',0),(76,1,2,'ip-10-0-0-210','disk /',0),(77,1,2,'ip-10-0-0-210','icinga',0),(78,1,2,'ip-10-0-0-210','load',0),(79,1,2,'ip-10-0-0-210','procs',0),(80,1,2,'ip-10-0-0-210','swap',0),(81,1,2,'ip-10-0-0-210','users',0),(82,1,13,'icinga2',NULL,1),(83,1,14,'icinga2',NULL,1),(84,1,12,'notification_mail-host-notification',NULL,0),(85,1,12,'notification_mail-service-notification',NULL,0),(86,1,1,'icinga2',NULL,1),(87,1,2,'icinga2','apt',1),(88,1,2,'icinga2','ping4',1),(89,1,2,'icinga2','ping6',1),(90,1,2,'icinga2','ssh',1),(91,1,2,'icinga2','http',1),(92,1,2,'icinga2','disk',1),(93,1,2,'icinga2','disk /',1),(94,1,2,'icinga2','icinga',1),(95,1,2,'icinga2','load',1),(96,1,2,'icinga2','procs',1),(97,1,2,'icinga2','swap',1),(98,1,2,'icinga2','users',1),(99,1,12,'notification_mail-host-notification',NULL,0),(100,1,12,'notification_mail-service-notification',NULL,0),(101,1,12,'notification_mail-host-notification',NULL,0),(102,1,12,'notification_mail-service-notification',NULL,0),(103,1,12,'notification_mail-host-notification',NULL,0),(104,1,12,'notification_mail-service-notification',NULL,0),(105,1,12,'notification_mail-host-notification',NULL,0),(106,1,12,'notification_mail-service-notification',NULL,0),(107,1,1,'www.google.com',NULL,0),(108,1,2,'icinga2','Icinga Web 2',1),(109,1,2,'www.google.com','ping4',0),(110,1,12,'notification_mail-host-notification',NULL,0),(111,1,12,'notification_mail-service-notification',NULL,0),(112,1,1,'docker-apache2',NULL,1),(113,1,2,'docker-apache2','ping4',1),(114,1,12,'notification_mail-host-notification',NULL,0),(115,1,12,'notification_mail-service-notification',NULL,0),(116,1,1,'docker-mysql',NULL,1),(117,1,2,'docker-mysql','ping4',1),(118,1,12,'notification_mail-host-notification',NULL,0),(119,1,12,'notification_mail-service-notification',NULL,0),(120,1,12,'notification_mail-host-notification',NULL,0),(121,1,12,'notification_mail-service-notification',NULL,0),(122,1,12,'notification_mail-host-notification',NULL,0),(123,1,12,'notification_mail-service-notification',NULL,0),(124,1,12,'notification_mail-host-notification',NULL,0),(125,1,12,'notification_mail-service-notification',NULL,0),(126,1,12,'notification_mail-host-notification',NULL,0),(127,1,12,'notification_mail-service-notification',NULL,0),(128,1,12,'notification_mail-host-notification',NULL,0),(129,1,12,'notification_mail-service-notification',NULL,0),(130,1,12,'notification_mail-host-notification',NULL,1),(131,1,12,'notification_mail-service-notification',NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5415 DEFAULT CHARSET=latin1 COMMENT='Current program status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_programstatus`
--

LOCK TABLES `icinga_programstatus` WRITE;
/*!40000 ALTER TABLE `icinga_programstatus` DISABLE KEYS */;
INSERT INTO `icinga_programstatus` VALUES (5414,1,'r2.4.7-1','2016-05-16 14:40:06','2016-05-16 14:36:16','0000-00-00 00:00:00','icinga2',1,1245,1,'2016-05-16 14:40:06','0000-00-00 00:00:00',1,'0000-00-00 00:00:00',1,1,1,1,1,1,0,1,0,0,0,0,NULL,NULL,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21657 DEFAULT CHARSET=latin1 COMMENT='Runtime variables from the Icinga daemon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_runtimevariables`
--

LOCK TABLES `icinga_runtimevariables` WRITE;
/*!40000 ALTER TABLE `icinga_runtimevariables` DISABLE KEYS */;
INSERT INTO `icinga_runtimevariables` VALUES (21653,1,'total_services','15',NULL),(21654,1,'total_scheduled_services','15',NULL),(21655,1,'total_hosts','3',NULL),(21656,1,'total_scheduled_hosts','3',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COMMENT='Current scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_scheduleddowntime`
--

LOCK TABLES `icinga_scheduleddowntime` WRITE;
/*!40000 ALTER TABLE `icinga_scheduleddowntime` DISABLE KEYS */;
INSERT INTO `icinga_scheduleddowntime` VALUES (1,1,1,78,'2016-05-14 20:57:31','icingaadmin','Scheduled downtime for backup',1,0,1,0,'2016-05-15 02:00:00','2016-05-15 03:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','ip-10-0-0-210!load!ip-10-0-0-210-1463259451-0',1),(20,1,1,95,'2016-05-14 21:32:55','icingaadmin','Scheduled downtime for backup',1,0,1,0,'2016-05-15 02:00:00','2016-05-15 03:00:00',1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga2!load!icinga2-1463261575-0',82),(21,1,1,95,'2016-05-16 02:00:37','icingaadmin','Scheduled downtime for backup',3,0,1,0,'2016-05-17 02:00:00','2016-05-17 03:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga2!load!ip-10-0-0-210-1463364037-0',82),(22,1,1,95,'2016-05-15 20:58:52','icingaadmin','Scheduled downtime for backup',2,0,1,0,'2016-05-16 02:00:00','2016-05-16 03:00:00',1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga2!load!ip-10-0-0-210-1463345932-0',82);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1 COMMENT='Service contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contactgroups`
--

LOCK TABLES `icinga_service_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_service_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_service_contactgroups` VALUES (178,1,13,69),(179,1,14,69),(180,1,15,69),(181,1,16,69),(182,1,17,69),(183,1,18,69),(184,1,19,69),(185,1,20,69),(186,1,21,69),(187,1,22,69),(188,1,23,69),(189,1,24,69),(190,1,25,69);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1 COMMENT='Service contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contacts`
--

LOCK TABLES `icinga_service_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_service_contacts` DISABLE KEYS */;
INSERT INTO `icinga_service_contacts` VALUES (178,1,13,68),(179,1,14,68),(180,1,15,68),(181,1,16,68),(182,1,17,68),(183,1,18,68),(184,1,19,68),(185,1,20,68),(186,1,21,68),(187,1,22,68),(188,1,23,68),(189,1,24,68),(190,1,25,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1 COMMENT='Servicegroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup_members`
--

LOCK TABLES `icinga_servicegroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup_members` DISABLE KEYS */;
INSERT INTO `icinga_servicegroup_members` VALUES (103,1,3,88),(104,1,3,89),(105,1,2,91),(106,1,1,92),(107,1,1,93),(108,1,2,108),(109,1,3,113),(110,1,3,117);
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
INSERT INTO `icinga_servicestatus` VALUES (1,1,70,'2016-05-14 21:32:49','APT WARNING: 70 packages available for upgrade (0 critical updates). ','','available_upgrades=70;;;0 critical_updates=0;;;0','ip-10-0-0-210',1,1,1,1,5,'2016-05-14 21:32:49','2016-05-14 21:33:49',0,'2016-05-14 21:01:22','2016-05-14 21:01:22',1,'0000-00-00 00:00:00','2016-05-14 21:32:49','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-14 21:31:24','2016-05-14 22:01:24',0,1,0,0,1,1,1,1,0,0,0,0,0.657263994216919,0,0,1,0,0,'null','','apt',1,0.5,0,1,1),(2,1,71,'2016-05-14 21:32:54','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.036000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:54','2016-05-14 21:33:50',0,'2016-05-14 21:02:03','2016-05-14 21:02:03',0,'2016-05-14 21:32:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,4.001168966293335,0,0,1,0,0,'null','','ping4',1,0.5,0,1,1),(3,1,72,'2016-05-14 21:32:20','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.040000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:20','2016-05-14 21:33:16',0,'2016-05-14 21:01:22','2016-05-14 21:01:22',0,'2016-05-14 21:32:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,4.0011279582977295,0,0,1,0,0,'null','','ping6',1,0.5,0,1,1),(4,1,73,'2016-05-14 21:31:57','SSH OK - OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.4 (protocol 2.0) ','','time=0.004454s;;;0.000000;10.000000','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:31:57','2016-05-14 21:32:57',0,'2016-05-14 21:01:50','2016-05-14 21:01:50',0,'2016-05-14 21:31:57','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0055751800537109375,0,0,1,0,0,'null','','ssh',1,0.5,0,1,1),(5,1,74,'2016-05-14 21:32:21','HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.000 second response time ','','time=0.000375s;;;0.000000 size=11783B;;;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:21','2016-05-14 21:33:21',0,'2016-05-14 21:01:32','2016-05-14 21:01:32',0,'2016-05-14 21:32:21','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0015249252319335938,0,0,1,0,0,'null','','http',1,0.5,0,1,1),(6,1,75,'2016-05-14 21:32:05','DISK OK - free space: / 5934 MB (79% inode=84%):','','/=1564MB;6339;7131;0;7924','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:05','2016-05-14 21:33:05',0,'2016-05-14 21:01:38','2016-05-14 21:01:38',0,'2016-05-14 21:32:05','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0008339881896972656,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(7,1,76,'2016-05-14 21:32:28','DISK OK - free space: / 5935 MB (79% inode=84%):','','/=1564MB;6339;7131;0;7924','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:28','2016-05-14 21:33:28',0,'2016-05-14 21:01:29','2016-05-14 21:01:29',0,'2016-05-14 21:32:28','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0007910728454589844,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(8,1,77,'2016-05-14 21:32:51','Icinga 2 has been running for 17 minutes and 57 seconds. Version: r2.4.7-1','','active_host_checks=0.016666666666666666 passive_host_checks=0 active_host_checks_1min=1 passive_host_checks_1min=0 active_host_checks_5min=5 passive_host_checks_5min=0 active_host_checks_15min=15 passive_host_checks_15min=0 active_service_checks=0.20000000000000001 passive_service_checks=0 active_service_checks_1min=12 passive_service_checks_1min=0 active_service_checks_5min=60 passive_service_checks_5min=0 active_service_checks_15min=180 passive_service_checks_15min=0 min_latency=0 max_latency=0 avg_latency=0 min_execution_time=0 max_execution_time=0 avg_execution_time=0.72308176755905151 num_services_ok=11 num_services_warning=1 num_services_critical=0 num_services_unknown=0 num_services_pending=0 num_services_unreachable=0 num_services_flapping=0 num_services_in_downtime=0 num_services_acknowledged=0 uptime=1077.365198135376 num_hosts_up=1 num_hosts_down=0 num_hosts_pending=0 num_hosts_unreachable=0 num_hosts_flapping=0 num_hosts_in_downtime=0 num_hosts_acknowledged=0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:51','2016-05-14 21:33:51',0,'2016-05-14 21:01:24','2016-05-14 21:01:24',0,'2016-05-14 21:32:51','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.00009584426879882812,0,0,1,0,0,'null','','icinga',1,0.5,0,1,1),(9,1,78,'2016-05-14 21:31:56','OK - load average: 0.06, 0.03, 0.05','','load1=0.060;5.000;10.000;0; load5=0.030;4.000;6.000;0; load15=0.050;3.000;4.000;0;','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:31:56','2016-05-14 21:32:56',0,'2016-05-14 21:01:59','2016-05-14 21:01:59',0,'2016-05-14 21:31:56','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0015959739685058594,0,0,1,0,0,'null','','load',1,0.5,0,1,1),(10,1,79,'2016-05-14 21:32:34','PROCS OK: 133 processes ','','procs=133;250;400;0;','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:34','2016-05-14 21:33:34',0,'2016-05-14 21:01:30','2016-05-14 21:01:30',0,'2016-05-14 21:32:34','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0054399967193603516,0,0,1,0,0,'null','','procs',1,0.5,0,1,1),(11,1,80,'2016-05-14 21:32:39','SWAP OK - 100% free (0 MB out of 0 MB) ','','swap=0MB;0;0;0;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:39','2016-05-14 21:33:39',0,'2016-05-14 21:01:42','2016-05-14 21:01:42',0,'2016-05-14 21:32:39','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0008962154388427734,0,0,1,0,0,'null','','swap',1,0.5,0,1,1),(12,1,81,'2016-05-14 21:32:54','USERS OK - 1 users currently logged in ','','users=1;20;50;0','ip-10-0-0-210',0,1,1,1,5,'2016-05-14 21:32:54','2016-05-14 21:33:54',0,'2016-05-14 21:01:28','2016-05-14 21:01:28',0,'2016-05-14 21:32:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-14 22:01:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0008199214935302734,0,0,1,0,0,'null','','users',1,0.5,0,1,1),(13,1,87,'2016-05-16 14:39:33','APT WARNING: 67 packages available for upgrade (0 critical updates). ','','available_upgrades=67;;;0 critical_updates=0;;;0','icinga2',1,1,1,1,5,'2016-05-16 14:39:33','2016-05-16 14:40:32',0,'2016-05-14 21:33:16','2016-05-14 21:33:16',1,'0000-00-00 00:00:00','2016-05-16 14:39:33','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-16 14:36:21','2016-05-16 15:06:21',0,1,0,0,37,1,1,1,0,0,0,0,0.6282739639282227,0,0,1,0,0,'null','','apt',1,0.5,0,1,82),(14,1,88,'2016-05-16 14:39:07','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.045000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:07','2016-05-16 14:40:03',0,'2016-05-14 21:33:22','2016-05-14 21:33:22',0,'2016-05-16 14:39:07','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,4.000484943389893,0,0,1,0,0,'null','','ping4',1,0.5,0,1,82),(15,1,89,'2016-05-16 14:39:40','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.036000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:40','2016-05-16 14:40:36',0,'2016-05-14 21:33:28','2016-05-14 21:33:28',0,'2016-05-16 14:39:40','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,4.000508069992065,0,0,1,0,0,'null','','ping6',1,0.5,0,1,82),(16,1,90,'2016-05-16 14:40:00','SSH OK - OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.4 (protocol 2.0) ','','time=0.004769s;;;0.000000;10.000000','icinga2',0,1,1,1,5,'2016-05-16 14:40:00','2016-05-16 14:41:00',0,'2016-05-14 21:33:20','2016-05-14 21:33:20',0,'2016-05-16 14:40:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.005536079406738281,0,0,1,0,0,'null','','ssh',1,0.5,0,1,82),(17,1,91,'2016-05-16 14:39:42','HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.000 second response time ','','time=0.000477s;;;0.000000 size=11783B;;;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:42','2016-05-16 14:40:42',0,'2016-05-16 00:55:01','2016-05-16 00:55:01',0,'2016-05-16 14:39:42','0000-00-00 00:00:00','0000-00-00 00:00:00','2016-05-16 00:54:01',1,'2016-05-16 00:55:01','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0015940666198730469,0,0,1,0,0,'null','','http',1,0.5,0,1,82),(18,1,92,'2016-05-16 14:39:39','DISK OK - free space: / 4120 MB (54% inode=74%):','','/=3379MB;6339;7131;0;7924','icinga2',0,1,1,1,5,'2016-05-16 14:39:39','2016-05-16 14:40:39',0,'2016-05-14 21:33:53','2016-05-14 21:33:53',0,'2016-05-16 14:39:39','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0008440017700195312,0,0,1,0,0,'null','','disk',1,0.5,0,1,82),(19,1,93,'2016-05-16 14:39:12','DISK OK - free space: / 4120 MB (54% inode=74%):','','/=3379MB;6339;7131;0;7924','icinga2',0,1,1,1,5,'2016-05-16 14:39:12','2016-05-16 14:40:12',0,'2016-05-14 21:33:23','2016-05-14 21:33:23',0,'2016-05-16 14:39:12','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0008280277252197266,0,0,1,0,0,'null','','disk',1,0.5,0,1,82),(20,1,94,'2016-05-16 14:39:20','Icinga 2 has been running for 3 minutes and 4 seconds. Version: r2.4.7-1','','active_host_checks=0.016666666666666666 passive_host_checks=0 active_host_checks_1min=1 passive_host_checks_1min=0 active_host_checks_5min=4 passive_host_checks_5min=0 active_host_checks_15min=4 passive_host_checks_15min=0 active_service_checks=0.25 passive_service_checks=0 active_service_checks_1min=15 passive_service_checks_1min=0 active_service_checks_5min=45 passive_service_checks_5min=0 active_service_checks_15min=45 passive_service_checks_15min=0 min_latency=0 max_latency=0 avg_latency=0 min_execution_time=0 max_execution_time=0 avg_execution_time=1.1092545191446941 num_services_ok=14 num_services_warning=1 num_services_critical=0 num_services_unknown=0 num_services_pending=0 num_services_unreachable=2 num_services_flapping=0 num_services_in_downtime=0 num_services_acknowledged=0 uptime=184.73947405815125 num_hosts_up=1 num_hosts_down=2 num_hosts_pending=0 num_hosts_unreachable=0 num_hosts_flapping=0 num_hosts_in_downtime=0 num_hosts_acknowledged=0','icinga2',0,1,1,1,5,'2016-05-16 14:39:20','2016-05-16 14:40:20',0,'2016-05-14 21:33:34','2016-05-14 21:33:34',0,'2016-05-16 14:39:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.00011110305786132812,0,0,1,0,0,'null','','icinga',1,0.5,0,1,82),(21,1,95,'2016-05-16 14:39:47','OK - load average: 0.05, 0.07, 0.04','','load1=0.050;5.000;10.000;0; load5=0.070;4.000;6.000;0; load15=0.040;3.000;4.000;0;','icinga2',0,1,1,1,5,'2016-05-16 14:39:47','2016-05-16 14:40:47',0,'2016-05-14 21:33:46','2016-05-14 21:33:46',0,'2016-05-16 14:39:47','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-16 03:00:18','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0015230178833007812,0,0,1,0,0,'null','','load',1,0.5,0,1,82),(22,1,96,'2016-05-16 14:39:20','PROCS OK: 121 processes ','','procs=121;250;400;0;','icinga2',0,1,1,1,5,'2016-05-16 14:39:20','2016-05-16 14:40:20',0,'2016-05-14 21:33:10','2016-05-14 21:33:10',0,'2016-05-16 14:39:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.005769968032836914,0,0,1,0,0,'null','','procs',1,0.5,0,1,82),(23,1,97,'2016-05-16 14:39:07','SWAP OK - 100% free (0 MB out of 0 MB) ','','swap=0MB;0;0;0;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:07','2016-05-16 14:40:07',0,'2016-05-14 21:33:11','2016-05-14 21:33:11',0,'2016-05-16 14:39:07','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0008509159088134766,0,0,1,0,0,'null','','swap',1,0.5,0,1,82),(24,1,98,'2016-05-16 14:39:15','USERS OK - 1 users currently logged in ','','users=1;20;50;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:15','2016-05-16 14:40:15',0,'2016-05-14 21:33:42','2016-05-14 21:33:42',0,'2016-05-16 14:39:15','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0007441043853759766,0,0,1,0,0,'null','','users',1,0.5,0,1,82),(25,1,108,'2016-05-16 14:39:22','HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','','time=0.000346s;;;0.000000 size=537B;;;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:22','2016-05-16 14:40:22',0,'2016-05-16 00:55:14','2016-05-16 00:55:14',0,'2016-05-16 14:39:22','2016-05-15 23:19:14','0000-00-00 00:00:00','2016-05-16 00:54:14',1,'2016-05-16 00:55:14','2016-05-16 15:06:21',0,1,0,0,0,1,1,1,0,0,0,0,0.0015079975128173828,0,0,1,0,0,'null','','http',1,0.5,0,1,82),(26,1,109,'2016-05-16 00:55:35','PING OK - Packet loss = 0%, RTA = 88.94 ms','','rta=88.945000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 00:55:35','2016-05-16 00:56:31',0,'2016-05-15 23:37:05','2016-05-15 23:37:35',0,'2016-05-16 00:55:35','2016-05-15 23:36:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,4.1159257888793945,0,0,1,0,0,'null','','ping4',1,0.5,0,1,82),(27,1,113,'2016-05-16 14:39:41','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.038000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:41','2016-05-16 14:40:37',0,'2016-05-14 23:36:19','2016-05-14 23:36:19',0,'2016-05-16 14:39:41','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,3.9983649253845215,0,0,1,0,0,'null','','ping4',1,0.5,0,0,82),(28,1,117,'2016-05-16 14:39:51','PING OK - Packet loss = 0%, RTA = 0.05 ms','','rta=0.048000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga2',0,1,1,1,5,'2016-05-16 14:39:51','2016-05-16 14:40:47',0,'2016-05-14 23:37:49','2016-05-14 23:37:49',0,'2016-05-16 14:39:51','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,0,0,0,1,1,1,0,0,0,0,4.0023369789123535,0,0,1,0,0,'null','','ping4',1,0.5,0,0,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Historical host and service state changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_statehistory`
--

LOCK TABLES `icinga_statehistory` WRITE;
/*!40000 ALTER TABLE `icinga_statehistory` DISABLE KEYS */;
INSERT INTO `icinga_statehistory` VALUES (1,1,'2016-05-14 23:31:14',260231,107,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 662 bytes in 0.418 second response time ','','icinga2',82),(2,1,'2016-05-14 23:31:18',8209,109,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 87.41 ms','','icinga2',82),(3,1,'2016-05-14 23:31:28',762182,108,1,0,1,1,5,3,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','','icinga2',82),(4,1,'2016-05-14 23:35:53',29599,112,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 200 OK - 262 bytes in 0.001 second response time ','','icinga2',82),(5,1,'2016-05-14 23:36:19',781383,113,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.04 ms','','icinga2',82),(6,1,'2016-05-14 23:37:49',501888,117,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.04 ms','','icinga2',82),(7,1,'2016-05-14 23:38:11',612622,116,1,1,1,1,3,1,1,'Lost connection to MySQL server at \'reading initial communication packet\', system error: 0','','icinga2',82),(8,1,'2016-05-14 23:57:23',225177,116,1,0,1,1,3,1,0,'Uptime: 298  Threads: 1  Questions: 38  Slow queries: 0  Opens: 48  Flush tables: 1  Open tables: 41  Queries per second avg: 0.127','','icinga2',82),(9,1,'2016-05-15 21:00:28',591803,112,1,1,0,1,3,0,0,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(10,1,'2016-05-15 21:00:28',592776,116,1,1,0,1,3,0,0,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(11,1,'2016-05-15 21:03:28',592542,112,1,1,1,1,3,1,1,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(12,1,'2016-05-15 21:03:28',593054,116,1,1,1,1,3,1,1,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(13,1,'2016-05-16 00:55:14',322173,108,1,0,1,1,5,2,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 537 bytes in 0.000 second response time ','','icinga2',82),(14,1,'2016-05-16 00:56:27',734987,112,1,0,1,1,3,1,0,'HTTP OK: HTTP/1.1 200 OK - 11783 bytes in 0.001 second response time ','','icinga2',82),(15,1,'2016-05-16 00:58:47',340131,116,1,0,1,1,3,1,0,'Uptime: 74  Threads: 1  Questions: 16  Slow queries: 0  Opens: 33  Flush tables: 1  Open tables: 26  Queries per second avg: 0.216','','icinga2',82),(16,1,'2016-05-16 03:40:45',391707,112,1,1,0,1,3,0,0,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(17,1,'2016-05-16 03:41:18',621977,116,1,1,0,1,3,0,0,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82),(18,1,'2016-05-16 03:43:45',392189,112,1,1,1,1,3,1,1,'Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga2',82),(19,1,'2016-05-16 03:44:18',621902,116,1,1,1,1,3,1,1,'Can\'t connect to MySQL server on \'127.0.0.1\' (111)','','icinga2',82);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod_timeranges`
--

LOCK TABLES `icinga_timeperiod_timeranges` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` DISABLE KEYS */;
INSERT INTO `icinga_timeperiod_timeranges` VALUES (169,1,1,5,0,0),(170,1,1,1,0,0),(171,1,1,6,0,0),(172,1,1,0,0,0),(173,1,1,4,0,0),(174,1,1,2,0,0),(175,1,1,3,0,0),(176,1,2,5,32400,61200),(177,1,2,1,32400,61200),(178,1,2,4,32400,61200),(179,1,2,2,32400,61200),(180,1,2,3,32400,61200);
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
INSERT INTO `icinga_zonestatus` VALUES (1,1,2,'2016-05-14 21:14:54',0),(2,1,83,'2016-05-16 14:36:26',0);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-16 14:40:07
