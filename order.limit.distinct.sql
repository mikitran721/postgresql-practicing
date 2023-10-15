-- order by: mac dinh la ASC
select * from employees order by salary;

select * from employees order by salary DESC;

-- limit
select * from employees order by salary DESC limit 10;

-- unique: khong trung lap
select distinct coffeeshop_id from employees;

-- renaming column
select email as email_add, hire_date as date_joined from employees

