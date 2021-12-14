
CREATE TYPE cmn.gender AS ENUM
    ('M', 'F', 'O', 'NA');

CREATE TYPE cmn.kycdesc AS ENUM
    ('Y', 'N', 'Z', 'R');

CREATE TYPE mf.emptype AS ENUM
    ('RM', 'BP', 'NA');

CREATE TYPE mf.submitstatus AS ENUM
    ('P', 'S', 'R');

CREATE TYPE mf.opsverstatus AS ENUM
    ('P', 'A', 'R');

CREATE TYPE mf.apptype AS ENUM
    ('F', 'S', 'T', 'G');

CREATE TYPE mf.invmodehold AS ENUM
    ('AS', 'JO', 'SI', 'ES');

CREATE TYPE mf.commonmaster_nsereltype AS ENUM
    ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '1009');

CREATE TYPE mf.invmaster_invformstage AS ENUM
    ('P', 'B', 'C', 'N', 'T');

CREATE TYPE mf.invmaster_invstrtype AS ENUM
    ('01', '02', '03', '18', '21', '11');

CREATE TYPE mf.invmaster_regstatus AS ENUM
    ('P', 'I', 'E', 'A', 'T', 'D');

CREATE TYPE mf.invbankdet_acctype AS ENUM
    ('CC', 'CA', 'SB', 'FCNR', 'NRE', 'NRO', 'OD', 'PSB');

CREATE TYPE mf.invbankdet_bankactstatus AS ENUM
    ('A', 'P', 'E', 'D');

CREATE TYPE mf.invbankdet_impsstatus AS ENUM
    ('P', 'R', 'S', 'NA');

CREATE TYPE mf.invmndtmaster_mndttype AS ENUM
    ('ECS', 'ACH', 'ESIGN', 'EMANDATE');

CREATE TYPE mf.invmndtmaster_mndtstatus AS ENUM
    ('A', 'P', 'D', 'X', 'E', 'R', 'T');

CREATE TYPE mf.invdocsdet_refmode AS ENUM
    ('B', 'SA', 'M', 'N', 'TA', 'G', 'A', 'FA', 'NA');

CREATE TYPE mf.invdocsdet_reqmode AS ENUM
    ('B', 'A', 'M', 'N', 'C', 'NA');

CREATE TYPE mf.invdocsdet_docstatus AS ENUM
    ('P', 'A', 'R');

CREATE TYPE mf.fatcamaster_politicalexposed AS ENUM
    ('Y', 'N', 'R');







