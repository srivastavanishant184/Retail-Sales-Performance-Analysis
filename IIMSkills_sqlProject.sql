create database sales_project;
use sales_project;

create table customers (
customer_index int primary key,
customer_name varchar (50)
);
select * from customers;

create table regions (
region_index int primary key,
city varchar (50),
country varchar (50),
full_name varchar (50)
);
select * from regions;

create table products (
product_index int primary key,
product_name varchar (150)
);

create table budgets (
product_name varchar (100) primary key,
2017_budgets decimal (15,2)
);

select * from budgets;

create table sales_order (
order_number varchar (50) primary key,
order_date Date,
customer_index int,
channel varchar (50),
currency_code varchar (50),
warehouse_code varchar (50),
delivery_region_index int,
product_index int,
order_quantity int,
unit_price decimal (12,2),
line_total decimal (15,2),
total_unit_cost decimal (15,3),

foreign key (customer_index) references customers(customer_index),
foreign key (delivery_region_index) references regions(region_index),
foreign key (product_index) references products(product_index)
);
select * from sales_order;








