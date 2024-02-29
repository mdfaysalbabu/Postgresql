-- Active: 1708998008327@@127.0.0.1@5432@ph
SELECT * from person2;

alter table person2
   add column email VARCHAR(25) DEFAULT 'default@gmail.com' not NULL;
alter table person2
   alter column user_name type VARCHAR(50);


alter table person2
   drop column email;

 alter table person2 
   rename column age to user_age; 


INSERT into person2 values(8, 'test',35,'test@gmail.com');

 alter table person2 
   alter column user_age set not NULL ; 
 alter table person2 
   alter column user_age drop not NULL ; 
 alter table person2 
   add constraint unique_person2_user_age UNIQUE(user_age); 
 alter table person2 
   drop constraint unique_person2_user_age;

TRUNCATE table person2; 