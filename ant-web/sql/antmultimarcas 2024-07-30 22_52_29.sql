-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para antmultimarcas
CREATE DATABASE IF NOT EXISTS `antmultimarcas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `antmultimarcas`;

-- Copiando estrutura para tabela antmultimarcas.estoque
CREATE TABLE IF NOT EXISTS `estoque` (
  `id` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Versão` varchar(50) DEFAULT NULL,
  `Ano` varchar(50) DEFAULT NULL,
  `Km` varchar(50) DEFAULT NULL,
  `Cor` varchar(50) DEFAULT NULL,
  `Valor` varchar(50) DEFAULT NULL,
  `Custo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela antmultimarcas.estoque: ~3 rows (aproximadamente)
DELETE FROM `estoque`;
INSERT INTO `estoque` (`id`, `Modelo`, `Versão`, `Ano`, `Km`, `Cor`, `Valor`, `Custo`) VALUES
	('1', 'HB20s', 'S 1.0 CONFORT', '2018/2019', '85.000', 'BRANCA', 'R$ 59.900,00', 'R$ 52.500,00'),
	('2', 'IX35', 'GLS B', '2015', '87.000', 'PRATA', 'R$ 71.900,00', 'R$ 71.000,00'),
	('3', 'ONIX', 'JOY', '2019', '86.000', 'BRANCA', 'R$ 51.900,00', 'R$ 45.000,00');

-- Copiando estrutura para tabela antmultimarcas.logins
CREATE TABLE IF NOT EXISTS `logins` (
  `Login` text DEFAULT NULL,
  `Senhas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela antmultimarcas.logins: ~2 rows (aproximadamente)
DELETE FROM `logins`;
INSERT INTO `logins` (`Login`, `Senhas`) VALUES
	('arthurVXV', '1402'),
	('victorVXV', '1402');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
