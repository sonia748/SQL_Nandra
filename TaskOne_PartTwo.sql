create database college;
	use college;
    
create table students(
	StudentID int,
	ResidenceID int,
	FirstName varchar(255),
	LastName varchar(255),
	HomeAddress varchar(50),
	Street varchar(50),
	City varchar(255),
	ZipCode varchar(10),
	DOB date,
	Email varchar(255),
	Sex varchar(6),
	Nationality varchar(50),
	SpecialNeeds varchar(255),
	AdditionalComments varchar(255),
	Created_At date,
	Updated_At date
);

Create table Category(
	CategoryID int,
	CategoryName varchar(50),
	Created_At date,
	Updated_At date
);

Create table Advisor(
	AdvisorID int,
	FullName varchar(255),
	Position varchar(255),
	DeptName varchar(255),
	Email varchar(255),
	Phone varchar(15),
	OfficeLocation varchar(255),
    Created_At date,
	Updated_At date
); 

Create table Courses(
	CourseID int,
	CourseTitle varchar(50),
	InstructorID int,
	Year int,
	DepartmentName varchar(255),
	registrationDate Date,
	RoomNo varchar(10),
	Created_At Date,
	Updated_At Date
);

Create table Instructors(
	InstructorID int,
	InstructorFullName varchar(255),
	CourseName varchar(50),
	DepartmentName varchar(45),
	Created_At Date,
	Updated_At Date
);

Create table StudentsAccommodation(
	StudentID int,
    Accommodation_Type varchar(45),
	AccommodationID int,
    RoomNo varchar(20),
	Created_At Date,
	Updated_At Date
);

Create table ResidenceHall(
	ID int,
	FullName varchar(255),
	Address varchar(255),
	Phone varchar(15),
	RoomNo varchar(45),
	Created_At Date,
	Updated_At Date
);

Create table Hall_Rooms(
	ID int,
	Hall_ID int,
	MaximumStudents int,
	MonthlyRent varchar(5),
	Created_At Date,
	Updated_At Date
);

Create table Flat(
	FlatID varchar(10),
	MaximumRooms int,
	Created_At Date,
	Updated_At Date
);

Create table FlatRooms(
	ID int,
	FlatID varchar(10),
	RoomNo int,
	MaximumStudents int,
	MonthlyRent varchar(5),
	Created_At Date,
	Updated_At Date
);

Create table Invoices(
   	ID int,
	 StudentID varchar(45),
	 LeasessID varchar (45),
	 Quarter smallint,
	 InvoiceDate Date,
	 PaymentDueDate date,
	 Flat_Type varchar(20),
	 Created_At Date,
	 Updated_At Date
);

Create table Leases(
	StudentID int,
	ActualStartDate Date,
	ActualEndDate Date,
	Duration SMALLINT,
	Created_At Date,
	Updated_At Date
);

Create table Payments(
	ID int,
	StudentID int,
	InvoiceID int,
	ActualPaymentDate Date,
	PaymentMethod varchar(10),
	Created_At Date,
	Updated_At Date
);

Create table FlatInspection(
    StudentID int,
	InspectionID int,
	StaffInspectionID varchar(45),
	FlatID varchar(20),
    FlatRoomID varchar(20),
	InspectionDate Date,
	Satisfactory_Condition Binary,
	Comments varchar(255),
	Created_At Date,
	Updated_At Date
);

Create table Accommodation_Staff(
	StudentID int,
	FirstName varchar(50),
	LastName varchar(50),
	Home_Address varchar(50),
	Street varchar(50),
	City varchar(50),
	Zip_Code varchar(10),
	DOB Date,
	Sex varchar(6),
	Position varchar(50),
	Created_At Date,
	Updated_At Date
);
Create table Contacts(
		StudentID int,
	    ContactID int,
		SSN bigint,
		FullName varchar(255),
        Relationship varchar(50),
        Address varchar(255),
        Created_At Date,
		Updated_At Date
);
select * from Accommodation_Staff;
                                /*Data for Students*/
insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019001, 1001, 'Harpreet', 'Nandra', '95', 'Charlais Blvd', 'Brampton', 'L5R 6S4','1980-05-25',
 'sonianandra30@gmail.com', 'F', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019002, 1002, 'Manpreet', 'Rao', '85', 'Brandon Blvd', 'Brampton', 'L6R 9S4','1980-05-25',
 'Manpreet.Rao@gmail.com', 'M', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019003, 1003, 'Rajeev', 'Kummar', '45', 'Racoon Street', 'Brampton', 'L6R 0S3','1980-05-25',
 'Rajeev.Kummar@gmail.com', 'M', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019004, 1004, 'Sangeeta', 'Dasai', '75', 'Charlois Blvd', 'Brampton', 'L5R 6S4','1980-05-25',
 'Sangeeta.Dasai0@gmail.com', 'F', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019005, 1005, 'Rommer', 'Chu', '97', 'brooke Street', 'Caldon', 'L9R 6H4','1980-05-25',
 'Rommer.Chu@gmail.com', 'M', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019006, 1006, 'John', 'Doe', '96', 'NorthPark ', 'Brampton', 'L6R 2S7','1990-12-04',
 'John.Doe@gmail.com', 'M', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019007, 1007, 'Sam', 'Smith', '75', 'Charlois Blvd', 'Brampton', 'L6R 4S9','1992-02-03',
 'Sam.Smith@gmail.com', 'M', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019008, 1008, 'Ravinder', 'Dhaliwal', '64', 'Triple Crown Drive', 'Brampton', 'L5R 6S4','1979-05-20',
 'Ravinder.Dhaliwal@gmail.com', 'F', 'Candian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019009, 1009, 'Punkaj', 'Arora', '85', 'Eastway Street', 'Toronto', 'L8R 6S2','1978-07-23',
 'Punkaj.Arora@Hotmail.com', 'M', 'Indian', ' ', ' ', '2019-05-20','2019-05-29');

insert into students (StudentID, ResidenceID, FirstName, LastName, HomeAddress, Street, City, ZipCode,
 DOB, Email, Sex, Nationality, SpecialNeeds, AdditionalComments, Created_At,Updated_At)
 values (2019010, 1010, 'Robert', 'Pretty', '74', 'Bryony Road', 'Rexdale', 'L6R 2S7','1995-07-27',
 'Robert.Pretty@gmail.com', 'M', 'Candian', ' ', ' ', '2019-05-20','2019-05-29'); 
 select * from students;
								/*Data for Catgory Table*/
insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10001, 'Junior', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10002, 'Graduate', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10003, 'Junior ', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10004, 'Graduate ', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10005, ' Sophomor', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10006, 'Junior ', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10007, 'Graduate ','2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10008, 'Sophomor', '2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10009, 'Sophomor','2019-05-20','2019-05-29');

insert into Category (CategoryID, CategoryName, Created_At, Updated_At) 
		values (10010, 'Graduate ', '2019-05-20','2019-05-29');
		
								/* Data for Advisors Table*/
insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190001, 'Ethan Smith', 'Financial Advisor', 'Financial Department',
		'Ethan.Smith@hotmail.com', '416 846 5799', '55 Rexdale Blvd Toronto L5R 9V3','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190004, 'Johnson Williams', 'Education Advisor', 'Technology Department',
		'Johnson.Williams@hotmail.com', '416 846 5899', ' 55 Rexdale Blvd, Toronto L5R 3V8','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190045, 'Willson Smith', 'Education Advisor', 'Medical Department',
		'Willson.Smith@hotmail.com', '416 846 2586', '55 Rexdale Blvd Toronto L5R 9V3','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190046, 'Miller Brown', 'Carrer Services Advisor', 'Career Department',
		'Miller.brown@hotmail.com', '416 746 5799', ' 55 Bryony Blvd, caldon L8R 3V6','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190067, 'Davis Hill', 'Athletic Advisor', 'Sports Department',
		'Davis.Hill@hotmail.com', '416 846 4499', ' 55 Rexdale Blvd, Toronto L5R 9V3','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190027, 'Adams Lopaz', 'Academic Advisor', 'Education Department',
		'Adams.Lopaz@hotmail.com', '416 846 3399', '89 Martin Blvd, Toronto L6R 2R9','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190085, 'Thomas Cooper', 'Minor Advisor', 'Education Department',
		'Thomas.Cooper@hotmail.com', '416 846 6422', ' 55 Rexdale Blvd, Toronto L5R 9V3','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190054, 'Martin Gray', 'Major Advisor', 'Major Department',
		'Martin.Gray@hotmail.com', '416 888 5799', ' 55 Humber Blvd, Toronto L5R 9V3','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190357, 'Phillip Cox', 'Academic Advisor', 'Education Department',
		'Phillip.Cox@hotmail.com', '416 546 5799', ' 55 Rexdale Blvd, Toronto L5R 9V3','2019-05-20','2019-05-29');

