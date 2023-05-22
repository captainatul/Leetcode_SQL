


Stocks 
+---------------+-----------+---------------+--------+
| stock_name    | operation | operation_day | price  |
+---------------+-----------+---------------+--------+
| Leetcode      | Buy       | 1             | 1000   |
| Corona Masks  | Buy       | 2             | 10     |
| Leetcode      | Sell      | 5             | 9000   |
| Handbags      | Buy       | 17            | 30000  |
| Corona Masks  | Sell      | 3             | 1010   |
| Corona Masks  | Buy       | 4             | 1000   |
| Corona Masks  | Sell      | 5             | 500    |
| Corona Masks  | Buy       | 6             | 1000   |
| Handbags      | Sell      | 29            | 7000   |
| Corona Masks  | Sell      | 10            | 10000  |
+---------------+-----------+---------------+--------+

/*Write an SQL query to report the Capital gain/loss for each stock.

The capital gain/loss of a stock is total gain or loss after buying and selling the stock one or many times.

Return the result table in any order.
*/

create table stocks (
stock_name varchar(20),
operation varchar (10),
operation_day int,
price int
)

INSERT INTO stocks VALUES ('Leetcode','Buy',1,1000),('Corona masks','Buy',2,10),('Leetcode','sell',5,9000),
('Handbags','Buy',17,30000),('Corona masks','sell',3,1010),('Corona masks','Buy',4,1000),('Corona masks','sell',5,500),
('Corona masks','Buy',6,1000),('handbags','sell',29,7000),('Corona masks','sell',10,10000)

SELECT stock_name , SUM(CASE WHEN operation ='sell' then price else -1*price end) AS capital_gain_loss
FROM stocks 
GROUP BY stock_name

