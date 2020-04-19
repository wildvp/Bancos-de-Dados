/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : tv a cabo2

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 19/04/2020 13:53:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for canais
-- ----------------------------
DROP TABLE IF EXISTS `canais`;
CREATE TABLE `canais`  (
  `COD_CANAL` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_CANAL` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `NUMERO_CANAL` int(50) NULL DEFAULT NULL,
  `TIPO_CANAL` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DESCRICAO_CANAL` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `PCT_BASICO` bit(1) NULL DEFAULT NULL,
  `PCT_MEDIO` bit(1) NULL DEFAULT NULL,
  `PCT_PREMIUM` bit(1) NULL DEFAULT NULL,
  `PCT_FULL` bit(1) NULL DEFAULT NULL,
  `PCT_ESPORTES` bit(1) NULL DEFAULT NULL,
  `PCT_MOVIE` bit(1) NULL DEFAULT NULL,
  `PCT_PREMIERE` bit(1) NULL DEFAULT NULL,
  `PCT_SERIES` bit(1) NULL DEFAULT NULL,
  `PCT_STUDENT` bit(1) NULL DEFAULT NULL,
  `PCT_NEWS` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`COD_CANAL`) USING BTREE,
  UNIQUE INDEX `COD_CANAL`(`COD_CANAL`) USING BTREE,
  INDEX `PCT_BASICO`(`PCT_BASICO`) USING BTREE,
  INDEX `PCT_MEDIO`(`PCT_MEDIO`) USING BTREE,
  INDEX `PCT_FULL`(`PCT_FULL`) USING BTREE,
  INDEX `PCT_ESPORTES`(`PCT_ESPORTES`) USING BTREE,
  INDEX `PCT_PREMIUM`(`PCT_PREMIUM`) USING BTREE,
  INDEX `PCT_MOVIE`(`PCT_MOVIE`) USING BTREE,
  INDEX `PCT_PREMIERE`(`PCT_PREMIERE`) USING BTREE,
  INDEX `PCT_SERIES`(`PCT_SERIES`) USING BTREE,
  INDEX `PCT_NEWS`(`PCT_NEWS`) USING BTREE,
  INDEX `PCT_STUDENT`(`PCT_STUDENT`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 292 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ENDERECO` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BAIRRO` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CIDADE` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UF` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TELEFONE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CELULAR` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EMAIL` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`COD_CLIENTE`) USING BTREE,
  UNIQUE INDEX `COD_CLIENTE`(`COD_CLIENTE`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for contratos
-- ----------------------------
DROP TABLE IF EXISTS `contratos`;
CREATE TABLE `contratos`  (
  `COD_CONTRATO` int(11) NOT NULL AUTO_INCREMENT,
  `COD_CLIENTE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `END_INSTAL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BAIRRO_INSTAL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CIDADE_INSTAL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UF_INSTAL` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PCT_BASICO` bit(1) NULL DEFAULT NULL,
  `PCT_MEDIO` bit(1) NULL DEFAULT NULL,
  `PCT_PREMIUM` bit(1) NULL DEFAULT NULL,
  `PCT_FULL` bit(1) NULL DEFAULT NULL,
  `PCT_ESPORTES` bit(1) NULL DEFAULT NULL,
  `PCT_MOVIE` bit(1) NULL DEFAULT NULL,
  `PCT_PREMIERE` bit(1) NULL DEFAULT NULL,
  `PCT_SERIES` bit(1) NULL DEFAULT NULL,
  `PCT_STUDENT` bit(1) NULL DEFAULT NULL,
  `PCT_NEWS` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`COD_CONTRATO`) USING BTREE,
  INDEX `PCT_BASICO`(`PCT_BASICO`) USING BTREE,
  INDEX `PCT_MEDIO`(`PCT_MEDIO`) USING BTREE,
  INDEX `PCT_FULL`(`PCT_FULL`) USING BTREE,
  INDEX `PCT_ESPORTES`(`PCT_ESPORTES`) USING BTREE,
  INDEX `PCT_PREMIUM`(`PCT_PREMIUM`) USING BTREE,
  INDEX `PCT_MOVIE`(`PCT_MOVIE`) USING BTREE,
  INDEX `PCT_PREMIERE`(`PCT_PREMIERE`) USING BTREE,
  INDEX `PCT_SERIES`(`PCT_SERIES`) USING BTREE,
  INDEX `PCT_NEWS`(`PCT_NEWS`) USING BTREE,
  INDEX `PCT_STUDENT`(`PCT_STUDENT`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 50001 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for fisico
-- ----------------------------
DROP TABLE IF EXISTS `fisico`;
CREATE TABLE `fisico`  (
  `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `COD_CLIENTE`(`COD_CLIENTE`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for juridico
-- ----------------------------
DROP TABLE IF EXISTS `juridico`;
CREATE TABLE `juridico`  (
  `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `COD_CLIENTE`(`COD_CLIENTE`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctbasico
-- ----------------------------
DROP TABLE IF EXISTS `pctbasico`;
CREATE TABLE `pctbasico`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctesportes
-- ----------------------------
DROP TABLE IF EXISTS `pctesportes`;
CREATE TABLE `pctesportes`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctfull
-- ----------------------------
DROP TABLE IF EXISTS `pctfull`;
CREATE TABLE `pctfull`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctmedio
-- ----------------------------
DROP TABLE IF EXISTS `pctmedio`;
CREATE TABLE `pctmedio`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctmovie
-- ----------------------------
DROP TABLE IF EXISTS `pctmovie`;
CREATE TABLE `pctmovie`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctnews
-- ----------------------------
DROP TABLE IF EXISTS `pctnews`;
CREATE TABLE `pctnews`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctpremiere
-- ----------------------------
DROP TABLE IF EXISTS `pctpremiere`;
CREATE TABLE `pctpremiere`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctpremium
-- ----------------------------
DROP TABLE IF EXISTS `pctpremium`;
CREATE TABLE `pctpremium`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctseries
-- ----------------------------
DROP TABLE IF EXISTS `pctseries`;
CREATE TABLE `pctseries`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pctstudent
-- ----------------------------
DROP TABLE IF EXISTS `pctstudent`;
CREATE TABLE `pctstudent`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
