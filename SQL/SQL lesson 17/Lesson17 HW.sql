---------------------------------------------------------------------------------------------------------------------------
---creating students table

create table if not exists students (
StudentID integer primary key ,
FirstName varchar(250),
LastName varchar(250),
DOB date,
Major varchar(50),
GPA real
);

-----------------------------------------------------------------------------------------------
INSERT INTO Students (StudentID, FirstName, LastName, DOB, Major, GPA) VALUES
(1,  'Alex',     'Smith',    '2000-01-01', 'Computer Science', 3.5),
(2,  'Bella',    'Johnson',  '2000-02-02', 'Business',         3.6),
(3,  'Charlie',  'Brown',    '2000-03-03', 'Physics',          3.7),
(4,  'Diana',    'Davis',    '2000-04-04', 'Mathematics',      3.8),
(5,  'Ethan',    'Miller',   '2000-05-05', 'Biology',          3.9),
(6,  'Frank',    'Taylor',   '2000-06-06', 'Engineering',      3.2),
(7,  'Grace',    'Lee',      '2000-07-07', 'Economics',        3.3),
(8,  'Hannah',   'Walker',   '2000-08-08', 'Computer Science', 3.4),
(9,  'Isaac',    'Carter',   '2000-09-09', 'Business',         3.5),
(10, 'Jack',     'Anderson', '2000-10-10', 'Physics',          3.6),
(11, 'Katie',    'Moore',    '2000-11-11', 'Mathematics',      3.7),
(12, 'Leo',      'Hall',     '2000-12-12', 'Biology',          3.8),
(13, 'Mia',      'Allen',    '2001-01-13', 'Engineering',      3.9),
(14, 'Nathan',   'Scott',    '2001-02-14', 'Economics',        3.1),
(15, 'Olivia',   'Adams',    '2001-03-15', 'Computer Science', 3.2),
(16, 'Paul',     'Baker',    '2001-04-16', 'Business',         3.3),
(17, 'Quinn',    'Martin',   '2001-05-17', 'Physics',          3.4),
(18, 'Rachel',   'White',    '2001-06-18', 'Mathematics',      3.5),
(19, 'Sam',      'Harris',   '2001-07-19', 'Biology',          3.6),
(20, 'Tina',     'King',     '2001-08-20', 'Engineering',      3.7),
(21, 'Uma',      'Sharma',   '2001-09-21', 'Economics',        3.5),
(22, 'Victor',   'Thomas',   '2001-10-22', 'Computer Science', 3.6),
(23, 'Wendy',    'Lewis',    '2001-11-23', 'Business',         3.7),
(24, 'Xavier',   'Young',    '2001-12-24', 'Physics',          3.8),
(25, 'Yara',     'Green',    '2002-01-25', 'Mathematics',      3.9),
(26, 'Zane',     'Hill',     '2002-02-26', 'Biology',          3.2),
(27, 'Aisha',    'Nelson',   '2002-03-27', 'Engineering',      3.3),
(28, 'Brian',    'Mitchell', '2002-04-01', 'Economics',        3.4),
(29, 'Chloe',    'Perez',    '2002-05-02', 'Computer Science', 3.5),
(30, 'Daniel',   'Roberts',  '2002-06-03', 'Business',         3.6),
(31, 'Emma',     'Wilson',   '2002-07-04', 'Physics',          3.7),
(32, 'Noah',     'Clark',    '2002-08-05', 'Mathematics',      3.8),
(33, 'Sophia',   'Turner',   '2002-09-06', 'Biology',          3.9),
(34, 'Liam',     'Phillips', '2002-10-07', 'Engineering',      3.1),
(35, 'Ava',      'Campbell', '2002-11-08', 'Economics',        3.2),
(36, 'Mason',    'Parker',   '2002-12-09', 'Computer Science', 3.3),
(37, 'Isabella', 'Evans',    '2003-01-10', 'Business',         3.4),
(38, 'Lucas',    'Edwards',  '2003-02-11', 'Physics',          3.5),
(39, 'Maya',     'Collins',  '2003-03-12', 'Mathematics',      3.6),
(40, 'Arjun',    'Stewart',  '2003-04-13', 'Biology',          3.7),
(41, 'Neha',     'Verma',    '2003-05-14', 'Engineering',      3.5),
(42, 'Rohan',    'Mehta',    '2003-06-15', 'Economics',        3.6),
(43, 'Isha',     'Nair',     '2003-07-16', 'Computer Science', 3.7),
(44, 'Kabir',    'Kapoor',   '2003-08-17', 'Business',         3.8),
(45, 'Ananya',   'Iyer',     '2003-09-18', 'Physics',          3.9),
(46, 'Vihaan',   'Reddy',    '2003-10-19', 'Mathematics',      3.2),
(47, 'Meera',    'Joshi',    '2003-11-20', 'Biology',          3.3),
(48, 'Aarav',    'Malhotra', '2003-12-21', 'Engineering',      3.4),
(49, 'Saanvi',   'Bose',     '2004-01-22', 'Economics',        3.5),
(50, 'Reyansh',  'Saxena',   '2004-02-23', 'Computer Science', 3.6),
(51, 'Nisha',    'Gupta',    '2004-03-24', 'Business',         3.7),
(52, 'Karan',    'Khanna',   '2004-04-25', 'Physics',          3.8),
(53, 'Pooja',    'Patel',    '2004-05-26', 'Mathematics',      3.9),
(54, 'Rahul',    'Singh',    '2004-06-27', 'Biology',          3.1),
(55, 'Sneha',    'Desai',    '2004-07-01', 'Engineering',      3.2),
(56, 'Varun',    'Menon',    '2004-08-02', 'Economics',        3.3),
(57, 'Riya',     'Rao',      '2004-09-03', 'Computer Science', 3.4),
(58, 'Aditya',   'Bhat',     '2004-10-04', 'Business',         3.5),
(59, 'Kavya',    'Chopra',   '2004-11-05', 'Physics',          3.6),
(60, 'Dev',      'Jain',     '2004-12-06', 'Mathematics',      3.7);


