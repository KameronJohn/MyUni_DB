-- delete duplicate enrollment record from the same student in the same course
select* from 
enrollment as R1 join enrollment as R2
on R1.std_id = R2.std_id
and R1.course_code = R2.course_code
and R1.enrollment_order < R2.enrollment_order;

select * from enrollment;

delete R1 from enrollment R1
join enrollment R2
on R1.std_id = R2.std_id
and R1.course_code = R2.course_code
and R2.enrollment_order < R1.enrollment_order; 


--the number of journals published
select *, count(author_id) from journal group by author_id order by count(author_id) desc;

--the enollment number of each course in descending order
select course_code, count(course_code)
from enrollment
group by course_code
order by count(course_code) desc;

--the students and staffs with their last name start with letter 'C'
select * from 
(select std_name as std_emp_name from student
UNION
select emp_name from employee) 
as std_emp_name
where std_emp_name like '% C%';

--the number of priorities granted based on stduents' faulties
select student.faculty_name, count(student.faculty_name) as students
from enrollment
join student
on student.std_id = enrollment.std_id
where enrollment.priority = 1
group by student.faculty_name;


-- number of Economics major student registered non major-related course
select faculty_name, count(faculty_name) as students
from enrollment
join student
on enrollment.std_id = student.std_id
where student.faculty_name = 'Economics'
and enrollment.course_code not like 'ECON%'
group by student.faculty_name;