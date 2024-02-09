CREATE DATABASE  IF NOT EXISTS `bd_almacen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_almacen`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_almacen
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tb_articulos`
--

DROP TABLE IF EXISTS `tb_articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_articulos` (
  `codigo_ar` int NOT NULL AUTO_INCREMENT,
  `descripcion_ar` varchar(100) DEFAULT NULL,
  `marca_ar` varchar(50) DEFAULT NULL,
  `codigo_um` int DEFAULT NULL,
  `codigo_ca` int DEFAULT NULL,
  `stock_actual` decimal(10,2) DEFAULT NULL,
  `fecha_crea` date DEFAULT NULL,
  `fecha_modifica` date DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_ar`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_articulos`
--

LOCK TABLES `tb_articulos` WRITE;
/*!40000 ALTER TABLE `tb_articulos` DISABLE KEYS */;
INSERT INTO `tb_articulos` VALUES (1,'ESCRITORIO','NO DEFINIDO',1,3,0.00,'2022-09-06','2022-09-08',_binary ''),(2,'MUEBLES','NO DEFINIDO',1,1,1.00,'2022-09-07','2022-09-07',_binary ''),(3,'aafafaf','afafafafaa',1,1,1.00,'2022-09-07','2022-09-07',_binary '\0'),(4,'rwrwrwrw','rwrwrwrw',1,1,4.00,'2022-09-07','2022-09-07',_binary ''),(5,'SILLA','NO DEFINIDO',1,1,0.00,'2022-09-08','2022-09-08',_binary ''),(6,'ADADD','FQFQF',2,3,0.00,'2022-09-08','2022-09-08',_binary ''),(7,'Dd','dD',2,2,0.00,'2022-09-08','2022-09-08',_binary '');
/*!40000 ALTER TABLE `tb_articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categorias` (
  `codigo_ca` int NOT NULL AUTO_INCREMENT,
  `descripcion_ca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_ca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'OFICINAS'),(2,'HOGAR'),(3,'DECORACIONES');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_unidades_medidas`
--

DROP TABLE IF EXISTS `tb_unidades_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_unidades_medidas` (
  `codigo_um` int NOT NULL AUTO_INCREMENT,
  `descripcion_um` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_um`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_unidades_medidas`
--

LOCK TABLES `tb_unidades_medidas` WRITE;
/*!40000 ALTER TABLE `tb_unidades_medidas` DISABLE KEYS */;
INSERT INTO `tb_unidades_medidas` VALUES (1,'UNIDADES'),(2,'KILOGRAMOS'),(3,'METROS'),(4,'LITROS'),(5,'CAJAS'),(6,'PIEZAS');
/*!40000 ALTER TABLE `tb_unidades_medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_almacen'
--

--
-- Dumping routines for database 'bd_almacen'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-08 10:11:57
