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

select * from sales_transactions as st
order by st.unit_price , st.quantity desc


select st.customer_name, st.product_name, st.quantity, st.category, st.unit_price, st.city
from sales_transactions as st
where st.unit_price > 50000 and st.quantity > 1

select * 
from sales_transactions as st
where st.customer_type = 'premium' and st.unit_price > 25000
order by st.unit_price desc

select *
from sales_transactions as st
where st.discount_percentage > 15 and st.quantity < 4

select st.customer_name, st.product_name, st.category, st.unit_price, st.city, st.quantity
from sales_transactions as st
where (st.city = 'Ahmedabad' or st.city = 'Mumbai' or st.city = 'Delhi') and st.unit_price > 20000
order by st.city desc

select st.customer_name, st.product_name, st.quantity, st.unit_price, st.payment_method
from sales_transactions as st
where st.payment_method = 'Online' or st.payment_method = 'Card' and st.quantity > 2 and st.unit_price > 15000
order by st.quantity desc

select *
from sales_transactions as st
where (st.category = 'Electonics' or st.category = 'Furniture' or st.category = 'Appliances') and st.discount_percentage < 10
order by st.discount_percentage desc

select st.customer_name, st.customer_type, st.product_name, st.quantity, st.unit_price
from sales_transactions as st
where st.customer_type = 'Premium' or st.customer_type = 'Regular' and st.unit_price > 30000 and st.quantity > 1
order by st.unit_price desc







select st.transaction_id, st.customer_name, st.product_name, st.quantity, st.unit_price, st.category
from sales_transactions as st
where (st.quantity > 5 and st.unit_price > 1000) or (st.quantity > 2 and st.quantity < 5 and st.unit_price > 5000)
order by st.unit_price desc

select * 
from sales_transactions as st
where (not st.city = 'Ahmedabad' ) and st.quantity > 2 and st.unit_price > 20000 and st.payment_method = 'Cash'
order by st.unit_price desc

select st.customer_name, st.product_name, st.quantity, st.unit_price, st.discount_percentage, st.customer_type
from sales_transactions as st
where st.category = 'Electronics' and (st.unit_price > 40000 and st.quantity > 1 and st.discount_percentage < 15)
order by st.unit_price desc

select st.customer_name, st.product_name, st.quantity, st.unit_price, st.discount_percentage, st.city
from sales_transactions as st
where st.category = 'Furniture' and st.quantity > 3 and st.unit_price > 25000
order by st.quantity desc

select * 
from sales_transactions as st
where st.customer_type = 'Premium' and (not st.payment_method = 'Cash') and st.quantity > 1 and st.unit_price > 20000
order by st.unit_price desc

select st.customer_name, st.product_name, st.category, st.unit_price, st.discount_percentage, st.payment_method
from sales_transactions as st
where st.unit_price > 5000 and st.discount_percentage > 10 and st.payment_method = 'Cash'
order by st.discount_percentage desc

select * 
from sales_transactions as st
where (st.category = 'Electornics' and st.quantity > 2 and st.discount_percentage < 15) or
(st.category = 'Furniture' and st.quantity > 3 and st.unit_price < 20000) or 
(st.category = 'Appliances' and st.unit_price > 40000)
order by st.unit_price desc

select st.customer_name, st.customer_type, st.product_name, st.quantity, st.unit_price, st.city, st.payment_method
from sales_transactions as st
where (st.customer_type = 'Premium' or st.customer_type = 'VIP' and not st.city = 'Ahmedabad') and st.quantity > 3 and st.unit_price > 60000
order by st.unit_price desc

