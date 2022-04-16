create table employee(
    emp_id int(7) primary key,
    emp_name varchar(40),
    title varchar(40)
);
 
create table faculty(
    faculty_name varchar(40) primary key,
    dean_id int(7),
    office_location varchar(40),
    foreign key(dean_id) references employee(emp_id) on delete set null
);
 
create table student(
    std_id int primary key,
    std_name varchar(40),
    faculty_name varchar(40),
    date_of_birth date
);
 
create table enrollment(
    enrollment_order int auto_increment primary key,
    course_code varchar(8),
    std_id int,
    priority int(1),
    foreign key(std_id) references student(std_id) on delete set null
);

create table society(
    society_name varchar(20) primary key,
    president_id int(7),
    vice_president_id int(7),
    member_size int,
    foreign key(president_id) references student(std_id) on delete set null,
    foreign key(vice_president_id) references student(std_id) on delete set null
);

create table course(
    course_code varchar(8) primary key,
    lecturer_id int(7),
    assistant int(7),
    faculty_name varchar(40),
    foreign key(lecturer_id) references employee(emp_id) on delete set null,
    foreign key(assistant) references employee(emp_id) on delete set null,
    foreign key(faculty_name) references faculty(faculty_name) on delete set null
);
alter table course rename column assistant to assistant_id;

create table journal(
    journal_title varchar(40),
    publication_date date,
    author_id int(7),
    assistant_id int(7),
    award bool,
    foreign key(author_id) references employee(emp_id) on delete set null,
    foreign key(assistant_id) references student(std_id) on delete set null
);

alter table enrollment
add foreign key(course_code)
references course(course_code)
on delete set null;

insert into employee values (3567384, 'Andrew Barragan', 'President');
insert into employee values (9305873, 'Rama Apollonia', 'Dean');
insert into employee values (4583256, 'Courtney Bergliot', 'Lecturer');
insert into employee values (7938452, 'Leocadio Zawar', 'teaching assistant');
insert into faculty values ('Engineering', 9305873, 'KKL103');
insert into course values ('COMP2937', 4583256, 7938452, 'Engineering');
insert into student values (2025672356, 'Kaori Wapasha', 'Engineering', '2004-08-31');
insert into student values (2028904578, 'Saburou Narendra', 'Arts', '2003-02-04');
insert into enrollment values (enrollment_order, 'COMP2937', 2025672356, 0);
insert into society values ('music_society', 2025672356, 2028904578, 52);
insert into journal values ('Sparse Black-Box Video Attack with Reinf', '2022-02-04', 4583256, 2025672356, 1);



insert into employee values (8265642, 'Julian Collins', 'Dean');
insert into employee values (8088569, 'Jarrett Vega', 'Dean');
insert into employee values (1607826, 'Amaya Bell', 'Dean');
insert into employee values (3315324, 'Yurem Love', 'Lecturer');
insert into employee values (8443414, 'Samara Gibson', 'Lecturer');
insert into employee values (3341056, 'Quinn James', 'Lecturer');
insert into employee values (6041167, 'Uriah Williamson', 'Lecturer');
insert into employee values (5819575, 'Jayvon Merritt', 'teaching assistant');
insert into employee values (3247013, 'Brock Quinn', 'teaching assistant');
insert into employee values (2528748, 'Patrick Vaughan', 'teaching assistant');
insert into employee values (3270344, 'Darian Tapia', 'teaching assistant');
insert into employee values (2997563, 'Eliana Soto', 'administrator');
insert into employee values (2909755, 'Anabel West', 'administrator');
insert into employee values (6728614, 'Brooklyn Morton', 'administrator');

insert into faculty values ('Arts', 1607826, 'CCPD029');
insert into faculty values ('Economics', 8088569, 'LG23');
insert into faculty values ('Education', 8265642, 'MH324');




insert into course values ('COMP1898', 8265642, 2528748, 'Engineering');
insert into course values ('COMP4754', 8088569, 5819575, 'Engineering');
insert into course values ('COMP4096', 1607826, 7938452, 'Engineering');

insert into course values ('ECON4985', 3315324, 5819575, 'Economics');
insert into course values ('ECON3657', 8443414, 7938452, 'Economics');

insert into course values ('EDUC3857', 3341056, 3270344, 'Education');

insert into course values ('ARTS1715', 6041167, 5819575, 'Arts');


