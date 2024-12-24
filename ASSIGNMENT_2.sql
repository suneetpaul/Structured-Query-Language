		/*----- SUNEET PAUL SINGH -----*/
/*1.	Create a database named library  */
create database library;

use library ;

/*1.Ques	Create a table named book */
create table book(
id int primary key  auto_increment ,
title varchar(255),
author varchar(100),
years  year,  
genre varchar(100)
);

/*2.Ques	Insert the following book records into the books table:*/

insert into book(title,author , years, genre) values 
("The Great Gatsby", "F. Scott Fitzgerald", 1925 , "Fiction");

insert into book(title, author , years , genre) values 
("Pride and Prejudice", "Jane Austen", 1913, "Romance");

insert into book(title,author , years, genre) values 
("To Kill a Mockingbird", "Harper Lee", 1960, "Fiction");

insert into book(title,author , years, genre) values 
("1984", "George Orwell", 1949 , "Dystopian");

insert into book(title,author , years, genre) values 
("Moby Dick", "Herman Melville", 1903, "Adventure");

select * from book ;			

/*3.Ques	Write a query to select all books where the title starts with the letter 'T' using the LIKE operator*/
select * from book where title like "T%" ;

/*4.Ques	Write a query to find all books where the author's last name ends with 'son' using the LIKE operator.*/
select * from book where author like "%son" ;

/*5.Ques	Write a query to find all books where the title contains the word 'and' using the LIKE operator*/
select * from book where title like "%and%" ;

/*6.Ques	Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.*/
select * from book where title like "%bird";

/*7.Ques	Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.*/
select *from book where title regexp"^[A-Za-z0-9]{3}";

/*8.Ques	Write a query to select all books where the title contains a number using the REGEXP operator.*/
select *from book where title regexp"[0-9]";

/*9.Ques	Write a query to retrieve all books where the author's name starts with any letter 
between 'A' and 'J' using the REGEXP operator.*/
select *from book where author regexp"^[A-J]";

/*10.Ques 	Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.*/
select*from book where genre regexp"Fiction|Adventure";

/*11.Ques	Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.*/
select *from book where title regexp"[A-Z]";

/*12.Ques	Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.*/
select *from book where years like"18%"  or years like "19%" and years<1951 ;

/*13.Ques	Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.*/
select *from book where author regexp "[A-Z]e | [A-Z]e";

/*14.Ques	Write a query to find all books where the title starts with the letter 'P' and contains exactly
 two words using the REGEXP operator.*/
 
select*from book where title regexp "^P" and title regexp "[A-Z]e | [A-Z]e";

/*15.Ques	Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) 
using the REGEXP operator.*/
select*from book where title regexp"[!@#$%^&*]";  










