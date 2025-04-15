use uddanous;
show tables;
select * from courses_data; 
--- using or function
select * from courses_data where course_name = "Biology" or course_name = "physics";
----- using limit function
select * from courses_data where course_name = "economics" limit 3;
---- using between function
select * from courses_data where course_id between 5 and 15;
----- using in function
select * from student_information where year in ("freshman","senior");
------ using like function
select * from student_information where department like "s%";
select * from student_information where department like "%s";
select * from student_information where department like "%s%";
----- using AND function
select * from student_information where department = "science" and year = "senior";
---- using not function
select * from student_information where not  department = "Arts";