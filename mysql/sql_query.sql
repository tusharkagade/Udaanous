create database employee_details;
use employee_details;

create table employee_information(
emp_id int primary key,
emp_name varchar(50) not null,
department varchar(50) not null,
contact_no int unique, 
salary int
);
select * from employee_information;
insert into employee_information (emp_id,emp_name,department,contact_no,salary)
                         values   ( 101,"Rahul singh","it",911228,75000),
								  (102," Chetan sharma","Marketing",779864,50000),
                                  (103,"Alisha Khan","HR",919190,45000),
                                  (104,"Asif khan","Finance",757975,50000),
                                  (105,"monish kagade","accounts",738756,85000),
                                  (106,"sujit tijare","selling",776556,90000),
                                  (107,"rohan kanojiya","selling",564324,89000),
                                  (108,"shalini singh","HR",456787,95000),
                                  (109,"rohini kanojiya","Marketing",988998,85000),
                                  (110,"lalit singh","accounts",657645,98000);
select * from employee_information;
insert into employee_information(emp_id,emp_name,department)
                       values   (111,"sunil singh","it");
insert into employee_information(emp_id,emp_name,department)
                        values  (112,"arjun das","it");
select * from employee_information;
update employee_information set contact_no = 123456,salary=54000
where emp_id = 111;
select * from employee_information;
update employee_information set contact_no = 445566,salary = 76000
where emp_id = 112;
select * from employee_information;
delete from employee_information where emp_id = 112;
select * from employee_information;
delete from employee_information where emp_id = 111;
select * from employee_information;
select count(*) from employee_information;
truncate table employee_information;
select * from employee_information;
show tables;
drop table employee_information;
select * from employee_information;

                       