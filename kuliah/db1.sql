/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 100413
Source Host           : localhost:3306
Source Database       : db_mahasiswa

Target Server Type    : MYSQL
Target Server Version : 100413
File Encoding         : 65001

Date: 2020-08-22 13:24:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `nim` char(9) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempat` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `id_program_studi` int(11) DEFAULT NULL,
  `file_foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------

-- ----------------------------
-- Table structure for program_studi
-- ----------------------------
DROP TABLE IF EXISTS `program_studi`;
CREATE TABLE `program_studi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of program_studi
-- ----------------------------
INSERT INTO `program_studi` VALUES ('1', 'TEKNIK INFORMATIKA');
INSERT INTO `program_studi` VALUES ('2', 'SISTEM INFORMASI');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'b4ae0a445ac8b2d784ef41933634b794');