SELECT * FROM Students;


---------------------------------------------------------------------------------------------------------------------------
---creating Courses table

CREATE TABLE if not exists Courses (
    CourseID     INTEGER PRIMARY KEY,
    CourseName   TEXT,
    Department   TEXT,
    InstructorID INTEGER REFERENCES Instructors(InstructorID)
);

INSERT INTO Courses (CourseID, CourseName, Department, InstructorID) VALUES
(101, 'Intro to CS',             'Computer Science', 201),
(102, 'Microeconomics',          'Economics',        202),
(103, 'General Physics',         'Physics',          203),
(104, 'Calculus I',              'Mathematics',      204),
(105, 'Biology 101',             'Biology',          205),
(106, 'Software Engineering',    'Computer Science', 211),
(107, 'Macroeconomics',          'Economics',        210),
(108, 'Thermodynamics',          'Physics',          208),
(109, 'Linear Algebra',          'Mathematics',      209),
(110, 'Genetics',                'Biology',          215),
(111, 'Database Systems',        'Computer Science', 216),
(112, 'Business Analytics',      'Business',         207),
(113, 'Quantum Physics',         'Physics',          213),
(114, 'Calculus II',             'Mathematics',      214),
(115, 'Microbiology',            'Biology',          220),
(116, 'Data Structures',         'Computer Science', 221),
(117, 'International Economics', 'Economics',        217),
(118, 'Electromagnetism',        'Physics',          218),
(119, 'Discrete Mathematics',    'Mathematics',      219),
(120, 'Ecology',                 'Biology',          225),
(121, 'Machine Learning',        'Computer Science', 226),
(122, 'Financial Management',    'Business',         212),
(123, 'Classical Mechanics',     'Physics',          223),
(124, 'Statistics I',            'Mathematics',      224),
(125, 'Molecular Biology',       'Biology',          230),
(126, 'Computer Networks',       'Computer Science', 201),
(127, 'Econometrics',            'Economics',        227),
(128, 'Optics',                  'Physics',          228),
(129, 'Probability Theory',      'Mathematics',      229),
(130, 'Biochemistry',            'Biology',          205);

SELECT * FROM Courses;

------------------------------------------------------------------------------------------------------------------------------
---creating Instructors table

CREATE TABLE Instructors (
    InstructorID   INTEGER PRIMARY KEY,
    InstructorName varchar(250),
    Department     varchar(250)
);

