-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_mysql_connector
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tbl_itens_receita`
--

DROP TABLE IF EXISTS `tbl_itens_receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_itens_receita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_receita` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `qtd` int DEFAULT NULL,
  `obs` longtext,
  PRIMARY KEY (`id`),
  KEY `id_prod_idx` (`id_produto`),
  KEY `id_receita_idx` (`id_receita`),
  CONSTRAINT `id_prod` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produtos` (`id`),
  CONSTRAINT `id_receita` FOREIGN KEY (`id_receita`) REFERENCES `tbl_receitas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_itens_receita`
--

LOCK TABLES `tbl_itens_receita` WRITE;
/*!40000 ALTER TABLE `tbl_itens_receita` DISABLE KEYS */;
INSERT INTO `tbl_itens_receita` VALUES (1,1,1,2,NULL),(2,1,2,3,NULL),(3,1,3,1,NULL),(4,1,4,5,NULL),(5,1,5,2,NULL),(7,2,2,1,NULL),(8,2,12,1,NULL),(9,2,13,1,NULL),(10,3,1,2,NULL),(11,3,3,1,NULL),(12,3,4,1,NULL),(13,3,5,1,NULL),(14,3,6,1,NULL),(15,3,17,1,NULL),(16,4,1,5,NULL),(17,4,2,1,NULL),(18,4,5,2,NULL),(19,4,22,2,NULL),(20,5,2,1,NULL),(21,5,3,1,NULL),(22,5,26,1,NULL),(23,5,21,1,NULL),(24,5,19,2,NULL),(25,6,1,2,NULL),(26,6,2,2,NULL),(27,6,3,1,NULL),(28,6,5,2,NULL),(29,6,6,1,NULL),(30,6,26,1,NULL),(31,6,24,2,NULL),(32,7,2,5,NULL),(33,7,1,3,NULL),(34,7,4,1,NULL),(35,7,5,1,NULL),(36,7,26,1,NULL),(37,7,18,5,NULL),(38,7,19,5,NULL);
/*!40000 ALTER TABLE `tbl_itens_receita` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-30 14:02:07