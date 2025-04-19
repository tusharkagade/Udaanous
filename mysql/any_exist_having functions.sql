use uddanous;
show tables;
select * from courses_data;
alter table courses_data
add column CGPA int;
select * from courses_data;
update courses_data set CGPA = 2;
select * from courses_data;
select * from student_information where GPA >
any(select CGPA from courses_data where course_name = "Biology");
select department,count(department) from student_information
group by department
having department = "Arts";
select * from courses_data;
select * from student_information where  exists (select CGPA from courses_data where course_name = "Physics");












