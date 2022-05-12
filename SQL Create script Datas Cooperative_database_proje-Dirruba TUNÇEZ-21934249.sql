-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cooperative_database_proje
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apartment_information`
--

DROP TABLE IF EXISTS `apartment_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartment_information` (
  `id_apartment_information` char(5) NOT NULL,
  `apartment_name` varchar(15) NOT NULL,
  `apartment_address` varchar(255) NOT NULL,
  `apartment_floor_number` varchar(5) NOT NULL,
  `number_of_apartment` varchar(5) NOT NULL,
  PRIMARY KEY (`id_apartment_information`,`apartment_name`),
  UNIQUE KEY `idapartment_information_UNIQUE` (`id_apartment_information`),
  UNIQUE KEY `apartment_informationcol_UNIQUE` (`apartment_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment_information`
--

LOCK TABLES `apartment_information` WRITE;
/*!40000 ALTER TABLE `apartment_information` DISABLE KEYS */;
INSERT INTO `apartment_information` VALUES ('1','A1','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('10','E2','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('2','A2','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('3','B1','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('4','B2','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('5','C1','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('6','C2','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('7','D1','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('8','D2','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1'),('9','E1','Denizli Mh. - Sığıllı Mahallesi- Göksu Köyü, Göksu, 34980 Şile/İstanbul','5','1');
/*!40000 ALTER TABLE `apartment_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id_expenses` char(5) NOT NULL,
  `electricity` varchar(5) DEFAULT NULL,
  `water` varchar(5) DEFAULT NULL,
  `fuel` varchar(5) NOT NULL,
  `natural_gas` varchar(5) DEFAULT NULL,
  `dues` varchar(5) NOT NULL,
  `FK_member_id_` char(11) NOT NULL,
  `FK_id_tenant` char(5) DEFAULT NULL,
  PRIMARY KEY (`id_expenses`),
  UNIQUE KEY `id_expenses_UNIQUE` (`id_expenses`),
  KEY `FK_member_id__idx` (`FK_member_id_`),
  KEY `FK_id_tenant_idx` (`FK_id_tenant`),
  CONSTRAINT `FK_id_tenant` FOREIGN KEY (`FK_id_tenant`) REFERENCES `tenant` (`id_tenant`),
  CONSTRAINT `FK_member_id_` FOREIGN KEY (`FK_member_id_`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES ('201','160','70','350','20','2950','10139312820',NULL),('202','165','50','200','20','2950','15300988576',NULL),('203','190','70','200','20','4500','99502014516',NULL),('204','160','75','250','20','2950','15391989780',NULL),('205','','85','300','20','2950','16782313078',NULL),('206','190','80','350','20','2950','18123582426',NULL),('207','168','60','250','25','2950','18220546222',NULL),('208','150','65','200','20','2950','18651018718',NULL),('209','170','55','300','20','2950','18784517270','101'),('210','','65','350','20','2950','18857191000','102'),('211','185','75','354','20','2950','19892736690','103'),('212','195','70','368','25','2950','21829347534','104'),('213','170','85','400','25','2950','10842941874',NULL),('214','190','50','457','25','2950','22411011642','105'),('215','195',NULL,'497','20','3650','24161299622',NULL),('216','150','55','300','20','2950','24451521846',NULL),('217','150','60','259','25','2950','28067791976',NULL),('218','155','76','200','20','2950','29617596904',NULL),('219','165',NULL,'290','30','2950','29620352122',NULL),('220','160','86','368','30','2950','30748498104',NULL),('221','175','70','450','30','3650','31789830144',NULL),('222','175','75','455','25','3650','33164816866',NULL),('223','','65','365','20','3650','33188647774',NULL),('224','180','60','367','25','2950','12043941318',NULL),('225','185','76','376','30','3650','34416074010',NULL),('226','180','75','460','30','3650','35625236350','106'),('227','190','85','345','25','3650','35942947946',NULL),('228','195','80','287','25','3650','36459619586',NULL),('229','200','75','299','25','3650','38099947920',NULL),('230','150','75','250','20','3650','39375686816',NULL),('231','160','70','260','20','3650','39416734940',NULL),('232','160',NULL,'300','25','3650','39676611166',NULL),('233','175',NULL,'350','30','3650','40437026624',NULL),('234','150','70','400','30','3650','42809282690','107'),('235','165',NULL,'450','30','2950','12827184610',NULL),('236','160','50','458','25','3650','44550111618','108'),('237','180','50','452','25','4200','44609391916',NULL),('238','185','55','500','25','4200','44719755158',NULL),('239','170','65','350','25','4200','47980628060',NULL),('240','175','69','255','20','4200','48273549338',NULL),('241','190','70','290','20','4200','49017451214','109'),('242','196','75','367','20','4200','49184534604','110'),('243','188','70','389','30','4200','51071127622','111'),('244','180','85','329','30','4200','51184083594','112'),('245','185','80','334','30','4200','51580079870','113'),('246','165','85','345','30','2950','13335379352',NULL),('247','190','75','367','25','4200','52225257202','114'),('248','160','70','357','25','4500','54036229034',NULL),('249','150','70','368','25','4500','54794556038',NULL),('250','150','70','453','25','4500','56048359662',NULL),('251','160','80','456','20','4500','57008697596',NULL),('252','180',NULL,'432','20','4500','58375489920',NULL),('253','','50','345','20','4500','58925384880',NULL),('254','200','60','364','30','4500','61407576130',NULL),('255','160','70','365','30','4500','61481495648',NULL),('256','200','75','378','25','4500','63172355620',NULL),('257','190','65','395','20','2950','13512199742',NULL),('258','185','65','399','25','4500','64806731780',NULL),('259','150','60','370','30','4500','66737401374','115'),('260','155',NULL,'400','30','4500','67506672650','116'),('261','165','60','402','25','4500','70139247812','117'),('262','175','70','302','25','4500','72965017782',NULL),('263','179','60','440',NULL,'4500','73658464036',NULL),('264','170','70','460','30','4500','74057246094','118'),('265','200','90','479',NULL,'4500','74469020596',NULL),('266',NULL,'95','430',NULL,'4500','74636359788','119'),('267','197','85','230','20','4500','74974057834','120'),('268','165','85','390','25','2950','13769377160',NULL),('269','176','90','397','25','4500','77062630056','121'),('270','175','90','309','25','4500','77212405008',NULL),('271','180','50','390','20','4500','77796001030',NULL),('272','185','55','380','20','4500','78122839044','122'),('273','195','75','400','20','4500','78632184368','123'),('274','190','70','410','25','4500','78741290592',NULL),('275',NULL,'70','415','25','4500','79234917866',NULL),('276','200','70','426','30','4500','79757598726',NULL),('277',NULL,'80','437','30','4500','79858419180',NULL),('278',NULL,'70','400','30','4500','80227794616',NULL),('279','200','70','483','25','2950','13808136628',NULL),('280',NULL,'60','493','20','4500','82090409888','124'),('281','160','60','350','20','4500','82615535566','125'),('282','165','50','422','25','4500','82685875166','126'),('283','169','55','390','25','4500','82855878898',NULL),('287',NULL,'85','265','25','4500','88406144016','128'),('288','200','95','289',NULL,'4500','88453947042',NULL),('289','194','90','400','20','4500','90354107548',NULL),('290','175','66','360','25','2950','14751469108',NULL),('291','180','75','300','25','4500','91247047712','129'),('292','185','80','350','20','4500','92672901488','130'),('293','175','50','390','30','4500','94080091584',NULL),('294','165','70','370','25','4500','94793760746','131'),('295','159','75','480','20','4500','94846659966',NULL),('296','190','75','488','20','4500','95385659370','132'),('297','160','70','399','25','4500','96077540716',NULL),('298','170','80','366','30','4500','97171875476',NULL),('299','175','86','378','30','4500','97709478438',NULL),('300','165','85','389','30','4500','98806969904',NULL),('384','168','55','399',NULL,'4500','84962590564',NULL),('385','193','65','360','20','4500','85174528246',NULL),('386','164','75','360','25','4500','86616707786','127');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_information`
