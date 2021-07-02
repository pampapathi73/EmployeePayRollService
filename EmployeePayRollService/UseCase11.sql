create database payroll_service

select * from sys.databases

use payroll_service

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(20) not null,
salary money not null,
start date not null,
);

insert into employee_payroll values
('Marine',200000.0,'2019-8-14'),
('Tim',500000.0,'2018-01-03'),
('Tessa',700000.0,'2020-8-14');

select * from employee_payroll

select salary from employee_payroll where name='Tim';

select salary from employee_payroll where start between CAST('2018-01-01' as date) and GETDATE()


alter table employee_payroll add gender char(1);
select * from employee_payroll;
update employee_payroll set gender='F' where name in ('Marine','Tessa');
update employee_payroll set gender='M' where id in (2,3,5);


select sum(salary) from employee_payroll where gender='M' group by gender;
select sum(salary) from employee_payroll  group by gender;
select sum(salary) as 'totalSalary',gender='M' from employee_payroll group by gender;
select avg(salary) as 'averageSalary',gender='F' from employee_payroll group by gender;
select min(salary) as 'minimumSalary',gender='M' from employee_payroll group by gender;
select max(salary) as 'maximumSalary',gender='F' from employee_payroll group by gender;

select count(gender) as 'male' from employee_payroll where gender='M'; 
select count(gender) as 'female' from employee_payroll where gender='F';

use payroll_service
select * from employee_payroll
alter table employee_payroll add
phone varchar(13),
department varchar(100) not null default 'CSE',
address varchar(250) not null default 'India'

select * from employee_payroll
sp_rename 'employee_payroll.salary' , 'basic_pay'

alter table employee_payroll add
deduction real ,
taxable_pay money,
income_tax money,
net_pay float;

select * from employee_payroll
use payroll_service


insert into employee_payroll values
('Tessa',700000.0,'2020-08-14','F','8734586245','sales','india',100.0,12000.0,2000.0,1233.0)

update employee_payroll set taxable_pay=12000.00, department='marketing',income_tax=2000.00, net_pay=1233 where id=4;
select * from employee_payroll where name='Tessa'

///usecase11

create table Employee_Dept1
(
 Emp_id int foreign key references Employee1(Emp_id),
dept_id int foreign key references Department1(dept_id),
);
 select * from Employee_Dept1

 create table Employee1
 (
 Emp_id int identity(1,1) primary key not null,
 name varchar(30) not null,
 startdate date not null,
 gender char(4) not null,
 phone int not null,
 adress varchar(100) not null,
 );

 select * from Employee1

 create table Payroll1
 (
 Emp_id int foreign key references Employee1(Emp_id),
 basicpay money not null,
deduction money not null,
 taxable_pay money not null,
 income_tax money not null,
 net_pay money not null,
 );

 create table Department1
 (
dept_id int  primary key not null,
rooms int not null,
);
 


 create table Company1
 (
 Emp_id int foreign key references Employee1(Emp_id),
 Company_name varchar(50) not null,
 );









