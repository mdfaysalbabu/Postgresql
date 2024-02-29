-- Active: 1708998008327@@127.0.0.1@5432@ph
create table students(
    student_id serial PRIMARY KEY,
    first_name VARCHAR(50),
    last_name varchar(50),
    age int,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

SELECT * form students;

insert into students(first_name,last_name,age,grade,course,email,dob,blood_group,country)VALUES
('John', 'Doe', 18, '12', 'Mathematics', 'john.doe@example.com', '2006-05-10', 'A+', 'USA'),
('Jane', 'Smith', 17, '11', 'Science', 'jane.smith@example.com', '2007-08-15', 'B-', 'Canada'),
('Michael', 'Johnson', 16, '10', 'History', 'michael.johnson@example.com', '2008-03-22', 'O+', 'UK'),
('Emily', 'Williams', 18, '12', 'English', 'emily.williams@example.com', '2006-11-03', 'AB-', 'Australia'),
('Daniel', 'Brown', 17, '11', 'Physics', 'daniel.brown@example.com', '2007-02-18', 'A-', 'Germany'),
('Sarah', 'Taylor', 16, '10', 'Chemistry', 'sarah.taylor@example.com', '2008-07-09', 'B+', 'France'),
('Matthew', 'Davis', 18, '12', 'Computer Science', 'matthew.davis@example.com', '2006-09-28', 'O-', 'Japan'),
('Olivia', 'Martinez', 17, '11', 'Biology', 'olivia.martinez@example.com', '2007-04-14', 'AB+', 'Brazil');

SELECT * from students;

SELECT email as studentsEmail from students;

SELECT * from students ORDER BY age asc;

SELECT DISTINCT country from students;

SELECT * FROM students
WHERE country = 'Brazil' or country = 'Australia';

SELECT * FROM students
WHERE country <> 'Australia';

SELECT length(first_name) from students;

SELECT count(age)from students;

SELECT max(length(first_name))from students;

SELECT * from students
  WHERE NOT country = 'Brazil';

SELECT * from students
  WHERE email is null;

select COALESCE(email,'5')from students;

SELECT * from students WHERE country in('Brazil','Australia');
SELECT * from students WHERE country not in('Brazil','Australia');

SELECT * from students where age BETWEEN '16' and '18' ORDER BY age;

SELECT * from students
  where first_name like '--a%';
SELECT * from students
  where first_name ILIKE '%a';

SELECT * from students limit 5 OFFSET 5*0;
SELECT * from students limit 5 OFFSET 5*1;

DELETE from students
  WHERE grade = '10';

SELECT * from students;

UPDATE students
  set email = 'default@gmail.com',age=18
  where student_id = 5;
