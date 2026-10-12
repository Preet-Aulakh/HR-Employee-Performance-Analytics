create database hr_analytics_db;
use hr_analytics_db;
SELECT * FROM hr_analytics_db.hr_employee_data;

select Department, count(EmployeeID) as Total_Employees
from hr_employee_data 
group by Department
order by Total_Employees desc;

select Department, round(avg(Salary), 2) Average_Salary
from hr_employee_data
group by Department
order by Average_Salary desc;

select EmployeeName, Department, Salary
from hr_employee_data
order by Salary desc
limit 5;

select Rating, count(EmployeeID) as Number_of_Employees
from hr_employee_data
where Rating in (4,5)
group by Rating;

select State, count(EmployeeID) as Employee_Count, sum(ProjectsCompleted) as Total_Project_Done
from hr_employee_data
group by State
order by Employee_Count desc;

