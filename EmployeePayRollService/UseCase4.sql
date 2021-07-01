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