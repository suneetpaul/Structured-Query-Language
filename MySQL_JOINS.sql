use collage;

select * from employees;
select * from department;
select * from project;

#1.	Write a query to get Employee and Department details using join. 

select emp_name ,dept_name
from employees  e
join department d
on e.dept_id = d.dept_id;

#2.	Write a query to retrieve all employees with their departments, even if the department is missing.

select emp_name ,dept_name
from employees  e
left join department d
on e.dept_id = d.dept_id;

#3.	Write a query to get department details even if there are no employees in that department. 

select dept_name , emp_name
from  department  d
left join employees e
on e.dept_id = d.dept_id;

#4.	Write a query to get all employees and departments, whether matched or not. 

select emp_id ,  emp_name , d.dept_id , dept_name 
from employees e
right join department d
on e.dept_id = d.dept_id;

#5.	JOIN three tables (Employees, Departments, Projects) to get employee, department, and project information. 

select *
from employees e 
join department d 
on e.dept_id= d.dept_id
join project p
on e.emp_id= p.emp_id;

#6.	Find employees who are not assigned to any projects.

select e.emp_id , emp_name , proj_id
from employees e 
left join project p
on e.emp_id= p.emp_id
where p.proj_id is null;

#7.	Find departments with no employees using a RIGHT JOIN. 

select d.dept_id , dept_name , emp_id , emp_name 
from employees e
right join department d
on e.dept_id = d.dept_id
where e.dept_id is null;

#8.	Write a query to get Employee and Department details using join with aliases. 

select emp_name as Employee , dept_name as Department 
from employees e
join department d 
on e.dept_id = d.dept_id;

#9.	Write a query to find employees in the same department as other employees. 

#10.	Write a query to find projects managed by employees in the 'IT' department. 

select emp_name , proj_name 
from employees e
join project p
on e.emp_id = p.emp_id
join department d
on e.dept_id = d.dept_id
where dept_name = 'IT';

#11.	Write a query to show employees and their project information (even if not assigned to a project). 

select emp_name , proj_name 
from employees e
left join project p
on e.emp_id = p.emp_id;

#12.	Find employees who work in departments with names starting with 'A'. 

select emp_name , dept_name 
from employees e
join department d
on e.dept_id = d.dept_id
where emp_name like  "A%";

#13.	Find the total number of employees in each department using GROUP BY and JOIN. 

select count(emp_id) as number , dept_name
from employees e
left join department d
on e.dept_id = d.dept_id
group by d.dept_name ;

#14.	Get the list of departments with more than one employee. 

select count(emp_id) , dept_name
from employees e
left join department d
on e.dept_id = d.dept_id
group by d.dept_name having count(emp_id) >1;