INSERT INTO Instructors (InstructorID, InstructorName, Department) VALUES
(201, 'Dr. Adams',   'Computer Science'),
(202, 'Dr. Baker',   'Economics'),
(203, 'Dr. Clark',   'Physics'),
(204, 'Dr. Davis',   'Mathematics'),
(205, 'Dr. Evans',   'Biology'),
(206, 'Dr. Foster',  'Engineering'),
(207, 'Dr. Grant',   'Business'),
(208, 'Dr. Hayes',   'Physics'),
(209, 'Dr. Irving',  'Mathematics'),
(210, 'Dr. Jenkins', 'Economics'),
(211, 'Dr. Kumar',   'Computer Science'),
(212, 'Dr. Lopez',   'Business'),
(213, 'Dr. Morgan',  'Physics'),
(214, 'Dr. Nelson',  'Mathematics'),
(215, 'Dr. Owens',   'Biology'),
(216, 'Dr. Patel',   'Computer Science'),
(217, 'Dr. Quinn',   'Economics'),
(218, 'Dr. Reed',    'Physics'),
(219, 'Dr. Shah',    'Mathematics'),
(220, 'Dr. Turner',  'Biology'),
(221, 'Dr. Verma',   'Computer Science'),
(222, 'Dr. Wilson',  'Business'),
(223, 'Dr. Xu',      'Physics'),
(224, 'Dr. Young',   'Mathematics'),
(225, 'Dr. Zhang',   'Biology'),
(226, 'Dr. Rao',     'Computer Science'),
(227, 'Dr. Sen',     'Economics'),
(228, 'Dr. Iyer',    'Physics'),
(229, 'Dr. Bose',    'Mathematics'),
(230, 'Dr. Nair',    'Biology');


SELECT * FROM Instructors;

-------------------------------------------------------------------------------
---creating enrollments table

