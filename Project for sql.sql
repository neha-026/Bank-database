                                                 #####  DDL  #####


-- to show all the databases
show databases;

-- to create a database
create database bank;

-- to set a default database
use bank; 

-- Write a query to insert a table into the database

create table C_data(
acc_no bigint(30) primary key, -- this constraint will set values as unique and cannot be null
name varchar(50) not null, -- this constraint will not allow null values
city varchar(50),
age int,
contact_no bigint(10) unique,  -- this constraint will allow unique values only which can be null
acc_type varchar(50),
acc_balance int(30) default'0', -- this constraint will update the given default value where we do not insert any value
acc_status varchar(20),
loan_type varchar(20),
last_tx_date date,
salary int(10) check(salary>=25000), -- this constraint will only allow values as per the given condition
concern_emp varchar(20));

drop table c_data;

-- to show structure of table
desc c_data;
describe c_data;

-- to add a column in the table in between two columns
alter table c_data
add column branch int(20) after contact_no;

-- to add a column in the table at the end
alter table c_data
add column loan_amount int(20);

-- to add a column in the table at first
alter table c_data
add column Customer_id int(20) first;

-- to drop a column from the table
alter table c_data
drop column concern_emp;

-- to rename a column of the table
alter table c_data
change name cust_name varchar(50); -- approach 1

alter table c_data
rename column loan_type to loan_category; -- approach 2

-- to modify the data type for a particular column

alter table c_data
modify column Customer_id int primary key;

-- to show the tables of database
show tables;

-- to drop a particular database
drop database pqr;

											   #####  DML  #####

-- to insert values into table (approach 1)

insert into c_data (Customer_id,acc_no,name,city,age,contact_no,branch,acc_type,
acc_balance,acc_status,loan_category,last_tx_date,salary,loan_amount)
values (1,0005896321412,'Neha','Dombivali',22,9082945302,0852,'Savings',2587920,'Active',
'Personal','2023-08-08',1458000,20000);

-- to insert values into table (approach 2)

insert into c_data
values (2,0002589632008,'Yeshshree','Thane',21,9082896325,0258,'Current',256923.6,'Active',
'Home','2023-07-05',852036,100230),
(3,0007896302140,'Veena','Ghatkopar',42,7052945302,2589,'Savings',0,'Inactive',
'Personal','2022-08-08',89000,450000),
(4,0008520369142,'Lau','Dombivali',50,9452036952,0852,'Current',200000,'Active',
'Personal','2023-12-05',258963,10000),
(5,0001258742038,'Vedant','Thane',23,8520369741,0852,'Cash Credit',80000,'Active',
'Personal','2023-01-05',1458000,35000),
(6,0002589630147,'Pooja','Dombivali',32,9630215478,2589,'Savings',453600,'Active',
'Personal','2023-08-12',450000,50000),
(7,0001457893256,'Omkar','Ghatkopar',21,7899899878,0258,'Current',0,'Inactive',
'Home','2020-05-01',127000,10000),
(8,0002058963014,'Divya','Dombivali',25,8456321078,0852,'Overdraft',40000,'Active',
'Personal','2022-10-12',1222000,50000),
(9,0001458963205,'Kimaya','Dombivali',39,9000085236,2589,'Savings',0,'Inactive',
'Home','2019-04-26',780000,80000),
(10,0005287410369,'Prathamesh','Belapur',45,7412589630,0852,'Current',2000000,'Active',
'Personal','2023-02-02',1200000,15000),
(11,0004125630258,'Priya','Ghansoli',26,9988556633,0258,'Savings',0,'Inactive',
'Home','2020-12-15',6000000,50000);

