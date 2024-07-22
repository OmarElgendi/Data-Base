CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) ,
    major VARCHAR(20) DEFAULT 'Undecided',
    PRIMARY KEY(student_id)
);

SELECT * FROM student;

INSERT INTO student (name,major) VALUES ('Omar', 'PHYSICS');
INSERT INTO student (name,major) VALUES ('Lara', 'sociology' );
INSERT INTO student (name,major) VALUES ('Sara', 'Biology' );
INSERT INTO student (name,major) VALUES ('Ali' , 'History' );
INSERT INTO student (name,major) VALUES ('Tara', 'Maths' );
INSERT INTO student (name,major) VALUES ('Mona', 'Science' );

UPDATE student
SET major= 'Bio'
WHERE major= 'Biology';

DELETE FROM student
WHERE major='History';

SELECT name , major
FROM student;

DROP TABLE student;