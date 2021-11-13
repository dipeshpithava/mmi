-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: userprofile2
-- Generation Time: 2021-11-13 11:39:50.7520
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.bankmaster_id_seq;

-- Table Definition
CREATE TABLE "cmn"."bankmaster" (
    "id" int2 NOT NULL DEFAULT nextval('cmn.bankmaster_id_seq'::regclass),
    "name" varchar(100) NOT NULL,
    "portallogo" varchar(50),
    "mobilelogo" varchar(50),
    "adminbankid" int2,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.citymaster_id_seq;

-- Table Definition
CREATE TABLE "cmn"."citymaster" (
    "id" int2 NOT NULL DEFAULT nextval('cmn.citymaster_id_seq'::regclass),
    "name" varchar(50) NOT NULL,
    "stateid" int2 NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.clientmaster_cid_seq;

-- Table Definition
CREATE TABLE "cmn"."clientmaster" (
    "cid" int2 NOT NULL DEFAULT nextval('cmn.clientmaster_cid_seq'::regclass),
    "clientcode" varchar(10) NOT NULL,
    "clientname" varchar(50) NOT NULL,
    "clientdesc" varchar(100) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("cid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.commonmaster_comnid_seq;

-- Table Definition
CREATE TABLE "cmn"."commonmaster" (
    "comnid" int2 NOT NULL DEFAULT nextval('cmn.commonmaster_comnid_seq'::regclass),
    "code" varchar(20),
    "codedesc" varchar(100) NOT NULL,
    "typedet" varchar(50) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("comnid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.docsmaster_id_seq;

-- Table Definition
CREATE TABLE "cmn"."docsmaster" (
    "id" int2 NOT NULL DEFAULT nextval('cmn.docsmaster_id_seq'::regclass),
    "name" varchar(50) NOT NULL,
    "doctypeid" int2 NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.ifsccodemaster_ifsccodeid_seq;

-- Table Definition
CREATE TABLE "cmn"."ifsccodemaster" (
    "ifsccodeid" int8 NOT NULL DEFAULT nextval('cmn.ifsccodemaster_ifsccodeid_seq'::regclass),
    "ifsccode" varchar(50),
    "bankid" int8,
    "branchname" varchar(100),
    "micrcode" varchar(20),
    "city" varchar(100),
    "district" varchar(100),
    "state" varchar(100),
    "address" varchar(200),
    "contact" varchar(50),
    "isactive" bool,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(50) NOT NULL,
    "updateddt" timestamp,
    "updatedby" bpchar(1),
    "updatedip" bpchar(1)
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.pincodemaster_id_seq;

-- Table Definition
CREATE TABLE "cmn"."pincodemaster" (
    "id" int4 NOT NULL DEFAULT nextval('cmn.pincodemaster_id_seq'::regclass),
    "pincode" int4 NOT NULL,
    "cityid" int2 NOT NULL,
    "stateid" int2 NOT NULL,
    "stdcode" varchar(5),
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.productmaster_prodid_seq;
DROP TYPE IF EXISTS "cmn"."productmaster_prodcode";
CREATE TYPE "cmn"."productmaster_prodcode" AS ENUM ('abwm', 'mf', 'hl', 'el', 'cc', 'pl', 'hi', 'gd', 'eq', 'fd');

-- Table Definition
CREATE TABLE "cmn"."productmaster" (
    "prodid" int2 NOT NULL DEFAULT nextval('cmn.productmaster_prodid_seq'::regclass),
    "prodcode" "cmn"."productmaster_prodcode" NOT NULL,
    "prodname" varchar(30) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("prodid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.segmentmaster_sgtid_seq;

-- Table Definition
CREATE TABLE "cmn"."segmentmaster" (
    "sgtid" int4 NOT NULL DEFAULT nextval('cmn.segmentmaster_sgtid_seq'::regclass),
    "sgtname" varchar(50) NOT NULL,
    "sgtcode" varchar(25) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(50) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(50),
    PRIMARY KEY ("sgtid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.statemaster_id_seq;

-- Table Definition
CREATE TABLE "cmn"."statemaster" (
    "id" int2 NOT NULL DEFAULT nextval('cmn.statemaster_id_seq'::regclass),
    "name" varchar(50) NOT NULL,
    "isunionterritories" bool NOT NULL DEFAULT false,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "eqfstatecode" varchar(5) NOT NULL,
    "tinno" varchar(5) NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS cmn.tncmaster_tncid_seq;

-- Table Definition
CREATE TABLE "cmn"."tncmaster" (
    "tncid" int2 NOT NULL DEFAULT nextval('cmn.tncmaster_tncid_seq'::regclass),
    "cid" int2 NOT NULL,
    "filename" varchar(100) NOT NULL,
    "filepath" varchar(500) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "subprodid" int2 NOT NULL,
    PRIMARY KEY ("tncid")
);

ALTER TABLE "cmn"."citymaster" ADD FOREIGN KEY ("stateid") REFERENCES "cmn"."statemaster"("id");
ALTER TABLE "cmn"."docsmaster" ADD FOREIGN KEY ("doctypeid") REFERENCES "cmn"."commonmaster"("comnid");
ALTER TABLE "cmn"."ifsccodemaster" ADD FOREIGN KEY ("bankid") REFERENCES "cmn"."bankmaster"("id");
ALTER TABLE "cmn"."pincodemaster" ADD FOREIGN KEY ("cityid") REFERENCES "cmn"."citymaster"("id");
ALTER TABLE "cmn"."pincodemaster" ADD FOREIGN KEY ("stateid") REFERENCES "cmn"."statemaster"("id");
ALTER TABLE "cmn"."tncmaster" ADD FOREIGN KEY ("cid") REFERENCES "cmn"."clientmaster"("cid");
ALTER TABLE "cmn"."tncmaster" ADD FOREIGN KEY ("subprodid") REFERENCES "cmn"."subproductmaster"("subprodid");
