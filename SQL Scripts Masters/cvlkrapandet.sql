-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: userprofile2
-- Generation Time: 2021-12-13 15:21:58.9710
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "mf"."cvlkrapandet";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.cvlkrapandet_cvlpanid_seq;

-- Table Definition
CREATE TABLE "mf"."cvlkrapandet" (
    "cvlpanid" int4 NOT NULL DEFAULT nextval('mf.cvlkrapandet_cvlpanid_seq'::regclass),
    "panno" varchar(20) NOT NULL,
    "nameasonpan" varchar(50),
    "dobonpan" date,
    "kycstatus" varchar(5) NOT NULL,
    "kycstatusdt" timestamp,
    "kycentrydt" timestamp,
    "modfack" varchar(50),
    "lastmodfdt" timestamp,
    "kycupdtstatus" varchar(5),
    "holddeactremark" varchar(200),
    "updtremark" varchar(200),
    "kycmode" int2,
    "ipvflag" bpchar(1),
    "statusdet" varchar(30),
    "poscode" int4,
    "respdt" timestamp,
    "totalrec" int2 NOT NULL,
    "batchid" varchar(50),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_pan" varchar(20),
    "old_cvlkraid" int4,
    PRIMARY KEY ("cvlpanid")
);

