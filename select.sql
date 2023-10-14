SELECT * FROM employees;
SELECT * FROM shops;
SELECT * FROM location;
SELECT * FROM suppliers;

SELECT employee_id, first_name, last_name
FROM employees;

SELECT employee_id, hire_date, salary
FROM employees;

-- select with where
SELECT *
FROM employees
WHERE salary > 50000 AND coffeeshop_id =1;

SELECT * 
FROM employees
WHERE salary >50000 OR coffeeshop_id =1;

SELECT *
from suppliers
where supplier_name <> 'Beans and Barley';

select *
from suppliers
where coffee_type IN ('Robusta','Arabica')

-- not in
select *
from suppliers
where coffee_type NOT IN ('Robusta','Arabica')

select * 
from employees
where email IS NULL;

-- is not null
select * 
from employees
where not email IS NULL;

-- between and
select * 
from employees
where salary BETWEEN 35000 AND 50000;