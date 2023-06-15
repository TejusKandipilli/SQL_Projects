--Returning all the product details for the cheapest products
--from the oes.products table

select 
sub.category_id,sub.list_price,sub.product_id,sub.product_name
from
(
Select product_id,
product_name,
list_price,
category_id,
rank() over (order by list_price asc) as rnk
from oes.products
) as sub
where rnk = 1


--Returning all the product details for the cheapest products
--from the oes.products table for each category
select s.category_id,s.product_id,s.product_name,s.list_price from
oes.products s
where s.list_price in
(
select min(list_price) from oes.products e group by category_id
having s.category_id = e.category_id
)
order by category_id

--Returning all the product details for the cheapest products
--from the oes.products table for each category using Inner join 
Select s.category_id,s.product_id,s.product_name,s.list_price from oes.products s
inner join
(select category_id,min(list_price) as min_price 
from oes.products p2 group by category_id) s2
on s.category_id = s2.category_id 
and s.list_price = s2.min_price


--Returning all the product details for the cheapest products
--from the oes.products table for each category using Common Table Expression
With prod as
(
Select category_id,min(list_price) as min_price from oes.products group by category_id
)
Select p.* from oes.products p 
inner join 
prod on
prod.category_id = p.category_id
and prod.min_price = p.list_price



--Returning all the product details for the cheapest products and product_category_name 
--from the oes.products table for each category using Common Table Expression
With prod as
(
Select category_id,min(list_price) as min_price from oes.products group by category_id
), 
prod_cat
as
(
Select category_id,category_name from oes.product_categories
)

Select p.product_id,p.product_name,p.list_price,p.category_id,prod_cat.category_name 
from oes.products p

inner join 
prod on
prod.category_id = p.category_id
and prod.min_price = p.list_price

inner join 
prod_cat on
p.category_id = prod_cat.category_id


--Returning all the rows from employees table which haven't made a single sale.

Select emp.* 
from hcm.employees emp
where not exists 
(
select s.employee_id 
from oes.orders s
where emp.employee_id = s.employee_id)


--Returning all the rows from employees table which haven't made a single sale.

Select emp.* 
from hcm.employees emp
where emp.employee_id not in
(
select s.employee_id 
from oes.orders s
where emp.employee_id = s.employee_id)


--return unique customers who have ordered the 'PBX Smart Watch 4'

select c.customer_id,c.first_name,c.last_name,c.email 
from oes.customers c 
where c.customer_id in (
Select distinct ord.customer_id 
from oes.orders ord 
where ord.order_id in (
select items.order_id 
from oes.order_items items
where items.product_id in (
Select prod.product_id 
from oes.products prod
where product_name = 'PBX Smart Watch 4')) )
order by customer_id