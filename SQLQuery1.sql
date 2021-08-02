create database Demo
--sql langauge is case insensitive
create database demo1
-- drop data base
drop database demo1
-- connect database
use demo
-- crate table
create table emp
( id int,
name varchar(100),
salary bigint,
gender char(1),
age smallint,
deptid smallint
)

drop table emp

create table emp
(
id Smallint,
name varchar(100),
age smallint,
salary bigint
)

insert into emp
(id,name,age,salary)
values
(1,'sagar',20,2000)


select * from emp

insert into emp
(id,name,age,salary)
values
(1,'Umang',22,30000)

insert into emp
(id,name,age,salary)
values
(2,'Raj',23,4000),
(3,'bhuri',24,5000)

select * from emp

insert into emp
(id,name,salary)
values
(4,'vishva',6000),
(5,'shubham',7000)

select * from emp

insert into emp
values
(6,'yash',24,8000)

select * from emp

--filtering using where
select * from emp where id=3
select * from emp where name = 'raj'
select * from emp where age =24
select * from emp where age >= 24
select * from emp where salary >=400 


select name,salary from emp
select 'Mr'+ ' '+ name from emp
select 'dear'+ ' ' + name from emp
select name , salary, 2000 from emp

select name as new_name , salary ,2000 as bonus from emp

select * from emp
where age>22 and salary>3000

select * from emp where salary > 3500 and (age=24 or age=22)

select * from emp where (salary >4090 and age = 24) or age=22

--salary : >3000
--age : 21,23,24,25,26

select * from emp where salary >3000 and (age = 21 or age = 23 or age = 24 or age = 25 or age = 26)

                       -- or
					   --- using IN function

select * from emp where salary >4000 and age in (21,23,24,25,26)


--salary : >3000
--age between 21 and 24

select * from emp where  salary >3000 and age between 21 and 25

select * from emp where name like 'U%' -- print all strating name with (U)
select * from emp where name like '%j' -- print all ending name with (j)
select * from emp where name like 'y%h' -- print name starting with (y) and ending with (h)

select * from emp where name like 'U_a%' -- print  a name which starting with (U) and 3rd letter is (a) 
select * from emp where name like 'y_s%' -- print  a name which starting with (y) and 3rd letter is (s)

select * from emp where name like '[uyr]%' --print name starting with (uyr)
select * from emp where name like '_[ma]%' -- frist letter is somthing second letter is (m or a) 

select top 5 * from emp -- sample data , view only top 5 data 

insert into emp (id,name,age,salary) values (5,'Raj',22,7500)
select * from emp

select distinct name from emp    -- just removing duplicate data from output not input
select distinct age from emp 
select distinct salary from emp

select * from emp order by salary    -- sorting data by salary
select * from emp order by age       -- sorting data by age
select * from emp order by name      -- sorting data by name

select * from emp order by salary desc -- sorting data by salary in dicending
select * from emp order by age desc    -- sorting data by age in dicending 
select * from emp order by  name desc  -- sorting data by name in dicending

select * from data_sql

select * into emp2 from emp  ---- copy emp data and create new data name emp2

use Demo

select id ,name ,salary from emp2
select upper(name) from emp2 ---- upper() convert all name in capital 
select id,upper(name),age,salary from emp2
select id,lower(name),age,salary from emp2 ---- lower() convert all name in lower
select lower(name) from emp2 where id>1

insert into emp2
values
(10,'   karan',22,3000),
(11,'   yash',22,4000),
(12,'ashish   ',23,5000),
(13,'adi   ',24,5000)

select * from emp2 where id > 9

select id,ltrim(name),age,salary from emp2 where id > 9   --remove space from left side of name using ltrim() function

select * from emp2 where id > 9

select id,rtrim(name),age, salary from emp2 where id> 9   --- remove space from right side of name using rtrim() function
select id,upper(ltrim(name)),age,salary from emp2 where id > 9  -- frist remove the space and after convernt all capital 
select len(name) from emp2  ---- find length of string using len()
select name, len(name) from emp2

-----------------------------------------------------------------------------
--------------------------------------------------------------------------
select substring(name,1,3) from emp2    --- name column find first 3 letter like Umang - Uma     starting with 1 parameter or 3 number of parameters
select substring(name,2,3) from emp2    --- name column find first 3 letter like Umang - man     starting with 2 parameter or 3 number of parameters

select name, substring(name,1,3) from emp2 

