use uddanous;
show tables;
select * from student_information;
select * from courses_data;
create index id_index 
on student_information(student_id);
create unique index uniq_id 
on courses_data(course_id);
alter table student_information
drop index id_index;
alter table courses_data 
drop index uniq_id;
select course_id from courses_data where course_id is null;
select student_id from student_information where student_id is null;
select * from student_information;
select first_name from student_information where first_name is null;
select first_name from student_information 
where first_name is not null;
select * from student_information 
where first_name is not null;
select * from student_information 
where student_id is not null;
select * from courses_data;
select * from courses_data 
where course_id is null;
select * from student_information 
where last_name is not null;
select * from courses_data 
where  course_id is not null;


select * from student_information
where first_name is not null;

select * from student_information
where last_name is not null;
select * from courses_data 
where course_id is not null;
select * from student_information;
select * from student_information 
where student_id is not null;
select * from courses_data 
where course_id is null;
select * from courses_data 
where course_id is not null;
select * from  courses_data where course_id is null;
select * from courses_data where course_id is not null;
