insert into c_data
values (12,0001245693025,'Vina','Pune',35,7896325892,0852,'Savings',300000,'Active',
'Personal','2023-02-25',25000,74000),
(13,0002589647102,'Meena','Mumbai',26,9966880002,2589,'Current',1500000,'Active',
'Personal','2023-05-12',200000,500000),
(14,0004789630021,'Deeraj','Pune',56,7528589630,5423,'Savings',5200000,'Active',
'Home','2023-01-08',52000,15000),
(15,0008963254108,'Clyde','Dombivali',45,8960005536,2589,'Current',8500000,'Active',
'Personal','2023-07-26',123000,1200000),
(16,0001478523698,'Shivani','Belapur',55,7444502896,0852,'Current',5200000,'Active',
'Business','2023-02-15',520000,20000),
(17,0001245325698,'Amruta','Dombivali',35,7635210326,0852,'Savings',0,'Inactive',
'Home','2016-02-28',890000,123000),
(18,00045896325874,'Atharva','Thane',40,8855221447,2589,'Savings',1000000,'Active',
'Personal','2023-02-14',200000,120000),
(19,00021456325665,'Summaiya','Belapur',25,7655220012,5423,'Current',7000000,'Active',
'Business','2023-04-15',500000,96000),
(20,00078965436988,'Gargi','Dombivali',41,7996633002,5423,'Savings',0,'Inactive',
'Personal','2020-05-02',250000,780000),
(21,00055889966331,'Denzil','Dombivali',52,7896302541,0852,'Current',20000,'Active',
'Home','2023-04-25',850000,85000),
(22,00025541456351,'Nehal','Ghatkopar',32,9988774455,0852,'Savings',4000000,'Active',
'Personal','2022-12-10',200000,45000),
(23,00078988995588,'Priyanka','Belapur',25,9082563952,8523,'Current',4000,'Active',
'Home','2023-04-02',52000,205000),
(24,00045110022335,'Bijal','Thane',45,9741256302,0852,'Savings',0,'Inactive',
'Home','2019-12-22',52000,150000),
(25,00011445599663,'Nick','Pune',25,8877550023,8523,'Savings',54000,'Active',
'Personal','2023-06-12',120000,12000),
(26,00022330000123,'Amit','Mumbai',35,7000089630,5423,'Current',5200000,'Active',
'Business','2023-08-05',52000,40000),
(27,00002255669988,'Chanpreet','Pune',40,8123058630,0852,'Current',0,'Inctive',
'Personal','2018-08-10',87000,35000),
(28,00022556688441,'Pranai','Mumbai',50,9850002222,0852,'Savings',2000000,'Active',
'Home','2022-08-15',200000,15000),
(29,00011445522222,'Pranil','Thane',38,9854411223,8523,'Overdraft',100000,'Active',
'Personal','2022-12-02',852000,25000),
(30,00055889966666,'Dinanath','Dombivali',29,9225522002,5423,'Current',0,'Inactive',
'Personal','2017-02-02',1200000,15000),
(31,00011669999999,'Shruti','Mumbai',29,8745023562,0852,'Current',2000000,'Active',
'Home','2023-03-12',1200000,15000);

insert into c_data
values (32,00005236987125,'Vilas','Mumbai',23,null,4219,'Current',0,'Inactive',
null,'2015-02-22',57800,0),
(33,00011665203999,'Poonam','Thane',28,8520369785,5203,'Savings',100000,'Active',
'Personal','2023-05-18',1200000,17000),
(34,00025896147800,'Poorvi','Dombivali',52,8745553562,0852,'Current',1200000,'Active',
null,'2023-02-12',54000,0),
(35,00011225544336,'Aniket','Dombivali',48,7885023552,0852,'Current',100000,'Active',
null,'2023-02-01',250000,0),
(36,00012546325874,'Devika','Thane',26,8889963562,8002,'Savings',2700000,'Active',
null,'2023-07-25',100000,null),
(37,00021546325607,'Ruchi','Dombivali',39,7140235002,4219,'Current',3000000,'Active',
'Home','2023-03-05',2500000,50000),
(38,00054123698561,'Yash','Ghansoli',26,null,0852,'Savings',0,'Active',
null,'2023-04-10',152000,null),
(39,00023336988888,'Tarun','Thane',25,8877552236,8002,'Current',0,'Inactive',
null,'2020-02-15',250000,0),
(40,00035469870212,'Dimple','Mumbai',58,8822000003,5203,'Current',800000,'Active',
'Home','2023-05-22',200000,19000),
(41,00055566662220,'Rishi','Belapur',22,null,8002,'Savings',600000,'Active',
'Personal','2022-08-12',620000,18000),
(42,00022558899966,'Shraddha','Mumbai',29,9000002225,0852,'Current',500000,'Active',
'Home','2023-02-11',210000,65000),
(43,00022118899666,'Vaibhavi','Dombivali',28,8855220006,4219,'Savings',2100000,'Inactive',
null,'2020-03-01',240000,null),
(44,00014455663333,'Shravni','Belapur',25,9988602233,0852,'Current',2000000,'Active',
'Home','2023-03-11',1900000,null),
(45,00022558899999,'Sita','Thane',55,9819238745,5203,'Current',2000000,'Active',
'Home','2023-03-10',540000,85000),
(46,00022551144444,'Riya','Dombivali',40,9920126309,4219,'Savings',2000000,'Active',
'Home','2023-02-11',820000,95000),
(47,00022888888900,'Mansi','Mumbai',52,8828047955,0852,'Current',2000000,'Active',
null,'2023-02-01',100000,null),
(48,00077899966663,'Puru','Mumbai',50,8520000336,5203,'Savings',2000000,'Active',
'Home','2023-03-12',2100000,null),
(49,00022336699880,'Shreya','Ghatkopar',27,8800023366,5496,'Savings',2000000,'Active',
'Home','2023-03-12',1600000,55000),
(50,00022119966000,'Manas','Ghatkopar',29,9630222285,0852,'Current',0,'Inactive',
'Home','2023-03-12',2000000,15000);

