use uddanous;
show tables;
select * from courses_data;
select min(course_level) from courses_data;
select avg(course_level) from courses_Data;
select max(course_level) from courses_Data;
select * from courses_Data;
select * from student_information;
use pizza_store;
select * from order_details;
select pizzas.price div order_Details.quantity as OUTPUT from pizzas
join order_details
on order_Details.pizza_id = pizzas.pizza_id;
use uddanous;
select count(student_id) as total_count from student_information;
use pizza_store;
select round(sum(order_Details.quantity * pizzas.price),2) as total_revenue from order_Details
join pizzas
on pizzas.pizza_id = order_Details.pizza_id;
use uddanous;
select * from student_information;
alter table student_information
add column credibility int;
select * from student_information;
update student_information set credibility = -25;
set sql_safe_updates=0;
select * from student_information;
select abs(credibility) from student_information;
