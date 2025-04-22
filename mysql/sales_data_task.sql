use uddanous;
create table sales_data (
order_id int,
customer_id int,
product_id varchar(50),
product_name varchar(50),
category varchar(50),
quantity int,
price int,
order_date date,
region varchar(50)
);
select * from sales_Data;
desc sales_Data;
select sum(price * quantity) as total_sales from sales_data;
select date_format(order_date,"%y-%m") as order_date,sum(price * quantity) as total_sales from sales_data
group by date_format(order_date,"%y-%m");
select * from sales_data;
select product_name,sum(price * quantity) as total_sales from sales_data
group by product_name
order by total_sales desc limit 5;
select * from sales_data;
select region,sum(price * quantity) as total_sales from sales_data
group by region;
select * from sales_Data;
select customer_id,count(order_id) as total_order from sales_data
group by customer_id
order by total_order desc limit 10;
select * from sales_Data;
select category,sum(price * quantity) as total_sales,round(sum(price * quantity) * 100.0 / (select sum(price * quantity) from sales_data),2) as sales_percentage
from sales_data 
group by category;
select customer_id,count(order_id) as total_order from sales_Data
group by customer_id
having total_order >1;
