show databases;
create database BooksDB;
use BooksDB;
drop database BooksDB;
create table books(
	s_no int primary key,
	book_title text,
	author_name text,
	genre text,
	publication year,
	price int );
drop table books;
INSERT INTO Books VALUES(1,"Cindrella","Walter Elias Disney","Cartoon",1997,5000);
INSERT INTO Books VALUES(2,"Zombie","Hitler","Horror",1987,500);
INSERT INTO Books VALUES(3,"Life of Pie","Mary Comb","Life lesson",2007,2000);
INSERT INTO Books VALUES(4,"Life of Lord","Prince Jack","Fiction",1907,4000);
INSERT INTO Books VALUES(5,"World tour","William","action",2002,5500);
INSERT INTO Books VALUES(6,"Poppins","Wright Brothers","Cartoon",2010,3000);

create table authors(
	se_no int primary key,
	author_age int,
	author_native varchar(50),
	author_name varchar(60),
	s_no int,
	constraint fk_s_no foreign key(s_no) references Books(s_no));

INSERT INTO authors VALUES(1,20,"Dubai","William",5);
INSERT INTO authors VALUES(2,25,"Bombay","Zombie",2);
INSERT INTO authors VALUES(3,30,"Sidney","Walter Elias Disney",1);
INSERT INTO authors VALUES(4,40,"Darjiling","Wright Brothers",6);
drop table authors;

select * from Books;

select * from Books
where book_title='Poppins';

update Books
set price=2000
where s_no=2;

delete from Books
where book_title="life of pie";

select avg(price) from Books;

SELECT * FROM authors
INNER JOIN Books
ON Books.s_no=Authors.s_no;
