SELECT char_length("PYTHON");
select concat("sql "," python "," programming "," languange ") as concatination;
select lcase("SQL PYTHON") as lowercase;
select right("function extracts",8);
select left("sql python",3);
select ucase("sql python") as uppercase;
select reverse("function");
select abs(-23445);
select log(2);
select pow(3,4);
select curdate();
select current_time();
select dayname("2024-10-07");
SELECT current_date();
SELECT today();
SELECT now();
use users;
create table cognizant (
employee_id int primary key,
salaries int
);
select *from cognizant;
insert into cognizant (employee_id,salaries) values
(12,35000),
(43,98000),
(30,45000),
(34,23400);
SELECT MIN(salaries), MAX(salaries) from cognizant;
