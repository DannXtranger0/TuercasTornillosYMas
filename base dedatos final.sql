-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tuercastornillos
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `contacto` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_productos`
--

DROP TABLE IF EXISTS `estados_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombrre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_productos`
--

LOCK TABLES `estados_productos` WRITE;
/*!40000 ALTER TABLE `estados_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_usuarios`
--

DROP TABLE IF EXISTS `estados_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados_usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_usuarios`
--

LOCK TABLES `estados_usuarios` WRITE;
/*!40000 ALTER TABLE `estados_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` decimal(7,3) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `id_categorias_idx` (`id_categoria`),
  KEY `id_estado_producto_idx` (`id_estado`),
  CONSTRAINT `id_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `id_estado_producto` FOREIGN KEY (`id_estado`) REFERENCES `estados_productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_proveedores`
--

DROP TABLE IF EXISTS `productos_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_proveedores` (
  `id_proveedor` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  KEY `id_proveedor_idx` (`id_proveedor`),
  KEY `id_producto_idx` (`id_producto`),
  CONSTRAINT `id_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `id_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_proveedores`
--

LOCK TABLES `productos_proveedores` WRITE;
/*!40000 ALTER TABLE `productos_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `contacto` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_rol` int DEFAULT NULL,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_rol_idx` (`id_rol`),
  KEY `id_estado_usuario_idx` (`id_estado`),
  CONSTRAINT `id_estado_usuario` FOREIGN KEY (`id_estado`) REFERENCES `estados_usuarios` (`id`),
  CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `fecha_venta` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_productos`
--

DROP TABLE IF EXISTS `ventas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_productos` (
  `id_venta` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad_venta` int DEFAULT NULL,
  KEY ` id_venta_idx` (`id_venta`),
  KEY `id_producto_idx` (`id_producto`),
  CONSTRAINT ` id_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`),
  CONSTRAINT `id_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_productos`
--

LOCK TABLES `ventas_productos` WRITE;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 12:48:51
