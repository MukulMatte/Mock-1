-- create table Employee(
-- employee_id	int primary key,
-- first_name	varchar,
-- last_name	varchar,
-- salary	int,
-- hire_date	date,
-- manager_id	int,
-- city varchar,
-- state varchar,
-- country varchar
-- )

 
-- create table Customers(
-- customer_id	int primary key,
-- first_name	varchar,
-- last_name	varchar,
-- email	varchar,
-- phone	varchar,
-- address	varchar,
-- city varchar,
-- state	varchar,
-- country	varchar,
-- account_creation_date date
-- )

-- create table product(
-- product_id int primary key,
-- product_name varchar,
-- category varchar,
-- price real,
-- stock_quantity int,
-- supplier_id int,
-- reorder_level int,
-- discontinued varchar,
-- created_at  date,
-- updated_at date
-- )

-- create table sales(
-- sale_id int primary key,
-- product_id int references product(product_id),
-- customer_id int references Customers(customer_id),
-- sale_date date,
-- quantity int,
-- unit_price  real,
-- discount real,
-- total_sale real,
-- salesperson_id int,
-- region varchar
-- )


-- create table orders(
-- order_id serial primary key,
-- customer_id int references Customers(customer_id),
-- order_date date,
-- shipping_date date, 
-- status varchar, 
-- total_amount real, 
-- payment_method varchar,
-- billing_address varchar,
-- shipping_address varchar,
-- shipper_id int
-- )

--1 select * from employee

--2 select * from customers where state = 'Nevada'

-- 3 select sum(total_sale) total_sales from sales

-- 4 select * from product where price > 100

-- 5 select first_name ||' '|| last_name as fullName , salary from employee

--6 insert into product(product_id, product_name, price ) values (201, 'care', 200)

--7 update orders set status = 'completed'

--8 delete from customers where customer_id = 2

--9 select salesperson_id, sum(total_sale) from sales group by salesperson_id

--10 select product_name, quantity from product p join sales s on p.product_id = s.product_id

--11 select product_name, total_sale from product p join sales s on p.product_id = s.product_id order by total_sale desc limit 5

--12 select * from orders where order_date> '2023-01-01'

--13 select first_name||' '|| last_name full_name from employee where employee_id in(select manager_id from employee)

--14 select c.* , max(order_date) from customers c join orders o 
-- on c.customer_id = o.customer_id group by c.customer_id, o.order_id

--15 select p.category, sum(o.total_amount) from product p join sales s 
-- on p.product_id = s.product_id  join customers c 
-- on s.customer_id = c.customer_id join orders o
-- on c.customer_id = o.customer_id
-- group by p.category

--16 select product_name from product where discontinued = 'yes' and stock_quantity >0

--17 select first_name||' '|| last_name, sum(total_amount) from customers c join orders o 
-- on c.customer_id = o.customer_id  group by c.customer_id

--18 select o.*, salesperson_id from product p join sales s 
-- on p.product_id = s.product_id  join customers c 
-- on s.customer_id = c.customer_id join orders o
-- on c.customer_id = o.customer_id
-- group by salesperson_id, o.order_id

--19 select * from sales where discount > 0.15 order by total_sale desc

--20 select department, avg(salary) from employee group by department

--21 select region, Sum(total_sale) sales from sales group by region order by sales desc limit 1

--22 select distinct c.customer_id, first_name||' '||last_name from customers c join orders o
-- on c.customer_id = o.customer_id left join sales s on c.customer_id = s.customer_id 
-- where s.customer_id is null

--23 select product_name from product where product_id not in
-- (select product_id from sales)

--24 create index idx_sales_customer_id on sales(customer_id)
-- create index idx_customers_customer_id on customers(customer_id)

-- 25 with SalesSummary as (select salesperson_id, sum(total_sale) as  sales_amount from sales group by salesperson_id)
-- select salesperson_id, sales_amount, rank() over (order by sales_amount desc) as sales_rank from SalesSummary;







