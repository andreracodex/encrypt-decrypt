/*
 Navicat Premium Data Transfer

 Source Server         : Local - MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : aes

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 03/06/2024 16:08:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for encryption_keys
-- ----------------------------
DROP TABLE IF EXISTS `encryption_keys`;
CREATE TABLE `encryption_keys`  (
  `id` int NOT NULL,
  `encryption_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `upload_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of encryption_keys
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, NULL, 'viny@mailinator.com', 'bygufiq', '$2y$10$wgTNr4ZNYV48uue8Q2e8BuqUdBBVtJ2dzOYw4VtA/.Z9wEd49fhUi');

-- ----------------------------
-- Table structure for xfiles
-- ----------------------------
DROP TABLE IF EXISTS `xfiles`;
CREATE TABLE `xfiles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `unique_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `file_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `output_file_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `shared_secret` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `uuid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `values_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `type_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xfiles
-- ----------------------------
INSERT INTO `xfiles` VALUES (37, 'encrypt', '121231231231236718263871238712368', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', '12345678', '0b1de405-f811-4188-b2bf-bc7659543560', '', 'file');
INSERT INTO `xfiles` VALUES (38, 'encrypt', '121231231231236718263871238712368', 'Text', 'String.txt', '12345678', 'a546f099-e41d-404e-8795-23a6261c5b5d', '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', 'text');
INSERT INTO `xfiles` VALUES (39, 'encrypt', '121231231231236718263871238712368', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', '12345678', '5ace955a-66da-41b7-ae8a-b7b1a0fb5bad', '', 'file');
INSERT INTO `xfiles` VALUES (40, 'encrypt', '121231231231236718263871238712368', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', '12345678', '038b8d47-d4a1-450c-a34f-1dba85cc4fef', '', 'file');
INSERT INTO `xfiles` VALUES (41, 'encrypt', '121231231231236718263871238712368', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', '12345678', '3145618f-4682-4d0c-b4a4-64d820bef016', '', 'file');
INSERT INTO `xfiles` VALUES (42, 'encrypt', '121231231231236718263871238712368', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', '12345678', 'c027c25a-81fb-4a4a-970e-6f8469b98664', '', 'file');
INSERT INTO `xfiles` VALUES (43, 'encrypt', '1234', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', 'abcd', '0384aa15-f2c9-499c-a6ed-0e2a959ad5aa', '', 'file');
INSERT INTO `xfiles` VALUES (44, 'encrypt', '112233', 'Kop Surat Evarindo.pdf', 'encrypt/Kop Surat Evarindo.pdf.nathan', '1234', 'c35c6d6c-cae2-437d-9f76-4e42efd634b8', '', 'file');

SET FOREIGN_KEY_CHECKS = 1;
