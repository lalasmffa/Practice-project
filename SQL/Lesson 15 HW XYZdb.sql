---1. Create a New Database Named XYZ

/*I created a new SQLite database using DBeaver (Database → New Database Connection → SQLite), 
 set the file path for the .db file, and then ran CREATE TABLE statements in the SQL Editor to build the tables.*/


---2. Create Employee Table
---Execute SQL code to create an employee table named XYZ.employee with fields:
---emp_id, f_name, l_name, job_id, salary, manager_id, dept_id

create table if not EXISTS employee (
emp_id integer Primary Key, 
f_name Varchar(250), 
l_name Varchar(250), 
job_id Varchar(50), 
salary integer, 
manager_id varchar(10), 
dept_id integer
);

select * from employee;


---3. Insert Values
INSERT INTO employee (emp_id, f_name, l_name, job_id, salary, manager_id, dept_id) 
VALUES
	(101, 'John', 'Smith', 'JP123', 70000, '02', 30),
	(102, 'Emily', 'Johnson', 'EN456', 80000, '03', 40),
	(103, 'Michael', 'Williams', 'MW789', 90000, '04', 20),
	(104, 'Emma', 'Jones', 'EJ567', 75000, '02', 10),
	(105, 'Calvin', 'Miller', 'CM345', 85000, '03', 30),
	(106, 'Sophia', 'Davis', 'SD678', 95000, '04', 20),
	(107, 'Liam', 'Moore', 'LM901', 72000, '02', 40),
	(108, 'Olivia', 'Anderson', 'OA234', 87000, '03', 10),
	(109, 'William', 'Brown', 'WB567', 92000, '04', 30),
	(110, 'Ava', 'Taylor', 'AT890', 78000, '02', 20);


---4. Retrieve Names with Higher Salary (Using Joins)
---Execute SQL code to retrieve the first and last names of employees with a salary higher than Calvin. 
---Utilize joins to compare employee salaries.

select e1.f_name as first_name , e1.l_name as last_name, e1.salary , e2.salary  as Calvins_salary
from employee e1
join employee e2 
		on e1.salary > e2.salary 
where e2.emp_id =105;


---5. Display ID and Last Name Above Average Salary (Using Subqueries)
---Execute SQL code to display employee ID and last name of those with a salary greater than the average salary of all employees. 
---Utilize subqueries to calculate the average.

select e.emp_id, e.l_name  --,e.salary
from employee e 
where e.salary > (select avg(salary) from employee);


---6. Display ID and First Name Above MW789 (Sorted by Salary Using Set Operations)
---Execute SQL code to display employee ID and first name of those with a salary higher than the job_id - MW789,sorted by salary. 
---Utilize set operations to compare salaries with the job_id - MW789.

select emp_id , f_name , salary 
from employee
EXCEPT ---I will use "EXCEPT" set operator
select emp_id , f_name , salary 
from employee 
where salary <= (select salary from employee where job_id ='MW789')
order by emp_id ;


---7. Display Top Three Earners (Using Joins and Subqueries)
---Execute SQL code to display the top three earners' first names, employee IDs, and salaries. 
---Utilize a subquery in the FROM  clause to identify the top earners based on salary and a join to retrieve full employee details.

select e2.f_name as first_name, e1.emp_id , e1.salary 
from 
	(select emp_id , salary 
	   from employee 
	   order by salary desc
	   limit 3) e1
inner join employee e2 on e1.emp_id =e2.emp_id;









