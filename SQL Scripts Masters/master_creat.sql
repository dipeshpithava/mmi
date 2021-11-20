-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: userprofile2
-- Generation Time: 2021-11-18 15:57:56.4590
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "mf"."bankmaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.bankmaster_bankid_seq;

-- Table Definition
CREATE TABLE "mf"."bankmaster" (
    "bankid" int2 NOT NULL DEFAULT nextval('mf.bankmaster_bankid_seq'::regclass),
    "bankname" varchar(50) NOT NULL,
    "optbankid" int2,
    "nsebankcode" varchar(10) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("nsebankcode")
);

DROP TABLE IF EXISTS "mf"."bdbankmaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.bdbankmaster_bdbankid_seq;

-- Table Definition
CREATE TABLE "mf"."bdbankmaster" (
    "bdbankid" int2 NOT NULL DEFAULT nextval('mf.bdbankmaster_bdbankid_seq'::regclass),
    "bankcategory" varchar(50) NOT NULL,
    "bdbankname" varchar(50) NOT NULL,
    "nsebankcode" varchar(10) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("bdbankid")
);

DROP TABLE IF EXISTS "mf"."citymaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.citymaster_cityid_seq;

-- Table Definition
CREATE TABLE "mf"."citymaster" (
    "cityid" int2 NOT NULL DEFAULT nextval('mf.citymaster_cityid_seq'::regclass),
    "cityname" varchar(50) NOT NULL,
    "nsestatecode" varchar(8) NOT NULL,
    "nsecountrycode" varchar(8) NOT NULL,
    "lastmodfdt" timestamp,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("cityid")
);

DROP TABLE IF EXISTS "mf"."commonmaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.commonmaster_comnid_seq;
DROP TYPE IF EXISTS "mf"."commonmaster_typedet";
CREATE TYPE "mf"."commonmaster_typedet" AS ENUM ('TransactionType', 'SourceWealth', 'PaymentMechanism', 'PANExemptCategory', 'Occupation', 'HoldingNature', 'GIINExemption', 'Exemption', 'ApplicableIncome', 'ActiveNFE', 'AccountType', 'TaxProfile', 'Relationship', 'AddressType', 'BusinessUnit', 'Identification');

-- Table Definition
CREATE TABLE "mf"."commonmaster" (
    "comnid" int2 NOT NULL DEFAULT nextval('mf.commonmaster_comnid_seq'::regclass),
    "typedet" "mf"."commonmaster_typedet" NOT NULL,
    "codedesc" varchar(50),
    "nsecode" varchar(5),
    "optcode" varchar(5),
    "isactive" bool NOT NULL DEFAULT false,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("comnid")
);

DROP TABLE IF EXISTS "mf"."countrymaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.countrymaster_countryid_seq;

-- Table Definition
CREATE TABLE "mf"."countrymaster" (
    "countryid" int2 NOT NULL DEFAULT nextval('mf.countrymaster_countryid_seq'::regclass),
    "nsecountrycode" varchar(8) NOT NULL,
    "countryname" varchar(50) NOT NULL,
    "lastmodfdt" timestamp,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("nsecountrycode")
);

DROP TABLE IF EXISTS "mf"."docsmaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.docsmaster_docid_seq;
DROP TYPE IF EXISTS "mf"."docsmaster_doctype";
CREATE TYPE "mf"."docsmaster_doctype" AS ENUM ('PoI', 'PoA', 'PoBank', 'PoAge', 'PoRelation', 'Sign', 'KYC', 'Contact', 'Mandate', 'Nominee', 'Bank');
DROP TYPE IF EXISTS "mf"."docsmaster_doctype";
CREATE TYPE "mf"."docsmaster_doctype" AS ENUM ('PoA', 'PoBank');

-- Table Definition
CREATE TABLE "mf"."docsmaster" (
    "docid" int2 NOT NULL DEFAULT nextval('mf.docsmaster_docid_seq'::regclass),
    "doccode" varchar(5) NOT NULL,
    "docname" varchar(50) NOT NULL,
    "doctype" "mf"."docsmaster_doctype" NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("docid")
);

DROP TABLE IF EXISTS "mf"."fatcamaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.fatcamaster_fatcaappid_seq;
DROP TYPE IF EXISTS "mf"."fatcamaster_politicalexposed";
CREATE TYPE "mf"."fatcamaster_politicalexposed" AS ENUM ('Y', 'N', 'R');

