CREATE DATABASE SalesAnalyticsDB;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

insert into customers values
(101, 'dhruv', 15, 'india', 5000),
(102, 'krish', 16, 'japan', 50),
(103, 'rushi', 17, 'vietnam', 400),
(104, 'krish', 18, 'russia', 2000),
(105, 'hemant', 19, 'china', 20),
(106, 'meet', 25, 'india', 900),
(107, 'yash', 29, 'japan', 119),
(108, 'shree', 30, 'vietnam', 3000),
(109, 'vanshika', 35, 'russia', 30),
(110, 'dhani', 32, 'china', 90),
(111, 'vedant', 55, 'india', 499),
(112, 'vidhi', 49, 'japan', 1000),
(113, 'mayur', 42, 'vietnam', 350),
(114, 'rahul', 47, 'russia', 200),
(115, 'himanshu', 52, 'china', 100);

select c.user_name,c.country,c.amount_spend
from customers as c;

select *
from customers as c
where c.amount_spend > 2500;

select * 
from customers as c
where c.age < 30;

select * 
from customers as c
where c.country = 'india';

select * 
from customers as c
where c.amount_spend < 1000;

select *
from customers as c
where c.age < 30 and c.amount_spend > 1000;

select * 
from customers as c
where c.country = 'india' and c.amount_spend > 2000;

select * 
from customers as c
where c.country = 'india' or c.country = 'russia';

select * 
from customers as c
where (c.country = 'india' or c.country = 'russia') and c.amount_spend > 200;

select * 
from customers as c
where not c.country = 'india';

select * 
from customers as c
order by c.id desc;

select *
from customers as c
order by c.amount_spend asc;

select c.user_name, c.age, c.country, c.amount_spend
from customers as c
order by c.amount_spend desc;

select * 
from customers as c
where (c.age > 20 and c.age < 50) and
(c.amount_spend > 500) and 
(c.country = 'india' or c.country = 'russia')
order by c.id desc;

select * 
from customers as c
where (c.age >= 30) and 
(c.amount_spend > 1000) and
not c.country = 'india'
order by c.amount_spend desc;

