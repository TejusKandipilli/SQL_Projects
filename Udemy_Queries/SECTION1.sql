--Selecting the entire bird.antarctic_populations table using SELECT statement
select * from bird.antarctic_populations

--Selecting the oes.order_items table
select * from oes.order_items

--Select DISTINCT query to view unique order_id from the table
select distinct order_id from oes.order_items

--selecting everything from hcm.employees
select * from hcm.employees

--selecting employee_id, first_name and department_id in order of first_name ascending
select employee_id,first_name,department_id from hcm.employees order by first_name

--Selecting the top 5 employees with highest salaries
select top (5) * from hcm.employees order by salary desc

--selecting top 5 longest serving employees with TIES
select top (5) with ties * from hcm.employees order by hire_date desc

--Select orders which were placed on or after 01-01-2020
select * from oes.orders where order_date >= '20200101'

--Selecting everything from oes.products table
select * from oes.products

--selecting products which end with the word 'Monitor'
select product_id,product_name from oes.products where product_name like '%Monitor'

--Selecting all products which start with the word 'Apple'
select product_id,product_name from oes.products where product_name like 'Apple%'

--Selecting all products which contain the word 'true'
select product_id,product_name from oes.products where product_name like '%true%'

--selecting everything from hcm.employees table
select * from hcm.employees


--Replacing null values in Middle_name and Department_id Columns
select 
employee_id, first_name, isnull(middle_name,'NA') as 'Middle Name',isnull(department_id,'0') as 'Department ID' 
from hcm.employees order by department_id,employee_id

--Replacing null values in Middle_name Using Coalesce function
select employee_id, first_name,last_name,coalesce(middle_name,last_name,'NA') as 'Middle Name' from hcm.employees where middle_name is NULL

--selecting everything from hcm.employees
select * from hcm.employees

--Grouping employees by department_id
select department_id,count(*) as 'number of employees' from hcm.employees group by department_id

--Selecting the max salary in each department_id
select department_id,max(salary) as 'Max Salary' from hcm.employees group by department_id

--Selecting the minimum salary in each department_id
select department_id,min(salary) as 'Min Salary' from hcm.employees group by department_id

--Selecting the sum of salaries in each department_id
select department_id,sum(salary) as 'Sum of Salaries' from hcm.employees group by department_id

--Selecting the average of salaries in each department_id
select department_id,avg(salary) as 'Average Salary' from hcm.employees group by department_id

--Selecting all the distinct cities in each department_id
select department_id,count(distinct city) as 'number of cities' from hcm.employees group by department_id

--selecting everyting from hcm.employees table
select * from hcm.employees

--grouping employees by department_id and selecting department_id which have more than 20 employees
select department_id, count(*) as 'No. of Employees' from hcm.employees group by department_id having count(*)>20

--selecting everything from hcm.employees
select * from hcm.employees

--selecting employees who have a salary higher than 10000 and belonging to department_id 60
select employee_id, first_name,department_id,salary from hcm.employees where salary > '10000' and department_id = '60'

--selecting employees who belong to either department_id 60 or 90
select employee_id, first_name,department_id,salary from hcm.employees where department_id = '60' or department_id = '90'

--selecting employees who belong to either department_id 60,90,100
select employee_id, first_name,department_id,salary from hcm.employees where department_id in (60,90,100) order by department_id 
