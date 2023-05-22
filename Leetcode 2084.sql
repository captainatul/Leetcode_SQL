use db 

-- Creating table 
create table orders (
order_id int , 
customer_id int , 
order_type int
)

-- Inserting Values
insert into orders values (1,1,0),(2,1,0),(11,2,0),
(12,2,1),(21,3,1),(22,3,0),(31,4,1),(32,4,1)

/*
Write an SQL query to report all the orders based on the following criteria:

If a customer has at least one order of type 0, do not report any order of type 1 from that customer.
Otherwise, report all the orders of the customer.
Return the result table in any order.
*/
with cte as (
select * , MIN(order_type) over (partition by customer_id ) as flag
from orders
)
select order_id,customer_id,order_type from cte where order_type + flag != 1




