create database payroll_service

select * from sys.databases

use payroll_service

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(20) not null,
salary money not null,s
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



