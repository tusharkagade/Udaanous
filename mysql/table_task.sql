use uddanous;
create table drop_idx_tab(
Student_ID int,
Student_Names varchar(255),
age int
);
insert into drop_idx_tab(Student_id,Student_names,age)
				values  (1,"Alex",18),
                        (2,"Akash",27),
                        (3,"Ramisha",21);
create unique index idx_unique 
on drop_idx_tab(student_id);


                        