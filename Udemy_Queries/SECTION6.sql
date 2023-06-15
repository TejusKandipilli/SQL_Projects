--Creating dbodept table and adding primary key and not null constraints

create table dbo.dept 
(
dept_id INT identity(1,1),
dept_name varchar(50) not null,
constraint PK_dept_id primary key (dept_id)
)


--Inserting a row into the dbo.dept table
insert into dbo.dept (dept_name) values 
('Business Intelligence')

--Selecting all rows from dbo.dept table
select * from dbo.dept


 --Inserting all rows from hcm.departments into dbo.dept
 Insert into dbo.dept (dept_name) 
 select department_name from hcm.departments


 --Creating a table with the name dbo.emp
 Create table dbo.emp(
 emp_id int identity(1,1),
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 hire_date date,
 dept_id int,
 constraint PK_emp_id primary key (emp_id),
 constraint FK_dept_id foreign key (dept_id) references dbo.dept (dept_id)
 )


 --Inserting 2 rows into dbo.emp table
 insert into dbo.emp (first_name,last_name,hire_date,dept_id) 
 values ('Scott','Davis','20201211',1),
		('Miriam','Yardley','20201205',1)


--Selecting all rows from dbo.emp table
Select * from dbo.emp


--Updating last_name from dbo.emp table where first_name = Miriam
update dbo.emp set
last_name = 'Greenbank'
where first_name = 'Miriam'


--Deleting a row from dbo.emp table where emp_id = 1
Delete from dbo.emp
where emp_id = 1


--Procedures Challenges

--1. Creating a stored procedure which returns quantity_on_hand 
--taking product_id and warehouse_id as inputs
go

create procedure oes.getQuantityonHand (@product_id int = [1-77],@warehouse_id int = [1-10])
as
begin
select * from oes.inventories where product_id = @product_id and warehouse_id = @warehouse_id
end 

go

--Executing the stored procedure
execute oes.getQuantityonHand 1,1
--or
exec oes.getQuantityonHand 10,2
--or 
execute oes.getQuantityonHand @product_id = 10,@warehouse_id = 2



--2. Creating a stored procedure which returns the current products( dicontinued = 0) 
--while taking product_name and max_list_price as inputs
go

create procedure oes.getCurrentProducts (@product_name varchar(100),@max_list_price decimal(19,4))
as
begin
Select * from oes.products where discontinued = 0 and product_name like '%' + @product_name + '%' and list_price <= @max_list_price
end

go


--Executing the procedure
execute oes.getCurrentProducts 'Drone',700
--or 
execute oes.getCurrentProducts @product_name = 'Drone',@max_list_price = 700


--3.Creating a stored procedure which transfers money from one bank account to another by 
--updating balance column in oes.bank_accounts
--and inserts the transaction details into oes.bank_transactions table

go

create procedure oes.transferFunds 
(@withdraw_account_id int,
@deposit_account_id int,
@transfer_amount decimal(30,2))
as
begin transaction

update oes.bank_accounts set 
oes.bank_accounts.balance -= @transfer_amount where oes.bank_accounts.account_id = @withdraw_account_id;

update oes.bank_accounts set 
oes.bank_accounts.balance += @transfer_amount where oes.bank_accounts.account_id = @deposit_account_id;

insert into oes.bank_transactions(from_account_id,to_account_id,amount)
values (@withdraw_account_id,@deposit_account_id,@transfer_amount)

commit transaction

go

--Selecting all rows 
select * from oes.bank_accounts
select * from oes.bank_transactions

--Executing the stored procedure
execute oes.transferFunds @withdraw_account_id = 1,@deposit_account_id = 2,@transfer_amount = 100

--Selecting all rows 
select * from oes.bank_accounts
select * from oes.bank_transactions



--Altering hcm.employees table to add a new column 'termination_date'
--with the date datatype

alter table hcm.employees
add termination_date date


--Altering datatypes of first_name and last_name columns from 
--oes.customers to nvarchar(60)

alter table oes.customers
alter column first_name nvarchar(60)

alter table oes.customers
alter column last_name nvarchar(60)

--using sp_rename to change the column name of phone to main_phone in oes.customers table
sp_rename 'oes.customers.phone','main_phone','column';


--Using alter table to add a unique constraint to the department_name in hcm.departments
alter table hcm.departments
add constraint uk_department_name unique (department_name)


--Using CHECK Constraint to check that salary  >= 0 in hcm.employees
Alter table hcm.employees
add constraint chk_salary check (salary >= 0)



--Creating a non-clustered index on location_id column and including the warehouse_name
Create index NCI_Location_id on oes.warehouses (location_id) include (warehouse_name)


--Creating a unique clustered index on product_name 
create unique index UI_product_name on oes.products (product_name)



--Writing a sargable query
Select order_id,order_date from oes.orders where order_date >= '20190101' and order_date < '20200101'


--Creating a filtered index for unshipped orders in ores.orders table
create index NCI_shipped_date on oes.orders (shipped_date) where shipped_date is null


--Writing a Sargable query
select customer_id,first_name,last_name,email,street_address 
from oes.customers
where first_name like 'Vi%' and last_name = 'Jones'

create nonclustered index NCI_Customers on oes.customers (first_name,last_name) include (email,street_address)

