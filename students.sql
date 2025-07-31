create database test;
use test;
create table students(
Id int primary key,
Name varchar(20),
age int,
grade varchar(10)
);
-- single row insertion
insert into students values(1,"Sam",18,'A');
-- multi row insertion 
insert into students (Id,Name,age,grade) values (2,"Prem",17,'B'),(3,"Thaslee",18,"A"),
(4,"Preethi",19,"B");
select*from school_students;
alter table students add email varchar(50);
alter table students add gender varchar(10);
alter table students change grade final_grade varchar(10);
alter table students modify Name varchar(100);
alter table students drop column age;
alter table students rename to school_students;
alter table school_students modify final_grade varchar(10) default 'B';
desc school_students;
select*from school_students;
alter table school_students add age int;
-- now we are going to see update questions
update school_students set name ="Kumar" where id=2;
insert into school_students values(5,"Karan",'A',"rvs2024dssameer@gmail.com","M",18);

update school_students set age=age+1;
update school_students set final_grade="A+" where final_grade="A";
update school_students set final_grade="B" where name like "K%";
update school_students set  final_grade="F" where age>18;
update school_students set name="Arun kumar" where name="Kumar" and final_grade="B";
update school_students set final_grade=null;
delete from school_students where age=19;
