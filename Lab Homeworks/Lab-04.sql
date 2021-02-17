01. Find the employee_id, last_name, email, salary and department_id of all the employees with the highest salary in each department.
=>SELECT employee_id,last_name,email,salary,department_id FROM employees WHERE (department_id,salary) IN (SELECT department_id,MAX(salary) FROM employees GROUP BY department_id);

02. Find the employee_id, last_name, email, commission_pct and department_id of all the employees with the highest commission_pct in each department. 
=>SELECT employee_id,last_name,email,commission_pct,department_id FROM employees WHERE (department_id,commission_pct) IN (SELECT department_id,MAX(commission_pct) FROM employees GROUP BY department_id);

03. Find the employee_id, last_name, email, commission_pct and department_id of all the employees with the lowest commission_pct in each department.
=>SELECT employee_id,last_name,email,commission_pct,department_id FROM employees WHERE (department_id,commission_pct) IN (SELECT department_id,MIN(commission_pct) FROM employees GROUP BY department_id);

04. Find the employee_id, last_name, email, commission_pct and department_id of all the employees in department ABCXYZ (department id = 5) who have a higher commission_pct than any of the employees of department XYZABC (department id = 7) .
=>SELECT employee_id,last_name,email,commission_pct,department_id FROM employees WHERE department_id=5 AND commission_pct > ANY(SELECT commission_pct FROM employees WHERE department_id=7);

05. Find the employee_id, last_name, email, salary and department_id of all the employees in department ABCXYZ (department id = 5)  who have a higher salary than any of the employees of department XYZABC (department id = 7) . 
=>SELECT employee_id,last_name,email,salary,department_id FROM employees WHERE department_id=5 AND salary > ANY(SELECT salary FROM employees WHERE department_id=7);

06. For each of the departments, find the department_id, job_id and salary with salary less than at least one other job_id in the department.
=>SELECT E1.department_id,E1.job_id,E1.salary FROM employees E1 WHERE EXISTS (SELECT * FROM employees E2 WHERE E2.department_id=E1.department_id AND E2.job_id<>E1.job_id AND E2.salary>E1.salary) GROUP BY department_id;

07. Find the manager_id for who have at least one employee under them with a salary less than 2500.
=>SELECT DISTINCT manager_id FROM employees E1 WHERE EXISTS (SELECT * FROM employees E2 WHERE E2.manager_id=E1.manager_id AND E2.salary<2500);

08. Find the manager_id for who have at least one employee under them with a commission_pct less than 18.25 
=>SELECT DISTINCT manager_id FROM employees E1 WHERE EXISTS (SELECT * FROM employees E2 WHERE E2.manager_id=E1.manager_id AND E2.commission_pct<18.25);

09. Find the manager_id for who does not have any employee under them with a salary less than 3500.
=>SELECT DISTINCT manager_id FROM employees E1 WHERE NOT EXISTS (SELECT * FROM employees E2 WHERE E2.manager_id=E1.manager_id AND E2.salary<3500);

10. Find the manager_id for who does not have any employee under them with a commission_pct less than 45.05.
=>SELECT DISTINCT manager_id FROM employees E1 WHERE NOT EXISTS (SELECT * FROM employees E2 WHERE E2.manager_id=E1.manager_id AND E2.commission_pct<45.05);