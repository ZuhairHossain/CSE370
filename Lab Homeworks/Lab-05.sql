01. Find names and cities of customers who have a loan at Perryridge branch. 
=> SELECT C.customer_name,C.customer_city FROM customer C,borrower B,loan L where C.customer_id=B.customer_id AND B.loan_number=L.loan_number AND L.branch_name='Perryridge';

02. Find the names of branches whose assets are greater than the assets of some branch in Brooklyn.
=> SELECT B1.
branch_name 
FROM
 branch
 B1 WHERE
 B1.branch_city<>'Brooklyn'
 AND B1.assets>ANY(SELECT B2.assets
 FROM
 branch B2
 WHERE
 B2.branch_city='Brooklyn');

03. Find the set of names of branches whose assets are greater than the assets of all branches in Horseneck.
=> SELECT B1.
branch_name 
FROM
 branch
 B1 WHERE
 B1.branch_city<>'Horseneck'
 AND B1.assets>ALL(SELECT B2.assets
 FROM
 branch B2
 WHERE
 B2.branch_city='Horseneck');

04. Show the loan data, ordered by decreasing amounts, then increasing loan numbers. 
=> SELECT * FROM loan ORDER BY amount DESC, loan_number ASC;

05. Find the names of branches having at least one account, with average balances greater than or equal 700. 
=> SELECT A.branch_name FROM account A GROUP BY A.branch_name HAVING AVG(A.balance)>=700;

06. Find the names and account number of customers who have the 3 highest balances in their accounts. [Hint: https://www.w3schools.com/sql/sql_top.asp]
=> SELECT C.customer_name, A.account_number from customer C, depositor D, account A WHERE C.customer_id = D.customer_id AND D.account_number = A.account_number ORDER BY A.balance DESC LIMIT 3;

07. Find the names of customers with accounts at a branch where Johnson has an account.
=> SELECT C.customer_name FROM customer C,depositor D,account A WHERE C.customer_id=D.customer_id AND D.account_number=A.account_number AND C.customer_name<>'Johnson' AND A.branch_name in (SELECT A.branch_name FROM customer C,depositor D,account A WHERE C.customer_id=D.customer_id AND D.account_number=A.account_number AND C.customer_name='Johnson');

08. Find the names of customers with an account but not a loan at Mianus branch. 
=> SELECT C.customer_name FROM customer C,depositor D,account A WHERE C.customer_id=D.customer_id AND D.account_number=A.account_number AND A.branch_name='Mianus' AND C.customer_id not in (SELECT B.customer_id FROM customer C,borrower B,loan L WHERE C.customer_id=B.customer_id AND B.loan_number=L.loan_number AND L.branch_name='Mianus');

09. Find the names of each branch and the number of customers having at least one account at that branch.
=> SELECT A.branch_name, COUNT(*) AS Number_Of_Customers FROM account A GROUP BY A.branch_name;

10. Find the average balance of all customers in ‘Palo Alto’ having at least 2 accounts. 
=> SELECT AVG(A.balance) FROM customer C, account A, depositor D WHERE C.customer_id = D.customer_id AND D.account_number = A.account_number AND C.customer_city = 'Palo Alto' GROUP BY C.customer_id HAVING COUNT(*)>= 2;
