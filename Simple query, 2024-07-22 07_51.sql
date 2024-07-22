CREATE TABLE student(
    student_id INT PRIMARY KEY ,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
);

DESCRIBE TABLE student;

DROP TABLE student;

ALTER TABLE student ADD COLUMN gpa DECIMAL(3.2);
ALTER TABLE student DROP COLUMN gpa;

-------------------------------------------------------
--INSERTING 

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Mike', 'Sociology');
INSERT INTO student(student_id,name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Ali', 'Biology');
INSERT INTO student VALUES(5, 'Sara', 'History');


SELECT *FROM student;

UPDATE student 
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major= 'Chemistry'
WHERE student_id =3;
----------------------------------------------------------
--BASIC QUERIES

SELECT name , major
FROM student
ORDER BY name DESC;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 3;

SELECT *
FROM student
WHERE major= 'Bio' OR major = 'History';

-- <> (NOT EQUAL)

SELECT *
FROM student
WHERE major <> 'Bio' ;

SELECT *
FROM student
WHERE name IN ('Ali', 'Sara', 'Mike');
------------------------------------------------------------