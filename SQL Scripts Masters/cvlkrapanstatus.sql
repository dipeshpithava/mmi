-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: userprofile2
-- Generation Time: 2021-12-13 15:22:49.3050
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "mf"."cvlkrapanstatus";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.cvlkrapanstatus_cvlstatid_seq;

-- Table Definition
CREATE TABLE "mf"."cvlkrapanstatus" (
    "cvlstatid" int2 NOT NULL DEFAULT nextval('mf.cvlkrapanstatus_cvlstatid_seq'::regclass),
    "kraname" varchar(20) NOT NULL,
    "statusdesc" varchar(50) NOT NULL,
    "statuscode" varchar(10) NOT NULL,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("cvlstatid")
);

INSERT INTO "mf"."cvlkrapanstatus" ("cvlstatid", "kraname", "statusdesc", "statuscode", "createddt", "createdby", "createdip", "updateddt", "updatedby", "updatedip") VALUES
(1, 'CVLKRA', 'Not Checked with respective KRA', '000', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(2, 'CVLKRA', 'Submitted', '001', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(3, 'CVLKRA', 'KRA Verified', '002', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(4, 'CVLKRA', 'Hold', '003', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(5, 'CVLKRA', 'Rejected', '004', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(6, 'CVLKRA', 'Not available', '005', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(7, 'CVLKRA', 'Deactivated', '006', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(8, 'CVLKRA', 'Existing KYC Submitted', '011', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(9, 'CVLKRA', 'Existing KYC Verified', '012', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(10, 'CVLKRA', 'Existing KYC hold', '013', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(11, 'CVLKRA', 'Existing KYC Rejected', '014', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(12, 'CVLKRA', 'KYC REGISTERED WITH CVLMF', '022', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(13, 'CVLKRA', 'Not Checked with Multiple KRA', 'NA', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(14, 'CVLKRA', 'Invalid PAN NO Format', '999', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(15, 'NDML', 'Not Checked with respective KRA', '100', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(16, 'NDML', 'Submitted', '101', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(17, 'NDML', 'KRA Verified', '102', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(18, 'NDML', 'Hold', '103', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(19, 'NDML', 'Rejected', '104', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(20, 'NDML', 'Not available', '105', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(21, 'NDML', 'Deactivated', '106', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(22, 'NDML', 'Existing KYC Submitted', '111', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(23, 'NDML', 'Existing KYC Verified', '112', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(24, 'NDML', 'Existing KYC hold', '113', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(25, 'NDML', 'Existing KYC Rejected', '114', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(26, 'NDML', 'KYC REGISTERED WITH CVLMF', 'NA', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(27, 'NDML', 'Not Checked with Multiple KRA', '888', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(28, 'NDML', 'Invalid PAN NO Format', '999', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(29, 'DOTEX', 'Not Checked with respective KRA', '200', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(30, 'DOTEX', 'Submitted', '201', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(31, 'DOTEX', 'KRA Verified', '202', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(32, 'DOTEX', 'Hold', '203', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(33, 'DOTEX', 'Rejected', '204', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(34, 'DOTEX', 'Not available', '205', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(35, 'DOTEX', 'Deactivated', '206', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(36, 'DOTEX', 'Existing KYC Submitted', '211', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(37, 'DOTEX', 'Existing KYC Verified', '212', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(38, 'DOTEX', 'Existing KYC hold', '213', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(39, 'DOTEX', 'Existing KYC Rejected', '214', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(40, 'DOTEX', 'KYC REGISTERED WITH CVLMF', 'NA', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(41, 'DOTEX', 'Not Checked with Multiple KRA', '888', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(42, 'DOTEX', 'Invalid PAN NO Format', '999', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(43, 'CAMS', 'Not Checked with respective KRA', '300', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(44, 'CAMS', 'Submitted', '301', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(45, 'CAMS', 'KRA Verified', '302', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(46, 'CAMS', 'Hold', '303', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(47, 'CAMS', 'Rejected', '304', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(48, 'CAMS', 'Not available', '305', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(49, 'CAMS', 'Deactivated', '306', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(50, 'CAMS', 'Existing KYC Submitted', '311', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(51, 'CAMS', 'Existing KYC Verified', '312', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(52, 'CAMS', 'Existing KYC hold', '313', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(53, 'CAMS', 'Existing KYC Rejected', '314', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(54, 'CAMS', 'KYC REGISTERED WITH CVLMF', 'NA', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(55, 'CAMS', 'Not Checked with Multiple KRA', '888', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(56, 'CAMS', 'Invalid PAN NO Format', '999', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(57, 'KARVY', 'Not Checked with respective KRA', '400', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(58, 'KARVY', 'Submitted', '401', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(59, 'KARVY', 'KRA Verified', '402', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(60, 'KARVY', 'Hold', '403', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(61, 'KARVY', 'Rejected', '404', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(62, 'KARVY', 'Not available', '405', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(63, 'KARVY', 'Deactivated', '406', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(64, 'KARVY', 'Existing KYC Submitted', '411', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(65, 'KARVY', 'Existing KYC Verified', '412', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(66, 'KARVY', 'Existing KYC hold', '413', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(67, 'KARVY', 'Existing KYC Rejected', '414', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(68, 'KARVY', 'KYC REGISTERED WITH CVLMF', 'NA', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(69, 'KARVY', 'Not Checked with Multiple KRA', '888', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL),
(70, 'KARVY', 'Invalid PAN NO Format', '999', '2020-04-22 07:28:57.713994', 'dbimport', '0.0.0.0', NULL, NULL, NULL);
