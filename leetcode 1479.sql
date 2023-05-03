use trendytech

drop table  Orders
 create table Orders (
 order_id int,
 customer_id int, 
 order_date Date,
 item_id int,
 quantity int );
 insert into orders values (1,1,'2020-06-01',1,10),(2,1,'2020-06-08',2,10),(3,2,'2020-06-02',1,5),(4,3,'2020-06-03',3,5),
 (5,4,'2020-06-04',4,1),(6,4,'2020-06-05',5,5),(7,5,'2020-06-05',1,10),(8,5,'2020-06-14',4,5),(9,5,'2020-06-21',3,5)

 select * from orders

 create table Items (
 item_id int,
 item_name varchar (25),
 item_category varchar (25)
 )

 Insert into items values (1,'LC Alg. Book','Book'),(2,'LC DB. Book','Book'),(3,'LC SmartPhone','Phone'),(4,'LC Phone 2020','Phone'),
 (5,'LC SmartGlass','Glasses'),(6,'LC T-Shirt XL','T-Shirt')

 select * from items 

 with cte as (
 select *, DATEPART(WEEKDAY,Order_date) as day_of_week from Orders
 )
 select item_category, sum (case when day_of_week = 1 then quantity else 0 end) as sunday ,
 sum (case when day_of_week = 2 then quantity else 0 end) as monday,
 sum (case when day_of_week = 3 then quantity else 0 end) as tuesday,
 sum (case when day_of_week = 4 then quantity else 0 end) as wednesday,
 sum (case when day_of_week = 5 then quantity else 0 end) as thursday,
 sum (case when day_of_week = 6 then quantity else 0 end) as friday,
 sum (case when day_of_week = 7 then quantity else 0 end) as saturday 
 from cte o full outer join items i on o.item_id = i.item_id
 group by item_category 







