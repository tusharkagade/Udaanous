create table exam_info2(
studentID int auto_increment primary key,
FirstNames varchar(50),
LastNames varchar(50),
Scores float 
);

insert into exam_info2(FirstNames,LastNames,scores)
             vALUES   ("john","Doe",80.345544),
					  ("Alice","Smith",75.6355),
                      ("Bob","Johnson",78.5364565),
                      ("Emily","Brown",60.3565),
                      ("Michael","Davis",86.5353656),
                      ("Sarah","Wilson",90.525464),
                      ("David","Lee",75.567765),
                      ("Jessica","Taylor",75.34242),
                      ("Chris","Evans",55.09098),
                      ("Emma","Thompson",67.34535);
select * from exam_info2;
select round(scores,2) as RoundedScores from exam_info2;