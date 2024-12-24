use company;

create table Emp_Details(
First_name varchar(20),
Last_name varchar(20),
Department  varchar(20),
Salary int ,
Hire_date date);
Insert into Emp_Details (First_name,Last_name,Department,Salary,Hire_date)
Values ("John" , "Doe" , "IT" , 60000.00 , "2019-01-10");
Insert into Emp_Details (First_name,Last_name,Department,Salary,Hire_date)
Values ("Jane" , "Smith" ,"HR" ,  55000.00 , "2018-03-05");
Insert into Emp_Details (First_name,Last_name,Department,Salary,Hire_date)
Values ("Emily" , "Jones" , "IT" , 62000.00 , "2020-07-23");
Insert into Emp_Details (First_name,Last_name,Department,Salary,Hire_date)
Values ("Micheal" , "Brown" , "Finance" , 70000.00 , "2016-05-14");
Insert into Emp_Details (First_name,Last_name,Department,Salary,Hire_date)
Values ("Sarah" , "Davis" , "Finance" , 69000.00 , "2017-11-18");
Insert into Emp_Details (First_name,Last_name,Department,Salary,Hire_date)
Values ("David" , "Johnson" , "HR" , 48000.00 , "2021-09-10");*/

/* 	 Q1- Average salary of employees in each department.   */  

	Select distinct Department, Avg(Salary) AS "Average Salary" from Emp_Details group by Department;  
 

/*	 Q2- Total number of employees hired after 2019.	  */

	Select Count(*) AS Total_Of_Employees from Emp_details  where Hire_date> "2019-01-01";
 

/*	Q3- Departments and the total salary of all employees in each department, ordered by the total salary.	*/

	Select Department, sum(Salary) As "Total Salary" from Emp_Details group by Department order by sum(Salary) ;   
 

/*	Q4- Highest salary in the Finance department.	*/

	Select Department, max(Salary) from Emp_Details group by Department having Department="Finance";
 

/*	Q5- Top 3 highest-paid employees.	*/

	Select concat(First_name,' ',Last_Name) AS "Employees Name", Salary  from Emp_Details order by Salary Desc Limit 3;

 
/*	Q6- Department with the minimum average salary.	*/

	Select Department, AVG(Salary) from Emp_Details group by Department Order By AVG(Salary) limit 1;
 



/*	Q7- Total number of employees in each department, ordered by the number of employees.	 	*/

	Select distinct Department,Count(*) AS "No. Of Employees" From Emp_Details Group By Department Order By COUNT(*); 
 

/*	Q8- Average salary of employees who were hired before 2020.	*/

	Select AVG(Salary) AS "Average Salary" from Emp_Details where Hire_date>"2020-01-01";
 


/*	Q9- Names of employees in the IT department ordered by hire date, with the most recently hired employees first.	*/

	Select concat(First_name,' ',Last_Name) AS "Employees Name" from Emp_Details Where Department="IT" order by Hire_date ASC;
 

/*	Q10- The sum of salaries for all employees hired after January 1, 2019, ordered by salary.		*/

	Select Sum(Salary) AS "Total Salary of Employees" from Emp_Details where Hire_date> "2019-01-01" Order by Salary;
 

/*	Q11- The employee with the lowest salary in the HR department.		*/

•	Select concat(First_name,' ',Last_Name) AS "Employees Name" from Emp_Details where Department="HR"  Order by Salary limit 1;
 

 /*	Q12- Total salary paid to employees in each department, but limit the result to the top 2 highest paying departments.		*/

	Select distinct Department, Sum(Salary) As 'Total Salary' from Emp_Details Group by Department Order by Department Desc limit 2;
 


/*	Q13- All employees hired after 2018, ordered by salary, and show only the first 4 employees.	*/

	Select concat(First_name,' ',Last_Name) AS "Employees Name", Salary from Emp_Details Where Hire_date>"2018-01-01" order by Salary Limit 4;

 

/*	Q14- The highest salary in the IT department, but limit the results to the top 1 result.	*/

	Select  Max(Salary) AS "Highest Salary" from Emp_Details Where Department= "IT" Order By Salary Desc Limit 1;
 

/*	Q15- Average salary of employees in each department and list only departments with an average salary greater than $60,000.	*/

	Select distinct Department, avg(Salary) AS "AVG Salary" from Emp_Details group by Department having avg(Salary)>60000;
