use pizza_store;
select * from order_Details
join pizzas
on pizzas.pizza_id = order_Details.pizza_id;

select * from pizzas
left  join pizza_types
on pizza_types.pizza_type_id = pizzas.pizza_type_id;

select * from pizzas
right join order_Details
on order_Details.pizza_id = pizzas.pizza_id;
select * from order_Details
cross join pizzas
on order_Details.pizza_id = pizzas.pizza_id;