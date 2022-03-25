-- -------------------------------------------------------------
-- TablePlus 4.6.2(410)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2022-03-25 15:38:31.2070
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "cmn"."usersession";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.usersession_id_seq;

-- Table Definition
CREATE TABLE "cmn"."usersession" (
    "id" int4 NOT NULL DEFAULT nextval('cmn.usersession_id_seq'::regclass),
    "sessionid" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "sessiondata" json,
    "uid" int4 NOT NULL,
    "timestamp" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "usersession_uid_fkey" FOREIGN KEY ("uid") REFERENCES "cmn"."userprofilemaster"("uid"),
    PRIMARY KEY ("id")
);

