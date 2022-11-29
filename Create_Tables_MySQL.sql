CREATE DATABASE college;
Use college;
/*--DROP TABLE student;*/
CREATE TABLE student (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Major VARCHAR(20) DEFAULT 'undecided',
    Rollno INT UNIQUE
);
/*whaterver */
DESCRIBE student;
ALTER TABLE student add Gpa DECIMAL(3,2);
ALTER TABLE student ADD State VARCHAR(10);
DESCRIBE student;
ALTER TABLE student DROP State;
DESCRIBE student;

INSERT INTO student VALUES('','KARTHIK','CIVIL',100,8.39);
INSERT INTO student VALUES('','AKILA','ECE',101,7.75);
INSERT INTO student VALUES('','SREENIDHI','UKG',102,9.0);
INSERT INTO student VALUES('','SHRINIVAS','PRE-KG',103,9.5);
INSERT INTO student(Name,Rollno) VALUES('NATARAJAN',104);

SELECT * FROM student;

UPDATE student
SET Major = 'ICMAI'
WHERE Major ='undecided';

SELECT * FROM student;

UPDATE student
SET Major = 'E&CE'
WHERE Rollno=101;

SELECT * FROM student;

UPDATE student
SET Major = 'Engg'
WHERE Major='Civil' OR Major='E&CE';

SELECT * FROM student;

DELETE FROM student
WHERE Gpa=NULL;

SELECT * FROM student;

/*DROP DATABASE college;*/