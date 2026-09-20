create database SchoolDB;

create table Student(
Std_ID int primary key, Std_Name varchar(20), Age int, Course varchar(20), Marks int
);

insert into Student values 
(101, 'Dhruv', 21, 'IMCA', 99),
(102, 'Krish', 21, 'IMCA', 33),
(103, 'Rushi', 22, 'BCA', 55),
(104, 'Krish', 22, 'BCA Hons.', 22),
(105, 'Hemant', 22, 'BCA', 22);

select * from Student;

select Student.Std_name, Student.Age from Student;

create table Employees(
	Emp_id int primary key, 
	Emp_name varchar(20), 
	Salary int, 
	bonus_percentage Decimal, 
	Joining_Date date, 
	Currently_Wroking bit
);

insert into Employees values
(101, 'Krish', 20000, 2.5, '2026-9-20', 1),
(102, 'rushi', 30000, 3.5, '2015-9-15', 0),
(103, 'Hemant', 50000, 1.5, '2026-7-12', 1),
(104, 'Meet', 20000, 2.5, '2026-9-9', 1);

select * from Employees;