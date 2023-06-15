
--perform inner join to return the following columns
--employee_id
--first_name
--last_name
--salary
--department_name

select emp.employee_id,emp.first_name,emp.last_name,emp.salary,dp.department_name 
from hcm.departments dp inner join hcm.employees emp 
on dp.department_id = emp.department_id 
order by dp.department_id,emp.employee_id

 --perform left outer join to return the following columns:
 --employee_id
 --first_name
 --last_name
 --salary
 --department_name

 
 select 
 emp.employee_id,emp.first_name,emp.last_name,emp.salary,dp.department_name 
 from hcm.employees emp left outer join hcm.departments dp 
 on emp.department_id = dp.department_id 
 order by dp.department_id, emp.employee_id

 --perform left outer join and return the following columns:
--department name
--No. of employees in that department

select 
dp.department_name, count(*) as 'No. of employees' 
from hcm.employees emp left outer join hcm.departments dp 
on emp.department_id = dp.department_id 
group by dp.department_name

--Write a query to return all the products at each warehouse.
--Include the following attributes:
--Product_id
--product_name
--warehouse_id
--warehouse_name
--quantity_on_hand

select 
inven.product_id,prod.product_name,inven.warehouse_id,isnull(ware.warehouse_name,'Not Available') as 'Warehouse_name',inven.quantity_on_hand 
from oes.inventories inven inner join oes.products prod on inven.product_id = prod.product_id 
inner join oes.warehouses ware on inven.warehouse_id = ware.warehouse_id 



--To Explain 'not available' values in warehouse_name 
--Replaced Nulls with 'Not Available'
select * from oes.warehouses

--Return the total quantity of each product ordered 
--divided by category_name and product_name

select 
prodcat.category_name,prod.product_name,sum(oitems.quantity) as 'total_quantity_ordered' 
from oes.order_items oitems inner join oes.products prod on oitems.product_id = prod.product_id 
inner join oes.product_categories prodcat on prod.category_id = prodcat.category_id 
group by prodcat.category_name,prod.product_name 
order by prodcat.category_name,prod.product_name


--Return the total quantity of each product ordered and not ordered 
--and replace the nulls in the 'total_quantity_ordered' with 0
--divided by category_name and product_name

select 
prodcat.category_name,prod.product_name,isnull(sum(oitems.quantity),0) as 'total_quantity_ordered' 
from oes.order_items oitems full outer join oes.products prod on oitems.product_id = prod.product_id 
inner join oes.product_categories prodcat on prod.category_id = prodcat.category_id 
group by prodcat.category_name,prod.product_name 
order by prodcat.category_name,prod.product_name

--Write a query to return the following attributes for all employees from Australia:
--employee_id
--first_name
--last_name
--department_name
--job_title
--state_province

select emp.employee_id,emp.first_name,emp.last_name,dep.department_name,jobs.job_title,emp.state_province,countries.country_name
from hcm.employees emp full outer join hcm.departments dep on emp.department_id = dep.department_id 
inner join  hcm.countries countries on emp.country_id = countries.country_id 
 inner join hcm.jobs jobs on emp.job_id = jobs.job_id where countries.country_name = 'Australia'

 --Write a query to return employee details for all employees as well as 
--the first and last name of each employee's manager.
--Include the following columns:
--Employee_id
--first_name
--Last_name
--manager_last_name(alias for first_name)
--manager_last_name(alias for last_name)


select 
e.employee_id,e.first_name,e.last_name,e.manager_id,
e2.employee_id,e2.first_name as 'manager_first_name',e2.last_name as 'Manager_last_name' 
from hcm.employees e full join hcm.employees e2 
on e.manager_id = e2.employee_id