-- Table Definition
CREATE TABLE "mf"."fatcamaster" (
    "fatcaappid" int4 NOT NULL DEFAULT nextval('mf.fatcamaster_fatcaappid_seq'::regclass),
    "panno" varchar(20) NOT NULL,
    "panexkycrefno" varchar(20),
    "applicantname" varchar(100) NOT NULL,
    "dob" bytea NOT NULL,
    "fathername" varchar(100),
    "spousename" varchar(100),
    "taxstatuscode" varchar(5) NOT NULL,
    "placeofbirth" varchar(50) NOT NULL,
    "countryofbirth" varchar(50) NOT NULL,
    "istaxresotherind" bool NOT NULL DEFAULT false,
    "apptaxidnum1" varchar(20),
    "apptaxcountry2" varchar(20),
    "apptaxidnum2" varchar(20),
    "apptaxcountry3" varchar(20),
    "apptaxidnum3" varchar(20),
    "apptaxcountry4" varchar(20),
    "apptaxidnum4" varchar(20),
    "sourcewealthcode" varchar(5) NOT NULL,
    "appincomecode" varchar(5) NOT NULL,
    "politicalexposed" "mf"."fatcamaster_politicalexposed" NOT NULL,
    "occupationcode" varchar(5) NOT NULL,
    "isusresident" bool NOT NULL DEFAULT false,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_fatcaappid" int4,
    "old_pan" varchar(20),
    PRIMARY KEY ("fatcaappid")
);

DROP TABLE IF EXISTS "mf"."ifsccodemaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.ifsccodemaster_ifsccodeid_seq;

-- Table Definition
CREATE TABLE "mf"."ifsccodemaster" (
    "ifsccodeid" int4 NOT NULL DEFAULT nextval('mf.ifsccodemaster_ifsccodeid_seq'::regclass),
    "ifsccode" varchar(15) NOT NULL,
    "optifsccodeid" int8,
    "micrcode" varchar(15),
    "branchname" varchar(100),
    "address" varchar(200),
    "contact" varchar(30),
    "city" varchar(80),
    "district" varchar(80),
    "state" varchar(50),
    "nsebankcode" varchar(10) NOT NULL,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("ifsccodeid")
);


DROP TABLE IF EXISTS "mf"."pincodemaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.pincodemaster_pincodeid_seq;

-- Table Definition
CREATE TABLE "mf"."pincodemaster" (
    "pincodeid" int4 NOT NULL DEFAULT nextval('mf.pincodemaster_pincodeid_seq'::regclass),
    "pincode" varchar(8) NOT NULL,
    "cityid" int2 NOT NULL,
    "cityname" varchar(50) NOT NULL,
    "nsestatecode" varchar(8) NOT NULL,
    "nsecountrycode" varchar(8) NOT NULL,
    "lastmodfdt" timestamp,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("pincode")
);

DROP TABLE IF EXISTS "mf"."statemaster";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.statemaster_stateid_seq;

-- Table Definition
CREATE TABLE "mf"."statemaster" (
    "stateid" int4 NOT NULL DEFAULT nextval('mf.statemaster_stateid_seq'::regclass),
    "nsestatecode" varchar(8) NOT NULL,
    "statename" varchar(50) NOT NULL,
    "lastmodfdt" timestamp,
    "optstatecode" varchar(8),
    "optstateid" int2,
    "nsecountrycode" varchar(8) NOT NULL,
    "isunionterritories" bool NOT NULL DEFAULT false,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("nsestatecode")
);


ALTER TABLE "mf"."bdbankmaster" ADD FOREIGN KEY ("nsebankcode") REFERENCES "mf"."bankmaster"("nsebankcode");
ALTER TABLE "mf"."citymaster" ADD FOREIGN KEY ("nsecountrycode") REFERENCES "mf"."countrymaster"("nsecountrycode");
ALTER TABLE "mf"."citymaster" ADD FOREIGN KEY ("nsestatecode") REFERENCES "mf"."statemaster"("nsestatecode");
ALTER TABLE "mf"."ifsccodemaster" ADD FOREIGN KEY ("nsebankcode") REFERENCES "mf"."bankmaster"("nsebankcode");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("invguardid") REFERENCES "mf"."invguarddet"("invguardid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("secondappid") REFERENCES "mf"."invappdet"("invappid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("thirdappid") REFERENCES "mf"."invappdet"("invappid");
ALTER TABLE "mf"."pincodemaster" ADD FOREIGN KEY ("nsestatecode") REFERENCES "mf"."statemaster"("nsestatecode");
ALTER TABLE "mf"."pincodemaster" ADD FOREIGN KEY ("nsecountrycode") REFERENCES "mf"."countrymaster"("nsecountrycode");
ALTER TABLE "mf"."pincodemaster" ADD FOREIGN KEY ("cityid") REFERENCES "mf"."citymaster"("cityid");
ALTER TABLE "mf"."statemaster" ADD FOREIGN KEY ("nsecountrycode") REFERENCES "mf"."countrymaster"("nsecountrycode");
