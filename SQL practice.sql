use sys;
show databases;
create database sagar;
use sagar;
create table movies(id int primary key ,title varchar(200), director varchar(200), ratings float);
insert into movies values (1,'SALAAR','NEEL',10),
(2,'DARLING','Karunakaran',20);
select *from movies;