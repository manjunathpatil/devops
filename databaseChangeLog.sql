--liquibase formatted sql

--changeset DDL:1
CREATE TABLE cmsadopt.cms_parameter (
	param_code varchar(50) NOT NULL,
	param_name varchar(50) NOT NULL,
	param_value varchar(150) NULL,
	param_desc varchar(250) NULL,
	create_date timestamptz NULL,
	create_by varchar(20) NULL,
	change_date timestamptz NULL,
	change_by varchar(20) NULL,
	CONSTRAINT cms_parameter_pkey PRIMARY KEY (param_code, param_name)
);

--rollback drop table cmsadopt.cms_parameter

--changeset DML:1
INSERT INTO cmsadopt.cms_parameter
(param_code, param_name, param_value, param_desc, create_date, create_by, change_date, change_by)
VALUES('BATCH_CONF_PRE_IMP_FILE', 'COMPRESSED_FILE_TYPE', 'gz|zip', NULL, now(), 'System', NULL, NULL);
INSERT INTO cmsadopt.cms_parameter
(param_code, param_name, param_value, param_desc, create_date, create_by, change_date, change_by)
VALUES('BATCH_CONF_PRE_IMP_FILE', 'BATCH_CONF_PRE_IMP_FILE', '3', 'pre process import param', now(), 'System', NULL, NULL);
INSERT INTO cmsadopt.cms_parameter
(param_code, param_name, param_value, param_desc, create_date, create_by, change_date, change_by)
VALUES('BATCH_CONF_PRE_IMP_FILE', 'PREVIOUS_NUM_DAYS', '10', NULL, now(), 'System', NULL, NULL);
INSERT INTO cmsadopt.cms_parameter
(param_code, param_name, param_value, param_desc, create_date, create_by, change_date, change_by)
VALUES('BATCH_CONF_PRE_IMP_FILE', 'NUM_SPLIT_FILE_LINE', '100000', NULL, now(), 'System', NULL, NULL);
INSERT INTO cmsadopt.cms_parameter
(param_code, param_name, param_value, param_desc, create_date, create_by, change_date, change_by)
VALUES('BATCH_CONF_PRE_IMP_FILE', 'PREVIOUS_NUM_MONTHS', '3', NULL, now(), 'System', NULL, NULL);

--rollback DELETE from cmsadopt.cms_parameter WHERE param_value = '3'

--changeset DDL:2
CREATE TABLE cmsadopt.cms_parameter2 (
        param_code varchar(50) NOT NULL,
        param_name varchar(50) NOT NULL,
        param_value varchar(150) NULL,
        param_desc varchar(250) NULL,
        create_date timestamptz NULL,
        create_by varchar(20) NULL,
        change_date timestamptz NULL,
        change_by varchar(20) NULL
);

--rollback drop table cmsadopt.cms_parameter2

--changeset DDL:3
CREATE TABLE cmsadopt.cms_parameter3 (
        param_code varchar(50) NOT NULL,
        param_name varchar(50) NOT NULL,
        param_value varchar(150) NULL,
        param_desc varchar(250) NULL,
        create_date timestamptz NULL,
        create_by varchar(20) NULL,
        change_date timestamptz NULL,
        change_by varchar(20) NULL
);

--rollback drop table cmsadopt.cms_parameter3
