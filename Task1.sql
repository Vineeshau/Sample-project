#creating databse
CREATE DATABASE cart;

#Entering into the database
\c cart

#Creating table salesman
create table salesman (salesman_id bigint primary key,name varchar(100),city varchar(100),commission float);

#Creating table customer
create table customer (customer_id bigint primary key,customer_name varchar(100),city varchar(100),grade bigint,salesman_id bigint,foreign key(salesman_id) references salesman (salesman_id));

#Creating table orders
create table orders (order_no bigint primary key, purch_amt float, order_date DATE,customer_id bigint , salesman_id bigint,foreign key(customer_id) references customer(customer_id), foreign key(salesman_id) references salesman (salesman_id));

#Creating table nobel_win
create table nobel_win (year bigint, subject varchar(100), winner varchar(100), country varchar(100), category varchar(100));

#Inserting values into salesman
insert into salesman values(5001,'James Hooq','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14),(5003,'Lauson Hen','',0.12),(5007,'Paul Adam','Rome',0.13);

#Inserting values into customer
insert into customer values(3002,'Nick Rimando','New York',100,5001),(3005,'Grahan Zusi','California',200,5002),(3001,'Brad Guran','London',NULL , NULL),(3004,'Fabian Johns','Paris',300,5006),(3007,'Brad Davis','New York',200,5001),(3009,'Geoff Camero','Berlin',100,NULL),(3008,'Julian Green','London',300,5002),(3003,'Jory Altidor','Moncow',200,5007);

#Inserting values into orders
insert into orders values(70001,150.5,'2016-10-05',3005,5002),(70009,270.65,'2016-09-10',3001,NULL),(70002,65.26,'2016-10-05',3002 , 5001),(70004,110.5,'2016-08-17',3009,NULL),(70007,948.5,'2016-09-10',3005,5002),(70005,2400.6,'2016-07-27',3007,5001),(70008,5760,'2016-09-10',3002,5001),(70010,1983.43,'2016-10-10',3004,5006),(70003,2480.4,'2016-10-10',3009,NULL),(70012,250.45,'2016-06-27',3008,5002),(70011,75.29,'2016-08-17',3003,5007);

#Inserting values into nobel_win
insert into nobel_win values(1994,'Literature','Kenzaburo Oe', 'Japan', 'Linguist'),(1994,'Economics','Reinhard Selten', 'Germany', 'Economist'),(1987,'Chemistry','Donald J. Cram', 'USA', 'Scientist'),(1987,'Chemistry','Jean-Marie Lehn', 'France', 'Scientist'),(1987,'Literature','Joseph Brodsky', 'Russia', 'Linguist'),(1987,'Economics','Robert Solow', 'USA', 'Economist'),(1971,'Chemistry','Gerhard Herzberg', 'Germany', 'Scientist'),(1971,'Literature','Pablo Neruda', 'Chile', 'Linguist'),(1971,'Economics','Simon Kuznets', 'Russia', 'Economist'),(1970,'Literature','Aleksandar Solzhenitsyn', 'Russia', 'Linguist'),(1970,'Chemistry','Luis Federico Leloir', 'France', 'Scientist'),(1970,'Economics','Paul Samuelson', 'USA', 'Economist');

#customer table
Q.Display all the information for those customers with a grade of 200?
1. select * from customer where grade=200;

#nobel_win table
Q. Show the winner of the 1971 prize for Literature?
1.select * from nobel_win where year=1971 and subject='Literature';

Q.Show all the details of the winners with first name Louis?
2.select * from nobel_win where winner like 'Luis%';

Q.Show all the winners of Nobel prize in the year 1970 the subject belongs to Physiology and Economics?
3.select * from nobel_win where year=1970 and subject in ('Physiology','Economics');

Q.Find all the details of the Nobel winners for the subject not started with the letter 'P' and arrangedthe list as the most recent comes first, then by name in order?
4.select * from nobel_win where subject NOT LIKE 'P%'  ORDER BY year,winner;

#item_mast
Q.Display all the customers, who are either belongs to the city New York or not had a grade above 100?
1.select * from customer where city='New York' or grade < 100;

#salesman table
Q.Find those salesmen with all information who gets the commission within a range of 0.12 and 0.14?
1.select * from salesman where commission between 0.12 and 0.14;

Q.Find all those customers with all information whose names are ending with the letter 'n'?
2.select * from salesman where name like '%n';

Q. Find those salesmen with all information whose name containing the 1st character is 'N' and the 4th character is 'l' and rests may be any character?
3.select * from salesman where name like 'N__l%';

Q.Display name and commission of all the salesmen?
5.select name,commission from salesman;

Q.Display names and city of salesman, who belongs to the city of Paris?
6.select name,city from salesman where city='Paris';

#orders table
Q.Find the total number of salesman in the orders table?
1.select COUNT(salesman_id) from orders;

Q.Write a SQL statement that counts all orders for a date August 17th, 2012?
2.select COUNT(order_date) from orders where order_date='2012-08-17';

Q.Display the order number, order date and the purchase amount for order(s) which will be delivered by the salesman with ID 5001?
3.select order_no,order_date,purch_amt from orders where salesman_id=5001;

Q. Find the max and min purchase amount of all orders?
4.select MAX(purch_amt) as Maximum,MIN(purch_amt) as Minimum from orders;