insert into student values (2022743984, 'Sienna Howell', 'Economics', '2003-10-21');
insert into student values (2024059315, 'Lara Waller', 'Education', '2004-08-21');
insert into student values (2025609585, 'Amari Le', 'Economics', '2004-07-16');
insert into student values (2024076474, 'Darien Webb', 'Engineering', '2005-07-09');
insert into student values (2024901474, 'Amirah Pearson', 'Arts', '2003-07-17');
insert into student values (2028145729, 'Steven Coleman', 'Engineering', '2003-10-03');
insert into student values (2025141227, 'Margaret Chavez', 'Engineering', '2005-08-17');
insert into student values (2026726479, 'Van Ayers', 'Education', '2002-11-05');
insert into student values (2023026863, 'Hailie Huerta', 'Education', '2003-06-25');
insert into student values (2022497262, 'Reina Dyer', 'Engineering', '2001-05-22');
insert into student values (2023929166, 'Ricky Blair', 'Education', '2001-08-01');
insert into student values (2023430300, 'Cristian Hoover', 'Education', '2001-03-23');
insert into student values (2027759810, 'Angel Clark', 'Engineering', '2001-08-01');
insert into student values (2028161587, 'Donovan Morris', 'Engineering', '2003-03-11');
insert into student values (2028498249, 'Destiney Weber', 'Economics', '2003-02-13');
insert into student values (2023521844, 'Dalia Combs', 'Arts', '2003-09-15');
insert into student values (2027494588, 'Lena Elliott', 'Education', '2005-06-04');
insert into student values (2028132093, 'Isaiah Pope', 'Education', '2003-05-02');
insert into student values (2027227214, 'Damarion Norris', 'Engineering', '2000-04-24');
insert into student values (2023716315, 'Haylee Hester', 'Education', '2001-10-01');
insert into student values (2024343197, 'Jayvon Giles', 'Education', '2005-09-29');
insert into student values (2026139706, 'Kamari Carter', 'Engineering', '2000-04-03');
insert into student values (2023200912, 'Prince Villa', 'Education', '2005-01-30');
insert into student values (2027256373, 'Mollie Stanley', 'Engineering', '2004-08-13');
insert into student values (2027204288, 'Adrienne Rivas', 'Education', '2003-10-24');
insert into student values (2023317870, 'Rocco Graham', 'Education', '2005-09-21');
insert into student values (2025983350, 'Isai Norton', 'Arts', '2000-06-23');
insert into student values (2023810326, 'Kristin Mcclure', 'Arts', '2003-07-01');
insert into student values (2027713431, 'Gael Huynh', 'Engineering', '2003-02-15');
insert into student values (2026067608, 'Cruz Pitts', 'Arts', '2005-10-24');
insert into student values (2028582518, 'Ryan Velez', 'Education', '2003-01-25');
insert into student values (2028366655, 'Alyssa Anderson', 'Arts', '2002-11-05');
insert into student values (2028493974, 'Jaslyn Morrow', 'Economics', '2001-09-05');
insert into student values (2023692914, 'Marilyn Cantrell', 'Education', '2002-12-25');
insert into student values (2025964995, 'Corinne Stuart', 'Education', '2004-08-01');
insert into student values (2026555499, 'Arjun Randolph', 'Engineering', '2003-04-24');




