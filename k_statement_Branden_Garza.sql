create database college_db;
use college_db

create table if not exists students (
    S_ID INT autho_increment primary key,
    first_name VARCHAR(30) not null,
    last_name VARCHAR(30) not null,
    score float(5,2)
);

 
insert into student value(null, "Leyla", "Garcia", 42);
insert into student value(null, "David", "Freitas", 90);
insert into student value(null, "Eli", "Jarvis", 75)



select * from student;
-- alter table student add grade char(1);
-- insert into student value(null, "Martin", "Fernandez", 81)

CREATE PROCEDURE IF NOT EXISTS update_student_grade(IN p-id INT)
BEGIN
    UPDATE student
    set grde = CASE
        WHEN score >= 90 THEN 'A'
        WHEN score >= 80 THEN 'B'
        WHEN score >= 70 THEN 'C'
        WHEN score >= 60 THEN 'D'
        ELSE 'F'
    END
    WHERE S_ID = p_id;


CALL update_student_grade(2);
select * from student;
