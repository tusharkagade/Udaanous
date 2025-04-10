use employee_details;
create table employee_information(
emp_id int,
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
alter table employee_information
add column  age int;
select * from employee_information;
alter table employee_information
drop column age;
select * from employee_information;
alter table employee_information 
rename column emp_name to name;
select name from employee_information;
select * from employee_information;
alter table employee_information
add constraint emp_id primary key (emp_id);
describe employee_information;
--- next table 
create table company_table (
emp_id int,
designation varchar(50) not null,
salary_hike float,
project_details varchar(50) not null
);
select * from company_table;
insert into company_table (emp_id,designation,salary_hike,project_details)
				   values (101,"Data Analyst",20,"consumer_segment"),
                          (102,"Data Scientist",50,"machine learning"),
                          (103,"Front end Devloper",15,"creating websites"),
                          (105,"Back end Devloper",10,"managing Database");
select * from company_table;
alter table company_table 
add constraint emp_id foreign key (emp_id)  references employee_information(emp_id);
desc company_table;
insert into company_table (emp_id,designation,salary_hike,project_details)
				values   (112,"Data Administrator",45000,"data pipelines");
--- Foreign key added 
alter table employee_information
drop primary key;
show tables;
alter table company_table drop foreign key emp_id;
alter table employee_information 
drop primary key;