insert into Advisor (AdvisorID, FullName, Position, DeptName, Email, Phone, OfficeLocation,
		Created_At,	Updated_At) values (20190451, 'Lee Walker', 'Financial Advisor', 'Financial Department',
		'Lee.Walker@hotmail.com', '416 843 4685', ' 89 martin Blvd, Toronto L6R 2R9','2019-05-20','2019-05-29');

                                 /*Data for Courses*/
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (1224, 'Math', 208486, 2019, ' Math Department', 
		'2019-09-25', 'MATH101', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (4685, 'Sci', 200056, 2019, ' Science Department', 
		'2019-09-25', 'SCI202', '2019-05-20','2019-05-29');       
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (64789, 'Tech', 200119, 2019, ' Technology Department', 
		'2019-09-25', 'TECH301', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (125664, 'Bio', 200146, 2019, ' Science Department', 
		'2019-09-25', 'SCI203', '2019-05-20','2019-05-29');      
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (64548, 'Eng', 200119, 2019, ' Language Department', 
		'2019-09-25', 'ENG405', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (13597, 'BIOTech', 200229, 2019, ' Technology Department', 
		'2019-09-25', 'TECH601', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (1224, 'Math', 202548, 2019, ' Math Department', 
		'2019-09-25', 'MATH305', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (1624, 'Math', 204449, 2019, ' Math Department', 
		'2019-09-25', 'MATH308', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (1224, 'Bio', 200119, 2019, ' Science Department', 
		'2019-09-25', 'SCI403', '2019-05-20','2019-05-29');
insert into Courses (CourseID, CourseTitle, InstructorID, Year, DepartmentName, registrationDate,
		RoomNo, Created_At, Updated_At) values (650473, 'Chemi', 204595, 2019, ' Science Department', 
		'2019-09-25', 'CHMI701', '2019-05-20','2019-05-29');
        
								/*  Data for Instructors*/
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (200119, 'Mr Scott king', 'Math', 'Math Department', '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (650473, 'Ms. Ross Allen', 'Chemistry', 'Science Department',
    '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (204449, 'Ms. Allen Cox', 'Math', 'Math Department', '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (200229, 'MR. Lewis Lee', 'Bio Technology', 'Technology Department',
	'2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (200119, 'Ms. Green Baker', 'Math', 'Math Department', '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (125664, 'Mr. Adams Cooper', 'Biology', 'Science Department', 
    '2019-05-20','2019-05-29');
insert into Instructors( InstructorID,InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (202548, 'Mr. Nelson Long', 'Math', 'Math Department', '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (208486, 'Mr. Morgan Wood', 'Math', 'Math Department', '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (200119, 'Ms. Sandra Evans', 'Language', 'Language Department',
    '2019-05-20','2019-05-29');
insert into Instructors( InstructorID, InstructorFullName, CourseName, DepartmentName,
	Created_At, Updated_At) values (200119, 'Mr. Harris Russell', 'Math', 'Math Department', '2019-05-20','2019-05-29');
    
						/*Data for Students Accommodation */
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019001, 'Flat Room', 20201, 'G101', '2019-05-20','2019-05-29');    
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019002, 'Hall Room', 20202, 'HR209', '2019-05-20','2019-05-29');    
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019003, 'Flat Room', 20203, 'F201', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019004, 'Flat room', 20204, 'G201', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019005, 'Hall Room', 20205, 'HR305', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019006, 'Flat Room', 20206, 'F406', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019007, 'Flat Room', 20207, 'F310', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019008, 'Hall Room', 20208, 'HR215', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019009, 'Flat Room', 20209, 'F503', '2019-05-20','2019-05-29');
insert into StudentsAccommodation ( StudentID, Accommodation_Type, AccommodationID, RoomNo,
	Created_At, Updated_At)
    values (2019010, 'Hall Room', 20210, 'HR109', '2019-05-20','2019-05-29');
    
								/* Data for Residencial Hall*/
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
        values ( 4001, 'Harpreet Nandra', '89 Humber Blvd Toronto L9R 6S4', '647 495 1458', 'F201',
        '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
       values ( 4002, 'Manpreet Rao', '89 Humber Blvd Toronto L9R 6S4', '647 648 5488', 'G101',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
       values ( 4003, 'Rajeev Kummar', '89 Humber Blvd Toronto L9R 6S4', '647 654 1588', 'HR209',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
       values ( 4004, 'Sangeeta Dasai', '55 Univercity Ave L7R 5T4', '647 458 1495', 'G201',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
	   values ( 4005, 'Rommer Chu', '55 Univercity Ave L7R 5T4', '647 256 6485', 'HR305',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
       values ( 4006, 'Robert Pretty', '55 Univercity Ave L7R 5T4', '647 458 1448', 'HR406',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
       values ( 4007, 'John Doe', '55 Univercity Ave L7R 5T4', '647 254 6485', 'F310',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
       values ( 4008, 'Sam Smith', '85 Ray Lowson Blvd L6p 6R1', '647 485 1475', 'HR215',
       '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
        values ( 4009, 'Ravinder Dhaliwal', '85 Ray Lowson Blvd L6p 6R1', '647 258 3100', 'F503',
        '2019-05-20','2019-05-29');
insert into ResidenceHall ( ID, FullName, Address, Phone, RoomNo, Created_At, Updated_At)
        values ( 4010, 'Punkaj Arora', '85 Ray Lowson Blvd L6p 6R1', '647 495 3200', 'HR109',
        '2019-05-20','2019-05-29');
  
								/*Data for Hall_rooms*/
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8501, 101, 4, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID, MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8502, 202, 4, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8503, 203,  3, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8504, 305,  4, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8505, 106,  3, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID, MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8506, 407,  3, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8507, 508, 4, '$550', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8508, 609, 3, '$600', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8509, 701,  4, '$650', '2019-05-20','2019-05-29');
insert into Hall_Rooms( ID,	Hall_ID,  MaximumStudents, MonthlyRent,Created_At,
           Updated_At) values (8510, 809,  5, '$700', '2019-05-20','2019-05-29');
           
                      /* Inserting data into Flat*/
insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL101', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL102', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL103', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL104', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL105', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL106', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL107', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL108', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL109', 4, '2019-05-20','2019-05-29');

insert into Flat( FlatID, MaximumRooms, Created_At, Updated_At) values ('FL110', 4, '2019-05-20','2019-05-29');
        
        /* Inserting Data into FlatRooms*/
insert into FlatRooms( ID, FlatID, RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9001, 'FL101', 101, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID, RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9002, 'FL102', 102, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID,  RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9003, 'RO103', 103, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID, RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9004, 'RO104',  104, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID, RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9005, 'RO105', 105, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID,  RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9006, 'FL106', 201, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID, RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9007,  'FL107', 202, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID,  RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9008,  'FL108', 203, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID,  RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9009, 'RO204',  204, 4, '$500', '2019-05-20','2019-05-29');
insert into FlatRooms( ID, FlatID, RoomNo, MaximumStudents, MonthlyRent, Created_At,
		Updated_At)  values (9010, 'RO205',  205, 4, '$500', '2019-05-20','2019-05-29');
        
					/* Inserting Data into Invoices*/
insert into Invoices (ID, StudentID, LeasessID,  Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19001, '2019001', 'HN1001', 1, '2019-10-01','2019-10-01', 'Single Room','2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID, LeasessID,   Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19002, '2019002','MR1002', 2,' 2019-10-01','2019-10-01', 'Hall_Room', '2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID,  LeasessID,   Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19003, '2019003', 'RK1003', 1, '2019-10-01','2019-10-01', 'Single Room','2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID, LeasessID,   Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19004, '2019004',  'SD1004',  3, '2019-10-01','2019-10-01', 'Hall_Room','2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID,  LeasessID,   Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19005, '2019005',  'RC1005',  4, '2019-10-01','2019-10-01', 'Single Room', '2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID, LeasessID,   Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19006, '2019006', 'JD1006', 1, '2019-10-01','2019-10-01', 'Hall_Room','2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID,  LeasessID,   Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
	 values (19007, '2019007',  'SS1007', 3, '2019-10-01','2019-10-01', 'Single Room', '2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID, LeasessID, Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19008, '2019008', 'RD1008', 4, '2019-10-01','2019-10-01', 'Single Room', '2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID, LeasessID,  Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19009, '2019009', 'PA1009', 2, '2019-10-01','2019-10-01', 'Hall_Room', '2019-04-01', '2019-09-01');
insert into Invoices (ID, StudentID, LeasessID,  Quarter, InvoiceDate, PaymentDueDate, Flat_Type, Created_At, Updated_At)
     values (19010, '2019010', 'RP1010',1, '2019-10-01','2019-10-01', 'Single Room','2019-04-01', '2019-09-01');
     
					 /* Inserting Data into Leases*/
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 2019001, '2019-09-01', '2020-04-01', 2, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19002, '2019-09-01', '2020-04-01', 2, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19003, '2019-09-01', '2020-04-01', 2, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19004, '2019-09-01', '2020-08-01', 3, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19005, '2019-09-01', '2020-08-01', 3, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19006, '2019-09-01', '2020-08-01', 3, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19007, '2019-09-01', '2020-04-01', 2, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19008,'2019-09-01', '2020-08-01', 3, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 19009, '2019-09-01', '2020-12-01', 4, '2019-08-01', '2019-09-25');
insert into Leases( StudentID,	ActualStartDate, ActualEndDate, Duration, Created_At, Updated_At) 
		values ( 190010, '2019-09-01', '2020-12-01', 4, '2019-08-01', '2019-09-25');

					/* Inserting Data into Payments*/
insert into Payments( ID, invoiceID, StudentID,  ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2001, 19001, 2019001, '2019-10-01', 'Debit', '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2002, 19002, 2019002, '2019-10-01', 'Debit', '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2003, 19003, 2019003, '2019-10-01', 'Cheque', '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2004, 19004, 2019004,  '2019-10-01', 'Debit',  '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2005, 19005, 2019005,  '2019-10-01', 'Cheque',  '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2006, 19006, 2019006, '2019-10-01', 'Debit',  '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2007, 19007, 2019007,  '2019-10-01', 'Debit',  '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID,  ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2008, 19008, 2019008,  '2019-10-01', 'Credit',  '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID, ActualPaymentDate, PaymentMethod, Created_At, Updated_At) 
            values (2009, 19009, 2019009,  '2019-10-01', 'Credit',  '2019-06-01', '2019-09-25');
insert into Payments( ID, invoiceID, StudentID,  ActualPaymentDate, PaymentMethod,Created_At, Updated_At) 
            values (2010, 19010, 2019010, '2019-10-01', 'Debit',  '2019-06-01', '2019-09-25');
   
				/* Inserting Data into Flat inspection*/


