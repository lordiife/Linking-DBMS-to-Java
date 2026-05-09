DROP DATABASE IF EXISTS PROJECT_0248324;
CREATE DATABASE PROJECT_0248324;
USE PROJECT_0248324;

/*
Doctor(Doctor_ID,First_Name,Middle_Name,Last_Name)
Specialization(Doctor_ID,Specilization)
Qualification(Doctor_ID,Qualification)

Patient(Patient_ID,DOB,Locality,Town_City,Doctor_ID)

Medicine(Code,Price,Quantity)

Bill(Patient_ID,Code)
*/

DROP TABLE IF EXISTS Doctor_0248324;
CREATE TABLE Doctor_0248324(
	Doctor_ID CHAR(7),
    First_Name VARCHAR(15),
    Middle_Name VARCHAR(15),
    Last_Name VARCHAR(15),
    PRIMARY KEY(Doctor_ID)
);

DROP TABLE IF EXISTS Specialization_0248324;
CREATE TABLE Specialization_0248324(
	Doctor_ID CHAR(7),
    Specilization VARCHAR(40),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor_0248324(Doctor_ID),
    PRIMARY KEY (Doctor_ID,Specilization)
);

DROP TABLE IF EXISTS Qualification_0248324;
CREATE TABLE Qualification_0248324(
	Doctor_ID CHAR(7),
    Qualification VARCHAR(25),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor_0248324(Doctor_ID),
    PRIMARY KEY (Doctor_ID,Qualification)
);

DROP TABLE IF EXISTS Patient_0248324;
CREATE TABLE Patient_0248324(
	Patient_ID CHAR(10),
    DOB CHAR(10),
    Locality VARCHAR(20),
    Town_City VARCHAR(20),
    Doctor_ID CHAR(7),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor_0248324(Doctor_ID),
    PRIMARY KEY(Patient_ID)
);

DROP TABLE IF EXISTS Medicine_0248324;
CREATE TABLE Medicine_0248324(
	MCode CHAR(20),
    Price NUMERIC(5,2),
    Quantity INT,
    PRIMARY KEY(MCode)
);

DROP TABLE IF EXISTS Bill_0248324;
CREATE TABLE Bill_0248324(
	Patient_ID CHAR(10),
    MCode CHAR(20),
    FOREIGN KEY(Patient_ID) REFERENCES Patient_0248324(Patient_ID),
    FOREIGN KEY(MCode) REFERENCES Medicine_0248324(MCode),
    PRIMARY KEY(Patient_ID,MCode)
);

DESCRIBE Doctor_0248324;
DESCRIBE Specialization_0248324;
DESCRIBE Qualification_0248324;
DESCRIBE Patient_0248324;
DESCRIBE Medicine_0248324;
DESCRIBE Bill_0248324;

SELECT * FROM Doctor_0248324;
SELECT * FROM Specialization_0248324;
SELECT * FROM Patient_0248324;
SELECT * FROM Medicine_0248324;
SELECT * FROM Bill_0248324;

