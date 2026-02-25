CREATE DATABASE lab2_db;
USE lab2_db;

CREATE TABLE tblStudent (
	studentNumber INT(11) auto_increment PRIMARY KEY,
    firstName VARCHAR(100),
    lastName VARCHAR(100) NOT NULL,
    middleName VARCHAR(100),
    birthdate VARCHAR (20),
    citizenship VARCHAR(50) COMMENT "Example: Filipino, Nigerian, Korean",
    gender VARCHAR(100) COMMENT "Male or Female"
);

SHOW FULL COLUMNS FROM tblStudent;

-- insert values
-- inserting following records
INSERT INTO tblStudent (
	studentNumber, 
    firstName, 
    lastName, 
    middleName, 
    birthdate,
    citizenship,
    gender
) VALUES (202014912, 'STEVEN', 'ESPEDID', 'ROSALDO', '2001-01-01', 'FILIPINO', 'MALE'),
	(202014165, 'NINA KLARISSE', 'ULANGKAYA', 'AMBROSIO', '2000-01-02', 'FILIPINO', 'FEMALE'),
	(202011535, 'ADRIAN', 'CARRANZA', 'RUBIA', '2000-01-03', 'FILIPINO', 'MALE'),
	(202011818, 'JEAN', 'DACLES', 'RICO', '2000-01-04', 'FILIPINO', 'FEMALE'),
	(202012336, 'GILLIAN KYLE', 'CATAHAN', 'DIMAALA', '2000-01-05', 'FILIPINO', 'MALE');
    
SELECT * FROM tblStudent;

-- ALTERING TABLES
ALTER TABLE tblStudent CHANGE gender sex VARCHAR(6);
ALTER TABLE tblStudent CHANGE birthdate birthdate DATE;
ALTER TABLE tblStudent CHANGE citizenship citizenship VARCHAR(20);

-- inserting new field 
ALTER TABLE tblStudent ADD age INT(3) AFTER birthdate;

-- alterting table name
ALTER TABLE tblStudent RENAME studentinfo;

SELECT * FROM studentinfo;

-- STRING FUNCTIONS 

-- STRING FUNCTION

SELECT UPPER(firstName),
	UPPER(middleName),
	UPPER(lastName) FROM studentinfo;
    
SELECT REPLACE (citizenship, 'Filipino', 'Pinoy') FROM studentinfo;

SELECT concat(studentNumber, ' - ', firstName, ' ', middleName, ' ', lastName) FROM studentinfo;

SELECT REPEAT(lastName, 5) FROM studentinfo;

SELECT AVG(age) FROM studentinfo;



SELECT DATE_FORMAT(birthdate, '%M %d, %Y')FROM studentinfo;
SELECT sex, COUNT(*) FROM studentinfo GROUP BY sex;

SELECT * FROM studentinfo ORDER BY lastName ASC;


