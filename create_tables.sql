-- SCHEMA: ISARIC

DROP SCHEMA "ISARIC" ;

CREATE SCHEMA "ISARIC"
    AUTHORIZATION postgres;
	
CREATE TABLE IF NOT EXISTS ISARIC.Demographics (
STUDYID varchar(30),
"DOMAIN" varchar (10),
USUBJID varchar (20),
SUBJID varchar(30),
RFSTDTC varchar(30),
DTHFL varchar(30),
AGE INT,
AGEU varchar(30),
SEX varchar(30),
RACE varchar(30),
ETHNIC varchar(30),
ARMCD varchar(30),
ARM varchar(30),
COUNTRY varchar(30),
DMDY INT,
PRIMARY KEY(USUBJID)	
);

CREATE TABLE IF NOT EXISTS ISARIC.Disposition (
STUDYID varchar(30),
"DOMAIN" varchar(30),
USUBJID varchar(30),
DSSEQ INT,
DSTERM varchar(30),
DSMODIFY varchar(30),
DSDECOD varchar(30),
DSSTDY INT,
DSEVINTX varchar(30),
PRIMARY KEY(USUBJID,DSSEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);
CREATE TABLE IF NOT EXISTS ISARIC.healthcare_encounters (
STUDYID varchar(30),
"DOMAIN" varchar(30),
USUBJID varchar(30),
HOSEQ INT,
HOTERM varchar(30),
HODECOD varchar(30),
HOPRESP varchar(30),
HOOCCUR varchar(30),
HOSTAT varchar(30),
HOREASND varchar(30),
HODY INT,
HOSTDY INT,
HOENDY INT,
HODUR varchar(30),
HOSTRF varchar(30),
HOEVINTX varchar(30),
HODISOUT varchar(30),
SELFCARE varchar(30),
PRIMARY KEY(USUBJID,HOSEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);

CREATE TABLE IF NOT EXISTS ISARIC.inclusion_exclusion_criteria(
STUDYID	varchar(30),
"DOMAIN" varchar(30),
USUBJID varchar(30),
IESEQ INT,
IETESTCD varchar(30),
IETEST varchar(30),
IECAT varchar(30),
IEORRES varchar(30),
IESTRESC varchar(30),
IESTAT varchar(30),
IEREASND varchar(30),
IEDY INT,
PRIMARY KEY(USUBJID,IESEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);

CREATE TABLE IF NOT EXISTS ISARIC.treatments_and_interventions(
STUDYID varchar(30),	
"DOMAIN" varchar(30),
USUBJID varchar(30),
INSEQ INT,
INTRT varchar(30),
INMODIFY varchar(30),
INDECOD varchar(30),
INCAT varchar(30),
INSCAT varchar(30),
INPRESP varchar(30),
INOCCUR varchar(30),
INSTAT varchar(30),
INREASND varchar(30),
INCLAS varchar(30), 
INCLASCD varchar(30),
INDY varchar(30),
INSTDY varchar(30),
INENDY varchar(30),
INDUR varchar(30),
INSTRF varchar(30),
INEVINTX varchar(30),
PRIMARY KEY(USUBJID,INSEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);


CREATE TABLE IF NOT EXISTS ISARIC.microbiology_specimen(
STUDYID varchar(30),
"DOMAIN" varchar(30),
USUBJID varchar(30),
MBSEQ INT,
MBTESTCD varchar(30),
MBTEST varchar(30),
MBTSTDTL varchar(30),
MBCAT varchar(30),
MBSCAT varchar(30),
MBORRES varchar(30),
MBORRESU varchar(30),
MBSTRESC varchar(30),
MBSTRESN varchar(30),
MBSTRESU varchar(30),
MBSTAT varchar(30),
MBREASND varchar(30),
MBSPEC varchar(30),
MBLOC varchar(30),
MBMETHOD varchar(30),
MBDY varchar(30),
MBEVINTX varchar(30),
PRIMARY KEY(USUBJID,MBSEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);

CREATE TABLE IF NOT EXISTS ISARIC.disease_response_and_clinical_classification(
STUDYID	varchar(30),
"DOMAIN" varchar(30),	
USUBJID	varchar(30),
RSSEQ INT,	
RSTESTCD varchar(30),
RSTEST varchar(30),
RSCAT varchar(30),
RSORRES varchar(30),
RSORRESU varchar(30),
RSSTRESC varchar(30),
RSSTRESN varchar(30),
RSSTRESU varchar(30),
RSSTAT varchar(30),
RSREASND varchar(30),
RSDY INT,
RSEVINTX varchar(30),
PRIMARY KEY(USUBJID,RSSEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)	
);

CREATE TABLE IF NOT EXISTS ISARIC.clinical_and_adverse_events(
STUDYID varchar(30),
"DOMAIN" varchar(30),
USUBJID varchar(30),
SASEQ INT,
SATERM varchar(30),
SAMODIFY varchar(30),
SACAT varchar(30),
SASCAT varchar(30),
SAPRESP varchar(30),
SAOCCUR varchar(30),
SASTAT varchar(30),
SAREASND varchar(30),
SADY INT,
SASTDY varchar(30),
SAENDY varchar(30),
SADUR varchar(30),
SASTRF varchar(30),
SAEVINTX varchar(30),
PRIMARY KEY(USUBJID,SASEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);

CREATE TABLE IF NOT EXISTS ISARIC.subject_visits(
STUDYID	varchar(30),
"DOMAIN" varchar(30),	
USUBJID varchar(30),	
VISIT varchar(30),	
SVSTDY INT,
PRIMARY KEY(USUBJID),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)	
);

CREATE TABLE IF NOT EXISTS ISARIC.vital_signs(
STUDYID varchar(30),	
"DOMAIN" varchar(30),
USUBJID varchar(30),
VSSEQ INT,
VSTESTCD varchar(30),
VSTEST varchar(30),
VSCAT varchar(30),
VSORRES REAL,
VSORRESU varchar(30),
VSSTRESC REAL,
VSSTRESN REAL,
VSSTRESU varchar(30),
VSSTAT varchar(30),
VSREASND varchar(30),
VSDY INT,
VSEVINTX varchar(30),
VSO2SRC varchar(30),
PRIMARY KEY(USUBJID,VSSEQ),	
FOREIGN KEY(USUBJID) 
  REFERENCES Demographics(USUBJID)
);

