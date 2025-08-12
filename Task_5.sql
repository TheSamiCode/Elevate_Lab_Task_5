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

-- Employee table
select * from emp;

-- Department table
select * from dept;

-- Display employee details with dept details  ?
select e.*, d.dname, d.loc  from emp as e join dept as d on e.deptno = d.deptno;

/* Outer Join
	- left join
    - right join
    - cross join
*/

-- Left Join
-- Display the employee details whose as assign department and who has not assign any department along with department name?
select e.*, d.dname, d.loc from emp as e left join dept as d on e.deptno =  d.deptno;

-- Display the employee details who has not assign any department along with department name?
select e.*, d.dname, d.loc from emp as e left join dept as d on e.deptno =  d.deptno where d.dname is null;

-- Right Join
-- Display the department detail which not assigned yet to any employee?
select e.ename, d.* from emp as e right join dept as d on e.deptno = d.deptno where e.ename is null;

-- Self Join
-- Display Ename,Mgrname ? 
select e.ename as employee, m.ename as manager from emp as e join emp as m on e.mgr=m.empno;

-- Display employee names reporting to blake ?
select e.ename as employee, m.ename as manager from emp as e join emp as m on e.mgr=m.empno where m.ename='blake';

-- Display blake's manager name  ?
select e.ename, m.ename from emp as e join emp as m on e.mgr = m.empno where e.ename='blake';

-- Cross Join
select * from Items1;
select * from Items2;

select f.iname as food, b.iname as drinks, f.price+b.price as comboprice from Items1 as f cross join Items2 as b ;

































