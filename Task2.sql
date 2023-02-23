#Create database
CREATE DATABASE Student;

#Entering into the database
\c Student

#Creating table Student
create table STUDENT (StdID int primary key,StudentName varchar(100),Sex varchar(30),percentage int, Class int,Sec varchar(10),Stream varchar(30),DOB DATE);

#Inserting into values
insert into STUDENT values(1011,'PRAKHAR TIWARI','MALE',43,12,'A','Science','1997-04-22'),(1012,'RAGHAV GANGWAR','MALE',58,12,'A','Commerce','1997-12-21'),(1013,'SAHIL SARASWAT','MALE',57,12,'A','Commerce','1997-08-13'),(1014,'SWATHI MISHRA','FEMALE',98,11,'A','Science','1996-08-13'),(1015,'HARSH AGARWAL','MALE',58,11,'B','Science','2003-08-28'),(1016,'HARSHIT KUMAR','MALE',98,11,'B','Science','2003-05-22');

#Tasks
Q.To add a column (FIELD)in the STUDENT table,for example TeacherID as VARCHAR(20)
Type the statement and press enter key, note the new field that you have added as TeacherID?
7.  alter table STUDENT add TeacherID varchar(20);

Q.To Drop (Delete) a field form a table. For e.g you wantto delete TeacherID field?
9.  alter table STUDENT drop column teacherid;

Q.To subtract 5 form all students percentage and display name and percentage?
10. select studentname,(percentage-5) from STUDENT;

Q.Using column alise for example we wantto display StdName as Student Name and DOB as Date of Birththen the statement will be?
11. select stdName as Student_Name,dob as Date_Of_Birth from STUDENT;

Q.Display the name of all students whose stream is not Science?
12.select * from STUDENT where stream not like 'Science';

Q. To change a studentname from SWATIMISHRA to SWATIVERMA whose StdID is 1014 and also changepercentage 86?
13.update STUDENT set studentname = 'SWATIVERMA' where stdid=1014;

Q.To delete the records form student table where StdId is 1016
14.delete from STUDENT where stdid=1016;