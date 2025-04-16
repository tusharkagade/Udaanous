use pizza_store;
select * from orders;
create table dates(
start_date date,
last_date date
);
select * from dates;
insert into dates(start_date,last_date)
        values    ("2025-04-1","2025-05-2"),
                  ("2025-06-1","2025-07-1"),
                  ("2025-08-1","2025-09-1"),
                  ("2025-10-1","2025-11-1"),
                  ("2025-12-1","2026-01-1");
select * from dates;
select datediff(start_date,last_date) from dates;
select day(start_date) from dates;
select month(start_date) from dates;
select year(start_date) from dates;
select date_format(start_date,"%b") from dates;
select date_format(start_date,"%c") from dates;
select date_format(start_date,"%m") from dates;
select date_format(start_date,"%y") from dates;
select date_format(start_date,"%Y") from dates; 