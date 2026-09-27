create database Sales

create table sales_transactions( 
transaction_id int primary key,
customer_name varchar(20),
product_name varchar(20),
category varchar(20),
quantity int,
unit_price int,
discount_percentage int,
city varchar(20),
payment_method varchar(20),
salesperson varchar(20),
customer_type varchar (20)
);

insert into sales_transactions values 
(1001,	'Aarav Mehta',	'Laptop Pro 15', 'Electronics',	2,	75000,	10,	'Ahmedabad',	'Online',	'Rahul',	'Premium'),
(1002,	'Priya Shah',	'office Chair',	'Furniture',	5,	12000,	8,	'Mumbai',	'Card',	'Neha',	'Regular'),
(1003,	'Rohan Patel',	'Smartphone X',	'Electronics',	3,	45000,	12,	'Ahmedabad',	'UPI',	'Amit',	'Premium'),
(1004,	'Sneha Verma',	'Refrigerator',	'Appliances',	1,	68000,	15,	'Delhi',	'Card',	'Priya',	'VIP'),
(1005,	'Karan Joshi',	'Dining Table',	'Furniture',	4,	18000,	5,	'Pune',	'Cash',	'Rahul',	'Regular'),
(1006,	'Ananya Rao',	'Laptop Air 14', 'Electronics',	1,	62000,	7,	'Bangalore',	'Online',	'Neha',	'Premium'),
(1007,	'Vikram Singh',	'Washing Machine', 'Appliances',	2,	42000,	18,	'Jaipur',	'UPI',	'Amit',	'Regular'),
(1008,	'Meera Kapoor',	'Smartphone Pro', 'Electronics',	4,	55000,	20,	'Mumbai',	'Card',	'Priya',	'VIP'),
(1009,	'Aditya Shah',	'Sofa Set',	'Furniture',	3,	35000,	10,	'Ahmedabad',	'Online',	'Rahul',	'Premium'),
(1010,	'Ishita Patel',	'Air Conditioner',	'Appliances',	2,	58000,	12,	'Surat',	'UPI',	'Neha',	'Premium'),
(1011,	'Raj Malhotra',	'Gaming Laptop',	'Electronics',	2,	95000,	15,	'Delhi',	'Card',	'Amit',	'VIP'),
(1012,	'Kavya Desai',	'Bookshelf',	'Furniture',	6,	9000,	5,	'Pune',	'Cash',	'Priya',	'Regular'),
(1013,	'Arjun Mehta',	'Smart TV 55',	'Electronics',	2,	72000,	18,	'Bangalore',	'Online',	'Rahul',	'Premium'),
(1014,	'Nisha Sharma',	'Microwave Oven',	'Appliances',	3,	22000,	8,	'Ahmedabad',	'UPI',	'Neha',	'Regular'),
(1015,	'Yash Patel',	'Refrigerator Pro',	'Appliances',	1,	82000,	20,	'Mumbai',	'Card',	'Amit',	'VIP'),
(1016,	'Simran Kaur',	'Office Desk',	'Furniture',	5,	16000,	12,	'Delhi',	'Online',	'Priya',	'Regular'),
(1017,	'Dev Kumar', 'Smartphone Ultra',	'Electronics',	3,	68000,	10,	'Jaipur',	'UPI',	'Rahul',	'Premium'),
(1018,	'Riya Shah', 'Washing Machine Pro',	'Appliances',	4,	48000,	22,	'Surat',	'Card',	'Neha',	'Premium'),
(1019,	'Manav Joshi',	'Premium Sofa',	'Furniture',	2,	65000,	15,	'Ahmedabad',	'Online',	'Amit',	'VIP'),
(1020,	'Pooja Mehta',	'Tablet Pro',	'Electronics',	5,	32000,	8,	'Pune',	'UPI',	'Priya',	'Regular'),
(1021,	'Harsh Verma',	'Laptop Ultra',	'Electronics',	3,	88000,	25,	'Mumbai',	'Card',	'Rahul',	'VIP'),
(1022,	'Neel Shah',	'Air Conditioner Pro',	'Appliances',	2,	76000,	10,	'Delhi',	'Online',	'Neha',	'Premium'),
(1023,	'Tanvi Rao',	'Dining Set',	'Furniture',	4,	28000,	18,	'Bangalore',	'Cash',	'Amit',	'Regular'),
(1024,	'Siddharth Patel',	'Smart TV Pro',	'Electronics',	6,	60000,	12,	'Surat',	'UPI',	'Priya',	'Premium'),
(1025,	'Aisha Khan',	'Refrigerator',	'Appliances',	2,	92000,	20,	'Ahmedabad',	'Card',	'Rahul',	'VIP'),
(1026,	'Mohit Singh',	'Executive Chair',	'Furniture',	7,	14000,	10,	'Jaipur',	'Online',	'Neha',	'Regular'),
(1027,	'Diya Mehta',	'Gaming Monitor',	'Electronics',	3,	52000,	15,	'Delhi',	'UPI',	'Amit',	'Premium'),
(1028,	'Varun Shah',	'Washing Machine',	'Appliances',	5,	38000,	28,	'Mumbai',	'Cash',	'Priya',	'Regular'),
(1029,	'Isha Patel',	'Luxury Sofa',	'Furniture',	3,	78000,	12,	'Pune',	'Card',	'Rahul',	'VIP'),
(1030,	'Dhruv Sharma',	'Business Laptop',	'Electronics',	2,	110000,	18,	'Bangalore',	'Online',	'Neha',	'VIP');


