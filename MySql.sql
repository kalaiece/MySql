show databases;
create database University;
use University;
drop database University;
show tables;
create table Students(
	student_id int primary key,
	student_name varchar(50),
	student_age int,
	student_major varchar(50));
INSERT INTO Students VALUES (1,"Kalai",20,"ECE");
INSERT INTO Students VALUES (2,"Kavi",21,"ECE");
INSERT INTO Students VALUES (3,"Sujee",22,"ECE");
INSERT INTO Students VALUES (4,"Abi",21,"Computer Science");
INSERT INTO Students VALUES (5,"Vicky",21,"Computer Science");
 
select * from Students;
drop table Students;

select student_name from Students
where student_major='Computer Science';

select max(student_age) from Students;

update Students set student_major='IT'
where student_id=2;

delete from Students
where student_id=4;
