select concat(name ,salary ,id , age) from emp2    --- concat use for mearge  row details 
select name,concat(substring(name,1,3),salary) from emp2   ----concate use for marge or add details 
select name,concat(substring(name,1,3),id) from emp2

select concat(name,salary) from emp2 WHERE id in (2,3,4)   -- only show 2 ,3 ,4 rows with concat

select * from emp2
select name,id ,isnull(age,20) from emp2      -- isnull for repalce null to values  (in this case all null age values repalce by 20)
select name , id , isnull(age,20),age from emp2
select name , id , isnull(age,20) as new_age, age from emp2  ---- we also give name new cloumn 

select current_timestamp     --- both print current date,time
select getdate()

select getdate() +2000    --- adding 2000 days in current date
select getdate() -2000    --- substract 2000 days in current date

select datepart(yyyy,getdate())   --- its only given year 
select datepart(month,getdate())  --- its only given month

select datediff(day,getdate()-540,getdate())  --- datediff function returns the time between two dates
select datediff(month,getdate()-540,getdate())
select datediff(year,getdate()-540,getdate())

select datediff(day,getdate()-540,getdate()), getdate()-540,getdate()
select datediff(month,getdate()-540,getdate()), getdate()-540,getdate()
select datediff(year,getdate()-540,getdate()), getdate()-540,getdate()

select dateadd(day,20,getdate()) ---- add or substract perticular time periode
select dateadd(year,20,getdate())

select id + name from emp2
select convert(varchar(5),id) + name from emp2   -- convert one data type to another
select convert(varchar(20) , getdate()) ,getdate()
select convert(varchar(20) , getdate(),101), getdate()
select convert(varchar(20) , getdate(),102), getdate()
select convert(varchar(20) , getdate(),103), getdate()

--------------------------------------------------
use demo
select max(salary) from emp2  --max
select min(salary) from emp2  --min
select count(salary) from emp2  -- count
select avg(salary) from emp2  --avg
select sum(salary) from emp2  --sum
select sum(salary) , avg(salary) from emp2
select sum(salary) as new_sum ,avg(salary) as new_avg from emp2

select max(name),min(name) from emp2   --- man and min functions also use in strings

select name from emp2   
where salary = max(salary)    ---- is not working 

select name from emp2
where salary = (select max(salary) from emp2) -- this is working


select name from emp2  --
where salary = (select min(salary) from emp2)

select name from emp2
where salary = (select max(salary) from emp2)
or    salary = (select min(salary) from emp2)

select name from emp2
where salary = 30000
or    salary = 2000

select name from emp2
where salary in (30000, 2000)

select * from emp2
where age is null

select * from emp2
where age is not null

select avg(age) from emp2        ---- in this we find avg of age with out null and  0 values
where age <> 0 and age is not null

select * from emp2
where age <> 0 and age is not null  --- in this we find all value without null and 0 

select * from emp2
where age = 0 or age is null    -- in this we find all null and o vlaues

select id , name , age,(select avg(age) from emp2 where age <>0 and age is not NULL) as age_new from emp2
where age = 0 or age is null  -- in this we replace value with null and 0 to avg of without null and 0 values 

insert into emp2
values
(24,'abc',26,3000)
select * from emp2


-----QUESTION. 
   ---Name of the employees whose age is maximum in the list of people getting highest salary
select name from emp2 where salary = (select max(salary) from emp2) and age = (select max(age) from emp2)  --- it is wrong ohk

select name from emp2
where age = (select max(age) from emp2 where salary = (select max(salary) from emp2)) and salary = (select max(salary) from emp2)  -- this is right

-------------- group by--------

select age,avg(salary) from emp2    --- its print avg salary  by all group of age    (like clustring)
group by age

select * from emp

update emp set age = 20 where age is null   ---  update a table puting some value on null values

select max(salary) , age from emp2    ---print maz salary by all group of age
group by age

---- provied avg age for each salary group 
select avg(age),salary from emp2
group by salary

use demo
select * from emp2
-- --------------------------------------------------
--------------------------------------------
 create table stud (id int, name varchar(100), age int, salary int ,deptid int, gender char(1), stateid int)
select * from stud

insert into stud
values
(1,'chetan',21,2000,1,'m',1),
(2,'geeta',21,1000,1,'m',2),
(3,'candaswamy',22,3000,3,'m',4),
(4,'gopal',22,2000,2,'m',5),
(5,'vivek',23,1000,2,'m',1),
(6,'ajmal',23,3000,2,'m',2),
(7,'kritikesh',23,4000,3,'m',3),
(8,'rahul',22,1000,3,'m',4),
(9,'ram',24,2000,4,'m',5)


