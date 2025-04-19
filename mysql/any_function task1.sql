CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');

CREATE TABLE exam_infor (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
INSERT INTO exam_infor (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);

select * from student_info where studentID = 
any(select studentID from exam_infor where Scores > 75);


