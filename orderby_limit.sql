-- Display records sorted by price (descending)
select*from sales order by price desc;
-- Display top 3 expensive products
select*from sales order by price desc limit 3;
-- Display first 5 records
select*from sales limit 5;
-- Display last 5 records
select*from sales order by order_id desc limit 5;
