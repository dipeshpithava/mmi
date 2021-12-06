-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: userprofile2
-- Generation Time: 2021-11-30 20:07:23.7980
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "cmn"."userprofiledet";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.userprofiledet_udid_seq;

-- Table Definition
CREATE TABLE "cmn"."userprofiledet" (
    "udid" int4 NOT NULL DEFAULT nextval('cmn.userprofiledet_udid_seq'::regclass),
    "uid" int4 NOT NULL,
    "pwd" varchar(200) NOT NULL DEFAULT 'NA'::character varying,
    "fname" varchar(50) NOT NULL,
    "mname" varchar(30),
    "lname" varchar(30),
    "dob" varchar(15),
    "regdt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "istnc" bool NOT NULL DEFAULT false,
    "islocked" bool NOT NULL DEFAULT false,
    "lastpasschangeddt" timestamp,
    "passattempt" int2 NOT NULL DEFAULT 0 CHECK ((passattempt >= 0) AND (passattempt < 4)),
    "leadsource" varchar(30),
    "browsertype" varchar(50),
    "visitorid" varchar(100),
    "pageurl" text,
    "utmsource" varchar(50),
    "utmmedia" varchar(50),
    "utmcampaign" varchar(50),
    "adgroupid" varchar(50),
    "subid" varchar(50),
    "dmid" varchar(200),
    "gclid" varchar(200),
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("udid")
);

DROP TABLE IF EXISTS "cmn"."userprofilemaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.userprofilemaster_uid_seq;
DROP TYPE IF EXISTS "cmn"."emptype";
CREATE TYPE "cmn"."emptype" AS ENUM ('RM', 'BP', 'NA');
DROP TYPE IF EXISTS "cmn"."emptype";
CREATE TYPE "cmn"."emptype" AS ENUM ('RM', 'BP', 'NA');

-- Table Definition
CREATE TABLE "cmn"."userprofilemaster" (
    "uid" int4 NOT NULL DEFAULT nextval('cmn.userprofilemaster_uid_seq'::regclass),
    "emailid" varchar(50),
    "mobileno" int8,
    "panno" varchar(20),
    "username" varchar(50),
    "isemailverified" bool NOT NULL DEFAULT false,
    "ismobverified" bool NOT NULL DEFAULT false,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("uid")
);


ALTER TABLE "cmn"."userprofiledet" ADD FOREIGN KEY ("uid") REFERENCES "cmn"."userprofilemaster"("uid");