CREATE TABLE Enrollments (
    EnrollmentID INTEGER PRIMARY KEY,
    StudentID    INTEGER REFERENCES Students(StudentID),
    CourseID     INTEGER REFERENCES Courses(CourseID),
    Semester     VARCHAR(250),
    Grade        VARCHAR(5)
);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) VALUES
(301, 1,  101, 'Fall 2023',   'A'),
(302, 8,  101, 'Spring 2024', 'B'),
(303, 15, 101, 'Fall 2023',   'C'),
(304, 22, 101, 'Spring 2024', 'D'),
(305, 29, 101, 'Fall 2023',   'A'),
(306, 10, 102, 'Fall 2023',   'B'),
(307, 17, 102, 'Spring 2024', 'C'),
(308, 24, 102, 'Fall 2023',   'D'),
(309, 17, 103, 'Fall 2023',   'C'),
(310, 24, 103, 'Spring 2024', 'D'),
(311, 31, 103, 'Fall 2023',   'A'),
(312, 38, 103, 'Spring 2024', 'B'),
(313, 25, 104, 'Fall 2023',   'D'),
(314, 32, 104, 'Fall 2023',   'A'),
(315, 31, 105, 'Fall 2023',   'A'),
(316, 38, 105, 'Spring 2024', 'B'),
(317, 45, 105, 'Fall 2023',   'A'),
(318, 52, 105, 'Spring 2024', 'C'),
(319, 59, 105, 'Fall 2023',   'B'),
(320, 40, 106, 'Fall 2023',   'B'),
(321, 47, 106, 'Spring 2024', 'A'),
(322, 54, 106, 'Fall 2023',   'C'),
(323, 47, 107, 'Spring 2024', 'A'),
(324, 54, 107, 'Spring 2024', 'C'),
(325, 53, 108, 'Fall 2023',   'C'),
(326, 60, 108, 'Spring 2024', 'B'),
(327, 7,  108, 'Fall 2023',   'A'),
(328, 14, 108, 'Spring 2024', 'A'),
(329, 1,  109, 'Fall 2023',   'B'),
(330, 8,  109, 'Spring 2024', 'A'),
(331, 15, 109, 'Fall 2023',   'A'),
(332, 8,  110, 'Fall 2023',   'A'),
(333, 15, 110, 'Spring 2024', 'A'),
(334, 22, 110, 'Fall 2023',   'B'),
(335, 29, 110, 'Spring 2024', 'C'),
(336, 36, 110, 'Fall 2023',   'D'),
(337, 17, 111, 'Fall 2023',   'A'),
(338, 24, 111, 'Spring 2024', 'B'),
(339, 31, 111, 'Fall 2023',   'C'),
(340, 38, 111, 'Spring 2024', 'D'),
(341, 45, 111, 'Fall 2023',   'A'),
(342, 26, 112, 'Fall 2023',   'B'),
(343, 33, 112, 'Spring 2024', 'C'),
(344, 40, 112, 'Fall 2023',   'D'),
(345, 33, 113, 'Fall 2023',   'C'),
(346, 40, 113, 'Spring 2024', 'D'),
(347, 47, 113, 'Fall 2023',   'A'),
(348, 54, 113, 'Spring 2024', 'B'),
(349, 41, 114, 'Fall 2023',   'D'),
(350, 48, 114, 'Fall 2023',   'A'),
(351, 47, 115, 'Fall 2023',   'A'),
(352, 54, 115, 'Spring 2024', 'B'),
(353, 1,  115, 'Fall 2023',   'A'),
(354, 8,  115, 'Spring 2024', 'C'),
(355, 15, 115, 'Fall 2023',   'B'),
(356, 56, 116, 'Fall 2023',   'B'),
(357, 3,  116, 'Spring 2024', 'A'),
(358, 10, 116, 'Fall 2023',   'C'),
(359, 3,  117, 'Spring 2024', 'A'),
(360, 10, 117, 'Spring 2024', 'C'),
(361, 9,  118, 'Fall 2023',   'C'),
(362, 16, 118, 'Spring 2024', 'B'),
(363, 23, 118, 'Fall 2023',   'A'),
(364, 30, 118, 'Spring 2024', 'A'),
(365, 17, 119, 'Fall 2023',   'B'),
(366, 24, 119, 'Spring 2024', 'A'),
(367, 31, 119, 'Fall 2023',   'A'),
(368, 24, 120, 'Fall 2023',   'A'),
(369, 31, 120, 'Spring 2024', 'A'),
(370, 38, 120, 'Fall 2023',   'B'),
(371, 45, 120, 'Spring 2024', 'C'),
(372, 52, 120, 'Fall 2023',   'D'),
(373, 33, 121, 'Fall 2023',   'A'),
(374, 40, 121, 'Spring 2024', 'B'),
(375, 47, 121, 'Fall 2023',   'C'),
(376, 54, 121, 'Spring 2024', 'D'),
(377, 1,  121, 'Fall 2023',   'A'),
(378, 42, 122, 'Fall 2023',   'B'),
(379, 49, 122, 'Spring 2024', 'C'),
(380, 56, 122, 'Fall 2023',   'D'),
(381, 49, 123, 'Fall 2023',   'C'),
(382, 56, 123, 'Spring 2024', 'D'),
(383, 3,  123, 'Fall 2023',   'A'),
(384, 10, 123, 'Spring 2024', 'B'),
(385, 57, 124, 'Fall 2023',   'D'),
(386, 4,  124, 'Fall 2023',   'A'),
(387, 3,  125, 'Fall 2023',   'A'),
(388, 10, 125, 'Spring 2024', 'B'),
(389, 17, 125, 'Fall 2023',   'A'),
(390, 24, 125, 'Spring 2024', 'C'),
(391, 31, 125, 'Fall 2023',   'B'),
(392, 12, 126, 'Fall 2023',   'B'),
(393, 19, 126, 'Spring 2024', 'A'),
(394, 26, 126, 'Fall 2023',   'C'),
(395, 19, 127, 'Spring 2024', 'A'),
(396, 26, 127, 'Spring 2024', 'C'),
(397, 25, 128, 'Fall 2023',   'C'),
(398, 32, 128, 'Spring 2024', 'B'),
(399, 39, 128, 'Fall 2023',   'A'),
(400, 46, 128, 'Spring 2024', 'A'),
(401, 33, 129, 'Fall 2023',   'B'),
(402, 40, 129, 'Spring 2024', 'A'),
(403, 47, 129, 'Fall 2023',   'A'),
(404, 40, 130, 'Fall 2023',   'A'),
(405, 47, 130, 'Spring 2024', 'A'),
(406, 54, 130, 'Fall 2023',   'B'),
(407, 1,  130, 'Spring 2024', 'C'),
(408, 8,  130, 'Fall 2023',   'D');


