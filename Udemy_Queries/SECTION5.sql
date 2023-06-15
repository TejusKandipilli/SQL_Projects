--Using CONCAT function to concatenate First Name and Last Name 
--Employee Name

select employee_id,first_name,last_name,
CONCAT(first_name,' ',last_name) as 'employee_name' 
from hcm.employees


--Using CONCAT function to concatenate first name,middle name and last name as Employee name

Select employee_id,first_name,last_name,CONCAT(first_name,' ' + middle_name,' ',last_name) as 'employee_name'  from hcm.employees

--Using substring function to extract the genus name from scientific name
select scientific_name,substring(scientific_name,1,CHARINDEX(' ',scientific_name)-1) as 'Genus_Name' from bird.antarctic_species

--Using substring function to extract species name from scientific name
Select scientific_name,SUBSTRING(scientific_name,charindex(' ',scientific_name) + 1,len(scientific_name)) as 'Species_Name'  from bird.antarctic_species


--Using datediff to find out the ages of employees
select employee_id,first_name,last_name,birth_date,DATEDIFF(year,birth_date,GETDATE()) as 'Age' from hcm.employees
--or

select employee_id,first_name,last_name,birth_date,DATEDIFF(year,birth_date,SYSDATETIME()) as 'Age' from hcm.employees
--or

select employee_id,first_name,last_name,birth_date,DATEDIFF(year,birth_date,CURRENT_TIMESTAMP) as 'Age' from hcm.employees


--Using dateadd function to find out the estimated shipping date
Select order_id,order_date,DATEADD(day,7,order_date) as 'Estimated_Shipping_Date'  from oes.orders


--Nesting a datediff function inside a avg aggregate function to find out the avg shipping days by finding the difference between Order date and shipped date
select shp.company_name,avg(DATEDIFF(day,order_date,shipped_date)) as 'Avg_shipping_days' from oes.orders ord inner join oes.shippers shp on ord.shipper_id = shp.shipper_id
group by shp.company_name


--Using CASE expression to return 'Yes' if discontinued = 1 and 'No' if discontinued = 0

select product_id,product_name,discontinued,
case discontinued when 
1
then 'Yes'
else 'No'
end as 'Discontinued_description'
from oes.products


--Using CASE to categorize list_prices into 3 categories:- Low,Medium,High
select 
product_id,product_name,list_price,
case when list_price < 50 then 'Low'
when list_price >= 50 and list_price < 250 then 'Medium'
when list_price >= 250 then 'High'
else 'Unknown'
end as 'Price_grade'
from oes.products


--Using CASE to categorize orders into two categories based on the time taken to ship the order
select order_id,order_date,shipped_date,
case 
when shipped_date is null then 'Not yet shipped'
when DATEDIFF(day,order_date,shipped_date) <= 7 then 'Shipped within a week'
when DATEDIFF(day,order_date,shipped_date) > 7 then 'Shipped over a week later'
end as 'Shipping_Status'
from oes.orders


--Using CASE to categorize orders into two categories based on the time taken to ship the order and counts the no of orders per category
With ship as(
select order_id,order_date,shipped_date,
case 
when shipped_date is null then 'Not yet shipped'
when DATEDIFF(day,order_date,shipped_date) <= 7 then 'Shipped within a week'
when DATEDIFF(day,order_date,shipped_date) > 7 then 'Shipped over a week later'
end as "Shipping_Status"
from oes.orders
)
select Shipping_status,count(*) as "No of orders" from ship group by Shipping_status 

