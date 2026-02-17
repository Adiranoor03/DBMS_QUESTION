SQL*Plus: Release 21.0.0.0.0 - Production on Thu Jan 29 04:46:25 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: SYSTEM
Enter password:
Last Successful login time: Thu Jan 29 2026 04:41:55 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student2(
  2  RollNo INT,
  3  Name VARCHAR2(50),
  4  Dept VARCHAR2(20),
  5  Age INT,
  6  Phone VARCHAR2(15)
  7  );

Table created.

SQL> DESC Student2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course(
  2  CourseID INT,
  3  CourseName VARCHAR2(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Student
  2
SQL>
SQL> ALTER TABLE Student2
  2  ADD City VARCHAR2(30);

Table altered.

SQL> DESC Student2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)

SQL> ALTER TABLE Student2
  2  ADD Semester VARCHAR2(10);

Table altered.

SQL> DESC Student2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           VARCHAR2(10)

SQL> ALTER TABLE Student2
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Student2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           VARCHAR2(10)

SQL> INSERT INTO Student2
  2  VALUES(101,'Adira','CSE',21,'9973387878','Purnea','Sem-5');

1 row created.

SQL> INSERT INTO Student2
  2   VALUES(102,'Ayushi','CSE',21,'8898765453','Patna','Sem-5');

1 row created.

SQL>  INSERT INTO Student2
  2  VALUES(103,'Atisha','CSE',19,'9987654567','Bhagalpur','Sem-5');

1 row created.

SQL> INSERT INTO Student2
  2   VALUES(104,'Ananya','CSE',21,'9987867856','Katihar','Sem-5');

1 row created.

SQL> INSERT INTO Student2
  2  VALUES(105,'Rahul Kumar','CSE',21,'9989786545','Araria','Sem-5');

1 row created.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SELECT * FROM Student2;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              CSE                          21 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          21 8898765453      Patna                          Sem-5
       103 Atisha                                             CSE                          19 9987654567      Bhagalpur                      Sem-5
       104 Ananya                                             CSE                          21 9987867856      Katihar                        Sem-5
       105 Rahul Kumar                                        CSE                          21 9989786545      Araria                         Sem-5

SQL> SELECT RollNo,Name
  2  FROM Student2;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Adira
       102 Ayushi
       103 Atisha
       104 Ananya
       105 Rahul Kumar

SQL> SELECT *
  2  FROM Student2
  3  WHERE Dept = 'CSE';

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              CSE                          21 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          21 8898765453      Patna                          Sem-5
       103 Atisha                                             CSE                          19 9987654567      Bhagalpur                      Sem-5
       104 Ananya                                             CSE                          21 9987867856      Katihar                        Sem-5
       105 Rahul Kumar                                        CSE                          21 9989786545      Araria                         Sem-5

SQL> SELECT *
  2  FROM Student2
  3  WHERE Age>20;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              CSE                          21 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          21 8898765453      Patna                          Sem-5
       104 Ananya                                             CSE                          21 9987867856      Katihar                        Sem-5
       105 Rahul Kumar                                        CSE                          21 9989786545      Araria                         Sem-5

SQL> UPDATE Student2
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> SELECT * FROM Student2;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              ECE                          21 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          21 8898765453      Patna                          Sem-5
       103 Atisha                                             CSE                          19 9987654567      Bhagalpur                      Sem-5
       104 Ananya                                             CSE                          21 9987867856      Katihar                        Sem-5
       105 Rahul Kumar                                        CSE                          21 9989786545      Araria                         Sem-5

SQL> UPDATE Student2
  2  SET City = 'Patna'
  3  WHERE Name = 'Rahul Kumar';

1 row updated.

SQL> SELECT * FROM Student2;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              ECE                          21 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          21 8898765453      Patna                          Sem-5
       103 Atisha                                             CSE                          19 9987654567      Bhagalpur                      Sem-5
       104 Ananya                                             CSE                          21 9987867856      Katihar                        Sem-5
       105 Rahul Kumar                                        CSE                          21 9989786545      Patna                          Sem-5

SQL> UPDATE Student
  2  SET Age = Age+1;

0 rows updated.

SQL> UPDATE Student2
  2  SET Age = Age+1;

5 rows updated.

SQL> SELECT * FROM Student2;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              ECE                          22 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          22 8898765453      Patna                          Sem-5
       103 Atisha                                             CSE                          20 9987654567      Bhagalpur                      Sem-5
       104 Ananya                                             CSE                          22 9987867856      Katihar                        Sem-5
       105 Rahul Kumar                                        CSE                          22 9989786545      Patna                          Sem-5

SQL> DELETE FROM Student2
  2  WHERE RollNo = 105;

1 row deleted.

SQL> SELECT * FROM Student2;

    ROLLNO NAME                                               DEPT                        AGE MOBILENO        CITY                           SEMESTER
---------- -------------------------------------------------- -------------------- ---------- --------------- ------------------------------ ----------
       101 Adira                                              ECE                          22 9973387878      Purnea                         Sem-5
       102 Ayushi                                             CSE                          22 8898765453      Patna                          Sem-5
       103 Atisha                                             CSE                          20 9987654567      Bhagalpur                      Sem-5
       104 Ananya                                             CSE                          22 9987867856      Katihar                        Sem-5

SQL>