SELECT *FROM Enrollments;


----------------------------------------------------------------------------
-------Create a view named CourseSummary that shows the total number of students enrolled in each course
create view CourseSummary as
	SELECT c.CourseID ,c.CourseName , count(distinct  e.StudentID ) as Total_Students
	from Courses c 
	left JOIN Enrollments e on c.CourseID =e.CourseID 
	group by c.CourseID ,c.CourseName
	order by Total_Students ;


select * from  CourseSummary;

--------------------------------------------------------------------------------------------------------
---2. Create a view InstructorSchedule
---Create a view InstructorSchedule that lists each instructor's courses and department

CREATE VIEW InstructorSchedule AS
SELECT i.InstructorID, i.InstructorName, 
       c.CourseID,  c.CourseName,
       i.Department
FROM Instructors i
left JOIN Courses c ON i.InstructorID =c.InstructorID 
order by i.Department;


select * from InstructorSchedule;

------------------------------------------------------------------------------------------------------------

---3. Modify CourseSummary
---Modify the CourseSummary view to list the distinct semesters each course was offered, along with the total student enrolment

 drop view if exists CourseSummary; ---firstly we have to drop old view and then ctreate new one
 
 create view CourseSummary as
 	select  distinct   c.CourseID, c.CourseName,  e.Semester , 
 	       count(e.EnrollmentID ) as total_enrollments
 	from Courses c  
 	left join  enrollments e on  c.CourseID =e.CourseID 
 	group by c.CourseName,  e.Semester ;
 
 select * from CourseSummary;
 
---------------------------------------------------------------------------------------
---4. Update InstructorSchedule
---Update InstructorSchedule to show only courses for the current semester

 drop view InstructorSchedule;
 
CREATE VIEW InstructorSchedule AS
	SELECT distinct i.InstructorID, i.InstructorName, 
           c.CourseID,  c.CourseName,
           i.Department,
           e.Semester 
	FROM Instructors i
	left JOIN Courses c ON i.InstructorID =c.InstructorID 
	left join Enrollments e on e.CourseID =c.CourseID 
	where e.Semester = 'Spring 2024'
	order by i.Department;

select * from InstructorSchedule;
 
 
---5. Create a view EligibleGraduates
---Create a view EligibleGraduates that lists students eligible for graduation whose GPA is greater than or equal to 3.7

 create view if not exists EligibleGraduates as 
  	select studentId, FirstName, Lastname
  	from students 
  	where GPA >=3.7;
 
 select * from EligibleGraduates;
  	
--------------------------------------------------------------------------------------------
---6. Alter EligibleGraduates
---Alter EligibleGraduates to include students' GPAs

 drop view EligibleGraduates ; --we can not use ALTER in SQLite so firstly drop old view
 
 create view  EligibleGraduates as  -- then recreate view with GPA column
  	select studentId, FirstName, Lastname, GPA
  	from students 
  	where GPA >=3.7
    order by GPA ;
 
  select * from EligibleGraduates;
  
---7. Rename CourseSummary
---Rename CourseSummary to CourseEnrolmentSummary
 
  ---we can not use ALTEr RENAME for views in SQLite so create view with same query but new name
  
 create view CourseEnrolmentSummary as  
 	select  distinct   c.CourseID, c.CourseName,  e.Semester , 
 	       count(e.EnrollmentID ) as total_enrollments
 	from Courses c  
 	left join  enrollments e on  c.CourseID =e.CourseID 
 	group by c.CourseName,  e.Semester ;
  
 drop view if exists CourseSummary; ---then  drop old view 
  
 select* from CourseEnrolmentSummary;
 
 ----------------------------------------------------------------------------------
---8. Drop EligibleGraduates
---Drop View EligibleGraduates

 drop view if exists EligibleGraduates ;
 
 
 
---9. Create a CTE
---Create a CTE named SemesterCourses to list all courses offered in the current semester

with SemesterCourses as( 
	select distinct c.CourseID , c.CourseName , e.Semester as current_semester
	from Enrollments e 
	join Courses c on e.CourseID =c.CourseID 
	where e.Semester = 'Spring 2024'
	)
select * from SemesterCourses ;



