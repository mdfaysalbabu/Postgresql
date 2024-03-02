-- Active: 1708998008327@@127.0.0.1@5432@ph
SELECT * from employees;

create view dept_avg_salary
AS
SELECT department_name,avg(salary) from employees GROUP BY department_name;

SELECT * from dept_avg_salary;

create View test_view
AS
SELECT employee_name,salary,department_name
from employees
where department_name in
(SELECT department_name from employees
 where department_name like '%R%')

 SELECT * from test_view;

 -- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction