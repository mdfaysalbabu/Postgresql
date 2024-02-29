-- Active: 1708998008327@@127.0.0.1@5432@ph
show timezone;

SELECT now();

CREATE table timeZ (ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);

insert into timez values('2024-01-12 10:45:00','2024-01-12 10:45:00');

SELECT * from timez;

SELECT current_date;

SELECT now()::date;

SELECT to_char(now(),'yyyy/mm/dd');

SELECT CURRENT_DATE - INTERVAL '1 d';

SELECT age(CURRENT_DATE,'1996-07-29');

SELECT *,age(CURRENT_DATE,dob) from students;

SELECT extract(day from'2024-01-25'::date);

SELECT 1::boolean;