insert into c_data 
values (51,00022119952010,'Yashasvi','Mumbai',28,9630542285,0872,'Savings',0,'Inactive',
null,'2022-05-02',80000,0);

-- to update the records of a particular column

update c_data
set name='Geeta' where customer_id=45;

update c_data
set salary='62000' where name='Mansi';

update c_data
set city='Mumbai' where name='Manas';

-- to delete a record from a particular column

delete from c_data 
where name = 'Yashasvi';

-- to delete all records from a table

delete from c_data;

											   #####  DQL  #####

# To display all the records from particular table

select*from c_data;

-- to display only one column and records from the table

select name from c_data;

-- to display two or more column from the table

select name,acc_no,salary,age from c_data;

-- using alias to display a column

select name as first_name from c_data; -- this will show the column name as the given name without changing the actual name of column

select name as first_name,acc_no as account_number,branch as branch_code from c_data;

##Arithmetic operators##

-- to subtract the loan amount and the account balance

select loan_amount,acc_balance,loan_amount-acc_balance as subtraction from c_data;

-- to add the loan amount and the account balance

select loan_amount,acc_balance,loan_amount+acc_balance as addition from c_data;

-- to show both subtraction and addition of loan amount and account balance

select loan_amount,acc_balance,loan_amount-acc_balance as subtraction,
loan_amount+acc_balance as addition from c_data;

##Comparison Operators##

-- display all the records whose age is greater than or equal to 25

select*from c_data where age>=25;

-- display all the records whose salary is not equal to 0

select*from c_data where salary!=0;

-- display all the whose whose loan amount is less than 80000

select*from c_data where loan_amount<80000;

##Logical Operators##

-- to display all the records whose age is greather than 40 and belong to branch code 852

select*from c_data where age>40 and branch=852;

-- to display all the records who stay in dombivali or have loan category as personal

select*from c_data where city='Dombivali'or loan_category='Personal';

-- to display all the records who do not live in pune

select*from c_data where city!='Pune'; -- approach 1

select*from c_data where city<>'Pune'; -- approach 2

select*from c_data where city not in ('Pune'); -- approach 3

select*from c_data where not city='Pune'; -- approach 4

-- to display all the records whose salary lie between 100000 to 500000

select*from c_data where salary>100000 and salary<500000; -- approach 1

select*from c_data where salary between 100000 and 500000;

-- display all the records whose age does not lie between 25 to 35

select*from c_data where age not between 25 and 35;

-- to display the unique acc_type from the table

select distinct acc_type from c_data;

##Membership operators(not in,in)

-- to display all the records who have  personal,savings and Overdraft account

select*from c_data where acc_type in ('Personal','Savings','Overdraft');

-- -- to display all the records who do not have personal,savings and Overdraft account

select*from c_data where acc_type not in ('Personal','Savings','Overdraft');

##Like Operator#

-- to display all the records whose contact_no starts with 8

select*from c_data where contact_no like '8%'; 

-- to display all the records whose account number has 9 at the end

select*from c_data where acc_no like '%9'; 

-- to display all the records whose name has 't' as second last letter

select*from c_data where name like '%t_'; 

-- to display all the records whose name has a in between

select*from c_data where name like '%a%';

-- to display all the records whose name start with 'p' and end with 'a'

select*from c_data where name like 'p%a';

##Limit clause##

-- display first ten records from the table

select*from c_data
order by customer_id
limit 10;

-- display the last 10 records where id is between 40 and 50

select*from c_data
where customer_id between 40 and 50; -- approach 1 

select*from c_data
where customer_id>=40 and customer_id<=50; -- approach 2

select*from c_data
order by customer_id
limit 39,11;  -- approach 3

