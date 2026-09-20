/*Write a query to create a students table with the student ID, first name, last name, class, and age fields. 
Ensure that the last name, first name, and student ID fields have the NOT NULL constraint, 
and that the student ID field is a primary key */


CREATE TABLE IF NOT EXISTS students (
s_id integer PRIMARY KEY NOT NULL ,
s_fname	varchar(100) NOT NULL ,
s_lname	varchar(100) NOT NULL ,
student_class integer ,
age integer 
);
-----------------------
select * from students;

------------------------------------------------------------------------------------------------------------------
--Write a query to create a marksheet table with score, year, ranking, class, and student ID fields 

CREATE TABLE IF NOT EXISTS marksheet(
score	integer ,
year	integer ,
class	integer,
ranking	integer,
s_id integer PRIMARY KEY references students(s_id)
);
------------------------
select* from marksheet;



-------------------------------------------------------------------------------------------------------------------
--Write a query to insert values into the students and marksheet tables (refer to the csv files for data) 
--DONE----steps: Refresh tables, select table and right click, import data from csv
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
--Write a query to display the student ID and first name of every student in the students table whose age is greater than 
--or equal to 16 and whose last name is Kumar 

select s_id , s_fname, s_lname , age 
from students 
where age >=16 AND  s_lname ='kumar';


-------------------------------------------------------------------------------------------------------------------
--Write a query to display the details of every student from the marksheet table whose score is between 800 and 1000 

select * 
from marksheet m 
inner join students s on s.s_id =m.s_id 
where m.score between 800 and 1000;



------------------------------------------------------------------------------------------------------------------
--Write a query to increase the score in the marksheet table by five and create a new score column to display this new score 

select score, 
(score+5) as new_score, 	
year, class, ranking, s_id
from marksheet 
order by ranking ;



------------------------------------------------------------------------------------------------------------------
--Write a query to display the marksheet table in descending order of the score 

select * from marksheet 
order by score desc;


----------------------------------------------------------------------------------------------------------------
--Write a query to display the details of every student whose first name starts with an ‘a’ 

select * 
from students 
where s_fname like 'a%' ;

