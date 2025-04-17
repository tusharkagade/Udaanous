create table customer_date(
City varchar(50),
Customer_id int primary key,
Total_Spending int
);
insert into customer_date(City,Customer_id,Total_Spending)
      values("New York",55,545656),
            ("Chicago",75,784365),
            ("Las Vegas",67,874569);
select sum(Total_spending),City from customer_date
group by city;
select * from customer_date 
order by total_spending asc;
select * from customer_date
order by total_spending desc;