##Order by##

-- Display all the records in increasing order of their loan_amount

select*from c_data order by loan_amount asc; -- approach 1

select*from c_data order by loan_amount; -- approach 2

-- -- Display all the records in decreasing order of their loan_amount

select*from c_data order by loan_amount desc;

-- to display the record earning the highest salary

select*from c_data order by salary desc
limit 1;

-- to display the record earning the third and fourth highest salary

select*from c_data order by salary desc
limit 2,2;

##String functions##

-- display name and age in one column only from the table using concat

select name,age,concat(name,':-',age) from c_data;

-- display name and city in upper case using upper

select upper(name) as NAMES, upper(city) as cities from c_data;

-- display name and acc_type in lower case using lower

select lower(name), lower(acc_type) from c_data;

-- to replace a particular string record form the table

select acc_type,replace(acc_type,'Savings','Savings Account') from c_data;

-- to extract some part of the city using substr

select city,substr(city,1,2) as short_city from c_data;

-- to display the length of string of any column from the table using length

select name, length(name) as l_name,city,length(city) as l_city from c_data;

-- to select some characters from the string from left side in the table

select city, left(city,3) as l_city from c_data;

-- -- to select some characters from the string from left side in the table

select city,right(city,3) as r_city from c_data;

-- to remove additional left spaces from string

select ltrim('      Bank_Data        ') as b_d;

-- to remove additional right spaces from string

select rtrim('      Bank_Data        ') as b_d;

-- to remove spaces from both sides from the string

select trim('      Bank_Data        ') as b_d;

## MATH FUNCTIONS ## 

-- to display the absolute value of salary

select abs(-salary) as sal from c_data;

-- ceil function

select ceil(50.6);
select ceil(50.5);
select ceil(50.4); -- all the 3 statements are going to display the after value

-- floor function

select floor(50.6);
select floor(50.5);
select floor(50.4); -- all the 3 statements are going to display the before value

-- round function

select round(50.6); -- will round of to next value
select round(50.4); -- will round of to before value

-- mod function

select mod (15,2); -- will display the remainder after diving the first no. by second

select sin(0); -- will show sin values
select cos(35);-- will show cos values
select tan(45);-- will show tan values
select pi();-- will show value of pi
select log(20); -- will show value of log
select log10(50);-- will show value of log to the base 10

select truncate(0.5236982,2); -- it will round off the given number upto defined decimals

select pow(20,4); -- it will give the value of first number to the power of second number

##Date functions

select curdate(); -- display the current date
select curtime(); -- display the current time
select sysdate(); -- display the system date and time
select day(now()); -- display the current day in numbers
select month(now()); -- display the current month in numbers
select year(now()); -- display the current year
select date(now()); -- display the today's date

select hour(now()); -- display the current hour in numbers
select minute(now()); -- display the current minute in numbers
select second(now()); -- display the current second in numbers
select time(now()); -- display the current time

-- to display only year from the last_txn_date from the table

select last_tx_date, year(last_tx_date) as tx_year from c_data;

-- to find the difference between two dates in terms of days

select datediff(curdate(),'2002-05-26');

-- to find the difference between two dates in terms of days

select datediff('2023-05-26','2002-05-26');

## Aggreagate Functions ##

-- to display the count of account number from the table

select count(acc_no) from c_data;

-- to calculate the total loan amount of all the customers

select sum(loan_amount) from c_data;

-- to calculate the average age of the customers

select avg(age) from c_data;

-- to find the minimum salary and maximum salary of the customer

select min(salary) from c_data;
select max(salary) from c_data;

##GROUP BY FUNCTION##

-- to display citywise count of customers

select city,count(name) from c_data
group by city;

-- to display agewise count of customers 

select age,count(name) from c_data
group by age;

-- display account type wise count of customers group by city

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

select city,acc_status,count(name) from c_data
group by city;

-- to display city wise min,max,avg salary from the table

select city,min(salary) from c_data
group by city;

select city,max(salary) from c_data
group by city;

select city,avg(salary) from c_data
group by city;

-- to display acc_type whose min balance is greater than 5000

select acc_type,min(acc_balance) from c_data 
group by acc_type
having min(acc_balance)>=5000;

-- to display citywise maximum salary atleast 100000

select city,max(salary) from c_data
group by city
having max(salary)>=100000; 

##Foreign key

create table loan_details
(loan_id_no bigint(20),
loan_status varchar(20),
ac_number bigint,
foreign key (ac_number) references c_data(acc_no)); -- the account number in loan_details will be fetched from the c_data table

