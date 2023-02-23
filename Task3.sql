#Create database
CREATE DATABASE Office;

#Entering into the database
\c Office

#Creating table Empl
create table Empl (empno bigint primary key,ename varchar(100),job varchar(100),mgr bigint,hiredate DATE,sal float,comm float,deptno int);

#Inserting into values
insert into Empl values (8369,'SMITH','CLERK',8902,'1990-12-18',800.00,NULL,20),(8499,'ANYA','SALESMAN',8698,'1991-02-20',1600.00,300.00,30),(8521,'SETH','SALESMAN',8698,'1991-02-22',1250.00,500.00,30),(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985.00,NULL,20),(8698,'BINA','MANAGER',8839,'1991-05-01',2850.00,NULL,30),(8888,'SCOTT','ANALYST',8566,'1992-12-09',3000.00,NULL,20);

Q.Write a query to display EName and Sal of employees whose salary are greater thanor equal to 2200?
a.select ename,sal from Empl where sal >= 2200;

Q.Write a query to display details of employs who are not getting commission?
b.select * from Empl where comm is Null;

Q.Write a query to display employee name and salary of those employees who don’t havetheir salary in range of 2500 to 4000?
c.select ename,sal from Empl where sal not between 2500 and 4000;

Q.Write a query to display the name, job title and salary of employees who don’t have manager?
d.select ename,job,sal from Empl where job not in ('MANAGER');

Q.Write a query to display the name of employee whose name contains “A” as fourth alphabet?
e.select ename from Empl where ename like '___A%';

Q.Write a query to display the name of employee whose name contains “T” as last alphabet?
f.select ename from Empl where ename like '%T';

Q.Write a query to display the name of employee whose name contains ”M” as First and“L” as third alphabet?
g.select ename from Empl where ename like 'M__L%';