--

DROP TABLE IF EXISTS `home_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_information` (
  `id_home_information` char(5) NOT NULL,
  `door_number` varchar(10) NOT NULL,
  `number_of_rooms` varchar(10) NOT NULL,
  `square_meters` varchar(10) NOT NULL,
  `rent_money` varchar(11) DEFAULT NULL,
  `FK_iid_member` char(11) NOT NULL,
  `FK_apartment_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id_home_information`,`door_number`),
  UNIQUE KEY `id_home_information_UNIQUE` (`id_home_information`),
  UNIQUE KEY `door_number_UNIQUE` (`door_number`),
  KEY `FK_idd_member_idx` (`FK_iid_member`),
  KEY `FK_apartment_name_idx` (`FK_apartment_name`),
  CONSTRAINT `FK_apartment_name` FOREIGN KEY (`FK_apartment_name`) REFERENCES `apartment_information` (`apartment_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_idd_member` FOREIGN KEY (`FK_iid_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_information`
--

LOCK TABLES `home_information` WRITE;
/*!40000 ALTER TABLE `home_information` DISABLE KEYS */;
INSERT INTO `home_information` VALUES ('01','A1/1','2+1','120',NULL,'10139312820','A1'),('010','A1/10','2+1','120',NULL,'15300988576','A1'),('0100','E2/10','4+1','182',NULL,'99502014516','E2'),('011','A2/1','2+1','120',NULL,'15391989780','A2'),('012','A2/2','2+1','120',NULL,'16782313078','A2'),('013','A2/3','2+1','120',NULL,'18123582426','A2'),('014','A2/4','2+1','120',NULL,'18220546222','A2'),('015','A2/5','2+1','120',NULL,'18651018718','A2'),('016','A2/6','2+1','120','4200','18784517270','A2'),('017','A2/7','2+1','120','4200','18857191000','A2'),('018','A2/8','2+1','120','4200','19892736690','A2'),('019','A2/9','2+1','120','4200','21829347534','A2'),('02','A1/2','2+1','120',NULL,'10842941874','A1'),('020','A2/10','2+1','120','4200','22411011642','A2'),('021','B1/1','3+1','150',NULL,'24161299622','B1'),('022','B1/2','3+1','150',NULL,'24451521846','B1'),('023','B1/3','3+1','150',NULL,'28067791976','B1'),('024','B1/4','3+1','150',NULL,'29617596904','B1'),('025','B1/5','3+1','150',NULL,'29620352122','B1'),('026','B1/6','3+1','150',NULL,'30748498104','B1'),('027','B1/7','3+1','150',NULL,'31789830144','B1'),('028','B1/8','3+1','150',NULL,'33164816866','B1'),('029','B1/9','3+1','150',NULL,'33188647774','B1'),('03','A1/3','2+1','120',NULL,'12043941318','A1'),('030','B1/10','3+1','150',NULL,'34416074010','B1'),('031','B2/1','3+1','150','5000','35625236350','B2'),('032','B2/2','3+1','150',NULL,'35942947946','B2'),('033','B2/3','3+1','150',NULL,'36459619586','B2'),('034','B2/4','3+1','150',NULL,'38099947920','B2'),('035','B2/5','3+1','150',NULL,'39375686816','B2'),('036','B2/6','3+1','150',NULL,'39416734940','B2'),('037','B2/7','3+1','150',NULL,'39676611166','B2'),('038','B2/8','3+1','150',NULL,'40437026624','B2'),('039','B2/9','3+1','150','5000','42809282690','B2'),('04','A1/4','2+1','120',NULL,'12827184610','A1'),('040','B2/10','3+1','150','5000','44550111618','B2'),('041','C1/1','3+1','170',NULL,'44609391916','C1'),('042','C1/2','3+1','170',NULL,'44719755158','C1'),('043','C1/3','3+1','170',NULL,'47980628060','C1'),('044','C1/4','3+1','170',NULL,'48273549338','C1'),('045','C1/5','3+1','170','5250','49017451214','C1'),('046','C1/6','3+1','170','5250','49184534604','C1'),('047','C1/7','3+1','170','5250','51071127622','C1'),('048','C1/8','3+1','170','5250','51184083594','C1'),('049','C1/9','3+1','170','5250','51580079870','C1'),('05','A1/5','2+1','120',NULL,'13335379352','A1'),('050','C1/10','3+1','170','5250','52225257202','C1'),('051','C2/1','4+1','182',NULL,'54036229034','C2'),('052','C2/2','4+1','182',NULL,'54794556038','C2'),('053','C2/3','4+1','182',NULL,'56048359662','C2'),('054','C2/4','4+1','182',NULL,'57008697596','C2'),('055','C2/5','4+1','182',NULL,'58375489920','C2'),('056','C2/6','4+1','182',NULL,'58925384880','C2'),('057','C2/7','4+1','182',NULL,'61407576130','C2'),('058','C2/8','4+1','182',NULL,'61481495648','C2'),('059','C2/9','4+1','182',NULL,'63172355620','C2'),('06','A1/6','2+1','120',NULL,'13512199742','A1'),('060','C2/10','4+1','182',NULL,'64806731780','C2'),('061','D1/1','4+1','182','7500','66737401374','D1'),('062','D1/2','4+1','182','7500','67506672650','D1'),('063','D1/3','4+1','182','7500','70139247812','D1'),('064','D1/4','4+1','182','','72965017782','D1'),('065','D1/5','4+1','182',NULL,'73658464036','D1'),('066','D1/6','4+1','182','7500','74057246094','D1'),('067','D1/7','4+1','182',NULL,'74469020596','D1'),('068','D1/8','4+1','182','7500','74636359788','D1'),('069','D1/9','4+1','182','7500','74974057834','D1'),('07','A1/7','2+1','120',NULL,'13769377160','A1'),('070','D1/10','4+1','182','7500','77062630056','D1'),('071','D2/1','4+1','182',NULL,'77212405008','D2'),('072','D2/2','4+1','182',NULL,'77796001030','D2'),('073','D2/3','4+1','182','7500','78122839044','D2'),('074','D2/4','4+1','182','7500','78632184368','D2'),('075','D2/5','4+1','182',NULL,'78741290592','D2'),('076','D2/6','4+1','182',NULL,'79234917866','D2'),('077','D2/7','4+1','182',NULL,'79757598726','D2'),('078','D2/8','4+1','182',NULL,'79858419180','D2'),('079','D2/9','4+1','182',NULL,'80227794616','D2'),('08','A1/8','2+1','120',NULL,'13808136628','A1'),('080','D2/10','4+1','182','7500','82090409888','D2'),('081','E1/1','4+1','182','7500','82615535566','E1'),('082','E1/2','4+1','182','7500','82685875166','E1'),('083','E1/3','4+1','182',NULL,'82855878898','E1'),('084','E1/4','4+1','182',NULL,'84962590564','E1'),('085','E1/5','4+1','182',NULL,'85174528246','E1'),('086','E1/6','4+1','182','7500','86616707786','E1'),('087','E1/7','4+1','182','7500','88406144016','E1'),('088','E1/8','4+1','182',NULL,'88453947042','E1'),('089','E1/9','4+1','182',NULL,'90354107548','E1'),('09','A1/9','2+1','120',NULL,'14751469108','A1'),('090','E1/10','4+1','182','7500','91247047712','E1'),('091','E2/1','4+1','182','7500','92672901488','E2'),('092','E2/2','4+1','182',NULL,'94080091584','E2'),('093','E2/3','4+1','182','7500','94793760746','E2'),('094','E2/4','4+1','182',NULL,'94846659966','E2'),('095','E2/5','4+1','182','7500','95385659370','E2'),('096','E2/6','4+1','182',NULL,'96077540716','E2'),('097','E2/7','4+1','182',NULL,'97171875476','E2'),('098','E2/8','4+1','182',NULL,'97709478438','E2'),('099','E2/9','4+1','182',NULL,'98806969904','E2');
/*!40000 ALTER TABLE `home_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lease`
--

DROP TABLE IF EXISTS `lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lease` (
  `id_lease` char(5) NOT NULL,
  `rent_money` varchar(11) NOT NULL,
  `deposit` varchar(10) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `late_fee` varchar(5) DEFAULT NULL,
  `square_meters` varchar(10) NOT NULL,
  `FK_id_member` char(11) NOT NULL,
  `FK_door_number` varchar(10) NOT NULL,
  PRIMARY KEY (`id_lease`),
  KEY `FK_id_memberr_idx` (`FK_id_member`),
  KEY `FK_door_numberr_idx` (`FK_door_number`),
  CONSTRAINT `FK_door_numberr` FOREIGN KEY (`FK_door_number`) REFERENCES `home_information` (`door_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_id_memberr` FOREIGN KEY (`FK_id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lease`
--

LOCK TABLES `lease` WRITE;
/*!40000 ALTER TABLE `lease` DISABLE KEYS */;
INSERT INTO `lease` VALUES ('1','4200','2100','2021-12-15','2022-01-15','420','120','18784517270','A2/6'),('10','5250','2900','2021-12-15','2022-01-15',NULL,'170','49184534604','C1/6'),('11','5250',NULL,'2021-12-15','2022-01-15',NULL,'170','51071127622','C1/7'),('12','5250',NULL,'2021-12-15','2022-01-15','525','170','51184083594','C1/8'),('13','5250','3000','2021-12-15','2022-01-15',NULL,'170','51580079870','C1/9'),('14','5250',NULL,'2021-12-15','2022-01-15',NULL,'170','52225257202','C1/10'),('15','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','66737401374','D1/1'),('16','7500','3800','2021-12-15','2022-01-15','750','182','67506672650','D1/2'),('17','7500','3800','2021-12-15','2022-01-15',NULL,'182','70139247812','D1/3'),('18','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','74057246094','D1/6'),('19','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','74636359788','D1/8'),('2','4200','2000','2021-12-15','2022-01-15',NULL,'120','18857191000','A2/7'),('20','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','74974057834','D1/9'),('21','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','77062630056','D1/10'),('22','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','78122839044','D2/3'),('23','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','78632184368','D2/4'),('24','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','82090409888','D2/10'),('25','7500','3950','2021-12-15','2022-01-15',NULL,'182','82615535566','E1/1'),('26','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','82685875166','E1/2'),('27','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','86616707786','E1/6'),('28','7500','4000','2021-12-15','2022-01-15',NULL,'182','88406144016','E1/7'),('29','7500',NULL,'2021-12-15','2022-01-15','750','182','91247047712','E1/10'),('3','4200','2600','2021-12-15','2022-01-15',NULL,'120','19892736690','A2/8'),('30','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','92672901488','E2/1'),('31','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','94793760746','E2/3'),('32','7500',NULL,'2021-12-15','2022-01-15',NULL,'182','95385659370','E2/5'),('4','4200',NULL,'2021-12-15','2022-01-15',NULL,'120','21829347534','A2/9'),('5','4200',NULL,'2021-12-15','2022-01-15',NULL,'120','22411011642','A2/10'),('6','5000','3250','2021-12-15','2022-01-15',NULL,'150','35625236350','B2/1'),('7','5000',NULL,'2021-12-15','2022-01-15',NULL,'150','42809282690','B2/9'),('8','5000',NULL,'2021-12-15','2022-01-15','500','150','44550111618','B2/10'),('9','5250','3100','2021-12-15','2022-01-15',NULL,'170','44550111618','C1/5');
/*!40000 ALTER TABLE `lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id_meetings` char(5) NOT NULL,
  `meeting_date_` date NOT NULL,
  `decision` varchar(255) DEFAULT NULL,
  `FK_id_member_manager` char(11) NOT NULL,
  PRIMARY KEY (`id_meetings`),
  UNIQUE KEY `id_meetings_UNIQUE` (`id_meetings`),
  KEY `FK_id_member__idx` (`FK_id_member_manager`),
  CONSTRAINT `FK_id_member_manager` FOREIGN KEY (`FK_id_member_manager`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES ('01','2021-01-10',NULL,'10139312820'),('010','2021-10-10','buying cat-dog houses','10139312820'),('011','2021-11-10',NULL,'10139312820'),('012','2021-12-10','new manager election','10139312820'),('013','2022-01-10',NULL,'94793760746'),('02','2021-02-10',NULL,'10139312820'),('03','2021-03-10',NULL,'10139312820'),('04','2021-04-10',NULL,'10139312820'),('05','2021-05-10',NULL,'10139312820'),('06','2021-06-10','employ  a new concierge','10139312820'),('07','2021-07-10',NULL,'10139312820'),('08','2021-08-10',NULL,'10139312820'),('09','2021-09-10','elevator repair','10139312820');
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id_member` char(11) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_surname` varchar(45) NOT NULL,
  `member_phone` char(15) NOT NULL,
  `member_email` varchar(45) NOT NULL,
  `member_address` varchar(255) NOT NULL,
  `member_province` varchar(45) NOT NULL,
  `member_state` varchar(45) NOT NULL,
  PRIMARY KEY (`id_member`),
  UNIQUE KEY `id_member_UNIQUE` (`id_member`),
  UNIQUE KEY `member_email_UNIQUE` (`member_email`),
  UNIQUE KEY `member_phone_UNIQUE` (`member_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('10139312820','Yavuz','Altınser','(0545)-8490211','yavuz@gmail.com','Boğaziçi Sitesi 2, İstinye, 34460 Sarıyer/İstanbul','İstanbul','Sarıyer'),('10842941874','Vedat','Kale','(0598)-8388300','vedatkale@gmail.com','Ethem Efendi Cd. 96-102, Erenköy, 34738 Kadıköy/İstanbul','İstanbul','Kadıköy'),('12043941318','Ali Faruk','Ural','(0549)-8990265','alifarukural@gmail.com','Anadolu Yakası, Feyzullah, 34843 Maltepe/İstanbul','İstanbul','Maltepe'),('12827184610','Hakan','Pak','(0587)-4335784','hakan@hotmail.com','Hatipoğlu Sk. No:10, Yeni Mh., 34570 Silivri/İstanbul','İstanbul','Silivri'),('13335379352','Güney','Tırnaksız','(0553)-4016169','güney@gmail.com','Kazım Karabekir caddesi 1986 sok. No:6, Cumhuriyet, 34515 Esenyurt/İstanbul','İstanbul','Esenyurt'),('13512199742','Eren','Aykent','(0533)-7650098','eren@hotmail.com','Yörükler Köyü Yolu, 81620 Yörük/Düzce Merkez/Düzce','Düzce','Merkez'),('13769377160','Murat','Mahsel','(0598)-8754392','muratmehsel@gmail.com','Sarıyer Cd. 70, İstinye, 34460 Sarıyer/İstanbul','İstanbul','Sarıyer'),('13808136628','Nura','Manesi','(0587)-5647889','nura@hotmail.com.tr','Gümüş Sk., Cumhuriyet, 34457 Sarıyer/İstanbul','İstanbul','Sarıyer'),('14751469108','Banu','Sinaner','(0532)-7513262','banu@gmail.com','Ertuğrul Gazi Cd. 33-29, Mavigöl, 34287 Arnavutköy/İstanbul','İstanbul','Arnavutköy'),('15300988576','Ecmel','Soylu','(0555)-5683560','ecmel@gmail.com','Gazete Muhabirleri Sitesi 4, Kültür, 34340 Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('15391989780','Şirin','Leylak','(0568)-8764325','sirinn@hotmail.com','Akçay Lunapark, Akçay, Turgut Reis Cd. No:23, 10300 Edremit/Balıkesir','Balıkesir','Edremit'),('16782313078','Kevser','Vade','(0555)-3422112','kevser@hotmail.com.tr','Azem Sk. No:23, Nenehatun, 41700 Darıca/Kocaeli','Kocaeli','Darıca'),('18123582426','Melih','Keskin','(0572)-4880905','melihh@hotmail.com.tr','Kızılca Köyü Cami, Kızılca, 34980 Şile/Istanbul - Asia','İstanbul','Şile'),('18220546222','Cansu','İlhanlı','(0553)-0456175','cansu@hotmail.com','Bağdat Cd. 53, Altıntepe, 34840 Maltepe/İstanbul','İstanbul','Maltepe'),('18651018718','Meltem','Candan','(0542)-2033116','meltemci11@hotmail.com','Nurhan Sok. 11-1, Merkez, 34406 Kâğıthane/İstanbul','İstanbul','Kağıthane'),('18784517270','Oğuz','Atay','(0552)-3239800','oguzatay@gmail.com','Zakkum Sk, Altıntepe, 34840 Maltepe/İstanbul','İstanbul','Maltepe'),('18857191000','Kenan','Keres','(0523)-5677890','kenan@hotmail.com.tr','Düzce Cd. 2-4, Şehit Kemal Işıldak, 81620 Düzce Merkez/Düzce','Düzce','Merkez'),('19892736690','Deren','Kılım','(0541)-0004630','deren@gmail.com','Barbaros Hayrettin Cd. 16-20, Burgazadası, 34975 Adalar/İstanbul','İstanbul','Adalar'),('21829347534','Fırat','Albayram','(0538)-3451252','fıraat@hotmail.com','Piempi, Soğanlık Yeni, 34880 Kartal/İstanbul','İstanbul','Kartal'),('22411011642','Orhan','Pamuk','(0545)-4663729','orhanpamuk@gmail.com','Vezirköşkü Sk. 2-6, Bebek, Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('24161299622','İsmail','Sekant','(0598)-9393021','ismailsektan@gmail.com','Acısu Sokaği NO 19, Vişnezade, 34357 Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('24451521846','Ahmet Ali','Kemik','(0552)-8884392','ahmetali@gmail.com','Bahariyeli Sk 46-64, Erenköy, 34738 Kadıköy/İstanbul','İstanbul','Kadıköy'),('28067791976','Levent','Vas','(0578)-3218877','leventvas@gmail.com','Hastane Cd., Yukarı Zaferiye, 22800 Keşan/Edirne','Edirne','Keşan'),('29617596904','Kuzey','Tekinoğlu','(0555)-9159893','kuzey4@gmail.com','Tevfik Paşa Sk. No:7, Fenerbahçe, 34726 Kadıköy/İstanbul','Istanbul','Kadıköy'),('29620352122','Emrah','Küçüş','(0535)-8218503','emrah@hotmail.com.tr','Ertuğrul Gazi Cd. 51-49, Güzelyurt, 34515 Beylikdüzü Osb/Esenyurt/İstanbul','Istanbul','Esenyurt'),('30748498104','Aslı','Çetin','(0535)-3087260','aslı@gmail.com','Marmara Cd., Kavaklı, 34520 Beylikdüzü Osb/Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('31789830144','Cansu','Gerek','(0572)-2621045','cansu@gmail.com','Reyhan Sk. 2-12, Hürriyet, 34876 Kartal/İstanbul','Istanbul','Kartal'),('33164816866','Leyla','Nur','(0545)-9689228','nur@gmail.com','Ada Sokak, Güzeltepe, 34680 Üsküdar/İstanbul','Istanbul','Üsküdar'),('33188647774','Adnan','Kese','(0578)-4565432','adnanvade@hotmail.com.tr','Beylikbağı Fatih Cami, Beylikbağı Fatih Mah., Gebze Merkez, Gebze, Kocaeli (İzmit)','Kocaeli','İzmit'),('34416074010','Nalan','Tekin','(0545)-2151679','nalant0@hotmail.com','Kubilay Cd. No:78, Topselvi, 34873 Kartal/İstanbul','Istanbul','Kartal'),('35625236350','Samet','Satılmış','(0553)-2353856','samet@hotmail.com','Köşkler Yanı G1 Sk. No:15, Tarabya, 34457 Sarıyer/İstanbul','Istanbul','Sarıyer'),('35942947946','Ali','Güntan','(0553)-2951213','ali@gmail.com','Beylikkent Sitesi, Cumhuriyet, 34515 Esenyurt/İstanbul','Istanbul','Esenyurt'),('36459619586','Kemal','Keski','(0547)-9800650','kemal@gmail.com','Halkalı Cd. 130-132, Mahmutbey, 34218 Bağcılar/İstanbul','Istanbul','Bağcılar'),('38099947920','Emir','Sarrafoğlu','(0542)-2753539','sarraf@hotmail.com','Siyavuş Paşa Sk No:7, Cumhuriyet Mh., 34520 Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('39375686816','Ferit','Davul','(0539)-0084560','ferit@gmail.com','Anadolu Yakası, Velibaba, 34896 Pendik/İstanbul','Istanbul','Pendik'),('39416734940','Rüzgar','Cem','(0555)-5012415','ruzgar@hotmail.com','Şirin Elektrik, Cumhuriyet Mah. Ata Center Blokları No:14, Beylikdüzü, İstanbul','Istanbul','Beylikdüzü'),('39676611166','Gökhan','Saffet','(0587)-2311821','gokhan@gmail.com','Arafat Sk. 4b, Kurtköy, 34912 Pendik/İstanbul','Istanbul','Pendik'),('40437026624','Mehtap','Pirse','(0555)-0900123','mehtappirse@gmail.com','Cengiz Topel Cd. 18-22, Etiler, 34337 Beşiktaş/İstanbul','Istanbul','Beşiktaş'),('42809282690','Mert','Yatkın','(0549)-6657493','mertyatkın@gmail.com','Avrupa Yakası, Cumhuriyet, 34100 Esenyurt/İstanbul','Istanbul','Esenyurt'),('44550111618','İpek','Sel','(0505)-7317841','ipeksel@gmail.com','Siyavuş Paşa Sk No:5, Cumhuriyet Mh., 34520 Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('44609391916','Samet','Mala','(0543)-6826176','sametmala@gmail.com','Cami Sk. 163-133, Mustafa Kemal Paşa, 34320 Avcılar/İstanbul','Istanbul','Avcılar'),('44719755158','Emir','Kozcuoğlu','(0508)-4511840','emirkooz@hotmail.com.tr','Mimar Sinan Cd. 65-63, Güzelyurt, 345','Istanbul','Güzelyurt'),('47980628060','Mehmet Ali','Şiş','(0557)-9854362','mehmetali@gmail.com','Aşkın Nakliyat, Evka 3, 113. Sk. 2 A, 35050 Bornova/İzmir','İzmir','Bornova'),('48273549338','Gürkan','Demirbaş','(0552)-6772810','gurkan@gmail.com','Mehter Sk., İstinye, 34460 Sarıyer/İstanbul','İstanbul','Sarıyer'),('49017451214','orhan','Kelek','(0578)-2389730','orhan@hotmail.com.tr','Bağlıca Blv., Bağlıca, 06790 Etimesgut/Ankara','Ankara','Etimesgut'),('49184534604','Serra','Sakkent','(0532)-4568732','serrasakkent@hotmail.com.tr','Şeyh Çelebi Mezarlık Sk. 10-18, Yancıkçı Şahin, 22030 Edirne Merkez/Edirne','Edirne','Merkez'),('51071127622','Sait Faik','Abasıyanık','(0585)-9884032','saitfaik@gmail.com','Florya Cd. 38-48, Şenlikköy, 34153 Bakırköy/İstanbul','İstanbul','Bakırköy'),('51184083594','Ahmet Temel','Tek','(0506)-0689739','temel@hotmail.com.tr','Abdullahağa Cd., Beylerbeyi, 34676 Üsküdar/İstanbul','İstanbul','Üsküdar'),('51580079870','Faruk','Seffetgiller','(0547)-4355219','farukk@gmail.com','370. Sk. 2-32, İnönü, 34510 Beylikdüzü Osb/Esenyurt/İstanbul','İstanbul','Esenyurt'),('52225257202','Rıza','Yelkenli','(0597)-6554678','rızaa@gmail.com','İskender, Edirne Merkez/Edirne','Edirne','Merkez'),('54036229034','Nermin','Şişkin','(0587)-7688940','nerminn@hotmail.com','Barbaros Hayrettin Cd. No:15, Burgazadası, 34975 Adalar/İstanbul','İstanbul','Adalar'),('54794556038','Talat','Hakkıoğlu','(0538)-9054324','talathakkıoglu@gmail.com','Suryapı Dora Yapı, Saray, 34768 Ümraniye/İstanbul','İstanbul','Ümraniye'),('56048359662','Hikmet','Hater','(0554)-6788905','hikmethater@gmail.com','Ahmet Çalışkan Cd., Koca Sinan, 22030 Edirne Merkez/Edirne','Edirne','Merkez'),('57008697596','Oğuzhan','Omuz','(0541)-4446790','oguzhan@gmail.com','Öz Topuz Cd. 23D, Ulus, 34340 Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('58375489920','Serkan','Demet','(0505)-7859940','serkandemet@hotmail.com.tr','Balta Limanı Hisar Cd., Rumeli Hisarı, 34470 Sarıyer/İstanbul','İstanbul','Sarıyer'),('58925384880','Enes','Demir','(0555)-3988594','enesdemir@hotmail.com.tr','USTASINDAN KASAP IZGARA, Hamidiye, Girne Cad. no 8/A, 34408 Kâğıthane/İstanbul','İstanbul','Kağıthane'),('61407576130','Pelin','Baynazoğlu','(0545)-2037032','pelin035@gmail.com','Albayrak Cami, Güzelyurt, 19. Sk. No:2, 34515 Beylikdüzü Osb/Esenyurt/İstanbul','İstanbul','Esenyurt'),('61481495648','Kenan','Jemin','(0505)-5054533','kenan@gmail.com','Süleyman Yuğnak Sk. 16, Şükrüpaşa, 22030 Edirne Merkez/Edirne','Edirne','Merkez'),('63172355620','Şeref','Sessiz','(0578)-0034755','seref@gmail.com','Kadıyoran Cd. 38-50, Büyükada-nizam, 34970 Adalar/İstanbul','İstanbul','Adalar'),('64806731780','Pelin','Orak','(0541)-2229163','pelirin55@hotmail.com','Ahmet Adnan Saygun Cd. 56 F, Ulus, 34340 Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('66737401374','Vehbi','Ülke','(0555)-0987421','vehbiulke@hotmail.com.tr','Gümüş Sk., Cumhuriyet, 34457 Sarıyer/İstanbul','İstanbul','Sarıyer'),('67506672650','Koray','Dağ','(0530)-9624300','korayy@gmail.com','Başakçı Sk., Çınar, 34841 Maltepe/İstanbul','İstanbul','Maltepe'),('70139247812','Burhan','Altın','(0535)-9008535','burhan@hotmail.com.tr','Egemenlik Cd. 4-14, Barış, 34520 Beylikdüzü Osb/Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('72965017782','Ahmet','Kalem','(0551)-6551051','ahmet01@hotmail.com','Mirelli\'s Jardin, Uskumruköy, No:5 Uskumruköy Mah., 1. CD Cad, 34450 Sarıyer/İstanbul','Istanbul','Sarıyer'),('73658464036','Ali','Rahmet','(0578)-8763212','ali35@gmail.com','Cengiz Han Cd 47 C, Evka 3, 35050 Bornova/İzmir','İzmir','Bornova'),('74057246094','Ceyda','Kasabalı','(0553)-2256118','ceyda22@hotmail.com','TEM Yanyolu, Sanayi, 34538 Esenyurt/İstanbul','Istanbul','Esenyurt'),('74469020596','Burak','Aldanoğlu','(0531)-4563673','burakaldanoglu@hotmail.com.tr','Köşkler Yanı G1 Sk. No:15, Tarabya, 34457 Sarıyer/İstanbul','Istanbul','Sarıyer'),('74636359788','Reşat Nuri','Güntekin','(0585)-8939902','resatnuri@gmail.com','Ihlamurdere Cd. 134-162, Türkali, 34357 Beşiktaş/İstanbul','Istanbul','Beşiktaş'),('74974057834','Handan','İlet','(0531)-4230111','handan@hotmail.com','Bedri Rahmi Eyüboğlu Sk. No:16, Fenerbahçe, 34726 Kadıköy/İstanbul','Istanbul','Kadıköy'),('77062630056','Adnan','Yörük','(0505)-4532778','adnan@hotmail.com','Yakuplu, 34524 Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('77212405008','Emir','Fal','(0531)-5426966','emir@hotmail.com.tr','Orkide 2 Sokağı 27-1, Siyavuşpaşa, 34182 Bahçelievler/İstanbul','Istanbul','Bahçelievler'),('77796001030','Hale','Cemir','(0598)-8700021','halecemir@gmail.com','Cevdet Paşa Cd. No:69, Bebek, 34342 Beşiktaş/İstanbul','Istanbul','Beşiktaş'),('78122839044','Muhammed','Alken','(0548)-8990422','muhammedalken@gmail.com','Sarı Gül Sk. No:10, Caddebostan, 34728 Kadıköy/İstanbul','Istanbul','Kadıköy'),('78632184368','Hayri','Necdet','(0541)-9998454','hayrii@gmail.com','Rüstem Balkan Sk. 39-1, Çırpıcı, 34025 Zeytinburnu/İstanbul','Istanbul','Zeytinburnu'),('78741290592','Hande','Gezgin','(0555)-3813910','hande51@gmail.com','Bizimkent Veteriner Kliniği, Cumhuriyet Mahallesi Bizimkent Sit. D:12 Blok Altı Eczane Bitişiği No: 4V3, 34520 Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('79234917866','Karamel','Kara','(0535)-4180031','karamkara@gmail.com','Mucit Sk. No:1, Haseki Sultan, 34096 Fatih/İstanbul','Istanbul','Fatih'),('79757598726','Nebahat','Çehre','(0551)-2455738','nebah211@hotmail.com','Avrupa Yakası, Cumhuriyet, 34100 Beylikdüzü/İstanbul','Istanbul','Beylikdüzü'),('79858419180','Melahat Aslı','Çan','(0541)-2344327','aslım@gmail.com','Derviş Evleri, Beşevler, Güler Sk., 16110 Nilüfer/Bursa','Bursa','Nilüfer'),('80227794616','Kerim','Okan','(0568)-2346547','kerimm@gmail.com','Şükraniye, 16450 Kestel/Bursa','Bursa','Kestel'),('82090409888','Selda','Kerim','(0534)-1233214','selda@gmail.com','Ümitli Sk. No:16, Demirci, 16159 Nilüfer/Bursa','Bursa','Nilüfer'),('82615535566','Muzaffer','Pakke','(0545)-0981202','muzafferpakke@hotmail.com.tr','Yelken Sk No:10, Ulus, 34340 Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('82685875166','Fetih','Şifa','(0555)-6788900','fetihsifa@hotmail.com.tr','Ayia Kiriaki Ayazması, Ferahevler, 34457 Sarıyer/İstanbul','İstanbul','Sarıyer'),('82855878898','Fatih','Devran','(0544)-3452386','fatih@gmail.com','30/14. Sk. 21-1, Yıldıztepe, 34203 Bağcılar/İstanbul','İstanbul','Bağcılar'),('84962590564','Osman','Seftan','(0531)-7890121','osmanseftan@gmail.com','Akyol Sk. 24-36, Cihangir, 34433 Beyoğlu/İstanbul','İstanbul','Beyoğlu'),('85174528246','Jabağı','Ratemoğlu','(0501)-5980140','ratemoglu@hotmail.com.tr','Avrupa Yakası, Cumhuriyet, 34100 Esenyurt/İstanbul','İstanbul','Esenyurt'),('86616707786','Cemal','Süreya','(0548)-0092120','cemall@gmail.com','Yolat Spor, İsmetpaşa, 53. Sk. 22/A, 34440 Sultangazi/İstanbul','İstanbul','Sultangazi'),('88406144016','Seda','Bakan','(0542)-6010591','bakan@hotmail.com.tr','Çayırlar Cd. No:114, Çavuş, 34980 Şile/İstanbul','İstanbul','Şile'),('88453947042','Lale','Ahse','(0567)-3444578','laleahse@hotmail.com.tr','Melodi Davet, Abide-i Hürriyet Cd Numara:50, Nakiye Elgün Sk., 34380 Şişli','İstanbul','Şile'),('90354107548','Atlas','Cem','(0505)-1281732','atlas@hotmail.com','Anadolu Yakası, Bostancı, 34744 Kadıköy/İstanbul','İstanbul','Kadıköy'),('91247047712','Kenan','İmam','(0538)-8211860','kenannn@hotmail.com.tr','İbrahim Eroğlu Microsoft’ta çalışmak istiyor, Bellevue Residences Levent MahallesiAydın Sokak No:7 Levent, 34340','İstanbul','Levent'),('92672901488','Alp','Akdeniz','(0542)-9908754','alpakdeniz@hotmail.com.tr','Eski Devlet Yolu Cd., Aziziye, 81010 Düzce Merkez/Düzce','Düzce','Merkez'),('94080091584','Can','Gerekoğlu','(0554)-4322211','cangerekoglu@gmail.com','Şükrüpaşa, 22030 Edirne Merkez/Edirne','Edirne','Merkez'),('94793760746','Remzi','Tekil','(0537)-5558313','remzi@gmail.com','Islambey Cad., İslambey, 34050 Eyüpsultan/İstanbul','İstanbul','Eyüpsultan'),('94846659966','Poyraz','Rüzgar','(0535)-7458714','poyraz@gmail.com','Ağlayan Kaya Cd 60-62, Balibey, 34980 Şile/İstanbul','İstanbul','Şile'),('95385659370','Serap','Laleliler','(0531)-5647894','serap@hotmail.com','Yeşilyol F Ara Sk. 4-16, Çırpıcı, 34025 Zeytinburnu/İstanbul','İstanbul','Zeytinburnu'),('96077540716','Aslı ','Sütçüoğlu','(0531)-3238643','aslısutcuoglu@gmail.com','Cumhuriyet Cd. 2-10, Muratpaşa, 34040 Bayrampaşa/İstanbul','İstanbul','Bayrampaşa'),('97171875476','Ahmet','Karayel','(0531)-3091041','ahmet@gmail.com','aloratemizlik, Ortabayır, Çakmak Cd. no:4, 34410 Kâğıthane/İstanbul','İstanbul','Kağıthane'),('97709478438','Mehtap','Sera','(0567)-9873423','methapp@hotmail.com.tr','Prof. Muammer Aksoy Cd No:33, Bahçelievler, 06490 Çankaya/Ankara','Ankara','Çankaya'),('98806969904','Şermin','Döner','(0555)-0947532','sermin@hotmail.com.tr','Ahmet Adnan Saygun Cd., Kuruçeşme, 34340 Beşiktaş/İstanbul','İstanbul','Beşiktaş'),('99502014516','Yusuf','Hakkın','(0548)-8990432','yusufhakkın@gmail.com','Akdemir Sk. No:40, Maden, 34450 Sarıyer/İstanbul','İstanbul','Sarıyer');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id_payment` char(5) NOT NULL,
  `payment_amount` varchar(10) DEFAULT NULL,
  `advance_payment` varchar(10) DEFAULT NULL,
  `payment_billing_date` date NOT NULL,
  `payment_due_date` date NOT NULL,
  `payments_delay_fine` varchar(10) DEFAULT NULL,
  `FK_member_id` char(11) NOT NULL,
  PRIMARY KEY (`id_payment`),
  UNIQUE KEY `id_payment_UNIQUE` (`id_payment`),
  KEY `FK_member_id_idx` (`FK_member_id`),
  CONSTRAINT `FK_member_id` FOREIGN KEY (`FK_member_id`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('1','2500','48.000','2019-12-15','2020-12-20','2400','10139312820'),('10','2500','48.000','2019-12-15','2020-12-20','2400','15300988576'),('100','4000','75.000','2019-12-15','2020-12-20','3750','99502014516'),('11','2500','48.000','2019-12-15','2020-12-20','2400','15391989780'),('12','2500','48.000','2019-12-15','2020-12-20','2400','16782313078'),('13','2500','48.000','2019-12-15','2020-12-20','2400','18123582426'),('14','2500','48.000','2019-12-15','2020-12-20','2400','18220546222'),('15','2500','48.000','2019-12-15','2020-12-20','2400','18651018718'),('16',NULL,'','0000-00-00','0000-00-00',NULL,'18784517270'),('17',NULL,'','0000-00-00','0000-00-00',NULL,'18857191000'),('18',NULL,'','0000-00-00','0000-00-00','','19892736690'),('19',NULL,'','0000-00-00','0000-00-00','','21829347534'),('2','2500','48.000','2019-12-15','2020-12-20','2400','10842941874'),('20',NULL,'','0000-00-00','0000-00-00',NULL,'22411011642'),('21','3000','60.000','2019-12-15','2020-12-20','3000','24161299622'),('22','3000','60.000','2019-12-15','2020-12-20','3000','24451521846'),('23','3000','60.000','2019-12-15','2020-12-20','3000','28067791976'),('24','3000','60.000','2019-12-15','2020-12-20','3000','29617596904'),('25','3000','60.000','2019-12-15','2020-12-20','3000','29620352122'),('26','3000','60.000','2019-12-15','2020-12-20','3000','30748498104'),('27','3000','60.000','2019-12-15','2020-12-20','3000','31789830144'),('28','3000','60.000','2019-12-15','2020-12-20','3000','33164816866'),('29','3000','60.000','2019-12-15','2020-12-20','3000','33188647774'),('3','2500','48.000','2019-12-15','2020-12-20','2400','12043941318'),('30','3000','60.000','2019-12-15','2020-12-20','3000','34416074010'),('31',NULL,'','0000-00-00','0000-00-00',NULL,'35625236350'),('32','3000','60.000','2019-12-15','2020-12-20','3000','35942947946'),('33','3000','60.000','2019-12-15','2020-12-20','3000','36459619586'),('34','3000','60.000','2019-12-15','2020-12-20','3000','38099947920'),('35','3000','60.000','2019-12-15','2020-12-20','3000','39375686816'),('36','3000','60.000','2019-12-15','2020-12-20','3000','39416734940'),('37','3000','60.000','2019-12-15','2020-12-20','3000','39676611166'),('38','3000','60.000','2019-12-15','2020-12-20','3000','40437026624'),('39',NULL,'','0000-00-00','0000-00-00',NULL,'42809282690'),('4','2500','48.000','2019-12-15','2020-12-20','2400','12827184610'),('40',NULL,'','0000-00-00','0000-00-00',NULL,'44550111618'),('41','3500','68.000','2019-12-15','2020-12-20','3400','44609391916'),('42','3500','68.000','2019-12-15','2020-12-20','3400','44719755158'),('43','3500','68.000','2019-12-15','2020-12-20','3400','47980628060'),('44','3500','68.000','2019-12-15','2020-12-20','3400','48273549338'),('45',NULL,'','0000-00-00','0000-00-00',NULL,'49017451214'),('46',NULL,'','0000-00-00','0000-00-00','','49184534604'),('47',NULL,'','0000-00-00','0000-00-00',NULL,'51071127622'),('48',NULL,'','0000-00-00','0000-00-00',NULL,'51184083594'),('49',NULL,'','0000-00-00','0000-00-00',NULL,'51580079870'),('5','2500','48.000','2019-12-15','2020-12-20','2400','13335379352'),('50',NULL,'','0000-00-00','0000-00-00',NULL,'52225257202'),('51','4000','75.000','2019-12-15','2020-12-20','3750','54036229034'),('52','4000','75.000','2019-12-15','2020-12-20','3750','54794556038'),('53','4000','75.000','2019-12-15','2020-12-20','3750','56048359662'),('54','4000','75.000','2019-12-15','2020-12-20','3750','57008697596'),('55','4000','75.000','2019-12-15','2020-12-20','3750','58375489920'),('56','4000','75.000','2019-12-15','2020-12-20','3750','58925384880'),('57','4000','75.000','2019-12-15','2020-12-20','3750','61407576130'),('58','4000','75.000','2019-12-15','2020-12-20','3750','61481495648'),('59','4000','75.000','2019-12-15','2020-12-20','3750','63172355620'),('6','2500','48.000','2019-12-15','2020-12-20','2400','13512199742'),('60','4000','75.000','2019-12-15','2020-12-20','3750','64806731780'),('61',NULL,'','0000-00-00','0000-00-00',NULL,'66737401374'),('62',NULL,'','0000-00-00','0000-00-00',NULL,'67506672650'),('63',NULL,'','0000-00-00','0000-00-00',NULL,'70139247812'),('64','4000','75.000','2019-12-15','2020-12-20','3750','72965017782'),('65','4000','75.000','2019-12-15','2020-12-20','3750','73658464036'),('66',NULL,'','2019-12-15','2020-12-20',NULL,'74057246094'),('67','4000','75.000','2019-12-15','2020-12-20','3750','74469020596'),('68',NULL,'','0000-00-00','0000-00-00',NULL,'74636359788'),('69',NULL,'','0000-00-00','0000-00-00',NULL,'74974057834'),('7','2500','48.000','2019-12-15','2020-12-20','2400','13769377160'),('70',NULL,'','2019-12-15','2020-12-20',NULL,'77062630056'),('71','4000','75.000','2019-12-15','2020-12-20','3750','77212405008'),('72','4000','75.000','2019-12-15','2020-12-20','3750','77796001030'),('73',NULL,'','0000-00-00','0000-00-00',NULL,'78122839044'),('74',NULL,'','0000-00-00','0000-00-00',NULL,'78632184368'),('75','4000','75.000','2019-12-15','2020-12-20','3750','78741290592'),('76','4000','75.000','2019-12-15','2020-12-20','3750','79234917866'),('77','4000','75.000','2019-12-15','2020-12-20','3750','79757598726'),('78','4000','75.000','2019-12-15','2020-12-20','3750','79858419180'),('79','4000','75.000','2019-12-15','2020-12-20','3750','80227794616'),('8','2500','48.000','2019-12-15','2020-12-20','2400','13808136628'),('80',NULL,'','0000-00-00','0000-00-00',NULL,'82090409888'),('81',NULL,'','0000-00-00','0000-00-00',NULL,'82615535566'),('82',NULL,'','0000-00-00','0000-00-00',NULL,'82685875166'),('83','4000','75.000','2019-12-15','2020-12-20','3750','82855878898'),('84','4000','75.000','2019-12-15','2020-12-20','3750','84962590564'),('85','4000','75.000','2019-12-15','2020-12-20','3750','85174528246'),('86',NULL,'','0000-00-00','0000-00-00',NULL,'86616707786'),('87',NULL,'','0000-00-00','0000-00-00',NULL,'88406144016'),('88','4000','75.000','2019-12-15','2020-12-20','3750','88453947042'),('89','4000','75.000','2019-12-15','2020-12-20','3750','90354107548'),('9','2500','48.000','2019-12-15','2020-12-20','2400','14751469108'),('90',NULL,'','0000-00-00','0000-00-00',NULL,'91247047712'),('91',NULL,'','0000-00-00','0000-00-00',NULL,'92672901488'),('92','4000','75.000','2019-12-15','2020-12-20','3750','94080091584'),('93',NULL,'','0000-00-00','0000-00-00',NULL,'94793760746'),('94','4000','75.000','2019-12-15','2020-12-20','3750','94846659966'),('95',NULL,'','0000-00-00','0000-00-00',NULL,'95385659370'),('96','4000','75.000','2019-12-15','2020-12-20','3750','96077540716'),('97','4000','75.000','2019-12-15','2020-12-20','3750','97171875476'),('98','4000','75.000','2019-12-15','2020-12-20','3750','97709478438'),('99','4000','75.000','2019-12-15','2020-12-20','3750','98806969904');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `id_tenant` char(5) NOT NULL,
  `tenant_name` varchar(45) NOT NULL,
  `tenant_surname` varchar(45) NOT NULL,
  `tenant_email` varchar(45) NOT NULL,
  `tenant_phone` char(15) NOT NULL,
  `FK_iid_lease` char(5) NOT NULL,
  PRIMARY KEY (`id_tenant`),
  UNIQUE KEY `id_tenant_UNIQUE` (`id_tenant`),
  UNIQUE KEY `tenant_email_UNIQUE` (`tenant_email`),
  UNIQUE KEY `tenant_phone_UNIQUE` (`tenant_phone`),
  KEY `FK_iid_lease_idx` (`FK_iid_lease`),
  CONSTRAINT `FK_iid_lease` FOREIGN KEY (`FK_iid_lease`) REFERENCES `lease` (`id_lease`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES ('101','Oğuz','Atay','oguzatay@gmail.com','(0552)-3239800','1'),('102','Kenan','Keres','kenan@hotmail.com.tr','(0523)-5677890','2'),('103','Deren','Kılım','deren@gmail.com','(0541)-0004630','3'),('104','Fırat','Albayram','fıraat@hotmail.com','(0538)-3451252','4'),('105','Orhan','Pamuk','orhanpamuk@gmail.com','(0545)-4663729','5'),('106','Samet','Satılmış','samet@hotmail.com','(0553)-2353856','6'),('107','Mert','Yatkın','mertyatkın@gmail.com','(0549)-6657493','7'),('108','İpek','Sel','ipeksel@gmail.com','(0505)-7317841','8'),('109','Orhan','Kelek','orhan@hotmail.com.tr','(0578)-2389730','9'),('110','Serra','Sakkent','serrasakkent@hotmail.com.tr','(0532)-4568732','10'),('111','Sait Faik','Abasıyanık','saitfaik@gmail.com','(0585)-9884032','11'),('112','Ahmet Temel','Tek','temel@hotmail.com.tr','(0506)-0689739','12'),('113','Faruk','Seffetgiller','farukk@gmail.com','(0547)-4355219','13'),('114','Rıza','Yelkenli','rızaa@gmail.com','(0597)-6554678','14'),('115','Vehbi','Ülke','vehbiulke@hotmail.com.tr','(0555)-0987421','15'),('116','Koray','Dağ','korayy@gmail.com','(0530)-9624300','16'),('117','Burhan','Altın','burhan@hotmail.com.tr','(0535)-9008535','17'),('118','Ceyda','Kasabalı','ceyda22@hotmail.com','(0553)-2256118','18'),('119','Reşat Nuri','Güntekin','resatnuri@gmail.com','(0585)-8939902','19'),('120','Handan','İlet','handan@hotmail.com','(0531)-4230111','20'),('121','Adnan','Yörük','adnan@hotmail.com','(0505)-4532778','21'),('122','Muhammed','Alken','muhammedalken@gmail.com','(0548)-8990422','22'),('123','Hayri','Necdet','hayrii@gmail.com','(0541)-9998454','23'),('124','Selda','Kerim','selda@gmail.com','(0534)-1233214','24'),('125','Muzaffer','Pakke','muzafferpakke@hotmail.com.tr','(0545)-0981202','25'),('126','Fetih','Şifa','fetihsifa@hotmail.com.tr','(0555)-6788900','26'),('127','Cemal','Süreya','cemall@gmail.com','(0548)-0092120','27'),('128','Seda','Bakan','bakan@hotmail.com.tr','(0542)-6010591','28'),('129','Kenan','İmam','kenannn@hotmail.com.tr','(0538)-8211860','29'),('130','Alp','Akdeniz','alpakdeniz@hotmail.com.tr','(0542)-9908754','30'),('131','Remzi','Tekil','remzi@gmail.com','(0537)-5558313','31'),('132','Serap','Laleliler','serap@hotmail.com','(0531)-5647894','32');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_information_`
--

DROP TABLE IF EXISTS `visitor_information_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_information_` (
  `id_visitor_information` char(5) NOT NULL,
  `visitor_information_login` date NOT NULL,
  `visitor_information_exit` date NOT NULL,
  `visitor_information_name` varchar(45) NOT NULL,
  `visitor_information_surname` varchar(45) NOT NULL,
  `visitor_information_phone` char(15) NOT NULL,
  `FK_id_membeer_` char(11) NOT NULL,
  `FK_door_numbeer_` varchar(10) NOT NULL,
  PRIMARY KEY (`id_visitor_information`),
  UNIQUE KEY `id_visitor_information_UNIQUE` (`id_visitor_information`),
  KEY `FK_id_membeer__idx` (`FK_id_membeer_`),
  KEY `FK_door_numbeer__idx` (`FK_door_numbeer_`),
  CONSTRAINT `FK_door_numbeer_` FOREIGN KEY (`FK_door_numbeer_`) REFERENCES `home_information` (`door_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_id_membeer_` FOREIGN KEY (`FK_id_membeer_`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_information_`
--

LOCK TABLES `visitor_information_` WRITE;
/*!40000 ALTER TABLE `visitor_information_` DISABLE KEYS */;
INSERT INTO `visitor_information_` VALUES ('901','2021-12-15','2021-12-15','Ahmet','Sefat','(0502)-3235200','10139312820','A1/1'),('902','2021-09-29','2021-09-29','Volkan','Keskici','(0552)-3236720','18857191000','A2/7'),('903','2021-03-09','2021-03-10','Sertaç','Çetin','(0571)-3778292','56048359662','C2/3'),('904','2021-12-10','2021-12-10','Sevda','Mehal','(0505)-3232200','74469020596','D1/7'),('905','2021-02-15','2021-02-15','Serra','Laren','(0552)-7783920','82090409888','D2/10'),('906','2022-01-01','2022-01-04','Sacit','Şahin','(0585)-3538921','96077540716','E2/6'),('907','2022-01-03','2022-01-03','Sevda','Mehal','(0505)-3232200','56048359662','C2/3'),('908','2022-01-01','2022-01-01','Hikmet','Can','(0555)-3238399','49017451214','C1/5'),('909','2022-01-05','2022-01-05','Hakan','Melül','(0532)-7780020','49017451214','C1/5');
/*!40000 ALTER TABLE `visitor_information_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-05 20:37:41
