use uddanous;
create table customer1(
customer_id int,
customer_name varchar(50),
region varchar(50),
signup_date date
);
show tables;
select * from customer1;
create table orders1(
order_id int,
customer_id int,
order_date date,
total_amount int
);
select * from orders1;
select * from customer1;
select * from products1;
select * from order_items;
select date_format(orders1.order_date,"%Y-%m") as order_Date,sum(order_items.price * order_items.quantity) as total_revenue from orders1
join order_items
on order_items.order_id = orders1.order_id
group by date_format(orders1.order_Date,"%Y-%m");
select * from customer1;
update orders1 set customer_id = 5 where order_id = 1005;
set sql_safe_updates=0;
select * from orders1;
select customer1.customer_name,sum(orders1.total_amount) as total_spent from orders1
join customer1
on customer1.customer_id = orders1.customer_id 
group by customer1.customer_name
order by total_spent desc limit 5;
select * from products1;
select * from orders1;
select * from customer1;
select * from order_items;
select customer1.region,products1.product_name,count(orders1.order_id) as  total_orders from orders1
join customer1
on customer1.customer_id = orders1.customer_id
join order_items
on orders1.order_id = order_items.order_id
join products1
on products1.product_id = order_items.product_id 
group by customer1.region,products1.product_name;

select products1.product_name,count(order_items.quantity) * (select sum(order_items.price - products1.cost) from order_items join products1 on products1.product_id = order_items.product_id) as Profit from order_items
join products1
on products1.product_id = order_items.product_id
group by products1.product_name; 

select products1.product_name,sum((order_items.price - products1.cost) * order_items.quantity) as total_profit from order_items
join products1
on order_items.product_id = products1.product_id
group by products1.product_name;

select * from customer1;
select * from orders1;
with customer_order_counts as (select customer_id,count(order_id) as total_orders from orders1
group by customer_id 
),
orders_with_customer_type as(
       select 
             o.order_id,
             o.customer_id,
             date_format(o.order_date,"%y-%m") as order_month,
             case 
                 when coc.total_orders = 1 then "One-time" 
                 else "Returning"
                 end as customer_type
			from orders1 o 
            join 
            customer_order_counts coc on o.customer_id = coc.customer_id
)
select order_month,customer_type,count(order_id) as order_count 
from orders_with_customer_type
group by order_month, customer_type
order by order_month, customer_type;

with customer_order_counts as (select customer_id,count(order_id) as total_orders from orders1
group by customer_id 
),
orders_with_customer_type as(
       select 
             o.order_id,
             o.customer_id,
             date_format(o.order_date,"%y-%m") as order_month,
             case 
                 when coc.total_orders = 1 then "One-time" 
                 else "Returning"
                 end as customer_type
			from orders1 o 
            join 
            customer_order_counts coc on o.customer_id = coc.customer_id
)
select order_month,customer_type,count(order_id) as order_count 
from orders_with_customer_type
group by order_month, customer_type
order by order_month, customer_type;

with customer_order_summary as (
select o.customer_id,count(o.order_id) as total_orders from orders as o
group by o.customer_id 
),
orders_with_customer_type as (
select o.order_id,
       o.customer_id,
       date_format(o.order_date,"%yY-%m") as order_month,
       case 
          when cos.total_orders = 1 then "One-time Customer"
          else "Returning Customer" 
	  end as customer_type 
from orders1 as o
join customer_order_summary as cos
on o.customer_id = cos.customer_id 
)

select owct.order_month as "month",
owct.customer_type as customer_type,
count(owct.order_id) as total_orders 
from orders_with_customer_type as owct 
group by owct.order_month,owct.customer_type
order by owct.order_month, owct.customer_type;





