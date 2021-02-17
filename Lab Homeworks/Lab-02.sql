--------------------------
CREATE TABLE USERS(
member_id char(3),
name varchar(30),
email varchar(50),
influence_count varchar(10),
member_since date,
multiplier char(4)
);

INSERT INTO USERS VALUES
('1','Taylor Otwell','otwell@laravel.com','739360','2020-6-10','10'),
('2','Ryan Dahl','ryan@nodejs.org','633632','2020-04-22','10'),
('3','Brendan Eich','eich@javascript.com','939570','2020-05-07','8'),
('5','Evan You','you@vuejs.org','982630','2020-06-11','7'),
('6','Rasmus Lerdorf','lerdorf@php.net','937927','2020-06-3','8'),
('7','Guido van Rossum','guido@python.org','968827','2020-07-18','19'),
('8','Adrian Holovaty','adrian@djangoproject.com','570724','2020-05-07','5'),
('9','Simon Willison','simon@djangoproject.com','864615','2020-04-30','4'),
('10','James Gosling','james@java.com','719491','2020-05-18','5'),
('11','Rod Johnson','rod@spring.io','601744','2020-05-18','7'),
('12','Satoshi Nakamoto','nakamoto@blockchain.com','630488','2020-05-10','10');
--------------------------

01. Change the column name  "member_id" to "id". 
=>ALTER TABLE USERS CHANGE member_id id char(3);

02. Find the id, name, email, and member_since of all the users
=>SELECT id,name,email,member_since FROM USERS;

03. Find the name, and email  of all the users
=>SELECT name,email FROM USERS;

04. Find the name, email, member_since, and ranking of all the members, where the formula for the ranking is as follow: 1 - (multiplier * influence_count / 20000000)
=>SELECT name,email,member_since,(1 - (multiplier * influence_count / 20000000)) FROM USERS;

05.Altering the previous command, show the ranking using ranking as the alias
=>SELECT name,email,member_since,(1 - (multiplier * influence_count / 20000000)) as ranking FROM USERS;