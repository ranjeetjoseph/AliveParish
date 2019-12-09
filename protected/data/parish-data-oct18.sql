-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: parish
-- ------------------------------------------------------
-- Server version	5.1.49-3-log

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
-- Table structure for table `AuthAssignment`
--

DROP TABLE IF EXISTS `AuthAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`),
  CONSTRAINT `AuthAssignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthAssignment`
--

LOCK TABLES `AuthAssignment` WRITE;
/*!40000 ALTER TABLE `AuthAssignment` DISABLE KEYS */;
INSERT INTO `AuthAssignment` VALUES ('Admin','1',NULL,'N;'),('Pastor','3',NULL,'N;'),('Pastor','6',NULL,'N;'),('Staff','2',NULL,'N;'),('Staff','4',NULL,'N;'),('Staff','5',NULL,'N;');
/*!40000 ALTER TABLE `AuthAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthItem`
--

DROP TABLE IF EXISTS `AuthItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthItem`
--

LOCK TABLES `AuthItem` WRITE;
/*!40000 ALTER TABLE `AuthItem` DISABLE KEYS */;
INSERT INTO `AuthItem` VALUES ('Admin',2,NULL,NULL,'N;'),('Authenticated',2,NULL,NULL,'N;'),('AwarenessData.*',1,NULL,NULL,'N;'),('AwarenessData.Admin',0,NULL,NULL,'N;'),('AwarenessData.Create',0,NULL,NULL,'N;'),('AwarenessData.Delete',0,NULL,NULL,'N;'),('AwarenessData.Index',0,NULL,NULL,'N;'),('AwarenessData.Update',0,NULL,NULL,'N;'),('AwarenessData.View',0,NULL,NULL,'N;'),('AwarenessItems.*',1,NULL,NULL,'N;'),('AwarenessItems.Admin',0,NULL,NULL,'N;'),('AwarenessItems.Create',0,NULL,NULL,'N;'),('AwarenessItems.Delete',0,NULL,NULL,'N;'),('AwarenessItems.Index',0,NULL,NULL,'N;'),('AwarenessItems.Update',0,NULL,NULL,'N;'),('AwarenessItems.View',0,NULL,NULL,'N;'),('BannsRecords.*',1,NULL,NULL,'N;'),('BannsRecords.Admin',0,NULL,NULL,'N;'),('BannsRecords.Create',0,NULL,NULL,'N;'),('BannsRecords.Delete',0,NULL,NULL,'N;'),('BannsRecords.Index',0,NULL,NULL,'N;'),('BannsRecords.Search',0,NULL,NULL,'N;'),('BannsRecords.Update',0,NULL,NULL,'N;'),('BannsRecords.View',0,NULL,NULL,'N;'),('BannsRequest.*',1,NULL,NULL,'N;'),('BannsRequest.Admin',0,NULL,NULL,'N;'),('BannsRequest.ByRecord',0,NULL,NULL,'N;'),('BannsRequest.Create',0,NULL,NULL,'N;'),('BannsRequest.Delete',0,NULL,NULL,'N;'),('BannsRequest.Index',0,NULL,NULL,'N;'),('BannsRequest.Update',0,NULL,NULL,'N;'),('BannsRequest.View',0,NULL,NULL,'N;'),('BannsRequest.ViewCert',0,NULL,NULL,'N;'),('BannsResponse.*',1,NULL,NULL,'N;'),('BannsResponse.Admin',0,NULL,NULL,'N;'),('BannsResponse.ByRecord',0,NULL,NULL,'N;'),('BannsResponse.Create',0,NULL,NULL,'N;'),('BannsResponse.Delete',0,NULL,NULL,'N;'),('BannsResponse.Index',0,NULL,NULL,'N;'),('BannsResponse.Update',0,NULL,NULL,'N;'),('BannsResponse.View',0,NULL,NULL,'N;'),('BannsResponse.ViewCert',0,NULL,NULL,'N;'),('BaptismCertificate.*',1,NULL,NULL,'N;'),('BaptismCertificate.Admin',0,NULL,NULL,'N;'),('BaptismCertificate.ByRecord',0,NULL,NULL,'N;'),('BaptismCertificate.Create',0,NULL,NULL,'N;'),('BaptismCertificate.Delete',0,NULL,NULL,'N;'),('BaptismCertificate.Index',0,NULL,NULL,'N;'),('BaptismCertificate.Update',0,NULL,NULL,'N;'),('BaptismCertificate.View',0,NULL,NULL,'N;'),('BaptismCertificate.ViewCert',0,NULL,NULL,'N;'),('BaptismRecords.*',1,NULL,NULL,'N;'),('BaptismRecords.Admin',0,NULL,NULL,'N;'),('BaptismRecords.Create',0,NULL,NULL,'N;'),('BaptismRecords.Delete',0,NULL,NULL,'N;'),('BaptismRecords.Index',0,NULL,NULL,'N;'),('BaptismRecords.Search',0,NULL,NULL,'N;'),('BaptismRecords.Update',0,NULL,NULL,'N;'),('BaptismRecords.View',0,NULL,NULL,'N;'),('ConfirmationCertificate.*',1,NULL,NULL,'N;'),('ConfirmationCertificate.Admin',0,NULL,NULL,'N;'),('ConfirmationCertificate.ByRecord',0,NULL,NULL,'N;'),('ConfirmationCertificate.Create',0,NULL,NULL,'N;'),('ConfirmationCertificate.Delete',0,NULL,NULL,'N;'),('ConfirmationCertificate.Index',0,NULL,NULL,'N;'),('ConfirmationCertificate.Update',0,NULL,NULL,'N;'),('ConfirmationCertificate.View',0,NULL,NULL,'N;'),('ConfirmationCertificate.ViewCert',0,NULL,NULL,'N;'),('ConfirmationRecords.*',1,NULL,NULL,'N;'),('ConfirmationRecords.Admin',0,NULL,NULL,'N;'),('ConfirmationRecords.Create',0,NULL,NULL,'N;'),('ConfirmationRecords.Delete',0,NULL,NULL,'N;'),('ConfirmationRecords.Index',0,NULL,NULL,'N;'),('ConfirmationRecords.Search',0,NULL,NULL,'N;'),('ConfirmationRecords.Update',0,NULL,NULL,'N;'),('ConfirmationRecords.View',0,NULL,NULL,'N;'),('DeathCertificate.*',1,NULL,NULL,'N;'),('DeathCertificate.Admin',0,NULL,NULL,'N;'),('DeathCertificate.ByRecord',0,NULL,NULL,'N;'),('DeathCertificate.Create',0,NULL,NULL,'N;'),('DeathCertificate.Delete',0,NULL,NULL,'N;'),('DeathCertificate.Index',0,NULL,NULL,'N;'),('DeathCertificate.Update',0,NULL,NULL,'N;'),('DeathCertificate.View',0,NULL,NULL,'N;'),('DeathCertificate.ViewCert',0,NULL,NULL,'N;'),('DeathRecords.*',1,NULL,NULL,'N;'),('DeathRecords.Admin',0,NULL,NULL,'N;'),('DeathRecords.Create',0,NULL,NULL,'N;'),('DeathRecords.Delete',0,NULL,NULL,'N;'),('DeathRecords.Index',0,NULL,NULL,'N;'),('DeathRecords.Search',0,NULL,NULL,'N;'),('DeathRecords.Update',0,NULL,NULL,'N;'),('DeathRecords.View',0,NULL,NULL,'N;'),('Family.*',1,NULL,NULL,'N;'),('Family.Admin',0,NULL,NULL,'N;'),('Family.Children',0,NULL,NULL,'N;'),('Family.Create',0,NULL,NULL,'N;'),('Family.Delete',0,NULL,NULL,'N;'),('Family.Dependents',0,NULL,NULL,'N;'),('Family.Disable',0,NULL,NULL,'N;'),('Family.Enable',0,NULL,NULL,'N;'),('Family.FindMatch',0,NULL,NULL,'N;'),('Family.Index',0,NULL,NULL,'N;'),('Family.Locate',0,NULL,NULL,'N;'),('Family.Photo',0,NULL,NULL,'N;'),('Family.Search',0,NULL,NULL,'N;'),('Family.Subscriptions',0,NULL,NULL,'N;'),('Family.Survey',0,NULL,NULL,'N;'),('Family.Update',0,NULL,NULL,'N;'),('Family.View',0,NULL,NULL,'N;'),('FieldName.*',1,NULL,NULL,'N;'),('FieldName.Admin',0,NULL,NULL,'N;'),('FieldName.Create',0,NULL,NULL,'N;'),('FieldName.Delete',0,NULL,NULL,'N;'),('FieldName.Index',0,NULL,NULL,'N;'),('FieldName.Update',0,NULL,NULL,'N;'),('FieldName.View',0,NULL,NULL,'N;'),('FieldValue.*',1,NULL,NULL,'N;'),('FieldValue.Admin',0,NULL,NULL,'N;'),('FieldValue.Create',0,NULL,NULL,'N;'),('FieldValue.Delete',0,NULL,NULL,'N;'),('FieldValue.Index',0,NULL,NULL,'N;'),('FieldValue.Update',0,NULL,NULL,'N;'),('FieldValue.View',0,NULL,NULL,'N;'),('FirstCommunionCertificate.*',1,NULL,NULL,'N;'),('FirstCommunionCertificate.Admin',0,NULL,NULL,'N;'),('FirstCommunionCertificate.ByRecord',0,NULL,NULL,'N;'),('FirstCommunionCertificate.Create',0,NULL,NULL,'N;'),('FirstCommunionCertificate.Delete',0,NULL,NULL,'N;'),('FirstCommunionCertificate.Index',0,NULL,NULL,'N;'),('FirstCommunionCertificate.Update',0,NULL,NULL,'N;'),('FirstCommunionCertificate.View',0,NULL,NULL,'N;'),('FirstCommunionCertificate.ViewCert',0,NULL,NULL,'N;'),('FirstCommunionRecords.*',1,NULL,NULL,'N;'),('FirstCommunionRecords.Admin',0,NULL,NULL,'N;'),('FirstCommunionRecords.Create',0,NULL,NULL,'N;'),('FirstCommunionRecords.Delete',0,NULL,NULL,'N;'),('FirstCommunionRecords.Index',0,NULL,NULL,'N;'),('FirstCommunionRecords.Search',0,NULL,NULL,'N;'),('FirstCommunionRecords.Update',0,NULL,NULL,'N;'),('FirstCommunionRecords.View',0,NULL,NULL,'N;'),('Guest',2,NULL,NULL,'N;'),('MarriageCertificate.*',1,NULL,NULL,'N;'),('MarriageCertificate.Admin',0,NULL,NULL,'N;'),('MarriageCertificate.ByRecord',0,NULL,NULL,'N;'),('MarriageCertificate.Create',0,NULL,NULL,'N;'),('MarriageCertificate.Delete',0,NULL,NULL,'N;'),('MarriageCertificate.Index',0,NULL,NULL,'N;'),('MarriageCertificate.Update',0,NULL,NULL,'N;'),('MarriageCertificate.View',0,NULL,NULL,'N;'),('MarriageCertificate.ViewCert',0,NULL,NULL,'N;'),('MarriageRecords.*',1,NULL,NULL,'N;'),('MarriageRecords.Admin',0,NULL,NULL,'N;'),('MarriageRecords.Create',0,NULL,NULL,'N;'),('MarriageRecords.Delete',0,NULL,NULL,'N;'),('MarriageRecords.Index',0,NULL,NULL,'N;'),('MarriageRecords.Search',0,NULL,NULL,'N;'),('MarriageRecords.Update',0,NULL,NULL,'N;'),('MarriageRecords.View',0,NULL,NULL,'N;'),('MassBooking.*',1,NULL,NULL,'N;'),('MassBooking.Admin',0,NULL,NULL,'N;'),('MassBooking.Calendar',0,NULL,NULL,'N;'),('MassBooking.Create',0,NULL,NULL,'N;'),('MassBooking.Delete',0,NULL,NULL,'N;'),('MassBooking.Index',0,NULL,NULL,'N;'),('MassBooking.Masses',0,NULL,NULL,'N;'),('MassBooking.Search',0,NULL,NULL,'N;'),('MassBooking.Update',0,NULL,NULL,'N;'),('MassBooking.View',0,NULL,NULL,'N;'),('MassBooking.ViewCert',0,NULL,NULL,'N;'),('MassSchedule.*',1,NULL,NULL,'N;'),('MassSchedule.Admin',0,NULL,NULL,'N;'),('MassSchedule.Create',0,NULL,NULL,'N;'),('MassSchedule.Delete',0,NULL,NULL,'N;'),('MassSchedule.Index',0,NULL,NULL,'N;'),('MassSchedule.Update',0,NULL,NULL,'N;'),('MassSchedule.View',0,NULL,NULL,'N;'),('MembershipCertificate.*',1,NULL,NULL,'N;'),('MembershipCertificate.Admin',0,NULL,NULL,'N;'),('MembershipCertificate.Create',0,NULL,NULL,'N;'),('MembershipCertificate.Delete',0,NULL,NULL,'N;'),('MembershipCertificate.Index',0,NULL,NULL,'N;'),('MembershipCertificate.Update',0,NULL,NULL,'N;'),('MembershipCertificate.View',0,NULL,NULL,'N;'),('MembershipCertificate.ViewCert',0,NULL,NULL,'N;'),('NeedData.*',1,NULL,NULL,'N;'),('NeedData.Admin',0,NULL,NULL,'N;'),('NeedData.Create',0,NULL,NULL,'N;'),('NeedData.Delete',0,NULL,NULL,'N;'),('NeedData.Index',0,NULL,NULL,'N;'),('NeedData.Update',0,NULL,NULL,'N;'),('NeedData.View',0,NULL,NULL,'N;'),('NeedItems.*',1,NULL,NULL,'N;'),('NeedItems.Admin',0,NULL,NULL,'N;'),('NeedItems.Create',0,NULL,NULL,'N;'),('NeedItems.Delete',0,NULL,NULL,'N;'),('NeedItems.Index',0,NULL,NULL,'N;'),('NeedItems.Update',0,NULL,NULL,'N;'),('NeedItems.View',0,NULL,NULL,'N;'),('NoImpedimentLetter.*',1,NULL,NULL,'N;'),('NoImpedimentLetter.Admin',0,NULL,NULL,'N;'),('NoImpedimentLetter.ByRecord',0,NULL,NULL,'N;'),('NoImpedimentLetter.Create',0,NULL,NULL,'N;'),('NoImpedimentLetter.Delete',0,NULL,NULL,'N;'),('NoImpedimentLetter.Index',0,NULL,NULL,'N;'),('NoImpedimentLetter.Update',0,NULL,NULL,'N;'),('NoImpedimentLetter.View',0,NULL,NULL,'N;'),('NoImpedimentLetter.ViewCert',0,NULL,NULL,'N;'),('OpenData.*',1,NULL,NULL,'N;'),('OpenData.Admin',0,NULL,NULL,'N;'),('OpenData.Create',0,NULL,NULL,'N;'),('OpenData.Delete',0,NULL,NULL,'N;'),('OpenData.Index',0,NULL,NULL,'N;'),('OpenData.Update',0,NULL,NULL,'N;'),('OpenData.View',0,NULL,NULL,'N;'),('OpenQuestions.*',1,NULL,NULL,'N;'),('OpenQuestions.Admin',0,NULL,NULL,'N;'),('OpenQuestions.Create',0,NULL,NULL,'N;'),('OpenQuestions.Delete',0,NULL,NULL,'N;'),('OpenQuestions.Index',0,NULL,NULL,'N;'),('OpenQuestions.Update',0,NULL,NULL,'N;'),('OpenQuestions.View',0,NULL,NULL,'N;'),('Pastor',2,'Pastor',NULL,'N;'),('Person.*',1,NULL,NULL,'N;'),('Person.Admin',0,NULL,NULL,'N;'),('Person.Baptised',0,NULL,NULL,'N;'),('Person.Confirmed',0,NULL,NULL,'N;'),('Person.Create',0,NULL,NULL,'N;'),('Person.Delete',0,NULL,NULL,'N;'),('Person.FindMatch',0,NULL,NULL,'N;'),('Person.Index',0,NULL,NULL,'N;'),('Person.Married',0,NULL,NULL,'N;'),('Person.Photo',0,NULL,NULL,'N;'),('Person.Search',0,NULL,NULL,'N;'),('Person.Update',0,NULL,NULL,'N;'),('Person.View',0,NULL,NULL,'N;'),('SatisfactionData.*',1,NULL,NULL,'N;'),('SatisfactionData.Admin',0,NULL,NULL,'N;'),('SatisfactionData.Create',0,NULL,NULL,'N;'),('SatisfactionData.Delete',0,NULL,NULL,'N;'),('SatisfactionData.Index',0,NULL,NULL,'N;'),('SatisfactionData.Update',0,NULL,NULL,'N;'),('SatisfactionData.View',0,NULL,NULL,'N;'),('SatisfactionItems.*',1,NULL,NULL,'N;'),('SatisfactionItems.Admin',0,NULL,NULL,'N;'),('SatisfactionItems.Create',0,NULL,NULL,'N;'),('SatisfactionItems.Delete',0,NULL,NULL,'N;'),('SatisfactionItems.Index',0,NULL,NULL,'N;'),('SatisfactionItems.Update',0,NULL,NULL,'N;'),('SatisfactionItems.View',0,NULL,NULL,'N;'),('Site.*',1,NULL,NULL,'N;'),('Site.Contact',0,NULL,NULL,'N;'),('Site.Error',0,NULL,NULL,'N;'),('Site.Index',0,NULL,NULL,'N;'),('Site.Login',0,NULL,NULL,'N;'),('Site.Logout',0,NULL,NULL,'N;'),('Site.ParishProfile',0,NULL,NULL,'N;'),('Site.Search',0,NULL,NULL,'N;'),('Staff',2,'Staff',NULL,'N;'),('Subscription.*',1,NULL,NULL,'N;'),('Subscription.Admin',0,NULL,NULL,'N;'),('Subscription.Create',0,NULL,NULL,'N;'),('Subscription.Delete',0,NULL,NULL,'N;'),('Subscription.Index',0,NULL,NULL,'N;'),('Subscription.TillDate',0,NULL,NULL,'N;'),('Subscription.Update',0,NULL,NULL,'N;'),('Subscription.View',0,NULL,NULL,'N;'),('Subscription.ViewRect',0,NULL,NULL,'N;'),('SurveyReports.*',1,NULL,NULL,'N;'),('SurveyReports.Awareness',0,NULL,NULL,'N;'),('SurveyReports.Index',0,NULL,NULL,'N;'),('SurveyReports.Needs',0,NULL,NULL,'N;'),('SurveyReports.OpenQuestions',0,NULL,NULL,'N;'),('SurveyReports.Satisfaction',0,NULL,NULL,'N;'),('User.Activation.*',1,NULL,NULL,'N;'),('User.Activation.Activation',0,NULL,NULL,'N;'),('User.Admin.*',1,NULL,NULL,'N;'),('User.Admin.Admin',0,NULL,NULL,'N;'),('User.Admin.Create',0,NULL,NULL,'N;'),('User.Admin.Delete',0,NULL,NULL,'N;'),('User.Admin.Update',0,NULL,NULL,'N;'),('User.Admin.View',0,NULL,NULL,'N;'),('User.Default.*',1,NULL,NULL,'N;'),('User.Default.Index',0,NULL,NULL,'N;'),('User.Login.*',1,NULL,NULL,'N;'),('User.Login.Login',0,NULL,NULL,'N;'),('User.Logout.*',1,NULL,NULL,'N;'),('User.Logout.Logout',0,NULL,NULL,'N;'),('User.Profile.*',1,NULL,NULL,'N;'),('User.Profile.Changepassword',0,NULL,NULL,'N;'),('User.Profile.Edit',0,NULL,NULL,'N;'),('User.Profile.Profile',0,NULL,NULL,'N;'),('User.ProfileField.*',1,NULL,NULL,'N;'),('User.ProfileField.Admin',0,NULL,NULL,'N;'),('User.ProfileField.Create',0,NULL,NULL,'N;'),('User.ProfileField.Delete',0,NULL,NULL,'N;'),('User.ProfileField.Update',0,NULL,NULL,'N;'),('User.ProfileField.View',0,NULL,NULL,'N;'),('User.Recovery.*',1,NULL,NULL,'N;'),('User.Recovery.Recovery',0,NULL,NULL,'N;'),('User.Registration.*',1,NULL,NULL,'N;'),('User.Registration.Registration',0,NULL,NULL,'N;'),('User.User.*',1,NULL,NULL,'N;'),('User.User.Index',0,NULL,NULL,'N;'),('User.User.View',0,NULL,NULL,'N;'),('Users.*',1,NULL,NULL,'N;'),('Users.Admin',0,NULL,NULL,'N;'),('Users.Create',0,NULL,NULL,'N;'),('Users.Delete',0,NULL,NULL,'N;'),('Users.Index',0,NULL,NULL,'N;'),('Users.Update',0,NULL,NULL,'N;'),('Users.View',0,NULL,NULL,'N;');
/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthItemChild`
--

DROP TABLE IF EXISTS `AuthItemChild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `AuthItemChild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AuthItemChild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthItemChild`
--

