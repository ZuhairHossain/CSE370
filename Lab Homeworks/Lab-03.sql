01. Find all the unique multipliers in the table and show them in descending order. 
=>SELECT DISTINCT multiplier FROM users ORDER BY multiplier DESC;

02. Show all the users’ ids and their respective influence_count with influence_count in ascending order.
=>SELECT id, influence_count FROM users ORDER BY influence_count;

03. Show all the unique dates of the users joining in ascending order.
=>SELECT DISTINCT member_since FROM users ORDER BY member_since;

04. Find the name, email and member_since of users who became a member of the platform on the 1st of July, 2020
=>SELECT name, email, member_since FROM users WHERE member_since='2020-07-01';

05. Find the name, email and member_since of users who became a member of the platform before the 1st of July, 2020
=>SELECT name, email, member_since FROM users WHERE member_since<'2020-07-01';

06. Find the name, email and member_since of users who became a member of the platform between 31st of July, 2020 and 15th of August, 2020
=>SELECT name, email, member_since FROM users WHERE member_since BETWEEN '2020-07-31' AND '2020-08-15';

07. Find the name, email and member_since of members who have at least 750000 influence counts.
=>SELECT name, email, member_since FROM users WHERE influence_count>=750000;

08. Find the name, email and member_since of users who became a member of the platform between 31st of July, 2020 and 15th of August, 2020 and has an influence_count greater than 750000. 
=>SELECT name, email,member_since FROM users WHERE member_since BETWEEN '2020-07-31' AND '2020-08-15' AND influence_count>750000;

09. Find all ids and email addresses where the TLD (Top Level Domain) is ‘com’ (ends with ‘com’)
=>SELECT id,email FROM users WHERE email LIKE '%com';

10. Find all ids and names of users who have ‘djangoproject’ in their email addresses
=>SELECT id,name FROM users WHERE email LIKE '%djangoproject%';

11. Show the name and email of the latest 5 members
=>SELECT name,email FROM users ORDER BY member_since DESC LIMIT 5;

12. Find the total number of users in the table.
=>SELECT COUNT(*) FROM users;

13. Find the number of unique multipliers in the table.
=>SELECT COUNT(DISTINCT multiplier) FROM users;

14. Count number of users in each multiplier who has joined after the month "April"
=>SELECT COUNT(*),multiplier FROM users WHERE MONTH(member_since)>04 GROUP BY multiplier;

15. Show the names in descending order who has minimum 700000 influence counts and belong to a even multiplier.
=>SELECT name FROM users WHERE influence_count>=700000 AND multiplier%2=0 ORDER BY name DESC;