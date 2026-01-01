create database Employee;
use employee;
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
INSERT INTO employees
VALUES (1, 'Ravi', 'Sales', 30000, 'Chennai');
INSERT INTO employees (emp_id, name, department)
VALUES (2, 'Karthi', 'HR');
INSERT INTO employees (emp_id, name, department, salary, city)
VALUES
(3, 'Anu', 'IT', 45000, 'Bangalore'),
(4, 'Meena', 'Finance', 40000, 'Coimbatore'),
(5, 'Arun', 'IT', 50000, 'Chennai');
select*from employees;
insert into employees (emp_id,name,city) values (6,"Suresh","Trichy");
insert into employees values(7,"Priya","HR",35000,"Salem");

select*from employees where department="IT";
select name,salary from employees where city="Chennai";
select*from employees
where
salary>40000;
select*from employees where name="Suresh";
select*from employees where city="Salem";
select name,department from employees where salary>=35000;

select*from employees where department="IT" and city="chennai";
select*from employees where city="Chennai" or city="Salem";
select*from employees where not department ="HR";
select*from employees where department="IT" and salary>40000;
select*from employees where city="Chennai" or city="Salem";
select*from employees order by salary;
select*from employees order by salary desc;
select*from employees order by name asc;
select*from employees order by department asc,salary desc;
select*from employees order by salary desc limit 3;
select*from employees limit 5;
select*from  employees order by salary desc limit 2;
select*from employees order by city asc;
select count(*) from employees;
select avg(salary) from employees;
select sum(salary) from employees;
select min(salary),max(salary) from employees;
select department,count(*) from employees group by department;
select department,avg(salary) from employees group by department;
select city,count(*) from employees group by city;
select department,avg(salary) from employees group by department;
select department,avg(salary) from employees
group by department having avg(salary)>40000;
select department,count(*) from employees 
group by department having count(*)>1;
select city,avg(salary) from employees 
group by city having avg(salary)>40000;
select department,avg(salary) from employees 
group by department having avg(salary)>35000;
select city,count(*) from employees group by
city having count(*)>1;
select*from employees;
update employees set department="IT",salary=37000 where emp_id=6;
update employees set salary=salary+5000 where department="IT";
update employees set salary=37000 where name="Priya";
update employees set salary=salary+3000 where department="HR";
alter table employees add email varchar(100);
alter table employees add experience int(5);
alter table employees modify city varchar(100);
alter table employees rename column city to emp_city;
alter table employees drop column experience;
