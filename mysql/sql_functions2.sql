----- using lower case
select  lower(" USING LOWERCASE FUNCTION TO MAKE THE STRING SMALLER FORMAT") as output;
select * from student_information;
select lower (first_name) as lcase_name 
from student_information;
---- using char_length function
select char_length("checking the char_length of string") as length;
select char_length(last_name) as no_length from student_information;
---- using upper function
select upper("making the string into the upper case format") as output;
select upper(first_name) as output from student_information;
---- using trim  function
select trim("     sql tutorials    ") as output ;
select trim(first_name) as trimmedcol
from student_information;
---- using replace function
select replace("SQL tutorial", "sql","html") as output;
select replace("data analyst","business","Analyst") as output;
select replace("Business Analyst","Data","Analyst") as output;
select replace(first_name,"first_name","name") as output from student_information;
select * from student_information;
select replace(year,"freshman","fresher") as replaced_name from student_information;
select * from student_information;
select replace(gender,"Male","men") as output from student_information;
---- using concat function 
select concat("first name"," last name") as output;
select * from student_information;
select concat(first_name,last_name,gender) as new_column from student_information;
