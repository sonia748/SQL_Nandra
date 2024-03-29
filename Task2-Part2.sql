/*-- MySQL Script generated by MySQL Workbench
-- Mon Sep 30 18:04:20 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA mydb DEFAULT CHARACTER SET utf8 ;
USE mydb ;



-- -----------------------------------------------------
-- Table Category
-- -----------------------------------------------------
*/

CREATE TABLE Category (
  CategoryID INT NOT NULL PRIMARY KEY,
  CategoryName VARCHAR(45) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
)


-- -----------------------------------------------------
-- Table Advisor
-- -----------------------------------------------------


CREATE TABLE Advisor (
  AdvisorID INT NOT NULL PRIMARY KEY,
  FullName VARCHAR(255) NOT NULL,
  Positon VARCHAR(45) NOT NULL,
  DeptName VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Phone VARCHAR(45) NOT NULL,
  Office_Location VARCHAR(255) NOT NULL,
 )


-- -----------------------------------------------------
-- Table Residence_Hall
-- -----------------------------------------------------

CREATE TABLE Residence_Hall (
  ID INT NOT NULL  PRIMARY KEY,
  Full_Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Phone VARCHAR(45) NOT NULL,
  Room_No VARCHAR(45) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
 )

-- -----------------------------------------------------
-- Table Accommodaton_Staff
-- -----------------------------------------------------

CREATE TABLE Accommodaton_Staff (
	ID int not null primary key,
  StudentID INT NOT NULL references Student(id),
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50) NOT NULL,
  Home_Address VARCHAR(45) NOT NULL,
  Street VARCHAR(45) NOT NULL,
  City VARCHAR(45) NOT NULL,
  Zip_Code VARCHAR(10) NOT NULL,
  DOB DATETIME NOT NULL,
  Sex VARCHAR(6) NOT NULL,
  Position VARCHAR(50) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
 )


-- -----------------------------------------------------
-- Table Students
-- -----------------------------------------------------

CREATE TABLE Students (
  StudentID INT NOT NULL PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  HomeAddress VARCHAR(50) NOT NULL,
  Street VARCHAR(50) NOT NULL,
  City VARCHAR(255) NOT NULL,
  ZipCode VARCHAR(10) NOT NULL,
  DOB DATETIME NOT NULL,
  Sex VARCHAR(1) NOT NULL,
  Nationality VARCHAR(50) NOT NULL,
  SpecialNeeds VARCHAR(255) NOT NULL,
  CurrentStatus BINARY(1) NOT NULL,
  AddionalComments VARCHAR(255) NOT NULL,
  CategoryID INT NOT NULL REFERENCES Category(ID),
  AdditionalComments VARCHAR(255) NOT NULL,
  ResidenceID INT NOT NULL REFERENCES Residence(ID),
  Created_At DATETIME NOT NULL,
  updated_At DATETIME NOT NULL,
  AdvisorID INT NOT NULL REFERENCES Advisor(ID),
  Residence_Hall_ID INT NOT NULL REFERENCES Residence_Hall(ID),
  Accommodaton_Staff_StudentID INT NOT NULL REFERENCES Accommodaton_Staff_Student(ID),
  )

-- -----------------------------------------------------
-- Table Hall_Rooms
-- -----------------------------------------------------
CREATE TABLE Hall_Rooms (
  ID INT NOT NULL PRIMARY KEY,
  Hall_ID INT NOT NULL,
  Maximum_Students INT NOT NULL,
  Monthly_Rent VARCHAR(5) NOT NULL,
  Residence_Hall_ID INT NOT NULL REFERENCES Residence_Hall(ID),
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  )



-- -----------------------------------------------------
-- Table Instructors
-- -----------------------------------------------------

CREATE TABLE Instructors (
  InstructorID INT NOT NULL PRIMARY KEY,
  Instructor_Name VARCHAR(255) NOT NULL,
  Course_Name VARCHAR(255) NOT NULL,
  Department_Name VARCHAR(45) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  )


-- -----------------------------------------------------
-- Table Courses
-- -----------------------------------------------------

CREATE TABLE Courses (
  CourseID INT NOT NULL PRIMARY KEY,
  Course_Title VARCHAR(50) NOT NULL,
  InstructorID INT NOT NULL REFERENCES Instructor_(ID),
  Year INT NOT NULL,
  Department_Name VARCHAR(50) NOT NULL,
  Registration_Date DATETIME NOT NULL,
  Room_No VARCHAR(10) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  StudentID INT NOT NULL REFERENCES Student(ID),
  CategoryID INT NOT NULL REFERENCES Category(ID),
  Students_DOB DATETIME NOT NULL,
  AdvisorID INT NOT NULL REFERENCES Advisor(ID),
  Students_Residence_Hall_ID INT NOT NULL REFERENCES Students_Residence_Hall_(ID),
  Instructors_InstructorID INT NOT NULL REFERENCES Instructors_Instructor_(ID),
 )


-- -----------------------------------------------------
-- Table Flat
-- -----------------------------------------------------
CREATE TABLE Flat (
  Flat_ID VARCHAR(10) NOT NULL PRIMARY KEY,
  Maximum_Rooms VARCHAR(20) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
)


