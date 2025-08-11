-- Use Database
use EcommerceDB;

-- use customer table
select * from customers;

-- use orders table
select * from orders;

-- inner join
-- Display order_id, order_date, total_amount, status along with name, address and phone.
select O.order_id, O.order_date, O.total_amount, O.status, C.name, C.address, C.phone from orders as O 
inner join customers as C ON O.customer_id = C.customer_id;
-- select columns_name from table1 alias_name1 Inner Join table2 alias_name2 ON alias_name1.common_colunm = alias_name2.common_column 
-- [where condition] ; 

-- Display order_id, order_date, total_amount, status and Customer_name whose order_Status="pending".
select O.order_id, O.order_date, O.total_amount, O.status, C.name from orders as O 
join customers as C  ON O.customer_id = C.customer_id where O.status="Pending";

-- Left Join

-- List all customers and their order_id and total_amount
select C.name, O.order_id, O.total_amount 
from customers as C 
left join orders as O on C.customer_id=O.customer_id;

-- Find customers who haven’t placed any orders.
select C.name from customers as C 
left join orders as O on C.customer_id=O.customer_id 
where O.order_id is Null;

-- Right Join
-- List all orders and the names of customers who placed them.
select C.name, O.order_id, O.total_amount 
from customers as C 
right join orders as O on C.customer_id=O.customer_id;

-- Full Join
select O.order_id, C.name 
from orders as O 
left join customers As C on C.customer_id=O.customer_id
union
select O.order_id, C.name
from orders AS O RIGHT JOIN customers AS C ON C.customer_id = O.customer_id;

-- Cross Join
select * from customers cross join orders;

-- Inner Join
select * from customers, orders 
where customers.customer_id = orders.customer_id;

-- Non Equi Join
select * from customers, orders 
where customers.customer_id != orders.customer_id;

-- Natural Join
select * from customers natural join orders;

-- Left Outer Join
select * from customers left join orders
on customers.customer_id=orders.customer_id;

-- Right Outer Join
select * from customers right join orders
on customers.customer_id=orders.customer_id;


