CREATE TABLE IF NOT EXISTS mf.invmaster
(
    invid serial NOT NULL,
    uid integer NOT NULL,
    invcode character varying(50) COLLATE pg_catalog."default",
    nameprefix character varying(10) COLLATE pg_catalog."default",
    investorname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    panno character varying(20) COLLATE pg_catalog."default" NOT NULL,
    emailid bytea NOT NULL,
    mobno bytea NOT NULL,
    dob bytea,
    gender cmn.gender NOT NULL DEFAULT 'O'::cmn.gender,
    nationality character varying(50) COLLATE pg_catalog."default",
    isnri boolean NOT NULL DEFAULT false,
    isnripan boolean NOT NULL DEFAULT false,
    isminor boolean NOT NULL DEFAULT false,
    empcode character varying(20) COLLATE pg_catalog."default",
    iskyc boolean NOT NULL DEFAULT false,
    kycdesc cmn.kycdesc NOT NULL DEFAULT 'N'::cmn.kycdesc,
    isfatca boolean NOT NULL DEFAULT false,
    isdocs boolean NOT NULL DEFAULT false,
    isipv boolean NOT NULL DEFAULT false,
    isactive boolean NOT NULL DEFAULT true,
    remarks character varying(200) COLLATE pg_catalog."default",
    reason character varying(200) COLLATE pg_catalog."default",
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invid integer,
    old_pan character varying(20) COLLATE pg_catalog."default",
    emptype mf.emptype NOT NULL DEFAULT 'NA'::mf.emptype,
    CONSTRAINT pk_mf_invmaster_invid PRIMARY KEY (invid),
    CONSTRAINT uk_mf_invmaster_panno UNIQUE (panno),
    CONSTRAINT uk_mf_invmaster_uid_isactive UNIQUE (uid, isactive),
    CONSTRAINT fk_mf_invmaster_uid FOREIGN KEY (uid)
        REFERENCES cmn.userprofilemaster (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.invappdet
(
    invappid serial NOT NULL,
    invid integer NOT NULL,
    panno character varying(20) COLLATE pg_catalog."default" NOT NULL,
    invappname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    dob bytea NOT NULL,
    gender cmn.gender NOT NULL DEFAULT 'O'::cmn.gender,
    nationality character varying(50) COLLATE pg_catalog."default",
    isnri boolean NOT NULL DEFAULT false,
    iskyc boolean NOT NULL DEFAULT false,
    kycdesc cmn.kycdesc NOT NULL DEFAULT 'N'::cmn.kycdesc,
    isfatca boolean NOT NULL DEFAULT false,
    isipv boolean NOT NULL DEFAULT false,
    isactive boolean NOT NULL DEFAULT true,
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invappid integer,
    opt_id bigint,
    apptype mf.apptype NOT NULL,
    old_pan character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_mf_invappdet_invappid PRIMARY KEY (invappid),
    CONSTRAINT uk_mf_invappdet_invid_panno UNIQUE (invid, panno),
    CONSTRAINT fk_mf_invappdet_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.invguarddet
(
    invguardid serial NOT NULL,
    invid integer NOT NULL,
    panno character varying(20) COLLATE pg_catalog."default" NOT NULL,
    invguardname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    dob bytea NOT NULL,
    gender cmn.gender NOT NULL DEFAULT 'O'::cmn.gender,
    invguardrelcode mf.commonmaster_nsereltype NOT NULL,
    invguardrel character varying(20) COLLATE pg_catalog."default",
    iskyc boolean NOT NULL DEFAULT false,
    kycdesc cmn.kycdesc NOT NULL,
    isfatca boolean NOT NULL DEFAULT false,
    isipv boolean NOT NULL DEFAULT false,
    isactive boolean NOT NULL DEFAULT true,
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invguardid integer,
    old_pan character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_mf_invguarddet_invguardid PRIMARY KEY (invguardid),
    CONSTRAINT uk_mf_invguarddet_invid_panno UNIQUE (invid, panno),
    CONSTRAINT fk_mf_invguarddet_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.invadddet
(
    invaddid serial NOT NULL,
    invid integer NOT NULL,
    addtypeid smallint NOT NULL,
    add1 character varying(500) COLLATE pg_catalog."default" NOT NULL,
    add2 character varying(500) COLLATE pg_catalog."default",
    add3 character varying(500) COLLATE pg_catalog."default",
    pincode character varying(8) COLLATE pg_catalog."default",
    city character varying(50) COLLATE pg_catalog."default",
    statecode character varying(8) COLLATE pg_catalog."default",
    countrycode character varying(8) COLLATE pg_catalog."default",
    isactive boolean NOT NULL DEFAULT true,
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invaddid integer,
    iinid integer NOT NULL,
    CONSTRAINT pk_mf_invadddet_invaddid PRIMARY KEY (invaddid),
    CONSTRAINT fk_mf_invadddet_addtypeid FOREIGN KEY (addtypeid)
        REFERENCES cmn.commonmaster (comnid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_invadddet_iinid FOREIGN KEY (iinid)
        REFERENCES mf.iinmaster (iinid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_invadddet_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS mf.invbankdet
(
    invbankid serial NOT NULL,
    invid integer NOT NULL,
    iinid integer NOT NULL,
    ifsccode character varying(15) COLLATE pg_catalog."default" NOT NULL,
    micrcode character varying(15) COLLATE pg_catalog."default",
    branchname character varying(100) COLLATE pg_catalog."default",
    bankaccadd character varying(500) COLLATE pg_catalog."default",
    bankaccno bytea NOT NULL,
    bankaccholdname bytea NOT NULL,
    isprimary boolean NOT NULL DEFAULT false,
    acctype mf.invbankdet_acctype NOT NULL,
    bankactdate timestamp without time zone,
    bankactstatus mf.invbankdet_bankactstatus NOT NULL,
    impsstatus mf.invbankdet_impsstatus NOT NULL DEFAULT 'NA'::mf.invbankdet_impsstatus,
    isactive boolean NOT NULL DEFAULT true,
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invbankid integer,
    nsebankcode character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_mf_invbankdet_invbankid PRIMARY KEY (invbankid),
    CONSTRAINT fk_mf_invbankdet_iinid FOREIGN KEY (iinid)
        REFERENCES mf.iinmaster (iinid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_invbankdet_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_invbankdet_nsebankcode FOREIGN KEY (nsebankcode)
        REFERENCES mf.bankmaster (nsebankcode) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.fatcamaster
(
    fatcaappid serial NOT NULL,
    panno character varying(20) COLLATE pg_catalog."default" NOT NULL,
    panexkycrefno character varying(20) COLLATE pg_catalog."default",
    applicantname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    dob bytea NOT NULL,
    fathername character varying(100) COLLATE pg_catalog."default",
    spousename character varying(100) COLLATE pg_catalog."default",
    taxstatuscode character varying(5) COLLATE pg_catalog."default" NOT NULL,
    placeofbirth character varying(50) COLLATE pg_catalog."default" NOT NULL,
    countryofbirth character varying(50) COLLATE pg_catalog."default" NOT NULL,
    istaxresotherind boolean NOT NULL DEFAULT false,
    apptaxidnum1 character varying(20) COLLATE pg_catalog."default",
    apptaxcountry2 character varying(20) COLLATE pg_catalog."default",
    apptaxidnum2 character varying(20) COLLATE pg_catalog."default",
    apptaxcountry3 character varying(20) COLLATE pg_catalog."default",
    apptaxidnum3 character varying(20) COLLATE pg_catalog."default",
    apptaxcountry4 character varying(20) COLLATE pg_catalog."default",
    apptaxidnum4 character varying(20) COLLATE pg_catalog."default",
    sourcewealthcode character varying(5) COLLATE pg_catalog."default" NOT NULL,
    appincomecode character varying(5) COLLATE pg_catalog."default" NOT NULL,
    politicalexposed mf.fatcamaster_politicalexposed NOT NULL,
    occupationcode character varying(5) COLLATE pg_catalog."default" NOT NULL,
    isusresident boolean NOT NULL DEFAULT false,
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_fatcaappid integer,
    old_pan character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_mf_fatcamaster_fatcaappid PRIMARY KEY (fatcaappid),
    CONSTRAINT uk_mf_fatcamaster_panno UNIQUE (panno)
);


CREATE TABLE IF NOT EXISTS mf.fatcasubmitstatus
(
    fatcasubid serial NOT NULL,
    invid integer NOT NULL,
    fatcaappid integer NOT NULL,
    apptype mf.apptype NOT NULL,
    issent boolean NOT NULL DEFAULT false,
    sentdate timestamp without time zone,
    submitstatus mf.submitstatus NOT NULL DEFAULT 'P'::mf.submitstatus,
    rejreason character varying(100) COLLATE pg_catalog."default",
    remark character varying(100) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_mf_fatcasubmitstatus_fatcasubid PRIMARY KEY (fatcasubid),
    CONSTRAINT fk_mf_fatcasubmitstatus_fatcaappid FOREIGN KEY (fatcaappid)
        REFERENCES mf.fatcamaster (fatcaappid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_fatcasubmitstatus_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.invmndtmaster
(
    invmndtid serial NOT NULL,
    consumerid character varying(20) COLLATE pg_catalog."default",
    mndtref uuid NOT NULL DEFAULT uuid_generate_v4(),
    invbankid integer NOT NULL,
    mndteffctstrtdt date NOT NULL,
    mndtexpdt date NOT NULL,
    mndtamt numeric(15,2) NOT NULL,
    mndttype mf.invmndtmaster_mndttype NOT NULL,
    mndtstatus mf.invmndtmaster_mndtstatus NOT NULL,
    tpslmndtno integer,
    umrn character varying(50) COLLATE pg_catalog."default",
    ismndtrec boolean NOT NULL DEFAULT false,
    mndtrecdate timestamp without time zone,
    ismndtsent boolean NOT NULL DEFAULT false,
    mndtsentdate timestamp without time zone,
    mndtacptdate timestamp without time zone,
    mndtacptby character varying(50) COLLATE pg_catalog."default",
    mndtacptip character varying(20) COLLATE pg_catalog."default",
    mndtrejdate timestamp without time zone,
    mndtrejby character varying(50) COLLATE pg_catalog."default",
    mndtrejip character varying(20) COLLATE pg_catalog."default",
    mndtrejreason character varying(150) COLLATE pg_catalog."default",
    mndtdeldate timestamp without time zone,
    mndtdelby character varying(50) COLLATE pg_catalog."default",
    mndtdelip character varying(20) COLLATE pg_catalog."default",
    mndtdelreason character varying(50) COLLATE pg_catalog."default",
    remark character varying(100) COLLATE pg_catalog."default",
    isactive boolean NOT NULL DEFAULT true,
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invmndtid integer,
    nseuniquerefno bigint,
    CONSTRAINT pk_mf_invmndtmaster_invmndtid PRIMARY KEY (invmndtid),
    CONSTRAINT uk_mf_invmndtmaster_mndtref UNIQUE (mndtref),
    CONSTRAINT fk_mf_invmndtmaster_invbankid FOREIGN KEY (invbankid)
        REFERENCES mf.invbankdet (invbankid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.invnomdet
(
    invnomid serial NOT NULL,
    invid integer NOT NULL,
    invnomname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    dob bytea NOT NULL,
    invnomrelcode mf.commonmaster_nsereltype NOT NULL,
    invnomrel character varying(20) COLLATE pg_catalog."default",
    benefits smallint NOT NULL,
    isminor boolean NOT NULL DEFAULT false,
    add1 character varying(500) COLLATE pg_catalog."default",
    add2 character varying(500) COLLATE pg_catalog."default",
    add3 character varying(500) COLLATE pg_catalog."default",
    isactive boolean NOT NULL DEFAULT true,
    adminupdateddt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    old_invnomid integer,
    iinid integer NOT NULL,
    CONSTRAINT pk_mf_invnomdet_invnomid PRIMARY KEY (invnomid),
    CONSTRAINT fk_mf_invnomdet_iinid FOREIGN KEY (iinid)
        REFERENCES mf.iinmaster (iinid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_invnomdet_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.docsmaster
(
    docid smallserial NOT NULL,
    doccode character varying(5) COLLATE pg_catalog."default" NOT NULL,
    docname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    doctype mf.docsmaster_doctype NOT NULL,
    isactive boolean NOT NULL DEFAULT true,
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_mf_docsmaster_docid PRIMARY KEY (docid),
    CONSTRAINT uk_mf_docsmaster_doccode UNIQUE (doccode),
    CONSTRAINT uk_mf_docsmaster_docname_doctype UNIQUE (docname, doctype)
);

CREATE TABLE IF NOT EXISTS mf.docsuploadmapping
(
    id serial NOT NULL,
    reqname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    docid smallint NOT NULL,
    docsflag character varying(10) COLLATE pg_catalog."default" NOT NULL,
    isactive boolean NOT NULL DEFAULT true,
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_docsuploadmapping_id PRIMARY KEY (id),
    CONSTRAINT uk_docsuploadmapping_reqname_docid_docsflag UNIQUE (reqname, docid, docsflag),
    CONSTRAINT fk_docsuploadmapping_docid FOREIGN KEY (docid)
        REFERENCES mf.docsmaster (docid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS mf.invdocsdet
(
    invdocsid serial NOT NULL,
    invid integer NOT NULL,
    docmappingid integer NOT NULL,
    docid smallint NOT NULL,
    docpath character varying(500) COLLATE pg_catalog."default" NOT NULL,
    docname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    refid integer,
    refmode mf.invdocsdet_refmode NOT NULL,
    reqid integer,
    reqmode mf.invdocsdet_reqmode NOT NULL,
    docdesc character varying(50) COLLATE pg_catalog."default" NOT NULL,
    docstatus mf.invdocsdet_docstatus NOT NULL,
    docsremark character varying(100) COLLATE pg_catalog."default",
    acptdt timestamp without time zone,
    rejdt timestamp without time zone,
    rejreason character varying(300) COLLATE pg_catalog."default",
    ishold boolean NOT NULL DEFAULT false,
    opsverstatus mf.opsverstatus NOT NULL DEFAULT 'P'::mf.opsverstatus,
    opsverdt timestamp without time zone,
    adminupdatedby character varying(50) COLLATE pg_catalog."default",
    adminupdatedip character varying(20) COLLATE pg_catalog."default",
    adminupdateddt timestamp without time zone,
    remark character varying(100) COLLATE pg_catalog."default",
    createddt timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(50) COLLATE pg_catalog."default" NOT NULL,
    createdip character varying(20) COLLATE pg_catalog."default" NOT NULL,
    updateddt timestamp without time zone,
    updatedby character varying(50) COLLATE pg_catalog."default",
    updatedip character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_mf_invdocsdet_invdocsid PRIMARY KEY (invdocsid),
    CONSTRAINT fk_invdocsdet_docid FOREIGN KEY (docid)
        REFERENCES mf.docsmaster (docid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_invdocsdet_invid FOREIGN KEY (invid)
        REFERENCES mf.invmaster (invid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_mf_invdocsdet_docmappingid FOREIGN KEY (docmappingid)
        REFERENCES mf.docsuploadmapping (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);





