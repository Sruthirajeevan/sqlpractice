create database onlinebookstore;
create table books(book_id int primary key,title varchar(20),author_id int,price decimal(10,2),publication_year int);
create table authors(author_id int primary key,author_name varchar(20),country varchar(20));
create table orders(order_id int primary key,book_id int,customer_name varchar(20),order_date date);
insert into books values(101,'harrypotter',1,1000.00,2000);
insert into books values(102,'two states',2,2000.00,2001);
select * from books;
insert into authors values(1,'k k rowling','uk');
insert into authors values(2,'chethan bhaghat','india');
select * from authors;
insert into orders values(10,101,'sruthi','2023-10-6');
insert into orders values(11,102,'shintu','2023-11-3');
select * from orders;
select author_name from authors;
select title from books;
select order_id,customer_name from orders;
alter table books add genre varchar(20);
alter table orders add quantity int;
update books set genre='fiction' where book_id=101;
update books set genre='fiction' where book_id=102;
select * from books;
update orders set quantity=1 where order_id=10;
update orders set quantity=2 where order_id=11;
select * from orders;
select * from books inner join authors on books.author_id=authors.author_id;
select * from orders inner join books on orders.book_id=books.book_id;



