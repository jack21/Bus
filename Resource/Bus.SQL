--   -------------------------------------------------- 
--   Generated by Enterprise Architect Version 7.5.848
--   Created On : �P���|, 04 �T��, 2010 
--   DBMS       : MySql 
--   -------------------------------------------------- 


SET FOREIGN_KEY_CHECKS=0;



--  Create Tables 
CREATE TABLE Bus
(
	BusId INT NOT NULL AUTO_INCREMENT,
	BusNumber VARCHAR(8) NOT NULL,
	Driver VARCHAR(10),
	PRIMARY KEY (BusId),
	UNIQUE UQ_Bus_BusNumber(BusNumber)
) TYPE=InnoDB COMMENT='����';


CREATE TABLE CorpExp
(
	CorpExpId INTEGER NOT NULL AUTO_INCREMENT COMMENT 'PK',
	ExpTypeName VARCHAR(50) NOT NULL COMMENT '�O�ά�ئW��',
	Years INTEGER NOT NULL COMMENT '�O�Φ~��',
	Months INTEGER NOT NULL COMMENT '�O�Τ��',
	Fee INTEGER NOT NULL DEFAULT 0 COMMENT '�O��',
	PRIMARY KEY (CorpExpId)
)  COMMENT='���q��O��';


CREATE TABLE CorpExpType
(
	CorpExpTypeId INTEGER NOT NULL AUTO_INCREMENT COMMENT 'PK',
	ExpTypeName VARCHAR(50) NOT NULL COMMENT '��ئW��',
	DefaultFee INTEGER NOT NULL DEFAULT 0 COMMENT '�w�]�O��',
	PRIMARY KEY (CorpExpTypeId)
)  COMMENT='���q��O�ά��';


CREATE TABLE DefaultExp
(
	DefaultExpId INTEGER NOT NULL AUTO_INCREMENT COMMENT 'PK',
	ExpCode VARCHAR(50) NOT NULL COMMENT '�O�ΥN��(������Exp��Column Name)',
	DisplayName VARCHAR(50) NOT NULL COMMENT '��ܦW��',
	DefaultValue INTEGER COMMENT '�w�]�O��',
	PRIMARY KEY (DefaultExpId)
)  COMMENT='��O�ιw�]��';


CREATE TABLE DefaultSalaryMisc
(
	DefaultSalaryMiscId INTEGER NOT NULL AUTO_INCREMENT COMMENT 'PK',
	Item VARCHAR(50) NOT NULL COMMENT '���ئW��',
	Cost INTEGER NOT NULL COMMENT '�O��',
	PRIMARY KEY (DefaultSalaryMiscId)
)  COMMENT='�w�]�~�궵��';


CREATE TABLE Exp
(
	ExpId INTEGER NOT NULL AUTO_INCREMENT COMMENT 'PK',
	BusNumber VARCHAR(8) NOT NULL COMMENT '����',
	Years INTEGER NOT NULL COMMENT '�~��',
	Months INTEGER NOT NULL COMMENT '���',
	MemberFee INTEGER COMMENT '��O',
	Tax INTEGER COMMENT '�|��',
	DriverSalary INTEGER COMMENT '�q���~��',
	ServiceSalary INTEGER COMMENT '�A�ȭ��~��',
	UnionFee INTEGER COMMENT '���|�|�O',
	LicenceTax INTEGER COMMENT '�U�ƤεP�ӵ|',
	ParkFee INTEGER COMMENT '�����O',
	Toll INTEGER COMMENT '�L���O',
	FixFee INTEGER COMMENT '�ײz�O',
	Incidental INTEGER COMMENT '���O',
	Cellphone INTEGER COMMENT '��ʹq��',
	Insurance INTEGER COMMENT '�Ұ��O',
	Reserve INTEGER COMMENT '���O�~��',
	Reserve1 INTEGER COMMENT '�O�d�@',
	Reserve2 INTEGER COMMENT '�O�d�G',
	Reserve3 INTEGER COMMENT '�O�d�T',
	Reserve4 INTEGER COMMENT '�O�d�|',
	Note VARCHAR(255) COMMENT '�Ƶ�',
	PRIMARY KEY (ExpId),
	INDEX ID_BusNumber (BusNumber ASC),
	INDEX ID_Years (Years ASC),
	INDEX ID_Month (Months ASC)
) TYPE=InnoDB COMMENT='��O��';


CREATE TABLE Fix
(
	FixId INT NOT NULL AUTO_INCREMENT,
	MDate DATE,
	BusNum VARCHAR(10),
	Mileage VARCHAR(50),
	Money INT,
	Item VARCHAR(30),
	Visa VARCHAR(50),
	Note VARCHAR(50),
	Factory VARCHAR(20),
	PRIMARY KEY (FixId),
	INDEX ID_Date (MDate ASC),
	INDEX ID_BusNumber (BusNum ASC)
) TYPE=InnoDB COMMENT='�ײz�O';


CREATE TABLE Fixmaster
(
	FixMasterId INT NOT NULL AUTO_INCREMENT,
	Year VARCHAR(4) NOT NULL,
	BusNum VARCHAR(7) NOT NULL,
	OwnerName VARCHAR(50),
	OwnerAddress VARCHAR(50),
	OwnerPhone VARCHAR(12),
	UserName VARCHAR(50),
	UserAddress VARCHAR(50),
	UserPhone VARCHAR(12),
	Number VARCHAR(50),
	EngineNumber VARCHAR(50),
	Insurance1Data VARCHAR(50),
	Insurance1Category VARCHAR(50),
	Insurance1Number VARCHAR(50),
	Insurance1During VARCHAR(50),
	Insurance2Data VARCHAR(50),
	Insurance2Category VARCHAR(50),
	Insurance2Number VARCHAR(50),
	Insurance2During VARCHAR(50),
	PRIMARY KEY (FixMasterId),
	UNIQUE ID_YearBusNumber(Year, BusNum)
) TYPE=InnoDB COMMENT='InnoDB free: 20480 kB';


CREATE TABLE SalaryMisc
(
	SalaryMiscId INT NOT NULL AUTO_INCREMENT,
	Date DATE,
	BusNumber VARCHAR(8),
	Item VARCHAR(50),
	Cost INT,
	PRIMARY KEY (SalaryMiscId),
	INDEX ID_BusNumber (BusNumber ASC),
	INDEX ID_Date (Date ASC)
) TYPE=InnoDB COMMENT='�~��';


CREATE TABLE Travel
(
	TravelId INT NOT NULL AUTO_INCREMENT,
	BusNumber VARCHAR(8),
	TravelDate DATE,
	Custom VARCHAR(30),
	Travel VARCHAR(50),
	Groups VARCHAR(50),
	Turnover INT,
	Turnover2 INT,
	TravelExp INT,
	OilExp INT,
	FirstIncome INT,
	FirstIncomeDate DATE,
	SecondIncome INT,
	SecondIncomeDate DATE,
	Tips INT,
	Tips2 INT,
	Note VARCHAR(50),
	Note2 VARCHAR(50),
	StartTime VARCHAR(5),
	EndTime VARCHAR(5),
	PRIMARY KEY (TravelId),
	INDEX ID_BusNumber (BusNumber ASC),
	INDEX ID_Custom (Custom ASC),
	INDEX ID_Groups (Groups ASC),
	INDEX ID_TravelDate (TravelDate ASC)
) TYPE=InnoDB COMMENT='��{';



SET FOREIGN_KEY_CHECKS=1;