LOCK TABLES `AuthItemChild` WRITE;
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;
INSERT INTO `AuthItemChild` VALUES ('Staff','Authenticated'),('Admin','AwarenessData.*'),('Pastor','AwarenessData.Admin'),('Staff','AwarenessData.Create'),('Staff','AwarenessData.Index'),('Pastor','AwarenessData.Update'),('Staff','AwarenessData.View'),('Admin','AwarenessItems.*'),('Pastor','AwarenessItems.Admin'),('Staff','AwarenessItems.Create'),('Staff','AwarenessItems.Index'),('Pastor','AwarenessItems.Update'),('Staff','AwarenessItems.View'),('Pastor','BannsRecords.Admin'),('Staff','BannsRecords.Create'),('Staff','BannsRecords.Index'),('Staff','BannsRecords.Search'),('Pastor','BannsRecords.Update'),('Staff','BannsRecords.View'),('Pastor','BannsRequest.Admin'),('Staff','BannsRequest.ByRecord'),('Staff','BannsRequest.Create'),('Staff','BannsRequest.Index'),('Pastor','BannsRequest.Update'),('Staff','BannsRequest.View'),('Staff','BannsRequest.ViewCert'),('Pastor','BannsResponse.Admin'),('Staff','BannsResponse.ByRecord'),('Staff','BannsResponse.Create'),('Staff','BannsResponse.Index'),('Pastor','BannsResponse.Update'),('Staff','BannsResponse.View'),('Staff','BannsResponse.ViewCert'),('Admin','BaptismCertificate.*'),('Pastor','BaptismCertificate.Admin'),('Staff','BaptismCertificate.ByRecord'),('Staff','BaptismCertificate.Create'),('Staff','BaptismCertificate.Index'),('Pastor','BaptismCertificate.Update'),('Staff','BaptismCertificate.View'),('Staff','BaptismCertificate.ViewCert'),('Admin','BaptismRecords.*'),('Pastor','BaptismRecords.Admin'),('Staff','BaptismRecords.Create'),('Staff','BaptismRecords.Index'),('Staff','BaptismRecords.Search'),('Pastor','BaptismRecords.Update'),('Staff','BaptismRecords.View'),('Admin','ConfirmationCertificate.*'),('Pastor','ConfirmationCertificate.Admin'),('Staff','ConfirmationCertificate.ByRecord'),('Staff','ConfirmationCertificate.Create'),('Staff','ConfirmationCertificate.Index'),('Pastor','ConfirmationCertificate.Update'),('Staff','ConfirmationCertificate.View'),('Staff','ConfirmationCertificate.ViewCert'),('Admin','ConfirmationRecords.*'),('Pastor','ConfirmationRecords.Admin'),('Staff','ConfirmationRecords.Create'),('Staff','ConfirmationRecords.Index'),('Staff','ConfirmationRecords.Search'),('Pastor','ConfirmationRecords.Update'),('Staff','ConfirmationRecords.View'),('Pastor','DeathCertificate.Admin'),('Staff','DeathCertificate.ByRecord'),('Staff','DeathCertificate.Create'),('Staff','DeathCertificate.Index'),('Pastor','DeathCertificate.Update'),('Staff','DeathCertificate.View'),('Staff','DeathCertificate.ViewCert'),('Pastor','DeathRecords.Admin'),('Staff','DeathRecords.Create'),('Staff','DeathRecords.Index'),('Staff','DeathRecords.Search'),('Pastor','DeathRecords.Update'),('Staff','DeathRecords.View'),('Admin','Family.*'),('Staff','Family.Admin'),('Staff','Family.Children'),('Staff','Family.Create'),('Staff','Family.Dependents'),('Staff','Family.Disable'),('Staff','Family.Enable'),('Staff','Family.FindMatch'),('Authenticated','Family.Index'),('Staff','Family.Locate'),('Staff','Family.Photo'),('Staff','Family.Search'),('Staff','Family.Subscriptions'),('Staff','Family.Survey'),('Staff','Family.Update'),('Authenticated','Family.View'),('Admin','FieldName.*'),('Pastor','FieldName.Admin'),('Staff','FieldName.Create'),('Staff','FieldName.Index'),('Pastor','FieldName.Update'),('Staff','FieldName.View'),('Admin','FieldValue.*'),('Pastor','FieldValue.Admin'),('Staff','FieldValue.Create'),('Staff','FieldValue.Index'),('Pastor','FieldValue.Update'),('Staff','FieldValue.View'),('Admin','FirstCommunionCertificate.*'),('Pastor','FirstCommunionCertificate.Admin'),('Staff','FirstCommunionCertificate.ByRecord'),('Staff','FirstCommunionCertificate.Create'),('Staff','FirstCommunionCertificate.Index'),('Pastor','FirstCommunionCertificate.Update'),('Staff','FirstCommunionCertificate.View'),('Staff','FirstCommunionCertificate.ViewCert'),('Admin','FirstCommunionRecords.*'),('Pastor','FirstCommunionRecords.Admin'),('Staff','FirstCommunionRecords.Create'),('Staff','FirstCommunionRecords.Index'),('Staff','FirstCommunionRecords.Search'),('Pastor','FirstCommunionRecords.Update'),('Staff','FirstCommunionRecords.View'),('Admin','MarriageCertificate.*'),('Pastor','MarriageCertificate.Admin'),('Staff','MarriageCertificate.ByRecord'),('Staff','MarriageCertificate.Create'),('Staff','MarriageCertificate.Index'),('Pastor','MarriageCertificate.Update'),('Staff','MarriageCertificate.View'),('Staff','MarriageCertificate.ViewCert'),('Admin','MarriageRecords.*'),('Pastor','MarriageRecords.Admin'),('Staff','MarriageRecords.Create'),('Staff','MarriageRecords.Index'),('Staff','MarriageRecords.Search'),('Pastor','MarriageRecords.Update'),('Staff','MarriageRecords.View'),('Pastor','MassBooking.Admin'),('Staff','MassBooking.Calendar'),('Staff','MassBooking.Create'),('Staff','MassBooking.Index'),('Staff','MassBooking.Masses'),('Staff','MassBooking.Search'),('Pastor','MassBooking.Update'),('Staff','MassBooking.View'),('Staff','MassBooking.ViewCert'),('Pastor','MassSchedule.Admin'),('Pastor','MassSchedule.Create'),('Pastor','MassSchedule.Index'),('Pastor','MassSchedule.Update'),('Pastor','MassSchedule.View'),('Pastor','MembershipCertificate.Admin'),('Staff','MembershipCertificate.Create'),('Staff','MembershipCertificate.Index'),('Pastor','MembershipCertificate.Update'),('Staff','MembershipCertificate.View'),('Staff','MembershipCertificate.ViewCert'),('Admin','NeedData.*'),('Pastor','NeedData.Admin'),('Staff','NeedData.Create'),('Staff','NeedData.Index'),('Pastor','NeedData.Update'),('Staff','NeedData.View'),('Admin','NeedItems.*'),('Pastor','NeedItems.Admin'),('Staff','NeedItems.Create'),('Staff','NeedItems.Index'),('Pastor','NeedItems.Update'),('Staff','NeedItems.View'),('Pastor','NoImpedimentLetter.Admin'),('Staff','NoImpedimentLetter.ByRecord'),('Staff','NoImpedimentLetter.Create'),('Staff','NoImpedimentLetter.Index'),('Pastor','NoImpedimentLetter.Update'),('Staff','NoImpedimentLetter.View'),('Staff','NoImpedimentLetter.ViewCert'),('Admin','OpenData.*'),('Pastor','OpenData.Admin'),('Staff','OpenData.Create'),('Staff','OpenData.Index'),('Pastor','OpenData.Update'),('Staff','OpenData.View'),('Admin','OpenQuestions.*'),('Pastor','OpenQuestions.Admin'),('Staff','OpenQuestions.Create'),('Staff','OpenQuestions.Index'),('Pastor','OpenQuestions.Update'),('Staff','OpenQuestions.View'),('Admin','Person.*'),('Pastor','Person.Admin'),('Staff','Person.Baptised'),('Staff','Person.Confirmed'),('Staff','Person.Create'),('Pastor','Person.Delete'),('Staff','Person.FindMatch'),('Staff','Person.Index'),('Staff','Person.Married'),('Staff','Person.Photo'),('Staff','Person.Search'),('Staff','Person.Update'),('Staff','Person.View'),('Admin','SatisfactionData.*'),('Pastor','SatisfactionData.Admin'),('Staff','SatisfactionData.Create'),('Staff','SatisfactionData.Index'),('Pastor','SatisfactionData.Update'),('Staff','SatisfactionData.View'),('Admin','SatisfactionItems.*'),('Pastor','SatisfactionItems.Admin'),('Staff','SatisfactionItems.Create'),('Staff','SatisfactionItems.Index'),('Pastor','SatisfactionItems.Update'),('Staff','SatisfactionItems.View'),('Admin','Site.*'),('Authenticated','Site.Contact'),('Authenticated','Site.Error'),('Authenticated','Site.Index'),('Guest','Site.Index'),('Guest','Site.Login'),('Authenticated','Site.Logout'),('Authenticated','Site.ParishProfile'),('Staff','Site.Search'),('Pastor','Staff'),('Pastor','Subscription.Admin'),('Staff','Subscription.Create'),('Staff','Subscription.Index'),('Authenticated','Subscription.TillDate'),('Staff','Subscription.View'),('Staff','Subscription.ViewRect'),('Pastor','SurveyReports.Awareness'),('Pastor','SurveyReports.Index'),('Pastor','SurveyReports.Needs'),('Pastor','SurveyReports.OpenQuestions'),('Pastor','SurveyReports.Satisfaction'),('Admin','User.Activation.*'),('Pastor','User.Activation.Activation'),('Admin','User.Admin.*'),('Pastor','User.Admin.Admin'),('Pastor','User.Admin.Create'),('Pastor','User.Admin.Delete'),('Pastor','User.Admin.Update'),('Pastor','User.Admin.View'),('Admin','User.Default.*'),('Admin','User.Login.*'),('Pastor','User.Login.Login'),('Admin','User.Logout.*'),('Pastor','User.Logout.Logout'),('Admin','User.Profile.*'),('Staff','User.Profile.Changepassword'),('Staff','User.Profile.Edit'),('Staff','User.Profile.Profile'),('Admin','User.ProfileField.*'),('Pastor','User.ProfileField.Admin'),('Pastor','User.ProfileField.Update'),('Staff','User.ProfileField.View'),('Admin','User.Recovery.*'),('Admin','User.Registration.*'),('Pastor','User.Registration.Registration'),('Admin','User.User.*'),('Pastor','User.User.Index'),('Pastor','User.User.View'),('Admin','Users.*'),('Pastor','Users.Admin'),('Pastor','Users.Create'),('Pastor','Users.Index'),('Pastor','Users.Update'),('Pastor','Users.View');
/*!40000 ALTER TABLE `AuthItemChild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rights`
--

DROP TABLE IF EXISTS `Rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`),
  CONSTRAINT `Rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rights`
--

LOCK TABLES `Rights` WRITE;
/*!40000 ALTER TABLE `Rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awareness_data`
--

DROP TABLE IF EXISTS `awareness_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awareness_data` (
  `family_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `awareness_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `awareness_id` (`awareness_id`),
  CONSTRAINT `awareness_data_ibfk_1` FOREIGN KEY (`awareness_id`) REFERENCES `awareness_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awareness_data`
--

LOCK TABLES `awareness_data` WRITE;
/*!40000 ALTER TABLE `awareness_data` DISABLE KEYS */;
INSERT INTO `awareness_data` VALUES (9,1,1,3),(9,2,2,2),(9,3,3,3),(9,4,4,3),(9,5,5,3),(9,6,6,3),(9,7,7,3),(9,8,8,2),(10,11,1,3),(10,12,2,2),(10,13,3,3),(10,14,4,2),(10,15,5,3),(10,16,6,2),(10,17,7,3),(10,18,8,2),(11,20,1,3),(11,21,2,2),(11,22,3,2),(11,23,4,3),(11,24,5,3),(11,25,6,2),(11,26,7,2),(11,27,8,3),(27,29,1,3),(27,30,2,2),(27,31,3,2),(27,32,4,3),(27,33,5,3),(27,34,6,2),(27,35,7,2),(27,36,8,3),(15,38,1,2),(15,39,3,2),(15,40,6,3),(15,41,7,3),(15,43,2,1),(15,44,4,1),(15,45,5,1),(15,46,8,1);
/*!40000 ALTER TABLE `awareness_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awareness_items`
--

DROP TABLE IF EXISTS `awareness_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awareness_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awareness_items`
--

LOCK TABLES `awareness_items` WRITE;
/*!40000 ALTER TABLE `awareness_items` DISABLE KEYS */;
INSERT INTO `awareness_items` VALUES (1,'Employment bureau'),(2,'Counselling center'),(3,'Youth groups'),(4,'Society of Vincent de Paul'),(5,'Parish website'),(6,'Ladies of charity'),(7,'Marriage bureau'),(8,'Legion of Mary');
/*!40000 ALTER TABLE `awareness_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banns`
--

DROP TABLE IF EXISTS `banns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groom_name` varchar(100) NOT NULL,
  `groom_parent` varchar(100) DEFAULT NULL,
  `groom_parish` varchar(50) DEFAULT NULL,
  `bride_name` varchar(100) NOT NULL,
  `bride_parent` varchar(100) DEFAULT NULL,
  `bride_parish` varchar(50) DEFAULT NULL,
  `banns_dt1` date DEFAULT NULL,
  `banns_dt2` date DEFAULT NULL,
  `banns_dt3` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banns`
--

LOCK TABLES `banns` WRITE;
/*!40000 ALTER TABLE `banns` DISABLE KEYS */;
INSERT INTO `banns` VALUES (1,'b n','Edward Mark','41','JOHNCY R','Michael Babu  Anthony','36','2013-09-03','2013-09-18','2013-09-30'),(2,'h h','Edward Mark','42','shalni','john ','hgc','2013-09-09','2013-09-19','2013-09-30'),(3,'Anthony thomas','Luke Simon','45','ALICE MARIAM','PETER KUMAR','56','2013-08-12','2013-09-22','2013-09-30'),(4,'david','edwin','st benno parish','Pruthi M','Daniel M','62','2013-09-01','2013-09-17','2013-09-30'),(5,'Jerald M','John  Roshan','51','Pruthi M','Daniel M','62','2013-08-04','2013-08-15','2013-08-29'),(6,'Jerald M','John  Roshan','51','JOHNCY R','Michael Babu  Anthony','36','2013-09-15','2013-09-22','2013-09-29'),(7,'George r','Luke Simon',NULL,'Sharon','Jude and Samira','SFX, Bangalore','2013-10-06','2013-10-13','2013-10-20');
/*!40000 ALTER TABLE `banns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banns_requests`
--

DROP TABLE IF EXISTS `banns_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banns_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banns_id` int(11) DEFAULT NULL,
  `req_dt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banns_id` (`banns_id`),
  CONSTRAINT `banns_requests_ibfk_1` FOREIGN KEY (`banns_id`) REFERENCES `banns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banns_requests`
--

LOCK TABLES `banns_requests` WRITE;
/*!40000 ALTER TABLE `banns_requests` DISABLE KEYS */;
INSERT INTO `banns_requests` VALUES (1,2,'2013-09-14'),(2,2,'2013-09-14'),(3,2,'2013-09-28'),(4,4,'2013-09-30'),(5,2,'2013-10-14');
/*!40000 ALTER TABLE `banns_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banns_responses`
--

DROP TABLE IF EXISTS `banns_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banns_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banns_id` int(11) DEFAULT NULL,
  `res_dt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banns_id` (`banns_id`),
  CONSTRAINT `banns_responses_ibfk_1` FOREIGN KEY (`banns_id`) REFERENCES `banns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banns_responses`
--

LOCK TABLES `banns_responses` WRITE;
/*!40000 ALTER TABLE `banns_responses` DISABLE KEYS */;
INSERT INTO `banns_responses` VALUES (1,2,'2013-09-14');
/*!40000 ALTER TABLE `banns_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baptism_certs`
--

DROP TABLE IF EXISTS `baptism_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baptism_certs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cert_dt` date DEFAULT NULL,
  `baptism_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `baptism_id` (`baptism_id`),
  CONSTRAINT `baptism_certs_ibfk_1` FOREIGN KEY (`baptism_id`) REFERENCES `baptisms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baptism_certs`
--

LOCK TABLES `baptism_certs` WRITE;
/*!40000 ALTER TABLE `baptism_certs` DISABLE KEYS */;
INSERT INTO `baptism_certs` VALUES (1,'2013-05-06',1),(2,'2013-09-19',2),(3,'2013-09-28',5),(4,'2013-09-30',2);
/*!40000 ALTER TABLE `baptism_certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baptisms`
--

DROP TABLE IF EXISTS `baptisms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baptisms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dob` date DEFAULT NULL,
  `baptism_dt` date DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `fathers_name` varchar(75) DEFAULT NULL,
  `mothers_name` varchar(75) DEFAULT NULL,
  `residence` varchar(25) DEFAULT NULL,
  `godfathers_name` varchar(75) DEFAULT NULL,
  `godmothers_name` varchar(75) DEFAULT NULL,
  `minister` varchar(75) DEFAULT NULL,
  `ref_no` varchar(10) DEFAULT NULL,
  `mother_tongue` varchar(25) DEFAULT NULL,
  `baptism_place` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_no` (`ref_no`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `baptisms_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baptisms`
--

LOCK TABLES `baptisms` WRITE;
/*!40000 ALTER TABLE `baptisms` DISABLE KEYS */;
INSERT INTO `baptisms` VALUES (1,'1973-04-06','1974-04-23','Patrick',1,'Joseph','Angala Mary','Bangalore','Josephine','Velanganni','Jason','1974/1',NULL,NULL,NULL),(2,'1997-04-10','1997-10-15','Rohit Alwin',1,'Marie Ras','Annama','','Amith','','','1997/1',NULL,NULL,NULL),(3,'2003-09-11','2003-10-01','fernandez',1,'lawrance','rose','davis road','joshuva','sheeba','fr.imanual','2003/1','kannda','goa',NULL),(4,'1994-09-07','1994-09-30','tony',1,'joseph','beena','hughes road','selvaraj','mary','fr.raj','1994/1','tamil','holy ghost church',NULL),(5,'2003-09-02','2003-11-12','anthony',1,'joseph','clara','davis road','selvan','lakshmi','fr.george','2003/2','kannda','parish',NULL);
/*!40000 ALTER TABLE `baptisms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmation_certs`
--

DROP TABLE IF EXISTS `confirmation_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmation_certs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cert_dt` date DEFAULT NULL,
  `confirmation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `confirmation_id` (`confirmation_id`),
  CONSTRAINT `confirmation_certs_ibfk_1` FOREIGN KEY (`confirmation_id`) REFERENCES `confirmations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmation_certs`
--

LOCK TABLES `confirmation_certs` WRITE;
/*!40000 ALTER TABLE `confirmation_certs` DISABLE KEYS */;
INSERT INTO `confirmation_certs` VALUES (1,'2013-09-14',1),(2,'2013-09-14',1),(3,'2013-09-21',1),(4,'2013-09-21',1),(5,'2013-09-28',1);
/*!40000 ALTER TABLE `confirmation_certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmations`
--

DROP TABLE IF EXISTS `confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `confirmation_dt` date DEFAULT NULL,
  `church` varchar(50) DEFAULT NULL,
  `ref_no` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `baptism_dt` date DEFAULT NULL,
  `baptism_place` varchar(50) DEFAULT NULL,
  `parents_name` varchar(75) DEFAULT NULL,
  `residence` varchar(50) DEFAULT NULL,
  `godparent_name` varchar(75) DEFAULT NULL,
  `minister` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `confirmations_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmations`
--

LOCK TABLES `confirmations` WRITE;
/*!40000 ALTER TABLE `confirmations` DISABLE KEYS */;
INSERT INTO `confirmations` VALUES (1,'Vijay Kumar ','2002-05-15','HGC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Raj','2013-09-29','Holy Redeemer',NULL,'1993-09-01','1993-09-05','HGC, Bangalore','Mathew and Jane','Residency Road','John and Rita','Bis. John',NULL),(5,'John','2013-09-15','HRC',NULL,'1994-09-04','1994-08-04','HGC, Bangalore','Arthi and Rajiv','K.R. Puram','Thomas and Martha','Bis. Daniel',NULL),(6,'BENDICTS ELIAS','2008-09-09','St. Marys','2008/1','1984-08-16','1984-09-05','BANGALORE','BENDICTS ELIAS','Bangalore','RAJESH AND KAVITHA','Fr. Clement',37);
/*!40000 ALTER TABLE `confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_certs`
--

DROP TABLE IF EXISTS `death_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `death_certs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `death_id` int(11) NOT NULL,
  `cert_dt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `death_cert_death` (`death_id`),
  CONSTRAINT `death_cert_death` FOREIGN KEY (`death_id`) REFERENCES `deaths` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_certs`
--

LOCK TABLES `death_certs` WRITE;
/*!40000 ALTER TABLE `death_certs` DISABLE KEYS */;
INSERT INTO `death_certs` VALUES (1,1,'2013-09-28');
/*!40000 ALTER TABLE `death_certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deaths`
--

DROP TABLE IF EXISTS `deaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deaths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `death_dt` date NOT NULL,
  `cause` varchar(100) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `age` float DEFAULT NULL,
  `profession` varchar(25) DEFAULT NULL,
  `buried_dt` date DEFAULT NULL,
  `minister` varchar(75) DEFAULT NULL,
  `burial_place` varchar(25) DEFAULT NULL,
  `ref_no` varchar(10) DEFAULT NULL,
  `residence` varchar(75) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `parents_relatives` varchar(75) DEFAULT NULL,
  `sacrament` varchar(25) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_no` (`ref_no`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `deaths_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deaths`
--

LOCK TABLES `deaths` WRITE;
/*!40000 ALTER TABLE `deaths` DISABLE KEYS */;
INSERT INTO `deaths` VALUES (1,'2013-09-22','Natural','Roopa','l',46,NULL,'2013-09-23','Fr. James','Kalpalli','2013/1','R. K. Garden','Malyalam','','Extreme unction',32);
/*!40000 ALTER TABLE `deaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `families`
--

DROP TABLE IF EXISTS `families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `families` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(11) DEFAULT NULL,
  `addr_nm` varchar(50) DEFAULT NULL,
  `addr_stt` varchar(50) DEFAULT NULL,
  `addr_area` varchar(25) DEFAULT NULL,
  `addr_pin` varchar(7) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `bpl_card` tinyint(4) DEFAULT NULL,
  `marriage_church` varchar(50) DEFAULT NULL,
  `marriage_date` date DEFAULT NULL,
  `marriage_type` varchar(25) DEFAULT NULL,
  `marriage_status` varchar(25) DEFAULT NULL,
  `monthly_income` varchar(15) DEFAULT NULL,
  `husband_id` int(11) DEFAULT NULL,
  `wife_id` int(11) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `gmap_url` varchar(1024) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fid` (`fid`),
  KEY `husband_id` (`husband_id`),
  KEY `wife_id` (`wife_id`),
  CONSTRAINT `families_ibfk_1` FOREIGN KEY (`husband_id`) REFERENCES `people` (`id`),
  CONSTRAINT `families_ibfk_2` FOREIGN KEY (`wife_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `families`
--

LOCK TABLES `families` WRITE;
/*!40000 ALTER TABLE `families` DISABLE KEYS */;
INSERT INTO `families` VALUES (9,'A2','312','3rd cross','Raymond Street','560068','4524754424','7465638242','jkjkjkj@kjkjkj.com',1,'2010-02-22',0,'St. Johns Church, Bangalore','2007-06-23','2','2','3',49,50,'holy-family_01.jpg','https://maps.google.co.in/maps?q=Holy+Ghost+Church,+Pillanna+Garden,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.005457,77.615275&amp;spn=0.010955,0.021136&amp;sll=12.963869,77.592573&amp;sspn=0.021914,0.042272&amp;oq=holy&amp;t=h&amp;z=16&amp;output=embed',0),(10,'B1','#89, infant cottatage','Cookson Road','Richards Town','560043','7654356785','638635795','Example@example.com',2,'2011-12-13',0,'St. Sebatian','1983-04-22','1','5','1',53,32,'fam1.jpg','https://maps.google.co.in/maps?q=Holy+Ghost+Church,+Pillanna+Garden,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.005457,77.615275&amp;spn=0.010955,0.021136&amp;sll=12.963869,77.592573&amp;sspn=0.021914,0.042272&amp;oq=holy&amp;t=h&amp;z=16&amp;output=embed',0),(11,'A1','','#526/1, 3rd Cross, Byreshwara Layout','Hennur Bande','560043','','','',1,'2012-02-18',0,'HGC','1993-04-14','1','2','1',34,35,'images (1)_01.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(13,'A4','#9876','Raymond Street','Richards Town','560043','5465365465','4325257678','Example@example.com',1,'2011-04-06',0,'St. Mark\'s','2011-08-03','3','2','3',37,38,'images.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(14,'B2','8786','White street','Thomas Towna','788799','4254752454','2437846543','Example@example.com',2,'2012-05-11',0,'St. John\'s ','2013-04-16','1','2','4',39,70,'images (2).jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(15,'C2','550','BALAJI ROAD','D\'costa Layout','560043','6574367897','4456387375','',3,'2010-03-28',0,'HOLY GHOST','2010-04-07','3','4','4',71,44,'images (3).jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(16,'C1','4235','R. K. Road','Thomas TownNUR','560043','2654546785','2345867975','Example@example.com',3,'2011-01-24',0,'Christ The King','1994-05-12','1','2','1',54,55,'images (5).jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(17,'B3','2423','R. K. Road','Thomas TownUR','560043','6578554324','','ramrmcbangalore.com',2,'2012-06-21',0,'HGC','1993-05-19','1','2','',72,75,'family-2012-07.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(19,'D1','43','1 Jaya Villa, II Cross, Hennur Village Mn Rd','Kalyan Nagar','560043','22271194','9740039801','eample@rmcbangalore.com',4,'2013-09-08',0,'Holy Ghost Church','2013-05-24','1','2','2',57,NULL,'images (6).jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;ll=13.004641,77.61961&amp;spn=0.021911,0.042272&amp;sll=12.953997,77.63094&amp;sspn=0.701287,1.352692&amp;oq=davis+&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=15&amp;output=embed',0),(20,'C5','19/2','Hennur Main Road Cross','Kalyan Nagar','560043','22271194','9740039801','ram@rmcbangalore.com',3,'2012-07-24',0,'HGC','1985-07-17','1','2','',59,60,'family_pic_6.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.004641,77.61961&amp;sspn=0.021911,0.042272&amp;oq=Davis+Road,+Sagayapu&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=16&amp;output=embed',0),(21,'A5','#25','#1 Kaveri Nagar, Opp.Northwoods','Kalyan Nagar','560043','22271194','9740039801','ram@rmcbangalore.com',1,'2010-10-22',0,'HGC','1996-05-16','1','4','2',61,NULL,'images (2)_01.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.004641,77.61961&amp;sspn=0.021911,0.042272&amp;oq=Davis+Road,+Sagayapu&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=16&amp;output=embed',0),(25,'D2','43','Hennur Main Road Cross','HENNUR','560043','22271194','9740039801','ramrmcbangalore.com',4,'2010-08-11',0,'HGC','2009-05-14','1','2','',63,NULL,'41.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.004641,77.61961&amp;sspn=0.021911,0.042272&amp;oq=Davis+Road,+Sagayapu&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=16&amp;output=embed',0),(26,'C4','28','Mariya Kripa Christ layout','Kavarinagar','560043','22271194','9740039801','ram@rmcbangalore.com',3,'2008-07-27',0,'HGC','2013-05-09','1','3','4',64,65,'images (1)_02.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.004641,77.61961&amp;sspn=0.021911,0.042272&amp;oq=Davis+Road,+Sagayapu&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=16&amp;output=embed',0),(27,'B4','24','2nd Cross','Byreshwara Layout','560084','','','',2,'2013-10-17',0,'St. Patricks','1993-04-24','1','2','2',67,68,'images_01.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.004641,77.61961&amp;sspn=0.021911,0.042272&amp;oq=Davis+Road,+Sagayapu&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=16&amp;output=embed',0),(28,'A3','Narareth Nivas','Roy Road','R.C. Layout','560043','2354678905','4567786564','hgfsfs@example.com',1,'2012-09-09',0,'Holy Ghost Church','2012-09-05','1','2','3',73,74,'images (3)_01.jpg','https://maps.google.co.in/maps?q=Davis+Road,+Sagayapura,+Richards+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.004641,77.61961&amp;sspn=0.021911,0.042272&amp;oq=Davis+Road,+Sagayapu&amp;t=h&amp;hnear=Davis+Rd,+Sagayapura,+Richards+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;z=16&amp;output=embed',0),(29,'D7','20/1, Augraha','Raymond Street','Thomas Town','560084','1234435365','3435432563','example@example.com',4,'2013-09-29',0,'St. Patricks, Bangalore','2013-09-22','3','2','4',81,82,'rose.jpg','https://maps.google.co.in/maps?q=Thomas+Town,+Cooke+Town,+Bangalore,+Karnataka&amp;hl=en&amp;sll=13.006322,77.614948&amp;sspn=0.014698,0.01929&amp;oq=Thomas+Town,+Bangalore,+Karnataka&amp;hnear=Thomas+Town,+Cooke+Town,+Bangalore,+Bangalore+Urban,+Karnataka&amp;t=m&amp;z=17&amp;output=embed',0);
/*!40000 ALTER TABLE `families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_names`
--

DROP TABLE IF EXISTS `field_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_names`
--

LOCK TABLES `field_names` WRITE;
/*!40000 ALTER TABLE `field_names` DISABLE KEYS */;
INSERT INTO `field_names` VALUES (14,'awareness_level'),(11,'domicile_status'),(3,'education'),(5,'languages'),(2,'marriage_status'),(1,'marriage_type'),(4,'monthly_household_income'),(8,'need_level'),(6,'rite'),(7,'satisfaction_level'),(13,'sex'),(15,'weekdays'),(10,'zones');
/*!40000 ALTER TABLE `field_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_values`
--

DROP TABLE IF EXISTS `field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_values` (
  `field_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`,`code`),
  UNIQUE KEY `field_id_2` (`field_id`,`name`),
  UNIQUE KEY `field_id_3` (`field_id`,`pos`),
  CONSTRAINT `field_values_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field_names` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_values`
--

LOCK TABLES `field_values` WRITE;
/*!40000 ALTER TABLE `field_values` DISABLE KEYS */;
INSERT INTO `field_values` VALUES (1,1,'Regular',1,1),(1,2,'Irregular',2,2),(2,3,'Married',2,2),(2,4,'Separated',3,3),(2,5,'Divorced',4,4),(2,6,'Widowed',5,5),(1,7,'Disparity of cult',3,3),(3,8,'< High School',1,1),(3,9,'High School',2,2),(3,10,'Graduate',3,3),(3,11,'Post Graduate',4,4),(4,12,'< 10000',1,1),(4,13,'10k - 50k',2,2),(4,14,'50k - 1 lakh',3,3),(4,15,'above 1 lakh',4,4),(5,16,'English',1,1),(5,17,'Kannada',2,2),(5,18,'Tamil',3,3),(6,19,'Syro Malabar',10,10),(6,20,'Syro Malankara',5,5),(7,21,'Very Dissatisfied',1,1),(7,23,'Dissatisfied',2,2),(7,24,'Neutral',3,3),(7,25,'Satisfied',4,4),(7,26,'Very Satisfied',5,5),(8,27,'Not Important',1,1),(8,28,'Important',2,2),(8,29,'Very Important',3,3),(8,30,'Dissatisfied',4,4),(8,31,'Will join/attend',5,5),(10,32,'Zone A',1,1),(10,33,'Zone B',2,2),(10,34,'Zone C',3,3),(10,35,'Zone D',4,4),(11,36,'Home',1,1),(11,37,'Away',2,2),(13,38,'Male',1,1),(13,39,'Female',2,2),(14,40,'Accessed',3,3),(14,41,'Aware',2,2),(6,42,'Latin',1,3),(15,46,'Sunday',0,0),(15,47,'Monday',1,1),(15,48,'Tuesday',2,2),(15,49,'Wednesday',3,3),(15,50,'Thursday',4,4),(15,51,'Friday',5,5),(15,52,'Saturday',6,6),(14,53,'Not Aware',1,1),(2,55,'Single',1,1);
/*!40000 ALTER TABLE `field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_communion_certs`
--

DROP TABLE IF EXISTS `first_communion_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_communion_certs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cert_dt` date DEFAULT NULL,
  `first_comm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `first_comm_id` (`first_comm_id`),
  CONSTRAINT `first_communion_certs_ibfk_1` FOREIGN KEY (`first_comm_id`) REFERENCES `first_communions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_communion_certs`
--

LOCK TABLES `first_communion_certs` WRITE;
/*!40000 ALTER TABLE `first_communion_certs` DISABLE KEYS */;
INSERT INTO `first_communion_certs` VALUES (1,'2013-05-06',1),(2,'2013-09-14',1),(3,'2013-09-28',1);
/*!40000 ALTER TABLE `first_communion_certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_communions`
--

DROP TABLE IF EXISTS `first_communions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_communions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `church` varchar(50) DEFAULT NULL,
  `communion_dt` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `first_communions_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_communions`
--

LOCK TABLES `first_communions` WRITE;
/*!40000 ALTER TABLE `first_communions` DISABLE KEYS */;
INSERT INTO `first_communions` VALUES (1,'Joy Farnandes',NULL,'2005-05-06',NULL),(2,'David',NULL,'1996-05-15',NULL);
/*!40000 ALTER TABLE `first_communions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marriage_certs`
--

DROP TABLE IF EXISTS `marriage_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marriage_certs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cert_dt` date DEFAULT NULL,
  `marriage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marriage_id` (`marriage_id`),
  CONSTRAINT `marriage_certs_ibfk_1` FOREIGN KEY (`marriage_id`) REFERENCES `marriages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marriage_certs`
--

LOCK TABLES `marriage_certs` WRITE;
/*!40000 ALTER TABLE `marriage_certs` DISABLE KEYS */;
INSERT INTO `marriage_certs` VALUES (3,'2013-04-22',2),(4,'2013-04-30',2),(5,'2013-05-03',2),(6,'2013-09-28',3),(7,'2013-09-28',2),(8,'2013-09-28',5),(9,'2013-09-28',6),(10,'2013-10-14',2);
/*!40000 ALTER TABLE `marriage_certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marriages`
--

DROP TABLE IF EXISTS `marriages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marriages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marriage_dt` date DEFAULT NULL,
  `groom_name` varchar(100) DEFAULT NULL,
  `groom_dob` date DEFAULT NULL,
  `groom_status` varchar(10) DEFAULT NULL,
  `groom_rank_prof` varchar(25) DEFAULT NULL,
  `groom_fathers_name` varchar(100) DEFAULT NULL,
  `groom_mothers_name` varchar(100) DEFAULT NULL,
  `groom_residence` varchar(25) DEFAULT NULL,
  `bride_name` varchar(100) DEFAULT NULL,
  `bride_dob` date DEFAULT NULL,
  `bride_status` varchar(10) DEFAULT NULL,
  `bride_rank_prof` varchar(25) DEFAULT NULL,
  `bride_fathers_name` varchar(100) DEFAULT NULL,
  `bride_mothers_name` varchar(100) DEFAULT NULL,
  `bride_residence` varchar(25) DEFAULT NULL,
  `banns_licence` varchar(10) DEFAULT NULL,
  `minister` varchar(100) DEFAULT NULL,
  `witness1` varchar(75) DEFAULT NULL,
  `witness2` varchar(75) DEFAULT NULL,
  `remarks` varchar(75) DEFAULT NULL,
  `ref_no` varchar(10) DEFAULT NULL,
  `groom_baptism_dt` date DEFAULT NULL,
  `bride_baptism_dt` date DEFAULT NULL,
  `groom_id` int(11) DEFAULT NULL,
  `bride_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_no` (`ref_no`),
  KEY `marriages_ibfk_1` (`bride_id`),
  KEY `marriages_ibfk_2` (`groom_id`),
  CONSTRAINT `marriages_ibfk_1` FOREIGN KEY (`bride_id`) REFERENCES `people` (`id`),
  CONSTRAINT `marriages_ibfk_2` FOREIGN KEY (`groom_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marriages`
--

LOCK TABLES `marriages` WRITE;
/*!40000 ALTER TABLE `marriages` DISABLE KEYS */;
INSERT INTO `marriages` VALUES (2,'2013-02-14','adela','1994-06-10','Married','doctor','floyed','jcferry','neelasandra','shrerya','1997-02-10','Married','beautician','joseph','mary','autintown','banns','lawrence','muthu','kumar','','2013/1','0000-00-00','0000-00-00',NULL,NULL),(3,'2013-04-09','Praveen Joseph','1994-04-19','Married','Operator','Samson','Savitha maria','Tumkur','Helen Mercy','1998-06-17','Married','Beautician','Martin','Jeromia','Bijapur','banns','Moses','Poondi maria','Salom','','2013/2',NULL,NULL,NULL,NULL),(4,'2011-09-02','Daniel Stanley','1981-05-20','Married','Marketing Field','Moses Stanley','Sarah Stanley','Chikkabalbur','Rincy Stanley','1993-05-24','Married','Tailor','Josephs','Mercy','vijinapur','licence','S Amrithraj','kumar','venky','','2011/1',NULL,NULL,NULL,NULL),(5,'2003-09-12','Alex','1994-05-11','Married','Technician','James','Villankanni','Tumkur','Rajamma','2003-05-16','Married','Beautician','Farnandes','Mercy','Bijapur','banns','Moses','Poondi maria','venky','','2003/1',NULL,NULL,NULL,NULL),(6,'2013-09-15','Daniel Gambill','1984-09-09','Married','Doctor','Alan Gambill','Emma Gambill','Hennur Main Road','Diana H','1988-09-04','Widowed','Nurse ','Harry A','Roopa l','Richards Park','licence','Fr. Xavier','James','Jones','Grooms previous marriage was annulled ','2013/3','0000-00-00','1990-09-02',69,33),(7,'2013-09-02','Daniel Gambill','1995-08-14','Married','Carpenter','Alan Gambill','Emma Gambill','Bangalore','Diana H','1987-06-03','Married','Nurse ','Harry A','Roopa l','Bangalore','banns','Fr. Mathew','James','Sandra','Marriage','2013/4','1995-08-26','2003-05-17',69,33);
/*!40000 ALTER TABLE `marriages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mass_bookings`
--

DROP TABLE IF EXISTS `mass_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mass_bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mass_id` int(11) DEFAULT NULL,
  `booked_by` varchar(99) DEFAULT NULL,
  `intention` varchar(99) DEFAULT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `mass_dt` date DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mass_bookings_mass` (`mass_id`),
  KEY `mass_bookings_trans` (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mass_bookings`
--

LOCK TABLES `mass_bookings` WRITE;
/*!40000 ALTER TABLE `mass_bookings` DISABLE KEYS */;
INSERT INTO `mass_bookings` VALUES (1,6,'Sally Jacobson','Sven Johansson',1,'2013-08-31','R.I.P'),(3,1,'Ravi','Mathew',5,'2013-09-15','R.I.P'),(4,2,'Rajiv','Prayers Answered',6,'2013-09-15','Thanksgiving'),(5,4,'Rashmi','Wedding ',7,'2013-09-16','Anniversary'),(6,1,'Prashanth','Special Intentions',8,'2013-09-15','Thanksgiving'),(7,1,'Soumya','Birthday',9,'2013-09-15','Thanksgiving'),(8,8,'Prashanth','',10,'2013-09-05','Thanksgiving'),(9,10,'rani','',11,'2013-09-22','Thanksgiving'),(10,2,'Raj','for Favors recieved',12,'2013-09-29','Thanksgiving'),(11,2,'Raj','Mr. Dass',13,'2013-09-29','R.I.P'),(12,2,'Ravi','Mrs. Martha',14,'2013-09-29','R.I.P'),(13,2,'John','25th wedding',15,'2013-09-29','Anniversary'),(14,1,'Rani','Favors Received',17,'2013-10-13','Thanksgiving');
/*!40000 ALTER TABLE `mass_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masses`
--

DROP TABLE IF EXISTS `masses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(10) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masses`
--

LOCK TABLES `masses` WRITE;
/*!40000 ALTER TABLE `masses` DISABLE KEYS */;
INSERT INTO `masses` VALUES (1,'08:00',2,0),(2,'09:30',1,0),(3,'18:30',1,0),(4,'18:00',1,1),(5,'18:00',1,3),(6,'18:00',1,6),(7,'18:00',2,2),(8,'18:00',2,4),(9,'18:00',2,5),(10,'17:30',2,0);
/*!40000 ALTER TABLE `masses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_certs`
--

DROP TABLE IF EXISTS `membership_certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_certs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `cert_dt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `membership_certs_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_certs`
--

LOCK TABLES `membership_certs` WRITE;
/*!40000 ALTER TABLE `membership_certs` DISABLE KEYS */;
INSERT INTO `membership_certs` VALUES (1,32,'2013-10-12'),(2,35,'2013-10-12');
/*!40000 ALTER TABLE `membership_certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `need_data`
--

DROP TABLE IF EXISTS `need_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `need_data` (
  `family_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `need_id` int(11) DEFAULT NULL,
  `need_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `family_id` (`family_id`),
  KEY `need_id` (`need_id`),
  CONSTRAINT `need_data_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`),
  CONSTRAINT `need_data_ibfk_2` FOREIGN KEY (`need_id`) REFERENCES `need_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `need_data`
--

LOCK TABLES `need_data` WRITE;
/*!40000 ALTER TABLE `need_data` DISABLE KEYS */;
INSERT INTO `need_data` VALUES (9,1,1,3),(9,2,2,2),(9,3,3,1),(9,4,4,2),(9,5,5,2),(9,6,6,5),(9,7,7,3),(9,8,8,3),(9,9,9,3),(9,10,10,3),(9,11,11,3),(10,12,1,1),(10,13,2,2),(10,14,3,3),(10,15,4,4),(10,16,5,5),(10,17,6,4),(10,19,8,2),(10,20,9,1),(10,21,10,2),(10,22,11,3),(11,23,1,2),(11,24,2,2),(11,25,3,2),(11,26,4,2),(11,27,5,2),(11,28,6,2),(11,29,7,2),(11,30,8,2),(11,31,9,2),(11,32,10,2),(11,33,11,2),(14,45,1,4),(14,46,2,5),(14,47,3,4),(14,48,4,3),(14,49,5,4),(14,50,6,5),(14,51,7,5),(14,52,8,4),(14,53,9,3),(14,54,10,3),(14,55,11,4),(13,56,1,3),(13,57,2,3),(13,58,3,2),(13,59,4,3),(13,60,5,3),(13,61,6,2),(13,62,7,3),(13,63,8,3),(13,64,9,2),(13,65,10,3),(13,66,11,3),(15,67,1,4),(15,68,2,5),(15,69,3,4),(15,70,4,5),(15,71,5,4),(15,72,6,5),(15,73,7,4),(15,74,8,5),(15,75,9,4),(15,76,10,5),(15,77,11,4),(16,78,1,4),(16,79,2,3),(16,80,3,2),(16,81,4,3),(16,82,5,4),(16,83,6,3),(16,84,7,2),(16,85,8,3),(16,86,9,4),(16,87,10,3),(16,88,11,2),(17,89,1,5),(17,90,2,4),(17,91,3,3),(17,92,4,4),(17,93,5,5),(17,94,6,4),(17,95,7,3),(17,96,8,4),(17,97,9,5),(17,98,10,4),(17,99,11,3),(19,111,1,5),(19,112,2,5),(19,113,3,4),(19,114,4,4),(19,115,5,5),(19,116,6,5),(19,117,7,4),(19,118,8,4),(19,119,9,5),(19,120,10,5),(19,121,11,4),(20,122,1,3),(20,123,2,4),(20,124,3,5),(20,125,4,5),(20,126,5,5),(20,127,6,4),(20,128,7,3),(20,129,8,3),(20,130,9,3),(20,131,10,4),(20,132,11,5),(21,133,1,1),(21,134,2,1),(21,135,3,2),(21,136,4,2),(21,137,5,3),(21,138,6,3),(21,139,7,4),(21,140,8,4),(21,141,9,5),(21,142,10,5),(21,143,11,5),(25,144,1,5),(25,145,2,5),(25,146,3,5),(25,147,4,4),(25,148,5,4),(25,149,6,4),(25,150,7,5),(25,151,8,5),(25,152,9,5),(25,153,10,5),(25,154,11,5),(26,155,1,2),(26,156,2,3),(26,157,3,4),(26,158,4,3),(26,159,5,4),(26,160,6,5),(26,161,8,3),(26,162,9,4),(26,163,10,2),(26,164,11,1),(27,165,1,1),(27,166,2,1),(27,167,3,2),(27,168,4,2),(27,169,5,3),(27,170,6,3),(27,171,7,4),(27,172,8,4),(27,173,9,5),(27,174,10,5),(27,175,11,4);
/*!40000 ALTER TABLE `need_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `need_items`
--

DROP TABLE IF EXISTS `need_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `need_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `need_items`
--

LOCK TABLES `need_items` WRITE;
/*!40000 ALTER TABLE `need_items` DISABLE KEYS */;
INSERT INTO `need_items` VALUES (1,'Bible study'),(2,'Night vigil'),(3,'Legal aid'),(4,'Catholic enquiry center'),(5,'Intercession group (prayer warrior)'),(6,'Regular retreats'),(7,'Social media interaction'),(8,'Basic Christian Community'),(9,'Mission, etc'),(10,'Apologetics center'),(11,'Sacraments for inbound members (sick, elderly)');
/*!40000 ALTER TABLE `need_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_impediment_letters`
--

DROP TABLE IF EXISTS `no_impediment_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `no_impediment_letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banns_id` int(11) DEFAULT NULL,
  `letter_dt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banns_id` (`banns_id`),
  CONSTRAINT `no_impediment_letters_ibfk_1` FOREIGN KEY (`banns_id`) REFERENCES `banns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_impediment_letters`
--

LOCK TABLES `no_impediment_letters` WRITE;
/*!40000 ALTER TABLE `no_impediment_letters` DISABLE KEYS */;
INSERT INTO `no_impediment_letters` VALUES (1,2,'2013-10-14');
/*!40000 ALTER TABLE `no_impediment_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_data`
--

DROP TABLE IF EXISTS `open_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_data` (
  `family_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `family_id` (`family_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `open_data_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`),
  CONSTRAINT `open_data_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `open_questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_data`
--

LOCK TABLES `open_data` WRITE;
/*!40000 ALTER TABLE `open_data` DISABLE KEYS */;
INSERT INTO `open_data` VALUES (9,1,1,'No'),(9,2,2,''),(9,3,3,'Yes'),(9,4,4,''),(9,5,5,'Yes'),(9,6,6,'Yes'),(9,7,7,'No'),(9,8,8,'No'),(9,9,9,'No'),(9,10,10,''),(9,11,11,'5'),(9,12,12,'1'),(10,13,1,'Yes'),(10,14,2,''),(10,15,3,'Yes'),(10,16,4,''),(10,17,5,'Yes'),(10,18,6,'Yes'),(10,19,7,'Yes'),(10,20,8,'Yes'),(10,21,9,'Yes'),(10,22,10,'4'),(10,23,11,'4'),(10,24,12,'1'),(11,25,1,'Yes'),(11,26,2,''),(11,27,3,'Yes'),(11,28,4,''),(11,29,5,'Yes'),(11,30,6,'Yes'),(11,31,7,'Yes'),(11,32,8,'No'),(11,33,9,'No'),(11,34,10,'3'),(11,35,11,'2'),(11,36,12,'4'),(14,49,1,'No'),(14,50,2,''),(14,51,3,'No'),(14,52,4,''),(14,53,5,'Yes'),(14,54,6,'Yes'),(14,55,7,'Yes'),(14,56,8,'No'),(14,57,9,'No'),(14,58,10,'3'),(14,59,11,'2'),(14,60,12,'1'),(13,61,1,'Yes'),(13,62,2,'CSI'),(13,63,3,'Yes'),(13,64,4,'SSE'),(13,65,5,'Yes'),(13,66,6,'Yes'),(13,67,7,'No'),(13,68,8,'No'),(13,69,9,'Yes'),(13,70,10,'3'),(13,71,11,'3'),(13,72,12,'3'),(15,73,1,'Yes'),(15,74,2,'WRT'),(15,75,3,'Yes'),(15,76,4,'RWEY'),(15,77,5,'Yes'),(15,78,6,'Yes'),(15,79,7,'Yes'),(15,80,8,'Yes'),(15,81,9,'Yes'),(15,82,10,'4'),(15,83,11,'4'),(15,84,12,'4'),(16,85,1,'Yes'),(16,86,2,'SHSFG'),(16,87,3,'Yes'),(16,88,4,'FDHG'),(16,89,5,'No'),(16,90,6,'No'),(16,91,7,'No'),(16,92,8,'Yes'),(16,93,9,'Yes'),(16,94,10,'3'),(16,95,11,'4'),(16,96,12,'3'),(17,97,1,'Yes'),(17,98,2,'ADA'),(17,99,3,'Yes'),(17,100,4,'ADG'),(17,101,5,'Yes'),(17,102,6,'Yes'),(17,103,7,'Yes'),(17,104,8,'No'),(17,105,9,'No'),(17,106,10,'4'),(17,107,11,'4'),(17,108,12,'4'),(19,121,1,'Yes'),(19,122,2,'SFDG'),(19,123,3,'Yes'),(19,124,4,'ADF'),(19,125,5,'Yes'),(19,126,6,'Yes'),(19,127,7,'Yes'),(19,128,8,'Yes'),(19,129,9,'Yes'),(19,130,10,'3'),(19,131,11,'3'),(19,132,12,'3'),(20,133,1,'Yes'),(20,134,2,'JLKLADF'),(20,135,3,'Yes'),(20,136,4,'ASDF'),(20,137,5,'Yes'),(20,138,6,'Yes'),(20,139,7,'Yes'),(20,140,8,'Yes'),(20,141,9,'Yes'),(20,142,10,'3'),(20,143,11,'3'),(20,144,12,'3'),(21,145,1,'No'),(21,146,2,''),(21,147,3,'No'),(21,148,4,''),(21,149,5,'No'),(21,150,6,'Yes'),(21,151,7,'Yes'),(21,152,8,'No'),(21,153,9,'Yes'),(21,154,10,'3'),(21,155,11,'3'),(21,156,12,'3'),(25,157,1,'No'),(25,158,2,''),(25,159,3,'No'),(25,160,4,''),(25,161,5,'Yes'),(25,162,6,'Yes'),(25,163,7,'Yes'),(25,164,8,'Yes'),(25,165,9,'Yes'),(25,166,10,'4'),(25,167,11,'4'),(25,168,12,'4'),(26,169,1,'No'),(26,170,2,''),(26,171,3,'No'),(26,172,4,''),(26,173,5,'Yes'),(26,174,6,'Yes'),(26,175,7,'No'),(26,176,8,'No'),(26,177,9,'Yes'),(26,178,10,'5'),(26,179,11,'4'),(26,180,12,'4');
/*!40000 ALTER TABLE `open_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_questions`
--

DROP TABLE IF EXISTS `open_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `type` varchar(10) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_questions`
--

LOCK TABLES `open_questions` WRITE;
/*!40000 ALTER TABLE `open_questions` DISABLE KEYS */;
INSERT INTO `open_questions` VALUES (1,'Are you attending a Bible study?','yesno',1),(2,'If yes, specify (catholic / other denomination)','string',2),(3,'Do you attend periodic retreats / prayer group meetings?','yesno',3),(4,'If yes, specify (catholic / other denomination)','string',4),(5,'Do your children attend Sunday school (catechism)?','yesno',5),(6,'Do you attend Novena services regularly?','yesno',6),(7,'Have you availed medical aid from the parish?','yesno',7),(8,'Have you availed education support from the parish?','yesno',8),(9,'Do you attend worship at any other non catholic church?','yesno',9),(10,'If yes, how many times a month?','integer',10),(11,'How often do you attend Mass per month?','integer',11),(12,'What is the ideal frequency for receiving the Sacrament of Reconciliation?','string',12);
/*!40000 ALTER TABLE `open_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `domicile_status` varchar(4) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `education` varchar(15) DEFAULT NULL,
  `profession` varchar(25) DEFAULT NULL,
  `occupation` varchar(25) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `lang_pri` varchar(25) DEFAULT NULL,
  `lang_lit` varchar(25) DEFAULT NULL,
  `lang_edu` varchar(25) DEFAULT NULL,
  `rite` varchar(25) DEFAULT NULL,
  `baptism_dt` date DEFAULT NULL,
  `baptism_church` varchar(50) DEFAULT NULL,
  `baptism_place` varchar(15) DEFAULT NULL,
  `god_parents` varchar(50) DEFAULT NULL,
  `first_comm_dt` date DEFAULT NULL,
  `confirmation_dt` date DEFAULT NULL,
  `marriage_dt` date DEFAULT NULL,
  `cemetery_church` varchar(25) DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `special_skill` varchar(25) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `mid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_family_id` (`family_id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (32,'Roopa','l',2,'1','1967-04-17','1','Tailor','Ladies Tailor','','','2','2','2','1','1967-07-12','St. Anthony\'s ','Tumkur','Joseph and Mary','1980-08-13','1980-08-13','1983-04-22','',10,'wife','Tailoring ','fam1_01.jpg','B1/1'),(33,'Diana','H',2,'1','1987-06-03','3','Nurse ','Nurse','3563564634','Example@example.com','2','1','1','','2003-05-17','St. Mary\'s','Tumkur','Lawrance and Devi','2002-08-28','2002-08-28','2013-09-15','',10,'child','Painting','fam1_02.jpg','B1/2'),(34,'Michael Babu ','Anthony',1,'1','1972-07-28','1','','','','','3','3','1','','1983-06-06','HGC','HGC','ALEXANDER',NULL,NULL,'1993-04-14','',11,'husband','','images (1).jpg','A1/1'),(35,'MARY','JOSEPH',2,'1','0000-00-00','1','','','','','3','3','1','','2013-04-24','JOHNS','BANGALORE','ANDREW',NULL,NULL,'1993-04-14','',11,'wife','','images (1)_01.jpg','A1/2'),(36,'JOHNCY','R',2,'1','1994-06-15','2','','','','','3','3','1','','0000-00-00','HGC','HGC','MICHAEL',NULL,NULL,NULL,'',11,'child','','images (1)_02.jpg','A1/3'),(37,'BENDICTS','ELIAS',1,'1','1984-08-16','4','Doctor','General Practitioner ','4768654323','Example@example.com','2','1','1','1','1984-09-05','St. Mark\'s','BANGALORE','RAJESH AND KAVITHA','1999-08-11','1999-08-11','2011-08-03','',13,'husband','Doctor','images.jpg','A4/1'),(38,'AMSA RANI','V',2,'1','1986-08-20','4','Doctor','Dentist ','2454352435','Example@example.com','2','1','1','1','1987-08-05','St. Xavier\'s','BANGALORE','JOHN AND JACKLINE','2000-08-29','2000-08-29','2011-08-03','',13,'wife','Doctor','images_01.jpg','A4/2'),(39,'Edward','Mark',1,'1','1976-04-14','3','Teacher','College Teacher','2576345643','Example@example.com','3','3','1','1','1976-04-25','St. Rock','BANGALORE','kevin','1990-08-08','1990-08-08','2013-04-16','',14,'husband','Teaching','images (2).jpg','B2/1'),(40,'t','d',2,'1','0000-00-00','1','','','','','2','2','1','','0000-00-00','HGC','BANGALORE','nick',NULL,NULL,NULL,'',14,'dependent','','images (2)_02.jpg','B2/2'),(41,'b','n',1,'2','2013-04-06','1','','','','','3','2','2','','2013-04-11','HGC','BANGALORE','pinto',NULL,NULL,NULL,'',14,'child','','images (2)_03.jpg','B2/3'),(42,'h','h',1,'2','2013-04-09','1','','','','','2','2','3','','2013-04-13','HGC','BANGALORE','d',NULL,NULL,NULL,'',14,'child','','images (2)_04.jpg','B2/4'),(43,'a','a',2,'1','2013-04-02','1','','','','','2','2','3','','2013-04-02','HGC','BANGALORE','joseh',NULL,NULL,NULL,'',14,'child','','images (2)_05.jpg','B2/5'),(44,'Beena','Joseph',2,'1','1973-05-24','1','','','','','1','1','1','','1973-06-03','Holy Redeemer Parish','BANGALORE','mary',NULL,NULL,'2010-04-07','',15,'wife','','images (3)_01.jpg','C2/1'),(45,'Anthony','thomas',1,'1','0000-00-00','1','','','','','2','2','2','','0000-00-00','Holy Redeemer Parish','BANGALORE','john',NULL,NULL,NULL,'',15,'dependent','','images (3)_02.jpg','C2/2'),(46,'sharon','thres',2,'1','2003-04-23','1','','','','','3','2','1','','0000-00-00','HGC','BANGALORE','thomas',NULL,NULL,NULL,'',15,'child','','images (3)_03.jpg','C2/3'),(47,'George','r',1,'1','2005-05-09','1','','','','','1','1','1','','1934-10-05','Holy Ghost Church','BANGALORE','Dsouza',NULL,NULL,NULL,'',15,'child','','images (3)_04.jpg','C2/4'),(48,'Alphonse','k',1,'1','2013-04-10','1','','','','','2','2','1','','2013-09-18','HGC','BANGALORE','KEVIN',NULL,NULL,NULL,'',15,'child','','images (3)_05.jpg','C2/5'),(49,'John ','Roshan',1,'2','1972-11-01','4','Ship Captain ','','5644635465','Example@example.com','1','2','1','','1973-01-01','St. Rock\'s Church','BANGALORE','Paul','1985-08-06','1985-08-06','2000-08-08','',9,'husband','Nil','download.jpg','A2/1'),(50,'Jeniffer','John',2,'1','1975-06-04','3','Home Maker','','4567897546','Example@example.com','1','1','1','','1975-12-02','Holy Ghost Church','BANGALORE','Charles and Aarathi','1987-08-05','1975-12-02','2000-08-08','',9,'wife','Handicrafts','download_01.jpg','A2/2'),(51,'Jerald','M',1,'1','2004-06-24','1','Student','','6534226954','example@example.com','1','1','1','1','2004-12-10','St. Xaviers','BANGALORE','COELHO',NULL,NULL,NULL,'',9,'dependent','Foot ball','download_03.jpg','A2/3'),(52,'Arathi','J',2,'1','2005-07-20','1','Student','','','','1','1','1','1','2006-04-13','St. Xaviers','BANGALORE','Vincent and Reena',NULL,NULL,NULL,'',9,'child','','download_02.jpg','A2/4'),(53,'Harry','A',1,'2','1963-04-03','1','Carpenter ','','6534456254','Example@example.com','2','2','2','1','1963-12-04','Holy Ghost Church','BANGALORE','Jason and Sandra','1975-08-14','1975-08-14','1983-04-22','Kalpalli',10,'husband','','fam1.jpg','B1/3'),(54,'PETER','KUMAR',1,'1','1963-08-05','1','Painter','','6546789765','','3','3','3','1','1972-04-22','Holy Ghost Church','BANGALORE','RAJU AND PHILOMENA','1977-08-24','1977-08-24','1994-05-12','',16,'husband','','images (5).jpg','C1/1'),(55,'SHEEBA','M',2,'1','1973-02-20','1','Domestic Help','','','','3','3','3','1','1973-05-20','Holy Ghost Church','BANGALORE','SIMON and DEVI','1990-08-15','1990-08-15','1994-05-12','',16,'wife','','images (5)_01.jpg','C1/2'),(56,'ALICE','MARIAM',2,'1','2004-02-24','1','Student','','','','3','3','3','1','2004-05-12','HGC','BANGALORE','MARIA',NULL,NULL,NULL,'',16,'child','','images (5)_02.jpg','C1/3'),(57,'Mathew ','Philip',1,'2','1996-05-10','3','Teacher','Maths Teacher (High Schoo','992605297','aaaxxxxx@gmail.com','1','1','1','','2006-05-05','HGC','BANGALORE','maria poula',NULL,NULL,'2013-05-24','',19,'husband','Tuitions ','images (6).jpg','D1/1'),(58,'Wakter Ferrao','n',2,'1','1996-05-09','1','','','9448156852','','1','1','1','','1996-05-10','HGC','BANGALORE','pinto','1986-05-15',NULL,NULL,'',19,'child','','images (6)_01.jpg','D1/2'),(59,'Vivien Simon','M',1,'1','1996-05-10','1','carpentary','labour','992605297','ram@gmail.com','1','1','1','','1996-05-04','HGC','BANGALORE','kevin',NULL,NULL,'1985-07-17','',20,'husband','making to your like','family_pic_6.jpg','C5/1'),(60,'Anto Josephine','B',2,'2','2000-05-18','3','Cooking','Kitchenexpert','9916055297','ramgmail.com','2','3','3','1','2013-05-21','Holy Redeemer Parish','BANGALORE','mary','2006-05-10','2013-05-15','2013-05-24','Cathedral',20,'wife','cooking for more people','family_pic_6.jpg','C5/2'),(61,'Daniel','M',1,'2','1993-06-11','2','carpentary','labour','992605297','ram@gmail.com','2','3','2','1','2013-05-01','Holy Redeemer Parish','BANGALORE','kevin','2013-05-22','2013-05-21','1996-05-16','palloti',21,'husband','making to your like','images (2)_06.jpg','A5/1'),(62,'Pruthi','M',2,'2','1998-07-16','1','studying','stuyding','9448156852','','1','1','1','','1998-08-05','HGC','BANGALORE','anthony raj',NULL,NULL,NULL,'',21,'child','studying','images (2)_07.jpg','A5/2'),(63,'DEENA','A',1,'1','0000-00-00','1','carpentary','labour','992605297','ram@gmail.com','2','2','2','1','2009-05-13','HGC','BANGALORE','Paul',NULL,NULL,'2009-05-14','',25,'husband','making to your like','41.jpg','D2/1'),(64,'Ramsy V','Pinto',1,'2','1995-05-17','3','carpentary','labour','992605297','ram@gmail.com','2','2','3','1','2013-05-14','HGC','BANGALORE','Jason',NULL,NULL,'2013-05-09','',26,'husband','making to your like','images (1)_03.jpg','C4/1'),(65,'Thresiamina','Paul',1,'2','2006-05-12','3','Cooking','Kitchenexpert','9916055297','ramgmail.com','1','1','1','','2013-05-02','HGC','BANGALORE','SIMON',NULL,NULL,'2013-05-09','',26,'wife','cooking for more people','images (1)_04.jpg','C4/2'),(66,'Cnisha Rosella',' Farnandes',2,'1','2007-05-17','1','','','991602559','ram@gmail.com','1','1','1','','2013-06-14','HGC','BANGALORE','Dsouza',NULL,NULL,NULL,'',26,'child','','images (1)_05.jpg','C4/3'),(67,'Alan','Gambill',1,'1','1967-09-14','3','Professor','Teaching','','','1','1','1','','1967-09-26','St. Pius X','Bangalore','John & Irene Michael','1979-11-14','1981-02-22','1993-04-24','',27,'husband','','images_02.jpg','B4/1'),(68,'Emma','Gambill',2,'1','1969-12-28','2','Shopkeeper','Shopkeeper','','','1','1','1','','1970-01-05','Ascension','Bangalore','Mick & Teresa Brown','1980-11-14','1985-02-15','1993-04-24','',27,'wife','','images_03.jpg','B4/2'),(69,'Daniel','Gambill',1,'1','1995-08-14','2','','College','','','1','1','1','','1995-08-26','St. Pius X','Bangalore','Samuel & Anne Lawrence','2008-03-13','2011-01-21','2013-09-15','',27,'child','','images_04.jpg','B4/3'),(70,'Aneesha','Peter',2,'1','1983-08-30','3','House Wife','House Wife','','','3','3','2','','1983-08-28','St. Marks','Bangalore','Ravi and Mary','1993-08-25','1993-08-25','2013-04-16','',14,'wife','Singing','images (2)_01.jpg','B2/6'),(71,'Luke','Simon',1,'1','1970-08-04','1','Business Man','Furniture Exports','5467865685','Example@example.com','1','1','1','','1971-08-25','St. Mark\'s ','Delhi','Henry and Rita','1984-08-23','1984-08-23','2010-04-07','',15,'husband','','images (3).jpg','C2/6'),(72,'Michael','Rohan',1,'2','1963-08-13','1','Retired','','5467486975','Example@example.com','1','1','1','1','1965-08-11','St. Charles','Mumbai','Rohan and Reena','1983-08-11','1983-08-11','1993-05-19','',17,'husband','','family-2012-07.jpg','B3/1'),(73,'Samuel','Raj',1,'1','1983-09-04','4','Business','Business','3456789573','adfadf@example.com','2','1','1','1','1984-09-09','Assumption Church, Rajajinagar ','Bangalore','Rohan and Sudha','1993-09-12','1993-09-12','2012-09-05','',28,'husband','Nil','images (3)_06.jpg','A3/1'),(74,'Elizabeth','Samuel',2,'1','1984-09-10','3','Home maker','Home maker','4567890454','sffbfs@example.com','2','2','1','1','1995-09-03','SFX ','Bangalore','John and Maria','1995-09-11','1995-09-11','2012-09-05','',28,'wife','Teacher','images (3)_07.jpg','A3/2'),(75,'Elizabeth','Samuel',2,'1','2003-09-02','1','','','','','1','1','1','1','2003-09-03','SFX ','Bangalore','John and Maria',NULL,NULL,NULL,'',17,'wife','',NULL,'B3/0'),(76,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',17,'dependent','',NULL,'B3/0'),(77,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',17,'dependent','',NULL,'B3/0'),(78,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',17,'child','',NULL,'B3/0'),(79,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',17,'child','',NULL,'B3/0'),(80,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',17,'child','',NULL,'B3/0'),(81,'Jaden','Rose',1,'1','1986-08-10','4','MBA','Business','8484332432','rose@rose.com','1','1','1','1','1987-09-06','St. John\'s, Delhi','Delhi','Samuel and Jonita','1993-09-19','1993-09-19','2013-09-22','',29,'husband','Event Management',NULL,'D7/1'),(82,'Jane','Rose',2,'1','1989-09-11','4','Doctor','Dentist','8564563456','jane@example.com','1','1','1','1','1990-09-11','St. Mary\'s ','Mangalore','Jude and Rose','1997-09-28','2003-09-21','2013-09-22','',29,'wife','Dentist',NULL,'D7/2'),(83,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',29,'dependent','',NULL,'D7/0'),(84,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',29,'dependent','',NULL,'D7/0'),(85,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',29,'child','',NULL,'D7/0'),(86,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',29,'child','',NULL,'D7/0'),(87,'','',NULL,'1',NULL,'1','','','','','1','1','1','',NULL,'','','',NULL,NULL,NULL,'',29,'child','',NULL,'D7/0');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfaction_data`
--

DROP TABLE IF EXISTS `satisfaction_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satisfaction_data` (
  `family_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `satisfaction_item_id` int(11) DEFAULT NULL,
  `satisfaction_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `satisfation_data_family` (`family_id`),
  KEY `satisfaction_data_item` (`satisfaction_item_id`),
  CONSTRAINT `satisfaction_data_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`),
  CONSTRAINT `satisfaction_data_ibfk_2` FOREIGN KEY (`satisfaction_item_id`) REFERENCES `satisfaction_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaction_data`
--

LOCK TABLES `satisfaction_data` WRITE;
/*!40000 ALTER TABLE `satisfaction_data` DISABLE KEYS */;
INSERT INTO `satisfaction_data` VALUES (9,1,1,4),(9,2,2,5),(9,3,3,3),(9,4,4,4),(9,5,5,3),(9,6,6,4),(9,7,7,4),(9,8,8,4),(9,9,9,4),(9,10,10,2),(9,11,11,2),(9,12,12,1),(9,13,13,4),(9,14,14,4),(10,15,1,2),(10,16,2,3),(10,17,3,4),(10,18,4,5),(10,19,5,4),(10,20,6,3),(10,21,7,2),(10,22,8,1),(10,23,9,2),(10,24,10,3),(10,25,11,4),(10,26,12,5),(10,27,13,4),(10,28,14,3),(11,29,1,5),(11,30,2,4),(11,31,3,5),(11,32,4,4),(11,33,5,5),(11,34,6,4),(11,35,7,5),(11,36,8,4),(11,37,9,5),(11,38,10,4),(11,39,11,5),(11,40,12,4),(11,41,13,5),(11,42,14,4),(14,57,1,3),(14,58,2,3),(14,59,3,3),(14,60,4,3),(14,61,5,3),(14,62,6,3),(14,63,7,3),(14,64,8,3),(14,65,9,3),(14,66,10,3),(14,67,11,3),(14,68,12,3),(14,69,13,3),(14,70,14,3),(13,71,1,4),(13,72,2,4),(13,73,3,4),(13,74,4,4),(13,75,5,4),(13,76,6,4),(13,77,7,4),(13,78,8,4),(13,79,9,4),(13,80,10,4),(13,81,11,4),(13,82,12,4),(13,83,13,4),(13,84,14,4),(15,85,1,5),(15,86,2,5),(15,87,3,5),(15,88,4,5),(15,89,5,5),(15,90,6,5),(15,91,7,5),(15,92,8,5),(15,93,9,5),(15,94,10,5),(15,95,11,5),(15,96,12,5),(15,97,13,5),(15,98,14,5),(16,99,1,4),(16,100,2,4),(16,101,3,3),(16,102,4,3),(16,103,5,4),(16,104,6,4),(16,105,7,3),(16,106,8,3),(16,107,9,4),(16,108,10,4),(16,109,11,3),(16,110,12,3),(16,111,13,4),(16,112,14,4),(17,113,1,5),(17,114,2,5),(17,115,3,5),(17,116,4,5),(17,117,5,4),(17,118,6,4),(17,119,7,4),(17,120,8,4),(17,121,9,5),(17,122,10,5),(17,123,11,5),(17,124,12,4),(17,125,13,4),(17,126,14,4),(19,141,1,3),(19,142,2,3),(19,143,3,3),(19,144,4,3),(19,145,5,4),(19,146,6,4),(19,147,7,4),(19,148,8,4),(19,149,9,3),(19,150,10,3),(19,151,11,3),(19,152,12,3),(19,153,13,4),(19,154,14,4),(20,155,1,4),(20,156,2,4),(20,157,3,4),(20,158,4,4),(20,159,5,5),(20,160,6,5),(20,161,7,5),(20,162,8,5),(20,163,9,4),(20,164,10,4),(20,165,11,4),(20,166,12,4),(20,167,13,5),(20,168,14,5),(21,169,1,3),(21,170,2,4),(21,171,3,4),(21,172,4,4),(21,173,5,4),(21,174,6,4),(21,175,7,3),(21,176,8,3),(21,177,9,3),(21,178,10,3),(21,179,11,4),(21,180,12,4),(21,181,13,4),(21,182,14,4),(25,183,1,3),(25,184,2,4),(25,185,3,4),(25,186,4,3),(25,187,5,3),(25,188,6,4),(25,189,7,4),(25,190,8,3),(25,191,9,3),(25,192,10,4),(25,193,11,4),(25,194,12,3),(25,195,13,3),(25,196,14,4),(26,197,1,4),(26,198,2,4),(26,199,3,5),(26,200,4,5),(26,201,5,4),(26,202,6,5),(26,203,7,5),(26,204,8,5),(26,205,9,5),(26,206,10,4),(26,207,11,4),(26,208,12,4),(26,209,13,4),(26,210,14,5),(27,211,1,3),(27,212,2,3),(27,213,3,2),(27,214,4,2),(27,215,5,1),(27,216,6,2),(27,217,7,3),(27,218,8,4),(27,219,9,5),(27,220,10,4),(27,221,11,3),(27,222,12,2),(27,223,13,1),(27,224,14,3);
/*!40000 ALTER TABLE `satisfaction_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfaction_items`
--

DROP TABLE IF EXISTS `satisfaction_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satisfaction_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaction_items`
--

LOCK TABLES `satisfaction_items` WRITE;
/*!40000 ALTER TABLE `satisfaction_items` DISABLE KEYS */;
INSERT INTO `satisfaction_items` VALUES (1,'Service'),(2,'Preaching & message'),(3,'Novena'),(4,'Choir'),(5,'Ushering'),(6,'Lectors'),(7,'Decorations arrangement'),(8,'Adoration'),(9,'Sunday school'),(10,'Preparation for Sacraments'),(11,'Adult Catechesis'),(12,'Bible study'),(13,'Retreats'),(14,'Parish website');
/*!40000 ALTER TABLE `satisfaction_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` int(11) DEFAULT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `start_year` int(11) DEFAULT NULL,
  `start_month` int(11) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
  `end_month` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `paid_by` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sub_family` (`family_id`),
  KEY `fk_sub_trans` (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,9,2,2010,3,2011,12,100,'John'),(2,28,3,2012,10,2013,9,100,'Samuel'),(3,17,16,2012,7,2013,2,100,'');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `descr` varchar(99) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'credit','Mass booking #1','2013-08-27 11:51:46',1,100),(2,'credit','Family #9 subscription from Mar 2010 to Dec 2011','2013-08-31 19:57:47',1,2200),(3,'credit','Family #28 subscription from Oct 2012 to Sep 2013','2013-09-13 17:05:40',1,1200),(4,'credit','Mass booking #2','2013-09-14 12:25:04',1,100),(5,'credit','Mass booking #3','2013-09-14 12:33:01',1,100),(6,'credit','Mass booking #4','2013-09-14 12:33:27',1,100),(7,'credit','Mass booking #5','2013-09-14 12:34:03',1,100),(8,'credit','Mass booking #6','2013-09-14 12:34:59',1,100),(9,'credit','Mass booking #7','2013-09-14 12:35:56',1,100),(10,'credit','Mass booking #8','2013-09-21 18:08:37',1,100),(11,'credit','Mass booking #9','2013-09-21 21:43:11',1,100),(12,'credit','Mass booking #10','2013-09-28 00:48:21',1,100),(13,'credit','Mass booking #11','2013-09-28 18:44:28',5,100),(14,'credit','Mass booking #12','2013-09-28 18:45:21',5,100),(15,'credit','Mass booking #13','2013-09-28 18:51:03',5,100),(16,'credit','Family #17 subscription from Jul 2012 to Feb 2013','2013-09-30 10:16:52',6,800),(17,'credit','Mass booking #14','2013-10-02 19:07:51',6,100);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` char(64) DEFAULT NULL,
  `superuser` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$13$mK/NQ8zDctQS.8UxwEdcqOnPK3Hq7QGoLXaqnwlEtLGYL9nXUZ0X.',1),(2,'terence','$2a$13$mtdTzYEyytz4kyiKnrQLuOX1laz25cTa9UfoQ/PQXZrB5c6YVKTve',0),(3,'charles','$2a$13$KBf2KwiyKYOSU5YjmOZLT..2La8oLIRSFBtbUjeBWVAlOedy.SbSC',0),(4,'vijay','$2a$13$Ev7anVjm1B0uOQl/cllnGucrKOcCr2vRMpOF/MJmKO6C3xQ3x/Uge',0),(5,'staff','$2a$13$Jm/gue/xIW4h84ATSlsOHOpx0OoHRqlXqoWZIPa6Y71jgxDahlda2',0),(6,'pastor','$2a$13$5koxBdOSmAZeAS7NjoH0AO5HFvSLtzJPQ/uHdPP65h8M0.v7MuCRm',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yesno_data`
--

DROP TABLE IF EXISTS `yesno_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yesno_data` (
  `family_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `family_id` (`family_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `yesno_data_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`),
  CONSTRAINT `yesno_data_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `yesno_questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yesno_data`
--

LOCK TABLES `yesno_data` WRITE;
/*!40000 ALTER TABLE `yesno_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `yesno_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yesno_questions`
--

DROP TABLE IF EXISTS `yesno_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yesno_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yesno_questions`
--

LOCK TABLES `yesno_questions` WRITE;
/*!40000 ALTER TABLE `yesno_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `yesno_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-18 13:29:28
