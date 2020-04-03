/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : tvacabo

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 02/04/2020 09:32:22
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
) ENGINE = MyISAM AUTO_INCREMENT = 292 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canais
-- ----------------------------
INSERT INTO `canais` VALUES (1, 'Playboy TV', 281, 'Adulto', 'Conteudo Adulto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (2, 'Sextreme', 282, 'Adulto', 'Conteudo Adulto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (3, 'Venus', 284, 'Adulto', 'Conteudo Adulto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (4, 'Sexy Hot', 285, 'Adulto', 'Conteudo Adulto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (5, 'Playboy HD', 781, 'Adulto', 'Conteudo Adulto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (6, 'Futura', 34, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (7, 'National Geographic', 80, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (8, 'Discovery Channel', 81, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (9, 'Animal Planet', 82, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (10, 'The History Channel', 83, 'Documentário', 'Documentários Civilizações e História', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (11, 'Discovery Turbo', 84, 'Documentário', 'DocumentarCarros e Motores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (12, 'Discovery Science', 85, 'Documentário', 'Documentários Ciências', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (13, 'Natgeo Wild', 91, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (14, 'Discovery HD', 581, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (15, 'Futura HD', 534, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (16, 'National Geographic HD', 580, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (17, 'Animal Planet HD', 582, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (18, 'The History Channel HD', 583, 'Documentário', 'Documentários Civilizações e História', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (19, 'Discovery Turbo HD', 584, 'Documentário', 'DocumentarCarros e Motores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (20, 'Discovery Science HD', 585, 'Documentário', 'Documentários Ciências', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (21, 'Natgeo Wild HD', 591, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (22, 'Love Nature HD', 589, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (23, 'Smithsonian HD', 590, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (24, 'Discovery World HD', 593, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (25, 'Discovery Theater HD', 592, 'Documentário', 'Documentários curiosidades diversas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (26, 'History 2 HD', 590, 'Documentário', 'Documentários Vida Animal / Natureza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (27, 'Multishow', 42, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (28, 'BIS', 120, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (29, 'MTV', 121, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (30, 'Play TV', 122, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (31, 'Music Box Brazil', 123, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (32, 'VH1 Megahits', 126, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (33, 'Multishow HD', 542, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (34, 'BIS HD', 620, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (35, 'MTV HD', 621, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (36, 'MTV Live HD', 621, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (37, 'Music Box Brazil HD', 623, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (38, 'VH1 Megahits HD', 625, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (39, 'NGT', 17, 'Entretenimento / Música', 'Shows e clipes musicais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (40, 'SporTV 3', 37, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (41, 'SporTV 2', 38, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (42, 'SporTV', 39, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (43, 'ESPN Brasil', 70, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (44, 'ESPN', 71, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (45, 'Fox Sports', 73, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (46, 'Fox Sports 2', 74, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (47, 'Band Sports', 75, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (48, 'SporTV 3 HD', 537, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (49, 'SporTV 2 HD', 538, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (50, 'SporTV HD', 539, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (51, 'ESPN Brasil HD', 570, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (52, 'ESPN HD', 571, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (53, 'ESPN 2 HD', 572, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (54, 'Fox Sports HD', 573, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (55, 'Fox Sports 2 HD', 574, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (56, 'Band Sports HD', 575, 'Esportes', 'Competições e noticiários esportivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (57, 'Canal Brasil', 150, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (58, 'TNT', 151, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (59, 'Megapix', 152, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (60, 'Space', 154, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (61, 'Cinemax', 155, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (62, 'Prime Box Brazil', 156, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (63, 'Studio Universal', 157, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (64, 'Paramount', 158, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (65, 'TCM', 159, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (66, 'Telecine Premium', 161, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (67, 'Telecine Actinon', 162, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (68, 'Telecine Touch', 163, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (69, 'Telecine Fun', 164, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (70, 'Telecine Pipoca', 165, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (71, 'Telecine Cult', 166, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (72, 'HBO', 171, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (73, 'HBO 2', 172, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (74, 'HBO +', 173, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (75, 'HBO Family', 175, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (76, 'HBO Signature', 176, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (77, 'HBO Pop', 177, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (78, 'HBO Mundi', 178, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (79, 'HBO XTreme', 179, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (80, 'HBO HD', 671, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (81, 'HBO HD2', 672, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (82, 'TNT HD', 651, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (83, 'Megapix HD', 652, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (84, 'Space HD', 654, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (85, 'Cinemax HD', 655, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (86, 'Prime Box Brazil HD', 656, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (87, 'Studio Universal HD', 657, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (88, 'Paramount HD', 658, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (89, 'Telecine Premium HD', 661, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (90, 'Telecine Actinon HD', 662, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (91, 'Telecine Touch HD', 663, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (92, 'Telecine Fun HD', 664, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (93, 'Telecine Pipoca HD', 665, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (94, 'Telecine Cult HD', 666, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (95, 'HBO + HD', 673, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (96, 'HBO Family HD', 675, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (97, 'HBO Signature HD', 676, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (98, 'HBO POP HD', 677, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (99, 'HBO Mundi HD', 678, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (100, 'HBO XTreme HD', 679, 'Filmes', 'Filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (101, 'Discovery Kids', 100, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (102, 'Gloob', 101, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (103, 'Disney Channel', 102, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (104, 'Nickelodeon', 103, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (105, 'Cartoon Network', 104, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (106, 'Disney XD', 105, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (107, 'Disney JR', 106, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (108, 'Nick Jr.', 107, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (109, 'Boomerang', 108, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (110, 'TV Rá Tim Bum', 109, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (111, 'Tooncast', 110, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (112, 'Baby Tv', 111, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (113, 'Discovery Kids HD', 600, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (114, 'Gloob HD', 601, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (115, 'Disney Channel HD', 602, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (116, 'Nickelodeon HD', 603, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (117, 'Cartoon Network HD', 604, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (118, 'Nick Jr HD', 607, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (119, 'Boomerang HD', 608, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (120, 'TV Rá Tim Bum HD', 609, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (121, 'Nat Geo Kids HD', 612, 'infantil', 'Programação infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (122, 'CNN International', 200, 'Notícias Mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (123, 'CNN Brasil', 77, 'Notícias', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (124, 'CNN Brasil HD', 577, 'Notícias', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (125, 'Bloomberg TV', 201, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (126, 'BBC World News', 202, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (127, 'RAI International', 203, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (128, 'TV5 Monde', 204, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (129, 'TVE International.', 205, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (130, 'DW-TV', 206, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (131, 'NHK World Premium', 207, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (132, 'SIC International', 208, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (133, 'TV Korea', 209, 'notícias mundo', 'notícias mundo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (134, 'Globonews', 40, 'Notícias', 'notícias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (135, 'Record News', 78, 'notícias', 'notícias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (136, 'Band News', 79, 'notícias', 'notícias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (137, 'CGTN', 699, 'notícias', 'notícias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (138, 'Globonews HD', 540, 'Notícias', 'notícias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (139, 'Band News HD', 579, 'notícias', 'notícias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (140, 'Premiere Clubes HD', 721, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (141, 'Premiere HD 2', 722, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (142, 'Premiere HD 3', 723, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (143, 'Premiere HD 4', 724, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (144, 'Premiere HD 5', 725, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (145, 'Premiere HD 6', 726, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (146, 'Premiere HD 7', 727, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (147, 'Combate HD', 740, 'Esportes', 'Lutas MMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (148, 'Premiere Clubes', 221, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (149, 'Premiere 2', 222, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (150, 'Premiere 3', 223, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (151, 'Premiere 4', 224, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (152, 'Premiere 5', 225, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (153, 'Premiere 6', 226, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (154, 'Premiere 7', 227, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (155, 'Premiere 7', 228, 'Esportes', 'Esportes Premiere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (156, 'Combate', 240, 'Esportes', 'Lutas MMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (157, 'Universal TV HD', 630, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (158, 'Fox HD', 631, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (159, 'Warner HD', 632, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (160, 'Sony HD', 633, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (161, 'FX HD', 634, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (162, 'AXN HD', 635, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (163, 'TBS HD', 636, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (164, 'Comedy Central HD', 637, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (165, 'A&E HD', 638, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (166, 'ID HD', 639, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (167, 'Syfy HD', 640, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (168, 'Lifetime HD', 641, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (169, 'TNT Séries HD', 643, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (170, 'Fox Premium 1 HD', 681, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (171, 'Fox Premium 2 HD', 682, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (172, 'Universal TV', 130, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (173, 'Fox', 131, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (174, 'Warner', 132, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (175, 'Sony', 133, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (176, 'FX', 134, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (177, 'AXN', 135, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (178, 'TBS', 136, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (179, 'Comedy Central', 137, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (180, 'A&E', 138, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (181, 'ID', 139, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (182, 'Syfy', 140, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (183, 'Lifetime', 141, 'Séries', 'Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (184, 'TV Max', 25, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (185, 'TV Max HD', 525, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (186, 'Multi Rio', 26, 'Educativo', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (187, 'Off', 35, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (188, 'GNT', 41, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (189, 'Mais Globosat', 44, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (190, 'E!', 50, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (191, 'Food Network', 54, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (192, 'Discovery Home & Health', 55, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (193, 'Curta!', 56, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (194, 'HGTV', 60, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (195, 'Woohoo', 65, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (196, 'AMC', 145, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (197, 'Films & Arts HD', 648, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (198, 'Films & Arts', 148, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (199, 'SBN', 188, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (200, 'Viva', 43, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (201, 'TLC', 52, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (202, 'Arte 1', 53, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (203, 'FISH TV', 58, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (204, 'HGTV HD', 560, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (205, 'Woohoo HD', 565, 'Viagens', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (206, 'Fox Life', 144, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (207, 'Off HD', 535, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (208, 'GNT HD', 541, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (209, 'Viva HD', 543, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (210, 'Mais Globosat HD', 544, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (211, 'E! HD', 550, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (212, 'TLC HD', 552, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (213, 'Arte 1 HD', 553, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (214, 'Food Network HD', 554, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (215, 'Discovery Home & Health HD', 555, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (216, 'Curta! HD', 556, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (217, 'Dog TV HD', 559, 'Variedades', 'Pets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (218, 'Fox Life HD', 644, 'Variedades', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (219, 'RIT TV', 3, 'Religioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (220, 'TV Jockey', 4, 'Jockey', 'Jockey Club Brasileiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (221, 'TVC', 6, 'Estudantil', 'Conteúdo Estudantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (222, 'TV Senado', 8, 'Político', 'Senado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (223, 'TV Justiça', 9, 'Justiça', 'Documentários de direito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (224, 'TV Câmara', 10, 'Político', 'Senado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (225, 'UTV', 11, 'Uni Rio', 'Programação Universitária', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (226, 'TV Alerj', 12, 'Político', 'Política', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (227, 'TV Cultura', 16, 'Educativo', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (228, 'Polishop TV', 28, 'Vendas', 'Vendas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (229, 'Polishop TV HD', 528, 'Vendas', 'Vendas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (230, 'Shoptime', 29, 'Vendas', 'Vendas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (231, 'Shoptime', 529, 'Vendas', 'Vendas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (232, 'TV Gazeta', 187, 'Vendas', 'Vendas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (233, 'TV Gazeta HD', 687, 'Vendas', 'Vendas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (234, 'Climatempo', 251, 'Notícias', 'Clima e Tempo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (235, 'Mega TV', 543, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (236, 'Rede 21', 544, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (237, 'Ideal TV', 550, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (238, 'Terra Viva', 183, 'Rural', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (239, 'TV Novo Tempo', 184, 'Religioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (240, 'TV Novo Tempo HD', 684, 'Religioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (241, 'Canal Rural', 185, 'Rural', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (242, 'Canal Rural HD', 685, 'Rural', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (243, 'SNB', 644, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (244, 'Canal do Boi', 190, 'Rural', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (245, 'Rede Vida', 193, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (246, 'TV Canção Nova', 194, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (247, 'TV Aparecida', 195, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (248, 'TV Aparecida HD', 695, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (249, 'Boa Vontade TV HD', 556, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (250, 'Tv Aparecida (espelho)', 696, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (251, 'Tv Pai Eterno', 191, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (252, 'Boa Vontade TV', 196, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (253, 'Mega TV HD', 735, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (254, 'Rede Gospel HD', 541, 'Religioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (255, 'Like HD', 530, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (256, 'Fashion TV HD', 551, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (257, 'Travel Box Brasil HD', 557, 'Variedades', 'Viagens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (258, 'FISH TV HD', 558, 'Vendas', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (259, 'ESPN Extra HD', 569, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (260, 'Smithsonian HD', 559, 'Rural', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (261, 'Disney JR HD', 644, 'Cortesia', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (262, 'Zoomoo HD', 613, 'Infantil', 'Programação Infantil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (263, 'AMC HD', 645, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (264, 'Eurochannel HD', 647, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (265, 'Canal Brasil HD', 650, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (266, 'Novo Tempo HD', 556, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (267, 'TV Pai Eterno HD', 691, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (268, 'Ideal TV HD', 556, 'Relgioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (269, 'TV Brasil HD', 531, 'Político', 'Política', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (270, 'TV Brasil 2', 13, 'Político', 'Política', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (271, 'TV Brasil', 18, 'Político', 'Política', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (272, 'TV Escola', 15, 'Educativo', 'Educativo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (273, 'Cultura', 535, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (274, 'SBT', 23, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (275, 'Globo', 19, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (276, 'RecordTV', 24, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (277, 'RedeTV', 20, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (278, 'CNT', 22, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (279, 'CNT HD', 522, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (280, 'Gazeta', 187, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (281, 'Band', 21, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (282, 'LBV Espelho', 696, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (283, 'Cultura HD', 516, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (284, 'SBT HD', 511, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (285, 'Globo HD', 504, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (286, 'Record HD', 513, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (287, 'RedeTV HD', 506, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (288, 'Gazeta HD', 521, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (289, 'Band HD', 507, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (290, 'Rede Vida HD', 693, 'Religioso', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `canais` VALUES (291, 'ZooMoo', 696, 'Aberto', 'Variedades, Séries e filmes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Claudio', 'Rua Samoa 71', 'Vila da Penha', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (2, 'Martha', 'Rua Coronel Vieira 71', 'Iraja', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (3, 'Anderson', 'Rua Leopoldina Seabra, 25', 'Bento Ribeiro', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (4, 'Rogerio', 'Rua Capitao Teixeira', 'Realengo', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (5, 'Adriana', 'Rua da Prata', 'Prata', 'Belford Roxo', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (6, 'Milena', 'Rua Carlos Frahia 71', 'Centro', 'Nova Iguacu', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (7, 'Elson', 'Rua Nilo Pecanha 71', 'Centro', 'Nilopolis', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (8, 'Renata', 'Avenida Mirandela 71', 'Centro', 'Nilopolis', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (9, 'Diana', 'Avenida Padre Roser', 'Iraja', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (10, 'Ana', 'Avenida Monsenhor Felix,26', 'Iraja', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (11, 'Silvia', 'Rua da Gamboa,26', 'Centro', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (12, 'Marcio', 'Rua Cosmorama,26', 'Cosmorama', 'Mesquita', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (13, 'Mariana', 'Rua das Rosas,26', 'Vila Valqueire', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (14, 'Luciana', 'Luiz Beltrao,26', 'Vila Valqueire', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (15, 'Italo', 'Rua Ana Neri,773', 'Olinda', 'Nilopolis', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (16, 'Adriano', 'Rua Andre Azevedo,773', 'Olinda', 'Nilopolis', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (17, 'Adriana', 'Rua da Mangueira, 888', 'Lote 15', 'Belford Roxo', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (18, 'Zelia', 'Travessa da Inspiracao, 776', 'Icarai', 'Niteroi', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (19, 'Eduardo', 'Rua da Matriz, 445', 'Vila Norma', 'Sao Joao de Meriti', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (20, 'Cristina', 'Rua da Matriz, 445', 'Eden', 'Sao Joao de Meriti', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (21, 'Diego', 'Rua Tulipas, 445', 'Jardim Gramacho', 'Duque de Caxias', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (22, 'Ruan', 'Rua das Margaridas, 445', 'Centro', 'Duque de Caxias', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (23, 'Rita', 'Rua Andre Rocha 12', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (24, 'Paula', 'Rua Berilo 15', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (25, 'Carlos', 'Rua Caioba 23', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (26, 'Priscila', 'Rua Campinas do Sul 33', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (27, 'Viviane', 'Rua Consagracao 12', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (28, 'Camila', 'Rua Creso 27', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (29, 'Rosane', 'Rua General Olivio Uzeda 24', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (30, 'Mariana', 'Rua Guirlanda 31', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (31, 'Rosa', 'Rua Gondola 29', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (32, 'Carmem', 'Rua Heraclito 223', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (33, 'Alexandre', 'Rua Olavo Bilac 223', 'Lote XV', 'Belford Roxo', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (34, 'Carla', 'Rua Feliciano Pena 223', 'Vila Emil', 'Mesquita', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (35, 'Marcelo', 'Rua Parque Mambucaba', 'Vila Sao Luiz', 'Nova Iguacu', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (36, 'Vanessa', 'Rua Joao Luiz 223', 'Ramos', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (37, 'Elaine', 'Avenida Cardoso de Moraes, 675', 'Bonsucesso', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (38, 'Luciana', 'Rua Dias da Cruz 223', 'Meier', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (39, 'Elizane', 'costa Leite, 124', 'Curicica', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (40, 'Elisangela', 'Leite Costa 164', 'Centro', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (41, 'Jose ', 'Rio Centro 171', 'Rio Centro', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (42, 'Maria', 'Teodoro 124', 'Vila Isabel', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (43, 'Joao', 'Rua Melancia 02', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (44, 'Marli', 'Jorge Mateus 14', 'Estacio', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (45, 'Ruan', 'Matoso 22', 'Padre Miguel', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (46, 'Nilza', 'Rua Coronel 10', 'Cidade de Deus', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);
INSERT INTO `clientes` VALUES (47, 'Leonardo', 'Tirol', 'Freguesia', 'Rio de Janeiro', 'RJ', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for contratos
-- ----------------------------
DROP TABLE IF EXISTS `contratos`;
CREATE TABLE `contratos`  (
  `COD_CONTRATO` int(11) NOT NULL AUTO_INCREMENT,
  `COD_CLIENTE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CPF` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CNPJ` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
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
  INDEX `CPF`(`CPF`) USING BTREE,
  INDEX `CNPJ`(`CNPJ`) USING BTREE,
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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contratos
-- ----------------------------

-- ----------------------------
-- Table structure for fisico
-- ----------------------------
DROP TABLE IF EXISTS `fisico`;
CREATE TABLE `fisico`  (
  `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `COD_CLIENTE`(`COD_CLIENTE`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fisico
-- ----------------------------

-- ----------------------------
-- Table structure for juridico
-- ----------------------------
DROP TABLE IF EXISTS `juridico`;
CREATE TABLE `juridico`  (
  `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `COD_CLIENTE`(`COD_CLIENTE`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of juridico
-- ----------------------------

-- ----------------------------
-- Table structure for pctbasico
-- ----------------------------
DROP TABLE IF EXISTS `pctbasico`;
CREATE TABLE `pctbasico`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctbasico
-- ----------------------------
INSERT INTO `pctbasico` VALUES (NULL, 'BÁSICO', b'1');

-- ----------------------------
-- Table structure for pctesportes
-- ----------------------------
DROP TABLE IF EXISTS `pctesportes`;
CREATE TABLE `pctesportes`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctesportes
-- ----------------------------
INSERT INTO `pctesportes` VALUES (NULL, 'ESPORTES', b'1');

-- ----------------------------
-- Table structure for pctfull
-- ----------------------------
DROP TABLE IF EXISTS `pctfull`;
CREATE TABLE `pctfull`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctfull
-- ----------------------------
INSERT INTO `pctfull` VALUES (NULL, 'FULL', b'1');
INSERT INTO `pctfull` VALUES (NULL, 'FULL', b'1');

-- ----------------------------
-- Table structure for pctmedio
-- ----------------------------
DROP TABLE IF EXISTS `pctmedio`;
CREATE TABLE `pctmedio`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctmedio
-- ----------------------------
INSERT INTO `pctmedio` VALUES (NULL, 'MEDIO', b'1');

-- ----------------------------
-- Table structure for pctmovie
-- ----------------------------
DROP TABLE IF EXISTS `pctmovie`;
CREATE TABLE `pctmovie`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctmovie
-- ----------------------------
INSERT INTO `pctmovie` VALUES (NULL, 'MOVIE', b'1');

-- ----------------------------
-- Table structure for pctnews
-- ----------------------------
DROP TABLE IF EXISTS `pctnews`;
CREATE TABLE `pctnews`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctnews
-- ----------------------------
INSERT INTO `pctnews` VALUES (NULL, 'NEWS', b'1');

-- ----------------------------
-- Table structure for pctpremiere
-- ----------------------------
DROP TABLE IF EXISTS `pctpremiere`;
CREATE TABLE `pctpremiere`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctpremiere
-- ----------------------------
INSERT INTO `pctpremiere` VALUES (NULL, 'PREMIERE', b'1');

-- ----------------------------
-- Table structure for pctpremium
-- ----------------------------
DROP TABLE IF EXISTS `pctpremium`;
CREATE TABLE `pctpremium`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctpremium
-- ----------------------------
INSERT INTO `pctpremium` VALUES (NULL, 'PREMIUM', b'1');

-- ----------------------------
-- Table structure for pctseries
-- ----------------------------
DROP TABLE IF EXISTS `pctseries`;
CREATE TABLE `pctseries`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctseries
-- ----------------------------
INSERT INTO `pctseries` VALUES (NULL, 'SÉRIES', b'1');

-- ----------------------------
-- Table structure for pctstudent
-- ----------------------------
DROP TABLE IF EXISTS `pctstudent`;
CREATE TABLE `pctstudent`  (
  `Cod_Pacote` int(11) NULL DEFAULT NULL,
  `Nome_Pacote` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Canais` bit(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pctstudent
-- ----------------------------
INSERT INTO `pctstudent` VALUES (NULL, 'STUDENT', b'1');

SET FOREIGN_KEY_CHECKS = 1;
