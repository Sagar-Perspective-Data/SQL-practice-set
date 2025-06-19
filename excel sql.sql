SELECT * FROM employee_imp.employees_data;
select * from employees_data;
/*List all Employee from Hyd*/
-- this is single line comment
/* this is a multi line comment*/
select * from employees_data where city= 'Hyderabad';
select Empname,Gender,city from employees_data;
-- Display the names and ages of employees who are younger than 30
select Empname,Age from employees_data where Age<30 ;
-- Show all employees in the IT department who earn mre than 60,000?
select * from employees_data where department = 'IT' and salary>60000 ;
-- List all employees ordered by their joining date
select Empname from employees_data order by joindate asc;
select * from employees_data order by joindate asc;
select * from employees_data order by joindate desc;
-- Display the top three highest paid employees
select * from employees_data order by salary desc limit 3;
-- Aggregation ( count, sum,avg,max and min)
-- how many employees work in a sales department 
select count(*) from employees_data where department = 'Sales' ;
-- what is the total salary paid to all employees in HR
select sum(salary) from employees_data where department = 'HR' ;
-- find the avg performance score across all employees
select avg (Performancescore) FROM employees_data;
-- who is the youngest employee
Select * from employees_data where age = (select min(age) from employees_data) ;
-- show avg salary per department
select department, avg (salary) as average_salary from employees_data group by department;
-- list departemnts having more than two employess
select department,count(*) from employees_data group by department having count(*)>2;
-- group by : 
-- 1. count employees by department 
-- 2. avg salary by city
select department,count(*) from employees_data group by department;
select city, avg (salary) from employees_data group by city ;
-- having 
-- 1. departments with more than 4 employess 
-- 2. cities avg salary more than 50,000
select department,count(*) from employees_data group by department having count(*)>=3;
select city,avg(salary) from employees_data group by city having avg(salary)>50000;
-- Advance filtering  ( LIKE, IN ,BETWEEN) 
-- 1. find all employees whose name with 'S' ? ( like operator)
-- 2. Names that ends with 'a'
-- 3, names that contain 'na' anywhere?
-- 4. names with exactly five characters
select * from employees_data where Empname like 'S%'; 
select * from employees_data where Empname like '%a'; 
select * from employees_data;
select * from employees_data where city like '%na%'; 
select * from employees_data where Empname like '%________%'; 
-- IN Operator (match from a list) 
-- find employees from either hyderabad or chennai? 
select * from employees_data where city in ('Hyderabad','Chennai');
select * from employees_data where city ='Hyderabad'or city = 'Chennai';
-- employees from multiple departments (HR and sales) 
select * from employees_data where department in ('HR', 'Sales');
-- employee age 25,28,30 
select * from employees_data where age in ('25','28','30');
-- Between operator ( RANGE BASED OPERATOR)
-- find employees earning between 50,000 and 70000?
select * from employees_data where salary between 50000 and 70000;
-- employee age between 25 and 35 
select * from employees_data where age between 25 and 35;
-- employee joined between 2021 and 2023
select * from employees_data where JoinDate between '01-01-2021' and '31-05-2023';
-- DML ( Insert, update, and delete) 
insert into employees_data values(111,'chandana', 26,'Female','IT',6000000,'20-07-2025','Banglore',5);
Update employees_data SET salary = 7000000