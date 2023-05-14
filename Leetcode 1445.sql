use db 

Create table sales(
sale_date date , 
fruit varchar(20),
sold_num int ) 
insert into sales values ('2020-05-01','apples',10),('2020-05-01','oranges',8),('2020-05-02','apples',15),
('2020-05-02','oranges',15),('2020-05-03','apples',20),('2020-05-03','oranges',0),('2020-05-04','apples',15),
('2020-05-04','oranges',16)


#Solution

select sale_date, SUM(case when fruit = 'apples' then sold_num else -1*sold_num end) as diff  from sales
group by sale_date 