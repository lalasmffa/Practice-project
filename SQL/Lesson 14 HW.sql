/*Create a patients table with fields like date, patient ID, name, age, weight, gender, location, phone number, disease, 
doctor's name, and doctor ID. Write a query to create a patients table with the date, patient ID, patient name, age, weight, 
gender, location, phone number, disease, doctor name, and doctor ID fields */
------------------------------------------------------------------------------------------------------------------------------
CREATE table if not exists patients (
date DATE,
pid	VARCHAR(100) primary key,
p_name VARCHAR(100),
age	integer,
weight integer,
gender	VARCHAR(10),
location VARCHAR(100),
phone_no VARCHAR(100),
disease	VARCHAR(100),
doctor_name	VARCHAR(100),
doctor_id integer
);

select * from patients;


--Insert values into the patients table. 
--Write a query to insert values into the patients table  
------------------------------------------------------------------------------------------------------
INSERT INTO patients
(date, pid, p_name, age, weight, gender, location, phone_no, disease, doctor_name, doctor_id)
VALUES
('2019-06-15', 'AP2021', 'Sarath',  67, 76, 'Male',   'chennai',  '5462829', 'Cardiac', 'Mohan',   21),
('2019-02-13', 'AP2022', 'John',    62, 80, 'Male',   'banglore', '1234731', 'Cancer',  'Suraj',   22),
('2018-01-08', 'AP2023', 'Henry',   43, 65, 'Male',   'Kerala',   '9028320', 'Liver',   'Mehta',   23),
('2020-02-04', 'AP2024', 'Carl',    56, 72, 'Female', 'Mumbai',   '9293829', 'Asthma',  'Karthik', 24),
('2017-09-15', 'AP2025', 'Shikar',  55, 71, 'Male',   'Delhi',    '7821281', 'Cardiac', 'Mohan',   21),
('2018-07-22', 'AP2026', 'Piysuh',  47, 59, 'Male',   'Haryana',  '8912819', 'Cancer',  'Suraj',   22),
('2017-03-25', 'AP2027', 'Stephen', 69, 55, 'Male',   'Gujarat',  '8888211', 'Liver',   'Mehta',   23),
('2019-04-22', 'AP2028', 'Aaron',   75, 53, 'Male',   'Banglore', '9012192', 'Asthma',  'Karthik', 24);

--Display the total number of patients in the table. 
--Write a query to display the total number of patients in the table 
select Count(pid) as total_number_of_patients
from patients;

--Write a query to display the patient id and patient name with the current date
select pid, 
       p_name, 
       date('now') as current_date 
from patients;

--Write a query to display the old patient name and the new patient name in uppercase
select p_name as old_patient_name, 
       UPPER(p_name) as new_patient_name 
from patients;

--Write a query to display the patients' names along with the total number of characters in their name
select p_name,
       LENGTH(p_name) as length_of_name
from patients;

--Write a query to combine the patient's name and the doctor's name in a new column
select p_name as patient,  doctor_name,
       concat(p_name,' ,', doctor_name) as Patient_and_doctor
from patients;

--Write a query to extract the year for a given date and place it in a separate column
select date, 
	   strftime('%Y',date) as year
from patients;


--Write a query to display duplicate entries in the doctor name column
select doctor_name, count(*) as count
from patients
group by doctor_name
having count >1;
