# subquery

-- display the customers who's acc_type is same as neha (don't know neha's acc_type so write a subquery to find out)

select*from c_data;
select acc_type from c_data where name='Neha';

select*from c_data where acc_type=(select acc_type from c_data where name='Neha');

-- display all the records having lowest acc balance

select min(acc_balance) from c_data;

select*from c_data where acc_balance=(select min(acc_balance) from c_data);

-- -- display all the records having lowest acc balance and having active accounts

select*from c_data where acc_balance=(select min(acc_balance) from c_data) and acc_status='Active';

-- display all the records who is earning second highest salary

select max(salary) from c_data;

select max(salary) from c_data where salary<>(select max(salary) from c_data);

select*from c_data where salary= (select max(salary) from c_data where salary<>(select max(salary) from c_data));

-- display all the records whose age is similar to Ruchi and Yeshu

select age from c_data where name in ('Yeshshree','Ruchi');

select*from c_data where age in (select age from c_data where name in ('Yeshshree','Ruchi'));

-- display all the records who is earning more than customers who lives in Pune or Thane

select salary from c_data where city in ('Pune','Thane');

select*from c_data where salary > any (select salary from c_data where city in ('Pune','Thane'));

-- display all the records whose loan amount is more than customers whose age is between 40 to 44

select loan_amount from c_data where age between 40 and 44;

select*from c_data where loan_amount > all (select loan_amount from c_data where age between 40 and 44);

## Joins

update c_data 
set acc_status='Inactive' where acc_no='2255669988';

-- inserting records into the table

insert into loan_details (loan_id_no,loan_status,ac_number)
values (01,'Inactive','1245325698'),(02,'Active','1245693025'), (03,'Active','1258742038'), (04,'Active','1478523698'), (05,'Active','2058963014'),
(01,'Active','2589630147'),(02,'Active','2589632008'), (03,'Active','2589647102'), (04,'Active','4789630021'), (05,'Active','5287410369'),
(01,'Active','8520369142'),(02,'Inactive','55889966666'), (03,'Active','5896321412'), (04,'Inactive','45110022335'), (05,'Active','8963254108'),
(01,'Inactive','7896302140'), (04,'Active','11445522222'), (05,'Active','11445599663'),(02,'Inactive','22119966000'), (03,'Active','11665203999'), (04,'Active','11669999999'), (05,'Active','12546325874'),
(01,'Active','14455663333'),(02,'Active','21456325665'), (03,'Active','21546325607'), (04,'Active','22330000123'), (05,'Active','22336699880'),
(01,'Active','22551144444'),(02,'Active','22556688441'), (03,'Inactive','1457893256'), (04,'Inactive','22118899666'), (05,'Active','77899966663'),
(01,'Inactive','4125630258'),(02,'Active','22558899966'), (03,'Active','22558899999'), (04,'Inactive','78965436988'), (05,'Active','78988995588'),
(01,'Inactive','2255669988'),(02,'Active','22888888900'), (03,'Active','25541456351'), (05,'Active','35469870212'),
(01,'Inactive','1458963205'),(02,'Active','45896325874'), (03,'Active','54123698561'), 
(04,'Active','55566662220'), (05,'Active','55889966331');

-- Inner join

select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
join loan_details
on c_data.acc_no=loan_details.ac_number;

-- left join

select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
left join loan_details
on c_data.acc_no=loan_details.ac_number;

-- right join

select c_data.name as c_name,c_data.acc_status as acc_stat,loan_details.loan_status as loan_stat,loan_details.loan_id_no as l_id
from c_data
right join loan_details
on c_data.acc_no=loan_details.ac_number;

-- UNION (outer join) -- will not show duplicates

select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
left join loan_details
on c_data.acc_no=loan_details.ac_number
union
select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
right join loan_details
on c_data.acc_no=loan_details.ac_number;

-- Union all -- will show duplicates

select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
left join loan_details
on c_data.acc_no=loan_details.ac_number
union all
select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
right join loan_details
on c_data.acc_no=loan_details.ac_number;

-- Cross join

select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
cross join loan_details
on c_data.acc_no=loan_details.ac_number;

###View
create view left_join as
select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
left join loan_details
on c_data.acc_no=loan_details.ac_number;

create view right_join as
select c_data.name as c_name, loan_details.loan_status as loan_stat
from c_data
right join loan_details
on c_data.acc_no=loan_details.ac_number;














 

























































