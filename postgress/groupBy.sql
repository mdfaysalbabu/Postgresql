-- Active: 1708998008327@@127.0.0.1@5432@ph
SELECT * from students;
SELECT country,avg(round(age)) from students
  GROUP BY country;
SELECT country,avg(round(age)) from students
  GROUP BY country
  having avg(age)>17
  ;

select extract(year from dob) as birth_year ,count(*)
 from students
 GROUP BY birth_year;