create table dept (id int, name varchar(100))
insert into dept
values
(1,'hr'),
(2, 'admin'),
(3,'IT'),
(4,'sales'),
(5,'Finace')

select *from dept

create table state (id int, name varchar(100))
insert into state
values
(1,'karnataka'),
(2, 'aandra pradesh'),
(3,'maharastra'),
(4,'odisha'),
(5,'uttar pradesh')

select * from state

select stud.name, state.name, dept.name from stud
		join dept on stud.deptid = dept.id
		join state on stud.stateid = state.id
where 
     stud.name ='gopal'

select * from stud 
  join dept on stud.deptid = dept.id
  join state on stud.stateid = state.id
order by state.id


-- name of the employee who working in admin department
select stud.name, dept.name from stud
join dept on stud.deptid = dept.id
where dept.id = 2   ---- name the employ whow working in admin department

select stud.name from stud where deptid in (select id from dept where dept.name='it')

--- name of student and his department who work is dept admin

select stud.name,dept.name from stud
join dept on stud.deptid = dept.id
where dept.name = 'admin' 

select stud.name, dept.id from stud
join dept on stud.deptid=dept.id
where dept.name = 'hr'

select stud.name, dept.name from stud
join dept on stud.deptid = dept.id
where dept.name = 'sales'

--------------------------------------------------
-------------------------------------------------
name and age of amployee
who is getting min salary
from the range of max and  avg salary
 for the employees whoose salary is greater 2100
 and name has character "A" mandatorily
 and they are getting  max salary in there state 
 select name , age from emp2
 where name like '%A%'
 and 
 salary = (select min(salary) from emp2
			where salary <= (select max(salary) from emp2 where salary >2100) 

			and salary >= (select avg(salary) from emp2 where salary > 2100)
			)


 salary = (select max(salary) from emp2 group by satateid)

 -----------------------------------------------------------------------------------
 --------------------------------------------------------------
  -----joins-----
 select  * from stud      ----rigt join
 right join dept  on 
 stud.deptid = dept.id
 order by dept.id

 select * from stud left join dept on  ---left join
 stud.deptid= dept.id
 order by dept.id

 

 select * from stud    ---- Full join  get complete data from both table  accroding condation
 full join dept
 on stud.deptid=dept.id

 select * from stud     --- Corss join get m*m (all column to cloumn ) comparesion 
cross join dept

------finding name of max salary from there state
select stud.name , stud.salary, stud.stateid from
(
select max(salary) as msal,stateid from stud
group by stateid
)as umang 
join stud on
stud.salary = umang.msal
and stud.stateid = umang.stateid

-------------------------------------------------------

Filter - Where| Having

find max salary for each satate if max slary of state is greate 2000

select max(salary),stateid from stud 
group by stateid
having max(salary)>2000


-------------------------------------------

create table emp3
(id int, name varchar(100),mgrig int)
insert into emp3
values
(1,'chetan',null),
(2,'geeta',1),
(3,'Candaswamy',1),
(4,'gopal',2),
(5,'vivek',3),
(6,'ajmal',3),
(7,'kritikesh',3),
(8,'rahul',4),
(9,'ram',5),
(10,'lokesh',5)
select * from emp3

create table mgr
(mgrid int, name varchar(100))
 insert into mgr
 values
 (1,'chetan'),
(2,'geeta'),
(3,'Candaswamy'),
(4,'gopal'),
(5,'vivek')

select * from mgr

select e.name, m.name from emp3 as e
left join emp3 as m on e.mgrig = m.id

select e.name,m.name from emp3 as e left join emp3 as m on e.mgrig = m.id


---find id which age is zero(0) from table emp2
select * from emp2
select name from emp2 
where age= 24

update emp2   ---- update raw
set age = 21
where age = 23

delete from emp2  -- delete raw
where id = 13




alter table emp2 add deptid int  --- add column 

select * from emp2

alter table emp2 drop column deptid  ---- drom coulmn 



constraints:

not null
unique
primary key
check
default
foreign key


drop table emp5
create table emp5
(id int not null,
name varchar(100),
salary bigint ,
age smallint,
deptid smallint unique
)
---- notnull ----
insert into emp5   
values
(null,'umang',20000,12,2)  -- not valied because null not allow
--- unique----  
insert into emp5   
values
(1,'umang',20000,12,2),
(2,'raj',30000,12,2)   --- not valied because deptid not allow duplicate
