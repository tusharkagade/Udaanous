use uddanous;
create table exam_info(
studentID int auto_increment primary key,
FirstNames VARCHAR(50),
LastName varchar(50),
Scores integer
);

insert into exam_info(FirstNames,LastName,Scores)
               values("John","Doe",80),
                     ("Alice","Smith",75),
                     ("Bob","Johnson",78),
                     ("emily","Brown",60),
                     ("Michael","Davis",86),
                     ("sarah","Wilson",90),
                     ("David","Lee",75),
                     ("Jessica","Taylor",75),
                     ("Chris","Evans",55),
                     ("Emma","Thompson",67);
select * from exam_info;
select power(scores,3) as CubeScores from exam_info;











