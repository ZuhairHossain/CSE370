01. Create a database with the name "CSE370"
=>CREATE DATABASE CSE370;

02.Create a table in that database. Table name should be "lab_grades". The table should have the columns exactly as the table shown below. 
=>USE DATABASE CSE370;
CREATE TABLE lab_grades(
Std_ID char(4),
Name varchar(30),
Major char(3),
section char(1),
Days_present int,
Project_marks double,
CGPA decimal(3,2),
Submission_date date
);

03.Insert data into the table from the following table. 
=>INSERT INTO lab_grades values('s001','Abir','CS','1',10,18.5,3.91,'2018-09-15'),
('s019','Naima','CSE','2',12,20,3.7,'2018-08-14'),
('s002','Nafis','CSE','1',12,20,3.86,'2018-08-15'),
('s003','Tasneem','CS','1',8,18,3.57,'2018-09-18'),
('s004','Nahid','ECE','2',7,16.5,3.25,'2018-08-20'),
('s005','Arafat','CS','2',11,20,4.0,'2018-09-13'),
('s006','Tasneem','CSE','1',12,17.5,3.7,'2018-08-15'),
('s007','Muhtadi','ECE','1',10,19,3.67,'2018-09-16'),
('S008','Farhana','CSE','2',6,15,2.67,'2018-08-16');
SELECT * FROM lab_grades;