-- -----------------------------------------------------
-- Table Students_Accommodation
-- -----------------------------------------------------

CREATE TABLE Students_Accommodation (
  StudentID INT NOT NULL PRIMARY KEY,
  Accommodation_Type VARCHAR(45) NOT NULL,
  Accommodation_ID INT NOT NULL REFERENCES Accommodation_(ID),
  Room_No VARCHAR(20) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  Residence_Hall_ID INT NOT NULL REFERENCES Residence_Hall_(ID),
  Flat_Flat_ID VARCHAR(10) NOT NULL REFERENCES Flat_Flat_(ID),
  
 )


-- -----------------------------------------------------
-- Table Flat_Rooms
-- -----------------------------------------------------

CREATE TABLE Flat_Rooms (
  ID INT NOT NULL PRIMARY KEY,
  Flat_ID VARCHAR(20) NOT NULL REFERENCES Flat_(ID),
  Room_No INT NOT NULL,
  Maximum_Students INT NOT NULL,
  Monthly_Rent VARCHAR(5) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  Flat_Flat_ID VARCHAR(10) NOT NULL REFERENCES Flat_Flat_(ID),
  )


-- -----------------------------------------------------
-- Table Leases
-- -----------------------------------------------------
CREATE TABLE Leases (
  StudentID INT NOT NULL PRIMARY KEY,
  Actual_Start_Date DATETIME NOT NULL,
  Actual_End_Date DATETIME NOT NULL,
  Duration SMALLINT NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
 )


-- -----------------------------------------------------
-- Table Invoices
-- -----------------------------------------------------
CREATE TABLE Invoices (
  ID INT NOT NULL PRIMARY KEY,
  StudentID VARCHAR(45) NOT NULL REFERENCES Student_(ID),
  Lease_ID VARCHAR(45) NOT NULL REFERENCES Lease_(ID),
  Quarter SMALLINT NOT NULL,
  Invoice_Date DATETIME NOT NULL,
  Payment_Due_Date DATETIME NOT NULL,
  Flat_Type VARCHAR(20) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  Flat_Flat_ID VARCHAR(10) NOT NULL REFERENCES Flat_Flat_(ID),
  Leases_StudentID INT NOT NULL REFERENCES Leases_Student_(ID),
  )


-- -----------------------------------------------------
-- Table Payments
-- -----------------------------------------------------

CREATE TABLE Payments (
  ID INT NOT NULL PRIMARY KEY,
  StudentID INT NOT NULL REFERENCES Student_(ID),
  Invoice_ID INT NOT NULL references Invoice_(ID),
  Actual_Payment_Date DATETIME NOT NULL,
  Payment_Method VARCHAR(10) NOT NULL,
  Created_At DATETIME NOT NULL,
  Update_At DATETIME NOT NULL,
  Invoices_ID INT NOT NULL references Invoices_(ID),
  Invoices_Flat_Flat_ID VARCHAR(10) NOT NULL REFERENCES Invoices_Flat_Flat_(ID),
  Invoices_Leases_StudentID INT NOT NULL REFERENCES Invoices_Leases_Student_(ID),
 )



-- -----------------------------------------------------
-- Table Flat_Inspection
-- -----------------------------------------------------

CREATE TABLE Flat_Inspection (
  Inspection_ID INT NOT NULL PRIMARY KEY,
  Staff_Inspection_ID VARCHAR(45) NOT NULL REFERENCES Staff_Inspection_(ID),
  Flat_ID VARCHAR(20) NOT NULL REFERENCES Flat_(ID),
  Inspection_Date DATETIME NOT NULL,
  Satisfactory_Conditon BINARY NOT NULL,
  Comments VARCHAR(255) NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  Flat_Rooms_ID INT NOT NULL REFERENCES Flat_Rooms_(ID),
  Flat_Rooms_Flat_Flat_ID VARCHAR(10) NOT NULL REFERENCES Flat_Rooms_Flat_Flat_(ID),
  Accommodaton_Staff_StudentID INT NOT NULL REFERENCES Accommodaton_Staff_Student_(ID),
  Hall_Rooms_ID INT NOT NULL REFERENCES Hall_Rooms_(ID),
  Hall_Rooms_Residence_Hall_ID INT NOT NULL REFERENCES Hall_Rooms_Residence_Hall_(ID),
  )


-- -----------------------------------------------------
-- Table Contacts
-- -----------------------------------------------------
CREATE TABLE Contacts (
  Contact_ID INT NOT NULL PRIMARY KEY,
  Full_Name VARCHAR(255) NOT NULL,
  Relationship VARCHAR(20) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Phone VARCHAR(15) NOT NULL,
  SSN INT NOT NULL,
  Created_At DATETIME NOT NULL,
  Updated_At DATETIME NOT NULL,
  Residence_Hall_ID INT NOT NULL REFERENCES Residence_Hall(ID),
  CategoryID INT NOT NULL REFERENCES Category(ID),
  AdvisorID INT NOT NULL REFERENCES Advisor(ID),
  StudentID INT NOT NULL REFERENCES Student(ID),
  )