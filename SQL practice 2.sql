use sys;
show databases;
create database sagar;
use sagar;
create table movies(id int primary key ,title varchar(200), director varchar(200), ratings float);
insert into movies values (1,'SALAAR','NEEL',10),
(2,'DARLING','Karunakaran',20);
select *from movies;
create database employees;
use employees;
create table employe (id int primary key, name varchar (200) not null, salary float);
insert into employe(id,name) values
(10,'prabhas');
select * from employe
create database users;
create table user( id int primary key, name varchar(100) unique);
insert into user values (100,'sagar');
select * from user
insert into user value (200,'sagar');
insert into user value (200,'prabhas');
select * from user
insert into user value (200,'samantha');
insert into user value (300,'samantha');
select * from user
use users;
create table orders (
  order_id int primary key,
  order_date Date Default '2003-04-26'
  );
  insert into orders values
  (100,'2024-09-29');
  select * from orders;
  insert into orders(order_id) values
  (200);
  select * from orders;
  create table chandana (
   id int primary key,
   gender varchar (200)
   );
   show databases ;
   show tables from employees;
   use users;
   create table tickets(
    movie_name varchar(200) primary key,
     cost int,
     quantity int check (quantity <=175)
     );
     insert into tickets values( 'salaar', 150,140)
     select * from tickets;
     insert into tickets values( 'darling', 50,100)
     select * from tickets ;
     use sagar;
     select * from movies where director = 'NEEL';
     use users;
     create table cinema(
     cinema_id int primary key,
     title varchar (200),
     release_year year,
     genre varchar (100),
     duration_minutes int,
     rating float
     );
     select * from cinema;
     insert into cinema(cinema_id,title,release_year,genre,duration_minutes,rating) values 
    
    
     (3,'yogi','2020','horror',120,4.2);
     select * from cinema;
       insert into cinema(cinema_id,title,release_year,genre,duration_minutes,rating) values 
    (4,'kalki',2023,'sci-fi',180,5);
    set sql_safe_updates =0;
update cinema set rating=5.9 where title='yogi';    
delete from cinema where title='yogi';
 set sql_safe_updates =1;