select * from sales_transactions


select 
	count(transaction_id) as Total_Transaction,
	sum(quantity) as Total_Quantity,
	count(quantity*unit_price) as Total_Sales_Value,
	avg(unit_price) as Average_Unit_Price,
	max(unit_price) as Maximum_unit_price,
	min(unit_price) as Minimum_unit_price
from sales_transactions

select 
	category,
	count(transaction_id) as Total_transaction,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_Sales_Value,
	avg(unit_price) as Average_unit_price
from sales_transactions
group by category
order by Total_Sales_Value desc

select 
	salesperson,
	count(transaction_id) as no_of_transaction,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as Avg_unit_price
from sales_transactions
group by salesperson
order by Total_sales_value desc

select 
	city,
	count(transaction_id) as Num_of_transaction,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as Avg_unit_price
from sales_transactions
group by city
order by Total_sales_value desc

select 
	customer_type,
	count(transaction_id) as Num_of_transaction,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as Avg_unit_price
from sales_transactions
group by customer_type
order by Total_sales_value desc

select 
	payment_method,
	count(transaction_id) as Num_of_transaction,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as Avg_unit_price
from sales_transactions
group by payment_method
order by Total_sales_value desc

select 
	category,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price
from sales_transactions
group by category
having	sum(quantity*unit_price) > 300000;

select 
	salesperson,
	COUNT(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sale_value
from sales_transactions
group by salesperson
having sum(quantity*unit_price) > 500000

select 
	product_name,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as Avg_unit_price
from sales_transactions
group by product_name
having sum(quantity) > 5

select 
	customer_type = 'premium',
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as Avg_unit_price
from sales_transactions
group by customer_type
having sum(quantity*unit_price) > 200000

select 
	salesperson,
	customer_type = 'VIP',
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value
from sales_transactions
group by salesperson
having sum(quantity*unit_price) > 200000;

select 
	city,
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value
from sales_transactions
where payment_method in ('online' , 'card')
group by city 
having sum(quantity*unit_price) > 200000

select 
	discount_percentage,
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price
from sales_transactions
group by discount_percentage
having count(quantity) >= 2

select 
	salesperson,
	category = 'electronics',
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price,
	max(unit_price) as highest_unit_price
from sales_transactions
group by salesperson
having sum(quantity*unit_price) > 250000


select 
	city,
	category = 'furniture',
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price,
	max(unit_price) as highest_unit_price
from sales_transactions
where quantity > 2
group by city
having sum(quantity*unit_price) > 5000

select 
	salesperson,
	payment_method,
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price
from sales_transactions
where payment_method != 'cash' and discount_percentage < 20
group by salesperson, payment_method

select 
	customer_type,
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price,
	max(unit_price) as highest_unit_price
from sales_transactions
where customer_type = 'premium' and customer_type = 'VIP'
group by customer_type
order by sum(quantity*unit_price) desc

select 
	salesperson,
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price
from sales_transactions
where discount_percentage > 15
group by salesperson
having count(salesperson) = 2

insert into sales_transactions values
(1031, 'Raj mehta', 'macBook pro', 'electronics', 2, 125000, 10, 'mumbai', 'online', 'rahul', 'premium')

select 
	salesperson,
	category,
	count(transaction_id) as num_of_trans,
	sum(quantity) as Total_quantity,
	sum(quantity*unit_price) as Total_sales_value,
	avg(unit_price) as avg_unit_price,
	max(unit_price) as highest_unit_price
from sales_transactions
where (customer_type = 'premium' or customer_type = 'VIP') and payment_method != 'cash' and quantity > 1 and discount_percentage < 20
group by salesperson,category
having sum(quantity*unit_price) > 20000
order by sum(quantity*unit_price) desc