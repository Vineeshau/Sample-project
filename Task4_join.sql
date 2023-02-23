#Create database
CREATE DATABASE Join;

#Entering into the database
\c Join

#Creating table EmployeeDetail
create table EmployeeDetail (EmployeeID int primary key,FirstName varchar(30),LastName varchar(30),Salary float,JoiningDate DATE, Department varchar(30),Gender varchar(30));

#Creating table ProjectDetail
create table ProjectDetail (ProjectDetailID int primary key,EmployeeID int,ProjectName varchar(50),foreign key(EmployeeID) references EmployeeDetail (EmployeeID));

#Inserting into EmployeeDetail
insert into EmployeeDetail values (1,'Vikas','Ahlawat',600000.00,'2013-02-15 11:16:28.290','IT','Male'),(2,'nikita','Jain',530000.00,'2014-01-09 17:31:07.793','HR','Female'),(3,'Ashish','Kumar',10000000.00,'2014-01-09 10:05:07.793','IT','Male'),(4,'Nikhil','Sharma',480000.00,'2014-01-09 09:00:07.793','HR','Male'),(5,'anish','kadian',500000.00,'2014-01-09 09:31:07.793','Payroll','Male');

#Inserting into ProjectDetail
insert into ProjectDetail values (1,1,'Task Track'),(2,1,'CLP'),(3,1,'Survey Management'),(4,2,'HR Management'),(5,3,'Task Track'),(6,3,'GRS'),(7,3,'DDS'),(8,4,'HR Management'),(9,5,'GL Management');

Q.Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already?
1.select EmployeeDetail.firstname,EmployeeDetail.lastname,ProjectDetail.projectname from EmployeeDetail join ProjectDetail on EmployeeDetail.employeeid=ProjectDetail.employeeid  ORDER BY EmployeeDetail.firstname; 

Q.Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project?
2.select EmployeeDetail.firstname,EmployeeDetail.lastname,ProjectDetail.projectname from EmployeeDetail left join ProjectDetail on EmployeeDetail.employeeid=ProjectDetail.employeeid  ORDER BY EmployeeDetail.firstname; 

Q.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail"?
3.select ProjectDetail.projectname from EmployeeDetail right join ProjectDetail on EmployeeDetail.employeeid=ProjectDetail.employeeid  ORDER BY EmployeeDetail.firstname; 

Q.Get complete record(employeename, project name) from both tables([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL?
4.select EmployeeDetail.firstname,EmployeeDetail.lastname,ProjectDetail.projectname from EmployeeDetail full outer join ProjectDetail on EmployeeDetail.employeeid=ProjectDetail.employeeid  ORDER BY EmployeeDetail.firstname; 

Q.Write a query to find out the project name which is not assigned to any employee( tables :- [EmployeeDetail],[ProjectDetail])?
5.select ProjectDetail.projectname from EmployeeDetail right join ProjectDetail on EmployeeDetail.employeeid=ProjectDetail.employeeid where EmployeeDetail.firstname is null; 

Q.Write down the query to fetch EmployeeName & Project who has assign more than one project?
6.select EmployeeDetail.firstname,EmployeeDetail.lastname,ProjectDetail.projectname from EmployeeDetail inner join ProjectDetail on EmployeeDetail.employeeid=ProjectDetail.employeeid where EmployeeDetail.employeeid in (select employeeid from ProjectDetail GROUP BY employeeid HAVING COUNT(employeeid)>1); 