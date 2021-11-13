-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: userprofile2
-- Generation Time: 2021-11-13 11:50:03.9930
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.cvlkraerrcodes_cvlerrid_seq;

-- Table Definition
CREATE TABLE "mf"."cvlkraerrcodes" (
    "cvlerrid" int2 NOT NULL DEFAULT nextval('mf.cvlkraerrcodes_cvlerrid_seq'::regclass),
    "errorcode" varchar(20) NOT NULL,
    "errordesc" varchar(150) NOT NULL,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("cvlerrid")
);

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

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.docsuploadmapping_id_seq;

-- Table Definition
CREATE TABLE "mf"."docsuploadmapping" (
    "id" int4 NOT NULL DEFAULT nextval('mf.docsuploadmapping_id_seq'::regclass),
    "reqname" varchar(20) NOT NULL,
    "docid" int2 NOT NULL,
    "docsflag" varchar(10) NOT NULL,
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
CREATE SEQUENCE IF NOT EXISTS mf.emndtbankmapping_embmid_seq;

-- Table Definition
CREATE TABLE "mf"."emndtbankmapping" (
    "embmid" int2 NOT NULL DEFAULT nextval('mf.emndtbankmapping_embmid_seq'::regclass),
    "nsebankcode" varchar(10) NOT NULL,
    "emndtbankcode" varchar(10) NOT NULL,
    "isnballowed" bool NOT NULL DEFAULT true,
    "isdbcallowed" bool NOT NULL DEFAULT true,
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(50) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(50),
    PRIMARY KEY ("embmid")
);

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

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.fatcasubmitstatus_fatcasubid_seq;
DROP TYPE IF EXISTS "mf"."apptype";
CREATE TYPE "mf"."apptype" AS ENUM ('F', 'S', 'T', 'G');
DROP TYPE IF EXISTS "mf"."submitstatus";
CREATE TYPE "mf"."submitstatus" AS ENUM ('P', 'S', 'R');

-- Table Definition
CREATE TABLE "mf"."fatcasubmitstatus" (
    "fatcasubid" int4 NOT NULL DEFAULT nextval('mf.fatcasubmitstatus_fatcasubid_seq'::regclass),
    "invid" int4 NOT NULL,
    "fatcaappid" int4 NOT NULL,
    "apptype" "mf"."apptype" NOT NULL,
    "issent" bool NOT NULL DEFAULT false,
    "sentdate" timestamp,
    "submitstatus" "mf"."submitstatus" NOT NULL DEFAULT 'P'::mf.submitstatus,
    "rejreason" varchar(100),
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("fatcasubid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.iinmaster_iinid_seq;
DROP TYPE IF EXISTS "mf"."invmodehold";
CREATE TYPE "mf"."invmodehold" AS ENUM ('AS', 'JO', 'SI', 'ES');
DROP TYPE IF EXISTS "mf"."invmaster_invformstage";
CREATE TYPE "mf"."invmaster_invformstage" AS ENUM ('P', 'B', 'C', 'N', 'T');
DROP TYPE IF EXISTS "mf"."invmaster_regstatus";
CREATE TYPE "mf"."invmaster_regstatus" AS ENUM ('P', 'I', 'E', 'A', 'T', 'D');
DROP TYPE IF EXISTS "mf"."invmaster_invstrtype_old";
CREATE TYPE "mf"."invmaster_invstrtype_old" AS ENUM ('01', '02', '03', '18', '11');

-- Table Definition
CREATE TABLE "mf"."iinmaster" (
    "iinid" int4 NOT NULL DEFAULT nextval('mf.iinmaster_iinid_seq'::regclass),
    "invid" int4 NOT NULL,
    "secondappid" int4,
    "thirdappid" int4,
    "invguardid" int4,
    "invmodhold" "mf"."invmodehold" NOT NULL,
    "iin" int8,
    "isskipnom" bool NOT NULL DEFAULT false,
    "ismndtupld" bool NOT NULL DEFAULT false,
    "invformstage" "mf"."invmaster_invformstage" NOT NULL,
    "regstatus" "mf"."invmaster_regstatus" NOT NULL DEFAULT 'P'::mf.invmaster_regstatus,
    "regstatusreason" varchar(100),
    "regdate" timestamp,
    "accactdt" timestamp,
    "accdeldt" timestamp,
    "iselogsent" bool NOT NULL DEFAULT false,
    "elogreason" varchar(200),
    "remarks" varchar(200),
    "reason" varchar(200),
    "module" varchar(20),
    "productpage" varchar(25),
    "pageurl" text,
    "utmsource" varchar(50),
    "utmmedium" varchar(50),
    "utmcampaign" varchar(50),
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invid" int4,
    "invstrtype" "mf"."invmaster_invstrtype_old" NOT NULL,
    "ismndtskip" bool NOT NULL DEFAULT false,
    PRIMARY KEY ("iinid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invadddet_invaddid_seq;

-- Table Definition
CREATE TABLE "mf"."invadddet" (
    "invaddid" int4 NOT NULL DEFAULT nextval('mf.invadddet_invaddid_seq'::regclass),
    "invid" int4 NOT NULL,
    "addtypeid" int2 NOT NULL,
    "add1" varchar(500) NOT NULL,
    "add2" varchar(500),
    "add3" varchar(500),
    "pincode" varchar(8),
    "city" varchar(50),
    "statecode" varchar(8),
    "countrycode" varchar(8),
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invaddid" int4,
    "iinid" int4 NOT NULL,
    PRIMARY KEY ("invaddid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invadddetreq_invaddreqid_seq;
DROP TYPE IF EXISTS "mf"."reqtype";
CREATE TYPE "mf"."reqtype" AS ENUM ('A', 'C');
DROP TYPE IF EXISTS "mf"."reqstatus";
CREATE TYPE "mf"."reqstatus" AS ENUM ('P', 'A', 'R', 'E', 'T');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invadddetreq" (
    "invaddreqid" int4 NOT NULL DEFAULT nextval('mf.invadddetreq_invaddreqid_seq'::regclass),
    "invid" int4 NOT NULL,
    "newaddtypeid" int2 NOT NULL,
    "newadd1" varchar(500) NOT NULL,
    "newadd2" varchar(500),
    "newadd3" varchar(500),
    "newpincode" varchar(8) NOT NULL,
    "newcity" varchar(50) NOT NULL,
    "newstatecode" varchar(8) NOT NULL,
    "newcountrycode" varchar(8) NOT NULL,
    "oldinvaddid" int4,
    "oldaddtypeid" int2,
    "oldadd1" varchar(500),
    "oldadd2" varchar(500),
    "oldadd3" varchar(500),
    "oldpincode" varchar(8),
    "oldcity" varchar(50),
    "oldstatecode" varchar(8),
    "oldcountrycode" varchar(8),
    "reqtype" "mf"."reqtype" NOT NULL,
    "reqstatus" "mf"."reqstatus" NOT NULL DEFAULT 'P'::mf.reqstatus,
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(100),
    "ishold" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("invaddreqid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invappdet_invappid_seq;
DROP TYPE IF EXISTS "mf"."gender";
CREATE TYPE "mf"."gender" AS ENUM ('M', 'F', 'O', 'NA');
DROP TYPE IF EXISTS "mf"."kycdesc";
CREATE TYPE "mf"."kycdesc" AS ENUM ('Y', 'N', 'Z', 'R');
DROP TYPE IF EXISTS "mf"."apptype";
CREATE TYPE "mf"."apptype" AS ENUM ('F', 'S', 'T', 'G');

-- Table Definition
CREATE TABLE "mf"."invappdet" (
    "invappid" int4 NOT NULL DEFAULT nextval('mf.invappdet_invappid_seq'::regclass),
    "invid" int4 NOT NULL,
    "panno" varchar(20) NOT NULL,
    "invappname" varchar(100) NOT NULL,
    "dob" bytea NOT NULL,
    "gender" "mf"."gender" NOT NULL DEFAULT 'O'::cmn.gender,
    "nationality" varchar(50),
    "isnri" bool NOT NULL DEFAULT false,
    "iskyc" bool NOT NULL DEFAULT false,
    "kycdesc" "mf"."kycdesc" NOT NULL DEFAULT 'N'::cmn.kycdesc,
    "isfatca" bool NOT NULL DEFAULT false,
    "isipv" bool NOT NULL DEFAULT false,
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invappid" int4,
    "opt_id" int8,
    "apptype" "mf"."apptype" NOT NULL,
    "old_pan" varchar(20),
    "emailid" bytea,
    "mobno" bytea,
    PRIMARY KEY ("invappid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invbankdet_invbankid_seq;
DROP TYPE IF EXISTS "mf"."invbankdet_acctype";
CREATE TYPE "mf"."invbankdet_acctype" AS ENUM ('CC', 'CA', 'SB', 'FCNR', 'NRE', 'NRO', 'OD', 'PSB');
DROP TYPE IF EXISTS "mf"."invbankdet_bankactstatus";
CREATE TYPE "mf"."invbankdet_bankactstatus" AS ENUM ('A', 'P', 'E', 'D');
DROP TYPE IF EXISTS "mf"."invbankdet_impsstatus";
CREATE TYPE "mf"."invbankdet_impsstatus" AS ENUM ('P', 'R', 'S', 'NA');

-- Table Definition
CREATE TABLE "mf"."invbankdet" (
    "invbankid" int4 NOT NULL DEFAULT nextval('mf.invbankdet_invbankid_seq'::regclass),
    "invid" int4 NOT NULL,
    "iinid" int4 NOT NULL,
    "ifsccode" varchar(15) NOT NULL,
    "micrcode" varchar(15),
    "branchname" varchar(100),
    "bankaccadd" varchar(500),
    "bankaccno" bytea NOT NULL,
    "bankaccholdname" bytea NOT NULL,
    "isprimary" bool NOT NULL DEFAULT false,
    "acctype" "mf"."invbankdet_acctype" NOT NULL,
    "bankactdate" timestamp,
    "bankactstatus" "mf"."invbankdet_bankactstatus" NOT NULL,
    "impsstatus" "mf"."invbankdet_impsstatus" NOT NULL DEFAULT 'NA'::mf.invbankdet_impsstatus,
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invbankid" int4,
    "nsebankcode" varchar(10) NOT NULL,
    PRIMARY KEY ("invbankid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invbankdetreq_invbankreqid_seq;
DROP TYPE IF EXISTS "mf"."invbankdetreq_acctype";
CREATE TYPE "mf"."invbankdetreq_acctype" AS ENUM ('CC', 'CA', 'SB', 'FCNR', 'NRE', 'NRO', 'OD', 'PSB', 'NA');
DROP TYPE IF EXISTS "mf"."invbankdetreq_acctype";
CREATE TYPE "mf"."invbankdetreq_acctype" AS ENUM ('CC', 'CA', 'SB', 'FCNR', 'NRE', 'NRO', 'OD', 'PSB', 'NA');
DROP TYPE IF EXISTS "mf"."reqtype";
CREATE TYPE "mf"."reqtype" AS ENUM ('A', 'C');
DROP TYPE IF EXISTS "mf"."reqstatus";
CREATE TYPE "mf"."reqstatus" AS ENUM ('P', 'A', 'R', 'E', 'T');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invbankdetreq" (
    "invbankreqid" int4 NOT NULL DEFAULT nextval('mf.invbankdetreq_invbankreqid_seq'::regclass),
    "invid" int4 NOT NULL,
    "newbankaccholdname" varchar(100) NOT NULL,
    "newbankaccno" varchar(50) NOT NULL,
    "newacctype" "mf"."invbankdetreq_acctype" NOT NULL,
    "newifsccode" varchar(15) NOT NULL,
    "newmicrcode" int8,
    "newbankbranch" varchar(100) NOT NULL,
    "newbankaccadd" varchar(500) NOT NULL,
    "oldinvbankid" int4,
    "oldbankaccholdname" varchar(100),
    "oldbankaccno" varchar(50),
    "oldacctype" "mf"."invbankdetreq_acctype" NOT NULL DEFAULT 'NA'::mf.invbankdetreq_acctype,
    "oldifsccode" varchar(15),
    "oldmicrcode" int8,
    "oldbankbranch" varchar(100) NOT NULL,
    "oldbankaccadd" varchar(500),
    "reqtype" "mf"."reqtype" NOT NULL,
    "reqstatus" "mf"."reqstatus" NOT NULL DEFAULT 'P'::mf.reqstatus,
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(100),
    "ishold" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("invbankreqid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invcontactreq_invreqid_seq;
DROP TYPE IF EXISTS "mf"."reqtype";
CREATE TYPE "mf"."reqtype" AS ENUM ('A', 'C');
DROP TYPE IF EXISTS "mf"."reqstatus";
CREATE TYPE "mf"."reqstatus" AS ENUM ('P', 'A', 'R', 'E', 'T');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invcontactreq" (
    "invreqid" int4 NOT NULL DEFAULT nextval('mf.invcontactreq_invreqid_seq'::regclass),
    "invid" int4 NOT NULL,
    "newemailid" varchar(50) NOT NULL,
    "newmobno" int8 NOT NULL,
    "oldemailid" varchar(50) NOT NULL,
    "oldmobno" int8 NOT NULL,
    "reqtype" "mf"."reqtype" NOT NULL,
    "reqstatus" "mf"."reqstatus" NOT NULL DEFAULT 'P'::mf.reqstatus,
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(100),
    "ishold" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("invreqid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invdocsdet_invdocsid_seq;
DROP TYPE IF EXISTS "mf"."invdocsdet_refmode";
CREATE TYPE "mf"."invdocsdet_refmode" AS ENUM ('B', 'SA', 'M', 'N', 'TA', 'G', 'A', 'FA', 'NA');
DROP TYPE IF EXISTS "mf"."invdocsdet_reqmode";
CREATE TYPE "mf"."invdocsdet_reqmode" AS ENUM ('B', 'A', 'M', 'N', 'C', 'NA');
DROP TYPE IF EXISTS "mf"."invdocsdet_docstatus";
CREATE TYPE "mf"."invdocsdet_docstatus" AS ENUM ('P', 'A', 'R');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invdocsdet" (
    "invdocsid" int4 NOT NULL DEFAULT nextval('mf.invdocsdet_invdocsid_seq'::regclass),
    "invid" int4 NOT NULL,
    "docmappingid" int4 NOT NULL,
    "docid" int2 NOT NULL,
    "docpath" varchar(500) NOT NULL,
    "docname" varchar(50) NOT NULL,
    "refid" int4,
    "refmode" "mf"."invdocsdet_refmode" NOT NULL,
    "reqid" int4,
    "reqmode" "mf"."invdocsdet_reqmode" NOT NULL,
    "docdesc" varchar(50) NOT NULL,
    "docstatus" "mf"."invdocsdet_docstatus" NOT NULL,
    "docsremark" varchar(100),
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(250),
    "ishold" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("invdocsid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invfamilymapping_invfamid_seq;

-- Table Definition
CREATE TABLE "mf"."invfamilymapping" (
    "invfamid" int4 NOT NULL DEFAULT nextval('mf.invfamilymapping_invfamid_seq'::regclass),
    "headinvid" int4 NOT NULL,
    "meminvid" int4,
    "memoptid" int8 NOT NULL,
    "memname" varchar(100),
    "mempanno" varchar(20),
    "familyname" varchar(100),
    "isfamilyhead" bool NOT NULL DEFAULT false,
    "remarks" varchar(100),
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50),
    "createdip" varchar(20),
    PRIMARY KEY ("invfamid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invfatcamapping_invfatcaid_seq;
DROP TYPE IF EXISTS "mf"."apptype";
CREATE TYPE "mf"."apptype" AS ENUM ('F', 'S', 'T', 'G');

-- Table Definition
CREATE TABLE "mf"."invfatcamapping" (
    "invfatcaid" int4 NOT NULL DEFAULT nextval('mf.invfatcamapping_invfatcaid_seq'::regclass),
    "invid" int4 NOT NULL,
    "fatcaappid" int4 NOT NULL,
    "apptype" "mf"."apptype" NOT NULL,
    "remarks" varchar(100),
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "status" bool DEFAULT false,
    PRIMARY KEY ("invfatcaid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invguarddet_invguardid_seq;
DROP TYPE IF EXISTS "mf"."gender";
CREATE TYPE "mf"."gender" AS ENUM ('M', 'F', 'O', 'NA');
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');
DROP TYPE IF EXISTS "mf"."kycdesc";
CREATE TYPE "mf"."kycdesc" AS ENUM ('Y', 'N', 'Z', 'R');

-- Table Definition
CREATE TABLE "mf"."invguarddet" (
    "invguardid" int4 NOT NULL DEFAULT nextval('mf.invguarddet_invguardid_seq'::regclass),
    "invid" int4 NOT NULL,
    "panno" varchar(20) NOT NULL,
    "invguardname" varchar(100) NOT NULL,
    "dob" bytea NOT NULL,
    "gender" "mf"."gender" NOT NULL DEFAULT 'O'::cmn.gender,
    "invguardrelcode" "mf"."commonmaster_nsereltype" NOT NULL,
    "invguardrel" varchar(20),
    "iskyc" bool NOT NULL DEFAULT false,
    "kycdesc" "mf"."kycdesc" NOT NULL,
    "isfatca" bool NOT NULL DEFAULT false,
    "isipv" bool NOT NULL DEFAULT false,
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invguardid" int4,
    "old_pan" varchar(20),
    PRIMARY KEY ("invguardid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invmaster_invid_seq;
DROP TYPE IF EXISTS "mf"."gender";
CREATE TYPE "mf"."gender" AS ENUM ('M', 'F', 'O', 'NA');
DROP TYPE IF EXISTS "mf"."kycdesc";
CREATE TYPE "mf"."kycdesc" AS ENUM ('Y', 'N', 'Z', 'R');
DROP TYPE IF EXISTS "mf"."emptype";
CREATE TYPE "mf"."emptype" AS ENUM ('RM', 'BP', 'NA');
DROP TYPE IF EXISTS "mf"."emptype";
CREATE TYPE "mf"."emptype" AS ENUM ('RM', 'BP', 'NA');

-- Table Definition
CREATE TABLE "mf"."invmaster" (
    "invid" int4 NOT NULL DEFAULT nextval('mf.invmaster_invid_seq'::regclass),
    "uid" int4 NOT NULL,
    "invcode" varchar(50),
    "nameprefix" varchar(10),
    "investorname" varchar(100) NOT NULL,
    "panno" varchar(20) NOT NULL,
    "emailid" bytea NOT NULL,
    "mobno" bytea NOT NULL,
    "dob" bytea,
    "gender" "mf"."gender" NOT NULL DEFAULT 'O'::cmn.gender,
    "nationality" varchar(50),
    "isnri" bool NOT NULL DEFAULT false,
    "isnripan" bool NOT NULL DEFAULT false,
    "isminor" bool NOT NULL DEFAULT false,
    "empcode" varchar(10),
    "iskyc" bool NOT NULL DEFAULT false,
    "kycdesc" "mf"."kycdesc" NOT NULL DEFAULT 'N'::cmn.kycdesc,
    "isfatca" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "isipv" bool NOT NULL DEFAULT false,
    "isactive" bool NOT NULL DEFAULT true,
    "remarks" varchar(200),
    "reason" varchar(200),
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invid" int4,
    "old_pan" varchar(20),
    "emptype" "mf"."emptype" NOT NULL DEFAULT 'NA'::mf.emptype,
    PRIMARY KEY ("invid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invmndtmaster_invmndtid_seq;
DROP TYPE IF EXISTS "mf"."invmndtmaster_mndttype";
CREATE TYPE "mf"."invmndtmaster_mndttype" AS ENUM ('ECS', 'ACH', 'ESIGN', 'EMANDATE');
DROP TYPE IF EXISTS "mf"."invmndtmaster_mndtstatus";
CREATE TYPE "mf"."invmndtmaster_mndtstatus" AS ENUM ('A', 'P', 'D', 'X', 'E', 'R', 'T');

-- Table Definition
CREATE TABLE "mf"."invmndtmaster" (
    "invmndtid" int4 NOT NULL DEFAULT nextval('mf.invmndtmaster_invmndtid_seq'::regclass),
    "consumerid" varchar(20),
    "mndtref" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "invbankid" int4 NOT NULL,
    "mndteffctstrtdt" date NOT NULL,
    "mndtexpdt" date NOT NULL,
    "mndtamt" numeric(15,2) NOT NULL,
    "mndttype" "mf"."invmndtmaster_mndttype" NOT NULL,
    "mndtstatus" "mf"."invmndtmaster_mndtstatus" NOT NULL,
    "tpslmndtno" int4,
    "umrn" varchar(50),
    "ismndtrec" bool NOT NULL DEFAULT false,
    "mndtrecdate" timestamp,
    "ismndtsent" bool NOT NULL DEFAULT false,
    "mndtsentdate" timestamp,
    "mndtacptdate" timestamp,
    "mndtacptby" varchar(50),
    "mndtacptip" varchar(20),
    "mndtrejdate" timestamp,
    "mndtrejby" varchar(50),
    "mndtrejip" varchar(20),
    "mndtrejreason" varchar(150),
    "mndtdeldate" timestamp,
    "mndtdelby" varchar(50),
    "mndtdelip" varchar(20),
    "mndtdelreason" varchar(50),
    "remark" varchar(100),
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invmndtid" int4,
    "nseuniquerefno" int8,
    PRIMARY KEY ("invmndtid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invmndtmasterreq_invmndtreqid_seq;
DROP TYPE IF EXISTS "mf"."invmndtmasterreq_mndttype";
CREATE TYPE "mf"."invmndtmasterreq_mndttype" AS ENUM ('ECS', 'ACH', 'ESIGN', 'NA', 'EMANDATE');
DROP TYPE IF EXISTS "mf"."reqtype";
CREATE TYPE "mf"."reqtype" AS ENUM ('A', 'C');
DROP TYPE IF EXISTS "mf"."reqstatus";
CREATE TYPE "mf"."reqstatus" AS ENUM ('P', 'A', 'R', 'E', 'T');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invmndtmasterreq" (
    "invmndtreqid" int4 NOT NULL DEFAULT nextval('mf.invmndtmasterreq_invmndtreqid_seq'::regclass),
    "invid" int4 NOT NULL,
    "invbankid" int4,
    "reqinvbankid" int4,
    "newmndteffctstrtdt" date NOT NULL,
    "newmndtexpdt" date NOT NULL,
    "newmndtamt" float8 NOT NULL,
    "newmndttype" "mf"."invmndtmasterreq_mndttype" NOT NULL,
    "newumrn" varchar(50),
    "reqtype" "mf"."reqtype" NOT NULL,
    "reqstatus" "mf"."reqstatus" NOT NULL DEFAULT 'P'::mf.reqstatus,
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(100),
    "ishold" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "nseuniquerefno" int8,
    PRIMARY KEY ("invmndtreqid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invnomdet_invnomid_seq;
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');

-- Table Definition
CREATE TABLE "mf"."invnomdet" (
    "invnomid" int4 NOT NULL DEFAULT nextval('mf.invnomdet_invnomid_seq'::regclass),
    "invid" int4 NOT NULL,
    "invnomname" varchar(100) NOT NULL,
    "dob" bytea NOT NULL,
    "invnomrelcode" "mf"."commonmaster_nsereltype" NOT NULL,
    "invnomrel" varchar(20),
    "benefits" int2 NOT NULL,
    "isminor" bool NOT NULL DEFAULT false,
    "add1" varchar(500),
    "add2" varchar(500),
    "add3" varchar(500),
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invnomid" int4,
    "iinid" int4 NOT NULL,
    PRIMARY KEY ("invnomid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invnomdetreq_invnomreqid_seq;
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');
DROP TYPE IF EXISTS "mf"."reqtype";
CREATE TYPE "mf"."reqtype" AS ENUM ('A', 'C');
DROP TYPE IF EXISTS "mf"."reqstatus";
CREATE TYPE "mf"."reqstatus" AS ENUM ('P', 'A', 'R', 'E', 'T');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invnomdetreq" (
    "invnomreqid" int4 NOT NULL DEFAULT nextval('mf.invnomdetreq_invnomreqid_seq'::regclass),
    "invid" int4 NOT NULL,
    "newinvnomname" varchar(50) NOT NULL,
    "newinvnomrelcode" "mf"."commonmaster_nsereltype" NOT NULL,
    "newinvnomrel" varchar(50),
    "newinvnomdob" date NOT NULL,
    "newbenefits" int2 NOT NULL,
    "newisminor" bool NOT NULL DEFAULT false,
    "oldinvnomid" int4,
    "oldinvnomname" varchar(50),
    "oldinvnomrelcode" "mf"."commonmaster_nsereltype" NOT NULL DEFAULT '1009'::mf.commonmaster_nsereltype,
    "oldinvnomrel" varchar(50),
    "oldinvnomdob" date,
    "oldbenefits" int2,
    "oldisminor" bool NOT NULL DEFAULT false,
    "reqtype" "mf"."reqtype",
    "reqstatus" "mf"."reqstatus" NOT NULL DEFAULT 'P'::mf.reqstatus,
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(100),
    "ishold" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("invnomreqid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invnomguarddet_invnomguardid_seq;
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');

-- Table Definition
CREATE TABLE "mf"."invnomguarddet" (
    "invnomguardid" int4 NOT NULL DEFAULT nextval('mf.invnomguarddet_invnomguardid_seq'::regclass),
    "invid" int4 NOT NULL,
    "invnomguardname" varchar(100) NOT NULL,
    "invnomguardrelcode" "mf"."commonmaster_nsereltype" NOT NULL DEFAULT '1009'::mf.commonmaster_nsereltype,
    "invnomguardrel" varchar(20),
    "add1" varchar(500),
    "add2" varchar(500),
    "add3" varchar(500),
    "isactive" bool NOT NULL DEFAULT true,
    "adminupdateddt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "old_invnomguardid" int4,
    "iinid" int4 NOT NULL,
    PRIMARY KEY ("invnomguardid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.invnomguarddetreq_invnomguardreqid_seq;
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');
DROP TYPE IF EXISTS "mf"."commonmaster_nsereltype";
CREATE TYPE "mf"."commonmaster_nsereltype" AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');
DROP TYPE IF EXISTS "mf"."reqtype";
CREATE TYPE "mf"."reqtype" AS ENUM ('A', 'C');
DROP TYPE IF EXISTS "mf"."reqstatus";
CREATE TYPE "mf"."reqstatus" AS ENUM ('P', 'A', 'R', 'E', 'T');
DROP TYPE IF EXISTS "mf"."opsverstatus";
CREATE TYPE "mf"."opsverstatus" AS ENUM ('P', 'A', 'R');

-- Table Definition
CREATE TABLE "mf"."invnomguarddetreq" (
    "invnomguardreqid" int4 NOT NULL DEFAULT nextval('mf.invnomguarddetreq_invnomguardreqid_seq'::regclass),
    "invid" int4 NOT NULL,
    "newinvnomguardname" varchar(50) NOT NULL,
    "newinvnomguardrelcode" "mf"."commonmaster_nsereltype" NOT NULL,
    "newinvnomguardrel" varchar(50),
    "newinvnomguardadd" varchar(500) NOT NULL,
    "oldinvnomguardid" int4,
    "oldinvnomguardname" varchar(50),
    "oldinvnomguardrelcode" "mf"."commonmaster_nsereltype" NOT NULL DEFAULT '1009'::mf.commonmaster_nsereltype,
    "oldinvnomguardrel" varchar(50),
    "oldinvnomguardadd" varchar(500),
    "reqtype" "mf"."reqtype" NOT NULL,
    "reqstatus" "mf"."reqstatus" NOT NULL DEFAULT 'P'::mf.reqstatus,
    "acptdt" timestamp,
    "rejdt" timestamp,
    "rejreason" varchar(100),
    "ishold" bool NOT NULL DEFAULT false,
    "isdocs" bool NOT NULL DEFAULT false,
    "opsverstatus" "mf"."opsverstatus" NOT NULL DEFAULT 'P'::mf.opsverstatus,
    "opsverdt" timestamp,
    "adminupdatedby" varchar(50),
    "adminupdatedip" varchar(20),
    "adminupdateddt" timestamp,
    "remark" varchar(100),
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    PRIMARY KEY ("invnomguardreqid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.rmcpmaster_rmcpid_seq;

-- Table Definition
CREATE TABLE "mf"."rmcpmaster" (
    "rmcpid" int2 NOT NULL DEFAULT nextval('mf.rmcpmaster_rmcpid_seq'::regclass),
    "empid" int4,
    "empcode" int4,
    "userid" varchar(15),
    "pan" varchar(10),
    "emptitile" varchar(10),
    "empfirstname" varchar(50),
    "empmiddlename" varchar(30),
    "emplastname" varchar(30),
    "gender" bpchar(1),
    "empbloodgroup" varchar(5),
    "empresigndate" date,
    "empdatejoined" date,
    "empbirthday" date,
    "emppermobile" int8,
    "empofficemobile" int8,
    "empofficeemail" varchar(50),
    "empperemail" varchar(50),
    "empbranch" int2,
    "role" int2,
    "rolename" varchar(50),
    "designationname" varchar(50),
    "subbrobkercode" varchar(50),
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "euinno" varchar(15),
    "otheremailid" varchar(50),
    "othermobno" int8,
    "isonline" bool NOT NULL DEFAULT false,
    PRIMARY KEY ("rmcpid")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mf.subbrokermaster_subbrokid_seq;

-- Table Definition
CREATE TABLE "mf"."subbrokermaster" (
    "subbrokid" int2 NOT NULL DEFAULT nextval('mf.subbrokermaster_subbrokid_seq'::regclass),
    "subbrokercode" varchar(20) NOT NULL,
    "brokername" varchar(100),
    "isactive" bool NOT NULL DEFAULT true,
    "createddt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdby" varchar(50) NOT NULL,
    "createdip" varchar(20) NOT NULL,
    "updateddt" timestamp,
    "updatedby" varchar(50),
    "updatedip" varchar(20),
    "subbrokerarncode" varchar(15),
    "emailid" varchar(100),
    "contactno" varchar(50),
    "optsubid" int8,
    "empcode" int8,
    "userid" varchar(15),
    PRIMARY KEY ("subbrokid")
);

ALTER TABLE "mf"."docsuploadmapping" ADD FOREIGN KEY ("docid") REFERENCES "mf"."docsmaster"("docid");
ALTER TABLE "mf"."emndtbankmapping" ADD FOREIGN KEY ("nsebankcode") REFERENCES "mf"."bankmaster"("nsebankcode");
ALTER TABLE "mf"."fatcasubmitstatus" ADD FOREIGN KEY ("fatcaappid") REFERENCES "mf"."fatcamaster"("fatcaappid");
ALTER TABLE "mf"."fatcasubmitstatus" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("secondappid") REFERENCES "mf"."invappdet"("invappid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("thirdappid") REFERENCES "mf"."invappdet"("invappid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("invguardid") REFERENCES "mf"."invguarddet"("invguardid");
ALTER TABLE "mf"."iinmaster" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invadddet" ADD FOREIGN KEY ("iinid") REFERENCES "mf"."iinmaster"("iinid");
ALTER TABLE "mf"."invadddet" ADD FOREIGN KEY ("addtypeid") REFERENCES "cmn"."commonmaster"("comnid");
ALTER TABLE "mf"."invadddet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invadddetreq" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invadddetreq" ADD FOREIGN KEY ("newaddtypeid") REFERENCES "cmn"."commonmaster"("comnid");
ALTER TABLE "mf"."invadddetreq" ADD FOREIGN KEY ("oldaddtypeid") REFERENCES "cmn"."commonmaster"("comnid");
ALTER TABLE "mf"."invadddetreq" ADD FOREIGN KEY ("oldinvaddid") REFERENCES "mf"."invadddet"("invaddid");
ALTER TABLE "mf"."invappdet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invbankdet" ADD FOREIGN KEY ("nsebankcode") REFERENCES "mf"."bankmaster"("nsebankcode");
ALTER TABLE "mf"."invbankdet" ADD FOREIGN KEY ("iinid") REFERENCES "mf"."iinmaster"("iinid");
ALTER TABLE "mf"."invbankdet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invbankdetreq" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invbankdetreq" ADD FOREIGN KEY ("oldinvbankid") REFERENCES "mf"."invbankdet"("invbankid");
ALTER TABLE "mf"."invcontactreq" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invdocsdet" ADD FOREIGN KEY ("docid") REFERENCES "mf"."docsmaster"("docid");
ALTER TABLE "mf"."invdocsdet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invdocsdet" ADD FOREIGN KEY ("docmappingid") REFERENCES "mf"."docsuploadmapping"("id");
ALTER TABLE "mf"."invfamilymapping" ADD FOREIGN KEY ("headinvid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invfamilymapping" ADD FOREIGN KEY ("meminvid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invfatcamapping" ADD FOREIGN KEY ("fatcaappid") REFERENCES "mf"."fatcamaster"("fatcaappid");
ALTER TABLE "mf"."invfatcamapping" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invguarddet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invmaster" ADD FOREIGN KEY ("uid") REFERENCES "cmn"."userprofilemaster"("uid");
ALTER TABLE "mf"."invmndtmaster" ADD FOREIGN KEY ("invbankid") REFERENCES "mf"."invbankdet"("invbankid");
ALTER TABLE "mf"."invmndtmasterreq" ADD FOREIGN KEY ("reqinvbankid") REFERENCES "mf"."invbankdetreq"("invbankreqid");
ALTER TABLE "mf"."invmndtmasterreq" ADD FOREIGN KEY ("invbankid") REFERENCES "mf"."invbankdet"("invbankid");
ALTER TABLE "mf"."invmndtmasterreq" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invnomdet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invnomdet" ADD FOREIGN KEY ("iinid") REFERENCES "mf"."iinmaster"("iinid");
ALTER TABLE "mf"."invnomdetreq" ADD FOREIGN KEY ("oldinvnomid") REFERENCES "mf"."invnomdet"("invnomid");
ALTER TABLE "mf"."invnomdetreq" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invnomguarddet" ADD FOREIGN KEY ("iinid") REFERENCES "mf"."iinmaster"("iinid");
ALTER TABLE "mf"."invnomguarddet" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invnomguarddetreq" ADD FOREIGN KEY ("invid") REFERENCES "mf"."invmaster"("invid");
ALTER TABLE "mf"."invnomguarddetreq" ADD FOREIGN KEY ("oldinvnomguardid") REFERENCES "mf"."invnomguarddet"("invnomguardid");
