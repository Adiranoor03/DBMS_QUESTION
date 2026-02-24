CREATE TABLE Student2(
RollNo INT,
Name VARCHAR2(50),
Dept VARCHAR2(20),
Age INT,
Phone VARCHAR2(15)
);

CREATE TABLE Course(
CourseID INT,
CourseName VARCHAR2(50),
Credits INT
);

ALTER TABLE Student2
ADD City VARCHAR2(30);

ALTER TABLE Student2
ADD Semester VARCHAR2(10);

ALTER TABLE Student2
RENAME COLUMN Phone TO MobileNo;

INSERT INTO Student2
VALUES(101,'Adira','CSE',21,'9973387878','Purnea','Sem-5');

INSERT INTO Student2
VALUES(102,'Ayushi','CSE',21,'8898765453','Patna','Sem-5');

INSERT INTO Student2
VALUES(103,'Atisha','CSE',19,'9987654567','Bhagalpur','Sem-5');

INSERT INTO Student2
VALUES(104,'Ananya','CSE',21,'9987867856','Katihar','Sem-5');

INSERT INTO Student2
VALUES(105,'Rahul Kumar','CSE',21,'9989786545','Araria','Sem-5');

UPDATE Student2
SET Dept = 'ECE'
WHERE RollNo = 101;

UPDATE Student2
SET City = 'Patna'
WHERE Name = 'Rahul Kumar';

UPDATE Student2
SET Age = Age+1;

DELETE FROM Student2
WHERE RollNo = 105;