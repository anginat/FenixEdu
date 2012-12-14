create table `DOMAIN_OPERATION_LOG` (`OID` bigint unsigned, `DESCRIPTION` text, `WHEN_DATE_TIME` timestamp NULL default NULL, `OID_PERSON` bigint unsigned, `OID_EXECUTION_COURSE` bigint unsigned, `OJB_CONCRETE_CLASS` varchar(255) NOT NULL DEFAULT '', `OID_ROOT_DOMAIN_OBJECT` bigint unsigned, `ID_INTERNAL` int(11) NOT NULL auto_increment, primary key (ID_INTERNAL), index (OID), index (OID_PERSON), index (OID_EXECUTION_COURSE), index (OID_ROOT_DOMAIN_OBJECT)) ENGINE=InnoDB, character set utf8;