-- each student enroll two random courses
insert into enrollment values (enrollment_order, 'COMP4096', '2022497262', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2022743984', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2023026863', 0);
insert into enrollment values (enrollment_order, 'COMP4096', '2023200912', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2023317870', 1);
insert into enrollment values (enrollment_order, 'COMP2937', '2023430300', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2023521844', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2023692914', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2023716315', 1);
insert into enrollment values (enrollment_order, 'ECON4985', '2023810326', 0);
insert into enrollment values (enrollment_order, 'COMP4754', '2023929166', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2024059315', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2024076474', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2024343197', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2024901474', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2025141227', 0);
insert into enrollment values (enrollment_order, 'COMP4096', '2025609585', 1);
insert into enrollment values (enrollment_order, 'ECON4985', '2025672356', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2025964995', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2025983350', 1);
insert into enrollment values (enrollment_order, 'COMP1898', '2026067608', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2026139706', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2026555499', 1);
insert into enrollment values (enrollment_order, 'ECON4985', '2026726479', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2027204288', 1);
insert into enrollment values (enrollment_order, 'ECON3657', '2027227214', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2027256373', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2027494588', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2027713431', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2027759810', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2028132093', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2028145729', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2028161587', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2028366655', 1);
insert into enrollment values (enrollment_order, 'ECON3657', '2028493974', 0);
insert into enrollment values (enrollment_order, 'COMP4096', '2028498249', 1);

insert into enrollment values (enrollment_order, 'COMP4096', '2022497262', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2022743984', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2023026863', 0);
insert into enrollment values (enrollment_order, 'COMP4754', '2023200912', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2023317870', 1);
insert into enrollment values (enrollment_order, 'COMP4754', '2023430300', 0);
insert into enrollment values (enrollment_order, 'COMP4096', '2023521844', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2023692914', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2023716315', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2023810326', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2023929166', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2024059315', 0);
insert into enrollment values (enrollment_order, 'COMP2937', '2024076474', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2024343197', 1);
insert into enrollment values (enrollment_order, 'COMP4754', '2024901474', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2025141227', 0);
insert into enrollment values (enrollment_order, 'COMP4754', '2025609585', 1);
insert into enrollment values (enrollment_order, 'COMP4096', '2025672356', 0);
insert into enrollment values (enrollment_order, 'COMP4754', '2025964995', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2025983350', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2026067608', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2026139706', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2026555499', 0);
insert into enrollment values (enrollment_order, 'EDUC3857', '2026726479', 1);
insert into enrollment values (enrollment_order, 'ECON3657', '2027204288', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2027227214', 0);
insert into enrollment values (enrollment_order, 'ECON4985', '2027256373', 0);
insert into enrollment values (enrollment_order, 'COMP4096', '2027494588', 0);
insert into enrollment values (enrollment_order, 'ARTS1715', '2027713431', 0);
insert into enrollment values (enrollment_order, 'COMP4096', '2027759810', 0);
insert into enrollment values (enrollment_order, 'COMP4754', '2028132093', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2028145729', 1);
insert into enrollment values (enrollment_order, 'COMP2937', '2028161587', 0);
insert into enrollment values (enrollment_order, 'COMP1898', '2028366655', 0);
insert into enrollment values (enrollment_order, 'ECON3657', '2028493974', 1);
insert into enrollment values (enrollment_order, 'COMP4096', '2028498249', 0);

insert into society values ('camping', 2026139706, 2028498249, 221);
insert into society values ('football', 2023716315, 2028366655, 178);
insert into society values ('badminton', 2023430300, 2025609585, 127);
insert into society values ('music', 2026555499, 2023317870, 92);
insert into society values ('hiking', 2026726479, 2026067608, 51);

insert into journal values ('An Application of Multi-label Linear Dis', '2014-09-03', 1607826, 2028145729, 0);
insert into journal values ('Deep Convolution Neural Network with Dro', '2012-07-12', 1607826, 2027227214, 0);
insert into journal values ('Modeling the Impact of Climate Factors o', '2002-01-29', 4583256, 2023929166, 0);
insert into journal values ('Analysis of Overdispersed Insect Count D', '2018-12-30', 1607826, 2026139706, 0);
insert into journal values ('Creation of a Unified Cloud Readiness As', '2010-02-10', 1607826, 2023692914, 0);
insert into journal values ('Trends of Armed Conflict in Kenya from 1', '2007-08-23', 8088569, 2026726479, 0);
insert into journal values ('A Machine Learning Approach for the Shor', '2016-07-04', 4583256, 2025609585, 0);
insert into journal values ('Competition in online markets with aucti', '2016-11-02', 8443414, 2024343197, 0);
insert into journal values ('Optimal Regional Insurance Provision: Do', '2014-05-19', 3315324, 2024901474, 0);
insert into journal values ('Welfare reducing vertical licensing in t', '2003-07-06', 8443414, 2028366655, 0);
insert into journal values ('Sugata Marjit, Biswajit Mandal, and Nori', '2022-11-05', 8443414, 2026726479, 1);
insert into journal values ('Kam Yu, Mathematical economics: prelude ', '2013-05-12', 8443414, 2028582518, 0);
insert into journal values ('The contested nature of teachers knowle', '2000-01-08', 3341056, 2025609585, 1);
insert into journal values ('Developing a framework for initial teach', '2018-08-10', 3341056, 2028498249, 0);
insert into journal values ('Pre-service teachers future professiona', '2004-07-14', 3341056, 2027227214, 0);
insert into journal values ('Effectiveness of online and blended deli', '2010-09-27', 3341056, 2026555499, 0);
insert into journal values ('Action research in a teacher education p', '2005-05-15', 3341056, 2024076474, 0);
insert into journal values ('Lesson-study on health education with pr', '2009-02-04', 3341056, 2026555499, 0);
insert into journal values ('Teachers, parents, and family-school par', '2003-09-06', 3341056, 2028161587, 0);
insert into journal values ('From Trauma to Recovery: An Interpretati', '2003-01-25', 6041167, 2028904578, 0);