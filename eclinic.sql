/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : eclinic

 Target Server Type    : MariaDB
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 13/06/2019 15:56:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `doctor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `born_at` date NOT NULL,
  PRIMARY KEY (`doctor_id`) USING BTREE,
  UNIQUE INDEX `uq_doctor_email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, 'Pera', 'Peric', 'pperic@bolnica.local', '1977-11-11');
INSERT INTO `doctor` VALUES (2, 'Laza', 'Lazic', 'llazic@bolnica.local', '1977-11-12');
INSERT INTO `doctor` VALUES (3, 'Mika', 'Mikic', 'mmikic@bolnica.local', '1977-11-13');
INSERT INTO `doctor` VALUES (4, 'Zivan', 'Zivanovic', 'zzivanovic@bolnica.local', '1977-11-14');
INSERT INTO `doctor` VALUES (5, 'Todor', 'Todorovic', 'ttodorovic@bolnica.local', '1977-11-15');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `patient_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `born_at` date NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`patient_id`) USING BTREE,
  UNIQUE INDEX `uq_patient_email`(`email`) USING BTREE,
  UNIQUE INDEX `uq_patient_contact_phone`(`contact_phone`) USING BTREE,
  INDEX `fk_patient_doctor_id_idx`(`doctor_id`) USING BTREE,
  CONSTRAINT `fk_patient_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES (1, 'Radomir', 'Radomirovic', '1978-11-11', 'rradomirovic@home.local', '+38160000001', 1);
INSERT INTO `patient` VALUES (2, 'Uros', 'Urosevic', '1978-11-12', 'uurosevic@home.local', '+38160000002', 2);
INSERT INTO `patient` VALUES (3, 'Ivan', 'Ivanovic', '1978-11-13', 'iivanovic@home.local', '+38160000003', 3);
INSERT INTO `patient` VALUES (4, 'Djuka', 'Djukic', '1978-11-14', 'djukadjukic@home.local', '+38160000004', 4);
INSERT INTO `patient` VALUES (5, 'Bogdan', 'Bogdanovic', '1978-11-15', 'bbogdanovic@home.local', '+38160000005', 5);
INSERT INTO `patient` VALUES (6, 'Ivica', 'Ivic', '1978-11-16', 'iivic@home.local', '+38160000006', 1);
INSERT INTO `patient` VALUES (7, 'Radovan', 'Radovanovic', '1978-11-17', 'rradovanovic@home.local', '+38160000007', 2);
INSERT INTO `patient` VALUES (8, 'Aleksandar', 'Aleksandrovic', '1978-11-18', 'aaleksandrovic@home.local', '+38160000008', 3);
INSERT INTO `patient` VALUES (9, 'Aleksa', 'Aleksic', '1978-11-19', 'aaleksic@home.local', '+38160000009', 4);
INSERT INTO `patient` VALUES (10, 'Djura', 'Djuric', '1978-11-20', 'djuradjuric@home.local', '+38160000010', 5);

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit`  (
  `visit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `visited_at` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `visit_type_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`visit_id`) USING BTREE,
  INDEX `fk_visit_visit_type_id_idx`(`visit_type_id`) USING BTREE,
  INDEX `fk_visit_patient_id_idx`(`patient_id`) USING BTREE,
  CONSTRAINT `fk_visit_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_visit_visit_type_id` FOREIGN KEY (`visit_type_id`) REFERENCES `visit_type` (`visit_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of visit
-- ----------------------------
INSERT INTO `visit` VALUES (1, 'First check', 'First check', '2018-09-01', 1, 1);
INSERT INTO `visit` VALUES (2, 'Regular check', 'Second check', '2018-09-02', 2, 1);
INSERT INTO `visit` VALUES (3, 'Knee surgery', 'Broken knee surgery', '2018-09-03', 3, 4);
INSERT INTO `visit` VALUES (4, 'Testing on allergies', 'Pollen allergy', '2018-09-04', 4, 2);
INSERT INTO `visit` VALUES (5, 'Antibiotics therapy', 'Flu', '2018-09-05', 5, 3);
INSERT INTO `visit` VALUES (6, 'Second check', 'Second check', '2019-01-04', 1, 1);
INSERT INTO `visit` VALUES (7, 'Check on stomach pain', 'Stomach pain', '2019-01-05', 2, 1);
INSERT INTO `visit` VALUES (8, 'Arm surgery', 'Broken elbow', '2019-01-06', 3, 4);
INSERT INTO `visit` VALUES (9, 'Allergy test', 'Dust', '2019-01-07', 4, 2);
INSERT INTO `visit` VALUES (10, 'Antibiotics therapy', 'Fever', '2019-01-08', 5, 3);

-- ----------------------------
-- Table structure for visit_type
-- ----------------------------
DROP TABLE IF EXISTS `visit_type`;
CREATE TABLE `visit_type`  (
  `visit_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`visit_type_id`) USING BTREE,
  UNIQUE INDEX `uq_visit_type_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of visit_type
-- ----------------------------
INSERT INTO `visit_type` VALUES (2, 'Allergies');
INSERT INTO `visit_type` VALUES (1, 'Check');
INSERT INTO `visit_type` VALUES (5, 'Regular examination');
INSERT INTO `visit_type` VALUES (4, 'Surgery');
INSERT INTO `visit_type` VALUES (3, 'Therapy');

SET FOREIGN_KEY_CHECKS = 1;
